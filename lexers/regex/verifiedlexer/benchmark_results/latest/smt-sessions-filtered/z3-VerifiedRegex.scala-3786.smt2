; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!211786 () Bool)

(assert start!211786)

(declare-fun b!2184026 () Bool)

(declare-fun e!1395785 () Bool)

(declare-fun tp!681292 () Bool)

(assert (=> b!2184026 (= e!1395785 tp!681292)))

(declare-fun b!2184027 () Bool)

(declare-fun e!1395786 () Int)

(assert (=> b!2184027 (= e!1395786 (- 1))))

(declare-fun b!2184028 () Bool)

(declare-fun e!1395795 () Bool)

(declare-datatypes ((C!12224 0))(
  ( (C!12225 (val!7098 Int)) )
))
(declare-datatypes ((List!25330 0))(
  ( (Nil!25246) (Cons!25246 (h!30647 C!12224) (t!197920 List!25330)) )
))
(declare-datatypes ((IArray!16355 0))(
  ( (IArray!16356 (innerList!8235 List!25330)) )
))
(declare-datatypes ((Conc!8175 0))(
  ( (Node!8175 (left!19385 Conc!8175) (right!19715 Conc!8175) (csize!16580 Int) (cheight!8386 Int)) (Leaf!11962 (xs!11117 IArray!16355) (csize!16581 Int)) (Empty!8175) )
))
(declare-datatypes ((BalanceConc!16112 0))(
  ( (BalanceConc!16113 (c!347126 Conc!8175)) )
))
(declare-fun input!5540 () BalanceConc!16112)

(declare-fun tp!681295 () Bool)

(declare-fun inv!33552 (Conc!8175) Bool)

(assert (=> b!2184028 (= e!1395795 (and (inv!33552 (c!347126 input!5540)) tp!681295))))

(declare-fun res!938504 () Bool)

(declare-fun e!1395790 () Bool)

(assert (=> start!211786 (=> (not res!938504) (not e!1395790))))

(declare-datatypes ((Regex!6039 0))(
  ( (ElementMatch!6039 (c!347127 C!12224)) (Concat!10341 (regOne!12590 Regex!6039) (regTwo!12590 Regex!6039)) (EmptyExpr!6039) (Star!6039 (reg!6368 Regex!6039)) (EmptyLang!6039) (Union!6039 (regOne!12591 Regex!6039) (regTwo!12591 Regex!6039)) )
))
(declare-fun r!12534 () Regex!6039)

(declare-fun validRegex!2315 (Regex!6039) Bool)

(assert (=> start!211786 (= res!938504 (validRegex!2315 r!12534))))

(assert (=> start!211786 e!1395790))

(declare-fun e!1395796 () Bool)

(assert (=> start!211786 e!1395796))

(declare-fun totalInput!977 () BalanceConc!16112)

(declare-fun e!1395792 () Bool)

(declare-fun inv!33553 (BalanceConc!16112) Bool)

(assert (=> start!211786 (and (inv!33553 totalInput!977) e!1395792)))

(assert (=> start!211786 (and (inv!33553 input!5540) e!1395795)))

(declare-fun condSetEmpty!18316 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25331 0))(
  ( (Nil!25247) (Cons!25247 (h!30648 Regex!6039) (t!197921 List!25331)) )
))
(declare-datatypes ((Context!3218 0))(
  ( (Context!3219 (exprs!2109 List!25331)) )
))
(declare-fun z!4055 () (InoxSet Context!3218))

(assert (=> start!211786 (= condSetEmpty!18316 (= z!4055 ((as const (Array Context!3218 Bool)) false)))))

(declare-fun setRes!18316 () Bool)

(assert (=> start!211786 setRes!18316))

(declare-fun b!2184029 () Bool)

(declare-fun tp_is_empty!9685 () Bool)

(assert (=> b!2184029 (= e!1395796 tp_is_empty!9685)))

(declare-fun b!2184030 () Bool)

(declare-fun tp!681291 () Bool)

(declare-fun tp!681288 () Bool)

(assert (=> b!2184030 (= e!1395796 (and tp!681291 tp!681288))))

(declare-fun b!2184031 () Bool)

(declare-fun e!1395787 () Bool)

(declare-datatypes ((tuple2!25038 0))(
  ( (tuple2!25039 (_1!14889 BalanceConc!16112) (_2!14889 BalanceConc!16112)) )
))
(declare-fun lt!814579 () tuple2!25038)

(declare-fun isEmpty!14505 (BalanceConc!16112) Bool)

(assert (=> b!2184031 (= e!1395787 (not (isEmpty!14505 (_1!14889 lt!814579))))))

(declare-fun setIsEmpty!18316 () Bool)

(assert (=> setIsEmpty!18316 setRes!18316))

(declare-fun b!2184032 () Bool)

(declare-fun e!1395784 () Bool)

(declare-fun e!1395788 () Bool)

(assert (=> b!2184032 (= e!1395784 e!1395788)))

(declare-fun res!938499 () Bool)

(assert (=> b!2184032 (=> (not res!938499) (not e!1395788))))

(declare-fun lt!814586 () List!25330)

(declare-fun lt!814585 () List!25330)

(assert (=> b!2184032 (= res!938499 (= lt!814586 lt!814585))))

(declare-datatypes ((tuple2!25040 0))(
  ( (tuple2!25041 (_1!14890 List!25330) (_2!14890 List!25330)) )
))
(declare-fun lt!814566 () tuple2!25040)

(declare-fun ++!6400 (List!25330 List!25330) List!25330)

(assert (=> b!2184032 (= lt!814586 (++!6400 (_1!14890 lt!814566) (_2!14890 lt!814566)))))

(declare-fun b!2184033 () Bool)

(declare-fun tp!681289 () Bool)

(assert (=> b!2184033 (= e!1395792 (and (inv!33552 (c!347126 totalInput!977)) tp!681289))))

(declare-fun b!2184034 () Bool)

(declare-fun e!1395793 () Bool)

(assert (=> b!2184034 (= e!1395793 true)))

(declare-fun lt!814570 () Int)

(declare-fun size!19726 (BalanceConc!16112) Int)

(assert (=> b!2184034 (= lt!814570 (size!19726 (_1!14889 lt!814579)))))

(declare-fun lt!814581 () Int)

(declare-fun size!19727 (List!25330) Int)

(assert (=> b!2184034 (= lt!814581 (size!19727 (_1!14890 lt!814566)))))

(declare-fun lt!814582 () List!25330)

(declare-fun lt!814577 () Bool)

(declare-fun matchR!2788 (Regex!6039 List!25330) Bool)

(assert (=> b!2184034 (= (matchR!2788 r!12534 lt!814582) lt!814577)))

(declare-datatypes ((Unit!38369 0))(
  ( (Unit!38370) )
))
(declare-fun lt!814569 () Unit!38369)

(declare-datatypes ((List!25332 0))(
  ( (Nil!25248) (Cons!25248 (h!30649 Context!3218) (t!197922 List!25332)) )
))
(declare-fun lt!814567 () List!25332)

(declare-fun theoremZipperRegexEquiv!65 ((InoxSet Context!3218) List!25332 Regex!6039 List!25330) Unit!38369)

(assert (=> b!2184034 (= lt!814569 (theoremZipperRegexEquiv!65 z!4055 lt!814567 r!12534 lt!814582))))

(declare-fun lt!814576 () Bool)

(declare-fun matchZipper!155 ((InoxSet Context!3218) List!25330) Bool)

(assert (=> b!2184034 (= lt!814576 (matchZipper!155 z!4055 (_1!14890 lt!814566)))))

(declare-fun lt!814573 () Unit!38369)

(assert (=> b!2184034 (= lt!814573 (theoremZipperRegexEquiv!65 z!4055 lt!814567 r!12534 (_1!14890 lt!814566)))))

(declare-fun b!2184035 () Bool)

(declare-fun tp!681296 () Bool)

(assert (=> b!2184035 (= e!1395796 tp!681296)))

(declare-fun b!2184036 () Bool)

(declare-fun e!1395789 () Bool)

(assert (=> b!2184036 (= e!1395788 (not e!1395789))))

(declare-fun res!938495 () Bool)

(assert (=> b!2184036 (=> res!938495 e!1395789)))

(assert (=> b!2184036 (= res!938495 e!1395787)))

(declare-fun res!938496 () Bool)

(assert (=> b!2184036 (=> (not res!938496) (not e!1395787))))

(assert (=> b!2184036 (= res!938496 (not lt!814577))))

(assert (=> b!2184036 (= lt!814577 (matchZipper!155 z!4055 lt!814582))))

(declare-fun e!1395794 () Bool)

(assert (=> b!2184036 e!1395794))

(declare-fun res!938500 () Bool)

(assert (=> b!2184036 (=> res!938500 e!1395794)))

(declare-fun lt!814583 () tuple2!25040)

(declare-fun isEmpty!14506 (List!25330) Bool)

(assert (=> b!2184036 (= res!938500 (isEmpty!14506 (_1!14890 lt!814583)))))

(declare-fun findLongestMatchInner!664 (Regex!6039 List!25330 Int List!25330 List!25330 Int) tuple2!25040)

(assert (=> b!2184036 (= lt!814583 (findLongestMatchInner!664 r!12534 Nil!25246 (size!19727 Nil!25246) lt!814585 lt!814585 (size!19727 lt!814585)))))

(declare-fun lt!814574 () Unit!38369)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!637 (Regex!6039 List!25330) Unit!38369)

(assert (=> b!2184036 (= lt!814574 (longestMatchIsAcceptedByMatchOrIsEmpty!637 r!12534 lt!814585))))

(declare-fun e!1395782 () Bool)

(assert (=> b!2184036 e!1395782))

(declare-fun res!938497 () Bool)

(assert (=> b!2184036 (=> res!938497 e!1395782)))

(declare-fun lt!814578 () Int)

(assert (=> b!2184036 (= res!938497 (<= lt!814578 0))))

(declare-fun lt!814590 () Int)

(declare-fun lt!814572 () Int)

(declare-fun lt!814568 () Int)

(declare-fun furthestNullablePosition!221 ((InoxSet Context!3218) Int BalanceConc!16112 Int Int) Int)

(assert (=> b!2184036 (= lt!814578 (+ 1 (- (furthestNullablePosition!221 z!4055 lt!814572 totalInput!977 lt!814568 lt!814590) lt!814572)))))

(declare-fun lt!814584 () Unit!38369)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!62 ((InoxSet Context!3218) Int BalanceConc!16112 Int) Unit!38369)

(assert (=> b!2184036 (= lt!814584 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!62 z!4055 lt!814572 totalInput!977 lt!814590))))

(assert (=> b!2184036 (= lt!814590 e!1395786)))

(declare-fun c!347125 () Bool)

(declare-fun nullableZipper!319 ((InoxSet Context!3218)) Bool)

(assert (=> b!2184036 (= c!347125 (nullableZipper!319 z!4055))))

(declare-fun lt!814587 () List!25330)

(declare-fun isPrefix!2155 (List!25330 List!25330) Bool)

(declare-fun take!247 (List!25330 Int) List!25330)

(assert (=> b!2184036 (isPrefix!2155 (take!247 lt!814587 lt!814572) lt!814587)))

(declare-fun lt!814589 () Unit!38369)

(declare-fun lemmaTakeIsPrefix!70 (List!25330 Int) Unit!38369)

(assert (=> b!2184036 (= lt!814589 (lemmaTakeIsPrefix!70 lt!814587 lt!814572))))

(assert (=> b!2184036 (isPrefix!2155 (_1!14890 lt!814566) lt!814586)))

(declare-fun lt!814588 () Unit!38369)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1438 (List!25330 List!25330) Unit!38369)

(assert (=> b!2184036 (= lt!814588 (lemmaConcatTwoListThenFirstIsPrefix!1438 (_1!14890 lt!814566) (_2!14890 lt!814566)))))

(declare-fun lt!814575 () List!25330)

(assert (=> b!2184036 (isPrefix!2155 lt!814582 lt!814575)))

(declare-fun lt!814571 () Unit!38369)

(declare-fun lt!814580 () List!25330)

(assert (=> b!2184036 (= lt!814571 (lemmaConcatTwoListThenFirstIsPrefix!1438 lt!814582 lt!814580))))

(declare-fun b!2184037 () Bool)

(declare-fun e!1395797 () Bool)

(declare-fun e!1395783 () Bool)

(assert (=> b!2184037 (= e!1395797 e!1395783)))

(declare-fun res!938498 () Bool)

(assert (=> b!2184037 (=> (not res!938498) (not e!1395783))))

(declare-fun isSuffix!706 (List!25330 List!25330) Bool)

(assert (=> b!2184037 (= res!938498 (isSuffix!706 lt!814585 lt!814587))))

(declare-fun list!9692 (BalanceConc!16112) List!25330)

(assert (=> b!2184037 (= lt!814587 (list!9692 totalInput!977))))

(assert (=> b!2184037 (= lt!814585 (list!9692 input!5540))))

(declare-fun b!2184038 () Bool)

(declare-fun drop!1257 (List!25330 Int) List!25330)

(assert (=> b!2184038 (= e!1395782 (matchZipper!155 z!4055 (take!247 (drop!1257 lt!814587 lt!814572) lt!814578)))))

(declare-fun b!2184039 () Bool)

(declare-fun e!1395791 () Bool)

(assert (=> b!2184039 (= e!1395791 (not (isEmpty!14506 (_1!14890 lt!814566))))))

(declare-fun setNonEmpty!18316 () Bool)

(declare-fun setElem!18316 () Context!3218)

(declare-fun tp!681293 () Bool)

(declare-fun inv!33554 (Context!3218) Bool)

(assert (=> setNonEmpty!18316 (= setRes!18316 (and tp!681293 (inv!33554 setElem!18316) e!1395785))))

(declare-fun setRest!18316 () (InoxSet Context!3218))

(assert (=> setNonEmpty!18316 (= z!4055 ((_ map or) (store ((as const (Array Context!3218 Bool)) false) setElem!18316 true) setRest!18316))))

(declare-fun b!2184040 () Bool)

(assert (=> b!2184040 (= e!1395789 e!1395793)))

(declare-fun res!938502 () Bool)

(assert (=> b!2184040 (=> res!938502 e!1395793)))

(assert (=> b!2184040 (= res!938502 e!1395791)))

(declare-fun res!938501 () Bool)

(assert (=> b!2184040 (=> (not res!938501) (not e!1395791))))

(assert (=> b!2184040 (= res!938501 (not lt!814576))))

(assert (=> b!2184040 (= lt!814576 (matchR!2788 r!12534 (_1!14890 lt!814566)))))

(declare-fun b!2184041 () Bool)

(declare-fun tp!681290 () Bool)

(declare-fun tp!681294 () Bool)

(assert (=> b!2184041 (= e!1395796 (and tp!681290 tp!681294))))

(declare-fun b!2184042 () Bool)

(assert (=> b!2184042 (= e!1395794 (matchR!2788 r!12534 (_1!14890 lt!814583)))))

(declare-fun b!2184043 () Bool)

(assert (=> b!2184043 (= e!1395786 (- lt!814572 1))))

(declare-fun b!2184044 () Bool)

(assert (=> b!2184044 (= e!1395790 e!1395797)))

(declare-fun res!938503 () Bool)

(assert (=> b!2184044 (=> (not res!938503) (not e!1395797))))

(declare-fun unfocusZipper!146 (List!25332) Regex!6039)

(assert (=> b!2184044 (= res!938503 (= (unfocusZipper!146 lt!814567) r!12534))))

(declare-fun toList!1222 ((InoxSet Context!3218)) List!25332)

(assert (=> b!2184044 (= lt!814567 (toList!1222 z!4055))))

(declare-fun b!2184045 () Bool)

(assert (=> b!2184045 (= e!1395783 e!1395784)))

(declare-fun res!938505 () Bool)

(assert (=> b!2184045 (=> (not res!938505) (not e!1395784))))

(assert (=> b!2184045 (= res!938505 (= lt!814575 lt!814585))))

(assert (=> b!2184045 (= lt!814575 (++!6400 lt!814582 lt!814580))))

(assert (=> b!2184045 (= lt!814580 (list!9692 (_2!14889 lt!814579)))))

(assert (=> b!2184045 (= lt!814582 (list!9692 (_1!14889 lt!814579)))))

(declare-fun findLongestMatch!593 (Regex!6039 List!25330) tuple2!25040)

(assert (=> b!2184045 (= lt!814566 (findLongestMatch!593 r!12534 lt!814585))))

(assert (=> b!2184045 (= lt!814572 (- lt!814568 (size!19726 input!5540)))))

(assert (=> b!2184045 (= lt!814568 (size!19726 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!88 ((InoxSet Context!3218) BalanceConc!16112 BalanceConc!16112) tuple2!25038)

(assert (=> b!2184045 (= lt!814579 (findLongestMatchZipperSequenceV3!88 z!4055 input!5540 totalInput!977))))

(assert (= (and start!211786 res!938504) b!2184044))

(assert (= (and b!2184044 res!938503) b!2184037))

(assert (= (and b!2184037 res!938498) b!2184045))

(assert (= (and b!2184045 res!938505) b!2184032))

(assert (= (and b!2184032 res!938499) b!2184036))

(assert (= (and b!2184036 c!347125) b!2184043))

(assert (= (and b!2184036 (not c!347125)) b!2184027))

(assert (= (and b!2184036 (not res!938497)) b!2184038))

(assert (= (and b!2184036 (not res!938500)) b!2184042))

(assert (= (and b!2184036 res!938496) b!2184031))

(assert (= (and b!2184036 (not res!938495)) b!2184040))

(assert (= (and b!2184040 res!938501) b!2184039))

(assert (= (and b!2184040 (not res!938502)) b!2184034))

(get-info :version)

(assert (= (and start!211786 ((_ is ElementMatch!6039) r!12534)) b!2184029))

(assert (= (and start!211786 ((_ is Concat!10341) r!12534)) b!2184030))

(assert (= (and start!211786 ((_ is Star!6039) r!12534)) b!2184035))

(assert (= (and start!211786 ((_ is Union!6039) r!12534)) b!2184041))

(assert (= start!211786 b!2184033))

(assert (= start!211786 b!2184028))

(assert (= (and start!211786 condSetEmpty!18316) setIsEmpty!18316))

(assert (= (and start!211786 (not condSetEmpty!18316)) setNonEmpty!18316))

(assert (= setNonEmpty!18316 b!2184026))

(declare-fun m!2626379 () Bool)

(assert (=> setNonEmpty!18316 m!2626379))

(declare-fun m!2626381 () Bool)

(assert (=> b!2184036 m!2626381))

(declare-fun m!2626383 () Bool)

(assert (=> b!2184036 m!2626383))

(declare-fun m!2626385 () Bool)

(assert (=> b!2184036 m!2626385))

(declare-fun m!2626387 () Bool)

(assert (=> b!2184036 m!2626387))

(declare-fun m!2626389 () Bool)

(assert (=> b!2184036 m!2626389))

(declare-fun m!2626391 () Bool)

(assert (=> b!2184036 m!2626391))

(declare-fun m!2626393 () Bool)

(assert (=> b!2184036 m!2626393))

(declare-fun m!2626395 () Bool)

(assert (=> b!2184036 m!2626395))

(declare-fun m!2626397 () Bool)

(assert (=> b!2184036 m!2626397))

(declare-fun m!2626399 () Bool)

(assert (=> b!2184036 m!2626399))

(declare-fun m!2626401 () Bool)

(assert (=> b!2184036 m!2626401))

(declare-fun m!2626403 () Bool)

(assert (=> b!2184036 m!2626403))

(declare-fun m!2626405 () Bool)

(assert (=> b!2184036 m!2626405))

(assert (=> b!2184036 m!2626389))

(assert (=> b!2184036 m!2626381))

(declare-fun m!2626407 () Bool)

(assert (=> b!2184036 m!2626407))

(declare-fun m!2626409 () Bool)

(assert (=> b!2184036 m!2626409))

(declare-fun m!2626411 () Bool)

(assert (=> b!2184036 m!2626411))

(assert (=> b!2184036 m!2626391))

(declare-fun m!2626413 () Bool)

(assert (=> b!2184034 m!2626413))

(declare-fun m!2626415 () Bool)

(assert (=> b!2184034 m!2626415))

(declare-fun m!2626417 () Bool)

(assert (=> b!2184034 m!2626417))

(declare-fun m!2626419 () Bool)

(assert (=> b!2184034 m!2626419))

(declare-fun m!2626421 () Bool)

(assert (=> b!2184034 m!2626421))

(declare-fun m!2626423 () Bool)

(assert (=> b!2184034 m!2626423))

(declare-fun m!2626425 () Bool)

(assert (=> start!211786 m!2626425))

(declare-fun m!2626427 () Bool)

(assert (=> start!211786 m!2626427))

(declare-fun m!2626429 () Bool)

(assert (=> start!211786 m!2626429))

(declare-fun m!2626431 () Bool)

(assert (=> b!2184045 m!2626431))

(declare-fun m!2626433 () Bool)

(assert (=> b!2184045 m!2626433))

(declare-fun m!2626435 () Bool)

(assert (=> b!2184045 m!2626435))

(declare-fun m!2626437 () Bool)

(assert (=> b!2184045 m!2626437))

(declare-fun m!2626439 () Bool)

(assert (=> b!2184045 m!2626439))

(declare-fun m!2626441 () Bool)

(assert (=> b!2184045 m!2626441))

(declare-fun m!2626443 () Bool)

(assert (=> b!2184045 m!2626443))

(declare-fun m!2626445 () Bool)

(assert (=> b!2184038 m!2626445))

(assert (=> b!2184038 m!2626445))

(declare-fun m!2626447 () Bool)

(assert (=> b!2184038 m!2626447))

(assert (=> b!2184038 m!2626447))

(declare-fun m!2626449 () Bool)

(assert (=> b!2184038 m!2626449))

(declare-fun m!2626451 () Bool)

(assert (=> b!2184033 m!2626451))

(declare-fun m!2626453 () Bool)

(assert (=> b!2184042 m!2626453))

(declare-fun m!2626455 () Bool)

(assert (=> b!2184044 m!2626455))

(declare-fun m!2626457 () Bool)

(assert (=> b!2184044 m!2626457))

(declare-fun m!2626459 () Bool)

(assert (=> b!2184040 m!2626459))

(declare-fun m!2626461 () Bool)

(assert (=> b!2184037 m!2626461))

(declare-fun m!2626463 () Bool)

(assert (=> b!2184037 m!2626463))

(declare-fun m!2626465 () Bool)

(assert (=> b!2184037 m!2626465))

(declare-fun m!2626467 () Bool)

(assert (=> b!2184039 m!2626467))

(declare-fun m!2626469 () Bool)

(assert (=> b!2184031 m!2626469))

(declare-fun m!2626471 () Bool)

(assert (=> b!2184028 m!2626471))

(declare-fun m!2626473 () Bool)

(assert (=> b!2184032 m!2626473))

(check-sat (not b!2184042) (not b!2184033) (not b!2184038) tp_is_empty!9685 (not setNonEmpty!18316) (not start!211786) (not b!2184039) (not b!2184045) (not b!2184037) (not b!2184028) (not b!2184026) (not b!2184035) (not b!2184030) (not b!2184040) (not b!2184032) (not b!2184044) (not b!2184041) (not b!2184031) (not b!2184034) (not b!2184036))
(check-sat)
