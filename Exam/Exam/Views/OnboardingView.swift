//
//  OnboardingView.swift
//  Exam
//
//  Created by Юлия Новикова on 18.06.2024.
//

import Foundation

import SwiftUI

struct OnboardingView: View {
    @State private var currentStep = 0
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false

    let steps: [OnboardingStep]

    var body: some View {
        VStack {
            if steps.isEmpty {
                MainView()
            } else {
                Spacer()
                Text(steps[currentStep].titleKey)
                    .font(.largeTitle)
                    .padding()
                Image(steps[currentStep].imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .padding()
                Spacer()

                HStack {
                    if currentStep > 0 {
                        Button(action: {
                            currentStep -= 1
                        }) {
                            Text(LocalizedStringKey("back"))
                                .font(.title2)
                                .padding()
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }

                    Spacer()

                    if currentStep < steps.count - 1 {
                        Button(action: {
                            currentStep += 1
                        }) {
                            Text(LocalizedStringKey("next"))
                                .font(.title2)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    } else {
                        Button(action: {
                            hasSeenOnboarding = true
                           
                        }) {
                            Text(LocalizedStringKey("start"))
                                .font(.title2)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
        }
        .onAppear {
            if hasSeenOnboarding {
//                UserDefaults.standard.set(true, forKey: "hasSeenOnboarding")
//                                        hasSeenOnboarding = true
          }
        }
    }
}
