#!/bin/sh

# Generate HTML content with environment variables
cat <<EOF > /www/index.html
<!DOCTYPE html>
<html>
<head>
  <title>Environment Details</title>
</head>
<body>
  <h1>Environment Details</h1>
  <p><strong>ENV_NAME:</strong> ${ENV_NAME:-not present}</p>
  <p><strong>APPLICATION_NAME:</strong> ${APP_NAME:-not present}</p>
  <p><strong>AZURE_CLIENT_SECRET:</strong> ${AZURE_CLIENT_SECRET:-not present}</p>
</body>
</html>
EOF

# Start a simple HTTP server to serve the HTML
httpd -f -p 8080 -h /www

# Keep the container running
tail -f /dev/null
