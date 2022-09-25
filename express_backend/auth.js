const admin = require('firebase-admin');
const serviceAccount = require('../innervehackthon-firebase-adminsdk-e0e87-a72f696e2c (1).json');

module.exports = class Firebase {
    constructor() {
        admin.initializeApp({
            credential: admin.credential.cert(serviceAccount),
            databaseURL: "https://innervehackthon-default-rtdb.asia-southeast1.firebasedatabase.app"
        });
        this.auth = admin.auth();
        this.db = admin.database();
        this.firestore = admin.firestore();

    }

    signUpWithEmailAndPassword = async (email, pw, name, status, dob, address, contactno) => {
        console.log(email)
        return await this.auth.createUser({
            displayName: name,
            email: email,
            password: pw,
            emailVerified: false,
            disabled: false,
        }).then(async (cred) => {
            console.log(cred);
            let a = this.firestore.collection('users')
            let docRef = a.doc(cred.uid)
            return await docRef.set({
                name: name, 
                status: status,
                dob: dob,
                address: address,
                contactno: contactno
            })
        })
    }
}
