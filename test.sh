#!/bin/bash
echo "=== Chạy test tự động ==="
# Mô phỏng test: nếu số random < 5 thì fail
n=$((RANDOM % 10))
echo "Số random: $n"
if [ $n -lt 5 ]; then
    echo "❌ Test FAIL"
    exit 1
else
    echo "✅ Test PASS"
    exit 1
fi
