//
//  main.swift
//  SinglyList
//
//  Created by Shrikrishna Bhat on 2/3/24.
//

import Foundation

class ListNode {
	var data: Int
	var next: ListNode?
	
	init(data: Int) {
		self.data = data
	}
}

class LinkedList {
	var head: ListNode?
	
	func printList() {
		var cur = head
		
		if cur == nil {
			print("Empty List\n")
			return
		}
		
		while cur != nil {
			if let node = cur {
				print(node.data)
				cur = node.next
			}
		}
		print()
	}
	
	func insertFirst(value:Int){
		let temp = ListNode(data: value)
		if head == nil {
			head = temp
			return
		}
		temp.next = head
		head = temp
	}
	
	func insertLast(value:Int){
		let temp = ListNode(data: value)
		var cur = head
		
		if head == nil {
			head = temp
			return
		}
		
		while cur?.next != nil {
			cur = cur?.next
		}
		cur?.next = temp
		
	}
}


var list = LinkedList()

list.insertFirst(value: 10)
list.insertFirst(value: 20)
list.insertFirst(value: 30)
list.insertLast(value: 40)
list.printList()
