//
//  Log.swift
//  LogLevels
//
//  Created by Rob Broadwell on 12/14/18.
//  Copyright © 2018 Noah Prado. All rights reserved.
//

import Foundation

enum Level: Int {
    case verbose = 2
    case debug = 3
    case info = 4
    case warn = 5
    case error = 6
    case assert = 7
}

func LogLevel(_ level: Level) {
    Logs.level = level
}

func Log(_ message: String = "", level: Level = .verbose,
         file: String = #file, function: String = #function, line: Int = #line) {
    
    guard Logs.level.rawValue <= level.rawValue else {
        return // Log level higher than message priority
    }
    
    // Thread
    let thread = (Thread.isMainThread) ? "Main" : String(Thread.current.number())
    let threadContent = " <Thread: \(thread)>"
    
    // Time
    let now = Date()
    var last: Date!
    
    Logs.queue.sync {
        last = Logs.lastTime
        Logs.lastTime = now
    }
    
    let timeElapsed = now.timeIntervalSince1970 - last.timeIntervalSince1970
    
    // Divider
    let divider = (timeElapsed > 1) ? "----------------------------------------\n" : ""
    
    // File
    let fileName = ((file as NSString).lastPathComponent as NSString).deletingPathExtension
    
    let messageHeader = "\(divider)\(now.logTime()) \(fileName)\(" [line \(line)]")\(threadContent) in \(function)"
    print(messageHeader)
    
    guard message != "" else {
        return
    }
    
    let messageContent = "\(now.logTime()) \(fileName)\(" [line \(line)]")\(threadContent) \(message)"
    print(messageContent)
}

fileprivate struct Logs {
    static var level: Level = .verbose
    static var lastTime = Date()
    static let queue = DispatchQueue(label: "com.loglevels.queue", qos: .background)
}
