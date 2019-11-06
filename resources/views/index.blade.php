<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


    <!-- CSS ANIMATION AOS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!-- FONTS FAMILY -->
    <link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">
    <!-- MON CSS -->
    <link rel="stylesheet" href="{{ asset('css/base.css') }}">
    <!-- FONT AWESOME -->
    <script src="https://kit.fontawesome.com/a17696d4aa.js" crossorigin="anonymous"></script>
    <!-- LOGO DANS LES ONGLETS DU NAVIGATEUR -->
    <link rel="icon" type="image/png" href="{{ asset('img/NAV1logoistresfc.png') }}" />
    <!-- CSS SCROLLBAR -->
    <link rel="stylesheet" href="{{ asset('css/jquery.mCustomScrollbar.min.css') }}">
    <!-- CSS BOOTSTRAP -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet" type="text/css" />

    <title>Istres Fc | Site Officiel du Club</title>
</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div id="dismiss">
                <i class="fas fa-arrow-left"></i>
            </div>

            <div class="sidebar-header">
                <h3 class="colorJaune">Menu</h3>
            </div>
            <ul class="list-unstyled components mx-auto colorJaune">
                <li>
                    <a href="{{ route('index') }}">ACCUEIL</a>
                </li>


                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">EQUIPES</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a class="dropdown-item lienNav" href="{{ route('national3') }}">National 3</a>
                        </li>
                        <li>
                            <a class="dropdown-item lienNav" href="{{ route('U19') }}">U19 National</a>
                        </li>
                        <li>
                            <a class="dropdown-item lienNav" href="{{ route('U18') }}">U18 Regional 2</a>
                        </li>
                        <li>
                            <a class="dropdown-item lienNav" href="{{ route('U17') }}">U17 National</a>
                        </li>
                        <li>
                            <a class="dropdown-item lienNav" href="{{ route('U16_R2') }}">U16 Regional 2</a>
                        </li>
                        <li>
                            <a class="dropdown-item lienNav" href="{{ route('U16_D1') }}">U16 Division 1</a>
                        </li>
                        <li>
                            <a class="dropdown-item lienNav" href="{{ route('U15_D1') }}">U15 Division 1</a>
                        </li>
                        <li>
                            <a class="dropdown-item lienNav" href="{{ route('U14_D1') }}">U14 Division 1</a>
                        </li>
                        <li>
                            <a class="dropdown-item lienNav" href="{{ route('reserve_D3') }}">Réserve D3</a>
                        </li>
                    </ul>
                <li>
                    <a href="#">PORTFOLIO</a>
                </li>
                <li>
                    <a href="{{ route('pageContact') }}">CONTACT</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">
            <div class=" bgColorViolet barHeader">
                <div class="col-5 mx-auto text-center">
                    <a href="{{ route('index') }}"><img class="logoNav col-sm-5 col-md-6 col-lg-6"
                            src="{{ asset('img/NAV1logoistresfc.png') }}" alt="logo Istres FC"></a>
                </div>
                <button type="button" id="sidebarCollapse" class="btn btn-light bgColorViolet bgColorGris btnMenu">
                    <i class="fas fa-align-left"></i>
                    <span>MENU</span>
                </button>
            </div>
            <main>
                <!-- CAROUSEL DE L'ACCUEIL -->
                <div class="bd-example mb-5 mt-3 contour1" data-aos="fade-down">
                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner contour1">
                            <div class="carousel-item active">
                                <img src="./img/imageAccroche.jpg" class="w-100" alt="Image Accueil">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- SECTION PROCHAIN MATCH -->
                <section class="col-12 contour colorViolet" data-aos="fade-up">
                    <h2>Prochain Match</h2>
                    <hr class="bgColorYellow col-4 mb-3">
                    <div class="col-sm-10 col-md-8 col-lg-6 row p-0 mx-auto imgRencontre">
                        @foreach($prochrencontres as $prochrencontre)
                        <img class="col-5 text-center p-0" src="storage/{{ $prochrencontre->logodom }}"
                            alt="equipe domicile">
                        <h5 class="col-2 p-0 text-center mt-5 font-weight-bold">VS</h5>
                        <img class="col-5 text-center p-0" src="storage/{{ $prochrencontre->logoext }}"
                            alt="equipe exterieur">
                    </div>
                    <h4 class="text-center mt-2">{{ $prochrencontre->date }}<br>{{ $prochrencontre->heure }}</h4>
                    <hr class="bgColorYellow col-4 mb-3">
                    <h4 class="text-center pb-3">{{ $prochrencontre->stade }} <br> {{ $prochrencontre->codepostal }}
                        {{ $prochrencontre->ville }}</h4>
                    @endforeach
                </section>


                <!-- SECTION TABLEAU CALENDRIER ET CLASSEMENT -->
                <section class="col-12 contour" data-aos="fade-up">
                    <h2>Infos National 3</h2>
                    <hr class="bgColorYellow col-4 mb-3">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item col-6">
                            <a class="nav-link p-0" id="home-tab" data-toggle="tab" href="#home" role="tab"
                                aria-controls="home" aria-selected="false">
                                <button type="button" class="btn btn-light  col-12 btnCouleur">Classement</button>
                            </a>
                        </li>
                        <li class="nav-item col-6">
                            <a class="nav-link p-0" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                                aria-controls="profile" aria-selected="false">
                                <button type="button" class="btn btn-light  col-12 btnCouleur">Calendrier</button>
                            </a>
                        </li>
                    </ul>

                    <!-- TABLEAU CLASSEMENT -->
                    <div class="tab-content" id="myTabContent">
                        <br>
                        <div class="tab-pane fade show mx-auto" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <h3>Classement</h3>
                            <hr class="bgColorYellow col-4">
                            <table class="table">
                                <thead class="bgColorViolet colorJaune">
                                    <tr>
                                        <td scope="col">#</td>
                                        <td scope="col">Equipe</td>
                                        <td scope="col">MJ</td>
                                        <td scope="col">DB</td>
                                        <td scope="col">Points</td>
                                    </tr>
                                </thead>
                                <tbody class="colorViolet">
                                    <tr>
                                        <td scope="row">1</td>
                                        <td>IstresFC</td>
                                        <td>11</td>
                                        <td>+3</td>
                                        <td>24</td>
                                    </tr>
                                    <tr>
                                        <td scope="row">2</td>
                                        <td>Arsenal</td>
                                        <td>10</td>
                                        <td>-1</td>
                                        <td>18</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- ------------------------------------------------------------------------ -->

                        <!-- TABLEAU CALENDRIER -->
                        <div class="tab-pane fade text-center" id="profile" role="tabpanel"
                            aria-labelledby="profile-tab">
                            <table class="table">
                                <h3>Calendrier</h3>
                                <hr class="bgColorYellow col-4">
                                <thead class="bgColorViolet colorJaune">
                                    <tr>
                                        <td scope="col">Domicile</td>
                                        <td scope="col">Exterieur</td>
                                        <td scope="col">Date</td>
                                        <td scope="col">Heure</td>
                                    </tr>
                                </thead>
                                <tbody class="colorViolet">
                                    <tr>
                                        <td scope="row">Istres FC</td>
                                        <td>HyeresFC</td>
                                        <td>28/09/19</td>
                                        <td>17h00</td>
                                    </tr>
                                    <tr>
                                        <td scope="row">Balagne</td>
                                        <td>IstresFC</td>
                                        <td>05/10/19</td>
                                        <td>17h00</td>
                                    </tr>
                                    <tr>
                                        <td scope="row">Balagne</td>
                                        <td>IstresFC</td>
                                        <td>05/10/19</td>
                                        <td>17h00</td>
                                    </tr>
                                    <tr>
                                        <td scope="row">Balagne</td>
                                        <td>IstresFC</td>
                                        <td>05/10/19</td>
                                        <td>17h00</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
                <!--  FIN DES SECTIONS CALENDRIER ET CLASSEMENTS------------- -->

                <div class="row">
                    <!-- SECTION  CAROUSEL DES 3 DERNIERS ARTICLES MISE EN BDD -->
                    <section class="col-xl-5 col-md-10 col-sm-10 mx-auto contour p-0" data-aos="fade-right">
                        <h2>News National 3</h2>
                        <hr class="bgColorYellow col-4">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <!-- CARTE EN CAROUSEL -->
                                <!-- INCREMENTATION POUR ENVOYER LES 3 DERNIER DES ARTICLES DE LEQUIPE NATIONAL3 -->
                                {{$i = 0}}
                                @foreach( $articles as $article)

                                <div class="carousel-item {{ ($i == 0)? "active" : "" }}">
                                    <div class="card mb-3 bgTransparent borderViolet">
                                        <img src="storage/{{ $article->photo }}" class="card-img-top imgArticle"
                                            alt="image article">
                                        <div class="card-body text-center colorViolet borderViolet">
                                            <h5 class="card-title">{{ substr($article->titre, 0,50) }}</h5>
                                            <p class="card-text">{{ substr($article->texte, 0,150) }} .....</p>
                                            <p class="card-text"><small
                                                    class="text-muted">{{ $article->created_at }}</small></p>
                                        </div>
                                    </div>
                                </div>
                                {{ $i++ }}
                                @endforeach
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                                data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Précédent</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                                data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Suivant</span>
                            </a>
                        </div>
                    </section>
                    <!-- --------------------------------------------------------------- -->

                    <!-- SECTION DERNIER ARTICLES DE L'EQUIPE 1 -->
                    <section class="col-xl-5 col-md-10 col-sm-10 mx-auto contour p-0" data-aos="fade-left">
                        <h2>News Club</h2>
                        <hr class="bgColorYellow col-4">
                        <div id="carouselExampleControls1" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <!-- INCREMENTATION POUR ENVOYER LES 3 DERNIER DE TOUT LES ARTICLES-->
                                {{$e = 0}}
                                @foreach( $articleAlls as $articleAll)
                                <div class="carousel-item {{ ($e == 0)? "active" : "" }}">
                                    <!-- CARTE EN CAROUSEL -->
                                    <div class="card mb-3 bgTransparent borderViolet ">
                                        <img src="storage/{{ $articleAll->photo }}" class="card-img-top imgArticle"
                                            alt="image Article">
                                        <div class="card-body text-center colorViolet borderViolet">
                                            <h5 class="card-title">{{ substr($articleAll->titre, 0,50) }} .....</h5>
                                            <p class="card-text">{{ substr($articleAll->texte, 0,150) }} .....</p>
                                            <p class="card-text"><small
                                                    class="text-muted">{{ $articleAll->created_at }}</small></p>
                                        </div>
                                    </div>
                                </div>
                                {{ $e++ }}
                                @endforeach
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls1" role="button"
                                data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Précédent</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls1" role="button"
                                data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Suivant</span>
                            </a>
                        </div>
                    </section>
                </div>
                <!-- ---------------------------------------------------- -->
                <!-- CAROUSEL POUR LES PARTENAIRES -->

                <section class="container mb-3 contour pb-3" data-aos="fade-up">
                    <h2>Nos Partenaires</h2>
                    <hr class="bgColorYellow col-4">

                    <!--Carousel Wrapper-->
                    <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
                        <!--Slides-->
                        <div class="carousel-inner" role="listbox">
                            <!--First slide-->
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logoConseil.jpg" alt="partenaire conseil général">
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logoIstres.png" alt="partenaire ville de Istres">
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logomiroiterie.png"
                                                alt="partenaire miroiterie Istres">
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logoSamalu.jpg" alt="partenaire SAM alu">
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logoEntrepot.jpg" alt="partenaire Entrepot Istres">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/.First slide-->

                            <!--Second slide-->
                            <div class="carousel-item">
                                <div class="row">
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logoLeclerc.jpg" alt="partenaire Leclerc">
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logoMistral.jpg" alt="partenaire Mistral">
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logoSimc.png" alt="partenaire SIMC">
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logoTaxi.jpg" alt="partenaire Taxi">
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-2 col-md-3 mx-auto">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="./img/logoKipsta.png" alt="partenaire Kispta">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/.Second slide-->
                        </div>
                        <!--/.Slides-->
                    </div>
                    <!--/.Carousel Wrapper-->
                </section>
            </main>
            <!-- FOOTER -->
            <footer class="row colorViolet mx-auto contour p-3" data-aos="fade-up">
                <hr>
                <!-- SECTION FOOTER ADRESSE CONTACT -->
                <section class="col-lg-4 col-md-12 row mx-auto">
                    <div class="col-lg-12 col-md-6 col-sm-6 text-center mx-auto">
                        <h3>Stade du IstresFC</h3>
                        <p>Stade Parsemain <br>Route National 569<br>13270 Fos-Sur-Mer</p>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 text-center mx-auto">
                        <h3>Siege Social</h3>
                        <p>Stade A. Audibert<br>Allee A. Blanc,route Demartigues <br>13800 Istres</p>
                    </div>
                </section>
                <!----------------------------------------------------------- -->

                <!-- SECTION RAPPEL DES PAGES DU SITE AVEC LOGO DU CLUB-->

                <section class="text-center col-sm-12 col-md-12 col-lg-4">
                    <ul class="list-group list-group-horizontal">
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet"
                                href="{{ route('national3') }}">Les Equipes</li></a>
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet" href="">Classement
                        </li></a>
                    </ul>
                    <ul class="list-group list-group-horizontal">
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet"
                                href="{{ route('pageContact') }}">Nous Contacter</li></a>
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet" href="">Calendrier
                        </li></a>
                    </ul>
                    <ul class="list-group list-group-horizontal">
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet" href="">Portfolio
                        </li></a>
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet" href="">Mentions
                                Légales</li></a>
                    </ul>
                    <i class="fab fa-facebook-square mt-5 mx-auto col-12 text-center"><a href=""> Suivez notre actualité
                            aussi sur Facebook</a></i>
                </section>

                <!-- ----------------------------------------------------------- -->
                <section class="text-center col-sm-2 col-md-12 col-lg-4 row mx-auto sectionLogo">
                    <img src="./img/logoIstresPlastiqueFooter.png" class="col-lg-6 col-sm-8 col-md-6 mx-auto p-0"
                        alt="">
                </section>
                <!-- --------------------------------- -->
                <a class="mx-auto" href="{{route('admin')}}"><img src="./img/ballon.png" alt=""></a>

            </footer>
            <p class="text-center text-light mx-auto col-12 pt-3">Site Réalisé par <a class="text-light"
                    href="https://www.astor.website/">Astor.website</a></p>
            <!-- SCRIPT POUR LES ANIMATION AOS -->
            <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        </div>
    </div>

    <div class="overlay"></div>
    <!-- SCRIPT POUR LES ANIMATION AOS -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</body>

<!-- INITIALISATION DES ANIMATION AOS -->
<script>
    AOS.init();

</script>
<!-- SCRIPT JQUERY -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
</script>
<!-- Popper.JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
    integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous">
</script>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
    integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous">
</script>
<!-- jQuery Custom Scroller CDN -->
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js">
</script>

<!-- SCRIPT POUR LA SIDEBAR -->
<script type="text/javascript">
    $(document).ready(function () {
        $("#sidebar").mCustomScrollbar({
            theme: "minimal"
        });

        $('#dismiss, .overlay').on('click', function () {
            $('#sidebar').removeClass('active');
            $('.overlay').removeClass('active');
        });

        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').addClass('active');
            $('.overlay').addClass('active');
            $('.collapse.in').toggleClass('in');
            $('a[aria-expanded=true]').attr('aria-expanded', 'false');
        });
    });

</script>

</html>
