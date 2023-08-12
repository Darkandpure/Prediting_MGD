from flask import Flask, request, jsonify  # Note the added jsonify import
from joblib import load
import pandas as pd
import os

app = Flask(__name__)

# Load the Random Forest model
model = load("random_forest_model.joblib")

@app.route("/upload", methods=["POST"])
def upload_file():
    file = request.files["file"]
    if file:
        # Read the CSV file
        df = pd.read_json(file)

        # Make predictions
        predictions = model.predict(df)

        # Convert predictions to a Python list
        predictions_list = predictions.tolist()

        # Return the predictions as a JSON response
        return jsonify({"mgd_predictions": predictions_list})

    return jsonify({"error": "No file uploaded"}), 400