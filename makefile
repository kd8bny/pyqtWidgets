#kd8bny Makefile
#Project: pi2go
#V1 R5

clean:
	@ echo "*** Removing all temp files ***"
	@ rm -f *.pyc
	@ rm -f *~
	@ echo "*** Complete ***"

install:
	@ export PYQTDESIGNERPATH=$(pwd)/python
	@ export PYTHONPATH=$PYTHONPATH:$(pwd)/widget
	designer-qt4

prereq:
	@ echo "*** Installing Prerequisites... Standby ***"
	@ sudo apt-get install git python-qt4-dev
	@ echo "*** Complete ***"

update:
	@ make clean
	@ echo "*** Updating ***"
	@ git pull
	@ echo "*** Complete ***"

run:
	@ cd sudo python2.7 ui_mainwindow.py

build:
	@ echo "*** Utilizing pyuic4 ***"
	@ pyuic4 -o ui_mainwindow.py main_window.ui
	@ echo "*** Complete ***"
