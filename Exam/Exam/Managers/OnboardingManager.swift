//
//  OnboardingManager.swift
//  Exam
//
//  Created by Юлия Новикова on 18.06.2024.
//

import Foundation

import SwiftUI

struct OnboardingManager {
    static func generateOnboardingSteps() -> [OnboardingStep] {
        var steps: [OnboardingStep] = []
        var index = 1

        while let _ = UIImage(named: "onboarding\(index)") {
            let titleKey = LocalizedStringKey("Screen \(index)")
           
                let imageName = "onboarding\(index)"
                steps.append(OnboardingStep(titleKey: titleKey, imageName: imageName))
            

            index += 1
        }

        return steps
    }
}
