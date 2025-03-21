//
//  ContentView.swift
//  rockPaperScissors
//
//  Created by Ranbir Khaira on 2025-03-20.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var weapons = ["Rock", "Paper", "Scissors"]
    @State private var current = Int.random(in: 0...2)
    @State private var result = true
    @State private var score = 0
    @State private var round = 1
    var correctAnswer : Int {
        if current == 0 {
            if result{
                return 1
            }
            return 2
        }else if current == 1 {
            if result{
                return 2
            }
            return 0
        }
        else {
            if result{
                return 0
            }
            return 1
        }
    }
    var body: some View {
        ZStack{
            LinearGradient(
                            gradient: Gradient(colors: [
                                Color(red: 0.70, green: 0.90, blue: 0.95),  // Approximate color for the top
                                Color(red: 0.60, green: 0.85, blue: 0.75)   // Approximate color for the bottom
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                Text("Rock Paper Scissors")
                                    .font(.largeTitle.weight(.bold))
                                    .foregroundStyle(.black)
                VStack(spacing: 15){
                    VStack{
                        Text("My Move: \(weapons[current])")
                        if result == true {
                            Text("Your Goal: Win")
                        }
                        else if result == false {
                            Text("Your Goal: Lose")
                        }
                        
                    }
                    Spacer()
                    ForEach(0..<3){ number in
                        Button{
                            buttonTapped(number)
                        }label:{Text("\(weapons[number])")}
                    }
                    Spacer()
                }
                Spacer()
                Spacer()
                Text("Score: \(score)")
                    . foregroundStyle(.black)
                    .font(.title.bold())
                Spacer()
                
            }
            .alert(scoreTitle, isPresented: $showingScore){
                Button("Continue", action: askQuestion)
            } message: {
                Text("Your score is \(score)")
            }
            
            
        }
        
    
    }
    func buttonTapped(_ number: Int) {
        if round == 1{
            score = 0
        }
        if number == correctAnswer{
            scoreTitle = "Correct"
            score+=1
            round+=1
        }else{
            scoreTitle = "Wrong! The right answer was \(weapons[number])"
            if(score > 0){
                score-=1
            }
            round+=1
        }
        if round == 10{
            scoreTitle = scoreTitle + ", rounds finished! Score will reset."
            round=1
        }
        
        showingScore = true
    }
    func askQuestion() {
        current = Int.random(in: 0...2)
        result.toggle()
    }
    
}
#Preview {
    ContentView()
}
