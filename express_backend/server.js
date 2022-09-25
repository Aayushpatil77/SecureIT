const express = require('express');
const app = express();

const admin = require('firebase-admin');
const credentials = require('../it-8f538-firebase-adminsdk-j2b44-e5ac0c8ab7.json');

admin.initializeApp({
    credential: admin.credential.cert(credentials)
});



app.use(express.json());

app.use(express.urlencoded({ extended: true }));



app.post('/signup', async (req, res) => { 
    
    const user = {
        email: req.body.email,
        password: req.body.password
    }
    
    const userResponse = await admin.auth().createUser({
        email: user.email,
        password: user.password,
        emailVerified: false,
        disabled: false
    })
    
    res.json(userResponse);
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Listening on http://localhost:${PORT}`);
})