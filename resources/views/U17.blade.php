@extends('layouts.app')

@section('content')

<!-- SECTION TABLEAU CALENDRIER ET CLASSEMENT -->
<section class="col-12 text-center contour premierSection" data-aos="fade-up">
    <h1>Equipe U17</h1>
    <hr class="bgColorYellow col-4 mb-3">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item col-6 col-lg-4">
            <a class="nav-link p-0 mb-2" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
                aria-selected="false">
                <button type="button" class="btn btn-light btnCouleur col-12">Classement</button>
            </a>
        </li>
        <li class="nav-item col-6 col-lg-4">
            <a class="nav-link p-0 mb-2" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                aria-controls="profile" aria-selected="false">
                <button type="button" class="btn btn-light btnCouleur col-12">Calendrier</button>
            </a>
        </li>
        <li class="nav-item col-6 col-lg-4 mx-auto">
            <a class="nav-link p-0 mb-2" id="equipe-tab" data-toggle="tab" href="#equipe" role="tab"
                aria-controls="equipe" aria-selected="false">
                <button type="button" class="btn btn-light btnCouleur col-12">Equipe</button>
            </a>
        </li>
    </ul>


    <!-- TABLEAU CLASSEMENT -->
    <div class="tab-content" id="myTabContent">
        <br>
        <div class="tab-pane fade show mx-auto" id="home" role="tabpanel" aria-labelledby="home-tab">
            <h2 class="colorViolet">Classement</h2>
            <hr class="bgColorYellow col-4 mb-3">
            <table class="table">
                <thead class="bgColorViolet colorJaune">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Equipe</th>
                        <th scope="col">MJ</th>
                        <th scope="col">DB</th>
                        <th scope="col">Points</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                        <td>@mdo</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- ------------------------------------------------------------------------ -->

        <!-- TABLEAU CALENDRIER -->
        <div class="tab-pane fade text-center" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <h2 class="colorViolet">Calendrier</h2>
            <hr class="bgColorYellow col-4 mb-3">
            <table class="table">
                <thead class="bgColorViolet colorJaune">
                    <tr>
                        <td scope="col">Domicile</th>
                        <td scope="col">Exterieur</th>
                        <td scope="col">Date</th>
                        <td scope="col">Heure</th>
                    </tr>
                </thead>
                <tbody class="colorViolet">
                    <tr>
                        <td scope="row">Istres FC</th>
                        <td>HyeresFC</th>
                        <td>28/09/19</th>
                        <td>17h00</th>
                    </tr>
                    <tr>
                        <td scope="row">Balagne</th>
                        <td>IstresFC</td>
                        <td>05/10/19</td>
                        <td>17h00</th>
                    </tr>
                    <tr>
                        <td scope="row">Balagne</th>
                        <td>IstresFC</td>
                        <td>05/10/19</td>
                        <td>17h00</th>
                    </tr>
                    <tr>
                        <td scope="row">Balagne</th>
                        <td>IstresFC</td>
                        <td>05/10/19</td>
                        <td>17h00</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- CARTE DES JOUEURS -->
        <div class="tab-pane" id="equipe" aria-labelledby="equipe-tab">
            <h2 class="colorViolet">Equipe</h2>
            <hr class="bgColorYellow col-4 mb-3">
            <div class="row">

                <div class="col-lg-6 col-md-6 col-sm-12">
                    <h3>Entraineurs</h3>
                    <hr class="bgColorYellow col-4 mb-3">
                    <div class="row">

                        @foreach($entraineurs as $entraineur)
                        <div class="bgColorViolet colorJaune  col-lg-4 col-md-5 mb-2 col-10 mx-auto">
                            <h2>Entraineur</h2>
                            <img src="storage/{{ $entraineur->photo }}" class="card-img imgJoueur" alt="photo entraineur">
                            <p>{{ $entraineur->nom }}</p><br>
                        </div>
                        @endforeach
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 col-sm-12">
                    <h3>Photo Equipe</h3>
                    <hr class="bgColorYellow col-4 mb-3">
                    @foreach($equipes as $equipe)
                    <img src="storage/{{ $equipe->photo }}" class="card-img mt-3 col-12" alt="photo équipe">
                    @endforeach
                </div>
            </div>


            <!-- DIV POUR RENDRE LES CARTES EN ROW -->
            <h2 class="colorViolet">Joueurs</h2>
            <hr class="bgColorYellow col-4 mb-3">
            <div class="col-12 row mx-auto justify-content-around">
                @foreach($gardiens as $gardien)
                <div class="card bgColorViolet colorJaune CouleurArticle col-lg-2 col-md-4 col-10 mt-4 ml-2">
                    <img src="storage/{{ $gardien->photo }}" class="card-img mt-3 imgJoueur" alt="photo joueur gardien">
                    <p class="m-0">{{ $gardien->nom }}<br>
                        {{ $gardien->prenom }}
                        <hr class="m-0 bgColorYellow">
                        {{ $gardien->poste}}<br>
                        {{ $gardien->annee }}</p>
                </div>
                @endforeach
            </div>

            <div class="col-12 row mx-auto justify-content-around">
                @foreach($defenseurs as $defenseur)
                <div class="card bgColorViolet colorJaune CouleurArticle col-lg-2 col-md-4 col-10 mt-4 ml-2">
                    <img src="storage/{{ $defenseur->photo }}" class="card-img mt-3 imgJoueur" alt="photo joueur défenseur">
                    <p class="m-0">{{ $defenseur->nom }}<br>
                        {{ $defenseur->prenom }}
                        <hr class="m-0 bgColorYellow">
                        {{ $defenseur->poste}}<br>
                        {{ $defenseur->annee }}</p>
                </div>
                @endforeach
            </div>

            <div class="col-12 row mx-auto justify-content-around">
                @foreach($milieux as $milieu)
                <div class="card bgColorViolet colorJaune CouleurArticle col-lg-2 col-md-4 col-10 mt-4 ml-2">
                    <img src="storage/{{ $milieu->photo }}" class="card-img mt-3 imgJoueur" alt="photo joueur milieu">
                    <p class="m-0">{{ $milieu->nom }}<br>
                        {{ $milieu->prenom }}
                        <hr class="m-0 bgColorYellow">
                        {{ $milieu->poste}}<br>
                        {{ $milieu->annee }}</p>
                </div>
                @endforeach
            </div>

            <div class="col-12 row mx-auto justify-content-around">
                @foreach($attaquants as $attaquant)
                <div class="card bgColorViolet colorJaune CouleurArticle col-lg-2 col-md-4 col-10 mt-4 ml-2">
                    <img src="storage/{{ $attaquant->photo }}" class="img-fluid card-img mt-3 imgJoueur" alt="photo joueur attaquant">
                    <p class="m-0">{{ $attaquant->nom }}<br>
                        {{ $attaquant->prenom }}
                        <hr class="m-0 bgColorYellow">
                        {{ $attaquant->poste}}<br>
                        {{ $attaquant->annee }}</p>
                </div>
                @endforeach
            </div>
        </div>
    </div>

    <!-- ---------------------------------->
</section>
<!--  FIN DES SECTIONS CALENDRIER, CLASSEMENTS, EQUIPE------------- -->

<!-- SECTION ARTICLES DE L'EQUIPE -->
<h2 class="text-light">News de l'équipe</h2>
<hr class="bgColorYellow col-4 mb-3">
<article class="row col-12 mx-auto text-center">
    @foreach($articles as $article)
    <div class="card col-lg-5 col-sm-10 col-md-5 mr-2 mx-auto mt-3 mb-3 bgTransparent colorViolet contour bgColorGris"
        style="width: 18rem;" data-aos="flip-left">
        <img src="storage/{{ $article->photo }}" class="card-img-top mt-1 imgArticle" alt="image article">
        <div class="card-body">
            <h5 class="card-title">{{ substr($article->titre, 0,50) }}</h5>
            <p class="card-text">{{ substr($article->texte, 0,150) }} .....</p>
            <a href="{{ URL::action('HomeController@afficheArticle', $article->id) }}"
                class="btn btn-light btnCouleur">Lire l'article</a>
        </div>
    </div>
    @endforeach
</article>
<!-- Pagination a partir de 10 articles -->
<div class="col-1 mx-auto mr-4">
    {{ $articles->links() }}
</div>
<!-- ------------------------------------------------------------------- -->

@endsection
