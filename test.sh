if git log --stat  -1 | grep 'README'; then
    echo "File Found....Proceed to next process"
else
    exit 3
fi
