#!/bin/bash
# 把 6 个分卷合并回 stirling-pdf-lite_3.0.2_arm64.deb
set -e
cat stirling-pdf-lite_3.0.2_arm64.part0*.deb > stirling-pdf-lite_3.0.2_arm64.deb
echo "合并完成。SHA256 应为:"
echo "C3E7261C0165DA3D6E425E0A9A4E5BD3DB86C3BF2DD6BE02C237A377CECA62CA"
sha256sum stirling-pdf-lite_3.0.2_arm64.deb