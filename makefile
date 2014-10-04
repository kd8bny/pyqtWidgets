#kd8bny Makefile
#Project: pyqtWidgets
#V1 R5

clean:
	@ echo "*** Removing all temp files ***"
	@ rm -f *.pyc && rm -f *~
	@ cd plugin && rm -f *.pyc && rm -f *~
	@ cd widget && rm -f *.pyc && rm -f *~
	@ echo "*** Complete ***"

install:
	@ export PYQTDESIGNERPATH=$(CURDIR)/plugin &&\
		export PYTHONPATH=$PYTHONPATH:$(CURDIR)/widget &&\
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
	@ sudo python2.7 main_application.py

build:
	@ echo "*** Utilizing pyuic4 ***"
	@ pyuic4 -o ui_mainwindow.py main_window.ui
	@ echo "*** Complete ***"
