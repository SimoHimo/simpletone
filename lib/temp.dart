import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color baseColor = Color(0xFFf5f6fa);
  Color textColor = Color(0xFF767676);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.deepPurple, //or set color with: Color(0xFF0000FF)
    ));

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(height: height*0.075,
                width: width,
                color: Colors.deepPurpleAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu_open,size: 40,color: Colors.white,)),
                    SizedBox(width: width*0.25,),
                    Text("musica",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(width: width*0.20,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded,size: 40,color: Colors.white,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 40,color: Colors.white,)),
                  ],
                )
            ),
            SizedBox(
              height: height*0.065,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: width*0.04,),
                    ClayContainer(
                        height: height*0.04,
                        width: width*0.25,
                        color: baseColor,
                        borderRadius: 20,
                        child:  Center(child: Text("Tracks",style: TextStyle(fontSize:22,fontWeight:FontWeight.bold,color: textColor),),)


                    ),
                    SizedBox(width: width*0.04,),
                    ClayContainer(
                        height: height*0.04,
                        width: width*0.25,
                        color: baseColor,
                        borderRadius: 20,
                        child:  Center(child: Text("Playlist",style: TextStyle(fontSize:22,fontWeight:FontWeight.bold,color: textColor),),)


                    ),
                    SizedBox(width: width*0.04,),
                    ClayContainer(
                        height: height*0.04,
                        width: width*0.25,
                        color: baseColor,
                        borderRadius: 20,
                        child:  Center(child: Text("Artist",style: TextStyle(fontSize:22,fontWeight:FontWeight.bold,color: textColor),),)


                    ),SizedBox(width: width*0.04,),

                    ClayContainer(
                        height: height*0.04,
                        width: width*0.25,
                        color: baseColor,
                        borderRadius: 20,
                        child:  Center(child: Text("Folder",style: TextStyle(fontSize:22,fontWeight:FontWeight.bold,color: textColor),),)


                    ),

                  ],
                ),
              ),
            ),
            Expanded(child:
            ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return
                  ClayContainer(
                    color: baseColor,
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: SizedBox(height: 40,)
                    ),
                  )
                ;
              },
            ),
            )

          ],
        ),
      ),
    );
  }
}
