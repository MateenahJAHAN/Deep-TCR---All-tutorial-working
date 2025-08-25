#!/usr/bin/env bash
set -euo pipefail
PY=${1:-python3.9}

# create venv
$PY -m venv .venv
source .venv/bin/activate

# tooling
python -m pip install --upgrade pip wheel setuptools

# install pinned deps (cleaned)
pip install -r requirements-share.txt

echo
echo "✅ Environment ready. Activate with:  source .venv/bin/activate"

# install local DeepTCR source (editable)
pip install -e .

# notebooks
pip install notebook jupyterlab ipykernel
