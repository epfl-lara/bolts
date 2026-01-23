; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209618 () Bool)

(assert start!209618)

(declare-fun b!2160612 () Bool)

(declare-fun e!1382496 () Bool)

(declare-fun tp_is_empty!9561 () Bool)

(assert (=> b!2160612 (= e!1382496 tp_is_empty!9561)))

(declare-fun b!2160613 () Bool)

(declare-fun e!1382492 () Bool)

(declare-datatypes ((C!12100 0))(
  ( (C!12101 (val!7036 Int)) )
))
(declare-datatypes ((List!25144 0))(
  ( (Nil!25060) (Cons!25060 (h!30461 C!12100) (t!197692 List!25144)) )
))
(declare-datatypes ((IArray!16231 0))(
  ( (IArray!16232 (innerList!8173 List!25144)) )
))
(declare-datatypes ((Conc!8113 0))(
  ( (Node!8113 (left!19280 Conc!8113) (right!19610 Conc!8113) (csize!16456 Int) (cheight!8324 Int)) (Leaf!11869 (xs!11055 IArray!16231) (csize!16457 Int)) (Empty!8113) )
))
(declare-datatypes ((BalanceConc!15988 0))(
  ( (BalanceConc!15989 (c!341926 Conc!8113)) )
))
(declare-fun totalInput!977 () BalanceConc!15988)

(declare-fun tp!673992 () Bool)

(declare-fun inv!33199 (Conc!8113) Bool)

(assert (=> b!2160613 (= e!1382492 (and (inv!33199 (c!341926 totalInput!977)) tp!673992))))

(declare-fun b!2160614 () Bool)

(declare-fun tp!673994 () Bool)

(declare-fun tp!673995 () Bool)

(assert (=> b!2160614 (= e!1382496 (and tp!673994 tp!673995))))

(declare-fun b!2160615 () Bool)

(declare-fun e!1382500 () Bool)

(declare-datatypes ((tuple2!24774 0))(
  ( (tuple2!24775 (_1!14757 List!25144) (_2!14757 List!25144)) )
))
(declare-fun lt!803646 () tuple2!24774)

(declare-fun isEmpty!14369 (List!25144) Bool)

(assert (=> b!2160615 (= e!1382500 (not (isEmpty!14369 (_1!14757 lt!803646))))))

(declare-fun setIsEmpty!18040 () Bool)

(declare-fun setRes!18040 () Bool)

(assert (=> setIsEmpty!18040 setRes!18040))

(declare-fun b!2160616 () Bool)

(declare-fun tp!673996 () Bool)

(declare-fun tp!673999 () Bool)

(assert (=> b!2160616 (= e!1382496 (and tp!673996 tp!673999))))

(declare-fun b!2160618 () Bool)

(declare-fun tp!673998 () Bool)

(assert (=> b!2160618 (= e!1382496 tp!673998)))

(declare-fun b!2160619 () Bool)

(declare-fun e!1382504 () Bool)

(declare-fun tp!673993 () Bool)

(assert (=> b!2160619 (= e!1382504 tp!673993)))

(declare-fun b!2160620 () Bool)

(declare-fun e!1382493 () Bool)

(declare-fun e!1382497 () Bool)

(assert (=> b!2160620 (= e!1382493 (not e!1382497))))

(declare-fun res!931008 () Bool)

(assert (=> b!2160620 (=> res!931008 e!1382497)))

(declare-fun e!1382505 () Bool)

(assert (=> b!2160620 (= res!931008 e!1382505)))

(declare-fun res!931007 () Bool)

(assert (=> b!2160620 (=> (not res!931007) (not e!1382505))))

(declare-fun lt!803624 () Bool)

(assert (=> b!2160620 (= res!931007 (not lt!803624))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!5977 0))(
  ( (ElementMatch!5977 (c!341927 C!12100)) (Concat!10279 (regOne!12466 Regex!5977) (regTwo!12466 Regex!5977)) (EmptyExpr!5977) (Star!5977 (reg!6306 Regex!5977)) (EmptyLang!5977) (Union!5977 (regOne!12467 Regex!5977) (regTwo!12467 Regex!5977)) )
))
(declare-datatypes ((List!25145 0))(
  ( (Nil!25061) (Cons!25061 (h!30462 Regex!5977) (t!197693 List!25145)) )
))
(declare-datatypes ((Context!3094 0))(
  ( (Context!3095 (exprs!2047 List!25145)) )
))
(declare-fun z!4055 () (InoxSet Context!3094))

(declare-fun lt!803621 () List!25144)

(declare-fun matchZipper!105 ((InoxSet Context!3094) List!25144) Bool)

(assert (=> b!2160620 (= lt!803624 (matchZipper!105 z!4055 lt!803621))))

(declare-fun e!1382501 () Bool)

(assert (=> b!2160620 e!1382501))

(declare-fun res!931015 () Bool)

(assert (=> b!2160620 (=> res!931015 e!1382501)))

(declare-fun lt!803636 () tuple2!24774)

(assert (=> b!2160620 (= res!931015 (isEmpty!14369 (_1!14757 lt!803636)))))

(declare-fun r!12534 () Regex!5977)

(declare-fun lt!803642 () List!25144)

(declare-fun findLongestMatchInner!606 (Regex!5977 List!25144 Int List!25144 List!25144 Int) tuple2!24774)

(declare-fun size!19581 (List!25144) Int)

(assert (=> b!2160620 (= lt!803636 (findLongestMatchInner!606 r!12534 Nil!25060 (size!19581 Nil!25060) lt!803642 lt!803642 (size!19581 lt!803642)))))

(declare-datatypes ((Unit!38105 0))(
  ( (Unit!38106) )
))
(declare-fun lt!803637 () Unit!38105)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!587 (Regex!5977 List!25144) Unit!38105)

(assert (=> b!2160620 (= lt!803637 (longestMatchIsAcceptedByMatchOrIsEmpty!587 r!12534 lt!803642))))

(declare-fun e!1382490 () Bool)

(assert (=> b!2160620 e!1382490))

(declare-fun res!931013 () Bool)

(assert (=> b!2160620 (=> res!931013 e!1382490)))

(declare-fun lt!803641 () Int)

(assert (=> b!2160620 (= res!931013 (<= lt!803641 0))))

(declare-fun lt!803625 () Int)

(declare-fun lt!803630 () Int)

(declare-fun lt!803638 () Int)

(declare-fun furthestNullablePosition!164 ((InoxSet Context!3094) Int BalanceConc!15988 Int Int) Int)

(assert (=> b!2160620 (= lt!803641 (+ 1 (- (furthestNullablePosition!164 z!4055 lt!803630 totalInput!977 lt!803625 lt!803638) lt!803630)))))

(declare-fun lt!803627 () Unit!38105)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!12 ((InoxSet Context!3094) Int BalanceConc!15988 Int) Unit!38105)

(assert (=> b!2160620 (= lt!803627 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!12 z!4055 lt!803630 totalInput!977 lt!803638))))

(declare-fun e!1382494 () Int)

(assert (=> b!2160620 (= lt!803638 e!1382494)))

(declare-fun c!341925 () Bool)

(declare-fun nullableZipper!258 ((InoxSet Context!3094)) Bool)

(assert (=> b!2160620 (= c!341925 (nullableZipper!258 z!4055))))

(declare-fun lt!803645 () List!25144)

(declare-fun isPrefix!2097 (List!25144 List!25144) Bool)

(declare-fun take!191 (List!25144 Int) List!25144)

(assert (=> b!2160620 (isPrefix!2097 (take!191 lt!803645 lt!803630) lt!803645)))

(declare-fun lt!803647 () Unit!38105)

(declare-fun lemmaTakeIsPrefix!14 (List!25144 Int) Unit!38105)

(assert (=> b!2160620 (= lt!803647 (lemmaTakeIsPrefix!14 lt!803645 lt!803630))))

(declare-fun lt!803631 () List!25144)

(assert (=> b!2160620 (isPrefix!2097 (_1!14757 lt!803646) lt!803631)))

(declare-fun lt!803635 () Unit!38105)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1380 (List!25144 List!25144) Unit!38105)

(assert (=> b!2160620 (= lt!803635 (lemmaConcatTwoListThenFirstIsPrefix!1380 (_1!14757 lt!803646) (_2!14757 lt!803646)))))

(declare-fun lt!803640 () List!25144)

(assert (=> b!2160620 (isPrefix!2097 lt!803621 lt!803640)))

(declare-fun lt!803623 () Unit!38105)

(declare-fun lt!803626 () List!25144)

(assert (=> b!2160620 (= lt!803623 (lemmaConcatTwoListThenFirstIsPrefix!1380 lt!803621 lt!803626))))

(declare-fun b!2160621 () Bool)

(declare-fun e!1382488 () Bool)

(assert (=> b!2160621 (= e!1382488 true)))

(declare-fun lt!803622 () Int)

(declare-fun lt!803632 () List!25144)

(assert (=> b!2160621 (= lt!803622 (size!19581 lt!803632))))

(declare-fun b!2160622 () Bool)

(declare-fun e!1382498 () Bool)

(declare-fun e!1382499 () Bool)

(assert (=> b!2160622 (= e!1382498 e!1382499)))

(declare-fun res!931019 () Bool)

(assert (=> b!2160622 (=> res!931019 e!1382499)))

(declare-fun lt!803628 () List!25144)

(assert (=> b!2160622 (= res!931019 (not (= lt!803628 lt!803642)))))

(declare-fun lt!803648 () Int)

(assert (=> b!2160622 (= lt!803632 (take!191 lt!803628 lt!803648))))

(declare-fun drop!1200 (List!25144 Int) List!25144)

(assert (=> b!2160622 (= lt!803628 (drop!1200 lt!803645 lt!803630))))

(declare-fun b!2160623 () Bool)

(declare-fun e!1382487 () Bool)

(declare-fun e!1382503 () Bool)

(assert (=> b!2160623 (= e!1382487 e!1382503)))

(declare-fun res!931020 () Bool)

(assert (=> b!2160623 (=> (not res!931020) (not e!1382503))))

(assert (=> b!2160623 (= res!931020 (= lt!803640 lt!803642))))

(declare-fun ++!6334 (List!25144 List!25144) List!25144)

(assert (=> b!2160623 (= lt!803640 (++!6334 lt!803621 lt!803626))))

(declare-datatypes ((tuple2!24776 0))(
  ( (tuple2!24777 (_1!14758 BalanceConc!15988) (_2!14758 BalanceConc!15988)) )
))
(declare-fun lt!803634 () tuple2!24776)

(declare-fun list!9596 (BalanceConc!15988) List!25144)

(assert (=> b!2160623 (= lt!803626 (list!9596 (_2!14758 lt!803634)))))

(assert (=> b!2160623 (= lt!803621 (list!9596 (_1!14758 lt!803634)))))

(declare-fun findLongestMatch!531 (Regex!5977 List!25144) tuple2!24774)

(assert (=> b!2160623 (= lt!803646 (findLongestMatch!531 r!12534 lt!803642))))

(declare-fun input!5540 () BalanceConc!15988)

(declare-fun size!19582 (BalanceConc!15988) Int)

(assert (=> b!2160623 (= lt!803630 (- lt!803625 (size!19582 input!5540)))))

(assert (=> b!2160623 (= lt!803625 (size!19582 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!26 ((InoxSet Context!3094) BalanceConc!15988 BalanceConc!15988) tuple2!24776)

(assert (=> b!2160623 (= lt!803634 (findLongestMatchZipperSequenceV3!26 z!4055 input!5540 totalInput!977))))

(declare-fun b!2160624 () Bool)

(assert (=> b!2160624 (= e!1382494 (- lt!803630 1))))

(declare-fun b!2160625 () Bool)

(declare-fun e!1382489 () Bool)

(assert (=> b!2160625 (= e!1382489 e!1382498)))

(declare-fun res!931018 () Bool)

(assert (=> b!2160625 (=> res!931018 e!1382498)))

(assert (=> b!2160625 (= res!931018 (<= lt!803648 (size!19582 (_1!14758 lt!803634))))))

(assert (=> b!2160625 (= lt!803648 (size!19581 (_1!14757 lt!803646)))))

(declare-fun matchR!2738 (Regex!5977 List!25144) Bool)

(assert (=> b!2160625 (= (matchR!2738 r!12534 lt!803621) lt!803624)))

(declare-datatypes ((List!25146 0))(
  ( (Nil!25062) (Cons!25062 (h!30463 Context!3094) (t!197694 List!25146)) )
))
(declare-fun lt!803644 () List!25146)

(declare-fun lt!803633 () Unit!38105)

(declare-fun theoremZipperRegexEquiv!21 ((InoxSet Context!3094) List!25146 Regex!5977 List!25144) Unit!38105)

(assert (=> b!2160625 (= lt!803633 (theoremZipperRegexEquiv!21 z!4055 lt!803644 r!12534 lt!803621))))

(declare-fun lt!803643 () Bool)

(assert (=> b!2160625 (= lt!803643 (matchZipper!105 z!4055 (_1!14757 lt!803646)))))

(declare-fun lt!803629 () Unit!38105)

(assert (=> b!2160625 (= lt!803629 (theoremZipperRegexEquiv!21 z!4055 lt!803644 r!12534 (_1!14757 lt!803646)))))

(declare-fun b!2160617 () Bool)

(declare-fun e!1382495 () Bool)

(declare-fun tp!673997 () Bool)

(assert (=> b!2160617 (= e!1382495 (and (inv!33199 (c!341926 input!5540)) tp!673997))))

(declare-fun res!931009 () Bool)

(declare-fun e!1382502 () Bool)

(assert (=> start!209618 (=> (not res!931009) (not e!1382502))))

(declare-fun validRegex!2253 (Regex!5977) Bool)

(assert (=> start!209618 (= res!931009 (validRegex!2253 r!12534))))

(assert (=> start!209618 e!1382502))

(assert (=> start!209618 e!1382496))

(declare-fun inv!33200 (BalanceConc!15988) Bool)

(assert (=> start!209618 (and (inv!33200 totalInput!977) e!1382492)))

(assert (=> start!209618 (and (inv!33200 input!5540) e!1382495)))

(declare-fun condSetEmpty!18040 () Bool)

(assert (=> start!209618 (= condSetEmpty!18040 (= z!4055 ((as const (Array Context!3094 Bool)) false)))))

(assert (=> start!209618 setRes!18040))

(declare-fun b!2160626 () Bool)

(assert (=> b!2160626 (= e!1382490 (matchZipper!105 z!4055 (take!191 (drop!1200 lt!803645 lt!803630) lt!803641)))))

(declare-fun b!2160627 () Bool)

(assert (=> b!2160627 (= e!1382499 e!1382488)))

(declare-fun res!931021 () Bool)

(assert (=> b!2160627 (=> res!931021 e!1382488)))

(assert (=> b!2160627 (= res!931021 (not (isPrefix!2097 lt!803632 lt!803642)))))

(assert (=> b!2160627 (isPrefix!2097 (take!191 lt!803642 lt!803648) lt!803642)))

(declare-fun lt!803639 () Unit!38105)

(assert (=> b!2160627 (= lt!803639 (lemmaTakeIsPrefix!14 lt!803642 lt!803648))))

(declare-fun b!2160628 () Bool)

(declare-fun e!1382491 () Bool)

(assert (=> b!2160628 (= e!1382502 e!1382491)))

(declare-fun res!931017 () Bool)

(assert (=> b!2160628 (=> (not res!931017) (not e!1382491))))

(declare-fun unfocusZipper!84 (List!25146) Regex!5977)

(assert (=> b!2160628 (= res!931017 (= (unfocusZipper!84 lt!803644) r!12534))))

(declare-fun toList!1160 ((InoxSet Context!3094)) List!25146)

(assert (=> b!2160628 (= lt!803644 (toList!1160 z!4055))))

(declare-fun b!2160629 () Bool)

(assert (=> b!2160629 (= e!1382491 e!1382487)))

(declare-fun res!931011 () Bool)

(assert (=> b!2160629 (=> (not res!931011) (not e!1382487))))

(declare-fun isSuffix!644 (List!25144 List!25144) Bool)

(assert (=> b!2160629 (= res!931011 (isSuffix!644 lt!803642 lt!803645))))

(assert (=> b!2160629 (= lt!803645 (list!9596 totalInput!977))))

(assert (=> b!2160629 (= lt!803642 (list!9596 input!5540))))

(declare-fun b!2160630 () Bool)

(assert (=> b!2160630 (= e!1382494 (- 1))))

(declare-fun b!2160631 () Bool)

(assert (=> b!2160631 (= e!1382501 (matchR!2738 r!12534 (_1!14757 lt!803636)))))

(declare-fun b!2160632 () Bool)

(assert (=> b!2160632 (= e!1382503 e!1382493)))

(declare-fun res!931014 () Bool)

(assert (=> b!2160632 (=> (not res!931014) (not e!1382493))))

(assert (=> b!2160632 (= res!931014 (= lt!803631 lt!803642))))

(assert (=> b!2160632 (= lt!803631 (++!6334 (_1!14757 lt!803646) (_2!14757 lt!803646)))))

(declare-fun b!2160633 () Bool)

(declare-fun res!931016 () Bool)

(assert (=> b!2160633 (=> res!931016 e!1382488)))

(assert (=> b!2160633 (= res!931016 (not (isPrefix!2097 (_1!14757 lt!803646) lt!803642)))))

(declare-fun b!2160634 () Bool)

(declare-fun isEmpty!14370 (BalanceConc!15988) Bool)

(assert (=> b!2160634 (= e!1382505 (not (isEmpty!14370 (_1!14758 lt!803634))))))

(declare-fun b!2160635 () Bool)

(assert (=> b!2160635 (= e!1382497 e!1382489)))

(declare-fun res!931010 () Bool)

(assert (=> b!2160635 (=> res!931010 e!1382489)))

(assert (=> b!2160635 (= res!931010 e!1382500)))

(declare-fun res!931012 () Bool)

(assert (=> b!2160635 (=> (not res!931012) (not e!1382500))))

(assert (=> b!2160635 (= res!931012 (not lt!803643))))

(assert (=> b!2160635 (= lt!803643 (matchR!2738 r!12534 (_1!14757 lt!803646)))))

(declare-fun setNonEmpty!18040 () Bool)

(declare-fun setElem!18040 () Context!3094)

(declare-fun tp!674000 () Bool)

(declare-fun inv!33201 (Context!3094) Bool)

(assert (=> setNonEmpty!18040 (= setRes!18040 (and tp!674000 (inv!33201 setElem!18040) e!1382504))))

(declare-fun setRest!18040 () (InoxSet Context!3094))

(assert (=> setNonEmpty!18040 (= z!4055 ((_ map or) (store ((as const (Array Context!3094 Bool)) false) setElem!18040 true) setRest!18040))))

(assert (= (and start!209618 res!931009) b!2160628))

(assert (= (and b!2160628 res!931017) b!2160629))

(assert (= (and b!2160629 res!931011) b!2160623))

(assert (= (and b!2160623 res!931020) b!2160632))

(assert (= (and b!2160632 res!931014) b!2160620))

(assert (= (and b!2160620 c!341925) b!2160624))

(assert (= (and b!2160620 (not c!341925)) b!2160630))

(assert (= (and b!2160620 (not res!931013)) b!2160626))

(assert (= (and b!2160620 (not res!931015)) b!2160631))

(assert (= (and b!2160620 res!931007) b!2160634))

(assert (= (and b!2160620 (not res!931008)) b!2160635))

(assert (= (and b!2160635 res!931012) b!2160615))

(assert (= (and b!2160635 (not res!931010)) b!2160625))

(assert (= (and b!2160625 (not res!931018)) b!2160622))

(assert (= (and b!2160622 (not res!931019)) b!2160627))

(assert (= (and b!2160627 (not res!931021)) b!2160633))

(assert (= (and b!2160633 (not res!931016)) b!2160621))

(get-info :version)

(assert (= (and start!209618 ((_ is ElementMatch!5977) r!12534)) b!2160612))

(assert (= (and start!209618 ((_ is Concat!10279) r!12534)) b!2160616))

(assert (= (and start!209618 ((_ is Star!5977) r!12534)) b!2160618))

(assert (= (and start!209618 ((_ is Union!5977) r!12534)) b!2160614))

(assert (= start!209618 b!2160613))

(assert (= start!209618 b!2160617))

(assert (= (and start!209618 condSetEmpty!18040) setIsEmpty!18040))

(assert (= (and start!209618 (not condSetEmpty!18040)) setNonEmpty!18040))

(assert (= setNonEmpty!18040 b!2160619))

(declare-fun m!2600681 () Bool)

(assert (=> b!2160621 m!2600681))

(declare-fun m!2600683 () Bool)

(assert (=> b!2160622 m!2600683))

(declare-fun m!2600685 () Bool)

(assert (=> b!2160622 m!2600685))

(declare-fun m!2600687 () Bool)

(assert (=> b!2160634 m!2600687))

(declare-fun m!2600689 () Bool)

(assert (=> setNonEmpty!18040 m!2600689))

(declare-fun m!2600691 () Bool)

(assert (=> b!2160635 m!2600691))

(declare-fun m!2600693 () Bool)

(assert (=> b!2160617 m!2600693))

(declare-fun m!2600695 () Bool)

(assert (=> start!209618 m!2600695))

(declare-fun m!2600697 () Bool)

(assert (=> start!209618 m!2600697))

(declare-fun m!2600699 () Bool)

(assert (=> start!209618 m!2600699))

(assert (=> b!2160626 m!2600685))

(assert (=> b!2160626 m!2600685))

(declare-fun m!2600701 () Bool)

(assert (=> b!2160626 m!2600701))

(assert (=> b!2160626 m!2600701))

(declare-fun m!2600703 () Bool)

(assert (=> b!2160626 m!2600703))

(declare-fun m!2600705 () Bool)

(assert (=> b!2160633 m!2600705))

(declare-fun m!2600707 () Bool)

(assert (=> b!2160620 m!2600707))

(declare-fun m!2600709 () Bool)

(assert (=> b!2160620 m!2600709))

(declare-fun m!2600711 () Bool)

(assert (=> b!2160620 m!2600711))

(declare-fun m!2600713 () Bool)

(assert (=> b!2160620 m!2600713))

(declare-fun m!2600715 () Bool)

(assert (=> b!2160620 m!2600715))

(declare-fun m!2600717 () Bool)

(assert (=> b!2160620 m!2600717))

(declare-fun m!2600719 () Bool)

(assert (=> b!2160620 m!2600719))

(declare-fun m!2600721 () Bool)

(assert (=> b!2160620 m!2600721))

(declare-fun m!2600723 () Bool)

(assert (=> b!2160620 m!2600723))

(declare-fun m!2600725 () Bool)

(assert (=> b!2160620 m!2600725))

(assert (=> b!2160620 m!2600725))

(assert (=> b!2160620 m!2600711))

(declare-fun m!2600727 () Bool)

(assert (=> b!2160620 m!2600727))

(assert (=> b!2160620 m!2600719))

(declare-fun m!2600729 () Bool)

(assert (=> b!2160620 m!2600729))

(declare-fun m!2600731 () Bool)

(assert (=> b!2160620 m!2600731))

(declare-fun m!2600733 () Bool)

(assert (=> b!2160620 m!2600733))

(declare-fun m!2600735 () Bool)

(assert (=> b!2160620 m!2600735))

(declare-fun m!2600737 () Bool)

(assert (=> b!2160620 m!2600737))

(declare-fun m!2600739 () Bool)

(assert (=> b!2160632 m!2600739))

(declare-fun m!2600741 () Bool)

(assert (=> b!2160628 m!2600741))

(declare-fun m!2600743 () Bool)

(assert (=> b!2160628 m!2600743))

(declare-fun m!2600745 () Bool)

(assert (=> b!2160631 m!2600745))

(declare-fun m!2600747 () Bool)

(assert (=> b!2160625 m!2600747))

(declare-fun m!2600749 () Bool)

(assert (=> b!2160625 m!2600749))

(declare-fun m!2600751 () Bool)

(assert (=> b!2160625 m!2600751))

(declare-fun m!2600753 () Bool)

(assert (=> b!2160625 m!2600753))

(declare-fun m!2600755 () Bool)

(assert (=> b!2160625 m!2600755))

(declare-fun m!2600757 () Bool)

(assert (=> b!2160625 m!2600757))

(declare-fun m!2600759 () Bool)

(assert (=> b!2160615 m!2600759))

(declare-fun m!2600761 () Bool)

(assert (=> b!2160623 m!2600761))

(declare-fun m!2600763 () Bool)

(assert (=> b!2160623 m!2600763))

(declare-fun m!2600765 () Bool)

(assert (=> b!2160623 m!2600765))

(declare-fun m!2600767 () Bool)

(assert (=> b!2160623 m!2600767))

(declare-fun m!2600769 () Bool)

(assert (=> b!2160623 m!2600769))

(declare-fun m!2600771 () Bool)

(assert (=> b!2160623 m!2600771))

(declare-fun m!2600773 () Bool)

(assert (=> b!2160623 m!2600773))

(declare-fun m!2600775 () Bool)

(assert (=> b!2160627 m!2600775))

(declare-fun m!2600777 () Bool)

(assert (=> b!2160627 m!2600777))

(assert (=> b!2160627 m!2600777))

(declare-fun m!2600779 () Bool)

(assert (=> b!2160627 m!2600779))

(declare-fun m!2600781 () Bool)

(assert (=> b!2160627 m!2600781))

(declare-fun m!2600783 () Bool)

(assert (=> b!2160613 m!2600783))

(declare-fun m!2600785 () Bool)

(assert (=> b!2160629 m!2600785))

(declare-fun m!2600787 () Bool)

(assert (=> b!2160629 m!2600787))

(declare-fun m!2600789 () Bool)

(assert (=> b!2160629 m!2600789))

(check-sat (not b!2160618) (not b!2160613) (not b!2160634) (not b!2160615) tp_is_empty!9561 (not b!2160625) (not b!2160631) (not b!2160619) (not b!2160632) (not start!209618) (not b!2160627) (not b!2160626) (not b!2160614) (not b!2160633) (not b!2160621) (not b!2160616) (not setNonEmpty!18040) (not b!2160629) (not b!2160635) (not b!2160620) (not b!2160628) (not b!2160617) (not b!2160623) (not b!2160622))
(check-sat)
