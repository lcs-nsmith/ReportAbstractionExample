//
//  ReportDetailView.swift
//  ReportAbstractionExample
//
//  Created by Nate S on 2021-11-25.
//

import SwiftUI

struct ReportDetailView: View {
    
    // MARK: Stored Property
    let thisReport: Report
    
    // MARK: Computed Property
    var body: some View {
        VStack (spacing:10) {
            Text(thisReport.name)
                .font(.title)
                .fontWeight(.thin)
                .padding(.trailing, 420)
                 
                 Text(thisReport.comment)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 90)
                    .lineSpacing(7)
            
            Text("\(thisReport.grade)")
                .frame(alignment: .trailing)
                .padding(.leading, 550)
                .font(.callout)
        }
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // For the "thisReport" parameter, we supply, as an argument, the first item from the listOfReports
            ReportDetailView(thisReport: listOfReports.first!)
    }
}
