//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Gaurav Bhasin on 4/7/21.
//

import SwiftUI

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
