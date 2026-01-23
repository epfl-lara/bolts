; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1750 () Bool)

(assert start!1750)

(declare-fun b_free!343 () Bool)

(declare-fun b_next!343 () Bool)

(assert (=> start!1750 (= b_free!343 (not b_next!343))))

(declare-fun tp!23528 () Bool)

(declare-fun b_and!353 () Bool)

(assert (=> start!1750 (= tp!23528 b_and!353)))

(declare-fun setNonEmpty!452 () Bool)

(declare-fun setRes!452 () Bool)

(declare-fun tp!23530 () Bool)

(declare-fun tp_is_empty!339 () Bool)

(assert (=> setNonEmpty!452 (= setRes!452 (and tp!23530 tp_is_empty!339))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!171 0))(
  ( (A!172 (val!193 Int)) )
))
(declare-fun s2!449 () (InoxSet A!171))

(declare-fun setElem!452 () A!171)

(declare-fun setRest!453 () (InoxSet A!171))

(assert (=> setNonEmpty!452 (= s2!449 ((_ map or) (store ((as const (Array A!171 Bool)) false) setElem!452 true) setRest!453))))

(declare-fun b!34195 () Bool)

(declare-fun e!15745 () Bool)

(declare-fun e!15743 () Bool)

(assert (=> b!34195 (= e!15745 e!15743)))

(declare-fun res!27536 () Bool)

(assert (=> b!34195 (=> (not res!27536) (not e!15743))))

(declare-fun p!1713 () Int)

(declare-fun exists!27 ((InoxSet A!171) Int) Bool)

(assert (=> b!34195 (= res!27536 (exists!27 s2!449 p!1713))))

(declare-datatypes ((Unit!158 0))(
  ( (Unit!159) )
))
(declare-fun lt!2457 () Unit!158)

(declare-fun e!15744 () Unit!158)

(assert (=> b!34195 (= lt!2457 e!15744)))

(declare-fun c!15400 () Bool)

(declare-fun s1!478 () (InoxSet A!171))

(assert (=> b!34195 (= c!15400 (exists!27 s1!478 p!1713))))

(declare-fun setIsEmpty!452 () Bool)

(declare-fun setRes!453 () Bool)

(assert (=> setIsEmpty!452 setRes!453))

(declare-fun lt!2455 () (InoxSet A!171))

(declare-fun lt!2458 () A!171)

(declare-fun b!34194 () Bool)

(assert (=> b!34194 (= e!15743 (and (select s2!449 lt!2458) (not (select lt!2455 lt!2458))))))

(declare-fun getWitness!18 ((InoxSet A!171) Int) A!171)

(assert (=> b!34194 (= lt!2458 (getWitness!18 s2!449 p!1713))))

(declare-fun res!27537 () Bool)

(assert (=> start!1750 (=> (not res!27537) (not e!15745))))

(assert (=> start!1750 (= res!27537 (not (exists!27 lt!2455 p!1713)))))

(assert (=> start!1750 (= lt!2455 ((_ map or) s1!478 s2!449))))

(assert (=> start!1750 e!15745))

(declare-fun condSetEmpty!452 () Bool)

(assert (=> start!1750 (= condSetEmpty!452 (= s1!478 ((as const (Array A!171 Bool)) false)))))

(assert (=> start!1750 setRes!453))

(declare-fun condSetEmpty!453 () Bool)

(assert (=> start!1750 (= condSetEmpty!453 (= s2!449 ((as const (Array A!171 Bool)) false)))))

(assert (=> start!1750 setRes!452))

(assert (=> start!1750 tp!23528))

(declare-fun b!34196 () Bool)

(declare-fun lt!2456 () Unit!158)

(assert (=> b!34196 (= e!15744 lt!2456)))

(declare-fun lemmaContainsThenExists!9 ((InoxSet A!171) A!171 Int) Unit!158)

(assert (=> b!34196 (= lt!2456 (lemmaContainsThenExists!9 lt!2455 (getWitness!18 s1!478 p!1713) p!1713))))

(assert (=> b!34196 false))

(declare-fun b!34197 () Bool)

(declare-fun Unit!160 () Unit!158)

(assert (=> b!34197 (= e!15744 Unit!160)))

(declare-fun setIsEmpty!453 () Bool)

(assert (=> setIsEmpty!453 setRes!452))

(declare-fun setNonEmpty!453 () Bool)

(declare-fun tp!23529 () Bool)

(assert (=> setNonEmpty!453 (= setRes!453 (and tp!23529 tp_is_empty!339))))

(declare-fun setElem!453 () A!171)

(declare-fun setRest!452 () (InoxSet A!171))

(assert (=> setNonEmpty!453 (= s1!478 ((_ map or) (store ((as const (Array A!171 Bool)) false) setElem!453 true) setRest!452))))

(assert (= (and start!1750 res!27537) b!34195))

(assert (= (and b!34195 c!15400) b!34196))

(assert (= (and b!34195 (not c!15400)) b!34197))

(assert (= (and b!34195 res!27536) b!34194))

(assert (= (and start!1750 condSetEmpty!452) setIsEmpty!452))

(assert (= (and start!1750 (not condSetEmpty!452)) setNonEmpty!453))

(assert (= (and start!1750 condSetEmpty!453) setIsEmpty!453))

(assert (= (and start!1750 (not condSetEmpty!453)) setNonEmpty!452))

(declare-fun m!10201 () Bool)

(assert (=> b!34195 m!10201))

(declare-fun m!10203 () Bool)

(assert (=> b!34195 m!10203))

(declare-fun m!10205 () Bool)

(assert (=> b!34194 m!10205))

(declare-fun m!10207 () Bool)

(assert (=> b!34194 m!10207))

(declare-fun m!10209 () Bool)

(assert (=> b!34194 m!10209))

(declare-fun m!10211 () Bool)

(assert (=> start!1750 m!10211))

(declare-fun m!10213 () Bool)

(assert (=> b!34196 m!10213))

(assert (=> b!34196 m!10213))

(declare-fun m!10215 () Bool)

(assert (=> b!34196 m!10215))

(check-sat tp_is_empty!339 b_and!353 (not b_next!343) (not b!34196) (not setNonEmpty!452) (not start!1750) (not b!34195) (not setNonEmpty!453) (not b!34194))
(check-sat b_and!353 (not b_next!343))
