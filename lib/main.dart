import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: OmgCard(),
  ));
}

class OmgCard extends StatefulWidget {
  const OmgCard({super.key});

  @override
  State<OmgCard> createState() => _OmgCardState();
}

class _OmgCardState extends State<OmgCard> {

  int level = 0;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Player Overview',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         setState((){
           level = level+1;
           print('Hello');

         });
        },
        backgroundColor: Colors.greenAccent[700],
        child: const Icon(
          Icons.add,
        ),
      ),

      body:





      Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/me.jpeg'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text(
                'NAME:',
                style: TextStyle(
                  color: Colors.grey[600],
                  letterSpacing: 1.0,
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Text(
                'OMGQUIET',
                style: TextStyle(
                  color: Colors.greenAccent[700],
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
               const SizedBox(
                height: 15,
              ),
              Text(
                'CURRENT LEVEL:',
                style: TextStyle(
                  color: Colors.grey[600],
                  letterSpacing: 0.0,
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Text(
                '$level',
                style: TextStyle(
                  color: Colors.greenAccent[700],
                  letterSpacing: 0.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'hasanshantoemail@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 0,
                    ),
                  )
                ],

              )

            ,Padding(
              padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
              child: ElevatedButton(

                  onPressed: () {
                    setState((){
                      level = 0;
                      print('Hello');

                    });
                  },
                  //backgroundColor: Colors.greenAccent[700],
                  child: const Icon(
                    Icons.add,
                  ),
                ),
            ),],
          )),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
