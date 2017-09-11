FROM python:3.6-alpine

# Install Python requirements
# NOTE: Do this before adding the filesystem overlay so that misc file updates
# don't require reinstalling Python libraries
ADD filesystem/root/requirements.txt /root/
RUN pip install -r /root/requirements.txt

# Overlay project files onto the filesystem
ADD filesystem /

CMD /root/main.py
