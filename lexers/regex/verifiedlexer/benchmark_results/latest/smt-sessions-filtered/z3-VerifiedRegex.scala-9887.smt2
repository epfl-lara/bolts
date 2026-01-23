; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517948 () Bool)

(assert start!517948)

(declare-fun setIsEmpty!27656 () Bool)

(declare-fun setRes!27656 () Bool)

(assert (=> setIsEmpty!27656 setRes!27656))

(declare-fun b!4931410 () Bool)

(declare-fun res!2104549 () Bool)

(declare-fun e!3081040 () Bool)

(assert (=> b!4931410 (=> (not res!2104549) (not e!3081040))))

(declare-fun testedPSize!70 () Int)

(declare-datatypes ((C!27032 0))(
  ( (C!27033 (val!22850 Int)) )
))
(declare-datatypes ((List!56886 0))(
  ( (Nil!56762) (Cons!56762 (h!63210 C!27032) (t!367366 List!56886)) )
))
(declare-fun testedP!110 () List!56886)

(declare-fun size!37572 (List!56886) Int)

(assert (=> b!4931410 (= res!2104549 (= testedPSize!70 (size!37572 testedP!110)))))

(declare-fun b!4931411 () Bool)

(declare-fun e!3081048 () Bool)

(declare-datatypes ((IArray!29881 0))(
  ( (IArray!29882 (innerList!14998 List!56886)) )
))
(declare-datatypes ((Conc!14910 0))(
  ( (Node!14910 (left!41399 Conc!14910) (right!41729 Conc!14910) (csize!30050 Int) (cheight!15121 Int)) (Leaf!24798 (xs!18234 IArray!29881) (csize!30051 Int)) (Empty!14910) )
))
(declare-datatypes ((BalanceConc!29250 0))(
  ( (BalanceConc!29251 (c!840363 Conc!14910)) )
))
(declare-fun totalInput!685 () BalanceConc!29250)

(declare-fun tp!1384489 () Bool)

(declare-fun inv!73674 (Conc!14910) Bool)

(assert (=> b!4931411 (= e!3081048 (and (inv!73674 (c!840363 totalInput!685)) tp!1384489))))

(declare-fun b!4931412 () Bool)

(declare-fun e!3081041 () Bool)

(declare-fun tp_is_empty!35979 () Bool)

(declare-fun tp!1384493 () Bool)

(assert (=> b!4931412 (= e!3081041 (and tp_is_empty!35979 tp!1384493))))

(declare-fun res!2104545 () Bool)

(assert (=> start!517948 (=> (not res!2104545) (not e!3081040))))

(declare-fun lt!2030163 () List!56886)

(declare-fun lt!2030169 () List!56886)

(assert (=> start!517948 (= res!2104545 (= lt!2030163 lt!2030169))))

(declare-fun list!18008 (BalanceConc!29250) List!56886)

(assert (=> start!517948 (= lt!2030169 (list!18008 totalInput!685))))

(declare-fun testedSuffix!70 () List!56886)

(declare-fun ++!12366 (List!56886 List!56886) List!56886)

(assert (=> start!517948 (= lt!2030163 (++!12366 testedP!110 testedSuffix!70))))

(assert (=> start!517948 e!3081040))

(assert (=> start!517948 e!3081041))

(declare-fun condSetEmpty!27656 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13401 0))(
  ( (ElementMatch!13401 (c!840364 C!27032)) (Concat!21974 (regOne!27314 Regex!13401) (regTwo!27314 Regex!13401)) (EmptyExpr!13401) (Star!13401 (reg!13730 Regex!13401)) (EmptyLang!13401) (Union!13401 (regOne!27315 Regex!13401) (regTwo!27315 Regex!13401)) )
))
(declare-datatypes ((List!56887 0))(
  ( (Nil!56763) (Cons!56763 (h!63211 Regex!13401) (t!367367 List!56887)) )
))
(declare-datatypes ((Context!6086 0))(
  ( (Context!6087 (exprs!3543 List!56887)) )
))
(declare-fun z!3568 () (InoxSet Context!6086))

(assert (=> start!517948 (= condSetEmpty!27656 (= z!3568 ((as const (Array Context!6086 Bool)) false)))))

(assert (=> start!517948 setRes!27656))

(assert (=> start!517948 true))

(declare-fun inv!73675 (BalanceConc!29250) Bool)

(assert (=> start!517948 (and (inv!73675 totalInput!685) e!3081048)))

(declare-fun e!3081045 () Bool)

(assert (=> start!517948 e!3081045))

(declare-fun b!4931413 () Bool)

(declare-fun e!3081042 () Bool)

(declare-fun tp!1384490 () Bool)

(assert (=> b!4931413 (= e!3081042 tp!1384490)))

(declare-fun b!4931414 () Bool)

(declare-fun tp!1384492 () Bool)

(assert (=> b!4931414 (= e!3081045 (and tp_is_empty!35979 tp!1384492))))

(declare-fun b!4931415 () Bool)

(declare-fun e!3081043 () Bool)

(declare-fun e!3081046 () Bool)

(assert (=> b!4931415 (= e!3081043 e!3081046)))

(declare-fun res!2104547 () Bool)

(assert (=> b!4931415 (=> res!2104547 e!3081046)))

(declare-fun lt!2030171 () List!56886)

(declare-fun lt!2030170 () List!56886)

(assert (=> b!4931415 (= res!2104547 (not (= (++!12366 lt!2030171 lt!2030170) lt!2030169)))))

(declare-datatypes ((tuple2!61222 0))(
  ( (tuple2!61223 (_1!33914 BalanceConc!29250) (_2!33914 BalanceConc!29250)) )
))
(declare-fun lt!2030168 () tuple2!61222)

(assert (=> b!4931415 (= lt!2030170 (list!18008 (_2!33914 lt!2030168)))))

(assert (=> b!4931415 (= lt!2030171 (list!18008 (_1!33914 lt!2030168)))))

(declare-fun splitAt!289 (BalanceConc!29250 Int) tuple2!61222)

(assert (=> b!4931415 (= lt!2030168 (splitAt!289 totalInput!685 testedPSize!70))))

(declare-fun b!4931416 () Bool)

(declare-fun e!3081044 () Bool)

(declare-fun e!3081047 () Bool)

(assert (=> b!4931416 (= e!3081044 (not e!3081047))))

(declare-fun res!2104551 () Bool)

(assert (=> b!4931416 (=> res!2104551 e!3081047)))

(declare-fun isPrefix!4999 (List!56886 List!56886) Bool)

(assert (=> b!4931416 (= res!2104551 (not (isPrefix!4999 testedP!110 lt!2030169)))))

(assert (=> b!4931416 (isPrefix!4999 testedP!110 lt!2030163)))

(declare-datatypes ((Unit!147395 0))(
  ( (Unit!147396) )
))
(declare-fun lt!2030173 () Unit!147395)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3223 (List!56886 List!56886) Unit!147395)

(assert (=> b!4931416 (= lt!2030173 (lemmaConcatTwoListThenFirstIsPrefix!3223 testedP!110 testedSuffix!70))))

(declare-fun b!4931417 () Bool)

(declare-fun res!2104548 () Bool)

(assert (=> b!4931417 (=> res!2104548 e!3081046)))

(declare-fun size!37573 (BalanceConc!29250) Int)

(assert (=> b!4931417 (= res!2104548 (not (= (size!37573 (_1!33914 lt!2030168)) testedPSize!70)))))

(declare-fun setNonEmpty!27656 () Bool)

(declare-fun tp!1384491 () Bool)

(declare-fun setElem!27656 () Context!6086)

(declare-fun inv!73676 (Context!6086) Bool)

(assert (=> setNonEmpty!27656 (= setRes!27656 (and tp!1384491 (inv!73676 setElem!27656) e!3081042))))

(declare-fun setRest!27656 () (InoxSet Context!6086))

(assert (=> setNonEmpty!27656 (= z!3568 ((_ map or) (store ((as const (Array Context!6086 Bool)) false) setElem!27656 true) setRest!27656))))

(declare-fun b!4931418 () Bool)

(declare-fun res!2104546 () Bool)

(assert (=> b!4931418 (=> res!2104546 e!3081043)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4931418 (= res!2104546 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4931419 () Bool)

(assert (=> b!4931419 (= e!3081040 e!3081044)))

(declare-fun res!2104552 () Bool)

(assert (=> b!4931419 (=> (not res!2104552) (not e!3081044))))

(declare-fun lt!2030167 () Int)

(assert (=> b!4931419 (= res!2104552 (= totalInputSize!132 lt!2030167))))

(assert (=> b!4931419 (= lt!2030167 (size!37573 totalInput!685))))

(declare-fun b!4931420 () Bool)

(assert (=> b!4931420 (= e!3081046 (and (<= 0 testedPSize!70) (< testedPSize!70 lt!2030167)))))

(declare-fun head!10538 (List!56886) C!27032)

(declare-fun drop!2232 (List!56886 Int) List!56886)

(declare-fun apply!13680 (List!56886 Int) C!27032)

(assert (=> b!4931420 (= (head!10538 (drop!2232 lt!2030169 testedPSize!70)) (apply!13680 lt!2030169 testedPSize!70))))

(declare-fun lt!2030166 () Unit!147395)

(declare-fun lemmaDropApply!1290 (List!56886 Int) Unit!147395)

(assert (=> b!4931420 (= lt!2030166 (lemmaDropApply!1290 lt!2030169 testedPSize!70))))

(assert (=> b!4931420 (not (or (not (= lt!2030171 testedP!110)) (not (= lt!2030170 testedSuffix!70))))))

(declare-fun lt!2030164 () Unit!147395)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!667 (List!56886 List!56886 List!56886 List!56886) Unit!147395)

(assert (=> b!4931420 (= lt!2030164 (lemmaConcatSameAndSameSizesThenSameLists!667 lt!2030171 lt!2030170 testedP!110 testedSuffix!70))))

(declare-fun b!4931421 () Bool)

(assert (=> b!4931421 (= e!3081047 e!3081043)))

(declare-fun res!2104550 () Bool)

(assert (=> b!4931421 (=> res!2104550 e!3081043)))

(declare-fun lostCauseZipper!719 ((InoxSet Context!6086)) Bool)

(assert (=> b!4931421 (= res!2104550 (lostCauseZipper!719 z!3568))))

(declare-fun lt!2030165 () List!56886)

(assert (=> b!4931421 (and (= testedSuffix!70 lt!2030165) (= lt!2030165 testedSuffix!70))))

(declare-fun lt!2030172 () Unit!147395)

(declare-fun lemmaSamePrefixThenSameSuffix!2397 (List!56886 List!56886 List!56886 List!56886 List!56886) Unit!147395)

(assert (=> b!4931421 (= lt!2030172 (lemmaSamePrefixThenSameSuffix!2397 testedP!110 testedSuffix!70 testedP!110 lt!2030165 lt!2030169))))

(declare-fun getSuffix!2983 (List!56886 List!56886) List!56886)

(assert (=> b!4931421 (= lt!2030165 (getSuffix!2983 lt!2030169 testedP!110))))

(assert (= (and start!517948 res!2104545) b!4931410))

(assert (= (and b!4931410 res!2104549) b!4931419))

(assert (= (and b!4931419 res!2104552) b!4931416))

(assert (= (and b!4931416 (not res!2104551)) b!4931421))

(assert (= (and b!4931421 (not res!2104550)) b!4931418))

(assert (= (and b!4931418 (not res!2104546)) b!4931415))

(assert (= (and b!4931415 (not res!2104547)) b!4931417))

(assert (= (and b!4931417 (not res!2104548)) b!4931420))

(get-info :version)

(assert (= (and start!517948 ((_ is Cons!56762) testedP!110)) b!4931412))

(assert (= (and start!517948 condSetEmpty!27656) setIsEmpty!27656))

(assert (= (and start!517948 (not condSetEmpty!27656)) setNonEmpty!27656))

(assert (= setNonEmpty!27656 b!4931413))

(assert (= start!517948 b!4931411))

(assert (= (and start!517948 ((_ is Cons!56762) testedSuffix!70)) b!4931414))

(declare-fun m!5951478 () Bool)

(assert (=> b!4931410 m!5951478))

(declare-fun m!5951480 () Bool)

(assert (=> b!4931419 m!5951480))

(declare-fun m!5951482 () Bool)

(assert (=> b!4931411 m!5951482))

(declare-fun m!5951484 () Bool)

(assert (=> b!4931416 m!5951484))

(declare-fun m!5951486 () Bool)

(assert (=> b!4931416 m!5951486))

(declare-fun m!5951488 () Bool)

(assert (=> b!4931416 m!5951488))

(declare-fun m!5951490 () Bool)

(assert (=> setNonEmpty!27656 m!5951490))

(declare-fun m!5951492 () Bool)

(assert (=> b!4931421 m!5951492))

(declare-fun m!5951494 () Bool)

(assert (=> b!4931421 m!5951494))

(declare-fun m!5951496 () Bool)

(assert (=> b!4931421 m!5951496))

(declare-fun m!5951498 () Bool)

(assert (=> b!4931420 m!5951498))

(declare-fun m!5951500 () Bool)

(assert (=> b!4931420 m!5951500))

(declare-fun m!5951502 () Bool)

(assert (=> b!4931420 m!5951502))

(declare-fun m!5951504 () Bool)

(assert (=> b!4931420 m!5951504))

(declare-fun m!5951506 () Bool)

(assert (=> b!4931420 m!5951506))

(assert (=> b!4931420 m!5951500))

(declare-fun m!5951508 () Bool)

(assert (=> b!4931415 m!5951508))

(declare-fun m!5951510 () Bool)

(assert (=> b!4931415 m!5951510))

(declare-fun m!5951512 () Bool)

(assert (=> b!4931415 m!5951512))

(declare-fun m!5951514 () Bool)

(assert (=> b!4931415 m!5951514))

(declare-fun m!5951516 () Bool)

(assert (=> b!4931417 m!5951516))

(declare-fun m!5951518 () Bool)

(assert (=> start!517948 m!5951518))

(declare-fun m!5951520 () Bool)

(assert (=> start!517948 m!5951520))

(declare-fun m!5951522 () Bool)

(assert (=> start!517948 m!5951522))

(check-sat (not b!4931416) (not b!4931412) (not b!4931410) (not b!4931419) (not b!4931421) (not start!517948) (not b!4931413) (not setNonEmpty!27656) (not b!4931417) tp_is_empty!35979 (not b!4931420) (not b!4931415) (not b!4931411) (not b!4931414))
(check-sat)
(get-model)

(declare-fun d!1587468 () Bool)

(declare-fun lt!2030176 () Int)

(assert (=> d!1587468 (= lt!2030176 (size!37572 (list!18008 totalInput!685)))))

(declare-fun size!37574 (Conc!14910) Int)

(assert (=> d!1587468 (= lt!2030176 (size!37574 (c!840363 totalInput!685)))))

(assert (=> d!1587468 (= (size!37573 totalInput!685) lt!2030176)))

(declare-fun bs!1180331 () Bool)

(assert (= bs!1180331 d!1587468))

(assert (=> bs!1180331 m!5951518))

(assert (=> bs!1180331 m!5951518))

(declare-fun m!5951524 () Bool)

(assert (=> bs!1180331 m!5951524))

(declare-fun m!5951526 () Bool)

(assert (=> bs!1180331 m!5951526))

(assert (=> b!4931419 d!1587468))

(declare-fun b!4931430 () Bool)

(declare-fun e!3081054 () List!56886)

(assert (=> b!4931430 (= e!3081054 lt!2030170)))

(declare-fun b!4931432 () Bool)

(declare-fun res!2104557 () Bool)

(declare-fun e!3081053 () Bool)

(assert (=> b!4931432 (=> (not res!2104557) (not e!3081053))))

(declare-fun lt!2030179 () List!56886)

(assert (=> b!4931432 (= res!2104557 (= (size!37572 lt!2030179) (+ (size!37572 lt!2030171) (size!37572 lt!2030170))))))

(declare-fun b!4931433 () Bool)

(assert (=> b!4931433 (= e!3081053 (or (not (= lt!2030170 Nil!56762)) (= lt!2030179 lt!2030171)))))

(declare-fun d!1587470 () Bool)

(assert (=> d!1587470 e!3081053))

(declare-fun res!2104558 () Bool)

(assert (=> d!1587470 (=> (not res!2104558) (not e!3081053))))

(declare-fun content!10088 (List!56886) (InoxSet C!27032))

(assert (=> d!1587470 (= res!2104558 (= (content!10088 lt!2030179) ((_ map or) (content!10088 lt!2030171) (content!10088 lt!2030170))))))

(assert (=> d!1587470 (= lt!2030179 e!3081054)))

(declare-fun c!840367 () Bool)

(assert (=> d!1587470 (= c!840367 ((_ is Nil!56762) lt!2030171))))

(assert (=> d!1587470 (= (++!12366 lt!2030171 lt!2030170) lt!2030179)))

(declare-fun b!4931431 () Bool)

(assert (=> b!4931431 (= e!3081054 (Cons!56762 (h!63210 lt!2030171) (++!12366 (t!367366 lt!2030171) lt!2030170)))))

(assert (= (and d!1587470 c!840367) b!4931430))

(assert (= (and d!1587470 (not c!840367)) b!4931431))

(assert (= (and d!1587470 res!2104558) b!4931432))

(assert (= (and b!4931432 res!2104557) b!4931433))

(declare-fun m!5951528 () Bool)

(assert (=> b!4931432 m!5951528))

(declare-fun m!5951530 () Bool)

(assert (=> b!4931432 m!5951530))

(declare-fun m!5951532 () Bool)

(assert (=> b!4931432 m!5951532))

(declare-fun m!5951534 () Bool)

(assert (=> d!1587470 m!5951534))

(declare-fun m!5951536 () Bool)

(assert (=> d!1587470 m!5951536))

(declare-fun m!5951538 () Bool)

(assert (=> d!1587470 m!5951538))

(declare-fun m!5951540 () Bool)

(assert (=> b!4931431 m!5951540))

(assert (=> b!4931415 d!1587470))

(declare-fun d!1587472 () Bool)

(declare-fun list!18009 (Conc!14910) List!56886)

(assert (=> d!1587472 (= (list!18008 (_2!33914 lt!2030168)) (list!18009 (c!840363 (_2!33914 lt!2030168))))))

(declare-fun bs!1180332 () Bool)

(assert (= bs!1180332 d!1587472))

(declare-fun m!5951542 () Bool)

(assert (=> bs!1180332 m!5951542))

(assert (=> b!4931415 d!1587472))

(declare-fun d!1587474 () Bool)

(assert (=> d!1587474 (= (list!18008 (_1!33914 lt!2030168)) (list!18009 (c!840363 (_1!33914 lt!2030168))))))

(declare-fun bs!1180333 () Bool)

(assert (= bs!1180333 d!1587474))

(declare-fun m!5951544 () Bool)

(assert (=> bs!1180333 m!5951544))

(assert (=> b!4931415 d!1587474))

(declare-fun d!1587476 () Bool)

(declare-fun e!3081057 () Bool)

(assert (=> d!1587476 e!3081057))

(declare-fun res!2104564 () Bool)

(assert (=> d!1587476 (=> (not res!2104564) (not e!3081057))))

(declare-fun lt!2030188 () tuple2!61222)

(declare-fun isBalanced!4102 (Conc!14910) Bool)

(assert (=> d!1587476 (= res!2104564 (isBalanced!4102 (c!840363 (_1!33914 lt!2030188))))))

(declare-datatypes ((tuple2!61224 0))(
  ( (tuple2!61225 (_1!33915 Conc!14910) (_2!33915 Conc!14910)) )
))
(declare-fun lt!2030187 () tuple2!61224)

(assert (=> d!1587476 (= lt!2030188 (tuple2!61223 (BalanceConc!29251 (_1!33915 lt!2030187)) (BalanceConc!29251 (_2!33915 lt!2030187))))))

(declare-fun splitAt!290 (Conc!14910 Int) tuple2!61224)

(assert (=> d!1587476 (= lt!2030187 (splitAt!290 (c!840363 totalInput!685) testedPSize!70))))

(assert (=> d!1587476 (isBalanced!4102 (c!840363 totalInput!685))))

(assert (=> d!1587476 (= (splitAt!289 totalInput!685 testedPSize!70) lt!2030188)))

(declare-fun b!4931438 () Bool)

(declare-fun res!2104563 () Bool)

(assert (=> b!4931438 (=> (not res!2104563) (not e!3081057))))

(assert (=> b!4931438 (= res!2104563 (isBalanced!4102 (c!840363 (_2!33914 lt!2030188))))))

(declare-fun b!4931439 () Bool)

(declare-datatypes ((tuple2!61226 0))(
  ( (tuple2!61227 (_1!33916 List!56886) (_2!33916 List!56886)) )
))
(declare-fun splitAtIndex!108 (List!56886 Int) tuple2!61226)

(assert (=> b!4931439 (= e!3081057 (= (tuple2!61227 (list!18008 (_1!33914 lt!2030188)) (list!18008 (_2!33914 lt!2030188))) (splitAtIndex!108 (list!18008 totalInput!685) testedPSize!70)))))

(assert (= (and d!1587476 res!2104564) b!4931438))

(assert (= (and b!4931438 res!2104563) b!4931439))

(declare-fun m!5951548 () Bool)

(assert (=> d!1587476 m!5951548))

(declare-fun m!5951550 () Bool)

(assert (=> d!1587476 m!5951550))

(declare-fun m!5951552 () Bool)

(assert (=> d!1587476 m!5951552))

(declare-fun m!5951554 () Bool)

(assert (=> b!4931438 m!5951554))

(declare-fun m!5951556 () Bool)

(assert (=> b!4931439 m!5951556))

(declare-fun m!5951558 () Bool)

(assert (=> b!4931439 m!5951558))

(assert (=> b!4931439 m!5951518))

(assert (=> b!4931439 m!5951518))

(declare-fun m!5951560 () Bool)

(assert (=> b!4931439 m!5951560))

(assert (=> b!4931415 d!1587476))

(declare-fun d!1587482 () Bool)

(declare-fun lt!2030193 () Int)

(assert (=> d!1587482 (>= lt!2030193 0)))

(declare-fun e!3081070 () Int)

(assert (=> d!1587482 (= lt!2030193 e!3081070)))

(declare-fun c!840378 () Bool)

(assert (=> d!1587482 (= c!840378 ((_ is Nil!56762) testedP!110))))

(assert (=> d!1587482 (= (size!37572 testedP!110) lt!2030193)))

(declare-fun b!4931462 () Bool)

(assert (=> b!4931462 (= e!3081070 0)))

(declare-fun b!4931463 () Bool)

(assert (=> b!4931463 (= e!3081070 (+ 1 (size!37572 (t!367366 testedP!110))))))

(assert (= (and d!1587482 c!840378) b!4931462))

(assert (= (and d!1587482 (not c!840378)) b!4931463))

(declare-fun m!5951562 () Bool)

(assert (=> b!4931463 m!5951562))

(assert (=> b!4931410 d!1587482))

(declare-fun d!1587484 () Bool)

(assert (=> d!1587484 (= (head!10538 (drop!2232 lt!2030169 testedPSize!70)) (h!63210 (drop!2232 lt!2030169 testedPSize!70)))))

(assert (=> b!4931420 d!1587484))

(declare-fun d!1587486 () Bool)

(assert (=> d!1587486 (= (head!10538 (drop!2232 lt!2030169 testedPSize!70)) (apply!13680 lt!2030169 testedPSize!70))))

(declare-fun lt!2030197 () Unit!147395)

(declare-fun choose!36141 (List!56886 Int) Unit!147395)

(assert (=> d!1587486 (= lt!2030197 (choose!36141 lt!2030169 testedPSize!70))))

(declare-fun e!3081078 () Bool)

(assert (=> d!1587486 e!3081078))

(declare-fun res!2104570 () Bool)

(assert (=> d!1587486 (=> (not res!2104570) (not e!3081078))))

(assert (=> d!1587486 (= res!2104570 (>= testedPSize!70 0))))

(assert (=> d!1587486 (= (lemmaDropApply!1290 lt!2030169 testedPSize!70) lt!2030197)))

(declare-fun b!4931475 () Bool)

(assert (=> b!4931475 (= e!3081078 (< testedPSize!70 (size!37572 lt!2030169)))))

(assert (= (and d!1587486 res!2104570) b!4931475))

(assert (=> d!1587486 m!5951500))

(assert (=> d!1587486 m!5951500))

(assert (=> d!1587486 m!5951502))

(assert (=> d!1587486 m!5951504))

(declare-fun m!5951574 () Bool)

(assert (=> d!1587486 m!5951574))

(declare-fun m!5951576 () Bool)

(assert (=> b!4931475 m!5951576))

(assert (=> b!4931420 d!1587486))

(declare-fun b!4931503 () Bool)

(declare-fun e!3081098 () Bool)

(declare-fun lt!2030205 () List!56886)

(declare-fun e!3081096 () Int)

(assert (=> b!4931503 (= e!3081098 (= (size!37572 lt!2030205) e!3081096))))

(declare-fun c!840393 () Bool)

(assert (=> b!4931503 (= c!840393 (<= testedPSize!70 0))))

(declare-fun d!1587490 () Bool)

(assert (=> d!1587490 e!3081098))

(declare-fun res!2104578 () Bool)

(assert (=> d!1587490 (=> (not res!2104578) (not e!3081098))))

(assert (=> d!1587490 (= res!2104578 (= ((_ map implies) (content!10088 lt!2030205) (content!10088 lt!2030169)) ((as const (InoxSet C!27032)) true)))))

(declare-fun e!3081100 () List!56886)

(assert (=> d!1587490 (= lt!2030205 e!3081100)))

(declare-fun c!840394 () Bool)

(assert (=> d!1587490 (= c!840394 ((_ is Nil!56762) lt!2030169))))

(assert (=> d!1587490 (= (drop!2232 lt!2030169 testedPSize!70) lt!2030205)))

(declare-fun b!4931504 () Bool)

(declare-fun e!3081099 () Int)

(declare-fun call!344154 () Int)

(assert (=> b!4931504 (= e!3081099 (- call!344154 testedPSize!70))))

(declare-fun bm!344149 () Bool)

(assert (=> bm!344149 (= call!344154 (size!37572 lt!2030169))))

(declare-fun b!4931505 () Bool)

(assert (=> b!4931505 (= e!3081096 call!344154)))

(declare-fun b!4931506 () Bool)

(assert (=> b!4931506 (= e!3081099 0)))

(declare-fun b!4931507 () Bool)

(assert (=> b!4931507 (= e!3081100 Nil!56762)))

(declare-fun b!4931508 () Bool)

(declare-fun e!3081097 () List!56886)

(assert (=> b!4931508 (= e!3081097 (drop!2232 (t!367366 lt!2030169) (- testedPSize!70 1)))))

(declare-fun b!4931509 () Bool)

(assert (=> b!4931509 (= e!3081096 e!3081099)))

(declare-fun c!840395 () Bool)

(assert (=> b!4931509 (= c!840395 (>= testedPSize!70 call!344154))))

(declare-fun b!4931510 () Bool)

(assert (=> b!4931510 (= e!3081100 e!3081097)))

(declare-fun c!840396 () Bool)

(assert (=> b!4931510 (= c!840396 (<= testedPSize!70 0))))

(declare-fun b!4931511 () Bool)

(assert (=> b!4931511 (= e!3081097 lt!2030169)))

(assert (= (and d!1587490 c!840394) b!4931507))

(assert (= (and d!1587490 (not c!840394)) b!4931510))

(assert (= (and b!4931510 c!840396) b!4931511))

(assert (= (and b!4931510 (not c!840396)) b!4931508))

(assert (= (and d!1587490 res!2104578) b!4931503))

(assert (= (and b!4931503 c!840393) b!4931505))

(assert (= (and b!4931503 (not c!840393)) b!4931509))

(assert (= (and b!4931509 c!840395) b!4931506))

(assert (= (and b!4931509 (not c!840395)) b!4931504))

(assert (= (or b!4931505 b!4931509 b!4931504) bm!344149))

(declare-fun m!5951580 () Bool)

(assert (=> b!4931503 m!5951580))

(declare-fun m!5951582 () Bool)

(assert (=> d!1587490 m!5951582))

(declare-fun m!5951584 () Bool)

(assert (=> d!1587490 m!5951584))

(assert (=> bm!344149 m!5951576))

(declare-fun m!5951586 () Bool)

(assert (=> b!4931508 m!5951586))

(assert (=> b!4931420 d!1587490))

(declare-fun d!1587496 () Bool)

(assert (=> d!1587496 (and (= lt!2030171 testedP!110) (= lt!2030170 testedSuffix!70))))

(declare-fun lt!2030209 () Unit!147395)

(declare-fun choose!36143 (List!56886 List!56886 List!56886 List!56886) Unit!147395)

(assert (=> d!1587496 (= lt!2030209 (choose!36143 lt!2030171 lt!2030170 testedP!110 testedSuffix!70))))

(assert (=> d!1587496 (= (++!12366 lt!2030171 lt!2030170) (++!12366 testedP!110 testedSuffix!70))))

(assert (=> d!1587496 (= (lemmaConcatSameAndSameSizesThenSameLists!667 lt!2030171 lt!2030170 testedP!110 testedSuffix!70) lt!2030209)))

(declare-fun bs!1180335 () Bool)

(assert (= bs!1180335 d!1587496))

(declare-fun m!5951596 () Bool)

(assert (=> bs!1180335 m!5951596))

(assert (=> bs!1180335 m!5951508))

(assert (=> bs!1180335 m!5951520))

(assert (=> b!4931420 d!1587496))

(declare-fun d!1587500 () Bool)

(declare-fun lt!2030216 () C!27032)

(declare-fun contains!19461 (List!56886 C!27032) Bool)

(assert (=> d!1587500 (contains!19461 lt!2030169 lt!2030216)))

(declare-fun e!3081119 () C!27032)

(assert (=> d!1587500 (= lt!2030216 e!3081119)))

(declare-fun c!840400 () Bool)

(assert (=> d!1587500 (= c!840400 (= testedPSize!70 0))))

(declare-fun e!3081120 () Bool)

(assert (=> d!1587500 e!3081120))

(declare-fun res!2104598 () Bool)

(assert (=> d!1587500 (=> (not res!2104598) (not e!3081120))))

(assert (=> d!1587500 (= res!2104598 (<= 0 testedPSize!70))))

(assert (=> d!1587500 (= (apply!13680 lt!2030169 testedPSize!70) lt!2030216)))

(declare-fun b!4931537 () Bool)

(assert (=> b!4931537 (= e!3081120 (< testedPSize!70 (size!37572 lt!2030169)))))

(declare-fun b!4931538 () Bool)

(assert (=> b!4931538 (= e!3081119 (head!10538 lt!2030169))))

(declare-fun b!4931539 () Bool)

(declare-fun tail!9685 (List!56886) List!56886)

(assert (=> b!4931539 (= e!3081119 (apply!13680 (tail!9685 lt!2030169) (- testedPSize!70 1)))))

(assert (= (and d!1587500 res!2104598) b!4931537))

(assert (= (and d!1587500 c!840400) b!4931538))

(assert (= (and d!1587500 (not c!840400)) b!4931539))

(declare-fun m!5951612 () Bool)

(assert (=> d!1587500 m!5951612))

(assert (=> b!4931537 m!5951576))

(declare-fun m!5951614 () Bool)

(assert (=> b!4931538 m!5951614))

(declare-fun m!5951616 () Bool)

(assert (=> b!4931539 m!5951616))

(assert (=> b!4931539 m!5951616))

(declare-fun m!5951618 () Bool)

(assert (=> b!4931539 m!5951618))

(assert (=> b!4931420 d!1587500))

(declare-fun b!4931554 () Bool)

(declare-fun e!3081131 () Bool)

(assert (=> b!4931554 (= e!3081131 (isPrefix!4999 (tail!9685 testedP!110) (tail!9685 lt!2030169)))))

(declare-fun d!1587506 () Bool)

(declare-fun e!3081129 () Bool)

(assert (=> d!1587506 e!3081129))

(declare-fun res!2104609 () Bool)

(assert (=> d!1587506 (=> res!2104609 e!3081129)))

(declare-fun lt!2030227 () Bool)

(assert (=> d!1587506 (= res!2104609 (not lt!2030227))))

(declare-fun e!3081130 () Bool)

(assert (=> d!1587506 (= lt!2030227 e!3081130)))

(declare-fun res!2104610 () Bool)

(assert (=> d!1587506 (=> res!2104610 e!3081130)))

(assert (=> d!1587506 (= res!2104610 ((_ is Nil!56762) testedP!110))))

(assert (=> d!1587506 (= (isPrefix!4999 testedP!110 lt!2030169) lt!2030227)))

(declare-fun b!4931552 () Bool)

(assert (=> b!4931552 (= e!3081130 e!3081131)))

(declare-fun res!2104608 () Bool)

(assert (=> b!4931552 (=> (not res!2104608) (not e!3081131))))

(assert (=> b!4931552 (= res!2104608 (not ((_ is Nil!56762) lt!2030169)))))

(declare-fun b!4931553 () Bool)

(declare-fun res!2104607 () Bool)

(assert (=> b!4931553 (=> (not res!2104607) (not e!3081131))))

(assert (=> b!4931553 (= res!2104607 (= (head!10538 testedP!110) (head!10538 lt!2030169)))))

(declare-fun b!4931555 () Bool)

(assert (=> b!4931555 (= e!3081129 (>= (size!37572 lt!2030169) (size!37572 testedP!110)))))

(assert (= (and d!1587506 (not res!2104610)) b!4931552))

(assert (= (and b!4931552 res!2104608) b!4931553))

(assert (= (and b!4931553 res!2104607) b!4931554))

(assert (= (and d!1587506 (not res!2104609)) b!4931555))

(declare-fun m!5951628 () Bool)

(assert (=> b!4931554 m!5951628))

(assert (=> b!4931554 m!5951616))

(assert (=> b!4931554 m!5951628))

(assert (=> b!4931554 m!5951616))

(declare-fun m!5951632 () Bool)

(assert (=> b!4931554 m!5951632))

(declare-fun m!5951634 () Bool)

(assert (=> b!4931553 m!5951634))

(assert (=> b!4931553 m!5951614))

(assert (=> b!4931555 m!5951576))

(assert (=> b!4931555 m!5951478))

(assert (=> b!4931416 d!1587506))

(declare-fun b!4931560 () Bool)

(declare-fun e!3081135 () Bool)

(assert (=> b!4931560 (= e!3081135 (isPrefix!4999 (tail!9685 testedP!110) (tail!9685 lt!2030163)))))

(declare-fun d!1587514 () Bool)

(declare-fun e!3081133 () Bool)

(assert (=> d!1587514 e!3081133))

(declare-fun res!2104613 () Bool)

(assert (=> d!1587514 (=> res!2104613 e!3081133)))

(declare-fun lt!2030229 () Bool)

(assert (=> d!1587514 (= res!2104613 (not lt!2030229))))

(declare-fun e!3081134 () Bool)

(assert (=> d!1587514 (= lt!2030229 e!3081134)))

(declare-fun res!2104614 () Bool)

(assert (=> d!1587514 (=> res!2104614 e!3081134)))

(assert (=> d!1587514 (= res!2104614 ((_ is Nil!56762) testedP!110))))

(assert (=> d!1587514 (= (isPrefix!4999 testedP!110 lt!2030163) lt!2030229)))

(declare-fun b!4931558 () Bool)

(assert (=> b!4931558 (= e!3081134 e!3081135)))

(declare-fun res!2104612 () Bool)

(assert (=> b!4931558 (=> (not res!2104612) (not e!3081135))))

(assert (=> b!4931558 (= res!2104612 (not ((_ is Nil!56762) lt!2030163)))))

(declare-fun b!4931559 () Bool)

(declare-fun res!2104611 () Bool)

(assert (=> b!4931559 (=> (not res!2104611) (not e!3081135))))

(assert (=> b!4931559 (= res!2104611 (= (head!10538 testedP!110) (head!10538 lt!2030163)))))

(declare-fun b!4931561 () Bool)

(assert (=> b!4931561 (= e!3081133 (>= (size!37572 lt!2030163) (size!37572 testedP!110)))))

(assert (= (and d!1587514 (not res!2104614)) b!4931558))

(assert (= (and b!4931558 res!2104612) b!4931559))

(assert (= (and b!4931559 res!2104611) b!4931560))

(assert (= (and d!1587514 (not res!2104613)) b!4931561))

(assert (=> b!4931560 m!5951628))

(declare-fun m!5951636 () Bool)

(assert (=> b!4931560 m!5951636))

(assert (=> b!4931560 m!5951628))

(assert (=> b!4931560 m!5951636))

(declare-fun m!5951638 () Bool)

(assert (=> b!4931560 m!5951638))

(assert (=> b!4931559 m!5951634))

(declare-fun m!5951640 () Bool)

(assert (=> b!4931559 m!5951640))

(declare-fun m!5951642 () Bool)

(assert (=> b!4931561 m!5951642))

(assert (=> b!4931561 m!5951478))

(assert (=> b!4931416 d!1587514))

(declare-fun d!1587516 () Bool)

(assert (=> d!1587516 (isPrefix!4999 testedP!110 (++!12366 testedP!110 testedSuffix!70))))

(declare-fun lt!2030232 () Unit!147395)

(declare-fun choose!36144 (List!56886 List!56886) Unit!147395)

(assert (=> d!1587516 (= lt!2030232 (choose!36144 testedP!110 testedSuffix!70))))

(assert (=> d!1587516 (= (lemmaConcatTwoListThenFirstIsPrefix!3223 testedP!110 testedSuffix!70) lt!2030232)))

(declare-fun bs!1180339 () Bool)

(assert (= bs!1180339 d!1587516))

(assert (=> bs!1180339 m!5951520))

(assert (=> bs!1180339 m!5951520))

(declare-fun m!5951646 () Bool)

(assert (=> bs!1180339 m!5951646))

(declare-fun m!5951648 () Bool)

(assert (=> bs!1180339 m!5951648))

(assert (=> b!4931416 d!1587516))

(declare-fun d!1587520 () Bool)

(declare-fun c!840409 () Bool)

(assert (=> d!1587520 (= c!840409 ((_ is Node!14910) (c!840363 totalInput!685)))))

(declare-fun e!3081146 () Bool)

(assert (=> d!1587520 (= (inv!73674 (c!840363 totalInput!685)) e!3081146)))

(declare-fun b!4931580 () Bool)

(declare-fun inv!73677 (Conc!14910) Bool)

(assert (=> b!4931580 (= e!3081146 (inv!73677 (c!840363 totalInput!685)))))

(declare-fun b!4931581 () Bool)

(declare-fun e!3081147 () Bool)

(assert (=> b!4931581 (= e!3081146 e!3081147)))

(declare-fun res!2104623 () Bool)

(assert (=> b!4931581 (= res!2104623 (not ((_ is Leaf!24798) (c!840363 totalInput!685))))))

(assert (=> b!4931581 (=> res!2104623 e!3081147)))

(declare-fun b!4931582 () Bool)

(declare-fun inv!73678 (Conc!14910) Bool)

(assert (=> b!4931582 (= e!3081147 (inv!73678 (c!840363 totalInput!685)))))

(assert (= (and d!1587520 c!840409) b!4931580))

(assert (= (and d!1587520 (not c!840409)) b!4931581))

(assert (= (and b!4931581 (not res!2104623)) b!4931582))

(declare-fun m!5951662 () Bool)

(assert (=> b!4931580 m!5951662))

(declare-fun m!5951664 () Bool)

(assert (=> b!4931582 m!5951664))

(assert (=> b!4931411 d!1587520))

(declare-fun d!1587524 () Bool)

(assert (=> d!1587524 (= (list!18008 totalInput!685) (list!18009 (c!840363 totalInput!685)))))

(declare-fun bs!1180340 () Bool)

(assert (= bs!1180340 d!1587524))

(declare-fun m!5951666 () Bool)

(assert (=> bs!1180340 m!5951666))

(assert (=> start!517948 d!1587524))

(declare-fun b!4931583 () Bool)

(declare-fun e!3081149 () List!56886)

(assert (=> b!4931583 (= e!3081149 testedSuffix!70)))

(declare-fun b!4931585 () Bool)

(declare-fun res!2104624 () Bool)

(declare-fun e!3081148 () Bool)

(assert (=> b!4931585 (=> (not res!2104624) (not e!3081148))))

(declare-fun lt!2030236 () List!56886)

(assert (=> b!4931585 (= res!2104624 (= (size!37572 lt!2030236) (+ (size!37572 testedP!110) (size!37572 testedSuffix!70))))))

(declare-fun b!4931586 () Bool)

(assert (=> b!4931586 (= e!3081148 (or (not (= testedSuffix!70 Nil!56762)) (= lt!2030236 testedP!110)))))

(declare-fun d!1587526 () Bool)

(assert (=> d!1587526 e!3081148))

(declare-fun res!2104625 () Bool)

(assert (=> d!1587526 (=> (not res!2104625) (not e!3081148))))

(assert (=> d!1587526 (= res!2104625 (= (content!10088 lt!2030236) ((_ map or) (content!10088 testedP!110) (content!10088 testedSuffix!70))))))

(assert (=> d!1587526 (= lt!2030236 e!3081149)))

(declare-fun c!840410 () Bool)

(assert (=> d!1587526 (= c!840410 ((_ is Nil!56762) testedP!110))))

(assert (=> d!1587526 (= (++!12366 testedP!110 testedSuffix!70) lt!2030236)))

(declare-fun b!4931584 () Bool)

(assert (=> b!4931584 (= e!3081149 (Cons!56762 (h!63210 testedP!110) (++!12366 (t!367366 testedP!110) testedSuffix!70)))))

(assert (= (and d!1587526 c!840410) b!4931583))

(assert (= (and d!1587526 (not c!840410)) b!4931584))

(assert (= (and d!1587526 res!2104625) b!4931585))

(assert (= (and b!4931585 res!2104624) b!4931586))

(declare-fun m!5951668 () Bool)

(assert (=> b!4931585 m!5951668))

(assert (=> b!4931585 m!5951478))

(declare-fun m!5951670 () Bool)

(assert (=> b!4931585 m!5951670))

(declare-fun m!5951672 () Bool)

(assert (=> d!1587526 m!5951672))

(declare-fun m!5951674 () Bool)

(assert (=> d!1587526 m!5951674))

(declare-fun m!5951676 () Bool)

(assert (=> d!1587526 m!5951676))

(declare-fun m!5951678 () Bool)

(assert (=> b!4931584 m!5951678))

(assert (=> start!517948 d!1587526))

(declare-fun d!1587528 () Bool)

(assert (=> d!1587528 (= (inv!73675 totalInput!685) (isBalanced!4102 (c!840363 totalInput!685)))))

(declare-fun bs!1180343 () Bool)

(assert (= bs!1180343 d!1587528))

(assert (=> bs!1180343 m!5951552))

(assert (=> start!517948 d!1587528))

(declare-fun bs!1180350 () Bool)

(declare-fun b!4931616 () Bool)

(declare-fun d!1587536 () Bool)

(assert (= bs!1180350 (and b!4931616 d!1587536)))

(declare-fun lambda!245529 () Int)

(declare-fun lambda!245528 () Int)

(assert (=> bs!1180350 (not (= lambda!245529 lambda!245528))))

(declare-fun bs!1180351 () Bool)

(declare-fun b!4931617 () Bool)

(assert (= bs!1180351 (and b!4931617 d!1587536)))

(declare-fun lambda!245530 () Int)

(assert (=> bs!1180351 (not (= lambda!245530 lambda!245528))))

(declare-fun bs!1180352 () Bool)

(assert (= bs!1180352 (and b!4931617 b!4931616)))

(assert (=> bs!1180352 (= lambda!245530 lambda!245529)))

(declare-fun e!3081174 () Unit!147395)

(declare-fun Unit!147397 () Unit!147395)

(assert (=> b!4931617 (= e!3081174 Unit!147397)))

(declare-datatypes ((List!56888 0))(
  ( (Nil!56764) (Cons!56764 (h!63212 Context!6086) (t!367368 List!56888)) )
))
(declare-fun lt!2030291 () List!56888)

(declare-fun call!344165 () List!56888)

(assert (=> b!4931617 (= lt!2030291 call!344165)))

(declare-fun lt!2030288 () Unit!147395)

(declare-fun lemmaForallThenNotExists!173 (List!56888 Int) Unit!147395)

(assert (=> b!4931617 (= lt!2030288 (lemmaForallThenNotExists!173 lt!2030291 lambda!245528))))

(declare-fun call!344166 () Bool)

(assert (=> b!4931617 (not call!344166)))

(declare-fun lt!2030290 () Unit!147395)

(assert (=> b!4931617 (= lt!2030290 lt!2030288)))

(declare-fun lt!2030293 () Bool)

(declare-datatypes ((Option!14170 0))(
  ( (None!14169) (Some!14169 (v!50139 List!56886)) )
))
(declare-fun isEmpty!30595 (Option!14170) Bool)

(declare-fun getLanguageWitness!628 ((InoxSet Context!6086)) Option!14170)

(assert (=> d!1587536 (= lt!2030293 (isEmpty!30595 (getLanguageWitness!628 z!3568)))))

(declare-fun forall!13159 ((InoxSet Context!6086) Int) Bool)

(assert (=> d!1587536 (= lt!2030293 (forall!13159 z!3568 lambda!245528))))

(declare-fun lt!2030289 () Unit!147395)

(assert (=> d!1587536 (= lt!2030289 e!3081174)))

(declare-fun c!840436 () Bool)

(assert (=> d!1587536 (= c!840436 (not (forall!13159 z!3568 lambda!245528)))))

(assert (=> d!1587536 (= (lostCauseZipper!719 z!3568) lt!2030293)))

(declare-fun Unit!147399 () Unit!147395)

(assert (=> b!4931616 (= e!3081174 Unit!147399)))

(declare-fun lt!2030294 () List!56888)

(assert (=> b!4931616 (= lt!2030294 call!344165)))

(declare-fun lt!2030292 () Unit!147395)

(declare-fun lemmaNotForallThenExists!191 (List!56888 Int) Unit!147395)

(assert (=> b!4931616 (= lt!2030292 (lemmaNotForallThenExists!191 lt!2030294 lambda!245528))))

(assert (=> b!4931616 call!344166))

(declare-fun lt!2030295 () Unit!147395)

(assert (=> b!4931616 (= lt!2030295 lt!2030292)))

(declare-fun bm!344160 () Bool)

(declare-fun exists!1260 (List!56888 Int) Bool)

(assert (=> bm!344160 (= call!344166 (exists!1260 (ite c!840436 lt!2030294 lt!2030291) (ite c!840436 lambda!245529 lambda!245530)))))

(declare-fun bm!344161 () Bool)

(declare-fun toList!7952 ((InoxSet Context!6086)) List!56888)

(assert (=> bm!344161 (= call!344165 (toList!7952 z!3568))))

(assert (= (and d!1587536 c!840436) b!4931616))

(assert (= (and d!1587536 (not c!840436)) b!4931617))

(assert (= (or b!4931616 b!4931617) bm!344160))

(assert (= (or b!4931616 b!4931617) bm!344161))

(declare-fun m!5951736 () Bool)

(assert (=> bm!344160 m!5951736))

(declare-fun m!5951738 () Bool)

(assert (=> b!4931617 m!5951738))

(declare-fun m!5951740 () Bool)

(assert (=> bm!344161 m!5951740))

(declare-fun m!5951742 () Bool)

(assert (=> b!4931616 m!5951742))

(declare-fun m!5951744 () Bool)

(assert (=> d!1587536 m!5951744))

(assert (=> d!1587536 m!5951744))

(declare-fun m!5951746 () Bool)

(assert (=> d!1587536 m!5951746))

(declare-fun m!5951748 () Bool)

(assert (=> d!1587536 m!5951748))

(assert (=> d!1587536 m!5951748))

(assert (=> b!4931421 d!1587536))

(declare-fun d!1587550 () Bool)

(assert (=> d!1587550 (= testedSuffix!70 lt!2030165)))

(declare-fun lt!2030301 () Unit!147395)

(declare-fun choose!36145 (List!56886 List!56886 List!56886 List!56886 List!56886) Unit!147395)

(assert (=> d!1587550 (= lt!2030301 (choose!36145 testedP!110 testedSuffix!70 testedP!110 lt!2030165 lt!2030169))))

(assert (=> d!1587550 (isPrefix!4999 testedP!110 lt!2030169)))

(assert (=> d!1587550 (= (lemmaSamePrefixThenSameSuffix!2397 testedP!110 testedSuffix!70 testedP!110 lt!2030165 lt!2030169) lt!2030301)))

(declare-fun bs!1180353 () Bool)

(assert (= bs!1180353 d!1587550))

(declare-fun m!5951754 () Bool)

(assert (=> bs!1180353 m!5951754))

(assert (=> bs!1180353 m!5951484))

(assert (=> b!4931421 d!1587550))

(declare-fun d!1587554 () Bool)

(declare-fun lt!2030304 () List!56886)

(assert (=> d!1587554 (= (++!12366 testedP!110 lt!2030304) lt!2030169)))

(declare-fun e!3081187 () List!56886)

(assert (=> d!1587554 (= lt!2030304 e!3081187)))

(declare-fun c!840442 () Bool)

(assert (=> d!1587554 (= c!840442 ((_ is Cons!56762) testedP!110))))

(assert (=> d!1587554 (>= (size!37572 lt!2030169) (size!37572 testedP!110))))

(assert (=> d!1587554 (= (getSuffix!2983 lt!2030169 testedP!110) lt!2030304)))

(declare-fun b!4931641 () Bool)

(assert (=> b!4931641 (= e!3081187 (getSuffix!2983 (tail!9685 lt!2030169) (t!367366 testedP!110)))))

(declare-fun b!4931642 () Bool)

(assert (=> b!4931642 (= e!3081187 lt!2030169)))

(assert (= (and d!1587554 c!840442) b!4931641))

(assert (= (and d!1587554 (not c!840442)) b!4931642))

(declare-fun m!5951758 () Bool)

(assert (=> d!1587554 m!5951758))

(assert (=> d!1587554 m!5951576))

(assert (=> d!1587554 m!5951478))

(assert (=> b!4931641 m!5951616))

(assert (=> b!4931641 m!5951616))

(declare-fun m!5951760 () Bool)

(assert (=> b!4931641 m!5951760))

(assert (=> b!4931421 d!1587554))

(declare-fun d!1587556 () Bool)

(declare-fun lt!2030305 () Int)

(assert (=> d!1587556 (= lt!2030305 (size!37572 (list!18008 (_1!33914 lt!2030168))))))

(assert (=> d!1587556 (= lt!2030305 (size!37574 (c!840363 (_1!33914 lt!2030168))))))

(assert (=> d!1587556 (= (size!37573 (_1!33914 lt!2030168)) lt!2030305)))

(declare-fun bs!1180355 () Bool)

(assert (= bs!1180355 d!1587556))

(assert (=> bs!1180355 m!5951512))

(assert (=> bs!1180355 m!5951512))

(declare-fun m!5951762 () Bool)

(assert (=> bs!1180355 m!5951762))

(declare-fun m!5951764 () Bool)

(assert (=> bs!1180355 m!5951764))

(assert (=> b!4931417 d!1587556))

(declare-fun d!1587558 () Bool)

(declare-fun lambda!245536 () Int)

(declare-fun forall!13161 (List!56887 Int) Bool)

(assert (=> d!1587558 (= (inv!73676 setElem!27656) (forall!13161 (exprs!3543 setElem!27656) lambda!245536))))

(declare-fun bs!1180356 () Bool)

(assert (= bs!1180356 d!1587558))

(declare-fun m!5951774 () Bool)

(assert (=> bs!1180356 m!5951774))

(assert (=> setNonEmpty!27656 d!1587558))

(declare-fun tp!1384525 () Bool)

(declare-fun b!4931665 () Bool)

(declare-fun tp!1384527 () Bool)

(declare-fun e!3081201 () Bool)

(assert (=> b!4931665 (= e!3081201 (and (inv!73674 (left!41399 (c!840363 totalInput!685))) tp!1384527 (inv!73674 (right!41729 (c!840363 totalInput!685))) tp!1384525))))

(declare-fun b!4931667 () Bool)

(declare-fun e!3081202 () Bool)

(declare-fun tp!1384526 () Bool)

(assert (=> b!4931667 (= e!3081202 tp!1384526)))

(declare-fun b!4931666 () Bool)

(declare-fun inv!73681 (IArray!29881) Bool)

(assert (=> b!4931666 (= e!3081201 (and (inv!73681 (xs!18234 (c!840363 totalInput!685))) e!3081202))))

(assert (=> b!4931411 (= tp!1384489 (and (inv!73674 (c!840363 totalInput!685)) e!3081201))))

(assert (= (and b!4931411 ((_ is Node!14910) (c!840363 totalInput!685))) b!4931665))

(assert (= b!4931666 b!4931667))

(assert (= (and b!4931411 ((_ is Leaf!24798) (c!840363 totalInput!685))) b!4931666))

(declare-fun m!5951776 () Bool)

(assert (=> b!4931665 m!5951776))

(declare-fun m!5951778 () Bool)

(assert (=> b!4931665 m!5951778))

(declare-fun m!5951780 () Bool)

(assert (=> b!4931666 m!5951780))

(assert (=> b!4931411 m!5951482))

(declare-fun b!4931672 () Bool)

(declare-fun e!3081205 () Bool)

(declare-fun tp!1384530 () Bool)

(assert (=> b!4931672 (= e!3081205 (and tp_is_empty!35979 tp!1384530))))

(assert (=> b!4931412 (= tp!1384493 e!3081205)))

(assert (= (and b!4931412 ((_ is Cons!56762) (t!367366 testedP!110))) b!4931672))

(declare-fun condSetEmpty!27662 () Bool)

(assert (=> setNonEmpty!27656 (= condSetEmpty!27662 (= setRest!27656 ((as const (Array Context!6086 Bool)) false)))))

(declare-fun setRes!27662 () Bool)

(assert (=> setNonEmpty!27656 (= tp!1384491 setRes!27662)))

(declare-fun setIsEmpty!27662 () Bool)

(assert (=> setIsEmpty!27662 setRes!27662))

(declare-fun setElem!27662 () Context!6086)

(declare-fun tp!1384536 () Bool)

(declare-fun setNonEmpty!27662 () Bool)

(declare-fun e!3081208 () Bool)

(assert (=> setNonEmpty!27662 (= setRes!27662 (and tp!1384536 (inv!73676 setElem!27662) e!3081208))))

(declare-fun setRest!27662 () (InoxSet Context!6086))

(assert (=> setNonEmpty!27662 (= setRest!27656 ((_ map or) (store ((as const (Array Context!6086 Bool)) false) setElem!27662 true) setRest!27662))))

(declare-fun b!4931677 () Bool)

(declare-fun tp!1384535 () Bool)

(assert (=> b!4931677 (= e!3081208 tp!1384535)))

(assert (= (and setNonEmpty!27656 condSetEmpty!27662) setIsEmpty!27662))

(assert (= (and setNonEmpty!27656 (not condSetEmpty!27662)) setNonEmpty!27662))

(assert (= setNonEmpty!27662 b!4931677))

(declare-fun m!5951782 () Bool)

(assert (=> setNonEmpty!27662 m!5951782))

(declare-fun b!4931682 () Bool)

(declare-fun e!3081211 () Bool)

(declare-fun tp!1384541 () Bool)

(declare-fun tp!1384542 () Bool)

(assert (=> b!4931682 (= e!3081211 (and tp!1384541 tp!1384542))))

(assert (=> b!4931413 (= tp!1384490 e!3081211)))

(assert (= (and b!4931413 ((_ is Cons!56763) (exprs!3543 setElem!27656))) b!4931682))

(declare-fun b!4931683 () Bool)

(declare-fun e!3081212 () Bool)

(declare-fun tp!1384543 () Bool)

(assert (=> b!4931683 (= e!3081212 (and tp_is_empty!35979 tp!1384543))))

(assert (=> b!4931414 (= tp!1384492 e!3081212)))

(assert (= (and b!4931414 ((_ is Cons!56762) (t!367366 testedSuffix!70))) b!4931683))

(check-sat (not b!4931503) (not b!4931538) (not b!4931411) (not bm!344161) (not b!4931561) (not b!4931508) (not b!4931584) (not b!4931559) (not b!4931667) (not b!4931672) (not b!4931683) (not d!1587472) (not d!1587524) (not b!4931539) (not b!4931641) (not d!1587476) (not d!1587516) (not b!4931665) (not b!4931553) (not d!1587500) (not b!4931666) (not b!4931432) (not d!1587528) (not d!1587554) (not b!4931560) (not b!4931585) (not b!4931582) (not b!4931617) (not b!4931439) (not d!1587558) (not setNonEmpty!27662) (not d!1587468) (not d!1587526) (not d!1587474) (not b!4931554) (not b!4931677) (not d!1587486) (not b!4931580) (not b!4931431) (not b!4931475) (not d!1587490) (not bm!344149) (not d!1587550) (not d!1587496) (not b!4931682) (not b!4931463) (not b!4931438) (not b!4931616) (not bm!344160) tp_is_empty!35979 (not d!1587536) (not b!4931555) (not d!1587470) (not d!1587556) (not b!4931537))
(check-sat)
