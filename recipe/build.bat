@echo on

set "PY_VER_PLAIN=!PY_VER:.=!"

%PYTHON% -m pymsbuild wheel
if errorlevel 1 exit 1
%PYTHON% -m pip install dist\pymsbuild-%PKG_VERSION%-cp%PY_VER_PLAIN%-cp%PY_VER_PLAIN%-win_amd64.whl
if errorlevel 1 exit 1
