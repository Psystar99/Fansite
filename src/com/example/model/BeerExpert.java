package com.example.model;

import java.util.*;

public class BeerExpert {

   public List getList_photo(String picture) {

      
      List<String> read_photo = new ArrayList();

      if (picture.equals("a1")) {
         read_photo.add("image/gallery/photo/photo_a1.jpg");
         read_photo.add("정 p에서_기창특 쉬는 시간에");
         read_photo.add("2019.9.7");

      } else if (picture.equals("b1")) {
         read_photo.add("image/gallery/photo/photo_b1.jpg");
         read_photo.add("연트럴파크에서_작년 가을_먹방");
         read_photo.add("2018.10.6");

      } else if (picture.equals("c1")) {
         read_photo.add("image/gallery/photo/photo_c1.jpg");
         read_photo.add("헤베커피에서_시소프 시험공부ing");
         read_photo.add("2019.10.17");

      } else if (picture.equals("a2")) {
         read_photo.add("image/gallery/photo/photo_a2.jpg");
         read_photo.add("초록이팬미팅에서_with팬");
         read_photo.add("2018.5.22");

      } else if (picture.equals("b2")) {
         read_photo.add("image/gallery/photo/photo_b2.jpg");
         read_photo.add("상수동에서_늦여름날씨");
         read_photo.add("2018.8.29");

      } else {
         read_photo.add("image/gallery/photo/photo_c2.jpg");
         read_photo.add("구의역에서_개강직전_촑머리보라");
         read_photo.add("2018.9.1");

      }
      return (read_photo);
   }

   
}