set -euo pipefail
f="DeepTCR/DeepTCR.py"
python - "$f" <<'PY'
import sys
from pathlib import Path

p = Path(sys.argv[1])
s = p.read_text()

needle = "j_beta = np.asarray(j_beta)"
ins = r"""
# --- begin: compat: tolerate missing/blank V/D/J labels ---
def _dtcr_clean_labels(arr, unknown=self.unknown_str):
    import numpy as _np
    out = []
    for x in arr:
        if isinstance(x, str) and x.strip() not in ("", "None", "nan", "NaN"):
            out.append(x)
        else:
            out.append(unknown)
    return _np.asarray(out, dtype=object)

if self.use_v_beta:  v_beta  = _dtcr_clean_labels(v_beta)
if self.use_d_beta:  d_beta  = _dtcr_clean_labels(d_beta)
if self.use_j_beta:  j_beta  = _dtcr_clean_labels(j_beta)
if self.use_v_alpha: v_alpha = _dtcr_clean_labels(v_alpha)
if self.use_j_alpha: j_alpha = _dtcr_clean_labels(j_alpha)
# --- end: compat ---
"""

s = s.replace(needle, needle + ins)
p.write_text(s)
print("Patched", p)
PY