; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1782 () Bool)

(assert start!1782)

(declare-fun b_free!355 () Bool)

(declare-fun b_next!355 () Bool)

(assert (=> start!1782 (= b_free!355 (not b_next!355))))

(declare-fun tp!23599 () Bool)

(declare-fun b_and!387 () Bool)

(assert (=> start!1782 (= tp!23599 b_and!387)))

(declare-fun b!34298 () Bool)

(declare-fun e!15819 () Bool)

(assert (=> b!34298 (= e!15819 (not true))))

(assert (=> b!34298 false))

(declare-datatypes ((A!183 0))(
  ( (A!184 (val!199 Int)) )
))
(declare-fun lt!2562 () A!183)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2559 () (InoxSet A!183))

(declare-datatypes ((Unit!170 0))(
  ( (Unit!171) )
))
(declare-fun lt!2561 () Unit!170)

(declare-fun p!1713 () Int)

(declare-fun lemmaContainsThenExists!13 ((InoxSet A!183) A!183 Int) Unit!170)

(assert (=> b!34298 (= lt!2561 (lemmaContainsThenExists!13 lt!2559 lt!2562 p!1713))))

(declare-fun b!34299 () Bool)

(declare-fun e!15818 () Bool)

(assert (=> b!34299 (= e!15818 e!15819)))

(declare-fun res!27609 () Bool)

(assert (=> b!34299 (=> (not res!27609) (not e!15819))))

(declare-fun s2!449 () (InoxSet A!183))

(assert (=> b!34299 (= res!27609 (and (select s2!449 lt!2562) (select lt!2559 lt!2562)))))

(declare-fun getWitness!28 ((InoxSet A!183) Int) A!183)

(assert (=> b!34299 (= lt!2562 (getWitness!28 s2!449 p!1713))))

(declare-fun b!34300 () Bool)

(declare-fun e!15820 () Bool)

(assert (=> b!34300 (= e!15820 e!15818)))

(declare-fun res!27611 () Bool)

(assert (=> b!34300 (=> (not res!27611) (not e!15818))))

(declare-fun exists!37 ((InoxSet A!183) Int) Bool)

(assert (=> b!34300 (= res!27611 (exists!37 s2!449 p!1713))))

(declare-fun lt!2558 () Unit!170)

(declare-fun e!15821 () Unit!170)

(assert (=> b!34300 (= lt!2558 e!15821)))

(declare-fun c!15412 () Bool)

(declare-fun s1!478 () (InoxSet A!183))

(assert (=> b!34300 (= c!15412 (exists!37 s1!478 p!1713))))

(declare-fun setIsEmpty!504 () Bool)

(declare-fun setRes!505 () Bool)

(assert (=> setIsEmpty!504 setRes!505))

(declare-fun setIsEmpty!505 () Bool)

(declare-fun setRes!504 () Bool)

(assert (=> setIsEmpty!505 setRes!504))

(declare-fun res!27608 () Bool)

(assert (=> start!1782 (=> (not res!27608) (not e!15820))))

(assert (=> start!1782 (= res!27608 (not (exists!37 lt!2559 p!1713)))))

(assert (=> start!1782 (= lt!2559 ((_ map or) s1!478 s2!449))))

(assert (=> start!1782 e!15820))

(declare-fun condSetEmpty!504 () Bool)

(assert (=> start!1782 (= condSetEmpty!504 (= s1!478 ((as const (Array A!183 Bool)) false)))))

(assert (=> start!1782 setRes!504))

(declare-fun condSetEmpty!505 () Bool)

(assert (=> start!1782 (= condSetEmpty!505 (= s2!449 ((as const (Array A!183 Bool)) false)))))

(assert (=> start!1782 setRes!505))

(assert (=> start!1782 tp!23599))

(declare-fun setNonEmpty!504 () Bool)

(declare-fun tp!23600 () Bool)

(declare-fun tp_is_empty!351 () Bool)

(assert (=> setNonEmpty!504 (= setRes!505 (and tp!23600 tp_is_empty!351))))

(declare-fun setElem!505 () A!183)

(declare-fun setRest!505 () (InoxSet A!183))

(assert (=> setNonEmpty!504 (= s2!449 ((_ map or) (store ((as const (Array A!183 Bool)) false) setElem!505 true) setRest!505))))

(declare-fun b!34301 () Bool)

(declare-fun Unit!172 () Unit!170)

(assert (=> b!34301 (= e!15821 Unit!172)))

(declare-fun b!34302 () Bool)

(declare-fun lt!2560 () Unit!170)

(assert (=> b!34302 (= e!15821 lt!2560)))

(assert (=> b!34302 (= lt!2560 (lemmaContainsThenExists!13 lt!2559 (getWitness!28 s1!478 p!1713) p!1713))))

(assert (=> b!34302 false))

(declare-fun setNonEmpty!505 () Bool)

(declare-fun tp!23598 () Bool)

(assert (=> setNonEmpty!505 (= setRes!504 (and tp!23598 tp_is_empty!351))))

(declare-fun setElem!504 () A!183)

(declare-fun setRest!504 () (InoxSet A!183))

(assert (=> setNonEmpty!505 (= s1!478 ((_ map or) (store ((as const (Array A!183 Bool)) false) setElem!504 true) setRest!504))))

(declare-fun b!34303 () Bool)

(declare-fun res!27610 () Bool)

(assert (=> b!34303 (=> (not res!27610) (not e!15819))))

(declare-fun dynLambda!45 (Int A!183) Bool)

(assert (=> b!34303 (= res!27610 (dynLambda!45 p!1713 lt!2562))))

(assert (= (and start!1782 res!27608) b!34300))

(assert (= (and b!34300 c!15412) b!34302))

(assert (= (and b!34300 (not c!15412)) b!34301))

(assert (= (and b!34300 res!27611) b!34299))

(assert (= (and b!34299 res!27609) b!34303))

(assert (= (and b!34303 res!27610) b!34298))

(assert (= (and start!1782 condSetEmpty!504) setIsEmpty!505))

(assert (= (and start!1782 (not condSetEmpty!504)) setNonEmpty!505))

(assert (= (and start!1782 condSetEmpty!505) setIsEmpty!504))

(assert (= (and start!1782 (not condSetEmpty!505)) setNonEmpty!504))

(declare-fun b_lambda!227 () Bool)

(assert (=> (not b_lambda!227) (not b!34303)))

(declare-fun t!14918 () Bool)

(declare-fun tb!33 () Bool)

(assert (=> (and start!1782 (= p!1713 p!1713) t!14918) tb!33))

(declare-fun result!372 () Bool)

(assert (=> tb!33 (= result!372 true)))

(assert (=> b!34303 t!14918))

(declare-fun b_and!389 () Bool)

(assert (= b_and!387 (and (=> t!14918 result!372) b_and!389)))

(declare-fun m!10401 () Bool)

(assert (=> b!34300 m!10401))

(declare-fun m!10403 () Bool)

(assert (=> b!34300 m!10403))

(declare-fun m!10405 () Bool)

(assert (=> b!34298 m!10405))

(declare-fun m!10407 () Bool)

(assert (=> b!34303 m!10407))

(declare-fun m!10409 () Bool)

(assert (=> b!34299 m!10409))

(declare-fun m!10411 () Bool)

(assert (=> b!34299 m!10411))

(declare-fun m!10413 () Bool)

(assert (=> b!34299 m!10413))

(declare-fun m!10415 () Bool)

(assert (=> start!1782 m!10415))

(declare-fun m!10417 () Bool)

(assert (=> b!34302 m!10417))

(assert (=> b!34302 m!10417))

(declare-fun m!10419 () Bool)

(assert (=> b!34302 m!10419))

(check-sat (not b_next!355) tp_is_empty!351 (not setNonEmpty!505) b_and!389 (not b_lambda!227) (not b!34300) (not b!34298) (not setNonEmpty!504) (not b!34302) (not start!1782) (not b!34299))
(check-sat b_and!389 (not b_next!355))
