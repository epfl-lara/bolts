; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713252 () Bool)

(assert start!713252)

(declare-fun b!7316947 () Bool)

(declare-fun res!2956643 () Bool)

(declare-fun e!4380354 () Bool)

(assert (=> b!7316947 (=> (not res!2956643) (not e!4380354))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!38168 0))(
  ( (C!38169 (val!29180 Int)) )
))
(declare-datatypes ((Regex!18947 0))(
  ( (ElementMatch!18947 (c!1358313 C!38168)) (Concat!27792 (regOne!38406 Regex!18947) (regTwo!38406 Regex!18947)) (EmptyExpr!18947) (Star!18947 (reg!19276 Regex!18947)) (EmptyLang!18947) (Union!18947 (regOne!38407 Regex!18947) (regTwo!38407 Regex!18947)) )
))
(declare-datatypes ((List!71322 0))(
  ( (Nil!71198) (Cons!71198 (h!77646 Regex!18947) (t!385554 List!71322)) )
))
(declare-datatypes ((Context!15774 0))(
  ( (Context!15775 (exprs!8387 List!71322)) )
))
(declare-fun z1!542 () (InoxSet Context!15774))

(declare-fun nullableZipper!3126 ((InoxSet Context!15774)) Bool)

(assert (=> b!7316947 (= res!2956643 (nullableZipper!3126 z1!542))))

(declare-fun b!7316948 () Bool)

(declare-fun e!4380353 () Bool)

(assert (=> b!7316948 (= e!4380353 e!4380354)))

(declare-fun res!2956642 () Bool)

(assert (=> b!7316948 (=> (not res!2956642) (not e!4380354))))

(declare-fun lt!2602346 () (InoxSet Context!15774))

(assert (=> b!7316948 (= res!2956642 (not (nullableZipper!3126 lt!2602346)))))

(declare-fun z2!461 () (InoxSet Context!15774))

(assert (=> b!7316948 (= lt!2602346 ((_ map or) z1!542 z2!461))))

(declare-fun b!7316949 () Bool)

(declare-fun res!2956644 () Bool)

(assert (=> b!7316949 (=> (not res!2956644) (not e!4380354))))

(declare-fun lambda!452530 () Int)

(declare-fun exists!4602 ((InoxSet Context!15774) Int) Bool)

(assert (=> b!7316949 (= res!2956644 (not (exists!4602 lt!2602346 lambda!452530)))))

(declare-fun setNonEmpty!54668 () Bool)

(declare-fun setElem!54668 () Context!15774)

(declare-fun setRes!54669 () Bool)

(declare-fun tp!2077418 () Bool)

(declare-fun e!4380355 () Bool)

(declare-fun inv!90488 (Context!15774) Bool)

(assert (=> setNonEmpty!54668 (= setRes!54669 (and tp!2077418 (inv!90488 setElem!54668) e!4380355))))

(declare-fun setRest!54669 () (InoxSet Context!15774))

(assert (=> setNonEmpty!54668 (= z1!542 ((_ map or) (store ((as const (Array Context!15774 Bool)) false) setElem!54668 true) setRest!54669))))

(declare-fun b!7316950 () Bool)

(assert (=> b!7316950 (= e!4380354 (not true))))

(assert (=> b!7316950 (exists!4602 lt!2602346 lambda!452530)))

(declare-datatypes ((Unit!164637 0))(
  ( (Unit!164638) )
))
(declare-fun lt!2602345 () Unit!164637)

(declare-fun lemmaContainsThenExists!257 ((InoxSet Context!15774) Context!15774 Int) Unit!164637)

(declare-fun getWitness!2340 ((InoxSet Context!15774) Int) Context!15774)

(assert (=> b!7316950 (= lt!2602345 (lemmaContainsThenExists!257 lt!2602346 (getWitness!2340 z1!542 lambda!452530) lambda!452530))))

(declare-fun b!7316951 () Bool)

(declare-fun e!4380356 () Bool)

(declare-fun tp_is_empty!47639 () Bool)

(declare-fun tp!2077415 () Bool)

(assert (=> b!7316951 (= e!4380356 (and tp_is_empty!47639 tp!2077415))))

(declare-fun b!7316952 () Bool)

(declare-fun e!4380352 () Bool)

(declare-fun tp!2077416 () Bool)

(assert (=> b!7316952 (= e!4380352 tp!2077416)))

(declare-fun setNonEmpty!54669 () Bool)

(declare-fun tp!2077419 () Bool)

(declare-fun setRes!54668 () Bool)

(declare-fun setElem!54669 () Context!15774)

(assert (=> setNonEmpty!54669 (= setRes!54668 (and tp!2077419 (inv!90488 setElem!54669) e!4380352))))

(declare-fun setRest!54668 () (InoxSet Context!15774))

(assert (=> setNonEmpty!54669 (= z2!461 ((_ map or) (store ((as const (Array Context!15774 Bool)) false) setElem!54669 true) setRest!54668))))

(declare-fun b!7316953 () Bool)

(declare-fun tp!2077417 () Bool)

(assert (=> b!7316953 (= e!4380355 tp!2077417)))

(declare-fun setIsEmpty!54668 () Bool)

(assert (=> setIsEmpty!54668 setRes!54669))

(declare-fun res!2956645 () Bool)

(assert (=> start!713252 (=> (not res!2956645) (not e!4380353))))

(declare-datatypes ((List!71323 0))(
  ( (Nil!71199) (Cons!71199 (h!77647 C!38168) (t!385555 List!71323)) )
))
(declare-fun s!7362 () List!71323)

(get-info :version)

(assert (=> start!713252 (= res!2956645 (not ((_ is Cons!71199) s!7362)))))

(assert (=> start!713252 e!4380353))

(assert (=> start!713252 e!4380356))

(declare-fun condSetEmpty!54668 () Bool)

(assert (=> start!713252 (= condSetEmpty!54668 (= z1!542 ((as const (Array Context!15774 Bool)) false)))))

(assert (=> start!713252 setRes!54669))

(declare-fun condSetEmpty!54669 () Bool)

(assert (=> start!713252 (= condSetEmpty!54669 (= z2!461 ((as const (Array Context!15774 Bool)) false)))))

(assert (=> start!713252 setRes!54668))

(declare-fun setIsEmpty!54669 () Bool)

(assert (=> setIsEmpty!54669 setRes!54668))

(assert (= (and start!713252 res!2956645) b!7316948))

(assert (= (and b!7316948 res!2956642) b!7316949))

(assert (= (and b!7316949 res!2956644) b!7316947))

(assert (= (and b!7316947 res!2956643) b!7316950))

(assert (= (and start!713252 ((_ is Cons!71199) s!7362)) b!7316951))

(assert (= (and start!713252 condSetEmpty!54668) setIsEmpty!54668))

(assert (= (and start!713252 (not condSetEmpty!54668)) setNonEmpty!54668))

(assert (= setNonEmpty!54668 b!7316953))

(assert (= (and start!713252 condSetEmpty!54669) setIsEmpty!54669))

(assert (= (and start!713252 (not condSetEmpty!54669)) setNonEmpty!54669))

(assert (= setNonEmpty!54669 b!7316952))

(declare-fun m!7981146 () Bool)

(assert (=> b!7316947 m!7981146))

(declare-fun m!7981148 () Bool)

(assert (=> b!7316950 m!7981148))

(declare-fun m!7981150 () Bool)

(assert (=> b!7316950 m!7981150))

(assert (=> b!7316950 m!7981150))

(declare-fun m!7981152 () Bool)

(assert (=> b!7316950 m!7981152))

(declare-fun m!7981154 () Bool)

(assert (=> setNonEmpty!54669 m!7981154))

(declare-fun m!7981156 () Bool)

(assert (=> b!7316948 m!7981156))

(assert (=> b!7316949 m!7981148))

(declare-fun m!7981158 () Bool)

(assert (=> setNonEmpty!54668 m!7981158))

(check-sat (not b!7316953) (not b!7316949) (not b!7316948) tp_is_empty!47639 (not setNonEmpty!54668) (not setNonEmpty!54669) (not b!7316950) (not b!7316951) (not b!7316952) (not b!7316947))
(check-sat)
