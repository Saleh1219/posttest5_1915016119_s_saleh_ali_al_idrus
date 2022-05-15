import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';


class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 35, 120, 129),
      body: ListView(
        children: [
          Container(
            width: lebar,
            height: tinggi,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("money.jpg"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    // Container(
                    //   width: 20,
                    //   height: 20,
                    //   margin: EdgeInsets.only(top: 10, left: 20),
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage("back.png"),
                    //     ),
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.only(left:20, top:20),
                      child:
                        Text('KeuanganKu',
                          style: GoogleFonts.oswald(
                            textStyle : const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:333),
                      child:
                        Text('"Buat & pantau laporan keuanganmu sendiri"',
                          style: GoogleFonts.oswald(
                            textStyle : const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return HomePage();
                            })
                            );
                          });
                        },
                        child: Container(
                          width: 180,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 35, 120, 129),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Mulai",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 120, 129),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 35, 120, 129),
        title: Center(child: Text("Keuanganku")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 67, 145, 155),
              ),
              child: Text("KeuanganKu"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Form"),
              tileColor: Colors.grey,
              onTap: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (_){
                   return formIsi();
                 }),
                 );
              },
            ),
          ],
        ),
      ),

      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Container(
                margin: EdgeInsets.only(top: 50,left: 20),
                child :
                Text("Saldo",
                style: TextStyle(
                  fontSize: 13,
                 fontWeight: FontWeight.normal,
                  color: Colors.white,  
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child :
                Text("Rp0",
                style: TextStyle(
                  fontSize: 20,
                 fontWeight: FontWeight.normal,
                  color: Colors.white,  
                  ),
                ),
              ),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 140,
                      height: 70,
                      margin: EdgeInsets.only(left: 20, top:30,),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 67, 145, 155),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15,),
                            child:
                              Text('Pemasukkan bulan ini',
                              style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5,),
                            child:
                              Text('Rp.0',
                              style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 70,
                      margin: EdgeInsets.only(right: 20, top:30),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 67, 145, 155),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15,),
                            child:
                              Text('Pengeluaran bulan ini',
                              style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5,),
                            child:
                              Text('Rp.0',
                              style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        ],

                      ),
                    ),
                    
                  ],
                ),
              Container(
                    width: lebar,
                    height: 300,
                    margin: EdgeInsets.only( top:30,),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 67, 145, 155),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:10,top:5),
                              child:
                                Text('Transaksi terakhir',
                                style: GoogleFonts.oswald(
                                  textStyle : const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right:10,top:5),
                              child:
                                Text('lihat lainnya',
                                style: GoogleFonts.oswald(
                                  textStyle : const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.only(top: 80,),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage("money-bag.png"),
                            ),
                          ),
                        ),
                        Container(
                              margin: EdgeInsets.only(top:5),
                              child:
                                Text('anda belum memasukkan data',
                                style: GoogleFonts.oswald(
                                  textStyle : const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                      ],
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                        width: 270,
                        height: 50,
                        margin: EdgeInsets.only( top:30,),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 67, 145, 155),
                          borderRadius: BorderRadius.circular(25),
                          
                        ),
                        child:Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (_){
                                      return formIsi();
                                    })
                                    );
                                  });
                                },
                                child: Container(
                                  
                                  margin: EdgeInsets.only( left: 50,right: 10),
                                  child :Text('Tambahkan pemasukkan dan pengeluaran',
                                    style: GoogleFonts.oswald(
                                      textStyle : const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ),
                ],
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}

class formIsi extends StatefulWidget {
  const formIsi({ Key? key }) : super(key: key);

  @override
  State<formIsi> createState() => _formIsiState();
}

class _formIsiState extends State<formIsi> {
  Future<void> showInformationDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 67, 145, 155),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Data anda berhasil dimasukkan.")),
                // SizedBox(height: 20),
              ],
            ),
            actions: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  // margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 35, 120, 129),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Selesai",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        });
     }

  TextEditingController ControllerNominalPemasukan = TextEditingController();
  TextEditingController controllerDeskripsi = TextEditingController();

  String Deskripsi = "";
  String NominalPemasukan = "";
  List<String> MetodePembayaran = ['Tunai','Kredit/Debit','Transfer Bank','E-Waller'];
  String MPgroup ="";
  

  bool gaji = false;
  bool tabungan = false;
  bool Utang = false;
  bool Penjualan = false;

  @override
  void dispose() {
    ControllerNominalPemasukan.dispose();
    controllerDeskripsi.dispose();
    super.dispose();
  }
  
  void hapusValue(){
    ControllerNominalPemasukan.text = "";
    controllerDeskripsi.text = "";
  }

  @override
  Widget build(BuildContext context) {    
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 120, 129),
      body: ListView(
        children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Container(
                  width: lebar,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 67, 145, 155),
                  ),
                  child: Column(
                    
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(top: 10, left: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("back.png"),
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top:8),
                              child:
                                Text('Transaksi Baru',
                                style: GoogleFonts.oswald(
                                  textStyle : const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right:20,top:8),
                              child:
                                Text('Saleh',
                                style: GoogleFonts.oswald(
                                  textStyle : const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 155,
                            height: 40,
                            margin: EdgeInsets.only(left: 20, top:20,),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 35, 120, 129),
                              borderRadius: BorderRadius.circular(25),
                              
                            ),
                            child:  Text('Pemasukkan',
                              style: GoogleFonts.oswald(
                                textStyle : const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            ),
                          ),
                          Container(
                            width: 155,
                            height: 40,
                            margin: EdgeInsets.only(right: 20, top:20,),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 35, 120, 129),
                              borderRadius: BorderRadius.circular(25),
                              
                            ),
                            child:  Text('pengeluaran',
                              style: GoogleFonts.oswald(
                                textStyle : const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:10),
                      child:
                        Text('Informasi Transaksi',
                        style: GoogleFonts.oswald(
                            textStyle : const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                  
                  child:Column(
                    
                    children: [
                      TextField(
                        controller: ControllerNominalPemasukan ,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        style: new TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 67, 145, 155),
                          
                          hintText: 'nominal transaksi',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 67, 145, 155),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height : 20),
                      TextFormField(
                        controller: controllerDeskripsi,
                        maxLines: 3,
                        style: new TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 67, 145, 155),
                          hintText: 'Deskripsi',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 67, 145, 155),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height : 20),
                      Container(
                        margin: EdgeInsets.only(top:10),
                        child:
                          Text('Metode Pembayaran',
                          style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            for(var item in MetodePembayaran)
                            Row(
                              children: [
                                Radio(
                                  value: item, 
                                  groupValue: MPgroup, 
                                  onChanged: (newValue){
                                    setState(() {
                                      MPgroup = newValue.toString();
                                    });
                                    
                                  },
                                ),
                                Text(item,
                                  style :GoogleFonts.montserrat(
                                      textStyle : const TextStyle(
                                        fontSize: 12,
                                        
                                        color: Color.fromARGB(255, 255, 255, 255),
                                     ),
                                    ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height : 20),
                      Column(
                        
                        children: [
                          Container(
                        
                        child:
                          Text('Metode Transaksi',
                          style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                      ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 10,bottom: 20),
                            child: Column(
                              
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      
                                      value: gaji, onChanged: (bool? value){
                                        setState(() {
                                          gaji= value!;
                                        });
                                      },
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 45),
                                      child: Text("Gaji",
                                        style :GoogleFonts.montserrat(
                                            textStyle : const TextStyle(
                                              fontSize: 12,
                                              
                                              color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: tabungan, onChanged: (bool? value){
                                        setState(() {
                                          tabungan= value!;
                                        });
                                      },
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 45),
                                      child: Text("Tabungan",
                                        style :GoogleFonts.montserrat(
                                            textStyle : const TextStyle(
                                              fontSize: 12,
                                              
                                              color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: Utang, onChanged: (bool? value){
                                        setState(() {
                                          Utang= value!;
                                        });
                                      },
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 45),
                                      child: Text("Utang",
                                        style :GoogleFonts.montserrat(
                                            textStyle : const TextStyle(
                                              fontSize: 12,
                                              
                                              color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: Penjualan, onChanged: (bool? value){
                                        setState(() {
                                          Penjualan= value!;
                                        });
                                      },
                                    ),
                                    Text("Penjualan",
                                      style :GoogleFonts.montserrat(
                                          textStyle : const TextStyle(
                                            fontSize: 12,
                                            
                                            color: Color.fromARGB(255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                
                              ],  
                            ),
                          ),
                          
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () async{
                          await showInformationDialog(context);
                          setState(() {
                            NominalPemasukan = ControllerNominalPemasukan.text ;
                            Deskripsi = controllerDeskripsi.text;
                            hapusValue();
                          });
                        },
                        child: Text("submit"),
                      ),
                      Text('nominal pemasukan : $NominalPemasukan'),
                      Text('Deskripsi : $Deskripsi'),
                      Text('Metode Pembayaran: $MPgroup'),
                      Text('kategori Transaksi: ${gaji ? "gaji": ""} ${tabungan ? "tabungan": ""} ${Utang ? "utang": ""} ${Penjualan ? "penjualan": ""}'),
                    ],
                  ),
                  
                ),
              ],
            ),
        ],
      ),
    );
  }
}