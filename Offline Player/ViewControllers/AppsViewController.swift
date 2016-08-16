//
//  AppsViewController.swift
//  Offline Player
//
//  Created by Anton Dolzhenko on 14.08.16.
//  Copyright © 2016 Onix-Systems, LLC. All rights reserved.
//

import Cocoa

class Node: NSObject {
    let data: String
    var children: [Node] = []
    init( data: String ) {
        self.data = data
    }
    func isLeaf() -> Bool {
        if children.isEmpty {
            return true
        } else {
            return false
        }
    }
}


class AppsViewController: NSViewController {

    var content: [Node] = []
    
    @IBOutlet var treeController: NSTreeController!
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.content.count == 0 {
            var aNode: Node!
            aNode = Node( data: "Parent" )
            aNode.children.append( Node( data: "Child1" ) )
            aNode.children.append( Node( data: "Child2" ) )
            self.treeController.addObject( aNode )
        }
        // Do view setup here.
    }
    
}
