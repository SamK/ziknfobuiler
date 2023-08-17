# Zik NFO Builder

Create NFO file for music album with Python 3.

* this program is one file
* supports the following template engines:
  * Cheetah
  * Mako
  * Jinja2


## Requirements

* Python 3
* The mediainfo package
*(used to read the audio files.)*:
`sudo apt-get install mediainfo`

## Installation

* Create a virtual environment somewhere and activate it
```
python3 -m venv ~/path/to/my/venv
. ~/path/to/my/venv/bin/activate
```

* Clone or download this repo
* Install the requirements
```
pip install -r requirements.txt
```

## Usage

* Basic example:
```
./ziknfobuilder "The Musicians - G.O.O.D Music" templates/full.mako
```
* Get the full help
```
./ziknfobuilder --help
```

## Templates

There is currently no proper template provided. However there are some examples in the `/templates` directory.

To get the full list of properties, use the `--properties` switch.
