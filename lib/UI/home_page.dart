import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/UI/loading_screen.dart';
import 'package:weather_app/UI/widgets/WeatherInfo.dart';
import 'package:weather_app/UI/widgets/getWeatherIcon.dart';

import '../Domain/bloc/weather_bloc.dart';
import '../data/colors.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/IMG_7147.png'),
                fit: BoxFit.fill)),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherSuccess) {
              return Column(
                children: [
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xfffae2bd)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color:textColor1
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            getWeatherIcon(state.weather.weatherConditionCode!),
                            Text(
                              " ${state.weather.temperature!.celsius!.round()}°C",
                              style:   TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.w500,
                                  color:textColor1
                              ),
                            )
                          ],
                        ),
                        Text(state.weather.weatherMain!.toLowerCase(),
                            style:  TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                                color:textColor1
                            )),
                        Text("${state.weather.areaName}",
                            style:  TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                                color: textColor1
                            )),
                        Text(
                            DateFormat("M/d/y").format(state.weather.date!)
                            // "21 Oct 2019",
                            ,
                            style:  TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                                color:textColor1
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Feels like ${state.weather.weatherDescription}",
                                style:   TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                    color:textColor1
                                )),
                            const VerticalDivider(
                              color: Colors.black,
                              width: 20,
                            ),
                            Text(
                                "Sunset ${DateFormat().add_jm().format(state.weather.sunset!)}",
                                style:  TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                    color:textColor1
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 130,
                    width: 330,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: const Color(0x80fae2bd),
                        border: const Border()),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            WeatherInfoWidget(
                              title: 'Now',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                            WeatherInfoWidget(
                              title: '2 AM',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                            WeatherInfoWidget(
                              title: '3 AM',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                            WeatherInfoWidget(
                              title: '4 AM',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                            WeatherInfoWidget(
                              title: '5 AM',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                          ],
                        ),
                       Divider(
                          color: textColor2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            WeatherInfoWidget(
                              title: '6 AM',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                            WeatherInfoWidget(
                              title: '7 AM',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                            WeatherInfoWidget(
                              title: '8 AM',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                            WeatherInfoWidget(
                              title: '9 AM',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                            WeatherInfoWidget(
                              title: '10 AM',
                              value:
                              ' ${state.weather.temperature!.celsius!.round()}°C',
                              imagePath: 'assets/images/Vector.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child: Text('The Weather is ${state.weather.weatherDescription!}',
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.w600,
                           color: textColor2
                         )),
                   ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                       " Good morning! Step into a new day with our weather app. today's ${state.weather.weatherDescription}, ensuring you're ready for whatever weather comes your way. From sunrise up of today at ${DateFormat().add_jm().format(state.weather.sunrise!)} and  sunset at ${DateFormat().add_jm().format(state.weather.sunset!)}, stay informed ",
                       maxLines: 5,
                       style:   TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.w600,
                         color:textColor2
                       )),
                    ),
                ],
              );
            } else {
              return const LoadingScreen();
            }
          },
        ),
      ),
    );
  }
}
