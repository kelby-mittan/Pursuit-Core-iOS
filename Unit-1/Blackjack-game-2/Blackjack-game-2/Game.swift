//
//  Game.swift
//  Blackjack-game-2
//
//  Created by Kelby Mittan on 10/24/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import Foundation

class Game {
    var deck = Card.newDeck(aceValue: 11) //[Card] ()
    
    var player = Player()
    var playerOne = Player()
    var playerTwo = Player()
    
    var hitPlayer = Bool()
        
    var hasMoreCards: Bool {
        return !deck.isEmpty
    }
    
    var randomComputerScore: Int {
        return Int.random(in: 17...26)
    }
    
    var compScore = Int()
    
    var cardArr = [String]()
    var cardArrP2 = [String]()
    
    func startHand() {
        deck = deck.shuffled()
        if let validCard = deck.popLast() {
            player.score = player.score + validCard.value
            cardArr.append(validCard.stringify().description)
            if let card2 = deck.popLast(){
                player.score = player.score + card2.value
                cardArr.append(card2.stringify().description)
                for card in cardArr {
                    print(card, terminator: " ")
                }
            }
            print("... Your current score is \(player.score)")
        }
    }
    
    func hitMe() {
        deck = deck.shuffled()
        if let vCard = deck.popLast() {
            player.score = player.score + vCard.value
            cardArr.append(vCard.stringify().description)
            for card in cardArr {
                print(card, terminator: " ")
            }
            print("... Your current score is \(player.score)")
        }
    }
    

    func stopHits() -> Int {
        compScore = randomComputerScore
        return compScore
    }

    func computerVsPlayer() -> String {
        var winOrLose = String()
        compScore = randomComputerScore
        switch compScore {
        case player.score:
            winOrLose = "Looks like a draw.... you both got \(player.score)"
        case 21:
            winOrLose = "You Lose... you got \(player.score) and the computer got \(compScore) a.k.a. \"Blackjack\""
        case 17...20:
            if player.score > compScore && player.score < 22 {
                winOrLose = "You Win... you got \(player.score) to the computer's \(compScore)"
            } else {
                winOrLose = "You Lose... you got \(player.score) to the computer's \(compScore)"
            }
        case 22...26:
            winOrLose = "You Win... you got \(player.score) and the computer Busted with \(compScore)"
        default:
            winOrLose = "error"
        }
        return winOrLose
    }
    
    func playerOneVsTwo() -> String {
        deck = deck.shuffled()
        if let validCardForP1 = deck.popLast(), let validCardForP2 = deck.popLast() {
            cardArr.append(validCardForP1.stringify().description)
            cardArrP2.append(validCardForP2.stringify().description)
            playerOne.score = playerOne.score + validCardForP1.value
            playerTwo.score = playerTwo.score + validCardForP2.value
            
            
            
        }
        return ""
    }
    
    func newGame() {
        player.score = 0
        hitPlayer = true
        cardArr.removeAll()
        
    }
    
    func getName(_ name: String) {
        player.playerName = name
        print("Welcome \(name).....")
        for _ in 1...3 {
            sleep(1)
            print("🔀🔀🔀🔀🔀🔀🔀🔀🔀🔀🔀")
            print("🃏🃏🃏🃏🃏🃏🃏🃏🃏🃏🃏")
        }
    }
    
}
