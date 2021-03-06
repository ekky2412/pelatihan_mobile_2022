import 'package:flutter/material.dart';

import 'profile_page.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _namaLengkap = "";
  String _email = "";
  String _nomorHandphone = "";
  String _alamatRumah = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Hai, ${widget.username}. Selamat Datang di Indomaret",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 24,),
              Text("Lengkapi Biyodata"),
              SizedBox(height: 12,),
              _buildForm(),
              SizedBox(height: 24,),
              _buildSubmitButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _formInput({
    required String hint,
    required String label,
    required Function(String value) setStateInput,
    int maxLine = 1}) {
    return TextFormField(
      enabled: true,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        contentPadding: const EdgeInsets.all(12.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
      onChanged: setStateInput,
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        SizedBox(height: 12,),
        _formInput(
            hint: "Masukkan Nama",
            label: "Nama*",
            setStateInput: (value){
              setState(() {
                _namaLengkap = value;
              });
            }
        ),
        SizedBox(height: 12,),
        _formInput(
            hint: "Masukkan Email",
            label: "Email*",
            setStateInput: (value){
              setState(() {
                _email = value;
              });
            }
        ),
        SizedBox(height: 12,),
        _formInput(
            hint: "Masukkan Alamat",
            label: "Alamat*",
            setStateInput: (value){
              setState(() {
                _alamatRumah = value;
              });
            }
        ),
        SizedBox(height: 12,),
        _formInput(
            hint: "Masukkan Nomor HP",
            label: "no HP*",
            setStateInput: (value){
              setState(() {
                _nomorHandphone = value;
              });
            }
        ),
      ],
    );
  }

  Widget _buildSubmitButton(){
    return Container(
      child: ElevatedButton(
          onPressed: (){
            if(_namaLengkap == "" || _email == "" || _nomorHandphone == ""){
              SnackBar snackBar = SnackBar(content: Text("Data Tidack Boleh Kosong *"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ProfilePage(
                  nama: _namaLengkap,
                  username: widget.username,
                  email: _email,
                  nomor: _nomorHandphone,
                  alamat: _alamatRumah,
                );
              }));
            }
          },
          child: Text("Submit"),
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            textStyle: TextStyle(fontSize: 16),
      ),
      ),
    );
  }
}
