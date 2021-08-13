//
//  AssimpImageCache.swift
//  AssetImportKit
//
//  Created by Eugene Bokhan on 28/11/2018.
//  Copyright © 2018 Eugene Bokhan. All rights reserved.
//

import ImageIO
import Assimp

public class AssimpImageCache {
    public static let shared = AssimpImageCache()
    var cacheDictionary: [String : CGImage] = [:]
    
    func cachedFileAtPath(path: String) -> CGImage? {
        return cacheDictionary[path]
    }
    
    public func storeImage(image: CGImage, toPath: String) {
        cacheDictionary[toPath] = image
    }
    
    public func clean() {
        cacheDictionary.removeAll()
    }
}
