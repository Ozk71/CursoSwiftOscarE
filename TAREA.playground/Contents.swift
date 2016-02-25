//: Playground - noun: a place where people can play

import UIKit

var numeros = 0...100



for num in numeros {
    switch num {
    case 0,1,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100:
        print( (num), "Bingo!!!")
    case 30...40:
        print( (num), "Viva Swift!!!")
    case 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97:
        print( (num), "par")
    default:
        print((num), "impar")
    }
}

