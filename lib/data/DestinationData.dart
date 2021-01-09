import 'package:dicoding_flutter_submission/model/DestinationModel.dart';
import 'package:dicoding_flutter_submission/model/RelatedDestination.dart';

var destinations = [
  DestinationModel(
      id: 1,
      name: "Candi Jiwa",
      description:
      "Candi Jiwa merupakan salah satu situs peninggalan sejarah yang ditemukan di kompleks percandian Batujaya. Candi ini menjadi salah satu peninggalan agama Budha di Karawang. Beberapa sumber menyebutkan bahwa bangunan candi sudah ada sejak masa Kerajaan Tarumanegara antara abad ke-2 sampai dengan abad ke-12 Masehi.",
      location: "Batujaya",
      openTime: "10.00 - 18.00",
      cost: "Rp. 5.000",
      openDays: "Setiap Hari",
      image:
      "http://www.disparbud.jabarprov.go.id/wisata/fimages/SitusBatujaya(CandiJiwa).jpg",
      imageUrls: [
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_1024/v1595498609/wioqsawqsrkicozbuoqf.jpg",
        "https://sikidang.com/wp-content/uploads/Candi-Jiwa-Batujaya.jpg",
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1595498524/us9qtnslshzgmfof3wyx.jpg",
        "https://www.jalajahnusae.com/wp-content/uploads/2020/02/Candi-Jiwa.jpg",
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1595498577/lwujcmzaksresxn8rl7o.jpg"
      ],
      relatedDestination: [
        RelatedDestination(
            id: 2,
            name: "Pantai Tanjung Pakis",
            image:
            "https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-pakis.jpg"),
        RelatedDestination(
            id: 3,
            name: "Pantai Sedari",
            image:
            "https://alexanews.id/wp-content/uploads/2019/02/IMG-20190223-WA0164-e1550981398800.jpg"),
        RelatedDestination(
            id: 8,
            name: "Monumen Kebulatan Tekad",
            image:
            "https://www.javatravel.net/wp-content/uploads/2019/07/Monumen-Kebulatan-Tekad-Rengasdengklok.jpg"),
      ]),
  DestinationModel(
      id: 2,
      name: "Pantai Tanjung Pakis",
      description:
      "Pantai Tanjung Pakis adalah sebuah tempat wisata yang terletak di Kabupaten Karawang, Jawa Barat. Lebih tepatnya berada di Desa Tanjung Pakis, atau berjarak sekitar 70 km dari pusat Kabupaten Karawang. Pantai dengan panjang mencapai 7 km dan luas 350 hektare ini meliputi wilayah Bungin, Karangjaya, hingga Pakis I. Untuk berwisata ke Pantai Pakis, pengunjung memang dikenakan tiket masuk, namun harganya cukup terjangkau.",
      location: "Pakis Jaya",
      openTime: "07.00 - 17.00",
      cost: "Rp. 10.000 - Rp.30.000",
      openDays: "Setiap Hari",
      image:
      "https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-pakis.jpg",
      imageUrls: [
        "https://www.pantainesia.com/wp-content/uploads/2018/07/tanjung-pakis-990x558.jpg",
        "https://www.itrip.id/wp-content/uploads/2019/07/Pantai-Tanjung-Pakis.jpeg",
        "https://cdn-2.tstatic.net/wartakotatravel/foto/bank/images/pantai-tanjung-pakis-1.jpg",
      ],
      relatedDestination: [
        RelatedDestination(
          id: 1,
          name: "Candi Jiwa",
          image:
          "http://www.disparbud.jabarprov.go.id/wisata/fimages/SitusBatujaya(CandiJiwa).jpg",
        ),
        RelatedDestination(
            id: 8,
            name: "Monumen Kebulatan Tekad",
            image:
            "https://www.javatravel.net/wp-content/uploads/2019/07/Monumen-Kebulatan-Tekad-Rengasdengklok.jpg"),
        RelatedDestination(
            id: 3,
            name: "Pantai Sedari",
            image:
            "https://alexanews.id/wp-content/uploads/2019/02/IMG-20190223-WA0164-e1550981398800.jpg"),
      ]),
  DestinationModel(
      id: 3,
      name: "Pantai Sedari",
      description:
      "Pantai Sedari adalah sebuah pantai yang berada di Kabupaten Karawang, Jawa Barat, tepatnya ada di Desa Sedari. Letak pantai ini bisa dibilang sangat jauh dari pusat kota, berjarak sekitar 30 km dari pusat Kabupaten Karawang. Salah satu hal yang menarik dari pantai ini yaitu hamparan pasir putih yang terbentang luas di pinggiran pantai ini. Ombak yang tenang dan indah juga memperindah pemandangan pantai satu ini. Pada akhir pekan banyak pengunjung yang datang ke tempat ini untuk sekedar menghabiskan waktu bersama teman – teman atau keluarga.",
      location: "Cibuaya",
      openTime: "07.00 - 17.00",
      cost: "Rp. 15.000",
      openDays: "Setiap Hari",
      image:
      "https://alexanews.id/wp-content/uploads/2019/02/IMG-20190223-WA0164-e1550981398800.jpg",
      imageUrls: [
        "https://masbei.com/wp-content/uploads/2017/12/pantai-sedari-pipitsandrapermatasari.jpg",
      ],
      relatedDestination: [
        RelatedDestination(
          id: 1,
          name: "Candi Jiwa",
          image:
          "http://www.disparbud.jabarprov.go.id/wisata/fimages/SitusBatujaya(CandiJiwa).jpg",
        ),
        RelatedDestination(
            id: 2,
            name: "Pantai Tanjung Pakis",
            image:
            "https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-pakis.jpg"),
        RelatedDestination(
            id: 8,
            name: "Monumen Kebulatan Tekad",
            image:
            "https://www.javatravel.net/wp-content/uploads/2019/07/Monumen-Kebulatan-Tekad-Rengasdengklok.jpg"),
      ]),
  DestinationModel(
      id: 4,
      name: "Curug Cigeuntis",
      description:
      "Curug Cigentis merupakan salah satu destinasi populer yang ada di Karawang. Bisa diperhatikan bahwa curug yang terletak di Kabupaten Karawang ini selalu ramai dikunjungi wisatawan dgari berbagai daerah. Hal itu tak terlepas dari kecantikan alam yang masih sangat alami dan terjaga dengan baik. Di Curug Cigentis terdapat beberapa spot foto yang super keren. Bisa dipastikan hasil jepretan kamera Anda akan sangat ciamik dan instagramable. Berkunjung ke curug Cigentis akan semakin lengkap jika Anda datang bersama keluarga. Pengunjung dapat merasakan langsung keindahan suatu tempat yang menenangkan.",
      location: "Tegalwaru",
      openTime: "07.00 - 17.00",
      cost: "Rp.20.000",
      openDays: "Setiap Hari",
      image:
      "https://www.javatravel.net/wp-content/uploads/2020/05/Curug-Cigentis-Karawang.jpg",
      imageUrls: [
        "https://anandastoon.com/wp-content/uploads/2018/05/DSC_0158-300x450.jpg",
        "https://travelspromo.com/wp-content/uploads/2019/12/3-jembatan-Jhiung-channel-28-640x417.jpg",
        "https://seringjalan.com/wp-content/uploads/2020/02/Curug-Cigentis-Karawang-819x1024.jpg",
        "https://travelspromo.com/wp-content/uploads/2019/12/3-panorama-curug-Kasidi-Kasidi-640x480.jpg",
      ],
      relatedDestination: [
        RelatedDestination(
            id: 5,
            name: "Curug Bandung",
            image:
            "https://www.javatravel.net/wp-content/uploads/2019/07/Curug-Bandung.jpg"),
        RelatedDestination(
            id: 6,
            name: "Wisata Puncak Sempur",
            image:
            "https://correcto.id/content/images/th1_2020063007320458321.jpg"),
      ]),
  DestinationModel(
      id: 5,
      name: "Curug Bandung",
      description:
      "Curug Bandung merupakan salah satu wisata alam yang ada di Kabupaten Karawang. Objek wisata ini berada di kawasan Gunung Sanggabuana sehingga memiliki udara yang cukup sejuk. Curug Bandung menawarkan pemandangan alam yang eksotis dengan air terjun yang meluncur bebas dari ketinggian sekitar 25 meter.",
      location: "Tegalwaru",
      openTime: "07.00 - 17.00",
      cost: "Rp.15.000",
      openDays: "Setiap Hari",
      image:
      "https://www.javatravel.net/wp-content/uploads/2019/07/Curug-Bandung.jpg",
      imageUrls: [
        "https://www.itrip.id/wp-content/uploads/2020/04/Menikmati-Keindahan-Alam-Curug-Bandung.jpg",
        "https://www.itrip.id/wp-content/uploads/2020/04/Curug-Bandung-Karawang.jpg",
        "https://www.itrip.id/wp-content/uploads/2020/04/Fasilitas-yang-Tersedia-di-Curug-Bandung.jpeg"
      ],
      relatedDestination: [
        RelatedDestination(
            id: 4,
            name: "Curug Cigeuntis",
            image:
            "https://www.javatravel.net/wp-content/uploads/2020/05/Curug-Cigentis-Karawang.jpg"),
        RelatedDestination(
            id: 6,
            name: "Wisata Puncak Sempur",
            image:
            "https://correcto.id/content/images/th1_2020063007320458321.jpg"),
      ]),
  DestinationModel(
      id: 6,
      name: "Wisata Puncak Sempur",
      description:
      "Puncak sempur merupakan sebuah bukit dimana kamu bisa melihat landscape atau pemandangan yang indah di Karawang, wana wisata ini terletak di Cintalaksana, Tegalwaru, Loji, Kabupaten Karawang. Untuk kamu yang dari luar daerah karawang, menuju tempat ini bisa mengambil akses keluar tol karawang barat.",
      location: "Tegalwaru",
      openTime: "07.00 - 17.00",
      cost: "Rp.20.000",
      openDays: "Setiap Hari",
      image: "https://correcto.id/content/images/th1_2020063007320458321.jpg",
      imageUrls: [
        "https://rudinazar.com/wp-content/uploads/2020/04/camping-di-puncak-sempur-karawang.jpg",
        "https://news.karawang.center/wp-content/uploads/2020/09/abil-71-min-1536x800.png",
        "https://news.karawang.center/wp-content/uploads/2020/09/abil-72-min.png",
        "https://1.bp.blogspot.com/-fDMaPHDELr0/XdYQsA5hqDI/AAAAAAAAABk/i102rPJ4cZIRvn4CBfHzK3V5EL6hiLiJQCLcBGAsYHQ/s640/wisata-puncak-sempur-karawang-2.jpg"
      ],
      relatedDestination: [
        RelatedDestination(
            id: 5,
            name: "Curug Bandung",
            image:
            "https://www.javatravel.net/wp-content/uploads/2019/07/Curug-Bandung.jpg"),
        RelatedDestination(
            id: 4,
            name: "Curug Cigeuntis",
            image:
            "https://www.javatravel.net/wp-content/uploads/2020/05/Curug-Cigentis-Karawang.jpg"),
      ]),
  DestinationModel(
      id: 7,
      name: "Wisata Hutan Kertas",
      description:
      "Hutan Kertas Karawang yang terletak di Kampung Gintung, Desa Kutamekar Kecamatan Ciampel, kini semakin diminati oleh wisatawan, baik dari dalam maupun luar Karawang. Hutan Kertas ini buka setiap hari mulai dari jam 08.00 WIB sampai jam 11.00 WIB. Disana kita akan disuguhkan banyaknya pohon Kalitus atau bisa juga disebut dengan nama Eukaliptus. Tanaman ini biasanya dipakai sebagai bahan baku pembuatan kertas, maka dari itu dinamakanlah Hutan Kertas.",
      location: "Ciampel",
      openTime: "08.00 - 23.00",
      cost: "Rp. 15.000",
      openDays: "Setiap Hari",
      image:
      "https://rimbakita.com/wp-content/uploads/2019/10/hutan-kertas-karawang.jpg",
      imageUrls: [
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1570546886/gcf2eetipvanfhzefked.jpg",
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1570565889/atxqvrho7fz9f0ikrhwx.jpg",
        "https://www.sinarmas.com/blog/wp-content/uploads/2020/01/hutan-kertas-6.jpg",
        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1570566035/pm1zqihjzmlbr4jfqi7e.jpg",
      ],
      relatedDestination: []),
  DestinationModel(
      id: 8,
      name: "Monumen Kebulatan Tekad",
      description:
      "Lokasi monumen atau tugu ini berada sekitar 20 kilometer dari Kota Karawang, untuk kamu yang dari arah kota Karawang bisa mengunjungi monumen ini dengan mengambil arah menuju terminal tanjung pura, setelahnya mengambil arah menuju rengasdengklok sejauh 15 kilometer, kamu akan menemukan arah menuju tempat ini.",
      location: "Rengasdengklok",
      openTime: "08.00 - 16.00",
      cost: "Rp. 5.000",
      openDays: "Setiap Hari",
      image:
      "https://www.javatravel.net/wp-content/uploads/2019/07/Monumen-Kebulatan-Tekad-Rengasdengklok.jpg",
      imageUrls: [
        "https://inforengasdengklok.com/wp-content/uploads/2019/11/tugu-proklamasi.jpg",
        "https://inforengasdengklok.com/wp-content/uploads/2019/11/kebulatan-tekad.jpg",
        "https://rudinazar.com/wp-content/uploads/2020/04/Monumen-Kebulatan-Tekad.jpg"
      ],
      relatedDestination: [
        RelatedDestination(
          id: 1,
          name: "Candi Jiwa",
          image:
          "http://www.disparbud.jabarprov.go.id/wisata/fimages/SitusBatujaya(CandiJiwa).jpg",
        ),
        RelatedDestination(
            id: 2,
            name: "Pantai Tanjung Pakis",
            image:
            "https://cdn-2.tstatic.net/travel/foto/bank/images/pantai-tanjung-pakis.jpg"),
        RelatedDestination(
            id: 3,
            name: "Pantai Sedari",
            image:
            "https://alexanews.id/wp-content/uploads/2019/02/IMG-20190223-WA0164-e1550981398800.jpg"),
      ]),
  DestinationModel(
      id: 9,
      name: "Wisata Pohon Miring",
      description:
      "Pohon miring Pancawati merupakan destinasi yang berbeda dari tempat wisata lainnya. Wisata alam ini terkenal akan keunikan yang di miliki. Konon dahulu area lokasi wisata hanyalah jalan biasa yang banyak di akses oleh masyarakat. Namun entah siapa yang memulai, beberapa tabun belakangan pohon miring Pancawati begitu viral di laman media sosial. Bagi Anda yang berlibur santai di lokasi wisata yang sangat alami bisa memutuskan datang ke pohon miring Pancawati. Penamaan lokasi yang demikian terkait dengan lokasi wisata yang memang terletak di  Karawang. Anda dapat menghabiskan waktu sembari menghirup udara segar di area lokasi mengingat pohon yang ada cukup rindang.",
      location: "Pancawati",
      openTime: "08.00 - 17.00",
      cost: "Rp. 5000",
      openDays: "Setiap Hari",
      image:
      "https://pariwisataku.com/wp-content/uploads/2019/08/pohonmiringpancawati-wildrism-1024x732.jpg",
      imageUrls: [
        "https://www.itrip.id/wp-content/uploads/2020/04/Pohon-Miring-Pancawati-Wisata-Alam-Favorit-di-Karawang.jpg",
        "https://www.itrip.id/wp-content/uploads/2020/04/Fasilitas-yang-Tersedia-di-Pohon-Miring-Pancawati.jpg",
        "https://www.javatravel.net/wp-content/uploads/2020/05/Pohon-Miring-Pancawati.jpg",
      ],
      relatedDestination: []),
];
