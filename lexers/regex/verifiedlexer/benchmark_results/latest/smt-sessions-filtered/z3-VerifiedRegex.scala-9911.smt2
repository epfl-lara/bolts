; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519564 () Bool)

(assert start!519564)

(declare-fun tp!1385970 () Bool)

(declare-fun setNonEmpty!27876 () Bool)

(declare-fun setRes!27876 () Bool)

(declare-datatypes ((C!27128 0))(
  ( (C!27129 (val!22898 Int)) )
))
(declare-datatypes ((Regex!13447 0))(
  ( (ElementMatch!13447 (c!842294 C!27128)) (Concat!22020 (regOne!27406 Regex!13447) (regTwo!27406 Regex!13447)) (EmptyExpr!13447) (Star!13447 (reg!13776 Regex!13447)) (EmptyLang!13447) (Union!13447 (regOne!27407 Regex!13447) (regTwo!27407 Regex!13447)) )
))
(declare-datatypes ((List!57005 0))(
  ( (Nil!56881) (Cons!56881 (h!63329 Regex!13447) (t!367505 List!57005)) )
))
(declare-datatypes ((Context!6178 0))(
  ( (Context!6179 (exprs!3589 List!57005)) )
))
(declare-fun setElem!27876 () Context!6178)

(declare-fun e!3086205 () Bool)

(declare-fun inv!73963 (Context!6178) Bool)

(assert (=> setNonEmpty!27876 (= setRes!27876 (and tp!1385970 (inv!73963 setElem!27876) e!3086205))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6178))

(declare-fun setRest!27876 () (InoxSet Context!6178))

(assert (=> setNonEmpty!27876 (= z!3568 ((_ map or) (store ((as const (Array Context!6178 Bool)) false) setElem!27876 true) setRest!27876))))

(declare-fun b!4939288 () Bool)

(declare-fun res!2107916 () Bool)

(declare-fun e!3086199 () Bool)

(assert (=> b!4939288 (=> res!2107916 e!3086199)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4939288 (= res!2107916 (not (= testedPSize!70 totalInputSize!132)))))

(declare-fun b!4939289 () Bool)

(declare-fun res!2107917 () Bool)

(declare-fun e!3086202 () Bool)

(assert (=> b!4939289 (=> (not res!2107917) (not e!3086202))))

(declare-datatypes ((List!57006 0))(
  ( (Nil!56882) (Cons!56882 (h!63330 C!27128) (t!367506 List!57006)) )
))
(declare-fun testedP!110 () List!57006)

(declare-fun size!37693 (List!57006) Int)

(assert (=> b!4939289 (= res!2107917 (= testedPSize!70 (size!37693 testedP!110)))))

(declare-fun b!4939290 () Bool)

(declare-fun e!3086200 () Bool)

(declare-fun tp_is_empty!36075 () Bool)

(declare-fun tp!1385968 () Bool)

(assert (=> b!4939290 (= e!3086200 (and tp_is_empty!36075 tp!1385968))))

(declare-fun b!4939291 () Bool)

(declare-fun e!3086204 () Bool)

(assert (=> b!4939291 (= e!3086202 (not e!3086204))))

(declare-fun res!2107914 () Bool)

(assert (=> b!4939291 (=> res!2107914 e!3086204)))

(declare-fun lt!2036155 () List!57006)

(declare-fun isPrefix!5047 (List!57006 List!57006) Bool)

(assert (=> b!4939291 (= res!2107914 (not (isPrefix!5047 testedP!110 lt!2036155)))))

(declare-fun lt!2036154 () List!57006)

(assert (=> b!4939291 (isPrefix!5047 testedP!110 lt!2036154)))

(declare-datatypes ((Unit!147629 0))(
  ( (Unit!147630) )
))
(declare-fun lt!2036152 () Unit!147629)

(declare-fun testedSuffix!70 () List!57006)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3271 (List!57006 List!57006) Unit!147629)

(assert (=> b!4939291 (= lt!2036152 (lemmaConcatTwoListThenFirstIsPrefix!3271 testedP!110 testedSuffix!70))))

(declare-fun b!4939292 () Bool)

(declare-fun e!3086203 () Bool)

(declare-fun tp!1385967 () Bool)

(assert (=> b!4939292 (= e!3086203 (and tp_is_empty!36075 tp!1385967))))

(declare-fun b!4939293 () Bool)

(declare-fun tp!1385969 () Bool)

(assert (=> b!4939293 (= e!3086205 tp!1385969)))

(declare-fun b!4939294 () Bool)

(assert (=> b!4939294 (= e!3086204 e!3086199)))

(declare-fun res!2107918 () Bool)

(assert (=> b!4939294 (=> res!2107918 e!3086199)))

(declare-fun lostCauseZipper!765 ((InoxSet Context!6178)) Bool)

(assert (=> b!4939294 (= res!2107918 (lostCauseZipper!765 z!3568))))

(declare-fun lt!2036157 () List!57006)

(assert (=> b!4939294 (and (= testedSuffix!70 lt!2036157) (= lt!2036157 testedSuffix!70))))

(declare-fun lt!2036153 () Unit!147629)

(declare-fun lemmaSamePrefixThenSameSuffix!2443 (List!57006 List!57006 List!57006 List!57006 List!57006) Unit!147629)

(assert (=> b!4939294 (= lt!2036153 (lemmaSamePrefixThenSameSuffix!2443 testedP!110 testedSuffix!70 testedP!110 lt!2036157 lt!2036155))))

(declare-fun getSuffix!3029 (List!57006 List!57006) List!57006)

(assert (=> b!4939294 (= lt!2036157 (getSuffix!3029 lt!2036155 testedP!110))))

(declare-fun res!2107913 () Bool)

(assert (=> start!519564 (=> (not res!2107913) (not e!3086202))))

(assert (=> start!519564 (= res!2107913 (= lt!2036154 lt!2036155))))

(declare-datatypes ((IArray!29977 0))(
  ( (IArray!29978 (innerList!15046 List!57006)) )
))
(declare-datatypes ((Conc!14958 0))(
  ( (Node!14958 (left!41491 Conc!14958) (right!41821 Conc!14958) (csize!30146 Int) (cheight!15169 Int)) (Leaf!24870 (xs!18282 IArray!29977) (csize!30147 Int)) (Empty!14958) )
))
(declare-datatypes ((BalanceConc!29346 0))(
  ( (BalanceConc!29347 (c!842295 Conc!14958)) )
))
(declare-fun totalInput!685 () BalanceConc!29346)

(declare-fun list!18085 (BalanceConc!29346) List!57006)

(assert (=> start!519564 (= lt!2036155 (list!18085 totalInput!685))))

(declare-fun ++!12418 (List!57006 List!57006) List!57006)

(assert (=> start!519564 (= lt!2036154 (++!12418 testedP!110 testedSuffix!70))))

(assert (=> start!519564 e!3086202))

(assert (=> start!519564 e!3086200))

(declare-fun condSetEmpty!27876 () Bool)

(assert (=> start!519564 (= condSetEmpty!27876 (= z!3568 ((as const (Array Context!6178 Bool)) false)))))

(assert (=> start!519564 setRes!27876))

(assert (=> start!519564 true))

(declare-fun e!3086201 () Bool)

(declare-fun inv!73964 (BalanceConc!29346) Bool)

(assert (=> start!519564 (and (inv!73964 totalInput!685) e!3086201)))

(assert (=> start!519564 e!3086203))

(declare-fun b!4939295 () Bool)

(declare-fun tp!1385971 () Bool)

(declare-fun inv!73965 (Conc!14958) Bool)

(assert (=> b!4939295 (= e!3086201 (and (inv!73965 (c!842295 totalInput!685)) tp!1385971))))

(declare-fun b!4939296 () Bool)

(declare-fun res!2107915 () Bool)

(assert (=> b!4939296 (=> (not res!2107915) (not e!3086202))))

(declare-fun size!37694 (BalanceConc!29346) Int)

(assert (=> b!4939296 (= res!2107915 (= totalInputSize!132 (size!37694 totalInput!685)))))

(declare-fun setIsEmpty!27876 () Bool)

(assert (=> setIsEmpty!27876 setRes!27876))

(declare-fun b!4939297 () Bool)

(assert (=> b!4939297 (= e!3086199 (= testedP!110 lt!2036155))))

(assert (=> b!4939297 (= lt!2036155 testedP!110)))

(declare-fun lt!2036151 () Unit!147629)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1169 (List!57006 List!57006 List!57006) Unit!147629)

(assert (=> b!4939297 (= lt!2036151 (lemmaIsPrefixSameLengthThenSameList!1169 lt!2036155 testedP!110 lt!2036155))))

(assert (=> b!4939297 (isPrefix!5047 lt!2036155 lt!2036155)))

(declare-fun lt!2036156 () Unit!147629)

(declare-fun lemmaIsPrefixRefl!3411 (List!57006 List!57006) Unit!147629)

(assert (=> b!4939297 (= lt!2036156 (lemmaIsPrefixRefl!3411 lt!2036155 lt!2036155))))

(assert (= (and start!519564 res!2107913) b!4939289))

(assert (= (and b!4939289 res!2107917) b!4939296))

(assert (= (and b!4939296 res!2107915) b!4939291))

(assert (= (and b!4939291 (not res!2107914)) b!4939294))

(assert (= (and b!4939294 (not res!2107918)) b!4939288))

(assert (= (and b!4939288 (not res!2107916)) b!4939297))

(get-info :version)

(assert (= (and start!519564 ((_ is Cons!56882) testedP!110)) b!4939290))

(assert (= (and start!519564 condSetEmpty!27876) setIsEmpty!27876))

(assert (= (and start!519564 (not condSetEmpty!27876)) setNonEmpty!27876))

(assert (= setNonEmpty!27876 b!4939293))

(assert (= start!519564 b!4939295))

(assert (= (and start!519564 ((_ is Cons!56882) testedSuffix!70)) b!4939292))

(declare-fun m!5961728 () Bool)

(assert (=> b!4939294 m!5961728))

(declare-fun m!5961730 () Bool)

(assert (=> b!4939294 m!5961730))

(declare-fun m!5961732 () Bool)

(assert (=> b!4939294 m!5961732))

(declare-fun m!5961734 () Bool)

(assert (=> b!4939297 m!5961734))

(declare-fun m!5961736 () Bool)

(assert (=> b!4939297 m!5961736))

(declare-fun m!5961738 () Bool)

(assert (=> b!4939297 m!5961738))

(declare-fun m!5961740 () Bool)

(assert (=> b!4939295 m!5961740))

(declare-fun m!5961742 () Bool)

(assert (=> start!519564 m!5961742))

(declare-fun m!5961744 () Bool)

(assert (=> start!519564 m!5961744))

(declare-fun m!5961746 () Bool)

(assert (=> start!519564 m!5961746))

(declare-fun m!5961748 () Bool)

(assert (=> b!4939289 m!5961748))

(declare-fun m!5961750 () Bool)

(assert (=> b!4939291 m!5961750))

(declare-fun m!5961752 () Bool)

(assert (=> b!4939291 m!5961752))

(declare-fun m!5961754 () Bool)

(assert (=> b!4939291 m!5961754))

(declare-fun m!5961756 () Bool)

(assert (=> b!4939296 m!5961756))

(declare-fun m!5961758 () Bool)

(assert (=> setNonEmpty!27876 m!5961758))

(check-sat (not b!4939296) (not b!4939290) (not b!4939289) (not start!519564) (not b!4939292) (not b!4939295) (not setNonEmpty!27876) (not b!4939291) (not b!4939293) (not b!4939294) (not b!4939297) tp_is_empty!36075)
(check-sat)
