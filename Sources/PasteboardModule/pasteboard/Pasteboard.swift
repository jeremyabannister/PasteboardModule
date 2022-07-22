//
//  Pasteboard.swift
//  
//
//  Created by Jeremy Bannister on 7/22/22.
//

///
public enum Pasteboard {
    
    ///
    #if os(iOS)
    public static var string: String? {
        get { UIPasteboard.general.string }
        set { UIPasteboard.general.string = newValue }
    }
    #elseif os(macOS)
    public static var string: String? {
        get { NSPasteboard.general.string(forType: .string) }
        set {
            NSPasteboard.general.clearContents()
            if let newValue = newValue {
                NSPasteboard.general.setString(newValue, forType: .string)
            }
        }
    }
    #endif
}
