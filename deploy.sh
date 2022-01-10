rm ./public/main.dart.js
cp ./build/web/main.dart.js ./public
git add .
git commit -m 'files'
git push
