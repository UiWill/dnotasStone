import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '5fvzmzhh': {
      'pt': 'Vendas Prod        ',
      'en': '',
    },
    '54pb5kw1': {
      'pt': 'notas emitidas',
      'en': '',
    },
    'crcdbrj1': {
      'pt': '  Vendas ',
      'en': '',
    },
    'cuy3io1o': {
      'pt': 'casa',
      'en': '',
    },
  },
  // escolherOMetodo
  {
    'kglb97kr': {
      'pt': 'MODALIDADE',
      'en': '',
    },
    '2iwdebj1': {
      'pt': 'Valor:',
      'en': '',
    },
    '6af0lv0r': {
      'pt': 'R\$',
      'en': '',
    },
    'mk9ezaht': {
      'pt': '1 - Débito        ⮕',
      'en': '',
    },
    '88zc9qno': {
      'pt': '2- Crédito        ⮕',
      'en': '',
    },
    'wt5uf27s': {
      'pt': '3 - Voucher      ⮕',
      'en': '',
    },
    'd98u9ldk': {
      'pt': '4 -  PIX             ⮕',
      'en': '',
    },
    '61elv3iz': {
      'pt': '5 - QR Code     ⮕',
      'en': '',
    },
    '5rismc86': {
      'pt': 'Home',
      'en': '',
    },
  },
  // verBebidas
  {
    '8qrpq25v': {
      'pt': 'BEBIDAS',
      'en': '',
    },
    'hcl7da9u': {
      'pt': 'R\$',
      'en': '',
    },
    '2xlgklzv': {
      'pt': 'quant:',
      'en': '',
    },
    'b6n3b8ze': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Faleconosco
  {
    'xx7m3pmb': {
      'pt': 'Informação pessoal',
      'en': '',
    },
    'w6uggvzi': {
      'pt': 'Nome completo',
      'en': '',
    },
    'oto52b4w': {
      'pt': 'Assunto',
      'en': '',
    },
    'dmx25ere': {
      'pt': 'Mande sua menssagem aqui!',
      'en': '',
    },
    'bzk6hpn3': {
      'pt': '...',
      'en': '',
    },
    'boiv6yx4': {
      'pt': 'Enviar menssagem',
      'en': '',
    },
    'd0cyu33u': {
      'pt': 'Please enter the patients full name.',
      'en': '',
    },
    'f1nw717i': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'shc5nlxx': {
      'pt': 'Please enter an age for the patient.',
      'en': '',
    },
    'uk99v932': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'yckcty39': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'gte0tvh6': {
      'pt': 'Please enter the date of birth of the patient.',
      'en': '',
    },
    '73rarklr': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'a8n0xkg2': {
      'pt': 'Field is required',
      'en': '',
    },
    '6zut2cq6': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mebed7h7': {
      'pt': 'Fale Conosco',
      'en': '',
    },
    'jsb9q359': {
      'pt': 'Olá relate sua duvida, problema ou pergunta',
      'en': '',
    },
    '1qstpj7k': {
      'pt': 'Home',
      'en': '',
    },
  },
  // aVistasouParcelado
  {
    'j0q9o590': {
      'pt': 'MODALIDADE',
      'en': '',
    },
    'pqzq6foj': {
      'pt': 'Valor:',
      'en': '',
    },
    '3lk15rls': {
      'pt': 'R\$',
      'en': '',
    },
    'kd8x3fxc': {
      'pt': '1 - À vista        ⮕',
      'en': '',
    },
    '9cdigsf1': {
      'pt': '2- Parcelado         ⮕',
      'en': '',
    },
    'nf6fb1mi': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Parcelamento
  {
    'dhg8xey3': {
      'pt': 'MODALIDADE',
      'en': '',
    },
    '4tiqike7': {
      'pt': 'Valor:',
      'en': '',
    },
    '2ct2x5uf': {
      'pt': 'R\$',
      'en': '',
    },
    'xhuxk4qv': {
      'pt': '2x         Sem juros                                           ⮕',
      'en': '',
    },
    '65svyas3': {
      'pt': '3x         Sem juros                                           ⮕',
      'en': '',
    },
    '2rywdsmv': {
      'pt': '4x         Sem juros                                           ⮕',
      'en': '',
    },
    'wyfl3dja': {
      'pt': '5x         Sem juros                                           ⮕',
      'en': '',
    },
    '8p2zjdgr': {
      'pt': '6x         Sem juros                                           ⮕',
      'en': '',
    },
    'h7z2mkte': {
      'pt': '7x         Sem juros                                           ⮕',
      'en': '',
    },
    'x37owfor': {
      'pt': '8x         Sem juros                                           ⮕',
      'en': '',
    },
    'jpe8vram': {
      'pt': '9x         Sem juros                                           ⮕',
      'en': '',
    },
    'ymp11q0r': {
      'pt': '10x        Sem juros                                           ⮕',
      'en': '',
    },
    '04xfsljx': {
      'pt': '11x        Sem juros                                           ⮕',
      'en': '',
    },
    '33o4xo99': {
      'pt': '12x        Sem juros                                           ⮕',
      'en': '',
    },
    '4nfpe5cq': {
      'pt': 'Home',
      'en': '',
    },
  },
  // VerVendas
  {
    'a79bb3u7': {
      'pt': 'Notas',
      'en': '',
    },
    'ciuxt1m8': {
      'pt': 'Defina dia das vendas:',
      'en': '',
    },
    'd24jm97t': {
      'pt': 'R\$',
      'en': '',
    },
    '95ir3ppq': {
      'pt': 'Home',
      'en': '',
    },
  },
  // variaveiProdutos
  {
    'zwf3hz5f': {
      'pt': 'Selecionar produtos',
      'en': '',
    },
    'spnqy0kz': {
      'pt': 'Bebidas',
      'en': '',
    },
    'ieab6wlh': {
      'pt': 'Comidas',
      'en': '',
    },
    'l92p46l3': {
      'pt': 'Sobremesas',
      'en': '',
    },
    'sgs0rpw3': {
      'pt': 'Comanda online ',
      'en': '',
    },
    'xkv7vwn3': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Sobremesa
  {
    'jmyeofob': {
      'pt': 'Sobremesas',
      'en': '',
    },
    'ttq64p3g': {
      'pt': 'Brigadeiro:',
      'en': '',
    },
    'z86f3p8g': {
      'pt':
          ' chocolate em pó, enrolado em bolinhas e coberto com granulado de chocolate.',
      'en': '',
    },
    '3vwoehfh': {
      'pt': 'Mousse de Maracujá:',
      'en': '',
    },
    '3y7cysb1': {
      'pt':
          ' leite condensado e creme de leite, muitas vezes decorada com sementes de maracujá.',
      'en': '',
    },
    '4kkaky6w': {
      'pt': 'Bolo de Rolo:',
      'en': '',
    },
    'dck1ukki': {
      'pt':
          ' Bolo em camadas finas enroladas com recheio de goiabada, tradicional do estado de Pernambuco.',
      'en': '',
    },
    'dz6oi6kn': {
      'pt': 'Pavê:',
      'en': '',
    },
    'h32hgrlr': {
      'pt':
          'Sobremesa em camadas feita com biscoitos, creme, frutas e, muitas vezes, chocolate, ',
      'en': '',
    },
    'bw31fp6s': {
      'pt': 'Açaí na Tigela:',
      'en': '',
    },
    'rw22yy9d': {
      'pt':
          ' Creme de açaí congelado, com acompanhamentos variados como granola, banana e mel.',
      'en': '',
    },
    'upvbcwul': {
      'pt': 'Home',
      'en': '',
    },
  },
  // comandaOn
  {
    'zi04hqjg': {
      'pt': 'COMANDA',
      'en': '',
    },
    '4ds5cuk6': {
      'pt': '001',
      'en': '',
    },
    'd5blut7f': {
      'pt': '002',
      'en': '',
    },
    'enxdfuii': {
      'pt': '003',
      'en': '',
    },
    'o6t3ev08': {
      'pt': '004',
      'en': '',
    },
    'cyxpl9zf': {
      'pt': '005',
      'en': '',
    },
    'ednro4xg': {
      'pt': '006',
      'en': '',
    },
    'udx3nlkt': {
      'pt': '007',
      'en': '',
    },
    '6ks9qi41': {
      'pt': '008',
      'en': '',
    },
    '99e7t372': {
      'pt': '009',
      'en': '',
    },
    '122cp0y2': {
      'pt': '010',
      'en': '',
    },
    'f30h93ao': {
      'pt': '011',
      'en': '',
    },
    'dmi2nc6v': {
      'pt': '012',
      'en': '',
    },
    'u6py726m': {
      'pt': 'Home',
      'en': '',
    },
  },
  // login
  {
    'ezotfst5': {
      'pt': 'Dnotas',
      'en': '',
    },
    'jcw6khjz': {
      'pt': 'Bem-vindo!',
      'en': '',
    },
    '7pp7hu4q': {
      'pt': 'Email',
      'en': '',
    },
    'uj6qj25r': {
      'pt': 'Password',
      'en': '',
    },
    'iwrmnxp7': {
      'pt': 'Entrar',
      'en': '',
    },
    '6e6b5men': {
      'pt': 'Home',
      'en': '',
    },
  },
  // refeicao
  {
    'vsfcbdk8': {
      'pt': 'Refeição',
      'en': '',
    },
    'j6l378iq': {
      'pt': 'Refeição KG:',
      'en': '',
    },
    's7i5l59k': {
      'pt':
          'Buffet self-service onde os clientes escolhem e pagam pela comida com base no peso do prato.',
      'en': '',
    },
    'ozq3tnmo': {
      'pt': 'Salada:',
      'en': '',
    },
    '4t3s34h7': {
      'pt':
          'Mistura fresca de vegetais como alface, tomate, cenoura e pepino, podendo incluir molhos ',
      'en': '',
    },
    'jcy5eenw': {
      'pt': 'Marmita media:',
      'en': '',
    },
    'v0om5te9': {
      'pt':
          'Refeição pronta para viagem, com porções medianas, adequada para uma refeição completa.',
      'en': '',
    },
    '87ulyhez': {
      'pt': 'Marmita grande:',
      'en': '',
    },
    'uqakrerz': {
      'pt':
          'Refeição pronta para viagem, com porções generosas, ideal para quem tem um grande apetite.',
      'en': '',
    },
    'j3ul9a80': {
      'pt': 'Churrasco:',
      'en': '',
    },
    '6oitzgyj': {
      'pt': 'Home',
      'en': '',
    },
  },
  // BEbidas
  {
    '6nhwbtta': {
      'pt': 'Bebidas',
      'en': '',
    },
    'zpegl9cs': {
      'pt': 'Refrigerante:',
      'en': '',
    },
    '3fnds1ng': {
      'pt':
          'Bebida gaseificada, disponível em vários sabores como cola, laranja e limão, popular em todo o Brasil.',
      'en': '',
    },
    't4q5hfbl': {
      'pt': 'Água de Coco',
      'en': '',
    },
    'xv98pkl5': {
      'pt': 'Bebida natural e hidratante, extraída diretamente do coco verde.',
      'en': '',
    },
    'pbkly5e4': {
      'pt': 'Suco:',
      'en': '',
    },
    'jrdw47r5': {
      'pt': 'Bebida refrescante e natural feita com suco fresco de frutas',
      'en': '',
    },
    'jn4bmnwf': {
      'pt': 'Água:',
      'en': '',
    },
    '7v88eti5': {
      'pt':
          'Bebida essencial e natural, servida gelada ou em temperatura ambiente, indispensável para hidratação',
      'en': '',
    },
    'rcqo0et2': {
      'pt': 'Cerveja:',
      'en': '',
    },
    'fannnkak': {
      'pt':
          '.Bebida alcoólica fermentada a partir de cevada e outros cereais, ',
      'en': '',
    },
    'zlbu04n4': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Valovenda
  {
    'z200yitl': {
      'pt': 'Valor Venda',
      'en': '',
    },
    'bv9uawx8': {
      'pt': '- ',
      'en': '',
    },
    'a064fpxg': {
      'pt': ' R\$ ',
      'en': '',
    },
    'wqoaxd0k': {
      'pt': 'Valor total:',
      'en': '',
    },
    '7ki3mwa4': {
      'pt': ' R\$',
      'en': '',
    },
    'r4ft4p0f': {
      'pt': 'R\$',
      'en': '',
    },
    'aygmk6jn': {
      'pt': '1',
      'en': '',
    },
    '6goret4e': {
      'pt': '2',
      'en': '',
    },
    '6whx77qf': {
      'pt': '3',
      'en': '',
    },
    'dkmv6mu5': {
      'pt': '+',
      'en': '',
    },
    'a3u37svp': {
      'pt': '4',
      'en': '',
    },
    '0mrrb6nz': {
      'pt': '5',
      'en': '',
    },
    '3isytifk': {
      'pt': '6',
      'en': '',
    },
    'fn08czh9': {
      'pt': 'x',
      'en': '',
    },
    '1jjg0oyq': {
      'pt': '7',
      'en': '',
    },
    'cida3djy': {
      'pt': '8',
      'en': '',
    },
    'ooas75mv': {
      'pt': '9',
      'en': '',
    },
    'c903gw2b': {
      'pt': '-',
      'en': '',
    },
    'kl2yp8vp': {
      'pt': '00',
      'en': '',
    },
    'urnj4vyb': {
      'pt': '0',
      'en': '',
    },
  },
  // finalizarVenda
  {
    '48a6mr3c': {
      'pt': 'Finalizar venda',
      'en': '',
    },
  },
  // adcionarBebida
  {
    '1rlcggm7': {
      'pt': 'Adicionar Bebidas',
      'en': '',
    },
    '3alm8yj0': {
      'pt': 'Add produto:',
      'en': '',
    },
    'f9w0sy4t': {
      'pt': 'Valor do produto',
      'en': '',
    },
    'jdl7plg2': {
      'pt': 'Salvar produto',
      'en': '',
    },
    'bxmnmxhl': {
      'pt': 'Ver produtos adicionados',
      'en': '',
    },
  },
  // finalizarVendaCopy
  {
    '8hkbdbl2': {
      'pt': 'Finalizar venda',
      'en': '',
    },
  },
  // especificaoV
  {
    '07bj48ih': {
      'pt': 'Detalhes da venda',
      'en': '',
    },
    'wgllfba0': {
      'pt': 'Forma de pagamento :',
      'en': '',
    },
    'vwbj2ogu': {
      'pt': 'Bandeira :',
      'en': '',
    },
    'ixuy0293': {
      'pt': 'Nº do cartão :',
      'en': '',
    },
    'hlg5arqq': {
      'pt': 'ID da venda :',
      'en': '',
    },
    'dagsbo61': {
      'pt': 'Código da autorização :',
      'en': '',
    },
  },
  // ValovendaCopy
  {
    'c232b51g': {
      'pt': 'Valor Venda',
      'en': '',
    },
    'goj3teqi': {
      'pt': 'Valor:',
      'en': '',
    },
    '1gmbndmk': {
      'pt': 'R\$',
      'en': '',
    },
    'jhovf10n': {
      'pt': '1',
      'en': '',
    },
    'zq5ns9t3': {
      'pt': '2',
      'en': '',
    },
    'l3mpxzk2': {
      'pt': '3',
      'en': '',
    },
    '82teha98': {
      'pt': '4',
      'en': '',
    },
    '0s8utcl4': {
      'pt': '5',
      'en': '',
    },
    'v7fqmola': {
      'pt': '6',
      'en': '',
    },
    'bxkb9j8w': {
      'pt': '7',
      'en': '',
    },
    'a96xclqb': {
      'pt': '8',
      'en': '',
    },
    'at4qxs45': {
      'pt': '9',
      'en': '',
    },
    'cwgl880v': {
      'pt': '00',
      'en': '',
    },
    'ietvhroh': {
      'pt': '0',
      'en': '',
    },
  },
  // painelExluir
  {
    'heqgcrsp': {
      'pt': '-',
      'en': '',
    },
    'azfim5g4': {
      'pt': 'R\$:',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'xuy9hwsb': {
      'pt': '',
      'en': '',
    },
    'kfht4bko': {
      'pt': '',
      'en': '',
    },
    'x0z6pbop': {
      'pt': '',
      'en': '',
    },
    't13kcctu': {
      'pt': '',
      'en': '',
    },
    'dzf9za5f': {
      'pt': '',
      'en': '',
    },
    'd04gnimf': {
      'pt': '',
      'en': '',
    },
    'x9fjqqd9': {
      'pt': '',
      'en': '',
    },
    'kmoisxed': {
      'pt': '',
      'en': '',
    },
    'j6nof4n9': {
      'pt': '',
      'en': '',
    },
    '3iam5md2': {
      'pt': '',
      'en': '',
    },
    'bfs3nn5r': {
      'pt': '',
      'en': '',
    },
    '41kk3eot': {
      'pt': '',
      'en': '',
    },
    'ov0fq7af': {
      'pt': '',
      'en': '',
    },
    '32oow0w9': {
      'pt': '',
      'en': '',
    },
    'zrampk26': {
      'pt': '',
      'en': '',
    },
    'kwo690ex': {
      'pt': '',
      'en': '',
    },
    '36n4qefc': {
      'pt': '',
      'en': '',
    },
    'laem0tkg': {
      'pt': '',
      'en': '',
    },
    'm03qfctb': {
      'pt': '',
      'en': '',
    },
    '8e84uji7': {
      'pt': '',
      'en': '',
    },
    'hyirdd2r': {
      'pt': '',
      'en': '',
    },
    '2wa50edn': {
      'pt': '',
      'en': '',
    },
    'w8t7ltgg': {
      'pt': '',
      'en': '',
    },
    'fk4bcn6r': {
      'pt': '',
      'en': '',
    },
    'ra2xb4dk': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
