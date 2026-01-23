; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694232 () Bool)

(assert start!694232)

(declare-fun b!7125899 () Bool)

(declare-fun e!4282284 () Bool)

(assert (=> b!7125899 (= e!4282284 true)))

(declare-fun lt!2563286 () Int)

(declare-datatypes ((C!36304 0))(
  ( (C!36305 (val!28078 Int)) )
))
(declare-datatypes ((List!69085 0))(
  ( (Nil!68961) (Cons!68961 (h!75409 C!36304) (t!383062 List!69085)) )
))
(declare-fun lt!2563292 () List!69085)

(declare-fun size!41454 (List!69085) Int)

(assert (=> b!7125899 (= lt!2563286 (size!41454 lt!2563292))))

(declare-fun b!7125900 () Bool)

(declare-fun e!4282278 () Bool)

(assert (=> b!7125900 (= e!4282278 (not e!4282284))))

(declare-fun res!2907670 () Bool)

(assert (=> b!7125900 (=> res!2907670 e!4282284)))

(declare-fun s1!1688 () List!69085)

(declare-fun s!7390 () List!69085)

(declare-fun isPrefix!5886 (List!69085 List!69085) Bool)

(assert (=> b!7125900 (= res!2907670 (not (isPrefix!5886 s1!1688 s!7390)))))

(declare-datatypes ((Unit!162875 0))(
  ( (Unit!162876) )
))
(declare-fun lt!2563294 () Unit!162875)

(declare-fun e!4282280 () Unit!162875)

(assert (=> b!7125900 (= lt!2563294 e!4282280)))

(declare-fun c!1329382 () Bool)

(declare-fun s1Rec!140 () List!69085)

(assert (=> b!7125900 (= c!1329382 (= (size!41454 s1Rec!140) (size!41454 s1!1688)))))

(declare-fun lt!2563295 () List!69085)

(assert (=> b!7125900 (isPrefix!5886 lt!2563292 lt!2563295)))

(declare-fun lt!2563284 () Unit!162875)

(declare-fun s2Rec!140 () List!69085)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3617 (List!69085 List!69085) Unit!162875)

(assert (=> b!7125900 (= lt!2563284 (lemmaConcatTwoListThenFirstIsPrefix!3617 lt!2563292 (t!383062 s2Rec!140)))))

(assert (=> b!7125900 (= lt!2563295 s!7390)))

(declare-fun ++!16155 (List!69085 List!69085) List!69085)

(assert (=> b!7125900 (= lt!2563295 (++!16155 lt!2563292 (t!383062 s2Rec!140)))))

(assert (=> b!7125900 (= lt!2563292 (++!16155 s1Rec!140 (Cons!68961 (h!75409 s2Rec!140) Nil!68961)))))

(declare-fun lt!2563288 () Unit!162875)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3003 (List!69085 C!36304 List!69085 List!69085) Unit!162875)

(assert (=> b!7125900 (= lt!2563288 (lemmaMoveElementToOtherListKeepsConcatEq!3003 s1Rec!140 (h!75409 s2Rec!140) (t!383062 s2Rec!140) s!7390))))

(declare-fun lt!2563290 () Unit!162875)

(declare-fun e!4282287 () Unit!162875)

(assert (=> b!7125900 (= lt!2563290 e!4282287)))

(declare-fun c!1329381 () Bool)

(assert (=> b!7125900 (= c!1329381 (= s1Rec!140 s1!1688))))

(declare-fun lt!2563296 () List!69085)

(assert (=> b!7125900 (isPrefix!5886 s1Rec!140 lt!2563296)))

(declare-fun lt!2563289 () Unit!162875)

(assert (=> b!7125900 (= lt!2563289 (lemmaConcatTwoListThenFirstIsPrefix!3617 s1Rec!140 s2Rec!140))))

(declare-fun lt!2563287 () List!69085)

(assert (=> b!7125900 (isPrefix!5886 s1!1688 lt!2563287)))

(declare-fun lt!2563291 () Unit!162875)

(declare-fun s2!1620 () List!69085)

(assert (=> b!7125900 (= lt!2563291 (lemmaConcatTwoListThenFirstIsPrefix!3617 s1!1688 s2!1620))))

(declare-fun b!7125901 () Bool)

(declare-fun Unit!162877 () Unit!162875)

(assert (=> b!7125901 (= e!4282280 Unit!162877)))

(declare-fun lt!2563293 () Unit!162875)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1441 (List!69085 List!69085 List!69085) Unit!162875)

(assert (=> b!7125901 (= lt!2563293 (lemmaIsPrefixSameLengthThenSameList!1441 s1!1688 s1Rec!140 s!7390))))

(assert (=> b!7125901 false))

(declare-fun b!7125902 () Bool)

(declare-fun e!4282283 () Bool)

(declare-fun tp_is_empty!45635 () Bool)

(declare-fun tp!1962892 () Bool)

(assert (=> b!7125902 (= e!4282283 (and tp_is_empty!45635 tp!1962892))))

(declare-datatypes ((Regex!18017 0))(
  ( (ElementMatch!18017 (c!1329383 C!36304)) (Concat!26862 (regOne!36546 Regex!18017) (regTwo!36546 Regex!18017)) (EmptyExpr!18017) (Star!18017 (reg!18346 Regex!18017)) (EmptyLang!18017) (Union!18017 (regOne!36547 Regex!18017) (regTwo!36547 Regex!18017)) )
))
(declare-datatypes ((List!69086 0))(
  ( (Nil!68962) (Cons!68962 (h!75410 Regex!18017) (t!383063 List!69086)) )
))
(declare-datatypes ((Context!14022 0))(
  ( (Context!14023 (exprs!7511 List!69086)) )
))
(declare-fun setElem!51667 () Context!14022)

(declare-fun setRes!51667 () Bool)

(declare-fun e!4282274 () Bool)

(declare-fun setNonEmpty!51666 () Bool)

(declare-fun tp!1962890 () Bool)

(declare-fun inv!88070 (Context!14022) Bool)

(assert (=> setNonEmpty!51666 (= setRes!51667 (and tp!1962890 (inv!88070 setElem!51667) e!4282274))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!552 () (InoxSet Context!14022))

(declare-fun setRest!51666 () (InoxSet Context!14022))

(assert (=> setNonEmpty!51666 (= z1!552 ((_ map or) (store ((as const (Array Context!14022 Bool)) false) setElem!51667 true) setRest!51666))))

(declare-fun b!7125903 () Bool)

(declare-fun e!4282275 () Bool)

(declare-fun tp!1962885 () Bool)

(assert (=> b!7125903 (= e!4282275 tp!1962885)))

(declare-fun b!7125904 () Bool)

(declare-fun res!2907662 () Bool)

(assert (=> b!7125904 (=> (not res!2907662) (not e!4282278))))

(declare-fun e!4282281 () Bool)

(assert (=> b!7125904 (= res!2907662 e!4282281)))

(declare-fun res!2907664 () Bool)

(assert (=> b!7125904 (=> res!2907664 e!4282281)))

(declare-fun matchZipper!3273 ((InoxSet Context!14022) List!69085) Bool)

(assert (=> b!7125904 (= res!2907664 (not (matchZipper!3273 z1!552 s1Rec!140)))))

(declare-fun b!7125905 () Bool)

(declare-fun res!2907666 () Bool)

(assert (=> b!7125905 (=> (not res!2907666) (not e!4282278))))

(get-info :version)

(assert (=> b!7125905 (= res!2907666 (not ((_ is Nil!68961) s2Rec!140)))))

(declare-fun b!7125906 () Bool)

(declare-fun res!2907669 () Bool)

(declare-fun e!4282279 () Bool)

(assert (=> b!7125906 (=> (not res!2907669) (not e!4282279))))

(declare-fun z2!471 () (InoxSet Context!14022))

(assert (=> b!7125906 (= res!2907669 (matchZipper!3273 z2!471 s2!1620))))

(declare-fun b!7125907 () Bool)

(declare-fun Unit!162878 () Unit!162875)

(assert (=> b!7125907 (= e!4282287 Unit!162878)))

(declare-fun lt!2563285 () Unit!162875)

(declare-fun lemmaSamePrefixThenSameSuffix!2721 (List!69085 List!69085 List!69085 List!69085 List!69085) Unit!162875)

(assert (=> b!7125907 (= lt!2563285 (lemmaSamePrefixThenSameSuffix!2721 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7125907 false))

(declare-fun res!2907668 () Bool)

(assert (=> start!694232 (=> (not res!2907668) (not e!4282279))))

(assert (=> start!694232 (= res!2907668 (matchZipper!3273 z1!552 s1!1688))))

(assert (=> start!694232 e!4282279))

(declare-fun e!4282285 () Bool)

(assert (=> start!694232 e!4282285))

(declare-fun condSetEmpty!51667 () Bool)

(assert (=> start!694232 (= condSetEmpty!51667 (= z1!552 ((as const (Array Context!14022 Bool)) false)))))

(assert (=> start!694232 setRes!51667))

(declare-fun e!4282277 () Bool)

(assert (=> start!694232 e!4282277))

(declare-fun condSetEmpty!51666 () Bool)

(assert (=> start!694232 (= condSetEmpty!51666 (= z2!471 ((as const (Array Context!14022 Bool)) false)))))

(declare-fun setRes!51666 () Bool)

(assert (=> start!694232 setRes!51666))

(declare-fun e!4282286 () Bool)

(assert (=> start!694232 e!4282286))

(declare-fun e!4282276 () Bool)

(assert (=> start!694232 e!4282276))

(assert (=> start!694232 e!4282283))

(declare-fun b!7125908 () Bool)

(declare-fun tp!1962888 () Bool)

(assert (=> b!7125908 (= e!4282286 (and tp_is_empty!45635 tp!1962888))))

(declare-fun b!7125909 () Bool)

(declare-fun tp!1962893 () Bool)

(assert (=> b!7125909 (= e!4282277 (and tp_is_empty!45635 tp!1962893))))

(declare-fun b!7125910 () Bool)

(declare-fun Unit!162879 () Unit!162875)

(assert (=> b!7125910 (= e!4282287 Unit!162879)))

(declare-fun tp!1962891 () Bool)

(declare-fun setNonEmpty!51667 () Bool)

(declare-fun setElem!51666 () Context!14022)

(assert (=> setNonEmpty!51667 (= setRes!51666 (and tp!1962891 (inv!88070 setElem!51666) e!4282275))))

(declare-fun setRest!51667 () (InoxSet Context!14022))

(assert (=> setNonEmpty!51667 (= z2!471 ((_ map or) (store ((as const (Array Context!14022 Bool)) false) setElem!51666 true) setRest!51667))))

(declare-fun b!7125911 () Bool)

(declare-fun e!4282282 () Bool)

(assert (=> b!7125911 (= e!4282279 e!4282282)))

(declare-fun res!2907671 () Bool)

(assert (=> b!7125911 (=> (not res!2907671) (not e!4282282))))

(assert (=> b!7125911 (= res!2907671 (= lt!2563287 s!7390))))

(assert (=> b!7125911 (= lt!2563287 (++!16155 s1!1688 s2!1620))))

(declare-fun setIsEmpty!51666 () Bool)

(assert (=> setIsEmpty!51666 setRes!51666))

(declare-fun b!7125912 () Bool)

(declare-fun tp!1962889 () Bool)

(assert (=> b!7125912 (= e!4282276 (and tp_is_empty!45635 tp!1962889))))

(declare-fun b!7125913 () Bool)

(declare-fun res!2907667 () Bool)

(assert (=> b!7125913 (=> (not res!2907667) (not e!4282282))))

(assert (=> b!7125913 (= res!2907667 (isPrefix!5886 s1Rec!140 s1!1688))))

(declare-fun b!7125914 () Bool)

(declare-fun tp!1962886 () Bool)

(assert (=> b!7125914 (= e!4282285 (and tp_is_empty!45635 tp!1962886))))

(declare-fun b!7125915 () Bool)

(assert (=> b!7125915 (= e!4282281 (not (matchZipper!3273 z2!471 s2Rec!140)))))

(declare-fun setIsEmpty!51667 () Bool)

(assert (=> setIsEmpty!51667 setRes!51667))

(declare-fun b!7125916 () Bool)

(assert (=> b!7125916 (= e!4282282 e!4282278)))

(declare-fun res!2907665 () Bool)

(assert (=> b!7125916 (=> (not res!2907665) (not e!4282278))))

(assert (=> b!7125916 (= res!2907665 (= lt!2563296 s!7390))))

(assert (=> b!7125916 (= lt!2563296 (++!16155 s1Rec!140 s2Rec!140))))

(declare-fun b!7125917 () Bool)

(declare-fun Unit!162880 () Unit!162875)

(assert (=> b!7125917 (= e!4282280 Unit!162880)))

(declare-fun b!7125918 () Bool)

(declare-fun tp!1962887 () Bool)

(assert (=> b!7125918 (= e!4282274 tp!1962887)))

(declare-fun b!7125919 () Bool)

(declare-fun res!2907663 () Bool)

(assert (=> b!7125919 (=> res!2907663 e!4282284)))

(assert (=> b!7125919 (= res!2907663 (not (isPrefix!5886 lt!2563292 s!7390)))))

(assert (= (and start!694232 res!2907668) b!7125906))

(assert (= (and b!7125906 res!2907669) b!7125911))

(assert (= (and b!7125911 res!2907671) b!7125913))

(assert (= (and b!7125913 res!2907667) b!7125916))

(assert (= (and b!7125916 res!2907665) b!7125904))

(assert (= (and b!7125904 (not res!2907664)) b!7125915))

(assert (= (and b!7125904 res!2907662) b!7125905))

(assert (= (and b!7125905 res!2907666) b!7125900))

(assert (= (and b!7125900 c!1329381) b!7125907))

(assert (= (and b!7125900 (not c!1329381)) b!7125910))

(assert (= (and b!7125900 c!1329382) b!7125901))

(assert (= (and b!7125900 (not c!1329382)) b!7125917))

(assert (= (and b!7125900 (not res!2907670)) b!7125919))

(assert (= (and b!7125919 (not res!2907663)) b!7125899))

(assert (= (and start!694232 ((_ is Cons!68961) s1Rec!140)) b!7125914))

(assert (= (and start!694232 condSetEmpty!51667) setIsEmpty!51667))

(assert (= (and start!694232 (not condSetEmpty!51667)) setNonEmpty!51666))

(assert (= setNonEmpty!51666 b!7125918))

(assert (= (and start!694232 ((_ is Cons!68961) s2Rec!140)) b!7125909))

(assert (= (and start!694232 condSetEmpty!51666) setIsEmpty!51666))

(assert (= (and start!694232 (not condSetEmpty!51666)) setNonEmpty!51667))

(assert (= setNonEmpty!51667 b!7125903))

(assert (= (and start!694232 ((_ is Cons!68961) s2!1620)) b!7125908))

(assert (= (and start!694232 ((_ is Cons!68961) s1!1688)) b!7125912))

(assert (= (and start!694232 ((_ is Cons!68961) s!7390)) b!7125902))

(declare-fun m!7842838 () Bool)

(assert (=> b!7125906 m!7842838))

(declare-fun m!7842840 () Bool)

(assert (=> b!7125907 m!7842840))

(declare-fun m!7842842 () Bool)

(assert (=> b!7125919 m!7842842))

(declare-fun m!7842844 () Bool)

(assert (=> setNonEmpty!51666 m!7842844))

(declare-fun m!7842846 () Bool)

(assert (=> b!7125899 m!7842846))

(declare-fun m!7842848 () Bool)

(assert (=> b!7125911 m!7842848))

(declare-fun m!7842850 () Bool)

(assert (=> b!7125915 m!7842850))

(declare-fun m!7842852 () Bool)

(assert (=> b!7125900 m!7842852))

(declare-fun m!7842854 () Bool)

(assert (=> b!7125900 m!7842854))

(declare-fun m!7842856 () Bool)

(assert (=> b!7125900 m!7842856))

(declare-fun m!7842858 () Bool)

(assert (=> b!7125900 m!7842858))

(declare-fun m!7842860 () Bool)

(assert (=> b!7125900 m!7842860))

(declare-fun m!7842862 () Bool)

(assert (=> b!7125900 m!7842862))

(declare-fun m!7842864 () Bool)

(assert (=> b!7125900 m!7842864))

(declare-fun m!7842866 () Bool)

(assert (=> b!7125900 m!7842866))

(declare-fun m!7842868 () Bool)

(assert (=> b!7125900 m!7842868))

(declare-fun m!7842870 () Bool)

(assert (=> b!7125900 m!7842870))

(declare-fun m!7842872 () Bool)

(assert (=> b!7125900 m!7842872))

(declare-fun m!7842874 () Bool)

(assert (=> b!7125900 m!7842874))

(declare-fun m!7842876 () Bool)

(assert (=> b!7125916 m!7842876))

(declare-fun m!7842878 () Bool)

(assert (=> b!7125901 m!7842878))

(declare-fun m!7842880 () Bool)

(assert (=> b!7125904 m!7842880))

(declare-fun m!7842882 () Bool)

(assert (=> start!694232 m!7842882))

(declare-fun m!7842884 () Bool)

(assert (=> b!7125913 m!7842884))

(declare-fun m!7842886 () Bool)

(assert (=> setNonEmpty!51667 m!7842886))

(check-sat (not b!7125899) (not b!7125902) (not b!7125914) (not start!694232) (not b!7125908) (not b!7125919) (not b!7125904) (not b!7125906) (not b!7125900) (not b!7125916) (not b!7125903) (not b!7125901) (not b!7125915) (not b!7125913) (not b!7125907) (not b!7125912) (not b!7125911) (not b!7125918) (not b!7125909) (not setNonEmpty!51666) (not setNonEmpty!51667) tp_is_empty!45635)
(check-sat)
