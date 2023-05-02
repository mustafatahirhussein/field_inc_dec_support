# field_inc_dec_support

Using this Package "field_inc_dec_support", you will be able to speed up your development when it comes to add feature such as quantity box and so on.

## Preview

![alt text](https://user-images.githubusercontent.com/60258980/233025802-2f1c98e3-c8c7-471f-b1e3-6180da63c90a.png)

## Installation & usage

```shell
flutter pub add user_social_profile

import 'package:user_social_profile/user_social_profile.dart';
```

### Code snippet

```shell
UserSocialProfile(
    fullName: "Mustafa Tahir",
    icons: [
        SocialIcon(
        name: Platform.github,
        link: "your_github_url",
        iconSize: 50,
      ),
        SocialIcon(
        name: Platform.linkedin,
        link: "your_linkedin_url",
        iconSize: 50,
      ),
        SocialIcon(
        name: Platform.behance,
        link: "your_behance_url",
        iconSize: 50,
      ),
    ],
    email: "dummyemail@gmail.com",
 ),
```

## Optional parameters

* picture
* email
* phone

```shell
# Here is the updated snippet view

              UserSocialProfile(
                fullName: "Mustafa Tahir",
                picture: "your_image_url",
                phone: "+921234567899",
                icons: [
                  SocialIcon(
                    name: Platform.stack,
                    link: "your_stackoverflow_url",
                    iconSize: 50,
                  ),
                ],
                email: "dummyemail@gmail.com",
              ),
```

#### Additionally, custom styles can also be applied

* phoneStyle
* emailStyle

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

* Submit an issue describing the bug or feature request.
* Fork the repository and make changes in a new branch.
* Submit a pull request with your changes.

## Buy me a coffee
<a href="https://www.buymeacoffee.com/mustafatahir44" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>






## General info
Using this Package "field_inc_dec_support", you will be able to speed up your development when it comes to add feature such as quantity box and so on.

## Technologies
Package is created with:
* Dart

## Installation & Usage
At first import this package:
import 'package:ready_made_calculator/ready_made_calculator.dart';

```
      return Center(
        child: FieldIncDecSupport(
          elevation: 2,
          backColor: Colors.blue,
          value: 0,
          maxLimit: 99,
        ),
      ),
```
