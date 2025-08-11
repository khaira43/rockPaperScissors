# Rock Paper Scissors

A simple SwiftUI game where players try to either win or lose against a computer’s move in Rock-Paper-Scissors. The game keeps score, alternates win/lose objectives, and runs for 10 rounds before resetting.

## Features
- **Randomized moves**: Computer randomly picks Rock, Paper, or Scissors.
- **Dynamic objectives**: Player goal alternates between winning and losing each round.
- **Score tracking**: Correct answers increase score, wrong answers decrease it (minimum 0).
- **Round system**: Game runs for 10 rounds before score resets.
- **Gradient background**: Clean and modern SwiftUI design.

## How to Play
1. The game will display **"My Move"** (the computer’s choice) and your **goal** (either "Win" or "Lose").
2. Select **Rock**, **Paper**, or **Scissors** accordingly.
3. Your score updates based on correctness.
4. After 10 rounds, your score will reset automatically.

## Code Highlights
- **State variables** handle UI updates:
  - `@State private var current` – computer’s current move
  - `@State private var result` – whether the goal is to win or lose
  - `@State private var score` – player’s current score
  - `@State private var round` – current round number
- **Computed property** `correctAnswer` determines the right move.
- **SwiftUI Alerts** used to show round results and current score.
- **Gradient backgrounds** created with `LinearGradient`.

## Example Screenshot
*(Insert a screenshot of the game here)*

## Requirements
- Xcode 15+
- Swift 5.9+
- iOS 17+

## How to Run
1. Clone this repository.
2. Open in Xcode.
3. Build & run on an iOS simulator or device.

---
**Author:** Ranbir Khaira  
**Date Created:** March 20, 2025
