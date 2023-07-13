
# VBA Crypto Signal

This Flutter app demonstrates the use of the BLoC state management library to replicate a login screen and a home page. The app follows a simple flow where users input their login credentials on the login screen, and upon successful sign-in, they are directed to the home screen.

## Color Reference

| Color                      | Hex                                                                |
| -------------------------- | ------------------------------------------------------------------ |
| Scaffold Background Color | ![#0E2033](https://via.placeholder.com/10/0E2033?text=+) #0E2033   |
| Scaffold Secondary Color  | ![#213345](https://via.placeholder.com/10/213345?text=+) #213345 |
| Grey Color                 | ![#8B8B8B](https://via.placeholder.com/10/8B8B8B?text=+) #8B8B8B   |
| Active Color               | ![#60FFB5](https://via.placeholder.com/10/60FFB5?text=+) #60FFB5   |
| Gold Color                 | ![#EAB96B](https://via.placeholder.com/10/EAB96B?text=+) #EAB96B   |


## Text and Its Usage

Text 

| Name       | Font Family | Font Size | Font Weight | Usage                            |
| ---------------- | ----------- | --------- | ----------- | -------------------------------- |
| montheading1          | Mont        | 20        | Bold        | [GenericText.montheading1] |
| montheading2       | Mont        | 13        | Semibold    | [GenericText.montheading2]|
| montheading3             | Mont        | 13        | Normal      | [GenericText.montheading3] |
| montheading4        | Mont        | 16        | Semibold    | [GenericText.montheading4] |
| amount      | e_ukraine   | 32        | Medium      | [GenericText.amount] |
| percentage            | e_ukraine   | 20        | Medium      | [GenericText.percentage] |
| hintText  | noto        | 12        | Normal      | [GenericText.hintText] |
| nunito1     | Nunito      | 12        | Normal      | [GenericText.nunito1] |

Parameters available for this widget

| Parameters    | Type          | Required | Default | Description                                   |
| ----------- | ------------- | -------- | ------- | --------------------------------------------- |
| text        | String        | Yes      | -       | The text to display.                           |
| style       | TextStyle     | No       | -       | The style of the text.                         |
| multiText   | bool          | No       | true    | Whether the text is composed of multiple parts. |
| textAlign   | TextAlign    | No       | -       | The alignment of the text within its container. |
| overflow    | TextOverflow  | No       | ellipsis| How the text should handle overflow.            |
| color       | Color        | No       | -       | The color of the text.                         |
| centered    | bool          | No       | false   | Whether the text is centered.                  |
| maxLines    | int          | No       | -       | The maximum number of lines to display.         |
| fontSize    | double       | No       | -       | The size of the font.                          |
| height      | double       | No       | -       | The height of the text.                        |
| fontStyle   | FontStyle    | No       | -       | The style of the font (e.g., italic).           |
| fontWeight  | FontWeight   | No       | -       | The weight of the font (e.g., bold).            |

Example

AppTextStyle
dart
 Text(
    "Testing",
    style: 
        GenericTextStyle.hintText.copyWith(
            color: GenericColor.grey.shade700,
        ),
    )

AppText

dart

GenericText.montheading1(
    text,
    fontSize: 20,
    fontWeight: FontWeight.w800
);

