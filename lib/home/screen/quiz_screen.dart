import 'package:flutter/material.dart';
import '../../widgets/quiz.dart';
import '../../widgets/result.dart';
import 'dart:math';

class MyQuiz extends StatefulWidget {
  var categoryIdx;

  MyQuiz(this.categoryIdx);

  @override
  State<MyQuiz> createState() => _MyQuizState(categoryIdx);
}

class _MyQuizState extends State<MyQuiz> {
  _MyQuizState(this.categoryIdx);
  final _questions = [
    {
      "category": "Basic-1",
      "image": "lesson_egg.png",
      "set": [
        {
          "level": "1",
          "items": [
            {
              "id": 0,
              "q": "Who is king of jungle?",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "id": 1,
              "q": "Who is fastest animal?",
              "i": "assets/images/questions/icons8-tiger.png",
              "a": "tiger"
            },
            {
              "id": 2,
              "q": "Who can fly?",
              "i": "assets/images/questions/icons8-ostrich.png",
              "a": "Ostrich"
            },
            {
              "id": 3,
              "q": "Who is biggest?",
              "i": "assets/images/questions/icons8-elephant.png",
              "a": "Elephant"
            },
            {
              "id": 4,
              "q": "Who is smallest?",
              "i": "assets/images/questions/icons8-ant.png",
              "a": "Ant"
            }
          ]
        },
        {
          "level": "2",
          "items": [
            {
              "q": "Who is king of jungle",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "q": "Who is fastes animal",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "tiger"
            },
            {
              "q": "Who can fly",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ostrich"
            },
            {
              "q": "Who is biggest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Elephant"
            },
            {
              "q": "Who is smallest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ant"
            }
          ]
        }
      ]
    },
    {
      "category": "Phrases",
      "image": "lesson_egg.png",
      "set": [
        {
          "level": "1",
          "items": [
            {
              "id": 0,
              "q": "Phrase question 1?",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "id": 1,
              "q": "Phrase question 2?",
              "i": "assets/images/questions/icons8-tiger.png",
              "a": "tiger"
            },
            {
              "id": 2,
              "q": "Phrase question 3?",
              "i": "assets/images/questions/icons8-ostrich.png",
              "a": "Ostrich"
            },
            {
              "id": 3,
              "q": "Phrase question 4?",
              "i": "assets/images/questions/icons8-elephant.png",
              "a": "Elephant"
            },
            {
              "id": 4,
              "q": "Phrase question 5?",
              "i": "assets/images/questions/icons8-ant.png",
              "a": "Ant"
            }
          ]
        },
        {
          "level": "2",
          "items": [
            {
              "q": "Who is king of jungle",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "q": "Who is fastes animal",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "tiger"
            },
            {
              "q": "Who can fly",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ostrich"
            },
            {
              "q": "Who is biggest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Elephant"
            },
            {
              "q": "Who is smallest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ant"
            }
          ]
        }
      ]
    },
    {
      "category": "Travel",
      "image": "lesson_egg.png",
      "set": [
        {
          "level": "1",
          "items": [
            {
              "id": 0,
              "q": "Travel question 1?",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "id": 1,
              "q": "Travel question 2?",
              "i": "assets/images/questions/icons8-tiger.png",
              "a": "tiger"
            },
            {
              "id": 2,
              "q": "Travel question 3?",
              "i": "assets/images/questions/icons8-ostrich.png",
              "a": "Ostrich"
            },
            {
              "id": 3,
              "q": "Travel question 4?",
              "i": "assets/images/questions/icons8-elephant.png",
              "a": "Elephant"
            },
            {
              "id": 4,
              "q": "Travel question 5?",
              "i": "assets/images/questions/icons8-ant.png",
              "a": "Ant"
            }
          ]
        },
        {
          "level": "2",
          "items": [
            {
              "q": "Who is king of jungle",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "q": "Who is fastes animal",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "tiger"
            },
            {
              "q": "Who can fly",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ostrich"
            },
            {
              "q": "Who is biggest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Elephant"
            },
            {
              "q": "Who is smallest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ant"
            }
          ]
        }
      ]
    },
    {
      "category": "Food",
      "image": "lesson_egg.png",
      "set": [
        {
          "level": "1",
          "items": [
            {
              "id": 0,
              "q": "Food question 1?",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "id": 1,
              "q": "Food question 2?",
              "i": "assets/images/questions/icons8-tiger.png",
              "a": "tiger"
            },
            {
              "id": 2,
              "q": "Food question 3?",
              "i": "assets/images/questions/icons8-ostrich.png",
              "a": "Ostrich"
            },
            {
              "id": 3,
              "q": "Food question 4?",
              "i": "assets/images/questions/icons8-elephant.png",
              "a": "Elephant"
            },
            {
              "id": 4,
              "q": "Food question 5?",
              "i": "assets/images/questions/icons8-ant.png",
              "a": "Ant"
            }
          ]
        },
        {
          "level": "2",
          "items": [
            {
              "q": "Who is king of jungle",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "q": "Who is fastes animal",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "tiger"
            },
            {
              "q": "Who can fly",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ostrich"
            },
            {
              "q": "Who is biggest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Elephant"
            },
            {
              "q": "Who is smallest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ant"
            }
          ]
        }
      ]
    },
    {
      "category": "Family",
      "image": "lesson_egg.png",
      "set": [
        {
          "level": "1",
          "items": [
            {
              "id": 0,
              "q": "Family question 1?",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "id": 1,
              "q": "Family question 2?",
              "i": "assets/images/questions/icons8-tiger.png",
              "a": "tiger"
            },
            {
              "id": 2,
              "q": "Family question 3?",
              "i": "assets/images/questions/icons8-ostrich.png",
              "a": "Ostrich"
            },
            {
              "id": 3,
              "q": "Family question 4?",
              "i": "assets/images/questions/icons8-elephant.png",
              "a": "Elephant"
            },
            {
              "id": 4,
              "q": "Family question 5?",
              "i": "assets/images/questions/icons8-ant.png",
              "a": "Ant"
            }
          ]
        },
        {
          "level": "2",
          "items": [
            {
              "q": "Who is king of jungle",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "lion"
            },
            {
              "q": "Who is fastes animal",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "tiger"
            },
            {
              "q": "Who can fly",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ostrich"
            },
            {
              "q": "Who is biggest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Elephant"
            },
            {
              "q": "Who is smallest",
              "i": "assets/images/questions/icons8-lion.png",
              "a": "Ant"
            }
          ]
        }
      ]
    }
  ];
  int categoryIdx;
  var _questionIdx = 0;
  var _totalScore = 0;
  var _correctPercent = 0.0;
  int? _selectedOptionIdx;
  bool _isOptionSelected = false;
  List? questionList;
  var _isCorrect = false;

  void _nextQuestion() {
    if (_isCorrect == true) {
      setState(() {
        _totalScore += 1;
        _correctPercent = _totalScore / questionList!.length;
      });
    }
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _isCorrect
                    ? const Text(
                        'Correct',
                        style:
                            TextStyle(fontSize: 30, color: Colors.lightGreen),
                      )
                    : const Text(
                        "Wrong",
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      _questionIdx += 1;
                      _selectedOptionIdx = null;
                      _isOptionSelected = false;
                      // shuffleImageList();
                    });
                    shuffleImageList();
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<String> imageList = [];

  void shuffleImageList() {
    Set<String> randomQImg = {questionList![_questionIdx]["i"]};
    while (randomQImg.length < 4) {
      randomQImg
          .add(questionList![Random().nextInt(questionList!.length)]["i"]);
    }
    imageList = [...randomQImg];
    imageList.shuffle();
  }

  @override
  void initState() {
    questionList = (_questions[categoryIdx] as dynamic)["set"][0]["items"];
    shuffleImageList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: new IconButton(
          icon: new Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context, _correctPercent),
        ),
        title: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(20),
          child: LinearProgressIndicator(
              backgroundColor: Colors.black12,
              minHeight: 15,
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.lightGreen),
              value: _questionIdx / questionList!.length),
        ),
      ),
      body: _questionIdx < questionList!.length
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Quiz(
                    questions: questionList![_questionIdx]["q"],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    padding: const EdgeInsets.all(8),
                    children: List.generate(4, (index) {
                      return Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          child: GridTile(
                            child: Ink.image(
                              colorFilter: _selectedOptionIdx == index
                                  ? ColorFilter.mode(
                                      Colors.white.withOpacity(0.8),
                                      BlendMode.dstATop,
                                    )
                                  : null,
                              image: AssetImage(imageList[index]),
                              fit: BoxFit.contain,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          onTap: () {
                            setState(
                              () {
                                _selectedOptionIdx = index;
                                _isOptionSelected = true;
                                if (imageList[_selectedOptionIdx!] ==
                                    questionList![_questionIdx]["i"]) {
                                  _isCorrect = true;
                                } else {
                                  _isCorrect = false;
                                }
                              },
                            );
                          },
                        ),
                        color: _selectedOptionIdx == index
                            ? Colors.lightBlue
                            : Colors.white70,
                      );
                    }),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 100),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: _isOptionSelected ? _nextQuestion : null,
                        child: Text(
                          "Check",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          : Result(_totalScore, questionList!.length),
    );
  }
}
