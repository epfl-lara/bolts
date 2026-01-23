; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1712 () Bool)

(assert start!1712)

(declare-fun b_free!323 () Bool)

(declare-fun b_next!323 () Bool)

(assert (=> start!1712 (= b_free!323 (not b_next!323))))

(declare-fun tp!23424 () Bool)

(declare-fun b_and!323 () Bool)

(assert (=> start!1712 (= tp!23424 b_and!323)))

(declare-fun res!27466 () Bool)

(declare-fun e!15666 () Bool)

(assert (=> start!1712 (=> (not res!27466) (not e!15666))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!151 0))(
  ( (A!152 (val!183 Int)) )
))
(declare-fun lt!2346 () (InoxSet A!151))

(declare-fun p!1713 () Int)

(declare-fun exists!14 ((InoxSet A!151) Int) Bool)

(assert (=> start!1712 (= res!27466 (not (exists!14 lt!2346 p!1713)))))

(declare-fun s1!478 () (InoxSet A!151))

(declare-fun s2!449 () (InoxSet A!151))

(assert (=> start!1712 (= lt!2346 ((_ map or) s1!478 s2!449))))

(assert (=> start!1712 e!15666))

(declare-fun condSetEmpty!377 () Bool)

(assert (=> start!1712 (= condSetEmpty!377 (= s1!478 ((as const (Array A!151 Bool)) false)))))

(declare-fun setRes!377 () Bool)

(assert (=> start!1712 setRes!377))

(declare-fun condSetEmpty!376 () Bool)

(assert (=> start!1712 (= condSetEmpty!376 (= s2!449 ((as const (Array A!151 Bool)) false)))))

(declare-fun setRes!376 () Bool)

(assert (=> start!1712 setRes!376))

(assert (=> start!1712 tp!23424))

(declare-fun setNonEmpty!376 () Bool)

(declare-fun tp!23422 () Bool)

(declare-fun tp_is_empty!319 () Bool)

(assert (=> setNonEmpty!376 (= setRes!377 (and tp!23422 tp_is_empty!319))))

(declare-fun setElem!376 () A!151)

(declare-fun setRest!377 () (InoxSet A!151))

(assert (=> setNonEmpty!376 (= s1!478 ((_ map or) (store ((as const (Array A!151 Bool)) false) setElem!376 true) setRest!377))))

(declare-fun setIsEmpty!376 () Bool)

(assert (=> setIsEmpty!376 setRes!376))

(declare-fun b!34080 () Bool)

(assert (=> b!34080 (= e!15666 false)))

(declare-fun lt!2344 () Bool)

(assert (=> b!34080 (= lt!2344 (exists!14 s2!449 p!1713))))

(declare-datatypes ((Unit!140 0))(
  ( (Unit!141) )
))
(declare-fun lt!2345 () Unit!140)

(declare-fun e!15665 () Unit!140)

(assert (=> b!34080 (= lt!2345 e!15665)))

(declare-fun c!15382 () Bool)

(assert (=> b!34080 (= c!15382 (exists!14 s1!478 p!1713))))

(declare-fun b!34081 () Bool)

(declare-fun Unit!142 () Unit!140)

(assert (=> b!34081 (= e!15665 Unit!142)))

(declare-fun b!34082 () Bool)

(declare-fun lt!2343 () Unit!140)

(assert (=> b!34082 (= e!15665 lt!2343)))

(declare-fun lemmaContainsThenExists!3 ((InoxSet A!151) A!151 Int) Unit!140)

(declare-fun getWitness!5 ((InoxSet A!151) Int) A!151)

(assert (=> b!34082 (= lt!2343 (lemmaContainsThenExists!3 lt!2346 (getWitness!5 s1!478 p!1713) p!1713))))

(assert (=> b!34082 false))

(declare-fun setIsEmpty!377 () Bool)

(assert (=> setIsEmpty!377 setRes!377))

(declare-fun setNonEmpty!377 () Bool)

(declare-fun tp!23423 () Bool)

(assert (=> setNonEmpty!377 (= setRes!376 (and tp!23423 tp_is_empty!319))))

(declare-fun setElem!377 () A!151)

(declare-fun setRest!376 () (InoxSet A!151))

(assert (=> setNonEmpty!377 (= s2!449 ((_ map or) (store ((as const (Array A!151 Bool)) false) setElem!377 true) setRest!376))))

(assert (= (and start!1712 res!27466) b!34080))

(assert (= (and b!34080 c!15382) b!34082))

(assert (= (and b!34080 (not c!15382)) b!34081))

(assert (= (and start!1712 condSetEmpty!377) setIsEmpty!377))

(assert (= (and start!1712 (not condSetEmpty!377)) setNonEmpty!376))

(assert (= (and start!1712 condSetEmpty!376) setIsEmpty!376))

(assert (= (and start!1712 (not condSetEmpty!376)) setNonEmpty!377))

(declare-fun m!10001 () Bool)

(assert (=> start!1712 m!10001))

(declare-fun m!10003 () Bool)

(assert (=> b!34080 m!10003))

(declare-fun m!10005 () Bool)

(assert (=> b!34080 m!10005))

(declare-fun m!10007 () Bool)

(assert (=> b!34082 m!10007))

(assert (=> b!34082 m!10007))

(declare-fun m!10009 () Bool)

(assert (=> b!34082 m!10009))

(check-sat (not setNonEmpty!376) (not b_next!323) b_and!323 tp_is_empty!319 (not b!34080) (not setNonEmpty!377) (not start!1712) (not b!34082))
(check-sat b_and!323 (not b_next!323))
