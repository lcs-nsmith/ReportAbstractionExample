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
            
            Text("\(thisReport.grade)")
                 
                 Text(thisReport.comment)
        }
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // For the "thisReport" parameter, we supply, as an argument, the first item from the listOfReports
        Group {
            ReportDetailView(thisReport: listOfReports.first!)
        }
    }
}
