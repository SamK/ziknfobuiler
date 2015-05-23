# Zik NFO Builder

Create NFO file for music album with Python 2.7 on Linux.

* this program is one file
* supports the following template engines:
  * Cheetah
  * Mako
  * Jinja2

## Installation

### Prerequisites

* Install mediainfo
*MediaInfo is used to read the audio files.*
```
sudo apt-get install mediainfo
```
* Install Beautiful Soup 4
*Beautiful Soup is a XML parser used to communicate with mediainfo.*
```
sudo pip install beautifulsoup4 
sudo apt-get install python-lxml
```
* Install a template engine
*Choose between one of these:*

  * Cheetah -- `apt-get install python-cheetah`
  * Mako -- `apt-get install python-mako`b
  * Jinja2 -- `apt-get install python-jinja2`

# Install Zik NFO Builder

Just download the file or clone the repo, it's up to you.

## Usage

* Basic example: 
```
./ziknfobuilder "The Musicians - G.O.O.D Music"  --template my_template.mako 
```

