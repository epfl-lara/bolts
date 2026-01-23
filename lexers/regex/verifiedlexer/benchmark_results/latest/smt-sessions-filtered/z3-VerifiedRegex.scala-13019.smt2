; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714302 () Bool)

(assert start!714302)

(declare-fun b_free!134253 () Bool)

(declare-fun b_next!135043 () Bool)

(assert (=> start!714302 (= b_free!134253 (not b_next!135043))))

(declare-fun tp!2079520 () Bool)

(declare-fun b_and!351749 () Bool)

(assert (=> start!714302 (= tp!2079520 b_and!351749)))

(declare-fun b!7321256 () Bool)

(assert (=> b!7321256 true))

(assert (=> b!7321256 true))

(declare-fun order!29387 () Int)

(declare-fun order!29385 () Int)

(declare-fun f!643 () Int)

(declare-fun lambda!453494 () Int)

(declare-fun dynLambda!29348 (Int Int) Int)

(declare-fun dynLambda!29349 (Int Int) Int)

(assert (=> b!7321256 (< (dynLambda!29348 order!29385 f!643) (dynLambda!29349 order!29387 lambda!453494))))

(declare-fun e!4383478 () Bool)

(declare-fun e!4383480 () Bool)

(assert (=> b!7321256 (= e!4383478 (not e!4383480))))

(declare-fun res!2959206 () Bool)

(assert (=> b!7321256 (=> res!2959206 e!4383480)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1099 0))(
  ( (A!1100 (val!29419 Int)) )
))
(declare-fun s1!434 () (InoxSet A!1099))

(declare-fun exists!4701 ((InoxSet A!1099) Int) Bool)

(assert (=> b!7321256 (= res!2959206 (exists!4701 s1!434 lambda!453494))))

(declare-fun e!4383483 () Bool)

(assert (=> b!7321256 e!4383483))

(declare-fun res!2959210 () Bool)

(assert (=> b!7321256 (=> (not res!2959210) (not e!4383483))))

(declare-fun lt!2604554 () A!1099)

(declare-datatypes ((B!3801 0))(
  ( (B!3802 (val!29420 Int)) )
))
(declare-fun b!25336 () B!3801)

(declare-fun flatMapPost!170 ((InoxSet A!1099) Int B!3801) A!1099)

(assert (=> b!7321256 (= res!2959210 (= (flatMapPost!170 s1!434 f!643 b!25336) lt!2604554))))

(declare-fun empty!3399 () A!1099)

(assert (=> b!7321256 (= lt!2604554 empty!3399)))

(assert (=> b!7321256 true))

(declare-fun tp_is_empty!48089 () Bool)

(assert (=> b!7321256 tp_is_empty!48089))

(declare-fun setIsEmpty!55762 () Bool)

(declare-fun setRes!55762 () Bool)

(assert (=> setIsEmpty!55762 setRes!55762))

(declare-fun call!665879 () Bool)

(declare-fun c!1358746 () Bool)

(declare-fun s2!405 () (InoxSet A!1099))

(declare-fun bm!665873 () Bool)

(assert (=> bm!665873 (= call!665879 (exists!4701 (ite c!1358746 s1!434 s2!405) (ite c!1358746 lambda!453494 lambda!453494)))))

(declare-fun res!2959207 () Bool)

(declare-fun e!4383475 () Bool)

(assert (=> start!714302 (=> (not res!2959207) (not e!4383475))))

(declare-fun lt!2604552 () (InoxSet B!3801))

(assert (=> start!714302 (= res!2959207 (not (select lt!2604552 b!25336)))))

(declare-fun flatMap!3169 ((InoxSet A!1099) Int) (InoxSet B!3801))

(assert (=> start!714302 (= lt!2604552 (flatMap!3169 s1!434 f!643))))

(assert (=> start!714302 e!4383475))

(declare-fun condSetEmpty!55763 () Bool)

(assert (=> start!714302 (= condSetEmpty!55763 (= s2!405 ((as const (Array A!1099 Bool)) false)))))

(assert (=> start!714302 setRes!55762))

(declare-fun tp_is_empty!48091 () Bool)

(assert (=> start!714302 tp_is_empty!48091))

(declare-fun condSetEmpty!55762 () Bool)

(assert (=> start!714302 (= condSetEmpty!55762 (= s1!434 ((as const (Array A!1099 Bool)) false)))))

(declare-fun setRes!55763 () Bool)

(assert (=> start!714302 setRes!55763))

(assert (=> start!714302 tp!2079520))

(declare-fun setNonEmpty!55762 () Bool)

(declare-fun tp!2079519 () Bool)

(assert (=> setNonEmpty!55762 (= setRes!55763 (and tp!2079519 tp_is_empty!48089))))

(declare-fun setElem!55762 () A!1099)

(declare-fun setRest!55762 () (InoxSet A!1099))

(assert (=> setNonEmpty!55762 (= s1!434 ((_ map or) (store ((as const (Array A!1099 Bool)) false) setElem!55762 true) setRest!55762))))

(declare-fun b!7321257 () Bool)

(assert (=> b!7321257 (= e!4383475 e!4383478)))

(declare-fun res!2959204 () Bool)

(assert (=> b!7321257 (=> (not res!2959204) (not e!4383478))))

(declare-fun lt!2604555 () (InoxSet B!3801))

(assert (=> b!7321257 (= res!2959204 (and (not (select lt!2604555 b!25336)) (not (select ((_ map or) lt!2604552 lt!2604555) b!25336))))))

(assert (=> b!7321257 (= lt!2604555 (flatMap!3169 s2!405 f!643))))

(declare-fun setNonEmpty!55763 () Bool)

(declare-fun tp!2079521 () Bool)

(assert (=> setNonEmpty!55763 (= setRes!55762 (and tp!2079521 tp_is_empty!48089))))

(declare-fun setElem!55763 () A!1099)

(declare-fun setRest!55763 () (InoxSet A!1099))

(assert (=> setNonEmpty!55763 (= s2!405 ((_ map or) (store ((as const (Array A!1099 Bool)) false) setElem!55763 true) setRest!55763))))

(declare-fun b!7321258 () Bool)

(declare-fun e!4383481 () Bool)

(assert (=> b!7321258 (= e!4383481 false)))

(declare-fun b!7321259 () Bool)

(declare-datatypes ((Unit!164849 0))(
  ( (Unit!164850) )
))
(declare-fun e!4383477 () Unit!164849)

(declare-fun Unit!164851 () Unit!164849)

(assert (=> b!7321259 (= e!4383477 Unit!164851)))

(declare-fun lt!2604560 () Unit!164849)

(declare-fun call!665878 () Unit!164849)

(assert (=> b!7321259 (= lt!2604560 call!665878)))

(declare-fun res!2959205 () Bool)

(assert (=> b!7321259 (= res!2959205 call!665879)))

(declare-fun e!4383482 () Bool)

(assert (=> b!7321259 (=> (not res!2959205) (not e!4383482))))

(assert (=> b!7321259 e!4383482))

(declare-fun b!7321260 () Bool)

(assert (=> b!7321260 (= e!4383482 false)))

(declare-fun b!7321261 () Bool)

(assert (=> b!7321261 (= e!4383483 (= (flatMapPost!170 s2!405 f!643 b!25336) lt!2604554))))

(declare-fun b!7321262 () Bool)

(declare-fun e!4383474 () Bool)

(declare-fun e!4383476 () Bool)

(assert (=> b!7321262 (= e!4383474 e!4383476)))

(declare-fun res!2959209 () Bool)

(assert (=> b!7321262 (=> res!2959209 e!4383476)))

(declare-fun lt!2604557 () A!1099)

(declare-fun lt!2604559 () Bool)

(assert (=> b!7321262 (= res!2959209 (and (not lt!2604559) (not (select s2!405 lt!2604557))))))

(assert (=> b!7321262 (= lt!2604559 (select s1!434 lt!2604557))))

(declare-fun lt!2604558 () (InoxSet A!1099))

(declare-fun getWitness!2414 ((InoxSet A!1099) Int) A!1099)

(assert (=> b!7321262 (= lt!2604557 (getWitness!2414 lt!2604558 lambda!453494))))

(declare-fun b!7321263 () Bool)

(assert (=> b!7321263 (= e!4383476 false)))

(declare-fun lt!2604556 () Unit!164849)

(assert (=> b!7321263 (= lt!2604556 e!4383477)))

(assert (=> b!7321263 (= c!1358746 lt!2604559)))

(declare-fun setIsEmpty!55763 () Bool)

(assert (=> setIsEmpty!55763 setRes!55763))

(declare-fun b!7321264 () Bool)

(declare-fun res!2959211 () Bool)

(assert (=> b!7321264 (=> res!2959211 e!4383480)))

(assert (=> b!7321264 (= res!2959211 (exists!4701 s2!405 lambda!453494))))

(declare-fun b!7321265 () Bool)

(declare-fun Unit!164852 () Unit!164849)

(assert (=> b!7321265 (= e!4383477 Unit!164852)))

(declare-fun lt!2604553 () Unit!164849)

(assert (=> b!7321265 (= lt!2604553 call!665878)))

(declare-fun res!2959203 () Bool)

(assert (=> b!7321265 (= res!2959203 call!665879)))

(assert (=> b!7321265 (=> (not res!2959203) (not e!4383481))))

(assert (=> b!7321265 e!4383481))

(declare-fun b!7321266 () Bool)

(declare-fun e!4383479 () Bool)

(assert (=> b!7321266 (= e!4383479 e!4383474)))

(declare-fun res!2959212 () Bool)

(assert (=> b!7321266 (=> res!2959212 e!4383474)))

(assert (=> b!7321266 (= res!2959212 (not (exists!4701 lt!2604558 lambda!453494)))))

(assert (=> b!7321266 (= (flatMapPost!170 lt!2604558 f!643 b!25336) lt!2604554)))

(declare-fun bm!665874 () Bool)

(declare-fun lemmaContainsThenExists!287 ((InoxSet A!1099) A!1099 Int) Unit!164849)

(assert (=> bm!665874 (= call!665878 (lemmaContainsThenExists!287 (ite c!1358746 s1!434 s2!405) lt!2604557 (ite c!1358746 lambda!453494 lambda!453494)))))

(declare-fun b!7321267 () Bool)

(assert (=> b!7321267 (= e!4383480 e!4383479)))

(declare-fun res!2959208 () Bool)

(assert (=> b!7321267 (=> res!2959208 e!4383479)))

(assert (=> b!7321267 (= res!2959208 (not (select (flatMap!3169 lt!2604558 f!643) b!25336)))))

(assert (=> b!7321267 (= lt!2604558 ((_ map or) s1!434 s2!405))))

(assert (= (and start!714302 res!2959207) b!7321257))

(assert (= (and b!7321257 res!2959204) b!7321256))

(assert (= (and b!7321256 res!2959210) b!7321261))

(assert (= (and b!7321256 (not res!2959206)) b!7321264))

(assert (= (and b!7321264 (not res!2959211)) b!7321267))

(assert (= (and b!7321267 (not res!2959208)) b!7321266))

(assert (= (and b!7321266 (not res!2959212)) b!7321262))

(assert (= (and b!7321262 (not res!2959209)) b!7321263))

(assert (= (and b!7321263 c!1358746) b!7321259))

(assert (= (and b!7321263 (not c!1358746)) b!7321265))

(assert (= (and b!7321259 res!2959205) b!7321260))

(assert (= (and b!7321265 res!2959203) b!7321258))

(assert (= (or b!7321259 b!7321265) bm!665874))

(assert (= (or b!7321259 b!7321265) bm!665873))

(assert (= (and start!714302 condSetEmpty!55763) setIsEmpty!55762))

(assert (= (and start!714302 (not condSetEmpty!55763)) setNonEmpty!55763))

(assert (= (and start!714302 condSetEmpty!55762) setIsEmpty!55763))

(assert (= (and start!714302 (not condSetEmpty!55762)) setNonEmpty!55762))

(declare-fun m!7987014 () Bool)

(assert (=> b!7321267 m!7987014))

(declare-fun m!7987016 () Bool)

(assert (=> b!7321267 m!7987016))

(declare-fun m!7987018 () Bool)

(assert (=> b!7321256 m!7987018))

(declare-fun m!7987020 () Bool)

(assert (=> b!7321256 m!7987020))

(declare-fun m!7987022 () Bool)

(assert (=> bm!665873 m!7987022))

(declare-fun m!7987024 () Bool)

(assert (=> b!7321262 m!7987024))

(declare-fun m!7987026 () Bool)

(assert (=> b!7321262 m!7987026))

(declare-fun m!7987028 () Bool)

(assert (=> b!7321262 m!7987028))

(declare-fun m!7987030 () Bool)

(assert (=> b!7321257 m!7987030))

(declare-fun m!7987032 () Bool)

(assert (=> b!7321257 m!7987032))

(declare-fun m!7987034 () Bool)

(assert (=> b!7321257 m!7987034))

(declare-fun m!7987036 () Bool)

(assert (=> bm!665874 m!7987036))

(declare-fun m!7987038 () Bool)

(assert (=> b!7321261 m!7987038))

(declare-fun m!7987040 () Bool)

(assert (=> b!7321266 m!7987040))

(declare-fun m!7987042 () Bool)

(assert (=> b!7321266 m!7987042))

(declare-fun m!7987044 () Bool)

(assert (=> b!7321264 m!7987044))

(declare-fun m!7987046 () Bool)

(assert (=> start!714302 m!7987046))

(declare-fun m!7987048 () Bool)

(assert (=> start!714302 m!7987048))

(check-sat (not b_next!135043) (not setNonEmpty!55762) (not b!7321257) (not setNonEmpty!55763) tp_is_empty!48091 (not b!7321266) (not b!7321264) (not bm!665873) (not b!7321256) tp_is_empty!48089 (not b!7321267) (not bm!665874) (not start!714302) (not b!7321261) b_and!351749 (not b!7321262))
(check-sat b_and!351749 (not b_next!135043))
