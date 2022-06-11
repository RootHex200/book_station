import 'package:book_station/view/widgets/colors.dart';
import 'package:book_station/view/widgets/nav_bar.dart';
import 'package:book_station/view/widgets/txt_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Book_mark extends StatelessWidget {
  const Book_mark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header part
          Nav_bar(
              icons: Icon(
            Icons.arrow_back_ios,
            size: 30.sp,
          )),
          SizedBox(
            height: 20.h,
          ),
          Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Text_widgets(
                txt: "Your Favourite Item",
                fontWeight: FontWeight.bold,
                fontsize: 30.sp,
              )),
          SizedBox(
            height: 10.h,
          ),
          Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Text_widgets(
                txt:
                    "We are giving free to download gift books to our golden costumers",
                fontWeight: FontWeight.w800,
                fontsize: 18.sp,
                colors: Colors.black54,
              )),
          Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    return Container(
                      height: 230.h,
                      width: 250.w,
                      margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 20.h),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20.r)

                      ),
                      child:MediaQuery.of(context).size.width <=360?
                      FittedBox(
                        child: Row(
                          
                          children: [
                            Container(
                              height: 200.h,
                              width: 120.w,
                              
                              margin: EdgeInsets.only(left: 10.w),
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10.r),
                                image: DecorationImage(image:AssetImage("asset/images/normal.jpg"),fit: BoxFit.cover )
                              ),
                            ),
                           SizedBox(width: 10.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 20.w),
                                  child: Text_widgets(txt: "The Normal People",fontWeight: FontWeight.bold,fontsize: 20.sp,)),
                                SizedBox(height: 8.h,),
                                Container(
                                  // margin: EdgeInsets.only(right: 20.w),
                                  child: Text_widgets(txt: "Sandrosn egel",fontWeight: FontWeight.w700,colors: Colors.black54,fontsize: 18.sp,)),
                                SizedBox(height: 10.h,),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 25.sp,color: Colors.yellow,),
                                    Text_widgets(txt: "4.9",fontsize: 18.sp,),
                                    SizedBox(width: 8.w,),
                                    Text_widgets(txt: "200 Downloads",fontsize: 17.sp,colors: Colors.black54,),
                        
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Container(
                                  height: 35.h,
                                  width: 75.w,
                                  padding: EdgeInsets.only(left: 10.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: Colors.white
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.picture_as_pdf_rounded,size: 20.sp,color: Colors.red,),
                                      SizedBox(width: 5.w,),
                                      Text_widgets(txt: "PDF",fontsize: 17.sp,fontWeight: FontWeight.bold,)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Container(
                                  height: 40.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20.r)
                                  ),
                                  child: Center(child: Text_widgets(txt: 'Download',fontsize: 20.sp,colors: Colors.white,fontWeight: FontWeight.bold,)),
                                )
                        
                              ],
                            )
                        
                          ],
                        ),
                      )
                    
                    
                      :Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 200.h,
                            width: 120.w,
                            
                            margin: EdgeInsets.only(left: 10.w),
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10.r),
                              image: DecorationImage(image:AssetImage("asset/images/normal.jpg"),fit: BoxFit.cover )
                            ),
                          ),
                         
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top:18.h,right: 20.w),
                                child: Text_widgets(txt: "The Normal People",fontWeight: FontWeight.bold,fontsize: 20.sp,)),
                              SizedBox(height: 8.h,),
                              Container(
                                // margin: EdgeInsets.only(right: 20.w),
                                child: Text_widgets(txt: "Sandrosn egel",fontWeight: FontWeight.w700,colors: Colors.black54,fontsize: 18.sp,)),
                              SizedBox(height: 10.h,),
                              Row(
                                children: [
                                  Icon(Icons.star,size: 25.sp,color: Colors.yellow,),
                                  Text_widgets(txt: "4.9",fontsize: 18.sp,),
                                  SizedBox(width: 8.w,),
                                  Text_widgets(txt: "200 Downloads",fontsize: 17.sp,colors: Colors.black54,),
                      
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                height: 35.h,
                                width: 75.w,
                                padding: EdgeInsets.only(left: 10.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: Colors.white
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.picture_as_pdf_rounded,size: 20.sp,color: Colors.red,),
                                    SizedBox(width: 5.w,),
                                    Text_widgets(txt: "PDF",fontsize: 17.sp,fontWeight: FontWeight.bold,)
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                height: 40.h,
                                width: 150.w,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20.r)
                                ),
                                child: Center(child: Text_widgets(txt: 'Download',fontsize: 20.sp,colors: Colors.white,fontWeight: FontWeight.bold,)),
                              )
                      
                            ],
                          )
                      
                        ],
                      ),
                    
                    
                    
                    );
                  }))
        ],
      ),
    );
  }
}
