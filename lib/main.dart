// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live to Learn',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'My List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class ItemInfo {
  final String title;
  final String description;
  final String image;
  final String text;

  const ItemInfo(this.title, this.description, this.image, this.text);
}

const List<ItemInfo> ItemList = [
  ItemInfo("无羁", "陈情令MV主题曲 - 肖战 王一博", "assets/images/scenary.png",
      "闻笛声独惆怅云深夜未央\nwén dí shēng dú chóu chàng yún shēn yè wèi yāng\n是与非都过往\nshì yǔ fēi dōu guò wǎng\n醒来了怎能当梦一场\nxǐng lái le zěn néng dāng mèng yì chǎng\n红尘中毁誉得失如何去量\nhóng chén zhōng huǐ yù dé shī rú hé qù liàng\n萧萧血热刀锋凉\nxiāo xiāo xuè rè dāo fēng liáng\n山高水远\nshān gāo shuǐ yuǎn\n又闻琴响\nyòu wén qín xiǎng\n陈情未绝卧荻花月如霜\nchén qíng wèi jué wò dí huā yuè rú shuāng\n煮一壶生死悲欢祭少年郎\nzhǔ yì hú shēng sǐ bēi huān jì shào nián láng\n明月依旧何来怅惘\nmíng yuè yī jiù hé lái chàng wǎng\n不如潇潇洒洒历遍风和浪\nbù rú xiāo xiāo sǎ sǎ lì biàn fēng hé làng\n天涯一曲共悠扬\ntiān yá yì qǔ gòng yōu yáng\n煮一壶生死悲欢祭少年郎\nzhǔ yì hú shēng sǐ bēi huān jì shào nián láng\n天涯一曲共悠扬\ntiān yá yì qǔ gòng yōu yáng\n天涯一曲共悠扬\ntiān yá yì qǔ gòng yōu yáng"),
  ItemInfo("給你的", "陪你逐風飛翔 ost 情感插曲  - 王安宇", "assets/texts/foryou.txt",
      "给你的\n\n夜色有繁星多少\nYèsè yǒu fánxīng duōshǎo\n心上人在微笑\nXīnshàngrén zài wéixiào\n晚风吹动树叶\nWǎn fēng chuī dòng shùyè\nWu 路灯微黄虫儿叫\nWu lùdēng wēi huáng chóng er jiào\nWoo woo woo\n\n闭上眼请听我低吟\nBì shàng yǎn qǐng tīng wǒ dī yín\nI miss you Like you\n\n比水清又比酒更浓\nbǐ shuǐ qīng yòu bǐ jiǔ gèng nóng\n你的笑容恍惚间空气变更温柔\nNǐ de xiàoróng huǎnghū jiān kōngqì biàngēng wēnróu\nI love you I need you\n\n趁微风不燥牵紧你手\nChèn wéifēng bù zào qiān jǐn nǐ shǒu\nThis song is for you forever\n\n从此雾散了阴雨也不再附和\nCóngcǐ wù sànle yīnyǔ yě bù zài fùhè\n时光静好朝夕与你相思着\nShíguāng jìng hǎo zhāoxì yǔ nǐ xiāngsīzhe\nYou are the one\n\n你像迟暮的霞光\nNǐ xiàng chímù de xiáguāng \nIn my life\n\n漫天星闪闪放光\nMàntiān xīng shǎnshǎn fàng guāng\n不敌你的微笑\nBù dí nǐ de wéixiào\n月光拉长身影\nYuèguāng lā cháng shēnyǐng\nWu 水面倒影微微摇\nWu shuǐmiàn dàoyǐng wéiwéi yáo\nWoo woo woo\n\n闭上眼请听我低吟\nBì shàng yǎn qǐng tīng wǒ dī yín\nI want you And you\n\n天黑后这思念越浓\nTiān hēi hòu zhè sīniàn yuè nóng\n双眸盛满的暮色回眸心也融了\nShuāngmóu shèng mǎn de mùsè huímóu xīn yě róngle\nI feel you I see you\n\n趁时光正好边爱边感受\nChèn shíguāng zhènghǎo biān ài biān gǎnshòu\nThis song is for you forever\n\n所有浪漫都不及你抬起眼眸\nSuǒyǒu làngmàn dōu bùjí nǐ tái qǐ yǎn móu\n细水流年暮朝与你相思着\nXì shuǐ liúnián mù cháo yǔ nǐ xiāngsīzhe\nThis song is for you forever\n\n所有浪漫都不及你抬起眼眸\nSuǒyǒu làngmàn dōu bùjí nǐ tái qǐ yǎn móu\n细水流年暮朝与你相思着\nXì shuǐ liúnián mù cháo yǔ nǐ xiāngsīzhe\nYou are the one\n\n爱你是此刻最动人心事\nÀi nǐ shì cǐkè zuì dòngrén xīnshì"),
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(ItemList[index].image),
                ),
                title: Text(ItemList[index].title),
                subtitle: Text(ItemList[index].description),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(itemIndex: index),
                    ),
                  );
                },
              ),
            );
          },
          itemCount: ItemList.length,
          shrinkWrap: true,
          padding: const EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.itemIndex}) : super(key: key);
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ItemList[itemIndex].title),
      ),
      body: DetailScreenBody(itemIndex: itemIndex),
    );
  }
}

class DetailScreenBody extends StatelessWidget {
  const DetailScreenBody({Key? key, required this.itemIndex}) : super(key: key);
  final int itemIndex;

  Future<String> loadAsset() async {
    String text = ItemList[itemIndex].text;
    if (text.isNotEmpty) {
      return text;
    } else {
      return await Future(() => "No Content");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadAsset(),
        initialData: "Loading text...",
        builder: (BuildContext context, AsyncSnapshot<String> text) {
          String s = text.data as String;
          dynamic customWidget = Text(text.data as String);
          if (s != 'Loading text...') {
            s = s.replaceAll('\r', '');
            List<List<String>> lines = [];
            RegExp re = RegExp(r'^[áǎàāéěèēíǐìīóǒòōúǔùū;,/  .a-zA-Z0-9]+$');
            String latinText = '';
            List<String> lst = [];

            for (var i = 0; i < s.length; i++) {
              if (s[i] == '\n') {
                if (latinText.isNotEmpty) {
                  lst.add(latinText);
                  latinText = '';
                }
                lines.add(lst);
                lst = [];
              } else {
                if (re.hasMatch(s[i])) {
                  latinText += s[i];
                } else {
                  if (latinText.isNotEmpty) {
                    lst.add(latinText);
                    latinText = '';
                  }
                  lst.add(s[i]);
                }
              }
            }
            if (latinText.isNotEmpty) {
              lst.add(latinText);
            }
            if (lst.isNotEmpty) {
              lines.add(lst);
            }

            customWidget = ListView.builder(
              itemBuilder: (context, index) {
                return CustomWidget(
                    arg: lines[index],
                    type: index.isEven ? 'TextButton' : 'Text');
              },
              itemCount: lines.length,
              shrinkWrap: true,
              padding: const EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
            );
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.all(5.0),
            child: customWidget,
          );
        });
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key, required this.arg, required this.type})
      : super(key: key);
  final List<String> arg;
  final String type;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.black87,
      minimumSize: const Size(40, 40),
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );
    return Row(
      children: List<Widget>.generate(arg.length, (index) {
        if (type == 'TextButton') {
          return Container(
              padding: const EdgeInsets.all(0.1),
              child: TextButton(
                style: flatButtonStyle,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailItem(item: arg[index]),
                      ));
                },
                child: Text(arg[index],
                    style: const TextStyle(color: Colors.black, fontSize: 30)),
              ));
        } else {
          return Container(
              padding: const EdgeInsets.all(0.1),
              child: Text(arg[index],
                  style: const TextStyle(color: Colors.purple, fontSize: 19)));
        }
      }),
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({Key? key, required this.item}) : super(key: key);
  final String item;

  final TextStyle tStyle = const TextStyle(color: Colors.black, fontSize: 130);
  final TextStyle sStyle = const TextStyle(color: Colors.yellow, fontSize: 130);
  final TextStyle vStyle = const TextStyle(color: Colors.blue, fontSize: 30);
  final TextStyle textStyle =
      const TextStyle(color: Colors.black, fontSize: 30);
  @override
  Widget build(BuildContext context) {
    CNChar? cnChar = cnMap[item];
    Widget widget;

    if (cnChar != null) {
      List<Widget> lst = [];
      lst.add(Text(
        cnChar.traditional,
        style: tStyle,
      ));
      if (cnChar.simple != null) {
        lst.add(Text(
          cnChar.simple as String,
          style: sStyle,
        ));
      }
      widget = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: lst,
          ),
          Text(
            cnChar.vietnamese,
            style: vStyle,
          ),
        ],
      );
    } else {
      widget = Text(
        item,
        style: tStyle,
      );
    }

    final Widget childWidget = Center(
        child: Container(
      padding: const EdgeInsets.all(1.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.red[50],
        elevation: 10,
        child: widget,
      ),
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text(
            '$item ' + (cnChar != null ? '/' + cnChar.pinyin + "/" : ''),
            style: textStyle),
      ),
      body: childWidget,
    );
  }
}

class CNChar {
  final String? simple;
  final String traditional;
  final String pinyin;
  final String english;
  final String vietnamese;
  final Map<String, String> details;

  const CNChar(this.simple, this.traditional, this.pinyin, this.english,
      this.vietnamese, this.details);
}

const Map<String, CNChar> cnMap = {
  '夜': CNChar('夜', '亱', 'yè', 'night', 'dạ, dịch',
      {"夕": "tịch", "亠": "đầu", "但": "đán, đãn", "旦": "đán"}),
};
