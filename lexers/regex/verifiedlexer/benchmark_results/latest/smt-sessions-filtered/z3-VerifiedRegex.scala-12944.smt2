; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712988 () Bool)

(assert start!712988)

(declare-fun b!7315798 () Bool)

(declare-fun e!4379525 () Bool)

(declare-fun tp!2076619 () Bool)

(assert (=> b!7315798 (= e!4379525 tp!2076619)))

(declare-fun b!7315799 () Bool)

(declare-fun e!4379526 () Bool)

(declare-fun tp!2076621 () Bool)

(assert (=> b!7315799 (= e!4379526 tp!2076621)))

(declare-fun b!7315800 () Bool)

(declare-fun e!4379524 () Bool)

(declare-fun e!4379528 () Bool)

(assert (=> b!7315800 (= e!4379524 e!4379528)))

(declare-fun res!2956252 () Bool)

(assert (=> b!7315800 (=> (not res!2956252) (not e!4379528))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!38120 0))(
  ( (C!38121 (val!29156 Int)) )
))
(declare-datatypes ((Regex!18923 0))(
  ( (ElementMatch!18923 (c!1358051 C!38120)) (Concat!27768 (regOne!38358 Regex!18923) (regTwo!38358 Regex!18923)) (EmptyExpr!18923) (Star!18923 (reg!19252 Regex!18923)) (EmptyLang!18923) (Union!18923 (regOne!38359 Regex!18923) (regTwo!38359 Regex!18923)) )
))
(declare-datatypes ((List!71264 0))(
  ( (Nil!71140) (Cons!71140 (h!77588 Regex!18923) (t!385496 List!71264)) )
))
(declare-datatypes ((Context!15726 0))(
  ( (Context!15727 (exprs!8363 List!71264)) )
))
(declare-fun lt!2602015 () (InoxSet Context!15726))

(declare-fun nullableZipper!3104 ((InoxSet Context!15726)) Bool)

(assert (=> b!7315800 (= res!2956252 (not (nullableZipper!3104 lt!2602015)))))

(declare-fun z1!542 () (InoxSet Context!15726))

(declare-fun z2!461 () (InoxSet Context!15726))

(assert (=> b!7315800 (= lt!2602015 ((_ map or) z1!542 z2!461))))

(declare-fun b!7315801 () Bool)

(declare-fun res!2956249 () Bool)

(assert (=> b!7315801 (=> (not res!2956249) (not e!4379528))))

(declare-fun lambda!452201 () Int)

(declare-fun exists!4571 ((InoxSet Context!15726) Int) Bool)

(assert (=> b!7315801 (= res!2956249 (not (exists!4571 lt!2602015 lambda!452201)))))

(declare-fun setIsEmpty!54452 () Bool)

(declare-fun setRes!54452 () Bool)

(assert (=> setIsEmpty!54452 setRes!54452))

(declare-fun b!7315802 () Bool)

(assert (=> b!7315802 (= e!4379528 (not false))))

(assert (=> b!7315802 (exists!4571 lt!2602015 lambda!452201)))

(declare-datatypes ((Unit!164599 0))(
  ( (Unit!164600) )
))
(declare-fun lt!2602016 () Unit!164599)

(declare-fun lemmaContainsThenExists!249 ((InoxSet Context!15726) Context!15726 Int) Unit!164599)

(declare-fun getWitness!2311 ((InoxSet Context!15726) Int) Context!15726)

(assert (=> b!7315802 (= lt!2602016 (lemmaContainsThenExists!249 lt!2602015 (getWitness!2311 z1!542 lambda!452201) lambda!452201))))

(declare-fun b!7315803 () Bool)

(declare-fun res!2956250 () Bool)

(assert (=> b!7315803 (=> (not res!2956250) (not e!4379528))))

(assert (=> b!7315803 (= res!2956250 (nullableZipper!3104 z1!542))))

(declare-fun setIsEmpty!54453 () Bool)

(declare-fun setRes!54453 () Bool)

(assert (=> setIsEmpty!54453 setRes!54453))

(declare-fun res!2956251 () Bool)

(assert (=> start!712988 (=> (not res!2956251) (not e!4379524))))

(declare-datatypes ((List!71265 0))(
  ( (Nil!71141) (Cons!71141 (h!77589 C!38120) (t!385497 List!71265)) )
))
(declare-fun s!7362 () List!71265)

(get-info :version)

(assert (=> start!712988 (= res!2956251 (not ((_ is Cons!71141) s!7362)))))

(assert (=> start!712988 e!4379524))

(declare-fun e!4379527 () Bool)

(assert (=> start!712988 e!4379527))

(declare-fun condSetEmpty!54452 () Bool)

(assert (=> start!712988 (= condSetEmpty!54452 (= z1!542 ((as const (Array Context!15726 Bool)) false)))))

(assert (=> start!712988 setRes!54452))

(declare-fun condSetEmpty!54453 () Bool)

(assert (=> start!712988 (= condSetEmpty!54453 (= z2!461 ((as const (Array Context!15726 Bool)) false)))))

(assert (=> start!712988 setRes!54453))

(declare-fun tp!2076620 () Bool)

(declare-fun setElem!54452 () Context!15726)

(declare-fun setNonEmpty!54452 () Bool)

(declare-fun inv!90428 (Context!15726) Bool)

(assert (=> setNonEmpty!54452 (= setRes!54453 (and tp!2076620 (inv!90428 setElem!54452) e!4379526))))

(declare-fun setRest!54452 () (InoxSet Context!15726))

(assert (=> setNonEmpty!54452 (= z2!461 ((_ map or) (store ((as const (Array Context!15726 Bool)) false) setElem!54452 true) setRest!54452))))

(declare-fun b!7315804 () Bool)

(declare-fun tp_is_empty!47591 () Bool)

(declare-fun tp!2076623 () Bool)

(assert (=> b!7315804 (= e!4379527 (and tp_is_empty!47591 tp!2076623))))

(declare-fun setElem!54453 () Context!15726)

(declare-fun tp!2076622 () Bool)

(declare-fun setNonEmpty!54453 () Bool)

(assert (=> setNonEmpty!54453 (= setRes!54452 (and tp!2076622 (inv!90428 setElem!54453) e!4379525))))

(declare-fun setRest!54453 () (InoxSet Context!15726))

(assert (=> setNonEmpty!54453 (= z1!542 ((_ map or) (store ((as const (Array Context!15726 Bool)) false) setElem!54453 true) setRest!54453))))

(assert (= (and start!712988 res!2956251) b!7315800))

(assert (= (and b!7315800 res!2956252) b!7315801))

(assert (= (and b!7315801 res!2956249) b!7315803))

(assert (= (and b!7315803 res!2956250) b!7315802))

(assert (= (and start!712988 ((_ is Cons!71141) s!7362)) b!7315804))

(assert (= (and start!712988 condSetEmpty!54452) setIsEmpty!54452))

(assert (= (and start!712988 (not condSetEmpty!54452)) setNonEmpty!54453))

(assert (= setNonEmpty!54453 b!7315798))

(assert (= (and start!712988 condSetEmpty!54453) setIsEmpty!54453))

(assert (= (and start!712988 (not condSetEmpty!54453)) setNonEmpty!54452))

(assert (= setNonEmpty!54452 b!7315799))

(declare-fun m!7979798 () Bool)

(assert (=> b!7315800 m!7979798))

(declare-fun m!7979800 () Bool)

(assert (=> b!7315803 m!7979800))

(declare-fun m!7979802 () Bool)

(assert (=> setNonEmpty!54453 m!7979802))

(declare-fun m!7979804 () Bool)

(assert (=> setNonEmpty!54452 m!7979804))

(declare-fun m!7979806 () Bool)

(assert (=> b!7315801 m!7979806))

(assert (=> b!7315802 m!7979806))

(declare-fun m!7979808 () Bool)

(assert (=> b!7315802 m!7979808))

(assert (=> b!7315802 m!7979808))

(declare-fun m!7979810 () Bool)

(assert (=> b!7315802 m!7979810))

(check-sat (not setNonEmpty!54452) (not b!7315800) (not setNonEmpty!54453) (not b!7315798) (not b!7315801) (not b!7315802) tp_is_empty!47591 (not b!7315804) (not b!7315803) (not b!7315799))
(check-sat)
