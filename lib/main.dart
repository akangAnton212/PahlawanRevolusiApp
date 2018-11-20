import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Daftar Pahlawan Revolusi",
    home: new Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Container> daftarSuperHero = new List();

  var karakter = [
    {"nama":"Letnan Jenderal Anumerta S. Parman", "gambar":"parman.jpg"},
    {"nama":"Kapten Peiere Andreas Tendean", "gambar":"tandean.jpg"},
    {"nama":"Letnan Jenderal Anumerta Suprapto", "gambar":"Suprapto.jpg"},
    {"nama":"Jenderal TNI Anumerta Achmad Yani", "gambar":"ahmad_yani.jpg"},
    {"nama":"Letnan Jenderal Anumerta M.T. Haryono", "gambar":"MT_Haryono.jpg"},
    {"nama":"Mayor Jenderal Anumerta Donald Isac Panjaitan", "gambar":"di_panjaitan.jpg"},
    {"nama":"Mayjen TNI Anumerta Sutoyo Siswomiharjo", "gambar":"Sutoyo-Siswomiharjo.jpg"}
  ];

  _buatList() async{
    for(var i = 0; i < karakter.length; i++){
      final karakternya = karakter[i];
      final String gambar = karakternya['gambar'];
      daftarSuperHero.add(
        new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
            child: new Column(
              children: <Widget>[

                new Hero( //ini myetakan kita akan membuat sebuah animasi
                  tag: karakternya['nama'],
                  child: new Material( //proses pembesaran gambar dan di halaman baru
                    child: new InkWell( //untuk melakukan animasi bisa memperbesan gambar atau memperkecil gambar
                      onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Detail(nama: karakternya['nama'], gambar: gambar,)
                      )),
                      child:  new Image.asset("assets/img/$gambar", fit: BoxFit.cover,),
                    ),
                  ),
                ),
                new Padding(padding: EdgeInsets.all(10.0),),
                new Text(karakternya['nama'], style : new TextStyle(fontSize: 18.0))
              ],
            ),
          )
        )
      );
    }
  }

  @override
    void initState() {
      _buatList();
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Pahlawan Revolusi", style: new TextStyle(color: Colors.white),),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        children: daftarSuperHero,
      ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child: new Hero(
              tag: nama,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("assets/img/$gambar"),
                ),
              ),
            )
          ),
          new Head(nama: nama),
          new Keterangan(nama: nama),
        ],
      ),
    );
  }
}

class Head extends StatelessWidget {
  Head({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
         new Flexible(
           child:
            new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                 new Text(nama, style: new TextStyle(fontSize: 20.0),textAlign: TextAlign.center)
              ],
          )
         )
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  Keterangan({this.nama});
  final String nama;
  
  @override
  Widget build(BuildContext context) {
    if(nama=="Letnan Jenderal Anumerta S. Parman"){
      return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text(
              "Lahir:   Wonosobo, Jawa Tengah, 4 Agustus 1918\nAgama:  Islam\nPendidikan Umum Terakhir:  Sekolah Tinggi Kedokteran (tidak tamat)\n"
              "Pendidikan Lain:  Kenpei Kasya Butai\n"
              "Pendidikan Tentara:  Military Police School, Amerika Serikat\n."
              "Pengalaman Pekerjaan: Jawatan Kenpeitai\n"
              "Karier Militer:\n"
              "– Tahun 1964, Asisten I Menteri/Panglima Angkatan Darat (Men/Pangad)\n"
              "– Tahun 1959, Atase Militer RI di London\n"
              "– Staf di Kementerian Pertahanan\n"
              "– Maret tahun 1950, Kepala Staf G\n"
              "– Desember tahun 1949 Kepala Staf Gubernur Militer Jakarta Raya.\n"
              "– Tahun 1945, Kepala Staf Markas Besar Polisi Tentara (PT) di Yogyakarta\n"
              "– Tentara Keamanan Rakyat (TKR)\n"
              "Tanda Penghormatan:  Pahlawan Revolusi\n"
              "Meninggal: Jakarta, 1 Oktober 1965\n"
              "Dimakamkan:  Taman Makam Pahlawan Kalibata, Jakarta\n",
              style: new TextStyle(
                fontSize: 18.0
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      );
    }else if(nama=="Kapten Peiere Andreas Tendean"){
      return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text(
                "Lahir : Jakarta, 21 Februari 1939\n"
                "Agama : protestan\n"
                "Pendidikan Umum :\n"
                "– SD di Magelang\n"
                "– SMP B\n"
                "– SMA B\n"
                "pendidikan Militer : ATEKAD\n"

                "Karier Militer :\n"
                "– ikut dalam operasi Sapta Marga di Sumatera Utara. Beliau dilantik sebagai Letda Czi tahun 1962\n"
                "– Danton Yon Zipur 2/Dam II Bukit Barisan\n"
                "– Pendidikan Intelijen tahun 1963\n"
                "– pernah menyusup ke Malaysia masa Dwikora sewaktu bertugas di DIPIAD\n"
                "– 965 diangkat sebagai Ajudan Menko Hankam/Kasab Jenderal TNI A.H. Nasution ketika pangkatnya masih Letda, kemudian naik menjadi Lettu.\n"
                "Tanda Penghormatan : Pahlawan Revolusi\n"
                "Meninggal: Jakarta, 1 Oktober 1965\n"
                "Dimakamkan : Taman Makam Pahlawan Kalibata, Jakarta\n",
              style: new TextStyle(
                fontSize: 18.0
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      );
    }else if(nama=="Letnan Jenderal Anumerta Suprapto"){
      return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text(
              "Lahir : Purwokerto, 20 Juni 1920\n"
              "Agama : Islam.\n"
              "Pendidikan Umum :\n"
              "– MULO (setingkat SLTP)\n"
              "– AMS (setingkat SMU) Bagian B di Yogyakarta, tamat tahun 1941\n"
              "– Kursus Pusat Latihan Pemuda\n"
              "– Latihan Keibodan, Seinendan, dan Syuisyintai\n"

              "Pendidikan Tentara : Koninklijke Militaire Akademie di Bandung, tapi tidak sampai tamat.\n"
              "Pengalaman Pekerjaan : Kantor Pendidikan Masyarakat\n"

              "Karier Militer :\n"
              "– Deputy II Menteri/ Panglima Angkatan Darat (Men/Pangad), Jakarta\n"
              "– Deputy Kepala Staf Angkatan Darat untuk Wilayah Sumatera, Medan\n"
              "– Staf Kantor Kementerian Pertahanan, Jakarta\n"
              "– Staf Angkatan Darat, Jakarta\n"
              "– Kepala Staf Tentara & Teritorium (T&T) IV/Diponegoro, Semarang\n"
              "– Ajudan Panglima Besar Jenderal Sudirman\n"
              "– Anggota Tentara Keamanan Rakyat di Purwokerto\n"
              "Tanda Penghormatan : Pahlawan Revolusi\n"
              "Meningga l: Jakarta, 1 Oktober 1965\n"
              "Dimakamkan : Taman Makam Pahlawan Kalibata, Jakarta\n",
              style: new TextStyle(
                fontSize: 18.0
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      );
    }else if(nama=="Jenderal TNI Anumerta Achmad Yani"){
      return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text(
              "Lahir : Jenar, Purworejo, 19 Juni 1922\n"
              "Meninggal : Jakarta, 1 Oktober 1965\n"
              "Dimakamkan : Taman Makam Pahlawan Kalibata\n"
              "Agama : Islam\n"
              "Ayah : Sarjo bin Suharyo\n"
              "Ibu : Murtini\n"

              "Pendidikan Formal:\n"
              "– HIS (setingkat S D) Bogor, tamat tahun 1935\n"
              "– MULO (setingkat S M P) kelas B Afd. Bogor, tamat tahun 1938\n"
              "– AMS (setingkat S M U) bagian B Afd. Jakarta, berhenti tahun 1940\n"
              "Pendidikan Militer:\n"
              "– Pendidikan militer pada Dinas Topografi Militer di Malang\n"
              "– Pendidikan Heiho di Magelang\n"
              "– Tentara Pembela Tanah Air (PETA) di Bogor\n"
              "– Command and General Staf College di Fort Leaven Worth, Kansas, USA, tahun 1955\n"
              "– Spesial Warfare Course di Inggris, tahun 1956\n"

              "Jabatan terakhir : Menteri Panglima Angkatan Darat (Men/Pangad) sejak tahun 1962\n"
              "Bintang Kehormatan:\n"
              "– Bintang RI Kelas II\n"
              "– Bintang Sakti\n"
              "– Bintang Gerilya\n"
              "– Bintang Sewindu Kemerdekaan I dan II\n"
              "– Satyalancana Kesetyaan VII, XVI\n"
              "– Satyalancana G:O.M. I dan VI\n"
              "– Satyalancana Sapta Marga (PRRI)\n"
              "– Satyalancana Irian Barat (Trikora)\n"
              "– Ordenon Narodne Armije II Reda Yugoslavia (1958) dan lain-lain\n"
              "Tanda Penghormatan : Pahlawan Revolusi\n",
              style: new TextStyle(
                fontSize: 18.0
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      );
    }else if(nama=="Letnan Jenderal Anumerta M.T. Haryono"){
      return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text(
              "Lahir :  Srabaya, 20 Januari 1924\n"
              "Agama : Islam\n"
              "Pendidikan Umum:\n"
              "– ELS (setingkat Sekolah Dasar)\n"
              "– HBS (setingkat Sekolah Menengah Umum)\n"
              "– Ika Dai Gakko (Sekolah Kedokteran masa pendudukan Jepang)\n"

              "Karier Militer:\n"
              "– Deputy III Menteri/Panglima Angkatan Darat (Men/Pangad)\n"
              "– Direktur Intendans Angkatan Darat\n"
              "– Atase Militer RI di Negara Belanda (tahun 1950)\n"
              "– Sekretaris Delegasi Militer Indonesia pada Konferensi Meja Bundar (KMB)\n"
              "– Sekretaris Delegasi RI dalam perundingan dengan Inggris dan Belanda\n"
              "– Wakil Tetap pada Kementerian Pertahanan Urusan Gencatan Senjata\n"
              "– Sekretaris Dewan Pertahanan Negara\n"
              "– Bekerja di Kantor Penghubung\n"
              "– Masuk Tentara Keamanan Rakyat (TKR)\n"

              "Tanda Penghormatan : Pahlawan Revolusi\n"
              "Meninggal : Jakarta, 1 Oktober 1965\n"
              "Dimakamkan : Taman Makam Pahlawan Kalibata, Jakarta\n",
              style: new TextStyle(
                fontSize: 18.0
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      );
    }else if(nama=="Mayor Jenderal Anumerta Donald Isac Panjaitan"){
      return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text(
              "Lahir : Balige, Tapanuli, 9 Juni 1925\n"
              "Meninggal : Jakarta, 1 Oktober 1965\n"
              "Dimakamkan : Taman Makam Pahlawan Kalibata\n"
              "Agama : Kristen\n"
              "Pendidikan Formal:\n"
              "– Sekolah Dasar\n"
              "– Sekolah Menengah Pertama\n"
              "– Sekolah Menengah Atas\n"
              "Pendidkan Militer : Latihan Gyugun\n"
              "Pendidikan Lain:\n"
              "– Kursus Militer Atase (Milat), tahun 1956\n"
              "– Associated Command and General Staff College, di Amerika Serikat\n"

              "Karier Militer:\n"
              "– Asisten IV Menteri/Panglima Angkatan Darat (Men/Pangad), tahun 1962\n"
              "– Atase Militer RI di Bonn, Jerman Barat\n"
              "– Kepala Staf Operasi Tentara dan Teritorium (T&T) II/Sriwijaya di Palembang\n"
              "– Kepala Staf Operasi Tentara dan Teritorium (T&T) I Bukit Barisan di Medan\n"
              "– Pimpinan Perbekalan Perjuangan Pemerintah Darurat Republik Indonesia (PDRI).\n"
              "– Kepala Staf Umum IV (Supplay) Komandemen Tentara Sumatera\n"
              "– Komandan Pendidikan Divisi IX/Banteng di Bukittinggi, tahun 1948\n"
              "– Komandan Batalyon Tentara Keamanan Rakyat (TKR)\n"
              "– Anggota Gyugun Pekanbaru, Riau\n"

              "Prestasi :\n"
              "– Salah seorang pembentuk Tentara Keamanan Rakyat (TKR)\n"
              "– Membongkar rahasia pengiriman senjata dari Republik Rakyat Cina (RRC) untuk PKI\n"
              "Tanda Kehormatan : Pahlawan Revolusi\n",
              style: new TextStyle(
                fontSize: 18.0
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      );
    }else{
      return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text(
              "Lahir : Kebumen, 23 Agustus 1922\n"
              "Gugur : Lubang Buaya, Jakarta, 1 Oktober 1965\n"

              "Agama : Islam\n"
              "Tanda Penghormatan : Pahlawan Revolusi\n"

              "Pendidikan:\n"
              "– HIS di Semarang\n"
              "– AMS tahun 1942 di Semarang\n"
              "– Balai Pendidikan Pegawai Negeri di Jakarta.\n"

              "Karir:\n"
              "– Pegawai Menengah/III di Kabupaten Purworejo\n"
              "– Kepala Organisasi Resimen II PT (Polisi Tentara) Purworejo dengan pangkat Kapten (1946)\n"
              "– Kepala Staf CPMD Yogyakarta (1948-1949)\n"
              "– Komandan Batalyon I CPM (1950)\n"
              "– Danyon V CPM (1951)\n"
              "– Kepala Staf MBPM (1954)\n"
              "– Pamen diperbantukan SUAD I dengan pangkat Letkol (1955-1956)\n"
              "– Asisten ATMIL di London (1956)\n"
              "– Pendidikan Kursus “C” Seskoad (1960)\n"
              "– 1961 naik pangkat menjadi Kolonel dan menjabat sebagai IRKEHAD dan tahun 1964 naik pangkat menjadi Brigjen\n",
              style: new TextStyle(
                fontSize: 18.0
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      );
    }
  }
}