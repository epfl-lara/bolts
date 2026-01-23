; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713092 () Bool)

(assert start!713092)

(declare-fun setIsEmpty!54552 () Bool)

(declare-fun setRes!54553 () Bool)

(assert (=> setIsEmpty!54552 setRes!54553))

(declare-datatypes ((C!38144 0))(
  ( (C!38145 (val!29168 Int)) )
))
(declare-datatypes ((Regex!18935 0))(
  ( (ElementMatch!18935 (c!1358165 C!38144)) (Concat!27780 (regOne!38382 Regex!18935) (regTwo!38382 Regex!18935)) (EmptyExpr!18935) (Star!18935 (reg!19264 Regex!18935)) (EmptyLang!18935) (Union!18935 (regOne!38383 Regex!18935) (regTwo!38383 Regex!18935)) )
))
(declare-datatypes ((List!71289 0))(
  ( (Nil!71165) (Cons!71165 (h!77613 Regex!18935) (t!385521 List!71289)) )
))
(declare-datatypes ((Context!15750 0))(
  ( (Context!15751 (exprs!8375 List!71289)) )
))
(declare-fun setElem!54553 () Context!15750)

(declare-fun e!4379884 () Bool)

(declare-fun setNonEmpty!54552 () Bool)

(declare-fun tp!2076983 () Bool)

(declare-fun setRes!54552 () Bool)

(declare-fun inv!90458 (Context!15750) Bool)

(assert (=> setNonEmpty!54552 (= setRes!54552 (and tp!2076983 (inv!90458 setElem!54553) e!4379884))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!542 () (InoxSet Context!15750))

(declare-fun setRest!54553 () (InoxSet Context!15750))

(assert (=> setNonEmpty!54552 (= z1!542 ((_ map or) (store ((as const (Array Context!15750 Bool)) false) setElem!54553 true) setRest!54553))))

(declare-fun b!7316295 () Bool)

(declare-fun e!4379885 () Bool)

(declare-fun tp!2076980 () Bool)

(assert (=> b!7316295 (= e!4379885 tp!2076980)))

(declare-fun tp!2076979 () Bool)

(declare-fun setNonEmpty!54553 () Bool)

(declare-fun setElem!54552 () Context!15750)

(assert (=> setNonEmpty!54553 (= setRes!54553 (and tp!2076979 (inv!90458 setElem!54552) e!4379885))))

(declare-fun z2!461 () (InoxSet Context!15750))

(declare-fun setRest!54552 () (InoxSet Context!15750))

(assert (=> setNonEmpty!54553 (= z2!461 ((_ map or) (store ((as const (Array Context!15750 Bool)) false) setElem!54552 true) setRest!54552))))

(declare-fun b!7316296 () Bool)

(declare-fun tp!2076982 () Bool)

(assert (=> b!7316296 (= e!4379884 tp!2076982)))

(declare-fun lt!2602151 () Context!15750)

(declare-fun lt!2602152 () (InoxSet Context!15750))

(declare-fun b!7316297 () Bool)

(declare-fun e!4379886 () Bool)

(assert (=> b!7316297 (= e!4379886 (and (select lt!2602152 lt!2602151) (not (select z1!542 lt!2602151)) (not (select z2!461 lt!2602151))))))

(declare-fun lambda!452334 () Int)

(declare-fun getWitness!2320 ((InoxSet Context!15750) Int) Context!15750)

(assert (=> b!7316297 (= lt!2602151 (getWitness!2320 lt!2602152 lambda!452334))))

(declare-fun b!7316298 () Bool)

(declare-fun e!4379888 () Bool)

(assert (=> b!7316298 (= e!4379888 e!4379886)))

(declare-fun res!2956399 () Bool)

(assert (=> b!7316298 (=> (not res!2956399) (not e!4379886))))

(declare-fun nullableZipper!3114 ((InoxSet Context!15750)) Bool)

(assert (=> b!7316298 (= res!2956399 (nullableZipper!3114 lt!2602152))))

(assert (=> b!7316298 (= lt!2602152 ((_ map or) z1!542 z2!461))))

(declare-fun setIsEmpty!54553 () Bool)

(assert (=> setIsEmpty!54553 setRes!54552))

(declare-fun res!2956398 () Bool)

(assert (=> start!713092 (=> (not res!2956398) (not e!4379888))))

(declare-datatypes ((List!71290 0))(
  ( (Nil!71166) (Cons!71166 (h!77614 C!38144) (t!385522 List!71290)) )
))
(declare-fun s!7362 () List!71290)

(get-info :version)

(assert (=> start!713092 (= res!2956398 (not ((_ is Cons!71166) s!7362)))))

(assert (=> start!713092 e!4379888))

(declare-fun e!4379887 () Bool)

(assert (=> start!713092 e!4379887))

(declare-fun condSetEmpty!54553 () Bool)

(assert (=> start!713092 (= condSetEmpty!54553 (= z1!542 ((as const (Array Context!15750 Bool)) false)))))

(assert (=> start!713092 setRes!54552))

(declare-fun condSetEmpty!54552 () Bool)

(assert (=> start!713092 (= condSetEmpty!54552 (= z2!461 ((as const (Array Context!15750 Bool)) false)))))

(assert (=> start!713092 setRes!54553))

(declare-fun b!7316299 () Bool)

(declare-fun res!2956400 () Bool)

(assert (=> b!7316299 (=> (not res!2956400) (not e!4379886))))

(declare-fun exists!4582 ((InoxSet Context!15750) Int) Bool)

(assert (=> b!7316299 (= res!2956400 (exists!4582 lt!2602152 lambda!452334))))

(declare-fun b!7316300 () Bool)

(declare-fun tp_is_empty!47615 () Bool)

(declare-fun tp!2076981 () Bool)

(assert (=> b!7316300 (= e!4379887 (and tp_is_empty!47615 tp!2076981))))

(assert (= (and start!713092 res!2956398) b!7316298))

(assert (= (and b!7316298 res!2956399) b!7316299))

(assert (= (and b!7316299 res!2956400) b!7316297))

(assert (= (and start!713092 ((_ is Cons!71166) s!7362)) b!7316300))

(assert (= (and start!713092 condSetEmpty!54553) setIsEmpty!54553))

(assert (= (and start!713092 (not condSetEmpty!54553)) setNonEmpty!54552))

(assert (= setNonEmpty!54552 b!7316296))

(assert (= (and start!713092 condSetEmpty!54552) setIsEmpty!54552))

(assert (= (and start!713092 (not condSetEmpty!54552)) setNonEmpty!54553))

(assert (= setNonEmpty!54553 b!7316295))

(declare-fun m!7980398 () Bool)

(assert (=> setNonEmpty!54552 m!7980398))

(declare-fun m!7980400 () Bool)

(assert (=> setNonEmpty!54553 m!7980400))

(declare-fun m!7980402 () Bool)

(assert (=> b!7316299 m!7980402))

(declare-fun m!7980404 () Bool)

(assert (=> b!7316298 m!7980404))

(declare-fun m!7980406 () Bool)

(assert (=> b!7316297 m!7980406))

(declare-fun m!7980408 () Bool)

(assert (=> b!7316297 m!7980408))

(declare-fun m!7980410 () Bool)

(assert (=> b!7316297 m!7980410))

(declare-fun m!7980412 () Bool)

(assert (=> b!7316297 m!7980412))

(check-sat (not b!7316296) tp_is_empty!47615 (not b!7316297) (not setNonEmpty!54552) (not b!7316300) (not b!7316298) (not b!7316295) (not setNonEmpty!54553) (not b!7316299))
(check-sat)
