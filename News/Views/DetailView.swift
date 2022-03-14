//
//  DetailView.swift
//  News
//
//  Created by Zhang Xu on 2022/3/13.
//

import SwiftUI

struct DetailView: View {
    let url : String
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "http://google.com")
    }
}

