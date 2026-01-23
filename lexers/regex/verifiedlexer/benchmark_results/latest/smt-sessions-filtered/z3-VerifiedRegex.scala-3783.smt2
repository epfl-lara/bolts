; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!211378 () Bool)

(assert start!211378)

(declare-fun e!1392503 () Bool)

(declare-fun lt!812636 () Int)

(declare-fun b!2177802 () Bool)

(declare-datatypes ((C!12212 0))(
  ( (C!12213 (val!7092 Int)) )
))
(declare-datatypes ((List!25312 0))(
  ( (Nil!25228) (Cons!25228 (h!30629 C!12212) (t!197888 List!25312)) )
))
(declare-fun lt!812630 () List!25312)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6033 0))(
  ( (ElementMatch!6033 (c!345626 C!12212)) (Concat!10335 (regOne!12578 Regex!6033) (regTwo!12578 Regex!6033)) (EmptyExpr!6033) (Star!6033 (reg!6362 Regex!6033)) (EmptyLang!6033) (Union!6033 (regOne!12579 Regex!6033) (regTwo!12579 Regex!6033)) )
))
(declare-datatypes ((List!25313 0))(
  ( (Nil!25229) (Cons!25229 (h!30630 Regex!6033) (t!197889 List!25313)) )
))
(declare-datatypes ((Context!3206 0))(
  ( (Context!3207 (exprs!2103 List!25313)) )
))
(declare-fun z!4055 () (InoxSet Context!3206))

(declare-fun lt!812654 () Int)

(declare-fun matchZipper!149 ((InoxSet Context!3206) List!25312) Bool)

(declare-fun take!241 (List!25312 Int) List!25312)

(declare-fun drop!1251 (List!25312 Int) List!25312)

(assert (=> b!2177802 (= e!1392503 (matchZipper!149 z!4055 (take!241 (drop!1251 lt!812630 lt!812636) lt!812654)))))

(declare-fun b!2177803 () Bool)

(declare-fun e!1392494 () Bool)

(declare-fun tp!679283 () Bool)

(declare-fun tp!679280 () Bool)

(assert (=> b!2177803 (= e!1392494 (and tp!679283 tp!679280))))

(declare-fun b!2177804 () Bool)

(declare-fun e!1392492 () Bool)

(declare-fun e!1392490 () Bool)

(assert (=> b!2177804 (= e!1392492 e!1392490)))

(declare-fun res!936819 () Bool)

(assert (=> b!2177804 (=> res!936819 e!1392490)))

(declare-fun lt!812641 () Int)

(declare-datatypes ((IArray!16343 0))(
  ( (IArray!16344 (innerList!8229 List!25312)) )
))
(declare-datatypes ((Conc!8169 0))(
  ( (Node!8169 (left!19372 Conc!8169) (right!19702 Conc!8169) (csize!16568 Int) (cheight!8380 Int)) (Leaf!11953 (xs!11111 IArray!16343) (csize!16569 Int)) (Empty!8169) )
))
(declare-datatypes ((BalanceConc!16100 0))(
  ( (BalanceConc!16101 (c!345627 Conc!8169)) )
))
(declare-datatypes ((tuple2!25010 0))(
  ( (tuple2!25011 (_1!14875 BalanceConc!16100) (_2!14875 BalanceConc!16100)) )
))
(declare-fun lt!812639 () tuple2!25010)

(declare-fun size!19712 (BalanceConc!16100) Int)

(assert (=> b!2177804 (= res!936819 (<= lt!812641 (size!19712 (_1!14875 lt!812639))))))

(declare-datatypes ((tuple2!25012 0))(
  ( (tuple2!25013 (_1!14876 List!25312) (_2!14876 List!25312)) )
))
(declare-fun lt!812640 () tuple2!25012)

(declare-fun size!19713 (List!25312) Int)

(assert (=> b!2177804 (= lt!812641 (size!19713 (_1!14876 lt!812640)))))

(declare-fun r!12534 () Regex!6033)

(declare-fun lt!812637 () List!25312)

(declare-fun lt!812650 () Bool)

(declare-fun matchR!2782 (Regex!6033 List!25312) Bool)

(assert (=> b!2177804 (= (matchR!2782 r!12534 lt!812637) lt!812650)))

(declare-datatypes ((Unit!38319 0))(
  ( (Unit!38320) )
))
(declare-fun lt!812632 () Unit!38319)

(declare-datatypes ((List!25314 0))(
  ( (Nil!25230) (Cons!25230 (h!30631 Context!3206) (t!197890 List!25314)) )
))
(declare-fun lt!812638 () List!25314)

(declare-fun theoremZipperRegexEquiv!59 ((InoxSet Context!3206) List!25314 Regex!6033 List!25312) Unit!38319)

(assert (=> b!2177804 (= lt!812632 (theoremZipperRegexEquiv!59 z!4055 lt!812638 r!12534 lt!812637))))

(declare-fun lt!812653 () Bool)

(assert (=> b!2177804 (= lt!812653 (matchZipper!149 z!4055 (_1!14876 lt!812640)))))

(declare-fun lt!812629 () Unit!38319)

(assert (=> b!2177804 (= lt!812629 (theoremZipperRegexEquiv!59 z!4055 lt!812638 r!12534 (_1!14876 lt!812640)))))

(declare-fun b!2177805 () Bool)

(declare-fun e!1392502 () Bool)

(declare-fun e!1392501 () Bool)

(assert (=> b!2177805 (= e!1392502 e!1392501)))

(declare-fun res!936817 () Bool)

(assert (=> b!2177805 (=> (not res!936817) (not e!1392501))))

(declare-fun lt!812646 () List!25312)

(declare-fun lt!812642 () List!25312)

(assert (=> b!2177805 (= res!936817 (= lt!812646 lt!812642))))

(declare-fun ++!6392 (List!25312 List!25312) List!25312)

(assert (=> b!2177805 (= lt!812646 (++!6392 (_1!14876 lt!812640) (_2!14876 lt!812640)))))

(declare-fun b!2177806 () Bool)

(declare-fun e!1392489 () Bool)

(declare-fun totalInput!977 () BalanceConc!16100)

(declare-fun tp!679282 () Bool)

(declare-fun inv!33519 (Conc!8169) Bool)

(assert (=> b!2177806 (= e!1392489 (and (inv!33519 (c!345627 totalInput!977)) tp!679282))))

(declare-fun b!2177807 () Bool)

(declare-fun e!1392505 () Bool)

(declare-fun e!1392496 () Bool)

(assert (=> b!2177807 (= e!1392505 e!1392496)))

(declare-fun res!936810 () Bool)

(assert (=> b!2177807 (=> res!936810 e!1392496)))

(declare-fun lt!812643 () Int)

(declare-fun lt!812626 () List!25312)

(assert (=> b!2177807 (= res!936810 (or (not (= lt!812626 (_1!14876 lt!812640))) (< lt!812636 0) (> lt!812636 lt!812643) (< lt!812641 0) (> lt!812641 (- lt!812643 lt!812636))))))

(declare-fun lt!812635 () List!25312)

(assert (=> b!2177807 (= lt!812635 (_1!14876 lt!812640))))

(declare-fun lt!812631 () Unit!38319)

(declare-fun lemmaIsPrefixSameLengthThenSameList!361 (List!25312 List!25312 List!25312) Unit!38319)

(assert (=> b!2177807 (= lt!812631 (lemmaIsPrefixSameLengthThenSameList!361 lt!812635 (_1!14876 lt!812640) lt!812642))))

(declare-fun isPrefix!2149 (List!25312 List!25312) Bool)

(assert (=> b!2177807 (isPrefix!2149 lt!812626 lt!812642)))

(assert (=> b!2177807 (= lt!812626 (take!241 lt!812642 lt!812641))))

(declare-fun lt!812628 () Unit!38319)

(declare-fun lemmaTakeIsPrefix!64 (List!25312 Int) Unit!38319)

(assert (=> b!2177807 (= lt!812628 (lemmaTakeIsPrefix!64 lt!812642 lt!812641))))

(declare-fun b!2177808 () Bool)

(declare-fun tp!679281 () Bool)

(declare-fun tp!679288 () Bool)

(assert (=> b!2177808 (= e!1392494 (and tp!679281 tp!679288))))

(declare-fun b!2177810 () Bool)

(declare-fun lt!812649 () Int)

(assert (=> b!2177810 (= e!1392496 (and (>= lt!812649 (- 1)) (< lt!812649 lt!812636)))))

(declare-fun b!2177811 () Bool)

(declare-fun res!936820 () Bool)

(assert (=> b!2177811 (=> res!936820 e!1392496)))

(assert (=> b!2177811 (= res!936820 (not (matchZipper!149 z!4055 lt!812635)))))

(declare-fun b!2177812 () Bool)

(declare-fun e!1392497 () Bool)

(declare-fun isEmpty!14487 (List!25312) Bool)

(assert (=> b!2177812 (= e!1392497 (not (isEmpty!14487 (_1!14876 lt!812640))))))

(declare-fun b!2177813 () Bool)

(declare-fun e!1392498 () Int)

(assert (=> b!2177813 (= e!1392498 (- lt!812636 1))))

(declare-fun setElem!18288 () Context!3206)

(declare-fun tp!679286 () Bool)

(declare-fun setNonEmpty!18288 () Bool)

(declare-fun e!1392495 () Bool)

(declare-fun setRes!18288 () Bool)

(declare-fun inv!33520 (Context!3206) Bool)

(assert (=> setNonEmpty!18288 (= setRes!18288 (and tp!679286 (inv!33520 setElem!18288) e!1392495))))

(declare-fun setRest!18288 () (InoxSet Context!3206))

(assert (=> setNonEmpty!18288 (= z!4055 ((_ map or) (store ((as const (Array Context!3206 Bool)) false) setElem!18288 true) setRest!18288))))

(declare-fun b!2177814 () Bool)

(declare-fun e!1392506 () Bool)

(declare-fun isEmpty!14488 (BalanceConc!16100) Bool)

(assert (=> b!2177814 (= e!1392506 (not (isEmpty!14488 (_1!14875 lt!812639))))))

(declare-fun b!2177815 () Bool)

(declare-fun e!1392507 () Bool)

(declare-fun e!1392493 () Bool)

(assert (=> b!2177815 (= e!1392507 e!1392493)))

(declare-fun res!936811 () Bool)

(assert (=> b!2177815 (=> (not res!936811) (not e!1392493))))

(declare-fun unfocusZipper!140 (List!25314) Regex!6033)

(assert (=> b!2177815 (= res!936811 (= (unfocusZipper!140 lt!812638) r!12534))))

(declare-fun toList!1216 ((InoxSet Context!3206)) List!25314)

(assert (=> b!2177815 (= lt!812638 (toList!1216 z!4055))))

(declare-fun b!2177816 () Bool)

(assert (=> b!2177816 (= e!1392498 (- 1))))

(declare-fun b!2177817 () Bool)

(declare-fun tp!679287 () Bool)

(assert (=> b!2177817 (= e!1392495 tp!679287)))

(declare-fun b!2177818 () Bool)

(declare-fun e!1392491 () Bool)

(assert (=> b!2177818 (= e!1392491 e!1392492)))

(declare-fun res!936821 () Bool)

(assert (=> b!2177818 (=> res!936821 e!1392492)))

(assert (=> b!2177818 (= res!936821 e!1392497)))

(declare-fun res!936809 () Bool)

(assert (=> b!2177818 (=> (not res!936809) (not e!1392497))))

(assert (=> b!2177818 (= res!936809 (not lt!812653))))

(assert (=> b!2177818 (= lt!812653 (matchR!2782 r!12534 (_1!14876 lt!812640)))))

(declare-fun b!2177819 () Bool)

(declare-fun tp_is_empty!9673 () Bool)

(assert (=> b!2177819 (= e!1392494 tp_is_empty!9673)))

(declare-fun b!2177820 () Bool)

(declare-fun e!1392499 () Bool)

(assert (=> b!2177820 (= e!1392493 e!1392499)))

(declare-fun res!936813 () Bool)

(assert (=> b!2177820 (=> (not res!936813) (not e!1392499))))

(declare-fun isSuffix!700 (List!25312 List!25312) Bool)

(assert (=> b!2177820 (= res!936813 (isSuffix!700 lt!812642 lt!812630))))

(declare-fun list!9682 (BalanceConc!16100) List!25312)

(assert (=> b!2177820 (= lt!812630 (list!9682 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16100)

(assert (=> b!2177820 (= lt!812642 (list!9682 input!5540))))

(declare-fun b!2177809 () Bool)

(assert (=> b!2177809 (= e!1392499 e!1392502)))

(declare-fun res!936815 () Bool)

(assert (=> b!2177809 (=> (not res!936815) (not e!1392502))))

(declare-fun lt!812645 () List!25312)

(assert (=> b!2177809 (= res!936815 (= lt!812645 lt!812642))))

(declare-fun lt!812634 () List!25312)

(assert (=> b!2177809 (= lt!812645 (++!6392 lt!812637 lt!812634))))

(assert (=> b!2177809 (= lt!812634 (list!9682 (_2!14875 lt!812639)))))

(assert (=> b!2177809 (= lt!812637 (list!9682 (_1!14875 lt!812639)))))

(declare-fun findLongestMatch!587 (Regex!6033 List!25312) tuple2!25012)

(assert (=> b!2177809 (= lt!812640 (findLongestMatch!587 r!12534 lt!812642))))

(assert (=> b!2177809 (= lt!812636 (- lt!812643 (size!19712 input!5540)))))

(assert (=> b!2177809 (= lt!812643 (size!19712 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!82 ((InoxSet Context!3206) BalanceConc!16100 BalanceConc!16100) tuple2!25010)

(assert (=> b!2177809 (= lt!812639 (findLongestMatchZipperSequenceV3!82 z!4055 input!5540 totalInput!977))))

(declare-fun res!936822 () Bool)

(assert (=> start!211378 (=> (not res!936822) (not e!1392507))))

(declare-fun validRegex!2309 (Regex!6033) Bool)

(assert (=> start!211378 (= res!936822 (validRegex!2309 r!12534))))

(assert (=> start!211378 e!1392507))

(assert (=> start!211378 e!1392494))

(declare-fun inv!33521 (BalanceConc!16100) Bool)

(assert (=> start!211378 (and (inv!33521 totalInput!977) e!1392489)))

(declare-fun e!1392500 () Bool)

(assert (=> start!211378 (and (inv!33521 input!5540) e!1392500)))

(declare-fun condSetEmpty!18288 () Bool)

(assert (=> start!211378 (= condSetEmpty!18288 (= z!4055 ((as const (Array Context!3206 Bool)) false)))))

(assert (=> start!211378 setRes!18288))

(declare-fun setIsEmpty!18288 () Bool)

(assert (=> setIsEmpty!18288 setRes!18288))

(declare-fun b!2177821 () Bool)

(declare-fun tp!679284 () Bool)

(assert (=> b!2177821 (= e!1392494 tp!679284)))

(declare-fun b!2177822 () Bool)

(assert (=> b!2177822 (= e!1392501 (not e!1392491))))

(declare-fun res!936818 () Bool)

(assert (=> b!2177822 (=> res!936818 e!1392491)))

(assert (=> b!2177822 (= res!936818 e!1392506)))

(declare-fun res!936814 () Bool)

(assert (=> b!2177822 (=> (not res!936814) (not e!1392506))))

(assert (=> b!2177822 (= res!936814 (not lt!812650))))

(assert (=> b!2177822 (= lt!812650 (matchZipper!149 z!4055 lt!812637))))

(declare-fun e!1392504 () Bool)

(assert (=> b!2177822 e!1392504))

(declare-fun res!936816 () Bool)

(assert (=> b!2177822 (=> res!936816 e!1392504)))

(declare-fun lt!812652 () tuple2!25012)

(assert (=> b!2177822 (= res!936816 (isEmpty!14487 (_1!14876 lt!812652)))))

(declare-fun findLongestMatchInner!658 (Regex!6033 List!25312 Int List!25312 List!25312 Int) tuple2!25012)

(assert (=> b!2177822 (= lt!812652 (findLongestMatchInner!658 r!12534 Nil!25228 (size!19713 Nil!25228) lt!812642 lt!812642 (size!19713 lt!812642)))))

(declare-fun lt!812633 () Unit!38319)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!631 (Regex!6033 List!25312) Unit!38319)

(assert (=> b!2177822 (= lt!812633 (longestMatchIsAcceptedByMatchOrIsEmpty!631 r!12534 lt!812642))))

(assert (=> b!2177822 e!1392503))

(declare-fun res!936812 () Bool)

(assert (=> b!2177822 (=> res!936812 e!1392503)))

(assert (=> b!2177822 (= res!936812 (<= lt!812654 0))))

(declare-fun furthestNullablePosition!215 ((InoxSet Context!3206) Int BalanceConc!16100 Int Int) Int)

(assert (=> b!2177822 (= lt!812654 (+ 1 (- (furthestNullablePosition!215 z!4055 lt!812636 totalInput!977 lt!812643 lt!812649) lt!812636)))))

(declare-fun lt!812647 () Unit!38319)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!56 ((InoxSet Context!3206) Int BalanceConc!16100 Int) Unit!38319)

(assert (=> b!2177822 (= lt!812647 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!56 z!4055 lt!812636 totalInput!977 lt!812649))))

(assert (=> b!2177822 (= lt!812649 e!1392498)))

(declare-fun c!345625 () Bool)

(declare-fun nullableZipper!313 ((InoxSet Context!3206)) Bool)

(assert (=> b!2177822 (= c!345625 (nullableZipper!313 z!4055))))

(assert (=> b!2177822 (isPrefix!2149 (take!241 lt!812630 lt!812636) lt!812630)))

(declare-fun lt!812648 () Unit!38319)

(assert (=> b!2177822 (= lt!812648 (lemmaTakeIsPrefix!64 lt!812630 lt!812636))))

(assert (=> b!2177822 (isPrefix!2149 (_1!14876 lt!812640) lt!812646)))

(declare-fun lt!812644 () Unit!38319)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1432 (List!25312 List!25312) Unit!38319)

(assert (=> b!2177822 (= lt!812644 (lemmaConcatTwoListThenFirstIsPrefix!1432 (_1!14876 lt!812640) (_2!14876 lt!812640)))))

(assert (=> b!2177822 (isPrefix!2149 lt!812637 lt!812645)))

(declare-fun lt!812627 () Unit!38319)

(assert (=> b!2177822 (= lt!812627 (lemmaConcatTwoListThenFirstIsPrefix!1432 lt!812637 lt!812634))))

(declare-fun b!2177823 () Bool)

(declare-fun tp!679285 () Bool)

(assert (=> b!2177823 (= e!1392500 (and (inv!33519 (c!345627 input!5540)) tp!679285))))

(declare-fun b!2177824 () Bool)

(assert (=> b!2177824 (= e!1392504 (matchR!2782 r!12534 (_1!14876 lt!812652)))))

(declare-fun b!2177825 () Bool)

(assert (=> b!2177825 (= e!1392490 e!1392505)))

(declare-fun res!936823 () Bool)

(assert (=> b!2177825 (=> res!936823 e!1392505)))

(declare-fun lt!812651 () List!25312)

(assert (=> b!2177825 (= res!936823 (not (= lt!812651 lt!812642)))))

(assert (=> b!2177825 (= lt!812635 (take!241 lt!812651 lt!812641))))

(assert (=> b!2177825 (= lt!812651 (drop!1251 lt!812630 lt!812636))))

(assert (= (and start!211378 res!936822) b!2177815))

(assert (= (and b!2177815 res!936811) b!2177820))

(assert (= (and b!2177820 res!936813) b!2177809))

(assert (= (and b!2177809 res!936815) b!2177805))

(assert (= (and b!2177805 res!936817) b!2177822))

(assert (= (and b!2177822 c!345625) b!2177813))

(assert (= (and b!2177822 (not c!345625)) b!2177816))

(assert (= (and b!2177822 (not res!936812)) b!2177802))

(assert (= (and b!2177822 (not res!936816)) b!2177824))

(assert (= (and b!2177822 res!936814) b!2177814))

(assert (= (and b!2177822 (not res!936818)) b!2177818))

(assert (= (and b!2177818 res!936809) b!2177812))

(assert (= (and b!2177818 (not res!936821)) b!2177804))

(assert (= (and b!2177804 (not res!936819)) b!2177825))

(assert (= (and b!2177825 (not res!936823)) b!2177807))

(assert (= (and b!2177807 (not res!936810)) b!2177811))

(assert (= (and b!2177811 (not res!936820)) b!2177810))

(get-info :version)

(assert (= (and start!211378 ((_ is ElementMatch!6033) r!12534)) b!2177819))

(assert (= (and start!211378 ((_ is Concat!10335) r!12534)) b!2177803))

(assert (= (and start!211378 ((_ is Star!6033) r!12534)) b!2177821))

(assert (= (and start!211378 ((_ is Union!6033) r!12534)) b!2177808))

(assert (= start!211378 b!2177806))

(assert (= start!211378 b!2177823))

(assert (= (and start!211378 condSetEmpty!18288) setIsEmpty!18288))

(assert (= (and start!211378 (not condSetEmpty!18288)) setNonEmpty!18288))

(assert (= setNonEmpty!18288 b!2177817))

(declare-fun m!2619723 () Bool)

(assert (=> start!211378 m!2619723))

(declare-fun m!2619725 () Bool)

(assert (=> start!211378 m!2619725))

(declare-fun m!2619727 () Bool)

(assert (=> start!211378 m!2619727))

(declare-fun m!2619729 () Bool)

(assert (=> b!2177818 m!2619729))

(declare-fun m!2619731 () Bool)

(assert (=> b!2177812 m!2619731))

(declare-fun m!2619733 () Bool)

(assert (=> b!2177809 m!2619733))

(declare-fun m!2619735 () Bool)

(assert (=> b!2177809 m!2619735))

(declare-fun m!2619737 () Bool)

(assert (=> b!2177809 m!2619737))

(declare-fun m!2619739 () Bool)

(assert (=> b!2177809 m!2619739))

(declare-fun m!2619741 () Bool)

(assert (=> b!2177809 m!2619741))

(declare-fun m!2619743 () Bool)

(assert (=> b!2177809 m!2619743))

(declare-fun m!2619745 () Bool)

(assert (=> b!2177809 m!2619745))

(declare-fun m!2619747 () Bool)

(assert (=> b!2177825 m!2619747))

(declare-fun m!2619749 () Bool)

(assert (=> b!2177825 m!2619749))

(declare-fun m!2619751 () Bool)

(assert (=> b!2177815 m!2619751))

(declare-fun m!2619753 () Bool)

(assert (=> b!2177815 m!2619753))

(declare-fun m!2619755 () Bool)

(assert (=> b!2177807 m!2619755))

(declare-fun m!2619757 () Bool)

(assert (=> b!2177807 m!2619757))

(declare-fun m!2619759 () Bool)

(assert (=> b!2177807 m!2619759))

(declare-fun m!2619761 () Bool)

(assert (=> b!2177807 m!2619761))

(declare-fun m!2619763 () Bool)

(assert (=> b!2177805 m!2619763))

(declare-fun m!2619765 () Bool)

(assert (=> b!2177811 m!2619765))

(declare-fun m!2619767 () Bool)

(assert (=> b!2177823 m!2619767))

(declare-fun m!2619769 () Bool)

(assert (=> b!2177806 m!2619769))

(declare-fun m!2619771 () Bool)

(assert (=> b!2177804 m!2619771))

(declare-fun m!2619773 () Bool)

(assert (=> b!2177804 m!2619773))

(declare-fun m!2619775 () Bool)

(assert (=> b!2177804 m!2619775))

(declare-fun m!2619777 () Bool)

(assert (=> b!2177804 m!2619777))

(declare-fun m!2619779 () Bool)

(assert (=> b!2177804 m!2619779))

(declare-fun m!2619781 () Bool)

(assert (=> b!2177804 m!2619781))

(declare-fun m!2619783 () Bool)

(assert (=> b!2177820 m!2619783))

(declare-fun m!2619785 () Bool)

(assert (=> b!2177820 m!2619785))

(declare-fun m!2619787 () Bool)

(assert (=> b!2177820 m!2619787))

(assert (=> b!2177802 m!2619749))

(assert (=> b!2177802 m!2619749))

(declare-fun m!2619789 () Bool)

(assert (=> b!2177802 m!2619789))

(assert (=> b!2177802 m!2619789))

(declare-fun m!2619791 () Bool)

(assert (=> b!2177802 m!2619791))

(declare-fun m!2619793 () Bool)

(assert (=> b!2177822 m!2619793))

(declare-fun m!2619795 () Bool)

(assert (=> b!2177822 m!2619795))

(declare-fun m!2619797 () Bool)

(assert (=> b!2177822 m!2619797))

(declare-fun m!2619799 () Bool)

(assert (=> b!2177822 m!2619799))

(declare-fun m!2619801 () Bool)

(assert (=> b!2177822 m!2619801))

(declare-fun m!2619803 () Bool)

(assert (=> b!2177822 m!2619803))

(declare-fun m!2619805 () Bool)

(assert (=> b!2177822 m!2619805))

(declare-fun m!2619807 () Bool)

(assert (=> b!2177822 m!2619807))

(declare-fun m!2619809 () Bool)

(assert (=> b!2177822 m!2619809))

(declare-fun m!2619811 () Bool)

(assert (=> b!2177822 m!2619811))

(declare-fun m!2619813 () Bool)

(assert (=> b!2177822 m!2619813))

(assert (=> b!2177822 m!2619807))

(assert (=> b!2177822 m!2619793))

(declare-fun m!2619815 () Bool)

(assert (=> b!2177822 m!2619815))

(declare-fun m!2619817 () Bool)

(assert (=> b!2177822 m!2619817))

(declare-fun m!2619819 () Bool)

(assert (=> b!2177822 m!2619819))

(declare-fun m!2619821 () Bool)

(assert (=> b!2177822 m!2619821))

(declare-fun m!2619823 () Bool)

(assert (=> b!2177822 m!2619823))

(assert (=> b!2177822 m!2619799))

(declare-fun m!2619825 () Bool)

(assert (=> b!2177814 m!2619825))

(declare-fun m!2619827 () Bool)

(assert (=> b!2177824 m!2619827))

(declare-fun m!2619829 () Bool)

(assert (=> setNonEmpty!18288 m!2619829))

(check-sat (not b!2177822) (not b!2177825) (not start!211378) (not b!2177821) tp_is_empty!9673 (not b!2177817) (not b!2177802) (not b!2177814) (not b!2177811) (not b!2177805) (not b!2177806) (not setNonEmpty!18288) (not b!2177824) (not b!2177804) (not b!2177823) (not b!2177815) (not b!2177818) (not b!2177820) (not b!2177807) (not b!2177812) (not b!2177808) (not b!2177809) (not b!2177803))
(check-sat)
