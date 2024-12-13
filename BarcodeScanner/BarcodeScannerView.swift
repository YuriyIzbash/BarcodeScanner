//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by YURIY IZBASH on 13. 12. 24.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame(height: 50)
                
                Label("Scanned barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not yet scanned")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
        
        
    }
}

#Preview {
    BarcodeScannerView()
}
