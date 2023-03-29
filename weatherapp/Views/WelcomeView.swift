//
//  WelcomeView.swift
//  weatherapp
//
//  Created by Anderson Vanzo on 27/03/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
	@EnvironmentObject var locationManager: LocationManager
	var body: some View {
		VStack{
			VStack(spacing: 20) {
				Text("Welcome to the Weather App")
					.bold()
					.font(.title)
				Text("Please, share your current location to get the weather in your area")
					.padding()
			}
			.multilineTextAlignment(.center)
			.padding()
			
			LocationButton(.shareCurrentLocation) {
				locationManager.requestLocation()
			}
			.cornerRadius(8)
			.symbolVariant(.fill)
			.foregroundColor(.white)
			.tint(Color("secondary"))
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
	}
}

struct WelcomeView_Previews: PreviewProvider {
	static var previews: some View {
		WelcomeView()
	}
}
