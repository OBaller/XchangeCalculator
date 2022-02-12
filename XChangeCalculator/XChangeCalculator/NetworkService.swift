//
//  ApiCall.swift
//  XChangeCalculator
//
//  Created by naseem on 12/02/2022.
//

import UIKit
import Alamofire

import RealmSwift

class NetworkService{
    
    let realm = try! Realm()
    fileprivate var urlLink: String
    
    init(urlLink: String){
        self.urlLink = urlLink
    }
    func getData(completionHandler: @escaping (CurrencyModel) -> Void){
        AF.request(urlLink).responseDecodable(of: CurrencyModel.self) { result in
            if let response = result.value{
                completionHandler(response)
            }
        }
    }
}
