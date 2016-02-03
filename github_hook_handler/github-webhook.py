from flask import Flask, request, jsonify
import subprocess
import os

app = Flask(__name__)

@app.route("/payload", methods=['POST'])
def github_payload():
    signature = request.headers.get('X-Hub-Signature')
    data = request.data    
    if request.headers.get('X-GitHub-Event') == "push":  
        payload = request.get_json()
        if payload['commits'][0]['distinct'] == True:
            try:
                return jsonify({'msg': 'Push Event Successful'})
            except subprocess.CalledProcessError as error:
                return jsonify({'msg': str(error.output)})

        else:
            return jsonify({'msg': 'nothing to commit'})

    else:
        return jsonify({'msg': 'invalid event'})
                
if __name__ == "__main__":
    app.debug = True
    app.run(host="127.0.0.1")