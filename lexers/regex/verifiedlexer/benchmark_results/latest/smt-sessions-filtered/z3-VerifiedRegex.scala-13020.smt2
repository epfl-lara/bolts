; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714306 () Bool)

(assert start!714306)

(declare-fun b_free!134257 () Bool)

(declare-fun b_next!135047 () Bool)

(assert (=> start!714306 (= b_free!134257 (not b_next!135047))))

(declare-fun tp!2079539 () Bool)

(declare-fun b_and!351753 () Bool)

(assert (=> start!714306 (= tp!2079539 b_and!351753)))

(declare-fun b!7321338 () Bool)

(assert (=> b!7321338 true))

(assert (=> b!7321338 true))

(declare-fun f!643 () Int)

(declare-fun order!29395 () Int)

(declare-fun order!29393 () Int)

(declare-fun lambda!453516 () Int)

(declare-fun dynLambda!29352 (Int Int) Int)

(declare-fun dynLambda!29353 (Int Int) Int)

(assert (=> b!7321338 (< (dynLambda!29352 order!29393 f!643) (dynLambda!29353 order!29395 lambda!453516))))

(declare-fun b!7321331 () Bool)

(declare-fun e!4383527 () Bool)

(declare-fun lt!2604617 () Bool)

(assert (=> b!7321331 (= e!4383527 (not lt!2604617))))

(declare-datatypes ((Unit!164859 0))(
  ( (Unit!164860) )
))
(declare-fun lt!2604612 () Unit!164859)

(declare-fun e!4383531 () Unit!164859)

(assert (=> b!7321331 (= lt!2604612 e!4383531)))

(declare-fun c!1358758 () Bool)

(assert (=> b!7321331 (= c!1358758 lt!2604617)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1103 0))(
  ( (A!1104 (val!29423 Int)) )
))
(declare-fun lt!2604615 () (InoxSet A!1103))

(declare-datatypes ((B!3805 0))(
  ( (B!3806 (val!29424 Int)) )
))
(declare-fun b!25336 () B!3805)

(declare-fun flatMap!3171 ((InoxSet A!1103) Int) (InoxSet B!3805))

(assert (=> b!7321331 (= lt!2604617 (select (flatMap!3171 lt!2604615 f!643) b!25336))))

(declare-fun s1!434 () (InoxSet A!1103))

(declare-fun s2!405 () (InoxSet A!1103))

(assert (=> b!7321331 (= lt!2604615 ((_ map or) s1!434 s2!405))))

(declare-fun setIsEmpty!55774 () Bool)

(declare-fun setRes!55774 () Bool)

(assert (=> setIsEmpty!55774 setRes!55774))

(declare-fun b!7321332 () Bool)

(declare-fun e!4383526 () Bool)

(assert (=> b!7321332 (= e!4383526 false)))

(declare-fun b!7321333 () Bool)

(assert (=> b!7321333 e!4383526))

(declare-fun res!2959250 () Bool)

(assert (=> b!7321333 (=> (not res!2959250) (not e!4383526))))

(declare-fun call!665890 () Bool)

(assert (=> b!7321333 (= res!2959250 call!665890)))

(declare-fun lt!2604616 () Unit!164859)

(declare-fun call!665891 () Unit!164859)

(assert (=> b!7321333 (= lt!2604616 call!665891)))

(declare-fun e!4383529 () Unit!164859)

(declare-fun Unit!164861 () Unit!164859)

(assert (=> b!7321333 (= e!4383529 Unit!164861)))

(declare-fun b!7321335 () Bool)

(declare-fun e!4383530 () Bool)

(assert (=> b!7321335 (= e!4383530 false)))

(declare-fun c!1358757 () Bool)

(declare-fun bm!665885 () Bool)

(declare-fun exists!4703 ((InoxSet A!1103) Int) Bool)

(assert (=> bm!665885 (= call!665890 (exists!4703 (ite c!1358757 s1!434 s2!405) (ite c!1358757 lambda!453516 lambda!453516)))))

(declare-fun lt!2604613 () A!1103)

(declare-fun e!4383525 () Bool)

(declare-fun b!7321336 () Bool)

(declare-fun flatMapPost!172 ((InoxSet A!1103) Int B!3805) A!1103)

(assert (=> b!7321336 (= e!4383525 (= (flatMapPost!172 s2!405 f!643 b!25336) lt!2604613))))

(declare-fun b!7321337 () Bool)

(assert (=> b!7321337 e!4383530))

(declare-fun res!2959253 () Bool)

(assert (=> b!7321337 (=> (not res!2959253) (not e!4383530))))

(assert (=> b!7321337 (= res!2959253 call!665890)))

(declare-fun lt!2604614 () Unit!164859)

(assert (=> b!7321337 (= lt!2604614 call!665891)))

(declare-fun Unit!164862 () Unit!164859)

(assert (=> b!7321337 (= e!4383529 Unit!164862)))

(declare-fun lt!2604619 () A!1103)

(declare-fun bm!665886 () Bool)

(declare-fun lemmaContainsThenExists!289 ((InoxSet A!1103) A!1103 Int) Unit!164859)

(assert (=> bm!665886 (= call!665891 (lemmaContainsThenExists!289 (ite c!1358757 s1!434 s2!405) lt!2604619 (ite c!1358757 lambda!453516 lambda!453516)))))

(declare-fun setNonEmpty!55774 () Bool)

(declare-fun tp!2079538 () Bool)

(declare-fun tp_is_empty!48097 () Bool)

(assert (=> setNonEmpty!55774 (= setRes!55774 (and tp!2079538 tp_is_empty!48097))))

(declare-fun setElem!55775 () A!1103)

(declare-fun setRest!55774 () (InoxSet A!1103))

(assert (=> setNonEmpty!55774 (= s2!405 ((_ map or) (store ((as const (Array A!1103 Bool)) false) setElem!55775 true) setRest!55774))))

(declare-fun e!4383524 () Bool)

(assert (=> b!7321338 (= e!4383524 (not e!4383527))))

(declare-fun res!2959248 () Bool)

(assert (=> b!7321338 (=> res!2959248 e!4383527)))

(assert (=> b!7321338 (= res!2959248 (exists!4703 s1!434 lambda!453516))))

(assert (=> b!7321338 e!4383525))

(declare-fun res!2959249 () Bool)

(assert (=> b!7321338 (=> (not res!2959249) (not e!4383525))))

(assert (=> b!7321338 (= res!2959249 (= (flatMapPost!172 s1!434 f!643 b!25336) lt!2604613))))

(declare-fun empty!3407 () A!1103)

(assert (=> b!7321338 (= lt!2604613 empty!3407)))

(assert (=> b!7321338 true))

(assert (=> b!7321338 tp_is_empty!48097))

(declare-fun b!7321339 () Bool)

(declare-fun res!2959252 () Bool)

(assert (=> b!7321339 (=> res!2959252 e!4383527)))

(assert (=> b!7321339 (= res!2959252 (exists!4703 s2!405 lambda!453516))))

(declare-fun setNonEmpty!55775 () Bool)

(declare-fun setRes!55775 () Bool)

(declare-fun tp!2079537 () Bool)

(assert (=> setNonEmpty!55775 (= setRes!55775 (and tp!2079537 tp_is_empty!48097))))

(declare-fun setElem!55774 () A!1103)

(declare-fun setRest!55775 () (InoxSet A!1103))

(assert (=> setNonEmpty!55775 (= s1!434 ((_ map or) (store ((as const (Array A!1103 Bool)) false) setElem!55774 true) setRest!55775))))

(declare-fun setIsEmpty!55775 () Bool)

(assert (=> setIsEmpty!55775 setRes!55775))

(declare-fun b!7321334 () Bool)

(declare-fun Unit!164863 () Unit!164859)

(assert (=> b!7321334 (= e!4383531 Unit!164863)))

(assert (=> b!7321334 (= (flatMapPost!172 lt!2604615 f!643 b!25336) lt!2604613)))

(declare-fun getWitness!2416 ((InoxSet A!1103) Int) A!1103)

(assert (=> b!7321334 (= lt!2604619 (getWitness!2416 lt!2604615 lambda!453516))))

(assert (=> b!7321334 (= c!1358757 (select s1!434 lt!2604619))))

(declare-fun lt!2604620 () Unit!164859)

(assert (=> b!7321334 (= lt!2604620 e!4383529)))

(assert (=> b!7321334 false))

(declare-fun res!2959254 () Bool)

(declare-fun e!4383528 () Bool)

(assert (=> start!714306 (=> (not res!2959254) (not e!4383528))))

(declare-fun lt!2604611 () (InoxSet B!3805))

(assert (=> start!714306 (= res!2959254 (not (select lt!2604611 b!25336)))))

(assert (=> start!714306 (= lt!2604611 (flatMap!3171 s1!434 f!643))))

(assert (=> start!714306 e!4383528))

(declare-fun condSetEmpty!55775 () Bool)

(assert (=> start!714306 (= condSetEmpty!55775 (= s2!405 ((as const (Array A!1103 Bool)) false)))))

(assert (=> start!714306 setRes!55774))

(declare-fun tp_is_empty!48099 () Bool)

(assert (=> start!714306 tp_is_empty!48099))

(declare-fun condSetEmpty!55774 () Bool)

(assert (=> start!714306 (= condSetEmpty!55774 (= s1!434 ((as const (Array A!1103 Bool)) false)))))

(assert (=> start!714306 setRes!55775))

(assert (=> start!714306 tp!2079539))

(declare-fun b!7321340 () Bool)

(assert (=> b!7321340 (= e!4383528 e!4383524)))

(declare-fun res!2959251 () Bool)

(assert (=> b!7321340 (=> (not res!2959251) (not e!4383524))))

(declare-fun lt!2604618 () (InoxSet B!3805))

(assert (=> b!7321340 (= res!2959251 (and (not (select lt!2604618 b!25336)) (not (select ((_ map or) lt!2604611 lt!2604618) b!25336))))))

(assert (=> b!7321340 (= lt!2604618 (flatMap!3171 s2!405 f!643))))

(declare-fun b!7321341 () Bool)

(declare-fun Unit!164864 () Unit!164859)

(assert (=> b!7321341 (= e!4383531 Unit!164864)))

(assert (= (and start!714306 res!2959254) b!7321340))

(assert (= (and b!7321340 res!2959251) b!7321338))

(assert (= (and b!7321338 res!2959249) b!7321336))

(assert (= (and b!7321338 (not res!2959248)) b!7321339))

(assert (= (and b!7321339 (not res!2959252)) b!7321331))

(assert (= (and b!7321331 c!1358758) b!7321334))

(assert (= (and b!7321331 (not c!1358758)) b!7321341))

(assert (= (and b!7321334 c!1358757) b!7321337))

(assert (= (and b!7321334 (not c!1358757)) b!7321333))

(assert (= (and b!7321337 res!2959253) b!7321335))

(assert (= (and b!7321333 res!2959250) b!7321332))

(assert (= (or b!7321337 b!7321333) bm!665886))

(assert (= (or b!7321337 b!7321333) bm!665885))

(assert (= (and start!714306 condSetEmpty!55775) setIsEmpty!55774))

(assert (= (and start!714306 (not condSetEmpty!55775)) setNonEmpty!55774))

(assert (= (and start!714306 condSetEmpty!55774) setIsEmpty!55775))

(assert (= (and start!714306 (not condSetEmpty!55774)) setNonEmpty!55775))

(declare-fun m!7987082 () Bool)

(assert (=> bm!665886 m!7987082))

(declare-fun m!7987084 () Bool)

(assert (=> b!7321340 m!7987084))

(declare-fun m!7987086 () Bool)

(assert (=> b!7321340 m!7987086))

(declare-fun m!7987088 () Bool)

(assert (=> b!7321340 m!7987088))

(declare-fun m!7987090 () Bool)

(assert (=> b!7321331 m!7987090))

(declare-fun m!7987092 () Bool)

(assert (=> b!7321331 m!7987092))

(declare-fun m!7987094 () Bool)

(assert (=> b!7321334 m!7987094))

(declare-fun m!7987096 () Bool)

(assert (=> b!7321334 m!7987096))

(declare-fun m!7987098 () Bool)

(assert (=> b!7321334 m!7987098))

(declare-fun m!7987100 () Bool)

(assert (=> bm!665885 m!7987100))

(declare-fun m!7987102 () Bool)

(assert (=> b!7321336 m!7987102))

(declare-fun m!7987104 () Bool)

(assert (=> start!714306 m!7987104))

(declare-fun m!7987106 () Bool)

(assert (=> start!714306 m!7987106))

(declare-fun m!7987108 () Bool)

(assert (=> b!7321339 m!7987108))

(declare-fun m!7987110 () Bool)

(assert (=> b!7321338 m!7987110))

(declare-fun m!7987112 () Bool)

(assert (=> b!7321338 m!7987112))

(check-sat (not b!7321331) (not bm!665886) (not bm!665885) b_and!351753 (not b!7321340) (not b!7321338) tp_is_empty!48099 (not setNonEmpty!55774) (not start!714306) (not b!7321336) (not b!7321339) (not setNonEmpty!55775) tp_is_empty!48097 (not b_next!135047) (not b!7321334))
(check-sat b_and!351753 (not b_next!135047))
