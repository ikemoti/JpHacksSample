//
//  ViewController.swift
//  JpHacksSample
//
//  Created by Sousuke Ikemoto on 2020/10/31.
//

import UIKit
import MessageKit
import Messages
import MessageUI

struct Message: MessageType {
    var sender: SenderType
    

    /// 必須
   var messageId: String
   var sentDate: Date
   var kind: MessageKind

   /// 必須ではない
   var userImagePath: String
}

class ViewController: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate, MessageCellDelegate {
    func currentSender() -> SenderType {
        <#code#>
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        <#code#>
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        <#code#>
    }
    
    var messages: [Message] = []
    override func viewDidLoad() {
        super.viewDidLoad()
       
        messagesCollectionView.messagesDataSource = self
             messagesCollectionView.messagesLayoutDelegate = self
             messagesCollectionView.messagesDisplayDelegate = self
             messagesCollectionView.messageCellDelegate = self

    }


}

