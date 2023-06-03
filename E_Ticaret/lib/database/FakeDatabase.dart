class FakeDatabase {
  static List<Map<String, dynamic>> categories = [
    {
      'cat_id': 1,
      'cat_name': 'Kadın',
      'cat_img_url': 'images/catImages/1.jpg',
      'products': [
        {
          'id': 1,
          'cat_name': 'Kadın',
          'name': 'NIKE \nCOURT BOROUGH',
          'price': 59.99,
          'image_url': 'images/catImages/1.jpg',
          'description':
              'Model Kodu : EN0EN01723YBR \nFermuar Bilgisi : Fermuarsız \nTopuk Tipi : Düz \nDış Materyal : Deri + Suni deri \nMenşei : Endonezya',
        },
        {
          'id': 2,
          'cat_name': 'Kadın',
          'name': 'Puma \nNRGY COMET',
          'price': 41.99,
          'image_url': 'images/catImages/1.jpg',
          'description':
              'İç Materyal: Tekstil\n Dış Materyal: Suni Deri\n Taban: Eva\n Kapama Şekli: Bağcıklı\n \nDetaylar:\nHafif performans, üstün enerji geri dönüşü ve konfor için IGNITE köpük teknolojisi içeren enjeksiyon kalıplı etilen vinil asetat orta taban\nHafif, nefes alabilir dış yüzey',
        },
        {
          'id': 3,
          'cat_name': 'Kadın',
          'name': 'Nike \nAIR MAX',
          'price': 54.99,
          'image_url': 'images/catImages/1.jpg',
          'description':
              '\nModel Kodu: CD6894-117\nModel: NIKE AIR MAX EXCEE (GS)\nRenk: Çok Renkli\nÜrün Kodu: 101515712\nDış Materyal: Suni Deri',
        },
        {
          'id': 4,
          'cat_name': 'Kadın',
          'name': 'Nike \nAIR MAX EXCEE',
          'price': 43.99,
          'image_url': 'images/catImages/1.jpg',
          'description':
              '\nModel Kodu: CD6894-117\nModel: NIKE AIR MAX EXCEE (GS)\nRenk: Çok Renkli\nDış Materyal: Suni Deri',
        },
        {
          'id': 5,
          'cat_name': 'Kadın',
          'name': 'Skechers \nFlex Appeal',
          'price': 48.99,
          'image_url': 'images/catImages/1.jpg',
          'description':
              'nSayada nefes alabilen atletik file kumaş kullanılmıştır.\nFlex-Lite şok emici orta tabana sahiptir.\nSüper yer tutuşu sağlayan esnek kauçuk dış tabana sahiptir.\nMakinada yıkanabilir özelliktedir.\nTopuk yüksekliği 2,54 cm dir.\nSkechers® logo detayına sahiptir.Skechers Air Cooled Memory Foam yastıklı, konforlu ve hava alma özelliği olan iç taban teknolojisi kullanılmıştır.%100 Vegan materyallerle üretilmiştir. \nTasarımında leopar baskılı detaylara sahiptir.',
        },
      ],
    },
    {
      'cat_id': 2,
      'cat_name': 'Erkek',
      'cat_img_url': 'images/catImages/2.jpg',
      'products': [
        {
          'id': 6,
          'cat_name': 'Erkek',
          'name': 'Nike \nAirZoom Pegasus',
          'price': 74.99,
          'image_url': 'images/catImages/2.jpg',
          'description':
              'İç Materyal: Tekstil\n Dış Materyal: Suni Deri\n Taban: Eva\n Kapama Şekli: Bağcıklı\n \nDetaylar:\nHafif performans, üstün enerji geri dönüşü ve konfor için IGNITE köpük teknolojisi içeren enjeksiyon kalıplı etilen vinil asetat orta taban\nHafif, nefes alabilir dış yüzey',
        },
        {
          'id': 7,
          'cat_name': 'Erkek',
          'name': 'Puma \nPwrframe Trail',
          'price': 79.99,
          'image_url': 'images/catImages/2.jpg',
          'description':
              'Puma Pwrframe Op-1 Trail Erkek Günlük Ayakkabı 386378-02 Siyah\nGün boyu rahatlık ve konfor sunan erkek günlük ayakkabı modeli. \nModelinin Özellikleri\n- Dar kalıp.\n- Kauçuk dış taban.\n- Bağcıklı tasarım.',
        },
        {
          'id': 8,
          'cat_name': 'Erkek',
          'name': 'adidas \nStan Smith',
          'price': 69.99,
          'image_url': 'images/catImages/2.jpg',
          'description':
              'Adidas Originals Stan Smith Erkek Günlük Ayakkabı FX5501 Beyaz \nZamansız model Zahmetsiz stil Günlük çok yönlülük \n50 yılı aşkın süredir adidas Stan Smith Shoes bir simge olarak yerini korumaya devam ediyor. \n Bu çift adidasın 2024e kadar yalnızca geri dönüştürülmüş polyester kullanma taahhüdünün \nbir parçası olarak yeni bir tasarım sergiliyor.\nAyrıca klasik stile katkıda bulunan kauçuk atıklardan yapılmış bir dış tabana sahipler. \nFX5501 Modelinin Özellikleri \nDüzenli uyum \nDantel kapatma \nSentetik saya \nSentetik astar \nKauçuk taban',
        },
        {
          'id': 9,
          'cat_name': 'Erkek',
          'name': 'Nike \nAIRMAX BOLT',
          'price': 37.99,
          'image_url': 'images/catImages/2.jpg',
          'description':
              'İç Materyal: Tekstil \nDış Materyal: Suni Deri / Tekstil \nTaban: Kauçuk\nKapama Şekli: Bağcıklı\n\nDetaylar:\nHafif ve dayanıklı stil\nYumuşak köpük yastıklama',
        },
        {
          'id': 10,
          'cat_name': 'Erkek',
          'name': 'Nike \nAIR MONARCH IV',
          'price': 47.99,
          'image_url': 'images/catImages/2.jpg',
          'description':
              'Marka:Nike \nModel Kodu:415445-100 \nModel:AIR MONARCH IV\nCinsiyet:Erkek\nRenk:Gri\nÜrün Kodu:100405733\nDış Materyal:Suni Deri',
        },
        {
          'id': 11,
          'cat_name': 'Erkek',
          'name': 'adidas \nSuperstar',
          'price': 56.99,
          'image_url': 'images/catImages/2.jpg',
          'description':
              'Marka:adidas \nCinsiyet:Erkek\nRenk:Beyaz\nÜrün Kodu:200726664',
        },
      ],
    },
    {
      'cat_id': 3,
      'cat_name': 'Çocuk',
      'cat_img_url': 'images/catImages/3.jpg',
      'products': [
        {
          'id': 12,
          'cat_name': 'Çocuk',
          'name': 'adidas \nHoops 3.0',
          'price': 49.99,
          'image_url': 'images/catImages/3.jpg',
          'description':
              'Adidas Performance Hoops 3.0 K Çocuk Günlük Ayakkabı GZ9672 Beyaz \nGün boyu rahatlık ve konfor sunan çocuk günlük ayakkabı modeli. \n\n\n GZ9672 Modelinin Özellikleri\n - Dar kalıp.\n - Kauçuk dış taban.\n - Bağcıklı tasarım.',
        },
        {
          'id': 13,
          'cat_name': 'Çocuk',
          'name': 'adidas \nBebek Günlük',
          'price': 33.99,
          'image_url': 'images/catImages/3.jpg',
          'description':
              'STAN SMİTH BEBEK AYAKKABISI \nBEBEKLER İÇİN ELASTİK BAĞCIKLI STAN SMİTH AYAKKABI \n Model, perfore 3 bant detayı ve Stan Smith topuk şeridi ile ikonik modeli yansıtır.\n Bu ürün, yüksek performans sunan geri dönüştürülmüş malzeme serisi Primegreen ile üretilmiştir. \n Ayakkabı sayasının %50 si geri dönüştürülmüş malzeme içerir. Model, saf polyester içermez.',
        },
        {
          'id': 14,
          'cat_name': 'Çocuk',
          'name': 'adidas \nÇocuk',
          'price': 29.99,
          'image_url': 'images/catImages/3.jpg',
          'description':
              'Materyal: Tekstil\n Kullanım Alanı: Spor\n Taban Tipi: Düz Taban\n Renk: Pembe\n Persona: Cool & Comfort\n Topuk Tipi: Düz Topuklu',
        },
        {
          'id': 15,
          'cat_name': 'Çocuk',
          'name': 'Puma \nFlyer Flex',
          'price': 35.99,
          'image_url': 'images/catImages/3.jpg',
          'description':
              'Puma Flyer Flex AC Inf - Petrol Rengi Spor Bebek Ayakkabısı\nFlyer Flex AC Inf Dark Night-Lilac Chiff \nRenk: Yeşil',
        },
        {
          'id': 16,
          'cat_name': 'Çocuk',
          'name': 'adidas \nLego Racer',
          'price': 40.99,
          'image_url': 'images/catImages/3.jpg',
          'description':
              'Marka: adidas\n Model Kodu:HQ1319_10.6930\n Cinsiyet:Unisex Çocuk\n Renk:Çok renkli\n Ürün Kodu:200821856',
        },
        {
          'id': 17,
          'cat_name': 'Çocuk',
          'name': 'adidas \nSuperstar 360',
          'price': 52.99,
          'image_url': 'images/catImages/3.jpg',
          'description':
              'Bağlama Şekli: Bağcıklı\n Materyal: Tekstil\n Dış Materyal: Tekstil\n Taban Tipi: Düz Taban\n Kullanım Alanı: Spor\n Renk: Siyah\n Persona: Cool & Comfort\n Topuk Tipi: Düz Topuklu',
        },
      ],
    },
    {
      'cat_id': 4,
      'cat_name': 'Aksesuar',
      'cat_img_url': 'images/catImages/4.jpg',
      'products': [
        {
          'id': 18,
          'cat_name': 'Aksesuar',
          'name': 'Apple Watch \nSeries 7',
          'price': 235.99,
          'image_url': 'images/catImages/4.jpg',
          'description':
              'Apple Watch 7 Gps 41 mm Akıllı Saat Beyaz\nTeknik Özellikler\nBağlantı Özellikleri: GPS/GNSS/BeiDou\nPusula: Hep açık altimetre\nSuya dayanıklı tasarım: 50 metre\nKanda oksijen sensörü: (Kanda Oksijen uygulaması)\nElektriksel kalp sensörü: (EKG uygulaması)\nÜçüncü nesil optik kalp sensörü\nAcil SOS\nİvmeölçer: Düşme algılama özelliğiyle 32 G kuvvetine kadar\n32 GB kapasite\nSeramik ve safir kristal arka yüz\n352 x 430 piksel\n64 bit çift çekirdekli işlemciye sahip S7\n802.11b/g/n 2.4 GHz ve 5 GHz\nBluetooth 5.0\n18 saate kadar',
        },
        {
          'id': 19,
          'cat_name': 'Aksesuar',
          'name': 'Huawei \nWatch Gt3',
          'price': 123.59,
          'image_url': 'images/catImages/4.jpg',
          'description':
              '\n İşletim Tipi: Android\n Garanti Tipi: Huawei Türkiye Garantili\n Renk: Siyah\n Kasa Çapı: 46 mm\n Kasa Renk: Siyah\n Kordon Renk: Siyah\n Ekran Boyut Aralığı: 0 - 1"\n Adımsayar: Var\n GPS: Yok\n Suya/Toza Dayanıklılık: Var\n Titreşim: Var\n Uyku Takibi: Var\n Sesli GörüşmeYok',
        },
        {
          'id': 20,
          'cat_name': 'Aksesuar',
          'name': 'Calvin Klein \nKadın Çanta',
          'price': 99.99,
          'image_url': 'images/catImages/4.jpg',
          'description':
              'Ürün Özellikleri \nRenk: Pembe \nOrtam: Casual/Günlük \nDesen: Logolu \nMateryal: Deri',
        },
        {
          'id': 21,
          'cat_name': 'Aksesuar',
          'name': 'Pierre Cardin \nErkek Cüzdan',
          'price': 22.99,
          'image_url': 'images/catImages/4.jpg',
          'description':
              'Ürün Özellikleri \nRenk: Kahverengi \nKalıp: Standart \nTip: Cüzdan \nCinsiyet: Erkek\nMateryal: Deri',
        },
        {
          'id': 22,
          'cat_name': 'Aksesuar',
          'name': 'MINNIES MOUSE \n Sırt Çantası',
          'price': 17.99,
          'image_url': 'images/catImages/4.jpg',
          'description':
              'Model:BEBE MINNIE SRT 3FX \nCinsiyet:Kız Çocuk \nRenk:Pembe \nÜrün Kodu:101370703 \nDış Materyal:Tekstil',
        },
      ],
    },
  ];
  static List<Map<String, dynamic>> cartItems = [];

  static List<Map<String, dynamic>> getProductsByCategoryId(int categoryId) {
    List<Map<String, dynamic>> products = [];
    for (var category in categories) {
      if (category['cat_id'] == categoryId) {
        products = List<Map<String, dynamic>>.from(category['products']);
        break;
      }
    }
    return products;
  }

  static Map<String, dynamic> getProductById(int id) {
    for (var category in categories) {
      for (var product in category['products']) {
        if (product['id'] == id) {
          return product;
        }
      }
    }
    return {};
  }
}
