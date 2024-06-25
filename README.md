# Chat-with-your-document

## Prerequisites

Ensure you have the following software installed on your system:

- Python (v3.8 or later)
- virtualenv


## Installation

Clone the repository and navigate into the project directory:

```bash
git clone https://github.com/dilina-jayalath/pdfhandler.git
cd pdfhandler
```

## Running the Application

	

- **Starting the Service**
  
Navigate to the langchain_service directory, set up the virtual environment, install the dependencies, and run the server:


```bash
python -m venv venv
source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
pip install -r requirements.txt

```


- Create a .env file in the langchain_service directory and add your Google API key:
 
```bash
GOOGLE_API_KEY=your_google_api_key
```

- Run the Langchain server:

```bash
 streamlit app.py
```

## Environment Variables
Ensure you create a .env file in the langchain_service directory with the following content:

```bash
GOOGLE_API_KEY=your_google_api_key
```

Replace your_google_api_key with your actual Google API key.


<br/><br/>
## Author

Created by 👨🏻‍💻 &nbsp;Dilina Jayalath.

-TRY THIS APP
https://aipdfbot.streamlit.app/