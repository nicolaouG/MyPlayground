//: Playground - noun: a place where people can play

import UIKit
import Foundation

// access the default file manager
func getFileManagerDocumentDirectoryURL() -> URL {
    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first! // unwrap the first dir
}

let directory = getFileManagerDocumentDirectoryURL()

// create new folder in that dir if it does not exist (try?)
let myNewFolderName = "My Playground Saved Files"

let myNewFolderURL = URL(fileURLWithPath: myNewFolderName, isDirectory: true, relativeTo: directory)

try? FileManager.default.createDirectory(at: myNewFolderURL, withIntermediateDirectories: true)

// filename + extention in the folder i created above
let fileName = "kostis string"
let txtFileURL = URL(fileURLWithPath: fileName,
                  relativeTo: myNewFolderURL)
    .appendingPathExtension("txt")




/*** Attempt 1 - string ***/

let somethingToSave = "kostis is saved"

// convert to data
let somethingToSaveData = somethingToSave.data(using: .utf8)!

// save (to an auxiliary file first - atomically -, prevents corrupted data in case of crashes)
try somethingToSave.write(to: txtFileURL, atomically: true, encoding: .utf8)

// read back
let savedFile = try String(contentsOf: txtFileURL)



/*** Attempt 2 - array: [Int] ***/

let anotherTxtFileURL = myNewFolderURL.appendingPathComponent("kostis int array").appendingPathExtension("txt")

// needs to be UInt8 in order to convert to data
let someNumbersToSave: [UInt8] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
//let someNumbersToSave = someNumbersToSave.map{String($0)}
let someNumbersToSaveData = Data(bytes: someNumbersToSave)
try someNumbersToSaveData.write(to: anotherTxtFileURL, options: .atomic)
let readSavedData = try Data(contentsOf: anotherTxtFileURL)
let readArrayBack = Array(readSavedData)

anotherTxtFileURL.absoluteURL





/*** Attempt 3 - images (needs the UIKit) ***/

// get image from resources
let spaceSceneURL = Bundle.main.urls(forResourcesWithExtension: "png", subdirectory: "Scenes")![1]
spaceSceneURL.lastPathComponent

// copy images from resources to the documents (myNewFolderURL above)
func copyPNGSubdirectoriesToDocumentDirectory(subdirectoryNames: String...) throws { // "throws" to handle errors
    // loop over the array of images:
    
    // create the same folders in documents (Scenes, Stickers)
    for subdirectoryName in subdirectoryNames {
        let documentSubdirectoryURL = URL(fileURLWithPath: subdirectoryName, relativeTo: myNewFolderURL)
        try? FileManager.default.createDirectory(at: documentSubdirectoryURL, withIntermediateDirectories: false)
        
        // get images from the folder (guard because we will get optional array)
        guard let pngURLs = Bundle.main.urls(forResourcesWithExtension: "png", subdirectory: subdirectoryName)
            else { continue }
        
        // loop through the images (and create data for png)
        for pngURL in pngURLs {
            let dataFromPng = try Data(contentsOf: pngURL)
            try dataFromPng.write(to: documentSubdirectoryURL.appendingPathComponent(pngURL.lastPathComponent), options: .atomic)
        }
    }
}

try copyPNGSubdirectoriesToDocumentDirectory(subdirectoryNames: "Scenes", "Stickers")
myNewFolderURL.absoluteURL



// load image from dir
func getImageFromDocumentDirectory(folderName: String, imageName: String) -> UIImage? {
    return UIImage(contentsOfFile: myNewFolderURL.appendingPathComponent(folderName).appendingPathComponent(imageName).appendingPathExtension("png").path)
}

let frog = getImageFromDocumentDirectory(folderName: "Stickers", imageName: "frog")




/**********************************************************/



// codable protocol (encodable - can be saved and
//                   decodable - can be loaded)


// turn sticker into JSON:
// - create codable struct firstly (to encode and decode)
struct myStruct: Codable {
    let name: String
    let surname: String
    let age: Int
    let birthday:Date?
    
    init(name: String, surname: String, age: Int, birthday: Date?){
        self.name = name
        self.surname = surname
        self.age = age
        self.birthday = birthday
    }
}

let kostis = myStruct(name: "kostis", surname: "palamas", age: 29, birthday: nil)


do{
    // encode JSON:
    let jsonURL = URL(fileURLWithPath: "myJSON", relativeTo: myNewFolderURL).appendingPathExtension("json")
    
    let jsonEncoder = JSONEncoder()
    jsonEncoder.outputFormatting = .prettyPrinted // more readable but larger file
    
    let jsonData = try jsonEncoder.encode(kostis)
    try jsonData.write(to: jsonURL, options: .atomic)
    
    
    // decode JSON:
    let jsonDecoder = JSONDecoder()
    let getJsonData = try Data(contentsOf: jsonURL)
    let returnedStruct = try jsonDecoder.decode(myStruct.self, from: getJsonData)
}
catch{print(error)}




/* challenge */
// add another struct in the json...
let giannis = myStruct(name: "giannis", surname: "pavlaki", age: 27, birthday: Date(timeIntervalSinceReferenceDate: -123456789.0)) // Feb 2, 1997, 10:26 AM


let myArrayOfStructs = [kostis, giannis]

do{
    // encode JSON:
    let jsonURL = URL(fileURLWithPath: "myJSON", relativeTo: myNewFolderURL).appendingPathExtension("json")
    
    let jsonEncoder = JSONEncoder()
    jsonEncoder.dateEncodingStrategy = .iso8601
    jsonEncoder.outputFormatting = .prettyPrinted // more readable but larger file
    
    let jsonData = try jsonEncoder.encode(myArrayOfStructs)
    try jsonData.write(to: jsonURL, options: .atomic)
    
    
    // decode JSON:
    let jsonDecoder = JSONDecoder()
    jsonDecoder.dateDecodingStrategy = .iso8601
    let getJsonData = try Data(contentsOf: jsonURL)
    let returnedStruct = try jsonDecoder.decode([myStruct].self, from: getJsonData)
    returnedStruct
}
catch{print(error)}

directory





/* struct of images displayed inside a bigger one */
// see Scene.swift and Sticker.swift (they need FileManager.swift as well)
try FileManager.copyPNGSubdirectoriesToDocumentDirectory(subdirectoryNames: "Scenes", "Stickers")

let stickers = [Sticker(name: "1", birthday: DateComponents(calendar: .current, year: 2009, month: 5, day: 12).date!, normalizedPosition: CGPoint(x: 0.1, y: 0.1), imageName: "frog"),
                Sticker(name: "2", birthday: DateComponents(calendar: .current, year: 2010, month: 5, day: 12).date!, normalizedPosition: CGPoint(x: 0.5, y: 0.5), imageName: "cat"),
                Sticker(name: "3", birthday: DateComponents(calendar: .current, year: 2011, month: 5, day: 12).date!, normalizedPosition: CGPoint(x: 0.8, y: 0.3), imageName: "dog")]
let scene = Scene(width: 1800, hasReverseGravity: false, backgroundName: "Winterfence", stickers: stickers)
scene.view
