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
                <h3 class=" colorJaune">Menu</h3>
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
                            src="{{ asset('img/NAV1logoistresfc.png') }}" alt="logo du Club"></a>
                </div>
                <button type="button" id="sidebarCollapse" class="btn btn-light bgColorViolet bgColorGris btnMenu">
                    <i class="fas fa-align-left"></i>
                    <span>MENU</span>
                </button>
            </div>
            <main>

                @yield('content')

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
                    <ul class="list-group list-group-horizontal mt-5">
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet"
                                href="{{ route('national3') }}">National 3</li></a>
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet" href="">??? ??? ???
                        </li></a>
                    </ul>
                    <ul class="list-group list-group-horizontal">
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet"
                                href="{{ route('pageContact') }}">Nous Contacter</li></a>
                        <li class="list-group-item col-6 mt-2 bgTransparent"><a class="colorViolet" href="">Mentions
                                Légales</li></a>
                    </ul>
                    <i class="fab fa-facebook-square mt-5 mx-auto col-12 text-center"><a href=""> Suivez notre passion
                            sur Facebook</a></i>
                </section>

                <!-- ----------------------------------------------------------- -->
                <section class="text-center col-sm-2 col-md-12 col-lg-4 row mx-auto sectionLogo">
                    <img src="./img/logoIstresPlastique.png" class="col-lg-6 col-sm-8 col-md-6 mx-auto p-0" alt="">
                </section>
                <!-- --------------------------------- -->
                <!-- IMAGE QUI MENE VERS LE COTE ADMINISTRATEUR -->
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
