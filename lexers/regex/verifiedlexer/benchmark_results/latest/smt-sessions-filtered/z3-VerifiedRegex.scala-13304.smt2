; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723266 () Bool)

(assert start!723266)

(declare-fun b_free!134357 () Bool)

(declare-fun b_next!135147 () Bool)

(assert (=> start!723266 (= b_free!134357 (not b_next!135147))))

(declare-fun tp!2157409 () Bool)

(declare-fun b_and!351977 () Bool)

(assert (=> start!723266 (= tp!2157409 b_and!351977)))

(declare-fun b!7448242 () Bool)

(assert (=> b!7448242 true))

(declare-fun lambda!460701 () Int)

(declare-fun order!29633 () Int)

(declare-fun order!29635 () Int)

(declare-fun f!463 () Int)

(declare-fun dynLambda!29767 (Int Int) Int)

(declare-fun dynLambda!29768 (Int Int) Int)

(assert (=> b!7448242 (< (dynLambda!29767 order!29633 f!463) (dynLambda!29768 order!29635 lambda!460701))))

(assert (=> b!7448242 true))

(declare-fun setIsEmpty!56798 () Bool)

(declare-fun setRes!56798 () Bool)

(assert (=> setIsEmpty!56798 setRes!56798))

(declare-fun setNonEmpty!56798 () Bool)

(declare-fun tp!2157408 () Bool)

(declare-fun tp_is_empty!49231 () Bool)

(assert (=> setNonEmpty!56798 (= setRes!56798 (and tp!2157408 tp_is_empty!49231))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1147 0))(
  ( (A!1148 (val!30005 Int)) )
))
(declare-fun s!1397 () (InoxSet A!1147))

(declare-fun setElem!56798 () A!1147)

(declare-fun setRest!56798 () (InoxSet A!1147))

(assert (=> setNonEmpty!56798 (= s!1397 ((_ map or) (store ((as const (Array A!1147 Bool)) false) setElem!56798 true) setRest!56798))))

(declare-fun e!4446540 () Bool)

(declare-fun e!4446542 () Bool)

(assert (=> b!7448242 (= e!4446540 (not e!4446542))))

(declare-fun res!2987705 () Bool)

(assert (=> b!7448242 (=> res!2987705 e!4446542)))

(declare-fun exists!4832 ((InoxSet A!1147) Int) Bool)

(assert (=> b!7448242 (= res!2987705 (not (exists!4832 s!1397 lambda!460701)))))

(declare-datatypes ((B!3901 0))(
  ( (B!3902 (val!30006 Int)) )
))
(declare-fun lt!2619707 () B!3901)

(declare-fun empty!3711 () A!1147)

(declare-fun flatMapPost!248 ((InoxSet A!1147) Int B!3901) A!1147)

(assert (=> b!7448242 (= (flatMapPost!248 s!1397 f!463 lt!2619707) empty!3711)))

(assert (=> b!7448242 true))

(assert (=> b!7448242 tp_is_empty!49231))

(declare-fun b!7448243 () Bool)

(declare-fun e!4446539 () Bool)

(declare-fun e!4446541 () Bool)

(assert (=> b!7448243 (= e!4446539 e!4446541)))

(declare-fun res!2987708 () Bool)

(assert (=> b!7448243 (=> (not res!2987708) (not e!4446541))))

(declare-fun lt!2619705 () (InoxSet B!3901))

(assert (=> b!7448243 (= res!2987708 (not (= lt!2619705 ((as const (Array B!3901 Bool)) false))))))

(declare-fun flatMap!3259 ((InoxSet A!1147) Int) (InoxSet B!3901))

(assert (=> b!7448243 (= lt!2619705 (flatMap!3259 s!1397 f!463))))

(declare-fun res!2987707 () Bool)

(assert (=> start!723266 (=> (not res!2987707) (not e!4446539))))

(assert (=> start!723266 (= res!2987707 (= s!1397 ((as const (Array A!1147 Bool)) false)))))

(assert (=> start!723266 e!4446539))

(declare-fun condSetEmpty!56798 () Bool)

(assert (=> start!723266 (= condSetEmpty!56798 (= s!1397 ((as const (Array A!1147 Bool)) false)))))

(assert (=> start!723266 setRes!56798))

(assert (=> start!723266 tp!2157409))

(declare-fun b!7448244 () Bool)

(assert (=> b!7448244 (= e!4446541 e!4446540)))

(declare-fun res!2987706 () Bool)

(assert (=> b!7448244 (=> (not res!2987706) (not e!4446540))))

(assert (=> b!7448244 (= res!2987706 (select lt!2619705 lt!2619707))))

(declare-datatypes ((List!72189 0))(
  ( (Nil!72065) (Cons!72065 (h!78513 B!3901) (t!386758 List!72189)) )
))
(declare-fun head!15285 (List!72189) B!3901)

(declare-fun toList!11812 ((InoxSet B!3901)) List!72189)

(assert (=> b!7448244 (= lt!2619707 (head!15285 (toList!11812 lt!2619705)))))

(declare-fun b!7448245 () Bool)

(assert (=> b!7448245 (= e!4446542 true)))

(declare-fun lt!2619706 () A!1147)

(declare-fun getWitness!2470 ((InoxSet A!1147) Int) A!1147)

(assert (=> b!7448245 (= lt!2619706 (getWitness!2470 s!1397 lambda!460701))))

(assert (= (and start!723266 res!2987707) b!7448243))

(assert (= (and b!7448243 res!2987708) b!7448244))

(assert (= (and b!7448244 res!2987706) b!7448242))

(assert (= (and b!7448242 (not res!2987705)) b!7448245))

(assert (= (and start!723266 condSetEmpty!56798) setIsEmpty!56798))

(assert (= (and start!723266 (not condSetEmpty!56798)) setNonEmpty!56798))

(declare-fun m!8055974 () Bool)

(assert (=> b!7448242 m!8055974))

(declare-fun m!8055976 () Bool)

(assert (=> b!7448242 m!8055976))

(declare-fun m!8055978 () Bool)

(assert (=> b!7448243 m!8055978))

(declare-fun m!8055980 () Bool)

(assert (=> b!7448244 m!8055980))

(declare-fun m!8055982 () Bool)

(assert (=> b!7448244 m!8055982))

(assert (=> b!7448244 m!8055982))

(declare-fun m!8055984 () Bool)

(assert (=> b!7448244 m!8055984))

(declare-fun m!8055986 () Bool)

(assert (=> b!7448245 m!8055986))

(check-sat (not setNonEmpty!56798) tp_is_empty!49231 b_and!351977 (not b!7448244) (not b!7448242) (not b!7448245) (not b_next!135147) (not b!7448243))
(check-sat b_and!351977 (not b_next!135147))
