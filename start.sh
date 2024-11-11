if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/GouthamSER/b2.git /b2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /b2
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting b2...."
python3 bot.py
