//
//  Board.swift
//  Connect-Four
//
//  Created by Ori Karudo on 4/10/19.
//  Copyright © 2019 Ori Karudo. All rights reserved.
//

import Foundation

let numColumns = 7
let numRows = 6

class Board {
    private var pieces = Array2D<Piece>(columns: numColumns, rows: numRows)
    
    func piece(atColumn column: Int, row: Int) -> Piece? {
        precondition(column >= 0 && column < numColumns)
        precondition(row >= 0 && row < numRows)
        return pieces[column, row] //because pieces is private
    }

}
