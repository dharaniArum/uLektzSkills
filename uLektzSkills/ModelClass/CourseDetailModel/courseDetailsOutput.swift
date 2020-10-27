//
//  courseDetailsOutput.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 23, 2020

import Foundation


class courseDetailsOutput : NSObject, NSCoding{

    var result : courseDetailsResult!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let resultData = dictionary["Result"] as? [String:Any]{
            result = courseDetailsResult(fromDictionary: resultData)
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if result != nil{
            dictionary["result"] = result.toDictionary()
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        result = aDecoder.decodeObject(forKey: "Result") as? courseDetailsResult
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if result != nil{
            aCoder.encode(result, forKey: "Result")
        }
    }
}