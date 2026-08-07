//
//  DashboardCard.swift
//  IOS Lifecycle
//
//  Created by Muhammad Saad on 8/5/26.
//

import Foundation
import SwiftUI


struct DashboardCard<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            content
        }
        .cardStyle()
    }
}
