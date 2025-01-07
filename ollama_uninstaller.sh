docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama ollama/ollama
docker stop ollama 
sudo systemctl stop ollama 
sudo systemctl disable ollama 
sudo rm /etc/systemd/system/ollama.service 
sudo rm $(which ollama) 
sudo rm -r /usr/share/ollama 
sudo userdel ollama 
sudo groupdel ollama
