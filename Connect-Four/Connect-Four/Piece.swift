//
//  Piece.swift
//  Connect-Four
//
//  Created by Ori Karudo on 4/10/19.
//  Copyright © 2019 Ori Karudo. All rights reserved.
//

import Foundation
import SpriteKit

enum PieceColor: Int{
    case unknown = 0, yellow, red
    
    var spriteName: String {
        let spriteNames = [
            "yellowPiece",
            "redPiece"]
        
        return spriteNames[rawValue - 1]
    }
}

class Piece: CustomStringConvertible, Hashable {
    var hashValue: Int{
        return row * 10 + column
    }
    
    static func ==(lhs: Piece, rhs: Piece) -> Bool {
        return lhs.column == rhs.column && lhs.row == rhs.row
    }
    
    var description: String {
        return "type:\(pieceColor) square:(\(column), \(row))"
    }
    
    var column: Int
    var row: Int
    let pieceColor: PieceColor
    var sprite: SKSpriteNode?
    
    init(column: Int, row: Int, pieceColor: PieceColor){
        self.column = column
        self.row = row
        self.pieceColor = pieceColor
    }
}
