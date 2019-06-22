add-apt-repository ppa:openjdk-r/ppa  # only Ubuntu 17.4 and earlier
apt update
apt install openjdk-11-jdk openjdk-11-source

echo -e "\n# Java paths" >> ~/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk" >> ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc

source ~/.bashrc
java -version
echo "openjdk has been successfully installed"