; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694220 () Bool)

(assert start!694220)

(declare-fun setRes!51630 () Bool)

(declare-fun tp!1962726 () Bool)

(declare-fun e!4282050 () Bool)

(declare-datatypes ((C!36292 0))(
  ( (C!36293 (val!28072 Int)) )
))
(declare-datatypes ((Regex!18011 0))(
  ( (ElementMatch!18011 (c!1329353 C!36292)) (Concat!26856 (regOne!36534 Regex!18011) (regTwo!36534 Regex!18011)) (EmptyExpr!18011) (Star!18011 (reg!18340 Regex!18011)) (EmptyLang!18011) (Union!18011 (regOne!36535 Regex!18011) (regTwo!36535 Regex!18011)) )
))
(declare-datatypes ((List!69073 0))(
  ( (Nil!68949) (Cons!68949 (h!75397 Regex!18011) (t!383050 List!69073)) )
))
(declare-datatypes ((Context!14010 0))(
  ( (Context!14011 (exprs!7505 List!69073)) )
))
(declare-fun setElem!51631 () Context!14010)

(declare-fun setNonEmpty!51630 () Bool)

(declare-fun inv!88055 (Context!14010) Bool)

(assert (=> setNonEmpty!51630 (= setRes!51630 (and tp!1962726 (inv!88055 setElem!51631) e!4282050))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z2!471 () (InoxSet Context!14010))

(declare-fun setRest!51630 () (InoxSet Context!14010))

(assert (=> setNonEmpty!51630 (= z2!471 ((_ map or) (store ((as const (Array Context!14010 Bool)) false) setElem!51631 true) setRest!51630))))

(declare-fun b!7125561 () Bool)

(declare-fun e!4282053 () Bool)

(declare-datatypes ((List!69074 0))(
  ( (Nil!68950) (Cons!68950 (h!75398 C!36292) (t!383051 List!69074)) )
))
(declare-fun s2Rec!140 () List!69074)

(declare-fun matchZipper!3267 ((InoxSet Context!14010) List!69074) Bool)

(assert (=> b!7125561 (= e!4282053 (not (matchZipper!3267 z2!471 s2Rec!140)))))

(declare-fun b!7125562 () Bool)

(declare-fun e!4282048 () Bool)

(declare-fun tp_is_empty!45623 () Bool)

(declare-fun tp!1962729 () Bool)

(assert (=> b!7125562 (= e!4282048 (and tp_is_empty!45623 tp!1962729))))

(declare-fun b!7125563 () Bool)

(declare-fun res!2907499 () Bool)

(declare-fun e!4282043 () Bool)

(assert (=> b!7125563 (=> (not res!2907499) (not e!4282043))))

(get-info :version)

(assert (=> b!7125563 (= res!2907499 (not ((_ is Nil!68950) s2Rec!140)))))

(declare-fun b!7125564 () Bool)

(declare-fun e!4282042 () Bool)

(declare-fun tp!1962725 () Bool)

(assert (=> b!7125564 (= e!4282042 (and tp_is_empty!45623 tp!1962725))))

(declare-fun b!7125565 () Bool)

(declare-fun tp!1962731 () Bool)

(assert (=> b!7125565 (= e!4282050 tp!1962731)))

(declare-fun b!7125566 () Bool)

(declare-fun e!4282047 () Bool)

(declare-fun e!4282045 () Bool)

(assert (=> b!7125566 (= e!4282047 e!4282045)))

(declare-fun res!2907503 () Bool)

(assert (=> b!7125566 (=> (not res!2907503) (not e!4282045))))

(declare-fun lt!2563106 () List!69074)

(declare-fun s!7390 () List!69074)

(assert (=> b!7125566 (= res!2907503 (= lt!2563106 s!7390))))

(declare-fun s1!1688 () List!69074)

(declare-fun s2!1620 () List!69074)

(declare-fun ++!16149 (List!69074 List!69074) List!69074)

(assert (=> b!7125566 (= lt!2563106 (++!16149 s1!1688 s2!1620))))

(declare-fun b!7125568 () Bool)

(declare-fun e!4282044 () Bool)

(declare-fun tp!1962723 () Bool)

(assert (=> b!7125568 (= e!4282044 tp!1962723)))

(declare-fun b!7125569 () Bool)

(declare-fun res!2907495 () Bool)

(assert (=> b!7125569 (=> (not res!2907495) (not e!4282047))))

(assert (=> b!7125569 (= res!2907495 (matchZipper!3267 z2!471 s2!1620))))

(declare-fun setIsEmpty!51630 () Bool)

(declare-fun setRes!51631 () Bool)

(assert (=> setIsEmpty!51630 setRes!51631))

(declare-fun b!7125570 () Bool)

(declare-fun e!4282052 () Bool)

(declare-fun tp!1962727 () Bool)

(assert (=> b!7125570 (= e!4282052 (and tp_is_empty!45623 tp!1962727))))

(declare-fun b!7125571 () Bool)

(declare-fun e!4282049 () Bool)

(assert (=> b!7125571 (= e!4282049 true)))

(declare-fun lt!2563110 () Bool)

(declare-fun s1Rec!140 () List!69074)

(declare-fun isPrefix!5880 (List!69074 List!69074) Bool)

(assert (=> b!7125571 (= lt!2563110 (isPrefix!5880 s1Rec!140 s!7390))))

(declare-fun b!7125572 () Bool)

(assert (=> b!7125572 (= e!4282043 (not e!4282049))))

(declare-fun res!2907494 () Bool)

(assert (=> b!7125572 (=> res!2907494 e!4282049)))

(assert (=> b!7125572 (= res!2907494 (not (= s1Rec!140 s1!1688)))))

(declare-fun lt!2563107 () List!69074)

(assert (=> b!7125572 (isPrefix!5880 s1Rec!140 lt!2563107)))

(declare-datatypes ((Unit!162851 0))(
  ( (Unit!162852) )
))
(declare-fun lt!2563108 () Unit!162851)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3611 (List!69074 List!69074) Unit!162851)

(assert (=> b!7125572 (= lt!2563108 (lemmaConcatTwoListThenFirstIsPrefix!3611 s1Rec!140 s2Rec!140))))

(assert (=> b!7125572 (isPrefix!5880 s1!1688 lt!2563106)))

(declare-fun lt!2563109 () Unit!162851)

(assert (=> b!7125572 (= lt!2563109 (lemmaConcatTwoListThenFirstIsPrefix!3611 s1!1688 s2!1620))))

(declare-fun b!7125573 () Bool)

(assert (=> b!7125573 (= e!4282045 e!4282043)))

(declare-fun res!2907496 () Bool)

(assert (=> b!7125573 (=> (not res!2907496) (not e!4282043))))

(assert (=> b!7125573 (= res!2907496 (= lt!2563107 s!7390))))

(assert (=> b!7125573 (= lt!2563107 (++!16149 s1Rec!140 s2Rec!140))))

(declare-fun setIsEmpty!51631 () Bool)

(assert (=> setIsEmpty!51631 setRes!51630))

(declare-fun b!7125574 () Bool)

(declare-fun e!4282046 () Bool)

(declare-fun tp!1962730 () Bool)

(assert (=> b!7125574 (= e!4282046 (and tp_is_empty!45623 tp!1962730))))

(declare-fun b!7125575 () Bool)

(declare-fun res!2907498 () Bool)

(assert (=> b!7125575 (=> res!2907498 e!4282049)))

(assert (=> b!7125575 (= res!2907498 (not (isPrefix!5880 s1!1688 s!7390)))))

(declare-fun b!7125567 () Bool)

(declare-fun e!4282051 () Bool)

(declare-fun tp!1962728 () Bool)

(assert (=> b!7125567 (= e!4282051 (and tp_is_empty!45623 tp!1962728))))

(declare-fun res!2907502 () Bool)

(assert (=> start!694220 (=> (not res!2907502) (not e!4282047))))

(declare-fun z1!552 () (InoxSet Context!14010))

(assert (=> start!694220 (= res!2907502 (matchZipper!3267 z1!552 s1!1688))))

(assert (=> start!694220 e!4282047))

(assert (=> start!694220 e!4282046))

(declare-fun condSetEmpty!51631 () Bool)

(assert (=> start!694220 (= condSetEmpty!51631 (= z1!552 ((as const (Array Context!14010 Bool)) false)))))

(assert (=> start!694220 setRes!51631))

(assert (=> start!694220 e!4282052))

(declare-fun condSetEmpty!51630 () Bool)

(assert (=> start!694220 (= condSetEmpty!51630 (= z2!471 ((as const (Array Context!14010 Bool)) false)))))

(assert (=> start!694220 setRes!51630))

(assert (=> start!694220 e!4282042))

(assert (=> start!694220 e!4282051))

(assert (=> start!694220 e!4282048))

(declare-fun setNonEmpty!51631 () Bool)

(declare-fun setElem!51630 () Context!14010)

(declare-fun tp!1962724 () Bool)

(assert (=> setNonEmpty!51631 (= setRes!51631 (and tp!1962724 (inv!88055 setElem!51630) e!4282044))))

(declare-fun setRest!51631 () (InoxSet Context!14010))

(assert (=> setNonEmpty!51631 (= z1!552 ((_ map or) (store ((as const (Array Context!14010 Bool)) false) setElem!51630 true) setRest!51631))))

(declare-fun b!7125576 () Bool)

(declare-fun res!2907500 () Bool)

(assert (=> b!7125576 (=> (not res!2907500) (not e!4282043))))

(assert (=> b!7125576 (= res!2907500 e!4282053)))

(declare-fun res!2907501 () Bool)

(assert (=> b!7125576 (=> res!2907501 e!4282053)))

(assert (=> b!7125576 (= res!2907501 (not (matchZipper!3267 z1!552 s1Rec!140)))))

(declare-fun b!7125577 () Bool)

(declare-fun res!2907497 () Bool)

(assert (=> b!7125577 (=> (not res!2907497) (not e!4282045))))

(assert (=> b!7125577 (= res!2907497 (isPrefix!5880 s1Rec!140 s1!1688))))

(assert (= (and start!694220 res!2907502) b!7125569))

(assert (= (and b!7125569 res!2907495) b!7125566))

(assert (= (and b!7125566 res!2907503) b!7125577))

(assert (= (and b!7125577 res!2907497) b!7125573))

(assert (= (and b!7125573 res!2907496) b!7125576))

(assert (= (and b!7125576 (not res!2907501)) b!7125561))

(assert (= (and b!7125576 res!2907500) b!7125563))

(assert (= (and b!7125563 res!2907499) b!7125572))

(assert (= (and b!7125572 (not res!2907494)) b!7125575))

(assert (= (and b!7125575 (not res!2907498)) b!7125571))

(assert (= (and start!694220 ((_ is Cons!68950) s1Rec!140)) b!7125574))

(assert (= (and start!694220 condSetEmpty!51631) setIsEmpty!51630))

(assert (= (and start!694220 (not condSetEmpty!51631)) setNonEmpty!51631))

(assert (= setNonEmpty!51631 b!7125568))

(assert (= (and start!694220 ((_ is Cons!68950) s2Rec!140)) b!7125570))

(assert (= (and start!694220 condSetEmpty!51630) setIsEmpty!51631))

(assert (= (and start!694220 (not condSetEmpty!51630)) setNonEmpty!51630))

(assert (= setNonEmpty!51630 b!7125565))

(assert (= (and start!694220 ((_ is Cons!68950) s2!1620)) b!7125564))

(assert (= (and start!694220 ((_ is Cons!68950) s1!1688)) b!7125567))

(assert (= (and start!694220 ((_ is Cons!68950) s!7390)) b!7125562))

(declare-fun m!7842610 () Bool)

(assert (=> b!7125573 m!7842610))

(declare-fun m!7842612 () Bool)

(assert (=> start!694220 m!7842612))

(declare-fun m!7842614 () Bool)

(assert (=> b!7125577 m!7842614))

(declare-fun m!7842616 () Bool)

(assert (=> setNonEmpty!51630 m!7842616))

(declare-fun m!7842618 () Bool)

(assert (=> b!7125561 m!7842618))

(declare-fun m!7842620 () Bool)

(assert (=> b!7125571 m!7842620))

(declare-fun m!7842622 () Bool)

(assert (=> b!7125576 m!7842622))

(declare-fun m!7842624 () Bool)

(assert (=> b!7125575 m!7842624))

(declare-fun m!7842626 () Bool)

(assert (=> b!7125572 m!7842626))

(declare-fun m!7842628 () Bool)

(assert (=> b!7125572 m!7842628))

(declare-fun m!7842630 () Bool)

(assert (=> b!7125572 m!7842630))

(declare-fun m!7842632 () Bool)

(assert (=> b!7125572 m!7842632))

(declare-fun m!7842634 () Bool)

(assert (=> b!7125566 m!7842634))

(declare-fun m!7842636 () Bool)

(assert (=> setNonEmpty!51631 m!7842636))

(declare-fun m!7842638 () Bool)

(assert (=> b!7125569 m!7842638))

(check-sat (not b!7125561) (not b!7125573) (not b!7125569) (not b!7125566) (not b!7125572) (not b!7125576) (not b!7125564) (not b!7125567) (not b!7125575) (not b!7125570) (not b!7125568) tp_is_empty!45623 (not start!694220) (not setNonEmpty!51630) (not b!7125562) (not b!7125577) (not setNonEmpty!51631) (not b!7125574) (not b!7125565) (not b!7125571))
(check-sat)
