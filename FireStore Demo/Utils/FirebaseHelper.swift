//
//  FireBaseHelper.swift
//  FireStore Demo
//
//  Created by Daffolspmac-67 on 08/03/19.
//  Copyright © 2019 Daffolspmac-67. All rights reserved.
//

import Foundation
import Firebase

class FirebaseHelper {

    let db = Firestore.firestore()

    func addData() {
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "first": "Ada",
            "last": "Lovelace",
            "born": 1815
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }

        // Add a second document with a generated ID.
        ref = db.collection("users").addDocument(data: [
            "first": "Alan",
            "middle": "Mathison",
            "last": "Turing",
            "born": 1912
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
    func readData() {
        db.collection("users").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
    }
}

class FirebaseHelperFactory {
    static var helper: FirebaseHelper? = nil
    class func firebaseHelper() -> FirebaseHelper {
        if helper == nil {
            helper = FirebaseHelper()
        }
        return helper!
    }
}
