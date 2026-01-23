; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!528424 () Bool)

(assert start!528424)

(declare-fun setIsEmpty!28349 () Bool)

(declare-fun setRes!28349 () Bool)

(assert (=> setIsEmpty!28349 setRes!28349))

(declare-fun b!5000587 () Bool)

(declare-fun e!3124779 () Bool)

(declare-fun e!3124773 () Bool)

(assert (=> b!5000587 (= e!3124779 e!3124773)))

(declare-fun res!2133753 () Bool)

(assert (=> b!5000587 (=> (not res!2133753) (not e!3124773))))

(declare-datatypes ((C!27814 0))(
  ( (C!27815 (val!23273 Int)) )
))
(declare-datatypes ((List!57950 0))(
  ( (Nil!57826) (Cons!57826 (h!64274 C!27814) (t!370296 List!57950)) )
))
(declare-fun lt!2068459 () List!57950)

(declare-fun lt!2068471 () List!57950)

(declare-fun isSuffix!1348 (List!57950 List!57950) Bool)

(assert (=> b!5000587 (= res!2133753 (isSuffix!1348 lt!2068459 lt!2068471))))

(declare-datatypes ((IArray!30663 0))(
  ( (IArray!30664 (innerList!15389 List!57950)) )
))
(declare-datatypes ((Conc!15301 0))(
  ( (Node!15301 (left!42286 Conc!15301) (right!42616 Conc!15301) (csize!30832 Int) (cheight!15512 Int)) (Leaf!25401 (xs!18627 IArray!30663) (csize!30833 Int)) (Empty!15301) )
))
(declare-datatypes ((BalanceConc!30032 0))(
  ( (BalanceConc!30033 (c!853395 Conc!15301)) )
))
(declare-fun totalInput!1012 () BalanceConc!30032)

(declare-fun list!18603 (BalanceConc!30032) List!57950)

(assert (=> b!5000587 (= lt!2068471 (list!18603 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!30032)

(assert (=> b!5000587 (= lt!2068459 (list!18603 input!5597))))

(declare-fun b!5000588 () Bool)

(declare-fun e!3124772 () Bool)

(declare-fun e!3124775 () Bool)

(assert (=> b!5000588 (= e!3124772 (not e!3124775))))

(declare-fun res!2133749 () Bool)

(assert (=> b!5000588 (=> res!2133749 e!3124775)))

(declare-fun e!3124787 () Bool)

(assert (=> b!5000588 (= res!2133749 e!3124787)))

(declare-fun res!2133750 () Bool)

(assert (=> b!5000588 (=> (not res!2133750) (not e!3124787))))

(declare-fun lt!2068455 () Bool)

(assert (=> b!5000588 (= res!2133750 (not lt!2068455))))

(declare-datatypes ((Regex!13782 0))(
  ( (ElementMatch!13782 (c!853396 C!27814)) (Concat!22575 (regOne!28076 Regex!13782) (regTwo!28076 Regex!13782)) (EmptyExpr!13782) (Star!13782 (reg!14111 Regex!13782)) (EmptyLang!13782) (Union!13782 (regOne!28077 Regex!13782) (regTwo!28077 Regex!13782)) )
))
(declare-datatypes ((List!57951 0))(
  ( (Nil!57827) (Cons!57827 (h!64275 Regex!13782) (t!370297 List!57951)) )
))
(declare-datatypes ((Context!6414 0))(
  ( (Context!6415 (exprs!3707 List!57951)) )
))
(declare-fun z!4183 () (Set Context!6414))

(declare-fun lt!2068468 () List!57950)

(declare-fun matchZipper!550 ((Set Context!6414) List!57950) Bool)

(assert (=> b!5000588 (= lt!2068455 (matchZipper!550 z!4183 lt!2068468))))

(declare-fun e!3124782 () Bool)

(assert (=> b!5000588 e!3124782))

(declare-fun res!2133748 () Bool)

(assert (=> b!5000588 (=> res!2133748 e!3124782)))

(declare-datatypes ((tuple2!62964 0))(
  ( (tuple2!62965 (_1!34785 List!57950) (_2!34785 List!57950)) )
))
(declare-fun lt!2068477 () tuple2!62964)

(declare-fun isEmpty!31298 (List!57950) Bool)

(assert (=> b!5000588 (= res!2133748 (isEmpty!31298 (_1!34785 lt!2068477)))))

(declare-fun r!12727 () Regex!13782)

(declare-fun findLongestMatchInner!1971 (Regex!13782 List!57950 Int List!57950 List!57950 Int) tuple2!62964)

(declare-fun size!38430 (List!57950) Int)

(assert (=> b!5000588 (= lt!2068477 (findLongestMatchInner!1971 r!12727 Nil!57826 (size!38430 Nil!57826) lt!2068459 lt!2068459 (size!38430 lt!2068459)))))

(declare-datatypes ((Unit!148985 0))(
  ( (Unit!148986) )
))
(declare-fun lt!2068460 () Unit!148985)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1924 (Regex!13782 List!57950) Unit!148985)

(assert (=> b!5000588 (= lt!2068460 (longestMatchIsAcceptedByMatchOrIsEmpty!1924 r!12727 lt!2068459))))

(declare-fun e!3124778 () Bool)

(assert (=> b!5000588 e!3124778))

(declare-fun res!2133751 () Bool)

(assert (=> b!5000588 (=> res!2133751 e!3124778)))

(declare-fun lt!2068470 () Int)

(assert (=> b!5000588 (= res!2133751 (= lt!2068470 0))))

(declare-fun lt!2068465 () Int)

(declare-fun lt!2068466 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!122 ((Set Context!6414) Int BalanceConc!30032 Int) Int)

(assert (=> b!5000588 (= lt!2068470 (findLongestMatchInnerZipperFastV2!122 z!4183 lt!2068465 totalInput!1012 lt!2068466))))

(declare-fun lt!2068474 () Unit!148985)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!41 ((Set Context!6414) Int BalanceConc!30032) Unit!148985)

(assert (=> b!5000588 (= lt!2068474 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!41 z!4183 lt!2068465 totalInput!1012))))

(declare-fun isPrefix!5335 (List!57950 List!57950) Bool)

(declare-fun take!641 (List!57950 Int) List!57950)

(assert (=> b!5000588 (isPrefix!5335 (take!641 lt!2068471 lt!2068465) lt!2068471)))

(declare-fun lt!2068462 () Unit!148985)

(declare-fun lemmaTakeIsPrefix!135 (List!57950 Int) Unit!148985)

(assert (=> b!5000588 (= lt!2068462 (lemmaTakeIsPrefix!135 lt!2068471 lt!2068465))))

(declare-fun lt!2068467 () tuple2!62964)

(declare-fun lt!2068476 () List!57950)

(assert (=> b!5000588 (isPrefix!5335 (_1!34785 lt!2068467) lt!2068476)))

(declare-fun lt!2068456 () Unit!148985)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3433 (List!57950 List!57950) Unit!148985)

(assert (=> b!5000588 (= lt!2068456 (lemmaConcatTwoListThenFirstIsPrefix!3433 (_1!34785 lt!2068467) (_2!34785 lt!2068467)))))

(declare-fun lt!2068457 () List!57950)

(assert (=> b!5000588 (isPrefix!5335 lt!2068468 lt!2068457)))

(declare-fun lt!2068464 () Unit!148985)

(declare-fun lt!2068475 () List!57950)

(assert (=> b!5000588 (= lt!2068464 (lemmaConcatTwoListThenFirstIsPrefix!3433 lt!2068468 lt!2068475))))

(declare-fun b!5000589 () Bool)

(declare-fun e!3124780 () Bool)

(declare-fun tp_is_empty!36561 () Bool)

(assert (=> b!5000589 (= e!3124780 tp_is_empty!36561)))

(declare-fun b!5000590 () Bool)

(declare-fun e!3124785 () Bool)

(declare-fun tp!1402673 () Bool)

(declare-fun inv!75949 (Conc!15301) Bool)

(assert (=> b!5000590 (= e!3124785 (and (inv!75949 (c!853395 input!5597)) tp!1402673))))

(declare-fun tp!1402668 () Bool)

(declare-fun setNonEmpty!28349 () Bool)

(declare-fun setElem!28349 () Context!6414)

(declare-fun e!3124777 () Bool)

(declare-fun inv!75950 (Context!6414) Bool)

(assert (=> setNonEmpty!28349 (= setRes!28349 (and tp!1402668 (inv!75950 setElem!28349) e!3124777))))

(declare-fun setRest!28349 () (Set Context!6414))

(assert (=> setNonEmpty!28349 (= z!4183 (set.union (set.insert setElem!28349 (as set.empty (Set Context!6414))) setRest!28349))))

(declare-fun b!5000591 () Bool)

(declare-fun e!3124781 () Bool)

(declare-fun tp!1402665 () Bool)

(assert (=> b!5000591 (= e!3124781 (and (inv!75949 (c!853395 totalInput!1012)) tp!1402665))))

(declare-fun b!5000592 () Bool)

(declare-fun tp!1402671 () Bool)

(assert (=> b!5000592 (= e!3124777 tp!1402671)))

(declare-fun b!5000593 () Bool)

(declare-fun e!3124774 () Bool)

(assert (=> b!5000593 (= e!3124774 e!3124779)))

(declare-fun res!2133758 () Bool)

(assert (=> b!5000593 (=> (not res!2133758) (not e!3124779))))

(declare-datatypes ((List!57952 0))(
  ( (Nil!57828) (Cons!57828 (h!64276 Context!6414) (t!370298 List!57952)) )
))
(declare-fun lt!2068469 () List!57952)

(declare-fun unfocusZipper!309 (List!57952) Regex!13782)

(assert (=> b!5000593 (= res!2133758 (= (unfocusZipper!309 lt!2068469) r!12727))))

(declare-fun toList!8067 ((Set Context!6414)) List!57952)

(assert (=> b!5000593 (= lt!2068469 (toList!8067 z!4183))))

(declare-fun b!5000595 () Bool)

(declare-fun tp!1402672 () Bool)

(declare-fun tp!1402669 () Bool)

(assert (=> b!5000595 (= e!3124780 (and tp!1402672 tp!1402669))))

(declare-fun b!5000596 () Bool)

(declare-fun e!3124783 () Bool)

(assert (=> b!5000596 (= e!3124783 (not (isEmpty!31298 (_1!34785 lt!2068467))))))

(declare-fun b!5000597 () Bool)

(declare-fun e!3124786 () Bool)

(assert (=> b!5000597 (= e!3124773 e!3124786)))

(declare-fun res!2133756 () Bool)

(assert (=> b!5000597 (=> (not res!2133756) (not e!3124786))))

(assert (=> b!5000597 (= res!2133756 (= lt!2068457 lt!2068459))))

(declare-fun ++!12628 (List!57950 List!57950) List!57950)

(assert (=> b!5000597 (= lt!2068457 (++!12628 lt!2068468 lt!2068475))))

(declare-datatypes ((tuple2!62966 0))(
  ( (tuple2!62967 (_1!34786 BalanceConc!30032) (_2!34786 BalanceConc!30032)) )
))
(declare-fun lt!2068461 () tuple2!62966)

(assert (=> b!5000597 (= lt!2068475 (list!18603 (_2!34786 lt!2068461)))))

(assert (=> b!5000597 (= lt!2068468 (list!18603 (_1!34786 lt!2068461)))))

(declare-fun findLongestMatch!1795 (Regex!13782 List!57950) tuple2!62964)

(assert (=> b!5000597 (= lt!2068467 (findLongestMatch!1795 r!12727 lt!2068459))))

(declare-fun size!38431 (BalanceConc!30032) Int)

(assert (=> b!5000597 (= lt!2068465 (- lt!2068466 (size!38431 input!5597)))))

(assert (=> b!5000597 (= lt!2068466 (size!38431 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!84 ((Set Context!6414) BalanceConc!30032 BalanceConc!30032) tuple2!62966)

(assert (=> b!5000597 (= lt!2068461 (findLongestMatchZipperFastV2!84 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5000598 () Bool)

(declare-fun e!3124776 () Bool)

(assert (=> b!5000598 (= e!3124775 e!3124776)))

(declare-fun res!2133757 () Bool)

(assert (=> b!5000598 (=> res!2133757 e!3124776)))

(assert (=> b!5000598 (= res!2133757 e!3124783)))

(declare-fun res!2133759 () Bool)

(assert (=> b!5000598 (=> (not res!2133759) (not e!3124783))))

(declare-fun lt!2068454 () Bool)

(assert (=> b!5000598 (= res!2133759 (not lt!2068454))))

(declare-fun matchR!6746 (Regex!13782 List!57950) Bool)

(assert (=> b!5000598 (= lt!2068454 (matchR!6746 r!12727 (_1!34785 lt!2068467)))))

(declare-fun b!5000599 () Bool)

(assert (=> b!5000599 (= e!3124782 (matchR!6746 r!12727 (_1!34785 lt!2068477)))))

(declare-fun b!5000600 () Bool)

(declare-fun tp!1402666 () Bool)

(assert (=> b!5000600 (= e!3124780 tp!1402666)))

(declare-fun b!5000601 () Bool)

(declare-fun tp!1402670 () Bool)

(declare-fun tp!1402667 () Bool)

(assert (=> b!5000601 (= e!3124780 (and tp!1402670 tp!1402667))))

(declare-fun b!5000602 () Bool)

(declare-fun drop!2445 (List!57950 Int) List!57950)

(assert (=> b!5000602 (= e!3124778 (matchZipper!550 z!4183 (take!641 (drop!2445 lt!2068471 lt!2068465) lt!2068470)))))

(declare-fun b!5000603 () Bool)

(declare-fun e!3124784 () Bool)

(assert (=> b!5000603 (= e!3124776 e!3124784)))

(declare-fun res!2133754 () Bool)

(assert (=> b!5000603 (=> res!2133754 e!3124784)))

(declare-fun lt!2068463 () Int)

(assert (=> b!5000603 (= res!2133754 (<= lt!2068463 (size!38431 (_1!34786 lt!2068461))))))

(assert (=> b!5000603 (= lt!2068463 (size!38430 (_1!34785 lt!2068467)))))

(assert (=> b!5000603 (= (matchR!6746 r!12727 lt!2068468) lt!2068455)))

(declare-fun lt!2068472 () Unit!148985)

(declare-fun theoremZipperRegexEquiv!154 ((Set Context!6414) List!57952 Regex!13782 List!57950) Unit!148985)

(assert (=> b!5000603 (= lt!2068472 (theoremZipperRegexEquiv!154 z!4183 lt!2068469 r!12727 lt!2068468))))

(assert (=> b!5000603 (= lt!2068454 (matchZipper!550 z!4183 (_1!34785 lt!2068467)))))

(declare-fun lt!2068458 () Unit!148985)

(assert (=> b!5000603 (= lt!2068458 (theoremZipperRegexEquiv!154 z!4183 lt!2068469 r!12727 (_1!34785 lt!2068467)))))

(declare-fun b!5000604 () Bool)

(declare-fun lt!2068473 () List!57950)

(assert (=> b!5000604 (= e!3124784 (or (not (= lt!2068473 lt!2068459)) (>= lt!2068463 0)))))

(declare-fun lt!2068453 () List!57950)

(assert (=> b!5000604 (= lt!2068453 (take!641 lt!2068473 lt!2068463))))

(assert (=> b!5000604 (= lt!2068473 (drop!2445 lt!2068471 lt!2068465))))

(declare-fun b!5000605 () Bool)

(declare-fun isEmpty!31299 (BalanceConc!30032) Bool)

(assert (=> b!5000605 (= e!3124787 (not (isEmpty!31299 (_1!34786 lt!2068461))))))

(declare-fun b!5000594 () Bool)

(assert (=> b!5000594 (= e!3124786 e!3124772)))

(declare-fun res!2133752 () Bool)

(assert (=> b!5000594 (=> (not res!2133752) (not e!3124772))))

(assert (=> b!5000594 (= res!2133752 (= lt!2068476 lt!2068459))))

(assert (=> b!5000594 (= lt!2068476 (++!12628 (_1!34785 lt!2068467) (_2!34785 lt!2068467)))))

(declare-fun res!2133755 () Bool)

(assert (=> start!528424 (=> (not res!2133755) (not e!3124774))))

(declare-fun validRegex!6079 (Regex!13782) Bool)

(assert (=> start!528424 (= res!2133755 (validRegex!6079 r!12727))))

(assert (=> start!528424 e!3124774))

(assert (=> start!528424 e!3124780))

(declare-fun inv!75951 (BalanceConc!30032) Bool)

(assert (=> start!528424 (and (inv!75951 input!5597) e!3124785)))

(declare-fun condSetEmpty!28349 () Bool)

(assert (=> start!528424 (= condSetEmpty!28349 (= z!4183 (as set.empty (Set Context!6414))))))

(assert (=> start!528424 setRes!28349))

(assert (=> start!528424 (and (inv!75951 totalInput!1012) e!3124781)))

(assert (= (and start!528424 res!2133755) b!5000593))

(assert (= (and b!5000593 res!2133758) b!5000587))

(assert (= (and b!5000587 res!2133753) b!5000597))

(assert (= (and b!5000597 res!2133756) b!5000594))

(assert (= (and b!5000594 res!2133752) b!5000588))

(assert (= (and b!5000588 (not res!2133751)) b!5000602))

(assert (= (and b!5000588 (not res!2133748)) b!5000599))

(assert (= (and b!5000588 res!2133750) b!5000605))

(assert (= (and b!5000588 (not res!2133749)) b!5000598))

(assert (= (and b!5000598 res!2133759) b!5000596))

(assert (= (and b!5000598 (not res!2133757)) b!5000603))

(assert (= (and b!5000603 (not res!2133754)) b!5000604))

(assert (= (and start!528424 (is-ElementMatch!13782 r!12727)) b!5000589))

(assert (= (and start!528424 (is-Concat!22575 r!12727)) b!5000601))

(assert (= (and start!528424 (is-Star!13782 r!12727)) b!5000600))

(assert (= (and start!528424 (is-Union!13782 r!12727)) b!5000595))

(assert (= start!528424 b!5000590))

(assert (= (and start!528424 condSetEmpty!28349) setIsEmpty!28349))

(assert (= (and start!528424 (not condSetEmpty!28349)) setNonEmpty!28349))

(assert (= setNonEmpty!28349 b!5000592))

(assert (= start!528424 b!5000591))

(declare-fun m!6034070 () Bool)

(assert (=> b!5000597 m!6034070))

(declare-fun m!6034072 () Bool)

(assert (=> b!5000597 m!6034072))

(declare-fun m!6034074 () Bool)

(assert (=> b!5000597 m!6034074))

(declare-fun m!6034076 () Bool)

(assert (=> b!5000597 m!6034076))

(declare-fun m!6034078 () Bool)

(assert (=> b!5000597 m!6034078))

(declare-fun m!6034080 () Bool)

(assert (=> b!5000597 m!6034080))

(declare-fun m!6034082 () Bool)

(assert (=> b!5000597 m!6034082))

(declare-fun m!6034084 () Bool)

(assert (=> b!5000603 m!6034084))

(declare-fun m!6034086 () Bool)

(assert (=> b!5000603 m!6034086))

(declare-fun m!6034088 () Bool)

(assert (=> b!5000603 m!6034088))

(declare-fun m!6034090 () Bool)

(assert (=> b!5000603 m!6034090))

(declare-fun m!6034092 () Bool)

(assert (=> b!5000603 m!6034092))

(declare-fun m!6034094 () Bool)

(assert (=> b!5000603 m!6034094))

(declare-fun m!6034096 () Bool)

(assert (=> b!5000593 m!6034096))

(declare-fun m!6034098 () Bool)

(assert (=> b!5000593 m!6034098))

(declare-fun m!6034100 () Bool)

(assert (=> b!5000587 m!6034100))

(declare-fun m!6034102 () Bool)

(assert (=> b!5000587 m!6034102))

(declare-fun m!6034104 () Bool)

(assert (=> b!5000587 m!6034104))

(declare-fun m!6034106 () Bool)

(assert (=> b!5000590 m!6034106))

(declare-fun m!6034108 () Bool)

(assert (=> b!5000599 m!6034108))

(declare-fun m!6034110 () Bool)

(assert (=> b!5000588 m!6034110))

(declare-fun m!6034112 () Bool)

(assert (=> b!5000588 m!6034112))

(declare-fun m!6034114 () Bool)

(assert (=> b!5000588 m!6034114))

(assert (=> b!5000588 m!6034110))

(declare-fun m!6034116 () Bool)

(assert (=> b!5000588 m!6034116))

(declare-fun m!6034118 () Bool)

(assert (=> b!5000588 m!6034118))

(declare-fun m!6034120 () Bool)

(assert (=> b!5000588 m!6034120))

(declare-fun m!6034122 () Bool)

(assert (=> b!5000588 m!6034122))

(declare-fun m!6034124 () Bool)

(assert (=> b!5000588 m!6034124))

(declare-fun m!6034126 () Bool)

(assert (=> b!5000588 m!6034126))

(declare-fun m!6034128 () Bool)

(assert (=> b!5000588 m!6034128))

(declare-fun m!6034130 () Bool)

(assert (=> b!5000588 m!6034130))

(assert (=> b!5000588 m!6034112))

(declare-fun m!6034132 () Bool)

(assert (=> b!5000588 m!6034132))

(declare-fun m!6034134 () Bool)

(assert (=> b!5000588 m!6034134))

(declare-fun m!6034136 () Bool)

(assert (=> b!5000588 m!6034136))

(assert (=> b!5000588 m!6034132))

(declare-fun m!6034138 () Bool)

(assert (=> b!5000588 m!6034138))

(declare-fun m!6034140 () Bool)

(assert (=> b!5000594 m!6034140))

(declare-fun m!6034142 () Bool)

(assert (=> b!5000604 m!6034142))

(declare-fun m!6034144 () Bool)

(assert (=> b!5000604 m!6034144))

(declare-fun m!6034146 () Bool)

(assert (=> setNonEmpty!28349 m!6034146))

(declare-fun m!6034148 () Bool)

(assert (=> start!528424 m!6034148))

(declare-fun m!6034150 () Bool)

(assert (=> start!528424 m!6034150))

(declare-fun m!6034152 () Bool)

(assert (=> start!528424 m!6034152))

(declare-fun m!6034154 () Bool)

(assert (=> b!5000596 m!6034154))

(declare-fun m!6034156 () Bool)

(assert (=> b!5000591 m!6034156))

(declare-fun m!6034158 () Bool)

(assert (=> b!5000605 m!6034158))

(assert (=> b!5000602 m!6034144))

(assert (=> b!5000602 m!6034144))

(declare-fun m!6034160 () Bool)

(assert (=> b!5000602 m!6034160))

(assert (=> b!5000602 m!6034160))

(declare-fun m!6034162 () Bool)

(assert (=> b!5000602 m!6034162))

(declare-fun m!6034164 () Bool)

(assert (=> b!5000598 m!6034164))

(push 1)

(assert (not b!5000588))

(assert (not b!5000587))

(assert (not b!5000591))

(assert (not b!5000590))

(assert (not b!5000592))

(assert (not b!5000600))

(assert (not start!528424))

(assert (not setNonEmpty!28349))

(assert (not b!5000593))

(assert (not b!5000595))

(assert (not b!5000594))

(assert (not b!5000599))

(assert (not b!5000597))

(assert (not b!5000602))

(assert (not b!5000605))

(assert (not b!5000598))

(assert tp_is_empty!36561)

(assert (not b!5000604))

(assert (not b!5000596))

(assert (not b!5000601))

(assert (not b!5000603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1609792 () Bool)

(declare-fun lt!2068569 () tuple2!62964)

(assert (=> d!1609792 (= (++!12628 (_1!34785 lt!2068569) (_2!34785 lt!2068569)) lt!2068459)))

(declare-fun sizeTr!391 (List!57950 Int) Int)

(assert (=> d!1609792 (= lt!2068569 (findLongestMatchInner!1971 r!12727 Nil!57826 0 lt!2068459 lt!2068459 (sizeTr!391 lt!2068459 0)))))

(declare-fun lt!2068570 () Unit!148985)

(declare-fun lt!2068571 () Unit!148985)

(assert (=> d!1609792 (= lt!2068570 lt!2068571)))

(declare-fun lt!2068574 () List!57950)

(declare-fun lt!2068576 () Int)

(assert (=> d!1609792 (= (sizeTr!391 lt!2068574 lt!2068576) (+ (size!38430 lt!2068574) lt!2068576))))

(declare-fun lemmaSizeTrEqualsSize!390 (List!57950 Int) Unit!148985)

(assert (=> d!1609792 (= lt!2068571 (lemmaSizeTrEqualsSize!390 lt!2068574 lt!2068576))))

(assert (=> d!1609792 (= lt!2068576 0)))

(assert (=> d!1609792 (= lt!2068574 Nil!57826)))

(declare-fun lt!2068572 () Unit!148985)

(declare-fun lt!2068575 () Unit!148985)

(assert (=> d!1609792 (= lt!2068572 lt!2068575)))

(declare-fun lt!2068573 () Int)

(assert (=> d!1609792 (= (sizeTr!391 lt!2068459 lt!2068573) (+ (size!38430 lt!2068459) lt!2068573))))

(assert (=> d!1609792 (= lt!2068575 (lemmaSizeTrEqualsSize!390 lt!2068459 lt!2068573))))

(assert (=> d!1609792 (= lt!2068573 0)))

(assert (=> d!1609792 (validRegex!6079 r!12727)))

(assert (=> d!1609792 (= (findLongestMatch!1795 r!12727 lt!2068459) lt!2068569)))

(declare-fun bs!1185737 () Bool)

(assert (= bs!1185737 d!1609792))

(declare-fun m!6034262 () Bool)

(assert (=> bs!1185737 m!6034262))

(declare-fun m!6034264 () Bool)

(assert (=> bs!1185737 m!6034264))

(declare-fun m!6034266 () Bool)

(assert (=> bs!1185737 m!6034266))

(assert (=> bs!1185737 m!6034148))

(declare-fun m!6034268 () Bool)

(assert (=> bs!1185737 m!6034268))

(declare-fun m!6034270 () Bool)

(assert (=> bs!1185737 m!6034270))

(declare-fun m!6034272 () Bool)

(assert (=> bs!1185737 m!6034272))

(declare-fun m!6034274 () Bool)

(assert (=> bs!1185737 m!6034274))

(assert (=> bs!1185737 m!6034268))

(declare-fun m!6034276 () Bool)

(assert (=> bs!1185737 m!6034276))

(assert (=> bs!1185737 m!6034112))

(assert (=> b!5000597 d!1609792))

(declare-fun d!1609794 () Bool)

(declare-fun lt!2068579 () Int)

(assert (=> d!1609794 (= lt!2068579 (size!38430 (list!18603 input!5597)))))

(declare-fun size!38434 (Conc!15301) Int)

(assert (=> d!1609794 (= lt!2068579 (size!38434 (c!853395 input!5597)))))

(assert (=> d!1609794 (= (size!38431 input!5597) lt!2068579)))

(declare-fun bs!1185738 () Bool)

(assert (= bs!1185738 d!1609794))

(assert (=> bs!1185738 m!6034104))

(assert (=> bs!1185738 m!6034104))

(declare-fun m!6034278 () Bool)

(assert (=> bs!1185738 m!6034278))

(declare-fun m!6034280 () Bool)

(assert (=> bs!1185738 m!6034280))

(assert (=> b!5000597 d!1609794))

(declare-fun d!1609796 () Bool)

(declare-fun lt!2068580 () Int)

(assert (=> d!1609796 (= lt!2068580 (size!38430 (list!18603 totalInput!1012)))))

(assert (=> d!1609796 (= lt!2068580 (size!38434 (c!853395 totalInput!1012)))))

(assert (=> d!1609796 (= (size!38431 totalInput!1012) lt!2068580)))

(declare-fun bs!1185739 () Bool)

(assert (= bs!1185739 d!1609796))

(assert (=> bs!1185739 m!6034102))

(assert (=> bs!1185739 m!6034102))

(declare-fun m!6034282 () Bool)

(assert (=> bs!1185739 m!6034282))

(declare-fun m!6034284 () Bool)

(assert (=> bs!1185739 m!6034284))

(assert (=> b!5000597 d!1609796))

(declare-fun d!1609798 () Bool)

(declare-fun lt!2068587 () tuple2!62966)

(assert (=> d!1609798 (= (++!12628 (list!18603 (_1!34786 lt!2068587)) (list!18603 (_2!34786 lt!2068587))) (list!18603 input!5597))))

(declare-fun lt!2068588 () Int)

(declare-fun splitAt!440 (BalanceConc!30032 Int) tuple2!62966)

(assert (=> d!1609798 (= lt!2068587 (splitAt!440 input!5597 (findLongestMatchInnerZipperFastV2!122 z!4183 (- lt!2068588 (size!38431 input!5597)) totalInput!1012 lt!2068588)))))

(assert (=> d!1609798 (= lt!2068588 (size!38431 totalInput!1012))))

(assert (=> d!1609798 (isSuffix!1348 (list!18603 input!5597) (list!18603 totalInput!1012))))

(assert (=> d!1609798 (= (findLongestMatchZipperFastV2!84 z!4183 input!5597 totalInput!1012) lt!2068587)))

(declare-fun bs!1185740 () Bool)

(assert (= bs!1185740 d!1609798))

(declare-fun m!6034286 () Bool)

(assert (=> bs!1185740 m!6034286))

(assert (=> bs!1185740 m!6034074))

(assert (=> bs!1185740 m!6034102))

(assert (=> bs!1185740 m!6034104))

(assert (=> bs!1185740 m!6034102))

(declare-fun m!6034288 () Bool)

(assert (=> bs!1185740 m!6034288))

(assert (=> bs!1185740 m!6034078))

(declare-fun m!6034290 () Bool)

(assert (=> bs!1185740 m!6034290))

(declare-fun m!6034292 () Bool)

(assert (=> bs!1185740 m!6034292))

(assert (=> bs!1185740 m!6034290))

(declare-fun m!6034294 () Bool)

(assert (=> bs!1185740 m!6034294))

(assert (=> bs!1185740 m!6034294))

(assert (=> bs!1185740 m!6034286))

(declare-fun m!6034296 () Bool)

(assert (=> bs!1185740 m!6034296))

(assert (=> bs!1185740 m!6034104))

(assert (=> b!5000597 d!1609798))

(declare-fun d!1609802 () Bool)

(declare-fun e!3124848 () Bool)

(assert (=> d!1609802 e!3124848))

(declare-fun res!2133803 () Bool)

(assert (=> d!1609802 (=> (not res!2133803) (not e!3124848))))

(declare-fun lt!2068591 () List!57950)

(declare-fun content!10235 (List!57950) (Set C!27814))

(assert (=> d!1609802 (= res!2133803 (= (content!10235 lt!2068591) (set.union (content!10235 lt!2068468) (content!10235 lt!2068475))))))

(declare-fun e!3124849 () List!57950)

(assert (=> d!1609802 (= lt!2068591 e!3124849)))

(declare-fun c!853407 () Bool)

(assert (=> d!1609802 (= c!853407 (is-Nil!57826 lt!2068468))))

(assert (=> d!1609802 (= (++!12628 lt!2068468 lt!2068475) lt!2068591)))

(declare-fun b!5000688 () Bool)

(assert (=> b!5000688 (= e!3124848 (or (not (= lt!2068475 Nil!57826)) (= lt!2068591 lt!2068468)))))

(declare-fun b!5000686 () Bool)

(assert (=> b!5000686 (= e!3124849 (Cons!57826 (h!64274 lt!2068468) (++!12628 (t!370296 lt!2068468) lt!2068475)))))

(declare-fun b!5000685 () Bool)

(assert (=> b!5000685 (= e!3124849 lt!2068475)))

(declare-fun b!5000687 () Bool)

(declare-fun res!2133802 () Bool)

(assert (=> b!5000687 (=> (not res!2133802) (not e!3124848))))

(assert (=> b!5000687 (= res!2133802 (= (size!38430 lt!2068591) (+ (size!38430 lt!2068468) (size!38430 lt!2068475))))))

(assert (= (and d!1609802 c!853407) b!5000685))

(assert (= (and d!1609802 (not c!853407)) b!5000686))

(assert (= (and d!1609802 res!2133803) b!5000687))

(assert (= (and b!5000687 res!2133802) b!5000688))

(declare-fun m!6034298 () Bool)

(assert (=> d!1609802 m!6034298))

(declare-fun m!6034300 () Bool)

(assert (=> d!1609802 m!6034300))

(declare-fun m!6034302 () Bool)

(assert (=> d!1609802 m!6034302))

(declare-fun m!6034304 () Bool)

(assert (=> b!5000686 m!6034304))

(declare-fun m!6034306 () Bool)

(assert (=> b!5000687 m!6034306))

(declare-fun m!6034308 () Bool)

(assert (=> b!5000687 m!6034308))

(declare-fun m!6034310 () Bool)

(assert (=> b!5000687 m!6034310))

(assert (=> b!5000597 d!1609802))

(declare-fun d!1609804 () Bool)

(declare-fun list!18605 (Conc!15301) List!57950)

(assert (=> d!1609804 (= (list!18603 (_1!34786 lt!2068461)) (list!18605 (c!853395 (_1!34786 lt!2068461))))))

(declare-fun bs!1185741 () Bool)

(assert (= bs!1185741 d!1609804))

(declare-fun m!6034318 () Bool)

(assert (=> bs!1185741 m!6034318))

(assert (=> b!5000597 d!1609804))

(declare-fun d!1609806 () Bool)

(assert (=> d!1609806 (= (list!18603 (_2!34786 lt!2068461)) (list!18605 (c!853395 (_2!34786 lt!2068461))))))

(declare-fun bs!1185742 () Bool)

(assert (= bs!1185742 d!1609806))

(declare-fun m!6034324 () Bool)

(assert (=> bs!1185742 m!6034324))

(assert (=> b!5000597 d!1609806))

(declare-fun d!1609808 () Bool)

(declare-fun e!3124856 () Bool)

(assert (=> d!1609808 e!3124856))

(declare-fun res!2133807 () Bool)

(assert (=> d!1609808 (=> res!2133807 e!3124856)))

(declare-fun lt!2068595 () Bool)

(assert (=> d!1609808 (= res!2133807 (not lt!2068595))))

(assert (=> d!1609808 (= lt!2068595 (= lt!2068459 (drop!2445 lt!2068471 (- (size!38430 lt!2068471) (size!38430 lt!2068459)))))))

(assert (=> d!1609808 (= (isSuffix!1348 lt!2068459 lt!2068471) lt!2068595)))

(declare-fun b!5000698 () Bool)

(assert (=> b!5000698 (= e!3124856 (>= (size!38430 lt!2068471) (size!38430 lt!2068459)))))

(assert (= (and d!1609808 (not res!2133807)) b!5000698))

(declare-fun m!6034326 () Bool)

(assert (=> d!1609808 m!6034326))

(assert (=> d!1609808 m!6034112))

(declare-fun m!6034328 () Bool)

(assert (=> d!1609808 m!6034328))

(assert (=> b!5000698 m!6034326))

(assert (=> b!5000698 m!6034112))

(assert (=> b!5000587 d!1609808))

(declare-fun d!1609812 () Bool)

(assert (=> d!1609812 (= (list!18603 totalInput!1012) (list!18605 (c!853395 totalInput!1012)))))

(declare-fun bs!1185743 () Bool)

(assert (= bs!1185743 d!1609812))

(declare-fun m!6034330 () Bool)

(assert (=> bs!1185743 m!6034330))

(assert (=> b!5000587 d!1609812))

(declare-fun d!1609814 () Bool)

(assert (=> d!1609814 (= (list!18603 input!5597) (list!18605 (c!853395 input!5597)))))

(declare-fun bs!1185744 () Bool)

(assert (= bs!1185744 d!1609814))

(declare-fun m!6034332 () Bool)

(assert (=> bs!1185744 m!6034332))

(assert (=> b!5000587 d!1609814))

(declare-fun d!1609816 () Bool)

(assert (=> d!1609816 (= (isEmpty!31298 (_1!34785 lt!2068467)) (is-Nil!57826 (_1!34785 lt!2068467)))))

(assert (=> b!5000596 d!1609816))

(declare-fun d!1609818 () Bool)

(declare-fun lt!2068598 () Regex!13782)

(assert (=> d!1609818 (validRegex!6079 lt!2068598)))

(declare-fun generalisedUnion!574 (List!57951) Regex!13782)

(declare-fun unfocusZipperList!87 (List!57952) List!57951)

(assert (=> d!1609818 (= lt!2068598 (generalisedUnion!574 (unfocusZipperList!87 lt!2068469)))))

(assert (=> d!1609818 (= (unfocusZipper!309 lt!2068469) lt!2068598)))

(declare-fun bs!1185745 () Bool)

(assert (= bs!1185745 d!1609818))

(declare-fun m!6034334 () Bool)

(assert (=> bs!1185745 m!6034334))

(declare-fun m!6034336 () Bool)

(assert (=> bs!1185745 m!6034336))

(assert (=> bs!1185745 m!6034336))

(declare-fun m!6034338 () Bool)

(assert (=> bs!1185745 m!6034338))

(assert (=> b!5000593 d!1609818))

(declare-fun d!1609820 () Bool)

(declare-fun e!3124861 () Bool)

(assert (=> d!1609820 e!3124861))

(declare-fun res!2133810 () Bool)

(assert (=> d!1609820 (=> (not res!2133810) (not e!3124861))))

(declare-fun lt!2068603 () List!57952)

(declare-fun noDuplicate!1023 (List!57952) Bool)

(assert (=> d!1609820 (= res!2133810 (noDuplicate!1023 lt!2068603))))

(declare-fun choose!36961 ((Set Context!6414)) List!57952)

(assert (=> d!1609820 (= lt!2068603 (choose!36961 z!4183))))

(assert (=> d!1609820 (= (toList!8067 z!4183) lt!2068603)))

(declare-fun b!5000705 () Bool)

(declare-fun content!10236 (List!57952) (Set Context!6414))

(assert (=> b!5000705 (= e!3124861 (= (content!10236 lt!2068603) z!4183))))

(assert (= (and d!1609820 res!2133810) b!5000705))

(declare-fun m!6034340 () Bool)

(assert (=> d!1609820 m!6034340))

(declare-fun m!6034342 () Bool)

(assert (=> d!1609820 m!6034342))

(declare-fun m!6034344 () Bool)

(assert (=> b!5000705 m!6034344))

(assert (=> b!5000593 d!1609820))

(declare-fun d!1609822 () Bool)

(declare-fun lt!2068606 () Int)

(assert (=> d!1609822 (>= lt!2068606 0)))

(declare-fun e!3124872 () Int)

(assert (=> d!1609822 (= lt!2068606 e!3124872)))

(declare-fun c!853421 () Bool)

(assert (=> d!1609822 (= c!853421 (is-Nil!57826 (_1!34785 lt!2068467)))))

(assert (=> d!1609822 (= (size!38430 (_1!34785 lt!2068467)) lt!2068606)))

(declare-fun b!5000724 () Bool)

(assert (=> b!5000724 (= e!3124872 0)))

(declare-fun b!5000725 () Bool)

(assert (=> b!5000725 (= e!3124872 (+ 1 (size!38430 (t!370296 (_1!34785 lt!2068467)))))))

(assert (= (and d!1609822 c!853421) b!5000724))

(assert (= (and d!1609822 (not c!853421)) b!5000725))

(declare-fun m!6034346 () Bool)

(assert (=> b!5000725 m!6034346))

(assert (=> b!5000603 d!1609822))

(declare-fun d!1609824 () Bool)

(declare-fun lt!2068607 () Int)

(assert (=> d!1609824 (= lt!2068607 (size!38430 (list!18603 (_1!34786 lt!2068461))))))

(assert (=> d!1609824 (= lt!2068607 (size!38434 (c!853395 (_1!34786 lt!2068461))))))

(assert (=> d!1609824 (= (size!38431 (_1!34786 lt!2068461)) lt!2068607)))

(declare-fun bs!1185746 () Bool)

(assert (= bs!1185746 d!1609824))

(assert (=> bs!1185746 m!6034076))

(assert (=> bs!1185746 m!6034076))

(declare-fun m!6034348 () Bool)

(assert (=> bs!1185746 m!6034348))

(declare-fun m!6034350 () Bool)

(assert (=> bs!1185746 m!6034350))

(assert (=> b!5000603 d!1609824))

(declare-fun d!1609826 () Bool)

(assert (=> d!1609826 (= (matchR!6746 r!12727 lt!2068468) (matchZipper!550 z!4183 lt!2068468))))

(declare-fun lt!2068610 () Unit!148985)

(declare-fun choose!36962 ((Set Context!6414) List!57952 Regex!13782 List!57950) Unit!148985)

(assert (=> d!1609826 (= lt!2068610 (choose!36962 z!4183 lt!2068469 r!12727 lt!2068468))))

(assert (=> d!1609826 (validRegex!6079 r!12727)))

(assert (=> d!1609826 (= (theoremZipperRegexEquiv!154 z!4183 lt!2068469 r!12727 lt!2068468) lt!2068610)))

(declare-fun bs!1185747 () Bool)

(assert (= bs!1185747 d!1609826))

(assert (=> bs!1185747 m!6034090))

(assert (=> bs!1185747 m!6034120))

(declare-fun m!6034352 () Bool)

(assert (=> bs!1185747 m!6034352))

(assert (=> bs!1185747 m!6034148))

(assert (=> b!5000603 d!1609826))

(declare-fun b!5000766 () Bool)

(declare-fun res!2133839 () Bool)

(declare-fun e!3124900 () Bool)

(assert (=> b!5000766 (=> (not res!2133839) (not e!3124900))))

(declare-fun tail!9857 (List!57950) List!57950)

(assert (=> b!5000766 (= res!2133839 (isEmpty!31298 (tail!9857 lt!2068468)))))

(declare-fun d!1609828 () Bool)

(declare-fun e!3124901 () Bool)

(assert (=> d!1609828 e!3124901))

(declare-fun c!853432 () Bool)

(assert (=> d!1609828 (= c!853432 (is-EmptyExpr!13782 r!12727))))

(declare-fun lt!2068617 () Bool)

(declare-fun e!3124899 () Bool)

(assert (=> d!1609828 (= lt!2068617 e!3124899)))

(declare-fun c!853434 () Bool)

(assert (=> d!1609828 (= c!853434 (isEmpty!31298 lt!2068468))))

(assert (=> d!1609828 (validRegex!6079 r!12727)))

(assert (=> d!1609828 (= (matchR!6746 r!12727 lt!2068468) lt!2068617)))

(declare-fun bm!348986 () Bool)

(declare-fun call!348991 () Bool)

(assert (=> bm!348986 (= call!348991 (isEmpty!31298 lt!2068468))))

(declare-fun b!5000767 () Bool)

(declare-fun derivativeStep!3970 (Regex!13782 C!27814) Regex!13782)

(declare-fun head!10724 (List!57950) C!27814)

(assert (=> b!5000767 (= e!3124899 (matchR!6746 (derivativeStep!3970 r!12727 (head!10724 lt!2068468)) (tail!9857 lt!2068468)))))

(declare-fun b!5000768 () Bool)

(declare-fun nullable!4680 (Regex!13782) Bool)

(assert (=> b!5000768 (= e!3124899 (nullable!4680 r!12727))))

(declare-fun b!5000769 () Bool)

(assert (=> b!5000769 (= e!3124901 (= lt!2068617 call!348991))))

(declare-fun b!5000770 () Bool)

(declare-fun e!3124897 () Bool)

(assert (=> b!5000770 (= e!3124897 (not lt!2068617))))

(declare-fun b!5000771 () Bool)

(declare-fun res!2133838 () Bool)

(declare-fun e!3124896 () Bool)

(assert (=> b!5000771 (=> res!2133838 e!3124896)))

(assert (=> b!5000771 (= res!2133838 (not (is-ElementMatch!13782 r!12727)))))

(assert (=> b!5000771 (= e!3124897 e!3124896)))

(declare-fun b!5000772 () Bool)

(assert (=> b!5000772 (= e!3124901 e!3124897)))

(declare-fun c!853433 () Bool)

(assert (=> b!5000772 (= c!853433 (is-EmptyLang!13782 r!12727))))

(declare-fun b!5000773 () Bool)

(assert (=> b!5000773 (= e!3124900 (= (head!10724 lt!2068468) (c!853396 r!12727)))))

(declare-fun b!5000774 () Bool)

(declare-fun e!3124898 () Bool)

(declare-fun e!3124895 () Bool)

(assert (=> b!5000774 (= e!3124898 e!3124895)))

(declare-fun res!2133834 () Bool)

(assert (=> b!5000774 (=> res!2133834 e!3124895)))

(assert (=> b!5000774 (= res!2133834 call!348991)))

(declare-fun b!5000775 () Bool)

(declare-fun res!2133833 () Bool)

(assert (=> b!5000775 (=> res!2133833 e!3124895)))

(assert (=> b!5000775 (= res!2133833 (not (isEmpty!31298 (tail!9857 lt!2068468))))))

(declare-fun b!5000776 () Bool)

(assert (=> b!5000776 (= e!3124896 e!3124898)))

(declare-fun res!2133836 () Bool)

(assert (=> b!5000776 (=> (not res!2133836) (not e!3124898))))

(assert (=> b!5000776 (= res!2133836 (not lt!2068617))))

(declare-fun b!5000777 () Bool)

(declare-fun res!2133835 () Bool)

(assert (=> b!5000777 (=> res!2133835 e!3124896)))

(assert (=> b!5000777 (= res!2133835 e!3124900)))

(declare-fun res!2133837 () Bool)

(assert (=> b!5000777 (=> (not res!2133837) (not e!3124900))))

(assert (=> b!5000777 (= res!2133837 lt!2068617)))

(declare-fun b!5000778 () Bool)

(assert (=> b!5000778 (= e!3124895 (not (= (head!10724 lt!2068468) (c!853396 r!12727))))))

(declare-fun b!5000779 () Bool)

(declare-fun res!2133840 () Bool)

(assert (=> b!5000779 (=> (not res!2133840) (not e!3124900))))

(assert (=> b!5000779 (= res!2133840 (not call!348991))))

(assert (= (and d!1609828 c!853434) b!5000768))

(assert (= (and d!1609828 (not c!853434)) b!5000767))

(assert (= (and d!1609828 c!853432) b!5000769))

(assert (= (and d!1609828 (not c!853432)) b!5000772))

(assert (= (and b!5000772 c!853433) b!5000770))

(assert (= (and b!5000772 (not c!853433)) b!5000771))

(assert (= (and b!5000771 (not res!2133838)) b!5000777))

(assert (= (and b!5000777 res!2133837) b!5000779))

(assert (= (and b!5000779 res!2133840) b!5000766))

(assert (= (and b!5000766 res!2133839) b!5000773))

(assert (= (and b!5000777 (not res!2133835)) b!5000776))

(assert (= (and b!5000776 res!2133836) b!5000774))

(assert (= (and b!5000774 (not res!2133834)) b!5000775))

(assert (= (and b!5000775 (not res!2133833)) b!5000778))

(assert (= (or b!5000769 b!5000774 b!5000779) bm!348986))

(declare-fun m!6034370 () Bool)

(assert (=> bm!348986 m!6034370))

(declare-fun m!6034372 () Bool)

(assert (=> b!5000767 m!6034372))

(assert (=> b!5000767 m!6034372))

(declare-fun m!6034374 () Bool)

(assert (=> b!5000767 m!6034374))

(declare-fun m!6034376 () Bool)

(assert (=> b!5000767 m!6034376))

(assert (=> b!5000767 m!6034374))

(assert (=> b!5000767 m!6034376))

(declare-fun m!6034378 () Bool)

(assert (=> b!5000767 m!6034378))

(assert (=> b!5000775 m!6034376))

(assert (=> b!5000775 m!6034376))

(declare-fun m!6034380 () Bool)

(assert (=> b!5000775 m!6034380))

(assert (=> d!1609828 m!6034370))

(assert (=> d!1609828 m!6034148))

(assert (=> b!5000773 m!6034372))

(assert (=> b!5000766 m!6034376))

(assert (=> b!5000766 m!6034376))

(assert (=> b!5000766 m!6034380))

(assert (=> b!5000778 m!6034372))

(declare-fun m!6034382 () Bool)

(assert (=> b!5000768 m!6034382))

(assert (=> b!5000603 d!1609828))

(declare-fun d!1609838 () Bool)

(declare-fun c!853439 () Bool)

(assert (=> d!1609838 (= c!853439 (isEmpty!31298 (_1!34785 lt!2068467)))))

(declare-fun e!3124908 () Bool)

(assert (=> d!1609838 (= (matchZipper!550 z!4183 (_1!34785 lt!2068467)) e!3124908)))

(declare-fun b!5000790 () Bool)

(declare-fun nullableZipper!875 ((Set Context!6414)) Bool)

(assert (=> b!5000790 (= e!3124908 (nullableZipper!875 z!4183))))

(declare-fun b!5000791 () Bool)

(declare-fun derivationStepZipper!624 ((Set Context!6414) C!27814) (Set Context!6414))

(assert (=> b!5000791 (= e!3124908 (matchZipper!550 (derivationStepZipper!624 z!4183 (head!10724 (_1!34785 lt!2068467))) (tail!9857 (_1!34785 lt!2068467))))))

(assert (= (and d!1609838 c!853439) b!5000790))

(assert (= (and d!1609838 (not c!853439)) b!5000791))

(assert (=> d!1609838 m!6034154))

(declare-fun m!6034384 () Bool)

(assert (=> b!5000790 m!6034384))

(declare-fun m!6034386 () Bool)

(assert (=> b!5000791 m!6034386))

(assert (=> b!5000791 m!6034386))

(declare-fun m!6034388 () Bool)

(assert (=> b!5000791 m!6034388))

(declare-fun m!6034390 () Bool)

(assert (=> b!5000791 m!6034390))

(assert (=> b!5000791 m!6034388))

(assert (=> b!5000791 m!6034390))

(declare-fun m!6034392 () Bool)

(assert (=> b!5000791 m!6034392))

(assert (=> b!5000603 d!1609838))

(declare-fun d!1609840 () Bool)

(assert (=> d!1609840 (= (matchR!6746 r!12727 (_1!34785 lt!2068467)) (matchZipper!550 z!4183 (_1!34785 lt!2068467)))))

(declare-fun lt!2068618 () Unit!148985)

(assert (=> d!1609840 (= lt!2068618 (choose!36962 z!4183 lt!2068469 r!12727 (_1!34785 lt!2068467)))))

(assert (=> d!1609840 (validRegex!6079 r!12727)))

(assert (=> d!1609840 (= (theoremZipperRegexEquiv!154 z!4183 lt!2068469 r!12727 (_1!34785 lt!2068467)) lt!2068618)))

(declare-fun bs!1185750 () Bool)

(assert (= bs!1185750 d!1609840))

(assert (=> bs!1185750 m!6034164))

(assert (=> bs!1185750 m!6034092))

(declare-fun m!6034394 () Bool)

(assert (=> bs!1185750 m!6034394))

(assert (=> bs!1185750 m!6034148))

(assert (=> b!5000603 d!1609840))

(declare-fun d!1609842 () Bool)

(declare-fun lt!2068621 () Bool)

(assert (=> d!1609842 (= lt!2068621 (isEmpty!31298 (list!18603 (_1!34786 lt!2068461))))))

(declare-fun isEmpty!31302 (Conc!15301) Bool)

(assert (=> d!1609842 (= lt!2068621 (isEmpty!31302 (c!853395 (_1!34786 lt!2068461))))))

(assert (=> d!1609842 (= (isEmpty!31299 (_1!34786 lt!2068461)) lt!2068621)))

(declare-fun bs!1185751 () Bool)

(assert (= bs!1185751 d!1609842))

(assert (=> bs!1185751 m!6034076))

(assert (=> bs!1185751 m!6034076))

(declare-fun m!6034400 () Bool)

(assert (=> bs!1185751 m!6034400))

(declare-fun m!6034402 () Bool)

(assert (=> bs!1185751 m!6034402))

(assert (=> b!5000605 d!1609842))

(declare-fun d!1609846 () Bool)

(declare-fun e!3124911 () Bool)

(assert (=> d!1609846 e!3124911))

(declare-fun res!2133845 () Bool)

(assert (=> d!1609846 (=> (not res!2133845) (not e!3124911))))

(declare-fun lt!2068622 () List!57950)

(assert (=> d!1609846 (= res!2133845 (= (content!10235 lt!2068622) (set.union (content!10235 (_1!34785 lt!2068467)) (content!10235 (_2!34785 lt!2068467)))))))

(declare-fun e!3124912 () List!57950)

(assert (=> d!1609846 (= lt!2068622 e!3124912)))

(declare-fun c!853441 () Bool)

(assert (=> d!1609846 (= c!853441 (is-Nil!57826 (_1!34785 lt!2068467)))))

(assert (=> d!1609846 (= (++!12628 (_1!34785 lt!2068467) (_2!34785 lt!2068467)) lt!2068622)))

(declare-fun b!5000798 () Bool)

(assert (=> b!5000798 (= e!3124911 (or (not (= (_2!34785 lt!2068467) Nil!57826)) (= lt!2068622 (_1!34785 lt!2068467))))))

(declare-fun b!5000796 () Bool)

(assert (=> b!5000796 (= e!3124912 (Cons!57826 (h!64274 (_1!34785 lt!2068467)) (++!12628 (t!370296 (_1!34785 lt!2068467)) (_2!34785 lt!2068467))))))

(declare-fun b!5000795 () Bool)

(assert (=> b!5000795 (= e!3124912 (_2!34785 lt!2068467))))

(declare-fun b!5000797 () Bool)

(declare-fun res!2133844 () Bool)

(assert (=> b!5000797 (=> (not res!2133844) (not e!3124911))))

(assert (=> b!5000797 (= res!2133844 (= (size!38430 lt!2068622) (+ (size!38430 (_1!34785 lt!2068467)) (size!38430 (_2!34785 lt!2068467)))))))

(assert (= (and d!1609846 c!853441) b!5000795))

(assert (= (and d!1609846 (not c!853441)) b!5000796))

(assert (= (and d!1609846 res!2133845) b!5000797))

(assert (= (and b!5000797 res!2133844) b!5000798))

(declare-fun m!6034404 () Bool)

(assert (=> d!1609846 m!6034404))

(declare-fun m!6034406 () Bool)

(assert (=> d!1609846 m!6034406))

(declare-fun m!6034408 () Bool)

(assert (=> d!1609846 m!6034408))

(declare-fun m!6034410 () Bool)

(assert (=> b!5000796 m!6034410))

(declare-fun m!6034412 () Bool)

(assert (=> b!5000797 m!6034412))

(assert (=> b!5000797 m!6034086))

(declare-fun m!6034414 () Bool)

(assert (=> b!5000797 m!6034414))

(assert (=> b!5000594 d!1609846))

(declare-fun b!5000821 () Bool)

(declare-fun e!3124925 () Int)

(declare-fun e!3124926 () Int)

(assert (=> b!5000821 (= e!3124925 e!3124926)))

(declare-fun c!853451 () Bool)

(assert (=> b!5000821 (= c!853451 (>= lt!2068463 (size!38430 lt!2068473)))))

(declare-fun d!1609848 () Bool)

(declare-fun e!3124928 () Bool)

(assert (=> d!1609848 e!3124928))

(declare-fun res!2133852 () Bool)

(assert (=> d!1609848 (=> (not res!2133852) (not e!3124928))))

(declare-fun lt!2068627 () List!57950)

(assert (=> d!1609848 (= res!2133852 (set.subset (content!10235 lt!2068627) (content!10235 lt!2068473)))))

(declare-fun e!3124927 () List!57950)

(assert (=> d!1609848 (= lt!2068627 e!3124927)))

(declare-fun c!853452 () Bool)

(assert (=> d!1609848 (= c!853452 (or (is-Nil!57826 lt!2068473) (<= lt!2068463 0)))))

(assert (=> d!1609848 (= (take!641 lt!2068473 lt!2068463) lt!2068627)))

(declare-fun b!5000822 () Bool)

(assert (=> b!5000822 (= e!3124926 (size!38430 lt!2068473))))

(declare-fun b!5000823 () Bool)

(assert (=> b!5000823 (= e!3124928 (= (size!38430 lt!2068627) e!3124925))))

(declare-fun c!853450 () Bool)

(assert (=> b!5000823 (= c!853450 (<= lt!2068463 0))))

(declare-fun b!5000824 () Bool)

(assert (=> b!5000824 (= e!3124925 0)))

(declare-fun b!5000825 () Bool)

(assert (=> b!5000825 (= e!3124926 lt!2068463)))

(declare-fun b!5000826 () Bool)

(assert (=> b!5000826 (= e!3124927 Nil!57826)))

(declare-fun b!5000827 () Bool)

(assert (=> b!5000827 (= e!3124927 (Cons!57826 (h!64274 lt!2068473) (take!641 (t!370296 lt!2068473) (- lt!2068463 1))))))

(assert (= (and d!1609848 c!853452) b!5000826))

(assert (= (and d!1609848 (not c!853452)) b!5000827))

(assert (= (and d!1609848 res!2133852) b!5000823))

(assert (= (and b!5000823 c!853450) b!5000824))

(assert (= (and b!5000823 (not c!853450)) b!5000821))

(assert (= (and b!5000821 c!853451) b!5000822))

(assert (= (and b!5000821 (not c!853451)) b!5000825))

(declare-fun m!6034416 () Bool)

(assert (=> d!1609848 m!6034416))

(declare-fun m!6034418 () Bool)

(assert (=> d!1609848 m!6034418))

(declare-fun m!6034420 () Bool)

(assert (=> b!5000821 m!6034420))

(declare-fun m!6034422 () Bool)

(assert (=> b!5000827 m!6034422))

(assert (=> b!5000822 m!6034420))

(declare-fun m!6034424 () Bool)

(assert (=> b!5000823 m!6034424))

(assert (=> b!5000604 d!1609848))

(declare-fun b!5000850 () Bool)

(declare-fun e!3124945 () List!57950)

(assert (=> b!5000850 (= e!3124945 (drop!2445 (t!370296 lt!2068471) (- lt!2068465 1)))))

(declare-fun b!5000851 () Bool)

(assert (=> b!5000851 (= e!3124945 lt!2068471)))

(declare-fun d!1609850 () Bool)

(declare-fun e!3124943 () Bool)

(assert (=> d!1609850 e!3124943))

(declare-fun res!2133857 () Bool)

(assert (=> d!1609850 (=> (not res!2133857) (not e!3124943))))

(declare-fun lt!2068631 () List!57950)

(assert (=> d!1609850 (= res!2133857 (set.subset (content!10235 lt!2068631) (content!10235 lt!2068471)))))

(declare-fun e!3124941 () List!57950)

(assert (=> d!1609850 (= lt!2068631 e!3124941)))

(declare-fun c!853464 () Bool)

(assert (=> d!1609850 (= c!853464 (is-Nil!57826 lt!2068471))))

(assert (=> d!1609850 (= (drop!2445 lt!2068471 lt!2068465) lt!2068631)))

(declare-fun b!5000852 () Bool)

(assert (=> b!5000852 (= e!3124941 Nil!57826)))

(declare-fun b!5000853 () Bool)

(declare-fun e!3124944 () Int)

(declare-fun e!3124942 () Int)

(assert (=> b!5000853 (= e!3124944 e!3124942)))

(declare-fun c!853462 () Bool)

(declare-fun call!348994 () Int)

(assert (=> b!5000853 (= c!853462 (>= lt!2068465 call!348994))))

(declare-fun b!5000854 () Bool)

(assert (=> b!5000854 (= e!3124941 e!3124945)))

(declare-fun c!853463 () Bool)

(assert (=> b!5000854 (= c!853463 (<= lt!2068465 0))))

(declare-fun b!5000855 () Bool)

(assert (=> b!5000855 (= e!3124942 (- call!348994 lt!2068465))))

(declare-fun b!5000856 () Bool)

(assert (=> b!5000856 (= e!3124943 (= (size!38430 lt!2068631) e!3124944))))

(declare-fun c!853465 () Bool)

(assert (=> b!5000856 (= c!853465 (<= lt!2068465 0))))

(declare-fun bm!348989 () Bool)

(assert (=> bm!348989 (= call!348994 (size!38430 lt!2068471))))

(declare-fun b!5000857 () Bool)

(assert (=> b!5000857 (= e!3124944 call!348994)))

(declare-fun b!5000858 () Bool)

(assert (=> b!5000858 (= e!3124942 0)))

(assert (= (and d!1609850 c!853464) b!5000852))

(assert (= (and d!1609850 (not c!853464)) b!5000854))

(assert (= (and b!5000854 c!853463) b!5000851))

(assert (= (and b!5000854 (not c!853463)) b!5000850))

(assert (= (and d!1609850 res!2133857) b!5000856))

(assert (= (and b!5000856 c!853465) b!5000857))

(assert (= (and b!5000856 (not c!853465)) b!5000853))

(assert (= (and b!5000853 c!853462) b!5000858))

(assert (= (and b!5000853 (not c!853462)) b!5000855))

(assert (= (or b!5000857 b!5000853 b!5000855) bm!348989))

(declare-fun m!6034438 () Bool)

(assert (=> b!5000850 m!6034438))

(declare-fun m!6034440 () Bool)

(assert (=> d!1609850 m!6034440))

(declare-fun m!6034442 () Bool)

(assert (=> d!1609850 m!6034442))

(declare-fun m!6034444 () Bool)

(assert (=> b!5000856 m!6034444))

(assert (=> bm!348989 m!6034326))

(assert (=> b!5000604 d!1609850))

(declare-fun d!1609856 () Bool)

(declare-fun lambda!248345 () Int)

(declare-fun forall!13357 (List!57951 Int) Bool)

(assert (=> d!1609856 (= (inv!75950 setElem!28349) (forall!13357 (exprs!3707 setElem!28349) lambda!248345))))

(declare-fun bs!1185761 () Bool)

(assert (= bs!1185761 d!1609856))

(declare-fun m!6034562 () Bool)

(assert (=> bs!1185761 m!6034562))

(assert (=> setNonEmpty!28349 d!1609856))

(declare-fun d!1609890 () Bool)

(declare-fun c!853506 () Bool)

(assert (=> d!1609890 (= c!853506 (isEmpty!31298 (take!641 (drop!2445 lt!2068471 lt!2068465) lt!2068470)))))

(declare-fun e!3125026 () Bool)

(assert (=> d!1609890 (= (matchZipper!550 z!4183 (take!641 (drop!2445 lt!2068471 lt!2068465) lt!2068470)) e!3125026)))

(declare-fun b!5000990 () Bool)

(assert (=> b!5000990 (= e!3125026 (nullableZipper!875 z!4183))))

(declare-fun b!5000991 () Bool)

(assert (=> b!5000991 (= e!3125026 (matchZipper!550 (derivationStepZipper!624 z!4183 (head!10724 (take!641 (drop!2445 lt!2068471 lt!2068465) lt!2068470))) (tail!9857 (take!641 (drop!2445 lt!2068471 lt!2068465) lt!2068470))))))

(assert (= (and d!1609890 c!853506) b!5000990))

(assert (= (and d!1609890 (not c!853506)) b!5000991))

(assert (=> d!1609890 m!6034160))

(declare-fun m!6034564 () Bool)

(assert (=> d!1609890 m!6034564))

(assert (=> b!5000990 m!6034384))

(assert (=> b!5000991 m!6034160))

(declare-fun m!6034566 () Bool)

(assert (=> b!5000991 m!6034566))

(assert (=> b!5000991 m!6034566))

(declare-fun m!6034568 () Bool)

(assert (=> b!5000991 m!6034568))

(assert (=> b!5000991 m!6034160))

(declare-fun m!6034570 () Bool)

(assert (=> b!5000991 m!6034570))

(assert (=> b!5000991 m!6034568))

(assert (=> b!5000991 m!6034570))

(declare-fun m!6034572 () Bool)

(assert (=> b!5000991 m!6034572))

(assert (=> b!5000602 d!1609890))

(declare-fun b!5001006 () Bool)

(declare-fun e!3125031 () Int)

(declare-fun e!3125032 () Int)

(assert (=> b!5001006 (= e!3125031 e!3125032)))

(declare-fun c!853512 () Bool)

(assert (=> b!5001006 (= c!853512 (>= lt!2068470 (size!38430 (drop!2445 lt!2068471 lt!2068465))))))

(declare-fun d!1609892 () Bool)

(declare-fun e!3125034 () Bool)

(assert (=> d!1609892 e!3125034))

(declare-fun res!2133915 () Bool)

(assert (=> d!1609892 (=> (not res!2133915) (not e!3125034))))

(declare-fun lt!2068759 () List!57950)

(assert (=> d!1609892 (= res!2133915 (set.subset (content!10235 lt!2068759) (content!10235 (drop!2445 lt!2068471 lt!2068465))))))

(declare-fun e!3125033 () List!57950)

(assert (=> d!1609892 (= lt!2068759 e!3125033)))

(declare-fun c!853513 () Bool)

(assert (=> d!1609892 (= c!853513 (or (is-Nil!57826 (drop!2445 lt!2068471 lt!2068465)) (<= lt!2068470 0)))))

(assert (=> d!1609892 (= (take!641 (drop!2445 lt!2068471 lt!2068465) lt!2068470) lt!2068759)))

(declare-fun b!5001007 () Bool)

(assert (=> b!5001007 (= e!3125032 (size!38430 (drop!2445 lt!2068471 lt!2068465)))))

(declare-fun b!5001008 () Bool)

(assert (=> b!5001008 (= e!3125034 (= (size!38430 lt!2068759) e!3125031))))

(declare-fun c!853511 () Bool)

(assert (=> b!5001008 (= c!853511 (<= lt!2068470 0))))

(declare-fun b!5001009 () Bool)

(assert (=> b!5001009 (= e!3125031 0)))

(declare-fun b!5001010 () Bool)

(assert (=> b!5001010 (= e!3125032 lt!2068470)))

(declare-fun b!5001011 () Bool)

(assert (=> b!5001011 (= e!3125033 Nil!57826)))

(declare-fun b!5001012 () Bool)

(assert (=> b!5001012 (= e!3125033 (Cons!57826 (h!64274 (drop!2445 lt!2068471 lt!2068465)) (take!641 (t!370296 (drop!2445 lt!2068471 lt!2068465)) (- lt!2068470 1))))))

(assert (= (and d!1609892 c!853513) b!5001011))

(assert (= (and d!1609892 (not c!853513)) b!5001012))

(assert (= (and d!1609892 res!2133915) b!5001008))

(assert (= (and b!5001008 c!853511) b!5001009))

(assert (= (and b!5001008 (not c!853511)) b!5001006))

(assert (= (and b!5001006 c!853512) b!5001007))

(assert (= (and b!5001006 (not c!853512)) b!5001010))

(declare-fun m!6034574 () Bool)

(assert (=> d!1609892 m!6034574))

(assert (=> d!1609892 m!6034144))

(declare-fun m!6034576 () Bool)

(assert (=> d!1609892 m!6034576))

(assert (=> b!5001006 m!6034144))

(declare-fun m!6034578 () Bool)

(assert (=> b!5001006 m!6034578))

(declare-fun m!6034580 () Bool)

(assert (=> b!5001012 m!6034580))

(assert (=> b!5001007 m!6034144))

(assert (=> b!5001007 m!6034578))

(declare-fun m!6034582 () Bool)

(assert (=> b!5001008 m!6034582))

(assert (=> b!5000602 d!1609892))

(assert (=> b!5000602 d!1609850))

(declare-fun d!1609894 () Bool)

(declare-fun c!853516 () Bool)

(assert (=> d!1609894 (= c!853516 (is-Node!15301 (c!853395 totalInput!1012)))))

(declare-fun e!3125039 () Bool)

(assert (=> d!1609894 (= (inv!75949 (c!853395 totalInput!1012)) e!3125039)))

(declare-fun b!5001019 () Bool)

(declare-fun inv!75955 (Conc!15301) Bool)

(assert (=> b!5001019 (= e!3125039 (inv!75955 (c!853395 totalInput!1012)))))

(declare-fun b!5001020 () Bool)

(declare-fun e!3125040 () Bool)

(assert (=> b!5001020 (= e!3125039 e!3125040)))

(declare-fun res!2133918 () Bool)

(assert (=> b!5001020 (= res!2133918 (not (is-Leaf!25401 (c!853395 totalInput!1012))))))

(assert (=> b!5001020 (=> res!2133918 e!3125040)))

(declare-fun b!5001021 () Bool)

(declare-fun inv!75956 (Conc!15301) Bool)

(assert (=> b!5001021 (= e!3125040 (inv!75956 (c!853395 totalInput!1012)))))

(assert (= (and d!1609894 c!853516) b!5001019))

(assert (= (and d!1609894 (not c!853516)) b!5001020))

(assert (= (and b!5001020 (not res!2133918)) b!5001021))

(declare-fun m!6034636 () Bool)

(assert (=> b!5001019 m!6034636))

(declare-fun m!6034638 () Bool)

(assert (=> b!5001021 m!6034638))

(assert (=> b!5000591 d!1609894))

(declare-fun b!5001022 () Bool)

(declare-fun res!2133925 () Bool)

(declare-fun e!3125046 () Bool)

(assert (=> b!5001022 (=> (not res!2133925) (not e!3125046))))

(assert (=> b!5001022 (= res!2133925 (isEmpty!31298 (tail!9857 (_1!34785 lt!2068467))))))

(declare-fun d!1609898 () Bool)

(declare-fun e!3125047 () Bool)

(assert (=> d!1609898 e!3125047))

(declare-fun c!853517 () Bool)

(assert (=> d!1609898 (= c!853517 (is-EmptyExpr!13782 r!12727))))

(declare-fun lt!2068760 () Bool)

(declare-fun e!3125045 () Bool)

(assert (=> d!1609898 (= lt!2068760 e!3125045)))

(declare-fun c!853519 () Bool)

(assert (=> d!1609898 (= c!853519 (isEmpty!31298 (_1!34785 lt!2068467)))))

(assert (=> d!1609898 (validRegex!6079 r!12727)))

(assert (=> d!1609898 (= (matchR!6746 r!12727 (_1!34785 lt!2068467)) lt!2068760)))

(declare-fun bm!349027 () Bool)

(declare-fun call!349032 () Bool)

(assert (=> bm!349027 (= call!349032 (isEmpty!31298 (_1!34785 lt!2068467)))))

(declare-fun b!5001023 () Bool)

(assert (=> b!5001023 (= e!3125045 (matchR!6746 (derivativeStep!3970 r!12727 (head!10724 (_1!34785 lt!2068467))) (tail!9857 (_1!34785 lt!2068467))))))

(declare-fun b!5001024 () Bool)

(assert (=> b!5001024 (= e!3125045 (nullable!4680 r!12727))))

(declare-fun b!5001025 () Bool)

(assert (=> b!5001025 (= e!3125047 (= lt!2068760 call!349032))))

(declare-fun b!5001026 () Bool)

(declare-fun e!3125043 () Bool)

(assert (=> b!5001026 (= e!3125043 (not lt!2068760))))

(declare-fun b!5001027 () Bool)

(declare-fun res!2133924 () Bool)

(declare-fun e!3125042 () Bool)

(assert (=> b!5001027 (=> res!2133924 e!3125042)))

(assert (=> b!5001027 (= res!2133924 (not (is-ElementMatch!13782 r!12727)))))

(assert (=> b!5001027 (= e!3125043 e!3125042)))

(declare-fun b!5001028 () Bool)

(assert (=> b!5001028 (= e!3125047 e!3125043)))

(declare-fun c!853518 () Bool)

(assert (=> b!5001028 (= c!853518 (is-EmptyLang!13782 r!12727))))

(declare-fun b!5001029 () Bool)

(assert (=> b!5001029 (= e!3125046 (= (head!10724 (_1!34785 lt!2068467)) (c!853396 r!12727)))))

(declare-fun b!5001030 () Bool)

(declare-fun e!3125044 () Bool)

(declare-fun e!3125041 () Bool)

(assert (=> b!5001030 (= e!3125044 e!3125041)))

(declare-fun res!2133920 () Bool)

(assert (=> b!5001030 (=> res!2133920 e!3125041)))

(assert (=> b!5001030 (= res!2133920 call!349032)))

(declare-fun b!5001031 () Bool)

(declare-fun res!2133919 () Bool)

(assert (=> b!5001031 (=> res!2133919 e!3125041)))

(assert (=> b!5001031 (= res!2133919 (not (isEmpty!31298 (tail!9857 (_1!34785 lt!2068467)))))))

(declare-fun b!5001032 () Bool)

(assert (=> b!5001032 (= e!3125042 e!3125044)))

(declare-fun res!2133922 () Bool)

(assert (=> b!5001032 (=> (not res!2133922) (not e!3125044))))

(assert (=> b!5001032 (= res!2133922 (not lt!2068760))))

(declare-fun b!5001033 () Bool)

(declare-fun res!2133921 () Bool)

(assert (=> b!5001033 (=> res!2133921 e!3125042)))

(assert (=> b!5001033 (= res!2133921 e!3125046)))

(declare-fun res!2133923 () Bool)

(assert (=> b!5001033 (=> (not res!2133923) (not e!3125046))))

(assert (=> b!5001033 (= res!2133923 lt!2068760)))

(declare-fun b!5001034 () Bool)

(assert (=> b!5001034 (= e!3125041 (not (= (head!10724 (_1!34785 lt!2068467)) (c!853396 r!12727))))))

(declare-fun b!5001035 () Bool)

(declare-fun res!2133926 () Bool)

(assert (=> b!5001035 (=> (not res!2133926) (not e!3125046))))

(assert (=> b!5001035 (= res!2133926 (not call!349032))))

(assert (= (and d!1609898 c!853519) b!5001024))

(assert (= (and d!1609898 (not c!853519)) b!5001023))

(assert (= (and d!1609898 c!853517) b!5001025))

(assert (= (and d!1609898 (not c!853517)) b!5001028))

(assert (= (and b!5001028 c!853518) b!5001026))

(assert (= (and b!5001028 (not c!853518)) b!5001027))

(assert (= (and b!5001027 (not res!2133924)) b!5001033))

(assert (= (and b!5001033 res!2133923) b!5001035))

(assert (= (and b!5001035 res!2133926) b!5001022))

(assert (= (and b!5001022 res!2133925) b!5001029))

(assert (= (and b!5001033 (not res!2133921)) b!5001032))

(assert (= (and b!5001032 res!2133922) b!5001030))

(assert (= (and b!5001030 (not res!2133920)) b!5001031))

(assert (= (and b!5001031 (not res!2133919)) b!5001034))

(assert (= (or b!5001025 b!5001030 b!5001035) bm!349027))

(assert (=> bm!349027 m!6034154))

(assert (=> b!5001023 m!6034386))

(assert (=> b!5001023 m!6034386))

(declare-fun m!6034640 () Bool)

(assert (=> b!5001023 m!6034640))

(assert (=> b!5001023 m!6034390))

(assert (=> b!5001023 m!6034640))

(assert (=> b!5001023 m!6034390))

(declare-fun m!6034642 () Bool)

(assert (=> b!5001023 m!6034642))

(assert (=> b!5001031 m!6034390))

(assert (=> b!5001031 m!6034390))

(declare-fun m!6034644 () Bool)

(assert (=> b!5001031 m!6034644))

(assert (=> d!1609898 m!6034154))

(assert (=> d!1609898 m!6034148))

(assert (=> b!5001029 m!6034386))

(assert (=> b!5001022 m!6034390))

(assert (=> b!5001022 m!6034390))

(assert (=> b!5001022 m!6034644))

(assert (=> b!5001034 m!6034386))

(assert (=> b!5001024 m!6034382))

(assert (=> b!5000598 d!1609898))

(declare-fun d!1609900 () Bool)

(declare-fun e!3125056 () Bool)

(assert (=> d!1609900 e!3125056))

(declare-fun res!2133936 () Bool)

(assert (=> d!1609900 (=> res!2133936 e!3125056)))

(declare-fun lt!2068763 () Bool)

(assert (=> d!1609900 (= res!2133936 (not lt!2068763))))

(declare-fun e!3125054 () Bool)

(assert (=> d!1609900 (= lt!2068763 e!3125054)))

(declare-fun res!2133935 () Bool)

(assert (=> d!1609900 (=> res!2133935 e!3125054)))

(assert (=> d!1609900 (= res!2133935 (is-Nil!57826 (take!641 lt!2068471 lt!2068465)))))

(assert (=> d!1609900 (= (isPrefix!5335 (take!641 lt!2068471 lt!2068465) lt!2068471) lt!2068763)))

(declare-fun b!5001045 () Bool)

(declare-fun res!2133937 () Bool)

(declare-fun e!3125055 () Bool)

(assert (=> b!5001045 (=> (not res!2133937) (not e!3125055))))

(assert (=> b!5001045 (= res!2133937 (= (head!10724 (take!641 lt!2068471 lt!2068465)) (head!10724 lt!2068471)))))

(declare-fun b!5001046 () Bool)

(assert (=> b!5001046 (= e!3125055 (isPrefix!5335 (tail!9857 (take!641 lt!2068471 lt!2068465)) (tail!9857 lt!2068471)))))

(declare-fun b!5001044 () Bool)

(assert (=> b!5001044 (= e!3125054 e!3125055)))

(declare-fun res!2133938 () Bool)

(assert (=> b!5001044 (=> (not res!2133938) (not e!3125055))))

(assert (=> b!5001044 (= res!2133938 (not (is-Nil!57826 lt!2068471)))))

(declare-fun b!5001047 () Bool)

(assert (=> b!5001047 (= e!3125056 (>= (size!38430 lt!2068471) (size!38430 (take!641 lt!2068471 lt!2068465))))))

(assert (= (and d!1609900 (not res!2133935)) b!5001044))

(assert (= (and b!5001044 res!2133938) b!5001045))

(assert (= (and b!5001045 res!2133937) b!5001046))

(assert (= (and d!1609900 (not res!2133936)) b!5001047))

(assert (=> b!5001045 m!6034132))

(declare-fun m!6034646 () Bool)

(assert (=> b!5001045 m!6034646))

(declare-fun m!6034648 () Bool)

(assert (=> b!5001045 m!6034648))

(assert (=> b!5001046 m!6034132))

(declare-fun m!6034650 () Bool)

(assert (=> b!5001046 m!6034650))

(declare-fun m!6034652 () Bool)

(assert (=> b!5001046 m!6034652))

(assert (=> b!5001046 m!6034650))

(assert (=> b!5001046 m!6034652))

(declare-fun m!6034654 () Bool)

(assert (=> b!5001046 m!6034654))

(assert (=> b!5001047 m!6034326))

(assert (=> b!5001047 m!6034132))

(declare-fun m!6034656 () Bool)

(assert (=> b!5001047 m!6034656))

(assert (=> b!5000588 d!1609900))

(declare-fun d!1609902 () Bool)

(assert (=> d!1609902 (isPrefix!5335 (_1!34785 lt!2068467) (++!12628 (_1!34785 lt!2068467) (_2!34785 lt!2068467)))))

(declare-fun lt!2068766 () Unit!148985)

(declare-fun choose!36963 (List!57950 List!57950) Unit!148985)

(assert (=> d!1609902 (= lt!2068766 (choose!36963 (_1!34785 lt!2068467) (_2!34785 lt!2068467)))))

(assert (=> d!1609902 (= (lemmaConcatTwoListThenFirstIsPrefix!3433 (_1!34785 lt!2068467) (_2!34785 lt!2068467)) lt!2068766)))

(declare-fun bs!1185762 () Bool)

(assert (= bs!1185762 d!1609902))

(assert (=> bs!1185762 m!6034140))

(assert (=> bs!1185762 m!6034140))

(declare-fun m!6034658 () Bool)

(assert (=> bs!1185762 m!6034658))

(declare-fun m!6034660 () Bool)

(assert (=> bs!1185762 m!6034660))

(assert (=> b!5000588 d!1609902))

(declare-fun b!5001088 () Bool)

(declare-fun e!3125085 () Int)

(assert (=> b!5001088 (= e!3125085 1)))

(declare-fun b!5001089 () Bool)

(declare-fun e!3125089 () Int)

(assert (=> b!5001089 (= e!3125089 0)))

(declare-fun b!5001090 () Bool)

(declare-fun e!3125088 () Bool)

(declare-fun lostCauseZipper!822 ((Set Context!6414)) Bool)

(assert (=> b!5001090 (= e!3125088 (lostCauseZipper!822 z!4183))))

(declare-fun b!5001091 () Bool)

(declare-fun c!853531 () Bool)

(declare-fun lt!2068790 () (Set Context!6414))

(assert (=> b!5001091 (= c!853531 (nullableZipper!875 lt!2068790))))

(declare-fun e!3125087 () Int)

(assert (=> b!5001091 (= e!3125087 e!3125085)))

(declare-fun b!5001093 () Bool)

(declare-fun lt!2068791 () Int)

(assert (=> b!5001093 (= e!3125087 (+ 1 lt!2068791))))

(declare-fun b!5001094 () Bool)

(assert (=> b!5001094 (= e!3125085 0)))

(declare-fun b!5001095 () Bool)

(assert (=> b!5001095 (= e!3125089 e!3125087)))

(declare-fun apply!13982 (BalanceConc!30032 Int) C!27814)

(assert (=> b!5001095 (= lt!2068790 (derivationStepZipper!624 z!4183 (apply!13982 totalInput!1012 lt!2068465)))))

(assert (=> b!5001095 (= lt!2068791 (findLongestMatchInnerZipperFastV2!122 lt!2068790 (+ lt!2068465 1) totalInput!1012 lt!2068466))))

(declare-fun c!853530 () Bool)

(assert (=> b!5001095 (= c!853530 (> lt!2068791 0))))

(declare-fun b!5001092 () Bool)

(declare-fun e!3125086 () Bool)

(assert (=> b!5001092 (= e!3125086 (<= lt!2068465 (size!38431 totalInput!1012)))))

(declare-fun d!1609904 () Bool)

(declare-fun lt!2068789 () Int)

(assert (=> d!1609904 (and (>= lt!2068789 0) (<= lt!2068789 (- lt!2068466 lt!2068465)))))

(assert (=> d!1609904 (= lt!2068789 e!3125089)))

(declare-fun c!853529 () Bool)

(assert (=> d!1609904 (= c!853529 e!3125088)))

(declare-fun res!2133961 () Bool)

(assert (=> d!1609904 (=> res!2133961 e!3125088)))

(assert (=> d!1609904 (= res!2133961 (= lt!2068465 lt!2068466))))

(assert (=> d!1609904 e!3125086))

(declare-fun res!2133962 () Bool)

(assert (=> d!1609904 (=> (not res!2133962) (not e!3125086))))

(assert (=> d!1609904 (= res!2133962 (>= lt!2068465 0))))

(assert (=> d!1609904 (= (findLongestMatchInnerZipperFastV2!122 z!4183 lt!2068465 totalInput!1012 lt!2068466) lt!2068789)))

(assert (= (and d!1609904 res!2133962) b!5001092))

(assert (= (and d!1609904 (not res!2133961)) b!5001090))

(assert (= (and d!1609904 c!853529) b!5001089))

(assert (= (and d!1609904 (not c!853529)) b!5001095))

(assert (= (and b!5001095 c!853530) b!5001093))

(assert (= (and b!5001095 (not c!853530)) b!5001091))

(assert (= (and b!5001091 c!853531) b!5001088))

(assert (= (and b!5001091 (not c!853531)) b!5001094))

(declare-fun m!6034692 () Bool)

(assert (=> b!5001090 m!6034692))

(declare-fun m!6034694 () Bool)

(assert (=> b!5001091 m!6034694))

(declare-fun m!6034696 () Bool)

(assert (=> b!5001095 m!6034696))

(assert (=> b!5001095 m!6034696))

(declare-fun m!6034698 () Bool)

(assert (=> b!5001095 m!6034698))

(declare-fun m!6034700 () Bool)

(assert (=> b!5001095 m!6034700))

(assert (=> b!5001092 m!6034078))

(assert (=> b!5000588 d!1609904))

(declare-fun d!1609920 () Bool)

(declare-fun e!3125107 () Bool)

(assert (=> d!1609920 e!3125107))

(declare-fun res!2133977 () Bool)

(assert (=> d!1609920 (=> res!2133977 e!3125107)))

(assert (=> d!1609920 (= res!2133977 (isEmpty!31298 (_1!34785 (findLongestMatchInner!1971 r!12727 Nil!57826 (size!38430 Nil!57826) lt!2068459 lt!2068459 (size!38430 lt!2068459)))))))

(declare-fun lt!2068801 () Unit!148985)

(declare-fun choose!36964 (Regex!13782 List!57950) Unit!148985)

(assert (=> d!1609920 (= lt!2068801 (choose!36964 r!12727 lt!2068459))))

(assert (=> d!1609920 (validRegex!6079 r!12727)))

(assert (=> d!1609920 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1924 r!12727 lt!2068459) lt!2068801)))

(declare-fun b!5001120 () Bool)

(assert (=> b!5001120 (= e!3125107 (matchR!6746 r!12727 (_1!34785 (findLongestMatchInner!1971 r!12727 Nil!57826 (size!38430 Nil!57826) lt!2068459 lt!2068459 (size!38430 lt!2068459)))))))

(assert (= (and d!1609920 (not res!2133977)) b!5001120))

(assert (=> d!1609920 m!6034110))

(declare-fun m!6034746 () Bool)

(assert (=> d!1609920 m!6034746))

(assert (=> d!1609920 m!6034110))

(assert (=> d!1609920 m!6034112))

(assert (=> d!1609920 m!6034114))

(assert (=> d!1609920 m!6034112))

(declare-fun m!6034748 () Bool)

(assert (=> d!1609920 m!6034748))

(assert (=> d!1609920 m!6034148))

(assert (=> b!5001120 m!6034110))

(assert (=> b!5001120 m!6034112))

(assert (=> b!5001120 m!6034110))

(assert (=> b!5001120 m!6034112))

(assert (=> b!5001120 m!6034114))

(declare-fun m!6034750 () Bool)

(assert (=> b!5001120 m!6034750))

(assert (=> b!5000588 d!1609920))

(declare-fun d!1609934 () Bool)

(declare-fun lt!2068802 () Int)

(assert (=> d!1609934 (>= lt!2068802 0)))

(declare-fun e!3125108 () Int)

(assert (=> d!1609934 (= lt!2068802 e!3125108)))

(declare-fun c!853537 () Bool)

(assert (=> d!1609934 (= c!853537 (is-Nil!57826 lt!2068459))))

(assert (=> d!1609934 (= (size!38430 lt!2068459) lt!2068802)))

(declare-fun b!5001121 () Bool)

(assert (=> b!5001121 (= e!3125108 0)))

(declare-fun b!5001122 () Bool)

(assert (=> b!5001122 (= e!3125108 (+ 1 (size!38430 (t!370296 lt!2068459))))))

(assert (= (and d!1609934 c!853537) b!5001121))

(assert (= (and d!1609934 (not c!853537)) b!5001122))

(declare-fun m!6034752 () Bool)

(assert (=> b!5001122 m!6034752))

(assert (=> b!5000588 d!1609934))

(declare-fun d!1609936 () Bool)

(assert (=> d!1609936 (= (isEmpty!31298 (_1!34785 lt!2068477)) (is-Nil!57826 (_1!34785 lt!2068477)))))

(assert (=> b!5000588 d!1609936))

(declare-fun d!1609938 () Bool)

(declare-fun e!3125111 () Bool)

(assert (=> d!1609938 e!3125111))

(declare-fun res!2133979 () Bool)

(assert (=> d!1609938 (=> res!2133979 e!3125111)))

(declare-fun lt!2068803 () Bool)

(assert (=> d!1609938 (= res!2133979 (not lt!2068803))))

(declare-fun e!3125109 () Bool)

(assert (=> d!1609938 (= lt!2068803 e!3125109)))

(declare-fun res!2133978 () Bool)

(assert (=> d!1609938 (=> res!2133978 e!3125109)))

(assert (=> d!1609938 (= res!2133978 (is-Nil!57826 lt!2068468))))

(assert (=> d!1609938 (= (isPrefix!5335 lt!2068468 lt!2068457) lt!2068803)))

(declare-fun b!5001124 () Bool)

(declare-fun res!2133980 () Bool)

(declare-fun e!3125110 () Bool)

(assert (=> b!5001124 (=> (not res!2133980) (not e!3125110))))

(assert (=> b!5001124 (= res!2133980 (= (head!10724 lt!2068468) (head!10724 lt!2068457)))))

(declare-fun b!5001125 () Bool)

(assert (=> b!5001125 (= e!3125110 (isPrefix!5335 (tail!9857 lt!2068468) (tail!9857 lt!2068457)))))

(declare-fun b!5001123 () Bool)

(assert (=> b!5001123 (= e!3125109 e!3125110)))

(declare-fun res!2133981 () Bool)

(assert (=> b!5001123 (=> (not res!2133981) (not e!3125110))))

(assert (=> b!5001123 (= res!2133981 (not (is-Nil!57826 lt!2068457)))))

(declare-fun b!5001126 () Bool)

(assert (=> b!5001126 (= e!3125111 (>= (size!38430 lt!2068457) (size!38430 lt!2068468)))))

(assert (= (and d!1609938 (not res!2133978)) b!5001123))

(assert (= (and b!5001123 res!2133981) b!5001124))

(assert (= (and b!5001124 res!2133980) b!5001125))

(assert (= (and d!1609938 (not res!2133979)) b!5001126))

(assert (=> b!5001124 m!6034372))

(declare-fun m!6034754 () Bool)

(assert (=> b!5001124 m!6034754))

(assert (=> b!5001125 m!6034376))

(declare-fun m!6034756 () Bool)

(assert (=> b!5001125 m!6034756))

(assert (=> b!5001125 m!6034376))

(assert (=> b!5001125 m!6034756))

(declare-fun m!6034758 () Bool)

(assert (=> b!5001125 m!6034758))

(declare-fun m!6034760 () Bool)

(assert (=> b!5001126 m!6034760))

(assert (=> b!5001126 m!6034308))

(assert (=> b!5000588 d!1609938))

(declare-fun b!5001127 () Bool)

(declare-fun e!3125112 () Int)

(declare-fun e!3125113 () Int)

(assert (=> b!5001127 (= e!3125112 e!3125113)))

(declare-fun c!853539 () Bool)

(assert (=> b!5001127 (= c!853539 (>= lt!2068465 (size!38430 lt!2068471)))))

(declare-fun d!1609940 () Bool)

(declare-fun e!3125115 () Bool)

(assert (=> d!1609940 e!3125115))

(declare-fun res!2133982 () Bool)

(assert (=> d!1609940 (=> (not res!2133982) (not e!3125115))))

(declare-fun lt!2068804 () List!57950)

(assert (=> d!1609940 (= res!2133982 (set.subset (content!10235 lt!2068804) (content!10235 lt!2068471)))))

(declare-fun e!3125114 () List!57950)

(assert (=> d!1609940 (= lt!2068804 e!3125114)))

(declare-fun c!853540 () Bool)

(assert (=> d!1609940 (= c!853540 (or (is-Nil!57826 lt!2068471) (<= lt!2068465 0)))))

(assert (=> d!1609940 (= (take!641 lt!2068471 lt!2068465) lt!2068804)))

(declare-fun b!5001128 () Bool)

(assert (=> b!5001128 (= e!3125113 (size!38430 lt!2068471))))

(declare-fun b!5001129 () Bool)

(assert (=> b!5001129 (= e!3125115 (= (size!38430 lt!2068804) e!3125112))))

(declare-fun c!853538 () Bool)

(assert (=> b!5001129 (= c!853538 (<= lt!2068465 0))))

(declare-fun b!5001130 () Bool)

(assert (=> b!5001130 (= e!3125112 0)))

(declare-fun b!5001131 () Bool)

(assert (=> b!5001131 (= e!3125113 lt!2068465)))

(declare-fun b!5001132 () Bool)

(assert (=> b!5001132 (= e!3125114 Nil!57826)))

(declare-fun b!5001133 () Bool)

(assert (=> b!5001133 (= e!3125114 (Cons!57826 (h!64274 lt!2068471) (take!641 (t!370296 lt!2068471) (- lt!2068465 1))))))

(assert (= (and d!1609940 c!853540) b!5001132))

(assert (= (and d!1609940 (not c!853540)) b!5001133))

(assert (= (and d!1609940 res!2133982) b!5001129))

(assert (= (and b!5001129 c!853538) b!5001130))

(assert (= (and b!5001129 (not c!853538)) b!5001127))

(assert (= (and b!5001127 c!853539) b!5001128))

(assert (= (and b!5001127 (not c!853539)) b!5001131))

(declare-fun m!6034762 () Bool)

(assert (=> d!1609940 m!6034762))

(assert (=> d!1609940 m!6034442))

(assert (=> b!5001127 m!6034326))

(declare-fun m!6034764 () Bool)

(assert (=> b!5001133 m!6034764))

(assert (=> b!5001128 m!6034326))

(declare-fun m!6034766 () Bool)

(assert (=> b!5001129 m!6034766))

(assert (=> b!5000588 d!1609940))

(declare-fun bm!349044 () Bool)

(declare-fun call!349053 () C!27814)

(assert (=> bm!349044 (= call!349053 (head!10724 lt!2068459))))

(declare-fun b!5001186 () Bool)

(declare-fun e!3125154 () tuple2!62964)

(assert (=> b!5001186 (= e!3125154 (tuple2!62965 Nil!57826 lt!2068459))))

(declare-fun b!5001187 () Bool)

(declare-fun c!853563 () Bool)

(declare-fun call!349049 () Bool)

(assert (=> b!5001187 (= c!853563 call!349049)))

(declare-fun lt!2068876 () Unit!148985)

(declare-fun lt!2068885 () Unit!148985)

(assert (=> b!5001187 (= lt!2068876 lt!2068885)))

(declare-fun lt!2068870 () C!27814)

(declare-fun lt!2068895 () List!57950)

(assert (=> b!5001187 (= (++!12628 (++!12628 Nil!57826 (Cons!57826 lt!2068870 Nil!57826)) lt!2068895) lt!2068459)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1491 (List!57950 C!27814 List!57950 List!57950) Unit!148985)

(assert (=> b!5001187 (= lt!2068885 (lemmaMoveElementToOtherListKeepsConcatEq!1491 Nil!57826 lt!2068870 lt!2068895 lt!2068459))))

(assert (=> b!5001187 (= lt!2068895 (tail!9857 lt!2068459))))

(assert (=> b!5001187 (= lt!2068870 (head!10724 lt!2068459))))

(declare-fun lt!2068872 () Unit!148985)

(declare-fun lt!2068882 () Unit!148985)

(assert (=> b!5001187 (= lt!2068872 lt!2068882)))

(declare-fun getSuffix!3135 (List!57950 List!57950) List!57950)

(assert (=> b!5001187 (isPrefix!5335 (++!12628 Nil!57826 (Cons!57826 (head!10724 (getSuffix!3135 lt!2068459 Nil!57826)) Nil!57826)) lt!2068459)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!880 (List!57950 List!57950) Unit!148985)

(assert (=> b!5001187 (= lt!2068882 (lemmaAddHeadSuffixToPrefixStillPrefix!880 Nil!57826 lt!2068459))))

(declare-fun lt!2068878 () Unit!148985)

(declare-fun lt!2068883 () Unit!148985)

(assert (=> b!5001187 (= lt!2068878 lt!2068883)))

(assert (=> b!5001187 (= lt!2068883 (lemmaAddHeadSuffixToPrefixStillPrefix!880 Nil!57826 lt!2068459))))

(declare-fun lt!2068880 () List!57950)

(assert (=> b!5001187 (= lt!2068880 (++!12628 Nil!57826 (Cons!57826 (head!10724 lt!2068459) Nil!57826)))))

(declare-fun lt!2068881 () Unit!148985)

(declare-fun e!3125148 () Unit!148985)

(assert (=> b!5001187 (= lt!2068881 e!3125148)))

(declare-fun c!853564 () Bool)

(assert (=> b!5001187 (= c!853564 (= (size!38430 Nil!57826) (size!38430 lt!2068459)))))

(declare-fun lt!2068891 () Unit!148985)

(declare-fun lt!2068873 () Unit!148985)

(assert (=> b!5001187 (= lt!2068891 lt!2068873)))

(assert (=> b!5001187 (<= (size!38430 Nil!57826) (size!38430 lt!2068459))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!806 (List!57950 List!57950) Unit!148985)

(assert (=> b!5001187 (= lt!2068873 (lemmaIsPrefixThenSmallerEqSize!806 Nil!57826 lt!2068459))))

(declare-fun e!3125152 () tuple2!62964)

(declare-fun e!3125153 () tuple2!62964)

(assert (=> b!5001187 (= e!3125152 e!3125153)))

(declare-fun b!5001188 () Bool)

(declare-fun Unit!148989 () Unit!148985)

(assert (=> b!5001188 (= e!3125148 Unit!148989)))

(declare-fun b!5001189 () Bool)

(declare-fun e!3125149 () tuple2!62964)

(assert (=> b!5001189 (= e!3125149 (tuple2!62965 Nil!57826 lt!2068459))))

(declare-fun b!5001190 () Bool)

(declare-fun lt!2068893 () tuple2!62964)

(assert (=> b!5001190 (= e!3125149 lt!2068893)))

(declare-fun b!5001191 () Bool)

(declare-fun call!349054 () tuple2!62964)

(assert (=> b!5001191 (= e!3125153 call!349054)))

(declare-fun bm!349045 () Bool)

(declare-fun call!349055 () List!57950)

(assert (=> bm!349045 (= call!349055 (tail!9857 lt!2068459))))

(declare-fun bm!349046 () Bool)

(assert (=> bm!349046 (= call!349049 (nullable!4680 r!12727))))

(declare-fun b!5001192 () Bool)

(declare-fun e!3125150 () Bool)

(declare-fun e!3125147 () Bool)

(assert (=> b!5001192 (= e!3125150 e!3125147)))

(declare-fun res!2133994 () Bool)

(assert (=> b!5001192 (=> res!2133994 e!3125147)))

(declare-fun lt!2068894 () tuple2!62964)

(assert (=> b!5001192 (= res!2133994 (isEmpty!31298 (_1!34785 lt!2068894)))))

(declare-fun b!5001193 () Bool)

(declare-fun Unit!148990 () Unit!148985)

(assert (=> b!5001193 (= e!3125148 Unit!148990)))

(declare-fun lt!2068874 () Unit!148985)

(declare-fun call!349051 () Unit!148985)

(assert (=> b!5001193 (= lt!2068874 call!349051)))

(declare-fun call!349052 () Bool)

(assert (=> b!5001193 call!349052))

(declare-fun lt!2068889 () Unit!148985)

(assert (=> b!5001193 (= lt!2068889 lt!2068874)))

(declare-fun lt!2068897 () Unit!148985)

(declare-fun call!349050 () Unit!148985)

(assert (=> b!5001193 (= lt!2068897 call!349050)))

(assert (=> b!5001193 (= lt!2068459 Nil!57826)))

(declare-fun lt!2068877 () Unit!148985)

(assert (=> b!5001193 (= lt!2068877 lt!2068897)))

(assert (=> b!5001193 false))

(declare-fun bm!349048 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1266 (List!57950 List!57950 List!57950) Unit!148985)

(assert (=> bm!349048 (= call!349050 (lemmaIsPrefixSameLengthThenSameList!1266 lt!2068459 Nil!57826 lt!2068459))))

(declare-fun b!5001194 () Bool)

(declare-fun c!853562 () Bool)

(assert (=> b!5001194 (= c!853562 call!349049)))

(declare-fun lt!2068879 () Unit!148985)

(declare-fun lt!2068875 () Unit!148985)

(assert (=> b!5001194 (= lt!2068879 lt!2068875)))

(assert (=> b!5001194 (= lt!2068459 Nil!57826)))

(assert (=> b!5001194 (= lt!2068875 call!349050)))

(declare-fun lt!2068892 () Unit!148985)

(declare-fun lt!2068871 () Unit!148985)

(assert (=> b!5001194 (= lt!2068892 lt!2068871)))

(assert (=> b!5001194 call!349052))

(assert (=> b!5001194 (= lt!2068871 call!349051)))

(assert (=> b!5001194 (= e!3125152 e!3125154)))

(declare-fun b!5001195 () Bool)

(declare-fun e!3125151 () tuple2!62964)

(assert (=> b!5001195 (= e!3125151 e!3125152)))

(declare-fun c!853565 () Bool)

(assert (=> b!5001195 (= c!853565 (= (size!38430 Nil!57826) (size!38430 lt!2068459)))))

(declare-fun b!5001196 () Bool)

(assert (=> b!5001196 (= e!3125154 (tuple2!62965 Nil!57826 Nil!57826))))

(declare-fun b!5001197 () Bool)

(assert (=> b!5001197 (= e!3125147 (>= (size!38430 (_1!34785 lt!2068894)) (size!38430 Nil!57826)))))

(declare-fun bm!349049 () Bool)

(assert (=> bm!349049 (= call!349052 (isPrefix!5335 lt!2068459 lt!2068459))))

(declare-fun b!5001198 () Bool)

(assert (=> b!5001198 (= e!3125151 (tuple2!62965 Nil!57826 lt!2068459))))

(declare-fun bm!349050 () Bool)

(declare-fun lemmaIsPrefixRefl!3618 (List!57950 List!57950) Unit!148985)

(assert (=> bm!349050 (= call!349051 (lemmaIsPrefixRefl!3618 lt!2068459 lt!2068459))))

(declare-fun bm!349051 () Bool)

(declare-fun call!349056 () Regex!13782)

(assert (=> bm!349051 (= call!349054 (findLongestMatchInner!1971 call!349056 lt!2068880 (+ (size!38430 Nil!57826) 1) call!349055 lt!2068459 (size!38430 lt!2068459)))))

(declare-fun b!5001199 () Bool)

(assert (=> b!5001199 (= e!3125153 e!3125149)))

(assert (=> b!5001199 (= lt!2068893 call!349054)))

(declare-fun c!853566 () Bool)

(assert (=> b!5001199 (= c!853566 (isEmpty!31298 (_1!34785 lt!2068893)))))

(declare-fun bm!349047 () Bool)

(assert (=> bm!349047 (= call!349056 (derivativeStep!3970 r!12727 call!349053))))

(declare-fun d!1609942 () Bool)

(assert (=> d!1609942 e!3125150))

(declare-fun res!2133993 () Bool)

(assert (=> d!1609942 (=> (not res!2133993) (not e!3125150))))

(assert (=> d!1609942 (= res!2133993 (= (++!12628 (_1!34785 lt!2068894) (_2!34785 lt!2068894)) lt!2068459))))

(assert (=> d!1609942 (= lt!2068894 e!3125151)))

(declare-fun c!853567 () Bool)

(declare-fun lostCause!1179 (Regex!13782) Bool)

(assert (=> d!1609942 (= c!853567 (lostCause!1179 r!12727))))

(declare-fun lt!2068888 () Unit!148985)

(declare-fun Unit!148991 () Unit!148985)

(assert (=> d!1609942 (= lt!2068888 Unit!148991)))

(assert (=> d!1609942 (= (getSuffix!3135 lt!2068459 Nil!57826) lt!2068459)))

(declare-fun lt!2068886 () Unit!148985)

(declare-fun lt!2068890 () Unit!148985)

(assert (=> d!1609942 (= lt!2068886 lt!2068890)))

(declare-fun lt!2068884 () List!57950)

(assert (=> d!1609942 (= lt!2068459 lt!2068884)))

(declare-fun lemmaSamePrefixThenSameSuffix!2549 (List!57950 List!57950 List!57950 List!57950 List!57950) Unit!148985)

(assert (=> d!1609942 (= lt!2068890 (lemmaSamePrefixThenSameSuffix!2549 Nil!57826 lt!2068459 Nil!57826 lt!2068884 lt!2068459))))

(assert (=> d!1609942 (= lt!2068884 (getSuffix!3135 lt!2068459 Nil!57826))))

(declare-fun lt!2068887 () Unit!148985)

(declare-fun lt!2068896 () Unit!148985)

(assert (=> d!1609942 (= lt!2068887 lt!2068896)))

(assert (=> d!1609942 (isPrefix!5335 Nil!57826 (++!12628 Nil!57826 lt!2068459))))

(assert (=> d!1609942 (= lt!2068896 (lemmaConcatTwoListThenFirstIsPrefix!3433 Nil!57826 lt!2068459))))

(assert (=> d!1609942 (validRegex!6079 r!12727)))

(assert (=> d!1609942 (= (findLongestMatchInner!1971 r!12727 Nil!57826 (size!38430 Nil!57826) lt!2068459 lt!2068459 (size!38430 lt!2068459)) lt!2068894)))

(assert (= (and d!1609942 c!853567) b!5001198))

(assert (= (and d!1609942 (not c!853567)) b!5001195))

(assert (= (and b!5001195 c!853565) b!5001194))

(assert (= (and b!5001195 (not c!853565)) b!5001187))

(assert (= (and b!5001194 c!853562) b!5001196))

(assert (= (and b!5001194 (not c!853562)) b!5001186))

(assert (= (and b!5001187 c!853564) b!5001193))

(assert (= (and b!5001187 (not c!853564)) b!5001188))

(assert (= (and b!5001187 c!853563) b!5001199))

(assert (= (and b!5001187 (not c!853563)) b!5001191))

(assert (= (and b!5001199 c!853566) b!5001189))

(assert (= (and b!5001199 (not c!853566)) b!5001190))

(assert (= (or b!5001199 b!5001191) bm!349044))

(assert (= (or b!5001199 b!5001191) bm!349045))

(assert (= (or b!5001199 b!5001191) bm!349047))

(assert (= (or b!5001199 b!5001191) bm!349051))

(assert (= (or b!5001194 b!5001187) bm!349046))

(assert (= (or b!5001194 b!5001193) bm!349049))

(assert (= (or b!5001194 b!5001193) bm!349048))

(assert (= (or b!5001194 b!5001193) bm!349050))

(assert (= (and d!1609942 res!2133993) b!5001192))

(assert (= (and b!5001192 (not res!2133994)) b!5001197))

(declare-fun m!6034778 () Bool)

(assert (=> d!1609942 m!6034778))

(assert (=> d!1609942 m!6034148))

(assert (=> d!1609942 m!6034778))

(declare-fun m!6034780 () Bool)

(assert (=> d!1609942 m!6034780))

(declare-fun m!6034782 () Bool)

(assert (=> d!1609942 m!6034782))

(declare-fun m!6034784 () Bool)

(assert (=> d!1609942 m!6034784))

(declare-fun m!6034786 () Bool)

(assert (=> d!1609942 m!6034786))

(declare-fun m!6034788 () Bool)

(assert (=> d!1609942 m!6034788))

(declare-fun m!6034790 () Bool)

(assert (=> d!1609942 m!6034790))

(declare-fun m!6034792 () Bool)

(assert (=> b!5001197 m!6034792))

(assert (=> b!5001197 m!6034110))

(declare-fun m!6034794 () Bool)

(assert (=> bm!349045 m!6034794))

(declare-fun m!6034796 () Bool)

(assert (=> b!5001199 m!6034796))

(declare-fun m!6034798 () Bool)

(assert (=> b!5001192 m!6034798))

(assert (=> bm!349046 m!6034382))

(declare-fun m!6034800 () Bool)

(assert (=> bm!349049 m!6034800))

(declare-fun m!6034802 () Bool)

(assert (=> bm!349048 m!6034802))

(declare-fun m!6034804 () Bool)

(assert (=> b!5001187 m!6034804))

(declare-fun m!6034806 () Bool)

(assert (=> b!5001187 m!6034806))

(declare-fun m!6034808 () Bool)

(assert (=> b!5001187 m!6034808))

(declare-fun m!6034810 () Bool)

(assert (=> b!5001187 m!6034810))

(declare-fun m!6034812 () Bool)

(assert (=> b!5001187 m!6034812))

(assert (=> b!5001187 m!6034782))

(declare-fun m!6034814 () Bool)

(assert (=> b!5001187 m!6034814))

(assert (=> b!5001187 m!6034782))

(assert (=> b!5001187 m!6034808))

(declare-fun m!6034816 () Bool)

(assert (=> b!5001187 m!6034816))

(assert (=> b!5001187 m!6034110))

(assert (=> b!5001187 m!6034112))

(declare-fun m!6034818 () Bool)

(assert (=> b!5001187 m!6034818))

(declare-fun m!6034820 () Bool)

(assert (=> b!5001187 m!6034820))

(assert (=> b!5001187 m!6034806))

(declare-fun m!6034822 () Bool)

(assert (=> b!5001187 m!6034822))

(assert (=> b!5001187 m!6034794))

(assert (=> bm!349051 m!6034112))

(declare-fun m!6034824 () Bool)

(assert (=> bm!349051 m!6034824))

(declare-fun m!6034826 () Bool)

(assert (=> bm!349047 m!6034826))

(assert (=> bm!349044 m!6034818))

(declare-fun m!6034828 () Bool)

(assert (=> bm!349050 m!6034828))

(assert (=> b!5000588 d!1609942))

(declare-fun d!1609946 () Bool)

(declare-fun lt!2068898 () Int)

(assert (=> d!1609946 (>= lt!2068898 0)))

(declare-fun e!3125155 () Int)

(assert (=> d!1609946 (= lt!2068898 e!3125155)))

(declare-fun c!853568 () Bool)

(assert (=> d!1609946 (= c!853568 (is-Nil!57826 Nil!57826))))

(assert (=> d!1609946 (= (size!38430 Nil!57826) lt!2068898)))

(declare-fun b!5001200 () Bool)

(assert (=> b!5001200 (= e!3125155 0)))

(declare-fun b!5001201 () Bool)

(assert (=> b!5001201 (= e!3125155 (+ 1 (size!38430 (t!370296 Nil!57826))))))

(assert (= (and d!1609946 c!853568) b!5001200))

(assert (= (and d!1609946 (not c!853568)) b!5001201))

(declare-fun m!6034830 () Bool)

(assert (=> b!5001201 m!6034830))

(assert (=> b!5000588 d!1609946))

(declare-fun d!1609948 () Bool)

(assert (=> d!1609948 (isPrefix!5335 lt!2068468 (++!12628 lt!2068468 lt!2068475))))

(declare-fun lt!2068899 () Unit!148985)

(assert (=> d!1609948 (= lt!2068899 (choose!36963 lt!2068468 lt!2068475))))

(assert (=> d!1609948 (= (lemmaConcatTwoListThenFirstIsPrefix!3433 lt!2068468 lt!2068475) lt!2068899)))

(declare-fun bs!1185766 () Bool)

(assert (= bs!1185766 d!1609948))

(assert (=> bs!1185766 m!6034072))

(assert (=> bs!1185766 m!6034072))

(declare-fun m!6034832 () Bool)

(assert (=> bs!1185766 m!6034832))

(declare-fun m!6034834 () Bool)

(assert (=> bs!1185766 m!6034834))

(assert (=> b!5000588 d!1609948))

(declare-fun d!1609950 () Bool)

(declare-fun e!3125158 () Bool)

(assert (=> d!1609950 e!3125158))

(declare-fun res!2133996 () Bool)

(assert (=> d!1609950 (=> res!2133996 e!3125158)))

(declare-fun lt!2068900 () Bool)

(assert (=> d!1609950 (= res!2133996 (not lt!2068900))))

(declare-fun e!3125156 () Bool)

(assert (=> d!1609950 (= lt!2068900 e!3125156)))

(declare-fun res!2133995 () Bool)

(assert (=> d!1609950 (=> res!2133995 e!3125156)))

(assert (=> d!1609950 (= res!2133995 (is-Nil!57826 (_1!34785 lt!2068467)))))

(assert (=> d!1609950 (= (isPrefix!5335 (_1!34785 lt!2068467) lt!2068476) lt!2068900)))

(declare-fun b!5001203 () Bool)

(declare-fun res!2133997 () Bool)

(declare-fun e!3125157 () Bool)

(assert (=> b!5001203 (=> (not res!2133997) (not e!3125157))))

(assert (=> b!5001203 (= res!2133997 (= (head!10724 (_1!34785 lt!2068467)) (head!10724 lt!2068476)))))

(declare-fun b!5001204 () Bool)

(assert (=> b!5001204 (= e!3125157 (isPrefix!5335 (tail!9857 (_1!34785 lt!2068467)) (tail!9857 lt!2068476)))))

(declare-fun b!5001202 () Bool)

(assert (=> b!5001202 (= e!3125156 e!3125157)))

(declare-fun res!2133998 () Bool)

(assert (=> b!5001202 (=> (not res!2133998) (not e!3125157))))

(assert (=> b!5001202 (= res!2133998 (not (is-Nil!57826 lt!2068476)))))

(declare-fun b!5001205 () Bool)

(assert (=> b!5001205 (= e!3125158 (>= (size!38430 lt!2068476) (size!38430 (_1!34785 lt!2068467))))))

(assert (= (and d!1609950 (not res!2133995)) b!5001202))

(assert (= (and b!5001202 res!2133998) b!5001203))

(assert (= (and b!5001203 res!2133997) b!5001204))

(assert (= (and d!1609950 (not res!2133996)) b!5001205))

(assert (=> b!5001203 m!6034386))

(declare-fun m!6034836 () Bool)

(assert (=> b!5001203 m!6034836))

(assert (=> b!5001204 m!6034390))

(declare-fun m!6034838 () Bool)

(assert (=> b!5001204 m!6034838))

(assert (=> b!5001204 m!6034390))

(assert (=> b!5001204 m!6034838))

(declare-fun m!6034840 () Bool)

(assert (=> b!5001204 m!6034840))

(declare-fun m!6034842 () Bool)

(assert (=> b!5001205 m!6034842))

(assert (=> b!5001205 m!6034086))

(assert (=> b!5000588 d!1609950))

(declare-fun d!1609952 () Bool)

(assert (=> d!1609952 (isPrefix!5335 (take!641 lt!2068471 lt!2068465) lt!2068471)))

(declare-fun lt!2068903 () Unit!148985)

(declare-fun choose!36965 (List!57950 Int) Unit!148985)

(assert (=> d!1609952 (= lt!2068903 (choose!36965 lt!2068471 lt!2068465))))

(assert (=> d!1609952 (>= lt!2068465 0)))

(assert (=> d!1609952 (= (lemmaTakeIsPrefix!135 lt!2068471 lt!2068465) lt!2068903)))

(declare-fun bs!1185767 () Bool)

(assert (= bs!1185767 d!1609952))

(assert (=> bs!1185767 m!6034132))

(assert (=> bs!1185767 m!6034132))

(assert (=> bs!1185767 m!6034138))

(declare-fun m!6034844 () Bool)

(assert (=> bs!1185767 m!6034844))

(assert (=> b!5000588 d!1609952))

(declare-fun d!1609954 () Bool)

(declare-fun e!3125164 () Bool)

(assert (=> d!1609954 e!3125164))

(declare-fun res!2134004 () Bool)

(assert (=> d!1609954 (=> res!2134004 e!3125164)))

(assert (=> d!1609954 (= res!2134004 (= (findLongestMatchInnerZipperFastV2!122 z!4183 lt!2068465 totalInput!1012 (size!38431 totalInput!1012)) 0))))

(declare-fun lt!2068906 () Unit!148985)

(declare-fun choose!36966 ((Set Context!6414) Int BalanceConc!30032) Unit!148985)

(assert (=> d!1609954 (= lt!2068906 (choose!36966 z!4183 lt!2068465 totalInput!1012))))

(declare-fun e!3125163 () Bool)

(assert (=> d!1609954 e!3125163))

(declare-fun res!2134003 () Bool)

(assert (=> d!1609954 (=> (not res!2134003) (not e!3125163))))

(assert (=> d!1609954 (= res!2134003 (>= lt!2068465 0))))

(assert (=> d!1609954 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!41 z!4183 lt!2068465 totalInput!1012) lt!2068906)))

(declare-fun b!5001210 () Bool)

(assert (=> b!5001210 (= e!3125163 (<= lt!2068465 (size!38431 totalInput!1012)))))

(declare-fun b!5001211 () Bool)

(assert (=> b!5001211 (= e!3125164 (matchZipper!550 z!4183 (take!641 (drop!2445 (list!18603 totalInput!1012) lt!2068465) (findLongestMatchInnerZipperFastV2!122 z!4183 lt!2068465 totalInput!1012 (size!38431 totalInput!1012)))))))

(assert (= (and d!1609954 res!2134003) b!5001210))

(assert (= (and d!1609954 (not res!2134004)) b!5001211))

(assert (=> d!1609954 m!6034078))

(assert (=> d!1609954 m!6034078))

(declare-fun m!6034846 () Bool)

(assert (=> d!1609954 m!6034846))

(declare-fun m!6034848 () Bool)

(assert (=> d!1609954 m!6034848))

(assert (=> b!5001210 m!6034078))

(assert (=> b!5001211 m!6034078))

(assert (=> b!5001211 m!6034846))

(assert (=> b!5001211 m!6034102))

(declare-fun m!6034850 () Bool)

(assert (=> b!5001211 m!6034850))

(assert (=> b!5001211 m!6034850))

(assert (=> b!5001211 m!6034846))

(declare-fun m!6034852 () Bool)

(assert (=> b!5001211 m!6034852))

(assert (=> b!5001211 m!6034078))

(assert (=> b!5001211 m!6034102))

(assert (=> b!5001211 m!6034852))

(declare-fun m!6034854 () Bool)

(assert (=> b!5001211 m!6034854))

(assert (=> b!5000588 d!1609954))

(declare-fun d!1609956 () Bool)

(declare-fun c!853569 () Bool)

(assert (=> d!1609956 (= c!853569 (isEmpty!31298 lt!2068468))))

(declare-fun e!3125165 () Bool)

(assert (=> d!1609956 (= (matchZipper!550 z!4183 lt!2068468) e!3125165)))

(declare-fun b!5001212 () Bool)

(assert (=> b!5001212 (= e!3125165 (nullableZipper!875 z!4183))))

(declare-fun b!5001213 () Bool)

(assert (=> b!5001213 (= e!3125165 (matchZipper!550 (derivationStepZipper!624 z!4183 (head!10724 lt!2068468)) (tail!9857 lt!2068468)))))

(assert (= (and d!1609956 c!853569) b!5001212))

(assert (= (and d!1609956 (not c!853569)) b!5001213))

(assert (=> d!1609956 m!6034370))

(assert (=> b!5001212 m!6034384))

(assert (=> b!5001213 m!6034372))

(assert (=> b!5001213 m!6034372))

(declare-fun m!6034856 () Bool)

(assert (=> b!5001213 m!6034856))

(assert (=> b!5001213 m!6034376))

(assert (=> b!5001213 m!6034856))

(assert (=> b!5001213 m!6034376))

(declare-fun m!6034858 () Bool)

(assert (=> b!5001213 m!6034858))

(assert (=> b!5000588 d!1609956))

(declare-fun d!1609958 () Bool)

(declare-fun c!853570 () Bool)

(assert (=> d!1609958 (= c!853570 (is-Node!15301 (c!853395 input!5597)))))

(declare-fun e!3125166 () Bool)

(assert (=> d!1609958 (= (inv!75949 (c!853395 input!5597)) e!3125166)))

(declare-fun b!5001214 () Bool)

(assert (=> b!5001214 (= e!3125166 (inv!75955 (c!853395 input!5597)))))

(declare-fun b!5001215 () Bool)

(declare-fun e!3125167 () Bool)

(assert (=> b!5001215 (= e!3125166 e!3125167)))

(declare-fun res!2134005 () Bool)

(assert (=> b!5001215 (= res!2134005 (not (is-Leaf!25401 (c!853395 input!5597))))))

(assert (=> b!5001215 (=> res!2134005 e!3125167)))

(declare-fun b!5001216 () Bool)

(assert (=> b!5001216 (= e!3125167 (inv!75956 (c!853395 input!5597)))))

(assert (= (and d!1609958 c!853570) b!5001214))

(assert (= (and d!1609958 (not c!853570)) b!5001215))

(assert (= (and b!5001215 (not res!2134005)) b!5001216))

(declare-fun m!6034860 () Bool)

(assert (=> b!5001214 m!6034860))

(declare-fun m!6034862 () Bool)

(assert (=> b!5001216 m!6034862))

(assert (=> b!5000590 d!1609958))

(declare-fun b!5001235 () Bool)

(declare-fun e!3125188 () Bool)

(declare-fun call!349064 () Bool)

(assert (=> b!5001235 (= e!3125188 call!349064)))

(declare-fun b!5001236 () Bool)

(declare-fun e!3125187 () Bool)

(declare-fun e!3125186 () Bool)

(assert (=> b!5001236 (= e!3125187 e!3125186)))

(declare-fun c!853576 () Bool)

(assert (=> b!5001236 (= c!853576 (is-Union!13782 r!12727))))

(declare-fun bm!349058 () Bool)

(declare-fun call!349065 () Bool)

(assert (=> bm!349058 (= call!349064 call!349065)))

(declare-fun b!5001237 () Bool)

(declare-fun e!3125182 () Bool)

(declare-fun call!349063 () Bool)

(assert (=> b!5001237 (= e!3125182 call!349063)))

(declare-fun b!5001238 () Bool)

(declare-fun e!3125183 () Bool)

(assert (=> b!5001238 (= e!3125183 e!3125188)))

(declare-fun res!2134018 () Bool)

(assert (=> b!5001238 (=> (not res!2134018) (not e!3125188))))

(assert (=> b!5001238 (= res!2134018 call!349063)))

(declare-fun b!5001239 () Bool)

(declare-fun e!3125185 () Bool)

(assert (=> b!5001239 (= e!3125185 e!3125187)))

(declare-fun c!853575 () Bool)

(assert (=> b!5001239 (= c!853575 (is-Star!13782 r!12727))))

(declare-fun b!5001240 () Bool)

(declare-fun res!2134016 () Bool)

(assert (=> b!5001240 (=> res!2134016 e!3125183)))

(assert (=> b!5001240 (= res!2134016 (not (is-Concat!22575 r!12727)))))

(assert (=> b!5001240 (= e!3125186 e!3125183)))

(declare-fun b!5001241 () Bool)

(declare-fun e!3125184 () Bool)

(assert (=> b!5001241 (= e!3125184 call!349065)))

(declare-fun bm!349059 () Bool)

(assert (=> bm!349059 (= call!349065 (validRegex!6079 (ite c!853575 (reg!14111 r!12727) (ite c!853576 (regOne!28077 r!12727) (regTwo!28076 r!12727)))))))

(declare-fun b!5001242 () Bool)

(assert (=> b!5001242 (= e!3125187 e!3125184)))

(declare-fun res!2134019 () Bool)

(assert (=> b!5001242 (= res!2134019 (not (nullable!4680 (reg!14111 r!12727))))))

(assert (=> b!5001242 (=> (not res!2134019) (not e!3125184))))

(declare-fun d!1609960 () Bool)

(declare-fun res!2134020 () Bool)

(assert (=> d!1609960 (=> res!2134020 e!3125185)))

(assert (=> d!1609960 (= res!2134020 (is-ElementMatch!13782 r!12727))))

(assert (=> d!1609960 (= (validRegex!6079 r!12727) e!3125185)))

(declare-fun b!5001243 () Bool)

(declare-fun res!2134017 () Bool)

(assert (=> b!5001243 (=> (not res!2134017) (not e!3125182))))

(assert (=> b!5001243 (= res!2134017 call!349064)))

(assert (=> b!5001243 (= e!3125186 e!3125182)))

(declare-fun bm!349060 () Bool)

(assert (=> bm!349060 (= call!349063 (validRegex!6079 (ite c!853576 (regTwo!28077 r!12727) (regOne!28076 r!12727))))))

(assert (= (and d!1609960 (not res!2134020)) b!5001239))

(assert (= (and b!5001239 c!853575) b!5001242))

(assert (= (and b!5001239 (not c!853575)) b!5001236))

(assert (= (and b!5001242 res!2134019) b!5001241))

(assert (= (and b!5001236 c!853576) b!5001243))

(assert (= (and b!5001236 (not c!853576)) b!5001240))

(assert (= (and b!5001243 res!2134017) b!5001237))

(assert (= (and b!5001240 (not res!2134016)) b!5001238))

(assert (= (and b!5001238 res!2134018) b!5001235))

(assert (= (or b!5001237 b!5001238) bm!349060))

(assert (= (or b!5001243 b!5001235) bm!349058))

(assert (= (or b!5001241 bm!349058) bm!349059))

(declare-fun m!6034864 () Bool)

(assert (=> bm!349059 m!6034864))

(declare-fun m!6034866 () Bool)

(assert (=> b!5001242 m!6034866))

(declare-fun m!6034868 () Bool)

(assert (=> bm!349060 m!6034868))

(assert (=> start!528424 d!1609960))

(declare-fun d!1609962 () Bool)

(declare-fun isBalanced!4263 (Conc!15301) Bool)

(assert (=> d!1609962 (= (inv!75951 input!5597) (isBalanced!4263 (c!853395 input!5597)))))

(declare-fun bs!1185768 () Bool)

(assert (= bs!1185768 d!1609962))

(declare-fun m!6034870 () Bool)

(assert (=> bs!1185768 m!6034870))

(assert (=> start!528424 d!1609962))

(declare-fun d!1609964 () Bool)

(assert (=> d!1609964 (= (inv!75951 totalInput!1012) (isBalanced!4263 (c!853395 totalInput!1012)))))

(declare-fun bs!1185769 () Bool)

(assert (= bs!1185769 d!1609964))

(declare-fun m!6034872 () Bool)

(assert (=> bs!1185769 m!6034872))

(assert (=> start!528424 d!1609964))

(declare-fun b!5001244 () Bool)

(declare-fun res!2134027 () Bool)

(declare-fun e!3125194 () Bool)

(assert (=> b!5001244 (=> (not res!2134027) (not e!3125194))))

(assert (=> b!5001244 (= res!2134027 (isEmpty!31298 (tail!9857 (_1!34785 lt!2068477))))))

(declare-fun d!1609966 () Bool)

(declare-fun e!3125195 () Bool)

(assert (=> d!1609966 e!3125195))

(declare-fun c!853577 () Bool)

(assert (=> d!1609966 (= c!853577 (is-EmptyExpr!13782 r!12727))))

(declare-fun lt!2068907 () Bool)

(declare-fun e!3125193 () Bool)

(assert (=> d!1609966 (= lt!2068907 e!3125193)))

(declare-fun c!853579 () Bool)

(assert (=> d!1609966 (= c!853579 (isEmpty!31298 (_1!34785 lt!2068477)))))

(assert (=> d!1609966 (validRegex!6079 r!12727)))

(assert (=> d!1609966 (= (matchR!6746 r!12727 (_1!34785 lt!2068477)) lt!2068907)))

(declare-fun bm!349061 () Bool)

(declare-fun call!349066 () Bool)

(assert (=> bm!349061 (= call!349066 (isEmpty!31298 (_1!34785 lt!2068477)))))

(declare-fun b!5001245 () Bool)

(assert (=> b!5001245 (= e!3125193 (matchR!6746 (derivativeStep!3970 r!12727 (head!10724 (_1!34785 lt!2068477))) (tail!9857 (_1!34785 lt!2068477))))))

(declare-fun b!5001246 () Bool)

(assert (=> b!5001246 (= e!3125193 (nullable!4680 r!12727))))

(declare-fun b!5001247 () Bool)

(assert (=> b!5001247 (= e!3125195 (= lt!2068907 call!349066))))

(declare-fun b!5001248 () Bool)

(declare-fun e!3125191 () Bool)

(assert (=> b!5001248 (= e!3125191 (not lt!2068907))))

(declare-fun b!5001249 () Bool)

(declare-fun res!2134026 () Bool)

(declare-fun e!3125190 () Bool)

(assert (=> b!5001249 (=> res!2134026 e!3125190)))

(assert (=> b!5001249 (= res!2134026 (not (is-ElementMatch!13782 r!12727)))))

(assert (=> b!5001249 (= e!3125191 e!3125190)))

(declare-fun b!5001250 () Bool)

(assert (=> b!5001250 (= e!3125195 e!3125191)))

(declare-fun c!853578 () Bool)

(assert (=> b!5001250 (= c!853578 (is-EmptyLang!13782 r!12727))))

(declare-fun b!5001251 () Bool)

(assert (=> b!5001251 (= e!3125194 (= (head!10724 (_1!34785 lt!2068477)) (c!853396 r!12727)))))

(declare-fun b!5001252 () Bool)

(declare-fun e!3125192 () Bool)

(declare-fun e!3125189 () Bool)

(assert (=> b!5001252 (= e!3125192 e!3125189)))

(declare-fun res!2134022 () Bool)

(assert (=> b!5001252 (=> res!2134022 e!3125189)))

(assert (=> b!5001252 (= res!2134022 call!349066)))

(declare-fun b!5001253 () Bool)

(declare-fun res!2134021 () Bool)

(assert (=> b!5001253 (=> res!2134021 e!3125189)))

(assert (=> b!5001253 (= res!2134021 (not (isEmpty!31298 (tail!9857 (_1!34785 lt!2068477)))))))

(declare-fun b!5001254 () Bool)

(assert (=> b!5001254 (= e!3125190 e!3125192)))

(declare-fun res!2134024 () Bool)

(assert (=> b!5001254 (=> (not res!2134024) (not e!3125192))))

(assert (=> b!5001254 (= res!2134024 (not lt!2068907))))

(declare-fun b!5001255 () Bool)

(declare-fun res!2134023 () Bool)

(assert (=> b!5001255 (=> res!2134023 e!3125190)))

(assert (=> b!5001255 (= res!2134023 e!3125194)))

(declare-fun res!2134025 () Bool)

(assert (=> b!5001255 (=> (not res!2134025) (not e!3125194))))

(assert (=> b!5001255 (= res!2134025 lt!2068907)))

(declare-fun b!5001256 () Bool)

(assert (=> b!5001256 (= e!3125189 (not (= (head!10724 (_1!34785 lt!2068477)) (c!853396 r!12727))))))

(declare-fun b!5001257 () Bool)

(declare-fun res!2134028 () Bool)

(assert (=> b!5001257 (=> (not res!2134028) (not e!3125194))))

(assert (=> b!5001257 (= res!2134028 (not call!349066))))

(assert (= (and d!1609966 c!853579) b!5001246))

(assert (= (and d!1609966 (not c!853579)) b!5001245))

(assert (= (and d!1609966 c!853577) b!5001247))

(assert (= (and d!1609966 (not c!853577)) b!5001250))

(assert (= (and b!5001250 c!853578) b!5001248))

(assert (= (and b!5001250 (not c!853578)) b!5001249))

(assert (= (and b!5001249 (not res!2134026)) b!5001255))

(assert (= (and b!5001255 res!2134025) b!5001257))

(assert (= (and b!5001257 res!2134028) b!5001244))

(assert (= (and b!5001244 res!2134027) b!5001251))

(assert (= (and b!5001255 (not res!2134023)) b!5001254))

(assert (= (and b!5001254 res!2134024) b!5001252))

(assert (= (and b!5001252 (not res!2134022)) b!5001253))

(assert (= (and b!5001253 (not res!2134021)) b!5001256))

(assert (= (or b!5001247 b!5001252 b!5001257) bm!349061))

(assert (=> bm!349061 m!6034128))

(declare-fun m!6034874 () Bool)

(assert (=> b!5001245 m!6034874))

(assert (=> b!5001245 m!6034874))

(declare-fun m!6034876 () Bool)

(assert (=> b!5001245 m!6034876))

(declare-fun m!6034878 () Bool)

(assert (=> b!5001245 m!6034878))

(assert (=> b!5001245 m!6034876))

(assert (=> b!5001245 m!6034878))

(declare-fun m!6034880 () Bool)

(assert (=> b!5001245 m!6034880))

(assert (=> b!5001253 m!6034878))

(assert (=> b!5001253 m!6034878))

(declare-fun m!6034882 () Bool)

(assert (=> b!5001253 m!6034882))

(assert (=> d!1609966 m!6034128))

(assert (=> d!1609966 m!6034148))

(assert (=> b!5001251 m!6034874))

(assert (=> b!5001244 m!6034878))

(assert (=> b!5001244 m!6034878))

(assert (=> b!5001244 m!6034882))

(assert (=> b!5001256 m!6034874))

(assert (=> b!5001246 m!6034382))

(assert (=> b!5000599 d!1609966))

(declare-fun b!5001268 () Bool)

(declare-fun e!3125198 () Bool)

(assert (=> b!5001268 (= e!3125198 tp_is_empty!36561)))

(assert (=> b!5000601 (= tp!1402670 e!3125198)))

(declare-fun b!5001269 () Bool)

(declare-fun tp!1402714 () Bool)

(declare-fun tp!1402712 () Bool)

(assert (=> b!5001269 (= e!3125198 (and tp!1402714 tp!1402712))))

(declare-fun b!5001271 () Bool)

(declare-fun tp!1402713 () Bool)

(declare-fun tp!1402715 () Bool)

(assert (=> b!5001271 (= e!3125198 (and tp!1402713 tp!1402715))))

(declare-fun b!5001270 () Bool)

(declare-fun tp!1402711 () Bool)

(assert (=> b!5001270 (= e!3125198 tp!1402711)))

(assert (= (and b!5000601 (is-ElementMatch!13782 (regOne!28076 r!12727))) b!5001268))

(assert (= (and b!5000601 (is-Concat!22575 (regOne!28076 r!12727))) b!5001269))

(assert (= (and b!5000601 (is-Star!13782 (regOne!28076 r!12727))) b!5001270))

(assert (= (and b!5000601 (is-Union!13782 (regOne!28076 r!12727))) b!5001271))

(declare-fun b!5001272 () Bool)

(declare-fun e!3125199 () Bool)

(assert (=> b!5001272 (= e!3125199 tp_is_empty!36561)))

(assert (=> b!5000601 (= tp!1402667 e!3125199)))

(declare-fun b!5001273 () Bool)

(declare-fun tp!1402719 () Bool)

(declare-fun tp!1402717 () Bool)

(assert (=> b!5001273 (= e!3125199 (and tp!1402719 tp!1402717))))

(declare-fun b!5001275 () Bool)

(declare-fun tp!1402718 () Bool)

(declare-fun tp!1402720 () Bool)

(assert (=> b!5001275 (= e!3125199 (and tp!1402718 tp!1402720))))

(declare-fun b!5001274 () Bool)

(declare-fun tp!1402716 () Bool)

(assert (=> b!5001274 (= e!3125199 tp!1402716)))

(assert (= (and b!5000601 (is-ElementMatch!13782 (regTwo!28076 r!12727))) b!5001272))

(assert (= (and b!5000601 (is-Concat!22575 (regTwo!28076 r!12727))) b!5001273))

(assert (= (and b!5000601 (is-Star!13782 (regTwo!28076 r!12727))) b!5001274))

(assert (= (and b!5000601 (is-Union!13782 (regTwo!28076 r!12727))) b!5001275))

(declare-fun condSetEmpty!28355 () Bool)

(assert (=> setNonEmpty!28349 (= condSetEmpty!28355 (= setRest!28349 (as set.empty (Set Context!6414))))))

(declare-fun setRes!28355 () Bool)

(assert (=> setNonEmpty!28349 (= tp!1402668 setRes!28355)))

(declare-fun setIsEmpty!28355 () Bool)

(assert (=> setIsEmpty!28355 setRes!28355))

(declare-fun setElem!28355 () Context!6414)

(declare-fun tp!1402725 () Bool)

(declare-fun e!3125202 () Bool)

(declare-fun setNonEmpty!28355 () Bool)

(assert (=> setNonEmpty!28355 (= setRes!28355 (and tp!1402725 (inv!75950 setElem!28355) e!3125202))))

(declare-fun setRest!28355 () (Set Context!6414))

(assert (=> setNonEmpty!28355 (= setRest!28349 (set.union (set.insert setElem!28355 (as set.empty (Set Context!6414))) setRest!28355))))

(declare-fun b!5001280 () Bool)

(declare-fun tp!1402726 () Bool)

(assert (=> b!5001280 (= e!3125202 tp!1402726)))

(assert (= (and setNonEmpty!28349 condSetEmpty!28355) setIsEmpty!28355))

(assert (= (and setNonEmpty!28349 (not condSetEmpty!28355)) setNonEmpty!28355))

(assert (= setNonEmpty!28355 b!5001280))

(declare-fun m!6034884 () Bool)

(assert (=> setNonEmpty!28355 m!6034884))

(declare-fun b!5001281 () Bool)

(declare-fun e!3125203 () Bool)

(assert (=> b!5001281 (= e!3125203 tp_is_empty!36561)))

(assert (=> b!5000595 (= tp!1402672 e!3125203)))

(declare-fun b!5001282 () Bool)

(declare-fun tp!1402730 () Bool)

(declare-fun tp!1402728 () Bool)

(assert (=> b!5001282 (= e!3125203 (and tp!1402730 tp!1402728))))

(declare-fun b!5001284 () Bool)

(declare-fun tp!1402729 () Bool)

(declare-fun tp!1402731 () Bool)

(assert (=> b!5001284 (= e!3125203 (and tp!1402729 tp!1402731))))

(declare-fun b!5001283 () Bool)

(declare-fun tp!1402727 () Bool)

(assert (=> b!5001283 (= e!3125203 tp!1402727)))

(assert (= (and b!5000595 (is-ElementMatch!13782 (regOne!28077 r!12727))) b!5001281))

(assert (= (and b!5000595 (is-Concat!22575 (regOne!28077 r!12727))) b!5001282))

(assert (= (and b!5000595 (is-Star!13782 (regOne!28077 r!12727))) b!5001283))

(assert (= (and b!5000595 (is-Union!13782 (regOne!28077 r!12727))) b!5001284))

(declare-fun b!5001285 () Bool)

(declare-fun e!3125204 () Bool)

(assert (=> b!5001285 (= e!3125204 tp_is_empty!36561)))

(assert (=> b!5000595 (= tp!1402669 e!3125204)))

(declare-fun b!5001286 () Bool)

(declare-fun tp!1402735 () Bool)

(declare-fun tp!1402733 () Bool)

(assert (=> b!5001286 (= e!3125204 (and tp!1402735 tp!1402733))))

(declare-fun b!5001288 () Bool)

(declare-fun tp!1402734 () Bool)

(declare-fun tp!1402736 () Bool)

(assert (=> b!5001288 (= e!3125204 (and tp!1402734 tp!1402736))))

(declare-fun b!5001287 () Bool)

(declare-fun tp!1402732 () Bool)

(assert (=> b!5001287 (= e!3125204 tp!1402732)))

(assert (= (and b!5000595 (is-ElementMatch!13782 (regTwo!28077 r!12727))) b!5001285))

(assert (= (and b!5000595 (is-Concat!22575 (regTwo!28077 r!12727))) b!5001286))

(assert (= (and b!5000595 (is-Star!13782 (regTwo!28077 r!12727))) b!5001287))

(assert (= (and b!5000595 (is-Union!13782 (regTwo!28077 r!12727))) b!5001288))

(declare-fun b!5001289 () Bool)

(declare-fun e!3125205 () Bool)

(assert (=> b!5001289 (= e!3125205 tp_is_empty!36561)))

(assert (=> b!5000600 (= tp!1402666 e!3125205)))

(declare-fun b!5001290 () Bool)

(declare-fun tp!1402740 () Bool)

(declare-fun tp!1402738 () Bool)

(assert (=> b!5001290 (= e!3125205 (and tp!1402740 tp!1402738))))

(declare-fun b!5001292 () Bool)

(declare-fun tp!1402739 () Bool)

(declare-fun tp!1402741 () Bool)

(assert (=> b!5001292 (= e!3125205 (and tp!1402739 tp!1402741))))

(declare-fun b!5001291 () Bool)

(declare-fun tp!1402737 () Bool)

(assert (=> b!5001291 (= e!3125205 tp!1402737)))

(assert (= (and b!5000600 (is-ElementMatch!13782 (reg!14111 r!12727))) b!5001289))

(assert (= (and b!5000600 (is-Concat!22575 (reg!14111 r!12727))) b!5001290))

(assert (= (and b!5000600 (is-Star!13782 (reg!14111 r!12727))) b!5001291))

(assert (= (and b!5000600 (is-Union!13782 (reg!14111 r!12727))) b!5001292))

(declare-fun b!5001301 () Bool)

(declare-fun tp!1402750 () Bool)

(declare-fun e!3125210 () Bool)

(declare-fun tp!1402749 () Bool)

(assert (=> b!5001301 (= e!3125210 (and (inv!75949 (left!42286 (c!853395 totalInput!1012))) tp!1402749 (inv!75949 (right!42616 (c!853395 totalInput!1012))) tp!1402750))))

(declare-fun b!5001303 () Bool)

(declare-fun e!3125211 () Bool)

(declare-fun tp!1402748 () Bool)

(assert (=> b!5001303 (= e!3125211 tp!1402748)))

(declare-fun b!5001302 () Bool)

(declare-fun inv!75959 (IArray!30663) Bool)

(assert (=> b!5001302 (= e!3125210 (and (inv!75959 (xs!18627 (c!853395 totalInput!1012))) e!3125211))))

(assert (=> b!5000591 (= tp!1402665 (and (inv!75949 (c!853395 totalInput!1012)) e!3125210))))

(assert (= (and b!5000591 (is-Node!15301 (c!853395 totalInput!1012))) b!5001301))

(assert (= b!5001302 b!5001303))

(assert (= (and b!5000591 (is-Leaf!25401 (c!853395 totalInput!1012))) b!5001302))

(declare-fun m!6034886 () Bool)

(assert (=> b!5001301 m!6034886))

(declare-fun m!6034888 () Bool)

(assert (=> b!5001301 m!6034888))

(declare-fun m!6034890 () Bool)

(assert (=> b!5001302 m!6034890))

(assert (=> b!5000591 m!6034156))

(declare-fun b!5001308 () Bool)

(declare-fun e!3125214 () Bool)

(declare-fun tp!1402755 () Bool)

(declare-fun tp!1402756 () Bool)

(assert (=> b!5001308 (= e!3125214 (and tp!1402755 tp!1402756))))

(assert (=> b!5000592 (= tp!1402671 e!3125214)))

(assert (= (and b!5000592 (is-Cons!57827 (exprs!3707 setElem!28349))) b!5001308))

(declare-fun b!5001309 () Bool)

(declare-fun e!3125215 () Bool)

(declare-fun tp!1402758 () Bool)

(declare-fun tp!1402759 () Bool)

(assert (=> b!5001309 (= e!3125215 (and (inv!75949 (left!42286 (c!853395 input!5597))) tp!1402758 (inv!75949 (right!42616 (c!853395 input!5597))) tp!1402759))))

(declare-fun b!5001311 () Bool)

(declare-fun e!3125216 () Bool)

(declare-fun tp!1402757 () Bool)

(assert (=> b!5001311 (= e!3125216 tp!1402757)))

(declare-fun b!5001310 () Bool)

(assert (=> b!5001310 (= e!3125215 (and (inv!75959 (xs!18627 (c!853395 input!5597))) e!3125216))))

(assert (=> b!5000590 (= tp!1402673 (and (inv!75949 (c!853395 input!5597)) e!3125215))))

(assert (= (and b!5000590 (is-Node!15301 (c!853395 input!5597))) b!5001309))

(assert (= b!5001310 b!5001311))

(assert (= (and b!5000590 (is-Leaf!25401 (c!853395 input!5597))) b!5001310))

(declare-fun m!6034892 () Bool)

(assert (=> b!5001309 m!6034892))

(declare-fun m!6034894 () Bool)

(assert (=> b!5001309 m!6034894))

(declare-fun m!6034896 () Bool)

(assert (=> b!5001310 m!6034896))

(assert (=> b!5000590 m!6034106))

(push 1)

(assert (not b!5000698))

(assert tp_is_empty!36561)

(assert (not b!5001302))

(assert (not b!5000990))

(assert (not b!5001128))

(assert (not b!5001192))

(assert (not d!1609806))

(assert (not b!5001286))

(assert (not b!5001124))

(assert (not d!1609848))

(assert (not b!5001244))

(assert (not b!5001301))

(assert (not b!5001187))

(assert (not bm!348989))

(assert (not b!5000823))

(assert (not b!5000725))

(assert (not b!5000768))

(assert (not b!5001129))

(assert (not b!5000766))

(assert (not b!5000767))

(assert (not b!5001205))

(assert (not d!1609902))

(assert (not d!1609792))

(assert (not b!5000796))

(assert (not b!5001270))

(assert (not b!5000827))

(assert (not d!1609956))

(assert (not b!5001213))

(assert (not b!5001245))

(assert (not b!5001021))

(assert (not d!1609948))

(assert (not b!5000850))

(assert (not b!5001091))

(assert (not b!5001214))

(assert (not d!1609954))

(assert (not b!5001126))

(assert (not d!1609846))

(assert (not b!5001242))

(assert (not b!5001256))

(assert (not b!5001019))

(assert (not b!5001291))

(assert (not b!5000591))

(assert (not b!5001031))

(assert (not d!1609898))

(assert (not d!1609794))

(assert (not b!5001274))

(assert (not b!5001273))

(assert (not b!5001311))

(assert (not d!1609964))

(assert (not b!5001201))

(assert (not d!1609842))

(assert (not b!5000590))

(assert (not b!5001090))

(assert (not b!5000797))

(assert (not d!1609802))

(assert (not b!5001029))

(assert (not b!5001210))

(assert (not b!5001308))

(assert (not d!1609952))

(assert (not b!5001269))

(assert (not b!5000856))

(assert (not d!1609812))

(assert (not bm!348986))

(assert (not b!5001024))

(assert (not d!1609856))

(assert (not b!5001199))

(assert (not b!5001212))

(assert (not b!5001290))

(assert (not b!5001251))

(assert (not b!5001271))

(assert (not bm!349045))

(assert (not b!5001022))

(assert (not b!5000778))

(assert (not b!5001287))

(assert (not b!5001023))

(assert (not b!5000791))

(assert (not bm!349027))

(assert (not b!5001125))

(assert (not b!5001309))

(assert (not bm!349044))

(assert (not b!5001047))

(assert (not d!1609942))

(assert (not bm!349050))

(assert (not b!5001122))

(assert (not d!1609824))

(assert (not d!1609966))

(assert (not d!1609962))

(assert (not b!5000773))

(assert (not d!1609890))

(assert (not b!5001310))

(assert (not bm!349059))

(assert (not b!5001008))

(assert (not b!5001282))

(assert (not bm!349049))

(assert (not b!5001288))

(assert (not b!5001211))

(assert (not b!5000991))

(assert (not d!1609840))

(assert (not b!5001046))

(assert (not b!5001284))

(assert (not b!5001120))

(assert (not d!1609850))

(assert (not d!1609796))

(assert (not setNonEmpty!28355))

(assert (not d!1609826))

(assert (not bm!349060))

(assert (not b!5001275))

(assert (not d!1609940))

(assert (not d!1609892))

(assert (not b!5001007))

(assert (not bm!349048))

(assert (not b!5001045))

(assert (not d!1609804))

(assert (not d!1609814))

(assert (not bm!349061))

(assert (not bm!349051))

(assert (not b!5001216))

(assert (not bm!349046))

(assert (not d!1609920))

(assert (not b!5000775))

(assert (not b!5000822))

(assert (not d!1609808))

(assert (not b!5000821))

(assert (not b!5001283))

(assert (not b!5001253))

(assert (not b!5001197))

(assert (not b!5001127))

(assert (not b!5000705))

(assert (not b!5000686))

(assert (not b!5001246))

(assert (not d!1609838))

(assert (not d!1609798))

(assert (not b!5001092))

(assert (not b!5001280))

(assert (not b!5001012))

(assert (not b!5001006))

(assert (not b!5001034))

(assert (not b!5001303))

(assert (not d!1609820))

(assert (not b!5001292))

(assert (not b!5000790))

(assert (not b!5000687))

(assert (not b!5001203))

(assert (not bm!349047))

(assert (not d!1609828))

(assert (not d!1609818))

(assert (not b!5001095))

(assert (not b!5001133))

(assert (not b!5001204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

