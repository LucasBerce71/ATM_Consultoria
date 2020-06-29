import 'package:atmconsultoria/ClientDetail.dart';
import 'package:atmconsultoria/ContactDetail.dart';
import 'package:atmconsultoria/ServiceDetail.dart';
import 'package:atmconsultoria/StartupDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _openStartup() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => StartupDetail()
        ));
  }

  void _openServices() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ServiceDetail()
      ));
  }

  void _openContact() {
    Navigator.push(
        context,
        MaterialPageRoute(
         builder: (context) => ContactDetail()
        ));
  }

  void _openClient() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ClientDetail()
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                      onTap: this._openStartup,
                      child: Image.asset("images/menu_empresa.png")
                  ),
                  GestureDetector(
                    onTap: this._openServices,
                    child: Image.asset("images/menu_servico.png")
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                      onTap: this._openClient,
                      child: Image.asset("images/menu_cliente.png")
                  ),
                  GestureDetector(
                      onTap: this._openContact,
                      child: Image.asset("images/menu_contato.png")
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
