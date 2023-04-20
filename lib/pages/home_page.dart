import 'package:flutter/material.dart';
import 'package:quiz_app/data/local_data/quze_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Icon> icons = [];
  void jooptuTeksher(bool koldonuuchununJoobu) {
    final programmisJoop = quzeData.jooptuAlipKel();
    if (koldonuuchununJoobu == programmisJoop) {
      icons.add(
        Icon(
          Icons.close,
          size: 35,
          color: Colors.red,
        ),
      );
    } else {
      icons.add(
        Icon(
          Icons.check,
          size: 35,
          color: Colors.green,
        ),
      );
    }
    quzeData.otkoz();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Тапшырма 7',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          quzeData.suroonuAlipKel() == 'Суроолор бутту!'
              ? InkWell(
                  onTap: () {
                    quzeData.restart();
                    icons = [];
                    setState(() {});
                  },
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        'Суроолор бутту aртка кайт!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Text(
                    quzeData.suroonuAlipKel()!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              jooptuTeksher(false);
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff4CB050),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 170, vertical: 10),
                child: Text(
                  'Туура',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          InkWell(
            onTap: () {
              jooptuTeksher(true);
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 133, vertical: 10),
                child: Text(
                  'Туура эмес',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Row(children: icons)
        ],
      ),
    );
  }
}
