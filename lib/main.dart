import 'package:flutter/material.dart';
import 'package:new_project/views/Page_cadastro_agente_de_campo.dart';
import 'package:new_project/views/page_cadastro_Motorista.dart';
import 'package:new_project/views/page_cadastro_aluno.dart';
import 'package:new_project/views/page_cadastro_escola.dart';
import 'package:new_project/views/page_cadastro_fiscal_de_campo.dart';
import 'package:new_project/views/page_cadastro_rota.dart';
import 'package:new_project/views/page_cadastro_veiculo.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.amber),
    home: MyHomePage(),
  ));
}

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final button1 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PageCadastroAgenteDeCampo()),
          );
        },
        child: new Text("Cadastrar Agente de Campo"),
      ),
    );
    final button2 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageCadastroRota()),
          );
        },
        child: new Text("Adicionar Rota"),
      ),
    );
    final button3 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageCadastroAluno()),
          );
        },
        child: new Text("Cadastrar Aluno"),
      ),
    );
    final button4 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageCadastroEscola()),
          );
        },
        child: new Text("Cadastrar Escola"),
      ),
    );
    final button5 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageCadastroMotorista()),
          );
        },
        child: new Text("Cadastrar Motorista"),
      ),
    );
    final button6 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageCadastroVeiculo()),
          );
        },
        child: new Text("Adicionar Veículo"),
      ),
    );
    final button7 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PageCadastroFiscalDeCampo()),
          );
        },
        child: new Text("Cadastrar Fiscal de Campo"),
      ),
    );
    final button8 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(70.0, 15.0, 70.0, 15.0),
        onPressed: () {
          Navigator.pop(context);
        },
        child: new Text("Sair"),
      ),
    );
    final body = new Center(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(70.0, 15.0, 70.0, 15.0),
        children: <Widget>[
          button1,
          SizedBox(
            height: 15.0,
          ),
          button2,
          SizedBox(
            height: 15.0,
          ),
          button3,
          SizedBox(
            height: 15.0,
          ),
          button4,
          SizedBox(
            height: 15.0,
          ),
          button5,
          SizedBox(
            height: 15.0,
          ),
          button6,
          SizedBox(
            height: 15.0,
          ),
          button7,
          SizedBox(
            height: 15.0,
          ),
          button8,
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );

    return new Scaffold(
        appBar: new AppBar(
          title: Text("Tela Inicial"),
        ),
        body: body);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => List()),
          );
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                  child: Image.asset(
                    "assets/busC.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
