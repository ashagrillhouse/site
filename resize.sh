rm -r grill
mkdir -p grill
mogrify \
  -path grill \
  -format jpg \
  -resize '700x700>' \
  -quality 60 \
  -strip \
  grill.bak/*.{png,jpg,jpeg}
