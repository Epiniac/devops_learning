import random
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "message": "Bienvenue sur l'API !",
        "instructions": "Allez sur /api/flip pour jouer à pile ou face."
    })

@app.route('/api/flip')
def flip_coin():
    resultat = random.choice(["pile", "face"])
    return jsonify({
        "jeu": "pile_ou_face",
        "resultat": resultat
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)