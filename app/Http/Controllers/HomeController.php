<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article as Article;
use App\Joueur as Joueur;
use App\Entraineur as Entraineur;
use App\Equipe as Equipe;
use App\Prochrencontre as Prochrencontre;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $prochrencontres = Prochrencontre::all();
        return view('index',compact('prochrencontres'));
    }
    public function afficheArticle($id){
        $article = Article::where('id', $id,'equipe')->firstOrFail();
        return view('afficheArticle', compact('article'));
     }
    public function national3()
    {
        $equipes = Equipe::all()->where('nom','National_3');
        $entraineurs = Entraineur::all()->where('equipe','National_3');
        $articles = Article::where('equipe','National_3')->paginate(10);
        $joueurs = Joueur::all()->where('equipe','National_3');
        return view('national3',compact('equipes','joueurs','articles','entraineurs'));
    } 
    public function U19()
    {
        $equipes = Equipe::all()->where('nom','U19_N');
        $entraineurs = Entraineur::all()->where('equipe','U19_N');
        $articles = Article::where('equipe','U19_N')->paginate(10);
        $joueurs = Joueur::all()->where('equipe','U19_N');
        return view('U19',compact('equipes','joueurs','articles','entraineurs'));
    }
    public function U18()
    {
        $equipes = Equipe::all()->where('nom','U18_R2');
        $entraineurs = Entraineur::all()->where('equipe','U18_R2');
        $articles = Article::where('equipe','U18_R2')->paginate(10);
        $joueurs = Joueur::all()->where('equipe','U18_R2');
        return view('U18',compact('equipes','joueurs','articles','entraineurs'));
    }
    public function U17()
    {
        $equipes = Equipe::all()->where('nom','U17_N');
        $entraineurs = Entraineur::all()->where('equipe','U17_N');
        $articles = Article::where('equipe','U17_N')->paginate(10);
        $joueurs = Joueur::all()->where('equipe','U17_N');
        return view('U17',compact('equipes','joueurs','articles','entraineurs'));
    }
    public function U16_R2()
    {
        $equipes = Equipe::all()->where('nom','U16_R2');
        $entraineurs = Entraineur::all()->where('equipe','U16_R2');
        $articles = Article::where('equipe','U16_R2')->paginate(10);
        $joueurs = Joueur::all()->where('equipe','U16_R2');
        return view('U16_R2',compact('equipes','joueurs','articles','entraineurs'));
    }
    public function U16_D1()
    {
        $equipes = Equipe::all()->where('nom','U16_D1');
        $entraineurs = Entraineur::all()->where('equipe','U16_D1');
        $articles = Article::where('equipe','U16_D1')->paginate(10);
        $joueurs = Joueur::all()->where('equipe','U16_D1');
        return view('U16_D1',compact('equipes','joueurs','articles','entraineurs'));
    }
    public function reserve_D3()
    {
        $equipes = Equipe::all()->where('nom','Reserve_D3');
        $entraineurs = Entraineur::all()->where('equipe','Reserve_D3');
        $articles = Article::where('equipe','Reserve_D3')->paginate(10);
        $joueurs = Joueur::all()->where('equipe','Reserve_D3');
        return view('reserve_D3',compact('equipes','joueurs','articles','entraineurs'));
    }
    public function U15_D1()
    {
        $equipes = Equipe::all()->where('nom','U15_D1');
        $entraineurs = Entraineur::all()->where('equipe','U15_D1');
        $articles = Article::where('equipe','U15_D1')->paginate(10);
        $joueurs = Joueur::all()->where('equipe','U15_D1');
        return view('U15_D1',compact('equipes','joueurs','articles','entraineurs'));
    }
    public function U14_D1()
    {
        $equipes = Equipe::all()->where('nom','U14_D1');
        $entraineurs = Entraineur::all()->where('equipe','U14_D1');
        $articles = Article::where('equipe','U14_D1')->paginate(10);
        $joueurs = Joueur::all()->where('equipe','U14_D1');
        return view('U14_D1',compact('equipes','joueurs','articles','entraineurs'));
    }
    public function pageContact()
    {
        return view('pageContact');
    }
}
