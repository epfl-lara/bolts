; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212030 () Bool)

(assert start!212030)

(declare-fun b!2186163 () Bool)

(declare-fun e!1397138 () Bool)

(declare-datatypes ((C!12244 0))(
  ( (C!12245 (val!7108 Int)) )
))
(declare-datatypes ((List!25360 0))(
  ( (Nil!25276) (Cons!25276 (h!30677 C!12244) (t!197950 List!25360)) )
))
(declare-datatypes ((IArray!16375 0))(
  ( (IArray!16376 (innerList!8245 List!25360)) )
))
(declare-datatypes ((Conc!8185 0))(
  ( (Node!8185 (left!19400 Conc!8185) (right!19730 Conc!8185) (csize!16600 Int) (cheight!8396 Int)) (Leaf!11977 (xs!11127 IArray!16375) (csize!16601 Int)) (Empty!8185) )
))
(declare-datatypes ((BalanceConc!16132 0))(
  ( (BalanceConc!16133 (c!347560 Conc!8185)) )
))
(declare-fun input!5540 () BalanceConc!16132)

(declare-fun tp!681798 () Bool)

(declare-fun inv!33609 (Conc!8185) Bool)

(assert (=> b!2186163 (= e!1397138 (and (inv!33609 (c!347560 input!5540)) tp!681798))))

(declare-fun b!2186164 () Bool)

(declare-fun e!1397137 () Bool)

(declare-fun e!1397133 () Bool)

(assert (=> b!2186164 (= e!1397137 e!1397133)))

(declare-fun res!939405 () Bool)

(assert (=> b!2186164 (=> (not res!939405) (not e!1397133))))

(declare-datatypes ((Regex!6049 0))(
  ( (ElementMatch!6049 (c!347561 C!12244)) (Concat!10351 (regOne!12610 Regex!6049) (regTwo!12610 Regex!6049)) (EmptyExpr!6049) (Star!6049 (reg!6378 Regex!6049)) (EmptyLang!6049) (Union!6049 (regOne!12611 Regex!6049) (regTwo!12611 Regex!6049)) )
))
(declare-datatypes ((List!25361 0))(
  ( (Nil!25277) (Cons!25277 (h!30678 Regex!6049) (t!197951 List!25361)) )
))
(declare-datatypes ((Context!3238 0))(
  ( (Context!3239 (exprs!2119 List!25361)) )
))
(declare-datatypes ((List!25362 0))(
  ( (Nil!25278) (Cons!25278 (h!30679 Context!3238) (t!197952 List!25362)) )
))
(declare-fun lt!816108 () List!25362)

(declare-fun r!12534 () Regex!6049)

(declare-fun unfocusZipper!156 (List!25362) Regex!6049)

(assert (=> b!2186164 (= res!939405 (= (unfocusZipper!156 lt!816108) r!12534))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3238))

(declare-fun toList!1232 ((InoxSet Context!3238)) List!25362)

(assert (=> b!2186164 (= lt!816108 (toList!1232 z!4055))))

(declare-fun setIsEmpty!18358 () Bool)

(declare-fun setRes!18358 () Bool)

(assert (=> setIsEmpty!18358 setRes!18358))

(declare-fun b!2186165 () Bool)

(declare-fun e!1397135 () Bool)

(declare-fun e!1397142 () Bool)

(assert (=> b!2186165 (= e!1397135 e!1397142)))

(declare-fun res!939401 () Bool)

(assert (=> b!2186165 (=> (not res!939401) (not e!1397142))))

(declare-fun lt!816119 () List!25360)

(declare-fun lt!816118 () List!25360)

(assert (=> b!2186165 (= res!939401 (= lt!816119 lt!816118))))

(declare-fun lt!816112 () List!25360)

(declare-fun lt!816094 () List!25360)

(declare-fun ++!6410 (List!25360 List!25360) List!25360)

(assert (=> b!2186165 (= lt!816119 (++!6410 lt!816112 lt!816094))))

(declare-datatypes ((tuple2!25078 0))(
  ( (tuple2!25079 (_1!14909 BalanceConc!16132) (_2!14909 BalanceConc!16132)) )
))
(declare-fun lt!816099 () tuple2!25078)

(declare-fun list!9706 (BalanceConc!16132) List!25360)

(assert (=> b!2186165 (= lt!816094 (list!9706 (_2!14909 lt!816099)))))

(assert (=> b!2186165 (= lt!816112 (list!9706 (_1!14909 lt!816099)))))

(declare-datatypes ((tuple2!25080 0))(
  ( (tuple2!25081 (_1!14910 List!25360) (_2!14910 List!25360)) )
))
(declare-fun lt!816097 () tuple2!25080)

(declare-fun findLongestMatch!603 (Regex!6049 List!25360) tuple2!25080)

(assert (=> b!2186165 (= lt!816097 (findLongestMatch!603 r!12534 lt!816118))))

(declare-fun lt!816114 () Int)

(declare-fun lt!816120 () Int)

(declare-fun size!19750 (BalanceConc!16132) Int)

(assert (=> b!2186165 (= lt!816114 (- lt!816120 (size!19750 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16132)

(assert (=> b!2186165 (= lt!816120 (size!19750 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!98 ((InoxSet Context!3238) BalanceConc!16132 BalanceConc!16132) tuple2!25078)

(assert (=> b!2186165 (= lt!816099 (findLongestMatchZipperSequenceV3!98 z!4055 input!5540 totalInput!977))))

(declare-fun b!2186166 () Bool)

(declare-fun e!1397144 () Bool)

(assert (=> b!2186166 (= e!1397144 false)))

(declare-fun lt!816107 () Bool)

(assert (=> b!2186166 (or (= lt!816112 (_1!14910 lt!816097)) (not lt!816107))))

(declare-datatypes ((Unit!38401 0))(
  ( (Unit!38402) )
))
(declare-fun lt!816100 () Unit!38401)

(declare-fun longestMatchNoBiggerStringMatch!5 (Regex!6049 List!25360 List!25360 List!25360) Unit!38401)

(assert (=> b!2186166 (= lt!816100 (longestMatchNoBiggerStringMatch!5 r!12534 lt!816118 (_1!14910 lt!816097) lt!816112))))

(declare-fun setElem!18358 () Context!3238)

(declare-fun tp!681802 () Bool)

(declare-fun setNonEmpty!18358 () Bool)

(declare-fun e!1397132 () Bool)

(declare-fun inv!33610 (Context!3238) Bool)

(assert (=> setNonEmpty!18358 (= setRes!18358 (and tp!681802 (inv!33610 setElem!18358) e!1397132))))

(declare-fun setRest!18358 () (InoxSet Context!3238))

(assert (=> setNonEmpty!18358 (= z!4055 ((_ map or) (store ((as const (Array Context!3238 Bool)) false) setElem!18358 true) setRest!18358))))

(declare-fun b!2186167 () Bool)

(declare-fun e!1397141 () Int)

(assert (=> b!2186167 (= e!1397141 (- 1))))

(declare-fun b!2186168 () Bool)

(declare-fun e!1397147 () Bool)

(declare-fun tp!681799 () Bool)

(declare-fun tp!681800 () Bool)

(assert (=> b!2186168 (= e!1397147 (and tp!681799 tp!681800))))

(declare-fun b!2186169 () Bool)

(declare-fun tp!681801 () Bool)

(assert (=> b!2186169 (= e!1397147 tp!681801)))

(declare-fun res!939404 () Bool)

(assert (=> start!212030 (=> (not res!939404) (not e!1397137))))

(declare-fun validRegex!2325 (Regex!6049) Bool)

(assert (=> start!212030 (= res!939404 (validRegex!2325 r!12534))))

(assert (=> start!212030 e!1397137))

(assert (=> start!212030 e!1397147))

(declare-fun e!1397134 () Bool)

(declare-fun inv!33611 (BalanceConc!16132) Bool)

(assert (=> start!212030 (and (inv!33611 totalInput!977) e!1397134)))

(assert (=> start!212030 (and (inv!33611 input!5540) e!1397138)))

(declare-fun condSetEmpty!18358 () Bool)

(assert (=> start!212030 (= condSetEmpty!18358 (= z!4055 ((as const (Array Context!3238 Bool)) false)))))

(assert (=> start!212030 setRes!18358))

(declare-fun b!2186170 () Bool)

(declare-fun tp!681795 () Bool)

(declare-fun tp!681796 () Bool)

(assert (=> b!2186170 (= e!1397147 (and tp!681795 tp!681796))))

(declare-fun b!2186171 () Bool)

(declare-fun e!1397140 () Bool)

(declare-fun lt!816111 () tuple2!25080)

(declare-fun matchR!2798 (Regex!6049 List!25360) Bool)

(assert (=> b!2186171 (= e!1397140 (matchR!2798 r!12534 (_1!14910 lt!816111)))))

(declare-fun b!2186172 () Bool)

(declare-fun e!1397143 () Bool)

(assert (=> b!2186172 (= e!1397142 e!1397143)))

(declare-fun res!939403 () Bool)

(assert (=> b!2186172 (=> (not res!939403) (not e!1397143))))

(declare-fun lt!816095 () List!25360)

(assert (=> b!2186172 (= res!939403 (= lt!816095 lt!816118))))

(assert (=> b!2186172 (= lt!816095 (++!6410 (_1!14910 lt!816097) (_2!14910 lt!816097)))))

(declare-fun b!2186173 () Bool)

(declare-fun tp!681797 () Bool)

(assert (=> b!2186173 (= e!1397132 tp!681797)))

(declare-fun e!1397139 () Bool)

(declare-fun b!2186174 () Bool)

(declare-fun lt!816105 () Int)

(declare-fun lt!816109 () List!25360)

(declare-fun matchZipper!165 ((InoxSet Context!3238) List!25360) Bool)

(declare-fun take!257 (List!25360 Int) List!25360)

(declare-fun drop!1267 (List!25360 Int) List!25360)

(assert (=> b!2186174 (= e!1397139 (matchZipper!165 z!4055 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)))))

(declare-fun b!2186175 () Bool)

(declare-fun tp_is_empty!9705 () Bool)

(assert (=> b!2186175 (= e!1397147 tp_is_empty!9705)))

(declare-fun b!2186176 () Bool)

(declare-fun e!1397146 () Bool)

(assert (=> b!2186176 (= e!1397146 e!1397144)))

(declare-fun res!939400 () Bool)

(assert (=> b!2186176 (=> res!939400 e!1397144)))

(declare-fun lt!816106 () Int)

(declare-fun lt!816102 () Int)

(assert (=> b!2186176 (= res!939400 (or (> lt!816106 lt!816102) (<= lt!816102 lt!816106)))))

(assert (=> b!2186176 (= lt!816102 (size!19750 (_1!14909 lt!816099)))))

(declare-fun size!19751 (List!25360) Int)

(assert (=> b!2186176 (= lt!816106 (size!19751 (_1!14910 lt!816097)))))

(declare-fun lt!816104 () Bool)

(assert (=> b!2186176 (= lt!816107 lt!816104)))

(assert (=> b!2186176 (= lt!816107 (matchR!2798 r!12534 lt!816112))))

(declare-fun lt!816115 () Unit!38401)

(declare-fun theoremZipperRegexEquiv!75 ((InoxSet Context!3238) List!25362 Regex!6049 List!25360) Unit!38401)

(assert (=> b!2186176 (= lt!816115 (theoremZipperRegexEquiv!75 z!4055 lt!816108 r!12534 lt!816112))))

(declare-fun lt!816117 () Bool)

(assert (=> b!2186176 (= lt!816117 (matchZipper!165 z!4055 (_1!14910 lt!816097)))))

(declare-fun lt!816103 () Unit!38401)

(assert (=> b!2186176 (= lt!816103 (theoremZipperRegexEquiv!75 z!4055 lt!816108 r!12534 (_1!14910 lt!816097)))))

(declare-fun b!2186177 () Bool)

(assert (=> b!2186177 (= e!1397141 (- lt!816114 1))))

(declare-fun b!2186178 () Bool)

(declare-fun e!1397145 () Bool)

(declare-fun isEmpty!14529 (BalanceConc!16132) Bool)

(assert (=> b!2186178 (= e!1397145 (not (isEmpty!14529 (_1!14909 lt!816099))))))

(declare-fun b!2186179 () Bool)

(declare-fun tp!681794 () Bool)

(assert (=> b!2186179 (= e!1397134 (and (inv!33609 (c!347560 totalInput!977)) tp!681794))))

(declare-fun b!2186180 () Bool)

(declare-fun e!1397131 () Bool)

(assert (=> b!2186180 (= e!1397131 e!1397146)))

(declare-fun res!939396 () Bool)

(assert (=> b!2186180 (=> res!939396 e!1397146)))

(declare-fun e!1397136 () Bool)

(assert (=> b!2186180 (= res!939396 e!1397136)))

(declare-fun res!939398 () Bool)

(assert (=> b!2186180 (=> (not res!939398) (not e!1397136))))

(assert (=> b!2186180 (= res!939398 (not lt!816117))))

(assert (=> b!2186180 (= lt!816117 (matchR!2798 r!12534 (_1!14910 lt!816097)))))

(declare-fun b!2186181 () Bool)

(assert (=> b!2186181 (= e!1397133 e!1397135)))

(declare-fun res!939402 () Bool)

(assert (=> b!2186181 (=> (not res!939402) (not e!1397135))))

(declare-fun isSuffix!716 (List!25360 List!25360) Bool)

(assert (=> b!2186181 (= res!939402 (isSuffix!716 lt!816118 lt!816109))))

(assert (=> b!2186181 (= lt!816109 (list!9706 totalInput!977))))

(assert (=> b!2186181 (= lt!816118 (list!9706 input!5540))))

(declare-fun b!2186182 () Bool)

(assert (=> b!2186182 (= e!1397143 (not e!1397131))))

(declare-fun res!939397 () Bool)

(assert (=> b!2186182 (=> res!939397 e!1397131)))

(assert (=> b!2186182 (= res!939397 e!1397145)))

(declare-fun res!939394 () Bool)

(assert (=> b!2186182 (=> (not res!939394) (not e!1397145))))

(assert (=> b!2186182 (= res!939394 (not lt!816104))))

(assert (=> b!2186182 (= lt!816104 (matchZipper!165 z!4055 lt!816112))))

(assert (=> b!2186182 e!1397140))

(declare-fun res!939399 () Bool)

(assert (=> b!2186182 (=> res!939399 e!1397140)))

(declare-fun isEmpty!14530 (List!25360) Bool)

(assert (=> b!2186182 (= res!939399 (isEmpty!14530 (_1!14910 lt!816111)))))

(declare-fun findLongestMatchInner!674 (Regex!6049 List!25360 Int List!25360 List!25360 Int) tuple2!25080)

(assert (=> b!2186182 (= lt!816111 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))))

(declare-fun lt!816096 () Unit!38401)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!647 (Regex!6049 List!25360) Unit!38401)

(assert (=> b!2186182 (= lt!816096 (longestMatchIsAcceptedByMatchOrIsEmpty!647 r!12534 lt!816118))))

(assert (=> b!2186182 e!1397139))

(declare-fun res!939395 () Bool)

(assert (=> b!2186182 (=> res!939395 e!1397139)))

(assert (=> b!2186182 (= res!939395 (<= lt!816105 0))))

(declare-fun lt!816110 () Int)

(declare-fun furthestNullablePosition!231 ((InoxSet Context!3238) Int BalanceConc!16132 Int Int) Int)

(assert (=> b!2186182 (= lt!816105 (+ 1 (- (furthestNullablePosition!231 z!4055 lt!816114 totalInput!977 lt!816120 lt!816110) lt!816114)))))

(declare-fun lt!816116 () Unit!38401)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!72 ((InoxSet Context!3238) Int BalanceConc!16132 Int) Unit!38401)

(assert (=> b!2186182 (= lt!816116 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!72 z!4055 lt!816114 totalInput!977 lt!816110))))

(assert (=> b!2186182 (= lt!816110 e!1397141)))

(declare-fun c!347559 () Bool)

(declare-fun nullableZipper!329 ((InoxSet Context!3238)) Bool)

(assert (=> b!2186182 (= c!347559 (nullableZipper!329 z!4055))))

(declare-fun isPrefix!2165 (List!25360 List!25360) Bool)

(assert (=> b!2186182 (isPrefix!2165 (take!257 lt!816109 lt!816114) lt!816109)))

(declare-fun lt!816101 () Unit!38401)

(declare-fun lemmaTakeIsPrefix!80 (List!25360 Int) Unit!38401)

(assert (=> b!2186182 (= lt!816101 (lemmaTakeIsPrefix!80 lt!816109 lt!816114))))

(assert (=> b!2186182 (isPrefix!2165 (_1!14910 lt!816097) lt!816095)))

(declare-fun lt!816113 () Unit!38401)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1448 (List!25360 List!25360) Unit!38401)

(assert (=> b!2186182 (= lt!816113 (lemmaConcatTwoListThenFirstIsPrefix!1448 (_1!14910 lt!816097) (_2!14910 lt!816097)))))

(assert (=> b!2186182 (isPrefix!2165 lt!816112 lt!816119)))

(declare-fun lt!816098 () Unit!38401)

(assert (=> b!2186182 (= lt!816098 (lemmaConcatTwoListThenFirstIsPrefix!1448 lt!816112 lt!816094))))

(declare-fun b!2186183 () Bool)

(assert (=> b!2186183 (= e!1397136 (not (isEmpty!14530 (_1!14910 lt!816097))))))

(assert (= (and start!212030 res!939404) b!2186164))

(assert (= (and b!2186164 res!939405) b!2186181))

(assert (= (and b!2186181 res!939402) b!2186165))

(assert (= (and b!2186165 res!939401) b!2186172))

(assert (= (and b!2186172 res!939403) b!2186182))

(assert (= (and b!2186182 c!347559) b!2186177))

(assert (= (and b!2186182 (not c!347559)) b!2186167))

(assert (= (and b!2186182 (not res!939395)) b!2186174))

(assert (= (and b!2186182 (not res!939399)) b!2186171))

(assert (= (and b!2186182 res!939394) b!2186178))

(assert (= (and b!2186182 (not res!939397)) b!2186180))

(assert (= (and b!2186180 res!939398) b!2186183))

(assert (= (and b!2186180 (not res!939396)) b!2186176))

(assert (= (and b!2186176 (not res!939400)) b!2186166))

(get-info :version)

(assert (= (and start!212030 ((_ is ElementMatch!6049) r!12534)) b!2186175))

(assert (= (and start!212030 ((_ is Concat!10351) r!12534)) b!2186168))

(assert (= (and start!212030 ((_ is Star!6049) r!12534)) b!2186169))

(assert (= (and start!212030 ((_ is Union!6049) r!12534)) b!2186170))

(assert (= start!212030 b!2186179))

(assert (= start!212030 b!2186163))

(assert (= (and start!212030 condSetEmpty!18358) setIsEmpty!18358))

(assert (= (and start!212030 (not condSetEmpty!18358)) setNonEmpty!18358))

(assert (= setNonEmpty!18358 b!2186173))

(declare-fun m!2628721 () Bool)

(assert (=> b!2186165 m!2628721))

(declare-fun m!2628723 () Bool)

(assert (=> b!2186165 m!2628723))

(declare-fun m!2628725 () Bool)

(assert (=> b!2186165 m!2628725))

(declare-fun m!2628727 () Bool)

(assert (=> b!2186165 m!2628727))

(declare-fun m!2628729 () Bool)

(assert (=> b!2186165 m!2628729))

(declare-fun m!2628731 () Bool)

(assert (=> b!2186165 m!2628731))

(declare-fun m!2628733 () Bool)

(assert (=> b!2186165 m!2628733))

(declare-fun m!2628735 () Bool)

(assert (=> b!2186171 m!2628735))

(declare-fun m!2628737 () Bool)

(assert (=> b!2186179 m!2628737))

(declare-fun m!2628739 () Bool)

(assert (=> b!2186174 m!2628739))

(assert (=> b!2186174 m!2628739))

(declare-fun m!2628741 () Bool)

(assert (=> b!2186174 m!2628741))

(assert (=> b!2186174 m!2628741))

(declare-fun m!2628743 () Bool)

(assert (=> b!2186174 m!2628743))

(declare-fun m!2628745 () Bool)

(assert (=> setNonEmpty!18358 m!2628745))

(declare-fun m!2628747 () Bool)

(assert (=> b!2186182 m!2628747))

(declare-fun m!2628749 () Bool)

(assert (=> b!2186182 m!2628749))

(declare-fun m!2628751 () Bool)

(assert (=> b!2186182 m!2628751))

(declare-fun m!2628753 () Bool)

(assert (=> b!2186182 m!2628753))

(declare-fun m!2628755 () Bool)

(assert (=> b!2186182 m!2628755))

(declare-fun m!2628757 () Bool)

(assert (=> b!2186182 m!2628757))

(declare-fun m!2628759 () Bool)

(assert (=> b!2186182 m!2628759))

(declare-fun m!2628761 () Bool)

(assert (=> b!2186182 m!2628761))

(declare-fun m!2628763 () Bool)

(assert (=> b!2186182 m!2628763))

(assert (=> b!2186182 m!2628753))

(declare-fun m!2628765 () Bool)

(assert (=> b!2186182 m!2628765))

(declare-fun m!2628767 () Bool)

(assert (=> b!2186182 m!2628767))

(declare-fun m!2628769 () Bool)

(assert (=> b!2186182 m!2628769))

(declare-fun m!2628771 () Bool)

(assert (=> b!2186182 m!2628771))

(assert (=> b!2186182 m!2628759))

(assert (=> b!2186182 m!2628761))

(declare-fun m!2628773 () Bool)

(assert (=> b!2186182 m!2628773))

(declare-fun m!2628775 () Bool)

(assert (=> b!2186182 m!2628775))

(declare-fun m!2628777 () Bool)

(assert (=> b!2186182 m!2628777))

(declare-fun m!2628779 () Bool)

(assert (=> b!2186166 m!2628779))

(declare-fun m!2628781 () Bool)

(assert (=> b!2186178 m!2628781))

(declare-fun m!2628783 () Bool)

(assert (=> start!212030 m!2628783))

(declare-fun m!2628785 () Bool)

(assert (=> start!212030 m!2628785))

(declare-fun m!2628787 () Bool)

(assert (=> start!212030 m!2628787))

(declare-fun m!2628789 () Bool)

(assert (=> b!2186176 m!2628789))

(declare-fun m!2628791 () Bool)

(assert (=> b!2186176 m!2628791))

(declare-fun m!2628793 () Bool)

(assert (=> b!2186176 m!2628793))

(declare-fun m!2628795 () Bool)

(assert (=> b!2186176 m!2628795))

(declare-fun m!2628797 () Bool)

(assert (=> b!2186176 m!2628797))

(declare-fun m!2628799 () Bool)

(assert (=> b!2186176 m!2628799))

(declare-fun m!2628801 () Bool)

(assert (=> b!2186172 m!2628801))

(declare-fun m!2628803 () Bool)

(assert (=> b!2186183 m!2628803))

(declare-fun m!2628805 () Bool)

(assert (=> b!2186163 m!2628805))

(declare-fun m!2628807 () Bool)

(assert (=> b!2186181 m!2628807))

(declare-fun m!2628809 () Bool)

(assert (=> b!2186181 m!2628809))

(declare-fun m!2628811 () Bool)

(assert (=> b!2186181 m!2628811))

(declare-fun m!2628813 () Bool)

(assert (=> b!2186180 m!2628813))

(declare-fun m!2628815 () Bool)

(assert (=> b!2186164 m!2628815))

(declare-fun m!2628817 () Bool)

(assert (=> b!2186164 m!2628817))

(check-sat tp_is_empty!9705 (not b!2186164) (not b!2186169) (not b!2186166) (not b!2186180) (not b!2186182) (not b!2186174) (not b!2186173) (not b!2186170) (not b!2186163) (not setNonEmpty!18358) (not b!2186176) (not b!2186165) (not b!2186168) (not b!2186178) (not b!2186179) (not b!2186183) (not b!2186181) (not b!2186172) (not b!2186171) (not start!212030))
(check-sat)
(get-model)

(declare-fun d!655086 () Bool)

(declare-fun lt!816144 () tuple2!25080)

(assert (=> d!655086 (= (++!6410 (_1!14910 lt!816144) (_2!14910 lt!816144)) lt!816118)))

(declare-fun sizeTr!129 (List!25360 Int) Int)

(assert (=> d!655086 (= lt!816144 (findLongestMatchInner!674 r!12534 Nil!25276 0 lt!816118 lt!816118 (sizeTr!129 lt!816118 0)))))

(declare-fun lt!816142 () Unit!38401)

(declare-fun lt!816137 () Unit!38401)

(assert (=> d!655086 (= lt!816142 lt!816137)))

(declare-fun lt!816139 () List!25360)

(declare-fun lt!816138 () Int)

(assert (=> d!655086 (= (sizeTr!129 lt!816139 lt!816138) (+ (size!19751 lt!816139) lt!816138))))

(declare-fun lemmaSizeTrEqualsSize!128 (List!25360 Int) Unit!38401)

(assert (=> d!655086 (= lt!816137 (lemmaSizeTrEqualsSize!128 lt!816139 lt!816138))))

(assert (=> d!655086 (= lt!816138 0)))

(assert (=> d!655086 (= lt!816139 Nil!25276)))

(declare-fun lt!816140 () Unit!38401)

(declare-fun lt!816141 () Unit!38401)

(assert (=> d!655086 (= lt!816140 lt!816141)))

(declare-fun lt!816143 () Int)

(assert (=> d!655086 (= (sizeTr!129 lt!816118 lt!816143) (+ (size!19751 lt!816118) lt!816143))))

(assert (=> d!655086 (= lt!816141 (lemmaSizeTrEqualsSize!128 lt!816118 lt!816143))))

(assert (=> d!655086 (= lt!816143 0)))

(assert (=> d!655086 (validRegex!2325 r!12534)))

(assert (=> d!655086 (= (findLongestMatch!603 r!12534 lt!816118) lt!816144)))

(declare-fun bs!448125 () Bool)

(assert (= bs!448125 d!655086))

(assert (=> bs!448125 m!2628783))

(declare-fun m!2628819 () Bool)

(assert (=> bs!448125 m!2628819))

(assert (=> bs!448125 m!2628819))

(declare-fun m!2628821 () Bool)

(assert (=> bs!448125 m!2628821))

(declare-fun m!2628823 () Bool)

(assert (=> bs!448125 m!2628823))

(declare-fun m!2628825 () Bool)

(assert (=> bs!448125 m!2628825))

(declare-fun m!2628827 () Bool)

(assert (=> bs!448125 m!2628827))

(assert (=> bs!448125 m!2628761))

(declare-fun m!2628829 () Bool)

(assert (=> bs!448125 m!2628829))

(declare-fun m!2628831 () Bool)

(assert (=> bs!448125 m!2628831))

(declare-fun m!2628833 () Bool)

(assert (=> bs!448125 m!2628833))

(assert (=> b!2186165 d!655086))

(declare-fun d!655090 () Bool)

(declare-fun lt!816147 () Int)

(assert (=> d!655090 (= lt!816147 (size!19751 (list!9706 input!5540)))))

(declare-fun size!19752 (Conc!8185) Int)

(assert (=> d!655090 (= lt!816147 (size!19752 (c!347560 input!5540)))))

(assert (=> d!655090 (= (size!19750 input!5540) lt!816147)))

(declare-fun bs!448126 () Bool)

(assert (= bs!448126 d!655090))

(assert (=> bs!448126 m!2628811))

(assert (=> bs!448126 m!2628811))

(declare-fun m!2628835 () Bool)

(assert (=> bs!448126 m!2628835))

(declare-fun m!2628837 () Bool)

(assert (=> bs!448126 m!2628837))

(assert (=> b!2186165 d!655090))

(declare-fun lt!816150 () List!25360)

(declare-fun e!1397153 () Bool)

(declare-fun b!2186195 () Bool)

(assert (=> b!2186195 (= e!1397153 (or (not (= lt!816094 Nil!25276)) (= lt!816150 lt!816112)))))

(declare-fun b!2186192 () Bool)

(declare-fun e!1397152 () List!25360)

(assert (=> b!2186192 (= e!1397152 lt!816094)))

(declare-fun b!2186194 () Bool)

(declare-fun res!939411 () Bool)

(assert (=> b!2186194 (=> (not res!939411) (not e!1397153))))

(assert (=> b!2186194 (= res!939411 (= (size!19751 lt!816150) (+ (size!19751 lt!816112) (size!19751 lt!816094))))))

(declare-fun b!2186193 () Bool)

(assert (=> b!2186193 (= e!1397152 (Cons!25276 (h!30677 lt!816112) (++!6410 (t!197950 lt!816112) lt!816094)))))

(declare-fun d!655092 () Bool)

(assert (=> d!655092 e!1397153))

(declare-fun res!939410 () Bool)

(assert (=> d!655092 (=> (not res!939410) (not e!1397153))))

(declare-fun content!3451 (List!25360) (InoxSet C!12244))

(assert (=> d!655092 (= res!939410 (= (content!3451 lt!816150) ((_ map or) (content!3451 lt!816112) (content!3451 lt!816094))))))

(assert (=> d!655092 (= lt!816150 e!1397152)))

(declare-fun c!347564 () Bool)

(assert (=> d!655092 (= c!347564 ((_ is Nil!25276) lt!816112))))

(assert (=> d!655092 (= (++!6410 lt!816112 lt!816094) lt!816150)))

(assert (= (and d!655092 c!347564) b!2186192))

(assert (= (and d!655092 (not c!347564)) b!2186193))

(assert (= (and d!655092 res!939410) b!2186194))

(assert (= (and b!2186194 res!939411) b!2186195))

(declare-fun m!2628839 () Bool)

(assert (=> b!2186194 m!2628839))

(declare-fun m!2628841 () Bool)

(assert (=> b!2186194 m!2628841))

(declare-fun m!2628843 () Bool)

(assert (=> b!2186194 m!2628843))

(declare-fun m!2628845 () Bool)

(assert (=> b!2186193 m!2628845))

(declare-fun m!2628847 () Bool)

(assert (=> d!655092 m!2628847))

(declare-fun m!2628849 () Bool)

(assert (=> d!655092 m!2628849))

(declare-fun m!2628851 () Bool)

(assert (=> d!655092 m!2628851))

(assert (=> b!2186165 d!655092))

(declare-fun d!655094 () Bool)

(declare-fun lt!816151 () Int)

(assert (=> d!655094 (= lt!816151 (size!19751 (list!9706 totalInput!977)))))

(assert (=> d!655094 (= lt!816151 (size!19752 (c!347560 totalInput!977)))))

(assert (=> d!655094 (= (size!19750 totalInput!977) lt!816151)))

(declare-fun bs!448127 () Bool)

(assert (= bs!448127 d!655094))

(assert (=> bs!448127 m!2628809))

(assert (=> bs!448127 m!2628809))

(declare-fun m!2628853 () Bool)

(assert (=> bs!448127 m!2628853))

(declare-fun m!2628855 () Bool)

(assert (=> bs!448127 m!2628855))

(assert (=> b!2186165 d!655094))

(declare-fun d!655096 () Bool)

(declare-fun list!9707 (Conc!8185) List!25360)

(assert (=> d!655096 (= (list!9706 (_1!14909 lt!816099)) (list!9707 (c!347560 (_1!14909 lt!816099))))))

(declare-fun bs!448128 () Bool)

(assert (= bs!448128 d!655096))

(declare-fun m!2628857 () Bool)

(assert (=> bs!448128 m!2628857))

(assert (=> b!2186165 d!655096))

(declare-fun b!2186204 () Bool)

(declare-fun e!1397159 () tuple2!25078)

(declare-fun call!131533 () tuple2!25078)

(assert (=> b!2186204 (= e!1397159 call!131533)))

(declare-fun b!2186205 () Bool)

(assert (=> b!2186205 (= e!1397159 call!131533)))

(declare-fun c!347569 () Bool)

(declare-fun lt!816163 () Int)

(declare-fun bm!131528 () Bool)

(declare-fun splitAt!56 (BalanceConc!16132 Int) tuple2!25078)

(assert (=> bm!131528 (= call!131533 (splitAt!56 input!5540 (ite c!347569 0 lt!816163)))))

(declare-fun b!2186206 () Bool)

(declare-fun e!1397158 () Int)

(assert (=> b!2186206 (= e!1397158 (- 1))))

(declare-fun d!655098 () Bool)

(declare-fun lt!816162 () tuple2!25078)

(assert (=> d!655098 (= (++!6410 (list!9706 (_1!14909 lt!816162)) (list!9706 (_2!14909 lt!816162))) (list!9706 input!5540))))

(assert (=> d!655098 (= lt!816162 e!1397159)))

(assert (=> d!655098 (= c!347569 (< lt!816163 0))))

(declare-fun lt!816161 () Int)

(declare-fun lt!816160 () Int)

(assert (=> d!655098 (= lt!816163 (+ (- (furthestNullablePosition!231 z!4055 lt!816160 totalInput!977 lt!816161 e!1397158) lt!816160) 1))))

(declare-fun c!347570 () Bool)

(assert (=> d!655098 (= c!347570 (nullableZipper!329 z!4055))))

(assert (=> d!655098 (= lt!816160 (- lt!816161 (size!19750 input!5540)))))

(assert (=> d!655098 (= lt!816161 (size!19750 totalInput!977))))

(assert (=> d!655098 (isSuffix!716 (list!9706 input!5540) (list!9706 totalInput!977))))

(assert (=> d!655098 (= (findLongestMatchZipperSequenceV3!98 z!4055 input!5540 totalInput!977) lt!816162)))

(declare-fun b!2186207 () Bool)

(assert (=> b!2186207 (= e!1397158 (- lt!816160 1))))

(assert (= (and d!655098 c!347570) b!2186207))

(assert (= (and d!655098 (not c!347570)) b!2186206))

(assert (= (and d!655098 c!347569) b!2186204))

(assert (= (and d!655098 (not c!347569)) b!2186205))

(assert (= (or b!2186204 b!2186205) bm!131528))

(declare-fun m!2628859 () Bool)

(assert (=> bm!131528 m!2628859))

(assert (=> d!655098 m!2628811))

(declare-fun m!2628861 () Bool)

(assert (=> d!655098 m!2628861))

(declare-fun m!2628863 () Bool)

(assert (=> d!655098 m!2628863))

(assert (=> d!655098 m!2628723))

(assert (=> d!655098 m!2628809))

(declare-fun m!2628865 () Bool)

(assert (=> d!655098 m!2628865))

(assert (=> d!655098 m!2628863))

(assert (=> d!655098 m!2628865))

(declare-fun m!2628867 () Bool)

(assert (=> d!655098 m!2628867))

(assert (=> d!655098 m!2628811))

(assert (=> d!655098 m!2628809))

(declare-fun m!2628869 () Bool)

(assert (=> d!655098 m!2628869))

(assert (=> d!655098 m!2628727))

(assert (=> d!655098 m!2628757))

(assert (=> b!2186165 d!655098))

(declare-fun d!655100 () Bool)

(assert (=> d!655100 (= (list!9706 (_2!14909 lt!816099)) (list!9707 (c!347560 (_2!14909 lt!816099))))))

(declare-fun bs!448129 () Bool)

(assert (= bs!448129 d!655100))

(declare-fun m!2628871 () Bool)

(assert (=> bs!448129 m!2628871))

(assert (=> b!2186165 d!655100))

(declare-fun d!655102 () Bool)

(declare-fun e!1397162 () Bool)

(assert (=> d!655102 e!1397162))

(declare-fun res!939414 () Bool)

(assert (=> d!655102 (=> res!939414 e!1397162)))

(assert (=> d!655102 (= res!939414 (= lt!816112 (_1!14910 lt!816097)))))

(declare-fun lt!816166 () Unit!38401)

(declare-fun choose!12938 (Regex!6049 List!25360 List!25360 List!25360) Unit!38401)

(assert (=> d!655102 (= lt!816166 (choose!12938 r!12534 lt!816118 (_1!14910 lt!816097) lt!816112))))

(assert (=> d!655102 (validRegex!2325 r!12534)))

(assert (=> d!655102 (= (longestMatchNoBiggerStringMatch!5 r!12534 lt!816118 (_1!14910 lt!816097) lt!816112) lt!816166)))

(declare-fun b!2186210 () Bool)

(assert (=> b!2186210 (= e!1397162 (not (matchR!2798 r!12534 lt!816112)))))

(assert (= (and d!655102 (not res!939414)) b!2186210))

(declare-fun m!2628873 () Bool)

(assert (=> d!655102 m!2628873))

(assert (=> d!655102 m!2628783))

(assert (=> b!2186210 m!2628789))

(assert (=> b!2186166 d!655102))

(declare-fun d!655104 () Bool)

(assert (=> d!655104 (= (matchR!2798 r!12534 lt!816112) (matchZipper!165 z!4055 lt!816112))))

(declare-fun lt!816169 () Unit!38401)

(declare-fun choose!12939 ((InoxSet Context!3238) List!25362 Regex!6049 List!25360) Unit!38401)

(assert (=> d!655104 (= lt!816169 (choose!12939 z!4055 lt!816108 r!12534 lt!816112))))

(assert (=> d!655104 (validRegex!2325 r!12534)))

(assert (=> d!655104 (= (theoremZipperRegexEquiv!75 z!4055 lt!816108 r!12534 lt!816112) lt!816169)))

(declare-fun bs!448130 () Bool)

(assert (= bs!448130 d!655104))

(assert (=> bs!448130 m!2628789))

(assert (=> bs!448130 m!2628751))

(declare-fun m!2628875 () Bool)

(assert (=> bs!448130 m!2628875))

(assert (=> bs!448130 m!2628783))

(assert (=> b!2186176 d!655104))

(declare-fun d!655106 () Bool)

(declare-fun c!347573 () Bool)

(assert (=> d!655106 (= c!347573 (isEmpty!14530 (_1!14910 lt!816097)))))

(declare-fun e!1397165 () Bool)

(assert (=> d!655106 (= (matchZipper!165 z!4055 (_1!14910 lt!816097)) e!1397165)))

(declare-fun b!2186215 () Bool)

(assert (=> b!2186215 (= e!1397165 (nullableZipper!329 z!4055))))

(declare-fun b!2186216 () Bool)

(declare-fun derivationStepZipper!142 ((InoxSet Context!3238) C!12244) (InoxSet Context!3238))

(declare-fun head!4670 (List!25360) C!12244)

(declare-fun tail!3142 (List!25360) List!25360)

(assert (=> b!2186216 (= e!1397165 (matchZipper!165 (derivationStepZipper!142 z!4055 (head!4670 (_1!14910 lt!816097))) (tail!3142 (_1!14910 lt!816097))))))

(assert (= (and d!655106 c!347573) b!2186215))

(assert (= (and d!655106 (not c!347573)) b!2186216))

(assert (=> d!655106 m!2628803))

(assert (=> b!2186215 m!2628757))

(declare-fun m!2628877 () Bool)

(assert (=> b!2186216 m!2628877))

(assert (=> b!2186216 m!2628877))

(declare-fun m!2628879 () Bool)

(assert (=> b!2186216 m!2628879))

(declare-fun m!2628881 () Bool)

(assert (=> b!2186216 m!2628881))

(assert (=> b!2186216 m!2628879))

(assert (=> b!2186216 m!2628881))

(declare-fun m!2628883 () Bool)

(assert (=> b!2186216 m!2628883))

(assert (=> b!2186176 d!655106))

(declare-fun b!2186245 () Bool)

(declare-fun e!1397182 () Bool)

(declare-fun nullable!1713 (Regex!6049) Bool)

(assert (=> b!2186245 (= e!1397182 (nullable!1713 r!12534))))

(declare-fun bm!131531 () Bool)

(declare-fun call!131536 () Bool)

(assert (=> bm!131531 (= call!131536 (isEmpty!14530 lt!816112))))

(declare-fun b!2186246 () Bool)

(declare-fun res!939437 () Bool)

(declare-fun e!1397185 () Bool)

(assert (=> b!2186246 (=> (not res!939437) (not e!1397185))))

(assert (=> b!2186246 (= res!939437 (isEmpty!14530 (tail!3142 lt!816112)))))

(declare-fun b!2186248 () Bool)

(declare-fun e!1397183 () Bool)

(assert (=> b!2186248 (= e!1397183 (not (= (head!4670 lt!816112) (c!347561 r!12534))))))

(declare-fun b!2186249 () Bool)

(declare-fun e!1397184 () Bool)

(declare-fun lt!816172 () Bool)

(assert (=> b!2186249 (= e!1397184 (not lt!816172))))

(declare-fun b!2186250 () Bool)

(declare-fun e!1397180 () Bool)

(assert (=> b!2186250 (= e!1397180 e!1397184)))

(declare-fun c!347581 () Bool)

(assert (=> b!2186250 (= c!347581 ((_ is EmptyLang!6049) r!12534))))

(declare-fun b!2186251 () Bool)

(assert (=> b!2186251 (= e!1397180 (= lt!816172 call!131536))))

(declare-fun b!2186252 () Bool)

(declare-fun e!1397186 () Bool)

(declare-fun e!1397181 () Bool)

(assert (=> b!2186252 (= e!1397186 e!1397181)))

(declare-fun res!939438 () Bool)

(assert (=> b!2186252 (=> (not res!939438) (not e!1397181))))

(assert (=> b!2186252 (= res!939438 (not lt!816172))))

(declare-fun b!2186253 () Bool)

(declare-fun res!939434 () Bool)

(assert (=> b!2186253 (=> res!939434 e!1397186)))

(assert (=> b!2186253 (= res!939434 e!1397185)))

(declare-fun res!939431 () Bool)

(assert (=> b!2186253 (=> (not res!939431) (not e!1397185))))

(assert (=> b!2186253 (= res!939431 lt!816172)))

(declare-fun b!2186254 () Bool)

(assert (=> b!2186254 (= e!1397185 (= (head!4670 lt!816112) (c!347561 r!12534)))))

(declare-fun b!2186255 () Bool)

(declare-fun res!939435 () Bool)

(assert (=> b!2186255 (=> res!939435 e!1397186)))

(assert (=> b!2186255 (= res!939435 (not ((_ is ElementMatch!6049) r!12534)))))

(assert (=> b!2186255 (= e!1397184 e!1397186)))

(declare-fun b!2186256 () Bool)

(declare-fun derivativeStep!1456 (Regex!6049 C!12244) Regex!6049)

(assert (=> b!2186256 (= e!1397182 (matchR!2798 (derivativeStep!1456 r!12534 (head!4670 lt!816112)) (tail!3142 lt!816112)))))

(declare-fun d!655108 () Bool)

(assert (=> d!655108 e!1397180))

(declare-fun c!347582 () Bool)

(assert (=> d!655108 (= c!347582 ((_ is EmptyExpr!6049) r!12534))))

(assert (=> d!655108 (= lt!816172 e!1397182)))

(declare-fun c!347580 () Bool)

(assert (=> d!655108 (= c!347580 (isEmpty!14530 lt!816112))))

(assert (=> d!655108 (validRegex!2325 r!12534)))

(assert (=> d!655108 (= (matchR!2798 r!12534 lt!816112) lt!816172)))

(declare-fun b!2186247 () Bool)

(declare-fun res!939436 () Bool)

(assert (=> b!2186247 (=> (not res!939436) (not e!1397185))))

(assert (=> b!2186247 (= res!939436 (not call!131536))))

(declare-fun b!2186257 () Bool)

(declare-fun res!939432 () Bool)

(assert (=> b!2186257 (=> res!939432 e!1397183)))

(assert (=> b!2186257 (= res!939432 (not (isEmpty!14530 (tail!3142 lt!816112))))))

(declare-fun b!2186258 () Bool)

(assert (=> b!2186258 (= e!1397181 e!1397183)))

(declare-fun res!939433 () Bool)

(assert (=> b!2186258 (=> res!939433 e!1397183)))

(assert (=> b!2186258 (= res!939433 call!131536)))

(assert (= (and d!655108 c!347580) b!2186245))

(assert (= (and d!655108 (not c!347580)) b!2186256))

(assert (= (and d!655108 c!347582) b!2186251))

(assert (= (and d!655108 (not c!347582)) b!2186250))

(assert (= (and b!2186250 c!347581) b!2186249))

(assert (= (and b!2186250 (not c!347581)) b!2186255))

(assert (= (and b!2186255 (not res!939435)) b!2186253))

(assert (= (and b!2186253 res!939431) b!2186247))

(assert (= (and b!2186247 res!939436) b!2186246))

(assert (= (and b!2186246 res!939437) b!2186254))

(assert (= (and b!2186253 (not res!939434)) b!2186252))

(assert (= (and b!2186252 res!939438) b!2186258))

(assert (= (and b!2186258 (not res!939433)) b!2186257))

(assert (= (and b!2186257 (not res!939432)) b!2186248))

(assert (= (or b!2186251 b!2186247 b!2186258) bm!131531))

(declare-fun m!2628885 () Bool)

(assert (=> b!2186257 m!2628885))

(assert (=> b!2186257 m!2628885))

(declare-fun m!2628887 () Bool)

(assert (=> b!2186257 m!2628887))

(declare-fun m!2628889 () Bool)

(assert (=> bm!131531 m!2628889))

(declare-fun m!2628891 () Bool)

(assert (=> b!2186254 m!2628891))

(assert (=> b!2186248 m!2628891))

(declare-fun m!2628893 () Bool)

(assert (=> b!2186245 m!2628893))

(assert (=> d!655108 m!2628889))

(assert (=> d!655108 m!2628783))

(assert (=> b!2186256 m!2628891))

(assert (=> b!2186256 m!2628891))

(declare-fun m!2628895 () Bool)

(assert (=> b!2186256 m!2628895))

(assert (=> b!2186256 m!2628885))

(assert (=> b!2186256 m!2628895))

(assert (=> b!2186256 m!2628885))

(declare-fun m!2628897 () Bool)

(assert (=> b!2186256 m!2628897))

(assert (=> b!2186246 m!2628885))

(assert (=> b!2186246 m!2628885))

(assert (=> b!2186246 m!2628887))

(assert (=> b!2186176 d!655108))

(declare-fun d!655110 () Bool)

(declare-fun lt!816175 () Int)

(assert (=> d!655110 (>= lt!816175 0)))

(declare-fun e!1397189 () Int)

(assert (=> d!655110 (= lt!816175 e!1397189)))

(declare-fun c!347585 () Bool)

(assert (=> d!655110 (= c!347585 ((_ is Nil!25276) (_1!14910 lt!816097)))))

(assert (=> d!655110 (= (size!19751 (_1!14910 lt!816097)) lt!816175)))

(declare-fun b!2186263 () Bool)

(assert (=> b!2186263 (= e!1397189 0)))

(declare-fun b!2186264 () Bool)

(assert (=> b!2186264 (= e!1397189 (+ 1 (size!19751 (t!197950 (_1!14910 lt!816097)))))))

(assert (= (and d!655110 c!347585) b!2186263))

(assert (= (and d!655110 (not c!347585)) b!2186264))

(declare-fun m!2628899 () Bool)

(assert (=> b!2186264 m!2628899))

(assert (=> b!2186176 d!655110))

(declare-fun d!655112 () Bool)

(declare-fun lt!816176 () Int)

(assert (=> d!655112 (= lt!816176 (size!19751 (list!9706 (_1!14909 lt!816099))))))

(assert (=> d!655112 (= lt!816176 (size!19752 (c!347560 (_1!14909 lt!816099))))))

(assert (=> d!655112 (= (size!19750 (_1!14909 lt!816099)) lt!816176)))

(declare-fun bs!448131 () Bool)

(assert (= bs!448131 d!655112))

(assert (=> bs!448131 m!2628729))

(assert (=> bs!448131 m!2628729))

(declare-fun m!2628901 () Bool)

(assert (=> bs!448131 m!2628901))

(declare-fun m!2628903 () Bool)

(assert (=> bs!448131 m!2628903))

(assert (=> b!2186176 d!655112))

(declare-fun d!655114 () Bool)

(assert (=> d!655114 (= (matchR!2798 r!12534 (_1!14910 lt!816097)) (matchZipper!165 z!4055 (_1!14910 lt!816097)))))

(declare-fun lt!816177 () Unit!38401)

(assert (=> d!655114 (= lt!816177 (choose!12939 z!4055 lt!816108 r!12534 (_1!14910 lt!816097)))))

(assert (=> d!655114 (validRegex!2325 r!12534)))

(assert (=> d!655114 (= (theoremZipperRegexEquiv!75 z!4055 lt!816108 r!12534 (_1!14910 lt!816097)) lt!816177)))

(declare-fun bs!448132 () Bool)

(assert (= bs!448132 d!655114))

(assert (=> bs!448132 m!2628813))

(assert (=> bs!448132 m!2628795))

(declare-fun m!2628905 () Bool)

(assert (=> bs!448132 m!2628905))

(assert (=> bs!448132 m!2628783))

(assert (=> b!2186176 d!655114))

(declare-fun d!655116 () Bool)

(declare-fun lambda!82100 () Int)

(declare-fun forall!5191 (List!25361 Int) Bool)

(assert (=> d!655116 (= (inv!33610 setElem!18358) (forall!5191 (exprs!2119 setElem!18358) lambda!82100))))

(declare-fun bs!448138 () Bool)

(assert (= bs!448138 d!655116))

(declare-fun m!2629073 () Bool)

(assert (=> bs!448138 m!2629073))

(assert (=> setNonEmpty!18358 d!655116))

(declare-fun d!655158 () Bool)

(declare-fun lt!816304 () Bool)

(assert (=> d!655158 (= lt!816304 (isEmpty!14530 (list!9706 (_1!14909 lt!816099))))))

(declare-fun isEmpty!14531 (Conc!8185) Bool)

(assert (=> d!655158 (= lt!816304 (isEmpty!14531 (c!347560 (_1!14909 lt!816099))))))

(assert (=> d!655158 (= (isEmpty!14529 (_1!14909 lt!816099)) lt!816304)))

(declare-fun bs!448139 () Bool)

(assert (= bs!448139 d!655158))

(assert (=> bs!448139 m!2628729))

(assert (=> bs!448139 m!2628729))

(declare-fun m!2629075 () Bool)

(assert (=> bs!448139 m!2629075))

(declare-fun m!2629077 () Bool)

(assert (=> bs!448139 m!2629077))

(assert (=> b!2186178 d!655158))

(declare-fun d!655160 () Bool)

(declare-fun c!347639 () Bool)

(assert (=> d!655160 (= c!347639 ((_ is Node!8185) (c!347560 totalInput!977)))))

(declare-fun e!1397300 () Bool)

(assert (=> d!655160 (= (inv!33609 (c!347560 totalInput!977)) e!1397300)))

(declare-fun b!2186434 () Bool)

(declare-fun inv!33612 (Conc!8185) Bool)

(assert (=> b!2186434 (= e!1397300 (inv!33612 (c!347560 totalInput!977)))))

(declare-fun b!2186435 () Bool)

(declare-fun e!1397301 () Bool)

(assert (=> b!2186435 (= e!1397300 e!1397301)))

(declare-fun res!939506 () Bool)

(assert (=> b!2186435 (= res!939506 (not ((_ is Leaf!11977) (c!347560 totalInput!977))))))

(assert (=> b!2186435 (=> res!939506 e!1397301)))

(declare-fun b!2186436 () Bool)

(declare-fun inv!33613 (Conc!8185) Bool)

(assert (=> b!2186436 (= e!1397301 (inv!33613 (c!347560 totalInput!977)))))

(assert (= (and d!655160 c!347639) b!2186434))

(assert (= (and d!655160 (not c!347639)) b!2186435))

(assert (= (and b!2186435 (not res!939506)) b!2186436))

(declare-fun m!2629089 () Bool)

(assert (=> b!2186434 m!2629089))

(declare-fun m!2629091 () Bool)

(assert (=> b!2186436 m!2629091))

(assert (=> b!2186179 d!655160))

(declare-fun b!2186455 () Bool)

(declare-fun e!1397319 () Bool)

(declare-fun e!1397317 () Bool)

(assert (=> b!2186455 (= e!1397319 e!1397317)))

(declare-fun res!939521 () Bool)

(assert (=> b!2186455 (=> (not res!939521) (not e!1397317))))

(declare-fun call!131577 () Bool)

(assert (=> b!2186455 (= res!939521 call!131577)))

(declare-fun b!2186456 () Bool)

(declare-fun e!1397316 () Bool)

(assert (=> b!2186456 (= e!1397316 call!131577)))

(declare-fun b!2186457 () Bool)

(declare-fun e!1397318 () Bool)

(declare-fun e!1397320 () Bool)

(assert (=> b!2186457 (= e!1397318 e!1397320)))

(declare-fun c!347645 () Bool)

(assert (=> b!2186457 (= c!347645 ((_ is Star!6049) r!12534))))

(declare-fun bm!131571 () Bool)

(declare-fun call!131576 () Bool)

(declare-fun call!131578 () Bool)

(assert (=> bm!131571 (= call!131576 call!131578)))

(declare-fun b!2186458 () Bool)

(declare-fun e!1397322 () Bool)

(assert (=> b!2186458 (= e!1397322 call!131578)))

(declare-fun bm!131572 () Bool)

(declare-fun c!347644 () Bool)

(assert (=> bm!131572 (= call!131577 (validRegex!2325 (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))))))

(declare-fun bm!131573 () Bool)

(assert (=> bm!131573 (= call!131578 (validRegex!2325 (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))))))

(declare-fun d!655168 () Bool)

(declare-fun res!939519 () Bool)

(assert (=> d!655168 (=> res!939519 e!1397318)))

(assert (=> d!655168 (= res!939519 ((_ is ElementMatch!6049) r!12534))))

(assert (=> d!655168 (= (validRegex!2325 r!12534) e!1397318)))

(declare-fun b!2186459 () Bool)

(declare-fun res!939518 () Bool)

(assert (=> b!2186459 (=> res!939518 e!1397319)))

(assert (=> b!2186459 (= res!939518 (not ((_ is Concat!10351) r!12534)))))

(declare-fun e!1397321 () Bool)

(assert (=> b!2186459 (= e!1397321 e!1397319)))

(declare-fun b!2186460 () Bool)

(declare-fun res!939520 () Bool)

(assert (=> b!2186460 (=> (not res!939520) (not e!1397316))))

(assert (=> b!2186460 (= res!939520 call!131576)))

(assert (=> b!2186460 (= e!1397321 e!1397316)))

(declare-fun b!2186461 () Bool)

(assert (=> b!2186461 (= e!1397320 e!1397321)))

(assert (=> b!2186461 (= c!347644 ((_ is Union!6049) r!12534))))

(declare-fun b!2186462 () Bool)

(assert (=> b!2186462 (= e!1397320 e!1397322)))

(declare-fun res!939517 () Bool)

(assert (=> b!2186462 (= res!939517 (not (nullable!1713 (reg!6378 r!12534))))))

(assert (=> b!2186462 (=> (not res!939517) (not e!1397322))))

(declare-fun b!2186463 () Bool)

(assert (=> b!2186463 (= e!1397317 call!131576)))

(assert (= (and d!655168 (not res!939519)) b!2186457))

(assert (= (and b!2186457 c!347645) b!2186462))

(assert (= (and b!2186457 (not c!347645)) b!2186461))

(assert (= (and b!2186462 res!939517) b!2186458))

(assert (= (and b!2186461 c!347644) b!2186460))

(assert (= (and b!2186461 (not c!347644)) b!2186459))

(assert (= (and b!2186460 res!939520) b!2186456))

(assert (= (and b!2186459 (not res!939518)) b!2186455))

(assert (= (and b!2186455 res!939521) b!2186463))

(assert (= (or b!2186456 b!2186455) bm!131572))

(assert (= (or b!2186460 b!2186463) bm!131571))

(assert (= (or b!2186458 bm!131571) bm!131573))

(declare-fun m!2629095 () Bool)

(assert (=> bm!131572 m!2629095))

(declare-fun m!2629097 () Bool)

(assert (=> bm!131573 m!2629097))

(declare-fun m!2629099 () Bool)

(assert (=> b!2186462 m!2629099))

(assert (=> start!212030 d!655168))

(declare-fun d!655172 () Bool)

(declare-fun isBalanced!2546 (Conc!8185) Bool)

(assert (=> d!655172 (= (inv!33611 totalInput!977) (isBalanced!2546 (c!347560 totalInput!977)))))

(declare-fun bs!448145 () Bool)

(assert (= bs!448145 d!655172))

(declare-fun m!2629113 () Bool)

(assert (=> bs!448145 m!2629113))

(assert (=> start!212030 d!655172))

(declare-fun d!655182 () Bool)

(assert (=> d!655182 (= (inv!33611 input!5540) (isBalanced!2546 (c!347560 input!5540)))))

(declare-fun bs!448146 () Bool)

(assert (= bs!448146 d!655182))

(declare-fun m!2629115 () Bool)

(assert (=> bs!448146 m!2629115))

(assert (=> start!212030 d!655182))

(declare-fun b!2186468 () Bool)

(declare-fun e!1397327 () Bool)

(assert (=> b!2186468 (= e!1397327 (nullable!1713 r!12534))))

(declare-fun bm!131574 () Bool)

(declare-fun call!131579 () Bool)

(assert (=> bm!131574 (= call!131579 (isEmpty!14530 (_1!14910 lt!816097)))))

(declare-fun b!2186469 () Bool)

(declare-fun res!939528 () Bool)

(declare-fun e!1397330 () Bool)

(assert (=> b!2186469 (=> (not res!939528) (not e!1397330))))

(assert (=> b!2186469 (= res!939528 (isEmpty!14530 (tail!3142 (_1!14910 lt!816097))))))

(declare-fun b!2186471 () Bool)

(declare-fun e!1397328 () Bool)

(assert (=> b!2186471 (= e!1397328 (not (= (head!4670 (_1!14910 lt!816097)) (c!347561 r!12534))))))

(declare-fun b!2186472 () Bool)

(declare-fun e!1397329 () Bool)

(declare-fun lt!816313 () Bool)

(assert (=> b!2186472 (= e!1397329 (not lt!816313))))

(declare-fun b!2186473 () Bool)

(declare-fun e!1397325 () Bool)

(assert (=> b!2186473 (= e!1397325 e!1397329)))

(declare-fun c!347649 () Bool)

(assert (=> b!2186473 (= c!347649 ((_ is EmptyLang!6049) r!12534))))

(declare-fun b!2186474 () Bool)

(assert (=> b!2186474 (= e!1397325 (= lt!816313 call!131579))))

(declare-fun b!2186475 () Bool)

(declare-fun e!1397331 () Bool)

(declare-fun e!1397326 () Bool)

(assert (=> b!2186475 (= e!1397331 e!1397326)))

(declare-fun res!939529 () Bool)

(assert (=> b!2186475 (=> (not res!939529) (not e!1397326))))

(assert (=> b!2186475 (= res!939529 (not lt!816313))))

(declare-fun b!2186476 () Bool)

(declare-fun res!939525 () Bool)

(assert (=> b!2186476 (=> res!939525 e!1397331)))

(assert (=> b!2186476 (= res!939525 e!1397330)))

(declare-fun res!939522 () Bool)

(assert (=> b!2186476 (=> (not res!939522) (not e!1397330))))

(assert (=> b!2186476 (= res!939522 lt!816313)))

(declare-fun b!2186477 () Bool)

(assert (=> b!2186477 (= e!1397330 (= (head!4670 (_1!14910 lt!816097)) (c!347561 r!12534)))))

(declare-fun b!2186478 () Bool)

(declare-fun res!939526 () Bool)

(assert (=> b!2186478 (=> res!939526 e!1397331)))

(assert (=> b!2186478 (= res!939526 (not ((_ is ElementMatch!6049) r!12534)))))

(assert (=> b!2186478 (= e!1397329 e!1397331)))

(declare-fun b!2186479 () Bool)

(assert (=> b!2186479 (= e!1397327 (matchR!2798 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097))) (tail!3142 (_1!14910 lt!816097))))))

(declare-fun d!655184 () Bool)

(assert (=> d!655184 e!1397325))

(declare-fun c!347650 () Bool)

(assert (=> d!655184 (= c!347650 ((_ is EmptyExpr!6049) r!12534))))

(assert (=> d!655184 (= lt!816313 e!1397327)))

(declare-fun c!347648 () Bool)

(assert (=> d!655184 (= c!347648 (isEmpty!14530 (_1!14910 lt!816097)))))

(assert (=> d!655184 (validRegex!2325 r!12534)))

(assert (=> d!655184 (= (matchR!2798 r!12534 (_1!14910 lt!816097)) lt!816313)))

(declare-fun b!2186470 () Bool)

(declare-fun res!939527 () Bool)

(assert (=> b!2186470 (=> (not res!939527) (not e!1397330))))

(assert (=> b!2186470 (= res!939527 (not call!131579))))

(declare-fun b!2186480 () Bool)

(declare-fun res!939523 () Bool)

(assert (=> b!2186480 (=> res!939523 e!1397328)))

(assert (=> b!2186480 (= res!939523 (not (isEmpty!14530 (tail!3142 (_1!14910 lt!816097)))))))

(declare-fun b!2186481 () Bool)

(assert (=> b!2186481 (= e!1397326 e!1397328)))

(declare-fun res!939524 () Bool)

(assert (=> b!2186481 (=> res!939524 e!1397328)))

(assert (=> b!2186481 (= res!939524 call!131579)))

(assert (= (and d!655184 c!347648) b!2186468))

(assert (= (and d!655184 (not c!347648)) b!2186479))

(assert (= (and d!655184 c!347650) b!2186474))

(assert (= (and d!655184 (not c!347650)) b!2186473))

(assert (= (and b!2186473 c!347649) b!2186472))

(assert (= (and b!2186473 (not c!347649)) b!2186478))

(assert (= (and b!2186478 (not res!939526)) b!2186476))

(assert (= (and b!2186476 res!939522) b!2186470))

(assert (= (and b!2186470 res!939527) b!2186469))

(assert (= (and b!2186469 res!939528) b!2186477))

(assert (= (and b!2186476 (not res!939525)) b!2186475))

(assert (= (and b!2186475 res!939529) b!2186481))

(assert (= (and b!2186481 (not res!939524)) b!2186480))

(assert (= (and b!2186480 (not res!939523)) b!2186471))

(assert (= (or b!2186474 b!2186470 b!2186481) bm!131574))

(assert (=> b!2186480 m!2628881))

(assert (=> b!2186480 m!2628881))

(declare-fun m!2629117 () Bool)

(assert (=> b!2186480 m!2629117))

(assert (=> bm!131574 m!2628803))

(assert (=> b!2186477 m!2628877))

(assert (=> b!2186471 m!2628877))

(assert (=> b!2186468 m!2628893))

(assert (=> d!655184 m!2628803))

(assert (=> d!655184 m!2628783))

(assert (=> b!2186479 m!2628877))

(assert (=> b!2186479 m!2628877))

(declare-fun m!2629119 () Bool)

(assert (=> b!2186479 m!2629119))

(assert (=> b!2186479 m!2628881))

(assert (=> b!2186479 m!2629119))

(assert (=> b!2186479 m!2628881))

(declare-fun m!2629121 () Bool)

(assert (=> b!2186479 m!2629121))

(assert (=> b!2186469 m!2628881))

(assert (=> b!2186469 m!2628881))

(assert (=> b!2186469 m!2629117))

(assert (=> b!2186180 d!655184))

(declare-fun d!655186 () Bool)

(declare-fun e!1397334 () Bool)

(assert (=> d!655186 e!1397334))

(declare-fun res!939532 () Bool)

(assert (=> d!655186 (=> res!939532 e!1397334)))

(declare-fun lt!816316 () Bool)

(assert (=> d!655186 (= res!939532 (not lt!816316))))

(assert (=> d!655186 (= lt!816316 (= lt!816118 (drop!1267 lt!816109 (- (size!19751 lt!816109) (size!19751 lt!816118)))))))

(assert (=> d!655186 (= (isSuffix!716 lt!816118 lt!816109) lt!816316)))

(declare-fun b!2186484 () Bool)

(assert (=> b!2186484 (= e!1397334 (>= (size!19751 lt!816109) (size!19751 lt!816118)))))

(assert (= (and d!655186 (not res!939532)) b!2186484))

(declare-fun m!2629123 () Bool)

(assert (=> d!655186 m!2629123))

(assert (=> d!655186 m!2628761))

(declare-fun m!2629125 () Bool)

(assert (=> d!655186 m!2629125))

(assert (=> b!2186484 m!2629123))

(assert (=> b!2186484 m!2628761))

(assert (=> b!2186181 d!655186))

(declare-fun d!655188 () Bool)

(assert (=> d!655188 (= (list!9706 totalInput!977) (list!9707 (c!347560 totalInput!977)))))

(declare-fun bs!448147 () Bool)

(assert (= bs!448147 d!655188))

(declare-fun m!2629127 () Bool)

(assert (=> bs!448147 m!2629127))

(assert (=> b!2186181 d!655188))

(declare-fun d!655190 () Bool)

(assert (=> d!655190 (= (list!9706 input!5540) (list!9707 (c!347560 input!5540)))))

(declare-fun bs!448148 () Bool)

(assert (= bs!448148 d!655190))

(declare-fun m!2629129 () Bool)

(assert (=> bs!448148 m!2629129))

(assert (=> b!2186181 d!655190))

(declare-fun b!2186489 () Bool)

(declare-fun e!1397339 () Bool)

(assert (=> b!2186489 (= e!1397339 (nullable!1713 r!12534))))

(declare-fun bm!131575 () Bool)

(declare-fun call!131580 () Bool)

(assert (=> bm!131575 (= call!131580 (isEmpty!14530 (_1!14910 lt!816111)))))

(declare-fun b!2186490 () Bool)

(declare-fun res!939539 () Bool)

(declare-fun e!1397342 () Bool)

(assert (=> b!2186490 (=> (not res!939539) (not e!1397342))))

(assert (=> b!2186490 (= res!939539 (isEmpty!14530 (tail!3142 (_1!14910 lt!816111))))))

(declare-fun b!2186492 () Bool)

(declare-fun e!1397340 () Bool)

(assert (=> b!2186492 (= e!1397340 (not (= (head!4670 (_1!14910 lt!816111)) (c!347561 r!12534))))))

(declare-fun b!2186493 () Bool)

(declare-fun e!1397341 () Bool)

(declare-fun lt!816319 () Bool)

(assert (=> b!2186493 (= e!1397341 (not lt!816319))))

(declare-fun b!2186494 () Bool)

(declare-fun e!1397337 () Bool)

(assert (=> b!2186494 (= e!1397337 e!1397341)))

(declare-fun c!347654 () Bool)

(assert (=> b!2186494 (= c!347654 ((_ is EmptyLang!6049) r!12534))))

(declare-fun b!2186495 () Bool)

(assert (=> b!2186495 (= e!1397337 (= lt!816319 call!131580))))

(declare-fun b!2186496 () Bool)

(declare-fun e!1397343 () Bool)

(declare-fun e!1397338 () Bool)

(assert (=> b!2186496 (= e!1397343 e!1397338)))

(declare-fun res!939540 () Bool)

(assert (=> b!2186496 (=> (not res!939540) (not e!1397338))))

(assert (=> b!2186496 (= res!939540 (not lt!816319))))

(declare-fun b!2186497 () Bool)

(declare-fun res!939536 () Bool)

(assert (=> b!2186497 (=> res!939536 e!1397343)))

(assert (=> b!2186497 (= res!939536 e!1397342)))

(declare-fun res!939533 () Bool)

(assert (=> b!2186497 (=> (not res!939533) (not e!1397342))))

(assert (=> b!2186497 (= res!939533 lt!816319)))

(declare-fun b!2186498 () Bool)

(assert (=> b!2186498 (= e!1397342 (= (head!4670 (_1!14910 lt!816111)) (c!347561 r!12534)))))

(declare-fun b!2186499 () Bool)

(declare-fun res!939537 () Bool)

(assert (=> b!2186499 (=> res!939537 e!1397343)))

(assert (=> b!2186499 (= res!939537 (not ((_ is ElementMatch!6049) r!12534)))))

(assert (=> b!2186499 (= e!1397341 e!1397343)))

(declare-fun b!2186500 () Bool)

(assert (=> b!2186500 (= e!1397339 (matchR!2798 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111))) (tail!3142 (_1!14910 lt!816111))))))

(declare-fun d!655192 () Bool)

(assert (=> d!655192 e!1397337))

(declare-fun c!347655 () Bool)

(assert (=> d!655192 (= c!347655 ((_ is EmptyExpr!6049) r!12534))))

(assert (=> d!655192 (= lt!816319 e!1397339)))

(declare-fun c!347653 () Bool)

(assert (=> d!655192 (= c!347653 (isEmpty!14530 (_1!14910 lt!816111)))))

(assert (=> d!655192 (validRegex!2325 r!12534)))

(assert (=> d!655192 (= (matchR!2798 r!12534 (_1!14910 lt!816111)) lt!816319)))

(declare-fun b!2186491 () Bool)

(declare-fun res!939538 () Bool)

(assert (=> b!2186491 (=> (not res!939538) (not e!1397342))))

(assert (=> b!2186491 (= res!939538 (not call!131580))))

(declare-fun b!2186501 () Bool)

(declare-fun res!939534 () Bool)

(assert (=> b!2186501 (=> res!939534 e!1397340)))

(assert (=> b!2186501 (= res!939534 (not (isEmpty!14530 (tail!3142 (_1!14910 lt!816111)))))))

(declare-fun b!2186502 () Bool)

(assert (=> b!2186502 (= e!1397338 e!1397340)))

(declare-fun res!939535 () Bool)

(assert (=> b!2186502 (=> res!939535 e!1397340)))

(assert (=> b!2186502 (= res!939535 call!131580)))

(assert (= (and d!655192 c!347653) b!2186489))

(assert (= (and d!655192 (not c!347653)) b!2186500))

(assert (= (and d!655192 c!347655) b!2186495))

(assert (= (and d!655192 (not c!347655)) b!2186494))

(assert (= (and b!2186494 c!347654) b!2186493))

(assert (= (and b!2186494 (not c!347654)) b!2186499))

(assert (= (and b!2186499 (not res!939537)) b!2186497))

(assert (= (and b!2186497 res!939533) b!2186491))

(assert (= (and b!2186491 res!939538) b!2186490))

(assert (= (and b!2186490 res!939539) b!2186498))

(assert (= (and b!2186497 (not res!939536)) b!2186496))

(assert (= (and b!2186496 res!939540) b!2186502))

(assert (= (and b!2186502 (not res!939535)) b!2186501))

(assert (= (and b!2186501 (not res!939534)) b!2186492))

(assert (= (or b!2186495 b!2186491 b!2186502) bm!131575))

(declare-fun m!2629131 () Bool)

(assert (=> b!2186501 m!2629131))

(assert (=> b!2186501 m!2629131))

(declare-fun m!2629133 () Bool)

(assert (=> b!2186501 m!2629133))

(assert (=> bm!131575 m!2628775))

(declare-fun m!2629135 () Bool)

(assert (=> b!2186498 m!2629135))

(assert (=> b!2186492 m!2629135))

(assert (=> b!2186489 m!2628893))

(assert (=> d!655192 m!2628775))

(assert (=> d!655192 m!2628783))

(assert (=> b!2186500 m!2629135))

(assert (=> b!2186500 m!2629135))

(declare-fun m!2629137 () Bool)

(assert (=> b!2186500 m!2629137))

(assert (=> b!2186500 m!2629131))

(assert (=> b!2186500 m!2629137))

(assert (=> b!2186500 m!2629131))

(declare-fun m!2629139 () Bool)

(assert (=> b!2186500 m!2629139))

(assert (=> b!2186490 m!2629131))

(assert (=> b!2186490 m!2629131))

(assert (=> b!2186490 m!2629133))

(assert (=> b!2186171 d!655192))

(declare-fun b!2186560 () Bool)

(declare-fun e!1397375 () Int)

(assert (=> b!2186560 (= e!1397375 lt!816114)))

(declare-fun lt!816327 () (InoxSet Context!3238))

(declare-fun b!2186561 () Bool)

(declare-fun e!1397377 () Int)

(assert (=> b!2186561 (= e!1397377 (furthestNullablePosition!231 lt!816327 (+ lt!816114 1) totalInput!977 lt!816120 e!1397375))))

(declare-fun apply!6094 (BalanceConc!16132 Int) C!12244)

(assert (=> b!2186561 (= lt!816327 (derivationStepZipper!142 z!4055 (apply!6094 totalInput!977 lt!816114)))))

(declare-fun c!347671 () Bool)

(assert (=> b!2186561 (= c!347671 (nullableZipper!329 lt!816327))))

(declare-fun lt!816326 () Int)

(declare-fun d!655194 () Bool)

(assert (=> d!655194 (and (>= lt!816326 (- 1)) (< lt!816326 lt!816120) (>= lt!816326 lt!816110) (or (= lt!816326 lt!816110) (>= lt!816326 lt!816114)))))

(assert (=> d!655194 (= lt!816326 e!1397377)))

(declare-fun c!347670 () Bool)

(declare-fun e!1397376 () Bool)

(assert (=> d!655194 (= c!347670 e!1397376)))

(declare-fun res!939570 () Bool)

(assert (=> d!655194 (=> res!939570 e!1397376)))

(assert (=> d!655194 (= res!939570 (= lt!816114 lt!816120))))

(assert (=> d!655194 (and (>= lt!816114 0) (<= lt!816114 lt!816120))))

(assert (=> d!655194 (= (furthestNullablePosition!231 z!4055 lt!816114 totalInput!977 lt!816120 lt!816110) lt!816326)))

(declare-fun b!2186562 () Bool)

(declare-fun lostCauseZipper!175 ((InoxSet Context!3238)) Bool)

(assert (=> b!2186562 (= e!1397376 (lostCauseZipper!175 z!4055))))

(declare-fun b!2186563 () Bool)

(assert (=> b!2186563 (= e!1397375 lt!816110)))

(declare-fun b!2186564 () Bool)

(assert (=> b!2186564 (= e!1397377 lt!816110)))

(assert (= (and d!655194 (not res!939570)) b!2186562))

(assert (= (and d!655194 c!347670) b!2186564))

(assert (= (and d!655194 (not c!347670)) b!2186561))

(assert (= (and b!2186561 c!347671) b!2186560))

(assert (= (and b!2186561 (not c!347671)) b!2186563))

(declare-fun m!2629157 () Bool)

(assert (=> b!2186561 m!2629157))

(declare-fun m!2629159 () Bool)

(assert (=> b!2186561 m!2629159))

(assert (=> b!2186561 m!2629159))

(declare-fun m!2629161 () Bool)

(assert (=> b!2186561 m!2629161))

(declare-fun m!2629163 () Bool)

(assert (=> b!2186561 m!2629163))

(declare-fun m!2629165 () Bool)

(assert (=> b!2186562 m!2629165))

(assert (=> b!2186182 d!655194))

(declare-fun d!655204 () Bool)

(assert (=> d!655204 (isPrefix!2165 lt!816112 (++!6410 lt!816112 lt!816094))))

(declare-fun lt!816330 () Unit!38401)

(declare-fun choose!12941 (List!25360 List!25360) Unit!38401)

(assert (=> d!655204 (= lt!816330 (choose!12941 lt!816112 lt!816094))))

(assert (=> d!655204 (= (lemmaConcatTwoListThenFirstIsPrefix!1448 lt!816112 lt!816094) lt!816330)))

(declare-fun bs!448151 () Bool)

(assert (= bs!448151 d!655204))

(assert (=> bs!448151 m!2628733))

(assert (=> bs!448151 m!2628733))

(declare-fun m!2629167 () Bool)

(assert (=> bs!448151 m!2629167))

(declare-fun m!2629169 () Bool)

(assert (=> bs!448151 m!2629169))

(assert (=> b!2186182 d!655204))

(declare-fun d!655206 () Bool)

(declare-fun c!347672 () Bool)

(assert (=> d!655206 (= c!347672 (isEmpty!14530 lt!816112))))

(declare-fun e!1397378 () Bool)

(assert (=> d!655206 (= (matchZipper!165 z!4055 lt!816112) e!1397378)))

(declare-fun b!2186565 () Bool)

(assert (=> b!2186565 (= e!1397378 (nullableZipper!329 z!4055))))

(declare-fun b!2186566 () Bool)

(assert (=> b!2186566 (= e!1397378 (matchZipper!165 (derivationStepZipper!142 z!4055 (head!4670 lt!816112)) (tail!3142 lt!816112)))))

(assert (= (and d!655206 c!347672) b!2186565))

(assert (= (and d!655206 (not c!347672)) b!2186566))

(assert (=> d!655206 m!2628889))

(assert (=> b!2186565 m!2628757))

(assert (=> b!2186566 m!2628891))

(assert (=> b!2186566 m!2628891))

(declare-fun m!2629171 () Bool)

(assert (=> b!2186566 m!2629171))

(assert (=> b!2186566 m!2628885))

(assert (=> b!2186566 m!2629171))

(assert (=> b!2186566 m!2628885))

(declare-fun m!2629173 () Bool)

(assert (=> b!2186566 m!2629173))

(assert (=> b!2186182 d!655206))

(declare-fun d!655208 () Bool)

(declare-fun e!1397386 () Bool)

(assert (=> d!655208 e!1397386))

(declare-fun res!939579 () Bool)

(assert (=> d!655208 (=> res!939579 e!1397386)))

(declare-fun lt!816333 () Bool)

(assert (=> d!655208 (= res!939579 (not lt!816333))))

(declare-fun e!1397385 () Bool)

(assert (=> d!655208 (= lt!816333 e!1397385)))

(declare-fun res!939580 () Bool)

(assert (=> d!655208 (=> res!939580 e!1397385)))

(assert (=> d!655208 (= res!939580 ((_ is Nil!25276) lt!816112))))

(assert (=> d!655208 (= (isPrefix!2165 lt!816112 lt!816119) lt!816333)))

(declare-fun b!2186578 () Bool)

(assert (=> b!2186578 (= e!1397386 (>= (size!19751 lt!816119) (size!19751 lt!816112)))))

(declare-fun b!2186577 () Bool)

(declare-fun e!1397387 () Bool)

(assert (=> b!2186577 (= e!1397387 (isPrefix!2165 (tail!3142 lt!816112) (tail!3142 lt!816119)))))

(declare-fun b!2186575 () Bool)

(assert (=> b!2186575 (= e!1397385 e!1397387)))

(declare-fun res!939582 () Bool)

(assert (=> b!2186575 (=> (not res!939582) (not e!1397387))))

(assert (=> b!2186575 (= res!939582 (not ((_ is Nil!25276) lt!816119)))))

(declare-fun b!2186576 () Bool)

(declare-fun res!939581 () Bool)

(assert (=> b!2186576 (=> (not res!939581) (not e!1397387))))

(assert (=> b!2186576 (= res!939581 (= (head!4670 lt!816112) (head!4670 lt!816119)))))

(assert (= (and d!655208 (not res!939580)) b!2186575))

(assert (= (and b!2186575 res!939582) b!2186576))

(assert (= (and b!2186576 res!939581) b!2186577))

(assert (= (and d!655208 (not res!939579)) b!2186578))

(declare-fun m!2629175 () Bool)

(assert (=> b!2186578 m!2629175))

(assert (=> b!2186578 m!2628841))

(assert (=> b!2186577 m!2628885))

(declare-fun m!2629177 () Bool)

(assert (=> b!2186577 m!2629177))

(assert (=> b!2186577 m!2628885))

(assert (=> b!2186577 m!2629177))

(declare-fun m!2629179 () Bool)

(assert (=> b!2186577 m!2629179))

(assert (=> b!2186576 m!2628891))

(declare-fun m!2629181 () Bool)

(assert (=> b!2186576 m!2629181))

(assert (=> b!2186182 d!655208))

(declare-fun d!655210 () Bool)

(declare-fun e!1397389 () Bool)

(assert (=> d!655210 e!1397389))

(declare-fun res!939583 () Bool)

(assert (=> d!655210 (=> res!939583 e!1397389)))

(declare-fun lt!816334 () Bool)

(assert (=> d!655210 (= res!939583 (not lt!816334))))

(declare-fun e!1397388 () Bool)

(assert (=> d!655210 (= lt!816334 e!1397388)))

(declare-fun res!939584 () Bool)

(assert (=> d!655210 (=> res!939584 e!1397388)))

(assert (=> d!655210 (= res!939584 ((_ is Nil!25276) (_1!14910 lt!816097)))))

(assert (=> d!655210 (= (isPrefix!2165 (_1!14910 lt!816097) lt!816095) lt!816334)))

(declare-fun b!2186582 () Bool)

(assert (=> b!2186582 (= e!1397389 (>= (size!19751 lt!816095) (size!19751 (_1!14910 lt!816097))))))

(declare-fun b!2186581 () Bool)

(declare-fun e!1397390 () Bool)

(assert (=> b!2186581 (= e!1397390 (isPrefix!2165 (tail!3142 (_1!14910 lt!816097)) (tail!3142 lt!816095)))))

(declare-fun b!2186579 () Bool)

(assert (=> b!2186579 (= e!1397388 e!1397390)))

(declare-fun res!939586 () Bool)

(assert (=> b!2186579 (=> (not res!939586) (not e!1397390))))

(assert (=> b!2186579 (= res!939586 (not ((_ is Nil!25276) lt!816095)))))

(declare-fun b!2186580 () Bool)

(declare-fun res!939585 () Bool)

(assert (=> b!2186580 (=> (not res!939585) (not e!1397390))))

(assert (=> b!2186580 (= res!939585 (= (head!4670 (_1!14910 lt!816097)) (head!4670 lt!816095)))))

(assert (= (and d!655210 (not res!939584)) b!2186579))

(assert (= (and b!2186579 res!939586) b!2186580))

(assert (= (and b!2186580 res!939585) b!2186581))

(assert (= (and d!655210 (not res!939583)) b!2186582))

(declare-fun m!2629183 () Bool)

(assert (=> b!2186582 m!2629183))

(assert (=> b!2186582 m!2628799))

(assert (=> b!2186581 m!2628881))

(declare-fun m!2629185 () Bool)

(assert (=> b!2186581 m!2629185))

(assert (=> b!2186581 m!2628881))

(assert (=> b!2186581 m!2629185))

(declare-fun m!2629187 () Bool)

(assert (=> b!2186581 m!2629187))

(assert (=> b!2186580 m!2628877))

(declare-fun m!2629189 () Bool)

(assert (=> b!2186580 m!2629189))

(assert (=> b!2186182 d!655210))

(declare-fun d!655212 () Bool)

(declare-fun e!1397401 () Bool)

(assert (=> d!655212 e!1397401))

(declare-fun res!939591 () Bool)

(assert (=> d!655212 (=> res!939591 e!1397401)))

(declare-fun lt!816351 () Int)

(assert (=> d!655212 (= res!939591 (<= lt!816351 0))))

(assert (=> d!655212 (= lt!816351 (+ (- (furthestNullablePosition!231 z!4055 lt!816114 totalInput!977 (size!19750 totalInput!977) lt!816110) lt!816114) 1))))

(declare-fun lt!816352 () Unit!38401)

(declare-fun choose!12942 ((InoxSet Context!3238) Int BalanceConc!16132 Int) Unit!38401)

(assert (=> d!655212 (= lt!816352 (choose!12942 z!4055 lt!816114 totalInput!977 lt!816110))))

(declare-fun e!1397402 () Bool)

(assert (=> d!655212 e!1397402))

(declare-fun res!939592 () Bool)

(assert (=> d!655212 (=> (not res!939592) (not e!1397402))))

(assert (=> d!655212 (= res!939592 (>= lt!816114 0))))

(assert (=> d!655212 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!72 z!4055 lt!816114 totalInput!977 lt!816110) lt!816352)))

(declare-fun b!2186599 () Bool)

(assert (=> b!2186599 (= e!1397402 (<= lt!816114 (size!19750 totalInput!977)))))

(declare-fun b!2186600 () Bool)

(assert (=> b!2186600 (= e!1397401 (matchZipper!165 z!4055 (take!257 (drop!1267 (list!9706 totalInput!977) lt!816114) lt!816351)))))

(assert (= (and d!655212 res!939592) b!2186599))

(assert (= (and d!655212 (not res!939591)) b!2186600))

(assert (=> d!655212 m!2628723))

(assert (=> d!655212 m!2628723))

(declare-fun m!2629203 () Bool)

(assert (=> d!655212 m!2629203))

(declare-fun m!2629205 () Bool)

(assert (=> d!655212 m!2629205))

(assert (=> b!2186599 m!2628723))

(assert (=> b!2186600 m!2628809))

(assert (=> b!2186600 m!2628809))

(declare-fun m!2629207 () Bool)

(assert (=> b!2186600 m!2629207))

(assert (=> b!2186600 m!2629207))

(declare-fun m!2629209 () Bool)

(assert (=> b!2186600 m!2629209))

(assert (=> b!2186600 m!2629209))

(declare-fun m!2629211 () Bool)

(assert (=> b!2186600 m!2629211))

(assert (=> b!2186182 d!655212))

(declare-fun bm!131603 () Bool)

(declare-fun call!131612 () Regex!6049)

(declare-fun call!131611 () C!12244)

(assert (=> bm!131603 (= call!131612 (derivativeStep!1456 r!12534 call!131611))))

(declare-fun b!2186760 () Bool)

(declare-fun e!1397486 () Unit!38401)

(declare-fun Unit!38406 () Unit!38401)

(assert (=> b!2186760 (= e!1397486 Unit!38406)))

(declare-fun bm!131604 () Bool)

(declare-fun call!131609 () Unit!38401)

(declare-fun lemmaIsPrefixSameLengthThenSameList!371 (List!25360 List!25360 List!25360) Unit!38401)

(assert (=> bm!131604 (= call!131609 (lemmaIsPrefixSameLengthThenSameList!371 lt!816118 Nil!25276 lt!816118))))

(declare-fun d!655216 () Bool)

(declare-fun e!1397488 () Bool)

(assert (=> d!655216 e!1397488))

(declare-fun res!939627 () Bool)

(assert (=> d!655216 (=> (not res!939627) (not e!1397488))))

(declare-fun lt!816466 () tuple2!25080)

(assert (=> d!655216 (= res!939627 (= (++!6410 (_1!14910 lt!816466) (_2!14910 lt!816466)) lt!816118))))

(declare-fun e!1397490 () tuple2!25080)

(assert (=> d!655216 (= lt!816466 e!1397490)))

(declare-fun c!347718 () Bool)

(declare-fun lostCause!685 (Regex!6049) Bool)

(assert (=> d!655216 (= c!347718 (lostCause!685 r!12534))))

(declare-fun lt!816453 () Unit!38401)

(declare-fun Unit!38407 () Unit!38401)

(assert (=> d!655216 (= lt!816453 Unit!38407)))

(declare-fun getSuffix!1050 (List!25360 List!25360) List!25360)

(assert (=> d!655216 (= (getSuffix!1050 lt!816118 Nil!25276) lt!816118)))

(declare-fun lt!816454 () Unit!38401)

(declare-fun lt!816469 () Unit!38401)

(assert (=> d!655216 (= lt!816454 lt!816469)))

(declare-fun lt!816477 () List!25360)

(assert (=> d!655216 (= lt!816118 lt!816477)))

(declare-fun lemmaSamePrefixThenSameSuffix!972 (List!25360 List!25360 List!25360 List!25360 List!25360) Unit!38401)

(assert (=> d!655216 (= lt!816469 (lemmaSamePrefixThenSameSuffix!972 Nil!25276 lt!816118 Nil!25276 lt!816477 lt!816118))))

(assert (=> d!655216 (= lt!816477 (getSuffix!1050 lt!816118 Nil!25276))))

(declare-fun lt!816468 () Unit!38401)

(declare-fun lt!816476 () Unit!38401)

(assert (=> d!655216 (= lt!816468 lt!816476)))

(assert (=> d!655216 (isPrefix!2165 Nil!25276 (++!6410 Nil!25276 lt!816118))))

(assert (=> d!655216 (= lt!816476 (lemmaConcatTwoListThenFirstIsPrefix!1448 Nil!25276 lt!816118))))

(assert (=> d!655216 (validRegex!2325 r!12534)))

(assert (=> d!655216 (= (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)) lt!816466)))

(declare-fun bm!131605 () Bool)

(declare-fun call!131608 () Bool)

(assert (=> bm!131605 (= call!131608 (nullable!1713 r!12534))))

(declare-fun b!2186761 () Bool)

(declare-fun e!1397491 () tuple2!25080)

(assert (=> b!2186761 (= e!1397491 (tuple2!25081 Nil!25276 lt!816118))))

(declare-fun b!2186762 () Bool)

(declare-fun e!1397487 () Bool)

(assert (=> b!2186762 (= e!1397487 (>= (size!19751 (_1!14910 lt!816466)) (size!19751 Nil!25276)))))

(declare-fun b!2186763 () Bool)

(declare-fun e!1397489 () tuple2!25080)

(declare-fun call!131613 () tuple2!25080)

(assert (=> b!2186763 (= e!1397489 call!131613)))

(declare-fun b!2186764 () Bool)

(assert (=> b!2186764 (= e!1397489 e!1397491)))

(declare-fun lt!816464 () tuple2!25080)

(assert (=> b!2186764 (= lt!816464 call!131613)))

(declare-fun c!347719 () Bool)

(assert (=> b!2186764 (= c!347719 (isEmpty!14530 (_1!14910 lt!816464)))))

(declare-fun bm!131606 () Bool)

(declare-fun call!131614 () List!25360)

(assert (=> bm!131606 (= call!131614 (tail!3142 lt!816118))))

(declare-fun b!2186765 () Bool)

(assert (=> b!2186765 (= e!1397490 (tuple2!25081 Nil!25276 lt!816118))))

(declare-fun b!2186766 () Bool)

(declare-fun Unit!38408 () Unit!38401)

(assert (=> b!2186766 (= e!1397486 Unit!38408)))

(declare-fun lt!816462 () Unit!38401)

(declare-fun call!131610 () Unit!38401)

(assert (=> b!2186766 (= lt!816462 call!131610)))

(declare-fun call!131615 () Bool)

(assert (=> b!2186766 call!131615))

(declare-fun lt!816459 () Unit!38401)

(assert (=> b!2186766 (= lt!816459 lt!816462)))

(declare-fun lt!816473 () Unit!38401)

(assert (=> b!2186766 (= lt!816473 call!131609)))

(assert (=> b!2186766 (= lt!816118 Nil!25276)))

(declare-fun lt!816478 () Unit!38401)

(assert (=> b!2186766 (= lt!816478 lt!816473)))

(assert (=> b!2186766 false))

(declare-fun b!2186767 () Bool)

(declare-fun e!1397484 () tuple2!25080)

(assert (=> b!2186767 (= e!1397490 e!1397484)))

(declare-fun c!347716 () Bool)

(assert (=> b!2186767 (= c!347716 (= (size!19751 Nil!25276) (size!19751 lt!816118)))))

(declare-fun bm!131607 () Bool)

(assert (=> bm!131607 (= call!131615 (isPrefix!2165 lt!816118 lt!816118))))

(declare-fun lt!816467 () List!25360)

(declare-fun bm!131608 () Bool)

(assert (=> bm!131608 (= call!131613 (findLongestMatchInner!674 call!131612 lt!816467 (+ (size!19751 Nil!25276) 1) call!131614 lt!816118 (size!19751 lt!816118)))))

(declare-fun b!2186768 () Bool)

(declare-fun c!347720 () Bool)

(assert (=> b!2186768 (= c!347720 call!131608)))

(declare-fun lt!816479 () Unit!38401)

(declare-fun lt!816470 () Unit!38401)

(assert (=> b!2186768 (= lt!816479 lt!816470)))

(assert (=> b!2186768 (= lt!816118 Nil!25276)))

(assert (=> b!2186768 (= lt!816470 call!131609)))

(declare-fun lt!816456 () Unit!38401)

(declare-fun lt!816461 () Unit!38401)

(assert (=> b!2186768 (= lt!816456 lt!816461)))

(assert (=> b!2186768 call!131615))

(assert (=> b!2186768 (= lt!816461 call!131610)))

(declare-fun e!1397485 () tuple2!25080)

(assert (=> b!2186768 (= e!1397484 e!1397485)))

(declare-fun b!2186769 () Bool)

(assert (=> b!2186769 (= e!1397485 (tuple2!25081 Nil!25276 lt!816118))))

(declare-fun bm!131609 () Bool)

(assert (=> bm!131609 (= call!131611 (head!4670 lt!816118))))

(declare-fun b!2186770 () Bool)

(assert (=> b!2186770 (= e!1397485 (tuple2!25081 Nil!25276 Nil!25276))))

(declare-fun bm!131610 () Bool)

(declare-fun lemmaIsPrefixRefl!1425 (List!25360 List!25360) Unit!38401)

(assert (=> bm!131610 (= call!131610 (lemmaIsPrefixRefl!1425 lt!816118 lt!816118))))

(declare-fun b!2186771 () Bool)

(declare-fun c!347717 () Bool)

(assert (=> b!2186771 (= c!347717 call!131608)))

(declare-fun lt!816460 () Unit!38401)

(declare-fun lt!816475 () Unit!38401)

(assert (=> b!2186771 (= lt!816460 lt!816475)))

(declare-fun lt!816463 () C!12244)

(declare-fun lt!816480 () List!25360)

(assert (=> b!2186771 (= (++!6410 (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276)) lt!816480) lt!816118)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!523 (List!25360 C!12244 List!25360 List!25360) Unit!38401)

(assert (=> b!2186771 (= lt!816475 (lemmaMoveElementToOtherListKeepsConcatEq!523 Nil!25276 lt!816463 lt!816480 lt!816118))))

(assert (=> b!2186771 (= lt!816480 (tail!3142 lt!816118))))

(assert (=> b!2186771 (= lt!816463 (head!4670 lt!816118))))

(declare-fun lt!816474 () Unit!38401)

(declare-fun lt!816458 () Unit!38401)

(assert (=> b!2186771 (= lt!816474 lt!816458)))

(assert (=> b!2186771 (isPrefix!2165 (++!6410 Nil!25276 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276)) lt!816118)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!395 (List!25360 List!25360) Unit!38401)

(assert (=> b!2186771 (= lt!816458 (lemmaAddHeadSuffixToPrefixStillPrefix!395 Nil!25276 lt!816118))))

(declare-fun lt!816472 () Unit!38401)

(declare-fun lt!816471 () Unit!38401)

(assert (=> b!2186771 (= lt!816472 lt!816471)))

(assert (=> b!2186771 (= lt!816471 (lemmaAddHeadSuffixToPrefixStillPrefix!395 Nil!25276 lt!816118))))

(assert (=> b!2186771 (= lt!816467 (++!6410 Nil!25276 (Cons!25276 (head!4670 lt!816118) Nil!25276)))))

(declare-fun lt!816465 () Unit!38401)

(assert (=> b!2186771 (= lt!816465 e!1397486)))

(declare-fun c!347715 () Bool)

(assert (=> b!2186771 (= c!347715 (= (size!19751 Nil!25276) (size!19751 lt!816118)))))

(declare-fun lt!816457 () Unit!38401)

(declare-fun lt!816455 () Unit!38401)

(assert (=> b!2186771 (= lt!816457 lt!816455)))

(assert (=> b!2186771 (<= (size!19751 Nil!25276) (size!19751 lt!816118))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!198 (List!25360 List!25360) Unit!38401)

(assert (=> b!2186771 (= lt!816455 (lemmaIsPrefixThenSmallerEqSize!198 Nil!25276 lt!816118))))

(assert (=> b!2186771 (= e!1397484 e!1397489)))

(declare-fun b!2186772 () Bool)

(assert (=> b!2186772 (= e!1397491 lt!816464)))

(declare-fun b!2186773 () Bool)

(assert (=> b!2186773 (= e!1397488 e!1397487)))

(declare-fun res!939626 () Bool)

(assert (=> b!2186773 (=> res!939626 e!1397487)))

(assert (=> b!2186773 (= res!939626 (isEmpty!14530 (_1!14910 lt!816466)))))

(assert (= (and d!655216 c!347718) b!2186765))

(assert (= (and d!655216 (not c!347718)) b!2186767))

(assert (= (and b!2186767 c!347716) b!2186768))

(assert (= (and b!2186767 (not c!347716)) b!2186771))

(assert (= (and b!2186768 c!347720) b!2186770))

(assert (= (and b!2186768 (not c!347720)) b!2186769))

(assert (= (and b!2186771 c!347715) b!2186766))

(assert (= (and b!2186771 (not c!347715)) b!2186760))

(assert (= (and b!2186771 c!347717) b!2186764))

(assert (= (and b!2186771 (not c!347717)) b!2186763))

(assert (= (and b!2186764 c!347719) b!2186761))

(assert (= (and b!2186764 (not c!347719)) b!2186772))

(assert (= (or b!2186764 b!2186763) bm!131609))

(assert (= (or b!2186764 b!2186763) bm!131606))

(assert (= (or b!2186764 b!2186763) bm!131603))

(assert (= (or b!2186764 b!2186763) bm!131608))

(assert (= (or b!2186768 b!2186766) bm!131607))

(assert (= (or b!2186768 b!2186766) bm!131610))

(assert (= (or b!2186768 b!2186766) bm!131604))

(assert (= (or b!2186768 b!2186771) bm!131605))

(assert (= (and d!655216 res!939627) b!2186773))

(assert (= (and b!2186773 (not res!939626)) b!2186762))

(declare-fun m!2629329 () Bool)

(assert (=> bm!131604 m!2629329))

(declare-fun m!2629331 () Bool)

(assert (=> bm!131603 m!2629331))

(declare-fun m!2629333 () Bool)

(assert (=> b!2186762 m!2629333))

(assert (=> b!2186762 m!2628759))

(declare-fun m!2629335 () Bool)

(assert (=> bm!131609 m!2629335))

(assert (=> bm!131605 m!2628893))

(declare-fun m!2629337 () Bool)

(assert (=> d!655216 m!2629337))

(declare-fun m!2629339 () Bool)

(assert (=> d!655216 m!2629339))

(declare-fun m!2629341 () Bool)

(assert (=> d!655216 m!2629341))

(declare-fun m!2629343 () Bool)

(assert (=> d!655216 m!2629343))

(declare-fun m!2629345 () Bool)

(assert (=> d!655216 m!2629345))

(declare-fun m!2629347 () Bool)

(assert (=> d!655216 m!2629347))

(assert (=> d!655216 m!2629337))

(assert (=> d!655216 m!2628783))

(declare-fun m!2629349 () Bool)

(assert (=> d!655216 m!2629349))

(declare-fun m!2629351 () Bool)

(assert (=> bm!131610 m!2629351))

(declare-fun m!2629353 () Bool)

(assert (=> bm!131607 m!2629353))

(declare-fun m!2629355 () Bool)

(assert (=> b!2186764 m!2629355))

(assert (=> bm!131608 m!2628761))

(declare-fun m!2629357 () Bool)

(assert (=> bm!131608 m!2629357))

(declare-fun m!2629359 () Bool)

(assert (=> bm!131606 m!2629359))

(declare-fun m!2629361 () Bool)

(assert (=> b!2186773 m!2629361))

(declare-fun m!2629363 () Bool)

(assert (=> b!2186771 m!2629363))

(assert (=> b!2186771 m!2629359))

(assert (=> b!2186771 m!2629349))

(declare-fun m!2629365 () Bool)

(assert (=> b!2186771 m!2629365))

(assert (=> b!2186771 m!2629349))

(declare-fun m!2629367 () Bool)

(assert (=> b!2186771 m!2629367))

(declare-fun m!2629369 () Bool)

(assert (=> b!2186771 m!2629369))

(declare-fun m!2629371 () Bool)

(assert (=> b!2186771 m!2629371))

(assert (=> b!2186771 m!2628761))

(declare-fun m!2629373 () Bool)

(assert (=> b!2186771 m!2629373))

(declare-fun m!2629375 () Bool)

(assert (=> b!2186771 m!2629375))

(declare-fun m!2629377 () Bool)

(assert (=> b!2186771 m!2629377))

(assert (=> b!2186771 m!2629371))

(declare-fun m!2629379 () Bool)

(assert (=> b!2186771 m!2629379))

(assert (=> b!2186771 m!2629375))

(assert (=> b!2186771 m!2628759))

(assert (=> b!2186771 m!2629335))

(assert (=> b!2186182 d!655216))

(declare-fun d!655248 () Bool)

(declare-fun e!1397494 () Bool)

(assert (=> d!655248 e!1397494))

(declare-fun res!939630 () Bool)

(assert (=> d!655248 (=> res!939630 e!1397494)))

(assert (=> d!655248 (= res!939630 (isEmpty!14530 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))))))

(declare-fun lt!816483 () Unit!38401)

(declare-fun choose!12944 (Regex!6049 List!25360) Unit!38401)

(assert (=> d!655248 (= lt!816483 (choose!12944 r!12534 lt!816118))))

(assert (=> d!655248 (validRegex!2325 r!12534)))

(assert (=> d!655248 (= (longestMatchIsAcceptedByMatchOrIsEmpty!647 r!12534 lt!816118) lt!816483)))

(declare-fun b!2186776 () Bool)

(assert (=> b!2186776 (= e!1397494 (matchR!2798 r!12534 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))))))

(assert (= (and d!655248 (not res!939630)) b!2186776))

(declare-fun m!2629381 () Bool)

(assert (=> d!655248 m!2629381))

(assert (=> d!655248 m!2628783))

(assert (=> d!655248 m!2628761))

(assert (=> d!655248 m!2628759))

(assert (=> d!655248 m!2628761))

(assert (=> d!655248 m!2628773))

(declare-fun m!2629383 () Bool)

(assert (=> d!655248 m!2629383))

(assert (=> d!655248 m!2628759))

(assert (=> b!2186776 m!2628759))

(assert (=> b!2186776 m!2628761))

(assert (=> b!2186776 m!2628759))

(assert (=> b!2186776 m!2628761))

(assert (=> b!2186776 m!2628773))

(declare-fun m!2629385 () Bool)

(assert (=> b!2186776 m!2629385))

(assert (=> b!2186182 d!655248))

(declare-fun d!655250 () Bool)

(declare-fun lt!816484 () Int)

(assert (=> d!655250 (>= lt!816484 0)))

(declare-fun e!1397495 () Int)

(assert (=> d!655250 (= lt!816484 e!1397495)))

(declare-fun c!347721 () Bool)

(assert (=> d!655250 (= c!347721 ((_ is Nil!25276) lt!816118))))

(assert (=> d!655250 (= (size!19751 lt!816118) lt!816484)))

(declare-fun b!2186777 () Bool)

(assert (=> b!2186777 (= e!1397495 0)))

(declare-fun b!2186778 () Bool)

(assert (=> b!2186778 (= e!1397495 (+ 1 (size!19751 (t!197950 lt!816118))))))

(assert (= (and d!655250 c!347721) b!2186777))

(assert (= (and d!655250 (not c!347721)) b!2186778))

(declare-fun m!2629387 () Bool)

(assert (=> b!2186778 m!2629387))

(assert (=> b!2186182 d!655250))

(declare-fun d!655252 () Bool)

(assert (=> d!655252 (= (isEmpty!14530 (_1!14910 lt!816111)) ((_ is Nil!25276) (_1!14910 lt!816111)))))

(assert (=> b!2186182 d!655252))

(declare-fun b!2186793 () Bool)

(declare-fun e!1397506 () Int)

(assert (=> b!2186793 (= e!1397506 0)))

(declare-fun b!2186794 () Bool)

(declare-fun e!1397504 () List!25360)

(assert (=> b!2186794 (= e!1397504 (Cons!25276 (h!30677 lt!816109) (take!257 (t!197950 lt!816109) (- lt!816114 1))))))

(declare-fun b!2186795 () Bool)

(declare-fun e!1397507 () Int)

(assert (=> b!2186795 (= e!1397506 e!1397507)))

(declare-fun c!347729 () Bool)

(assert (=> b!2186795 (= c!347729 (>= lt!816114 (size!19751 lt!816109)))))

(declare-fun b!2186796 () Bool)

(assert (=> b!2186796 (= e!1397504 Nil!25276)))

(declare-fun b!2186797 () Bool)

(assert (=> b!2186797 (= e!1397507 lt!816114)))

(declare-fun d!655254 () Bool)

(declare-fun e!1397505 () Bool)

(assert (=> d!655254 e!1397505))

(declare-fun res!939633 () Bool)

(assert (=> d!655254 (=> (not res!939633) (not e!1397505))))

(declare-fun lt!816487 () List!25360)

(assert (=> d!655254 (= res!939633 (= ((_ map implies) (content!3451 lt!816487) (content!3451 lt!816109)) ((as const (InoxSet C!12244)) true)))))

(assert (=> d!655254 (= lt!816487 e!1397504)))

(declare-fun c!347730 () Bool)

(assert (=> d!655254 (= c!347730 (or ((_ is Nil!25276) lt!816109) (<= lt!816114 0)))))

(assert (=> d!655254 (= (take!257 lt!816109 lt!816114) lt!816487)))

(declare-fun b!2186798 () Bool)

(assert (=> b!2186798 (= e!1397507 (size!19751 lt!816109))))

(declare-fun b!2186799 () Bool)

(assert (=> b!2186799 (= e!1397505 (= (size!19751 lt!816487) e!1397506))))

(declare-fun c!347728 () Bool)

(assert (=> b!2186799 (= c!347728 (<= lt!816114 0))))

(assert (= (and d!655254 c!347730) b!2186796))

(assert (= (and d!655254 (not c!347730)) b!2186794))

(assert (= (and d!655254 res!939633) b!2186799))

(assert (= (and b!2186799 c!347728) b!2186793))

(assert (= (and b!2186799 (not c!347728)) b!2186795))

(assert (= (and b!2186795 c!347729) b!2186798))

(assert (= (and b!2186795 (not c!347729)) b!2186797))

(declare-fun m!2629389 () Bool)

(assert (=> b!2186794 m!2629389))

(assert (=> b!2186798 m!2629123))

(declare-fun m!2629391 () Bool)

(assert (=> b!2186799 m!2629391))

(assert (=> b!2186795 m!2629123))

(declare-fun m!2629393 () Bool)

(assert (=> d!655254 m!2629393))

(declare-fun m!2629395 () Bool)

(assert (=> d!655254 m!2629395))

(assert (=> b!2186182 d!655254))

(declare-fun d!655256 () Bool)

(declare-fun lt!816488 () Int)

(assert (=> d!655256 (>= lt!816488 0)))

(declare-fun e!1397508 () Int)

(assert (=> d!655256 (= lt!816488 e!1397508)))

(declare-fun c!347731 () Bool)

(assert (=> d!655256 (= c!347731 ((_ is Nil!25276) Nil!25276))))

(assert (=> d!655256 (= (size!19751 Nil!25276) lt!816488)))

(declare-fun b!2186800 () Bool)

(assert (=> b!2186800 (= e!1397508 0)))

(declare-fun b!2186801 () Bool)

(assert (=> b!2186801 (= e!1397508 (+ 1 (size!19751 (t!197950 Nil!25276))))))

(assert (= (and d!655256 c!347731) b!2186800))

(assert (= (and d!655256 (not c!347731)) b!2186801))

(declare-fun m!2629397 () Bool)

(assert (=> b!2186801 m!2629397))

(assert (=> b!2186182 d!655256))

(declare-fun d!655258 () Bool)

(assert (=> d!655258 (isPrefix!2165 (_1!14910 lt!816097) (++!6410 (_1!14910 lt!816097) (_2!14910 lt!816097)))))

(declare-fun lt!816489 () Unit!38401)

(assert (=> d!655258 (= lt!816489 (choose!12941 (_1!14910 lt!816097) (_2!14910 lt!816097)))))

(assert (=> d!655258 (= (lemmaConcatTwoListThenFirstIsPrefix!1448 (_1!14910 lt!816097) (_2!14910 lt!816097)) lt!816489)))

(declare-fun bs!448159 () Bool)

(assert (= bs!448159 d!655258))

(assert (=> bs!448159 m!2628801))

(assert (=> bs!448159 m!2628801))

(declare-fun m!2629399 () Bool)

(assert (=> bs!448159 m!2629399))

(declare-fun m!2629401 () Bool)

(assert (=> bs!448159 m!2629401))

(assert (=> b!2186182 d!655258))

(declare-fun d!655260 () Bool)

(declare-fun e!1397510 () Bool)

(assert (=> d!655260 e!1397510))

(declare-fun res!939634 () Bool)

(assert (=> d!655260 (=> res!939634 e!1397510)))

(declare-fun lt!816490 () Bool)

(assert (=> d!655260 (= res!939634 (not lt!816490))))

(declare-fun e!1397509 () Bool)

(assert (=> d!655260 (= lt!816490 e!1397509)))

(declare-fun res!939635 () Bool)

(assert (=> d!655260 (=> res!939635 e!1397509)))

(assert (=> d!655260 (= res!939635 ((_ is Nil!25276) (take!257 lt!816109 lt!816114)))))

(assert (=> d!655260 (= (isPrefix!2165 (take!257 lt!816109 lt!816114) lt!816109) lt!816490)))

(declare-fun b!2186805 () Bool)

(assert (=> b!2186805 (= e!1397510 (>= (size!19751 lt!816109) (size!19751 (take!257 lt!816109 lt!816114))))))

(declare-fun b!2186804 () Bool)

(declare-fun e!1397511 () Bool)

(assert (=> b!2186804 (= e!1397511 (isPrefix!2165 (tail!3142 (take!257 lt!816109 lt!816114)) (tail!3142 lt!816109)))))

(declare-fun b!2186802 () Bool)

(assert (=> b!2186802 (= e!1397509 e!1397511)))

(declare-fun res!939637 () Bool)

(assert (=> b!2186802 (=> (not res!939637) (not e!1397511))))

(assert (=> b!2186802 (= res!939637 (not ((_ is Nil!25276) lt!816109)))))

(declare-fun b!2186803 () Bool)

(declare-fun res!939636 () Bool)

(assert (=> b!2186803 (=> (not res!939636) (not e!1397511))))

(assert (=> b!2186803 (= res!939636 (= (head!4670 (take!257 lt!816109 lt!816114)) (head!4670 lt!816109)))))

(assert (= (and d!655260 (not res!939635)) b!2186802))

(assert (= (and b!2186802 res!939637) b!2186803))

(assert (= (and b!2186803 res!939636) b!2186804))

(assert (= (and d!655260 (not res!939634)) b!2186805))

(assert (=> b!2186805 m!2629123))

(assert (=> b!2186805 m!2628753))

(declare-fun m!2629403 () Bool)

(assert (=> b!2186805 m!2629403))

(assert (=> b!2186804 m!2628753))

(declare-fun m!2629405 () Bool)

(assert (=> b!2186804 m!2629405))

(declare-fun m!2629407 () Bool)

(assert (=> b!2186804 m!2629407))

(assert (=> b!2186804 m!2629405))

(assert (=> b!2186804 m!2629407))

(declare-fun m!2629409 () Bool)

(assert (=> b!2186804 m!2629409))

(assert (=> b!2186803 m!2628753))

(declare-fun m!2629411 () Bool)

(assert (=> b!2186803 m!2629411))

(declare-fun m!2629413 () Bool)

(assert (=> b!2186803 m!2629413))

(assert (=> b!2186182 d!655260))

(declare-fun d!655262 () Bool)

(assert (=> d!655262 (isPrefix!2165 (take!257 lt!816109 lt!816114) lt!816109)))

(declare-fun lt!816493 () Unit!38401)

(declare-fun choose!12945 (List!25360 Int) Unit!38401)

(assert (=> d!655262 (= lt!816493 (choose!12945 lt!816109 lt!816114))))

(assert (=> d!655262 (>= lt!816114 0)))

(assert (=> d!655262 (= (lemmaTakeIsPrefix!80 lt!816109 lt!816114) lt!816493)))

(declare-fun bs!448160 () Bool)

(assert (= bs!448160 d!655262))

(assert (=> bs!448160 m!2628753))

(assert (=> bs!448160 m!2628753))

(assert (=> bs!448160 m!2628765))

(declare-fun m!2629415 () Bool)

(assert (=> bs!448160 m!2629415))

(assert (=> b!2186182 d!655262))

(declare-fun d!655264 () Bool)

(declare-fun lambda!82103 () Int)

(declare-fun exists!780 ((InoxSet Context!3238) Int) Bool)

(assert (=> d!655264 (= (nullableZipper!329 z!4055) (exists!780 z!4055 lambda!82103))))

(declare-fun bs!448161 () Bool)

(assert (= bs!448161 d!655264))

(declare-fun m!2629417 () Bool)

(assert (=> bs!448161 m!2629417))

(assert (=> b!2186182 d!655264))

(declare-fun d!655266 () Bool)

(declare-fun c!347734 () Bool)

(assert (=> d!655266 (= c!347734 ((_ is Node!8185) (c!347560 input!5540)))))

(declare-fun e!1397512 () Bool)

(assert (=> d!655266 (= (inv!33609 (c!347560 input!5540)) e!1397512)))

(declare-fun b!2186806 () Bool)

(assert (=> b!2186806 (= e!1397512 (inv!33612 (c!347560 input!5540)))))

(declare-fun b!2186807 () Bool)

(declare-fun e!1397513 () Bool)

(assert (=> b!2186807 (= e!1397512 e!1397513)))

(declare-fun res!939638 () Bool)

(assert (=> b!2186807 (= res!939638 (not ((_ is Leaf!11977) (c!347560 input!5540))))))

(assert (=> b!2186807 (=> res!939638 e!1397513)))

(declare-fun b!2186808 () Bool)

(assert (=> b!2186808 (= e!1397513 (inv!33613 (c!347560 input!5540)))))

(assert (= (and d!655266 c!347734) b!2186806))

(assert (= (and d!655266 (not c!347734)) b!2186807))

(assert (= (and b!2186807 (not res!939638)) b!2186808))

(declare-fun m!2629419 () Bool)

(assert (=> b!2186806 m!2629419))

(declare-fun m!2629421 () Bool)

(assert (=> b!2186808 m!2629421))

(assert (=> b!2186163 d!655266))

(declare-fun b!2186812 () Bool)

(declare-fun e!1397515 () Bool)

(declare-fun lt!816494 () List!25360)

(assert (=> b!2186812 (= e!1397515 (or (not (= (_2!14910 lt!816097) Nil!25276)) (= lt!816494 (_1!14910 lt!816097))))))

(declare-fun b!2186809 () Bool)

(declare-fun e!1397514 () List!25360)

(assert (=> b!2186809 (= e!1397514 (_2!14910 lt!816097))))

(declare-fun b!2186811 () Bool)

(declare-fun res!939640 () Bool)

(assert (=> b!2186811 (=> (not res!939640) (not e!1397515))))

(assert (=> b!2186811 (= res!939640 (= (size!19751 lt!816494) (+ (size!19751 (_1!14910 lt!816097)) (size!19751 (_2!14910 lt!816097)))))))

(declare-fun b!2186810 () Bool)

(assert (=> b!2186810 (= e!1397514 (Cons!25276 (h!30677 (_1!14910 lt!816097)) (++!6410 (t!197950 (_1!14910 lt!816097)) (_2!14910 lt!816097))))))

(declare-fun d!655268 () Bool)

(assert (=> d!655268 e!1397515))

(declare-fun res!939639 () Bool)

(assert (=> d!655268 (=> (not res!939639) (not e!1397515))))

(assert (=> d!655268 (= res!939639 (= (content!3451 lt!816494) ((_ map or) (content!3451 (_1!14910 lt!816097)) (content!3451 (_2!14910 lt!816097)))))))

(assert (=> d!655268 (= lt!816494 e!1397514)))

(declare-fun c!347735 () Bool)

(assert (=> d!655268 (= c!347735 ((_ is Nil!25276) (_1!14910 lt!816097)))))

(assert (=> d!655268 (= (++!6410 (_1!14910 lt!816097) (_2!14910 lt!816097)) lt!816494)))

(assert (= (and d!655268 c!347735) b!2186809))

(assert (= (and d!655268 (not c!347735)) b!2186810))

(assert (= (and d!655268 res!939639) b!2186811))

(assert (= (and b!2186811 res!939640) b!2186812))

(declare-fun m!2629423 () Bool)

(assert (=> b!2186811 m!2629423))

(assert (=> b!2186811 m!2628799))

(declare-fun m!2629425 () Bool)

(assert (=> b!2186811 m!2629425))

(declare-fun m!2629427 () Bool)

(assert (=> b!2186810 m!2629427))

(declare-fun m!2629429 () Bool)

(assert (=> d!655268 m!2629429))

(declare-fun m!2629431 () Bool)

(assert (=> d!655268 m!2629431))

(declare-fun m!2629433 () Bool)

(assert (=> d!655268 m!2629433))

(assert (=> b!2186172 d!655268))

(declare-fun d!655270 () Bool)

(assert (=> d!655270 (= (isEmpty!14530 (_1!14910 lt!816097)) ((_ is Nil!25276) (_1!14910 lt!816097)))))

(assert (=> b!2186183 d!655270))

(declare-fun d!655272 () Bool)

(declare-fun lt!816497 () Regex!6049)

(assert (=> d!655272 (validRegex!2325 lt!816497)))

(declare-fun generalisedUnion!529 (List!25361) Regex!6049)

(declare-fun unfocusZipperList!53 (List!25362) List!25361)

(assert (=> d!655272 (= lt!816497 (generalisedUnion!529 (unfocusZipperList!53 lt!816108)))))

(assert (=> d!655272 (= (unfocusZipper!156 lt!816108) lt!816497)))

(declare-fun bs!448162 () Bool)

(assert (= bs!448162 d!655272))

(declare-fun m!2629435 () Bool)

(assert (=> bs!448162 m!2629435))

(declare-fun m!2629437 () Bool)

(assert (=> bs!448162 m!2629437))

(assert (=> bs!448162 m!2629437))

(declare-fun m!2629439 () Bool)

(assert (=> bs!448162 m!2629439))

(assert (=> b!2186164 d!655272))

(declare-fun d!655274 () Bool)

(declare-fun e!1397518 () Bool)

(assert (=> d!655274 e!1397518))

(declare-fun res!939643 () Bool)

(assert (=> d!655274 (=> (not res!939643) (not e!1397518))))

(declare-fun lt!816500 () List!25362)

(declare-fun noDuplicate!306 (List!25362) Bool)

(assert (=> d!655274 (= res!939643 (noDuplicate!306 lt!816500))))

(declare-fun choose!12946 ((InoxSet Context!3238)) List!25362)

(assert (=> d!655274 (= lt!816500 (choose!12946 z!4055))))

(assert (=> d!655274 (= (toList!1232 z!4055) lt!816500)))

(declare-fun b!2186815 () Bool)

(declare-fun content!3453 (List!25362) (InoxSet Context!3238))

(assert (=> b!2186815 (= e!1397518 (= (content!3453 lt!816500) z!4055))))

(assert (= (and d!655274 res!939643) b!2186815))

(declare-fun m!2629441 () Bool)

(assert (=> d!655274 m!2629441))

(declare-fun m!2629443 () Bool)

(assert (=> d!655274 m!2629443))

(declare-fun m!2629445 () Bool)

(assert (=> b!2186815 m!2629445))

(assert (=> b!2186164 d!655274))

(declare-fun d!655276 () Bool)

(declare-fun c!347736 () Bool)

(assert (=> d!655276 (= c!347736 (isEmpty!14530 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)))))

(declare-fun e!1397519 () Bool)

(assert (=> d!655276 (= (matchZipper!165 z!4055 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)) e!1397519)))

(declare-fun b!2186816 () Bool)

(assert (=> b!2186816 (= e!1397519 (nullableZipper!329 z!4055))))

(declare-fun b!2186817 () Bool)

(assert (=> b!2186817 (= e!1397519 (matchZipper!165 (derivationStepZipper!142 z!4055 (head!4670 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105))) (tail!3142 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105))))))

(assert (= (and d!655276 c!347736) b!2186816))

(assert (= (and d!655276 (not c!347736)) b!2186817))

(assert (=> d!655276 m!2628741))

(declare-fun m!2629447 () Bool)

(assert (=> d!655276 m!2629447))

(assert (=> b!2186816 m!2628757))

(assert (=> b!2186817 m!2628741))

(declare-fun m!2629449 () Bool)

(assert (=> b!2186817 m!2629449))

(assert (=> b!2186817 m!2629449))

(declare-fun m!2629451 () Bool)

(assert (=> b!2186817 m!2629451))

(assert (=> b!2186817 m!2628741))

(declare-fun m!2629453 () Bool)

(assert (=> b!2186817 m!2629453))

(assert (=> b!2186817 m!2629451))

(assert (=> b!2186817 m!2629453))

(declare-fun m!2629455 () Bool)

(assert (=> b!2186817 m!2629455))

(assert (=> b!2186174 d!655276))

(declare-fun b!2186818 () Bool)

(declare-fun e!1397522 () Int)

(assert (=> b!2186818 (= e!1397522 0)))

(declare-fun e!1397520 () List!25360)

(declare-fun b!2186819 () Bool)

(assert (=> b!2186819 (= e!1397520 (Cons!25276 (h!30677 (drop!1267 lt!816109 lt!816114)) (take!257 (t!197950 (drop!1267 lt!816109 lt!816114)) (- lt!816105 1))))))

(declare-fun b!2186820 () Bool)

(declare-fun e!1397523 () Int)

(assert (=> b!2186820 (= e!1397522 e!1397523)))

(declare-fun c!347738 () Bool)

(assert (=> b!2186820 (= c!347738 (>= lt!816105 (size!19751 (drop!1267 lt!816109 lt!816114))))))

(declare-fun b!2186821 () Bool)

(assert (=> b!2186821 (= e!1397520 Nil!25276)))

(declare-fun b!2186822 () Bool)

(assert (=> b!2186822 (= e!1397523 lt!816105)))

(declare-fun d!655278 () Bool)

(declare-fun e!1397521 () Bool)

(assert (=> d!655278 e!1397521))

(declare-fun res!939644 () Bool)

(assert (=> d!655278 (=> (not res!939644) (not e!1397521))))

(declare-fun lt!816501 () List!25360)

(assert (=> d!655278 (= res!939644 (= ((_ map implies) (content!3451 lt!816501) (content!3451 (drop!1267 lt!816109 lt!816114))) ((as const (InoxSet C!12244)) true)))))

(assert (=> d!655278 (= lt!816501 e!1397520)))

(declare-fun c!347739 () Bool)

(assert (=> d!655278 (= c!347739 (or ((_ is Nil!25276) (drop!1267 lt!816109 lt!816114)) (<= lt!816105 0)))))

(assert (=> d!655278 (= (take!257 (drop!1267 lt!816109 lt!816114) lt!816105) lt!816501)))

(declare-fun b!2186823 () Bool)

(assert (=> b!2186823 (= e!1397523 (size!19751 (drop!1267 lt!816109 lt!816114)))))

(declare-fun b!2186824 () Bool)

(assert (=> b!2186824 (= e!1397521 (= (size!19751 lt!816501) e!1397522))))

(declare-fun c!347737 () Bool)

(assert (=> b!2186824 (= c!347737 (<= lt!816105 0))))

(assert (= (and d!655278 c!347739) b!2186821))

(assert (= (and d!655278 (not c!347739)) b!2186819))

(assert (= (and d!655278 res!939644) b!2186824))

(assert (= (and b!2186824 c!347737) b!2186818))

(assert (= (and b!2186824 (not c!347737)) b!2186820))

(assert (= (and b!2186820 c!347738) b!2186823))

(assert (= (and b!2186820 (not c!347738)) b!2186822))

(declare-fun m!2629457 () Bool)

(assert (=> b!2186819 m!2629457))

(assert (=> b!2186823 m!2628739))

(declare-fun m!2629459 () Bool)

(assert (=> b!2186823 m!2629459))

(declare-fun m!2629461 () Bool)

(assert (=> b!2186824 m!2629461))

(assert (=> b!2186820 m!2628739))

(assert (=> b!2186820 m!2629459))

(declare-fun m!2629463 () Bool)

(assert (=> d!655278 m!2629463))

(assert (=> d!655278 m!2628739))

(declare-fun m!2629465 () Bool)

(assert (=> d!655278 m!2629465))

(assert (=> b!2186174 d!655278))

(declare-fun b!2186843 () Bool)

(declare-fun e!1397535 () List!25360)

(assert (=> b!2186843 (= e!1397535 (drop!1267 (t!197950 lt!816109) (- lt!816114 1)))))

(declare-fun b!2186844 () Bool)

(declare-fun e!1397537 () Int)

(declare-fun e!1397536 () Int)

(assert (=> b!2186844 (= e!1397537 e!1397536)))

(declare-fun c!347748 () Bool)

(declare-fun call!131618 () Int)

(assert (=> b!2186844 (= c!347748 (>= lt!816114 call!131618))))

(declare-fun b!2186845 () Bool)

(assert (=> b!2186845 (= e!1397535 lt!816109)))

(declare-fun b!2186846 () Bool)

(assert (=> b!2186846 (= e!1397536 0)))

(declare-fun b!2186847 () Bool)

(declare-fun e!1397534 () List!25360)

(assert (=> b!2186847 (= e!1397534 Nil!25276)))

(declare-fun d!655280 () Bool)

(declare-fun e!1397538 () Bool)

(assert (=> d!655280 e!1397538))

(declare-fun res!939647 () Bool)

(assert (=> d!655280 (=> (not res!939647) (not e!1397538))))

(declare-fun lt!816504 () List!25360)

(assert (=> d!655280 (= res!939647 (= ((_ map implies) (content!3451 lt!816504) (content!3451 lt!816109)) ((as const (InoxSet C!12244)) true)))))

(assert (=> d!655280 (= lt!816504 e!1397534)))

(declare-fun c!347750 () Bool)

(assert (=> d!655280 (= c!347750 ((_ is Nil!25276) lt!816109))))

(assert (=> d!655280 (= (drop!1267 lt!816109 lt!816114) lt!816504)))

(declare-fun b!2186848 () Bool)

(assert (=> b!2186848 (= e!1397536 (- call!131618 lt!816114))))

(declare-fun b!2186849 () Bool)

(assert (=> b!2186849 (= e!1397537 call!131618)))

(declare-fun b!2186850 () Bool)

(assert (=> b!2186850 (= e!1397538 (= (size!19751 lt!816504) e!1397537))))

(declare-fun c!347749 () Bool)

(assert (=> b!2186850 (= c!347749 (<= lt!816114 0))))

(declare-fun b!2186851 () Bool)

(assert (=> b!2186851 (= e!1397534 e!1397535)))

(declare-fun c!347751 () Bool)

(assert (=> b!2186851 (= c!347751 (<= lt!816114 0))))

(declare-fun bm!131613 () Bool)

(assert (=> bm!131613 (= call!131618 (size!19751 lt!816109))))

(assert (= (and d!655280 c!347750) b!2186847))

(assert (= (and d!655280 (not c!347750)) b!2186851))

(assert (= (and b!2186851 c!347751) b!2186845))

(assert (= (and b!2186851 (not c!347751)) b!2186843))

(assert (= (and d!655280 res!939647) b!2186850))

(assert (= (and b!2186850 c!347749) b!2186849))

(assert (= (and b!2186850 (not c!347749)) b!2186844))

(assert (= (and b!2186844 c!347748) b!2186846))

(assert (= (and b!2186844 (not c!347748)) b!2186848))

(assert (= (or b!2186849 b!2186844 b!2186848) bm!131613))

(declare-fun m!2629467 () Bool)

(assert (=> b!2186843 m!2629467))

(declare-fun m!2629469 () Bool)

(assert (=> d!655280 m!2629469))

(assert (=> d!655280 m!2629395))

(declare-fun m!2629471 () Bool)

(assert (=> b!2186850 m!2629471))

(assert (=> bm!131613 m!2629123))

(assert (=> b!2186174 d!655280))

(declare-fun e!1397541 () Bool)

(assert (=> b!2186169 (= tp!681801 e!1397541)))

(declare-fun b!2186865 () Bool)

(declare-fun tp!681873 () Bool)

(declare-fun tp!681872 () Bool)

(assert (=> b!2186865 (= e!1397541 (and tp!681873 tp!681872))))

(declare-fun b!2186863 () Bool)

(declare-fun tp!681874 () Bool)

(declare-fun tp!681876 () Bool)

(assert (=> b!2186863 (= e!1397541 (and tp!681874 tp!681876))))

(declare-fun b!2186862 () Bool)

(assert (=> b!2186862 (= e!1397541 tp_is_empty!9705)))

(declare-fun b!2186864 () Bool)

(declare-fun tp!681875 () Bool)

(assert (=> b!2186864 (= e!1397541 tp!681875)))

(assert (= (and b!2186169 ((_ is ElementMatch!6049) (reg!6378 r!12534))) b!2186862))

(assert (= (and b!2186169 ((_ is Concat!10351) (reg!6378 r!12534))) b!2186863))

(assert (= (and b!2186169 ((_ is Star!6049) (reg!6378 r!12534))) b!2186864))

(assert (= (and b!2186169 ((_ is Union!6049) (reg!6378 r!12534))) b!2186865))

(declare-fun e!1397542 () Bool)

(assert (=> b!2186170 (= tp!681795 e!1397542)))

(declare-fun b!2186869 () Bool)

(declare-fun tp!681878 () Bool)

(declare-fun tp!681877 () Bool)

(assert (=> b!2186869 (= e!1397542 (and tp!681878 tp!681877))))

(declare-fun b!2186867 () Bool)

(declare-fun tp!681879 () Bool)

(declare-fun tp!681881 () Bool)

(assert (=> b!2186867 (= e!1397542 (and tp!681879 tp!681881))))

(declare-fun b!2186866 () Bool)

(assert (=> b!2186866 (= e!1397542 tp_is_empty!9705)))

(declare-fun b!2186868 () Bool)

(declare-fun tp!681880 () Bool)

(assert (=> b!2186868 (= e!1397542 tp!681880)))

(assert (= (and b!2186170 ((_ is ElementMatch!6049) (regOne!12611 r!12534))) b!2186866))

(assert (= (and b!2186170 ((_ is Concat!10351) (regOne!12611 r!12534))) b!2186867))

(assert (= (and b!2186170 ((_ is Star!6049) (regOne!12611 r!12534))) b!2186868))

(assert (= (and b!2186170 ((_ is Union!6049) (regOne!12611 r!12534))) b!2186869))

(declare-fun e!1397543 () Bool)

(assert (=> b!2186170 (= tp!681796 e!1397543)))

(declare-fun b!2186873 () Bool)

(declare-fun tp!681883 () Bool)

(declare-fun tp!681882 () Bool)

(assert (=> b!2186873 (= e!1397543 (and tp!681883 tp!681882))))

(declare-fun b!2186871 () Bool)

(declare-fun tp!681884 () Bool)

(declare-fun tp!681886 () Bool)

(assert (=> b!2186871 (= e!1397543 (and tp!681884 tp!681886))))

(declare-fun b!2186870 () Bool)

(assert (=> b!2186870 (= e!1397543 tp_is_empty!9705)))

(declare-fun b!2186872 () Bool)

(declare-fun tp!681885 () Bool)

(assert (=> b!2186872 (= e!1397543 tp!681885)))

(assert (= (and b!2186170 ((_ is ElementMatch!6049) (regTwo!12611 r!12534))) b!2186870))

(assert (= (and b!2186170 ((_ is Concat!10351) (regTwo!12611 r!12534))) b!2186871))

(assert (= (and b!2186170 ((_ is Star!6049) (regTwo!12611 r!12534))) b!2186872))

(assert (= (and b!2186170 ((_ is Union!6049) (regTwo!12611 r!12534))) b!2186873))

(declare-fun condSetEmpty!18364 () Bool)

(assert (=> setNonEmpty!18358 (= condSetEmpty!18364 (= setRest!18358 ((as const (Array Context!3238 Bool)) false)))))

(declare-fun setRes!18364 () Bool)

(assert (=> setNonEmpty!18358 (= tp!681802 setRes!18364)))

(declare-fun setIsEmpty!18364 () Bool)

(assert (=> setIsEmpty!18364 setRes!18364))

(declare-fun tp!681891 () Bool)

(declare-fun setElem!18364 () Context!3238)

(declare-fun e!1397546 () Bool)

(declare-fun setNonEmpty!18364 () Bool)

(assert (=> setNonEmpty!18364 (= setRes!18364 (and tp!681891 (inv!33610 setElem!18364) e!1397546))))

(declare-fun setRest!18364 () (InoxSet Context!3238))

(assert (=> setNonEmpty!18364 (= setRest!18358 ((_ map or) (store ((as const (Array Context!3238 Bool)) false) setElem!18364 true) setRest!18364))))

(declare-fun b!2186878 () Bool)

(declare-fun tp!681892 () Bool)

(assert (=> b!2186878 (= e!1397546 tp!681892)))

(assert (= (and setNonEmpty!18358 condSetEmpty!18364) setIsEmpty!18364))

(assert (= (and setNonEmpty!18358 (not condSetEmpty!18364)) setNonEmpty!18364))

(assert (= setNonEmpty!18364 b!2186878))

(declare-fun m!2629473 () Bool)

(assert (=> setNonEmpty!18364 m!2629473))

(declare-fun tp!681899 () Bool)

(declare-fun tp!681901 () Bool)

(declare-fun b!2186887 () Bool)

(declare-fun e!1397551 () Bool)

(assert (=> b!2186887 (= e!1397551 (and (inv!33609 (left!19400 (c!347560 input!5540))) tp!681901 (inv!33609 (right!19730 (c!347560 input!5540))) tp!681899))))

(declare-fun b!2186889 () Bool)

(declare-fun e!1397552 () Bool)

(declare-fun tp!681900 () Bool)

(assert (=> b!2186889 (= e!1397552 tp!681900)))

(declare-fun b!2186888 () Bool)

(declare-fun inv!33617 (IArray!16375) Bool)

(assert (=> b!2186888 (= e!1397551 (and (inv!33617 (xs!11127 (c!347560 input!5540))) e!1397552))))

(assert (=> b!2186163 (= tp!681798 (and (inv!33609 (c!347560 input!5540)) e!1397551))))

(assert (= (and b!2186163 ((_ is Node!8185) (c!347560 input!5540))) b!2186887))

(assert (= b!2186888 b!2186889))

(assert (= (and b!2186163 ((_ is Leaf!11977) (c!347560 input!5540))) b!2186888))

(declare-fun m!2629475 () Bool)

(assert (=> b!2186887 m!2629475))

(declare-fun m!2629477 () Bool)

(assert (=> b!2186887 m!2629477))

(declare-fun m!2629479 () Bool)

(assert (=> b!2186888 m!2629479))

(assert (=> b!2186163 m!2628805))

(declare-fun b!2186894 () Bool)

(declare-fun e!1397555 () Bool)

(declare-fun tp!681906 () Bool)

(declare-fun tp!681907 () Bool)

(assert (=> b!2186894 (= e!1397555 (and tp!681906 tp!681907))))

(assert (=> b!2186173 (= tp!681797 e!1397555)))

(assert (= (and b!2186173 ((_ is Cons!25277) (exprs!2119 setElem!18358))) b!2186894))

(declare-fun e!1397556 () Bool)

(assert (=> b!2186168 (= tp!681799 e!1397556)))

(declare-fun b!2186898 () Bool)

(declare-fun tp!681909 () Bool)

(declare-fun tp!681908 () Bool)

(assert (=> b!2186898 (= e!1397556 (and tp!681909 tp!681908))))

(declare-fun b!2186896 () Bool)

(declare-fun tp!681910 () Bool)

(declare-fun tp!681912 () Bool)

(assert (=> b!2186896 (= e!1397556 (and tp!681910 tp!681912))))

(declare-fun b!2186895 () Bool)

(assert (=> b!2186895 (= e!1397556 tp_is_empty!9705)))

(declare-fun b!2186897 () Bool)

(declare-fun tp!681911 () Bool)

(assert (=> b!2186897 (= e!1397556 tp!681911)))

(assert (= (and b!2186168 ((_ is ElementMatch!6049) (regOne!12610 r!12534))) b!2186895))

(assert (= (and b!2186168 ((_ is Concat!10351) (regOne!12610 r!12534))) b!2186896))

(assert (= (and b!2186168 ((_ is Star!6049) (regOne!12610 r!12534))) b!2186897))

(assert (= (and b!2186168 ((_ is Union!6049) (regOne!12610 r!12534))) b!2186898))

(declare-fun e!1397557 () Bool)

(assert (=> b!2186168 (= tp!681800 e!1397557)))

(declare-fun b!2186902 () Bool)

(declare-fun tp!681914 () Bool)

(declare-fun tp!681913 () Bool)

(assert (=> b!2186902 (= e!1397557 (and tp!681914 tp!681913))))

(declare-fun b!2186900 () Bool)

(declare-fun tp!681915 () Bool)

(declare-fun tp!681917 () Bool)

(assert (=> b!2186900 (= e!1397557 (and tp!681915 tp!681917))))

(declare-fun b!2186899 () Bool)

(assert (=> b!2186899 (= e!1397557 tp_is_empty!9705)))

(declare-fun b!2186901 () Bool)

(declare-fun tp!681916 () Bool)

(assert (=> b!2186901 (= e!1397557 tp!681916)))

(assert (= (and b!2186168 ((_ is ElementMatch!6049) (regTwo!12610 r!12534))) b!2186899))

(assert (= (and b!2186168 ((_ is Concat!10351) (regTwo!12610 r!12534))) b!2186900))

(assert (= (and b!2186168 ((_ is Star!6049) (regTwo!12610 r!12534))) b!2186901))

(assert (= (and b!2186168 ((_ is Union!6049) (regTwo!12610 r!12534))) b!2186902))

(declare-fun b!2186903 () Bool)

(declare-fun e!1397558 () Bool)

(declare-fun tp!681918 () Bool)

(declare-fun tp!681920 () Bool)

(assert (=> b!2186903 (= e!1397558 (and (inv!33609 (left!19400 (c!347560 totalInput!977))) tp!681920 (inv!33609 (right!19730 (c!347560 totalInput!977))) tp!681918))))

(declare-fun b!2186905 () Bool)

(declare-fun e!1397559 () Bool)

(declare-fun tp!681919 () Bool)

(assert (=> b!2186905 (= e!1397559 tp!681919)))

(declare-fun b!2186904 () Bool)

(assert (=> b!2186904 (= e!1397558 (and (inv!33617 (xs!11127 (c!347560 totalInput!977))) e!1397559))))

(assert (=> b!2186179 (= tp!681794 (and (inv!33609 (c!347560 totalInput!977)) e!1397558))))

(assert (= (and b!2186179 ((_ is Node!8185) (c!347560 totalInput!977))) b!2186903))

(assert (= b!2186904 b!2186905))

(assert (= (and b!2186179 ((_ is Leaf!11977) (c!347560 totalInput!977))) b!2186904))

(declare-fun m!2629481 () Bool)

(assert (=> b!2186903 m!2629481))

(declare-fun m!2629483 () Bool)

(assert (=> b!2186903 m!2629483))

(declare-fun m!2629485 () Bool)

(assert (=> b!2186904 m!2629485))

(assert (=> b!2186179 m!2628737))

(check-sat (not b!2186500) (not d!655278) (not d!655264) (not d!655114) (not d!655186) (not b!2186820) (not b!2186492) (not d!655212) (not d!655104) tp_is_empty!9705 (not d!655268) (not bm!131604) (not b!2186888) (not b!2186902) (not b!2186578) (not d!655276) (not b!2186434) (not b!2186898) (not b!2186764) (not b!2186850) (not b!2186577) (not b!2186897) (not d!655172) (not bm!131608) (not d!655262) (not d!655274) (not b!2186799) (not d!655090) (not b!2186600) (not b!2186215) (not d!655204) (not d!655086) (not b!2186795) (not b!2186864) (not b!2186469) (not bm!131531) (not d!655106) (not b!2186179) (not b!2186436) (not d!655116) (not b!2186194) (not b!2186811) (not b!2186565) (not d!655112) (not b!2186869) (not d!655280) (not d!655096) (not d!655248) (not b!2186819) (not b!2186863) (not bm!131610) (not b!2186824) (not b!2186871) (not b!2186773) (not b!2186808) (not bm!131603) (not b!2186254) (not b!2186489) (not b!2186561) (not b!2186865) (not b!2186246) (not d!655184) (not d!655216) (not b!2186794) (not b!2186256) (not d!655094) (not b!2186264) (not bm!131574) (not b!2186248) (not b!2186817) (not b!2186778) (not d!655098) (not d!655158) (not b!2186477) (not b!2186468) (not d!655102) (not b!2186257) (not b!2186804) (not b!2186810) (not b!2186210) (not b!2186471) (not b!2186901) (not b!2186599) (not b!2186805) (not b!2186816) (not b!2186245) (not b!2186815) (not bm!131607) (not b!2186904) (not b!2186479) (not b!2186889) (not d!655272) (not b!2186480) (not bm!131606) (not b!2186803) (not d!655192) (not b!2186562) (not b!2186868) (not b!2186801) (not b!2186776) (not b!2186806) (not b!2186762) (not b!2186216) (not b!2186873) (not b!2186581) (not bm!131572) (not b!2186872) (not bm!131575) (not b!2186576) (not bm!131573) (not b!2186484) (not b!2186163) (not bm!131613) (not d!655108) (not b!2186498) (not bm!131605) (not b!2186843) (not b!2186580) (not d!655188) (not d!655190) (not d!655206) (not b!2186501) (not b!2186905) (not b!2186771) (not d!655100) (not b!2186582) (not b!2186490) (not b!2186900) (not setNonEmpty!18364) (not b!2186896) (not b!2186887) (not b!2186193) (not b!2186798) (not d!655182) (not b!2186823) (not bm!131528) (not d!655258) (not b!2186894) (not d!655254) (not b!2186867) (not b!2186462) (not d!655092) (not b!2186566) (not b!2186878) (not b!2186903) (not bm!131609))
(check-sat)
(get-model)

(assert (=> b!2186215 d!655264))

(declare-fun d!655316 () Bool)

(declare-fun c!347762 () Bool)

(assert (=> d!655316 (= c!347762 (isEmpty!14530 (take!257 (drop!1267 (list!9706 totalInput!977) lt!816114) lt!816351)))))

(declare-fun e!1397582 () Bool)

(assert (=> d!655316 (= (matchZipper!165 z!4055 (take!257 (drop!1267 (list!9706 totalInput!977) lt!816114) lt!816351)) e!1397582)))

(declare-fun b!2186943 () Bool)

(assert (=> b!2186943 (= e!1397582 (nullableZipper!329 z!4055))))

(declare-fun b!2186944 () Bool)

(assert (=> b!2186944 (= e!1397582 (matchZipper!165 (derivationStepZipper!142 z!4055 (head!4670 (take!257 (drop!1267 (list!9706 totalInput!977) lt!816114) lt!816351))) (tail!3142 (take!257 (drop!1267 (list!9706 totalInput!977) lt!816114) lt!816351))))))

(assert (= (and d!655316 c!347762) b!2186943))

(assert (= (and d!655316 (not c!347762)) b!2186944))

(assert (=> d!655316 m!2629209))

(declare-fun m!2629563 () Bool)

(assert (=> d!655316 m!2629563))

(assert (=> b!2186943 m!2628757))

(assert (=> b!2186944 m!2629209))

(declare-fun m!2629565 () Bool)

(assert (=> b!2186944 m!2629565))

(assert (=> b!2186944 m!2629565))

(declare-fun m!2629567 () Bool)

(assert (=> b!2186944 m!2629567))

(assert (=> b!2186944 m!2629209))

(declare-fun m!2629569 () Bool)

(assert (=> b!2186944 m!2629569))

(assert (=> b!2186944 m!2629567))

(assert (=> b!2186944 m!2629569))

(declare-fun m!2629571 () Bool)

(assert (=> b!2186944 m!2629571))

(assert (=> b!2186600 d!655316))

(declare-fun b!2186945 () Bool)

(declare-fun e!1397585 () Int)

(assert (=> b!2186945 (= e!1397585 0)))

(declare-fun e!1397583 () List!25360)

(declare-fun b!2186946 () Bool)

(assert (=> b!2186946 (= e!1397583 (Cons!25276 (h!30677 (drop!1267 (list!9706 totalInput!977) lt!816114)) (take!257 (t!197950 (drop!1267 (list!9706 totalInput!977) lt!816114)) (- lt!816351 1))))))

(declare-fun b!2186947 () Bool)

(declare-fun e!1397586 () Int)

(assert (=> b!2186947 (= e!1397585 e!1397586)))

(declare-fun c!347764 () Bool)

(assert (=> b!2186947 (= c!347764 (>= lt!816351 (size!19751 (drop!1267 (list!9706 totalInput!977) lt!816114))))))

(declare-fun b!2186948 () Bool)

(assert (=> b!2186948 (= e!1397583 Nil!25276)))

(declare-fun b!2186949 () Bool)

(assert (=> b!2186949 (= e!1397586 lt!816351)))

(declare-fun d!655318 () Bool)

(declare-fun e!1397584 () Bool)

(assert (=> d!655318 e!1397584))

(declare-fun res!939665 () Bool)

(assert (=> d!655318 (=> (not res!939665) (not e!1397584))))

(declare-fun lt!816523 () List!25360)

(assert (=> d!655318 (= res!939665 (= ((_ map implies) (content!3451 lt!816523) (content!3451 (drop!1267 (list!9706 totalInput!977) lt!816114))) ((as const (InoxSet C!12244)) true)))))

(assert (=> d!655318 (= lt!816523 e!1397583)))

(declare-fun c!347765 () Bool)

(assert (=> d!655318 (= c!347765 (or ((_ is Nil!25276) (drop!1267 (list!9706 totalInput!977) lt!816114)) (<= lt!816351 0)))))

(assert (=> d!655318 (= (take!257 (drop!1267 (list!9706 totalInput!977) lt!816114) lt!816351) lt!816523)))

(declare-fun b!2186950 () Bool)

(assert (=> b!2186950 (= e!1397586 (size!19751 (drop!1267 (list!9706 totalInput!977) lt!816114)))))

(declare-fun b!2186951 () Bool)

(assert (=> b!2186951 (= e!1397584 (= (size!19751 lt!816523) e!1397585))))

(declare-fun c!347763 () Bool)

(assert (=> b!2186951 (= c!347763 (<= lt!816351 0))))

(assert (= (and d!655318 c!347765) b!2186948))

(assert (= (and d!655318 (not c!347765)) b!2186946))

(assert (= (and d!655318 res!939665) b!2186951))

(assert (= (and b!2186951 c!347763) b!2186945))

(assert (= (and b!2186951 (not c!347763)) b!2186947))

(assert (= (and b!2186947 c!347764) b!2186950))

(assert (= (and b!2186947 (not c!347764)) b!2186949))

(declare-fun m!2629575 () Bool)

(assert (=> b!2186946 m!2629575))

(assert (=> b!2186950 m!2629207))

(declare-fun m!2629577 () Bool)

(assert (=> b!2186950 m!2629577))

(declare-fun m!2629579 () Bool)

(assert (=> b!2186951 m!2629579))

(assert (=> b!2186947 m!2629207))

(assert (=> b!2186947 m!2629577))

(declare-fun m!2629581 () Bool)

(assert (=> d!655318 m!2629581))

(assert (=> d!655318 m!2629207))

(declare-fun m!2629583 () Bool)

(assert (=> d!655318 m!2629583))

(assert (=> b!2186600 d!655318))

(declare-fun b!2186952 () Bool)

(declare-fun e!1397588 () List!25360)

(assert (=> b!2186952 (= e!1397588 (drop!1267 (t!197950 (list!9706 totalInput!977)) (- lt!816114 1)))))

(declare-fun b!2186953 () Bool)

(declare-fun e!1397590 () Int)

(declare-fun e!1397589 () Int)

(assert (=> b!2186953 (= e!1397590 e!1397589)))

(declare-fun c!347766 () Bool)

(declare-fun call!131622 () Int)

(assert (=> b!2186953 (= c!347766 (>= lt!816114 call!131622))))

(declare-fun b!2186954 () Bool)

(assert (=> b!2186954 (= e!1397588 (list!9706 totalInput!977))))

(declare-fun b!2186955 () Bool)

(assert (=> b!2186955 (= e!1397589 0)))

(declare-fun b!2186956 () Bool)

(declare-fun e!1397587 () List!25360)

(assert (=> b!2186956 (= e!1397587 Nil!25276)))

(declare-fun d!655322 () Bool)

(declare-fun e!1397591 () Bool)

(assert (=> d!655322 e!1397591))

(declare-fun res!939666 () Bool)

(assert (=> d!655322 (=> (not res!939666) (not e!1397591))))

(declare-fun lt!816524 () List!25360)

(assert (=> d!655322 (= res!939666 (= ((_ map implies) (content!3451 lt!816524) (content!3451 (list!9706 totalInput!977))) ((as const (InoxSet C!12244)) true)))))

(assert (=> d!655322 (= lt!816524 e!1397587)))

(declare-fun c!347768 () Bool)

(assert (=> d!655322 (= c!347768 ((_ is Nil!25276) (list!9706 totalInput!977)))))

(assert (=> d!655322 (= (drop!1267 (list!9706 totalInput!977) lt!816114) lt!816524)))

(declare-fun b!2186957 () Bool)

(assert (=> b!2186957 (= e!1397589 (- call!131622 lt!816114))))

(declare-fun b!2186958 () Bool)

(assert (=> b!2186958 (= e!1397590 call!131622)))

(declare-fun b!2186959 () Bool)

(assert (=> b!2186959 (= e!1397591 (= (size!19751 lt!816524) e!1397590))))

(declare-fun c!347767 () Bool)

(assert (=> b!2186959 (= c!347767 (<= lt!816114 0))))

(declare-fun b!2186960 () Bool)

(assert (=> b!2186960 (= e!1397587 e!1397588)))

(declare-fun c!347769 () Bool)

(assert (=> b!2186960 (= c!347769 (<= lt!816114 0))))

(declare-fun bm!131617 () Bool)

(assert (=> bm!131617 (= call!131622 (size!19751 (list!9706 totalInput!977)))))

(assert (= (and d!655322 c!347768) b!2186956))

(assert (= (and d!655322 (not c!347768)) b!2186960))

(assert (= (and b!2186960 c!347769) b!2186954))

(assert (= (and b!2186960 (not c!347769)) b!2186952))

(assert (= (and d!655322 res!939666) b!2186959))

(assert (= (and b!2186959 c!347767) b!2186958))

(assert (= (and b!2186959 (not c!347767)) b!2186953))

(assert (= (and b!2186953 c!347766) b!2186955))

(assert (= (and b!2186953 (not c!347766)) b!2186957))

(assert (= (or b!2186958 b!2186953 b!2186957) bm!131617))

(declare-fun m!2629585 () Bool)

(assert (=> b!2186952 m!2629585))

(declare-fun m!2629587 () Bool)

(assert (=> d!655322 m!2629587))

(assert (=> d!655322 m!2628809))

(declare-fun m!2629589 () Bool)

(assert (=> d!655322 m!2629589))

(declare-fun m!2629591 () Bool)

(assert (=> b!2186959 m!2629591))

(assert (=> bm!131617 m!2628809))

(assert (=> bm!131617 m!2628853))

(assert (=> b!2186600 d!655322))

(assert (=> b!2186600 d!655188))

(declare-fun e!1397593 () Bool)

(declare-fun b!2186964 () Bool)

(declare-fun lt!816525 () List!25360)

(assert (=> b!2186964 (= e!1397593 (or (not (= lt!816094 Nil!25276)) (= lt!816525 (t!197950 lt!816112))))))

(declare-fun b!2186961 () Bool)

(declare-fun e!1397592 () List!25360)

(assert (=> b!2186961 (= e!1397592 lt!816094)))

(declare-fun b!2186963 () Bool)

(declare-fun res!939668 () Bool)

(assert (=> b!2186963 (=> (not res!939668) (not e!1397593))))

(assert (=> b!2186963 (= res!939668 (= (size!19751 lt!816525) (+ (size!19751 (t!197950 lt!816112)) (size!19751 lt!816094))))))

(declare-fun b!2186962 () Bool)

(assert (=> b!2186962 (= e!1397592 (Cons!25276 (h!30677 (t!197950 lt!816112)) (++!6410 (t!197950 (t!197950 lt!816112)) lt!816094)))))

(declare-fun d!655324 () Bool)

(assert (=> d!655324 e!1397593))

(declare-fun res!939667 () Bool)

(assert (=> d!655324 (=> (not res!939667) (not e!1397593))))

(assert (=> d!655324 (= res!939667 (= (content!3451 lt!816525) ((_ map or) (content!3451 (t!197950 lt!816112)) (content!3451 lt!816094))))))

(assert (=> d!655324 (= lt!816525 e!1397592)))

(declare-fun c!347770 () Bool)

(assert (=> d!655324 (= c!347770 ((_ is Nil!25276) (t!197950 lt!816112)))))

(assert (=> d!655324 (= (++!6410 (t!197950 lt!816112) lt!816094) lt!816525)))

(assert (= (and d!655324 c!347770) b!2186961))

(assert (= (and d!655324 (not c!347770)) b!2186962))

(assert (= (and d!655324 res!939667) b!2186963))

(assert (= (and b!2186963 res!939668) b!2186964))

(declare-fun m!2629593 () Bool)

(assert (=> b!2186963 m!2629593))

(declare-fun m!2629595 () Bool)

(assert (=> b!2186963 m!2629595))

(assert (=> b!2186963 m!2628843))

(declare-fun m!2629597 () Bool)

(assert (=> b!2186962 m!2629597))

(declare-fun m!2629599 () Bool)

(assert (=> d!655324 m!2629599))

(declare-fun m!2629601 () Bool)

(assert (=> d!655324 m!2629601))

(assert (=> d!655324 m!2628851))

(assert (=> b!2186193 d!655324))

(declare-fun d!655326 () Bool)

(assert (=> d!655326 (= (isEmpty!14530 (tail!3142 (_1!14910 lt!816111))) ((_ is Nil!25276) (tail!3142 (_1!14910 lt!816111))))))

(assert (=> b!2186501 d!655326))

(declare-fun d!655328 () Bool)

(assert (=> d!655328 (= (tail!3142 (_1!14910 lt!816111)) (t!197950 (_1!14910 lt!816111)))))

(assert (=> b!2186501 d!655328))

(declare-fun d!655330 () Bool)

(assert (=> d!655330 (= lt!816118 Nil!25276)))

(declare-fun lt!816528 () Unit!38401)

(declare-fun choose!12950 (List!25360 List!25360 List!25360) Unit!38401)

(assert (=> d!655330 (= lt!816528 (choose!12950 lt!816118 Nil!25276 lt!816118))))

(assert (=> d!655330 (isPrefix!2165 lt!816118 lt!816118)))

(assert (=> d!655330 (= (lemmaIsPrefixSameLengthThenSameList!371 lt!816118 Nil!25276 lt!816118) lt!816528)))

(declare-fun bs!448167 () Bool)

(assert (= bs!448167 d!655330))

(declare-fun m!2629603 () Bool)

(assert (=> bs!448167 m!2629603))

(assert (=> bs!448167 m!2629353))

(assert (=> bm!131604 d!655330))

(declare-fun b!2186968 () Bool)

(declare-fun e!1397598 () List!25360)

(assert (=> b!2186968 (= e!1397598 (drop!1267 (t!197950 (t!197950 lt!816109)) (- (- lt!816114 1) 1)))))

(declare-fun b!2186969 () Bool)

(declare-fun e!1397600 () Int)

(declare-fun e!1397599 () Int)

(assert (=> b!2186969 (= e!1397600 e!1397599)))

(declare-fun c!347771 () Bool)

(declare-fun call!131623 () Int)

(assert (=> b!2186969 (= c!347771 (>= (- lt!816114 1) call!131623))))

(declare-fun b!2186970 () Bool)

(assert (=> b!2186970 (= e!1397598 (t!197950 lt!816109))))

(declare-fun b!2186971 () Bool)

(assert (=> b!2186971 (= e!1397599 0)))

(declare-fun b!2186972 () Bool)

(declare-fun e!1397597 () List!25360)

(assert (=> b!2186972 (= e!1397597 Nil!25276)))

(declare-fun d!655334 () Bool)

(declare-fun e!1397601 () Bool)

(assert (=> d!655334 e!1397601))

(declare-fun res!939672 () Bool)

(assert (=> d!655334 (=> (not res!939672) (not e!1397601))))

(declare-fun lt!816529 () List!25360)

(assert (=> d!655334 (= res!939672 (= ((_ map implies) (content!3451 lt!816529) (content!3451 (t!197950 lt!816109))) ((as const (InoxSet C!12244)) true)))))

(assert (=> d!655334 (= lt!816529 e!1397597)))

(declare-fun c!347773 () Bool)

(assert (=> d!655334 (= c!347773 ((_ is Nil!25276) (t!197950 lt!816109)))))

(assert (=> d!655334 (= (drop!1267 (t!197950 lt!816109) (- lt!816114 1)) lt!816529)))

(declare-fun b!2186973 () Bool)

(assert (=> b!2186973 (= e!1397599 (- call!131623 (- lt!816114 1)))))

(declare-fun b!2186974 () Bool)

(assert (=> b!2186974 (= e!1397600 call!131623)))

(declare-fun b!2186975 () Bool)

(assert (=> b!2186975 (= e!1397601 (= (size!19751 lt!816529) e!1397600))))

(declare-fun c!347772 () Bool)

(assert (=> b!2186975 (= c!347772 (<= (- lt!816114 1) 0))))

(declare-fun b!2186976 () Bool)

(assert (=> b!2186976 (= e!1397597 e!1397598)))

(declare-fun c!347774 () Bool)

(assert (=> b!2186976 (= c!347774 (<= (- lt!816114 1) 0))))

(declare-fun bm!131618 () Bool)

(assert (=> bm!131618 (= call!131623 (size!19751 (t!197950 lt!816109)))))

(assert (= (and d!655334 c!347773) b!2186972))

(assert (= (and d!655334 (not c!347773)) b!2186976))

(assert (= (and b!2186976 c!347774) b!2186970))

(assert (= (and b!2186976 (not c!347774)) b!2186968))

(assert (= (and d!655334 res!939672) b!2186975))

(assert (= (and b!2186975 c!347772) b!2186974))

(assert (= (and b!2186975 (not c!347772)) b!2186969))

(assert (= (and b!2186969 c!347771) b!2186971))

(assert (= (and b!2186969 (not c!347771)) b!2186973))

(assert (= (or b!2186974 b!2186969 b!2186973) bm!131618))

(declare-fun m!2629605 () Bool)

(assert (=> b!2186968 m!2629605))

(declare-fun m!2629607 () Bool)

(assert (=> d!655334 m!2629607))

(declare-fun m!2629609 () Bool)

(assert (=> d!655334 m!2629609))

(declare-fun m!2629611 () Bool)

(assert (=> b!2186975 m!2629611))

(declare-fun m!2629613 () Bool)

(assert (=> bm!131618 m!2629613))

(assert (=> b!2186843 d!655334))

(declare-fun d!655336 () Bool)

(declare-fun lt!816530 () Int)

(assert (=> d!655336 (>= lt!816530 0)))

(declare-fun e!1397602 () Int)

(assert (=> d!655336 (= lt!816530 e!1397602)))

(declare-fun c!347775 () Bool)

(assert (=> d!655336 (= c!347775 ((_ is Nil!25276) lt!816095))))

(assert (=> d!655336 (= (size!19751 lt!816095) lt!816530)))

(declare-fun b!2186977 () Bool)

(assert (=> b!2186977 (= e!1397602 0)))

(declare-fun b!2186978 () Bool)

(assert (=> b!2186978 (= e!1397602 (+ 1 (size!19751 (t!197950 lt!816095))))))

(assert (= (and d!655336 c!347775) b!2186977))

(assert (= (and d!655336 (not c!347775)) b!2186978))

(declare-fun m!2629615 () Bool)

(assert (=> b!2186978 m!2629615))

(assert (=> b!2186582 d!655336))

(assert (=> b!2186582 d!655110))

(declare-fun d!655338 () Bool)

(declare-fun c!347778 () Bool)

(assert (=> d!655338 (= c!347778 ((_ is Nil!25276) lt!816504))))

(declare-fun e!1397605 () (InoxSet C!12244))

(assert (=> d!655338 (= (content!3451 lt!816504) e!1397605)))

(declare-fun b!2186983 () Bool)

(assert (=> b!2186983 (= e!1397605 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2186984 () Bool)

(assert (=> b!2186984 (= e!1397605 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 lt!816504) true) (content!3451 (t!197950 lt!816504))))))

(assert (= (and d!655338 c!347778) b!2186983))

(assert (= (and d!655338 (not c!347778)) b!2186984))

(declare-fun m!2629617 () Bool)

(assert (=> b!2186984 m!2629617))

(declare-fun m!2629619 () Bool)

(assert (=> b!2186984 m!2629619))

(assert (=> d!655280 d!655338))

(declare-fun d!655340 () Bool)

(declare-fun c!347779 () Bool)

(assert (=> d!655340 (= c!347779 ((_ is Nil!25276) lt!816109))))

(declare-fun e!1397606 () (InoxSet C!12244))

(assert (=> d!655340 (= (content!3451 lt!816109) e!1397606)))

(declare-fun b!2186985 () Bool)

(assert (=> b!2186985 (= e!1397606 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2186986 () Bool)

(assert (=> b!2186986 (= e!1397606 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 lt!816109) true) (content!3451 (t!197950 lt!816109))))))

(assert (= (and d!655340 c!347779) b!2186985))

(assert (= (and d!655340 (not c!347779)) b!2186986))

(declare-fun m!2629621 () Bool)

(assert (=> b!2186986 m!2629621))

(assert (=> b!2186986 m!2629609))

(assert (=> d!655280 d!655340))

(assert (=> bm!131574 d!655270))

(declare-fun b!2186987 () Bool)

(declare-fun e!1397608 () List!25360)

(assert (=> b!2186987 (= e!1397608 (drop!1267 (t!197950 lt!816109) (- (- (size!19751 lt!816109) (size!19751 lt!816118)) 1)))))

(declare-fun b!2186988 () Bool)

(declare-fun e!1397610 () Int)

(declare-fun e!1397609 () Int)

(assert (=> b!2186988 (= e!1397610 e!1397609)))

(declare-fun call!131624 () Int)

(declare-fun c!347780 () Bool)

(assert (=> b!2186988 (= c!347780 (>= (- (size!19751 lt!816109) (size!19751 lt!816118)) call!131624))))

(declare-fun b!2186989 () Bool)

(assert (=> b!2186989 (= e!1397608 lt!816109)))

(declare-fun b!2186990 () Bool)

(assert (=> b!2186990 (= e!1397609 0)))

(declare-fun b!2186991 () Bool)

(declare-fun e!1397607 () List!25360)

(assert (=> b!2186991 (= e!1397607 Nil!25276)))

(declare-fun d!655342 () Bool)

(declare-fun e!1397611 () Bool)

(assert (=> d!655342 e!1397611))

(declare-fun res!939673 () Bool)

(assert (=> d!655342 (=> (not res!939673) (not e!1397611))))

(declare-fun lt!816531 () List!25360)

(assert (=> d!655342 (= res!939673 (= ((_ map implies) (content!3451 lt!816531) (content!3451 lt!816109)) ((as const (InoxSet C!12244)) true)))))

(assert (=> d!655342 (= lt!816531 e!1397607)))

(declare-fun c!347782 () Bool)

(assert (=> d!655342 (= c!347782 ((_ is Nil!25276) lt!816109))))

(assert (=> d!655342 (= (drop!1267 lt!816109 (- (size!19751 lt!816109) (size!19751 lt!816118))) lt!816531)))

(declare-fun b!2186992 () Bool)

(assert (=> b!2186992 (= e!1397609 (- call!131624 (- (size!19751 lt!816109) (size!19751 lt!816118))))))

(declare-fun b!2186993 () Bool)

(assert (=> b!2186993 (= e!1397610 call!131624)))

(declare-fun b!2186994 () Bool)

(assert (=> b!2186994 (= e!1397611 (= (size!19751 lt!816531) e!1397610))))

(declare-fun c!347781 () Bool)

(assert (=> b!2186994 (= c!347781 (<= (- (size!19751 lt!816109) (size!19751 lt!816118)) 0))))

(declare-fun b!2186995 () Bool)

(assert (=> b!2186995 (= e!1397607 e!1397608)))

(declare-fun c!347783 () Bool)

(assert (=> b!2186995 (= c!347783 (<= (- (size!19751 lt!816109) (size!19751 lt!816118)) 0))))

(declare-fun bm!131619 () Bool)

(assert (=> bm!131619 (= call!131624 (size!19751 lt!816109))))

(assert (= (and d!655342 c!347782) b!2186991))

(assert (= (and d!655342 (not c!347782)) b!2186995))

(assert (= (and b!2186995 c!347783) b!2186989))

(assert (= (and b!2186995 (not c!347783)) b!2186987))

(assert (= (and d!655342 res!939673) b!2186994))

(assert (= (and b!2186994 c!347781) b!2186993))

(assert (= (and b!2186994 (not c!347781)) b!2186988))

(assert (= (and b!2186988 c!347780) b!2186990))

(assert (= (and b!2186988 (not c!347780)) b!2186992))

(assert (= (or b!2186993 b!2186988 b!2186992) bm!131619))

(declare-fun m!2629623 () Bool)

(assert (=> b!2186987 m!2629623))

(declare-fun m!2629625 () Bool)

(assert (=> d!655342 m!2629625))

(assert (=> d!655342 m!2629395))

(declare-fun m!2629627 () Bool)

(assert (=> b!2186994 m!2629627))

(assert (=> bm!131619 m!2629123))

(assert (=> d!655186 d!655342))

(declare-fun d!655344 () Bool)

(declare-fun lt!816532 () Int)

(assert (=> d!655344 (>= lt!816532 0)))

(declare-fun e!1397612 () Int)

(assert (=> d!655344 (= lt!816532 e!1397612)))

(declare-fun c!347784 () Bool)

(assert (=> d!655344 (= c!347784 ((_ is Nil!25276) lt!816109))))

(assert (=> d!655344 (= (size!19751 lt!816109) lt!816532)))

(declare-fun b!2186996 () Bool)

(assert (=> b!2186996 (= e!1397612 0)))

(declare-fun b!2186997 () Bool)

(assert (=> b!2186997 (= e!1397612 (+ 1 (size!19751 (t!197950 lt!816109))))))

(assert (= (and d!655344 c!347784) b!2186996))

(assert (= (and d!655344 (not c!347784)) b!2186997))

(assert (=> b!2186997 m!2629613))

(assert (=> d!655186 d!655344))

(assert (=> d!655186 d!655250))

(declare-fun d!655346 () Bool)

(declare-fun res!939680 () Bool)

(declare-fun e!1397615 () Bool)

(assert (=> d!655346 (=> (not res!939680) (not e!1397615))))

(assert (=> d!655346 (= res!939680 (= (csize!16600 (c!347560 totalInput!977)) (+ (size!19752 (left!19400 (c!347560 totalInput!977))) (size!19752 (right!19730 (c!347560 totalInput!977))))))))

(assert (=> d!655346 (= (inv!33612 (c!347560 totalInput!977)) e!1397615)))

(declare-fun b!2187004 () Bool)

(declare-fun res!939681 () Bool)

(assert (=> b!2187004 (=> (not res!939681) (not e!1397615))))

(assert (=> b!2187004 (= res!939681 (and (not (= (left!19400 (c!347560 totalInput!977)) Empty!8185)) (not (= (right!19730 (c!347560 totalInput!977)) Empty!8185))))))

(declare-fun b!2187005 () Bool)

(declare-fun res!939682 () Bool)

(assert (=> b!2187005 (=> (not res!939682) (not e!1397615))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1246 (Conc!8185) Int)

(assert (=> b!2187005 (= res!939682 (= (cheight!8396 (c!347560 totalInput!977)) (+ (max!0 (height!1246 (left!19400 (c!347560 totalInput!977))) (height!1246 (right!19730 (c!347560 totalInput!977)))) 1)))))

(declare-fun b!2187006 () Bool)

(assert (=> b!2187006 (= e!1397615 (<= 0 (cheight!8396 (c!347560 totalInput!977))))))

(assert (= (and d!655346 res!939680) b!2187004))

(assert (= (and b!2187004 res!939681) b!2187005))

(assert (= (and b!2187005 res!939682) b!2187006))

(declare-fun m!2629629 () Bool)

(assert (=> d!655346 m!2629629))

(declare-fun m!2629631 () Bool)

(assert (=> d!655346 m!2629631))

(declare-fun m!2629633 () Bool)

(assert (=> b!2187005 m!2629633))

(declare-fun m!2629635 () Bool)

(assert (=> b!2187005 m!2629635))

(assert (=> b!2187005 m!2629633))

(assert (=> b!2187005 m!2629635))

(declare-fun m!2629637 () Bool)

(assert (=> b!2187005 m!2629637))

(assert (=> b!2186434 d!655346))

(declare-fun d!655352 () Bool)

(declare-fun res!939687 () Bool)

(declare-fun e!1397620 () Bool)

(assert (=> d!655352 (=> res!939687 e!1397620)))

(assert (=> d!655352 (= res!939687 ((_ is Nil!25277) (exprs!2119 setElem!18358)))))

(assert (=> d!655352 (= (forall!5191 (exprs!2119 setElem!18358) lambda!82100) e!1397620)))

(declare-fun b!2187011 () Bool)

(declare-fun e!1397621 () Bool)

(assert (=> b!2187011 (= e!1397620 e!1397621)))

(declare-fun res!939688 () Bool)

(assert (=> b!2187011 (=> (not res!939688) (not e!1397621))))

(declare-fun dynLambda!11438 (Int Regex!6049) Bool)

(assert (=> b!2187011 (= res!939688 (dynLambda!11438 lambda!82100 (h!30678 (exprs!2119 setElem!18358))))))

(declare-fun b!2187012 () Bool)

(assert (=> b!2187012 (= e!1397621 (forall!5191 (t!197951 (exprs!2119 setElem!18358)) lambda!82100))))

(assert (= (and d!655352 (not res!939687)) b!2187011))

(assert (= (and b!2187011 res!939688) b!2187012))

(declare-fun b_lambda!71141 () Bool)

(assert (=> (not b_lambda!71141) (not b!2187011)))

(declare-fun m!2629639 () Bool)

(assert (=> b!2187011 m!2629639))

(declare-fun m!2629641 () Bool)

(assert (=> b!2187012 m!2629641))

(assert (=> d!655116 d!655352))

(declare-fun d!655354 () Bool)

(assert (=> d!655354 (= (head!4670 (_1!14910 lt!816111)) (h!30677 (_1!14910 lt!816111)))))

(assert (=> b!2186492 d!655354))

(declare-fun b!2187013 () Bool)

(declare-fun e!1397624 () Int)

(assert (=> b!2187013 (= e!1397624 0)))

(declare-fun b!2187014 () Bool)

(declare-fun e!1397622 () List!25360)

(assert (=> b!2187014 (= e!1397622 (Cons!25276 (h!30677 (t!197950 (drop!1267 lt!816109 lt!816114))) (take!257 (t!197950 (t!197950 (drop!1267 lt!816109 lt!816114))) (- (- lt!816105 1) 1))))))

(declare-fun b!2187015 () Bool)

(declare-fun e!1397625 () Int)

(assert (=> b!2187015 (= e!1397624 e!1397625)))

(declare-fun c!347786 () Bool)

(assert (=> b!2187015 (= c!347786 (>= (- lt!816105 1) (size!19751 (t!197950 (drop!1267 lt!816109 lt!816114)))))))

(declare-fun b!2187016 () Bool)

(assert (=> b!2187016 (= e!1397622 Nil!25276)))

(declare-fun b!2187017 () Bool)

(assert (=> b!2187017 (= e!1397625 (- lt!816105 1))))

(declare-fun d!655356 () Bool)

(declare-fun e!1397623 () Bool)

(assert (=> d!655356 e!1397623))

(declare-fun res!939689 () Bool)

(assert (=> d!655356 (=> (not res!939689) (not e!1397623))))

(declare-fun lt!816533 () List!25360)

(assert (=> d!655356 (= res!939689 (= ((_ map implies) (content!3451 lt!816533) (content!3451 (t!197950 (drop!1267 lt!816109 lt!816114)))) ((as const (InoxSet C!12244)) true)))))

(assert (=> d!655356 (= lt!816533 e!1397622)))

(declare-fun c!347787 () Bool)

(assert (=> d!655356 (= c!347787 (or ((_ is Nil!25276) (t!197950 (drop!1267 lt!816109 lt!816114))) (<= (- lt!816105 1) 0)))))

(assert (=> d!655356 (= (take!257 (t!197950 (drop!1267 lt!816109 lt!816114)) (- lt!816105 1)) lt!816533)))

(declare-fun b!2187018 () Bool)

(assert (=> b!2187018 (= e!1397625 (size!19751 (t!197950 (drop!1267 lt!816109 lt!816114))))))

(declare-fun b!2187019 () Bool)

(assert (=> b!2187019 (= e!1397623 (= (size!19751 lt!816533) e!1397624))))

(declare-fun c!347785 () Bool)

(assert (=> b!2187019 (= c!347785 (<= (- lt!816105 1) 0))))

(assert (= (and d!655356 c!347787) b!2187016))

(assert (= (and d!655356 (not c!347787)) b!2187014))

(assert (= (and d!655356 res!939689) b!2187019))

(assert (= (and b!2187019 c!347785) b!2187013))

(assert (= (and b!2187019 (not c!347785)) b!2187015))

(assert (= (and b!2187015 c!347786) b!2187018))

(assert (= (and b!2187015 (not c!347786)) b!2187017))

(declare-fun m!2629643 () Bool)

(assert (=> b!2187014 m!2629643))

(declare-fun m!2629645 () Bool)

(assert (=> b!2187018 m!2629645))

(declare-fun m!2629647 () Bool)

(assert (=> b!2187019 m!2629647))

(assert (=> b!2187015 m!2629645))

(declare-fun m!2629649 () Bool)

(assert (=> d!655356 m!2629649))

(declare-fun m!2629651 () Bool)

(assert (=> d!655356 m!2629651))

(assert (=> b!2186819 d!655356))

(declare-fun b!2187020 () Bool)

(declare-fun e!1397628 () Int)

(assert (=> b!2187020 (= e!1397628 0)))

(declare-fun b!2187021 () Bool)

(declare-fun e!1397626 () List!25360)

(assert (=> b!2187021 (= e!1397626 (Cons!25276 (h!30677 (t!197950 lt!816109)) (take!257 (t!197950 (t!197950 lt!816109)) (- (- lt!816114 1) 1))))))

(declare-fun b!2187022 () Bool)

(declare-fun e!1397629 () Int)

(assert (=> b!2187022 (= e!1397628 e!1397629)))

(declare-fun c!347789 () Bool)

(assert (=> b!2187022 (= c!347789 (>= (- lt!816114 1) (size!19751 (t!197950 lt!816109))))))

(declare-fun b!2187023 () Bool)

(assert (=> b!2187023 (= e!1397626 Nil!25276)))

(declare-fun b!2187024 () Bool)

(assert (=> b!2187024 (= e!1397629 (- lt!816114 1))))

(declare-fun d!655358 () Bool)

(declare-fun e!1397627 () Bool)

(assert (=> d!655358 e!1397627))

(declare-fun res!939690 () Bool)

(assert (=> d!655358 (=> (not res!939690) (not e!1397627))))

(declare-fun lt!816534 () List!25360)

(assert (=> d!655358 (= res!939690 (= ((_ map implies) (content!3451 lt!816534) (content!3451 (t!197950 lt!816109))) ((as const (InoxSet C!12244)) true)))))

(assert (=> d!655358 (= lt!816534 e!1397626)))

(declare-fun c!347790 () Bool)

(assert (=> d!655358 (= c!347790 (or ((_ is Nil!25276) (t!197950 lt!816109)) (<= (- lt!816114 1) 0)))))

(assert (=> d!655358 (= (take!257 (t!197950 lt!816109) (- lt!816114 1)) lt!816534)))

(declare-fun b!2187025 () Bool)

(assert (=> b!2187025 (= e!1397629 (size!19751 (t!197950 lt!816109)))))

(declare-fun b!2187026 () Bool)

(assert (=> b!2187026 (= e!1397627 (= (size!19751 lt!816534) e!1397628))))

(declare-fun c!347788 () Bool)

(assert (=> b!2187026 (= c!347788 (<= (- lt!816114 1) 0))))

(assert (= (and d!655358 c!347790) b!2187023))

(assert (= (and d!655358 (not c!347790)) b!2187021))

(assert (= (and d!655358 res!939690) b!2187026))

(assert (= (and b!2187026 c!347788) b!2187020))

(assert (= (and b!2187026 (not c!347788)) b!2187022))

(assert (= (and b!2187022 c!347789) b!2187025))

(assert (= (and b!2187022 (not c!347789)) b!2187024))

(declare-fun m!2629653 () Bool)

(assert (=> b!2187021 m!2629653))

(assert (=> b!2187025 m!2629613))

(declare-fun m!2629655 () Bool)

(assert (=> b!2187026 m!2629655))

(assert (=> b!2187022 m!2629613))

(declare-fun m!2629657 () Bool)

(assert (=> d!655358 m!2629657))

(assert (=> d!655358 m!2629609))

(assert (=> b!2186794 d!655358))

(declare-fun d!655360 () Bool)

(assert (=> d!655360 (= (head!4670 (take!257 lt!816109 lt!816114)) (h!30677 (take!257 lt!816109 lt!816114)))))

(assert (=> b!2186803 d!655360))

(declare-fun d!655362 () Bool)

(assert (=> d!655362 (= (head!4670 lt!816109) (h!30677 lt!816109))))

(assert (=> b!2186803 d!655362))

(declare-fun d!655364 () Bool)

(declare-fun nullableFct!395 (Regex!6049) Bool)

(assert (=> d!655364 (= (nullable!1713 r!12534) (nullableFct!395 r!12534))))

(declare-fun bs!448169 () Bool)

(assert (= bs!448169 d!655364))

(declare-fun m!2629659 () Bool)

(assert (=> bs!448169 m!2629659))

(assert (=> b!2186489 d!655364))

(assert (=> d!655192 d!655252))

(assert (=> d!655192 d!655168))

(declare-fun b!2187027 () Bool)

(declare-fun e!1397633 () Bool)

(declare-fun e!1397631 () Bool)

(assert (=> b!2187027 (= e!1397633 e!1397631)))

(declare-fun res!939695 () Bool)

(assert (=> b!2187027 (=> (not res!939695) (not e!1397631))))

(declare-fun call!131626 () Bool)

(assert (=> b!2187027 (= res!939695 call!131626)))

(declare-fun b!2187028 () Bool)

(declare-fun e!1397630 () Bool)

(assert (=> b!2187028 (= e!1397630 call!131626)))

(declare-fun b!2187029 () Bool)

(declare-fun e!1397632 () Bool)

(declare-fun e!1397634 () Bool)

(assert (=> b!2187029 (= e!1397632 e!1397634)))

(declare-fun c!347792 () Bool)

(assert (=> b!2187029 (= c!347792 ((_ is Star!6049) lt!816497))))

(declare-fun bm!131620 () Bool)

(declare-fun call!131625 () Bool)

(declare-fun call!131627 () Bool)

(assert (=> bm!131620 (= call!131625 call!131627)))

(declare-fun b!2187030 () Bool)

(declare-fun e!1397636 () Bool)

(assert (=> b!2187030 (= e!1397636 call!131627)))

(declare-fun bm!131621 () Bool)

(declare-fun c!347791 () Bool)

(assert (=> bm!131621 (= call!131626 (validRegex!2325 (ite c!347791 (regTwo!12611 lt!816497) (regOne!12610 lt!816497))))))

(declare-fun bm!131622 () Bool)

(assert (=> bm!131622 (= call!131627 (validRegex!2325 (ite c!347792 (reg!6378 lt!816497) (ite c!347791 (regOne!12611 lt!816497) (regTwo!12610 lt!816497)))))))

(declare-fun d!655366 () Bool)

(declare-fun res!939693 () Bool)

(assert (=> d!655366 (=> res!939693 e!1397632)))

(assert (=> d!655366 (= res!939693 ((_ is ElementMatch!6049) lt!816497))))

(assert (=> d!655366 (= (validRegex!2325 lt!816497) e!1397632)))

(declare-fun b!2187031 () Bool)

(declare-fun res!939692 () Bool)

(assert (=> b!2187031 (=> res!939692 e!1397633)))

(assert (=> b!2187031 (= res!939692 (not ((_ is Concat!10351) lt!816497)))))

(declare-fun e!1397635 () Bool)

(assert (=> b!2187031 (= e!1397635 e!1397633)))

(declare-fun b!2187032 () Bool)

(declare-fun res!939694 () Bool)

(assert (=> b!2187032 (=> (not res!939694) (not e!1397630))))

(assert (=> b!2187032 (= res!939694 call!131625)))

(assert (=> b!2187032 (= e!1397635 e!1397630)))

(declare-fun b!2187033 () Bool)

(assert (=> b!2187033 (= e!1397634 e!1397635)))

(assert (=> b!2187033 (= c!347791 ((_ is Union!6049) lt!816497))))

(declare-fun b!2187034 () Bool)

(assert (=> b!2187034 (= e!1397634 e!1397636)))

(declare-fun res!939691 () Bool)

(assert (=> b!2187034 (= res!939691 (not (nullable!1713 (reg!6378 lt!816497))))))

(assert (=> b!2187034 (=> (not res!939691) (not e!1397636))))

(declare-fun b!2187035 () Bool)

(assert (=> b!2187035 (= e!1397631 call!131625)))

(assert (= (and d!655366 (not res!939693)) b!2187029))

(assert (= (and b!2187029 c!347792) b!2187034))

(assert (= (and b!2187029 (not c!347792)) b!2187033))

(assert (= (and b!2187034 res!939691) b!2187030))

(assert (= (and b!2187033 c!347791) b!2187032))

(assert (= (and b!2187033 (not c!347791)) b!2187031))

(assert (= (and b!2187032 res!939694) b!2187028))

(assert (= (and b!2187031 (not res!939692)) b!2187027))

(assert (= (and b!2187027 res!939695) b!2187035))

(assert (= (or b!2187028 b!2187027) bm!131621))

(assert (= (or b!2187032 b!2187035) bm!131620))

(assert (= (or b!2187030 bm!131620) bm!131622))

(declare-fun m!2629661 () Bool)

(assert (=> bm!131621 m!2629661))

(declare-fun m!2629663 () Bool)

(assert (=> bm!131622 m!2629663))

(declare-fun m!2629665 () Bool)

(assert (=> b!2187034 m!2629665))

(assert (=> d!655272 d!655366))

(declare-fun bs!448170 () Bool)

(declare-fun d!655368 () Bool)

(assert (= bs!448170 (and d!655368 d!655116)))

(declare-fun lambda!82106 () Int)

(assert (=> bs!448170 (= lambda!82106 lambda!82100)))

(declare-fun b!2187056 () Bool)

(declare-fun e!1397654 () Regex!6049)

(declare-fun e!1397653 () Regex!6049)

(assert (=> b!2187056 (= e!1397654 e!1397653)))

(declare-fun c!347801 () Bool)

(assert (=> b!2187056 (= c!347801 ((_ is Cons!25277) (unfocusZipperList!53 lt!816108)))))

(declare-fun b!2187057 () Bool)

(assert (=> b!2187057 (= e!1397653 (Union!6049 (h!30678 (unfocusZipperList!53 lt!816108)) (generalisedUnion!529 (t!197951 (unfocusZipperList!53 lt!816108)))))))

(declare-fun b!2187058 () Bool)

(declare-fun e!1397652 () Bool)

(declare-fun lt!816537 () Regex!6049)

(declare-fun isUnion!144 (Regex!6049) Bool)

(assert (=> b!2187058 (= e!1397652 (isUnion!144 lt!816537))))

(declare-fun b!2187059 () Bool)

(declare-fun head!4671 (List!25361) Regex!6049)

(assert (=> b!2187059 (= e!1397652 (= lt!816537 (head!4671 (unfocusZipperList!53 lt!816108))))))

(declare-fun b!2187061 () Bool)

(declare-fun e!1397651 () Bool)

(declare-fun isEmptyLang!144 (Regex!6049) Bool)

(assert (=> b!2187061 (= e!1397651 (isEmptyLang!144 lt!816537))))

(declare-fun b!2187062 () Bool)

(assert (=> b!2187062 (= e!1397653 EmptyLang!6049)))

(declare-fun b!2187063 () Bool)

(assert (=> b!2187063 (= e!1397651 e!1397652)))

(declare-fun c!347804 () Bool)

(declare-fun isEmpty!14533 (List!25361) Bool)

(declare-fun tail!3143 (List!25361) List!25361)

(assert (=> b!2187063 (= c!347804 (isEmpty!14533 (tail!3143 (unfocusZipperList!53 lt!816108))))))

(declare-fun b!2187064 () Bool)

(declare-fun e!1397650 () Bool)

(assert (=> b!2187064 (= e!1397650 (isEmpty!14533 (t!197951 (unfocusZipperList!53 lt!816108))))))

(declare-fun b!2187065 () Bool)

(declare-fun e!1397649 () Bool)

(assert (=> b!2187065 (= e!1397649 e!1397651)))

(declare-fun c!347803 () Bool)

(assert (=> b!2187065 (= c!347803 (isEmpty!14533 (unfocusZipperList!53 lt!816108)))))

(declare-fun b!2187060 () Bool)

(assert (=> b!2187060 (= e!1397654 (h!30678 (unfocusZipperList!53 lt!816108)))))

(assert (=> d!655368 e!1397649))

(declare-fun res!939701 () Bool)

(assert (=> d!655368 (=> (not res!939701) (not e!1397649))))

(assert (=> d!655368 (= res!939701 (validRegex!2325 lt!816537))))

(assert (=> d!655368 (= lt!816537 e!1397654)))

(declare-fun c!347802 () Bool)

(assert (=> d!655368 (= c!347802 e!1397650)))

(declare-fun res!939700 () Bool)

(assert (=> d!655368 (=> (not res!939700) (not e!1397650))))

(assert (=> d!655368 (= res!939700 ((_ is Cons!25277) (unfocusZipperList!53 lt!816108)))))

(assert (=> d!655368 (forall!5191 (unfocusZipperList!53 lt!816108) lambda!82106)))

(assert (=> d!655368 (= (generalisedUnion!529 (unfocusZipperList!53 lt!816108)) lt!816537)))

(assert (= (and d!655368 res!939700) b!2187064))

(assert (= (and d!655368 c!347802) b!2187060))

(assert (= (and d!655368 (not c!347802)) b!2187056))

(assert (= (and b!2187056 c!347801) b!2187057))

(assert (= (and b!2187056 (not c!347801)) b!2187062))

(assert (= (and d!655368 res!939701) b!2187065))

(assert (= (and b!2187065 c!347803) b!2187061))

(assert (= (and b!2187065 (not c!347803)) b!2187063))

(assert (= (and b!2187063 c!347804) b!2187059))

(assert (= (and b!2187063 (not c!347804)) b!2187058))

(declare-fun m!2629667 () Bool)

(assert (=> b!2187057 m!2629667))

(declare-fun m!2629669 () Bool)

(assert (=> d!655368 m!2629669))

(assert (=> d!655368 m!2629437))

(declare-fun m!2629671 () Bool)

(assert (=> d!655368 m!2629671))

(declare-fun m!2629673 () Bool)

(assert (=> b!2187058 m!2629673))

(assert (=> b!2187063 m!2629437))

(declare-fun m!2629675 () Bool)

(assert (=> b!2187063 m!2629675))

(assert (=> b!2187063 m!2629675))

(declare-fun m!2629677 () Bool)

(assert (=> b!2187063 m!2629677))

(assert (=> b!2187059 m!2629437))

(declare-fun m!2629679 () Bool)

(assert (=> b!2187059 m!2629679))

(assert (=> b!2187065 m!2629437))

(declare-fun m!2629681 () Bool)

(assert (=> b!2187065 m!2629681))

(declare-fun m!2629683 () Bool)

(assert (=> b!2187061 m!2629683))

(declare-fun m!2629685 () Bool)

(assert (=> b!2187064 m!2629685))

(assert (=> d!655272 d!655368))

(declare-fun bs!448171 () Bool)

(declare-fun d!655370 () Bool)

(assert (= bs!448171 (and d!655370 d!655116)))

(declare-fun lambda!82109 () Int)

(assert (=> bs!448171 (= lambda!82109 lambda!82100)))

(declare-fun bs!448172 () Bool)

(assert (= bs!448172 (and d!655370 d!655368)))

(assert (=> bs!448172 (= lambda!82109 lambda!82106)))

(declare-fun lt!816546 () List!25361)

(assert (=> d!655370 (forall!5191 lt!816546 lambda!82109)))

(declare-fun e!1397664 () List!25361)

(assert (=> d!655370 (= lt!816546 e!1397664)))

(declare-fun c!347811 () Bool)

(assert (=> d!655370 (= c!347811 ((_ is Cons!25278) lt!816108))))

(assert (=> d!655370 (= (unfocusZipperList!53 lt!816108) lt!816546)))

(declare-fun b!2187084 () Bool)

(declare-fun generalisedConcat!9 (List!25361) Regex!6049)

(assert (=> b!2187084 (= e!1397664 (Cons!25277 (generalisedConcat!9 (exprs!2119 (h!30679 lt!816108))) (unfocusZipperList!53 (t!197952 lt!816108))))))

(declare-fun b!2187085 () Bool)

(assert (=> b!2187085 (= e!1397664 Nil!25277)))

(assert (= (and d!655370 c!347811) b!2187084))

(assert (= (and d!655370 (not c!347811)) b!2187085))

(declare-fun m!2629699 () Bool)

(assert (=> d!655370 m!2629699))

(declare-fun m!2629703 () Bool)

(assert (=> b!2187084 m!2629703))

(declare-fun m!2629707 () Bool)

(assert (=> b!2187084 m!2629707))

(assert (=> d!655272 d!655370))

(declare-fun d!655374 () Bool)

(assert (=> d!655374 (= (isEmpty!14530 (tail!3142 (_1!14910 lt!816097))) ((_ is Nil!25276) (tail!3142 (_1!14910 lt!816097))))))

(assert (=> b!2186480 d!655374))

(declare-fun d!655378 () Bool)

(assert (=> d!655378 (= (tail!3142 (_1!14910 lt!816097)) (t!197950 (_1!14910 lt!816097)))))

(assert (=> b!2186480 d!655378))

(declare-fun d!655380 () Bool)

(declare-fun res!939708 () Bool)

(declare-fun e!1397667 () Bool)

(assert (=> d!655380 (=> (not res!939708) (not e!1397667))))

(assert (=> d!655380 (= res!939708 (= (csize!16600 (c!347560 input!5540)) (+ (size!19752 (left!19400 (c!347560 input!5540))) (size!19752 (right!19730 (c!347560 input!5540))))))))

(assert (=> d!655380 (= (inv!33612 (c!347560 input!5540)) e!1397667)))

(declare-fun b!2187090 () Bool)

(declare-fun res!939709 () Bool)

(assert (=> b!2187090 (=> (not res!939709) (not e!1397667))))

(assert (=> b!2187090 (= res!939709 (and (not (= (left!19400 (c!347560 input!5540)) Empty!8185)) (not (= (right!19730 (c!347560 input!5540)) Empty!8185))))))

(declare-fun b!2187091 () Bool)

(declare-fun res!939710 () Bool)

(assert (=> b!2187091 (=> (not res!939710) (not e!1397667))))

(assert (=> b!2187091 (= res!939710 (= (cheight!8396 (c!347560 input!5540)) (+ (max!0 (height!1246 (left!19400 (c!347560 input!5540))) (height!1246 (right!19730 (c!347560 input!5540)))) 1)))))

(declare-fun b!2187092 () Bool)

(assert (=> b!2187092 (= e!1397667 (<= 0 (cheight!8396 (c!347560 input!5540))))))

(assert (= (and d!655380 res!939708) b!2187090))

(assert (= (and b!2187090 res!939709) b!2187091))

(assert (= (and b!2187091 res!939710) b!2187092))

(declare-fun m!2629713 () Bool)

(assert (=> d!655380 m!2629713))

(declare-fun m!2629715 () Bool)

(assert (=> d!655380 m!2629715))

(declare-fun m!2629717 () Bool)

(assert (=> b!2187091 m!2629717))

(declare-fun m!2629719 () Bool)

(assert (=> b!2187091 m!2629719))

(assert (=> b!2187091 m!2629717))

(assert (=> b!2187091 m!2629719))

(declare-fun m!2629721 () Bool)

(assert (=> b!2187091 m!2629721))

(assert (=> b!2186806 d!655380))

(declare-fun d!655382 () Bool)

(declare-fun lt!816547 () Int)

(assert (=> d!655382 (>= lt!816547 0)))

(declare-fun e!1397668 () Int)

(assert (=> d!655382 (= lt!816547 e!1397668)))

(declare-fun c!347814 () Bool)

(assert (=> d!655382 (= c!347814 ((_ is Nil!25276) (drop!1267 lt!816109 lt!816114)))))

(assert (=> d!655382 (= (size!19751 (drop!1267 lt!816109 lt!816114)) lt!816547)))

(declare-fun b!2187093 () Bool)

(assert (=> b!2187093 (= e!1397668 0)))

(declare-fun b!2187094 () Bool)

(assert (=> b!2187094 (= e!1397668 (+ 1 (size!19751 (t!197950 (drop!1267 lt!816109 lt!816114)))))))

(assert (= (and d!655382 c!347814) b!2187093))

(assert (= (and d!655382 (not c!347814)) b!2187094))

(assert (=> b!2187094 m!2629645))

(assert (=> b!2186823 d!655382))

(declare-fun d!655386 () Bool)

(declare-fun c!347816 () Bool)

(assert (=> d!655386 (= c!347816 ((_ is Node!8185) (left!19400 (c!347560 input!5540))))))

(declare-fun e!1397670 () Bool)

(assert (=> d!655386 (= (inv!33609 (left!19400 (c!347560 input!5540))) e!1397670)))

(declare-fun b!2187097 () Bool)

(assert (=> b!2187097 (= e!1397670 (inv!33612 (left!19400 (c!347560 input!5540))))))

(declare-fun b!2187098 () Bool)

(declare-fun e!1397671 () Bool)

(assert (=> b!2187098 (= e!1397670 e!1397671)))

(declare-fun res!939711 () Bool)

(assert (=> b!2187098 (= res!939711 (not ((_ is Leaf!11977) (left!19400 (c!347560 input!5540)))))))

(assert (=> b!2187098 (=> res!939711 e!1397671)))

(declare-fun b!2187099 () Bool)

(assert (=> b!2187099 (= e!1397671 (inv!33613 (left!19400 (c!347560 input!5540))))))

(assert (= (and d!655386 c!347816) b!2187097))

(assert (= (and d!655386 (not c!347816)) b!2187098))

(assert (= (and b!2187098 (not res!939711)) b!2187099))

(declare-fun m!2629727 () Bool)

(assert (=> b!2187097 m!2629727))

(declare-fun m!2629731 () Bool)

(assert (=> b!2187099 m!2629731))

(assert (=> b!2186887 d!655386))

(declare-fun d!655392 () Bool)

(declare-fun c!347818 () Bool)

(assert (=> d!655392 (= c!347818 ((_ is Node!8185) (right!19730 (c!347560 input!5540))))))

(declare-fun e!1397673 () Bool)

(assert (=> d!655392 (= (inv!33609 (right!19730 (c!347560 input!5540))) e!1397673)))

(declare-fun b!2187102 () Bool)

(assert (=> b!2187102 (= e!1397673 (inv!33612 (right!19730 (c!347560 input!5540))))))

(declare-fun b!2187103 () Bool)

(declare-fun e!1397674 () Bool)

(assert (=> b!2187103 (= e!1397673 e!1397674)))

(declare-fun res!939712 () Bool)

(assert (=> b!2187103 (= res!939712 (not ((_ is Leaf!11977) (right!19730 (c!347560 input!5540)))))))

(assert (=> b!2187103 (=> res!939712 e!1397674)))

(declare-fun b!2187104 () Bool)

(assert (=> b!2187104 (= e!1397674 (inv!33613 (right!19730 (c!347560 input!5540))))))

(assert (= (and d!655392 c!347818) b!2187102))

(assert (= (and d!655392 (not c!347818)) b!2187103))

(assert (= (and b!2187103 (not res!939712)) b!2187104))

(declare-fun m!2629733 () Bool)

(assert (=> b!2187102 m!2629733))

(declare-fun m!2629735 () Bool)

(assert (=> b!2187104 m!2629735))

(assert (=> b!2186887 d!655392))

(declare-fun d!655394 () Bool)

(declare-fun e!1397693 () Bool)

(assert (=> d!655394 e!1397693))

(declare-fun res!939737 () Bool)

(assert (=> d!655394 (=> (not res!939737) (not e!1397693))))

(declare-fun lt!816560 () tuple2!25078)

(assert (=> d!655394 (= res!939737 (isBalanced!2546 (c!347560 (_1!14909 lt!816560))))))

(declare-datatypes ((tuple2!25084 0))(
  ( (tuple2!25085 (_1!14912 Conc!8185) (_2!14912 Conc!8185)) )
))
(declare-fun lt!816559 () tuple2!25084)

(assert (=> d!655394 (= lt!816560 (tuple2!25079 (BalanceConc!16133 (_1!14912 lt!816559)) (BalanceConc!16133 (_2!14912 lt!816559))))))

(declare-fun splitAt!59 (Conc!8185 Int) tuple2!25084)

(assert (=> d!655394 (= lt!816559 (splitAt!59 (c!347560 input!5540) (ite c!347569 0 lt!816163)))))

(assert (=> d!655394 (isBalanced!2546 (c!347560 input!5540))))

(assert (=> d!655394 (= (splitAt!56 input!5540 (ite c!347569 0 lt!816163)) lt!816560)))

(declare-fun b!2187139 () Bool)

(declare-fun res!939738 () Bool)

(assert (=> b!2187139 (=> (not res!939738) (not e!1397693))))

(assert (=> b!2187139 (= res!939738 (isBalanced!2546 (c!347560 (_2!14909 lt!816560))))))

(declare-fun b!2187140 () Bool)

(declare-fun splitAtIndex!32 (List!25360 Int) tuple2!25080)

(assert (=> b!2187140 (= e!1397693 (= (tuple2!25081 (list!9706 (_1!14909 lt!816560)) (list!9706 (_2!14909 lt!816560))) (splitAtIndex!32 (list!9706 input!5540) (ite c!347569 0 lt!816163))))))

(assert (= (and d!655394 res!939737) b!2187139))

(assert (= (and b!2187139 res!939738) b!2187140))

(declare-fun m!2629779 () Bool)

(assert (=> d!655394 m!2629779))

(declare-fun m!2629781 () Bool)

(assert (=> d!655394 m!2629781))

(assert (=> d!655394 m!2629115))

(declare-fun m!2629783 () Bool)

(assert (=> b!2187139 m!2629783))

(declare-fun m!2629785 () Bool)

(assert (=> b!2187140 m!2629785))

(declare-fun m!2629787 () Bool)

(assert (=> b!2187140 m!2629787))

(assert (=> b!2187140 m!2628811))

(assert (=> b!2187140 m!2628811))

(declare-fun m!2629789 () Bool)

(assert (=> b!2187140 m!2629789))

(assert (=> bm!131528 d!655394))

(assert (=> b!2186798 d!655344))

(declare-fun d!655418 () Bool)

(declare-fun e!1397706 () Bool)

(assert (=> d!655418 e!1397706))

(declare-fun res!939747 () Bool)

(assert (=> d!655418 (=> res!939747 e!1397706)))

(assert (=> d!655418 (= res!939747 (= lt!816112 (_1!14910 lt!816097)))))

(assert (=> d!655418 true))

(declare-fun _$93!55 () Unit!38401)

(assert (=> d!655418 (= (choose!12938 r!12534 lt!816118 (_1!14910 lt!816097) lt!816112) _$93!55)))

(declare-fun b!2187161 () Bool)

(assert (=> b!2187161 (= e!1397706 (not (matchR!2798 r!12534 lt!816112)))))

(assert (= (and d!655418 (not res!939747)) b!2187161))

(assert (=> b!2187161 m!2628789))

(assert (=> d!655102 d!655418))

(assert (=> d!655102 d!655168))

(declare-fun b!2187171 () Bool)

(declare-fun e!1397711 () Bool)

(declare-fun lt!816562 () List!25360)

(assert (=> b!2187171 (= e!1397711 (or (not (= lt!816118 Nil!25276)) (= lt!816562 Nil!25276)))))

(declare-fun b!2187166 () Bool)

(declare-fun e!1397709 () List!25360)

(assert (=> b!2187166 (= e!1397709 lt!816118)))

(declare-fun b!2187170 () Bool)

(declare-fun res!939749 () Bool)

(assert (=> b!2187170 (=> (not res!939749) (not e!1397711))))

(assert (=> b!2187170 (= res!939749 (= (size!19751 lt!816562) (+ (size!19751 Nil!25276) (size!19751 lt!816118))))))

(declare-fun b!2187168 () Bool)

(assert (=> b!2187168 (= e!1397709 (Cons!25276 (h!30677 Nil!25276) (++!6410 (t!197950 Nil!25276) lt!816118)))))

(declare-fun d!655430 () Bool)

(assert (=> d!655430 e!1397711))

(declare-fun res!939748 () Bool)

(assert (=> d!655430 (=> (not res!939748) (not e!1397711))))

(assert (=> d!655430 (= res!939748 (= (content!3451 lt!816562) ((_ map or) (content!3451 Nil!25276) (content!3451 lt!816118))))))

(assert (=> d!655430 (= lt!816562 e!1397709)))

(declare-fun c!347832 () Bool)

(assert (=> d!655430 (= c!347832 ((_ is Nil!25276) Nil!25276))))

(assert (=> d!655430 (= (++!6410 Nil!25276 lt!816118) lt!816562)))

(assert (= (and d!655430 c!347832) b!2187166))

(assert (= (and d!655430 (not c!347832)) b!2187168))

(assert (= (and d!655430 res!939748) b!2187170))

(assert (= (and b!2187170 res!939749) b!2187171))

(declare-fun m!2629833 () Bool)

(assert (=> b!2187170 m!2629833))

(assert (=> b!2187170 m!2628759))

(assert (=> b!2187170 m!2628761))

(declare-fun m!2629837 () Bool)

(assert (=> b!2187168 m!2629837))

(declare-fun m!2629839 () Bool)

(assert (=> d!655430 m!2629839))

(declare-fun m!2629841 () Bool)

(assert (=> d!655430 m!2629841))

(declare-fun m!2629843 () Bool)

(assert (=> d!655430 m!2629843))

(assert (=> d!655216 d!655430))

(declare-fun d!655436 () Bool)

(declare-fun lostCauseFct!208 (Regex!6049) Bool)

(assert (=> d!655436 (= (lostCause!685 r!12534) (lostCauseFct!208 r!12534))))

(declare-fun bs!448177 () Bool)

(assert (= bs!448177 d!655436))

(declare-fun m!2629845 () Bool)

(assert (=> bs!448177 m!2629845))

(assert (=> d!655216 d!655436))

(declare-fun d!655438 () Bool)

(assert (=> d!655438 (= lt!816118 lt!816477)))

(declare-fun lt!816565 () Unit!38401)

(declare-fun choose!12951 (List!25360 List!25360 List!25360 List!25360 List!25360) Unit!38401)

(assert (=> d!655438 (= lt!816565 (choose!12951 Nil!25276 lt!816118 Nil!25276 lt!816477 lt!816118))))

(assert (=> d!655438 (isPrefix!2165 Nil!25276 lt!816118)))

(assert (=> d!655438 (= (lemmaSamePrefixThenSameSuffix!972 Nil!25276 lt!816118 Nil!25276 lt!816477 lt!816118) lt!816565)))

(declare-fun bs!448178 () Bool)

(assert (= bs!448178 d!655438))

(declare-fun m!2629851 () Bool)

(assert (=> bs!448178 m!2629851))

(declare-fun m!2629853 () Bool)

(assert (=> bs!448178 m!2629853))

(assert (=> d!655216 d!655438))

(declare-fun d!655442 () Bool)

(assert (=> d!655442 (isPrefix!2165 Nil!25276 (++!6410 Nil!25276 lt!816118))))

(declare-fun lt!816566 () Unit!38401)

(assert (=> d!655442 (= lt!816566 (choose!12941 Nil!25276 lt!816118))))

(assert (=> d!655442 (= (lemmaConcatTwoListThenFirstIsPrefix!1448 Nil!25276 lt!816118) lt!816566)))

(declare-fun bs!448179 () Bool)

(assert (= bs!448179 d!655442))

(assert (=> bs!448179 m!2629337))

(assert (=> bs!448179 m!2629337))

(assert (=> bs!448179 m!2629339))

(declare-fun m!2629855 () Bool)

(assert (=> bs!448179 m!2629855))

(assert (=> d!655216 d!655442))

(declare-fun d!655444 () Bool)

(declare-fun lt!816572 () List!25360)

(assert (=> d!655444 (= (++!6410 Nil!25276 lt!816572) lt!816118)))

(declare-fun e!1397725 () List!25360)

(assert (=> d!655444 (= lt!816572 e!1397725)))

(declare-fun c!347841 () Bool)

(assert (=> d!655444 (= c!347841 ((_ is Cons!25276) Nil!25276))))

(assert (=> d!655444 (>= (size!19751 lt!816118) (size!19751 Nil!25276))))

(assert (=> d!655444 (= (getSuffix!1050 lt!816118 Nil!25276) lt!816572)))

(declare-fun b!2187192 () Bool)

(assert (=> b!2187192 (= e!1397725 (getSuffix!1050 (tail!3142 lt!816118) (t!197950 Nil!25276)))))

(declare-fun b!2187193 () Bool)

(assert (=> b!2187193 (= e!1397725 lt!816118)))

(assert (= (and d!655444 c!347841) b!2187192))

(assert (= (and d!655444 (not c!347841)) b!2187193))

(declare-fun m!2629863 () Bool)

(assert (=> d!655444 m!2629863))

(assert (=> d!655444 m!2628761))

(assert (=> d!655444 m!2628759))

(assert (=> b!2187192 m!2629359))

(assert (=> b!2187192 m!2629359))

(declare-fun m!2629867 () Bool)

(assert (=> b!2187192 m!2629867))

(assert (=> d!655216 d!655444))

(assert (=> d!655216 d!655168))

(declare-fun d!655454 () Bool)

(declare-fun e!1397730 () Bool)

(assert (=> d!655454 e!1397730))

(declare-fun res!939758 () Bool)

(assert (=> d!655454 (=> res!939758 e!1397730)))

(declare-fun lt!816574 () Bool)

(assert (=> d!655454 (= res!939758 (not lt!816574))))

(declare-fun e!1397729 () Bool)

(assert (=> d!655454 (= lt!816574 e!1397729)))

(declare-fun res!939759 () Bool)

(assert (=> d!655454 (=> res!939759 e!1397729)))

(assert (=> d!655454 (= res!939759 ((_ is Nil!25276) Nil!25276))))

(assert (=> d!655454 (= (isPrefix!2165 Nil!25276 (++!6410 Nil!25276 lt!816118)) lt!816574)))

(declare-fun b!2187203 () Bool)

(assert (=> b!2187203 (= e!1397730 (>= (size!19751 (++!6410 Nil!25276 lt!816118)) (size!19751 Nil!25276)))))

(declare-fun b!2187202 () Bool)

(declare-fun e!1397731 () Bool)

(assert (=> b!2187202 (= e!1397731 (isPrefix!2165 (tail!3142 Nil!25276) (tail!3142 (++!6410 Nil!25276 lt!816118))))))

(declare-fun b!2187200 () Bool)

(assert (=> b!2187200 (= e!1397729 e!1397731)))

(declare-fun res!939761 () Bool)

(assert (=> b!2187200 (=> (not res!939761) (not e!1397731))))

(assert (=> b!2187200 (= res!939761 (not ((_ is Nil!25276) (++!6410 Nil!25276 lt!816118))))))

(declare-fun b!2187201 () Bool)

(declare-fun res!939760 () Bool)

(assert (=> b!2187201 (=> (not res!939760) (not e!1397731))))

(assert (=> b!2187201 (= res!939760 (= (head!4670 Nil!25276) (head!4670 (++!6410 Nil!25276 lt!816118))))))

(assert (= (and d!655454 (not res!939759)) b!2187200))

(assert (= (and b!2187200 res!939761) b!2187201))

(assert (= (and b!2187201 res!939760) b!2187202))

(assert (= (and d!655454 (not res!939758)) b!2187203))

(assert (=> b!2187203 m!2629337))

(declare-fun m!2629879 () Bool)

(assert (=> b!2187203 m!2629879))

(assert (=> b!2187203 m!2628759))

(declare-fun m!2629885 () Bool)

(assert (=> b!2187202 m!2629885))

(assert (=> b!2187202 m!2629337))

(declare-fun m!2629887 () Bool)

(assert (=> b!2187202 m!2629887))

(assert (=> b!2187202 m!2629885))

(assert (=> b!2187202 m!2629887))

(declare-fun m!2629889 () Bool)

(assert (=> b!2187202 m!2629889))

(declare-fun m!2629891 () Bool)

(assert (=> b!2187201 m!2629891))

(assert (=> b!2187201 m!2629337))

(declare-fun m!2629893 () Bool)

(assert (=> b!2187201 m!2629893))

(assert (=> d!655216 d!655454))

(declare-fun b!2187209 () Bool)

(declare-fun e!1397734 () Bool)

(declare-fun lt!816575 () List!25360)

(assert (=> b!2187209 (= e!1397734 (or (not (= (_2!14910 lt!816466) Nil!25276)) (= lt!816575 (_1!14910 lt!816466))))))

(declare-fun b!2187206 () Bool)

(declare-fun e!1397733 () List!25360)

(assert (=> b!2187206 (= e!1397733 (_2!14910 lt!816466))))

(declare-fun b!2187208 () Bool)

(declare-fun res!939763 () Bool)

(assert (=> b!2187208 (=> (not res!939763) (not e!1397734))))

(assert (=> b!2187208 (= res!939763 (= (size!19751 lt!816575) (+ (size!19751 (_1!14910 lt!816466)) (size!19751 (_2!14910 lt!816466)))))))

(declare-fun b!2187207 () Bool)

(assert (=> b!2187207 (= e!1397733 (Cons!25276 (h!30677 (_1!14910 lt!816466)) (++!6410 (t!197950 (_1!14910 lt!816466)) (_2!14910 lt!816466))))))

(declare-fun d!655458 () Bool)

(assert (=> d!655458 e!1397734))

(declare-fun res!939762 () Bool)

(assert (=> d!655458 (=> (not res!939762) (not e!1397734))))

(assert (=> d!655458 (= res!939762 (= (content!3451 lt!816575) ((_ map or) (content!3451 (_1!14910 lt!816466)) (content!3451 (_2!14910 lt!816466)))))))

(assert (=> d!655458 (= lt!816575 e!1397733)))

(declare-fun c!347845 () Bool)

(assert (=> d!655458 (= c!347845 ((_ is Nil!25276) (_1!14910 lt!816466)))))

(assert (=> d!655458 (= (++!6410 (_1!14910 lt!816466) (_2!14910 lt!816466)) lt!816575)))

(assert (= (and d!655458 c!347845) b!2187206))

(assert (= (and d!655458 (not c!347845)) b!2187207))

(assert (= (and d!655458 res!939762) b!2187208))

(assert (= (and b!2187208 res!939763) b!2187209))

(declare-fun m!2629897 () Bool)

(assert (=> b!2187208 m!2629897))

(assert (=> b!2187208 m!2629333))

(declare-fun m!2629899 () Bool)

(assert (=> b!2187208 m!2629899))

(declare-fun m!2629901 () Bool)

(assert (=> b!2187207 m!2629901))

(declare-fun m!2629903 () Bool)

(assert (=> d!655458 m!2629903))

(declare-fun m!2629905 () Bool)

(assert (=> d!655458 m!2629905))

(declare-fun m!2629907 () Bool)

(assert (=> d!655458 m!2629907))

(assert (=> d!655216 d!655458))

(declare-fun d!655462 () Bool)

(assert (=> d!655462 (isPrefix!2165 lt!816118 lt!816118)))

(declare-fun lt!816606 () Unit!38401)

(declare-fun choose!12953 (List!25360 List!25360) Unit!38401)

(assert (=> d!655462 (= lt!816606 (choose!12953 lt!816118 lt!816118))))

(assert (=> d!655462 (= (lemmaIsPrefixRefl!1425 lt!816118 lt!816118) lt!816606)))

(declare-fun bs!448181 () Bool)

(assert (= bs!448181 d!655462))

(assert (=> bs!448181 m!2629353))

(declare-fun m!2629909 () Bool)

(assert (=> bs!448181 m!2629909))

(assert (=> bm!131610 d!655462))

(declare-fun d!655464 () Bool)

(declare-fun lt!816607 () Int)

(assert (=> d!655464 (>= lt!816607 0)))

(declare-fun e!1397743 () Int)

(assert (=> d!655464 (= lt!816607 e!1397743)))

(declare-fun c!347852 () Bool)

(assert (=> d!655464 (= c!347852 ((_ is Nil!25276) lt!816494))))

(assert (=> d!655464 (= (size!19751 lt!816494) lt!816607)))

(declare-fun b!2187224 () Bool)

(assert (=> b!2187224 (= e!1397743 0)))

(declare-fun b!2187225 () Bool)

(assert (=> b!2187225 (= e!1397743 (+ 1 (size!19751 (t!197950 lt!816494))))))

(assert (= (and d!655464 c!347852) b!2187224))

(assert (= (and d!655464 (not c!347852)) b!2187225))

(declare-fun m!2629911 () Bool)

(assert (=> b!2187225 m!2629911))

(assert (=> b!2186811 d!655464))

(assert (=> b!2186811 d!655110))

(declare-fun d!655466 () Bool)

(declare-fun lt!816608 () Int)

(assert (=> d!655466 (>= lt!816608 0)))

(declare-fun e!1397744 () Int)

(assert (=> d!655466 (= lt!816608 e!1397744)))

(declare-fun c!347853 () Bool)

(assert (=> d!655466 (= c!347853 ((_ is Nil!25276) (_2!14910 lt!816097)))))

(assert (=> d!655466 (= (size!19751 (_2!14910 lt!816097)) lt!816608)))

(declare-fun b!2187226 () Bool)

(assert (=> b!2187226 (= e!1397744 0)))

(declare-fun b!2187227 () Bool)

(assert (=> b!2187227 (= e!1397744 (+ 1 (size!19751 (t!197950 (_2!14910 lt!816097)))))))

(assert (= (and d!655466 c!347853) b!2187226))

(assert (= (and d!655466 (not c!347853)) b!2187227))

(declare-fun m!2629913 () Bool)

(assert (=> b!2187227 m!2629913))

(assert (=> b!2186811 d!655466))

(declare-fun b!2187228 () Bool)

(declare-fun e!1397745 () Int)

(assert (=> b!2187228 (= e!1397745 (+ lt!816114 1))))

(declare-fun b!2187229 () Bool)

(declare-fun lt!816610 () (InoxSet Context!3238))

(declare-fun e!1397747 () Int)

(assert (=> b!2187229 (= e!1397747 (furthestNullablePosition!231 lt!816610 (+ lt!816114 1 1) totalInput!977 lt!816120 e!1397745))))

(assert (=> b!2187229 (= lt!816610 (derivationStepZipper!142 lt!816327 (apply!6094 totalInput!977 (+ lt!816114 1))))))

(declare-fun c!347855 () Bool)

(assert (=> b!2187229 (= c!347855 (nullableZipper!329 lt!816610))))

(declare-fun d!655468 () Bool)

(declare-fun lt!816609 () Int)

(assert (=> d!655468 (and (>= lt!816609 (- 1)) (< lt!816609 lt!816120) (>= lt!816609 e!1397375) (or (= lt!816609 e!1397375) (>= lt!816609 (+ lt!816114 1))))))

(assert (=> d!655468 (= lt!816609 e!1397747)))

(declare-fun c!347854 () Bool)

(declare-fun e!1397746 () Bool)

(assert (=> d!655468 (= c!347854 e!1397746)))

(declare-fun res!939766 () Bool)

(assert (=> d!655468 (=> res!939766 e!1397746)))

(assert (=> d!655468 (= res!939766 (= (+ lt!816114 1) lt!816120))))

(assert (=> d!655468 (and (>= (+ lt!816114 1) 0) (<= (+ lt!816114 1) lt!816120))))

(assert (=> d!655468 (= (furthestNullablePosition!231 lt!816327 (+ lt!816114 1) totalInput!977 lt!816120 e!1397375) lt!816609)))

(declare-fun b!2187230 () Bool)

(assert (=> b!2187230 (= e!1397746 (lostCauseZipper!175 lt!816327))))

(declare-fun b!2187231 () Bool)

(assert (=> b!2187231 (= e!1397745 e!1397375)))

(declare-fun b!2187232 () Bool)

(assert (=> b!2187232 (= e!1397747 e!1397375)))

(assert (= (and d!655468 (not res!939766)) b!2187230))

(assert (= (and d!655468 c!347854) b!2187232))

(assert (= (and d!655468 (not c!347854)) b!2187229))

(assert (= (and b!2187229 c!347855) b!2187228))

(assert (= (and b!2187229 (not c!347855)) b!2187231))

(declare-fun m!2629923 () Bool)

(assert (=> b!2187229 m!2629923))

(declare-fun m!2629925 () Bool)

(assert (=> b!2187229 m!2629925))

(assert (=> b!2187229 m!2629925))

(declare-fun m!2629927 () Bool)

(assert (=> b!2187229 m!2629927))

(declare-fun m!2629929 () Bool)

(assert (=> b!2187229 m!2629929))

(declare-fun m!2629931 () Bool)

(assert (=> b!2187230 m!2629931))

(assert (=> b!2186561 d!655468))

(declare-fun d!655470 () Bool)

(assert (=> d!655470 true))

(declare-fun lambda!82112 () Int)

(declare-fun flatMap!137 ((InoxSet Context!3238) Int) (InoxSet Context!3238))

(assert (=> d!655470 (= (derivationStepZipper!142 z!4055 (apply!6094 totalInput!977 lt!816114)) (flatMap!137 z!4055 lambda!82112))))

(declare-fun bs!448183 () Bool)

(assert (= bs!448183 d!655470))

(declare-fun m!2629957 () Bool)

(assert (=> bs!448183 m!2629957))

(assert (=> b!2186561 d!655470))

(declare-fun d!655484 () Bool)

(declare-fun lt!816620 () C!12244)

(declare-fun apply!6095 (List!25360 Int) C!12244)

(assert (=> d!655484 (= lt!816620 (apply!6095 (list!9706 totalInput!977) lt!816114))))

(declare-fun apply!6096 (Conc!8185 Int) C!12244)

(assert (=> d!655484 (= lt!816620 (apply!6096 (c!347560 totalInput!977) lt!816114))))

(declare-fun e!1397769 () Bool)

(assert (=> d!655484 e!1397769))

(declare-fun res!939780 () Bool)

(assert (=> d!655484 (=> (not res!939780) (not e!1397769))))

(assert (=> d!655484 (= res!939780 (<= 0 lt!816114))))

(assert (=> d!655484 (= (apply!6094 totalInput!977 lt!816114) lt!816620)))

(declare-fun b!2187272 () Bool)

(assert (=> b!2187272 (= e!1397769 (< lt!816114 (size!19750 totalInput!977)))))

(assert (= (and d!655484 res!939780) b!2187272))

(assert (=> d!655484 m!2628809))

(assert (=> d!655484 m!2628809))

(declare-fun m!2629989 () Bool)

(assert (=> d!655484 m!2629989))

(declare-fun m!2629991 () Bool)

(assert (=> d!655484 m!2629991))

(assert (=> b!2187272 m!2628723))

(assert (=> b!2186561 d!655484))

(declare-fun bs!448186 () Bool)

(declare-fun d!655498 () Bool)

(assert (= bs!448186 (and d!655498 d!655264)))

(declare-fun lambda!82113 () Int)

(assert (=> bs!448186 (= lambda!82113 lambda!82103)))

(assert (=> d!655498 (= (nullableZipper!329 lt!816327) (exists!780 lt!816327 lambda!82113))))

(declare-fun bs!448187 () Bool)

(assert (= bs!448187 d!655498))

(declare-fun m!2629993 () Bool)

(assert (=> bs!448187 m!2629993))

(assert (=> b!2186561 d!655498))

(declare-fun d!655500 () Bool)

(declare-fun lt!816621 () Int)

(assert (=> d!655500 (>= lt!816621 0)))

(declare-fun e!1397770 () Int)

(assert (=> d!655500 (= lt!816621 e!1397770)))

(declare-fun c!347870 () Bool)

(assert (=> d!655500 (= c!347870 ((_ is Nil!25276) (_1!14910 lt!816466)))))

(assert (=> d!655500 (= (size!19751 (_1!14910 lt!816466)) lt!816621)))

(declare-fun b!2187273 () Bool)

(assert (=> b!2187273 (= e!1397770 0)))

(declare-fun b!2187274 () Bool)

(assert (=> b!2187274 (= e!1397770 (+ 1 (size!19751 (t!197950 (_1!14910 lt!816466)))))))

(assert (= (and d!655500 c!347870) b!2187273))

(assert (= (and d!655500 (not c!347870)) b!2187274))

(declare-fun m!2629995 () Bool)

(assert (=> b!2187274 m!2629995))

(assert (=> b!2186762 d!655500))

(assert (=> b!2186762 d!655256))

(assert (=> b!2186599 d!655094))

(assert (=> b!2186484 d!655344))

(assert (=> b!2186484 d!655250))

(declare-fun b!2187275 () Bool)

(declare-fun e!1397773 () Bool)

(assert (=> b!2187275 (= e!1397773 (nullable!1713 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111)))))))

(declare-fun bm!131632 () Bool)

(declare-fun call!131637 () Bool)

(assert (=> bm!131632 (= call!131637 (isEmpty!14530 (tail!3142 (_1!14910 lt!816111))))))

(declare-fun b!2187276 () Bool)

(declare-fun res!939787 () Bool)

(declare-fun e!1397776 () Bool)

(assert (=> b!2187276 (=> (not res!939787) (not e!1397776))))

(assert (=> b!2187276 (= res!939787 (isEmpty!14530 (tail!3142 (tail!3142 (_1!14910 lt!816111)))))))

(declare-fun b!2187278 () Bool)

(declare-fun e!1397774 () Bool)

(assert (=> b!2187278 (= e!1397774 (not (= (head!4670 (tail!3142 (_1!14910 lt!816111))) (c!347561 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111)))))))))

(declare-fun b!2187279 () Bool)

(declare-fun e!1397775 () Bool)

(declare-fun lt!816622 () Bool)

(assert (=> b!2187279 (= e!1397775 (not lt!816622))))

(declare-fun b!2187280 () Bool)

(declare-fun e!1397771 () Bool)

(assert (=> b!2187280 (= e!1397771 e!1397775)))

(declare-fun c!347872 () Bool)

(assert (=> b!2187280 (= c!347872 ((_ is EmptyLang!6049) (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111)))))))

(declare-fun b!2187281 () Bool)

(assert (=> b!2187281 (= e!1397771 (= lt!816622 call!131637))))

(declare-fun b!2187282 () Bool)

(declare-fun e!1397777 () Bool)

(declare-fun e!1397772 () Bool)

(assert (=> b!2187282 (= e!1397777 e!1397772)))

(declare-fun res!939788 () Bool)

(assert (=> b!2187282 (=> (not res!939788) (not e!1397772))))

(assert (=> b!2187282 (= res!939788 (not lt!816622))))

(declare-fun b!2187283 () Bool)

(declare-fun res!939784 () Bool)

(assert (=> b!2187283 (=> res!939784 e!1397777)))

(assert (=> b!2187283 (= res!939784 e!1397776)))

(declare-fun res!939781 () Bool)

(assert (=> b!2187283 (=> (not res!939781) (not e!1397776))))

(assert (=> b!2187283 (= res!939781 lt!816622)))

(declare-fun b!2187284 () Bool)

(assert (=> b!2187284 (= e!1397776 (= (head!4670 (tail!3142 (_1!14910 lt!816111))) (c!347561 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111))))))))

(declare-fun b!2187285 () Bool)

(declare-fun res!939785 () Bool)

(assert (=> b!2187285 (=> res!939785 e!1397777)))

(assert (=> b!2187285 (= res!939785 (not ((_ is ElementMatch!6049) (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111))))))))

(assert (=> b!2187285 (= e!1397775 e!1397777)))

(declare-fun b!2187286 () Bool)

(assert (=> b!2187286 (= e!1397773 (matchR!2798 (derivativeStep!1456 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111))) (head!4670 (tail!3142 (_1!14910 lt!816111)))) (tail!3142 (tail!3142 (_1!14910 lt!816111)))))))

(declare-fun d!655502 () Bool)

(assert (=> d!655502 e!1397771))

(declare-fun c!347873 () Bool)

(assert (=> d!655502 (= c!347873 ((_ is EmptyExpr!6049) (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111)))))))

(assert (=> d!655502 (= lt!816622 e!1397773)))

(declare-fun c!347871 () Bool)

(assert (=> d!655502 (= c!347871 (isEmpty!14530 (tail!3142 (_1!14910 lt!816111))))))

(assert (=> d!655502 (validRegex!2325 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111))))))

(assert (=> d!655502 (= (matchR!2798 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111))) (tail!3142 (_1!14910 lt!816111))) lt!816622)))

(declare-fun b!2187277 () Bool)

(declare-fun res!939786 () Bool)

(assert (=> b!2187277 (=> (not res!939786) (not e!1397776))))

(assert (=> b!2187277 (= res!939786 (not call!131637))))

(declare-fun b!2187287 () Bool)

(declare-fun res!939782 () Bool)

(assert (=> b!2187287 (=> res!939782 e!1397774)))

(assert (=> b!2187287 (= res!939782 (not (isEmpty!14530 (tail!3142 (tail!3142 (_1!14910 lt!816111))))))))

(declare-fun b!2187288 () Bool)

(assert (=> b!2187288 (= e!1397772 e!1397774)))

(declare-fun res!939783 () Bool)

(assert (=> b!2187288 (=> res!939783 e!1397774)))

(assert (=> b!2187288 (= res!939783 call!131637)))

(assert (= (and d!655502 c!347871) b!2187275))

(assert (= (and d!655502 (not c!347871)) b!2187286))

(assert (= (and d!655502 c!347873) b!2187281))

(assert (= (and d!655502 (not c!347873)) b!2187280))

(assert (= (and b!2187280 c!347872) b!2187279))

(assert (= (and b!2187280 (not c!347872)) b!2187285))

(assert (= (and b!2187285 (not res!939785)) b!2187283))

(assert (= (and b!2187283 res!939781) b!2187277))

(assert (= (and b!2187277 res!939786) b!2187276))

(assert (= (and b!2187276 res!939787) b!2187284))

(assert (= (and b!2187283 (not res!939784)) b!2187282))

(assert (= (and b!2187282 res!939788) b!2187288))

(assert (= (and b!2187288 (not res!939783)) b!2187287))

(assert (= (and b!2187287 (not res!939782)) b!2187278))

(assert (= (or b!2187281 b!2187277 b!2187288) bm!131632))

(assert (=> b!2187287 m!2629131))

(declare-fun m!2629997 () Bool)

(assert (=> b!2187287 m!2629997))

(assert (=> b!2187287 m!2629997))

(declare-fun m!2629999 () Bool)

(assert (=> b!2187287 m!2629999))

(assert (=> bm!131632 m!2629131))

(assert (=> bm!131632 m!2629133))

(assert (=> b!2187284 m!2629131))

(declare-fun m!2630001 () Bool)

(assert (=> b!2187284 m!2630001))

(assert (=> b!2187278 m!2629131))

(assert (=> b!2187278 m!2630001))

(assert (=> b!2187275 m!2629137))

(declare-fun m!2630003 () Bool)

(assert (=> b!2187275 m!2630003))

(assert (=> d!655502 m!2629131))

(assert (=> d!655502 m!2629133))

(assert (=> d!655502 m!2629137))

(declare-fun m!2630005 () Bool)

(assert (=> d!655502 m!2630005))

(assert (=> b!2187286 m!2629131))

(assert (=> b!2187286 m!2630001))

(assert (=> b!2187286 m!2629137))

(assert (=> b!2187286 m!2630001))

(declare-fun m!2630007 () Bool)

(assert (=> b!2187286 m!2630007))

(assert (=> b!2187286 m!2629131))

(assert (=> b!2187286 m!2629997))

(assert (=> b!2187286 m!2630007))

(assert (=> b!2187286 m!2629997))

(declare-fun m!2630009 () Bool)

(assert (=> b!2187286 m!2630009))

(assert (=> b!2187276 m!2629131))

(assert (=> b!2187276 m!2629997))

(assert (=> b!2187276 m!2629997))

(assert (=> b!2187276 m!2629999))

(assert (=> b!2186500 d!655502))

(declare-fun d!655504 () Bool)

(declare-fun lt!816630 () Regex!6049)

(assert (=> d!655504 (validRegex!2325 lt!816630)))

(declare-fun e!1397814 () Regex!6049)

(assert (=> d!655504 (= lt!816630 e!1397814)))

(declare-fun c!347909 () Bool)

(assert (=> d!655504 (= c!347909 (or ((_ is EmptyExpr!6049) r!12534) ((_ is EmptyLang!6049) r!12534)))))

(assert (=> d!655504 (validRegex!2325 r!12534)))

(assert (=> d!655504 (= (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816111))) lt!816630)))

(declare-fun b!2187357 () Bool)

(declare-fun e!1397816 () Regex!6049)

(declare-fun e!1397813 () Regex!6049)

(assert (=> b!2187357 (= e!1397816 e!1397813)))

(declare-fun c!347907 () Bool)

(assert (=> b!2187357 (= c!347907 ((_ is Star!6049) r!12534))))

(declare-fun call!131660 () Regex!6049)

(declare-fun bm!131654 () Bool)

(declare-fun c!347908 () Bool)

(assert (=> bm!131654 (= call!131660 (derivativeStep!1456 (ite c!347908 (regTwo!12611 r!12534) (regTwo!12610 r!12534)) (head!4670 (_1!14910 lt!816111))))))

(declare-fun bm!131655 () Bool)

(declare-fun call!131662 () Regex!6049)

(assert (=> bm!131655 (= call!131662 (derivativeStep!1456 (ite c!347908 (regOne!12611 r!12534) (ite c!347907 (reg!6378 r!12534) (regOne!12610 r!12534))) (head!4670 (_1!14910 lt!816111))))))

(declare-fun b!2187358 () Bool)

(declare-fun e!1397817 () Regex!6049)

(declare-fun call!131661 () Regex!6049)

(assert (=> b!2187358 (= e!1397817 (Union!6049 (Concat!10351 call!131661 (regTwo!12610 r!12534)) EmptyLang!6049))))

(declare-fun bm!131656 () Bool)

(declare-fun call!131659 () Regex!6049)

(assert (=> bm!131656 (= call!131659 call!131662)))

(declare-fun b!2187359 () Bool)

(declare-fun c!347911 () Bool)

(assert (=> b!2187359 (= c!347911 (nullable!1713 (regOne!12610 r!12534)))))

(assert (=> b!2187359 (= e!1397813 e!1397817)))

(declare-fun b!2187360 () Bool)

(assert (=> b!2187360 (= e!1397813 (Concat!10351 call!131659 r!12534))))

(declare-fun b!2187361 () Bool)

(declare-fun e!1397815 () Regex!6049)

(assert (=> b!2187361 (= e!1397815 (ite (= (head!4670 (_1!14910 lt!816111)) (c!347561 r!12534)) EmptyExpr!6049 EmptyLang!6049))))

(declare-fun b!2187362 () Bool)

(assert (=> b!2187362 (= c!347908 ((_ is Union!6049) r!12534))))

(assert (=> b!2187362 (= e!1397815 e!1397816)))

(declare-fun bm!131657 () Bool)

(assert (=> bm!131657 (= call!131661 call!131659)))

(declare-fun b!2187363 () Bool)

(assert (=> b!2187363 (= e!1397814 EmptyLang!6049)))

(declare-fun b!2187364 () Bool)

(assert (=> b!2187364 (= e!1397817 (Union!6049 (Concat!10351 call!131661 (regTwo!12610 r!12534)) call!131660))))

(declare-fun b!2187365 () Bool)

(assert (=> b!2187365 (= e!1397814 e!1397815)))

(declare-fun c!347910 () Bool)

(assert (=> b!2187365 (= c!347910 ((_ is ElementMatch!6049) r!12534))))

(declare-fun b!2187366 () Bool)

(assert (=> b!2187366 (= e!1397816 (Union!6049 call!131662 call!131660))))

(assert (= (and d!655504 c!347909) b!2187363))

(assert (= (and d!655504 (not c!347909)) b!2187365))

(assert (= (and b!2187365 c!347910) b!2187361))

(assert (= (and b!2187365 (not c!347910)) b!2187362))

(assert (= (and b!2187362 c!347908) b!2187366))

(assert (= (and b!2187362 (not c!347908)) b!2187357))

(assert (= (and b!2187357 c!347907) b!2187360))

(assert (= (and b!2187357 (not c!347907)) b!2187359))

(assert (= (and b!2187359 c!347911) b!2187364))

(assert (= (and b!2187359 (not c!347911)) b!2187358))

(assert (= (or b!2187364 b!2187358) bm!131657))

(assert (= (or b!2187360 bm!131657) bm!131656))

(assert (= (or b!2187366 bm!131656) bm!131655))

(assert (= (or b!2187366 b!2187364) bm!131654))

(declare-fun m!2630049 () Bool)

(assert (=> d!655504 m!2630049))

(assert (=> d!655504 m!2628783))

(assert (=> bm!131654 m!2629135))

(declare-fun m!2630051 () Bool)

(assert (=> bm!131654 m!2630051))

(assert (=> bm!131655 m!2629135))

(declare-fun m!2630053 () Bool)

(assert (=> bm!131655 m!2630053))

(declare-fun m!2630055 () Bool)

(assert (=> b!2187359 m!2630055))

(assert (=> b!2186500 d!655504))

(assert (=> b!2186500 d!655354))

(assert (=> b!2186500 d!655328))

(declare-fun d!655526 () Bool)

(assert (=> d!655526 (= (isEmpty!14530 lt!816112) ((_ is Nil!25276) lt!816112))))

(assert (=> d!655206 d!655526))

(declare-fun d!655528 () Bool)

(declare-fun c!347917 () Bool)

(assert (=> d!655528 (= c!347917 ((_ is Nil!25276) lt!816487))))

(declare-fun e!1397824 () (InoxSet C!12244))

(assert (=> d!655528 (= (content!3451 lt!816487) e!1397824)))

(declare-fun b!2187378 () Bool)

(assert (=> b!2187378 (= e!1397824 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2187379 () Bool)

(assert (=> b!2187379 (= e!1397824 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 lt!816487) true) (content!3451 (t!197950 lt!816487))))))

(assert (= (and d!655528 c!347917) b!2187378))

(assert (= (and d!655528 (not c!347917)) b!2187379))

(declare-fun m!2630057 () Bool)

(assert (=> b!2187379 m!2630057))

(declare-fun m!2630059 () Bool)

(assert (=> b!2187379 m!2630059))

(assert (=> d!655254 d!655528))

(assert (=> d!655254 d!655340))

(declare-fun d!655530 () Bool)

(declare-fun lt!816633 () Int)

(assert (=> d!655530 (>= lt!816633 0)))

(declare-fun e!1397825 () Int)

(assert (=> d!655530 (= lt!816633 e!1397825)))

(declare-fun c!347918 () Bool)

(assert (=> d!655530 (= c!347918 ((_ is Nil!25276) (t!197950 (_1!14910 lt!816097))))))

(assert (=> d!655530 (= (size!19751 (t!197950 (_1!14910 lt!816097))) lt!816633)))

(declare-fun b!2187380 () Bool)

(assert (=> b!2187380 (= e!1397825 0)))

(declare-fun b!2187381 () Bool)

(assert (=> b!2187381 (= e!1397825 (+ 1 (size!19751 (t!197950 (t!197950 (_1!14910 lt!816097))))))))

(assert (= (and d!655530 c!347918) b!2187380))

(assert (= (and d!655530 (not c!347918)) b!2187381))

(declare-fun m!2630067 () Bool)

(assert (=> b!2187381 m!2630067))

(assert (=> b!2186264 d!655530))

(declare-fun d!655536 () Bool)

(declare-fun e!1397828 () Bool)

(assert (=> d!655536 e!1397828))

(declare-fun res!939792 () Bool)

(assert (=> d!655536 (=> res!939792 e!1397828)))

(declare-fun lt!816635 () Bool)

(assert (=> d!655536 (= res!939792 (not lt!816635))))

(declare-fun e!1397827 () Bool)

(assert (=> d!655536 (= lt!816635 e!1397827)))

(declare-fun res!939793 () Bool)

(assert (=> d!655536 (=> res!939793 e!1397827)))

(assert (=> d!655536 (= res!939793 ((_ is Nil!25276) (tail!3142 (_1!14910 lt!816097))))))

(assert (=> d!655536 (= (isPrefix!2165 (tail!3142 (_1!14910 lt!816097)) (tail!3142 lt!816095)) lt!816635)))

(declare-fun b!2187387 () Bool)

(assert (=> b!2187387 (= e!1397828 (>= (size!19751 (tail!3142 lt!816095)) (size!19751 (tail!3142 (_1!14910 lt!816097)))))))

(declare-fun b!2187386 () Bool)

(declare-fun e!1397829 () Bool)

(assert (=> b!2187386 (= e!1397829 (isPrefix!2165 (tail!3142 (tail!3142 (_1!14910 lt!816097))) (tail!3142 (tail!3142 lt!816095))))))

(declare-fun b!2187384 () Bool)

(assert (=> b!2187384 (= e!1397827 e!1397829)))

(declare-fun res!939795 () Bool)

(assert (=> b!2187384 (=> (not res!939795) (not e!1397829))))

(assert (=> b!2187384 (= res!939795 (not ((_ is Nil!25276) (tail!3142 lt!816095))))))

(declare-fun b!2187385 () Bool)

(declare-fun res!939794 () Bool)

(assert (=> b!2187385 (=> (not res!939794) (not e!1397829))))

(assert (=> b!2187385 (= res!939794 (= (head!4670 (tail!3142 (_1!14910 lt!816097))) (head!4670 (tail!3142 lt!816095))))))

(assert (= (and d!655536 (not res!939793)) b!2187384))

(assert (= (and b!2187384 res!939795) b!2187385))

(assert (= (and b!2187385 res!939794) b!2187386))

(assert (= (and d!655536 (not res!939792)) b!2187387))

(assert (=> b!2187387 m!2629185))

(declare-fun m!2630073 () Bool)

(assert (=> b!2187387 m!2630073))

(assert (=> b!2187387 m!2628881))

(declare-fun m!2630075 () Bool)

(assert (=> b!2187387 m!2630075))

(assert (=> b!2187386 m!2628881))

(declare-fun m!2630077 () Bool)

(assert (=> b!2187386 m!2630077))

(assert (=> b!2187386 m!2629185))

(declare-fun m!2630079 () Bool)

(assert (=> b!2187386 m!2630079))

(assert (=> b!2187386 m!2630077))

(assert (=> b!2187386 m!2630079))

(declare-fun m!2630081 () Bool)

(assert (=> b!2187386 m!2630081))

(assert (=> b!2187385 m!2628881))

(declare-fun m!2630083 () Bool)

(assert (=> b!2187385 m!2630083))

(assert (=> b!2187385 m!2629185))

(declare-fun m!2630085 () Bool)

(assert (=> b!2187385 m!2630085))

(assert (=> b!2186581 d!655536))

(assert (=> b!2186581 d!655378))

(declare-fun d!655546 () Bool)

(assert (=> d!655546 (= (tail!3142 lt!816095) (t!197950 lt!816095))))

(assert (=> b!2186581 d!655546))

(declare-fun d!655550 () Bool)

(declare-fun lt!816638 () Int)

(assert (=> d!655550 (>= lt!816638 0)))

(declare-fun e!1397831 () Int)

(assert (=> d!655550 (= lt!816638 e!1397831)))

(declare-fun c!347921 () Bool)

(assert (=> d!655550 (= c!347921 ((_ is Nil!25276) lt!816119))))

(assert (=> d!655550 (= (size!19751 lt!816119) lt!816638)))

(declare-fun b!2187390 () Bool)

(assert (=> b!2187390 (= e!1397831 0)))

(declare-fun b!2187391 () Bool)

(assert (=> b!2187391 (= e!1397831 (+ 1 (size!19751 (t!197950 lt!816119))))))

(assert (= (and d!655550 c!347921) b!2187390))

(assert (= (and d!655550 (not c!347921)) b!2187391))

(declare-fun m!2630091 () Bool)

(assert (=> b!2187391 m!2630091))

(assert (=> b!2186578 d!655550))

(declare-fun d!655554 () Bool)

(declare-fun lt!816640 () Int)

(assert (=> d!655554 (>= lt!816640 0)))

(declare-fun e!1397833 () Int)

(assert (=> d!655554 (= lt!816640 e!1397833)))

(declare-fun c!347923 () Bool)

(assert (=> d!655554 (= c!347923 ((_ is Nil!25276) lt!816112))))

(assert (=> d!655554 (= (size!19751 lt!816112) lt!816640)))

(declare-fun b!2187394 () Bool)

(assert (=> b!2187394 (= e!1397833 0)))

(declare-fun b!2187395 () Bool)

(assert (=> b!2187395 (= e!1397833 (+ 1 (size!19751 (t!197950 lt!816112))))))

(assert (= (and d!655554 c!347923) b!2187394))

(assert (= (and d!655554 (not c!347923)) b!2187395))

(assert (=> b!2187395 m!2629595))

(assert (=> b!2186578 d!655554))

(declare-fun d!655558 () Bool)

(assert (=> d!655558 (= (isEmpty!14530 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))) ((_ is Nil!25276) (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))))))

(assert (=> d!655248 d!655558))

(assert (=> d!655248 d!655216))

(assert (=> d!655248 d!655250))

(assert (=> d!655248 d!655168))

(assert (=> d!655248 d!655256))

(declare-fun d!655560 () Bool)

(declare-fun e!1397849 () Bool)

(assert (=> d!655560 e!1397849))

(declare-fun res!939812 () Bool)

(assert (=> d!655560 (=> res!939812 e!1397849)))

(assert (=> d!655560 (= res!939812 (isEmpty!14530 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))))))

(assert (=> d!655560 true))

(declare-fun _$92!336 () Unit!38401)

(assert (=> d!655560 (= (choose!12944 r!12534 lt!816118) _$92!336)))

(declare-fun b!2187426 () Bool)

(assert (=> b!2187426 (= e!1397849 (matchR!2798 r!12534 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))))))

(assert (= (and d!655560 (not res!939812)) b!2187426))

(assert (=> d!655560 m!2628759))

(assert (=> d!655560 m!2628761))

(assert (=> d!655560 m!2628759))

(assert (=> d!655560 m!2628761))

(assert (=> d!655560 m!2628773))

(assert (=> d!655560 m!2629381))

(assert (=> b!2187426 m!2628759))

(assert (=> b!2187426 m!2628761))

(assert (=> b!2187426 m!2628759))

(assert (=> b!2187426 m!2628761))

(assert (=> b!2187426 m!2628773))

(assert (=> b!2187426 m!2629385))

(assert (=> d!655248 d!655560))

(assert (=> d!655184 d!655270))

(assert (=> d!655184 d!655168))

(declare-fun d!655566 () Bool)

(declare-fun c!347931 () Bool)

(assert (=> d!655566 (= c!347931 ((_ is Nil!25276) lt!816494))))

(declare-fun e!1397850 () (InoxSet C!12244))

(assert (=> d!655566 (= (content!3451 lt!816494) e!1397850)))

(declare-fun b!2187427 () Bool)

(assert (=> b!2187427 (= e!1397850 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2187428 () Bool)

(assert (=> b!2187428 (= e!1397850 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 lt!816494) true) (content!3451 (t!197950 lt!816494))))))

(assert (= (and d!655566 c!347931) b!2187427))

(assert (= (and d!655566 (not c!347931)) b!2187428))

(declare-fun m!2630151 () Bool)

(assert (=> b!2187428 m!2630151))

(declare-fun m!2630153 () Bool)

(assert (=> b!2187428 m!2630153))

(assert (=> d!655268 d!655566))

(declare-fun d!655568 () Bool)

(declare-fun c!347932 () Bool)

(assert (=> d!655568 (= c!347932 ((_ is Nil!25276) (_1!14910 lt!816097)))))

(declare-fun e!1397851 () (InoxSet C!12244))

(assert (=> d!655568 (= (content!3451 (_1!14910 lt!816097)) e!1397851)))

(declare-fun b!2187429 () Bool)

(assert (=> b!2187429 (= e!1397851 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2187430 () Bool)

(assert (=> b!2187430 (= e!1397851 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 (_1!14910 lt!816097)) true) (content!3451 (t!197950 (_1!14910 lt!816097)))))))

(assert (= (and d!655568 c!347932) b!2187429))

(assert (= (and d!655568 (not c!347932)) b!2187430))

(declare-fun m!2630155 () Bool)

(assert (=> b!2187430 m!2630155))

(declare-fun m!2630157 () Bool)

(assert (=> b!2187430 m!2630157))

(assert (=> d!655268 d!655568))

(declare-fun d!655570 () Bool)

(declare-fun c!347933 () Bool)

(assert (=> d!655570 (= c!347933 ((_ is Nil!25276) (_2!14910 lt!816097)))))

(declare-fun e!1397852 () (InoxSet C!12244))

(assert (=> d!655570 (= (content!3451 (_2!14910 lt!816097)) e!1397852)))

(declare-fun b!2187431 () Bool)

(assert (=> b!2187431 (= e!1397852 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2187432 () Bool)

(assert (=> b!2187432 (= e!1397852 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 (_2!14910 lt!816097)) true) (content!3451 (t!197950 (_2!14910 lt!816097)))))))

(assert (= (and d!655570 c!347933) b!2187431))

(assert (= (and d!655570 (not c!347933)) b!2187432))

(declare-fun m!2630159 () Bool)

(assert (=> b!2187432 m!2630159))

(declare-fun m!2630161 () Bool)

(assert (=> b!2187432 m!2630161))

(assert (=> d!655268 d!655570))

(assert (=> b!2186468 d!655364))

(assert (=> d!655262 d!655260))

(assert (=> d!655262 d!655254))

(declare-fun d!655572 () Bool)

(assert (=> d!655572 (isPrefix!2165 (take!257 lt!816109 lt!816114) lt!816109)))

(assert (=> d!655572 true))

(declare-fun _$48!723 () Unit!38401)

(assert (=> d!655572 (= (choose!12945 lt!816109 lt!816114) _$48!723)))

(declare-fun bs!448190 () Bool)

(assert (= bs!448190 d!655572))

(assert (=> bs!448190 m!2628753))

(assert (=> bs!448190 m!2628753))

(assert (=> bs!448190 m!2628765))

(assert (=> d!655262 d!655572))

(declare-fun d!655578 () Bool)

(assert (=> d!655578 (= (isEmpty!14530 (tail!3142 lt!816112)) ((_ is Nil!25276) (tail!3142 lt!816112)))))

(assert (=> b!2186246 d!655578))

(declare-fun d!655580 () Bool)

(assert (=> d!655580 (= (tail!3142 lt!816112) (t!197950 lt!816112))))

(assert (=> b!2186246 d!655580))

(declare-fun d!655582 () Bool)

(declare-fun c!347936 () Bool)

(assert (=> d!655582 (= c!347936 (isEmpty!14530 (tail!3142 lt!816112)))))

(declare-fun e!1397858 () Bool)

(assert (=> d!655582 (= (matchZipper!165 (derivationStepZipper!142 z!4055 (head!4670 lt!816112)) (tail!3142 lt!816112)) e!1397858)))

(declare-fun b!2187445 () Bool)

(assert (=> b!2187445 (= e!1397858 (nullableZipper!329 (derivationStepZipper!142 z!4055 (head!4670 lt!816112))))))

(declare-fun b!2187446 () Bool)

(assert (=> b!2187446 (= e!1397858 (matchZipper!165 (derivationStepZipper!142 (derivationStepZipper!142 z!4055 (head!4670 lt!816112)) (head!4670 (tail!3142 lt!816112))) (tail!3142 (tail!3142 lt!816112))))))

(assert (= (and d!655582 c!347936) b!2187445))

(assert (= (and d!655582 (not c!347936)) b!2187446))

(assert (=> d!655582 m!2628885))

(assert (=> d!655582 m!2628887))

(assert (=> b!2187445 m!2629171))

(declare-fun m!2630191 () Bool)

(assert (=> b!2187445 m!2630191))

(assert (=> b!2187446 m!2628885))

(declare-fun m!2630193 () Bool)

(assert (=> b!2187446 m!2630193))

(assert (=> b!2187446 m!2629171))

(assert (=> b!2187446 m!2630193))

(declare-fun m!2630197 () Bool)

(assert (=> b!2187446 m!2630197))

(assert (=> b!2187446 m!2628885))

(declare-fun m!2630199 () Bool)

(assert (=> b!2187446 m!2630199))

(assert (=> b!2187446 m!2630197))

(assert (=> b!2187446 m!2630199))

(declare-fun m!2630201 () Bool)

(assert (=> b!2187446 m!2630201))

(assert (=> b!2186566 d!655582))

(declare-fun bs!448191 () Bool)

(declare-fun d!655588 () Bool)

(assert (= bs!448191 (and d!655588 d!655470)))

(declare-fun lambda!82114 () Int)

(assert (=> bs!448191 (= (= (head!4670 lt!816112) (apply!6094 totalInput!977 lt!816114)) (= lambda!82114 lambda!82112))))

(assert (=> d!655588 true))

(assert (=> d!655588 (= (derivationStepZipper!142 z!4055 (head!4670 lt!816112)) (flatMap!137 z!4055 lambda!82114))))

(declare-fun bs!448192 () Bool)

(assert (= bs!448192 d!655588))

(declare-fun m!2630203 () Bool)

(assert (=> bs!448192 m!2630203))

(assert (=> b!2186566 d!655588))

(declare-fun d!655590 () Bool)

(assert (=> d!655590 (= (head!4670 lt!816112) (h!30677 lt!816112))))

(assert (=> b!2186566 d!655590))

(assert (=> b!2186566 d!655580))

(declare-fun d!655592 () Bool)

(declare-fun res!939828 () Bool)

(declare-fun e!1397870 () Bool)

(assert (=> d!655592 (=> res!939828 e!1397870)))

(assert (=> d!655592 (= res!939828 ((_ is Nil!25278) lt!816500))))

(assert (=> d!655592 (= (noDuplicate!306 lt!816500) e!1397870)))

(declare-fun b!2187462 () Bool)

(declare-fun e!1397871 () Bool)

(assert (=> b!2187462 (= e!1397870 e!1397871)))

(declare-fun res!939829 () Bool)

(assert (=> b!2187462 (=> (not res!939829) (not e!1397871))))

(declare-fun contains!4274 (List!25362 Context!3238) Bool)

(assert (=> b!2187462 (= res!939829 (not (contains!4274 (t!197952 lt!816500) (h!30679 lt!816500))))))

(declare-fun b!2187463 () Bool)

(assert (=> b!2187463 (= e!1397871 (noDuplicate!306 (t!197952 lt!816500)))))

(assert (= (and d!655592 (not res!939828)) b!2187462))

(assert (= (and b!2187462 res!939829) b!2187463))

(declare-fun m!2630221 () Bool)

(assert (=> b!2187462 m!2630221))

(declare-fun m!2630223 () Bool)

(assert (=> b!2187463 m!2630223))

(assert (=> d!655274 d!655592))

(declare-fun d!655602 () Bool)

(declare-fun e!1397878 () Bool)

(assert (=> d!655602 e!1397878))

(declare-fun res!939834 () Bool)

(assert (=> d!655602 (=> (not res!939834) (not e!1397878))))

(declare-fun res!939835 () List!25362)

(assert (=> d!655602 (= res!939834 (noDuplicate!306 res!939835))))

(declare-fun e!1397879 () Bool)

(assert (=> d!655602 e!1397879))

(assert (=> d!655602 (= (choose!12946 z!4055) res!939835)))

(declare-fun b!2187471 () Bool)

(declare-fun e!1397880 () Bool)

(declare-fun tp!681926 () Bool)

(assert (=> b!2187471 (= e!1397880 tp!681926)))

(declare-fun tp!681925 () Bool)

(declare-fun b!2187470 () Bool)

(assert (=> b!2187470 (= e!1397879 (and (inv!33610 (h!30679 res!939835)) e!1397880 tp!681925))))

(declare-fun b!2187472 () Bool)

(assert (=> b!2187472 (= e!1397878 (= (content!3453 res!939835) z!4055))))

(assert (= b!2187470 b!2187471))

(assert (= (and d!655602 ((_ is Cons!25278) res!939835)) b!2187470))

(assert (= (and d!655602 res!939834) b!2187472))

(declare-fun m!2630225 () Bool)

(assert (=> d!655602 m!2630225))

(declare-fun m!2630227 () Bool)

(assert (=> b!2187470 m!2630227))

(declare-fun m!2630229 () Bool)

(assert (=> b!2187472 m!2630229))

(assert (=> d!655274 d!655602))

(declare-fun b!2187476 () Bool)

(declare-fun e!1397882 () Bool)

(declare-fun lt!816678 () List!25360)

(assert (=> b!2187476 (= e!1397882 (or (not (= (_2!14910 lt!816097) Nil!25276)) (= lt!816678 (t!197950 (_1!14910 lt!816097)))))))

(declare-fun b!2187473 () Bool)

(declare-fun e!1397881 () List!25360)

(assert (=> b!2187473 (= e!1397881 (_2!14910 lt!816097))))

(declare-fun b!2187475 () Bool)

(declare-fun res!939837 () Bool)

(assert (=> b!2187475 (=> (not res!939837) (not e!1397882))))

(assert (=> b!2187475 (= res!939837 (= (size!19751 lt!816678) (+ (size!19751 (t!197950 (_1!14910 lt!816097))) (size!19751 (_2!14910 lt!816097)))))))

(declare-fun b!2187474 () Bool)

(assert (=> b!2187474 (= e!1397881 (Cons!25276 (h!30677 (t!197950 (_1!14910 lt!816097))) (++!6410 (t!197950 (t!197950 (_1!14910 lt!816097))) (_2!14910 lt!816097))))))

(declare-fun d!655604 () Bool)

(assert (=> d!655604 e!1397882))

(declare-fun res!939836 () Bool)

(assert (=> d!655604 (=> (not res!939836) (not e!1397882))))

(assert (=> d!655604 (= res!939836 (= (content!3451 lt!816678) ((_ map or) (content!3451 (t!197950 (_1!14910 lt!816097))) (content!3451 (_2!14910 lt!816097)))))))

(assert (=> d!655604 (= lt!816678 e!1397881)))

(declare-fun c!347941 () Bool)

(assert (=> d!655604 (= c!347941 ((_ is Nil!25276) (t!197950 (_1!14910 lt!816097))))))

(assert (=> d!655604 (= (++!6410 (t!197950 (_1!14910 lt!816097)) (_2!14910 lt!816097)) lt!816678)))

(assert (= (and d!655604 c!347941) b!2187473))

(assert (= (and d!655604 (not c!347941)) b!2187474))

(assert (= (and d!655604 res!939836) b!2187475))

(assert (= (and b!2187475 res!939837) b!2187476))

(declare-fun m!2630231 () Bool)

(assert (=> b!2187475 m!2630231))

(assert (=> b!2187475 m!2628899))

(assert (=> b!2187475 m!2629425))

(declare-fun m!2630233 () Bool)

(assert (=> b!2187474 m!2630233))

(declare-fun m!2630235 () Bool)

(assert (=> d!655604 m!2630235))

(assert (=> d!655604 m!2630157))

(assert (=> d!655604 m!2629433))

(assert (=> b!2186810 d!655604))

(assert (=> b!2186254 d!655590))

(declare-fun d!655606 () Bool)

(declare-fun lt!816679 () Int)

(assert (=> d!655606 (>= lt!816679 0)))

(declare-fun e!1397883 () Int)

(assert (=> d!655606 (= lt!816679 e!1397883)))

(declare-fun c!347942 () Bool)

(assert (=> d!655606 (= c!347942 ((_ is Nil!25276) (list!9706 (_1!14909 lt!816099))))))

(assert (=> d!655606 (= (size!19751 (list!9706 (_1!14909 lt!816099))) lt!816679)))

(declare-fun b!2187477 () Bool)

(assert (=> b!2187477 (= e!1397883 0)))

(declare-fun b!2187478 () Bool)

(assert (=> b!2187478 (= e!1397883 (+ 1 (size!19751 (t!197950 (list!9706 (_1!14909 lt!816099))))))))

(assert (= (and d!655606 c!347942) b!2187477))

(assert (= (and d!655606 (not c!347942)) b!2187478))

(declare-fun m!2630237 () Bool)

(assert (=> b!2187478 m!2630237))

(assert (=> d!655112 d!655606))

(assert (=> d!655112 d!655096))

(declare-fun d!655608 () Bool)

(declare-fun lt!816682 () Int)

(assert (=> d!655608 (= lt!816682 (size!19751 (list!9707 (c!347560 (_1!14909 lt!816099)))))))

(assert (=> d!655608 (= lt!816682 (ite ((_ is Empty!8185) (c!347560 (_1!14909 lt!816099))) 0 (ite ((_ is Leaf!11977) (c!347560 (_1!14909 lt!816099))) (csize!16601 (c!347560 (_1!14909 lt!816099))) (csize!16600 (c!347560 (_1!14909 lt!816099))))))))

(assert (=> d!655608 (= (size!19752 (c!347560 (_1!14909 lt!816099))) lt!816682)))

(declare-fun bs!448195 () Bool)

(assert (= bs!448195 d!655608))

(assert (=> bs!448195 m!2628857))

(assert (=> bs!448195 m!2628857))

(declare-fun m!2630239 () Bool)

(assert (=> bs!448195 m!2630239))

(assert (=> d!655112 d!655608))

(declare-fun b!2187489 () Bool)

(declare-fun e!1397890 () List!25360)

(assert (=> b!2187489 (= e!1397890 Nil!25276)))

(declare-fun b!2187490 () Bool)

(declare-fun e!1397891 () List!25360)

(assert (=> b!2187490 (= e!1397890 e!1397891)))

(declare-fun c!347948 () Bool)

(assert (=> b!2187490 (= c!347948 ((_ is Leaf!11977) (c!347560 (_2!14909 lt!816099))))))

(declare-fun b!2187491 () Bool)

(declare-fun list!9710 (IArray!16375) List!25360)

(assert (=> b!2187491 (= e!1397891 (list!9710 (xs!11127 (c!347560 (_2!14909 lt!816099)))))))

(declare-fun d!655610 () Bool)

(declare-fun c!347947 () Bool)

(assert (=> d!655610 (= c!347947 ((_ is Empty!8185) (c!347560 (_2!14909 lt!816099))))))

(assert (=> d!655610 (= (list!9707 (c!347560 (_2!14909 lt!816099))) e!1397890)))

(declare-fun b!2187492 () Bool)

(assert (=> b!2187492 (= e!1397891 (++!6410 (list!9707 (left!19400 (c!347560 (_2!14909 lt!816099)))) (list!9707 (right!19730 (c!347560 (_2!14909 lt!816099))))))))

(assert (= (and d!655610 c!347947) b!2187489))

(assert (= (and d!655610 (not c!347947)) b!2187490))

(assert (= (and b!2187490 c!347948) b!2187491))

(assert (= (and b!2187490 (not c!347948)) b!2187492))

(declare-fun m!2630241 () Bool)

(assert (=> b!2187491 m!2630241))

(declare-fun m!2630243 () Bool)

(assert (=> b!2187492 m!2630243))

(declare-fun m!2630245 () Bool)

(assert (=> b!2187492 m!2630245))

(assert (=> b!2187492 m!2630243))

(assert (=> b!2187492 m!2630245))

(declare-fun m!2630247 () Bool)

(assert (=> b!2187492 m!2630247))

(assert (=> d!655100 d!655610))

(declare-fun d!655612 () Bool)

(assert (not d!655612))

(assert (=> b!2186801 d!655612))

(declare-fun bm!131667 () Bool)

(declare-fun call!131676 () Regex!6049)

(declare-fun call!131675 () C!12244)

(assert (=> bm!131667 (= call!131676 (derivativeStep!1456 call!131612 call!131675))))

(declare-fun b!2187494 () Bool)

(declare-fun e!1397895 () Unit!38401)

(declare-fun Unit!38412 () Unit!38401)

(assert (=> b!2187494 (= e!1397895 Unit!38412)))

(declare-fun bm!131668 () Bool)

(declare-fun call!131673 () Unit!38401)

(assert (=> bm!131668 (= call!131673 (lemmaIsPrefixSameLengthThenSameList!371 lt!816118 lt!816467 lt!816118))))

(declare-fun d!655614 () Bool)

(declare-fun e!1397897 () Bool)

(assert (=> d!655614 e!1397897))

(declare-fun res!939842 () Bool)

(assert (=> d!655614 (=> (not res!939842) (not e!1397897))))

(declare-fun lt!816699 () tuple2!25080)

(assert (=> d!655614 (= res!939842 (= (++!6410 (_1!14910 lt!816699) (_2!14910 lt!816699)) lt!816118))))

(declare-fun e!1397899 () tuple2!25080)

(assert (=> d!655614 (= lt!816699 e!1397899)))

(declare-fun c!347952 () Bool)

(assert (=> d!655614 (= c!347952 (lostCause!685 call!131612))))

(declare-fun lt!816686 () Unit!38401)

(declare-fun Unit!38413 () Unit!38401)

(assert (=> d!655614 (= lt!816686 Unit!38413)))

(assert (=> d!655614 (= (getSuffix!1050 lt!816118 lt!816467) call!131614)))

(declare-fun lt!816687 () Unit!38401)

(declare-fun lt!816702 () Unit!38401)

(assert (=> d!655614 (= lt!816687 lt!816702)))

(declare-fun lt!816710 () List!25360)

(assert (=> d!655614 (= call!131614 lt!816710)))

(assert (=> d!655614 (= lt!816702 (lemmaSamePrefixThenSameSuffix!972 lt!816467 call!131614 lt!816467 lt!816710 lt!816118))))

(assert (=> d!655614 (= lt!816710 (getSuffix!1050 lt!816118 lt!816467))))

(declare-fun lt!816701 () Unit!38401)

(declare-fun lt!816709 () Unit!38401)

(assert (=> d!655614 (= lt!816701 lt!816709)))

(assert (=> d!655614 (isPrefix!2165 lt!816467 (++!6410 lt!816467 call!131614))))

(assert (=> d!655614 (= lt!816709 (lemmaConcatTwoListThenFirstIsPrefix!1448 lt!816467 call!131614))))

(assert (=> d!655614 (validRegex!2325 call!131612)))

(assert (=> d!655614 (= (findLongestMatchInner!674 call!131612 lt!816467 (+ (size!19751 Nil!25276) 1) call!131614 lt!816118 (size!19751 lt!816118)) lt!816699)))

(declare-fun bm!131669 () Bool)

(declare-fun call!131672 () Bool)

(assert (=> bm!131669 (= call!131672 (nullable!1713 call!131612))))

(declare-fun b!2187495 () Bool)

(declare-fun e!1397900 () tuple2!25080)

(assert (=> b!2187495 (= e!1397900 (tuple2!25081 lt!816467 call!131614))))

(declare-fun b!2187496 () Bool)

(declare-fun e!1397896 () Bool)

(assert (=> b!2187496 (= e!1397896 (>= (size!19751 (_1!14910 lt!816699)) (size!19751 lt!816467)))))

(declare-fun b!2187497 () Bool)

(declare-fun e!1397898 () tuple2!25080)

(declare-fun call!131677 () tuple2!25080)

(assert (=> b!2187497 (= e!1397898 call!131677)))

(declare-fun b!2187498 () Bool)

(assert (=> b!2187498 (= e!1397898 e!1397900)))

(declare-fun lt!816697 () tuple2!25080)

(assert (=> b!2187498 (= lt!816697 call!131677)))

(declare-fun c!347953 () Bool)

(assert (=> b!2187498 (= c!347953 (isEmpty!14530 (_1!14910 lt!816697)))))

(declare-fun bm!131670 () Bool)

(declare-fun call!131678 () List!25360)

(assert (=> bm!131670 (= call!131678 (tail!3142 call!131614))))

(declare-fun b!2187499 () Bool)

(assert (=> b!2187499 (= e!1397899 (tuple2!25081 Nil!25276 lt!816118))))

(declare-fun b!2187500 () Bool)

(declare-fun Unit!38414 () Unit!38401)

(assert (=> b!2187500 (= e!1397895 Unit!38414)))

(declare-fun lt!816695 () Unit!38401)

(declare-fun call!131674 () Unit!38401)

(assert (=> b!2187500 (= lt!816695 call!131674)))

(declare-fun call!131679 () Bool)

(assert (=> b!2187500 call!131679))

(declare-fun lt!816692 () Unit!38401)

(assert (=> b!2187500 (= lt!816692 lt!816695)))

(declare-fun lt!816706 () Unit!38401)

(assert (=> b!2187500 (= lt!816706 call!131673)))

(assert (=> b!2187500 (= lt!816118 lt!816467)))

(declare-fun lt!816711 () Unit!38401)

(assert (=> b!2187500 (= lt!816711 lt!816706)))

(assert (=> b!2187500 false))

(declare-fun b!2187501 () Bool)

(declare-fun e!1397893 () tuple2!25080)

(assert (=> b!2187501 (= e!1397899 e!1397893)))

(declare-fun c!347950 () Bool)

(assert (=> b!2187501 (= c!347950 (= (+ (size!19751 Nil!25276) 1) (size!19751 lt!816118)))))

(declare-fun bm!131671 () Bool)

(assert (=> bm!131671 (= call!131679 (isPrefix!2165 lt!816118 lt!816118))))

(declare-fun lt!816700 () List!25360)

(declare-fun bm!131672 () Bool)

(assert (=> bm!131672 (= call!131677 (findLongestMatchInner!674 call!131676 lt!816700 (+ (size!19751 Nil!25276) 1 1) call!131678 lt!816118 (size!19751 lt!816118)))))

(declare-fun b!2187502 () Bool)

(declare-fun c!347954 () Bool)

(assert (=> b!2187502 (= c!347954 call!131672)))

(declare-fun lt!816712 () Unit!38401)

(declare-fun lt!816703 () Unit!38401)

(assert (=> b!2187502 (= lt!816712 lt!816703)))

(assert (=> b!2187502 (= lt!816118 lt!816467)))

(assert (=> b!2187502 (= lt!816703 call!131673)))

(declare-fun lt!816689 () Unit!38401)

(declare-fun lt!816694 () Unit!38401)

(assert (=> b!2187502 (= lt!816689 lt!816694)))

(assert (=> b!2187502 call!131679))

(assert (=> b!2187502 (= lt!816694 call!131674)))

(declare-fun e!1397894 () tuple2!25080)

(assert (=> b!2187502 (= e!1397893 e!1397894)))

(declare-fun b!2187503 () Bool)

(assert (=> b!2187503 (= e!1397894 (tuple2!25081 Nil!25276 lt!816118))))

(declare-fun bm!131673 () Bool)

(assert (=> bm!131673 (= call!131675 (head!4670 call!131614))))

(declare-fun b!2187504 () Bool)

(assert (=> b!2187504 (= e!1397894 (tuple2!25081 lt!816467 Nil!25276))))

(declare-fun bm!131674 () Bool)

(assert (=> bm!131674 (= call!131674 (lemmaIsPrefixRefl!1425 lt!816118 lt!816118))))

(declare-fun b!2187505 () Bool)

(declare-fun c!347951 () Bool)

(assert (=> b!2187505 (= c!347951 call!131672)))

(declare-fun lt!816693 () Unit!38401)

(declare-fun lt!816708 () Unit!38401)

(assert (=> b!2187505 (= lt!816693 lt!816708)))

(declare-fun lt!816713 () List!25360)

(declare-fun lt!816696 () C!12244)

(assert (=> b!2187505 (= (++!6410 (++!6410 lt!816467 (Cons!25276 lt!816696 Nil!25276)) lt!816713) lt!816118)))

(assert (=> b!2187505 (= lt!816708 (lemmaMoveElementToOtherListKeepsConcatEq!523 lt!816467 lt!816696 lt!816713 lt!816118))))

(assert (=> b!2187505 (= lt!816713 (tail!3142 call!131614))))

(assert (=> b!2187505 (= lt!816696 (head!4670 call!131614))))

(declare-fun lt!816707 () Unit!38401)

(declare-fun lt!816691 () Unit!38401)

(assert (=> b!2187505 (= lt!816707 lt!816691)))

(assert (=> b!2187505 (isPrefix!2165 (++!6410 lt!816467 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 lt!816467)) Nil!25276)) lt!816118)))

(assert (=> b!2187505 (= lt!816691 (lemmaAddHeadSuffixToPrefixStillPrefix!395 lt!816467 lt!816118))))

(declare-fun lt!816705 () Unit!38401)

(declare-fun lt!816704 () Unit!38401)

(assert (=> b!2187505 (= lt!816705 lt!816704)))

(assert (=> b!2187505 (= lt!816704 (lemmaAddHeadSuffixToPrefixStillPrefix!395 lt!816467 lt!816118))))

(assert (=> b!2187505 (= lt!816700 (++!6410 lt!816467 (Cons!25276 (head!4670 call!131614) Nil!25276)))))

(declare-fun lt!816698 () Unit!38401)

(assert (=> b!2187505 (= lt!816698 e!1397895)))

(declare-fun c!347949 () Bool)

(assert (=> b!2187505 (= c!347949 (= (size!19751 lt!816467) (size!19751 lt!816118)))))

(declare-fun lt!816690 () Unit!38401)

(declare-fun lt!816688 () Unit!38401)

(assert (=> b!2187505 (= lt!816690 lt!816688)))

(assert (=> b!2187505 (<= (size!19751 lt!816467) (size!19751 lt!816118))))

(assert (=> b!2187505 (= lt!816688 (lemmaIsPrefixThenSmallerEqSize!198 lt!816467 lt!816118))))

(assert (=> b!2187505 (= e!1397893 e!1397898)))

(declare-fun b!2187506 () Bool)

(assert (=> b!2187506 (= e!1397900 lt!816697)))

(declare-fun b!2187507 () Bool)

(assert (=> b!2187507 (= e!1397897 e!1397896)))

(declare-fun res!939841 () Bool)

(assert (=> b!2187507 (=> res!939841 e!1397896)))

(assert (=> b!2187507 (= res!939841 (isEmpty!14530 (_1!14910 lt!816699)))))

(assert (= (and d!655614 c!347952) b!2187499))

(assert (= (and d!655614 (not c!347952)) b!2187501))

(assert (= (and b!2187501 c!347950) b!2187502))

(assert (= (and b!2187501 (not c!347950)) b!2187505))

(assert (= (and b!2187502 c!347954) b!2187504))

(assert (= (and b!2187502 (not c!347954)) b!2187503))

(assert (= (and b!2187505 c!347949) b!2187500))

(assert (= (and b!2187505 (not c!347949)) b!2187494))

(assert (= (and b!2187505 c!347951) b!2187498))

(assert (= (and b!2187505 (not c!347951)) b!2187497))

(assert (= (and b!2187498 c!347953) b!2187495))

(assert (= (and b!2187498 (not c!347953)) b!2187506))

(assert (= (or b!2187498 b!2187497) bm!131673))

(assert (= (or b!2187498 b!2187497) bm!131670))

(assert (= (or b!2187498 b!2187497) bm!131667))

(assert (= (or b!2187498 b!2187497) bm!131672))

(assert (= (or b!2187502 b!2187500) bm!131671))

(assert (= (or b!2187502 b!2187500) bm!131674))

(assert (= (or b!2187502 b!2187500) bm!131668))

(assert (= (or b!2187502 b!2187505) bm!131669))

(assert (= (and d!655614 res!939842) b!2187507))

(assert (= (and b!2187507 (not res!939841)) b!2187496))

(declare-fun m!2630259 () Bool)

(assert (=> bm!131668 m!2630259))

(declare-fun m!2630261 () Bool)

(assert (=> bm!131667 m!2630261))

(declare-fun m!2630263 () Bool)

(assert (=> b!2187496 m!2630263))

(declare-fun m!2630265 () Bool)

(assert (=> b!2187496 m!2630265))

(declare-fun m!2630267 () Bool)

(assert (=> bm!131673 m!2630267))

(declare-fun m!2630269 () Bool)

(assert (=> bm!131669 m!2630269))

(declare-fun m!2630271 () Bool)

(assert (=> d!655614 m!2630271))

(declare-fun m!2630273 () Bool)

(assert (=> d!655614 m!2630273))

(declare-fun m!2630275 () Bool)

(assert (=> d!655614 m!2630275))

(declare-fun m!2630277 () Bool)

(assert (=> d!655614 m!2630277))

(declare-fun m!2630279 () Bool)

(assert (=> d!655614 m!2630279))

(declare-fun m!2630281 () Bool)

(assert (=> d!655614 m!2630281))

(assert (=> d!655614 m!2630271))

(declare-fun m!2630283 () Bool)

(assert (=> d!655614 m!2630283))

(declare-fun m!2630285 () Bool)

(assert (=> d!655614 m!2630285))

(assert (=> bm!131674 m!2629351))

(assert (=> bm!131671 m!2629353))

(declare-fun m!2630287 () Bool)

(assert (=> b!2187498 m!2630287))

(assert (=> bm!131672 m!2628761))

(declare-fun m!2630289 () Bool)

(assert (=> bm!131672 m!2630289))

(declare-fun m!2630291 () Bool)

(assert (=> bm!131670 m!2630291))

(declare-fun m!2630293 () Bool)

(assert (=> b!2187507 m!2630293))

(declare-fun m!2630295 () Bool)

(assert (=> b!2187505 m!2630295))

(assert (=> b!2187505 m!2630291))

(assert (=> b!2187505 m!2630285))

(declare-fun m!2630297 () Bool)

(assert (=> b!2187505 m!2630297))

(assert (=> b!2187505 m!2630285))

(declare-fun m!2630299 () Bool)

(assert (=> b!2187505 m!2630299))

(declare-fun m!2630301 () Bool)

(assert (=> b!2187505 m!2630301))

(declare-fun m!2630303 () Bool)

(assert (=> b!2187505 m!2630303))

(assert (=> b!2187505 m!2628761))

(declare-fun m!2630305 () Bool)

(assert (=> b!2187505 m!2630305))

(declare-fun m!2630307 () Bool)

(assert (=> b!2187505 m!2630307))

(declare-fun m!2630309 () Bool)

(assert (=> b!2187505 m!2630309))

(assert (=> b!2187505 m!2630303))

(declare-fun m!2630311 () Bool)

(assert (=> b!2187505 m!2630311))

(assert (=> b!2187505 m!2630307))

(assert (=> b!2187505 m!2630265))

(assert (=> b!2187505 m!2630267))

(assert (=> bm!131608 d!655614))

(declare-fun d!655622 () Bool)

(assert (=> d!655622 (= (head!4670 (_1!14910 lt!816097)) (h!30677 (_1!14910 lt!816097)))))

(assert (=> b!2186471 d!655622))

(declare-fun d!655624 () Bool)

(assert (=> d!655624 (= (isEmpty!14530 (_1!14910 lt!816466)) ((_ is Nil!25276) (_1!14910 lt!816466)))))

(assert (=> b!2186773 d!655624))

(declare-fun b!2187517 () Bool)

(declare-fun e!1397910 () Bool)

(assert (=> b!2187517 (= e!1397910 (nullable!1713 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097)))))))

(declare-fun bm!131678 () Bool)

(declare-fun call!131683 () Bool)

(assert (=> bm!131678 (= call!131683 (isEmpty!14530 (tail!3142 (_1!14910 lt!816097))))))

(declare-fun b!2187518 () Bool)

(declare-fun res!939854 () Bool)

(declare-fun e!1397913 () Bool)

(assert (=> b!2187518 (=> (not res!939854) (not e!1397913))))

(assert (=> b!2187518 (= res!939854 (isEmpty!14530 (tail!3142 (tail!3142 (_1!14910 lt!816097)))))))

(declare-fun b!2187520 () Bool)

(declare-fun e!1397911 () Bool)

(assert (=> b!2187520 (= e!1397911 (not (= (head!4670 (tail!3142 (_1!14910 lt!816097))) (c!347561 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097)))))))))

(declare-fun b!2187521 () Bool)

(declare-fun e!1397912 () Bool)

(declare-fun lt!816714 () Bool)

(assert (=> b!2187521 (= e!1397912 (not lt!816714))))

(declare-fun b!2187522 () Bool)

(declare-fun e!1397908 () Bool)

(assert (=> b!2187522 (= e!1397908 e!1397912)))

(declare-fun c!347958 () Bool)

(assert (=> b!2187522 (= c!347958 ((_ is EmptyLang!6049) (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097)))))))

(declare-fun b!2187523 () Bool)

(assert (=> b!2187523 (= e!1397908 (= lt!816714 call!131683))))

(declare-fun b!2187524 () Bool)

(declare-fun e!1397914 () Bool)

(declare-fun e!1397909 () Bool)

(assert (=> b!2187524 (= e!1397914 e!1397909)))

(declare-fun res!939855 () Bool)

(assert (=> b!2187524 (=> (not res!939855) (not e!1397909))))

(assert (=> b!2187524 (= res!939855 (not lt!816714))))

(declare-fun b!2187525 () Bool)

(declare-fun res!939851 () Bool)

(assert (=> b!2187525 (=> res!939851 e!1397914)))

(assert (=> b!2187525 (= res!939851 e!1397913)))

(declare-fun res!939848 () Bool)

(assert (=> b!2187525 (=> (not res!939848) (not e!1397913))))

(assert (=> b!2187525 (= res!939848 lt!816714)))

(declare-fun b!2187526 () Bool)

(assert (=> b!2187526 (= e!1397913 (= (head!4670 (tail!3142 (_1!14910 lt!816097))) (c!347561 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097))))))))

(declare-fun b!2187527 () Bool)

(declare-fun res!939852 () Bool)

(assert (=> b!2187527 (=> res!939852 e!1397914)))

(assert (=> b!2187527 (= res!939852 (not ((_ is ElementMatch!6049) (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097))))))))

(assert (=> b!2187527 (= e!1397912 e!1397914)))

(declare-fun b!2187528 () Bool)

(assert (=> b!2187528 (= e!1397910 (matchR!2798 (derivativeStep!1456 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097))) (head!4670 (tail!3142 (_1!14910 lt!816097)))) (tail!3142 (tail!3142 (_1!14910 lt!816097)))))))

(declare-fun d!655626 () Bool)

(assert (=> d!655626 e!1397908))

(declare-fun c!347959 () Bool)

(assert (=> d!655626 (= c!347959 ((_ is EmptyExpr!6049) (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097)))))))

(assert (=> d!655626 (= lt!816714 e!1397910)))

(declare-fun c!347957 () Bool)

(assert (=> d!655626 (= c!347957 (isEmpty!14530 (tail!3142 (_1!14910 lt!816097))))))

(assert (=> d!655626 (validRegex!2325 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097))))))

(assert (=> d!655626 (= (matchR!2798 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097))) (tail!3142 (_1!14910 lt!816097))) lt!816714)))

(declare-fun b!2187519 () Bool)

(declare-fun res!939853 () Bool)

(assert (=> b!2187519 (=> (not res!939853) (not e!1397913))))

(assert (=> b!2187519 (= res!939853 (not call!131683))))

(declare-fun b!2187529 () Bool)

(declare-fun res!939849 () Bool)

(assert (=> b!2187529 (=> res!939849 e!1397911)))

(assert (=> b!2187529 (= res!939849 (not (isEmpty!14530 (tail!3142 (tail!3142 (_1!14910 lt!816097))))))))

(declare-fun b!2187530 () Bool)

(assert (=> b!2187530 (= e!1397909 e!1397911)))

(declare-fun res!939850 () Bool)

(assert (=> b!2187530 (=> res!939850 e!1397911)))

(assert (=> b!2187530 (= res!939850 call!131683)))

(assert (= (and d!655626 c!347957) b!2187517))

(assert (= (and d!655626 (not c!347957)) b!2187528))

(assert (= (and d!655626 c!347959) b!2187523))

(assert (= (and d!655626 (not c!347959)) b!2187522))

(assert (= (and b!2187522 c!347958) b!2187521))

(assert (= (and b!2187522 (not c!347958)) b!2187527))

(assert (= (and b!2187527 (not res!939852)) b!2187525))

(assert (= (and b!2187525 res!939848) b!2187519))

(assert (= (and b!2187519 res!939853) b!2187518))

(assert (= (and b!2187518 res!939854) b!2187526))

(assert (= (and b!2187525 (not res!939851)) b!2187524))

(assert (= (and b!2187524 res!939855) b!2187530))

(assert (= (and b!2187530 (not res!939850)) b!2187529))

(assert (= (and b!2187529 (not res!939849)) b!2187520))

(assert (= (or b!2187523 b!2187519 b!2187530) bm!131678))

(assert (=> b!2187529 m!2628881))

(assert (=> b!2187529 m!2630077))

(assert (=> b!2187529 m!2630077))

(declare-fun m!2630313 () Bool)

(assert (=> b!2187529 m!2630313))

(assert (=> bm!131678 m!2628881))

(assert (=> bm!131678 m!2629117))

(assert (=> b!2187526 m!2628881))

(assert (=> b!2187526 m!2630083))

(assert (=> b!2187520 m!2628881))

(assert (=> b!2187520 m!2630083))

(assert (=> b!2187517 m!2629119))

(declare-fun m!2630315 () Bool)

(assert (=> b!2187517 m!2630315))

(assert (=> d!655626 m!2628881))

(assert (=> d!655626 m!2629117))

(assert (=> d!655626 m!2629119))

(declare-fun m!2630317 () Bool)

(assert (=> d!655626 m!2630317))

(assert (=> b!2187528 m!2628881))

(assert (=> b!2187528 m!2630083))

(assert (=> b!2187528 m!2629119))

(assert (=> b!2187528 m!2630083))

(declare-fun m!2630319 () Bool)

(assert (=> b!2187528 m!2630319))

(assert (=> b!2187528 m!2628881))

(assert (=> b!2187528 m!2630077))

(assert (=> b!2187528 m!2630319))

(assert (=> b!2187528 m!2630077))

(declare-fun m!2630321 () Bool)

(assert (=> b!2187528 m!2630321))

(assert (=> b!2187518 m!2628881))

(assert (=> b!2187518 m!2630077))

(assert (=> b!2187518 m!2630077))

(assert (=> b!2187518 m!2630313))

(assert (=> b!2186479 d!655626))

(declare-fun d!655628 () Bool)

(declare-fun lt!816715 () Regex!6049)

(assert (=> d!655628 (validRegex!2325 lt!816715)))

(declare-fun e!1397916 () Regex!6049)

(assert (=> d!655628 (= lt!816715 e!1397916)))

(declare-fun c!347962 () Bool)

(assert (=> d!655628 (= c!347962 (or ((_ is EmptyExpr!6049) r!12534) ((_ is EmptyLang!6049) r!12534)))))

(assert (=> d!655628 (validRegex!2325 r!12534)))

(assert (=> d!655628 (= (derivativeStep!1456 r!12534 (head!4670 (_1!14910 lt!816097))) lt!816715)))

(declare-fun b!2187531 () Bool)

(declare-fun e!1397918 () Regex!6049)

(declare-fun e!1397915 () Regex!6049)

(assert (=> b!2187531 (= e!1397918 e!1397915)))

(declare-fun c!347960 () Bool)

(assert (=> b!2187531 (= c!347960 ((_ is Star!6049) r!12534))))

(declare-fun call!131685 () Regex!6049)

(declare-fun bm!131679 () Bool)

(declare-fun c!347961 () Bool)

(assert (=> bm!131679 (= call!131685 (derivativeStep!1456 (ite c!347961 (regTwo!12611 r!12534) (regTwo!12610 r!12534)) (head!4670 (_1!14910 lt!816097))))))

(declare-fun bm!131680 () Bool)

(declare-fun call!131687 () Regex!6049)

(assert (=> bm!131680 (= call!131687 (derivativeStep!1456 (ite c!347961 (regOne!12611 r!12534) (ite c!347960 (reg!6378 r!12534) (regOne!12610 r!12534))) (head!4670 (_1!14910 lt!816097))))))

(declare-fun b!2187532 () Bool)

(declare-fun e!1397919 () Regex!6049)

(declare-fun call!131686 () Regex!6049)

(assert (=> b!2187532 (= e!1397919 (Union!6049 (Concat!10351 call!131686 (regTwo!12610 r!12534)) EmptyLang!6049))))

(declare-fun bm!131681 () Bool)

(declare-fun call!131684 () Regex!6049)

(assert (=> bm!131681 (= call!131684 call!131687)))

(declare-fun b!2187533 () Bool)

(declare-fun c!347964 () Bool)

(assert (=> b!2187533 (= c!347964 (nullable!1713 (regOne!12610 r!12534)))))

(assert (=> b!2187533 (= e!1397915 e!1397919)))

(declare-fun b!2187534 () Bool)

(assert (=> b!2187534 (= e!1397915 (Concat!10351 call!131684 r!12534))))

(declare-fun b!2187535 () Bool)

(declare-fun e!1397917 () Regex!6049)

(assert (=> b!2187535 (= e!1397917 (ite (= (head!4670 (_1!14910 lt!816097)) (c!347561 r!12534)) EmptyExpr!6049 EmptyLang!6049))))

(declare-fun b!2187536 () Bool)

(assert (=> b!2187536 (= c!347961 ((_ is Union!6049) r!12534))))

(assert (=> b!2187536 (= e!1397917 e!1397918)))

(declare-fun bm!131682 () Bool)

(assert (=> bm!131682 (= call!131686 call!131684)))

(declare-fun b!2187537 () Bool)

(assert (=> b!2187537 (= e!1397916 EmptyLang!6049)))

(declare-fun b!2187538 () Bool)

(assert (=> b!2187538 (= e!1397919 (Union!6049 (Concat!10351 call!131686 (regTwo!12610 r!12534)) call!131685))))

(declare-fun b!2187539 () Bool)

(assert (=> b!2187539 (= e!1397916 e!1397917)))

(declare-fun c!347963 () Bool)

(assert (=> b!2187539 (= c!347963 ((_ is ElementMatch!6049) r!12534))))

(declare-fun b!2187540 () Bool)

(assert (=> b!2187540 (= e!1397918 (Union!6049 call!131687 call!131685))))

(assert (= (and d!655628 c!347962) b!2187537))

(assert (= (and d!655628 (not c!347962)) b!2187539))

(assert (= (and b!2187539 c!347963) b!2187535))

(assert (= (and b!2187539 (not c!347963)) b!2187536))

(assert (= (and b!2187536 c!347961) b!2187540))

(assert (= (and b!2187536 (not c!347961)) b!2187531))

(assert (= (and b!2187531 c!347960) b!2187534))

(assert (= (and b!2187531 (not c!347960)) b!2187533))

(assert (= (and b!2187533 c!347964) b!2187538))

(assert (= (and b!2187533 (not c!347964)) b!2187532))

(assert (= (or b!2187538 b!2187532) bm!131682))

(assert (= (or b!2187534 bm!131682) bm!131681))

(assert (= (or b!2187540 bm!131681) bm!131680))

(assert (= (or b!2187540 b!2187538) bm!131679))

(declare-fun m!2630323 () Bool)

(assert (=> d!655628 m!2630323))

(assert (=> d!655628 m!2628783))

(assert (=> bm!131679 m!2628877))

(declare-fun m!2630325 () Bool)

(assert (=> bm!131679 m!2630325))

(assert (=> bm!131680 m!2628877))

(declare-fun m!2630327 () Bool)

(assert (=> bm!131680 m!2630327))

(assert (=> b!2187533 m!2630055))

(assert (=> b!2186479 d!655628))

(assert (=> b!2186479 d!655622))

(assert (=> b!2186479 d!655378))

(declare-fun d!655630 () Bool)

(declare-fun lt!816720 () Bool)

(declare-fun exists!781 (List!25362 Int) Bool)

(assert (=> d!655630 (= lt!816720 (exists!781 (toList!1232 z!4055) lambda!82103))))

(declare-fun choose!12955 ((InoxSet Context!3238) Int) Bool)

(assert (=> d!655630 (= lt!816720 (choose!12955 z!4055 lambda!82103))))

(assert (=> d!655630 (= (exists!780 z!4055 lambda!82103) lt!816720)))

(declare-fun bs!448197 () Bool)

(assert (= bs!448197 d!655630))

(assert (=> bs!448197 m!2628817))

(assert (=> bs!448197 m!2628817))

(declare-fun m!2630329 () Bool)

(assert (=> bs!448197 m!2630329))

(declare-fun m!2630331 () Bool)

(assert (=> bs!448197 m!2630331))

(assert (=> d!655264 d!655630))

(declare-fun d!655632 () Bool)

(declare-fun lt!816721 () Regex!6049)

(assert (=> d!655632 (validRegex!2325 lt!816721)))

(declare-fun e!1397933 () Regex!6049)

(assert (=> d!655632 (= lt!816721 e!1397933)))

(declare-fun c!347975 () Bool)

(assert (=> d!655632 (= c!347975 (or ((_ is EmptyExpr!6049) r!12534) ((_ is EmptyLang!6049) r!12534)))))

(assert (=> d!655632 (validRegex!2325 r!12534)))

(assert (=> d!655632 (= (derivativeStep!1456 r!12534 call!131611) lt!816721)))

(declare-fun b!2187561 () Bool)

(declare-fun e!1397935 () Regex!6049)

(declare-fun e!1397932 () Regex!6049)

(assert (=> b!2187561 (= e!1397935 e!1397932)))

(declare-fun c!347973 () Bool)

(assert (=> b!2187561 (= c!347973 ((_ is Star!6049) r!12534))))

(declare-fun bm!131683 () Bool)

(declare-fun c!347974 () Bool)

(declare-fun call!131689 () Regex!6049)

(assert (=> bm!131683 (= call!131689 (derivativeStep!1456 (ite c!347974 (regTwo!12611 r!12534) (regTwo!12610 r!12534)) call!131611))))

(declare-fun bm!131684 () Bool)

(declare-fun call!131691 () Regex!6049)

(assert (=> bm!131684 (= call!131691 (derivativeStep!1456 (ite c!347974 (regOne!12611 r!12534) (ite c!347973 (reg!6378 r!12534) (regOne!12610 r!12534))) call!131611))))

(declare-fun b!2187562 () Bool)

(declare-fun e!1397936 () Regex!6049)

(declare-fun call!131690 () Regex!6049)

(assert (=> b!2187562 (= e!1397936 (Union!6049 (Concat!10351 call!131690 (regTwo!12610 r!12534)) EmptyLang!6049))))

(declare-fun bm!131685 () Bool)

(declare-fun call!131688 () Regex!6049)

(assert (=> bm!131685 (= call!131688 call!131691)))

(declare-fun b!2187563 () Bool)

(declare-fun c!347977 () Bool)

(assert (=> b!2187563 (= c!347977 (nullable!1713 (regOne!12610 r!12534)))))

(assert (=> b!2187563 (= e!1397932 e!1397936)))

(declare-fun b!2187564 () Bool)

(assert (=> b!2187564 (= e!1397932 (Concat!10351 call!131688 r!12534))))

(declare-fun b!2187565 () Bool)

(declare-fun e!1397934 () Regex!6049)

(assert (=> b!2187565 (= e!1397934 (ite (= call!131611 (c!347561 r!12534)) EmptyExpr!6049 EmptyLang!6049))))

(declare-fun b!2187566 () Bool)

(assert (=> b!2187566 (= c!347974 ((_ is Union!6049) r!12534))))

(assert (=> b!2187566 (= e!1397934 e!1397935)))

(declare-fun bm!131686 () Bool)

(assert (=> bm!131686 (= call!131690 call!131688)))

(declare-fun b!2187567 () Bool)

(assert (=> b!2187567 (= e!1397933 EmptyLang!6049)))

(declare-fun b!2187568 () Bool)

(assert (=> b!2187568 (= e!1397936 (Union!6049 (Concat!10351 call!131690 (regTwo!12610 r!12534)) call!131689))))

(declare-fun b!2187569 () Bool)

(assert (=> b!2187569 (= e!1397933 e!1397934)))

(declare-fun c!347976 () Bool)

(assert (=> b!2187569 (= c!347976 ((_ is ElementMatch!6049) r!12534))))

(declare-fun b!2187570 () Bool)

(assert (=> b!2187570 (= e!1397935 (Union!6049 call!131691 call!131689))))

(assert (= (and d!655632 c!347975) b!2187567))

(assert (= (and d!655632 (not c!347975)) b!2187569))

(assert (= (and b!2187569 c!347976) b!2187565))

(assert (= (and b!2187569 (not c!347976)) b!2187566))

(assert (= (and b!2187566 c!347974) b!2187570))

(assert (= (and b!2187566 (not c!347974)) b!2187561))

(assert (= (and b!2187561 c!347973) b!2187564))

(assert (= (and b!2187561 (not c!347973)) b!2187563))

(assert (= (and b!2187563 c!347977) b!2187568))

(assert (= (and b!2187563 (not c!347977)) b!2187562))

(assert (= (or b!2187568 b!2187562) bm!131686))

(assert (= (or b!2187564 bm!131686) bm!131685))

(assert (= (or b!2187570 bm!131685) bm!131684))

(assert (= (or b!2187570 b!2187568) bm!131683))

(declare-fun m!2630333 () Bool)

(assert (=> d!655632 m!2630333))

(assert (=> d!655632 m!2628783))

(declare-fun m!2630335 () Bool)

(assert (=> bm!131683 m!2630335))

(declare-fun m!2630337 () Bool)

(assert (=> bm!131684 m!2630337))

(assert (=> b!2187563 m!2630055))

(assert (=> bm!131603 d!655632))

(declare-fun d!655634 () Bool)

(declare-fun e!1397938 () Bool)

(assert (=> d!655634 e!1397938))

(declare-fun res!939860 () Bool)

(assert (=> d!655634 (=> res!939860 e!1397938)))

(declare-fun lt!816722 () Bool)

(assert (=> d!655634 (= res!939860 (not lt!816722))))

(declare-fun e!1397937 () Bool)

(assert (=> d!655634 (= lt!816722 e!1397937)))

(declare-fun res!939861 () Bool)

(assert (=> d!655634 (=> res!939861 e!1397937)))

(assert (=> d!655634 (= res!939861 ((_ is Nil!25276) (_1!14910 lt!816097)))))

(assert (=> d!655634 (= (isPrefix!2165 (_1!14910 lt!816097) (++!6410 (_1!14910 lt!816097) (_2!14910 lt!816097))) lt!816722)))

(declare-fun b!2187574 () Bool)

(assert (=> b!2187574 (= e!1397938 (>= (size!19751 (++!6410 (_1!14910 lt!816097) (_2!14910 lt!816097))) (size!19751 (_1!14910 lt!816097))))))

(declare-fun b!2187573 () Bool)

(declare-fun e!1397939 () Bool)

(assert (=> b!2187573 (= e!1397939 (isPrefix!2165 (tail!3142 (_1!14910 lt!816097)) (tail!3142 (++!6410 (_1!14910 lt!816097) (_2!14910 lt!816097)))))))

(declare-fun b!2187571 () Bool)

(assert (=> b!2187571 (= e!1397937 e!1397939)))

(declare-fun res!939863 () Bool)

(assert (=> b!2187571 (=> (not res!939863) (not e!1397939))))

(assert (=> b!2187571 (= res!939863 (not ((_ is Nil!25276) (++!6410 (_1!14910 lt!816097) (_2!14910 lt!816097)))))))

(declare-fun b!2187572 () Bool)

(declare-fun res!939862 () Bool)

(assert (=> b!2187572 (=> (not res!939862) (not e!1397939))))

(assert (=> b!2187572 (= res!939862 (= (head!4670 (_1!14910 lt!816097)) (head!4670 (++!6410 (_1!14910 lt!816097) (_2!14910 lt!816097)))))))

(assert (= (and d!655634 (not res!939861)) b!2187571))

(assert (= (and b!2187571 res!939863) b!2187572))

(assert (= (and b!2187572 res!939862) b!2187573))

(assert (= (and d!655634 (not res!939860)) b!2187574))

(assert (=> b!2187574 m!2628801))

(declare-fun m!2630339 () Bool)

(assert (=> b!2187574 m!2630339))

(assert (=> b!2187574 m!2628799))

(assert (=> b!2187573 m!2628881))

(assert (=> b!2187573 m!2628801))

(declare-fun m!2630341 () Bool)

(assert (=> b!2187573 m!2630341))

(assert (=> b!2187573 m!2628881))

(assert (=> b!2187573 m!2630341))

(declare-fun m!2630343 () Bool)

(assert (=> b!2187573 m!2630343))

(assert (=> b!2187572 m!2628877))

(assert (=> b!2187572 m!2628801))

(declare-fun m!2630345 () Bool)

(assert (=> b!2187572 m!2630345))

(assert (=> d!655258 d!655634))

(assert (=> d!655258 d!655268))

(declare-fun d!655636 () Bool)

(assert (=> d!655636 (isPrefix!2165 (_1!14910 lt!816097) (++!6410 (_1!14910 lt!816097) (_2!14910 lt!816097)))))

(assert (=> d!655636 true))

(declare-fun _$46!1285 () Unit!38401)

(assert (=> d!655636 (= (choose!12941 (_1!14910 lt!816097) (_2!14910 lt!816097)) _$46!1285)))

(declare-fun bs!448199 () Bool)

(assert (= bs!448199 d!655636))

(assert (=> bs!448199 m!2628801))

(assert (=> bs!448199 m!2628801))

(assert (=> bs!448199 m!2629399))

(assert (=> d!655258 d!655636))

(declare-fun d!655638 () Bool)

(declare-fun lt!816724 () Int)

(assert (=> d!655638 (>= lt!816724 0)))

(declare-fun e!1397946 () Int)

(assert (=> d!655638 (= lt!816724 e!1397946)))

(declare-fun c!347982 () Bool)

(assert (=> d!655638 (= c!347982 ((_ is Nil!25276) lt!816504))))

(assert (=> d!655638 (= (size!19751 lt!816504) lt!816724)))

(declare-fun b!2187585 () Bool)

(assert (=> b!2187585 (= e!1397946 0)))

(declare-fun b!2187586 () Bool)

(assert (=> b!2187586 (= e!1397946 (+ 1 (size!19751 (t!197950 lt!816504))))))

(assert (= (and d!655638 c!347982) b!2187585))

(assert (= (and d!655638 (not c!347982)) b!2187586))

(declare-fun m!2630347 () Bool)

(assert (=> b!2187586 m!2630347))

(assert (=> b!2186850 d!655638))

(assert (=> d!655108 d!655526))

(assert (=> d!655108 d!655168))

(declare-fun b!2187605 () Bool)

(declare-fun res!939881 () Bool)

(declare-fun e!1397954 () Bool)

(assert (=> b!2187605 (=> (not res!939881) (not e!1397954))))

(assert (=> b!2187605 (= res!939881 (isBalanced!2546 (left!19400 (c!347560 input!5540))))))

(declare-fun d!655640 () Bool)

(declare-fun res!939883 () Bool)

(declare-fun e!1397955 () Bool)

(assert (=> d!655640 (=> res!939883 e!1397955)))

(assert (=> d!655640 (= res!939883 (not ((_ is Node!8185) (c!347560 input!5540))))))

(assert (=> d!655640 (= (isBalanced!2546 (c!347560 input!5540)) e!1397955)))

(declare-fun b!2187606 () Bool)

(declare-fun res!939882 () Bool)

(assert (=> b!2187606 (=> (not res!939882) (not e!1397954))))

(assert (=> b!2187606 (= res!939882 (<= (- (height!1246 (left!19400 (c!347560 input!5540))) (height!1246 (right!19730 (c!347560 input!5540)))) 1))))

(declare-fun b!2187607 () Bool)

(assert (=> b!2187607 (= e!1397954 (not (isEmpty!14531 (right!19730 (c!347560 input!5540)))))))

(declare-fun b!2187608 () Bool)

(declare-fun res!939878 () Bool)

(assert (=> b!2187608 (=> (not res!939878) (not e!1397954))))

(assert (=> b!2187608 (= res!939878 (not (isEmpty!14531 (left!19400 (c!347560 input!5540)))))))

(declare-fun b!2187609 () Bool)

(declare-fun res!939879 () Bool)

(assert (=> b!2187609 (=> (not res!939879) (not e!1397954))))

(assert (=> b!2187609 (= res!939879 (isBalanced!2546 (right!19730 (c!347560 input!5540))))))

(declare-fun b!2187610 () Bool)

(assert (=> b!2187610 (= e!1397955 e!1397954)))

(declare-fun res!939880 () Bool)

(assert (=> b!2187610 (=> (not res!939880) (not e!1397954))))

(assert (=> b!2187610 (= res!939880 (<= (- 1) (- (height!1246 (left!19400 (c!347560 input!5540))) (height!1246 (right!19730 (c!347560 input!5540))))))))

(assert (= (and d!655640 (not res!939883)) b!2187610))

(assert (= (and b!2187610 res!939880) b!2187606))

(assert (= (and b!2187606 res!939882) b!2187605))

(assert (= (and b!2187605 res!939881) b!2187609))

(assert (= (and b!2187609 res!939879) b!2187608))

(assert (= (and b!2187608 res!939878) b!2187607))

(declare-fun m!2630377 () Bool)

(assert (=> b!2187605 m!2630377))

(declare-fun m!2630379 () Bool)

(assert (=> b!2187609 m!2630379))

(assert (=> b!2187610 m!2629717))

(assert (=> b!2187610 m!2629719))

(declare-fun m!2630381 () Bool)

(assert (=> b!2187608 m!2630381))

(declare-fun m!2630383 () Bool)

(assert (=> b!2187607 m!2630383))

(assert (=> b!2187606 m!2629717))

(assert (=> b!2187606 m!2629719))

(assert (=> d!655182 d!655640))

(declare-fun d!655648 () Bool)

(declare-fun lt!816730 () Int)

(assert (=> d!655648 (>= lt!816730 0)))

(declare-fun e!1397958 () Int)

(assert (=> d!655648 (= lt!816730 e!1397958)))

(declare-fun c!347988 () Bool)

(assert (=> d!655648 (= c!347988 ((_ is Nil!25276) (t!197950 lt!816118)))))

(assert (=> d!655648 (= (size!19751 (t!197950 lt!816118)) lt!816730)))

(declare-fun b!2187615 () Bool)

(assert (=> b!2187615 (= e!1397958 0)))

(declare-fun b!2187616 () Bool)

(assert (=> b!2187616 (= e!1397958 (+ 1 (size!19751 (t!197950 (t!197950 lt!816118)))))))

(assert (= (and d!655648 c!347988) b!2187615))

(assert (= (and d!655648 (not c!347988)) b!2187616))

(declare-fun m!2630389 () Bool)

(assert (=> b!2187616 m!2630389))

(assert (=> b!2186778 d!655648))

(assert (=> b!2186179 d!655160))

(assert (=> d!655114 d!655184))

(assert (=> d!655114 d!655106))

(declare-fun d!655654 () Bool)

(assert (=> d!655654 (= (matchR!2798 r!12534 (_1!14910 lt!816097)) (matchZipper!165 z!4055 (_1!14910 lt!816097)))))

(assert (=> d!655654 true))

(declare-fun _$44!1289 () Unit!38401)

(assert (=> d!655654 (= (choose!12939 z!4055 lt!816108 r!12534 (_1!14910 lt!816097)) _$44!1289)))

(declare-fun bs!448206 () Bool)

(assert (= bs!448206 d!655654))

(assert (=> bs!448206 m!2628813))

(assert (=> bs!448206 m!2628795))

(assert (=> d!655114 d!655654))

(assert (=> d!655114 d!655168))

(declare-fun bs!448208 () Bool)

(declare-fun d!655662 () Bool)

(assert (= bs!448208 (and d!655662 d!655116)))

(declare-fun lambda!82125 () Int)

(assert (=> bs!448208 (= lambda!82125 lambda!82100)))

(declare-fun bs!448209 () Bool)

(assert (= bs!448209 (and d!655662 d!655368)))

(assert (=> bs!448209 (= lambda!82125 lambda!82106)))

(declare-fun bs!448210 () Bool)

(assert (= bs!448210 (and d!655662 d!655370)))

(assert (=> bs!448210 (= lambda!82125 lambda!82109)))

(assert (=> d!655662 (= (inv!33610 setElem!18364) (forall!5191 (exprs!2119 setElem!18364) lambda!82125))))

(declare-fun bs!448211 () Bool)

(assert (= bs!448211 d!655662))

(declare-fun m!2630409 () Bool)

(assert (=> bs!448211 m!2630409))

(assert (=> setNonEmpty!18364 d!655662))

(declare-fun d!655670 () Bool)

(declare-fun res!939907 () Bool)

(declare-fun e!1397978 () Bool)

(assert (=> d!655670 (=> (not res!939907) (not e!1397978))))

(assert (=> d!655670 (= res!939907 (<= (size!19751 (list!9710 (xs!11127 (c!347560 totalInput!977)))) 512))))

(assert (=> d!655670 (= (inv!33613 (c!347560 totalInput!977)) e!1397978)))

(declare-fun b!2187650 () Bool)

(declare-fun res!939908 () Bool)

(assert (=> b!2187650 (=> (not res!939908) (not e!1397978))))

(assert (=> b!2187650 (= res!939908 (= (csize!16601 (c!347560 totalInput!977)) (size!19751 (list!9710 (xs!11127 (c!347560 totalInput!977))))))))

(declare-fun b!2187651 () Bool)

(assert (=> b!2187651 (= e!1397978 (and (> (csize!16601 (c!347560 totalInput!977)) 0) (<= (csize!16601 (c!347560 totalInput!977)) 512)))))

(assert (= (and d!655670 res!939907) b!2187650))

(assert (= (and b!2187650 res!939908) b!2187651))

(declare-fun m!2630439 () Bool)

(assert (=> d!655670 m!2630439))

(assert (=> d!655670 m!2630439))

(declare-fun m!2630441 () Bool)

(assert (=> d!655670 m!2630441))

(assert (=> b!2187650 m!2630439))

(assert (=> b!2187650 m!2630439))

(assert (=> b!2187650 m!2630441))

(assert (=> b!2186436 d!655670))

(declare-fun d!655682 () Bool)

(declare-fun e!1397980 () Bool)

(assert (=> d!655682 e!1397980))

(declare-fun res!939909 () Bool)

(assert (=> d!655682 (=> res!939909 e!1397980)))

(declare-fun lt!816734 () Bool)

(assert (=> d!655682 (= res!939909 (not lt!816734))))

(declare-fun e!1397979 () Bool)

(assert (=> d!655682 (= lt!816734 e!1397979)))

(declare-fun res!939910 () Bool)

(assert (=> d!655682 (=> res!939910 e!1397979)))

(assert (=> d!655682 (= res!939910 ((_ is Nil!25276) lt!816112))))

(assert (=> d!655682 (= (isPrefix!2165 lt!816112 (++!6410 lt!816112 lt!816094)) lt!816734)))

(declare-fun b!2187655 () Bool)

(assert (=> b!2187655 (= e!1397980 (>= (size!19751 (++!6410 lt!816112 lt!816094)) (size!19751 lt!816112)))))

(declare-fun b!2187654 () Bool)

(declare-fun e!1397981 () Bool)

(assert (=> b!2187654 (= e!1397981 (isPrefix!2165 (tail!3142 lt!816112) (tail!3142 (++!6410 lt!816112 lt!816094))))))

(declare-fun b!2187652 () Bool)

(assert (=> b!2187652 (= e!1397979 e!1397981)))

(declare-fun res!939912 () Bool)

(assert (=> b!2187652 (=> (not res!939912) (not e!1397981))))

(assert (=> b!2187652 (= res!939912 (not ((_ is Nil!25276) (++!6410 lt!816112 lt!816094))))))

(declare-fun b!2187653 () Bool)

(declare-fun res!939911 () Bool)

(assert (=> b!2187653 (=> (not res!939911) (not e!1397981))))

(assert (=> b!2187653 (= res!939911 (= (head!4670 lt!816112) (head!4670 (++!6410 lt!816112 lt!816094))))))

(assert (= (and d!655682 (not res!939910)) b!2187652))

(assert (= (and b!2187652 res!939912) b!2187653))

(assert (= (and b!2187653 res!939911) b!2187654))

(assert (= (and d!655682 (not res!939909)) b!2187655))

(assert (=> b!2187655 m!2628733))

(declare-fun m!2630443 () Bool)

(assert (=> b!2187655 m!2630443))

(assert (=> b!2187655 m!2628841))

(assert (=> b!2187654 m!2628885))

(assert (=> b!2187654 m!2628733))

(declare-fun m!2630445 () Bool)

(assert (=> b!2187654 m!2630445))

(assert (=> b!2187654 m!2628885))

(assert (=> b!2187654 m!2630445))

(declare-fun m!2630447 () Bool)

(assert (=> b!2187654 m!2630447))

(assert (=> b!2187653 m!2628891))

(assert (=> b!2187653 m!2628733))

(declare-fun m!2630449 () Bool)

(assert (=> b!2187653 m!2630449))

(assert (=> d!655204 d!655682))

(assert (=> d!655204 d!655092))

(declare-fun d!655684 () Bool)

(assert (=> d!655684 (isPrefix!2165 lt!816112 (++!6410 lt!816112 lt!816094))))

(assert (=> d!655684 true))

(declare-fun _$46!1286 () Unit!38401)

(assert (=> d!655684 (= (choose!12941 lt!816112 lt!816094) _$46!1286)))

(declare-fun bs!448212 () Bool)

(assert (= bs!448212 d!655684))

(assert (=> bs!448212 m!2628733))

(assert (=> bs!448212 m!2628733))

(assert (=> bs!448212 m!2629167))

(assert (=> d!655204 d!655684))

(declare-fun d!655686 () Bool)

(declare-fun e!1397983 () Bool)

(assert (=> d!655686 e!1397983))

(declare-fun res!939913 () Bool)

(assert (=> d!655686 (=> res!939913 e!1397983)))

(declare-fun lt!816735 () Bool)

(assert (=> d!655686 (= res!939913 (not lt!816735))))

(declare-fun e!1397982 () Bool)

(assert (=> d!655686 (= lt!816735 e!1397982)))

(declare-fun res!939914 () Bool)

(assert (=> d!655686 (=> res!939914 e!1397982)))

(assert (=> d!655686 (= res!939914 ((_ is Nil!25276) lt!816118))))

(assert (=> d!655686 (= (isPrefix!2165 lt!816118 lt!816118) lt!816735)))

(declare-fun b!2187659 () Bool)

(assert (=> b!2187659 (= e!1397983 (>= (size!19751 lt!816118) (size!19751 lt!816118)))))

(declare-fun b!2187658 () Bool)

(declare-fun e!1397984 () Bool)

(assert (=> b!2187658 (= e!1397984 (isPrefix!2165 (tail!3142 lt!816118) (tail!3142 lt!816118)))))

(declare-fun b!2187656 () Bool)

(assert (=> b!2187656 (= e!1397982 e!1397984)))

(declare-fun res!939916 () Bool)

(assert (=> b!2187656 (=> (not res!939916) (not e!1397984))))

(assert (=> b!2187656 (= res!939916 (not ((_ is Nil!25276) lt!816118)))))

(declare-fun b!2187657 () Bool)

(declare-fun res!939915 () Bool)

(assert (=> b!2187657 (=> (not res!939915) (not e!1397984))))

(assert (=> b!2187657 (= res!939915 (= (head!4670 lt!816118) (head!4670 lt!816118)))))

(assert (= (and d!655686 (not res!939914)) b!2187656))

(assert (= (and b!2187656 res!939916) b!2187657))

(assert (= (and b!2187657 res!939915) b!2187658))

(assert (= (and d!655686 (not res!939913)) b!2187659))

(assert (=> b!2187659 m!2628761))

(assert (=> b!2187659 m!2628761))

(assert (=> b!2187658 m!2629359))

(assert (=> b!2187658 m!2629359))

(assert (=> b!2187658 m!2629359))

(assert (=> b!2187658 m!2629359))

(declare-fun m!2630451 () Bool)

(assert (=> b!2187658 m!2630451))

(assert (=> b!2187657 m!2629335))

(assert (=> b!2187657 m!2629335))

(assert (=> bm!131607 d!655686))

(declare-fun d!655688 () Bool)

(declare-fun e!1397986 () Bool)

(assert (=> d!655688 e!1397986))

(declare-fun res!939917 () Bool)

(assert (=> d!655688 (=> res!939917 e!1397986)))

(declare-fun lt!816736 () Bool)

(assert (=> d!655688 (= res!939917 (not lt!816736))))

(declare-fun e!1397985 () Bool)

(assert (=> d!655688 (= lt!816736 e!1397985)))

(declare-fun res!939918 () Bool)

(assert (=> d!655688 (=> res!939918 e!1397985)))

(assert (=> d!655688 (= res!939918 ((_ is Nil!25276) (tail!3142 lt!816112)))))

(assert (=> d!655688 (= (isPrefix!2165 (tail!3142 lt!816112) (tail!3142 lt!816119)) lt!816736)))

(declare-fun b!2187663 () Bool)

(assert (=> b!2187663 (= e!1397986 (>= (size!19751 (tail!3142 lt!816119)) (size!19751 (tail!3142 lt!816112))))))

(declare-fun b!2187662 () Bool)

(declare-fun e!1397987 () Bool)

(assert (=> b!2187662 (= e!1397987 (isPrefix!2165 (tail!3142 (tail!3142 lt!816112)) (tail!3142 (tail!3142 lt!816119))))))

(declare-fun b!2187660 () Bool)

(assert (=> b!2187660 (= e!1397985 e!1397987)))

(declare-fun res!939920 () Bool)

(assert (=> b!2187660 (=> (not res!939920) (not e!1397987))))

(assert (=> b!2187660 (= res!939920 (not ((_ is Nil!25276) (tail!3142 lt!816119))))))

(declare-fun b!2187661 () Bool)

(declare-fun res!939919 () Bool)

(assert (=> b!2187661 (=> (not res!939919) (not e!1397987))))

(assert (=> b!2187661 (= res!939919 (= (head!4670 (tail!3142 lt!816112)) (head!4670 (tail!3142 lt!816119))))))

(assert (= (and d!655688 (not res!939918)) b!2187660))

(assert (= (and b!2187660 res!939920) b!2187661))

(assert (= (and b!2187661 res!939919) b!2187662))

(assert (= (and d!655688 (not res!939917)) b!2187663))

(assert (=> b!2187663 m!2629177))

(declare-fun m!2630453 () Bool)

(assert (=> b!2187663 m!2630453))

(assert (=> b!2187663 m!2628885))

(declare-fun m!2630455 () Bool)

(assert (=> b!2187663 m!2630455))

(assert (=> b!2187662 m!2628885))

(assert (=> b!2187662 m!2630199))

(assert (=> b!2187662 m!2629177))

(declare-fun m!2630457 () Bool)

(assert (=> b!2187662 m!2630457))

(assert (=> b!2187662 m!2630199))

(assert (=> b!2187662 m!2630457))

(declare-fun m!2630459 () Bool)

(assert (=> b!2187662 m!2630459))

(assert (=> b!2187661 m!2628885))

(assert (=> b!2187661 m!2630193))

(assert (=> b!2187661 m!2629177))

(declare-fun m!2630461 () Bool)

(assert (=> b!2187661 m!2630461))

(assert (=> b!2186577 d!655688))

(assert (=> b!2186577 d!655580))

(declare-fun d!655690 () Bool)

(assert (=> d!655690 (= (tail!3142 lt!816119) (t!197950 lt!816119))))

(assert (=> b!2186577 d!655690))

(declare-fun d!655692 () Bool)

(assert (=> d!655692 (= (inv!33617 (xs!11127 (c!347560 totalInput!977))) (<= (size!19751 (innerList!8245 (xs!11127 (c!347560 totalInput!977)))) 2147483647))))

(declare-fun bs!448213 () Bool)

(assert (= bs!448213 d!655692))

(declare-fun m!2630463 () Bool)

(assert (=> bs!448213 m!2630463))

(assert (=> b!2186904 d!655692))

(declare-fun b!2187664 () Bool)

(declare-fun e!1397991 () Bool)

(declare-fun e!1397989 () Bool)

(assert (=> b!2187664 (= e!1397991 e!1397989)))

(declare-fun res!939925 () Bool)

(assert (=> b!2187664 (=> (not res!939925) (not e!1397989))))

(declare-fun call!131696 () Bool)

(assert (=> b!2187664 (= res!939925 call!131696)))

(declare-fun b!2187665 () Bool)

(declare-fun e!1397988 () Bool)

(assert (=> b!2187665 (= e!1397988 call!131696)))

(declare-fun b!2187666 () Bool)

(declare-fun e!1397990 () Bool)

(declare-fun e!1397992 () Bool)

(assert (=> b!2187666 (= e!1397990 e!1397992)))

(declare-fun c!347996 () Bool)

(assert (=> b!2187666 (= c!347996 ((_ is Star!6049) (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))))))

(declare-fun bm!131690 () Bool)

(declare-fun call!131695 () Bool)

(declare-fun call!131697 () Bool)

(assert (=> bm!131690 (= call!131695 call!131697)))

(declare-fun b!2187667 () Bool)

(declare-fun e!1397994 () Bool)

(assert (=> b!2187667 (= e!1397994 call!131697)))

(declare-fun c!347995 () Bool)

(declare-fun bm!131691 () Bool)

(assert (=> bm!131691 (= call!131696 (validRegex!2325 (ite c!347995 (regTwo!12611 (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))) (regOne!12610 (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))))))))

(declare-fun bm!131692 () Bool)

(assert (=> bm!131692 (= call!131697 (validRegex!2325 (ite c!347996 (reg!6378 (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))) (ite c!347995 (regOne!12611 (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))) (regTwo!12610 (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534))))))))))

(declare-fun d!655694 () Bool)

(declare-fun res!939923 () Bool)

(assert (=> d!655694 (=> res!939923 e!1397990)))

(assert (=> d!655694 (= res!939923 ((_ is ElementMatch!6049) (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))))))

(assert (=> d!655694 (= (validRegex!2325 (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))) e!1397990)))

(declare-fun b!2187668 () Bool)

(declare-fun res!939922 () Bool)

(assert (=> b!2187668 (=> res!939922 e!1397991)))

(assert (=> b!2187668 (= res!939922 (not ((_ is Concat!10351) (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534))))))))

(declare-fun e!1397993 () Bool)

(assert (=> b!2187668 (= e!1397993 e!1397991)))

(declare-fun b!2187669 () Bool)

(declare-fun res!939924 () Bool)

(assert (=> b!2187669 (=> (not res!939924) (not e!1397988))))

(assert (=> b!2187669 (= res!939924 call!131695)))

(assert (=> b!2187669 (= e!1397993 e!1397988)))

(declare-fun b!2187670 () Bool)

(assert (=> b!2187670 (= e!1397992 e!1397993)))

(assert (=> b!2187670 (= c!347995 ((_ is Union!6049) (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))))))

(declare-fun b!2187671 () Bool)

(assert (=> b!2187671 (= e!1397992 e!1397994)))

(declare-fun res!939921 () Bool)

(assert (=> b!2187671 (= res!939921 (not (nullable!1713 (reg!6378 (ite c!347645 (reg!6378 r!12534) (ite c!347644 (regOne!12611 r!12534) (regTwo!12610 r!12534)))))))))

(assert (=> b!2187671 (=> (not res!939921) (not e!1397994))))

(declare-fun b!2187672 () Bool)

(assert (=> b!2187672 (= e!1397989 call!131695)))

(assert (= (and d!655694 (not res!939923)) b!2187666))

(assert (= (and b!2187666 c!347996) b!2187671))

(assert (= (and b!2187666 (not c!347996)) b!2187670))

(assert (= (and b!2187671 res!939921) b!2187667))

(assert (= (and b!2187670 c!347995) b!2187669))

(assert (= (and b!2187670 (not c!347995)) b!2187668))

(assert (= (and b!2187669 res!939924) b!2187665))

(assert (= (and b!2187668 (not res!939922)) b!2187664))

(assert (= (and b!2187664 res!939925) b!2187672))

(assert (= (or b!2187665 b!2187664) bm!131691))

(assert (= (or b!2187669 b!2187672) bm!131690))

(assert (= (or b!2187667 bm!131690) bm!131692))

(declare-fun m!2630465 () Bool)

(assert (=> bm!131691 m!2630465))

(declare-fun m!2630467 () Bool)

(assert (=> bm!131692 m!2630467))

(declare-fun m!2630469 () Bool)

(assert (=> b!2187671 m!2630469))

(assert (=> bm!131573 d!655694))

(declare-fun d!655696 () Bool)

(assert (=> d!655696 (= (isEmpty!14530 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)) ((_ is Nil!25276) (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)))))

(assert (=> d!655276 d!655696))

(assert (=> b!2186580 d!655622))

(declare-fun d!655698 () Bool)

(assert (=> d!655698 (= (head!4670 lt!816095) (h!30677 lt!816095))))

(assert (=> b!2186580 d!655698))

(declare-fun b!2187673 () Bool)

(declare-fun e!1397997 () Bool)

(assert (=> b!2187673 (= e!1397997 (nullable!1713 r!12534))))

(declare-fun bm!131693 () Bool)

(declare-fun call!131698 () Bool)

(assert (=> bm!131693 (= call!131698 (isEmpty!14530 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))))))

(declare-fun b!2187674 () Bool)

(declare-fun res!939932 () Bool)

(declare-fun e!1398000 () Bool)

(assert (=> b!2187674 (=> (not res!939932) (not e!1398000))))

(assert (=> b!2187674 (= res!939932 (isEmpty!14530 (tail!3142 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118))))))))

(declare-fun b!2187676 () Bool)

(declare-fun e!1397998 () Bool)

(assert (=> b!2187676 (= e!1397998 (not (= (head!4670 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))) (c!347561 r!12534))))))

(declare-fun b!2187677 () Bool)

(declare-fun e!1397999 () Bool)

(declare-fun lt!816737 () Bool)

(assert (=> b!2187677 (= e!1397999 (not lt!816737))))

(declare-fun b!2187678 () Bool)

(declare-fun e!1397995 () Bool)

(assert (=> b!2187678 (= e!1397995 e!1397999)))

(declare-fun c!347998 () Bool)

(assert (=> b!2187678 (= c!347998 ((_ is EmptyLang!6049) r!12534))))

(declare-fun b!2187679 () Bool)

(assert (=> b!2187679 (= e!1397995 (= lt!816737 call!131698))))

(declare-fun b!2187680 () Bool)

(declare-fun e!1398001 () Bool)

(declare-fun e!1397996 () Bool)

(assert (=> b!2187680 (= e!1398001 e!1397996)))

(declare-fun res!939933 () Bool)

(assert (=> b!2187680 (=> (not res!939933) (not e!1397996))))

(assert (=> b!2187680 (= res!939933 (not lt!816737))))

(declare-fun b!2187681 () Bool)

(declare-fun res!939929 () Bool)

(assert (=> b!2187681 (=> res!939929 e!1398001)))

(assert (=> b!2187681 (= res!939929 e!1398000)))

(declare-fun res!939926 () Bool)

(assert (=> b!2187681 (=> (not res!939926) (not e!1398000))))

(assert (=> b!2187681 (= res!939926 lt!816737)))

(declare-fun b!2187682 () Bool)

(assert (=> b!2187682 (= e!1398000 (= (head!4670 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))) (c!347561 r!12534)))))

(declare-fun b!2187683 () Bool)

(declare-fun res!939930 () Bool)

(assert (=> b!2187683 (=> res!939930 e!1398001)))

(assert (=> b!2187683 (= res!939930 (not ((_ is ElementMatch!6049) r!12534)))))

(assert (=> b!2187683 (= e!1397999 e!1398001)))

(declare-fun b!2187684 () Bool)

(assert (=> b!2187684 (= e!1397997 (matchR!2798 (derivativeStep!1456 r!12534 (head!4670 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118))))) (tail!3142 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118))))))))

(declare-fun d!655700 () Bool)

(assert (=> d!655700 e!1397995))

(declare-fun c!347999 () Bool)

(assert (=> d!655700 (= c!347999 ((_ is EmptyExpr!6049) r!12534))))

(assert (=> d!655700 (= lt!816737 e!1397997)))

(declare-fun c!347997 () Bool)

(assert (=> d!655700 (= c!347997 (isEmpty!14530 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))))))

(assert (=> d!655700 (validRegex!2325 r!12534)))

(assert (=> d!655700 (= (matchR!2798 r!12534 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))) lt!816737)))

(declare-fun b!2187675 () Bool)

(declare-fun res!939931 () Bool)

(assert (=> b!2187675 (=> (not res!939931) (not e!1398000))))

(assert (=> b!2187675 (= res!939931 (not call!131698))))

(declare-fun b!2187685 () Bool)

(declare-fun res!939927 () Bool)

(assert (=> b!2187685 (=> res!939927 e!1397998)))

(assert (=> b!2187685 (= res!939927 (not (isEmpty!14530 (tail!3142 (_1!14910 (findLongestMatchInner!674 r!12534 Nil!25276 (size!19751 Nil!25276) lt!816118 lt!816118 (size!19751 lt!816118)))))))))

(declare-fun b!2187686 () Bool)

(assert (=> b!2187686 (= e!1397996 e!1397998)))

(declare-fun res!939928 () Bool)

(assert (=> b!2187686 (=> res!939928 e!1397998)))

(assert (=> b!2187686 (= res!939928 call!131698)))

(assert (= (and d!655700 c!347997) b!2187673))

(assert (= (and d!655700 (not c!347997)) b!2187684))

(assert (= (and d!655700 c!347999) b!2187679))

(assert (= (and d!655700 (not c!347999)) b!2187678))

(assert (= (and b!2187678 c!347998) b!2187677))

(assert (= (and b!2187678 (not c!347998)) b!2187683))

(assert (= (and b!2187683 (not res!939930)) b!2187681))

(assert (= (and b!2187681 res!939926) b!2187675))

(assert (= (and b!2187675 res!939931) b!2187674))

(assert (= (and b!2187674 res!939932) b!2187682))

(assert (= (and b!2187681 (not res!939929)) b!2187680))

(assert (= (and b!2187680 res!939933) b!2187686))

(assert (= (and b!2187686 (not res!939928)) b!2187685))

(assert (= (and b!2187685 (not res!939927)) b!2187676))

(assert (= (or b!2187679 b!2187675 b!2187686) bm!131693))

(declare-fun m!2630471 () Bool)

(assert (=> b!2187685 m!2630471))

(assert (=> b!2187685 m!2630471))

(declare-fun m!2630473 () Bool)

(assert (=> b!2187685 m!2630473))

(assert (=> bm!131693 m!2629381))

(declare-fun m!2630475 () Bool)

(assert (=> b!2187682 m!2630475))

(assert (=> b!2187676 m!2630475))

(assert (=> b!2187673 m!2628893))

(assert (=> d!655700 m!2629381))

(assert (=> d!655700 m!2628783))

(assert (=> b!2187684 m!2630475))

(assert (=> b!2187684 m!2630475))

(declare-fun m!2630477 () Bool)

(assert (=> b!2187684 m!2630477))

(assert (=> b!2187684 m!2630471))

(assert (=> b!2187684 m!2630477))

(assert (=> b!2187684 m!2630471))

(declare-fun m!2630479 () Bool)

(assert (=> b!2187684 m!2630479))

(assert (=> b!2187674 m!2630471))

(assert (=> b!2187674 m!2630471))

(assert (=> b!2187674 m!2630473))

(assert (=> b!2186776 d!655700))

(assert (=> b!2186776 d!655216))

(assert (=> b!2186776 d!655256))

(assert (=> b!2186776 d!655250))

(assert (=> b!2186565 d!655264))

(assert (=> bm!131531 d!655526))

(declare-fun d!655702 () Bool)

(assert (=> d!655702 (= (tail!3142 lt!816118) (t!197950 lt!816118))))

(assert (=> bm!131606 d!655702))

(declare-fun d!655704 () Bool)

(assert (=> d!655704 (= (isEmpty!14530 (list!9706 (_1!14909 lt!816099))) ((_ is Nil!25276) (list!9706 (_1!14909 lt!816099))))))

(assert (=> d!655158 d!655704))

(assert (=> d!655158 d!655096))

(declare-fun d!655706 () Bool)

(declare-fun lt!816750 () Bool)

(assert (=> d!655706 (= lt!816750 (isEmpty!14530 (list!9707 (c!347560 (_1!14909 lt!816099)))))))

(assert (=> d!655706 (= lt!816750 (= (size!19752 (c!347560 (_1!14909 lt!816099))) 0))))

(assert (=> d!655706 (= (isEmpty!14531 (c!347560 (_1!14909 lt!816099))) lt!816750)))

(declare-fun bs!448214 () Bool)

(assert (= bs!448214 d!655706))

(assert (=> bs!448214 m!2628857))

(assert (=> bs!448214 m!2628857))

(declare-fun m!2630481 () Bool)

(assert (=> bs!448214 m!2630481))

(assert (=> bs!448214 m!2628903))

(assert (=> d!655158 d!655706))

(assert (=> b!2186805 d!655344))

(declare-fun d!655708 () Bool)

(declare-fun lt!816751 () Int)

(assert (=> d!655708 (>= lt!816751 0)))

(declare-fun e!1398004 () Int)

(assert (=> d!655708 (= lt!816751 e!1398004)))

(declare-fun c!348006 () Bool)

(assert (=> d!655708 (= c!348006 ((_ is Nil!25276) (take!257 lt!816109 lt!816114)))))

(assert (=> d!655708 (= (size!19751 (take!257 lt!816109 lt!816114)) lt!816751)))

(declare-fun b!2187691 () Bool)

(assert (=> b!2187691 (= e!1398004 0)))

(declare-fun b!2187692 () Bool)

(assert (=> b!2187692 (= e!1398004 (+ 1 (size!19751 (t!197950 (take!257 lt!816109 lt!816114)))))))

(assert (= (and d!655708 c!348006) b!2187691))

(assert (= (and d!655708 (not c!348006)) b!2187692))

(declare-fun m!2630483 () Bool)

(assert (=> b!2187692 m!2630483))

(assert (=> b!2186805 d!655708))

(declare-fun b!2187693 () Bool)

(declare-fun e!1398007 () List!25360)

(assert (=> b!2187693 (= e!1398007 Nil!25276)))

(declare-fun b!2187694 () Bool)

(declare-fun e!1398008 () List!25360)

(assert (=> b!2187694 (= e!1398007 e!1398008)))

(declare-fun c!348008 () Bool)

(assert (=> b!2187694 (= c!348008 ((_ is Leaf!11977) (c!347560 input!5540)))))

(declare-fun b!2187695 () Bool)

(assert (=> b!2187695 (= e!1398008 (list!9710 (xs!11127 (c!347560 input!5540))))))

(declare-fun d!655710 () Bool)

(declare-fun c!348007 () Bool)

(assert (=> d!655710 (= c!348007 ((_ is Empty!8185) (c!347560 input!5540)))))

(assert (=> d!655710 (= (list!9707 (c!347560 input!5540)) e!1398007)))

(declare-fun b!2187696 () Bool)

(assert (=> b!2187696 (= e!1398008 (++!6410 (list!9707 (left!19400 (c!347560 input!5540))) (list!9707 (right!19730 (c!347560 input!5540)))))))

(assert (= (and d!655710 c!348007) b!2187693))

(assert (= (and d!655710 (not c!348007)) b!2187694))

(assert (= (and b!2187694 c!348008) b!2187695))

(assert (= (and b!2187694 (not c!348008)) b!2187696))

(declare-fun m!2630485 () Bool)

(assert (=> b!2187695 m!2630485))

(declare-fun m!2630487 () Bool)

(assert (=> b!2187696 m!2630487))

(declare-fun m!2630489 () Bool)

(assert (=> b!2187696 m!2630489))

(assert (=> b!2187696 m!2630487))

(assert (=> b!2187696 m!2630489))

(declare-fun m!2630491 () Bool)

(assert (=> b!2187696 m!2630491))

(assert (=> d!655190 d!655710))

(declare-fun d!655712 () Bool)

(declare-fun c!348009 () Bool)

(assert (=> d!655712 (= c!348009 ((_ is Nil!25276) lt!816150))))

(declare-fun e!1398009 () (InoxSet C!12244))

(assert (=> d!655712 (= (content!3451 lt!816150) e!1398009)))

(declare-fun b!2187697 () Bool)

(assert (=> b!2187697 (= e!1398009 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2187698 () Bool)

(assert (=> b!2187698 (= e!1398009 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 lt!816150) true) (content!3451 (t!197950 lt!816150))))))

(assert (= (and d!655712 c!348009) b!2187697))

(assert (= (and d!655712 (not c!348009)) b!2187698))

(declare-fun m!2630493 () Bool)

(assert (=> b!2187698 m!2630493))

(declare-fun m!2630495 () Bool)

(assert (=> b!2187698 m!2630495))

(assert (=> d!655092 d!655712))

(declare-fun d!655714 () Bool)

(declare-fun c!348012 () Bool)

(assert (=> d!655714 (= c!348012 ((_ is Nil!25276) lt!816112))))

(declare-fun e!1398010 () (InoxSet C!12244))

(assert (=> d!655714 (= (content!3451 lt!816112) e!1398010)))

(declare-fun b!2187699 () Bool)

(assert (=> b!2187699 (= e!1398010 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2187700 () Bool)

(assert (=> b!2187700 (= e!1398010 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 lt!816112) true) (content!3451 (t!197950 lt!816112))))))

(assert (= (and d!655714 c!348012) b!2187699))

(assert (= (and d!655714 (not c!348012)) b!2187700))

(declare-fun m!2630497 () Bool)

(assert (=> b!2187700 m!2630497))

(assert (=> b!2187700 m!2629601))

(assert (=> d!655092 d!655714))

(declare-fun d!655716 () Bool)

(declare-fun c!348013 () Bool)

(assert (=> d!655716 (= c!348013 ((_ is Nil!25276) lt!816094))))

(declare-fun e!1398011 () (InoxSet C!12244))

(assert (=> d!655716 (= (content!3451 lt!816094) e!1398011)))

(declare-fun b!2187701 () Bool)

(assert (=> b!2187701 (= e!1398011 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2187702 () Bool)

(assert (=> b!2187702 (= e!1398011 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 lt!816094) true) (content!3451 (t!197950 lt!816094))))))

(assert (= (and d!655716 c!348013) b!2187701))

(assert (= (and d!655716 (not c!348013)) b!2187702))

(declare-fun m!2630499 () Bool)

(assert (=> b!2187702 m!2630499))

(declare-fun m!2630501 () Bool)

(assert (=> b!2187702 m!2630501))

(assert (=> d!655092 d!655716))

(assert (=> b!2186490 d!655326))

(assert (=> b!2186490 d!655328))

(declare-fun d!655718 () Bool)

(assert (=> d!655718 (= (head!4670 lt!816118) (h!30677 lt!816118))))

(assert (=> bm!131609 d!655718))

(declare-fun d!655720 () Bool)

(assert (=> d!655720 (= (nullable!1713 (reg!6378 r!12534)) (nullableFct!395 (reg!6378 r!12534)))))

(declare-fun bs!448215 () Bool)

(assert (= bs!448215 d!655720))

(declare-fun m!2630503 () Bool)

(assert (=> bs!448215 m!2630503))

(assert (=> b!2186462 d!655720))

(declare-fun c!348014 () Bool)

(declare-fun d!655722 () Bool)

(assert (=> d!655722 (= c!348014 (isEmpty!14530 (tail!3142 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105))))))

(declare-fun e!1398014 () Bool)

(assert (=> d!655722 (= (matchZipper!165 (derivationStepZipper!142 z!4055 (head!4670 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105))) (tail!3142 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105))) e!1398014)))

(declare-fun b!2187703 () Bool)

(assert (=> b!2187703 (= e!1398014 (nullableZipper!329 (derivationStepZipper!142 z!4055 (head!4670 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)))))))

(declare-fun b!2187704 () Bool)

(assert (=> b!2187704 (= e!1398014 (matchZipper!165 (derivationStepZipper!142 (derivationStepZipper!142 z!4055 (head!4670 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105))) (head!4670 (tail!3142 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)))) (tail!3142 (tail!3142 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)))))))

(assert (= (and d!655722 c!348014) b!2187703))

(assert (= (and d!655722 (not c!348014)) b!2187704))

(assert (=> d!655722 m!2629453))

(declare-fun m!2630505 () Bool)

(assert (=> d!655722 m!2630505))

(assert (=> b!2187703 m!2629451))

(declare-fun m!2630507 () Bool)

(assert (=> b!2187703 m!2630507))

(assert (=> b!2187704 m!2629453))

(declare-fun m!2630509 () Bool)

(assert (=> b!2187704 m!2630509))

(assert (=> b!2187704 m!2629451))

(assert (=> b!2187704 m!2630509))

(declare-fun m!2630511 () Bool)

(assert (=> b!2187704 m!2630511))

(assert (=> b!2187704 m!2629453))

(declare-fun m!2630513 () Bool)

(assert (=> b!2187704 m!2630513))

(assert (=> b!2187704 m!2630511))

(assert (=> b!2187704 m!2630513))

(declare-fun m!2630515 () Bool)

(assert (=> b!2187704 m!2630515))

(assert (=> b!2186817 d!655722))

(declare-fun bs!448216 () Bool)

(declare-fun d!655724 () Bool)

(assert (= bs!448216 (and d!655724 d!655470)))

(declare-fun lambda!82136 () Int)

(assert (=> bs!448216 (= (= (head!4670 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)) (apply!6094 totalInput!977 lt!816114)) (= lambda!82136 lambda!82112))))

(declare-fun bs!448217 () Bool)

(assert (= bs!448217 (and d!655724 d!655588)))

(assert (=> bs!448217 (= (= (head!4670 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)) (head!4670 lt!816112)) (= lambda!82136 lambda!82114))))

(assert (=> d!655724 true))

(assert (=> d!655724 (= (derivationStepZipper!142 z!4055 (head!4670 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105))) (flatMap!137 z!4055 lambda!82136))))

(declare-fun bs!448218 () Bool)

(assert (= bs!448218 d!655724))

(declare-fun m!2630517 () Bool)

(assert (=> bs!448218 m!2630517))

(assert (=> b!2186817 d!655724))

(declare-fun d!655726 () Bool)

(assert (=> d!655726 (= (head!4670 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)) (h!30677 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)))))

(assert (=> b!2186817 d!655726))

(declare-fun d!655728 () Bool)

(assert (=> d!655728 (= (tail!3142 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)) (t!197950 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105)))))

(assert (=> b!2186817 d!655728))

(assert (=> d!655106 d!655270))

(declare-fun d!655730 () Bool)

(declare-fun c!348019 () Bool)

(assert (=> d!655730 (= c!348019 ((_ is Nil!25276) lt!816139))))

(declare-fun e!1398017 () Int)

(assert (=> d!655730 (= (sizeTr!129 lt!816139 lt!816138) e!1398017)))

(declare-fun b!2187709 () Bool)

(assert (=> b!2187709 (= e!1398017 lt!816138)))

(declare-fun b!2187710 () Bool)

(assert (=> b!2187710 (= e!1398017 (sizeTr!129 (t!197950 lt!816139) (+ lt!816138 1)))))

(assert (= (and d!655730 c!348019) b!2187709))

(assert (= (and d!655730 (not c!348019)) b!2187710))

(declare-fun m!2630519 () Bool)

(assert (=> b!2187710 m!2630519))

(assert (=> d!655086 d!655730))

(declare-fun bm!131700 () Bool)

(declare-fun call!131707 () Regex!6049)

(declare-fun call!131706 () C!12244)

(assert (=> bm!131700 (= call!131707 (derivativeStep!1456 r!12534 call!131706))))

(declare-fun b!2187713 () Bool)

(declare-fun e!1398021 () Unit!38401)

(declare-fun Unit!38418 () Unit!38401)

(assert (=> b!2187713 (= e!1398021 Unit!38418)))

(declare-fun bm!131701 () Bool)

(declare-fun call!131704 () Unit!38401)

(assert (=> bm!131701 (= call!131704 (lemmaIsPrefixSameLengthThenSameList!371 lt!816118 Nil!25276 lt!816118))))

(declare-fun d!655732 () Bool)

(declare-fun e!1398023 () Bool)

(assert (=> d!655732 e!1398023))

(declare-fun res!939935 () Bool)

(assert (=> d!655732 (=> (not res!939935) (not e!1398023))))

(declare-fun lt!816778 () tuple2!25080)

(assert (=> d!655732 (= res!939935 (= (++!6410 (_1!14910 lt!816778) (_2!14910 lt!816778)) lt!816118))))

(declare-fun e!1398025 () tuple2!25080)

(assert (=> d!655732 (= lt!816778 e!1398025)))

(declare-fun c!348023 () Bool)

(assert (=> d!655732 (= c!348023 (lostCause!685 r!12534))))

(declare-fun lt!816758 () Unit!38401)

(declare-fun Unit!38419 () Unit!38401)

(assert (=> d!655732 (= lt!816758 Unit!38419)))

(assert (=> d!655732 (= (getSuffix!1050 lt!816118 Nil!25276) lt!816118)))

(declare-fun lt!816759 () Unit!38401)

(declare-fun lt!816782 () Unit!38401)

(assert (=> d!655732 (= lt!816759 lt!816782)))

(declare-fun lt!816790 () List!25360)

(assert (=> d!655732 (= lt!816118 lt!816790)))

(assert (=> d!655732 (= lt!816782 (lemmaSamePrefixThenSameSuffix!972 Nil!25276 lt!816118 Nil!25276 lt!816790 lt!816118))))

(assert (=> d!655732 (= lt!816790 (getSuffix!1050 lt!816118 Nil!25276))))

(declare-fun lt!816781 () Unit!38401)

(declare-fun lt!816789 () Unit!38401)

(assert (=> d!655732 (= lt!816781 lt!816789)))

(assert (=> d!655732 (isPrefix!2165 Nil!25276 (++!6410 Nil!25276 lt!816118))))

(assert (=> d!655732 (= lt!816789 (lemmaConcatTwoListThenFirstIsPrefix!1448 Nil!25276 lt!816118))))

(assert (=> d!655732 (validRegex!2325 r!12534)))

(assert (=> d!655732 (= (findLongestMatchInner!674 r!12534 Nil!25276 0 lt!816118 lt!816118 (sizeTr!129 lt!816118 0)) lt!816778)))

(declare-fun bm!131702 () Bool)

(declare-fun call!131703 () Bool)

(assert (=> bm!131702 (= call!131703 (nullable!1713 r!12534))))

(declare-fun b!2187714 () Bool)

(declare-fun e!1398026 () tuple2!25080)

(assert (=> b!2187714 (= e!1398026 (tuple2!25081 Nil!25276 lt!816118))))

(declare-fun b!2187715 () Bool)

(declare-fun e!1398022 () Bool)

(assert (=> b!2187715 (= e!1398022 (>= (size!19751 (_1!14910 lt!816778)) (size!19751 Nil!25276)))))

(declare-fun b!2187716 () Bool)

(declare-fun e!1398024 () tuple2!25080)

(declare-fun call!131710 () tuple2!25080)

(assert (=> b!2187716 (= e!1398024 call!131710)))

(declare-fun b!2187717 () Bool)

(assert (=> b!2187717 (= e!1398024 e!1398026)))

(declare-fun lt!816770 () tuple2!25080)

(assert (=> b!2187717 (= lt!816770 call!131710)))

(declare-fun c!348025 () Bool)

(assert (=> b!2187717 (= c!348025 (isEmpty!14530 (_1!14910 lt!816770)))))

(declare-fun bm!131703 () Bool)

(declare-fun call!131711 () List!25360)

(assert (=> bm!131703 (= call!131711 (tail!3142 lt!816118))))

(declare-fun b!2187718 () Bool)

(assert (=> b!2187718 (= e!1398025 (tuple2!25081 Nil!25276 lt!816118))))

(declare-fun b!2187719 () Bool)

(declare-fun Unit!38420 () Unit!38401)

(assert (=> b!2187719 (= e!1398021 Unit!38420)))

(declare-fun lt!816767 () Unit!38401)

(declare-fun call!131705 () Unit!38401)

(assert (=> b!2187719 (= lt!816767 call!131705)))

(declare-fun call!131712 () Bool)

(assert (=> b!2187719 call!131712))

(declare-fun lt!816764 () Unit!38401)

(assert (=> b!2187719 (= lt!816764 lt!816767)))

(declare-fun lt!816786 () Unit!38401)

(assert (=> b!2187719 (= lt!816786 call!131704)))

(assert (=> b!2187719 (= lt!816118 Nil!25276)))

(declare-fun lt!816791 () Unit!38401)

(assert (=> b!2187719 (= lt!816791 lt!816786)))

(assert (=> b!2187719 false))

(declare-fun b!2187720 () Bool)

(declare-fun e!1398018 () tuple2!25080)

(assert (=> b!2187720 (= e!1398025 e!1398018)))

(declare-fun c!348021 () Bool)

(assert (=> b!2187720 (= c!348021 (= 0 (sizeTr!129 lt!816118 0)))))

(declare-fun bm!131704 () Bool)

(assert (=> bm!131704 (= call!131712 (isPrefix!2165 lt!816118 lt!816118))))

(declare-fun bm!131705 () Bool)

(declare-fun lt!816779 () List!25360)

(assert (=> bm!131705 (= call!131710 (findLongestMatchInner!674 call!131707 lt!816779 (+ 0 1) call!131711 lt!816118 (sizeTr!129 lt!816118 0)))))

(declare-fun b!2187721 () Bool)

(declare-fun c!348026 () Bool)

(assert (=> b!2187721 (= c!348026 call!131703)))

(declare-fun lt!816792 () Unit!38401)

(declare-fun lt!816783 () Unit!38401)

(assert (=> b!2187721 (= lt!816792 lt!816783)))

(assert (=> b!2187721 (= lt!816118 Nil!25276)))

(assert (=> b!2187721 (= lt!816783 call!131704)))

(declare-fun lt!816761 () Unit!38401)

(declare-fun lt!816766 () Unit!38401)

(assert (=> b!2187721 (= lt!816761 lt!816766)))

(assert (=> b!2187721 call!131712))

(assert (=> b!2187721 (= lt!816766 call!131705)))

(declare-fun e!1398019 () tuple2!25080)

(assert (=> b!2187721 (= e!1398018 e!1398019)))

(declare-fun b!2187722 () Bool)

(assert (=> b!2187722 (= e!1398019 (tuple2!25081 Nil!25276 lt!816118))))

(declare-fun bm!131706 () Bool)

(assert (=> bm!131706 (= call!131706 (head!4670 lt!816118))))

(declare-fun b!2187723 () Bool)

(assert (=> b!2187723 (= e!1398019 (tuple2!25081 Nil!25276 Nil!25276))))

(declare-fun bm!131707 () Bool)

(assert (=> bm!131707 (= call!131705 (lemmaIsPrefixRefl!1425 lt!816118 lt!816118))))

(declare-fun b!2187724 () Bool)

(declare-fun c!348022 () Bool)

(assert (=> b!2187724 (= c!348022 call!131703)))

(declare-fun lt!816765 () Unit!38401)

(declare-fun lt!816788 () Unit!38401)

(assert (=> b!2187724 (= lt!816765 lt!816788)))

(declare-fun lt!816768 () C!12244)

(declare-fun lt!816793 () List!25360)

(assert (=> b!2187724 (= (++!6410 (++!6410 Nil!25276 (Cons!25276 lt!816768 Nil!25276)) lt!816793) lt!816118)))

(assert (=> b!2187724 (= lt!816788 (lemmaMoveElementToOtherListKeepsConcatEq!523 Nil!25276 lt!816768 lt!816793 lt!816118))))

(assert (=> b!2187724 (= lt!816793 (tail!3142 lt!816118))))

(assert (=> b!2187724 (= lt!816768 (head!4670 lt!816118))))

(declare-fun lt!816787 () Unit!38401)

(declare-fun lt!816763 () Unit!38401)

(assert (=> b!2187724 (= lt!816787 lt!816763)))

(assert (=> b!2187724 (isPrefix!2165 (++!6410 Nil!25276 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276)) lt!816118)))

(assert (=> b!2187724 (= lt!816763 (lemmaAddHeadSuffixToPrefixStillPrefix!395 Nil!25276 lt!816118))))

(declare-fun lt!816785 () Unit!38401)

(declare-fun lt!816784 () Unit!38401)

(assert (=> b!2187724 (= lt!816785 lt!816784)))

(assert (=> b!2187724 (= lt!816784 (lemmaAddHeadSuffixToPrefixStillPrefix!395 Nil!25276 lt!816118))))

(assert (=> b!2187724 (= lt!816779 (++!6410 Nil!25276 (Cons!25276 (head!4670 lt!816118) Nil!25276)))))

(declare-fun lt!816776 () Unit!38401)

(assert (=> b!2187724 (= lt!816776 e!1398021)))

(declare-fun c!348020 () Bool)

(assert (=> b!2187724 (= c!348020 (= (size!19751 Nil!25276) (size!19751 lt!816118)))))

(declare-fun lt!816762 () Unit!38401)

(declare-fun lt!816760 () Unit!38401)

(assert (=> b!2187724 (= lt!816762 lt!816760)))

(assert (=> b!2187724 (<= (size!19751 Nil!25276) (size!19751 lt!816118))))

(assert (=> b!2187724 (= lt!816760 (lemmaIsPrefixThenSmallerEqSize!198 Nil!25276 lt!816118))))

(assert (=> b!2187724 (= e!1398018 e!1398024)))

(declare-fun b!2187725 () Bool)

(assert (=> b!2187725 (= e!1398026 lt!816770)))

(declare-fun b!2187726 () Bool)

(assert (=> b!2187726 (= e!1398023 e!1398022)))

(declare-fun res!939934 () Bool)

(assert (=> b!2187726 (=> res!939934 e!1398022)))

(assert (=> b!2187726 (= res!939934 (isEmpty!14530 (_1!14910 lt!816778)))))

(assert (= (and d!655732 c!348023) b!2187718))

(assert (= (and d!655732 (not c!348023)) b!2187720))

(assert (= (and b!2187720 c!348021) b!2187721))

(assert (= (and b!2187720 (not c!348021)) b!2187724))

(assert (= (and b!2187721 c!348026) b!2187723))

(assert (= (and b!2187721 (not c!348026)) b!2187722))

(assert (= (and b!2187724 c!348020) b!2187719))

(assert (= (and b!2187724 (not c!348020)) b!2187713))

(assert (= (and b!2187724 c!348022) b!2187717))

(assert (= (and b!2187724 (not c!348022)) b!2187716))

(assert (= (and b!2187717 c!348025) b!2187714))

(assert (= (and b!2187717 (not c!348025)) b!2187725))

(assert (= (or b!2187717 b!2187716) bm!131706))

(assert (= (or b!2187717 b!2187716) bm!131703))

(assert (= (or b!2187717 b!2187716) bm!131700))

(assert (= (or b!2187717 b!2187716) bm!131705))

(assert (= (or b!2187721 b!2187719) bm!131704))

(assert (= (or b!2187721 b!2187719) bm!131707))

(assert (= (or b!2187721 b!2187719) bm!131701))

(assert (= (or b!2187721 b!2187724) bm!131702))

(assert (= (and d!655732 res!939935) b!2187726))

(assert (= (and b!2187726 (not res!939934)) b!2187715))

(assert (=> bm!131701 m!2629329))

(declare-fun m!2630523 () Bool)

(assert (=> bm!131700 m!2630523))

(declare-fun m!2630527 () Bool)

(assert (=> b!2187715 m!2630527))

(assert (=> b!2187715 m!2628759))

(assert (=> bm!131706 m!2629335))

(assert (=> bm!131702 m!2628893))

(assert (=> d!655732 m!2629337))

(assert (=> d!655732 m!2629339))

(declare-fun m!2630537 () Bool)

(assert (=> d!655732 m!2630537))

(assert (=> d!655732 m!2629343))

(assert (=> d!655732 m!2629345))

(declare-fun m!2630539 () Bool)

(assert (=> d!655732 m!2630539))

(assert (=> d!655732 m!2629337))

(assert (=> d!655732 m!2628783))

(assert (=> d!655732 m!2629349))

(assert (=> bm!131707 m!2629351))

(assert (=> bm!131704 m!2629353))

(declare-fun m!2630541 () Bool)

(assert (=> b!2187717 m!2630541))

(assert (=> bm!131705 m!2628819))

(declare-fun m!2630543 () Bool)

(assert (=> bm!131705 m!2630543))

(assert (=> bm!131703 m!2629359))

(declare-fun m!2630545 () Bool)

(assert (=> b!2187726 m!2630545))

(assert (=> b!2187724 m!2629363))

(assert (=> b!2187724 m!2629359))

(assert (=> b!2187724 m!2629349))

(assert (=> b!2187724 m!2629365))

(assert (=> b!2187724 m!2629349))

(assert (=> b!2187724 m!2629367))

(declare-fun m!2630547 () Bool)

(assert (=> b!2187724 m!2630547))

(assert (=> b!2187724 m!2629371))

(assert (=> b!2187724 m!2628761))

(assert (=> b!2187724 m!2629373))

(declare-fun m!2630549 () Bool)

(assert (=> b!2187724 m!2630549))

(declare-fun m!2630551 () Bool)

(assert (=> b!2187724 m!2630551))

(assert (=> b!2187724 m!2629371))

(assert (=> b!2187724 m!2629379))

(assert (=> b!2187724 m!2630549))

(assert (=> b!2187724 m!2628759))

(assert (=> b!2187724 m!2629335))

(assert (=> d!655086 d!655732))

(declare-fun d!655736 () Bool)

(assert (=> d!655736 (= (sizeTr!129 lt!816139 lt!816138) (+ (size!19751 lt!816139) lt!816138))))

(declare-fun lt!816799 () Unit!38401)

(declare-fun choose!12957 (List!25360 Int) Unit!38401)

(assert (=> d!655736 (= lt!816799 (choose!12957 lt!816139 lt!816138))))

(assert (=> d!655736 (= (lemmaSizeTrEqualsSize!128 lt!816139 lt!816138) lt!816799)))

(declare-fun bs!448226 () Bool)

(assert (= bs!448226 d!655736))

(assert (=> bs!448226 m!2628831))

(assert (=> bs!448226 m!2628823))

(declare-fun m!2630557 () Bool)

(assert (=> bs!448226 m!2630557))

(assert (=> d!655086 d!655736))

(declare-fun d!655740 () Bool)

(declare-fun lt!816800 () Int)

(assert (=> d!655740 (>= lt!816800 0)))

(declare-fun e!1398028 () Int)

(assert (=> d!655740 (= lt!816800 e!1398028)))

(declare-fun c!348028 () Bool)

(assert (=> d!655740 (= c!348028 ((_ is Nil!25276) lt!816139))))

(assert (=> d!655740 (= (size!19751 lt!816139) lt!816800)))

(declare-fun b!2187729 () Bool)

(assert (=> b!2187729 (= e!1398028 0)))

(declare-fun b!2187730 () Bool)

(assert (=> b!2187730 (= e!1398028 (+ 1 (size!19751 (t!197950 lt!816139))))))

(assert (= (and d!655740 c!348028) b!2187729))

(assert (= (and d!655740 (not c!348028)) b!2187730))

(declare-fun m!2630563 () Bool)

(assert (=> b!2187730 m!2630563))

(assert (=> d!655086 d!655740))

(assert (=> d!655086 d!655250))

(declare-fun d!655742 () Bool)

(declare-fun c!348029 () Bool)

(assert (=> d!655742 (= c!348029 ((_ is Nil!25276) lt!816118))))

(declare-fun e!1398029 () Int)

(assert (=> d!655742 (= (sizeTr!129 lt!816118 lt!816143) e!1398029)))

(declare-fun b!2187731 () Bool)

(assert (=> b!2187731 (= e!1398029 lt!816143)))

(declare-fun b!2187732 () Bool)

(assert (=> b!2187732 (= e!1398029 (sizeTr!129 (t!197950 lt!816118) (+ lt!816143 1)))))

(assert (= (and d!655742 c!348029) b!2187731))

(assert (= (and d!655742 (not c!348029)) b!2187732))

(declare-fun m!2630567 () Bool)

(assert (=> b!2187732 m!2630567))

(assert (=> d!655086 d!655742))

(declare-fun d!655746 () Bool)

(assert (=> d!655746 (= (sizeTr!129 lt!816118 lt!816143) (+ (size!19751 lt!816118) lt!816143))))

(declare-fun lt!816801 () Unit!38401)

(assert (=> d!655746 (= lt!816801 (choose!12957 lt!816118 lt!816143))))

(assert (=> d!655746 (= (lemmaSizeTrEqualsSize!128 lt!816118 lt!816143) lt!816801)))

(declare-fun bs!448228 () Bool)

(assert (= bs!448228 d!655746))

(assert (=> bs!448228 m!2628825))

(assert (=> bs!448228 m!2628761))

(declare-fun m!2630571 () Bool)

(assert (=> bs!448228 m!2630571))

(assert (=> d!655086 d!655746))

(declare-fun b!2187736 () Bool)

(declare-fun e!1398031 () Bool)

(declare-fun lt!816802 () List!25360)

(assert (=> b!2187736 (= e!1398031 (or (not (= (_2!14910 lt!816144) Nil!25276)) (= lt!816802 (_1!14910 lt!816144))))))

(declare-fun b!2187733 () Bool)

(declare-fun e!1398030 () List!25360)

(assert (=> b!2187733 (= e!1398030 (_2!14910 lt!816144))))

(declare-fun b!2187735 () Bool)

(declare-fun res!939937 () Bool)

(assert (=> b!2187735 (=> (not res!939937) (not e!1398031))))

(assert (=> b!2187735 (= res!939937 (= (size!19751 lt!816802) (+ (size!19751 (_1!14910 lt!816144)) (size!19751 (_2!14910 lt!816144)))))))

(declare-fun b!2187734 () Bool)

(assert (=> b!2187734 (= e!1398030 (Cons!25276 (h!30677 (_1!14910 lt!816144)) (++!6410 (t!197950 (_1!14910 lt!816144)) (_2!14910 lt!816144))))))

(declare-fun d!655748 () Bool)

(assert (=> d!655748 e!1398031))

(declare-fun res!939936 () Bool)

(assert (=> d!655748 (=> (not res!939936) (not e!1398031))))

(assert (=> d!655748 (= res!939936 (= (content!3451 lt!816802) ((_ map or) (content!3451 (_1!14910 lt!816144)) (content!3451 (_2!14910 lt!816144)))))))

(assert (=> d!655748 (= lt!816802 e!1398030)))

(declare-fun c!348030 () Bool)

(assert (=> d!655748 (= c!348030 ((_ is Nil!25276) (_1!14910 lt!816144)))))

(assert (=> d!655748 (= (++!6410 (_1!14910 lt!816144) (_2!14910 lt!816144)) lt!816802)))

(assert (= (and d!655748 c!348030) b!2187733))

(assert (= (and d!655748 (not c!348030)) b!2187734))

(assert (= (and d!655748 res!939936) b!2187735))

(assert (= (and b!2187735 res!939937) b!2187736))

(declare-fun m!2630573 () Bool)

(assert (=> b!2187735 m!2630573))

(declare-fun m!2630575 () Bool)

(assert (=> b!2187735 m!2630575))

(declare-fun m!2630577 () Bool)

(assert (=> b!2187735 m!2630577))

(declare-fun m!2630579 () Bool)

(assert (=> b!2187734 m!2630579))

(declare-fun m!2630581 () Bool)

(assert (=> d!655748 m!2630581))

(declare-fun m!2630583 () Bool)

(assert (=> d!655748 m!2630583))

(declare-fun m!2630587 () Bool)

(assert (=> d!655748 m!2630587))

(assert (=> d!655086 d!655748))

(declare-fun d!655752 () Bool)

(declare-fun c!348032 () Bool)

(assert (=> d!655752 (= c!348032 ((_ is Nil!25276) lt!816118))))

(declare-fun e!1398034 () Int)

(assert (=> d!655752 (= (sizeTr!129 lt!816118 0) e!1398034)))

(declare-fun b!2187741 () Bool)

(assert (=> b!2187741 (= e!1398034 0)))

(declare-fun b!2187742 () Bool)

(assert (=> b!2187742 (= e!1398034 (sizeTr!129 (t!197950 lt!816118) (+ 0 1)))))

(assert (= (and d!655752 c!348032) b!2187741))

(assert (= (and d!655752 (not c!348032)) b!2187742))

(declare-fun m!2630593 () Bool)

(assert (=> b!2187742 m!2630593))

(assert (=> d!655086 d!655752))

(assert (=> d!655086 d!655168))

(declare-fun b!2187746 () Bool)

(declare-fun e!1398036 () Int)

(assert (=> b!2187746 (= e!1398036 lt!816114)))

(declare-fun lt!816805 () (InoxSet Context!3238))

(declare-fun e!1398038 () Int)

(declare-fun b!2187747 () Bool)

(assert (=> b!2187747 (= e!1398038 (furthestNullablePosition!231 lt!816805 (+ lt!816114 1) totalInput!977 (size!19750 totalInput!977) e!1398036))))

(assert (=> b!2187747 (= lt!816805 (derivationStepZipper!142 z!4055 (apply!6094 totalInput!977 lt!816114)))))

(declare-fun c!348034 () Bool)

(assert (=> b!2187747 (= c!348034 (nullableZipper!329 lt!816805))))

(declare-fun d!655756 () Bool)

(declare-fun lt!816804 () Int)

(assert (=> d!655756 (and (>= lt!816804 (- 1)) (< lt!816804 (size!19750 totalInput!977)) (>= lt!816804 lt!816110) (or (= lt!816804 lt!816110) (>= lt!816804 lt!816114)))))

(assert (=> d!655756 (= lt!816804 e!1398038)))

(declare-fun c!348033 () Bool)

(declare-fun e!1398037 () Bool)

(assert (=> d!655756 (= c!348033 e!1398037)))

(declare-fun res!939943 () Bool)

(assert (=> d!655756 (=> res!939943 e!1398037)))

(assert (=> d!655756 (= res!939943 (= lt!816114 (size!19750 totalInput!977)))))

(assert (=> d!655756 (and (>= lt!816114 0) (<= lt!816114 (size!19750 totalInput!977)))))

(assert (=> d!655756 (= (furthestNullablePosition!231 z!4055 lt!816114 totalInput!977 (size!19750 totalInput!977) lt!816110) lt!816804)))

(declare-fun b!2187748 () Bool)

(assert (=> b!2187748 (= e!1398037 (lostCauseZipper!175 z!4055))))

(declare-fun b!2187749 () Bool)

(assert (=> b!2187749 (= e!1398036 lt!816110)))

(declare-fun b!2187750 () Bool)

(assert (=> b!2187750 (= e!1398038 lt!816110)))

(assert (= (and d!655756 (not res!939943)) b!2187748))

(assert (= (and d!655756 c!348033) b!2187750))

(assert (= (and d!655756 (not c!348033)) b!2187747))

(assert (= (and b!2187747 c!348034) b!2187746))

(assert (= (and b!2187747 (not c!348034)) b!2187749))

(assert (=> b!2187747 m!2628723))

(declare-fun m!2630601 () Bool)

(assert (=> b!2187747 m!2630601))

(assert (=> b!2187747 m!2629159))

(assert (=> b!2187747 m!2629159))

(assert (=> b!2187747 m!2629161))

(declare-fun m!2630603 () Bool)

(assert (=> b!2187747 m!2630603))

(assert (=> b!2187748 m!2629165))

(assert (=> d!655212 d!655756))

(assert (=> d!655212 d!655094))

(declare-fun d!655762 () Bool)

(declare-fun e!1398049 () Bool)

(assert (=> d!655762 e!1398049))

(declare-fun res!939950 () Bool)

(assert (=> d!655762 (=> res!939950 e!1398049)))

(declare-fun lt!816813 () Int)

(assert (=> d!655762 (= res!939950 (<= lt!816813 0))))

(assert (=> d!655762 (= lt!816813 (+ (- (furthestNullablePosition!231 z!4055 lt!816114 totalInput!977 (size!19750 totalInput!977) lt!816110) lt!816114) 1))))

(assert (=> d!655762 true))

(declare-fun _$71!141 () Unit!38401)

(assert (=> d!655762 (= (choose!12942 z!4055 lt!816114 totalInput!977 lt!816110) _$71!141)))

(declare-fun b!2187765 () Bool)

(assert (=> b!2187765 (= e!1398049 (matchZipper!165 z!4055 (take!257 (drop!1267 (list!9706 totalInput!977) lt!816114) lt!816813)))))

(assert (= (and d!655762 (not res!939950)) b!2187765))

(assert (=> d!655762 m!2628723))

(assert (=> d!655762 m!2628723))

(assert (=> d!655762 m!2629203))

(assert (=> b!2187765 m!2628809))

(assert (=> b!2187765 m!2628809))

(assert (=> b!2187765 m!2629207))

(assert (=> b!2187765 m!2629207))

(declare-fun m!2630629 () Bool)

(assert (=> b!2187765 m!2630629))

(assert (=> b!2187765 m!2630629))

(declare-fun m!2630631 () Bool)

(assert (=> b!2187765 m!2630631))

(assert (=> d!655212 d!655762))

(assert (=> b!2186257 d!655578))

(assert (=> b!2186257 d!655580))

(declare-fun d!655778 () Bool)

(declare-fun lt!816814 () Int)

(assert (=> d!655778 (>= lt!816814 0)))

(declare-fun e!1398050 () Int)

(assert (=> d!655778 (= lt!816814 e!1398050)))

(declare-fun c!348039 () Bool)

(assert (=> d!655778 (= c!348039 ((_ is Nil!25276) lt!816150))))

(assert (=> d!655778 (= (size!19751 lt!816150) lt!816814)))

(declare-fun b!2187766 () Bool)

(assert (=> b!2187766 (= e!1398050 0)))

(declare-fun b!2187767 () Bool)

(assert (=> b!2187767 (= e!1398050 (+ 1 (size!19751 (t!197950 lt!816150))))))

(assert (= (and d!655778 c!348039) b!2187766))

(assert (= (and d!655778 (not c!348039)) b!2187767))

(declare-fun m!2630633 () Bool)

(assert (=> b!2187767 m!2630633))

(assert (=> b!2186194 d!655778))

(assert (=> b!2186194 d!655554))

(declare-fun d!655780 () Bool)

(declare-fun lt!816815 () Int)

(assert (=> d!655780 (>= lt!816815 0)))

(declare-fun e!1398051 () Int)

(assert (=> d!655780 (= lt!816815 e!1398051)))

(declare-fun c!348040 () Bool)

(assert (=> d!655780 (= c!348040 ((_ is Nil!25276) lt!816094))))

(assert (=> d!655780 (= (size!19751 lt!816094) lt!816815)))

(declare-fun b!2187768 () Bool)

(assert (=> b!2187768 (= e!1398051 0)))

(declare-fun b!2187769 () Bool)

(assert (=> b!2187769 (= e!1398051 (+ 1 (size!19751 (t!197950 lt!816094))))))

(assert (= (and d!655780 c!348040) b!2187768))

(assert (= (and d!655780 (not c!348040)) b!2187769))

(declare-fun m!2630635 () Bool)

(assert (=> b!2187769 m!2630635))

(assert (=> b!2186194 d!655780))

(assert (=> b!2186245 d!655364))

(declare-fun d!655782 () Bool)

(assert (=> d!655782 (= (isEmpty!14530 (_1!14910 lt!816464)) ((_ is Nil!25276) (_1!14910 lt!816464)))))

(assert (=> b!2186764 d!655782))

(declare-fun d!655784 () Bool)

(declare-fun c!348041 () Bool)

(assert (=> d!655784 (= c!348041 ((_ is Nil!25276) lt!816501))))

(declare-fun e!1398052 () (InoxSet C!12244))

(assert (=> d!655784 (= (content!3451 lt!816501) e!1398052)))

(declare-fun b!2187770 () Bool)

(assert (=> b!2187770 (= e!1398052 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2187771 () Bool)

(assert (=> b!2187771 (= e!1398052 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 lt!816501) true) (content!3451 (t!197950 lt!816501))))))

(assert (= (and d!655784 c!348041) b!2187770))

(assert (= (and d!655784 (not c!348041)) b!2187771))

(declare-fun m!2630637 () Bool)

(assert (=> b!2187771 m!2630637))

(declare-fun m!2630639 () Bool)

(assert (=> b!2187771 m!2630639))

(assert (=> d!655278 d!655784))

(declare-fun d!655786 () Bool)

(declare-fun c!348042 () Bool)

(assert (=> d!655786 (= c!348042 ((_ is Nil!25276) (drop!1267 lt!816109 lt!816114)))))

(declare-fun e!1398053 () (InoxSet C!12244))

(assert (=> d!655786 (= (content!3451 (drop!1267 lt!816109 lt!816114)) e!1398053)))

(declare-fun b!2187772 () Bool)

(assert (=> b!2187772 (= e!1398053 ((as const (Array C!12244 Bool)) false))))

(declare-fun b!2187773 () Bool)

(assert (=> b!2187773 (= e!1398053 ((_ map or) (store ((as const (Array C!12244 Bool)) false) (h!30677 (drop!1267 lt!816109 lt!816114)) true) (content!3451 (t!197950 (drop!1267 lt!816109 lt!816114)))))))

(assert (= (and d!655786 c!348042) b!2187772))

(assert (= (and d!655786 (not c!348042)) b!2187773))

(declare-fun m!2630641 () Bool)

(assert (=> b!2187773 m!2630641))

(assert (=> b!2187773 m!2629651))

(assert (=> d!655278 d!655786))

(declare-fun d!655788 () Bool)

(declare-fun lt!816816 () Int)

(assert (=> d!655788 (>= lt!816816 0)))

(declare-fun e!1398054 () Int)

(assert (=> d!655788 (= lt!816816 e!1398054)))

(declare-fun c!348043 () Bool)

(assert (=> d!655788 (= c!348043 ((_ is Nil!25276) (list!9706 input!5540)))))

(assert (=> d!655788 (= (size!19751 (list!9706 input!5540)) lt!816816)))

(declare-fun b!2187774 () Bool)

(assert (=> b!2187774 (= e!1398054 0)))

(declare-fun b!2187775 () Bool)

(assert (=> b!2187775 (= e!1398054 (+ 1 (size!19751 (t!197950 (list!9706 input!5540)))))))

(assert (= (and d!655788 c!348043) b!2187774))

(assert (= (and d!655788 (not c!348043)) b!2187775))

(declare-fun m!2630643 () Bool)

(assert (=> b!2187775 m!2630643))

(assert (=> d!655090 d!655788))

(assert (=> d!655090 d!655190))

(declare-fun d!655790 () Bool)

(declare-fun lt!816817 () Int)

(assert (=> d!655790 (= lt!816817 (size!19751 (list!9707 (c!347560 input!5540))))))

(assert (=> d!655790 (= lt!816817 (ite ((_ is Empty!8185) (c!347560 input!5540)) 0 (ite ((_ is Leaf!11977) (c!347560 input!5540)) (csize!16601 (c!347560 input!5540)) (csize!16600 (c!347560 input!5540)))))))

(assert (=> d!655790 (= (size!19752 (c!347560 input!5540)) lt!816817)))

(declare-fun bs!448238 () Bool)

(assert (= bs!448238 d!655790))

(assert (=> bs!448238 m!2629129))

(assert (=> bs!448238 m!2629129))

(declare-fun m!2630645 () Bool)

(assert (=> bs!448238 m!2630645))

(assert (=> d!655090 d!655790))

(declare-fun d!655792 () Bool)

(declare-fun c!348046 () Bool)

(assert (=> d!655792 (= c!348046 ((_ is Nil!25278) lt!816500))))

(declare-fun e!1398059 () (InoxSet Context!3238))

(assert (=> d!655792 (= (content!3453 lt!816500) e!1398059)))

(declare-fun b!2187782 () Bool)

(assert (=> b!2187782 (= e!1398059 ((as const (Array Context!3238 Bool)) false))))

(declare-fun b!2187783 () Bool)

(assert (=> b!2187783 (= e!1398059 ((_ map or) (store ((as const (Array Context!3238 Bool)) false) (h!30679 lt!816500) true) (content!3453 (t!197952 lt!816500))))))

(assert (= (and d!655792 c!348046) b!2187782))

(assert (= (and d!655792 (not c!348046)) b!2187783))

(declare-fun m!2630647 () Bool)

(assert (=> b!2187783 m!2630647))

(declare-fun m!2630649 () Bool)

(assert (=> b!2187783 m!2630649))

(assert (=> b!2186815 d!655792))

(assert (=> b!2186498 d!655354))

(assert (=> bm!131605 d!655364))

(declare-fun d!655794 () Bool)

(declare-fun res!939953 () Bool)

(declare-fun e!1398060 () Bool)

(assert (=> d!655794 (=> (not res!939953) (not e!1398060))))

(assert (=> d!655794 (= res!939953 (<= (size!19751 (list!9710 (xs!11127 (c!347560 input!5540)))) 512))))

(assert (=> d!655794 (= (inv!33613 (c!347560 input!5540)) e!1398060)))

(declare-fun b!2187784 () Bool)

(declare-fun res!939954 () Bool)

(assert (=> b!2187784 (=> (not res!939954) (not e!1398060))))

(assert (=> b!2187784 (= res!939954 (= (csize!16601 (c!347560 input!5540)) (size!19751 (list!9710 (xs!11127 (c!347560 input!5540))))))))

(declare-fun b!2187785 () Bool)

(assert (=> b!2187785 (= e!1398060 (and (> (csize!16601 (c!347560 input!5540)) 0) (<= (csize!16601 (c!347560 input!5540)) 512)))))

(assert (= (and d!655794 res!939953) b!2187784))

(assert (= (and b!2187784 res!939954) b!2187785))

(assert (=> d!655794 m!2630485))

(assert (=> d!655794 m!2630485))

(declare-fun m!2630651 () Bool)

(assert (=> d!655794 m!2630651))

(assert (=> b!2187784 m!2630485))

(assert (=> b!2187784 m!2630485))

(assert (=> b!2187784 m!2630651))

(assert (=> b!2186808 d!655794))

(declare-fun d!655796 () Bool)

(declare-fun lt!816818 () Int)

(assert (=> d!655796 (>= lt!816818 0)))

(declare-fun e!1398061 () Int)

(assert (=> d!655796 (= lt!816818 e!1398061)))

(declare-fun c!348047 () Bool)

(assert (=> d!655796 (= c!348047 ((_ is Nil!25276) (list!9706 totalInput!977)))))

(assert (=> d!655796 (= (size!19751 (list!9706 totalInput!977)) lt!816818)))

(declare-fun b!2187786 () Bool)

(assert (=> b!2187786 (= e!1398061 0)))

(declare-fun b!2187787 () Bool)

(assert (=> b!2187787 (= e!1398061 (+ 1 (size!19751 (t!197950 (list!9706 totalInput!977)))))))

(assert (= (and d!655796 c!348047) b!2187786))

(assert (= (and d!655796 (not c!348047)) b!2187787))

(declare-fun m!2630653 () Bool)

(assert (=> b!2187787 m!2630653))

(assert (=> d!655094 d!655796))

(assert (=> d!655094 d!655188))

(declare-fun d!655798 () Bool)

(declare-fun lt!816819 () Int)

(assert (=> d!655798 (= lt!816819 (size!19751 (list!9707 (c!347560 totalInput!977))))))

(assert (=> d!655798 (= lt!816819 (ite ((_ is Empty!8185) (c!347560 totalInput!977)) 0 (ite ((_ is Leaf!11977) (c!347560 totalInput!977)) (csize!16601 (c!347560 totalInput!977)) (csize!16600 (c!347560 totalInput!977)))))))

(assert (=> d!655798 (= (size!19752 (c!347560 totalInput!977)) lt!816819)))

(declare-fun bs!448239 () Bool)

(assert (= bs!448239 d!655798))

(assert (=> bs!448239 m!2629127))

(assert (=> bs!448239 m!2629127))

(declare-fun m!2630655 () Bool)

(assert (=> bs!448239 m!2630655))

(assert (=> d!655094 d!655798))

(assert (=> b!2186469 d!655374))

(assert (=> b!2186469 d!655378))

(declare-fun b!2187789 () Bool)

(declare-fun e!1398063 () List!25360)

(assert (=> b!2187789 (= e!1398063 Nil!25276)))

(declare-fun b!2187790 () Bool)

(declare-fun e!1398064 () List!25360)

(assert (=> b!2187790 (= e!1398063 e!1398064)))

(declare-fun c!348049 () Bool)

(assert (=> b!2187790 (= c!348049 ((_ is Leaf!11977) (c!347560 totalInput!977)))))

(declare-fun b!2187791 () Bool)

(assert (=> b!2187791 (= e!1398064 (list!9710 (xs!11127 (c!347560 totalInput!977))))))

(declare-fun d!655800 () Bool)

(declare-fun c!348048 () Bool)

(assert (=> d!655800 (= c!348048 ((_ is Empty!8185) (c!347560 totalInput!977)))))

(assert (=> d!655800 (= (list!9707 (c!347560 totalInput!977)) e!1398063)))

(declare-fun b!2187792 () Bool)

(assert (=> b!2187792 (= e!1398064 (++!6410 (list!9707 (left!19400 (c!347560 totalInput!977))) (list!9707 (right!19730 (c!347560 totalInput!977)))))))

(assert (= (and d!655800 c!348048) b!2187789))

(assert (= (and d!655800 (not c!348048)) b!2187790))

(assert (= (and b!2187790 c!348049) b!2187791))

(assert (= (and b!2187790 (not c!348049)) b!2187792))

(assert (=> b!2187791 m!2630439))

(declare-fun m!2630657 () Bool)

(assert (=> b!2187792 m!2630657))

(declare-fun m!2630659 () Bool)

(assert (=> b!2187792 m!2630659))

(assert (=> b!2187792 m!2630657))

(assert (=> b!2187792 m!2630659))

(declare-fun m!2630661 () Bool)

(assert (=> b!2187792 m!2630661))

(assert (=> d!655188 d!655800))

(assert (=> b!2186248 d!655590))

(declare-fun b!2187793 () Bool)

(declare-fun e!1398065 () List!25360)

(assert (=> b!2187793 (= e!1398065 Nil!25276)))

(declare-fun b!2187794 () Bool)

(declare-fun e!1398066 () List!25360)

(assert (=> b!2187794 (= e!1398065 e!1398066)))

(declare-fun c!348051 () Bool)

(assert (=> b!2187794 (= c!348051 ((_ is Leaf!11977) (c!347560 (_1!14909 lt!816099))))))

(declare-fun b!2187795 () Bool)

(assert (=> b!2187795 (= e!1398066 (list!9710 (xs!11127 (c!347560 (_1!14909 lt!816099)))))))

(declare-fun d!655802 () Bool)

(declare-fun c!348050 () Bool)

(assert (=> d!655802 (= c!348050 ((_ is Empty!8185) (c!347560 (_1!14909 lt!816099))))))

(assert (=> d!655802 (= (list!9707 (c!347560 (_1!14909 lt!816099))) e!1398065)))

(declare-fun b!2187796 () Bool)

(assert (=> b!2187796 (= e!1398066 (++!6410 (list!9707 (left!19400 (c!347560 (_1!14909 lt!816099)))) (list!9707 (right!19730 (c!347560 (_1!14909 lt!816099))))))))

(assert (= (and d!655802 c!348050) b!2187793))

(assert (= (and d!655802 (not c!348050)) b!2187794))

(assert (= (and b!2187794 c!348051) b!2187795))

(assert (= (and b!2187794 (not c!348051)) b!2187796))

(declare-fun m!2630663 () Bool)

(assert (=> b!2187795 m!2630663))

(declare-fun m!2630665 () Bool)

(assert (=> b!2187796 m!2630665))

(declare-fun m!2630667 () Bool)

(assert (=> b!2187796 m!2630667))

(assert (=> b!2187796 m!2630665))

(assert (=> b!2187796 m!2630667))

(declare-fun m!2630671 () Bool)

(assert (=> b!2187796 m!2630671))

(assert (=> d!655096 d!655802))

(assert (=> b!2186576 d!655590))

(declare-fun d!655808 () Bool)

(assert (=> d!655808 (= (head!4670 lt!816119) (h!30677 lt!816119))))

(assert (=> b!2186576 d!655808))

(declare-fun b!2187799 () Bool)

(declare-fun res!939959 () Bool)

(declare-fun e!1398068 () Bool)

(assert (=> b!2187799 (=> (not res!939959) (not e!1398068))))

(assert (=> b!2187799 (= res!939959 (isBalanced!2546 (left!19400 (c!347560 totalInput!977))))))

(declare-fun d!655810 () Bool)

(declare-fun res!939961 () Bool)

(declare-fun e!1398069 () Bool)

(assert (=> d!655810 (=> res!939961 e!1398069)))

(assert (=> d!655810 (= res!939961 (not ((_ is Node!8185) (c!347560 totalInput!977))))))

(assert (=> d!655810 (= (isBalanced!2546 (c!347560 totalInput!977)) e!1398069)))

(declare-fun b!2187800 () Bool)

(declare-fun res!939960 () Bool)

(assert (=> b!2187800 (=> (not res!939960) (not e!1398068))))

(assert (=> b!2187800 (= res!939960 (<= (- (height!1246 (left!19400 (c!347560 totalInput!977))) (height!1246 (right!19730 (c!347560 totalInput!977)))) 1))))

(declare-fun b!2187801 () Bool)

(assert (=> b!2187801 (= e!1398068 (not (isEmpty!14531 (right!19730 (c!347560 totalInput!977)))))))

(declare-fun b!2187802 () Bool)

(declare-fun res!939956 () Bool)

(assert (=> b!2187802 (=> (not res!939956) (not e!1398068))))

(assert (=> b!2187802 (= res!939956 (not (isEmpty!14531 (left!19400 (c!347560 totalInput!977)))))))

(declare-fun b!2187803 () Bool)

(declare-fun res!939957 () Bool)

(assert (=> b!2187803 (=> (not res!939957) (not e!1398068))))

(assert (=> b!2187803 (= res!939957 (isBalanced!2546 (right!19730 (c!347560 totalInput!977))))))

(declare-fun b!2187804 () Bool)

(assert (=> b!2187804 (= e!1398069 e!1398068)))

(declare-fun res!939958 () Bool)

(assert (=> b!2187804 (=> (not res!939958) (not e!1398068))))

(assert (=> b!2187804 (= res!939958 (<= (- 1) (- (height!1246 (left!19400 (c!347560 totalInput!977))) (height!1246 (right!19730 (c!347560 totalInput!977))))))))

(assert (= (and d!655810 (not res!939961)) b!2187804))

(assert (= (and b!2187804 res!939958) b!2187800))

(assert (= (and b!2187800 res!939960) b!2187799))

(assert (= (and b!2187799 res!939959) b!2187803))

(assert (= (and b!2187803 res!939957) b!2187802))

(assert (= (and b!2187802 res!939956) b!2187801))

(declare-fun m!2630673 () Bool)

(assert (=> b!2187799 m!2630673))

(declare-fun m!2630675 () Bool)

(assert (=> b!2187803 m!2630675))

(assert (=> b!2187804 m!2629633))

(assert (=> b!2187804 m!2629635))

(declare-fun m!2630677 () Bool)

(assert (=> b!2187802 m!2630677))

(declare-fun m!2630679 () Bool)

(assert (=> b!2187801 m!2630679))

(assert (=> b!2187800 m!2629633))

(assert (=> b!2187800 m!2629635))

(assert (=> d!655172 d!655810))

(declare-fun d!655812 () Bool)

(declare-fun c!348053 () Bool)

(assert (=> d!655812 (= c!348053 ((_ is Node!8185) (left!19400 (c!347560 totalInput!977))))))

(declare-fun e!1398070 () Bool)

(assert (=> d!655812 (= (inv!33609 (left!19400 (c!347560 totalInput!977))) e!1398070)))

(declare-fun b!2187805 () Bool)

(assert (=> b!2187805 (= e!1398070 (inv!33612 (left!19400 (c!347560 totalInput!977))))))

(declare-fun b!2187806 () Bool)

(declare-fun e!1398071 () Bool)

(assert (=> b!2187806 (= e!1398070 e!1398071)))

(declare-fun res!939962 () Bool)

(assert (=> b!2187806 (= res!939962 (not ((_ is Leaf!11977) (left!19400 (c!347560 totalInput!977)))))))

(assert (=> b!2187806 (=> res!939962 e!1398071)))

(declare-fun b!2187807 () Bool)

(assert (=> b!2187807 (= e!1398071 (inv!33613 (left!19400 (c!347560 totalInput!977))))))

(assert (= (and d!655812 c!348053) b!2187805))

(assert (= (and d!655812 (not c!348053)) b!2187806))

(assert (= (and b!2187806 (not res!939962)) b!2187807))

(declare-fun m!2630681 () Bool)

(assert (=> b!2187805 m!2630681))

(declare-fun m!2630683 () Bool)

(assert (=> b!2187807 m!2630683))

(assert (=> b!2186903 d!655812))

(declare-fun d!655814 () Bool)

(declare-fun c!348054 () Bool)

(assert (=> d!655814 (= c!348054 ((_ is Node!8185) (right!19730 (c!347560 totalInput!977))))))

(declare-fun e!1398072 () Bool)

(assert (=> d!655814 (= (inv!33609 (right!19730 (c!347560 totalInput!977))) e!1398072)))

(declare-fun b!2187808 () Bool)

(assert (=> b!2187808 (= e!1398072 (inv!33612 (right!19730 (c!347560 totalInput!977))))))

(declare-fun b!2187809 () Bool)

(declare-fun e!1398073 () Bool)

(assert (=> b!2187809 (= e!1398072 e!1398073)))

(declare-fun res!939963 () Bool)

(assert (=> b!2187809 (= res!939963 (not ((_ is Leaf!11977) (right!19730 (c!347560 totalInput!977)))))))

(assert (=> b!2187809 (=> res!939963 e!1398073)))

(declare-fun b!2187810 () Bool)

(assert (=> b!2187810 (= e!1398073 (inv!33613 (right!19730 (c!347560 totalInput!977))))))

(assert (= (and d!655814 c!348054) b!2187808))

(assert (= (and d!655814 (not c!348054)) b!2187809))

(assert (= (and b!2187809 (not res!939963)) b!2187810))

(declare-fun m!2630685 () Bool)

(assert (=> b!2187808 m!2630685))

(declare-fun m!2630687 () Bool)

(assert (=> b!2187810 m!2630687))

(assert (=> b!2186903 d!655814))

(declare-fun b!2187811 () Bool)

(declare-fun e!1398077 () Bool)

(declare-fun e!1398075 () Bool)

(assert (=> b!2187811 (= e!1398077 e!1398075)))

(declare-fun res!939968 () Bool)

(assert (=> b!2187811 (=> (not res!939968) (not e!1398075))))

(declare-fun call!131714 () Bool)

(assert (=> b!2187811 (= res!939968 call!131714)))

(declare-fun b!2187812 () Bool)

(declare-fun e!1398074 () Bool)

(assert (=> b!2187812 (= e!1398074 call!131714)))

(declare-fun b!2187813 () Bool)

(declare-fun e!1398076 () Bool)

(declare-fun e!1398078 () Bool)

(assert (=> b!2187813 (= e!1398076 e!1398078)))

(declare-fun c!348056 () Bool)

(assert (=> b!2187813 (= c!348056 ((_ is Star!6049) (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))))))

(declare-fun bm!131708 () Bool)

(declare-fun call!131713 () Bool)

(declare-fun call!131715 () Bool)

(assert (=> bm!131708 (= call!131713 call!131715)))

(declare-fun b!2187814 () Bool)

(declare-fun e!1398080 () Bool)

(assert (=> b!2187814 (= e!1398080 call!131715)))

(declare-fun bm!131709 () Bool)

(declare-fun c!348055 () Bool)

(assert (=> bm!131709 (= call!131714 (validRegex!2325 (ite c!348055 (regTwo!12611 (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))) (regOne!12610 (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))))))))

(declare-fun bm!131710 () Bool)

(assert (=> bm!131710 (= call!131715 (validRegex!2325 (ite c!348056 (reg!6378 (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))) (ite c!348055 (regOne!12611 (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))) (regTwo!12610 (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534)))))))))

(declare-fun d!655816 () Bool)

(declare-fun res!939966 () Bool)

(assert (=> d!655816 (=> res!939966 e!1398076)))

(assert (=> d!655816 (= res!939966 ((_ is ElementMatch!6049) (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))))))

(assert (=> d!655816 (= (validRegex!2325 (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))) e!1398076)))

(declare-fun b!2187815 () Bool)

(declare-fun res!939965 () Bool)

(assert (=> b!2187815 (=> res!939965 e!1398077)))

(assert (=> b!2187815 (= res!939965 (not ((_ is Concat!10351) (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534)))))))

(declare-fun e!1398079 () Bool)

(assert (=> b!2187815 (= e!1398079 e!1398077)))

(declare-fun b!2187816 () Bool)

(declare-fun res!939967 () Bool)

(assert (=> b!2187816 (=> (not res!939967) (not e!1398074))))

(assert (=> b!2187816 (= res!939967 call!131713)))

(assert (=> b!2187816 (= e!1398079 e!1398074)))

(declare-fun b!2187817 () Bool)

(assert (=> b!2187817 (= e!1398078 e!1398079)))

(assert (=> b!2187817 (= c!348055 ((_ is Union!6049) (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))))))

(declare-fun b!2187818 () Bool)

(assert (=> b!2187818 (= e!1398078 e!1398080)))

(declare-fun res!939964 () Bool)

(assert (=> b!2187818 (= res!939964 (not (nullable!1713 (reg!6378 (ite c!347644 (regTwo!12611 r!12534) (regOne!12610 r!12534))))))))

(assert (=> b!2187818 (=> (not res!939964) (not e!1398080))))

(declare-fun b!2187819 () Bool)

(assert (=> b!2187819 (= e!1398075 call!131713)))

(assert (= (and d!655816 (not res!939966)) b!2187813))

(assert (= (and b!2187813 c!348056) b!2187818))

(assert (= (and b!2187813 (not c!348056)) b!2187817))

(assert (= (and b!2187818 res!939964) b!2187814))

(assert (= (and b!2187817 c!348055) b!2187816))

(assert (= (and b!2187817 (not c!348055)) b!2187815))

(assert (= (and b!2187816 res!939967) b!2187812))

(assert (= (and b!2187815 (not res!939965)) b!2187811))

(assert (= (and b!2187811 res!939968) b!2187819))

(assert (= (or b!2187812 b!2187811) bm!131709))

(assert (= (or b!2187816 b!2187819) bm!131708))

(assert (= (or b!2187814 bm!131708) bm!131710))

(declare-fun m!2630691 () Bool)

(assert (=> bm!131709 m!2630691))

(declare-fun m!2630695 () Bool)

(assert (=> bm!131710 m!2630695))

(declare-fun m!2630697 () Bool)

(assert (=> b!2187818 m!2630697))

(assert (=> bm!131572 d!655816))

(declare-fun d!655822 () Bool)

(declare-fun c!348058 () Bool)

(assert (=> d!655822 (= c!348058 (isEmpty!14530 (tail!3142 (_1!14910 lt!816097))))))

(declare-fun e!1398083 () Bool)

(assert (=> d!655822 (= (matchZipper!165 (derivationStepZipper!142 z!4055 (head!4670 (_1!14910 lt!816097))) (tail!3142 (_1!14910 lt!816097))) e!1398083)))

(declare-fun b!2187824 () Bool)

(assert (=> b!2187824 (= e!1398083 (nullableZipper!329 (derivationStepZipper!142 z!4055 (head!4670 (_1!14910 lt!816097)))))))

(declare-fun b!2187825 () Bool)

(assert (=> b!2187825 (= e!1398083 (matchZipper!165 (derivationStepZipper!142 (derivationStepZipper!142 z!4055 (head!4670 (_1!14910 lt!816097))) (head!4670 (tail!3142 (_1!14910 lt!816097)))) (tail!3142 (tail!3142 (_1!14910 lt!816097)))))))

(assert (= (and d!655822 c!348058) b!2187824))

(assert (= (and d!655822 (not c!348058)) b!2187825))

(assert (=> d!655822 m!2628881))

(assert (=> d!655822 m!2629117))

(assert (=> b!2187824 m!2628879))

(declare-fun m!2630701 () Bool)

(assert (=> b!2187824 m!2630701))

(assert (=> b!2187825 m!2628881))

(assert (=> b!2187825 m!2630083))

(assert (=> b!2187825 m!2628879))

(assert (=> b!2187825 m!2630083))

(declare-fun m!2630705 () Bool)

(assert (=> b!2187825 m!2630705))

(assert (=> b!2187825 m!2628881))

(assert (=> b!2187825 m!2630077))

(assert (=> b!2187825 m!2630705))

(assert (=> b!2187825 m!2630077))

(declare-fun m!2630707 () Bool)

(assert (=> b!2187825 m!2630707))

(assert (=> b!2186216 d!655822))

(declare-fun bs!448241 () Bool)

(declare-fun d!655828 () Bool)

(assert (= bs!448241 (and d!655828 d!655470)))

(declare-fun lambda!82145 () Int)

(assert (=> bs!448241 (= (= (head!4670 (_1!14910 lt!816097)) (apply!6094 totalInput!977 lt!816114)) (= lambda!82145 lambda!82112))))

(declare-fun bs!448242 () Bool)

(assert (= bs!448242 (and d!655828 d!655588)))

(assert (=> bs!448242 (= (= (head!4670 (_1!14910 lt!816097)) (head!4670 lt!816112)) (= lambda!82145 lambda!82114))))

(declare-fun bs!448243 () Bool)

(assert (= bs!448243 (and d!655828 d!655724)))

(assert (=> bs!448243 (= (= (head!4670 (_1!14910 lt!816097)) (head!4670 (take!257 (drop!1267 lt!816109 lt!816114) lt!816105))) (= lambda!82145 lambda!82136))))

(assert (=> d!655828 true))

(assert (=> d!655828 (= (derivationStepZipper!142 z!4055 (head!4670 (_1!14910 lt!816097))) (flatMap!137 z!4055 lambda!82145))))

(declare-fun bs!448244 () Bool)

(assert (= bs!448244 d!655828))

(declare-fun m!2630723 () Bool)

(assert (=> bs!448244 m!2630723))

(assert (=> b!2186216 d!655828))

(assert (=> b!2186216 d!655622))

(assert (=> b!2186216 d!655378))

(assert (=> b!2186795 d!655344))

(assert (=> b!2186820 d!655382))

(assert (=> b!2186210 d!655108))

(declare-fun d!655838 () Bool)

(declare-fun e!1398096 () Bool)

(assert (=> d!655838 e!1398096))

(declare-fun res!939983 () Bool)

(assert (=> d!655838 (=> res!939983 e!1398096)))

(declare-fun lt!816828 () Bool)

(assert (=> d!655838 (= res!939983 (not lt!816828))))

(declare-fun e!1398095 () Bool)

(assert (=> d!655838 (= lt!816828 e!1398095)))

(declare-fun res!939984 () Bool)

(assert (=> d!655838 (=> res!939984 e!1398095)))

(assert (=> d!655838 (= res!939984 ((_ is Nil!25276) (tail!3142 (take!257 lt!816109 lt!816114))))))

(assert (=> d!655838 (= (isPrefix!2165 (tail!3142 (take!257 lt!816109 lt!816114)) (tail!3142 lt!816109)) lt!816828)))

(declare-fun b!2187849 () Bool)

(assert (=> b!2187849 (= e!1398096 (>= (size!19751 (tail!3142 lt!816109)) (size!19751 (tail!3142 (take!257 lt!816109 lt!816114)))))))

(declare-fun b!2187848 () Bool)

(declare-fun e!1398097 () Bool)

(assert (=> b!2187848 (= e!1398097 (isPrefix!2165 (tail!3142 (tail!3142 (take!257 lt!816109 lt!816114))) (tail!3142 (tail!3142 lt!816109))))))

(declare-fun b!2187846 () Bool)

(assert (=> b!2187846 (= e!1398095 e!1398097)))

(declare-fun res!939986 () Bool)

(assert (=> b!2187846 (=> (not res!939986) (not e!1398097))))

(assert (=> b!2187846 (= res!939986 (not ((_ is Nil!25276) (tail!3142 lt!816109))))))

(declare-fun b!2187847 () Bool)

(declare-fun res!939985 () Bool)

(assert (=> b!2187847 (=> (not res!939985) (not e!1398097))))

(assert (=> b!2187847 (= res!939985 (= (head!4670 (tail!3142 (take!257 lt!816109 lt!816114))) (head!4670 (tail!3142 lt!816109))))))

(assert (= (and d!655838 (not res!939984)) b!2187846))

(assert (= (and b!2187846 res!939986) b!2187847))

(assert (= (and b!2187847 res!939985) b!2187848))

(assert (= (and d!655838 (not res!939983)) b!2187849))

(assert (=> b!2187849 m!2629407))

(declare-fun m!2630725 () Bool)

(assert (=> b!2187849 m!2630725))

(assert (=> b!2187849 m!2629405))

(declare-fun m!2630727 () Bool)

(assert (=> b!2187849 m!2630727))

(assert (=> b!2187848 m!2629405))

(declare-fun m!2630729 () Bool)

(assert (=> b!2187848 m!2630729))

(assert (=> b!2187848 m!2629407))

(declare-fun m!2630731 () Bool)

(assert (=> b!2187848 m!2630731))

(assert (=> b!2187848 m!2630729))

(assert (=> b!2187848 m!2630731))

(declare-fun m!2630733 () Bool)

(assert (=> b!2187848 m!2630733))

(assert (=> b!2187847 m!2629405))

(declare-fun m!2630735 () Bool)

(assert (=> b!2187847 m!2630735))

(assert (=> b!2187847 m!2629407))

(declare-fun m!2630737 () Bool)

(assert (=> b!2187847 m!2630737))

(assert (=> b!2186804 d!655838))

(declare-fun d!655840 () Bool)

(assert (=> d!655840 (= (tail!3142 (take!257 lt!816109 lt!816114)) (t!197950 (take!257 lt!816109 lt!816114)))))

(assert (=> b!2186804 d!655840))

(declare-fun d!655842 () Bool)

(assert (=> d!655842 (= (tail!3142 lt!816109) (t!197950 lt!816109))))

(assert (=> b!2186804 d!655842))

(assert (=> b!2186816 d!655264))

(assert (=> bm!131575 d!655252))

(declare-fun d!655844 () Bool)

(assert (=> d!655844 (= (inv!33617 (xs!11127 (c!347560 input!5540))) (<= (size!19751 (innerList!8245 (xs!11127 (c!347560 input!5540)))) 2147483647))))

(declare-fun bs!448245 () Bool)

(assert (= bs!448245 d!655844))

(declare-fun m!2630739 () Bool)

(assert (=> bs!448245 m!2630739))

(assert (=> b!2186888 d!655844))

(declare-fun d!655846 () Bool)

(declare-fun lt!816829 () Int)

(assert (=> d!655846 (>= lt!816829 0)))

(declare-fun e!1398098 () Int)

(assert (=> d!655846 (= lt!816829 e!1398098)))

(declare-fun c!348063 () Bool)

(assert (=> d!655846 (= c!348063 ((_ is Nil!25276) lt!816487))))

(assert (=> d!655846 (= (size!19751 lt!816487) lt!816829)))

(declare-fun b!2187850 () Bool)

(assert (=> b!2187850 (= e!1398098 0)))

(declare-fun b!2187851 () Bool)

(assert (=> b!2187851 (= e!1398098 (+ 1 (size!19751 (t!197950 lt!816487))))))

(assert (= (and d!655846 c!348063) b!2187850))

(assert (= (and d!655846 (not c!348063)) b!2187851))

(declare-fun m!2630745 () Bool)

(assert (=> b!2187851 m!2630745))

(assert (=> b!2186799 d!655846))

(declare-fun d!655848 () Bool)

(declare-fun lt!816830 () Int)

(assert (=> d!655848 (>= lt!816830 0)))

(declare-fun e!1398099 () Int)

(assert (=> d!655848 (= lt!816830 e!1398099)))

(declare-fun c!348064 () Bool)

(assert (=> d!655848 (= c!348064 ((_ is Nil!25276) lt!816501))))

(assert (=> d!655848 (= (size!19751 lt!816501) lt!816830)))

(declare-fun b!2187852 () Bool)

(assert (=> b!2187852 (= e!1398099 0)))

(declare-fun b!2187853 () Bool)

(assert (=> b!2187853 (= e!1398099 (+ 1 (size!19751 (t!197950 lt!816501))))))

(assert (= (and d!655848 c!348064) b!2187852))

(assert (= (and d!655848 (not c!348064)) b!2187853))

(declare-fun m!2630751 () Bool)

(assert (=> b!2187853 m!2630751))

(assert (=> b!2186824 d!655848))

(assert (=> d!655104 d!655108))

(assert (=> d!655104 d!655206))

(declare-fun d!655850 () Bool)

(assert (=> d!655850 (= (matchR!2798 r!12534 lt!816112) (matchZipper!165 z!4055 lt!816112))))

(assert (=> d!655850 true))

(declare-fun _$44!1290 () Unit!38401)

(assert (=> d!655850 (= (choose!12939 z!4055 lt!816108 r!12534 lt!816112) _$44!1290)))

(declare-fun bs!448246 () Bool)

(assert (= bs!448246 d!655850))

(assert (=> bs!448246 m!2628789))

(assert (=> bs!448246 m!2628751))

(assert (=> d!655104 d!655850))

(assert (=> d!655104 d!655168))

(assert (=> b!2186163 d!655266))

(assert (=> b!2186477 d!655622))

(assert (=> bm!131613 d!655344))

(declare-fun bs!448254 () Bool)

(declare-fun d!655854 () Bool)

(assert (= bs!448254 (and d!655854 d!655264)))

(declare-fun lambda!82159 () Int)

(assert (=> bs!448254 (not (= lambda!82159 lambda!82103))))

(declare-fun bs!448255 () Bool)

(assert (= bs!448255 (and d!655854 d!655498)))

(assert (=> bs!448255 (not (= lambda!82159 lambda!82113))))

(declare-fun bs!448256 () Bool)

(declare-fun b!2187938 () Bool)

(assert (= bs!448256 (and b!2187938 d!655264)))

(declare-fun lambda!82160 () Int)

(assert (=> bs!448256 (not (= lambda!82160 lambda!82103))))

(declare-fun bs!448257 () Bool)

(assert (= bs!448257 (and b!2187938 d!655498)))

(assert (=> bs!448257 (not (= lambda!82160 lambda!82113))))

(declare-fun bs!448258 () Bool)

(assert (= bs!448258 (and b!2187938 d!655854)))

(assert (=> bs!448258 (not (= lambda!82160 lambda!82159))))

(declare-fun bs!448260 () Bool)

(declare-fun b!2187939 () Bool)

(assert (= bs!448260 (and b!2187939 d!655264)))

(declare-fun lambda!82161 () Int)

(assert (=> bs!448260 (not (= lambda!82161 lambda!82103))))

(declare-fun bs!448261 () Bool)

(assert (= bs!448261 (and b!2187939 d!655498)))

(assert (=> bs!448261 (not (= lambda!82161 lambda!82113))))

(declare-fun bs!448262 () Bool)

(assert (= bs!448262 (and b!2187939 d!655854)))

(assert (=> bs!448262 (not (= lambda!82161 lambda!82159))))

(declare-fun bs!448263 () Bool)

(assert (= bs!448263 (and b!2187939 b!2187938)))

(assert (=> bs!448263 (= lambda!82161 lambda!82160)))

(declare-fun lt!816862 () Bool)

(declare-datatypes ((Option!5006 0))(
  ( (None!5005) (Some!5005 (v!29400 List!25360)) )
))
(declare-fun isEmpty!14536 (Option!5006) Bool)

(declare-fun getLanguageWitness!123 ((InoxSet Context!3238)) Option!5006)

(assert (=> d!655854 (= lt!816862 (isEmpty!14536 (getLanguageWitness!123 z!4055)))))

(declare-fun forall!5193 ((InoxSet Context!3238) Int) Bool)

(assert (=> d!655854 (= lt!816862 (forall!5193 z!4055 lambda!82159))))

(declare-fun lt!816861 () Unit!38401)

(declare-fun e!1398148 () Unit!38401)

(assert (=> d!655854 (= lt!816861 e!1398148)))

(declare-fun c!348102 () Bool)

(assert (=> d!655854 (= c!348102 (not (forall!5193 z!4055 lambda!82159)))))

(assert (=> d!655854 (= (lostCauseZipper!175 z!4055) lt!816862)))

(declare-fun lt!816858 () List!25362)

(declare-fun lt!816857 () List!25362)

(declare-fun call!131736 () Bool)

(declare-fun bm!131730 () Bool)

(assert (=> bm!131730 (= call!131736 (exists!781 (ite c!348102 lt!816857 lt!816858) (ite c!348102 lambda!82160 lambda!82161)))))

(declare-fun Unit!38423 () Unit!38401)

(assert (=> b!2187939 (= e!1398148 Unit!38423)))

(declare-fun call!131735 () List!25362)

(assert (=> b!2187939 (= lt!816858 call!131735)))

(declare-fun lt!816864 () Unit!38401)

(declare-fun lemmaForallThenNotExists!31 (List!25362 Int) Unit!38401)

(assert (=> b!2187939 (= lt!816864 (lemmaForallThenNotExists!31 lt!816858 lambda!82159))))

(assert (=> b!2187939 (not call!131736)))

(declare-fun lt!816859 () Unit!38401)

(assert (=> b!2187939 (= lt!816859 lt!816864)))

(declare-fun Unit!38424 () Unit!38401)

(assert (=> b!2187938 (= e!1398148 Unit!38424)))

(assert (=> b!2187938 (= lt!816857 call!131735)))

(declare-fun lt!816863 () Unit!38401)

(declare-fun lemmaNotForallThenExists!31 (List!25362 Int) Unit!38401)

(assert (=> b!2187938 (= lt!816863 (lemmaNotForallThenExists!31 lt!816857 lambda!82159))))

(assert (=> b!2187938 call!131736))

(declare-fun lt!816860 () Unit!38401)

(assert (=> b!2187938 (= lt!816860 lt!816863)))

(declare-fun bm!131731 () Bool)

(assert (=> bm!131731 (= call!131735 (toList!1232 z!4055))))

(assert (= (and d!655854 c!348102) b!2187938))

(assert (= (and d!655854 (not c!348102)) b!2187939))

(assert (= (or b!2187938 b!2187939) bm!131730))

(assert (= (or b!2187938 b!2187939) bm!131731))

(declare-fun m!2630861 () Bool)

(assert (=> b!2187939 m!2630861))

(declare-fun m!2630863 () Bool)

(assert (=> b!2187938 m!2630863))

(declare-fun m!2630865 () Bool)

(assert (=> d!655854 m!2630865))

(assert (=> d!655854 m!2630865))

(declare-fun m!2630867 () Bool)

(assert (=> d!655854 m!2630867))

(declare-fun m!2630871 () Bool)

(assert (=> d!655854 m!2630871))

(assert (=> d!655854 m!2630871))

(declare-fun m!2630875 () Bool)

(assert (=> bm!131730 m!2630875))

(assert (=> bm!131731 m!2628817))

(assert (=> b!2186562 d!655854))

(declare-fun b!2187948 () Bool)

(declare-fun e!1398155 () Bool)

(assert (=> b!2187948 (= e!1398155 (nullable!1713 (derivativeStep!1456 r!12534 (head!4670 lt!816112))))))

(declare-fun bm!131732 () Bool)

(declare-fun call!131737 () Bool)

(assert (=> bm!131732 (= call!131737 (isEmpty!14530 (tail!3142 lt!816112)))))

(declare-fun b!2187949 () Bool)

(declare-fun res!940021 () Bool)

(declare-fun e!1398158 () Bool)

(assert (=> b!2187949 (=> (not res!940021) (not e!1398158))))

(assert (=> b!2187949 (= res!940021 (isEmpty!14530 (tail!3142 (tail!3142 lt!816112))))))

(declare-fun b!2187951 () Bool)

(declare-fun e!1398156 () Bool)

(assert (=> b!2187951 (= e!1398156 (not (= (head!4670 (tail!3142 lt!816112)) (c!347561 (derivativeStep!1456 r!12534 (head!4670 lt!816112))))))))

(declare-fun b!2187952 () Bool)

(declare-fun e!1398157 () Bool)

(declare-fun lt!816870 () Bool)

(assert (=> b!2187952 (= e!1398157 (not lt!816870))))

(declare-fun b!2187953 () Bool)

(declare-fun e!1398153 () Bool)

(assert (=> b!2187953 (= e!1398153 e!1398157)))

(declare-fun c!348107 () Bool)

(assert (=> b!2187953 (= c!348107 ((_ is EmptyLang!6049) (derivativeStep!1456 r!12534 (head!4670 lt!816112))))))

(declare-fun b!2187954 () Bool)

(assert (=> b!2187954 (= e!1398153 (= lt!816870 call!131737))))

(declare-fun b!2187955 () Bool)

(declare-fun e!1398159 () Bool)

(declare-fun e!1398154 () Bool)

(assert (=> b!2187955 (= e!1398159 e!1398154)))

(declare-fun res!940022 () Bool)

(assert (=> b!2187955 (=> (not res!940022) (not e!1398154))))

(assert (=> b!2187955 (= res!940022 (not lt!816870))))

(declare-fun b!2187956 () Bool)

(declare-fun res!940018 () Bool)

(assert (=> b!2187956 (=> res!940018 e!1398159)))

(assert (=> b!2187956 (= res!940018 e!1398158)))

(declare-fun res!940015 () Bool)

(assert (=> b!2187956 (=> (not res!940015) (not e!1398158))))

(assert (=> b!2187956 (= res!940015 lt!816870)))

(declare-fun b!2187957 () Bool)

(assert (=> b!2187957 (= e!1398158 (= (head!4670 (tail!3142 lt!816112)) (c!347561 (derivativeStep!1456 r!12534 (head!4670 lt!816112)))))))

(declare-fun b!2187958 () Bool)

(declare-fun res!940019 () Bool)

(assert (=> b!2187958 (=> res!940019 e!1398159)))

(assert (=> b!2187958 (= res!940019 (not ((_ is ElementMatch!6049) (derivativeStep!1456 r!12534 (head!4670 lt!816112)))))))

(assert (=> b!2187958 (= e!1398157 e!1398159)))

(declare-fun b!2187959 () Bool)

(assert (=> b!2187959 (= e!1398155 (matchR!2798 (derivativeStep!1456 (derivativeStep!1456 r!12534 (head!4670 lt!816112)) (head!4670 (tail!3142 lt!816112))) (tail!3142 (tail!3142 lt!816112))))))

(declare-fun d!655902 () Bool)

(assert (=> d!655902 e!1398153))

(declare-fun c!348108 () Bool)

(assert (=> d!655902 (= c!348108 ((_ is EmptyExpr!6049) (derivativeStep!1456 r!12534 (head!4670 lt!816112))))))

(assert (=> d!655902 (= lt!816870 e!1398155)))

(declare-fun c!348106 () Bool)

(assert (=> d!655902 (= c!348106 (isEmpty!14530 (tail!3142 lt!816112)))))

(assert (=> d!655902 (validRegex!2325 (derivativeStep!1456 r!12534 (head!4670 lt!816112)))))

(assert (=> d!655902 (= (matchR!2798 (derivativeStep!1456 r!12534 (head!4670 lt!816112)) (tail!3142 lt!816112)) lt!816870)))

(declare-fun b!2187950 () Bool)

(declare-fun res!940020 () Bool)

(assert (=> b!2187950 (=> (not res!940020) (not e!1398158))))

(assert (=> b!2187950 (= res!940020 (not call!131737))))

(declare-fun b!2187960 () Bool)

(declare-fun res!940016 () Bool)

(assert (=> b!2187960 (=> res!940016 e!1398156)))

(assert (=> b!2187960 (= res!940016 (not (isEmpty!14530 (tail!3142 (tail!3142 lt!816112)))))))

(declare-fun b!2187961 () Bool)

(assert (=> b!2187961 (= e!1398154 e!1398156)))

(declare-fun res!940017 () Bool)

(assert (=> b!2187961 (=> res!940017 e!1398156)))

(assert (=> b!2187961 (= res!940017 call!131737)))

(assert (= (and d!655902 c!348106) b!2187948))

(assert (= (and d!655902 (not c!348106)) b!2187959))

(assert (= (and d!655902 c!348108) b!2187954))

(assert (= (and d!655902 (not c!348108)) b!2187953))

(assert (= (and b!2187953 c!348107) b!2187952))

(assert (= (and b!2187953 (not c!348107)) b!2187958))

(assert (= (and b!2187958 (not res!940019)) b!2187956))

(assert (= (and b!2187956 res!940015) b!2187950))

(assert (= (and b!2187950 res!940020) b!2187949))

(assert (= (and b!2187949 res!940021) b!2187957))

(assert (= (and b!2187956 (not res!940018)) b!2187955))

(assert (= (and b!2187955 res!940022) b!2187961))

(assert (= (and b!2187961 (not res!940017)) b!2187960))

(assert (= (and b!2187960 (not res!940016)) b!2187951))

(assert (= (or b!2187954 b!2187950 b!2187961) bm!131732))

(assert (=> b!2187960 m!2628885))

(assert (=> b!2187960 m!2630199))

(assert (=> b!2187960 m!2630199))

(declare-fun m!2630877 () Bool)

(assert (=> b!2187960 m!2630877))

(assert (=> bm!131732 m!2628885))

(assert (=> bm!131732 m!2628887))

(assert (=> b!2187957 m!2628885))

(assert (=> b!2187957 m!2630193))

(assert (=> b!2187951 m!2628885))

(assert (=> b!2187951 m!2630193))

(assert (=> b!2187948 m!2628895))

(declare-fun m!2630879 () Bool)

(assert (=> b!2187948 m!2630879))

(assert (=> d!655902 m!2628885))

(assert (=> d!655902 m!2628887))

(assert (=> d!655902 m!2628895))

(declare-fun m!2630881 () Bool)

(assert (=> d!655902 m!2630881))

(assert (=> b!2187959 m!2628885))

(assert (=> b!2187959 m!2630193))

(assert (=> b!2187959 m!2628895))

(assert (=> b!2187959 m!2630193))

(declare-fun m!2630883 () Bool)

(assert (=> b!2187959 m!2630883))

(assert (=> b!2187959 m!2628885))

(assert (=> b!2187959 m!2630199))

(assert (=> b!2187959 m!2630883))

(assert (=> b!2187959 m!2630199))

(declare-fun m!2630885 () Bool)

(assert (=> b!2187959 m!2630885))

(assert (=> b!2187949 m!2628885))

(assert (=> b!2187949 m!2630199))

(assert (=> b!2187949 m!2630199))

(assert (=> b!2187949 m!2630877))

(assert (=> b!2186256 d!655902))

(declare-fun d!655904 () Bool)

(declare-fun lt!816873 () Regex!6049)

(assert (=> d!655904 (validRegex!2325 lt!816873)))

(declare-fun e!1398161 () Regex!6049)

(assert (=> d!655904 (= lt!816873 e!1398161)))

(declare-fun c!348111 () Bool)

(assert (=> d!655904 (= c!348111 (or ((_ is EmptyExpr!6049) r!12534) ((_ is EmptyLang!6049) r!12534)))))

(assert (=> d!655904 (validRegex!2325 r!12534)))

(assert (=> d!655904 (= (derivativeStep!1456 r!12534 (head!4670 lt!816112)) lt!816873)))

(declare-fun b!2187962 () Bool)

(declare-fun e!1398163 () Regex!6049)

(declare-fun e!1398160 () Regex!6049)

(assert (=> b!2187962 (= e!1398163 e!1398160)))

(declare-fun c!348109 () Bool)

(assert (=> b!2187962 (= c!348109 ((_ is Star!6049) r!12534))))

(declare-fun bm!131733 () Bool)

(declare-fun call!131739 () Regex!6049)

(declare-fun c!348110 () Bool)

(assert (=> bm!131733 (= call!131739 (derivativeStep!1456 (ite c!348110 (regTwo!12611 r!12534) (regTwo!12610 r!12534)) (head!4670 lt!816112)))))

(declare-fun bm!131734 () Bool)

(declare-fun call!131741 () Regex!6049)

(assert (=> bm!131734 (= call!131741 (derivativeStep!1456 (ite c!348110 (regOne!12611 r!12534) (ite c!348109 (reg!6378 r!12534) (regOne!12610 r!12534))) (head!4670 lt!816112)))))

(declare-fun b!2187963 () Bool)

(declare-fun e!1398164 () Regex!6049)

(declare-fun call!131740 () Regex!6049)

(assert (=> b!2187963 (= e!1398164 (Union!6049 (Concat!10351 call!131740 (regTwo!12610 r!12534)) EmptyLang!6049))))

(declare-fun bm!131735 () Bool)

(declare-fun call!131738 () Regex!6049)

(assert (=> bm!131735 (= call!131738 call!131741)))

(declare-fun b!2187964 () Bool)

(declare-fun c!348113 () Bool)

(assert (=> b!2187964 (= c!348113 (nullable!1713 (regOne!12610 r!12534)))))

(assert (=> b!2187964 (= e!1398160 e!1398164)))

(declare-fun b!2187965 () Bool)

(assert (=> b!2187965 (= e!1398160 (Concat!10351 call!131738 r!12534))))

(declare-fun b!2187966 () Bool)

(declare-fun e!1398162 () Regex!6049)

(assert (=> b!2187966 (= e!1398162 (ite (= (head!4670 lt!816112) (c!347561 r!12534)) EmptyExpr!6049 EmptyLang!6049))))

(declare-fun b!2187967 () Bool)

(assert (=> b!2187967 (= c!348110 ((_ is Union!6049) r!12534))))

(assert (=> b!2187967 (= e!1398162 e!1398163)))

(declare-fun bm!131736 () Bool)

(assert (=> bm!131736 (= call!131740 call!131738)))

(declare-fun b!2187968 () Bool)

(assert (=> b!2187968 (= e!1398161 EmptyLang!6049)))

(declare-fun b!2187969 () Bool)

(assert (=> b!2187969 (= e!1398164 (Union!6049 (Concat!10351 call!131740 (regTwo!12610 r!12534)) call!131739))))

(declare-fun b!2187970 () Bool)

(assert (=> b!2187970 (= e!1398161 e!1398162)))

(declare-fun c!348112 () Bool)

(assert (=> b!2187970 (= c!348112 ((_ is ElementMatch!6049) r!12534))))

(declare-fun b!2187971 () Bool)

(assert (=> b!2187971 (= e!1398163 (Union!6049 call!131741 call!131739))))

(assert (= (and d!655904 c!348111) b!2187968))

(assert (= (and d!655904 (not c!348111)) b!2187970))

(assert (= (and b!2187970 c!348112) b!2187966))

(assert (= (and b!2187970 (not c!348112)) b!2187967))

(assert (= (and b!2187967 c!348110) b!2187971))

(assert (= (and b!2187967 (not c!348110)) b!2187962))

(assert (= (and b!2187962 c!348109) b!2187965))

(assert (= (and b!2187962 (not c!348109)) b!2187964))

(assert (= (and b!2187964 c!348113) b!2187969))

(assert (= (and b!2187964 (not c!348113)) b!2187963))

(assert (= (or b!2187969 b!2187963) bm!131736))

(assert (= (or b!2187965 bm!131736) bm!131735))

(assert (= (or b!2187971 bm!131735) bm!131734))

(assert (= (or b!2187971 b!2187969) bm!131733))

(declare-fun m!2630889 () Bool)

(assert (=> d!655904 m!2630889))

(assert (=> d!655904 m!2628783))

(assert (=> bm!131733 m!2628891))

(declare-fun m!2630891 () Bool)

(assert (=> bm!131733 m!2630891))

(assert (=> bm!131734 m!2628891))

(declare-fun m!2630893 () Bool)

(assert (=> bm!131734 m!2630893))

(assert (=> b!2187964 m!2630055))

(assert (=> b!2186256 d!655904))

(assert (=> b!2186256 d!655590))

(assert (=> b!2186256 d!655580))

(declare-fun b!2187975 () Bool)

(declare-fun e!1398166 () Bool)

(declare-fun lt!816875 () List!25360)

(assert (=> b!2187975 (= e!1398166 (or (not (= (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276) Nil!25276)) (= lt!816875 Nil!25276)))))

(declare-fun b!2187972 () Bool)

(declare-fun e!1398165 () List!25360)

(assert (=> b!2187972 (= e!1398165 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276))))

(declare-fun b!2187974 () Bool)

(declare-fun res!940024 () Bool)

(assert (=> b!2187974 (=> (not res!940024) (not e!1398166))))

(assert (=> b!2187974 (= res!940024 (= (size!19751 lt!816875) (+ (size!19751 Nil!25276) (size!19751 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276)))))))

(declare-fun b!2187973 () Bool)

(assert (=> b!2187973 (= e!1398165 (Cons!25276 (h!30677 Nil!25276) (++!6410 (t!197950 Nil!25276) (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276))))))

(declare-fun d!655908 () Bool)

(assert (=> d!655908 e!1398166))

(declare-fun res!940023 () Bool)

(assert (=> d!655908 (=> (not res!940023) (not e!1398166))))

(assert (=> d!655908 (= res!940023 (= (content!3451 lt!816875) ((_ map or) (content!3451 Nil!25276) (content!3451 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276)))))))

(assert (=> d!655908 (= lt!816875 e!1398165)))

(declare-fun c!348114 () Bool)

(assert (=> d!655908 (= c!348114 ((_ is Nil!25276) Nil!25276))))

(assert (=> d!655908 (= (++!6410 Nil!25276 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276)) lt!816875)))

(assert (= (and d!655908 c!348114) b!2187972))

(assert (= (and d!655908 (not c!348114)) b!2187973))

(assert (= (and d!655908 res!940023) b!2187974))

(assert (= (and b!2187974 res!940024) b!2187975))

(declare-fun m!2630895 () Bool)

(assert (=> b!2187974 m!2630895))

(assert (=> b!2187974 m!2628759))

(declare-fun m!2630897 () Bool)

(assert (=> b!2187974 m!2630897))

(declare-fun m!2630899 () Bool)

(assert (=> b!2187973 m!2630899))

(declare-fun m!2630901 () Bool)

(assert (=> d!655908 m!2630901))

(assert (=> d!655908 m!2629841))

(declare-fun m!2630903 () Bool)

(assert (=> d!655908 m!2630903))

(assert (=> b!2186771 d!655908))

(declare-fun d!655910 () Bool)

(assert (=> d!655910 (isPrefix!2165 (++!6410 Nil!25276 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276)) lt!816118)))

(declare-fun lt!816878 () Unit!38401)

(declare-fun choose!12959 (List!25360 List!25360) Unit!38401)

(assert (=> d!655910 (= lt!816878 (choose!12959 Nil!25276 lt!816118))))

(assert (=> d!655910 (isPrefix!2165 Nil!25276 lt!816118)))

(assert (=> d!655910 (= (lemmaAddHeadSuffixToPrefixStillPrefix!395 Nil!25276 lt!816118) lt!816878)))

(declare-fun bs!448265 () Bool)

(assert (= bs!448265 d!655910))

(assert (=> bs!448265 m!2629349))

(declare-fun m!2630909 () Bool)

(assert (=> bs!448265 m!2630909))

(assert (=> bs!448265 m!2629853))

(assert (=> bs!448265 m!2629371))

(assert (=> bs!448265 m!2629371))

(assert (=> bs!448265 m!2629379))

(assert (=> bs!448265 m!2629349))

(assert (=> bs!448265 m!2629367))

(assert (=> b!2186771 d!655910))

(declare-fun b!2187994 () Bool)

(declare-fun e!1398183 () Bool)

(declare-fun lt!816879 () List!25360)

(assert (=> b!2187994 (= e!1398183 (or (not (= (Cons!25276 (head!4670 lt!816118) Nil!25276) Nil!25276)) (= lt!816879 Nil!25276)))))

(declare-fun b!2187991 () Bool)

(declare-fun e!1398182 () List!25360)

(assert (=> b!2187991 (= e!1398182 (Cons!25276 (head!4670 lt!816118) Nil!25276))))

(declare-fun b!2187993 () Bool)

(declare-fun res!940038 () Bool)

(assert (=> b!2187993 (=> (not res!940038) (not e!1398183))))

(assert (=> b!2187993 (= res!940038 (= (size!19751 lt!816879) (+ (size!19751 Nil!25276) (size!19751 (Cons!25276 (head!4670 lt!816118) Nil!25276)))))))

(declare-fun b!2187992 () Bool)

(assert (=> b!2187992 (= e!1398182 (Cons!25276 (h!30677 Nil!25276) (++!6410 (t!197950 Nil!25276) (Cons!25276 (head!4670 lt!816118) Nil!25276))))))

(declare-fun d!655916 () Bool)

(assert (=> d!655916 e!1398183))

(declare-fun res!940037 () Bool)

(assert (=> d!655916 (=> (not res!940037) (not e!1398183))))

(assert (=> d!655916 (= res!940037 (= (content!3451 lt!816879) ((_ map or) (content!3451 Nil!25276) (content!3451 (Cons!25276 (head!4670 lt!816118) Nil!25276)))))))

(assert (=> d!655916 (= lt!816879 e!1398182)))

(declare-fun c!348115 () Bool)

(assert (=> d!655916 (= c!348115 ((_ is Nil!25276) Nil!25276))))

(assert (=> d!655916 (= (++!6410 Nil!25276 (Cons!25276 (head!4670 lt!816118) Nil!25276)) lt!816879)))

(assert (= (and d!655916 c!348115) b!2187991))

(assert (= (and d!655916 (not c!348115)) b!2187992))

(assert (= (and d!655916 res!940037) b!2187993))

(assert (= (and b!2187993 res!940038) b!2187994))

(declare-fun m!2630919 () Bool)

(assert (=> b!2187993 m!2630919))

(assert (=> b!2187993 m!2628759))

(declare-fun m!2630921 () Bool)

(assert (=> b!2187993 m!2630921))

(declare-fun m!2630925 () Bool)

(assert (=> b!2187992 m!2630925))

(declare-fun m!2630931 () Bool)

(assert (=> d!655916 m!2630931))

(assert (=> d!655916 m!2629841))

(declare-fun m!2630933 () Bool)

(assert (=> d!655916 m!2630933))

(assert (=> b!2186771 d!655916))

(assert (=> b!2186771 d!655702))

(declare-fun d!655922 () Bool)

(assert (=> d!655922 (= (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) (h!30677 (getSuffix!1050 lt!816118 Nil!25276)))))

(assert (=> b!2186771 d!655922))

(declare-fun d!655926 () Bool)

(assert (=> d!655926 (= (++!6410 (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276)) lt!816480) lt!816118)))

(declare-fun lt!816886 () Unit!38401)

(declare-fun choose!12960 (List!25360 C!12244 List!25360 List!25360) Unit!38401)

(assert (=> d!655926 (= lt!816886 (choose!12960 Nil!25276 lt!816463 lt!816480 lt!816118))))

(assert (=> d!655926 (= (++!6410 Nil!25276 (Cons!25276 lt!816463 lt!816480)) lt!816118)))

(assert (=> d!655926 (= (lemmaMoveElementToOtherListKeepsConcatEq!523 Nil!25276 lt!816463 lt!816480 lt!816118) lt!816886)))

(declare-fun bs!448267 () Bool)

(assert (= bs!448267 d!655926))

(assert (=> bs!448267 m!2629375))

(assert (=> bs!448267 m!2629375))

(assert (=> bs!448267 m!2629377))

(declare-fun m!2630965 () Bool)

(assert (=> bs!448267 m!2630965))

(declare-fun m!2630967 () Bool)

(assert (=> bs!448267 m!2630967))

(assert (=> b!2186771 d!655926))

(declare-fun b!2188034 () Bool)

(declare-fun e!1398204 () Bool)

(declare-fun lt!816887 () List!25360)

(assert (=> b!2188034 (= e!1398204 (or (not (= (Cons!25276 lt!816463 Nil!25276) Nil!25276)) (= lt!816887 Nil!25276)))))

(declare-fun b!2188031 () Bool)

(declare-fun e!1398203 () List!25360)

(assert (=> b!2188031 (= e!1398203 (Cons!25276 lt!816463 Nil!25276))))

(declare-fun b!2188033 () Bool)

(declare-fun res!940043 () Bool)

(assert (=> b!2188033 (=> (not res!940043) (not e!1398204))))

(assert (=> b!2188033 (= res!940043 (= (size!19751 lt!816887) (+ (size!19751 Nil!25276) (size!19751 (Cons!25276 lt!816463 Nil!25276)))))))

(declare-fun b!2188032 () Bool)

(assert (=> b!2188032 (= e!1398203 (Cons!25276 (h!30677 Nil!25276) (++!6410 (t!197950 Nil!25276) (Cons!25276 lt!816463 Nil!25276))))))

(declare-fun d!655932 () Bool)

(assert (=> d!655932 e!1398204))

(declare-fun res!940042 () Bool)

(assert (=> d!655932 (=> (not res!940042) (not e!1398204))))

(assert (=> d!655932 (= res!940042 (= (content!3451 lt!816887) ((_ map or) (content!3451 Nil!25276) (content!3451 (Cons!25276 lt!816463 Nil!25276)))))))

(assert (=> d!655932 (= lt!816887 e!1398203)))

(declare-fun c!348125 () Bool)

(assert (=> d!655932 (= c!348125 ((_ is Nil!25276) Nil!25276))))

(assert (=> d!655932 (= (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276)) lt!816887)))

(assert (= (and d!655932 c!348125) b!2188031))

(assert (= (and d!655932 (not c!348125)) b!2188032))

(assert (= (and d!655932 res!940042) b!2188033))

(assert (= (and b!2188033 res!940043) b!2188034))

(declare-fun m!2630969 () Bool)

(assert (=> b!2188033 m!2630969))

(assert (=> b!2188033 m!2628759))

(declare-fun m!2630971 () Bool)

(assert (=> b!2188033 m!2630971))

(declare-fun m!2630973 () Bool)

(assert (=> b!2188032 m!2630973))

(declare-fun m!2630975 () Bool)

(assert (=> d!655932 m!2630975))

(assert (=> d!655932 m!2629841))

(declare-fun m!2630977 () Bool)

(assert (=> d!655932 m!2630977))

(assert (=> b!2186771 d!655932))

(declare-fun d!655934 () Bool)

(declare-fun e!1398210 () Bool)

(assert (=> d!655934 e!1398210))

(declare-fun res!940044 () Bool)

(assert (=> d!655934 (=> res!940044 e!1398210)))

(declare-fun lt!816888 () Bool)

(assert (=> d!655934 (= res!940044 (not lt!816888))))

(declare-fun e!1398209 () Bool)

(assert (=> d!655934 (= lt!816888 e!1398209)))

(declare-fun res!940045 () Bool)

(assert (=> d!655934 (=> res!940045 e!1398209)))

(assert (=> d!655934 (= res!940045 ((_ is Nil!25276) (++!6410 Nil!25276 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276))))))

(assert (=> d!655934 (= (isPrefix!2165 (++!6410 Nil!25276 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276)) lt!816118) lt!816888)))

(declare-fun b!2188054 () Bool)

(assert (=> b!2188054 (= e!1398210 (>= (size!19751 lt!816118) (size!19751 (++!6410 Nil!25276 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276)))))))

(declare-fun b!2188053 () Bool)

(declare-fun e!1398211 () Bool)

(assert (=> b!2188053 (= e!1398211 (isPrefix!2165 (tail!3142 (++!6410 Nil!25276 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276))) (tail!3142 lt!816118)))))

(declare-fun b!2188050 () Bool)

(assert (=> b!2188050 (= e!1398209 e!1398211)))

(declare-fun res!940047 () Bool)

(assert (=> b!2188050 (=> (not res!940047) (not e!1398211))))

(assert (=> b!2188050 (= res!940047 (not ((_ is Nil!25276) lt!816118)))))

(declare-fun b!2188052 () Bool)

(declare-fun res!940046 () Bool)

(assert (=> b!2188052 (=> (not res!940046) (not e!1398211))))

(assert (=> b!2188052 (= res!940046 (= (head!4670 (++!6410 Nil!25276 (Cons!25276 (head!4670 (getSuffix!1050 lt!816118 Nil!25276)) Nil!25276))) (head!4670 lt!816118)))))

(assert (= (and d!655934 (not res!940045)) b!2188050))

(assert (= (and b!2188050 res!940047) b!2188052))

(assert (= (and b!2188052 res!940046) b!2188053))

(assert (= (and d!655934 (not res!940044)) b!2188054))

(assert (=> b!2188054 m!2628761))

(assert (=> b!2188054 m!2629371))

(declare-fun m!2630979 () Bool)

(assert (=> b!2188054 m!2630979))

(assert (=> b!2188053 m!2629371))

(declare-fun m!2630981 () Bool)

(assert (=> b!2188053 m!2630981))

(assert (=> b!2188053 m!2629359))

(assert (=> b!2188053 m!2630981))

(assert (=> b!2188053 m!2629359))

(declare-fun m!2630983 () Bool)

(assert (=> b!2188053 m!2630983))

(assert (=> b!2188052 m!2629371))

(declare-fun m!2630985 () Bool)

(assert (=> b!2188052 m!2630985))

(assert (=> b!2188052 m!2629335))

(assert (=> b!2186771 d!655934))

(assert (=> b!2186771 d!655250))

(declare-fun d!655936 () Bool)

(assert (=> d!655936 (<= (size!19751 Nil!25276) (size!19751 lt!816118))))

(declare-fun lt!816891 () Unit!38401)

(declare-fun choose!12961 (List!25360 List!25360) Unit!38401)

(assert (=> d!655936 (= lt!816891 (choose!12961 Nil!25276 lt!816118))))

(assert (=> d!655936 (isPrefix!2165 Nil!25276 lt!816118)))

(assert (=> d!655936 (= (lemmaIsPrefixThenSmallerEqSize!198 Nil!25276 lt!816118) lt!816891)))

(declare-fun bs!448268 () Bool)

(assert (= bs!448268 d!655936))

(assert (=> bs!448268 m!2628759))

(assert (=> bs!448268 m!2628761))

(declare-fun m!2630987 () Bool)

(assert (=> bs!448268 m!2630987))

(assert (=> bs!448268 m!2629853))

(assert (=> b!2186771 d!655936))

(assert (=> b!2186771 d!655444))

(declare-fun b!2188109 () Bool)

(declare-fun lt!816892 () List!25360)

(declare-fun e!1398230 () Bool)

(assert (=> b!2188109 (= e!1398230 (or (not (= lt!816480 Nil!25276)) (= lt!816892 (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276)))))))

(declare-fun b!2188106 () Bool)

(declare-fun e!1398229 () List!25360)

(assert (=> b!2188106 (= e!1398229 lt!816480)))

(declare-fun b!2188108 () Bool)

(declare-fun res!940049 () Bool)

(assert (=> b!2188108 (=> (not res!940049) (not e!1398230))))

(assert (=> b!2188108 (= res!940049 (= (size!19751 lt!816892) (+ (size!19751 (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276))) (size!19751 lt!816480))))))

(declare-fun b!2188107 () Bool)

(assert (=> b!2188107 (= e!1398229 (Cons!25276 (h!30677 (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276))) (++!6410 (t!197950 (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276))) lt!816480)))))

(declare-fun d!655938 () Bool)

(assert (=> d!655938 e!1398230))

(declare-fun res!940048 () Bool)

(assert (=> d!655938 (=> (not res!940048) (not e!1398230))))

(assert (=> d!655938 (= res!940048 (= (content!3451 lt!816892) ((_ map or) (content!3451 (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276))) (content!3451 lt!816480))))))

(assert (=> d!655938 (= lt!816892 e!1398229)))

(declare-fun c!348126 () Bool)

(assert (=> d!655938 (= c!348126 ((_ is Nil!25276) (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276))))))

(assert (=> d!655938 (= (++!6410 (++!6410 Nil!25276 (Cons!25276 lt!816463 Nil!25276)) lt!816480) lt!816892)))

(assert (= (and d!655938 c!348126) b!2188106))

(assert (= (and d!655938 (not c!348126)) b!2188107))

(assert (= (and d!655938 res!940048) b!2188108))

(assert (= (and b!2188108 res!940049) b!2188109))

(declare-fun m!2630997 () Bool)

(assert (=> b!2188108 m!2630997))

(assert (=> b!2188108 m!2629375))

(declare-fun m!2631003 () Bool)

(assert (=> b!2188108 m!2631003))

(declare-fun m!2631007 () Bool)

(assert (=> b!2188108 m!2631007))

(declare-fun m!2631009 () Bool)

(assert (=> b!2188107 m!2631009))

(declare-fun m!2631011 () Bool)

(assert (=> d!655938 m!2631011))

(assert (=> d!655938 m!2629375))

(declare-fun m!2631013 () Bool)

(assert (=> d!655938 m!2631013))

(declare-fun m!2631015 () Bool)

(assert (=> d!655938 m!2631015))

(assert (=> b!2186771 d!655938))

(assert (=> b!2186771 d!655256))

(assert (=> b!2186771 d!655718))

(declare-fun b!2188121 () Bool)

(declare-fun e!1398235 () Int)

(assert (=> b!2188121 (= e!1398235 lt!816160)))

(declare-fun b!2188122 () Bool)

(declare-fun e!1398237 () Int)

(declare-fun lt!816894 () (InoxSet Context!3238))

(assert (=> b!2188122 (= e!1398237 (furthestNullablePosition!231 lt!816894 (+ lt!816160 1) totalInput!977 lt!816161 e!1398235))))

(assert (=> b!2188122 (= lt!816894 (derivationStepZipper!142 z!4055 (apply!6094 totalInput!977 lt!816160)))))

(declare-fun c!348128 () Bool)

(assert (=> b!2188122 (= c!348128 (nullableZipper!329 lt!816894))))

(declare-fun d!655940 () Bool)

(declare-fun lt!816893 () Int)

(assert (=> d!655940 (and (>= lt!816893 (- 1)) (< lt!816893 lt!816161) (>= lt!816893 e!1397158) (or (= lt!816893 e!1397158) (>= lt!816893 lt!816160)))))

(assert (=> d!655940 (= lt!816893 e!1398237)))

(declare-fun c!348127 () Bool)

(declare-fun e!1398236 () Bool)

(assert (=> d!655940 (= c!348127 e!1398236)))

(declare-fun res!940050 () Bool)

(assert (=> d!655940 (=> res!940050 e!1398236)))

(assert (=> d!655940 (= res!940050 (= lt!816160 lt!816161))))

(assert (=> d!655940 (and (>= lt!816160 0) (<= lt!816160 lt!816161))))

(assert (=> d!655940 (= (furthestNullablePosition!231 z!4055 lt!816160 totalInput!977 lt!816161 e!1397158) lt!816893)))

(declare-fun b!2188123 () Bool)

(assert (=> b!2188123 (= e!1398236 (lostCauseZipper!175 z!4055))))

(declare-fun b!2188124 () Bool)

(assert (=> b!2188124 (= e!1398235 e!1397158)))

(declare-fun b!2188125 () Bool)

(assert (=> b!2188125 (= e!1398237 e!1397158)))

(assert (= (and d!655940 (not res!940050)) b!2188123))

(assert (= (and d!655940 c!348127) b!2188125))

(assert (= (and d!655940 (not c!348127)) b!2188122))

(assert (= (and b!2188122 c!348128) b!2188121))

(assert (= (and b!2188122 (not c!348128)) b!2188124))

(declare-fun m!2631017 () Bool)

(assert (=> b!2188122 m!2631017))

(declare-fun m!2631019 () Bool)

(assert (=> b!2188122 m!2631019))

(assert (=> b!2188122 m!2631019))

(declare-fun m!2631021 () Bool)

(assert (=> b!2188122 m!2631021))

(declare-fun m!2631023 () Bool)

(assert (=> b!2188122 m!2631023))

(assert (=> b!2188123 m!2629165))

(assert (=> d!655098 d!655940))

(assert (=> d!655098 d!655190))

(declare-fun d!655942 () Bool)

(assert (=> d!655942 (= (list!9706 (_1!14909 lt!816162)) (list!9707 (c!347560 (_1!14909 lt!816162))))))

(declare-fun bs!448269 () Bool)

(assert (= bs!448269 d!655942))

(declare-fun m!2631025 () Bool)

(assert (=> bs!448269 m!2631025))

(assert (=> d!655098 d!655942))

(assert (=> d!655098 d!655094))

(declare-fun d!655944 () Bool)

(assert (=> d!655944 (= (list!9706 (_2!14909 lt!816162)) (list!9707 (c!347560 (_2!14909 lt!816162))))))

(declare-fun bs!448270 () Bool)

(assert (= bs!448270 d!655944))

(declare-fun m!2631027 () Bool)

(assert (=> bs!448270 m!2631027))

(assert (=> d!655098 d!655944))

(declare-fun d!655946 () Bool)

(declare-fun e!1398242 () Bool)

(assert (=> d!655946 e!1398242))

(declare-fun res!940051 () Bool)

(assert (=> d!655946 (=> res!940051 e!1398242)))

(declare-fun lt!816895 () Bool)

(assert (=> d!655946 (= res!940051 (not lt!816895))))

(assert (=> d!655946 (= lt!816895 (= (list!9706 input!5540) (drop!1267 (list!9706 totalInput!977) (- (size!19751 (list!9706 totalInput!977)) (size!19751 (list!9706 input!5540))))))))

(assert (=> d!655946 (= (isSuffix!716 (list!9706 input!5540) (list!9706 totalInput!977)) lt!816895)))

(declare-fun b!2188142 () Bool)

(assert (=> b!2188142 (= e!1398242 (>= (size!19751 (list!9706 totalInput!977)) (size!19751 (list!9706 input!5540))))))

(assert (= (and d!655946 (not res!940051)) b!2188142))

(assert (=> d!655946 m!2628809))

(assert (=> d!655946 m!2628853))

(assert (=> d!655946 m!2628811))

(assert (=> d!655946 m!2628835))

(assert (=> d!655946 m!2628809))

(declare-fun m!2631029 () Bool)

(assert (=> d!655946 m!2631029))

(assert (=> b!2188142 m!2628809))

(assert (=> b!2188142 m!2628853))

(assert (=> b!2188142 m!2628811))

(assert (=> b!2188142 m!2628835))

(assert (=> d!655098 d!655946))

(declare-fun b!2188158 () Bool)

(declare-fun e!1398247 () Bool)

(declare-fun lt!816896 () List!25360)

(assert (=> b!2188158 (= e!1398247 (or (not (= (list!9706 (_2!14909 lt!816162)) Nil!25276)) (= lt!816896 (list!9706 (_1!14909 lt!816162)))))))

(declare-fun b!2188155 () Bool)

(declare-fun e!1398246 () List!25360)

(assert (=> b!2188155 (= e!1398246 (list!9706 (_2!14909 lt!816162)))))

(declare-fun b!2188157 () Bool)

(declare-fun res!940053 () Bool)

(assert (=> b!2188157 (=> (not res!940053) (not e!1398247))))

(assert (=> b!2188157 (= res!940053 (= (size!19751 lt!816896) (+ (size!19751 (list!9706 (_1!14909 lt!816162))) (size!19751 (list!9706 (_2!14909 lt!816162))))))))

(declare-fun b!2188156 () Bool)

(assert (=> b!2188156 (= e!1398246 (Cons!25276 (h!30677 (list!9706 (_1!14909 lt!816162))) (++!6410 (t!197950 (list!9706 (_1!14909 lt!816162))) (list!9706 (_2!14909 lt!816162)))))))

(declare-fun d!655948 () Bool)

(assert (=> d!655948 e!1398247))

(declare-fun res!940052 () Bool)

(assert (=> d!655948 (=> (not res!940052) (not e!1398247))))

(assert (=> d!655948 (= res!940052 (= (content!3451 lt!816896) ((_ map or) (content!3451 (list!9706 (_1!14909 lt!816162))) (content!3451 (list!9706 (_2!14909 lt!816162))))))))

(assert (=> d!655948 (= lt!816896 e!1398246)))

(declare-fun c!348129 () Bool)

(assert (=> d!655948 (= c!348129 ((_ is Nil!25276) (list!9706 (_1!14909 lt!816162))))))

(assert (=> d!655948 (= (++!6410 (list!9706 (_1!14909 lt!816162)) (list!9706 (_2!14909 lt!816162))) lt!816896)))

(assert (= (and d!655948 c!348129) b!2188155))

(assert (= (and d!655948 (not c!348129)) b!2188156))

(assert (= (and d!655948 res!940052) b!2188157))

(assert (= (and b!2188157 res!940053) b!2188158))

(declare-fun m!2631031 () Bool)

(assert (=> b!2188157 m!2631031))

(assert (=> b!2188157 m!2628863))

(declare-fun m!2631033 () Bool)

(assert (=> b!2188157 m!2631033))

(assert (=> b!2188157 m!2628865))

(declare-fun m!2631035 () Bool)

(assert (=> b!2188157 m!2631035))

(assert (=> b!2188156 m!2628865))

(declare-fun m!2631037 () Bool)

(assert (=> b!2188156 m!2631037))

(declare-fun m!2631039 () Bool)

(assert (=> d!655948 m!2631039))

(assert (=> d!655948 m!2628863))

(declare-fun m!2631041 () Bool)

(assert (=> d!655948 m!2631041))

(assert (=> d!655948 m!2628865))

(declare-fun m!2631043 () Bool)

(assert (=> d!655948 m!2631043))

(assert (=> d!655098 d!655948))

(assert (=> d!655098 d!655090))

(assert (=> d!655098 d!655264))

(assert (=> d!655098 d!655188))

(declare-fun e!1398249 () Bool)

(assert (=> b!2186894 (= tp!681906 e!1398249)))

(declare-fun b!2188166 () Bool)

(declare-fun tp!682086 () Bool)

(declare-fun tp!682085 () Bool)

(assert (=> b!2188166 (= e!1398249 (and tp!682086 tp!682085))))

(declare-fun b!2188164 () Bool)

(declare-fun tp!682087 () Bool)

(declare-fun tp!682089 () Bool)

(assert (=> b!2188164 (= e!1398249 (and tp!682087 tp!682089))))

(declare-fun b!2188163 () Bool)

(assert (=> b!2188163 (= e!1398249 tp_is_empty!9705)))

(declare-fun b!2188165 () Bool)

(declare-fun tp!682088 () Bool)

(assert (=> b!2188165 (= e!1398249 tp!682088)))

(assert (= (and b!2186894 ((_ is ElementMatch!6049) (h!30678 (exprs!2119 setElem!18358)))) b!2188163))

(assert (= (and b!2186894 ((_ is Concat!10351) (h!30678 (exprs!2119 setElem!18358)))) b!2188164))

(assert (= (and b!2186894 ((_ is Star!6049) (h!30678 (exprs!2119 setElem!18358)))) b!2188165))

(assert (= (and b!2186894 ((_ is Union!6049) (h!30678 (exprs!2119 setElem!18358)))) b!2188166))

(declare-fun b!2188167 () Bool)

(declare-fun e!1398250 () Bool)

(declare-fun tp!682090 () Bool)

(declare-fun tp!682091 () Bool)

(assert (=> b!2188167 (= e!1398250 (and tp!682090 tp!682091))))

(assert (=> b!2186894 (= tp!681907 e!1398250)))

(assert (= (and b!2186894 ((_ is Cons!25277) (t!197951 (exprs!2119 setElem!18358)))) b!2188167))

(declare-fun e!1398251 () Bool)

(assert (=> b!2186902 (= tp!681914 e!1398251)))

(declare-fun b!2188171 () Bool)

(declare-fun tp!682093 () Bool)

(declare-fun tp!682092 () Bool)

(assert (=> b!2188171 (= e!1398251 (and tp!682093 tp!682092))))

(declare-fun b!2188169 () Bool)

(declare-fun tp!682094 () Bool)

(declare-fun tp!682096 () Bool)

(assert (=> b!2188169 (= e!1398251 (and tp!682094 tp!682096))))

(declare-fun b!2188168 () Bool)

(assert (=> b!2188168 (= e!1398251 tp_is_empty!9705)))

(declare-fun b!2188170 () Bool)

(declare-fun tp!682095 () Bool)

(assert (=> b!2188170 (= e!1398251 tp!682095)))

(assert (= (and b!2186902 ((_ is ElementMatch!6049) (regOne!12611 (regTwo!12610 r!12534)))) b!2188168))

(assert (= (and b!2186902 ((_ is Concat!10351) (regOne!12611 (regTwo!12610 r!12534)))) b!2188169))

(assert (= (and b!2186902 ((_ is Star!6049) (regOne!12611 (regTwo!12610 r!12534)))) b!2188170))

(assert (= (and b!2186902 ((_ is Union!6049) (regOne!12611 (regTwo!12610 r!12534)))) b!2188171))

(declare-fun e!1398252 () Bool)

(assert (=> b!2186902 (= tp!681913 e!1398252)))

(declare-fun b!2188175 () Bool)

(declare-fun tp!682098 () Bool)

(declare-fun tp!682097 () Bool)

(assert (=> b!2188175 (= e!1398252 (and tp!682098 tp!682097))))

(declare-fun b!2188173 () Bool)

(declare-fun tp!682099 () Bool)

(declare-fun tp!682101 () Bool)

(assert (=> b!2188173 (= e!1398252 (and tp!682099 tp!682101))))

(declare-fun b!2188172 () Bool)

(assert (=> b!2188172 (= e!1398252 tp_is_empty!9705)))

(declare-fun b!2188174 () Bool)

(declare-fun tp!682100 () Bool)

(assert (=> b!2188174 (= e!1398252 tp!682100)))

(assert (= (and b!2186902 ((_ is ElementMatch!6049) (regTwo!12611 (regTwo!12610 r!12534)))) b!2188172))

(assert (= (and b!2186902 ((_ is Concat!10351) (regTwo!12611 (regTwo!12610 r!12534)))) b!2188173))

(assert (= (and b!2186902 ((_ is Star!6049) (regTwo!12611 (regTwo!12610 r!12534)))) b!2188174))

(assert (= (and b!2186902 ((_ is Union!6049) (regTwo!12611 (regTwo!12610 r!12534)))) b!2188175))

(declare-fun b!2188180 () Bool)

(declare-fun e!1398255 () Bool)

(declare-fun tp!682104 () Bool)

(assert (=> b!2188180 (= e!1398255 (and tp_is_empty!9705 tp!682104))))

(assert (=> b!2186889 (= tp!681900 e!1398255)))

(assert (= (and b!2186889 ((_ is Cons!25276) (innerList!8245 (xs!11127 (c!347560 input!5540))))) b!2188180))

(declare-fun e!1398256 () Bool)

(assert (=> b!2186901 (= tp!681916 e!1398256)))

(declare-fun b!2188184 () Bool)

(declare-fun tp!682106 () Bool)

(declare-fun tp!682105 () Bool)

(assert (=> b!2188184 (= e!1398256 (and tp!682106 tp!682105))))

(declare-fun b!2188182 () Bool)

(declare-fun tp!682107 () Bool)

(declare-fun tp!682109 () Bool)

(assert (=> b!2188182 (= e!1398256 (and tp!682107 tp!682109))))

(declare-fun b!2188181 () Bool)

(assert (=> b!2188181 (= e!1398256 tp_is_empty!9705)))

(declare-fun b!2188183 () Bool)

(declare-fun tp!682108 () Bool)

(assert (=> b!2188183 (= e!1398256 tp!682108)))

(assert (= (and b!2186901 ((_ is ElementMatch!6049) (reg!6378 (regTwo!12610 r!12534)))) b!2188181))

(assert (= (and b!2186901 ((_ is Concat!10351) (reg!6378 (regTwo!12610 r!12534)))) b!2188182))

(assert (= (and b!2186901 ((_ is Star!6049) (reg!6378 (regTwo!12610 r!12534)))) b!2188183))

(assert (= (and b!2186901 ((_ is Union!6049) (reg!6378 (regTwo!12610 r!12534)))) b!2188184))

(declare-fun b!2188185 () Bool)

(declare-fun e!1398257 () Bool)

(declare-fun tp!682110 () Bool)

(assert (=> b!2188185 (= e!1398257 (and tp_is_empty!9705 tp!682110))))

(assert (=> b!2186905 (= tp!681919 e!1398257)))

(assert (= (and b!2186905 ((_ is Cons!25276) (innerList!8245 (xs!11127 (c!347560 totalInput!977))))) b!2188185))

(declare-fun condSetEmpty!18366 () Bool)

(assert (=> setNonEmpty!18364 (= condSetEmpty!18366 (= setRest!18364 ((as const (Array Context!3238 Bool)) false)))))

(declare-fun setRes!18366 () Bool)

(assert (=> setNonEmpty!18364 (= tp!681891 setRes!18366)))

(declare-fun setIsEmpty!18366 () Bool)

(assert (=> setIsEmpty!18366 setRes!18366))

(declare-fun setElem!18366 () Context!3238)

(declare-fun e!1398258 () Bool)

(declare-fun tp!682111 () Bool)

(declare-fun setNonEmpty!18366 () Bool)

(assert (=> setNonEmpty!18366 (= setRes!18366 (and tp!682111 (inv!33610 setElem!18366) e!1398258))))

(declare-fun setRest!18366 () (InoxSet Context!3238))

(assert (=> setNonEmpty!18366 (= setRest!18364 ((_ map or) (store ((as const (Array Context!3238 Bool)) false) setElem!18366 true) setRest!18366))))

(declare-fun b!2188186 () Bool)

(declare-fun tp!682112 () Bool)

(assert (=> b!2188186 (= e!1398258 tp!682112)))

(assert (= (and setNonEmpty!18364 condSetEmpty!18366) setIsEmpty!18366))

(assert (= (and setNonEmpty!18364 (not condSetEmpty!18366)) setNonEmpty!18366))

(assert (= setNonEmpty!18366 b!2188186))

(declare-fun m!2631047 () Bool)

(assert (=> setNonEmpty!18366 m!2631047))

(declare-fun e!1398259 () Bool)

(assert (=> b!2186869 (= tp!681878 e!1398259)))

(declare-fun b!2188190 () Bool)

(declare-fun tp!682114 () Bool)

(declare-fun tp!682113 () Bool)

(assert (=> b!2188190 (= e!1398259 (and tp!682114 tp!682113))))

(declare-fun b!2188188 () Bool)

(declare-fun tp!682115 () Bool)

(declare-fun tp!682117 () Bool)

(assert (=> b!2188188 (= e!1398259 (and tp!682115 tp!682117))))

(declare-fun b!2188187 () Bool)

(assert (=> b!2188187 (= e!1398259 tp_is_empty!9705)))

(declare-fun b!2188189 () Bool)

(declare-fun tp!682116 () Bool)

(assert (=> b!2188189 (= e!1398259 tp!682116)))

(assert (= (and b!2186869 ((_ is ElementMatch!6049) (regOne!12611 (regOne!12611 r!12534)))) b!2188187))

(assert (= (and b!2186869 ((_ is Concat!10351) (regOne!12611 (regOne!12611 r!12534)))) b!2188188))

(assert (= (and b!2186869 ((_ is Star!6049) (regOne!12611 (regOne!12611 r!12534)))) b!2188189))

(assert (= (and b!2186869 ((_ is Union!6049) (regOne!12611 (regOne!12611 r!12534)))) b!2188190))

(declare-fun e!1398260 () Bool)

(assert (=> b!2186869 (= tp!681877 e!1398260)))

(declare-fun b!2188194 () Bool)

(declare-fun tp!682119 () Bool)

(declare-fun tp!682118 () Bool)

(assert (=> b!2188194 (= e!1398260 (and tp!682119 tp!682118))))

(declare-fun b!2188192 () Bool)

(declare-fun tp!682120 () Bool)

(declare-fun tp!682122 () Bool)

(assert (=> b!2188192 (= e!1398260 (and tp!682120 tp!682122))))

(declare-fun b!2188191 () Bool)

(assert (=> b!2188191 (= e!1398260 tp_is_empty!9705)))

(declare-fun b!2188193 () Bool)

(declare-fun tp!682121 () Bool)

(assert (=> b!2188193 (= e!1398260 tp!682121)))

(assert (= (and b!2186869 ((_ is ElementMatch!6049) (regTwo!12611 (regOne!12611 r!12534)))) b!2188191))

(assert (= (and b!2186869 ((_ is Concat!10351) (regTwo!12611 (regOne!12611 r!12534)))) b!2188192))

(assert (= (and b!2186869 ((_ is Star!6049) (regTwo!12611 (regOne!12611 r!12534)))) b!2188193))

(assert (= (and b!2186869 ((_ is Union!6049) (regTwo!12611 (regOne!12611 r!12534)))) b!2188194))

(declare-fun tp!682125 () Bool)

(declare-fun b!2188195 () Bool)

(declare-fun e!1398261 () Bool)

(declare-fun tp!682123 () Bool)

(assert (=> b!2188195 (= e!1398261 (and (inv!33609 (left!19400 (left!19400 (c!347560 totalInput!977)))) tp!682125 (inv!33609 (right!19730 (left!19400 (c!347560 totalInput!977)))) tp!682123))))

(declare-fun b!2188197 () Bool)

(declare-fun e!1398262 () Bool)

(declare-fun tp!682124 () Bool)

(assert (=> b!2188197 (= e!1398262 tp!682124)))

(declare-fun b!2188196 () Bool)

(assert (=> b!2188196 (= e!1398261 (and (inv!33617 (xs!11127 (left!19400 (c!347560 totalInput!977)))) e!1398262))))

(assert (=> b!2186903 (= tp!681920 (and (inv!33609 (left!19400 (c!347560 totalInput!977))) e!1398261))))

(assert (= (and b!2186903 ((_ is Node!8185) (left!19400 (c!347560 totalInput!977)))) b!2188195))

(assert (= b!2188196 b!2188197))

(assert (= (and b!2186903 ((_ is Leaf!11977) (left!19400 (c!347560 totalInput!977)))) b!2188196))

(declare-fun m!2631049 () Bool)

(assert (=> b!2188195 m!2631049))

(declare-fun m!2631051 () Bool)

(assert (=> b!2188195 m!2631051))

(declare-fun m!2631053 () Bool)

(assert (=> b!2188196 m!2631053))

(assert (=> b!2186903 m!2629481))

(declare-fun b!2188198 () Bool)

(declare-fun e!1398263 () Bool)

(declare-fun tp!682128 () Bool)

(declare-fun tp!682126 () Bool)

(assert (=> b!2188198 (= e!1398263 (and (inv!33609 (left!19400 (right!19730 (c!347560 totalInput!977)))) tp!682128 (inv!33609 (right!19730 (right!19730 (c!347560 totalInput!977)))) tp!682126))))

(declare-fun b!2188200 () Bool)

(declare-fun e!1398264 () Bool)

(declare-fun tp!682127 () Bool)

(assert (=> b!2188200 (= e!1398264 tp!682127)))

(declare-fun b!2188199 () Bool)

(assert (=> b!2188199 (= e!1398263 (and (inv!33617 (xs!11127 (right!19730 (c!347560 totalInput!977)))) e!1398264))))

(assert (=> b!2186903 (= tp!681918 (and (inv!33609 (right!19730 (c!347560 totalInput!977))) e!1398263))))

(assert (= (and b!2186903 ((_ is Node!8185) (right!19730 (c!347560 totalInput!977)))) b!2188198))

(assert (= b!2188199 b!2188200))

(assert (= (and b!2186903 ((_ is Leaf!11977) (right!19730 (c!347560 totalInput!977)))) b!2188199))

(declare-fun m!2631055 () Bool)

(assert (=> b!2188198 m!2631055))

(declare-fun m!2631057 () Bool)

(assert (=> b!2188198 m!2631057))

(declare-fun m!2631059 () Bool)

(assert (=> b!2188199 m!2631059))

(assert (=> b!2186903 m!2629483))

(declare-fun e!1398265 () Bool)

(assert (=> b!2186867 (= tp!681879 e!1398265)))

(declare-fun b!2188204 () Bool)

(declare-fun tp!682130 () Bool)

(declare-fun tp!682129 () Bool)

(assert (=> b!2188204 (= e!1398265 (and tp!682130 tp!682129))))

(declare-fun b!2188202 () Bool)

(declare-fun tp!682131 () Bool)

(declare-fun tp!682133 () Bool)

(assert (=> b!2188202 (= e!1398265 (and tp!682131 tp!682133))))

(declare-fun b!2188201 () Bool)

(assert (=> b!2188201 (= e!1398265 tp_is_empty!9705)))

(declare-fun b!2188203 () Bool)

(declare-fun tp!682132 () Bool)

(assert (=> b!2188203 (= e!1398265 tp!682132)))

(assert (= (and b!2186867 ((_ is ElementMatch!6049) (regOne!12610 (regOne!12611 r!12534)))) b!2188201))

(assert (= (and b!2186867 ((_ is Concat!10351) (regOne!12610 (regOne!12611 r!12534)))) b!2188202))

(assert (= (and b!2186867 ((_ is Star!6049) (regOne!12610 (regOne!12611 r!12534)))) b!2188203))

(assert (= (and b!2186867 ((_ is Union!6049) (regOne!12610 (regOne!12611 r!12534)))) b!2188204))

(declare-fun e!1398266 () Bool)

(assert (=> b!2186867 (= tp!681881 e!1398266)))

(declare-fun b!2188208 () Bool)

(declare-fun tp!682135 () Bool)

(declare-fun tp!682134 () Bool)

(assert (=> b!2188208 (= e!1398266 (and tp!682135 tp!682134))))

(declare-fun b!2188206 () Bool)

(declare-fun tp!682136 () Bool)

(declare-fun tp!682138 () Bool)

(assert (=> b!2188206 (= e!1398266 (and tp!682136 tp!682138))))

(declare-fun b!2188205 () Bool)

(assert (=> b!2188205 (= e!1398266 tp_is_empty!9705)))

(declare-fun b!2188207 () Bool)

(declare-fun tp!682137 () Bool)

(assert (=> b!2188207 (= e!1398266 tp!682137)))

(assert (= (and b!2186867 ((_ is ElementMatch!6049) (regTwo!12610 (regOne!12611 r!12534)))) b!2188205))

(assert (= (and b!2186867 ((_ is Concat!10351) (regTwo!12610 (regOne!12611 r!12534)))) b!2188206))

(assert (= (and b!2186867 ((_ is Star!6049) (regTwo!12610 (regOne!12611 r!12534)))) b!2188207))

(assert (= (and b!2186867 ((_ is Union!6049) (regTwo!12610 (regOne!12611 r!12534)))) b!2188208))

(declare-fun e!1398267 () Bool)

(assert (=> b!2186868 (= tp!681880 e!1398267)))

(declare-fun b!2188212 () Bool)

(declare-fun tp!682140 () Bool)

(declare-fun tp!682139 () Bool)

(assert (=> b!2188212 (= e!1398267 (and tp!682140 tp!682139))))

(declare-fun b!2188210 () Bool)

(declare-fun tp!682141 () Bool)

(declare-fun tp!682143 () Bool)

(assert (=> b!2188210 (= e!1398267 (and tp!682141 tp!682143))))

(declare-fun b!2188209 () Bool)

(assert (=> b!2188209 (= e!1398267 tp_is_empty!9705)))

(declare-fun b!2188211 () Bool)

(declare-fun tp!682142 () Bool)

(assert (=> b!2188211 (= e!1398267 tp!682142)))

(assert (= (and b!2186868 ((_ is ElementMatch!6049) (reg!6378 (regOne!12611 r!12534)))) b!2188209))

(assert (= (and b!2186868 ((_ is Concat!10351) (reg!6378 (regOne!12611 r!12534)))) b!2188210))

(assert (= (and b!2186868 ((_ is Star!6049) (reg!6378 (regOne!12611 r!12534)))) b!2188211))

(assert (= (and b!2186868 ((_ is Union!6049) (reg!6378 (regOne!12611 r!12534)))) b!2188212))

(declare-fun e!1398268 () Bool)

(assert (=> b!2186871 (= tp!681884 e!1398268)))

(declare-fun b!2188216 () Bool)

(declare-fun tp!682145 () Bool)

(declare-fun tp!682144 () Bool)

(assert (=> b!2188216 (= e!1398268 (and tp!682145 tp!682144))))

(declare-fun b!2188214 () Bool)

(declare-fun tp!682146 () Bool)

(declare-fun tp!682148 () Bool)

(assert (=> b!2188214 (= e!1398268 (and tp!682146 tp!682148))))

(declare-fun b!2188213 () Bool)

(assert (=> b!2188213 (= e!1398268 tp_is_empty!9705)))

(declare-fun b!2188215 () Bool)

(declare-fun tp!682147 () Bool)

(assert (=> b!2188215 (= e!1398268 tp!682147)))

(assert (= (and b!2186871 ((_ is ElementMatch!6049) (regOne!12610 (regTwo!12611 r!12534)))) b!2188213))

(assert (= (and b!2186871 ((_ is Concat!10351) (regOne!12610 (regTwo!12611 r!12534)))) b!2188214))

(assert (= (and b!2186871 ((_ is Star!6049) (regOne!12610 (regTwo!12611 r!12534)))) b!2188215))

(assert (= (and b!2186871 ((_ is Union!6049) (regOne!12610 (regTwo!12611 r!12534)))) b!2188216))

(declare-fun e!1398269 () Bool)

(assert (=> b!2186871 (= tp!681886 e!1398269)))

(declare-fun b!2188220 () Bool)

(declare-fun tp!682150 () Bool)

(declare-fun tp!682149 () Bool)

(assert (=> b!2188220 (= e!1398269 (and tp!682150 tp!682149))))

(declare-fun b!2188218 () Bool)

(declare-fun tp!682151 () Bool)

(declare-fun tp!682153 () Bool)

(assert (=> b!2188218 (= e!1398269 (and tp!682151 tp!682153))))

(declare-fun b!2188217 () Bool)

(assert (=> b!2188217 (= e!1398269 tp_is_empty!9705)))

(declare-fun b!2188219 () Bool)

(declare-fun tp!682152 () Bool)

(assert (=> b!2188219 (= e!1398269 tp!682152)))

(assert (= (and b!2186871 ((_ is ElementMatch!6049) (regTwo!12610 (regTwo!12611 r!12534)))) b!2188217))

(assert (= (and b!2186871 ((_ is Concat!10351) (regTwo!12610 (regTwo!12611 r!12534)))) b!2188218))

(assert (= (and b!2186871 ((_ is Star!6049) (regTwo!12610 (regTwo!12611 r!12534)))) b!2188219))

(assert (= (and b!2186871 ((_ is Union!6049) (regTwo!12610 (regTwo!12611 r!12534)))) b!2188220))

(declare-fun e!1398270 () Bool)

(assert (=> b!2186898 (= tp!681909 e!1398270)))

(declare-fun b!2188224 () Bool)

(declare-fun tp!682155 () Bool)

(declare-fun tp!682154 () Bool)

(assert (=> b!2188224 (= e!1398270 (and tp!682155 tp!682154))))

(declare-fun b!2188222 () Bool)

(declare-fun tp!682156 () Bool)

(declare-fun tp!682158 () Bool)

(assert (=> b!2188222 (= e!1398270 (and tp!682156 tp!682158))))

(declare-fun b!2188221 () Bool)

(assert (=> b!2188221 (= e!1398270 tp_is_empty!9705)))

(declare-fun b!2188223 () Bool)

(declare-fun tp!682157 () Bool)

(assert (=> b!2188223 (= e!1398270 tp!682157)))

(assert (= (and b!2186898 ((_ is ElementMatch!6049) (regOne!12611 (regOne!12610 r!12534)))) b!2188221))

(assert (= (and b!2186898 ((_ is Concat!10351) (regOne!12611 (regOne!12610 r!12534)))) b!2188222))

(assert (= (and b!2186898 ((_ is Star!6049) (regOne!12611 (regOne!12610 r!12534)))) b!2188223))

(assert (= (and b!2186898 ((_ is Union!6049) (regOne!12611 (regOne!12610 r!12534)))) b!2188224))

(declare-fun e!1398271 () Bool)

(assert (=> b!2186898 (= tp!681908 e!1398271)))

(declare-fun b!2188228 () Bool)

(declare-fun tp!682160 () Bool)

(declare-fun tp!682159 () Bool)

(assert (=> b!2188228 (= e!1398271 (and tp!682160 tp!682159))))

(declare-fun b!2188226 () Bool)

(declare-fun tp!682161 () Bool)

(declare-fun tp!682163 () Bool)

(assert (=> b!2188226 (= e!1398271 (and tp!682161 tp!682163))))

(declare-fun b!2188225 () Bool)

(assert (=> b!2188225 (= e!1398271 tp_is_empty!9705)))

(declare-fun b!2188227 () Bool)

(declare-fun tp!682162 () Bool)

(assert (=> b!2188227 (= e!1398271 tp!682162)))

(assert (= (and b!2186898 ((_ is ElementMatch!6049) (regTwo!12611 (regOne!12610 r!12534)))) b!2188225))

(assert (= (and b!2186898 ((_ is Concat!10351) (regTwo!12611 (regOne!12610 r!12534)))) b!2188226))

(assert (= (and b!2186898 ((_ is Star!6049) (regTwo!12611 (regOne!12610 r!12534)))) b!2188227))

(assert (= (and b!2186898 ((_ is Union!6049) (regTwo!12611 (regOne!12610 r!12534)))) b!2188228))

(declare-fun e!1398272 () Bool)

(assert (=> b!2186896 (= tp!681910 e!1398272)))

(declare-fun b!2188232 () Bool)

(declare-fun tp!682165 () Bool)

(declare-fun tp!682164 () Bool)

(assert (=> b!2188232 (= e!1398272 (and tp!682165 tp!682164))))

(declare-fun b!2188230 () Bool)

(declare-fun tp!682166 () Bool)

(declare-fun tp!682168 () Bool)

(assert (=> b!2188230 (= e!1398272 (and tp!682166 tp!682168))))

(declare-fun b!2188229 () Bool)

(assert (=> b!2188229 (= e!1398272 tp_is_empty!9705)))

(declare-fun b!2188231 () Bool)

(declare-fun tp!682167 () Bool)

(assert (=> b!2188231 (= e!1398272 tp!682167)))

(assert (= (and b!2186896 ((_ is ElementMatch!6049) (regOne!12610 (regOne!12610 r!12534)))) b!2188229))

(assert (= (and b!2186896 ((_ is Concat!10351) (regOne!12610 (regOne!12610 r!12534)))) b!2188230))

(assert (= (and b!2186896 ((_ is Star!6049) (regOne!12610 (regOne!12610 r!12534)))) b!2188231))

(assert (= (and b!2186896 ((_ is Union!6049) (regOne!12610 (regOne!12610 r!12534)))) b!2188232))

(declare-fun e!1398273 () Bool)

(assert (=> b!2186896 (= tp!681912 e!1398273)))

(declare-fun b!2188236 () Bool)

(declare-fun tp!682170 () Bool)

(declare-fun tp!682169 () Bool)

(assert (=> b!2188236 (= e!1398273 (and tp!682170 tp!682169))))

(declare-fun b!2188234 () Bool)

(declare-fun tp!682171 () Bool)

(declare-fun tp!682173 () Bool)

(assert (=> b!2188234 (= e!1398273 (and tp!682171 tp!682173))))

(declare-fun b!2188233 () Bool)

(assert (=> b!2188233 (= e!1398273 tp_is_empty!9705)))

(declare-fun b!2188235 () Bool)

(declare-fun tp!682172 () Bool)

(assert (=> b!2188235 (= e!1398273 tp!682172)))

(assert (= (and b!2186896 ((_ is ElementMatch!6049) (regTwo!12610 (regOne!12610 r!12534)))) b!2188233))

(assert (= (and b!2186896 ((_ is Concat!10351) (regTwo!12610 (regOne!12610 r!12534)))) b!2188234))

(assert (= (and b!2186896 ((_ is Star!6049) (regTwo!12610 (regOne!12610 r!12534)))) b!2188235))

(assert (= (and b!2186896 ((_ is Union!6049) (regTwo!12610 (regOne!12610 r!12534)))) b!2188236))

(declare-fun b!2188237 () Bool)

(declare-fun e!1398274 () Bool)

(declare-fun tp!682174 () Bool)

(declare-fun tp!682175 () Bool)

(assert (=> b!2188237 (= e!1398274 (and tp!682174 tp!682175))))

(assert (=> b!2186878 (= tp!681892 e!1398274)))

(assert (= (and b!2186878 ((_ is Cons!25277) (exprs!2119 setElem!18364))) b!2188237))

(declare-fun e!1398275 () Bool)

(assert (=> b!2186897 (= tp!681911 e!1398275)))

(declare-fun b!2188241 () Bool)

(declare-fun tp!682177 () Bool)

(declare-fun tp!682176 () Bool)

(assert (=> b!2188241 (= e!1398275 (and tp!682177 tp!682176))))

(declare-fun b!2188239 () Bool)

(declare-fun tp!682178 () Bool)

(declare-fun tp!682180 () Bool)

(assert (=> b!2188239 (= e!1398275 (and tp!682178 tp!682180))))

(declare-fun b!2188238 () Bool)

(assert (=> b!2188238 (= e!1398275 tp_is_empty!9705)))

(declare-fun b!2188240 () Bool)

(declare-fun tp!682179 () Bool)

(assert (=> b!2188240 (= e!1398275 tp!682179)))

(assert (= (and b!2186897 ((_ is ElementMatch!6049) (reg!6378 (regOne!12610 r!12534)))) b!2188238))

(assert (= (and b!2186897 ((_ is Concat!10351) (reg!6378 (regOne!12610 r!12534)))) b!2188239))

(assert (= (and b!2186897 ((_ is Star!6049) (reg!6378 (regOne!12610 r!12534)))) b!2188240))

(assert (= (and b!2186897 ((_ is Union!6049) (reg!6378 (regOne!12610 r!12534)))) b!2188241))

(declare-fun e!1398276 () Bool)

(assert (=> b!2186900 (= tp!681915 e!1398276)))

(declare-fun b!2188245 () Bool)

(declare-fun tp!682182 () Bool)

(declare-fun tp!682181 () Bool)

(assert (=> b!2188245 (= e!1398276 (and tp!682182 tp!682181))))

(declare-fun b!2188243 () Bool)

(declare-fun tp!682183 () Bool)

(declare-fun tp!682185 () Bool)

(assert (=> b!2188243 (= e!1398276 (and tp!682183 tp!682185))))

(declare-fun b!2188242 () Bool)

(assert (=> b!2188242 (= e!1398276 tp_is_empty!9705)))

(declare-fun b!2188244 () Bool)

(declare-fun tp!682184 () Bool)

(assert (=> b!2188244 (= e!1398276 tp!682184)))

(assert (= (and b!2186900 ((_ is ElementMatch!6049) (regOne!12610 (regTwo!12610 r!12534)))) b!2188242))

(assert (= (and b!2186900 ((_ is Concat!10351) (regOne!12610 (regTwo!12610 r!12534)))) b!2188243))

(assert (= (and b!2186900 ((_ is Star!6049) (regOne!12610 (regTwo!12610 r!12534)))) b!2188244))

(assert (= (and b!2186900 ((_ is Union!6049) (regOne!12610 (regTwo!12610 r!12534)))) b!2188245))

(declare-fun e!1398277 () Bool)

(assert (=> b!2186900 (= tp!681917 e!1398277)))

(declare-fun b!2188249 () Bool)

(declare-fun tp!682187 () Bool)

(declare-fun tp!682186 () Bool)

(assert (=> b!2188249 (= e!1398277 (and tp!682187 tp!682186))))

(declare-fun b!2188247 () Bool)

(declare-fun tp!682188 () Bool)

(declare-fun tp!682190 () Bool)

(assert (=> b!2188247 (= e!1398277 (and tp!682188 tp!682190))))

(declare-fun b!2188246 () Bool)

(assert (=> b!2188246 (= e!1398277 tp_is_empty!9705)))

(declare-fun b!2188248 () Bool)

(declare-fun tp!682189 () Bool)

(assert (=> b!2188248 (= e!1398277 tp!682189)))

(assert (= (and b!2186900 ((_ is ElementMatch!6049) (regTwo!12610 (regTwo!12610 r!12534)))) b!2188246))

(assert (= (and b!2186900 ((_ is Concat!10351) (regTwo!12610 (regTwo!12610 r!12534)))) b!2188247))

(assert (= (and b!2186900 ((_ is Star!6049) (regTwo!12610 (regTwo!12610 r!12534)))) b!2188248))

(assert (= (and b!2186900 ((_ is Union!6049) (regTwo!12610 (regTwo!12610 r!12534)))) b!2188249))

(declare-fun e!1398278 () Bool)

(assert (=> b!2186865 (= tp!681873 e!1398278)))

(declare-fun b!2188253 () Bool)

(declare-fun tp!682192 () Bool)

(declare-fun tp!682191 () Bool)

(assert (=> b!2188253 (= e!1398278 (and tp!682192 tp!682191))))

(declare-fun b!2188251 () Bool)

(declare-fun tp!682193 () Bool)

(declare-fun tp!682195 () Bool)

(assert (=> b!2188251 (= e!1398278 (and tp!682193 tp!682195))))

(declare-fun b!2188250 () Bool)

(assert (=> b!2188250 (= e!1398278 tp_is_empty!9705)))

(declare-fun b!2188252 () Bool)

(declare-fun tp!682194 () Bool)

(assert (=> b!2188252 (= e!1398278 tp!682194)))

(assert (= (and b!2186865 ((_ is ElementMatch!6049) (regOne!12611 (reg!6378 r!12534)))) b!2188250))

(assert (= (and b!2186865 ((_ is Concat!10351) (regOne!12611 (reg!6378 r!12534)))) b!2188251))

(assert (= (and b!2186865 ((_ is Star!6049) (regOne!12611 (reg!6378 r!12534)))) b!2188252))

(assert (= (and b!2186865 ((_ is Union!6049) (regOne!12611 (reg!6378 r!12534)))) b!2188253))

(declare-fun e!1398279 () Bool)

(assert (=> b!2186865 (= tp!681872 e!1398279)))

(declare-fun b!2188257 () Bool)

(declare-fun tp!682197 () Bool)

(declare-fun tp!682196 () Bool)

(assert (=> b!2188257 (= e!1398279 (and tp!682197 tp!682196))))

(declare-fun b!2188255 () Bool)

(declare-fun tp!682198 () Bool)

(declare-fun tp!682200 () Bool)

(assert (=> b!2188255 (= e!1398279 (and tp!682198 tp!682200))))

(declare-fun b!2188254 () Bool)

(assert (=> b!2188254 (= e!1398279 tp_is_empty!9705)))

(declare-fun b!2188256 () Bool)

(declare-fun tp!682199 () Bool)

(assert (=> b!2188256 (= e!1398279 tp!682199)))

(assert (= (and b!2186865 ((_ is ElementMatch!6049) (regTwo!12611 (reg!6378 r!12534)))) b!2188254))

(assert (= (and b!2186865 ((_ is Concat!10351) (regTwo!12611 (reg!6378 r!12534)))) b!2188255))

(assert (= (and b!2186865 ((_ is Star!6049) (regTwo!12611 (reg!6378 r!12534)))) b!2188256))

(assert (= (and b!2186865 ((_ is Union!6049) (regTwo!12611 (reg!6378 r!12534)))) b!2188257))

(declare-fun tp!682203 () Bool)

(declare-fun tp!682201 () Bool)

(declare-fun e!1398280 () Bool)

(declare-fun b!2188258 () Bool)

(assert (=> b!2188258 (= e!1398280 (and (inv!33609 (left!19400 (left!19400 (c!347560 input!5540)))) tp!682203 (inv!33609 (right!19730 (left!19400 (c!347560 input!5540)))) tp!682201))))

(declare-fun b!2188260 () Bool)

(declare-fun e!1398281 () Bool)

(declare-fun tp!682202 () Bool)

(assert (=> b!2188260 (= e!1398281 tp!682202)))

(declare-fun b!2188259 () Bool)

(assert (=> b!2188259 (= e!1398280 (and (inv!33617 (xs!11127 (left!19400 (c!347560 input!5540)))) e!1398281))))

(assert (=> b!2186887 (= tp!681901 (and (inv!33609 (left!19400 (c!347560 input!5540))) e!1398280))))

(assert (= (and b!2186887 ((_ is Node!8185) (left!19400 (c!347560 input!5540)))) b!2188258))

(assert (= b!2188259 b!2188260))

(assert (= (and b!2186887 ((_ is Leaf!11977) (left!19400 (c!347560 input!5540)))) b!2188259))

(declare-fun m!2631061 () Bool)

(assert (=> b!2188258 m!2631061))

(declare-fun m!2631063 () Bool)

(assert (=> b!2188258 m!2631063))

(declare-fun m!2631065 () Bool)

(assert (=> b!2188259 m!2631065))

(assert (=> b!2186887 m!2629475))

(declare-fun b!2188261 () Bool)

(declare-fun e!1398282 () Bool)

(declare-fun tp!682204 () Bool)

(declare-fun tp!682206 () Bool)

(assert (=> b!2188261 (= e!1398282 (and (inv!33609 (left!19400 (right!19730 (c!347560 input!5540)))) tp!682206 (inv!33609 (right!19730 (right!19730 (c!347560 input!5540)))) tp!682204))))

(declare-fun b!2188263 () Bool)

(declare-fun e!1398283 () Bool)

(declare-fun tp!682205 () Bool)

(assert (=> b!2188263 (= e!1398283 tp!682205)))

(declare-fun b!2188262 () Bool)

(assert (=> b!2188262 (= e!1398282 (and (inv!33617 (xs!11127 (right!19730 (c!347560 input!5540)))) e!1398283))))

(assert (=> b!2186887 (= tp!681899 (and (inv!33609 (right!19730 (c!347560 input!5540))) e!1398282))))

(assert (= (and b!2186887 ((_ is Node!8185) (right!19730 (c!347560 input!5540)))) b!2188261))

(assert (= b!2188262 b!2188263))

(assert (= (and b!2186887 ((_ is Leaf!11977) (right!19730 (c!347560 input!5540)))) b!2188262))

(declare-fun m!2631067 () Bool)

(assert (=> b!2188261 m!2631067))

(declare-fun m!2631069 () Bool)

(assert (=> b!2188261 m!2631069))

(declare-fun m!2631071 () Bool)

(assert (=> b!2188262 m!2631071))

(assert (=> b!2186887 m!2629477))

(declare-fun e!1398284 () Bool)

(assert (=> b!2186873 (= tp!681883 e!1398284)))

(declare-fun b!2188267 () Bool)

(declare-fun tp!682208 () Bool)

(declare-fun tp!682207 () Bool)

(assert (=> b!2188267 (= e!1398284 (and tp!682208 tp!682207))))

(declare-fun b!2188265 () Bool)

(declare-fun tp!682209 () Bool)

(declare-fun tp!682211 () Bool)

(assert (=> b!2188265 (= e!1398284 (and tp!682209 tp!682211))))

(declare-fun b!2188264 () Bool)

(assert (=> b!2188264 (= e!1398284 tp_is_empty!9705)))

(declare-fun b!2188266 () Bool)

(declare-fun tp!682210 () Bool)

(assert (=> b!2188266 (= e!1398284 tp!682210)))

(assert (= (and b!2186873 ((_ is ElementMatch!6049) (regOne!12611 (regTwo!12611 r!12534)))) b!2188264))

(assert (= (and b!2186873 ((_ is Concat!10351) (regOne!12611 (regTwo!12611 r!12534)))) b!2188265))

(assert (= (and b!2186873 ((_ is Star!6049) (regOne!12611 (regTwo!12611 r!12534)))) b!2188266))

(assert (= (and b!2186873 ((_ is Union!6049) (regOne!12611 (regTwo!12611 r!12534)))) b!2188267))

(declare-fun e!1398285 () Bool)

(assert (=> b!2186873 (= tp!681882 e!1398285)))

(declare-fun b!2188271 () Bool)

(declare-fun tp!682213 () Bool)

(declare-fun tp!682212 () Bool)

(assert (=> b!2188271 (= e!1398285 (and tp!682213 tp!682212))))

(declare-fun b!2188269 () Bool)

(declare-fun tp!682214 () Bool)

(declare-fun tp!682216 () Bool)

(assert (=> b!2188269 (= e!1398285 (and tp!682214 tp!682216))))

(declare-fun b!2188268 () Bool)

(assert (=> b!2188268 (= e!1398285 tp_is_empty!9705)))

(declare-fun b!2188270 () Bool)

(declare-fun tp!682215 () Bool)

(assert (=> b!2188270 (= e!1398285 tp!682215)))

(assert (= (and b!2186873 ((_ is ElementMatch!6049) (regTwo!12611 (regTwo!12611 r!12534)))) b!2188268))

(assert (= (and b!2186873 ((_ is Concat!10351) (regTwo!12611 (regTwo!12611 r!12534)))) b!2188269))

(assert (= (and b!2186873 ((_ is Star!6049) (regTwo!12611 (regTwo!12611 r!12534)))) b!2188270))

(assert (= (and b!2186873 ((_ is Union!6049) (regTwo!12611 (regTwo!12611 r!12534)))) b!2188271))

(declare-fun e!1398286 () Bool)

(assert (=> b!2186864 (= tp!681875 e!1398286)))

(declare-fun b!2188275 () Bool)

(declare-fun tp!682218 () Bool)

(declare-fun tp!682217 () Bool)

(assert (=> b!2188275 (= e!1398286 (and tp!682218 tp!682217))))

(declare-fun b!2188273 () Bool)

(declare-fun tp!682219 () Bool)

(declare-fun tp!682221 () Bool)

(assert (=> b!2188273 (= e!1398286 (and tp!682219 tp!682221))))

(declare-fun b!2188272 () Bool)

(assert (=> b!2188272 (= e!1398286 tp_is_empty!9705)))

(declare-fun b!2188274 () Bool)

(declare-fun tp!682220 () Bool)

(assert (=> b!2188274 (= e!1398286 tp!682220)))

(assert (= (and b!2186864 ((_ is ElementMatch!6049) (reg!6378 (reg!6378 r!12534)))) b!2188272))

(assert (= (and b!2186864 ((_ is Concat!10351) (reg!6378 (reg!6378 r!12534)))) b!2188273))

(assert (= (and b!2186864 ((_ is Star!6049) (reg!6378 (reg!6378 r!12534)))) b!2188274))

(assert (= (and b!2186864 ((_ is Union!6049) (reg!6378 (reg!6378 r!12534)))) b!2188275))

(declare-fun e!1398287 () Bool)

(assert (=> b!2186872 (= tp!681885 e!1398287)))

(declare-fun b!2188279 () Bool)

(declare-fun tp!682223 () Bool)

(declare-fun tp!682222 () Bool)

(assert (=> b!2188279 (= e!1398287 (and tp!682223 tp!682222))))

(declare-fun b!2188277 () Bool)

(declare-fun tp!682224 () Bool)

(declare-fun tp!682226 () Bool)

(assert (=> b!2188277 (= e!1398287 (and tp!682224 tp!682226))))

(declare-fun b!2188276 () Bool)

(assert (=> b!2188276 (= e!1398287 tp_is_empty!9705)))

(declare-fun b!2188278 () Bool)

(declare-fun tp!682225 () Bool)

(assert (=> b!2188278 (= e!1398287 tp!682225)))

(assert (= (and b!2186872 ((_ is ElementMatch!6049) (reg!6378 (regTwo!12611 r!12534)))) b!2188276))

(assert (= (and b!2186872 ((_ is Concat!10351) (reg!6378 (regTwo!12611 r!12534)))) b!2188277))

(assert (= (and b!2186872 ((_ is Star!6049) (reg!6378 (regTwo!12611 r!12534)))) b!2188278))

(assert (= (and b!2186872 ((_ is Union!6049) (reg!6378 (regTwo!12611 r!12534)))) b!2188279))

(declare-fun e!1398288 () Bool)

(assert (=> b!2186863 (= tp!681874 e!1398288)))

(declare-fun b!2188283 () Bool)

(declare-fun tp!682228 () Bool)

(declare-fun tp!682227 () Bool)

(assert (=> b!2188283 (= e!1398288 (and tp!682228 tp!682227))))

(declare-fun b!2188281 () Bool)

(declare-fun tp!682229 () Bool)

(declare-fun tp!682231 () Bool)

(assert (=> b!2188281 (= e!1398288 (and tp!682229 tp!682231))))

(declare-fun b!2188280 () Bool)

(assert (=> b!2188280 (= e!1398288 tp_is_empty!9705)))

(declare-fun b!2188282 () Bool)

(declare-fun tp!682230 () Bool)

(assert (=> b!2188282 (= e!1398288 tp!682230)))

(assert (= (and b!2186863 ((_ is ElementMatch!6049) (regOne!12610 (reg!6378 r!12534)))) b!2188280))

(assert (= (and b!2186863 ((_ is Concat!10351) (regOne!12610 (reg!6378 r!12534)))) b!2188281))

(assert (= (and b!2186863 ((_ is Star!6049) (regOne!12610 (reg!6378 r!12534)))) b!2188282))

(assert (= (and b!2186863 ((_ is Union!6049) (regOne!12610 (reg!6378 r!12534)))) b!2188283))

(declare-fun e!1398289 () Bool)

(assert (=> b!2186863 (= tp!681876 e!1398289)))

(declare-fun b!2188287 () Bool)

(declare-fun tp!682233 () Bool)

(declare-fun tp!682232 () Bool)

(assert (=> b!2188287 (= e!1398289 (and tp!682233 tp!682232))))

(declare-fun b!2188285 () Bool)

(declare-fun tp!682234 () Bool)

(declare-fun tp!682236 () Bool)

(assert (=> b!2188285 (= e!1398289 (and tp!682234 tp!682236))))

(declare-fun b!2188284 () Bool)

(assert (=> b!2188284 (= e!1398289 tp_is_empty!9705)))

(declare-fun b!2188286 () Bool)

(declare-fun tp!682235 () Bool)

(assert (=> b!2188286 (= e!1398289 tp!682235)))

(assert (= (and b!2186863 ((_ is ElementMatch!6049) (regTwo!12610 (reg!6378 r!12534)))) b!2188284))

(assert (= (and b!2186863 ((_ is Concat!10351) (regTwo!12610 (reg!6378 r!12534)))) b!2188285))

(assert (= (and b!2186863 ((_ is Star!6049) (regTwo!12610 (reg!6378 r!12534)))) b!2188286))

(assert (= (and b!2186863 ((_ is Union!6049) (regTwo!12610 (reg!6378 r!12534)))) b!2188287))

(declare-fun b_lambda!71147 () Bool)

(assert (= b_lambda!71141 (or d!655116 b_lambda!71147)))

(declare-fun bs!448272 () Bool)

(declare-fun d!655952 () Bool)

(assert (= bs!448272 (and d!655952 d!655116)))

(assert (=> bs!448272 (= (dynLambda!11438 lambda!82100 (h!30678 (exprs!2119 setElem!18358))) (validRegex!2325 (h!30678 (exprs!2119 setElem!18358))))))

(declare-fun m!2631073 () Bool)

(assert (=> bs!448272 m!2631073))

(assert (=> b!2187011 d!655952))

(check-sat (not bm!131705) (not b!2187225) (not b!2187661) (not b!2188190) (not b!2187692) (not b!2187586) (not b!2188107) (not b!2187170) (not b!2187796) (not b!2187650) (not bm!131655) (not b!2188243) (not b!2188263) (not d!655498) (not b!2187726) (not b!2188279) (not b!2188164) (not d!655322) tp_is_empty!9705 (not d!655588) (not b!2188260) (not bm!131668) (not b!2187432) (not bm!131680) (not b!2188202) (not b!2187853) (not b!2188255) (not b!2188262) (not d!655438) (not b!2187808) (not b!2187783) (not d!655706) (not d!655572) (not b!2188239) (not b!2187993) (not b!2187676) (not b!2187284) (not b!2187019) (not d!655670) (not d!655936) (not b!2188175) (not d!655330) (not bm!131707) (not b!2188122) (not bm!131734) (not b!2187799) (not b!2188171) (not bm!131709) (not b!2187026) (not d!655484) (not b!2187517) (not b!2187767) (not b!2187386) (not b!2187992) (not b!2186944) (not b!2188052) (not b!2187710) (not b!2186968) (not b!2188230) (not bm!131730) (not d!655910) (not bm!131703) (not b!2188169) (not d!655630) (not b!2187851) (not b!2187012) (not d!655684) (not b!2188182) (not b!2187229) (not d!655902) (not b!2188165) (not b!2187104) (not b!2187698) (not b!2188167) (not bs!448272) (not bm!131671) (not b!2187696) (not b!2187470) (not b!2188281) (not b!2186987) (not b!2187230) (not b!2187773) (not b!2188273) (not b!2188283) (not b!2188207) (not d!655334) (not b!2187742) (not bm!131691) (not d!655724) (not b!2187973) (not b!2187022) (not b!2188210) (not b!2188227) (not b!2188193) (not b!2186963) (not b!2187717) (not bm!131733) (not setNonEmpty!18366) (not b!2188222) (not b!2187724) (not bm!131672) (not b!2187769) (not d!655828) (not b!2187102) (not b!2188258) (not bm!131667) (not b!2188053) (not b!2187063) (not b!2188123) (not b!2187655) (not b!2188275) (not b!2188271) (not b!2187849) (not b!2188241) (not b!2187097) (not b!2188197) (not b!2187960) (not b!2187227) (not b!2187381) (not bm!131704) (not b!2187387) (not d!655748) (not b!2187202) (not b!2187805) (not b!2187426) (not b!2187491) (not b!2186952) (not b!2188200) (not b!2188257) (not d!655602) (not bm!131670) (not b!2187957) (not b!2187747) (not d!655604) (not d!655342) (not bm!131710) (not b!2187507) (not b!2188231) (not bm!131622) (not b!2187682) (not b!2187014) (not b!2187800) (not b!2187192) (not bm!131618) (not b!2187847) (not b!2187492) (not b!2187949) (not b!2187765) (not b!2188203) (not d!655316) (not b!2187704) (not d!655700) (not b!2187572) (not b!2187732) (not b!2188240) (not b!2187700) (not b!2188215) (not b!2186947) (not b!2188249) (not bm!131732) (not b!2187428) (not bm!131683) (not b!2188108) (not b!2188216) (not b!2187658) (not bm!131632) (not d!655444) (not b!2187474) (not b!2188186) (not b!2188156) (not b!2187059) (not b!2187061) (not b!2187703) (not d!655608) (not b!2186984) (not b!2187574) (not b!2187735) (not b!2187379) (not d!655632) (not b!2188224) (not b!2188199) (not b!2187168) (not b!2188251) (not b!2188287) (not b!2187462) (not d!655626) (not b!2187685) (not d!655430) (not b!2187475) (not b!2187526) (not b!2188174) (not d!655560) (not b!2187278) (not b!2187684) (not b!2187951) (not b!2187025) (not b!2188208) (not b!2187064) (not d!655942) (not b!2187609) (not b!2187057) (not b!2187715) (not bm!131701) (not b!2187161) (not b!2187430) (not b!2188232) (not b!2187795) (not b!2187065) (not d!655628) (not d!655442) (not b!2187529) (not b!2187276) (not b!2186962) (not bm!131617) (not b!2187272) (not b!2188206) (not b!2187653) (not b!2187573) (not b!2188211) (not b!2188235) (not d!655844) (not b!2187018) (not d!655926) (not b!2187287) (not b!2187803) (not d!655746) (not d!655654) (not d!655358) (not b!2188189) (not b!2188266) (not bm!131702) (not b!2187792) (not d!655370) (not b!2188267) (not b!2187099) (not b!2188170) (not d!655932) (not b!2188265) (not b!2188166) (not bm!131669) (not b!2187275) (not b!2188183) (not b!2187654) (not b!2187610) (not b!2187938) (not b!2187804) (not d!655794) (not b!2187939) (not b!2187021) (not b!2188234) (not b!2186978) (not d!655798) (not b!2188278) (not b!2187818) (not b!2187807) (not d!655762) (not d!655502) (not b!2188274) (not b!2187478) (not b!2188244) (not b!2186994) (not b!2188033) (not b!2187058) (not d!655662) (not b!2187605) (not b!2188214) (not d!655318) (not b!2187734) (not d!655722) (not b!2188196) (not b!2187520) (not b!2188277) (not d!655356) (not b!2187505) (not b!2186997) (not b!2188226) (not b_lambda!71147) (not d!655458) (not b!2187663) (not b!2187848) (not b!2187518) (not b!2187395) (not b!2187608) (not b!2188247) (not bm!131692) (not d!655582) (not b!2187607) (not b!2187616) (not b!2187606) (not b!2188286) (not b!2188228) (not d!655790) (not b!2188220) (not b!2188194) (not b!2186959) (not d!655822) (not b!2188184) (not b!2188285) (not b!2187471) (not b!2187445) (not b!2186986) (not d!655380) (not b!2187695) (not b!2187730) (not d!655948) (not d!655904) (not d!655368) (not b!2187084) (not b!2187203) (not b!2187201) (not b!2187959) (not b!2187091) (not b!2187463) (not d!655436) (not bm!131619) (not b!2187787) (not b!2187359) (not d!655850) (not b!2188204) (not d!655394) (not d!655504) (not d!655916) (not b!2188054) (not bm!131621) (not b!2187948) (not b!2187533) (not b!2187207) (not b!2187791) (not b!2187824) (not b!2187662) (not d!655938) (not b!2187034) (not b!2187657) (not b!2186951) (not b!2188261) (not b!2187140) (not b!2187784) (not bm!131700) (not b!2187015) (not b!2187674) (not b!2187563) (not b!2188270) (not b!2188269) (not bm!131654) (not b!2188236) (not d!655692) (not b!2188253) (not b!2188032) (not b!2188185) (not b!2188195) (not d!655736) (not d!655946) (not b!2186943) (not d!655462) (not b!2187775) (not b!2187974) (not d!655614) (not b!2188282) (not b!2187005) (not b!2188223) (not bm!131673) (not d!655908) (not b!2186950) (not b!2187659) (not b!2187528) (not b!2187286) (not b!2188173) (not bm!131679) (not b!2188218) (not b!2188188) (not b!2187702) (not bm!131684) (not b!2188157) (not d!655854) (not b!2187385) (not bm!131731) (not bm!131674) (not d!655364) (not b!2186887) (not bm!131693) (not b!2188142) (not d!655346) (not b!2187964) (not b!2187094) (not b!2186946) (not d!655324) (not b!2188219) (not bm!131706) (not b!2187810) (not b!2188259) (not b!2187208) (not d!655470) (not b!2187748) (not b!2188252) (not b!2188180) (not b!2188237) (not b!2188192) (not b!2188245) (not b!2188256) (not b!2187446) (not d!655732) (not b!2187498) (not b!2187771) (not b!2187671) (not b!2187274) (not b!2187472) (not d!655636) (not b!2188198) (not d!655720) (not b!2188248) (not b!2187801) (not b!2188212) (not b!2187139) (not b!2187391) (not b!2187496) (not bm!131678) (not b!2187802) (not b!2186975) (not d!655944) (not b!2187825) (not b!2186903) (not b!2187673))
(check-sat)
