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
                child: Text("RAYA và rồng thần cuối cùng",
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
                    Text("Xuất bản:",
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
                    Text("Thể loại :",
                      style: TextStyle(fontFamily: "Comfortaa",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,),),
                    SizedBox(width: 5,),
                    SizedBox(
                      width: 178,
                      height: 60,
                      child: Text(
                        "Phim Hoạt Hình, Phim Phiêu Lưu, Phim Giả Tượng, Phim Gia Đình, Phim Hành Động",
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
          Text("Raya và Rồng Thần Cuối Cùng kể về một vương quốc huyền bí có tên là Kumandra – vùng đất mà loài rồng và con người sống hòa thuận với nhau. Nhưng rồi một thế lực đen tối bỗng đe dọa bình yên nơi đây, loài rồng buộc phải hi sinh để cứu lấy loài người. 500 năm sau, thế lực ấy bỗng trỗi dậy và một lần nữa, Raya là chiến binh duy nhất mang trong mình trọng trách đi tìm Rồng Thần cuối cùng trong truyền thuyết nhằm hàn gắn lại khối ngọc đã vỡ để cứu lấy vương quốc. Thông qua cuộc hành trình, Raya nhận ra loài người cần nhiều hơn những gì họ nghĩ, đó chính là lòng tin và sự đoàn kết.",
          style: TextStyle(fontSize: 16),),
        
        ],
      ),
    );
  }
}
