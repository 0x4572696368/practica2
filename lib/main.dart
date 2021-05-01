import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> dia = [
    "01",
    "02",
    "02",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "00",
    "11",
    "12",
    "12",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "22",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
  ];
  List<String> mes = [
    "01",
    "02",
    "02",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "00",
    "11",
    "12",
  ];
  List<String> year = [
    "1990",
    "1991",
    "1992",
    "1993",
    "1994",
    "1995",
    "1996",
    "1997",
    "1998",
    "1999",
    "2000",
    "2001",
    "2002",
    "2002",
    "2004",
    "2005",
    "2006",
    "2007",
    "2008",
    "2009",
    "2000",
    "2011",
    "2012",
    "2012",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
  ];
  List<String> departamentos = ["LIMA", "AREQUIPA", "PASCO", "LORETO", "TUMBES"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ERICH ECHEVARRIA - PRACTICA 2'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 12,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "PERSONAL",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Divider(
                                        height: 4,
                                      ),
                                      txtInput("NOMBRE", "INGRESE SU NOMBRE")
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("FECHA NACIMIENTO"),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              dropdown(dia, "DIA"),
                              Expanded(
                                flex: 1,
                                child: Text(" "),
                              ),
                              dropdown(mes, "MES"),
                              Expanded(
                                flex: 1,
                                child: Text(" "),
                              ),
                              dropdown(year, "AÑO"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("CUAL ES TU ANIMAL FAVORITO?"),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black26)),
                            child: Row(
                              children: [
                                animals(false, "LEON"),
                                animals(true, "GATO"),
                                animals(true, "OSO"),
                                animals(true, "AVE"),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "CUENTA",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            height: 1,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 12,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      txtInput("EMAIL", "INGRESE SU EMAIL"),
                                      txtInput("CONTRASEÑA", "INGRESE SU CONTRASEÑA"),
                                      txtInput("VERIFICAR CONTRASEÑA", "INGRESE SU CONTRASEÑA"),
                                      // txtInput("EMAIL", "INGRESE SU EMAIL"),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "CONTACTO",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            height: 1,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 12,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      txtInput("DIRECCIÓN", "INGRESE SU DIRECCIÓN"),
                                      txtInput("CIUDAD", "INGRESE SU CIUDAD"),
                                      Text(
                                        "DEPARTAMENTO",
                                        textAlign: TextAlign.right,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      DropdownButtonFormField<String>(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: "SELECCIONE UN DEPARTAMENTO",
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        ),
                                        items: departamentos.map((String value) {
                                          return new DropdownMenuItem<String>(
                                            value: value,
                                            child: new Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (_) {},
                                      ),
                                      txtInput("TELEFONO", "INGRESE SU TELEFONO"),
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                child: SizedBox(
                                  height: 5,
                                ),
                                decoration: BoxDecoration(color: Colors.green),
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "COMPLETO",
                            style: TextStyle(color: Colors.green),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Column txtInput(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5,
        ),
        Text(
          label,
          textAlign: TextAlign.right,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            // fillColor: Colors.red,
            hintText: hint,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Expanded animals(bool left, String animal) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              border: left == true
                  ? Border(
                      left: BorderSide(width: 2, color: Colors.black26),
                    )
                  : null),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              animal,
              textAlign: TextAlign.center,
            )),
          )),
    ));
  }

  Expanded dropdown(List<String> data, String hint) {
    return Expanded(
        flex: 4,
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: hint,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              items: data.map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            )
          ],
        ));
  }
}
