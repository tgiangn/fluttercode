flutter build web
rm ./public/main.dart.js
rm ./public/flutter_service_worker.js
rm ./public/.last_build_id

cp ./build/web/main.dart.js ./public
cp ./build/web/flutter_service_worker.js ./public
cp ./build/web/.last_build_id ./public
git add .
git commit -m 'files'
git push
