//
//  main.swift
//  HomeworkLession3
//
//  Created by Hiếu đang cáu on 05/10/2023.
//

//
//  main.swift
//  TienCuocTaxi
//
//  Created by apple on 10/6/23.
//

import Foundation

if let input = readLine(), let num = Int(input){
    let strNum: String = String(num)
    var str: [Int] = []
    str = strNum.compactMap { Int(String($0)) }
    print(str)
    var sum:Int = 0
    for i in str {
        sum+=i
    }
    print("Tổng của các chữ số là : \(sum)")
}

func tienCuoc(_ hangXe: Car, _ dichVu: Service, soKm: Double) {
    
    var giaMoCua: Double = 0
    var kmMoCua: Double = 0
    var giaKmTiepTheo: Double = 0
    var giaKmThuN: Double = 0
    var kmThuN: Double = 0
    
    switch hangXe {
    case .MAI_LINH:
        giaMoCua = 20000
        kmMoCua = 1.28
        kmThuN = 31
        switch dichVu {
        case .XE_4_LON:
            giaKmTiepTheo = 16000
            giaKmThuN = 12700
        case .XE_4_NHO:
            giaKmTiepTheo = 14500
            giaKmThuN = 12000
        case .XE_7:
            giaKmTiepTheo = 17000
            giaKmThuN = 14300
        default:
            break
        }
    case .VINA_SUN:
        giaMoCua = 11000
        kmMoCua = 0.5
        kmThuN = 31
        switch dichVu {
        case .XE_4_NHO:
            giaKmTiepTheo = 11000
            giaKmThuN = 17600
        case .XE_7:
            giaKmTiepTheo = 12000
            giaKmThuN = 19600
        default:
            break
        }    
    case .VINA_TAXI:
        giaMoCua = 11000
        kmMoCua = 0.5
        kmThuN = 31
        switch dichVu {
        case .XE_4_NHO:
            giaKmTiepTheo = 11000
            giaKmThuN = 17100
        case .XE_7:
            giaKmTiepTheo = 12000
            giaKmThuN = 19100
        default:
            break
        }     
    case .GROUP:
        giaMoCua = 20000
        kmMoCua = 0.9
        kmThuN = 26
        switch dichVu {
        case .XE_VIOS:
            giaKmTiepTheo = 17600
            giaKmThuN = 14400
        case .XE_INOVA:
            giaKmTiepTheo = 19600
            giaKmThuN = 16200
        default:
            break
        }    
    case .G7:
        giaMoCua = 11000
        kmMoCua = 0.5
        kmThuN = 31
        switch dichVu {
        case .XE_4_NHO:
            giaKmTiepTheo = 11000
            giaKmThuN = 17600
        case .XE_7:
            giaKmTiepTheo = 12000
            giaKmThuN = 19600
        default:
            break
        }    
    case .SAO_MAI:
        giaMoCua = 11000
        kmMoCua = 0.5
        kmThuN = 31
        switch dichVu {
        case .XE_4_NHO:
            giaKmTiepTheo = 11000
            giaKmThuN = 17600
        case .XE_7:
            giaKmTiepTheo = 12000
            giaKmThuN = 19600
        default:
            break
        }
    case .GSM:
        giaMoCua = 11000
        kmMoCua = 0.5
        kmThuN = 31
        switch dichVu {
        case .XE_4_NHO:
            giaKmTiepTheo = 11000
            giaKmThuN = 17600
        case .XE_7:
            giaKmTiepTheo = 12000
            giaKmThuN = 19600
        default:
            break
        }
    }
    
    var tienCuoc: Double = 0
    
    if soKm < 0 {
        tienCuoc = 0
    } else if soKm <= kmMoCua {
        tienCuoc = giaMoCua
    } else if soKm < kmThuN {
        tienCuoc = giaMoCua + giaKmTiepTheo * (soKm - kmMoCua)
    } else {
        tienCuoc = giaMoCua + giaKmTiepTheo * ((kmThuN - 1) - kmMoCua) + giaKmThuN * (soKm - (kmThuN - 1))
        print(kmMoCua)
        print(kmThuN - kmMoCua)
        print(soKm - kmThuN)
    }
    
    print("Tiền cước của chuyến xe \(hangXe.rawValue) \(dichVu.rawValue) là \(tienCuoc)")
}

tienCuoc(Car.MAI_LINH, Service.XE_4_NHO, soKm: 31)



