; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694452 () Bool)

(assert start!694452)

(declare-datatypes ((C!36336 0))(
  ( (C!36337 (val!28094 Int)) )
))
(declare-datatypes ((Regex!18033 0))(
  ( (ElementMatch!18033 (c!1329823 C!36336)) (Concat!26878 (regOne!36578 Regex!18033) (regTwo!36578 Regex!18033)) (EmptyExpr!18033) (Star!18033 (reg!18362 Regex!18033)) (EmptyLang!18033) (Union!18033 (regOne!36579 Regex!18033) (regTwo!36579 Regex!18033)) )
))
(declare-datatypes ((List!69120 0))(
  ( (Nil!68996) (Cons!68996 (h!75444 Regex!18033) (t!383097 List!69120)) )
))
(declare-datatypes ((Context!14054 0))(
  ( (Context!14055 (exprs!7527 List!69120)) )
))
(declare-fun setElem!51815 () Context!14054)

(declare-fun setNonEmpty!51814 () Bool)

(declare-fun setRes!51814 () Bool)

(declare-fun tp!1964091 () Bool)

(declare-fun e!4283799 () Bool)

(declare-fun inv!88110 (Context!14054) Bool)

(assert (=> setNonEmpty!51814 (= setRes!51814 (and tp!1964091 (inv!88110 setElem!51815) e!4283799))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z2!471 () (InoxSet Context!14054))

(declare-fun setRest!51815 () (InoxSet Context!14054))

(assert (=> setNonEmpty!51814 (= z2!471 ((_ map or) (store ((as const (Array Context!14054 Bool)) false) setElem!51815 true) setRest!51815))))

(declare-datatypes ((List!69121 0))(
  ( (Nil!68997) (Cons!68997 (h!75445 C!36336) (t!383098 List!69121)) )
))
(declare-fun s1Rec!140 () List!69121)

(declare-fun z1!552 () (InoxSet Context!14054))

(declare-fun b!7128488 () Bool)

(declare-fun s2Rec!140 () List!69121)

(declare-fun e!4283794 () Bool)

(declare-fun s!7390 () List!69121)

(declare-datatypes ((tuple2!68360 0))(
  ( (tuple2!68361 (_1!37483 List!69121) (_2!37483 List!69121)) )
))
(declare-datatypes ((Option!17012 0))(
  ( (None!17011) (Some!17011 (v!53505 tuple2!68360)) )
))
(declare-fun findConcatSeparationZippers!528 ((InoxSet Context!14054) (InoxSet Context!14054) List!69121 List!69121 List!69121) Option!17012)

(assert (=> b!7128488 (= e!4283794 (not (= (findConcatSeparationZippers!528 z1!552 z2!471 s1Rec!140 s2Rec!140 s!7390) (Some!17011 (tuple2!68361 s1Rec!140 s2Rec!140)))))))

(declare-fun b!7128489 () Bool)

(declare-fun e!4283795 () Bool)

(declare-fun matchZipper!3289 ((InoxSet Context!14054) List!69121) Bool)

(assert (=> b!7128489 (= e!4283795 (not (matchZipper!3289 z2!471 s2Rec!140)))))

(declare-fun b!7128490 () Bool)

(declare-fun res!2908485 () Bool)

(assert (=> b!7128490 (=> (not res!2908485) (not e!4283794))))

(declare-fun lt!2563714 () Int)

(declare-fun s1!1688 () List!69121)

(declare-fun size!41468 (List!69121) Int)

(assert (=> b!7128490 (= res!2908485 (= lt!2563714 (size!41468 s1!1688)))))

(declare-fun b!7128491 () Bool)

(declare-fun e!4283796 () Bool)

(assert (=> b!7128491 (= e!4283796 e!4283794)))

(declare-fun res!2908489 () Bool)

(assert (=> b!7128491 (=> (not res!2908489) (not e!4283794))))

(assert (=> b!7128491 (= res!2908489 (= lt!2563714 (size!41468 s!7390)))))

(assert (=> b!7128491 (= lt!2563714 (size!41468 s1Rec!140))))

(declare-fun b!7128492 () Bool)

(declare-fun res!2908486 () Bool)

(assert (=> b!7128492 (=> (not res!2908486) (not e!4283796))))

(declare-fun s2!1620 () List!69121)

(declare-fun ++!16171 (List!69121 List!69121) List!69121)

(assert (=> b!7128492 (= res!2908486 (= (++!16171 s1!1688 s2!1620) s!7390))))

(declare-fun setElem!51814 () Context!14054)

(declare-fun tp!1964092 () Bool)

(declare-fun e!4283791 () Bool)

(declare-fun setRes!51815 () Bool)

(declare-fun setNonEmpty!51815 () Bool)

(assert (=> setNonEmpty!51815 (= setRes!51815 (and tp!1964092 (inv!88110 setElem!51814) e!4283791))))

(declare-fun setRest!51814 () (InoxSet Context!14054))

(assert (=> setNonEmpty!51815 (= z1!552 ((_ map or) (store ((as const (Array Context!14054 Bool)) false) setElem!51814 true) setRest!51814))))

(declare-fun b!7128493 () Bool)

(declare-fun res!2908490 () Bool)

(assert (=> b!7128493 (=> (not res!2908490) (not e!4283796))))

(assert (=> b!7128493 (= res!2908490 e!4283795)))

(declare-fun res!2908484 () Bool)

(assert (=> b!7128493 (=> res!2908484 e!4283795)))

(assert (=> b!7128493 (= res!2908484 (not (matchZipper!3289 z1!552 s1Rec!140)))))

(declare-fun b!7128494 () Bool)

(declare-fun tp!1964093 () Bool)

(assert (=> b!7128494 (= e!4283791 tp!1964093)))

(declare-fun b!7128495 () Bool)

(declare-fun e!4283797 () Bool)

(declare-fun tp_is_empty!45667 () Bool)

(declare-fun tp!1964090 () Bool)

(assert (=> b!7128495 (= e!4283797 (and tp_is_empty!45667 tp!1964090))))

(declare-fun b!7128496 () Bool)

(declare-fun e!4283792 () Bool)

(declare-fun tp!1964094 () Bool)

(assert (=> b!7128496 (= e!4283792 (and tp_is_empty!45667 tp!1964094))))

(declare-fun b!7128497 () Bool)

(declare-fun res!2908481 () Bool)

(assert (=> b!7128497 (=> (not res!2908481) (not e!4283796))))

(get-info :version)

(assert (=> b!7128497 (= res!2908481 ((_ is Nil!68997) s2Rec!140))))

(declare-fun b!7128498 () Bool)

(declare-fun res!2908491 () Bool)

(assert (=> b!7128498 (=> (not res!2908491) (not e!4283796))))

(declare-fun isPrefix!5902 (List!69121 List!69121) Bool)

(assert (=> b!7128498 (= res!2908491 (isPrefix!5902 s1Rec!140 s1!1688))))

(declare-fun b!7128499 () Bool)

(declare-fun res!2908488 () Bool)

(assert (=> b!7128499 (=> (not res!2908488) (not e!4283796))))

(assert (=> b!7128499 (= res!2908488 (matchZipper!3289 z2!471 s2!1620))))

(declare-fun setIsEmpty!51815 () Bool)

(assert (=> setIsEmpty!51815 setRes!51815))

(declare-fun b!7128500 () Bool)

(declare-fun e!4283790 () Bool)

(declare-fun tp!1964087 () Bool)

(assert (=> b!7128500 (= e!4283790 (and tp_is_empty!45667 tp!1964087))))

(declare-fun b!7128501 () Bool)

(declare-fun res!2908483 () Bool)

(assert (=> b!7128501 (=> (not res!2908483) (not e!4283794))))

(assert (=> b!7128501 (= res!2908483 (and (= s1Rec!140 s1!1688) (= s2Rec!140 s2!1620)))))

(declare-fun b!7128502 () Bool)

(declare-fun e!4283793 () Bool)

(declare-fun tp!1964088 () Bool)

(assert (=> b!7128502 (= e!4283793 (and tp_is_empty!45667 tp!1964088))))

(declare-fun b!7128503 () Bool)

(declare-fun tp!1964095 () Bool)

(assert (=> b!7128503 (= e!4283799 tp!1964095)))

(declare-fun res!2908482 () Bool)

(assert (=> start!694452 (=> (not res!2908482) (not e!4283796))))

(assert (=> start!694452 (= res!2908482 (matchZipper!3289 z1!552 s1!1688))))

(assert (=> start!694452 e!4283796))

(assert (=> start!694452 e!4283792))

(declare-fun condSetEmpty!51815 () Bool)

(assert (=> start!694452 (= condSetEmpty!51815 (= z1!552 ((as const (Array Context!14054 Bool)) false)))))

(assert (=> start!694452 setRes!51815))

(declare-fun e!4283798 () Bool)

(assert (=> start!694452 e!4283798))

(declare-fun condSetEmpty!51814 () Bool)

(assert (=> start!694452 (= condSetEmpty!51814 (= z2!471 ((as const (Array Context!14054 Bool)) false)))))

(assert (=> start!694452 setRes!51814))

(assert (=> start!694452 e!4283790))

(assert (=> start!694452 e!4283793))

(assert (=> start!694452 e!4283797))

(declare-fun setIsEmpty!51814 () Bool)

(assert (=> setIsEmpty!51814 setRes!51814))

(declare-fun b!7128504 () Bool)

(declare-fun res!2908487 () Bool)

(assert (=> b!7128504 (=> (not res!2908487) (not e!4283796))))

(assert (=> b!7128504 (= res!2908487 (= (++!16171 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7128505 () Bool)

(declare-fun tp!1964089 () Bool)

(assert (=> b!7128505 (= e!4283798 (and tp_is_empty!45667 tp!1964089))))

(assert (= (and start!694452 res!2908482) b!7128499))

(assert (= (and b!7128499 res!2908488) b!7128492))

(assert (= (and b!7128492 res!2908486) b!7128498))

(assert (= (and b!7128498 res!2908491) b!7128504))

(assert (= (and b!7128504 res!2908487) b!7128493))

(assert (= (and b!7128493 (not res!2908484)) b!7128489))

(assert (= (and b!7128493 res!2908490) b!7128497))

(assert (= (and b!7128497 res!2908481) b!7128491))

(assert (= (and b!7128491 res!2908489) b!7128490))

(assert (= (and b!7128490 res!2908485) b!7128501))

(assert (= (and b!7128501 res!2908483) b!7128488))

(assert (= (and start!694452 ((_ is Cons!68997) s1Rec!140)) b!7128496))

(assert (= (and start!694452 condSetEmpty!51815) setIsEmpty!51815))

(assert (= (and start!694452 (not condSetEmpty!51815)) setNonEmpty!51815))

(assert (= setNonEmpty!51815 b!7128494))

(assert (= (and start!694452 ((_ is Cons!68997) s2Rec!140)) b!7128505))

(assert (= (and start!694452 condSetEmpty!51814) setIsEmpty!51814))

(assert (= (and start!694452 (not condSetEmpty!51814)) setNonEmpty!51814))

(assert (= setNonEmpty!51814 b!7128503))

(assert (= (and start!694452 ((_ is Cons!68997) s2!1620)) b!7128500))

(assert (= (and start!694452 ((_ is Cons!68997) s1!1688)) b!7128502))

(assert (= (and start!694452 ((_ is Cons!68997) s!7390)) b!7128495))

(declare-fun m!7845630 () Bool)

(assert (=> b!7128491 m!7845630))

(declare-fun m!7845632 () Bool)

(assert (=> b!7128491 m!7845632))

(declare-fun m!7845634 () Bool)

(assert (=> b!7128493 m!7845634))

(declare-fun m!7845636 () Bool)

(assert (=> start!694452 m!7845636))

(declare-fun m!7845638 () Bool)

(assert (=> b!7128504 m!7845638))

(declare-fun m!7845640 () Bool)

(assert (=> b!7128488 m!7845640))

(declare-fun m!7845642 () Bool)

(assert (=> setNonEmpty!51814 m!7845642))

(declare-fun m!7845644 () Bool)

(assert (=> b!7128492 m!7845644))

(declare-fun m!7845646 () Bool)

(assert (=> setNonEmpty!51815 m!7845646))

(declare-fun m!7845648 () Bool)

(assert (=> b!7128499 m!7845648))

(declare-fun m!7845650 () Bool)

(assert (=> b!7128489 m!7845650))

(declare-fun m!7845652 () Bool)

(assert (=> b!7128490 m!7845652))

(declare-fun m!7845654 () Bool)

(assert (=> b!7128498 m!7845654))

(check-sat (not start!694452) (not b!7128496) tp_is_empty!45667 (not b!7128504) (not b!7128491) (not b!7128503) (not b!7128495) (not setNonEmpty!51814) (not b!7128502) (not b!7128494) (not b!7128493) (not b!7128500) (not b!7128498) (not setNonEmpty!51815) (not b!7128505) (not b!7128490) (not b!7128492) (not b!7128488) (not b!7128499) (not b!7128489))
(check-sat)
