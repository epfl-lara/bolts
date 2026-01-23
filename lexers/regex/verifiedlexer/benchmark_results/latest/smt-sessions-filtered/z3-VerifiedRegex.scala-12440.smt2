; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694224 () Bool)

(assert start!694224)

(declare-datatypes ((C!36296 0))(
  ( (C!36297 (val!28074 Int)) )
))
(declare-datatypes ((Regex!18013 0))(
  ( (ElementMatch!18013 (c!1329361 C!36296)) (Concat!26858 (regOne!36538 Regex!18013) (regTwo!36538 Regex!18013)) (EmptyExpr!18013) (Star!18013 (reg!18342 Regex!18013)) (EmptyLang!18013) (Union!18013 (regOne!36539 Regex!18013) (regTwo!36539 Regex!18013)) )
))
(declare-datatypes ((List!69077 0))(
  ( (Nil!68953) (Cons!68953 (h!75401 Regex!18013) (t!383054 List!69077)) )
))
(declare-datatypes ((Context!14014 0))(
  ( (Context!14015 (exprs!7507 List!69077)) )
))
(declare-fun setElem!51642 () Context!14014)

(declare-fun setRes!51643 () Bool)

(declare-fun setNonEmpty!51642 () Bool)

(declare-fun e!4282114 () Bool)

(declare-fun tp!1962784 () Bool)

(declare-fun inv!88060 (Context!14014) Bool)

(assert (=> setNonEmpty!51642 (= setRes!51643 (and tp!1962784 (inv!88060 setElem!51642) e!4282114))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!552 () (InoxSet Context!14014))

(declare-fun setRest!51642 () (InoxSet Context!14014))

(assert (=> setNonEmpty!51642 (= z1!552 ((_ map or) (store ((as const (Array Context!14014 Bool)) false) setElem!51642 true) setRest!51642))))

(declare-fun setIsEmpty!51642 () Bool)

(declare-fun setRes!51642 () Bool)

(assert (=> setIsEmpty!51642 setRes!51642))

(declare-fun b!7125664 () Bool)

(declare-fun res!2907544 () Bool)

(declare-fun e!4282120 () Bool)

(assert (=> b!7125664 (=> (not res!2907544) (not e!4282120))))

(declare-fun z2!471 () (InoxSet Context!14014))

(declare-datatypes ((List!69078 0))(
  ( (Nil!68954) (Cons!68954 (h!75402 C!36296) (t!383055 List!69078)) )
))
(declare-fun s2!1620 () List!69078)

(declare-fun matchZipper!3269 ((InoxSet Context!14014) List!69078) Bool)

(assert (=> b!7125664 (= res!2907544 (matchZipper!3269 z2!471 s2!1620))))

(declare-fun setNonEmpty!51643 () Bool)

(declare-fun tp!1962779 () Bool)

(declare-fun setElem!51643 () Context!14014)

(declare-fun e!4282119 () Bool)

(assert (=> setNonEmpty!51643 (= setRes!51642 (and tp!1962779 (inv!88060 setElem!51643) e!4282119))))

(declare-fun setRest!51643 () (InoxSet Context!14014))

(assert (=> setNonEmpty!51643 (= z2!471 ((_ map or) (store ((as const (Array Context!14014 Bool)) false) setElem!51643 true) setRest!51643))))

(declare-fun b!7125665 () Bool)

(declare-datatypes ((Unit!162857 0))(
  ( (Unit!162858) )
))
(declare-fun e!4282121 () Unit!162857)

(declare-fun Unit!162859 () Unit!162857)

(assert (=> b!7125665 (= e!4282121 Unit!162859)))

(declare-fun s1Rec!140 () List!69078)

(declare-fun s2Rec!140 () List!69078)

(declare-fun lt!2563147 () Unit!162857)

(declare-fun s1!1688 () List!69078)

(declare-fun s!7390 () List!69078)

(declare-fun lemmaSamePrefixThenSameSuffix!2717 (List!69078 List!69078 List!69078 List!69078 List!69078) Unit!162857)

(assert (=> b!7125665 (= lt!2563147 (lemmaSamePrefixThenSameSuffix!2717 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7125665 false))

(declare-fun b!7125666 () Bool)

(declare-fun e!4282117 () Bool)

(assert (=> b!7125666 (= e!4282117 (not true))))

(declare-fun lt!2563146 () List!69078)

(declare-fun ++!16151 (List!69078 List!69078) List!69078)

(assert (=> b!7125666 (= lt!2563146 (++!16151 s1Rec!140 s2Rec!140))))

(declare-fun lt!2563151 () Unit!162857)

(assert (=> b!7125666 (= lt!2563151 e!4282121)))

(declare-fun c!1329360 () Bool)

(assert (=> b!7125666 (= c!1329360 (= s1Rec!140 s1!1688))))

(declare-fun lt!2563150 () List!69078)

(declare-fun isPrefix!5882 (List!69078 List!69078) Bool)

(assert (=> b!7125666 (isPrefix!5882 s1Rec!140 lt!2563150)))

(declare-fun lt!2563148 () Unit!162857)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3613 (List!69078 List!69078) Unit!162857)

(assert (=> b!7125666 (= lt!2563148 (lemmaConcatTwoListThenFirstIsPrefix!3613 s1Rec!140 s2Rec!140))))

(declare-fun lt!2563152 () List!69078)

(assert (=> b!7125666 (isPrefix!5882 s1!1688 lt!2563152)))

(declare-fun lt!2563149 () Unit!162857)

(assert (=> b!7125666 (= lt!2563149 (lemmaConcatTwoListThenFirstIsPrefix!3613 s1!1688 s2!1620))))

(declare-fun b!7125667 () Bool)

(declare-fun tp!1962778 () Bool)

(assert (=> b!7125667 (= e!4282119 tp!1962778)))

(declare-fun b!7125668 () Bool)

(declare-fun e!4282123 () Bool)

(assert (=> b!7125668 (= e!4282120 e!4282123)))

(declare-fun res!2907546 () Bool)

(assert (=> b!7125668 (=> (not res!2907546) (not e!4282123))))

(assert (=> b!7125668 (= res!2907546 (= lt!2563152 s!7390))))

(assert (=> b!7125668 (= lt!2563152 (++!16151 s1!1688 s2!1620))))

(declare-fun b!7125663 () Bool)

(assert (=> b!7125663 (= e!4282123 e!4282117)))

(declare-fun res!2907551 () Bool)

(assert (=> b!7125663 (=> (not res!2907551) (not e!4282117))))

(assert (=> b!7125663 (= res!2907551 (= lt!2563150 s!7390))))

(assert (=> b!7125663 (= lt!2563150 (++!16151 s1Rec!140 s2Rec!140))))

(declare-fun res!2907545 () Bool)

(assert (=> start!694224 (=> (not res!2907545) (not e!4282120))))

(assert (=> start!694224 (= res!2907545 (matchZipper!3269 z1!552 s1!1688))))

(assert (=> start!694224 e!4282120))

(declare-fun e!4282122 () Bool)

(assert (=> start!694224 e!4282122))

(declare-fun condSetEmpty!51643 () Bool)

(assert (=> start!694224 (= condSetEmpty!51643 (= z1!552 ((as const (Array Context!14014 Bool)) false)))))

(assert (=> start!694224 setRes!51643))

(declare-fun e!4282125 () Bool)

(assert (=> start!694224 e!4282125))

(declare-fun condSetEmpty!51642 () Bool)

(assert (=> start!694224 (= condSetEmpty!51642 (= z2!471 ((as const (Array Context!14014 Bool)) false)))))

(assert (=> start!694224 setRes!51642))

(declare-fun e!4282116 () Bool)

(assert (=> start!694224 e!4282116))

(declare-fun e!4282118 () Bool)

(assert (=> start!694224 e!4282118))

(declare-fun e!4282115 () Bool)

(assert (=> start!694224 e!4282115))

(declare-fun b!7125669 () Bool)

(declare-fun tp_is_empty!45627 () Bool)

(declare-fun tp!1962782 () Bool)

(assert (=> b!7125669 (= e!4282116 (and tp_is_empty!45627 tp!1962782))))

(declare-fun b!7125670 () Bool)

(declare-fun tp!1962777 () Bool)

(assert (=> b!7125670 (= e!4282114 tp!1962777)))

(declare-fun b!7125671 () Bool)

(declare-fun tp!1962781 () Bool)

(assert (=> b!7125671 (= e!4282122 (and tp_is_empty!45627 tp!1962781))))

(declare-fun b!7125672 () Bool)

(declare-fun tp!1962780 () Bool)

(assert (=> b!7125672 (= e!4282115 (and tp_is_empty!45627 tp!1962780))))

(declare-fun b!7125673 () Bool)

(declare-fun res!2907550 () Bool)

(assert (=> b!7125673 (=> (not res!2907550) (not e!4282117))))

(declare-fun e!4282124 () Bool)

(assert (=> b!7125673 (= res!2907550 e!4282124)))

(declare-fun res!2907547 () Bool)

(assert (=> b!7125673 (=> res!2907547 e!4282124)))

(assert (=> b!7125673 (= res!2907547 (not (matchZipper!3269 z1!552 s1Rec!140)))))

(declare-fun b!7125674 () Bool)

(declare-fun res!2907549 () Bool)

(assert (=> b!7125674 (=> (not res!2907549) (not e!4282117))))

(get-info :version)

(assert (=> b!7125674 (= res!2907549 (not ((_ is Nil!68954) s2Rec!140)))))

(declare-fun b!7125675 () Bool)

(declare-fun Unit!162860 () Unit!162857)

(assert (=> b!7125675 (= e!4282121 Unit!162860)))

(declare-fun b!7125676 () Bool)

(declare-fun res!2907548 () Bool)

(assert (=> b!7125676 (=> (not res!2907548) (not e!4282123))))

(assert (=> b!7125676 (= res!2907548 (isPrefix!5882 s1Rec!140 s1!1688))))

(declare-fun b!7125677 () Bool)

(declare-fun tp!1962785 () Bool)

(assert (=> b!7125677 (= e!4282118 (and tp_is_empty!45627 tp!1962785))))

(declare-fun b!7125678 () Bool)

(declare-fun tp!1962783 () Bool)

(assert (=> b!7125678 (= e!4282125 (and tp_is_empty!45627 tp!1962783))))

(declare-fun setIsEmpty!51643 () Bool)

(assert (=> setIsEmpty!51643 setRes!51643))

(declare-fun b!7125679 () Bool)

(assert (=> b!7125679 (= e!4282124 (not (matchZipper!3269 z2!471 s2Rec!140)))))

(assert (= (and start!694224 res!2907545) b!7125664))

(assert (= (and b!7125664 res!2907544) b!7125668))

(assert (= (and b!7125668 res!2907546) b!7125676))

(assert (= (and b!7125676 res!2907548) b!7125663))

(assert (= (and b!7125663 res!2907551) b!7125673))

(assert (= (and b!7125673 (not res!2907547)) b!7125679))

(assert (= (and b!7125673 res!2907550) b!7125674))

(assert (= (and b!7125674 res!2907549) b!7125666))

(assert (= (and b!7125666 c!1329360) b!7125665))

(assert (= (and b!7125666 (not c!1329360)) b!7125675))

(assert (= (and start!694224 ((_ is Cons!68954) s1Rec!140)) b!7125671))

(assert (= (and start!694224 condSetEmpty!51643) setIsEmpty!51643))

(assert (= (and start!694224 (not condSetEmpty!51643)) setNonEmpty!51642))

(assert (= setNonEmpty!51642 b!7125670))

(assert (= (and start!694224 ((_ is Cons!68954) s2Rec!140)) b!7125678))

(assert (= (and start!694224 condSetEmpty!51642) setIsEmpty!51642))

(assert (= (and start!694224 (not condSetEmpty!51642)) setNonEmpty!51643))

(assert (= setNonEmpty!51643 b!7125667))

(assert (= (and start!694224 ((_ is Cons!68954) s2!1620)) b!7125669))

(assert (= (and start!694224 ((_ is Cons!68954) s1!1688)) b!7125677))

(assert (= (and start!694224 ((_ is Cons!68954) s!7390)) b!7125672))

(declare-fun m!7842668 () Bool)

(assert (=> b!7125665 m!7842668))

(declare-fun m!7842670 () Bool)

(assert (=> start!694224 m!7842670))

(declare-fun m!7842672 () Bool)

(assert (=> b!7125663 m!7842672))

(declare-fun m!7842674 () Bool)

(assert (=> b!7125679 m!7842674))

(declare-fun m!7842676 () Bool)

(assert (=> b!7125664 m!7842676))

(declare-fun m!7842678 () Bool)

(assert (=> b!7125673 m!7842678))

(declare-fun m!7842680 () Bool)

(assert (=> b!7125676 m!7842680))

(declare-fun m!7842682 () Bool)

(assert (=> b!7125668 m!7842682))

(declare-fun m!7842684 () Bool)

(assert (=> setNonEmpty!51643 m!7842684))

(declare-fun m!7842686 () Bool)

(assert (=> setNonEmpty!51642 m!7842686))

(declare-fun m!7842688 () Bool)

(assert (=> b!7125666 m!7842688))

(assert (=> b!7125666 m!7842672))

(declare-fun m!7842690 () Bool)

(assert (=> b!7125666 m!7842690))

(declare-fun m!7842692 () Bool)

(assert (=> b!7125666 m!7842692))

(declare-fun m!7842694 () Bool)

(assert (=> b!7125666 m!7842694))

(check-sat (not b!7125665) (not b!7125678) (not b!7125671) (not setNonEmpty!51642) (not b!7125673) (not b!7125672) (not b!7125679) (not b!7125676) (not start!694224) (not b!7125664) (not b!7125668) (not b!7125666) (not b!7125677) tp_is_empty!45627 (not setNonEmpty!51643) (not b!7125663) (not b!7125667) (not b!7125670) (not b!7125669))
(check-sat)
