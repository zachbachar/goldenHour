//
//  User.swift
//  GoldenHour
//
//  Created by דניאל סגל on 02/01/2019.
//  Copyright © 2019 Zach Bachar. All rights reserved.
//
import UIKit
import Foundation
class User{
    var id:String
    //let name:String
    let userName : String
    let password : String
    var profileImage:String
    let description:String
    let email:String
    var post:[String] = []
    //gear
    
    init(_id:String, /*_name:String,*/ _userName:String, _password:String, _profileImage:String, _description:String, _email:String, _post:[String]){
        self.id=_id
        //self.name=_name
        self.userName=_userName
        self.password=_password
        self.profileImage=_profileImage
        self.description=_description
        self.email=_email
        self.post=_post
    }
    
    init(json:[String:Any]) {
        id = json["id"] as! String
        //name = json["name"] as! String
        userName = json["userName"] as! String
        password = json["password"] as! String
        description = json["description"] as! String
        profileImage = json["profileImage"] as! String
        email = json["email"] as! String
        if let posts = json["posts"] as? NSMutableArray{
            posts.forEach { (value) in
                let p = value as? String
                if p != nil{
                    post.append(value as! String)
                }
            }
        }
        else if let posts = json["posts"] as? NSDictionary{
            posts.forEach { (arg0) in
                let (_, value) = arg0
                self.post.append(value as! String)
            }
        }
//        let posts:[String] = json["posts"] as! [String]
//        posts.forEach { (value) in
//            post.append(value)
//        }
    }

    
    func toJson() -> [String:Any] {
        var json = [String:Any]()
        json["id"] = id
        //json["name"] = name
        json["userName"] = userName
        json["password"] = password
        json["profileImage"] = profileImage
        json["description"] = description
        json["email"] = email
        json["posts"] = post
        return json
    }
    
    static func ==(lhs:User, rhs:User)->Bool{
        return lhs.id == rhs.id
    }
}


