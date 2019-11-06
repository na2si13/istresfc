@extends('layouts.app')

@section('content')

<!-- -------------------------------- -->
<div class="col-12 p-0 text-center contour premierSection pb-3" data-aos="fade-up">
    <h1 class="text-center colorViolet">Nous Contacter</h1>
    <hr class="bgColorYellow col-4">
</div>
<br>
<!-- MESSAGE DE REUSSITE POUR LE FORMULAIRE MAIL -->
@if(Session::has('success'))
<div class="alert alert-success">
    {{ Session::get('success') }}
    @php
    Session::forget('success');
    @endphp
</div>
@endif
<!-- -------------------------------------------------- -->
<div class="row mx-auto text-center">
    <!-- FORMULAIRE DE CONTACT -->
    <div class="col-md-12 col-sm-12 col-lg-5 p-lg-0 p-md-0 contour p-3 mx-auto" data-aos="fade-right">
        <h2>Envoi Email</h2>
        <hr class="bgColorYellow col-4">



        <form method="POST" action="{{ url('send/sendemail') }}" class="mt-3 col-md-10 col-sm-12 mx-auto text-center">
            @csrf
            <div class="form-row">
                <div class="col">
                    <input type="text" name="nom" class="form-control mt-2" placeholder="Nom" htmlspecialchars>
                </div>
                <div class="col">
                    <input type="text" name="prenom" class="form-control mt-2" placeholder="Prénom" htmlspecialchars>
                </div>
            </div>
            <input type="email" name="mail" class="form-control mt-2" placeholder="Adresse Mail" htmlspecialchars>
            <input type="text" name="sujet" class="form-control mt-2" placeholder="Sujet" htmlspecialchars>
            <div class="form-group">
                <textarea class="form-control mt-2" name="texte" id="exampleFormControlTextarea1"
                    placeholder="Votre Message" rows="3" htmlspecialchars></textarea>
            </div>
            <button type="submit" name="envoyer" class="btn btnCouleur mb-3">Envoyer</button>
        </form>
    </div>
    <div class="col-md-12 col-sm-12 col-lg-5 p-lg-0 p-md-0 contour p-3 mx-auto" data-aos="fade-left">
        <h2>Google Map</h2>
        <hr class="bgColorYellow col-4">
        <iframe class="mt-3 mb-3 col-md-10 col-sm-12"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2895.607576754845!2d4.946793414695237!3d43.46878927235519!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12b61970c83a28d5%3A0x4324bae2c534524f!2sStade%20Parsemain!5e0!3m2!1sfr!2sfr!4v1570391721123!5m2!1sfr!2sfr"
            width="400" height="300" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
    </div>
</div>

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
                            <img class="card-img-top" src="./img/logomiroiterie.png" alt="partenaire miroiterie Istres">
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

@endsection
