maxex=200
percentage=10
drawex=$((maxex * $percentage / 100))
chapters=20

echo -n "\\newcommand{\\includelist}{" > examplestoreview.tex;
for i in $(eval echo {1..$chapters}); do
    for j in $(eval echo {1..$drawex}); do
        echo -n "|$i.$((1 + $RANDOM % $maxex))" >> examplestoreview.tex;
    done;
done;
echo "|}" >> examplestoreview.tex
