; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714150 () Bool)

(assert start!714150)

(declare-fun b_free!134197 () Bool)

(declare-fun b_next!134987 () Bool)

(assert (=> start!714150 (= b_free!134197 (not b_next!134987))))

(declare-fun tp!2079200 () Bool)

(declare-fun b_and!351657 () Bool)

(assert (=> start!714150 (= tp!2079200 b_and!351657)))

(declare-fun b!7320553 () Bool)

(assert (=> b!7320553 true))

(assert (=> b!7320553 true))

(declare-fun f!643 () Int)

(declare-fun order!29281 () Int)

(declare-fun order!29283 () Int)

(declare-fun lambda!453198 () Int)

(declare-fun dynLambda!29278 (Int Int) Int)

(declare-fun dynLambda!29279 (Int Int) Int)

(assert (=> b!7320553 (< (dynLambda!29278 order!29281 f!643) (dynLambda!29279 order!29283 lambda!453198))))

(declare-fun b!7320550 () Bool)

(declare-fun e!4382971 () Bool)

(declare-fun e!4382972 () Bool)

(assert (=> b!7320550 (= e!4382971 e!4382972)))

(declare-fun res!2958662 () Bool)

(assert (=> b!7320550 (=> res!2958662 e!4382972)))

(declare-datatypes ((B!3745 0))(
  ( (B!3746 (val!29363 Int)) )
))
(declare-fun b!25336 () B!3745)

(declare-datatypes ((A!1043 0))(
  ( (A!1044 (val!29364 Int)) )
))
(declare-fun lt!2603963 () A!1043)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun dynLambda!29280 (Int A!1043) (InoxSet B!3745))

(assert (=> b!7320550 (= res!2958662 (not (select (dynLambda!29280 f!643 lt!2603963) b!25336)))))

(declare-fun s2!405 () (InoxSet A!1043))

(declare-fun getWitness!2388 ((InoxSet A!1043) Int) A!1043)

(assert (=> b!7320550 (= lt!2603963 (getWitness!2388 s2!405 lambda!453198))))

(declare-fun setNonEmpty!55527 () Bool)

(declare-fun setRes!55528 () Bool)

(declare-fun tp!2079202 () Bool)

(declare-fun tp_is_empty!47977 () Bool)

(assert (=> setNonEmpty!55527 (= setRes!55528 (and tp!2079202 tp_is_empty!47977))))

(declare-fun setElem!55527 () A!1043)

(declare-fun setRest!55527 () (InoxSet A!1043))

(assert (=> setNonEmpty!55527 (= s2!405 ((_ map or) (store ((as const (Array A!1043 Bool)) false) setElem!55527 true) setRest!55527))))

(declare-fun setIsEmpty!55527 () Bool)

(declare-fun setRes!55527 () Bool)

(assert (=> setIsEmpty!55527 setRes!55527))

(declare-fun setNonEmpty!55528 () Bool)

(declare-fun tp!2079201 () Bool)

(assert (=> setNonEmpty!55528 (= setRes!55527 (and tp!2079201 tp_is_empty!47977))))

(declare-fun s1!434 () (InoxSet A!1043))

(declare-fun setElem!55528 () A!1043)

(declare-fun setRest!55528 () (InoxSet A!1043))

(assert (=> setNonEmpty!55528 (= s1!434 ((_ map or) (store ((as const (Array A!1043 Bool)) false) setElem!55528 true) setRest!55528))))

(declare-fun lt!2603962 () (InoxSet B!3745))

(declare-fun b!7320551 () Bool)

(declare-fun lt!2603961 () (InoxSet B!3745))

(assert (=> b!7320551 (= e!4382972 (or (not (select ((_ map or) s1!434 s2!405) lt!2603963)) (select ((_ map or) lt!2603962 lt!2603961) b!25336)))))

(declare-fun b!7320552 () Bool)

(declare-fun e!4382974 () Bool)

(declare-fun e!4382973 () Bool)

(assert (=> b!7320552 (= e!4382974 e!4382973)))

(declare-fun res!2958661 () Bool)

(assert (=> b!7320552 (=> (not res!2958661) (not e!4382973))))

(assert (=> b!7320552 (= res!2958661 (select lt!2603961 b!25336))))

(declare-fun flatMap!3141 ((InoxSet A!1043) Int) (InoxSet B!3745))

(assert (=> b!7320552 (= lt!2603961 (flatMap!3141 s2!405 f!643))))

(declare-fun res!2958660 () Bool)

(assert (=> start!714150 (=> (not res!2958660) (not e!4382974))))

(assert (=> start!714150 (= res!2958660 (not (select lt!2603962 b!25336)))))

(assert (=> start!714150 (= lt!2603962 (flatMap!3141 s1!434 f!643))))

(assert (=> start!714150 e!4382974))

(declare-fun condSetEmpty!55527 () Bool)

(assert (=> start!714150 (= condSetEmpty!55527 (= s2!405 ((as const (Array A!1043 Bool)) false)))))

(assert (=> start!714150 setRes!55528))

(declare-fun tp_is_empty!47979 () Bool)

(assert (=> start!714150 tp_is_empty!47979))

(declare-fun condSetEmpty!55528 () Bool)

(assert (=> start!714150 (= condSetEmpty!55528 (= s1!434 ((as const (Array A!1043 Bool)) false)))))

(assert (=> start!714150 setRes!55527))

(assert (=> start!714150 tp!2079200))

(declare-fun setIsEmpty!55528 () Bool)

(assert (=> setIsEmpty!55528 setRes!55528))

(assert (=> b!7320553 (= e!4382973 (not e!4382971))))

(declare-fun res!2958663 () Bool)

(assert (=> b!7320553 (=> res!2958663 e!4382971)))

(declare-fun exists!4663 ((InoxSet A!1043) Int) Bool)

(assert (=> b!7320553 (= res!2958663 (not (exists!4663 s2!405 lambda!453198)))))

(declare-fun empty!3295 () A!1043)

(declare-fun flatMapPost!144 ((InoxSet A!1043) Int B!3745) A!1043)

(assert (=> b!7320553 (= (flatMapPost!144 s2!405 f!643 b!25336) empty!3295)))

(assert (=> b!7320553 true))

(assert (=> b!7320553 tp_is_empty!47977))

(assert (= (and start!714150 res!2958660) b!7320552))

(assert (= (and b!7320552 res!2958661) b!7320553))

(assert (= (and b!7320553 (not res!2958663)) b!7320550))

(assert (= (and b!7320550 (not res!2958662)) b!7320551))

(assert (= (and start!714150 condSetEmpty!55527) setIsEmpty!55528))

(assert (= (and start!714150 (not condSetEmpty!55527)) setNonEmpty!55527))

(assert (= (and start!714150 condSetEmpty!55528) setIsEmpty!55527))

(assert (= (and start!714150 (not condSetEmpty!55528)) setNonEmpty!55528))

(declare-fun b_lambda!282927 () Bool)

(assert (=> (not b_lambda!282927) (not b!7320550)))

(declare-fun t!385708 () Bool)

(declare-fun tb!262303 () Bool)

(assert (=> (and start!714150 (= f!643 f!643) t!385708) tb!262303))

(assert (=> b!7320550 t!385708))

(declare-fun result!353454 () Bool)

(declare-fun b_and!351659 () Bool)

(assert (= b_and!351657 (and (=> t!385708 result!353454) b_and!351659)))

(declare-fun m!7985740 () Bool)

(assert (=> b!7320551 m!7985740))

(declare-fun m!7985742 () Bool)

(assert (=> b!7320551 m!7985742))

(declare-fun m!7985744 () Bool)

(assert (=> b!7320552 m!7985744))

(declare-fun m!7985746 () Bool)

(assert (=> b!7320552 m!7985746))

(declare-fun m!7985748 () Bool)

(assert (=> b!7320550 m!7985748))

(declare-fun m!7985750 () Bool)

(assert (=> b!7320550 m!7985750))

(declare-fun m!7985752 () Bool)

(assert (=> b!7320550 m!7985752))

(declare-fun m!7985754 () Bool)

(assert (=> start!714150 m!7985754))

(declare-fun m!7985756 () Bool)

(assert (=> start!714150 m!7985756))

(declare-fun m!7985758 () Bool)

(assert (=> b!7320553 m!7985758))

(declare-fun m!7985760 () Bool)

(assert (=> b!7320553 m!7985760))

(check-sat (not tb!262303) (not setNonEmpty!55528) (not b!7320552) (not b!7320550) (not b_next!134987) (not setNonEmpty!55527) tp_is_empty!47977 b_and!351659 tp_is_empty!47979 (not b_lambda!282927) (not b!7320553) (not start!714150))
(check-sat b_and!351659 (not b_next!134987))
