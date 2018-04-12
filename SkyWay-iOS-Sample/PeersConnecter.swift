//
//  PeersConnecter.swift
//  SkyWay-iOS-Sample
//
//  Created by 平松優子 on 2017/11/14.
//

import UIKit

class PeersConnecter: UITableViewController {
    
    static let CellIdentifier = "ITEMS"
    var items: Array<String>?
    var callback: UIViewController?
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let strTo = self.items?[indexPath.row]
        if let callback = self.callback {
            callback.dismiss(animated: true, completion: {
                /*if let dcvc: DataConnectionViewController = callback as?    /* Chat開始 */ DataConnectionViewController {
                    if dcvc.responds(to: #selector(dcvc.callingTo(strDestId:))) {
                        dcvc.performSelector(inBackground: #selector(dcvc.callingTo(strDestId:)), with: strTo)
                    }                                                       /* Chat終わり */
                } else*/ if let mcvc: MediaConnectionViewController = callback as? MediaConnectionViewController {
                    if mcvc.responds(to: #selector(mcvc.callingTo(strDestId:))) {
                        mcvc.performSelector(inBackground: #selector(mcvc.callingTo(strDestId:)), with: strTo)
                    }
                }
            })
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
}

