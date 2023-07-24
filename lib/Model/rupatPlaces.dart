

class RupatPlaces {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;


  RupatPlaces({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });

}

class RupatPenginapan {
  String name;
  String location;
  String description;
  String openDays;
  String noHP;
  String imageAsset;
  List<String> imageUrls;


  RupatPenginapan({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.noHP,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var RupatPlacesList = [
  RupatPlaces(
    name: 'Pulau Beting Aceh',
    location: 'Titi Akar, Kec. Rupat Utara, Kabupaten Bengkalis, Riau',
    description: 'Pulau Beting Aceh ini merupakan salah satu pulau terluar di Indonesia. Posisinya berada di hamparan Selat Malaka. Pulau nan cantik ini kerap dikunjungi terutama ketika libur akhir pekan.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 20:00',
    ticketPrice: 'Rp 50.000',
    imageAsset: 'images/Pulau Beting Aceh/images1.png',
    imageUrls: [
      'images/Pulau Beting Aceh/images2.png',
      'images/Pulau Beting Aceh/images3.png',
      'images/Pulau Beting Aceh/images4.png'
    ],
  ),
  RupatPlaces(
    name: 'Pantai Ketapang',
    location: 'Sei Cingam, Kec. Rupat, Kabupaten Bengkalis, Riau',
    description: 'Pantai Ketapang merupakan Destinasi Wisata di Provinsi Riau. Lokasinya di Pulau Rupat, Kabupaten Bengkalis. Setelah sampai di Pulau Rupat, kita akan menempuh perjalanan dari Tanjung Kapal ke Sungai Cingam, dengan jarak tempuh kurang lebih 1-2 jam an perjalanan.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 20:00',
    ticketPrice: 'Rp 10.000',
    imageAsset: 'images/Pantai Ketapang/images1.png',
    imageUrls: [
      'images/Pantai Ketapang/images1.png',
      'images/Pantai Ketapang/images2.png',
      'images/Pantai Ketapang/images3.png'
    ],
  ),
  RupatPlaces(
    name: 'Pantai Tanjung Lapin',
    location: 'Jl. Tj. Lapin, Tj. Punak, Kec. Rupat Utara, Kabupaten Bengkalis, Riau',
    description: 'Pantai Lapin, Ikon Rupat yang Memanjang Hingga 17 Km, Kecamatan Rupat Utara memiliki potensi wisata air dengan Pantai Pasir yang sangat indah. Salah satunya Pantai Lapin yang menjadi Objek pengembangan wisata Pantai Kabupaten Bengkalis.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 20:00',
    ticketPrice: 'Rp 10.000',
    imageAsset: 'images/Pantai Tanjung Lapin/images1.png',
    imageUrls: [
      'images/Pantai Tanjung Lapin/images2.png',
      'images/Pantai Tanjung Lapin/images3.png',
      'images/Pantai Tanjung Lapin/images4.png'
    ],
  ),
  RupatPlaces(
    name: 'Pantai Tanjung Medang',
    location: 'Teluk Rhu, Rupat Utara, Tlk. Rhu, Bengkalis, Kabupaten Bengkalis, Riau',
    description: 'Pantai ini terkenal dengan keindahan pantainya. Suasana alamnya sangat alami. Pantai ini memiliki pasir berwarna putih yang indah dengan panjang 17 km dan lebar 300-500 meter pada saat air laut surut. Pantai Rupat Utara adalah pantai pasir putih terpanjang di Indonesia.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 20:00',
    ticketPrice: 'Rp 10.000',
    imageAsset: 'images/Pantai Tanjung Medang/images1.png',
    imageUrls: [
      'images/Pantai Tanjung Medang/images2.png',
      'images/Pantai Tanjung Medang/images3.png',
      'images/Pantai Tanjung Medang/images4.png'
    ],
  ),
  RupatPlaces(
    name: 'Pantai Teluk Rhu',
    location: 'Tlk. Rhu, Kec. Rupat Utara, Kabupaten Bengkalis, Riau',
    description: "Di Pantai Pesona Teluk Rhu Rupat Utara, Jika Anda berkunjung pada saat cuaca sedang bersahabat ombak di pantainya bergerak tenang dan air lautnya bersih, sehingga sangat bisa jika pengunjung untuk sekedar berenang, berjemur, bersantai bersama keluarga, memancing, atau berolahraga.",
    openDays: 'Open Everyday',
    openTime: '08:00 - 20:00',
    ticketPrice: 'Rp 10.000',
    imageAsset: 'images/Pantai Teluk Rhu/images1.png',
    imageUrls: [
      'images/Pantai Teluk Rhu/images2.png',
      'images/Pantai Teluk Rhu/images3.png',
      'images/Pantai Teluk Rhu/images4.png'
    ],
  ),
];

var RupatPenginapanList = [
  RupatPenginapan(
    name: 'Penginapan Shafa Resort',
    location: 'Jl Ahmad Yani, Tlk. Rhu, Kec. Rupat Utara, Kabupaten Bengkalis, Riau',
    description: 'Hotel dan penginapan serta wisma yang Rekomendit buat di kunjungi ramah untuk liburan keluarga Dengan Menikmati Nuansa pantai yg indah, sunrise selalu menemani di pagi hari',
    openDays: 'Open Everyday',
    noHP: '082284144567',
    imageAsset: 'images/Shafa Resort/images1.png',
    imageUrls: [
      'images/Shafa Resort/images2.png',
      'images/Shafa Resort/images3.png',
      'images/Shafa Resort/images4.png',
      'images/Shafa Resort/images5.png',
      'images/Shafa Resort/images6.png',
      'images/Shafa Resort/images7.png',
      'images/Shafa Resort/images8.png',
      'images/Shafa Resort/images9.png',
      'images/Shafa Resort/images10.png',
    ],
  ),
  RupatPenginapan(
    name: 'Villa Zapin Rupat',
    location: 'Jl. Jenderal Sudirman, Tj. Punak, Kec. Rupat Utara, Kabupaten Bengkalis, Riau',
    description: 'Penginapan dengan konsep villa & glamping  pertama di Riau terletak di Pulau Rupat, Bengkalis, Riau Halaman parkirnya luas dan halaman belakang villa juga cocok di jadikan tempat untuk kamu yang pengen ngadain acara gathering disini atau sekedar bbq-an sambil ditemani kerlap kerlip lampu, tiupan angin pantai',
    openDays: 'Open Everyday',
    noHP: '0887‑4253‑1309',
    imageAsset: 'images/villazapin/images1.png',
    imageUrls: [
      'images/villazapin/images2.png',
      'images/villazapin/images3.png',
      'images/villazapin/images4.png',
      'images/villazapin/images5.png',
      'images/villazapin/images6.png',
      'images/villazapin/images7.png',
    ],
  ),
  RupatPenginapan(
    name: 'Penginapan Kejora Pantai',
    location: 'Tlk. Rhu, Kec. Rupat Utara, Kabupaten Bengkalis, Riau',
    description: 'Penginapan KEJORA PANTAI,buka setiap hari selama 24 jam untuk kamu yang ingin menghabiskan liburan di pulau RUPAT tercinta. Checkout sekarang agar bisa kebagian kamar yang kamu inginkan.',
    openDays: 'Open Everyday',
    noHP: '62852-6305-4445',
    imageAsset: 'images/Kejora Pantai/images1.png',
    imageUrls: [
      'images/Kejora Pantai/images2.png',
      'images/Kejora Pantai/images3.png',
      'images/Kejora Pantai/images4.png',
      'images/Kejora Pantai/images5.png',
      'images/Kejora Pantai/images6.png',
      'images/Kejora Pantai/images8.png',
    ],
  ),
  RupatPenginapan(
    name: 'Hotel Pesona Cindy Rupat',
    location: 'Unnamed Road, Tlk. Rhu, Kec. Rupat Utara, Kabupaten Bengkalis, Riau',
    description: 'Paling enak itu kesini sama keluarga ramai-ramai, atau sama kengkawan, atau outbond ramai-ramai sama kawan kantor juga bisa.',
    openDays: 'Open Everyday',
    noHP: '0853-5612-2331',
    imageAsset: 'images/Hotel Pesona Cindy Rupat/images1.png',
    imageUrls: [
      'images/Hotel Pesona Cindy Rupat/images2.png',
      'images/Hotel Pesona Cindy Rupat/images3.png',
      'images/Hotel Pesona Cindy Rupat/images4.png',
      'images/Hotel Pesona Cindy Rupat/images6.png',
    ],
  ),
];