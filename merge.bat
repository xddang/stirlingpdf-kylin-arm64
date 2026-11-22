@echo off
REM 把 6 个分卷合并回 stirling-pdf-lite_3.0.2_arm64.deb（需与本脚本同目录）
copy /b stirling-pdf-lite_3.0.2_arm64.part01.deb+stirling-pdf-lite_3.0.2_arm64.part02.deb+stirling-pdf-lite_3.0.2_arm64.part03.deb+stirling-pdf-lite_3.0.2_arm64.part04.deb+stirling-pdf-lite_3.0.2_arm64.part05.deb+stirling-pdf-lite_3.0.2_arm64.part06.deb stirling-pdf-lite_3.0.2_arm64.deb
echo.
echo 合并完成，请用 sha256sum 或 certutil 校验:
echo   期望值 C3E7261C0165DA3D6E425E0A9A4E5BD3DB86C3BF2DD6BE02C237A377CECA62CA
PAUSE