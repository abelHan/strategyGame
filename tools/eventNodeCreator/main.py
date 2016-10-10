#-*-coding: utf-8-*-

#http://blog.csdn.net/a359680405/article/details/45098695
import sys
from PyQt5 import QtWidgets
from PyQt5.QtWidgets import QApplication,QWidget

class myWindow(QWidget):
	"""docstring for myWindow"""
	def __init__(self, arg):
		super(myWindow, self).__init__()
		self.arg = arg


if __name__ == "__main__":
	app = QApplication(sys.argv)

	w = QWidget()
	w.resize(400,400)
	w.move(100,100)
	w.setWindowTitle("simple")

	label = QtWidgets.QLabel(w)
	label.setText("hello")
	label.move(100,100)
	w.show()

	sys.exit(app.exec_())

