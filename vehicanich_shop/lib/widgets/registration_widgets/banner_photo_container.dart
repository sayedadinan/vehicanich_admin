import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/image_blocs/image_bloc.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_texts.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';

class BannerImagecontainer extends StatelessWidget {
  const BannerImagecontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageBloc, ImageState>(builder: (context, state) {
      return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        if (state is ImageInitial && state.bannerimagepath.isNotEmpty)
          GestureDetector(
            onTap: () {
              context.read<ImageBloc>().add(BannerImagePicker());
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Appallcolor().textcolor,
                  width: 3,
                ),
              ),
              width: Mymediaquery().mediaquerywidth(0.40, context),
              height: Mymediaquery().mediaqueryheight(0.12, context),
              child: Image.file(
                File(state.bannerimagepath),
                fit: BoxFit.cover,
              ),
            ),
          )
        else
          GestureDetector(
            onTap: () {
              context.read<ImageBloc>().add(BannerImagePicker());
              print('started banner');
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Appallcolor().textcolor,
                    width: 2,
                  ),
                ),
                width: Mymediaquery().mediaquerywidth(0.40, context),
                // width: double.infinity,
                height: Mymediaquery().mediaqueryheight(0.12, context),
                child: Column(
                  children: [
                    SizedBox(
                      height: 29,
                    ),
                    CustomText(
                      width: FontWeight.w300,
                      color: Appallcolor().textcolor,
                      fontSize: 14,
                      text:
                          'Please upload your shop photo here for showing to customer',
                    ),
                    CustomText(
                      width: FontWeight.w300,
                      color: Appallcolor().textcolor,
                      fontSize: 14,
                      text: '(tap here)',
                    ),
                  ],
                ),
              ),
            ),
          ),
        const SizedBox(width: 10),
      ]);
    });
  }
}
