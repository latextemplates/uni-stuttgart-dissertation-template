@echo off

REM Add absolute path to following line (e.g. E:\DissSVN\Document\figures-pptx\*.pptx) if you want to call this script from somewhere else
for %%F in (*.pptx) do (
	cscript _buildFigurePDFs.vbs "%%~dpnxF"
)