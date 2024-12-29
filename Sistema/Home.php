<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <link rel="stylesheet" href="./css/Home.css">
  <link rel="stylesheet" href="./css/Card.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>


</head>

<body>
  <!-- NAVBAR -->
  <header>
    <input type="checkbox" name="" id="chk1">
    <div id="logo">
      <h1>TEC.VARIEDADES</h1>
    </div>
    <div id="search-box">
      <form action="">
        <input type="text" name="search" id="srch" placeholder="pesquisa">
        <button type="submit"><i class="fa fa-search"></i></button>
      </form>
    </div>
    <ul>
      <li><a href="./home.php">Menu</a></li>
      <li><a href="#">Categoria</a></li>
      <li><a href="./Carrinho.php">Carrinho</a></li>
      <li><a href="./Login.php">Login - Cadastro</a></li>
      <li>
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
      </li>
    </ul>
    <div id="menu">
      <label for="chk1">
        <i class="fa fa-bars"></i>
      </label>
    </div>
  </header>
  <!-- NAVBAR -->

  <!-- SHOWCASE 1° -->
  <div class="Bane">
    <header class="Showcase">
      <h1>Promoções de Surface</h1>
      <p>
        Superfícies selecionadas já estão à venda - poupe enquanto durarem os
        consumíveis
      </p>
      <a href="#" class="Btn">
        <h5>
          Visualizar
        </h5><i class="fas fa-chevron-right"></i>
      </a>
    </header>
  </div>
  <!-- SHOWCASE 1 -->

  <!-- CARD 1° -->
  <main class="Container">
    <section class="Products">
      <div id="all-products">
        <div id="product">
          <img src="./img/AirPod 2nd Gen.jpg">
          <div class="product-info">
            <h4 class="Product-title">AirPod </h4>
            <p class="Product-price">R$ 340,00</p>
            <div class="stars">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
            <a class="product-btn" href="#">Buy Now</a>
          </div> <!-- FIM PRODUCT-INFO  -->
        </div> <!-- FIM PRODUCT -->

        <div id="product">
          <img src="./img/apple-watch-pcq.jpg">
          <div id="product-info">
            <h4 class="product-title">Apple Watch</h4>
            <p class="product-price">R$ 580,00</p>
            <div class="stars">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
            </div>
            <a class="product-btn" href="#">Buy Now</a>
          </div> <!-- FIM PRODUCT-INFO  -->
        </div> <!-- FIM PRODUCT -->

        <div id="product">
          <img src="./img/iPhone-14.jpg" alt="SEM IMAGEM">
          <div id="product-info">
            <h4 class="product-title">Iphone 14</h4>
            <p class="product-price">R$ 4.800</p>
            <div class="stars">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
            </div>
            <a class="product-btn" href="#">Buy Now</a>
          </div> <!-- FIM PRODUCT-INFO  -->
        </div> <!-- PRODUCT -->

        <div id="product">
          <img src="./img/ipad-pro.jpg" alt="SEM IMAGEM">
          <div id="product-info">
            <h4 class="product-title">Ipad Pro</h4>
            <p class="product-price">R$ 2.500</p>
            <div class="stars">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
            </div>
            <a class="product-btn" href="#">Buy Now</a>
          </div> <!-- PRODUCT-INFO  -->
        </div> <!-- PRODUCT -->
      </div> <!-- ALL-PRODUCTS -->
    </section> <!-- SECTION-PRODUCTS -->
  </main>
  <!-- CARD 1°-->

  <!-- LISTA PRETA -->
  <div id="lista">
    <P> - DESTAQUES - </P>
  </div>
  <!-- LISTA PRETA -->
  <!-- CARDS 2° -->
  <!-- CARD 1° -->
  <div class="Cards">
    <div class="Card">
      <div id="circle"></div>
      <div id="content">
        <h2>Samsung Galaxy</h2>
        <h2 id="h2">Note 8</h2>
        <h4>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat saepe alias obcaecati ipsam tenetur optio
          veritatis nostrum eum.</h4>
        <a href="#">Saiba Mais</a>
      </div>
      <img src="./img/pngwing.com (6).png" alt="">
    </div>
    <!-- CARD 1° -->
    <!-- CARD 2° -->
    <div class="Card2">
      <div id="circle"></div>
      <div id="content">
        <h2>Samsung Galaxy</h2>
        <h2 id="h2"></h2>
        <h4>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit aperiam, quisquam earum sed optio tenetur
          laboriosam corrupti illo ea voluptas maiores error porro tempora, autem doloremque? Natus nostrum magnam veritatis?
        </h4>
        <a href="#">Saiba Mais</a>
      </div>
      <img src="./img/pngwing.com (5).png" alt="" id="sams">
    </div>
    <!-- CARDS 2° -->
    <!-- CARDS 3° -->
    <div class="Card3">
      <div id="circle"></div>
      <div id="content">
        <h2>TEXTO</h2>
        <h2 id="h2"></h2>
        <h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus, facere harum. At iste laborum sit
          eligendi dolores! Dicta, ullam nam? Non odit aliquid deserunt accusantium soluta sit nostrum explicabo quia.
        </h4>
        <a href="#">Saiba Mais</a>
      </div>
      <img src="./img/iphone14.png.png" alt="" id="sams">
    </div>
  </div>
  <!-- CARDS 3° -->

  <!-- SHOWCASE 2° -->
  <!-- SHOWCASE 2° -->

  <!-- CARD 4° -->
  <!-- CARD 4° -->

  <!-- FOOTER -->
  <footer>
    <div id="footer_content">
      <div id="footer_contacts">
        <h1>Logo</h1>
        <p id="text">It's all about your dream</p>
        <div id="footer_social_media">

          <a href="#" class="footer-link" id="instagram">
            <i class="fa-brands fa-instagram"></i>
          </a>


          <a href="#" class="footer-link" id="facebook">
            <i class="fa-brands fa-facebook"></i>
          </a>


          <a href="#" class="footer-link" id="whatsapp">
            <i class="fa-brands fa-whatsapp"></i>
          </a>

        </div>
      </div> <!-- FOOTER_CONTENTS -->

      <ul class="footer-list">
        <li>
          <h3>Blog</h3>
        </li>
        <li>
          <a href="#" class="footer-link">Tech</a>
        </li>
        <li>
          <a href="#" class="footer-link">Adventures</a>
        </li>
        <li>
          <a href="#" class="footer-link">Music</a>
        </li>
      </ul>

      <ul class="footer-list">
        <li>
          <h3>Products</h3>
        </li>
        <li>
          <a href="#" class="footer-link">App</a>
        </li>
        <li>
          <a href="#" class="footer-link">Desktop</a>
        </li>
        <li>
          <a href="#" class="footer-link">Cloud</a>
        </li>
      </ul>

      <div id="footer_subscribe">
        <h3>Subscribe</h3>

        <p>
          Enter your e-mail to get notified about our news solutions.
        </p>

        <div id="input_group">
          <input type="email" id="email">
          <button>
            <i class="fa-solid fa-envelope" style="color: #000000;"></i>
          </button>
        </div>
      </div> <!-- FOOTER _SUBSCRIBE -->
    </div> <!-- FOOTER_CONTENT -->

    <div id="footer_copyright">
      &#139
      2023 all rights reserved!
    </div>
  </footer>
  <!-- FOOTER -->
  <!-- BOTÃO DE ROLAGEM -->
  <button id="voltar">
    <i class="fa-solid fa-caret-up"></i>
  </button>
  <!-- BOTÃO DE ROLAGEM -->
  <script src="./js/Home.js"></script>
</body>

</html>