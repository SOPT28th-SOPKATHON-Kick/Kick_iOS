//
//  NetworkResult.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/23.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
