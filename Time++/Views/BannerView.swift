//
//  BannerView.swift
//  Time++
//
//  Created by Huy on 12/7/19.
//  Copyright © 2019 Ngowu. All rights reserved.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        Text("time++")
            .font(.title)
            .multilineTextAlignment(.leading)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
