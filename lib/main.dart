import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main(List<String> args) {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("first log in screen"),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "First Log in Screen",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.menu),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.network(
                    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAggAAABhCAMAAACERqnqAAAA3lBMVEX///8AAADw8PBCQkLc3NzQ0NBvb2+RkZHt7e3x8fHIyMj19fW0tLRJSUl3d3empqaGhoasrKxWVlaXl5dgYGB9fX2+vr5tk7L5+fnW1tZeg6JymLdCZYXj4+ODg4Nqamp9pMNZfp1bW1ucnJxojq1Pc5M2NjZynr88YYK5ublPT08iIiJKbo3M1NwtLS3A0N4ZGRmEoLmer8ARERHa4umnwNSTpLZNeZwyWn1shp9VdJEzMzMnJyfV3uaiuMyRrcSJrMh4lrCtvMuZt8+Xp7jAydNxiaGDl6slU3g4a5HcRGndAAAOxElEQVR4nO2dCVviOhSGW9ayyCJbERDZZLGMinhhVMZldBz//x+6SVpomyZpglCqk++5z9WBxqbt25NzTk5TRZGSkpKSkpKSkpKSkpKSkpKSktq1Mu0cRZVCIZmvtg7dwdDotJ3gVvnQnRVXRPVTu3roPoZDUd8z5dChOysufxCAeofuZRj0L4BwXLGGA9zEbQ4+UKsQa+cSySB3aErvtst1+tfgXFSSnCpsWmW75ePUHjsduT86Z3Ra4A/Byzymf98qmjC0d7EzTqXB/iYB7s9SBuw2Tf8anIctHKYe+KPa9n3ylQb+fnwXfwiBkGVu0krAbX7ou9gdl0ILQkz8j0IQItv3yVdBggBs9RXY6CYwEiQI/AoWBEUpg60edrE/HkkQ+BU0CEoFbBZUdCxB4FfgIChttlO5S30nEErfyFm09COw8Lh+XO6eBrMrp/YCQrqQLGS275OvDgBCC2x4gOg+OO0FhH3rACAop18yY8YvCQInCBnuLb+mJAi8lzehqse72GdIJUHgBSH9vccGCQK3wQebfmKCQ19d/nq8vn56vL2cM7OUmRjQ9vvZVhIEbhDut3cStJfnk36/X6vVGlC1p0t6UAUtz/mW+6GrXkzm2u1coRinUcg+p0GDEMmeTi5U9cdxYczISGU+d3M6dicCQtsRQLZAsI+106qlHDkBsHruWBhYIDSGw8bvOWU3EIQjei/qvTbMaagP5R7vKdDyE2e1wH3JPY+Yy1XgfzB5elpxKuc4wu1AGEcn5/Y0dPY8eo7N6Kd7icmFt+Aj6yp/OCek8iZdoHIXJt/KLnWL4t0UBAEEkJX17zHQruT4LtV7QH0muJPz2gJi0O+fnPQb141aH8AwPDsbDn+TZ+pZIGgF1aVTjqnhWFf16Mg5CHi/Xqtib7QdCEXVmWLOYyc7XTZ3g4Mw9nTkwoMCvdMFfFMeCYEALkJu/bsbhEhic4Y9rR4XJ0iz6TrXql3+rkEUzoaXpN3QQUhZu4m2K7lja4dlnwyuVt50LVcoFXJH1r/O7csaKAj2Fa1erHdTcjeyDi1XTMfT1fy6/3n3RocEAViEjeV3gdAzT3Qhn83io6zW6QAIFtcr7PPVUwOS8EQYsKkg5NFuTte70PIPpNNIaqPe92zTEbOM1+aDlgYFjyirueUYnXcNQgaNVleV/Dhed7GcgZP+atse9vTiucWL82TpUJazqLsk3ktF3EfYnHQHCDocz6Lkarap0el0Fs+mO5CZTy9fLqdWzLA6Q0bBe0PTQDjyXvU0uqnO6Y6n6Rt08UtYhzcddsZ0dQ9RAxWEOLp3SQPbDfjiAvuiZY2IHqcooh4iarhwbGqDAKF8oHRm+gE5mMJf5y/QRzB1bcYMl4gEj89IBgHuRo16vIokOkEUTyGFbq4Hkk8Zj+JHvZfwkQZCFpp+4r0LHZou4XPoT1x4Pj1I+Kg7kdyAkGKMSpCDxQm86Ktn02Fcxw21R2gJ5kSbQARBw4Zs19YUEswSbd6JzIBAQJZzTL1+8HAo+dtMz9uBg4BQdY6rGxCu6HUK2segM3gGv2QABpY12ESQtVv4xRkUdmeQ6hEghJTJzxi63ASXEbXhL6IIEIS6qt5QkgP3qlD69iAglJ3FzGsQyoxa9wEQ5GC6gA6jTULDyiWAi6dDEJ7czUg3BXSXcgpZaLi98n6OXCzGpcUUIAjgB8WtgZP9InmAQ4Cgqc5rboFQ9YQ1tt6NweAE/HwZIA5wk9AY1oB7kBl6okiCRYC+UpTaMxS0eArukX8l8EBGcCAk6FVLRTGDcBAQEq4+WiAwKhlXo8HAyCAOTBC8JgGSAP2Eoev+8PoIyPozCn2OCPd+XWU4LyQFBkKMMV4VBLPrBwCh7t7QBCHP4PfOGHxMrcDBSYIrzwzujFswOPx2NvSCAFPKVMOjWJ7kjfsz2EbonAYWNRwTowJTFcGp/gOAcOM2ziYIV/QB7W1kGMBBiCAOOh2ySRiegS2HWOTgAWHsvcyYYPWUuytZRlRJlj8I8YjmJ9wFhCDYIS+yCBqrnLUg+NhA8CBMsPOKQCgQItu17gxjBA7458ABAm4SGmfDWzOdcOto6QHhwrePGRQgOD+5YniX9L/BBoFDuCPjBSF6wQpoi+wx0KPAQSjjxtkM2uhN50vDeAd2ATiMRJNg/n941oiYJsERQuIgxPGLTFAC8xJQdkGsjnwnIOBhr3doYPdLU31S5oTtAwQBJZHd95cFArXJa9MYzc0IckAwCf15JBJJARKGwD24BF6CI3DAQYAX2c/rQ7A4hl4IruADOXuzCDgIzGc2JmIABwsCzCTh4ZkJAv0h6aZhGMBTbG5AcJuEPrKXyCRklMjQ5S7iIKg8B4u6o7v+yZ9CQOLwETIppEiKKtysk0BgprjgeaWPtx4FCUIcBWd4dtcEgXritKXRnJmpBKJJWIMATAKwBTDRbLfFQOAZGayxYZM1SHO1cSugqMGvX9DvveK2CbsFgZ7K0uNJNG/jZSXGPiYQM4xA7DgaDHCTYOFgg/CEIkjH3BMGQonLysMzbg8gcCpKtOI6KBD8XFjCJCtduwVBPTomKnpjjXxlryOLQKA/+TQbGcuMMh8ZA9wkXMIZ8+sTBEIf5RLACALGhummLQZCl+u8xFwj9LHAuVxrLyDkvSD4Xjdz6rzAdX13DAJbbVI4jk48vWbwvdkcAbvQNHCT0EEX/PoEnZ0+zCU05ii7aHuLGAg3Kk+mOOKyUCpXG7eCAsG/UdI68T/ayWycPUoEB0I7S654ibGP6Wez2QF2AbiMGAkEEFZowsHOJGAgoF4U/FRBvdUdbUSLewMCgTSVjqvlqrW9miTpvthOQUjGcdXr9Vgs1mLUUUMQGDGd0Wz+UZT/XCAgD8EDQqNxqeiusMENQorDZm3UchyV6IpHAYHAZ6hip9iRFcj3Y1DOIl0QBMbD0SYI7zCItEgYzODnLwtREDQREGKONiEFgTuobWULiW70x+bYiLFd6EG421gELhAaOwKh7mgjetnCBsJaqbQ57BEHldCD8HPUvDN9BCATByoIKyVlTjpYIoCgZbi0zuqjqQfR8xNWEKCyNBJCD8L7qLk0ZyANo7OaTlczgwZCDUQNDWdxihsEVHAmuugI1ZQyFGYQrDIb7yGFHoQZACGDZp4M4yf8YPrhAqFjggBnIfto/nFoP/hAiBpEL8EFu3dEhRsEM8/vuSFCD8LbsrkEl5wHhCdF+dVwViRgIES3uLvhnBO9tI2skIOATotnbif0IKT+NkevVthAAmFhgVBr1MCYAOee7LYYCBWKn8QSqmIUfOQn7CCgPBOeXtrtAy57AAHGj01w+ZdMEE5gYQIYQYBhoM8+IkdJsHeoYFFwNcBU2EFQCKc8HBaBVSQwA2PDCvKAgTDAQKg9wpGh0bCnGnAQNEdcyC1VpT1IS9VeHnnbKQg973gXDovAAkEDY8Mf6CsYTSYI/Yiig+Ch5miK1yPAnEpCsHun4i5m6IcGZOewj8IPAswk/G2hSQcThJEJguEGof9LUW7ByIDXLDqreNBUjeA6tvBBEUaxMFHBgPCJV19ohDEy/CBMgUkACKSWbhA+XCD0gSXIAIPQdz7cioOAMgmiL4yYiOeUQg+C/iVBUO5GzeUbBIIBAswrXQOD8MvZMI6BgOIG0cNFs6PsGnhcE+ZVCikI0U8NNrb2CELrb7O5BHf6yx38FxGExVxRLqFBcEV6nkfezAlIwQ62he1IkhkHhQAEgo8AM46iFThE7REE5XXZbBrgJ7r0RBBAWDGHDqPfs4/JLYMAsfRinPloVAhAKBDq79id5tc+QYCDw6hj/e4G4XlhnZ25FUE6RXgIFhVOCpano5ys0BvqVNbc9eFB0IkpVman+bVXEDLAJIzuzN/JIMyBu9hvYM0IIJilsoLlqOZyMwLPwZZYsAUDQp6RDs0Rx8eScHRE1F5BQG7CyEBp0enfV/hjZoHwgcKEtwUsbsdnUkgLZZjzsPjSQj7KoUYT7qlLnXWdAgGhCE4qrbtpokFAnd7BG1U+BYL/ojTzvyPgMb7AXzVEwGyJfrzBo9WvOyQOyG9wsQo6SY5RjIqHSQLxQeo0yXvIM+xsICCgFSFPiTkTeFaI82iwYv7zi6/uGQRFG0ES7jYJ5NXLZtrkBa6qdFLz2kLyq3zWpb34Va2XGQGUVdtzhd9JxSvy8wVRepwaCAhxs78Vb+kyGufIxmLyORfU1L5BUPSfwFEAKLy5P9ZmaDmdziOhCeWdTkWLBLVtL05cL6H19eiz1Pl1o8R4s9znuG1+RLj3UahRIY7TATmL1jp6bReOMXQXXNAGDehKtz/55qitQahzggDufDg8NEfLPy9zdCS6Np2dDBwPOeCqUmLFmGrrqJ1LHD9Y/2BlVFrndqP7SXlyb/+TNAiYKYtEtaUrWrrgjDmCihpSa9N3WkUdjMRL5sNmdJdQR3fDcbGuafVsebsXLn0KBM4qgcw7QMEwAAxgnDA+PtZPyi9m5O3pS/BiCzGbIi9XaCtLakTNMOjup57t+2wXIMAyCQ7HLl0m9JfZrkvpNL+CAAFY4/+WI1THunnIYbFYvLDcY8qj4ym83F9NcAQS2XO8ldqj05N3bmd7YQGCAHBMJ11Alv3siGsZ721eJ4BAYC1PRBN0a0Tmht/eRwAGs6rZ+Oi8EgcFU4w1J4HWIzzUcZEzNGzlHffMUcnHyc5vVstu27ycb/0CUPsGLQnddVq8Oi72er0s136z69XGtxsa9HG1Ot4mM6WNq2PBeSBt+jL77/V19jYlL8+/lu8LQFvpbD6fTQt2W2+lx9lqnKuVVu0lS0XX8VWzxS1e6ZrRNIehbsXrPs8yfkZ6PJsvpvf5utGA5fPiDql/RQd6JbBU2ARBEFsQTepbqrel/yr1zXSxZQQk9b0ERwbCWutS/5qu5MggpVi1hofuhNTBhdZL3EmBttQXVh2tFCNSZyj1fRSHy3mlFD1WNNPlW73AUurra/1OV0vbvodc6qvLVWXQ/UaTJlKCqufWGPC881vqO0uLV6tx9uy0lJSUlJSUlJSUlJSU1F70P1DtbglHXxFMAAAAAElFTkSuQmCC"),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email Address", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Password", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.teal, Colors.orange])),
                  child: TextButton(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: RichText(
                      text: TextSpan(
                          text: "Don't Have an account?",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          children: [
                        TextSpan(
                            text: 'Sing Up',
                            style: TextStyle(
                                color: Colors.deepPurpleAccent, fontSize: 15),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
