//
//  Hesaplayıcı.swift
//  
//
//  Created by Sinan Caliskan on 2023-03-01.
//

import Foundation

@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, *)
public func doğrumu(bulunacak: String, ad: String) -> Bool{
    var devam = false
    var sayı = 0
    var toplamharfler = bulunacak.count
    for harf in ad{
        if harf == "b" && devam == false{
            devam = true
            sayı += 1
        } else if harf == "e" && devam == true{
            sayı += 1
        } else if harf == "b" && devam == true{
            sayı += 1
        } else if harf == "e" && devam == true{
            sayı += 1
            print(harf)
            if sayı == toplamharfler && devam == true{
               return true
            }
        } else {
            if sayı == 3 && devam == true{
                return true
            }
            devam = false
        }
    }
    return false
}

public func Agumu(bulunacak: String, ad: String) -> Bool{
    var devam = false
    var sayı = 0
    var toplamharfler = bulunacak.count
    for harf in ad{
        if harf == "A" && devam == false{
            devam = true
            sayı += 1
        } else if harf == "g" && devam == true{
            sayı += 1
        } else if harf == "u" && devam == true{
            sayı += 1
            print(harf)
            if sayı == toplamharfler && devam == true{
               return true
            }
        } else {
            if sayı == 3 && devam == true{
                return true
            }
            devam = false
        }
    }
    return false
}

public func Kalkanmı(bulunacak: String, ad: String) -> Bool{
    var devam = false
    var sayı = 0
    var toplamharfler = bulunacak.count
    for harf in ad{
        if harf == "k" && devam == true{
            devam = true
            sayı += 1
        } else if harf == "a" && devam == true{
            sayı += 1
        } else if harf == "l" && devam == true{
            sayı += 1
        } else if harf == "k" && devam == true{
            sayı += 1
        } else if harf == "a" && devam == true{
            sayı += 1
        } else if harf == "n" && devam == true{
            sayı += 1
            print(harf)
            if sayı == 6 && devam == true{
                return true
            }
        } else {
            if sayı == 6 && devam == true{
                return true
            }
            devam = false
        }
    }

    return false
}
