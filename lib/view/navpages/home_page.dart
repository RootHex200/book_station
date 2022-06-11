//import 'dart:html';

import 'package:book_station/controller/dio_controller.dart';
import 'package:book_station/view/widgets/colors.dart';
import 'package:book_station/view/widgets/nav_bar.dart';
import 'package:book_station/view/widgets/txt_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home_page extends HookWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tabcontroller = useTabController(initialLength: 2);
    final Dio_controller dio_controller = Get.put(Dio_controller());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header part
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    dio_controller.getHttp();
                  },
                  child: Nav_bar(
                      icons: Icon(
                    Icons.notes,
                    size: 30.sp,
                    color: Colors.black,
                  )),
                ),
                Nav_bar(
                    icons: Icon(
                  Icons.notifications_none_outlined,
                  size: 30.sp,
                  color: Appcolor.custom_grey,
                ))
              ],
            ),
            //Discover
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Text_widgets(
                txt: "Discover",
                fontWeight: FontWeight.bold,
                fontsize: 30.sp,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            //search bar
            Container(
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20.w, right: 20.w),
              decoration: BoxDecoration(
                  color: Appcolor.custom_white,
                  borderRadius: BorderRadius.circular(30.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Icon(
                        Icons.search,
                        color: Appcolor.custom_grey,
                        size: 30.sp,
                      )),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text_widgets(
                    txt: "type here to search",
                    fontsize: 20.sp,
                    colors: Appcolor.custom_grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            //tabbar part
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700),
                  controller: _tabcontroller,
                  unselectedLabelColor: Colors.black54,
                  isScrollable: true,
                  indicatorWeight: 0.1,
                  labelPadding: EdgeInsets.only(left: 20.w, right: 20.w),
                  tabs: [
                    Text_widgets(txt: "Popular"),
                    Text_widgets(txt: "Book of the day")
                  ]),
            ),
            //tabbar view
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 350.h,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(controller: _tabcontroller, children: [
                Container(
                  height: 350.h,
                  width: MediaQuery.of(context).size.width,
                  child: Obx(
                    ()=>dio_controller.book_data.length ==0?CircularProgressIndicator():
                    ListView.builder(
                        itemCount: dio_controller.book_data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 280.h,
                                  width: 230.w,
                                  margin:
                                      EdgeInsets.only(left: 20.w, right: 10.w),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(20.r)),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(dio_controller.book_data[index].cover!))),
                                      )),
                                      Positioned(
                                          right: 0,
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  right: 15.w, top: 20.h),
                                              height: 30.h,
                                              width: 70.w,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.r)),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.w),
                                                      child: Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 20.sp,
                                                      )),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text_widgets(
                                                    txt: dio_controller.book_data[index].rating!.toString(),
                                                    
                                                    fontsize: 15.sp,
                                                  )
                                                ],
                                              ))),
                                    ],
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 22.w),
                                    child: Text(dio_controller.book_data[index].name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.sp),overflow: TextOverflow.ellipsis,)),
                                Container(
                                    margin: EdgeInsets.only(left: 22.w),
                                    child: Text_widgets(
                                      txt: "Patricia Engel",
                                      fontWeight: FontWeight.w800,
                                      colors: Colors.black54,
                                      fontsize: 20.sp,
                                    ))
                              ],
                            ),
                          );
                        }),
                  ),
                ), //this is Popular book
                Container() //this is book of the day
              ]),
            ),

            SizedBox(
              height: 10.h,
            ),

            Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Text_widgets(
                txt: 'Announcement',
                fontWeight: FontWeight.bold,
                fontsize: 30.sp,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Text_widgets(
                txt: 'Free books of the week',
                fontWeight: FontWeight.bold,
                fontsize: 18.sp,
                colors: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 200.h,
              width: MediaQuery.of(context).size.width,
              child: Obx(
                ()=>dio_controller.book_data.length==0?CircularProgressIndicator(): ListView.builder(
                    itemCount:dio_controller.book_data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 200.h,
                        width: 150.w,
                        margin: EdgeInsets.only(left: 20.w, right: 10.w),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15.r),
                            image: DecorationImage(
                                image: NetworkImage(dio_controller.book_data[index].cover!),
                                fit: BoxFit.cover)),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
