shopt -s nullglob
mkdir -p optimized
mogrify \
  -path optimized \
  -format jpg \
  -resize '800x800>' \
  -quality 75 \
  -strip \
  grill/*.{png,jpg,jpeg}
