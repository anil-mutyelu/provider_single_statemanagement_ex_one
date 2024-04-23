
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'countProvider.dart';


class providerhomepage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _providerhomepage();
  }

}


class _providerhomepage extends State <providerhomepage>
{

  // @override
  // void initState() {
  //   super.initState();
  //   // Timer(const Duration(seconds: 1), (timer) {
  //   Timer.periodic(const Duration(seconds: 1), (timer) {
  //
  //
  //     print( "inc auto but buid call more time ${a}");
  //
  //     setState(() {
  //       a++;
  //     });
  //
  //
  //
  //
  //   });
  // }


  @override
  Widget build(BuildContext context) {

    print("build");

    final cp = Provider.of<countp>(context,listen: false);

    return Scaffold(
      body: Center(
        child: Container(
          width: 1324,
          height: 244,
          color: Colors.cyan,
          // child: Center(child: Text(cp.count.toString(),style: (TextStyle(fontSize: 60)),)),
          child: Consumer<countp>(builder: (context,value,child)
          {
            print("only this consumer method biuld");

            return Center(child: Text(cp.count.toString(),style: (TextStyle(fontSize: 60)),));
            // return Text(cp.count.toString(),style: (TextStyle(fontSize: 60)),);

          }),

        ),
      ),
    floatingActionButton: FloatingActionButton(
     onPressed: (){

       cp.setCount();
  }
),

    );
  }



}