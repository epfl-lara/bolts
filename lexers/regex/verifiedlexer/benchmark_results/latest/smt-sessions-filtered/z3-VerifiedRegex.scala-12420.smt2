; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693986 () Bool)

(assert start!693986)

(declare-fun b_free!133785 () Bool)

(declare-fun b_next!134575 () Bool)

(assert (=> start!693986 (= b_free!133785 (not b_next!134575))))

(declare-fun tp!1961945 () Bool)

(declare-fun b_and!350897 () Bool)

(assert (=> start!693986 (= tp!1961945 b_and!350897)))

(declare-fun b!7124049 () Bool)

(declare-fun e!4281036 () Bool)

(assert (=> b!7124049 e!4281036))

(declare-fun res!2906827 () Bool)

(assert (=> b!7124049 (=> (not res!2906827) (not e!4281036))))

(declare-datatypes ((Unit!162795 0))(
  ( (Unit!162796) )
))
(declare-fun call!650796 () Unit!162795)

(declare-fun empty!2815 () Unit!162795)

(assert (=> b!7124049 (= res!2906827 (= call!650796 empty!2815))))

(assert (=> b!7124049 true))

(declare-fun e!4281035 () Unit!162795)

(declare-fun Unit!162797 () Unit!162795)

(assert (=> b!7124049 (= e!4281035 Unit!162797)))

(declare-fun b!7124050 () Bool)

(declare-fun e!4281034 () Unit!162795)

(declare-fun Unit!162798 () Unit!162795)

(assert (=> b!7124050 (= e!4281034 Unit!162798)))

(declare-fun setIsEmpty!51438 () Bool)

(declare-fun setRes!51439 () Bool)

(assert (=> setIsEmpty!51438 setRes!51439))

(declare-fun setIsEmpty!51439 () Bool)

(declare-fun setRes!51438 () Bool)

(assert (=> setIsEmpty!51439 setRes!51438))

(declare-fun res!2906826 () Bool)

(declare-fun e!4281032 () Bool)

(assert (=> start!693986 (=> (not res!2906826) (not e!4281032))))

(declare-datatypes ((B!3349 0))(
  ( (B!3350 (val!28017 Int)) )
))
(declare-fun b!25321 () B!3349)

(declare-fun f!518 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!691 0))(
  ( (A!692 (val!28018 Int)) )
))
(declare-fun s1!413 () (InoxSet A!691))

(declare-fun map!16464 ((InoxSet A!691) Int) (InoxSet B!3349))

(assert (=> start!693986 (= res!2906826 (not (select (map!16464 s1!413 f!518) b!25321)))))

(assert (=> start!693986 e!4281032))

(declare-fun tp_is_empty!45533 () Bool)

(assert (=> start!693986 tp_is_empty!45533))

(declare-fun condSetEmpty!51438 () Bool)

(assert (=> start!693986 (= condSetEmpty!51438 (= s1!413 ((as const (Array A!691 Bool)) false)))))

(assert (=> start!693986 setRes!51439))

(assert (=> start!693986 tp!1961945))

(declare-fun condSetEmpty!51439 () Bool)

(declare-fun s2!384 () (InoxSet A!691))

(assert (=> start!693986 (= condSetEmpty!51439 (= s2!384 ((as const (Array A!691 Bool)) false)))))

(assert (=> start!693986 setRes!51438))

(declare-fun b!7124051 () Bool)

(declare-fun res!2906828 () Bool)

(assert (=> b!7124051 (=> (not res!2906828) (not e!4281032))))

(assert (=> b!7124051 (= res!2906828 (not (select (map!16464 s2!384 f!518) b!25321)))))

(declare-fun b!7124052 () Bool)

(declare-fun e!4281033 () Bool)

(assert (=> b!7124052 e!4281033))

(declare-fun res!2906829 () Bool)

(assert (=> b!7124052 (=> (not res!2906829) (not e!4281033))))

(declare-fun empty!2814 () Unit!162795)

(assert (=> b!7124052 (= res!2906829 (= call!650796 empty!2814))))

(assert (=> b!7124052 true))

(declare-fun Unit!162799 () Unit!162795)

(assert (=> b!7124052 (= e!4281035 Unit!162799)))

(declare-fun b!7124053 () Bool)

(assert (=> b!7124053 (= e!4281033 false)))

(declare-fun b!7124054 () Bool)

(declare-fun lt!2562677 () Bool)

(assert (=> b!7124054 (= e!4281032 lt!2562677)))

(declare-fun lt!2562679 () Unit!162795)

(assert (=> b!7124054 (= lt!2562679 e!4281034)))

(declare-fun c!1329195 () Bool)

(assert (=> b!7124054 (= c!1329195 lt!2562677)))

(declare-fun lt!2562680 () (InoxSet A!691))

(assert (=> b!7124054 (= lt!2562677 (select (map!16464 lt!2562680 f!518) b!25321))))

(assert (=> b!7124054 (= lt!2562680 ((_ map or) s1!413 s2!384))))

(declare-fun setNonEmpty!51438 () Bool)

(declare-fun tp!1961944 () Bool)

(declare-fun tp_is_empty!45535 () Bool)

(assert (=> setNonEmpty!51438 (= setRes!51439 (and tp!1961944 tp_is_empty!45535))))

(declare-fun setElem!51438 () A!691)

(declare-fun setRest!51439 () (InoxSet A!691))

(assert (=> setNonEmpty!51438 (= s1!413 ((_ map or) (store ((as const (Array A!691 Bool)) false) setElem!51438 true) setRest!51439))))

(declare-fun setNonEmpty!51439 () Bool)

(declare-fun tp!1961943 () Bool)

(assert (=> setNonEmpty!51439 (= setRes!51438 (and tp!1961943 tp_is_empty!45535))))

(declare-fun setElem!51439 () A!691)

(declare-fun setRest!51438 () (InoxSet A!691))

(assert (=> setNonEmpty!51439 (= s2!384 ((_ map or) (store ((as const (Array A!691 Bool)) false) setElem!51439 true) setRest!51438))))

(declare-fun b!7124055 () Bool)

(declare-fun Unit!162800 () Unit!162795)

(assert (=> b!7124055 (= e!4281034 Unit!162800)))

(declare-fun lt!2562676 () A!691)

(declare-fun mapPost2!574 ((InoxSet A!691) Int B!3349) A!691)

(assert (=> b!7124055 (= lt!2562676 (mapPost2!574 lt!2562680 f!518 b!25321))))

(declare-fun c!1329194 () Bool)

(assert (=> b!7124055 (= c!1329194 (select s1!413 lt!2562676))))

(declare-fun lt!2562678 () Unit!162795)

(assert (=> b!7124055 (= lt!2562678 e!4281035)))

(assert (=> b!7124055 false))

(declare-fun bm!650791 () Bool)

(declare-fun mapPost1!8 ((InoxSet A!691) Int A!691) Unit!162795)

(assert (=> bm!650791 (= call!650796 (mapPost1!8 (ite c!1329194 s1!413 s2!384) f!518 lt!2562676))))

(declare-fun b!7124056 () Bool)

(assert (=> b!7124056 (= e!4281036 false)))

(assert (= (and start!693986 res!2906826) b!7124051))

(assert (= (and b!7124051 res!2906828) b!7124054))

(assert (= (and b!7124054 c!1329195) b!7124055))

(assert (= (and b!7124054 (not c!1329195)) b!7124050))

(assert (= (and b!7124055 c!1329194) b!7124049))

(assert (= (and b!7124055 (not c!1329194)) b!7124052))

(assert (= (and b!7124049 res!2906827) b!7124056))

(assert (= (and b!7124052 res!2906829) b!7124053))

(assert (= (or b!7124049 b!7124052) bm!650791))

(assert (= (and start!693986 condSetEmpty!51438) setIsEmpty!51438))

(assert (= (and start!693986 (not condSetEmpty!51438)) setNonEmpty!51438))

(assert (= (and start!693986 condSetEmpty!51439) setIsEmpty!51439))

(assert (= (and start!693986 (not condSetEmpty!51439)) setNonEmpty!51439))

(declare-fun m!7841458 () Bool)

(assert (=> bm!650791 m!7841458))

(declare-fun m!7841460 () Bool)

(assert (=> b!7124051 m!7841460))

(declare-fun m!7841462 () Bool)

(assert (=> b!7124051 m!7841462))

(declare-fun m!7841464 () Bool)

(assert (=> b!7124055 m!7841464))

(declare-fun m!7841466 () Bool)

(assert (=> b!7124055 m!7841466))

(declare-fun m!7841468 () Bool)

(assert (=> start!693986 m!7841468))

(declare-fun m!7841470 () Bool)

(assert (=> start!693986 m!7841470))

(declare-fun m!7841472 () Bool)

(assert (=> b!7124054 m!7841472))

(declare-fun m!7841474 () Bool)

(assert (=> b!7124054 m!7841474))

(check-sat (not b!7124054) tp_is_empty!45535 (not setNonEmpty!51439) (not setNonEmpty!51438) (not b!7124055) (not b_next!134575) (not b!7124051) (not bm!650791) (not start!693986) tp_is_empty!45533 b_and!350897)
(check-sat b_and!350897 (not b_next!134575))
