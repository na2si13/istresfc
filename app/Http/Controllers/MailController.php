<?php

namespace App\Http\Controllers;

use App\Mail\SendEmail;
use Illuminate\Http\Request;
use Mail;

class MailController extends Controller
{
    public function sendemail(Request $get){
        $this->validate($get, [
            "nom" => "required",
            "prenom" => "required",
            "sujet" => "required",
            "texte" => "required",
            "mail" => "required"
        ]);
        

        $nom = $get->nom;
        $prenom = $get->prenom;
        $sujet = $get->sujet;
        $texte = $get->texte;
        $mail = $get->mail;
        
        Mail::to('joseph.astor13@gmail.com')->send( new SendEmail($nom, $prenom, $sujet, $texte, $mail) );     

        return back()->with('success', 'Bravo votre message a bien été envoyé.');

    }
}