; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209598 () Bool)

(assert start!209598)

(declare-fun setIsEmpty!18010 () Bool)

(declare-fun setRes!18010 () Bool)

(assert (=> setIsEmpty!18010 setRes!18010))

(declare-fun res!930688 () Bool)

(declare-fun e!1382038 () Bool)

(assert (=> start!209598 (=> (not res!930688) (not e!1382038))))

(declare-datatypes ((C!12080 0))(
  ( (C!12081 (val!7026 Int)) )
))
(declare-datatypes ((Regex!5967 0))(
  ( (ElementMatch!5967 (c!341876 C!12080)) (Concat!10269 (regOne!12446 Regex!5967) (regTwo!12446 Regex!5967)) (EmptyExpr!5967) (Star!5967 (reg!6296 Regex!5967)) (EmptyLang!5967) (Union!5967 (regOne!12447 Regex!5967) (regTwo!12447 Regex!5967)) )
))
(declare-fun r!12534 () Regex!5967)

(declare-fun validRegex!2243 (Regex!5967) Bool)

(assert (=> start!209598 (= res!930688 (validRegex!2243 r!12534))))

(assert (=> start!209598 e!1382038))

(declare-fun e!1382039 () Bool)

(assert (=> start!209598 e!1382039))

(declare-fun condSetEmpty!18010 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25114 0))(
  ( (Nil!25030) (Cons!25030 (h!30431 Regex!5967) (t!197662 List!25114)) )
))
(declare-datatypes ((Context!3074 0))(
  ( (Context!3075 (exprs!2037 List!25114)) )
))
(declare-fun z!4055 () (InoxSet Context!3074))

(assert (=> start!209598 (= condSetEmpty!18010 (= z!4055 ((as const (Array Context!3074 Bool)) false)))))

(assert (=> start!209598 setRes!18010))

(declare-datatypes ((List!25115 0))(
  ( (Nil!25031) (Cons!25031 (h!30432 C!12080) (t!197663 List!25115)) )
))
(declare-datatypes ((IArray!16211 0))(
  ( (IArray!16212 (innerList!8163 List!25115)) )
))
(declare-datatypes ((Conc!8103 0))(
  ( (Node!8103 (left!19265 Conc!8103) (right!19595 Conc!8103) (csize!16436 Int) (cheight!8314 Int)) (Leaf!11854 (xs!11045 IArray!16211) (csize!16437 Int)) (Empty!8103) )
))
(declare-datatypes ((BalanceConc!15968 0))(
  ( (BalanceConc!15969 (c!341877 Conc!8103)) )
))
(declare-fun totalInput!977 () BalanceConc!15968)

(declare-fun e!1382040 () Bool)

(declare-fun inv!33154 (BalanceConc!15968) Bool)

(assert (=> start!209598 (and (inv!33154 totalInput!977) e!1382040)))

(declare-fun input!5540 () BalanceConc!15968)

(declare-fun e!1382042 () Bool)

(assert (=> start!209598 (and (inv!33154 input!5540) e!1382042)))

(declare-fun b!2160021 () Bool)

(declare-fun tp_is_empty!9541 () Bool)

(assert (=> b!2160021 (= e!1382039 tp_is_empty!9541)))

(declare-fun b!2160022 () Bool)

(declare-fun e!1382041 () Bool)

(assert (=> b!2160022 (= e!1382038 e!1382041)))

(declare-fun res!930686 () Bool)

(assert (=> b!2160022 (=> (not res!930686) (not e!1382041))))

(declare-fun lt!802971 () List!25115)

(declare-fun lt!802969 () List!25115)

(declare-fun isSuffix!634 (List!25115 List!25115) Bool)

(assert (=> b!2160022 (= res!930686 (isSuffix!634 lt!802971 lt!802969))))

(declare-fun list!9586 (BalanceConc!15968) List!25115)

(assert (=> b!2160022 (= lt!802969 (list!9586 totalInput!977))))

(assert (=> b!2160022 (= lt!802971 (list!9586 input!5540))))

(declare-fun b!2160023 () Bool)

(declare-fun e!1382035 () Bool)

(assert (=> b!2160023 (= e!1382035 (not true))))

(declare-fun e!1382037 () Bool)

(assert (=> b!2160023 e!1382037))

(declare-fun res!930691 () Bool)

(assert (=> b!2160023 (=> res!930691 e!1382037)))

(declare-fun lt!802962 () Int)

(assert (=> b!2160023 (= res!930691 (<= lt!802962 0))))

(declare-fun lt!802964 () Int)

(declare-fun lt!802963 () Int)

(declare-fun lt!802965 () Int)

(declare-fun furthestNullablePosition!154 ((InoxSet Context!3074) Int BalanceConc!15968 Int Int) Int)

(assert (=> b!2160023 (= lt!802962 (+ 1 (- (furthestNullablePosition!154 z!4055 lt!802965 totalInput!977 lt!802963 lt!802964) lt!802965)))))

(declare-datatypes ((Unit!38085 0))(
  ( (Unit!38086) )
))
(declare-fun lt!802966 () Unit!38085)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!2 ((InoxSet Context!3074) Int BalanceConc!15968 Int) Unit!38085)

(assert (=> b!2160023 (= lt!802966 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!2 z!4055 lt!802965 totalInput!977 lt!802964))))

(declare-fun e!1382043 () Int)

(assert (=> b!2160023 (= lt!802964 e!1382043)))

(declare-fun c!341875 () Bool)

(declare-fun nullableZipper!248 ((InoxSet Context!3074)) Bool)

(assert (=> b!2160023 (= c!341875 (nullableZipper!248 z!4055))))

(declare-fun isPrefix!2087 (List!25115 List!25115) Bool)

(declare-fun take!181 (List!25115 Int) List!25115)

(assert (=> b!2160023 (isPrefix!2087 (take!181 lt!802969 lt!802965) lt!802969)))

(declare-fun lt!802968 () Unit!38085)

(declare-fun lemmaTakeIsPrefix!4 (List!25115 Int) Unit!38085)

(assert (=> b!2160023 (= lt!802968 (lemmaTakeIsPrefix!4 lt!802969 lt!802965))))

(declare-datatypes ((tuple2!24734 0))(
  ( (tuple2!24735 (_1!14737 List!25115) (_2!14737 List!25115)) )
))
(declare-fun lt!802975 () tuple2!24734)

(declare-fun lt!802970 () List!25115)

(assert (=> b!2160023 (isPrefix!2087 (_1!14737 lt!802975) lt!802970)))

(declare-fun lt!802973 () Unit!38085)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1370 (List!25115 List!25115) Unit!38085)

(assert (=> b!2160023 (= lt!802973 (lemmaConcatTwoListThenFirstIsPrefix!1370 (_1!14737 lt!802975) (_2!14737 lt!802975)))))

(declare-fun lt!802974 () List!25115)

(declare-fun lt!802976 () List!25115)

(assert (=> b!2160023 (isPrefix!2087 lt!802974 lt!802976)))

(declare-fun lt!802967 () Unit!38085)

(declare-fun lt!802961 () List!25115)

(assert (=> b!2160023 (= lt!802967 (lemmaConcatTwoListThenFirstIsPrefix!1370 lt!802974 lt!802961))))

(declare-fun b!2160024 () Bool)

(declare-fun tp!673728 () Bool)

(assert (=> b!2160024 (= e!1382039 tp!673728)))

(declare-fun b!2160025 () Bool)

(declare-fun tp!673723 () Bool)

(declare-fun tp!673724 () Bool)

(assert (=> b!2160025 (= e!1382039 (and tp!673723 tp!673724))))

(declare-fun b!2160026 () Bool)

(declare-fun e!1382034 () Bool)

(assert (=> b!2160026 (= e!1382034 e!1382035)))

(declare-fun res!930689 () Bool)

(assert (=> b!2160026 (=> (not res!930689) (not e!1382035))))

(assert (=> b!2160026 (= res!930689 (= lt!802970 lt!802971))))

(declare-fun ++!6324 (List!25115 List!25115) List!25115)

(assert (=> b!2160026 (= lt!802970 (++!6324 (_1!14737 lt!802975) (_2!14737 lt!802975)))))

(declare-fun b!2160027 () Bool)

(declare-fun res!930690 () Bool)

(assert (=> b!2160027 (=> (not res!930690) (not e!1382038))))

(declare-datatypes ((List!25116 0))(
  ( (Nil!25032) (Cons!25032 (h!30433 Context!3074) (t!197664 List!25116)) )
))
(declare-fun unfocusZipper!74 (List!25116) Regex!5967)

(declare-fun toList!1150 ((InoxSet Context!3074)) List!25116)

(assert (=> b!2160027 (= res!930690 (= (unfocusZipper!74 (toList!1150 z!4055)) r!12534))))

(declare-fun b!2160028 () Bool)

(declare-fun tp!673722 () Bool)

(declare-fun inv!33155 (Conc!8103) Bool)

(assert (=> b!2160028 (= e!1382042 (and (inv!33155 (c!341877 input!5540)) tp!673722))))

(declare-fun b!2160029 () Bool)

(assert (=> b!2160029 (= e!1382043 (- 1))))

(declare-fun b!2160030 () Bool)

(assert (=> b!2160030 (= e!1382041 e!1382034)))

(declare-fun res!930687 () Bool)

(assert (=> b!2160030 (=> (not res!930687) (not e!1382034))))

(assert (=> b!2160030 (= res!930687 (= lt!802976 lt!802971))))

(assert (=> b!2160030 (= lt!802976 (++!6324 lt!802974 lt!802961))))

(declare-datatypes ((tuple2!24736 0))(
  ( (tuple2!24737 (_1!14738 BalanceConc!15968) (_2!14738 BalanceConc!15968)) )
))
(declare-fun lt!802972 () tuple2!24736)

(assert (=> b!2160030 (= lt!802961 (list!9586 (_2!14738 lt!802972)))))

(assert (=> b!2160030 (= lt!802974 (list!9586 (_1!14738 lt!802972)))))

(declare-fun findLongestMatch!521 (Regex!5967 List!25115) tuple2!24734)

(assert (=> b!2160030 (= lt!802975 (findLongestMatch!521 r!12534 lt!802971))))

(declare-fun size!19562 (BalanceConc!15968) Int)

(assert (=> b!2160030 (= lt!802965 (- lt!802963 (size!19562 input!5540)))))

(assert (=> b!2160030 (= lt!802963 (size!19562 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!16 ((InoxSet Context!3074) BalanceConc!15968 BalanceConc!15968) tuple2!24736)

(assert (=> b!2160030 (= lt!802972 (findLongestMatchZipperSequenceV3!16 z!4055 input!5540 totalInput!977))))

(declare-fun setElem!18010 () Context!3074)

(declare-fun tp!673726 () Bool)

(declare-fun setNonEmpty!18010 () Bool)

(declare-fun e!1382036 () Bool)

(declare-fun inv!33156 (Context!3074) Bool)

(assert (=> setNonEmpty!18010 (= setRes!18010 (and tp!673726 (inv!33156 setElem!18010) e!1382036))))

(declare-fun setRest!18010 () (InoxSet Context!3074))

(assert (=> setNonEmpty!18010 (= z!4055 ((_ map or) (store ((as const (Array Context!3074 Bool)) false) setElem!18010 true) setRest!18010))))

(declare-fun b!2160031 () Bool)

(assert (=> b!2160031 (= e!1382043 (- lt!802965 1))))

(declare-fun b!2160032 () Bool)

(declare-fun matchZipper!95 ((InoxSet Context!3074) List!25115) Bool)

(declare-fun drop!1190 (List!25115 Int) List!25115)

(assert (=> b!2160032 (= e!1382037 (matchZipper!95 z!4055 (take!181 (drop!1190 lt!802969 lt!802965) lt!802962)))))

(declare-fun b!2160033 () Bool)

(declare-fun tp!673725 () Bool)

(assert (=> b!2160033 (= e!1382040 (and (inv!33155 (c!341877 totalInput!977)) tp!673725))))

(declare-fun b!2160034 () Bool)

(declare-fun tp!673727 () Bool)

(declare-fun tp!673729 () Bool)

(assert (=> b!2160034 (= e!1382039 (and tp!673727 tp!673729))))

(declare-fun b!2160035 () Bool)

(declare-fun tp!673730 () Bool)

(assert (=> b!2160035 (= e!1382036 tp!673730)))

(assert (= (and start!209598 res!930688) b!2160027))

(assert (= (and b!2160027 res!930690) b!2160022))

(assert (= (and b!2160022 res!930686) b!2160030))

(assert (= (and b!2160030 res!930687) b!2160026))

(assert (= (and b!2160026 res!930689) b!2160023))

(assert (= (and b!2160023 c!341875) b!2160031))

(assert (= (and b!2160023 (not c!341875)) b!2160029))

(assert (= (and b!2160023 (not res!930691)) b!2160032))

(get-info :version)

(assert (= (and start!209598 ((_ is ElementMatch!5967) r!12534)) b!2160021))

(assert (= (and start!209598 ((_ is Concat!10269) r!12534)) b!2160034))

(assert (= (and start!209598 ((_ is Star!5967) r!12534)) b!2160024))

(assert (= (and start!209598 ((_ is Union!5967) r!12534)) b!2160025))

(assert (= (and start!209598 condSetEmpty!18010) setIsEmpty!18010))

(assert (= (and start!209598 (not condSetEmpty!18010)) setNonEmpty!18010))

(assert (= setNonEmpty!18010 b!2160035))

(assert (= start!209598 b!2160033))

(assert (= start!209598 b!2160028))

(declare-fun m!2599811 () Bool)

(assert (=> b!2160027 m!2599811))

(assert (=> b!2160027 m!2599811))

(declare-fun m!2599813 () Bool)

(assert (=> b!2160027 m!2599813))

(declare-fun m!2599815 () Bool)

(assert (=> b!2160030 m!2599815))

(declare-fun m!2599817 () Bool)

(assert (=> b!2160030 m!2599817))

(declare-fun m!2599819 () Bool)

(assert (=> b!2160030 m!2599819))

(declare-fun m!2599821 () Bool)

(assert (=> b!2160030 m!2599821))

(declare-fun m!2599823 () Bool)

(assert (=> b!2160030 m!2599823))

(declare-fun m!2599825 () Bool)

(assert (=> b!2160030 m!2599825))

(declare-fun m!2599827 () Bool)

(assert (=> b!2160030 m!2599827))

(declare-fun m!2599829 () Bool)

(assert (=> b!2160033 m!2599829))

(declare-fun m!2599831 () Bool)

(assert (=> b!2160028 m!2599831))

(declare-fun m!2599833 () Bool)

(assert (=> b!2160022 m!2599833))

(declare-fun m!2599835 () Bool)

(assert (=> b!2160022 m!2599835))

(declare-fun m!2599837 () Bool)

(assert (=> b!2160022 m!2599837))

(declare-fun m!2599839 () Bool)

(assert (=> setNonEmpty!18010 m!2599839))

(declare-fun m!2599841 () Bool)

(assert (=> b!2160032 m!2599841))

(assert (=> b!2160032 m!2599841))

(declare-fun m!2599843 () Bool)

(assert (=> b!2160032 m!2599843))

(assert (=> b!2160032 m!2599843))

(declare-fun m!2599845 () Bool)

(assert (=> b!2160032 m!2599845))

(declare-fun m!2599847 () Bool)

(assert (=> b!2160023 m!2599847))

(declare-fun m!2599849 () Bool)

(assert (=> b!2160023 m!2599849))

(declare-fun m!2599851 () Bool)

(assert (=> b!2160023 m!2599851))

(declare-fun m!2599853 () Bool)

(assert (=> b!2160023 m!2599853))

(declare-fun m!2599855 () Bool)

(assert (=> b!2160023 m!2599855))

(assert (=> b!2160023 m!2599851))

(declare-fun m!2599857 () Bool)

(assert (=> b!2160023 m!2599857))

(declare-fun m!2599859 () Bool)

(assert (=> b!2160023 m!2599859))

(declare-fun m!2599861 () Bool)

(assert (=> b!2160023 m!2599861))

(declare-fun m!2599863 () Bool)

(assert (=> b!2160023 m!2599863))

(declare-fun m!2599865 () Bool)

(assert (=> b!2160023 m!2599865))

(declare-fun m!2599867 () Bool)

(assert (=> b!2160026 m!2599867))

(declare-fun m!2599869 () Bool)

(assert (=> start!209598 m!2599869))

(declare-fun m!2599871 () Bool)

(assert (=> start!209598 m!2599871))

(declare-fun m!2599873 () Bool)

(assert (=> start!209598 m!2599873))

(check-sat (not b!2160035) (not b!2160028) (not b!2160030) tp_is_empty!9541 (not b!2160034) (not b!2160025) (not b!2160033) (not b!2160023) (not b!2160022) (not b!2160024) (not b!2160026) (not start!209598) (not b!2160032) (not b!2160027) (not setNonEmpty!18010))
(check-sat)
