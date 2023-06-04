import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //propiedades
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    //variables
    const fontSize30 = TextStyle(fontSize: 30);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("Número de clicks: ",style: fontSize30,),
            Text('$counter',style: fontSize30,)
          ],
        ),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
              onPressed: () { 
                  counter++;
                  setState(() {
                    
                  });
              },
           ),
           //const SizedBox(width: 20),
           FloatingActionButton(
            child: const Icon(Icons.restore),
              onPressed: () { 
                  counter=0;
                  setState(() {
                    
                  });
              },
           ),
           //const SizedBox(width: 20),
           FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
              onPressed: () { 
                  counter--;
                  setState(() {
                    
                  });
              },
           ),
        ],
      ),
    );
  }
}