; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694564 () Bool)

(assert start!694564)

(declare-fun b!7129598 () Bool)

(declare-fun res!2908972 () Bool)

(declare-fun e!4284483 () Bool)

(assert (=> b!7129598 (=> res!2908972 e!4284483)))

(declare-datatypes ((C!36360 0))(
  ( (C!36361 (val!28106 Int)) )
))
(declare-datatypes ((List!69144 0))(
  ( (Nil!69020) (Cons!69020 (h!75468 C!36360) (t!383121 List!69144)) )
))
(declare-fun s1!1688 () List!69144)

(declare-fun s!7390 () List!69144)

(declare-fun isPrefix!5914 (List!69144 List!69144) Bool)

(assert (=> b!7129598 (= res!2908972 (not (isPrefix!5914 s1!1688 s!7390)))))

(declare-fun b!7129599 () Bool)

(declare-fun e!4284477 () Bool)

(declare-fun tp!1964582 () Bool)

(assert (=> b!7129599 (= e!4284477 tp!1964582)))

(declare-fun b!7129600 () Bool)

(declare-fun e!4284485 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18045 0))(
  ( (ElementMatch!18045 (c!1329955 C!36360)) (Concat!26890 (regOne!36602 Regex!18045) (regTwo!36602 Regex!18045)) (EmptyExpr!18045) (Star!18045 (reg!18374 Regex!18045)) (EmptyLang!18045) (Union!18045 (regOne!36603 Regex!18045) (regTwo!36603 Regex!18045)) )
))
(declare-datatypes ((List!69145 0))(
  ( (Nil!69021) (Cons!69021 (h!75469 Regex!18045) (t!383122 List!69145)) )
))
(declare-datatypes ((Context!14078 0))(
  ( (Context!14079 (exprs!7539 List!69145)) )
))
(declare-fun z2!471 () (InoxSet Context!14078))

(declare-fun s2Rec!140 () List!69144)

(declare-fun matchZipper!3301 ((InoxSet Context!14078) List!69144) Bool)

(assert (=> b!7129600 (= e!4284485 (not (matchZipper!3301 z2!471 s2Rec!140)))))

(declare-fun tp!1964584 () Bool)

(declare-fun e!4284481 () Bool)

(declare-fun setRes!51907 () Bool)

(declare-fun setElem!51907 () Context!14078)

(declare-fun setNonEmpty!51906 () Bool)

(declare-fun inv!88140 (Context!14078) Bool)

(assert (=> setNonEmpty!51906 (= setRes!51907 (and tp!1964584 (inv!88140 setElem!51907) e!4284481))))

(declare-fun setRest!51906 () (InoxSet Context!14078))

(assert (=> setNonEmpty!51906 (= z2!471 ((_ map or) (store ((as const (Array Context!14078 Bool)) false) setElem!51907 true) setRest!51906))))

(declare-fun b!7129602 () Bool)

(declare-fun e!4284486 () Bool)

(declare-fun tp_is_empty!45691 () Bool)

(declare-fun tp!1964579 () Bool)

(assert (=> b!7129602 (= e!4284486 (and tp_is_empty!45691 tp!1964579))))

(declare-fun b!7129603 () Bool)

(declare-fun res!2908969 () Bool)

(assert (=> b!7129603 (=> res!2908969 e!4284483)))

(declare-fun s1Rec!140 () List!69144)

(assert (=> b!7129603 (= res!2908969 (not (isPrefix!5914 s1Rec!140 s!7390)))))

(declare-fun b!7129604 () Bool)

(declare-fun res!2908971 () Bool)

(declare-fun e!4284482 () Bool)

(assert (=> b!7129604 (=> (not res!2908971) (not e!4284482))))

(declare-fun s2!1620 () List!69144)

(assert (=> b!7129604 (= res!2908971 (matchZipper!3301 z2!471 s2!1620))))

(declare-fun setNonEmpty!51907 () Bool)

(declare-fun setRes!51906 () Bool)

(declare-fun tp!1964578 () Bool)

(declare-fun setElem!51906 () Context!14078)

(assert (=> setNonEmpty!51907 (= setRes!51906 (and tp!1964578 (inv!88140 setElem!51906) e!4284477))))

(declare-fun z1!552 () (InoxSet Context!14078))

(declare-fun setRest!51907 () (InoxSet Context!14078))

(assert (=> setNonEmpty!51907 (= z1!552 ((_ map or) (store ((as const (Array Context!14078 Bool)) false) setElem!51906 true) setRest!51907))))

(declare-fun setIsEmpty!51906 () Bool)

(assert (=> setIsEmpty!51906 setRes!51906))

(declare-fun b!7129605 () Bool)

(declare-fun res!2908973 () Bool)

(declare-fun e!4284487 () Bool)

(assert (=> b!7129605 (=> (not res!2908973) (not e!4284487))))

(get-info :version)

(assert (=> b!7129605 (= res!2908973 (not ((_ is Nil!69020) s2Rec!140)))))

(declare-fun b!7129606 () Bool)

(declare-fun tp!1964580 () Bool)

(assert (=> b!7129606 (= e!4284481 tp!1964580)))

(declare-fun b!7129607 () Bool)

(declare-fun e!4284484 () Bool)

(declare-fun tp!1964583 () Bool)

(assert (=> b!7129607 (= e!4284484 (and tp_is_empty!45691 tp!1964583))))

(declare-fun b!7129608 () Bool)

(assert (=> b!7129608 (= e!4284483 (= s1!1688 s1Rec!140))))

(declare-fun b!7129609 () Bool)

(declare-fun e!4284478 () Bool)

(declare-fun tp!1964577 () Bool)

(assert (=> b!7129609 (= e!4284478 (and tp_is_empty!45691 tp!1964577))))

(declare-fun b!7129610 () Bool)

(declare-fun res!2908979 () Bool)

(assert (=> b!7129610 (=> (not res!2908979) (not e!4284487))))

(assert (=> b!7129610 (= res!2908979 e!4284485)))

(declare-fun res!2908970 () Bool)

(assert (=> b!7129610 (=> res!2908970 e!4284485)))

(assert (=> b!7129610 (= res!2908970 (not (matchZipper!3301 z1!552 s1Rec!140)))))

(declare-fun b!7129611 () Bool)

(declare-fun e!4284476 () Bool)

(declare-fun tp!1964581 () Bool)

(assert (=> b!7129611 (= e!4284476 (and tp_is_empty!45691 tp!1964581))))

(declare-fun setIsEmpty!51907 () Bool)

(assert (=> setIsEmpty!51907 setRes!51907))

(declare-fun res!2908974 () Bool)

(assert (=> start!694564 (=> (not res!2908974) (not e!4284482))))

(assert (=> start!694564 (= res!2908974 (matchZipper!3301 z1!552 s1!1688))))

(assert (=> start!694564 e!4284482))

(assert (=> start!694564 e!4284476))

(declare-fun condSetEmpty!51906 () Bool)

(assert (=> start!694564 (= condSetEmpty!51906 (= z1!552 ((as const (Array Context!14078 Bool)) false)))))

(assert (=> start!694564 setRes!51906))

(assert (=> start!694564 e!4284484))

(declare-fun condSetEmpty!51907 () Bool)

(assert (=> start!694564 (= condSetEmpty!51907 (= z2!471 ((as const (Array Context!14078 Bool)) false)))))

(assert (=> start!694564 setRes!51907))

(declare-fun e!4284479 () Bool)

(assert (=> start!694564 e!4284479))

(assert (=> start!694564 e!4284486))

(assert (=> start!694564 e!4284478))

(declare-fun b!7129601 () Bool)

(assert (=> b!7129601 (= e!4284487 (not e!4284483))))

(declare-fun res!2908977 () Bool)

(assert (=> b!7129601 (=> res!2908977 e!4284483)))

(assert (=> b!7129601 (= res!2908977 (not (= s1Rec!140 s1!1688)))))

(declare-fun lt!2563888 () List!69144)

(assert (=> b!7129601 (isPrefix!5914 s1Rec!140 lt!2563888)))

(declare-datatypes ((Unit!162919 0))(
  ( (Unit!162920) )
))
(declare-fun lt!2563890 () Unit!162919)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3627 (List!69144 List!69144) Unit!162919)

(assert (=> b!7129601 (= lt!2563890 (lemmaConcatTwoListThenFirstIsPrefix!3627 s1Rec!140 s2Rec!140))))

(declare-fun lt!2563887 () List!69144)

(assert (=> b!7129601 (isPrefix!5914 s1!1688 lt!2563887)))

(declare-fun lt!2563889 () Unit!162919)

(assert (=> b!7129601 (= lt!2563889 (lemmaConcatTwoListThenFirstIsPrefix!3627 s1!1688 s2!1620))))

(declare-fun b!7129612 () Bool)

(declare-fun e!4284480 () Bool)

(assert (=> b!7129612 (= e!4284480 e!4284487)))

(declare-fun res!2908975 () Bool)

(assert (=> b!7129612 (=> (not res!2908975) (not e!4284487))))

(assert (=> b!7129612 (= res!2908975 (= lt!2563888 s!7390))))

(declare-fun ++!16183 (List!69144 List!69144) List!69144)

(assert (=> b!7129612 (= lt!2563888 (++!16183 s1Rec!140 s2Rec!140))))

(declare-fun b!7129613 () Bool)

(assert (=> b!7129613 (= e!4284482 e!4284480)))

(declare-fun res!2908978 () Bool)

(assert (=> b!7129613 (=> (not res!2908978) (not e!4284480))))

(assert (=> b!7129613 (= res!2908978 (= lt!2563887 s!7390))))

(assert (=> b!7129613 (= lt!2563887 (++!16183 s1!1688 s2!1620))))

(declare-fun b!7129614 () Bool)

(declare-fun res!2908976 () Bool)

(assert (=> b!7129614 (=> (not res!2908976) (not e!4284480))))

(assert (=> b!7129614 (= res!2908976 (isPrefix!5914 s1Rec!140 s1!1688))))

(declare-fun b!7129615 () Bool)

(declare-fun tp!1964585 () Bool)

(assert (=> b!7129615 (= e!4284479 (and tp_is_empty!45691 tp!1964585))))

(assert (= (and start!694564 res!2908974) b!7129604))

(assert (= (and b!7129604 res!2908971) b!7129613))

(assert (= (and b!7129613 res!2908978) b!7129614))

(assert (= (and b!7129614 res!2908976) b!7129612))

(assert (= (and b!7129612 res!2908975) b!7129610))

(assert (= (and b!7129610 (not res!2908970)) b!7129600))

(assert (= (and b!7129610 res!2908979) b!7129605))

(assert (= (and b!7129605 res!2908973) b!7129601))

(assert (= (and b!7129601 (not res!2908977)) b!7129598))

(assert (= (and b!7129598 (not res!2908972)) b!7129603))

(assert (= (and b!7129603 (not res!2908969)) b!7129608))

(assert (= (and start!694564 ((_ is Cons!69020) s1Rec!140)) b!7129611))

(assert (= (and start!694564 condSetEmpty!51906) setIsEmpty!51906))

(assert (= (and start!694564 (not condSetEmpty!51906)) setNonEmpty!51907))

(assert (= setNonEmpty!51907 b!7129599))

(assert (= (and start!694564 ((_ is Cons!69020) s2Rec!140)) b!7129607))

(assert (= (and start!694564 condSetEmpty!51907) setIsEmpty!51907))

(assert (= (and start!694564 (not condSetEmpty!51907)) setNonEmpty!51906))

(assert (= setNonEmpty!51906 b!7129606))

(assert (= (and start!694564 ((_ is Cons!69020) s2!1620)) b!7129615))

(assert (= (and start!694564 ((_ is Cons!69020) s1!1688)) b!7129602))

(assert (= (and start!694564 ((_ is Cons!69020) s!7390)) b!7129609))

(declare-fun m!7846702 () Bool)

(assert (=> b!7129600 m!7846702))

(declare-fun m!7846704 () Bool)

(assert (=> start!694564 m!7846704))

(declare-fun m!7846706 () Bool)

(assert (=> b!7129613 m!7846706))

(declare-fun m!7846708 () Bool)

(assert (=> setNonEmpty!51907 m!7846708))

(declare-fun m!7846710 () Bool)

(assert (=> b!7129614 m!7846710))

(declare-fun m!7846712 () Bool)

(assert (=> b!7129612 m!7846712))

(declare-fun m!7846714 () Bool)

(assert (=> b!7129603 m!7846714))

(declare-fun m!7846716 () Bool)

(assert (=> setNonEmpty!51906 m!7846716))

(declare-fun m!7846718 () Bool)

(assert (=> b!7129610 m!7846718))

(declare-fun m!7846720 () Bool)

(assert (=> b!7129601 m!7846720))

(declare-fun m!7846722 () Bool)

(assert (=> b!7129601 m!7846722))

(declare-fun m!7846724 () Bool)

(assert (=> b!7129601 m!7846724))

(declare-fun m!7846726 () Bool)

(assert (=> b!7129601 m!7846726))

(declare-fun m!7846728 () Bool)

(assert (=> b!7129598 m!7846728))

(declare-fun m!7846730 () Bool)

(assert (=> b!7129604 m!7846730))

(check-sat (not setNonEmpty!51906) (not b!7129601) (not b!7129609) (not b!7129603) (not b!7129614) (not b!7129604) (not b!7129610) (not b!7129615) (not b!7129602) (not b!7129611) (not b!7129599) (not b!7129606) (not b!7129607) (not b!7129598) (not b!7129613) (not setNonEmpty!51907) (not b!7129612) (not start!694564) (not b!7129600) tp_is_empty!45691)
(check-sat)
