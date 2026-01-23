; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1716 () Bool)

(assert start!1716)

(declare-fun b_free!327 () Bool)

(declare-fun b_next!327 () Bool)

(assert (=> start!1716 (= b_free!327 (not b_next!327))))

(declare-fun tp!23440 () Bool)

(declare-fun b_and!327 () Bool)

(assert (=> start!1716 (= tp!23440 b_and!327)))

(declare-fun setNonEmpty!388 () Bool)

(declare-fun setRes!389 () Bool)

(declare-fun tp!23442 () Bool)

(declare-fun tp_is_empty!323 () Bool)

(assert (=> setNonEmpty!388 (= setRes!389 (and tp!23442 tp_is_empty!323))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!155 0))(
  ( (A!156 (val!185 Int)) )
))
(declare-fun s2!449 () (InoxSet A!155))

(declare-fun setElem!388 () A!155)

(declare-fun setRest!389 () (InoxSet A!155))

(assert (=> setNonEmpty!388 (= s2!449 ((_ map or) (store ((as const (Array A!155 Bool)) false) setElem!388 true) setRest!389))))

(declare-fun setIsEmpty!388 () Bool)

(assert (=> setIsEmpty!388 setRes!389))

(declare-fun b!34103 () Bool)

(declare-fun e!15682 () Bool)

(declare-fun e!15684 () Bool)

(assert (=> b!34103 (= e!15682 e!15684)))

(declare-fun res!27478 () Bool)

(assert (=> b!34103 (=> (not res!27478) (not e!15684))))

(declare-fun p!1713 () Int)

(declare-fun exists!16 ((InoxSet A!155) Int) Bool)

(assert (=> b!34103 (= res!27478 (exists!16 s2!449 p!1713))))

(declare-datatypes ((Unit!146 0))(
  ( (Unit!147) )
))
(declare-fun lt!2370 () Unit!146)

(declare-fun e!15683 () Unit!146)

(assert (=> b!34103 (= lt!2370 e!15683)))

(declare-fun c!15388 () Bool)

(declare-fun s1!478 () (InoxSet A!155))

(assert (=> b!34103 (= c!15388 (exists!16 s1!478 p!1713))))

(declare-fun setNonEmpty!389 () Bool)

(declare-fun setRes!388 () Bool)

(declare-fun tp!23441 () Bool)

(assert (=> setNonEmpty!389 (= setRes!388 (and tp!23441 tp_is_empty!323))))

(declare-fun setElem!389 () A!155)

(declare-fun setRest!388 () (InoxSet A!155))

(assert (=> setNonEmpty!389 (= s1!478 ((_ map or) (store ((as const (Array A!155 Bool)) false) setElem!389 true) setRest!388))))

(declare-fun res!27477 () Bool)

(assert (=> start!1716 (=> (not res!27477) (not e!15682))))

(declare-fun lt!2369 () (InoxSet A!155))

(assert (=> start!1716 (= res!27477 (not (exists!16 lt!2369 p!1713)))))

(assert (=> start!1716 (= lt!2369 ((_ map or) s1!478 s2!449))))

(assert (=> start!1716 e!15682))

(declare-fun condSetEmpty!388 () Bool)

(assert (=> start!1716 (= condSetEmpty!388 (= s1!478 ((as const (Array A!155 Bool)) false)))))

(assert (=> start!1716 setRes!388))

(declare-fun condSetEmpty!389 () Bool)

(assert (=> start!1716 (= condSetEmpty!389 (= s2!449 ((as const (Array A!155 Bool)) false)))))

(assert (=> start!1716 setRes!389))

(assert (=> start!1716 tp!23440))

(declare-fun setIsEmpty!389 () Bool)

(assert (=> setIsEmpty!389 setRes!388))

(declare-fun b!34104 () Bool)

(declare-fun lt!2367 () Unit!146)

(assert (=> b!34104 (= e!15683 lt!2367)))

(declare-fun lemmaContainsThenExists!5 ((InoxSet A!155) A!155 Int) Unit!146)

(declare-fun getWitness!7 ((InoxSet A!155) Int) A!155)

(assert (=> b!34104 (= lt!2367 (lemmaContainsThenExists!5 lt!2369 (getWitness!7 s1!478 p!1713) p!1713))))

(assert (=> b!34104 false))

(declare-fun b!34105 () Bool)

(assert (=> b!34105 (= e!15684 false)))

(declare-fun lt!2368 () A!155)

(assert (=> b!34105 (= lt!2368 (getWitness!7 s2!449 p!1713))))

(declare-fun b!34106 () Bool)

(declare-fun Unit!148 () Unit!146)

(assert (=> b!34106 (= e!15683 Unit!148)))

(assert (= (and start!1716 res!27477) b!34103))

(assert (= (and b!34103 c!15388) b!34104))

(assert (= (and b!34103 (not c!15388)) b!34106))

(assert (= (and b!34103 res!27478) b!34105))

(assert (= (and start!1716 condSetEmpty!388) setIsEmpty!389))

(assert (= (and start!1716 (not condSetEmpty!388)) setNonEmpty!389))

(assert (= (and start!1716 condSetEmpty!389) setIsEmpty!388))

(assert (= (and start!1716 (not condSetEmpty!389)) setNonEmpty!388))

(declare-fun m!10023 () Bool)

(assert (=> b!34103 m!10023))

(declare-fun m!10025 () Bool)

(assert (=> b!34103 m!10025))

(declare-fun m!10027 () Bool)

(assert (=> start!1716 m!10027))

(declare-fun m!10029 () Bool)

(assert (=> b!34104 m!10029))

(assert (=> b!34104 m!10029))

(declare-fun m!10031 () Bool)

(assert (=> b!34104 m!10031))

(declare-fun m!10033 () Bool)

(assert (=> b!34105 m!10033))

(check-sat (not b!34104) (not setNonEmpty!389) tp_is_empty!323 (not b!34105) (not b_next!327) (not setNonEmpty!388) b_and!327 (not b!34103) (not start!1716))
(check-sat b_and!327 (not b_next!327))
