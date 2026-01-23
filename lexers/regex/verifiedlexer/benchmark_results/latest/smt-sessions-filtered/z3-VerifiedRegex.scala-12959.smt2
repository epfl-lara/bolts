; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713308 () Bool)

(assert start!713308)

(declare-fun b!7317213 () Bool)

(declare-fun e!4380566 () Bool)

(declare-fun tp!2077585 () Bool)

(assert (=> b!7317213 (= e!4380566 tp!2077585)))

(declare-fun setRes!54720 () Bool)

(declare-fun tp!2077582 () Bool)

(declare-datatypes ((C!38180 0))(
  ( (C!38181 (val!29186 Int)) )
))
(declare-datatypes ((Regex!18953 0))(
  ( (ElementMatch!18953 (c!1358399 C!38180)) (Concat!27798 (regOne!38418 Regex!18953) (regTwo!38418 Regex!18953)) (EmptyExpr!18953) (Star!18953 (reg!19282 Regex!18953)) (EmptyLang!18953) (Union!18953 (regOne!38419 Regex!18953) (regTwo!38419 Regex!18953)) )
))
(declare-datatypes ((List!71337 0))(
  ( (Nil!71213) (Cons!71213 (h!77661 Regex!18953) (t!385569 List!71337)) )
))
(declare-datatypes ((Context!15786 0))(
  ( (Context!15787 (exprs!8393 List!71337)) )
))
(declare-fun setElem!54720 () Context!15786)

(declare-fun setNonEmpty!54720 () Bool)

(declare-fun inv!90503 (Context!15786) Bool)

(assert (=> setNonEmpty!54720 (= setRes!54720 (and tp!2077582 (inv!90503 setElem!54720) e!4380566))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z2!461 () (InoxSet Context!15786))

(declare-fun setRest!54720 () (InoxSet Context!15786))

(assert (=> setNonEmpty!54720 (= z2!461 ((_ map or) (store ((as const (Array Context!15786 Bool)) false) setElem!54720 true) setRest!54720))))

(declare-fun b!7317214 () Bool)

(declare-datatypes ((Unit!164659 0))(
  ( (Unit!164660) )
))
(declare-fun e!4380563 () Unit!164659)

(declare-fun Unit!164661 () Unit!164659)

(assert (=> b!7317214 (= e!4380563 Unit!164661)))

(declare-fun b!7317215 () Bool)

(declare-fun e!4380564 () Bool)

(declare-fun tp!2077584 () Bool)

(assert (=> b!7317215 (= e!4380564 tp!2077584)))

(declare-fun b!7317216 () Bool)

(declare-fun e!4380568 () Bool)

(declare-fun tp_is_empty!47651 () Bool)

(declare-fun tp!2077581 () Bool)

(assert (=> b!7317216 (= e!4380568 (and tp_is_empty!47651 tp!2077581))))

(declare-fun b!7317217 () Bool)

(declare-fun e!4380567 () Bool)

(declare-fun e!4380565 () Bool)

(assert (=> b!7317217 (= e!4380567 e!4380565)))

(declare-fun res!2956753 () Bool)

(assert (=> b!7317217 (=> (not res!2956753) (not e!4380565))))

(declare-fun lt!2602450 () (InoxSet Context!15786))

(declare-fun nullableZipper!3132 ((InoxSet Context!15786)) Bool)

(assert (=> b!7317217 (= res!2956753 (not (nullableZipper!3132 lt!2602450)))))

(declare-fun z1!542 () (InoxSet Context!15786))

(assert (=> b!7317217 (= lt!2602450 ((_ map or) z1!542 z2!461))))

(declare-fun setIsEmpty!54721 () Bool)

(assert (=> setIsEmpty!54721 setRes!54720))

(declare-fun setRes!54721 () Bool)

(declare-fun setElem!54721 () Context!15786)

(declare-fun setNonEmpty!54721 () Bool)

(declare-fun tp!2077583 () Bool)

(assert (=> setNonEmpty!54721 (= setRes!54721 (and tp!2077583 (inv!90503 setElem!54721) e!4380564))))

(declare-fun setRest!54721 () (InoxSet Context!15786))

(assert (=> setNonEmpty!54721 (= z1!542 ((_ map or) (store ((as const (Array Context!15786 Bool)) false) setElem!54721 true) setRest!54721))))

(declare-fun b!7317218 () Bool)

(declare-fun e!4380562 () Bool)

(assert (=> b!7317218 (= e!4380562 (not true))))

(declare-fun lambda!452629 () Int)

(declare-fun exists!4611 ((InoxSet Context!15786) Int) Bool)

(assert (=> b!7317218 (exists!4611 lt!2602450 lambda!452629)))

(declare-fun lt!2602449 () Unit!164659)

(declare-fun lemmaContainsThenExists!263 ((InoxSet Context!15786) Context!15786 Int) Unit!164659)

(declare-fun getWitness!2349 ((InoxSet Context!15786) Int) Context!15786)

(assert (=> b!7317218 (= lt!2602449 (lemmaContainsThenExists!263 lt!2602450 (getWitness!2349 z2!461 lambda!452629) lambda!452629))))

(declare-fun setIsEmpty!54720 () Bool)

(assert (=> setIsEmpty!54720 setRes!54721))

(declare-fun res!2956755 () Bool)

(assert (=> start!713308 (=> (not res!2956755) (not e!4380567))))

(declare-datatypes ((List!71338 0))(
  ( (Nil!71214) (Cons!71214 (h!77662 C!38180) (t!385570 List!71338)) )
))
(declare-fun s!7362 () List!71338)

(get-info :version)

(assert (=> start!713308 (= res!2956755 (not ((_ is Cons!71214) s!7362)))))

(assert (=> start!713308 e!4380567))

(assert (=> start!713308 e!4380568))

(declare-fun condSetEmpty!54720 () Bool)

(assert (=> start!713308 (= condSetEmpty!54720 (= z1!542 ((as const (Array Context!15786 Bool)) false)))))

(assert (=> start!713308 setRes!54721))

(declare-fun condSetEmpty!54721 () Bool)

(assert (=> start!713308 (= condSetEmpty!54721 (= z2!461 ((as const (Array Context!15786 Bool)) false)))))

(assert (=> start!713308 setRes!54720))

(declare-fun b!7317219 () Bool)

(declare-fun res!2956752 () Bool)

(assert (=> b!7317219 (=> (not res!2956752) (not e!4380565))))

(assert (=> b!7317219 (= res!2956752 (not (exists!4611 lt!2602450 lambda!452629)))))

(declare-fun b!7317220 () Bool)

(assert (=> b!7317220 (= e!4380565 e!4380562)))

(declare-fun res!2956756 () Bool)

(assert (=> b!7317220 (=> (not res!2956756) (not e!4380562))))

(assert (=> b!7317220 (= res!2956756 (nullableZipper!3132 z2!461))))

(declare-fun lt!2602451 () Unit!164659)

(assert (=> b!7317220 (= lt!2602451 e!4380563)))

(declare-fun c!1358398 () Bool)

(assert (=> b!7317220 (= c!1358398 (nullableZipper!3132 z1!542))))

(declare-fun b!7317221 () Bool)

(declare-fun e!4380569 () Bool)

(assert (=> b!7317221 (= e!4380569 false)))

(declare-fun b!7317222 () Bool)

(declare-fun Unit!164662 () Unit!164659)

(assert (=> b!7317222 (= e!4380563 Unit!164662)))

(declare-fun lt!2602448 () Unit!164659)

(assert (=> b!7317222 (= lt!2602448 (lemmaContainsThenExists!263 lt!2602450 (getWitness!2349 z1!542 lambda!452629) lambda!452629))))

(declare-fun res!2956754 () Bool)

(assert (=> b!7317222 (= res!2956754 (exists!4611 lt!2602450 lambda!452629))))

(assert (=> b!7317222 (=> (not res!2956754) (not e!4380569))))

(assert (=> b!7317222 e!4380569))

(assert (= (and start!713308 res!2956755) b!7317217))

(assert (= (and b!7317217 res!2956753) b!7317219))

(assert (= (and b!7317219 res!2956752) b!7317220))

(assert (= (and b!7317220 c!1358398) b!7317222))

(assert (= (and b!7317220 (not c!1358398)) b!7317214))

(assert (= (and b!7317222 res!2956754) b!7317221))

(assert (= (and b!7317220 res!2956756) b!7317218))

(assert (= (and start!713308 ((_ is Cons!71214) s!7362)) b!7317216))

(assert (= (and start!713308 condSetEmpty!54720) setIsEmpty!54720))

(assert (= (and start!713308 (not condSetEmpty!54720)) setNonEmpty!54721))

(assert (= setNonEmpty!54721 b!7317215))

(assert (= (and start!713308 condSetEmpty!54721) setIsEmpty!54721))

(assert (= (and start!713308 (not condSetEmpty!54721)) setNonEmpty!54720))

(assert (= setNonEmpty!54720 b!7317213))

(declare-fun m!7981430 () Bool)

(assert (=> b!7317217 m!7981430))

(declare-fun m!7981432 () Bool)

(assert (=> b!7317220 m!7981432))

(declare-fun m!7981434 () Bool)

(assert (=> b!7317220 m!7981434))

(declare-fun m!7981436 () Bool)

(assert (=> setNonEmpty!54720 m!7981436))

(declare-fun m!7981438 () Bool)

(assert (=> b!7317218 m!7981438))

(declare-fun m!7981440 () Bool)

(assert (=> b!7317218 m!7981440))

(assert (=> b!7317218 m!7981440))

(declare-fun m!7981442 () Bool)

(assert (=> b!7317218 m!7981442))

(declare-fun m!7981444 () Bool)

(assert (=> b!7317222 m!7981444))

(assert (=> b!7317222 m!7981444))

(declare-fun m!7981446 () Bool)

(assert (=> b!7317222 m!7981446))

(assert (=> b!7317222 m!7981438))

(declare-fun m!7981448 () Bool)

(assert (=> setNonEmpty!54721 m!7981448))

(assert (=> b!7317219 m!7981438))

(check-sat (not b!7317220) (not b!7317217) (not setNonEmpty!54721) (not b!7317213) (not setNonEmpty!54720) tp_is_empty!47651 (not b!7317218) (not b!7317219) (not b!7317222) (not b!7317215) (not b!7317216))
(check-sat)
