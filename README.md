
# Setup:


## Dependencies
### Torch7
```
curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; ./install.sh
source ~/.bashrc
```

- from http://torch.ch/docs/getting-started.html

### loadcaffe

```
sudo yum install -y protobuf-compiler protobuf-devel
luarocks install loadcaffe
```

## VGG Model

```
git clone https://github.com/jcjohnson/neural-style ~/neural-style && cd ~/neural-style && sh models/download_models.sh
```
