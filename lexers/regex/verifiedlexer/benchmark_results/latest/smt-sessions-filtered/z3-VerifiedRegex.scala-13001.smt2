; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714090 () Bool)

(assert start!714090)

(declare-fun b_free!134181 () Bool)

(declare-fun b_next!134971 () Bool)

(assert (=> start!714090 (= b_free!134181 (not b_next!134971))))

(declare-fun tp!2079094 () Bool)

(declare-fun b_and!351623 () Bool)

(assert (=> start!714090 (= tp!2079094 b_and!351623)))

(declare-fun b!7320404 () Bool)

(assert (=> b!7320404 true))

(assert (=> b!7320404 true))

(declare-fun f!643 () Int)

(declare-fun order!29251 () Int)

(declare-fun lambda!453144 () Int)

(declare-fun order!29249 () Int)

(declare-fun dynLambda!29253 (Int Int) Int)

(declare-fun dynLambda!29254 (Int Int) Int)

(assert (=> b!7320404 (< (dynLambda!29253 order!29249 f!643) (dynLambda!29254 order!29251 lambda!453144))))

(declare-fun setIsEmpty!55443 () Bool)

(declare-fun setRes!55444 () Bool)

(assert (=> setIsEmpty!55443 setRes!55444))

(declare-fun b!7320400 () Bool)

(declare-fun e!4382900 () Bool)

(declare-fun e!4382901 () Bool)

(assert (=> b!7320400 (= e!4382900 e!4382901)))

(declare-fun res!2958571 () Bool)

(assert (=> b!7320400 (=> res!2958571 e!4382901)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1027 0))(
  ( (A!1028 (val!29347 Int)) )
))
(declare-fun lt!2603890 () (InoxSet A!1027))

(declare-fun exists!4651 ((InoxSet A!1027) Int) Bool)

(assert (=> b!7320400 (= res!2958571 (not (exists!4651 lt!2603890 lambda!453144)))))

(assert (=> b!7320400 (exists!4651 lt!2603890 lambda!453144)))

(declare-fun lt!2603891 () A!1027)

(declare-datatypes ((Unit!164819 0))(
  ( (Unit!164820) )
))
(declare-fun lt!2603888 () Unit!164819)

(declare-fun lemmaContainsThenExists!273 ((InoxSet A!1027) A!1027 Int) Unit!164819)

(assert (=> b!7320400 (= lt!2603888 (lemmaContainsThenExists!273 lt!2603890 lt!2603891 lambda!453144))))

(declare-fun setIsEmpty!55444 () Bool)

(declare-fun setRes!55443 () Bool)

(assert (=> setIsEmpty!55444 setRes!55443))

(declare-fun b!7320401 () Bool)

(declare-fun e!4382898 () Bool)

(assert (=> b!7320401 (= e!4382898 e!4382900)))

(declare-fun res!2958572 () Bool)

(assert (=> b!7320401 (=> res!2958572 e!4382900)))

(assert (=> b!7320401 (= res!2958572 (not (select lt!2603890 lt!2603891)))))

(declare-fun s1!434 () (InoxSet A!1027))

(declare-fun s2!405 () (InoxSet A!1027))

(assert (=> b!7320401 (= lt!2603890 ((_ map or) s1!434 s2!405))))

(declare-fun setNonEmpty!55443 () Bool)

(declare-fun tp!2079092 () Bool)

(declare-fun tp_is_empty!47945 () Bool)

(assert (=> setNonEmpty!55443 (= setRes!55444 (and tp!2079092 tp_is_empty!47945))))

(declare-fun setElem!55444 () A!1027)

(declare-fun setRest!55443 () (InoxSet A!1027))

(assert (=> setNonEmpty!55443 (= s1!434 ((_ map or) (store ((as const (Array A!1027 Bool)) false) setElem!55444 true) setRest!55443))))

(declare-fun b!7320402 () Bool)

(declare-fun e!4382899 () Bool)

(assert (=> b!7320402 (= e!4382899 e!4382898)))

(declare-fun res!2958569 () Bool)

(assert (=> b!7320402 (=> res!2958569 e!4382898)))

(declare-datatypes ((B!3729 0))(
  ( (B!3730 (val!29348 Int)) )
))
(declare-fun b!25336 () B!3729)

(declare-fun dynLambda!29255 (Int A!1027) (InoxSet B!3729))

(assert (=> b!7320402 (= res!2958569 (not (select (dynLambda!29255 f!643 lt!2603891) b!25336)))))

(declare-fun getWitness!2379 ((InoxSet A!1027) Int) A!1027)

(assert (=> b!7320402 (= lt!2603891 (getWitness!2379 s1!434 lambda!453144))))

(declare-fun b!7320403 () Bool)

(declare-fun res!2958568 () Bool)

(assert (=> b!7320403 (=> res!2958568 e!4382900)))

(declare-fun lt!2603887 () (InoxSet B!3729))

(declare-fun flatMap!3133 ((InoxSet A!1027) Int) (InoxSet B!3729))

(assert (=> b!7320403 (= res!2958568 (not (select ((_ map or) lt!2603887 (flatMap!3133 s2!405 f!643)) b!25336)))))

(declare-fun res!2958573 () Bool)

(declare-fun e!4382902 () Bool)

(assert (=> start!714090 (=> (not res!2958573) (not e!4382902))))

(assert (=> start!714090 (= res!2958573 (select lt!2603887 b!25336))))

(assert (=> start!714090 (= lt!2603887 (flatMap!3133 s1!434 f!643))))

(assert (=> start!714090 e!4382902))

(declare-fun condSetEmpty!55444 () Bool)

(assert (=> start!714090 (= condSetEmpty!55444 (= s2!405 ((as const (Array A!1027 Bool)) false)))))

(assert (=> start!714090 setRes!55443))

(declare-fun tp_is_empty!47947 () Bool)

(assert (=> start!714090 tp_is_empty!47947))

(declare-fun condSetEmpty!55443 () Bool)

(assert (=> start!714090 (= condSetEmpty!55443 (= s1!434 ((as const (Array A!1027 Bool)) false)))))

(assert (=> start!714090 setRes!55444))

(assert (=> start!714090 tp!2079094))

(assert (=> b!7320404 (= e!4382902 (not e!4382899))))

(declare-fun res!2958570 () Bool)

(assert (=> b!7320404 (=> res!2958570 e!4382899)))

(assert (=> b!7320404 (= res!2958570 (not (exists!4651 s1!434 lambda!453144)))))

(declare-fun lt!2603889 () A!1027)

(declare-fun flatMapPost!136 ((InoxSet A!1027) Int B!3729) A!1027)

(assert (=> b!7320404 (= (flatMapPost!136 s1!434 f!643 b!25336) lt!2603889)))

(declare-fun empty!3263 () A!1027)

(assert (=> b!7320404 (= lt!2603889 empty!3263)))

(assert (=> b!7320404 true))

(assert (=> b!7320404 tp_is_empty!47945))

(declare-fun b!7320405 () Bool)

(assert (=> b!7320405 (= e!4382901 true)))

(assert (=> b!7320405 (= (flatMapPost!136 lt!2603890 f!643 b!25336) lt!2603889)))

(declare-fun setNonEmpty!55444 () Bool)

(declare-fun tp!2079093 () Bool)

(assert (=> setNonEmpty!55444 (= setRes!55443 (and tp!2079093 tp_is_empty!47945))))

(declare-fun setElem!55443 () A!1027)

(declare-fun setRest!55444 () (InoxSet A!1027))

(assert (=> setNonEmpty!55444 (= s2!405 ((_ map or) (store ((as const (Array A!1027 Bool)) false) setElem!55443 true) setRest!55444))))

(assert (= (and start!714090 res!2958573) b!7320404))

(assert (= (and b!7320404 (not res!2958570)) b!7320402))

(assert (= (and b!7320402 (not res!2958569)) b!7320401))

(assert (= (and b!7320401 (not res!2958572)) b!7320403))

(assert (= (and b!7320403 (not res!2958568)) b!7320400))

(assert (= (and b!7320400 (not res!2958571)) b!7320405))

(assert (= (and start!714090 condSetEmpty!55444) setIsEmpty!55444))

(assert (= (and start!714090 (not condSetEmpty!55444)) setNonEmpty!55444))

(assert (= (and start!714090 condSetEmpty!55443) setIsEmpty!55443))

(assert (= (and start!714090 (not condSetEmpty!55443)) setNonEmpty!55443))

(declare-fun b_lambda!282885 () Bool)

(assert (=> (not b_lambda!282885) (not b!7320402)))

(declare-fun t!385685 () Bool)

(declare-fun tb!262285 () Bool)

(assert (=> (and start!714090 (= f!643 f!643) t!385685) tb!262285))

(assert (=> b!7320402 t!385685))

(declare-fun result!353416 () Bool)

(declare-fun b_and!351625 () Bool)

(assert (= b_and!351623 (and (=> t!385685 result!353416) b_and!351625)))

(declare-fun m!7985472 () Bool)

(assert (=> b!7320402 m!7985472))

(declare-fun m!7985474 () Bool)

(assert (=> b!7320402 m!7985474))

(declare-fun m!7985476 () Bool)

(assert (=> b!7320402 m!7985476))

(declare-fun m!7985478 () Bool)

(assert (=> b!7320403 m!7985478))

(declare-fun m!7985480 () Bool)

(assert (=> b!7320403 m!7985480))

(declare-fun m!7985482 () Bool)

(assert (=> b!7320405 m!7985482))

(declare-fun m!7985484 () Bool)

(assert (=> start!714090 m!7985484))

(declare-fun m!7985486 () Bool)

(assert (=> start!714090 m!7985486))

(declare-fun m!7985488 () Bool)

(assert (=> b!7320404 m!7985488))

(declare-fun m!7985490 () Bool)

(assert (=> b!7320404 m!7985490))

(declare-fun m!7985492 () Bool)

(assert (=> b!7320401 m!7985492))

(declare-fun m!7985494 () Bool)

(assert (=> b!7320400 m!7985494))

(assert (=> b!7320400 m!7985494))

(declare-fun m!7985496 () Bool)

(assert (=> b!7320400 m!7985496))

(check-sat tp_is_empty!47945 (not b!7320402) (not b!7320403) (not b_next!134971) (not b!7320404) (not setNonEmpty!55444) (not setNonEmpty!55443) (not b!7320400) b_and!351625 (not b!7320405) (not b_lambda!282885) (not start!714090) (not tb!262285) tp_is_empty!47947)
(check-sat b_and!351625 (not b_next!134971))
