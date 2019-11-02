<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendEmail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    public $name;
    public $prename;
    public $subject;
    public $text;
    public $mail;


    public function __construct($nom, $prenom, $sujet, $texte, $mail)
    {
        $this->name = $nom;
        $this->prename = $prenom;
        $this->subject = $sujet;
        $this->text = $texte;
        $this->mail = $mail;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $nom = $this->name;
        $prenom = $this->prename;
        $sujet = $this->subject;
        $texte = $this->text;
        $mail = $this->mail;
        return $this->view('sendemail', compact('nom','prenom','sujet','texte','mail'));
    }
}
