# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export LD_LIBRARY_PATH=/lib:/lib64:/usr/lib:/usr/lib64:/usr/libexec

SNPSLMD_LICENSE_FILE=27020@husynposyseng
export SNPSLMD_LICENSE_FILE

export SYNOPSYS_HOME=/usr/synopsys
export SYNOPSYS_DC=$SYNOPSYS_HOME/syn/L-2016.03-SP5-3/bin
export SYNOPSYS=$SYNOPSYS_HOME/tmax/txs/M-2016.12-SP2
export SYNOPSYS_VCS=$SYNOPSYS_HOME/VCS/vcs-mx/M-2017.03/bin
export VCS_HOME=$SYNOPSYS_HOME/VCS/vcs-mx/M-2017.03/
unset DVE
export DVE=$SYNOPSYS_HOME/VCS/vcs-mx/M-2017.03/gui/dve
export SYNOPSYS_ICC=$SYNOPSYS_HOME/ICC/icc/M-2016.12-SP2/bin
export SYNOPSYS_PT=$SYNOPSYS_HOME/PT/pts/M-2016.12-SP2/bin
export SYNOPSYS_HSPICE=$SYNOPSYS_HOME/HSPICE/hspice/O-2018.09-1/hspice/bin
export SYNOPSYS_CWV=$SYNOPSYS_HOME/CustomWaveView/wv/O-2018.09/bin


export PATH=$PATH:$SYNOPSYS_DC:$SYNOPSYS/bin:$SYNOPSYS_VCS:$VCS_HOME:$VCS_HOME/bin:$VCS_HOME/linux64:$DVE:$SYNOPSYS_ICC:$SYNOPSYS_PT:$SYNOPSYS_HSPICE:$SYNOPSYS_CWV
export PATH=$PATH:/home/engadmin/synopsys/installer
export PATH=$PATH:/usr/synopsys/scl/2016.12/linux64/bin

#xhost local:root
#export DISPLAY=:10 && xhost + localhost
#export DISPLAY=:10
#export XAUTHORITY=$HOME/.Xauthority
