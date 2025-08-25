#!/usr/bin/env bash
set -euo pipefail

# 1) Create the NumPy compat shim
mkdir -p DeepTCR tools ancillary_analysis

cat > DeepTCR/np_compat.py <<'PY'
# Tiny NumPy compat shim for deprecated aliases on NumPy>=1.20
import numpy as np
for name, val in dict(
    bool=getattr(np, 'bool_', bool),
    int=int,
    float=float,
    object=object
).items():
    if not hasattr(np, name):
        setattr(np, name, val)
PY

# Also make it available for ancillary scripts (harmless if unused)
cp -f DeepTCR/np_compat.py ancillary_analysis/np_compat.py 2>/dev/null || true

# 2) Insert the shim import where needed (idempotent)
cat > tools/insert_np_shim.py <<'PY'
import sys, pathlib

ROOT = pathlib.Path('.').resolve()
BLOCK = """try:
    from DeepTCR.np_compat import *
except Exception:
    from .np_compat import *
"""

patched = []
candidates = []
for base in (ROOT/'DeepTCR'/'functions', ROOT/'ancillary_analysis'):
    if base.exists():
        candidates += list(base.rglob('*.py'))

for p in sorted(candidates):
    s = p.read_text(encoding='utf-8', errors='ignore')
    # skip if already present
    if 'from DeepTCR.np_compat import *' in s or 'from .np_compat import *' in s:
        continue
    # only patch files that likely use NumPy or benefit from the guard
    if 'import numpy' in s or ' np.' in s or 'from numpy' in s:
        lines = s.splitlines(True)
        i = 0
        # insert after initial import/shebang/comment block
        while i < len(lines) and (
            lines[i].startswith(('import','from','#!','# '))
            or lines[i].strip() == ''
        ):
            i += 1
        lines.insert(i, BLOCK)
        p.write_text(''.join(lines), encoding='utf-8')
        patched.append(str(p.relative_to(ROOT)))

print("\n".join(patched))
PY

echo "Patching files with NumPy shim import (if needed)..."
python3 tools/insert_np_shim.py | tee /tmp/np_shim_patched.txt

# 3) Show what changed (if this is a git checkout)
echo
echo "Changed files:"
git status -s || true

echo
echo "Verify shim import lines are present:"
grep -R --line-number -E 'from (DeepTCR\.np_compat|\.np_compat) import \*' DeepTCR ancillary_analysis || true

# 4) Quick smoke checks
echo
echo "Smoke: np_compat import test..."
python3 - <<'PY'
import sys
sys.path.append('.')
from DeepTCR.np_compat import *
print("OK: DeepTCR.np_compat import")
PY

echo
echo "Smoke: DeepTCR import + construct..."
python3 - <<'PY'
import sys
sys.path.append('.')
from DeepTCR.DeepTCR import DeepTCR_U
_ = DeepTCR_U("Smoke")
print("OK: DeepTCR_U constructed")
PY
