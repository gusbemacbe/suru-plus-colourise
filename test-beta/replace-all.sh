for f in *svg; do
   perl foo.pl "$f" > tmpFile && mv tmpFile "$f"
done