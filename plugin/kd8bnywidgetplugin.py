#Custom designed pyqtwidgets
#Daryl W. Bennett --kd8bny@gmail.com
#Purpose is to have a custom UI

#plugin must be all lowercase for qtdesigner to recognize

#R1


from PyQt4.QtDesigner import QPyDesignerCustomWidgetPlugin
from PyQt4.QtGui import QIcon

from speedoWidget import speedoWidget


class kd8bny_speedometer(QPyDesignerCustomWidgetPlugin):
	
	def __init__(self, parent=None):
		QPyDesignerCustomWidgetPlugin.__init__(self)

	def name(self):
		return 'speedoWidget'

	def group(self):
		return 'kd8bny'

	def icon(self):
		return QIcon()

	def isContainer(self):
		return False

	def includeFile(self):
		return 'speedoWidget'

	def toolTip(self):
		return 'Speedometer'

	def whatsThis(self):
		return 'Speedometer'

	def createWidget(self, parent):
		return speedoWidget(parent)
