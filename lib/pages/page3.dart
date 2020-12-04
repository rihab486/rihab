import 'package:flutter/material.dart';

class Pagethree extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

String responseBody = "";
var myData = null;

class HomePageState extends State<Pagethree> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          'Statistiques par Gouvernorat',
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ),
      body: Center(
        child: new Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                margin: const EdgeInsets.all(13.0),
                width: 80.0,
                height: 30.0,
                child: Text("Gouvernorat",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ))),
            Container(
                margin: const EdgeInsets.all(10.0),
                width: 70.0,
                height: 30.0,
                child: Text('malades',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ))),
            Container(
                margin: const EdgeInsets.all(10.0),
                width: 66.0,
                height: 30.0,
                child: Text('guérisons',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ))),
            Container(
                margin: const EdgeInsets.all(7.0),
                width: 50.0,
                height: 30.0,
                child: Text('décès',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ))),
          ]),
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: 24,
                  padding: EdgeInsets.all(1.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(7.0),
                            width: 70.0,
                            height: 15.0,
                            child: Text(
                              myData['data'][index]["regionName"].toString(),
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.all(10.0),
                              width: 40.0,
                              height: 15.0,
                              child: Text(
                                myData['data'][index]["casesCount"].toString(),
                                style: TextStyle(
                                  color: Colors.orange,
                                ),
                              )),
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            width: 30.0,
                            height: 15.0,
                            child: Text(
                              myData['data'][index]["recoveredCount"]
                                  .toString(),
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            width: 30.0,
                            height: 15.0,
                            child: Text(
                              myData['data'][index]["deceasedCount"].toString(),
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
