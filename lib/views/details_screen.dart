import 'package:flutter/material.dart';
import 'package:movie_app/model/item_cast.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      // body:Container(),
      body: Stack(
        children: [
          Image.asset("assets/images/background.png",
            fit: BoxFit.cover,
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            color: Colors.white.withOpacity(0.8),
          ),
          _body(context),
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        const SizedBox(height: 20,),
        _header(),
        const SizedBox(height: 20,),
        _cast(),
        const SizedBox(height: 20,),
        _overview(),

      ],
    );
  }

  _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 153,
            width: 113,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/image1.png"))),
          ),
          const SizedBox(width: 16,),
          Column(
            children: [
              const SizedBox(
                width: 249,
                child: Text("RAYA v?? r???ng th???n cu???i c??ng",
                  style: TextStyle(fontFamily: "Comfortaa",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,),),
              ),
              const SizedBox(height: 21,),
              SizedBox(
                width: 249,
                child: Row(
                  children: const [
                    Text("Xu???t b???n:",
                      style: TextStyle(fontFamily: "Comfortaa",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,),),
                    SizedBox(width: 16,),
                    Text("05-T3-2021",
                      style: TextStyle(fontFamily: "Comfortaa",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,),),
                  ],
                ),
              ),
              const SizedBox(height: 21,),
              SizedBox(
                width: 249,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Th??? lo???i :",
                      style: TextStyle(fontFamily: "Comfortaa",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,),),
                    SizedBox(width: 5,),
                    SizedBox(
                      width: 178,
                      height: 60,
                      child: Text(
                        "Phim Ho???t H??nh, Phim Phi??u L??u, Phim Gi??? T?????ng, Phim Gia ????nh, Phim H??nh ?????ng",
                        style: TextStyle(fontFamily: "Comfortaa",
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,),),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //  const SizedBox(width :14),
        ],
      ),
    );
  }

  _cast() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Cast", style: TextStyle(fontFamily: "Comfortaa",
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,),),
          const SizedBox(height: 15,),
          SizedBox(
            height: 160,
            child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: listItemCast.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _itemCast(listItemCast[index]);
                }),
          ),


        ],
      ),
    );
  }

  _itemCast(ItemCast listItemCast) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Expanded(child: Container(
            height: 124,
            width: 102,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(listItemCast.urlPhoto))),
          ),),
          const SizedBox(height: 4,),
          Text(listItemCast.name, style: const TextStyle(fontFamily: "Comfortaa",
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.black,),),
          const SizedBox(height: 2,),
          Text(listItemCast.character, style: const TextStyle(fontFamily: "Comfortaa",
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Colors.black,),),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }

  _overview() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
         Text("Overview",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Text("Raya v?? R???ng Th???n Cu???i C??ng k??? v??? m???t v????ng qu???c huy???n b?? c?? t??n l?? Kumandra ??? v??ng ?????t m?? lo??i r???ng v?? con ng?????i s???ng h??a thu???n v???i nhau. Nh??ng r???i m???t th??? l???c ??en t???i b???ng ??e d???a b??nh y??n n??i ????y, lo??i r???ng bu???c ph???i hi sinh ????? c???u l???y lo??i ng?????i. 500 n??m sau, th??? l???c ???y b???ng tr???i d???y v?? m???t l???n n???a, Raya l?? chi???n binh duy nh???t mang trong m??nh tr???ng tr??ch ??i t??m R???ng Th???n cu???i c??ng trong truy???n thuy???t nh???m h??n g???n l???i kh???i ng???c ???? v??? ????? c???u l???y v????ng qu???c. Th??ng qua cu???c h??nh tr??nh, Raya nh???n ra lo??i ng?????i c???n nhi???u h??n nh???ng g?? h??? ngh??, ???? ch??nh l?? l??ng tin v?? s??? ??o??n k???t.",
          style: TextStyle(fontSize: 16),),
        
        ],
      ),
    );
  }
}
