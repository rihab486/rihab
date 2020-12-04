import 'package:ex4/BLC/weather_event.dart';
import 'package:ex4/BLC/weather_manage_bloc.dart';
import 'package:ex4/BLC/weather_state.dart';
import 'package:ex4/MDEL/weatherData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


class Pagetow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      color: Colors.white,
        theme: ThemeData(primarySwatch: Colors.grey),
    home: BlocProvider(
    create: (context) => WeatherManageBloc(),
    child: WeatherInfo(),
    ),
    );
  }

}
class WeatherInfo extends StatefulWidget {
  @override
  _WeatherInfoState createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  TextEditingController controller = TextEditingController();
  final weatherBloc = WeatherManageBloc();
  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherManageBloc>(context);
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: BlocBuilder(
              bloc: weatherBloc,
              builder: (context, state) {
                if (state is NotSearchingState) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Search Weather",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            controller: controller,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search City",
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                                )),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            height: 40.0,
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {
                                weatherBloc.add(GetWeatherDataFromSearchBar(
                                    cityName: controller.text));
                              },
                              color: Colors.grey,
                              child: Text("Search"),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                } else if (state is SearchingState) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is SearchedState) {
                  return ShowData(state.weatherData, controller.text);
                }
              },
            ),
          ),
        ));
  }
}

class ShowData extends StatelessWidget {
  final WeatherData data;
  final String cityName;

  const ShowData(this.data, this.cityName);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("temparature of $cityName is" + " " + data.temp.toString()),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  // return to again notsearchingstate//
                  BlocProvider.of<WeatherManageBloc>(context)
                      .add(ResetWeatherData());
                },
                color: Colors.grey,
                child: Text("search again"),
              ),
            )
          ],
        ),
      ),
    );
  }
}