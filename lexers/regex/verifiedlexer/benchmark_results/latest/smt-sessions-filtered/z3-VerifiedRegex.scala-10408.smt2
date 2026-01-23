; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538576 () Bool)

(assert start!538576)

(declare-fun setIsEmpty!29469 () Bool)

(declare-fun setRes!29469 () Bool)

(assert (=> setIsEmpty!29469 setRes!29469))

(declare-fun b!5107748 () Bool)

(declare-fun e!3185685 () Bool)

(declare-fun tp!1424862 () Bool)

(assert (=> b!5107748 (= e!3185685 tp!1424862)))

(declare-fun b!5107749 () Bool)

(declare-fun res!2174093 () Bool)

(declare-fun e!3185689 () Bool)

(assert (=> b!5107749 (=> (not res!2174093) (not e!3185689))))

(declare-datatypes ((C!28480 0))(
  ( (C!28481 (val!23892 Int)) )
))
(declare-datatypes ((List!59084 0))(
  ( (Nil!58960) (Cons!58960 (h!65408 C!28480) (t!372085 List!59084)) )
))
(declare-fun knownP!20 () List!59084)

(declare-fun input!5745 () List!59084)

(declare-fun isPrefix!5512 (List!59084 List!59084) Bool)

(assert (=> b!5107749 (= res!2174093 (isPrefix!5512 knownP!20 input!5745))))

(declare-fun b!5107750 () Bool)

(declare-fun e!3185688 () Bool)

(declare-fun tp_is_empty!37487 () Bool)

(declare-fun tp!1424859 () Bool)

(assert (=> b!5107750 (= e!3185688 (and tp_is_empty!37487 tp!1424859))))

(declare-fun b!5107751 () Bool)

(declare-fun res!2174092 () Bool)

(assert (=> b!5107751 (=> (not res!2174092) (not e!3185689))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14107 0))(
  ( (ElementMatch!14107 (c!877415 C!28480)) (Concat!22952 (regOne!28726 Regex!14107) (regTwo!28726 Regex!14107)) (EmptyExpr!14107) (Star!14107 (reg!14436 Regex!14107)) (EmptyLang!14107) (Union!14107 (regOne!28727 Regex!14107) (regTwo!28727 Regex!14107)) )
))
(declare-datatypes ((List!59085 0))(
  ( (Nil!58961) (Cons!58961 (h!65409 Regex!14107) (t!372086 List!59085)) )
))
(declare-datatypes ((Context!6982 0))(
  ( (Context!6983 (exprs!3991 List!59085)) )
))
(declare-fun baseZ!46 () (InoxSet Context!6982))

(declare-fun matchZipper!775 ((InoxSet Context!6982) List!59084) Bool)

(assert (=> b!5107751 (= res!2174092 (matchZipper!775 baseZ!46 knownP!20))))

(declare-fun b!5107752 () Bool)

(declare-fun e!3185691 () Bool)

(assert (=> b!5107752 (= e!3185689 (not e!3185691))))

(declare-fun res!2174090 () Bool)

(assert (=> b!5107752 (=> res!2174090 e!3185691)))

(declare-fun z!4463 () (InoxSet Context!6982))

(declare-fun testedP!265 () List!59084)

(declare-fun getSuffix!3186 (List!59084 List!59084) List!59084)

(assert (=> b!5107752 (= res!2174090 (not (matchZipper!775 z!4463 (getSuffix!3186 knownP!20 testedP!265))))))

(assert (=> b!5107752 (isPrefix!5512 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150027 0))(
  ( (Unit!150028) )
))
(declare-fun lt!2102875 () Unit!150027)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!649 (List!59084 List!59084 List!59084) Unit!150027)

(assert (=> b!5107752 (= lt!2102875 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!649 knownP!20 testedP!265 input!5745))))

(declare-fun res!2174096 () Bool)

(assert (=> start!538576 (=> (not res!2174096) (not e!3185689))))

(assert (=> start!538576 (= res!2174096 (isPrefix!5512 testedP!265 input!5745))))

(assert (=> start!538576 e!3185689))

(declare-fun e!3185684 () Bool)

(assert (=> start!538576 e!3185684))

(declare-fun condSetEmpty!29470 () Bool)

(assert (=> start!538576 (= condSetEmpty!29470 (= z!4463 ((as const (Array Context!6982 Bool)) false)))))

(declare-fun setRes!29470 () Bool)

(assert (=> start!538576 setRes!29470))

(assert (=> start!538576 e!3185688))

(declare-fun condSetEmpty!29469 () Bool)

(assert (=> start!538576 (= condSetEmpty!29469 (= baseZ!46 ((as const (Array Context!6982 Bool)) false)))))

(assert (=> start!538576 setRes!29469))

(declare-fun e!3185686 () Bool)

(assert (=> start!538576 e!3185686))

(declare-fun b!5107753 () Bool)

(declare-fun res!2174094 () Bool)

(declare-fun e!3185687 () Bool)

(assert (=> b!5107753 (=> res!2174094 e!3185687)))

(declare-fun lostCauseZipper!993 ((InoxSet Context!6982)) Bool)

(assert (=> b!5107753 (= res!2174094 (not (lostCauseZipper!993 z!4463)))))

(declare-fun b!5107754 () Bool)

(declare-fun e!3185690 () Bool)

(declare-fun tp!1424857 () Bool)

(assert (=> b!5107754 (= e!3185690 tp!1424857)))

(declare-fun b!5107755 () Bool)

(declare-fun tp!1424860 () Bool)

(assert (=> b!5107755 (= e!3185684 (and tp_is_empty!37487 tp!1424860))))

(declare-fun setNonEmpty!29469 () Bool)

(declare-fun tp!1424858 () Bool)

(declare-fun setElem!29469 () Context!6982)

(declare-fun inv!78448 (Context!6982) Bool)

(assert (=> setNonEmpty!29469 (= setRes!29470 (and tp!1424858 (inv!78448 setElem!29469) e!3185690))))

(declare-fun setRest!29470 () (InoxSet Context!6982))

(assert (=> setNonEmpty!29469 (= z!4463 ((_ map or) (store ((as const (Array Context!6982 Bool)) false) setElem!29469 true) setRest!29470))))

(declare-fun tp!1424861 () Bool)

(declare-fun setNonEmpty!29470 () Bool)

(declare-fun setElem!29470 () Context!6982)

(assert (=> setNonEmpty!29470 (= setRes!29469 (and tp!1424861 (inv!78448 setElem!29470) e!3185685))))

(declare-fun setRest!29469 () (InoxSet Context!6982))

(assert (=> setNonEmpty!29470 (= baseZ!46 ((_ map or) (store ((as const (Array Context!6982 Bool)) false) setElem!29470 true) setRest!29469))))

(declare-fun b!5107756 () Bool)

(assert (=> b!5107756 (= e!3185691 e!3185687)))

(declare-fun res!2174091 () Bool)

(assert (=> b!5107756 (=> res!2174091 e!3185687)))

(declare-fun lt!2102876 () (InoxSet Context!6982))

(assert (=> b!5107756 (= res!2174091 (not (= lt!2102876 z!4463)))))

(declare-fun derivationZipper!6 ((InoxSet Context!6982) List!59084) (InoxSet Context!6982))

(assert (=> b!5107756 (= lt!2102876 (derivationZipper!6 baseZ!46 testedP!265))))

(declare-fun b!5107757 () Bool)

(declare-fun tp!1424863 () Bool)

(assert (=> b!5107757 (= e!3185686 (and tp_is_empty!37487 tp!1424863))))

(declare-fun b!5107758 () Bool)

(declare-fun res!2174095 () Bool)

(assert (=> b!5107758 (=> (not res!2174095) (not e!3185689))))

(declare-fun size!39413 (List!59084) Int)

(assert (=> b!5107758 (= res!2174095 (>= (size!39413 knownP!20) (size!39413 testedP!265)))))

(declare-fun setIsEmpty!29470 () Bool)

(assert (=> setIsEmpty!29470 setRes!29470))

(declare-fun b!5107759 () Bool)

(assert (=> b!5107759 (= e!3185687 true)))

(assert (=> b!5107759 (= (matchZipper!775 baseZ!46 testedP!265) (matchZipper!775 lt!2102876 Nil!58960))))

(declare-fun lt!2102874 () Unit!150027)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!2 ((InoxSet Context!6982) List!59084) Unit!150027)

(assert (=> b!5107759 (= lt!2102874 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!2 baseZ!46 testedP!265))))

(assert (= (and start!538576 res!2174096) b!5107749))

(assert (= (and b!5107749 res!2174093) b!5107758))

(assert (= (and b!5107758 res!2174095) b!5107751))

(assert (= (and b!5107751 res!2174092) b!5107752))

(assert (= (and b!5107752 (not res!2174090)) b!5107756))

(assert (= (and b!5107756 (not res!2174091)) b!5107753))

(assert (= (and b!5107753 (not res!2174094)) b!5107759))

(get-info :version)

(assert (= (and start!538576 ((_ is Cons!58960) input!5745)) b!5107755))

(assert (= (and start!538576 condSetEmpty!29470) setIsEmpty!29470))

(assert (= (and start!538576 (not condSetEmpty!29470)) setNonEmpty!29469))

(assert (= setNonEmpty!29469 b!5107754))

(assert (= (and start!538576 ((_ is Cons!58960) testedP!265)) b!5107750))

(assert (= (and start!538576 condSetEmpty!29469) setIsEmpty!29469))

(assert (= (and start!538576 (not condSetEmpty!29469)) setNonEmpty!29470))

(assert (= setNonEmpty!29470 b!5107748))

(assert (= (and start!538576 ((_ is Cons!58960) knownP!20)) b!5107757))

(declare-fun m!6164890 () Bool)

(assert (=> b!5107759 m!6164890))

(declare-fun m!6164892 () Bool)

(assert (=> b!5107759 m!6164892))

(declare-fun m!6164894 () Bool)

(assert (=> b!5107759 m!6164894))

(declare-fun m!6164896 () Bool)

(assert (=> b!5107752 m!6164896))

(assert (=> b!5107752 m!6164896))

(declare-fun m!6164898 () Bool)

(assert (=> b!5107752 m!6164898))

(declare-fun m!6164900 () Bool)

(assert (=> b!5107752 m!6164900))

(declare-fun m!6164902 () Bool)

(assert (=> b!5107752 m!6164902))

(declare-fun m!6164904 () Bool)

(assert (=> b!5107756 m!6164904))

(declare-fun m!6164906 () Bool)

(assert (=> b!5107753 m!6164906))

(declare-fun m!6164908 () Bool)

(assert (=> setNonEmpty!29469 m!6164908))

(declare-fun m!6164910 () Bool)

(assert (=> b!5107758 m!6164910))

(declare-fun m!6164912 () Bool)

(assert (=> b!5107758 m!6164912))

(declare-fun m!6164914 () Bool)

(assert (=> start!538576 m!6164914))

(declare-fun m!6164916 () Bool)

(assert (=> b!5107749 m!6164916))

(declare-fun m!6164918 () Bool)

(assert (=> b!5107751 m!6164918))

(declare-fun m!6164920 () Bool)

(assert (=> setNonEmpty!29470 m!6164920))

(check-sat (not b!5107752) (not b!5107757) (not setNonEmpty!29469) (not b!5107756) (not b!5107748) (not b!5107753) (not start!538576) (not b!5107755) (not b!5107750) (not b!5107758) (not b!5107751) tp_is_empty!37487 (not b!5107754) (not setNonEmpty!29470) (not b!5107759) (not b!5107749))
(check-sat)
