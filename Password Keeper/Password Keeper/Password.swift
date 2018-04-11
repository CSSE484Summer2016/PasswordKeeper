//
//  Password.swift
//  Password Keeper
//
//  Created by David Fisher on 4/11/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

import UIKit

class Password: NSObject {

  var service: String
  var username: String
  var password: String

  init(service: String, username: String, password: String) {
    self.service = service
    self.username = username
    self.password = password
  }

}
