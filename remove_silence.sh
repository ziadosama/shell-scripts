for file in *.wav;do
    outfile="trim/${file%.*}.wav"
    sox "$file" "$outfile" silence -l 1 0.1 1% -1 2.0 1%
done
