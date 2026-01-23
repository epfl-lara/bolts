; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!211106 () Bool)

(assert start!211106)

(declare-fun b!2175439 () Bool)

(declare-fun e!1391172 () Bool)

(declare-fun e!1391170 () Bool)

(assert (=> b!2175439 (= e!1391172 e!1391170)))

(declare-fun res!936050 () Bool)

(assert (=> b!2175439 (=> (not res!936050) (not e!1391170))))

(declare-datatypes ((C!12208 0))(
  ( (C!12209 (val!7090 Int)) )
))
(declare-datatypes ((List!25306 0))(
  ( (Nil!25222) (Cons!25222 (h!30623 C!12208) (t!197874 List!25306)) )
))
(declare-fun lt!811666 () List!25306)

(declare-fun lt!811670 () List!25306)

(assert (=> b!2175439 (= res!936050 (= lt!811666 lt!811670))))

(declare-datatypes ((tuple2!24998 0))(
  ( (tuple2!24999 (_1!14869 List!25306) (_2!14869 List!25306)) )
))
(declare-fun lt!811654 () tuple2!24998)

(declare-fun ++!6390 (List!25306 List!25306) List!25306)

(assert (=> b!2175439 (= lt!811666 (++!6390 (_1!14869 lt!811654) (_2!14869 lt!811654)))))

(declare-fun tp!678794 () Bool)

(declare-fun e!1391180 () Bool)

(declare-datatypes ((Regex!6031 0))(
  ( (ElementMatch!6031 (c!345004 C!12208)) (Concat!10333 (regOne!12574 Regex!6031) (regTwo!12574 Regex!6031)) (EmptyExpr!6031) (Star!6031 (reg!6360 Regex!6031)) (EmptyLang!6031) (Union!6031 (regOne!12575 Regex!6031) (regTwo!12575 Regex!6031)) )
))
(declare-datatypes ((List!25307 0))(
  ( (Nil!25223) (Cons!25223 (h!30624 Regex!6031) (t!197875 List!25307)) )
))
(declare-datatypes ((Context!3202 0))(
  ( (Context!3203 (exprs!2101 List!25307)) )
))
(declare-fun setElem!18274 () Context!3202)

(declare-fun setNonEmpty!18274 () Bool)

(declare-fun setRes!18274 () Bool)

(declare-fun inv!33504 (Context!3202) Bool)

(assert (=> setNonEmpty!18274 (= setRes!18274 (and tp!678794 (inv!33504 setElem!18274) e!1391180))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3202))

(declare-fun setRest!18274 () (InoxSet Context!3202))

(assert (=> setNonEmpty!18274 (= z!4055 ((_ map or) (store ((as const (Array Context!3202 Bool)) false) setElem!18274 true) setRest!18274))))

(declare-fun b!2175440 () Bool)

(declare-fun e!1391186 () Bool)

(assert (=> b!2175440 (= e!1391170 (not e!1391186))))

(declare-fun res!936046 () Bool)

(assert (=> b!2175440 (=> res!936046 e!1391186)))

(declare-fun e!1391176 () Bool)

(assert (=> b!2175440 (= res!936046 e!1391176)))

(declare-fun res!936053 () Bool)

(assert (=> b!2175440 (=> (not res!936053) (not e!1391176))))

(declare-fun lt!811680 () Bool)

(assert (=> b!2175440 (= res!936053 (not lt!811680))))

(declare-fun lt!811676 () List!25306)

(declare-fun matchZipper!147 ((InoxSet Context!3202) List!25306) Bool)

(assert (=> b!2175440 (= lt!811680 (matchZipper!147 z!4055 lt!811676))))

(declare-fun e!1391184 () Bool)

(assert (=> b!2175440 e!1391184))

(declare-fun res!936055 () Bool)

(assert (=> b!2175440 (=> res!936055 e!1391184)))

(declare-fun lt!811660 () tuple2!24998)

(declare-fun isEmpty!14477 (List!25306) Bool)

(assert (=> b!2175440 (= res!936055 (isEmpty!14477 (_1!14869 lt!811660)))))

(declare-fun r!12534 () Regex!6031)

(declare-fun findLongestMatchInner!656 (Regex!6031 List!25306 Int List!25306 List!25306 Int) tuple2!24998)

(declare-fun size!19706 (List!25306) Int)

(assert (=> b!2175440 (= lt!811660 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))))

(declare-datatypes ((Unit!38293 0))(
  ( (Unit!38294) )
))
(declare-fun lt!811662 () Unit!38293)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!629 (Regex!6031 List!25306) Unit!38293)

(assert (=> b!2175440 (= lt!811662 (longestMatchIsAcceptedByMatchOrIsEmpty!629 r!12534 lt!811670))))

(declare-fun e!1391179 () Bool)

(assert (=> b!2175440 e!1391179))

(declare-fun res!936056 () Bool)

(assert (=> b!2175440 (=> res!936056 e!1391179)))

(declare-fun lt!811657 () Int)

(assert (=> b!2175440 (= res!936056 (<= lt!811657 0))))

(declare-datatypes ((IArray!16339 0))(
  ( (IArray!16340 (innerList!8227 List!25306)) )
))
(declare-datatypes ((Conc!8167 0))(
  ( (Node!8167 (left!19365 Conc!8167) (right!19695 Conc!8167) (csize!16564 Int) (cheight!8378 Int)) (Leaf!11950 (xs!11109 IArray!16339) (csize!16565 Int)) (Empty!8167) )
))
(declare-datatypes ((BalanceConc!16096 0))(
  ( (BalanceConc!16097 (c!345005 Conc!8167)) )
))
(declare-fun totalInput!977 () BalanceConc!16096)

(declare-fun lt!811668 () Int)

(declare-fun lt!811673 () Int)

(declare-fun lt!811663 () Int)

(declare-fun furthestNullablePosition!213 ((InoxSet Context!3202) Int BalanceConc!16096 Int Int) Int)

(assert (=> b!2175440 (= lt!811657 (+ 1 (- (furthestNullablePosition!213 z!4055 lt!811673 totalInput!977 lt!811663 lt!811668) lt!811673)))))

(declare-fun lt!811675 () Unit!38293)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!54 ((InoxSet Context!3202) Int BalanceConc!16096 Int) Unit!38293)

(assert (=> b!2175440 (= lt!811675 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!54 z!4055 lt!811673 totalInput!977 lt!811668))))

(declare-fun e!1391183 () Int)

(assert (=> b!2175440 (= lt!811668 e!1391183)))

(declare-fun c!345003 () Bool)

(declare-fun nullableZipper!311 ((InoxSet Context!3202)) Bool)

(assert (=> b!2175440 (= c!345003 (nullableZipper!311 z!4055))))

(declare-fun lt!811667 () List!25306)

(declare-fun isPrefix!2147 (List!25306 List!25306) Bool)

(declare-fun take!239 (List!25306 Int) List!25306)

(assert (=> b!2175440 (isPrefix!2147 (take!239 lt!811667 lt!811673) lt!811667)))

(declare-fun lt!811656 () Unit!38293)

(declare-fun lemmaTakeIsPrefix!62 (List!25306 Int) Unit!38293)

(assert (=> b!2175440 (= lt!811656 (lemmaTakeIsPrefix!62 lt!811667 lt!811673))))

(assert (=> b!2175440 (isPrefix!2147 (_1!14869 lt!811654) lt!811666)))

(declare-fun lt!811674 () Unit!38293)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1430 (List!25306 List!25306) Unit!38293)

(assert (=> b!2175440 (= lt!811674 (lemmaConcatTwoListThenFirstIsPrefix!1430 (_1!14869 lt!811654) (_2!14869 lt!811654)))))

(declare-fun lt!811678 () List!25306)

(assert (=> b!2175440 (isPrefix!2147 lt!811676 lt!811678)))

(declare-fun lt!811655 () Unit!38293)

(declare-fun lt!811679 () List!25306)

(assert (=> b!2175440 (= lt!811655 (lemmaConcatTwoListThenFirstIsPrefix!1430 lt!811676 lt!811679))))

(declare-fun b!2175441 () Bool)

(declare-fun e!1391178 () Bool)

(declare-fun e!1391187 () Bool)

(assert (=> b!2175441 (= e!1391178 e!1391187)))

(declare-fun res!936049 () Bool)

(assert (=> b!2175441 (=> res!936049 e!1391187)))

(declare-fun lt!811677 () Int)

(declare-fun lt!811659 () List!25306)

(assert (=> b!2175441 (= res!936049 (or (not (= lt!811659 (_1!14869 lt!811654))) (< lt!811673 0) (> lt!811673 lt!811663) (< lt!811677 0) (> lt!811677 (- lt!811663 lt!811673))))))

(declare-fun lt!811665 () List!25306)

(assert (=> b!2175441 (= lt!811665 (_1!14869 lt!811654))))

(declare-fun lt!811658 () Unit!38293)

(declare-fun lemmaIsPrefixSameLengthThenSameList!359 (List!25306 List!25306 List!25306) Unit!38293)

(assert (=> b!2175441 (= lt!811658 (lemmaIsPrefixSameLengthThenSameList!359 lt!811665 (_1!14869 lt!811654) lt!811670))))

(assert (=> b!2175441 (isPrefix!2147 lt!811659 lt!811670)))

(assert (=> b!2175441 (= lt!811659 (take!239 lt!811670 lt!811677))))

(declare-fun lt!811669 () Unit!38293)

(assert (=> b!2175441 (= lt!811669 (lemmaTakeIsPrefix!62 lt!811670 lt!811677))))

(declare-fun b!2175442 () Bool)

(declare-fun e!1391177 () Bool)

(declare-fun e!1391181 () Bool)

(assert (=> b!2175442 (= e!1391177 e!1391181)))

(declare-fun res!936057 () Bool)

(assert (=> b!2175442 (=> (not res!936057) (not e!1391181))))

(declare-fun isSuffix!698 (List!25306 List!25306) Bool)

(assert (=> b!2175442 (= res!936057 (isSuffix!698 lt!811670 lt!811667))))

(declare-fun list!9676 (BalanceConc!16096) List!25306)

(assert (=> b!2175442 (= lt!811667 (list!9676 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16096)

(assert (=> b!2175442 (= lt!811670 (list!9676 input!5540))))

(declare-fun b!2175443 () Bool)

(declare-fun e!1391174 () Bool)

(declare-fun tp_is_empty!9669 () Bool)

(assert (=> b!2175443 (= e!1391174 tp_is_empty!9669)))

(declare-fun b!2175444 () Bool)

(declare-fun e!1391169 () Bool)

(assert (=> b!2175444 (= e!1391169 (not (isEmpty!14477 (_1!14869 lt!811654))))))

(declare-fun b!2175445 () Bool)

(declare-fun e!1391175 () Bool)

(declare-fun e!1391173 () Bool)

(assert (=> b!2175445 (= e!1391175 e!1391173)))

(declare-fun res!936052 () Bool)

(assert (=> b!2175445 (=> res!936052 e!1391173)))

(declare-datatypes ((tuple2!25000 0))(
  ( (tuple2!25001 (_1!14870 BalanceConc!16096) (_2!14870 BalanceConc!16096)) )
))
(declare-fun lt!811661 () tuple2!25000)

(declare-fun size!19707 (BalanceConc!16096) Int)

(assert (=> b!2175445 (= res!936052 (<= lt!811677 (size!19707 (_1!14870 lt!811661))))))

(assert (=> b!2175445 (= lt!811677 (size!19706 (_1!14869 lt!811654)))))

(declare-fun matchR!2780 (Regex!6031 List!25306) Bool)

(assert (=> b!2175445 (= (matchR!2780 r!12534 lt!811676) lt!811680)))

(declare-fun lt!811682 () Unit!38293)

(declare-datatypes ((List!25308 0))(
  ( (Nil!25224) (Cons!25224 (h!30625 Context!3202) (t!197876 List!25308)) )
))
(declare-fun lt!811664 () List!25308)

(declare-fun theoremZipperRegexEquiv!57 ((InoxSet Context!3202) List!25308 Regex!6031 List!25306) Unit!38293)

(assert (=> b!2175445 (= lt!811682 (theoremZipperRegexEquiv!57 z!4055 lt!811664 r!12534 lt!811676))))

(declare-fun lt!811671 () Bool)

(assert (=> b!2175445 (= lt!811671 (matchZipper!147 z!4055 (_1!14869 lt!811654)))))

(declare-fun lt!811672 () Unit!38293)

(assert (=> b!2175445 (= lt!811672 (theoremZipperRegexEquiv!57 z!4055 lt!811664 r!12534 (_1!14869 lt!811654)))))

(declare-fun b!2175446 () Bool)

(assert (=> b!2175446 (= e!1391184 (matchR!2780 r!12534 (_1!14869 lt!811660)))))

(declare-fun b!2175447 () Bool)

(declare-fun e!1391185 () Bool)

(declare-fun tp!678800 () Bool)

(declare-fun inv!33505 (Conc!8167) Bool)

(assert (=> b!2175447 (= e!1391185 (and (inv!33505 (c!345005 totalInput!977)) tp!678800))))

(declare-fun b!2175448 () Bool)

(declare-fun drop!1249 (List!25306 Int) List!25306)

(assert (=> b!2175448 (= e!1391179 (matchZipper!147 z!4055 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)))))

(declare-fun b!2175449 () Bool)

(assert (=> b!2175449 (= e!1391183 (- lt!811673 1))))

(declare-fun b!2175450 () Bool)

(declare-fun e!1391182 () Bool)

(assert (=> b!2175450 (= e!1391182 e!1391177)))

(declare-fun res!936045 () Bool)

(assert (=> b!2175450 (=> (not res!936045) (not e!1391177))))

(declare-fun unfocusZipper!138 (List!25308) Regex!6031)

(assert (=> b!2175450 (= res!936045 (= (unfocusZipper!138 lt!811664) r!12534))))

(declare-fun toList!1214 ((InoxSet Context!3202)) List!25308)

(assert (=> b!2175450 (= lt!811664 (toList!1214 z!4055))))

(declare-fun b!2175451 () Bool)

(assert (=> b!2175451 (= e!1391181 e!1391172)))

(declare-fun res!936044 () Bool)

(assert (=> b!2175451 (=> (not res!936044) (not e!1391172))))

(assert (=> b!2175451 (= res!936044 (= lt!811678 lt!811670))))

(assert (=> b!2175451 (= lt!811678 (++!6390 lt!811676 lt!811679))))

(assert (=> b!2175451 (= lt!811679 (list!9676 (_2!14870 lt!811661)))))

(assert (=> b!2175451 (= lt!811676 (list!9676 (_1!14870 lt!811661)))))

(declare-fun findLongestMatch!585 (Regex!6031 List!25306) tuple2!24998)

(assert (=> b!2175451 (= lt!811654 (findLongestMatch!585 r!12534 lt!811670))))

(assert (=> b!2175451 (= lt!811673 (- lt!811663 (size!19707 input!5540)))))

(assert (=> b!2175451 (= lt!811663 (size!19707 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!80 ((InoxSet Context!3202) BalanceConc!16096 BalanceConc!16096) tuple2!25000)

(assert (=> b!2175451 (= lt!811661 (findLongestMatchZipperSequenceV3!80 z!4055 input!5540 totalInput!977))))

(declare-fun b!2175452 () Bool)

(declare-fun tp!678792 () Bool)

(assert (=> b!2175452 (= e!1391174 tp!678792)))

(declare-fun b!2175453 () Bool)

(declare-fun tp!678793 () Bool)

(declare-fun tp!678798 () Bool)

(assert (=> b!2175453 (= e!1391174 (and tp!678793 tp!678798))))

(declare-fun b!2175454 () Bool)

(declare-fun e!1391171 () Bool)

(declare-fun tp!678797 () Bool)

(assert (=> b!2175454 (= e!1391171 (and (inv!33505 (c!345005 input!5540)) tp!678797))))

(declare-fun b!2175455 () Bool)

(assert (=> b!2175455 (= e!1391186 e!1391175)))

(declare-fun res!936048 () Bool)

(assert (=> b!2175455 (=> res!936048 e!1391175)))

(assert (=> b!2175455 (= res!936048 e!1391169)))

(declare-fun res!936054 () Bool)

(assert (=> b!2175455 (=> (not res!936054) (not e!1391169))))

(assert (=> b!2175455 (= res!936054 (not lt!811671))))

(assert (=> b!2175455 (= lt!811671 (matchR!2780 r!12534 (_1!14869 lt!811654)))))

(declare-fun b!2175456 () Bool)

(declare-fun isEmpty!14478 (BalanceConc!16096) Bool)

(assert (=> b!2175456 (= e!1391176 (not (isEmpty!14478 (_1!14870 lt!811661))))))

(declare-fun b!2175457 () Bool)

(declare-fun tp!678799 () Bool)

(assert (=> b!2175457 (= e!1391180 tp!678799)))

(declare-fun b!2175458 () Bool)

(declare-fun tp!678796 () Bool)

(declare-fun tp!678795 () Bool)

(assert (=> b!2175458 (= e!1391174 (and tp!678796 tp!678795))))

(declare-fun setIsEmpty!18274 () Bool)

(assert (=> setIsEmpty!18274 setRes!18274))

(declare-fun res!936047 () Bool)

(assert (=> start!211106 (=> (not res!936047) (not e!1391182))))

(declare-fun validRegex!2307 (Regex!6031) Bool)

(assert (=> start!211106 (= res!936047 (validRegex!2307 r!12534))))

(assert (=> start!211106 e!1391182))

(assert (=> start!211106 e!1391174))

(declare-fun inv!33506 (BalanceConc!16096) Bool)

(assert (=> start!211106 (and (inv!33506 totalInput!977) e!1391185)))

(assert (=> start!211106 (and (inv!33506 input!5540) e!1391171)))

(declare-fun condSetEmpty!18274 () Bool)

(assert (=> start!211106 (= condSetEmpty!18274 (= z!4055 ((as const (Array Context!3202 Bool)) false)))))

(assert (=> start!211106 setRes!18274))

(declare-fun b!2175459 () Bool)

(assert (=> b!2175459 (= e!1391173 e!1391178)))

(declare-fun res!936051 () Bool)

(assert (=> b!2175459 (=> res!936051 e!1391178)))

(declare-fun lt!811681 () List!25306)

(assert (=> b!2175459 (= res!936051 (not (= lt!811681 lt!811670)))))

(assert (=> b!2175459 (= lt!811665 (take!239 lt!811681 lt!811677))))

(assert (=> b!2175459 (= lt!811681 (drop!1249 lt!811667 lt!811673))))

(declare-fun b!2175460 () Bool)

(assert (=> b!2175460 (= e!1391183 (- 1))))

(declare-fun b!2175461 () Bool)

(assert (=> b!2175461 (= e!1391187 (matchZipper!147 z!4055 lt!811665))))

(assert (= (and start!211106 res!936047) b!2175450))

(assert (= (and b!2175450 res!936045) b!2175442))

(assert (= (and b!2175442 res!936057) b!2175451))

(assert (= (and b!2175451 res!936044) b!2175439))

(assert (= (and b!2175439 res!936050) b!2175440))

(assert (= (and b!2175440 c!345003) b!2175449))

(assert (= (and b!2175440 (not c!345003)) b!2175460))

(assert (= (and b!2175440 (not res!936056)) b!2175448))

(assert (= (and b!2175440 (not res!936055)) b!2175446))

(assert (= (and b!2175440 res!936053) b!2175456))

(assert (= (and b!2175440 (not res!936046)) b!2175455))

(assert (= (and b!2175455 res!936054) b!2175444))

(assert (= (and b!2175455 (not res!936048)) b!2175445))

(assert (= (and b!2175445 (not res!936052)) b!2175459))

(assert (= (and b!2175459 (not res!936051)) b!2175441))

(assert (= (and b!2175441 (not res!936049)) b!2175461))

(get-info :version)

(assert (= (and start!211106 ((_ is ElementMatch!6031) r!12534)) b!2175443))

(assert (= (and start!211106 ((_ is Concat!10333) r!12534)) b!2175453))

(assert (= (and start!211106 ((_ is Star!6031) r!12534)) b!2175452))

(assert (= (and start!211106 ((_ is Union!6031) r!12534)) b!2175458))

(assert (= start!211106 b!2175447))

(assert (= start!211106 b!2175454))

(assert (= (and start!211106 condSetEmpty!18274) setIsEmpty!18274))

(assert (= (and start!211106 (not condSetEmpty!18274)) setNonEmpty!18274))

(assert (= setNonEmpty!18274 b!2175457))

(declare-fun m!2617019 () Bool)

(assert (=> b!2175454 m!2617019))

(declare-fun m!2617021 () Bool)

(assert (=> b!2175451 m!2617021))

(declare-fun m!2617023 () Bool)

(assert (=> b!2175451 m!2617023))

(declare-fun m!2617025 () Bool)

(assert (=> b!2175451 m!2617025))

(declare-fun m!2617027 () Bool)

(assert (=> b!2175451 m!2617027))

(declare-fun m!2617029 () Bool)

(assert (=> b!2175451 m!2617029))

(declare-fun m!2617031 () Bool)

(assert (=> b!2175451 m!2617031))

(declare-fun m!2617033 () Bool)

(assert (=> b!2175451 m!2617033))

(declare-fun m!2617035 () Bool)

(assert (=> b!2175442 m!2617035))

(declare-fun m!2617037 () Bool)

(assert (=> b!2175442 m!2617037))

(declare-fun m!2617039 () Bool)

(assert (=> b!2175442 m!2617039))

(declare-fun m!2617041 () Bool)

(assert (=> b!2175444 m!2617041))

(declare-fun m!2617043 () Bool)

(assert (=> b!2175440 m!2617043))

(declare-fun m!2617045 () Bool)

(assert (=> b!2175440 m!2617045))

(declare-fun m!2617047 () Bool)

(assert (=> b!2175440 m!2617047))

(declare-fun m!2617049 () Bool)

(assert (=> b!2175440 m!2617049))

(declare-fun m!2617051 () Bool)

(assert (=> b!2175440 m!2617051))

(declare-fun m!2617053 () Bool)

(assert (=> b!2175440 m!2617053))

(declare-fun m!2617055 () Bool)

(assert (=> b!2175440 m!2617055))

(declare-fun m!2617057 () Bool)

(assert (=> b!2175440 m!2617057))

(declare-fun m!2617059 () Bool)

(assert (=> b!2175440 m!2617059))

(declare-fun m!2617061 () Bool)

(assert (=> b!2175440 m!2617061))

(assert (=> b!2175440 m!2617047))

(declare-fun m!2617063 () Bool)

(assert (=> b!2175440 m!2617063))

(declare-fun m!2617065 () Bool)

(assert (=> b!2175440 m!2617065))

(declare-fun m!2617067 () Bool)

(assert (=> b!2175440 m!2617067))

(assert (=> b!2175440 m!2617061))

(assert (=> b!2175440 m!2617055))

(declare-fun m!2617069 () Bool)

(assert (=> b!2175440 m!2617069))

(declare-fun m!2617071 () Bool)

(assert (=> b!2175440 m!2617071))

(declare-fun m!2617073 () Bool)

(assert (=> b!2175440 m!2617073))

(declare-fun m!2617075 () Bool)

(assert (=> b!2175439 m!2617075))

(declare-fun m!2617077 () Bool)

(assert (=> b!2175455 m!2617077))

(declare-fun m!2617079 () Bool)

(assert (=> b!2175448 m!2617079))

(assert (=> b!2175448 m!2617079))

(declare-fun m!2617081 () Bool)

(assert (=> b!2175448 m!2617081))

(assert (=> b!2175448 m!2617081))

(declare-fun m!2617083 () Bool)

(assert (=> b!2175448 m!2617083))

(declare-fun m!2617085 () Bool)

(assert (=> b!2175456 m!2617085))

(declare-fun m!2617087 () Bool)

(assert (=> b!2175450 m!2617087))

(declare-fun m!2617089 () Bool)

(assert (=> b!2175450 m!2617089))

(declare-fun m!2617091 () Bool)

(assert (=> start!211106 m!2617091))

(declare-fun m!2617093 () Bool)

(assert (=> start!211106 m!2617093))

(declare-fun m!2617095 () Bool)

(assert (=> start!211106 m!2617095))

(declare-fun m!2617097 () Bool)

(assert (=> b!2175441 m!2617097))

(declare-fun m!2617099 () Bool)

(assert (=> b!2175441 m!2617099))

(declare-fun m!2617101 () Bool)

(assert (=> b!2175441 m!2617101))

(declare-fun m!2617103 () Bool)

(assert (=> b!2175441 m!2617103))

(declare-fun m!2617105 () Bool)

(assert (=> b!2175447 m!2617105))

(declare-fun m!2617107 () Bool)

(assert (=> b!2175461 m!2617107))

(declare-fun m!2617109 () Bool)

(assert (=> b!2175445 m!2617109))

(declare-fun m!2617111 () Bool)

(assert (=> b!2175445 m!2617111))

(declare-fun m!2617113 () Bool)

(assert (=> b!2175445 m!2617113))

(declare-fun m!2617115 () Bool)

(assert (=> b!2175445 m!2617115))

(declare-fun m!2617117 () Bool)

(assert (=> b!2175445 m!2617117))

(declare-fun m!2617119 () Bool)

(assert (=> b!2175445 m!2617119))

(declare-fun m!2617121 () Bool)

(assert (=> b!2175459 m!2617121))

(assert (=> b!2175459 m!2617079))

(declare-fun m!2617123 () Bool)

(assert (=> b!2175446 m!2617123))

(declare-fun m!2617125 () Bool)

(assert (=> setNonEmpty!18274 m!2617125))

(check-sat tp_is_empty!9669 (not b!2175456) (not setNonEmpty!18274) (not b!2175450) (not b!2175448) (not b!2175445) (not b!2175457) (not b!2175453) (not b!2175452) (not b!2175441) (not start!211106) (not b!2175451) (not b!2175455) (not b!2175458) (not b!2175439) (not b!2175446) (not b!2175442) (not b!2175461) (not b!2175447) (not b!2175454) (not b!2175440) (not b!2175444) (not b!2175459))
(check-sat)
(get-model)

(declare-fun d!651063 () Bool)

(declare-fun lt!811687 () Bool)

(assert (=> d!651063 (= lt!811687 (isEmpty!14477 (list!9676 (_1!14870 lt!811661))))))

(declare-fun isEmpty!14479 (Conc!8167) Bool)

(assert (=> d!651063 (= lt!811687 (isEmpty!14479 (c!345005 (_1!14870 lt!811661))))))

(assert (=> d!651063 (= (isEmpty!14478 (_1!14870 lt!811661)) lt!811687)))

(declare-fun bs!447115 () Bool)

(assert (= bs!447115 d!651063))

(assert (=> bs!447115 m!2617029))

(assert (=> bs!447115 m!2617029))

(declare-fun m!2617137 () Bool)

(assert (=> bs!447115 m!2617137))

(declare-fun m!2617139 () Bool)

(assert (=> bs!447115 m!2617139))

(assert (=> b!2175456 d!651063))

(declare-fun b!2175549 () Bool)

(declare-fun e!1391240 () Bool)

(declare-fun head!4658 (List!25306) C!12208)

(assert (=> b!2175549 (= e!1391240 (not (= (head!4658 (_1!14869 lt!811660)) (c!345004 r!12534))))))

(declare-fun b!2175550 () Bool)

(declare-fun e!1391237 () Bool)

(declare-fun e!1391239 () Bool)

(assert (=> b!2175550 (= e!1391237 e!1391239)))

(declare-fun c!345039 () Bool)

(assert (=> b!2175550 (= c!345039 ((_ is EmptyLang!6031) r!12534))))

(declare-fun b!2175552 () Bool)

(declare-fun lt!811700 () Bool)

(assert (=> b!2175552 (= e!1391239 (not lt!811700))))

(declare-fun b!2175553 () Bool)

(declare-fun e!1391238 () Bool)

(assert (=> b!2175553 (= e!1391238 (= (head!4658 (_1!14869 lt!811660)) (c!345004 r!12534)))))

(declare-fun bm!130601 () Bool)

(declare-fun call!130606 () Bool)

(assert (=> bm!130601 (= call!130606 (isEmpty!14477 (_1!14869 lt!811660)))))

(declare-fun b!2175554 () Bool)

(declare-fun res!936083 () Bool)

(declare-fun e!1391241 () Bool)

(assert (=> b!2175554 (=> res!936083 e!1391241)))

(assert (=> b!2175554 (= res!936083 (not ((_ is ElementMatch!6031) r!12534)))))

(assert (=> b!2175554 (= e!1391239 e!1391241)))

(declare-fun b!2175555 () Bool)

(declare-fun e!1391236 () Bool)

(assert (=> b!2175555 (= e!1391241 e!1391236)))

(declare-fun res!936090 () Bool)

(assert (=> b!2175555 (=> (not res!936090) (not e!1391236))))

(assert (=> b!2175555 (= res!936090 (not lt!811700))))

(declare-fun b!2175556 () Bool)

(declare-fun res!936084 () Bool)

(assert (=> b!2175556 (=> res!936084 e!1391240)))

(declare-fun tail!3130 (List!25306) List!25306)

(assert (=> b!2175556 (= res!936084 (not (isEmpty!14477 (tail!3130 (_1!14869 lt!811660)))))))

(declare-fun b!2175557 () Bool)

(declare-fun e!1391242 () Bool)

(declare-fun derivativeStep!1448 (Regex!6031 C!12208) Regex!6031)

(assert (=> b!2175557 (= e!1391242 (matchR!2780 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660))) (tail!3130 (_1!14869 lt!811660))))))

(declare-fun b!2175558 () Bool)

(declare-fun res!936085 () Bool)

(assert (=> b!2175558 (=> (not res!936085) (not e!1391238))))

(assert (=> b!2175558 (= res!936085 (not call!130606))))

(declare-fun d!651067 () Bool)

(assert (=> d!651067 e!1391237))

(declare-fun c!345037 () Bool)

(assert (=> d!651067 (= c!345037 ((_ is EmptyExpr!6031) r!12534))))

(assert (=> d!651067 (= lt!811700 e!1391242)))

(declare-fun c!345038 () Bool)

(assert (=> d!651067 (= c!345038 (isEmpty!14477 (_1!14869 lt!811660)))))

(assert (=> d!651067 (validRegex!2307 r!12534)))

(assert (=> d!651067 (= (matchR!2780 r!12534 (_1!14869 lt!811660)) lt!811700)))

(declare-fun b!2175551 () Bool)

(declare-fun res!936086 () Bool)

(assert (=> b!2175551 (=> (not res!936086) (not e!1391238))))

(assert (=> b!2175551 (= res!936086 (isEmpty!14477 (tail!3130 (_1!14869 lt!811660))))))

(declare-fun b!2175559 () Bool)

(declare-fun res!936088 () Bool)

(assert (=> b!2175559 (=> res!936088 e!1391241)))

(assert (=> b!2175559 (= res!936088 e!1391238)))

(declare-fun res!936087 () Bool)

(assert (=> b!2175559 (=> (not res!936087) (not e!1391238))))

(assert (=> b!2175559 (= res!936087 lt!811700)))

(declare-fun b!2175560 () Bool)

(declare-fun nullable!1705 (Regex!6031) Bool)

(assert (=> b!2175560 (= e!1391242 (nullable!1705 r!12534))))

(declare-fun b!2175561 () Bool)

(assert (=> b!2175561 (= e!1391237 (= lt!811700 call!130606))))

(declare-fun b!2175562 () Bool)

(assert (=> b!2175562 (= e!1391236 e!1391240)))

(declare-fun res!936089 () Bool)

(assert (=> b!2175562 (=> res!936089 e!1391240)))

(assert (=> b!2175562 (= res!936089 call!130606)))

(assert (= (and d!651067 c!345038) b!2175560))

(assert (= (and d!651067 (not c!345038)) b!2175557))

(assert (= (and d!651067 c!345037) b!2175561))

(assert (= (and d!651067 (not c!345037)) b!2175550))

(assert (= (and b!2175550 c!345039) b!2175552))

(assert (= (and b!2175550 (not c!345039)) b!2175554))

(assert (= (and b!2175554 (not res!936083)) b!2175559))

(assert (= (and b!2175559 res!936087) b!2175558))

(assert (= (and b!2175558 res!936085) b!2175551))

(assert (= (and b!2175551 res!936086) b!2175553))

(assert (= (and b!2175559 (not res!936088)) b!2175555))

(assert (= (and b!2175555 res!936090) b!2175562))

(assert (= (and b!2175562 (not res!936089)) b!2175556))

(assert (= (and b!2175556 (not res!936084)) b!2175549))

(assert (= (or b!2175561 b!2175562 b!2175558) bm!130601))

(declare-fun m!2617183 () Bool)

(assert (=> b!2175556 m!2617183))

(assert (=> b!2175556 m!2617183))

(declare-fun m!2617185 () Bool)

(assert (=> b!2175556 m!2617185))

(assert (=> bm!130601 m!2617071))

(declare-fun m!2617187 () Bool)

(assert (=> b!2175553 m!2617187))

(assert (=> b!2175557 m!2617187))

(assert (=> b!2175557 m!2617187))

(declare-fun m!2617189 () Bool)

(assert (=> b!2175557 m!2617189))

(assert (=> b!2175557 m!2617183))

(assert (=> b!2175557 m!2617189))

(assert (=> b!2175557 m!2617183))

(declare-fun m!2617191 () Bool)

(assert (=> b!2175557 m!2617191))

(declare-fun m!2617193 () Bool)

(assert (=> b!2175560 m!2617193))

(assert (=> b!2175549 m!2617187))

(assert (=> b!2175551 m!2617183))

(assert (=> b!2175551 m!2617183))

(assert (=> b!2175551 m!2617185))

(assert (=> d!651067 m!2617071))

(assert (=> d!651067 m!2617091))

(assert (=> b!2175446 d!651067))

(declare-fun b!2175563 () Bool)

(declare-fun e!1391247 () Bool)

(assert (=> b!2175563 (= e!1391247 (not (= (head!4658 (_1!14869 lt!811654)) (c!345004 r!12534))))))

(declare-fun b!2175564 () Bool)

(declare-fun e!1391244 () Bool)

(declare-fun e!1391246 () Bool)

(assert (=> b!2175564 (= e!1391244 e!1391246)))

(declare-fun c!345042 () Bool)

(assert (=> b!2175564 (= c!345042 ((_ is EmptyLang!6031) r!12534))))

(declare-fun b!2175566 () Bool)

(declare-fun lt!811701 () Bool)

(assert (=> b!2175566 (= e!1391246 (not lt!811701))))

(declare-fun b!2175567 () Bool)

(declare-fun e!1391245 () Bool)

(assert (=> b!2175567 (= e!1391245 (= (head!4658 (_1!14869 lt!811654)) (c!345004 r!12534)))))

(declare-fun bm!130602 () Bool)

(declare-fun call!130607 () Bool)

(assert (=> bm!130602 (= call!130607 (isEmpty!14477 (_1!14869 lt!811654)))))

(declare-fun b!2175568 () Bool)

(declare-fun res!936091 () Bool)

(declare-fun e!1391248 () Bool)

(assert (=> b!2175568 (=> res!936091 e!1391248)))

(assert (=> b!2175568 (= res!936091 (not ((_ is ElementMatch!6031) r!12534)))))

(assert (=> b!2175568 (= e!1391246 e!1391248)))

(declare-fun b!2175569 () Bool)

(declare-fun e!1391243 () Bool)

(assert (=> b!2175569 (= e!1391248 e!1391243)))

(declare-fun res!936098 () Bool)

(assert (=> b!2175569 (=> (not res!936098) (not e!1391243))))

(assert (=> b!2175569 (= res!936098 (not lt!811701))))

(declare-fun b!2175570 () Bool)

(declare-fun res!936092 () Bool)

(assert (=> b!2175570 (=> res!936092 e!1391247)))

(assert (=> b!2175570 (= res!936092 (not (isEmpty!14477 (tail!3130 (_1!14869 lt!811654)))))))

(declare-fun b!2175571 () Bool)

(declare-fun e!1391249 () Bool)

(assert (=> b!2175571 (= e!1391249 (matchR!2780 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654))) (tail!3130 (_1!14869 lt!811654))))))

(declare-fun b!2175572 () Bool)

(declare-fun res!936093 () Bool)

(assert (=> b!2175572 (=> (not res!936093) (not e!1391245))))

(assert (=> b!2175572 (= res!936093 (not call!130607))))

(declare-fun d!651079 () Bool)

(assert (=> d!651079 e!1391244))

(declare-fun c!345040 () Bool)

(assert (=> d!651079 (= c!345040 ((_ is EmptyExpr!6031) r!12534))))

(assert (=> d!651079 (= lt!811701 e!1391249)))

(declare-fun c!345041 () Bool)

(assert (=> d!651079 (= c!345041 (isEmpty!14477 (_1!14869 lt!811654)))))

(assert (=> d!651079 (validRegex!2307 r!12534)))

(assert (=> d!651079 (= (matchR!2780 r!12534 (_1!14869 lt!811654)) lt!811701)))

(declare-fun b!2175565 () Bool)

(declare-fun res!936094 () Bool)

(assert (=> b!2175565 (=> (not res!936094) (not e!1391245))))

(assert (=> b!2175565 (= res!936094 (isEmpty!14477 (tail!3130 (_1!14869 lt!811654))))))

(declare-fun b!2175573 () Bool)

(declare-fun res!936096 () Bool)

(assert (=> b!2175573 (=> res!936096 e!1391248)))

(assert (=> b!2175573 (= res!936096 e!1391245)))

(declare-fun res!936095 () Bool)

(assert (=> b!2175573 (=> (not res!936095) (not e!1391245))))

(assert (=> b!2175573 (= res!936095 lt!811701)))

(declare-fun b!2175574 () Bool)

(assert (=> b!2175574 (= e!1391249 (nullable!1705 r!12534))))

(declare-fun b!2175575 () Bool)

(assert (=> b!2175575 (= e!1391244 (= lt!811701 call!130607))))

(declare-fun b!2175576 () Bool)

(assert (=> b!2175576 (= e!1391243 e!1391247)))

(declare-fun res!936097 () Bool)

(assert (=> b!2175576 (=> res!936097 e!1391247)))

(assert (=> b!2175576 (= res!936097 call!130607)))

(assert (= (and d!651079 c!345041) b!2175574))

(assert (= (and d!651079 (not c!345041)) b!2175571))

(assert (= (and d!651079 c!345040) b!2175575))

(assert (= (and d!651079 (not c!345040)) b!2175564))

(assert (= (and b!2175564 c!345042) b!2175566))

(assert (= (and b!2175564 (not c!345042)) b!2175568))

(assert (= (and b!2175568 (not res!936091)) b!2175573))

(assert (= (and b!2175573 res!936095) b!2175572))

(assert (= (and b!2175572 res!936093) b!2175565))

(assert (= (and b!2175565 res!936094) b!2175567))

(assert (= (and b!2175573 (not res!936096)) b!2175569))

(assert (= (and b!2175569 res!936098) b!2175576))

(assert (= (and b!2175576 (not res!936097)) b!2175570))

(assert (= (and b!2175570 (not res!936092)) b!2175563))

(assert (= (or b!2175575 b!2175576 b!2175572) bm!130602))

(declare-fun m!2617195 () Bool)

(assert (=> b!2175570 m!2617195))

(assert (=> b!2175570 m!2617195))

(declare-fun m!2617197 () Bool)

(assert (=> b!2175570 m!2617197))

(assert (=> bm!130602 m!2617041))

(declare-fun m!2617199 () Bool)

(assert (=> b!2175567 m!2617199))

(assert (=> b!2175571 m!2617199))

(assert (=> b!2175571 m!2617199))

(declare-fun m!2617201 () Bool)

(assert (=> b!2175571 m!2617201))

(assert (=> b!2175571 m!2617195))

(assert (=> b!2175571 m!2617201))

(assert (=> b!2175571 m!2617195))

(declare-fun m!2617203 () Bool)

(assert (=> b!2175571 m!2617203))

(assert (=> b!2175574 m!2617193))

(assert (=> b!2175563 m!2617199))

(assert (=> b!2175565 m!2617195))

(assert (=> b!2175565 m!2617195))

(assert (=> b!2175565 m!2617197))

(assert (=> d!651079 m!2617041))

(assert (=> d!651079 m!2617091))

(assert (=> b!2175455 d!651079))

(declare-fun d!651081 () Bool)

(declare-fun c!345045 () Bool)

(assert (=> d!651081 (= c!345045 ((_ is Node!8167) (c!345005 totalInput!977)))))

(declare-fun e!1391254 () Bool)

(assert (=> d!651081 (= (inv!33505 (c!345005 totalInput!977)) e!1391254)))

(declare-fun b!2175583 () Bool)

(declare-fun inv!33509 (Conc!8167) Bool)

(assert (=> b!2175583 (= e!1391254 (inv!33509 (c!345005 totalInput!977)))))

(declare-fun b!2175584 () Bool)

(declare-fun e!1391255 () Bool)

(assert (=> b!2175584 (= e!1391254 e!1391255)))

(declare-fun res!936101 () Bool)

(assert (=> b!2175584 (= res!936101 (not ((_ is Leaf!11950) (c!345005 totalInput!977))))))

(assert (=> b!2175584 (=> res!936101 e!1391255)))

(declare-fun b!2175585 () Bool)

(declare-fun inv!33510 (Conc!8167) Bool)

(assert (=> b!2175585 (= e!1391255 (inv!33510 (c!345005 totalInput!977)))))

(assert (= (and d!651081 c!345045) b!2175583))

(assert (= (and d!651081 (not c!345045)) b!2175584))

(assert (= (and b!2175584 (not res!936101)) b!2175585))

(declare-fun m!2617205 () Bool)

(assert (=> b!2175583 m!2617205))

(declare-fun m!2617207 () Bool)

(assert (=> b!2175585 m!2617207))

(assert (=> b!2175447 d!651081))

(declare-fun b!2175595 () Bool)

(declare-fun e!1391260 () List!25306)

(assert (=> b!2175595 (= e!1391260 (Cons!25222 (h!30623 (_1!14869 lt!811654)) (++!6390 (t!197874 (_1!14869 lt!811654)) (_2!14869 lt!811654))))))

(declare-fun b!2175597 () Bool)

(declare-fun e!1391261 () Bool)

(declare-fun lt!811704 () List!25306)

(assert (=> b!2175597 (= e!1391261 (or (not (= (_2!14869 lt!811654) Nil!25222)) (= lt!811704 (_1!14869 lt!811654))))))

(declare-fun d!651083 () Bool)

(assert (=> d!651083 e!1391261))

(declare-fun res!936106 () Bool)

(assert (=> d!651083 (=> (not res!936106) (not e!1391261))))

(declare-fun content!3436 (List!25306) (InoxSet C!12208))

(assert (=> d!651083 (= res!936106 (= (content!3436 lt!811704) ((_ map or) (content!3436 (_1!14869 lt!811654)) (content!3436 (_2!14869 lt!811654)))))))

(assert (=> d!651083 (= lt!811704 e!1391260)))

(declare-fun c!345048 () Bool)

(assert (=> d!651083 (= c!345048 ((_ is Nil!25222) (_1!14869 lt!811654)))))

(assert (=> d!651083 (= (++!6390 (_1!14869 lt!811654) (_2!14869 lt!811654)) lt!811704)))

(declare-fun b!2175596 () Bool)

(declare-fun res!936107 () Bool)

(assert (=> b!2175596 (=> (not res!936107) (not e!1391261))))

(assert (=> b!2175596 (= res!936107 (= (size!19706 lt!811704) (+ (size!19706 (_1!14869 lt!811654)) (size!19706 (_2!14869 lt!811654)))))))

(declare-fun b!2175594 () Bool)

(assert (=> b!2175594 (= e!1391260 (_2!14869 lt!811654))))

(assert (= (and d!651083 c!345048) b!2175594))

(assert (= (and d!651083 (not c!345048)) b!2175595))

(assert (= (and d!651083 res!936106) b!2175596))

(assert (= (and b!2175596 res!936107) b!2175597))

(declare-fun m!2617209 () Bool)

(assert (=> b!2175595 m!2617209))

(declare-fun m!2617211 () Bool)

(assert (=> d!651083 m!2617211))

(declare-fun m!2617213 () Bool)

(assert (=> d!651083 m!2617213))

(declare-fun m!2617215 () Bool)

(assert (=> d!651083 m!2617215))

(declare-fun m!2617217 () Bool)

(assert (=> b!2175596 m!2617217))

(assert (=> b!2175596 m!2617115))

(declare-fun m!2617219 () Bool)

(assert (=> b!2175596 m!2617219))

(assert (=> b!2175439 d!651083))

(declare-fun c!345051 () Bool)

(declare-fun d!651085 () Bool)

(assert (=> d!651085 (= c!345051 (isEmpty!14477 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)))))

(declare-fun e!1391264 () Bool)

(assert (=> d!651085 (= (matchZipper!147 z!4055 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)) e!1391264)))

(declare-fun b!2175602 () Bool)

(assert (=> b!2175602 (= e!1391264 (nullableZipper!311 z!4055))))

(declare-fun b!2175603 () Bool)

(declare-fun derivationStepZipper!134 ((InoxSet Context!3202) C!12208) (InoxSet Context!3202))

(assert (=> b!2175603 (= e!1391264 (matchZipper!147 (derivationStepZipper!134 z!4055 (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))) (tail!3130 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))))))

(assert (= (and d!651085 c!345051) b!2175602))

(assert (= (and d!651085 (not c!345051)) b!2175603))

(assert (=> d!651085 m!2617081))

(declare-fun m!2617221 () Bool)

(assert (=> d!651085 m!2617221))

(assert (=> b!2175602 m!2617065))

(assert (=> b!2175603 m!2617081))

(declare-fun m!2617223 () Bool)

(assert (=> b!2175603 m!2617223))

(assert (=> b!2175603 m!2617223))

(declare-fun m!2617225 () Bool)

(assert (=> b!2175603 m!2617225))

(assert (=> b!2175603 m!2617081))

(declare-fun m!2617227 () Bool)

(assert (=> b!2175603 m!2617227))

(assert (=> b!2175603 m!2617225))

(assert (=> b!2175603 m!2617227))

(declare-fun m!2617229 () Bool)

(assert (=> b!2175603 m!2617229))

(assert (=> b!2175448 d!651085))

(declare-fun b!2175618 () Bool)

(declare-fun e!1391276 () Int)

(assert (=> b!2175618 (= e!1391276 0)))

(declare-fun b!2175620 () Bool)

(declare-fun e!1391273 () Bool)

(declare-fun lt!811707 () List!25306)

(assert (=> b!2175620 (= e!1391273 (= (size!19706 lt!811707) e!1391276))))

(declare-fun c!345060 () Bool)

(assert (=> b!2175620 (= c!345060 (<= lt!811657 0))))

(declare-fun b!2175621 () Bool)

(declare-fun e!1391275 () Int)

(assert (=> b!2175621 (= e!1391275 (size!19706 (drop!1249 lt!811667 lt!811673)))))

(declare-fun b!2175622 () Bool)

(declare-fun e!1391274 () List!25306)

(assert (=> b!2175622 (= e!1391274 Nil!25222)))

(declare-fun b!2175623 () Bool)

(assert (=> b!2175623 (= e!1391275 lt!811657)))

(declare-fun b!2175624 () Bool)

(assert (=> b!2175624 (= e!1391274 (Cons!25222 (h!30623 (drop!1249 lt!811667 lt!811673)) (take!239 (t!197874 (drop!1249 lt!811667 lt!811673)) (- lt!811657 1))))))

(declare-fun d!651087 () Bool)

(assert (=> d!651087 e!1391273))

(declare-fun res!936110 () Bool)

(assert (=> d!651087 (=> (not res!936110) (not e!1391273))))

(assert (=> d!651087 (= res!936110 (= ((_ map implies) (content!3436 lt!811707) (content!3436 (drop!1249 lt!811667 lt!811673))) ((as const (InoxSet C!12208)) true)))))

(assert (=> d!651087 (= lt!811707 e!1391274)))

(declare-fun c!345058 () Bool)

(assert (=> d!651087 (= c!345058 (or ((_ is Nil!25222) (drop!1249 lt!811667 lt!811673)) (<= lt!811657 0)))))

(assert (=> d!651087 (= (take!239 (drop!1249 lt!811667 lt!811673) lt!811657) lt!811707)))

(declare-fun b!2175619 () Bool)

(assert (=> b!2175619 (= e!1391276 e!1391275)))

(declare-fun c!345059 () Bool)

(assert (=> b!2175619 (= c!345059 (>= lt!811657 (size!19706 (drop!1249 lt!811667 lt!811673))))))

(assert (= (and d!651087 c!345058) b!2175622))

(assert (= (and d!651087 (not c!345058)) b!2175624))

(assert (= (and d!651087 res!936110) b!2175620))

(assert (= (and b!2175620 c!345060) b!2175618))

(assert (= (and b!2175620 (not c!345060)) b!2175619))

(assert (= (and b!2175619 c!345059) b!2175621))

(assert (= (and b!2175619 (not c!345059)) b!2175623))

(declare-fun m!2617231 () Bool)

(assert (=> d!651087 m!2617231))

(assert (=> d!651087 m!2617079))

(declare-fun m!2617233 () Bool)

(assert (=> d!651087 m!2617233))

(declare-fun m!2617235 () Bool)

(assert (=> b!2175620 m!2617235))

(assert (=> b!2175619 m!2617079))

(declare-fun m!2617237 () Bool)

(assert (=> b!2175619 m!2617237))

(assert (=> b!2175621 m!2617079))

(assert (=> b!2175621 m!2617237))

(declare-fun m!2617239 () Bool)

(assert (=> b!2175624 m!2617239))

(assert (=> b!2175448 d!651087))

(declare-fun b!2175643 () Bool)

(declare-fun e!1391291 () List!25306)

(assert (=> b!2175643 (= e!1391291 lt!811667)))

(declare-fun d!651089 () Bool)

(declare-fun e!1391290 () Bool)

(assert (=> d!651089 e!1391290))

(declare-fun res!936113 () Bool)

(assert (=> d!651089 (=> (not res!936113) (not e!1391290))))

(declare-fun lt!811710 () List!25306)

(assert (=> d!651089 (= res!936113 (= ((_ map implies) (content!3436 lt!811710) (content!3436 lt!811667)) ((as const (InoxSet C!12208)) true)))))

(declare-fun e!1391289 () List!25306)

(assert (=> d!651089 (= lt!811710 e!1391289)))

(declare-fun c!345071 () Bool)

(assert (=> d!651089 (= c!345071 ((_ is Nil!25222) lt!811667))))

(assert (=> d!651089 (= (drop!1249 lt!811667 lt!811673) lt!811710)))

(declare-fun b!2175644 () Bool)

(declare-fun e!1391287 () Int)

(declare-fun call!130610 () Int)

(assert (=> b!2175644 (= e!1391287 call!130610)))

(declare-fun b!2175645 () Bool)

(assert (=> b!2175645 (= e!1391291 (drop!1249 (t!197874 lt!811667) (- lt!811673 1)))))

(declare-fun b!2175646 () Bool)

(assert (=> b!2175646 (= e!1391290 (= (size!19706 lt!811710) e!1391287))))

(declare-fun c!345072 () Bool)

(assert (=> b!2175646 (= c!345072 (<= lt!811673 0))))

(declare-fun bm!130605 () Bool)

(assert (=> bm!130605 (= call!130610 (size!19706 lt!811667))))

(declare-fun b!2175647 () Bool)

(assert (=> b!2175647 (= e!1391289 e!1391291)))

(declare-fun c!345069 () Bool)

(assert (=> b!2175647 (= c!345069 (<= lt!811673 0))))

(declare-fun b!2175648 () Bool)

(declare-fun e!1391288 () Int)

(assert (=> b!2175648 (= e!1391288 (- call!130610 lt!811673))))

(declare-fun b!2175649 () Bool)

(assert (=> b!2175649 (= e!1391289 Nil!25222)))

(declare-fun b!2175650 () Bool)

(assert (=> b!2175650 (= e!1391288 0)))

(declare-fun b!2175651 () Bool)

(assert (=> b!2175651 (= e!1391287 e!1391288)))

(declare-fun c!345070 () Bool)

(assert (=> b!2175651 (= c!345070 (>= lt!811673 call!130610))))

(assert (= (and d!651089 c!345071) b!2175649))

(assert (= (and d!651089 (not c!345071)) b!2175647))

(assert (= (and b!2175647 c!345069) b!2175643))

(assert (= (and b!2175647 (not c!345069)) b!2175645))

(assert (= (and d!651089 res!936113) b!2175646))

(assert (= (and b!2175646 c!345072) b!2175644))

(assert (= (and b!2175646 (not c!345072)) b!2175651))

(assert (= (and b!2175651 c!345070) b!2175650))

(assert (= (and b!2175651 (not c!345070)) b!2175648))

(assert (= (or b!2175644 b!2175651 b!2175648) bm!130605))

(declare-fun m!2617241 () Bool)

(assert (=> d!651089 m!2617241))

(declare-fun m!2617243 () Bool)

(assert (=> d!651089 m!2617243))

(declare-fun m!2617245 () Bool)

(assert (=> b!2175645 m!2617245))

(declare-fun m!2617247 () Bool)

(assert (=> b!2175646 m!2617247))

(declare-fun m!2617249 () Bool)

(assert (=> bm!130605 m!2617249))

(assert (=> b!2175448 d!651089))

(declare-fun d!651091 () Bool)

(declare-fun lambda!81856 () Int)

(declare-fun forall!5177 (List!25307 Int) Bool)

(assert (=> d!651091 (= (inv!33504 setElem!18274) (forall!5177 (exprs!2101 setElem!18274) lambda!81856))))

(declare-fun bs!447124 () Bool)

(assert (= bs!447124 d!651091))

(declare-fun m!2617413 () Bool)

(assert (=> bs!447124 m!2617413))

(assert (=> setNonEmpty!18274 d!651091))

(declare-fun b!2175816 () Bool)

(declare-fun e!1391388 () Int)

(assert (=> b!2175816 (= e!1391388 0)))

(declare-fun b!2175818 () Bool)

(declare-fun e!1391385 () Bool)

(declare-fun lt!811830 () List!25306)

(assert (=> b!2175818 (= e!1391385 (= (size!19706 lt!811830) e!1391388))))

(declare-fun c!345125 () Bool)

(assert (=> b!2175818 (= c!345125 (<= lt!811677 0))))

(declare-fun b!2175819 () Bool)

(declare-fun e!1391387 () Int)

(assert (=> b!2175819 (= e!1391387 (size!19706 lt!811681))))

(declare-fun b!2175820 () Bool)

(declare-fun e!1391386 () List!25306)

(assert (=> b!2175820 (= e!1391386 Nil!25222)))

(declare-fun b!2175821 () Bool)

(assert (=> b!2175821 (= e!1391387 lt!811677)))

(declare-fun b!2175822 () Bool)

(assert (=> b!2175822 (= e!1391386 (Cons!25222 (h!30623 lt!811681) (take!239 (t!197874 lt!811681) (- lt!811677 1))))))

(declare-fun d!651135 () Bool)

(assert (=> d!651135 e!1391385))

(declare-fun res!936182 () Bool)

(assert (=> d!651135 (=> (not res!936182) (not e!1391385))))

(assert (=> d!651135 (= res!936182 (= ((_ map implies) (content!3436 lt!811830) (content!3436 lt!811681)) ((as const (InoxSet C!12208)) true)))))

(assert (=> d!651135 (= lt!811830 e!1391386)))

(declare-fun c!345123 () Bool)

(assert (=> d!651135 (= c!345123 (or ((_ is Nil!25222) lt!811681) (<= lt!811677 0)))))

(assert (=> d!651135 (= (take!239 lt!811681 lt!811677) lt!811830)))

(declare-fun b!2175817 () Bool)

(assert (=> b!2175817 (= e!1391388 e!1391387)))

(declare-fun c!345124 () Bool)

(assert (=> b!2175817 (= c!345124 (>= lt!811677 (size!19706 lt!811681)))))

(assert (= (and d!651135 c!345123) b!2175820))

(assert (= (and d!651135 (not c!345123)) b!2175822))

(assert (= (and d!651135 res!936182) b!2175818))

(assert (= (and b!2175818 c!345125) b!2175816))

(assert (= (and b!2175818 (not c!345125)) b!2175817))

(assert (= (and b!2175817 c!345124) b!2175819))

(assert (= (and b!2175817 (not c!345124)) b!2175821))

(declare-fun m!2617425 () Bool)

(assert (=> d!651135 m!2617425))

(declare-fun m!2617427 () Bool)

(assert (=> d!651135 m!2617427))

(declare-fun m!2617429 () Bool)

(assert (=> b!2175818 m!2617429))

(declare-fun m!2617431 () Bool)

(assert (=> b!2175817 m!2617431))

(assert (=> b!2175819 m!2617431))

(declare-fun m!2617433 () Bool)

(assert (=> b!2175822 m!2617433))

(assert (=> b!2175459 d!651135))

(assert (=> b!2175459 d!651089))

(declare-fun d!651141 () Bool)

(assert (=> d!651141 (= lt!811665 (_1!14869 lt!811654))))

(declare-fun lt!811833 () Unit!38293)

(declare-fun choose!12848 (List!25306 List!25306 List!25306) Unit!38293)

(assert (=> d!651141 (= lt!811833 (choose!12848 lt!811665 (_1!14869 lt!811654) lt!811670))))

(assert (=> d!651141 (isPrefix!2147 lt!811665 lt!811670)))

(assert (=> d!651141 (= (lemmaIsPrefixSameLengthThenSameList!359 lt!811665 (_1!14869 lt!811654) lt!811670) lt!811833)))

(declare-fun bs!447126 () Bool)

(assert (= bs!447126 d!651141))

(declare-fun m!2617435 () Bool)

(assert (=> bs!447126 m!2617435))

(declare-fun m!2617437 () Bool)

(assert (=> bs!447126 m!2617437))

(assert (=> b!2175441 d!651141))

(declare-fun b!2175832 () Bool)

(declare-fun res!936193 () Bool)

(declare-fun e!1391397 () Bool)

(assert (=> b!2175832 (=> (not res!936193) (not e!1391397))))

(assert (=> b!2175832 (= res!936193 (= (head!4658 lt!811659) (head!4658 lt!811670)))))

(declare-fun b!2175831 () Bool)

(declare-fun e!1391396 () Bool)

(assert (=> b!2175831 (= e!1391396 e!1391397)))

(declare-fun res!936191 () Bool)

(assert (=> b!2175831 (=> (not res!936191) (not e!1391397))))

(assert (=> b!2175831 (= res!936191 (not ((_ is Nil!25222) lt!811670)))))

(declare-fun d!651143 () Bool)

(declare-fun e!1391395 () Bool)

(assert (=> d!651143 e!1391395))

(declare-fun res!936192 () Bool)

(assert (=> d!651143 (=> res!936192 e!1391395)))

(declare-fun lt!811836 () Bool)

(assert (=> d!651143 (= res!936192 (not lt!811836))))

(assert (=> d!651143 (= lt!811836 e!1391396)))

(declare-fun res!936194 () Bool)

(assert (=> d!651143 (=> res!936194 e!1391396)))

(assert (=> d!651143 (= res!936194 ((_ is Nil!25222) lt!811659))))

(assert (=> d!651143 (= (isPrefix!2147 lt!811659 lt!811670) lt!811836)))

(declare-fun b!2175834 () Bool)

(assert (=> b!2175834 (= e!1391395 (>= (size!19706 lt!811670) (size!19706 lt!811659)))))

(declare-fun b!2175833 () Bool)

(assert (=> b!2175833 (= e!1391397 (isPrefix!2147 (tail!3130 lt!811659) (tail!3130 lt!811670)))))

(assert (= (and d!651143 (not res!936194)) b!2175831))

(assert (= (and b!2175831 res!936191) b!2175832))

(assert (= (and b!2175832 res!936193) b!2175833))

(assert (= (and d!651143 (not res!936192)) b!2175834))

(declare-fun m!2617439 () Bool)

(assert (=> b!2175832 m!2617439))

(declare-fun m!2617441 () Bool)

(assert (=> b!2175832 m!2617441))

(assert (=> b!2175834 m!2617047))

(declare-fun m!2617443 () Bool)

(assert (=> b!2175834 m!2617443))

(declare-fun m!2617445 () Bool)

(assert (=> b!2175833 m!2617445))

(declare-fun m!2617447 () Bool)

(assert (=> b!2175833 m!2617447))

(assert (=> b!2175833 m!2617445))

(assert (=> b!2175833 m!2617447))

(declare-fun m!2617449 () Bool)

(assert (=> b!2175833 m!2617449))

(assert (=> b!2175441 d!651143))

(declare-fun b!2175835 () Bool)

(declare-fun e!1391401 () Int)

(assert (=> b!2175835 (= e!1391401 0)))

(declare-fun b!2175837 () Bool)

(declare-fun e!1391398 () Bool)

(declare-fun lt!811837 () List!25306)

(assert (=> b!2175837 (= e!1391398 (= (size!19706 lt!811837) e!1391401))))

(declare-fun c!345128 () Bool)

(assert (=> b!2175837 (= c!345128 (<= lt!811677 0))))

(declare-fun b!2175838 () Bool)

(declare-fun e!1391400 () Int)

(assert (=> b!2175838 (= e!1391400 (size!19706 lt!811670))))

(declare-fun b!2175839 () Bool)

(declare-fun e!1391399 () List!25306)

(assert (=> b!2175839 (= e!1391399 Nil!25222)))

(declare-fun b!2175840 () Bool)

(assert (=> b!2175840 (= e!1391400 lt!811677)))

(declare-fun b!2175841 () Bool)

(assert (=> b!2175841 (= e!1391399 (Cons!25222 (h!30623 lt!811670) (take!239 (t!197874 lt!811670) (- lt!811677 1))))))

(declare-fun d!651145 () Bool)

(assert (=> d!651145 e!1391398))

(declare-fun res!936195 () Bool)

(assert (=> d!651145 (=> (not res!936195) (not e!1391398))))

(assert (=> d!651145 (= res!936195 (= ((_ map implies) (content!3436 lt!811837) (content!3436 lt!811670)) ((as const (InoxSet C!12208)) true)))))

(assert (=> d!651145 (= lt!811837 e!1391399)))

(declare-fun c!345126 () Bool)

(assert (=> d!651145 (= c!345126 (or ((_ is Nil!25222) lt!811670) (<= lt!811677 0)))))

(assert (=> d!651145 (= (take!239 lt!811670 lt!811677) lt!811837)))

(declare-fun b!2175836 () Bool)

(assert (=> b!2175836 (= e!1391401 e!1391400)))

(declare-fun c!345127 () Bool)

(assert (=> b!2175836 (= c!345127 (>= lt!811677 (size!19706 lt!811670)))))

(assert (= (and d!651145 c!345126) b!2175839))

(assert (= (and d!651145 (not c!345126)) b!2175841))

(assert (= (and d!651145 res!936195) b!2175837))

(assert (= (and b!2175837 c!345128) b!2175835))

(assert (= (and b!2175837 (not c!345128)) b!2175836))

(assert (= (and b!2175836 c!345127) b!2175838))

(assert (= (and b!2175836 (not c!345127)) b!2175840))

(declare-fun m!2617451 () Bool)

(assert (=> d!651145 m!2617451))

(declare-fun m!2617453 () Bool)

(assert (=> d!651145 m!2617453))

(declare-fun m!2617455 () Bool)

(assert (=> b!2175837 m!2617455))

(assert (=> b!2175836 m!2617047))

(assert (=> b!2175838 m!2617047))

(declare-fun m!2617457 () Bool)

(assert (=> b!2175841 m!2617457))

(assert (=> b!2175441 d!651145))

(declare-fun d!651147 () Bool)

(assert (=> d!651147 (isPrefix!2147 (take!239 lt!811670 lt!811677) lt!811670)))

(declare-fun lt!811840 () Unit!38293)

(declare-fun choose!12851 (List!25306 Int) Unit!38293)

(assert (=> d!651147 (= lt!811840 (choose!12851 lt!811670 lt!811677))))

(assert (=> d!651147 (>= lt!811677 0)))

(assert (=> d!651147 (= (lemmaTakeIsPrefix!62 lt!811670 lt!811677) lt!811840)))

(declare-fun bs!447127 () Bool)

(assert (= bs!447127 d!651147))

(assert (=> bs!447127 m!2617101))

(assert (=> bs!447127 m!2617101))

(declare-fun m!2617459 () Bool)

(assert (=> bs!447127 m!2617459))

(declare-fun m!2617461 () Bool)

(assert (=> bs!447127 m!2617461))

(assert (=> b!2175441 d!651147))

(declare-fun d!651149 () Bool)

(declare-fun c!345129 () Bool)

(assert (=> d!651149 (= c!345129 (isEmpty!14477 lt!811665))))

(declare-fun e!1391402 () Bool)

(assert (=> d!651149 (= (matchZipper!147 z!4055 lt!811665) e!1391402)))

(declare-fun b!2175842 () Bool)

(assert (=> b!2175842 (= e!1391402 (nullableZipper!311 z!4055))))

(declare-fun b!2175843 () Bool)

(assert (=> b!2175843 (= e!1391402 (matchZipper!147 (derivationStepZipper!134 z!4055 (head!4658 lt!811665)) (tail!3130 lt!811665)))))

(assert (= (and d!651149 c!345129) b!2175842))

(assert (= (and d!651149 (not c!345129)) b!2175843))

(declare-fun m!2617463 () Bool)

(assert (=> d!651149 m!2617463))

(assert (=> b!2175842 m!2617065))

(declare-fun m!2617465 () Bool)

(assert (=> b!2175843 m!2617465))

(assert (=> b!2175843 m!2617465))

(declare-fun m!2617467 () Bool)

(assert (=> b!2175843 m!2617467))

(declare-fun m!2617469 () Bool)

(assert (=> b!2175843 m!2617469))

(assert (=> b!2175843 m!2617467))

(assert (=> b!2175843 m!2617469))

(declare-fun m!2617471 () Bool)

(assert (=> b!2175843 m!2617471))

(assert (=> b!2175461 d!651149))

(declare-fun d!651151 () Bool)

(declare-fun lt!811843 () Regex!6031)

(assert (=> d!651151 (validRegex!2307 lt!811843)))

(declare-fun generalisedUnion!521 (List!25307) Regex!6031)

(declare-fun unfocusZipperList!45 (List!25308) List!25307)

(assert (=> d!651151 (= lt!811843 (generalisedUnion!521 (unfocusZipperList!45 lt!811664)))))

(assert (=> d!651151 (= (unfocusZipper!138 lt!811664) lt!811843)))

(declare-fun bs!447128 () Bool)

(assert (= bs!447128 d!651151))

(declare-fun m!2617473 () Bool)

(assert (=> bs!447128 m!2617473))

(declare-fun m!2617475 () Bool)

(assert (=> bs!447128 m!2617475))

(assert (=> bs!447128 m!2617475))

(declare-fun m!2617477 () Bool)

(assert (=> bs!447128 m!2617477))

(assert (=> b!2175450 d!651151))

(declare-fun d!651153 () Bool)

(declare-fun e!1391411 () Bool)

(assert (=> d!651153 e!1391411))

(declare-fun res!936200 () Bool)

(assert (=> d!651153 (=> (not res!936200) (not e!1391411))))

(declare-fun lt!811850 () List!25308)

(declare-fun noDuplicate!298 (List!25308) Bool)

(assert (=> d!651153 (= res!936200 (noDuplicate!298 lt!811850))))

(declare-fun choose!12852 ((InoxSet Context!3202)) List!25308)

(assert (=> d!651153 (= lt!811850 (choose!12852 z!4055))))

(assert (=> d!651153 (= (toList!1214 z!4055) lt!811850)))

(declare-fun b!2175856 () Bool)

(declare-fun content!3437 (List!25308) (InoxSet Context!3202))

(assert (=> b!2175856 (= e!1391411 (= (content!3437 lt!811850) z!4055))))

(assert (= (and d!651153 res!936200) b!2175856))

(declare-fun m!2617479 () Bool)

(assert (=> d!651153 m!2617479))

(declare-fun m!2617481 () Bool)

(assert (=> d!651153 m!2617481))

(declare-fun m!2617483 () Bool)

(assert (=> b!2175856 m!2617483))

(assert (=> b!2175450 d!651153))

(declare-fun lt!811867 () Int)

(declare-fun d!651155 () Bool)

(assert (=> d!651155 (and (>= lt!811867 (- 1)) (< lt!811867 lt!811663) (>= lt!811867 lt!811668) (or (= lt!811867 lt!811668) (>= lt!811867 lt!811673)))))

(declare-fun e!1391433 () Int)

(assert (=> d!651155 (= lt!811867 e!1391433)))

(declare-fun c!345141 () Bool)

(declare-fun e!1391435 () Bool)

(assert (=> d!651155 (= c!345141 e!1391435)))

(declare-fun res!936216 () Bool)

(assert (=> d!651155 (=> res!936216 e!1391435)))

(assert (=> d!651155 (= res!936216 (= lt!811673 lt!811663))))

(assert (=> d!651155 (and (>= lt!811673 0) (<= lt!811673 lt!811663))))

(assert (=> d!651155 (= (furthestNullablePosition!213 z!4055 lt!811673 totalInput!977 lt!811663 lt!811668) lt!811867)))

(declare-fun b!2175886 () Bool)

(declare-fun e!1391434 () Int)

(assert (=> b!2175886 (= e!1391434 lt!811668)))

(declare-fun b!2175887 () Bool)

(declare-fun lostCauseZipper!167 ((InoxSet Context!3202)) Bool)

(assert (=> b!2175887 (= e!1391435 (lostCauseZipper!167 z!4055))))

(declare-fun lt!811866 () (InoxSet Context!3202))

(declare-fun b!2175888 () Bool)

(assert (=> b!2175888 (= e!1391433 (furthestNullablePosition!213 lt!811866 (+ lt!811673 1) totalInput!977 lt!811663 e!1391434))))

(declare-fun apply!6076 (BalanceConc!16096 Int) C!12208)

(assert (=> b!2175888 (= lt!811866 (derivationStepZipper!134 z!4055 (apply!6076 totalInput!977 lt!811673)))))

(declare-fun c!345142 () Bool)

(assert (=> b!2175888 (= c!345142 (nullableZipper!311 lt!811866))))

(declare-fun b!2175889 () Bool)

(assert (=> b!2175889 (= e!1391434 lt!811673)))

(declare-fun b!2175890 () Bool)

(assert (=> b!2175890 (= e!1391433 lt!811668)))

(assert (= (and d!651155 (not res!936216)) b!2175887))

(assert (= (and d!651155 c!345141) b!2175890))

(assert (= (and d!651155 (not c!345141)) b!2175888))

(assert (= (and b!2175888 c!345142) b!2175889))

(assert (= (and b!2175888 (not c!345142)) b!2175886))

(declare-fun m!2617517 () Bool)

(assert (=> b!2175887 m!2617517))

(declare-fun m!2617519 () Bool)

(assert (=> b!2175888 m!2617519))

(declare-fun m!2617521 () Bool)

(assert (=> b!2175888 m!2617521))

(assert (=> b!2175888 m!2617521))

(declare-fun m!2617523 () Bool)

(assert (=> b!2175888 m!2617523))

(declare-fun m!2617525 () Bool)

(assert (=> b!2175888 m!2617525))

(assert (=> b!2175440 d!651155))

(declare-fun b!2176045 () Bool)

(declare-fun e!1391524 () tuple2!24998)

(declare-fun call!130670 () tuple2!24998)

(assert (=> b!2176045 (= e!1391524 call!130670)))

(declare-fun bm!130663 () Bool)

(declare-fun call!130669 () Bool)

(assert (=> bm!130663 (= call!130669 (isPrefix!2147 lt!811670 lt!811670))))

(declare-fun b!2176046 () Bool)

(declare-fun c!345177 () Bool)

(declare-fun call!130673 () Bool)

(assert (=> b!2176046 (= c!345177 call!130673)))

(declare-fun lt!811979 () Unit!38293)

(declare-fun lt!811992 () Unit!38293)

(assert (=> b!2176046 (= lt!811979 lt!811992)))

(assert (=> b!2176046 (= lt!811670 Nil!25222)))

(declare-fun call!130675 () Unit!38293)

(assert (=> b!2176046 (= lt!811992 call!130675)))

(declare-fun lt!812000 () Unit!38293)

(declare-fun lt!811983 () Unit!38293)

(assert (=> b!2176046 (= lt!812000 lt!811983)))

(assert (=> b!2176046 call!130669))

(declare-fun call!130671 () Unit!38293)

(assert (=> b!2176046 (= lt!811983 call!130671)))

(declare-fun e!1391522 () tuple2!24998)

(declare-fun e!1391523 () tuple2!24998)

(assert (=> b!2176046 (= e!1391522 e!1391523)))

(declare-fun call!130668 () List!25306)

(declare-fun bm!130664 () Bool)

(declare-fun lt!811997 () List!25306)

(declare-fun call!130674 () Regex!6031)

(assert (=> bm!130664 (= call!130670 (findLongestMatchInner!656 call!130674 lt!811997 (+ (size!19706 Nil!25222) 1) call!130668 lt!811670 (size!19706 lt!811670)))))

(declare-fun bm!130665 () Bool)

(declare-fun call!130672 () C!12208)

(assert (=> bm!130665 (= call!130674 (derivativeStep!1448 r!12534 call!130672))))

(declare-fun b!2176047 () Bool)

(declare-fun e!1391520 () tuple2!24998)

(declare-fun lt!811974 () tuple2!24998)

(assert (=> b!2176047 (= e!1391520 lt!811974)))

(declare-fun d!651165 () Bool)

(declare-fun e!1391521 () Bool)

(assert (=> d!651165 e!1391521))

(declare-fun res!936253 () Bool)

(assert (=> d!651165 (=> (not res!936253) (not e!1391521))))

(declare-fun lt!811990 () tuple2!24998)

(assert (=> d!651165 (= res!936253 (= (++!6390 (_1!14869 lt!811990) (_2!14869 lt!811990)) lt!811670))))

(declare-fun e!1391525 () tuple2!24998)

(assert (=> d!651165 (= lt!811990 e!1391525)))

(declare-fun c!345179 () Bool)

(declare-fun lostCause!677 (Regex!6031) Bool)

(assert (=> d!651165 (= c!345179 (lostCause!677 r!12534))))

(declare-fun lt!811984 () Unit!38293)

(declare-fun Unit!38298 () Unit!38293)

(assert (=> d!651165 (= lt!811984 Unit!38298)))

(declare-fun getSuffix!1042 (List!25306 List!25306) List!25306)

(assert (=> d!651165 (= (getSuffix!1042 lt!811670 Nil!25222) lt!811670)))

(declare-fun lt!811998 () Unit!38293)

(declare-fun lt!811981 () Unit!38293)

(assert (=> d!651165 (= lt!811998 lt!811981)))

(declare-fun lt!811975 () List!25306)

(assert (=> d!651165 (= lt!811670 lt!811975)))

(declare-fun lemmaSamePrefixThenSameSuffix!964 (List!25306 List!25306 List!25306 List!25306 List!25306) Unit!38293)

(assert (=> d!651165 (= lt!811981 (lemmaSamePrefixThenSameSuffix!964 Nil!25222 lt!811670 Nil!25222 lt!811975 lt!811670))))

(assert (=> d!651165 (= lt!811975 (getSuffix!1042 lt!811670 Nil!25222))))

(declare-fun lt!811985 () Unit!38293)

(declare-fun lt!811986 () Unit!38293)

(assert (=> d!651165 (= lt!811985 lt!811986)))

(assert (=> d!651165 (isPrefix!2147 Nil!25222 (++!6390 Nil!25222 lt!811670))))

(assert (=> d!651165 (= lt!811986 (lemmaConcatTwoListThenFirstIsPrefix!1430 Nil!25222 lt!811670))))

(assert (=> d!651165 (validRegex!2307 r!12534)))

(assert (=> d!651165 (= (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)) lt!811990)))

(declare-fun b!2176048 () Bool)

(assert (=> b!2176048 (= e!1391523 (tuple2!24999 Nil!25222 lt!811670))))

(declare-fun b!2176049 () Bool)

(declare-fun c!345180 () Bool)

(assert (=> b!2176049 (= c!345180 call!130673)))

(declare-fun lt!811977 () Unit!38293)

(declare-fun lt!811991 () Unit!38293)

(assert (=> b!2176049 (= lt!811977 lt!811991)))

(declare-fun lt!811994 () C!12208)

(declare-fun lt!811988 () List!25306)

(assert (=> b!2176049 (= (++!6390 (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222)) lt!811988) lt!811670)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!515 (List!25306 C!12208 List!25306 List!25306) Unit!38293)

(assert (=> b!2176049 (= lt!811991 (lemmaMoveElementToOtherListKeepsConcatEq!515 Nil!25222 lt!811994 lt!811988 lt!811670))))

(assert (=> b!2176049 (= lt!811988 (tail!3130 lt!811670))))

(assert (=> b!2176049 (= lt!811994 (head!4658 lt!811670))))

(declare-fun lt!811999 () Unit!38293)

(declare-fun lt!812001 () Unit!38293)

(assert (=> b!2176049 (= lt!811999 lt!812001)))

(assert (=> b!2176049 (isPrefix!2147 (++!6390 Nil!25222 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222)) lt!811670)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!387 (List!25306 List!25306) Unit!38293)

(assert (=> b!2176049 (= lt!812001 (lemmaAddHeadSuffixToPrefixStillPrefix!387 Nil!25222 lt!811670))))

(declare-fun lt!811976 () Unit!38293)

(declare-fun lt!811993 () Unit!38293)

(assert (=> b!2176049 (= lt!811976 lt!811993)))

(assert (=> b!2176049 (= lt!811993 (lemmaAddHeadSuffixToPrefixStillPrefix!387 Nil!25222 lt!811670))))

(assert (=> b!2176049 (= lt!811997 (++!6390 Nil!25222 (Cons!25222 (head!4658 lt!811670) Nil!25222)))))

(declare-fun lt!811982 () Unit!38293)

(declare-fun e!1391526 () Unit!38293)

(assert (=> b!2176049 (= lt!811982 e!1391526)))

(declare-fun c!345175 () Bool)

(assert (=> b!2176049 (= c!345175 (= (size!19706 Nil!25222) (size!19706 lt!811670)))))

(declare-fun lt!811995 () Unit!38293)

(declare-fun lt!811980 () Unit!38293)

(assert (=> b!2176049 (= lt!811995 lt!811980)))

(assert (=> b!2176049 (<= (size!19706 Nil!25222) (size!19706 lt!811670))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!190 (List!25306 List!25306) Unit!38293)

(assert (=> b!2176049 (= lt!811980 (lemmaIsPrefixThenSmallerEqSize!190 Nil!25222 lt!811670))))

(assert (=> b!2176049 (= e!1391522 e!1391524)))

(declare-fun b!2176050 () Bool)

(declare-fun e!1391519 () Bool)

(assert (=> b!2176050 (= e!1391519 (>= (size!19706 (_1!14869 lt!811990)) (size!19706 Nil!25222)))))

(declare-fun bm!130666 () Bool)

(declare-fun lemmaIsPrefixRefl!1417 (List!25306 List!25306) Unit!38293)

(assert (=> bm!130666 (= call!130671 (lemmaIsPrefixRefl!1417 lt!811670 lt!811670))))

(declare-fun b!2176051 () Bool)

(assert (=> b!2176051 (= e!1391525 (tuple2!24999 Nil!25222 lt!811670))))

(declare-fun b!2176052 () Bool)

(assert (=> b!2176052 (= e!1391521 e!1391519)))

(declare-fun res!936254 () Bool)

(assert (=> b!2176052 (=> res!936254 e!1391519)))

(assert (=> b!2176052 (= res!936254 (isEmpty!14477 (_1!14869 lt!811990)))))

(declare-fun b!2176053 () Bool)

(declare-fun Unit!38299 () Unit!38293)

(assert (=> b!2176053 (= e!1391526 Unit!38299)))

(declare-fun b!2176054 () Bool)

(assert (=> b!2176054 (= e!1391520 (tuple2!24999 Nil!25222 lt!811670))))

(declare-fun bm!130667 () Bool)

(assert (=> bm!130667 (= call!130668 (tail!3130 lt!811670))))

(declare-fun b!2176055 () Bool)

(assert (=> b!2176055 (= e!1391525 e!1391522)))

(declare-fun c!345176 () Bool)

(assert (=> b!2176055 (= c!345176 (= (size!19706 Nil!25222) (size!19706 lt!811670)))))

(declare-fun bm!130668 () Bool)

(assert (=> bm!130668 (= call!130672 (head!4658 lt!811670))))

(declare-fun b!2176056 () Bool)

(assert (=> b!2176056 (= e!1391523 (tuple2!24999 Nil!25222 Nil!25222))))

(declare-fun bm!130669 () Bool)

(assert (=> bm!130669 (= call!130673 (nullable!1705 r!12534))))

(declare-fun b!2176057 () Bool)

(assert (=> b!2176057 (= e!1391524 e!1391520)))

(assert (=> b!2176057 (= lt!811974 call!130670)))

(declare-fun c!345178 () Bool)

(assert (=> b!2176057 (= c!345178 (isEmpty!14477 (_1!14869 lt!811974)))))

(declare-fun b!2176058 () Bool)

(declare-fun Unit!38300 () Unit!38293)

(assert (=> b!2176058 (= e!1391526 Unit!38300)))

(declare-fun lt!811989 () Unit!38293)

(assert (=> b!2176058 (= lt!811989 call!130671)))

(assert (=> b!2176058 call!130669))

(declare-fun lt!811996 () Unit!38293)

(assert (=> b!2176058 (= lt!811996 lt!811989)))

(declare-fun lt!811978 () Unit!38293)

(assert (=> b!2176058 (= lt!811978 call!130675)))

(assert (=> b!2176058 (= lt!811670 Nil!25222)))

(declare-fun lt!811987 () Unit!38293)

(assert (=> b!2176058 (= lt!811987 lt!811978)))

(assert (=> b!2176058 false))

(declare-fun bm!130670 () Bool)

(assert (=> bm!130670 (= call!130675 (lemmaIsPrefixSameLengthThenSameList!359 lt!811670 Nil!25222 lt!811670))))

(assert (= (and d!651165 c!345179) b!2176051))

(assert (= (and d!651165 (not c!345179)) b!2176055))

(assert (= (and b!2176055 c!345176) b!2176046))

(assert (= (and b!2176055 (not c!345176)) b!2176049))

(assert (= (and b!2176046 c!345177) b!2176056))

(assert (= (and b!2176046 (not c!345177)) b!2176048))

(assert (= (and b!2176049 c!345175) b!2176058))

(assert (= (and b!2176049 (not c!345175)) b!2176053))

(assert (= (and b!2176049 c!345180) b!2176057))

(assert (= (and b!2176049 (not c!345180)) b!2176045))

(assert (= (and b!2176057 c!345178) b!2176054))

(assert (= (and b!2176057 (not c!345178)) b!2176047))

(assert (= (or b!2176057 b!2176045) bm!130668))

(assert (= (or b!2176057 b!2176045) bm!130667))

(assert (= (or b!2176057 b!2176045) bm!130665))

(assert (= (or b!2176057 b!2176045) bm!130664))

(assert (= (or b!2176046 b!2176058) bm!130663))

(assert (= (or b!2176046 b!2176058) bm!130666))

(assert (= (or b!2176046 b!2176058) bm!130670))

(assert (= (or b!2176046 b!2176049) bm!130669))

(assert (= (and d!651165 res!936253) b!2176052))

(assert (= (and b!2176052 (not res!936254)) b!2176050))

(assert (=> bm!130668 m!2617441))

(declare-fun m!2617647 () Bool)

(assert (=> bm!130666 m!2617647))

(declare-fun m!2617649 () Bool)

(assert (=> b!2176052 m!2617649))

(assert (=> b!2176049 m!2617061))

(declare-fun m!2617651 () Bool)

(assert (=> b!2176049 m!2617651))

(declare-fun m!2617653 () Bool)

(assert (=> b!2176049 m!2617653))

(declare-fun m!2617655 () Bool)

(assert (=> b!2176049 m!2617655))

(declare-fun m!2617657 () Bool)

(assert (=> b!2176049 m!2617657))

(assert (=> b!2176049 m!2617653))

(assert (=> b!2176049 m!2617047))

(declare-fun m!2617659 () Bool)

(assert (=> b!2176049 m!2617659))

(assert (=> b!2176049 m!2617447))

(declare-fun m!2617661 () Bool)

(assert (=> b!2176049 m!2617661))

(declare-fun m!2617663 () Bool)

(assert (=> b!2176049 m!2617663))

(assert (=> b!2176049 m!2617441))

(declare-fun m!2617665 () Bool)

(assert (=> b!2176049 m!2617665))

(assert (=> b!2176049 m!2617665))

(declare-fun m!2617667 () Bool)

(assert (=> b!2176049 m!2617667))

(assert (=> b!2176049 m!2617663))

(declare-fun m!2617669 () Bool)

(assert (=> b!2176049 m!2617669))

(declare-fun m!2617671 () Bool)

(assert (=> d!651165 m!2617671))

(declare-fun m!2617673 () Bool)

(assert (=> d!651165 m!2617673))

(declare-fun m!2617675 () Bool)

(assert (=> d!651165 m!2617675))

(declare-fun m!2617677 () Bool)

(assert (=> d!651165 m!2617677))

(assert (=> d!651165 m!2617091))

(declare-fun m!2617679 () Bool)

(assert (=> d!651165 m!2617679))

(assert (=> d!651165 m!2617671))

(declare-fun m!2617681 () Bool)

(assert (=> d!651165 m!2617681))

(assert (=> d!651165 m!2617663))

(declare-fun m!2617683 () Bool)

(assert (=> bm!130670 m!2617683))

(declare-fun m!2617685 () Bool)

(assert (=> b!2176050 m!2617685))

(assert (=> b!2176050 m!2617061))

(assert (=> bm!130669 m!2617193))

(declare-fun m!2617687 () Bool)

(assert (=> b!2176057 m!2617687))

(assert (=> bm!130667 m!2617447))

(assert (=> bm!130664 m!2617047))

(declare-fun m!2617689 () Bool)

(assert (=> bm!130664 m!2617689))

(declare-fun m!2617691 () Bool)

(assert (=> bm!130665 m!2617691))

(declare-fun m!2617693 () Bool)

(assert (=> bm!130663 m!2617693))

(assert (=> b!2175440 d!651165))

(declare-fun d!651207 () Bool)

(declare-fun lt!812004 () Int)

(assert (=> d!651207 (>= lt!812004 0)))

(declare-fun e!1391529 () Int)

(assert (=> d!651207 (= lt!812004 e!1391529)))

(declare-fun c!345183 () Bool)

(assert (=> d!651207 (= c!345183 ((_ is Nil!25222) lt!811670))))

(assert (=> d!651207 (= (size!19706 lt!811670) lt!812004)))

(declare-fun b!2176063 () Bool)

(assert (=> b!2176063 (= e!1391529 0)))

(declare-fun b!2176064 () Bool)

(assert (=> b!2176064 (= e!1391529 (+ 1 (size!19706 (t!197874 lt!811670))))))

(assert (= (and d!651207 c!345183) b!2176063))

(assert (= (and d!651207 (not c!345183)) b!2176064))

(declare-fun m!2617695 () Bool)

(assert (=> b!2176064 m!2617695))

(assert (=> b!2175440 d!651207))

(declare-fun b!2176065 () Bool)

(declare-fun e!1391533 () Int)

(assert (=> b!2176065 (= e!1391533 0)))

(declare-fun b!2176067 () Bool)

(declare-fun e!1391530 () Bool)

(declare-fun lt!812005 () List!25306)

(assert (=> b!2176067 (= e!1391530 (= (size!19706 lt!812005) e!1391533))))

(declare-fun c!345186 () Bool)

(assert (=> b!2176067 (= c!345186 (<= lt!811673 0))))

(declare-fun b!2176068 () Bool)

(declare-fun e!1391532 () Int)

(assert (=> b!2176068 (= e!1391532 (size!19706 lt!811667))))

(declare-fun b!2176069 () Bool)

(declare-fun e!1391531 () List!25306)

(assert (=> b!2176069 (= e!1391531 Nil!25222)))

(declare-fun b!2176070 () Bool)

(assert (=> b!2176070 (= e!1391532 lt!811673)))

(declare-fun b!2176071 () Bool)

(assert (=> b!2176071 (= e!1391531 (Cons!25222 (h!30623 lt!811667) (take!239 (t!197874 lt!811667) (- lt!811673 1))))))

(declare-fun d!651209 () Bool)

(assert (=> d!651209 e!1391530))

(declare-fun res!936255 () Bool)

(assert (=> d!651209 (=> (not res!936255) (not e!1391530))))

(assert (=> d!651209 (= res!936255 (= ((_ map implies) (content!3436 lt!812005) (content!3436 lt!811667)) ((as const (InoxSet C!12208)) true)))))

(assert (=> d!651209 (= lt!812005 e!1391531)))

(declare-fun c!345184 () Bool)

(assert (=> d!651209 (= c!345184 (or ((_ is Nil!25222) lt!811667) (<= lt!811673 0)))))

(assert (=> d!651209 (= (take!239 lt!811667 lt!811673) lt!812005)))

(declare-fun b!2176066 () Bool)

(assert (=> b!2176066 (= e!1391533 e!1391532)))

(declare-fun c!345185 () Bool)

(assert (=> b!2176066 (= c!345185 (>= lt!811673 (size!19706 lt!811667)))))

(assert (= (and d!651209 c!345184) b!2176069))

(assert (= (and d!651209 (not c!345184)) b!2176071))

(assert (= (and d!651209 res!936255) b!2176067))

(assert (= (and b!2176067 c!345186) b!2176065))

(assert (= (and b!2176067 (not c!345186)) b!2176066))

(assert (= (and b!2176066 c!345185) b!2176068))

(assert (= (and b!2176066 (not c!345185)) b!2176070))

(declare-fun m!2617697 () Bool)

(assert (=> d!651209 m!2617697))

(assert (=> d!651209 m!2617243))

(declare-fun m!2617699 () Bool)

(assert (=> b!2176067 m!2617699))

(assert (=> b!2176066 m!2617249))

(assert (=> b!2176068 m!2617249))

(declare-fun m!2617701 () Bool)

(assert (=> b!2176071 m!2617701))

(assert (=> b!2175440 d!651209))

(declare-fun d!651211 () Bool)

(assert (=> d!651211 (isPrefix!2147 lt!811676 (++!6390 lt!811676 lt!811679))))

(declare-fun lt!812008 () Unit!38293)

(declare-fun choose!12853 (List!25306 List!25306) Unit!38293)

(assert (=> d!651211 (= lt!812008 (choose!12853 lt!811676 lt!811679))))

(assert (=> d!651211 (= (lemmaConcatTwoListThenFirstIsPrefix!1430 lt!811676 lt!811679) lt!812008)))

(declare-fun bs!447141 () Bool)

(assert (= bs!447141 d!651211))

(assert (=> bs!447141 m!2617033))

(assert (=> bs!447141 m!2617033))

(declare-fun m!2617703 () Bool)

(assert (=> bs!447141 m!2617703))

(declare-fun m!2617705 () Bool)

(assert (=> bs!447141 m!2617705))

(assert (=> b!2175440 d!651211))

(declare-fun d!651213 () Bool)

(assert (=> d!651213 (isPrefix!2147 (take!239 lt!811667 lt!811673) lt!811667)))

(declare-fun lt!812009 () Unit!38293)

(assert (=> d!651213 (= lt!812009 (choose!12851 lt!811667 lt!811673))))

(assert (=> d!651213 (>= lt!811673 0)))

(assert (=> d!651213 (= (lemmaTakeIsPrefix!62 lt!811667 lt!811673) lt!812009)))

(declare-fun bs!447142 () Bool)

(assert (= bs!447142 d!651213))

(assert (=> bs!447142 m!2617055))

(assert (=> bs!447142 m!2617055))

(assert (=> bs!447142 m!2617057))

(declare-fun m!2617707 () Bool)

(assert (=> bs!447142 m!2617707))

(assert (=> b!2175440 d!651213))

(declare-fun b!2176073 () Bool)

(declare-fun res!936258 () Bool)

(declare-fun e!1391536 () Bool)

(assert (=> b!2176073 (=> (not res!936258) (not e!1391536))))

(assert (=> b!2176073 (= res!936258 (= (head!4658 lt!811676) (head!4658 lt!811678)))))

(declare-fun b!2176072 () Bool)

(declare-fun e!1391535 () Bool)

(assert (=> b!2176072 (= e!1391535 e!1391536)))

(declare-fun res!936256 () Bool)

(assert (=> b!2176072 (=> (not res!936256) (not e!1391536))))

(assert (=> b!2176072 (= res!936256 (not ((_ is Nil!25222) lt!811678)))))

(declare-fun d!651215 () Bool)

(declare-fun e!1391534 () Bool)

(assert (=> d!651215 e!1391534))

(declare-fun res!936257 () Bool)

(assert (=> d!651215 (=> res!936257 e!1391534)))

(declare-fun lt!812010 () Bool)

(assert (=> d!651215 (= res!936257 (not lt!812010))))

(assert (=> d!651215 (= lt!812010 e!1391535)))

(declare-fun res!936259 () Bool)

(assert (=> d!651215 (=> res!936259 e!1391535)))

(assert (=> d!651215 (= res!936259 ((_ is Nil!25222) lt!811676))))

(assert (=> d!651215 (= (isPrefix!2147 lt!811676 lt!811678) lt!812010)))

(declare-fun b!2176075 () Bool)

(assert (=> b!2176075 (= e!1391534 (>= (size!19706 lt!811678) (size!19706 lt!811676)))))

(declare-fun b!2176074 () Bool)

(assert (=> b!2176074 (= e!1391536 (isPrefix!2147 (tail!3130 lt!811676) (tail!3130 lt!811678)))))

(assert (= (and d!651215 (not res!936259)) b!2176072))

(assert (= (and b!2176072 res!936256) b!2176073))

(assert (= (and b!2176073 res!936258) b!2176074))

(assert (= (and d!651215 (not res!936257)) b!2176075))

(declare-fun m!2617709 () Bool)

(assert (=> b!2176073 m!2617709))

(declare-fun m!2617711 () Bool)

(assert (=> b!2176073 m!2617711))

(declare-fun m!2617713 () Bool)

(assert (=> b!2176075 m!2617713))

(declare-fun m!2617715 () Bool)

(assert (=> b!2176075 m!2617715))

(declare-fun m!2617717 () Bool)

(assert (=> b!2176074 m!2617717))

(declare-fun m!2617719 () Bool)

(assert (=> b!2176074 m!2617719))

(assert (=> b!2176074 m!2617717))

(assert (=> b!2176074 m!2617719))

(declare-fun m!2617721 () Bool)

(assert (=> b!2176074 m!2617721))

(assert (=> b!2175440 d!651215))

(declare-fun d!651217 () Bool)

(assert (=> d!651217 (= (isEmpty!14477 (_1!14869 lt!811660)) ((_ is Nil!25222) (_1!14869 lt!811660)))))

(assert (=> b!2175440 d!651217))

(declare-fun d!651219 () Bool)

(declare-fun lambda!81859 () Int)

(declare-fun exists!768 ((InoxSet Context!3202) Int) Bool)

(assert (=> d!651219 (= (nullableZipper!311 z!4055) (exists!768 z!4055 lambda!81859))))

(declare-fun bs!447143 () Bool)

(assert (= bs!447143 d!651219))

(declare-fun m!2617723 () Bool)

(assert (=> bs!447143 m!2617723))

(assert (=> b!2175440 d!651219))

(declare-fun b!2176077 () Bool)

(declare-fun res!936262 () Bool)

(declare-fun e!1391539 () Bool)

(assert (=> b!2176077 (=> (not res!936262) (not e!1391539))))

(assert (=> b!2176077 (= res!936262 (= (head!4658 (take!239 lt!811667 lt!811673)) (head!4658 lt!811667)))))

(declare-fun b!2176076 () Bool)

(declare-fun e!1391538 () Bool)

(assert (=> b!2176076 (= e!1391538 e!1391539)))

(declare-fun res!936260 () Bool)

(assert (=> b!2176076 (=> (not res!936260) (not e!1391539))))

(assert (=> b!2176076 (= res!936260 (not ((_ is Nil!25222) lt!811667)))))

(declare-fun d!651221 () Bool)

(declare-fun e!1391537 () Bool)

(assert (=> d!651221 e!1391537))

(declare-fun res!936261 () Bool)

(assert (=> d!651221 (=> res!936261 e!1391537)))

(declare-fun lt!812011 () Bool)

(assert (=> d!651221 (= res!936261 (not lt!812011))))

(assert (=> d!651221 (= lt!812011 e!1391538)))

(declare-fun res!936263 () Bool)

(assert (=> d!651221 (=> res!936263 e!1391538)))

(assert (=> d!651221 (= res!936263 ((_ is Nil!25222) (take!239 lt!811667 lt!811673)))))

(assert (=> d!651221 (= (isPrefix!2147 (take!239 lt!811667 lt!811673) lt!811667) lt!812011)))

(declare-fun b!2176079 () Bool)

(assert (=> b!2176079 (= e!1391537 (>= (size!19706 lt!811667) (size!19706 (take!239 lt!811667 lt!811673))))))

(declare-fun b!2176078 () Bool)

(assert (=> b!2176078 (= e!1391539 (isPrefix!2147 (tail!3130 (take!239 lt!811667 lt!811673)) (tail!3130 lt!811667)))))

(assert (= (and d!651221 (not res!936263)) b!2176076))

(assert (= (and b!2176076 res!936260) b!2176077))

(assert (= (and b!2176077 res!936262) b!2176078))

(assert (= (and d!651221 (not res!936261)) b!2176079))

(assert (=> b!2176077 m!2617055))

(declare-fun m!2617725 () Bool)

(assert (=> b!2176077 m!2617725))

(declare-fun m!2617727 () Bool)

(assert (=> b!2176077 m!2617727))

(assert (=> b!2176079 m!2617249))

(assert (=> b!2176079 m!2617055))

(declare-fun m!2617729 () Bool)

(assert (=> b!2176079 m!2617729))

(assert (=> b!2176078 m!2617055))

(declare-fun m!2617731 () Bool)

(assert (=> b!2176078 m!2617731))

(declare-fun m!2617733 () Bool)

(assert (=> b!2176078 m!2617733))

(assert (=> b!2176078 m!2617731))

(assert (=> b!2176078 m!2617733))

(declare-fun m!2617735 () Bool)

(assert (=> b!2176078 m!2617735))

(assert (=> b!2175440 d!651221))

(declare-fun d!651223 () Bool)

(declare-fun c!345189 () Bool)

(assert (=> d!651223 (= c!345189 (isEmpty!14477 lt!811676))))

(declare-fun e!1391540 () Bool)

(assert (=> d!651223 (= (matchZipper!147 z!4055 lt!811676) e!1391540)))

(declare-fun b!2176080 () Bool)

(assert (=> b!2176080 (= e!1391540 (nullableZipper!311 z!4055))))

(declare-fun b!2176081 () Bool)

(assert (=> b!2176081 (= e!1391540 (matchZipper!147 (derivationStepZipper!134 z!4055 (head!4658 lt!811676)) (tail!3130 lt!811676)))))

(assert (= (and d!651223 c!345189) b!2176080))

(assert (= (and d!651223 (not c!345189)) b!2176081))

(declare-fun m!2617737 () Bool)

(assert (=> d!651223 m!2617737))

(assert (=> b!2176080 m!2617065))

(assert (=> b!2176081 m!2617709))

(assert (=> b!2176081 m!2617709))

(declare-fun m!2617739 () Bool)

(assert (=> b!2176081 m!2617739))

(assert (=> b!2176081 m!2617717))

(assert (=> b!2176081 m!2617739))

(assert (=> b!2176081 m!2617717))

(declare-fun m!2617741 () Bool)

(assert (=> b!2176081 m!2617741))

(assert (=> b!2175440 d!651223))

(declare-fun d!651225 () Bool)

(declare-fun lt!812012 () Int)

(assert (=> d!651225 (>= lt!812012 0)))

(declare-fun e!1391541 () Int)

(assert (=> d!651225 (= lt!812012 e!1391541)))

(declare-fun c!345190 () Bool)

(assert (=> d!651225 (= c!345190 ((_ is Nil!25222) Nil!25222))))

(assert (=> d!651225 (= (size!19706 Nil!25222) lt!812012)))

(declare-fun b!2176082 () Bool)

(assert (=> b!2176082 (= e!1391541 0)))

(declare-fun b!2176083 () Bool)

(assert (=> b!2176083 (= e!1391541 (+ 1 (size!19706 (t!197874 Nil!25222))))))

(assert (= (and d!651225 c!345190) b!2176082))

(assert (= (and d!651225 (not c!345190)) b!2176083))

(declare-fun m!2617743 () Bool)

(assert (=> b!2176083 m!2617743))

(assert (=> b!2175440 d!651225))

(declare-fun d!651227 () Bool)

(assert (=> d!651227 (isPrefix!2147 (_1!14869 lt!811654) (++!6390 (_1!14869 lt!811654) (_2!14869 lt!811654)))))

(declare-fun lt!812013 () Unit!38293)

(assert (=> d!651227 (= lt!812013 (choose!12853 (_1!14869 lt!811654) (_2!14869 lt!811654)))))

(assert (=> d!651227 (= (lemmaConcatTwoListThenFirstIsPrefix!1430 (_1!14869 lt!811654) (_2!14869 lt!811654)) lt!812013)))

(declare-fun bs!447144 () Bool)

(assert (= bs!447144 d!651227))

(assert (=> bs!447144 m!2617075))

(assert (=> bs!447144 m!2617075))

(declare-fun m!2617745 () Bool)

(assert (=> bs!447144 m!2617745))

(declare-fun m!2617747 () Bool)

(assert (=> bs!447144 m!2617747))

(assert (=> b!2175440 d!651227))

(declare-fun b!2176085 () Bool)

(declare-fun res!936266 () Bool)

(declare-fun e!1391544 () Bool)

(assert (=> b!2176085 (=> (not res!936266) (not e!1391544))))

(assert (=> b!2176085 (= res!936266 (= (head!4658 (_1!14869 lt!811654)) (head!4658 lt!811666)))))

(declare-fun b!2176084 () Bool)

(declare-fun e!1391543 () Bool)

(assert (=> b!2176084 (= e!1391543 e!1391544)))

(declare-fun res!936264 () Bool)

(assert (=> b!2176084 (=> (not res!936264) (not e!1391544))))

(assert (=> b!2176084 (= res!936264 (not ((_ is Nil!25222) lt!811666)))))

(declare-fun d!651229 () Bool)

(declare-fun e!1391542 () Bool)

(assert (=> d!651229 e!1391542))

(declare-fun res!936265 () Bool)

(assert (=> d!651229 (=> res!936265 e!1391542)))

(declare-fun lt!812014 () Bool)

(assert (=> d!651229 (= res!936265 (not lt!812014))))

(assert (=> d!651229 (= lt!812014 e!1391543)))

(declare-fun res!936267 () Bool)

(assert (=> d!651229 (=> res!936267 e!1391543)))

(assert (=> d!651229 (= res!936267 ((_ is Nil!25222) (_1!14869 lt!811654)))))

(assert (=> d!651229 (= (isPrefix!2147 (_1!14869 lt!811654) lt!811666) lt!812014)))

(declare-fun b!2176087 () Bool)

(assert (=> b!2176087 (= e!1391542 (>= (size!19706 lt!811666) (size!19706 (_1!14869 lt!811654))))))

(declare-fun b!2176086 () Bool)

(assert (=> b!2176086 (= e!1391544 (isPrefix!2147 (tail!3130 (_1!14869 lt!811654)) (tail!3130 lt!811666)))))

(assert (= (and d!651229 (not res!936267)) b!2176084))

(assert (= (and b!2176084 res!936264) b!2176085))

(assert (= (and b!2176085 res!936266) b!2176086))

(assert (= (and d!651229 (not res!936265)) b!2176087))

(assert (=> b!2176085 m!2617199))

(declare-fun m!2617749 () Bool)

(assert (=> b!2176085 m!2617749))

(declare-fun m!2617751 () Bool)

(assert (=> b!2176087 m!2617751))

(assert (=> b!2176087 m!2617115))

(assert (=> b!2176086 m!2617195))

(declare-fun m!2617753 () Bool)

(assert (=> b!2176086 m!2617753))

(assert (=> b!2176086 m!2617195))

(assert (=> b!2176086 m!2617753))

(declare-fun m!2617755 () Bool)

(assert (=> b!2176086 m!2617755))

(assert (=> b!2175440 d!651229))

(declare-fun d!651231 () Bool)

(declare-fun e!1391547 () Bool)

(assert (=> d!651231 e!1391547))

(declare-fun res!936270 () Bool)

(assert (=> d!651231 (=> res!936270 e!1391547)))

(assert (=> d!651231 (= res!936270 (isEmpty!14477 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))))))

(declare-fun lt!812017 () Unit!38293)

(declare-fun choose!12854 (Regex!6031 List!25306) Unit!38293)

(assert (=> d!651231 (= lt!812017 (choose!12854 r!12534 lt!811670))))

(assert (=> d!651231 (validRegex!2307 r!12534)))

(assert (=> d!651231 (= (longestMatchIsAcceptedByMatchOrIsEmpty!629 r!12534 lt!811670) lt!812017)))

(declare-fun b!2176090 () Bool)

(assert (=> b!2176090 (= e!1391547 (matchR!2780 r!12534 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))))))

(assert (= (and d!651231 (not res!936270)) b!2176090))

(declare-fun m!2617757 () Bool)

(assert (=> d!651231 m!2617757))

(assert (=> d!651231 m!2617061))

(assert (=> d!651231 m!2617047))

(assert (=> d!651231 m!2617063))

(assert (=> d!651231 m!2617091))

(assert (=> d!651231 m!2617047))

(declare-fun m!2617759 () Bool)

(assert (=> d!651231 m!2617759))

(assert (=> d!651231 m!2617061))

(assert (=> b!2176090 m!2617061))

(assert (=> b!2176090 m!2617047))

(assert (=> b!2176090 m!2617061))

(assert (=> b!2176090 m!2617047))

(assert (=> b!2176090 m!2617063))

(declare-fun m!2617761 () Bool)

(assert (=> b!2176090 m!2617761))

(assert (=> b!2175440 d!651231))

(declare-fun d!651233 () Bool)

(declare-fun e!1391553 () Bool)

(assert (=> d!651233 e!1391553))

(declare-fun res!936276 () Bool)

(assert (=> d!651233 (=> res!936276 e!1391553)))

(declare-fun lt!812022 () Int)

(assert (=> d!651233 (= res!936276 (<= lt!812022 0))))

(assert (=> d!651233 (= lt!812022 (+ (- (furthestNullablePosition!213 z!4055 lt!811673 totalInput!977 (size!19707 totalInput!977) lt!811668) lt!811673) 1))))

(declare-fun lt!812023 () Unit!38293)

(declare-fun choose!12855 ((InoxSet Context!3202) Int BalanceConc!16096 Int) Unit!38293)

(assert (=> d!651233 (= lt!812023 (choose!12855 z!4055 lt!811673 totalInput!977 lt!811668))))

(declare-fun e!1391552 () Bool)

(assert (=> d!651233 e!1391552))

(declare-fun res!936275 () Bool)

(assert (=> d!651233 (=> (not res!936275) (not e!1391552))))

(assert (=> d!651233 (= res!936275 (>= lt!811673 0))))

(assert (=> d!651233 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!54 z!4055 lt!811673 totalInput!977 lt!811668) lt!812023)))

(declare-fun b!2176095 () Bool)

(assert (=> b!2176095 (= e!1391552 (<= lt!811673 (size!19707 totalInput!977)))))

(declare-fun b!2176096 () Bool)

(assert (=> b!2176096 (= e!1391553 (matchZipper!147 z!4055 (take!239 (drop!1249 (list!9676 totalInput!977) lt!811673) lt!812022)))))

(assert (= (and d!651233 res!936275) b!2176095))

(assert (= (and d!651233 (not res!936276)) b!2176096))

(assert (=> d!651233 m!2617023))

(assert (=> d!651233 m!2617023))

(declare-fun m!2617763 () Bool)

(assert (=> d!651233 m!2617763))

(declare-fun m!2617765 () Bool)

(assert (=> d!651233 m!2617765))

(assert (=> b!2176095 m!2617023))

(assert (=> b!2176096 m!2617037))

(assert (=> b!2176096 m!2617037))

(declare-fun m!2617767 () Bool)

(assert (=> b!2176096 m!2617767))

(assert (=> b!2176096 m!2617767))

(declare-fun m!2617769 () Bool)

(assert (=> b!2176096 m!2617769))

(assert (=> b!2176096 m!2617769))

(declare-fun m!2617771 () Bool)

(assert (=> b!2176096 m!2617771))

(assert (=> b!2175440 d!651233))

(declare-fun d!651235 () Bool)

(declare-fun e!1391556 () Bool)

(assert (=> d!651235 e!1391556))

(declare-fun res!936279 () Bool)

(assert (=> d!651235 (=> res!936279 e!1391556)))

(declare-fun lt!812026 () Bool)

(assert (=> d!651235 (= res!936279 (not lt!812026))))

(assert (=> d!651235 (= lt!812026 (= lt!811670 (drop!1249 lt!811667 (- (size!19706 lt!811667) (size!19706 lt!811670)))))))

(assert (=> d!651235 (= (isSuffix!698 lt!811670 lt!811667) lt!812026)))

(declare-fun b!2176099 () Bool)

(assert (=> b!2176099 (= e!1391556 (>= (size!19706 lt!811667) (size!19706 lt!811670)))))

(assert (= (and d!651235 (not res!936279)) b!2176099))

(assert (=> d!651235 m!2617249))

(assert (=> d!651235 m!2617047))

(declare-fun m!2617773 () Bool)

(assert (=> d!651235 m!2617773))

(assert (=> b!2176099 m!2617249))

(assert (=> b!2176099 m!2617047))

(assert (=> b!2175442 d!651235))

(declare-fun d!651237 () Bool)

(declare-fun list!9678 (Conc!8167) List!25306)

(assert (=> d!651237 (= (list!9676 totalInput!977) (list!9678 (c!345005 totalInput!977)))))

(declare-fun bs!447145 () Bool)

(assert (= bs!447145 d!651237))

(declare-fun m!2617775 () Bool)

(assert (=> bs!447145 m!2617775))

(assert (=> b!2175442 d!651237))

(declare-fun d!651239 () Bool)

(assert (=> d!651239 (= (list!9676 input!5540) (list!9678 (c!345005 input!5540)))))

(declare-fun bs!447146 () Bool)

(assert (= bs!447146 d!651239))

(declare-fun m!2617777 () Bool)

(assert (=> bs!447146 m!2617777))

(assert (=> b!2175442 d!651239))

(declare-fun d!651241 () Bool)

(assert (=> d!651241 (= (list!9676 (_1!14870 lt!811661)) (list!9678 (c!345005 (_1!14870 lt!811661))))))

(declare-fun bs!447147 () Bool)

(assert (= bs!447147 d!651241))

(declare-fun m!2617779 () Bool)

(assert (=> bs!447147 m!2617779))

(assert (=> b!2175451 d!651241))

(declare-fun d!651243 () Bool)

(declare-fun lt!812029 () Int)

(assert (=> d!651243 (= lt!812029 (size!19706 (list!9676 totalInput!977)))))

(declare-fun size!19709 (Conc!8167) Int)

(assert (=> d!651243 (= lt!812029 (size!19709 (c!345005 totalInput!977)))))

(assert (=> d!651243 (= (size!19707 totalInput!977) lt!812029)))

(declare-fun bs!447148 () Bool)

(assert (= bs!447148 d!651243))

(assert (=> bs!447148 m!2617037))

(assert (=> bs!447148 m!2617037))

(declare-fun m!2617781 () Bool)

(assert (=> bs!447148 m!2617781))

(declare-fun m!2617783 () Bool)

(assert (=> bs!447148 m!2617783))

(assert (=> b!2175451 d!651243))

(declare-fun d!651245 () Bool)

(assert (=> d!651245 (= (list!9676 (_2!14870 lt!811661)) (list!9678 (c!345005 (_2!14870 lt!811661))))))

(declare-fun bs!447149 () Bool)

(assert (= bs!447149 d!651245))

(declare-fun m!2617785 () Bool)

(assert (=> bs!447149 m!2617785))

(assert (=> b!2175451 d!651245))

(declare-fun b!2176101 () Bool)

(declare-fun e!1391557 () List!25306)

(assert (=> b!2176101 (= e!1391557 (Cons!25222 (h!30623 lt!811676) (++!6390 (t!197874 lt!811676) lt!811679)))))

(declare-fun b!2176103 () Bool)

(declare-fun lt!812030 () List!25306)

(declare-fun e!1391558 () Bool)

(assert (=> b!2176103 (= e!1391558 (or (not (= lt!811679 Nil!25222)) (= lt!812030 lt!811676)))))

(declare-fun d!651247 () Bool)

(assert (=> d!651247 e!1391558))

(declare-fun res!936280 () Bool)

(assert (=> d!651247 (=> (not res!936280) (not e!1391558))))

(assert (=> d!651247 (= res!936280 (= (content!3436 lt!812030) ((_ map or) (content!3436 lt!811676) (content!3436 lt!811679))))))

(assert (=> d!651247 (= lt!812030 e!1391557)))

(declare-fun c!345191 () Bool)

(assert (=> d!651247 (= c!345191 ((_ is Nil!25222) lt!811676))))

(assert (=> d!651247 (= (++!6390 lt!811676 lt!811679) lt!812030)))

(declare-fun b!2176102 () Bool)

(declare-fun res!936281 () Bool)

(assert (=> b!2176102 (=> (not res!936281) (not e!1391558))))

(assert (=> b!2176102 (= res!936281 (= (size!19706 lt!812030) (+ (size!19706 lt!811676) (size!19706 lt!811679))))))

(declare-fun b!2176100 () Bool)

(assert (=> b!2176100 (= e!1391557 lt!811679)))

(assert (= (and d!651247 c!345191) b!2176100))

(assert (= (and d!651247 (not c!345191)) b!2176101))

(assert (= (and d!651247 res!936280) b!2176102))

(assert (= (and b!2176102 res!936281) b!2176103))

(declare-fun m!2617787 () Bool)

(assert (=> b!2176101 m!2617787))

(declare-fun m!2617789 () Bool)

(assert (=> d!651247 m!2617789))

(declare-fun m!2617791 () Bool)

(assert (=> d!651247 m!2617791))

(declare-fun m!2617793 () Bool)

(assert (=> d!651247 m!2617793))

(declare-fun m!2617795 () Bool)

(assert (=> b!2176102 m!2617795))

(assert (=> b!2176102 m!2617715))

(declare-fun m!2617797 () Bool)

(assert (=> b!2176102 m!2617797))

(assert (=> b!2175451 d!651247))

(declare-fun d!651249 () Bool)

(declare-fun lt!812031 () Int)

(assert (=> d!651249 (= lt!812031 (size!19706 (list!9676 input!5540)))))

(assert (=> d!651249 (= lt!812031 (size!19709 (c!345005 input!5540)))))

(assert (=> d!651249 (= (size!19707 input!5540) lt!812031)))

(declare-fun bs!447150 () Bool)

(assert (= bs!447150 d!651249))

(assert (=> bs!447150 m!2617039))

(assert (=> bs!447150 m!2617039))

(declare-fun m!2617799 () Bool)

(assert (=> bs!447150 m!2617799))

(declare-fun m!2617801 () Bool)

(assert (=> bs!447150 m!2617801))

(assert (=> b!2175451 d!651249))

(declare-fun d!651251 () Bool)

(declare-fun lt!812053 () tuple2!24998)

(assert (=> d!651251 (= (++!6390 (_1!14869 lt!812053) (_2!14869 lt!812053)) lt!811670)))

(declare-fun sizeTr!122 (List!25306 Int) Int)

(assert (=> d!651251 (= lt!812053 (findLongestMatchInner!656 r!12534 Nil!25222 0 lt!811670 lt!811670 (sizeTr!122 lt!811670 0)))))

(declare-fun lt!812052 () Unit!38293)

(declare-fun lt!812048 () Unit!38293)

(assert (=> d!651251 (= lt!812052 lt!812048)))

(declare-fun lt!812051 () List!25306)

(declare-fun lt!812049 () Int)

(assert (=> d!651251 (= (sizeTr!122 lt!812051 lt!812049) (+ (size!19706 lt!812051) lt!812049))))

(declare-fun lemmaSizeTrEqualsSize!121 (List!25306 Int) Unit!38293)

(assert (=> d!651251 (= lt!812048 (lemmaSizeTrEqualsSize!121 lt!812051 lt!812049))))

(assert (=> d!651251 (= lt!812049 0)))

(assert (=> d!651251 (= lt!812051 Nil!25222)))

(declare-fun lt!812054 () Unit!38293)

(declare-fun lt!812050 () Unit!38293)

(assert (=> d!651251 (= lt!812054 lt!812050)))

(declare-fun lt!812055 () Int)

(assert (=> d!651251 (= (sizeTr!122 lt!811670 lt!812055) (+ (size!19706 lt!811670) lt!812055))))

(assert (=> d!651251 (= lt!812050 (lemmaSizeTrEqualsSize!121 lt!811670 lt!812055))))

(assert (=> d!651251 (= lt!812055 0)))

(assert (=> d!651251 (validRegex!2307 r!12534)))

(assert (=> d!651251 (= (findLongestMatch!585 r!12534 lt!811670) lt!812053)))

(declare-fun bs!447151 () Bool)

(assert (= bs!447151 d!651251))

(declare-fun m!2617803 () Bool)

(assert (=> bs!447151 m!2617803))

(declare-fun m!2617805 () Bool)

(assert (=> bs!447151 m!2617805))

(assert (=> bs!447151 m!2617047))

(declare-fun m!2617807 () Bool)

(assert (=> bs!447151 m!2617807))

(declare-fun m!2617809 () Bool)

(assert (=> bs!447151 m!2617809))

(assert (=> bs!447151 m!2617803))

(declare-fun m!2617811 () Bool)

(assert (=> bs!447151 m!2617811))

(declare-fun m!2617813 () Bool)

(assert (=> bs!447151 m!2617813))

(declare-fun m!2617815 () Bool)

(assert (=> bs!447151 m!2617815))

(assert (=> bs!447151 m!2617091))

(declare-fun m!2617817 () Bool)

(assert (=> bs!447151 m!2617817))

(assert (=> b!2175451 d!651251))

(declare-fun b!2176112 () Bool)

(declare-fun e!1391563 () tuple2!25000)

(declare-fun call!130678 () tuple2!25000)

(assert (=> b!2176112 (= e!1391563 call!130678)))

(declare-fun b!2176113 () Bool)

(declare-fun e!1391564 () Int)

(assert (=> b!2176113 (= e!1391564 (- 1))))

(declare-fun b!2176114 () Bool)

(declare-fun lt!812066 () Int)

(assert (=> b!2176114 (= e!1391564 (- lt!812066 1))))

(declare-fun d!651253 () Bool)

(declare-fun lt!812064 () tuple2!25000)

(assert (=> d!651253 (= (++!6390 (list!9676 (_1!14870 lt!812064)) (list!9676 (_2!14870 lt!812064))) (list!9676 input!5540))))

(assert (=> d!651253 (= lt!812064 e!1391563)))

(declare-fun c!345196 () Bool)

(declare-fun lt!812067 () Int)

(assert (=> d!651253 (= c!345196 (< lt!812067 0))))

(declare-fun lt!812065 () Int)

(assert (=> d!651253 (= lt!812067 (+ (- (furthestNullablePosition!213 z!4055 lt!812066 totalInput!977 lt!812065 e!1391564) lt!812066) 1))))

(declare-fun c!345197 () Bool)

(assert (=> d!651253 (= c!345197 (nullableZipper!311 z!4055))))

(assert (=> d!651253 (= lt!812066 (- lt!812065 (size!19707 input!5540)))))

(assert (=> d!651253 (= lt!812065 (size!19707 totalInput!977))))

(assert (=> d!651253 (isSuffix!698 (list!9676 input!5540) (list!9676 totalInput!977))))

(assert (=> d!651253 (= (findLongestMatchZipperSequenceV3!80 z!4055 input!5540 totalInput!977) lt!812064)))

(declare-fun b!2176115 () Bool)

(assert (=> b!2176115 (= e!1391563 call!130678)))

(declare-fun bm!130673 () Bool)

(declare-fun splitAt!45 (BalanceConc!16096 Int) tuple2!25000)

(assert (=> bm!130673 (= call!130678 (splitAt!45 input!5540 (ite c!345196 0 lt!812067)))))

(assert (= (and d!651253 c!345197) b!2176114))

(assert (= (and d!651253 (not c!345197)) b!2176113))

(assert (= (and d!651253 c!345196) b!2176112))

(assert (= (and d!651253 (not c!345196)) b!2176115))

(assert (= (or b!2176112 b!2176115) bm!130673))

(assert (=> d!651253 m!2617023))

(declare-fun m!2617819 () Bool)

(assert (=> d!651253 m!2617819))

(assert (=> d!651253 m!2617819))

(declare-fun m!2617821 () Bool)

(assert (=> d!651253 m!2617821))

(declare-fun m!2617823 () Bool)

(assert (=> d!651253 m!2617823))

(assert (=> d!651253 m!2617037))

(assert (=> d!651253 m!2617065))

(assert (=> d!651253 m!2617821))

(assert (=> d!651253 m!2617039))

(assert (=> d!651253 m!2617039))

(assert (=> d!651253 m!2617037))

(declare-fun m!2617825 () Bool)

(assert (=> d!651253 m!2617825))

(declare-fun m!2617827 () Bool)

(assert (=> d!651253 m!2617827))

(assert (=> d!651253 m!2617025))

(declare-fun m!2617829 () Bool)

(assert (=> bm!130673 m!2617829))

(assert (=> b!2175451 d!651253))

(declare-fun b!2176134 () Bool)

(declare-fun res!936293 () Bool)

(declare-fun e!1391584 () Bool)

(assert (=> b!2176134 (=> res!936293 e!1391584)))

(assert (=> b!2176134 (= res!936293 (not ((_ is Concat!10333) r!12534)))))

(declare-fun e!1391585 () Bool)

(assert (=> b!2176134 (= e!1391585 e!1391584)))

(declare-fun b!2176135 () Bool)

(declare-fun e!1391580 () Bool)

(declare-fun call!130686 () Bool)

(assert (=> b!2176135 (= e!1391580 call!130686)))

(declare-fun bm!130680 () Bool)

(declare-fun call!130687 () Bool)

(assert (=> bm!130680 (= call!130687 call!130686)))

(declare-fun c!345203 () Bool)

(declare-fun bm!130681 () Bool)

(declare-fun c!345202 () Bool)

(assert (=> bm!130681 (= call!130686 (validRegex!2307 (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))))))

(declare-fun b!2176136 () Bool)

(declare-fun e!1391583 () Bool)

(assert (=> b!2176136 (= e!1391583 e!1391580)))

(declare-fun res!936294 () Bool)

(assert (=> b!2176136 (= res!936294 (not (nullable!1705 (reg!6360 r!12534))))))

(assert (=> b!2176136 (=> (not res!936294) (not e!1391580))))

(declare-fun b!2176137 () Bool)

(assert (=> b!2176137 (= e!1391583 e!1391585)))

(assert (=> b!2176137 (= c!345203 ((_ is Union!6031) r!12534))))

(declare-fun b!2176138 () Bool)

(declare-fun e!1391582 () Bool)

(declare-fun call!130685 () Bool)

(assert (=> b!2176138 (= e!1391582 call!130685)))

(declare-fun bm!130682 () Bool)

(assert (=> bm!130682 (= call!130685 (validRegex!2307 (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))))))

(declare-fun b!2176139 () Bool)

(declare-fun e!1391581 () Bool)

(assert (=> b!2176139 (= e!1391581 e!1391583)))

(assert (=> b!2176139 (= c!345202 ((_ is Star!6031) r!12534))))

(declare-fun b!2176140 () Bool)

(declare-fun res!936296 () Bool)

(declare-fun e!1391579 () Bool)

(assert (=> b!2176140 (=> (not res!936296) (not e!1391579))))

(assert (=> b!2176140 (= res!936296 call!130685)))

(assert (=> b!2176140 (= e!1391585 e!1391579)))

(declare-fun b!2176141 () Bool)

(assert (=> b!2176141 (= e!1391579 call!130687)))

(declare-fun d!651255 () Bool)

(declare-fun res!936292 () Bool)

(assert (=> d!651255 (=> res!936292 e!1391581)))

(assert (=> d!651255 (= res!936292 ((_ is ElementMatch!6031) r!12534))))

(assert (=> d!651255 (= (validRegex!2307 r!12534) e!1391581)))

(declare-fun b!2176142 () Bool)

(assert (=> b!2176142 (= e!1391584 e!1391582)))

(declare-fun res!936295 () Bool)

(assert (=> b!2176142 (=> (not res!936295) (not e!1391582))))

(assert (=> b!2176142 (= res!936295 call!130687)))

(assert (= (and d!651255 (not res!936292)) b!2176139))

(assert (= (and b!2176139 c!345202) b!2176136))

(assert (= (and b!2176139 (not c!345202)) b!2176137))

(assert (= (and b!2176136 res!936294) b!2176135))

(assert (= (and b!2176137 c!345203) b!2176140))

(assert (= (and b!2176137 (not c!345203)) b!2176134))

(assert (= (and b!2176140 res!936296) b!2176141))

(assert (= (and b!2176134 (not res!936293)) b!2176142))

(assert (= (and b!2176142 res!936295) b!2176138))

(assert (= (or b!2176141 b!2176142) bm!130680))

(assert (= (or b!2176140 b!2176138) bm!130682))

(assert (= (or b!2176135 bm!130680) bm!130681))

(declare-fun m!2617831 () Bool)

(assert (=> bm!130681 m!2617831))

(declare-fun m!2617833 () Bool)

(assert (=> b!2176136 m!2617833))

(declare-fun m!2617835 () Bool)

(assert (=> bm!130682 m!2617835))

(assert (=> start!211106 d!651255))

(declare-fun d!651257 () Bool)

(declare-fun isBalanced!2538 (Conc!8167) Bool)

(assert (=> d!651257 (= (inv!33506 totalInput!977) (isBalanced!2538 (c!345005 totalInput!977)))))

(declare-fun bs!447152 () Bool)

(assert (= bs!447152 d!651257))

(declare-fun m!2617837 () Bool)

(assert (=> bs!447152 m!2617837))

(assert (=> start!211106 d!651257))

(declare-fun d!651259 () Bool)

(assert (=> d!651259 (= (inv!33506 input!5540) (isBalanced!2538 (c!345005 input!5540)))))

(declare-fun bs!447153 () Bool)

(assert (= bs!447153 d!651259))

(declare-fun m!2617839 () Bool)

(assert (=> bs!447153 m!2617839))

(assert (=> start!211106 d!651259))

(declare-fun b!2176143 () Bool)

(declare-fun e!1391590 () Bool)

(assert (=> b!2176143 (= e!1391590 (not (= (head!4658 lt!811676) (c!345004 r!12534))))))

(declare-fun b!2176144 () Bool)

(declare-fun e!1391587 () Bool)

(declare-fun e!1391589 () Bool)

(assert (=> b!2176144 (= e!1391587 e!1391589)))

(declare-fun c!345206 () Bool)

(assert (=> b!2176144 (= c!345206 ((_ is EmptyLang!6031) r!12534))))

(declare-fun b!2176146 () Bool)

(declare-fun lt!812068 () Bool)

(assert (=> b!2176146 (= e!1391589 (not lt!812068))))

(declare-fun b!2176147 () Bool)

(declare-fun e!1391588 () Bool)

(assert (=> b!2176147 (= e!1391588 (= (head!4658 lt!811676) (c!345004 r!12534)))))

(declare-fun bm!130683 () Bool)

(declare-fun call!130688 () Bool)

(assert (=> bm!130683 (= call!130688 (isEmpty!14477 lt!811676))))

(declare-fun b!2176148 () Bool)

(declare-fun res!936297 () Bool)

(declare-fun e!1391591 () Bool)

(assert (=> b!2176148 (=> res!936297 e!1391591)))

(assert (=> b!2176148 (= res!936297 (not ((_ is ElementMatch!6031) r!12534)))))

(assert (=> b!2176148 (= e!1391589 e!1391591)))

(declare-fun b!2176149 () Bool)

(declare-fun e!1391586 () Bool)

(assert (=> b!2176149 (= e!1391591 e!1391586)))

(declare-fun res!936304 () Bool)

(assert (=> b!2176149 (=> (not res!936304) (not e!1391586))))

(assert (=> b!2176149 (= res!936304 (not lt!812068))))

(declare-fun b!2176150 () Bool)

(declare-fun res!936298 () Bool)

(assert (=> b!2176150 (=> res!936298 e!1391590)))

(assert (=> b!2176150 (= res!936298 (not (isEmpty!14477 (tail!3130 lt!811676))))))

(declare-fun b!2176151 () Bool)

(declare-fun e!1391592 () Bool)

(assert (=> b!2176151 (= e!1391592 (matchR!2780 (derivativeStep!1448 r!12534 (head!4658 lt!811676)) (tail!3130 lt!811676)))))

(declare-fun b!2176152 () Bool)

(declare-fun res!936299 () Bool)

(assert (=> b!2176152 (=> (not res!936299) (not e!1391588))))

(assert (=> b!2176152 (= res!936299 (not call!130688))))

(declare-fun d!651261 () Bool)

(assert (=> d!651261 e!1391587))

(declare-fun c!345204 () Bool)

(assert (=> d!651261 (= c!345204 ((_ is EmptyExpr!6031) r!12534))))

(assert (=> d!651261 (= lt!812068 e!1391592)))

(declare-fun c!345205 () Bool)

(assert (=> d!651261 (= c!345205 (isEmpty!14477 lt!811676))))

(assert (=> d!651261 (validRegex!2307 r!12534)))

(assert (=> d!651261 (= (matchR!2780 r!12534 lt!811676) lt!812068)))

(declare-fun b!2176145 () Bool)

(declare-fun res!936300 () Bool)

(assert (=> b!2176145 (=> (not res!936300) (not e!1391588))))

(assert (=> b!2176145 (= res!936300 (isEmpty!14477 (tail!3130 lt!811676)))))

(declare-fun b!2176153 () Bool)

(declare-fun res!936302 () Bool)

(assert (=> b!2176153 (=> res!936302 e!1391591)))

(assert (=> b!2176153 (= res!936302 e!1391588)))

(declare-fun res!936301 () Bool)

(assert (=> b!2176153 (=> (not res!936301) (not e!1391588))))

(assert (=> b!2176153 (= res!936301 lt!812068)))

(declare-fun b!2176154 () Bool)

(assert (=> b!2176154 (= e!1391592 (nullable!1705 r!12534))))

(declare-fun b!2176155 () Bool)

(assert (=> b!2176155 (= e!1391587 (= lt!812068 call!130688))))

(declare-fun b!2176156 () Bool)

(assert (=> b!2176156 (= e!1391586 e!1391590)))

(declare-fun res!936303 () Bool)

(assert (=> b!2176156 (=> res!936303 e!1391590)))

(assert (=> b!2176156 (= res!936303 call!130688)))

(assert (= (and d!651261 c!345205) b!2176154))

(assert (= (and d!651261 (not c!345205)) b!2176151))

(assert (= (and d!651261 c!345204) b!2176155))

(assert (= (and d!651261 (not c!345204)) b!2176144))

(assert (= (and b!2176144 c!345206) b!2176146))

(assert (= (and b!2176144 (not c!345206)) b!2176148))

(assert (= (and b!2176148 (not res!936297)) b!2176153))

(assert (= (and b!2176153 res!936301) b!2176152))

(assert (= (and b!2176152 res!936299) b!2176145))

(assert (= (and b!2176145 res!936300) b!2176147))

(assert (= (and b!2176153 (not res!936302)) b!2176149))

(assert (= (and b!2176149 res!936304) b!2176156))

(assert (= (and b!2176156 (not res!936303)) b!2176150))

(assert (= (and b!2176150 (not res!936298)) b!2176143))

(assert (= (or b!2176155 b!2176156 b!2176152) bm!130683))

(assert (=> b!2176150 m!2617717))

(assert (=> b!2176150 m!2617717))

(declare-fun m!2617841 () Bool)

(assert (=> b!2176150 m!2617841))

(assert (=> bm!130683 m!2617737))

(assert (=> b!2176147 m!2617709))

(assert (=> b!2176151 m!2617709))

(assert (=> b!2176151 m!2617709))

(declare-fun m!2617843 () Bool)

(assert (=> b!2176151 m!2617843))

(assert (=> b!2176151 m!2617717))

(assert (=> b!2176151 m!2617843))

(assert (=> b!2176151 m!2617717))

(declare-fun m!2617845 () Bool)

(assert (=> b!2176151 m!2617845))

(assert (=> b!2176154 m!2617193))

(assert (=> b!2176143 m!2617709))

(assert (=> b!2176145 m!2617717))

(assert (=> b!2176145 m!2617717))

(assert (=> b!2176145 m!2617841))

(assert (=> d!651261 m!2617737))

(assert (=> d!651261 m!2617091))

(assert (=> b!2175445 d!651261))

(declare-fun d!651263 () Bool)

(declare-fun c!345207 () Bool)

(assert (=> d!651263 (= c!345207 (isEmpty!14477 (_1!14869 lt!811654)))))

(declare-fun e!1391593 () Bool)

(assert (=> d!651263 (= (matchZipper!147 z!4055 (_1!14869 lt!811654)) e!1391593)))

(declare-fun b!2176157 () Bool)

(assert (=> b!2176157 (= e!1391593 (nullableZipper!311 z!4055))))

(declare-fun b!2176158 () Bool)

(assert (=> b!2176158 (= e!1391593 (matchZipper!147 (derivationStepZipper!134 z!4055 (head!4658 (_1!14869 lt!811654))) (tail!3130 (_1!14869 lt!811654))))))

(assert (= (and d!651263 c!345207) b!2176157))

(assert (= (and d!651263 (not c!345207)) b!2176158))

(assert (=> d!651263 m!2617041))

(assert (=> b!2176157 m!2617065))

(assert (=> b!2176158 m!2617199))

(assert (=> b!2176158 m!2617199))

(declare-fun m!2617847 () Bool)

(assert (=> b!2176158 m!2617847))

(assert (=> b!2176158 m!2617195))

(assert (=> b!2176158 m!2617847))

(assert (=> b!2176158 m!2617195))

(declare-fun m!2617849 () Bool)

(assert (=> b!2176158 m!2617849))

(assert (=> b!2175445 d!651263))

(declare-fun d!651265 () Bool)

(assert (=> d!651265 (= (matchR!2780 r!12534 (_1!14869 lt!811654)) (matchZipper!147 z!4055 (_1!14869 lt!811654)))))

(declare-fun lt!812071 () Unit!38293)

(declare-fun choose!12856 ((InoxSet Context!3202) List!25308 Regex!6031 List!25306) Unit!38293)

(assert (=> d!651265 (= lt!812071 (choose!12856 z!4055 lt!811664 r!12534 (_1!14869 lt!811654)))))

(assert (=> d!651265 (validRegex!2307 r!12534)))

(assert (=> d!651265 (= (theoremZipperRegexEquiv!57 z!4055 lt!811664 r!12534 (_1!14869 lt!811654)) lt!812071)))

(declare-fun bs!447154 () Bool)

(assert (= bs!447154 d!651265))

(assert (=> bs!447154 m!2617077))

(assert (=> bs!447154 m!2617119))

(declare-fun m!2617851 () Bool)

(assert (=> bs!447154 m!2617851))

(assert (=> bs!447154 m!2617091))

(assert (=> b!2175445 d!651265))

(declare-fun d!651267 () Bool)

(assert (=> d!651267 (= (matchR!2780 r!12534 lt!811676) (matchZipper!147 z!4055 lt!811676))))

(declare-fun lt!812072 () Unit!38293)

(assert (=> d!651267 (= lt!812072 (choose!12856 z!4055 lt!811664 r!12534 lt!811676))))

(assert (=> d!651267 (validRegex!2307 r!12534)))

(assert (=> d!651267 (= (theoremZipperRegexEquiv!57 z!4055 lt!811664 r!12534 lt!811676) lt!812072)))

(declare-fun bs!447155 () Bool)

(assert (= bs!447155 d!651267))

(assert (=> bs!447155 m!2617113))

(assert (=> bs!447155 m!2617059))

(declare-fun m!2617853 () Bool)

(assert (=> bs!447155 m!2617853))

(assert (=> bs!447155 m!2617091))

(assert (=> b!2175445 d!651267))

(declare-fun d!651269 () Bool)

(declare-fun lt!812073 () Int)

(assert (=> d!651269 (>= lt!812073 0)))

(declare-fun e!1391594 () Int)

(assert (=> d!651269 (= lt!812073 e!1391594)))

(declare-fun c!345208 () Bool)

(assert (=> d!651269 (= c!345208 ((_ is Nil!25222) (_1!14869 lt!811654)))))

(assert (=> d!651269 (= (size!19706 (_1!14869 lt!811654)) lt!812073)))

(declare-fun b!2176159 () Bool)

(assert (=> b!2176159 (= e!1391594 0)))

(declare-fun b!2176160 () Bool)

(assert (=> b!2176160 (= e!1391594 (+ 1 (size!19706 (t!197874 (_1!14869 lt!811654)))))))

(assert (= (and d!651269 c!345208) b!2176159))

(assert (= (and d!651269 (not c!345208)) b!2176160))

(declare-fun m!2617855 () Bool)

(assert (=> b!2176160 m!2617855))

(assert (=> b!2175445 d!651269))

(declare-fun d!651271 () Bool)

(declare-fun lt!812074 () Int)

(assert (=> d!651271 (= lt!812074 (size!19706 (list!9676 (_1!14870 lt!811661))))))

(assert (=> d!651271 (= lt!812074 (size!19709 (c!345005 (_1!14870 lt!811661))))))

(assert (=> d!651271 (= (size!19707 (_1!14870 lt!811661)) lt!812074)))

(declare-fun bs!447156 () Bool)

(assert (= bs!447156 d!651271))

(assert (=> bs!447156 m!2617029))

(assert (=> bs!447156 m!2617029))

(declare-fun m!2617857 () Bool)

(assert (=> bs!447156 m!2617857))

(declare-fun m!2617859 () Bool)

(assert (=> bs!447156 m!2617859))

(assert (=> b!2175445 d!651271))

(declare-fun d!651273 () Bool)

(declare-fun c!345209 () Bool)

(assert (=> d!651273 (= c!345209 ((_ is Node!8167) (c!345005 input!5540)))))

(declare-fun e!1391595 () Bool)

(assert (=> d!651273 (= (inv!33505 (c!345005 input!5540)) e!1391595)))

(declare-fun b!2176161 () Bool)

(assert (=> b!2176161 (= e!1391595 (inv!33509 (c!345005 input!5540)))))

(declare-fun b!2176162 () Bool)

(declare-fun e!1391596 () Bool)

(assert (=> b!2176162 (= e!1391595 e!1391596)))

(declare-fun res!936305 () Bool)

(assert (=> b!2176162 (= res!936305 (not ((_ is Leaf!11950) (c!345005 input!5540))))))

(assert (=> b!2176162 (=> res!936305 e!1391596)))

(declare-fun b!2176163 () Bool)

(assert (=> b!2176163 (= e!1391596 (inv!33510 (c!345005 input!5540)))))

(assert (= (and d!651273 c!345209) b!2176161))

(assert (= (and d!651273 (not c!345209)) b!2176162))

(assert (= (and b!2176162 (not res!936305)) b!2176163))

(declare-fun m!2617861 () Bool)

(assert (=> b!2176161 m!2617861))

(declare-fun m!2617863 () Bool)

(assert (=> b!2176163 m!2617863))

(assert (=> b!2175454 d!651273))

(declare-fun d!651275 () Bool)

(assert (=> d!651275 (= (isEmpty!14477 (_1!14869 lt!811654)) ((_ is Nil!25222) (_1!14869 lt!811654)))))

(assert (=> b!2175444 d!651275))

(declare-fun b!2176174 () Bool)

(declare-fun e!1391599 () Bool)

(assert (=> b!2176174 (= e!1391599 tp_is_empty!9669)))

(declare-fun b!2176175 () Bool)

(declare-fun tp!678871 () Bool)

(declare-fun tp!678873 () Bool)

(assert (=> b!2176175 (= e!1391599 (and tp!678871 tp!678873))))

(assert (=> b!2175452 (= tp!678792 e!1391599)))

(declare-fun b!2176177 () Bool)

(declare-fun tp!678872 () Bool)

(declare-fun tp!678874 () Bool)

(assert (=> b!2176177 (= e!1391599 (and tp!678872 tp!678874))))

(declare-fun b!2176176 () Bool)

(declare-fun tp!678870 () Bool)

(assert (=> b!2176176 (= e!1391599 tp!678870)))

(assert (= (and b!2175452 ((_ is ElementMatch!6031) (reg!6360 r!12534))) b!2176174))

(assert (= (and b!2175452 ((_ is Concat!10333) (reg!6360 r!12534))) b!2176175))

(assert (= (and b!2175452 ((_ is Star!6031) (reg!6360 r!12534))) b!2176176))

(assert (= (and b!2175452 ((_ is Union!6031) (reg!6360 r!12534))) b!2176177))

(declare-fun b!2176182 () Bool)

(declare-fun e!1391602 () Bool)

(declare-fun tp!678879 () Bool)

(declare-fun tp!678880 () Bool)

(assert (=> b!2176182 (= e!1391602 (and tp!678879 tp!678880))))

(assert (=> b!2175457 (= tp!678799 e!1391602)))

(assert (= (and b!2175457 ((_ is Cons!25223) (exprs!2101 setElem!18274))) b!2176182))

(declare-fun tp!678889 () Bool)

(declare-fun tp!678888 () Bool)

(declare-fun e!1391608 () Bool)

(declare-fun b!2176191 () Bool)

(assert (=> b!2176191 (= e!1391608 (and (inv!33505 (left!19365 (c!345005 totalInput!977))) tp!678889 (inv!33505 (right!19695 (c!345005 totalInput!977))) tp!678888))))

(declare-fun b!2176193 () Bool)

(declare-fun e!1391607 () Bool)

(declare-fun tp!678887 () Bool)

(assert (=> b!2176193 (= e!1391607 tp!678887)))

(declare-fun b!2176192 () Bool)

(declare-fun inv!33512 (IArray!16339) Bool)

(assert (=> b!2176192 (= e!1391608 (and (inv!33512 (xs!11109 (c!345005 totalInput!977))) e!1391607))))

(assert (=> b!2175447 (= tp!678800 (and (inv!33505 (c!345005 totalInput!977)) e!1391608))))

(assert (= (and b!2175447 ((_ is Node!8167) (c!345005 totalInput!977))) b!2176191))

(assert (= b!2176192 b!2176193))

(assert (= (and b!2175447 ((_ is Leaf!11950) (c!345005 totalInput!977))) b!2176192))

(declare-fun m!2617865 () Bool)

(assert (=> b!2176191 m!2617865))

(declare-fun m!2617867 () Bool)

(assert (=> b!2176191 m!2617867))

(declare-fun m!2617869 () Bool)

(assert (=> b!2176192 m!2617869))

(assert (=> b!2175447 m!2617105))

(declare-fun b!2176194 () Bool)

(declare-fun e!1391609 () Bool)

(assert (=> b!2176194 (= e!1391609 tp_is_empty!9669)))

(declare-fun b!2176195 () Bool)

(declare-fun tp!678891 () Bool)

(declare-fun tp!678893 () Bool)

(assert (=> b!2176195 (= e!1391609 (and tp!678891 tp!678893))))

(assert (=> b!2175453 (= tp!678793 e!1391609)))

(declare-fun b!2176197 () Bool)

(declare-fun tp!678892 () Bool)

(declare-fun tp!678894 () Bool)

(assert (=> b!2176197 (= e!1391609 (and tp!678892 tp!678894))))

(declare-fun b!2176196 () Bool)

(declare-fun tp!678890 () Bool)

(assert (=> b!2176196 (= e!1391609 tp!678890)))

(assert (= (and b!2175453 ((_ is ElementMatch!6031) (regOne!12574 r!12534))) b!2176194))

(assert (= (and b!2175453 ((_ is Concat!10333) (regOne!12574 r!12534))) b!2176195))

(assert (= (and b!2175453 ((_ is Star!6031) (regOne!12574 r!12534))) b!2176196))

(assert (= (and b!2175453 ((_ is Union!6031) (regOne!12574 r!12534))) b!2176197))

(declare-fun b!2176198 () Bool)

(declare-fun e!1391610 () Bool)

(assert (=> b!2176198 (= e!1391610 tp_is_empty!9669)))

(declare-fun b!2176199 () Bool)

(declare-fun tp!678896 () Bool)

(declare-fun tp!678898 () Bool)

(assert (=> b!2176199 (= e!1391610 (and tp!678896 tp!678898))))

(assert (=> b!2175453 (= tp!678798 e!1391610)))

(declare-fun b!2176201 () Bool)

(declare-fun tp!678897 () Bool)

(declare-fun tp!678899 () Bool)

(assert (=> b!2176201 (= e!1391610 (and tp!678897 tp!678899))))

(declare-fun b!2176200 () Bool)

(declare-fun tp!678895 () Bool)

(assert (=> b!2176200 (= e!1391610 tp!678895)))

(assert (= (and b!2175453 ((_ is ElementMatch!6031) (regTwo!12574 r!12534))) b!2176198))

(assert (= (and b!2175453 ((_ is Concat!10333) (regTwo!12574 r!12534))) b!2176199))

(assert (= (and b!2175453 ((_ is Star!6031) (regTwo!12574 r!12534))) b!2176200))

(assert (= (and b!2175453 ((_ is Union!6031) (regTwo!12574 r!12534))) b!2176201))

(declare-fun b!2176202 () Bool)

(declare-fun e!1391611 () Bool)

(assert (=> b!2176202 (= e!1391611 tp_is_empty!9669)))

(declare-fun b!2176203 () Bool)

(declare-fun tp!678901 () Bool)

(declare-fun tp!678903 () Bool)

(assert (=> b!2176203 (= e!1391611 (and tp!678901 tp!678903))))

(assert (=> b!2175458 (= tp!678796 e!1391611)))

(declare-fun b!2176205 () Bool)

(declare-fun tp!678902 () Bool)

(declare-fun tp!678904 () Bool)

(assert (=> b!2176205 (= e!1391611 (and tp!678902 tp!678904))))

(declare-fun b!2176204 () Bool)

(declare-fun tp!678900 () Bool)

(assert (=> b!2176204 (= e!1391611 tp!678900)))

(assert (= (and b!2175458 ((_ is ElementMatch!6031) (regOne!12575 r!12534))) b!2176202))

(assert (= (and b!2175458 ((_ is Concat!10333) (regOne!12575 r!12534))) b!2176203))

(assert (= (and b!2175458 ((_ is Star!6031) (regOne!12575 r!12534))) b!2176204))

(assert (= (and b!2175458 ((_ is Union!6031) (regOne!12575 r!12534))) b!2176205))

(declare-fun b!2176206 () Bool)

(declare-fun e!1391612 () Bool)

(assert (=> b!2176206 (= e!1391612 tp_is_empty!9669)))

(declare-fun b!2176207 () Bool)

(declare-fun tp!678906 () Bool)

(declare-fun tp!678908 () Bool)

(assert (=> b!2176207 (= e!1391612 (and tp!678906 tp!678908))))

(assert (=> b!2175458 (= tp!678795 e!1391612)))

(declare-fun b!2176209 () Bool)

(declare-fun tp!678907 () Bool)

(declare-fun tp!678909 () Bool)

(assert (=> b!2176209 (= e!1391612 (and tp!678907 tp!678909))))

(declare-fun b!2176208 () Bool)

(declare-fun tp!678905 () Bool)

(assert (=> b!2176208 (= e!1391612 tp!678905)))

(assert (= (and b!2175458 ((_ is ElementMatch!6031) (regTwo!12575 r!12534))) b!2176206))

(assert (= (and b!2175458 ((_ is Concat!10333) (regTwo!12575 r!12534))) b!2176207))

(assert (= (and b!2175458 ((_ is Star!6031) (regTwo!12575 r!12534))) b!2176208))

(assert (= (and b!2175458 ((_ is Union!6031) (regTwo!12575 r!12534))) b!2176209))

(declare-fun b!2176210 () Bool)

(declare-fun tp!678911 () Bool)

(declare-fun e!1391614 () Bool)

(declare-fun tp!678912 () Bool)

(assert (=> b!2176210 (= e!1391614 (and (inv!33505 (left!19365 (c!345005 input!5540))) tp!678912 (inv!33505 (right!19695 (c!345005 input!5540))) tp!678911))))

(declare-fun b!2176212 () Bool)

(declare-fun e!1391613 () Bool)

(declare-fun tp!678910 () Bool)

(assert (=> b!2176212 (= e!1391613 tp!678910)))

(declare-fun b!2176211 () Bool)

(assert (=> b!2176211 (= e!1391614 (and (inv!33512 (xs!11109 (c!345005 input!5540))) e!1391613))))

(assert (=> b!2175454 (= tp!678797 (and (inv!33505 (c!345005 input!5540)) e!1391614))))

(assert (= (and b!2175454 ((_ is Node!8167) (c!345005 input!5540))) b!2176210))

(assert (= b!2176211 b!2176212))

(assert (= (and b!2175454 ((_ is Leaf!11950) (c!345005 input!5540))) b!2176211))

(declare-fun m!2617871 () Bool)

(assert (=> b!2176210 m!2617871))

(declare-fun m!2617873 () Bool)

(assert (=> b!2176210 m!2617873))

(declare-fun m!2617875 () Bool)

(assert (=> b!2176211 m!2617875))

(assert (=> b!2175454 m!2617019))

(declare-fun condSetEmpty!18280 () Bool)

(assert (=> setNonEmpty!18274 (= condSetEmpty!18280 (= setRest!18274 ((as const (Array Context!3202 Bool)) false)))))

(declare-fun setRes!18280 () Bool)

(assert (=> setNonEmpty!18274 (= tp!678794 setRes!18280)))

(declare-fun setIsEmpty!18280 () Bool)

(assert (=> setIsEmpty!18280 setRes!18280))

(declare-fun e!1391617 () Bool)

(declare-fun setElem!18280 () Context!3202)

(declare-fun setNonEmpty!18280 () Bool)

(declare-fun tp!678918 () Bool)

(assert (=> setNonEmpty!18280 (= setRes!18280 (and tp!678918 (inv!33504 setElem!18280) e!1391617))))

(declare-fun setRest!18280 () (InoxSet Context!3202))

(assert (=> setNonEmpty!18280 (= setRest!18274 ((_ map or) (store ((as const (Array Context!3202 Bool)) false) setElem!18280 true) setRest!18280))))

(declare-fun b!2176217 () Bool)

(declare-fun tp!678917 () Bool)

(assert (=> b!2176217 (= e!1391617 tp!678917)))

(assert (= (and setNonEmpty!18274 condSetEmpty!18280) setIsEmpty!18280))

(assert (= (and setNonEmpty!18274 (not condSetEmpty!18280)) setNonEmpty!18280))

(assert (= setNonEmpty!18280 b!2176217))

(declare-fun m!2617877 () Bool)

(assert (=> setNonEmpty!18280 m!2617877))

(check-sat (not b!2176079) (not b!2175585) (not b!2175832) (not b!2175842) (not b!2176182) (not d!651135) (not b!2176147) (not bm!130602) (not bm!130664) (not d!651239) (not b!2176161) (not d!651245) tp_is_empty!9669 (not b!2176175) (not b!2176057) (not b!2176209) (not b!2176095) (not b!2176050) (not b!2176071) (not b!2175551) (not b!2175646) (not d!651151) (not d!651263) (not b!2176064) (not d!651147) (not b!2175574) (not b!2175838) (not d!651213) (not b!2175624) (not b!2175557) (not b!2175621) (not b!2176176) (not d!651067) (not bm!130670) (not d!651087) (not b!2176049) (not b!2176073) (not b!2176207) (not b!2175596) (not b!2176101) (not b!2176067) (not b!2176203) (not b!2175565) (not b!2176191) (not b!2176210) (not b!2175595) (not d!651237) (not b!2176195) (not d!651219) (not b!2176200) (not b!2176081) (not b!2175836) (not bm!130682) (not b!2176068) (not bm!130666) (not d!651141) (not d!651247) (not b!2176077) (not d!651261) (not b!2176201) (not b!2175856) (not d!651235) (not d!651265) (not b!2175563) (not b!2176211) (not d!651227) (not b!2176099) (not b!2176080) (not d!651259) (not b!2175560) (not b!2175888) (not b!2175645) (not d!651153) (not b!2176163) (not bm!130673) (not bm!130667) (not b!2176196) (not bm!130665) (not b!2176177) (not d!651063) (not b!2176083) (not b!2176208) (not b!2176199) (not bm!130605) (not d!651241) (not d!651257) (not b!2176193) (not b!2176212) (not d!651267) (not b!2175822) (not b!2176143) (not b!2176217) (not b!2176052) (not d!651083) (not b!2176086) (not b!2176087) (not b!2175549) (not d!651243) (not b!2175619) (not d!651211) (not b!2175447) (not b!2175454) (not b!2176158) (not b!2175602) (not b!2175571) (not b!2176074) (not b!2176197) (not d!651251) (not setNonEmpty!18280) (not b!2175553) (not b!2176204) (not b!2176192) (not b!2176205) (not b!2175567) (not b!2176096) (not d!651209) (not d!651223) (not b!2175843) (not b!2175834) (not b!2176075) (not b!2175837) (not b!2175841) (not d!651165) (not d!651149) (not b!2176085) (not b!2175570) (not b!2175833) (not b!2176150) (not b!2176066) (not d!651253) (not bm!130668) (not d!651233) (not d!651085) (not b!2176145) (not b!2175620) (not b!2175819) (not d!651089) (not d!651231) (not b!2175817) (not b!2176090) (not b!2175556) (not d!651091) (not d!651145) (not b!2175583) (not d!651271) (not d!651249) (not b!2176154) (not bm!130681) (not b!2175818) (not b!2176078) (not bm!130669) (not bm!130601) (not bm!130683) (not b!2176151) (not bm!130663) (not b!2175887) (not b!2176136) (not b!2176157) (not b!2175603) (not d!651079) (not b!2176102) (not b!2176160))
(check-sat)
(get-model)

(declare-fun b!2176272 () Bool)

(declare-fun e!1391649 () Int)

(assert (=> b!2176272 (= e!1391649 0)))

(declare-fun b!2176274 () Bool)

(declare-fun e!1391644 () Bool)

(declare-fun lt!812114 () List!25306)

(assert (=> b!2176274 (= e!1391644 (= (size!19706 lt!812114) e!1391649))))

(declare-fun c!345237 () Bool)

(assert (=> b!2176274 (= c!345237 (<= (- lt!811673 1) 0))))

(declare-fun b!2176275 () Bool)

(declare-fun e!1391647 () Int)

(assert (=> b!2176275 (= e!1391647 (size!19706 (t!197874 lt!811667)))))

(declare-fun b!2176276 () Bool)

(declare-fun e!1391646 () List!25306)

(assert (=> b!2176276 (= e!1391646 Nil!25222)))

(declare-fun b!2176277 () Bool)

(assert (=> b!2176277 (= e!1391647 (- lt!811673 1))))

(declare-fun b!2176278 () Bool)

(assert (=> b!2176278 (= e!1391646 (Cons!25222 (h!30623 (t!197874 lt!811667)) (take!239 (t!197874 (t!197874 lt!811667)) (- (- lt!811673 1) 1))))))

(declare-fun d!651309 () Bool)

(assert (=> d!651309 e!1391644))

(declare-fun res!936310 () Bool)

(assert (=> d!651309 (=> (not res!936310) (not e!1391644))))

(assert (=> d!651309 (= res!936310 (= ((_ map implies) (content!3436 lt!812114) (content!3436 (t!197874 lt!811667))) ((as const (InoxSet C!12208)) true)))))

(assert (=> d!651309 (= lt!812114 e!1391646)))

(declare-fun c!345233 () Bool)

(assert (=> d!651309 (= c!345233 (or ((_ is Nil!25222) (t!197874 lt!811667)) (<= (- lt!811673 1) 0)))))

(assert (=> d!651309 (= (take!239 (t!197874 lt!811667) (- lt!811673 1)) lt!812114)))

(declare-fun b!2176273 () Bool)

(assert (=> b!2176273 (= e!1391649 e!1391647)))

(declare-fun c!345236 () Bool)

(assert (=> b!2176273 (= c!345236 (>= (- lt!811673 1) (size!19706 (t!197874 lt!811667))))))

(assert (= (and d!651309 c!345233) b!2176276))

(assert (= (and d!651309 (not c!345233)) b!2176278))

(assert (= (and d!651309 res!936310) b!2176274))

(assert (= (and b!2176274 c!345237) b!2176272))

(assert (= (and b!2176274 (not c!345237)) b!2176273))

(assert (= (and b!2176273 c!345236) b!2176275))

(assert (= (and b!2176273 (not c!345236)) b!2176277))

(declare-fun m!2617931 () Bool)

(assert (=> d!651309 m!2617931))

(declare-fun m!2617933 () Bool)

(assert (=> d!651309 m!2617933))

(declare-fun m!2617935 () Bool)

(assert (=> b!2176274 m!2617935))

(declare-fun m!2617937 () Bool)

(assert (=> b!2176273 m!2617937))

(assert (=> b!2176275 m!2617937))

(declare-fun m!2617939 () Bool)

(assert (=> b!2176278 m!2617939))

(assert (=> b!2176071 d!651309))

(declare-fun d!651311 () Bool)

(declare-fun c!345240 () Bool)

(assert (=> d!651311 (= c!345240 ((_ is Nil!25222) lt!811704))))

(declare-fun e!1391652 () (InoxSet C!12208))

(assert (=> d!651311 (= (content!3436 lt!811704) e!1391652)))

(declare-fun b!2176283 () Bool)

(assert (=> b!2176283 (= e!1391652 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176284 () Bool)

(assert (=> b!2176284 (= e!1391652 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811704) true) (content!3436 (t!197874 lt!811704))))))

(assert (= (and d!651311 c!345240) b!2176283))

(assert (= (and d!651311 (not c!345240)) b!2176284))

(declare-fun m!2617941 () Bool)

(assert (=> b!2176284 m!2617941))

(declare-fun m!2617943 () Bool)

(assert (=> b!2176284 m!2617943))

(assert (=> d!651083 d!651311))

(declare-fun d!651313 () Bool)

(declare-fun c!345241 () Bool)

(assert (=> d!651313 (= c!345241 ((_ is Nil!25222) (_1!14869 lt!811654)))))

(declare-fun e!1391653 () (InoxSet C!12208))

(assert (=> d!651313 (= (content!3436 (_1!14869 lt!811654)) e!1391653)))

(declare-fun b!2176285 () Bool)

(assert (=> b!2176285 (= e!1391653 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176286 () Bool)

(assert (=> b!2176286 (= e!1391653 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 (_1!14869 lt!811654)) true) (content!3436 (t!197874 (_1!14869 lt!811654)))))))

(assert (= (and d!651313 c!345241) b!2176285))

(assert (= (and d!651313 (not c!345241)) b!2176286))

(declare-fun m!2617945 () Bool)

(assert (=> b!2176286 m!2617945))

(declare-fun m!2617947 () Bool)

(assert (=> b!2176286 m!2617947))

(assert (=> d!651083 d!651313))

(declare-fun d!651315 () Bool)

(declare-fun c!345242 () Bool)

(assert (=> d!651315 (= c!345242 ((_ is Nil!25222) (_2!14869 lt!811654)))))

(declare-fun e!1391654 () (InoxSet C!12208))

(assert (=> d!651315 (= (content!3436 (_2!14869 lt!811654)) e!1391654)))

(declare-fun b!2176287 () Bool)

(assert (=> b!2176287 (= e!1391654 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176288 () Bool)

(assert (=> b!2176288 (= e!1391654 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 (_2!14869 lt!811654)) true) (content!3436 (t!197874 (_2!14869 lt!811654)))))))

(assert (= (and d!651315 c!345242) b!2176287))

(assert (= (and d!651315 (not c!345242)) b!2176288))

(declare-fun m!2617949 () Bool)

(assert (=> b!2176288 m!2617949))

(declare-fun m!2617951 () Bool)

(assert (=> b!2176288 m!2617951))

(assert (=> d!651083 d!651315))

(declare-fun d!651317 () Bool)

(declare-fun lt!812115 () Int)

(assert (=> d!651317 (>= lt!812115 0)))

(declare-fun e!1391655 () Int)

(assert (=> d!651317 (= lt!812115 e!1391655)))

(declare-fun c!345243 () Bool)

(assert (=> d!651317 (= c!345243 ((_ is Nil!25222) lt!811830))))

(assert (=> d!651317 (= (size!19706 lt!811830) lt!812115)))

(declare-fun b!2176289 () Bool)

(assert (=> b!2176289 (= e!1391655 0)))

(declare-fun b!2176290 () Bool)

(assert (=> b!2176290 (= e!1391655 (+ 1 (size!19706 (t!197874 lt!811830))))))

(assert (= (and d!651317 c!345243) b!2176289))

(assert (= (and d!651317 (not c!345243)) b!2176290))

(declare-fun m!2617953 () Bool)

(assert (=> b!2176290 m!2617953))

(assert (=> b!2175818 d!651317))

(assert (=> b!2175602 d!651219))

(declare-fun b!2176352 () Bool)

(declare-fun e!1391690 () Regex!6031)

(assert (=> b!2176352 (= e!1391690 EmptyLang!6031)))

(declare-fun call!130720 () Regex!6031)

(declare-fun bm!130714 () Bool)

(declare-fun c!345272 () Bool)

(declare-fun c!345270 () Bool)

(assert (=> bm!130714 (= call!130720 (derivativeStep!1448 (ite c!345270 (regTwo!12575 r!12534) (ite c!345272 (reg!6360 r!12534) (regOne!12574 r!12534))) call!130672))))

(declare-fun b!2176354 () Bool)

(declare-fun e!1391691 () Regex!6031)

(declare-fun call!130721 () Regex!6031)

(assert (=> b!2176354 (= e!1391691 (Union!6031 call!130721 call!130720))))

(declare-fun b!2176355 () Bool)

(declare-fun e!1391689 () Regex!6031)

(assert (=> b!2176355 (= e!1391690 e!1391689)))

(declare-fun c!345271 () Bool)

(assert (=> b!2176355 (= c!345271 ((_ is ElementMatch!6031) r!12534))))

(declare-fun b!2176356 () Bool)

(declare-fun e!1391687 () Regex!6031)

(declare-fun call!130719 () Regex!6031)

(assert (=> b!2176356 (= e!1391687 (Concat!10333 call!130719 r!12534))))

(declare-fun b!2176357 () Bool)

(declare-fun e!1391688 () Regex!6031)

(declare-fun call!130722 () Regex!6031)

(assert (=> b!2176357 (= e!1391688 (Union!6031 (Concat!10333 call!130722 (regTwo!12574 r!12534)) EmptyLang!6031))))

(declare-fun b!2176358 () Bool)

(assert (=> b!2176358 (= c!345270 ((_ is Union!6031) r!12534))))

(assert (=> b!2176358 (= e!1391689 e!1391691)))

(declare-fun bm!130715 () Bool)

(assert (=> bm!130715 (= call!130722 call!130719)))

(declare-fun bm!130716 () Bool)

(assert (=> bm!130716 (= call!130721 (derivativeStep!1448 (ite c!345270 (regOne!12575 r!12534) (regTwo!12574 r!12534)) call!130672))))

(declare-fun b!2176359 () Bool)

(assert (=> b!2176359 (= e!1391688 (Union!6031 (Concat!10333 call!130722 (regTwo!12574 r!12534)) call!130721))))

(declare-fun b!2176360 () Bool)

(assert (=> b!2176360 (= e!1391689 (ite (= call!130672 (c!345004 r!12534)) EmptyExpr!6031 EmptyLang!6031))))

(declare-fun b!2176353 () Bool)

(declare-fun c!345273 () Bool)

(assert (=> b!2176353 (= c!345273 (nullable!1705 (regOne!12574 r!12534)))))

(assert (=> b!2176353 (= e!1391687 e!1391688)))

(declare-fun d!651319 () Bool)

(declare-fun lt!812125 () Regex!6031)

(assert (=> d!651319 (validRegex!2307 lt!812125)))

(assert (=> d!651319 (= lt!812125 e!1391690)))

(declare-fun c!345274 () Bool)

(assert (=> d!651319 (= c!345274 (or ((_ is EmptyExpr!6031) r!12534) ((_ is EmptyLang!6031) r!12534)))))

(assert (=> d!651319 (validRegex!2307 r!12534)))

(assert (=> d!651319 (= (derivativeStep!1448 r!12534 call!130672) lt!812125)))

(declare-fun bm!130717 () Bool)

(assert (=> bm!130717 (= call!130719 call!130720)))

(declare-fun b!2176361 () Bool)

(assert (=> b!2176361 (= e!1391691 e!1391687)))

(assert (=> b!2176361 (= c!345272 ((_ is Star!6031) r!12534))))

(assert (= (and d!651319 c!345274) b!2176352))

(assert (= (and d!651319 (not c!345274)) b!2176355))

(assert (= (and b!2176355 c!345271) b!2176360))

(assert (= (and b!2176355 (not c!345271)) b!2176358))

(assert (= (and b!2176358 c!345270) b!2176354))

(assert (= (and b!2176358 (not c!345270)) b!2176361))

(assert (= (and b!2176361 c!345272) b!2176356))

(assert (= (and b!2176361 (not c!345272)) b!2176353))

(assert (= (and b!2176353 c!345273) b!2176359))

(assert (= (and b!2176353 (not c!345273)) b!2176357))

(assert (= (or b!2176359 b!2176357) bm!130715))

(assert (= (or b!2176356 bm!130715) bm!130717))

(assert (= (or b!2176354 b!2176359) bm!130716))

(assert (= (or b!2176354 bm!130717) bm!130714))

(declare-fun m!2617979 () Bool)

(assert (=> bm!130714 m!2617979))

(declare-fun m!2617981 () Bool)

(assert (=> bm!130716 m!2617981))

(declare-fun m!2617985 () Bool)

(assert (=> b!2176353 m!2617985))

(declare-fun m!2617987 () Bool)

(assert (=> d!651319 m!2617987))

(assert (=> d!651319 m!2617091))

(assert (=> bm!130665 d!651319))

(assert (=> b!2176080 d!651219))

(declare-fun d!651339 () Bool)

(assert (=> d!651339 (= (head!4658 (_1!14869 lt!811660)) (h!30623 (_1!14869 lt!811660)))))

(assert (=> b!2175549 d!651339))

(declare-fun b!2176362 () Bool)

(declare-fun e!1391695 () Int)

(assert (=> b!2176362 (= e!1391695 0)))

(declare-fun b!2176364 () Bool)

(declare-fun e!1391692 () Bool)

(declare-fun lt!812126 () List!25306)

(assert (=> b!2176364 (= e!1391692 (= (size!19706 lt!812126) e!1391695))))

(declare-fun c!345277 () Bool)

(assert (=> b!2176364 (= c!345277 (<= (- lt!811677 1) 0))))

(declare-fun b!2176365 () Bool)

(declare-fun e!1391694 () Int)

(assert (=> b!2176365 (= e!1391694 (size!19706 (t!197874 lt!811681)))))

(declare-fun b!2176366 () Bool)

(declare-fun e!1391693 () List!25306)

(assert (=> b!2176366 (= e!1391693 Nil!25222)))

(declare-fun b!2176367 () Bool)

(assert (=> b!2176367 (= e!1391694 (- lt!811677 1))))

(declare-fun b!2176368 () Bool)

(assert (=> b!2176368 (= e!1391693 (Cons!25222 (h!30623 (t!197874 lt!811681)) (take!239 (t!197874 (t!197874 lt!811681)) (- (- lt!811677 1) 1))))))

(declare-fun d!651341 () Bool)

(assert (=> d!651341 e!1391692))

(declare-fun res!936320 () Bool)

(assert (=> d!651341 (=> (not res!936320) (not e!1391692))))

(assert (=> d!651341 (= res!936320 (= ((_ map implies) (content!3436 lt!812126) (content!3436 (t!197874 lt!811681))) ((as const (InoxSet C!12208)) true)))))

(assert (=> d!651341 (= lt!812126 e!1391693)))

(declare-fun c!345275 () Bool)

(assert (=> d!651341 (= c!345275 (or ((_ is Nil!25222) (t!197874 lt!811681)) (<= (- lt!811677 1) 0)))))

(assert (=> d!651341 (= (take!239 (t!197874 lt!811681) (- lt!811677 1)) lt!812126)))

(declare-fun b!2176363 () Bool)

(assert (=> b!2176363 (= e!1391695 e!1391694)))

(declare-fun c!345276 () Bool)

(assert (=> b!2176363 (= c!345276 (>= (- lt!811677 1) (size!19706 (t!197874 lt!811681))))))

(assert (= (and d!651341 c!345275) b!2176366))

(assert (= (and d!651341 (not c!345275)) b!2176368))

(assert (= (and d!651341 res!936320) b!2176364))

(assert (= (and b!2176364 c!345277) b!2176362))

(assert (= (and b!2176364 (not c!345277)) b!2176363))

(assert (= (and b!2176363 c!345276) b!2176365))

(assert (= (and b!2176363 (not c!345276)) b!2176367))

(declare-fun m!2618001 () Bool)

(assert (=> d!651341 m!2618001))

(declare-fun m!2618003 () Bool)

(assert (=> d!651341 m!2618003))

(declare-fun m!2618005 () Bool)

(assert (=> b!2176364 m!2618005))

(declare-fun m!2618007 () Bool)

(assert (=> b!2176363 m!2618007))

(assert (=> b!2176365 m!2618007))

(declare-fun m!2618009 () Bool)

(assert (=> b!2176368 m!2618009))

(assert (=> b!2175822 d!651341))

(declare-fun d!651345 () Bool)

(declare-fun lt!812128 () Int)

(assert (=> d!651345 (>= lt!812128 0)))

(declare-fun e!1391701 () Int)

(assert (=> d!651345 (= lt!812128 e!1391701)))

(declare-fun c!345283 () Bool)

(assert (=> d!651345 (= c!345283 ((_ is Nil!25222) (_1!14869 lt!811990)))))

(assert (=> d!651345 (= (size!19706 (_1!14869 lt!811990)) lt!812128)))

(declare-fun b!2176379 () Bool)

(assert (=> b!2176379 (= e!1391701 0)))

(declare-fun b!2176380 () Bool)

(assert (=> b!2176380 (= e!1391701 (+ 1 (size!19706 (t!197874 (_1!14869 lt!811990)))))))

(assert (= (and d!651345 c!345283) b!2176379))

(assert (= (and d!651345 (not c!345283)) b!2176380))

(declare-fun m!2618011 () Bool)

(assert (=> b!2176380 m!2618011))

(assert (=> b!2176050 d!651345))

(assert (=> b!2176050 d!651225))

(declare-fun d!651347 () Bool)

(declare-fun lt!812129 () Int)

(assert (=> d!651347 (>= lt!812129 0)))

(declare-fun e!1391702 () Int)

(assert (=> d!651347 (= lt!812129 e!1391702)))

(declare-fun c!345284 () Bool)

(assert (=> d!651347 (= c!345284 ((_ is Nil!25222) lt!811667))))

(assert (=> d!651347 (= (size!19706 lt!811667) lt!812129)))

(declare-fun b!2176381 () Bool)

(assert (=> b!2176381 (= e!1391702 0)))

(declare-fun b!2176382 () Bool)

(assert (=> b!2176382 (= e!1391702 (+ 1 (size!19706 (t!197874 lt!811667))))))

(assert (= (and d!651347 c!345284) b!2176381))

(assert (= (and d!651347 (not c!345284)) b!2176382))

(assert (=> b!2176382 m!2617937))

(assert (=> b!2176079 d!651347))

(declare-fun d!651349 () Bool)

(declare-fun lt!812130 () Int)

(assert (=> d!651349 (>= lt!812130 0)))

(declare-fun e!1391703 () Int)

(assert (=> d!651349 (= lt!812130 e!1391703)))

(declare-fun c!345285 () Bool)

(assert (=> d!651349 (= c!345285 ((_ is Nil!25222) (take!239 lt!811667 lt!811673)))))

(assert (=> d!651349 (= (size!19706 (take!239 lt!811667 lt!811673)) lt!812130)))

(declare-fun b!2176383 () Bool)

(assert (=> b!2176383 (= e!1391703 0)))

(declare-fun b!2176384 () Bool)

(assert (=> b!2176384 (= e!1391703 (+ 1 (size!19706 (t!197874 (take!239 lt!811667 lt!811673)))))))

(assert (= (and d!651349 c!345285) b!2176383))

(assert (= (and d!651349 (not c!345285)) b!2176384))

(declare-fun m!2618013 () Bool)

(assert (=> b!2176384 m!2618013))

(assert (=> b!2176079 d!651349))

(declare-fun d!651351 () Bool)

(declare-fun c!345286 () Bool)

(assert (=> d!651351 (= c!345286 ((_ is Nil!25222) lt!811837))))

(declare-fun e!1391704 () (InoxSet C!12208))

(assert (=> d!651351 (= (content!3436 lt!811837) e!1391704)))

(declare-fun b!2176385 () Bool)

(assert (=> b!2176385 (= e!1391704 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176386 () Bool)

(assert (=> b!2176386 (= e!1391704 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811837) true) (content!3436 (t!197874 lt!811837))))))

(assert (= (and d!651351 c!345286) b!2176385))

(assert (= (and d!651351 (not c!345286)) b!2176386))

(declare-fun m!2618015 () Bool)

(assert (=> b!2176386 m!2618015))

(declare-fun m!2618017 () Bool)

(assert (=> b!2176386 m!2618017))

(assert (=> d!651145 d!651351))

(declare-fun d!651353 () Bool)

(declare-fun c!345287 () Bool)

(assert (=> d!651353 (= c!345287 ((_ is Nil!25222) lt!811670))))

(declare-fun e!1391705 () (InoxSet C!12208))

(assert (=> d!651353 (= (content!3436 lt!811670) e!1391705)))

(declare-fun b!2176387 () Bool)

(assert (=> b!2176387 (= e!1391705 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176388 () Bool)

(assert (=> b!2176388 (= e!1391705 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811670) true) (content!3436 (t!197874 lt!811670))))))

(assert (= (and d!651353 c!345287) b!2176387))

(assert (= (and d!651353 (not c!345287)) b!2176388))

(declare-fun m!2618019 () Bool)

(assert (=> b!2176388 m!2618019))

(declare-fun m!2618021 () Bool)

(assert (=> b!2176388 m!2618021))

(assert (=> d!651145 d!651353))

(declare-fun d!651355 () Bool)

(declare-fun c!345288 () Bool)

(assert (=> d!651355 (= c!345288 ((_ is Nil!25222) lt!812030))))

(declare-fun e!1391706 () (InoxSet C!12208))

(assert (=> d!651355 (= (content!3436 lt!812030) e!1391706)))

(declare-fun b!2176389 () Bool)

(assert (=> b!2176389 (= e!1391706 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176390 () Bool)

(assert (=> b!2176390 (= e!1391706 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!812030) true) (content!3436 (t!197874 lt!812030))))))

(assert (= (and d!651355 c!345288) b!2176389))

(assert (= (and d!651355 (not c!345288)) b!2176390))

(declare-fun m!2618025 () Bool)

(assert (=> b!2176390 m!2618025))

(declare-fun m!2618027 () Bool)

(assert (=> b!2176390 m!2618027))

(assert (=> d!651247 d!651355))

(declare-fun d!651357 () Bool)

(declare-fun c!345289 () Bool)

(assert (=> d!651357 (= c!345289 ((_ is Nil!25222) lt!811676))))

(declare-fun e!1391707 () (InoxSet C!12208))

(assert (=> d!651357 (= (content!3436 lt!811676) e!1391707)))

(declare-fun b!2176391 () Bool)

(assert (=> b!2176391 (= e!1391707 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176392 () Bool)

(assert (=> b!2176392 (= e!1391707 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811676) true) (content!3436 (t!197874 lt!811676))))))

(assert (= (and d!651357 c!345289) b!2176391))

(assert (= (and d!651357 (not c!345289)) b!2176392))

(declare-fun m!2618033 () Bool)

(assert (=> b!2176392 m!2618033))

(declare-fun m!2618035 () Bool)

(assert (=> b!2176392 m!2618035))

(assert (=> d!651247 d!651357))

(declare-fun d!651361 () Bool)

(declare-fun c!345290 () Bool)

(assert (=> d!651361 (= c!345290 ((_ is Nil!25222) lt!811679))))

(declare-fun e!1391708 () (InoxSet C!12208))

(assert (=> d!651361 (= (content!3436 lt!811679) e!1391708)))

(declare-fun b!2176393 () Bool)

(assert (=> b!2176393 (= e!1391708 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176394 () Bool)

(assert (=> b!2176394 (= e!1391708 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811679) true) (content!3436 (t!197874 lt!811679))))))

(assert (= (and d!651361 c!345290) b!2176393))

(assert (= (and d!651361 (not c!345290)) b!2176394))

(declare-fun m!2618037 () Bool)

(assert (=> b!2176394 m!2618037))

(declare-fun m!2618039 () Bool)

(assert (=> b!2176394 m!2618039))

(assert (=> d!651247 d!651361))

(assert (=> b!2175553 d!651339))

(declare-fun b!2176400 () Bool)

(declare-fun res!936327 () Bool)

(declare-fun e!1391714 () Bool)

(assert (=> b!2176400 (=> (not res!936327) (not e!1391714))))

(assert (=> b!2176400 (= res!936327 (= (head!4658 lt!811676) (head!4658 (++!6390 lt!811676 lt!811679))))))

(declare-fun b!2176399 () Bool)

(declare-fun e!1391713 () Bool)

(assert (=> b!2176399 (= e!1391713 e!1391714)))

(declare-fun res!936325 () Bool)

(assert (=> b!2176399 (=> (not res!936325) (not e!1391714))))

(assert (=> b!2176399 (= res!936325 (not ((_ is Nil!25222) (++!6390 lt!811676 lt!811679))))))

(declare-fun d!651365 () Bool)

(declare-fun e!1391712 () Bool)

(assert (=> d!651365 e!1391712))

(declare-fun res!936326 () Bool)

(assert (=> d!651365 (=> res!936326 e!1391712)))

(declare-fun lt!812132 () Bool)

(assert (=> d!651365 (= res!936326 (not lt!812132))))

(assert (=> d!651365 (= lt!812132 e!1391713)))

(declare-fun res!936328 () Bool)

(assert (=> d!651365 (=> res!936328 e!1391713)))

(assert (=> d!651365 (= res!936328 ((_ is Nil!25222) lt!811676))))

(assert (=> d!651365 (= (isPrefix!2147 lt!811676 (++!6390 lt!811676 lt!811679)) lt!812132)))

(declare-fun b!2176402 () Bool)

(assert (=> b!2176402 (= e!1391712 (>= (size!19706 (++!6390 lt!811676 lt!811679)) (size!19706 lt!811676)))))

(declare-fun b!2176401 () Bool)

(assert (=> b!2176401 (= e!1391714 (isPrefix!2147 (tail!3130 lt!811676) (tail!3130 (++!6390 lt!811676 lt!811679))))))

(assert (= (and d!651365 (not res!936328)) b!2176399))

(assert (= (and b!2176399 res!936325) b!2176400))

(assert (= (and b!2176400 res!936327) b!2176401))

(assert (= (and d!651365 (not res!936326)) b!2176402))

(assert (=> b!2176400 m!2617709))

(assert (=> b!2176400 m!2617033))

(declare-fun m!2618041 () Bool)

(assert (=> b!2176400 m!2618041))

(assert (=> b!2176402 m!2617033))

(declare-fun m!2618043 () Bool)

(assert (=> b!2176402 m!2618043))

(assert (=> b!2176402 m!2617715))

(assert (=> b!2176401 m!2617717))

(assert (=> b!2176401 m!2617033))

(declare-fun m!2618045 () Bool)

(assert (=> b!2176401 m!2618045))

(assert (=> b!2176401 m!2617717))

(assert (=> b!2176401 m!2618045))

(declare-fun m!2618047 () Bool)

(assert (=> b!2176401 m!2618047))

(assert (=> d!651211 d!651365))

(assert (=> d!651211 d!651247))

(declare-fun d!651367 () Bool)

(assert (=> d!651367 (isPrefix!2147 lt!811676 (++!6390 lt!811676 lt!811679))))

(assert (=> d!651367 true))

(declare-fun _$46!1264 () Unit!38293)

(assert (=> d!651367 (= (choose!12853 lt!811676 lt!811679) _$46!1264)))

(declare-fun bs!447160 () Bool)

(assert (= bs!447160 d!651367))

(assert (=> bs!447160 m!2617033))

(assert (=> bs!447160 m!2617033))

(assert (=> bs!447160 m!2617703))

(assert (=> d!651211 d!651367))

(assert (=> d!651231 d!651225))

(declare-fun d!651371 () Bool)

(assert (=> d!651371 (= (isEmpty!14477 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))) ((_ is Nil!25222) (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))))))

(assert (=> d!651231 d!651371))

(assert (=> d!651231 d!651165))

(assert (=> d!651231 d!651207))

(declare-fun d!651373 () Bool)

(declare-fun e!1391718 () Bool)

(assert (=> d!651373 e!1391718))

(declare-fun res!936331 () Bool)

(assert (=> d!651373 (=> res!936331 e!1391718)))

(assert (=> d!651373 (= res!936331 (isEmpty!14477 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))))))

(assert (=> d!651373 true))

(declare-fun _$92!324 () Unit!38293)

(assert (=> d!651373 (= (choose!12854 r!12534 lt!811670) _$92!324)))

(declare-fun b!2176407 () Bool)

(assert (=> b!2176407 (= e!1391718 (matchR!2780 r!12534 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))))))

(assert (= (and d!651373 (not res!936331)) b!2176407))

(assert (=> d!651373 m!2617061))

(assert (=> d!651373 m!2617047))

(assert (=> d!651373 m!2617061))

(assert (=> d!651373 m!2617047))

(assert (=> d!651373 m!2617063))

(assert (=> d!651373 m!2617757))

(assert (=> b!2176407 m!2617061))

(assert (=> b!2176407 m!2617047))

(assert (=> b!2176407 m!2617061))

(assert (=> b!2176407 m!2617047))

(assert (=> b!2176407 m!2617063))

(assert (=> b!2176407 m!2617761))

(assert (=> d!651231 d!651373))

(assert (=> d!651231 d!651255))

(declare-fun bs!447164 () Bool)

(declare-fun d!651381 () Bool)

(assert (= bs!447164 (and d!651381 d!651219)))

(declare-fun lambda!81872 () Int)

(assert (=> bs!447164 (not (= lambda!81872 lambda!81859))))

(declare-fun bs!447165 () Bool)

(declare-fun b!2176434 () Bool)

(assert (= bs!447165 (and b!2176434 d!651219)))

(declare-fun lambda!81873 () Int)

(assert (=> bs!447165 (not (= lambda!81873 lambda!81859))))

(declare-fun bs!447166 () Bool)

(assert (= bs!447166 (and b!2176434 d!651381)))

(assert (=> bs!447166 (not (= lambda!81873 lambda!81872))))

(declare-fun bs!447167 () Bool)

(declare-fun b!2176435 () Bool)

(assert (= bs!447167 (and b!2176435 d!651219)))

(declare-fun lambda!81874 () Int)

(assert (=> bs!447167 (not (= lambda!81874 lambda!81859))))

(declare-fun bs!447168 () Bool)

(assert (= bs!447168 (and b!2176435 d!651381)))

(assert (=> bs!447168 (not (= lambda!81874 lambda!81872))))

(declare-fun bs!447169 () Bool)

(assert (= bs!447169 (and b!2176435 b!2176434)))

(assert (=> bs!447169 (= lambda!81874 lambda!81873)))

(declare-fun c!345306 () Bool)

(declare-fun lt!812153 () List!25308)

(declare-fun lt!812156 () List!25308)

(declare-fun bm!130729 () Bool)

(declare-fun call!130734 () Bool)

(declare-fun exists!769 (List!25308 Int) Bool)

(assert (=> bm!130729 (= call!130734 (exists!769 (ite c!345306 lt!812156 lt!812153) (ite c!345306 lambda!81873 lambda!81874)))))

(declare-fun bm!130730 () Bool)

(declare-fun call!130735 () List!25308)

(assert (=> bm!130730 (= call!130735 (toList!1214 z!4055))))

(declare-fun e!1391742 () Unit!38293)

(declare-fun Unit!38304 () Unit!38293)

(assert (=> b!2176434 (= e!1391742 Unit!38304)))

(assert (=> b!2176434 (= lt!812156 call!130735)))

(declare-fun lt!812151 () Unit!38293)

(declare-fun lemmaNotForallThenExists!26 (List!25308 Int) Unit!38293)

(assert (=> b!2176434 (= lt!812151 (lemmaNotForallThenExists!26 lt!812156 lambda!81872))))

(assert (=> b!2176434 call!130734))

(declare-fun lt!812158 () Unit!38293)

(assert (=> b!2176434 (= lt!812158 lt!812151)))

(declare-fun lt!812154 () Bool)

(declare-datatypes ((Option!5001 0))(
  ( (None!5000) (Some!5000 (v!29393 List!25306)) )
))
(declare-fun isEmpty!14481 (Option!5001) Bool)

(declare-fun getLanguageWitness!114 ((InoxSet Context!3202)) Option!5001)

(assert (=> d!651381 (= lt!812154 (isEmpty!14481 (getLanguageWitness!114 z!4055)))))

(declare-fun forall!5178 ((InoxSet Context!3202) Int) Bool)

(assert (=> d!651381 (= lt!812154 (forall!5178 z!4055 lambda!81872))))

(declare-fun lt!812155 () Unit!38293)

(assert (=> d!651381 (= lt!812155 e!1391742)))

(assert (=> d!651381 (= c!345306 (not (forall!5178 z!4055 lambda!81872)))))

(assert (=> d!651381 (= (lostCauseZipper!167 z!4055) lt!812154)))

(declare-fun Unit!38305 () Unit!38293)

(assert (=> b!2176435 (= e!1391742 Unit!38305)))

(assert (=> b!2176435 (= lt!812153 call!130735)))

(declare-fun lt!812152 () Unit!38293)

(declare-fun lemmaForallThenNotExists!26 (List!25308 Int) Unit!38293)

(assert (=> b!2176435 (= lt!812152 (lemmaForallThenNotExists!26 lt!812153 lambda!81872))))

(assert (=> b!2176435 (not call!130734)))

(declare-fun lt!812157 () Unit!38293)

(assert (=> b!2176435 (= lt!812157 lt!812152)))

(assert (= (and d!651381 c!345306) b!2176434))

(assert (= (and d!651381 (not c!345306)) b!2176435))

(assert (= (or b!2176434 b!2176435) bm!130729))

(assert (= (or b!2176434 b!2176435) bm!130730))

(declare-fun m!2618089 () Bool)

(assert (=> d!651381 m!2618089))

(assert (=> d!651381 m!2618089))

(declare-fun m!2618091 () Bool)

(assert (=> d!651381 m!2618091))

(declare-fun m!2618093 () Bool)

(assert (=> d!651381 m!2618093))

(assert (=> d!651381 m!2618093))

(declare-fun m!2618095 () Bool)

(assert (=> b!2176434 m!2618095))

(declare-fun m!2618097 () Bool)

(assert (=> bm!130729 m!2618097))

(declare-fun m!2618099 () Bool)

(assert (=> b!2176435 m!2618099))

(assert (=> bm!130730 m!2617089))

(assert (=> b!2175887 d!651381))

(declare-fun d!651403 () Bool)

(declare-fun res!936351 () Bool)

(declare-fun e!1391755 () Bool)

(assert (=> d!651403 (=> res!936351 e!1391755)))

(assert (=> d!651403 (= res!936351 ((_ is Nil!25223) (exprs!2101 setElem!18274)))))

(assert (=> d!651403 (= (forall!5177 (exprs!2101 setElem!18274) lambda!81856) e!1391755)))

(declare-fun b!2176455 () Bool)

(declare-fun e!1391756 () Bool)

(assert (=> b!2176455 (= e!1391755 e!1391756)))

(declare-fun res!936352 () Bool)

(assert (=> b!2176455 (=> (not res!936352) (not e!1391756))))

(declare-fun dynLambda!11432 (Int Regex!6031) Bool)

(assert (=> b!2176455 (= res!936352 (dynLambda!11432 lambda!81856 (h!30624 (exprs!2101 setElem!18274))))))

(declare-fun b!2176456 () Bool)

(assert (=> b!2176456 (= e!1391756 (forall!5177 (t!197875 (exprs!2101 setElem!18274)) lambda!81856))))

(assert (= (and d!651403 (not res!936351)) b!2176455))

(assert (= (and b!2176455 res!936352) b!2176456))

(declare-fun b_lambda!71093 () Bool)

(assert (=> (not b_lambda!71093) (not b!2176455)))

(declare-fun m!2618111 () Bool)

(assert (=> b!2176455 m!2618111))

(declare-fun m!2618113 () Bool)

(assert (=> b!2176456 m!2618113))

(assert (=> d!651091 d!651403))

(declare-fun d!651423 () Bool)

(declare-fun lt!812164 () Int)

(assert (=> d!651423 (>= lt!812164 0)))

(declare-fun e!1391757 () Int)

(assert (=> d!651423 (= lt!812164 e!1391757)))

(declare-fun c!345314 () Bool)

(assert (=> d!651423 (= c!345314 ((_ is Nil!25222) (list!9676 input!5540)))))

(assert (=> d!651423 (= (size!19706 (list!9676 input!5540)) lt!812164)))

(declare-fun b!2176457 () Bool)

(assert (=> b!2176457 (= e!1391757 0)))

(declare-fun b!2176458 () Bool)

(assert (=> b!2176458 (= e!1391757 (+ 1 (size!19706 (t!197874 (list!9676 input!5540)))))))

(assert (= (and d!651423 c!345314) b!2176457))

(assert (= (and d!651423 (not c!345314)) b!2176458))

(declare-fun m!2618115 () Bool)

(assert (=> b!2176458 m!2618115))

(assert (=> d!651249 d!651423))

(assert (=> d!651249 d!651239))

(declare-fun d!651425 () Bool)

(declare-fun lt!812167 () Int)

(assert (=> d!651425 (= lt!812167 (size!19706 (list!9678 (c!345005 input!5540))))))

(assert (=> d!651425 (= lt!812167 (ite ((_ is Empty!8167) (c!345005 input!5540)) 0 (ite ((_ is Leaf!11950) (c!345005 input!5540)) (csize!16565 (c!345005 input!5540)) (csize!16564 (c!345005 input!5540)))))))

(assert (=> d!651425 (= (size!19709 (c!345005 input!5540)) lt!812167)))

(declare-fun bs!447172 () Bool)

(assert (= bs!447172 d!651425))

(assert (=> bs!447172 m!2617777))

(assert (=> bs!447172 m!2617777))

(declare-fun m!2618117 () Bool)

(assert (=> bs!447172 m!2618117))

(assert (=> d!651249 d!651425))

(declare-fun d!651427 () Bool)

(assert (=> d!651427 (= (isEmpty!14477 (tail!3130 lt!811676)) ((_ is Nil!25222) (tail!3130 lt!811676)))))

(assert (=> b!2176145 d!651427))

(declare-fun d!651429 () Bool)

(assert (=> d!651429 (= (tail!3130 lt!811676) (t!197874 lt!811676))))

(assert (=> b!2176145 d!651429))

(declare-fun d!651431 () Bool)

(assert (=> d!651431 (= (isEmpty!14477 (tail!3130 (_1!14869 lt!811660))) ((_ is Nil!25222) (tail!3130 (_1!14869 lt!811660))))))

(assert (=> b!2175556 d!651431))

(declare-fun d!651433 () Bool)

(assert (=> d!651433 (= (tail!3130 (_1!14869 lt!811660)) (t!197874 (_1!14869 lt!811660)))))

(assert (=> b!2175556 d!651433))

(assert (=> d!651067 d!651217))

(assert (=> d!651067 d!651255))

(declare-fun d!651435 () Bool)

(declare-fun lt!812168 () Int)

(assert (=> d!651435 (>= lt!812168 0)))

(declare-fun e!1391760 () Int)

(assert (=> d!651435 (= lt!812168 e!1391760)))

(declare-fun c!345315 () Bool)

(assert (=> d!651435 (= c!345315 ((_ is Nil!25222) lt!811704))))

(assert (=> d!651435 (= (size!19706 lt!811704) lt!812168)))

(declare-fun b!2176465 () Bool)

(assert (=> b!2176465 (= e!1391760 0)))

(declare-fun b!2176466 () Bool)

(assert (=> b!2176466 (= e!1391760 (+ 1 (size!19706 (t!197874 lt!811704))))))

(assert (= (and d!651435 c!345315) b!2176465))

(assert (= (and d!651435 (not c!345315)) b!2176466))

(declare-fun m!2618119 () Bool)

(assert (=> b!2176466 m!2618119))

(assert (=> b!2175596 d!651435))

(assert (=> b!2175596 d!651269))

(declare-fun d!651437 () Bool)

(declare-fun lt!812169 () Int)

(assert (=> d!651437 (>= lt!812169 0)))

(declare-fun e!1391761 () Int)

(assert (=> d!651437 (= lt!812169 e!1391761)))

(declare-fun c!345316 () Bool)

(assert (=> d!651437 (= c!345316 ((_ is Nil!25222) (_2!14869 lt!811654)))))

(assert (=> d!651437 (= (size!19706 (_2!14869 lt!811654)) lt!812169)))

(declare-fun b!2176467 () Bool)

(assert (=> b!2176467 (= e!1391761 0)))

(declare-fun b!2176468 () Bool)

(assert (=> b!2176468 (= e!1391761 (+ 1 (size!19706 (t!197874 (_2!14869 lt!811654)))))))

(assert (= (and d!651437 c!345316) b!2176467))

(assert (= (and d!651437 (not c!345316)) b!2176468))

(declare-fun m!2618121 () Bool)

(assert (=> b!2176468 m!2618121))

(assert (=> b!2175596 d!651437))

(declare-fun d!651439 () Bool)

(assert (=> d!651439 (= (head!4658 lt!811670) (h!30623 lt!811670))))

(assert (=> bm!130668 d!651439))

(assert (=> bm!130602 d!651275))

(assert (=> bm!130605 d!651347))

(declare-fun d!651441 () Bool)

(declare-fun res!936366 () Bool)

(declare-fun e!1391767 () Bool)

(assert (=> d!651441 (=> res!936366 e!1391767)))

(assert (=> d!651441 (= res!936366 ((_ is Nil!25224) lt!811850))))

(assert (=> d!651441 (= (noDuplicate!298 lt!811850) e!1391767)))

(declare-fun b!2176478 () Bool)

(declare-fun e!1391768 () Bool)

(assert (=> b!2176478 (= e!1391767 e!1391768)))

(declare-fun res!936367 () Bool)

(assert (=> b!2176478 (=> (not res!936367) (not e!1391768))))

(declare-fun contains!4268 (List!25308 Context!3202) Bool)

(assert (=> b!2176478 (= res!936367 (not (contains!4268 (t!197876 lt!811850) (h!30625 lt!811850))))))

(declare-fun b!2176480 () Bool)

(assert (=> b!2176480 (= e!1391768 (noDuplicate!298 (t!197876 lt!811850)))))

(assert (= (and d!651441 (not res!936366)) b!2176478))

(assert (= (and b!2176478 res!936367) b!2176480))

(declare-fun m!2618133 () Bool)

(assert (=> b!2176478 m!2618133))

(declare-fun m!2618135 () Bool)

(assert (=> b!2176480 m!2618135))

(assert (=> d!651153 d!651441))

(declare-fun d!651445 () Bool)

(declare-fun e!1391784 () Bool)

(assert (=> d!651445 e!1391784))

(declare-fun res!936373 () Bool)

(assert (=> d!651445 (=> (not res!936373) (not e!1391784))))

(declare-fun res!936372 () List!25308)

(assert (=> d!651445 (= res!936373 (noDuplicate!298 res!936372))))

(declare-fun e!1391785 () Bool)

(assert (=> d!651445 e!1391785))

(assert (=> d!651445 (= (choose!12852 z!4055) res!936372)))

(declare-fun b!2176501 () Bool)

(declare-fun e!1391783 () Bool)

(declare-fun tp!678924 () Bool)

(assert (=> b!2176501 (= e!1391783 tp!678924)))

(declare-fun tp!678923 () Bool)

(declare-fun b!2176500 () Bool)

(assert (=> b!2176500 (= e!1391785 (and (inv!33504 (h!30625 res!936372)) e!1391783 tp!678923))))

(declare-fun b!2176502 () Bool)

(assert (=> b!2176502 (= e!1391784 (= (content!3437 res!936372) z!4055))))

(assert (= b!2176500 b!2176501))

(assert (= (and d!651445 ((_ is Cons!25224) res!936372)) b!2176500))

(assert (= (and d!651445 res!936373) b!2176502))

(declare-fun m!2618153 () Bool)

(assert (=> d!651445 m!2618153))

(declare-fun m!2618155 () Bool)

(assert (=> b!2176500 m!2618155))

(declare-fun m!2618157 () Bool)

(assert (=> b!2176502 m!2618157))

(assert (=> d!651153 d!651445))

(declare-fun b!2176504 () Bool)

(declare-fun e!1391786 () List!25306)

(assert (=> b!2176504 (= e!1391786 (Cons!25222 (h!30623 (t!197874 lt!811676)) (++!6390 (t!197874 (t!197874 lt!811676)) lt!811679)))))

(declare-fun lt!812170 () List!25306)

(declare-fun e!1391787 () Bool)

(declare-fun b!2176506 () Bool)

(assert (=> b!2176506 (= e!1391787 (or (not (= lt!811679 Nil!25222)) (= lt!812170 (t!197874 lt!811676))))))

(declare-fun d!651453 () Bool)

(assert (=> d!651453 e!1391787))

(declare-fun res!936374 () Bool)

(assert (=> d!651453 (=> (not res!936374) (not e!1391787))))

(assert (=> d!651453 (= res!936374 (= (content!3436 lt!812170) ((_ map or) (content!3436 (t!197874 lt!811676)) (content!3436 lt!811679))))))

(assert (=> d!651453 (= lt!812170 e!1391786)))

(declare-fun c!345325 () Bool)

(assert (=> d!651453 (= c!345325 ((_ is Nil!25222) (t!197874 lt!811676)))))

(assert (=> d!651453 (= (++!6390 (t!197874 lt!811676) lt!811679) lt!812170)))

(declare-fun b!2176505 () Bool)

(declare-fun res!936375 () Bool)

(assert (=> b!2176505 (=> (not res!936375) (not e!1391787))))

(assert (=> b!2176505 (= res!936375 (= (size!19706 lt!812170) (+ (size!19706 (t!197874 lt!811676)) (size!19706 lt!811679))))))

(declare-fun b!2176503 () Bool)

(assert (=> b!2176503 (= e!1391786 lt!811679)))

(assert (= (and d!651453 c!345325) b!2176503))

(assert (= (and d!651453 (not c!345325)) b!2176504))

(assert (= (and d!651453 res!936374) b!2176505))

(assert (= (and b!2176505 res!936375) b!2176506))

(declare-fun m!2618159 () Bool)

(assert (=> b!2176504 m!2618159))

(declare-fun m!2618161 () Bool)

(assert (=> d!651453 m!2618161))

(assert (=> d!651453 m!2618035))

(assert (=> d!651453 m!2617793))

(declare-fun m!2618163 () Bool)

(assert (=> b!2176505 m!2618163))

(declare-fun m!2618165 () Bool)

(assert (=> b!2176505 m!2618165))

(assert (=> b!2176505 m!2617797))

(assert (=> b!2176101 d!651453))

(declare-fun d!651455 () Bool)

(declare-fun nullableFct!390 (Regex!6031) Bool)

(assert (=> d!651455 (= (nullable!1705 r!12534) (nullableFct!390 r!12534))))

(declare-fun bs!447173 () Bool)

(assert (= bs!447173 d!651455))

(declare-fun m!2618167 () Bool)

(assert (=> bs!447173 m!2618167))

(assert (=> b!2175560 d!651455))

(assert (=> b!2176066 d!651347))

(declare-fun d!651457 () Bool)

(declare-fun lt!812171 () Int)

(assert (=> d!651457 (>= lt!812171 0)))

(declare-fun e!1391790 () Int)

(assert (=> d!651457 (= lt!812171 e!1391790)))

(declare-fun c!345328 () Bool)

(assert (=> d!651457 (= c!345328 ((_ is Nil!25222) (list!9676 (_1!14870 lt!811661))))))

(assert (=> d!651457 (= (size!19706 (list!9676 (_1!14870 lt!811661))) lt!812171)))

(declare-fun b!2176511 () Bool)

(assert (=> b!2176511 (= e!1391790 0)))

(declare-fun b!2176512 () Bool)

(assert (=> b!2176512 (= e!1391790 (+ 1 (size!19706 (t!197874 (list!9676 (_1!14870 lt!811661))))))))

(assert (= (and d!651457 c!345328) b!2176511))

(assert (= (and d!651457 (not c!345328)) b!2176512))

(declare-fun m!2618169 () Bool)

(assert (=> b!2176512 m!2618169))

(assert (=> d!651271 d!651457))

(assert (=> d!651271 d!651241))

(declare-fun d!651459 () Bool)

(declare-fun lt!812172 () Int)

(assert (=> d!651459 (= lt!812172 (size!19706 (list!9678 (c!345005 (_1!14870 lt!811661)))))))

(assert (=> d!651459 (= lt!812172 (ite ((_ is Empty!8167) (c!345005 (_1!14870 lt!811661))) 0 (ite ((_ is Leaf!11950) (c!345005 (_1!14870 lt!811661))) (csize!16565 (c!345005 (_1!14870 lt!811661))) (csize!16564 (c!345005 (_1!14870 lt!811661))))))))

(assert (=> d!651459 (= (size!19709 (c!345005 (_1!14870 lt!811661))) lt!812172)))

(declare-fun bs!447174 () Bool)

(assert (= bs!447174 d!651459))

(assert (=> bs!447174 m!2617779))

(assert (=> bs!447174 m!2617779))

(declare-fun m!2618175 () Bool)

(assert (=> bs!447174 m!2618175))

(assert (=> d!651271 d!651459))

(declare-fun b!2176518 () Bool)

(declare-fun e!1391797 () Bool)

(assert (=> b!2176518 (= e!1391797 (not (= (head!4658 (tail!3130 (_1!14869 lt!811654))) (c!345004 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654)))))))))

(declare-fun b!2176520 () Bool)

(declare-fun e!1391794 () Bool)

(declare-fun e!1391796 () Bool)

(assert (=> b!2176520 (= e!1391794 e!1391796)))

(declare-fun c!345333 () Bool)

(assert (=> b!2176520 (= c!345333 ((_ is EmptyLang!6031) (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654)))))))

(declare-fun b!2176522 () Bool)

(declare-fun lt!812173 () Bool)

(assert (=> b!2176522 (= e!1391796 (not lt!812173))))

(declare-fun b!2176523 () Bool)

(declare-fun e!1391795 () Bool)

(assert (=> b!2176523 (= e!1391795 (= (head!4658 (tail!3130 (_1!14869 lt!811654))) (c!345004 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654))))))))

(declare-fun bm!130731 () Bool)

(declare-fun call!130736 () Bool)

(assert (=> bm!130731 (= call!130736 (isEmpty!14477 (tail!3130 (_1!14869 lt!811654))))))

(declare-fun b!2176524 () Bool)

(declare-fun res!936376 () Bool)

(declare-fun e!1391798 () Bool)

(assert (=> b!2176524 (=> res!936376 e!1391798)))

(assert (=> b!2176524 (= res!936376 (not ((_ is ElementMatch!6031) (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654))))))))

(assert (=> b!2176524 (= e!1391796 e!1391798)))

(declare-fun b!2176525 () Bool)

(declare-fun e!1391793 () Bool)

(assert (=> b!2176525 (= e!1391798 e!1391793)))

(declare-fun res!936383 () Bool)

(assert (=> b!2176525 (=> (not res!936383) (not e!1391793))))

(assert (=> b!2176525 (= res!936383 (not lt!812173))))

(declare-fun b!2176526 () Bool)

(declare-fun res!936377 () Bool)

(assert (=> b!2176526 (=> res!936377 e!1391797)))

(assert (=> b!2176526 (= res!936377 (not (isEmpty!14477 (tail!3130 (tail!3130 (_1!14869 lt!811654))))))))

(declare-fun b!2176527 () Bool)

(declare-fun e!1391800 () Bool)

(assert (=> b!2176527 (= e!1391800 (matchR!2780 (derivativeStep!1448 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654))) (head!4658 (tail!3130 (_1!14869 lt!811654)))) (tail!3130 (tail!3130 (_1!14869 lt!811654)))))))

(declare-fun b!2176528 () Bool)

(declare-fun res!936378 () Bool)

(assert (=> b!2176528 (=> (not res!936378) (not e!1391795))))

(assert (=> b!2176528 (= res!936378 (not call!130736))))

(declare-fun d!651463 () Bool)

(assert (=> d!651463 e!1391794))

(declare-fun c!345331 () Bool)

(assert (=> d!651463 (= c!345331 ((_ is EmptyExpr!6031) (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654)))))))

(assert (=> d!651463 (= lt!812173 e!1391800)))

(declare-fun c!345332 () Bool)

(assert (=> d!651463 (= c!345332 (isEmpty!14477 (tail!3130 (_1!14869 lt!811654))))))

(assert (=> d!651463 (validRegex!2307 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654))))))

(assert (=> d!651463 (= (matchR!2780 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654))) (tail!3130 (_1!14869 lt!811654))) lt!812173)))

(declare-fun b!2176521 () Bool)

(declare-fun res!936379 () Bool)

(assert (=> b!2176521 (=> (not res!936379) (not e!1391795))))

(assert (=> b!2176521 (= res!936379 (isEmpty!14477 (tail!3130 (tail!3130 (_1!14869 lt!811654)))))))

(declare-fun b!2176529 () Bool)

(declare-fun res!936381 () Bool)

(assert (=> b!2176529 (=> res!936381 e!1391798)))

(assert (=> b!2176529 (= res!936381 e!1391795)))

(declare-fun res!936380 () Bool)

(assert (=> b!2176529 (=> (not res!936380) (not e!1391795))))

(assert (=> b!2176529 (= res!936380 lt!812173)))

(declare-fun b!2176530 () Bool)

(assert (=> b!2176530 (= e!1391800 (nullable!1705 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654)))))))

(declare-fun b!2176531 () Bool)

(assert (=> b!2176531 (= e!1391794 (= lt!812173 call!130736))))

(declare-fun b!2176532 () Bool)

(assert (=> b!2176532 (= e!1391793 e!1391797)))

(declare-fun res!936382 () Bool)

(assert (=> b!2176532 (=> res!936382 e!1391797)))

(assert (=> b!2176532 (= res!936382 call!130736)))

(assert (= (and d!651463 c!345332) b!2176530))

(assert (= (and d!651463 (not c!345332)) b!2176527))

(assert (= (and d!651463 c!345331) b!2176531))

(assert (= (and d!651463 (not c!345331)) b!2176520))

(assert (= (and b!2176520 c!345333) b!2176522))

(assert (= (and b!2176520 (not c!345333)) b!2176524))

(assert (= (and b!2176524 (not res!936376)) b!2176529))

(assert (= (and b!2176529 res!936380) b!2176528))

(assert (= (and b!2176528 res!936378) b!2176521))

(assert (= (and b!2176521 res!936379) b!2176523))

(assert (= (and b!2176529 (not res!936381)) b!2176525))

(assert (= (and b!2176525 res!936383) b!2176532))

(assert (= (and b!2176532 (not res!936382)) b!2176526))

(assert (= (and b!2176526 (not res!936377)) b!2176518))

(assert (= (or b!2176531 b!2176532 b!2176528) bm!130731))

(assert (=> b!2176526 m!2617195))

(declare-fun m!2618193 () Bool)

(assert (=> b!2176526 m!2618193))

(assert (=> b!2176526 m!2618193))

(declare-fun m!2618195 () Bool)

(assert (=> b!2176526 m!2618195))

(assert (=> bm!130731 m!2617195))

(assert (=> bm!130731 m!2617197))

(assert (=> b!2176523 m!2617195))

(declare-fun m!2618197 () Bool)

(assert (=> b!2176523 m!2618197))

(assert (=> b!2176527 m!2617195))

(assert (=> b!2176527 m!2618197))

(assert (=> b!2176527 m!2617201))

(assert (=> b!2176527 m!2618197))

(declare-fun m!2618199 () Bool)

(assert (=> b!2176527 m!2618199))

(assert (=> b!2176527 m!2617195))

(assert (=> b!2176527 m!2618193))

(assert (=> b!2176527 m!2618199))

(assert (=> b!2176527 m!2618193))

(declare-fun m!2618201 () Bool)

(assert (=> b!2176527 m!2618201))

(assert (=> b!2176530 m!2617201))

(declare-fun m!2618203 () Bool)

(assert (=> b!2176530 m!2618203))

(assert (=> b!2176518 m!2617195))

(assert (=> b!2176518 m!2618197))

(assert (=> b!2176521 m!2617195))

(assert (=> b!2176521 m!2618193))

(assert (=> b!2176521 m!2618193))

(assert (=> b!2176521 m!2618195))

(assert (=> d!651463 m!2617195))

(assert (=> d!651463 m!2617197))

(assert (=> d!651463 m!2617201))

(declare-fun m!2618205 () Bool)

(assert (=> d!651463 m!2618205))

(assert (=> b!2175571 d!651463))

(declare-fun b!2176533 () Bool)

(declare-fun e!1391804 () Regex!6031)

(assert (=> b!2176533 (= e!1391804 EmptyLang!6031)))

(declare-fun bm!130732 () Bool)

(declare-fun call!130738 () Regex!6031)

(declare-fun c!345337 () Bool)

(declare-fun c!345335 () Bool)

(assert (=> bm!130732 (= call!130738 (derivativeStep!1448 (ite c!345335 (regTwo!12575 r!12534) (ite c!345337 (reg!6360 r!12534) (regOne!12574 r!12534))) (head!4658 (_1!14869 lt!811654))))))

(declare-fun b!2176535 () Bool)

(declare-fun e!1391805 () Regex!6031)

(declare-fun call!130739 () Regex!6031)

(assert (=> b!2176535 (= e!1391805 (Union!6031 call!130739 call!130738))))

(declare-fun b!2176536 () Bool)

(declare-fun e!1391803 () Regex!6031)

(assert (=> b!2176536 (= e!1391804 e!1391803)))

(declare-fun c!345336 () Bool)

(assert (=> b!2176536 (= c!345336 ((_ is ElementMatch!6031) r!12534))))

(declare-fun b!2176537 () Bool)

(declare-fun e!1391801 () Regex!6031)

(declare-fun call!130737 () Regex!6031)

(assert (=> b!2176537 (= e!1391801 (Concat!10333 call!130737 r!12534))))

(declare-fun b!2176538 () Bool)

(declare-fun e!1391802 () Regex!6031)

(declare-fun call!130740 () Regex!6031)

(assert (=> b!2176538 (= e!1391802 (Union!6031 (Concat!10333 call!130740 (regTwo!12574 r!12534)) EmptyLang!6031))))

(declare-fun b!2176539 () Bool)

(assert (=> b!2176539 (= c!345335 ((_ is Union!6031) r!12534))))

(assert (=> b!2176539 (= e!1391803 e!1391805)))

(declare-fun bm!130733 () Bool)

(assert (=> bm!130733 (= call!130740 call!130737)))

(declare-fun bm!130734 () Bool)

(assert (=> bm!130734 (= call!130739 (derivativeStep!1448 (ite c!345335 (regOne!12575 r!12534) (regTwo!12574 r!12534)) (head!4658 (_1!14869 lt!811654))))))

(declare-fun b!2176540 () Bool)

(assert (=> b!2176540 (= e!1391802 (Union!6031 (Concat!10333 call!130740 (regTwo!12574 r!12534)) call!130739))))

(declare-fun b!2176541 () Bool)

(assert (=> b!2176541 (= e!1391803 (ite (= (head!4658 (_1!14869 lt!811654)) (c!345004 r!12534)) EmptyExpr!6031 EmptyLang!6031))))

(declare-fun b!2176534 () Bool)

(declare-fun c!345338 () Bool)

(assert (=> b!2176534 (= c!345338 (nullable!1705 (regOne!12574 r!12534)))))

(assert (=> b!2176534 (= e!1391801 e!1391802)))

(declare-fun d!651469 () Bool)

(declare-fun lt!812174 () Regex!6031)

(assert (=> d!651469 (validRegex!2307 lt!812174)))

(assert (=> d!651469 (= lt!812174 e!1391804)))

(declare-fun c!345339 () Bool)

(assert (=> d!651469 (= c!345339 (or ((_ is EmptyExpr!6031) r!12534) ((_ is EmptyLang!6031) r!12534)))))

(assert (=> d!651469 (validRegex!2307 r!12534)))

(assert (=> d!651469 (= (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811654))) lt!812174)))

(declare-fun bm!130735 () Bool)

(assert (=> bm!130735 (= call!130737 call!130738)))

(declare-fun b!2176542 () Bool)

(assert (=> b!2176542 (= e!1391805 e!1391801)))

(assert (=> b!2176542 (= c!345337 ((_ is Star!6031) r!12534))))

(assert (= (and d!651469 c!345339) b!2176533))

(assert (= (and d!651469 (not c!345339)) b!2176536))

(assert (= (and b!2176536 c!345336) b!2176541))

(assert (= (and b!2176536 (not c!345336)) b!2176539))

(assert (= (and b!2176539 c!345335) b!2176535))

(assert (= (and b!2176539 (not c!345335)) b!2176542))

(assert (= (and b!2176542 c!345337) b!2176537))

(assert (= (and b!2176542 (not c!345337)) b!2176534))

(assert (= (and b!2176534 c!345338) b!2176540))

(assert (= (and b!2176534 (not c!345338)) b!2176538))

(assert (= (or b!2176540 b!2176538) bm!130733))

(assert (= (or b!2176537 bm!130733) bm!130735))

(assert (= (or b!2176535 b!2176540) bm!130734))

(assert (= (or b!2176535 bm!130735) bm!130732))

(assert (=> bm!130732 m!2617199))

(declare-fun m!2618207 () Bool)

(assert (=> bm!130732 m!2618207))

(assert (=> bm!130734 m!2617199))

(declare-fun m!2618209 () Bool)

(assert (=> bm!130734 m!2618209))

(assert (=> b!2176534 m!2617985))

(declare-fun m!2618211 () Bool)

(assert (=> d!651469 m!2618211))

(assert (=> d!651469 m!2617091))

(assert (=> b!2175571 d!651469))

(declare-fun d!651471 () Bool)

(assert (=> d!651471 (= (head!4658 (_1!14869 lt!811654)) (h!30623 (_1!14869 lt!811654)))))

(assert (=> b!2175571 d!651471))

(declare-fun d!651473 () Bool)

(assert (=> d!651473 (= (tail!3130 (_1!14869 lt!811654)) (t!197874 (_1!14869 lt!811654)))))

(assert (=> b!2175571 d!651473))

(assert (=> b!2176085 d!651471))

(declare-fun d!651475 () Bool)

(assert (=> d!651475 (= (head!4658 lt!811666) (h!30623 lt!811666))))

(assert (=> b!2176085 d!651475))

(declare-fun d!651477 () Bool)

(declare-fun c!345342 () Bool)

(assert (=> d!651477 (= c!345342 ((_ is Node!8167) (left!19365 (c!345005 totalInput!977))))))

(declare-fun e!1391806 () Bool)

(assert (=> d!651477 (= (inv!33505 (left!19365 (c!345005 totalInput!977))) e!1391806)))

(declare-fun b!2176543 () Bool)

(assert (=> b!2176543 (= e!1391806 (inv!33509 (left!19365 (c!345005 totalInput!977))))))

(declare-fun b!2176544 () Bool)

(declare-fun e!1391807 () Bool)

(assert (=> b!2176544 (= e!1391806 e!1391807)))

(declare-fun res!936384 () Bool)

(assert (=> b!2176544 (= res!936384 (not ((_ is Leaf!11950) (left!19365 (c!345005 totalInput!977)))))))

(assert (=> b!2176544 (=> res!936384 e!1391807)))

(declare-fun b!2176545 () Bool)

(assert (=> b!2176545 (= e!1391807 (inv!33510 (left!19365 (c!345005 totalInput!977))))))

(assert (= (and d!651477 c!345342) b!2176543))

(assert (= (and d!651477 (not c!345342)) b!2176544))

(assert (= (and b!2176544 (not res!936384)) b!2176545))

(declare-fun m!2618213 () Bool)

(assert (=> b!2176543 m!2618213))

(declare-fun m!2618215 () Bool)

(assert (=> b!2176545 m!2618215))

(assert (=> b!2176191 d!651477))

(declare-fun d!651479 () Bool)

(declare-fun c!345343 () Bool)

(assert (=> d!651479 (= c!345343 ((_ is Node!8167) (right!19695 (c!345005 totalInput!977))))))

(declare-fun e!1391808 () Bool)

(assert (=> d!651479 (= (inv!33505 (right!19695 (c!345005 totalInput!977))) e!1391808)))

(declare-fun b!2176548 () Bool)

(assert (=> b!2176548 (= e!1391808 (inv!33509 (right!19695 (c!345005 totalInput!977))))))

(declare-fun b!2176549 () Bool)

(declare-fun e!1391809 () Bool)

(assert (=> b!2176549 (= e!1391808 e!1391809)))

(declare-fun res!936385 () Bool)

(assert (=> b!2176549 (= res!936385 (not ((_ is Leaf!11950) (right!19695 (c!345005 totalInput!977)))))))

(assert (=> b!2176549 (=> res!936385 e!1391809)))

(declare-fun b!2176550 () Bool)

(assert (=> b!2176550 (= e!1391809 (inv!33510 (right!19695 (c!345005 totalInput!977))))))

(assert (= (and d!651479 c!345343) b!2176548))

(assert (= (and d!651479 (not c!345343)) b!2176549))

(assert (= (and b!2176549 (not res!936385)) b!2176550))

(declare-fun m!2618219 () Bool)

(assert (=> b!2176548 m!2618219))

(declare-fun m!2618221 () Bool)

(assert (=> b!2176550 m!2618221))

(assert (=> b!2176191 d!651479))

(declare-fun d!651487 () Bool)

(declare-fun lt!812175 () Int)

(assert (=> d!651487 (>= lt!812175 0)))

(declare-fun e!1391810 () Int)

(assert (=> d!651487 (= lt!812175 e!1391810)))

(declare-fun c!345344 () Bool)

(assert (=> d!651487 (= c!345344 ((_ is Nil!25222) (drop!1249 lt!811667 lt!811673)))))

(assert (=> d!651487 (= (size!19706 (drop!1249 lt!811667 lt!811673)) lt!812175)))

(declare-fun b!2176551 () Bool)

(assert (=> b!2176551 (= e!1391810 0)))

(declare-fun b!2176552 () Bool)

(assert (=> b!2176552 (= e!1391810 (+ 1 (size!19706 (t!197874 (drop!1249 lt!811667 lt!811673)))))))

(assert (= (and d!651487 c!345344) b!2176551))

(assert (= (and d!651487 (not c!345344)) b!2176552))

(declare-fun m!2618223 () Bool)

(assert (=> b!2176552 m!2618223))

(assert (=> b!2175621 d!651487))

(declare-fun d!651489 () Bool)

(assert (=> d!651489 (= (sizeTr!122 lt!811670 lt!812055) (+ (size!19706 lt!811670) lt!812055))))

(declare-fun lt!812178 () Unit!38293)

(declare-fun choose!12858 (List!25306 Int) Unit!38293)

(assert (=> d!651489 (= lt!812178 (choose!12858 lt!811670 lt!812055))))

(assert (=> d!651489 (= (lemmaSizeTrEqualsSize!121 lt!811670 lt!812055) lt!812178)))

(declare-fun bs!447176 () Bool)

(assert (= bs!447176 d!651489))

(assert (=> bs!447176 m!2617817))

(assert (=> bs!447176 m!2617047))

(declare-fun m!2618229 () Bool)

(assert (=> bs!447176 m!2618229))

(assert (=> d!651251 d!651489))

(declare-fun d!651493 () Bool)

(declare-fun lt!812180 () Int)

(assert (=> d!651493 (>= lt!812180 0)))

(declare-fun e!1391817 () Int)

(assert (=> d!651493 (= lt!812180 e!1391817)))

(declare-fun c!345348 () Bool)

(assert (=> d!651493 (= c!345348 ((_ is Nil!25222) lt!812051))))

(assert (=> d!651493 (= (size!19706 lt!812051) lt!812180)))

(declare-fun b!2176563 () Bool)

(assert (=> b!2176563 (= e!1391817 0)))

(declare-fun b!2176564 () Bool)

(assert (=> b!2176564 (= e!1391817 (+ 1 (size!19706 (t!197874 lt!812051))))))

(assert (= (and d!651493 c!345348) b!2176563))

(assert (= (and d!651493 (not c!345348)) b!2176564))

(declare-fun m!2618231 () Bool)

(assert (=> b!2176564 m!2618231))

(assert (=> d!651251 d!651493))

(declare-fun d!651495 () Bool)

(declare-fun c!345351 () Bool)

(assert (=> d!651495 (= c!345351 ((_ is Nil!25222) lt!811670))))

(declare-fun e!1391820 () Int)

(assert (=> d!651495 (= (sizeTr!122 lt!811670 0) e!1391820)))

(declare-fun b!2176569 () Bool)

(assert (=> b!2176569 (= e!1391820 0)))

(declare-fun b!2176570 () Bool)

(assert (=> b!2176570 (= e!1391820 (sizeTr!122 (t!197874 lt!811670) (+ 0 1)))))

(assert (= (and d!651495 c!345351) b!2176569))

(assert (= (and d!651495 (not c!345351)) b!2176570))

(declare-fun m!2618247 () Bool)

(assert (=> b!2176570 m!2618247))

(assert (=> d!651251 d!651495))

(declare-fun b!2176575 () Bool)

(declare-fun e!1391828 () tuple2!24998)

(declare-fun call!130743 () tuple2!24998)

(assert (=> b!2176575 (= e!1391828 call!130743)))

(declare-fun bm!130736 () Bool)

(declare-fun call!130742 () Bool)

(assert (=> bm!130736 (= call!130742 (isPrefix!2147 lt!811670 lt!811670))))

(declare-fun b!2176576 () Bool)

(declare-fun c!345355 () Bool)

(declare-fun call!130746 () Bool)

(assert (=> b!2176576 (= c!345355 call!130746)))

(declare-fun lt!812187 () Unit!38293)

(declare-fun lt!812200 () Unit!38293)

(assert (=> b!2176576 (= lt!812187 lt!812200)))

(assert (=> b!2176576 (= lt!811670 Nil!25222)))

(declare-fun call!130748 () Unit!38293)

(assert (=> b!2176576 (= lt!812200 call!130748)))

(declare-fun lt!812208 () Unit!38293)

(declare-fun lt!812191 () Unit!38293)

(assert (=> b!2176576 (= lt!812208 lt!812191)))

(assert (=> b!2176576 call!130742))

(declare-fun call!130744 () Unit!38293)

(assert (=> b!2176576 (= lt!812191 call!130744)))

(declare-fun e!1391826 () tuple2!24998)

(declare-fun e!1391827 () tuple2!24998)

(assert (=> b!2176576 (= e!1391826 e!1391827)))

(declare-fun call!130747 () Regex!6031)

(declare-fun lt!812205 () List!25306)

(declare-fun bm!130737 () Bool)

(declare-fun call!130741 () List!25306)

(assert (=> bm!130737 (= call!130743 (findLongestMatchInner!656 call!130747 lt!812205 (+ 0 1) call!130741 lt!811670 (sizeTr!122 lt!811670 0)))))

(declare-fun bm!130738 () Bool)

(declare-fun call!130745 () C!12208)

(assert (=> bm!130738 (= call!130747 (derivativeStep!1448 r!12534 call!130745))))

(declare-fun b!2176577 () Bool)

(declare-fun e!1391824 () tuple2!24998)

(declare-fun lt!812182 () tuple2!24998)

(assert (=> b!2176577 (= e!1391824 lt!812182)))

(declare-fun d!651499 () Bool)

(declare-fun e!1391825 () Bool)

(assert (=> d!651499 e!1391825))

(declare-fun res!936392 () Bool)

(assert (=> d!651499 (=> (not res!936392) (not e!1391825))))

(declare-fun lt!812198 () tuple2!24998)

(assert (=> d!651499 (= res!936392 (= (++!6390 (_1!14869 lt!812198) (_2!14869 lt!812198)) lt!811670))))

(declare-fun e!1391829 () tuple2!24998)

(assert (=> d!651499 (= lt!812198 e!1391829)))

(declare-fun c!345357 () Bool)

(assert (=> d!651499 (= c!345357 (lostCause!677 r!12534))))

(declare-fun lt!812192 () Unit!38293)

(declare-fun Unit!38306 () Unit!38293)

(assert (=> d!651499 (= lt!812192 Unit!38306)))

(assert (=> d!651499 (= (getSuffix!1042 lt!811670 Nil!25222) lt!811670)))

(declare-fun lt!812206 () Unit!38293)

(declare-fun lt!812189 () Unit!38293)

(assert (=> d!651499 (= lt!812206 lt!812189)))

(declare-fun lt!812183 () List!25306)

(assert (=> d!651499 (= lt!811670 lt!812183)))

(assert (=> d!651499 (= lt!812189 (lemmaSamePrefixThenSameSuffix!964 Nil!25222 lt!811670 Nil!25222 lt!812183 lt!811670))))

(assert (=> d!651499 (= lt!812183 (getSuffix!1042 lt!811670 Nil!25222))))

(declare-fun lt!812193 () Unit!38293)

(declare-fun lt!812194 () Unit!38293)

(assert (=> d!651499 (= lt!812193 lt!812194)))

(assert (=> d!651499 (isPrefix!2147 Nil!25222 (++!6390 Nil!25222 lt!811670))))

(assert (=> d!651499 (= lt!812194 (lemmaConcatTwoListThenFirstIsPrefix!1430 Nil!25222 lt!811670))))

(assert (=> d!651499 (validRegex!2307 r!12534)))

(assert (=> d!651499 (= (findLongestMatchInner!656 r!12534 Nil!25222 0 lt!811670 lt!811670 (sizeTr!122 lt!811670 0)) lt!812198)))

(declare-fun b!2176578 () Bool)

(assert (=> b!2176578 (= e!1391827 (tuple2!24999 Nil!25222 lt!811670))))

(declare-fun b!2176579 () Bool)

(declare-fun c!345358 () Bool)

(assert (=> b!2176579 (= c!345358 call!130746)))

(declare-fun lt!812185 () Unit!38293)

(declare-fun lt!812199 () Unit!38293)

(assert (=> b!2176579 (= lt!812185 lt!812199)))

(declare-fun lt!812202 () C!12208)

(declare-fun lt!812196 () List!25306)

(assert (=> b!2176579 (= (++!6390 (++!6390 Nil!25222 (Cons!25222 lt!812202 Nil!25222)) lt!812196) lt!811670)))

(assert (=> b!2176579 (= lt!812199 (lemmaMoveElementToOtherListKeepsConcatEq!515 Nil!25222 lt!812202 lt!812196 lt!811670))))

(assert (=> b!2176579 (= lt!812196 (tail!3130 lt!811670))))

(assert (=> b!2176579 (= lt!812202 (head!4658 lt!811670))))

(declare-fun lt!812207 () Unit!38293)

(declare-fun lt!812209 () Unit!38293)

(assert (=> b!2176579 (= lt!812207 lt!812209)))

(assert (=> b!2176579 (isPrefix!2147 (++!6390 Nil!25222 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222)) lt!811670)))

(assert (=> b!2176579 (= lt!812209 (lemmaAddHeadSuffixToPrefixStillPrefix!387 Nil!25222 lt!811670))))

(declare-fun lt!812184 () Unit!38293)

(declare-fun lt!812201 () Unit!38293)

(assert (=> b!2176579 (= lt!812184 lt!812201)))

(assert (=> b!2176579 (= lt!812201 (lemmaAddHeadSuffixToPrefixStillPrefix!387 Nil!25222 lt!811670))))

(assert (=> b!2176579 (= lt!812205 (++!6390 Nil!25222 (Cons!25222 (head!4658 lt!811670) Nil!25222)))))

(declare-fun lt!812190 () Unit!38293)

(declare-fun e!1391830 () Unit!38293)

(assert (=> b!2176579 (= lt!812190 e!1391830)))

(declare-fun c!345353 () Bool)

(assert (=> b!2176579 (= c!345353 (= (size!19706 Nil!25222) (size!19706 lt!811670)))))

(declare-fun lt!812203 () Unit!38293)

(declare-fun lt!812188 () Unit!38293)

(assert (=> b!2176579 (= lt!812203 lt!812188)))

(assert (=> b!2176579 (<= (size!19706 Nil!25222) (size!19706 lt!811670))))

(assert (=> b!2176579 (= lt!812188 (lemmaIsPrefixThenSmallerEqSize!190 Nil!25222 lt!811670))))

(assert (=> b!2176579 (= e!1391826 e!1391828)))

(declare-fun b!2176580 () Bool)

(declare-fun e!1391823 () Bool)

(assert (=> b!2176580 (= e!1391823 (>= (size!19706 (_1!14869 lt!812198)) (size!19706 Nil!25222)))))

(declare-fun bm!130739 () Bool)

(assert (=> bm!130739 (= call!130744 (lemmaIsPrefixRefl!1417 lt!811670 lt!811670))))

(declare-fun b!2176581 () Bool)

(assert (=> b!2176581 (= e!1391829 (tuple2!24999 Nil!25222 lt!811670))))

(declare-fun b!2176582 () Bool)

(assert (=> b!2176582 (= e!1391825 e!1391823)))

(declare-fun res!936393 () Bool)

(assert (=> b!2176582 (=> res!936393 e!1391823)))

(assert (=> b!2176582 (= res!936393 (isEmpty!14477 (_1!14869 lt!812198)))))

(declare-fun b!2176583 () Bool)

(declare-fun Unit!38307 () Unit!38293)

(assert (=> b!2176583 (= e!1391830 Unit!38307)))

(declare-fun b!2176584 () Bool)

(assert (=> b!2176584 (= e!1391824 (tuple2!24999 Nil!25222 lt!811670))))

(declare-fun bm!130740 () Bool)

(assert (=> bm!130740 (= call!130741 (tail!3130 lt!811670))))

(declare-fun b!2176585 () Bool)

(assert (=> b!2176585 (= e!1391829 e!1391826)))

(declare-fun c!345354 () Bool)

(assert (=> b!2176585 (= c!345354 (= 0 (sizeTr!122 lt!811670 0)))))

(declare-fun bm!130741 () Bool)

(assert (=> bm!130741 (= call!130745 (head!4658 lt!811670))))

(declare-fun b!2176586 () Bool)

(assert (=> b!2176586 (= e!1391827 (tuple2!24999 Nil!25222 Nil!25222))))

(declare-fun bm!130742 () Bool)

(assert (=> bm!130742 (= call!130746 (nullable!1705 r!12534))))

(declare-fun b!2176587 () Bool)

(assert (=> b!2176587 (= e!1391828 e!1391824)))

(assert (=> b!2176587 (= lt!812182 call!130743)))

(declare-fun c!345356 () Bool)

(assert (=> b!2176587 (= c!345356 (isEmpty!14477 (_1!14869 lt!812182)))))

(declare-fun b!2176588 () Bool)

(declare-fun Unit!38308 () Unit!38293)

(assert (=> b!2176588 (= e!1391830 Unit!38308)))

(declare-fun lt!812197 () Unit!38293)

(assert (=> b!2176588 (= lt!812197 call!130744)))

(assert (=> b!2176588 call!130742))

(declare-fun lt!812204 () Unit!38293)

(assert (=> b!2176588 (= lt!812204 lt!812197)))

(declare-fun lt!812186 () Unit!38293)

(assert (=> b!2176588 (= lt!812186 call!130748)))

(assert (=> b!2176588 (= lt!811670 Nil!25222)))

(declare-fun lt!812195 () Unit!38293)

(assert (=> b!2176588 (= lt!812195 lt!812186)))

(assert (=> b!2176588 false))

(declare-fun bm!130743 () Bool)

(assert (=> bm!130743 (= call!130748 (lemmaIsPrefixSameLengthThenSameList!359 lt!811670 Nil!25222 lt!811670))))

(assert (= (and d!651499 c!345357) b!2176581))

(assert (= (and d!651499 (not c!345357)) b!2176585))

(assert (= (and b!2176585 c!345354) b!2176576))

(assert (= (and b!2176585 (not c!345354)) b!2176579))

(assert (= (and b!2176576 c!345355) b!2176586))

(assert (= (and b!2176576 (not c!345355)) b!2176578))

(assert (= (and b!2176579 c!345353) b!2176588))

(assert (= (and b!2176579 (not c!345353)) b!2176583))

(assert (= (and b!2176579 c!345358) b!2176587))

(assert (= (and b!2176579 (not c!345358)) b!2176575))

(assert (= (and b!2176587 c!345356) b!2176584))

(assert (= (and b!2176587 (not c!345356)) b!2176577))

(assert (= (or b!2176587 b!2176575) bm!130741))

(assert (= (or b!2176587 b!2176575) bm!130740))

(assert (= (or b!2176587 b!2176575) bm!130738))

(assert (= (or b!2176587 b!2176575) bm!130737))

(assert (= (or b!2176576 b!2176588) bm!130736))

(assert (= (or b!2176576 b!2176588) bm!130739))

(assert (= (or b!2176576 b!2176588) bm!130743))

(assert (= (or b!2176576 b!2176579) bm!130742))

(assert (= (and d!651499 res!936392) b!2176582))

(assert (= (and b!2176582 (not res!936393)) b!2176580))

(assert (=> bm!130741 m!2617441))

(assert (=> bm!130739 m!2617647))

(declare-fun m!2618263 () Bool)

(assert (=> b!2176582 m!2618263))

(assert (=> b!2176579 m!2617061))

(assert (=> b!2176579 m!2617651))

(assert (=> b!2176579 m!2617653))

(assert (=> b!2176579 m!2617655))

(assert (=> b!2176579 m!2617657))

(assert (=> b!2176579 m!2617653))

(assert (=> b!2176579 m!2617047))

(assert (=> b!2176579 m!2617659))

(assert (=> b!2176579 m!2617447))

(declare-fun m!2618265 () Bool)

(assert (=> b!2176579 m!2618265))

(assert (=> b!2176579 m!2617663))

(assert (=> b!2176579 m!2617441))

(declare-fun m!2618267 () Bool)

(assert (=> b!2176579 m!2618267))

(assert (=> b!2176579 m!2618267))

(declare-fun m!2618269 () Bool)

(assert (=> b!2176579 m!2618269))

(assert (=> b!2176579 m!2617663))

(assert (=> b!2176579 m!2617669))

(assert (=> d!651499 m!2617671))

(assert (=> d!651499 m!2617673))

(assert (=> d!651499 m!2617675))

(declare-fun m!2618271 () Bool)

(assert (=> d!651499 m!2618271))

(assert (=> d!651499 m!2617091))

(declare-fun m!2618273 () Bool)

(assert (=> d!651499 m!2618273))

(assert (=> d!651499 m!2617671))

(assert (=> d!651499 m!2617681))

(assert (=> d!651499 m!2617663))

(assert (=> bm!130743 m!2617683))

(declare-fun m!2618275 () Bool)

(assert (=> b!2176580 m!2618275))

(assert (=> b!2176580 m!2617061))

(assert (=> bm!130742 m!2617193))

(declare-fun m!2618277 () Bool)

(assert (=> b!2176587 m!2618277))

(assert (=> bm!130740 m!2617447))

(assert (=> bm!130737 m!2617803))

(declare-fun m!2618279 () Bool)

(assert (=> bm!130737 m!2618279))

(declare-fun m!2618281 () Bool)

(assert (=> bm!130738 m!2618281))

(assert (=> bm!130736 m!2617693))

(assert (=> d!651251 d!651499))

(declare-fun b!2176594 () Bool)

(declare-fun e!1391833 () List!25306)

(assert (=> b!2176594 (= e!1391833 (Cons!25222 (h!30623 (_1!14869 lt!812053)) (++!6390 (t!197874 (_1!14869 lt!812053)) (_2!14869 lt!812053))))))

(declare-fun b!2176596 () Bool)

(declare-fun e!1391834 () Bool)

(declare-fun lt!812213 () List!25306)

(assert (=> b!2176596 (= e!1391834 (or (not (= (_2!14869 lt!812053) Nil!25222)) (= lt!812213 (_1!14869 lt!812053))))))

(declare-fun d!651507 () Bool)

(assert (=> d!651507 e!1391834))

(declare-fun res!936394 () Bool)

(assert (=> d!651507 (=> (not res!936394) (not e!1391834))))

(assert (=> d!651507 (= res!936394 (= (content!3436 lt!812213) ((_ map or) (content!3436 (_1!14869 lt!812053)) (content!3436 (_2!14869 lt!812053)))))))

(assert (=> d!651507 (= lt!812213 e!1391833)))

(declare-fun c!345361 () Bool)

(assert (=> d!651507 (= c!345361 ((_ is Nil!25222) (_1!14869 lt!812053)))))

(assert (=> d!651507 (= (++!6390 (_1!14869 lt!812053) (_2!14869 lt!812053)) lt!812213)))

(declare-fun b!2176595 () Bool)

(declare-fun res!936395 () Bool)

(assert (=> b!2176595 (=> (not res!936395) (not e!1391834))))

(assert (=> b!2176595 (= res!936395 (= (size!19706 lt!812213) (+ (size!19706 (_1!14869 lt!812053)) (size!19706 (_2!14869 lt!812053)))))))

(declare-fun b!2176593 () Bool)

(assert (=> b!2176593 (= e!1391833 (_2!14869 lt!812053))))

(assert (= (and d!651507 c!345361) b!2176593))

(assert (= (and d!651507 (not c!345361)) b!2176594))

(assert (= (and d!651507 res!936394) b!2176595))

(assert (= (and b!2176595 res!936395) b!2176596))

(declare-fun m!2618283 () Bool)

(assert (=> b!2176594 m!2618283))

(declare-fun m!2618285 () Bool)

(assert (=> d!651507 m!2618285))

(declare-fun m!2618287 () Bool)

(assert (=> d!651507 m!2618287))

(declare-fun m!2618289 () Bool)

(assert (=> d!651507 m!2618289))

(declare-fun m!2618291 () Bool)

(assert (=> b!2176595 m!2618291))

(declare-fun m!2618293 () Bool)

(assert (=> b!2176595 m!2618293))

(declare-fun m!2618295 () Bool)

(assert (=> b!2176595 m!2618295))

(assert (=> d!651251 d!651507))

(declare-fun d!651509 () Bool)

(assert (=> d!651509 (= (sizeTr!122 lt!812051 lt!812049) (+ (size!19706 lt!812051) lt!812049))))

(declare-fun lt!812215 () Unit!38293)

(assert (=> d!651509 (= lt!812215 (choose!12858 lt!812051 lt!812049))))

(assert (=> d!651509 (= (lemmaSizeTrEqualsSize!121 lt!812051 lt!812049) lt!812215)))

(declare-fun bs!447179 () Bool)

(assert (= bs!447179 d!651509))

(assert (=> bs!447179 m!2617807))

(assert (=> bs!447179 m!2617809))

(declare-fun m!2618301 () Bool)

(assert (=> bs!447179 m!2618301))

(assert (=> d!651251 d!651509))

(declare-fun d!651513 () Bool)

(declare-fun c!345363 () Bool)

(assert (=> d!651513 (= c!345363 ((_ is Nil!25222) lt!811670))))

(declare-fun e!1391836 () Int)

(assert (=> d!651513 (= (sizeTr!122 lt!811670 lt!812055) e!1391836)))

(declare-fun b!2176599 () Bool)

(assert (=> b!2176599 (= e!1391836 lt!812055)))

(declare-fun b!2176600 () Bool)

(assert (=> b!2176600 (= e!1391836 (sizeTr!122 (t!197874 lt!811670) (+ lt!812055 1)))))

(assert (= (and d!651513 c!345363) b!2176599))

(assert (= (and d!651513 (not c!345363)) b!2176600))

(declare-fun m!2618303 () Bool)

(assert (=> b!2176600 m!2618303))

(assert (=> d!651251 d!651513))

(assert (=> d!651251 d!651255))

(assert (=> d!651251 d!651207))

(declare-fun d!651515 () Bool)

(declare-fun c!345364 () Bool)

(assert (=> d!651515 (= c!345364 ((_ is Nil!25222) lt!812051))))

(declare-fun e!1391837 () Int)

(assert (=> d!651515 (= (sizeTr!122 lt!812051 lt!812049) e!1391837)))

(declare-fun b!2176601 () Bool)

(assert (=> b!2176601 (= e!1391837 lt!812049)))

(declare-fun b!2176602 () Bool)

(assert (=> b!2176602 (= e!1391837 (sizeTr!122 (t!197874 lt!812051) (+ lt!812049 1)))))

(assert (= (and d!651515 c!345364) b!2176601))

(assert (= (and d!651515 (not c!345364)) b!2176602))

(declare-fun m!2618305 () Bool)

(assert (=> b!2176602 m!2618305))

(assert (=> d!651251 d!651515))

(declare-fun d!651517 () Bool)

(declare-fun lt!812216 () Int)

(assert (=> d!651517 (>= lt!812216 0)))

(declare-fun e!1391838 () Int)

(assert (=> d!651517 (= lt!812216 e!1391838)))

(declare-fun c!345365 () Bool)

(assert (=> d!651517 (= c!345365 ((_ is Nil!25222) lt!811837))))

(assert (=> d!651517 (= (size!19706 lt!811837) lt!812216)))

(declare-fun b!2176603 () Bool)

(assert (=> b!2176603 (= e!1391838 0)))

(declare-fun b!2176604 () Bool)

(assert (=> b!2176604 (= e!1391838 (+ 1 (size!19706 (t!197874 lt!811837))))))

(assert (= (and d!651517 c!345365) b!2176603))

(assert (= (and d!651517 (not c!345365)) b!2176604))

(declare-fun m!2618307 () Bool)

(assert (=> b!2176604 m!2618307))

(assert (=> b!2175837 d!651517))

(declare-fun d!651519 () Bool)

(declare-fun lt!812217 () Int)

(assert (=> d!651519 (>= lt!812217 0)))

(declare-fun e!1391839 () Int)

(assert (=> d!651519 (= lt!812217 e!1391839)))

(declare-fun c!345366 () Bool)

(assert (=> d!651519 (= c!345366 ((_ is Nil!25222) (t!197874 (_1!14869 lt!811654))))))

(assert (=> d!651519 (= (size!19706 (t!197874 (_1!14869 lt!811654))) lt!812217)))

(declare-fun b!2176605 () Bool)

(assert (=> b!2176605 (= e!1391839 0)))

(declare-fun b!2176606 () Bool)

(assert (=> b!2176606 (= e!1391839 (+ 1 (size!19706 (t!197874 (t!197874 (_1!14869 lt!811654))))))))

(assert (= (and d!651519 c!345366) b!2176605))

(assert (= (and d!651519 (not c!345366)) b!2176606))

(declare-fun m!2618309 () Bool)

(assert (=> b!2176606 m!2618309))

(assert (=> b!2176160 d!651519))

(declare-fun d!651521 () Bool)

(assert (=> d!651521 (= (isEmpty!14477 lt!811676) ((_ is Nil!25222) lt!811676))))

(assert (=> d!651223 d!651521))

(declare-fun b!2176607 () Bool)

(declare-fun res!936397 () Bool)

(declare-fun e!1391845 () Bool)

(assert (=> b!2176607 (=> res!936397 e!1391845)))

(assert (=> b!2176607 (= res!936397 (not ((_ is Concat!10333) (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534))))))))

(declare-fun e!1391846 () Bool)

(assert (=> b!2176607 (= e!1391846 e!1391845)))

(declare-fun b!2176608 () Bool)

(declare-fun e!1391841 () Bool)

(declare-fun call!130750 () Bool)

(assert (=> b!2176608 (= e!1391841 call!130750)))

(declare-fun bm!130744 () Bool)

(declare-fun call!130751 () Bool)

(assert (=> bm!130744 (= call!130751 call!130750)))

(declare-fun bm!130745 () Bool)

(declare-fun c!345368 () Bool)

(declare-fun c!345367 () Bool)

(assert (=> bm!130745 (= call!130750 (validRegex!2307 (ite c!345367 (reg!6360 (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))) (ite c!345368 (regTwo!12575 (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))) (regOne!12574 (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534))))))))))

(declare-fun b!2176609 () Bool)

(declare-fun e!1391844 () Bool)

(assert (=> b!2176609 (= e!1391844 e!1391841)))

(declare-fun res!936398 () Bool)

(assert (=> b!2176609 (= res!936398 (not (nullable!1705 (reg!6360 (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))))))))

(assert (=> b!2176609 (=> (not res!936398) (not e!1391841))))

(declare-fun b!2176610 () Bool)

(assert (=> b!2176610 (= e!1391844 e!1391846)))

(assert (=> b!2176610 (= c!345368 ((_ is Union!6031) (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))))))

(declare-fun b!2176611 () Bool)

(declare-fun e!1391843 () Bool)

(declare-fun call!130749 () Bool)

(assert (=> b!2176611 (= e!1391843 call!130749)))

(declare-fun bm!130746 () Bool)

(assert (=> bm!130746 (= call!130749 (validRegex!2307 (ite c!345368 (regOne!12575 (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))) (regTwo!12574 (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))))))))

(declare-fun b!2176612 () Bool)

(declare-fun e!1391842 () Bool)

(assert (=> b!2176612 (= e!1391842 e!1391844)))

(assert (=> b!2176612 (= c!345367 ((_ is Star!6031) (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))))))

(declare-fun b!2176613 () Bool)

(declare-fun res!936400 () Bool)

(declare-fun e!1391840 () Bool)

(assert (=> b!2176613 (=> (not res!936400) (not e!1391840))))

(assert (=> b!2176613 (= res!936400 call!130749)))

(assert (=> b!2176613 (= e!1391846 e!1391840)))

(declare-fun b!2176614 () Bool)

(assert (=> b!2176614 (= e!1391840 call!130751)))

(declare-fun d!651523 () Bool)

(declare-fun res!936396 () Bool)

(assert (=> d!651523 (=> res!936396 e!1391842)))

(assert (=> d!651523 (= res!936396 ((_ is ElementMatch!6031) (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))))))

(assert (=> d!651523 (= (validRegex!2307 (ite c!345202 (reg!6360 r!12534) (ite c!345203 (regTwo!12575 r!12534) (regOne!12574 r!12534)))) e!1391842)))

(declare-fun b!2176615 () Bool)

(assert (=> b!2176615 (= e!1391845 e!1391843)))

(declare-fun res!936399 () Bool)

(assert (=> b!2176615 (=> (not res!936399) (not e!1391843))))

(assert (=> b!2176615 (= res!936399 call!130751)))

(assert (= (and d!651523 (not res!936396)) b!2176612))

(assert (= (and b!2176612 c!345367) b!2176609))

(assert (= (and b!2176612 (not c!345367)) b!2176610))

(assert (= (and b!2176609 res!936398) b!2176608))

(assert (= (and b!2176610 c!345368) b!2176613))

(assert (= (and b!2176610 (not c!345368)) b!2176607))

(assert (= (and b!2176613 res!936400) b!2176614))

(assert (= (and b!2176607 (not res!936397)) b!2176615))

(assert (= (and b!2176615 res!936399) b!2176611))

(assert (= (or b!2176614 b!2176615) bm!130744))

(assert (= (or b!2176613 b!2176611) bm!130746))

(assert (= (or b!2176608 bm!130744) bm!130745))

(declare-fun m!2618311 () Bool)

(assert (=> bm!130745 m!2618311))

(declare-fun m!2618313 () Bool)

(assert (=> b!2176609 m!2618313))

(declare-fun m!2618315 () Bool)

(assert (=> bm!130746 m!2618315))

(assert (=> bm!130681 d!651523))

(declare-fun b!2176616 () Bool)

(declare-fun res!936402 () Bool)

(declare-fun e!1391852 () Bool)

(assert (=> b!2176616 (=> res!936402 e!1391852)))

(assert (=> b!2176616 (= res!936402 (not ((_ is Concat!10333) lt!811843)))))

(declare-fun e!1391853 () Bool)

(assert (=> b!2176616 (= e!1391853 e!1391852)))

(declare-fun b!2176617 () Bool)

(declare-fun e!1391848 () Bool)

(declare-fun call!130753 () Bool)

(assert (=> b!2176617 (= e!1391848 call!130753)))

(declare-fun bm!130747 () Bool)

(declare-fun call!130754 () Bool)

(assert (=> bm!130747 (= call!130754 call!130753)))

(declare-fun c!345369 () Bool)

(declare-fun c!345370 () Bool)

(declare-fun bm!130748 () Bool)

(assert (=> bm!130748 (= call!130753 (validRegex!2307 (ite c!345369 (reg!6360 lt!811843) (ite c!345370 (regTwo!12575 lt!811843) (regOne!12574 lt!811843)))))))

(declare-fun b!2176618 () Bool)

(declare-fun e!1391851 () Bool)

(assert (=> b!2176618 (= e!1391851 e!1391848)))

(declare-fun res!936403 () Bool)

(assert (=> b!2176618 (= res!936403 (not (nullable!1705 (reg!6360 lt!811843))))))

(assert (=> b!2176618 (=> (not res!936403) (not e!1391848))))

(declare-fun b!2176619 () Bool)

(assert (=> b!2176619 (= e!1391851 e!1391853)))

(assert (=> b!2176619 (= c!345370 ((_ is Union!6031) lt!811843))))

(declare-fun b!2176620 () Bool)

(declare-fun e!1391850 () Bool)

(declare-fun call!130752 () Bool)

(assert (=> b!2176620 (= e!1391850 call!130752)))

(declare-fun bm!130749 () Bool)

(assert (=> bm!130749 (= call!130752 (validRegex!2307 (ite c!345370 (regOne!12575 lt!811843) (regTwo!12574 lt!811843))))))

(declare-fun b!2176621 () Bool)

(declare-fun e!1391849 () Bool)

(assert (=> b!2176621 (= e!1391849 e!1391851)))

(assert (=> b!2176621 (= c!345369 ((_ is Star!6031) lt!811843))))

(declare-fun b!2176622 () Bool)

(declare-fun res!936405 () Bool)

(declare-fun e!1391847 () Bool)

(assert (=> b!2176622 (=> (not res!936405) (not e!1391847))))

(assert (=> b!2176622 (= res!936405 call!130752)))

(assert (=> b!2176622 (= e!1391853 e!1391847)))

(declare-fun b!2176623 () Bool)

(assert (=> b!2176623 (= e!1391847 call!130754)))

(declare-fun d!651525 () Bool)

(declare-fun res!936401 () Bool)

(assert (=> d!651525 (=> res!936401 e!1391849)))

(assert (=> d!651525 (= res!936401 ((_ is ElementMatch!6031) lt!811843))))

(assert (=> d!651525 (= (validRegex!2307 lt!811843) e!1391849)))

(declare-fun b!2176624 () Bool)

(assert (=> b!2176624 (= e!1391852 e!1391850)))

(declare-fun res!936404 () Bool)

(assert (=> b!2176624 (=> (not res!936404) (not e!1391850))))

(assert (=> b!2176624 (= res!936404 call!130754)))

(assert (= (and d!651525 (not res!936401)) b!2176621))

(assert (= (and b!2176621 c!345369) b!2176618))

(assert (= (and b!2176621 (not c!345369)) b!2176619))

(assert (= (and b!2176618 res!936403) b!2176617))

(assert (= (and b!2176619 c!345370) b!2176622))

(assert (= (and b!2176619 (not c!345370)) b!2176616))

(assert (= (and b!2176622 res!936405) b!2176623))

(assert (= (and b!2176616 (not res!936402)) b!2176624))

(assert (= (and b!2176624 res!936404) b!2176620))

(assert (= (or b!2176623 b!2176624) bm!130747))

(assert (= (or b!2176622 b!2176620) bm!130749))

(assert (= (or b!2176617 bm!130747) bm!130748))

(declare-fun m!2618321 () Bool)

(assert (=> bm!130748 m!2618321))

(declare-fun m!2618323 () Bool)

(assert (=> b!2176618 m!2618323))

(declare-fun m!2618325 () Bool)

(assert (=> bm!130749 m!2618325))

(assert (=> d!651151 d!651525))

(declare-fun bs!447182 () Bool)

(declare-fun d!651529 () Bool)

(assert (= bs!447182 (and d!651529 d!651091)))

(declare-fun lambda!81880 () Int)

(assert (=> bs!447182 (= lambda!81880 lambda!81856)))

(declare-fun b!2176710 () Bool)

(declare-fun e!1391904 () Bool)

(declare-fun e!1391899 () Bool)

(assert (=> b!2176710 (= e!1391904 e!1391899)))

(declare-fun c!345400 () Bool)

(declare-fun isEmpty!14482 (List!25307) Bool)

(assert (=> b!2176710 (= c!345400 (isEmpty!14482 (unfocusZipperList!45 lt!811664)))))

(declare-fun b!2176711 () Bool)

(declare-fun e!1391901 () Regex!6031)

(assert (=> b!2176711 (= e!1391901 EmptyLang!6031)))

(declare-fun b!2176712 () Bool)

(declare-fun e!1391902 () Regex!6031)

(assert (=> b!2176712 (= e!1391902 (h!30624 (unfocusZipperList!45 lt!811664)))))

(declare-fun b!2176713 () Bool)

(assert (=> b!2176713 (= e!1391902 e!1391901)))

(declare-fun c!345399 () Bool)

(assert (=> b!2176713 (= c!345399 ((_ is Cons!25223) (unfocusZipperList!45 lt!811664)))))

(declare-fun b!2176714 () Bool)

(declare-fun e!1391903 () Bool)

(assert (=> b!2176714 (= e!1391899 e!1391903)))

(declare-fun c!345402 () Bool)

(declare-fun tail!3131 (List!25307) List!25307)

(assert (=> b!2176714 (= c!345402 (isEmpty!14482 (tail!3131 (unfocusZipperList!45 lt!811664))))))

(declare-fun b!2176715 () Bool)

(declare-fun lt!812232 () Regex!6031)

(declare-fun isEmptyLang!140 (Regex!6031) Bool)

(assert (=> b!2176715 (= e!1391899 (isEmptyLang!140 lt!812232))))

(declare-fun b!2176717 () Bool)

(declare-fun e!1391900 () Bool)

(assert (=> b!2176717 (= e!1391900 (isEmpty!14482 (t!197875 (unfocusZipperList!45 lt!811664))))))

(declare-fun b!2176718 () Bool)

(declare-fun head!4659 (List!25307) Regex!6031)

(assert (=> b!2176718 (= e!1391903 (= lt!812232 (head!4659 (unfocusZipperList!45 lt!811664))))))

(declare-fun b!2176719 () Bool)

(declare-fun isUnion!140 (Regex!6031) Bool)

(assert (=> b!2176719 (= e!1391903 (isUnion!140 lt!812232))))

(assert (=> d!651529 e!1391904))

(declare-fun res!936435 () Bool)

(assert (=> d!651529 (=> (not res!936435) (not e!1391904))))

(assert (=> d!651529 (= res!936435 (validRegex!2307 lt!812232))))

(assert (=> d!651529 (= lt!812232 e!1391902)))

(declare-fun c!345401 () Bool)

(assert (=> d!651529 (= c!345401 e!1391900)))

(declare-fun res!936436 () Bool)

(assert (=> d!651529 (=> (not res!936436) (not e!1391900))))

(assert (=> d!651529 (= res!936436 ((_ is Cons!25223) (unfocusZipperList!45 lt!811664)))))

(assert (=> d!651529 (forall!5177 (unfocusZipperList!45 lt!811664) lambda!81880)))

(assert (=> d!651529 (= (generalisedUnion!521 (unfocusZipperList!45 lt!811664)) lt!812232)))

(declare-fun b!2176716 () Bool)

(assert (=> b!2176716 (= e!1391901 (Union!6031 (h!30624 (unfocusZipperList!45 lt!811664)) (generalisedUnion!521 (t!197875 (unfocusZipperList!45 lt!811664)))))))

(assert (= (and d!651529 res!936436) b!2176717))

(assert (= (and d!651529 c!345401) b!2176712))

(assert (= (and d!651529 (not c!345401)) b!2176713))

(assert (= (and b!2176713 c!345399) b!2176716))

(assert (= (and b!2176713 (not c!345399)) b!2176711))

(assert (= (and d!651529 res!936435) b!2176710))

(assert (= (and b!2176710 c!345400) b!2176715))

(assert (= (and b!2176710 (not c!345400)) b!2176714))

(assert (= (and b!2176714 c!345402) b!2176718))

(assert (= (and b!2176714 (not c!345402)) b!2176719))

(assert (=> b!2176710 m!2617475))

(declare-fun m!2618401 () Bool)

(assert (=> b!2176710 m!2618401))

(assert (=> b!2176718 m!2617475))

(declare-fun m!2618403 () Bool)

(assert (=> b!2176718 m!2618403))

(assert (=> b!2176714 m!2617475))

(declare-fun m!2618405 () Bool)

(assert (=> b!2176714 m!2618405))

(assert (=> b!2176714 m!2618405))

(declare-fun m!2618407 () Bool)

(assert (=> b!2176714 m!2618407))

(declare-fun m!2618409 () Bool)

(assert (=> b!2176717 m!2618409))

(declare-fun m!2618411 () Bool)

(assert (=> d!651529 m!2618411))

(assert (=> d!651529 m!2617475))

(declare-fun m!2618413 () Bool)

(assert (=> d!651529 m!2618413))

(declare-fun m!2618415 () Bool)

(assert (=> b!2176719 m!2618415))

(declare-fun m!2618417 () Bool)

(assert (=> b!2176716 m!2618417))

(declare-fun m!2618419 () Bool)

(assert (=> b!2176715 m!2618419))

(assert (=> d!651151 d!651529))

(declare-fun bs!447186 () Bool)

(declare-fun d!651559 () Bool)

(assert (= bs!447186 (and d!651559 d!651091)))

(declare-fun lambda!81884 () Int)

(assert (=> bs!447186 (= lambda!81884 lambda!81856)))

(declare-fun bs!447187 () Bool)

(assert (= bs!447187 (and d!651559 d!651529)))

(assert (=> bs!447187 (= lambda!81884 lambda!81880)))

(declare-fun lt!812236 () List!25307)

(assert (=> d!651559 (forall!5177 lt!812236 lambda!81884)))

(declare-fun e!1391922 () List!25307)

(assert (=> d!651559 (= lt!812236 e!1391922)))

(declare-fun c!345408 () Bool)

(assert (=> d!651559 (= c!345408 ((_ is Cons!25224) lt!811664))))

(assert (=> d!651559 (= (unfocusZipperList!45 lt!811664) lt!812236)))

(declare-fun b!2176743 () Bool)

(declare-fun generalisedConcat!5 (List!25307) Regex!6031)

(assert (=> b!2176743 (= e!1391922 (Cons!25223 (generalisedConcat!5 (exprs!2101 (h!30625 lt!811664))) (unfocusZipperList!45 (t!197876 lt!811664))))))

(declare-fun b!2176744 () Bool)

(assert (=> b!2176744 (= e!1391922 Nil!25223)))

(assert (= (and d!651559 c!345408) b!2176743))

(assert (= (and d!651559 (not c!345408)) b!2176744))

(declare-fun m!2618443 () Bool)

(assert (=> d!651559 m!2618443))

(declare-fun m!2618445 () Bool)

(assert (=> b!2176743 m!2618445))

(declare-fun m!2618447 () Bool)

(assert (=> b!2176743 m!2618447))

(assert (=> d!651151 d!651559))

(assert (=> d!651213 d!651221))

(assert (=> d!651213 d!651209))

(declare-fun d!651571 () Bool)

(assert (=> d!651571 (isPrefix!2147 (take!239 lt!811667 lt!811673) lt!811667)))

(assert (=> d!651571 true))

(declare-fun _$48!707 () Unit!38293)

(assert (=> d!651571 (= (choose!12851 lt!811667 lt!811673) _$48!707)))

(declare-fun bs!447188 () Bool)

(assert (= bs!447188 d!651571))

(assert (=> bs!447188 m!2617055))

(assert (=> bs!447188 m!2617055))

(assert (=> bs!447188 m!2617057))

(assert (=> d!651213 d!651571))

(declare-fun d!651573 () Bool)

(declare-fun c!345409 () Bool)

(assert (=> d!651573 (= c!345409 (isEmpty!14477 (tail!3130 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))))))

(declare-fun e!1391923 () Bool)

(assert (=> d!651573 (= (matchZipper!147 (derivationStepZipper!134 z!4055 (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))) (tail!3130 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))) e!1391923)))

(declare-fun b!2176745 () Bool)

(assert (=> b!2176745 (= e!1391923 (nullableZipper!311 (derivationStepZipper!134 z!4055 (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)))))))

(declare-fun b!2176746 () Bool)

(assert (=> b!2176746 (= e!1391923 (matchZipper!147 (derivationStepZipper!134 (derivationStepZipper!134 z!4055 (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))) (head!4658 (tail!3130 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)))) (tail!3130 (tail!3130 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)))))))

(assert (= (and d!651573 c!345409) b!2176745))

(assert (= (and d!651573 (not c!345409)) b!2176746))

(assert (=> d!651573 m!2617227))

(declare-fun m!2618449 () Bool)

(assert (=> d!651573 m!2618449))

(assert (=> b!2176745 m!2617225))

(declare-fun m!2618451 () Bool)

(assert (=> b!2176745 m!2618451))

(assert (=> b!2176746 m!2617227))

(declare-fun m!2618453 () Bool)

(assert (=> b!2176746 m!2618453))

(assert (=> b!2176746 m!2617225))

(assert (=> b!2176746 m!2618453))

(declare-fun m!2618455 () Bool)

(assert (=> b!2176746 m!2618455))

(assert (=> b!2176746 m!2617227))

(declare-fun m!2618457 () Bool)

(assert (=> b!2176746 m!2618457))

(assert (=> b!2176746 m!2618455))

(assert (=> b!2176746 m!2618457))

(declare-fun m!2618459 () Bool)

(assert (=> b!2176746 m!2618459))

(assert (=> b!2175603 d!651573))

(declare-fun d!651575 () Bool)

(assert (=> d!651575 true))

(declare-fun lambda!81889 () Int)

(declare-fun flatMap!134 ((InoxSet Context!3202) Int) (InoxSet Context!3202))

(assert (=> d!651575 (= (derivationStepZipper!134 z!4055 (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))) (flatMap!134 z!4055 lambda!81889))))

(declare-fun bs!447189 () Bool)

(assert (= bs!447189 d!651575))

(declare-fun m!2618461 () Bool)

(assert (=> bs!447189 m!2618461))

(assert (=> b!2175603 d!651575))

(declare-fun d!651577 () Bool)

(assert (=> d!651577 (= (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)) (h!30623 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)))))

(assert (=> b!2175603 d!651577))

(declare-fun d!651579 () Bool)

(assert (=> d!651579 (= (tail!3130 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)) (t!197874 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)))))

(assert (=> b!2175603 d!651579))

(declare-fun b!2176788 () Bool)

(declare-fun e!1391946 () List!25306)

(declare-fun e!1391947 () List!25306)

(assert (=> b!2176788 (= e!1391946 e!1391947)))

(declare-fun c!345429 () Bool)

(assert (=> b!2176788 (= c!345429 ((_ is Leaf!11950) (c!345005 input!5540)))))

(declare-fun d!651581 () Bool)

(declare-fun c!345428 () Bool)

(assert (=> d!651581 (= c!345428 ((_ is Empty!8167) (c!345005 input!5540)))))

(assert (=> d!651581 (= (list!9678 (c!345005 input!5540)) e!1391946)))

(declare-fun b!2176789 () Bool)

(declare-fun list!9680 (IArray!16339) List!25306)

(assert (=> b!2176789 (= e!1391947 (list!9680 (xs!11109 (c!345005 input!5540))))))

(declare-fun b!2176787 () Bool)

(assert (=> b!2176787 (= e!1391946 Nil!25222)))

(declare-fun b!2176790 () Bool)

(assert (=> b!2176790 (= e!1391947 (++!6390 (list!9678 (left!19365 (c!345005 input!5540))) (list!9678 (right!19695 (c!345005 input!5540)))))))

(assert (= (and d!651581 c!345428) b!2176787))

(assert (= (and d!651581 (not c!345428)) b!2176788))

(assert (= (and b!2176788 c!345429) b!2176789))

(assert (= (and b!2176788 (not c!345429)) b!2176790))

(declare-fun m!2618463 () Bool)

(assert (=> b!2176789 m!2618463))

(declare-fun m!2618465 () Bool)

(assert (=> b!2176790 m!2618465))

(declare-fun m!2618467 () Bool)

(assert (=> b!2176790 m!2618467))

(assert (=> b!2176790 m!2618465))

(assert (=> b!2176790 m!2618467))

(declare-fun m!2618469 () Bool)

(assert (=> b!2176790 m!2618469))

(assert (=> d!651239 d!651581))

(assert (=> b!2175447 d!651081))

(declare-fun d!651583 () Bool)

(declare-fun lt!812240 () Int)

(assert (=> d!651583 (>= lt!812240 0)))

(declare-fun e!1391948 () Int)

(assert (=> d!651583 (= lt!812240 e!1391948)))

(declare-fun c!345430 () Bool)

(assert (=> d!651583 (= c!345430 ((_ is Nil!25222) lt!811681))))

(assert (=> d!651583 (= (size!19706 lt!811681) lt!812240)))

(declare-fun b!2176791 () Bool)

(assert (=> b!2176791 (= e!1391948 0)))

(declare-fun b!2176792 () Bool)

(assert (=> b!2176792 (= e!1391948 (+ 1 (size!19706 (t!197874 lt!811681))))))

(assert (= (and d!651583 c!345430) b!2176791))

(assert (= (and d!651583 (not c!345430)) b!2176792))

(assert (=> b!2176792 m!2618007))

(assert (=> b!2175819 d!651583))

(declare-fun d!651585 () Bool)

(declare-fun lt!812241 () Int)

(assert (=> d!651585 (>= lt!812241 0)))

(declare-fun e!1391949 () Int)

(assert (=> d!651585 (= lt!812241 e!1391949)))

(declare-fun c!345431 () Bool)

(assert (=> d!651585 (= c!345431 ((_ is Nil!25222) (t!197874 lt!811670)))))

(assert (=> d!651585 (= (size!19706 (t!197874 lt!811670)) lt!812241)))

(declare-fun b!2176793 () Bool)

(assert (=> b!2176793 (= e!1391949 0)))

(declare-fun b!2176794 () Bool)

(assert (=> b!2176794 (= e!1391949 (+ 1 (size!19706 (t!197874 (t!197874 lt!811670)))))))

(assert (= (and d!651585 c!345431) b!2176793))

(assert (= (and d!651585 (not c!345431)) b!2176794))

(declare-fun m!2618491 () Bool)

(assert (=> b!2176794 m!2618491))

(assert (=> b!2176064 d!651585))

(declare-fun d!651587 () Bool)

(declare-fun res!936460 () Bool)

(declare-fun e!1391954 () Bool)

(assert (=> d!651587 (=> (not res!936460) (not e!1391954))))

(assert (=> d!651587 (= res!936460 (<= (size!19706 (list!9680 (xs!11109 (c!345005 input!5540)))) 512))))

(assert (=> d!651587 (= (inv!33510 (c!345005 input!5540)) e!1391954)))

(declare-fun b!2176803 () Bool)

(declare-fun res!936461 () Bool)

(assert (=> b!2176803 (=> (not res!936461) (not e!1391954))))

(assert (=> b!2176803 (= res!936461 (= (csize!16565 (c!345005 input!5540)) (size!19706 (list!9680 (xs!11109 (c!345005 input!5540))))))))

(declare-fun b!2176804 () Bool)

(assert (=> b!2176804 (= e!1391954 (and (> (csize!16565 (c!345005 input!5540)) 0) (<= (csize!16565 (c!345005 input!5540)) 512)))))

(assert (= (and d!651587 res!936460) b!2176803))

(assert (= (and b!2176803 res!936461) b!2176804))

(assert (=> d!651587 m!2618463))

(assert (=> d!651587 m!2618463))

(declare-fun m!2618493 () Bool)

(assert (=> d!651587 m!2618493))

(assert (=> b!2176803 m!2618463))

(assert (=> b!2176803 m!2618463))

(assert (=> b!2176803 m!2618493))

(assert (=> b!2176163 d!651587))

(declare-fun d!651591 () Bool)

(declare-fun c!345434 () Bool)

(assert (=> d!651591 (= c!345434 (isEmpty!14477 (tail!3130 lt!811676)))))

(declare-fun e!1391955 () Bool)

(assert (=> d!651591 (= (matchZipper!147 (derivationStepZipper!134 z!4055 (head!4658 lt!811676)) (tail!3130 lt!811676)) e!1391955)))

(declare-fun b!2176805 () Bool)

(assert (=> b!2176805 (= e!1391955 (nullableZipper!311 (derivationStepZipper!134 z!4055 (head!4658 lt!811676))))))

(declare-fun b!2176806 () Bool)

(assert (=> b!2176806 (= e!1391955 (matchZipper!147 (derivationStepZipper!134 (derivationStepZipper!134 z!4055 (head!4658 lt!811676)) (head!4658 (tail!3130 lt!811676))) (tail!3130 (tail!3130 lt!811676))))))

(assert (= (and d!651591 c!345434) b!2176805))

(assert (= (and d!651591 (not c!345434)) b!2176806))

(assert (=> d!651591 m!2617717))

(assert (=> d!651591 m!2617841))

(assert (=> b!2176805 m!2617739))

(declare-fun m!2618495 () Bool)

(assert (=> b!2176805 m!2618495))

(assert (=> b!2176806 m!2617717))

(declare-fun m!2618497 () Bool)

(assert (=> b!2176806 m!2618497))

(assert (=> b!2176806 m!2617739))

(assert (=> b!2176806 m!2618497))

(declare-fun m!2618499 () Bool)

(assert (=> b!2176806 m!2618499))

(assert (=> b!2176806 m!2617717))

(declare-fun m!2618501 () Bool)

(assert (=> b!2176806 m!2618501))

(assert (=> b!2176806 m!2618499))

(assert (=> b!2176806 m!2618501))

(declare-fun m!2618503 () Bool)

(assert (=> b!2176806 m!2618503))

(assert (=> b!2176081 d!651591))

(declare-fun bs!447192 () Bool)

(declare-fun d!651593 () Bool)

(assert (= bs!447192 (and d!651593 d!651575)))

(declare-fun lambda!81893 () Int)

(assert (=> bs!447192 (= (= (head!4658 lt!811676) (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))) (= lambda!81893 lambda!81889))))

(assert (=> d!651593 true))

(assert (=> d!651593 (= (derivationStepZipper!134 z!4055 (head!4658 lt!811676)) (flatMap!134 z!4055 lambda!81893))))

(declare-fun bs!447193 () Bool)

(assert (= bs!447193 d!651593))

(declare-fun m!2618505 () Bool)

(assert (=> bs!447193 m!2618505))

(assert (=> b!2176081 d!651593))

(declare-fun d!651595 () Bool)

(assert (=> d!651595 (= (head!4658 lt!811676) (h!30623 lt!811676))))

(assert (=> b!2176081 d!651595))

(assert (=> b!2176081 d!651429))

(declare-fun b!2176809 () Bool)

(declare-fun e!1391961 () Bool)

(assert (=> b!2176809 (= e!1391961 (not (= (head!4658 (tail!3130 lt!811676)) (c!345004 (derivativeStep!1448 r!12534 (head!4658 lt!811676))))))))

(declare-fun b!2176810 () Bool)

(declare-fun e!1391958 () Bool)

(declare-fun e!1391960 () Bool)

(assert (=> b!2176810 (= e!1391958 e!1391960)))

(declare-fun c!345438 () Bool)

(assert (=> b!2176810 (= c!345438 ((_ is EmptyLang!6031) (derivativeStep!1448 r!12534 (head!4658 lt!811676))))))

(declare-fun b!2176812 () Bool)

(declare-fun lt!812245 () Bool)

(assert (=> b!2176812 (= e!1391960 (not lt!812245))))

(declare-fun b!2176813 () Bool)

(declare-fun e!1391959 () Bool)

(assert (=> b!2176813 (= e!1391959 (= (head!4658 (tail!3130 lt!811676)) (c!345004 (derivativeStep!1448 r!12534 (head!4658 lt!811676)))))))

(declare-fun bm!130763 () Bool)

(declare-fun call!130768 () Bool)

(assert (=> bm!130763 (= call!130768 (isEmpty!14477 (tail!3130 lt!811676)))))

(declare-fun b!2176814 () Bool)

(declare-fun res!936462 () Bool)

(declare-fun e!1391962 () Bool)

(assert (=> b!2176814 (=> res!936462 e!1391962)))

(assert (=> b!2176814 (= res!936462 (not ((_ is ElementMatch!6031) (derivativeStep!1448 r!12534 (head!4658 lt!811676)))))))

(assert (=> b!2176814 (= e!1391960 e!1391962)))

(declare-fun b!2176815 () Bool)

(declare-fun e!1391957 () Bool)

(assert (=> b!2176815 (= e!1391962 e!1391957)))

(declare-fun res!936469 () Bool)

(assert (=> b!2176815 (=> (not res!936469) (not e!1391957))))

(assert (=> b!2176815 (= res!936469 (not lt!812245))))

(declare-fun b!2176816 () Bool)

(declare-fun res!936463 () Bool)

(assert (=> b!2176816 (=> res!936463 e!1391961)))

(assert (=> b!2176816 (= res!936463 (not (isEmpty!14477 (tail!3130 (tail!3130 lt!811676)))))))

(declare-fun b!2176817 () Bool)

(declare-fun e!1391963 () Bool)

(assert (=> b!2176817 (= e!1391963 (matchR!2780 (derivativeStep!1448 (derivativeStep!1448 r!12534 (head!4658 lt!811676)) (head!4658 (tail!3130 lt!811676))) (tail!3130 (tail!3130 lt!811676))))))

(declare-fun b!2176818 () Bool)

(declare-fun res!936464 () Bool)

(assert (=> b!2176818 (=> (not res!936464) (not e!1391959))))

(assert (=> b!2176818 (= res!936464 (not call!130768))))

(declare-fun d!651597 () Bool)

(assert (=> d!651597 e!1391958))

(declare-fun c!345436 () Bool)

(assert (=> d!651597 (= c!345436 ((_ is EmptyExpr!6031) (derivativeStep!1448 r!12534 (head!4658 lt!811676))))))

(assert (=> d!651597 (= lt!812245 e!1391963)))

(declare-fun c!345437 () Bool)

(assert (=> d!651597 (= c!345437 (isEmpty!14477 (tail!3130 lt!811676)))))

(assert (=> d!651597 (validRegex!2307 (derivativeStep!1448 r!12534 (head!4658 lt!811676)))))

(assert (=> d!651597 (= (matchR!2780 (derivativeStep!1448 r!12534 (head!4658 lt!811676)) (tail!3130 lt!811676)) lt!812245)))

(declare-fun b!2176811 () Bool)

(declare-fun res!936465 () Bool)

(assert (=> b!2176811 (=> (not res!936465) (not e!1391959))))

(assert (=> b!2176811 (= res!936465 (isEmpty!14477 (tail!3130 (tail!3130 lt!811676))))))

(declare-fun b!2176819 () Bool)

(declare-fun res!936467 () Bool)

(assert (=> b!2176819 (=> res!936467 e!1391962)))

(assert (=> b!2176819 (= res!936467 e!1391959)))

(declare-fun res!936466 () Bool)

(assert (=> b!2176819 (=> (not res!936466) (not e!1391959))))

(assert (=> b!2176819 (= res!936466 lt!812245)))

(declare-fun b!2176820 () Bool)

(assert (=> b!2176820 (= e!1391963 (nullable!1705 (derivativeStep!1448 r!12534 (head!4658 lt!811676))))))

(declare-fun b!2176821 () Bool)

(assert (=> b!2176821 (= e!1391958 (= lt!812245 call!130768))))

(declare-fun b!2176822 () Bool)

(assert (=> b!2176822 (= e!1391957 e!1391961)))

(declare-fun res!936468 () Bool)

(assert (=> b!2176822 (=> res!936468 e!1391961)))

(assert (=> b!2176822 (= res!936468 call!130768)))

(assert (= (and d!651597 c!345437) b!2176820))

(assert (= (and d!651597 (not c!345437)) b!2176817))

(assert (= (and d!651597 c!345436) b!2176821))

(assert (= (and d!651597 (not c!345436)) b!2176810))

(assert (= (and b!2176810 c!345438) b!2176812))

(assert (= (and b!2176810 (not c!345438)) b!2176814))

(assert (= (and b!2176814 (not res!936462)) b!2176819))

(assert (= (and b!2176819 res!936466) b!2176818))

(assert (= (and b!2176818 res!936464) b!2176811))

(assert (= (and b!2176811 res!936465) b!2176813))

(assert (= (and b!2176819 (not res!936467)) b!2176815))

(assert (= (and b!2176815 res!936469) b!2176822))

(assert (= (and b!2176822 (not res!936468)) b!2176816))

(assert (= (and b!2176816 (not res!936463)) b!2176809))

(assert (= (or b!2176821 b!2176822 b!2176818) bm!130763))

(assert (=> b!2176816 m!2617717))

(assert (=> b!2176816 m!2618501))

(assert (=> b!2176816 m!2618501))

(declare-fun m!2618513 () Bool)

(assert (=> b!2176816 m!2618513))

(assert (=> bm!130763 m!2617717))

(assert (=> bm!130763 m!2617841))

(assert (=> b!2176813 m!2617717))

(assert (=> b!2176813 m!2618497))

(assert (=> b!2176817 m!2617717))

(assert (=> b!2176817 m!2618497))

(assert (=> b!2176817 m!2617843))

(assert (=> b!2176817 m!2618497))

(declare-fun m!2618519 () Bool)

(assert (=> b!2176817 m!2618519))

(assert (=> b!2176817 m!2617717))

(assert (=> b!2176817 m!2618501))

(assert (=> b!2176817 m!2618519))

(assert (=> b!2176817 m!2618501))

(declare-fun m!2618521 () Bool)

(assert (=> b!2176817 m!2618521))

(assert (=> b!2176820 m!2617843))

(declare-fun m!2618527 () Bool)

(assert (=> b!2176820 m!2618527))

(assert (=> b!2176809 m!2617717))

(assert (=> b!2176809 m!2618497))

(assert (=> b!2176811 m!2617717))

(assert (=> b!2176811 m!2618501))

(assert (=> b!2176811 m!2618501))

(assert (=> b!2176811 m!2618513))

(assert (=> d!651597 m!2617717))

(assert (=> d!651597 m!2617841))

(assert (=> d!651597 m!2617843))

(declare-fun m!2618529 () Bool)

(assert (=> d!651597 m!2618529))

(assert (=> b!2176151 d!651597))

(declare-fun b!2176829 () Bool)

(declare-fun e!1391970 () Regex!6031)

(assert (=> b!2176829 (= e!1391970 EmptyLang!6031)))

(declare-fun c!345442 () Bool)

(declare-fun c!345444 () Bool)

(declare-fun bm!130764 () Bool)

(declare-fun call!130770 () Regex!6031)

(assert (=> bm!130764 (= call!130770 (derivativeStep!1448 (ite c!345442 (regTwo!12575 r!12534) (ite c!345444 (reg!6360 r!12534) (regOne!12574 r!12534))) (head!4658 lt!811676)))))

(declare-fun b!2176831 () Bool)

(declare-fun e!1391971 () Regex!6031)

(declare-fun call!130771 () Regex!6031)

(assert (=> b!2176831 (= e!1391971 (Union!6031 call!130771 call!130770))))

(declare-fun b!2176832 () Bool)

(declare-fun e!1391969 () Regex!6031)

(assert (=> b!2176832 (= e!1391970 e!1391969)))

(declare-fun c!345443 () Bool)

(assert (=> b!2176832 (= c!345443 ((_ is ElementMatch!6031) r!12534))))

(declare-fun b!2176834 () Bool)

(declare-fun e!1391967 () Regex!6031)

(declare-fun call!130769 () Regex!6031)

(assert (=> b!2176834 (= e!1391967 (Concat!10333 call!130769 r!12534))))

(declare-fun b!2176836 () Bool)

(declare-fun e!1391968 () Regex!6031)

(declare-fun call!130772 () Regex!6031)

(assert (=> b!2176836 (= e!1391968 (Union!6031 (Concat!10333 call!130772 (regTwo!12574 r!12534)) EmptyLang!6031))))

(declare-fun b!2176837 () Bool)

(assert (=> b!2176837 (= c!345442 ((_ is Union!6031) r!12534))))

(assert (=> b!2176837 (= e!1391969 e!1391971)))

(declare-fun bm!130765 () Bool)

(assert (=> bm!130765 (= call!130772 call!130769)))

(declare-fun bm!130766 () Bool)

(assert (=> bm!130766 (= call!130771 (derivativeStep!1448 (ite c!345442 (regOne!12575 r!12534) (regTwo!12574 r!12534)) (head!4658 lt!811676)))))

(declare-fun b!2176838 () Bool)

(assert (=> b!2176838 (= e!1391968 (Union!6031 (Concat!10333 call!130772 (regTwo!12574 r!12534)) call!130771))))

(declare-fun b!2176839 () Bool)

(assert (=> b!2176839 (= e!1391969 (ite (= (head!4658 lt!811676) (c!345004 r!12534)) EmptyExpr!6031 EmptyLang!6031))))

(declare-fun b!2176830 () Bool)

(declare-fun c!345445 () Bool)

(assert (=> b!2176830 (= c!345445 (nullable!1705 (regOne!12574 r!12534)))))

(assert (=> b!2176830 (= e!1391967 e!1391968)))

(declare-fun d!651607 () Bool)

(declare-fun lt!812246 () Regex!6031)

(assert (=> d!651607 (validRegex!2307 lt!812246)))

(assert (=> d!651607 (= lt!812246 e!1391970)))

(declare-fun c!345446 () Bool)

(assert (=> d!651607 (= c!345446 (or ((_ is EmptyExpr!6031) r!12534) ((_ is EmptyLang!6031) r!12534)))))

(assert (=> d!651607 (validRegex!2307 r!12534)))

(assert (=> d!651607 (= (derivativeStep!1448 r!12534 (head!4658 lt!811676)) lt!812246)))

(declare-fun bm!130767 () Bool)

(assert (=> bm!130767 (= call!130769 call!130770)))

(declare-fun b!2176840 () Bool)

(assert (=> b!2176840 (= e!1391971 e!1391967)))

(assert (=> b!2176840 (= c!345444 ((_ is Star!6031) r!12534))))

(assert (= (and d!651607 c!345446) b!2176829))

(assert (= (and d!651607 (not c!345446)) b!2176832))

(assert (= (and b!2176832 c!345443) b!2176839))

(assert (= (and b!2176832 (not c!345443)) b!2176837))

(assert (= (and b!2176837 c!345442) b!2176831))

(assert (= (and b!2176837 (not c!345442)) b!2176840))

(assert (= (and b!2176840 c!345444) b!2176834))

(assert (= (and b!2176840 (not c!345444)) b!2176830))

(assert (= (and b!2176830 c!345445) b!2176838))

(assert (= (and b!2176830 (not c!345445)) b!2176836))

(assert (= (or b!2176838 b!2176836) bm!130765))

(assert (= (or b!2176834 bm!130765) bm!130767))

(assert (= (or b!2176831 b!2176838) bm!130766))

(assert (= (or b!2176831 bm!130767) bm!130764))

(assert (=> bm!130764 m!2617709))

(declare-fun m!2618543 () Bool)

(assert (=> bm!130764 m!2618543))

(assert (=> bm!130766 m!2617709))

(declare-fun m!2618547 () Bool)

(assert (=> bm!130766 m!2618547))

(assert (=> b!2176830 m!2617985))

(declare-fun m!2618551 () Bool)

(assert (=> d!651607 m!2618551))

(assert (=> d!651607 m!2617091))

(assert (=> b!2176151 d!651607))

(assert (=> b!2176151 d!651595))

(assert (=> b!2176151 d!651429))

(declare-fun d!651613 () Bool)

(declare-fun c!345448 () Bool)

(assert (=> d!651613 (= c!345448 ((_ is Nil!25222) lt!812005))))

(declare-fun e!1391976 () (InoxSet C!12208))

(assert (=> d!651613 (= (content!3436 lt!812005) e!1391976)))

(declare-fun b!2176845 () Bool)

(assert (=> b!2176845 (= e!1391976 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176846 () Bool)

(assert (=> b!2176846 (= e!1391976 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!812005) true) (content!3436 (t!197874 lt!812005))))))

(assert (= (and d!651613 c!345448) b!2176845))

(assert (= (and d!651613 (not c!345448)) b!2176846))

(declare-fun m!2618557 () Bool)

(assert (=> b!2176846 m!2618557))

(declare-fun m!2618559 () Bool)

(assert (=> b!2176846 m!2618559))

(assert (=> d!651209 d!651613))

(declare-fun d!651621 () Bool)

(declare-fun c!345449 () Bool)

(assert (=> d!651621 (= c!345449 ((_ is Nil!25222) lt!811667))))

(declare-fun e!1391977 () (InoxSet C!12208))

(assert (=> d!651621 (= (content!3436 lt!811667) e!1391977)))

(declare-fun b!2176847 () Bool)

(assert (=> b!2176847 (= e!1391977 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176848 () Bool)

(assert (=> b!2176848 (= e!1391977 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811667) true) (content!3436 (t!197874 lt!811667))))))

(assert (= (and d!651621 c!345449) b!2176847))

(assert (= (and d!651621 (not c!345449)) b!2176848))

(declare-fun m!2618561 () Bool)

(assert (=> b!2176848 m!2618561))

(assert (=> b!2176848 m!2617933))

(assert (=> d!651209 d!651621))

(declare-fun d!651623 () Bool)

(assert (=> d!651623 (isPrefix!2147 lt!811670 lt!811670)))

(declare-fun lt!812252 () Unit!38293)

(declare-fun choose!12860 (List!25306 List!25306) Unit!38293)

(assert (=> d!651623 (= lt!812252 (choose!12860 lt!811670 lt!811670))))

(assert (=> d!651623 (= (lemmaIsPrefixRefl!1417 lt!811670 lt!811670) lt!812252)))

(declare-fun bs!447198 () Bool)

(assert (= bs!447198 d!651623))

(assert (=> bs!447198 m!2617693))

(declare-fun m!2618571 () Bool)

(assert (=> bs!447198 m!2618571))

(assert (=> bm!130666 d!651623))

(assert (=> b!2175842 d!651219))

(assert (=> bm!130601 d!651217))

(assert (=> bm!130683 d!651521))

(declare-fun d!651629 () Bool)

(declare-fun c!345453 () Bool)

(assert (=> d!651629 (= c!345453 (isEmpty!14477 (tail!3130 (_1!14869 lt!811654))))))

(declare-fun e!1391982 () Bool)

(assert (=> d!651629 (= (matchZipper!147 (derivationStepZipper!134 z!4055 (head!4658 (_1!14869 lt!811654))) (tail!3130 (_1!14869 lt!811654))) e!1391982)))

(declare-fun b!2176856 () Bool)

(assert (=> b!2176856 (= e!1391982 (nullableZipper!311 (derivationStepZipper!134 z!4055 (head!4658 (_1!14869 lt!811654)))))))

(declare-fun b!2176857 () Bool)

(assert (=> b!2176857 (= e!1391982 (matchZipper!147 (derivationStepZipper!134 (derivationStepZipper!134 z!4055 (head!4658 (_1!14869 lt!811654))) (head!4658 (tail!3130 (_1!14869 lt!811654)))) (tail!3130 (tail!3130 (_1!14869 lt!811654)))))))

(assert (= (and d!651629 c!345453) b!2176856))

(assert (= (and d!651629 (not c!345453)) b!2176857))

(assert (=> d!651629 m!2617195))

(assert (=> d!651629 m!2617197))

(assert (=> b!2176856 m!2617847))

(declare-fun m!2618573 () Bool)

(assert (=> b!2176856 m!2618573))

(assert (=> b!2176857 m!2617195))

(assert (=> b!2176857 m!2618197))

(assert (=> b!2176857 m!2617847))

(assert (=> b!2176857 m!2618197))

(declare-fun m!2618575 () Bool)

(assert (=> b!2176857 m!2618575))

(assert (=> b!2176857 m!2617195))

(assert (=> b!2176857 m!2618193))

(assert (=> b!2176857 m!2618575))

(assert (=> b!2176857 m!2618193))

(declare-fun m!2618577 () Bool)

(assert (=> b!2176857 m!2618577))

(assert (=> b!2176158 d!651629))

(declare-fun bs!447200 () Bool)

(declare-fun d!651631 () Bool)

(assert (= bs!447200 (and d!651631 d!651575)))

(declare-fun lambda!81895 () Int)

(assert (=> bs!447200 (= (= (head!4658 (_1!14869 lt!811654)) (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))) (= lambda!81895 lambda!81889))))

(declare-fun bs!447201 () Bool)

(assert (= bs!447201 (and d!651631 d!651593)))

(assert (=> bs!447201 (= (= (head!4658 (_1!14869 lt!811654)) (head!4658 lt!811676)) (= lambda!81895 lambda!81893))))

(assert (=> d!651631 true))

(assert (=> d!651631 (= (derivationStepZipper!134 z!4055 (head!4658 (_1!14869 lt!811654))) (flatMap!134 z!4055 lambda!81895))))

(declare-fun bs!447202 () Bool)

(assert (= bs!447202 d!651631))

(declare-fun m!2618581 () Bool)

(assert (=> bs!447202 m!2618581))

(assert (=> b!2176158 d!651631))

(assert (=> b!2176158 d!651471))

(assert (=> b!2176158 d!651473))

(assert (=> b!2175454 d!651273))

(declare-fun b!2176862 () Bool)

(declare-fun e!1391990 () Bool)

(assert (=> b!2176862 (= e!1391990 (not (= (head!4658 (tail!3130 (_1!14869 lt!811660))) (c!345004 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660)))))))))

(declare-fun b!2176863 () Bool)

(declare-fun e!1391987 () Bool)

(declare-fun e!1391989 () Bool)

(assert (=> b!2176863 (= e!1391987 e!1391989)))

(declare-fun c!345456 () Bool)

(assert (=> b!2176863 (= c!345456 ((_ is EmptyLang!6031) (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660)))))))

(declare-fun b!2176865 () Bool)

(declare-fun lt!812257 () Bool)

(assert (=> b!2176865 (= e!1391989 (not lt!812257))))

(declare-fun b!2176866 () Bool)

(declare-fun e!1391988 () Bool)

(assert (=> b!2176866 (= e!1391988 (= (head!4658 (tail!3130 (_1!14869 lt!811660))) (c!345004 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660))))))))

(declare-fun bm!130768 () Bool)

(declare-fun call!130773 () Bool)

(assert (=> bm!130768 (= call!130773 (isEmpty!14477 (tail!3130 (_1!14869 lt!811660))))))

(declare-fun b!2176867 () Bool)

(declare-fun res!936479 () Bool)

(declare-fun e!1391991 () Bool)

(assert (=> b!2176867 (=> res!936479 e!1391991)))

(assert (=> b!2176867 (= res!936479 (not ((_ is ElementMatch!6031) (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660))))))))

(assert (=> b!2176867 (= e!1391989 e!1391991)))

(declare-fun b!2176868 () Bool)

(declare-fun e!1391986 () Bool)

(assert (=> b!2176868 (= e!1391991 e!1391986)))

(declare-fun res!936486 () Bool)

(assert (=> b!2176868 (=> (not res!936486) (not e!1391986))))

(assert (=> b!2176868 (= res!936486 (not lt!812257))))

(declare-fun b!2176869 () Bool)

(declare-fun res!936480 () Bool)

(assert (=> b!2176869 (=> res!936480 e!1391990)))

(assert (=> b!2176869 (= res!936480 (not (isEmpty!14477 (tail!3130 (tail!3130 (_1!14869 lt!811660))))))))

(declare-fun b!2176870 () Bool)

(declare-fun e!1391992 () Bool)

(assert (=> b!2176870 (= e!1391992 (matchR!2780 (derivativeStep!1448 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660))) (head!4658 (tail!3130 (_1!14869 lt!811660)))) (tail!3130 (tail!3130 (_1!14869 lt!811660)))))))

(declare-fun b!2176871 () Bool)

(declare-fun res!936481 () Bool)

(assert (=> b!2176871 (=> (not res!936481) (not e!1391988))))

(assert (=> b!2176871 (= res!936481 (not call!130773))))

(declare-fun d!651635 () Bool)

(assert (=> d!651635 e!1391987))

(declare-fun c!345454 () Bool)

(assert (=> d!651635 (= c!345454 ((_ is EmptyExpr!6031) (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660)))))))

(assert (=> d!651635 (= lt!812257 e!1391992)))

(declare-fun c!345455 () Bool)

(assert (=> d!651635 (= c!345455 (isEmpty!14477 (tail!3130 (_1!14869 lt!811660))))))

(assert (=> d!651635 (validRegex!2307 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660))))))

(assert (=> d!651635 (= (matchR!2780 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660))) (tail!3130 (_1!14869 lt!811660))) lt!812257)))

(declare-fun b!2176864 () Bool)

(declare-fun res!936482 () Bool)

(assert (=> b!2176864 (=> (not res!936482) (not e!1391988))))

(assert (=> b!2176864 (= res!936482 (isEmpty!14477 (tail!3130 (tail!3130 (_1!14869 lt!811660)))))))

(declare-fun b!2176872 () Bool)

(declare-fun res!936484 () Bool)

(assert (=> b!2176872 (=> res!936484 e!1391991)))

(assert (=> b!2176872 (= res!936484 e!1391988)))

(declare-fun res!936483 () Bool)

(assert (=> b!2176872 (=> (not res!936483) (not e!1391988))))

(assert (=> b!2176872 (= res!936483 lt!812257)))

(declare-fun b!2176873 () Bool)

(assert (=> b!2176873 (= e!1391992 (nullable!1705 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660)))))))

(declare-fun b!2176874 () Bool)

(assert (=> b!2176874 (= e!1391987 (= lt!812257 call!130773))))

(declare-fun b!2176875 () Bool)

(assert (=> b!2176875 (= e!1391986 e!1391990)))

(declare-fun res!936485 () Bool)

(assert (=> b!2176875 (=> res!936485 e!1391990)))

(assert (=> b!2176875 (= res!936485 call!130773)))

(assert (= (and d!651635 c!345455) b!2176873))

(assert (= (and d!651635 (not c!345455)) b!2176870))

(assert (= (and d!651635 c!345454) b!2176874))

(assert (= (and d!651635 (not c!345454)) b!2176863))

(assert (= (and b!2176863 c!345456) b!2176865))

(assert (= (and b!2176863 (not c!345456)) b!2176867))

(assert (= (and b!2176867 (not res!936479)) b!2176872))

(assert (= (and b!2176872 res!936483) b!2176871))

(assert (= (and b!2176871 res!936481) b!2176864))

(assert (= (and b!2176864 res!936482) b!2176866))

(assert (= (and b!2176872 (not res!936484)) b!2176868))

(assert (= (and b!2176868 res!936486) b!2176875))

(assert (= (and b!2176875 (not res!936485)) b!2176869))

(assert (= (and b!2176869 (not res!936480)) b!2176862))

(assert (= (or b!2176874 b!2176875 b!2176871) bm!130768))

(assert (=> b!2176869 m!2617183))

(declare-fun m!2618591 () Bool)

(assert (=> b!2176869 m!2618591))

(assert (=> b!2176869 m!2618591))

(declare-fun m!2618593 () Bool)

(assert (=> b!2176869 m!2618593))

(assert (=> bm!130768 m!2617183))

(assert (=> bm!130768 m!2617185))

(assert (=> b!2176866 m!2617183))

(declare-fun m!2618595 () Bool)

(assert (=> b!2176866 m!2618595))

(assert (=> b!2176870 m!2617183))

(assert (=> b!2176870 m!2618595))

(assert (=> b!2176870 m!2617189))

(assert (=> b!2176870 m!2618595))

(declare-fun m!2618597 () Bool)

(assert (=> b!2176870 m!2618597))

(assert (=> b!2176870 m!2617183))

(assert (=> b!2176870 m!2618591))

(assert (=> b!2176870 m!2618597))

(assert (=> b!2176870 m!2618591))

(declare-fun m!2618599 () Bool)

(assert (=> b!2176870 m!2618599))

(assert (=> b!2176873 m!2617189))

(declare-fun m!2618601 () Bool)

(assert (=> b!2176873 m!2618601))

(assert (=> b!2176862 m!2617183))

(assert (=> b!2176862 m!2618595))

(assert (=> b!2176864 m!2617183))

(assert (=> b!2176864 m!2618591))

(assert (=> b!2176864 m!2618591))

(assert (=> b!2176864 m!2618593))

(assert (=> d!651635 m!2617183))

(assert (=> d!651635 m!2617185))

(assert (=> d!651635 m!2617189))

(declare-fun m!2618603 () Bool)

(assert (=> d!651635 m!2618603))

(assert (=> b!2175557 d!651635))

(declare-fun b!2176876 () Bool)

(declare-fun e!1391996 () Regex!6031)

(assert (=> b!2176876 (= e!1391996 EmptyLang!6031)))

(declare-fun c!345457 () Bool)

(declare-fun call!130775 () Regex!6031)

(declare-fun c!345459 () Bool)

(declare-fun bm!130769 () Bool)

(assert (=> bm!130769 (= call!130775 (derivativeStep!1448 (ite c!345457 (regTwo!12575 r!12534) (ite c!345459 (reg!6360 r!12534) (regOne!12574 r!12534))) (head!4658 (_1!14869 lt!811660))))))

(declare-fun b!2176878 () Bool)

(declare-fun e!1391997 () Regex!6031)

(declare-fun call!130776 () Regex!6031)

(assert (=> b!2176878 (= e!1391997 (Union!6031 call!130776 call!130775))))

(declare-fun b!2176879 () Bool)

(declare-fun e!1391995 () Regex!6031)

(assert (=> b!2176879 (= e!1391996 e!1391995)))

(declare-fun c!345458 () Bool)

(assert (=> b!2176879 (= c!345458 ((_ is ElementMatch!6031) r!12534))))

(declare-fun b!2176880 () Bool)

(declare-fun e!1391993 () Regex!6031)

(declare-fun call!130774 () Regex!6031)

(assert (=> b!2176880 (= e!1391993 (Concat!10333 call!130774 r!12534))))

(declare-fun b!2176881 () Bool)

(declare-fun e!1391994 () Regex!6031)

(declare-fun call!130777 () Regex!6031)

(assert (=> b!2176881 (= e!1391994 (Union!6031 (Concat!10333 call!130777 (regTwo!12574 r!12534)) EmptyLang!6031))))

(declare-fun b!2176882 () Bool)

(assert (=> b!2176882 (= c!345457 ((_ is Union!6031) r!12534))))

(assert (=> b!2176882 (= e!1391995 e!1391997)))

(declare-fun bm!130770 () Bool)

(assert (=> bm!130770 (= call!130777 call!130774)))

(declare-fun bm!130771 () Bool)

(assert (=> bm!130771 (= call!130776 (derivativeStep!1448 (ite c!345457 (regOne!12575 r!12534) (regTwo!12574 r!12534)) (head!4658 (_1!14869 lt!811660))))))

(declare-fun b!2176883 () Bool)

(assert (=> b!2176883 (= e!1391994 (Union!6031 (Concat!10333 call!130777 (regTwo!12574 r!12534)) call!130776))))

(declare-fun b!2176884 () Bool)

(assert (=> b!2176884 (= e!1391995 (ite (= (head!4658 (_1!14869 lt!811660)) (c!345004 r!12534)) EmptyExpr!6031 EmptyLang!6031))))

(declare-fun b!2176877 () Bool)

(declare-fun c!345460 () Bool)

(assert (=> b!2176877 (= c!345460 (nullable!1705 (regOne!12574 r!12534)))))

(assert (=> b!2176877 (= e!1391993 e!1391994)))

(declare-fun d!651639 () Bool)

(declare-fun lt!812258 () Regex!6031)

(assert (=> d!651639 (validRegex!2307 lt!812258)))

(assert (=> d!651639 (= lt!812258 e!1391996)))

(declare-fun c!345461 () Bool)

(assert (=> d!651639 (= c!345461 (or ((_ is EmptyExpr!6031) r!12534) ((_ is EmptyLang!6031) r!12534)))))

(assert (=> d!651639 (validRegex!2307 r!12534)))

(assert (=> d!651639 (= (derivativeStep!1448 r!12534 (head!4658 (_1!14869 lt!811660))) lt!812258)))

(declare-fun bm!130772 () Bool)

(assert (=> bm!130772 (= call!130774 call!130775)))

(declare-fun b!2176885 () Bool)

(assert (=> b!2176885 (= e!1391997 e!1391993)))

(assert (=> b!2176885 (= c!345459 ((_ is Star!6031) r!12534))))

(assert (= (and d!651639 c!345461) b!2176876))

(assert (= (and d!651639 (not c!345461)) b!2176879))

(assert (= (and b!2176879 c!345458) b!2176884))

(assert (= (and b!2176879 (not c!345458)) b!2176882))

(assert (= (and b!2176882 c!345457) b!2176878))

(assert (= (and b!2176882 (not c!345457)) b!2176885))

(assert (= (and b!2176885 c!345459) b!2176880))

(assert (= (and b!2176885 (not c!345459)) b!2176877))

(assert (= (and b!2176877 c!345460) b!2176883))

(assert (= (and b!2176877 (not c!345460)) b!2176881))

(assert (= (or b!2176883 b!2176881) bm!130770))

(assert (= (or b!2176880 bm!130770) bm!130772))

(assert (= (or b!2176878 b!2176883) bm!130771))

(assert (= (or b!2176878 bm!130772) bm!130769))

(assert (=> bm!130769 m!2617187))

(declare-fun m!2618611 () Bool)

(assert (=> bm!130769 m!2618611))

(assert (=> bm!130771 m!2617187))

(declare-fun m!2618613 () Bool)

(assert (=> bm!130771 m!2618613))

(assert (=> b!2176877 m!2617985))

(declare-fun m!2618615 () Bool)

(assert (=> d!651639 m!2618615))

(assert (=> d!651639 m!2617091))

(assert (=> b!2175557 d!651639))

(assert (=> b!2175557 d!651339))

(assert (=> b!2175557 d!651433))

(declare-fun d!651645 () Bool)

(assert (=> d!651645 (= (isEmpty!14477 (tail!3130 (_1!14869 lt!811654))) ((_ is Nil!25222) (tail!3130 (_1!14869 lt!811654))))))

(assert (=> b!2175565 d!651645))

(assert (=> b!2175565 d!651473))

(declare-fun b!2176889 () Bool)

(declare-fun res!936489 () Bool)

(declare-fun e!1392001 () Bool)

(assert (=> b!2176889 (=> (not res!936489) (not e!1392001))))

(assert (=> b!2176889 (= res!936489 (= (head!4658 (take!239 lt!811670 lt!811677)) (head!4658 lt!811670)))))

(declare-fun b!2176888 () Bool)

(declare-fun e!1392000 () Bool)

(assert (=> b!2176888 (= e!1392000 e!1392001)))

(declare-fun res!936487 () Bool)

(assert (=> b!2176888 (=> (not res!936487) (not e!1392001))))

(assert (=> b!2176888 (= res!936487 (not ((_ is Nil!25222) lt!811670)))))

(declare-fun d!651647 () Bool)

(declare-fun e!1391999 () Bool)

(assert (=> d!651647 e!1391999))

(declare-fun res!936488 () Bool)

(assert (=> d!651647 (=> res!936488 e!1391999)))

(declare-fun lt!812259 () Bool)

(assert (=> d!651647 (= res!936488 (not lt!812259))))

(assert (=> d!651647 (= lt!812259 e!1392000)))

(declare-fun res!936490 () Bool)

(assert (=> d!651647 (=> res!936490 e!1392000)))

(assert (=> d!651647 (= res!936490 ((_ is Nil!25222) (take!239 lt!811670 lt!811677)))))

(assert (=> d!651647 (= (isPrefix!2147 (take!239 lt!811670 lt!811677) lt!811670) lt!812259)))

(declare-fun b!2176891 () Bool)

(assert (=> b!2176891 (= e!1391999 (>= (size!19706 lt!811670) (size!19706 (take!239 lt!811670 lt!811677))))))

(declare-fun b!2176890 () Bool)

(assert (=> b!2176890 (= e!1392001 (isPrefix!2147 (tail!3130 (take!239 lt!811670 lt!811677)) (tail!3130 lt!811670)))))

(assert (= (and d!651647 (not res!936490)) b!2176888))

(assert (= (and b!2176888 res!936487) b!2176889))

(assert (= (and b!2176889 res!936489) b!2176890))

(assert (= (and d!651647 (not res!936488)) b!2176891))

(assert (=> b!2176889 m!2617101))

(declare-fun m!2618619 () Bool)

(assert (=> b!2176889 m!2618619))

(assert (=> b!2176889 m!2617441))

(assert (=> b!2176891 m!2617047))

(assert (=> b!2176891 m!2617101))

(declare-fun m!2618621 () Bool)

(assert (=> b!2176891 m!2618621))

(assert (=> b!2176890 m!2617101))

(declare-fun m!2618623 () Bool)

(assert (=> b!2176890 m!2618623))

(assert (=> b!2176890 m!2617447))

(assert (=> b!2176890 m!2618623))

(assert (=> b!2176890 m!2617447))

(declare-fun m!2618625 () Bool)

(assert (=> b!2176890 m!2618625))

(assert (=> d!651147 d!651647))

(assert (=> d!651147 d!651145))

(declare-fun d!651651 () Bool)

(assert (=> d!651651 (isPrefix!2147 (take!239 lt!811670 lt!811677) lt!811670)))

(assert (=> d!651651 true))

(declare-fun _$48!711 () Unit!38293)

(assert (=> d!651651 (= (choose!12851 lt!811670 lt!811677) _$48!711)))

(declare-fun bs!447206 () Bool)

(assert (= bs!447206 d!651651))

(assert (=> bs!447206 m!2617101))

(assert (=> bs!447206 m!2617101))

(assert (=> bs!447206 m!2617459))

(assert (=> d!651147 d!651651))

(declare-fun lt!812262 () Int)

(declare-fun d!651655 () Bool)

(assert (=> d!651655 (and (>= lt!812262 (- 1)) (< lt!812262 lt!811663) (>= lt!812262 e!1391434) (or (= lt!812262 e!1391434) (>= lt!812262 (+ lt!811673 1))))))

(declare-fun e!1392005 () Int)

(assert (=> d!651655 (= lt!812262 e!1392005)))

(declare-fun c!345463 () Bool)

(declare-fun e!1392007 () Bool)

(assert (=> d!651655 (= c!345463 e!1392007)))

(declare-fun res!936495 () Bool)

(assert (=> d!651655 (=> res!936495 e!1392007)))

(assert (=> d!651655 (= res!936495 (= (+ lt!811673 1) lt!811663))))

(assert (=> d!651655 (and (>= (+ lt!811673 1) 0) (<= (+ lt!811673 1) lt!811663))))

(assert (=> d!651655 (= (furthestNullablePosition!213 lt!811866 (+ lt!811673 1) totalInput!977 lt!811663 e!1391434) lt!812262)))

(declare-fun b!2176896 () Bool)

(declare-fun e!1392006 () Int)

(assert (=> b!2176896 (= e!1392006 e!1391434)))

(declare-fun b!2176897 () Bool)

(assert (=> b!2176897 (= e!1392007 (lostCauseZipper!167 lt!811866))))

(declare-fun b!2176898 () Bool)

(declare-fun lt!812261 () (InoxSet Context!3202))

(assert (=> b!2176898 (= e!1392005 (furthestNullablePosition!213 lt!812261 (+ lt!811673 1 1) totalInput!977 lt!811663 e!1392006))))

(assert (=> b!2176898 (= lt!812261 (derivationStepZipper!134 lt!811866 (apply!6076 totalInput!977 (+ lt!811673 1))))))

(declare-fun c!345464 () Bool)

(assert (=> b!2176898 (= c!345464 (nullableZipper!311 lt!812261))))

(declare-fun b!2176899 () Bool)

(assert (=> b!2176899 (= e!1392006 (+ lt!811673 1))))

(declare-fun b!2176900 () Bool)

(assert (=> b!2176900 (= e!1392005 e!1391434)))

(assert (= (and d!651655 (not res!936495)) b!2176897))

(assert (= (and d!651655 c!345463) b!2176900))

(assert (= (and d!651655 (not c!345463)) b!2176898))

(assert (= (and b!2176898 c!345464) b!2176899))

(assert (= (and b!2176898 (not c!345464)) b!2176896))

(declare-fun m!2618631 () Bool)

(assert (=> b!2176897 m!2618631))

(declare-fun m!2618633 () Bool)

(assert (=> b!2176898 m!2618633))

(declare-fun m!2618635 () Bool)

(assert (=> b!2176898 m!2618635))

(assert (=> b!2176898 m!2618635))

(declare-fun m!2618637 () Bool)

(assert (=> b!2176898 m!2618637))

(declare-fun m!2618639 () Bool)

(assert (=> b!2176898 m!2618639))

(assert (=> b!2175888 d!651655))

(declare-fun bs!447207 () Bool)

(declare-fun d!651659 () Bool)

(assert (= bs!447207 (and d!651659 d!651575)))

(declare-fun lambda!81897 () Int)

(assert (=> bs!447207 (= (= (apply!6076 totalInput!977 lt!811673) (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))) (= lambda!81897 lambda!81889))))

(declare-fun bs!447208 () Bool)

(assert (= bs!447208 (and d!651659 d!651593)))

(assert (=> bs!447208 (= (= (apply!6076 totalInput!977 lt!811673) (head!4658 lt!811676)) (= lambda!81897 lambda!81893))))

(declare-fun bs!447209 () Bool)

(assert (= bs!447209 (and d!651659 d!651631)))

(assert (=> bs!447209 (= (= (apply!6076 totalInput!977 lt!811673) (head!4658 (_1!14869 lt!811654))) (= lambda!81897 lambda!81895))))

(assert (=> d!651659 true))

(assert (=> d!651659 (= (derivationStepZipper!134 z!4055 (apply!6076 totalInput!977 lt!811673)) (flatMap!134 z!4055 lambda!81897))))

(declare-fun bs!447210 () Bool)

(assert (= bs!447210 d!651659))

(declare-fun m!2618643 () Bool)

(assert (=> bs!447210 m!2618643))

(assert (=> b!2175888 d!651659))

(declare-fun d!651663 () Bool)

(declare-fun lt!812273 () C!12208)

(declare-fun apply!6077 (List!25306 Int) C!12208)

(assert (=> d!651663 (= lt!812273 (apply!6077 (list!9676 totalInput!977) lt!811673))))

(declare-fun apply!6078 (Conc!8167 Int) C!12208)

(assert (=> d!651663 (= lt!812273 (apply!6078 (c!345005 totalInput!977) lt!811673))))

(declare-fun e!1392017 () Bool)

(assert (=> d!651663 e!1392017))

(declare-fun res!936502 () Bool)

(assert (=> d!651663 (=> (not res!936502) (not e!1392017))))

(assert (=> d!651663 (= res!936502 (<= 0 lt!811673))))

(assert (=> d!651663 (= (apply!6076 totalInput!977 lt!811673) lt!812273)))

(declare-fun b!2176915 () Bool)

(assert (=> b!2176915 (= e!1392017 (< lt!811673 (size!19707 totalInput!977)))))

(assert (= (and d!651663 res!936502) b!2176915))

(assert (=> d!651663 m!2617037))

(assert (=> d!651663 m!2617037))

(declare-fun m!2618677 () Bool)

(assert (=> d!651663 m!2618677))

(declare-fun m!2618679 () Bool)

(assert (=> d!651663 m!2618679))

(assert (=> b!2176915 m!2617023))

(assert (=> b!2175888 d!651663))

(declare-fun bs!447215 () Bool)

(declare-fun d!651679 () Bool)

(assert (= bs!447215 (and d!651679 d!651219)))

(declare-fun lambda!81898 () Int)

(assert (=> bs!447215 (= lambda!81898 lambda!81859)))

(declare-fun bs!447216 () Bool)

(assert (= bs!447216 (and d!651679 d!651381)))

(assert (=> bs!447216 (not (= lambda!81898 lambda!81872))))

(declare-fun bs!447217 () Bool)

(assert (= bs!447217 (and d!651679 b!2176434)))

(assert (=> bs!447217 (not (= lambda!81898 lambda!81873))))

(declare-fun bs!447218 () Bool)

(assert (= bs!447218 (and d!651679 b!2176435)))

(assert (=> bs!447218 (not (= lambda!81898 lambda!81874))))

(assert (=> d!651679 (= (nullableZipper!311 lt!811866) (exists!768 lt!811866 lambda!81898))))

(declare-fun bs!447219 () Bool)

(assert (= bs!447219 d!651679))

(declare-fun m!2618681 () Bool)

(assert (=> bs!447219 m!2618681))

(assert (=> b!2175888 d!651679))

(assert (=> d!651263 d!651275))

(declare-fun d!651681 () Bool)

(declare-fun c!345469 () Bool)

(assert (=> d!651681 (= c!345469 ((_ is Nil!25222) lt!811707))))

(declare-fun e!1392018 () (InoxSet C!12208))

(assert (=> d!651681 (= (content!3436 lt!811707) e!1392018)))

(declare-fun b!2176916 () Bool)

(assert (=> b!2176916 (= e!1392018 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176917 () Bool)

(assert (=> b!2176917 (= e!1392018 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811707) true) (content!3436 (t!197874 lt!811707))))))

(assert (= (and d!651681 c!345469) b!2176916))

(assert (= (and d!651681 (not c!345469)) b!2176917))

(declare-fun m!2618683 () Bool)

(assert (=> b!2176917 m!2618683))

(declare-fun m!2618685 () Bool)

(assert (=> b!2176917 m!2618685))

(assert (=> d!651087 d!651681))

(declare-fun d!651683 () Bool)

(declare-fun c!345470 () Bool)

(assert (=> d!651683 (= c!345470 ((_ is Nil!25222) (drop!1249 lt!811667 lt!811673)))))

(declare-fun e!1392019 () (InoxSet C!12208))

(assert (=> d!651683 (= (content!3436 (drop!1249 lt!811667 lt!811673)) e!1392019)))

(declare-fun b!2176918 () Bool)

(assert (=> b!2176918 (= e!1392019 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2176919 () Bool)

(assert (=> b!2176919 (= e!1392019 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 (drop!1249 lt!811667 lt!811673)) true) (content!3436 (t!197874 (drop!1249 lt!811667 lt!811673)))))))

(assert (= (and d!651683 c!345470) b!2176918))

(assert (= (and d!651683 (not c!345470)) b!2176919))

(declare-fun m!2618687 () Bool)

(assert (=> b!2176919 m!2618687))

(declare-fun m!2618689 () Bool)

(assert (=> b!2176919 m!2618689))

(assert (=> d!651087 d!651683))

(declare-fun d!651685 () Bool)

(assert (=> d!651685 (= (head!4658 lt!811659) (h!30623 lt!811659))))

(assert (=> b!2175832 d!651685))

(assert (=> b!2175832 d!651439))

(declare-fun d!651687 () Bool)

(declare-fun res!936509 () Bool)

(declare-fun e!1392022 () Bool)

(assert (=> d!651687 (=> (not res!936509) (not e!1392022))))

(assert (=> d!651687 (= res!936509 (= (csize!16564 (c!345005 totalInput!977)) (+ (size!19709 (left!19365 (c!345005 totalInput!977))) (size!19709 (right!19695 (c!345005 totalInput!977))))))))

(assert (=> d!651687 (= (inv!33509 (c!345005 totalInput!977)) e!1392022)))

(declare-fun b!2176926 () Bool)

(declare-fun res!936510 () Bool)

(assert (=> b!2176926 (=> (not res!936510) (not e!1392022))))

(assert (=> b!2176926 (= res!936510 (and (not (= (left!19365 (c!345005 totalInput!977)) Empty!8167)) (not (= (right!19695 (c!345005 totalInput!977)) Empty!8167))))))

(declare-fun b!2176927 () Bool)

(declare-fun res!936511 () Bool)

(assert (=> b!2176927 (=> (not res!936511) (not e!1392022))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1243 (Conc!8167) Int)

(assert (=> b!2176927 (= res!936511 (= (cheight!8378 (c!345005 totalInput!977)) (+ (max!0 (height!1243 (left!19365 (c!345005 totalInput!977))) (height!1243 (right!19695 (c!345005 totalInput!977)))) 1)))))

(declare-fun b!2176928 () Bool)

(assert (=> b!2176928 (= e!1392022 (<= 0 (cheight!8378 (c!345005 totalInput!977))))))

(assert (= (and d!651687 res!936509) b!2176926))

(assert (= (and b!2176926 res!936510) b!2176927))

(assert (= (and b!2176927 res!936511) b!2176928))

(declare-fun m!2618691 () Bool)

(assert (=> d!651687 m!2618691))

(declare-fun m!2618693 () Bool)

(assert (=> d!651687 m!2618693))

(declare-fun m!2618695 () Bool)

(assert (=> b!2176927 m!2618695))

(declare-fun m!2618697 () Bool)

(assert (=> b!2176927 m!2618697))

(assert (=> b!2176927 m!2618695))

(assert (=> b!2176927 m!2618697))

(declare-fun m!2618699 () Bool)

(assert (=> b!2176927 m!2618699))

(assert (=> b!2175583 d!651687))

(assert (=> b!2176073 d!651595))

(declare-fun d!651689 () Bool)

(assert (=> d!651689 (= (head!4658 lt!811678) (h!30623 lt!811678))))

(assert (=> b!2176073 d!651689))

(declare-fun d!651691 () Bool)

(declare-fun lt!812274 () Int)

(assert (=> d!651691 (>= lt!812274 0)))

(declare-fun e!1392023 () Int)

(assert (=> d!651691 (= lt!812274 e!1392023)))

(declare-fun c!345471 () Bool)

(assert (=> d!651691 (= c!345471 ((_ is Nil!25222) lt!812030))))

(assert (=> d!651691 (= (size!19706 lt!812030) lt!812274)))

(declare-fun b!2176929 () Bool)

(assert (=> b!2176929 (= e!1392023 0)))

(declare-fun b!2176930 () Bool)

(assert (=> b!2176930 (= e!1392023 (+ 1 (size!19706 (t!197874 lt!812030))))))

(assert (= (and d!651691 c!345471) b!2176929))

(assert (= (and d!651691 (not c!345471)) b!2176930))

(declare-fun m!2618701 () Bool)

(assert (=> b!2176930 m!2618701))

(assert (=> b!2176102 d!651691))

(declare-fun d!651693 () Bool)

(declare-fun lt!812275 () Int)

(assert (=> d!651693 (>= lt!812275 0)))

(declare-fun e!1392024 () Int)

(assert (=> d!651693 (= lt!812275 e!1392024)))

(declare-fun c!345472 () Bool)

(assert (=> d!651693 (= c!345472 ((_ is Nil!25222) lt!811676))))

(assert (=> d!651693 (= (size!19706 lt!811676) lt!812275)))

(declare-fun b!2176931 () Bool)

(assert (=> b!2176931 (= e!1392024 0)))

(declare-fun b!2176932 () Bool)

(assert (=> b!2176932 (= e!1392024 (+ 1 (size!19706 (t!197874 lt!811676))))))

(assert (= (and d!651693 c!345472) b!2176931))

(assert (= (and d!651693 (not c!345472)) b!2176932))

(assert (=> b!2176932 m!2618165))

(assert (=> b!2176102 d!651693))

(declare-fun d!651695 () Bool)

(declare-fun lt!812276 () Int)

(assert (=> d!651695 (>= lt!812276 0)))

(declare-fun e!1392025 () Int)

(assert (=> d!651695 (= lt!812276 e!1392025)))

(declare-fun c!345473 () Bool)

(assert (=> d!651695 (= c!345473 ((_ is Nil!25222) lt!811679))))

(assert (=> d!651695 (= (size!19706 lt!811679) lt!812276)))

(declare-fun b!2176933 () Bool)

(assert (=> b!2176933 (= e!1392025 0)))

(declare-fun b!2176934 () Bool)

(assert (=> b!2176934 (= e!1392025 (+ 1 (size!19706 (t!197874 lt!811679))))))

(assert (= (and d!651695 c!345473) b!2176933))

(assert (= (and d!651695 (not c!345473)) b!2176934))

(declare-fun m!2618703 () Bool)

(assert (=> b!2176934 m!2618703))

(assert (=> b!2176102 d!651695))

(declare-fun d!651697 () Bool)

(declare-fun lt!812277 () Int)

(assert (=> d!651697 (>= lt!812277 0)))

(declare-fun e!1392026 () Int)

(assert (=> d!651697 (= lt!812277 e!1392026)))

(declare-fun c!345474 () Bool)

(assert (=> d!651697 (= c!345474 ((_ is Nil!25222) lt!812005))))

(assert (=> d!651697 (= (size!19706 lt!812005) lt!812277)))

(declare-fun b!2176935 () Bool)

(assert (=> b!2176935 (= e!1392026 0)))

(declare-fun b!2176936 () Bool)

(assert (=> b!2176936 (= e!1392026 (+ 1 (size!19706 (t!197874 lt!812005))))))

(assert (= (and d!651697 c!345474) b!2176935))

(assert (= (and d!651697 (not c!345474)) b!2176936))

(declare-fun m!2618705 () Bool)

(assert (=> b!2176936 m!2618705))

(assert (=> b!2176067 d!651697))

(declare-fun d!651699 () Bool)

(assert (=> d!651699 (= lt!811670 Nil!25222)))

(declare-fun lt!812278 () Unit!38293)

(assert (=> d!651699 (= lt!812278 (choose!12848 lt!811670 Nil!25222 lt!811670))))

(assert (=> d!651699 (isPrefix!2147 lt!811670 lt!811670)))

(assert (=> d!651699 (= (lemmaIsPrefixSameLengthThenSameList!359 lt!811670 Nil!25222 lt!811670) lt!812278)))

(declare-fun bs!447220 () Bool)

(assert (= bs!447220 d!651699))

(declare-fun m!2618707 () Bool)

(assert (=> bs!447220 m!2618707))

(assert (=> bs!447220 m!2617693))

(assert (=> bm!130670 d!651699))

(declare-fun b!2176938 () Bool)

(declare-fun res!936514 () Bool)

(declare-fun e!1392029 () Bool)

(assert (=> b!2176938 (=> (not res!936514) (not e!1392029))))

(assert (=> b!2176938 (= res!936514 (= (head!4658 (tail!3130 (_1!14869 lt!811654))) (head!4658 (tail!3130 lt!811666))))))

(declare-fun b!2176937 () Bool)

(declare-fun e!1392028 () Bool)

(assert (=> b!2176937 (= e!1392028 e!1392029)))

(declare-fun res!936512 () Bool)

(assert (=> b!2176937 (=> (not res!936512) (not e!1392029))))

(assert (=> b!2176937 (= res!936512 (not ((_ is Nil!25222) (tail!3130 lt!811666))))))

(declare-fun d!651701 () Bool)

(declare-fun e!1392027 () Bool)

(assert (=> d!651701 e!1392027))

(declare-fun res!936513 () Bool)

(assert (=> d!651701 (=> res!936513 e!1392027)))

(declare-fun lt!812279 () Bool)

(assert (=> d!651701 (= res!936513 (not lt!812279))))

(assert (=> d!651701 (= lt!812279 e!1392028)))

(declare-fun res!936515 () Bool)

(assert (=> d!651701 (=> res!936515 e!1392028)))

(assert (=> d!651701 (= res!936515 ((_ is Nil!25222) (tail!3130 (_1!14869 lt!811654))))))

(assert (=> d!651701 (= (isPrefix!2147 (tail!3130 (_1!14869 lt!811654)) (tail!3130 lt!811666)) lt!812279)))

(declare-fun b!2176940 () Bool)

(assert (=> b!2176940 (= e!1392027 (>= (size!19706 (tail!3130 lt!811666)) (size!19706 (tail!3130 (_1!14869 lt!811654)))))))

(declare-fun b!2176939 () Bool)

(assert (=> b!2176939 (= e!1392029 (isPrefix!2147 (tail!3130 (tail!3130 (_1!14869 lt!811654))) (tail!3130 (tail!3130 lt!811666))))))

(assert (= (and d!651701 (not res!936515)) b!2176937))

(assert (= (and b!2176937 res!936512) b!2176938))

(assert (= (and b!2176938 res!936514) b!2176939))

(assert (= (and d!651701 (not res!936513)) b!2176940))

(assert (=> b!2176938 m!2617195))

(assert (=> b!2176938 m!2618197))

(assert (=> b!2176938 m!2617753))

(declare-fun m!2618709 () Bool)

(assert (=> b!2176938 m!2618709))

(assert (=> b!2176940 m!2617753))

(declare-fun m!2618711 () Bool)

(assert (=> b!2176940 m!2618711))

(assert (=> b!2176940 m!2617195))

(declare-fun m!2618713 () Bool)

(assert (=> b!2176940 m!2618713))

(assert (=> b!2176939 m!2617195))

(assert (=> b!2176939 m!2618193))

(assert (=> b!2176939 m!2617753))

(declare-fun m!2618715 () Bool)

(assert (=> b!2176939 m!2618715))

(assert (=> b!2176939 m!2618193))

(assert (=> b!2176939 m!2618715))

(declare-fun m!2618717 () Bool)

(assert (=> b!2176939 m!2618717))

(assert (=> b!2176086 d!651701))

(assert (=> b!2176086 d!651473))

(declare-fun d!651703 () Bool)

(assert (=> d!651703 (= (tail!3130 lt!811666) (t!197874 lt!811666))))

(assert (=> b!2176086 d!651703))

(declare-fun d!651705 () Bool)

(assert (=> d!651705 (= (nullable!1705 (reg!6360 r!12534)) (nullableFct!390 (reg!6360 r!12534)))))

(declare-fun bs!447221 () Bool)

(assert (= bs!447221 d!651705))

(declare-fun m!2618719 () Bool)

(assert (=> bs!447221 m!2618719))

(assert (=> b!2176136 d!651705))

(assert (=> b!2175838 d!651207))

(assert (=> b!2175574 d!651455))

(declare-fun b!2176941 () Bool)

(declare-fun e!1392033 () Int)

(assert (=> b!2176941 (= e!1392033 0)))

(declare-fun b!2176943 () Bool)

(declare-fun e!1392030 () Bool)

(declare-fun lt!812280 () List!25306)

(assert (=> b!2176943 (= e!1392030 (= (size!19706 lt!812280) e!1392033))))

(declare-fun c!345477 () Bool)

(assert (=> b!2176943 (= c!345477 (<= (- lt!811657 1) 0))))

(declare-fun b!2176944 () Bool)

(declare-fun e!1392032 () Int)

(assert (=> b!2176944 (= e!1392032 (size!19706 (t!197874 (drop!1249 lt!811667 lt!811673))))))

(declare-fun b!2176945 () Bool)

(declare-fun e!1392031 () List!25306)

(assert (=> b!2176945 (= e!1392031 Nil!25222)))

(declare-fun b!2176946 () Bool)

(assert (=> b!2176946 (= e!1392032 (- lt!811657 1))))

(declare-fun b!2176947 () Bool)

(assert (=> b!2176947 (= e!1392031 (Cons!25222 (h!30623 (t!197874 (drop!1249 lt!811667 lt!811673))) (take!239 (t!197874 (t!197874 (drop!1249 lt!811667 lt!811673))) (- (- lt!811657 1) 1))))))

(declare-fun d!651707 () Bool)

(assert (=> d!651707 e!1392030))

(declare-fun res!936516 () Bool)

(assert (=> d!651707 (=> (not res!936516) (not e!1392030))))

(assert (=> d!651707 (= res!936516 (= ((_ map implies) (content!3436 lt!812280) (content!3436 (t!197874 (drop!1249 lt!811667 lt!811673)))) ((as const (InoxSet C!12208)) true)))))

(assert (=> d!651707 (= lt!812280 e!1392031)))

(declare-fun c!345475 () Bool)

(assert (=> d!651707 (= c!345475 (or ((_ is Nil!25222) (t!197874 (drop!1249 lt!811667 lt!811673))) (<= (- lt!811657 1) 0)))))

(assert (=> d!651707 (= (take!239 (t!197874 (drop!1249 lt!811667 lt!811673)) (- lt!811657 1)) lt!812280)))

(declare-fun b!2176942 () Bool)

(assert (=> b!2176942 (= e!1392033 e!1392032)))

(declare-fun c!345476 () Bool)

(assert (=> b!2176942 (= c!345476 (>= (- lt!811657 1) (size!19706 (t!197874 (drop!1249 lt!811667 lt!811673)))))))

(assert (= (and d!651707 c!345475) b!2176945))

(assert (= (and d!651707 (not c!345475)) b!2176947))

(assert (= (and d!651707 res!936516) b!2176943))

(assert (= (and b!2176943 c!345477) b!2176941))

(assert (= (and b!2176943 (not c!345477)) b!2176942))

(assert (= (and b!2176942 c!345476) b!2176944))

(assert (= (and b!2176942 (not c!345476)) b!2176946))

(declare-fun m!2618721 () Bool)

(assert (=> d!651707 m!2618721))

(assert (=> d!651707 m!2618689))

(declare-fun m!2618723 () Bool)

(assert (=> b!2176943 m!2618723))

(assert (=> b!2176942 m!2618223))

(assert (=> b!2176944 m!2618223))

(declare-fun m!2618725 () Bool)

(assert (=> b!2176947 m!2618725))

(assert (=> b!2175624 d!651707))

(assert (=> b!2176154 d!651455))

(declare-fun d!651709 () Bool)

(assert (=> d!651709 (= lt!811665 (_1!14869 lt!811654))))

(assert (=> d!651709 true))

(declare-fun _$60!708 () Unit!38293)

(assert (=> d!651709 (= (choose!12848 lt!811665 (_1!14869 lt!811654) lt!811670) _$60!708)))

(assert (=> d!651141 d!651709))

(declare-fun b!2176949 () Bool)

(declare-fun res!936519 () Bool)

(declare-fun e!1392036 () Bool)

(assert (=> b!2176949 (=> (not res!936519) (not e!1392036))))

(assert (=> b!2176949 (= res!936519 (= (head!4658 lt!811665) (head!4658 lt!811670)))))

(declare-fun b!2176948 () Bool)

(declare-fun e!1392035 () Bool)

(assert (=> b!2176948 (= e!1392035 e!1392036)))

(declare-fun res!936517 () Bool)

(assert (=> b!2176948 (=> (not res!936517) (not e!1392036))))

(assert (=> b!2176948 (= res!936517 (not ((_ is Nil!25222) lt!811670)))))

(declare-fun d!651711 () Bool)

(declare-fun e!1392034 () Bool)

(assert (=> d!651711 e!1392034))

(declare-fun res!936518 () Bool)

(assert (=> d!651711 (=> res!936518 e!1392034)))

(declare-fun lt!812285 () Bool)

(assert (=> d!651711 (= res!936518 (not lt!812285))))

(assert (=> d!651711 (= lt!812285 e!1392035)))

(declare-fun res!936520 () Bool)

(assert (=> d!651711 (=> res!936520 e!1392035)))

(assert (=> d!651711 (= res!936520 ((_ is Nil!25222) lt!811665))))

(assert (=> d!651711 (= (isPrefix!2147 lt!811665 lt!811670) lt!812285)))

(declare-fun b!2176951 () Bool)

(assert (=> b!2176951 (= e!1392034 (>= (size!19706 lt!811670) (size!19706 lt!811665)))))

(declare-fun b!2176950 () Bool)

(assert (=> b!2176950 (= e!1392036 (isPrefix!2147 (tail!3130 lt!811665) (tail!3130 lt!811670)))))

(assert (= (and d!651711 (not res!936520)) b!2176948))

(assert (= (and b!2176948 res!936517) b!2176949))

(assert (= (and b!2176949 res!936519) b!2176950))

(assert (= (and d!651711 (not res!936518)) b!2176951))

(assert (=> b!2176949 m!2617465))

(assert (=> b!2176949 m!2617441))

(assert (=> b!2176951 m!2617047))

(declare-fun m!2618727 () Bool)

(assert (=> b!2176951 m!2618727))

(assert (=> b!2176950 m!2617469))

(assert (=> b!2176950 m!2617447))

(assert (=> b!2176950 m!2617469))

(assert (=> b!2176950 m!2617447))

(declare-fun m!2618729 () Bool)

(assert (=> b!2176950 m!2618729))

(assert (=> d!651141 d!651711))

(assert (=> b!2176095 d!651243))

(declare-fun b!2176957 () Bool)

(declare-fun e!1392039 () List!25306)

(assert (=> b!2176957 (= e!1392039 (Cons!25222 (h!30623 (list!9676 (_1!14870 lt!812064))) (++!6390 (t!197874 (list!9676 (_1!14870 lt!812064))) (list!9676 (_2!14870 lt!812064)))))))

(declare-fun b!2176959 () Bool)

(declare-fun e!1392040 () Bool)

(declare-fun lt!812286 () List!25306)

(assert (=> b!2176959 (= e!1392040 (or (not (= (list!9676 (_2!14870 lt!812064)) Nil!25222)) (= lt!812286 (list!9676 (_1!14870 lt!812064)))))))

(declare-fun d!651713 () Bool)

(assert (=> d!651713 e!1392040))

(declare-fun res!936525 () Bool)

(assert (=> d!651713 (=> (not res!936525) (not e!1392040))))

(assert (=> d!651713 (= res!936525 (= (content!3436 lt!812286) ((_ map or) (content!3436 (list!9676 (_1!14870 lt!812064))) (content!3436 (list!9676 (_2!14870 lt!812064))))))))

(assert (=> d!651713 (= lt!812286 e!1392039)))

(declare-fun c!345478 () Bool)

(assert (=> d!651713 (= c!345478 ((_ is Nil!25222) (list!9676 (_1!14870 lt!812064))))))

(assert (=> d!651713 (= (++!6390 (list!9676 (_1!14870 lt!812064)) (list!9676 (_2!14870 lt!812064))) lt!812286)))

(declare-fun b!2176958 () Bool)

(declare-fun res!936526 () Bool)

(assert (=> b!2176958 (=> (not res!936526) (not e!1392040))))

(assert (=> b!2176958 (= res!936526 (= (size!19706 lt!812286) (+ (size!19706 (list!9676 (_1!14870 lt!812064))) (size!19706 (list!9676 (_2!14870 lt!812064))))))))

(declare-fun b!2176956 () Bool)

(assert (=> b!2176956 (= e!1392039 (list!9676 (_2!14870 lt!812064)))))

(assert (= (and d!651713 c!345478) b!2176956))

(assert (= (and d!651713 (not c!345478)) b!2176957))

(assert (= (and d!651713 res!936525) b!2176958))

(assert (= (and b!2176958 res!936526) b!2176959))

(assert (=> b!2176957 m!2617821))

(declare-fun m!2618731 () Bool)

(assert (=> b!2176957 m!2618731))

(declare-fun m!2618733 () Bool)

(assert (=> d!651713 m!2618733))

(assert (=> d!651713 m!2617819))

(declare-fun m!2618735 () Bool)

(assert (=> d!651713 m!2618735))

(assert (=> d!651713 m!2617821))

(declare-fun m!2618737 () Bool)

(assert (=> d!651713 m!2618737))

(declare-fun m!2618739 () Bool)

(assert (=> b!2176958 m!2618739))

(assert (=> b!2176958 m!2617819))

(declare-fun m!2618741 () Bool)

(assert (=> b!2176958 m!2618741))

(assert (=> b!2176958 m!2617821))

(declare-fun m!2618743 () Bool)

(assert (=> b!2176958 m!2618743))

(assert (=> d!651253 d!651713))

(assert (=> d!651253 d!651239))

(declare-fun d!651715 () Bool)

(declare-fun lt!812288 () Int)

(assert (=> d!651715 (and (>= lt!812288 (- 1)) (< lt!812288 lt!812065) (>= lt!812288 e!1391564) (or (= lt!812288 e!1391564) (>= lt!812288 lt!812066)))))

(declare-fun e!1392041 () Int)

(assert (=> d!651715 (= lt!812288 e!1392041)))

(declare-fun c!345479 () Bool)

(declare-fun e!1392043 () Bool)

(assert (=> d!651715 (= c!345479 e!1392043)))

(declare-fun res!936527 () Bool)

(assert (=> d!651715 (=> res!936527 e!1392043)))

(assert (=> d!651715 (= res!936527 (= lt!812066 lt!812065))))

(assert (=> d!651715 (and (>= lt!812066 0) (<= lt!812066 lt!812065))))

(assert (=> d!651715 (= (furthestNullablePosition!213 z!4055 lt!812066 totalInput!977 lt!812065 e!1391564) lt!812288)))

(declare-fun b!2176960 () Bool)

(declare-fun e!1392042 () Int)

(assert (=> b!2176960 (= e!1392042 e!1391564)))

(declare-fun b!2176961 () Bool)

(assert (=> b!2176961 (= e!1392043 (lostCauseZipper!167 z!4055))))

(declare-fun b!2176962 () Bool)

(declare-fun lt!812287 () (InoxSet Context!3202))

(assert (=> b!2176962 (= e!1392041 (furthestNullablePosition!213 lt!812287 (+ lt!812066 1) totalInput!977 lt!812065 e!1392042))))

(assert (=> b!2176962 (= lt!812287 (derivationStepZipper!134 z!4055 (apply!6076 totalInput!977 lt!812066)))))

(declare-fun c!345480 () Bool)

(assert (=> b!2176962 (= c!345480 (nullableZipper!311 lt!812287))))

(declare-fun b!2176963 () Bool)

(assert (=> b!2176963 (= e!1392042 lt!812066)))

(declare-fun b!2176964 () Bool)

(assert (=> b!2176964 (= e!1392041 e!1391564)))

(assert (= (and d!651715 (not res!936527)) b!2176961))

(assert (= (and d!651715 c!345479) b!2176964))

(assert (= (and d!651715 (not c!345479)) b!2176962))

(assert (= (and b!2176962 c!345480) b!2176963))

(assert (= (and b!2176962 (not c!345480)) b!2176960))

(assert (=> b!2176961 m!2617517))

(declare-fun m!2618745 () Bool)

(assert (=> b!2176962 m!2618745))

(declare-fun m!2618747 () Bool)

(assert (=> b!2176962 m!2618747))

(assert (=> b!2176962 m!2618747))

(declare-fun m!2618749 () Bool)

(assert (=> b!2176962 m!2618749))

(declare-fun m!2618751 () Bool)

(assert (=> b!2176962 m!2618751))

(assert (=> d!651253 d!651715))

(assert (=> d!651253 d!651243))

(declare-fun d!651717 () Bool)

(assert (=> d!651717 (= (list!9676 (_2!14870 lt!812064)) (list!9678 (c!345005 (_2!14870 lt!812064))))))

(declare-fun bs!447222 () Bool)

(assert (= bs!447222 d!651717))

(declare-fun m!2618753 () Bool)

(assert (=> bs!447222 m!2618753))

(assert (=> d!651253 d!651717))

(declare-fun d!651719 () Bool)

(declare-fun e!1392045 () Bool)

(assert (=> d!651719 e!1392045))

(declare-fun res!936530 () Bool)

(assert (=> d!651719 (=> res!936530 e!1392045)))

(declare-fun lt!812291 () Bool)

(assert (=> d!651719 (= res!936530 (not lt!812291))))

(assert (=> d!651719 (= lt!812291 (= (list!9676 input!5540) (drop!1249 (list!9676 totalInput!977) (- (size!19706 (list!9676 totalInput!977)) (size!19706 (list!9676 input!5540))))))))

(assert (=> d!651719 (= (isSuffix!698 (list!9676 input!5540) (list!9676 totalInput!977)) lt!812291)))

(declare-fun b!2176967 () Bool)

(assert (=> b!2176967 (= e!1392045 (>= (size!19706 (list!9676 totalInput!977)) (size!19706 (list!9676 input!5540))))))

(assert (= (and d!651719 (not res!936530)) b!2176967))

(assert (=> d!651719 m!2617037))

(assert (=> d!651719 m!2617781))

(assert (=> d!651719 m!2617039))

(assert (=> d!651719 m!2617799))

(assert (=> d!651719 m!2617037))

(declare-fun m!2618761 () Bool)

(assert (=> d!651719 m!2618761))

(assert (=> b!2176967 m!2617037))

(assert (=> b!2176967 m!2617781))

(assert (=> b!2176967 m!2617039))

(assert (=> b!2176967 m!2617799))

(assert (=> d!651253 d!651719))

(assert (=> d!651253 d!651219))

(assert (=> d!651253 d!651237))

(declare-fun d!651721 () Bool)

(assert (=> d!651721 (= (list!9676 (_1!14870 lt!812064)) (list!9678 (c!345005 (_1!14870 lt!812064))))))

(declare-fun bs!447223 () Bool)

(assert (= bs!447223 d!651721))

(declare-fun m!2618769 () Bool)

(assert (=> bs!447223 m!2618769))

(assert (=> d!651253 d!651721))

(assert (=> d!651253 d!651249))

(assert (=> b!2175551 d!651431))

(assert (=> b!2175551 d!651433))

(declare-fun d!651725 () Bool)

(assert (=> d!651725 (= (head!4658 (take!239 lt!811667 lt!811673)) (h!30623 (take!239 lt!811667 lt!811673)))))

(assert (=> b!2176077 d!651725))

(declare-fun d!651729 () Bool)

(assert (=> d!651729 (= (head!4658 lt!811667) (h!30623 lt!811667))))

(assert (=> b!2176077 d!651729))

(declare-fun b!2177007 () Bool)

(declare-fun e!1392066 () Bool)

(assert (=> b!2177007 (= e!1392066 (not (isEmpty!14479 (right!19695 (c!345005 totalInput!977)))))))

(declare-fun b!2177008 () Bool)

(declare-fun res!936548 () Bool)

(assert (=> b!2177008 (=> (not res!936548) (not e!1392066))))

(assert (=> b!2177008 (= res!936548 (not (isEmpty!14479 (left!19365 (c!345005 totalInput!977)))))))

(declare-fun b!2177009 () Bool)

(declare-fun e!1392065 () Bool)

(assert (=> b!2177009 (= e!1392065 e!1392066)))

(declare-fun res!936551 () Bool)

(assert (=> b!2177009 (=> (not res!936551) (not e!1392066))))

(assert (=> b!2177009 (= res!936551 (<= (- 1) (- (height!1243 (left!19365 (c!345005 totalInput!977))) (height!1243 (right!19695 (c!345005 totalInput!977))))))))

(declare-fun d!651731 () Bool)

(declare-fun res!936546 () Bool)

(assert (=> d!651731 (=> res!936546 e!1392065)))

(assert (=> d!651731 (= res!936546 (not ((_ is Node!8167) (c!345005 totalInput!977))))))

(assert (=> d!651731 (= (isBalanced!2538 (c!345005 totalInput!977)) e!1392065)))

(declare-fun b!2177010 () Bool)

(declare-fun res!936547 () Bool)

(assert (=> b!2177010 (=> (not res!936547) (not e!1392066))))

(assert (=> b!2177010 (= res!936547 (<= (- (height!1243 (left!19365 (c!345005 totalInput!977))) (height!1243 (right!19695 (c!345005 totalInput!977)))) 1))))

(declare-fun b!2177011 () Bool)

(declare-fun res!936550 () Bool)

(assert (=> b!2177011 (=> (not res!936550) (not e!1392066))))

(assert (=> b!2177011 (= res!936550 (isBalanced!2538 (right!19695 (c!345005 totalInput!977))))))

(declare-fun b!2177012 () Bool)

(declare-fun res!936549 () Bool)

(assert (=> b!2177012 (=> (not res!936549) (not e!1392066))))

(assert (=> b!2177012 (= res!936549 (isBalanced!2538 (left!19365 (c!345005 totalInput!977))))))

(assert (= (and d!651731 (not res!936546)) b!2177009))

(assert (= (and b!2177009 res!936551) b!2177010))

(assert (= (and b!2177010 res!936547) b!2177012))

(assert (= (and b!2177012 res!936549) b!2177011))

(assert (= (and b!2177011 res!936550) b!2177008))

(assert (= (and b!2177008 res!936548) b!2177007))

(assert (=> b!2177009 m!2618695))

(assert (=> b!2177009 m!2618697))

(declare-fun m!2618851 () Bool)

(assert (=> b!2177011 m!2618851))

(assert (=> b!2177010 m!2618695))

(assert (=> b!2177010 m!2618697))

(declare-fun m!2618853 () Bool)

(assert (=> b!2177008 m!2618853))

(declare-fun m!2618855 () Bool)

(assert (=> b!2177012 m!2618855))

(declare-fun m!2618857 () Bool)

(assert (=> b!2177007 m!2618857))

(assert (=> d!651257 d!651731))

(declare-fun d!651749 () Bool)

(assert (=> d!651749 (= (inv!33512 (xs!11109 (c!345005 input!5540))) (<= (size!19706 (innerList!8227 (xs!11109 (c!345005 input!5540)))) 2147483647))))

(declare-fun bs!447225 () Bool)

(assert (= bs!447225 d!651749))

(declare-fun m!2618863 () Bool)

(assert (=> bs!447225 m!2618863))

(assert (=> b!2176211 d!651749))

(declare-fun d!651755 () Bool)

(assert (=> d!651755 (= (isEmpty!14477 lt!811665) ((_ is Nil!25222) lt!811665))))

(assert (=> d!651149 d!651755))

(assert (=> b!2176150 d!651427))

(assert (=> b!2176150 d!651429))

(declare-fun bs!447226 () Bool)

(declare-fun d!651757 () Bool)

(assert (= bs!447226 (and d!651757 d!651091)))

(declare-fun lambda!81899 () Int)

(assert (=> bs!447226 (= lambda!81899 lambda!81856)))

(declare-fun bs!447227 () Bool)

(assert (= bs!447227 (and d!651757 d!651529)))

(assert (=> bs!447227 (= lambda!81899 lambda!81880)))

(declare-fun bs!447228 () Bool)

(assert (= bs!447228 (and d!651757 d!651559)))

(assert (=> bs!447228 (= lambda!81899 lambda!81884)))

(assert (=> d!651757 (= (inv!33504 setElem!18280) (forall!5177 (exprs!2101 setElem!18280) lambda!81899))))

(declare-fun bs!447229 () Bool)

(assert (= bs!447229 d!651757))

(declare-fun m!2618875 () Bool)

(assert (=> bs!447229 m!2618875))

(assert (=> setNonEmpty!18280 d!651757))

(declare-fun b!2177033 () Bool)

(declare-fun e!1392077 () List!25306)

(declare-fun e!1392078 () List!25306)

(assert (=> b!2177033 (= e!1392077 e!1392078)))

(declare-fun c!345503 () Bool)

(assert (=> b!2177033 (= c!345503 ((_ is Leaf!11950) (c!345005 (_1!14870 lt!811661))))))

(declare-fun d!651761 () Bool)

(declare-fun c!345502 () Bool)

(assert (=> d!651761 (= c!345502 ((_ is Empty!8167) (c!345005 (_1!14870 lt!811661))))))

(assert (=> d!651761 (= (list!9678 (c!345005 (_1!14870 lt!811661))) e!1392077)))

(declare-fun b!2177034 () Bool)

(assert (=> b!2177034 (= e!1392078 (list!9680 (xs!11109 (c!345005 (_1!14870 lt!811661)))))))

(declare-fun b!2177032 () Bool)

(assert (=> b!2177032 (= e!1392077 Nil!25222)))

(declare-fun b!2177035 () Bool)

(assert (=> b!2177035 (= e!1392078 (++!6390 (list!9678 (left!19365 (c!345005 (_1!14870 lt!811661)))) (list!9678 (right!19695 (c!345005 (_1!14870 lt!811661))))))))

(assert (= (and d!651761 c!345502) b!2177032))

(assert (= (and d!651761 (not c!345502)) b!2177033))

(assert (= (and b!2177033 c!345503) b!2177034))

(assert (= (and b!2177033 (not c!345503)) b!2177035))

(declare-fun m!2618879 () Bool)

(assert (=> b!2177034 m!2618879))

(declare-fun m!2618881 () Bool)

(assert (=> b!2177035 m!2618881))

(declare-fun m!2618883 () Bool)

(assert (=> b!2177035 m!2618883))

(assert (=> b!2177035 m!2618881))

(assert (=> b!2177035 m!2618883))

(declare-fun m!2618885 () Bool)

(assert (=> b!2177035 m!2618885))

(assert (=> d!651241 d!651761))

(declare-fun d!651765 () Bool)

(assert (=> d!651765 (= (isEmpty!14477 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)) ((_ is Nil!25222) (take!239 (drop!1249 lt!811667 lt!811673) lt!811657)))))

(assert (=> d!651085 d!651765))

(declare-fun d!651767 () Bool)

(declare-fun c!345504 () Bool)

(assert (=> d!651767 (= c!345504 ((_ is Nil!25222) lt!811830))))

(declare-fun e!1392079 () (InoxSet C!12208))

(assert (=> d!651767 (= (content!3436 lt!811830) e!1392079)))

(declare-fun b!2177036 () Bool)

(assert (=> b!2177036 (= e!1392079 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2177037 () Bool)

(assert (=> b!2177037 (= e!1392079 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811830) true) (content!3436 (t!197874 lt!811830))))))

(assert (= (and d!651767 c!345504) b!2177036))

(assert (= (and d!651767 (not c!345504)) b!2177037))

(declare-fun m!2618889 () Bool)

(assert (=> b!2177037 m!2618889))

(declare-fun m!2618891 () Bool)

(assert (=> b!2177037 m!2618891))

(assert (=> d!651135 d!651767))

(declare-fun d!651771 () Bool)

(declare-fun c!345506 () Bool)

(assert (=> d!651771 (= c!345506 ((_ is Nil!25222) lt!811681))))

(declare-fun e!1392081 () (InoxSet C!12208))

(assert (=> d!651771 (= (content!3436 lt!811681) e!1392081)))

(declare-fun b!2177040 () Bool)

(assert (=> b!2177040 (= e!1392081 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2177041 () Bool)

(assert (=> b!2177041 (= e!1392081 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811681) true) (content!3436 (t!197874 lt!811681))))))

(assert (= (and d!651771 c!345506) b!2177040))

(assert (= (and d!651771 (not c!345506)) b!2177041))

(declare-fun m!2618895 () Bool)

(assert (=> b!2177041 m!2618895))

(assert (=> b!2177041 m!2618003))

(assert (=> d!651135 d!651771))

(declare-fun b!2177046 () Bool)

(declare-fun e!1392089 () Bool)

(assert (=> b!2177046 (= e!1392089 (not (= (head!4658 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))) (c!345004 r!12534))))))

(declare-fun b!2177047 () Bool)

(declare-fun e!1392086 () Bool)

(declare-fun e!1392088 () Bool)

(assert (=> b!2177047 (= e!1392086 e!1392088)))

(declare-fun c!345509 () Bool)

(assert (=> b!2177047 (= c!345509 ((_ is EmptyLang!6031) r!12534))))

(declare-fun b!2177049 () Bool)

(declare-fun lt!812329 () Bool)

(assert (=> b!2177049 (= e!1392088 (not lt!812329))))

(declare-fun b!2177050 () Bool)

(declare-fun e!1392087 () Bool)

(assert (=> b!2177050 (= e!1392087 (= (head!4658 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))) (c!345004 r!12534)))))

(declare-fun bm!130781 () Bool)

(declare-fun call!130786 () Bool)

(assert (=> bm!130781 (= call!130786 (isEmpty!14477 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))))))

(declare-fun b!2177051 () Bool)

(declare-fun res!936557 () Bool)

(declare-fun e!1392090 () Bool)

(assert (=> b!2177051 (=> res!936557 e!1392090)))

(assert (=> b!2177051 (= res!936557 (not ((_ is ElementMatch!6031) r!12534)))))

(assert (=> b!2177051 (= e!1392088 e!1392090)))

(declare-fun b!2177052 () Bool)

(declare-fun e!1392085 () Bool)

(assert (=> b!2177052 (= e!1392090 e!1392085)))

(declare-fun res!936564 () Bool)

(assert (=> b!2177052 (=> (not res!936564) (not e!1392085))))

(assert (=> b!2177052 (= res!936564 (not lt!812329))))

(declare-fun b!2177053 () Bool)

(declare-fun res!936558 () Bool)

(assert (=> b!2177053 (=> res!936558 e!1392089)))

(assert (=> b!2177053 (= res!936558 (not (isEmpty!14477 (tail!3130 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))))))))

(declare-fun b!2177054 () Bool)

(declare-fun e!1392091 () Bool)

(assert (=> b!2177054 (= e!1392091 (matchR!2780 (derivativeStep!1448 r!12534 (head!4658 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670))))) (tail!3130 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670))))))))

(declare-fun b!2177055 () Bool)

(declare-fun res!936559 () Bool)

(assert (=> b!2177055 (=> (not res!936559) (not e!1392087))))

(assert (=> b!2177055 (= res!936559 (not call!130786))))

(declare-fun d!651775 () Bool)

(assert (=> d!651775 e!1392086))

(declare-fun c!345507 () Bool)

(assert (=> d!651775 (= c!345507 ((_ is EmptyExpr!6031) r!12534))))

(assert (=> d!651775 (= lt!812329 e!1392091)))

(declare-fun c!345508 () Bool)

(assert (=> d!651775 (= c!345508 (isEmpty!14477 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))))))

(assert (=> d!651775 (validRegex!2307 r!12534)))

(assert (=> d!651775 (= (matchR!2780 r!12534 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670)))) lt!812329)))

(declare-fun b!2177048 () Bool)

(declare-fun res!936560 () Bool)

(assert (=> b!2177048 (=> (not res!936560) (not e!1392087))))

(assert (=> b!2177048 (= res!936560 (isEmpty!14477 (tail!3130 (_1!14869 (findLongestMatchInner!656 r!12534 Nil!25222 (size!19706 Nil!25222) lt!811670 lt!811670 (size!19706 lt!811670))))))))

(declare-fun b!2177056 () Bool)

(declare-fun res!936562 () Bool)

(assert (=> b!2177056 (=> res!936562 e!1392090)))

(assert (=> b!2177056 (= res!936562 e!1392087)))

(declare-fun res!936561 () Bool)

(assert (=> b!2177056 (=> (not res!936561) (not e!1392087))))

(assert (=> b!2177056 (= res!936561 lt!812329)))

(declare-fun b!2177057 () Bool)

(assert (=> b!2177057 (= e!1392091 (nullable!1705 r!12534))))

(declare-fun b!2177058 () Bool)

(assert (=> b!2177058 (= e!1392086 (= lt!812329 call!130786))))

(declare-fun b!2177059 () Bool)

(assert (=> b!2177059 (= e!1392085 e!1392089)))

(declare-fun res!936563 () Bool)

(assert (=> b!2177059 (=> res!936563 e!1392089)))

(assert (=> b!2177059 (= res!936563 call!130786)))

(assert (= (and d!651775 c!345508) b!2177057))

(assert (= (and d!651775 (not c!345508)) b!2177054))

(assert (= (and d!651775 c!345507) b!2177058))

(assert (= (and d!651775 (not c!345507)) b!2177047))

(assert (= (and b!2177047 c!345509) b!2177049))

(assert (= (and b!2177047 (not c!345509)) b!2177051))

(assert (= (and b!2177051 (not res!936557)) b!2177056))

(assert (= (and b!2177056 res!936561) b!2177055))

(assert (= (and b!2177055 res!936559) b!2177048))

(assert (= (and b!2177048 res!936560) b!2177050))

(assert (= (and b!2177056 (not res!936562)) b!2177052))

(assert (= (and b!2177052 res!936564) b!2177059))

(assert (= (and b!2177059 (not res!936563)) b!2177053))

(assert (= (and b!2177053 (not res!936558)) b!2177046))

(assert (= (or b!2177058 b!2177059 b!2177055) bm!130781))

(declare-fun m!2618909 () Bool)

(assert (=> b!2177053 m!2618909))

(assert (=> b!2177053 m!2618909))

(declare-fun m!2618911 () Bool)

(assert (=> b!2177053 m!2618911))

(assert (=> bm!130781 m!2617757))

(declare-fun m!2618913 () Bool)

(assert (=> b!2177050 m!2618913))

(assert (=> b!2177054 m!2618913))

(assert (=> b!2177054 m!2618913))

(declare-fun m!2618917 () Bool)

(assert (=> b!2177054 m!2618917))

(assert (=> b!2177054 m!2618909))

(assert (=> b!2177054 m!2618917))

(assert (=> b!2177054 m!2618909))

(declare-fun m!2618927 () Bool)

(assert (=> b!2177054 m!2618927))

(assert (=> b!2177057 m!2617193))

(assert (=> b!2177046 m!2618913))

(assert (=> b!2177048 m!2618909))

(assert (=> b!2177048 m!2618909))

(assert (=> b!2177048 m!2618911))

(assert (=> d!651775 m!2617757))

(assert (=> d!651775 m!2617091))

(assert (=> b!2176090 d!651775))

(assert (=> b!2176090 d!651165))

(assert (=> b!2176090 d!651225))

(assert (=> b!2176090 d!651207))

(declare-fun d!651787 () Bool)

(declare-fun c!345513 () Bool)

(assert (=> d!651787 (= c!345513 (isEmpty!14477 (tail!3130 lt!811665)))))

(declare-fun e!1392096 () Bool)

(assert (=> d!651787 (= (matchZipper!147 (derivationStepZipper!134 z!4055 (head!4658 lt!811665)) (tail!3130 lt!811665)) e!1392096)))

(declare-fun b!2177067 () Bool)

(assert (=> b!2177067 (= e!1392096 (nullableZipper!311 (derivationStepZipper!134 z!4055 (head!4658 lt!811665))))))

(declare-fun b!2177068 () Bool)

(assert (=> b!2177068 (= e!1392096 (matchZipper!147 (derivationStepZipper!134 (derivationStepZipper!134 z!4055 (head!4658 lt!811665)) (head!4658 (tail!3130 lt!811665))) (tail!3130 (tail!3130 lt!811665))))))

(assert (= (and d!651787 c!345513) b!2177067))

(assert (= (and d!651787 (not c!345513)) b!2177068))

(assert (=> d!651787 m!2617469))

(declare-fun m!2618929 () Bool)

(assert (=> d!651787 m!2618929))

(assert (=> b!2177067 m!2617467))

(declare-fun m!2618933 () Bool)

(assert (=> b!2177067 m!2618933))

(assert (=> b!2177068 m!2617469))

(declare-fun m!2618935 () Bool)

(assert (=> b!2177068 m!2618935))

(assert (=> b!2177068 m!2617467))

(assert (=> b!2177068 m!2618935))

(declare-fun m!2618937 () Bool)

(assert (=> b!2177068 m!2618937))

(assert (=> b!2177068 m!2617469))

(declare-fun m!2618939 () Bool)

(assert (=> b!2177068 m!2618939))

(assert (=> b!2177068 m!2618937))

(assert (=> b!2177068 m!2618939))

(declare-fun m!2618941 () Bool)

(assert (=> b!2177068 m!2618941))

(assert (=> b!2175843 d!651787))

(declare-fun bs!447237 () Bool)

(declare-fun d!651791 () Bool)

(assert (= bs!447237 (and d!651791 d!651575)))

(declare-fun lambda!81902 () Int)

(assert (=> bs!447237 (= (= (head!4658 lt!811665) (head!4658 (take!239 (drop!1249 lt!811667 lt!811673) lt!811657))) (= lambda!81902 lambda!81889))))

(declare-fun bs!447238 () Bool)

(assert (= bs!447238 (and d!651791 d!651593)))

(assert (=> bs!447238 (= (= (head!4658 lt!811665) (head!4658 lt!811676)) (= lambda!81902 lambda!81893))))

(declare-fun bs!447239 () Bool)

(assert (= bs!447239 (and d!651791 d!651631)))

(assert (=> bs!447239 (= (= (head!4658 lt!811665) (head!4658 (_1!14869 lt!811654))) (= lambda!81902 lambda!81895))))

(declare-fun bs!447240 () Bool)

(assert (= bs!447240 (and d!651791 d!651659)))

(assert (=> bs!447240 (= (= (head!4658 lt!811665) (apply!6076 totalInput!977 lt!811673)) (= lambda!81902 lambda!81897))))

(assert (=> d!651791 true))

(assert (=> d!651791 (= (derivationStepZipper!134 z!4055 (head!4658 lt!811665)) (flatMap!134 z!4055 lambda!81902))))

(declare-fun bs!447241 () Bool)

(assert (= bs!447241 d!651791))

(declare-fun m!2618943 () Bool)

(assert (=> bs!447241 m!2618943))

(assert (=> b!2175843 d!651791))

(declare-fun d!651793 () Bool)

(assert (=> d!651793 (= (head!4658 lt!811665) (h!30623 lt!811665))))

(assert (=> b!2175843 d!651793))

(declare-fun d!651795 () Bool)

(assert (=> d!651795 (= (tail!3130 lt!811665) (t!197874 lt!811665))))

(assert (=> b!2175843 d!651795))

(declare-fun b!2177070 () Bool)

(declare-fun res!936568 () Bool)

(declare-fun e!1392099 () Bool)

(assert (=> b!2177070 (=> (not res!936568) (not e!1392099))))

(assert (=> b!2177070 (= res!936568 (= (head!4658 Nil!25222) (head!4658 (++!6390 Nil!25222 lt!811670))))))

(declare-fun b!2177069 () Bool)

(declare-fun e!1392098 () Bool)

(assert (=> b!2177069 (= e!1392098 e!1392099)))

(declare-fun res!936566 () Bool)

(assert (=> b!2177069 (=> (not res!936566) (not e!1392099))))

(assert (=> b!2177069 (= res!936566 (not ((_ is Nil!25222) (++!6390 Nil!25222 lt!811670))))))

(declare-fun d!651797 () Bool)

(declare-fun e!1392097 () Bool)

(assert (=> d!651797 e!1392097))

(declare-fun res!936567 () Bool)

(assert (=> d!651797 (=> res!936567 e!1392097)))

(declare-fun lt!812333 () Bool)

(assert (=> d!651797 (= res!936567 (not lt!812333))))

(assert (=> d!651797 (= lt!812333 e!1392098)))

(declare-fun res!936569 () Bool)

(assert (=> d!651797 (=> res!936569 e!1392098)))

(assert (=> d!651797 (= res!936569 ((_ is Nil!25222) Nil!25222))))

(assert (=> d!651797 (= (isPrefix!2147 Nil!25222 (++!6390 Nil!25222 lt!811670)) lt!812333)))

(declare-fun b!2177072 () Bool)

(assert (=> b!2177072 (= e!1392097 (>= (size!19706 (++!6390 Nil!25222 lt!811670)) (size!19706 Nil!25222)))))

(declare-fun b!2177071 () Bool)

(assert (=> b!2177071 (= e!1392099 (isPrefix!2147 (tail!3130 Nil!25222) (tail!3130 (++!6390 Nil!25222 lt!811670))))))

(assert (= (and d!651797 (not res!936569)) b!2177069))

(assert (= (and b!2177069 res!936566) b!2177070))

(assert (= (and b!2177070 res!936568) b!2177071))

(assert (= (and d!651797 (not res!936567)) b!2177072))

(declare-fun m!2618945 () Bool)

(assert (=> b!2177070 m!2618945))

(assert (=> b!2177070 m!2617671))

(declare-fun m!2618947 () Bool)

(assert (=> b!2177070 m!2618947))

(assert (=> b!2177072 m!2617671))

(declare-fun m!2618949 () Bool)

(assert (=> b!2177072 m!2618949))

(assert (=> b!2177072 m!2617061))

(declare-fun m!2618951 () Bool)

(assert (=> b!2177071 m!2618951))

(assert (=> b!2177071 m!2617671))

(declare-fun m!2618953 () Bool)

(assert (=> b!2177071 m!2618953))

(assert (=> b!2177071 m!2618951))

(assert (=> b!2177071 m!2618953))

(declare-fun m!2618955 () Bool)

(assert (=> b!2177071 m!2618955))

(assert (=> d!651165 d!651797))

(declare-fun d!651799 () Bool)

(assert (=> d!651799 (isPrefix!2147 Nil!25222 (++!6390 Nil!25222 lt!811670))))

(declare-fun lt!812334 () Unit!38293)

(assert (=> d!651799 (= lt!812334 (choose!12853 Nil!25222 lt!811670))))

(assert (=> d!651799 (= (lemmaConcatTwoListThenFirstIsPrefix!1430 Nil!25222 lt!811670) lt!812334)))

(declare-fun bs!447242 () Bool)

(assert (= bs!447242 d!651799))

(assert (=> bs!447242 m!2617671))

(assert (=> bs!447242 m!2617671))

(assert (=> bs!447242 m!2617673))

(declare-fun m!2618957 () Bool)

(assert (=> bs!447242 m!2618957))

(assert (=> d!651165 d!651799))

(declare-fun d!651801 () Bool)

(declare-fun lostCauseFct!205 (Regex!6031) Bool)

(assert (=> d!651801 (= (lostCause!677 r!12534) (lostCauseFct!205 r!12534))))

(declare-fun bs!447243 () Bool)

(assert (= bs!447243 d!651801))

(declare-fun m!2618959 () Bool)

(assert (=> bs!447243 m!2618959))

(assert (=> d!651165 d!651801))

(declare-fun d!651803 () Bool)

(declare-fun lt!812342 () List!25306)

(assert (=> d!651803 (= (++!6390 Nil!25222 lt!812342) lt!811670)))

(declare-fun e!1392108 () List!25306)

(assert (=> d!651803 (= lt!812342 e!1392108)))

(declare-fun c!345519 () Bool)

(assert (=> d!651803 (= c!345519 ((_ is Cons!25222) Nil!25222))))

(assert (=> d!651803 (>= (size!19706 lt!811670) (size!19706 Nil!25222))))

(assert (=> d!651803 (= (getSuffix!1042 lt!811670 Nil!25222) lt!812342)))

(declare-fun b!2177086 () Bool)

(assert (=> b!2177086 (= e!1392108 (getSuffix!1042 (tail!3130 lt!811670) (t!197874 Nil!25222)))))

(declare-fun b!2177087 () Bool)

(assert (=> b!2177087 (= e!1392108 lt!811670)))

(assert (= (and d!651803 c!345519) b!2177086))

(assert (= (and d!651803 (not c!345519)) b!2177087))

(declare-fun m!2618977 () Bool)

(assert (=> d!651803 m!2618977))

(assert (=> d!651803 m!2617047))

(assert (=> d!651803 m!2617061))

(assert (=> b!2177086 m!2617447))

(assert (=> b!2177086 m!2617447))

(declare-fun m!2618981 () Bool)

(assert (=> b!2177086 m!2618981))

(assert (=> d!651165 d!651803))

(declare-fun b!2177091 () Bool)

(declare-fun e!1392110 () List!25306)

(assert (=> b!2177091 (= e!1392110 (Cons!25222 (h!30623 (_1!14869 lt!811990)) (++!6390 (t!197874 (_1!14869 lt!811990)) (_2!14869 lt!811990))))))

(declare-fun b!2177093 () Bool)

(declare-fun e!1392111 () Bool)

(declare-fun lt!812343 () List!25306)

(assert (=> b!2177093 (= e!1392111 (or (not (= (_2!14869 lt!811990) Nil!25222)) (= lt!812343 (_1!14869 lt!811990))))))

(declare-fun d!651815 () Bool)

(assert (=> d!651815 e!1392111))

(declare-fun res!936573 () Bool)

(assert (=> d!651815 (=> (not res!936573) (not e!1392111))))

(assert (=> d!651815 (= res!936573 (= (content!3436 lt!812343) ((_ map or) (content!3436 (_1!14869 lt!811990)) (content!3436 (_2!14869 lt!811990)))))))

(assert (=> d!651815 (= lt!812343 e!1392110)))

(declare-fun c!345521 () Bool)

(assert (=> d!651815 (= c!345521 ((_ is Nil!25222) (_1!14869 lt!811990)))))

(assert (=> d!651815 (= (++!6390 (_1!14869 lt!811990) (_2!14869 lt!811990)) lt!812343)))

(declare-fun b!2177092 () Bool)

(declare-fun res!936574 () Bool)

(assert (=> b!2177092 (=> (not res!936574) (not e!1392111))))

(assert (=> b!2177092 (= res!936574 (= (size!19706 lt!812343) (+ (size!19706 (_1!14869 lt!811990)) (size!19706 (_2!14869 lt!811990)))))))

(declare-fun b!2177090 () Bool)

(assert (=> b!2177090 (= e!1392110 (_2!14869 lt!811990))))

(assert (= (and d!651815 c!345521) b!2177090))

(assert (= (and d!651815 (not c!345521)) b!2177091))

(assert (= (and d!651815 res!936573) b!2177092))

(assert (= (and b!2177092 res!936574) b!2177093))

(declare-fun m!2618989 () Bool)

(assert (=> b!2177091 m!2618989))

(declare-fun m!2618991 () Bool)

(assert (=> d!651815 m!2618991))

(declare-fun m!2618993 () Bool)

(assert (=> d!651815 m!2618993))

(declare-fun m!2618995 () Bool)

(assert (=> d!651815 m!2618995))

(declare-fun m!2618997 () Bool)

(assert (=> b!2177092 m!2618997))

(assert (=> b!2177092 m!2617685))

(declare-fun m!2618999 () Bool)

(assert (=> b!2177092 m!2618999))

(assert (=> d!651165 d!651815))

(declare-fun d!651821 () Bool)

(assert (=> d!651821 (= lt!811670 lt!811975)))

(declare-fun lt!812349 () Unit!38293)

(declare-fun choose!12862 (List!25306 List!25306 List!25306 List!25306 List!25306) Unit!38293)

(assert (=> d!651821 (= lt!812349 (choose!12862 Nil!25222 lt!811670 Nil!25222 lt!811975 lt!811670))))

(assert (=> d!651821 (isPrefix!2147 Nil!25222 lt!811670)))

(assert (=> d!651821 (= (lemmaSamePrefixThenSameSuffix!964 Nil!25222 lt!811670 Nil!25222 lt!811975 lt!811670) lt!812349)))

(declare-fun bs!447247 () Bool)

(assert (= bs!447247 d!651821))

(declare-fun m!2619015 () Bool)

(assert (=> bs!447247 m!2619015))

(declare-fun m!2619017 () Bool)

(assert (=> bs!447247 m!2619017))

(assert (=> d!651165 d!651821))

(declare-fun b!2177106 () Bool)

(declare-fun e!1392119 () List!25306)

(assert (=> b!2177106 (= e!1392119 (Cons!25222 (h!30623 Nil!25222) (++!6390 (t!197874 Nil!25222) lt!811670)))))

(declare-fun b!2177108 () Bool)

(declare-fun e!1392120 () Bool)

(declare-fun lt!812350 () List!25306)

(assert (=> b!2177108 (= e!1392120 (or (not (= lt!811670 Nil!25222)) (= lt!812350 Nil!25222)))))

(declare-fun d!651829 () Bool)

(assert (=> d!651829 e!1392120))

(declare-fun res!936580 () Bool)

(assert (=> d!651829 (=> (not res!936580) (not e!1392120))))

(assert (=> d!651829 (= res!936580 (= (content!3436 lt!812350) ((_ map or) (content!3436 Nil!25222) (content!3436 lt!811670))))))

(assert (=> d!651829 (= lt!812350 e!1392119)))

(declare-fun c!345525 () Bool)

(assert (=> d!651829 (= c!345525 ((_ is Nil!25222) Nil!25222))))

(assert (=> d!651829 (= (++!6390 Nil!25222 lt!811670) lt!812350)))

(declare-fun b!2177107 () Bool)

(declare-fun res!936581 () Bool)

(assert (=> b!2177107 (=> (not res!936581) (not e!1392120))))

(assert (=> b!2177107 (= res!936581 (= (size!19706 lt!812350) (+ (size!19706 Nil!25222) (size!19706 lt!811670))))))

(declare-fun b!2177105 () Bool)

(assert (=> b!2177105 (= e!1392119 lt!811670)))

(assert (= (and d!651829 c!345525) b!2177105))

(assert (= (and d!651829 (not c!345525)) b!2177106))

(assert (= (and d!651829 res!936580) b!2177107))

(assert (= (and b!2177107 res!936581) b!2177108))

(declare-fun m!2619019 () Bool)

(assert (=> b!2177106 m!2619019))

(declare-fun m!2619021 () Bool)

(assert (=> d!651829 m!2619021))

(declare-fun m!2619023 () Bool)

(assert (=> d!651829 m!2619023))

(assert (=> d!651829 m!2617453))

(declare-fun m!2619025 () Bool)

(assert (=> b!2177107 m!2619025))

(assert (=> b!2177107 m!2617061))

(assert (=> b!2177107 m!2617047))

(assert (=> d!651165 d!651829))

(assert (=> d!651165 d!651255))

(assert (=> b!2176147 d!651595))

(assert (=> b!2176157 d!651219))

(assert (=> d!651267 d!651261))

(assert (=> d!651267 d!651223))

(declare-fun d!651831 () Bool)

(assert (=> d!651831 (= (matchR!2780 r!12534 lt!811676) (matchZipper!147 z!4055 lt!811676))))

(assert (=> d!651831 true))

(declare-fun _$44!1273 () Unit!38293)

(assert (=> d!651831 (= (choose!12856 z!4055 lt!811664 r!12534 lt!811676) _$44!1273)))

(declare-fun bs!447248 () Bool)

(assert (= bs!447248 d!651831))

(assert (=> bs!447248 m!2617113))

(assert (=> bs!447248 m!2617059))

(assert (=> d!651267 d!651831))

(assert (=> d!651267 d!651255))

(assert (=> b!2176099 d!651347))

(assert (=> b!2176099 d!651207))

(declare-fun d!651833 () Bool)

(assert (=> d!651833 (= (tail!3130 lt!811670) (t!197874 lt!811670))))

(assert (=> bm!130667 d!651833))

(declare-fun d!651835 () Bool)

(declare-fun c!345526 () Bool)

(assert (=> d!651835 (= c!345526 ((_ is Nil!25222) lt!811710))))

(declare-fun e!1392121 () (InoxSet C!12208))

(assert (=> d!651835 (= (content!3436 lt!811710) e!1392121)))

(declare-fun b!2177109 () Bool)

(assert (=> b!2177109 (= e!1392121 ((as const (Array C!12208 Bool)) false))))

(declare-fun b!2177110 () Bool)

(assert (=> b!2177110 (= e!1392121 ((_ map or) (store ((as const (Array C!12208 Bool)) false) (h!30623 lt!811710) true) (content!3436 (t!197874 lt!811710))))))

(assert (= (and d!651835 c!345526) b!2177109))

(assert (= (and d!651835 (not c!345526)) b!2177110))

(declare-fun m!2619027 () Bool)

(assert (=> b!2177110 m!2619027))

(declare-fun m!2619029 () Bool)

(assert (=> b!2177110 m!2619029))

(assert (=> d!651089 d!651835))

(assert (=> d!651089 d!651621))

(assert (=> d!651261 d!651521))

(assert (=> d!651261 d!651255))

(declare-fun b!2177111 () Bool)

(declare-fun e!1392126 () List!25306)

(assert (=> b!2177111 (= e!1392126 (t!197874 lt!811667))))

(declare-fun d!651837 () Bool)

(declare-fun e!1392125 () Bool)

(assert (=> d!651837 e!1392125))

(declare-fun res!936582 () Bool)

(assert (=> d!651837 (=> (not res!936582) (not e!1392125))))

(declare-fun lt!812351 () List!25306)

(assert (=> d!651837 (= res!936582 (= ((_ map implies) (content!3436 lt!812351) (content!3436 (t!197874 lt!811667))) ((as const (InoxSet C!12208)) true)))))

(declare-fun e!1392124 () List!25306)

(assert (=> d!651837 (= lt!812351 e!1392124)))

(declare-fun c!345529 () Bool)

(assert (=> d!651837 (= c!345529 ((_ is Nil!25222) (t!197874 lt!811667)))))

(assert (=> d!651837 (= (drop!1249 (t!197874 lt!811667) (- lt!811673 1)) lt!812351)))

(declare-fun b!2177112 () Bool)

(declare-fun e!1392122 () Int)

(declare-fun call!130787 () Int)

(assert (=> b!2177112 (= e!1392122 call!130787)))

(declare-fun b!2177113 () Bool)

(assert (=> b!2177113 (= e!1392126 (drop!1249 (t!197874 (t!197874 lt!811667)) (- (- lt!811673 1) 1)))))

(declare-fun b!2177114 () Bool)

(assert (=> b!2177114 (= e!1392125 (= (size!19706 lt!812351) e!1392122))))

(declare-fun c!345530 () Bool)

(assert (=> b!2177114 (= c!345530 (<= (- lt!811673 1) 0))))

(declare-fun bm!130782 () Bool)

(assert (=> bm!130782 (= call!130787 (size!19706 (t!197874 lt!811667)))))

(declare-fun b!2177115 () Bool)

(assert (=> b!2177115 (= e!1392124 e!1392126)))

(declare-fun c!345527 () Bool)

(assert (=> b!2177115 (= c!345527 (<= (- lt!811673 1) 0))))

(declare-fun b!2177116 () Bool)

(declare-fun e!1392123 () Int)

(assert (=> b!2177116 (= e!1392123 (- call!130787 (- lt!811673 1)))))

(declare-fun b!2177117 () Bool)

(assert (=> b!2177117 (= e!1392124 Nil!25222)))

(declare-fun b!2177118 () Bool)

(assert (=> b!2177118 (= e!1392123 0)))

(declare-fun b!2177119 () Bool)

(assert (=> b!2177119 (= e!1392122 e!1392123)))

(declare-fun c!345528 () Bool)

(assert (=> b!2177119 (= c!345528 (>= (- lt!811673 1) call!130787))))

(assert (= (and d!651837 c!345529) b!2177117))

(assert (= (and d!651837 (not c!345529)) b!2177115))

(assert (= (and b!2177115 c!345527) b!2177111))

(assert (= (and b!2177115 (not c!345527)) b!2177113))

(assert (= (and d!651837 res!936582) b!2177114))

(assert (= (and b!2177114 c!345530) b!2177112))

(assert (= (and b!2177114 (not c!345530)) b!2177119))

(assert (= (and b!2177119 c!345528) b!2177118))

(assert (= (and b!2177119 (not c!345528)) b!2177116))

(assert (= (or b!2177112 b!2177119 b!2177116) bm!130782))

(declare-fun m!2619031 () Bool)

(assert (=> d!651837 m!2619031))

(assert (=> d!651837 m!2617933))

(declare-fun m!2619033 () Bool)

(assert (=> b!2177113 m!2619033))

(declare-fun m!2619035 () Bool)

(assert (=> b!2177114 m!2619035))

(assert (=> bm!130782 m!2617937))

(assert (=> b!2175645 d!651837))

(declare-fun b!2177121 () Bool)

(declare-fun res!936585 () Bool)

(declare-fun e!1392129 () Bool)

(assert (=> b!2177121 (=> (not res!936585) (not e!1392129))))

(assert (=> b!2177121 (= res!936585 (= (head!4658 (tail!3130 lt!811659)) (head!4658 (tail!3130 lt!811670))))))

(declare-fun b!2177120 () Bool)

(declare-fun e!1392128 () Bool)

(assert (=> b!2177120 (= e!1392128 e!1392129)))

(declare-fun res!936583 () Bool)

(assert (=> b!2177120 (=> (not res!936583) (not e!1392129))))

(assert (=> b!2177120 (= res!936583 (not ((_ is Nil!25222) (tail!3130 lt!811670))))))

(declare-fun d!651839 () Bool)

(declare-fun e!1392127 () Bool)

(assert (=> d!651839 e!1392127))

(declare-fun res!936584 () Bool)

(assert (=> d!651839 (=> res!936584 e!1392127)))

(declare-fun lt!812352 () Bool)

(assert (=> d!651839 (= res!936584 (not lt!812352))))

(assert (=> d!651839 (= lt!812352 e!1392128)))

(declare-fun res!936586 () Bool)

(assert (=> d!651839 (=> res!936586 e!1392128)))

(assert (=> d!651839 (= res!936586 ((_ is Nil!25222) (tail!3130 lt!811659)))))

(assert (=> d!651839 (= (isPrefix!2147 (tail!3130 lt!811659) (tail!3130 lt!811670)) lt!812352)))

(declare-fun b!2177123 () Bool)

(assert (=> b!2177123 (= e!1392127 (>= (size!19706 (tail!3130 lt!811670)) (size!19706 (tail!3130 lt!811659))))))

(declare-fun b!2177122 () Bool)

(assert (=> b!2177122 (= e!1392129 (isPrefix!2147 (tail!3130 (tail!3130 lt!811659)) (tail!3130 (tail!3130 lt!811670))))))

(assert (= (and d!651839 (not res!936586)) b!2177120))

(assert (= (and b!2177120 res!936583) b!2177121))

(assert (= (and b!2177121 res!936585) b!2177122))

(assert (= (and d!651839 (not res!936584)) b!2177123))

(assert (=> b!2177121 m!2617445))

(declare-fun m!2619037 () Bool)

(assert (=> b!2177121 m!2619037))

(assert (=> b!2177121 m!2617447))

(declare-fun m!2619039 () Bool)

(assert (=> b!2177121 m!2619039))

(assert (=> b!2177123 m!2617447))

(declare-fun m!2619041 () Bool)

(assert (=> b!2177123 m!2619041))

(assert (=> b!2177123 m!2617445))

(declare-fun m!2619043 () Bool)

(assert (=> b!2177123 m!2619043))

(assert (=> b!2177122 m!2617445))

(declare-fun m!2619045 () Bool)

(assert (=> b!2177122 m!2619045))

(assert (=> b!2177122 m!2617447))

(declare-fun m!2619047 () Bool)

(assert (=> b!2177122 m!2619047))

(assert (=> b!2177122 m!2619045))

(assert (=> b!2177122 m!2619047))

(declare-fun m!2619049 () Bool)

(assert (=> b!2177122 m!2619049))

(assert (=> b!2175833 d!651839))

(declare-fun d!651841 () Bool)

(assert (=> d!651841 (= (tail!3130 lt!811659) (t!197874 lt!811659))))

(assert (=> b!2175833 d!651841))

(assert (=> b!2175833 d!651833))

(assert (=> b!2176143 d!651595))

(declare-fun b!2177125 () Bool)

(declare-fun e!1392130 () List!25306)

(declare-fun e!1392131 () List!25306)

(assert (=> b!2177125 (= e!1392130 e!1392131)))

(declare-fun c!345532 () Bool)

(assert (=> b!2177125 (= c!345532 ((_ is Leaf!11950) (c!345005 totalInput!977)))))

(declare-fun d!651843 () Bool)

(declare-fun c!345531 () Bool)

(assert (=> d!651843 (= c!345531 ((_ is Empty!8167) (c!345005 totalInput!977)))))

(assert (=> d!651843 (= (list!9678 (c!345005 totalInput!977)) e!1392130)))

(declare-fun b!2177126 () Bool)

(assert (=> b!2177126 (= e!1392131 (list!9680 (xs!11109 (c!345005 totalInput!977))))))

(declare-fun b!2177124 () Bool)

(assert (=> b!2177124 (= e!1392130 Nil!25222)))

(declare-fun b!2177127 () Bool)

(assert (=> b!2177127 (= e!1392131 (++!6390 (list!9678 (left!19365 (c!345005 totalInput!977))) (list!9678 (right!19695 (c!345005 totalInput!977)))))))

(assert (= (and d!651843 c!345531) b!2177124))

(assert (= (and d!651843 (not c!345531)) b!2177125))

(assert (= (and b!2177125 c!345532) b!2177126))

(assert (= (and b!2177125 (not c!345532)) b!2177127))

(declare-fun m!2619051 () Bool)

(assert (=> b!2177126 m!2619051))

(declare-fun m!2619053 () Bool)

(assert (=> b!2177127 m!2619053))

(declare-fun m!2619055 () Bool)

(assert (=> b!2177127 m!2619055))

(assert (=> b!2177127 m!2619053))

(assert (=> b!2177127 m!2619055))

(declare-fun m!2619057 () Bool)

(assert (=> b!2177127 m!2619057))

(assert (=> d!651237 d!651843))

(declare-fun lt!812354 () Int)

(declare-fun d!651845 () Bool)

(assert (=> d!651845 (and (>= lt!812354 (- 1)) (< lt!812354 (size!19707 totalInput!977)) (>= lt!812354 lt!811668) (or (= lt!812354 lt!811668) (>= lt!812354 lt!811673)))))

(declare-fun e!1392132 () Int)

(assert (=> d!651845 (= lt!812354 e!1392132)))

(declare-fun c!345533 () Bool)

(declare-fun e!1392134 () Bool)

(assert (=> d!651845 (= c!345533 e!1392134)))

(declare-fun res!936587 () Bool)

(assert (=> d!651845 (=> res!936587 e!1392134)))

(assert (=> d!651845 (= res!936587 (= lt!811673 (size!19707 totalInput!977)))))

(assert (=> d!651845 (and (>= lt!811673 0) (<= lt!811673 (size!19707 totalInput!977)))))

(assert (=> d!651845 (= (furthestNullablePosition!213 z!4055 lt!811673 totalInput!977 (size!19707 totalInput!977) lt!811668) lt!812354)))

(declare-fun b!2177128 () Bool)

(declare-fun e!1392133 () Int)

(assert (=> b!2177128 (= e!1392133 lt!811668)))

(declare-fun b!2177129 () Bool)

(assert (=> b!2177129 (= e!1392134 (lostCauseZipper!167 z!4055))))

(declare-fun b!2177130 () Bool)

(declare-fun lt!812353 () (InoxSet Context!3202))

(assert (=> b!2177130 (= e!1392132 (furthestNullablePosition!213 lt!812353 (+ lt!811673 1) totalInput!977 (size!19707 totalInput!977) e!1392133))))

(assert (=> b!2177130 (= lt!812353 (derivationStepZipper!134 z!4055 (apply!6076 totalInput!977 lt!811673)))))

(declare-fun c!345534 () Bool)

(assert (=> b!2177130 (= c!345534 (nullableZipper!311 lt!812353))))

(declare-fun b!2177131 () Bool)

(assert (=> b!2177131 (= e!1392133 lt!811673)))

(declare-fun b!2177132 () Bool)

(assert (=> b!2177132 (= e!1392132 lt!811668)))

(assert (= (and d!651845 (not res!936587)) b!2177129))

(assert (= (and d!651845 c!345533) b!2177132))

(assert (= (and d!651845 (not c!345533)) b!2177130))

(assert (= (and b!2177130 c!345534) b!2177131))

(assert (= (and b!2177130 (not c!345534)) b!2177128))

(assert (=> b!2177129 m!2617517))

(assert (=> b!2177130 m!2617023))

(declare-fun m!2619059 () Bool)

(assert (=> b!2177130 m!2619059))

(assert (=> b!2177130 m!2617521))

(assert (=> b!2177130 m!2617521))

(assert (=> b!2177130 m!2617523))

(declare-fun m!2619061 () Bool)

(assert (=> b!2177130 m!2619061))

(assert (=> d!651233 d!651845))

(assert (=> d!651233 d!651243))

(declare-fun d!651847 () Bool)

(declare-fun e!1392150 () Bool)

(assert (=> d!651847 e!1392150))

(declare-fun res!936611 () Bool)

(assert (=> d!651847 (=> res!936611 e!1392150)))

(declare-fun lt!812360 () Int)

(assert (=> d!651847 (= res!936611 (<= lt!812360 0))))

(assert (=> d!651847 (= lt!812360 (+ (- (furthestNullablePosition!213 z!4055 lt!811673 totalInput!977 (size!19707 totalInput!977) lt!811668) lt!811673) 1))))

(assert (=> d!651847 true))

(declare-fun _$71!129 () Unit!38293)

(assert (=> d!651847 (= (choose!12855 z!4055 lt!811673 totalInput!977 lt!811668) _$71!129)))

(declare-fun b!2177162 () Bool)

(assert (=> b!2177162 (= e!1392150 (matchZipper!147 z!4055 (take!239 (drop!1249 (list!9676 totalInput!977) lt!811673) lt!812360)))))

(assert (= (and d!651847 (not res!936611)) b!2177162))

(assert (=> d!651847 m!2617023))

(assert (=> d!651847 m!2617023))

(assert (=> d!651847 m!2617763))

(assert (=> b!2177162 m!2617037))

(assert (=> b!2177162 m!2617037))

(assert (=> b!2177162 m!2617767))

(assert (=> b!2177162 m!2617767))

(declare-fun m!2619079 () Bool)

(assert (=> b!2177162 m!2619079))

(assert (=> b!2177162 m!2619079))

(declare-fun m!2619081 () Bool)

(assert (=> b!2177162 m!2619081))

(assert (=> d!651233 d!651847))

(assert (=> bm!130669 d!651455))

(declare-fun d!651859 () Bool)

(assert (not d!651859))

(assert (=> b!2176083 d!651859))

(declare-fun b!2177169 () Bool)

(declare-fun res!936619 () Bool)

(declare-fun e!1392158 () Bool)

(assert (=> b!2177169 (=> res!936619 e!1392158)))

(assert (=> b!2177169 (= res!936619 (not ((_ is Concat!10333) (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534)))))))

(declare-fun e!1392159 () Bool)

(assert (=> b!2177169 (= e!1392159 e!1392158)))

(declare-fun b!2177170 () Bool)

(declare-fun e!1392154 () Bool)

(declare-fun call!130789 () Bool)

(assert (=> b!2177170 (= e!1392154 call!130789)))

(declare-fun bm!130783 () Bool)

(declare-fun call!130790 () Bool)

(assert (=> bm!130783 (= call!130790 call!130789)))

(declare-fun c!345539 () Bool)

(declare-fun bm!130784 () Bool)

(declare-fun c!345538 () Bool)

(assert (=> bm!130784 (= call!130789 (validRegex!2307 (ite c!345538 (reg!6360 (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))) (ite c!345539 (regTwo!12575 (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))) (regOne!12574 (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534)))))))))

(declare-fun b!2177171 () Bool)

(declare-fun e!1392157 () Bool)

(assert (=> b!2177171 (= e!1392157 e!1392154)))

(declare-fun res!936620 () Bool)

(assert (=> b!2177171 (= res!936620 (not (nullable!1705 (reg!6360 (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))))))))

(assert (=> b!2177171 (=> (not res!936620) (not e!1392154))))

(declare-fun b!2177172 () Bool)

(assert (=> b!2177172 (= e!1392157 e!1392159)))

(assert (=> b!2177172 (= c!345539 ((_ is Union!6031) (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))))))

(declare-fun b!2177173 () Bool)

(declare-fun e!1392156 () Bool)

(declare-fun call!130788 () Bool)

(assert (=> b!2177173 (= e!1392156 call!130788)))

(declare-fun bm!130785 () Bool)

(assert (=> bm!130785 (= call!130788 (validRegex!2307 (ite c!345539 (regOne!12575 (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))) (regTwo!12574 (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))))))))

(declare-fun b!2177174 () Bool)

(declare-fun e!1392155 () Bool)

(assert (=> b!2177174 (= e!1392155 e!1392157)))

(assert (=> b!2177174 (= c!345538 ((_ is Star!6031) (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))))))

(declare-fun b!2177175 () Bool)

(declare-fun res!936622 () Bool)

(declare-fun e!1392153 () Bool)

(assert (=> b!2177175 (=> (not res!936622) (not e!1392153))))

(assert (=> b!2177175 (= res!936622 call!130788)))

(assert (=> b!2177175 (= e!1392159 e!1392153)))

(declare-fun b!2177176 () Bool)

(assert (=> b!2177176 (= e!1392153 call!130790)))

(declare-fun d!651861 () Bool)

(declare-fun res!936618 () Bool)

(assert (=> d!651861 (=> res!936618 e!1392155)))

(assert (=> d!651861 (= res!936618 ((_ is ElementMatch!6031) (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))))))

(assert (=> d!651861 (= (validRegex!2307 (ite c!345203 (regOne!12575 r!12534) (regTwo!12574 r!12534))) e!1392155)))

(declare-fun b!2177177 () Bool)

(assert (=> b!2177177 (= e!1392158 e!1392156)))

(declare-fun res!936621 () Bool)

(assert (=> b!2177177 (=> (not res!936621) (not e!1392156))))

(assert (=> b!2177177 (= res!936621 call!130790)))

(assert (= (and d!651861 (not res!936618)) b!2177174))

(assert (= (and b!2177174 c!345538) b!2177171))

(assert (= (and b!2177174 (not c!345538)) b!2177172))

(assert (= (and b!2177171 res!936620) b!2177170))

(assert (= (and b!2177172 c!345539) b!2177175))

(assert (= (and b!2177172 (not c!345539)) b!2177169))

(assert (= (and b!2177175 res!936622) b!2177176))

(assert (= (and b!2177169 (not res!936619)) b!2177177))

(assert (= (and b!2177177 res!936621) b!2177173))

(assert (= (or b!2177176 b!2177177) bm!130783))

(assert (= (or b!2177175 b!2177173) bm!130785))

(assert (= (or b!2177170 bm!130783) bm!130784))

(declare-fun m!2619093 () Bool)

(assert (=> bm!130784 m!2619093))

(declare-fun m!2619097 () Bool)

(assert (=> b!2177171 m!2619097))

(declare-fun m!2619101 () Bool)

(assert (=> bm!130785 m!2619101))

(assert (=> bm!130682 d!651861))

(declare-fun b!2177183 () Bool)

(declare-fun res!936627 () Bool)

(declare-fun e!1392164 () Bool)

(assert (=> b!2177183 (=> (not res!936627) (not e!1392164))))

(assert (=> b!2177183 (= res!936627 (= (head!4658 (tail!3130 lt!811676)) (head!4658 (tail!3130 lt!811678))))))

(declare-fun b!2177182 () Bool)

(declare-fun e!1392163 () Bool)

(assert (=> b!2177182 (= e!1392163 e!1392164)))

(declare-fun res!936625 () Bool)

(assert (=> b!2177182 (=> (not res!936625) (not e!1392164))))

(assert (=> b!2177182 (= res!936625 (not ((_ is Nil!25222) (tail!3130 lt!811678))))))

(declare-fun d!651865 () Bool)

(declare-fun e!1392162 () Bool)

(assert (=> d!651865 e!1392162))

(declare-fun res!936626 () Bool)

(assert (=> d!651865 (=> res!936626 e!1392162)))

(declare-fun lt!812362 () Bool)

(assert (=> d!651865 (= res!936626 (not lt!812362))))

(assert (=> d!651865 (= lt!812362 e!1392163)))

(declare-fun res!936628 () Bool)

(assert (=> d!651865 (=> res!936628 e!1392163)))

(assert (=> d!651865 (= res!936628 ((_ is Nil!25222) (tail!3130 lt!811676)))))

(assert (=> d!651865 (= (isPrefix!2147 (tail!3130 lt!811676) (tail!3130 lt!811678)) lt!812362)))

(declare-fun b!2177185 () Bool)

(assert (=> b!2177185 (= e!1392162 (>= (size!19706 (tail!3130 lt!811678)) (size!19706 (tail!3130 lt!811676))))))

(declare-fun b!2177184 () Bool)

(assert (=> b!2177184 (= e!1392164 (isPrefix!2147 (tail!3130 (tail!3130 lt!811676)) (tail!3130 (tail!3130 lt!811678))))))

(assert (= (and d!651865 (not res!936628)) b!2177182))

(assert (= (and b!2177182 res!936625) b!2177183))

(assert (= (and b!2177183 res!936627) b!2177184))

(assert (= (and d!651865 (not res!936626)) b!2177185))

(assert (=> b!2177183 m!2617717))

(assert (=> b!2177183 m!2618497))

(assert (=> b!2177183 m!2617719))

(declare-fun m!2619103 () Bool)

(assert (=> b!2177183 m!2619103))

(assert (=> b!2177185 m!2617719))

(declare-fun m!2619105 () Bool)

(assert (=> b!2177185 m!2619105))

(assert (=> b!2177185 m!2617717))

(declare-fun m!2619107 () Bool)

(assert (=> b!2177185 m!2619107))

(assert (=> b!2177184 m!2617717))

(assert (=> b!2177184 m!2618501))

(assert (=> b!2177184 m!2617719))

(declare-fun m!2619109 () Bool)

(assert (=> b!2177184 m!2619109))

(assert (=> b!2177184 m!2618501))

(assert (=> b!2177184 m!2619109))

(declare-fun m!2619111 () Bool)

(assert (=> b!2177184 m!2619111))

(assert (=> b!2176074 d!651865))

(assert (=> b!2176074 d!651429))

(declare-fun d!651869 () Bool)

(assert (=> d!651869 (= (tail!3130 lt!811678) (t!197874 lt!811678))))

(assert (=> b!2176074 d!651869))

(assert (=> b!2176068 d!651347))

(assert (=> b!2175619 d!651487))

(declare-fun d!651871 () Bool)

(declare-fun c!345546 () Bool)

(assert (=> d!651871 (= c!345546 ((_ is Nil!25224) lt!811850))))

(declare-fun e!1392174 () (InoxSet Context!3202))

(assert (=> d!651871 (= (content!3437 lt!811850) e!1392174)))

(declare-fun b!2177204 () Bool)

(assert (=> b!2177204 (= e!1392174 ((as const (Array Context!3202 Bool)) false))))

(declare-fun b!2177205 () Bool)

(assert (=> b!2177205 (= e!1392174 ((_ map or) (store ((as const (Array Context!3202 Bool)) false) (h!30625 lt!811850) true) (content!3437 (t!197876 lt!811850))))))

(assert (= (and d!651871 c!345546) b!2177204))

(assert (= (and d!651871 (not c!345546)) b!2177205))

(declare-fun m!2619123 () Bool)

(assert (=> b!2177205 m!2619123))

(declare-fun m!2619125 () Bool)

(assert (=> b!2177205 m!2619125))

(assert (=> b!2175856 d!651871))

(declare-fun b!2177207 () Bool)

(declare-fun res!936639 () Bool)

(declare-fun e!1392177 () Bool)

(assert (=> b!2177207 (=> (not res!936639) (not e!1392177))))

(assert (=> b!2177207 (= res!936639 (= (head!4658 lt!811670) (head!4658 lt!811670)))))

(declare-fun b!2177206 () Bool)

(declare-fun e!1392176 () Bool)

(assert (=> b!2177206 (= e!1392176 e!1392177)))

(declare-fun res!936637 () Bool)

(assert (=> b!2177206 (=> (not res!936637) (not e!1392177))))

(assert (=> b!2177206 (= res!936637 (not ((_ is Nil!25222) lt!811670)))))

(declare-fun d!651877 () Bool)

(declare-fun e!1392175 () Bool)

(assert (=> d!651877 e!1392175))

(declare-fun res!936638 () Bool)

(assert (=> d!651877 (=> res!936638 e!1392175)))

(declare-fun lt!812364 () Bool)

(assert (=> d!651877 (= res!936638 (not lt!812364))))

(assert (=> d!651877 (= lt!812364 e!1392176)))

(declare-fun res!936640 () Bool)

(assert (=> d!651877 (=> res!936640 e!1392176)))

(assert (=> d!651877 (= res!936640 ((_ is Nil!25222) lt!811670))))

(assert (=> d!651877 (= (isPrefix!2147 lt!811670 lt!811670) lt!812364)))

(declare-fun b!2177209 () Bool)

(assert (=> b!2177209 (= e!1392175 (>= (size!19706 lt!811670) (size!19706 lt!811670)))))

(declare-fun b!2177208 () Bool)

(assert (=> b!2177208 (= e!1392177 (isPrefix!2147 (tail!3130 lt!811670) (tail!3130 lt!811670)))))

(assert (= (and d!651877 (not res!936640)) b!2177206))

(assert (= (and b!2177206 res!936637) b!2177207))

(assert (= (and b!2177207 res!936639) b!2177208))

(assert (= (and d!651877 (not res!936638)) b!2177209))

(assert (=> b!2177207 m!2617441))

(assert (=> b!2177207 m!2617441))

(assert (=> b!2177209 m!2617047))

(assert (=> b!2177209 m!2617047))

(assert (=> b!2177208 m!2617447))

(assert (=> b!2177208 m!2617447))

(assert (=> b!2177208 m!2617447))

(assert (=> b!2177208 m!2617447))

(declare-fun m!2619127 () Bool)

(assert (=> b!2177208 m!2619127))

(assert (=> bm!130663 d!651877))

(declare-fun d!651879 () Bool)

(declare-fun lt!812365 () Int)

(assert (=> d!651879 (>= lt!812365 0)))

(declare-fun e!1392182 () Int)

(assert (=> d!651879 (= lt!812365 e!1392182)))

(declare-fun c!345547 () Bool)

(assert (=> d!651879 (= c!345547 ((_ is Nil!25222) lt!811666))))

(assert (=> d!651879 (= (size!19706 lt!811666) lt!812365)))

(declare-fun b!2177214 () Bool)

(assert (=> b!2177214 (= e!1392182 0)))

(declare-fun b!2177215 () Bool)

(assert (=> b!2177215 (= e!1392182 (+ 1 (size!19706 (t!197874 lt!811666))))))

(assert (= (and d!651879 c!345547) b!2177214))

(assert (= (and d!651879 (not c!345547)) b!2177215))

(declare-fun m!2619129 () Bool)

(assert (=> b!2177215 m!2619129))

(assert (=> b!2176087 d!651879))

(assert (=> b!2176087 d!651269))

(declare-fun b!2177217 () Bool)

(declare-fun res!936647 () Bool)

(declare-fun e!1392185 () Bool)

(assert (=> b!2177217 (=> (not res!936647) (not e!1392185))))

(assert (=> b!2177217 (= res!936647 (= (head!4658 (_1!14869 lt!811654)) (head!4658 (++!6390 (_1!14869 lt!811654) (_2!14869 lt!811654)))))))

(declare-fun b!2177216 () Bool)

(declare-fun e!1392184 () Bool)

(assert (=> b!2177216 (= e!1392184 e!1392185)))

(declare-fun res!936645 () Bool)

(assert (=> b!2177216 (=> (not res!936645) (not e!1392185))))

(assert (=> b!2177216 (= res!936645 (not ((_ is Nil!25222) (++!6390 (_1!14869 lt!811654) (_2!14869 lt!811654)))))))

(declare-fun d!651881 () Bool)

(declare-fun e!1392183 () Bool)

(assert (=> d!651881 e!1392183))

(declare-fun res!936646 () Bool)

(assert (=> d!651881 (=> res!936646 e!1392183)))

(declare-fun lt!812366 () Bool)

(assert (=> d!651881 (= res!936646 (not lt!812366))))

(assert (=> d!651881 (= lt!812366 e!1392184)))

(declare-fun res!936648 () Bool)

(assert (=> d!651881 (=> res!936648 e!1392184)))

(assert (=> d!651881 (= res!936648 ((_ is Nil!25222) (_1!14869 lt!811654)))))

(assert (=> d!651881 (= (isPrefix!2147 (_1!14869 lt!811654) (++!6390 (_1!14869 lt!811654) (_2!14869 lt!811654))) lt!812366)))

(declare-fun b!2177219 () Bool)

(assert (=> b!2177219 (= e!1392183 (>= (size!19706 (++!6390 (_1!14869 lt!811654) (_2!14869 lt!811654))) (size!19706 (_1!14869 lt!811654))))))

(declare-fun b!2177218 () Bool)

(assert (=> b!2177218 (= e!1392185 (isPrefix!2147 (tail!3130 (_1!14869 lt!811654)) (tail!3130 (++!6390 (_1!14869 lt!811654) (_2!14869 lt!811654)))))))

(assert (= (and d!651881 (not res!936648)) b!2177216))

(assert (= (and b!2177216 res!936645) b!2177217))

(assert (= (and b!2177217 res!936647) b!2177218))

(assert (= (and d!651881 (not res!936646)) b!2177219))

(assert (=> b!2177217 m!2617199))

(assert (=> b!2177217 m!2617075))

(declare-fun m!2619131 () Bool)

(assert (=> b!2177217 m!2619131))

(assert (=> b!2177219 m!2617075))

(declare-fun m!2619133 () Bool)

(assert (=> b!2177219 m!2619133))

(assert (=> b!2177219 m!2617115))

(assert (=> b!2177218 m!2617195))

(assert (=> b!2177218 m!2617075))

(declare-fun m!2619135 () Bool)

(assert (=> b!2177218 m!2619135))

(assert (=> b!2177218 m!2617195))

(assert (=> b!2177218 m!2619135))

(declare-fun m!2619137 () Bool)

(assert (=> b!2177218 m!2619137))

(assert (=> d!651227 d!651881))

(assert (=> d!651227 d!651083))

(declare-fun d!651883 () Bool)

(assert (=> d!651883 (isPrefix!2147 (_1!14869 lt!811654) (++!6390 (_1!14869 lt!811654) (_2!14869 lt!811654)))))

(assert (=> d!651883 true))

(declare-fun _$46!1269 () Unit!38293)

(assert (=> d!651883 (= (choose!12853 (_1!14869 lt!811654) (_2!14869 lt!811654)) _$46!1269)))

(declare-fun bs!447249 () Bool)

(assert (= bs!447249 d!651883))

(assert (=> bs!447249 m!2617075))

(assert (=> bs!447249 m!2617075))

(assert (=> bs!447249 m!2617745))

(assert (=> d!651227 d!651883))

(assert (=> b!2175817 d!651583))

(declare-fun b!2177222 () Bool)

(declare-fun e!1392193 () tuple2!24998)

(declare-fun call!130794 () tuple2!24998)

(assert (=> b!2177222 (= e!1392193 call!130794)))

(declare-fun bm!130787 () Bool)

(declare-fun call!130793 () Bool)

(assert (=> bm!130787 (= call!130793 (isPrefix!2147 lt!811670 lt!811670))))

(declare-fun b!2177223 () Bool)

(declare-fun c!345550 () Bool)

(declare-fun call!130797 () Bool)

(assert (=> b!2177223 (= c!345550 call!130797)))

(declare-fun lt!812372 () Unit!38293)

(declare-fun lt!812385 () Unit!38293)

(assert (=> b!2177223 (= lt!812372 lt!812385)))

(assert (=> b!2177223 (= lt!811670 lt!811997)))

(declare-fun call!130799 () Unit!38293)

(assert (=> b!2177223 (= lt!812385 call!130799)))

(declare-fun lt!812393 () Unit!38293)

(declare-fun lt!812376 () Unit!38293)

(assert (=> b!2177223 (= lt!812393 lt!812376)))

(assert (=> b!2177223 call!130793))

(declare-fun call!130795 () Unit!38293)

(assert (=> b!2177223 (= lt!812376 call!130795)))

(declare-fun e!1392191 () tuple2!24998)

(declare-fun e!1392192 () tuple2!24998)

(assert (=> b!2177223 (= e!1392191 e!1392192)))

(declare-fun call!130798 () Regex!6031)

(declare-fun bm!130788 () Bool)

(declare-fun lt!812390 () List!25306)

(declare-fun call!130792 () List!25306)

(assert (=> bm!130788 (= call!130794 (findLongestMatchInner!656 call!130798 lt!812390 (+ (size!19706 Nil!25222) 1 1) call!130792 lt!811670 (size!19706 lt!811670)))))

(declare-fun bm!130789 () Bool)

(declare-fun call!130796 () C!12208)

(assert (=> bm!130789 (= call!130798 (derivativeStep!1448 call!130674 call!130796))))

(declare-fun b!2177224 () Bool)

(declare-fun e!1392189 () tuple2!24998)

(declare-fun lt!812367 () tuple2!24998)

(assert (=> b!2177224 (= e!1392189 lt!812367)))

(declare-fun d!651887 () Bool)

(declare-fun e!1392190 () Bool)

(assert (=> d!651887 e!1392190))

(declare-fun res!936651 () Bool)

(assert (=> d!651887 (=> (not res!936651) (not e!1392190))))

(declare-fun lt!812383 () tuple2!24998)

(assert (=> d!651887 (= res!936651 (= (++!6390 (_1!14869 lt!812383) (_2!14869 lt!812383)) lt!811670))))

(declare-fun e!1392194 () tuple2!24998)

(assert (=> d!651887 (= lt!812383 e!1392194)))

(declare-fun c!345552 () Bool)

(assert (=> d!651887 (= c!345552 (lostCause!677 call!130674))))

(declare-fun lt!812377 () Unit!38293)

(declare-fun Unit!38312 () Unit!38293)

(assert (=> d!651887 (= lt!812377 Unit!38312)))

(assert (=> d!651887 (= (getSuffix!1042 lt!811670 lt!811997) call!130668)))

(declare-fun lt!812391 () Unit!38293)

(declare-fun lt!812374 () Unit!38293)

(assert (=> d!651887 (= lt!812391 lt!812374)))

(declare-fun lt!812368 () List!25306)

(assert (=> d!651887 (= call!130668 lt!812368)))

(assert (=> d!651887 (= lt!812374 (lemmaSamePrefixThenSameSuffix!964 lt!811997 call!130668 lt!811997 lt!812368 lt!811670))))

(assert (=> d!651887 (= lt!812368 (getSuffix!1042 lt!811670 lt!811997))))

(declare-fun lt!812378 () Unit!38293)

(declare-fun lt!812379 () Unit!38293)

(assert (=> d!651887 (= lt!812378 lt!812379)))

(assert (=> d!651887 (isPrefix!2147 lt!811997 (++!6390 lt!811997 call!130668))))

(assert (=> d!651887 (= lt!812379 (lemmaConcatTwoListThenFirstIsPrefix!1430 lt!811997 call!130668))))

(assert (=> d!651887 (validRegex!2307 call!130674)))

(assert (=> d!651887 (= (findLongestMatchInner!656 call!130674 lt!811997 (+ (size!19706 Nil!25222) 1) call!130668 lt!811670 (size!19706 lt!811670)) lt!812383)))

(declare-fun b!2177225 () Bool)

(assert (=> b!2177225 (= e!1392192 (tuple2!24999 Nil!25222 lt!811670))))

(declare-fun b!2177226 () Bool)

(declare-fun c!345553 () Bool)

(assert (=> b!2177226 (= c!345553 call!130797)))

(declare-fun lt!812370 () Unit!38293)

(declare-fun lt!812384 () Unit!38293)

(assert (=> b!2177226 (= lt!812370 lt!812384)))

(declare-fun lt!812387 () C!12208)

(declare-fun lt!812381 () List!25306)

(assert (=> b!2177226 (= (++!6390 (++!6390 lt!811997 (Cons!25222 lt!812387 Nil!25222)) lt!812381) lt!811670)))

(assert (=> b!2177226 (= lt!812384 (lemmaMoveElementToOtherListKeepsConcatEq!515 lt!811997 lt!812387 lt!812381 lt!811670))))

(assert (=> b!2177226 (= lt!812381 (tail!3130 call!130668))))

(assert (=> b!2177226 (= lt!812387 (head!4658 call!130668))))

(declare-fun lt!812392 () Unit!38293)

(declare-fun lt!812394 () Unit!38293)

(assert (=> b!2177226 (= lt!812392 lt!812394)))

(assert (=> b!2177226 (isPrefix!2147 (++!6390 lt!811997 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 lt!811997)) Nil!25222)) lt!811670)))

(assert (=> b!2177226 (= lt!812394 (lemmaAddHeadSuffixToPrefixStillPrefix!387 lt!811997 lt!811670))))

(declare-fun lt!812369 () Unit!38293)

(declare-fun lt!812386 () Unit!38293)

(assert (=> b!2177226 (= lt!812369 lt!812386)))

(assert (=> b!2177226 (= lt!812386 (lemmaAddHeadSuffixToPrefixStillPrefix!387 lt!811997 lt!811670))))

(assert (=> b!2177226 (= lt!812390 (++!6390 lt!811997 (Cons!25222 (head!4658 call!130668) Nil!25222)))))

(declare-fun lt!812375 () Unit!38293)

(declare-fun e!1392195 () Unit!38293)

(assert (=> b!2177226 (= lt!812375 e!1392195)))

(declare-fun c!345548 () Bool)

(assert (=> b!2177226 (= c!345548 (= (size!19706 lt!811997) (size!19706 lt!811670)))))

(declare-fun lt!812388 () Unit!38293)

(declare-fun lt!812373 () Unit!38293)

(assert (=> b!2177226 (= lt!812388 lt!812373)))

(assert (=> b!2177226 (<= (size!19706 lt!811997) (size!19706 lt!811670))))

(assert (=> b!2177226 (= lt!812373 (lemmaIsPrefixThenSmallerEqSize!190 lt!811997 lt!811670))))

(assert (=> b!2177226 (= e!1392191 e!1392193)))

(declare-fun b!2177227 () Bool)

(declare-fun e!1392188 () Bool)

(assert (=> b!2177227 (= e!1392188 (>= (size!19706 (_1!14869 lt!812383)) (size!19706 lt!811997)))))

(declare-fun bm!130790 () Bool)

(assert (=> bm!130790 (= call!130795 (lemmaIsPrefixRefl!1417 lt!811670 lt!811670))))

(declare-fun b!2177228 () Bool)

(assert (=> b!2177228 (= e!1392194 (tuple2!24999 Nil!25222 lt!811670))))

(declare-fun b!2177229 () Bool)

(assert (=> b!2177229 (= e!1392190 e!1392188)))

(declare-fun res!936652 () Bool)

(assert (=> b!2177229 (=> res!936652 e!1392188)))

(assert (=> b!2177229 (= res!936652 (isEmpty!14477 (_1!14869 lt!812383)))))

(declare-fun b!2177230 () Bool)

(declare-fun Unit!38313 () Unit!38293)

(assert (=> b!2177230 (= e!1392195 Unit!38313)))

(declare-fun b!2177231 () Bool)

(assert (=> b!2177231 (= e!1392189 (tuple2!24999 lt!811997 call!130668))))

(declare-fun bm!130791 () Bool)

(assert (=> bm!130791 (= call!130792 (tail!3130 call!130668))))

(declare-fun b!2177232 () Bool)

(assert (=> b!2177232 (= e!1392194 e!1392191)))

(declare-fun c!345549 () Bool)

(assert (=> b!2177232 (= c!345549 (= (+ (size!19706 Nil!25222) 1) (size!19706 lt!811670)))))

(declare-fun bm!130792 () Bool)

(assert (=> bm!130792 (= call!130796 (head!4658 call!130668))))

(declare-fun b!2177233 () Bool)

(assert (=> b!2177233 (= e!1392192 (tuple2!24999 lt!811997 Nil!25222))))

(declare-fun bm!130793 () Bool)

(assert (=> bm!130793 (= call!130797 (nullable!1705 call!130674))))

(declare-fun b!2177234 () Bool)

(assert (=> b!2177234 (= e!1392193 e!1392189)))

(assert (=> b!2177234 (= lt!812367 call!130794)))

(declare-fun c!345551 () Bool)

(assert (=> b!2177234 (= c!345551 (isEmpty!14477 (_1!14869 lt!812367)))))

(declare-fun b!2177235 () Bool)

(declare-fun Unit!38314 () Unit!38293)

(assert (=> b!2177235 (= e!1392195 Unit!38314)))

(declare-fun lt!812382 () Unit!38293)

(assert (=> b!2177235 (= lt!812382 call!130795)))

(assert (=> b!2177235 call!130793))

(declare-fun lt!812389 () Unit!38293)

(assert (=> b!2177235 (= lt!812389 lt!812382)))

(declare-fun lt!812371 () Unit!38293)

(assert (=> b!2177235 (= lt!812371 call!130799)))

(assert (=> b!2177235 (= lt!811670 lt!811997)))

(declare-fun lt!812380 () Unit!38293)

(assert (=> b!2177235 (= lt!812380 lt!812371)))

(assert (=> b!2177235 false))

(declare-fun bm!130794 () Bool)

(assert (=> bm!130794 (= call!130799 (lemmaIsPrefixSameLengthThenSameList!359 lt!811670 lt!811997 lt!811670))))

(assert (= (and d!651887 c!345552) b!2177228))

(assert (= (and d!651887 (not c!345552)) b!2177232))

(assert (= (and b!2177232 c!345549) b!2177223))

(assert (= (and b!2177232 (not c!345549)) b!2177226))

(assert (= (and b!2177223 c!345550) b!2177233))

(assert (= (and b!2177223 (not c!345550)) b!2177225))

(assert (= (and b!2177226 c!345548) b!2177235))

(assert (= (and b!2177226 (not c!345548)) b!2177230))

(assert (= (and b!2177226 c!345553) b!2177234))

(assert (= (and b!2177226 (not c!345553)) b!2177222))

(assert (= (and b!2177234 c!345551) b!2177231))

(assert (= (and b!2177234 (not c!345551)) b!2177224))

(assert (= (or b!2177234 b!2177222) bm!130792))

(assert (= (or b!2177234 b!2177222) bm!130791))

(assert (= (or b!2177234 b!2177222) bm!130789))

(assert (= (or b!2177234 b!2177222) bm!130788))

(assert (= (or b!2177223 b!2177235) bm!130787))

(assert (= (or b!2177223 b!2177235) bm!130790))

(assert (= (or b!2177223 b!2177235) bm!130794))

(assert (= (or b!2177223 b!2177226) bm!130793))

(assert (= (and d!651887 res!936651) b!2177229))

(assert (= (and b!2177229 (not res!936652)) b!2177227))

(declare-fun m!2619149 () Bool)

(assert (=> bm!130792 m!2619149))

(assert (=> bm!130790 m!2617647))

(declare-fun m!2619151 () Bool)

(assert (=> b!2177229 m!2619151))

(declare-fun m!2619153 () Bool)

(assert (=> b!2177226 m!2619153))

(declare-fun m!2619155 () Bool)

(assert (=> b!2177226 m!2619155))

(declare-fun m!2619159 () Bool)

(assert (=> b!2177226 m!2619159))

(declare-fun m!2619161 () Bool)

(assert (=> b!2177226 m!2619161))

(declare-fun m!2619163 () Bool)

(assert (=> b!2177226 m!2619163))

(assert (=> b!2177226 m!2619159))

(assert (=> b!2177226 m!2617047))

(declare-fun m!2619165 () Bool)

(assert (=> b!2177226 m!2619165))

(declare-fun m!2619167 () Bool)

(assert (=> b!2177226 m!2619167))

(declare-fun m!2619169 () Bool)

(assert (=> b!2177226 m!2619169))

(declare-fun m!2619171 () Bool)

(assert (=> b!2177226 m!2619171))

(assert (=> b!2177226 m!2619149))

(declare-fun m!2619173 () Bool)

(assert (=> b!2177226 m!2619173))

(assert (=> b!2177226 m!2619173))

(declare-fun m!2619175 () Bool)

(assert (=> b!2177226 m!2619175))

(assert (=> b!2177226 m!2619171))

(declare-fun m!2619177 () Bool)

(assert (=> b!2177226 m!2619177))

(declare-fun m!2619179 () Bool)

(assert (=> d!651887 m!2619179))

(declare-fun m!2619181 () Bool)

(assert (=> d!651887 m!2619181))

(declare-fun m!2619185 () Bool)

(assert (=> d!651887 m!2619185))

(declare-fun m!2619189 () Bool)

(assert (=> d!651887 m!2619189))

(declare-fun m!2619193 () Bool)

(assert (=> d!651887 m!2619193))

(declare-fun m!2619197 () Bool)

(assert (=> d!651887 m!2619197))

(assert (=> d!651887 m!2619179))

(declare-fun m!2619201 () Bool)

(assert (=> d!651887 m!2619201))

(assert (=> d!651887 m!2619171))

(declare-fun m!2619205 () Bool)

(assert (=> bm!130794 m!2619205))

(declare-fun m!2619209 () Bool)

(assert (=> b!2177227 m!2619209))

(assert (=> b!2177227 m!2619153))

(declare-fun m!2619211 () Bool)

(assert (=> bm!130793 m!2619211))

(declare-fun m!2619213 () Bool)

(assert (=> b!2177234 m!2619213))

(assert (=> bm!130791 m!2619167))

(assert (=> bm!130788 m!2617047))

(declare-fun m!2619215 () Bool)

(assert (=> bm!130788 m!2619215))

(declare-fun m!2619217 () Bool)

(assert (=> bm!130789 m!2619217))

(assert (=> bm!130787 m!2617693))

(assert (=> bm!130664 d!651887))

(declare-fun b!2177251 () Bool)

(declare-fun e!1392212 () Int)

(assert (=> b!2177251 (= e!1392212 0)))

(declare-fun b!2177253 () Bool)

(declare-fun e!1392209 () Bool)

(declare-fun lt!812397 () List!25306)

(assert (=> b!2177253 (= e!1392209 (= (size!19706 lt!812397) e!1392212))))

(declare-fun c!345557 () Bool)

(assert (=> b!2177253 (= c!345557 (<= (- lt!811677 1) 0))))

(declare-fun b!2177254 () Bool)

(declare-fun e!1392211 () Int)

(assert (=> b!2177254 (= e!1392211 (size!19706 (t!197874 lt!811670)))))

(declare-fun b!2177255 () Bool)

(declare-fun e!1392210 () List!25306)

(assert (=> b!2177255 (= e!1392210 Nil!25222)))

(declare-fun b!2177256 () Bool)

(assert (=> b!2177256 (= e!1392211 (- lt!811677 1))))

(declare-fun b!2177257 () Bool)

(assert (=> b!2177257 (= e!1392210 (Cons!25222 (h!30623 (t!197874 lt!811670)) (take!239 (t!197874 (t!197874 lt!811670)) (- (- lt!811677 1) 1))))))

(declare-fun d!651897 () Bool)

(assert (=> d!651897 e!1392209))

(declare-fun res!936663 () Bool)

(assert (=> d!651897 (=> (not res!936663) (not e!1392209))))

(assert (=> d!651897 (= res!936663 (= ((_ map implies) (content!3436 lt!812397) (content!3436 (t!197874 lt!811670))) ((as const (InoxSet C!12208)) true)))))

(assert (=> d!651897 (= lt!812397 e!1392210)))

(declare-fun c!345555 () Bool)

(assert (=> d!651897 (= c!345555 (or ((_ is Nil!25222) (t!197874 lt!811670)) (<= (- lt!811677 1) 0)))))

(assert (=> d!651897 (= (take!239 (t!197874 lt!811670) (- lt!811677 1)) lt!812397)))

(declare-fun b!2177252 () Bool)

(assert (=> b!2177252 (= e!1392212 e!1392211)))

(declare-fun c!345556 () Bool)

(assert (=> b!2177252 (= c!345556 (>= (- lt!811677 1) (size!19706 (t!197874 lt!811670))))))

(assert (= (and d!651897 c!345555) b!2177255))

(assert (= (and d!651897 (not c!345555)) b!2177257))

(assert (= (and d!651897 res!936663) b!2177253))

(assert (= (and b!2177253 c!345557) b!2177251))

(assert (= (and b!2177253 (not c!345557)) b!2177252))

(assert (= (and b!2177252 c!345556) b!2177254))

(assert (= (and b!2177252 (not c!345556)) b!2177256))

(declare-fun m!2619219 () Bool)

(assert (=> d!651897 m!2619219))

(assert (=> d!651897 m!2618021))

(declare-fun m!2619221 () Bool)

(assert (=> b!2177253 m!2619221))

(assert (=> b!2177252 m!2617695))

(assert (=> b!2177254 m!2617695))

(declare-fun m!2619223 () Bool)

(assert (=> b!2177257 m!2619223))

(assert (=> b!2175841 d!651897))

(declare-fun b!2177259 () Bool)

(declare-fun e!1392213 () List!25306)

(declare-fun e!1392214 () List!25306)

(assert (=> b!2177259 (= e!1392213 e!1392214)))

(declare-fun c!345559 () Bool)

(assert (=> b!2177259 (= c!345559 ((_ is Leaf!11950) (c!345005 (_2!14870 lt!811661))))))

(declare-fun d!651899 () Bool)

(declare-fun c!345558 () Bool)

(assert (=> d!651899 (= c!345558 ((_ is Empty!8167) (c!345005 (_2!14870 lt!811661))))))

(assert (=> d!651899 (= (list!9678 (c!345005 (_2!14870 lt!811661))) e!1392213)))

(declare-fun b!2177260 () Bool)

(assert (=> b!2177260 (= e!1392214 (list!9680 (xs!11109 (c!345005 (_2!14870 lt!811661)))))))

(declare-fun b!2177258 () Bool)

(assert (=> b!2177258 (= e!1392213 Nil!25222)))

(declare-fun b!2177261 () Bool)

(assert (=> b!2177261 (= e!1392214 (++!6390 (list!9678 (left!19365 (c!345005 (_2!14870 lt!811661)))) (list!9678 (right!19695 (c!345005 (_2!14870 lt!811661))))))))

(assert (= (and d!651899 c!345558) b!2177258))

(assert (= (and d!651899 (not c!345558)) b!2177259))

(assert (= (and b!2177259 c!345559) b!2177260))

(assert (= (and b!2177259 (not c!345559)) b!2177261))

(declare-fun m!2619225 () Bool)

(assert (=> b!2177260 m!2619225))

(declare-fun m!2619227 () Bool)

(assert (=> b!2177261 m!2619227))

(declare-fun m!2619229 () Bool)

(assert (=> b!2177261 m!2619229))

(assert (=> b!2177261 m!2619227))

(assert (=> b!2177261 m!2619229))

(declare-fun m!2619231 () Bool)

(assert (=> b!2177261 m!2619231))

(assert (=> d!651245 d!651899))

(assert (=> d!651265 d!651079))

(assert (=> d!651265 d!651263))

(declare-fun d!651901 () Bool)

(assert (=> d!651901 (= (matchR!2780 r!12534 (_1!14869 lt!811654)) (matchZipper!147 z!4055 (_1!14869 lt!811654)))))

(assert (=> d!651901 true))

(declare-fun _$44!1274 () Unit!38293)

(assert (=> d!651901 (= (choose!12856 z!4055 lt!811664 r!12534 (_1!14869 lt!811654)) _$44!1274)))

(declare-fun bs!447250 () Bool)

(assert (= bs!447250 d!651901))

(assert (=> bs!447250 m!2617077))

(assert (=> bs!447250 m!2617119))

(assert (=> d!651265 d!651901))

(assert (=> d!651265 d!651255))

(declare-fun d!651903 () Bool)

(declare-fun res!936664 () Bool)

(declare-fun e!1392215 () Bool)

(assert (=> d!651903 (=> (not res!936664) (not e!1392215))))

(assert (=> d!651903 (= res!936664 (= (csize!16564 (c!345005 input!5540)) (+ (size!19709 (left!19365 (c!345005 input!5540))) (size!19709 (right!19695 (c!345005 input!5540))))))))

(assert (=> d!651903 (= (inv!33509 (c!345005 input!5540)) e!1392215)))

(declare-fun b!2177262 () Bool)

(declare-fun res!936665 () Bool)

(assert (=> b!2177262 (=> (not res!936665) (not e!1392215))))

(assert (=> b!2177262 (= res!936665 (and (not (= (left!19365 (c!345005 input!5540)) Empty!8167)) (not (= (right!19695 (c!345005 input!5540)) Empty!8167))))))

(declare-fun b!2177263 () Bool)

(declare-fun res!936666 () Bool)

(assert (=> b!2177263 (=> (not res!936666) (not e!1392215))))

(assert (=> b!2177263 (= res!936666 (= (cheight!8378 (c!345005 input!5540)) (+ (max!0 (height!1243 (left!19365 (c!345005 input!5540))) (height!1243 (right!19695 (c!345005 input!5540)))) 1)))))

(declare-fun b!2177264 () Bool)

(assert (=> b!2177264 (= e!1392215 (<= 0 (cheight!8378 (c!345005 input!5540))))))

(assert (= (and d!651903 res!936664) b!2177262))

(assert (= (and b!2177262 res!936665) b!2177263))

(assert (= (and b!2177263 res!936666) b!2177264))

(declare-fun m!2619233 () Bool)

(assert (=> d!651903 m!2619233))

(declare-fun m!2619235 () Bool)

(assert (=> d!651903 m!2619235))

(declare-fun m!2619237 () Bool)

(assert (=> b!2177263 m!2619237))

(declare-fun m!2619239 () Bool)

(assert (=> b!2177263 m!2619239))

(assert (=> b!2177263 m!2619237))

(assert (=> b!2177263 m!2619239))

(declare-fun m!2619245 () Bool)

(assert (=> b!2177263 m!2619245))

(assert (=> b!2176161 d!651903))

(declare-fun d!651907 () Bool)

(declare-fun c!345560 () Bool)

(assert (=> d!651907 (= c!345560 (isEmpty!14477 (take!239 (drop!1249 (list!9676 totalInput!977) lt!811673) lt!812022)))))

(declare-fun e!1392216 () Bool)

(assert (=> d!651907 (= (matchZipper!147 z!4055 (take!239 (drop!1249 (list!9676 totalInput!977) lt!811673) lt!812022)) e!1392216)))

(declare-fun b!2177265 () Bool)

(assert (=> b!2177265 (= e!1392216 (nullableZipper!311 z!4055))))

(declare-fun b!2177266 () Bool)

(assert (=> b!2177266 (= e!1392216 (matchZipper!147 (derivationStepZipper!134 z!4055 (head!4658 (take!239 (drop!1249 (list!9676 totalInput!977) lt!811673) lt!812022))) (tail!3130 (take!239 (drop!1249 (list!9676 totalInput!977) lt!811673) lt!812022))))))

(assert (= (and d!651907 c!345560) b!2177265))

(assert (= (and d!651907 (not c!345560)) b!2177266))

(assert (=> d!651907 m!2617769))

(declare-fun m!2619247 () Bool)

(assert (=> d!651907 m!2619247))

(assert (=> b!2177265 m!2617065))

(assert (=> b!2177266 m!2617769))

(declare-fun m!2619249 () Bool)

(assert (=> b!2177266 m!2619249))

(assert (=> b!2177266 m!2619249))

(declare-fun m!2619251 () Bool)

(assert (=> b!2177266 m!2619251))

(assert (=> b!2177266 m!2617769))

(declare-fun m!2619253 () Bool)

(assert (=> b!2177266 m!2619253))

(assert (=> b!2177266 m!2619251))

(assert (=> b!2177266 m!2619253))

(declare-fun m!2619255 () Bool)

(assert (=> b!2177266 m!2619255))

(assert (=> b!2176096 d!651907))

(declare-fun b!2177276 () Bool)

(declare-fun e!1392225 () Int)

(assert (=> b!2177276 (= e!1392225 0)))

(declare-fun b!2177278 () Bool)

(declare-fun e!1392222 () Bool)

(declare-fun lt!812402 () List!25306)

(assert (=> b!2177278 (= e!1392222 (= (size!19706 lt!812402) e!1392225))))

(declare-fun c!345567 () Bool)

(assert (=> b!2177278 (= c!345567 (<= lt!812022 0))))

(declare-fun b!2177279 () Bool)

(declare-fun e!1392224 () Int)

(assert (=> b!2177279 (= e!1392224 (size!19706 (drop!1249 (list!9676 totalInput!977) lt!811673)))))

(declare-fun b!2177280 () Bool)

(declare-fun e!1392223 () List!25306)

(assert (=> b!2177280 (= e!1392223 Nil!25222)))

(declare-fun b!2177281 () Bool)

(assert (=> b!2177281 (= e!1392224 lt!812022)))

(declare-fun b!2177282 () Bool)

(assert (=> b!2177282 (= e!1392223 (Cons!25222 (h!30623 (drop!1249 (list!9676 totalInput!977) lt!811673)) (take!239 (t!197874 (drop!1249 (list!9676 totalInput!977) lt!811673)) (- lt!812022 1))))))

(declare-fun d!651909 () Bool)

(assert (=> d!651909 e!1392222))

(declare-fun res!936668 () Bool)

(assert (=> d!651909 (=> (not res!936668) (not e!1392222))))

(assert (=> d!651909 (= res!936668 (= ((_ map implies) (content!3436 lt!812402) (content!3436 (drop!1249 (list!9676 totalInput!977) lt!811673))) ((as const (InoxSet C!12208)) true)))))

(assert (=> d!651909 (= lt!812402 e!1392223)))

(declare-fun c!345565 () Bool)

(assert (=> d!651909 (= c!345565 (or ((_ is Nil!25222) (drop!1249 (list!9676 totalInput!977) lt!811673)) (<= lt!812022 0)))))

(assert (=> d!651909 (= (take!239 (drop!1249 (list!9676 totalInput!977) lt!811673) lt!812022) lt!812402)))

(declare-fun b!2177277 () Bool)

(assert (=> b!2177277 (= e!1392225 e!1392224)))

(declare-fun c!345566 () Bool)

(assert (=> b!2177277 (= c!345566 (>= lt!812022 (size!19706 (drop!1249 (list!9676 totalInput!977) lt!811673))))))

(assert (= (and d!651909 c!345565) b!2177280))

(assert (= (and d!651909 (not c!345565)) b!2177282))

(assert (= (and d!651909 res!936668) b!2177278))

(assert (= (and b!2177278 c!345567) b!2177276))

(assert (= (and b!2177278 (not c!345567)) b!2177277))

(assert (= (and b!2177277 c!345566) b!2177279))

(assert (= (and b!2177277 (not c!345566)) b!2177281))

(declare-fun m!2619263 () Bool)

(assert (=> d!651909 m!2619263))

(assert (=> d!651909 m!2617767))

(declare-fun m!2619265 () Bool)

(assert (=> d!651909 m!2619265))

(declare-fun m!2619267 () Bool)

(assert (=> b!2177278 m!2619267))

(assert (=> b!2177277 m!2617767))

(declare-fun m!2619269 () Bool)

(assert (=> b!2177277 m!2619269))

(assert (=> b!2177279 m!2617767))

(assert (=> b!2177279 m!2619269))

(declare-fun m!2619271 () Bool)

(assert (=> b!2177282 m!2619271))

(assert (=> b!2176096 d!651909))

(declare-fun b!2177292 () Bool)

(declare-fun e!1392237 () List!25306)

(assert (=> b!2177292 (= e!1392237 (list!9676 totalInput!977))))

(declare-fun d!651913 () Bool)

(declare-fun e!1392236 () Bool)

(assert (=> d!651913 e!1392236))

(declare-fun res!936674 () Bool)

(assert (=> d!651913 (=> (not res!936674) (not e!1392236))))

(declare-fun lt!812403 () List!25306)

(assert (=> d!651913 (= res!936674 (= ((_ map implies) (content!3436 lt!812403) (content!3436 (list!9676 totalInput!977))) ((as const (InoxSet C!12208)) true)))))

(declare-fun e!1392235 () List!25306)

(assert (=> d!651913 (= lt!812403 e!1392235)))

(declare-fun c!345572 () Bool)

(assert (=> d!651913 (= c!345572 ((_ is Nil!25222) (list!9676 totalInput!977)))))

(assert (=> d!651913 (= (drop!1249 (list!9676 totalInput!977) lt!811673) lt!812403)))

(declare-fun b!2177293 () Bool)

(declare-fun e!1392233 () Int)

(declare-fun call!130804 () Int)

(assert (=> b!2177293 (= e!1392233 call!130804)))

(declare-fun b!2177294 () Bool)

(assert (=> b!2177294 (= e!1392237 (drop!1249 (t!197874 (list!9676 totalInput!977)) (- lt!811673 1)))))

(declare-fun b!2177295 () Bool)

(assert (=> b!2177295 (= e!1392236 (= (size!19706 lt!812403) e!1392233))))

(declare-fun c!345573 () Bool)

(assert (=> b!2177295 (= c!345573 (<= lt!811673 0))))

(declare-fun bm!130799 () Bool)

(assert (=> bm!130799 (= call!130804 (size!19706 (list!9676 totalInput!977)))))

(declare-fun b!2177296 () Bool)

(assert (=> b!2177296 (= e!1392235 e!1392237)))

(declare-fun c!345570 () Bool)

(assert (=> b!2177296 (= c!345570 (<= lt!811673 0))))

(declare-fun b!2177297 () Bool)

(declare-fun e!1392234 () Int)

(assert (=> b!2177297 (= e!1392234 (- call!130804 lt!811673))))

(declare-fun b!2177298 () Bool)

(assert (=> b!2177298 (= e!1392235 Nil!25222)))

(declare-fun b!2177299 () Bool)

(assert (=> b!2177299 (= e!1392234 0)))

(declare-fun b!2177300 () Bool)

(assert (=> b!2177300 (= e!1392233 e!1392234)))

(declare-fun c!345571 () Bool)

(assert (=> b!2177300 (= c!345571 (>= lt!811673 call!130804))))

(assert (= (and d!651913 c!345572) b!2177298))

(assert (= (and d!651913 (not c!345572)) b!2177296))

(assert (= (and b!2177296 c!345570) b!2177292))

(assert (= (and b!2177296 (not c!345570)) b!2177294))

(assert (= (and d!651913 res!936674) b!2177295))

(assert (= (and b!2177295 c!345573) b!2177293))

(assert (= (and b!2177295 (not c!345573)) b!2177300))

(assert (= (and b!2177300 c!345571) b!2177299))

(assert (= (and b!2177300 (not c!345571)) b!2177297))

(assert (= (or b!2177293 b!2177300 b!2177297) bm!130799))

(declare-fun m!2619279 () Bool)

(assert (=> d!651913 m!2619279))

(assert (=> d!651913 m!2617037))

(declare-fun m!2619281 () Bool)

(assert (=> d!651913 m!2619281))

(declare-fun m!2619283 () Bool)

(assert (=> b!2177294 m!2619283))

(declare-fun m!2619285 () Bool)

(assert (=> b!2177295 m!2619285))

(assert (=> bm!130799 m!2617037))

(assert (=> bm!130799 m!2617781))

(assert (=> b!2176096 d!651913))

(assert (=> b!2176096 d!651237))

(assert (=> b!2176049 d!651225))

(declare-fun b!2177304 () Bool)

(declare-fun e!1392239 () List!25306)

(assert (=> b!2177304 (= e!1392239 (Cons!25222 (h!30623 Nil!25222) (++!6390 (t!197874 Nil!25222) (Cons!25222 lt!811994 Nil!25222))))))

(declare-fun b!2177306 () Bool)

(declare-fun e!1392240 () Bool)

(declare-fun lt!812404 () List!25306)

(assert (=> b!2177306 (= e!1392240 (or (not (= (Cons!25222 lt!811994 Nil!25222) Nil!25222)) (= lt!812404 Nil!25222)))))

(declare-fun d!651917 () Bool)

(assert (=> d!651917 e!1392240))

(declare-fun res!936677 () Bool)

(assert (=> d!651917 (=> (not res!936677) (not e!1392240))))

(assert (=> d!651917 (= res!936677 (= (content!3436 lt!812404) ((_ map or) (content!3436 Nil!25222) (content!3436 (Cons!25222 lt!811994 Nil!25222)))))))

(assert (=> d!651917 (= lt!812404 e!1392239)))

(declare-fun c!345574 () Bool)

(assert (=> d!651917 (= c!345574 ((_ is Nil!25222) Nil!25222))))

(assert (=> d!651917 (= (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222)) lt!812404)))

(declare-fun b!2177305 () Bool)

(declare-fun res!936678 () Bool)

(assert (=> b!2177305 (=> (not res!936678) (not e!1392240))))

(assert (=> b!2177305 (= res!936678 (= (size!19706 lt!812404) (+ (size!19706 Nil!25222) (size!19706 (Cons!25222 lt!811994 Nil!25222)))))))

(declare-fun b!2177303 () Bool)

(assert (=> b!2177303 (= e!1392239 (Cons!25222 lt!811994 Nil!25222))))

(assert (= (and d!651917 c!345574) b!2177303))

(assert (= (and d!651917 (not c!345574)) b!2177304))

(assert (= (and d!651917 res!936677) b!2177305))

(assert (= (and b!2177305 res!936678) b!2177306))

(declare-fun m!2619289 () Bool)

(assert (=> b!2177304 m!2619289))

(declare-fun m!2619291 () Bool)

(assert (=> d!651917 m!2619291))

(assert (=> d!651917 m!2619023))

(declare-fun m!2619293 () Bool)

(assert (=> d!651917 m!2619293))

(declare-fun m!2619295 () Bool)

(assert (=> b!2177305 m!2619295))

(assert (=> b!2177305 m!2617061))

(declare-fun m!2619297 () Bool)

(assert (=> b!2177305 m!2619297))

(assert (=> b!2176049 d!651917))

(declare-fun b!2177314 () Bool)

(declare-fun e!1392243 () List!25306)

(assert (=> b!2177314 (= e!1392243 (Cons!25222 (h!30623 Nil!25222) (++!6390 (t!197874 Nil!25222) (Cons!25222 (head!4658 lt!811670) Nil!25222))))))

(declare-fun b!2177316 () Bool)

(declare-fun e!1392244 () Bool)

(declare-fun lt!812405 () List!25306)

(assert (=> b!2177316 (= e!1392244 (or (not (= (Cons!25222 (head!4658 lt!811670) Nil!25222) Nil!25222)) (= lt!812405 Nil!25222)))))

(declare-fun d!651923 () Bool)

(assert (=> d!651923 e!1392244))

(declare-fun res!936685 () Bool)

(assert (=> d!651923 (=> (not res!936685) (not e!1392244))))

(assert (=> d!651923 (= res!936685 (= (content!3436 lt!812405) ((_ map or) (content!3436 Nil!25222) (content!3436 (Cons!25222 (head!4658 lt!811670) Nil!25222)))))))

(assert (=> d!651923 (= lt!812405 e!1392243)))

(declare-fun c!345575 () Bool)

(assert (=> d!651923 (= c!345575 ((_ is Nil!25222) Nil!25222))))

(assert (=> d!651923 (= (++!6390 Nil!25222 (Cons!25222 (head!4658 lt!811670) Nil!25222)) lt!812405)))

(declare-fun b!2177315 () Bool)

(declare-fun res!936686 () Bool)

(assert (=> b!2177315 (=> (not res!936686) (not e!1392244))))

(assert (=> b!2177315 (= res!936686 (= (size!19706 lt!812405) (+ (size!19706 Nil!25222) (size!19706 (Cons!25222 (head!4658 lt!811670) Nil!25222)))))))

(declare-fun b!2177313 () Bool)

(assert (=> b!2177313 (= e!1392243 (Cons!25222 (head!4658 lt!811670) Nil!25222))))

(assert (= (and d!651923 c!345575) b!2177313))

(assert (= (and d!651923 (not c!345575)) b!2177314))

(assert (= (and d!651923 res!936685) b!2177315))

(assert (= (and b!2177315 res!936686) b!2177316))

(declare-fun m!2619307 () Bool)

(assert (=> b!2177314 m!2619307))

(declare-fun m!2619309 () Bool)

(assert (=> d!651923 m!2619309))

(assert (=> d!651923 m!2619023))

(declare-fun m!2619311 () Bool)

(assert (=> d!651923 m!2619311))

(declare-fun m!2619313 () Bool)

(assert (=> b!2177315 m!2619313))

(assert (=> b!2177315 m!2617061))

(declare-fun m!2619315 () Bool)

(assert (=> b!2177315 m!2619315))

(assert (=> b!2176049 d!651923))

(assert (=> b!2176049 d!651439))

(assert (=> b!2176049 d!651207))

(assert (=> b!2176049 d!651803))

(assert (=> b!2176049 d!651833))

(declare-fun d!651927 () Bool)

(assert (=> d!651927 (= (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) (h!30623 (getSuffix!1042 lt!811670 Nil!25222)))))

(assert (=> b!2176049 d!651927))

(declare-fun b!2177324 () Bool)

(declare-fun e!1392249 () List!25306)

(assert (=> b!2177324 (= e!1392249 (Cons!25222 (h!30623 Nil!25222) (++!6390 (t!197874 Nil!25222) (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222))))))

(declare-fun b!2177326 () Bool)

(declare-fun e!1392250 () Bool)

(declare-fun lt!812406 () List!25306)

(assert (=> b!2177326 (= e!1392250 (or (not (= (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222) Nil!25222)) (= lt!812406 Nil!25222)))))

(declare-fun d!651929 () Bool)

(assert (=> d!651929 e!1392250))

(declare-fun res!936689 () Bool)

(assert (=> d!651929 (=> (not res!936689) (not e!1392250))))

(assert (=> d!651929 (= res!936689 (= (content!3436 lt!812406) ((_ map or) (content!3436 Nil!25222) (content!3436 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222)))))))

(assert (=> d!651929 (= lt!812406 e!1392249)))

(declare-fun c!345578 () Bool)

(assert (=> d!651929 (= c!345578 ((_ is Nil!25222) Nil!25222))))

(assert (=> d!651929 (= (++!6390 Nil!25222 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222)) lt!812406)))

(declare-fun b!2177325 () Bool)

(declare-fun res!936690 () Bool)

(assert (=> b!2177325 (=> (not res!936690) (not e!1392250))))

(assert (=> b!2177325 (= res!936690 (= (size!19706 lt!812406) (+ (size!19706 Nil!25222) (size!19706 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222)))))))

(declare-fun b!2177323 () Bool)

(assert (=> b!2177323 (= e!1392249 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222))))

(assert (= (and d!651929 c!345578) b!2177323))

(assert (= (and d!651929 (not c!345578)) b!2177324))

(assert (= (and d!651929 res!936689) b!2177325))

(assert (= (and b!2177325 res!936690) b!2177326))

(declare-fun m!2619325 () Bool)

(assert (=> b!2177324 m!2619325))

(declare-fun m!2619327 () Bool)

(assert (=> d!651929 m!2619327))

(assert (=> d!651929 m!2619023))

(declare-fun m!2619329 () Bool)

(assert (=> d!651929 m!2619329))

(declare-fun m!2619331 () Bool)

(assert (=> b!2177325 m!2619331))

(assert (=> b!2177325 m!2617061))

(declare-fun m!2619333 () Bool)

(assert (=> b!2177325 m!2619333))

(assert (=> b!2176049 d!651929))

(declare-fun b!2177330 () Bool)

(declare-fun e!1392252 () List!25306)

(assert (=> b!2177330 (= e!1392252 (Cons!25222 (h!30623 (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222))) (++!6390 (t!197874 (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222))) lt!811988)))))

(declare-fun b!2177332 () Bool)

(declare-fun lt!812408 () List!25306)

(declare-fun e!1392253 () Bool)

(assert (=> b!2177332 (= e!1392253 (or (not (= lt!811988 Nil!25222)) (= lt!812408 (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222)))))))

(declare-fun d!651937 () Bool)

(assert (=> d!651937 e!1392253))

(declare-fun res!936691 () Bool)

(assert (=> d!651937 (=> (not res!936691) (not e!1392253))))

(assert (=> d!651937 (= res!936691 (= (content!3436 lt!812408) ((_ map or) (content!3436 (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222))) (content!3436 lt!811988))))))

(assert (=> d!651937 (= lt!812408 e!1392252)))

(declare-fun c!345580 () Bool)

(assert (=> d!651937 (= c!345580 ((_ is Nil!25222) (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222))))))

(assert (=> d!651937 (= (++!6390 (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222)) lt!811988) lt!812408)))

(declare-fun b!2177331 () Bool)

(declare-fun res!936692 () Bool)

(assert (=> b!2177331 (=> (not res!936692) (not e!1392253))))

(assert (=> b!2177331 (= res!936692 (= (size!19706 lt!812408) (+ (size!19706 (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222))) (size!19706 lt!811988))))))

(declare-fun b!2177329 () Bool)

(assert (=> b!2177329 (= e!1392252 lt!811988)))

(assert (= (and d!651937 c!345580) b!2177329))

(assert (= (and d!651937 (not c!345580)) b!2177330))

(assert (= (and d!651937 res!936691) b!2177331))

(assert (= (and b!2177331 res!936692) b!2177332))

(declare-fun m!2619337 () Bool)

(assert (=> b!2177330 m!2619337))

(declare-fun m!2619339 () Bool)

(assert (=> d!651937 m!2619339))

(assert (=> d!651937 m!2617665))

(declare-fun m!2619341 () Bool)

(assert (=> d!651937 m!2619341))

(declare-fun m!2619343 () Bool)

(assert (=> d!651937 m!2619343))

(declare-fun m!2619345 () Bool)

(assert (=> b!2177331 m!2619345))

(assert (=> b!2177331 m!2617665))

(declare-fun m!2619347 () Bool)

(assert (=> b!2177331 m!2619347))

(declare-fun m!2619349 () Bool)

(assert (=> b!2177331 m!2619349))

(assert (=> b!2176049 d!651937))

(declare-fun b!2177334 () Bool)

(declare-fun res!936695 () Bool)

(declare-fun e!1392256 () Bool)

(assert (=> b!2177334 (=> (not res!936695) (not e!1392256))))

(assert (=> b!2177334 (= res!936695 (= (head!4658 (++!6390 Nil!25222 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222))) (head!4658 lt!811670)))))

(declare-fun b!2177333 () Bool)

(declare-fun e!1392255 () Bool)

(assert (=> b!2177333 (= e!1392255 e!1392256)))

(declare-fun res!936693 () Bool)

(assert (=> b!2177333 (=> (not res!936693) (not e!1392256))))

(assert (=> b!2177333 (= res!936693 (not ((_ is Nil!25222) lt!811670)))))

(declare-fun d!651941 () Bool)

(declare-fun e!1392254 () Bool)

(assert (=> d!651941 e!1392254))

(declare-fun res!936694 () Bool)

(assert (=> d!651941 (=> res!936694 e!1392254)))

(declare-fun lt!812409 () Bool)

(assert (=> d!651941 (= res!936694 (not lt!812409))))

(assert (=> d!651941 (= lt!812409 e!1392255)))

(declare-fun res!936696 () Bool)

(assert (=> d!651941 (=> res!936696 e!1392255)))

(assert (=> d!651941 (= res!936696 ((_ is Nil!25222) (++!6390 Nil!25222 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222))))))

(assert (=> d!651941 (= (isPrefix!2147 (++!6390 Nil!25222 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222)) lt!811670) lt!812409)))

(declare-fun b!2177336 () Bool)

(assert (=> b!2177336 (= e!1392254 (>= (size!19706 lt!811670) (size!19706 (++!6390 Nil!25222 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222)))))))

(declare-fun b!2177335 () Bool)

(assert (=> b!2177335 (= e!1392256 (isPrefix!2147 (tail!3130 (++!6390 Nil!25222 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222))) (tail!3130 lt!811670)))))

(assert (= (and d!651941 (not res!936696)) b!2177333))

(assert (= (and b!2177333 res!936693) b!2177334))

(assert (= (and b!2177334 res!936695) b!2177335))

(assert (= (and d!651941 (not res!936694)) b!2177336))

(assert (=> b!2177334 m!2617653))

(declare-fun m!2619351 () Bool)

(assert (=> b!2177334 m!2619351))

(assert (=> b!2177334 m!2617441))

(assert (=> b!2177336 m!2617047))

(assert (=> b!2177336 m!2617653))

(declare-fun m!2619353 () Bool)

(assert (=> b!2177336 m!2619353))

(assert (=> b!2177335 m!2617653))

(declare-fun m!2619355 () Bool)

(assert (=> b!2177335 m!2619355))

(assert (=> b!2177335 m!2617447))

(assert (=> b!2177335 m!2619355))

(assert (=> b!2177335 m!2617447))

(declare-fun m!2619357 () Bool)

(assert (=> b!2177335 m!2619357))

(assert (=> b!2176049 d!651941))

(declare-fun d!651943 () Bool)

(assert (=> d!651943 (<= (size!19706 Nil!25222) (size!19706 lt!811670))))

(declare-fun lt!812412 () Unit!38293)

(declare-fun choose!12864 (List!25306 List!25306) Unit!38293)

(assert (=> d!651943 (= lt!812412 (choose!12864 Nil!25222 lt!811670))))

(assert (=> d!651943 (isPrefix!2147 Nil!25222 lt!811670)))

(assert (=> d!651943 (= (lemmaIsPrefixThenSmallerEqSize!190 Nil!25222 lt!811670) lt!812412)))

(declare-fun bs!447253 () Bool)

(assert (= bs!447253 d!651943))

(assert (=> bs!447253 m!2617061))

(assert (=> bs!447253 m!2617047))

(declare-fun m!2619359 () Bool)

(assert (=> bs!447253 m!2619359))

(assert (=> bs!447253 m!2619017))

(assert (=> b!2176049 d!651943))

(declare-fun d!651945 () Bool)

(assert (=> d!651945 (isPrefix!2147 (++!6390 Nil!25222 (Cons!25222 (head!4658 (getSuffix!1042 lt!811670 Nil!25222)) Nil!25222)) lt!811670)))

(declare-fun lt!812415 () Unit!38293)

(declare-fun choose!12865 (List!25306 List!25306) Unit!38293)

(assert (=> d!651945 (= lt!812415 (choose!12865 Nil!25222 lt!811670))))

(assert (=> d!651945 (isPrefix!2147 Nil!25222 lt!811670)))

(assert (=> d!651945 (= (lemmaAddHeadSuffixToPrefixStillPrefix!387 Nil!25222 lt!811670) lt!812415)))

(declare-fun bs!447254 () Bool)

(assert (= bs!447254 d!651945))

(assert (=> bs!447254 m!2619017))

(assert (=> bs!447254 m!2617653))

(assert (=> bs!447254 m!2617655))

(assert (=> bs!447254 m!2617653))

(assert (=> bs!447254 m!2617663))

(assert (=> bs!447254 m!2617669))

(assert (=> bs!447254 m!2617663))

(declare-fun m!2619361 () Bool)

(assert (=> bs!447254 m!2619361))

(assert (=> b!2176049 d!651945))

(declare-fun d!651947 () Bool)

(assert (=> d!651947 (= (++!6390 (++!6390 Nil!25222 (Cons!25222 lt!811994 Nil!25222)) lt!811988) lt!811670)))

(declare-fun lt!812434 () Unit!38293)

(declare-fun choose!12866 (List!25306 C!12208 List!25306 List!25306) Unit!38293)

(assert (=> d!651947 (= lt!812434 (choose!12866 Nil!25222 lt!811994 lt!811988 lt!811670))))

(assert (=> d!651947 (= (++!6390 Nil!25222 (Cons!25222 lt!811994 lt!811988)) lt!811670)))

(assert (=> d!651947 (= (lemmaMoveElementToOtherListKeepsConcatEq!515 Nil!25222 lt!811994 lt!811988 lt!811670) lt!812434)))

(declare-fun bs!447255 () Bool)

(assert (= bs!447255 d!651947))

(assert (=> bs!447255 m!2617665))

(assert (=> bs!447255 m!2617665))

(assert (=> bs!447255 m!2617667))

(declare-fun m!2619363 () Bool)

(assert (=> bs!447255 m!2619363))

(declare-fun m!2619365 () Bool)

(assert (=> bs!447255 m!2619365))

(assert (=> b!2176049 d!651947))

(declare-fun b!2177342 () Bool)

(declare-fun res!936699 () Bool)

(declare-fun e!1392265 () Bool)

(assert (=> b!2177342 (=> (not res!936699) (not e!1392265))))

(assert (=> b!2177342 (= res!936699 (= (head!4658 (tail!3130 (take!239 lt!811667 lt!811673))) (head!4658 (tail!3130 lt!811667))))))

(declare-fun b!2177341 () Bool)

(declare-fun e!1392264 () Bool)

(assert (=> b!2177341 (= e!1392264 e!1392265)))

(declare-fun res!936697 () Bool)

(assert (=> b!2177341 (=> (not res!936697) (not e!1392265))))

(assert (=> b!2177341 (= res!936697 (not ((_ is Nil!25222) (tail!3130 lt!811667))))))

(declare-fun d!651949 () Bool)

(declare-fun e!1392263 () Bool)

(assert (=> d!651949 e!1392263))

(declare-fun res!936698 () Bool)

(assert (=> d!651949 (=> res!936698 e!1392263)))

(declare-fun lt!812435 () Bool)

(assert (=> d!651949 (= res!936698 (not lt!812435))))

(assert (=> d!651949 (= lt!812435 e!1392264)))

(declare-fun res!936700 () Bool)

(assert (=> d!651949 (=> res!936700 e!1392264)))

(assert (=> d!651949 (= res!936700 ((_ is Nil!25222) (tail!3130 (take!239 lt!811667 lt!811673))))))

(assert (=> d!651949 (= (isPrefix!2147 (tail!3130 (take!239 lt!811667 lt!811673)) (tail!3130 lt!811667)) lt!812435)))

(declare-fun b!2177344 () Bool)

(assert (=> b!2177344 (= e!1392263 (>= (size!19706 (tail!3130 lt!811667)) (size!19706 (tail!3130 (take!239 lt!811667 lt!811673)))))))

(declare-fun b!2177343 () Bool)

(assert (=> b!2177343 (= e!1392265 (isPrefix!2147 (tail!3130 (tail!3130 (take!239 lt!811667 lt!811673))) (tail!3130 (tail!3130 lt!811667))))))

(assert (= (and d!651949 (not res!936700)) b!2177341))

(assert (= (and b!2177341 res!936697) b!2177342))

(assert (= (and b!2177342 res!936699) b!2177343))

(assert (= (and d!651949 (not res!936698)) b!2177344))

(assert (=> b!2177342 m!2617731))

(declare-fun m!2619367 () Bool)

(assert (=> b!2177342 m!2619367))

(assert (=> b!2177342 m!2617733))

(declare-fun m!2619369 () Bool)

(assert (=> b!2177342 m!2619369))

(assert (=> b!2177344 m!2617733))

(declare-fun m!2619371 () Bool)

(assert (=> b!2177344 m!2619371))

(assert (=> b!2177344 m!2617731))

(declare-fun m!2619373 () Bool)

(assert (=> b!2177344 m!2619373))

(assert (=> b!2177343 m!2617731))

(declare-fun m!2619375 () Bool)

(assert (=> b!2177343 m!2619375))

(assert (=> b!2177343 m!2617733))

(declare-fun m!2619377 () Bool)

(assert (=> b!2177343 m!2619377))

(assert (=> b!2177343 m!2619375))

(assert (=> b!2177343 m!2619377))

(declare-fun m!2619379 () Bool)

(assert (=> b!2177343 m!2619379))

(assert (=> b!2176078 d!651949))

(declare-fun d!651951 () Bool)

(assert (=> d!651951 (= (tail!3130 (take!239 lt!811667 lt!811673)) (t!197874 (take!239 lt!811667 lt!811673)))))

(assert (=> b!2176078 d!651951))

(declare-fun d!651953 () Bool)

(assert (=> d!651953 (= (tail!3130 lt!811667) (t!197874 lt!811667))))

(assert (=> b!2176078 d!651953))

(declare-fun d!651955 () Bool)

(declare-fun c!345591 () Bool)

(assert (=> d!651955 (= c!345591 ((_ is Node!8167) (left!19365 (c!345005 input!5540))))))

(declare-fun e!1392266 () Bool)

(assert (=> d!651955 (= (inv!33505 (left!19365 (c!345005 input!5540))) e!1392266)))

(declare-fun b!2177345 () Bool)

(assert (=> b!2177345 (= e!1392266 (inv!33509 (left!19365 (c!345005 input!5540))))))

(declare-fun b!2177346 () Bool)

(declare-fun e!1392267 () Bool)

(assert (=> b!2177346 (= e!1392266 e!1392267)))

(declare-fun res!936701 () Bool)

(assert (=> b!2177346 (= res!936701 (not ((_ is Leaf!11950) (left!19365 (c!345005 input!5540)))))))

(assert (=> b!2177346 (=> res!936701 e!1392267)))

(declare-fun b!2177347 () Bool)

(assert (=> b!2177347 (= e!1392267 (inv!33510 (left!19365 (c!345005 input!5540))))))

(assert (= (and d!651955 c!345591) b!2177345))

(assert (= (and d!651955 (not c!345591)) b!2177346))

(assert (= (and b!2177346 (not res!936701)) b!2177347))

(declare-fun m!2619381 () Bool)

(assert (=> b!2177345 m!2619381))

(declare-fun m!2619383 () Bool)

(assert (=> b!2177347 m!2619383))

(assert (=> b!2176210 d!651955))

(declare-fun d!651957 () Bool)

(declare-fun c!345592 () Bool)

(assert (=> d!651957 (= c!345592 ((_ is Node!8167) (right!19695 (c!345005 input!5540))))))

(declare-fun e!1392268 () Bool)

(assert (=> d!651957 (= (inv!33505 (right!19695 (c!345005 input!5540))) e!1392268)))

(declare-fun b!2177348 () Bool)

(assert (=> b!2177348 (= e!1392268 (inv!33509 (right!19695 (c!345005 input!5540))))))

(declare-fun b!2177349 () Bool)

(declare-fun e!1392269 () Bool)

(assert (=> b!2177349 (= e!1392268 e!1392269)))

(declare-fun res!936702 () Bool)

(assert (=> b!2177349 (= res!936702 (not ((_ is Leaf!11950) (right!19695 (c!345005 input!5540)))))))

(assert (=> b!2177349 (=> res!936702 e!1392269)))

(declare-fun b!2177350 () Bool)

(assert (=> b!2177350 (= e!1392269 (inv!33510 (right!19695 (c!345005 input!5540))))))

(assert (= (and d!651957 c!345592) b!2177348))

(assert (= (and d!651957 (not c!345592)) b!2177349))

(assert (= (and b!2177349 (not res!936702)) b!2177350))

(declare-fun m!2619385 () Bool)

(assert (=> b!2177348 m!2619385))

(declare-fun m!2619387 () Bool)

(assert (=> b!2177350 m!2619387))

(assert (=> b!2176210 d!651957))

(declare-fun d!651959 () Bool)

(assert (=> d!651959 (= (isEmpty!14477 (_1!14869 lt!811990)) ((_ is Nil!25222) (_1!14869 lt!811990)))))

(assert (=> b!2176052 d!651959))

(declare-fun d!651961 () Bool)

(declare-fun e!1392288 () Bool)

(assert (=> d!651961 e!1392288))

(declare-fun res!936714 () Bool)

(assert (=> d!651961 (=> (not res!936714) (not e!1392288))))

(declare-fun lt!812456 () tuple2!25000)

(assert (=> d!651961 (= res!936714 (isBalanced!2538 (c!345005 (_1!14870 lt!812456))))))

(declare-datatypes ((tuple2!25004 0))(
  ( (tuple2!25005 (_1!14872 Conc!8167) (_2!14872 Conc!8167)) )
))
(declare-fun lt!812457 () tuple2!25004)

(assert (=> d!651961 (= lt!812456 (tuple2!25001 (BalanceConc!16097 (_1!14872 lt!812457)) (BalanceConc!16097 (_2!14872 lt!812457))))))

(declare-fun splitAt!47 (Conc!8167 Int) tuple2!25004)

(assert (=> d!651961 (= lt!812457 (splitAt!47 (c!345005 input!5540) (ite c!345196 0 lt!812067)))))

(assert (=> d!651961 (isBalanced!2538 (c!345005 input!5540))))

(assert (=> d!651961 (= (splitAt!45 input!5540 (ite c!345196 0 lt!812067)) lt!812456)))

(declare-fun b!2177385 () Bool)

(declare-fun res!936713 () Bool)

(assert (=> b!2177385 (=> (not res!936713) (not e!1392288))))

(assert (=> b!2177385 (= res!936713 (isBalanced!2538 (c!345005 (_2!14870 lt!812456))))))

(declare-fun b!2177386 () Bool)

(declare-fun splitAtIndex!28 (List!25306 Int) tuple2!24998)

(assert (=> b!2177386 (= e!1392288 (= (tuple2!24999 (list!9676 (_1!14870 lt!812456)) (list!9676 (_2!14870 lt!812456))) (splitAtIndex!28 (list!9676 input!5540) (ite c!345196 0 lt!812067))))))

(assert (= (and d!651961 res!936714) b!2177385))

(assert (= (and b!2177385 res!936713) b!2177386))

(declare-fun m!2619457 () Bool)

(assert (=> d!651961 m!2619457))

(declare-fun m!2619459 () Bool)

(assert (=> d!651961 m!2619459))

(assert (=> d!651961 m!2617839))

(declare-fun m!2619461 () Bool)

(assert (=> b!2177385 m!2619461))

(declare-fun m!2619463 () Bool)

(assert (=> b!2177386 m!2619463))

(declare-fun m!2619465 () Bool)

(assert (=> b!2177386 m!2619465))

(assert (=> b!2177386 m!2617039))

(assert (=> b!2177386 m!2617039))

(declare-fun m!2619467 () Bool)

(assert (=> b!2177386 m!2619467))

(assert (=> bm!130673 d!651961))

(assert (=> b!2175563 d!651471))

(assert (=> d!651079 d!651275))

(assert (=> d!651079 d!651255))

(declare-fun d!651981 () Bool)

(declare-fun lt!812461 () Int)

(assert (=> d!651981 (>= lt!812461 0)))

(declare-fun e!1392289 () Int)

(assert (=> d!651981 (= lt!812461 e!1392289)))

(declare-fun c!345605 () Bool)

(assert (=> d!651981 (= c!345605 ((_ is Nil!25222) (list!9676 totalInput!977)))))

(assert (=> d!651981 (= (size!19706 (list!9676 totalInput!977)) lt!812461)))

(declare-fun b!2177387 () Bool)

(assert (=> b!2177387 (= e!1392289 0)))

(declare-fun b!2177388 () Bool)

(assert (=> b!2177388 (= e!1392289 (+ 1 (size!19706 (t!197874 (list!9676 totalInput!977)))))))

(assert (= (and d!651981 c!345605) b!2177387))

(assert (= (and d!651981 (not c!345605)) b!2177388))

(declare-fun m!2619471 () Bool)

(assert (=> b!2177388 m!2619471))

(assert (=> d!651243 d!651981))

(assert (=> d!651243 d!651237))

(declare-fun d!651985 () Bool)

(declare-fun lt!812462 () Int)

(assert (=> d!651985 (= lt!812462 (size!19706 (list!9678 (c!345005 totalInput!977))))))

(assert (=> d!651985 (= lt!812462 (ite ((_ is Empty!8167) (c!345005 totalInput!977)) 0 (ite ((_ is Leaf!11950) (c!345005 totalInput!977)) (csize!16565 (c!345005 totalInput!977)) (csize!16564 (c!345005 totalInput!977)))))))

(assert (=> d!651985 (= (size!19709 (c!345005 totalInput!977)) lt!812462)))

(declare-fun bs!447267 () Bool)

(assert (= bs!447267 d!651985))

(assert (=> bs!447267 m!2617775))

(assert (=> bs!447267 m!2617775))

(declare-fun m!2619473 () Bool)

(assert (=> bs!447267 m!2619473))

(assert (=> d!651243 d!651985))

(declare-fun b!2177394 () Bool)

(declare-fun e!1392292 () List!25306)

(assert (=> b!2177394 (= e!1392292 (Cons!25222 (h!30623 (t!197874 (_1!14869 lt!811654))) (++!6390 (t!197874 (t!197874 (_1!14869 lt!811654))) (_2!14869 lt!811654))))))

(declare-fun b!2177396 () Bool)

(declare-fun e!1392293 () Bool)

(declare-fun lt!812464 () List!25306)

(assert (=> b!2177396 (= e!1392293 (or (not (= (_2!14869 lt!811654) Nil!25222)) (= lt!812464 (t!197874 (_1!14869 lt!811654)))))))

(declare-fun d!651987 () Bool)

(assert (=> d!651987 e!1392293))

(declare-fun res!936717 () Bool)

(assert (=> d!651987 (=> (not res!936717) (not e!1392293))))

(assert (=> d!651987 (= res!936717 (= (content!3436 lt!812464) ((_ map or) (content!3436 (t!197874 (_1!14869 lt!811654))) (content!3436 (_2!14869 lt!811654)))))))

(assert (=> d!651987 (= lt!812464 e!1392292)))

(declare-fun c!345607 () Bool)

(assert (=> d!651987 (= c!345607 ((_ is Nil!25222) (t!197874 (_1!14869 lt!811654))))))

(assert (=> d!651987 (= (++!6390 (t!197874 (_1!14869 lt!811654)) (_2!14869 lt!811654)) lt!812464)))

(declare-fun b!2177395 () Bool)

(declare-fun res!936718 () Bool)

(assert (=> b!2177395 (=> (not res!936718) (not e!1392293))))

(assert (=> b!2177395 (= res!936718 (= (size!19706 lt!812464) (+ (size!19706 (t!197874 (_1!14869 lt!811654))) (size!19706 (_2!14869 lt!811654)))))))

(declare-fun b!2177393 () Bool)

(assert (=> b!2177393 (= e!1392292 (_2!14869 lt!811654))))

(assert (= (and d!651987 c!345607) b!2177393))

(assert (= (and d!651987 (not c!345607)) b!2177394))

(assert (= (and d!651987 res!936717) b!2177395))

(assert (= (and b!2177395 res!936718) b!2177396))

(declare-fun m!2619485 () Bool)

(assert (=> b!2177394 m!2619485))

(declare-fun m!2619487 () Bool)

(assert (=> d!651987 m!2619487))

(assert (=> d!651987 m!2617947))

(assert (=> d!651987 m!2617215))

(declare-fun m!2619489 () Bool)

(assert (=> b!2177395 m!2619489))

(assert (=> b!2177395 m!2617855))

(assert (=> b!2177395 m!2617219))

(assert (=> b!2175595 d!651987))

(assert (=> b!2175567 d!651471))

(declare-fun d!651991 () Bool)

(declare-fun lt!812465 () Int)

(assert (=> d!651991 (>= lt!812465 0)))

(declare-fun e!1392294 () Int)

(assert (=> d!651991 (= lt!812465 e!1392294)))

(declare-fun c!345608 () Bool)

(assert (=> d!651991 (= c!345608 ((_ is Nil!25222) lt!811710))))

(assert (=> d!651991 (= (size!19706 lt!811710) lt!812465)))

(declare-fun b!2177397 () Bool)

(assert (=> b!2177397 (= e!1392294 0)))

(declare-fun b!2177398 () Bool)

(assert (=> b!2177398 (= e!1392294 (+ 1 (size!19706 (t!197874 lt!811710))))))

(assert (= (and d!651991 c!345608) b!2177397))

(assert (= (and d!651991 (not c!345608)) b!2177398))

(declare-fun m!2619491 () Bool)

(assert (=> b!2177398 m!2619491))

(assert (=> b!2175646 d!651991))

(assert (=> b!2175834 d!651207))

(declare-fun d!651993 () Bool)

(declare-fun lt!812466 () Int)

(assert (=> d!651993 (>= lt!812466 0)))

(declare-fun e!1392295 () Int)

(assert (=> d!651993 (= lt!812466 e!1392295)))

(declare-fun c!345609 () Bool)

(assert (=> d!651993 (= c!345609 ((_ is Nil!25222) lt!811659))))

(assert (=> d!651993 (= (size!19706 lt!811659) lt!812466)))

(declare-fun b!2177399 () Bool)

(assert (=> b!2177399 (= e!1392295 0)))

(declare-fun b!2177400 () Bool)

(assert (=> b!2177400 (= e!1392295 (+ 1 (size!19706 (t!197874 lt!811659))))))

(assert (= (and d!651993 c!345609) b!2177399))

(assert (= (and d!651993 (not c!345609)) b!2177400))

(declare-fun m!2619493 () Bool)

(assert (=> b!2177400 m!2619493))

(assert (=> b!2175834 d!651993))

(declare-fun b!2177401 () Bool)

(declare-fun e!1392300 () List!25306)

(assert (=> b!2177401 (= e!1392300 lt!811667)))

(declare-fun d!651995 () Bool)

(declare-fun e!1392299 () Bool)

(assert (=> d!651995 e!1392299))

(declare-fun res!936719 () Bool)

(assert (=> d!651995 (=> (not res!936719) (not e!1392299))))

(declare-fun lt!812467 () List!25306)

(assert (=> d!651995 (= res!936719 (= ((_ map implies) (content!3436 lt!812467) (content!3436 lt!811667)) ((as const (InoxSet C!12208)) true)))))

(declare-fun e!1392298 () List!25306)

(assert (=> d!651995 (= lt!812467 e!1392298)))

(declare-fun c!345612 () Bool)

(assert (=> d!651995 (= c!345612 ((_ is Nil!25222) lt!811667))))

(assert (=> d!651995 (= (drop!1249 lt!811667 (- (size!19706 lt!811667) (size!19706 lt!811670))) lt!812467)))

(declare-fun b!2177402 () Bool)

(declare-fun e!1392296 () Int)

(declare-fun call!130812 () Int)

(assert (=> b!2177402 (= e!1392296 call!130812)))

(declare-fun b!2177403 () Bool)

(assert (=> b!2177403 (= e!1392300 (drop!1249 (t!197874 lt!811667) (- (- (size!19706 lt!811667) (size!19706 lt!811670)) 1)))))

(declare-fun b!2177404 () Bool)

(assert (=> b!2177404 (= e!1392299 (= (size!19706 lt!812467) e!1392296))))

(declare-fun c!345613 () Bool)

(assert (=> b!2177404 (= c!345613 (<= (- (size!19706 lt!811667) (size!19706 lt!811670)) 0))))

(declare-fun bm!130807 () Bool)

(assert (=> bm!130807 (= call!130812 (size!19706 lt!811667))))

(declare-fun b!2177405 () Bool)

(assert (=> b!2177405 (= e!1392298 e!1392300)))

(declare-fun c!345610 () Bool)

(assert (=> b!2177405 (= c!345610 (<= (- (size!19706 lt!811667) (size!19706 lt!811670)) 0))))

(declare-fun b!2177406 () Bool)

(declare-fun e!1392297 () Int)

(assert (=> b!2177406 (= e!1392297 (- call!130812 (- (size!19706 lt!811667) (size!19706 lt!811670))))))

(declare-fun b!2177407 () Bool)

(assert (=> b!2177407 (= e!1392298 Nil!25222)))

(declare-fun b!2177408 () Bool)

(assert (=> b!2177408 (= e!1392297 0)))

(declare-fun b!2177409 () Bool)

(assert (=> b!2177409 (= e!1392296 e!1392297)))

(declare-fun c!345611 () Bool)

(assert (=> b!2177409 (= c!345611 (>= (- (size!19706 lt!811667) (size!19706 lt!811670)) call!130812))))

(assert (= (and d!651995 c!345612) b!2177407))

(assert (= (and d!651995 (not c!345612)) b!2177405))

(assert (= (and b!2177405 c!345610) b!2177401))

(assert (= (and b!2177405 (not c!345610)) b!2177403))

(assert (= (and d!651995 res!936719) b!2177404))

(assert (= (and b!2177404 c!345613) b!2177402))

(assert (= (and b!2177404 (not c!345613)) b!2177409))

(assert (= (and b!2177409 c!345611) b!2177408))

(assert (= (and b!2177409 (not c!345611)) b!2177406))

(assert (= (or b!2177402 b!2177409 b!2177406) bm!130807))

(declare-fun m!2619495 () Bool)

(assert (=> d!651995 m!2619495))

(assert (=> d!651995 m!2617243))

(declare-fun m!2619497 () Bool)

(assert (=> b!2177403 m!2619497))

(declare-fun m!2619499 () Bool)

(assert (=> b!2177404 m!2619499))

(assert (=> bm!130807 m!2617249))

(assert (=> d!651235 d!651995))

(assert (=> d!651235 d!651347))

(assert (=> d!651235 d!651207))

(declare-fun d!651997 () Bool)

(assert (=> d!651997 (= (isEmpty!14477 (list!9676 (_1!14870 lt!811661))) ((_ is Nil!25222) (list!9676 (_1!14870 lt!811661))))))

(assert (=> d!651063 d!651997))

(assert (=> d!651063 d!651241))

(declare-fun d!651999 () Bool)

(declare-fun lt!812473 () Bool)

(assert (=> d!651999 (= lt!812473 (isEmpty!14477 (list!9678 (c!345005 (_1!14870 lt!811661)))))))

(assert (=> d!651999 (= lt!812473 (= (size!19709 (c!345005 (_1!14870 lt!811661))) 0))))

(assert (=> d!651999 (= (isEmpty!14479 (c!345005 (_1!14870 lt!811661))) lt!812473)))

(declare-fun bs!447269 () Bool)

(assert (= bs!447269 d!651999))

(assert (=> bs!447269 m!2617779))

(assert (=> bs!447269 m!2617779))

(declare-fun m!2619505 () Bool)

(assert (=> bs!447269 m!2619505))

(assert (=> bs!447269 m!2617859))

(assert (=> d!651063 d!651999))

(declare-fun d!652003 () Bool)

(assert (=> d!652003 (= (isEmpty!14477 (_1!14869 lt!811974)) ((_ is Nil!25222) (_1!14869 lt!811974)))))

(assert (=> b!2176057 d!652003))

(assert (=> b!2175570 d!651645))

(assert (=> b!2175570 d!651473))

(declare-fun d!652005 () Bool)

(assert (=> d!652005 (= (inv!33512 (xs!11109 (c!345005 totalInput!977))) (<= (size!19706 (innerList!8227 (xs!11109 (c!345005 totalInput!977)))) 2147483647))))

(declare-fun bs!447270 () Bool)

(assert (= bs!447270 d!652005))

(declare-fun m!2619507 () Bool)

(assert (=> bs!447270 m!2619507))

(assert (=> b!2176192 d!652005))

(declare-fun d!652007 () Bool)

(declare-fun res!936724 () Bool)

(declare-fun e!1392304 () Bool)

(assert (=> d!652007 (=> (not res!936724) (not e!1392304))))

(assert (=> d!652007 (= res!936724 (<= (size!19706 (list!9680 (xs!11109 (c!345005 totalInput!977)))) 512))))

(assert (=> d!652007 (= (inv!33510 (c!345005 totalInput!977)) e!1392304)))

(declare-fun b!2177414 () Bool)

(declare-fun res!936725 () Bool)

(assert (=> b!2177414 (=> (not res!936725) (not e!1392304))))

(assert (=> b!2177414 (= res!936725 (= (csize!16565 (c!345005 totalInput!977)) (size!19706 (list!9680 (xs!11109 (c!345005 totalInput!977))))))))

(declare-fun b!2177415 () Bool)

(assert (=> b!2177415 (= e!1392304 (and (> (csize!16565 (c!345005 totalInput!977)) 0) (<= (csize!16565 (c!345005 totalInput!977)) 512)))))

(assert (= (and d!652007 res!936724) b!2177414))

(assert (= (and b!2177414 res!936725) b!2177415))

(assert (=> d!652007 m!2619051))

(assert (=> d!652007 m!2619051))

(declare-fun m!2619515 () Bool)

(assert (=> d!652007 m!2619515))

(assert (=> b!2177414 m!2619051))

(assert (=> b!2177414 m!2619051))

(assert (=> b!2177414 m!2619515))

(assert (=> b!2175585 d!652007))

(assert (=> b!2175836 d!651207))

(declare-fun b!2177416 () Bool)

(declare-fun e!1392306 () Bool)

(assert (=> b!2177416 (= e!1392306 (not (isEmpty!14479 (right!19695 (c!345005 input!5540)))))))

(declare-fun b!2177417 () Bool)

(declare-fun res!936728 () Bool)

(assert (=> b!2177417 (=> (not res!936728) (not e!1392306))))

(assert (=> b!2177417 (= res!936728 (not (isEmpty!14479 (left!19365 (c!345005 input!5540)))))))

(declare-fun b!2177418 () Bool)

(declare-fun e!1392305 () Bool)

(assert (=> b!2177418 (= e!1392305 e!1392306)))

(declare-fun res!936731 () Bool)

(assert (=> b!2177418 (=> (not res!936731) (not e!1392306))))

(assert (=> b!2177418 (= res!936731 (<= (- 1) (- (height!1243 (left!19365 (c!345005 input!5540))) (height!1243 (right!19695 (c!345005 input!5540))))))))

(declare-fun d!652011 () Bool)

(declare-fun res!936726 () Bool)

(assert (=> d!652011 (=> res!936726 e!1392305)))

(assert (=> d!652011 (= res!936726 (not ((_ is Node!8167) (c!345005 input!5540))))))

(assert (=> d!652011 (= (isBalanced!2538 (c!345005 input!5540)) e!1392305)))

(declare-fun b!2177419 () Bool)

(declare-fun res!936727 () Bool)

(assert (=> b!2177419 (=> (not res!936727) (not e!1392306))))

(assert (=> b!2177419 (= res!936727 (<= (- (height!1243 (left!19365 (c!345005 input!5540))) (height!1243 (right!19695 (c!345005 input!5540)))) 1))))

(declare-fun b!2177420 () Bool)

(declare-fun res!936730 () Bool)

(assert (=> b!2177420 (=> (not res!936730) (not e!1392306))))

(assert (=> b!2177420 (= res!936730 (isBalanced!2538 (right!19695 (c!345005 input!5540))))))

(declare-fun b!2177421 () Bool)

(declare-fun res!936729 () Bool)

(assert (=> b!2177421 (=> (not res!936729) (not e!1392306))))

(assert (=> b!2177421 (= res!936729 (isBalanced!2538 (left!19365 (c!345005 input!5540))))))

(assert (= (and d!652011 (not res!936726)) b!2177418))

(assert (= (and b!2177418 res!936731) b!2177419))

(assert (= (and b!2177419 res!936727) b!2177421))

(assert (= (and b!2177421 res!936729) b!2177420))

(assert (= (and b!2177420 res!936730) b!2177417))

(assert (= (and b!2177417 res!936728) b!2177416))

(assert (=> b!2177418 m!2619237))

(assert (=> b!2177418 m!2619239))

(declare-fun m!2619529 () Bool)

(assert (=> b!2177420 m!2619529))

(assert (=> b!2177419 m!2619237))

(assert (=> b!2177419 m!2619239))

(declare-fun m!2619531 () Bool)

(assert (=> b!2177417 m!2619531))

(declare-fun m!2619533 () Bool)

(assert (=> b!2177421 m!2619533))

(declare-fun m!2619535 () Bool)

(assert (=> b!2177416 m!2619535))

(assert (=> d!651259 d!652011))

(declare-fun d!652015 () Bool)

(declare-fun lt!812476 () Int)

(assert (=> d!652015 (>= lt!812476 0)))

(declare-fun e!1392310 () Int)

(assert (=> d!652015 (= lt!812476 e!1392310)))

(declare-fun c!345616 () Bool)

(assert (=> d!652015 (= c!345616 ((_ is Nil!25222) lt!811707))))

(assert (=> d!652015 (= (size!19706 lt!811707) lt!812476)))

(declare-fun b!2177428 () Bool)

(assert (=> b!2177428 (= e!1392310 0)))

(declare-fun b!2177429 () Bool)

(assert (=> b!2177429 (= e!1392310 (+ 1 (size!19706 (t!197874 lt!811707))))))

(assert (= (and d!652015 c!345616) b!2177428))

(assert (= (and d!652015 (not c!345616)) b!2177429))

(declare-fun m!2619537 () Bool)

(assert (=> b!2177429 m!2619537))

(assert (=> b!2175620 d!652015))

(declare-fun d!652017 () Bool)

(declare-fun lt!812479 () Bool)

(assert (=> d!652017 (= lt!812479 (exists!769 (toList!1214 z!4055) lambda!81859))))

(declare-fun choose!12870 ((InoxSet Context!3202) Int) Bool)

(assert (=> d!652017 (= lt!812479 (choose!12870 z!4055 lambda!81859))))

(assert (=> d!652017 (= (exists!768 z!4055 lambda!81859) lt!812479)))

(declare-fun bs!447276 () Bool)

(assert (= bs!447276 d!652017))

(assert (=> bs!447276 m!2617089))

(assert (=> bs!447276 m!2617089))

(declare-fun m!2619553 () Bool)

(assert (=> bs!447276 m!2619553))

(declare-fun m!2619555 () Bool)

(assert (=> bs!447276 m!2619555))

(assert (=> d!651219 d!652017))

(declare-fun d!652027 () Bool)

(declare-fun lt!812480 () Int)

(assert (=> d!652027 (>= lt!812480 0)))

(declare-fun e!1392311 () Int)

(assert (=> d!652027 (= lt!812480 e!1392311)))

(declare-fun c!345617 () Bool)

(assert (=> d!652027 (= c!345617 ((_ is Nil!25222) lt!811678))))

(assert (=> d!652027 (= (size!19706 lt!811678) lt!812480)))

(declare-fun b!2177430 () Bool)

(assert (=> b!2177430 (= e!1392311 0)))

(declare-fun b!2177431 () Bool)

(assert (=> b!2177431 (= e!1392311 (+ 1 (size!19706 (t!197874 lt!811678))))))

(assert (= (and d!652027 c!345617) b!2177430))

(assert (= (and d!652027 (not c!345617)) b!2177431))

(declare-fun m!2619557 () Bool)

(assert (=> b!2177431 m!2619557))

(assert (=> b!2176075 d!652027))

(assert (=> b!2176075 d!651693))

(declare-fun b!2177445 () Bool)

(declare-fun e!1392316 () Bool)

(assert (=> b!2177445 (= e!1392316 tp_is_empty!9669)))

(declare-fun b!2177446 () Bool)

(declare-fun tp!678949 () Bool)

(declare-fun tp!678951 () Bool)

(assert (=> b!2177446 (= e!1392316 (and tp!678949 tp!678951))))

(assert (=> b!2176196 (= tp!678890 e!1392316)))

(declare-fun b!2177448 () Bool)

(declare-fun tp!678950 () Bool)

(declare-fun tp!678952 () Bool)

(assert (=> b!2177448 (= e!1392316 (and tp!678950 tp!678952))))

(declare-fun b!2177447 () Bool)

(declare-fun tp!678948 () Bool)

(assert (=> b!2177447 (= e!1392316 tp!678948)))

(assert (= (and b!2176196 ((_ is ElementMatch!6031) (reg!6360 (regOne!12574 r!12534)))) b!2177445))

(assert (= (and b!2176196 ((_ is Concat!10333) (reg!6360 (regOne!12574 r!12534)))) b!2177446))

(assert (= (and b!2176196 ((_ is Star!6031) (reg!6360 (regOne!12574 r!12534)))) b!2177447))

(assert (= (and b!2176196 ((_ is Union!6031) (reg!6360 (regOne!12574 r!12534)))) b!2177448))

(declare-fun b!2177457 () Bool)

(declare-fun e!1392319 () Bool)

(assert (=> b!2177457 (= e!1392319 tp_is_empty!9669)))

(declare-fun b!2177458 () Bool)

(declare-fun tp!678964 () Bool)

(declare-fun tp!678966 () Bool)

(assert (=> b!2177458 (= e!1392319 (and tp!678964 tp!678966))))

(assert (=> b!2176205 (= tp!678902 e!1392319)))

(declare-fun b!2177460 () Bool)

(declare-fun tp!678965 () Bool)

(declare-fun tp!678967 () Bool)

(assert (=> b!2177460 (= e!1392319 (and tp!678965 tp!678967))))

(declare-fun b!2177459 () Bool)

(declare-fun tp!678963 () Bool)

(assert (=> b!2177459 (= e!1392319 tp!678963)))

(assert (= (and b!2176205 ((_ is ElementMatch!6031) (regOne!12575 (regOne!12575 r!12534)))) b!2177457))

(assert (= (and b!2176205 ((_ is Concat!10333) (regOne!12575 (regOne!12575 r!12534)))) b!2177458))

(assert (= (and b!2176205 ((_ is Star!6031) (regOne!12575 (regOne!12575 r!12534)))) b!2177459))

(assert (= (and b!2176205 ((_ is Union!6031) (regOne!12575 (regOne!12575 r!12534)))) b!2177460))

(declare-fun b!2177465 () Bool)

(declare-fun e!1392321 () Bool)

(assert (=> b!2177465 (= e!1392321 tp_is_empty!9669)))

(declare-fun b!2177466 () Bool)

(declare-fun tp!678974 () Bool)

(declare-fun tp!678976 () Bool)

(assert (=> b!2177466 (= e!1392321 (and tp!678974 tp!678976))))

(assert (=> b!2176205 (= tp!678904 e!1392321)))

(declare-fun b!2177468 () Bool)

(declare-fun tp!678975 () Bool)

(declare-fun tp!678977 () Bool)

(assert (=> b!2177468 (= e!1392321 (and tp!678975 tp!678977))))

(declare-fun b!2177467 () Bool)

(declare-fun tp!678973 () Bool)

(assert (=> b!2177467 (= e!1392321 tp!678973)))

(assert (= (and b!2176205 ((_ is ElementMatch!6031) (regTwo!12575 (regOne!12575 r!12534)))) b!2177465))

(assert (= (and b!2176205 ((_ is Concat!10333) (regTwo!12575 (regOne!12575 r!12534)))) b!2177466))

(assert (= (and b!2176205 ((_ is Star!6031) (regTwo!12575 (regOne!12575 r!12534)))) b!2177467))

(assert (= (and b!2176205 ((_ is Union!6031) (regTwo!12575 (regOne!12575 r!12534)))) b!2177468))

(declare-fun b!2177473 () Bool)

(declare-fun e!1392323 () Bool)

(assert (=> b!2177473 (= e!1392323 tp_is_empty!9669)))

(declare-fun b!2177474 () Bool)

(declare-fun tp!678984 () Bool)

(declare-fun tp!678986 () Bool)

(assert (=> b!2177474 (= e!1392323 (and tp!678984 tp!678986))))

(assert (=> b!2176195 (= tp!678891 e!1392323)))

(declare-fun b!2177476 () Bool)

(declare-fun tp!678985 () Bool)

(declare-fun tp!678987 () Bool)

(assert (=> b!2177476 (= e!1392323 (and tp!678985 tp!678987))))

(declare-fun b!2177475 () Bool)

(declare-fun tp!678983 () Bool)

(assert (=> b!2177475 (= e!1392323 tp!678983)))

(assert (= (and b!2176195 ((_ is ElementMatch!6031) (regOne!12574 (regOne!12574 r!12534)))) b!2177473))

(assert (= (and b!2176195 ((_ is Concat!10333) (regOne!12574 (regOne!12574 r!12534)))) b!2177474))

(assert (= (and b!2176195 ((_ is Star!6031) (regOne!12574 (regOne!12574 r!12534)))) b!2177475))

(assert (= (and b!2176195 ((_ is Union!6031) (regOne!12574 (regOne!12574 r!12534)))) b!2177476))

(declare-fun b!2177481 () Bool)

(declare-fun e!1392325 () Bool)

(assert (=> b!2177481 (= e!1392325 tp_is_empty!9669)))

(declare-fun b!2177482 () Bool)

(declare-fun tp!678994 () Bool)

(declare-fun tp!678996 () Bool)

(assert (=> b!2177482 (= e!1392325 (and tp!678994 tp!678996))))

(assert (=> b!2176195 (= tp!678893 e!1392325)))

(declare-fun b!2177484 () Bool)

(declare-fun tp!678995 () Bool)

(declare-fun tp!678997 () Bool)

(assert (=> b!2177484 (= e!1392325 (and tp!678995 tp!678997))))

(declare-fun b!2177483 () Bool)

(declare-fun tp!678993 () Bool)

(assert (=> b!2177483 (= e!1392325 tp!678993)))

(assert (= (and b!2176195 ((_ is ElementMatch!6031) (regTwo!12574 (regOne!12574 r!12534)))) b!2177481))

(assert (= (and b!2176195 ((_ is Concat!10333) (regTwo!12574 (regOne!12574 r!12534)))) b!2177482))

(assert (= (and b!2176195 ((_ is Star!6031) (regTwo!12574 (regOne!12574 r!12534)))) b!2177483))

(assert (= (and b!2176195 ((_ is Union!6031) (regTwo!12574 (regOne!12574 r!12534)))) b!2177484))

(declare-fun b!2177489 () Bool)

(declare-fun e!1392327 () Bool)

(assert (=> b!2177489 (= e!1392327 tp_is_empty!9669)))

(declare-fun b!2177490 () Bool)

(declare-fun tp!679004 () Bool)

(declare-fun tp!679006 () Bool)

(assert (=> b!2177490 (= e!1392327 (and tp!679004 tp!679006))))

(assert (=> b!2176177 (= tp!678872 e!1392327)))

(declare-fun b!2177492 () Bool)

(declare-fun tp!679005 () Bool)

(declare-fun tp!679007 () Bool)

(assert (=> b!2177492 (= e!1392327 (and tp!679005 tp!679007))))

(declare-fun b!2177491 () Bool)

(declare-fun tp!679003 () Bool)

(assert (=> b!2177491 (= e!1392327 tp!679003)))

(assert (= (and b!2176177 ((_ is ElementMatch!6031) (regOne!12575 (reg!6360 r!12534)))) b!2177489))

(assert (= (and b!2176177 ((_ is Concat!10333) (regOne!12575 (reg!6360 r!12534)))) b!2177490))

(assert (= (and b!2176177 ((_ is Star!6031) (regOne!12575 (reg!6360 r!12534)))) b!2177491))

(assert (= (and b!2176177 ((_ is Union!6031) (regOne!12575 (reg!6360 r!12534)))) b!2177492))

(declare-fun b!2177497 () Bool)

(declare-fun e!1392329 () Bool)

(assert (=> b!2177497 (= e!1392329 tp_is_empty!9669)))

(declare-fun b!2177498 () Bool)

(declare-fun tp!679014 () Bool)

(declare-fun tp!679016 () Bool)

(assert (=> b!2177498 (= e!1392329 (and tp!679014 tp!679016))))

(assert (=> b!2176177 (= tp!678874 e!1392329)))

(declare-fun b!2177500 () Bool)

(declare-fun tp!679015 () Bool)

(declare-fun tp!679017 () Bool)

(assert (=> b!2177500 (= e!1392329 (and tp!679015 tp!679017))))

(declare-fun b!2177499 () Bool)

(declare-fun tp!679013 () Bool)

(assert (=> b!2177499 (= e!1392329 tp!679013)))

(assert (= (and b!2176177 ((_ is ElementMatch!6031) (regTwo!12575 (reg!6360 r!12534)))) b!2177497))

(assert (= (and b!2176177 ((_ is Concat!10333) (regTwo!12575 (reg!6360 r!12534)))) b!2177498))

(assert (= (and b!2176177 ((_ is Star!6031) (regTwo!12575 (reg!6360 r!12534)))) b!2177499))

(assert (= (and b!2176177 ((_ is Union!6031) (regTwo!12575 (reg!6360 r!12534)))) b!2177500))

(declare-fun b!2177505 () Bool)

(declare-fun e!1392331 () Bool)

(assert (=> b!2177505 (= e!1392331 tp_is_empty!9669)))

(declare-fun b!2177506 () Bool)

(declare-fun tp!679024 () Bool)

(declare-fun tp!679026 () Bool)

(assert (=> b!2177506 (= e!1392331 (and tp!679024 tp!679026))))

(assert (=> b!2176204 (= tp!678900 e!1392331)))

(declare-fun b!2177508 () Bool)

(declare-fun tp!679025 () Bool)

(declare-fun tp!679027 () Bool)

(assert (=> b!2177508 (= e!1392331 (and tp!679025 tp!679027))))

(declare-fun b!2177507 () Bool)

(declare-fun tp!679023 () Bool)

(assert (=> b!2177507 (= e!1392331 tp!679023)))

(assert (= (and b!2176204 ((_ is ElementMatch!6031) (reg!6360 (regOne!12575 r!12534)))) b!2177505))

(assert (= (and b!2176204 ((_ is Concat!10333) (reg!6360 (regOne!12575 r!12534)))) b!2177506))

(assert (= (and b!2176204 ((_ is Star!6031) (reg!6360 (regOne!12575 r!12534)))) b!2177507))

(assert (= (and b!2176204 ((_ is Union!6031) (reg!6360 (regOne!12575 r!12534)))) b!2177508))

(declare-fun b!2177513 () Bool)

(declare-fun e!1392333 () Bool)

(assert (=> b!2177513 (= e!1392333 tp_is_empty!9669)))

(declare-fun b!2177514 () Bool)

(declare-fun tp!679034 () Bool)

(declare-fun tp!679036 () Bool)

(assert (=> b!2177514 (= e!1392333 (and tp!679034 tp!679036))))

(assert (=> b!2176176 (= tp!678870 e!1392333)))

(declare-fun b!2177516 () Bool)

(declare-fun tp!679035 () Bool)

(declare-fun tp!679037 () Bool)

(assert (=> b!2177516 (= e!1392333 (and tp!679035 tp!679037))))

(declare-fun b!2177515 () Bool)

(declare-fun tp!679033 () Bool)

(assert (=> b!2177515 (= e!1392333 tp!679033)))

(assert (= (and b!2176176 ((_ is ElementMatch!6031) (reg!6360 (reg!6360 r!12534)))) b!2177513))

(assert (= (and b!2176176 ((_ is Concat!10333) (reg!6360 (reg!6360 r!12534)))) b!2177514))

(assert (= (and b!2176176 ((_ is Star!6031) (reg!6360 (reg!6360 r!12534)))) b!2177515))

(assert (= (and b!2176176 ((_ is Union!6031) (reg!6360 (reg!6360 r!12534)))) b!2177516))

(declare-fun b!2177521 () Bool)

(declare-fun e!1392335 () Bool)

(assert (=> b!2177521 (= e!1392335 tp_is_empty!9669)))

(declare-fun b!2177522 () Bool)

(declare-fun tp!679044 () Bool)

(declare-fun tp!679046 () Bool)

(assert (=> b!2177522 (= e!1392335 (and tp!679044 tp!679046))))

(assert (=> b!2176203 (= tp!678901 e!1392335)))

(declare-fun b!2177524 () Bool)

(declare-fun tp!679045 () Bool)

(declare-fun tp!679047 () Bool)

(assert (=> b!2177524 (= e!1392335 (and tp!679045 tp!679047))))

(declare-fun b!2177523 () Bool)

(declare-fun tp!679043 () Bool)

(assert (=> b!2177523 (= e!1392335 tp!679043)))

(assert (= (and b!2176203 ((_ is ElementMatch!6031) (regOne!12574 (regOne!12575 r!12534)))) b!2177521))

(assert (= (and b!2176203 ((_ is Concat!10333) (regOne!12574 (regOne!12575 r!12534)))) b!2177522))

(assert (= (and b!2176203 ((_ is Star!6031) (regOne!12574 (regOne!12575 r!12534)))) b!2177523))

(assert (= (and b!2176203 ((_ is Union!6031) (regOne!12574 (regOne!12575 r!12534)))) b!2177524))

(declare-fun b!2177529 () Bool)

(declare-fun e!1392337 () Bool)

(assert (=> b!2177529 (= e!1392337 tp_is_empty!9669)))

(declare-fun b!2177530 () Bool)

(declare-fun tp!679054 () Bool)

(declare-fun tp!679056 () Bool)

(assert (=> b!2177530 (= e!1392337 (and tp!679054 tp!679056))))

(assert (=> b!2176203 (= tp!678903 e!1392337)))

(declare-fun b!2177532 () Bool)

(declare-fun tp!679055 () Bool)

(declare-fun tp!679057 () Bool)

(assert (=> b!2177532 (= e!1392337 (and tp!679055 tp!679057))))

(declare-fun b!2177531 () Bool)

(declare-fun tp!679053 () Bool)

(assert (=> b!2177531 (= e!1392337 tp!679053)))

(assert (= (and b!2176203 ((_ is ElementMatch!6031) (regTwo!12574 (regOne!12575 r!12534)))) b!2177529))

(assert (= (and b!2176203 ((_ is Concat!10333) (regTwo!12574 (regOne!12575 r!12534)))) b!2177530))

(assert (= (and b!2176203 ((_ is Star!6031) (regTwo!12574 (regOne!12575 r!12534)))) b!2177531))

(assert (= (and b!2176203 ((_ is Union!6031) (regTwo!12574 (regOne!12575 r!12534)))) b!2177532))

(declare-fun b!2177537 () Bool)

(declare-fun e!1392339 () Bool)

(assert (=> b!2177537 (= e!1392339 tp_is_empty!9669)))

(declare-fun b!2177538 () Bool)

(declare-fun tp!679064 () Bool)

(declare-fun tp!679066 () Bool)

(assert (=> b!2177538 (= e!1392339 (and tp!679064 tp!679066))))

(assert (=> b!2176175 (= tp!678871 e!1392339)))

(declare-fun b!2177540 () Bool)

(declare-fun tp!679065 () Bool)

(declare-fun tp!679067 () Bool)

(assert (=> b!2177540 (= e!1392339 (and tp!679065 tp!679067))))

(declare-fun b!2177539 () Bool)

(declare-fun tp!679063 () Bool)

(assert (=> b!2177539 (= e!1392339 tp!679063)))

(assert (= (and b!2176175 ((_ is ElementMatch!6031) (regOne!12574 (reg!6360 r!12534)))) b!2177537))

(assert (= (and b!2176175 ((_ is Concat!10333) (regOne!12574 (reg!6360 r!12534)))) b!2177538))

(assert (= (and b!2176175 ((_ is Star!6031) (regOne!12574 (reg!6360 r!12534)))) b!2177539))

(assert (= (and b!2176175 ((_ is Union!6031) (regOne!12574 (reg!6360 r!12534)))) b!2177540))

(declare-fun b!2177545 () Bool)

(declare-fun e!1392341 () Bool)

(assert (=> b!2177545 (= e!1392341 tp_is_empty!9669)))

(declare-fun b!2177546 () Bool)

(declare-fun tp!679074 () Bool)

(declare-fun tp!679076 () Bool)

(assert (=> b!2177546 (= e!1392341 (and tp!679074 tp!679076))))

(assert (=> b!2176175 (= tp!678873 e!1392341)))

(declare-fun b!2177548 () Bool)

(declare-fun tp!679075 () Bool)

(declare-fun tp!679077 () Bool)

(assert (=> b!2177548 (= e!1392341 (and tp!679075 tp!679077))))

(declare-fun b!2177547 () Bool)

(declare-fun tp!679073 () Bool)

(assert (=> b!2177547 (= e!1392341 tp!679073)))

(assert (= (and b!2176175 ((_ is ElementMatch!6031) (regTwo!12574 (reg!6360 r!12534)))) b!2177545))

(assert (= (and b!2176175 ((_ is Concat!10333) (regTwo!12574 (reg!6360 r!12534)))) b!2177546))

(assert (= (and b!2176175 ((_ is Star!6031) (regTwo!12574 (reg!6360 r!12534)))) b!2177547))

(assert (= (and b!2176175 ((_ is Union!6031) (regTwo!12574 (reg!6360 r!12534)))) b!2177548))

(declare-fun b!2177552 () Bool)

(declare-fun e!1392344 () Bool)

(assert (=> b!2177552 (= e!1392344 tp_is_empty!9669)))

(declare-fun b!2177553 () Bool)

(declare-fun tp!679082 () Bool)

(declare-fun tp!679084 () Bool)

(assert (=> b!2177553 (= e!1392344 (and tp!679082 tp!679084))))

(assert (=> b!2176182 (= tp!678879 e!1392344)))

(declare-fun b!2177555 () Bool)

(declare-fun tp!679083 () Bool)

(declare-fun tp!679085 () Bool)

(assert (=> b!2177555 (= e!1392344 (and tp!679083 tp!679085))))

(declare-fun b!2177554 () Bool)

(declare-fun tp!679081 () Bool)

(assert (=> b!2177554 (= e!1392344 tp!679081)))

(assert (= (and b!2176182 ((_ is ElementMatch!6031) (h!30624 (exprs!2101 setElem!18274)))) b!2177552))

(assert (= (and b!2176182 ((_ is Concat!10333) (h!30624 (exprs!2101 setElem!18274)))) b!2177553))

(assert (= (and b!2176182 ((_ is Star!6031) (h!30624 (exprs!2101 setElem!18274)))) b!2177554))

(assert (= (and b!2176182 ((_ is Union!6031) (h!30624 (exprs!2101 setElem!18274)))) b!2177555))

(declare-fun b!2177556 () Bool)

(declare-fun e!1392345 () Bool)

(declare-fun tp!679086 () Bool)

(declare-fun tp!679087 () Bool)

(assert (=> b!2177556 (= e!1392345 (and tp!679086 tp!679087))))

(assert (=> b!2176182 (= tp!678880 e!1392345)))

(assert (= (and b!2176182 ((_ is Cons!25223) (t!197875 (exprs!2101 setElem!18274)))) b!2177556))

(declare-fun b!2177565 () Bool)

(declare-fun e!1392351 () Bool)

(declare-fun tp!679095 () Bool)

(assert (=> b!2177565 (= e!1392351 (and tp_is_empty!9669 tp!679095))))

(assert (=> b!2176212 (= tp!678910 e!1392351)))

(assert (= (and b!2176212 ((_ is Cons!25222) (innerList!8227 (xs!11109 (c!345005 input!5540))))) b!2177565))

(declare-fun b!2177566 () Bool)

(declare-fun e!1392352 () Bool)

(declare-fun tp!679096 () Bool)

(declare-fun tp!679097 () Bool)

(assert (=> b!2177566 (= e!1392352 (and tp!679096 tp!679097))))

(assert (=> b!2176217 (= tp!678917 e!1392352)))

(assert (= (and b!2176217 ((_ is Cons!25223) (exprs!2101 setElem!18280))) b!2177566))

(declare-fun condSetEmpty!18282 () Bool)

(assert (=> setNonEmpty!18280 (= condSetEmpty!18282 (= setRest!18280 ((as const (Array Context!3202 Bool)) false)))))

(declare-fun setRes!18282 () Bool)

(assert (=> setNonEmpty!18280 (= tp!678918 setRes!18282)))

(declare-fun setIsEmpty!18282 () Bool)

(assert (=> setIsEmpty!18282 setRes!18282))

(declare-fun tp!679102 () Bool)

(declare-fun e!1392355 () Bool)

(declare-fun setElem!18282 () Context!3202)

(declare-fun setNonEmpty!18282 () Bool)

(assert (=> setNonEmpty!18282 (= setRes!18282 (and tp!679102 (inv!33504 setElem!18282) e!1392355))))

(declare-fun setRest!18282 () (InoxSet Context!3202))

(assert (=> setNonEmpty!18282 (= setRest!18280 ((_ map or) (store ((as const (Array Context!3202 Bool)) false) setElem!18282 true) setRest!18282))))

(declare-fun b!2177570 () Bool)

(declare-fun tp!679101 () Bool)

(assert (=> b!2177570 (= e!1392355 tp!679101)))

(assert (= (and setNonEmpty!18280 condSetEmpty!18282) setIsEmpty!18282))

(assert (= (and setNonEmpty!18280 (not condSetEmpty!18282)) setNonEmpty!18282))

(assert (= setNonEmpty!18282 b!2177570))

(declare-fun m!2619579 () Bool)

(assert (=> setNonEmpty!18282 m!2619579))

(declare-fun tp!679107 () Bool)

(declare-fun e!1392359 () Bool)

(declare-fun b!2177574 () Bool)

(declare-fun tp!679108 () Bool)

(assert (=> b!2177574 (= e!1392359 (and (inv!33505 (left!19365 (left!19365 (c!345005 input!5540)))) tp!679108 (inv!33505 (right!19695 (left!19365 (c!345005 input!5540)))) tp!679107))))

(declare-fun b!2177576 () Bool)

(declare-fun e!1392358 () Bool)

(declare-fun tp!679106 () Bool)

(assert (=> b!2177576 (= e!1392358 tp!679106)))

(declare-fun b!2177575 () Bool)

(assert (=> b!2177575 (= e!1392359 (and (inv!33512 (xs!11109 (left!19365 (c!345005 input!5540)))) e!1392358))))

(assert (=> b!2176210 (= tp!678912 (and (inv!33505 (left!19365 (c!345005 input!5540))) e!1392359))))

(assert (= (and b!2176210 ((_ is Node!8167) (left!19365 (c!345005 input!5540)))) b!2177574))

(assert (= b!2177575 b!2177576))

(assert (= (and b!2176210 ((_ is Leaf!11950) (left!19365 (c!345005 input!5540)))) b!2177575))

(declare-fun m!2619587 () Bool)

(assert (=> b!2177574 m!2619587))

(declare-fun m!2619589 () Bool)

(assert (=> b!2177574 m!2619589))

(declare-fun m!2619591 () Bool)

(assert (=> b!2177575 m!2619591))

(assert (=> b!2176210 m!2617871))

(declare-fun b!2177582 () Bool)

(declare-fun e!1392364 () Bool)

(declare-fun tp!679115 () Bool)

(declare-fun tp!679114 () Bool)

(assert (=> b!2177582 (= e!1392364 (and (inv!33505 (left!19365 (right!19695 (c!345005 input!5540)))) tp!679115 (inv!33505 (right!19695 (right!19695 (c!345005 input!5540)))) tp!679114))))

(declare-fun b!2177584 () Bool)

(declare-fun e!1392363 () Bool)

(declare-fun tp!679113 () Bool)

(assert (=> b!2177584 (= e!1392363 tp!679113)))

(declare-fun b!2177583 () Bool)

(assert (=> b!2177583 (= e!1392364 (and (inv!33512 (xs!11109 (right!19695 (c!345005 input!5540)))) e!1392363))))

(assert (=> b!2176210 (= tp!678911 (and (inv!33505 (right!19695 (c!345005 input!5540))) e!1392364))))

(assert (= (and b!2176210 ((_ is Node!8167) (right!19695 (c!345005 input!5540)))) b!2177582))

(assert (= b!2177583 b!2177584))

(assert (= (and b!2176210 ((_ is Leaf!11950) (right!19695 (c!345005 input!5540)))) b!2177583))

(declare-fun m!2619593 () Bool)

(assert (=> b!2177582 m!2619593))

(declare-fun m!2619595 () Bool)

(assert (=> b!2177582 m!2619595))

(declare-fun m!2619597 () Bool)

(assert (=> b!2177583 m!2619597))

(assert (=> b!2176210 m!2617873))

(declare-fun b!2177585 () Bool)

(declare-fun e!1392365 () Bool)

(assert (=> b!2177585 (= e!1392365 tp_is_empty!9669)))

(declare-fun b!2177586 () Bool)

(declare-fun tp!679117 () Bool)

(declare-fun tp!679119 () Bool)

(assert (=> b!2177586 (= e!1392365 (and tp!679117 tp!679119))))

(assert (=> b!2176201 (= tp!678897 e!1392365)))

(declare-fun b!2177588 () Bool)

(declare-fun tp!679118 () Bool)

(declare-fun tp!679120 () Bool)

(assert (=> b!2177588 (= e!1392365 (and tp!679118 tp!679120))))

(declare-fun b!2177587 () Bool)

(declare-fun tp!679116 () Bool)

(assert (=> b!2177587 (= e!1392365 tp!679116)))

(assert (= (and b!2176201 ((_ is ElementMatch!6031) (regOne!12575 (regTwo!12574 r!12534)))) b!2177585))

(assert (= (and b!2176201 ((_ is Concat!10333) (regOne!12575 (regTwo!12574 r!12534)))) b!2177586))

(assert (= (and b!2176201 ((_ is Star!6031) (regOne!12575 (regTwo!12574 r!12534)))) b!2177587))

(assert (= (and b!2176201 ((_ is Union!6031) (regOne!12575 (regTwo!12574 r!12534)))) b!2177588))

(declare-fun b!2177591 () Bool)

(declare-fun e!1392368 () Bool)

(assert (=> b!2177591 (= e!1392368 tp_is_empty!9669)))

(declare-fun b!2177592 () Bool)

(declare-fun tp!679124 () Bool)

(declare-fun tp!679126 () Bool)

(assert (=> b!2177592 (= e!1392368 (and tp!679124 tp!679126))))

(assert (=> b!2176201 (= tp!678899 e!1392368)))

(declare-fun b!2177594 () Bool)

(declare-fun tp!679125 () Bool)

(declare-fun tp!679127 () Bool)

(assert (=> b!2177594 (= e!1392368 (and tp!679125 tp!679127))))

(declare-fun b!2177593 () Bool)

(declare-fun tp!679123 () Bool)

(assert (=> b!2177593 (= e!1392368 tp!679123)))

(assert (= (and b!2176201 ((_ is ElementMatch!6031) (regTwo!12575 (regTwo!12574 r!12534)))) b!2177591))

(assert (= (and b!2176201 ((_ is Concat!10333) (regTwo!12575 (regTwo!12574 r!12534)))) b!2177592))

(assert (= (and b!2176201 ((_ is Star!6031) (regTwo!12575 (regTwo!12574 r!12534)))) b!2177593))

(assert (= (and b!2176201 ((_ is Union!6031) (regTwo!12575 (regTwo!12574 r!12534)))) b!2177594))

(declare-fun b!2177599 () Bool)

(declare-fun e!1392370 () Bool)

(assert (=> b!2177599 (= e!1392370 tp_is_empty!9669)))

(declare-fun b!2177600 () Bool)

(declare-fun tp!679134 () Bool)

(declare-fun tp!679136 () Bool)

(assert (=> b!2177600 (= e!1392370 (and tp!679134 tp!679136))))

(assert (=> b!2176200 (= tp!678895 e!1392370)))

(declare-fun b!2177602 () Bool)

(declare-fun tp!679135 () Bool)

(declare-fun tp!679137 () Bool)

(assert (=> b!2177602 (= e!1392370 (and tp!679135 tp!679137))))

(declare-fun b!2177601 () Bool)

(declare-fun tp!679133 () Bool)

(assert (=> b!2177601 (= e!1392370 tp!679133)))

(assert (= (and b!2176200 ((_ is ElementMatch!6031) (reg!6360 (regTwo!12574 r!12534)))) b!2177599))

(assert (= (and b!2176200 ((_ is Concat!10333) (reg!6360 (regTwo!12574 r!12534)))) b!2177600))

(assert (= (and b!2176200 ((_ is Star!6031) (reg!6360 (regTwo!12574 r!12534)))) b!2177601))

(assert (= (and b!2176200 ((_ is Union!6031) (reg!6360 (regTwo!12574 r!12534)))) b!2177602))

(declare-fun b!2177607 () Bool)

(declare-fun e!1392372 () Bool)

(assert (=> b!2177607 (= e!1392372 tp_is_empty!9669)))

(declare-fun b!2177608 () Bool)

(declare-fun tp!679144 () Bool)

(declare-fun tp!679146 () Bool)

(assert (=> b!2177608 (= e!1392372 (and tp!679144 tp!679146))))

(assert (=> b!2176209 (= tp!678907 e!1392372)))

(declare-fun b!2177610 () Bool)

(declare-fun tp!679145 () Bool)

(declare-fun tp!679147 () Bool)

(assert (=> b!2177610 (= e!1392372 (and tp!679145 tp!679147))))

(declare-fun b!2177609 () Bool)

(declare-fun tp!679143 () Bool)

(assert (=> b!2177609 (= e!1392372 tp!679143)))

(assert (= (and b!2176209 ((_ is ElementMatch!6031) (regOne!12575 (regTwo!12575 r!12534)))) b!2177607))

(assert (= (and b!2176209 ((_ is Concat!10333) (regOne!12575 (regTwo!12575 r!12534)))) b!2177608))

(assert (= (and b!2176209 ((_ is Star!6031) (regOne!12575 (regTwo!12575 r!12534)))) b!2177609))

(assert (= (and b!2176209 ((_ is Union!6031) (regOne!12575 (regTwo!12575 r!12534)))) b!2177610))

(declare-fun b!2177615 () Bool)

(declare-fun e!1392374 () Bool)

(assert (=> b!2177615 (= e!1392374 tp_is_empty!9669)))

(declare-fun b!2177616 () Bool)

(declare-fun tp!679154 () Bool)

(declare-fun tp!679156 () Bool)

(assert (=> b!2177616 (= e!1392374 (and tp!679154 tp!679156))))

(assert (=> b!2176209 (= tp!678909 e!1392374)))

(declare-fun b!2177618 () Bool)

(declare-fun tp!679155 () Bool)

(declare-fun tp!679157 () Bool)

(assert (=> b!2177618 (= e!1392374 (and tp!679155 tp!679157))))

(declare-fun b!2177617 () Bool)

(declare-fun tp!679153 () Bool)

(assert (=> b!2177617 (= e!1392374 tp!679153)))

(assert (= (and b!2176209 ((_ is ElementMatch!6031) (regTwo!12575 (regTwo!12575 r!12534)))) b!2177615))

(assert (= (and b!2176209 ((_ is Concat!10333) (regTwo!12575 (regTwo!12575 r!12534)))) b!2177616))

(assert (= (and b!2176209 ((_ is Star!6031) (regTwo!12575 (regTwo!12575 r!12534)))) b!2177617))

(assert (= (and b!2176209 ((_ is Union!6031) (regTwo!12575 (regTwo!12575 r!12534)))) b!2177618))

(declare-fun b!2177623 () Bool)

(declare-fun e!1392376 () Bool)

(assert (=> b!2177623 (= e!1392376 tp_is_empty!9669)))

(declare-fun b!2177624 () Bool)

(declare-fun tp!679164 () Bool)

(declare-fun tp!679166 () Bool)

(assert (=> b!2177624 (= e!1392376 (and tp!679164 tp!679166))))

(assert (=> b!2176199 (= tp!678896 e!1392376)))

(declare-fun b!2177626 () Bool)

(declare-fun tp!679165 () Bool)

(declare-fun tp!679167 () Bool)

(assert (=> b!2177626 (= e!1392376 (and tp!679165 tp!679167))))

(declare-fun b!2177625 () Bool)

(declare-fun tp!679163 () Bool)

(assert (=> b!2177625 (= e!1392376 tp!679163)))

(assert (= (and b!2176199 ((_ is ElementMatch!6031) (regOne!12574 (regTwo!12574 r!12534)))) b!2177623))

(assert (= (and b!2176199 ((_ is Concat!10333) (regOne!12574 (regTwo!12574 r!12534)))) b!2177624))

(assert (= (and b!2176199 ((_ is Star!6031) (regOne!12574 (regTwo!12574 r!12534)))) b!2177625))

(assert (= (and b!2176199 ((_ is Union!6031) (regOne!12574 (regTwo!12574 r!12534)))) b!2177626))

(declare-fun b!2177631 () Bool)

(declare-fun e!1392378 () Bool)

(assert (=> b!2177631 (= e!1392378 tp_is_empty!9669)))

(declare-fun b!2177632 () Bool)

(declare-fun tp!679174 () Bool)

(declare-fun tp!679176 () Bool)

(assert (=> b!2177632 (= e!1392378 (and tp!679174 tp!679176))))

(assert (=> b!2176199 (= tp!678898 e!1392378)))

(declare-fun b!2177634 () Bool)

(declare-fun tp!679175 () Bool)

(declare-fun tp!679177 () Bool)

(assert (=> b!2177634 (= e!1392378 (and tp!679175 tp!679177))))

(declare-fun b!2177633 () Bool)

(declare-fun tp!679173 () Bool)

(assert (=> b!2177633 (= e!1392378 tp!679173)))

(assert (= (and b!2176199 ((_ is ElementMatch!6031) (regTwo!12574 (regTwo!12574 r!12534)))) b!2177631))

(assert (= (and b!2176199 ((_ is Concat!10333) (regTwo!12574 (regTwo!12574 r!12534)))) b!2177632))

(assert (= (and b!2176199 ((_ is Star!6031) (regTwo!12574 (regTwo!12574 r!12534)))) b!2177633))

(assert (= (and b!2176199 ((_ is Union!6031) (regTwo!12574 (regTwo!12574 r!12534)))) b!2177634))

(declare-fun b!2177639 () Bool)

(declare-fun e!1392380 () Bool)

(assert (=> b!2177639 (= e!1392380 tp_is_empty!9669)))

(declare-fun b!2177640 () Bool)

(declare-fun tp!679184 () Bool)

(declare-fun tp!679186 () Bool)

(assert (=> b!2177640 (= e!1392380 (and tp!679184 tp!679186))))

(assert (=> b!2176208 (= tp!678905 e!1392380)))

(declare-fun b!2177642 () Bool)

(declare-fun tp!679185 () Bool)

(declare-fun tp!679187 () Bool)

(assert (=> b!2177642 (= e!1392380 (and tp!679185 tp!679187))))

(declare-fun b!2177641 () Bool)

(declare-fun tp!679183 () Bool)

(assert (=> b!2177641 (= e!1392380 tp!679183)))

(assert (= (and b!2176208 ((_ is ElementMatch!6031) (reg!6360 (regTwo!12575 r!12534)))) b!2177639))

(assert (= (and b!2176208 ((_ is Concat!10333) (reg!6360 (regTwo!12575 r!12534)))) b!2177640))

(assert (= (and b!2176208 ((_ is Star!6031) (reg!6360 (regTwo!12575 r!12534)))) b!2177641))

(assert (= (and b!2176208 ((_ is Union!6031) (reg!6360 (regTwo!12575 r!12534)))) b!2177642))

(declare-fun b!2177647 () Bool)

(declare-fun e!1392382 () Bool)

(assert (=> b!2177647 (= e!1392382 tp_is_empty!9669)))

(declare-fun b!2177648 () Bool)

(declare-fun tp!679194 () Bool)

(declare-fun tp!679196 () Bool)

(assert (=> b!2177648 (= e!1392382 (and tp!679194 tp!679196))))

(assert (=> b!2176207 (= tp!678906 e!1392382)))

(declare-fun b!2177650 () Bool)

(declare-fun tp!679195 () Bool)

(declare-fun tp!679197 () Bool)

(assert (=> b!2177650 (= e!1392382 (and tp!679195 tp!679197))))

(declare-fun b!2177649 () Bool)

(declare-fun tp!679193 () Bool)

(assert (=> b!2177649 (= e!1392382 tp!679193)))

(assert (= (and b!2176207 ((_ is ElementMatch!6031) (regOne!12574 (regTwo!12575 r!12534)))) b!2177647))

(assert (= (and b!2176207 ((_ is Concat!10333) (regOne!12574 (regTwo!12575 r!12534)))) b!2177648))

(assert (= (and b!2176207 ((_ is Star!6031) (regOne!12574 (regTwo!12575 r!12534)))) b!2177649))

(assert (= (and b!2176207 ((_ is Union!6031) (regOne!12574 (regTwo!12575 r!12534)))) b!2177650))

(declare-fun b!2177655 () Bool)

(declare-fun e!1392384 () Bool)

(assert (=> b!2177655 (= e!1392384 tp_is_empty!9669)))

(declare-fun b!2177656 () Bool)

(declare-fun tp!679204 () Bool)

(declare-fun tp!679206 () Bool)

(assert (=> b!2177656 (= e!1392384 (and tp!679204 tp!679206))))

(assert (=> b!2176207 (= tp!678908 e!1392384)))

(declare-fun b!2177658 () Bool)

(declare-fun tp!679205 () Bool)

(declare-fun tp!679207 () Bool)

(assert (=> b!2177658 (= e!1392384 (and tp!679205 tp!679207))))

(declare-fun b!2177657 () Bool)

(declare-fun tp!679203 () Bool)

(assert (=> b!2177657 (= e!1392384 tp!679203)))

(assert (= (and b!2176207 ((_ is ElementMatch!6031) (regTwo!12574 (regTwo!12575 r!12534)))) b!2177655))

(assert (= (and b!2176207 ((_ is Concat!10333) (regTwo!12574 (regTwo!12575 r!12534)))) b!2177656))

(assert (= (and b!2176207 ((_ is Star!6031) (regTwo!12574 (regTwo!12575 r!12534)))) b!2177657))

(assert (= (and b!2176207 ((_ is Union!6031) (regTwo!12574 (regTwo!12575 r!12534)))) b!2177658))

(declare-fun b!2177663 () Bool)

(declare-fun e!1392386 () Bool)

(declare-fun tp!679213 () Bool)

(assert (=> b!2177663 (= e!1392386 (and tp_is_empty!9669 tp!679213))))

(assert (=> b!2176193 (= tp!678887 e!1392386)))

(assert (= (and b!2176193 ((_ is Cons!25222) (innerList!8227 (xs!11109 (c!345005 totalInput!977))))) b!2177663))

(declare-fun tp!679220 () Bool)

(declare-fun b!2177668 () Bool)

(declare-fun e!1392389 () Bool)

(declare-fun tp!679221 () Bool)

(assert (=> b!2177668 (= e!1392389 (and (inv!33505 (left!19365 (left!19365 (c!345005 totalInput!977)))) tp!679221 (inv!33505 (right!19695 (left!19365 (c!345005 totalInput!977)))) tp!679220))))

(declare-fun b!2177670 () Bool)

(declare-fun e!1392388 () Bool)

(declare-fun tp!679219 () Bool)

(assert (=> b!2177670 (= e!1392388 tp!679219)))

(declare-fun b!2177669 () Bool)

(assert (=> b!2177669 (= e!1392389 (and (inv!33512 (xs!11109 (left!19365 (c!345005 totalInput!977)))) e!1392388))))

(assert (=> b!2176191 (= tp!678889 (and (inv!33505 (left!19365 (c!345005 totalInput!977))) e!1392389))))

(assert (= (and b!2176191 ((_ is Node!8167) (left!19365 (c!345005 totalInput!977)))) b!2177668))

(assert (= b!2177669 b!2177670))

(assert (= (and b!2176191 ((_ is Leaf!11950) (left!19365 (c!345005 totalInput!977)))) b!2177669))

(declare-fun m!2619599 () Bool)

(assert (=> b!2177668 m!2619599))

(declare-fun m!2619601 () Bool)

(assert (=> b!2177668 m!2619601))

(declare-fun m!2619603 () Bool)

(assert (=> b!2177669 m!2619603))

(assert (=> b!2176191 m!2617865))

(declare-fun e!1392391 () Bool)

(declare-fun b!2177671 () Bool)

(declare-fun tp!679223 () Bool)

(declare-fun tp!679224 () Bool)

(assert (=> b!2177671 (= e!1392391 (and (inv!33505 (left!19365 (right!19695 (c!345005 totalInput!977)))) tp!679224 (inv!33505 (right!19695 (right!19695 (c!345005 totalInput!977)))) tp!679223))))

(declare-fun b!2177673 () Bool)

(declare-fun e!1392390 () Bool)

(declare-fun tp!679222 () Bool)

(assert (=> b!2177673 (= e!1392390 tp!679222)))

(declare-fun b!2177672 () Bool)

(assert (=> b!2177672 (= e!1392391 (and (inv!33512 (xs!11109 (right!19695 (c!345005 totalInput!977)))) e!1392390))))

(assert (=> b!2176191 (= tp!678888 (and (inv!33505 (right!19695 (c!345005 totalInput!977))) e!1392391))))

(assert (= (and b!2176191 ((_ is Node!8167) (right!19695 (c!345005 totalInput!977)))) b!2177671))

(assert (= b!2177672 b!2177673))

(assert (= (and b!2176191 ((_ is Leaf!11950) (right!19695 (c!345005 totalInput!977)))) b!2177672))

(declare-fun m!2619605 () Bool)

(assert (=> b!2177671 m!2619605))

(declare-fun m!2619609 () Bool)

(assert (=> b!2177671 m!2619609))

(declare-fun m!2619611 () Bool)

(assert (=> b!2177672 m!2619611))

(assert (=> b!2176191 m!2617867))

(declare-fun b!2177674 () Bool)

(declare-fun e!1392392 () Bool)

(assert (=> b!2177674 (= e!1392392 tp_is_empty!9669)))

(declare-fun b!2177675 () Bool)

(declare-fun tp!679226 () Bool)

(declare-fun tp!679228 () Bool)

(assert (=> b!2177675 (= e!1392392 (and tp!679226 tp!679228))))

(assert (=> b!2176197 (= tp!678892 e!1392392)))

(declare-fun b!2177677 () Bool)

(declare-fun tp!679227 () Bool)

(declare-fun tp!679229 () Bool)

(assert (=> b!2177677 (= e!1392392 (and tp!679227 tp!679229))))

(declare-fun b!2177676 () Bool)

(declare-fun tp!679225 () Bool)

(assert (=> b!2177676 (= e!1392392 tp!679225)))

(assert (= (and b!2176197 ((_ is ElementMatch!6031) (regOne!12575 (regOne!12574 r!12534)))) b!2177674))

(assert (= (and b!2176197 ((_ is Concat!10333) (regOne!12575 (regOne!12574 r!12534)))) b!2177675))

(assert (= (and b!2176197 ((_ is Star!6031) (regOne!12575 (regOne!12574 r!12534)))) b!2177676))

(assert (= (and b!2176197 ((_ is Union!6031) (regOne!12575 (regOne!12574 r!12534)))) b!2177677))

(declare-fun b!2177678 () Bool)

(declare-fun e!1392393 () Bool)

(assert (=> b!2177678 (= e!1392393 tp_is_empty!9669)))

(declare-fun b!2177679 () Bool)

(declare-fun tp!679231 () Bool)

(declare-fun tp!679233 () Bool)

(assert (=> b!2177679 (= e!1392393 (and tp!679231 tp!679233))))

(assert (=> b!2176197 (= tp!678894 e!1392393)))

(declare-fun b!2177681 () Bool)

(declare-fun tp!679232 () Bool)

(declare-fun tp!679234 () Bool)

(assert (=> b!2177681 (= e!1392393 (and tp!679232 tp!679234))))

(declare-fun b!2177680 () Bool)

(declare-fun tp!679230 () Bool)

(assert (=> b!2177680 (= e!1392393 tp!679230)))

(assert (= (and b!2176197 ((_ is ElementMatch!6031) (regTwo!12575 (regOne!12574 r!12534)))) b!2177678))

(assert (= (and b!2176197 ((_ is Concat!10333) (regTwo!12575 (regOne!12574 r!12534)))) b!2177679))

(assert (= (and b!2176197 ((_ is Star!6031) (regTwo!12575 (regOne!12574 r!12534)))) b!2177680))

(assert (= (and b!2176197 ((_ is Union!6031) (regTwo!12575 (regOne!12574 r!12534)))) b!2177681))

(declare-fun b_lambda!71099 () Bool)

(assert (= b_lambda!71093 (or d!651091 b_lambda!71099)))

(declare-fun bs!447278 () Bool)

(declare-fun d!652031 () Bool)

(assert (= bs!447278 (and d!652031 d!651091)))

(assert (=> bs!447278 (= (dynLambda!11432 lambda!81856 (h!30624 (exprs!2101 setElem!18274))) (validRegex!2307 (h!30624 (exprs!2101 setElem!18274))))))

(declare-fun m!2619613 () Bool)

(assert (=> bs!447278 m!2619613))

(assert (=> b!2176455 d!652031))

(check-sat (not b!2177530) (not b!2177334) (not b!2176820) (not b!2176919) (not d!651587) (not b!2177106) (not d!651639) (not b!2176830) (not b!2177086) (not bm!130730) (not d!651591) (not b!2177071) (not b!2177130) (not b!2176543) (not b!2176550) (not b!2177227) (not d!651847) (not b!2177618) (not d!651373) (not b!2176545) (not b!2177034) (not b!2177474) tp_is_empty!9669 (not b!2177555) (not setNonEmpty!18282) (not b!2177446) (not b!2177539) (not b!2177011) (not b!2177345) (not b!2177253) (not b!2176512) (not d!651837) (not b!2176930) (not d!651821) (not b!2177234) (not b!2177633) (not d!651507) (not b!2176502) (not b_lambda!71099) (not b!2176866) (not b!2176604) (not b!2176286) (not b!2177184) (not d!651803) (not b!2177680) (not b!2177546) (not b!2176523) (not b!2177350) (not b!2177514) (not bm!130768) (not b!2176368) (not b!2177261) (not bm!130781) (not b!2177404) (not b!2176943) (not bm!130784) (not b!2176942) (not b!2177068) (not b!2177398) (not d!651607) (not b!2177676) (not b!2177215) (not b!2176380) (not bm!130785) (not b!2177448) (not b!2176891) (not b!2177400) (not b!2177459) (not b!2177050) (not b!2177091) (not b!2177491) (not d!651573) (not b!2177395) (not b!2176505) (not b!2177650) (not b!2177420) (not b!2176400) (not d!651713) (not b!2176534) (not bs!447278) (not b!2176530) (not b!2177540) (not bm!130791) (not b!2176846) (not b!2176951) (not b!2177593) (not b!2176579) (not b!2176407) (not b!2177499) (not b!2176716) (not b!2177183) (not b!2177107) (not b!2176809) (not b!2177584) (not b!2177554) (not bm!130745) (not b!2177266) (not b!2176967) (not d!651463) (not b!2176191) (not bm!130788) (not b!2176210) (not b!2177209) (not b!2177475) (not b!2177467) (not b!2176939) (not b!2176950) (not b!2177468) (not d!651909) (not b!2176501) (not b!2176719) (not bm!130746) (not b!2177035) (not b!2177608) (not b!2176609) (not d!651903) (not b!2177070) (not b!2176402) (not b!2176717) (not b!2177668) (not b!2177634) (not b!2177046) (not b!2177315) (not b!2177490) (not b!2176401) (not b!2176897) (not b!2176794) (not b!2177053) (not d!651749) (not bm!130769) (not b!2177556) (not d!651917) (not d!651319) (not b!2177458) (not b!2177388) (not b!2176521) (not bm!130799) (not b!2177416) (not b!2177626) (not b!2176745) (not d!651901) (not bm!130716) (not b!2177330) (not d!651659) (not b!2176856) (not bm!130763) (not b!2176552) (not bm!130731) (not b!2176582) (not b!2177072) (not b!2177121) (not d!651929) (not b!2176570) (not b!2176290) (not d!651987) (not bm!130729) (not d!651961) (not b!2177123) (not b!2177570) (not b!2176710) (not d!651529) (not d!651829) (not d!651469) (not b!2177681) (not b!2177294) (not b!2176718) (not d!651801) (not d!651947) (not b!2176792) (not b!2177679) (not b!2176817) (not b!2176962) (not d!651687) (not b!2176468) (not b!2176594) (not d!651985) (not b!2176889) (not b!2177171) (not b!2177588) (not b!2177649) (not b!2177207) (not d!651757) (not d!651651) (not bm!130766) (not d!651597) (not b!2176602) (not d!652017) (not d!651831) (not d!651707) (not b!2177483) (not b!2177624) (not b!2176274) (not b!2177641) (not b!2177547) (not b!2176940) (not b!2176805) (not bm!130792) (not d!651623) (not b!2176527) (not b!2177342) (not b!2177277) (not b!2176938) (not b!2177516) (not b!2176384) (not b!2177007) (not b!2176898) (not b!2177594) (not b!2176961) (not d!651999) (not b!2176275) (not b!2177524) (not b!2177282) (not d!651775) (not b!2177523) (not b!2177565) (not bm!130737) (not bm!130807) (not d!651453) (not b!2176548) (not b!2177394) (not b!2177610) (not b!2177265) (not b!2177054) (not bm!130748) (not d!651593) (not b!2177386) (not b!2177324) (not b!2176526) (not b!2176458) (not b!2177632) (not b!2176743) (not b!2176869) (not b!2177418) (not b!2177625) (not b!2176862) (not bm!130741) (not b!2177279) (not b!2177278) (not b!2176806) (not b!2176944) (not b!2177185) (not b!2177347) (not b!2177601) (not bm!130764) (not d!651945) (not b!2176580) (not b!2177671) (not b!2176606) (not b!2176600) (not b!2176790) (not b!2176500) (not b!2177114) (not b!2177670) (not b!2176915) (not d!651705) (not b!2176386) (not b!2177617) (not b!2177616) (not d!651635) (not d!651799) (not bm!130749) (not d!651937) (not b!2177657) (not b!2176864) (not b!2176363) (not b!2177057) (not b!2177260) (not d!651883) (not b!2177600) (not b!2177482) (not b!2176715) (not bm!130738) (not b!2176934) (not bm!130743) (not b!2177673) (not b!2177335) (not b!2177609) (not b!2177008) (not b!2177263) (not d!651459) (not b!2177476) (not b!2176456) (not b!2176518) (not b!2177067) (not b!2177122) (not b!2177508) (not d!651923) (not bm!130794) (not b!2177257) (not b!2176284) (not b!2177012) (not b!2177677) (not b!2177548) (not bm!130787) (not b!2176618) (not d!651575) (not d!651663) (not b!2176927) (not b!2177314) (not d!651897) (not b!2177092) (not b!2176434) (not b!2176848) (not d!651679) (not b!2176714) (not b!2177126) (not b!2176392) (not b!2177574) (not d!651787) (not b!2177010) (not b!2177127) (not d!651629) (not b!2176353) (not d!651341) (not d!651815) (not b!2177304) (not bm!130782) (not b!2176435) (not d!651699) (not b!2177305) (not b!2177414) (not b!2176877) (not b!2177336) (not b!2176394) (not b!2176816) (not bm!130736) (not b!2177252) (not b!2176388) (not bm!130790) (not b!2177447) (not b!2176958) (not d!651381) (not b!2176390) (not b!2177586) (not bm!130734) (not b!2176273) (not d!651887) (not b!2177656) (not b!2176947) (not b!2176917) (not d!651913) (not b!2176870) (not d!651719) (not b!2177009) (not b!2177466) (not b!2176949) (not b!2177344) (not bm!130793) (not b!2177429) (not b!2176480) (not b!2176890) (not b!2177162) (not b!2176564) (not b!2176813) (not b!2176595) (not d!652005) (not b!2177417) (not b!2177566) (not d!651717) (not b!2176504) (not b!2176957) (not d!651445) (not b!2177041) (not b!2177582) (not bm!130714) (not d!651509) (not bm!130742) (not b!2176803) (not b!2177208) (not b!2177110) (not b!2177531) (not b!2177218) (not b!2177522) (not b!2177642) (not b!2177658) (not b!2177663) (not d!651367) (not b!2177460) (not bm!130732) (not b!2177226) (not d!651995) (not b!2177331) (not b!2176478) (not b!2177675) (not b!2176278) (not b!2177575) (not b!2177229) (not b!2177587) (not b!2177553) (not b!2176466) (not b!2177515) (not b!2177037) (not d!651489) (not b!2177507) (not b!2176932) (not b!2177498) (not b!2176789) (not b!2177538) (not b!2176364) (not d!651309) (not b!2177048) (not d!651571) (not b!2176587) (not b!2177506) (not b!2176746) (not b!2177669) (not b!2176936) (not d!651943) (not b!2177385) (not d!651907) (not d!651455) (not b!2177254) (not b!2177403) (not d!651425) (not b!2177421) (not b!2177419) (not b!2177602) (not b!2177129) (not b!2177219) (not d!651721) (not d!651499) (not b!2177648) (not bm!130739) (not b!2177576) (not b!2177583) (not b!2176873) (not b!2177484) (not b!2177325) (not d!651631) (not b!2177640) (not b!2176857) (not bm!130740) (not b!2177532) (not bm!130789) (not b!2176811) (not d!651559) (not b!2176365) (not b!2177431) (not b!2177343) (not b!2177205) (not b!2177500) (not d!652007) (not b!2177113) (not b!2177217) (not b!2177592) (not b!2177492) (not d!651791) (not b!2177348) (not b!2177672) (not b!2176382) (not bm!130771) (not b!2177295) (not b!2176288))
(check-sat)
