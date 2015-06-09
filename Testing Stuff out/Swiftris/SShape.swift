//
//  SShape.swift
//  Swiftris
//
//  Created by Rajat Bhageria on 6/5/15.
//  Copyright (c) 2015 Rajat Bhageria. All rights reserved.
//

class SShape: Shape{
    /*
    Orientation: 0
    |0||1|
 |2||3|
    */
    
    /*
    Orientation: 90
    2
    3 0
      1
    */
    
    /*
    Orientation: 180
    3 2 
  1 0
    */

    /* 
    Orientation: 270
    1
    0 3 
      2
    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff:Int, rowDiff:Int)>]{
        return [
            Orientation.Zero: [(0,0), (1,0),(-1,1),(0,1)],
            Orientation.Ninety: [(1,1),(1,2),(0,0),(0,1)],
            Orientation.OneEighty: [(0,1),(-1,1),(1,0),(0,0)],
            Orientation.TwoSeventy: [(1,0),(0,0),(1,2),(1,1)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>]{
        return[
            Orientation.Zero: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FirstBlockIdx]],
            Orientation.Ninety: [blocks[FourthBlockIdx], blocks[SecondBlockIdx]],
            Orientation.OneEighty: [blocks[SecondBlockIdx], blocks[FirstBlockIdx], blocks[ThirdBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[ThirdBlockIdx]]
        ]
    }
}