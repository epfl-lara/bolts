; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693982 () Bool)

(assert start!693982)

(declare-fun b_free!133781 () Bool)

(declare-fun b_next!134571 () Bool)

(assert (=> start!693982 (= b_free!133781 (not b_next!134571))))

(declare-fun tp!1961926 () Bool)

(declare-fun b_and!350891 () Bool)

(assert (=> start!693982 (= tp!1961926 b_and!350891)))

(declare-fun setNonEmpty!51426 () Bool)

(declare-fun setRes!51427 () Bool)

(declare-fun tp!1961927 () Bool)

(declare-fun tp_is_empty!45527 () Bool)

(assert (=> setNonEmpty!51426 (= setRes!51427 (and tp!1961927 tp_is_empty!45527))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!687 0))(
  ( (A!688 (val!28013 Int)) )
))
(declare-fun s2!384 () (InoxSet A!687))

(declare-fun setElem!51427 () A!687)

(declare-fun setRest!51427 () (InoxSet A!687))

(assert (=> setNonEmpty!51426 (= s2!384 ((_ map or) (store ((as const (Array A!687 Bool)) false) setElem!51427 true) setRest!51427))))

(declare-fun setNonEmpty!51427 () Bool)

(declare-fun setRes!51426 () Bool)

(declare-fun tp!1961925 () Bool)

(assert (=> setNonEmpty!51427 (= setRes!51426 (and tp!1961925 tp_is_empty!45527))))

(declare-fun s1!413 () (InoxSet A!687))

(declare-fun setElem!51426 () A!687)

(declare-fun setRest!51426 () (InoxSet A!687))

(assert (=> setNonEmpty!51427 (= s1!413 ((_ map or) (store ((as const (Array A!687 Bool)) false) setElem!51426 true) setRest!51426))))

(declare-fun b!7123999 () Bool)

(declare-fun e!4281006 () Bool)

(declare-fun e!4281002 () Bool)

(assert (=> b!7123999 (= e!4281006 e!4281002)))

(declare-fun res!2906803 () Bool)

(assert (=> b!7123999 (=> (not res!2906803) (not e!4281002))))

(declare-fun lt!2562650 () Bool)

(declare-fun lt!2562649 () A!687)

(assert (=> b!7123999 (= res!2906803 (or lt!2562650 (select s2!384 lt!2562649)))))

(assert (=> b!7123999 (= lt!2562650 (select s1!413 lt!2562649))))

(declare-fun lt!2562647 () (InoxSet A!687))

(declare-datatypes ((B!3345 0))(
  ( (B!3346 (val!28014 Int)) )
))
(declare-fun b!25321 () B!3345)

(declare-fun f!518 () Int)

(declare-fun mapPost2!572 ((InoxSet A!687) Int B!3345) A!687)

(assert (=> b!7123999 (= lt!2562649 (mapPost2!572 lt!2562647 f!518 b!25321))))

(declare-fun setIsEmpty!51426 () Bool)

(assert (=> setIsEmpty!51426 setRes!51427))

(declare-fun b!7124000 () Bool)

(declare-datatypes ((Unit!162785 0))(
  ( (Unit!162786) )
))
(declare-fun e!4281004 () Unit!162785)

(declare-fun Unit!162787 () Unit!162785)

(assert (=> b!7124000 (= e!4281004 Unit!162787)))

(assert (=> b!7124000 true))

(declare-fun res!2906805 () Bool)

(declare-fun call!650790 () Unit!162785)

(declare-fun empty!2798 () Unit!162785)

(assert (=> b!7124000 (= res!2906805 (= call!650790 empty!2798))))

(declare-fun e!4281005 () Bool)

(assert (=> b!7124000 (=> (not res!2906805) (not e!4281005))))

(assert (=> b!7124000 e!4281005))

(declare-fun res!2906804 () Bool)

(declare-fun e!4281003 () Bool)

(assert (=> start!693982 (=> (not res!2906804) (not e!4281003))))

(declare-fun map!16461 ((InoxSet A!687) Int) (InoxSet B!3345))

(assert (=> start!693982 (= res!2906804 (not (select (map!16461 s1!413 f!518) b!25321)))))

(assert (=> start!693982 e!4281003))

(declare-fun tp_is_empty!45525 () Bool)

(assert (=> start!693982 tp_is_empty!45525))

(declare-fun condSetEmpty!51427 () Bool)

(assert (=> start!693982 (= condSetEmpty!51427 (= s1!413 ((as const (Array A!687 Bool)) false)))))

(assert (=> start!693982 setRes!51426))

(assert (=> start!693982 tp!1961926))

(declare-fun condSetEmpty!51426 () Bool)

(assert (=> start!693982 (= condSetEmpty!51426 (= s2!384 ((as const (Array A!687 Bool)) false)))))

(assert (=> start!693982 setRes!51427))

(declare-fun b!7124001 () Bool)

(declare-fun dynLambda!28092 (Int A!687) B!3345)

(assert (=> b!7124001 (= e!4281002 (not (= (dynLambda!28092 f!518 lt!2562649) b!25321)))))

(declare-fun lt!2562648 () Unit!162785)

(assert (=> b!7124001 (= lt!2562648 e!4281004)))

(declare-fun c!1329183 () Bool)

(assert (=> b!7124001 (= c!1329183 lt!2562650)))

(declare-fun b!7124002 () Bool)

(assert (=> b!7124002 (= e!4281005 false)))

(declare-fun b!7124003 () Bool)

(declare-fun Unit!162788 () Unit!162785)

(assert (=> b!7124003 (= e!4281004 Unit!162788)))

(assert (=> b!7124003 true))

(declare-fun res!2906800 () Bool)

(declare-fun empty!2799 () Unit!162785)

(assert (=> b!7124003 (= res!2906800 (= call!650790 empty!2799))))

(declare-fun e!4281001 () Bool)

(assert (=> b!7124003 (=> (not res!2906800) (not e!4281001))))

(assert (=> b!7124003 e!4281001))

(declare-fun setIsEmpty!51427 () Bool)

(assert (=> setIsEmpty!51427 setRes!51426))

(declare-fun b!7124004 () Bool)

(assert (=> b!7124004 (= e!4281003 e!4281006)))

(declare-fun res!2906801 () Bool)

(assert (=> b!7124004 (=> (not res!2906801) (not e!4281006))))

(assert (=> b!7124004 (= res!2906801 (select (map!16461 lt!2562647 f!518) b!25321))))

(assert (=> b!7124004 (= lt!2562647 ((_ map or) s1!413 s2!384))))

(declare-fun bm!650785 () Bool)

(declare-fun mapPost1!6 ((InoxSet A!687) Int A!687) Unit!162785)

(assert (=> bm!650785 (= call!650790 (mapPost1!6 (ite c!1329183 s1!413 s2!384) f!518 lt!2562649))))

(declare-fun b!7124005 () Bool)

(assert (=> b!7124005 (= e!4281001 false)))

(declare-fun b!7124006 () Bool)

(declare-fun res!2906802 () Bool)

(assert (=> b!7124006 (=> (not res!2906802) (not e!4281003))))

(assert (=> b!7124006 (= res!2906802 (not (select (map!16461 s2!384 f!518) b!25321)))))

(assert (= (and start!693982 res!2906804) b!7124006))

(assert (= (and b!7124006 res!2906802) b!7124004))

(assert (= (and b!7124004 res!2906801) b!7123999))

(assert (= (and b!7123999 res!2906803) b!7124001))

(assert (= (and b!7124001 c!1329183) b!7124000))

(assert (= (and b!7124001 (not c!1329183)) b!7124003))

(assert (= (and b!7124000 res!2906805) b!7124002))

(assert (= (and b!7124003 res!2906800) b!7124005))

(assert (= (or b!7124000 b!7124003) bm!650785))

(assert (= (and start!693982 condSetEmpty!51427) setIsEmpty!51427))

(assert (= (and start!693982 (not condSetEmpty!51427)) setNonEmpty!51427))

(assert (= (and start!693982 condSetEmpty!51426) setIsEmpty!51426))

(assert (= (and start!693982 (not condSetEmpty!51426)) setNonEmpty!51426))

(declare-fun b_lambda!271807 () Bool)

(assert (=> (not b_lambda!271807) (not b!7124001)))

(declare-fun t!382961 () Bool)

(declare-fun tb!262011 () Bool)

(assert (=> (and start!693982 (= f!518 f!518) t!382961) tb!262011))

(declare-fun result!349312 () Bool)

(assert (=> tb!262011 (= result!349312 tp_is_empty!45525)))

(assert (=> b!7124001 t!382961))

(declare-fun b_and!350893 () Bool)

(assert (= b_and!350891 (and (=> t!382961 result!349312) b_and!350893)))

(declare-fun m!7841418 () Bool)

(assert (=> b!7124001 m!7841418))

(declare-fun m!7841420 () Bool)

(assert (=> bm!650785 m!7841420))

(declare-fun m!7841422 () Bool)

(assert (=> b!7123999 m!7841422))

(declare-fun m!7841424 () Bool)

(assert (=> b!7123999 m!7841424))

(declare-fun m!7841426 () Bool)

(assert (=> b!7123999 m!7841426))

(declare-fun m!7841428 () Bool)

(assert (=> start!693982 m!7841428))

(declare-fun m!7841430 () Bool)

(assert (=> start!693982 m!7841430))

(declare-fun m!7841432 () Bool)

(assert (=> b!7124006 m!7841432))

(declare-fun m!7841434 () Bool)

(assert (=> b!7124006 m!7841434))

(declare-fun m!7841436 () Bool)

(assert (=> b!7124004 m!7841436))

(declare-fun m!7841438 () Bool)

(assert (=> b!7124004 m!7841438))

(check-sat (not setNonEmpty!51426) tp_is_empty!45527 (not b!7123999) tp_is_empty!45525 (not bm!650785) (not b!7124006) (not start!693982) (not b!7124004) (not setNonEmpty!51427) (not b_lambda!271807) b_and!350893 (not b_next!134571))
(check-sat b_and!350893 (not b_next!134571))
