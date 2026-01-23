; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714282 () Bool)

(assert start!714282)

(declare-fun b_free!134241 () Bool)

(declare-fun b_next!135031 () Bool)

(assert (=> start!714282 (= b_free!134241 (not b_next!135031))))

(declare-fun tp!2079459 () Bool)

(declare-fun b_and!351731 () Bool)

(assert (=> start!714282 (= tp!2079459 b_and!351731)))

(declare-fun b!7321061 () Bool)

(assert (=> b!7321061 true))

(assert (=> b!7321061 true))

(declare-fun order!29363 () Int)

(declare-fun order!29361 () Int)

(declare-fun f!643 () Int)

(declare-fun lambda!453423 () Int)

(declare-fun dynLambda!29333 (Int Int) Int)

(declare-fun dynLambda!29334 (Int Int) Int)

(assert (=> b!7321061 (< (dynLambda!29333 order!29361 f!643) (dynLambda!29334 order!29363 lambda!453423))))

(declare-fun e!4383331 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1087 0))(
  ( (A!1088 (val!29407 Int)) )
))
(declare-fun s2!405 () (InoxSet A!1087))

(declare-fun lt!2604409 () A!1087)

(declare-datatypes ((B!3789 0))(
  ( (B!3790 (val!29408 Int)) )
))
(declare-fun b!25336 () B!3789)

(declare-fun b!7321060 () Bool)

(declare-fun flatMapPost!164 ((InoxSet A!1087) Int B!3789) A!1087)

(assert (=> b!7321060 (= e!4383331 (= (flatMapPost!164 s2!405 f!643 b!25336) lt!2604409))))

(declare-fun e!4383332 () Bool)

(declare-fun e!4383333 () Bool)

(assert (=> b!7321061 (= e!4383332 (not e!4383333))))

(declare-fun res!2959048 () Bool)

(assert (=> b!7321061 (=> res!2959048 e!4383333)))

(declare-fun s1!434 () (InoxSet A!1087))

(declare-fun exists!4694 ((InoxSet A!1087) Int) Bool)

(assert (=> b!7321061 (= res!2959048 (exists!4694 s1!434 lambda!453423))))

(assert (=> b!7321061 e!4383331))

(declare-fun res!2959049 () Bool)

(assert (=> b!7321061 (=> (not res!2959049) (not e!4383331))))

(assert (=> b!7321061 (= res!2959049 (= (flatMapPost!164 s1!434 f!643 b!25336) lt!2604409))))

(declare-fun empty!3375 () A!1087)

(assert (=> b!7321061 (= lt!2604409 empty!3375)))

(assert (=> b!7321061 true))

(declare-fun tp_is_empty!48065 () Bool)

(assert (=> b!7321061 tp_is_empty!48065))

(declare-fun setIsEmpty!55719 () Bool)

(declare-fun setRes!55720 () Bool)

(assert (=> setIsEmpty!55719 setRes!55720))

(declare-fun setNonEmpty!55719 () Bool)

(declare-fun tp!2079458 () Bool)

(assert (=> setNonEmpty!55719 (= setRes!55720 (and tp!2079458 tp_is_empty!48065))))

(declare-fun setElem!55719 () A!1087)

(declare-fun setRest!55720 () (InoxSet A!1087))

(assert (=> setNonEmpty!55719 (= s1!434 ((_ map or) (store ((as const (Array A!1087 Bool)) false) setElem!55719 true) setRest!55720))))

(declare-fun b!7321062 () Bool)

(declare-fun e!4383335 () Bool)

(assert (=> b!7321062 (= e!4383335 (not (exists!4694 s1!434 lambda!453423)))))

(assert (=> b!7321062 (exists!4694 s1!434 lambda!453423)))

(declare-datatypes ((Unit!164839 0))(
  ( (Unit!164840) )
))
(declare-fun lt!2604410 () Unit!164839)

(declare-fun lt!2604412 () A!1087)

(declare-fun lemmaContainsThenExists!283 ((InoxSet A!1087) A!1087 Int) Unit!164839)

(assert (=> b!7321062 (= lt!2604410 (lemmaContainsThenExists!283 s1!434 lt!2604412 lambda!453423))))

(declare-fun b!7321063 () Bool)

(declare-fun e!4383330 () Bool)

(assert (=> b!7321063 (= e!4383333 e!4383330)))

(declare-fun res!2959051 () Bool)

(assert (=> b!7321063 (=> res!2959051 e!4383330)))

(declare-fun lt!2604414 () (InoxSet A!1087))

(declare-fun flatMap!3163 ((InoxSet A!1087) Int) (InoxSet B!3789))

(assert (=> b!7321063 (= res!2959051 (not (select (flatMap!3163 lt!2604414 f!643) b!25336)))))

(assert (=> b!7321063 (= lt!2604414 ((_ map or) s1!434 s2!405))))

(declare-fun res!2959047 () Bool)

(declare-fun e!4383334 () Bool)

(assert (=> start!714282 (=> (not res!2959047) (not e!4383334))))

(declare-fun lt!2604413 () (InoxSet B!3789))

(assert (=> start!714282 (= res!2959047 (not (select lt!2604413 b!25336)))))

(assert (=> start!714282 (= lt!2604413 (flatMap!3163 s1!434 f!643))))

(assert (=> start!714282 e!4383334))

(declare-fun condSetEmpty!55720 () Bool)

(assert (=> start!714282 (= condSetEmpty!55720 (= s2!405 ((as const (Array A!1087 Bool)) false)))))

(declare-fun setRes!55719 () Bool)

(assert (=> start!714282 setRes!55719))

(declare-fun tp_is_empty!48067 () Bool)

(assert (=> start!714282 tp_is_empty!48067))

(declare-fun condSetEmpty!55719 () Bool)

(assert (=> start!714282 (= condSetEmpty!55719 (= s1!434 ((as const (Array A!1087 Bool)) false)))))

(assert (=> start!714282 setRes!55720))

(assert (=> start!714282 tp!2079459))

(declare-fun setNonEmpty!55720 () Bool)

(declare-fun tp!2079460 () Bool)

(assert (=> setNonEmpty!55720 (= setRes!55719 (and tp!2079460 tp_is_empty!48065))))

(declare-fun setElem!55720 () A!1087)

(declare-fun setRest!55719 () (InoxSet A!1087))

(assert (=> setNonEmpty!55720 (= s2!405 ((_ map or) (store ((as const (Array A!1087 Bool)) false) setElem!55720 true) setRest!55719))))

(declare-fun b!7321064 () Bool)

(declare-fun res!2959052 () Bool)

(assert (=> b!7321064 (=> res!2959052 e!4383333)))

(assert (=> b!7321064 (= res!2959052 (exists!4694 s2!405 lambda!453423))))

(declare-fun b!7321065 () Bool)

(assert (=> b!7321065 (= e!4383334 e!4383332)))

(declare-fun res!2959053 () Bool)

(assert (=> b!7321065 (=> (not res!2959053) (not e!4383332))))

(declare-fun lt!2604411 () (InoxSet B!3789))

(assert (=> b!7321065 (= res!2959053 (and (not (select lt!2604411 b!25336)) (not (select ((_ map or) lt!2604413 lt!2604411) b!25336))))))

(assert (=> b!7321065 (= lt!2604411 (flatMap!3163 s2!405 f!643))))

(declare-fun setIsEmpty!55720 () Bool)

(assert (=> setIsEmpty!55720 setRes!55719))

(declare-fun b!7321066 () Bool)

(declare-fun e!4383336 () Bool)

(assert (=> b!7321066 (= e!4383336 e!4383335)))

(declare-fun res!2959050 () Bool)

(assert (=> b!7321066 (=> res!2959050 e!4383335)))

(declare-fun lt!2604415 () Bool)

(assert (=> b!7321066 (= res!2959050 (or (and (not lt!2604415) (not (select s2!405 lt!2604412))) (not lt!2604415)))))

(assert (=> b!7321066 (= lt!2604415 (select s1!434 lt!2604412))))

(declare-fun getWitness!2407 ((InoxSet A!1087) Int) A!1087)

(assert (=> b!7321066 (= lt!2604412 (getWitness!2407 lt!2604414 lambda!453423))))

(declare-fun b!7321067 () Bool)

(assert (=> b!7321067 (= e!4383330 e!4383336)))

(declare-fun res!2959046 () Bool)

(assert (=> b!7321067 (=> res!2959046 e!4383336)))

(assert (=> b!7321067 (= res!2959046 (not (exists!4694 lt!2604414 lambda!453423)))))

(assert (=> b!7321067 (= (flatMapPost!164 lt!2604414 f!643 b!25336) lt!2604409)))

(assert (= (and start!714282 res!2959047) b!7321065))

(assert (= (and b!7321065 res!2959053) b!7321061))

(assert (= (and b!7321061 res!2959049) b!7321060))

(assert (= (and b!7321061 (not res!2959048)) b!7321064))

(assert (= (and b!7321064 (not res!2959052)) b!7321063))

(assert (= (and b!7321063 (not res!2959051)) b!7321067))

(assert (= (and b!7321067 (not res!2959046)) b!7321066))

(assert (= (and b!7321066 (not res!2959050)) b!7321062))

(assert (= (and start!714282 condSetEmpty!55720) setIsEmpty!55720))

(assert (= (and start!714282 (not condSetEmpty!55720)) setNonEmpty!55720))

(assert (= (and start!714282 condSetEmpty!55719) setIsEmpty!55719))

(assert (= (and start!714282 (not condSetEmpty!55719)) setNonEmpty!55719))

(declare-fun m!7986754 () Bool)

(assert (=> b!7321065 m!7986754))

(declare-fun m!7986756 () Bool)

(assert (=> b!7321065 m!7986756))

(declare-fun m!7986758 () Bool)

(assert (=> b!7321065 m!7986758))

(declare-fun m!7986760 () Bool)

(assert (=> b!7321061 m!7986760))

(declare-fun m!7986762 () Bool)

(assert (=> b!7321061 m!7986762))

(declare-fun m!7986764 () Bool)

(assert (=> b!7321063 m!7986764))

(declare-fun m!7986766 () Bool)

(assert (=> b!7321063 m!7986766))

(declare-fun m!7986768 () Bool)

(assert (=> start!714282 m!7986768))

(declare-fun m!7986770 () Bool)

(assert (=> start!714282 m!7986770))

(declare-fun m!7986772 () Bool)

(assert (=> b!7321067 m!7986772))

(declare-fun m!7986774 () Bool)

(assert (=> b!7321067 m!7986774))

(declare-fun m!7986776 () Bool)

(assert (=> b!7321066 m!7986776))

(declare-fun m!7986778 () Bool)

(assert (=> b!7321066 m!7986778))

(declare-fun m!7986780 () Bool)

(assert (=> b!7321066 m!7986780))

(assert (=> b!7321062 m!7986760))

(assert (=> b!7321062 m!7986760))

(declare-fun m!7986782 () Bool)

(assert (=> b!7321062 m!7986782))

(declare-fun m!7986784 () Bool)

(assert (=> b!7321064 m!7986784))

(declare-fun m!7986786 () Bool)

(assert (=> b!7321060 m!7986786))

(check-sat (not b!7321064) (not b!7321067) (not b!7321061) (not b!7321060) (not b!7321063) (not start!714282) tp_is_empty!48065 (not b!7321062) (not b_next!135031) (not b!7321065) tp_is_empty!48067 b_and!351731 (not b!7321066) (not setNonEmpty!55720) (not setNonEmpty!55719))
(check-sat b_and!351731 (not b_next!135031))
