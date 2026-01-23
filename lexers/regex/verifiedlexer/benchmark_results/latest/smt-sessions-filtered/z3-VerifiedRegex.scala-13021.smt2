; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714310 () Bool)

(assert start!714310)

(declare-fun b_free!134261 () Bool)

(declare-fun b_next!135051 () Bool)

(assert (=> start!714310 (= b_free!134261 (not b_next!135051))))

(declare-fun tp!2079557 () Bool)

(declare-fun b_and!351757 () Bool)

(assert (=> start!714310 (= tp!2079557 b_and!351757)))

(declare-fun b!7321408 () Bool)

(assert (=> b!7321408 true))

(assert (=> b!7321408 true))

(declare-fun order!29403 () Int)

(declare-fun lambda!453538 () Int)

(declare-fun order!29401 () Int)

(declare-fun f!643 () Int)

(declare-fun dynLambda!29356 (Int Int) Int)

(declare-fun dynLambda!29357 (Int Int) Int)

(assert (=> b!7321408 (< (dynLambda!29356 order!29401 f!643) (dynLambda!29357 order!29403 lambda!453538))))

(declare-fun setIsEmpty!55786 () Bool)

(declare-fun setRes!55787 () Bool)

(assert (=> setIsEmpty!55786 setRes!55787))

(declare-fun setNonEmpty!55786 () Bool)

(declare-fun tp!2079555 () Bool)

(declare-fun tp_is_empty!48105 () Bool)

(assert (=> setNonEmpty!55786 (= setRes!55787 (and tp!2079555 tp_is_empty!48105))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1107 0))(
  ( (A!1108 (val!29427 Int)) )
))
(declare-fun s2!405 () (InoxSet A!1107))

(declare-fun setElem!55786 () A!1107)

(declare-fun setRest!55786 () (InoxSet A!1107))

(assert (=> setNonEmpty!55786 (= s2!405 ((_ map or) (store ((as const (Array A!1107 Bool)) false) setElem!55786 true) setRest!55786))))

(declare-fun c!1358769 () Bool)

(declare-fun lt!2604670 () A!1107)

(declare-fun s1!434 () (InoxSet A!1107))

(declare-datatypes ((Unit!164871 0))(
  ( (Unit!164872) )
))
(declare-fun call!665902 () Unit!164871)

(declare-fun bm!665897 () Bool)

(declare-fun lemmaContainsThenExists!291 ((InoxSet A!1107) A!1107 Int) Unit!164871)

(assert (=> bm!665897 (= call!665902 (lemmaContainsThenExists!291 (ite c!1358769 s1!434 s2!405) lt!2604670 (ite c!1358769 lambda!453538 lambda!453538)))))

(declare-fun b!7321405 () Bool)

(declare-fun e!4383573 () Bool)

(assert (=> b!7321405 (= e!4383573 true)))

(declare-fun lt!2604667 () Unit!164871)

(declare-fun e!4383572 () Unit!164871)

(assert (=> b!7321405 (= lt!2604667 e!4383572)))

(declare-fun c!1358770 () Bool)

(declare-fun lt!2604671 () (InoxSet A!1107))

(declare-datatypes ((B!3809 0))(
  ( (B!3810 (val!29428 Int)) )
))
(declare-fun b!25336 () B!3809)

(declare-fun flatMap!3173 ((InoxSet A!1107) Int) (InoxSet B!3809))

(assert (=> b!7321405 (= c!1358770 (select (flatMap!3173 lt!2604671 f!643) b!25336))))

(assert (=> b!7321405 (= lt!2604671 ((_ map or) s1!434 s2!405))))

(declare-fun setNonEmpty!55787 () Bool)

(declare-fun setRes!55786 () Bool)

(declare-fun tp!2079556 () Bool)

(assert (=> setNonEmpty!55787 (= setRes!55786 (and tp!2079556 tp_is_empty!48105))))

(declare-fun setElem!55787 () A!1107)

(declare-fun setRest!55787 () (InoxSet A!1107))

(assert (=> setNonEmpty!55787 (= s1!434 ((_ map or) (store ((as const (Array A!1107 Bool)) false) setElem!55787 true) setRest!55787))))

(declare-fun res!2959291 () Bool)

(declare-fun e!4383574 () Bool)

(assert (=> start!714310 (=> (not res!2959291) (not e!4383574))))

(declare-fun lt!2604672 () (InoxSet B!3809))

(assert (=> start!714310 (= res!2959291 (not (select lt!2604672 b!25336)))))

(assert (=> start!714310 (= lt!2604672 (flatMap!3173 s1!434 f!643))))

(assert (=> start!714310 e!4383574))

(declare-fun condSetEmpty!55787 () Bool)

(assert (=> start!714310 (= condSetEmpty!55787 (= s2!405 ((as const (Array A!1107 Bool)) false)))))

(assert (=> start!714310 setRes!55787))

(declare-fun tp_is_empty!48107 () Bool)

(assert (=> start!714310 tp_is_empty!48107))

(declare-fun condSetEmpty!55786 () Bool)

(assert (=> start!714310 (= condSetEmpty!55786 (= s1!434 ((as const (Array A!1107 Bool)) false)))))

(assert (=> start!714310 setRes!55786))

(assert (=> start!714310 tp!2079557))

(declare-fun b!7321406 () Bool)

(declare-fun Unit!164873 () Unit!164871)

(assert (=> b!7321406 (= e!4383572 Unit!164873)))

(declare-fun lt!2604668 () A!1107)

(declare-fun flatMapPost!174 ((InoxSet A!1107) Int B!3809) A!1107)

(assert (=> b!7321406 (= (flatMapPost!174 lt!2604671 f!643 b!25336) lt!2604668)))

(declare-fun getWitness!2418 ((InoxSet A!1107) Int) A!1107)

(assert (=> b!7321406 (= lt!2604670 (getWitness!2418 lt!2604671 lambda!453538))))

(assert (=> b!7321406 (= c!1358769 (select s1!434 lt!2604670))))

(declare-fun lt!2604666 () Unit!164871)

(declare-fun e!4383576 () Unit!164871)

(assert (=> b!7321406 (= lt!2604666 e!4383576)))

(assert (=> b!7321406 false))

(declare-fun b!7321407 () Bool)

(declare-fun Unit!164874 () Unit!164871)

(assert (=> b!7321407 (= e!4383572 Unit!164874)))

(declare-fun e!4383575 () Bool)

(assert (=> b!7321408 (= e!4383575 (not e!4383573))))

(declare-fun res!2959293 () Bool)

(assert (=> b!7321408 (=> res!2959293 e!4383573)))

(declare-fun exists!4705 ((InoxSet A!1107) Int) Bool)

(assert (=> b!7321408 (= res!2959293 (exists!4705 s1!434 lambda!453538))))

(declare-fun e!4383577 () Bool)

(assert (=> b!7321408 e!4383577))

(declare-fun res!2959296 () Bool)

(assert (=> b!7321408 (=> (not res!2959296) (not e!4383577))))

(assert (=> b!7321408 (= res!2959296 (= (flatMapPost!174 s1!434 f!643 b!25336) lt!2604668))))

(declare-fun empty!3415 () A!1107)

(assert (=> b!7321408 (= lt!2604668 empty!3415)))

(assert (=> b!7321408 true))

(assert (=> b!7321408 tp_is_empty!48105))

(declare-fun setIsEmpty!55787 () Bool)

(assert (=> setIsEmpty!55787 setRes!55786))

(declare-fun b!7321409 () Bool)

(declare-fun res!2959294 () Bool)

(assert (=> b!7321409 (=> res!2959294 e!4383573)))

(assert (=> b!7321409 (= res!2959294 (exists!4705 s2!405 lambda!453538))))

(declare-fun b!7321410 () Bool)

(declare-fun e!4383579 () Bool)

(assert (=> b!7321410 (= e!4383579 false)))

(declare-fun b!7321411 () Bool)

(assert (=> b!7321411 (= e!4383574 e!4383575)))

(declare-fun res!2959290 () Bool)

(assert (=> b!7321411 (=> (not res!2959290) (not e!4383575))))

(declare-fun lt!2604673 () (InoxSet B!3809))

(assert (=> b!7321411 (= res!2959290 (and (not (select lt!2604673 b!25336)) (not (select ((_ map or) lt!2604672 lt!2604673) b!25336))))))

(assert (=> b!7321411 (= lt!2604673 (flatMap!3173 s2!405 f!643))))

(declare-fun b!7321412 () Bool)

(assert (=> b!7321412 e!4383579))

(declare-fun res!2959292 () Bool)

(assert (=> b!7321412 (=> (not res!2959292) (not e!4383579))))

(declare-fun call!665903 () Bool)

(assert (=> b!7321412 (= res!2959292 call!665903)))

(declare-fun lt!2604674 () Unit!164871)

(assert (=> b!7321412 (= lt!2604674 call!665902)))

(declare-fun Unit!164875 () Unit!164871)

(assert (=> b!7321412 (= e!4383576 Unit!164875)))

(declare-fun b!7321413 () Bool)

(declare-fun e!4383578 () Bool)

(assert (=> b!7321413 (= e!4383578 false)))

(declare-fun bm!665898 () Bool)

(assert (=> bm!665898 (= call!665903 (exists!4705 (ite c!1358769 s1!434 s2!405) (ite c!1358769 lambda!453538 lambda!453538)))))

(declare-fun b!7321414 () Bool)

(assert (=> b!7321414 (= e!4383577 (= (flatMapPost!174 s2!405 f!643 b!25336) lt!2604668))))

(declare-fun b!7321415 () Bool)

(assert (=> b!7321415 e!4383578))

(declare-fun res!2959295 () Bool)

(assert (=> b!7321415 (=> (not res!2959295) (not e!4383578))))

(assert (=> b!7321415 (= res!2959295 call!665903)))

(declare-fun lt!2604669 () Unit!164871)

(assert (=> b!7321415 (= lt!2604669 call!665902)))

(declare-fun Unit!164876 () Unit!164871)

(assert (=> b!7321415 (= e!4383576 Unit!164876)))

(assert (= (and start!714310 res!2959291) b!7321411))

(assert (= (and b!7321411 res!2959290) b!7321408))

(assert (= (and b!7321408 res!2959296) b!7321414))

(assert (= (and b!7321408 (not res!2959293)) b!7321409))

(assert (= (and b!7321409 (not res!2959294)) b!7321405))

(assert (= (and b!7321405 c!1358770) b!7321406))

(assert (= (and b!7321405 (not c!1358770)) b!7321407))

(assert (= (and b!7321406 c!1358769) b!7321415))

(assert (= (and b!7321406 (not c!1358769)) b!7321412))

(assert (= (and b!7321415 res!2959295) b!7321413))

(assert (= (and b!7321412 res!2959292) b!7321410))

(assert (= (or b!7321415 b!7321412) bm!665897))

(assert (= (or b!7321415 b!7321412) bm!665898))

(assert (= (and start!714310 condSetEmpty!55787) setIsEmpty!55786))

(assert (= (and start!714310 (not condSetEmpty!55787)) setNonEmpty!55786))

(assert (= (and start!714310 condSetEmpty!55786) setIsEmpty!55787))

(assert (= (and start!714310 (not condSetEmpty!55786)) setNonEmpty!55787))

(declare-fun m!7987146 () Bool)

(assert (=> bm!665897 m!7987146))

(declare-fun m!7987148 () Bool)

(assert (=> bm!665898 m!7987148))

(declare-fun m!7987150 () Bool)

(assert (=> b!7321411 m!7987150))

(declare-fun m!7987152 () Bool)

(assert (=> b!7321411 m!7987152))

(declare-fun m!7987154 () Bool)

(assert (=> b!7321411 m!7987154))

(declare-fun m!7987156 () Bool)

(assert (=> b!7321405 m!7987156))

(declare-fun m!7987158 () Bool)

(assert (=> b!7321405 m!7987158))

(declare-fun m!7987160 () Bool)

(assert (=> b!7321414 m!7987160))

(declare-fun m!7987162 () Bool)

(assert (=> start!714310 m!7987162))

(declare-fun m!7987164 () Bool)

(assert (=> start!714310 m!7987164))

(declare-fun m!7987166 () Bool)

(assert (=> b!7321406 m!7987166))

(declare-fun m!7987168 () Bool)

(assert (=> b!7321406 m!7987168))

(declare-fun m!7987170 () Bool)

(assert (=> b!7321406 m!7987170))

(declare-fun m!7987172 () Bool)

(assert (=> b!7321408 m!7987172))

(declare-fun m!7987174 () Bool)

(assert (=> b!7321408 m!7987174))

(declare-fun m!7987176 () Bool)

(assert (=> b!7321409 m!7987176))

(check-sat (not setNonEmpty!55787) (not start!714310) tp_is_empty!48105 (not b!7321411) (not b!7321405) (not bm!665897) (not bm!665898) b_and!351757 (not b!7321406) (not b!7321414) (not b!7321408) (not b_next!135051) (not setNonEmpty!55786) (not b!7321409) tp_is_empty!48107)
(check-sat b_and!351757 (not b_next!135051))
