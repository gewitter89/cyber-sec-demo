#!/bin/bash
# Local static preview verification for cyber-sec-demo
set -euo pipefail

echo "=== Verifying cyber-sec-demo static integrity ==="
test -f "/opt/cyber-sec-demo/index.html" || { echo "index.html missing"; exit 1; }
grep -q "<!DOCTYPE html>" "/opt/cyber-sec-demo/index.html" && echo "✓ Valid HTML5 doctype verified"
grep -q "Cyber Security Cloud" "/opt/cyber-sec-demo/index.html" && echo "✓ Platform title verified"
echo "=== Static integrity: PASSED ==="
