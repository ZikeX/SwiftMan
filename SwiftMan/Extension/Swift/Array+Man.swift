//
//  Array+Man.swift
//  SwiftMan
//
//  Created by neu on 16/5/4.
//  Copyright © 2016年 cactus. All rights reserved.
//

import Foundation

extension Array {
    
    /// 转JSON
    ///
    /// - Returns: 可选的格式化的JSON字符串
    public func m_prettyJSONString() -> String?{
        return JSONStringWithOption([.prettyPrinted])
    }
    
    /// 转JSON
    ///
    /// - Returns: 可选的一行JSON字符串
    public func m_JSONStringRepresentation()  -> String?{
        return JSONStringWithOption([])
    }
    
    /// 转JSON
    ///
    /// - Returns: 可选的JSON字符串
    fileprivate func JSONStringWithOption(_ option: JSONSerialization.WritingOptions) -> String?{
        do{
            let data = try JSONSerialization.data(withJSONObject: self, options: option)
            return  String(data: data, encoding: String.Encoding.utf8)
        } catch {
            return nil
        }
        
    }
}
