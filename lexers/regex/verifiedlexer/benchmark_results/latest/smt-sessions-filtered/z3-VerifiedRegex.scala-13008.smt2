; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714182 () Bool)

(assert start!714182)

(declare-fun b_free!134209 () Bool)

(declare-fun b_next!134999 () Bool)

(assert (=> start!714182 (= b_free!134209 (not b_next!134999))))

(declare-fun tp!2079268 () Bool)

(declare-fun b_and!351685 () Bool)

(assert (=> start!714182 (= tp!2079268 b_and!351685)))

(declare-fun b!7320691 () Bool)

(assert (=> b!7320691 true))

(assert (=> b!7320691 true))

(declare-fun order!29305 () Int)

(declare-fun lambda!453260 () Int)

(declare-fun order!29307 () Int)

(declare-fun f!643 () Int)

(declare-fun dynLambda!29297 (Int Int) Int)

(declare-fun dynLambda!29298 (Int Int) Int)

(assert (=> b!7320691 (< (dynLambda!29297 order!29305 f!643) (dynLambda!29298 order!29307 lambda!453260))))

(declare-fun setNonEmpty!55577 () Bool)

(declare-fun setRes!55577 () Bool)

(declare-fun tp!2079270 () Bool)

(declare-fun tp_is_empty!48001 () Bool)

(assert (=> setNonEmpty!55577 (= setRes!55577 (and tp!2079270 tp_is_empty!48001))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1055 0))(
  ( (A!1056 (val!29375 Int)) )
))
(declare-fun s1!434 () (InoxSet A!1055))

(declare-fun setElem!55578 () A!1055)

(declare-fun setRest!55578 () (InoxSet A!1055))

(assert (=> setNonEmpty!55577 (= s1!434 ((_ map or) (store ((as const (Array A!1055 Bool)) false) setElem!55578 true) setRest!55578))))

(declare-fun b!7320690 () Bool)

(declare-fun e!4383083 () Bool)

(declare-fun e!4383084 () Bool)

(assert (=> b!7320690 (= e!4383083 e!4383084)))

(declare-fun res!2958769 () Bool)

(assert (=> b!7320690 (=> (not res!2958769) (not e!4383084))))

(declare-datatypes ((B!3757 0))(
  ( (B!3758 (val!29376 Int)) )
))
(declare-fun b!25336 () B!3757)

(declare-fun lt!2604092 () (InoxSet B!3757))

(assert (=> b!7320690 (= res!2958769 (select lt!2604092 b!25336))))

(declare-fun s2!405 () (InoxSet A!1055))

(declare-fun flatMap!3147 ((InoxSet A!1055) Int) (InoxSet B!3757))

(assert (=> b!7320690 (= lt!2604092 (flatMap!3147 s2!405 f!643))))

(declare-fun setIsEmpty!55577 () Bool)

(declare-fun setRes!55578 () Bool)

(assert (=> setIsEmpty!55577 setRes!55578))

(declare-fun setNonEmpty!55578 () Bool)

(declare-fun tp!2079269 () Bool)

(assert (=> setNonEmpty!55578 (= setRes!55578 (and tp!2079269 tp_is_empty!48001))))

(declare-fun setElem!55577 () A!1055)

(declare-fun setRest!55577 () (InoxSet A!1055))

(assert (=> setNonEmpty!55578 (= s2!405 ((_ map or) (store ((as const (Array A!1055 Bool)) false) setElem!55577 true) setRest!55577))))

(declare-fun e!4383081 () Bool)

(assert (=> b!7320691 (= e!4383084 (not e!4383081))))

(declare-fun res!2958770 () Bool)

(assert (=> b!7320691 (=> res!2958770 e!4383081)))

(declare-fun exists!4671 ((InoxSet A!1055) Int) Bool)

(assert (=> b!7320691 (= res!2958770 (not (exists!4671 s2!405 lambda!453260)))))

(declare-fun lt!2604090 () A!1055)

(declare-fun flatMapPost!150 ((InoxSet A!1055) Int B!3757) A!1055)

(assert (=> b!7320691 (= (flatMapPost!150 s2!405 f!643 b!25336) lt!2604090)))

(declare-fun empty!3319 () A!1055)

(assert (=> b!7320691 (= lt!2604090 empty!3319)))

(assert (=> b!7320691 true))

(assert (=> b!7320691 tp_is_empty!48001))

(declare-fun b!7320692 () Bool)

(declare-fun e!4383082 () Bool)

(declare-fun e!4383079 () Bool)

(assert (=> b!7320692 (= e!4383082 e!4383079)))

(declare-fun res!2958768 () Bool)

(assert (=> b!7320692 (=> res!2958768 e!4383079)))

(declare-fun lt!2604091 () (InoxSet A!1055))

(assert (=> b!7320692 (= res!2958768 (not (exists!4671 lt!2604091 lambda!453260)))))

(assert (=> b!7320692 (exists!4671 lt!2604091 lambda!453260)))

(declare-fun lt!2604093 () A!1055)

(declare-datatypes ((Unit!164831 0))(
  ( (Unit!164832) )
))
(declare-fun lt!2604089 () Unit!164831)

(declare-fun lemmaContainsThenExists!279 ((InoxSet A!1055) A!1055 Int) Unit!164831)

(assert (=> b!7320692 (= lt!2604089 (lemmaContainsThenExists!279 lt!2604091 lt!2604093 lambda!453260))))

(declare-fun setIsEmpty!55578 () Bool)

(assert (=> setIsEmpty!55578 setRes!55577))

(declare-fun b!7320693 () Bool)

(declare-fun e!4383080 () Bool)

(assert (=> b!7320693 (= e!4383080 e!4383082)))

(declare-fun res!2958766 () Bool)

(assert (=> b!7320693 (=> res!2958766 e!4383082)))

(declare-fun lt!2604088 () (InoxSet B!3757))

(assert (=> b!7320693 (= res!2958766 (or (not (select lt!2604091 lt!2604093)) (not (select ((_ map or) lt!2604088 lt!2604092) b!25336))))))

(assert (=> b!7320693 (= lt!2604091 ((_ map or) s1!434 s2!405))))

(declare-fun b!7320694 () Bool)

(assert (=> b!7320694 (= e!4383079 true)))

(assert (=> b!7320694 (= (flatMapPost!150 lt!2604091 f!643 b!25336) lt!2604090)))

(declare-fun res!2958771 () Bool)

(assert (=> start!714182 (=> (not res!2958771) (not e!4383083))))

(assert (=> start!714182 (= res!2958771 (not (select lt!2604088 b!25336)))))

(assert (=> start!714182 (= lt!2604088 (flatMap!3147 s1!434 f!643))))

(assert (=> start!714182 e!4383083))

(declare-fun condSetEmpty!55578 () Bool)

(assert (=> start!714182 (= condSetEmpty!55578 (= s2!405 ((as const (Array A!1055 Bool)) false)))))

(assert (=> start!714182 setRes!55578))

(declare-fun tp_is_empty!48003 () Bool)

(assert (=> start!714182 tp_is_empty!48003))

(declare-fun condSetEmpty!55577 () Bool)

(assert (=> start!714182 (= condSetEmpty!55577 (= s1!434 ((as const (Array A!1055 Bool)) false)))))

(assert (=> start!714182 setRes!55577))

(assert (=> start!714182 tp!2079268))

(declare-fun b!7320695 () Bool)

(assert (=> b!7320695 (= e!4383081 e!4383080)))

(declare-fun res!2958767 () Bool)

(assert (=> b!7320695 (=> res!2958767 e!4383080)))

(declare-fun dynLambda!29299 (Int A!1055) (InoxSet B!3757))

(assert (=> b!7320695 (= res!2958767 (not (select (dynLambda!29299 f!643 lt!2604093) b!25336)))))

(declare-fun getWitness!2395 ((InoxSet A!1055) Int) A!1055)

(assert (=> b!7320695 (= lt!2604093 (getWitness!2395 s2!405 lambda!453260))))

(assert (= (and start!714182 res!2958771) b!7320690))

(assert (= (and b!7320690 res!2958769) b!7320691))

(assert (= (and b!7320691 (not res!2958770)) b!7320695))

(assert (= (and b!7320695 (not res!2958767)) b!7320693))

(assert (= (and b!7320693 (not res!2958766)) b!7320692))

(assert (= (and b!7320692 (not res!2958768)) b!7320694))

(assert (= (and start!714182 condSetEmpty!55578) setIsEmpty!55577))

(assert (= (and start!714182 (not condSetEmpty!55578)) setNonEmpty!55578))

(assert (= (and start!714182 condSetEmpty!55577) setIsEmpty!55578))

(assert (= (and start!714182 (not condSetEmpty!55577)) setNonEmpty!55577))

(declare-fun b_lambda!282955 () Bool)

(assert (=> (not b_lambda!282955) (not b!7320695)))

(declare-fun t!385726 () Bool)

(declare-fun tb!262319 () Bool)

(assert (=> (and start!714182 (= f!643 f!643) t!385726) tb!262319))

(assert (=> b!7320695 t!385726))

(declare-fun result!353478 () Bool)

(declare-fun b_and!351687 () Bool)

(assert (= b_and!351685 (and (=> t!385726 result!353478) b_and!351687)))

(declare-fun m!7985986 () Bool)

(assert (=> b!7320695 m!7985986))

(declare-fun m!7985988 () Bool)

(assert (=> b!7320695 m!7985988))

(declare-fun m!7985990 () Bool)

(assert (=> b!7320695 m!7985990))

(declare-fun m!7985992 () Bool)

(assert (=> b!7320693 m!7985992))

(declare-fun m!7985994 () Bool)

(assert (=> b!7320693 m!7985994))

(declare-fun m!7985996 () Bool)

(assert (=> b!7320691 m!7985996))

(declare-fun m!7985998 () Bool)

(assert (=> b!7320691 m!7985998))

(declare-fun m!7986000 () Bool)

(assert (=> b!7320690 m!7986000))

(declare-fun m!7986002 () Bool)

(assert (=> b!7320690 m!7986002))

(declare-fun m!7986004 () Bool)

(assert (=> start!714182 m!7986004))

(declare-fun m!7986006 () Bool)

(assert (=> start!714182 m!7986006))

(declare-fun m!7986008 () Bool)

(assert (=> b!7320694 m!7986008))

(declare-fun m!7986010 () Bool)

(assert (=> b!7320692 m!7986010))

(assert (=> b!7320692 m!7986010))

(declare-fun m!7986012 () Bool)

(assert (=> b!7320692 m!7986012))

(check-sat (not tb!262319) tp_is_empty!48003 (not b!7320694) (not start!714182) (not b_next!134999) (not setNonEmpty!55578) (not b!7320690) (not b!7320695) tp_is_empty!48001 b_and!351687 (not setNonEmpty!55577) (not b_lambda!282955) (not b!7320691) (not b!7320692))
(check-sat b_and!351687 (not b_next!134999))
