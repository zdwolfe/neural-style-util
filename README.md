This is a small collection of utility scripts to set up and run [jcjohnson's neural-style](https://github.com/jcjohnson/neural-style).

# Setup:
## Hardware/OS

Rent something with yum, cuda, and a lot of GPU memory. [Amazon Linux AMI with NVIDIA GRID GPU Driver](https://aws.amazon.com/marketplace/pp/B00FYCDDTE) running on a g2.8xlarge works well (these are about $2/hour, so be careful).

## Installation

1. Connect to host: ``ssh -i "<your AWS pem file>" ec2-user@<you>.compute-1.amazonaws.com``
2. Run ``install.sh``

# Usage

1. Upload content (the images you wish to re-draw) to ~/conent
2. Upload styles (the styles in which you wish to re-draw your content images) to ~/styles
3. Run run.sh, which will render all images in all styles, and output to ~/output
4. Once finished, download results with ``scp -i "<your AWS pem file>" "ec2-user@<you>.compute-1.amazonaws.com:/home/ec2-user/output/*" ./``

# References
* https://github.com/jcjohnson/neural-style

