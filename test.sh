if git log --stat  -1 | grep 'README' -o git log --stat  -1 | grep 'index.scala.html'; then
    play test
else
    exit
fi
