; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694560 () Bool)

(assert start!694560)

(declare-fun res!2908905 () Bool)

(declare-fun e!4284406 () Bool)

(assert (=> start!694560 (=> (not res!2908905) (not e!4284406))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36356 0))(
  ( (C!36357 (val!28104 Int)) )
))
(declare-datatypes ((Regex!18043 0))(
  ( (ElementMatch!18043 (c!1329953 C!36356)) (Concat!26888 (regOne!36598 Regex!18043) (regTwo!36598 Regex!18043)) (EmptyExpr!18043) (Star!18043 (reg!18372 Regex!18043)) (EmptyLang!18043) (Union!18043 (regOne!36599 Regex!18043) (regTwo!36599 Regex!18043)) )
))
(declare-datatypes ((List!69140 0))(
  ( (Nil!69016) (Cons!69016 (h!75464 Regex!18043) (t!383117 List!69140)) )
))
(declare-datatypes ((Context!14074 0))(
  ( (Context!14075 (exprs!7537 List!69140)) )
))
(declare-fun z1!552 () (InoxSet Context!14074))

(declare-datatypes ((List!69141 0))(
  ( (Nil!69017) (Cons!69017 (h!75465 C!36356) (t!383118 List!69141)) )
))
(declare-fun s1!1688 () List!69141)

(declare-fun matchZipper!3299 ((InoxSet Context!14074) List!69141) Bool)

(assert (=> start!694560 (= res!2908905 (matchZipper!3299 z1!552 s1!1688))))

(assert (=> start!694560 e!4284406))

(declare-fun e!4284407 () Bool)

(assert (=> start!694560 e!4284407))

(declare-fun condSetEmpty!51895 () Bool)

(assert (=> start!694560 (= condSetEmpty!51895 (= z1!552 ((as const (Array Context!14074 Bool)) false)))))

(declare-fun setRes!51894 () Bool)

(assert (=> start!694560 setRes!51894))

(declare-fun e!4284409 () Bool)

(assert (=> start!694560 e!4284409))

(declare-fun condSetEmpty!51894 () Bool)

(declare-fun z2!471 () (InoxSet Context!14074))

(assert (=> start!694560 (= condSetEmpty!51894 (= z2!471 ((as const (Array Context!14074 Bool)) false)))))

(declare-fun setRes!51895 () Bool)

(assert (=> start!694560 setRes!51895))

(declare-fun e!4284408 () Bool)

(assert (=> start!694560 e!4284408))

(declare-fun e!4284415 () Bool)

(assert (=> start!694560 e!4284415))

(declare-fun e!4284411 () Bool)

(assert (=> start!694560 e!4284411))

(declare-fun b!7129491 () Bool)

(declare-fun res!2908909 () Bool)

(declare-fun e!4284404 () Bool)

(assert (=> b!7129491 (=> (not res!2908909) (not e!4284404))))

(declare-fun s1Rec!140 () List!69141)

(declare-fun isPrefix!5912 (List!69141 List!69141) Bool)

(assert (=> b!7129491 (= res!2908909 (isPrefix!5912 s1Rec!140 s1!1688))))

(declare-fun b!7129492 () Bool)

(declare-fun e!4284412 () Bool)

(declare-fun tp!1964528 () Bool)

(assert (=> b!7129492 (= e!4284412 tp!1964528)))

(declare-fun setIsEmpty!51894 () Bool)

(assert (=> setIsEmpty!51894 setRes!51894))

(declare-fun b!7129493 () Bool)

(declare-fun e!4284405 () Bool)

(declare-fun e!4284413 () Bool)

(assert (=> b!7129493 (= e!4284405 (not e!4284413))))

(declare-fun res!2908913 () Bool)

(assert (=> b!7129493 (=> res!2908913 e!4284413)))

(assert (=> b!7129493 (= res!2908913 (not (= s1Rec!140 s1!1688)))))

(declare-fun lt!2563866 () List!69141)

(assert (=> b!7129493 (isPrefix!5912 s1Rec!140 lt!2563866)))

(declare-datatypes ((Unit!162915 0))(
  ( (Unit!162916) )
))
(declare-fun lt!2563863 () Unit!162915)

(declare-fun s2Rec!140 () List!69141)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3625 (List!69141 List!69141) Unit!162915)

(assert (=> b!7129493 (= lt!2563863 (lemmaConcatTwoListThenFirstIsPrefix!3625 s1Rec!140 s2Rec!140))))

(declare-fun lt!2563864 () List!69141)

(assert (=> b!7129493 (isPrefix!5912 s1!1688 lt!2563864)))

(declare-fun lt!2563865 () Unit!162915)

(declare-fun s2!1620 () List!69141)

(assert (=> b!7129493 (= lt!2563865 (lemmaConcatTwoListThenFirstIsPrefix!3625 s1!1688 s2!1620))))

(declare-fun b!7129494 () Bool)

(assert (=> b!7129494 (= e!4284406 e!4284404)))

(declare-fun res!2908911 () Bool)

(assert (=> b!7129494 (=> (not res!2908911) (not e!4284404))))

(declare-fun s!7390 () List!69141)

(assert (=> b!7129494 (= res!2908911 (= lt!2563864 s!7390))))

(declare-fun ++!16181 (List!69141 List!69141) List!69141)

(assert (=> b!7129494 (= lt!2563864 (++!16181 s1!1688 s2!1620))))

(declare-fun b!7129495 () Bool)

(declare-fun res!2908906 () Bool)

(assert (=> b!7129495 (=> (not res!2908906) (not e!4284406))))

(assert (=> b!7129495 (= res!2908906 (matchZipper!3299 z2!471 s2!1620))))

(declare-fun b!7129496 () Bool)

(assert (=> b!7129496 (= e!4284413 (isPrefix!5912 s1Rec!140 s!7390))))

(declare-fun b!7129497 () Bool)

(assert (=> b!7129497 (= e!4284404 e!4284405)))

(declare-fun res!2908907 () Bool)

(assert (=> b!7129497 (=> (not res!2908907) (not e!4284405))))

(assert (=> b!7129497 (= res!2908907 (= lt!2563866 s!7390))))

(assert (=> b!7129497 (= lt!2563866 (++!16181 s1Rec!140 s2Rec!140))))

(declare-fun b!7129498 () Bool)

(declare-fun e!4284410 () Bool)

(assert (=> b!7129498 (= e!4284410 (not (matchZipper!3299 z2!471 s2Rec!140)))))

(declare-fun b!7129499 () Bool)

(declare-fun res!2908908 () Bool)

(assert (=> b!7129499 (=> res!2908908 e!4284413)))

(assert (=> b!7129499 (= res!2908908 (not (isPrefix!5912 s1!1688 s!7390)))))

(declare-fun b!7129500 () Bool)

(declare-fun tp_is_empty!45687 () Bool)

(declare-fun tp!1964525 () Bool)

(assert (=> b!7129500 (= e!4284415 (and tp_is_empty!45687 tp!1964525))))

(declare-fun b!7129501 () Bool)

(declare-fun res!2908912 () Bool)

(assert (=> b!7129501 (=> (not res!2908912) (not e!4284405))))

(assert (=> b!7129501 (= res!2908912 e!4284410)))

(declare-fun res!2908910 () Bool)

(assert (=> b!7129501 (=> res!2908910 e!4284410)))

(assert (=> b!7129501 (= res!2908910 (not (matchZipper!3299 z1!552 s1Rec!140)))))

(declare-fun b!7129502 () Bool)

(declare-fun tp!1964531 () Bool)

(assert (=> b!7129502 (= e!4284407 (and tp_is_empty!45687 tp!1964531))))

(declare-fun b!7129503 () Bool)

(declare-fun e!4284414 () Bool)

(declare-fun tp!1964527 () Bool)

(assert (=> b!7129503 (= e!4284414 tp!1964527)))

(declare-fun setIsEmpty!51895 () Bool)

(assert (=> setIsEmpty!51895 setRes!51895))

(declare-fun b!7129504 () Bool)

(declare-fun res!2908904 () Bool)

(assert (=> b!7129504 (=> (not res!2908904) (not e!4284405))))

(get-info :version)

(assert (=> b!7129504 (= res!2908904 (not ((_ is Nil!69017) s2Rec!140)))))

(declare-fun setElem!51894 () Context!14074)

(declare-fun setNonEmpty!51894 () Bool)

(declare-fun tp!1964529 () Bool)

(declare-fun inv!88135 (Context!14074) Bool)

(assert (=> setNonEmpty!51894 (= setRes!51895 (and tp!1964529 (inv!88135 setElem!51894) e!4284414))))

(declare-fun setRest!51895 () (InoxSet Context!14074))

(assert (=> setNonEmpty!51894 (= z2!471 ((_ map or) (store ((as const (Array Context!14074 Bool)) false) setElem!51894 true) setRest!51895))))

(declare-fun b!7129505 () Bool)

(declare-fun tp!1964530 () Bool)

(assert (=> b!7129505 (= e!4284409 (and tp_is_empty!45687 tp!1964530))))

(declare-fun b!7129506 () Bool)

(declare-fun tp!1964524 () Bool)

(assert (=> b!7129506 (= e!4284411 (and tp_is_empty!45687 tp!1964524))))

(declare-fun setElem!51895 () Context!14074)

(declare-fun tp!1964523 () Bool)

(declare-fun setNonEmpty!51895 () Bool)

(assert (=> setNonEmpty!51895 (= setRes!51894 (and tp!1964523 (inv!88135 setElem!51895) e!4284412))))

(declare-fun setRest!51894 () (InoxSet Context!14074))

(assert (=> setNonEmpty!51895 (= z1!552 ((_ map or) (store ((as const (Array Context!14074 Bool)) false) setElem!51895 true) setRest!51894))))

(declare-fun b!7129507 () Bool)

(declare-fun tp!1964526 () Bool)

(assert (=> b!7129507 (= e!4284408 (and tp_is_empty!45687 tp!1964526))))

(assert (= (and start!694560 res!2908905) b!7129495))

(assert (= (and b!7129495 res!2908906) b!7129494))

(assert (= (and b!7129494 res!2908911) b!7129491))

(assert (= (and b!7129491 res!2908909) b!7129497))

(assert (= (and b!7129497 res!2908907) b!7129501))

(assert (= (and b!7129501 (not res!2908910)) b!7129498))

(assert (= (and b!7129501 res!2908912) b!7129504))

(assert (= (and b!7129504 res!2908904) b!7129493))

(assert (= (and b!7129493 (not res!2908913)) b!7129499))

(assert (= (and b!7129499 (not res!2908908)) b!7129496))

(assert (= (and start!694560 ((_ is Cons!69017) s1Rec!140)) b!7129502))

(assert (= (and start!694560 condSetEmpty!51895) setIsEmpty!51894))

(assert (= (and start!694560 (not condSetEmpty!51895)) setNonEmpty!51895))

(assert (= setNonEmpty!51895 b!7129492))

(assert (= (and start!694560 ((_ is Cons!69017) s2Rec!140)) b!7129505))

(assert (= (and start!694560 condSetEmpty!51894) setIsEmpty!51895))

(assert (= (and start!694560 (not condSetEmpty!51894)) setNonEmpty!51894))

(assert (= setNonEmpty!51894 b!7129503))

(assert (= (and start!694560 ((_ is Cons!69017) s2!1620)) b!7129507))

(assert (= (and start!694560 ((_ is Cons!69017) s1!1688)) b!7129500))

(assert (= (and start!694560 ((_ is Cons!69017) s!7390)) b!7129506))

(declare-fun m!7846642 () Bool)

(assert (=> start!694560 m!7846642))

(declare-fun m!7846644 () Bool)

(assert (=> b!7129495 m!7846644))

(declare-fun m!7846646 () Bool)

(assert (=> b!7129501 m!7846646))

(declare-fun m!7846648 () Bool)

(assert (=> b!7129493 m!7846648))

(declare-fun m!7846650 () Bool)

(assert (=> b!7129493 m!7846650))

(declare-fun m!7846652 () Bool)

(assert (=> b!7129493 m!7846652))

(declare-fun m!7846654 () Bool)

(assert (=> b!7129493 m!7846654))

(declare-fun m!7846656 () Bool)

(assert (=> b!7129494 m!7846656))

(declare-fun m!7846658 () Bool)

(assert (=> b!7129499 m!7846658))

(declare-fun m!7846660 () Bool)

(assert (=> b!7129498 m!7846660))

(declare-fun m!7846662 () Bool)

(assert (=> b!7129496 m!7846662))

(declare-fun m!7846664 () Bool)

(assert (=> b!7129497 m!7846664))

(declare-fun m!7846666 () Bool)

(assert (=> setNonEmpty!51894 m!7846666))

(declare-fun m!7846668 () Bool)

(assert (=> b!7129491 m!7846668))

(declare-fun m!7846670 () Bool)

(assert (=> setNonEmpty!51895 m!7846670))

(check-sat (not b!7129501) (not b!7129502) (not b!7129505) tp_is_empty!45687 (not b!7129494) (not b!7129499) (not setNonEmpty!51894) (not b!7129491) (not b!7129498) (not b!7129506) (not setNonEmpty!51895) (not b!7129493) (not b!7129500) (not b!7129492) (not b!7129503) (not b!7129496) (not b!7129497) (not b!7129507) (not start!694560) (not b!7129495))
(check-sat)
