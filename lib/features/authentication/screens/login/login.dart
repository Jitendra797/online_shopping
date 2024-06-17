import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/styles/spacing_styles.dart';
import 'package:online_shopping/common/widgets/login_signup/form_divider.dart';
import 'package:online_shopping/common/widgets/login_signup/social_buttons.dart';
import 'package:online_shopping/features/authentication/screens/login/widgets/login_form.dart';
import 'package:online_shopping/features/authentication/screens/login/widgets/login_header.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              const LoginHeader(),

              // Form
              const LoginForm(),

              //Divider
              FormDivider(dividerText: KTexts.orsignInWith.capitalize!),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),

              //Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
