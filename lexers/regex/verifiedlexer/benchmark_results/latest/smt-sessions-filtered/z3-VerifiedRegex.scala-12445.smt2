; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694244 () Bool)

(assert start!694244)

(declare-fun b!7126213 () Bool)

(declare-fun res!2907801 () Bool)

(declare-fun e!4282493 () Bool)

(assert (=> b!7126213 (=> (not res!2907801) (not e!4282493))))

(declare-datatypes ((C!36316 0))(
  ( (C!36317 (val!28084 Int)) )
))
(declare-datatypes ((List!69097 0))(
  ( (Nil!68973) (Cons!68973 (h!75421 C!36316) (t!383074 List!69097)) )
))
(declare-fun s2!1620 () List!69097)

(declare-fun s1!1688 () List!69097)

(declare-fun s!7390 () List!69097)

(declare-fun ++!16161 (List!69097 List!69097) List!69097)

(assert (=> b!7126213 (= res!2907801 (= (++!16161 s1!1688 s2!1620) s!7390))))

(declare-fun b!7126214 () Bool)

(declare-fun e!4282489 () Bool)

(declare-fun tp_is_empty!45647 () Bool)

(declare-fun tp!1963051 () Bool)

(assert (=> b!7126214 (= e!4282489 (and tp_is_empty!45647 tp!1963051))))

(declare-fun setIsEmpty!51702 () Bool)

(declare-fun setRes!51702 () Bool)

(assert (=> setIsEmpty!51702 setRes!51702))

(declare-fun setNonEmpty!51702 () Bool)

(declare-fun e!4282491 () Bool)

(declare-fun tp!1963047 () Bool)

(declare-fun setRes!51703 () Bool)

(declare-datatypes ((Regex!18023 0))(
  ( (ElementMatch!18023 (c!1329413 C!36316)) (Concat!26868 (regOne!36558 Regex!18023) (regTwo!36558 Regex!18023)) (EmptyExpr!18023) (Star!18023 (reg!18352 Regex!18023)) (EmptyLang!18023) (Union!18023 (regOne!36559 Regex!18023) (regTwo!36559 Regex!18023)) )
))
(declare-datatypes ((List!69098 0))(
  ( (Nil!68974) (Cons!68974 (h!75422 Regex!18023) (t!383075 List!69098)) )
))
(declare-datatypes ((Context!14034 0))(
  ( (Context!14035 (exprs!7517 List!69098)) )
))
(declare-fun setElem!51702 () Context!14034)

(declare-fun inv!88085 (Context!14034) Bool)

(assert (=> setNonEmpty!51702 (= setRes!51703 (and tp!1963047 (inv!88085 setElem!51702) e!4282491))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!552 () (InoxSet Context!14034))

(declare-fun setRest!51702 () (InoxSet Context!14034))

(assert (=> setNonEmpty!51702 (= z1!552 ((_ map or) (store ((as const (Array Context!14034 Bool)) false) setElem!51702 true) setRest!51702))))

(declare-fun b!7126215 () Bool)

(declare-fun e!4282497 () Bool)

(declare-fun tp!1963050 () Bool)

(assert (=> b!7126215 (= e!4282497 (and tp_is_empty!45647 tp!1963050))))

(declare-fun b!7126216 () Bool)

(declare-fun e!4282494 () Bool)

(declare-fun tp!1963053 () Bool)

(assert (=> b!7126216 (= e!4282494 (and tp_is_empty!45647 tp!1963053))))

(declare-fun res!2907803 () Bool)

(assert (=> start!694244 (=> (not res!2907803) (not e!4282493))))

(declare-fun matchZipper!3279 ((InoxSet Context!14034) List!69097) Bool)

(assert (=> start!694244 (= res!2907803 (matchZipper!3279 z1!552 s1!1688))))

(assert (=> start!694244 e!4282493))

(assert (=> start!694244 e!4282497))

(declare-fun condSetEmpty!51703 () Bool)

(assert (=> start!694244 (= condSetEmpty!51703 (= z1!552 ((as const (Array Context!14034 Bool)) false)))))

(assert (=> start!694244 setRes!51703))

(declare-fun e!4282495 () Bool)

(assert (=> start!694244 e!4282495))

(declare-fun condSetEmpty!51702 () Bool)

(declare-fun z2!471 () (InoxSet Context!14034))

(assert (=> start!694244 (= condSetEmpty!51702 (= z2!471 ((as const (Array Context!14034 Bool)) false)))))

(assert (=> start!694244 setRes!51702))

(assert (=> start!694244 e!4282489))

(assert (=> start!694244 e!4282494))

(declare-fun e!4282490 () Bool)

(assert (=> start!694244 e!4282490))

(declare-fun b!7126217 () Bool)

(declare-fun tp!1963054 () Bool)

(assert (=> b!7126217 (= e!4282490 (and tp_is_empty!45647 tp!1963054))))

(declare-fun b!7126218 () Bool)

(declare-fun e!4282492 () Bool)

(declare-fun tp!1963052 () Bool)

(assert (=> b!7126218 (= e!4282492 tp!1963052)))

(declare-fun setIsEmpty!51703 () Bool)

(assert (=> setIsEmpty!51703 setRes!51703))

(declare-fun b!7126219 () Bool)

(declare-fun res!2907800 () Bool)

(assert (=> b!7126219 (=> (not res!2907800) (not e!4282493))))

(declare-fun s1Rec!140 () List!69097)

(declare-fun isPrefix!5892 (List!69097 List!69097) Bool)

(assert (=> b!7126219 (= res!2907800 (isPrefix!5892 s1Rec!140 s1!1688))))

(declare-fun b!7126220 () Bool)

(declare-fun res!2907799 () Bool)

(assert (=> b!7126220 (=> (not res!2907799) (not e!4282493))))

(assert (=> b!7126220 (= res!2907799 (matchZipper!3279 z2!471 s2!1620))))

(declare-fun b!7126221 () Bool)

(declare-fun tp!1963048 () Bool)

(assert (=> b!7126221 (= e!4282491 tp!1963048)))

(declare-fun b!7126222 () Bool)

(assert (=> b!7126222 (= e!4282493 false)))

(declare-fun lt!2563464 () Bool)

(declare-fun e!4282496 () Bool)

(assert (=> b!7126222 (= lt!2563464 e!4282496)))

(declare-fun res!2907798 () Bool)

(assert (=> b!7126222 (=> res!2907798 e!4282496)))

(assert (=> b!7126222 (= res!2907798 (not (matchZipper!3279 z1!552 s1Rec!140)))))

(declare-fun b!7126223 () Bool)

(declare-fun res!2907802 () Bool)

(assert (=> b!7126223 (=> (not res!2907802) (not e!4282493))))

(declare-fun s2Rec!140 () List!69097)

(assert (=> b!7126223 (= res!2907802 (= (++!16161 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7126224 () Bool)

(assert (=> b!7126224 (= e!4282496 (not (matchZipper!3279 z2!471 s2Rec!140)))))

(declare-fun tp!1963049 () Bool)

(declare-fun setNonEmpty!51703 () Bool)

(declare-fun setElem!51703 () Context!14034)

(assert (=> setNonEmpty!51703 (= setRes!51702 (and tp!1963049 (inv!88085 setElem!51703) e!4282492))))

(declare-fun setRest!51703 () (InoxSet Context!14034))

(assert (=> setNonEmpty!51703 (= z2!471 ((_ map or) (store ((as const (Array Context!14034 Bool)) false) setElem!51703 true) setRest!51703))))

(declare-fun b!7126225 () Bool)

(declare-fun tp!1963055 () Bool)

(assert (=> b!7126225 (= e!4282495 (and tp_is_empty!45647 tp!1963055))))

(assert (= (and start!694244 res!2907803) b!7126220))

(assert (= (and b!7126220 res!2907799) b!7126213))

(assert (= (and b!7126213 res!2907801) b!7126219))

(assert (= (and b!7126219 res!2907800) b!7126223))

(assert (= (and b!7126223 res!2907802) b!7126222))

(assert (= (and b!7126222 (not res!2907798)) b!7126224))

(get-info :version)

(assert (= (and start!694244 ((_ is Cons!68973) s1Rec!140)) b!7126215))

(assert (= (and start!694244 condSetEmpty!51703) setIsEmpty!51703))

(assert (= (and start!694244 (not condSetEmpty!51703)) setNonEmpty!51702))

(assert (= setNonEmpty!51702 b!7126221))

(assert (= (and start!694244 ((_ is Cons!68973) s2Rec!140)) b!7126225))

(assert (= (and start!694244 condSetEmpty!51702) setIsEmpty!51702))

(assert (= (and start!694244 (not condSetEmpty!51702)) setNonEmpty!51703))

(assert (= setNonEmpty!51703 b!7126218))

(assert (= (and start!694244 ((_ is Cons!68973) s2!1620)) b!7126214))

(assert (= (and start!694244 ((_ is Cons!68973) s1!1688)) b!7126216))

(assert (= (and start!694244 ((_ is Cons!68973) s!7390)) b!7126217))

(declare-fun m!7843110 () Bool)

(assert (=> b!7126222 m!7843110))

(declare-fun m!7843112 () Bool)

(assert (=> b!7126213 m!7843112))

(declare-fun m!7843114 () Bool)

(assert (=> setNonEmpty!51702 m!7843114))

(declare-fun m!7843116 () Bool)

(assert (=> b!7126220 m!7843116))

(declare-fun m!7843118 () Bool)

(assert (=> b!7126219 m!7843118))

(declare-fun m!7843120 () Bool)

(assert (=> b!7126223 m!7843120))

(declare-fun m!7843122 () Bool)

(assert (=> start!694244 m!7843122))

(declare-fun m!7843124 () Bool)

(assert (=> b!7126224 m!7843124))

(declare-fun m!7843126 () Bool)

(assert (=> setNonEmpty!51703 m!7843126))

(check-sat (not setNonEmpty!51702) (not b!7126222) (not start!694244) (not b!7126224) (not b!7126218) (not b!7126217) (not setNonEmpty!51703) (not b!7126220) (not b!7126225) (not b!7126214) (not b!7126221) (not b!7126219) (not b!7126216) (not b!7126223) (not b!7126215) tp_is_empty!45647 (not b!7126213))
(check-sat)
