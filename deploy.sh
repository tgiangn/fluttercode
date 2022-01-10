flutter build web --no-sound-null-safety
rm -rf ./public
cp -r ./build/web ./public
