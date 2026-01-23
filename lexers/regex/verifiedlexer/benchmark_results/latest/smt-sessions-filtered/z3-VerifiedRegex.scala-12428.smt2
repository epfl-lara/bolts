; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694084 () Bool)

(assert start!694084)

(declare-fun b_free!133817 () Bool)

(declare-fun b_next!134607 () Bool)

(assert (=> start!694084 (= b_free!133817 (not b_next!134607))))

(declare-fun tp!1962137 () Bool)

(declare-fun b_and!350987 () Bool)

(assert (=> start!694084 (= tp!1962137 b_and!350987)))

(declare-fun b!7124418 () Bool)

(declare-fun e!4281298 () Bool)

(assert (=> b!7124418 (= e!4281298 false)))

(declare-fun b!7124419 () Bool)

(declare-datatypes ((Unit!162839 0))(
  ( (Unit!162840) )
))
(declare-fun e!4281295 () Unit!162839)

(declare-fun Unit!162841 () Unit!162839)

(assert (=> b!7124419 (= e!4281295 Unit!162841)))

(declare-fun f!518 () Int)

(declare-datatypes ((A!723 0))(
  ( (A!724 (val!28049 Int)) )
))
(declare-fun lt!2562922 () A!723)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2562923 () (InoxSet A!723))

(declare-datatypes ((B!3381 0))(
  ( (B!3382 (val!28050 Int)) )
))
(declare-fun b!25321 () B!3381)

(declare-fun mapPost2!590 ((InoxSet A!723) Int B!3381) A!723)

(assert (=> b!7124419 (= lt!2562922 (mapPost2!590 lt!2562923 f!518 b!25321))))

(declare-fun c!1329213 () Bool)

(declare-fun s1!413 () (InoxSet A!723))

(assert (=> b!7124419 (= c!1329213 (select s1!413 lt!2562922))))

(declare-fun lt!2562925 () Unit!162839)

(declare-fun e!4281296 () Unit!162839)

(assert (=> b!7124419 (= lt!2562925 e!4281296)))

(assert (=> b!7124419 false))

(declare-fun b!7124420 () Bool)

(declare-fun e!4281297 () Bool)

(declare-fun e!4281299 () Bool)

(assert (=> b!7124420 (= e!4281297 e!4281299)))

(declare-fun res!2907096 () Bool)

(assert (=> b!7124420 (=> (not res!2907096) (not e!4281299))))

(declare-fun lt!2562921 () (InoxSet B!3381))

(assert (=> b!7124420 (= res!2907096 (not (select lt!2562921 b!25321)))))

(declare-fun s2!384 () (InoxSet A!723))

(declare-fun map!16488 ((InoxSet A!723) Int) (InoxSet B!3381))

(assert (=> b!7124420 (= lt!2562921 (map!16488 s2!384 f!518))))

(declare-fun b!7124421 () Bool)

(assert (=> b!7124421 e!4281298))

(declare-fun res!2907099 () Bool)

(assert (=> b!7124421 (=> (not res!2907099) (not e!4281298))))

(declare-fun call!650808 () Unit!162839)

(declare-fun empty!2894 () Unit!162839)

(assert (=> b!7124421 (= res!2907099 (= call!650808 empty!2894))))

(assert (=> b!7124421 true))

(declare-fun Unit!162842 () Unit!162839)

(assert (=> b!7124421 (= e!4281296 Unit!162842)))

(declare-fun setNonEmpty!51582 () Bool)

(declare-fun setRes!51583 () Bool)

(declare-fun tp!1962136 () Bool)

(declare-fun tp_is_empty!45599 () Bool)

(assert (=> setNonEmpty!51582 (= setRes!51583 (and tp!1962136 tp_is_empty!45599))))

(declare-fun setElem!51582 () A!723)

(declare-fun setRest!51582 () (InoxSet A!723))

(assert (=> setNonEmpty!51582 (= s1!413 ((_ map or) (store ((as const (Array A!723 Bool)) false) setElem!51582 true) setRest!51582))))

(declare-fun b!7124422 () Bool)

(declare-fun Unit!162843 () Unit!162839)

(assert (=> b!7124422 (= e!4281295 Unit!162843)))

(declare-fun b!7124423 () Bool)

(declare-fun e!4281300 () Bool)

(assert (=> b!7124423 (= e!4281300 false)))

(declare-fun b!7124424 () Bool)

(declare-fun lt!2562924 () (InoxSet B!3381))

(declare-fun lt!2562926 () Bool)

(assert (=> b!7124424 (= e!4281299 (and (not lt!2562926) (select ((_ map or) lt!2562924 lt!2562921) b!25321)))))

(declare-fun lt!2562920 () Unit!162839)

(assert (=> b!7124424 (= lt!2562920 e!4281295)))

(declare-fun c!1329212 () Bool)

(assert (=> b!7124424 (= c!1329212 lt!2562926)))

(assert (=> b!7124424 (= lt!2562926 (select (map!16488 lt!2562923 f!518) b!25321))))

(assert (=> b!7124424 (= lt!2562923 ((_ map or) s1!413 s2!384))))

(declare-fun res!2907097 () Bool)

(assert (=> start!694084 (=> (not res!2907097) (not e!4281297))))

(assert (=> start!694084 (= res!2907097 (not (select lt!2562924 b!25321)))))

(assert (=> start!694084 (= lt!2562924 (map!16488 s1!413 f!518))))

(assert (=> start!694084 e!4281297))

(declare-fun tp_is_empty!45597 () Bool)

(assert (=> start!694084 tp_is_empty!45597))

(declare-fun condSetEmpty!51583 () Bool)

(assert (=> start!694084 (= condSetEmpty!51583 (= s1!413 ((as const (Array A!723 Bool)) false)))))

(assert (=> start!694084 setRes!51583))

(declare-fun condSetEmpty!51582 () Bool)

(assert (=> start!694084 (= condSetEmpty!51582 (= s2!384 ((as const (Array A!723 Bool)) false)))))

(declare-fun setRes!51582 () Bool)

(assert (=> start!694084 setRes!51582))

(assert (=> start!694084 tp!1962137))

(declare-fun setNonEmpty!51583 () Bool)

(declare-fun tp!1962135 () Bool)

(assert (=> setNonEmpty!51583 (= setRes!51582 (and tp!1962135 tp_is_empty!45599))))

(declare-fun setElem!51583 () A!723)

(declare-fun setRest!51583 () (InoxSet A!723))

(assert (=> setNonEmpty!51583 (= s2!384 ((_ map or) (store ((as const (Array A!723 Bool)) false) setElem!51583 true) setRest!51583))))

(declare-fun bm!650803 () Bool)

(declare-fun mapPost1!24 ((InoxSet A!723) Int A!723) Unit!162839)

(assert (=> bm!650803 (= call!650808 (mapPost1!24 (ite c!1329213 s1!413 s2!384) f!518 lt!2562922))))

(declare-fun setIsEmpty!51582 () Bool)

(assert (=> setIsEmpty!51582 setRes!51582))

(declare-fun b!7124425 () Bool)

(assert (=> b!7124425 e!4281300))

(declare-fun res!2907098 () Bool)

(assert (=> b!7124425 (=> (not res!2907098) (not e!4281300))))

(declare-fun empty!2895 () Unit!162839)

(assert (=> b!7124425 (= res!2907098 (= call!650808 empty!2895))))

(assert (=> b!7124425 true))

(declare-fun Unit!162844 () Unit!162839)

(assert (=> b!7124425 (= e!4281296 Unit!162844)))

(declare-fun setIsEmpty!51583 () Bool)

(assert (=> setIsEmpty!51583 setRes!51583))

(assert (= (and start!694084 res!2907097) b!7124420))

(assert (= (and b!7124420 res!2907096) b!7124424))

(assert (= (and b!7124424 c!1329212) b!7124419))

(assert (= (and b!7124424 (not c!1329212)) b!7124422))

(assert (= (and b!7124419 c!1329213) b!7124421))

(assert (= (and b!7124419 (not c!1329213)) b!7124425))

(assert (= (and b!7124421 res!2907099) b!7124418))

(assert (= (and b!7124425 res!2907098) b!7124423))

(assert (= (or b!7124421 b!7124425) bm!650803))

(assert (= (and start!694084 condSetEmpty!51583) setIsEmpty!51583))

(assert (= (and start!694084 (not condSetEmpty!51583)) setNonEmpty!51582))

(assert (= (and start!694084 condSetEmpty!51582) setIsEmpty!51582))

(assert (= (and start!694084 (not condSetEmpty!51582)) setNonEmpty!51583))

(declare-fun m!7841962 () Bool)

(assert (=> b!7124420 m!7841962))

(declare-fun m!7841964 () Bool)

(assert (=> b!7124420 m!7841964))

(declare-fun m!7841966 () Bool)

(assert (=> bm!650803 m!7841966))

(declare-fun m!7841968 () Bool)

(assert (=> b!7124419 m!7841968))

(declare-fun m!7841970 () Bool)

(assert (=> b!7124419 m!7841970))

(declare-fun m!7841972 () Bool)

(assert (=> b!7124424 m!7841972))

(declare-fun m!7841974 () Bool)

(assert (=> b!7124424 m!7841974))

(declare-fun m!7841976 () Bool)

(assert (=> b!7124424 m!7841976))

(declare-fun m!7841978 () Bool)

(assert (=> start!694084 m!7841978))

(declare-fun m!7841980 () Bool)

(assert (=> start!694084 m!7841980))

(check-sat (not start!694084) (not b_next!134607) (not setNonEmpty!51583) tp_is_empty!45599 (not bm!650803) b_and!350987 (not b!7124419) tp_is_empty!45597 (not b!7124424) (not setNonEmpty!51582) (not b!7124420))
(check-sat b_and!350987 (not b_next!134607))
