<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {
        $bt=$this->jquery->bootstrap()->htmlButton("bt1","Test de bouton");
        $bt->getOnClick("Index/reponseAjax","#div-ajax");
        $this->jquery->compile($this->view);
    }

    public function reponseAjaxAction()
    {
        echo "Réponse<br>Ajax";
        $this->view->disable();
    }

    public function testPostForm()
    {
        $btSubmit=$this->jquery->bootstrap()->htmlButton("bt2","valider");
        $this->jquery->postFormOnClick("#btn2", "Index/submit", "frmHtml");
    }

    public function jsonAction()
    {
        $this->jquery->jsonOn("click", "#bt1", "Index/reponseJson/1");
    }

    public function responseJsonAction($id)
    {
        $joueur=Joueur::find($id);
        echo json_encode($joueur->toArray());
    }
}