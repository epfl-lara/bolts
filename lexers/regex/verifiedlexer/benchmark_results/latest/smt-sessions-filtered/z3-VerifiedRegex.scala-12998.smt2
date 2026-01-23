; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714058 () Bool)

(assert start!714058)

(declare-fun b_free!134169 () Bool)

(declare-fun b_next!134959 () Bool)

(assert (=> start!714058 (= b_free!134169 (not b_next!134959))))

(declare-fun tp!2079025 () Bool)

(declare-fun b_and!351595 () Bool)

(assert (=> start!714058 (= tp!2079025 b_and!351595)))

(declare-fun b!7320263 () Bool)

(assert (=> b!7320263 true))

(assert (=> b!7320263 true))

(declare-fun order!29225 () Int)

(declare-fun f!643 () Int)

(declare-fun lambda!453082 () Int)

(declare-fun order!29227 () Int)

(declare-fun dynLambda!29233 (Int Int) Int)

(declare-fun dynLambda!29234 (Int Int) Int)

(assert (=> b!7320263 (< (dynLambda!29233 order!29225 f!643) (dynLambda!29234 order!29227 lambda!453082))))

(declare-fun e!4382808 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1015 0))(
  ( (A!1016 (val!29335 Int)) )
))
(declare-fun s2!405 () (InoxSet A!1015))

(declare-datatypes ((B!3717 0))(
  ( (B!3718 (val!29336 Int)) )
))
(declare-fun b!25336 () B!3717)

(declare-fun b!7320260 () Bool)

(declare-fun lt!2603779 () (InoxSet B!3717))

(declare-fun flatMap!3127 ((InoxSet A!1015) Int) (InoxSet B!3717))

(assert (=> b!7320260 (= e!4382808 (select ((_ map or) lt!2603779 (flatMap!3127 s2!405 f!643)) b!25336))))

(declare-fun b!7320261 () Bool)

(declare-fun res!2958463 () Bool)

(assert (=> b!7320261 (=> res!2958463 e!4382808)))

(declare-fun lt!2603778 () A!1015)

(declare-fun s1!434 () (InoxSet A!1015))

(assert (=> b!7320261 (= res!2958463 (not (select ((_ map or) s1!434 s2!405) lt!2603778)))))

(declare-fun res!2958464 () Bool)

(declare-fun e!4382810 () Bool)

(assert (=> start!714058 (=> (not res!2958464) (not e!4382810))))

(assert (=> start!714058 (= res!2958464 (select lt!2603779 b!25336))))

(assert (=> start!714058 (= lt!2603779 (flatMap!3127 s1!434 f!643))))

(assert (=> start!714058 e!4382810))

(declare-fun condSetEmpty!55394 () Bool)

(assert (=> start!714058 (= condSetEmpty!55394 (= s2!405 ((as const (Array A!1015 Bool)) false)))))

(declare-fun setRes!55394 () Bool)

(assert (=> start!714058 setRes!55394))

(declare-fun tp_is_empty!47923 () Bool)

(assert (=> start!714058 tp_is_empty!47923))

(declare-fun condSetEmpty!55393 () Bool)

(assert (=> start!714058 (= condSetEmpty!55393 (= s1!434 ((as const (Array A!1015 Bool)) false)))))

(declare-fun setRes!55393 () Bool)

(assert (=> start!714058 setRes!55393))

(assert (=> start!714058 tp!2079025))

(declare-fun setNonEmpty!55393 () Bool)

(declare-fun tp!2079026 () Bool)

(declare-fun tp_is_empty!47921 () Bool)

(assert (=> setNonEmpty!55393 (= setRes!55394 (and tp!2079026 tp_is_empty!47921))))

(declare-fun setElem!55394 () A!1015)

(declare-fun setRest!55393 () (InoxSet A!1015))

(assert (=> setNonEmpty!55393 (= s2!405 ((_ map or) (store ((as const (Array A!1015 Bool)) false) setElem!55394 true) setRest!55393))))

(declare-fun setNonEmpty!55394 () Bool)

(declare-fun tp!2079024 () Bool)

(assert (=> setNonEmpty!55394 (= setRes!55393 (and tp!2079024 tp_is_empty!47921))))

(declare-fun setElem!55393 () A!1015)

(declare-fun setRest!55394 () (InoxSet A!1015))

(assert (=> setNonEmpty!55394 (= s1!434 ((_ map or) (store ((as const (Array A!1015 Bool)) false) setElem!55393 true) setRest!55394))))

(declare-fun b!7320262 () Bool)

(declare-fun e!4382809 () Bool)

(assert (=> b!7320262 (= e!4382809 e!4382808)))

(declare-fun res!2958465 () Bool)

(assert (=> b!7320262 (=> res!2958465 e!4382808)))

(declare-fun dynLambda!29235 (Int A!1015) (InoxSet B!3717))

(assert (=> b!7320262 (= res!2958465 (not (select (dynLambda!29235 f!643 lt!2603778) b!25336)))))

(declare-fun getWitness!2371 ((InoxSet A!1015) Int) A!1015)

(assert (=> b!7320262 (= lt!2603778 (getWitness!2371 s1!434 lambda!453082))))

(assert (=> b!7320263 (= e!4382810 (not e!4382809))))

(declare-fun res!2958462 () Bool)

(assert (=> b!7320263 (=> res!2958462 e!4382809)))

(declare-fun exists!4643 ((InoxSet A!1015) Int) Bool)

(assert (=> b!7320263 (= res!2958462 (not (exists!4643 s1!434 lambda!453082)))))

(declare-fun empty!3239 () A!1015)

(declare-fun flatMapPost!130 ((InoxSet A!1015) Int B!3717) A!1015)

(assert (=> b!7320263 (= (flatMapPost!130 s1!434 f!643 b!25336) empty!3239)))

(assert (=> b!7320263 true))

(assert (=> b!7320263 tp_is_empty!47921))

(declare-fun setIsEmpty!55393 () Bool)

(assert (=> setIsEmpty!55393 setRes!55394))

(declare-fun setIsEmpty!55394 () Bool)

(assert (=> setIsEmpty!55394 setRes!55393))

(assert (= (and start!714058 res!2958464) b!7320263))

(assert (= (and b!7320263 (not res!2958462)) b!7320262))

(assert (= (and b!7320262 (not res!2958465)) b!7320261))

(assert (= (and b!7320261 (not res!2958463)) b!7320260))

(assert (= (and start!714058 condSetEmpty!55394) setIsEmpty!55393))

(assert (= (and start!714058 (not condSetEmpty!55394)) setNonEmpty!55393))

(assert (= (and start!714058 condSetEmpty!55393) setIsEmpty!55394))

(assert (= (and start!714058 (not condSetEmpty!55393)) setNonEmpty!55394))

(declare-fun b_lambda!282857 () Bool)

(assert (=> (not b_lambda!282857) (not b!7320262)))

(declare-fun t!385667 () Bool)

(declare-fun tb!262269 () Bool)

(assert (=> (and start!714058 (= f!643 f!643) t!385667) tb!262269))

(assert (=> b!7320262 t!385667))

(declare-fun result!353392 () Bool)

(declare-fun b_and!351597 () Bool)

(assert (= b_and!351595 (and (=> t!385667 result!353392) b_and!351597)))

(declare-fun m!7985238 () Bool)

(assert (=> b!7320263 m!7985238))

(declare-fun m!7985240 () Bool)

(assert (=> b!7320263 m!7985240))

(declare-fun m!7985242 () Bool)

(assert (=> b!7320262 m!7985242))

(declare-fun m!7985244 () Bool)

(assert (=> b!7320262 m!7985244))

(declare-fun m!7985246 () Bool)

(assert (=> b!7320262 m!7985246))

(declare-fun m!7985248 () Bool)

(assert (=> b!7320260 m!7985248))

(declare-fun m!7985250 () Bool)

(assert (=> b!7320260 m!7985250))

(declare-fun m!7985252 () Bool)

(assert (=> start!714058 m!7985252))

(declare-fun m!7985254 () Bool)

(assert (=> start!714058 m!7985254))

(declare-fun m!7985256 () Bool)

(assert (=> b!7320261 m!7985256))

(check-sat (not b!7320263) (not b!7320260) tp_is_empty!47921 (not b!7320262) (not b_lambda!282857) tp_is_empty!47923 (not b_next!134959) (not start!714058) (not setNonEmpty!55394) (not tb!262269) (not setNonEmpty!55393) b_and!351597)
(check-sat b_and!351597 (not b_next!134959))
