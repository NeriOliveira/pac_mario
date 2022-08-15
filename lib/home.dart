import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      endDrawer: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'Teste 02 - Escribo\n\nPatrick Neri de Oliveira',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(223, 164, 164, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/mario.png"),
                  ),
                  SizedBox(width: 25),
                  TextButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "game");
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.redAccent,
                      backgroundColor: Colors.red, //cor do fundo
                      onSurface: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        bottom: 15.0,
                        right: 40.0,
                        left: 40.0,
                      ),
                      child: Text(
                        "Mario",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
//PRÓXIMO PERSONAGEM
//LUIGI
//↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(223, 164, 164, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/luigi.png"),
                  ),
                  SizedBox(width: 25),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      primary: Colors.grey,
                      backgroundColor: Colors.grey, //cor do fundo
                      onSurface: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        bottom: 15.0,
                        right: 50.0,
                        left: 50.0,
                      ),
                      child: Text(
                        "Luigi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
//PRÓXIMO PERSONAGEM
//PRINCESA
//↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(223, 164, 164, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/princesa.png"),
                  ),
                  SizedBox(width: 25),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      primary: Colors.grey,
                      backgroundColor: Colors.grey, //cor do fundo
                      onSurface: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        bottom: 15.0,
                        right: 25.0,
                        left: 25.0,
                      ),
                      child: Text(
                        "Princesa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
