; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712884 () Bool)

(assert start!712884)

(declare-fun setIsEmpty!54340 () Bool)

(declare-fun setRes!54341 () Bool)

(assert (=> setIsEmpty!54340 setRes!54341))

(declare-fun b!7315384 () Bool)

(declare-fun e!4379201 () Bool)

(declare-fun e!4379202 () Bool)

(assert (=> b!7315384 (= e!4379201 e!4379202)))

(declare-fun res!2956118 () Bool)

(assert (=> b!7315384 (=> (not res!2956118) (not e!4379202))))

(declare-datatypes ((C!38096 0))(
  ( (C!38097 (val!29144 Int)) )
))
(declare-datatypes ((Regex!18911 0))(
  ( (ElementMatch!18911 (c!1357967 C!38096)) (Concat!27756 (regOne!38334 Regex!18911) (regTwo!38334 Regex!18911)) (EmptyExpr!18911) (Star!18911 (reg!19240 Regex!18911)) (EmptyLang!18911) (Union!18911 (regOne!38335 Regex!18911) (regTwo!38335 Regex!18911)) )
))
(declare-datatypes ((List!71232 0))(
  ( (Nil!71108) (Cons!71108 (h!77556 Regex!18911) (t!385464 List!71232)) )
))
(declare-datatypes ((Context!15702 0))(
  ( (Context!15703 (exprs!8351 List!71232)) )
))
(declare-fun lt!2601885 () Context!15702)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2601886 () (InoxSet Context!15702))

(assert (=> b!7315384 (= res!2956118 (select lt!2601886 lt!2601885))))

(declare-fun z2!461 () (InoxSet Context!15702))

(declare-fun lambda!452064 () Int)

(declare-fun getWitness!2299 ((InoxSet Context!15702) Int) Context!15702)

(assert (=> b!7315384 (= lt!2601885 (getWitness!2299 z2!461 lambda!452064))))

(declare-fun tp!2076251 () Bool)

(declare-fun setRes!54340 () Bool)

(declare-fun setNonEmpty!54340 () Bool)

(declare-fun setElem!54340 () Context!15702)

(declare-fun e!4379197 () Bool)

(declare-fun inv!90398 (Context!15702) Bool)

(assert (=> setNonEmpty!54340 (= setRes!54340 (and tp!2076251 (inv!90398 setElem!54340) e!4379197))))

(declare-fun z1!542 () (InoxSet Context!15702))

(declare-fun setRest!54341 () (InoxSet Context!15702))

(assert (=> setNonEmpty!54340 (= z1!542 ((_ map or) (store ((as const (Array Context!15702 Bool)) false) setElem!54340 true) setRest!54341))))

(declare-fun res!2956116 () Bool)

(declare-fun e!4379203 () Bool)

(assert (=> start!712884 (=> (not res!2956116) (not e!4379203))))

(declare-datatypes ((List!71233 0))(
  ( (Nil!71109) (Cons!71109 (h!77557 C!38096) (t!385465 List!71233)) )
))
(declare-fun s!7362 () List!71233)

(get-info :version)

(assert (=> start!712884 (= res!2956116 (not ((_ is Cons!71109) s!7362)))))

(assert (=> start!712884 e!4379203))

(declare-fun e!4379199 () Bool)

(assert (=> start!712884 e!4379199))

(declare-fun condSetEmpty!54340 () Bool)

(assert (=> start!712884 (= condSetEmpty!54340 (= z1!542 ((as const (Array Context!15702 Bool)) false)))))

(assert (=> start!712884 setRes!54340))

(declare-fun condSetEmpty!54341 () Bool)

(assert (=> start!712884 (= condSetEmpty!54341 (= z2!461 ((as const (Array Context!15702 Bool)) false)))))

(assert (=> start!712884 setRes!54341))

(declare-fun b!7315385 () Bool)

(declare-datatypes ((Unit!164585 0))(
  ( (Unit!164586) )
))
(declare-fun e!4379204 () Unit!164585)

(declare-fun Unit!164587 () Unit!164585)

(assert (=> b!7315385 (= e!4379204 Unit!164587)))

(declare-fun b!7315386 () Bool)

(declare-fun tp_is_empty!47567 () Bool)

(declare-fun tp!2076253 () Bool)

(assert (=> b!7315386 (= e!4379199 (and tp_is_empty!47567 tp!2076253))))

(declare-fun e!4379198 () Bool)

(declare-fun tp!2076249 () Bool)

(declare-fun setNonEmpty!54341 () Bool)

(declare-fun setElem!54341 () Context!15702)

(assert (=> setNonEmpty!54341 (= setRes!54341 (and tp!2076249 (inv!90398 setElem!54341) e!4379198))))

(declare-fun setRest!54340 () (InoxSet Context!15702))

(assert (=> setNonEmpty!54341 (= z2!461 ((_ map or) (store ((as const (Array Context!15702 Bool)) false) setElem!54341 true) setRest!54340))))

(declare-fun b!7315387 () Bool)

(declare-fun Unit!164588 () Unit!164585)

(assert (=> b!7315387 (= e!4379204 Unit!164588)))

(declare-fun lt!2601883 () Unit!164585)

(declare-fun lemmaContainsThenExists!243 ((InoxSet Context!15702) Context!15702 Int) Unit!164585)

(assert (=> b!7315387 (= lt!2601883 (lemmaContainsThenExists!243 lt!2601886 (getWitness!2299 z1!542 lambda!452064) lambda!452064))))

(declare-fun res!2956119 () Bool)

(declare-fun exists!4551 ((InoxSet Context!15702) Int) Bool)

(assert (=> b!7315387 (= res!2956119 (exists!4551 lt!2601886 lambda!452064))))

(declare-fun e!4379196 () Bool)

(assert (=> b!7315387 (=> (not res!2956119) (not e!4379196))))

(assert (=> b!7315387 e!4379196))

(declare-fun b!7315388 () Bool)

(declare-fun res!2956117 () Bool)

(declare-fun e!4379200 () Bool)

(assert (=> b!7315388 (=> (not res!2956117) (not e!4379200))))

(assert (=> b!7315388 (= res!2956117 (not (exists!4551 lt!2601886 lambda!452064)))))

(declare-fun setIsEmpty!54341 () Bool)

(assert (=> setIsEmpty!54341 setRes!54340))

(declare-fun b!7315389 () Bool)

(declare-fun tp!2076252 () Bool)

(assert (=> b!7315389 (= e!4379198 tp!2076252)))

(declare-fun b!7315390 () Bool)

(assert (=> b!7315390 (= e!4379200 e!4379201)))

(declare-fun res!2956120 () Bool)

(assert (=> b!7315390 (=> (not res!2956120) (not e!4379201))))

(declare-fun nullableZipper!3092 ((InoxSet Context!15702)) Bool)

(assert (=> b!7315390 (= res!2956120 (nullableZipper!3092 z2!461))))

(declare-fun lt!2601882 () Unit!164585)

(assert (=> b!7315390 (= lt!2601882 e!4379204)))

(declare-fun c!1357966 () Bool)

(assert (=> b!7315390 (= c!1357966 (nullableZipper!3092 z1!542))))

(declare-fun b!7315391 () Bool)

(assert (=> b!7315391 (= e!4379202 false)))

(declare-fun lt!2601884 () Bool)

(declare-fun nullableContext!396 (Context!15702) Bool)

(assert (=> b!7315391 (= lt!2601884 (nullableContext!396 lt!2601885))))

(declare-fun b!7315392 () Bool)

(assert (=> b!7315392 (= e!4379203 e!4379200)))

(declare-fun res!2956115 () Bool)

(assert (=> b!7315392 (=> (not res!2956115) (not e!4379200))))

(assert (=> b!7315392 (= res!2956115 (not (nullableZipper!3092 lt!2601886)))))

(assert (=> b!7315392 (= lt!2601886 ((_ map or) z1!542 z2!461))))

(declare-fun b!7315393 () Bool)

(assert (=> b!7315393 (= e!4379196 false)))

(declare-fun b!7315394 () Bool)

(declare-fun tp!2076250 () Bool)

(assert (=> b!7315394 (= e!4379197 tp!2076250)))

(assert (= (and start!712884 res!2956116) b!7315392))

(assert (= (and b!7315392 res!2956115) b!7315388))

(assert (= (and b!7315388 res!2956117) b!7315390))

(assert (= (and b!7315390 c!1357966) b!7315387))

(assert (= (and b!7315390 (not c!1357966)) b!7315385))

(assert (= (and b!7315387 res!2956119) b!7315393))

(assert (= (and b!7315390 res!2956120) b!7315384))

(assert (= (and b!7315384 res!2956118) b!7315391))

(assert (= (and start!712884 ((_ is Cons!71109) s!7362)) b!7315386))

(assert (= (and start!712884 condSetEmpty!54340) setIsEmpty!54341))

(assert (= (and start!712884 (not condSetEmpty!54340)) setNonEmpty!54340))

(assert (= setNonEmpty!54340 b!7315394))

(assert (= (and start!712884 condSetEmpty!54341) setIsEmpty!54340))

(assert (= (and start!712884 (not condSetEmpty!54341)) setNonEmpty!54341))

(assert (= setNonEmpty!54341 b!7315389))

(declare-fun m!7979388 () Bool)

(assert (=> b!7315384 m!7979388))

(declare-fun m!7979390 () Bool)

(assert (=> b!7315384 m!7979390))

(declare-fun m!7979392 () Bool)

(assert (=> b!7315387 m!7979392))

(assert (=> b!7315387 m!7979392))

(declare-fun m!7979394 () Bool)

(assert (=> b!7315387 m!7979394))

(declare-fun m!7979396 () Bool)

(assert (=> b!7315387 m!7979396))

(declare-fun m!7979398 () Bool)

(assert (=> setNonEmpty!54341 m!7979398))

(declare-fun m!7979400 () Bool)

(assert (=> b!7315391 m!7979400))

(declare-fun m!7979402 () Bool)

(assert (=> b!7315390 m!7979402))

(declare-fun m!7979404 () Bool)

(assert (=> b!7315390 m!7979404))

(declare-fun m!7979406 () Bool)

(assert (=> setNonEmpty!54340 m!7979406))

(assert (=> b!7315388 m!7979396))

(declare-fun m!7979408 () Bool)

(assert (=> b!7315392 m!7979408))

(check-sat (not b!7315394) (not b!7315391) (not b!7315390) (not b!7315392) (not setNonEmpty!54341) tp_is_empty!47567 (not b!7315384) (not b!7315386) (not b!7315389) (not b!7315387) (not setNonEmpty!54340) (not b!7315388))
(check-sat)
