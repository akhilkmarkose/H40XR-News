//
//  DetailView.swift
//  H4X0R News
//
//  Created by AKHIL KUNJUMON MARKOSE on 13/10/22.
//

import SwiftUI
import WebKit
import UIKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        VStack {
           WebView(urlString: url)
        }
    }
}

struct DetailView_Preview: PreviewProvider {
    static var previews: some View {
        DetailView(url: "http://www.google.com")
    }
}


