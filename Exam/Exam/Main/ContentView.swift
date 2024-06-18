//
//  ContentView.swift
//  Exam
//
//  Created by Юлия Новикова on 18.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var hasSeenOnboarding = UserDefaults.standard.bool(forKey: "hasSeenOnboarding")

    // Генерация онбординга
    let onboardingSteps: [OnboardingStep] = OnboardingManager.generateOnboardingSteps()

    var body: some View {
        if hasSeenOnboarding || onboardingSteps.isEmpty {
            
            MainView()
        } else {
            OnboardingView(steps: onboardingSteps)
            //MainView()
        }
    }
}
