sudo apt update -y && sudo apt install cmake -y
sudo apt install gcc-10 gcc-10-base gcc-10-doc g++-10 -y
sudo apt install libstdc++-10-dev libstdc++-10-doc -y
sudo apt install lcov gcovr libcapture-tiny-perl libdatetime-perl
sudo apt install python3-pip
pip install pre-commit
./scripts/run_pre-commit.sh
