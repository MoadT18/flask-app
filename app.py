import base64
from flask import Flask, jsonify

app = Flask(__name__)

original_message = "U2N1Y2Nlc3MhIEl0J3MgYSBzdW5ueSBkYXku"

@app.route('/api/message', methods=['GET'])
def get_message():
    # Decodeer de base64 string naar de originele boodschap
    decoded_message = base64.b64decode(original_message).decode('utf-8')
    
    # Stuur de gedecodeerde boodschap terug als plain text
    return decoded_message

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)