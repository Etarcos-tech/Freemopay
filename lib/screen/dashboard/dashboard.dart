import 'package:flutter/material.dart';

class Dashbord extends StatefulWidget{
  @override
  State<Dashbord> createState() => DashbordState();
}

class DashbordState extends State<Dashbord>{
  @override
  Widget build(BuildContext context){

    List<Map<String,String>> toDo = [
      {'img': 'assets/logo/logo2.jpg','title':'TM solutions','subtitle':'Your monthly payment of XAF 10 000 is overdue by 05 days'},
      {'img': 'assets/logo/logo2.jpg','title':'TM solutions','subtitle':'Your monthly payment of XAF 10 000 is overdue by 05 days'},
      {'img': 'assets/logo/logo2.jpg','title':'TM solutions','subtitle':'Your monthly payment of XAF 10 000 is overdue by 05 days'},
      {'img': 'assets/logo/logo2.jpg','title':'TM solutions','subtitle':'Your monthly payment of XAF 10 000 is overdue by 05 days'},
    ];
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.menu,
                          size: 35,
                        ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Hi, Cabrel',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),
                        SizedBox(width: 10,),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey.shade300,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width * .99,
                height: MediaQuery.of(context).size.height * .18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total saving',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'XAF 145 000 125',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width * .99,
                //height: MediaQuery.of(context).size.height * .2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.25,
                          height: MediaQuery.of(context).size.height * .12,
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade200,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('+',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                              Text('Depôt',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),)
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.25,
                          height: MediaQuery.of(context).size.height * .12,
                          decoration: BoxDecoration(
                              color: Colors.red.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),),
                              Text('Payement',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.25,
                          height: MediaQuery.of(context).size.height * .12,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),),
                              Text('Retrait',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),)
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.25,
                          height: MediaQuery.of(context).size.height * .12,
                          decoration: BoxDecoration(
                              color: Colors.yellow.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('+',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),),
                              Text('Tontine',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Action à venir',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Column(
                  children: getToDo(toDo),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getToDo(List<Map<String,String>> list){
    List<Widget>  l = list.map((el) => (

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200
          ),
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(el['img']!),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      el['title']!,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 3,),
                    Text(
                      el['subtitle']!,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    )).toList();
    return l;
  }
}