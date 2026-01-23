; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517944 () Bool)

(assert start!517944)

(declare-fun res!2104502 () Bool)

(declare-fun e!3080990 () Bool)

(assert (=> start!517944 (=> (not res!2104502) (not e!3080990))))

(declare-datatypes ((C!27028 0))(
  ( (C!27029 (val!22848 Int)) )
))
(declare-datatypes ((List!56882 0))(
  ( (Nil!56758) (Cons!56758 (h!63206 C!27028) (t!367362 List!56882)) )
))
(declare-fun lt!2030100 () List!56882)

(declare-fun lt!2030107 () List!56882)

(assert (=> start!517944 (= res!2104502 (= lt!2030100 lt!2030107))))

(declare-datatypes ((IArray!29877 0))(
  ( (IArray!29878 (innerList!14996 List!56882)) )
))
(declare-datatypes ((Conc!14908 0))(
  ( (Node!14908 (left!41396 Conc!14908) (right!41726 Conc!14908) (csize!30046 Int) (cheight!15119 Int)) (Leaf!24795 (xs!18232 IArray!29877) (csize!30047 Int)) (Empty!14908) )
))
(declare-datatypes ((BalanceConc!29246 0))(
  ( (BalanceConc!29247 (c!840359 Conc!14908)) )
))
(declare-fun totalInput!685 () BalanceConc!29246)

(declare-fun list!18006 (BalanceConc!29246) List!56882)

(assert (=> start!517944 (= lt!2030107 (list!18006 totalInput!685))))

(declare-fun testedP!110 () List!56882)

(declare-fun testedSuffix!70 () List!56882)

(declare-fun ++!12364 (List!56882 List!56882) List!56882)

(assert (=> start!517944 (= lt!2030100 (++!12364 testedP!110 testedSuffix!70))))

(assert (=> start!517944 e!3080990))

(declare-fun e!3080988 () Bool)

(assert (=> start!517944 e!3080988))

(declare-fun condSetEmpty!27650 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13399 0))(
  ( (ElementMatch!13399 (c!840360 C!27028)) (Concat!21972 (regOne!27310 Regex!13399) (regTwo!27310 Regex!13399)) (EmptyExpr!13399) (Star!13399 (reg!13728 Regex!13399)) (EmptyLang!13399) (Union!13399 (regOne!27311 Regex!13399) (regTwo!27311 Regex!13399)) )
))
(declare-datatypes ((List!56883 0))(
  ( (Nil!56759) (Cons!56759 (h!63207 Regex!13399) (t!367363 List!56883)) )
))
(declare-datatypes ((Context!6082 0))(
  ( (Context!6083 (exprs!3541 List!56883)) )
))
(declare-fun z!3568 () (InoxSet Context!6082))

(assert (=> start!517944 (= condSetEmpty!27650 (= z!3568 ((as const (Array Context!6082 Bool)) false)))))

(declare-fun setRes!27650 () Bool)

(assert (=> start!517944 setRes!27650))

(assert (=> start!517944 true))

(declare-fun e!3080992 () Bool)

(declare-fun inv!73665 (BalanceConc!29246) Bool)

(assert (=> start!517944 (and (inv!73665 totalInput!685) e!3080992)))

(declare-fun e!3080989 () Bool)

(assert (=> start!517944 e!3080989))

(declare-fun b!4931337 () Bool)

(declare-fun e!3080994 () Bool)

(declare-fun e!3080991 () Bool)

(assert (=> b!4931337 (= e!3080994 e!3080991)))

(declare-fun res!2104496 () Bool)

(assert (=> b!4931337 (=> res!2104496 e!3080991)))

(declare-fun lt!2030101 () List!56882)

(declare-fun lt!2030104 () List!56882)

(assert (=> b!4931337 (= res!2104496 (not (= (++!12364 lt!2030104 lt!2030101) lt!2030107)))))

(declare-datatypes ((tuple2!61218 0))(
  ( (tuple2!61219 (_1!33912 BalanceConc!29246) (_2!33912 BalanceConc!29246)) )
))
(declare-fun lt!2030106 () tuple2!61218)

(assert (=> b!4931337 (= lt!2030101 (list!18006 (_2!33912 lt!2030106)))))

(assert (=> b!4931337 (= lt!2030104 (list!18006 (_1!33912 lt!2030106)))))

(declare-fun testedPSize!70 () Int)

(declare-fun splitAt!287 (BalanceConc!29246 Int) tuple2!61218)

(assert (=> b!4931337 (= lt!2030106 (splitAt!287 totalInput!685 testedPSize!70))))

(declare-fun b!4931338 () Bool)

(declare-fun tp!1384463 () Bool)

(declare-fun inv!73666 (Conc!14908) Bool)

(assert (=> b!4931338 (= e!3080992 (and (inv!73666 (c!840359 totalInput!685)) tp!1384463))))

(declare-fun setIsEmpty!27650 () Bool)

(assert (=> setIsEmpty!27650 setRes!27650))

(declare-fun b!4931339 () Bool)

(declare-fun e!3080993 () Bool)

(assert (=> b!4931339 (= e!3080991 e!3080993)))

(declare-fun res!2104504 () Bool)

(assert (=> b!4931339 (=> res!2104504 e!3080993)))

(assert (=> b!4931339 (= res!2104504 (< testedPSize!70 0))))

(assert (=> b!4931339 (not (or (not (= lt!2030104 testedP!110)) (not (= lt!2030101 testedSuffix!70))))))

(declare-datatypes ((Unit!147391 0))(
  ( (Unit!147392) )
))
(declare-fun lt!2030098 () Unit!147391)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!665 (List!56882 List!56882 List!56882 List!56882) Unit!147391)

(assert (=> b!4931339 (= lt!2030098 (lemmaConcatSameAndSameSizesThenSameLists!665 lt!2030104 lt!2030101 testedP!110 testedSuffix!70))))

(declare-fun b!4931340 () Bool)

(declare-fun tp_is_empty!35975 () Bool)

(declare-fun tp!1384459 () Bool)

(assert (=> b!4931340 (= e!3080988 (and tp_is_empty!35975 tp!1384459))))

(declare-fun tp!1384461 () Bool)

(declare-fun e!3080986 () Bool)

(declare-fun setNonEmpty!27650 () Bool)

(declare-fun setElem!27650 () Context!6082)

(declare-fun inv!73667 (Context!6082) Bool)

(assert (=> setNonEmpty!27650 (= setRes!27650 (and tp!1384461 (inv!73667 setElem!27650) e!3080986))))

(declare-fun setRest!27650 () (InoxSet Context!6082))

(assert (=> setNonEmpty!27650 (= z!3568 ((_ map or) (store ((as const (Array Context!6082 Bool)) false) setElem!27650 true) setRest!27650))))

(declare-fun b!4931341 () Bool)

(declare-fun res!2104497 () Bool)

(assert (=> b!4931341 (=> res!2104497 e!3080991)))

(declare-fun size!37568 (BalanceConc!29246) Int)

(assert (=> b!4931341 (= res!2104497 (not (= (size!37568 (_1!33912 lt!2030106)) testedPSize!70)))))

(declare-fun b!4931342 () Bool)

(declare-fun tp!1384460 () Bool)

(assert (=> b!4931342 (= e!3080986 tp!1384460)))

(declare-fun b!4931343 () Bool)

(assert (=> b!4931343 (= e!3080993 true)))

(declare-fun lt!2030103 () Int)

(declare-fun size!37569 (List!56882) Int)

(assert (=> b!4931343 (= lt!2030103 (size!37569 lt!2030107))))

(declare-fun b!4931344 () Bool)

(declare-fun res!2104503 () Bool)

(assert (=> b!4931344 (=> (not res!2104503) (not e!3080990))))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4931344 (= res!2104503 (= totalInputSize!132 (size!37568 totalInput!685)))))

(declare-fun b!4931345 () Bool)

(declare-fun res!2104499 () Bool)

(assert (=> b!4931345 (=> res!2104499 e!3080994)))

(assert (=> b!4931345 (= res!2104499 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4931346 () Bool)

(declare-fun e!3080987 () Bool)

(assert (=> b!4931346 (= e!3080990 (not e!3080987))))

(declare-fun res!2104500 () Bool)

(assert (=> b!4931346 (=> res!2104500 e!3080987)))

(declare-fun isPrefix!4997 (List!56882 List!56882) Bool)

(assert (=> b!4931346 (= res!2104500 (not (isPrefix!4997 testedP!110 lt!2030107)))))

(assert (=> b!4931346 (isPrefix!4997 testedP!110 lt!2030100)))

(declare-fun lt!2030099 () Unit!147391)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3221 (List!56882 List!56882) Unit!147391)

(assert (=> b!4931346 (= lt!2030099 (lemmaConcatTwoListThenFirstIsPrefix!3221 testedP!110 testedSuffix!70))))

(declare-fun b!4931347 () Bool)

(declare-fun tp!1384462 () Bool)

(assert (=> b!4931347 (= e!3080989 (and tp_is_empty!35975 tp!1384462))))

(declare-fun b!4931348 () Bool)

(declare-fun res!2104501 () Bool)

(assert (=> b!4931348 (=> (not res!2104501) (not e!3080990))))

(assert (=> b!4931348 (= res!2104501 (= testedPSize!70 (size!37569 testedP!110)))))

(declare-fun b!4931349 () Bool)

(assert (=> b!4931349 (= e!3080987 e!3080994)))

(declare-fun res!2104498 () Bool)

(assert (=> b!4931349 (=> res!2104498 e!3080994)))

(declare-fun lostCauseZipper!717 ((InoxSet Context!6082)) Bool)

(assert (=> b!4931349 (= res!2104498 (lostCauseZipper!717 z!3568))))

(declare-fun lt!2030105 () List!56882)

(assert (=> b!4931349 (and (= testedSuffix!70 lt!2030105) (= lt!2030105 testedSuffix!70))))

(declare-fun lt!2030102 () Unit!147391)

(declare-fun lemmaSamePrefixThenSameSuffix!2395 (List!56882 List!56882 List!56882 List!56882 List!56882) Unit!147391)

(assert (=> b!4931349 (= lt!2030102 (lemmaSamePrefixThenSameSuffix!2395 testedP!110 testedSuffix!70 testedP!110 lt!2030105 lt!2030107))))

(declare-fun getSuffix!2981 (List!56882 List!56882) List!56882)

(assert (=> b!4931349 (= lt!2030105 (getSuffix!2981 lt!2030107 testedP!110))))

(assert (= (and start!517944 res!2104502) b!4931348))

(assert (= (and b!4931348 res!2104501) b!4931344))

(assert (= (and b!4931344 res!2104503) b!4931346))

(assert (= (and b!4931346 (not res!2104500)) b!4931349))

(assert (= (and b!4931349 (not res!2104498)) b!4931345))

(assert (= (and b!4931345 (not res!2104499)) b!4931337))

(assert (= (and b!4931337 (not res!2104496)) b!4931341))

(assert (= (and b!4931341 (not res!2104497)) b!4931339))

(assert (= (and b!4931339 (not res!2104504)) b!4931343))

(get-info :version)

(assert (= (and start!517944 ((_ is Cons!56758) testedP!110)) b!4931340))

(assert (= (and start!517944 condSetEmpty!27650) setIsEmpty!27650))

(assert (= (and start!517944 (not condSetEmpty!27650)) setNonEmpty!27650))

(assert (= setNonEmpty!27650 b!4931342))

(assert (= start!517944 b!4931338))

(assert (= (and start!517944 ((_ is Cons!56758) testedSuffix!70)) b!4931347))

(declare-fun m!5951392 () Bool)

(assert (=> b!4931346 m!5951392))

(declare-fun m!5951394 () Bool)

(assert (=> b!4931346 m!5951394))

(declare-fun m!5951396 () Bool)

(assert (=> b!4931346 m!5951396))

(declare-fun m!5951398 () Bool)

(assert (=> b!4931338 m!5951398))

(declare-fun m!5951400 () Bool)

(assert (=> b!4931349 m!5951400))

(declare-fun m!5951402 () Bool)

(assert (=> b!4931349 m!5951402))

(declare-fun m!5951404 () Bool)

(assert (=> b!4931349 m!5951404))

(declare-fun m!5951406 () Bool)

(assert (=> start!517944 m!5951406))

(declare-fun m!5951408 () Bool)

(assert (=> start!517944 m!5951408))

(declare-fun m!5951410 () Bool)

(assert (=> start!517944 m!5951410))

(declare-fun m!5951412 () Bool)

(assert (=> b!4931339 m!5951412))

(declare-fun m!5951414 () Bool)

(assert (=> b!4931348 m!5951414))

(declare-fun m!5951416 () Bool)

(assert (=> b!4931341 m!5951416))

(declare-fun m!5951418 () Bool)

(assert (=> setNonEmpty!27650 m!5951418))

(declare-fun m!5951420 () Bool)

(assert (=> b!4931344 m!5951420))

(declare-fun m!5951422 () Bool)

(assert (=> b!4931343 m!5951422))

(declare-fun m!5951424 () Bool)

(assert (=> b!4931337 m!5951424))

(declare-fun m!5951426 () Bool)

(assert (=> b!4931337 m!5951426))

(declare-fun m!5951428 () Bool)

(assert (=> b!4931337 m!5951428))

(declare-fun m!5951430 () Bool)

(assert (=> b!4931337 m!5951430))

(check-sat (not b!4931339) tp_is_empty!35975 (not b!4931347) (not b!4931341) (not b!4931337) (not b!4931338) (not b!4931349) (not b!4931343) (not b!4931342) (not b!4931340) (not b!4931348) (not setNonEmpty!27650) (not b!4931346) (not start!517944) (not b!4931344))
(check-sat)
