//
//  UnitType.swift
//  RaceRunner
//
//  Created by Joshua Adams on 11/27/15.
//  Copyright © 2015 Josh Adams. All rights reserved.
//

import Foundation

enum UnitType: String {
  case Imperial = "Imperial"
  case Metric = "Metric"
  init() {
    self = .Imperial
  }
}