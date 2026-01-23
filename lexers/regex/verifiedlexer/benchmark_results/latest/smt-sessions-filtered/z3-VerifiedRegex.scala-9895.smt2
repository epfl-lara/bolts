; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518308 () Bool)

(assert start!518308)

(declare-fun b!4933206 () Bool)

(declare-datatypes ((Unit!147457 0))(
  ( (Unit!147458) )
))
(declare-fun e!3082277 () Unit!147457)

(declare-fun Unit!147459 () Unit!147457)

(assert (=> b!4933206 (= e!3082277 Unit!147459)))

(declare-fun b!4933207 () Bool)

(declare-fun e!3082285 () Bool)

(declare-fun e!3082281 () Bool)

(assert (=> b!4933207 (= e!3082285 e!3082281)))

(declare-fun res!2105380 () Bool)

(assert (=> b!4933207 (=> res!2105380 e!3082281)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27064 0))(
  ( (C!27065 (val!22866 Int)) )
))
(declare-datatypes ((Regex!13417 0))(
  ( (ElementMatch!13417 (c!840739 C!27064)) (Concat!21990 (regOne!27346 Regex!13417) (regTwo!27346 Regex!13417)) (EmptyExpr!13417) (Star!13417 (reg!13746 Regex!13417)) (EmptyLang!13417) (Union!13417 (regOne!27347 Regex!13417) (regTwo!27347 Regex!13417)) )
))
(declare-datatypes ((List!56926 0))(
  ( (Nil!56802) (Cons!56802 (h!63250 Regex!13417) (t!367406 List!56926)) )
))
(declare-datatypes ((Context!6118 0))(
  ( (Context!6119 (exprs!3559 List!56926)) )
))
(declare-fun z!3568 () (InoxSet Context!6118))

(declare-fun lostCauseZipper!735 ((InoxSet Context!6118)) Bool)

(assert (=> b!4933207 (= res!2105380 (lostCauseZipper!735 z!3568))))

(declare-datatypes ((List!56927 0))(
  ( (Nil!56803) (Cons!56803 (h!63251 C!27064) (t!367407 List!56927)) )
))
(declare-fun testedSuffix!70 () List!56927)

(declare-fun lt!2031458 () List!56927)

(assert (=> b!4933207 (and (= testedSuffix!70 lt!2031458) (= lt!2031458 testedSuffix!70))))

(declare-fun testedP!110 () List!56927)

(declare-fun lt!2031467 () Unit!147457)

(declare-fun lt!2031472 () List!56927)

(declare-fun lemmaSamePrefixThenSameSuffix!2413 (List!56927 List!56927 List!56927 List!56927 List!56927) Unit!147457)

(assert (=> b!4933207 (= lt!2031467 (lemmaSamePrefixThenSameSuffix!2413 testedP!110 testedSuffix!70 testedP!110 lt!2031458 lt!2031472))))

(declare-fun getSuffix!2999 (List!56927 List!56927) List!56927)

(assert (=> b!4933207 (= lt!2031458 (getSuffix!2999 lt!2031472 testedP!110))))

(declare-fun b!4933208 () Bool)

(declare-fun e!3082283 () Bool)

(declare-fun e!3082275 () Bool)

(assert (=> b!4933208 (= e!3082283 e!3082275)))

(declare-fun res!2105376 () Bool)

(assert (=> b!4933208 (=> (not res!2105376) (not e!3082275))))

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2031455 () Int)

(assert (=> b!4933208 (= res!2105376 (= testedPSize!70 lt!2031455))))

(declare-fun size!37612 (List!56927) Int)

(assert (=> b!4933208 (= lt!2031455 (size!37612 testedP!110))))

(declare-fun b!4933209 () Bool)

(declare-fun e!3082274 () Bool)

(assert (=> b!4933209 (= e!3082275 e!3082274)))

(declare-fun res!2105378 () Bool)

(assert (=> b!4933209 (=> (not res!2105378) (not e!3082274))))

(declare-fun totalInputSize!132 () Int)

(declare-fun lt!2031456 () Int)

(assert (=> b!4933209 (= res!2105378 (= totalInputSize!132 lt!2031456))))

(declare-datatypes ((IArray!29913 0))(
  ( (IArray!29914 (innerList!15014 List!56927)) )
))
(declare-datatypes ((Conc!14926 0))(
  ( (Node!14926 (left!41423 Conc!14926) (right!41753 Conc!14926) (csize!30082 Int) (cheight!15137 Int)) (Leaf!24822 (xs!18250 IArray!29913) (csize!30083 Int)) (Empty!14926) )
))
(declare-datatypes ((BalanceConc!29282 0))(
  ( (BalanceConc!29283 (c!840740 Conc!14926)) )
))
(declare-fun totalInput!685 () BalanceConc!29282)

(declare-fun size!37613 (BalanceConc!29282) Int)

(assert (=> b!4933209 (= lt!2031456 (size!37613 totalInput!685))))

(declare-fun b!4933210 () Bool)

(declare-fun e!3082286 () Bool)

(declare-fun tp_is_empty!36011 () Bool)

(declare-fun tp!1384933 () Bool)

(assert (=> b!4933210 (= e!3082286 (and tp_is_empty!36011 tp!1384933))))

(declare-fun b!4933211 () Bool)

(declare-fun e!3082276 () Bool)

(declare-fun e!3082278 () Bool)

(assert (=> b!4933211 (= e!3082276 e!3082278)))

(declare-fun res!2105381 () Bool)

(assert (=> b!4933211 (=> res!2105381 e!3082278)))

(declare-fun lt!2031466 () C!27064)

(declare-fun head!10554 (List!56927) C!27064)

(assert (=> b!4933211 (= res!2105381 (not (= lt!2031466 (head!10554 testedSuffix!70))))))

(declare-fun apply!13712 (BalanceConc!29282 Int) C!27064)

(assert (=> b!4933211 (= lt!2031466 (apply!13712 totalInput!685 testedPSize!70))))

(declare-fun drop!2248 (List!56927 Int) List!56927)

(declare-fun apply!13713 (List!56927 Int) C!27064)

(assert (=> b!4933211 (= (head!10554 (drop!2248 lt!2031472 testedPSize!70)) (apply!13713 lt!2031472 testedPSize!70))))

(declare-fun lt!2031464 () Unit!147457)

(declare-fun lemmaDropApply!1306 (List!56927 Int) Unit!147457)

(assert (=> b!4933211 (= lt!2031464 (lemmaDropApply!1306 lt!2031472 testedPSize!70))))

(declare-fun lt!2031457 () List!56927)

(declare-fun lt!2031468 () List!56927)

(assert (=> b!4933211 (not (or (not (= lt!2031468 testedP!110)) (not (= lt!2031457 testedSuffix!70))))))

(declare-fun lt!2031463 () Unit!147457)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!683 (List!56927 List!56927 List!56927 List!56927) Unit!147457)

(assert (=> b!4933211 (= lt!2031463 (lemmaConcatSameAndSameSizesThenSameLists!683 lt!2031468 lt!2031457 testedP!110 testedSuffix!70))))

(declare-fun b!4933213 () Bool)

(declare-fun e!3082284 () Bool)

(declare-fun tp!1384932 () Bool)

(assert (=> b!4933213 (= e!3082284 tp!1384932)))

(declare-fun b!4933214 () Bool)

(declare-fun res!2105375 () Bool)

(assert (=> b!4933214 (=> res!2105375 e!3082281)))

(assert (=> b!4933214 (= res!2105375 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4933215 () Bool)

(declare-fun e!3082280 () Bool)

(declare-fun tp!1384929 () Bool)

(assert (=> b!4933215 (= e!3082280 (and tp_is_empty!36011 tp!1384929))))

(declare-fun tp!1384931 () Bool)

(declare-fun setRes!27728 () Bool)

(declare-fun setNonEmpty!27728 () Bool)

(declare-fun setElem!27728 () Context!6118)

(declare-fun inv!73769 (Context!6118) Bool)

(assert (=> setNonEmpty!27728 (= setRes!27728 (and tp!1384931 (inv!73769 setElem!27728) e!3082284))))

(declare-fun setRest!27728 () (InoxSet Context!6118))

(assert (=> setNonEmpty!27728 (= z!3568 ((_ map or) (store ((as const (Array Context!6118 Bool)) false) setElem!27728 true) setRest!27728))))

(declare-fun b!4933216 () Bool)

(declare-fun Unit!147460 () Unit!147457)

(assert (=> b!4933216 (= e!3082277 Unit!147460)))

(declare-fun lt!2031462 () Unit!147457)

(declare-fun lemmaIsPrefixRefl!3381 (List!56927 List!56927) Unit!147457)

(assert (=> b!4933216 (= lt!2031462 (lemmaIsPrefixRefl!3381 lt!2031472 lt!2031472))))

(declare-fun isPrefix!5015 (List!56927 List!56927) Bool)

(assert (=> b!4933216 (isPrefix!5015 lt!2031472 lt!2031472)))

(declare-fun lt!2031470 () Unit!147457)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1139 (List!56927 List!56927 List!56927) Unit!147457)

(assert (=> b!4933216 (= lt!2031470 (lemmaIsPrefixSameLengthThenSameList!1139 lt!2031472 testedP!110 lt!2031472))))

(assert (=> b!4933216 false))

(declare-fun b!4933217 () Bool)

(declare-fun e!3082282 () Bool)

(assert (=> b!4933217 (= e!3082278 e!3082282)))

(declare-fun res!2105384 () Bool)

(assert (=> b!4933217 (=> res!2105384 e!3082282)))

(assert (=> b!4933217 (= res!2105384 (>= lt!2031455 lt!2031456))))

(declare-fun lt!2031469 () Unit!147457)

(assert (=> b!4933217 (= lt!2031469 e!3082277)))

(declare-fun c!840738 () Bool)

(assert (=> b!4933217 (= c!840738 (= lt!2031455 lt!2031456))))

(assert (=> b!4933217 (<= lt!2031455 (size!37612 lt!2031472))))

(declare-fun lt!2031460 () Unit!147457)

(declare-fun lemmaIsPrefixThenSmallerEqSize!703 (List!56927 List!56927) Unit!147457)

(assert (=> b!4933217 (= lt!2031460 (lemmaIsPrefixThenSmallerEqSize!703 testedP!110 lt!2031472))))

(declare-fun setIsEmpty!27728 () Bool)

(assert (=> setIsEmpty!27728 setRes!27728))

(declare-fun b!4933218 () Bool)

(declare-fun e!3082279 () Bool)

(declare-fun tp!1384930 () Bool)

(declare-fun inv!73770 (Conc!14926) Bool)

(assert (=> b!4933218 (= e!3082279 (and (inv!73770 (c!840740 totalInput!685)) tp!1384930))))

(declare-fun b!4933219 () Bool)

(assert (=> b!4933219 (= e!3082282 true)))

(declare-fun lt!2031473 () List!56927)

(declare-fun ++!12382 (List!56927 List!56927) List!56927)

(declare-fun tail!9693 (List!56927) List!56927)

(assert (=> b!4933219 (= lt!2031473 (++!12382 testedP!110 (Cons!56803 lt!2031466 (tail!9693 testedSuffix!70))))))

(assert (=> b!4933219 (isPrefix!5015 (++!12382 testedP!110 (Cons!56803 (head!10554 lt!2031458) Nil!56803)) lt!2031472)))

(declare-fun lt!2031461 () Unit!147457)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!785 (List!56927 List!56927) Unit!147457)

(assert (=> b!4933219 (= lt!2031461 (lemmaAddHeadSuffixToPrefixStillPrefix!785 testedP!110 lt!2031472))))

(declare-fun b!4933212 () Bool)

(declare-fun res!2105379 () Bool)

(assert (=> b!4933212 (=> res!2105379 e!3082276)))

(declare-datatypes ((tuple2!61286 0))(
  ( (tuple2!61287 (_1!33946 BalanceConc!29282) (_2!33946 BalanceConc!29282)) )
))
(declare-fun lt!2031471 () tuple2!61286)

(assert (=> b!4933212 (= res!2105379 (not (= (size!37613 (_1!33946 lt!2031471)) testedPSize!70)))))

(declare-fun res!2105382 () Bool)

(assert (=> start!518308 (=> (not res!2105382) (not e!3082283))))

(declare-fun lt!2031465 () List!56927)

(assert (=> start!518308 (= res!2105382 (= lt!2031465 lt!2031472))))

(declare-fun list!18032 (BalanceConc!29282) List!56927)

(assert (=> start!518308 (= lt!2031472 (list!18032 totalInput!685))))

(assert (=> start!518308 (= lt!2031465 (++!12382 testedP!110 testedSuffix!70))))

(assert (=> start!518308 e!3082283))

(assert (=> start!518308 e!3082280))

(declare-fun condSetEmpty!27728 () Bool)

(assert (=> start!518308 (= condSetEmpty!27728 (= z!3568 ((as const (Array Context!6118 Bool)) false)))))

(assert (=> start!518308 setRes!27728))

(assert (=> start!518308 true))

(declare-fun inv!73771 (BalanceConc!29282) Bool)

(assert (=> start!518308 (and (inv!73771 totalInput!685) e!3082279)))

(assert (=> start!518308 e!3082286))

(declare-fun b!4933220 () Bool)

(assert (=> b!4933220 (= e!3082281 e!3082276)))

(declare-fun res!2105383 () Bool)

(assert (=> b!4933220 (=> res!2105383 e!3082276)))

(assert (=> b!4933220 (= res!2105383 (not (= (++!12382 lt!2031468 lt!2031457) lt!2031472)))))

(assert (=> b!4933220 (= lt!2031457 (list!18032 (_2!33946 lt!2031471)))))

(assert (=> b!4933220 (= lt!2031468 (list!18032 (_1!33946 lt!2031471)))))

(declare-fun splitAt!313 (BalanceConc!29282 Int) tuple2!61286)

(assert (=> b!4933220 (= lt!2031471 (splitAt!313 totalInput!685 testedPSize!70))))

(declare-fun b!4933221 () Bool)

(assert (=> b!4933221 (= e!3082274 (not e!3082285))))

(declare-fun res!2105377 () Bool)

(assert (=> b!4933221 (=> res!2105377 e!3082285)))

(assert (=> b!4933221 (= res!2105377 (not (isPrefix!5015 testedP!110 lt!2031472)))))

(assert (=> b!4933221 (isPrefix!5015 testedP!110 lt!2031465)))

(declare-fun lt!2031459 () Unit!147457)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3239 (List!56927 List!56927) Unit!147457)

(assert (=> b!4933221 (= lt!2031459 (lemmaConcatTwoListThenFirstIsPrefix!3239 testedP!110 testedSuffix!70))))

(assert (= (and start!518308 res!2105382) b!4933208))

(assert (= (and b!4933208 res!2105376) b!4933209))

(assert (= (and b!4933209 res!2105378) b!4933221))

(assert (= (and b!4933221 (not res!2105377)) b!4933207))

(assert (= (and b!4933207 (not res!2105380)) b!4933214))

(assert (= (and b!4933214 (not res!2105375)) b!4933220))

(assert (= (and b!4933220 (not res!2105383)) b!4933212))

(assert (= (and b!4933212 (not res!2105379)) b!4933211))

(assert (= (and b!4933211 (not res!2105381)) b!4933217))

(assert (= (and b!4933217 c!840738) b!4933216))

(assert (= (and b!4933217 (not c!840738)) b!4933206))

(assert (= (and b!4933217 (not res!2105384)) b!4933219))

(get-info :version)

(assert (= (and start!518308 ((_ is Cons!56803) testedP!110)) b!4933215))

(assert (= (and start!518308 condSetEmpty!27728) setIsEmpty!27728))

(assert (= (and start!518308 (not condSetEmpty!27728)) setNonEmpty!27728))

(assert (= setNonEmpty!27728 b!4933213))

(assert (= start!518308 b!4933218))

(assert (= (and start!518308 ((_ is Cons!56803) testedSuffix!70)) b!4933210))

(declare-fun m!5953592 () Bool)

(assert (=> b!4933216 m!5953592))

(declare-fun m!5953594 () Bool)

(assert (=> b!4933216 m!5953594))

(declare-fun m!5953596 () Bool)

(assert (=> b!4933216 m!5953596))

(declare-fun m!5953598 () Bool)

(assert (=> setNonEmpty!27728 m!5953598))

(declare-fun m!5953600 () Bool)

(assert (=> b!4933217 m!5953600))

(declare-fun m!5953602 () Bool)

(assert (=> b!4933217 m!5953602))

(declare-fun m!5953604 () Bool)

(assert (=> b!4933218 m!5953604))

(declare-fun m!5953606 () Bool)

(assert (=> b!4933207 m!5953606))

(declare-fun m!5953608 () Bool)

(assert (=> b!4933207 m!5953608))

(declare-fun m!5953610 () Bool)

(assert (=> b!4933207 m!5953610))

(declare-fun m!5953612 () Bool)

(assert (=> b!4933208 m!5953612))

(declare-fun m!5953614 () Bool)

(assert (=> b!4933212 m!5953614))

(declare-fun m!5953616 () Bool)

(assert (=> b!4933219 m!5953616))

(assert (=> b!4933219 m!5953616))

(declare-fun m!5953618 () Bool)

(assert (=> b!4933219 m!5953618))

(declare-fun m!5953620 () Bool)

(assert (=> b!4933219 m!5953620))

(declare-fun m!5953622 () Bool)

(assert (=> b!4933219 m!5953622))

(declare-fun m!5953624 () Bool)

(assert (=> b!4933219 m!5953624))

(declare-fun m!5953626 () Bool)

(assert (=> b!4933219 m!5953626))

(declare-fun m!5953628 () Bool)

(assert (=> start!518308 m!5953628))

(declare-fun m!5953630 () Bool)

(assert (=> start!518308 m!5953630))

(declare-fun m!5953632 () Bool)

(assert (=> start!518308 m!5953632))

(declare-fun m!5953634 () Bool)

(assert (=> b!4933221 m!5953634))

(declare-fun m!5953636 () Bool)

(assert (=> b!4933221 m!5953636))

(declare-fun m!5953638 () Bool)

(assert (=> b!4933221 m!5953638))

(declare-fun m!5953640 () Bool)

(assert (=> b!4933211 m!5953640))

(declare-fun m!5953642 () Bool)

(assert (=> b!4933211 m!5953642))

(declare-fun m!5953644 () Bool)

(assert (=> b!4933211 m!5953644))

(declare-fun m!5953646 () Bool)

(assert (=> b!4933211 m!5953646))

(declare-fun m!5953648 () Bool)

(assert (=> b!4933211 m!5953648))

(declare-fun m!5953650 () Bool)

(assert (=> b!4933211 m!5953650))

(declare-fun m!5953652 () Bool)

(assert (=> b!4933211 m!5953652))

(assert (=> b!4933211 m!5953640))

(declare-fun m!5953654 () Bool)

(assert (=> b!4933220 m!5953654))

(declare-fun m!5953656 () Bool)

(assert (=> b!4933220 m!5953656))

(declare-fun m!5953658 () Bool)

(assert (=> b!4933220 m!5953658))

(declare-fun m!5953660 () Bool)

(assert (=> b!4933220 m!5953660))

(declare-fun m!5953662 () Bool)

(assert (=> b!4933209 m!5953662))

(check-sat (not start!518308) (not b!4933219) (not b!4933209) (not setNonEmpty!27728) (not b!4933215) (not b!4933220) (not b!4933216) (not b!4933207) (not b!4933210) tp_is_empty!36011 (not b!4933213) (not b!4933218) (not b!4933221) (not b!4933212) (not b!4933217) (not b!4933211) (not b!4933208))
(check-sat)
