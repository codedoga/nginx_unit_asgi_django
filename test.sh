echo "Running test against Unit test server:"
curl --fail --location 'http://localhost:8002/' \
--data 'test'

echo "\n"
echo "Running test against Daphne test server:"
curl --fail --location 'http://localhost:8001/' \
--data 'test'

echo "\n"
echo "Running test against Uvicorn test server:"
curl --fail --location 'http://localhost:8003/' \
--data 'test'

echo "\n"
echo "Running test against Granian test server:"
curl --fail --location 'http://localhost:8004/' \
--data 'test'