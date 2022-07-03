//
//  models.swift
//  BMICalculator
//
//  Created by Isagulov urmat on 3/7/22.
//

import Foundation
import UIKit

enum resultModel{
    case verySkinny
    case skinny
    case normal
    case excessWeight
    case obesityOfTheFirstDegree
    case obesityOfTheSecondDegree
    case obesityOfTheThirdDegree
    
    var title: String{
        switch self {
        case .verySkinny:
            return "Худющий!"
        case .skinny:
            return "Худой!"
        case .normal:
            return "Апполон!"
        case .excessWeight:
            return "Лишний вес!"
        case .obesityOfTheFirstDegree:
            return "Ожирение первой степени!"
        case .obesityOfTheSecondDegree:
            return "Ожирение второй степени!"
        case .obesityOfTheThirdDegree:
            return "Ожирение третьей степени!"
        }
    }
    
    
    
    var definiton: String{
        switch self {
        case .verySkinny:
            return "Не рекомендуется гулять в ветренную погоду."
        case .skinny:
            return "Вам бы кушать побольше"
        case .normal:
            return "Вы отлично слажены. Соотношение роста и веса идеальны!"
        case .excessWeight:
            return "Лишнй - вес это плохо. Только если его нельзя скурить!"
        case .obesityOfTheFirstDegree:
            return "У вас ожирение первой степени."
        case .obesityOfTheSecondDegree:
            return "Ожирение второй степени. Жир можно сжечь, а вот чувство стыда - нет"
        case .obesityOfTheThirdDegree:
            return "Ожирение третьей степени. Вам лучше не ходить в гости к Кролику"
        }
    }
    
}
