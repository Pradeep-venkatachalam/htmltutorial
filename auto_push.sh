while true
do
git add .
git diff --cached --quiet
if [ $? -ne 0 ]; then
git commit -m "auto update"
git push origin main
fi
sleep 60
done