import 'package:palmeirasapp/src/models/item_model.dart';

ItemModel cla11 = ItemModel(
  description:
      'Cláudio Luiz Rodrigues Parisi Leonel #11, mais conhecido como Claudinho, é um futebolista brasileiro com cidadania russa que atua como meio-campista. Atualmente joga pelo Zenit. joga muito estorou no braga',
  imgUrl: 'assets/images/claudinho.png',
  itemName: 'Claudinho',
  price: 20.00,
  position: 'MEI/SA/PD',
);

ItemModel kdb17 = ItemModel(
  description:
      'Kevin De Bruyne #17 é um futebolista belga que atua como meio-campista. Atualmente joga pelo Manchester City e pela Seleção Belga. Seu estilo de jogo frequentemente levou a mídia, treinadores e colegas a classifica-lo entre os melhores jogadores do mundo, e costuma ser descrito como jogador completo.',
  imgUrl: 'assets/images/kevin-de-bruyne.png',
  itemName: 'Kevin De Bruyne',
  price: 70.00,
  position: 'MC/MEI',
);

ItemModel blg05 = ItemModel(
  description:
      'Jude Victor William Bellingham #05 é um futebolista inglês que atua como meio-campista. Atualmente joga no Real Madrid. É iluminado',
  imgUrl: 'assets/images/bellingham.png',
  itemName: 'Jude Bellingham',
  price: 150.00,
  position: 'MC/VOL/MEI',
);

ItemModel ca08 = ItemModel(
  description:
      'Caio Alexandre Souza e Silva #08, mais conhecido como Caio Alexandre, é um futebolista brasileiro que atua como meio-campista do Fortaleza, emprestado pelo Vancouver Whitecaps FC.',
  imgUrl: 'assets/images/caio-alexandre.png',
  itemName: 'Caio Alexandre',
  price: 2.50,
  position: 'MC',
);

ItemModel pb29 = ItemModel(
  description:
      'Pablo Gonçalves Maia Fortunato #29, mais conhecido apenas como Pablo Maia, é um futebolista brasileiro que atua como volante. Atualmente joga pelo São Paulo.',
  imgUrl: 'assets/images/pablo-maia.png',
  itemName: 'Pablo Maia',
  price: 7.00,
  position: 'MC',
);

ItemModel km07 = ItemModel(
  description:
      'Kylian Mbappé Lottin #07 é um futebolista francês que atua como atacante. Atualmente joga pelo Paris Saint-Germain e pela Seleção Francesa. Considerado um dos melhores jogadores da última década, ele é conhecido pelo seus dribles e sua velocidade explosiva.',
  imgUrl: 'assets/images/kylian-mbappe.png',
  itemName: 'Kylian Mbappé',
  price: 180.00,
  position: 'ATA/PE',
);

ItemModel eh09 = ItemModel(
  description:
      'Erling Braut Haaland #09 é um futebolista norueguês nascido no Reino Unido que atua como centroavante. Atualmente joga pelo Manchester City e pela Seleção Norueguesa. É considerado um dos melhores atacantes do futebol mundial.',
  imgUrl: 'assets/images/haaland.webp',
  itemName: 'Erling Haaland',
  price: 180.00,
  position: 'ATA',
);

ItemModel dey16 = ItemModel(
  description:
      'Deyverson Brum Silva Acosta #16 é um futebolista brasileiro que atua como centroavante. Já fez história no verdão, popularmente conhecido como papai do flamengo, atualmente joga no Cuiabá.',
  imgUrl: 'assets/images/deyverson.png',
  itemName: 'Deyverson',
  price: 1.00,
  position: 'ATA',
);

ItemModel cou01 = ItemModel(
  description:
      'Thibaut Nicolas Marc Courtois #01 é um futebolista belga que atua como goleiro. Fez uma ótima campanha campeã na champions league 21/22, atualmente joga no Real Madrid e pela Seleção Belga.',
  imgUrl: 'assets/images/courtois.png',
  itemName: 'Thibaut Courtois',
  price: 45.00,
  position: 'GOL',
);

ItemModel ona26 = ItemModel(
  description:
      'André Onana #24 é um futebolista camaronês que atua como goleiro. Atualmente joga pelo Manchester United e pela Seleção Camaronesa. Considerado um dos piores goleiros de sua geração.',
  imgUrl: 'assets/images/andre-onana.png',
  itemName: 'André Onana',
  price: 40.00,
  position: 'GOL',
);

List<ItemModel> items = [
  blg05,
  ca08,
  cla11,
  cou01,
  dey16,
  eh09,
  kdb17,
  km07,
  ona26,
  pb29,
];

List<String> categories = [
  'Goleiros',
  'Zagueiros',
  'Laterais',
  'Meio campo',
  'Atacantes',
];
