; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209586 () Bool)

(assert start!209586)

(declare-fun b!2159792 () Bool)

(declare-fun e!1381883 () Bool)

(declare-fun tp_is_empty!9529 () Bool)

(assert (=> b!2159792 (= e!1381883 tp_is_empty!9529)))

(declare-fun b!2159793 () Bool)

(declare-fun tp!673567 () Bool)

(declare-fun tp!673565 () Bool)

(assert (=> b!2159793 (= e!1381883 (and tp!673567 tp!673565))))

(declare-fun b!2159794 () Bool)

(declare-fun e!1381885 () Bool)

(declare-fun tp!673566 () Bool)

(assert (=> b!2159794 (= e!1381885 tp!673566)))

(declare-fun res!930594 () Bool)

(declare-fun e!1381884 () Bool)

(assert (=> start!209586 (=> (not res!930594) (not e!1381884))))

(declare-datatypes ((C!12068 0))(
  ( (C!12069 (val!7020 Int)) )
))
(declare-datatypes ((Regex!5961 0))(
  ( (ElementMatch!5961 (c!341858 C!12068)) (Concat!10263 (regOne!12434 Regex!5961) (regTwo!12434 Regex!5961)) (EmptyExpr!5961) (Star!5961 (reg!6290 Regex!5961)) (EmptyLang!5961) (Union!5961 (regOne!12435 Regex!5961) (regTwo!12435 Regex!5961)) )
))
(declare-fun r!12534 () Regex!5961)

(declare-fun validRegex!2237 (Regex!5961) Bool)

(assert (=> start!209586 (= res!930594 (validRegex!2237 r!12534))))

(assert (=> start!209586 e!1381884))

(assert (=> start!209586 e!1381883))

(declare-fun condSetEmpty!17992 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25096 0))(
  ( (Nil!25012) (Cons!25012 (h!30413 Regex!5961) (t!197644 List!25096)) )
))
(declare-datatypes ((Context!3062 0))(
  ( (Context!3063 (exprs!2031 List!25096)) )
))
(declare-fun z!4055 () (InoxSet Context!3062))

(assert (=> start!209586 (= condSetEmpty!17992 (= z!4055 ((as const (Array Context!3062 Bool)) false)))))

(declare-fun setRes!17992 () Bool)

(assert (=> start!209586 setRes!17992))

(declare-datatypes ((List!25097 0))(
  ( (Nil!25013) (Cons!25013 (h!30414 C!12068) (t!197645 List!25097)) )
))
(declare-datatypes ((IArray!16199 0))(
  ( (IArray!16200 (innerList!8157 List!25097)) )
))
(declare-datatypes ((Conc!8097 0))(
  ( (Node!8097 (left!19256 Conc!8097) (right!19586 Conc!8097) (csize!16424 Int) (cheight!8308 Int)) (Leaf!11845 (xs!11039 IArray!16199) (csize!16425 Int)) (Empty!8097) )
))
(declare-datatypes ((BalanceConc!15956 0))(
  ( (BalanceConc!15957 (c!341859 Conc!8097)) )
))
(declare-fun input!5540 () BalanceConc!15956)

(declare-fun e!1381886 () Bool)

(declare-fun inv!33127 (BalanceConc!15956) Bool)

(assert (=> start!209586 (and (inv!33127 input!5540) e!1381886)))

(declare-fun totalInput!977 () BalanceConc!15956)

(declare-fun e!1381887 () Bool)

(assert (=> start!209586 (and (inv!33127 totalInput!977) e!1381887)))

(declare-fun setIsEmpty!17992 () Bool)

(assert (=> setIsEmpty!17992 setRes!17992))

(declare-fun b!2159795 () Bool)

(declare-fun tp!673563 () Bool)

(declare-fun tp!673568 () Bool)

(assert (=> b!2159795 (= e!1381883 (and tp!673563 tp!673568))))

(declare-fun setElem!17992 () Context!3062)

(declare-fun tp!673564 () Bool)

(declare-fun setNonEmpty!17992 () Bool)

(declare-fun inv!33128 (Context!3062) Bool)

(assert (=> setNonEmpty!17992 (= setRes!17992 (and tp!673564 (inv!33128 setElem!17992) e!1381885))))

(declare-fun setRest!17992 () (InoxSet Context!3062))

(assert (=> setNonEmpty!17992 (= z!4055 ((_ map or) (store ((as const (Array Context!3062 Bool)) false) setElem!17992 true) setRest!17992))))

(declare-fun b!2159796 () Bool)

(assert (=> b!2159796 (= e!1381884 false)))

(declare-fun lt!802736 () Int)

(declare-fun size!19556 (BalanceConc!15956) Int)

(assert (=> b!2159796 (= lt!802736 (size!19556 input!5540))))

(declare-fun lt!802735 () Int)

(assert (=> b!2159796 (= lt!802735 (size!19556 totalInput!977))))

(declare-datatypes ((tuple2!24712 0))(
  ( (tuple2!24713 (_1!14726 BalanceConc!15956) (_2!14726 BalanceConc!15956)) )
))
(declare-fun lt!802734 () tuple2!24712)

(declare-fun findLongestMatchZipperSequenceV3!10 ((InoxSet Context!3062) BalanceConc!15956 BalanceConc!15956) tuple2!24712)

(assert (=> b!2159796 (= lt!802734 (findLongestMatchZipperSequenceV3!10 z!4055 input!5540 totalInput!977))))

(declare-fun b!2159797 () Bool)

(declare-fun tp!673560 () Bool)

(declare-fun inv!33129 (Conc!8097) Bool)

(assert (=> b!2159797 (= e!1381886 (and (inv!33129 (c!341859 input!5540)) tp!673560))))

(declare-fun b!2159798 () Bool)

(declare-fun tp!673561 () Bool)

(assert (=> b!2159798 (= e!1381883 tp!673561)))

(declare-fun b!2159799 () Bool)

(declare-fun res!930595 () Bool)

(assert (=> b!2159799 (=> (not res!930595) (not e!1381884))))

(declare-fun isSuffix!628 (List!25097 List!25097) Bool)

(declare-fun list!9580 (BalanceConc!15956) List!25097)

(assert (=> b!2159799 (= res!930595 (isSuffix!628 (list!9580 input!5540) (list!9580 totalInput!977)))))

(declare-fun b!2159800 () Bool)

(declare-fun res!930593 () Bool)

(assert (=> b!2159800 (=> (not res!930593) (not e!1381884))))

(declare-datatypes ((List!25098 0))(
  ( (Nil!25014) (Cons!25014 (h!30415 Context!3062) (t!197646 List!25098)) )
))
(declare-fun unfocusZipper!68 (List!25098) Regex!5961)

(declare-fun toList!1144 ((InoxSet Context!3062)) List!25098)

(assert (=> b!2159800 (= res!930593 (= (unfocusZipper!68 (toList!1144 z!4055)) r!12534))))

(declare-fun b!2159801 () Bool)

(declare-fun tp!673562 () Bool)

(assert (=> b!2159801 (= e!1381887 (and (inv!33129 (c!341859 totalInput!977)) tp!673562))))

(assert (= (and start!209586 res!930594) b!2159800))

(assert (= (and b!2159800 res!930593) b!2159799))

(assert (= (and b!2159799 res!930595) b!2159796))

(get-info :version)

(assert (= (and start!209586 ((_ is ElementMatch!5961) r!12534)) b!2159792))

(assert (= (and start!209586 ((_ is Concat!10263) r!12534)) b!2159793))

(assert (= (and start!209586 ((_ is Star!5961) r!12534)) b!2159798))

(assert (= (and start!209586 ((_ is Union!5961) r!12534)) b!2159795))

(assert (= (and start!209586 condSetEmpty!17992) setIsEmpty!17992))

(assert (= (and start!209586 (not condSetEmpty!17992)) setNonEmpty!17992))

(assert (= setNonEmpty!17992 b!2159794))

(assert (= start!209586 b!2159797))

(assert (= start!209586 b!2159801))

(declare-fun m!2599519 () Bool)

(assert (=> b!2159799 m!2599519))

(declare-fun m!2599521 () Bool)

(assert (=> b!2159799 m!2599521))

(assert (=> b!2159799 m!2599519))

(assert (=> b!2159799 m!2599521))

(declare-fun m!2599523 () Bool)

(assert (=> b!2159799 m!2599523))

(declare-fun m!2599525 () Bool)

(assert (=> b!2159801 m!2599525))

(declare-fun m!2599527 () Bool)

(assert (=> b!2159796 m!2599527))

(declare-fun m!2599529 () Bool)

(assert (=> b!2159796 m!2599529))

(declare-fun m!2599531 () Bool)

(assert (=> b!2159796 m!2599531))

(declare-fun m!2599533 () Bool)

(assert (=> b!2159800 m!2599533))

(assert (=> b!2159800 m!2599533))

(declare-fun m!2599535 () Bool)

(assert (=> b!2159800 m!2599535))

(declare-fun m!2599537 () Bool)

(assert (=> start!209586 m!2599537))

(declare-fun m!2599539 () Bool)

(assert (=> start!209586 m!2599539))

(declare-fun m!2599541 () Bool)

(assert (=> start!209586 m!2599541))

(declare-fun m!2599543 () Bool)

(assert (=> setNonEmpty!17992 m!2599543))

(declare-fun m!2599545 () Bool)

(assert (=> b!2159797 m!2599545))

(check-sat tp_is_empty!9529 (not setNonEmpty!17992) (not b!2159801) (not b!2159798) (not b!2159799) (not b!2159796) (not b!2159795) (not start!209586) (not b!2159793) (not b!2159794) (not b!2159797) (not b!2159800))
(check-sat)
