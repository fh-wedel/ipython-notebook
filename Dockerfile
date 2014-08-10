FROM ipython/notebook

MAINTAINER Ulrich Hoffmann<uho@xlerb.de>
 
# Additional packages
RUN apt-get -qq install python-matplotlib python-scipy
RUN pip install sympy 
RUN pip install simpy 
RUN pip install pandas 
RUN pip install patsy 
RUN pip install scikit-learn 
RUN pip install distribute 
RUN pip install pandas
RUN pip install python-dateutil
RUN pip install statsmodels
RUN pip install ggplot
RUN pip install dexy
RUN pip install watchdog
RUN pip install pygments
RUN pip install oct2py

# run: docker run -d -p 8889:8888 -v /Users/uho/notebooks:/notebooks -e "PASSWORD=MakeAPassword" notebook
# then connect to https://host:8889/

ADD notebook.sh /
RUN chmod u+x /notebook.sh

# EXPOSE 80

# run: docker run -d -p 8889:8888 -v /Users/uho/notebooks:/notebooks -e "PASSWORD=ipython" notebook
