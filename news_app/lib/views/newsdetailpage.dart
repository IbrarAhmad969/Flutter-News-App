import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class NewsDetailPage extends StatefulWidget {
  final String newsImage,
      newstitle,
      author,
      description,
      content,
      newsDate,
      source;

  const NewsDetailPage(
      {Key? key,
      required this.newsImage,
      required this.newstitle,
      required this.newsDate,
      required this.author,
      required this.description,
      required this.content,
      required this.source})
      : super(key: key);

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  final format = DateFormat('MMM, dd, yyyy');


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    DateTime datetime = DateTime.parse(widget.newsDate);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: height * 0.45,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: CachedNetworkImage(
                imageUrl: widget.newsImage,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
              ),
            ),
          ),
          Container(
            height: height * 0.6,
            margin: EdgeInsets.only(top: height * 0.4),
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
               borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView(
              children: [
                Text(
                  widget.newstitle,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.source,
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ), 
                    Text(
                      format.format(datetime),

                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ), 
                  ],
                ), 
                 SizedBox(height: height*0.03,),

                 Text(
                  widget.description,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
