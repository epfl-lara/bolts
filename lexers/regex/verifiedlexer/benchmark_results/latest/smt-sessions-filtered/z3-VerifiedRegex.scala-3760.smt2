; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209638 () Bool)

(assert start!209638)

(declare-fun b!2161297 () Bool)

(declare-fun res!931423 () Bool)

(declare-fun e!1383042 () Bool)

(assert (=> b!2161297 (=> res!931423 e!1383042)))

(declare-datatypes ((C!12120 0))(
  ( (C!12121 (val!7046 Int)) )
))
(declare-datatypes ((List!25174 0))(
  ( (Nil!25090) (Cons!25090 (h!30491 C!12120) (t!197722 List!25174)) )
))
(declare-datatypes ((tuple2!24814 0))(
  ( (tuple2!24815 (_1!14777 List!25174) (_2!14777 List!25174)) )
))
(declare-fun lt!804465 () tuple2!24814)

(declare-fun lt!804469 () List!25174)

(declare-fun isPrefix!2107 (List!25174 List!25174) Bool)

(assert (=> b!2161297 (= res!931423 (not (isPrefix!2107 (_1!14777 lt!804465) lt!804469)))))

(declare-fun b!2161298 () Bool)

(declare-fun e!1383035 () Bool)

(declare-datatypes ((IArray!16251 0))(
  ( (IArray!16252 (innerList!8183 List!25174)) )
))
(declare-datatypes ((Conc!8123 0))(
  ( (Node!8123 (left!19295 Conc!8123) (right!19625 Conc!8123) (csize!16476 Int) (cheight!8334 Int)) (Leaf!11884 (xs!11065 IArray!16251) (csize!16477 Int)) (Empty!8123) )
))
(declare-datatypes ((BalanceConc!16008 0))(
  ( (BalanceConc!16009 (c!341976 Conc!8123)) )
))
(declare-fun totalInput!977 () BalanceConc!16008)

(declare-fun tp!674270 () Bool)

(declare-fun inv!33244 (Conc!8123) Bool)

(assert (=> b!2161298 (= e!1383035 (and (inv!33244 (c!341976 totalInput!977)) tp!674270))))

(declare-fun b!2161299 () Bool)

(declare-fun e!1383043 () Bool)

(declare-fun tp_is_empty!9581 () Bool)

(assert (=> b!2161299 (= e!1383043 tp_is_empty!9581)))

(declare-fun b!2161300 () Bool)

(assert (=> b!2161300 (= e!1383042 true)))

(declare-fun lt!804484 () Int)

(declare-fun lt!804483 () List!25174)

(declare-fun size!19601 (List!25174) Int)

(assert (=> b!2161300 (= lt!804484 (size!19601 lt!804483))))

(declare-fun res!931435 () Bool)

(declare-fun e!1383039 () Bool)

(assert (=> start!209638 (=> (not res!931435) (not e!1383039))))

(declare-datatypes ((Regex!5987 0))(
  ( (ElementMatch!5987 (c!341977 C!12120)) (Concat!10289 (regOne!12486 Regex!5987) (regTwo!12486 Regex!5987)) (EmptyExpr!5987) (Star!5987 (reg!6316 Regex!5987)) (EmptyLang!5987) (Union!5987 (regOne!12487 Regex!5987) (regTwo!12487 Regex!5987)) )
))
(declare-fun r!12534 () Regex!5987)

(declare-fun validRegex!2263 (Regex!5987) Bool)

(assert (=> start!209638 (= res!931435 (validRegex!2263 r!12534))))

(assert (=> start!209638 e!1383039))

(assert (=> start!209638 e!1383043))

(declare-fun inv!33245 (BalanceConc!16008) Bool)

(assert (=> start!209638 (and (inv!33245 totalInput!977) e!1383035)))

(declare-fun input!5540 () BalanceConc!16008)

(declare-fun e!1383032 () Bool)

(assert (=> start!209638 (and (inv!33245 input!5540) e!1383032)))

(declare-fun condSetEmpty!18070 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25175 0))(
  ( (Nil!25091) (Cons!25091 (h!30492 Regex!5987) (t!197723 List!25175)) )
))
(declare-datatypes ((Context!3114 0))(
  ( (Context!3115 (exprs!2057 List!25175)) )
))
(declare-fun z!4055 () (InoxSet Context!3114))

(assert (=> start!209638 (= condSetEmpty!18070 (= z!4055 ((as const (Array Context!3114 Bool)) false)))))

(declare-fun setRes!18070 () Bool)

(assert (=> start!209638 setRes!18070))

(declare-fun b!2161301 () Bool)

(declare-fun e!1383037 () Bool)

(declare-fun e!1383031 () Bool)

(assert (=> b!2161301 (= e!1383037 e!1383031)))

(declare-fun res!931429 () Bool)

(assert (=> b!2161301 (=> (not res!931429) (not e!1383031))))

(declare-fun lt!804463 () List!25174)

(declare-fun isSuffix!654 (List!25174 List!25174) Bool)

(assert (=> b!2161301 (= res!931429 (isSuffix!654 lt!804469 lt!804463))))

(declare-fun list!9606 (BalanceConc!16008) List!25174)

(assert (=> b!2161301 (= lt!804463 (list!9606 totalInput!977))))

(assert (=> b!2161301 (= lt!804469 (list!9606 input!5540))))

(declare-fun b!2161302 () Bool)

(declare-fun tp!674262 () Bool)

(declare-fun tp!674266 () Bool)

(assert (=> b!2161302 (= e!1383043 (and tp!674262 tp!674266))))

(declare-fun b!2161303 () Bool)

(declare-fun e!1383034 () Bool)

(declare-datatypes ((tuple2!24816 0))(
  ( (tuple2!24817 (_1!14778 BalanceConc!16008) (_2!14778 BalanceConc!16008)) )
))
(declare-fun lt!804485 () tuple2!24816)

(declare-fun isEmpty!14389 (BalanceConc!16008) Bool)

(assert (=> b!2161303 (= e!1383034 (not (isEmpty!14389 (_1!14778 lt!804485))))))

(declare-fun b!2161304 () Bool)

(declare-fun e!1383036 () Int)

(assert (=> b!2161304 (= e!1383036 (- 1))))

(declare-fun b!2161305 () Bool)

(declare-fun e!1383033 () Bool)

(declare-fun lt!804467 () tuple2!24814)

(declare-fun matchR!2748 (Regex!5987 List!25174) Bool)

(assert (=> b!2161305 (= e!1383033 (matchR!2748 r!12534 (_1!14777 lt!804467)))))

(declare-fun b!2161306 () Bool)

(declare-fun lt!804466 () Int)

(assert (=> b!2161306 (= e!1383036 (- lt!804466 1))))

(declare-fun setElem!18070 () Context!3114)

(declare-fun tp!674267 () Bool)

(declare-fun setNonEmpty!18070 () Bool)

(declare-fun e!1383041 () Bool)

(declare-fun inv!33246 (Context!3114) Bool)

(assert (=> setNonEmpty!18070 (= setRes!18070 (and tp!674267 (inv!33246 setElem!18070) e!1383041))))

(declare-fun setRest!18070 () (InoxSet Context!3114))

(assert (=> setNonEmpty!18070 (= z!4055 ((_ map or) (store ((as const (Array Context!3114 Bool)) false) setElem!18070 true) setRest!18070))))

(declare-fun b!2161307 () Bool)

(declare-fun tp!674265 () Bool)

(assert (=> b!2161307 (= e!1383043 tp!674265)))

(declare-fun b!2161308 () Bool)

(declare-fun e!1383029 () Bool)

(assert (=> b!2161308 (= e!1383029 e!1383042)))

(declare-fun res!931434 () Bool)

(assert (=> b!2161308 (=> res!931434 e!1383042)))

(declare-fun lt!804481 () Int)

(declare-fun lt!804486 () Int)

(assert (=> b!2161308 (= res!931434 (or (> lt!804481 lt!804486) (> lt!804486 lt!804481)))))

(declare-fun size!19602 (BalanceConc!16008) Int)

(assert (=> b!2161308 (= lt!804486 (size!19602 (_1!14778 lt!804485)))))

(assert (=> b!2161308 (= lt!804481 (size!19601 (_1!14777 lt!804465)))))

(declare-fun lt!804476 () Bool)

(assert (=> b!2161308 (= (matchR!2748 r!12534 lt!804483) lt!804476)))

(declare-datatypes ((Unit!38125 0))(
  ( (Unit!38126) )
))
(declare-fun lt!804473 () Unit!38125)

(declare-datatypes ((List!25176 0))(
  ( (Nil!25092) (Cons!25092 (h!30493 Context!3114) (t!197724 List!25176)) )
))
(declare-fun lt!804479 () List!25176)

(declare-fun theoremZipperRegexEquiv!31 ((InoxSet Context!3114) List!25176 Regex!5987 List!25174) Unit!38125)

(assert (=> b!2161308 (= lt!804473 (theoremZipperRegexEquiv!31 z!4055 lt!804479 r!12534 lt!804483))))

(declare-fun lt!804471 () Bool)

(declare-fun matchZipper!115 ((InoxSet Context!3114) List!25174) Bool)

(assert (=> b!2161308 (= lt!804471 (matchZipper!115 z!4055 (_1!14777 lt!804465)))))

(declare-fun lt!804487 () Unit!38125)

(assert (=> b!2161308 (= lt!804487 (theoremZipperRegexEquiv!31 z!4055 lt!804479 r!12534 (_1!14777 lt!804465)))))

(declare-fun b!2161309 () Bool)

(declare-fun e!1383044 () Bool)

(declare-fun e!1383030 () Bool)

(assert (=> b!2161309 (= e!1383044 (not e!1383030))))

(declare-fun res!931430 () Bool)

(assert (=> b!2161309 (=> res!931430 e!1383030)))

(assert (=> b!2161309 (= res!931430 e!1383034)))

(declare-fun res!931425 () Bool)

(assert (=> b!2161309 (=> (not res!931425) (not e!1383034))))

(assert (=> b!2161309 (= res!931425 (not lt!804476))))

(assert (=> b!2161309 (= lt!804476 (matchZipper!115 z!4055 lt!804483))))

(assert (=> b!2161309 e!1383033))

(declare-fun res!931432 () Bool)

(assert (=> b!2161309 (=> res!931432 e!1383033)))

(declare-fun isEmpty!14390 (List!25174) Bool)

(assert (=> b!2161309 (= res!931432 (isEmpty!14390 (_1!14777 lt!804467)))))

(declare-fun findLongestMatchInner!616 (Regex!5987 List!25174 Int List!25174 List!25174 Int) tuple2!24814)

(assert (=> b!2161309 (= lt!804467 (findLongestMatchInner!616 r!12534 Nil!25090 (size!19601 Nil!25090) lt!804469 lt!804469 (size!19601 lt!804469)))))

(declare-fun lt!804480 () Unit!38125)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!597 (Regex!5987 List!25174) Unit!38125)

(assert (=> b!2161309 (= lt!804480 (longestMatchIsAcceptedByMatchOrIsEmpty!597 r!12534 lt!804469))))

(declare-fun e!1383045 () Bool)

(assert (=> b!2161309 e!1383045))

(declare-fun res!931424 () Bool)

(assert (=> b!2161309 (=> res!931424 e!1383045)))

(declare-fun lt!804474 () Int)

(assert (=> b!2161309 (= res!931424 (<= lt!804474 0))))

(declare-fun lt!804477 () Int)

(declare-fun lt!804478 () Int)

(declare-fun furthestNullablePosition!174 ((InoxSet Context!3114) Int BalanceConc!16008 Int Int) Int)

(assert (=> b!2161309 (= lt!804474 (+ 1 (- (furthestNullablePosition!174 z!4055 lt!804466 totalInput!977 lt!804478 lt!804477) lt!804466)))))

(declare-fun lt!804482 () Unit!38125)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!22 ((InoxSet Context!3114) Int BalanceConc!16008 Int) Unit!38125)

(assert (=> b!2161309 (= lt!804482 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!22 z!4055 lt!804466 totalInput!977 lt!804477))))

(assert (=> b!2161309 (= lt!804477 e!1383036)))

(declare-fun c!341975 () Bool)

(declare-fun nullableZipper!268 ((InoxSet Context!3114)) Bool)

(assert (=> b!2161309 (= c!341975 (nullableZipper!268 z!4055))))

(declare-fun take!201 (List!25174 Int) List!25174)

(assert (=> b!2161309 (isPrefix!2107 (take!201 lt!804463 lt!804466) lt!804463)))

(declare-fun lt!804488 () Unit!38125)

(declare-fun lemmaTakeIsPrefix!24 (List!25174 Int) Unit!38125)

(assert (=> b!2161309 (= lt!804488 (lemmaTakeIsPrefix!24 lt!804463 lt!804466))))

(declare-fun lt!804468 () List!25174)

(assert (=> b!2161309 (isPrefix!2107 (_1!14777 lt!804465) lt!804468)))

(declare-fun lt!804464 () Unit!38125)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1390 (List!25174 List!25174) Unit!38125)

(assert (=> b!2161309 (= lt!804464 (lemmaConcatTwoListThenFirstIsPrefix!1390 (_1!14777 lt!804465) (_2!14777 lt!804465)))))

(declare-fun lt!804475 () List!25174)

(assert (=> b!2161309 (isPrefix!2107 lt!804483 lt!804475)))

(declare-fun lt!804470 () Unit!38125)

(declare-fun lt!804472 () List!25174)

(assert (=> b!2161309 (= lt!804470 (lemmaConcatTwoListThenFirstIsPrefix!1390 lt!804483 lt!804472))))

(declare-fun b!2161310 () Bool)

(declare-fun e!1383040 () Bool)

(assert (=> b!2161310 (= e!1383040 e!1383044)))

(declare-fun res!931427 () Bool)

(assert (=> b!2161310 (=> (not res!931427) (not e!1383044))))

(assert (=> b!2161310 (= res!931427 (= lt!804468 lt!804469))))

(declare-fun ++!6344 (List!25174 List!25174) List!25174)

(assert (=> b!2161310 (= lt!804468 (++!6344 (_1!14777 lt!804465) (_2!14777 lt!804465)))))

(declare-fun b!2161311 () Bool)

(declare-fun res!931426 () Bool)

(assert (=> b!2161311 (=> res!931426 e!1383042)))

(assert (=> b!2161311 (= res!931426 (not (isPrefix!2107 lt!804483 lt!804469)))))

(declare-fun b!2161312 () Bool)

(assert (=> b!2161312 (= e!1383030 e!1383029)))

(declare-fun res!931422 () Bool)

(assert (=> b!2161312 (=> res!931422 e!1383029)))

(declare-fun e!1383038 () Bool)

(assert (=> b!2161312 (= res!931422 e!1383038)))

(declare-fun res!931433 () Bool)

(assert (=> b!2161312 (=> (not res!931433) (not e!1383038))))

(assert (=> b!2161312 (= res!931433 (not lt!804471))))

(assert (=> b!2161312 (= lt!804471 (matchR!2748 r!12534 (_1!14777 lt!804465)))))

(declare-fun b!2161313 () Bool)

(declare-fun tp!674264 () Bool)

(assert (=> b!2161313 (= e!1383032 (and (inv!33244 (c!341976 input!5540)) tp!674264))))

(declare-fun b!2161314 () Bool)

(declare-fun tp!674268 () Bool)

(declare-fun tp!674269 () Bool)

(assert (=> b!2161314 (= e!1383043 (and tp!674268 tp!674269))))

(declare-fun b!2161315 () Bool)

(assert (=> b!2161315 (= e!1383039 e!1383037)))

(declare-fun res!931428 () Bool)

(assert (=> b!2161315 (=> (not res!931428) (not e!1383037))))

(declare-fun unfocusZipper!94 (List!25176) Regex!5987)

(assert (=> b!2161315 (= res!931428 (= (unfocusZipper!94 lt!804479) r!12534))))

(declare-fun toList!1170 ((InoxSet Context!3114)) List!25176)

(assert (=> b!2161315 (= lt!804479 (toList!1170 z!4055))))

(declare-fun setIsEmpty!18070 () Bool)

(assert (=> setIsEmpty!18070 setRes!18070))

(declare-fun b!2161316 () Bool)

(declare-fun tp!674263 () Bool)

(assert (=> b!2161316 (= e!1383041 tp!674263)))

(declare-fun b!2161317 () Bool)

(assert (=> b!2161317 (= e!1383031 e!1383040)))

(declare-fun res!931431 () Bool)

(assert (=> b!2161317 (=> (not res!931431) (not e!1383040))))

(assert (=> b!2161317 (= res!931431 (= lt!804475 lt!804469))))

(assert (=> b!2161317 (= lt!804475 (++!6344 lt!804483 lt!804472))))

(assert (=> b!2161317 (= lt!804472 (list!9606 (_2!14778 lt!804485)))))

(assert (=> b!2161317 (= lt!804483 (list!9606 (_1!14778 lt!804485)))))

(declare-fun findLongestMatch!541 (Regex!5987 List!25174) tuple2!24814)

(assert (=> b!2161317 (= lt!804465 (findLongestMatch!541 r!12534 lt!804469))))

(assert (=> b!2161317 (= lt!804466 (- lt!804478 (size!19602 input!5540)))))

(assert (=> b!2161317 (= lt!804478 (size!19602 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!36 ((InoxSet Context!3114) BalanceConc!16008 BalanceConc!16008) tuple2!24816)

(assert (=> b!2161317 (= lt!804485 (findLongestMatchZipperSequenceV3!36 z!4055 input!5540 totalInput!977))))

(declare-fun b!2161318 () Bool)

(assert (=> b!2161318 (= e!1383038 (not (isEmpty!14390 (_1!14777 lt!804465))))))

(declare-fun b!2161319 () Bool)

(declare-fun drop!1210 (List!25174 Int) List!25174)

(assert (=> b!2161319 (= e!1383045 (matchZipper!115 z!4055 (take!201 (drop!1210 lt!804463 lt!804466) lt!804474)))))

(assert (= (and start!209638 res!931435) b!2161315))

(assert (= (and b!2161315 res!931428) b!2161301))

(assert (= (and b!2161301 res!931429) b!2161317))

(assert (= (and b!2161317 res!931431) b!2161310))

(assert (= (and b!2161310 res!931427) b!2161309))

(assert (= (and b!2161309 c!341975) b!2161306))

(assert (= (and b!2161309 (not c!341975)) b!2161304))

(assert (= (and b!2161309 (not res!931424)) b!2161319))

(assert (= (and b!2161309 (not res!931432)) b!2161305))

(assert (= (and b!2161309 res!931425) b!2161303))

(assert (= (and b!2161309 (not res!931430)) b!2161312))

(assert (= (and b!2161312 res!931433) b!2161318))

(assert (= (and b!2161312 (not res!931422)) b!2161308))

(assert (= (and b!2161308 (not res!931434)) b!2161311))

(assert (= (and b!2161311 (not res!931426)) b!2161297))

(assert (= (and b!2161297 (not res!931423)) b!2161300))

(get-info :version)

(assert (= (and start!209638 ((_ is ElementMatch!5987) r!12534)) b!2161299))

(assert (= (and start!209638 ((_ is Concat!10289) r!12534)) b!2161302))

(assert (= (and start!209638 ((_ is Star!5987) r!12534)) b!2161307))

(assert (= (and start!209638 ((_ is Union!5987) r!12534)) b!2161314))

(assert (= start!209638 b!2161298))

(assert (= start!209638 b!2161313))

(assert (= (and start!209638 condSetEmpty!18070) setIsEmpty!18070))

(assert (= (and start!209638 (not condSetEmpty!18070)) setNonEmpty!18070))

(assert (= setNonEmpty!18070 b!2161316))

(declare-fun m!2601729 () Bool)

(assert (=> b!2161318 m!2601729))

(declare-fun m!2601731 () Bool)

(assert (=> b!2161310 m!2601731))

(declare-fun m!2601733 () Bool)

(assert (=> b!2161308 m!2601733))

(declare-fun m!2601735 () Bool)

(assert (=> b!2161308 m!2601735))

(declare-fun m!2601737 () Bool)

(assert (=> b!2161308 m!2601737))

(declare-fun m!2601739 () Bool)

(assert (=> b!2161308 m!2601739))

(declare-fun m!2601741 () Bool)

(assert (=> b!2161308 m!2601741))

(declare-fun m!2601743 () Bool)

(assert (=> b!2161308 m!2601743))

(declare-fun m!2601745 () Bool)

(assert (=> b!2161312 m!2601745))

(declare-fun m!2601747 () Bool)

(assert (=> b!2161317 m!2601747))

(declare-fun m!2601749 () Bool)

(assert (=> b!2161317 m!2601749))

(declare-fun m!2601751 () Bool)

(assert (=> b!2161317 m!2601751))

(declare-fun m!2601753 () Bool)

(assert (=> b!2161317 m!2601753))

(declare-fun m!2601755 () Bool)

(assert (=> b!2161317 m!2601755))

(declare-fun m!2601757 () Bool)

(assert (=> b!2161317 m!2601757))

(declare-fun m!2601759 () Bool)

(assert (=> b!2161317 m!2601759))

(declare-fun m!2601761 () Bool)

(assert (=> b!2161315 m!2601761))

(declare-fun m!2601763 () Bool)

(assert (=> b!2161315 m!2601763))

(declare-fun m!2601765 () Bool)

(assert (=> b!2161298 m!2601765))

(declare-fun m!2601767 () Bool)

(assert (=> b!2161319 m!2601767))

(assert (=> b!2161319 m!2601767))

(declare-fun m!2601769 () Bool)

(assert (=> b!2161319 m!2601769))

(assert (=> b!2161319 m!2601769))

(declare-fun m!2601771 () Bool)

(assert (=> b!2161319 m!2601771))

(declare-fun m!2601773 () Bool)

(assert (=> start!209638 m!2601773))

(declare-fun m!2601775 () Bool)

(assert (=> start!209638 m!2601775))

(declare-fun m!2601777 () Bool)

(assert (=> start!209638 m!2601777))

(declare-fun m!2601779 () Bool)

(assert (=> b!2161309 m!2601779))

(declare-fun m!2601781 () Bool)

(assert (=> b!2161309 m!2601781))

(declare-fun m!2601783 () Bool)

(assert (=> b!2161309 m!2601783))

(declare-fun m!2601785 () Bool)

(assert (=> b!2161309 m!2601785))

(declare-fun m!2601787 () Bool)

(assert (=> b!2161309 m!2601787))

(declare-fun m!2601789 () Bool)

(assert (=> b!2161309 m!2601789))

(declare-fun m!2601791 () Bool)

(assert (=> b!2161309 m!2601791))

(declare-fun m!2601793 () Bool)

(assert (=> b!2161309 m!2601793))

(declare-fun m!2601795 () Bool)

(assert (=> b!2161309 m!2601795))

(assert (=> b!2161309 m!2601793))

(assert (=> b!2161309 m!2601787))

(declare-fun m!2601797 () Bool)

(assert (=> b!2161309 m!2601797))

(declare-fun m!2601799 () Bool)

(assert (=> b!2161309 m!2601799))

(assert (=> b!2161309 m!2601795))

(declare-fun m!2601801 () Bool)

(assert (=> b!2161309 m!2601801))

(declare-fun m!2601803 () Bool)

(assert (=> b!2161309 m!2601803))

(declare-fun m!2601805 () Bool)

(assert (=> b!2161309 m!2601805))

(declare-fun m!2601807 () Bool)

(assert (=> b!2161309 m!2601807))

(declare-fun m!2601809 () Bool)

(assert (=> b!2161309 m!2601809))

(declare-fun m!2601811 () Bool)

(assert (=> b!2161303 m!2601811))

(declare-fun m!2601813 () Bool)

(assert (=> b!2161313 m!2601813))

(declare-fun m!2601815 () Bool)

(assert (=> b!2161305 m!2601815))

(declare-fun m!2601817 () Bool)

(assert (=> b!2161301 m!2601817))

(declare-fun m!2601819 () Bool)

(assert (=> b!2161301 m!2601819))

(declare-fun m!2601821 () Bool)

(assert (=> b!2161301 m!2601821))

(declare-fun m!2601823 () Bool)

(assert (=> b!2161297 m!2601823))

(declare-fun m!2601825 () Bool)

(assert (=> b!2161300 m!2601825))

(declare-fun m!2601827 () Bool)

(assert (=> setNonEmpty!18070 m!2601827))

(declare-fun m!2601829 () Bool)

(assert (=> b!2161311 m!2601829))

(check-sat (not b!2161319) (not b!2161307) (not b!2161298) tp_is_empty!9581 (not b!2161314) (not b!2161312) (not b!2161310) (not b!2161308) (not setNonEmpty!18070) (not b!2161305) (not b!2161311) (not b!2161315) (not b!2161316) (not b!2161303) (not b!2161317) (not b!2161302) (not b!2161313) (not b!2161318) (not start!209638) (not b!2161309) (not b!2161300) (not b!2161301) (not b!2161297))
(check-sat)
