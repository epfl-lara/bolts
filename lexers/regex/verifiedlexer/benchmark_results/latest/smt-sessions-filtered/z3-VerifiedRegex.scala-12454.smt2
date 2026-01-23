; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694556 () Bool)

(assert start!694556)

(declare-fun b!7129390 () Bool)

(declare-fun e!4284337 () Bool)

(declare-fun e!4284338 () Bool)

(assert (=> b!7129390 (= e!4284337 (not e!4284338))))

(declare-fun res!2908853 () Bool)

(assert (=> b!7129390 (=> res!2908853 e!4284338)))

(declare-datatypes ((C!36352 0))(
  ( (C!36353 (val!28102 Int)) )
))
(declare-datatypes ((List!69136 0))(
  ( (Nil!69012) (Cons!69012 (h!75460 C!36352) (t!383113 List!69136)) )
))
(declare-fun s1Rec!140 () List!69136)

(declare-fun s1!1688 () List!69136)

(assert (=> b!7129390 (= res!2908853 (not (= s1Rec!140 s1!1688)))))

(declare-fun lt!2563840 () List!69136)

(declare-fun isPrefix!5910 (List!69136 List!69136) Bool)

(assert (=> b!7129390 (isPrefix!5910 s1Rec!140 lt!2563840)))

(declare-datatypes ((Unit!162911 0))(
  ( (Unit!162912) )
))
(declare-fun lt!2563841 () Unit!162911)

(declare-fun s2Rec!140 () List!69136)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3623 (List!69136 List!69136) Unit!162911)

(assert (=> b!7129390 (= lt!2563841 (lemmaConcatTwoListThenFirstIsPrefix!3623 s1Rec!140 s2Rec!140))))

(declare-fun lt!2563842 () List!69136)

(assert (=> b!7129390 (isPrefix!5910 s1!1688 lt!2563842)))

(declare-fun lt!2563839 () Unit!162911)

(declare-fun s2!1620 () List!69136)

(assert (=> b!7129390 (= lt!2563839 (lemmaConcatTwoListThenFirstIsPrefix!3623 s1!1688 s2!1620))))

(declare-fun b!7129391 () Bool)

(declare-fun e!4284333 () Bool)

(declare-fun tp_is_empty!45683 () Bool)

(declare-fun tp!1964472 () Bool)

(assert (=> b!7129391 (= e!4284333 (and tp_is_empty!45683 tp!1964472))))

(declare-fun b!7129392 () Bool)

(declare-fun e!4284332 () Bool)

(declare-fun tp!1964470 () Bool)

(assert (=> b!7129392 (= e!4284332 (and tp_is_empty!45683 tp!1964470))))

(declare-fun b!7129393 () Bool)

(declare-fun res!2908845 () Bool)

(assert (=> b!7129393 (=> (not res!2908845) (not e!4284337))))

(get-info :version)

(assert (=> b!7129393 (= res!2908845 (not ((_ is Nil!69012) s2Rec!140)))))

(declare-fun b!7129394 () Bool)

(declare-fun e!4284335 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18041 0))(
  ( (ElementMatch!18041 (c!1329951 C!36352)) (Concat!26886 (regOne!36594 Regex!18041) (regTwo!36594 Regex!18041)) (EmptyExpr!18041) (Star!18041 (reg!18370 Regex!18041)) (EmptyLang!18041) (Union!18041 (regOne!36595 Regex!18041) (regTwo!36595 Regex!18041)) )
))
(declare-datatypes ((List!69137 0))(
  ( (Nil!69013) (Cons!69013 (h!75461 Regex!18041) (t!383114 List!69137)) )
))
(declare-datatypes ((Context!14070 0))(
  ( (Context!14071 (exprs!7535 List!69137)) )
))
(declare-fun z2!471 () (InoxSet Context!14070))

(declare-fun matchZipper!3297 ((InoxSet Context!14070) List!69136) Bool)

(assert (=> b!7129394 (= e!4284335 (not (matchZipper!3297 z2!471 s2Rec!140)))))

(declare-fun res!2908847 () Bool)

(declare-fun e!4284341 () Bool)

(assert (=> start!694556 (=> (not res!2908847) (not e!4284341))))

(declare-fun z1!552 () (InoxSet Context!14070))

(assert (=> start!694556 (= res!2908847 (matchZipper!3297 z1!552 s1!1688))))

(assert (=> start!694556 e!4284341))

(declare-fun e!4284340 () Bool)

(assert (=> start!694556 e!4284340))

(declare-fun condSetEmpty!51882 () Bool)

(assert (=> start!694556 (= condSetEmpty!51882 (= z1!552 ((as const (Array Context!14070 Bool)) false)))))

(declare-fun setRes!51882 () Bool)

(assert (=> start!694556 setRes!51882))

(declare-fun e!4284336 () Bool)

(assert (=> start!694556 e!4284336))

(declare-fun condSetEmpty!51883 () Bool)

(assert (=> start!694556 (= condSetEmpty!51883 (= z2!471 ((as const (Array Context!14070 Bool)) false)))))

(declare-fun setRes!51883 () Bool)

(assert (=> start!694556 setRes!51883))

(assert (=> start!694556 e!4284332))

(declare-fun e!4284334 () Bool)

(assert (=> start!694556 e!4284334))

(assert (=> start!694556 e!4284333))

(declare-fun b!7129395 () Bool)

(declare-fun e!4284339 () Bool)

(assert (=> b!7129395 (= e!4284341 e!4284339)))

(declare-fun res!2908852 () Bool)

(assert (=> b!7129395 (=> (not res!2908852) (not e!4284339))))

(declare-fun s!7390 () List!69136)

(assert (=> b!7129395 (= res!2908852 (= lt!2563842 s!7390))))

(declare-fun ++!16179 (List!69136 List!69136) List!69136)

(assert (=> b!7129395 (= lt!2563842 (++!16179 s1!1688 s2!1620))))

(declare-fun b!7129396 () Bool)

(declare-fun e!4284342 () Bool)

(declare-fun tp!1964474 () Bool)

(assert (=> b!7129396 (= e!4284342 tp!1964474)))

(declare-fun b!7129397 () Bool)

(declare-fun tp!1964473 () Bool)

(assert (=> b!7129397 (= e!4284340 (and tp_is_empty!45683 tp!1964473))))

(declare-fun setIsEmpty!51882 () Bool)

(assert (=> setIsEmpty!51882 setRes!51883))

(declare-fun b!7129398 () Bool)

(assert (=> b!7129398 (= e!4284339 e!4284337)))

(declare-fun res!2908850 () Bool)

(assert (=> b!7129398 (=> (not res!2908850) (not e!4284337))))

(assert (=> b!7129398 (= res!2908850 (= lt!2563840 s!7390))))

(assert (=> b!7129398 (= lt!2563840 (++!16179 s1Rec!140 s2Rec!140))))

(declare-fun b!7129399 () Bool)

(declare-fun res!2908849 () Bool)

(assert (=> b!7129399 (=> (not res!2908849) (not e!4284337))))

(assert (=> b!7129399 (= res!2908849 e!4284335)))

(declare-fun res!2908848 () Bool)

(assert (=> b!7129399 (=> res!2908848 e!4284335)))

(assert (=> b!7129399 (= res!2908848 (not (matchZipper!3297 z1!552 s1Rec!140)))))

(declare-fun b!7129400 () Bool)

(declare-fun tp!1964477 () Bool)

(assert (=> b!7129400 (= e!4284336 (and tp_is_empty!45683 tp!1964477))))

(declare-fun b!7129401 () Bool)

(assert (=> b!7129401 (= e!4284338 (isPrefix!5910 s1!1688 s!7390))))

(declare-fun b!7129402 () Bool)

(declare-fun tp!1964475 () Bool)

(assert (=> b!7129402 (= e!4284334 (and tp_is_empty!45683 tp!1964475))))

(declare-fun tp!1964471 () Bool)

(declare-fun e!4284343 () Bool)

(declare-fun setElem!51883 () Context!14070)

(declare-fun setNonEmpty!51882 () Bool)

(declare-fun inv!88130 (Context!14070) Bool)

(assert (=> setNonEmpty!51882 (= setRes!51882 (and tp!1964471 (inv!88130 setElem!51883) e!4284343))))

(declare-fun setRest!51882 () (InoxSet Context!14070))

(assert (=> setNonEmpty!51882 (= z1!552 ((_ map or) (store ((as const (Array Context!14070 Bool)) false) setElem!51883 true) setRest!51882))))

(declare-fun b!7129403 () Bool)

(declare-fun res!2908846 () Bool)

(assert (=> b!7129403 (=> (not res!2908846) (not e!4284339))))

(assert (=> b!7129403 (= res!2908846 (isPrefix!5910 s1Rec!140 s1!1688))))

(declare-fun b!7129404 () Bool)

(declare-fun res!2908851 () Bool)

(assert (=> b!7129404 (=> (not res!2908851) (not e!4284341))))

(assert (=> b!7129404 (= res!2908851 (matchZipper!3297 z2!471 s2!1620))))

(declare-fun tp!1964469 () Bool)

(declare-fun setNonEmpty!51883 () Bool)

(declare-fun setElem!51882 () Context!14070)

(assert (=> setNonEmpty!51883 (= setRes!51883 (and tp!1964469 (inv!88130 setElem!51882) e!4284342))))

(declare-fun setRest!51883 () (InoxSet Context!14070))

(assert (=> setNonEmpty!51883 (= z2!471 ((_ map or) (store ((as const (Array Context!14070 Bool)) false) setElem!51882 true) setRest!51883))))

(declare-fun b!7129405 () Bool)

(declare-fun tp!1964476 () Bool)

(assert (=> b!7129405 (= e!4284343 tp!1964476)))

(declare-fun setIsEmpty!51883 () Bool)

(assert (=> setIsEmpty!51883 setRes!51882))

(assert (= (and start!694556 res!2908847) b!7129404))

(assert (= (and b!7129404 res!2908851) b!7129395))

(assert (= (and b!7129395 res!2908852) b!7129403))

(assert (= (and b!7129403 res!2908846) b!7129398))

(assert (= (and b!7129398 res!2908850) b!7129399))

(assert (= (and b!7129399 (not res!2908848)) b!7129394))

(assert (= (and b!7129399 res!2908849) b!7129393))

(assert (= (and b!7129393 res!2908845) b!7129390))

(assert (= (and b!7129390 (not res!2908853)) b!7129401))

(assert (= (and start!694556 ((_ is Cons!69012) s1Rec!140)) b!7129397))

(assert (= (and start!694556 condSetEmpty!51882) setIsEmpty!51883))

(assert (= (and start!694556 (not condSetEmpty!51882)) setNonEmpty!51882))

(assert (= setNonEmpty!51882 b!7129405))

(assert (= (and start!694556 ((_ is Cons!69012) s2Rec!140)) b!7129400))

(assert (= (and start!694556 condSetEmpty!51883) setIsEmpty!51882))

(assert (= (and start!694556 (not condSetEmpty!51883)) setNonEmpty!51883))

(assert (= setNonEmpty!51883 b!7129396))

(assert (= (and start!694556 ((_ is Cons!69012) s2!1620)) b!7129392))

(assert (= (and start!694556 ((_ is Cons!69012) s1!1688)) b!7129402))

(assert (= (and start!694556 ((_ is Cons!69012) s!7390)) b!7129391))

(declare-fun m!7846584 () Bool)

(assert (=> b!7129395 m!7846584))

(declare-fun m!7846586 () Bool)

(assert (=> start!694556 m!7846586))

(declare-fun m!7846588 () Bool)

(assert (=> b!7129401 m!7846588))

(declare-fun m!7846590 () Bool)

(assert (=> b!7129404 m!7846590))

(declare-fun m!7846592 () Bool)

(assert (=> b!7129398 m!7846592))

(declare-fun m!7846594 () Bool)

(assert (=> setNonEmpty!51883 m!7846594))

(declare-fun m!7846596 () Bool)

(assert (=> b!7129390 m!7846596))

(declare-fun m!7846598 () Bool)

(assert (=> b!7129390 m!7846598))

(declare-fun m!7846600 () Bool)

(assert (=> b!7129390 m!7846600))

(declare-fun m!7846602 () Bool)

(assert (=> b!7129390 m!7846602))

(declare-fun m!7846604 () Bool)

(assert (=> b!7129399 m!7846604))

(declare-fun m!7846606 () Bool)

(assert (=> b!7129403 m!7846606))

(declare-fun m!7846608 () Bool)

(assert (=> setNonEmpty!51882 m!7846608))

(declare-fun m!7846610 () Bool)

(assert (=> b!7129394 m!7846610))

(check-sat (not b!7129390) (not b!7129399) (not b!7129405) (not b!7129397) (not b!7129391) (not b!7129395) (not start!694556) (not setNonEmpty!51882) (not setNonEmpty!51883) (not b!7129404) (not b!7129396) (not b!7129402) (not b!7129398) (not b!7129403) (not b!7129400) (not b!7129394) (not b!7129392) tp_is_empty!45683 (not b!7129401))
(check-sat)
