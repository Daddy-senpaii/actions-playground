if [ -f config/app.env ]; then
  echo "file is there"
fi

if grep -q "^APP_NAME=" config/app.env && grep -q "^PORT=" config/app.env; then
  echo "Both keys exist"
else
  echo "Missing key"
fi
