//
//  ReadTextFromFile.swift
//  WordScramble
//
//  Created by Trung Hoang on 30/07/2021.
//

import Foundation

func readTextFromFile(_ resourceName: String, withExtension ext: String) -> String? {
    if let fileURL = Bundle.main.url(forResource: resourceName, withExtension: ext), let fileContents = try? String(contentsOf: fileURL) {
        return fileContents
    }
    return nil
}
