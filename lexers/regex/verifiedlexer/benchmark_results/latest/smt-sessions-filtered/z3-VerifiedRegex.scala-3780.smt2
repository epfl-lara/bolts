; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210866 () Bool)

(assert start!210866)

(declare-fun b!2173666 () Bool)

(declare-fun e!1390092 () Bool)

(declare-datatypes ((C!12200 0))(
  ( (C!12201 (val!7086 Int)) )
))
(declare-datatypes ((List!25294 0))(
  ( (Nil!25210) (Cons!25210 (h!30611 C!12200) (t!197862 List!25294)) )
))
(declare-datatypes ((tuple2!24982 0))(
  ( (tuple2!24983 (_1!14861 List!25294) (_2!14861 List!25294)) )
))
(declare-fun lt!810530 () tuple2!24982)

(declare-fun isEmpty!14465 (List!25294) Bool)

(assert (=> b!2173666 (= e!1390092 (not (isEmpty!14465 (_1!14861 lt!810530))))))

(declare-fun b!2173667 () Bool)

(declare-fun e!1390098 () Bool)

(declare-fun tp!678455 () Bool)

(assert (=> b!2173667 (= e!1390098 tp!678455)))

(declare-fun b!2173668 () Bool)

(declare-fun e!1390094 () Bool)

(declare-fun tp!678450 () Bool)

(declare-fun tp!678456 () Bool)

(assert (=> b!2173668 (= e!1390094 (and tp!678450 tp!678456))))

(declare-fun b!2173669 () Bool)

(declare-fun e!1390105 () Bool)

(declare-datatypes ((IArray!16331 0))(
  ( (IArray!16332 (innerList!8223 List!25294)) )
))
(declare-datatypes ((Conc!8163 0))(
  ( (Node!8163 (left!19359 Conc!8163) (right!19689 Conc!8163) (csize!16556 Int) (cheight!8374 Int)) (Leaf!11944 (xs!11105 IArray!16331) (csize!16557 Int)) (Empty!8163) )
))
(declare-datatypes ((BalanceConc!16088 0))(
  ( (BalanceConc!16089 (c!344580 Conc!8163)) )
))
(declare-fun input!5540 () BalanceConc!16088)

(declare-fun tp!678452 () Bool)

(declare-fun inv!33474 (Conc!8163) Bool)

(assert (=> b!2173669 (= e!1390105 (and (inv!33474 (c!344580 input!5540)) tp!678452))))

(declare-fun b!2173670 () Bool)

(declare-fun e!1390093 () Bool)

(declare-fun e!1390095 () Bool)

(assert (=> b!2173670 (= e!1390093 e!1390095)))

(declare-fun res!935399 () Bool)

(assert (=> b!2173670 (=> res!935399 e!1390095)))

(assert (=> b!2173670 (= res!935399 e!1390092)))

(declare-fun res!935391 () Bool)

(assert (=> b!2173670 (=> (not res!935391) (not e!1390092))))

(declare-fun lt!810539 () Bool)

(assert (=> b!2173670 (= res!935391 (not lt!810539))))

(declare-datatypes ((Regex!6027 0))(
  ( (ElementMatch!6027 (c!344581 C!12200)) (Concat!10329 (regOne!12566 Regex!6027) (regTwo!12566 Regex!6027)) (EmptyExpr!6027) (Star!6027 (reg!6356 Regex!6027)) (EmptyLang!6027) (Union!6027 (regOne!12567 Regex!6027) (regTwo!12567 Regex!6027)) )
))
(declare-fun r!12534 () Regex!6027)

(declare-fun matchR!2776 (Regex!6027 List!25294) Bool)

(assert (=> b!2173670 (= lt!810539 (matchR!2776 r!12534 (_1!14861 lt!810530)))))

(declare-fun b!2173671 () Bool)

(declare-fun e!1390103 () Bool)

(declare-fun e!1390100 () Bool)

(assert (=> b!2173671 (= e!1390103 e!1390100)))

(declare-fun res!935398 () Bool)

(assert (=> b!2173671 (=> (not res!935398) (not e!1390100))))

(declare-datatypes ((List!25295 0))(
  ( (Nil!25211) (Cons!25211 (h!30612 Regex!6027) (t!197863 List!25295)) )
))
(declare-datatypes ((Context!3194 0))(
  ( (Context!3195 (exprs!2097 List!25295)) )
))
(declare-datatypes ((List!25296 0))(
  ( (Nil!25212) (Cons!25212 (h!30613 Context!3194) (t!197864 List!25296)) )
))
(declare-fun lt!810527 () List!25296)

(declare-fun unfocusZipper!134 (List!25296) Regex!6027)

(assert (=> b!2173671 (= res!935398 (= (unfocusZipper!134 lt!810527) r!12534))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3194))

(declare-fun toList!1210 ((InoxSet Context!3194)) List!25296)

(assert (=> b!2173671 (= lt!810527 (toList!1210 z!4055))))

(declare-fun lt!810544 () Int)

(declare-fun e!1390108 () Bool)

(declare-fun b!2173672 () Bool)

(declare-fun lt!810523 () List!25294)

(declare-fun lt!810549 () Int)

(assert (=> b!2173672 (= e!1390108 (or (not (= lt!810523 (_1!14861 lt!810530))) (and (>= lt!810549 0) (<= lt!810549 lt!810544))))))

(declare-fun lt!810535 () List!25294)

(assert (=> b!2173672 (= lt!810535 (_1!14861 lt!810530))))

(declare-datatypes ((Unit!38273 0))(
  ( (Unit!38274) )
))
(declare-fun lt!810528 () Unit!38273)

(declare-fun lt!810540 () List!25294)

(declare-fun lemmaIsPrefixSameLengthThenSameList!355 (List!25294 List!25294 List!25294) Unit!38273)

(assert (=> b!2173672 (= lt!810528 (lemmaIsPrefixSameLengthThenSameList!355 lt!810535 (_1!14861 lt!810530) lt!810540))))

(declare-fun isPrefix!2143 (List!25294 List!25294) Bool)

(assert (=> b!2173672 (isPrefix!2143 lt!810523 lt!810540)))

(declare-fun lt!810545 () Int)

(declare-fun take!235 (List!25294 Int) List!25294)

(assert (=> b!2173672 (= lt!810523 (take!235 lt!810540 lt!810545))))

(declare-fun lt!810538 () Unit!38273)

(declare-fun lemmaTakeIsPrefix!58 (List!25294 Int) Unit!38273)

(assert (=> b!2173672 (= lt!810538 (lemmaTakeIsPrefix!58 lt!810540 lt!810545))))

(declare-fun b!2173673 () Bool)

(declare-fun e!1390104 () Bool)

(declare-fun e!1390097 () Bool)

(assert (=> b!2173673 (= e!1390104 e!1390097)))

(declare-fun res!935387 () Bool)

(assert (=> b!2173673 (=> (not res!935387) (not e!1390097))))

(declare-fun lt!810536 () List!25294)

(assert (=> b!2173673 (= res!935387 (= lt!810536 lt!810540))))

(declare-fun lt!810529 () List!25294)

(declare-fun lt!810522 () List!25294)

(declare-fun ++!6386 (List!25294 List!25294) List!25294)

(assert (=> b!2173673 (= lt!810536 (++!6386 lt!810529 lt!810522))))

(declare-datatypes ((tuple2!24984 0))(
  ( (tuple2!24985 (_1!14862 BalanceConc!16088) (_2!14862 BalanceConc!16088)) )
))
(declare-fun lt!810541 () tuple2!24984)

(declare-fun list!9668 (BalanceConc!16088) List!25294)

(assert (=> b!2173673 (= lt!810522 (list!9668 (_2!14862 lt!810541)))))

(assert (=> b!2173673 (= lt!810529 (list!9668 (_1!14862 lt!810541)))))

(declare-fun findLongestMatch!581 (Regex!6027 List!25294) tuple2!24982)

(assert (=> b!2173673 (= lt!810530 (findLongestMatch!581 r!12534 lt!810540))))

(declare-fun size!19694 (BalanceConc!16088) Int)

(assert (=> b!2173673 (= lt!810549 (- lt!810544 (size!19694 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16088)

(assert (=> b!2173673 (= lt!810544 (size!19694 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!76 ((InoxSet Context!3194) BalanceConc!16088 BalanceConc!16088) tuple2!24984)

(assert (=> b!2173673 (= lt!810541 (findLongestMatchZipperSequenceV3!76 z!4055 input!5540 totalInput!977))))

(declare-fun b!2173674 () Bool)

(declare-fun e!1390107 () Bool)

(assert (=> b!2173674 (= e!1390107 e!1390108)))

(declare-fun res!935392 () Bool)

(assert (=> b!2173674 (=> res!935392 e!1390108)))

(declare-fun lt!810550 () List!25294)

(assert (=> b!2173674 (= res!935392 (not (= lt!810550 lt!810540)))))

(assert (=> b!2173674 (= lt!810535 (take!235 lt!810550 lt!810545))))

(declare-fun lt!810547 () List!25294)

(declare-fun drop!1245 (List!25294 Int) List!25294)

(assert (=> b!2173674 (= lt!810550 (drop!1245 lt!810547 lt!810549))))

(declare-fun setRes!18250 () Bool)

(declare-fun setNonEmpty!18250 () Bool)

(declare-fun setElem!18250 () Context!3194)

(declare-fun tp!678449 () Bool)

(declare-fun inv!33475 (Context!3194) Bool)

(assert (=> setNonEmpty!18250 (= setRes!18250 (and tp!678449 (inv!33475 setElem!18250) e!1390098))))

(declare-fun setRest!18250 () (InoxSet Context!3194))

(assert (=> setNonEmpty!18250 (= z!4055 ((_ map or) (store ((as const (Array Context!3194 Bool)) false) setElem!18250 true) setRest!18250))))

(declare-fun setIsEmpty!18250 () Bool)

(assert (=> setIsEmpty!18250 setRes!18250))

(declare-fun b!2173675 () Bool)

(declare-fun e!1390099 () Bool)

(assert (=> b!2173675 (= e!1390097 e!1390099)))

(declare-fun res!935388 () Bool)

(assert (=> b!2173675 (=> (not res!935388) (not e!1390099))))

(declare-fun lt!810525 () List!25294)

(assert (=> b!2173675 (= res!935388 (= lt!810525 lt!810540))))

(assert (=> b!2173675 (= lt!810525 (++!6386 (_1!14861 lt!810530) (_2!14861 lt!810530)))))

(declare-fun b!2173677 () Bool)

(assert (=> b!2173677 (= e!1390095 e!1390107)))

(declare-fun res!935393 () Bool)

(assert (=> b!2173677 (=> res!935393 e!1390107)))

(assert (=> b!2173677 (= res!935393 (<= lt!810545 (size!19694 (_1!14862 lt!810541))))))

(declare-fun size!19695 (List!25294) Int)

(assert (=> b!2173677 (= lt!810545 (size!19695 (_1!14861 lt!810530)))))

(declare-fun lt!810537 () Bool)

(assert (=> b!2173677 (= (matchR!2776 r!12534 lt!810529) lt!810537)))

(declare-fun lt!810524 () Unit!38273)

(declare-fun theoremZipperRegexEquiv!53 ((InoxSet Context!3194) List!25296 Regex!6027 List!25294) Unit!38273)

(assert (=> b!2173677 (= lt!810524 (theoremZipperRegexEquiv!53 z!4055 lt!810527 r!12534 lt!810529))))

(declare-fun matchZipper!143 ((InoxSet Context!3194) List!25294) Bool)

(assert (=> b!2173677 (= lt!810539 (matchZipper!143 z!4055 (_1!14861 lt!810530)))))

(declare-fun lt!810534 () Unit!38273)

(assert (=> b!2173677 (= lt!810534 (theoremZipperRegexEquiv!53 z!4055 lt!810527 r!12534 (_1!14861 lt!810530)))))

(declare-fun b!2173678 () Bool)

(declare-fun e!1390106 () Bool)

(declare-fun lt!810546 () tuple2!24982)

(assert (=> b!2173678 (= e!1390106 (matchR!2776 r!12534 (_1!14861 lt!810546)))))

(declare-fun b!2173679 () Bool)

(declare-fun e!1390096 () Bool)

(declare-fun tp!678453 () Bool)

(assert (=> b!2173679 (= e!1390096 (and (inv!33474 (c!344580 totalInput!977)) tp!678453))))

(declare-fun b!2173680 () Bool)

(declare-fun tp!678448 () Bool)

(declare-fun tp!678454 () Bool)

(assert (=> b!2173680 (= e!1390094 (and tp!678448 tp!678454))))

(declare-fun b!2173681 () Bool)

(declare-fun e!1390109 () Int)

(assert (=> b!2173681 (= e!1390109 (- lt!810549 1))))

(declare-fun b!2173682 () Bool)

(assert (=> b!2173682 (= e!1390099 (not e!1390093))))

(declare-fun res!935395 () Bool)

(assert (=> b!2173682 (=> res!935395 e!1390093)))

(declare-fun e!1390101 () Bool)

(assert (=> b!2173682 (= res!935395 e!1390101)))

(declare-fun res!935397 () Bool)

(assert (=> b!2173682 (=> (not res!935397) (not e!1390101))))

(assert (=> b!2173682 (= res!935397 (not lt!810537))))

(assert (=> b!2173682 (= lt!810537 (matchZipper!143 z!4055 lt!810529))))

(assert (=> b!2173682 e!1390106))

(declare-fun res!935389 () Bool)

(assert (=> b!2173682 (=> res!935389 e!1390106)))

(assert (=> b!2173682 (= res!935389 (isEmpty!14465 (_1!14861 lt!810546)))))

(declare-fun findLongestMatchInner!652 (Regex!6027 List!25294 Int List!25294 List!25294 Int) tuple2!24982)

(assert (=> b!2173682 (= lt!810546 (findLongestMatchInner!652 r!12534 Nil!25210 (size!19695 Nil!25210) lt!810540 lt!810540 (size!19695 lt!810540)))))

(declare-fun lt!810542 () Unit!38273)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!625 (Regex!6027 List!25294) Unit!38273)

(assert (=> b!2173682 (= lt!810542 (longestMatchIsAcceptedByMatchOrIsEmpty!625 r!12534 lt!810540))))

(declare-fun e!1390102 () Bool)

(assert (=> b!2173682 e!1390102))

(declare-fun res!935396 () Bool)

(assert (=> b!2173682 (=> res!935396 e!1390102)))

(declare-fun lt!810531 () Int)

(assert (=> b!2173682 (= res!935396 (<= lt!810531 0))))

(declare-fun lt!810548 () Int)

(declare-fun furthestNullablePosition!209 ((InoxSet Context!3194) Int BalanceConc!16088 Int Int) Int)

(assert (=> b!2173682 (= lt!810531 (+ 1 (- (furthestNullablePosition!209 z!4055 lt!810549 totalInput!977 lt!810544 lt!810548) lt!810549)))))

(declare-fun lt!810532 () Unit!38273)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!50 ((InoxSet Context!3194) Int BalanceConc!16088 Int) Unit!38273)

(assert (=> b!2173682 (= lt!810532 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!50 z!4055 lt!810549 totalInput!977 lt!810548))))

(assert (=> b!2173682 (= lt!810548 e!1390109)))

(declare-fun c!344579 () Bool)

(declare-fun nullableZipper!307 ((InoxSet Context!3194)) Bool)

(assert (=> b!2173682 (= c!344579 (nullableZipper!307 z!4055))))

(assert (=> b!2173682 (isPrefix!2143 (take!235 lt!810547 lt!810549) lt!810547)))

(declare-fun lt!810533 () Unit!38273)

(assert (=> b!2173682 (= lt!810533 (lemmaTakeIsPrefix!58 lt!810547 lt!810549))))

(assert (=> b!2173682 (isPrefix!2143 (_1!14861 lt!810530) lt!810525)))

(declare-fun lt!810543 () Unit!38273)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1426 (List!25294 List!25294) Unit!38273)

(assert (=> b!2173682 (= lt!810543 (lemmaConcatTwoListThenFirstIsPrefix!1426 (_1!14861 lt!810530) (_2!14861 lt!810530)))))

(assert (=> b!2173682 (isPrefix!2143 lt!810529 lt!810536)))

(declare-fun lt!810526 () Unit!38273)

(assert (=> b!2173682 (= lt!810526 (lemmaConcatTwoListThenFirstIsPrefix!1426 lt!810529 lt!810522))))

(declare-fun b!2173683 () Bool)

(declare-fun tp!678451 () Bool)

(assert (=> b!2173683 (= e!1390094 tp!678451)))

(declare-fun b!2173684 () Bool)

(assert (=> b!2173684 (= e!1390100 e!1390104)))

(declare-fun res!935394 () Bool)

(assert (=> b!2173684 (=> (not res!935394) (not e!1390104))))

(declare-fun isSuffix!694 (List!25294 List!25294) Bool)

(assert (=> b!2173684 (= res!935394 (isSuffix!694 lt!810540 lt!810547))))

(assert (=> b!2173684 (= lt!810547 (list!9668 totalInput!977))))

(assert (=> b!2173684 (= lt!810540 (list!9668 input!5540))))

(declare-fun b!2173685 () Bool)

(declare-fun tp_is_empty!9661 () Bool)

(assert (=> b!2173685 (= e!1390094 tp_is_empty!9661)))

(declare-fun b!2173686 () Bool)

(assert (=> b!2173686 (= e!1390102 (matchZipper!143 z!4055 (take!235 (drop!1245 lt!810547 lt!810549) lt!810531)))))

(declare-fun b!2173687 () Bool)

(assert (=> b!2173687 (= e!1390109 (- 1))))

(declare-fun res!935390 () Bool)

(assert (=> start!210866 (=> (not res!935390) (not e!1390103))))

(declare-fun validRegex!2303 (Regex!6027) Bool)

(assert (=> start!210866 (= res!935390 (validRegex!2303 r!12534))))

(assert (=> start!210866 e!1390103))

(assert (=> start!210866 e!1390094))

(declare-fun inv!33476 (BalanceConc!16088) Bool)

(assert (=> start!210866 (and (inv!33476 totalInput!977) e!1390096)))

(assert (=> start!210866 (and (inv!33476 input!5540) e!1390105)))

(declare-fun condSetEmpty!18250 () Bool)

(assert (=> start!210866 (= condSetEmpty!18250 (= z!4055 ((as const (Array Context!3194 Bool)) false)))))

(assert (=> start!210866 setRes!18250))

(declare-fun b!2173676 () Bool)

(declare-fun isEmpty!14466 (BalanceConc!16088) Bool)

(assert (=> b!2173676 (= e!1390101 (not (isEmpty!14466 (_1!14862 lt!810541))))))

(assert (= (and start!210866 res!935390) b!2173671))

(assert (= (and b!2173671 res!935398) b!2173684))

(assert (= (and b!2173684 res!935394) b!2173673))

(assert (= (and b!2173673 res!935387) b!2173675))

(assert (= (and b!2173675 res!935388) b!2173682))

(assert (= (and b!2173682 c!344579) b!2173681))

(assert (= (and b!2173682 (not c!344579)) b!2173687))

(assert (= (and b!2173682 (not res!935396)) b!2173686))

(assert (= (and b!2173682 (not res!935389)) b!2173678))

(assert (= (and b!2173682 res!935397) b!2173676))

(assert (= (and b!2173682 (not res!935395)) b!2173670))

(assert (= (and b!2173670 res!935391) b!2173666))

(assert (= (and b!2173670 (not res!935399)) b!2173677))

(assert (= (and b!2173677 (not res!935393)) b!2173674))

(assert (= (and b!2173674 (not res!935392)) b!2173672))

(get-info :version)

(assert (= (and start!210866 ((_ is ElementMatch!6027) r!12534)) b!2173685))

(assert (= (and start!210866 ((_ is Concat!10329) r!12534)) b!2173668))

(assert (= (and start!210866 ((_ is Star!6027) r!12534)) b!2173683))

(assert (= (and start!210866 ((_ is Union!6027) r!12534)) b!2173680))

(assert (= start!210866 b!2173679))

(assert (= start!210866 b!2173669))

(assert (= (and start!210866 condSetEmpty!18250) setIsEmpty!18250))

(assert (= (and start!210866 (not condSetEmpty!18250)) setNonEmpty!18250))

(assert (= setNonEmpty!18250 b!2173667))

(declare-fun m!2615129 () Bool)

(assert (=> start!210866 m!2615129))

(declare-fun m!2615131 () Bool)

(assert (=> start!210866 m!2615131))

(declare-fun m!2615133 () Bool)

(assert (=> start!210866 m!2615133))

(declare-fun m!2615135 () Bool)

(assert (=> b!2173672 m!2615135))

(declare-fun m!2615137 () Bool)

(assert (=> b!2173672 m!2615137))

(declare-fun m!2615139 () Bool)

(assert (=> b!2173672 m!2615139))

(declare-fun m!2615141 () Bool)

(assert (=> b!2173672 m!2615141))

(declare-fun m!2615143 () Bool)

(assert (=> b!2173677 m!2615143))

(declare-fun m!2615145 () Bool)

(assert (=> b!2173677 m!2615145))

(declare-fun m!2615147 () Bool)

(assert (=> b!2173677 m!2615147))

(declare-fun m!2615149 () Bool)

(assert (=> b!2173677 m!2615149))

(declare-fun m!2615151 () Bool)

(assert (=> b!2173677 m!2615151))

(declare-fun m!2615153 () Bool)

(assert (=> b!2173677 m!2615153))

(declare-fun m!2615155 () Bool)

(assert (=> b!2173686 m!2615155))

(assert (=> b!2173686 m!2615155))

(declare-fun m!2615157 () Bool)

(assert (=> b!2173686 m!2615157))

(assert (=> b!2173686 m!2615157))

(declare-fun m!2615159 () Bool)

(assert (=> b!2173686 m!2615159))

(declare-fun m!2615161 () Bool)

(assert (=> b!2173676 m!2615161))

(declare-fun m!2615163 () Bool)

(assert (=> b!2173674 m!2615163))

(assert (=> b!2173674 m!2615155))

(declare-fun m!2615165 () Bool)

(assert (=> b!2173670 m!2615165))

(declare-fun m!2615167 () Bool)

(assert (=> b!2173666 m!2615167))

(declare-fun m!2615169 () Bool)

(assert (=> b!2173675 m!2615169))

(declare-fun m!2615171 () Bool)

(assert (=> b!2173678 m!2615171))

(declare-fun m!2615173 () Bool)

(assert (=> b!2173671 m!2615173))

(declare-fun m!2615175 () Bool)

(assert (=> b!2173671 m!2615175))

(declare-fun m!2615177 () Bool)

(assert (=> b!2173679 m!2615177))

(declare-fun m!2615179 () Bool)

(assert (=> b!2173684 m!2615179))

(declare-fun m!2615181 () Bool)

(assert (=> b!2173684 m!2615181))

(declare-fun m!2615183 () Bool)

(assert (=> b!2173684 m!2615183))

(declare-fun m!2615185 () Bool)

(assert (=> b!2173673 m!2615185))

(declare-fun m!2615187 () Bool)

(assert (=> b!2173673 m!2615187))

(declare-fun m!2615189 () Bool)

(assert (=> b!2173673 m!2615189))

(declare-fun m!2615191 () Bool)

(assert (=> b!2173673 m!2615191))

(declare-fun m!2615193 () Bool)

(assert (=> b!2173673 m!2615193))

(declare-fun m!2615195 () Bool)

(assert (=> b!2173673 m!2615195))

(declare-fun m!2615197 () Bool)

(assert (=> b!2173673 m!2615197))

(declare-fun m!2615199 () Bool)

(assert (=> b!2173682 m!2615199))

(declare-fun m!2615201 () Bool)

(assert (=> b!2173682 m!2615201))

(declare-fun m!2615203 () Bool)

(assert (=> b!2173682 m!2615203))

(declare-fun m!2615205 () Bool)

(assert (=> b!2173682 m!2615205))

(assert (=> b!2173682 m!2615199))

(declare-fun m!2615207 () Bool)

(assert (=> b!2173682 m!2615207))

(declare-fun m!2615209 () Bool)

(assert (=> b!2173682 m!2615209))

(declare-fun m!2615211 () Bool)

(assert (=> b!2173682 m!2615211))

(declare-fun m!2615213 () Bool)

(assert (=> b!2173682 m!2615213))

(declare-fun m!2615215 () Bool)

(assert (=> b!2173682 m!2615215))

(declare-fun m!2615217 () Bool)

(assert (=> b!2173682 m!2615217))

(declare-fun m!2615219 () Bool)

(assert (=> b!2173682 m!2615219))

(declare-fun m!2615221 () Bool)

(assert (=> b!2173682 m!2615221))

(declare-fun m!2615223 () Bool)

(assert (=> b!2173682 m!2615223))

(declare-fun m!2615225 () Bool)

(assert (=> b!2173682 m!2615225))

(assert (=> b!2173682 m!2615205))

(assert (=> b!2173682 m!2615217))

(declare-fun m!2615227 () Bool)

(assert (=> b!2173682 m!2615227))

(declare-fun m!2615229 () Bool)

(assert (=> b!2173682 m!2615229))

(declare-fun m!2615231 () Bool)

(assert (=> setNonEmpty!18250 m!2615231))

(declare-fun m!2615233 () Bool)

(assert (=> b!2173669 m!2615233))

(check-sat (not b!2173683) (not b!2173672) (not b!2173667) (not b!2173670) (not b!2173686) (not b!2173684) (not b!2173680) (not b!2173669) (not b!2173666) (not b!2173673) (not b!2173676) tp_is_empty!9661 (not setNonEmpty!18250) (not start!210866) (not b!2173682) (not b!2173677) (not b!2173671) (not b!2173675) (not b!2173668) (not b!2173674) (not b!2173678) (not b!2173679))
(check-sat)
(get-model)

(declare-fun d!650635 () Bool)

(assert (=> d!650635 (= (isEmpty!14465 (_1!14861 lt!810530)) ((_ is Nil!25210) (_1!14861 lt!810530)))))

(assert (=> b!2173666 d!650635))

(declare-fun b!2173697 () Bool)

(declare-fun e!1390115 () List!25294)

(assert (=> b!2173697 (= e!1390115 (Cons!25210 (h!30611 (_1!14861 lt!810530)) (++!6386 (t!197862 (_1!14861 lt!810530)) (_2!14861 lt!810530))))))

(declare-fun b!2173699 () Bool)

(declare-fun e!1390114 () Bool)

(declare-fun lt!810553 () List!25294)

(assert (=> b!2173699 (= e!1390114 (or (not (= (_2!14861 lt!810530) Nil!25210)) (= lt!810553 (_1!14861 lt!810530))))))

(declare-fun b!2173698 () Bool)

(declare-fun res!935405 () Bool)

(assert (=> b!2173698 (=> (not res!935405) (not e!1390114))))

(assert (=> b!2173698 (= res!935405 (= (size!19695 lt!810553) (+ (size!19695 (_1!14861 lt!810530)) (size!19695 (_2!14861 lt!810530)))))))

(declare-fun d!650637 () Bool)

(assert (=> d!650637 e!1390114))

(declare-fun res!935404 () Bool)

(assert (=> d!650637 (=> (not res!935404) (not e!1390114))))

(declare-fun content!3427 (List!25294) (InoxSet C!12200))

(assert (=> d!650637 (= res!935404 (= (content!3427 lt!810553) ((_ map or) (content!3427 (_1!14861 lt!810530)) (content!3427 (_2!14861 lt!810530)))))))

(assert (=> d!650637 (= lt!810553 e!1390115)))

(declare-fun c!344584 () Bool)

(assert (=> d!650637 (= c!344584 ((_ is Nil!25210) (_1!14861 lt!810530)))))

(assert (=> d!650637 (= (++!6386 (_1!14861 lt!810530) (_2!14861 lt!810530)) lt!810553)))

(declare-fun b!2173696 () Bool)

(assert (=> b!2173696 (= e!1390115 (_2!14861 lt!810530))))

(assert (= (and d!650637 c!344584) b!2173696))

(assert (= (and d!650637 (not c!344584)) b!2173697))

(assert (= (and d!650637 res!935404) b!2173698))

(assert (= (and b!2173698 res!935405) b!2173699))

(declare-fun m!2615235 () Bool)

(assert (=> b!2173697 m!2615235))

(declare-fun m!2615237 () Bool)

(assert (=> b!2173698 m!2615237))

(assert (=> b!2173698 m!2615143))

(declare-fun m!2615239 () Bool)

(assert (=> b!2173698 m!2615239))

(declare-fun m!2615241 () Bool)

(assert (=> d!650637 m!2615241))

(declare-fun m!2615243 () Bool)

(assert (=> d!650637 m!2615243))

(declare-fun m!2615245 () Bool)

(assert (=> d!650637 m!2615245))

(assert (=> b!2173675 d!650637))

(declare-fun d!650639 () Bool)

(declare-fun c!344587 () Bool)

(assert (=> d!650639 (= c!344587 (isEmpty!14465 (take!235 (drop!1245 lt!810547 lt!810549) lt!810531)))))

(declare-fun e!1390118 () Bool)

(assert (=> d!650639 (= (matchZipper!143 z!4055 (take!235 (drop!1245 lt!810547 lt!810549) lt!810531)) e!1390118)))

(declare-fun b!2173704 () Bool)

(assert (=> b!2173704 (= e!1390118 (nullableZipper!307 z!4055))))

(declare-fun b!2173705 () Bool)

(declare-fun derivationStepZipper!130 ((InoxSet Context!3194) C!12200) (InoxSet Context!3194))

(declare-fun head!4654 (List!25294) C!12200)

(declare-fun tail!3126 (List!25294) List!25294)

(assert (=> b!2173705 (= e!1390118 (matchZipper!143 (derivationStepZipper!130 z!4055 (head!4654 (take!235 (drop!1245 lt!810547 lt!810549) lt!810531))) (tail!3126 (take!235 (drop!1245 lt!810547 lt!810549) lt!810531))))))

(assert (= (and d!650639 c!344587) b!2173704))

(assert (= (and d!650639 (not c!344587)) b!2173705))

(assert (=> d!650639 m!2615157))

(declare-fun m!2615247 () Bool)

(assert (=> d!650639 m!2615247))

(assert (=> b!2173704 m!2615211))

(assert (=> b!2173705 m!2615157))

(declare-fun m!2615249 () Bool)

(assert (=> b!2173705 m!2615249))

(assert (=> b!2173705 m!2615249))

(declare-fun m!2615251 () Bool)

(assert (=> b!2173705 m!2615251))

(assert (=> b!2173705 m!2615157))

(declare-fun m!2615253 () Bool)

(assert (=> b!2173705 m!2615253))

(assert (=> b!2173705 m!2615251))

(assert (=> b!2173705 m!2615253))

(declare-fun m!2615255 () Bool)

(assert (=> b!2173705 m!2615255))

(assert (=> b!2173686 d!650639))

(declare-fun b!2173748 () Bool)

(declare-fun e!1390144 () Int)

(assert (=> b!2173748 (= e!1390144 (size!19695 (drop!1245 lt!810547 lt!810549)))))

(declare-fun d!650641 () Bool)

(declare-fun e!1390142 () Bool)

(assert (=> d!650641 e!1390142))

(declare-fun res!935424 () Bool)

(assert (=> d!650641 (=> (not res!935424) (not e!1390142))))

(declare-fun lt!810558 () List!25294)

(assert (=> d!650641 (= res!935424 (= ((_ map implies) (content!3427 lt!810558) (content!3427 (drop!1245 lt!810547 lt!810549))) ((as const (InoxSet C!12200)) true)))))

(declare-fun e!1390141 () List!25294)

(assert (=> d!650641 (= lt!810558 e!1390141)))

(declare-fun c!344600 () Bool)

(assert (=> d!650641 (= c!344600 (or ((_ is Nil!25210) (drop!1245 lt!810547 lt!810549)) (<= lt!810531 0)))))

(assert (=> d!650641 (= (take!235 (drop!1245 lt!810547 lt!810549) lt!810531) lt!810558)))

(declare-fun b!2173749 () Bool)

(declare-fun e!1390143 () Int)

(assert (=> b!2173749 (= e!1390143 e!1390144)))

(declare-fun c!344602 () Bool)

(assert (=> b!2173749 (= c!344602 (>= lt!810531 (size!19695 (drop!1245 lt!810547 lt!810549))))))

(declare-fun b!2173750 () Bool)

(assert (=> b!2173750 (= e!1390141 Nil!25210)))

(declare-fun b!2173751 () Bool)

(assert (=> b!2173751 (= e!1390144 lt!810531)))

(declare-fun b!2173752 () Bool)

(assert (=> b!2173752 (= e!1390141 (Cons!25210 (h!30611 (drop!1245 lt!810547 lt!810549)) (take!235 (t!197862 (drop!1245 lt!810547 lt!810549)) (- lt!810531 1))))))

(declare-fun b!2173753 () Bool)

(assert (=> b!2173753 (= e!1390143 0)))

(declare-fun b!2173754 () Bool)

(assert (=> b!2173754 (= e!1390142 (= (size!19695 lt!810558) e!1390143))))

(declare-fun c!344601 () Bool)

(assert (=> b!2173754 (= c!344601 (<= lt!810531 0))))

(assert (= (and d!650641 c!344600) b!2173750))

(assert (= (and d!650641 (not c!344600)) b!2173752))

(assert (= (and d!650641 res!935424) b!2173754))

(assert (= (and b!2173754 c!344601) b!2173753))

(assert (= (and b!2173754 (not c!344601)) b!2173749))

(assert (= (and b!2173749 c!344602) b!2173748))

(assert (= (and b!2173749 (not c!344602)) b!2173751))

(declare-fun m!2615257 () Bool)

(assert (=> d!650641 m!2615257))

(assert (=> d!650641 m!2615155))

(declare-fun m!2615259 () Bool)

(assert (=> d!650641 m!2615259))

(assert (=> b!2173749 m!2615155))

(declare-fun m!2615261 () Bool)

(assert (=> b!2173749 m!2615261))

(assert (=> b!2173748 m!2615155))

(assert (=> b!2173748 m!2615261))

(declare-fun m!2615263 () Bool)

(assert (=> b!2173754 m!2615263))

(declare-fun m!2615265 () Bool)

(assert (=> b!2173752 m!2615265))

(assert (=> b!2173686 d!650641))

(declare-fun b!2173826 () Bool)

(declare-fun e!1390187 () Bool)

(declare-fun lt!810567 () List!25294)

(declare-fun e!1390186 () Int)

(assert (=> b!2173826 (= e!1390187 (= (size!19695 lt!810567) e!1390186))))

(declare-fun c!344632 () Bool)

(assert (=> b!2173826 (= c!344632 (<= lt!810549 0))))

(declare-fun b!2173827 () Bool)

(declare-fun e!1390184 () List!25294)

(assert (=> b!2173827 (= e!1390184 (drop!1245 (t!197862 lt!810547) (- lt!810549 1)))))

(declare-fun b!2173828 () Bool)

(assert (=> b!2173828 (= e!1390184 lt!810547)))

(declare-fun b!2173829 () Bool)

(declare-fun e!1390188 () Int)

(assert (=> b!2173829 (= e!1390186 e!1390188)))

(declare-fun c!344633 () Bool)

(declare-fun call!130430 () Int)

(assert (=> b!2173829 (= c!344633 (>= lt!810549 call!130430))))

(declare-fun b!2173830 () Bool)

(declare-fun e!1390182 () List!25294)

(assert (=> b!2173830 (= e!1390182 e!1390184)))

(declare-fun c!344631 () Bool)

(assert (=> b!2173830 (= c!344631 (<= lt!810549 0))))

(declare-fun b!2173831 () Bool)

(assert (=> b!2173831 (= e!1390186 call!130430)))

(declare-fun bm!130425 () Bool)

(assert (=> bm!130425 (= call!130430 (size!19695 lt!810547))))

(declare-fun b!2173832 () Bool)

(assert (=> b!2173832 (= e!1390182 Nil!25210)))

(declare-fun d!650645 () Bool)

(assert (=> d!650645 e!1390187))

(declare-fun res!935440 () Bool)

(assert (=> d!650645 (=> (not res!935440) (not e!1390187))))

(assert (=> d!650645 (= res!935440 (= ((_ map implies) (content!3427 lt!810567) (content!3427 lt!810547)) ((as const (InoxSet C!12200)) true)))))

(assert (=> d!650645 (= lt!810567 e!1390182)))

(declare-fun c!344634 () Bool)

(assert (=> d!650645 (= c!344634 ((_ is Nil!25210) lt!810547))))

(assert (=> d!650645 (= (drop!1245 lt!810547 lt!810549) lt!810567)))

(declare-fun b!2173833 () Bool)

(assert (=> b!2173833 (= e!1390188 0)))

(declare-fun b!2173834 () Bool)

(assert (=> b!2173834 (= e!1390188 (- call!130430 lt!810549))))

(assert (= (and d!650645 c!344634) b!2173832))

(assert (= (and d!650645 (not c!344634)) b!2173830))

(assert (= (and b!2173830 c!344631) b!2173828))

(assert (= (and b!2173830 (not c!344631)) b!2173827))

(assert (= (and d!650645 res!935440) b!2173826))

(assert (= (and b!2173826 c!344632) b!2173831))

(assert (= (and b!2173826 (not c!344632)) b!2173829))

(assert (= (and b!2173829 c!344633) b!2173833))

(assert (= (and b!2173829 (not c!344633)) b!2173834))

(assert (= (or b!2173831 b!2173829 b!2173834) bm!130425))

(declare-fun m!2615289 () Bool)

(assert (=> b!2173826 m!2615289))

(declare-fun m!2615291 () Bool)

(assert (=> b!2173827 m!2615291))

(declare-fun m!2615293 () Bool)

(assert (=> bm!130425 m!2615293))

(declare-fun m!2615295 () Bool)

(assert (=> d!650645 m!2615295))

(declare-fun m!2615297 () Bool)

(assert (=> d!650645 m!2615297))

(assert (=> b!2173686 d!650645))

(declare-fun d!650651 () Bool)

(declare-fun lambda!81829 () Int)

(declare-fun forall!5172 (List!25295 Int) Bool)

(assert (=> d!650651 (= (inv!33475 setElem!18250) (forall!5172 (exprs!2097 setElem!18250) lambda!81829))))

(declare-fun bs!447040 () Bool)

(assert (= bs!447040 d!650651))

(declare-fun m!2615463 () Bool)

(assert (=> bs!447040 m!2615463))

(assert (=> setNonEmpty!18250 d!650651))

(declare-fun d!650707 () Bool)

(declare-fun e!1390247 () Bool)

(assert (=> d!650707 e!1390247))

(declare-fun res!935483 () Bool)

(assert (=> d!650707 (=> res!935483 e!1390247)))

(declare-fun lt!810632 () Bool)

(assert (=> d!650707 (= res!935483 (not lt!810632))))

(assert (=> d!650707 (= lt!810632 (= lt!810540 (drop!1245 lt!810547 (- (size!19695 lt!810547) (size!19695 lt!810540)))))))

(assert (=> d!650707 (= (isSuffix!694 lt!810540 lt!810547) lt!810632)))

(declare-fun b!2173931 () Bool)

(assert (=> b!2173931 (= e!1390247 (>= (size!19695 lt!810547) (size!19695 lt!810540)))))

(assert (= (and d!650707 (not res!935483)) b!2173931))

(assert (=> d!650707 m!2615293))

(assert (=> d!650707 m!2615199))

(declare-fun m!2615465 () Bool)

(assert (=> d!650707 m!2615465))

(assert (=> b!2173931 m!2615293))

(assert (=> b!2173931 m!2615199))

(assert (=> b!2173684 d!650707))

(declare-fun d!650709 () Bool)

(declare-fun list!9670 (Conc!8163) List!25294)

(assert (=> d!650709 (= (list!9668 totalInput!977) (list!9670 (c!344580 totalInput!977)))))

(declare-fun bs!447041 () Bool)

(assert (= bs!447041 d!650709))

(declare-fun m!2615467 () Bool)

(assert (=> bs!447041 m!2615467))

(assert (=> b!2173684 d!650709))

(declare-fun d!650711 () Bool)

(assert (=> d!650711 (= (list!9668 input!5540) (list!9670 (c!344580 input!5540)))))

(declare-fun bs!447042 () Bool)

(assert (= bs!447042 d!650711))

(declare-fun m!2615469 () Bool)

(assert (=> bs!447042 m!2615469))

(assert (=> b!2173684 d!650711))

(declare-fun b!2173932 () Bool)

(declare-fun e!1390251 () Int)

(assert (=> b!2173932 (= e!1390251 (size!19695 lt!810550))))

(declare-fun d!650713 () Bool)

(declare-fun e!1390249 () Bool)

(assert (=> d!650713 e!1390249))

(declare-fun res!935484 () Bool)

(assert (=> d!650713 (=> (not res!935484) (not e!1390249))))

(declare-fun lt!810633 () List!25294)

(assert (=> d!650713 (= res!935484 (= ((_ map implies) (content!3427 lt!810633) (content!3427 lt!810550)) ((as const (InoxSet C!12200)) true)))))

(declare-fun e!1390248 () List!25294)

(assert (=> d!650713 (= lt!810633 e!1390248)))

(declare-fun c!344662 () Bool)

(assert (=> d!650713 (= c!344662 (or ((_ is Nil!25210) lt!810550) (<= lt!810545 0)))))

(assert (=> d!650713 (= (take!235 lt!810550 lt!810545) lt!810633)))

(declare-fun b!2173933 () Bool)

(declare-fun e!1390250 () Int)

(assert (=> b!2173933 (= e!1390250 e!1390251)))

(declare-fun c!344664 () Bool)

(assert (=> b!2173933 (= c!344664 (>= lt!810545 (size!19695 lt!810550)))))

(declare-fun b!2173934 () Bool)

(assert (=> b!2173934 (= e!1390248 Nil!25210)))

(declare-fun b!2173935 () Bool)

(assert (=> b!2173935 (= e!1390251 lt!810545)))

(declare-fun b!2173936 () Bool)

(assert (=> b!2173936 (= e!1390248 (Cons!25210 (h!30611 lt!810550) (take!235 (t!197862 lt!810550) (- lt!810545 1))))))

(declare-fun b!2173937 () Bool)

(assert (=> b!2173937 (= e!1390250 0)))

(declare-fun b!2173938 () Bool)

(assert (=> b!2173938 (= e!1390249 (= (size!19695 lt!810633) e!1390250))))

(declare-fun c!344663 () Bool)

(assert (=> b!2173938 (= c!344663 (<= lt!810545 0))))

(assert (= (and d!650713 c!344662) b!2173934))

(assert (= (and d!650713 (not c!344662)) b!2173936))

(assert (= (and d!650713 res!935484) b!2173938))

(assert (= (and b!2173938 c!344663) b!2173937))

(assert (= (and b!2173938 (not c!344663)) b!2173933))

(assert (= (and b!2173933 c!344664) b!2173932))

(assert (= (and b!2173933 (not c!344664)) b!2173935))

(declare-fun m!2615471 () Bool)

(assert (=> d!650713 m!2615471))

(declare-fun m!2615473 () Bool)

(assert (=> d!650713 m!2615473))

(declare-fun m!2615475 () Bool)

(assert (=> b!2173933 m!2615475))

(assert (=> b!2173932 m!2615475))

(declare-fun m!2615477 () Bool)

(assert (=> b!2173938 m!2615477))

(declare-fun m!2615479 () Bool)

(assert (=> b!2173936 m!2615479))

(assert (=> b!2173674 d!650713))

(assert (=> b!2173674 d!650645))

(declare-fun d!650715 () Bool)

(assert (=> d!650715 (= (list!9668 (_1!14862 lt!810541)) (list!9670 (c!344580 (_1!14862 lt!810541))))))

(declare-fun bs!447043 () Bool)

(assert (= bs!447043 d!650715))

(declare-fun m!2615481 () Bool)

(assert (=> bs!447043 m!2615481))

(assert (=> b!2173673 d!650715))

(declare-fun d!650717 () Bool)

(assert (=> d!650717 (= (list!9668 (_2!14862 lt!810541)) (list!9670 (c!344580 (_2!14862 lt!810541))))))

(declare-fun bs!447044 () Bool)

(assert (= bs!447044 d!650717))

(declare-fun m!2615483 () Bool)

(assert (=> bs!447044 m!2615483))

(assert (=> b!2173673 d!650717))

(declare-fun d!650719 () Bool)

(declare-fun lt!810644 () Int)

(assert (=> d!650719 (= lt!810644 (size!19695 (list!9668 totalInput!977)))))

(declare-fun size!19697 (Conc!8163) Int)

(assert (=> d!650719 (= lt!810644 (size!19697 (c!344580 totalInput!977)))))

(assert (=> d!650719 (= (size!19694 totalInput!977) lt!810644)))

(declare-fun bs!447045 () Bool)

(assert (= bs!447045 d!650719))

(assert (=> bs!447045 m!2615181))

(assert (=> bs!447045 m!2615181))

(declare-fun m!2615485 () Bool)

(assert (=> bs!447045 m!2615485))

(declare-fun m!2615487 () Bool)

(assert (=> bs!447045 m!2615487))

(assert (=> b!2173673 d!650719))

(declare-fun d!650721 () Bool)

(declare-fun lt!810671 () tuple2!24982)

(assert (=> d!650721 (= (++!6386 (_1!14861 lt!810671) (_2!14861 lt!810671)) lt!810540)))

(declare-fun sizeTr!117 (List!25294 Int) Int)

(assert (=> d!650721 (= lt!810671 (findLongestMatchInner!652 r!12534 Nil!25210 0 lt!810540 lt!810540 (sizeTr!117 lt!810540 0)))))

(declare-fun lt!810676 () Unit!38273)

(declare-fun lt!810670 () Unit!38273)

(assert (=> d!650721 (= lt!810676 lt!810670)))

(declare-fun lt!810672 () List!25294)

(declare-fun lt!810677 () Int)

(assert (=> d!650721 (= (sizeTr!117 lt!810672 lt!810677) (+ (size!19695 lt!810672) lt!810677))))

(declare-fun lemmaSizeTrEqualsSize!116 (List!25294 Int) Unit!38273)

(assert (=> d!650721 (= lt!810670 (lemmaSizeTrEqualsSize!116 lt!810672 lt!810677))))

(assert (=> d!650721 (= lt!810677 0)))

(assert (=> d!650721 (= lt!810672 Nil!25210)))

(declare-fun lt!810673 () Unit!38273)

(declare-fun lt!810674 () Unit!38273)

(assert (=> d!650721 (= lt!810673 lt!810674)))

(declare-fun lt!810675 () Int)

(assert (=> d!650721 (= (sizeTr!117 lt!810540 lt!810675) (+ (size!19695 lt!810540) lt!810675))))

(assert (=> d!650721 (= lt!810674 (lemmaSizeTrEqualsSize!116 lt!810540 lt!810675))))

(assert (=> d!650721 (= lt!810675 0)))

(assert (=> d!650721 (validRegex!2303 r!12534)))

(assert (=> d!650721 (= (findLongestMatch!581 r!12534 lt!810540) lt!810671)))

(declare-fun bs!447048 () Bool)

(assert (= bs!447048 d!650721))

(declare-fun m!2615515 () Bool)

(assert (=> bs!447048 m!2615515))

(declare-fun m!2615517 () Bool)

(assert (=> bs!447048 m!2615517))

(declare-fun m!2615519 () Bool)

(assert (=> bs!447048 m!2615519))

(declare-fun m!2615521 () Bool)

(assert (=> bs!447048 m!2615521))

(declare-fun m!2615523 () Bool)

(assert (=> bs!447048 m!2615523))

(assert (=> bs!447048 m!2615521))

(declare-fun m!2615525 () Bool)

(assert (=> bs!447048 m!2615525))

(assert (=> bs!447048 m!2615129))

(declare-fun m!2615527 () Bool)

(assert (=> bs!447048 m!2615527))

(declare-fun m!2615529 () Bool)

(assert (=> bs!447048 m!2615529))

(assert (=> bs!447048 m!2615199))

(assert (=> b!2173673 d!650721))

(declare-fun d!650733 () Bool)

(declare-fun lt!810678 () Int)

(assert (=> d!650733 (= lt!810678 (size!19695 (list!9668 input!5540)))))

(assert (=> d!650733 (= lt!810678 (size!19697 (c!344580 input!5540)))))

(assert (=> d!650733 (= (size!19694 input!5540) lt!810678)))

(declare-fun bs!447049 () Bool)

(assert (= bs!447049 d!650733))

(assert (=> bs!447049 m!2615183))

(assert (=> bs!447049 m!2615183))

(declare-fun m!2615531 () Bool)

(assert (=> bs!447049 m!2615531))

(declare-fun m!2615533 () Bool)

(assert (=> bs!447049 m!2615533))

(assert (=> b!2173673 d!650733))

(declare-fun b!2173968 () Bool)

(declare-fun e!1390267 () List!25294)

(assert (=> b!2173968 (= e!1390267 (Cons!25210 (h!30611 lt!810529) (++!6386 (t!197862 lt!810529) lt!810522)))))

(declare-fun lt!810679 () List!25294)

(declare-fun e!1390266 () Bool)

(declare-fun b!2173970 () Bool)

(assert (=> b!2173970 (= e!1390266 (or (not (= lt!810522 Nil!25210)) (= lt!810679 lt!810529)))))

(declare-fun b!2173969 () Bool)

(declare-fun res!935494 () Bool)

(assert (=> b!2173969 (=> (not res!935494) (not e!1390266))))

(assert (=> b!2173969 (= res!935494 (= (size!19695 lt!810679) (+ (size!19695 lt!810529) (size!19695 lt!810522))))))

(declare-fun d!650735 () Bool)

(assert (=> d!650735 e!1390266))

(declare-fun res!935493 () Bool)

(assert (=> d!650735 (=> (not res!935493) (not e!1390266))))

(assert (=> d!650735 (= res!935493 (= (content!3427 lt!810679) ((_ map or) (content!3427 lt!810529) (content!3427 lt!810522))))))

(assert (=> d!650735 (= lt!810679 e!1390267)))

(declare-fun c!344675 () Bool)

(assert (=> d!650735 (= c!344675 ((_ is Nil!25210) lt!810529))))

(assert (=> d!650735 (= (++!6386 lt!810529 lt!810522) lt!810679)))

(declare-fun b!2173967 () Bool)

(assert (=> b!2173967 (= e!1390267 lt!810522)))

(assert (= (and d!650735 c!344675) b!2173967))

(assert (= (and d!650735 (not c!344675)) b!2173968))

(assert (= (and d!650735 res!935493) b!2173969))

(assert (= (and b!2173969 res!935494) b!2173970))

(declare-fun m!2615535 () Bool)

(assert (=> b!2173968 m!2615535))

(declare-fun m!2615537 () Bool)

(assert (=> b!2173969 m!2615537))

(declare-fun m!2615539 () Bool)

(assert (=> b!2173969 m!2615539))

(declare-fun m!2615541 () Bool)

(assert (=> b!2173969 m!2615541))

(declare-fun m!2615543 () Bool)

(assert (=> d!650735 m!2615543))

(declare-fun m!2615545 () Bool)

(assert (=> d!650735 m!2615545))

(declare-fun m!2615547 () Bool)

(assert (=> d!650735 m!2615547))

(assert (=> b!2173673 d!650735))

(declare-fun b!2173979 () Bool)

(declare-fun e!1390273 () tuple2!24984)

(declare-fun call!130441 () tuple2!24984)

(assert (=> b!2173979 (= e!1390273 call!130441)))

(declare-fun d!650737 () Bool)

(declare-fun lt!810691 () tuple2!24984)

(assert (=> d!650737 (= (++!6386 (list!9668 (_1!14862 lt!810691)) (list!9668 (_2!14862 lt!810691))) (list!9668 input!5540))))

(assert (=> d!650737 (= lt!810691 e!1390273)))

(declare-fun c!344680 () Bool)

(declare-fun lt!810688 () Int)

(assert (=> d!650737 (= c!344680 (< lt!810688 0))))

(declare-fun lt!810689 () Int)

(declare-fun e!1390272 () Int)

(declare-fun lt!810690 () Int)

(assert (=> d!650737 (= lt!810688 (+ (- (furthestNullablePosition!209 z!4055 lt!810690 totalInput!977 lt!810689 e!1390272) lt!810690) 1))))

(declare-fun c!344681 () Bool)

(assert (=> d!650737 (= c!344681 (nullableZipper!307 z!4055))))

(assert (=> d!650737 (= lt!810690 (- lt!810689 (size!19694 input!5540)))))

(assert (=> d!650737 (= lt!810689 (size!19694 totalInput!977))))

(assert (=> d!650737 (isSuffix!694 (list!9668 input!5540) (list!9668 totalInput!977))))

(assert (=> d!650737 (= (findLongestMatchZipperSequenceV3!76 z!4055 input!5540 totalInput!977) lt!810691)))

(declare-fun b!2173980 () Bool)

(assert (=> b!2173980 (= e!1390272 (- 1))))

(declare-fun b!2173981 () Bool)

(assert (=> b!2173981 (= e!1390272 (- lt!810690 1))))

(declare-fun bm!130436 () Bool)

(declare-fun splitAt!40 (BalanceConc!16088 Int) tuple2!24984)

(assert (=> bm!130436 (= call!130441 (splitAt!40 input!5540 (ite c!344680 0 lt!810688)))))

(declare-fun b!2173982 () Bool)

(assert (=> b!2173982 (= e!1390273 call!130441)))

(assert (= (and d!650737 c!344681) b!2173981))

(assert (= (and d!650737 (not c!344681)) b!2173980))

(assert (= (and d!650737 c!344680) b!2173982))

(assert (= (and d!650737 (not c!344680)) b!2173979))

(assert (= (or b!2173982 b!2173979) bm!130436))

(declare-fun m!2615549 () Bool)

(assert (=> d!650737 m!2615549))

(declare-fun m!2615551 () Bool)

(assert (=> d!650737 m!2615551))

(declare-fun m!2615553 () Bool)

(assert (=> d!650737 m!2615553))

(assert (=> d!650737 m!2615181))

(assert (=> d!650737 m!2615189))

(assert (=> d!650737 m!2615183))

(assert (=> d!650737 m!2615181))

(declare-fun m!2615555 () Bool)

(assert (=> d!650737 m!2615555))

(declare-fun m!2615557 () Bool)

(assert (=> d!650737 m!2615557))

(assert (=> d!650737 m!2615183))

(assert (=> d!650737 m!2615551))

(assert (=> d!650737 m!2615549))

(assert (=> d!650737 m!2615187))

(assert (=> d!650737 m!2615211))

(declare-fun m!2615559 () Bool)

(assert (=> bm!130436 m!2615559))

(assert (=> b!2173673 d!650737))

(declare-fun d!650739 () Bool)

(declare-fun lt!810694 () Int)

(assert (=> d!650739 (>= lt!810694 0)))

(declare-fun e!1390276 () Int)

(assert (=> d!650739 (= lt!810694 e!1390276)))

(declare-fun c!344684 () Bool)

(assert (=> d!650739 (= c!344684 ((_ is Nil!25210) Nil!25210))))

(assert (=> d!650739 (= (size!19695 Nil!25210) lt!810694)))

(declare-fun b!2173987 () Bool)

(assert (=> b!2173987 (= e!1390276 0)))

(declare-fun b!2173988 () Bool)

(assert (=> b!2173988 (= e!1390276 (+ 1 (size!19695 (t!197862 Nil!25210))))))

(assert (= (and d!650739 c!344684) b!2173987))

(assert (= (and d!650739 (not c!344684)) b!2173988))

(declare-fun m!2615561 () Bool)

(assert (=> b!2173988 m!2615561))

(assert (=> b!2173682 d!650739))

(declare-fun b!2173997 () Bool)

(declare-fun e!1390285 () Bool)

(declare-fun e!1390284 () Bool)

(assert (=> b!2173997 (= e!1390285 e!1390284)))

(declare-fun res!935503 () Bool)

(assert (=> b!2173997 (=> (not res!935503) (not e!1390284))))

(assert (=> b!2173997 (= res!935503 (not ((_ is Nil!25210) lt!810525)))))

(declare-fun b!2174000 () Bool)

(declare-fun e!1390283 () Bool)

(assert (=> b!2174000 (= e!1390283 (>= (size!19695 lt!810525) (size!19695 (_1!14861 lt!810530))))))

(declare-fun b!2173999 () Bool)

(assert (=> b!2173999 (= e!1390284 (isPrefix!2143 (tail!3126 (_1!14861 lt!810530)) (tail!3126 lt!810525)))))

(declare-fun d!650741 () Bool)

(assert (=> d!650741 e!1390283))

(declare-fun res!935505 () Bool)

(assert (=> d!650741 (=> res!935505 e!1390283)))

(declare-fun lt!810697 () Bool)

(assert (=> d!650741 (= res!935505 (not lt!810697))))

(assert (=> d!650741 (= lt!810697 e!1390285)))

(declare-fun res!935506 () Bool)

(assert (=> d!650741 (=> res!935506 e!1390285)))

(assert (=> d!650741 (= res!935506 ((_ is Nil!25210) (_1!14861 lt!810530)))))

(assert (=> d!650741 (= (isPrefix!2143 (_1!14861 lt!810530) lt!810525) lt!810697)))

(declare-fun b!2173998 () Bool)

(declare-fun res!935504 () Bool)

(assert (=> b!2173998 (=> (not res!935504) (not e!1390284))))

(assert (=> b!2173998 (= res!935504 (= (head!4654 (_1!14861 lt!810530)) (head!4654 lt!810525)))))

(assert (= (and d!650741 (not res!935506)) b!2173997))

(assert (= (and b!2173997 res!935503) b!2173998))

(assert (= (and b!2173998 res!935504) b!2173999))

(assert (= (and d!650741 (not res!935505)) b!2174000))

(declare-fun m!2615563 () Bool)

(assert (=> b!2174000 m!2615563))

(assert (=> b!2174000 m!2615143))

(declare-fun m!2615565 () Bool)

(assert (=> b!2173999 m!2615565))

(declare-fun m!2615567 () Bool)

(assert (=> b!2173999 m!2615567))

(assert (=> b!2173999 m!2615565))

(assert (=> b!2173999 m!2615567))

(declare-fun m!2615569 () Bool)

(assert (=> b!2173999 m!2615569))

(declare-fun m!2615571 () Bool)

(assert (=> b!2173998 m!2615571))

(declare-fun m!2615573 () Bool)

(assert (=> b!2173998 m!2615573))

(assert (=> b!2173682 d!650741))

(declare-fun d!650743 () Bool)

(declare-fun e!1390291 () Bool)

(assert (=> d!650743 e!1390291))

(declare-fun res!935511 () Bool)

(assert (=> d!650743 (=> res!935511 e!1390291)))

(declare-fun lt!810703 () Int)

(assert (=> d!650743 (= res!935511 (<= lt!810703 0))))

(assert (=> d!650743 (= lt!810703 (+ (- (furthestNullablePosition!209 z!4055 lt!810549 totalInput!977 (size!19694 totalInput!977) lt!810548) lt!810549) 1))))

(declare-fun lt!810702 () Unit!38273)

(declare-fun choose!12819 ((InoxSet Context!3194) Int BalanceConc!16088 Int) Unit!38273)

(assert (=> d!650743 (= lt!810702 (choose!12819 z!4055 lt!810549 totalInput!977 lt!810548))))

(declare-fun e!1390290 () Bool)

(assert (=> d!650743 e!1390290))

(declare-fun res!935512 () Bool)

(assert (=> d!650743 (=> (not res!935512) (not e!1390290))))

(assert (=> d!650743 (= res!935512 (>= lt!810549 0))))

(assert (=> d!650743 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!50 z!4055 lt!810549 totalInput!977 lt!810548) lt!810702)))

(declare-fun b!2174005 () Bool)

(assert (=> b!2174005 (= e!1390290 (<= lt!810549 (size!19694 totalInput!977)))))

(declare-fun b!2174006 () Bool)

(assert (=> b!2174006 (= e!1390291 (matchZipper!143 z!4055 (take!235 (drop!1245 (list!9668 totalInput!977) lt!810549) lt!810703)))))

(assert (= (and d!650743 res!935512) b!2174005))

(assert (= (and d!650743 (not res!935511)) b!2174006))

(assert (=> d!650743 m!2615187))

(assert (=> d!650743 m!2615187))

(declare-fun m!2615575 () Bool)

(assert (=> d!650743 m!2615575))

(declare-fun m!2615577 () Bool)

(assert (=> d!650743 m!2615577))

(assert (=> b!2174005 m!2615187))

(assert (=> b!2174006 m!2615181))

(assert (=> b!2174006 m!2615181))

(declare-fun m!2615579 () Bool)

(assert (=> b!2174006 m!2615579))

(assert (=> b!2174006 m!2615579))

(declare-fun m!2615581 () Bool)

(assert (=> b!2174006 m!2615581))

(assert (=> b!2174006 m!2615581))

(declare-fun m!2615583 () Bool)

(assert (=> b!2174006 m!2615583))

(assert (=> b!2173682 d!650743))

(declare-fun b!2174007 () Bool)

(declare-fun e!1390294 () Bool)

(declare-fun e!1390293 () Bool)

(assert (=> b!2174007 (= e!1390294 e!1390293)))

(declare-fun res!935513 () Bool)

(assert (=> b!2174007 (=> (not res!935513) (not e!1390293))))

(assert (=> b!2174007 (= res!935513 (not ((_ is Nil!25210) lt!810536)))))

(declare-fun b!2174010 () Bool)

(declare-fun e!1390292 () Bool)

(assert (=> b!2174010 (= e!1390292 (>= (size!19695 lt!810536) (size!19695 lt!810529)))))

(declare-fun b!2174009 () Bool)

(assert (=> b!2174009 (= e!1390293 (isPrefix!2143 (tail!3126 lt!810529) (tail!3126 lt!810536)))))

(declare-fun d!650745 () Bool)

(assert (=> d!650745 e!1390292))

(declare-fun res!935515 () Bool)

(assert (=> d!650745 (=> res!935515 e!1390292)))

(declare-fun lt!810704 () Bool)

(assert (=> d!650745 (= res!935515 (not lt!810704))))

(assert (=> d!650745 (= lt!810704 e!1390294)))

(declare-fun res!935516 () Bool)

(assert (=> d!650745 (=> res!935516 e!1390294)))

(assert (=> d!650745 (= res!935516 ((_ is Nil!25210) lt!810529))))

(assert (=> d!650745 (= (isPrefix!2143 lt!810529 lt!810536) lt!810704)))

(declare-fun b!2174008 () Bool)

(declare-fun res!935514 () Bool)

(assert (=> b!2174008 (=> (not res!935514) (not e!1390293))))

(assert (=> b!2174008 (= res!935514 (= (head!4654 lt!810529) (head!4654 lt!810536)))))

(assert (= (and d!650745 (not res!935516)) b!2174007))

(assert (= (and b!2174007 res!935513) b!2174008))

(assert (= (and b!2174008 res!935514) b!2174009))

(assert (= (and d!650745 (not res!935515)) b!2174010))

(declare-fun m!2615585 () Bool)

(assert (=> b!2174010 m!2615585))

(assert (=> b!2174010 m!2615539))

(declare-fun m!2615587 () Bool)

(assert (=> b!2174009 m!2615587))

(declare-fun m!2615589 () Bool)

(assert (=> b!2174009 m!2615589))

(assert (=> b!2174009 m!2615587))

(assert (=> b!2174009 m!2615589))

(declare-fun m!2615591 () Bool)

(assert (=> b!2174009 m!2615591))

(declare-fun m!2615593 () Bool)

(assert (=> b!2174008 m!2615593))

(declare-fun m!2615595 () Bool)

(assert (=> b!2174008 m!2615595))

(assert (=> b!2173682 d!650745))

(declare-fun bm!130477 () Bool)

(declare-fun call!130489 () List!25294)

(assert (=> bm!130477 (= call!130489 (tail!3126 lt!810540))))

(declare-fun b!2174123 () Bool)

(declare-fun c!344731 () Bool)

(declare-fun call!130485 () Bool)

(assert (=> b!2174123 (= c!344731 call!130485)))

(declare-fun lt!810871 () Unit!38273)

(declare-fun lt!810885 () Unit!38273)

(assert (=> b!2174123 (= lt!810871 lt!810885)))

(declare-fun lt!810869 () C!12200)

(declare-fun lt!810866 () List!25294)

(assert (=> b!2174123 (= (++!6386 (++!6386 Nil!25210 (Cons!25210 lt!810869 Nil!25210)) lt!810866) lt!810540)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!510 (List!25294 C!12200 List!25294 List!25294) Unit!38273)

(assert (=> b!2174123 (= lt!810885 (lemmaMoveElementToOtherListKeepsConcatEq!510 Nil!25210 lt!810869 lt!810866 lt!810540))))

(assert (=> b!2174123 (= lt!810866 (tail!3126 lt!810540))))

(assert (=> b!2174123 (= lt!810869 (head!4654 lt!810540))))

(declare-fun lt!810883 () Unit!38273)

(declare-fun lt!810873 () Unit!38273)

(assert (=> b!2174123 (= lt!810883 lt!810873)))

(declare-fun getSuffix!1037 (List!25294 List!25294) List!25294)

(assert (=> b!2174123 (isPrefix!2143 (++!6386 Nil!25210 (Cons!25210 (head!4654 (getSuffix!1037 lt!810540 Nil!25210)) Nil!25210)) lt!810540)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!382 (List!25294 List!25294) Unit!38273)

(assert (=> b!2174123 (= lt!810873 (lemmaAddHeadSuffixToPrefixStillPrefix!382 Nil!25210 lt!810540))))

(declare-fun lt!810891 () Unit!38273)

(declare-fun lt!810867 () Unit!38273)

(assert (=> b!2174123 (= lt!810891 lt!810867)))

(assert (=> b!2174123 (= lt!810867 (lemmaAddHeadSuffixToPrefixStillPrefix!382 Nil!25210 lt!810540))))

(declare-fun lt!810884 () List!25294)

(assert (=> b!2174123 (= lt!810884 (++!6386 Nil!25210 (Cons!25210 (head!4654 lt!810540) Nil!25210)))))

(declare-fun lt!810880 () Unit!38273)

(declare-fun e!1390367 () Unit!38273)

(assert (=> b!2174123 (= lt!810880 e!1390367)))

(declare-fun c!344729 () Bool)

(assert (=> b!2174123 (= c!344729 (= (size!19695 Nil!25210) (size!19695 lt!810540)))))

(declare-fun lt!810887 () Unit!38273)

(declare-fun lt!810886 () Unit!38273)

(assert (=> b!2174123 (= lt!810887 lt!810886)))

(assert (=> b!2174123 (<= (size!19695 Nil!25210) (size!19695 lt!810540))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!185 (List!25294 List!25294) Unit!38273)

(assert (=> b!2174123 (= lt!810886 (lemmaIsPrefixThenSmallerEqSize!185 Nil!25210 lt!810540))))

(declare-fun e!1390366 () tuple2!24982)

(declare-fun e!1390369 () tuple2!24982)

(assert (=> b!2174123 (= e!1390366 e!1390369)))

(declare-fun b!2174124 () Bool)

(declare-fun e!1390372 () tuple2!24982)

(assert (=> b!2174124 (= e!1390372 (tuple2!24983 Nil!25210 Nil!25210))))

(declare-fun bm!130478 () Bool)

(declare-fun call!130483 () Regex!6027)

(declare-fun call!130488 () C!12200)

(declare-fun derivativeStep!1444 (Regex!6027 C!12200) Regex!6027)

(assert (=> bm!130478 (= call!130483 (derivativeStep!1444 r!12534 call!130488))))

(declare-fun b!2174125 () Bool)

(declare-fun Unit!38275 () Unit!38273)

(assert (=> b!2174125 (= e!1390367 Unit!38275)))

(declare-fun lt!810889 () Unit!38273)

(declare-fun call!130484 () Unit!38273)

(assert (=> b!2174125 (= lt!810889 call!130484)))

(declare-fun call!130486 () Bool)

(assert (=> b!2174125 call!130486))

(declare-fun lt!810878 () Unit!38273)

(assert (=> b!2174125 (= lt!810878 lt!810889)))

(declare-fun lt!810876 () Unit!38273)

(declare-fun call!130482 () Unit!38273)

(assert (=> b!2174125 (= lt!810876 call!130482)))

(assert (=> b!2174125 (= lt!810540 Nil!25210)))

(declare-fun lt!810872 () Unit!38273)

(assert (=> b!2174125 (= lt!810872 lt!810876)))

(assert (=> b!2174125 false))

(declare-fun b!2174126 () Bool)

(declare-fun e!1390370 () Bool)

(declare-fun lt!810868 () tuple2!24982)

(assert (=> b!2174126 (= e!1390370 (>= (size!19695 (_1!14861 lt!810868)) (size!19695 Nil!25210)))))

(declare-fun b!2174127 () Bool)

(declare-fun e!1390365 () tuple2!24982)

(assert (=> b!2174127 (= e!1390369 e!1390365)))

(declare-fun lt!810879 () tuple2!24982)

(declare-fun call!130487 () tuple2!24982)

(assert (=> b!2174127 (= lt!810879 call!130487)))

(declare-fun c!344726 () Bool)

(assert (=> b!2174127 (= c!344726 (isEmpty!14465 (_1!14861 lt!810879)))))

(declare-fun b!2174128 () Bool)

(declare-fun e!1390371 () Bool)

(assert (=> b!2174128 (= e!1390371 e!1390370)))

(declare-fun res!935551 () Bool)

(assert (=> b!2174128 (=> res!935551 e!1390370)))

(assert (=> b!2174128 (= res!935551 (isEmpty!14465 (_1!14861 lt!810868)))))

(declare-fun bm!130479 () Bool)

(assert (=> bm!130479 (= call!130482 (lemmaIsPrefixSameLengthThenSameList!355 lt!810540 Nil!25210 lt!810540))))

(declare-fun bm!130480 () Bool)

(assert (=> bm!130480 (= call!130486 (isPrefix!2143 lt!810540 lt!810540))))

(declare-fun bm!130481 () Bool)

(assert (=> bm!130481 (= call!130488 (head!4654 lt!810540))))

(declare-fun d!650747 () Bool)

(assert (=> d!650747 e!1390371))

(declare-fun res!935552 () Bool)

(assert (=> d!650747 (=> (not res!935552) (not e!1390371))))

(assert (=> d!650747 (= res!935552 (= (++!6386 (_1!14861 lt!810868) (_2!14861 lt!810868)) lt!810540))))

(declare-fun e!1390368 () tuple2!24982)

(assert (=> d!650747 (= lt!810868 e!1390368)))

(declare-fun c!344728 () Bool)

(declare-fun lostCause!672 (Regex!6027) Bool)

(assert (=> d!650747 (= c!344728 (lostCause!672 r!12534))))

(declare-fun lt!810874 () Unit!38273)

(declare-fun Unit!38276 () Unit!38273)

(assert (=> d!650747 (= lt!810874 Unit!38276)))

(assert (=> d!650747 (= (getSuffix!1037 lt!810540 Nil!25210) lt!810540)))

(declare-fun lt!810881 () Unit!38273)

(declare-fun lt!810882 () Unit!38273)

(assert (=> d!650747 (= lt!810881 lt!810882)))

(declare-fun lt!810877 () List!25294)

(assert (=> d!650747 (= lt!810540 lt!810877)))

(declare-fun lemmaSamePrefixThenSameSuffix!959 (List!25294 List!25294 List!25294 List!25294 List!25294) Unit!38273)

(assert (=> d!650747 (= lt!810882 (lemmaSamePrefixThenSameSuffix!959 Nil!25210 lt!810540 Nil!25210 lt!810877 lt!810540))))

(assert (=> d!650747 (= lt!810877 (getSuffix!1037 lt!810540 Nil!25210))))

(declare-fun lt!810865 () Unit!38273)

(declare-fun lt!810864 () Unit!38273)

(assert (=> d!650747 (= lt!810865 lt!810864)))

(assert (=> d!650747 (isPrefix!2143 Nil!25210 (++!6386 Nil!25210 lt!810540))))

(assert (=> d!650747 (= lt!810864 (lemmaConcatTwoListThenFirstIsPrefix!1426 Nil!25210 lt!810540))))

(assert (=> d!650747 (validRegex!2303 r!12534)))

(assert (=> d!650747 (= (findLongestMatchInner!652 r!12534 Nil!25210 (size!19695 Nil!25210) lt!810540 lt!810540 (size!19695 lt!810540)) lt!810868)))

(declare-fun b!2174129 () Bool)

(assert (=> b!2174129 (= e!1390365 lt!810879)))

(declare-fun b!2174130 () Bool)

(assert (=> b!2174130 (= e!1390369 call!130487)))

(declare-fun bm!130482 () Bool)

(declare-fun lemmaIsPrefixRefl!1412 (List!25294 List!25294) Unit!38273)

(assert (=> bm!130482 (= call!130484 (lemmaIsPrefixRefl!1412 lt!810540 lt!810540))))

(declare-fun b!2174131 () Bool)

(declare-fun c!344730 () Bool)

(assert (=> b!2174131 (= c!344730 call!130485)))

(declare-fun lt!810890 () Unit!38273)

(declare-fun lt!810875 () Unit!38273)

(assert (=> b!2174131 (= lt!810890 lt!810875)))

(assert (=> b!2174131 (= lt!810540 Nil!25210)))

(assert (=> b!2174131 (= lt!810875 call!130482)))

(declare-fun lt!810870 () Unit!38273)

(declare-fun lt!810888 () Unit!38273)

(assert (=> b!2174131 (= lt!810870 lt!810888)))

(assert (=> b!2174131 call!130486))

(assert (=> b!2174131 (= lt!810888 call!130484)))

(assert (=> b!2174131 (= e!1390366 e!1390372)))

(declare-fun b!2174132 () Bool)

(assert (=> b!2174132 (= e!1390365 (tuple2!24983 Nil!25210 lt!810540))))

(declare-fun b!2174133 () Bool)

(declare-fun Unit!38277 () Unit!38273)

(assert (=> b!2174133 (= e!1390367 Unit!38277)))

(declare-fun bm!130483 () Bool)

(declare-fun nullable!1701 (Regex!6027) Bool)

(assert (=> bm!130483 (= call!130485 (nullable!1701 r!12534))))

(declare-fun b!2174134 () Bool)

(assert (=> b!2174134 (= e!1390368 (tuple2!24983 Nil!25210 lt!810540))))

(declare-fun b!2174135 () Bool)

(assert (=> b!2174135 (= e!1390368 e!1390366)))

(declare-fun c!344727 () Bool)

(assert (=> b!2174135 (= c!344727 (= (size!19695 Nil!25210) (size!19695 lt!810540)))))

(declare-fun bm!130484 () Bool)

(assert (=> bm!130484 (= call!130487 (findLongestMatchInner!652 call!130483 lt!810884 (+ (size!19695 Nil!25210) 1) call!130489 lt!810540 (size!19695 lt!810540)))))

(declare-fun b!2174136 () Bool)

(assert (=> b!2174136 (= e!1390372 (tuple2!24983 Nil!25210 lt!810540))))

(assert (= (and d!650747 c!344728) b!2174134))

(assert (= (and d!650747 (not c!344728)) b!2174135))

(assert (= (and b!2174135 c!344727) b!2174131))

(assert (= (and b!2174135 (not c!344727)) b!2174123))

(assert (= (and b!2174131 c!344730) b!2174124))

(assert (= (and b!2174131 (not c!344730)) b!2174136))

(assert (= (and b!2174123 c!344729) b!2174125))

(assert (= (and b!2174123 (not c!344729)) b!2174133))

(assert (= (and b!2174123 c!344731) b!2174127))

(assert (= (and b!2174123 (not c!344731)) b!2174130))

(assert (= (and b!2174127 c!344726) b!2174132))

(assert (= (and b!2174127 (not c!344726)) b!2174129))

(assert (= (or b!2174127 b!2174130) bm!130481))

(assert (= (or b!2174127 b!2174130) bm!130477))

(assert (= (or b!2174127 b!2174130) bm!130478))

(assert (= (or b!2174127 b!2174130) bm!130484))

(assert (= (or b!2174131 b!2174125) bm!130480))

(assert (= (or b!2174131 b!2174125) bm!130482))

(assert (= (or b!2174131 b!2174125) bm!130479))

(assert (= (or b!2174131 b!2174123) bm!130483))

(assert (= (and d!650747 res!935552) b!2174128))

(assert (= (and b!2174128 (not res!935551)) b!2174126))

(declare-fun m!2615723 () Bool)

(assert (=> bm!130483 m!2615723))

(declare-fun m!2615725 () Bool)

(assert (=> b!2174128 m!2615725))

(declare-fun m!2615727 () Bool)

(assert (=> b!2174123 m!2615727))

(declare-fun m!2615729 () Bool)

(assert (=> b!2174123 m!2615729))

(declare-fun m!2615731 () Bool)

(assert (=> b!2174123 m!2615731))

(declare-fun m!2615733 () Bool)

(assert (=> b!2174123 m!2615733))

(declare-fun m!2615735 () Bool)

(assert (=> b!2174123 m!2615735))

(assert (=> b!2174123 m!2615199))

(declare-fun m!2615737 () Bool)

(assert (=> b!2174123 m!2615737))

(declare-fun m!2615739 () Bool)

(assert (=> b!2174123 m!2615739))

(declare-fun m!2615741 () Bool)

(assert (=> b!2174123 m!2615741))

(declare-fun m!2615743 () Bool)

(assert (=> b!2174123 m!2615743))

(assert (=> b!2174123 m!2615735))

(declare-fun m!2615745 () Bool)

(assert (=> b!2174123 m!2615745))

(assert (=> b!2174123 m!2615737))

(declare-fun m!2615747 () Bool)

(assert (=> b!2174123 m!2615747))

(assert (=> b!2174123 m!2615205))

(assert (=> b!2174123 m!2615741))

(declare-fun m!2615749 () Bool)

(assert (=> b!2174123 m!2615749))

(declare-fun m!2615751 () Bool)

(assert (=> bm!130482 m!2615751))

(declare-fun m!2615753 () Bool)

(assert (=> d!650747 m!2615753))

(declare-fun m!2615755 () Bool)

(assert (=> d!650747 m!2615755))

(assert (=> d!650747 m!2615741))

(assert (=> d!650747 m!2615129))

(declare-fun m!2615757 () Bool)

(assert (=> d!650747 m!2615757))

(declare-fun m!2615759 () Bool)

(assert (=> d!650747 m!2615759))

(declare-fun m!2615761 () Bool)

(assert (=> d!650747 m!2615761))

(declare-fun m!2615763 () Bool)

(assert (=> d!650747 m!2615763))

(assert (=> d!650747 m!2615753))

(assert (=> bm!130484 m!2615199))

(declare-fun m!2615765 () Bool)

(assert (=> bm!130484 m!2615765))

(declare-fun m!2615767 () Bool)

(assert (=> bm!130479 m!2615767))

(declare-fun m!2615769 () Bool)

(assert (=> bm!130478 m!2615769))

(assert (=> bm!130481 m!2615733))

(assert (=> bm!130477 m!2615739))

(declare-fun m!2615771 () Bool)

(assert (=> bm!130480 m!2615771))

(declare-fun m!2615773 () Bool)

(assert (=> b!2174127 m!2615773))

(declare-fun m!2615775 () Bool)

(assert (=> b!2174126 m!2615775))

(assert (=> b!2174126 m!2615205))

(assert (=> b!2173682 d!650747))

(declare-fun d!650779 () Bool)

(declare-fun lt!810895 () Int)

(assert (=> d!650779 (>= lt!810895 0)))

(declare-fun e!1390378 () Int)

(assert (=> d!650779 (= lt!810895 e!1390378)))

(declare-fun c!344735 () Bool)

(assert (=> d!650779 (= c!344735 ((_ is Nil!25210) lt!810540))))

(assert (=> d!650779 (= (size!19695 lt!810540) lt!810895)))

(declare-fun b!2174145 () Bool)

(assert (=> b!2174145 (= e!1390378 0)))

(declare-fun b!2174146 () Bool)

(assert (=> b!2174146 (= e!1390378 (+ 1 (size!19695 (t!197862 lt!810540))))))

(assert (= (and d!650779 c!344735) b!2174145))

(assert (= (and d!650779 (not c!344735)) b!2174146))

(declare-fun m!2615777 () Bool)

(assert (=> b!2174146 m!2615777))

(assert (=> b!2173682 d!650779))

(declare-fun b!2174147 () Bool)

(declare-fun e!1390381 () Bool)

(declare-fun e!1390380 () Bool)

(assert (=> b!2174147 (= e!1390381 e!1390380)))

(declare-fun res!935555 () Bool)

(assert (=> b!2174147 (=> (not res!935555) (not e!1390380))))

(assert (=> b!2174147 (= res!935555 (not ((_ is Nil!25210) lt!810547)))))

(declare-fun b!2174150 () Bool)

(declare-fun e!1390379 () Bool)

(assert (=> b!2174150 (= e!1390379 (>= (size!19695 lt!810547) (size!19695 (take!235 lt!810547 lt!810549))))))

(declare-fun b!2174149 () Bool)

(assert (=> b!2174149 (= e!1390380 (isPrefix!2143 (tail!3126 (take!235 lt!810547 lt!810549)) (tail!3126 lt!810547)))))

(declare-fun d!650781 () Bool)

(assert (=> d!650781 e!1390379))

(declare-fun res!935557 () Bool)

(assert (=> d!650781 (=> res!935557 e!1390379)))

(declare-fun lt!810896 () Bool)

(assert (=> d!650781 (= res!935557 (not lt!810896))))

(assert (=> d!650781 (= lt!810896 e!1390381)))

(declare-fun res!935558 () Bool)

(assert (=> d!650781 (=> res!935558 e!1390381)))

(assert (=> d!650781 (= res!935558 ((_ is Nil!25210) (take!235 lt!810547 lt!810549)))))

(assert (=> d!650781 (= (isPrefix!2143 (take!235 lt!810547 lt!810549) lt!810547) lt!810896)))

(declare-fun b!2174148 () Bool)

(declare-fun res!935556 () Bool)

(assert (=> b!2174148 (=> (not res!935556) (not e!1390380))))

(assert (=> b!2174148 (= res!935556 (= (head!4654 (take!235 lt!810547 lt!810549)) (head!4654 lt!810547)))))

(assert (= (and d!650781 (not res!935558)) b!2174147))

(assert (= (and b!2174147 res!935555) b!2174148))

(assert (= (and b!2174148 res!935556) b!2174149))

(assert (= (and d!650781 (not res!935557)) b!2174150))

(assert (=> b!2174150 m!2615293))

(assert (=> b!2174150 m!2615217))

(declare-fun m!2615779 () Bool)

(assert (=> b!2174150 m!2615779))

(assert (=> b!2174149 m!2615217))

(declare-fun m!2615781 () Bool)

(assert (=> b!2174149 m!2615781))

(declare-fun m!2615783 () Bool)

(assert (=> b!2174149 m!2615783))

(assert (=> b!2174149 m!2615781))

(assert (=> b!2174149 m!2615783))

(declare-fun m!2615785 () Bool)

(assert (=> b!2174149 m!2615785))

(assert (=> b!2174148 m!2615217))

(declare-fun m!2615787 () Bool)

(assert (=> b!2174148 m!2615787))

(declare-fun m!2615789 () Bool)

(assert (=> b!2174148 m!2615789))

(assert (=> b!2173682 d!650781))

(declare-fun d!650783 () Bool)

(assert (=> d!650783 (= (isEmpty!14465 (_1!14861 lt!810546)) ((_ is Nil!25210) (_1!14861 lt!810546)))))

(assert (=> b!2173682 d!650783))

(declare-fun d!650785 () Bool)

(assert (=> d!650785 (isPrefix!2143 lt!810529 (++!6386 lt!810529 lt!810522))))

(declare-fun lt!810899 () Unit!38273)

(declare-fun choose!12821 (List!25294 List!25294) Unit!38273)

(assert (=> d!650785 (= lt!810899 (choose!12821 lt!810529 lt!810522))))

(assert (=> d!650785 (= (lemmaConcatTwoListThenFirstIsPrefix!1426 lt!810529 lt!810522) lt!810899)))

(declare-fun bs!447053 () Bool)

(assert (= bs!447053 d!650785))

(assert (=> bs!447053 m!2615193))

(assert (=> bs!447053 m!2615193))

(declare-fun m!2615791 () Bool)

(assert (=> bs!447053 m!2615791))

(declare-fun m!2615793 () Bool)

(assert (=> bs!447053 m!2615793))

(assert (=> b!2173682 d!650785))

(declare-fun d!650787 () Bool)

(declare-fun c!344740 () Bool)

(assert (=> d!650787 (= c!344740 (isEmpty!14465 lt!810529))))

(declare-fun e!1390396 () Bool)

(assert (=> d!650787 (= (matchZipper!143 z!4055 lt!810529) e!1390396)))

(declare-fun b!2174169 () Bool)

(assert (=> b!2174169 (= e!1390396 (nullableZipper!307 z!4055))))

(declare-fun b!2174170 () Bool)

(assert (=> b!2174170 (= e!1390396 (matchZipper!143 (derivationStepZipper!130 z!4055 (head!4654 lt!810529)) (tail!3126 lt!810529)))))

(assert (= (and d!650787 c!344740) b!2174169))

(assert (= (and d!650787 (not c!344740)) b!2174170))

(declare-fun m!2615795 () Bool)

(assert (=> d!650787 m!2615795))

(assert (=> b!2174169 m!2615211))

(assert (=> b!2174170 m!2615593))

(assert (=> b!2174170 m!2615593))

(declare-fun m!2615797 () Bool)

(assert (=> b!2174170 m!2615797))

(assert (=> b!2174170 m!2615587))

(assert (=> b!2174170 m!2615797))

(assert (=> b!2174170 m!2615587))

(declare-fun m!2615799 () Bool)

(assert (=> b!2174170 m!2615799))

(assert (=> b!2173682 d!650787))

(declare-fun d!650789 () Bool)

(assert (=> d!650789 (isPrefix!2143 (take!235 lt!810547 lt!810549) lt!810547)))

(declare-fun lt!810902 () Unit!38273)

(declare-fun choose!12822 (List!25294 Int) Unit!38273)

(assert (=> d!650789 (= lt!810902 (choose!12822 lt!810547 lt!810549))))

(assert (=> d!650789 (>= lt!810549 0)))

(assert (=> d!650789 (= (lemmaTakeIsPrefix!58 lt!810547 lt!810549) lt!810902)))

(declare-fun bs!447054 () Bool)

(assert (= bs!447054 d!650789))

(assert (=> bs!447054 m!2615217))

(assert (=> bs!447054 m!2615217))

(assert (=> bs!447054 m!2615219))

(declare-fun m!2615807 () Bool)

(assert (=> bs!447054 m!2615807))

(assert (=> b!2173682 d!650789))

(declare-fun d!650793 () Bool)

(declare-fun e!1390421 () Bool)

(assert (=> d!650793 e!1390421))

(declare-fun res!935576 () Bool)

(assert (=> d!650793 (=> res!935576 e!1390421)))

(assert (=> d!650793 (= res!935576 (isEmpty!14465 (_1!14861 (findLongestMatchInner!652 r!12534 Nil!25210 (size!19695 Nil!25210) lt!810540 lt!810540 (size!19695 lt!810540)))))))

(declare-fun lt!810908 () Unit!38273)

(declare-fun choose!12823 (Regex!6027 List!25294) Unit!38273)

(assert (=> d!650793 (= lt!810908 (choose!12823 r!12534 lt!810540))))

(assert (=> d!650793 (validRegex!2303 r!12534)))

(assert (=> d!650793 (= (longestMatchIsAcceptedByMatchOrIsEmpty!625 r!12534 lt!810540) lt!810908)))

(declare-fun b!2174222 () Bool)

(assert (=> b!2174222 (= e!1390421 (matchR!2776 r!12534 (_1!14861 (findLongestMatchInner!652 r!12534 Nil!25210 (size!19695 Nil!25210) lt!810540 lt!810540 (size!19695 lt!810540)))))))

(assert (= (and d!650793 (not res!935576)) b!2174222))

(assert (=> d!650793 m!2615129))

(assert (=> d!650793 m!2615199))

(declare-fun m!2615823 () Bool)

(assert (=> d!650793 m!2615823))

(assert (=> d!650793 m!2615205))

(assert (=> d!650793 m!2615199))

(assert (=> d!650793 m!2615207))

(assert (=> d!650793 m!2615205))

(declare-fun m!2615827 () Bool)

(assert (=> d!650793 m!2615827))

(assert (=> b!2174222 m!2615205))

(assert (=> b!2174222 m!2615199))

(assert (=> b!2174222 m!2615205))

(assert (=> b!2174222 m!2615199))

(assert (=> b!2174222 m!2615207))

(declare-fun m!2615829 () Bool)

(assert (=> b!2174222 m!2615829))

(assert (=> b!2173682 d!650793))

(declare-fun d!650799 () Bool)

(assert (=> d!650799 (isPrefix!2143 (_1!14861 lt!810530) (++!6386 (_1!14861 lt!810530) (_2!14861 lt!810530)))))

(declare-fun lt!810909 () Unit!38273)

(assert (=> d!650799 (= lt!810909 (choose!12821 (_1!14861 lt!810530) (_2!14861 lt!810530)))))

(assert (=> d!650799 (= (lemmaConcatTwoListThenFirstIsPrefix!1426 (_1!14861 lt!810530) (_2!14861 lt!810530)) lt!810909)))

(declare-fun bs!447058 () Bool)

(assert (= bs!447058 d!650799))

(assert (=> bs!447058 m!2615169))

(assert (=> bs!447058 m!2615169))

(declare-fun m!2615831 () Bool)

(assert (=> bs!447058 m!2615831))

(declare-fun m!2615833 () Bool)

(assert (=> bs!447058 m!2615833))

(assert (=> b!2173682 d!650799))

(declare-fun b!2174247 () Bool)

(declare-fun e!1390435 () Int)

(assert (=> b!2174247 (= e!1390435 lt!810549)))

(declare-fun b!2174249 () Bool)

(declare-fun e!1390434 () Int)

(assert (=> b!2174249 (= e!1390434 lt!810548)))

(declare-fun b!2174250 () Bool)

(declare-fun e!1390436 () Bool)

(declare-fun lostCauseZipper!162 ((InoxSet Context!3194)) Bool)

(assert (=> b!2174250 (= e!1390436 (lostCauseZipper!162 z!4055))))

(declare-fun b!2174251 () Bool)

(assert (=> b!2174251 (= e!1390435 lt!810548)))

(declare-fun b!2174248 () Bool)

(declare-fun lt!810914 () (InoxSet Context!3194))

(assert (=> b!2174248 (= e!1390434 (furthestNullablePosition!209 lt!810914 (+ lt!810549 1) totalInput!977 lt!810544 e!1390435))))

(declare-fun apply!6071 (BalanceConc!16088 Int) C!12200)

(assert (=> b!2174248 (= lt!810914 (derivationStepZipper!130 z!4055 (apply!6071 totalInput!977 lt!810549)))))

(declare-fun c!344747 () Bool)

(assert (=> b!2174248 (= c!344747 (nullableZipper!307 lt!810914))))

(declare-fun d!650801 () Bool)

(declare-fun lt!810915 () Int)

(assert (=> d!650801 (and (>= lt!810915 (- 1)) (< lt!810915 lt!810544) (>= lt!810915 lt!810548) (or (= lt!810915 lt!810548) (>= lt!810915 lt!810549)))))

(assert (=> d!650801 (= lt!810915 e!1390434)))

(declare-fun c!344748 () Bool)

(assert (=> d!650801 (= c!344748 e!1390436)))

(declare-fun res!935579 () Bool)

(assert (=> d!650801 (=> res!935579 e!1390436)))

(assert (=> d!650801 (= res!935579 (= lt!810549 lt!810544))))

(assert (=> d!650801 (and (>= lt!810549 0) (<= lt!810549 lt!810544))))

(assert (=> d!650801 (= (furthestNullablePosition!209 z!4055 lt!810549 totalInput!977 lt!810544 lt!810548) lt!810915)))

(assert (= (and d!650801 (not res!935579)) b!2174250))

(assert (= (and d!650801 c!344748) b!2174249))

(assert (= (and d!650801 (not c!344748)) b!2174248))

(assert (= (and b!2174248 c!344747) b!2174247))

(assert (= (and b!2174248 (not c!344747)) b!2174251))

(declare-fun m!2615841 () Bool)

(assert (=> b!2174250 m!2615841))

(declare-fun m!2615843 () Bool)

(assert (=> b!2174248 m!2615843))

(declare-fun m!2615845 () Bool)

(assert (=> b!2174248 m!2615845))

(assert (=> b!2174248 m!2615845))

(declare-fun m!2615847 () Bool)

(assert (=> b!2174248 m!2615847))

(declare-fun m!2615849 () Bool)

(assert (=> b!2174248 m!2615849))

(assert (=> b!2173682 d!650801))

(declare-fun b!2174252 () Bool)

(declare-fun e!1390440 () Int)

(assert (=> b!2174252 (= e!1390440 (size!19695 lt!810547))))

(declare-fun d!650803 () Bool)

(declare-fun e!1390438 () Bool)

(assert (=> d!650803 e!1390438))

(declare-fun res!935580 () Bool)

(assert (=> d!650803 (=> (not res!935580) (not e!1390438))))

(declare-fun lt!810916 () List!25294)

(assert (=> d!650803 (= res!935580 (= ((_ map implies) (content!3427 lt!810916) (content!3427 lt!810547)) ((as const (InoxSet C!12200)) true)))))

(declare-fun e!1390437 () List!25294)

(assert (=> d!650803 (= lt!810916 e!1390437)))

(declare-fun c!344749 () Bool)

(assert (=> d!650803 (= c!344749 (or ((_ is Nil!25210) lt!810547) (<= lt!810549 0)))))

(assert (=> d!650803 (= (take!235 lt!810547 lt!810549) lt!810916)))

(declare-fun b!2174253 () Bool)

(declare-fun e!1390439 () Int)

(assert (=> b!2174253 (= e!1390439 e!1390440)))

(declare-fun c!344751 () Bool)

(assert (=> b!2174253 (= c!344751 (>= lt!810549 (size!19695 lt!810547)))))

(declare-fun b!2174254 () Bool)

(assert (=> b!2174254 (= e!1390437 Nil!25210)))

(declare-fun b!2174255 () Bool)

(assert (=> b!2174255 (= e!1390440 lt!810549)))

(declare-fun b!2174256 () Bool)

(assert (=> b!2174256 (= e!1390437 (Cons!25210 (h!30611 lt!810547) (take!235 (t!197862 lt!810547) (- lt!810549 1))))))

(declare-fun b!2174257 () Bool)

(assert (=> b!2174257 (= e!1390439 0)))

(declare-fun b!2174258 () Bool)

(assert (=> b!2174258 (= e!1390438 (= (size!19695 lt!810916) e!1390439))))

(declare-fun c!344750 () Bool)

(assert (=> b!2174258 (= c!344750 (<= lt!810549 0))))

(assert (= (and d!650803 c!344749) b!2174254))

(assert (= (and d!650803 (not c!344749)) b!2174256))

(assert (= (and d!650803 res!935580) b!2174258))

(assert (= (and b!2174258 c!344750) b!2174257))

(assert (= (and b!2174258 (not c!344750)) b!2174253))

(assert (= (and b!2174253 c!344751) b!2174252))

(assert (= (and b!2174253 (not c!344751)) b!2174255))

(declare-fun m!2615851 () Bool)

(assert (=> d!650803 m!2615851))

(assert (=> d!650803 m!2615297))

(assert (=> b!2174253 m!2615293))

(assert (=> b!2174252 m!2615293))

(declare-fun m!2615853 () Bool)

(assert (=> b!2174258 m!2615853))

(declare-fun m!2615855 () Bool)

(assert (=> b!2174256 m!2615855))

(assert (=> b!2173682 d!650803))

(declare-fun d!650805 () Bool)

(declare-fun lambda!81835 () Int)

(declare-fun exists!763 ((InoxSet Context!3194) Int) Bool)

(assert (=> d!650805 (= (nullableZipper!307 z!4055) (exists!763 z!4055 lambda!81835))))

(declare-fun bs!447059 () Bool)

(assert (= bs!447059 d!650805))

(declare-fun m!2615857 () Bool)

(assert (=> bs!447059 m!2615857))

(assert (=> b!2173682 d!650805))

(declare-fun d!650807 () Bool)

(declare-fun lt!810919 () Regex!6027)

(assert (=> d!650807 (validRegex!2303 lt!810919)))

(declare-fun generalisedUnion!517 (List!25295) Regex!6027)

(declare-fun unfocusZipperList!41 (List!25296) List!25295)

(assert (=> d!650807 (= lt!810919 (generalisedUnion!517 (unfocusZipperList!41 lt!810527)))))

(assert (=> d!650807 (= (unfocusZipper!134 lt!810527) lt!810919)))

(declare-fun bs!447060 () Bool)

(assert (= bs!447060 d!650807))

(declare-fun m!2615859 () Bool)

(assert (=> bs!447060 m!2615859))

(declare-fun m!2615861 () Bool)

(assert (=> bs!447060 m!2615861))

(assert (=> bs!447060 m!2615861))

(declare-fun m!2615863 () Bool)

(assert (=> bs!447060 m!2615863))

(assert (=> b!2173671 d!650807))

(declare-fun d!650809 () Bool)

(declare-fun e!1390443 () Bool)

(assert (=> d!650809 e!1390443))

(declare-fun res!935583 () Bool)

(assert (=> d!650809 (=> (not res!935583) (not e!1390443))))

(declare-fun lt!810922 () List!25296)

(declare-fun noDuplicate!294 (List!25296) Bool)

(assert (=> d!650809 (= res!935583 (noDuplicate!294 lt!810922))))

(declare-fun choose!12824 ((InoxSet Context!3194)) List!25296)

(assert (=> d!650809 (= lt!810922 (choose!12824 z!4055))))

(assert (=> d!650809 (= (toList!1210 z!4055) lt!810922)))

(declare-fun b!2174261 () Bool)

(declare-fun content!3429 (List!25296) (InoxSet Context!3194))

(assert (=> b!2174261 (= e!1390443 (= (content!3429 lt!810922) z!4055))))

(assert (= (and d!650809 res!935583) b!2174261))

(declare-fun m!2615865 () Bool)

(assert (=> d!650809 m!2615865))

(declare-fun m!2615867 () Bool)

(assert (=> d!650809 m!2615867))

(declare-fun m!2615869 () Bool)

(assert (=> b!2174261 m!2615869))

(assert (=> b!2173671 d!650809))

(declare-fun d!650811 () Bool)

(assert (=> d!650811 (= lt!810535 (_1!14861 lt!810530))))

(declare-fun lt!810925 () Unit!38273)

(declare-fun choose!12825 (List!25294 List!25294 List!25294) Unit!38273)

(assert (=> d!650811 (= lt!810925 (choose!12825 lt!810535 (_1!14861 lt!810530) lt!810540))))

(assert (=> d!650811 (isPrefix!2143 lt!810535 lt!810540)))

(assert (=> d!650811 (= (lemmaIsPrefixSameLengthThenSameList!355 lt!810535 (_1!14861 lt!810530) lt!810540) lt!810925)))

(declare-fun bs!447061 () Bool)

(assert (= bs!447061 d!650811))

(declare-fun m!2615871 () Bool)

(assert (=> bs!447061 m!2615871))

(declare-fun m!2615873 () Bool)

(assert (=> bs!447061 m!2615873))

(assert (=> b!2173672 d!650811))

(declare-fun b!2174262 () Bool)

(declare-fun e!1390446 () Bool)

(declare-fun e!1390445 () Bool)

(assert (=> b!2174262 (= e!1390446 e!1390445)))

(declare-fun res!935584 () Bool)

(assert (=> b!2174262 (=> (not res!935584) (not e!1390445))))

(assert (=> b!2174262 (= res!935584 (not ((_ is Nil!25210) lt!810540)))))

(declare-fun b!2174265 () Bool)

(declare-fun e!1390444 () Bool)

(assert (=> b!2174265 (= e!1390444 (>= (size!19695 lt!810540) (size!19695 lt!810523)))))

(declare-fun b!2174264 () Bool)

(assert (=> b!2174264 (= e!1390445 (isPrefix!2143 (tail!3126 lt!810523) (tail!3126 lt!810540)))))

(declare-fun d!650813 () Bool)

(assert (=> d!650813 e!1390444))

(declare-fun res!935586 () Bool)

(assert (=> d!650813 (=> res!935586 e!1390444)))

(declare-fun lt!810926 () Bool)

(assert (=> d!650813 (= res!935586 (not lt!810926))))

(assert (=> d!650813 (= lt!810926 e!1390446)))

(declare-fun res!935587 () Bool)

(assert (=> d!650813 (=> res!935587 e!1390446)))

(assert (=> d!650813 (= res!935587 ((_ is Nil!25210) lt!810523))))

(assert (=> d!650813 (= (isPrefix!2143 lt!810523 lt!810540) lt!810926)))

(declare-fun b!2174263 () Bool)

(declare-fun res!935585 () Bool)

(assert (=> b!2174263 (=> (not res!935585) (not e!1390445))))

(assert (=> b!2174263 (= res!935585 (= (head!4654 lt!810523) (head!4654 lt!810540)))))

(assert (= (and d!650813 (not res!935587)) b!2174262))

(assert (= (and b!2174262 res!935584) b!2174263))

(assert (= (and b!2174263 res!935585) b!2174264))

(assert (= (and d!650813 (not res!935586)) b!2174265))

(assert (=> b!2174265 m!2615199))

(declare-fun m!2615875 () Bool)

(assert (=> b!2174265 m!2615875))

(declare-fun m!2615877 () Bool)

(assert (=> b!2174264 m!2615877))

(assert (=> b!2174264 m!2615739))

(assert (=> b!2174264 m!2615877))

(assert (=> b!2174264 m!2615739))

(declare-fun m!2615879 () Bool)

(assert (=> b!2174264 m!2615879))

(declare-fun m!2615881 () Bool)

(assert (=> b!2174263 m!2615881))

(assert (=> b!2174263 m!2615733))

(assert (=> b!2173672 d!650813))

(declare-fun b!2174266 () Bool)

(declare-fun e!1390450 () Int)

(assert (=> b!2174266 (= e!1390450 (size!19695 lt!810540))))

(declare-fun d!650815 () Bool)

(declare-fun e!1390448 () Bool)

(assert (=> d!650815 e!1390448))

(declare-fun res!935588 () Bool)

(assert (=> d!650815 (=> (not res!935588) (not e!1390448))))

(declare-fun lt!810927 () List!25294)

(assert (=> d!650815 (= res!935588 (= ((_ map implies) (content!3427 lt!810927) (content!3427 lt!810540)) ((as const (InoxSet C!12200)) true)))))

(declare-fun e!1390447 () List!25294)

(assert (=> d!650815 (= lt!810927 e!1390447)))

(declare-fun c!344754 () Bool)

(assert (=> d!650815 (= c!344754 (or ((_ is Nil!25210) lt!810540) (<= lt!810545 0)))))

(assert (=> d!650815 (= (take!235 lt!810540 lt!810545) lt!810927)))

(declare-fun b!2174267 () Bool)

(declare-fun e!1390449 () Int)

(assert (=> b!2174267 (= e!1390449 e!1390450)))

(declare-fun c!344756 () Bool)

(assert (=> b!2174267 (= c!344756 (>= lt!810545 (size!19695 lt!810540)))))

(declare-fun b!2174268 () Bool)

(assert (=> b!2174268 (= e!1390447 Nil!25210)))

(declare-fun b!2174269 () Bool)

(assert (=> b!2174269 (= e!1390450 lt!810545)))

(declare-fun b!2174270 () Bool)

(assert (=> b!2174270 (= e!1390447 (Cons!25210 (h!30611 lt!810540) (take!235 (t!197862 lt!810540) (- lt!810545 1))))))

(declare-fun b!2174271 () Bool)

(assert (=> b!2174271 (= e!1390449 0)))

(declare-fun b!2174272 () Bool)

(assert (=> b!2174272 (= e!1390448 (= (size!19695 lt!810927) e!1390449))))

(declare-fun c!344755 () Bool)

(assert (=> b!2174272 (= c!344755 (<= lt!810545 0))))

(assert (= (and d!650815 c!344754) b!2174268))

(assert (= (and d!650815 (not c!344754)) b!2174270))

(assert (= (and d!650815 res!935588) b!2174272))

(assert (= (and b!2174272 c!344755) b!2174271))

(assert (= (and b!2174272 (not c!344755)) b!2174267))

(assert (= (and b!2174267 c!344756) b!2174266))

(assert (= (and b!2174267 (not c!344756)) b!2174269))

(declare-fun m!2615883 () Bool)

(assert (=> d!650815 m!2615883))

(declare-fun m!2615885 () Bool)

(assert (=> d!650815 m!2615885))

(assert (=> b!2174267 m!2615199))

(assert (=> b!2174266 m!2615199))

(declare-fun m!2615887 () Bool)

(assert (=> b!2174272 m!2615887))

(declare-fun m!2615889 () Bool)

(assert (=> b!2174270 m!2615889))

(assert (=> b!2173672 d!650815))

(declare-fun d!650817 () Bool)

(assert (=> d!650817 (isPrefix!2143 (take!235 lt!810540 lt!810545) lt!810540)))

(declare-fun lt!810928 () Unit!38273)

(assert (=> d!650817 (= lt!810928 (choose!12822 lt!810540 lt!810545))))

(assert (=> d!650817 (>= lt!810545 0)))

(assert (=> d!650817 (= (lemmaTakeIsPrefix!58 lt!810540 lt!810545) lt!810928)))

(declare-fun bs!447062 () Bool)

(assert (= bs!447062 d!650817))

(assert (=> bs!447062 m!2615139))

(assert (=> bs!447062 m!2615139))

(declare-fun m!2615891 () Bool)

(assert (=> bs!447062 m!2615891))

(declare-fun m!2615893 () Bool)

(assert (=> bs!447062 m!2615893))

(assert (=> b!2173672 d!650817))

(declare-fun bm!130496 () Bool)

(declare-fun call!130501 () Bool)

(assert (=> bm!130496 (= call!130501 (isEmpty!14465 (_1!14861 lt!810530)))))

(declare-fun b!2174302 () Bool)

(declare-fun e!1390465 () Bool)

(assert (=> b!2174302 (= e!1390465 (matchR!2776 (derivativeStep!1444 r!12534 (head!4654 (_1!14861 lt!810530))) (tail!3126 (_1!14861 lt!810530))))))

(declare-fun b!2174303 () Bool)

(declare-fun e!1390469 () Bool)

(declare-fun lt!810931 () Bool)

(assert (=> b!2174303 (= e!1390469 (= lt!810931 call!130501))))

(declare-fun b!2174304 () Bool)

(declare-fun res!935612 () Bool)

(declare-fun e!1390468 () Bool)

(assert (=> b!2174304 (=> res!935612 e!1390468)))

(assert (=> b!2174304 (= res!935612 (not ((_ is ElementMatch!6027) r!12534)))))

(declare-fun e!1390470 () Bool)

(assert (=> b!2174304 (= e!1390470 e!1390468)))

(declare-fun b!2174305 () Bool)

(declare-fun e!1390467 () Bool)

(assert (=> b!2174305 (= e!1390468 e!1390467)))

(declare-fun res!935609 () Bool)

(assert (=> b!2174305 (=> (not res!935609) (not e!1390467))))

(assert (=> b!2174305 (= res!935609 (not lt!810931))))

(declare-fun b!2174306 () Bool)

(declare-fun e!1390471 () Bool)

(assert (=> b!2174306 (= e!1390471 (= (head!4654 (_1!14861 lt!810530)) (c!344581 r!12534)))))

(declare-fun b!2174307 () Bool)

(declare-fun e!1390466 () Bool)

(assert (=> b!2174307 (= e!1390467 e!1390466)))

(declare-fun res!935611 () Bool)

(assert (=> b!2174307 (=> res!935611 e!1390466)))

(assert (=> b!2174307 (= res!935611 call!130501)))

(declare-fun b!2174308 () Bool)

(declare-fun res!935607 () Bool)

(assert (=> b!2174308 (=> (not res!935607) (not e!1390471))))

(assert (=> b!2174308 (= res!935607 (isEmpty!14465 (tail!3126 (_1!14861 lt!810530))))))

(declare-fun d!650819 () Bool)

(assert (=> d!650819 e!1390469))

(declare-fun c!344764 () Bool)

(assert (=> d!650819 (= c!344764 ((_ is EmptyExpr!6027) r!12534))))

(assert (=> d!650819 (= lt!810931 e!1390465)))

(declare-fun c!344763 () Bool)

(assert (=> d!650819 (= c!344763 (isEmpty!14465 (_1!14861 lt!810530)))))

(assert (=> d!650819 (validRegex!2303 r!12534)))

(assert (=> d!650819 (= (matchR!2776 r!12534 (_1!14861 lt!810530)) lt!810931)))

(declare-fun b!2174301 () Bool)

(assert (=> b!2174301 (= e!1390469 e!1390470)))

(declare-fun c!344765 () Bool)

(assert (=> b!2174301 (= c!344765 ((_ is EmptyLang!6027) r!12534))))

(declare-fun b!2174309 () Bool)

(assert (=> b!2174309 (= e!1390470 (not lt!810931))))

(declare-fun b!2174310 () Bool)

(assert (=> b!2174310 (= e!1390466 (not (= (head!4654 (_1!14861 lt!810530)) (c!344581 r!12534))))))

(declare-fun b!2174311 () Bool)

(declare-fun res!935610 () Bool)

(assert (=> b!2174311 (=> res!935610 e!1390468)))

(assert (=> b!2174311 (= res!935610 e!1390471)))

(declare-fun res!935605 () Bool)

(assert (=> b!2174311 (=> (not res!935605) (not e!1390471))))

(assert (=> b!2174311 (= res!935605 lt!810931)))

(declare-fun b!2174312 () Bool)

(declare-fun res!935608 () Bool)

(assert (=> b!2174312 (=> (not res!935608) (not e!1390471))))

(assert (=> b!2174312 (= res!935608 (not call!130501))))

(declare-fun b!2174313 () Bool)

(assert (=> b!2174313 (= e!1390465 (nullable!1701 r!12534))))

(declare-fun b!2174314 () Bool)

(declare-fun res!935606 () Bool)

(assert (=> b!2174314 (=> res!935606 e!1390466)))

(assert (=> b!2174314 (= res!935606 (not (isEmpty!14465 (tail!3126 (_1!14861 lt!810530)))))))

(assert (= (and d!650819 c!344763) b!2174313))

(assert (= (and d!650819 (not c!344763)) b!2174302))

(assert (= (and d!650819 c!344764) b!2174303))

(assert (= (and d!650819 (not c!344764)) b!2174301))

(assert (= (and b!2174301 c!344765) b!2174309))

(assert (= (and b!2174301 (not c!344765)) b!2174304))

(assert (= (and b!2174304 (not res!935612)) b!2174311))

(assert (= (and b!2174311 res!935605) b!2174312))

(assert (= (and b!2174312 res!935608) b!2174308))

(assert (= (and b!2174308 res!935607) b!2174306))

(assert (= (and b!2174311 (not res!935610)) b!2174305))

(assert (= (and b!2174305 res!935609) b!2174307))

(assert (= (and b!2174307 (not res!935611)) b!2174314))

(assert (= (and b!2174314 (not res!935606)) b!2174310))

(assert (= (or b!2174303 b!2174307 b!2174312) bm!130496))

(assert (=> b!2174308 m!2615565))

(assert (=> b!2174308 m!2615565))

(declare-fun m!2615895 () Bool)

(assert (=> b!2174308 m!2615895))

(assert (=> d!650819 m!2615167))

(assert (=> d!650819 m!2615129))

(assert (=> b!2174302 m!2615571))

(assert (=> b!2174302 m!2615571))

(declare-fun m!2615897 () Bool)

(assert (=> b!2174302 m!2615897))

(assert (=> b!2174302 m!2615565))

(assert (=> b!2174302 m!2615897))

(assert (=> b!2174302 m!2615565))

(declare-fun m!2615899 () Bool)

(assert (=> b!2174302 m!2615899))

(assert (=> b!2174306 m!2615571))

(assert (=> b!2174314 m!2615565))

(assert (=> b!2174314 m!2615565))

(assert (=> b!2174314 m!2615895))

(assert (=> b!2174313 m!2615723))

(assert (=> bm!130496 m!2615167))

(assert (=> b!2174310 m!2615571))

(assert (=> b!2173670 d!650819))

(declare-fun b!2174333 () Bool)

(declare-fun res!935626 () Bool)

(declare-fun e!1390490 () Bool)

(assert (=> b!2174333 (=> res!935626 e!1390490)))

(assert (=> b!2174333 (= res!935626 (not ((_ is Concat!10329) r!12534)))))

(declare-fun e!1390487 () Bool)

(assert (=> b!2174333 (= e!1390487 e!1390490)))

(declare-fun d!650821 () Bool)

(declare-fun res!935623 () Bool)

(declare-fun e!1390486 () Bool)

(assert (=> d!650821 (=> res!935623 e!1390486)))

(assert (=> d!650821 (= res!935623 ((_ is ElementMatch!6027) r!12534))))

(assert (=> d!650821 (= (validRegex!2303 r!12534) e!1390486)))

(declare-fun b!2174334 () Bool)

(declare-fun e!1390488 () Bool)

(declare-fun call!130510 () Bool)

(assert (=> b!2174334 (= e!1390488 call!130510)))

(declare-fun call!130508 () Bool)

(declare-fun c!344770 () Bool)

(declare-fun c!344771 () Bool)

(declare-fun bm!130503 () Bool)

(assert (=> bm!130503 (= call!130508 (validRegex!2303 (ite c!344770 (reg!6356 r!12534) (ite c!344771 (regTwo!12567 r!12534) (regOne!12566 r!12534)))))))

(declare-fun b!2174335 () Bool)

(declare-fun e!1390492 () Bool)

(declare-fun call!130509 () Bool)

(assert (=> b!2174335 (= e!1390492 call!130509)))

(declare-fun b!2174336 () Bool)

(declare-fun e!1390489 () Bool)

(declare-fun e!1390491 () Bool)

(assert (=> b!2174336 (= e!1390489 e!1390491)))

(declare-fun res!935627 () Bool)

(assert (=> b!2174336 (= res!935627 (not (nullable!1701 (reg!6356 r!12534))))))

(assert (=> b!2174336 (=> (not res!935627) (not e!1390491))))

(declare-fun bm!130504 () Bool)

(assert (=> bm!130504 (= call!130510 (validRegex!2303 (ite c!344771 (regOne!12567 r!12534) (regTwo!12566 r!12534))))))

(declare-fun b!2174337 () Bool)

(assert (=> b!2174337 (= e!1390491 call!130508)))

(declare-fun b!2174338 () Bool)

(assert (=> b!2174338 (= e!1390490 e!1390488)))

(declare-fun res!935624 () Bool)

(assert (=> b!2174338 (=> (not res!935624) (not e!1390488))))

(assert (=> b!2174338 (= res!935624 call!130509)))

(declare-fun bm!130505 () Bool)

(assert (=> bm!130505 (= call!130509 call!130508)))

(declare-fun b!2174339 () Bool)

(assert (=> b!2174339 (= e!1390486 e!1390489)))

(assert (=> b!2174339 (= c!344770 ((_ is Star!6027) r!12534))))

(declare-fun b!2174340 () Bool)

(assert (=> b!2174340 (= e!1390489 e!1390487)))

(assert (=> b!2174340 (= c!344771 ((_ is Union!6027) r!12534))))

(declare-fun b!2174341 () Bool)

(declare-fun res!935625 () Bool)

(assert (=> b!2174341 (=> (not res!935625) (not e!1390492))))

(assert (=> b!2174341 (= res!935625 call!130510)))

(assert (=> b!2174341 (= e!1390487 e!1390492)))

(assert (= (and d!650821 (not res!935623)) b!2174339))

(assert (= (and b!2174339 c!344770) b!2174336))

(assert (= (and b!2174339 (not c!344770)) b!2174340))

(assert (= (and b!2174336 res!935627) b!2174337))

(assert (= (and b!2174340 c!344771) b!2174341))

(assert (= (and b!2174340 (not c!344771)) b!2174333))

(assert (= (and b!2174341 res!935625) b!2174335))

(assert (= (and b!2174333 (not res!935626)) b!2174338))

(assert (= (and b!2174338 res!935624) b!2174334))

(assert (= (or b!2174335 b!2174338) bm!130505))

(assert (= (or b!2174341 b!2174334) bm!130504))

(assert (= (or b!2174337 bm!130505) bm!130503))

(declare-fun m!2615901 () Bool)

(assert (=> bm!130503 m!2615901))

(declare-fun m!2615903 () Bool)

(assert (=> b!2174336 m!2615903))

(declare-fun m!2615905 () Bool)

(assert (=> bm!130504 m!2615905))

(assert (=> start!210866 d!650821))

(declare-fun d!650823 () Bool)

(declare-fun isBalanced!2533 (Conc!8163) Bool)

(assert (=> d!650823 (= (inv!33476 totalInput!977) (isBalanced!2533 (c!344580 totalInput!977)))))

(declare-fun bs!447063 () Bool)

(assert (= bs!447063 d!650823))

(declare-fun m!2615907 () Bool)

(assert (=> bs!447063 m!2615907))

(assert (=> start!210866 d!650823))

(declare-fun d!650825 () Bool)

(assert (=> d!650825 (= (inv!33476 input!5540) (isBalanced!2533 (c!344580 input!5540)))))

(declare-fun bs!447064 () Bool)

(assert (= bs!447064 d!650825))

(declare-fun m!2615909 () Bool)

(assert (=> bs!447064 m!2615909))

(assert (=> start!210866 d!650825))

(declare-fun d!650827 () Bool)

(declare-fun c!344774 () Bool)

(assert (=> d!650827 (= c!344774 ((_ is Node!8163) (c!344580 totalInput!977)))))

(declare-fun e!1390497 () Bool)

(assert (=> d!650827 (= (inv!33474 (c!344580 totalInput!977)) e!1390497)))

(declare-fun b!2174348 () Bool)

(declare-fun inv!33479 (Conc!8163) Bool)

(assert (=> b!2174348 (= e!1390497 (inv!33479 (c!344580 totalInput!977)))))

(declare-fun b!2174349 () Bool)

(declare-fun e!1390498 () Bool)

(assert (=> b!2174349 (= e!1390497 e!1390498)))

(declare-fun res!935630 () Bool)

(assert (=> b!2174349 (= res!935630 (not ((_ is Leaf!11944) (c!344580 totalInput!977))))))

(assert (=> b!2174349 (=> res!935630 e!1390498)))

(declare-fun b!2174350 () Bool)

(declare-fun inv!33480 (Conc!8163) Bool)

(assert (=> b!2174350 (= e!1390498 (inv!33480 (c!344580 totalInput!977)))))

(assert (= (and d!650827 c!344774) b!2174348))

(assert (= (and d!650827 (not c!344774)) b!2174349))

(assert (= (and b!2174349 (not res!935630)) b!2174350))

(declare-fun m!2615911 () Bool)

(assert (=> b!2174348 m!2615911))

(declare-fun m!2615913 () Bool)

(assert (=> b!2174350 m!2615913))

(assert (=> b!2173679 d!650827))

(declare-fun bm!130506 () Bool)

(declare-fun call!130511 () Bool)

(assert (=> bm!130506 (= call!130511 (isEmpty!14465 lt!810529))))

(declare-fun b!2174352 () Bool)

(declare-fun e!1390499 () Bool)

(assert (=> b!2174352 (= e!1390499 (matchR!2776 (derivativeStep!1444 r!12534 (head!4654 lt!810529)) (tail!3126 lt!810529)))))

(declare-fun b!2174353 () Bool)

(declare-fun e!1390503 () Bool)

(declare-fun lt!810932 () Bool)

(assert (=> b!2174353 (= e!1390503 (= lt!810932 call!130511))))

(declare-fun b!2174354 () Bool)

(declare-fun res!935638 () Bool)

(declare-fun e!1390502 () Bool)

(assert (=> b!2174354 (=> res!935638 e!1390502)))

(assert (=> b!2174354 (= res!935638 (not ((_ is ElementMatch!6027) r!12534)))))

(declare-fun e!1390504 () Bool)

(assert (=> b!2174354 (= e!1390504 e!1390502)))

(declare-fun b!2174355 () Bool)

(declare-fun e!1390501 () Bool)

(assert (=> b!2174355 (= e!1390502 e!1390501)))

(declare-fun res!935635 () Bool)

(assert (=> b!2174355 (=> (not res!935635) (not e!1390501))))

(assert (=> b!2174355 (= res!935635 (not lt!810932))))

(declare-fun b!2174356 () Bool)

(declare-fun e!1390505 () Bool)

(assert (=> b!2174356 (= e!1390505 (= (head!4654 lt!810529) (c!344581 r!12534)))))

(declare-fun b!2174357 () Bool)

(declare-fun e!1390500 () Bool)

(assert (=> b!2174357 (= e!1390501 e!1390500)))

(declare-fun res!935637 () Bool)

(assert (=> b!2174357 (=> res!935637 e!1390500)))

(assert (=> b!2174357 (= res!935637 call!130511)))

(declare-fun b!2174358 () Bool)

(declare-fun res!935633 () Bool)

(assert (=> b!2174358 (=> (not res!935633) (not e!1390505))))

(assert (=> b!2174358 (= res!935633 (isEmpty!14465 (tail!3126 lt!810529)))))

(declare-fun d!650829 () Bool)

(assert (=> d!650829 e!1390503))

(declare-fun c!344776 () Bool)

(assert (=> d!650829 (= c!344776 ((_ is EmptyExpr!6027) r!12534))))

(assert (=> d!650829 (= lt!810932 e!1390499)))

(declare-fun c!344775 () Bool)

(assert (=> d!650829 (= c!344775 (isEmpty!14465 lt!810529))))

(assert (=> d!650829 (validRegex!2303 r!12534)))

(assert (=> d!650829 (= (matchR!2776 r!12534 lt!810529) lt!810932)))

(declare-fun b!2174351 () Bool)

(assert (=> b!2174351 (= e!1390503 e!1390504)))

(declare-fun c!344777 () Bool)

(assert (=> b!2174351 (= c!344777 ((_ is EmptyLang!6027) r!12534))))

(declare-fun b!2174359 () Bool)

(assert (=> b!2174359 (= e!1390504 (not lt!810932))))

(declare-fun b!2174360 () Bool)

(assert (=> b!2174360 (= e!1390500 (not (= (head!4654 lt!810529) (c!344581 r!12534))))))

(declare-fun b!2174361 () Bool)

(declare-fun res!935636 () Bool)

(assert (=> b!2174361 (=> res!935636 e!1390502)))

(assert (=> b!2174361 (= res!935636 e!1390505)))

(declare-fun res!935631 () Bool)

(assert (=> b!2174361 (=> (not res!935631) (not e!1390505))))

(assert (=> b!2174361 (= res!935631 lt!810932)))

(declare-fun b!2174362 () Bool)

(declare-fun res!935634 () Bool)

(assert (=> b!2174362 (=> (not res!935634) (not e!1390505))))

(assert (=> b!2174362 (= res!935634 (not call!130511))))

(declare-fun b!2174363 () Bool)

(assert (=> b!2174363 (= e!1390499 (nullable!1701 r!12534))))

(declare-fun b!2174364 () Bool)

(declare-fun res!935632 () Bool)

(assert (=> b!2174364 (=> res!935632 e!1390500)))

(assert (=> b!2174364 (= res!935632 (not (isEmpty!14465 (tail!3126 lt!810529))))))

(assert (= (and d!650829 c!344775) b!2174363))

(assert (= (and d!650829 (not c!344775)) b!2174352))

(assert (= (and d!650829 c!344776) b!2174353))

(assert (= (and d!650829 (not c!344776)) b!2174351))

(assert (= (and b!2174351 c!344777) b!2174359))

(assert (= (and b!2174351 (not c!344777)) b!2174354))

(assert (= (and b!2174354 (not res!935638)) b!2174361))

(assert (= (and b!2174361 res!935631) b!2174362))

(assert (= (and b!2174362 res!935634) b!2174358))

(assert (= (and b!2174358 res!935633) b!2174356))

(assert (= (and b!2174361 (not res!935636)) b!2174355))

(assert (= (and b!2174355 res!935635) b!2174357))

(assert (= (and b!2174357 (not res!935637)) b!2174364))

(assert (= (and b!2174364 (not res!935632)) b!2174360))

(assert (= (or b!2174353 b!2174357 b!2174362) bm!130506))

(assert (=> b!2174358 m!2615587))

(assert (=> b!2174358 m!2615587))

(declare-fun m!2615915 () Bool)

(assert (=> b!2174358 m!2615915))

(assert (=> d!650829 m!2615795))

(assert (=> d!650829 m!2615129))

(assert (=> b!2174352 m!2615593))

(assert (=> b!2174352 m!2615593))

(declare-fun m!2615917 () Bool)

(assert (=> b!2174352 m!2615917))

(assert (=> b!2174352 m!2615587))

(assert (=> b!2174352 m!2615917))

(assert (=> b!2174352 m!2615587))

(declare-fun m!2615919 () Bool)

(assert (=> b!2174352 m!2615919))

(assert (=> b!2174356 m!2615593))

(assert (=> b!2174364 m!2615587))

(assert (=> b!2174364 m!2615587))

(assert (=> b!2174364 m!2615915))

(assert (=> b!2174363 m!2615723))

(assert (=> bm!130506 m!2615795))

(assert (=> b!2174360 m!2615593))

(assert (=> b!2173677 d!650829))

(declare-fun d!650831 () Bool)

(assert (=> d!650831 (= (matchR!2776 r!12534 lt!810529) (matchZipper!143 z!4055 lt!810529))))

(declare-fun lt!810935 () Unit!38273)

(declare-fun choose!12828 ((InoxSet Context!3194) List!25296 Regex!6027 List!25294) Unit!38273)

(assert (=> d!650831 (= lt!810935 (choose!12828 z!4055 lt!810527 r!12534 lt!810529))))

(assert (=> d!650831 (validRegex!2303 r!12534)))

(assert (=> d!650831 (= (theoremZipperRegexEquiv!53 z!4055 lt!810527 r!12534 lt!810529) lt!810935)))

(declare-fun bs!447065 () Bool)

(assert (= bs!447065 d!650831))

(assert (=> bs!447065 m!2615153))

(assert (=> bs!447065 m!2615227))

(declare-fun m!2615921 () Bool)

(assert (=> bs!447065 m!2615921))

(assert (=> bs!447065 m!2615129))

(assert (=> b!2173677 d!650831))

(declare-fun d!650833 () Bool)

(declare-fun lt!810936 () Int)

(assert (=> d!650833 (>= lt!810936 0)))

(declare-fun e!1390506 () Int)

(assert (=> d!650833 (= lt!810936 e!1390506)))

(declare-fun c!344778 () Bool)

(assert (=> d!650833 (= c!344778 ((_ is Nil!25210) (_1!14861 lt!810530)))))

(assert (=> d!650833 (= (size!19695 (_1!14861 lt!810530)) lt!810936)))

(declare-fun b!2174365 () Bool)

(assert (=> b!2174365 (= e!1390506 0)))

(declare-fun b!2174366 () Bool)

(assert (=> b!2174366 (= e!1390506 (+ 1 (size!19695 (t!197862 (_1!14861 lt!810530)))))))

(assert (= (and d!650833 c!344778) b!2174365))

(assert (= (and d!650833 (not c!344778)) b!2174366))

(declare-fun m!2615923 () Bool)

(assert (=> b!2174366 m!2615923))

(assert (=> b!2173677 d!650833))

(declare-fun d!650835 () Bool)

(declare-fun lt!810937 () Int)

(assert (=> d!650835 (= lt!810937 (size!19695 (list!9668 (_1!14862 lt!810541))))))

(assert (=> d!650835 (= lt!810937 (size!19697 (c!344580 (_1!14862 lt!810541))))))

(assert (=> d!650835 (= (size!19694 (_1!14862 lt!810541)) lt!810937)))

(declare-fun bs!447066 () Bool)

(assert (= bs!447066 d!650835))

(assert (=> bs!447066 m!2615197))

(assert (=> bs!447066 m!2615197))

(declare-fun m!2615925 () Bool)

(assert (=> bs!447066 m!2615925))

(declare-fun m!2615927 () Bool)

(assert (=> bs!447066 m!2615927))

(assert (=> b!2173677 d!650835))

(declare-fun d!650837 () Bool)

(assert (=> d!650837 (= (matchR!2776 r!12534 (_1!14861 lt!810530)) (matchZipper!143 z!4055 (_1!14861 lt!810530)))))

(declare-fun lt!810938 () Unit!38273)

(assert (=> d!650837 (= lt!810938 (choose!12828 z!4055 lt!810527 r!12534 (_1!14861 lt!810530)))))

(assert (=> d!650837 (validRegex!2303 r!12534)))

(assert (=> d!650837 (= (theoremZipperRegexEquiv!53 z!4055 lt!810527 r!12534 (_1!14861 lt!810530)) lt!810938)))

(declare-fun bs!447067 () Bool)

(assert (= bs!447067 d!650837))

(assert (=> bs!447067 m!2615165))

(assert (=> bs!447067 m!2615145))

(declare-fun m!2615929 () Bool)

(assert (=> bs!447067 m!2615929))

(assert (=> bs!447067 m!2615129))

(assert (=> b!2173677 d!650837))

(declare-fun d!650839 () Bool)

(declare-fun c!344779 () Bool)

(assert (=> d!650839 (= c!344779 (isEmpty!14465 (_1!14861 lt!810530)))))

(declare-fun e!1390507 () Bool)

(assert (=> d!650839 (= (matchZipper!143 z!4055 (_1!14861 lt!810530)) e!1390507)))

(declare-fun b!2174367 () Bool)

(assert (=> b!2174367 (= e!1390507 (nullableZipper!307 z!4055))))

(declare-fun b!2174368 () Bool)

(assert (=> b!2174368 (= e!1390507 (matchZipper!143 (derivationStepZipper!130 z!4055 (head!4654 (_1!14861 lt!810530))) (tail!3126 (_1!14861 lt!810530))))))

(assert (= (and d!650839 c!344779) b!2174367))

(assert (= (and d!650839 (not c!344779)) b!2174368))

(assert (=> d!650839 m!2615167))

(assert (=> b!2174367 m!2615211))

(assert (=> b!2174368 m!2615571))

(assert (=> b!2174368 m!2615571))

(declare-fun m!2615931 () Bool)

(assert (=> b!2174368 m!2615931))

(assert (=> b!2174368 m!2615565))

(assert (=> b!2174368 m!2615931))

(assert (=> b!2174368 m!2615565))

(declare-fun m!2615933 () Bool)

(assert (=> b!2174368 m!2615933))

(assert (=> b!2173677 d!650839))

(declare-fun d!650841 () Bool)

(declare-fun c!344780 () Bool)

(assert (=> d!650841 (= c!344780 ((_ is Node!8163) (c!344580 input!5540)))))

(declare-fun e!1390508 () Bool)

(assert (=> d!650841 (= (inv!33474 (c!344580 input!5540)) e!1390508)))

(declare-fun b!2174369 () Bool)

(assert (=> b!2174369 (= e!1390508 (inv!33479 (c!344580 input!5540)))))

(declare-fun b!2174370 () Bool)

(declare-fun e!1390509 () Bool)

(assert (=> b!2174370 (= e!1390508 e!1390509)))

(declare-fun res!935639 () Bool)

(assert (=> b!2174370 (= res!935639 (not ((_ is Leaf!11944) (c!344580 input!5540))))))

(assert (=> b!2174370 (=> res!935639 e!1390509)))

(declare-fun b!2174371 () Bool)

(assert (=> b!2174371 (= e!1390509 (inv!33480 (c!344580 input!5540)))))

(assert (= (and d!650841 c!344780) b!2174369))

(assert (= (and d!650841 (not c!344780)) b!2174370))

(assert (= (and b!2174370 (not res!935639)) b!2174371))

(declare-fun m!2615935 () Bool)

(assert (=> b!2174369 m!2615935))

(declare-fun m!2615937 () Bool)

(assert (=> b!2174371 m!2615937))

(assert (=> b!2173669 d!650841))

(declare-fun bm!130507 () Bool)

(declare-fun call!130512 () Bool)

(assert (=> bm!130507 (= call!130512 (isEmpty!14465 (_1!14861 lt!810546)))))

(declare-fun b!2174373 () Bool)

(declare-fun e!1390510 () Bool)

(assert (=> b!2174373 (= e!1390510 (matchR!2776 (derivativeStep!1444 r!12534 (head!4654 (_1!14861 lt!810546))) (tail!3126 (_1!14861 lt!810546))))))

(declare-fun b!2174374 () Bool)

(declare-fun e!1390514 () Bool)

(declare-fun lt!810939 () Bool)

(assert (=> b!2174374 (= e!1390514 (= lt!810939 call!130512))))

(declare-fun b!2174375 () Bool)

(declare-fun res!935647 () Bool)

(declare-fun e!1390513 () Bool)

(assert (=> b!2174375 (=> res!935647 e!1390513)))

(assert (=> b!2174375 (= res!935647 (not ((_ is ElementMatch!6027) r!12534)))))

(declare-fun e!1390515 () Bool)

(assert (=> b!2174375 (= e!1390515 e!1390513)))

(declare-fun b!2174376 () Bool)

(declare-fun e!1390512 () Bool)

(assert (=> b!2174376 (= e!1390513 e!1390512)))

(declare-fun res!935644 () Bool)

(assert (=> b!2174376 (=> (not res!935644) (not e!1390512))))

(assert (=> b!2174376 (= res!935644 (not lt!810939))))

(declare-fun b!2174377 () Bool)

(declare-fun e!1390516 () Bool)

(assert (=> b!2174377 (= e!1390516 (= (head!4654 (_1!14861 lt!810546)) (c!344581 r!12534)))))

(declare-fun b!2174378 () Bool)

(declare-fun e!1390511 () Bool)

(assert (=> b!2174378 (= e!1390512 e!1390511)))

(declare-fun res!935646 () Bool)

(assert (=> b!2174378 (=> res!935646 e!1390511)))

(assert (=> b!2174378 (= res!935646 call!130512)))

(declare-fun b!2174379 () Bool)

(declare-fun res!935642 () Bool)

(assert (=> b!2174379 (=> (not res!935642) (not e!1390516))))

(assert (=> b!2174379 (= res!935642 (isEmpty!14465 (tail!3126 (_1!14861 lt!810546))))))

(declare-fun d!650843 () Bool)

(assert (=> d!650843 e!1390514))

(declare-fun c!344782 () Bool)

(assert (=> d!650843 (= c!344782 ((_ is EmptyExpr!6027) r!12534))))

(assert (=> d!650843 (= lt!810939 e!1390510)))

(declare-fun c!344781 () Bool)

(assert (=> d!650843 (= c!344781 (isEmpty!14465 (_1!14861 lt!810546)))))

(assert (=> d!650843 (validRegex!2303 r!12534)))

(assert (=> d!650843 (= (matchR!2776 r!12534 (_1!14861 lt!810546)) lt!810939)))

(declare-fun b!2174372 () Bool)

(assert (=> b!2174372 (= e!1390514 e!1390515)))

(declare-fun c!344783 () Bool)

(assert (=> b!2174372 (= c!344783 ((_ is EmptyLang!6027) r!12534))))

(declare-fun b!2174380 () Bool)

(assert (=> b!2174380 (= e!1390515 (not lt!810939))))

(declare-fun b!2174381 () Bool)

(assert (=> b!2174381 (= e!1390511 (not (= (head!4654 (_1!14861 lt!810546)) (c!344581 r!12534))))))

(declare-fun b!2174382 () Bool)

(declare-fun res!935645 () Bool)

(assert (=> b!2174382 (=> res!935645 e!1390513)))

(assert (=> b!2174382 (= res!935645 e!1390516)))

(declare-fun res!935640 () Bool)

(assert (=> b!2174382 (=> (not res!935640) (not e!1390516))))

(assert (=> b!2174382 (= res!935640 lt!810939)))

(declare-fun b!2174383 () Bool)

(declare-fun res!935643 () Bool)

(assert (=> b!2174383 (=> (not res!935643) (not e!1390516))))

(assert (=> b!2174383 (= res!935643 (not call!130512))))

(declare-fun b!2174384 () Bool)

(assert (=> b!2174384 (= e!1390510 (nullable!1701 r!12534))))

(declare-fun b!2174385 () Bool)

(declare-fun res!935641 () Bool)

(assert (=> b!2174385 (=> res!935641 e!1390511)))

(assert (=> b!2174385 (= res!935641 (not (isEmpty!14465 (tail!3126 (_1!14861 lt!810546)))))))

(assert (= (and d!650843 c!344781) b!2174384))

(assert (= (and d!650843 (not c!344781)) b!2174373))

(assert (= (and d!650843 c!344782) b!2174374))

(assert (= (and d!650843 (not c!344782)) b!2174372))

(assert (= (and b!2174372 c!344783) b!2174380))

(assert (= (and b!2174372 (not c!344783)) b!2174375))

(assert (= (and b!2174375 (not res!935647)) b!2174382))

(assert (= (and b!2174382 res!935640) b!2174383))

(assert (= (and b!2174383 res!935643) b!2174379))

(assert (= (and b!2174379 res!935642) b!2174377))

(assert (= (and b!2174382 (not res!935645)) b!2174376))

(assert (= (and b!2174376 res!935644) b!2174378))

(assert (= (and b!2174378 (not res!935646)) b!2174385))

(assert (= (and b!2174385 (not res!935641)) b!2174381))

(assert (= (or b!2174374 b!2174378 b!2174383) bm!130507))

(declare-fun m!2615939 () Bool)

(assert (=> b!2174379 m!2615939))

(assert (=> b!2174379 m!2615939))

(declare-fun m!2615941 () Bool)

(assert (=> b!2174379 m!2615941))

(assert (=> d!650843 m!2615223))

(assert (=> d!650843 m!2615129))

(declare-fun m!2615943 () Bool)

(assert (=> b!2174373 m!2615943))

(assert (=> b!2174373 m!2615943))

(declare-fun m!2615945 () Bool)

(assert (=> b!2174373 m!2615945))

(assert (=> b!2174373 m!2615939))

(assert (=> b!2174373 m!2615945))

(assert (=> b!2174373 m!2615939))

(declare-fun m!2615947 () Bool)

(assert (=> b!2174373 m!2615947))

(assert (=> b!2174377 m!2615943))

(assert (=> b!2174385 m!2615939))

(assert (=> b!2174385 m!2615939))

(assert (=> b!2174385 m!2615941))

(assert (=> b!2174384 m!2615723))

(assert (=> bm!130507 m!2615223))

(assert (=> b!2174381 m!2615943))

(assert (=> b!2173678 d!650843))

(declare-fun d!650845 () Bool)

(declare-fun lt!810942 () Bool)

(assert (=> d!650845 (= lt!810942 (isEmpty!14465 (list!9668 (_1!14862 lt!810541))))))

(declare-fun isEmpty!14467 (Conc!8163) Bool)

(assert (=> d!650845 (= lt!810942 (isEmpty!14467 (c!344580 (_1!14862 lt!810541))))))

(assert (=> d!650845 (= (isEmpty!14466 (_1!14862 lt!810541)) lt!810942)))

(declare-fun bs!447068 () Bool)

(assert (= bs!447068 d!650845))

(assert (=> bs!447068 m!2615197))

(assert (=> bs!447068 m!2615197))

(declare-fun m!2615949 () Bool)

(assert (=> bs!447068 m!2615949))

(declare-fun m!2615951 () Bool)

(assert (=> bs!447068 m!2615951))

(assert (=> b!2173676 d!650845))

(declare-fun b!2174398 () Bool)

(declare-fun e!1390519 () Bool)

(declare-fun tp!678530 () Bool)

(assert (=> b!2174398 (= e!1390519 tp!678530)))

(declare-fun b!2174397 () Bool)

(declare-fun tp!678528 () Bool)

(declare-fun tp!678526 () Bool)

(assert (=> b!2174397 (= e!1390519 (and tp!678528 tp!678526))))

(declare-fun b!2174399 () Bool)

(declare-fun tp!678527 () Bool)

(declare-fun tp!678529 () Bool)

(assert (=> b!2174399 (= e!1390519 (and tp!678527 tp!678529))))

(declare-fun b!2174396 () Bool)

(assert (=> b!2174396 (= e!1390519 tp_is_empty!9661)))

(assert (=> b!2173680 (= tp!678448 e!1390519)))

(assert (= (and b!2173680 ((_ is ElementMatch!6027) (regOne!12567 r!12534))) b!2174396))

(assert (= (and b!2173680 ((_ is Concat!10329) (regOne!12567 r!12534))) b!2174397))

(assert (= (and b!2173680 ((_ is Star!6027) (regOne!12567 r!12534))) b!2174398))

(assert (= (and b!2173680 ((_ is Union!6027) (regOne!12567 r!12534))) b!2174399))

(declare-fun b!2174402 () Bool)

(declare-fun e!1390520 () Bool)

(declare-fun tp!678535 () Bool)

(assert (=> b!2174402 (= e!1390520 tp!678535)))

(declare-fun b!2174401 () Bool)

(declare-fun tp!678533 () Bool)

(declare-fun tp!678531 () Bool)

(assert (=> b!2174401 (= e!1390520 (and tp!678533 tp!678531))))

(declare-fun b!2174403 () Bool)

(declare-fun tp!678532 () Bool)

(declare-fun tp!678534 () Bool)

(assert (=> b!2174403 (= e!1390520 (and tp!678532 tp!678534))))

(declare-fun b!2174400 () Bool)

(assert (=> b!2174400 (= e!1390520 tp_is_empty!9661)))

(assert (=> b!2173680 (= tp!678454 e!1390520)))

(assert (= (and b!2173680 ((_ is ElementMatch!6027) (regTwo!12567 r!12534))) b!2174400))

(assert (= (and b!2173680 ((_ is Concat!10329) (regTwo!12567 r!12534))) b!2174401))

(assert (= (and b!2173680 ((_ is Star!6027) (regTwo!12567 r!12534))) b!2174402))

(assert (= (and b!2173680 ((_ is Union!6027) (regTwo!12567 r!12534))) b!2174403))

(declare-fun condSetEmpty!18256 () Bool)

(assert (=> setNonEmpty!18250 (= condSetEmpty!18256 (= setRest!18250 ((as const (Array Context!3194 Bool)) false)))))

(declare-fun setRes!18256 () Bool)

(assert (=> setNonEmpty!18250 (= tp!678449 setRes!18256)))

(declare-fun setIsEmpty!18256 () Bool)

(assert (=> setIsEmpty!18256 setRes!18256))

(declare-fun e!1390523 () Bool)

(declare-fun setElem!18256 () Context!3194)

(declare-fun setNonEmpty!18256 () Bool)

(declare-fun tp!678541 () Bool)

(assert (=> setNonEmpty!18256 (= setRes!18256 (and tp!678541 (inv!33475 setElem!18256) e!1390523))))

(declare-fun setRest!18256 () (InoxSet Context!3194))

(assert (=> setNonEmpty!18256 (= setRest!18250 ((_ map or) (store ((as const (Array Context!3194 Bool)) false) setElem!18256 true) setRest!18256))))

(declare-fun b!2174408 () Bool)

(declare-fun tp!678540 () Bool)

(assert (=> b!2174408 (= e!1390523 tp!678540)))

(assert (= (and setNonEmpty!18250 condSetEmpty!18256) setIsEmpty!18256))

(assert (= (and setNonEmpty!18250 (not condSetEmpty!18256)) setNonEmpty!18256))

(assert (= setNonEmpty!18256 b!2174408))

(declare-fun m!2615953 () Bool)

(assert (=> setNonEmpty!18256 m!2615953))

(declare-fun tp!678549 () Bool)

(declare-fun tp!678548 () Bool)

(declare-fun b!2174417 () Bool)

(declare-fun e!1390528 () Bool)

(assert (=> b!2174417 (= e!1390528 (and (inv!33474 (left!19359 (c!344580 totalInput!977))) tp!678548 (inv!33474 (right!19689 (c!344580 totalInput!977))) tp!678549))))

(declare-fun b!2174419 () Bool)

(declare-fun e!1390529 () Bool)

(declare-fun tp!678550 () Bool)

(assert (=> b!2174419 (= e!1390529 tp!678550)))

(declare-fun b!2174418 () Bool)

(declare-fun inv!33481 (IArray!16331) Bool)

(assert (=> b!2174418 (= e!1390528 (and (inv!33481 (xs!11105 (c!344580 totalInput!977))) e!1390529))))

(assert (=> b!2173679 (= tp!678453 (and (inv!33474 (c!344580 totalInput!977)) e!1390528))))

(assert (= (and b!2173679 ((_ is Node!8163) (c!344580 totalInput!977))) b!2174417))

(assert (= b!2174418 b!2174419))

(assert (= (and b!2173679 ((_ is Leaf!11944) (c!344580 totalInput!977))) b!2174418))

(declare-fun m!2615955 () Bool)

(assert (=> b!2174417 m!2615955))

(declare-fun m!2615957 () Bool)

(assert (=> b!2174417 m!2615957))

(declare-fun m!2615959 () Bool)

(assert (=> b!2174418 m!2615959))

(assert (=> b!2173679 m!2615177))

(declare-fun b!2174422 () Bool)

(declare-fun e!1390530 () Bool)

(declare-fun tp!678555 () Bool)

(assert (=> b!2174422 (= e!1390530 tp!678555)))

(declare-fun b!2174421 () Bool)

(declare-fun tp!678553 () Bool)

(declare-fun tp!678551 () Bool)

(assert (=> b!2174421 (= e!1390530 (and tp!678553 tp!678551))))

(declare-fun b!2174423 () Bool)

(declare-fun tp!678552 () Bool)

(declare-fun tp!678554 () Bool)

(assert (=> b!2174423 (= e!1390530 (and tp!678552 tp!678554))))

(declare-fun b!2174420 () Bool)

(assert (=> b!2174420 (= e!1390530 tp_is_empty!9661)))

(assert (=> b!2173683 (= tp!678451 e!1390530)))

(assert (= (and b!2173683 ((_ is ElementMatch!6027) (reg!6356 r!12534))) b!2174420))

(assert (= (and b!2173683 ((_ is Concat!10329) (reg!6356 r!12534))) b!2174421))

(assert (= (and b!2173683 ((_ is Star!6027) (reg!6356 r!12534))) b!2174422))

(assert (= (and b!2173683 ((_ is Union!6027) (reg!6356 r!12534))) b!2174423))

(declare-fun tp!678556 () Bool)

(declare-fun b!2174424 () Bool)

(declare-fun e!1390531 () Bool)

(declare-fun tp!678557 () Bool)

(assert (=> b!2174424 (= e!1390531 (and (inv!33474 (left!19359 (c!344580 input!5540))) tp!678556 (inv!33474 (right!19689 (c!344580 input!5540))) tp!678557))))

(declare-fun b!2174426 () Bool)

(declare-fun e!1390532 () Bool)

(declare-fun tp!678558 () Bool)

(assert (=> b!2174426 (= e!1390532 tp!678558)))

(declare-fun b!2174425 () Bool)

(assert (=> b!2174425 (= e!1390531 (and (inv!33481 (xs!11105 (c!344580 input!5540))) e!1390532))))

(assert (=> b!2173669 (= tp!678452 (and (inv!33474 (c!344580 input!5540)) e!1390531))))

(assert (= (and b!2173669 ((_ is Node!8163) (c!344580 input!5540))) b!2174424))

(assert (= b!2174425 b!2174426))

(assert (= (and b!2173669 ((_ is Leaf!11944) (c!344580 input!5540))) b!2174425))

(declare-fun m!2615961 () Bool)

(assert (=> b!2174424 m!2615961))

(declare-fun m!2615963 () Bool)

(assert (=> b!2174424 m!2615963))

(declare-fun m!2615965 () Bool)

(assert (=> b!2174425 m!2615965))

(assert (=> b!2173669 m!2615233))

(declare-fun b!2174431 () Bool)

(declare-fun e!1390535 () Bool)

(declare-fun tp!678563 () Bool)

(declare-fun tp!678564 () Bool)

(assert (=> b!2174431 (= e!1390535 (and tp!678563 tp!678564))))

(assert (=> b!2173667 (= tp!678455 e!1390535)))

(assert (= (and b!2173667 ((_ is Cons!25211) (exprs!2097 setElem!18250))) b!2174431))

(declare-fun b!2174434 () Bool)

(declare-fun e!1390536 () Bool)

(declare-fun tp!678569 () Bool)

(assert (=> b!2174434 (= e!1390536 tp!678569)))

(declare-fun b!2174433 () Bool)

(declare-fun tp!678567 () Bool)

(declare-fun tp!678565 () Bool)

(assert (=> b!2174433 (= e!1390536 (and tp!678567 tp!678565))))

(declare-fun b!2174435 () Bool)

(declare-fun tp!678566 () Bool)

(declare-fun tp!678568 () Bool)

(assert (=> b!2174435 (= e!1390536 (and tp!678566 tp!678568))))

(declare-fun b!2174432 () Bool)

(assert (=> b!2174432 (= e!1390536 tp_is_empty!9661)))

(assert (=> b!2173668 (= tp!678450 e!1390536)))

(assert (= (and b!2173668 ((_ is ElementMatch!6027) (regOne!12566 r!12534))) b!2174432))

(assert (= (and b!2173668 ((_ is Concat!10329) (regOne!12566 r!12534))) b!2174433))

(assert (= (and b!2173668 ((_ is Star!6027) (regOne!12566 r!12534))) b!2174434))

(assert (= (and b!2173668 ((_ is Union!6027) (regOne!12566 r!12534))) b!2174435))

(declare-fun b!2174438 () Bool)

(declare-fun e!1390537 () Bool)

(declare-fun tp!678574 () Bool)

(assert (=> b!2174438 (= e!1390537 tp!678574)))

(declare-fun b!2174437 () Bool)

(declare-fun tp!678572 () Bool)

(declare-fun tp!678570 () Bool)

(assert (=> b!2174437 (= e!1390537 (and tp!678572 tp!678570))))

(declare-fun b!2174439 () Bool)

(declare-fun tp!678571 () Bool)

(declare-fun tp!678573 () Bool)

(assert (=> b!2174439 (= e!1390537 (and tp!678571 tp!678573))))

(declare-fun b!2174436 () Bool)

(assert (=> b!2174436 (= e!1390537 tp_is_empty!9661)))

(assert (=> b!2173668 (= tp!678456 e!1390537)))

(assert (= (and b!2173668 ((_ is ElementMatch!6027) (regTwo!12566 r!12534))) b!2174436))

(assert (= (and b!2173668 ((_ is Concat!10329) (regTwo!12566 r!12534))) b!2174437))

(assert (= (and b!2173668 ((_ is Star!6027) (regTwo!12566 r!12534))) b!2174438))

(assert (= (and b!2173668 ((_ is Union!6027) (regTwo!12566 r!12534))) b!2174439))

(check-sat (not bm!130477) (not b!2174403) (not d!650641) (not b!2173752) (not d!650709) (not b!2173748) (not b!2174306) (not b!2173998) (not d!650829) (not b!2174439) (not b!2174126) (not b!2174358) (not d!650837) (not d!650809) (not b!2174267) (not bm!130480) (not b!2174421) (not d!650839) (not b!2174368) (not b!2174433) (not b!2174366) (not b!2174417) (not b!2173931) (not bm!130506) (not b!2173754) (not b!2173826) (not b!2174384) (not d!650845) (not b!2174272) (not d!650843) (not b!2174010) (not d!650645) (not b!2174248) (not b!2174313) (not b!2174314) (not d!650717) (not b!2174397) (not b!2174350) (not d!650825) (not b!2174379) (not d!650811) (not b!2174258) (not b!2174398) (not b!2174170) (not b!2174425) (not b!2174426) (not b!2174367) (not bm!130496) (not b!2174422) (not bm!130482) (not b!2174127) (not b!2174266) (not b!2174431) (not b!2174270) (not b!2174263) (not b!2174434) (not b!2173999) (not b!2174128) (not d!650815) (not b!2174381) (not b!2174385) (not d!650785) (not d!650713) (not b!2174352) (not bm!130479) (not b!2174009) (not b!2174437) (not d!650707) (not d!650823) (not b!2173669) (not b!2174264) (not d!650747) (not b!2174308) (not b!2174401) (not b!2173697) (not bm!130481) (not d!650819) (not b!2174008) (not b!2174419) (not b!2174005) (not d!650639) (not b!2174261) (not d!650799) (not b!2174149) (not b!2174348) (not b!2174408) (not b!2173938) (not d!650733) (not bm!130504) (not b!2174310) (not d!650807) (not b!2174000) (not b!2174423) (not d!650835) (not bm!130483) (not b!2174169) (not b!2174399) (not b!2174256) (not bm!130478) (not b!2174402) (not d!650715) (not d!650831) (not b!2173932) (not b!2173968) (not b!2173679) (not d!650787) (not setNonEmpty!18256) (not bm!130507) (not bm!130425) (not d!650721) (not b!2174265) (not b!2174302) (not d!650651) (not d!650803) (not b!2174435) (not d!650805) (not b!2174371) (not b!2174250) (not b!2173827) (not b!2174369) tp_is_empty!9661 (not b!2174360) (not b!2174150) (not b!2174356) (not b!2174424) (not b!2174377) (not b!2174438) (not b!2173705) (not b!2173933) (not d!650817) (not b!2173936) (not b!2174253) (not b!2174148) (not b!2173969) (not d!650743) (not d!650789) (not b!2173749) (not bm!130436) (not b!2174373) (not b!2174418) (not d!650793) (not b!2173988) (not b!2174252) (not b!2174363) (not bm!130503) (not bm!130484) (not b!2174222) (not b!2173704) (not d!650711) (not b!2174364) (not d!650637) (not b!2173698) (not d!650737) (not b!2174336) (not d!650735) (not b!2174006) (not b!2174146) (not d!650719) (not b!2174123))
(check-sat)
