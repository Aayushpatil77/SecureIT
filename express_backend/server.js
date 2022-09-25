const express = require("express");
const app = express();
const Firebase = require("./auth");

// const admin = require('firebase-admin');
// const credentials = require('../it-8f538-firebase-adminsdk-j2b44-e5ac0c8ab7.json');

app.use(express.json());

app.use(express.urlencoded({ extended: true }));

app.post("/signup", async (req, res) => {
	
    const firebase = new Firebase();
    
	const userResponse = await firebase.signUpWithEmailAndPassword(
		req.body.email,
		req.body.password,
		req.body.name,
		req.body.status,
		req.body.dob,
		req.body.address,
		req.body.contactno
	);

	res.json(userResponse);
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
	console.log(`Listening on http://localhost:${PORT}`);
});
