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
