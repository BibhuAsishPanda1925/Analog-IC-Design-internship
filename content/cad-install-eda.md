# Install and Setup EDA Tools

These are instructions to setup the EDA tools **XSchem** and **ngspice**.

## Steps for Installation and Setup

- **UPDATE WSL and Ubuntu**: Before you start it's a good idea to update both:
  - **START POWERSHELL AS ADMIN** 🖱️ _Right-Click_ **Windows Start**  and select **Windows Powershell (Admin)**.
  - **UPDATE WSL**: 💻 Type `wsl --update` in the Powershell. ⚠️ Make sure you have a good internert connection. This may take a while.
  - **SHUTDOWN WSL**: 💻 `wsl --shutdown` to shutdown and apply updates.
  - **START UBUNTU 24.04** 🖱️ When you click the **Windows Button**, you should see the _Ubuntu 24.04** app on the _Recently Added_ list on the left. **Click** the icon to start the Ubuntu shell.
  - **UPDATE UBUNTU LINUX** 💻 Type `sudo apt update && sudo apt upgrade -y` in the **Linux Shell** to upgrade packages. ⚠️ Make sure you have a good internert connection. This may take a while.
- **CLONE the COURSE GITHUB PAGE**: There are two scripts and a bashrc file in the course repository to help you install and setup the EDA tools. So we will clone the repository first
  - **Change to your home directory** by simply typing 💻 `cd`
  - **Clone the repository** 💻 `git clone https://github.com/silicon-vlsi/SI-2025-AnalogIC.git`
  - You should see a directory `SI-2025-AnalogIC` ⚠️ **DO NOT WORK IN THIS DIRECTORY** This is our course page so everytime we update it with new info, you should update it locally as well.

- **COPY** the two scripts from the repo directory to your current working directory and make them **executable**:
  - `cp ~/SI-2025-AnalogIC/install*.sh .`
  - `chmod +x install*.sh`
- Now run the first script to install _required shared libraries_ (This will require your root password so keep it ready):
  - `./install-libs.sh`
- Now install all the **EDA Tool** and set them up:
  - `./install-eda.sh`
- **COPY the content** of `~/SI-2025-AnalogIC/bashrc-eda` to your `~/.bashrc`
- `source ~/.bashrc` to source and set all the environment variables of the EDA tools.
- **You should be all set now!!**

## Quick Check 

Quick steps to check if the schematic editor **xschem** and **ngspice** are working properly.

- **Change to working directory** 💻 `cd ~/work/xschem`
- 💻 `xschem`  to start _xschem_
- You should see the xschem window popup with a default schematic of all the SKY130 PDK elements.
- On the left part of the window, you should see a bunch of links to test circuits.
- Using the `View` menu and the _arrow keys_, ..
