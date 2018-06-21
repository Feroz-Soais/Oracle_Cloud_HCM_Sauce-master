import webbrowser
import time
from robot.api import logger
from robot.api import ResultWriter
import csv


def display_log_onto_browser(url):
    #url = 'C:\Users\SOAIS\PycharmProjects\Demo\Results\log.html'
    webbrowser.get("C:/Program Files (x86)/Google/Chrome/Application/chrome.exe %s").open_new_tab(url)


def my_keyword(arg):
    logger.debug('Got argument %s.' % arg)
    logger.info('<i>This</i> is a boring example.', html=True)
    logger.debug('<i>This</i> is a boring example.', html=True)
    #ResultWriter.write_results()

#
# def read_csv_file(filepath):
#     data = []
#     #todo 'rb' changed to r
#     with open(filepath, 'r') as csvfile:
#         reader = csv.reader(csvfile,  delimiter=',')
#         for index, value in enumerate(reader):
#             data.append(value)
#     return data
