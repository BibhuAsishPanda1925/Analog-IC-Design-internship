#!/bin/bash

# Directory name (change this as needed or pass as an argument)
CAD_DIR_NAME="$HOME/cad"
SHARE_DIR_NAME="$HOME/share"
XSCHEM_WORK_DIR="$HOME/work/xschem"
XSCHEM_SIM_DIR="$HOME/.xschem/simulations"

# Check if the CAD directory exists
if [ ! -d "$CAD_DIR_NAME" ]; then
    echo "Directory '$CAD_DIR_NAME' does not exist. Creating it now..."
    mkdir "$CAD_DIR_NAME"
    echo "Directory '$CAD_DIR_NAME' created."
else
    echo "Directory '$CAD_DIR_NAME' already exists."
fi

# Check if the SHARE directory exists
if [ ! -d "$SHARE_DIR_NAME" ]; then
    cd $HOME
    echo "Cloning the PDK in '$SHARE_DIR_NAME'"
    git clone https://github.com/silicon-vlsi-org/pdk-sky130-ana.git share
else
    echo "**WARNING** Directory '$SHARE_DIR_NAME' already exists. FIX IT..."
fi

##Installing XSCHEM
if [ ! -d "$CAD_DIR_NAME/eda-xschem" ]; then
    echo "Directory '$CAD_DIR_NAME/eda-xschem' does not exist." 
    echo "Cloning xschem in '$CAD_DIR_NAME'"
    cd "$CAD_DIR_NAME"
    git clone https://github.com/silicon-vlsi-org/eda-xschem 
    echo "xschem repo is cloned ..."
else
    echo "Directory '$CAD_DIR_NAME/eda-xschem' already exists."
fi

## Copy xschemrc to xschem work directory
if [ ! -f "$SHARE_DIR_NAME/xschemrc" ]; then
  echo "**ERROR: Cannot find file '$SHARE_DIR_NAME/xschemrc' "
else
  if [ ! -d "$XSCHEM_WORK_DIR" ]; then
    echo "Creating xschem work dir '$XSCHEM_WORK_DIR'..."
    mkdir -p $XSCHEM_WORK_DIR
    cp $SHARE_DIR_NAME/xschemrc $XSCHEM_WORK_DIR/.
  else
    echo "$XSCHEM_WORK_DIR exists..."
    if [ -f "$XSCHEM_WORK_DIR/xschemrc" ]; then
      echo "**WARNING** '$XSCHEM_WORK_DIR/xschemrc' exists"
    else
      cp $SHARE_DIR_NAME/xschemrc $XSCHEM_WORK_DIR/.
    fi
  fi
fi

## Copy spiceinit  
if [ ! -f "$SHARE_DIR_NAME/spiceinit" ]; then
  echo "**ERROR: Cannot find file '$SHARE_DIR_NAME/spiceinit' "
else
  if [ ! -d "$XSCHEM_SIM_DIR" ]; then
    echo "Creating xschem sim dir '$XSCHEM_SIM_DIR'..."
    mkdir -p $XSCHEM_SIM_DIR
    cp $SHARE_DIR_NAME/spiceinit $XSCHEM_SIM_DIR/.spiceinit
  else
    echo "$XSCHEM_SIM_DIR exists..."
    if [ -f "$XSCHEM_SIM_DIR/.spiceinit" ]; then
      echo "**WARNING** '$XSCHEM_SIM_DIR/.spiceinit' exists"
    else
      cp $SHARE_DIR_NAME/spiceinit $XSCHEM_SIM_DIR/.spiceinit
    fi
  fi
fi

## ngspice installation 
if [ ! -d "$CAD_DIR_NAME/eda-ngspice" ]; then
    echo "Directory '$CAD_DIR_NAME/eda-ngspice' does not exist." 
    echo "Cloning ngspice in '$CAD_DIR_NAME'"
    cd "$CAD_DIR_NAME"
    git clone https://github.com/silicon-vlsi-org/eda-ngspice 
else
    echo "Directory '$CAD_DIR_NAME/eda-ngspice' already exists."
fi

## Magic installation
#
if [ ! -d "$CAD_DIR_NAME/eda-magic" ]; then
    echo "Directory '$CAD_DIR_NAME/eda-magic' does not exist." 
    echo "Cloning magic in '$CAD_DIR_NAME'"
    cd "$CAD_DIR_NAME"
    git clone https://github.com/silicon-vlsi-org/eda-magic 
else
    echo "Directory '$CAD_DIR_NAME/eda-magic' already exists."
fi

## Netgen installation
#
if [ ! -d "$CAD_DIR_NAME/eda-netgen" ]; then
    echo "Directory '$CAD_DIR_NAME/eda-netgen' does not exist." 
    echo "Cloning magic in '$CAD_DIR_NAME'"
    cd "$CAD_DIR_NAME"
    git clone https://github.com/silicon-vlsi-org/eda-netgen
else
    echo "Directory '$CAD_DIR_NAME/eda-netgen' already exists."
fi
