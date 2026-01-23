; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210138 () Bool)

(assert start!210138)

(declare-fun b!2167547 () Bool)

(declare-fun e!1386337 () Bool)

(declare-fun tp!676668 () Bool)

(assert (=> b!2167547 (= e!1386337 tp!676668)))

(declare-fun b!2167548 () Bool)

(declare-fun e!1386333 () Bool)

(declare-datatypes ((C!12144 0))(
  ( (C!12145 (val!7058 Int)) )
))
(declare-datatypes ((List!25210 0))(
  ( (Nil!25126) (Cons!25126 (h!30527 C!12144) (t!197772 List!25210)) )
))
(declare-datatypes ((IArray!16275 0))(
  ( (IArray!16276 (innerList!8195 List!25210)) )
))
(declare-datatypes ((Conc!8135 0))(
  ( (Node!8135 (left!19317 Conc!8135) (right!19647 Conc!8135) (csize!16500 Int) (cheight!8346 Int)) (Leaf!11902 (xs!11077 IArray!16275) (csize!16501 Int)) (Empty!8135) )
))
(declare-datatypes ((BalanceConc!16032 0))(
  ( (BalanceConc!16033 (c!343350 Conc!8135)) )
))
(declare-fun totalInput!977 () BalanceConc!16032)

(declare-fun tp!676675 () Bool)

(declare-fun inv!33315 (Conc!8135) Bool)

(assert (=> b!2167548 (= e!1386333 (and (inv!33315 (c!343350 totalInput!977)) tp!676675))))

(declare-fun setIsEmpty!18128 () Bool)

(declare-fun setRes!18128 () Bool)

(assert (=> setIsEmpty!18128 setRes!18128))

(declare-fun b!2167549 () Bool)

(declare-fun e!1386336 () Bool)

(declare-datatypes ((Regex!5999 0))(
  ( (ElementMatch!5999 (c!343351 C!12144)) (Concat!10301 (regOne!12510 Regex!5999) (regTwo!12510 Regex!5999)) (EmptyExpr!5999) (Star!5999 (reg!6328 Regex!5999)) (EmptyLang!5999) (Union!5999 (regOne!12511 Regex!5999) (regTwo!12511 Regex!5999)) )
))
(declare-fun r!12534 () Regex!5999)

(declare-datatypes ((tuple2!24866 0))(
  ( (tuple2!24867 (_1!14803 List!25210) (_2!14803 List!25210)) )
))
(declare-fun lt!806595 () tuple2!24866)

(declare-fun matchR!2756 (Regex!5999 List!25210) Bool)

(assert (=> b!2167549 (= e!1386336 (matchR!2756 r!12534 (_1!14803 lt!806595)))))

(declare-fun e!1386328 () Bool)

(declare-fun lt!806592 () Int)

(declare-fun lt!806588 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25211 0))(
  ( (Nil!25127) (Cons!25127 (h!30528 Regex!5999) (t!197773 List!25211)) )
))
(declare-datatypes ((Context!3138 0))(
  ( (Context!3139 (exprs!2069 List!25211)) )
))
(declare-fun z!4055 () (InoxSet Context!3138))

(declare-fun b!2167550 () Bool)

(declare-fun lt!806594 () List!25210)

(declare-fun matchZipper!123 ((InoxSet Context!3138) List!25210) Bool)

(declare-fun take!209 (List!25210 Int) List!25210)

(declare-fun drop!1222 (List!25210 Int) List!25210)

(assert (=> b!2167550 (= e!1386328 (matchZipper!123 z!4055 (take!209 (drop!1222 lt!806594 lt!806592) lt!806588)))))

(declare-fun b!2167552 () Bool)

(declare-fun e!1386335 () Bool)

(declare-fun tp!676673 () Bool)

(assert (=> b!2167552 (= e!1386335 tp!676673)))

(declare-fun b!2167553 () Bool)

(declare-fun e!1386327 () Bool)

(declare-fun e!1386331 () Bool)

(assert (=> b!2167553 (= e!1386327 e!1386331)))

(declare-fun res!933073 () Bool)

(assert (=> b!2167553 (=> (not res!933073) (not e!1386331))))

(declare-fun lt!806602 () List!25210)

(declare-fun lt!806587 () List!25210)

(assert (=> b!2167553 (= res!933073 (= lt!806602 lt!806587))))

(declare-fun lt!806597 () tuple2!24866)

(declare-fun ++!6358 (List!25210 List!25210) List!25210)

(assert (=> b!2167553 (= lt!806602 (++!6358 (_1!14803 lt!806597) (_2!14803 lt!806597)))))

(declare-fun b!2167554 () Bool)

(declare-fun res!933076 () Bool)

(declare-fun e!1386334 () Bool)

(assert (=> b!2167554 (=> res!933076 e!1386334)))

(assert (=> b!2167554 (= res!933076 (matchR!2756 r!12534 (_1!14803 lt!806597)))))

(declare-fun b!2167555 () Bool)

(assert (=> b!2167555 (= e!1386331 (not e!1386334))))

(declare-fun res!933069 () Bool)

(assert (=> b!2167555 (=> res!933069 e!1386334)))

(declare-fun e!1386325 () Bool)

(assert (=> b!2167555 (= res!933069 e!1386325)))

(declare-fun res!933068 () Bool)

(assert (=> b!2167555 (=> (not res!933068) (not e!1386325))))

(declare-fun lt!806590 () List!25210)

(assert (=> b!2167555 (= res!933068 (not (matchZipper!123 z!4055 lt!806590)))))

(assert (=> b!2167555 e!1386336))

(declare-fun res!933071 () Bool)

(assert (=> b!2167555 (=> res!933071 e!1386336)))

(declare-fun isEmpty!14411 (List!25210) Bool)

(assert (=> b!2167555 (= res!933071 (isEmpty!14411 (_1!14803 lt!806595)))))

(declare-fun findLongestMatchInner!628 (Regex!5999 List!25210 Int List!25210 List!25210 Int) tuple2!24866)

(declare-fun size!19631 (List!25210) Int)

(assert (=> b!2167555 (= lt!806595 (findLongestMatchInner!628 r!12534 Nil!25126 (size!19631 Nil!25126) lt!806587 lt!806587 (size!19631 lt!806587)))))

(declare-datatypes ((Unit!38187 0))(
  ( (Unit!38188) )
))
(declare-fun lt!806591 () Unit!38187)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!605 (Regex!5999 List!25210) Unit!38187)

(assert (=> b!2167555 (= lt!806591 (longestMatchIsAcceptedByMatchOrIsEmpty!605 r!12534 lt!806587))))

(assert (=> b!2167555 e!1386328))

(declare-fun res!933077 () Bool)

(assert (=> b!2167555 (=> res!933077 e!1386328)))

(assert (=> b!2167555 (= res!933077 (<= lt!806588 0))))

(declare-fun lt!806599 () Int)

(declare-fun lt!806601 () Int)

(declare-fun furthestNullablePosition!186 ((InoxSet Context!3138) Int BalanceConc!16032 Int Int) Int)

(assert (=> b!2167555 (= lt!806588 (+ 1 (- (furthestNullablePosition!186 z!4055 lt!806592 totalInput!977 lt!806601 lt!806599) lt!806592)))))

(declare-fun lt!806589 () Unit!38187)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!30 ((InoxSet Context!3138) Int BalanceConc!16032 Int) Unit!38187)

(assert (=> b!2167555 (= lt!806589 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!30 z!4055 lt!806592 totalInput!977 lt!806599))))

(declare-fun e!1386330 () Int)

(assert (=> b!2167555 (= lt!806599 e!1386330)))

(declare-fun c!343349 () Bool)

(declare-fun nullableZipper!280 ((InoxSet Context!3138)) Bool)

(assert (=> b!2167555 (= c!343349 (nullableZipper!280 z!4055))))

(declare-fun isPrefix!2115 (List!25210 List!25210) Bool)

(assert (=> b!2167555 (isPrefix!2115 (take!209 lt!806594 lt!806592) lt!806594)))

(declare-fun lt!806598 () Unit!38187)

(declare-fun lemmaTakeIsPrefix!32 (List!25210 Int) Unit!38187)

(assert (=> b!2167555 (= lt!806598 (lemmaTakeIsPrefix!32 lt!806594 lt!806592))))

(assert (=> b!2167555 (isPrefix!2115 (_1!14803 lt!806597) lt!806602)))

(declare-fun lt!806604 () Unit!38187)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1398 (List!25210 List!25210) Unit!38187)

(assert (=> b!2167555 (= lt!806604 (lemmaConcatTwoListThenFirstIsPrefix!1398 (_1!14803 lt!806597) (_2!14803 lt!806597)))))

(declare-fun lt!806593 () List!25210)

(assert (=> b!2167555 (isPrefix!2115 lt!806590 lt!806593)))

(declare-fun lt!806600 () Unit!38187)

(declare-fun lt!806596 () List!25210)

(assert (=> b!2167555 (= lt!806600 (lemmaConcatTwoListThenFirstIsPrefix!1398 lt!806590 lt!806596))))

(declare-fun b!2167556 () Bool)

(declare-fun e!1386329 () Bool)

(declare-fun e!1386332 () Bool)

(assert (=> b!2167556 (= e!1386329 e!1386332)))

(declare-fun res!933070 () Bool)

(assert (=> b!2167556 (=> (not res!933070) (not e!1386332))))

(declare-fun isSuffix!666 (List!25210 List!25210) Bool)

(assert (=> b!2167556 (= res!933070 (isSuffix!666 lt!806587 lt!806594))))

(declare-fun list!9626 (BalanceConc!16032) List!25210)

(assert (=> b!2167556 (= lt!806594 (list!9626 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16032)

(assert (=> b!2167556 (= lt!806587 (list!9626 input!5540))))

(declare-fun b!2167557 () Bool)

(assert (=> b!2167557 (= e!1386330 (- lt!806592 1))))

(declare-fun b!2167558 () Bool)

(assert (=> b!2167558 (= e!1386334 (isEmpty!14411 (_1!14803 lt!806597)))))

(declare-fun b!2167559 () Bool)

(assert (=> b!2167559 (= e!1386330 (- 1))))

(declare-fun b!2167560 () Bool)

(declare-fun tp_is_empty!9605 () Bool)

(assert (=> b!2167560 (= e!1386337 tp_is_empty!9605)))

(declare-fun setElem!18128 () Context!3138)

(declare-fun setNonEmpty!18128 () Bool)

(declare-fun tp!676674 () Bool)

(declare-fun inv!33316 (Context!3138) Bool)

(assert (=> setNonEmpty!18128 (= setRes!18128 (and tp!676674 (inv!33316 setElem!18128) e!1386335))))

(declare-fun setRest!18128 () (InoxSet Context!3138))

(assert (=> setNonEmpty!18128 (= z!4055 ((_ map or) (store ((as const (Array Context!3138 Bool)) false) setElem!18128 true) setRest!18128))))

(declare-fun b!2167561 () Bool)

(declare-fun tp!676672 () Bool)

(declare-fun tp!676671 () Bool)

(assert (=> b!2167561 (= e!1386337 (and tp!676672 tp!676671))))

(declare-fun res!933072 () Bool)

(assert (=> start!210138 (=> (not res!933072) (not e!1386329))))

(declare-fun validRegex!2275 (Regex!5999) Bool)

(assert (=> start!210138 (= res!933072 (validRegex!2275 r!12534))))

(assert (=> start!210138 e!1386329))

(assert (=> start!210138 e!1386337))

(declare-fun condSetEmpty!18128 () Bool)

(assert (=> start!210138 (= condSetEmpty!18128 (= z!4055 ((as const (Array Context!3138 Bool)) false)))))

(assert (=> start!210138 setRes!18128))

(declare-fun inv!33317 (BalanceConc!16032) Bool)

(assert (=> start!210138 (and (inv!33317 totalInput!977) e!1386333)))

(declare-fun e!1386326 () Bool)

(assert (=> start!210138 (and (inv!33317 input!5540) e!1386326)))

(declare-fun b!2167551 () Bool)

(declare-datatypes ((tuple2!24868 0))(
  ( (tuple2!24869 (_1!14804 BalanceConc!16032) (_2!14804 BalanceConc!16032)) )
))
(declare-fun lt!806603 () tuple2!24868)

(declare-fun isEmpty!14412 (BalanceConc!16032) Bool)

(assert (=> b!2167551 (= e!1386325 (not (isEmpty!14412 (_1!14804 lt!806603))))))

(declare-fun b!2167562 () Bool)

(declare-fun tp!676676 () Bool)

(assert (=> b!2167562 (= e!1386326 (and (inv!33315 (c!343350 input!5540)) tp!676676))))

(declare-fun b!2167563 () Bool)

(declare-fun tp!676670 () Bool)

(declare-fun tp!676669 () Bool)

(assert (=> b!2167563 (= e!1386337 (and tp!676670 tp!676669))))

(declare-fun b!2167564 () Bool)

(declare-fun res!933074 () Bool)

(assert (=> b!2167564 (=> (not res!933074) (not e!1386329))))

(declare-datatypes ((List!25212 0))(
  ( (Nil!25128) (Cons!25128 (h!30529 Context!3138) (t!197774 List!25212)) )
))
(declare-fun unfocusZipper!106 (List!25212) Regex!5999)

(declare-fun toList!1182 ((InoxSet Context!3138)) List!25212)

(assert (=> b!2167564 (= res!933074 (= (unfocusZipper!106 (toList!1182 z!4055)) r!12534))))

(declare-fun b!2167565 () Bool)

(assert (=> b!2167565 (= e!1386332 e!1386327)))

(declare-fun res!933075 () Bool)

(assert (=> b!2167565 (=> (not res!933075) (not e!1386327))))

(assert (=> b!2167565 (= res!933075 (= lt!806593 lt!806587))))

(assert (=> b!2167565 (= lt!806593 (++!6358 lt!806590 lt!806596))))

(assert (=> b!2167565 (= lt!806596 (list!9626 (_2!14804 lt!806603)))))

(assert (=> b!2167565 (= lt!806590 (list!9626 (_1!14804 lt!806603)))))

(declare-fun findLongestMatch!553 (Regex!5999 List!25210) tuple2!24866)

(assert (=> b!2167565 (= lt!806597 (findLongestMatch!553 r!12534 lt!806587))))

(declare-fun size!19632 (BalanceConc!16032) Int)

(assert (=> b!2167565 (= lt!806592 (- lt!806601 (size!19632 input!5540)))))

(assert (=> b!2167565 (= lt!806601 (size!19632 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!48 ((InoxSet Context!3138) BalanceConc!16032 BalanceConc!16032) tuple2!24868)

(assert (=> b!2167565 (= lt!806603 (findLongestMatchZipperSequenceV3!48 z!4055 input!5540 totalInput!977))))

(assert (= (and start!210138 res!933072) b!2167564))

(assert (= (and b!2167564 res!933074) b!2167556))

(assert (= (and b!2167556 res!933070) b!2167565))

(assert (= (and b!2167565 res!933075) b!2167553))

(assert (= (and b!2167553 res!933073) b!2167555))

(assert (= (and b!2167555 c!343349) b!2167557))

(assert (= (and b!2167555 (not c!343349)) b!2167559))

(assert (= (and b!2167555 (not res!933077)) b!2167550))

(assert (= (and b!2167555 (not res!933071)) b!2167549))

(assert (= (and b!2167555 res!933068) b!2167551))

(assert (= (and b!2167555 (not res!933069)) b!2167554))

(assert (= (and b!2167554 (not res!933076)) b!2167558))

(get-info :version)

(assert (= (and start!210138 ((_ is ElementMatch!5999) r!12534)) b!2167560))

(assert (= (and start!210138 ((_ is Concat!10301) r!12534)) b!2167561))

(assert (= (and start!210138 ((_ is Star!5999) r!12534)) b!2167547))

(assert (= (and start!210138 ((_ is Union!5999) r!12534)) b!2167563))

(assert (= (and start!210138 condSetEmpty!18128) setIsEmpty!18128))

(assert (= (and start!210138 (not condSetEmpty!18128)) setNonEmpty!18128))

(assert (= setNonEmpty!18128 b!2167552))

(assert (= start!210138 b!2167548))

(assert (= start!210138 b!2167562))

(declare-fun m!2608387 () Bool)

(assert (=> b!2167548 m!2608387))

(declare-fun m!2608389 () Bool)

(assert (=> b!2167551 m!2608389))

(declare-fun m!2608391 () Bool)

(assert (=> b!2167556 m!2608391))

(declare-fun m!2608393 () Bool)

(assert (=> b!2167556 m!2608393))

(declare-fun m!2608395 () Bool)

(assert (=> b!2167556 m!2608395))

(declare-fun m!2608397 () Bool)

(assert (=> b!2167564 m!2608397))

(assert (=> b!2167564 m!2608397))

(declare-fun m!2608399 () Bool)

(assert (=> b!2167564 m!2608399))

(declare-fun m!2608401 () Bool)

(assert (=> b!2167554 m!2608401))

(declare-fun m!2608403 () Bool)

(assert (=> start!210138 m!2608403))

(declare-fun m!2608405 () Bool)

(assert (=> start!210138 m!2608405))

(declare-fun m!2608407 () Bool)

(assert (=> start!210138 m!2608407))

(declare-fun m!2608409 () Bool)

(assert (=> b!2167549 m!2608409))

(declare-fun m!2608411 () Bool)

(assert (=> b!2167555 m!2608411))

(declare-fun m!2608413 () Bool)

(assert (=> b!2167555 m!2608413))

(declare-fun m!2608415 () Bool)

(assert (=> b!2167555 m!2608415))

(declare-fun m!2608417 () Bool)

(assert (=> b!2167555 m!2608417))

(declare-fun m!2608419 () Bool)

(assert (=> b!2167555 m!2608419))

(declare-fun m!2608421 () Bool)

(assert (=> b!2167555 m!2608421))

(declare-fun m!2608423 () Bool)

(assert (=> b!2167555 m!2608423))

(declare-fun m!2608425 () Bool)

(assert (=> b!2167555 m!2608425))

(assert (=> b!2167555 m!2608421))

(declare-fun m!2608427 () Bool)

(assert (=> b!2167555 m!2608427))

(declare-fun m!2608429 () Bool)

(assert (=> b!2167555 m!2608429))

(declare-fun m!2608431 () Bool)

(assert (=> b!2167555 m!2608431))

(declare-fun m!2608433 () Bool)

(assert (=> b!2167555 m!2608433))

(assert (=> b!2167555 m!2608425))

(declare-fun m!2608435 () Bool)

(assert (=> b!2167555 m!2608435))

(assert (=> b!2167555 m!2608431))

(declare-fun m!2608437 () Bool)

(assert (=> b!2167555 m!2608437))

(declare-fun m!2608439 () Bool)

(assert (=> b!2167555 m!2608439))

(declare-fun m!2608441 () Bool)

(assert (=> b!2167555 m!2608441))

(declare-fun m!2608443 () Bool)

(assert (=> b!2167562 m!2608443))

(declare-fun m!2608445 () Bool)

(assert (=> b!2167558 m!2608445))

(declare-fun m!2608447 () Bool)

(assert (=> b!2167550 m!2608447))

(assert (=> b!2167550 m!2608447))

(declare-fun m!2608449 () Bool)

(assert (=> b!2167550 m!2608449))

(assert (=> b!2167550 m!2608449))

(declare-fun m!2608451 () Bool)

(assert (=> b!2167550 m!2608451))

(declare-fun m!2608453 () Bool)

(assert (=> b!2167553 m!2608453))

(declare-fun m!2608455 () Bool)

(assert (=> b!2167565 m!2608455))

(declare-fun m!2608457 () Bool)

(assert (=> b!2167565 m!2608457))

(declare-fun m!2608459 () Bool)

(assert (=> b!2167565 m!2608459))

(declare-fun m!2608461 () Bool)

(assert (=> b!2167565 m!2608461))

(declare-fun m!2608463 () Bool)

(assert (=> b!2167565 m!2608463))

(declare-fun m!2608465 () Bool)

(assert (=> b!2167565 m!2608465))

(declare-fun m!2608467 () Bool)

(assert (=> b!2167565 m!2608467))

(declare-fun m!2608469 () Bool)

(assert (=> setNonEmpty!18128 m!2608469))

(check-sat (not b!2167556) (not b!2167553) tp_is_empty!9605 (not b!2167549) (not b!2167547) (not b!2167554) (not b!2167558) (not start!210138) (not b!2167548) (not b!2167565) (not b!2167555) (not b!2167563) (not b!2167564) (not b!2167561) (not b!2167550) (not setNonEmpty!18128) (not b!2167552) (not b!2167551) (not b!2167562))
(check-sat)
(get-model)

(declare-fun lt!806638 () List!25210)

(declare-fun e!1386349 () Bool)

(declare-fun b!2167589 () Bool)

(assert (=> b!2167589 (= e!1386349 (or (not (= lt!806596 Nil!25126)) (= lt!806638 lt!806590)))))

(declare-fun b!2167588 () Bool)

(declare-fun res!933089 () Bool)

(assert (=> b!2167588 (=> (not res!933089) (not e!1386349))))

(assert (=> b!2167588 (= res!933089 (= (size!19631 lt!806638) (+ (size!19631 lt!806590) (size!19631 lt!806596))))))

(declare-fun d!649281 () Bool)

(assert (=> d!649281 e!1386349))

(declare-fun res!933088 () Bool)

(assert (=> d!649281 (=> (not res!933088) (not e!1386349))))

(declare-fun content!3406 (List!25210) (InoxSet C!12144))

(assert (=> d!649281 (= res!933088 (= (content!3406 lt!806638) ((_ map or) (content!3406 lt!806590) (content!3406 lt!806596))))))

(declare-fun e!1386348 () List!25210)

(assert (=> d!649281 (= lt!806638 e!1386348)))

(declare-fun c!343357 () Bool)

(assert (=> d!649281 (= c!343357 ((_ is Nil!25126) lt!806590))))

(assert (=> d!649281 (= (++!6358 lt!806590 lt!806596) lt!806638)))

(declare-fun b!2167587 () Bool)

(assert (=> b!2167587 (= e!1386348 (Cons!25126 (h!30527 lt!806590) (++!6358 (t!197772 lt!806590) lt!806596)))))

(declare-fun b!2167586 () Bool)

(assert (=> b!2167586 (= e!1386348 lt!806596)))

(assert (= (and d!649281 c!343357) b!2167586))

(assert (= (and d!649281 (not c!343357)) b!2167587))

(assert (= (and d!649281 res!933088) b!2167588))

(assert (= (and b!2167588 res!933089) b!2167589))

(declare-fun m!2608513 () Bool)

(assert (=> b!2167588 m!2608513))

(declare-fun m!2608515 () Bool)

(assert (=> b!2167588 m!2608515))

(declare-fun m!2608517 () Bool)

(assert (=> b!2167588 m!2608517))

(declare-fun m!2608519 () Bool)

(assert (=> d!649281 m!2608519))

(declare-fun m!2608521 () Bool)

(assert (=> d!649281 m!2608521))

(declare-fun m!2608523 () Bool)

(assert (=> d!649281 m!2608523))

(declare-fun m!2608525 () Bool)

(assert (=> b!2167587 m!2608525))

(assert (=> b!2167565 d!649281))

(declare-fun d!649293 () Bool)

(declare-fun lt!806641 () Int)

(assert (=> d!649293 (= lt!806641 (size!19631 (list!9626 totalInput!977)))))

(declare-fun size!19634 (Conc!8135) Int)

(assert (=> d!649293 (= lt!806641 (size!19634 (c!343350 totalInput!977)))))

(assert (=> d!649293 (= (size!19632 totalInput!977) lt!806641)))

(declare-fun bs!446758 () Bool)

(assert (= bs!446758 d!649293))

(assert (=> bs!446758 m!2608393))

(assert (=> bs!446758 m!2608393))

(declare-fun m!2608527 () Bool)

(assert (=> bs!446758 m!2608527))

(declare-fun m!2608529 () Bool)

(assert (=> bs!446758 m!2608529))

(assert (=> b!2167565 d!649293))

(declare-fun d!649295 () Bool)

(declare-fun list!9628 (Conc!8135) List!25210)

(assert (=> d!649295 (= (list!9626 (_2!14804 lt!806603)) (list!9628 (c!343350 (_2!14804 lt!806603))))))

(declare-fun bs!446759 () Bool)

(assert (= bs!446759 d!649295))

(declare-fun m!2608531 () Bool)

(assert (=> bs!446759 m!2608531))

(assert (=> b!2167565 d!649295))

(declare-fun d!649297 () Bool)

(assert (=> d!649297 (= (list!9626 (_1!14804 lt!806603)) (list!9628 (c!343350 (_1!14804 lt!806603))))))

(declare-fun bs!446760 () Bool)

(assert (= bs!446760 d!649297))

(declare-fun m!2608533 () Bool)

(assert (=> bs!446760 m!2608533))

(assert (=> b!2167565 d!649297))

(declare-fun d!649299 () Bool)

(declare-fun lt!806642 () Int)

(assert (=> d!649299 (= lt!806642 (size!19631 (list!9626 input!5540)))))

(assert (=> d!649299 (= lt!806642 (size!19634 (c!343350 input!5540)))))

(assert (=> d!649299 (= (size!19632 input!5540) lt!806642)))

(declare-fun bs!446761 () Bool)

(assert (= bs!446761 d!649299))

(assert (=> bs!446761 m!2608395))

(assert (=> bs!446761 m!2608395))

(declare-fun m!2608535 () Bool)

(assert (=> bs!446761 m!2608535))

(declare-fun m!2608537 () Bool)

(assert (=> bs!446761 m!2608537))

(assert (=> b!2167565 d!649299))

(declare-fun b!2167652 () Bool)

(declare-fun e!1386381 () Int)

(assert (=> b!2167652 (= e!1386381 (- 1))))

(declare-fun b!2167653 () Bool)

(declare-fun e!1386382 () tuple2!24868)

(declare-fun call!129963 () tuple2!24868)

(assert (=> b!2167653 (= e!1386382 call!129963)))

(declare-fun lt!806672 () Int)

(declare-fun bm!129958 () Bool)

(declare-fun c!343378 () Bool)

(declare-fun splitAt!28 (BalanceConc!16032 Int) tuple2!24868)

(assert (=> bm!129958 (= call!129963 (splitAt!28 input!5540 (ite c!343378 0 lt!806672)))))

(declare-fun d!649301 () Bool)

(declare-fun lt!806669 () tuple2!24868)

(assert (=> d!649301 (= (++!6358 (list!9626 (_1!14804 lt!806669)) (list!9626 (_2!14804 lt!806669))) (list!9626 input!5540))))

(assert (=> d!649301 (= lt!806669 e!1386382)))

(assert (=> d!649301 (= c!343378 (< lt!806672 0))))

(declare-fun lt!806671 () Int)

(declare-fun lt!806670 () Int)

(assert (=> d!649301 (= lt!806672 (+ (- (furthestNullablePosition!186 z!4055 lt!806670 totalInput!977 lt!806671 e!1386381) lt!806670) 1))))

(declare-fun c!343377 () Bool)

(assert (=> d!649301 (= c!343377 (nullableZipper!280 z!4055))))

(assert (=> d!649301 (= lt!806670 (- lt!806671 (size!19632 input!5540)))))

(assert (=> d!649301 (= lt!806671 (size!19632 totalInput!977))))

(assert (=> d!649301 (isSuffix!666 (list!9626 input!5540) (list!9626 totalInput!977))))

(assert (=> d!649301 (= (findLongestMatchZipperSequenceV3!48 z!4055 input!5540 totalInput!977) lt!806669)))

(declare-fun b!2167654 () Bool)

(assert (=> b!2167654 (= e!1386382 call!129963)))

(declare-fun b!2167655 () Bool)

(assert (=> b!2167655 (= e!1386381 (- lt!806670 1))))

(assert (= (and d!649301 c!343377) b!2167655))

(assert (= (and d!649301 (not c!343377)) b!2167652))

(assert (= (and d!649301 c!343378) b!2167654))

(assert (= (and d!649301 (not c!343378)) b!2167653))

(assert (= (or b!2167654 b!2167653) bm!129958))

(declare-fun m!2608567 () Bool)

(assert (=> bm!129958 m!2608567))

(assert (=> d!649301 m!2608393))

(assert (=> d!649301 m!2608459))

(assert (=> d!649301 m!2608423))

(assert (=> d!649301 m!2608395))

(declare-fun m!2608569 () Bool)

(assert (=> d!649301 m!2608569))

(declare-fun m!2608571 () Bool)

(assert (=> d!649301 m!2608571))

(assert (=> d!649301 m!2608461))

(assert (=> d!649301 m!2608571))

(assert (=> d!649301 m!2608569))

(declare-fun m!2608573 () Bool)

(assert (=> d!649301 m!2608573))

(declare-fun m!2608575 () Bool)

(assert (=> d!649301 m!2608575))

(assert (=> d!649301 m!2608395))

(assert (=> d!649301 m!2608393))

(declare-fun m!2608577 () Bool)

(assert (=> d!649301 m!2608577))

(assert (=> b!2167565 d!649301))

(declare-fun d!649311 () Bool)

(declare-fun lt!806692 () tuple2!24866)

(assert (=> d!649311 (= (++!6358 (_1!14803 lt!806692) (_2!14803 lt!806692)) lt!806587)))

(declare-fun sizeTr!106 (List!25210 Int) Int)

(assert (=> d!649311 (= lt!806692 (findLongestMatchInner!628 r!12534 Nil!25126 0 lt!806587 lt!806587 (sizeTr!106 lt!806587 0)))))

(declare-fun lt!806689 () Unit!38187)

(declare-fun lt!806695 () Unit!38187)

(assert (=> d!649311 (= lt!806689 lt!806695)))

(declare-fun lt!806691 () List!25210)

(declare-fun lt!806696 () Int)

(assert (=> d!649311 (= (sizeTr!106 lt!806691 lt!806696) (+ (size!19631 lt!806691) lt!806696))))

(declare-fun lemmaSizeTrEqualsSize!106 (List!25210 Int) Unit!38187)

(assert (=> d!649311 (= lt!806695 (lemmaSizeTrEqualsSize!106 lt!806691 lt!806696))))

(assert (=> d!649311 (= lt!806696 0)))

(assert (=> d!649311 (= lt!806691 Nil!25126)))

(declare-fun lt!806690 () Unit!38187)

(declare-fun lt!806694 () Unit!38187)

(assert (=> d!649311 (= lt!806690 lt!806694)))

(declare-fun lt!806693 () Int)

(assert (=> d!649311 (= (sizeTr!106 lt!806587 lt!806693) (+ (size!19631 lt!806587) lt!806693))))

(assert (=> d!649311 (= lt!806694 (lemmaSizeTrEqualsSize!106 lt!806587 lt!806693))))

(assert (=> d!649311 (= lt!806693 0)))

(assert (=> d!649311 (validRegex!2275 r!12534)))

(assert (=> d!649311 (= (findLongestMatch!553 r!12534 lt!806587) lt!806692)))

(declare-fun bs!446763 () Bool)

(assert (= bs!446763 d!649311))

(declare-fun m!2608579 () Bool)

(assert (=> bs!446763 m!2608579))

(assert (=> bs!446763 m!2608421))

(assert (=> bs!446763 m!2608403))

(declare-fun m!2608581 () Bool)

(assert (=> bs!446763 m!2608581))

(declare-fun m!2608583 () Bool)

(assert (=> bs!446763 m!2608583))

(declare-fun m!2608585 () Bool)

(assert (=> bs!446763 m!2608585))

(declare-fun m!2608587 () Bool)

(assert (=> bs!446763 m!2608587))

(declare-fun m!2608589 () Bool)

(assert (=> bs!446763 m!2608589))

(assert (=> bs!446763 m!2608585))

(declare-fun m!2608591 () Bool)

(assert (=> bs!446763 m!2608591))

(declare-fun m!2608593 () Bool)

(assert (=> bs!446763 m!2608593))

(assert (=> b!2167565 d!649311))

(declare-fun d!649313 () Bool)

(declare-fun lt!806699 () Int)

(assert (=> d!649313 (>= lt!806699 0)))

(declare-fun e!1386385 () Int)

(assert (=> d!649313 (= lt!806699 e!1386385)))

(declare-fun c!343381 () Bool)

(assert (=> d!649313 (= c!343381 ((_ is Nil!25126) Nil!25126))))

(assert (=> d!649313 (= (size!19631 Nil!25126) lt!806699)))

(declare-fun b!2167660 () Bool)

(assert (=> b!2167660 (= e!1386385 0)))

(declare-fun b!2167661 () Bool)

(assert (=> b!2167661 (= e!1386385 (+ 1 (size!19631 (t!197772 Nil!25126))))))

(assert (= (and d!649313 c!343381) b!2167660))

(assert (= (and d!649313 (not c!343381)) b!2167661))

(declare-fun m!2608595 () Bool)

(assert (=> b!2167661 m!2608595))

(assert (=> b!2167555 d!649313))

(declare-fun d!649315 () Bool)

(declare-fun lt!806700 () Int)

(assert (=> d!649315 (>= lt!806700 0)))

(declare-fun e!1386386 () Int)

(assert (=> d!649315 (= lt!806700 e!1386386)))

(declare-fun c!343382 () Bool)

(assert (=> d!649315 (= c!343382 ((_ is Nil!25126) lt!806587))))

(assert (=> d!649315 (= (size!19631 lt!806587) lt!806700)))

(declare-fun b!2167662 () Bool)

(assert (=> b!2167662 (= e!1386386 0)))

(declare-fun b!2167663 () Bool)

(assert (=> b!2167663 (= e!1386386 (+ 1 (size!19631 (t!197772 lt!806587))))))

(assert (= (and d!649315 c!343382) b!2167662))

(assert (= (and d!649315 (not c!343382)) b!2167663))

(declare-fun m!2608597 () Bool)

(assert (=> b!2167663 m!2608597))

(assert (=> b!2167555 d!649315))

(declare-fun b!2167672 () Bool)

(declare-fun e!1386393 () Bool)

(declare-fun e!1386394 () Bool)

(assert (=> b!2167672 (= e!1386393 e!1386394)))

(declare-fun res!933122 () Bool)

(assert (=> b!2167672 (=> (not res!933122) (not e!1386394))))

(assert (=> b!2167672 (= res!933122 (not ((_ is Nil!25126) lt!806602)))))

(declare-fun b!2167673 () Bool)

(declare-fun res!933124 () Bool)

(assert (=> b!2167673 (=> (not res!933124) (not e!1386394))))

(declare-fun head!4640 (List!25210) C!12144)

(assert (=> b!2167673 (= res!933124 (= (head!4640 (_1!14803 lt!806597)) (head!4640 lt!806602)))))

(declare-fun d!649317 () Bool)

(declare-fun e!1386395 () Bool)

(assert (=> d!649317 e!1386395))

(declare-fun res!933123 () Bool)

(assert (=> d!649317 (=> res!933123 e!1386395)))

(declare-fun lt!806703 () Bool)

(assert (=> d!649317 (= res!933123 (not lt!806703))))

(assert (=> d!649317 (= lt!806703 e!1386393)))

(declare-fun res!933125 () Bool)

(assert (=> d!649317 (=> res!933125 e!1386393)))

(assert (=> d!649317 (= res!933125 ((_ is Nil!25126) (_1!14803 lt!806597)))))

(assert (=> d!649317 (= (isPrefix!2115 (_1!14803 lt!806597) lt!806602) lt!806703)))

(declare-fun b!2167675 () Bool)

(assert (=> b!2167675 (= e!1386395 (>= (size!19631 lt!806602) (size!19631 (_1!14803 lt!806597))))))

(declare-fun b!2167674 () Bool)

(declare-fun tail!3112 (List!25210) List!25210)

(assert (=> b!2167674 (= e!1386394 (isPrefix!2115 (tail!3112 (_1!14803 lt!806597)) (tail!3112 lt!806602)))))

(assert (= (and d!649317 (not res!933125)) b!2167672))

(assert (= (and b!2167672 res!933122) b!2167673))

(assert (= (and b!2167673 res!933124) b!2167674))

(assert (= (and d!649317 (not res!933123)) b!2167675))

(declare-fun m!2608599 () Bool)

(assert (=> b!2167673 m!2608599))

(declare-fun m!2608601 () Bool)

(assert (=> b!2167673 m!2608601))

(declare-fun m!2608603 () Bool)

(assert (=> b!2167675 m!2608603))

(declare-fun m!2608605 () Bool)

(assert (=> b!2167675 m!2608605))

(declare-fun m!2608607 () Bool)

(assert (=> b!2167674 m!2608607))

(declare-fun m!2608609 () Bool)

(assert (=> b!2167674 m!2608609))

(assert (=> b!2167674 m!2608607))

(assert (=> b!2167674 m!2608609))

(declare-fun m!2608611 () Bool)

(assert (=> b!2167674 m!2608611))

(assert (=> b!2167555 d!649317))

(declare-fun b!2167676 () Bool)

(declare-fun e!1386396 () Bool)

(declare-fun e!1386397 () Bool)

(assert (=> b!2167676 (= e!1386396 e!1386397)))

(declare-fun res!933126 () Bool)

(assert (=> b!2167676 (=> (not res!933126) (not e!1386397))))

(assert (=> b!2167676 (= res!933126 (not ((_ is Nil!25126) lt!806593)))))

(declare-fun b!2167677 () Bool)

(declare-fun res!933128 () Bool)

(assert (=> b!2167677 (=> (not res!933128) (not e!1386397))))

(assert (=> b!2167677 (= res!933128 (= (head!4640 lt!806590) (head!4640 lt!806593)))))

(declare-fun d!649319 () Bool)

(declare-fun e!1386398 () Bool)

(assert (=> d!649319 e!1386398))

(declare-fun res!933127 () Bool)

(assert (=> d!649319 (=> res!933127 e!1386398)))

(declare-fun lt!806704 () Bool)

(assert (=> d!649319 (= res!933127 (not lt!806704))))

(assert (=> d!649319 (= lt!806704 e!1386396)))

(declare-fun res!933129 () Bool)

(assert (=> d!649319 (=> res!933129 e!1386396)))

(assert (=> d!649319 (= res!933129 ((_ is Nil!25126) lt!806590))))

(assert (=> d!649319 (= (isPrefix!2115 lt!806590 lt!806593) lt!806704)))

(declare-fun b!2167679 () Bool)

(assert (=> b!2167679 (= e!1386398 (>= (size!19631 lt!806593) (size!19631 lt!806590)))))

(declare-fun b!2167678 () Bool)

(assert (=> b!2167678 (= e!1386397 (isPrefix!2115 (tail!3112 lt!806590) (tail!3112 lt!806593)))))

(assert (= (and d!649319 (not res!933129)) b!2167676))

(assert (= (and b!2167676 res!933126) b!2167677))

(assert (= (and b!2167677 res!933128) b!2167678))

(assert (= (and d!649319 (not res!933127)) b!2167679))

(declare-fun m!2608613 () Bool)

(assert (=> b!2167677 m!2608613))

(declare-fun m!2608615 () Bool)

(assert (=> b!2167677 m!2608615))

(declare-fun m!2608617 () Bool)

(assert (=> b!2167679 m!2608617))

(assert (=> b!2167679 m!2608515))

(declare-fun m!2608619 () Bool)

(assert (=> b!2167678 m!2608619))

(declare-fun m!2608621 () Bool)

(assert (=> b!2167678 m!2608621))

(assert (=> b!2167678 m!2608619))

(assert (=> b!2167678 m!2608621))

(declare-fun m!2608623 () Bool)

(assert (=> b!2167678 m!2608623))

(assert (=> b!2167555 d!649319))

(declare-fun d!649321 () Bool)

(assert (=> d!649321 (isPrefix!2115 (_1!14803 lt!806597) (++!6358 (_1!14803 lt!806597) (_2!14803 lt!806597)))))

(declare-fun lt!806707 () Unit!38187)

(declare-fun choose!12760 (List!25210 List!25210) Unit!38187)

(assert (=> d!649321 (= lt!806707 (choose!12760 (_1!14803 lt!806597) (_2!14803 lt!806597)))))

(assert (=> d!649321 (= (lemmaConcatTwoListThenFirstIsPrefix!1398 (_1!14803 lt!806597) (_2!14803 lt!806597)) lt!806707)))

(declare-fun bs!446764 () Bool)

(assert (= bs!446764 d!649321))

(assert (=> bs!446764 m!2608453))

(assert (=> bs!446764 m!2608453))

(declare-fun m!2608625 () Bool)

(assert (=> bs!446764 m!2608625))

(declare-fun m!2608627 () Bool)

(assert (=> bs!446764 m!2608627))

(assert (=> b!2167555 d!649321))

(declare-fun d!649323 () Bool)

(declare-fun e!1386401 () Bool)

(assert (=> d!649323 e!1386401))

(declare-fun res!933132 () Bool)

(assert (=> d!649323 (=> res!933132 e!1386401)))

(assert (=> d!649323 (= res!933132 (isEmpty!14411 (_1!14803 (findLongestMatchInner!628 r!12534 Nil!25126 (size!19631 Nil!25126) lt!806587 lt!806587 (size!19631 lt!806587)))))))

(declare-fun lt!806710 () Unit!38187)

(declare-fun choose!12761 (Regex!5999 List!25210) Unit!38187)

(assert (=> d!649323 (= lt!806710 (choose!12761 r!12534 lt!806587))))

(assert (=> d!649323 (validRegex!2275 r!12534)))

(assert (=> d!649323 (= (longestMatchIsAcceptedByMatchOrIsEmpty!605 r!12534 lt!806587) lt!806710)))

(declare-fun b!2167682 () Bool)

(assert (=> b!2167682 (= e!1386401 (matchR!2756 r!12534 (_1!14803 (findLongestMatchInner!628 r!12534 Nil!25126 (size!19631 Nil!25126) lt!806587 lt!806587 (size!19631 lt!806587)))))))

(assert (= (and d!649323 (not res!933132)) b!2167682))

(assert (=> d!649323 m!2608403))

(assert (=> d!649323 m!2608425))

(assert (=> d!649323 m!2608421))

(assert (=> d!649323 m!2608427))

(assert (=> d!649323 m!2608425))

(assert (=> d!649323 m!2608421))

(declare-fun m!2608629 () Bool)

(assert (=> d!649323 m!2608629))

(declare-fun m!2608631 () Bool)

(assert (=> d!649323 m!2608631))

(assert (=> b!2167682 m!2608425))

(assert (=> b!2167682 m!2608421))

(assert (=> b!2167682 m!2608425))

(assert (=> b!2167682 m!2608421))

(assert (=> b!2167682 m!2608427))

(declare-fun m!2608633 () Bool)

(assert (=> b!2167682 m!2608633))

(assert (=> b!2167555 d!649323))

(declare-fun b!2167711 () Bool)

(declare-fun e!1386420 () tuple2!24866)

(declare-fun e!1386418 () tuple2!24866)

(assert (=> b!2167711 (= e!1386420 e!1386418)))

(declare-fun c!343399 () Bool)

(assert (=> b!2167711 (= c!343399 (= (size!19631 Nil!25126) (size!19631 lt!806587)))))

(declare-fun b!2167712 () Bool)

(declare-fun e!1386422 () tuple2!24866)

(assert (=> b!2167712 (= e!1386422 (tuple2!24867 Nil!25126 lt!806587))))

(declare-fun b!2167713 () Bool)

(declare-fun e!1386423 () Bool)

(declare-fun lt!806781 () tuple2!24866)

(assert (=> b!2167713 (= e!1386423 (>= (size!19631 (_1!14803 lt!806781)) (size!19631 Nil!25126)))))

(declare-fun b!2167714 () Bool)

(declare-fun lt!806773 () tuple2!24866)

(assert (=> b!2167714 (= e!1386422 lt!806773)))

(declare-fun call!129984 () List!25210)

(declare-fun call!129987 () tuple2!24866)

(declare-fun call!129980 () Regex!5999)

(declare-fun bm!129975 () Bool)

(declare-fun lt!806788 () List!25210)

(assert (=> bm!129975 (= call!129987 (findLongestMatchInner!628 call!129980 lt!806788 (+ (size!19631 Nil!25126) 1) call!129984 lt!806587 (size!19631 lt!806587)))))

(declare-fun bm!129976 () Bool)

(declare-fun call!129985 () Unit!38187)

(declare-fun lemmaIsPrefixRefl!1403 (List!25210 List!25210) Unit!38187)

(assert (=> bm!129976 (= call!129985 (lemmaIsPrefixRefl!1403 lt!806587 lt!806587))))

(declare-fun d!649325 () Bool)

(declare-fun e!1386425 () Bool)

(assert (=> d!649325 e!1386425))

(declare-fun res!933137 () Bool)

(assert (=> d!649325 (=> (not res!933137) (not e!1386425))))

(assert (=> d!649325 (= res!933137 (= (++!6358 (_1!14803 lt!806781) (_2!14803 lt!806781)) lt!806587))))

(assert (=> d!649325 (= lt!806781 e!1386420)))

(declare-fun c!343397 () Bool)

(declare-fun lostCause!663 (Regex!5999) Bool)

(assert (=> d!649325 (= c!343397 (lostCause!663 r!12534))))

(declare-fun lt!806768 () Unit!38187)

(declare-fun Unit!38192 () Unit!38187)

(assert (=> d!649325 (= lt!806768 Unit!38192)))

(declare-fun getSuffix!1028 (List!25210 List!25210) List!25210)

(assert (=> d!649325 (= (getSuffix!1028 lt!806587 Nil!25126) lt!806587)))

(declare-fun lt!806793 () Unit!38187)

(declare-fun lt!806782 () Unit!38187)

(assert (=> d!649325 (= lt!806793 lt!806782)))

(declare-fun lt!806779 () List!25210)

(assert (=> d!649325 (= lt!806587 lt!806779)))

(declare-fun lemmaSamePrefixThenSameSuffix!950 (List!25210 List!25210 List!25210 List!25210 List!25210) Unit!38187)

(assert (=> d!649325 (= lt!806782 (lemmaSamePrefixThenSameSuffix!950 Nil!25126 lt!806587 Nil!25126 lt!806779 lt!806587))))

(assert (=> d!649325 (= lt!806779 (getSuffix!1028 lt!806587 Nil!25126))))

(declare-fun lt!806774 () Unit!38187)

(declare-fun lt!806778 () Unit!38187)

(assert (=> d!649325 (= lt!806774 lt!806778)))

(assert (=> d!649325 (isPrefix!2115 Nil!25126 (++!6358 Nil!25126 lt!806587))))

(assert (=> d!649325 (= lt!806778 (lemmaConcatTwoListThenFirstIsPrefix!1398 Nil!25126 lt!806587))))

(assert (=> d!649325 (validRegex!2275 r!12534)))

(assert (=> d!649325 (= (findLongestMatchInner!628 r!12534 Nil!25126 (size!19631 Nil!25126) lt!806587 lt!806587 (size!19631 lt!806587)) lt!806781)))

(declare-fun b!2167715 () Bool)

(declare-fun c!343396 () Bool)

(declare-fun call!129982 () Bool)

(assert (=> b!2167715 (= c!343396 call!129982)))

(declare-fun lt!806780 () Unit!38187)

(declare-fun lt!806784 () Unit!38187)

(assert (=> b!2167715 (= lt!806780 lt!806784)))

(declare-fun lt!806790 () C!12144)

(declare-fun lt!806791 () List!25210)

(assert (=> b!2167715 (= (++!6358 (++!6358 Nil!25126 (Cons!25126 lt!806790 Nil!25126)) lt!806791) lt!806587)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!501 (List!25210 C!12144 List!25210 List!25210) Unit!38187)

(assert (=> b!2167715 (= lt!806784 (lemmaMoveElementToOtherListKeepsConcatEq!501 Nil!25126 lt!806790 lt!806791 lt!806587))))

(assert (=> b!2167715 (= lt!806791 (tail!3112 lt!806587))))

(assert (=> b!2167715 (= lt!806790 (head!4640 lt!806587))))

(declare-fun lt!806789 () Unit!38187)

(declare-fun lt!806794 () Unit!38187)

(assert (=> b!2167715 (= lt!806789 lt!806794)))

(assert (=> b!2167715 (isPrefix!2115 (++!6358 Nil!25126 (Cons!25126 (head!4640 (getSuffix!1028 lt!806587 Nil!25126)) Nil!25126)) lt!806587)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!373 (List!25210 List!25210) Unit!38187)

(assert (=> b!2167715 (= lt!806794 (lemmaAddHeadSuffixToPrefixStillPrefix!373 Nil!25126 lt!806587))))

(declare-fun lt!806776 () Unit!38187)

(declare-fun lt!806783 () Unit!38187)

(assert (=> b!2167715 (= lt!806776 lt!806783)))

(assert (=> b!2167715 (= lt!806783 (lemmaAddHeadSuffixToPrefixStillPrefix!373 Nil!25126 lt!806587))))

(assert (=> b!2167715 (= lt!806788 (++!6358 Nil!25126 (Cons!25126 (head!4640 lt!806587) Nil!25126)))))

(declare-fun lt!806777 () Unit!38187)

(declare-fun e!1386421 () Unit!38187)

(assert (=> b!2167715 (= lt!806777 e!1386421)))

(declare-fun c!343398 () Bool)

(assert (=> b!2167715 (= c!343398 (= (size!19631 Nil!25126) (size!19631 lt!806587)))))

(declare-fun lt!806771 () Unit!38187)

(declare-fun lt!806786 () Unit!38187)

(assert (=> b!2167715 (= lt!806771 lt!806786)))

(assert (=> b!2167715 (<= (size!19631 Nil!25126) (size!19631 lt!806587))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!176 (List!25210 List!25210) Unit!38187)

(assert (=> b!2167715 (= lt!806786 (lemmaIsPrefixThenSmallerEqSize!176 Nil!25126 lt!806587))))

(declare-fun e!1386424 () tuple2!24866)

(assert (=> b!2167715 (= e!1386418 e!1386424)))

(declare-fun b!2167716 () Bool)

(assert (=> b!2167716 (= e!1386424 e!1386422)))

(assert (=> b!2167716 (= lt!806773 call!129987)))

(declare-fun c!343400 () Bool)

(assert (=> b!2167716 (= c!343400 (isEmpty!14411 (_1!14803 lt!806773)))))

(declare-fun b!2167717 () Bool)

(assert (=> b!2167717 (= e!1386425 e!1386423)))

(declare-fun res!933138 () Bool)

(assert (=> b!2167717 (=> res!933138 e!1386423)))

(assert (=> b!2167717 (= res!933138 (isEmpty!14411 (_1!14803 lt!806781)))))

(declare-fun bm!129977 () Bool)

(declare-fun call!129981 () C!12144)

(declare-fun derivativeStep!1434 (Regex!5999 C!12144) Regex!5999)

(assert (=> bm!129977 (= call!129980 (derivativeStep!1434 r!12534 call!129981))))

(declare-fun bm!129978 () Bool)

(declare-fun nullable!1690 (Regex!5999) Bool)

(assert (=> bm!129978 (= call!129982 (nullable!1690 r!12534))))

(declare-fun b!2167718 () Bool)

(declare-fun c!343395 () Bool)

(assert (=> b!2167718 (= c!343395 call!129982)))

(declare-fun lt!806772 () Unit!38187)

(declare-fun lt!806787 () Unit!38187)

(assert (=> b!2167718 (= lt!806772 lt!806787)))

(assert (=> b!2167718 (= lt!806587 Nil!25126)))

(declare-fun call!129983 () Unit!38187)

(assert (=> b!2167718 (= lt!806787 call!129983)))

(declare-fun lt!806792 () Unit!38187)

(declare-fun lt!806775 () Unit!38187)

(assert (=> b!2167718 (= lt!806792 lt!806775)))

(declare-fun call!129986 () Bool)

(assert (=> b!2167718 call!129986))

(assert (=> b!2167718 (= lt!806775 call!129985)))

(declare-fun e!1386419 () tuple2!24866)

(assert (=> b!2167718 (= e!1386418 e!1386419)))

(declare-fun bm!129979 () Bool)

(assert (=> bm!129979 (= call!129981 (head!4640 lt!806587))))

(declare-fun b!2167719 () Bool)

(assert (=> b!2167719 (= e!1386424 call!129987)))

(declare-fun bm!129980 () Bool)

(assert (=> bm!129980 (= call!129986 (isPrefix!2115 lt!806587 lt!806587))))

(declare-fun b!2167720 () Bool)

(declare-fun Unit!38193 () Unit!38187)

(assert (=> b!2167720 (= e!1386421 Unit!38193)))

(declare-fun b!2167721 () Bool)

(assert (=> b!2167721 (= e!1386420 (tuple2!24867 Nil!25126 lt!806587))))

(declare-fun b!2167722 () Bool)

(declare-fun Unit!38194 () Unit!38187)

(assert (=> b!2167722 (= e!1386421 Unit!38194)))

(declare-fun lt!806785 () Unit!38187)

(assert (=> b!2167722 (= lt!806785 call!129985)))

(assert (=> b!2167722 call!129986))

(declare-fun lt!806770 () Unit!38187)

(assert (=> b!2167722 (= lt!806770 lt!806785)))

(declare-fun lt!806767 () Unit!38187)

(assert (=> b!2167722 (= lt!806767 call!129983)))

(assert (=> b!2167722 (= lt!806587 Nil!25126)))

(declare-fun lt!806769 () Unit!38187)

(assert (=> b!2167722 (= lt!806769 lt!806767)))

(assert (=> b!2167722 false))

(declare-fun b!2167723 () Bool)

(assert (=> b!2167723 (= e!1386419 (tuple2!24867 Nil!25126 lt!806587))))

(declare-fun bm!129981 () Bool)

(assert (=> bm!129981 (= call!129984 (tail!3112 lt!806587))))

(declare-fun b!2167724 () Bool)

(assert (=> b!2167724 (= e!1386419 (tuple2!24867 Nil!25126 Nil!25126))))

(declare-fun bm!129982 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!341 (List!25210 List!25210 List!25210) Unit!38187)

(assert (=> bm!129982 (= call!129983 (lemmaIsPrefixSameLengthThenSameList!341 lt!806587 Nil!25126 lt!806587))))

(assert (= (and d!649325 c!343397) b!2167721))

(assert (= (and d!649325 (not c!343397)) b!2167711))

(assert (= (and b!2167711 c!343399) b!2167718))

(assert (= (and b!2167711 (not c!343399)) b!2167715))

(assert (= (and b!2167718 c!343395) b!2167724))

(assert (= (and b!2167718 (not c!343395)) b!2167723))

(assert (= (and b!2167715 c!343398) b!2167722))

(assert (= (and b!2167715 (not c!343398)) b!2167720))

(assert (= (and b!2167715 c!343396) b!2167716))

(assert (= (and b!2167715 (not c!343396)) b!2167719))

(assert (= (and b!2167716 c!343400) b!2167712))

(assert (= (and b!2167716 (not c!343400)) b!2167714))

(assert (= (or b!2167716 b!2167719) bm!129979))

(assert (= (or b!2167716 b!2167719) bm!129981))

(assert (= (or b!2167716 b!2167719) bm!129977))

(assert (= (or b!2167716 b!2167719) bm!129975))

(assert (= (or b!2167718 b!2167722) bm!129980))

(assert (= (or b!2167718 b!2167722) bm!129976))

(assert (= (or b!2167718 b!2167722) bm!129982))

(assert (= (or b!2167718 b!2167715) bm!129978))

(assert (= (and d!649325 res!933137) b!2167717))

(assert (= (and b!2167717 (not res!933138)) b!2167713))

(declare-fun m!2608635 () Bool)

(assert (=> bm!129979 m!2608635))

(declare-fun m!2608637 () Bool)

(assert (=> bm!129977 m!2608637))

(declare-fun m!2608639 () Bool)

(assert (=> d!649325 m!2608639))

(declare-fun m!2608641 () Bool)

(assert (=> d!649325 m!2608641))

(declare-fun m!2608643 () Bool)

(assert (=> d!649325 m!2608643))

(declare-fun m!2608645 () Bool)

(assert (=> d!649325 m!2608645))

(assert (=> d!649325 m!2608403))

(declare-fun m!2608647 () Bool)

(assert (=> d!649325 m!2608647))

(declare-fun m!2608649 () Bool)

(assert (=> d!649325 m!2608649))

(assert (=> d!649325 m!2608641))

(declare-fun m!2608651 () Bool)

(assert (=> d!649325 m!2608651))

(declare-fun m!2608653 () Bool)

(assert (=> b!2167713 m!2608653))

(assert (=> b!2167713 m!2608425))

(declare-fun m!2608655 () Bool)

(assert (=> bm!129978 m!2608655))

(assert (=> b!2167715 m!2608647))

(declare-fun m!2608657 () Bool)

(assert (=> b!2167715 m!2608657))

(declare-fun m!2608659 () Bool)

(assert (=> b!2167715 m!2608659))

(assert (=> b!2167715 m!2608421))

(declare-fun m!2608661 () Bool)

(assert (=> b!2167715 m!2608661))

(declare-fun m!2608663 () Bool)

(assert (=> b!2167715 m!2608663))

(declare-fun m!2608665 () Bool)

(assert (=> b!2167715 m!2608665))

(assert (=> b!2167715 m!2608663))

(declare-fun m!2608667 () Bool)

(assert (=> b!2167715 m!2608667))

(declare-fun m!2608669 () Bool)

(assert (=> b!2167715 m!2608669))

(declare-fun m!2608671 () Bool)

(assert (=> b!2167715 m!2608671))

(assert (=> b!2167715 m!2608647))

(declare-fun m!2608673 () Bool)

(assert (=> b!2167715 m!2608673))

(assert (=> b!2167715 m!2608425))

(assert (=> b!2167715 m!2608665))

(declare-fun m!2608675 () Bool)

(assert (=> b!2167715 m!2608675))

(assert (=> b!2167715 m!2608635))

(declare-fun m!2608677 () Bool)

(assert (=> bm!129976 m!2608677))

(declare-fun m!2608679 () Bool)

(assert (=> b!2167716 m!2608679))

(declare-fun m!2608681 () Bool)

(assert (=> bm!129980 m!2608681))

(declare-fun m!2608683 () Bool)

(assert (=> b!2167717 m!2608683))

(declare-fun m!2608685 () Bool)

(assert (=> bm!129982 m!2608685))

(assert (=> bm!129981 m!2608661))

(assert (=> bm!129975 m!2608421))

(declare-fun m!2608687 () Bool)

(assert (=> bm!129975 m!2608687))

(assert (=> b!2167555 d!649325))

(declare-fun d!649327 () Bool)

(declare-fun lambda!81752 () Int)

(declare-fun exists!752 ((InoxSet Context!3138) Int) Bool)

(assert (=> d!649327 (= (nullableZipper!280 z!4055) (exists!752 z!4055 lambda!81752))))

(declare-fun bs!446775 () Bool)

(assert (= bs!446775 d!649327))

(declare-fun m!2608933 () Bool)

(assert (=> bs!446775 m!2608933))

(assert (=> b!2167555 d!649327))

(declare-fun d!649391 () Bool)

(declare-fun c!343477 () Bool)

(assert (=> d!649391 (= c!343477 (isEmpty!14411 lt!806590))))

(declare-fun e!1386589 () Bool)

(assert (=> d!649391 (= (matchZipper!123 z!4055 lt!806590) e!1386589)))

(declare-fun b!2168003 () Bool)

(assert (=> b!2168003 (= e!1386589 (nullableZipper!280 z!4055))))

(declare-fun b!2168004 () Bool)

(declare-fun derivationStepZipper!120 ((InoxSet Context!3138) C!12144) (InoxSet Context!3138))

(assert (=> b!2168004 (= e!1386589 (matchZipper!123 (derivationStepZipper!120 z!4055 (head!4640 lt!806590)) (tail!3112 lt!806590)))))

(assert (= (and d!649391 c!343477) b!2168003))

(assert (= (and d!649391 (not c!343477)) b!2168004))

(declare-fun m!2608935 () Bool)

(assert (=> d!649391 m!2608935))

(assert (=> b!2168003 m!2608423))

(assert (=> b!2168004 m!2608613))

(assert (=> b!2168004 m!2608613))

(declare-fun m!2608937 () Bool)

(assert (=> b!2168004 m!2608937))

(assert (=> b!2168004 m!2608619))

(assert (=> b!2168004 m!2608937))

(assert (=> b!2168004 m!2608619))

(declare-fun m!2608939 () Bool)

(assert (=> b!2168004 m!2608939))

(assert (=> b!2167555 d!649391))

(declare-fun b!2168019 () Bool)

(declare-fun e!1386599 () Int)

(assert (=> b!2168019 (= e!1386599 lt!806592)))

(declare-fun b!2168020 () Bool)

(declare-fun e!1386598 () Bool)

(declare-fun lt!806930 () List!25210)

(declare-fun e!1386600 () Int)

(assert (=> b!2168020 (= e!1386598 (= (size!19631 lt!806930) e!1386600))))

(declare-fun c!343485 () Bool)

(assert (=> b!2168020 (= c!343485 (<= lt!806592 0))))

(declare-fun b!2168021 () Bool)

(declare-fun e!1386601 () List!25210)

(assert (=> b!2168021 (= e!1386601 Nil!25126)))

(declare-fun d!649393 () Bool)

(assert (=> d!649393 e!1386598))

(declare-fun res!933221 () Bool)

(assert (=> d!649393 (=> (not res!933221) (not e!1386598))))

(assert (=> d!649393 (= res!933221 (= ((_ map implies) (content!3406 lt!806930) (content!3406 lt!806594)) ((as const (InoxSet C!12144)) true)))))

(assert (=> d!649393 (= lt!806930 e!1386601)))

(declare-fun c!343486 () Bool)

(assert (=> d!649393 (= c!343486 (or ((_ is Nil!25126) lt!806594) (<= lt!806592 0)))))

(assert (=> d!649393 (= (take!209 lt!806594 lt!806592) lt!806930)))

(declare-fun b!2168022 () Bool)

(assert (=> b!2168022 (= e!1386601 (Cons!25126 (h!30527 lt!806594) (take!209 (t!197772 lt!806594) (- lt!806592 1))))))

(declare-fun b!2168023 () Bool)

(assert (=> b!2168023 (= e!1386600 e!1386599)))

(declare-fun c!343484 () Bool)

(assert (=> b!2168023 (= c!343484 (>= lt!806592 (size!19631 lt!806594)))))

(declare-fun b!2168024 () Bool)

(assert (=> b!2168024 (= e!1386600 0)))

(declare-fun b!2168025 () Bool)

(assert (=> b!2168025 (= e!1386599 (size!19631 lt!806594))))

(assert (= (and d!649393 c!343486) b!2168021))

(assert (= (and d!649393 (not c!343486)) b!2168022))

(assert (= (and d!649393 res!933221) b!2168020))

(assert (= (and b!2168020 c!343485) b!2168024))

(assert (= (and b!2168020 (not c!343485)) b!2168023))

(assert (= (and b!2168023 c!343484) b!2168025))

(assert (= (and b!2168023 (not c!343484)) b!2168019))

(declare-fun m!2608941 () Bool)

(assert (=> b!2168025 m!2608941))

(assert (=> b!2168023 m!2608941))

(declare-fun m!2608943 () Bool)

(assert (=> d!649393 m!2608943))

(declare-fun m!2608945 () Bool)

(assert (=> d!649393 m!2608945))

(declare-fun m!2608947 () Bool)

(assert (=> b!2168022 m!2608947))

(declare-fun m!2608949 () Bool)

(assert (=> b!2168020 m!2608949))

(assert (=> b!2167555 d!649393))

(declare-fun d!649395 () Bool)

(assert (=> d!649395 (isPrefix!2115 lt!806590 (++!6358 lt!806590 lt!806596))))

(declare-fun lt!806931 () Unit!38187)

(assert (=> d!649395 (= lt!806931 (choose!12760 lt!806590 lt!806596))))

(assert (=> d!649395 (= (lemmaConcatTwoListThenFirstIsPrefix!1398 lt!806590 lt!806596) lt!806931)))

(declare-fun bs!446776 () Bool)

(assert (= bs!446776 d!649395))

(assert (=> bs!446776 m!2608467))

(assert (=> bs!446776 m!2608467))

(declare-fun m!2608951 () Bool)

(assert (=> bs!446776 m!2608951))

(declare-fun m!2608953 () Bool)

(assert (=> bs!446776 m!2608953))

(assert (=> b!2167555 d!649395))

(declare-fun d!649397 () Bool)

(assert (=> d!649397 (isPrefix!2115 (take!209 lt!806594 lt!806592) lt!806594)))

(declare-fun lt!806934 () Unit!38187)

(declare-fun choose!12763 (List!25210 Int) Unit!38187)

(assert (=> d!649397 (= lt!806934 (choose!12763 lt!806594 lt!806592))))

(assert (=> d!649397 (>= lt!806592 0)))

(assert (=> d!649397 (= (lemmaTakeIsPrefix!32 lt!806594 lt!806592) lt!806934)))

(declare-fun bs!446777 () Bool)

(assert (= bs!446777 d!649397))

(assert (=> bs!446777 m!2608431))

(assert (=> bs!446777 m!2608431))

(assert (=> bs!446777 m!2608437))

(declare-fun m!2608955 () Bool)

(assert (=> bs!446777 m!2608955))

(assert (=> b!2167555 d!649397))

(declare-fun b!2168026 () Bool)

(declare-fun e!1386602 () Bool)

(declare-fun e!1386603 () Bool)

(assert (=> b!2168026 (= e!1386602 e!1386603)))

(declare-fun res!933222 () Bool)

(assert (=> b!2168026 (=> (not res!933222) (not e!1386603))))

(assert (=> b!2168026 (= res!933222 (not ((_ is Nil!25126) lt!806594)))))

(declare-fun b!2168027 () Bool)

(declare-fun res!933224 () Bool)

(assert (=> b!2168027 (=> (not res!933224) (not e!1386603))))

(assert (=> b!2168027 (= res!933224 (= (head!4640 (take!209 lt!806594 lt!806592)) (head!4640 lt!806594)))))

(declare-fun d!649399 () Bool)

(declare-fun e!1386604 () Bool)

(assert (=> d!649399 e!1386604))

(declare-fun res!933223 () Bool)

(assert (=> d!649399 (=> res!933223 e!1386604)))

(declare-fun lt!806935 () Bool)

(assert (=> d!649399 (= res!933223 (not lt!806935))))

(assert (=> d!649399 (= lt!806935 e!1386602)))

(declare-fun res!933225 () Bool)

(assert (=> d!649399 (=> res!933225 e!1386602)))

(assert (=> d!649399 (= res!933225 ((_ is Nil!25126) (take!209 lt!806594 lt!806592)))))

(assert (=> d!649399 (= (isPrefix!2115 (take!209 lt!806594 lt!806592) lt!806594) lt!806935)))

(declare-fun b!2168029 () Bool)

(assert (=> b!2168029 (= e!1386604 (>= (size!19631 lt!806594) (size!19631 (take!209 lt!806594 lt!806592))))))

(declare-fun b!2168028 () Bool)

(assert (=> b!2168028 (= e!1386603 (isPrefix!2115 (tail!3112 (take!209 lt!806594 lt!806592)) (tail!3112 lt!806594)))))

(assert (= (and d!649399 (not res!933225)) b!2168026))

(assert (= (and b!2168026 res!933222) b!2168027))

(assert (= (and b!2168027 res!933224) b!2168028))

(assert (= (and d!649399 (not res!933223)) b!2168029))

(assert (=> b!2168027 m!2608431))

(declare-fun m!2608957 () Bool)

(assert (=> b!2168027 m!2608957))

(declare-fun m!2608959 () Bool)

(assert (=> b!2168027 m!2608959))

(assert (=> b!2168029 m!2608941))

(assert (=> b!2168029 m!2608431))

(declare-fun m!2608961 () Bool)

(assert (=> b!2168029 m!2608961))

(assert (=> b!2168028 m!2608431))

(declare-fun m!2608963 () Bool)

(assert (=> b!2168028 m!2608963))

(declare-fun m!2608965 () Bool)

(assert (=> b!2168028 m!2608965))

(assert (=> b!2168028 m!2608963))

(assert (=> b!2168028 m!2608965))

(declare-fun m!2608967 () Bool)

(assert (=> b!2168028 m!2608967))

(assert (=> b!2167555 d!649399))

(declare-fun b!2168040 () Bool)

(declare-fun e!1386611 () Bool)

(declare-fun lostCauseZipper!153 ((InoxSet Context!3138)) Bool)

(assert (=> b!2168040 (= e!1386611 (lostCauseZipper!153 z!4055))))

(declare-fun b!2168041 () Bool)

(declare-fun e!1386612 () Int)

(assert (=> b!2168041 (= e!1386612 lt!806599)))

(declare-fun b!2168042 () Bool)

(declare-fun e!1386613 () Int)

(assert (=> b!2168042 (= e!1386613 lt!806592)))

(declare-fun lt!806940 () Int)

(declare-fun d!649401 () Bool)

(assert (=> d!649401 (and (>= lt!806940 (- 1)) (< lt!806940 lt!806601) (>= lt!806940 lt!806599) (or (= lt!806940 lt!806599) (>= lt!806940 lt!806592)))))

(assert (=> d!649401 (= lt!806940 e!1386612)))

(declare-fun c!343492 () Bool)

(assert (=> d!649401 (= c!343492 e!1386611)))

(declare-fun res!933228 () Bool)

(assert (=> d!649401 (=> res!933228 e!1386611)))

(assert (=> d!649401 (= res!933228 (= lt!806592 lt!806601))))

(assert (=> d!649401 (and (>= lt!806592 0) (<= lt!806592 lt!806601))))

(assert (=> d!649401 (= (furthestNullablePosition!186 z!4055 lt!806592 totalInput!977 lt!806601 lt!806599) lt!806940)))

(declare-fun b!2168043 () Bool)

(assert (=> b!2168043 (= e!1386613 lt!806599)))

(declare-fun b!2168044 () Bool)

(declare-fun lt!806941 () (InoxSet Context!3138))

(assert (=> b!2168044 (= e!1386612 (furthestNullablePosition!186 lt!806941 (+ lt!806592 1) totalInput!977 lt!806601 e!1386613))))

(declare-fun apply!6062 (BalanceConc!16032 Int) C!12144)

(assert (=> b!2168044 (= lt!806941 (derivationStepZipper!120 z!4055 (apply!6062 totalInput!977 lt!806592)))))

(declare-fun c!343491 () Bool)

(assert (=> b!2168044 (= c!343491 (nullableZipper!280 lt!806941))))

(assert (= (and d!649401 (not res!933228)) b!2168040))

(assert (= (and d!649401 c!343492) b!2168041))

(assert (= (and d!649401 (not c!343492)) b!2168044))

(assert (= (and b!2168044 c!343491) b!2168042))

(assert (= (and b!2168044 (not c!343491)) b!2168043))

(declare-fun m!2608969 () Bool)

(assert (=> b!2168040 m!2608969))

(declare-fun m!2608971 () Bool)

(assert (=> b!2168044 m!2608971))

(declare-fun m!2608973 () Bool)

(assert (=> b!2168044 m!2608973))

(assert (=> b!2168044 m!2608973))

(declare-fun m!2608975 () Bool)

(assert (=> b!2168044 m!2608975))

(declare-fun m!2608977 () Bool)

(assert (=> b!2168044 m!2608977))

(assert (=> b!2167555 d!649401))

(declare-fun d!649403 () Bool)

(declare-fun e!1386619 () Bool)

(assert (=> d!649403 e!1386619))

(declare-fun res!933234 () Bool)

(assert (=> d!649403 (=> res!933234 e!1386619)))

(declare-fun lt!806947 () Int)

(assert (=> d!649403 (= res!933234 (<= lt!806947 0))))

(assert (=> d!649403 (= lt!806947 (+ (- (furthestNullablePosition!186 z!4055 lt!806592 totalInput!977 (size!19632 totalInput!977) lt!806599) lt!806592) 1))))

(declare-fun lt!806946 () Unit!38187)

(declare-fun choose!12764 ((InoxSet Context!3138) Int BalanceConc!16032 Int) Unit!38187)

(assert (=> d!649403 (= lt!806946 (choose!12764 z!4055 lt!806592 totalInput!977 lt!806599))))

(declare-fun e!1386618 () Bool)

(assert (=> d!649403 e!1386618))

(declare-fun res!933233 () Bool)

(assert (=> d!649403 (=> (not res!933233) (not e!1386618))))

(assert (=> d!649403 (= res!933233 (>= lt!806592 0))))

(assert (=> d!649403 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!30 z!4055 lt!806592 totalInput!977 lt!806599) lt!806946)))

(declare-fun b!2168049 () Bool)

(assert (=> b!2168049 (= e!1386618 (<= lt!806592 (size!19632 totalInput!977)))))

(declare-fun b!2168050 () Bool)

(assert (=> b!2168050 (= e!1386619 (matchZipper!123 z!4055 (take!209 (drop!1222 (list!9626 totalInput!977) lt!806592) lt!806947)))))

(assert (= (and d!649403 res!933233) b!2168049))

(assert (= (and d!649403 (not res!933234)) b!2168050))

(assert (=> d!649403 m!2608459))

(assert (=> d!649403 m!2608459))

(declare-fun m!2608979 () Bool)

(assert (=> d!649403 m!2608979))

(declare-fun m!2608981 () Bool)

(assert (=> d!649403 m!2608981))

(assert (=> b!2168049 m!2608459))

(assert (=> b!2168050 m!2608393))

(assert (=> b!2168050 m!2608393))

(declare-fun m!2608983 () Bool)

(assert (=> b!2168050 m!2608983))

(assert (=> b!2168050 m!2608983))

(declare-fun m!2608985 () Bool)

(assert (=> b!2168050 m!2608985))

(assert (=> b!2168050 m!2608985))

(declare-fun m!2608987 () Bool)

(assert (=> b!2168050 m!2608987))

(assert (=> b!2167555 d!649403))

(declare-fun d!649405 () Bool)

(assert (=> d!649405 (= (isEmpty!14411 (_1!14803 lt!806595)) ((_ is Nil!25126) (_1!14803 lt!806595)))))

(assert (=> b!2167555 d!649405))

(declare-fun d!649407 () Bool)

(declare-fun e!1386622 () Bool)

(assert (=> d!649407 e!1386622))

(declare-fun res!933237 () Bool)

(assert (=> d!649407 (=> res!933237 e!1386622)))

(declare-fun lt!806950 () Bool)

(assert (=> d!649407 (= res!933237 (not lt!806950))))

(assert (=> d!649407 (= lt!806950 (= lt!806587 (drop!1222 lt!806594 (- (size!19631 lt!806594) (size!19631 lt!806587)))))))

(assert (=> d!649407 (= (isSuffix!666 lt!806587 lt!806594) lt!806950)))

(declare-fun b!2168053 () Bool)

(assert (=> b!2168053 (= e!1386622 (>= (size!19631 lt!806594) (size!19631 lt!806587)))))

(assert (= (and d!649407 (not res!933237)) b!2168053))

(assert (=> d!649407 m!2608941))

(assert (=> d!649407 m!2608421))

(declare-fun m!2608989 () Bool)

(assert (=> d!649407 m!2608989))

(assert (=> b!2168053 m!2608941))

(assert (=> b!2168053 m!2608421))

(assert (=> b!2167556 d!649407))

(declare-fun d!649409 () Bool)

(assert (=> d!649409 (= (list!9626 totalInput!977) (list!9628 (c!343350 totalInput!977)))))

(declare-fun bs!446778 () Bool)

(assert (= bs!446778 d!649409))

(declare-fun m!2608991 () Bool)

(assert (=> bs!446778 m!2608991))

(assert (=> b!2167556 d!649409))

(declare-fun d!649411 () Bool)

(assert (=> d!649411 (= (list!9626 input!5540) (list!9628 (c!343350 input!5540)))))

(declare-fun bs!446779 () Bool)

(assert (= bs!446779 d!649411))

(declare-fun m!2608993 () Bool)

(assert (=> bs!446779 m!2608993))

(assert (=> b!2167556 d!649411))

(declare-fun b!2168082 () Bool)

(declare-fun e!1386643 () Bool)

(assert (=> b!2168082 (= e!1386643 (not (= (head!4640 (_1!14803 lt!806597)) (c!343351 r!12534))))))

(declare-fun b!2168083 () Bool)

(declare-fun res!933257 () Bool)

(declare-fun e!1386642 () Bool)

(assert (=> b!2168083 (=> res!933257 e!1386642)))

(assert (=> b!2168083 (= res!933257 (not ((_ is ElementMatch!5999) r!12534)))))

(declare-fun e!1386637 () Bool)

(assert (=> b!2168083 (= e!1386637 e!1386642)))

(declare-fun b!2168084 () Bool)

(declare-fun res!933254 () Bool)

(declare-fun e!1386638 () Bool)

(assert (=> b!2168084 (=> (not res!933254) (not e!1386638))))

(assert (=> b!2168084 (= res!933254 (isEmpty!14411 (tail!3112 (_1!14803 lt!806597))))))

(declare-fun b!2168085 () Bool)

(declare-fun res!933256 () Bool)

(assert (=> b!2168085 (=> res!933256 e!1386643)))

(assert (=> b!2168085 (= res!933256 (not (isEmpty!14411 (tail!3112 (_1!14803 lt!806597)))))))

(declare-fun b!2168086 () Bool)

(declare-fun e!1386640 () Bool)

(assert (=> b!2168086 (= e!1386642 e!1386640)))

(declare-fun res!933259 () Bool)

(assert (=> b!2168086 (=> (not res!933259) (not e!1386640))))

(declare-fun lt!806953 () Bool)

(assert (=> b!2168086 (= res!933259 (not lt!806953))))

(declare-fun b!2168087 () Bool)

(assert (=> b!2168087 (= e!1386638 (= (head!4640 (_1!14803 lt!806597)) (c!343351 r!12534)))))

(declare-fun b!2168088 () Bool)

(declare-fun res!933255 () Bool)

(assert (=> b!2168088 (=> res!933255 e!1386642)))

(assert (=> b!2168088 (= res!933255 e!1386638)))

(declare-fun res!933260 () Bool)

(assert (=> b!2168088 (=> (not res!933260) (not e!1386638))))

(assert (=> b!2168088 (= res!933260 lt!806953)))

(declare-fun b!2168089 () Bool)

(declare-fun e!1386641 () Bool)

(declare-fun call!130027 () Bool)

(assert (=> b!2168089 (= e!1386641 (= lt!806953 call!130027))))

(declare-fun bm!130022 () Bool)

(assert (=> bm!130022 (= call!130027 (isEmpty!14411 (_1!14803 lt!806597)))))

(declare-fun b!2168090 () Bool)

(declare-fun e!1386639 () Bool)

(assert (=> b!2168090 (= e!1386639 (nullable!1690 r!12534))))

(declare-fun b!2168091 () Bool)

(assert (=> b!2168091 (= e!1386637 (not lt!806953))))

(declare-fun d!649413 () Bool)

(assert (=> d!649413 e!1386641))

(declare-fun c!343501 () Bool)

(assert (=> d!649413 (= c!343501 ((_ is EmptyExpr!5999) r!12534))))

(assert (=> d!649413 (= lt!806953 e!1386639)))

(declare-fun c!343499 () Bool)

(assert (=> d!649413 (= c!343499 (isEmpty!14411 (_1!14803 lt!806597)))))

(assert (=> d!649413 (validRegex!2275 r!12534)))

(assert (=> d!649413 (= (matchR!2756 r!12534 (_1!14803 lt!806597)) lt!806953)))

(declare-fun b!2168092 () Bool)

(assert (=> b!2168092 (= e!1386640 e!1386643)))

(declare-fun res!933258 () Bool)

(assert (=> b!2168092 (=> res!933258 e!1386643)))

(assert (=> b!2168092 (= res!933258 call!130027)))

(declare-fun b!2168093 () Bool)

(assert (=> b!2168093 (= e!1386641 e!1386637)))

(declare-fun c!343500 () Bool)

(assert (=> b!2168093 (= c!343500 ((_ is EmptyLang!5999) r!12534))))

(declare-fun b!2168094 () Bool)

(declare-fun res!933261 () Bool)

(assert (=> b!2168094 (=> (not res!933261) (not e!1386638))))

(assert (=> b!2168094 (= res!933261 (not call!130027))))

(declare-fun b!2168095 () Bool)

(assert (=> b!2168095 (= e!1386639 (matchR!2756 (derivativeStep!1434 r!12534 (head!4640 (_1!14803 lt!806597))) (tail!3112 (_1!14803 lt!806597))))))

(assert (= (and d!649413 c!343499) b!2168090))

(assert (= (and d!649413 (not c!343499)) b!2168095))

(assert (= (and d!649413 c!343501) b!2168089))

(assert (= (and d!649413 (not c!343501)) b!2168093))

(assert (= (and b!2168093 c!343500) b!2168091))

(assert (= (and b!2168093 (not c!343500)) b!2168083))

(assert (= (and b!2168083 (not res!933257)) b!2168088))

(assert (= (and b!2168088 res!933260) b!2168094))

(assert (= (and b!2168094 res!933261) b!2168084))

(assert (= (and b!2168084 res!933254) b!2168087))

(assert (= (and b!2168088 (not res!933255)) b!2168086))

(assert (= (and b!2168086 res!933259) b!2168092))

(assert (= (and b!2168092 (not res!933258)) b!2168085))

(assert (= (and b!2168085 (not res!933256)) b!2168082))

(assert (= (or b!2168089 b!2168092 b!2168094) bm!130022))

(assert (=> b!2168084 m!2608607))

(assert (=> b!2168084 m!2608607))

(declare-fun m!2608995 () Bool)

(assert (=> b!2168084 m!2608995))

(assert (=> bm!130022 m!2608445))

(assert (=> b!2168085 m!2608607))

(assert (=> b!2168085 m!2608607))

(assert (=> b!2168085 m!2608995))

(assert (=> b!2168082 m!2608599))

(assert (=> b!2168087 m!2608599))

(assert (=> b!2168090 m!2608655))

(assert (=> b!2168095 m!2608599))

(assert (=> b!2168095 m!2608599))

(declare-fun m!2608997 () Bool)

(assert (=> b!2168095 m!2608997))

(assert (=> b!2168095 m!2608607))

(assert (=> b!2168095 m!2608997))

(assert (=> b!2168095 m!2608607))

(declare-fun m!2608999 () Bool)

(assert (=> b!2168095 m!2608999))

(assert (=> d!649413 m!2608445))

(assert (=> d!649413 m!2608403))

(assert (=> b!2167554 d!649413))

(declare-fun d!649415 () Bool)

(declare-fun lt!806956 () Regex!5999)

(assert (=> d!649415 (validRegex!2275 lt!806956)))

(declare-fun generalisedUnion!506 (List!25211) Regex!5999)

(declare-fun unfocusZipperList!30 (List!25212) List!25211)

(assert (=> d!649415 (= lt!806956 (generalisedUnion!506 (unfocusZipperList!30 (toList!1182 z!4055))))))

(assert (=> d!649415 (= (unfocusZipper!106 (toList!1182 z!4055)) lt!806956)))

(declare-fun bs!446780 () Bool)

(assert (= bs!446780 d!649415))

(declare-fun m!2609001 () Bool)

(assert (=> bs!446780 m!2609001))

(assert (=> bs!446780 m!2608397))

(declare-fun m!2609003 () Bool)

(assert (=> bs!446780 m!2609003))

(assert (=> bs!446780 m!2609003))

(declare-fun m!2609005 () Bool)

(assert (=> bs!446780 m!2609005))

(assert (=> b!2167564 d!649415))

(declare-fun d!649417 () Bool)

(declare-fun e!1386646 () Bool)

(assert (=> d!649417 e!1386646))

(declare-fun res!933264 () Bool)

(assert (=> d!649417 (=> (not res!933264) (not e!1386646))))

(declare-fun lt!806959 () List!25212)

(declare-fun noDuplicate!283 (List!25212) Bool)

(assert (=> d!649417 (= res!933264 (noDuplicate!283 lt!806959))))

(declare-fun choose!12765 ((InoxSet Context!3138)) List!25212)

(assert (=> d!649417 (= lt!806959 (choose!12765 z!4055))))

(assert (=> d!649417 (= (toList!1182 z!4055) lt!806959)))

(declare-fun b!2168098 () Bool)

(declare-fun content!3407 (List!25212) (InoxSet Context!3138))

(assert (=> b!2168098 (= e!1386646 (= (content!3407 lt!806959) z!4055))))

(assert (= (and d!649417 res!933264) b!2168098))

(declare-fun m!2609007 () Bool)

(assert (=> d!649417 m!2609007))

(declare-fun m!2609009 () Bool)

(assert (=> d!649417 m!2609009))

(declare-fun m!2609011 () Bool)

(assert (=> b!2168098 m!2609011))

(assert (=> b!2167564 d!649417))

(declare-fun d!649419 () Bool)

(declare-fun c!343504 () Bool)

(assert (=> d!649419 (= c!343504 ((_ is Node!8135) (c!343350 input!5540)))))

(declare-fun e!1386651 () Bool)

(assert (=> d!649419 (= (inv!33315 (c!343350 input!5540)) e!1386651)))

(declare-fun b!2168105 () Bool)

(declare-fun inv!33321 (Conc!8135) Bool)

(assert (=> b!2168105 (= e!1386651 (inv!33321 (c!343350 input!5540)))))

(declare-fun b!2168106 () Bool)

(declare-fun e!1386652 () Bool)

(assert (=> b!2168106 (= e!1386651 e!1386652)))

(declare-fun res!933267 () Bool)

(assert (=> b!2168106 (= res!933267 (not ((_ is Leaf!11902) (c!343350 input!5540))))))

(assert (=> b!2168106 (=> res!933267 e!1386652)))

(declare-fun b!2168107 () Bool)

(declare-fun inv!33322 (Conc!8135) Bool)

(assert (=> b!2168107 (= e!1386652 (inv!33322 (c!343350 input!5540)))))

(assert (= (and d!649419 c!343504) b!2168105))

(assert (= (and d!649419 (not c!343504)) b!2168106))

(assert (= (and b!2168106 (not res!933267)) b!2168107))

(declare-fun m!2609013 () Bool)

(assert (=> b!2168105 m!2609013))

(declare-fun m!2609015 () Bool)

(assert (=> b!2168107 m!2609015))

(assert (=> b!2167562 d!649419))

(declare-fun b!2168111 () Bool)

(declare-fun e!1386654 () Bool)

(declare-fun lt!806960 () List!25210)

(assert (=> b!2168111 (= e!1386654 (or (not (= (_2!14803 lt!806597) Nil!25126)) (= lt!806960 (_1!14803 lt!806597))))))

(declare-fun b!2168110 () Bool)

(declare-fun res!933269 () Bool)

(assert (=> b!2168110 (=> (not res!933269) (not e!1386654))))

(assert (=> b!2168110 (= res!933269 (= (size!19631 lt!806960) (+ (size!19631 (_1!14803 lt!806597)) (size!19631 (_2!14803 lt!806597)))))))

(declare-fun d!649421 () Bool)

(assert (=> d!649421 e!1386654))

(declare-fun res!933268 () Bool)

(assert (=> d!649421 (=> (not res!933268) (not e!1386654))))

(assert (=> d!649421 (= res!933268 (= (content!3406 lt!806960) ((_ map or) (content!3406 (_1!14803 lt!806597)) (content!3406 (_2!14803 lt!806597)))))))

(declare-fun e!1386653 () List!25210)

(assert (=> d!649421 (= lt!806960 e!1386653)))

(declare-fun c!343505 () Bool)

(assert (=> d!649421 (= c!343505 ((_ is Nil!25126) (_1!14803 lt!806597)))))

(assert (=> d!649421 (= (++!6358 (_1!14803 lt!806597) (_2!14803 lt!806597)) lt!806960)))

(declare-fun b!2168109 () Bool)

(assert (=> b!2168109 (= e!1386653 (Cons!25126 (h!30527 (_1!14803 lt!806597)) (++!6358 (t!197772 (_1!14803 lt!806597)) (_2!14803 lt!806597))))))

(declare-fun b!2168108 () Bool)

(assert (=> b!2168108 (= e!1386653 (_2!14803 lt!806597))))

(assert (= (and d!649421 c!343505) b!2168108))

(assert (= (and d!649421 (not c!343505)) b!2168109))

(assert (= (and d!649421 res!933268) b!2168110))

(assert (= (and b!2168110 res!933269) b!2168111))

(declare-fun m!2609017 () Bool)

(assert (=> b!2168110 m!2609017))

(assert (=> b!2168110 m!2608605))

(declare-fun m!2609019 () Bool)

(assert (=> b!2168110 m!2609019))

(declare-fun m!2609021 () Bool)

(assert (=> d!649421 m!2609021))

(declare-fun m!2609023 () Bool)

(assert (=> d!649421 m!2609023))

(declare-fun m!2609025 () Bool)

(assert (=> d!649421 m!2609025))

(declare-fun m!2609027 () Bool)

(assert (=> b!2168109 m!2609027))

(assert (=> b!2167553 d!649421))

(declare-fun d!649423 () Bool)

(declare-fun lt!806963 () Bool)

(assert (=> d!649423 (= lt!806963 (isEmpty!14411 (list!9626 (_1!14804 lt!806603))))))

(declare-fun isEmpty!14414 (Conc!8135) Bool)

(assert (=> d!649423 (= lt!806963 (isEmpty!14414 (c!343350 (_1!14804 lt!806603))))))

(assert (=> d!649423 (= (isEmpty!14412 (_1!14804 lt!806603)) lt!806963)))

(declare-fun bs!446781 () Bool)

(assert (= bs!446781 d!649423))

(assert (=> bs!446781 m!2608465))

(assert (=> bs!446781 m!2608465))

(declare-fun m!2609029 () Bool)

(assert (=> bs!446781 m!2609029))

(declare-fun m!2609031 () Bool)

(assert (=> bs!446781 m!2609031))

(assert (=> b!2167551 d!649423))

(declare-fun c!343506 () Bool)

(declare-fun d!649425 () Bool)

(assert (=> d!649425 (= c!343506 (isEmpty!14411 (take!209 (drop!1222 lt!806594 lt!806592) lt!806588)))))

(declare-fun e!1386655 () Bool)

(assert (=> d!649425 (= (matchZipper!123 z!4055 (take!209 (drop!1222 lt!806594 lt!806592) lt!806588)) e!1386655)))

(declare-fun b!2168112 () Bool)

(assert (=> b!2168112 (= e!1386655 (nullableZipper!280 z!4055))))

(declare-fun b!2168113 () Bool)

(assert (=> b!2168113 (= e!1386655 (matchZipper!123 (derivationStepZipper!120 z!4055 (head!4640 (take!209 (drop!1222 lt!806594 lt!806592) lt!806588))) (tail!3112 (take!209 (drop!1222 lt!806594 lt!806592) lt!806588))))))

(assert (= (and d!649425 c!343506) b!2168112))

(assert (= (and d!649425 (not c!343506)) b!2168113))

(assert (=> d!649425 m!2608449))

(declare-fun m!2609033 () Bool)

(assert (=> d!649425 m!2609033))

(assert (=> b!2168112 m!2608423))

(assert (=> b!2168113 m!2608449))

(declare-fun m!2609035 () Bool)

(assert (=> b!2168113 m!2609035))

(assert (=> b!2168113 m!2609035))

(declare-fun m!2609037 () Bool)

(assert (=> b!2168113 m!2609037))

(assert (=> b!2168113 m!2608449))

(declare-fun m!2609039 () Bool)

(assert (=> b!2168113 m!2609039))

(assert (=> b!2168113 m!2609037))

(assert (=> b!2168113 m!2609039))

(declare-fun m!2609041 () Bool)

(assert (=> b!2168113 m!2609041))

(assert (=> b!2167550 d!649425))

(declare-fun b!2168114 () Bool)

(declare-fun e!1386657 () Int)

(assert (=> b!2168114 (= e!1386657 lt!806588)))

(declare-fun b!2168115 () Bool)

(declare-fun e!1386656 () Bool)

(declare-fun lt!806964 () List!25210)

(declare-fun e!1386658 () Int)

(assert (=> b!2168115 (= e!1386656 (= (size!19631 lt!806964) e!1386658))))

(declare-fun c!343508 () Bool)

(assert (=> b!2168115 (= c!343508 (<= lt!806588 0))))

(declare-fun b!2168116 () Bool)

(declare-fun e!1386659 () List!25210)

(assert (=> b!2168116 (= e!1386659 Nil!25126)))

(declare-fun d!649427 () Bool)

(assert (=> d!649427 e!1386656))

(declare-fun res!933270 () Bool)

(assert (=> d!649427 (=> (not res!933270) (not e!1386656))))

(assert (=> d!649427 (= res!933270 (= ((_ map implies) (content!3406 lt!806964) (content!3406 (drop!1222 lt!806594 lt!806592))) ((as const (InoxSet C!12144)) true)))))

(assert (=> d!649427 (= lt!806964 e!1386659)))

(declare-fun c!343509 () Bool)

(assert (=> d!649427 (= c!343509 (or ((_ is Nil!25126) (drop!1222 lt!806594 lt!806592)) (<= lt!806588 0)))))

(assert (=> d!649427 (= (take!209 (drop!1222 lt!806594 lt!806592) lt!806588) lt!806964)))

(declare-fun b!2168117 () Bool)

(assert (=> b!2168117 (= e!1386659 (Cons!25126 (h!30527 (drop!1222 lt!806594 lt!806592)) (take!209 (t!197772 (drop!1222 lt!806594 lt!806592)) (- lt!806588 1))))))

(declare-fun b!2168118 () Bool)

(assert (=> b!2168118 (= e!1386658 e!1386657)))

(declare-fun c!343507 () Bool)

(assert (=> b!2168118 (= c!343507 (>= lt!806588 (size!19631 (drop!1222 lt!806594 lt!806592))))))

(declare-fun b!2168119 () Bool)

(assert (=> b!2168119 (= e!1386658 0)))

(declare-fun b!2168120 () Bool)

(assert (=> b!2168120 (= e!1386657 (size!19631 (drop!1222 lt!806594 lt!806592)))))

(assert (= (and d!649427 c!343509) b!2168116))

(assert (= (and d!649427 (not c!343509)) b!2168117))

(assert (= (and d!649427 res!933270) b!2168115))

(assert (= (and b!2168115 c!343508) b!2168119))

(assert (= (and b!2168115 (not c!343508)) b!2168118))

(assert (= (and b!2168118 c!343507) b!2168120))

(assert (= (and b!2168118 (not c!343507)) b!2168114))

(assert (=> b!2168120 m!2608447))

(declare-fun m!2609043 () Bool)

(assert (=> b!2168120 m!2609043))

(assert (=> b!2168118 m!2608447))

(assert (=> b!2168118 m!2609043))

(declare-fun m!2609045 () Bool)

(assert (=> d!649427 m!2609045))

(assert (=> d!649427 m!2608447))

(declare-fun m!2609047 () Bool)

(assert (=> d!649427 m!2609047))

(declare-fun m!2609049 () Bool)

(assert (=> b!2168117 m!2609049))

(declare-fun m!2609051 () Bool)

(assert (=> b!2168115 m!2609051))

(assert (=> b!2167550 d!649427))

(declare-fun bm!130025 () Bool)

(declare-fun call!130030 () Int)

(assert (=> bm!130025 (= call!130030 (size!19631 lt!806594))))

(declare-fun b!2168139 () Bool)

(declare-fun e!1386672 () List!25210)

(assert (=> b!2168139 (= e!1386672 (drop!1222 (t!197772 lt!806594) (- lt!806592 1)))))

(declare-fun b!2168140 () Bool)

(declare-fun e!1386673 () List!25210)

(assert (=> b!2168140 (= e!1386673 Nil!25126)))

(declare-fun b!2168141 () Bool)

(declare-fun e!1386671 () Int)

(declare-fun e!1386670 () Int)

(assert (=> b!2168141 (= e!1386671 e!1386670)))

(declare-fun c!343521 () Bool)

(assert (=> b!2168141 (= c!343521 (>= lt!806592 call!130030))))

(declare-fun b!2168143 () Bool)

(assert (=> b!2168143 (= e!1386672 lt!806594)))

(declare-fun b!2168144 () Bool)

(assert (=> b!2168144 (= e!1386671 call!130030)))

(declare-fun b!2168145 () Bool)

(assert (=> b!2168145 (= e!1386673 e!1386672)))

(declare-fun c!343518 () Bool)

(assert (=> b!2168145 (= c!343518 (<= lt!806592 0))))

(declare-fun b!2168146 () Bool)

(assert (=> b!2168146 (= e!1386670 (- call!130030 lt!806592))))

(declare-fun b!2168147 () Bool)

(declare-fun e!1386674 () Bool)

(declare-fun lt!806967 () List!25210)

(assert (=> b!2168147 (= e!1386674 (= (size!19631 lt!806967) e!1386671))))

(declare-fun c!343519 () Bool)

(assert (=> b!2168147 (= c!343519 (<= lt!806592 0))))

(declare-fun d!649429 () Bool)

(assert (=> d!649429 e!1386674))

(declare-fun res!933273 () Bool)

(assert (=> d!649429 (=> (not res!933273) (not e!1386674))))

(assert (=> d!649429 (= res!933273 (= ((_ map implies) (content!3406 lt!806967) (content!3406 lt!806594)) ((as const (InoxSet C!12144)) true)))))

(assert (=> d!649429 (= lt!806967 e!1386673)))

(declare-fun c!343520 () Bool)

(assert (=> d!649429 (= c!343520 ((_ is Nil!25126) lt!806594))))

(assert (=> d!649429 (= (drop!1222 lt!806594 lt!806592) lt!806967)))

(declare-fun b!2168142 () Bool)

(assert (=> b!2168142 (= e!1386670 0)))

(assert (= (and d!649429 c!343520) b!2168140))

(assert (= (and d!649429 (not c!343520)) b!2168145))

(assert (= (and b!2168145 c!343518) b!2168143))

(assert (= (and b!2168145 (not c!343518)) b!2168139))

(assert (= (and d!649429 res!933273) b!2168147))

(assert (= (and b!2168147 c!343519) b!2168144))

(assert (= (and b!2168147 (not c!343519)) b!2168141))

(assert (= (and b!2168141 c!343521) b!2168142))

(assert (= (and b!2168141 (not c!343521)) b!2168146))

(assert (= (or b!2168144 b!2168141 b!2168146) bm!130025))

(assert (=> bm!130025 m!2608941))

(declare-fun m!2609053 () Bool)

(assert (=> b!2168139 m!2609053))

(declare-fun m!2609055 () Bool)

(assert (=> b!2168147 m!2609055))

(declare-fun m!2609057 () Bool)

(assert (=> d!649429 m!2609057))

(assert (=> d!649429 m!2608945))

(assert (=> b!2167550 d!649429))

(declare-fun d!649431 () Bool)

(declare-fun lambda!81755 () Int)

(declare-fun forall!5162 (List!25211 Int) Bool)

(assert (=> d!649431 (= (inv!33316 setElem!18128) (forall!5162 (exprs!2069 setElem!18128) lambda!81755))))

(declare-fun bs!446782 () Bool)

(assert (= bs!446782 d!649431))

(declare-fun m!2609059 () Bool)

(assert (=> bs!446782 m!2609059))

(assert (=> setNonEmpty!18128 d!649431))

(declare-fun bm!130032 () Bool)

(declare-fun call!130038 () Bool)

(declare-fun call!130037 () Bool)

(assert (=> bm!130032 (= call!130038 call!130037)))

(declare-fun d!649433 () Bool)

(declare-fun res!933286 () Bool)

(declare-fun e!1386691 () Bool)

(assert (=> d!649433 (=> res!933286 e!1386691)))

(assert (=> d!649433 (= res!933286 ((_ is ElementMatch!5999) r!12534))))

(assert (=> d!649433 (= (validRegex!2275 r!12534) e!1386691)))

(declare-fun b!2168166 () Bool)

(declare-fun e!1386694 () Bool)

(assert (=> b!2168166 (= e!1386691 e!1386694)))

(declare-fun c!343527 () Bool)

(assert (=> b!2168166 (= c!343527 ((_ is Star!5999) r!12534))))

(declare-fun b!2168167 () Bool)

(declare-fun e!1386695 () Bool)

(declare-fun call!130039 () Bool)

(assert (=> b!2168167 (= e!1386695 call!130039)))

(declare-fun bm!130033 () Bool)

(declare-fun c!343526 () Bool)

(assert (=> bm!130033 (= call!130037 (validRegex!2275 (ite c!343527 (reg!6328 r!12534) (ite c!343526 (regTwo!12511 r!12534) (regOne!12510 r!12534)))))))

(declare-fun b!2168168 () Bool)

(declare-fun res!933285 () Bool)

(declare-fun e!1386690 () Bool)

(assert (=> b!2168168 (=> (not res!933285) (not e!1386690))))

(assert (=> b!2168168 (= res!933285 call!130039)))

(declare-fun e!1386689 () Bool)

(assert (=> b!2168168 (= e!1386689 e!1386690)))

(declare-fun b!2168169 () Bool)

(assert (=> b!2168169 (= e!1386690 call!130038)))

(declare-fun bm!130034 () Bool)

(assert (=> bm!130034 (= call!130039 (validRegex!2275 (ite c!343526 (regOne!12511 r!12534) (regTwo!12510 r!12534))))))

(declare-fun b!2168170 () Bool)

(declare-fun e!1386693 () Bool)

(assert (=> b!2168170 (= e!1386693 e!1386695)))

(declare-fun res!933284 () Bool)

(assert (=> b!2168170 (=> (not res!933284) (not e!1386695))))

(assert (=> b!2168170 (= res!933284 call!130038)))

(declare-fun b!2168171 () Bool)

(declare-fun e!1386692 () Bool)

(assert (=> b!2168171 (= e!1386692 call!130037)))

(declare-fun b!2168172 () Bool)

(assert (=> b!2168172 (= e!1386694 e!1386689)))

(assert (=> b!2168172 (= c!343526 ((_ is Union!5999) r!12534))))

(declare-fun b!2168173 () Bool)

(declare-fun res!933288 () Bool)

(assert (=> b!2168173 (=> res!933288 e!1386693)))

(assert (=> b!2168173 (= res!933288 (not ((_ is Concat!10301) r!12534)))))

(assert (=> b!2168173 (= e!1386689 e!1386693)))

(declare-fun b!2168174 () Bool)

(assert (=> b!2168174 (= e!1386694 e!1386692)))

(declare-fun res!933287 () Bool)

(assert (=> b!2168174 (= res!933287 (not (nullable!1690 (reg!6328 r!12534))))))

(assert (=> b!2168174 (=> (not res!933287) (not e!1386692))))

(assert (= (and d!649433 (not res!933286)) b!2168166))

(assert (= (and b!2168166 c!343527) b!2168174))

(assert (= (and b!2168166 (not c!343527)) b!2168172))

(assert (= (and b!2168174 res!933287) b!2168171))

(assert (= (and b!2168172 c!343526) b!2168168))

(assert (= (and b!2168172 (not c!343526)) b!2168173))

(assert (= (and b!2168168 res!933285) b!2168169))

(assert (= (and b!2168173 (not res!933288)) b!2168170))

(assert (= (and b!2168170 res!933284) b!2168167))

(assert (= (or b!2168169 b!2168170) bm!130032))

(assert (= (or b!2168168 b!2168167) bm!130034))

(assert (= (or b!2168171 bm!130032) bm!130033))

(declare-fun m!2609061 () Bool)

(assert (=> bm!130033 m!2609061))

(declare-fun m!2609063 () Bool)

(assert (=> bm!130034 m!2609063))

(declare-fun m!2609065 () Bool)

(assert (=> b!2168174 m!2609065))

(assert (=> start!210138 d!649433))

(declare-fun d!649435 () Bool)

(declare-fun isBalanced!2523 (Conc!8135) Bool)

(assert (=> d!649435 (= (inv!33317 totalInput!977) (isBalanced!2523 (c!343350 totalInput!977)))))

(declare-fun bs!446783 () Bool)

(assert (= bs!446783 d!649435))

(declare-fun m!2609067 () Bool)

(assert (=> bs!446783 m!2609067))

(assert (=> start!210138 d!649435))

(declare-fun d!649437 () Bool)

(assert (=> d!649437 (= (inv!33317 input!5540) (isBalanced!2523 (c!343350 input!5540)))))

(declare-fun bs!446784 () Bool)

(assert (= bs!446784 d!649437))

(declare-fun m!2609069 () Bool)

(assert (=> bs!446784 m!2609069))

(assert (=> start!210138 d!649437))

(declare-fun b!2168175 () Bool)

(declare-fun e!1386702 () Bool)

(assert (=> b!2168175 (= e!1386702 (not (= (head!4640 (_1!14803 lt!806595)) (c!343351 r!12534))))))

(declare-fun b!2168176 () Bool)

(declare-fun res!933292 () Bool)

(declare-fun e!1386701 () Bool)

(assert (=> b!2168176 (=> res!933292 e!1386701)))

(assert (=> b!2168176 (= res!933292 (not ((_ is ElementMatch!5999) r!12534)))))

(declare-fun e!1386696 () Bool)

(assert (=> b!2168176 (= e!1386696 e!1386701)))

(declare-fun b!2168177 () Bool)

(declare-fun res!933289 () Bool)

(declare-fun e!1386697 () Bool)

(assert (=> b!2168177 (=> (not res!933289) (not e!1386697))))

(assert (=> b!2168177 (= res!933289 (isEmpty!14411 (tail!3112 (_1!14803 lt!806595))))))

(declare-fun b!2168178 () Bool)

(declare-fun res!933291 () Bool)

(assert (=> b!2168178 (=> res!933291 e!1386702)))

(assert (=> b!2168178 (= res!933291 (not (isEmpty!14411 (tail!3112 (_1!14803 lt!806595)))))))

(declare-fun b!2168179 () Bool)

(declare-fun e!1386699 () Bool)

(assert (=> b!2168179 (= e!1386701 e!1386699)))

(declare-fun res!933294 () Bool)

(assert (=> b!2168179 (=> (not res!933294) (not e!1386699))))

(declare-fun lt!806968 () Bool)

(assert (=> b!2168179 (= res!933294 (not lt!806968))))

(declare-fun b!2168180 () Bool)

(assert (=> b!2168180 (= e!1386697 (= (head!4640 (_1!14803 lt!806595)) (c!343351 r!12534)))))

(declare-fun b!2168181 () Bool)

(declare-fun res!933290 () Bool)

(assert (=> b!2168181 (=> res!933290 e!1386701)))

(assert (=> b!2168181 (= res!933290 e!1386697)))

(declare-fun res!933295 () Bool)

(assert (=> b!2168181 (=> (not res!933295) (not e!1386697))))

(assert (=> b!2168181 (= res!933295 lt!806968)))

(declare-fun b!2168182 () Bool)

(declare-fun e!1386700 () Bool)

(declare-fun call!130040 () Bool)

(assert (=> b!2168182 (= e!1386700 (= lt!806968 call!130040))))

(declare-fun bm!130035 () Bool)

(assert (=> bm!130035 (= call!130040 (isEmpty!14411 (_1!14803 lt!806595)))))

(declare-fun b!2168183 () Bool)

(declare-fun e!1386698 () Bool)

(assert (=> b!2168183 (= e!1386698 (nullable!1690 r!12534))))

(declare-fun b!2168184 () Bool)

(assert (=> b!2168184 (= e!1386696 (not lt!806968))))

(declare-fun d!649439 () Bool)

(assert (=> d!649439 e!1386700))

(declare-fun c!343530 () Bool)

(assert (=> d!649439 (= c!343530 ((_ is EmptyExpr!5999) r!12534))))

(assert (=> d!649439 (= lt!806968 e!1386698)))

(declare-fun c!343528 () Bool)

(assert (=> d!649439 (= c!343528 (isEmpty!14411 (_1!14803 lt!806595)))))

(assert (=> d!649439 (validRegex!2275 r!12534)))

(assert (=> d!649439 (= (matchR!2756 r!12534 (_1!14803 lt!806595)) lt!806968)))

(declare-fun b!2168185 () Bool)

(assert (=> b!2168185 (= e!1386699 e!1386702)))

(declare-fun res!933293 () Bool)

(assert (=> b!2168185 (=> res!933293 e!1386702)))

(assert (=> b!2168185 (= res!933293 call!130040)))

(declare-fun b!2168186 () Bool)

(assert (=> b!2168186 (= e!1386700 e!1386696)))

(declare-fun c!343529 () Bool)

(assert (=> b!2168186 (= c!343529 ((_ is EmptyLang!5999) r!12534))))

(declare-fun b!2168187 () Bool)

(declare-fun res!933296 () Bool)

(assert (=> b!2168187 (=> (not res!933296) (not e!1386697))))

(assert (=> b!2168187 (= res!933296 (not call!130040))))

(declare-fun b!2168188 () Bool)

(assert (=> b!2168188 (= e!1386698 (matchR!2756 (derivativeStep!1434 r!12534 (head!4640 (_1!14803 lt!806595))) (tail!3112 (_1!14803 lt!806595))))))

(assert (= (and d!649439 c!343528) b!2168183))

(assert (= (and d!649439 (not c!343528)) b!2168188))

(assert (= (and d!649439 c!343530) b!2168182))

(assert (= (and d!649439 (not c!343530)) b!2168186))

(assert (= (and b!2168186 c!343529) b!2168184))

(assert (= (and b!2168186 (not c!343529)) b!2168176))

(assert (= (and b!2168176 (not res!933292)) b!2168181))

(assert (= (and b!2168181 res!933295) b!2168187))

(assert (= (and b!2168187 res!933296) b!2168177))

(assert (= (and b!2168177 res!933289) b!2168180))

(assert (= (and b!2168181 (not res!933290)) b!2168179))

(assert (= (and b!2168179 res!933294) b!2168185))

(assert (= (and b!2168185 (not res!933293)) b!2168178))

(assert (= (and b!2168178 (not res!933291)) b!2168175))

(assert (= (or b!2168182 b!2168185 b!2168187) bm!130035))

(declare-fun m!2609071 () Bool)

(assert (=> b!2168177 m!2609071))

(assert (=> b!2168177 m!2609071))

(declare-fun m!2609073 () Bool)

(assert (=> b!2168177 m!2609073))

(assert (=> bm!130035 m!2608417))

(assert (=> b!2168178 m!2609071))

(assert (=> b!2168178 m!2609071))

(assert (=> b!2168178 m!2609073))

(declare-fun m!2609075 () Bool)

(assert (=> b!2168175 m!2609075))

(assert (=> b!2168180 m!2609075))

(assert (=> b!2168183 m!2608655))

(assert (=> b!2168188 m!2609075))

(assert (=> b!2168188 m!2609075))

(declare-fun m!2609077 () Bool)

(assert (=> b!2168188 m!2609077))

(assert (=> b!2168188 m!2609071))

(assert (=> b!2168188 m!2609077))

(assert (=> b!2168188 m!2609071))

(declare-fun m!2609079 () Bool)

(assert (=> b!2168188 m!2609079))

(assert (=> d!649439 m!2608417))

(assert (=> d!649439 m!2608403))

(assert (=> b!2167549 d!649439))

(declare-fun d!649441 () Bool)

(assert (=> d!649441 (= (isEmpty!14411 (_1!14803 lt!806597)) ((_ is Nil!25126) (_1!14803 lt!806597)))))

(assert (=> b!2167558 d!649441))

(declare-fun d!649443 () Bool)

(declare-fun c!343531 () Bool)

(assert (=> d!649443 (= c!343531 ((_ is Node!8135) (c!343350 totalInput!977)))))

(declare-fun e!1386703 () Bool)

(assert (=> d!649443 (= (inv!33315 (c!343350 totalInput!977)) e!1386703)))

(declare-fun b!2168189 () Bool)

(assert (=> b!2168189 (= e!1386703 (inv!33321 (c!343350 totalInput!977)))))

(declare-fun b!2168190 () Bool)

(declare-fun e!1386704 () Bool)

(assert (=> b!2168190 (= e!1386703 e!1386704)))

(declare-fun res!933297 () Bool)

(assert (=> b!2168190 (= res!933297 (not ((_ is Leaf!11902) (c!343350 totalInput!977))))))

(assert (=> b!2168190 (=> res!933297 e!1386704)))

(declare-fun b!2168191 () Bool)

(assert (=> b!2168191 (= e!1386704 (inv!33322 (c!343350 totalInput!977)))))

(assert (= (and d!649443 c!343531) b!2168189))

(assert (= (and d!649443 (not c!343531)) b!2168190))

(assert (= (and b!2168190 (not res!933297)) b!2168191))

(declare-fun m!2609081 () Bool)

(assert (=> b!2168189 m!2609081))

(declare-fun m!2609083 () Bool)

(assert (=> b!2168191 m!2609083))

(assert (=> b!2167548 d!649443))

(declare-fun condSetEmpty!18134 () Bool)

(assert (=> setNonEmpty!18128 (= condSetEmpty!18134 (= setRest!18128 ((as const (Array Context!3138 Bool)) false)))))

(declare-fun setRes!18134 () Bool)

(assert (=> setNonEmpty!18128 (= tp!676674 setRes!18134)))

(declare-fun setIsEmpty!18134 () Bool)

(assert (=> setIsEmpty!18134 setRes!18134))

(declare-fun setNonEmpty!18134 () Bool)

(declare-fun tp!676741 () Bool)

(declare-fun setElem!18134 () Context!3138)

(declare-fun e!1386707 () Bool)

(assert (=> setNonEmpty!18134 (= setRes!18134 (and tp!676741 (inv!33316 setElem!18134) e!1386707))))

(declare-fun setRest!18134 () (InoxSet Context!3138))

(assert (=> setNonEmpty!18134 (= setRest!18128 ((_ map or) (store ((as const (Array Context!3138 Bool)) false) setElem!18134 true) setRest!18134))))

(declare-fun b!2168196 () Bool)

(declare-fun tp!676740 () Bool)

(assert (=> b!2168196 (= e!1386707 tp!676740)))

(assert (= (and setNonEmpty!18128 condSetEmpty!18134) setIsEmpty!18134))

(assert (= (and setNonEmpty!18128 (not condSetEmpty!18134)) setNonEmpty!18134))

(assert (= setNonEmpty!18134 b!2168196))

(declare-fun m!2609085 () Bool)

(assert (=> setNonEmpty!18134 m!2609085))

(declare-fun tp!676749 () Bool)

(declare-fun b!2168205 () Bool)

(declare-fun e!1386712 () Bool)

(declare-fun tp!676750 () Bool)

(assert (=> b!2168205 (= e!1386712 (and (inv!33315 (left!19317 (c!343350 input!5540))) tp!676750 (inv!33315 (right!19647 (c!343350 input!5540))) tp!676749))))

(declare-fun b!2168207 () Bool)

(declare-fun e!1386713 () Bool)

(declare-fun tp!676748 () Bool)

(assert (=> b!2168207 (= e!1386713 tp!676748)))

(declare-fun b!2168206 () Bool)

(declare-fun inv!33323 (IArray!16275) Bool)

(assert (=> b!2168206 (= e!1386712 (and (inv!33323 (xs!11077 (c!343350 input!5540))) e!1386713))))

(assert (=> b!2167562 (= tp!676676 (and (inv!33315 (c!343350 input!5540)) e!1386712))))

(assert (= (and b!2167562 ((_ is Node!8135) (c!343350 input!5540))) b!2168205))

(assert (= b!2168206 b!2168207))

(assert (= (and b!2167562 ((_ is Leaf!11902) (c!343350 input!5540))) b!2168206))

(declare-fun m!2609087 () Bool)

(assert (=> b!2168205 m!2609087))

(declare-fun m!2609089 () Bool)

(assert (=> b!2168205 m!2609089))

(declare-fun m!2609091 () Bool)

(assert (=> b!2168206 m!2609091))

(assert (=> b!2167562 m!2608443))

(declare-fun tp!676753 () Bool)

(declare-fun tp!676752 () Bool)

(declare-fun b!2168208 () Bool)

(declare-fun e!1386714 () Bool)

(assert (=> b!2168208 (= e!1386714 (and (inv!33315 (left!19317 (c!343350 totalInput!977))) tp!676753 (inv!33315 (right!19647 (c!343350 totalInput!977))) tp!676752))))

(declare-fun b!2168210 () Bool)

(declare-fun e!1386715 () Bool)

(declare-fun tp!676751 () Bool)

(assert (=> b!2168210 (= e!1386715 tp!676751)))

(declare-fun b!2168209 () Bool)

(assert (=> b!2168209 (= e!1386714 (and (inv!33323 (xs!11077 (c!343350 totalInput!977))) e!1386715))))

(assert (=> b!2167548 (= tp!676675 (and (inv!33315 (c!343350 totalInput!977)) e!1386714))))

(assert (= (and b!2167548 ((_ is Node!8135) (c!343350 totalInput!977))) b!2168208))

(assert (= b!2168209 b!2168210))

(assert (= (and b!2167548 ((_ is Leaf!11902) (c!343350 totalInput!977))) b!2168209))

(declare-fun m!2609093 () Bool)

(assert (=> b!2168208 m!2609093))

(declare-fun m!2609095 () Bool)

(assert (=> b!2168208 m!2609095))

(declare-fun m!2609097 () Bool)

(assert (=> b!2168209 m!2609097))

(assert (=> b!2167548 m!2608387))

(declare-fun b!2168224 () Bool)

(declare-fun e!1386718 () Bool)

(declare-fun tp!676767 () Bool)

(declare-fun tp!676765 () Bool)

(assert (=> b!2168224 (= e!1386718 (and tp!676767 tp!676765))))

(declare-fun b!2168222 () Bool)

(declare-fun tp!676764 () Bool)

(declare-fun tp!676768 () Bool)

(assert (=> b!2168222 (= e!1386718 (and tp!676764 tp!676768))))

(declare-fun b!2168223 () Bool)

(declare-fun tp!676766 () Bool)

(assert (=> b!2168223 (= e!1386718 tp!676766)))

(assert (=> b!2167563 (= tp!676670 e!1386718)))

(declare-fun b!2168221 () Bool)

(assert (=> b!2168221 (= e!1386718 tp_is_empty!9605)))

(assert (= (and b!2167563 ((_ is ElementMatch!5999) (regOne!12511 r!12534))) b!2168221))

(assert (= (and b!2167563 ((_ is Concat!10301) (regOne!12511 r!12534))) b!2168222))

(assert (= (and b!2167563 ((_ is Star!5999) (regOne!12511 r!12534))) b!2168223))

(assert (= (and b!2167563 ((_ is Union!5999) (regOne!12511 r!12534))) b!2168224))

(declare-fun b!2168228 () Bool)

(declare-fun e!1386719 () Bool)

(declare-fun tp!676772 () Bool)

(declare-fun tp!676770 () Bool)

(assert (=> b!2168228 (= e!1386719 (and tp!676772 tp!676770))))

(declare-fun b!2168226 () Bool)

(declare-fun tp!676769 () Bool)

(declare-fun tp!676773 () Bool)

(assert (=> b!2168226 (= e!1386719 (and tp!676769 tp!676773))))

(declare-fun b!2168227 () Bool)

(declare-fun tp!676771 () Bool)

(assert (=> b!2168227 (= e!1386719 tp!676771)))

(assert (=> b!2167563 (= tp!676669 e!1386719)))

(declare-fun b!2168225 () Bool)

(assert (=> b!2168225 (= e!1386719 tp_is_empty!9605)))

(assert (= (and b!2167563 ((_ is ElementMatch!5999) (regTwo!12511 r!12534))) b!2168225))

(assert (= (and b!2167563 ((_ is Concat!10301) (regTwo!12511 r!12534))) b!2168226))

(assert (= (and b!2167563 ((_ is Star!5999) (regTwo!12511 r!12534))) b!2168227))

(assert (= (and b!2167563 ((_ is Union!5999) (regTwo!12511 r!12534))) b!2168228))

(declare-fun b!2168232 () Bool)

(declare-fun e!1386720 () Bool)

(declare-fun tp!676777 () Bool)

(declare-fun tp!676775 () Bool)

(assert (=> b!2168232 (= e!1386720 (and tp!676777 tp!676775))))

(declare-fun b!2168230 () Bool)

(declare-fun tp!676774 () Bool)

(declare-fun tp!676778 () Bool)

(assert (=> b!2168230 (= e!1386720 (and tp!676774 tp!676778))))

(declare-fun b!2168231 () Bool)

(declare-fun tp!676776 () Bool)

(assert (=> b!2168231 (= e!1386720 tp!676776)))

(assert (=> b!2167561 (= tp!676672 e!1386720)))

(declare-fun b!2168229 () Bool)

(assert (=> b!2168229 (= e!1386720 tp_is_empty!9605)))

(assert (= (and b!2167561 ((_ is ElementMatch!5999) (regOne!12510 r!12534))) b!2168229))

(assert (= (and b!2167561 ((_ is Concat!10301) (regOne!12510 r!12534))) b!2168230))

(assert (= (and b!2167561 ((_ is Star!5999) (regOne!12510 r!12534))) b!2168231))

(assert (= (and b!2167561 ((_ is Union!5999) (regOne!12510 r!12534))) b!2168232))

(declare-fun b!2168236 () Bool)

(declare-fun e!1386721 () Bool)

(declare-fun tp!676782 () Bool)

(declare-fun tp!676780 () Bool)

(assert (=> b!2168236 (= e!1386721 (and tp!676782 tp!676780))))

(declare-fun b!2168234 () Bool)

(declare-fun tp!676779 () Bool)

(declare-fun tp!676783 () Bool)

(assert (=> b!2168234 (= e!1386721 (and tp!676779 tp!676783))))

(declare-fun b!2168235 () Bool)

(declare-fun tp!676781 () Bool)

(assert (=> b!2168235 (= e!1386721 tp!676781)))

(assert (=> b!2167561 (= tp!676671 e!1386721)))

(declare-fun b!2168233 () Bool)

(assert (=> b!2168233 (= e!1386721 tp_is_empty!9605)))

(assert (= (and b!2167561 ((_ is ElementMatch!5999) (regTwo!12510 r!12534))) b!2168233))

(assert (= (and b!2167561 ((_ is Concat!10301) (regTwo!12510 r!12534))) b!2168234))

(assert (= (and b!2167561 ((_ is Star!5999) (regTwo!12510 r!12534))) b!2168235))

(assert (= (and b!2167561 ((_ is Union!5999) (regTwo!12510 r!12534))) b!2168236))

(declare-fun b!2168240 () Bool)

(declare-fun e!1386722 () Bool)

(declare-fun tp!676787 () Bool)

(declare-fun tp!676785 () Bool)

(assert (=> b!2168240 (= e!1386722 (and tp!676787 tp!676785))))

(declare-fun b!2168238 () Bool)

(declare-fun tp!676784 () Bool)

(declare-fun tp!676788 () Bool)

(assert (=> b!2168238 (= e!1386722 (and tp!676784 tp!676788))))

(declare-fun b!2168239 () Bool)

(declare-fun tp!676786 () Bool)

(assert (=> b!2168239 (= e!1386722 tp!676786)))

(assert (=> b!2167547 (= tp!676668 e!1386722)))

(declare-fun b!2168237 () Bool)

(assert (=> b!2168237 (= e!1386722 tp_is_empty!9605)))

(assert (= (and b!2167547 ((_ is ElementMatch!5999) (reg!6328 r!12534))) b!2168237))

(assert (= (and b!2167547 ((_ is Concat!10301) (reg!6328 r!12534))) b!2168238))

(assert (= (and b!2167547 ((_ is Star!5999) (reg!6328 r!12534))) b!2168239))

(assert (= (and b!2167547 ((_ is Union!5999) (reg!6328 r!12534))) b!2168240))

(declare-fun b!2168245 () Bool)

(declare-fun e!1386725 () Bool)

(declare-fun tp!676793 () Bool)

(declare-fun tp!676794 () Bool)

(assert (=> b!2168245 (= e!1386725 (and tp!676793 tp!676794))))

(assert (=> b!2167552 (= tp!676673 e!1386725)))

(assert (= (and b!2167552 ((_ is Cons!25127) (exprs!2069 setElem!18128))) b!2168245))

(check-sat (not b!2167661) (not b!2168053) (not b!2168191) (not b!2168196) (not bm!129979) (not b!2167673) (not d!649323) (not b!2168027) (not b!2168208) (not bm!130033) (not setNonEmpty!18134) (not b!2168235) (not b!2168230) (not d!649293) (not bm!130035) (not b!2168087) tp_is_empty!9605 (not b!2168110) (not bm!129976) (not b!2168240) (not b!2168113) (not b!2168112) (not b!2168238) (not d!649429) (not b!2167674) (not d!649421) (not b!2168049) (not d!649327) (not d!649415) (not b!2167675) (not b!2167663) (not d!649431) (not bm!129977) (not b!2168175) (not d!649281) (not d!649311) (not bm!130034) (not bm!129958) (not bm!129981) (not b!2167716) (not b!2168188) (not d!649391) (not b!2168139) (not b!2168082) (not bm!129980) (not bm!129975) (not d!649297) (not b!2168224) (not b!2168023) (not d!649299) (not b!2168040) (not b!2168105) (not d!649435) (not b!2168239) (not b!2168174) (not d!649409) (not b!2168020) (not bm!129978) (not d!649407) (not b!2168118) (not b!2168098) (not b!2168004) (not b!2168085) (not b!2167548) (not d!649427) (not d!649413) (not d!649397) (not d!649417) (not b!2167682) (not b!2167587) (not b!2168245) (not b!2168109) (not b!2168231) (not b!2168028) (not b!2168025) (not b!2168223) (not d!649439) (not b!2167678) (not d!649411) (not b!2168084) (not b!2168120) (not d!649425) (not b!2168180) (not b!2168050) (not b!2168228) (not b!2168226) (not bm!130025) (not bm!130022) (not b!2168107) (not b!2168090) (not b!2168232) (not b!2168117) (not b!2168222) (not d!649325) (not bm!129982) (not d!649437) (not b!2167677) (not b!2167588) (not b!2168115) (not b!2167679) (not b!2168177) (not d!649403) (not b!2167713) (not b!2168206) (not b!2168022) (not d!649395) (not d!649423) (not b!2168044) (not d!649301) (not b!2168178) (not b!2167562) (not b!2168147) (not b!2168003) (not b!2168209) (not b!2168207) (not b!2168095) (not b!2168227) (not b!2168183) (not b!2167717) (not b!2168205) (not b!2167715) (not d!649321) (not d!649393) (not b!2168236) (not d!649295) (not b!2168189) (not b!2168234) (not b!2168210) (not b!2168029))
(check-sat)
