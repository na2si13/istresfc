        @extends('layouts.app')

        @section('content')

        <div class="col-12 text-center contour premierSection pb-3" data-aos="fade-up">
            <h1>Articles</h1>
        </div>
        <article class="card bgColorGris contour col-lg-8 col-sm-12 col-md-10 text-center mx-auto">
            <img src="/storage/{{ $article->photo }}" class="card-img-top mt-2" alt="photo de l'article">
            <div class="card-body colorViolet">
                <h5 class="card-title">{{ $article->titre }}</h5>
                <p class="card-text">{{ $article->texte }}</p>
                <p class="card-text"><small class="text-muted">{{ $article->created_at }}</small></p>
            </div>
            <!-- <a class="mx-auto" href="{{ back() }}">Retour à la liste</a> -->
        </article>




        <!-- ------------------------------------------------------------------- -->

        @endsection
