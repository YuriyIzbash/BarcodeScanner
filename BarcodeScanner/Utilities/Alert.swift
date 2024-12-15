//
//  Alert.swift
//  BarcodeScanner
//
//  Created by YURIY IZBASH on 15. 12. 24.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid device input", message: " Check camera permissions and device availability.", dismissButton: .default(Text("OK")))
    static let invalidScannedValue = AlertItem(title: "Invalid scanned value.", message: "Check barcode format.", dismissButton: .default(Text("OK")))
}
