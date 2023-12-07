import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      title: 'Choose Your Adventure Game',
      home: AdventureGame(),
    ));

class AdventureGame extends StatefulWidget {
  @override
  _AdventureGameState createState() => _AdventureGameState();
}

class _AdventureGameState extends State<AdventureGame> {
  int _currentStep = 1;

  void _selectOption(int option) {
    setState(() {
      _currentStep = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Choose Your Adventure Game'),
          actions: <Widget>[
            IconButton(onPressed: SystemNavigator.pop, icon: Icon(Icons.close))
          ]),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              _currentStep == 1
                  ? 'Entrance'
                  : _currentStep == 2
                      ? 'Foyer'
                      : _currentStep == 3
                          ? 'Storage'
                          : _currentStep == 4
                              ? 'Mystery'
                              : _currentStep == 5
                                  ? 'Dining Room'
                                  : _currentStep == 6
                                      ? 'Hallway'
                                      : 'The Void',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              _currentStep == 1
                  ? 'You are standing in front of the door to a large, lavish mansion. You have heard rumors that it is haunted, but surely those are not true... right? Head north to enter the mansion.'
                  : _currentStep == 2
                      ? 'You are standing in a large foyer. It is very overly decorated, but also a bit dusty. There are doors to your east and west, and stairs to your north.'
                      : _currentStep == 3
                          ? 'You are standing in a storage room. All around you are shelves and trunks full of useless trash, and in front of you is a golden treasure chest! There is a room to your north.'
                          : _currentStep == 4
                              ? 'You are standing in a suspiciously empty room. You get a very bad feeling standing it here, but you are not sure why. There are rooms to your west and north.'
                              : _currentStep == 5
                                  ? 'You are standing in a dining room. The extremely large table is completely barren, save for a single covered platter. There are rooms to your south and east.'
                                  : _currentStep == 6
                                      ? 'You are standing in a hallway. Along the wall are paintings of people you do not know, and some vases sitting on small tables. There are rooms to your south and west.'
                                      : 'Oops! You seem to have fallen into the void somehow. Its endless space closes in on you as you realize you are trapped here forever.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            _currentStep == 1
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {
                            _selectOption(2);
                          },
                          child: Text('North'))
                    ],
                  )
                : _currentStep == 2
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              _selectOption(4);
                            },
                            child: Text('East'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _selectOption(1);
                            },
                            child: Text('South'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _selectOption(3);
                            },
                            child: Text('West'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _selectOption(5);
                            },
                            child: Text('North'),
                          ),
                        ],
                      )
                    : _currentStep == 3
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ElevatedButton(
                                  onPressed: () {
                                    _selectOption(2);
                                  },
                                  child: Text('East'))
                            ],
                          )
                        : _currentStep == 4
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  ElevatedButton(
                                      onPressed: () {
                                        _selectOption(2);
                                      },
                                      child: Text('West')),
                                  ElevatedButton(
                                      onPressed: () {
                                        _selectOption(6);
                                      },
                                      child: Text('North'))
                                ],
                              )
                            : _currentStep == 5
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      ElevatedButton(
                                          onPressed: () {
                                            _selectOption(2);
                                          },
                                          child: Text('South')),
                                      ElevatedButton(
                                          onPressed: () {
                                            _selectOption(6);
                                          },
                                          child: Text('East'))
                                    ],
                                  )
                                : _currentStep == 6
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          ElevatedButton(
                                              onPressed: () {
                                                _selectOption(5);
                                              },
                                              child: Text('West')),
                                          ElevatedButton(
                                              onPressed: () {
                                                _selectOption(4);
                                              },
                                              child: Text('South'))
                                        ],
                                      )
                                    : SizedBox(),
          ],
        ),
      ),
    );
  }
}
