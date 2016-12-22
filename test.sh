if git log --stat  -1 | grep 'README'; then
    play test
else
    exit 3
fi
