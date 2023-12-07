import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/UI/loading_screen.dart';
import 'package:weather_app/UI/widgets/WeatherInfo.dart';
import 'package:weather_app/UI/widgets/getWeatherIcon.dart';
import 'package:weather_app/bloc/weather_bloc.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

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
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xfffae2bd)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Today",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              getWeatherIcon(
                                  state.weather.weatherConditionCode!),
                              Text(
                                " ${state.weather.temperature!.celsius!.round()}°C",
                                style: const TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          Text(state.weather.weatherMain!.toLowerCase(),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )),
                          Text("${state.weather.areaName}",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              )),
                          Text(
                              DateFormat("M/d/y").format(state.weather.date!)
                              // "21 Oct 2019",
                              ,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  "Feels like ${state.weather.weatherDescription}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  )),
                              const VerticalDivider(
                                color: Colors.black,
                                width: 20,
                              ),
                              Text(
                                  "Sunset ${DateFormat().add_jm().format(state.weather.sunset!)}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(65.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Container(
                            height: 230,
                            width: 430,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(20),
                                color: const Color(0x80fae2bd),
                                border: const Border()),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                const Divider(
                                  color: Colors.black,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                              'The Weather is ${state.weather.weatherDescription!}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          const Text(
                              " Improve him believe opinion offered met and end \n cheered forbade. Friendly as stronger speedily by \n recurred. Son interest wandered sir addition end say.\n Manners beloved affixed picture men ask.",
                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              )),
                        ],
                      ),
                    ),
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
