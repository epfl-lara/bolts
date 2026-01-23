; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713998 () Bool)

(assert start!713998)

(declare-fun b_free!134153 () Bool)

(declare-fun b_next!134943 () Bool)

(assert (=> start!713998 (= b_free!134153 (not b_next!134943))))

(declare-fun tp!2078933 () Bool)

(declare-fun b_and!351561 () Bool)

(assert (=> start!713998 (= tp!2078933 b_and!351561)))

(declare-fun b!7320128 () Bool)

(assert (=> b!7320128 true))

(assert (=> b!7320128 true))

(declare-fun lambda!453028 () Int)

(declare-fun order!29193 () Int)

(declare-fun order!29195 () Int)

(declare-fun f!643 () Int)

(declare-fun dynLambda!29208 (Int Int) Int)

(declare-fun dynLambda!29209 (Int Int) Int)

(assert (=> b!7320128 (< (dynLambda!29208 order!29193 f!643) (dynLambda!29209 order!29195 lambda!453028))))

(declare-datatypes ((A!999 0))(
  ( (A!1000 (val!29319 Int)) )
))
(declare-fun lt!2603713 () A!999)

(declare-fun e!4382743 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s2!405 () (InoxSet A!999))

(declare-fun b!7320127 () Bool)

(declare-datatypes ((B!3701 0))(
  ( (B!3702 (val!29320 Int)) )
))
(declare-fun b!25336 () B!3701)

(declare-fun flatMapPost!122 ((InoxSet A!999) Int B!3701) A!999)

(assert (=> b!7320127 (= e!4382743 (= (flatMapPost!122 s2!405 f!643 b!25336) lt!2603713))))

(declare-fun res!2958390 () Bool)

(declare-fun e!4382744 () Bool)

(assert (=> start!713998 (=> (not res!2958390) (not e!4382744))))

(declare-fun lt!2603711 () (InoxSet B!3701))

(assert (=> start!713998 (= res!2958390 (not (select lt!2603711 b!25336)))))

(declare-fun s1!434 () (InoxSet A!999))

(declare-fun flatMap!3119 ((InoxSet A!999) Int) (InoxSet B!3701))

(assert (=> start!713998 (= lt!2603711 (flatMap!3119 s1!434 f!643))))

(assert (=> start!713998 e!4382744))

(declare-fun condSetEmpty!55325 () Bool)

(assert (=> start!713998 (= condSetEmpty!55325 (= s2!405 ((as const (Array A!999 Bool)) false)))))

(declare-fun setRes!55325 () Bool)

(assert (=> start!713998 setRes!55325))

(declare-fun tp_is_empty!47891 () Bool)

(assert (=> start!713998 tp_is_empty!47891))

(declare-fun condSetEmpty!55326 () Bool)

(assert (=> start!713998 (= condSetEmpty!55326 (= s1!434 ((as const (Array A!999 Bool)) false)))))

(declare-fun setRes!55326 () Bool)

(assert (=> start!713998 setRes!55326))

(assert (=> start!713998 tp!2078933))

(declare-fun setIsEmpty!55325 () Bool)

(assert (=> setIsEmpty!55325 setRes!55326))

(declare-fun setNonEmpty!55325 () Bool)

(declare-fun tp!2078934 () Bool)

(declare-fun tp_is_empty!47889 () Bool)

(assert (=> setNonEmpty!55325 (= setRes!55326 (and tp!2078934 tp_is_empty!47889))))

(declare-fun setElem!55325 () A!999)

(declare-fun setRest!55326 () (InoxSet A!999))

(assert (=> setNonEmpty!55325 (= s1!434 ((_ map or) (store ((as const (Array A!999 Bool)) false) setElem!55325 true) setRest!55326))))

(declare-fun e!4382742 () Bool)

(declare-fun e!4382741 () Bool)

(assert (=> b!7320128 (= e!4382742 (not e!4382741))))

(declare-fun res!2958393 () Bool)

(assert (=> b!7320128 (=> res!2958393 e!4382741)))

(declare-fun exists!4629 ((InoxSet A!999) Int) Bool)

(assert (=> b!7320128 (= res!2958393 (exists!4629 s1!434 lambda!453028))))

(assert (=> b!7320128 e!4382743))

(declare-fun res!2958391 () Bool)

(assert (=> b!7320128 (=> (not res!2958391) (not e!4382743))))

(assert (=> b!7320128 (= res!2958391 (= (flatMapPost!122 s1!434 f!643 b!25336) lt!2603713))))

(declare-fun empty!3207 () A!999)

(assert (=> b!7320128 (= lt!2603713 empty!3207)))

(assert (=> b!7320128 true))

(assert (=> b!7320128 tp_is_empty!47889))

(declare-fun setNonEmpty!55326 () Bool)

(declare-fun tp!2078932 () Bool)

(assert (=> setNonEmpty!55326 (= setRes!55325 (and tp!2078932 tp_is_empty!47889))))

(declare-fun setElem!55326 () A!999)

(declare-fun setRest!55325 () (InoxSet A!999))

(assert (=> setNonEmpty!55326 (= s2!405 ((_ map or) (store ((as const (Array A!999 Bool)) false) setElem!55326 true) setRest!55325))))

(declare-fun b!7320129 () Bool)

(assert (=> b!7320129 (= e!4382744 e!4382742)))

(declare-fun res!2958389 () Bool)

(assert (=> b!7320129 (=> (not res!2958389) (not e!4382742))))

(declare-fun lt!2603712 () (InoxSet B!3701))

(assert (=> b!7320129 (= res!2958389 (and (not (select lt!2603712 b!25336)) (not (select ((_ map or) lt!2603711 lt!2603712) b!25336))))))

(assert (=> b!7320129 (= lt!2603712 (flatMap!3119 s2!405 f!643))))

(declare-fun b!7320130 () Bool)

(declare-fun e!4382739 () Bool)

(declare-fun e!4382740 () Bool)

(assert (=> b!7320130 (= e!4382739 e!4382740)))

(declare-fun res!2958392 () Bool)

(assert (=> b!7320130 (=> res!2958392 e!4382740)))

(declare-fun lt!2603710 () (InoxSet A!999))

(assert (=> b!7320130 (= res!2958392 (not (exists!4629 lt!2603710 lambda!453028)))))

(assert (=> b!7320130 (= (flatMapPost!122 lt!2603710 f!643 b!25336) lt!2603713)))

(declare-fun b!7320131 () Bool)

(assert (=> b!7320131 (= e!4382741 e!4382739)))

(declare-fun res!2958387 () Bool)

(assert (=> b!7320131 (=> res!2958387 e!4382739)))

(assert (=> b!7320131 (= res!2958387 (not (select (flatMap!3119 lt!2603710 f!643) b!25336)))))

(assert (=> b!7320131 (= lt!2603710 ((_ map or) s1!434 s2!405))))

(declare-fun b!7320132 () Bool)

(assert (=> b!7320132 (= e!4382740 true)))

(declare-fun lt!2603709 () A!999)

(declare-fun getWitness!2361 ((InoxSet A!999) Int) A!999)

(assert (=> b!7320132 (= lt!2603709 (getWitness!2361 lt!2603710 lambda!453028))))

(declare-fun b!7320133 () Bool)

(declare-fun res!2958388 () Bool)

(assert (=> b!7320133 (=> res!2958388 e!4382741)))

(assert (=> b!7320133 (= res!2958388 (exists!4629 s2!405 lambda!453028))))

(declare-fun setIsEmpty!55326 () Bool)

(assert (=> setIsEmpty!55326 setRes!55325))

(assert (= (and start!713998 res!2958390) b!7320129))

(assert (= (and b!7320129 res!2958389) b!7320128))

(assert (= (and b!7320128 res!2958391) b!7320127))

(assert (= (and b!7320128 (not res!2958393)) b!7320133))

(assert (= (and b!7320133 (not res!2958388)) b!7320131))

(assert (= (and b!7320131 (not res!2958387)) b!7320130))

(assert (= (and b!7320130 (not res!2958392)) b!7320132))

(assert (= (and start!713998 condSetEmpty!55325) setIsEmpty!55326))

(assert (= (and start!713998 (not condSetEmpty!55325)) setNonEmpty!55326))

(assert (= (and start!713998 condSetEmpty!55326) setIsEmpty!55325))

(assert (= (and start!713998 (not condSetEmpty!55326)) setNonEmpty!55325))

(declare-fun m!7985002 () Bool)

(assert (=> b!7320133 m!7985002))

(declare-fun m!7985004 () Bool)

(assert (=> b!7320130 m!7985004))

(declare-fun m!7985006 () Bool)

(assert (=> b!7320130 m!7985006))

(declare-fun m!7985008 () Bool)

(assert (=> b!7320128 m!7985008))

(declare-fun m!7985010 () Bool)

(assert (=> b!7320128 m!7985010))

(declare-fun m!7985012 () Bool)

(assert (=> b!7320132 m!7985012))

(declare-fun m!7985014 () Bool)

(assert (=> b!7320131 m!7985014))

(declare-fun m!7985016 () Bool)

(assert (=> b!7320131 m!7985016))

(declare-fun m!7985018 () Bool)

(assert (=> b!7320129 m!7985018))

(declare-fun m!7985020 () Bool)

(assert (=> b!7320129 m!7985020))

(declare-fun m!7985022 () Bool)

(assert (=> b!7320129 m!7985022))

(declare-fun m!7985024 () Bool)

(assert (=> start!713998 m!7985024))

(declare-fun m!7985026 () Bool)

(assert (=> start!713998 m!7985026))

(declare-fun m!7985028 () Bool)

(assert (=> b!7320127 m!7985028))

(check-sat (not b!7320132) b_and!351561 tp_is_empty!47889 (not b_next!134943) (not setNonEmpty!55325) (not b!7320130) tp_is_empty!47891 (not start!713998) (not b!7320129) (not b!7320128) (not b!7320127) (not b!7320133) (not b!7320131) (not setNonEmpty!55326))
(check-sat b_and!351561 (not b_next!134943))
