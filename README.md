# Water Usage Prediction in Miami, USA

This project utilizes machine learning to predict water usage (in MGD) for Miami, USA based on various parameters such as hours and months.

## Features:
- Uses a Linear Regression model for predictions.
- Visualizes data using Plotly.js.
- Deployment-ready for Google Cloud Run.
- Accepts data from Firebase via HTTP requests.
<<<<<<< HEAD
- Docker support for containerization.
=======
>>>>>>> 0384d7b (readme addes)

## Prerequisites:
1. Python 3.x
2. Flask
3. Sklearn
4. Pandas
<<<<<<< HEAD
5. Docker
6. Google Cloud SDK (for deployment)
=======
5. Google Cloud SDK (for deployment)
>>>>>>> 0384d7b (readme addes)

## Getting Started:
1. **Clone the Repository**
    ```
<<<<<<< HEAD
    git clone 'https://github.com/Darkandpure/Prediting_MGD'

=======
    git clone <repository_url>
    cd <repository_directory>
>>>>>>> 0384d7b (readme addes)
    ```

2. **Set up a Virtual Environment (Recommended)**
    ```
    python3 -m venv venv
    source venv/bin/activate
    ```

3. **Install Required Packages**
    ```
    pip install -r requirements.txt
    ```

4. **Run the Flask App Locally**
    ```
    export FLASK_APP=app.py
    flask run
    ```

   Visit `http://127.0.0.1:5000` in your browser to access the app.

<<<<<<< HEAD
5. **Using Docker:**

    - **Build the Docker Image**
        ```
        docker build -t predicting_mgd .
        ```

    - **Run the App Inside a Docker Container**
        ```
        docker run -p 5000:5000 predicting_mgd
        ```

    Visit `http://127.0.0.1:5000` in your browser to access the app.

6. **Deploying to Google Cloud Run**
=======
5. **Deploying to Google Cloud Run**
>>>>>>> 0384d7b (readme addes)
    Before deploying, ensure you have the Google Cloud SDK set up and authenticated. Deploy the app using:

    ```
    gcloud run deploy --image gcr.io/<project_id>/app --platform managed
    ```

## Data Source:
Data is pulled from Firebase via HTTP requests and used for training and predicting the MGD values.

## Contributing:
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License:
[MIT](https://choosealicense.com/licenses/mit/)
<<<<<<< HEAD

=======
>>>>>>> 0384d7b (readme addes)
