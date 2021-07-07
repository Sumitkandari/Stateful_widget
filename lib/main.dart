
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
          home: Scaffold(
        appBar: AppBar(
          title:Text("Demo App"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child:Column(

            children: <Widget>[
              Text("Hello,Everyone my name is:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Text(name,style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 30),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:16,horizontal:50),
                
                              child: TextFormField(
                  
                  decoration:InputDecoration(
                    hintText: "Enter name",
                   enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              //  when the TextFormField in unfocused 
                            ) ,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              //  when the TextFormField in focused 
                            ) ,

                  ),
                  onChanged: (value){
                      name=value;
                      setState(() {
                        
                      });
                  },
                ),
              )

            ],)
        ),
        
      ),
    );
  }
}