//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by YURIY IZBASH on 13. 12. 24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannersDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) { }
     
    final class Coordinator: NSObject, ScannerVCDelegate {
        
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode   
        }
        
        func didSurface(error: CameraError) {
            switch error {
            case.invalideDeviceInput:
                scannerView.alertItem = AlertContext.invalidDeviceInput
            case.invalidScannedValue: AlertContext.invalidScannedValue
            }
        }
        
        
    }
}
