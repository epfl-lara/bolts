; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517940 () Bool)

(assert start!517940)

(declare-fun b!4931259 () Bool)

(declare-fun e!3080934 () Bool)

(assert (=> b!4931259 (= e!3080934 true)))

(declare-fun lt!2030043 () Int)

(declare-datatypes ((C!27024 0))(
  ( (C!27025 (val!22846 Int)) )
))
(declare-datatypes ((List!56878 0))(
  ( (Nil!56754) (Cons!56754 (h!63202 C!27024) (t!367358 List!56878)) )
))
(declare-fun lt!2030044 () List!56878)

(declare-fun size!37564 (List!56878) Int)

(assert (=> b!4931259 (= lt!2030043 (size!37564 lt!2030044))))

(declare-fun b!4931260 () Bool)

(declare-fun e!3080933 () Bool)

(assert (=> b!4931260 (= e!3080933 e!3080934)))

(declare-fun res!2104450 () Bool)

(assert (=> b!4931260 (=> res!2104450 e!3080934)))

(declare-fun lt!2030040 () List!56878)

(declare-fun lt!2030046 () List!56878)

(assert (=> b!4931260 (= res!2104450 (not (= lt!2030040 lt!2030046)))))

(declare-datatypes ((IArray!29873 0))(
  ( (IArray!29874 (innerList!14994 List!56878)) )
))
(declare-datatypes ((Conc!14906 0))(
  ( (Node!14906 (left!41393 Conc!14906) (right!41723 Conc!14906) (csize!30042 Int) (cheight!15117 Int)) (Leaf!24792 (xs!18230 IArray!29873) (csize!30043 Int)) (Empty!14906) )
))
(declare-datatypes ((BalanceConc!29242 0))(
  ( (BalanceConc!29243 (c!840355 Conc!14906)) )
))
(declare-datatypes ((tuple2!61214 0))(
  ( (tuple2!61215 (_1!33910 BalanceConc!29242) (_2!33910 BalanceConc!29242)) )
))
(declare-fun lt!2030041 () tuple2!61214)

(declare-fun ++!12362 (List!56878 List!56878) List!56878)

(declare-fun list!18004 (BalanceConc!29242) List!56878)

(assert (=> b!4931260 (= lt!2030040 (++!12362 lt!2030044 (list!18004 (_2!33910 lt!2030041))))))

(assert (=> b!4931260 (= lt!2030044 (list!18004 (_1!33910 lt!2030041)))))

(declare-fun totalInput!685 () BalanceConc!29242)

(declare-fun testedPSize!70 () Int)

(declare-fun splitAt!285 (BalanceConc!29242 Int) tuple2!61214)

(assert (=> b!4931260 (= lt!2030041 (splitAt!285 totalInput!685 testedPSize!70))))

(declare-fun setIsEmpty!27644 () Bool)

(declare-fun setRes!27644 () Bool)

(assert (=> setIsEmpty!27644 setRes!27644))

(declare-fun b!4931261 () Bool)

(declare-fun e!3080938 () Bool)

(declare-fun e!3080937 () Bool)

(assert (=> b!4931261 (= e!3080938 (not e!3080937))))

(declare-fun res!2104448 () Bool)

(assert (=> b!4931261 (=> res!2104448 e!3080937)))

(declare-fun testedP!110 () List!56878)

(declare-fun isPrefix!4995 (List!56878 List!56878) Bool)

(assert (=> b!4931261 (= res!2104448 (not (isPrefix!4995 testedP!110 lt!2030046)))))

(declare-fun lt!2030047 () List!56878)

(assert (=> b!4931261 (isPrefix!4995 testedP!110 lt!2030047)))

(declare-datatypes ((Unit!147387 0))(
  ( (Unit!147388) )
))
(declare-fun lt!2030042 () Unit!147387)

(declare-fun testedSuffix!70 () List!56878)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3219 (List!56878 List!56878) Unit!147387)

(assert (=> b!4931261 (= lt!2030042 (lemmaConcatTwoListThenFirstIsPrefix!3219 testedP!110 testedSuffix!70))))

(declare-fun b!4931262 () Bool)

(declare-fun res!2104443 () Bool)

(assert (=> b!4931262 (=> res!2104443 e!3080934)))

(assert (=> b!4931262 (= res!2104443 (not (= lt!2030040 lt!2030047)))))

(declare-fun b!4931263 () Bool)

(declare-fun e!3080939 () Bool)

(declare-fun tp!1384433 () Bool)

(declare-fun inv!73656 (Conc!14906) Bool)

(assert (=> b!4931263 (= e!3080939 (and (inv!73656 (c!840355 totalInput!685)) tp!1384433))))

(declare-fun b!4931264 () Bool)

(declare-fun res!2104444 () Bool)

(assert (=> b!4931264 (=> (not res!2104444) (not e!3080938))))

(assert (=> b!4931264 (= res!2104444 (= testedPSize!70 (size!37564 testedP!110)))))

(declare-fun b!4931265 () Bool)

(assert (=> b!4931265 (= e!3080937 e!3080933)))

(declare-fun res!2104446 () Bool)

(assert (=> b!4931265 (=> res!2104446 e!3080933)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13397 0))(
  ( (ElementMatch!13397 (c!840356 C!27024)) (Concat!21970 (regOne!27306 Regex!13397) (regTwo!27306 Regex!13397)) (EmptyExpr!13397) (Star!13397 (reg!13726 Regex!13397)) (EmptyLang!13397) (Union!13397 (regOne!27307 Regex!13397) (regTwo!27307 Regex!13397)) )
))
(declare-datatypes ((List!56879 0))(
  ( (Nil!56755) (Cons!56755 (h!63203 Regex!13397) (t!367359 List!56879)) )
))
(declare-datatypes ((Context!6078 0))(
  ( (Context!6079 (exprs!3539 List!56879)) )
))
(declare-fun z!3568 () (InoxSet Context!6078))

(declare-fun lostCauseZipper!715 ((InoxSet Context!6078)) Bool)

(assert (=> b!4931265 (= res!2104446 (lostCauseZipper!715 z!3568))))

(declare-fun lt!2030045 () List!56878)

(assert (=> b!4931265 (and (= testedSuffix!70 lt!2030045) (= lt!2030045 testedSuffix!70))))

(declare-fun lt!2030039 () Unit!147387)

(declare-fun lemmaSamePrefixThenSameSuffix!2393 (List!56878 List!56878 List!56878 List!56878 List!56878) Unit!147387)

(assert (=> b!4931265 (= lt!2030039 (lemmaSamePrefixThenSameSuffix!2393 testedP!110 testedSuffix!70 testedP!110 lt!2030045 lt!2030046))))

(declare-fun getSuffix!2979 (List!56878 List!56878) List!56878)

(assert (=> b!4931265 (= lt!2030045 (getSuffix!2979 lt!2030046 testedP!110))))

(declare-fun res!2104445 () Bool)

(assert (=> start!517940 (=> (not res!2104445) (not e!3080938))))

(assert (=> start!517940 (= res!2104445 (= lt!2030047 lt!2030046))))

(assert (=> start!517940 (= lt!2030046 (list!18004 totalInput!685))))

(assert (=> start!517940 (= lt!2030047 (++!12362 testedP!110 testedSuffix!70))))

(assert (=> start!517940 e!3080938))

(declare-fun e!3080940 () Bool)

(assert (=> start!517940 e!3080940))

(declare-fun condSetEmpty!27644 () Bool)

(assert (=> start!517940 (= condSetEmpty!27644 (= z!3568 ((as const (Array Context!6078 Bool)) false)))))

(assert (=> start!517940 setRes!27644))

(assert (=> start!517940 true))

(declare-fun inv!73657 (BalanceConc!29242) Bool)

(assert (=> start!517940 (and (inv!73657 totalInput!685) e!3080939)))

(declare-fun e!3080936 () Bool)

(assert (=> start!517940 e!3080936))

(declare-fun b!4931266 () Bool)

(declare-fun tp_is_empty!35971 () Bool)

(declare-fun tp!1384432 () Bool)

(assert (=> b!4931266 (= e!3080940 (and tp_is_empty!35971 tp!1384432))))

(declare-fun b!4931267 () Bool)

(declare-fun res!2104442 () Bool)

(assert (=> b!4931267 (=> res!2104442 e!3080934)))

(declare-fun size!37565 (BalanceConc!29242) Int)

(assert (=> b!4931267 (= res!2104442 (not (= (size!37565 (_1!33910 lt!2030041)) testedPSize!70)))))

(declare-fun b!4931268 () Bool)

(declare-fun res!2104449 () Bool)

(assert (=> b!4931268 (=> res!2104449 e!3080933)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4931268 (= res!2104449 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4931269 () Bool)

(declare-fun tp!1384430 () Bool)

(assert (=> b!4931269 (= e!3080936 (and tp_is_empty!35971 tp!1384430))))

(declare-fun setNonEmpty!27644 () Bool)

(declare-fun tp!1384429 () Bool)

(declare-fun setElem!27644 () Context!6078)

(declare-fun e!3080935 () Bool)

(declare-fun inv!73658 (Context!6078) Bool)

(assert (=> setNonEmpty!27644 (= setRes!27644 (and tp!1384429 (inv!73658 setElem!27644) e!3080935))))

(declare-fun setRest!27644 () (InoxSet Context!6078))

(assert (=> setNonEmpty!27644 (= z!3568 ((_ map or) (store ((as const (Array Context!6078 Bool)) false) setElem!27644 true) setRest!27644))))

(declare-fun b!4931270 () Bool)

(declare-fun res!2104447 () Bool)

(assert (=> b!4931270 (=> (not res!2104447) (not e!3080938))))

(assert (=> b!4931270 (= res!2104447 (= totalInputSize!132 (size!37565 totalInput!685)))))

(declare-fun b!4931271 () Bool)

(declare-fun tp!1384431 () Bool)

(assert (=> b!4931271 (= e!3080935 tp!1384431)))

(assert (= (and start!517940 res!2104445) b!4931264))

(assert (= (and b!4931264 res!2104444) b!4931270))

(assert (= (and b!4931270 res!2104447) b!4931261))

(assert (= (and b!4931261 (not res!2104448)) b!4931265))

(assert (= (and b!4931265 (not res!2104446)) b!4931268))

(assert (= (and b!4931268 (not res!2104449)) b!4931260))

(assert (= (and b!4931260 (not res!2104450)) b!4931267))

(assert (= (and b!4931267 (not res!2104442)) b!4931262))

(assert (= (and b!4931262 (not res!2104443)) b!4931259))

(get-info :version)

(assert (= (and start!517940 ((_ is Cons!56754) testedP!110)) b!4931266))

(assert (= (and start!517940 condSetEmpty!27644) setIsEmpty!27644))

(assert (= (and start!517940 (not condSetEmpty!27644)) setNonEmpty!27644))

(assert (= setNonEmpty!27644 b!4931271))

(assert (= start!517940 b!4931263))

(assert (= (and start!517940 ((_ is Cons!56754) testedSuffix!70)) b!4931269))

(declare-fun m!5951314 () Bool)

(assert (=> b!4931260 m!5951314))

(assert (=> b!4931260 m!5951314))

(declare-fun m!5951316 () Bool)

(assert (=> b!4931260 m!5951316))

(declare-fun m!5951318 () Bool)

(assert (=> b!4931260 m!5951318))

(declare-fun m!5951320 () Bool)

(assert (=> b!4931260 m!5951320))

(declare-fun m!5951322 () Bool)

(assert (=> start!517940 m!5951322))

(declare-fun m!5951324 () Bool)

(assert (=> start!517940 m!5951324))

(declare-fun m!5951326 () Bool)

(assert (=> start!517940 m!5951326))

(declare-fun m!5951328 () Bool)

(assert (=> setNonEmpty!27644 m!5951328))

(declare-fun m!5951330 () Bool)

(assert (=> b!4931267 m!5951330))

(declare-fun m!5951332 () Bool)

(assert (=> b!4931259 m!5951332))

(declare-fun m!5951334 () Bool)

(assert (=> b!4931265 m!5951334))

(declare-fun m!5951336 () Bool)

(assert (=> b!4931265 m!5951336))

(declare-fun m!5951338 () Bool)

(assert (=> b!4931265 m!5951338))

(declare-fun m!5951340 () Bool)

(assert (=> b!4931264 m!5951340))

(declare-fun m!5951342 () Bool)

(assert (=> b!4931270 m!5951342))

(declare-fun m!5951344 () Bool)

(assert (=> b!4931261 m!5951344))

(declare-fun m!5951346 () Bool)

(assert (=> b!4931261 m!5951346))

(declare-fun m!5951348 () Bool)

(assert (=> b!4931261 m!5951348))

(declare-fun m!5951350 () Bool)

(assert (=> b!4931263 m!5951350))

(check-sat tp_is_empty!35971 (not setNonEmpty!27644) (not b!4931271) (not b!4931269) (not b!4931263) (not b!4931259) (not b!4931267) (not b!4931266) (not b!4931261) (not b!4931270) (not b!4931265) (not b!4931264) (not b!4931260) (not start!517940))
(check-sat)
