import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './main.dart';

class EditData extends StatefulWidget {
  final List list;
  final int index;

  EditData({this.list, this.index});

  @override
  _EditDataState createState() => new _EditDataState();
}

class _EditDataState extends State<EditData> {

  TextEditingController controllerCode;
  TextEditingController controllerName;
  TextEditingController controllerPrice;
  TextEditingController controllerStock;


  void editData() {
    var url="http://10.0.2.2/rekam_medis/edit.php";
    http.post(url,body: {
      "id_obat": widget.list[widget.index]['id_obat'],
      "nama_obat": controllerPrice.text,
      "ket_obat": controllerStock.text
    });
  }

  @override
    void initState() {
      controllerName= new TextEditingController(text: widget.list[widget.index]['id_obat'] );
      controllerPrice= new TextEditingController(text: widget.list[widget.index]['nama_obat'] );
      controllerStock= new TextEditingController(text: widget.list[widget.index]['ket_obat'] );
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDIT"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerCode,
                  decoration: new InputDecoration(
                      hintText: "id_obat", labelText: "id_obat"),
                ),
                new TextField(
                  controller: controllerName,
                  decoration: new InputDecoration(
                      hintText: "nama_obat", labelText: "nama_obat"),
                ),
                new TextField(
                  controller: controllerPrice,
                  decoration: new InputDecoration(
                      hintText: "ket_obat", labelText: "ket_obat"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new RaisedButton(
                  child: new Text("EDIT"),
                  color: Colors.blueAccent,
                  onPressed: () {
                    editData();
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context)=>new Home()
                      )
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
