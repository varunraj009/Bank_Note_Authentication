FROM python:3.7.2-stretch

# Set the working directory to /BankNoteML
WORKDIR /BankNoteML

COPY . /BankNoteML

# Copy requirements.txt file in current folder into the container at /BankNoteML 
ADD requirements.txt .

# Install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# listens local port: EXPOSE 8501 Streamlit Port Number
EXPOSE 5240:8501

# CMD: specifies the default program that will execute once the container runs. 
# To Deploy with Flask we need this Line
#CMD python flask_api.py
