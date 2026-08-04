//
//  BoardingUI.swift
//  Boarding Pass
//
//  Created by Muhammad Saad on 8/3/26.
//

import SwiftUI

struct BoardingUI: View {
    
    let boardingPass: BoardingDetails
    
    var body: some View {
        
        Divider()
        
        HStack(alignment: .center){
            
            Text(boardingPass.travellingFrom)
                .font(.title3)
                .fontWeight(.bold)
            
            Text(" -->").font(.title3).fontWeight(.bold)
            
            Text(boardingPass.destination)
                .font(.title3)
                .fontWeight(.bold)
        }
        
        Divider()
        
        VStack(alignment: .leading){
            
            HStack {
                Text("Passenger")
                    .frame(width: 100, alignment: .leading)
                Text(":  " + boardingPass.passengerName)
            }
            .font(.title3)
            
            
            HStack {
                Text("Flight")
                    .frame(width: 100, alignment: .leading)
                Text(":  " + boardingPass.flightNo)
            }
            .font(.title3)
            
            
            HStack {
                Text("Seat")
                    .frame(width: 100, alignment: .leading)
                Text(":  " + boardingPass.seat)
            }
            .font(.title3)
           
            
            HStack {
                Text("Gate")
                    .frame(width: 100, alignment: .leading)
                Text(":  " + boardingPass.gate)
            }
            .font(.title3)
           
            
            HStack {
                Text("Boarding")
                    .frame(width: 100, alignment: .leading)
                Text(":  " + boardingPass.boardingTime)
            }
            .font(.title3)
            
            
            
            
        }
        
        Divider()
        
        VStack(alignment: .leading){
            
            Text(" Download Ticket").font(.title3).fontWeight(.bold)

        }
        
        Divider()
        
    }
    
    
    
    
}

#Preview {
    BoardingUI(boardingPass: BoardingDetails(passengerName: "Mahesh Bajaj", flightNo: "AI 803", seat: "18A", gate: "B12", boardingTime: "10:30 AM", destination: "Delhi", travellingFrom: "Bangalore"
                                            ))
}
