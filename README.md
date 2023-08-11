# Water Usage Prediction in Miami, USA

This project utilizes machine learning to predict water usage (in MGD) for Miami, USA based on various parameters such as hours and months.

## Features:
- Uses a Linear Regression model for predictions.
- Visualizes data using Plotly.js.
- Deployment-ready for Google Cloud Run.
- Accepts data from Firebase via HTTP requests.
- Docker support for containerization.

## Prerequisites:
1. Python 3.x
2. Flask
3. Sklearn
4. Pandas
5. Docker
6. Google Cloud SDK (for deployment)

## Getting Started:
1. **Clone the Repository**
    ```
    git clone <repository_url>
    cd <repository_directory>
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

