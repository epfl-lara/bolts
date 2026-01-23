; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!521482 () Bool)

(assert start!521482)

(declare-fun b!4950222 () Bool)

(declare-fun e!3092842 () Bool)

(declare-fun tp!1387966 () Bool)

(assert (=> b!4950222 (= e!3092842 tp!1387966)))

(declare-fun b!4950223 () Bool)

(declare-datatypes ((Unit!147872 0))(
  ( (Unit!147873) )
))
(declare-fun e!3092851 () Unit!147872)

(declare-fun Unit!147874 () Unit!147872)

(assert (=> b!4950223 (= e!3092851 Unit!147874)))

(declare-fun lt!2042645 () Unit!147872)

(declare-datatypes ((C!27234 0))(
  ( (C!27235 (val!22951 Int)) )
))
(declare-datatypes ((List!57131 0))(
  ( (Nil!57007) (Cons!57007 (h!63455 C!27234) (t!367687 List!57131)) )
))
(declare-fun lt!2042649 () List!57131)

(declare-fun lemmaIsPrefixRefl!3438 (List!57131 List!57131) Unit!147872)

(assert (=> b!4950223 (= lt!2042645 (lemmaIsPrefixRefl!3438 lt!2042649 lt!2042649))))

(declare-fun isPrefix!5098 (List!57131 List!57131) Bool)

(assert (=> b!4950223 (isPrefix!5098 lt!2042649 lt!2042649)))

(declare-fun lt!2042650 () Unit!147872)

(declare-fun testedP!110 () List!57131)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1190 (List!57131 List!57131 List!57131) Unit!147872)

(assert (=> b!4950223 (= lt!2042650 (lemmaIsPrefixSameLengthThenSameList!1190 lt!2042649 testedP!110 lt!2042649))))

(assert (=> b!4950223 false))

(declare-fun b!4950224 () Bool)

(declare-fun e!3092844 () Bool)

(declare-fun e!3092846 () Bool)

(assert (=> b!4950224 (= e!3092844 e!3092846)))

(declare-fun res!2112066 () Bool)

(assert (=> b!4950224 (=> res!2112066 e!3092846)))

(declare-fun lt!2042657 () Int)

(declare-fun lt!2042658 () Int)

(assert (=> b!4950224 (= res!2112066 (>= lt!2042657 lt!2042658))))

(declare-fun lt!2042644 () Unit!147872)

(assert (=> b!4950224 (= lt!2042644 e!3092851)))

(declare-fun c!845170 () Bool)

(assert (=> b!4950224 (= c!845170 (= lt!2042657 lt!2042658))))

(declare-fun size!37835 (List!57131) Int)

(assert (=> b!4950224 (<= lt!2042657 (size!37835 lt!2042649))))

(declare-fun lt!2042662 () Unit!147872)

(declare-fun lemmaIsPrefixThenSmallerEqSize!753 (List!57131 List!57131) Unit!147872)

(assert (=> b!4950224 (= lt!2042662 (lemmaIsPrefixThenSmallerEqSize!753 testedP!110 lt!2042649))))

(declare-fun e!3092841 () Bool)

(declare-fun b!4950225 () Bool)

(declare-fun lt!2042648 () List!57131)

(assert (=> b!4950225 (= e!3092841 (< (- lt!2042658 (size!37835 lt!2042648)) (- lt!2042658 lt!2042657)))))

(declare-fun b!4950226 () Bool)

(declare-fun Unit!147875 () Unit!147872)

(assert (=> b!4950226 (= e!3092851 Unit!147875)))

(declare-fun tp!1387967 () Bool)

(declare-datatypes ((Regex!13492 0))(
  ( (ElementMatch!13492 (c!845171 C!27234)) (Concat!22065 (regOne!27496 Regex!13492) (regTwo!27496 Regex!13492)) (EmptyExpr!13492) (Star!13492 (reg!13821 Regex!13492)) (EmptyLang!13492) (Union!13492 (regOne!27497 Regex!13492) (regTwo!27497 Regex!13492)) )
))
(declare-datatypes ((List!57132 0))(
  ( (Nil!57008) (Cons!57008 (h!63456 Regex!13492) (t!367688 List!57132)) )
))
(declare-datatypes ((Context!6268 0))(
  ( (Context!6269 (exprs!3634 List!57132)) )
))
(declare-fun setElem!28113 () Context!6268)

(declare-fun setRes!28113 () Bool)

(declare-fun setNonEmpty!28113 () Bool)

(declare-fun inv!74292 (Context!6268) Bool)

(assert (=> setNonEmpty!28113 (= setRes!28113 (and tp!1387967 (inv!74292 setElem!28113) e!3092842))))

(declare-fun z!3568 () (Set Context!6268))

(declare-fun setRest!28113 () (Set Context!6268))

(assert (=> setNonEmpty!28113 (= z!3568 (set.union (set.insert setElem!28113 (as set.empty (Set Context!6268))) setRest!28113))))

(declare-fun b!4950227 () Bool)

(declare-fun e!3092850 () Bool)

(assert (=> b!4950227 (= e!3092850 e!3092844)))

(declare-fun res!2112064 () Bool)

(assert (=> b!4950227 (=> res!2112064 e!3092844)))

(declare-fun lt!2042661 () C!27234)

(declare-fun testedSuffix!70 () List!57131)

(declare-fun head!10618 (List!57131) C!27234)

(assert (=> b!4950227 (= res!2112064 (not (= lt!2042661 (head!10618 testedSuffix!70))))))

(declare-datatypes ((IArray!30083 0))(
  ( (IArray!30084 (innerList!15099 List!57131)) )
))
(declare-datatypes ((Conc!15011 0))(
  ( (Node!15011 (left!41595 Conc!15011) (right!41925 Conc!15011) (csize!30252 Int) (cheight!15222 Int)) (Leaf!24950 (xs!18337 IArray!30083) (csize!30253 Int)) (Empty!15011) )
))
(declare-datatypes ((BalanceConc!29452 0))(
  ( (BalanceConc!29453 (c!845172 Conc!15011)) )
))
(declare-fun totalInput!685 () BalanceConc!29452)

(declare-fun testedPSize!70 () Int)

(declare-fun apply!13847 (BalanceConc!29452 Int) C!27234)

(assert (=> b!4950227 (= lt!2042661 (apply!13847 totalInput!685 testedPSize!70))))

(declare-fun drop!2299 (List!57131 Int) List!57131)

(declare-fun apply!13848 (List!57131 Int) C!27234)

(assert (=> b!4950227 (= (head!10618 (drop!2299 lt!2042649 testedPSize!70)) (apply!13848 lt!2042649 testedPSize!70))))

(declare-fun lt!2042659 () Unit!147872)

(declare-fun lemmaDropApply!1353 (List!57131 Int) Unit!147872)

(assert (=> b!4950227 (= lt!2042659 (lemmaDropApply!1353 lt!2042649 testedPSize!70))))

(declare-fun lt!2042653 () List!57131)

(declare-fun lt!2042654 () List!57131)

(assert (=> b!4950227 (not (or (not (= lt!2042654 testedP!110)) (not (= lt!2042653 testedSuffix!70))))))

(declare-fun lt!2042652 () Unit!147872)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!736 (List!57131 List!57131 List!57131 List!57131) Unit!147872)

(assert (=> b!4950227 (= lt!2042652 (lemmaConcatSameAndSameSizesThenSameLists!736 lt!2042654 lt!2042653 testedP!110 testedSuffix!70))))

(declare-fun b!4950228 () Bool)

(declare-fun res!2112062 () Bool)

(assert (=> b!4950228 (=> res!2112062 e!3092850)))

(declare-datatypes ((tuple2!61582 0))(
  ( (tuple2!61583 (_1!34094 BalanceConc!29452) (_2!34094 BalanceConc!29452)) )
))
(declare-fun lt!2042656 () tuple2!61582)

(declare-fun size!37836 (BalanceConc!29452) Int)

(assert (=> b!4950228 (= res!2112062 (not (= (size!37836 (_1!34094 lt!2042656)) testedPSize!70)))))

(declare-fun b!4950229 () Bool)

(declare-fun e!3092845 () Bool)

(declare-fun e!3092849 () Bool)

(assert (=> b!4950229 (= e!3092845 (not e!3092849))))

(declare-fun res!2112058 () Bool)

(assert (=> b!4950229 (=> res!2112058 e!3092849)))

(assert (=> b!4950229 (= res!2112058 (not (isPrefix!5098 testedP!110 lt!2042649)))))

(declare-fun lt!2042642 () List!57131)

(assert (=> b!4950229 (isPrefix!5098 testedP!110 lt!2042642)))

(declare-fun lt!2042647 () Unit!147872)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3322 (List!57131 List!57131) Unit!147872)

(assert (=> b!4950229 (= lt!2042647 (lemmaConcatTwoListThenFirstIsPrefix!3322 testedP!110 testedSuffix!70))))

(declare-fun b!4950230 () Bool)

(declare-fun e!3092843 () Bool)

(assert (=> b!4950230 (= e!3092843 e!3092850)))

(declare-fun res!2112057 () Bool)

(assert (=> b!4950230 (=> res!2112057 e!3092850)))

(declare-fun ++!12481 (List!57131 List!57131) List!57131)

(assert (=> b!4950230 (= res!2112057 (not (= (++!12481 lt!2042654 lt!2042653) lt!2042649)))))

(declare-fun list!18184 (BalanceConc!29452) List!57131)

(assert (=> b!4950230 (= lt!2042653 (list!18184 (_2!34094 lt!2042656)))))

(assert (=> b!4950230 (= lt!2042654 (list!18184 (_1!34094 lt!2042656)))))

(declare-fun splitAt!415 (BalanceConc!29452 Int) tuple2!61582)

(assert (=> b!4950230 (= lt!2042656 (splitAt!415 totalInput!685 testedPSize!70))))

(declare-fun b!4950231 () Bool)

(declare-fun e!3092838 () Bool)

(declare-fun tp_is_empty!36181 () Bool)

(declare-fun tp!1387970 () Bool)

(assert (=> b!4950231 (= e!3092838 (and tp_is_empty!36181 tp!1387970))))

(declare-fun b!4950232 () Bool)

(declare-fun e!3092847 () Bool)

(declare-fun tp!1387968 () Bool)

(assert (=> b!4950232 (= e!3092847 (and tp_is_empty!36181 tp!1387968))))

(declare-fun res!2112059 () Bool)

(declare-fun e!3092848 () Bool)

(assert (=> start!521482 (=> (not res!2112059) (not e!3092848))))

(assert (=> start!521482 (= res!2112059 (= lt!2042642 lt!2042649))))

(assert (=> start!521482 (= lt!2042649 (list!18184 totalInput!685))))

(assert (=> start!521482 (= lt!2042642 (++!12481 testedP!110 testedSuffix!70))))

(assert (=> start!521482 e!3092848))

(assert (=> start!521482 e!3092847))

(declare-fun condSetEmpty!28113 () Bool)

(assert (=> start!521482 (= condSetEmpty!28113 (= z!3568 (as set.empty (Set Context!6268))))))

(assert (=> start!521482 setRes!28113))

(assert (=> start!521482 true))

(declare-fun e!3092839 () Bool)

(declare-fun inv!74293 (BalanceConc!29452) Bool)

(assert (=> start!521482 (and (inv!74293 totalInput!685) e!3092839)))

(assert (=> start!521482 e!3092838))

(declare-fun b!4950233 () Bool)

(declare-fun e!3092840 () Bool)

(assert (=> b!4950233 (= e!3092840 e!3092845)))

(declare-fun res!2112060 () Bool)

(assert (=> b!4950233 (=> (not res!2112060) (not e!3092845))))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4950233 (= res!2112060 (= totalInputSize!132 lt!2042658))))

(assert (=> b!4950233 (= lt!2042658 (size!37836 totalInput!685))))

(declare-fun b!4950234 () Bool)

(declare-fun res!2112061 () Bool)

(assert (=> b!4950234 (=> res!2112061 e!3092843)))

(assert (=> b!4950234 (= res!2112061 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4950235 () Bool)

(declare-fun tp!1387969 () Bool)

(declare-fun inv!74294 (Conc!15011) Bool)

(assert (=> b!4950235 (= e!3092839 (and (inv!74294 (c!845172 totalInput!685)) tp!1387969))))

(declare-fun b!4950236 () Bool)

(assert (=> b!4950236 (= e!3092846 e!3092841)))

(declare-fun res!2112067 () Bool)

(assert (=> b!4950236 (=> res!2112067 e!3092841)))

(declare-fun nullableZipper!863 ((Set Context!6268)) Bool)

(assert (=> b!4950236 (= res!2112067 (nullableZipper!863 z!3568))))

(declare-fun lt!2042646 () List!57131)

(assert (=> b!4950236 (= (++!12481 lt!2042648 lt!2042646) lt!2042649)))

(assert (=> b!4950236 (= lt!2042648 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007)))))

(declare-fun lt!2042643 () Unit!147872)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1437 (List!57131 C!27234 List!57131 List!57131) Unit!147872)

(assert (=> b!4950236 (= lt!2042643 (lemmaMoveElementToOtherListKeepsConcatEq!1437 testedP!110 lt!2042661 lt!2042646 lt!2042649))))

(declare-fun tail!9753 (List!57131) List!57131)

(assert (=> b!4950236 (= lt!2042646 (tail!9753 testedSuffix!70))))

(declare-fun lt!2042651 () List!57131)

(assert (=> b!4950236 (isPrefix!5098 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007)) lt!2042649)))

(declare-fun lt!2042660 () Unit!147872)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!827 (List!57131 List!57131) Unit!147872)

(assert (=> b!4950236 (= lt!2042660 (lemmaAddHeadSuffixToPrefixStillPrefix!827 testedP!110 lt!2042649))))

(declare-fun b!4950237 () Bool)

(assert (=> b!4950237 (= e!3092848 e!3092840)))

(declare-fun res!2112063 () Bool)

(assert (=> b!4950237 (=> (not res!2112063) (not e!3092840))))

(assert (=> b!4950237 (= res!2112063 (= testedPSize!70 lt!2042657))))

(assert (=> b!4950237 (= lt!2042657 (size!37835 testedP!110))))

(declare-fun setIsEmpty!28113 () Bool)

(assert (=> setIsEmpty!28113 setRes!28113))

(declare-fun b!4950238 () Bool)

(assert (=> b!4950238 (= e!3092849 e!3092843)))

(declare-fun res!2112065 () Bool)

(assert (=> b!4950238 (=> res!2112065 e!3092843)))

(declare-fun lostCauseZipper!810 ((Set Context!6268)) Bool)

(assert (=> b!4950238 (= res!2112065 (lostCauseZipper!810 z!3568))))

(assert (=> b!4950238 (and (= testedSuffix!70 lt!2042651) (= lt!2042651 testedSuffix!70))))

(declare-fun lt!2042655 () Unit!147872)

(declare-fun lemmaSamePrefixThenSameSuffix!2490 (List!57131 List!57131 List!57131 List!57131 List!57131) Unit!147872)

(assert (=> b!4950238 (= lt!2042655 (lemmaSamePrefixThenSameSuffix!2490 testedP!110 testedSuffix!70 testedP!110 lt!2042651 lt!2042649))))

(declare-fun getSuffix!3080 (List!57131 List!57131) List!57131)

(assert (=> b!4950238 (= lt!2042651 (getSuffix!3080 lt!2042649 testedP!110))))

(assert (= (and start!521482 res!2112059) b!4950237))

(assert (= (and b!4950237 res!2112063) b!4950233))

(assert (= (and b!4950233 res!2112060) b!4950229))

(assert (= (and b!4950229 (not res!2112058)) b!4950238))

(assert (= (and b!4950238 (not res!2112065)) b!4950234))

(assert (= (and b!4950234 (not res!2112061)) b!4950230))

(assert (= (and b!4950230 (not res!2112057)) b!4950228))

(assert (= (and b!4950228 (not res!2112062)) b!4950227))

(assert (= (and b!4950227 (not res!2112064)) b!4950224))

(assert (= (and b!4950224 c!845170) b!4950223))

(assert (= (and b!4950224 (not c!845170)) b!4950226))

(assert (= (and b!4950224 (not res!2112066)) b!4950236))

(assert (= (and b!4950236 (not res!2112067)) b!4950225))

(assert (= (and start!521482 (is-Cons!57007 testedP!110)) b!4950232))

(assert (= (and start!521482 condSetEmpty!28113) setIsEmpty!28113))

(assert (= (and start!521482 (not condSetEmpty!28113)) setNonEmpty!28113))

(assert (= setNonEmpty!28113 b!4950222))

(assert (= start!521482 b!4950235))

(assert (= (and start!521482 (is-Cons!57007 testedSuffix!70)) b!4950231))

(declare-fun m!5974828 () Bool)

(assert (=> b!4950229 m!5974828))

(declare-fun m!5974830 () Bool)

(assert (=> b!4950229 m!5974830))

(declare-fun m!5974832 () Bool)

(assert (=> b!4950229 m!5974832))

(declare-fun m!5974834 () Bool)

(assert (=> start!521482 m!5974834))

(declare-fun m!5974836 () Bool)

(assert (=> start!521482 m!5974836))

(declare-fun m!5974838 () Bool)

(assert (=> start!521482 m!5974838))

(declare-fun m!5974840 () Bool)

(assert (=> b!4950225 m!5974840))

(declare-fun m!5974842 () Bool)

(assert (=> b!4950233 m!5974842))

(declare-fun m!5974844 () Bool)

(assert (=> b!4950223 m!5974844))

(declare-fun m!5974846 () Bool)

(assert (=> b!4950223 m!5974846))

(declare-fun m!5974848 () Bool)

(assert (=> b!4950223 m!5974848))

(declare-fun m!5974850 () Bool)

(assert (=> b!4950227 m!5974850))

(declare-fun m!5974852 () Bool)

(assert (=> b!4950227 m!5974852))

(declare-fun m!5974854 () Bool)

(assert (=> b!4950227 m!5974854))

(declare-fun m!5974856 () Bool)

(assert (=> b!4950227 m!5974856))

(assert (=> b!4950227 m!5974854))

(declare-fun m!5974858 () Bool)

(assert (=> b!4950227 m!5974858))

(declare-fun m!5974860 () Bool)

(assert (=> b!4950227 m!5974860))

(declare-fun m!5974862 () Bool)

(assert (=> b!4950227 m!5974862))

(declare-fun m!5974864 () Bool)

(assert (=> b!4950237 m!5974864))

(declare-fun m!5974866 () Bool)

(assert (=> b!4950230 m!5974866))

(declare-fun m!5974868 () Bool)

(assert (=> b!4950230 m!5974868))

(declare-fun m!5974870 () Bool)

(assert (=> b!4950230 m!5974870))

(declare-fun m!5974872 () Bool)

(assert (=> b!4950230 m!5974872))

(declare-fun m!5974874 () Bool)

(assert (=> b!4950235 m!5974874))

(declare-fun m!5974876 () Bool)

(assert (=> b!4950236 m!5974876))

(declare-fun m!5974878 () Bool)

(assert (=> b!4950236 m!5974878))

(declare-fun m!5974880 () Bool)

(assert (=> b!4950236 m!5974880))

(declare-fun m!5974882 () Bool)

(assert (=> b!4950236 m!5974882))

(declare-fun m!5974884 () Bool)

(assert (=> b!4950236 m!5974884))

(declare-fun m!5974886 () Bool)

(assert (=> b!4950236 m!5974886))

(assert (=> b!4950236 m!5974878))

(declare-fun m!5974888 () Bool)

(assert (=> b!4950236 m!5974888))

(declare-fun m!5974890 () Bool)

(assert (=> b!4950236 m!5974890))

(declare-fun m!5974892 () Bool)

(assert (=> b!4950236 m!5974892))

(declare-fun m!5974894 () Bool)

(assert (=> b!4950228 m!5974894))

(declare-fun m!5974896 () Bool)

(assert (=> b!4950224 m!5974896))

(declare-fun m!5974898 () Bool)

(assert (=> b!4950224 m!5974898))

(declare-fun m!5974900 () Bool)

(assert (=> b!4950238 m!5974900))

(declare-fun m!5974902 () Bool)

(assert (=> b!4950238 m!5974902))

(declare-fun m!5974904 () Bool)

(assert (=> b!4950238 m!5974904))

(declare-fun m!5974906 () Bool)

(assert (=> setNonEmpty!28113 m!5974906))

(push 1)

(assert (not b!4950236))

(assert (not b!4950238))

(assert (not b!4950224))

(assert (not b!4950237))

(assert (not setNonEmpty!28113))

(assert (not b!4950228))

(assert (not start!521482))

(assert (not b!4950223))

(assert (not b!4950231))

(assert (not b!4950222))

(assert (not b!4950225))

(assert (not b!4950227))

(assert (not b!4950235))

(assert tp_is_empty!36181)

(assert (not b!4950229))

(assert (not b!4950232))

(assert (not b!4950230))

(assert (not b!4950233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4950310 () Bool)

(declare-fun e!3092905 () List!57131)

(assert (=> b!4950310 (= e!3092905 lt!2042653)))

(declare-fun d!1594199 () Bool)

(declare-fun e!3092904 () Bool)

(assert (=> d!1594199 e!3092904))

(declare-fun res!2112112 () Bool)

(assert (=> d!1594199 (=> (not res!2112112) (not e!3092904))))

(declare-fun lt!2042731 () List!57131)

(declare-fun content!10160 (List!57131) (Set C!27234))

(assert (=> d!1594199 (= res!2112112 (= (content!10160 lt!2042731) (set.union (content!10160 lt!2042654) (content!10160 lt!2042653))))))

(assert (=> d!1594199 (= lt!2042731 e!3092905)))

(declare-fun c!845183 () Bool)

(assert (=> d!1594199 (= c!845183 (is-Nil!57007 lt!2042654))))

(assert (=> d!1594199 (= (++!12481 lt!2042654 lt!2042653) lt!2042731)))

(declare-fun b!4950313 () Bool)

(assert (=> b!4950313 (= e!3092904 (or (not (= lt!2042653 Nil!57007)) (= lt!2042731 lt!2042654)))))

(declare-fun b!4950312 () Bool)

(declare-fun res!2112111 () Bool)

(assert (=> b!4950312 (=> (not res!2112111) (not e!3092904))))

(assert (=> b!4950312 (= res!2112111 (= (size!37835 lt!2042731) (+ (size!37835 lt!2042654) (size!37835 lt!2042653))))))

(declare-fun b!4950311 () Bool)

(assert (=> b!4950311 (= e!3092905 (Cons!57007 (h!63455 lt!2042654) (++!12481 (t!367687 lt!2042654) lt!2042653)))))

(assert (= (and d!1594199 c!845183) b!4950310))

(assert (= (and d!1594199 (not c!845183)) b!4950311))

(assert (= (and d!1594199 res!2112112) b!4950312))

(assert (= (and b!4950312 res!2112111) b!4950313))

(declare-fun m!5975004 () Bool)

(assert (=> d!1594199 m!5975004))

(declare-fun m!5975006 () Bool)

(assert (=> d!1594199 m!5975006))

(declare-fun m!5975008 () Bool)

(assert (=> d!1594199 m!5975008))

(declare-fun m!5975010 () Bool)

(assert (=> b!4950312 m!5975010))

(declare-fun m!5975012 () Bool)

(assert (=> b!4950312 m!5975012))

(declare-fun m!5975014 () Bool)

(assert (=> b!4950312 m!5975014))

(declare-fun m!5975016 () Bool)

(assert (=> b!4950311 m!5975016))

(assert (=> b!4950230 d!1594199))

(declare-fun d!1594205 () Bool)

(declare-fun list!18186 (Conc!15011) List!57131)

(assert (=> d!1594205 (= (list!18184 (_2!34094 lt!2042656)) (list!18186 (c!845172 (_2!34094 lt!2042656))))))

(declare-fun bs!1182187 () Bool)

(assert (= bs!1182187 d!1594205))

(declare-fun m!5975018 () Bool)

(assert (=> bs!1182187 m!5975018))

(assert (=> b!4950230 d!1594205))

(declare-fun d!1594207 () Bool)

(assert (=> d!1594207 (= (list!18184 (_1!34094 lt!2042656)) (list!18186 (c!845172 (_1!34094 lt!2042656))))))

(declare-fun bs!1182188 () Bool)

(assert (= bs!1182188 d!1594207))

(declare-fun m!5975020 () Bool)

(assert (=> bs!1182188 m!5975020))

(assert (=> b!4950230 d!1594207))

(declare-fun d!1594209 () Bool)

(declare-fun e!3092913 () Bool)

(assert (=> d!1594209 e!3092913))

(declare-fun res!2112118 () Bool)

(assert (=> d!1594209 (=> (not res!2112118) (not e!3092913))))

(declare-fun lt!2042747 () tuple2!61582)

(declare-fun isBalanced!4161 (Conc!15011) Bool)

(assert (=> d!1594209 (= res!2112118 (isBalanced!4161 (c!845172 (_1!34094 lt!2042747))))))

(declare-datatypes ((tuple2!61586 0))(
  ( (tuple2!61587 (_1!34096 Conc!15011) (_2!34096 Conc!15011)) )
))
(declare-fun lt!2042748 () tuple2!61586)

(assert (=> d!1594209 (= lt!2042747 (tuple2!61583 (BalanceConc!29453 (_1!34096 lt!2042748)) (BalanceConc!29453 (_2!34096 lt!2042748))))))

(declare-fun splitAt!417 (Conc!15011 Int) tuple2!61586)

(assert (=> d!1594209 (= lt!2042748 (splitAt!417 (c!845172 totalInput!685) testedPSize!70))))

(assert (=> d!1594209 (isBalanced!4161 (c!845172 totalInput!685))))

(assert (=> d!1594209 (= (splitAt!415 totalInput!685 testedPSize!70) lt!2042747)))

(declare-fun b!4950328 () Bool)

(declare-fun res!2112117 () Bool)

(assert (=> b!4950328 (=> (not res!2112117) (not e!3092913))))

(assert (=> b!4950328 (= res!2112117 (isBalanced!4161 (c!845172 (_2!34094 lt!2042747))))))

(declare-fun b!4950329 () Bool)

(declare-datatypes ((tuple2!61588 0))(
  ( (tuple2!61589 (_1!34097 List!57131) (_2!34097 List!57131)) )
))
(declare-fun splitAtIndex!155 (List!57131 Int) tuple2!61588)

(assert (=> b!4950329 (= e!3092913 (= (tuple2!61589 (list!18184 (_1!34094 lt!2042747)) (list!18184 (_2!34094 lt!2042747))) (splitAtIndex!155 (list!18184 totalInput!685) testedPSize!70)))))

(assert (= (and d!1594209 res!2112118) b!4950328))

(assert (= (and b!4950328 res!2112117) b!4950329))

(declare-fun m!5975032 () Bool)

(assert (=> d!1594209 m!5975032))

(declare-fun m!5975034 () Bool)

(assert (=> d!1594209 m!5975034))

(declare-fun m!5975036 () Bool)

(assert (=> d!1594209 m!5975036))

(declare-fun m!5975038 () Bool)

(assert (=> b!4950328 m!5975038))

(declare-fun m!5975040 () Bool)

(assert (=> b!4950329 m!5975040))

(declare-fun m!5975042 () Bool)

(assert (=> b!4950329 m!5975042))

(assert (=> b!4950329 m!5974834))

(assert (=> b!4950329 m!5974834))

(declare-fun m!5975044 () Bool)

(assert (=> b!4950329 m!5975044))

(assert (=> b!4950230 d!1594209))

(declare-fun b!4950339 () Bool)

(declare-fun res!2112128 () Bool)

(declare-fun e!3092922 () Bool)

(assert (=> b!4950339 (=> (not res!2112128) (not e!3092922))))

(assert (=> b!4950339 (= res!2112128 (= (head!10618 testedP!110) (head!10618 lt!2042649)))))

(declare-fun b!4950341 () Bool)

(declare-fun e!3092921 () Bool)

(assert (=> b!4950341 (= e!3092921 (>= (size!37835 lt!2042649) (size!37835 testedP!110)))))

(declare-fun b!4950340 () Bool)

(assert (=> b!4950340 (= e!3092922 (isPrefix!5098 (tail!9753 testedP!110) (tail!9753 lt!2042649)))))

(declare-fun b!4950338 () Bool)

(declare-fun e!3092920 () Bool)

(assert (=> b!4950338 (= e!3092920 e!3092922)))

(declare-fun res!2112129 () Bool)

(assert (=> b!4950338 (=> (not res!2112129) (not e!3092922))))

(assert (=> b!4950338 (= res!2112129 (not (is-Nil!57007 lt!2042649)))))

(declare-fun d!1594217 () Bool)

(assert (=> d!1594217 e!3092921))

(declare-fun res!2112127 () Bool)

(assert (=> d!1594217 (=> res!2112127 e!3092921)))

(declare-fun lt!2042751 () Bool)

(assert (=> d!1594217 (= res!2112127 (not lt!2042751))))

(assert (=> d!1594217 (= lt!2042751 e!3092920)))

(declare-fun res!2112130 () Bool)

(assert (=> d!1594217 (=> res!2112130 e!3092920)))

(assert (=> d!1594217 (= res!2112130 (is-Nil!57007 testedP!110))))

(assert (=> d!1594217 (= (isPrefix!5098 testedP!110 lt!2042649) lt!2042751)))

(assert (= (and d!1594217 (not res!2112130)) b!4950338))

(assert (= (and b!4950338 res!2112129) b!4950339))

(assert (= (and b!4950339 res!2112128) b!4950340))

(assert (= (and d!1594217 (not res!2112127)) b!4950341))

(declare-fun m!5975046 () Bool)

(assert (=> b!4950339 m!5975046))

(declare-fun m!5975048 () Bool)

(assert (=> b!4950339 m!5975048))

(assert (=> b!4950341 m!5974896))

(assert (=> b!4950341 m!5974864))

(declare-fun m!5975050 () Bool)

(assert (=> b!4950340 m!5975050))

(declare-fun m!5975052 () Bool)

(assert (=> b!4950340 m!5975052))

(assert (=> b!4950340 m!5975050))

(assert (=> b!4950340 m!5975052))

(declare-fun m!5975054 () Bool)

(assert (=> b!4950340 m!5975054))

(assert (=> b!4950229 d!1594217))

(declare-fun b!4950343 () Bool)

(declare-fun res!2112132 () Bool)

(declare-fun e!3092925 () Bool)

(assert (=> b!4950343 (=> (not res!2112132) (not e!3092925))))

(assert (=> b!4950343 (= res!2112132 (= (head!10618 testedP!110) (head!10618 lt!2042642)))))

(declare-fun b!4950345 () Bool)

(declare-fun e!3092924 () Bool)

(assert (=> b!4950345 (= e!3092924 (>= (size!37835 lt!2042642) (size!37835 testedP!110)))))

(declare-fun b!4950344 () Bool)

(assert (=> b!4950344 (= e!3092925 (isPrefix!5098 (tail!9753 testedP!110) (tail!9753 lt!2042642)))))

(declare-fun b!4950342 () Bool)

(declare-fun e!3092923 () Bool)

(assert (=> b!4950342 (= e!3092923 e!3092925)))

(declare-fun res!2112133 () Bool)

(assert (=> b!4950342 (=> (not res!2112133) (not e!3092925))))

(assert (=> b!4950342 (= res!2112133 (not (is-Nil!57007 lt!2042642)))))

(declare-fun d!1594219 () Bool)

(assert (=> d!1594219 e!3092924))

(declare-fun res!2112131 () Bool)

(assert (=> d!1594219 (=> res!2112131 e!3092924)))

(declare-fun lt!2042752 () Bool)

(assert (=> d!1594219 (= res!2112131 (not lt!2042752))))

(assert (=> d!1594219 (= lt!2042752 e!3092923)))

(declare-fun res!2112134 () Bool)

(assert (=> d!1594219 (=> res!2112134 e!3092923)))

(assert (=> d!1594219 (= res!2112134 (is-Nil!57007 testedP!110))))

(assert (=> d!1594219 (= (isPrefix!5098 testedP!110 lt!2042642) lt!2042752)))

(assert (= (and d!1594219 (not res!2112134)) b!4950342))

(assert (= (and b!4950342 res!2112133) b!4950343))

(assert (= (and b!4950343 res!2112132) b!4950344))

(assert (= (and d!1594219 (not res!2112131)) b!4950345))

(assert (=> b!4950343 m!5975046))

(declare-fun m!5975056 () Bool)

(assert (=> b!4950343 m!5975056))

(declare-fun m!5975058 () Bool)

(assert (=> b!4950345 m!5975058))

(assert (=> b!4950345 m!5974864))

(assert (=> b!4950344 m!5975050))

(declare-fun m!5975060 () Bool)

(assert (=> b!4950344 m!5975060))

(assert (=> b!4950344 m!5975050))

(assert (=> b!4950344 m!5975060))

(declare-fun m!5975062 () Bool)

(assert (=> b!4950344 m!5975062))

(assert (=> b!4950229 d!1594219))

(declare-fun d!1594221 () Bool)

(assert (=> d!1594221 (isPrefix!5098 testedP!110 (++!12481 testedP!110 testedSuffix!70))))

(declare-fun lt!2042755 () Unit!147872)

(declare-fun choose!36562 (List!57131 List!57131) Unit!147872)

(assert (=> d!1594221 (= lt!2042755 (choose!36562 testedP!110 testedSuffix!70))))

(assert (=> d!1594221 (= (lemmaConcatTwoListThenFirstIsPrefix!3322 testedP!110 testedSuffix!70) lt!2042755)))

(declare-fun bs!1182191 () Bool)

(assert (= bs!1182191 d!1594221))

(assert (=> bs!1182191 m!5974836))

(assert (=> bs!1182191 m!5974836))

(declare-fun m!5975064 () Bool)

(assert (=> bs!1182191 m!5975064))

(declare-fun m!5975066 () Bool)

(assert (=> bs!1182191 m!5975066))

(assert (=> b!4950229 d!1594221))

(declare-fun bs!1182192 () Bool)

(declare-fun b!4950350 () Bool)

(declare-fun d!1594223 () Bool)

(assert (= bs!1182192 (and b!4950350 d!1594223)))

(declare-fun lambda!246910 () Int)

(declare-fun lambda!246909 () Int)

(assert (=> bs!1182192 (not (= lambda!246910 lambda!246909))))

(declare-fun bs!1182193 () Bool)

(declare-fun b!4950351 () Bool)

(assert (= bs!1182193 (and b!4950351 d!1594223)))

(declare-fun lambda!246911 () Int)

(assert (=> bs!1182193 (not (= lambda!246911 lambda!246909))))

(declare-fun bs!1182194 () Bool)

(assert (= bs!1182194 (and b!4950351 b!4950350)))

(assert (=> bs!1182194 (= lambda!246911 lambda!246910)))

(declare-fun lt!2042772 () Bool)

(declare-datatypes ((Option!14223 0))(
  ( (None!14222) (Some!14222 (v!50202 List!57131)) )
))
(declare-fun isEmpty!30675 (Option!14223) Bool)

(declare-fun getLanguageWitness!696 ((Set Context!6268)) Option!14223)

(assert (=> d!1594223 (= lt!2042772 (isEmpty!30675 (getLanguageWitness!696 z!3568)))))

(declare-fun forall!13281 ((Set Context!6268) Int) Bool)

(assert (=> d!1594223 (= lt!2042772 (forall!13281 z!3568 lambda!246909))))

(declare-fun lt!2042779 () Unit!147872)

(declare-fun e!3092932 () Unit!147872)

(assert (=> d!1594223 (= lt!2042779 e!3092932)))

(declare-fun c!845201 () Bool)

(assert (=> d!1594223 (= c!845201 (not (forall!13281 z!3568 lambda!246909)))))

(assert (=> d!1594223 (= (lostCauseZipper!810 z!3568) lt!2042772)))

(declare-fun Unit!147880 () Unit!147872)

(assert (=> b!4950351 (= e!3092932 Unit!147880)))

(declare-datatypes ((List!57135 0))(
  ( (Nil!57011) (Cons!57011 (h!63459 Context!6268) (t!367691 List!57135)) )
))
(declare-fun lt!2042774 () List!57135)

(declare-fun call!345646 () List!57135)

(assert (=> b!4950351 (= lt!2042774 call!345646)))

(declare-fun lt!2042773 () Unit!147872)

(declare-fun lemmaForallThenNotExists!226 (List!57135 Int) Unit!147872)

(assert (=> b!4950351 (= lt!2042773 (lemmaForallThenNotExists!226 lt!2042774 lambda!246909))))

(declare-fun call!345645 () Bool)

(assert (=> b!4950351 (not call!345645)))

(declare-fun lt!2042775 () Unit!147872)

(assert (=> b!4950351 (= lt!2042775 lt!2042773)))

(declare-fun bm!345641 () Bool)

(declare-fun toList!8005 ((Set Context!6268)) List!57135)

(assert (=> bm!345641 (= call!345646 (toList!8005 z!3568))))

(declare-fun Unit!147881 () Unit!147872)

(assert (=> b!4950350 (= e!3092932 Unit!147881)))

(declare-fun lt!2042776 () List!57135)

(assert (=> b!4950350 (= lt!2042776 call!345646)))

(declare-fun lt!2042778 () Unit!147872)

(declare-fun lemmaNotForallThenExists!243 (List!57135 Int) Unit!147872)

(assert (=> b!4950350 (= lt!2042778 (lemmaNotForallThenExists!243 lt!2042776 lambda!246909))))

(assert (=> b!4950350 call!345645))

(declare-fun lt!2042777 () Unit!147872)

(assert (=> b!4950350 (= lt!2042777 lt!2042778)))

(declare-fun bm!345640 () Bool)

(declare-fun exists!1347 (List!57135 Int) Bool)

(assert (=> bm!345640 (= call!345645 (exists!1347 (ite c!845201 lt!2042776 lt!2042774) (ite c!845201 lambda!246910 lambda!246911)))))

(assert (= (and d!1594223 c!845201) b!4950350))

(assert (= (and d!1594223 (not c!845201)) b!4950351))

(assert (= (or b!4950350 b!4950351) bm!345640))

(assert (= (or b!4950350 b!4950351) bm!345641))

(declare-fun m!5975068 () Bool)

(assert (=> bm!345641 m!5975068))

(declare-fun m!5975070 () Bool)

(assert (=> b!4950351 m!5975070))

(declare-fun m!5975072 () Bool)

(assert (=> b!4950350 m!5975072))

(declare-fun m!5975074 () Bool)

(assert (=> bm!345640 m!5975074))

(declare-fun m!5975076 () Bool)

(assert (=> d!1594223 m!5975076))

(assert (=> d!1594223 m!5975076))

(declare-fun m!5975078 () Bool)

(assert (=> d!1594223 m!5975078))

(declare-fun m!5975080 () Bool)

(assert (=> d!1594223 m!5975080))

(assert (=> d!1594223 m!5975080))

(assert (=> b!4950238 d!1594223))

(declare-fun d!1594225 () Bool)

(assert (=> d!1594225 (= testedSuffix!70 lt!2042651)))

(declare-fun lt!2042782 () Unit!147872)

(declare-fun choose!36563 (List!57131 List!57131 List!57131 List!57131 List!57131) Unit!147872)

(assert (=> d!1594225 (= lt!2042782 (choose!36563 testedP!110 testedSuffix!70 testedP!110 lt!2042651 lt!2042649))))

(assert (=> d!1594225 (isPrefix!5098 testedP!110 lt!2042649)))

(assert (=> d!1594225 (= (lemmaSamePrefixThenSameSuffix!2490 testedP!110 testedSuffix!70 testedP!110 lt!2042651 lt!2042649) lt!2042782)))

(declare-fun bs!1182195 () Bool)

(assert (= bs!1182195 d!1594225))

(declare-fun m!5975082 () Bool)

(assert (=> bs!1182195 m!5975082))

(assert (=> bs!1182195 m!5974828))

(assert (=> b!4950238 d!1594225))

(declare-fun d!1594227 () Bool)

(declare-fun lt!2042785 () List!57131)

(assert (=> d!1594227 (= (++!12481 testedP!110 lt!2042785) lt!2042649)))

(declare-fun e!3092935 () List!57131)

(assert (=> d!1594227 (= lt!2042785 e!3092935)))

(declare-fun c!845204 () Bool)

(assert (=> d!1594227 (= c!845204 (is-Cons!57007 testedP!110))))

(assert (=> d!1594227 (>= (size!37835 lt!2042649) (size!37835 testedP!110))))

(assert (=> d!1594227 (= (getSuffix!3080 lt!2042649 testedP!110) lt!2042785)))

(declare-fun b!4950356 () Bool)

(assert (=> b!4950356 (= e!3092935 (getSuffix!3080 (tail!9753 lt!2042649) (t!367687 testedP!110)))))

(declare-fun b!4950357 () Bool)

(assert (=> b!4950357 (= e!3092935 lt!2042649)))

(assert (= (and d!1594227 c!845204) b!4950356))

(assert (= (and d!1594227 (not c!845204)) b!4950357))

(declare-fun m!5975084 () Bool)

(assert (=> d!1594227 m!5975084))

(assert (=> d!1594227 m!5974896))

(assert (=> d!1594227 m!5974864))

(assert (=> b!4950356 m!5975052))

(assert (=> b!4950356 m!5975052))

(declare-fun m!5975086 () Bool)

(assert (=> b!4950356 m!5975086))

(assert (=> b!4950238 d!1594227))

(declare-fun d!1594229 () Bool)

(declare-fun lt!2042788 () Int)

(assert (=> d!1594229 (= lt!2042788 (size!37835 (list!18184 totalInput!685)))))

(declare-fun size!37839 (Conc!15011) Int)

(assert (=> d!1594229 (= lt!2042788 (size!37839 (c!845172 totalInput!685)))))

(assert (=> d!1594229 (= (size!37836 totalInput!685) lt!2042788)))

(declare-fun bs!1182196 () Bool)

(assert (= bs!1182196 d!1594229))

(assert (=> bs!1182196 m!5974834))

(assert (=> bs!1182196 m!5974834))

(declare-fun m!5975088 () Bool)

(assert (=> bs!1182196 m!5975088))

(declare-fun m!5975090 () Bool)

(assert (=> bs!1182196 m!5975090))

(assert (=> b!4950233 d!1594229))

(declare-fun d!1594231 () Bool)

(assert (=> d!1594231 (isPrefix!5098 lt!2042649 lt!2042649)))

(declare-fun lt!2042791 () Unit!147872)

(declare-fun choose!36564 (List!57131 List!57131) Unit!147872)

(assert (=> d!1594231 (= lt!2042791 (choose!36564 lt!2042649 lt!2042649))))

(assert (=> d!1594231 (= (lemmaIsPrefixRefl!3438 lt!2042649 lt!2042649) lt!2042791)))

(declare-fun bs!1182197 () Bool)

(assert (= bs!1182197 d!1594231))

(assert (=> bs!1182197 m!5974846))

(declare-fun m!5975092 () Bool)

(assert (=> bs!1182197 m!5975092))

(assert (=> b!4950223 d!1594231))

(declare-fun b!4950359 () Bool)

(declare-fun res!2112136 () Bool)

(declare-fun e!3092938 () Bool)

(assert (=> b!4950359 (=> (not res!2112136) (not e!3092938))))

(assert (=> b!4950359 (= res!2112136 (= (head!10618 lt!2042649) (head!10618 lt!2042649)))))

(declare-fun b!4950361 () Bool)

(declare-fun e!3092937 () Bool)

(assert (=> b!4950361 (= e!3092937 (>= (size!37835 lt!2042649) (size!37835 lt!2042649)))))

(declare-fun b!4950360 () Bool)

(assert (=> b!4950360 (= e!3092938 (isPrefix!5098 (tail!9753 lt!2042649) (tail!9753 lt!2042649)))))

(declare-fun b!4950358 () Bool)

(declare-fun e!3092936 () Bool)

(assert (=> b!4950358 (= e!3092936 e!3092938)))

(declare-fun res!2112137 () Bool)

(assert (=> b!4950358 (=> (not res!2112137) (not e!3092938))))

(assert (=> b!4950358 (= res!2112137 (not (is-Nil!57007 lt!2042649)))))

(declare-fun d!1594233 () Bool)

(assert (=> d!1594233 e!3092937))

(declare-fun res!2112135 () Bool)

(assert (=> d!1594233 (=> res!2112135 e!3092937)))

(declare-fun lt!2042792 () Bool)

(assert (=> d!1594233 (= res!2112135 (not lt!2042792))))

(assert (=> d!1594233 (= lt!2042792 e!3092936)))

(declare-fun res!2112138 () Bool)

(assert (=> d!1594233 (=> res!2112138 e!3092936)))

(assert (=> d!1594233 (= res!2112138 (is-Nil!57007 lt!2042649))))

(assert (=> d!1594233 (= (isPrefix!5098 lt!2042649 lt!2042649) lt!2042792)))

(assert (= (and d!1594233 (not res!2112138)) b!4950358))

(assert (= (and b!4950358 res!2112137) b!4950359))

(assert (= (and b!4950359 res!2112136) b!4950360))

(assert (= (and d!1594233 (not res!2112135)) b!4950361))

(assert (=> b!4950359 m!5975048))

(assert (=> b!4950359 m!5975048))

(assert (=> b!4950361 m!5974896))

(assert (=> b!4950361 m!5974896))

(assert (=> b!4950360 m!5975052))

(assert (=> b!4950360 m!5975052))

(assert (=> b!4950360 m!5975052))

(assert (=> b!4950360 m!5975052))

(declare-fun m!5975094 () Bool)

(assert (=> b!4950360 m!5975094))

(assert (=> b!4950223 d!1594233))

(declare-fun d!1594235 () Bool)

(assert (=> d!1594235 (= lt!2042649 testedP!110)))

(declare-fun lt!2042795 () Unit!147872)

(declare-fun choose!36565 (List!57131 List!57131 List!57131) Unit!147872)

(assert (=> d!1594235 (= lt!2042795 (choose!36565 lt!2042649 testedP!110 lt!2042649))))

(assert (=> d!1594235 (isPrefix!5098 lt!2042649 lt!2042649)))

(assert (=> d!1594235 (= (lemmaIsPrefixSameLengthThenSameList!1190 lt!2042649 testedP!110 lt!2042649) lt!2042795)))

(declare-fun bs!1182198 () Bool)

(assert (= bs!1182198 d!1594235))

(declare-fun m!5975096 () Bool)

(assert (=> bs!1182198 m!5975096))

(assert (=> bs!1182198 m!5974846))

(assert (=> b!4950223 d!1594235))

(declare-fun b!4950362 () Bool)

(declare-fun e!3092940 () List!57131)

(assert (=> b!4950362 (= e!3092940 (Cons!57007 (head!10618 lt!2042651) Nil!57007))))

(declare-fun d!1594237 () Bool)

(declare-fun e!3092939 () Bool)

(assert (=> d!1594237 e!3092939))

(declare-fun res!2112140 () Bool)

(assert (=> d!1594237 (=> (not res!2112140) (not e!3092939))))

(declare-fun lt!2042796 () List!57131)

(assert (=> d!1594237 (= res!2112140 (= (content!10160 lt!2042796) (set.union (content!10160 testedP!110) (content!10160 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))))

(assert (=> d!1594237 (= lt!2042796 e!3092940)))

(declare-fun c!845205 () Bool)

(assert (=> d!1594237 (= c!845205 (is-Nil!57007 testedP!110))))

(assert (=> d!1594237 (= (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007)) lt!2042796)))

(declare-fun b!4950365 () Bool)

(assert (=> b!4950365 (= e!3092939 (or (not (= (Cons!57007 (head!10618 lt!2042651) Nil!57007) Nil!57007)) (= lt!2042796 testedP!110)))))

(declare-fun b!4950364 () Bool)

(declare-fun res!2112139 () Bool)

(assert (=> b!4950364 (=> (not res!2112139) (not e!3092939))))

(assert (=> b!4950364 (= res!2112139 (= (size!37835 lt!2042796) (+ (size!37835 testedP!110) (size!37835 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))))

(declare-fun b!4950363 () Bool)

(assert (=> b!4950363 (= e!3092940 (Cons!57007 (h!63455 testedP!110) (++!12481 (t!367687 testedP!110) (Cons!57007 (head!10618 lt!2042651) Nil!57007))))))

(assert (= (and d!1594237 c!845205) b!4950362))

(assert (= (and d!1594237 (not c!845205)) b!4950363))

(assert (= (and d!1594237 res!2112140) b!4950364))

(assert (= (and b!4950364 res!2112139) b!4950365))

(declare-fun m!5975098 () Bool)

(assert (=> d!1594237 m!5975098))

(declare-fun m!5975100 () Bool)

(assert (=> d!1594237 m!5975100))

(declare-fun m!5975102 () Bool)

(assert (=> d!1594237 m!5975102))

(declare-fun m!5975104 () Bool)

(assert (=> b!4950364 m!5975104))

(assert (=> b!4950364 m!5974864))

(declare-fun m!5975106 () Bool)

(assert (=> b!4950364 m!5975106))

(declare-fun m!5975108 () Bool)

(assert (=> b!4950363 m!5975108))

(assert (=> b!4950236 d!1594237))

(declare-fun b!4950366 () Bool)

(declare-fun e!3092942 () List!57131)

(assert (=> b!4950366 (= e!3092942 (Cons!57007 lt!2042661 Nil!57007))))

(declare-fun d!1594239 () Bool)

(declare-fun e!3092941 () Bool)

(assert (=> d!1594239 e!3092941))

(declare-fun res!2112142 () Bool)

(assert (=> d!1594239 (=> (not res!2112142) (not e!3092941))))

(declare-fun lt!2042797 () List!57131)

(assert (=> d!1594239 (= res!2112142 (= (content!10160 lt!2042797) (set.union (content!10160 testedP!110) (content!10160 (Cons!57007 lt!2042661 Nil!57007)))))))

(assert (=> d!1594239 (= lt!2042797 e!3092942)))

(declare-fun c!845206 () Bool)

(assert (=> d!1594239 (= c!845206 (is-Nil!57007 testedP!110))))

(assert (=> d!1594239 (= (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007)) lt!2042797)))

(declare-fun b!4950369 () Bool)

(assert (=> b!4950369 (= e!3092941 (or (not (= (Cons!57007 lt!2042661 Nil!57007) Nil!57007)) (= lt!2042797 testedP!110)))))

(declare-fun b!4950368 () Bool)

(declare-fun res!2112141 () Bool)

(assert (=> b!4950368 (=> (not res!2112141) (not e!3092941))))

(assert (=> b!4950368 (= res!2112141 (= (size!37835 lt!2042797) (+ (size!37835 testedP!110) (size!37835 (Cons!57007 lt!2042661 Nil!57007)))))))

(declare-fun b!4950367 () Bool)

(assert (=> b!4950367 (= e!3092942 (Cons!57007 (h!63455 testedP!110) (++!12481 (t!367687 testedP!110) (Cons!57007 lt!2042661 Nil!57007))))))

(assert (= (and d!1594239 c!845206) b!4950366))

(assert (= (and d!1594239 (not c!845206)) b!4950367))

(assert (= (and d!1594239 res!2112142) b!4950368))

(assert (= (and b!4950368 res!2112141) b!4950369))

(declare-fun m!5975110 () Bool)

(assert (=> d!1594239 m!5975110))

(assert (=> d!1594239 m!5975100))

(declare-fun m!5975112 () Bool)

(assert (=> d!1594239 m!5975112))

(declare-fun m!5975114 () Bool)

(assert (=> b!4950368 m!5975114))

(assert (=> b!4950368 m!5974864))

(declare-fun m!5975116 () Bool)

(assert (=> b!4950368 m!5975116))

(declare-fun m!5975118 () Bool)

(assert (=> b!4950367 m!5975118))

(assert (=> b!4950236 d!1594239))

(declare-fun b!4950371 () Bool)

(declare-fun res!2112144 () Bool)

(declare-fun e!3092945 () Bool)

(assert (=> b!4950371 (=> (not res!2112144) (not e!3092945))))

(assert (=> b!4950371 (= res!2112144 (= (head!10618 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))) (head!10618 lt!2042649)))))

(declare-fun e!3092944 () Bool)

(declare-fun b!4950373 () Bool)

(assert (=> b!4950373 (= e!3092944 (>= (size!37835 lt!2042649) (size!37835 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))))

(declare-fun b!4950372 () Bool)

(assert (=> b!4950372 (= e!3092945 (isPrefix!5098 (tail!9753 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))) (tail!9753 lt!2042649)))))

(declare-fun b!4950370 () Bool)

(declare-fun e!3092943 () Bool)

(assert (=> b!4950370 (= e!3092943 e!3092945)))

(declare-fun res!2112145 () Bool)

(assert (=> b!4950370 (=> (not res!2112145) (not e!3092945))))

(assert (=> b!4950370 (= res!2112145 (not (is-Nil!57007 lt!2042649)))))

(declare-fun d!1594241 () Bool)

(assert (=> d!1594241 e!3092944))

(declare-fun res!2112143 () Bool)

(assert (=> d!1594241 (=> res!2112143 e!3092944)))

(declare-fun lt!2042798 () Bool)

(assert (=> d!1594241 (= res!2112143 (not lt!2042798))))

(assert (=> d!1594241 (= lt!2042798 e!3092943)))

(declare-fun res!2112146 () Bool)

(assert (=> d!1594241 (=> res!2112146 e!3092943)))

(assert (=> d!1594241 (= res!2112146 (is-Nil!57007 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))))))

(assert (=> d!1594241 (= (isPrefix!5098 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007)) lt!2042649) lt!2042798)))

(assert (= (and d!1594241 (not res!2112146)) b!4950370))

(assert (= (and b!4950370 res!2112145) b!4950371))

(assert (= (and b!4950371 res!2112144) b!4950372))

(assert (= (and d!1594241 (not res!2112143)) b!4950373))

(assert (=> b!4950371 m!5974878))

(declare-fun m!5975120 () Bool)

(assert (=> b!4950371 m!5975120))

(assert (=> b!4950371 m!5975048))

(assert (=> b!4950373 m!5974896))

(assert (=> b!4950373 m!5974878))

(declare-fun m!5975122 () Bool)

(assert (=> b!4950373 m!5975122))

(assert (=> b!4950372 m!5974878))

(declare-fun m!5975124 () Bool)

(assert (=> b!4950372 m!5975124))

(assert (=> b!4950372 m!5975052))

(assert (=> b!4950372 m!5975124))

(assert (=> b!4950372 m!5975052))

(declare-fun m!5975126 () Bool)

(assert (=> b!4950372 m!5975126))

(assert (=> b!4950236 d!1594241))

(declare-fun d!1594243 () Bool)

(assert (=> d!1594243 (= (head!10618 lt!2042651) (h!63455 lt!2042651))))

(assert (=> b!4950236 d!1594243))

(declare-fun d!1594245 () Bool)

(assert (=> d!1594245 (= (++!12481 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007)) lt!2042646) lt!2042649)))

(declare-fun lt!2042801 () Unit!147872)

(declare-fun choose!36566 (List!57131 C!27234 List!57131 List!57131) Unit!147872)

(assert (=> d!1594245 (= lt!2042801 (choose!36566 testedP!110 lt!2042661 lt!2042646 lt!2042649))))

(assert (=> d!1594245 (= (++!12481 testedP!110 (Cons!57007 lt!2042661 lt!2042646)) lt!2042649)))

(assert (=> d!1594245 (= (lemmaMoveElementToOtherListKeepsConcatEq!1437 testedP!110 lt!2042661 lt!2042646 lt!2042649) lt!2042801)))

(declare-fun bs!1182199 () Bool)

(assert (= bs!1182199 d!1594245))

(assert (=> bs!1182199 m!5974876))

(assert (=> bs!1182199 m!5974876))

(declare-fun m!5975128 () Bool)

(assert (=> bs!1182199 m!5975128))

(declare-fun m!5975130 () Bool)

(assert (=> bs!1182199 m!5975130))

(declare-fun m!5975132 () Bool)

(assert (=> bs!1182199 m!5975132))

(assert (=> b!4950236 d!1594245))

(declare-fun b!4950374 () Bool)

(declare-fun e!3092947 () List!57131)

(assert (=> b!4950374 (= e!3092947 lt!2042646)))

(declare-fun d!1594247 () Bool)

(declare-fun e!3092946 () Bool)

(assert (=> d!1594247 e!3092946))

(declare-fun res!2112148 () Bool)

(assert (=> d!1594247 (=> (not res!2112148) (not e!3092946))))

(declare-fun lt!2042802 () List!57131)

(assert (=> d!1594247 (= res!2112148 (= (content!10160 lt!2042802) (set.union (content!10160 lt!2042648) (content!10160 lt!2042646))))))

(assert (=> d!1594247 (= lt!2042802 e!3092947)))

(declare-fun c!845207 () Bool)

(assert (=> d!1594247 (= c!845207 (is-Nil!57007 lt!2042648))))

(assert (=> d!1594247 (= (++!12481 lt!2042648 lt!2042646) lt!2042802)))

(declare-fun b!4950377 () Bool)

(assert (=> b!4950377 (= e!3092946 (or (not (= lt!2042646 Nil!57007)) (= lt!2042802 lt!2042648)))))

(declare-fun b!4950376 () Bool)

(declare-fun res!2112147 () Bool)

(assert (=> b!4950376 (=> (not res!2112147) (not e!3092946))))

(assert (=> b!4950376 (= res!2112147 (= (size!37835 lt!2042802) (+ (size!37835 lt!2042648) (size!37835 lt!2042646))))))

(declare-fun b!4950375 () Bool)

(assert (=> b!4950375 (= e!3092947 (Cons!57007 (h!63455 lt!2042648) (++!12481 (t!367687 lt!2042648) lt!2042646)))))

(assert (= (and d!1594247 c!845207) b!4950374))

(assert (= (and d!1594247 (not c!845207)) b!4950375))

(assert (= (and d!1594247 res!2112148) b!4950376))

(assert (= (and b!4950376 res!2112147) b!4950377))

(declare-fun m!5975134 () Bool)

(assert (=> d!1594247 m!5975134))

(declare-fun m!5975136 () Bool)

(assert (=> d!1594247 m!5975136))

(declare-fun m!5975138 () Bool)

(assert (=> d!1594247 m!5975138))

(declare-fun m!5975140 () Bool)

(assert (=> b!4950376 m!5975140))

(assert (=> b!4950376 m!5974840))

(declare-fun m!5975142 () Bool)

(assert (=> b!4950376 m!5975142))

(declare-fun m!5975144 () Bool)

(assert (=> b!4950375 m!5975144))

(assert (=> b!4950236 d!1594247))

(declare-fun bs!1182200 () Bool)

(declare-fun d!1594249 () Bool)

(assert (= bs!1182200 (and d!1594249 d!1594223)))

(declare-fun lambda!246914 () Int)

(assert (=> bs!1182200 (not (= lambda!246914 lambda!246909))))

(declare-fun bs!1182201 () Bool)

(assert (= bs!1182201 (and d!1594249 b!4950350)))

(assert (=> bs!1182201 (not (= lambda!246914 lambda!246910))))

(declare-fun bs!1182202 () Bool)

(assert (= bs!1182202 (and d!1594249 b!4950351)))

(assert (=> bs!1182202 (not (= lambda!246914 lambda!246911))))

(declare-fun exists!1348 ((Set Context!6268) Int) Bool)

(assert (=> d!1594249 (= (nullableZipper!863 z!3568) (exists!1348 z!3568 lambda!246914))))

(declare-fun bs!1182203 () Bool)

(assert (= bs!1182203 d!1594249))

(declare-fun m!5975146 () Bool)

(assert (=> bs!1182203 m!5975146))

(assert (=> b!4950236 d!1594249))

(declare-fun d!1594251 () Bool)

(assert (=> d!1594251 (= (tail!9753 testedSuffix!70) (t!367687 testedSuffix!70))))

(assert (=> b!4950236 d!1594251))

(declare-fun d!1594253 () Bool)

(assert (=> d!1594253 (isPrefix!5098 (++!12481 testedP!110 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007)) lt!2042649)))

(declare-fun lt!2042805 () Unit!147872)

(declare-fun choose!36567 (List!57131 List!57131) Unit!147872)

(assert (=> d!1594253 (= lt!2042805 (choose!36567 testedP!110 lt!2042649))))

(assert (=> d!1594253 (isPrefix!5098 testedP!110 lt!2042649)))

(assert (=> d!1594253 (= (lemmaAddHeadSuffixToPrefixStillPrefix!827 testedP!110 lt!2042649) lt!2042805)))

(declare-fun bs!1182204 () Bool)

(assert (= bs!1182204 d!1594253))

(declare-fun m!5975148 () Bool)

(assert (=> bs!1182204 m!5975148))

(declare-fun m!5975150 () Bool)

(assert (=> bs!1182204 m!5975150))

(assert (=> bs!1182204 m!5974904))

(declare-fun m!5975152 () Bool)

(assert (=> bs!1182204 m!5975152))

(assert (=> bs!1182204 m!5974904))

(declare-fun m!5975154 () Bool)

(assert (=> bs!1182204 m!5975154))

(assert (=> bs!1182204 m!5975148))

(assert (=> bs!1182204 m!5974828))

(assert (=> b!4950236 d!1594253))

(declare-fun d!1594255 () Bool)

(assert (=> d!1594255 (= (list!18184 totalInput!685) (list!18186 (c!845172 totalInput!685)))))

(declare-fun bs!1182205 () Bool)

(assert (= bs!1182205 d!1594255))

(declare-fun m!5975156 () Bool)

(assert (=> bs!1182205 m!5975156))

(assert (=> start!521482 d!1594255))

(declare-fun b!4950378 () Bool)

(declare-fun e!3092949 () List!57131)

(assert (=> b!4950378 (= e!3092949 testedSuffix!70)))

(declare-fun d!1594257 () Bool)

(declare-fun e!3092948 () Bool)

(assert (=> d!1594257 e!3092948))

(declare-fun res!2112150 () Bool)

(assert (=> d!1594257 (=> (not res!2112150) (not e!3092948))))

(declare-fun lt!2042806 () List!57131)

(assert (=> d!1594257 (= res!2112150 (= (content!10160 lt!2042806) (set.union (content!10160 testedP!110) (content!10160 testedSuffix!70))))))

(assert (=> d!1594257 (= lt!2042806 e!3092949)))

(declare-fun c!845210 () Bool)

(assert (=> d!1594257 (= c!845210 (is-Nil!57007 testedP!110))))

(assert (=> d!1594257 (= (++!12481 testedP!110 testedSuffix!70) lt!2042806)))

(declare-fun b!4950381 () Bool)

(assert (=> b!4950381 (= e!3092948 (or (not (= testedSuffix!70 Nil!57007)) (= lt!2042806 testedP!110)))))

(declare-fun b!4950380 () Bool)

(declare-fun res!2112149 () Bool)

(assert (=> b!4950380 (=> (not res!2112149) (not e!3092948))))

(assert (=> b!4950380 (= res!2112149 (= (size!37835 lt!2042806) (+ (size!37835 testedP!110) (size!37835 testedSuffix!70))))))

(declare-fun b!4950379 () Bool)

(assert (=> b!4950379 (= e!3092949 (Cons!57007 (h!63455 testedP!110) (++!12481 (t!367687 testedP!110) testedSuffix!70)))))

(assert (= (and d!1594257 c!845210) b!4950378))

(assert (= (and d!1594257 (not c!845210)) b!4950379))

(assert (= (and d!1594257 res!2112150) b!4950380))

(assert (= (and b!4950380 res!2112149) b!4950381))

(declare-fun m!5975158 () Bool)

(assert (=> d!1594257 m!5975158))

(assert (=> d!1594257 m!5975100))

(declare-fun m!5975160 () Bool)

(assert (=> d!1594257 m!5975160))

(declare-fun m!5975162 () Bool)

(assert (=> b!4950380 m!5975162))

(assert (=> b!4950380 m!5974864))

(declare-fun m!5975164 () Bool)

(assert (=> b!4950380 m!5975164))

(declare-fun m!5975166 () Bool)

(assert (=> b!4950379 m!5975166))

(assert (=> start!521482 d!1594257))

(declare-fun d!1594259 () Bool)

(assert (=> d!1594259 (= (inv!74293 totalInput!685) (isBalanced!4161 (c!845172 totalInput!685)))))

(declare-fun bs!1182206 () Bool)

(assert (= bs!1182206 d!1594259))

(assert (=> bs!1182206 m!5975036))

(assert (=> start!521482 d!1594259))

(declare-fun d!1594261 () Bool)

(declare-fun c!845219 () Bool)

(assert (=> d!1594261 (= c!845219 (is-Node!15011 (c!845172 totalInput!685)))))

(declare-fun e!3092958 () Bool)

(assert (=> d!1594261 (= (inv!74294 (c!845172 totalInput!685)) e!3092958)))

(declare-fun b!4950388 () Bool)

(declare-fun inv!74298 (Conc!15011) Bool)

(assert (=> b!4950388 (= e!3092958 (inv!74298 (c!845172 totalInput!685)))))

(declare-fun b!4950389 () Bool)

(declare-fun e!3092959 () Bool)

(assert (=> b!4950389 (= e!3092958 e!3092959)))

(declare-fun res!2112153 () Bool)

(assert (=> b!4950389 (= res!2112153 (not (is-Leaf!24950 (c!845172 totalInput!685))))))

(assert (=> b!4950389 (=> res!2112153 e!3092959)))

(declare-fun b!4950390 () Bool)

(declare-fun inv!74299 (Conc!15011) Bool)

(assert (=> b!4950390 (= e!3092959 (inv!74299 (c!845172 totalInput!685)))))

(assert (= (and d!1594261 c!845219) b!4950388))

(assert (= (and d!1594261 (not c!845219)) b!4950389))

(assert (= (and b!4950389 (not res!2112153)) b!4950390))

(declare-fun m!5975168 () Bool)

(assert (=> b!4950388 m!5975168))

(declare-fun m!5975170 () Bool)

(assert (=> b!4950390 m!5975170))

(assert (=> b!4950235 d!1594261))

(declare-fun d!1594263 () Bool)

(declare-fun lt!2042829 () Int)

(assert (=> d!1594263 (>= lt!2042829 0)))

(declare-fun e!3092963 () Int)

(assert (=> d!1594263 (= lt!2042829 e!3092963)))

(declare-fun c!845223 () Bool)

(assert (=> d!1594263 (= c!845223 (is-Nil!57007 lt!2042648))))

(assert (=> d!1594263 (= (size!37835 lt!2042648) lt!2042829)))

(declare-fun b!4950397 () Bool)

(assert (=> b!4950397 (= e!3092963 0)))

(declare-fun b!4950398 () Bool)

(assert (=> b!4950398 (= e!3092963 (+ 1 (size!37835 (t!367687 lt!2042648))))))

(assert (= (and d!1594263 c!845223) b!4950397))

(assert (= (and d!1594263 (not c!845223)) b!4950398))

(declare-fun m!5975172 () Bool)

(assert (=> b!4950398 m!5975172))

(assert (=> b!4950225 d!1594263))

(declare-fun d!1594265 () Bool)

(declare-fun lt!2042830 () Int)

(assert (=> d!1594265 (>= lt!2042830 0)))

(declare-fun e!3092964 () Int)

(assert (=> d!1594265 (= lt!2042830 e!3092964)))

(declare-fun c!845224 () Bool)

(assert (=> d!1594265 (= c!845224 (is-Nil!57007 lt!2042649))))

(assert (=> d!1594265 (= (size!37835 lt!2042649) lt!2042830)))

(declare-fun b!4950399 () Bool)

(assert (=> b!4950399 (= e!3092964 0)))

(declare-fun b!4950400 () Bool)

(assert (=> b!4950400 (= e!3092964 (+ 1 (size!37835 (t!367687 lt!2042649))))))

(assert (= (and d!1594265 c!845224) b!4950399))

(assert (= (and d!1594265 (not c!845224)) b!4950400))

(declare-fun m!5975174 () Bool)

(assert (=> b!4950400 m!5975174))

(assert (=> b!4950224 d!1594265))

(declare-fun d!1594267 () Bool)

(assert (=> d!1594267 (<= (size!37835 testedP!110) (size!37835 lt!2042649))))

(declare-fun lt!2042833 () Unit!147872)

(declare-fun choose!36569 (List!57131 List!57131) Unit!147872)

(assert (=> d!1594267 (= lt!2042833 (choose!36569 testedP!110 lt!2042649))))

(assert (=> d!1594267 (isPrefix!5098 testedP!110 lt!2042649)))

(assert (=> d!1594267 (= (lemmaIsPrefixThenSmallerEqSize!753 testedP!110 lt!2042649) lt!2042833)))

(declare-fun bs!1182210 () Bool)

(assert (= bs!1182210 d!1594267))

(assert (=> bs!1182210 m!5974864))

(assert (=> bs!1182210 m!5974896))

(declare-fun m!5975190 () Bool)

(assert (=> bs!1182210 m!5975190))

(assert (=> bs!1182210 m!5974828))

(assert (=> b!4950224 d!1594267))

(declare-fun d!1594271 () Bool)

(declare-fun lt!2042834 () Int)

(assert (=> d!1594271 (= lt!2042834 (size!37835 (list!18184 (_1!34094 lt!2042656))))))

(assert (=> d!1594271 (= lt!2042834 (size!37839 (c!845172 (_1!34094 lt!2042656))))))

(assert (=> d!1594271 (= (size!37836 (_1!34094 lt!2042656)) lt!2042834)))

(declare-fun bs!1182211 () Bool)

(assert (= bs!1182211 d!1594271))

(assert (=> bs!1182211 m!5974870))

(assert (=> bs!1182211 m!5974870))

(declare-fun m!5975192 () Bool)

(assert (=> bs!1182211 m!5975192))

(declare-fun m!5975194 () Bool)

(assert (=> bs!1182211 m!5975194))

(assert (=> b!4950228 d!1594271))

(declare-fun d!1594273 () Bool)

(assert (=> d!1594273 (and (= lt!2042654 testedP!110) (= lt!2042653 testedSuffix!70))))

(declare-fun lt!2042840 () Unit!147872)

(declare-fun choose!36570 (List!57131 List!57131 List!57131 List!57131) Unit!147872)

(assert (=> d!1594273 (= lt!2042840 (choose!36570 lt!2042654 lt!2042653 testedP!110 testedSuffix!70))))

(assert (=> d!1594273 (= (++!12481 lt!2042654 lt!2042653) (++!12481 testedP!110 testedSuffix!70))))

(assert (=> d!1594273 (= (lemmaConcatSameAndSameSizesThenSameLists!736 lt!2042654 lt!2042653 testedP!110 testedSuffix!70) lt!2042840)))

(declare-fun bs!1182213 () Bool)

(assert (= bs!1182213 d!1594273))

(declare-fun m!5975198 () Bool)

(assert (=> bs!1182213 m!5975198))

(assert (=> bs!1182213 m!5974866))

(assert (=> bs!1182213 m!5974836))

(assert (=> b!4950227 d!1594273))

(declare-fun d!1594277 () Bool)

(assert (=> d!1594277 (= (head!10618 testedSuffix!70) (h!63455 testedSuffix!70))))

(assert (=> b!4950227 d!1594277))

(declare-fun d!1594279 () Bool)

(assert (=> d!1594279 (= (head!10618 (drop!2299 lt!2042649 testedPSize!70)) (apply!13848 lt!2042649 testedPSize!70))))

(declare-fun lt!2042846 () Unit!147872)

(declare-fun choose!36571 (List!57131 Int) Unit!147872)

(assert (=> d!1594279 (= lt!2042846 (choose!36571 lt!2042649 testedPSize!70))))

(declare-fun e!3092970 () Bool)

(assert (=> d!1594279 e!3092970))

(declare-fun res!2112156 () Bool)

(assert (=> d!1594279 (=> (not res!2112156) (not e!3092970))))

(assert (=> d!1594279 (= res!2112156 (>= testedPSize!70 0))))

(assert (=> d!1594279 (= (lemmaDropApply!1353 lt!2042649 testedPSize!70) lt!2042846)))

(declare-fun b!4950409 () Bool)

(assert (=> b!4950409 (= e!3092970 (< testedPSize!70 (size!37835 lt!2042649)))))

(assert (= (and d!1594279 res!2112156) b!4950409))

(assert (=> d!1594279 m!5974854))

(assert (=> d!1594279 m!5974854))

(assert (=> d!1594279 m!5974858))

(assert (=> d!1594279 m!5974852))

(declare-fun m!5975206 () Bool)

(assert (=> d!1594279 m!5975206))

(assert (=> b!4950409 m!5974896))

(assert (=> b!4950227 d!1594279))

(declare-fun d!1594283 () Bool)

(declare-fun lt!2042850 () C!27234)

(declare-fun contains!19499 (List!57131 C!27234) Bool)

(assert (=> d!1594283 (contains!19499 lt!2042649 lt!2042850)))

(declare-fun e!3092977 () C!27234)

(assert (=> d!1594283 (= lt!2042850 e!3092977)))

(declare-fun c!845231 () Bool)

(assert (=> d!1594283 (= c!845231 (= testedPSize!70 0))))

(declare-fun e!3092978 () Bool)

(assert (=> d!1594283 e!3092978))

(declare-fun res!2112161 () Bool)

(assert (=> d!1594283 (=> (not res!2112161) (not e!3092978))))

(assert (=> d!1594283 (= res!2112161 (<= 0 testedPSize!70))))

(assert (=> d!1594283 (= (apply!13848 lt!2042649 testedPSize!70) lt!2042850)))

(declare-fun b!4950420 () Bool)

(assert (=> b!4950420 (= e!3092978 (< testedPSize!70 (size!37835 lt!2042649)))))

(declare-fun b!4950421 () Bool)

(assert (=> b!4950421 (= e!3092977 (head!10618 lt!2042649))))

(declare-fun b!4950422 () Bool)

(assert (=> b!4950422 (= e!3092977 (apply!13848 (tail!9753 lt!2042649) (- testedPSize!70 1)))))

(assert (= (and d!1594283 res!2112161) b!4950420))

(assert (= (and d!1594283 c!845231) b!4950421))

(assert (= (and d!1594283 (not c!845231)) b!4950422))

(declare-fun m!5975228 () Bool)

(assert (=> d!1594283 m!5975228))

(assert (=> b!4950420 m!5974896))

(assert (=> b!4950421 m!5975048))

(assert (=> b!4950422 m!5975052))

(assert (=> b!4950422 m!5975052))

(declare-fun m!5975230 () Bool)

(assert (=> b!4950422 m!5975230))

(assert (=> b!4950227 d!1594283))

(declare-fun d!1594293 () Bool)

(declare-fun lt!2042853 () C!27234)

(assert (=> d!1594293 (= lt!2042853 (apply!13848 (list!18184 totalInput!685) testedPSize!70))))

(declare-fun apply!13851 (Conc!15011 Int) C!27234)

(assert (=> d!1594293 (= lt!2042853 (apply!13851 (c!845172 totalInput!685) testedPSize!70))))

(declare-fun e!3092981 () Bool)

(assert (=> d!1594293 e!3092981))

(declare-fun res!2112164 () Bool)

(assert (=> d!1594293 (=> (not res!2112164) (not e!3092981))))

(assert (=> d!1594293 (= res!2112164 (<= 0 testedPSize!70))))

(assert (=> d!1594293 (= (apply!13847 totalInput!685 testedPSize!70) lt!2042853)))

(declare-fun b!4950425 () Bool)

(assert (=> b!4950425 (= e!3092981 (< testedPSize!70 (size!37836 totalInput!685)))))

(assert (= (and d!1594293 res!2112164) b!4950425))

(assert (=> d!1594293 m!5974834))

(assert (=> d!1594293 m!5974834))

(declare-fun m!5975232 () Bool)

(assert (=> d!1594293 m!5975232))

(declare-fun m!5975234 () Bool)

(assert (=> d!1594293 m!5975234))

(assert (=> b!4950425 m!5974842))

(assert (=> b!4950227 d!1594293))

(declare-fun d!1594295 () Bool)

(assert (=> d!1594295 (= (head!10618 (drop!2299 lt!2042649 testedPSize!70)) (h!63455 (drop!2299 lt!2042649 testedPSize!70)))))

(assert (=> b!4950227 d!1594295))

(declare-fun b!4950448 () Bool)

(declare-fun e!3092998 () List!57131)

(assert (=> b!4950448 (= e!3092998 Nil!57007)))

(declare-fun b!4950449 () Bool)

(declare-fun e!3092994 () Int)

(assert (=> b!4950449 (= e!3092994 0)))

(declare-fun b!4950450 () Bool)

(declare-fun e!3092997 () Int)

(assert (=> b!4950450 (= e!3092997 e!3092994)))

(declare-fun c!845243 () Bool)

(declare-fun call!345655 () Int)

(assert (=> b!4950450 (= c!845243 (>= testedPSize!70 call!345655))))

(declare-fun bm!345650 () Bool)

(assert (=> bm!345650 (= call!345655 (size!37835 lt!2042649))))

(declare-fun b!4950451 () Bool)

(declare-fun e!3092995 () List!57131)

(assert (=> b!4950451 (= e!3092998 e!3092995)))

(declare-fun c!845240 () Bool)

(assert (=> b!4950451 (= c!845240 (<= testedPSize!70 0))))

(declare-fun d!1594297 () Bool)

(declare-fun e!3092996 () Bool)

(assert (=> d!1594297 e!3092996))

(declare-fun res!2112171 () Bool)

(assert (=> d!1594297 (=> (not res!2112171) (not e!3092996))))

(declare-fun lt!2042860 () List!57131)

(assert (=> d!1594297 (= res!2112171 (set.subset (content!10160 lt!2042860) (content!10160 lt!2042649)))))

(assert (=> d!1594297 (= lt!2042860 e!3092998)))

(declare-fun c!845242 () Bool)

(assert (=> d!1594297 (= c!845242 (is-Nil!57007 lt!2042649))))

(assert (=> d!1594297 (= (drop!2299 lt!2042649 testedPSize!70) lt!2042860)))

(declare-fun b!4950452 () Bool)

(assert (=> b!4950452 (= e!3092995 (drop!2299 (t!367687 lt!2042649) (- testedPSize!70 1)))))

(declare-fun b!4950453 () Bool)

(assert (=> b!4950453 (= e!3092997 call!345655)))

(declare-fun b!4950454 () Bool)

(assert (=> b!4950454 (= e!3092996 (= (size!37835 lt!2042860) e!3092997))))

(declare-fun c!845241 () Bool)

(assert (=> b!4950454 (= c!845241 (<= testedPSize!70 0))))

(declare-fun b!4950455 () Bool)

(assert (=> b!4950455 (= e!3092994 (- call!345655 testedPSize!70))))

(declare-fun b!4950456 () Bool)

(assert (=> b!4950456 (= e!3092995 lt!2042649)))

(assert (= (and d!1594297 c!845242) b!4950448))

(assert (= (and d!1594297 (not c!845242)) b!4950451))

(assert (= (and b!4950451 c!845240) b!4950456))

(assert (= (and b!4950451 (not c!845240)) b!4950452))

(assert (= (and d!1594297 res!2112171) b!4950454))

(assert (= (and b!4950454 c!845241) b!4950453))

(assert (= (and b!4950454 (not c!845241)) b!4950450))

(assert (= (and b!4950450 c!845243) b!4950449))

(assert (= (and b!4950450 (not c!845243)) b!4950455))

(assert (= (or b!4950453 b!4950450 b!4950455) bm!345650))

(assert (=> bm!345650 m!5974896))

(declare-fun m!5975236 () Bool)

(assert (=> d!1594297 m!5975236))

(declare-fun m!5975238 () Bool)

(assert (=> d!1594297 m!5975238))

(declare-fun m!5975240 () Bool)

(assert (=> b!4950452 m!5975240))

(declare-fun m!5975242 () Bool)

(assert (=> b!4950454 m!5975242))

(assert (=> b!4950227 d!1594297))

(declare-fun d!1594299 () Bool)

(declare-fun lt!2042861 () Int)

(assert (=> d!1594299 (>= lt!2042861 0)))

(declare-fun e!3092999 () Int)

(assert (=> d!1594299 (= lt!2042861 e!3092999)))

(declare-fun c!845244 () Bool)

(assert (=> d!1594299 (= c!845244 (is-Nil!57007 testedP!110))))

(assert (=> d!1594299 (= (size!37835 testedP!110) lt!2042861)))

(declare-fun b!4950457 () Bool)

(assert (=> b!4950457 (= e!3092999 0)))

(declare-fun b!4950458 () Bool)

(assert (=> b!4950458 (= e!3092999 (+ 1 (size!37835 (t!367687 testedP!110))))))

(assert (= (and d!1594299 c!845244) b!4950457))

(assert (= (and d!1594299 (not c!845244)) b!4950458))

(declare-fun m!5975244 () Bool)

(assert (=> b!4950458 m!5975244))

(assert (=> b!4950237 d!1594299))

(declare-fun d!1594301 () Bool)

(declare-fun lambda!246935 () Int)

(declare-fun forall!13284 (List!57132 Int) Bool)

(assert (=> d!1594301 (= (inv!74292 setElem!28113) (forall!13284 (exprs!3634 setElem!28113) lambda!246935))))

(declare-fun bs!1182217 () Bool)

(assert (= bs!1182217 d!1594301))

(declare-fun m!5975258 () Bool)

(assert (=> bs!1182217 m!5975258))

(assert (=> setNonEmpty!28113 d!1594301))

(declare-fun tp!1387994 () Bool)

(declare-fun tp!1387992 () Bool)

(declare-fun b!4950481 () Bool)

(declare-fun e!3093015 () Bool)

(assert (=> b!4950481 (= e!3093015 (and (inv!74294 (left!41595 (c!845172 totalInput!685))) tp!1387994 (inv!74294 (right!41925 (c!845172 totalInput!685))) tp!1387992))))

(declare-fun b!4950483 () Bool)

(declare-fun e!3093014 () Bool)

(declare-fun tp!1387993 () Bool)

(assert (=> b!4950483 (= e!3093014 tp!1387993)))

(declare-fun b!4950482 () Bool)

(declare-fun inv!74300 (IArray!30083) Bool)

(assert (=> b!4950482 (= e!3093015 (and (inv!74300 (xs!18337 (c!845172 totalInput!685))) e!3093014))))

(assert (=> b!4950235 (= tp!1387969 (and (inv!74294 (c!845172 totalInput!685)) e!3093015))))

(assert (= (and b!4950235 (is-Node!15011 (c!845172 totalInput!685))) b!4950481))

(assert (= b!4950482 b!4950483))

(assert (= (and b!4950235 (is-Leaf!24950 (c!845172 totalInput!685))) b!4950482))

(declare-fun m!5975268 () Bool)

(assert (=> b!4950481 m!5975268))

(declare-fun m!5975272 () Bool)

(assert (=> b!4950481 m!5975272))

(declare-fun m!5975274 () Bool)

(assert (=> b!4950482 m!5975274))

(assert (=> b!4950235 m!5974874))

(declare-fun b!4950488 () Bool)

(declare-fun e!3093018 () Bool)

(declare-fun tp!1387997 () Bool)

(assert (=> b!4950488 (= e!3093018 (and tp_is_empty!36181 tp!1387997))))

(assert (=> b!4950232 (= tp!1387968 e!3093018)))

(assert (= (and b!4950232 (is-Cons!57007 (t!367687 testedP!110))) b!4950488))

(declare-fun b!4950493 () Bool)

(declare-fun e!3093021 () Bool)

(declare-fun tp!1388002 () Bool)

(declare-fun tp!1388003 () Bool)

(assert (=> b!4950493 (= e!3093021 (and tp!1388002 tp!1388003))))

(assert (=> b!4950222 (= tp!1387966 e!3093021)))

(assert (= (and b!4950222 (is-Cons!57008 (exprs!3634 setElem!28113))) b!4950493))

(declare-fun condSetEmpty!28119 () Bool)

(assert (=> setNonEmpty!28113 (= condSetEmpty!28119 (= setRest!28113 (as set.empty (Set Context!6268))))))

(declare-fun setRes!28119 () Bool)

(assert (=> setNonEmpty!28113 (= tp!1387967 setRes!28119)))

(declare-fun setIsEmpty!28119 () Bool)

(assert (=> setIsEmpty!28119 setRes!28119))

(declare-fun e!3093024 () Bool)

(declare-fun tp!1388009 () Bool)

(declare-fun setNonEmpty!28119 () Bool)

(declare-fun setElem!28119 () Context!6268)

(assert (=> setNonEmpty!28119 (= setRes!28119 (and tp!1388009 (inv!74292 setElem!28119) e!3093024))))

(declare-fun setRest!28119 () (Set Context!6268))

(assert (=> setNonEmpty!28119 (= setRest!28113 (set.union (set.insert setElem!28119 (as set.empty (Set Context!6268))) setRest!28119))))

(declare-fun b!4950498 () Bool)

(declare-fun tp!1388008 () Bool)

(assert (=> b!4950498 (= e!3093024 tp!1388008)))

(assert (= (and setNonEmpty!28113 condSetEmpty!28119) setIsEmpty!28119))

(assert (= (and setNonEmpty!28113 (not condSetEmpty!28119)) setNonEmpty!28119))

(assert (= setNonEmpty!28119 b!4950498))

(declare-fun m!5975276 () Bool)

(assert (=> setNonEmpty!28119 m!5975276))

(declare-fun b!4950499 () Bool)

(declare-fun e!3093025 () Bool)

(declare-fun tp!1388010 () Bool)

(assert (=> b!4950499 (= e!3093025 (and tp_is_empty!36181 tp!1388010))))

(assert (=> b!4950231 (= tp!1387970 e!3093025)))

(assert (= (and b!4950231 (is-Cons!57007 (t!367687 testedSuffix!70))) b!4950499))

(push 1)

(assert (not b!4950373))

(assert (not setNonEmpty!28119))

(assert (not d!1594293))

(assert (not b!4950409))

(assert (not d!1594207))

(assert (not b!4950363))

(assert (not bm!345640))

(assert (not b!4950345))

(assert (not d!1594229))

(assert (not b!4950356))

(assert (not d!1594267))

(assert (not b!4950341))

(assert (not b!4950375))

(assert (not d!1594301))

(assert (not b!4950420))

(assert (not b!4950359))

(assert (not d!1594249))

(assert (not d!1594283))

(assert (not b!4950312))

(assert (not d!1594257))

(assert (not d!1594253))

(assert (not b!4950493))

(assert (not b!4950339))

(assert (not b!4950367))

(assert (not d!1594225))

(assert (not d!1594271))

(assert (not d!1594279))

(assert (not b!4950329))

(assert (not d!1594221))

(assert (not b!4950422))

(assert (not b!4950311))

(assert (not d!1594237))

(assert (not d!1594209))

(assert (not b!4950364))

(assert (not b!4950344))

(assert (not d!1594223))

(assert (not b!4950458))

(assert (not d!1594259))

(assert (not b!4950390))

(assert (not b!4950372))

(assert (not b!4950454))

(assert (not b!4950498))

(assert (not b!4950328))

(assert (not bm!345650))

(assert (not bm!345641))

(assert (not b!4950343))

(assert (not b!4950351))

(assert (not b!4950452))

(assert (not b!4950340))

(assert (not d!1594199))

(assert (not b!4950368))

(assert (not d!1594205))

(assert (not d!1594231))

(assert (not b!4950360))

(assert (not b!4950499))

(assert (not b!4950379))

(assert (not b!4950350))

(assert (not b!4950380))

(assert (not d!1594235))

(assert (not b!4950425))

(assert (not b!4950400))

(assert (not b!4950376))

(assert (not b!4950361))

(assert (not b!4950371))

(assert (not d!1594247))

(assert (not b!4950483))

(assert (not d!1594245))

(assert (not b!4950398))

(assert (not d!1594255))

(assert (not d!1594239))

(assert (not b!4950481))

(assert (not b!4950421))

(assert (not b!4950235))

(assert (not b!4950388))

(assert (not b!4950488))

(assert (not d!1594297))

(assert (not d!1594273))

(assert (not d!1594227))

(assert tp_is_empty!36181)

(assert (not b!4950482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1594267 d!1594299))

(assert (=> d!1594267 d!1594265))

(declare-fun d!1594355 () Bool)

(assert (=> d!1594355 (<= (size!37835 testedP!110) (size!37835 lt!2042649))))

(assert (=> d!1594355 true))

(declare-fun _$64!646 () Unit!147872)

(assert (=> d!1594355 (= (choose!36569 testedP!110 lt!2042649) _$64!646)))

(declare-fun bs!1182229 () Bool)

(assert (= bs!1182229 d!1594355))

(assert (=> bs!1182229 m!5974864))

(assert (=> bs!1182229 m!5974896))

(assert (=> d!1594267 d!1594355))

(assert (=> d!1594267 d!1594217))

(assert (=> b!4950373 d!1594265))

(declare-fun d!1594357 () Bool)

(declare-fun lt!2042908 () Int)

(assert (=> d!1594357 (>= lt!2042908 0)))

(declare-fun e!3093092 () Int)

(assert (=> d!1594357 (= lt!2042908 e!3093092)))

(declare-fun c!845270 () Bool)

(assert (=> d!1594357 (= c!845270 (is-Nil!57007 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))))))

(assert (=> d!1594357 (= (size!37835 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))) lt!2042908)))

(declare-fun b!4950606 () Bool)

(assert (=> b!4950606 (= e!3093092 0)))

(declare-fun b!4950607 () Bool)

(assert (=> b!4950607 (= e!3093092 (+ 1 (size!37835 (t!367687 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))))))))

(assert (= (and d!1594357 c!845270) b!4950606))

(assert (= (and d!1594357 (not c!845270)) b!4950607))

(declare-fun m!5975388 () Bool)

(assert (=> b!4950607 m!5975388))

(assert (=> b!4950373 d!1594357))

(declare-fun d!1594359 () Bool)

(declare-fun c!845273 () Bool)

(assert (=> d!1594359 (= c!845273 (is-Nil!57007 lt!2042806))))

(declare-fun e!3093095 () (Set C!27234))

(assert (=> d!1594359 (= (content!10160 lt!2042806) e!3093095)))

(declare-fun b!4950612 () Bool)

(assert (=> b!4950612 (= e!3093095 (as set.empty (Set C!27234)))))

(declare-fun b!4950613 () Bool)

(assert (=> b!4950613 (= e!3093095 (set.union (set.insert (h!63455 lt!2042806) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042806))))))

(assert (= (and d!1594359 c!845273) b!4950612))

(assert (= (and d!1594359 (not c!845273)) b!4950613))

(declare-fun m!5975390 () Bool)

(assert (=> b!4950613 m!5975390))

(declare-fun m!5975392 () Bool)

(assert (=> b!4950613 m!5975392))

(assert (=> d!1594257 d!1594359))

(declare-fun d!1594361 () Bool)

(declare-fun c!845274 () Bool)

(assert (=> d!1594361 (= c!845274 (is-Nil!57007 testedP!110))))

(declare-fun e!3093096 () (Set C!27234))

(assert (=> d!1594361 (= (content!10160 testedP!110) e!3093096)))

(declare-fun b!4950614 () Bool)

(assert (=> b!4950614 (= e!3093096 (as set.empty (Set C!27234)))))

(declare-fun b!4950615 () Bool)

(assert (=> b!4950615 (= e!3093096 (set.union (set.insert (h!63455 testedP!110) (as set.empty (Set C!27234))) (content!10160 (t!367687 testedP!110))))))

(assert (= (and d!1594361 c!845274) b!4950614))

(assert (= (and d!1594361 (not c!845274)) b!4950615))

(declare-fun m!5975394 () Bool)

(assert (=> b!4950615 m!5975394))

(declare-fun m!5975396 () Bool)

(assert (=> b!4950615 m!5975396))

(assert (=> d!1594257 d!1594361))

(declare-fun d!1594363 () Bool)

(declare-fun c!845275 () Bool)

(assert (=> d!1594363 (= c!845275 (is-Nil!57007 testedSuffix!70))))

(declare-fun e!3093097 () (Set C!27234))

(assert (=> d!1594363 (= (content!10160 testedSuffix!70) e!3093097)))

(declare-fun b!4950616 () Bool)

(assert (=> b!4950616 (= e!3093097 (as set.empty (Set C!27234)))))

(declare-fun b!4950617 () Bool)

(assert (=> b!4950617 (= e!3093097 (set.union (set.insert (h!63455 testedSuffix!70) (as set.empty (Set C!27234))) (content!10160 (t!367687 testedSuffix!70))))))

(assert (= (and d!1594363 c!845275) b!4950616))

(assert (= (and d!1594363 (not c!845275)) b!4950617))

(declare-fun m!5975398 () Bool)

(assert (=> b!4950617 m!5975398))

(declare-fun m!5975400 () Bool)

(assert (=> b!4950617 m!5975400))

(assert (=> d!1594257 d!1594363))

(declare-fun d!1594365 () Bool)

(declare-fun lt!2042909 () Int)

(assert (=> d!1594365 (>= lt!2042909 0)))

(declare-fun e!3093098 () Int)

(assert (=> d!1594365 (= lt!2042909 e!3093098)))

(declare-fun c!845276 () Bool)

(assert (=> d!1594365 (= c!845276 (is-Nil!57007 lt!2042642))))

(assert (=> d!1594365 (= (size!37835 lt!2042642) lt!2042909)))

(declare-fun b!4950618 () Bool)

(assert (=> b!4950618 (= e!3093098 0)))

(declare-fun b!4950619 () Bool)

(assert (=> b!4950619 (= e!3093098 (+ 1 (size!37835 (t!367687 lt!2042642))))))

(assert (= (and d!1594365 c!845276) b!4950618))

(assert (= (and d!1594365 (not c!845276)) b!4950619))

(declare-fun m!5975402 () Bool)

(assert (=> b!4950619 m!5975402))

(assert (=> b!4950345 d!1594365))

(assert (=> b!4950345 d!1594299))

(declare-fun d!1594367 () Bool)

(declare-fun lt!2042910 () C!27234)

(assert (=> d!1594367 (contains!19499 (tail!9753 lt!2042649) lt!2042910)))

(declare-fun e!3093099 () C!27234)

(assert (=> d!1594367 (= lt!2042910 e!3093099)))

(declare-fun c!845277 () Bool)

(assert (=> d!1594367 (= c!845277 (= (- testedPSize!70 1) 0))))

(declare-fun e!3093100 () Bool)

(assert (=> d!1594367 e!3093100))

(declare-fun res!2112219 () Bool)

(assert (=> d!1594367 (=> (not res!2112219) (not e!3093100))))

(assert (=> d!1594367 (= res!2112219 (<= 0 (- testedPSize!70 1)))))

(assert (=> d!1594367 (= (apply!13848 (tail!9753 lt!2042649) (- testedPSize!70 1)) lt!2042910)))

(declare-fun b!4950620 () Bool)

(assert (=> b!4950620 (= e!3093100 (< (- testedPSize!70 1) (size!37835 (tail!9753 lt!2042649))))))

(declare-fun b!4950621 () Bool)

(assert (=> b!4950621 (= e!3093099 (head!10618 (tail!9753 lt!2042649)))))

(declare-fun b!4950622 () Bool)

(assert (=> b!4950622 (= e!3093099 (apply!13848 (tail!9753 (tail!9753 lt!2042649)) (- (- testedPSize!70 1) 1)))))

(assert (= (and d!1594367 res!2112219) b!4950620))

(assert (= (and d!1594367 c!845277) b!4950621))

(assert (= (and d!1594367 (not c!845277)) b!4950622))

(assert (=> d!1594367 m!5975052))

(declare-fun m!5975404 () Bool)

(assert (=> d!1594367 m!5975404))

(assert (=> b!4950620 m!5975052))

(declare-fun m!5975406 () Bool)

(assert (=> b!4950620 m!5975406))

(assert (=> b!4950621 m!5975052))

(declare-fun m!5975408 () Bool)

(assert (=> b!4950621 m!5975408))

(assert (=> b!4950622 m!5975052))

(declare-fun m!5975410 () Bool)

(assert (=> b!4950622 m!5975410))

(assert (=> b!4950622 m!5975410))

(declare-fun m!5975412 () Bool)

(assert (=> b!4950622 m!5975412))

(assert (=> b!4950422 d!1594367))

(declare-fun d!1594369 () Bool)

(assert (=> d!1594369 (= (tail!9753 lt!2042649) (t!367687 lt!2042649))))

(assert (=> b!4950422 d!1594369))

(declare-fun d!1594371 () Bool)

(declare-fun res!2112226 () Bool)

(declare-fun e!3093103 () Bool)

(assert (=> d!1594371 (=> (not res!2112226) (not e!3093103))))

(assert (=> d!1594371 (= res!2112226 (= (csize!30252 (c!845172 totalInput!685)) (+ (size!37839 (left!41595 (c!845172 totalInput!685))) (size!37839 (right!41925 (c!845172 totalInput!685))))))))

(assert (=> d!1594371 (= (inv!74298 (c!845172 totalInput!685)) e!3093103)))

(declare-fun b!4950629 () Bool)

(declare-fun res!2112227 () Bool)

(assert (=> b!4950629 (=> (not res!2112227) (not e!3093103))))

(assert (=> b!4950629 (= res!2112227 (and (not (= (left!41595 (c!845172 totalInput!685)) Empty!15011)) (not (= (right!41925 (c!845172 totalInput!685)) Empty!15011))))))

(declare-fun b!4950630 () Bool)

(declare-fun res!2112228 () Bool)

(assert (=> b!4950630 (=> (not res!2112228) (not e!3093103))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2007 (Conc!15011) Int)

(assert (=> b!4950630 (= res!2112228 (= (cheight!15222 (c!845172 totalInput!685)) (+ (max!0 (height!2007 (left!41595 (c!845172 totalInput!685))) (height!2007 (right!41925 (c!845172 totalInput!685)))) 1)))))

(declare-fun b!4950631 () Bool)

(assert (=> b!4950631 (= e!3093103 (<= 0 (cheight!15222 (c!845172 totalInput!685))))))

(assert (= (and d!1594371 res!2112226) b!4950629))

(assert (= (and b!4950629 res!2112227) b!4950630))

(assert (= (and b!4950630 res!2112228) b!4950631))

(declare-fun m!5975414 () Bool)

(assert (=> d!1594371 m!5975414))

(declare-fun m!5975416 () Bool)

(assert (=> d!1594371 m!5975416))

(declare-fun m!5975418 () Bool)

(assert (=> b!4950630 m!5975418))

(declare-fun m!5975420 () Bool)

(assert (=> b!4950630 m!5975420))

(assert (=> b!4950630 m!5975418))

(assert (=> b!4950630 m!5975420))

(declare-fun m!5975422 () Bool)

(assert (=> b!4950630 m!5975422))

(assert (=> b!4950388 d!1594371))

(assert (=> b!4950420 d!1594265))

(declare-fun d!1594373 () Bool)

(declare-fun res!2112233 () Bool)

(declare-fun e!3093106 () Bool)

(assert (=> d!1594373 (=> (not res!2112233) (not e!3093106))))

(declare-fun list!18188 (IArray!30083) List!57131)

(assert (=> d!1594373 (= res!2112233 (<= (size!37835 (list!18188 (xs!18337 (c!845172 totalInput!685)))) 512))))

(assert (=> d!1594373 (= (inv!74299 (c!845172 totalInput!685)) e!3093106)))

(declare-fun b!4950636 () Bool)

(declare-fun res!2112234 () Bool)

(assert (=> b!4950636 (=> (not res!2112234) (not e!3093106))))

(assert (=> b!4950636 (= res!2112234 (= (csize!30253 (c!845172 totalInput!685)) (size!37835 (list!18188 (xs!18337 (c!845172 totalInput!685))))))))

(declare-fun b!4950637 () Bool)

(assert (=> b!4950637 (= e!3093106 (and (> (csize!30253 (c!845172 totalInput!685)) 0) (<= (csize!30253 (c!845172 totalInput!685)) 512)))))

(assert (= (and d!1594373 res!2112233) b!4950636))

(assert (= (and b!4950636 res!2112234) b!4950637))

(declare-fun m!5975424 () Bool)

(assert (=> d!1594373 m!5975424))

(assert (=> d!1594373 m!5975424))

(declare-fun m!5975426 () Bool)

(assert (=> d!1594373 m!5975426))

(assert (=> b!4950636 m!5975424))

(assert (=> b!4950636 m!5975424))

(assert (=> b!4950636 m!5975426))

(assert (=> b!4950390 d!1594373))

(assert (=> d!1594231 d!1594233))

(declare-fun d!1594375 () Bool)

(assert (=> d!1594375 (isPrefix!5098 lt!2042649 lt!2042649)))

(assert (=> d!1594375 true))

(declare-fun _$45!2254 () Unit!147872)

(assert (=> d!1594375 (= (choose!36564 lt!2042649 lt!2042649) _$45!2254)))

(declare-fun bs!1182230 () Bool)

(assert (= bs!1182230 d!1594375))

(assert (=> bs!1182230 m!5974846))

(assert (=> d!1594231 d!1594375))

(declare-fun d!1594377 () Bool)

(assert (=> d!1594377 (= (list!18184 (_1!34094 lt!2042747)) (list!18186 (c!845172 (_1!34094 lt!2042747))))))

(declare-fun bs!1182231 () Bool)

(assert (= bs!1182231 d!1594377))

(declare-fun m!5975428 () Bool)

(assert (=> bs!1182231 m!5975428))

(assert (=> b!4950329 d!1594377))

(declare-fun d!1594379 () Bool)

(assert (=> d!1594379 (= (list!18184 (_2!34094 lt!2042747)) (list!18186 (c!845172 (_2!34094 lt!2042747))))))

(declare-fun bs!1182232 () Bool)

(assert (= bs!1182232 d!1594379))

(declare-fun m!5975430 () Bool)

(assert (=> bs!1182232 m!5975430))

(assert (=> b!4950329 d!1594379))

(declare-fun b!4950650 () Bool)

(declare-fun e!3093115 () tuple2!61588)

(assert (=> b!4950650 (= e!3093115 (tuple2!61589 Nil!57007 (list!18184 totalInput!685)))))

(declare-fun b!4950651 () Bool)

(declare-fun e!3093114 () tuple2!61588)

(assert (=> b!4950651 (= e!3093114 (tuple2!61589 Nil!57007 Nil!57007))))

(declare-fun b!4950652 () Bool)

(assert (=> b!4950652 (= e!3093114 e!3093115)))

(declare-fun c!845282 () Bool)

(assert (=> b!4950652 (= c!845282 (<= testedPSize!70 0))))

(declare-fun lt!2042915 () tuple2!61588)

(declare-fun e!3093113 () Bool)

(declare-fun b!4950653 () Bool)

(assert (=> b!4950653 (= e!3093113 (= (_2!34097 lt!2042915) (drop!2299 (list!18184 totalInput!685) testedPSize!70)))))

(declare-fun b!4950654 () Bool)

(declare-fun res!2112239 () Bool)

(assert (=> b!4950654 (=> (not res!2112239) (not e!3093113))))

(declare-fun take!595 (List!57131 Int) List!57131)

(assert (=> b!4950654 (= res!2112239 (= (_1!34097 lt!2042915) (take!595 (list!18184 totalInput!685) testedPSize!70)))))

(declare-fun b!4950655 () Bool)

(declare-fun lt!2042916 () tuple2!61588)

(assert (=> b!4950655 (= lt!2042916 (splitAtIndex!155 (t!367687 (list!18184 totalInput!685)) (- testedPSize!70 1)))))

(assert (=> b!4950655 (= e!3093115 (tuple2!61589 (Cons!57007 (h!63455 (list!18184 totalInput!685)) (_1!34097 lt!2042916)) (_2!34097 lt!2042916)))))

(declare-fun d!1594381 () Bool)

(assert (=> d!1594381 e!3093113))

(declare-fun res!2112240 () Bool)

(assert (=> d!1594381 (=> (not res!2112240) (not e!3093113))))

(assert (=> d!1594381 (= res!2112240 (= (++!12481 (_1!34097 lt!2042915) (_2!34097 lt!2042915)) (list!18184 totalInput!685)))))

(assert (=> d!1594381 (= lt!2042915 e!3093114)))

(declare-fun c!845283 () Bool)

(assert (=> d!1594381 (= c!845283 (is-Nil!57007 (list!18184 totalInput!685)))))

(assert (=> d!1594381 (= (splitAtIndex!155 (list!18184 totalInput!685) testedPSize!70) lt!2042915)))

(assert (= (and d!1594381 c!845283) b!4950651))

(assert (= (and d!1594381 (not c!845283)) b!4950652))

(assert (= (and b!4950652 c!845282) b!4950650))

(assert (= (and b!4950652 (not c!845282)) b!4950655))

(assert (= (and d!1594381 res!2112240) b!4950654))

(assert (= (and b!4950654 res!2112239) b!4950653))

(assert (=> b!4950653 m!5974834))

(declare-fun m!5975432 () Bool)

(assert (=> b!4950653 m!5975432))

(assert (=> b!4950654 m!5974834))

(declare-fun m!5975434 () Bool)

(assert (=> b!4950654 m!5975434))

(declare-fun m!5975436 () Bool)

(assert (=> b!4950655 m!5975436))

(declare-fun m!5975438 () Bool)

(assert (=> d!1594381 m!5975438))

(assert (=> b!4950329 d!1594381))

(assert (=> b!4950329 d!1594255))

(declare-fun b!4950657 () Bool)

(declare-fun res!2112242 () Bool)

(declare-fun e!3093118 () Bool)

(assert (=> b!4950657 (=> (not res!2112242) (not e!3093118))))

(assert (=> b!4950657 (= res!2112242 (= (head!10618 testedP!110) (head!10618 (++!12481 testedP!110 testedSuffix!70))))))

(declare-fun b!4950659 () Bool)

(declare-fun e!3093117 () Bool)

(assert (=> b!4950659 (= e!3093117 (>= (size!37835 (++!12481 testedP!110 testedSuffix!70)) (size!37835 testedP!110)))))

(declare-fun b!4950658 () Bool)

(assert (=> b!4950658 (= e!3093118 (isPrefix!5098 (tail!9753 testedP!110) (tail!9753 (++!12481 testedP!110 testedSuffix!70))))))

(declare-fun b!4950656 () Bool)

(declare-fun e!3093116 () Bool)

(assert (=> b!4950656 (= e!3093116 e!3093118)))

(declare-fun res!2112243 () Bool)

(assert (=> b!4950656 (=> (not res!2112243) (not e!3093118))))

(assert (=> b!4950656 (= res!2112243 (not (is-Nil!57007 (++!12481 testedP!110 testedSuffix!70))))))

(declare-fun d!1594383 () Bool)

(assert (=> d!1594383 e!3093117))

(declare-fun res!2112241 () Bool)

(assert (=> d!1594383 (=> res!2112241 e!3093117)))

(declare-fun lt!2042917 () Bool)

(assert (=> d!1594383 (= res!2112241 (not lt!2042917))))

(assert (=> d!1594383 (= lt!2042917 e!3093116)))

(declare-fun res!2112244 () Bool)

(assert (=> d!1594383 (=> res!2112244 e!3093116)))

(assert (=> d!1594383 (= res!2112244 (is-Nil!57007 testedP!110))))

(assert (=> d!1594383 (= (isPrefix!5098 testedP!110 (++!12481 testedP!110 testedSuffix!70)) lt!2042917)))

(assert (= (and d!1594383 (not res!2112244)) b!4950656))

(assert (= (and b!4950656 res!2112243) b!4950657))

(assert (= (and b!4950657 res!2112242) b!4950658))

(assert (= (and d!1594383 (not res!2112241)) b!4950659))

(assert (=> b!4950657 m!5975046))

(assert (=> b!4950657 m!5974836))

(declare-fun m!5975440 () Bool)

(assert (=> b!4950657 m!5975440))

(assert (=> b!4950659 m!5974836))

(declare-fun m!5975442 () Bool)

(assert (=> b!4950659 m!5975442))

(assert (=> b!4950659 m!5974864))

(assert (=> b!4950658 m!5975050))

(assert (=> b!4950658 m!5974836))

(declare-fun m!5975444 () Bool)

(assert (=> b!4950658 m!5975444))

(assert (=> b!4950658 m!5975050))

(assert (=> b!4950658 m!5975444))

(declare-fun m!5975446 () Bool)

(assert (=> b!4950658 m!5975446))

(assert (=> d!1594221 d!1594383))

(assert (=> d!1594221 d!1594257))

(declare-fun d!1594385 () Bool)

(assert (=> d!1594385 (isPrefix!5098 testedP!110 (++!12481 testedP!110 testedSuffix!70))))

(assert (=> d!1594385 true))

(declare-fun _$46!1930 () Unit!147872)

(assert (=> d!1594385 (= (choose!36562 testedP!110 testedSuffix!70) _$46!1930)))

(declare-fun bs!1182233 () Bool)

(assert (= bs!1182233 d!1594385))

(assert (=> bs!1182233 m!5974836))

(assert (=> bs!1182233 m!5974836))

(assert (=> bs!1182233 m!5975064))

(assert (=> d!1594221 d!1594385))

(declare-fun b!4950661 () Bool)

(declare-fun res!2112246 () Bool)

(declare-fun e!3093121 () Bool)

(assert (=> b!4950661 (=> (not res!2112246) (not e!3093121))))

(assert (=> b!4950661 (= res!2112246 (= (head!10618 (tail!9753 lt!2042649)) (head!10618 (tail!9753 lt!2042649))))))

(declare-fun b!4950663 () Bool)

(declare-fun e!3093120 () Bool)

(assert (=> b!4950663 (= e!3093120 (>= (size!37835 (tail!9753 lt!2042649)) (size!37835 (tail!9753 lt!2042649))))))

(declare-fun b!4950662 () Bool)

(assert (=> b!4950662 (= e!3093121 (isPrefix!5098 (tail!9753 (tail!9753 lt!2042649)) (tail!9753 (tail!9753 lt!2042649))))))

(declare-fun b!4950660 () Bool)

(declare-fun e!3093119 () Bool)

(assert (=> b!4950660 (= e!3093119 e!3093121)))

(declare-fun res!2112247 () Bool)

(assert (=> b!4950660 (=> (not res!2112247) (not e!3093121))))

(assert (=> b!4950660 (= res!2112247 (not (is-Nil!57007 (tail!9753 lt!2042649))))))

(declare-fun d!1594387 () Bool)

(assert (=> d!1594387 e!3093120))

(declare-fun res!2112245 () Bool)

(assert (=> d!1594387 (=> res!2112245 e!3093120)))

(declare-fun lt!2042918 () Bool)

(assert (=> d!1594387 (= res!2112245 (not lt!2042918))))

(assert (=> d!1594387 (= lt!2042918 e!3093119)))

(declare-fun res!2112248 () Bool)

(assert (=> d!1594387 (=> res!2112248 e!3093119)))

(assert (=> d!1594387 (= res!2112248 (is-Nil!57007 (tail!9753 lt!2042649)))))

(assert (=> d!1594387 (= (isPrefix!5098 (tail!9753 lt!2042649) (tail!9753 lt!2042649)) lt!2042918)))

(assert (= (and d!1594387 (not res!2112248)) b!4950660))

(assert (= (and b!4950660 res!2112247) b!4950661))

(assert (= (and b!4950661 res!2112246) b!4950662))

(assert (= (and d!1594387 (not res!2112245)) b!4950663))

(assert (=> b!4950661 m!5975052))

(assert (=> b!4950661 m!5975408))

(assert (=> b!4950661 m!5975052))

(assert (=> b!4950661 m!5975408))

(assert (=> b!4950663 m!5975052))

(assert (=> b!4950663 m!5975406))

(assert (=> b!4950663 m!5975052))

(assert (=> b!4950663 m!5975406))

(assert (=> b!4950662 m!5975052))

(assert (=> b!4950662 m!5975410))

(assert (=> b!4950662 m!5975052))

(assert (=> b!4950662 m!5975410))

(assert (=> b!4950662 m!5975410))

(assert (=> b!4950662 m!5975410))

(declare-fun m!5975448 () Bool)

(assert (=> b!4950662 m!5975448))

(assert (=> b!4950360 d!1594387))

(assert (=> b!4950360 d!1594369))

(declare-fun d!1594389 () Bool)

(declare-fun lt!2042919 () Int)

(assert (=> d!1594389 (>= lt!2042919 0)))

(declare-fun e!3093122 () Int)

(assert (=> d!1594389 (= lt!2042919 e!3093122)))

(declare-fun c!845284 () Bool)

(assert (=> d!1594389 (= c!845284 (is-Nil!57007 (t!367687 lt!2042648)))))

(assert (=> d!1594389 (= (size!37835 (t!367687 lt!2042648)) lt!2042919)))

(declare-fun b!4950664 () Bool)

(assert (=> b!4950664 (= e!3093122 0)))

(declare-fun b!4950665 () Bool)

(assert (=> b!4950665 (= e!3093122 (+ 1 (size!37835 (t!367687 (t!367687 lt!2042648)))))))

(assert (= (and d!1594389 c!845284) b!4950664))

(assert (= (and d!1594389 (not c!845284)) b!4950665))

(declare-fun m!5975450 () Bool)

(assert (=> b!4950665 m!5975450))

(assert (=> b!4950398 d!1594389))

(declare-fun d!1594391 () Bool)

(declare-fun c!845285 () Bool)

(assert (=> d!1594391 (= c!845285 (is-Nil!57007 lt!2042797))))

(declare-fun e!3093123 () (Set C!27234))

(assert (=> d!1594391 (= (content!10160 lt!2042797) e!3093123)))

(declare-fun b!4950666 () Bool)

(assert (=> b!4950666 (= e!3093123 (as set.empty (Set C!27234)))))

(declare-fun b!4950667 () Bool)

(assert (=> b!4950667 (= e!3093123 (set.union (set.insert (h!63455 lt!2042797) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042797))))))

(assert (= (and d!1594391 c!845285) b!4950666))

(assert (= (and d!1594391 (not c!845285)) b!4950667))

(declare-fun m!5975452 () Bool)

(assert (=> b!4950667 m!5975452))

(declare-fun m!5975454 () Bool)

(assert (=> b!4950667 m!5975454))

(assert (=> d!1594239 d!1594391))

(assert (=> d!1594239 d!1594361))

(declare-fun d!1594393 () Bool)

(declare-fun c!845286 () Bool)

(assert (=> d!1594393 (= c!845286 (is-Nil!57007 (Cons!57007 lt!2042661 Nil!57007)))))

(declare-fun e!3093124 () (Set C!27234))

(assert (=> d!1594393 (= (content!10160 (Cons!57007 lt!2042661 Nil!57007)) e!3093124)))

(declare-fun b!4950668 () Bool)

(assert (=> b!4950668 (= e!3093124 (as set.empty (Set C!27234)))))

(declare-fun b!4950669 () Bool)

(assert (=> b!4950669 (= e!3093124 (set.union (set.insert (h!63455 (Cons!57007 lt!2042661 Nil!57007)) (as set.empty (Set C!27234))) (content!10160 (t!367687 (Cons!57007 lt!2042661 Nil!57007)))))))

(assert (= (and d!1594393 c!845286) b!4950668))

(assert (= (and d!1594393 (not c!845286)) b!4950669))

(declare-fun m!5975456 () Bool)

(assert (=> b!4950669 m!5975456))

(declare-fun m!5975458 () Bool)

(assert (=> b!4950669 m!5975458))

(assert (=> d!1594239 d!1594393))

(declare-fun b!4950670 () Bool)

(declare-fun e!3093126 () List!57131)

(assert (=> b!4950670 (= e!3093126 testedSuffix!70)))

(declare-fun d!1594395 () Bool)

(declare-fun e!3093125 () Bool)

(assert (=> d!1594395 e!3093125))

(declare-fun res!2112250 () Bool)

(assert (=> d!1594395 (=> (not res!2112250) (not e!3093125))))

(declare-fun lt!2042920 () List!57131)

(assert (=> d!1594395 (= res!2112250 (= (content!10160 lt!2042920) (set.union (content!10160 (t!367687 testedP!110)) (content!10160 testedSuffix!70))))))

(assert (=> d!1594395 (= lt!2042920 e!3093126)))

(declare-fun c!845287 () Bool)

(assert (=> d!1594395 (= c!845287 (is-Nil!57007 (t!367687 testedP!110)))))

(assert (=> d!1594395 (= (++!12481 (t!367687 testedP!110) testedSuffix!70) lt!2042920)))

(declare-fun b!4950673 () Bool)

(assert (=> b!4950673 (= e!3093125 (or (not (= testedSuffix!70 Nil!57007)) (= lt!2042920 (t!367687 testedP!110))))))

(declare-fun b!4950672 () Bool)

(declare-fun res!2112249 () Bool)

(assert (=> b!4950672 (=> (not res!2112249) (not e!3093125))))

(assert (=> b!4950672 (= res!2112249 (= (size!37835 lt!2042920) (+ (size!37835 (t!367687 testedP!110)) (size!37835 testedSuffix!70))))))

(declare-fun b!4950671 () Bool)

(assert (=> b!4950671 (= e!3093126 (Cons!57007 (h!63455 (t!367687 testedP!110)) (++!12481 (t!367687 (t!367687 testedP!110)) testedSuffix!70)))))

(assert (= (and d!1594395 c!845287) b!4950670))

(assert (= (and d!1594395 (not c!845287)) b!4950671))

(assert (= (and d!1594395 res!2112250) b!4950672))

(assert (= (and b!4950672 res!2112249) b!4950673))

(declare-fun m!5975460 () Bool)

(assert (=> d!1594395 m!5975460))

(assert (=> d!1594395 m!5975396))

(assert (=> d!1594395 m!5975160))

(declare-fun m!5975462 () Bool)

(assert (=> b!4950672 m!5975462))

(assert (=> b!4950672 m!5975244))

(assert (=> b!4950672 m!5975164))

(declare-fun m!5975464 () Bool)

(assert (=> b!4950671 m!5975464))

(assert (=> b!4950379 d!1594395))

(declare-fun b!4950674 () Bool)

(declare-fun e!3093128 () List!57131)

(assert (=> b!4950674 (= e!3093128 lt!2042785)))

(declare-fun d!1594397 () Bool)

(declare-fun e!3093127 () Bool)

(assert (=> d!1594397 e!3093127))

(declare-fun res!2112252 () Bool)

(assert (=> d!1594397 (=> (not res!2112252) (not e!3093127))))

(declare-fun lt!2042921 () List!57131)

(assert (=> d!1594397 (= res!2112252 (= (content!10160 lt!2042921) (set.union (content!10160 testedP!110) (content!10160 lt!2042785))))))

(assert (=> d!1594397 (= lt!2042921 e!3093128)))

(declare-fun c!845288 () Bool)

(assert (=> d!1594397 (= c!845288 (is-Nil!57007 testedP!110))))

(assert (=> d!1594397 (= (++!12481 testedP!110 lt!2042785) lt!2042921)))

(declare-fun b!4950677 () Bool)

(assert (=> b!4950677 (= e!3093127 (or (not (= lt!2042785 Nil!57007)) (= lt!2042921 testedP!110)))))

(declare-fun b!4950676 () Bool)

(declare-fun res!2112251 () Bool)

(assert (=> b!4950676 (=> (not res!2112251) (not e!3093127))))

(assert (=> b!4950676 (= res!2112251 (= (size!37835 lt!2042921) (+ (size!37835 testedP!110) (size!37835 lt!2042785))))))

(declare-fun b!4950675 () Bool)

(assert (=> b!4950675 (= e!3093128 (Cons!57007 (h!63455 testedP!110) (++!12481 (t!367687 testedP!110) lt!2042785)))))

(assert (= (and d!1594397 c!845288) b!4950674))

(assert (= (and d!1594397 (not c!845288)) b!4950675))

(assert (= (and d!1594397 res!2112252) b!4950676))

(assert (= (and b!4950676 res!2112251) b!4950677))

(declare-fun m!5975466 () Bool)

(assert (=> d!1594397 m!5975466))

(assert (=> d!1594397 m!5975100))

(declare-fun m!5975468 () Bool)

(assert (=> d!1594397 m!5975468))

(declare-fun m!5975470 () Bool)

(assert (=> b!4950676 m!5975470))

(assert (=> b!4950676 m!5974864))

(declare-fun m!5975472 () Bool)

(assert (=> b!4950676 m!5975472))

(declare-fun m!5975474 () Bool)

(assert (=> b!4950675 m!5975474))

(assert (=> d!1594227 d!1594397))

(assert (=> d!1594227 d!1594265))

(assert (=> d!1594227 d!1594299))

(declare-fun d!1594399 () Bool)

(declare-fun lt!2042922 () C!27234)

(assert (=> d!1594399 (contains!19499 (list!18184 totalInput!685) lt!2042922)))

(declare-fun e!3093129 () C!27234)

(assert (=> d!1594399 (= lt!2042922 e!3093129)))

(declare-fun c!845289 () Bool)

(assert (=> d!1594399 (= c!845289 (= testedPSize!70 0))))

(declare-fun e!3093130 () Bool)

(assert (=> d!1594399 e!3093130))

(declare-fun res!2112253 () Bool)

(assert (=> d!1594399 (=> (not res!2112253) (not e!3093130))))

(assert (=> d!1594399 (= res!2112253 (<= 0 testedPSize!70))))

(assert (=> d!1594399 (= (apply!13848 (list!18184 totalInput!685) testedPSize!70) lt!2042922)))

(declare-fun b!4950678 () Bool)

(assert (=> b!4950678 (= e!3093130 (< testedPSize!70 (size!37835 (list!18184 totalInput!685))))))

(declare-fun b!4950679 () Bool)

(assert (=> b!4950679 (= e!3093129 (head!10618 (list!18184 totalInput!685)))))

(declare-fun b!4950680 () Bool)

(assert (=> b!4950680 (= e!3093129 (apply!13848 (tail!9753 (list!18184 totalInput!685)) (- testedPSize!70 1)))))

(assert (= (and d!1594399 res!2112253) b!4950678))

(assert (= (and d!1594399 c!845289) b!4950679))

(assert (= (and d!1594399 (not c!845289)) b!4950680))

(assert (=> d!1594399 m!5974834))

(declare-fun m!5975476 () Bool)

(assert (=> d!1594399 m!5975476))

(assert (=> b!4950678 m!5974834))

(assert (=> b!4950678 m!5975088))

(assert (=> b!4950679 m!5974834))

(declare-fun m!5975478 () Bool)

(assert (=> b!4950679 m!5975478))

(assert (=> b!4950680 m!5974834))

(declare-fun m!5975480 () Bool)

(assert (=> b!4950680 m!5975480))

(assert (=> b!4950680 m!5975480))

(declare-fun m!5975482 () Bool)

(assert (=> b!4950680 m!5975482))

(assert (=> d!1594293 d!1594399))

(assert (=> d!1594293 d!1594255))

(declare-fun b!4950695 () Bool)

(declare-fun e!3093140 () C!27234)

(declare-fun call!345661 () C!27234)

(assert (=> b!4950695 (= e!3093140 call!345661)))

(declare-fun b!4950696 () Bool)

(declare-fun e!3093141 () Bool)

(assert (=> b!4950696 (= e!3093141 (< testedPSize!70 (size!37839 (c!845172 totalInput!685))))))

(declare-fun b!4950697 () Bool)

(assert (=> b!4950697 (= e!3093140 call!345661)))

(declare-fun b!4950698 () Bool)

(declare-fun e!3093139 () Int)

(assert (=> b!4950698 (= e!3093139 (- testedPSize!70 (size!37839 (left!41595 (c!845172 totalInput!685)))))))

(declare-fun d!1594401 () Bool)

(declare-fun lt!2042928 () C!27234)

(assert (=> d!1594401 (= lt!2042928 (apply!13848 (list!18186 (c!845172 totalInput!685)) testedPSize!70))))

(declare-fun e!3093142 () C!27234)

(assert (=> d!1594401 (= lt!2042928 e!3093142)))

(declare-fun c!845297 () Bool)

(assert (=> d!1594401 (= c!845297 (is-Leaf!24950 (c!845172 totalInput!685)))))

(assert (=> d!1594401 e!3093141))

(declare-fun res!2112256 () Bool)

(assert (=> d!1594401 (=> (not res!2112256) (not e!3093141))))

(assert (=> d!1594401 (= res!2112256 (<= 0 testedPSize!70))))

(assert (=> d!1594401 (= (apply!13851 (c!845172 totalInput!685) testedPSize!70) lt!2042928)))

(declare-fun b!4950699 () Bool)

(declare-fun apply!13853 (IArray!30083 Int) C!27234)

(assert (=> b!4950699 (= e!3093142 (apply!13853 (xs!18337 (c!845172 totalInput!685)) testedPSize!70))))

(declare-fun b!4950700 () Bool)

(assert (=> b!4950700 (= e!3093139 testedPSize!70)))

(declare-fun bm!345656 () Bool)

(declare-fun c!845298 () Bool)

(declare-fun c!845296 () Bool)

(assert (=> bm!345656 (= c!845298 c!845296)))

(assert (=> bm!345656 (= call!345661 (apply!13851 (ite c!845296 (left!41595 (c!845172 totalInput!685)) (right!41925 (c!845172 totalInput!685))) e!3093139))))

(declare-fun b!4950701 () Bool)

(assert (=> b!4950701 (= e!3093142 e!3093140)))

(declare-fun lt!2042927 () Bool)

(declare-fun appendIndex!390 (List!57131 List!57131 Int) Bool)

(assert (=> b!4950701 (= lt!2042927 (appendIndex!390 (list!18186 (left!41595 (c!845172 totalInput!685))) (list!18186 (right!41925 (c!845172 totalInput!685))) testedPSize!70))))

(assert (=> b!4950701 (= c!845296 (< testedPSize!70 (size!37839 (left!41595 (c!845172 totalInput!685)))))))

(assert (= (and d!1594401 res!2112256) b!4950696))

(assert (= (and d!1594401 c!845297) b!4950699))

(assert (= (and d!1594401 (not c!845297)) b!4950701))

(assert (= (and b!4950701 c!845296) b!4950695))

(assert (= (and b!4950701 (not c!845296)) b!4950697))

(assert (= (or b!4950695 b!4950697) bm!345656))

(assert (= (and bm!345656 c!845298) b!4950700))

(assert (= (and bm!345656 (not c!845298)) b!4950698))

(declare-fun m!5975484 () Bool)

(assert (=> b!4950699 m!5975484))

(assert (=> b!4950696 m!5975090))

(assert (=> b!4950698 m!5975414))

(declare-fun m!5975486 () Bool)

(assert (=> bm!345656 m!5975486))

(declare-fun m!5975488 () Bool)

(assert (=> b!4950701 m!5975488))

(declare-fun m!5975490 () Bool)

(assert (=> b!4950701 m!5975490))

(assert (=> b!4950701 m!5975488))

(assert (=> b!4950701 m!5975490))

(declare-fun m!5975492 () Bool)

(assert (=> b!4950701 m!5975492))

(assert (=> b!4950701 m!5975414))

(assert (=> d!1594401 m!5975156))

(assert (=> d!1594401 m!5975156))

(declare-fun m!5975494 () Bool)

(assert (=> d!1594401 m!5975494))

(assert (=> d!1594293 d!1594401))

(declare-fun d!1594403 () Bool)

(declare-fun c!845299 () Bool)

(assert (=> d!1594403 (= c!845299 (is-Nil!57007 lt!2042802))))

(declare-fun e!3093143 () (Set C!27234))

(assert (=> d!1594403 (= (content!10160 lt!2042802) e!3093143)))

(declare-fun b!4950702 () Bool)

(assert (=> b!4950702 (= e!3093143 (as set.empty (Set C!27234)))))

(declare-fun b!4950703 () Bool)

(assert (=> b!4950703 (= e!3093143 (set.union (set.insert (h!63455 lt!2042802) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042802))))))

(assert (= (and d!1594403 c!845299) b!4950702))

(assert (= (and d!1594403 (not c!845299)) b!4950703))

(declare-fun m!5975496 () Bool)

(assert (=> b!4950703 m!5975496))

(declare-fun m!5975498 () Bool)

(assert (=> b!4950703 m!5975498))

(assert (=> d!1594247 d!1594403))

(declare-fun d!1594405 () Bool)

(declare-fun c!845300 () Bool)

(assert (=> d!1594405 (= c!845300 (is-Nil!57007 lt!2042648))))

(declare-fun e!3093144 () (Set C!27234))

(assert (=> d!1594405 (= (content!10160 lt!2042648) e!3093144)))

(declare-fun b!4950704 () Bool)

(assert (=> b!4950704 (= e!3093144 (as set.empty (Set C!27234)))))

(declare-fun b!4950705 () Bool)

(assert (=> b!4950705 (= e!3093144 (set.union (set.insert (h!63455 lt!2042648) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042648))))))

(assert (= (and d!1594405 c!845300) b!4950704))

(assert (= (and d!1594405 (not c!845300)) b!4950705))

(declare-fun m!5975500 () Bool)

(assert (=> b!4950705 m!5975500))

(declare-fun m!5975502 () Bool)

(assert (=> b!4950705 m!5975502))

(assert (=> d!1594247 d!1594405))

(declare-fun d!1594407 () Bool)

(declare-fun c!845301 () Bool)

(assert (=> d!1594407 (= c!845301 (is-Nil!57007 lt!2042646))))

(declare-fun e!3093145 () (Set C!27234))

(assert (=> d!1594407 (= (content!10160 lt!2042646) e!3093145)))

(declare-fun b!4950706 () Bool)

(assert (=> b!4950706 (= e!3093145 (as set.empty (Set C!27234)))))

(declare-fun b!4950707 () Bool)

(assert (=> b!4950707 (= e!3093145 (set.union (set.insert (h!63455 lt!2042646) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042646))))))

(assert (= (and d!1594407 c!845301) b!4950706))

(assert (= (and d!1594407 (not c!845301)) b!4950707))

(declare-fun m!5975504 () Bool)

(assert (=> b!4950707 m!5975504))

(declare-fun m!5975506 () Bool)

(assert (=> b!4950707 m!5975506))

(assert (=> d!1594247 d!1594407))

(declare-fun d!1594409 () Bool)

(declare-fun c!845302 () Bool)

(assert (=> d!1594409 (= c!845302 (is-Node!15011 (left!41595 (c!845172 totalInput!685))))))

(declare-fun e!3093146 () Bool)

(assert (=> d!1594409 (= (inv!74294 (left!41595 (c!845172 totalInput!685))) e!3093146)))

(declare-fun b!4950708 () Bool)

(assert (=> b!4950708 (= e!3093146 (inv!74298 (left!41595 (c!845172 totalInput!685))))))

(declare-fun b!4950709 () Bool)

(declare-fun e!3093147 () Bool)

(assert (=> b!4950709 (= e!3093146 e!3093147)))

(declare-fun res!2112257 () Bool)

(assert (=> b!4950709 (= res!2112257 (not (is-Leaf!24950 (left!41595 (c!845172 totalInput!685)))))))

(assert (=> b!4950709 (=> res!2112257 e!3093147)))

(declare-fun b!4950710 () Bool)

(assert (=> b!4950710 (= e!3093147 (inv!74299 (left!41595 (c!845172 totalInput!685))))))

(assert (= (and d!1594409 c!845302) b!4950708))

(assert (= (and d!1594409 (not c!845302)) b!4950709))

(assert (= (and b!4950709 (not res!2112257)) b!4950710))

(declare-fun m!5975508 () Bool)

(assert (=> b!4950708 m!5975508))

(declare-fun m!5975510 () Bool)

(assert (=> b!4950710 m!5975510))

(assert (=> b!4950481 d!1594409))

(declare-fun d!1594411 () Bool)

(declare-fun c!845303 () Bool)

(assert (=> d!1594411 (= c!845303 (is-Node!15011 (right!41925 (c!845172 totalInput!685))))))

(declare-fun e!3093148 () Bool)

(assert (=> d!1594411 (= (inv!74294 (right!41925 (c!845172 totalInput!685))) e!3093148)))

(declare-fun b!4950711 () Bool)

(assert (=> b!4950711 (= e!3093148 (inv!74298 (right!41925 (c!845172 totalInput!685))))))

(declare-fun b!4950712 () Bool)

(declare-fun e!3093149 () Bool)

(assert (=> b!4950712 (= e!3093148 e!3093149)))

(declare-fun res!2112258 () Bool)

(assert (=> b!4950712 (= res!2112258 (not (is-Leaf!24950 (right!41925 (c!845172 totalInput!685)))))))

(assert (=> b!4950712 (=> res!2112258 e!3093149)))

(declare-fun b!4950713 () Bool)

(assert (=> b!4950713 (= e!3093149 (inv!74299 (right!41925 (c!845172 totalInput!685))))))

(assert (= (and d!1594411 c!845303) b!4950711))

(assert (= (and d!1594411 (not c!845303)) b!4950712))

(assert (= (and b!4950712 (not res!2112258)) b!4950713))

(declare-fun m!5975512 () Bool)

(assert (=> b!4950711 m!5975512))

(declare-fun m!5975514 () Bool)

(assert (=> b!4950713 m!5975514))

(assert (=> b!4950481 d!1594411))

(declare-fun d!1594413 () Bool)

(declare-fun c!845304 () Bool)

(assert (=> d!1594413 (= c!845304 (is-Nil!57007 lt!2042731))))

(declare-fun e!3093150 () (Set C!27234))

(assert (=> d!1594413 (= (content!10160 lt!2042731) e!3093150)))

(declare-fun b!4950714 () Bool)

(assert (=> b!4950714 (= e!3093150 (as set.empty (Set C!27234)))))

(declare-fun b!4950715 () Bool)

(assert (=> b!4950715 (= e!3093150 (set.union (set.insert (h!63455 lt!2042731) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042731))))))

(assert (= (and d!1594413 c!845304) b!4950714))

(assert (= (and d!1594413 (not c!845304)) b!4950715))

(declare-fun m!5975516 () Bool)

(assert (=> b!4950715 m!5975516))

(declare-fun m!5975518 () Bool)

(assert (=> b!4950715 m!5975518))

(assert (=> d!1594199 d!1594413))

(declare-fun d!1594415 () Bool)

(declare-fun c!845305 () Bool)

(assert (=> d!1594415 (= c!845305 (is-Nil!57007 lt!2042654))))

(declare-fun e!3093151 () (Set C!27234))

(assert (=> d!1594415 (= (content!10160 lt!2042654) e!3093151)))

(declare-fun b!4950716 () Bool)

(assert (=> b!4950716 (= e!3093151 (as set.empty (Set C!27234)))))

(declare-fun b!4950717 () Bool)

(assert (=> b!4950717 (= e!3093151 (set.union (set.insert (h!63455 lt!2042654) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042654))))))

(assert (= (and d!1594415 c!845305) b!4950716))

(assert (= (and d!1594415 (not c!845305)) b!4950717))

(declare-fun m!5975520 () Bool)

(assert (=> b!4950717 m!5975520))

(declare-fun m!5975522 () Bool)

(assert (=> b!4950717 m!5975522))

(assert (=> d!1594199 d!1594415))

(declare-fun d!1594417 () Bool)

(declare-fun c!845306 () Bool)

(assert (=> d!1594417 (= c!845306 (is-Nil!57007 lt!2042653))))

(declare-fun e!3093152 () (Set C!27234))

(assert (=> d!1594417 (= (content!10160 lt!2042653) e!3093152)))

(declare-fun b!4950718 () Bool)

(assert (=> b!4950718 (= e!3093152 (as set.empty (Set C!27234)))))

(declare-fun b!4950719 () Bool)

(assert (=> b!4950719 (= e!3093152 (set.union (set.insert (h!63455 lt!2042653) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042653))))))

(assert (= (and d!1594417 c!845306) b!4950718))

(assert (= (and d!1594417 (not c!845306)) b!4950719))

(declare-fun m!5975524 () Bool)

(assert (=> b!4950719 m!5975524))

(declare-fun m!5975526 () Bool)

(assert (=> b!4950719 m!5975526))

(assert (=> d!1594199 d!1594417))

(declare-fun d!1594419 () Bool)

(declare-fun lt!2042929 () Int)

(assert (=> d!1594419 (>= lt!2042929 0)))

(declare-fun e!3093153 () Int)

(assert (=> d!1594419 (= lt!2042929 e!3093153)))

(declare-fun c!845307 () Bool)

(assert (=> d!1594419 (= c!845307 (is-Nil!57007 lt!2042796))))

(assert (=> d!1594419 (= (size!37835 lt!2042796) lt!2042929)))

(declare-fun b!4950720 () Bool)

(assert (=> b!4950720 (= e!3093153 0)))

(declare-fun b!4950721 () Bool)

(assert (=> b!4950721 (= e!3093153 (+ 1 (size!37835 (t!367687 lt!2042796))))))

(assert (= (and d!1594419 c!845307) b!4950720))

(assert (= (and d!1594419 (not c!845307)) b!4950721))

(declare-fun m!5975528 () Bool)

(assert (=> b!4950721 m!5975528))

(assert (=> b!4950364 d!1594419))

(assert (=> b!4950364 d!1594299))

(declare-fun d!1594421 () Bool)

(declare-fun lt!2042930 () Int)

(assert (=> d!1594421 (>= lt!2042930 0)))

(declare-fun e!3093154 () Int)

(assert (=> d!1594421 (= lt!2042930 e!3093154)))

(declare-fun c!845308 () Bool)

(assert (=> d!1594421 (= c!845308 (is-Nil!57007 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))

(assert (=> d!1594421 (= (size!37835 (Cons!57007 (head!10618 lt!2042651) Nil!57007)) lt!2042930)))

(declare-fun b!4950722 () Bool)

(assert (=> b!4950722 (= e!3093154 0)))

(declare-fun b!4950723 () Bool)

(assert (=> b!4950723 (= e!3093154 (+ 1 (size!37835 (t!367687 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))))

(assert (= (and d!1594421 c!845308) b!4950722))

(assert (= (and d!1594421 (not c!845308)) b!4950723))

(declare-fun m!5975530 () Bool)

(assert (=> b!4950723 m!5975530))

(assert (=> b!4950364 d!1594421))

(declare-fun bs!1182234 () Bool)

(declare-fun d!1594423 () Bool)

(assert (= bs!1182234 (and d!1594423 d!1594223)))

(declare-fun lambda!246941 () Int)

(assert (=> bs!1182234 (not (= lambda!246941 lambda!246909))))

(declare-fun bs!1182235 () Bool)

(assert (= bs!1182235 (and d!1594423 b!4950350)))

(assert (=> bs!1182235 (not (= lambda!246941 lambda!246910))))

(declare-fun bs!1182236 () Bool)

(assert (= bs!1182236 (and d!1594423 b!4950351)))

(assert (=> bs!1182236 (not (= lambda!246941 lambda!246911))))

(declare-fun bs!1182237 () Bool)

(assert (= bs!1182237 (and d!1594423 d!1594249)))

(assert (=> bs!1182237 (not (= lambda!246941 lambda!246914))))

(assert (=> d!1594423 true))

(declare-fun order!26011 () Int)

(declare-fun dynLambda!23044 (Int Int) Int)

(assert (=> d!1594423 (< (dynLambda!23044 order!26011 lambda!246909) (dynLambda!23044 order!26011 lambda!246941))))

(assert (=> d!1594423 (exists!1347 lt!2042776 lambda!246941)))

(declare-fun lt!2042933 () Unit!147872)

(declare-fun choose!36580 (List!57135 Int) Unit!147872)

(assert (=> d!1594423 (= lt!2042933 (choose!36580 lt!2042776 lambda!246909))))

(declare-fun forall!13285 (List!57135 Int) Bool)

(assert (=> d!1594423 (not (forall!13285 lt!2042776 lambda!246909))))

(assert (=> d!1594423 (= (lemmaNotForallThenExists!243 lt!2042776 lambda!246909) lt!2042933)))

(declare-fun bs!1182238 () Bool)

(assert (= bs!1182238 d!1594423))

(declare-fun m!5975532 () Bool)

(assert (=> bs!1182238 m!5975532))

(declare-fun m!5975534 () Bool)

(assert (=> bs!1182238 m!5975534))

(declare-fun m!5975536 () Bool)

(assert (=> bs!1182238 m!5975536))

(assert (=> b!4950350 d!1594423))

(declare-fun d!1594425 () Bool)

(declare-fun lt!2042934 () Int)

(assert (=> d!1594425 (>= lt!2042934 0)))

(declare-fun e!3093157 () Int)

(assert (=> d!1594425 (= lt!2042934 e!3093157)))

(declare-fun c!845309 () Bool)

(assert (=> d!1594425 (= c!845309 (is-Nil!57007 lt!2042731))))

(assert (=> d!1594425 (= (size!37835 lt!2042731) lt!2042934)))

(declare-fun b!4950726 () Bool)

(assert (=> b!4950726 (= e!3093157 0)))

(declare-fun b!4950727 () Bool)

(assert (=> b!4950727 (= e!3093157 (+ 1 (size!37835 (t!367687 lt!2042731))))))

(assert (= (and d!1594425 c!845309) b!4950726))

(assert (= (and d!1594425 (not c!845309)) b!4950727))

(declare-fun m!5975538 () Bool)

(assert (=> b!4950727 m!5975538))

(assert (=> b!4950312 d!1594425))

(declare-fun d!1594427 () Bool)

(declare-fun lt!2042935 () Int)

(assert (=> d!1594427 (>= lt!2042935 0)))

(declare-fun e!3093158 () Int)

(assert (=> d!1594427 (= lt!2042935 e!3093158)))

(declare-fun c!845310 () Bool)

(assert (=> d!1594427 (= c!845310 (is-Nil!57007 lt!2042654))))

(assert (=> d!1594427 (= (size!37835 lt!2042654) lt!2042935)))

(declare-fun b!4950728 () Bool)

(assert (=> b!4950728 (= e!3093158 0)))

(declare-fun b!4950729 () Bool)

(assert (=> b!4950729 (= e!3093158 (+ 1 (size!37835 (t!367687 lt!2042654))))))

(assert (= (and d!1594427 c!845310) b!4950728))

(assert (= (and d!1594427 (not c!845310)) b!4950729))

(declare-fun m!5975540 () Bool)

(assert (=> b!4950729 m!5975540))

(assert (=> b!4950312 d!1594427))

(declare-fun d!1594429 () Bool)

(declare-fun lt!2042936 () Int)

(assert (=> d!1594429 (>= lt!2042936 0)))

(declare-fun e!3093159 () Int)

(assert (=> d!1594429 (= lt!2042936 e!3093159)))

(declare-fun c!845311 () Bool)

(assert (=> d!1594429 (= c!845311 (is-Nil!57007 lt!2042653))))

(assert (=> d!1594429 (= (size!37835 lt!2042653) lt!2042936)))

(declare-fun b!4950730 () Bool)

(assert (=> b!4950730 (= e!3093159 0)))

(declare-fun b!4950731 () Bool)

(assert (=> b!4950731 (= e!3093159 (+ 1 (size!37835 (t!367687 lt!2042653))))))

(assert (= (and d!1594429 c!845311) b!4950730))

(assert (= (and d!1594429 (not c!845311)) b!4950731))

(declare-fun m!5975542 () Bool)

(assert (=> b!4950731 m!5975542))

(assert (=> b!4950312 d!1594429))

(declare-fun bs!1182239 () Bool)

(declare-fun d!1594431 () Bool)

(assert (= bs!1182239 (and d!1594431 d!1594301)))

(declare-fun lambda!246942 () Int)

(assert (=> bs!1182239 (= lambda!246942 lambda!246935)))

(assert (=> d!1594431 (= (inv!74292 setElem!28119) (forall!13284 (exprs!3634 setElem!28119) lambda!246942))))

(declare-fun bs!1182240 () Bool)

(assert (= bs!1182240 d!1594431))

(declare-fun m!5975544 () Bool)

(assert (=> bs!1182240 m!5975544))

(assert (=> setNonEmpty!28119 d!1594431))

(declare-fun b!4950742 () Bool)

(declare-fun e!3093165 () List!57131)

(assert (=> b!4950742 (= e!3093165 (list!18188 (xs!18337 (c!845172 totalInput!685))))))

(declare-fun b!4950740 () Bool)

(declare-fun e!3093164 () List!57131)

(assert (=> b!4950740 (= e!3093164 Nil!57007)))

(declare-fun b!4950743 () Bool)

(assert (=> b!4950743 (= e!3093165 (++!12481 (list!18186 (left!41595 (c!845172 totalInput!685))) (list!18186 (right!41925 (c!845172 totalInput!685)))))))

(declare-fun b!4950741 () Bool)

(assert (=> b!4950741 (= e!3093164 e!3093165)))

(declare-fun c!845317 () Bool)

(assert (=> b!4950741 (= c!845317 (is-Leaf!24950 (c!845172 totalInput!685)))))

(declare-fun d!1594433 () Bool)

(declare-fun c!845316 () Bool)

(assert (=> d!1594433 (= c!845316 (is-Empty!15011 (c!845172 totalInput!685)))))

(assert (=> d!1594433 (= (list!18186 (c!845172 totalInput!685)) e!3093164)))

(assert (= (and d!1594433 c!845316) b!4950740))

(assert (= (and d!1594433 (not c!845316)) b!4950741))

(assert (= (and b!4950741 c!845317) b!4950742))

(assert (= (and b!4950741 (not c!845317)) b!4950743))

(assert (=> b!4950742 m!5975424))

(assert (=> b!4950743 m!5975488))

(assert (=> b!4950743 m!5975490))

(assert (=> b!4950743 m!5975488))

(assert (=> b!4950743 m!5975490))

(declare-fun m!5975546 () Bool)

(assert (=> b!4950743 m!5975546))

(assert (=> d!1594255 d!1594433))

(declare-fun b!4950744 () Bool)

(declare-fun e!3093167 () List!57131)

(assert (=> b!4950744 (= e!3093167 (Cons!57007 lt!2042661 Nil!57007))))

(declare-fun d!1594435 () Bool)

(declare-fun e!3093166 () Bool)

(assert (=> d!1594435 e!3093166))

(declare-fun res!2112260 () Bool)

(assert (=> d!1594435 (=> (not res!2112260) (not e!3093166))))

(declare-fun lt!2042937 () List!57131)

(assert (=> d!1594435 (= res!2112260 (= (content!10160 lt!2042937) (set.union (content!10160 (t!367687 testedP!110)) (content!10160 (Cons!57007 lt!2042661 Nil!57007)))))))

(assert (=> d!1594435 (= lt!2042937 e!3093167)))

(declare-fun c!845318 () Bool)

(assert (=> d!1594435 (= c!845318 (is-Nil!57007 (t!367687 testedP!110)))))

(assert (=> d!1594435 (= (++!12481 (t!367687 testedP!110) (Cons!57007 lt!2042661 Nil!57007)) lt!2042937)))

(declare-fun b!4950747 () Bool)

(assert (=> b!4950747 (= e!3093166 (or (not (= (Cons!57007 lt!2042661 Nil!57007) Nil!57007)) (= lt!2042937 (t!367687 testedP!110))))))

(declare-fun b!4950746 () Bool)

(declare-fun res!2112259 () Bool)

(assert (=> b!4950746 (=> (not res!2112259) (not e!3093166))))

(assert (=> b!4950746 (= res!2112259 (= (size!37835 lt!2042937) (+ (size!37835 (t!367687 testedP!110)) (size!37835 (Cons!57007 lt!2042661 Nil!57007)))))))

(declare-fun b!4950745 () Bool)

(assert (=> b!4950745 (= e!3093167 (Cons!57007 (h!63455 (t!367687 testedP!110)) (++!12481 (t!367687 (t!367687 testedP!110)) (Cons!57007 lt!2042661 Nil!57007))))))

(assert (= (and d!1594435 c!845318) b!4950744))

(assert (= (and d!1594435 (not c!845318)) b!4950745))

(assert (= (and d!1594435 res!2112260) b!4950746))

(assert (= (and b!4950746 res!2112259) b!4950747))

(declare-fun m!5975548 () Bool)

(assert (=> d!1594435 m!5975548))

(assert (=> d!1594435 m!5975396))

(assert (=> d!1594435 m!5975112))

(declare-fun m!5975550 () Bool)

(assert (=> b!4950746 m!5975550))

(assert (=> b!4950746 m!5975244))

(assert (=> b!4950746 m!5975116))

(declare-fun m!5975552 () Bool)

(assert (=> b!4950745 m!5975552))

(assert (=> b!4950367 d!1594435))

(declare-fun bs!1182241 () Bool)

(declare-fun d!1594437 () Bool)

(assert (= bs!1182241 (and d!1594437 d!1594223)))

(declare-fun lambda!246945 () Int)

(assert (=> bs!1182241 (not (= lambda!246945 lambda!246909))))

(declare-fun bs!1182242 () Bool)

(assert (= bs!1182242 (and d!1594437 d!1594423)))

(assert (=> bs!1182242 (= (= (ite c!845201 lambda!246910 lambda!246911) lambda!246909) (= lambda!246945 lambda!246941))))

(declare-fun bs!1182243 () Bool)

(assert (= bs!1182243 (and d!1594437 d!1594249)))

(assert (=> bs!1182243 (not (= lambda!246945 lambda!246914))))

(declare-fun bs!1182244 () Bool)

(assert (= bs!1182244 (and d!1594437 b!4950351)))

(assert (=> bs!1182244 (not (= lambda!246945 lambda!246911))))

(declare-fun bs!1182245 () Bool)

(assert (= bs!1182245 (and d!1594437 b!4950350)))

(assert (=> bs!1182245 (not (= lambda!246945 lambda!246910))))

(assert (=> d!1594437 true))

(assert (=> d!1594437 (< (dynLambda!23044 order!26011 (ite c!845201 lambda!246910 lambda!246911)) (dynLambda!23044 order!26011 lambda!246945))))

(assert (=> d!1594437 (= (exists!1347 (ite c!845201 lt!2042776 lt!2042774) (ite c!845201 lambda!246910 lambda!246911)) (not (forall!13285 (ite c!845201 lt!2042776 lt!2042774) lambda!246945)))))

(declare-fun bs!1182246 () Bool)

(assert (= bs!1182246 d!1594437))

(declare-fun m!5975554 () Bool)

(assert (=> bs!1182246 m!5975554))

(assert (=> bm!345640 d!1594437))

(declare-fun d!1594439 () Bool)

(assert (=> d!1594439 (= (head!10618 testedP!110) (h!63455 testedP!110))))

(assert (=> b!4950339 d!1594439))

(declare-fun d!1594441 () Bool)

(assert (=> d!1594441 (= (head!10618 lt!2042649) (h!63455 lt!2042649))))

(assert (=> b!4950339 d!1594441))

(declare-fun d!1594443 () Bool)

(declare-fun lt!2042938 () Int)

(assert (=> d!1594443 (>= lt!2042938 0)))

(declare-fun e!3093168 () Int)

(assert (=> d!1594443 (= lt!2042938 e!3093168)))

(declare-fun c!845319 () Bool)

(assert (=> d!1594443 (= c!845319 (is-Nil!57007 (list!18184 totalInput!685)))))

(assert (=> d!1594443 (= (size!37835 (list!18184 totalInput!685)) lt!2042938)))

(declare-fun b!4950748 () Bool)

(assert (=> b!4950748 (= e!3093168 0)))

(declare-fun b!4950749 () Bool)

(assert (=> b!4950749 (= e!3093168 (+ 1 (size!37835 (t!367687 (list!18184 totalInput!685)))))))

(assert (= (and d!1594443 c!845319) b!4950748))

(assert (= (and d!1594443 (not c!845319)) b!4950749))

(declare-fun m!5975556 () Bool)

(assert (=> b!4950749 m!5975556))

(assert (=> d!1594229 d!1594443))

(assert (=> d!1594229 d!1594255))

(declare-fun d!1594445 () Bool)

(declare-fun lt!2042941 () Int)

(assert (=> d!1594445 (= lt!2042941 (size!37835 (list!18186 (c!845172 totalInput!685))))))

(assert (=> d!1594445 (= lt!2042941 (ite (is-Empty!15011 (c!845172 totalInput!685)) 0 (ite (is-Leaf!24950 (c!845172 totalInput!685)) (csize!30253 (c!845172 totalInput!685)) (csize!30252 (c!845172 totalInput!685)))))))

(assert (=> d!1594445 (= (size!37839 (c!845172 totalInput!685)) lt!2042941)))

(declare-fun bs!1182247 () Bool)

(assert (= bs!1182247 d!1594445))

(assert (=> bs!1182247 m!5975156))

(assert (=> bs!1182247 m!5975156))

(declare-fun m!5975558 () Bool)

(assert (=> bs!1182247 m!5975558))

(assert (=> d!1594229 d!1594445))

(declare-fun b!4950751 () Bool)

(declare-fun res!2112262 () Bool)

(declare-fun e!3093171 () Bool)

(assert (=> b!4950751 (=> (not res!2112262) (not e!3093171))))

(assert (=> b!4950751 (= res!2112262 (= (head!10618 (tail!9753 testedP!110)) (head!10618 (tail!9753 lt!2042642))))))

(declare-fun b!4950753 () Bool)

(declare-fun e!3093170 () Bool)

(assert (=> b!4950753 (= e!3093170 (>= (size!37835 (tail!9753 lt!2042642)) (size!37835 (tail!9753 testedP!110))))))

(declare-fun b!4950752 () Bool)

(assert (=> b!4950752 (= e!3093171 (isPrefix!5098 (tail!9753 (tail!9753 testedP!110)) (tail!9753 (tail!9753 lt!2042642))))))

(declare-fun b!4950750 () Bool)

(declare-fun e!3093169 () Bool)

(assert (=> b!4950750 (= e!3093169 e!3093171)))

(declare-fun res!2112263 () Bool)

(assert (=> b!4950750 (=> (not res!2112263) (not e!3093171))))

(assert (=> b!4950750 (= res!2112263 (not (is-Nil!57007 (tail!9753 lt!2042642))))))

(declare-fun d!1594447 () Bool)

(assert (=> d!1594447 e!3093170))

(declare-fun res!2112261 () Bool)

(assert (=> d!1594447 (=> res!2112261 e!3093170)))

(declare-fun lt!2042942 () Bool)

(assert (=> d!1594447 (= res!2112261 (not lt!2042942))))

(assert (=> d!1594447 (= lt!2042942 e!3093169)))

(declare-fun res!2112264 () Bool)

(assert (=> d!1594447 (=> res!2112264 e!3093169)))

(assert (=> d!1594447 (= res!2112264 (is-Nil!57007 (tail!9753 testedP!110)))))

(assert (=> d!1594447 (= (isPrefix!5098 (tail!9753 testedP!110) (tail!9753 lt!2042642)) lt!2042942)))

(assert (= (and d!1594447 (not res!2112264)) b!4950750))

(assert (= (and b!4950750 res!2112263) b!4950751))

(assert (= (and b!4950751 res!2112262) b!4950752))

(assert (= (and d!1594447 (not res!2112261)) b!4950753))

(assert (=> b!4950751 m!5975050))

(declare-fun m!5975560 () Bool)

(assert (=> b!4950751 m!5975560))

(assert (=> b!4950751 m!5975060))

(declare-fun m!5975562 () Bool)

(assert (=> b!4950751 m!5975562))

(assert (=> b!4950753 m!5975060))

(declare-fun m!5975564 () Bool)

(assert (=> b!4950753 m!5975564))

(assert (=> b!4950753 m!5975050))

(declare-fun m!5975566 () Bool)

(assert (=> b!4950753 m!5975566))

(assert (=> b!4950752 m!5975050))

(declare-fun m!5975568 () Bool)

(assert (=> b!4950752 m!5975568))

(assert (=> b!4950752 m!5975060))

(declare-fun m!5975570 () Bool)

(assert (=> b!4950752 m!5975570))

(assert (=> b!4950752 m!5975568))

(assert (=> b!4950752 m!5975570))

(declare-fun m!5975572 () Bool)

(assert (=> b!4950752 m!5975572))

(assert (=> b!4950344 d!1594447))

(declare-fun d!1594449 () Bool)

(assert (=> d!1594449 (= (tail!9753 testedP!110) (t!367687 testedP!110))))

(assert (=> b!4950344 d!1594449))

(declare-fun d!1594451 () Bool)

(assert (=> d!1594451 (= (tail!9753 lt!2042642) (t!367687 lt!2042642))))

(assert (=> b!4950344 d!1594451))

(declare-fun b!4950755 () Bool)

(declare-fun res!2112266 () Bool)

(declare-fun e!3093174 () Bool)

(assert (=> b!4950755 (=> (not res!2112266) (not e!3093174))))

(assert (=> b!4950755 (= res!2112266 (= (head!10618 (tail!9753 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))) (head!10618 (tail!9753 lt!2042649))))))

(declare-fun e!3093173 () Bool)

(declare-fun b!4950757 () Bool)

(assert (=> b!4950757 (= e!3093173 (>= (size!37835 (tail!9753 lt!2042649)) (size!37835 (tail!9753 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))))))))

(declare-fun b!4950756 () Bool)

(assert (=> b!4950756 (= e!3093174 (isPrefix!5098 (tail!9753 (tail!9753 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))) (tail!9753 (tail!9753 lt!2042649))))))

(declare-fun b!4950754 () Bool)

(declare-fun e!3093172 () Bool)

(assert (=> b!4950754 (= e!3093172 e!3093174)))

(declare-fun res!2112267 () Bool)

(assert (=> b!4950754 (=> (not res!2112267) (not e!3093174))))

(assert (=> b!4950754 (= res!2112267 (not (is-Nil!57007 (tail!9753 lt!2042649))))))

(declare-fun d!1594453 () Bool)

(assert (=> d!1594453 e!3093173))

(declare-fun res!2112265 () Bool)

(assert (=> d!1594453 (=> res!2112265 e!3093173)))

(declare-fun lt!2042943 () Bool)

(assert (=> d!1594453 (= res!2112265 (not lt!2042943))))

(assert (=> d!1594453 (= lt!2042943 e!3093172)))

(declare-fun res!2112268 () Bool)

(assert (=> d!1594453 (=> res!2112268 e!3093172)))

(assert (=> d!1594453 (= res!2112268 (is-Nil!57007 (tail!9753 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))))

(assert (=> d!1594453 (= (isPrefix!5098 (tail!9753 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))) (tail!9753 lt!2042649)) lt!2042943)))

(assert (= (and d!1594453 (not res!2112268)) b!4950754))

(assert (= (and b!4950754 res!2112267) b!4950755))

(assert (= (and b!4950755 res!2112266) b!4950756))

(assert (= (and d!1594453 (not res!2112265)) b!4950757))

(assert (=> b!4950755 m!5975124))

(declare-fun m!5975574 () Bool)

(assert (=> b!4950755 m!5975574))

(assert (=> b!4950755 m!5975052))

(assert (=> b!4950755 m!5975408))

(assert (=> b!4950757 m!5975052))

(assert (=> b!4950757 m!5975406))

(assert (=> b!4950757 m!5975124))

(declare-fun m!5975576 () Bool)

(assert (=> b!4950757 m!5975576))

(assert (=> b!4950756 m!5975124))

(declare-fun m!5975578 () Bool)

(assert (=> b!4950756 m!5975578))

(assert (=> b!4950756 m!5975052))

(assert (=> b!4950756 m!5975410))

(assert (=> b!4950756 m!5975578))

(assert (=> b!4950756 m!5975410))

(declare-fun m!5975580 () Bool)

(assert (=> b!4950756 m!5975580))

(assert (=> b!4950372 d!1594453))

(declare-fun d!1594455 () Bool)

(assert (=> d!1594455 (= (tail!9753 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))) (t!367687 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))))))

(assert (=> b!4950372 d!1594455))

(assert (=> b!4950372 d!1594369))

(assert (=> d!1594279 d!1594295))

(assert (=> d!1594279 d!1594297))

(assert (=> d!1594279 d!1594283))

(declare-fun d!1594457 () Bool)

(assert (=> d!1594457 (= (head!10618 (drop!2299 lt!2042649 testedPSize!70)) (apply!13848 lt!2042649 testedPSize!70))))

(assert (=> d!1594457 true))

(declare-fun _$27!1696 () Unit!147872)

(assert (=> d!1594457 (= (choose!36571 lt!2042649 testedPSize!70) _$27!1696)))

(declare-fun bs!1182248 () Bool)

(assert (= bs!1182248 d!1594457))

(assert (=> bs!1182248 m!5974854))

(assert (=> bs!1182248 m!5974854))

(assert (=> bs!1182248 m!5974858))

(assert (=> bs!1182248 m!5974852))

(assert (=> d!1594279 d!1594457))

(declare-fun b!4950758 () Bool)

(declare-fun e!3093176 () List!57131)

(assert (=> b!4950758 (= e!3093176 lt!2042646)))

(declare-fun d!1594459 () Bool)

(declare-fun e!3093175 () Bool)

(assert (=> d!1594459 e!3093175))

(declare-fun res!2112270 () Bool)

(assert (=> d!1594459 (=> (not res!2112270) (not e!3093175))))

(declare-fun lt!2042944 () List!57131)

(assert (=> d!1594459 (= res!2112270 (= (content!10160 lt!2042944) (set.union (content!10160 (t!367687 lt!2042648)) (content!10160 lt!2042646))))))

(assert (=> d!1594459 (= lt!2042944 e!3093176)))

(declare-fun c!845320 () Bool)

(assert (=> d!1594459 (= c!845320 (is-Nil!57007 (t!367687 lt!2042648)))))

(assert (=> d!1594459 (= (++!12481 (t!367687 lt!2042648) lt!2042646) lt!2042944)))

(declare-fun b!4950761 () Bool)

(assert (=> b!4950761 (= e!3093175 (or (not (= lt!2042646 Nil!57007)) (= lt!2042944 (t!367687 lt!2042648))))))

(declare-fun b!4950760 () Bool)

(declare-fun res!2112269 () Bool)

(assert (=> b!4950760 (=> (not res!2112269) (not e!3093175))))

(assert (=> b!4950760 (= res!2112269 (= (size!37835 lt!2042944) (+ (size!37835 (t!367687 lt!2042648)) (size!37835 lt!2042646))))))

(declare-fun b!4950759 () Bool)

(assert (=> b!4950759 (= e!3093176 (Cons!57007 (h!63455 (t!367687 lt!2042648)) (++!12481 (t!367687 (t!367687 lt!2042648)) lt!2042646)))))

(assert (= (and d!1594459 c!845320) b!4950758))

(assert (= (and d!1594459 (not c!845320)) b!4950759))

(assert (= (and d!1594459 res!2112270) b!4950760))

(assert (= (and b!4950760 res!2112269) b!4950761))

(declare-fun m!5975582 () Bool)

(assert (=> d!1594459 m!5975582))

(assert (=> d!1594459 m!5975502))

(assert (=> d!1594459 m!5975138))

(declare-fun m!5975584 () Bool)

(assert (=> b!4950760 m!5975584))

(assert (=> b!4950760 m!5975172))

(assert (=> b!4950760 m!5975142))

(declare-fun m!5975586 () Bool)

(assert (=> b!4950759 m!5975586))

(assert (=> b!4950375 d!1594459))

(declare-fun d!1594461 () Bool)

(assert (=> d!1594461 (= testedSuffix!70 lt!2042651)))

(assert (=> d!1594461 true))

(declare-fun _$63!1234 () Unit!147872)

(assert (=> d!1594461 (= (choose!36563 testedP!110 testedSuffix!70 testedP!110 lt!2042651 lt!2042649) _$63!1234)))

(assert (=> d!1594225 d!1594461))

(assert (=> d!1594225 d!1594217))

(assert (=> b!4950341 d!1594265))

(assert (=> b!4950341 d!1594299))

(declare-fun b!4950774 () Bool)

(declare-fun e!3093181 () Bool)

(declare-fun isEmpty!30678 (Conc!15011) Bool)

(assert (=> b!4950774 (= e!3093181 (not (isEmpty!30678 (right!41925 (c!845172 (_2!34094 lt!2042747))))))))

(declare-fun d!1594463 () Bool)

(declare-fun res!2112285 () Bool)

(declare-fun e!3093182 () Bool)

(assert (=> d!1594463 (=> res!2112285 e!3093182)))

(assert (=> d!1594463 (= res!2112285 (not (is-Node!15011 (c!845172 (_2!34094 lt!2042747)))))))

(assert (=> d!1594463 (= (isBalanced!4161 (c!845172 (_2!34094 lt!2042747))) e!3093182)))

(declare-fun b!4950775 () Bool)

(declare-fun res!2112284 () Bool)

(assert (=> b!4950775 (=> (not res!2112284) (not e!3093181))))

(assert (=> b!4950775 (= res!2112284 (not (isEmpty!30678 (left!41595 (c!845172 (_2!34094 lt!2042747))))))))

(declare-fun b!4950776 () Bool)

(assert (=> b!4950776 (= e!3093182 e!3093181)))

(declare-fun res!2112286 () Bool)

(assert (=> b!4950776 (=> (not res!2112286) (not e!3093181))))

(assert (=> b!4950776 (= res!2112286 (<= (- 1) (- (height!2007 (left!41595 (c!845172 (_2!34094 lt!2042747)))) (height!2007 (right!41925 (c!845172 (_2!34094 lt!2042747)))))))))

(declare-fun b!4950777 () Bool)

(declare-fun res!2112287 () Bool)

(assert (=> b!4950777 (=> (not res!2112287) (not e!3093181))))

(assert (=> b!4950777 (= res!2112287 (isBalanced!4161 (left!41595 (c!845172 (_2!34094 lt!2042747)))))))

(declare-fun b!4950778 () Bool)

(declare-fun res!2112288 () Bool)

(assert (=> b!4950778 (=> (not res!2112288) (not e!3093181))))

(assert (=> b!4950778 (= res!2112288 (isBalanced!4161 (right!41925 (c!845172 (_2!34094 lt!2042747)))))))

(declare-fun b!4950779 () Bool)

(declare-fun res!2112283 () Bool)

(assert (=> b!4950779 (=> (not res!2112283) (not e!3093181))))

(assert (=> b!4950779 (= res!2112283 (<= (- (height!2007 (left!41595 (c!845172 (_2!34094 lt!2042747)))) (height!2007 (right!41925 (c!845172 (_2!34094 lt!2042747))))) 1))))

(assert (= (and d!1594463 (not res!2112285)) b!4950776))

(assert (= (and b!4950776 res!2112286) b!4950779))

(assert (= (and b!4950779 res!2112283) b!4950777))

(assert (= (and b!4950777 res!2112287) b!4950778))

(assert (= (and b!4950778 res!2112288) b!4950775))

(assert (= (and b!4950775 res!2112284) b!4950774))

(declare-fun m!5975588 () Bool)

(assert (=> b!4950775 m!5975588))

(declare-fun m!5975590 () Bool)

(assert (=> b!4950776 m!5975590))

(declare-fun m!5975592 () Bool)

(assert (=> b!4950776 m!5975592))

(declare-fun m!5975594 () Bool)

(assert (=> b!4950774 m!5975594))

(declare-fun m!5975596 () Bool)

(assert (=> b!4950777 m!5975596))

(assert (=> b!4950779 m!5975590))

(assert (=> b!4950779 m!5975592))

(declare-fun m!5975598 () Bool)

(assert (=> b!4950778 m!5975598))

(assert (=> b!4950328 d!1594463))

(declare-fun d!1594465 () Bool)

(assert (=> d!1594465 (and (= lt!2042654 testedP!110) (= lt!2042653 testedSuffix!70))))

(assert (=> d!1594465 true))

(declare-fun _$50!443 () Unit!147872)

(assert (=> d!1594465 (= (choose!36570 lt!2042654 lt!2042653 testedP!110 testedSuffix!70) _$50!443)))

(assert (=> d!1594273 d!1594465))

(assert (=> d!1594273 d!1594199))

(assert (=> d!1594273 d!1594257))

(assert (=> b!4950421 d!1594441))

(declare-fun d!1594467 () Bool)

(assert (=> d!1594467 (= (isEmpty!30675 (getLanguageWitness!696 z!3568)) (not (is-Some!14222 (getLanguageWitness!696 z!3568))))))

(assert (=> d!1594223 d!1594467))

(declare-fun bs!1182249 () Bool)

(declare-fun d!1594469 () Bool)

(assert (= bs!1182249 (and d!1594469 d!1594437)))

(declare-fun lambda!246952 () Int)

(assert (=> bs!1182249 (not (= lambda!246952 lambda!246945))))

(declare-fun bs!1182250 () Bool)

(assert (= bs!1182250 (and d!1594469 d!1594223)))

(assert (=> bs!1182250 (not (= lambda!246952 lambda!246909))))

(declare-fun bs!1182251 () Bool)

(assert (= bs!1182251 (and d!1594469 d!1594423)))

(assert (=> bs!1182251 (not (= lambda!246952 lambda!246941))))

(declare-fun bs!1182252 () Bool)

(assert (= bs!1182252 (and d!1594469 d!1594249)))

(assert (=> bs!1182252 (not (= lambda!246952 lambda!246914))))

(declare-fun bs!1182253 () Bool)

(assert (= bs!1182253 (and d!1594469 b!4950351)))

(assert (=> bs!1182253 (= lambda!246952 lambda!246911)))

(declare-fun bs!1182254 () Bool)

(assert (= bs!1182254 (and d!1594469 b!4950350)))

(assert (=> bs!1182254 (= lambda!246952 lambda!246910)))

(declare-fun lt!2042947 () Option!14223)

(declare-fun isDefined!11184 (Option!14223) Bool)

(assert (=> d!1594469 (= (isDefined!11184 lt!2042947) (exists!1348 z!3568 lambda!246952))))

(declare-fun e!3093185 () Option!14223)

(assert (=> d!1594469 (= lt!2042947 e!3093185)))

(declare-fun c!845329 () Bool)

(assert (=> d!1594469 (= c!845329 (exists!1348 z!3568 lambda!246952))))

(assert (=> d!1594469 (= (getLanguageWitness!696 z!3568) lt!2042947)))

(declare-fun b!4950784 () Bool)

(declare-fun getLanguageWitness!698 (Context!6268) Option!14223)

(declare-fun getWitness!650 ((Set Context!6268) Int) Context!6268)

(assert (=> b!4950784 (= e!3093185 (getLanguageWitness!698 (getWitness!650 z!3568 lambda!246952)))))

(declare-fun b!4950785 () Bool)

(assert (=> b!4950785 (= e!3093185 None!14222)))

(assert (= (and d!1594469 c!845329) b!4950784))

(assert (= (and d!1594469 (not c!845329)) b!4950785))

(declare-fun m!5975600 () Bool)

(assert (=> d!1594469 m!5975600))

(declare-fun m!5975602 () Bool)

(assert (=> d!1594469 m!5975602))

(assert (=> d!1594469 m!5975602))

(declare-fun m!5975604 () Bool)

(assert (=> b!4950784 m!5975604))

(assert (=> b!4950784 m!5975604))

(declare-fun m!5975606 () Bool)

(assert (=> b!4950784 m!5975606))

(assert (=> d!1594223 d!1594469))

(declare-fun d!1594471 () Bool)

(declare-fun lt!2042950 () Bool)

(assert (=> d!1594471 (= lt!2042950 (forall!13285 (toList!8005 z!3568) lambda!246909))))

(declare-fun choose!36581 ((Set Context!6268) Int) Bool)

(assert (=> d!1594471 (= lt!2042950 (choose!36581 z!3568 lambda!246909))))

(assert (=> d!1594471 (= (forall!13281 z!3568 lambda!246909) lt!2042950)))

(declare-fun bs!1182255 () Bool)

(assert (= bs!1182255 d!1594471))

(assert (=> bs!1182255 m!5975068))

(assert (=> bs!1182255 m!5975068))

(declare-fun m!5975608 () Bool)

(assert (=> bs!1182255 m!5975608))

(declare-fun m!5975610 () Bool)

(assert (=> bs!1182255 m!5975610))

(assert (=> d!1594223 d!1594471))

(assert (=> b!4950235 d!1594261))

(declare-fun b!4950788 () Bool)

(declare-fun e!3093187 () List!57131)

(assert (=> b!4950788 (= e!3093187 (list!18188 (xs!18337 (c!845172 (_1!34094 lt!2042656)))))))

(declare-fun b!4950786 () Bool)

(declare-fun e!3093186 () List!57131)

(assert (=> b!4950786 (= e!3093186 Nil!57007)))

(declare-fun b!4950789 () Bool)

(assert (=> b!4950789 (= e!3093187 (++!12481 (list!18186 (left!41595 (c!845172 (_1!34094 lt!2042656)))) (list!18186 (right!41925 (c!845172 (_1!34094 lt!2042656))))))))

(declare-fun b!4950787 () Bool)

(assert (=> b!4950787 (= e!3093186 e!3093187)))

(declare-fun c!845331 () Bool)

(assert (=> b!4950787 (= c!845331 (is-Leaf!24950 (c!845172 (_1!34094 lt!2042656))))))

(declare-fun d!1594473 () Bool)

(declare-fun c!845330 () Bool)

(assert (=> d!1594473 (= c!845330 (is-Empty!15011 (c!845172 (_1!34094 lt!2042656))))))

(assert (=> d!1594473 (= (list!18186 (c!845172 (_1!34094 lt!2042656))) e!3093186)))

(assert (= (and d!1594473 c!845330) b!4950786))

(assert (= (and d!1594473 (not c!845330)) b!4950787))

(assert (= (and b!4950787 c!845331) b!4950788))

(assert (= (and b!4950787 (not c!845331)) b!4950789))

(declare-fun m!5975612 () Bool)

(assert (=> b!4950788 m!5975612))

(declare-fun m!5975614 () Bool)

(assert (=> b!4950789 m!5975614))

(declare-fun m!5975616 () Bool)

(assert (=> b!4950789 m!5975616))

(assert (=> b!4950789 m!5975614))

(assert (=> b!4950789 m!5975616))

(declare-fun m!5975618 () Bool)

(assert (=> b!4950789 m!5975618))

(assert (=> d!1594207 d!1594473))

(declare-fun d!1594475 () Bool)

(declare-fun c!845332 () Bool)

(assert (=> d!1594475 (= c!845332 (is-Nil!57007 lt!2042796))))

(declare-fun e!3093188 () (Set C!27234))

(assert (=> d!1594475 (= (content!10160 lt!2042796) e!3093188)))

(declare-fun b!4950790 () Bool)

(assert (=> b!4950790 (= e!3093188 (as set.empty (Set C!27234)))))

(declare-fun b!4950791 () Bool)

(assert (=> b!4950791 (= e!3093188 (set.union (set.insert (h!63455 lt!2042796) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042796))))))

(assert (= (and d!1594475 c!845332) b!4950790))

(assert (= (and d!1594475 (not c!845332)) b!4950791))

(declare-fun m!5975620 () Bool)

(assert (=> b!4950791 m!5975620))

(declare-fun m!5975622 () Bool)

(assert (=> b!4950791 m!5975622))

(assert (=> d!1594237 d!1594475))

(assert (=> d!1594237 d!1594361))

(declare-fun d!1594477 () Bool)

(declare-fun c!845333 () Bool)

(assert (=> d!1594477 (= c!845333 (is-Nil!57007 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))

(declare-fun e!3093189 () (Set C!27234))

(assert (=> d!1594477 (= (content!10160 (Cons!57007 (head!10618 lt!2042651) Nil!57007)) e!3093189)))

(declare-fun b!4950792 () Bool)

(assert (=> b!4950792 (= e!3093189 (as set.empty (Set C!27234)))))

(declare-fun b!4950793 () Bool)

(assert (=> b!4950793 (= e!3093189 (set.union (set.insert (h!63455 (Cons!57007 (head!10618 lt!2042651) Nil!57007)) (as set.empty (Set C!27234))) (content!10160 (t!367687 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))))

(assert (= (and d!1594477 c!845333) b!4950792))

(assert (= (and d!1594477 (not c!845333)) b!4950793))

(declare-fun m!5975624 () Bool)

(assert (=> b!4950793 m!5975624))

(declare-fun m!5975626 () Bool)

(assert (=> b!4950793 m!5975626))

(assert (=> d!1594237 d!1594477))

(assert (=> b!4950425 d!1594229))

(assert (=> b!4950409 d!1594265))

(assert (=> b!4950361 d!1594265))

(declare-fun d!1594479 () Bool)

(declare-fun lt!2042953 () Bool)

(assert (=> d!1594479 (= lt!2042953 (set.member lt!2042850 (content!10160 lt!2042649)))))

(declare-fun e!3093195 () Bool)

(assert (=> d!1594479 (= lt!2042953 e!3093195)))

(declare-fun res!2112293 () Bool)

(assert (=> d!1594479 (=> (not res!2112293) (not e!3093195))))

(assert (=> d!1594479 (= res!2112293 (is-Cons!57007 lt!2042649))))

(assert (=> d!1594479 (= (contains!19499 lt!2042649 lt!2042850) lt!2042953)))

(declare-fun b!4950798 () Bool)

(declare-fun e!3093194 () Bool)

(assert (=> b!4950798 (= e!3093195 e!3093194)))

(declare-fun res!2112294 () Bool)

(assert (=> b!4950798 (=> res!2112294 e!3093194)))

(assert (=> b!4950798 (= res!2112294 (= (h!63455 lt!2042649) lt!2042850))))

(declare-fun b!4950799 () Bool)

(assert (=> b!4950799 (= e!3093194 (contains!19499 (t!367687 lt!2042649) lt!2042850))))

(assert (= (and d!1594479 res!2112293) b!4950798))

(assert (= (and b!4950798 (not res!2112294)) b!4950799))

(assert (=> d!1594479 m!5975238))

(declare-fun m!5975628 () Bool)

(assert (=> d!1594479 m!5975628))

(declare-fun m!5975630 () Bool)

(assert (=> b!4950799 m!5975630))

(assert (=> d!1594283 d!1594479))

(declare-fun d!1594481 () Bool)

(declare-fun lt!2042954 () Int)

(assert (=> d!1594481 (>= lt!2042954 0)))

(declare-fun e!3093196 () Int)

(assert (=> d!1594481 (= lt!2042954 e!3093196)))

(declare-fun c!845334 () Bool)

(assert (=> d!1594481 (= c!845334 (is-Nil!57007 lt!2042806))))

(assert (=> d!1594481 (= (size!37835 lt!2042806) lt!2042954)))

(declare-fun b!4950800 () Bool)

(assert (=> b!4950800 (= e!3093196 0)))

(declare-fun b!4950801 () Bool)

(assert (=> b!4950801 (= e!3093196 (+ 1 (size!37835 (t!367687 lt!2042806))))))

(assert (= (and d!1594481 c!845334) b!4950800))

(assert (= (and d!1594481 (not c!845334)) b!4950801))

(declare-fun m!5975632 () Bool)

(assert (=> b!4950801 m!5975632))

(assert (=> b!4950380 d!1594481))

(assert (=> b!4950380 d!1594299))

(declare-fun d!1594483 () Bool)

(declare-fun lt!2042955 () Int)

(assert (=> d!1594483 (>= lt!2042955 0)))

(declare-fun e!3093197 () Int)

(assert (=> d!1594483 (= lt!2042955 e!3093197)))

(declare-fun c!845335 () Bool)

(assert (=> d!1594483 (= c!845335 (is-Nil!57007 testedSuffix!70))))

(assert (=> d!1594483 (= (size!37835 testedSuffix!70) lt!2042955)))

(declare-fun b!4950802 () Bool)

(assert (=> b!4950802 (= e!3093197 0)))

(declare-fun b!4950803 () Bool)

(assert (=> b!4950803 (= e!3093197 (+ 1 (size!37835 (t!367687 testedSuffix!70))))))

(assert (= (and d!1594483 c!845335) b!4950802))

(assert (= (and d!1594483 (not c!845335)) b!4950803))

(declare-fun m!5975634 () Bool)

(assert (=> b!4950803 m!5975634))

(assert (=> b!4950380 d!1594483))

(assert (=> bm!345650 d!1594265))

(declare-fun d!1594485 () Bool)

(declare-fun lt!2042956 () Int)

(assert (=> d!1594485 (>= lt!2042956 0)))

(declare-fun e!3093198 () Int)

(assert (=> d!1594485 (= lt!2042956 e!3093198)))

(declare-fun c!845336 () Bool)

(assert (=> d!1594485 (= c!845336 (is-Nil!57007 (t!367687 testedP!110)))))

(assert (=> d!1594485 (= (size!37835 (t!367687 testedP!110)) lt!2042956)))

(declare-fun b!4950804 () Bool)

(assert (=> b!4950804 (= e!3093198 0)))

(declare-fun b!4950805 () Bool)

(assert (=> b!4950805 (= e!3093198 (+ 1 (size!37835 (t!367687 (t!367687 testedP!110)))))))

(assert (= (and d!1594485 c!845336) b!4950804))

(assert (= (and d!1594485 (not c!845336)) b!4950805))

(declare-fun m!5975636 () Bool)

(assert (=> b!4950805 m!5975636))

(assert (=> b!4950458 d!1594485))

(declare-fun b!4950806 () Bool)

(declare-fun e!3093199 () Bool)

(assert (=> b!4950806 (= e!3093199 (not (isEmpty!30678 (right!41925 (c!845172 totalInput!685)))))))

(declare-fun d!1594487 () Bool)

(declare-fun res!2112297 () Bool)

(declare-fun e!3093200 () Bool)

(assert (=> d!1594487 (=> res!2112297 e!3093200)))

(assert (=> d!1594487 (= res!2112297 (not (is-Node!15011 (c!845172 totalInput!685))))))

(assert (=> d!1594487 (= (isBalanced!4161 (c!845172 totalInput!685)) e!3093200)))

(declare-fun b!4950807 () Bool)

(declare-fun res!2112296 () Bool)

(assert (=> b!4950807 (=> (not res!2112296) (not e!3093199))))

(assert (=> b!4950807 (= res!2112296 (not (isEmpty!30678 (left!41595 (c!845172 totalInput!685)))))))

(declare-fun b!4950808 () Bool)

(assert (=> b!4950808 (= e!3093200 e!3093199)))

(declare-fun res!2112298 () Bool)

(assert (=> b!4950808 (=> (not res!2112298) (not e!3093199))))

(assert (=> b!4950808 (= res!2112298 (<= (- 1) (- (height!2007 (left!41595 (c!845172 totalInput!685))) (height!2007 (right!41925 (c!845172 totalInput!685))))))))

(declare-fun b!4950809 () Bool)

(declare-fun res!2112299 () Bool)

(assert (=> b!4950809 (=> (not res!2112299) (not e!3093199))))

(assert (=> b!4950809 (= res!2112299 (isBalanced!4161 (left!41595 (c!845172 totalInput!685))))))

(declare-fun b!4950810 () Bool)

(declare-fun res!2112300 () Bool)

(assert (=> b!4950810 (=> (not res!2112300) (not e!3093199))))

(assert (=> b!4950810 (= res!2112300 (isBalanced!4161 (right!41925 (c!845172 totalInput!685))))))

(declare-fun b!4950811 () Bool)

(declare-fun res!2112295 () Bool)

(assert (=> b!4950811 (=> (not res!2112295) (not e!3093199))))

(assert (=> b!4950811 (= res!2112295 (<= (- (height!2007 (left!41595 (c!845172 totalInput!685))) (height!2007 (right!41925 (c!845172 totalInput!685)))) 1))))

(assert (= (and d!1594487 (not res!2112297)) b!4950808))

(assert (= (and b!4950808 res!2112298) b!4950811))

(assert (= (and b!4950811 res!2112295) b!4950809))

(assert (= (and b!4950809 res!2112299) b!4950810))

(assert (= (and b!4950810 res!2112300) b!4950807))

(assert (= (and b!4950807 res!2112296) b!4950806))

(declare-fun m!5975638 () Bool)

(assert (=> b!4950807 m!5975638))

(assert (=> b!4950808 m!5975418))

(assert (=> b!4950808 m!5975420))

(declare-fun m!5975640 () Bool)

(assert (=> b!4950806 m!5975640))

(declare-fun m!5975642 () Bool)

(assert (=> b!4950809 m!5975642))

(assert (=> b!4950811 m!5975418))

(assert (=> b!4950811 m!5975420))

(declare-fun m!5975644 () Bool)

(assert (=> b!4950810 m!5975644))

(assert (=> d!1594259 d!1594487))

(declare-fun d!1594489 () Bool)

(declare-fun lt!2042957 () List!57131)

(assert (=> d!1594489 (= (++!12481 (t!367687 testedP!110) lt!2042957) (tail!9753 lt!2042649))))

(declare-fun e!3093201 () List!57131)

(assert (=> d!1594489 (= lt!2042957 e!3093201)))

(declare-fun c!845337 () Bool)

(assert (=> d!1594489 (= c!845337 (is-Cons!57007 (t!367687 testedP!110)))))

(assert (=> d!1594489 (>= (size!37835 (tail!9753 lt!2042649)) (size!37835 (t!367687 testedP!110)))))

(assert (=> d!1594489 (= (getSuffix!3080 (tail!9753 lt!2042649) (t!367687 testedP!110)) lt!2042957)))

(declare-fun b!4950812 () Bool)

(assert (=> b!4950812 (= e!3093201 (getSuffix!3080 (tail!9753 (tail!9753 lt!2042649)) (t!367687 (t!367687 testedP!110))))))

(declare-fun b!4950813 () Bool)

(assert (=> b!4950813 (= e!3093201 (tail!9753 lt!2042649))))

(assert (= (and d!1594489 c!845337) b!4950812))

(assert (= (and d!1594489 (not c!845337)) b!4950813))

(declare-fun m!5975646 () Bool)

(assert (=> d!1594489 m!5975646))

(assert (=> d!1594489 m!5975052))

(assert (=> d!1594489 m!5975406))

(assert (=> d!1594489 m!5975244))

(assert (=> b!4950812 m!5975052))

(assert (=> b!4950812 m!5975410))

(assert (=> b!4950812 m!5975410))

(declare-fun m!5975648 () Bool)

(assert (=> b!4950812 m!5975648))

(assert (=> b!4950356 d!1594489))

(assert (=> b!4950356 d!1594369))

(assert (=> b!4950359 d!1594441))

(declare-fun d!1594491 () Bool)

(declare-fun lt!2042958 () Int)

(assert (=> d!1594491 (>= lt!2042958 0)))

(declare-fun e!3093202 () Int)

(assert (=> d!1594491 (= lt!2042958 e!3093202)))

(declare-fun c!845338 () Bool)

(assert (=> d!1594491 (= c!845338 (is-Nil!57007 (list!18184 (_1!34094 lt!2042656))))))

(assert (=> d!1594491 (= (size!37835 (list!18184 (_1!34094 lt!2042656))) lt!2042958)))

(declare-fun b!4950814 () Bool)

(assert (=> b!4950814 (= e!3093202 0)))

(declare-fun b!4950815 () Bool)

(assert (=> b!4950815 (= e!3093202 (+ 1 (size!37835 (t!367687 (list!18184 (_1!34094 lt!2042656))))))))

(assert (= (and d!1594491 c!845338) b!4950814))

(assert (= (and d!1594491 (not c!845338)) b!4950815))

(declare-fun m!5975650 () Bool)

(assert (=> b!4950815 m!5975650))

(assert (=> d!1594271 d!1594491))

(assert (=> d!1594271 d!1594207))

(declare-fun d!1594493 () Bool)

(declare-fun lt!2042959 () Int)

(assert (=> d!1594493 (= lt!2042959 (size!37835 (list!18186 (c!845172 (_1!34094 lt!2042656)))))))

(assert (=> d!1594493 (= lt!2042959 (ite (is-Empty!15011 (c!845172 (_1!34094 lt!2042656))) 0 (ite (is-Leaf!24950 (c!845172 (_1!34094 lt!2042656))) (csize!30253 (c!845172 (_1!34094 lt!2042656))) (csize!30252 (c!845172 (_1!34094 lt!2042656))))))))

(assert (=> d!1594493 (= (size!37839 (c!845172 (_1!34094 lt!2042656))) lt!2042959)))

(declare-fun bs!1182256 () Bool)

(assert (= bs!1182256 d!1594493))

(assert (=> bs!1182256 m!5975020))

(assert (=> bs!1182256 m!5975020))

(declare-fun m!5975652 () Bool)

(assert (=> bs!1182256 m!5975652))

(assert (=> d!1594271 d!1594493))

(declare-fun b!4950816 () Bool)

(declare-fun e!3093204 () List!57131)

(assert (=> b!4950816 (= e!3093204 lt!2042653)))

(declare-fun d!1594495 () Bool)

(declare-fun e!3093203 () Bool)

(assert (=> d!1594495 e!3093203))

(declare-fun res!2112302 () Bool)

(assert (=> d!1594495 (=> (not res!2112302) (not e!3093203))))

(declare-fun lt!2042960 () List!57131)

(assert (=> d!1594495 (= res!2112302 (= (content!10160 lt!2042960) (set.union (content!10160 (t!367687 lt!2042654)) (content!10160 lt!2042653))))))

(assert (=> d!1594495 (= lt!2042960 e!3093204)))

(declare-fun c!845339 () Bool)

(assert (=> d!1594495 (= c!845339 (is-Nil!57007 (t!367687 lt!2042654)))))

(assert (=> d!1594495 (= (++!12481 (t!367687 lt!2042654) lt!2042653) lt!2042960)))

(declare-fun b!4950819 () Bool)

(assert (=> b!4950819 (= e!3093203 (or (not (= lt!2042653 Nil!57007)) (= lt!2042960 (t!367687 lt!2042654))))))

(declare-fun b!4950818 () Bool)

(declare-fun res!2112301 () Bool)

(assert (=> b!4950818 (=> (not res!2112301) (not e!3093203))))

(assert (=> b!4950818 (= res!2112301 (= (size!37835 lt!2042960) (+ (size!37835 (t!367687 lt!2042654)) (size!37835 lt!2042653))))))

(declare-fun b!4950817 () Bool)

(assert (=> b!4950817 (= e!3093204 (Cons!57007 (h!63455 (t!367687 lt!2042654)) (++!12481 (t!367687 (t!367687 lt!2042654)) lt!2042653)))))

(assert (= (and d!1594495 c!845339) b!4950816))

(assert (= (and d!1594495 (not c!845339)) b!4950817))

(assert (= (and d!1594495 res!2112302) b!4950818))

(assert (= (and b!4950818 res!2112301) b!4950819))

(declare-fun m!5975654 () Bool)

(assert (=> d!1594495 m!5975654))

(assert (=> d!1594495 m!5975522))

(assert (=> d!1594495 m!5975008))

(declare-fun m!5975656 () Bool)

(assert (=> b!4950818 m!5975656))

(assert (=> b!4950818 m!5975540))

(assert (=> b!4950818 m!5975014))

(declare-fun m!5975658 () Bool)

(assert (=> b!4950817 m!5975658))

(assert (=> b!4950311 d!1594495))

(declare-fun d!1594497 () Bool)

(assert (=> d!1594497 (= (inv!74300 (xs!18337 (c!845172 totalInput!685))) (<= (size!37835 (innerList!15099 (xs!18337 (c!845172 totalInput!685)))) 2147483647))))

(declare-fun bs!1182257 () Bool)

(assert (= bs!1182257 d!1594497))

(declare-fun m!5975660 () Bool)

(assert (=> bs!1182257 m!5975660))

(assert (=> b!4950482 d!1594497))

(declare-fun b!4950820 () Bool)

(declare-fun e!3093209 () List!57131)

(assert (=> b!4950820 (= e!3093209 Nil!57007)))

(declare-fun b!4950821 () Bool)

(declare-fun e!3093205 () Int)

(assert (=> b!4950821 (= e!3093205 0)))

(declare-fun b!4950822 () Bool)

(declare-fun e!3093208 () Int)

(assert (=> b!4950822 (= e!3093208 e!3093205)))

(declare-fun c!845343 () Bool)

(declare-fun call!345662 () Int)

(assert (=> b!4950822 (= c!845343 (>= (- testedPSize!70 1) call!345662))))

(declare-fun bm!345657 () Bool)

(assert (=> bm!345657 (= call!345662 (size!37835 (t!367687 lt!2042649)))))

(declare-fun b!4950823 () Bool)

(declare-fun e!3093206 () List!57131)

(assert (=> b!4950823 (= e!3093209 e!3093206)))

(declare-fun c!845340 () Bool)

(assert (=> b!4950823 (= c!845340 (<= (- testedPSize!70 1) 0))))

(declare-fun d!1594499 () Bool)

(declare-fun e!3093207 () Bool)

(assert (=> d!1594499 e!3093207))

(declare-fun res!2112303 () Bool)

(assert (=> d!1594499 (=> (not res!2112303) (not e!3093207))))

(declare-fun lt!2042961 () List!57131)

(assert (=> d!1594499 (= res!2112303 (set.subset (content!10160 lt!2042961) (content!10160 (t!367687 lt!2042649))))))

(assert (=> d!1594499 (= lt!2042961 e!3093209)))

(declare-fun c!845342 () Bool)

(assert (=> d!1594499 (= c!845342 (is-Nil!57007 (t!367687 lt!2042649)))))

(assert (=> d!1594499 (= (drop!2299 (t!367687 lt!2042649) (- testedPSize!70 1)) lt!2042961)))

(declare-fun b!4950824 () Bool)

(assert (=> b!4950824 (= e!3093206 (drop!2299 (t!367687 (t!367687 lt!2042649)) (- (- testedPSize!70 1) 1)))))

(declare-fun b!4950825 () Bool)

(assert (=> b!4950825 (= e!3093208 call!345662)))

(declare-fun b!4950826 () Bool)

(assert (=> b!4950826 (= e!3093207 (= (size!37835 lt!2042961) e!3093208))))

(declare-fun c!845341 () Bool)

(assert (=> b!4950826 (= c!845341 (<= (- testedPSize!70 1) 0))))

(declare-fun b!4950827 () Bool)

(assert (=> b!4950827 (= e!3093205 (- call!345662 (- testedPSize!70 1)))))

(declare-fun b!4950828 () Bool)

(assert (=> b!4950828 (= e!3093206 (t!367687 lt!2042649))))

(assert (= (and d!1594499 c!845342) b!4950820))

(assert (= (and d!1594499 (not c!845342)) b!4950823))

(assert (= (and b!4950823 c!845340) b!4950828))

(assert (= (and b!4950823 (not c!845340)) b!4950824))

(assert (= (and d!1594499 res!2112303) b!4950826))

(assert (= (and b!4950826 c!845341) b!4950825))

(assert (= (and b!4950826 (not c!845341)) b!4950822))

(assert (= (and b!4950822 c!845343) b!4950821))

(assert (= (and b!4950822 (not c!845343)) b!4950827))

(assert (= (or b!4950825 b!4950822 b!4950827) bm!345657))

(assert (=> bm!345657 m!5975174))

(declare-fun m!5975662 () Bool)

(assert (=> d!1594499 m!5975662))

(declare-fun m!5975664 () Bool)

(assert (=> d!1594499 m!5975664))

(declare-fun m!5975666 () Bool)

(assert (=> b!4950824 m!5975666))

(declare-fun m!5975668 () Bool)

(assert (=> b!4950826 m!5975668))

(assert (=> b!4950452 d!1594499))

(declare-fun b!4950829 () Bool)

(declare-fun e!3093210 () Bool)

(assert (=> b!4950829 (= e!3093210 (not (isEmpty!30678 (right!41925 (c!845172 (_1!34094 lt!2042747))))))))

(declare-fun d!1594501 () Bool)

(declare-fun res!2112306 () Bool)

(declare-fun e!3093211 () Bool)

(assert (=> d!1594501 (=> res!2112306 e!3093211)))

(assert (=> d!1594501 (= res!2112306 (not (is-Node!15011 (c!845172 (_1!34094 lt!2042747)))))))

(assert (=> d!1594501 (= (isBalanced!4161 (c!845172 (_1!34094 lt!2042747))) e!3093211)))

(declare-fun b!4950830 () Bool)

(declare-fun res!2112305 () Bool)

(assert (=> b!4950830 (=> (not res!2112305) (not e!3093210))))

(assert (=> b!4950830 (= res!2112305 (not (isEmpty!30678 (left!41595 (c!845172 (_1!34094 lt!2042747))))))))

(declare-fun b!4950831 () Bool)

(assert (=> b!4950831 (= e!3093211 e!3093210)))

(declare-fun res!2112307 () Bool)

(assert (=> b!4950831 (=> (not res!2112307) (not e!3093210))))

(assert (=> b!4950831 (= res!2112307 (<= (- 1) (- (height!2007 (left!41595 (c!845172 (_1!34094 lt!2042747)))) (height!2007 (right!41925 (c!845172 (_1!34094 lt!2042747)))))))))

(declare-fun b!4950832 () Bool)

(declare-fun res!2112308 () Bool)

(assert (=> b!4950832 (=> (not res!2112308) (not e!3093210))))

(assert (=> b!4950832 (= res!2112308 (isBalanced!4161 (left!41595 (c!845172 (_1!34094 lt!2042747)))))))

(declare-fun b!4950833 () Bool)

(declare-fun res!2112309 () Bool)

(assert (=> b!4950833 (=> (not res!2112309) (not e!3093210))))

(assert (=> b!4950833 (= res!2112309 (isBalanced!4161 (right!41925 (c!845172 (_1!34094 lt!2042747)))))))

(declare-fun b!4950834 () Bool)

(declare-fun res!2112304 () Bool)

(assert (=> b!4950834 (=> (not res!2112304) (not e!3093210))))

(assert (=> b!4950834 (= res!2112304 (<= (- (height!2007 (left!41595 (c!845172 (_1!34094 lt!2042747)))) (height!2007 (right!41925 (c!845172 (_1!34094 lt!2042747))))) 1))))

(assert (= (and d!1594501 (not res!2112306)) b!4950831))

(assert (= (and b!4950831 res!2112307) b!4950834))

(assert (= (and b!4950834 res!2112304) b!4950832))

(assert (= (and b!4950832 res!2112308) b!4950833))

(assert (= (and b!4950833 res!2112309) b!4950830))

(assert (= (and b!4950830 res!2112305) b!4950829))

(declare-fun m!5975670 () Bool)

(assert (=> b!4950830 m!5975670))

(declare-fun m!5975672 () Bool)

(assert (=> b!4950831 m!5975672))

(declare-fun m!5975674 () Bool)

(assert (=> b!4950831 m!5975674))

(declare-fun m!5975676 () Bool)

(assert (=> b!4950829 m!5975676))

(declare-fun m!5975678 () Bool)

(assert (=> b!4950832 m!5975678))

(assert (=> b!4950834 m!5975672))

(assert (=> b!4950834 m!5975674))

(declare-fun m!5975680 () Bool)

(assert (=> b!4950833 m!5975680))

(assert (=> d!1594209 d!1594501))

(declare-fun b!4950943 () Bool)

(declare-fun lt!2043006 () tuple2!61588)

(declare-fun call!345676 () tuple2!61588)

(assert (=> b!4950943 (= lt!2043006 call!345676)))

(declare-fun e!3093272 () tuple2!61588)

(declare-fun call!345678 () List!57131)

(assert (=> b!4950943 (= e!3093272 (tuple2!61589 call!345678 (_2!34097 lt!2043006)))))

(declare-fun b!4950944 () Bool)

(declare-fun lt!2043009 () Unit!147872)

(declare-fun lt!2043004 () Unit!147872)

(assert (=> b!4950944 (= lt!2043009 lt!2043004)))

(declare-fun lt!2043002 () List!57131)

(declare-fun call!345680 () Int)

(declare-fun slice!806 (List!57131 Int Int) List!57131)

(assert (=> b!4950944 (= (drop!2299 lt!2043002 testedPSize!70) (slice!806 lt!2043002 testedPSize!70 call!345680))))

(declare-fun dropLemma!45 (List!57131 Int) Unit!147872)

(assert (=> b!4950944 (= lt!2043004 (dropLemma!45 lt!2043002 testedPSize!70))))

(assert (=> b!4950944 (= lt!2043002 (list!18188 (xs!18337 (c!845172 totalInput!685))))))

(declare-fun lt!2043003 () tuple2!61588)

(declare-fun call!345677 () tuple2!61588)

(assert (=> b!4950944 (= lt!2043003 call!345677)))

(declare-fun e!3093265 () tuple2!61586)

(declare-fun slice!807 (IArray!30083 Int Int) IArray!30083)

(assert (=> b!4950944 (= e!3093265 (tuple2!61587 (Leaf!24950 (slice!807 (xs!18337 (c!845172 totalInput!685)) 0 testedPSize!70) testedPSize!70) (Leaf!24950 (slice!807 (xs!18337 (c!845172 totalInput!685)) testedPSize!70 (csize!30253 (c!845172 totalInput!685))) (- (csize!30253 (c!845172 totalInput!685)) testedPSize!70))))))

(declare-fun b!4950945 () Bool)

(declare-fun e!3093273 () tuple2!61588)

(assert (=> b!4950945 (= e!3093273 e!3093272)))

(declare-fun c!845392 () Bool)

(assert (=> b!4950945 (= c!845392 (< testedPSize!70 call!345680))))

(declare-fun b!4950946 () Bool)

(declare-fun e!3093276 () tuple2!61586)

(assert (=> b!4950946 (= e!3093276 (tuple2!61587 Empty!15011 (c!845172 totalInput!685)))))

(declare-fun b!4950947 () Bool)

(declare-fun lt!2043011 () tuple2!61586)

(declare-fun call!345675 () tuple2!61586)

(assert (=> b!4950947 (= lt!2043011 call!345675)))

(declare-fun e!3093267 () tuple2!61586)

(declare-fun call!345679 () Conc!15011)

(assert (=> b!4950947 (= e!3093267 (tuple2!61587 (_1!34096 lt!2043011) call!345679))))

(declare-fun bm!345670 () Bool)

(declare-fun c!845387 () Bool)

(assert (=> bm!345670 (= c!845387 c!845392)))

(assert (=> bm!345670 (= call!345676 call!345677)))

(declare-fun b!4950948 () Bool)

(assert (=> b!4950948 (= e!3093276 e!3093265)))

(declare-fun c!845384 () Bool)

(assert (=> b!4950948 (= c!845384 (= testedPSize!70 (csize!30253 (c!845172 totalInput!685))))))

(declare-fun d!1594503 () Bool)

(declare-fun e!3093266 () Bool)

(assert (=> d!1594503 e!3093266))

(declare-fun res!2112347 () Bool)

(assert (=> d!1594503 (=> (not res!2112347) (not e!3093266))))

(declare-fun lt!2043001 () tuple2!61586)

(assert (=> d!1594503 (= res!2112347 (isBalanced!4161 (_1!34096 lt!2043001)))))

(declare-fun e!3093275 () tuple2!61586)

(assert (=> d!1594503 (= lt!2043001 e!3093275)))

(declare-fun c!845386 () Bool)

(assert (=> d!1594503 (= c!845386 (is-Empty!15011 (c!845172 totalInput!685)))))

(assert (=> d!1594503 (isBalanced!4161 (c!845172 totalInput!685))))

(assert (=> d!1594503 (= (splitAt!417 (c!845172 totalInput!685) testedPSize!70) lt!2043001)))

(declare-fun b!4950949 () Bool)

(declare-fun e!3093268 () List!57131)

(assert (=> b!4950949 (= e!3093268 (list!18188 (xs!18337 (c!845172 totalInput!685))))))

(declare-fun b!4950950 () Bool)

(declare-fun c!845383 () Bool)

(assert (=> b!4950950 (= c!845383 (<= testedPSize!70 0))))

(declare-fun e!3093274 () tuple2!61586)

(assert (=> b!4950950 (= e!3093274 e!3093276)))

(declare-fun bm!345671 () Bool)

(declare-fun c!845390 () Bool)

(declare-fun c!845388 () Bool)

(assert (=> bm!345671 (= c!845390 c!845388)))

(declare-fun e!3093269 () Int)

(assert (=> bm!345671 (= call!345675 (splitAt!417 (ite c!845388 (left!41595 (c!845172 totalInput!685)) (right!41925 (c!845172 totalInput!685))) e!3093269))))

(declare-fun bm!345672 () Bool)

(declare-fun c!845385 () Bool)

(declare-fun c!845393 () Bool)

(assert (=> bm!345672 (= c!845385 c!845393)))

(declare-fun e!3093270 () Int)

(assert (=> bm!345672 (= call!345677 (splitAtIndex!155 e!3093268 (ite c!845393 testedPSize!70 e!3093270)))))

(declare-fun b!4950951 () Bool)

(assert (=> b!4950951 (= e!3093266 (= (tuple2!61589 (list!18186 (_1!34096 lt!2043001)) (list!18186 (_2!34096 lt!2043001))) (splitAtIndex!155 (list!18186 (c!845172 totalInput!685)) testedPSize!70)))))

(declare-fun b!4950952 () Bool)

(assert (=> b!4950952 (= e!3093269 testedPSize!70)))

(declare-fun b!4950953 () Bool)

(assert (=> b!4950953 (= e!3093269 (- testedPSize!70 (size!37839 (left!41595 (c!845172 totalInput!685)))))))

(declare-fun b!4950954 () Bool)

(declare-fun e!3093271 () tuple2!61586)

(assert (=> b!4950954 (= e!3093271 (tuple2!61587 (left!41595 (c!845172 totalInput!685)) (right!41925 (c!845172 totalInput!685))))))

(declare-fun b!4950955 () Bool)

(declare-fun lt!2043005 () List!57131)

(declare-fun lt!2043000 () List!57131)

(assert (=> b!4950955 (= e!3093268 (ite c!845392 lt!2043005 lt!2043000))))

(declare-fun b!4950956 () Bool)

(assert (=> b!4950956 (= e!3093270 testedPSize!70)))

(declare-fun b!4950957 () Bool)

(declare-fun lt!2042999 () tuple2!61588)

(assert (=> b!4950957 (= lt!2042999 call!345676)))

(assert (=> b!4950957 (= e!3093272 (tuple2!61589 (_1!34097 lt!2042999) call!345678))))

(declare-fun bm!345673 () Bool)

(assert (=> bm!345673 (= call!345680 (size!37835 (ite c!845393 lt!2043002 lt!2043005)))))

(declare-fun b!4950958 () Bool)

(declare-fun lt!2043008 () tuple2!61586)

(assert (=> b!4950958 (= lt!2043008 call!345675)))

(assert (=> b!4950958 (= e!3093267 (tuple2!61587 call!345679 (_2!34096 lt!2043008)))))

(declare-fun b!4950959 () Bool)

(assert (=> b!4950959 (= e!3093275 (tuple2!61587 (c!845172 totalInput!685) (c!845172 totalInput!685)))))

(declare-fun b!4950960 () Bool)

(declare-fun res!2112346 () Bool)

(assert (=> b!4950960 (=> (not res!2112346) (not e!3093266))))

(assert (=> b!4950960 (= res!2112346 (isBalanced!4161 (_2!34096 lt!2043001)))))

(declare-fun b!4950961 () Bool)

(assert (=> b!4950961 (= e!3093275 e!3093274)))

(assert (=> b!4950961 (= c!845393 (is-Leaf!24950 (c!845172 totalInput!685)))))

(declare-fun bm!345674 () Bool)

(declare-fun ++!12483 (Conc!15011 Conc!15011) Conc!15011)

(assert (=> bm!345674 (= call!345679 (++!12483 (ite c!845388 (_2!34096 lt!2043011) (left!41595 (c!845172 totalInput!685))) (ite c!845388 (right!41925 (c!845172 totalInput!685)) (_1!34096 lt!2043008))))))

(declare-fun bm!345675 () Bool)

(assert (=> bm!345675 (= call!345678 (++!12481 (ite c!845392 (_2!34097 lt!2042999) lt!2043005) (ite c!845392 lt!2043000 (_1!34097 lt!2043006))))))

(declare-fun b!4950962 () Bool)

(assert (=> b!4950962 (= e!3093270 (- testedPSize!70 call!345680))))

(declare-fun b!4950963 () Bool)

(assert (=> b!4950963 (= e!3093273 (tuple2!61589 lt!2043005 lt!2043000))))

(declare-fun b!4950964 () Bool)

(declare-fun c!845391 () Bool)

(assert (=> b!4950964 (= c!845391 (= (size!37839 (left!41595 (c!845172 totalInput!685))) testedPSize!70))))

(declare-fun lt!2043010 () Unit!147872)

(declare-fun lt!2043007 () Unit!147872)

(assert (=> b!4950964 (= lt!2043010 lt!2043007)))

(assert (=> b!4950964 (= (splitAtIndex!155 (++!12481 lt!2043005 lt!2043000) testedPSize!70) e!3093273)))

(declare-fun c!845389 () Bool)

(assert (=> b!4950964 (= c!845389 (= call!345680 testedPSize!70))))

(declare-fun splitAtLemma!45 (List!57131 List!57131 Int) Unit!147872)

(assert (=> b!4950964 (= lt!2043007 (splitAtLemma!45 lt!2043005 lt!2043000 testedPSize!70))))

(assert (=> b!4950964 (= lt!2043000 (list!18186 (right!41925 (c!845172 totalInput!685))))))

(assert (=> b!4950964 (= lt!2043005 (list!18186 (left!41595 (c!845172 totalInput!685))))))

(assert (=> b!4950964 (= e!3093274 e!3093271)))

(declare-fun b!4950965 () Bool)

(assert (=> b!4950965 (= e!3093271 e!3093267)))

(assert (=> b!4950965 (= c!845388 (< testedPSize!70 (size!37839 (left!41595 (c!845172 totalInput!685)))))))

(declare-fun b!4950966 () Bool)

(assert (=> b!4950966 (= e!3093265 (tuple2!61587 (c!845172 totalInput!685) Empty!15011))))

(assert (= (and d!1594503 c!845386) b!4950959))

(assert (= (and d!1594503 (not c!845386)) b!4950961))

(assert (= (and b!4950961 c!845393) b!4950950))

(assert (= (and b!4950961 (not c!845393)) b!4950964))

(assert (= (and b!4950950 c!845383) b!4950946))

(assert (= (and b!4950950 (not c!845383)) b!4950948))

(assert (= (and b!4950948 c!845384) b!4950966))

(assert (= (and b!4950948 (not c!845384)) b!4950944))

(assert (= (and b!4950964 c!845389) b!4950963))

(assert (= (and b!4950964 (not c!845389)) b!4950945))

(assert (= (and b!4950945 c!845392) b!4950957))

(assert (= (and b!4950945 (not c!845392)) b!4950943))

(assert (= (or b!4950957 b!4950943) bm!345675))

(assert (= (or b!4950957 b!4950943) bm!345670))

(assert (= (and bm!345670 c!845387) b!4950956))

(assert (= (and bm!345670 (not c!845387)) b!4950962))

(assert (= (and b!4950964 c!845391) b!4950954))

(assert (= (and b!4950964 (not c!845391)) b!4950965))

(assert (= (and b!4950965 c!845388) b!4950947))

(assert (= (and b!4950965 (not c!845388)) b!4950958))

(assert (= (or b!4950947 b!4950958) bm!345674))

(assert (= (or b!4950947 b!4950958) bm!345671))

(assert (= (and bm!345671 c!845390) b!4950952))

(assert (= (and bm!345671 (not c!845390)) b!4950953))

(assert (= (or b!4950944 b!4950945 b!4950962 b!4950964) bm!345673))

(assert (= (or b!4950944 bm!345670) bm!345672))

(assert (= (and bm!345672 c!845385) b!4950949))

(assert (= (and bm!345672 (not c!845385)) b!4950955))

(assert (= (and d!1594503 res!2112347) b!4950960))

(assert (= (and b!4950960 res!2112346) b!4950951))

(declare-fun m!5975770 () Bool)

(assert (=> bm!345674 m!5975770))

(assert (=> b!4950953 m!5975414))

(declare-fun m!5975772 () Bool)

(assert (=> b!4950960 m!5975772))

(declare-fun m!5975774 () Bool)

(assert (=> bm!345671 m!5975774))

(declare-fun m!5975776 () Bool)

(assert (=> bm!345673 m!5975776))

(declare-fun m!5975778 () Bool)

(assert (=> b!4950964 m!5975778))

(assert (=> b!4950964 m!5975488))

(declare-fun m!5975780 () Bool)

(assert (=> b!4950964 m!5975780))

(declare-fun m!5975782 () Bool)

(assert (=> b!4950964 m!5975782))

(assert (=> b!4950964 m!5975414))

(assert (=> b!4950964 m!5975780))

(assert (=> b!4950964 m!5975490))

(declare-fun m!5975784 () Bool)

(assert (=> bm!345672 m!5975784))

(declare-fun m!5975786 () Bool)

(assert (=> bm!345675 m!5975786))

(assert (=> b!4950949 m!5975424))

(assert (=> b!4950965 m!5975414))

(declare-fun m!5975790 () Bool)

(assert (=> b!4950944 m!5975790))

(declare-fun m!5975794 () Bool)

(assert (=> b!4950944 m!5975794))

(declare-fun m!5975796 () Bool)

(assert (=> b!4950944 m!5975796))

(assert (=> b!4950944 m!5975424))

(declare-fun m!5975800 () Bool)

(assert (=> b!4950944 m!5975800))

(declare-fun m!5975804 () Bool)

(assert (=> b!4950944 m!5975804))

(declare-fun m!5975806 () Bool)

(assert (=> b!4950951 m!5975806))

(declare-fun m!5975808 () Bool)

(assert (=> b!4950951 m!5975808))

(assert (=> b!4950951 m!5975156))

(assert (=> b!4950951 m!5975156))

(declare-fun m!5975810 () Bool)

(assert (=> b!4950951 m!5975810))

(declare-fun m!5975812 () Bool)

(assert (=> d!1594503 m!5975812))

(assert (=> d!1594503 m!5975036))

(assert (=> d!1594209 d!1594503))

(assert (=> d!1594209 d!1594487))

(declare-fun b!4950969 () Bool)

(declare-fun e!3093279 () List!57131)

(assert (=> b!4950969 (= e!3093279 lt!2042646)))

(declare-fun d!1594547 () Bool)

(declare-fun e!3093278 () Bool)

(assert (=> d!1594547 e!3093278))

(declare-fun res!2112349 () Bool)

(assert (=> d!1594547 (=> (not res!2112349) (not e!3093278))))

(declare-fun lt!2043013 () List!57131)

(assert (=> d!1594547 (= res!2112349 (= (content!10160 lt!2043013) (set.union (content!10160 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007))) (content!10160 lt!2042646))))))

(assert (=> d!1594547 (= lt!2043013 e!3093279)))

(declare-fun c!845397 () Bool)

(assert (=> d!1594547 (= c!845397 (is-Nil!57007 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007))))))

(assert (=> d!1594547 (= (++!12481 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007)) lt!2042646) lt!2043013)))

(declare-fun b!4950972 () Bool)

(assert (=> b!4950972 (= e!3093278 (or (not (= lt!2042646 Nil!57007)) (= lt!2043013 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007)))))))

(declare-fun b!4950971 () Bool)

(declare-fun res!2112348 () Bool)

(assert (=> b!4950971 (=> (not res!2112348) (not e!3093278))))

(assert (=> b!4950971 (= res!2112348 (= (size!37835 lt!2043013) (+ (size!37835 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007))) (size!37835 lt!2042646))))))

(declare-fun b!4950970 () Bool)

(assert (=> b!4950970 (= e!3093279 (Cons!57007 (h!63455 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007))) (++!12481 (t!367687 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007))) lt!2042646)))))

(assert (= (and d!1594547 c!845397) b!4950969))

(assert (= (and d!1594547 (not c!845397)) b!4950970))

(assert (= (and d!1594547 res!2112349) b!4950971))

(assert (= (and b!4950971 res!2112348) b!4950972))

(declare-fun m!5975814 () Bool)

(assert (=> d!1594547 m!5975814))

(assert (=> d!1594547 m!5974876))

(declare-fun m!5975816 () Bool)

(assert (=> d!1594547 m!5975816))

(assert (=> d!1594547 m!5975138))

(declare-fun m!5975818 () Bool)

(assert (=> b!4950971 m!5975818))

(assert (=> b!4950971 m!5974876))

(declare-fun m!5975820 () Bool)

(assert (=> b!4950971 m!5975820))

(assert (=> b!4950971 m!5975142))

(declare-fun m!5975822 () Bool)

(assert (=> b!4950970 m!5975822))

(assert (=> d!1594245 d!1594547))

(assert (=> d!1594245 d!1594239))

(declare-fun d!1594549 () Bool)

(assert (=> d!1594549 (= (++!12481 (++!12481 testedP!110 (Cons!57007 lt!2042661 Nil!57007)) lt!2042646) lt!2042649)))

(assert (=> d!1594549 true))

(declare-fun _$68!843 () Unit!147872)

(assert (=> d!1594549 (= (choose!36566 testedP!110 lt!2042661 lt!2042646 lt!2042649) _$68!843)))

(declare-fun bs!1182280 () Bool)

(assert (= bs!1182280 d!1594549))

(assert (=> bs!1182280 m!5974876))

(assert (=> bs!1182280 m!5974876))

(assert (=> bs!1182280 m!5975128))

(assert (=> d!1594245 d!1594549))

(declare-fun b!4950977 () Bool)

(declare-fun e!3093283 () List!57131)

(assert (=> b!4950977 (= e!3093283 (Cons!57007 lt!2042661 lt!2042646))))

(declare-fun d!1594557 () Bool)

(declare-fun e!3093282 () Bool)

(assert (=> d!1594557 e!3093282))

(declare-fun res!2112351 () Bool)

(assert (=> d!1594557 (=> (not res!2112351) (not e!3093282))))

(declare-fun lt!2043019 () List!57131)

(assert (=> d!1594557 (= res!2112351 (= (content!10160 lt!2043019) (set.union (content!10160 testedP!110) (content!10160 (Cons!57007 lt!2042661 lt!2042646)))))))

(assert (=> d!1594557 (= lt!2043019 e!3093283)))

(declare-fun c!845400 () Bool)

(assert (=> d!1594557 (= c!845400 (is-Nil!57007 testedP!110))))

(assert (=> d!1594557 (= (++!12481 testedP!110 (Cons!57007 lt!2042661 lt!2042646)) lt!2043019)))

(declare-fun b!4950980 () Bool)

(assert (=> b!4950980 (= e!3093282 (or (not (= (Cons!57007 lt!2042661 lt!2042646) Nil!57007)) (= lt!2043019 testedP!110)))))

(declare-fun b!4950979 () Bool)

(declare-fun res!2112350 () Bool)

(assert (=> b!4950979 (=> (not res!2112350) (not e!3093282))))

(assert (=> b!4950979 (= res!2112350 (= (size!37835 lt!2043019) (+ (size!37835 testedP!110) (size!37835 (Cons!57007 lt!2042661 lt!2042646)))))))

(declare-fun b!4950978 () Bool)

(assert (=> b!4950978 (= e!3093283 (Cons!57007 (h!63455 testedP!110) (++!12481 (t!367687 testedP!110) (Cons!57007 lt!2042661 lt!2042646))))))

(assert (= (and d!1594557 c!845400) b!4950977))

(assert (= (and d!1594557 (not c!845400)) b!4950978))

(assert (= (and d!1594557 res!2112351) b!4950979))

(assert (= (and b!4950979 res!2112350) b!4950980))

(declare-fun m!5975832 () Bool)

(assert (=> d!1594557 m!5975832))

(assert (=> d!1594557 m!5975100))

(declare-fun m!5975834 () Bool)

(assert (=> d!1594557 m!5975834))

(declare-fun m!5975836 () Bool)

(assert (=> b!4950979 m!5975836))

(assert (=> b!4950979 m!5974864))

(declare-fun m!5975838 () Bool)

(assert (=> b!4950979 m!5975838))

(declare-fun m!5975840 () Bool)

(assert (=> b!4950978 m!5975840))

(assert (=> d!1594245 d!1594557))

(assert (=> d!1594253 d!1594217))

(assert (=> d!1594253 d!1594227))

(declare-fun d!1594559 () Bool)

(assert (=> d!1594559 (isPrefix!5098 (++!12481 testedP!110 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007)) lt!2042649)))

(assert (=> d!1594559 true))

(declare-fun _$65!1733 () Unit!147872)

(assert (=> d!1594559 (= (choose!36567 testedP!110 lt!2042649) _$65!1733)))

(declare-fun bs!1182282 () Bool)

(assert (= bs!1182282 d!1594559))

(assert (=> bs!1182282 m!5974904))

(assert (=> bs!1182282 m!5974904))

(assert (=> bs!1182282 m!5975152))

(assert (=> bs!1182282 m!5975148))

(assert (=> bs!1182282 m!5975148))

(assert (=> bs!1182282 m!5975150))

(assert (=> d!1594253 d!1594559))

(declare-fun b!4950989 () Bool)

(declare-fun e!3093289 () List!57131)

(assert (=> b!4950989 (= e!3093289 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007))))

(declare-fun d!1594563 () Bool)

(declare-fun e!3093288 () Bool)

(assert (=> d!1594563 e!3093288))

(declare-fun res!2112353 () Bool)

(assert (=> d!1594563 (=> (not res!2112353) (not e!3093288))))

(declare-fun lt!2043020 () List!57131)

(assert (=> d!1594563 (= res!2112353 (= (content!10160 lt!2043020) (set.union (content!10160 testedP!110) (content!10160 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007)))))))

(assert (=> d!1594563 (= lt!2043020 e!3093289)))

(declare-fun c!845405 () Bool)

(assert (=> d!1594563 (= c!845405 (is-Nil!57007 testedP!110))))

(assert (=> d!1594563 (= (++!12481 testedP!110 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007)) lt!2043020)))

(declare-fun b!4950992 () Bool)

(assert (=> b!4950992 (= e!3093288 (or (not (= (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007) Nil!57007)) (= lt!2043020 testedP!110)))))

(declare-fun b!4950991 () Bool)

(declare-fun res!2112352 () Bool)

(assert (=> b!4950991 (=> (not res!2112352) (not e!3093288))))

(assert (=> b!4950991 (= res!2112352 (= (size!37835 lt!2043020) (+ (size!37835 testedP!110) (size!37835 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007)))))))

(declare-fun b!4950990 () Bool)

(assert (=> b!4950990 (= e!3093289 (Cons!57007 (h!63455 testedP!110) (++!12481 (t!367687 testedP!110) (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007))))))

(assert (= (and d!1594563 c!845405) b!4950989))

(assert (= (and d!1594563 (not c!845405)) b!4950990))

(assert (= (and d!1594563 res!2112353) b!4950991))

(assert (= (and b!4950991 res!2112352) b!4950992))

(declare-fun m!5975852 () Bool)

(assert (=> d!1594563 m!5975852))

(assert (=> d!1594563 m!5975100))

(declare-fun m!5975854 () Bool)

(assert (=> d!1594563 m!5975854))

(declare-fun m!5975856 () Bool)

(assert (=> b!4950991 m!5975856))

(assert (=> b!4950991 m!5974864))

(declare-fun m!5975858 () Bool)

(assert (=> b!4950991 m!5975858))

(declare-fun m!5975860 () Bool)

(assert (=> b!4950990 m!5975860))

(assert (=> d!1594253 d!1594563))

(declare-fun d!1594571 () Bool)

(assert (=> d!1594571 (= (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) (h!63455 (getSuffix!3080 lt!2042649 testedP!110)))))

(assert (=> d!1594253 d!1594571))

(declare-fun b!4950996 () Bool)

(declare-fun res!2112355 () Bool)

(declare-fun e!3093293 () Bool)

(assert (=> b!4950996 (=> (not res!2112355) (not e!3093293))))

(assert (=> b!4950996 (= res!2112355 (= (head!10618 (++!12481 testedP!110 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007))) (head!10618 lt!2042649)))))

(declare-fun b!4950998 () Bool)

(declare-fun e!3093292 () Bool)

(assert (=> b!4950998 (= e!3093292 (>= (size!37835 lt!2042649) (size!37835 (++!12481 testedP!110 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007)))))))

(declare-fun b!4950997 () Bool)

(assert (=> b!4950997 (= e!3093293 (isPrefix!5098 (tail!9753 (++!12481 testedP!110 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007))) (tail!9753 lt!2042649)))))

(declare-fun b!4950995 () Bool)

(declare-fun e!3093291 () Bool)

(assert (=> b!4950995 (= e!3093291 e!3093293)))

(declare-fun res!2112356 () Bool)

(assert (=> b!4950995 (=> (not res!2112356) (not e!3093293))))

(assert (=> b!4950995 (= res!2112356 (not (is-Nil!57007 lt!2042649)))))

(declare-fun d!1594573 () Bool)

(assert (=> d!1594573 e!3093292))

(declare-fun res!2112354 () Bool)

(assert (=> d!1594573 (=> res!2112354 e!3093292)))

(declare-fun lt!2043021 () Bool)

(assert (=> d!1594573 (= res!2112354 (not lt!2043021))))

(assert (=> d!1594573 (= lt!2043021 e!3093291)))

(declare-fun res!2112357 () Bool)

(assert (=> d!1594573 (=> res!2112357 e!3093291)))

(assert (=> d!1594573 (= res!2112357 (is-Nil!57007 (++!12481 testedP!110 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007))))))

(assert (=> d!1594573 (= (isPrefix!5098 (++!12481 testedP!110 (Cons!57007 (head!10618 (getSuffix!3080 lt!2042649 testedP!110)) Nil!57007)) lt!2042649) lt!2043021)))

(assert (= (and d!1594573 (not res!2112357)) b!4950995))

(assert (= (and b!4950995 res!2112356) b!4950996))

(assert (= (and b!4950996 res!2112355) b!4950997))

(assert (= (and d!1594573 (not res!2112354)) b!4950998))

(assert (=> b!4950996 m!5975148))

(declare-fun m!5975862 () Bool)

(assert (=> b!4950996 m!5975862))

(assert (=> b!4950996 m!5975048))

(assert (=> b!4950998 m!5974896))

(assert (=> b!4950998 m!5975148))

(declare-fun m!5975864 () Bool)

(assert (=> b!4950998 m!5975864))

(assert (=> b!4950997 m!5975148))

(declare-fun m!5975866 () Bool)

(assert (=> b!4950997 m!5975866))

(assert (=> b!4950997 m!5975052))

(assert (=> b!4950997 m!5975866))

(assert (=> b!4950997 m!5975052))

(declare-fun m!5975868 () Bool)

(assert (=> b!4950997 m!5975868))

(assert (=> d!1594253 d!1594573))

(declare-fun b!4951003 () Bool)

(declare-fun e!3093299 () List!57131)

(assert (=> b!4951003 (= e!3093299 (Cons!57007 (head!10618 lt!2042651) Nil!57007))))

(declare-fun d!1594575 () Bool)

(declare-fun e!3093298 () Bool)

(assert (=> d!1594575 e!3093298))

(declare-fun res!2112363 () Bool)

(assert (=> d!1594575 (=> (not res!2112363) (not e!3093298))))

(declare-fun lt!2043022 () List!57131)

(assert (=> d!1594575 (= res!2112363 (= (content!10160 lt!2043022) (set.union (content!10160 (t!367687 testedP!110)) (content!10160 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))))

(assert (=> d!1594575 (= lt!2043022 e!3093299)))

(declare-fun c!845407 () Bool)

(assert (=> d!1594575 (= c!845407 (is-Nil!57007 (t!367687 testedP!110)))))

(assert (=> d!1594575 (= (++!12481 (t!367687 testedP!110) (Cons!57007 (head!10618 lt!2042651) Nil!57007)) lt!2043022)))

(declare-fun b!4951006 () Bool)

(assert (=> b!4951006 (= e!3093298 (or (not (= (Cons!57007 (head!10618 lt!2042651) Nil!57007) Nil!57007)) (= lt!2043022 (t!367687 testedP!110))))))

(declare-fun b!4951005 () Bool)

(declare-fun res!2112362 () Bool)

(assert (=> b!4951005 (=> (not res!2112362) (not e!3093298))))

(assert (=> b!4951005 (= res!2112362 (= (size!37835 lt!2043022) (+ (size!37835 (t!367687 testedP!110)) (size!37835 (Cons!57007 (head!10618 lt!2042651) Nil!57007)))))))

(declare-fun b!4951004 () Bool)

(assert (=> b!4951004 (= e!3093299 (Cons!57007 (h!63455 (t!367687 testedP!110)) (++!12481 (t!367687 (t!367687 testedP!110)) (Cons!57007 (head!10618 lt!2042651) Nil!57007))))))

(assert (= (and d!1594575 c!845407) b!4951003))

(assert (= (and d!1594575 (not c!845407)) b!4951004))

(assert (= (and d!1594575 res!2112363) b!4951005))

(assert (= (and b!4951005 res!2112362) b!4951006))

(declare-fun m!5975870 () Bool)

(assert (=> d!1594575 m!5975870))

(assert (=> d!1594575 m!5975396))

(assert (=> d!1594575 m!5975102))

(declare-fun m!5975872 () Bool)

(assert (=> b!4951005 m!5975872))

(assert (=> b!4951005 m!5975244))

(assert (=> b!4951005 m!5975106))

(declare-fun m!5975874 () Bool)

(assert (=> b!4951004 m!5975874))

(assert (=> b!4950363 d!1594575))

(declare-fun d!1594577 () Bool)

(declare-fun c!845408 () Bool)

(assert (=> d!1594577 (= c!845408 (is-Nil!57007 lt!2042860))))

(declare-fun e!3093300 () (Set C!27234))

(assert (=> d!1594577 (= (content!10160 lt!2042860) e!3093300)))

(declare-fun b!4951007 () Bool)

(assert (=> b!4951007 (= e!3093300 (as set.empty (Set C!27234)))))

(declare-fun b!4951008 () Bool)

(assert (=> b!4951008 (= e!3093300 (set.union (set.insert (h!63455 lt!2042860) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042860))))))

(assert (= (and d!1594577 c!845408) b!4951007))

(assert (= (and d!1594577 (not c!845408)) b!4951008))

(declare-fun m!5975876 () Bool)

(assert (=> b!4951008 m!5975876))

(declare-fun m!5975878 () Bool)

(assert (=> b!4951008 m!5975878))

(assert (=> d!1594297 d!1594577))

(declare-fun d!1594579 () Bool)

(declare-fun c!845409 () Bool)

(assert (=> d!1594579 (= c!845409 (is-Nil!57007 lt!2042649))))

(declare-fun e!3093301 () (Set C!27234))

(assert (=> d!1594579 (= (content!10160 lt!2042649) e!3093301)))

(declare-fun b!4951009 () Bool)

(assert (=> b!4951009 (= e!3093301 (as set.empty (Set C!27234)))))

(declare-fun b!4951010 () Bool)

(assert (=> b!4951010 (= e!3093301 (set.union (set.insert (h!63455 lt!2042649) (as set.empty (Set C!27234))) (content!10160 (t!367687 lt!2042649))))))

(assert (= (and d!1594579 c!845409) b!4951009))

(assert (= (and d!1594579 (not c!845409)) b!4951010))

(declare-fun m!5975880 () Bool)

(assert (=> b!4951010 m!5975880))

(assert (=> b!4951010 m!5975664))

(assert (=> d!1594297 d!1594579))

(declare-fun b!4951015 () Bool)

(declare-fun e!3093305 () List!57131)

(assert (=> b!4951015 (= e!3093305 (list!18188 (xs!18337 (c!845172 (_2!34094 lt!2042656)))))))

(declare-fun b!4951013 () Bool)

(declare-fun e!3093304 () List!57131)

(assert (=> b!4951013 (= e!3093304 Nil!57007)))

(declare-fun b!4951016 () Bool)

(assert (=> b!4951016 (= e!3093305 (++!12481 (list!18186 (left!41595 (c!845172 (_2!34094 lt!2042656)))) (list!18186 (right!41925 (c!845172 (_2!34094 lt!2042656))))))))

(declare-fun b!4951014 () Bool)

(assert (=> b!4951014 (= e!3093304 e!3093305)))

(declare-fun c!845411 () Bool)

(assert (=> b!4951014 (= c!845411 (is-Leaf!24950 (c!845172 (_2!34094 lt!2042656))))))

(declare-fun d!1594581 () Bool)

(declare-fun c!845410 () Bool)

(assert (=> d!1594581 (= c!845410 (is-Empty!15011 (c!845172 (_2!34094 lt!2042656))))))

(assert (=> d!1594581 (= (list!18186 (c!845172 (_2!34094 lt!2042656))) e!3093304)))

(assert (= (and d!1594581 c!845410) b!4951013))

(assert (= (and d!1594581 (not c!845410)) b!4951014))

(assert (= (and b!4951014 c!845411) b!4951015))

(assert (= (and b!4951014 (not c!845411)) b!4951016))

(declare-fun m!5975886 () Bool)

(assert (=> b!4951015 m!5975886))

(declare-fun m!5975888 () Bool)

(assert (=> b!4951016 m!5975888))

(declare-fun m!5975890 () Bool)

(assert (=> b!4951016 m!5975890))

(assert (=> b!4951016 m!5975888))

(assert (=> b!4951016 m!5975890))

(declare-fun m!5975892 () Bool)

(assert (=> b!4951016 m!5975892))

(assert (=> d!1594205 d!1594581))

(declare-fun d!1594585 () Bool)

(declare-fun lt!2043027 () Bool)

(assert (=> d!1594585 (= lt!2043027 (exists!1347 (toList!8005 z!3568) lambda!246914))))

(declare-fun choose!36584 ((Set Context!6268) Int) Bool)

(assert (=> d!1594585 (= lt!2043027 (choose!36584 z!3568 lambda!246914))))

(assert (=> d!1594585 (= (exists!1348 z!3568 lambda!246914) lt!2043027)))

(declare-fun bs!1182283 () Bool)

(assert (= bs!1182283 d!1594585))

(assert (=> bs!1182283 m!5975068))

(assert (=> bs!1182283 m!5975068))

(declare-fun m!5975906 () Bool)

(assert (=> bs!1182283 m!5975906))

(declare-fun m!5975908 () Bool)

(assert (=> bs!1182283 m!5975908))

(assert (=> d!1594249 d!1594585))

(declare-fun d!1594595 () Bool)

(assert (=> d!1594595 (= lt!2042649 testedP!110)))

(assert (=> d!1594595 true))

(declare-fun _$60!908 () Unit!147872)

(assert (=> d!1594595 (= (choose!36565 lt!2042649 testedP!110 lt!2042649) _$60!908)))

(assert (=> d!1594235 d!1594595))

(assert (=> d!1594235 d!1594233))

(declare-fun d!1594599 () Bool)

(declare-fun lt!2043029 () Int)

(assert (=> d!1594599 (>= lt!2043029 0)))

(declare-fun e!3093318 () Int)

(assert (=> d!1594599 (= lt!2043029 e!3093318)))

(declare-fun c!845419 () Bool)

(assert (=> d!1594599 (= c!845419 (is-Nil!57007 lt!2042860))))

(assert (=> d!1594599 (= (size!37835 lt!2042860) lt!2043029)))

(declare-fun b!4951037 () Bool)

(assert (=> b!4951037 (= e!3093318 0)))

(declare-fun b!4951038 () Bool)

(assert (=> b!4951038 (= e!3093318 (+ 1 (size!37835 (t!367687 lt!2042860))))))

(assert (= (and d!1594599 c!845419) b!4951037))

(assert (= (and d!1594599 (not c!845419)) b!4951038))

(declare-fun m!5975918 () Bool)

(assert (=> b!4951038 m!5975918))

(assert (=> b!4950454 d!1594599))

(declare-fun d!1594601 () Bool)

(declare-fun res!2112376 () Bool)

(declare-fun e!3093328 () Bool)

(assert (=> d!1594601 (=> res!2112376 e!3093328)))

(assert (=> d!1594601 (= res!2112376 (is-Nil!57008 (exprs!3634 setElem!28113)))))

(assert (=> d!1594601 (= (forall!13284 (exprs!3634 setElem!28113) lambda!246935) e!3093328)))

(declare-fun b!4951053 () Bool)

(declare-fun e!3093329 () Bool)

(assert (=> b!4951053 (= e!3093328 e!3093329)))

(declare-fun res!2112377 () Bool)

(assert (=> b!4951053 (=> (not res!2112377) (not e!3093329))))

(declare-fun dynLambda!23047 (Int Regex!13492) Bool)

(assert (=> b!4951053 (= res!2112377 (dynLambda!23047 lambda!246935 (h!63456 (exprs!3634 setElem!28113))))))

(declare-fun b!4951054 () Bool)

(assert (=> b!4951054 (= e!3093329 (forall!13284 (t!367688 (exprs!3634 setElem!28113)) lambda!246935))))

(assert (= (and d!1594601 (not res!2112376)) b!4951053))

(assert (= (and b!4951053 res!2112377) b!4951054))

(declare-fun b_lambda!196439 () Bool)

(assert (=> (not b_lambda!196439) (not b!4951053)))

(declare-fun m!5975942 () Bool)

(assert (=> b!4951053 m!5975942))

(declare-fun m!5975944 () Bool)

(assert (=> b!4951054 m!5975944))

(assert (=> d!1594301 d!1594601))

(declare-fun d!1594621 () Bool)

(declare-fun e!3093333 () Bool)

(assert (=> d!1594621 e!3093333))

(declare-fun res!2112380 () Bool)

(assert (=> d!1594621 (=> (not res!2112380) (not e!3093333))))

(declare-fun lt!2043038 () List!57135)

(declare-fun noDuplicate!1005 (List!57135) Bool)

(assert (=> d!1594621 (= res!2112380 (noDuplicate!1005 lt!2043038))))

(declare-fun choose!36585 ((Set Context!6268)) List!57135)

(assert (=> d!1594621 (= lt!2043038 (choose!36585 z!3568))))

(assert (=> d!1594621 (= (toList!8005 z!3568) lt!2043038)))

(declare-fun b!4951059 () Bool)

(declare-fun content!10162 (List!57135) (Set Context!6268))

(assert (=> b!4951059 (= e!3093333 (= (content!10162 lt!2043038) z!3568))))

(assert (= (and d!1594621 res!2112380) b!4951059))

(declare-fun m!5975948 () Bool)

(assert (=> d!1594621 m!5975948))

(declare-fun m!5975950 () Bool)

(assert (=> d!1594621 m!5975950))

(declare-fun m!5975952 () Bool)

(assert (=> b!4951059 m!5975952))

(assert (=> bm!345641 d!1594621))

(declare-fun b!4951061 () Bool)

(declare-fun res!2112382 () Bool)

(declare-fun e!3093336 () Bool)

(assert (=> b!4951061 (=> (not res!2112382) (not e!3093336))))

(assert (=> b!4951061 (= res!2112382 (= (head!10618 (tail!9753 testedP!110)) (head!10618 (tail!9753 lt!2042649))))))

(declare-fun b!4951063 () Bool)

(declare-fun e!3093335 () Bool)

(assert (=> b!4951063 (= e!3093335 (>= (size!37835 (tail!9753 lt!2042649)) (size!37835 (tail!9753 testedP!110))))))

(declare-fun b!4951062 () Bool)

(assert (=> b!4951062 (= e!3093336 (isPrefix!5098 (tail!9753 (tail!9753 testedP!110)) (tail!9753 (tail!9753 lt!2042649))))))

(declare-fun b!4951060 () Bool)

(declare-fun e!3093334 () Bool)

(assert (=> b!4951060 (= e!3093334 e!3093336)))

(declare-fun res!2112383 () Bool)

(assert (=> b!4951060 (=> (not res!2112383) (not e!3093336))))

(assert (=> b!4951060 (= res!2112383 (not (is-Nil!57007 (tail!9753 lt!2042649))))))

(declare-fun d!1594625 () Bool)

(assert (=> d!1594625 e!3093335))

(declare-fun res!2112381 () Bool)

(assert (=> d!1594625 (=> res!2112381 e!3093335)))

(declare-fun lt!2043039 () Bool)

(assert (=> d!1594625 (= res!2112381 (not lt!2043039))))

(assert (=> d!1594625 (= lt!2043039 e!3093334)))

(declare-fun res!2112384 () Bool)

(assert (=> d!1594625 (=> res!2112384 e!3093334)))

(assert (=> d!1594625 (= res!2112384 (is-Nil!57007 (tail!9753 testedP!110)))))

(assert (=> d!1594625 (= (isPrefix!5098 (tail!9753 testedP!110) (tail!9753 lt!2042649)) lt!2043039)))

(assert (= (and d!1594625 (not res!2112384)) b!4951060))

(assert (= (and b!4951060 res!2112383) b!4951061))

(assert (= (and b!4951061 res!2112382) b!4951062))

(assert (= (and d!1594625 (not res!2112381)) b!4951063))

(assert (=> b!4951061 m!5975050))

(assert (=> b!4951061 m!5975560))

(assert (=> b!4951061 m!5975052))

(assert (=> b!4951061 m!5975408))

(assert (=> b!4951063 m!5975052))

(assert (=> b!4951063 m!5975406))

(assert (=> b!4951063 m!5975050))

(assert (=> b!4951063 m!5975566))

(assert (=> b!4951062 m!5975050))

(assert (=> b!4951062 m!5975568))

(assert (=> b!4951062 m!5975052))

(assert (=> b!4951062 m!5975410))

(assert (=> b!4951062 m!5975568))

(assert (=> b!4951062 m!5975410))

(declare-fun m!5975954 () Bool)

(assert (=> b!4951062 m!5975954))

(assert (=> b!4950340 d!1594625))

(assert (=> b!4950340 d!1594449))

(assert (=> b!4950340 d!1594369))

(declare-fun d!1594627 () Bool)

(declare-fun lt!2043040 () Int)

(assert (=> d!1594627 (>= lt!2043040 0)))

(declare-fun e!3093337 () Int)

(assert (=> d!1594627 (= lt!2043040 e!3093337)))

(declare-fun c!845426 () Bool)

(assert (=> d!1594627 (= c!845426 (is-Nil!57007 lt!2042797))))

(assert (=> d!1594627 (= (size!37835 lt!2042797) lt!2043040)))

(declare-fun b!4951064 () Bool)

(assert (=> b!4951064 (= e!3093337 0)))

(declare-fun b!4951065 () Bool)

(assert (=> b!4951065 (= e!3093337 (+ 1 (size!37835 (t!367687 lt!2042797))))))

(assert (= (and d!1594627 c!845426) b!4951064))

(assert (= (and d!1594627 (not c!845426)) b!4951065))

(declare-fun m!5975956 () Bool)

(assert (=> b!4951065 m!5975956))

(assert (=> b!4950368 d!1594627))

(assert (=> b!4950368 d!1594299))

(declare-fun d!1594629 () Bool)

(declare-fun lt!2043041 () Int)

(assert (=> d!1594629 (>= lt!2043041 0)))

(declare-fun e!3093338 () Int)

(assert (=> d!1594629 (= lt!2043041 e!3093338)))

(declare-fun c!845427 () Bool)

(assert (=> d!1594629 (= c!845427 (is-Nil!57007 (Cons!57007 lt!2042661 Nil!57007)))))

(assert (=> d!1594629 (= (size!37835 (Cons!57007 lt!2042661 Nil!57007)) lt!2043041)))

(declare-fun b!4951066 () Bool)

(assert (=> b!4951066 (= e!3093338 0)))

(declare-fun b!4951067 () Bool)

(assert (=> b!4951067 (= e!3093338 (+ 1 (size!37835 (t!367687 (Cons!57007 lt!2042661 Nil!57007)))))))

(assert (= (and d!1594629 c!845427) b!4951066))

(assert (= (and d!1594629 (not c!845427)) b!4951067))

(declare-fun m!5975958 () Bool)

(assert (=> b!4951067 m!5975958))

(assert (=> b!4950368 d!1594629))

(declare-fun bs!1182286 () Bool)

(declare-fun d!1594631 () Bool)

(assert (= bs!1182286 (and d!1594631 d!1594469)))

(declare-fun lambda!246969 () Int)

(assert (=> bs!1182286 (not (= lambda!246969 lambda!246952))))

(declare-fun bs!1182287 () Bool)

(assert (= bs!1182287 (and d!1594631 d!1594437)))

(assert (=> bs!1182287 (= (= lambda!246909 (ite c!845201 lambda!246910 lambda!246911)) (= lambda!246969 lambda!246945))))

(declare-fun bs!1182288 () Bool)

(assert (= bs!1182288 (and d!1594631 d!1594223)))

(assert (=> bs!1182288 (not (= lambda!246969 lambda!246909))))

(declare-fun bs!1182289 () Bool)

(assert (= bs!1182289 (and d!1594631 d!1594423)))

(assert (=> bs!1182289 (= lambda!246969 lambda!246941)))

(declare-fun bs!1182290 () Bool)

(assert (= bs!1182290 (and d!1594631 d!1594249)))

(assert (=> bs!1182290 (not (= lambda!246969 lambda!246914))))

(declare-fun bs!1182291 () Bool)

(assert (= bs!1182291 (and d!1594631 b!4950351)))

(assert (=> bs!1182291 (not (= lambda!246969 lambda!246911))))

(declare-fun bs!1182292 () Bool)

(assert (= bs!1182292 (and d!1594631 b!4950350)))

(assert (=> bs!1182292 (not (= lambda!246969 lambda!246910))))

(assert (=> d!1594631 true))

(assert (=> d!1594631 (< (dynLambda!23044 order!26011 lambda!246909) (dynLambda!23044 order!26011 lambda!246969))))

(assert (=> d!1594631 (not (exists!1347 lt!2042774 lambda!246969))))

(declare-fun lt!2043048 () Unit!147872)

(declare-fun choose!36586 (List!57135 Int) Unit!147872)

(assert (=> d!1594631 (= lt!2043048 (choose!36586 lt!2042774 lambda!246909))))

(assert (=> d!1594631 (forall!13285 lt!2042774 lambda!246909)))

(assert (=> d!1594631 (= (lemmaForallThenNotExists!226 lt!2042774 lambda!246909) lt!2043048)))

(declare-fun bs!1182293 () Bool)

(assert (= bs!1182293 d!1594631))

(declare-fun m!5975960 () Bool)

(assert (=> bs!1182293 m!5975960))

(declare-fun m!5975962 () Bool)

(assert (=> bs!1182293 m!5975962))

(declare-fun m!5975964 () Bool)

(assert (=> bs!1182293 m!5975964))

(assert (=> b!4950351 d!1594631))

(declare-fun d!1594633 () Bool)

(declare-fun lt!2043051 () Int)

(assert (=> d!1594633 (>= lt!2043051 0)))

(declare-fun e!3093350 () Int)

(assert (=> d!1594633 (= lt!2043051 e!3093350)))

(declare-fun c!845434 () Bool)

(assert (=> d!1594633 (= c!845434 (is-Nil!57007 lt!2042802))))

(assert (=> d!1594633 (= (size!37835 lt!2042802) lt!2043051)))

(declare-fun b!4951086 () Bool)

(assert (=> b!4951086 (= e!3093350 0)))

(declare-fun b!4951087 () Bool)

(assert (=> b!4951087 (= e!3093350 (+ 1 (size!37835 (t!367687 lt!2042802))))))

(assert (= (and d!1594633 c!845434) b!4951086))

(assert (= (and d!1594633 (not c!845434)) b!4951087))

(declare-fun m!5975966 () Bool)

(assert (=> b!4951087 m!5975966))

(assert (=> b!4950376 d!1594633))

(assert (=> b!4950376 d!1594263))

(declare-fun d!1594635 () Bool)

(declare-fun lt!2043052 () Int)

(assert (=> d!1594635 (>= lt!2043052 0)))

(declare-fun e!3093351 () Int)

(assert (=> d!1594635 (= lt!2043052 e!3093351)))

(declare-fun c!845435 () Bool)

(assert (=> d!1594635 (= c!845435 (is-Nil!57007 lt!2042646))))

(assert (=> d!1594635 (= (size!37835 lt!2042646) lt!2043052)))

(declare-fun b!4951088 () Bool)

(assert (=> b!4951088 (= e!3093351 0)))

(declare-fun b!4951089 () Bool)

(assert (=> b!4951089 (= e!3093351 (+ 1 (size!37835 (t!367687 lt!2042646))))))

(assert (= (and d!1594635 c!845435) b!4951088))

(assert (= (and d!1594635 (not c!845435)) b!4951089))

(declare-fun m!5975970 () Bool)

(assert (=> b!4951089 m!5975970))

(assert (=> b!4950376 d!1594635))

(declare-fun d!1594637 () Bool)

(assert (=> d!1594637 (= (head!10618 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))) (h!63455 (++!12481 testedP!110 (Cons!57007 (head!10618 lt!2042651) Nil!57007))))))

(assert (=> b!4950371 d!1594637))

(assert (=> b!4950371 d!1594441))

(assert (=> b!4950343 d!1594439))

(declare-fun d!1594641 () Bool)

(assert (=> d!1594641 (= (head!10618 lt!2042642) (h!63455 lt!2042642))))

(assert (=> b!4950343 d!1594641))

(declare-fun d!1594643 () Bool)

(declare-fun lt!2043053 () Int)

(assert (=> d!1594643 (>= lt!2043053 0)))

(declare-fun e!3093352 () Int)

(assert (=> d!1594643 (= lt!2043053 e!3093352)))

(declare-fun c!845436 () Bool)

(assert (=> d!1594643 (= c!845436 (is-Nil!57007 (t!367687 lt!2042649)))))

(assert (=> d!1594643 (= (size!37835 (t!367687 lt!2042649)) lt!2043053)))

(declare-fun b!4951090 () Bool)

(assert (=> b!4951090 (= e!3093352 0)))

(declare-fun b!4951091 () Bool)

(assert (=> b!4951091 (= e!3093352 (+ 1 (size!37835 (t!367687 (t!367687 lt!2042649)))))))

(assert (= (and d!1594643 c!845436) b!4951090))

(assert (= (and d!1594643 (not c!845436)) b!4951091))

(declare-fun m!5975978 () Bool)

(assert (=> b!4951091 m!5975978))

(assert (=> b!4950400 d!1594643))

(declare-fun e!3093356 () Bool)

(assert (=> b!4950493 (= tp!1388002 e!3093356)))

(declare-fun b!4951105 () Bool)

(declare-fun tp!1388047 () Bool)

(declare-fun tp!1388046 () Bool)

(assert (=> b!4951105 (= e!3093356 (and tp!1388047 tp!1388046))))

(declare-fun b!4951106 () Bool)

(declare-fun tp!1388050 () Bool)

(assert (=> b!4951106 (= e!3093356 tp!1388050)))

(declare-fun b!4951104 () Bool)

(assert (=> b!4951104 (= e!3093356 tp_is_empty!36181)))

(declare-fun b!4951107 () Bool)

(declare-fun tp!1388048 () Bool)

(declare-fun tp!1388049 () Bool)

(assert (=> b!4951107 (= e!3093356 (and tp!1388048 tp!1388049))))

(assert (= (and b!4950493 (is-ElementMatch!13492 (h!63456 (exprs!3634 setElem!28113)))) b!4951104))

(assert (= (and b!4950493 (is-Concat!22065 (h!63456 (exprs!3634 setElem!28113)))) b!4951105))

(assert (= (and b!4950493 (is-Star!13492 (h!63456 (exprs!3634 setElem!28113)))) b!4951106))

(assert (= (and b!4950493 (is-Union!13492 (h!63456 (exprs!3634 setElem!28113)))) b!4951107))

(declare-fun b!4951108 () Bool)

(declare-fun e!3093357 () Bool)

(declare-fun tp!1388051 () Bool)

(declare-fun tp!1388052 () Bool)

(assert (=> b!4951108 (= e!3093357 (and tp!1388051 tp!1388052))))

(assert (=> b!4950493 (= tp!1388003 e!3093357)))

(assert (= (and b!4950493 (is-Cons!57008 (t!367688 (exprs!3634 setElem!28113)))) b!4951108))

(declare-fun e!3093359 () Bool)

(declare-fun tp!1388053 () Bool)

(declare-fun b!4951109 () Bool)

(declare-fun tp!1388055 () Bool)

(assert (=> b!4951109 (= e!3093359 (and (inv!74294 (left!41595 (left!41595 (c!845172 totalInput!685)))) tp!1388055 (inv!74294 (right!41925 (left!41595 (c!845172 totalInput!685)))) tp!1388053))))

(declare-fun b!4951111 () Bool)

(declare-fun e!3093358 () Bool)

(declare-fun tp!1388054 () Bool)

(assert (=> b!4951111 (= e!3093358 tp!1388054)))

(declare-fun b!4951110 () Bool)

(assert (=> b!4951110 (= e!3093359 (and (inv!74300 (xs!18337 (left!41595 (c!845172 totalInput!685)))) e!3093358))))

(assert (=> b!4950481 (= tp!1387994 (and (inv!74294 (left!41595 (c!845172 totalInput!685))) e!3093359))))

(assert (= (and b!4950481 (is-Node!15011 (left!41595 (c!845172 totalInput!685)))) b!4951109))

(assert (= b!4951110 b!4951111))

(assert (= (and b!4950481 (is-Leaf!24950 (left!41595 (c!845172 totalInput!685)))) b!4951110))

(declare-fun m!5975982 () Bool)

(assert (=> b!4951109 m!5975982))

(declare-fun m!5975984 () Bool)

(assert (=> b!4951109 m!5975984))

(declare-fun m!5975986 () Bool)

(assert (=> b!4951110 m!5975986))

(assert (=> b!4950481 m!5975268))

(declare-fun tp!1388058 () Bool)

(declare-fun e!3093361 () Bool)

(declare-fun tp!1388056 () Bool)

(declare-fun b!4951112 () Bool)

(assert (=> b!4951112 (= e!3093361 (and (inv!74294 (left!41595 (right!41925 (c!845172 totalInput!685)))) tp!1388058 (inv!74294 (right!41925 (right!41925 (c!845172 totalInput!685)))) tp!1388056))))

(declare-fun b!4951114 () Bool)

(declare-fun e!3093360 () Bool)

(declare-fun tp!1388057 () Bool)

(assert (=> b!4951114 (= e!3093360 tp!1388057)))

(declare-fun b!4951113 () Bool)

(assert (=> b!4951113 (= e!3093361 (and (inv!74300 (xs!18337 (right!41925 (c!845172 totalInput!685)))) e!3093360))))

(assert (=> b!4950481 (= tp!1387992 (and (inv!74294 (right!41925 (c!845172 totalInput!685))) e!3093361))))

(assert (= (and b!4950481 (is-Node!15011 (right!41925 (c!845172 totalInput!685)))) b!4951112))

(assert (= b!4951113 b!4951114))

(assert (= (and b!4950481 (is-Leaf!24950 (right!41925 (c!845172 totalInput!685)))) b!4951113))

(declare-fun m!5975990 () Bool)

(assert (=> b!4951112 m!5975990))

(declare-fun m!5975992 () Bool)

(assert (=> b!4951112 m!5975992))

(declare-fun m!5975994 () Bool)

(assert (=> b!4951113 m!5975994))

(assert (=> b!4950481 m!5975272))

(declare-fun b!4951117 () Bool)

(declare-fun e!3093363 () Bool)

(declare-fun tp!1388059 () Bool)

(declare-fun tp!1388060 () Bool)

(assert (=> b!4951117 (= e!3093363 (and tp!1388059 tp!1388060))))

(assert (=> b!4950498 (= tp!1388008 e!3093363)))

(assert (= (and b!4950498 (is-Cons!57008 (exprs!3634 setElem!28119))) b!4951117))

(declare-fun b!4951118 () Bool)

(declare-fun e!3093364 () Bool)

(declare-fun tp!1388061 () Bool)

(assert (=> b!4951118 (= e!3093364 (and tp_is_empty!36181 tp!1388061))))

(assert (=> b!4950499 (= tp!1388010 e!3093364)))

(assert (= (and b!4950499 (is-Cons!57007 (t!367687 (t!367687 testedSuffix!70)))) b!4951118))

(declare-fun b!4951121 () Bool)

(declare-fun e!3093366 () Bool)

(declare-fun tp!1388062 () Bool)

(assert (=> b!4951121 (= e!3093366 (and tp_is_empty!36181 tp!1388062))))

(assert (=> b!4950483 (= tp!1387993 e!3093366)))

(assert (= (and b!4950483 (is-Cons!57007 (innerList!15099 (xs!18337 (c!845172 totalInput!685))))) b!4951121))

(declare-fun b!4951122 () Bool)

(declare-fun e!3093367 () Bool)

(declare-fun tp!1388063 () Bool)

(assert (=> b!4951122 (= e!3093367 (and tp_is_empty!36181 tp!1388063))))

(assert (=> b!4950488 (= tp!1387997 e!3093367)))

(assert (= (and b!4950488 (is-Cons!57007 (t!367687 (t!367687 testedP!110)))) b!4951122))

(declare-fun condSetEmpty!28123 () Bool)

(assert (=> setNonEmpty!28119 (= condSetEmpty!28123 (= setRest!28119 (as set.empty (Set Context!6268))))))

(declare-fun setRes!28123 () Bool)

(assert (=> setNonEmpty!28119 (= tp!1388009 setRes!28123)))

(declare-fun setIsEmpty!28123 () Bool)

(assert (=> setIsEmpty!28123 setRes!28123))

(declare-fun e!3093368 () Bool)

(declare-fun setElem!28123 () Context!6268)

(declare-fun tp!1388065 () Bool)

(declare-fun setNonEmpty!28123 () Bool)

(assert (=> setNonEmpty!28123 (= setRes!28123 (and tp!1388065 (inv!74292 setElem!28123) e!3093368))))

(declare-fun setRest!28123 () (Set Context!6268))

(assert (=> setNonEmpty!28123 (= setRest!28119 (set.union (set.insert setElem!28123 (as set.empty (Set Context!6268))) setRest!28123))))

(declare-fun b!4951123 () Bool)

(declare-fun tp!1388064 () Bool)

(assert (=> b!4951123 (= e!3093368 tp!1388064)))

(assert (= (and setNonEmpty!28119 condSetEmpty!28123) setIsEmpty!28123))

(assert (= (and setNonEmpty!28119 (not condSetEmpty!28123)) setNonEmpty!28123))

(assert (= setNonEmpty!28123 b!4951123))

(declare-fun m!5976002 () Bool)

(assert (=> setNonEmpty!28123 m!5976002))

(declare-fun b_lambda!196441 () Bool)

(assert (= b_lambda!196439 (or d!1594301 b_lambda!196441)))

(declare-fun bs!1182295 () Bool)

(declare-fun d!1594655 () Bool)

(assert (= bs!1182295 (and d!1594655 d!1594301)))

(declare-fun validRegex!5959 (Regex!13492) Bool)

(assert (=> bs!1182295 (= (dynLambda!23047 lambda!246935 (h!63456 (exprs!3634 setElem!28113))) (validRegex!5959 (h!63456 (exprs!3634 setElem!28113))))))

(declare-fun m!5976004 () Bool)

(assert (=> bs!1182295 m!5976004))

(assert (=> b!4951053 d!1594655))

(push 1)

(assert (not b!4950970))

(assert (not b!4950749))

(assert (not b!4950815))

(assert (not d!1594445))

(assert (not b!4951107))

(assert (not b!4950949))

(assert (not b!4950829))

(assert (not b!4950654))

(assert (not b!4950727))

(assert (not b!4950620))

(assert (not b!4950953))

(assert (not b!4950661))

(assert (not b!4950729))

(assert (not b!4950960))

(assert (not b!4950978))

(assert (not b!4951110))

(assert (not b!4950653))

(assert (not b!4950755))

(assert (not b!4950774))

(assert (not b!4951005))

(assert (not b!4950756))

(assert (not d!1594395))

(assert (not b!4950805))

(assert (not b!4950810))

(assert (not b!4950807))

(assert (not b!4950717))

(assert (not b!4950630))

(assert (not b!4950657))

(assert (not b!4950757))

(assert (not b!4951054))

(assert (not d!1594379))

(assert (not b!4951065))

(assert (not b!4951008))

(assert (not setNonEmpty!28123))

(assert (not b!4950777))

(assert (not b!4950701))

(assert (not d!1594457))

(assert (not b!4950663))

(assert (not b!4951089))

(assert (not b!4950776))

(assert (not b!4950705))

(assert (not b!4950788))

(assert (not b!4951063))

(assert (not b!4951122))

(assert (not bs!1182295))

(assert (not b!4950964))

(assert (not b!4950752))

(assert (not b!4950991))

(assert (not b!4951121))

(assert (not bm!345673))

(assert (not b!4950997))

(assert (not b!4950760))

(assert (not b!4950791))

(assert (not b!4950944))

(assert (not d!1594367))

(assert (not b!4951113))

(assert (not d!1594375))

(assert (not b!4950998))

(assert (not b!4951111))

(assert (not d!1594381))

(assert (not b!4950812))

(assert (not d!1594435))

(assert (not b!4951010))

(assert (not bm!345656))

(assert (not b!4950613))

(assert (not b!4950696))

(assert (not d!1594499))

(assert (not b!4951123))

(assert (not d!1594469))

(assert (not b!4951016))

(assert (not b!4950621))

(assert (not d!1594497))

(assert (not b!4951087))

(assert (not b!4951061))

(assert (not d!1594479))

(assert (not d!1594423))

(assert (not b!4950617))

(assert (not d!1594373))

(assert (not b!4950719))

(assert (not b!4950676))

(assert (not d!1594489))

(assert (not b!4950710))

(assert (not b!4951118))

(assert (not d!1594437))

(assert (not b_lambda!196441))

(assert (not b!4950671))

(assert (not b!4950622))

(assert (not d!1594459))

(assert (not b!4950662))

(assert (not b!4950801))

(assert (not b!4950808))

(assert (not d!1594631))

(assert (not b!4950711))

(assert (not d!1594399))

(assert (not b!4950996))

(assert (not b!4950784))

(assert (not b!4951038))

(assert (not bm!345657))

(assert (not d!1594385))

(assert (not b!4950753))

(assert (not d!1594559))

(assert (not b!4950636))

(assert (not d!1594397))

(assert (not b!4950679))

(assert (not d!1594575))

(assert (not b!4951106))

(assert (not b!4951091))

(assert (not b!4950979))

(assert (not b!4950721))

(assert (not b!4950833))

(assert (not b!4951004))

(assert (not b!4950965))

(assert (not b!4950665))

(assert (not b!4950708))

(assert (not b!4950680))

(assert (not b!4950971))

(assert (not b!4950615))

(assert (not b!4950619))

(assert (not d!1594377))

(assert (not b!4951015))

(assert (not bm!345675))

(assert (not b!4950806))

(assert (not d!1594585))

(assert (not b!4950759))

(assert (not b!4950751))

(assert (not b!4950678))

(assert (not b!4951105))

(assert (not b!4950831))

(assert (not b!4950607))

(assert (not b!4950675))

(assert (not d!1594557))

(assert (not d!1594621))

(assert (not d!1594355))

(assert (not d!1594431))

(assert (not b!4950951))

(assert (not d!1594547))

(assert (not b!4950723))

(assert (not b!4950743))

(assert (not b!4951062))

(assert (not b!4950826))

(assert (not d!1594495))

(assert (not d!1594401))

(assert (not b!4950789))

(assert (not b!4950832))

(assert (not b!4950824))

(assert (not b!4950990))

(assert (not b!4950742))

(assert (not b!4950669))

(assert (not b!4951112))

(assert (not b!4950659))

(assert (not b!4951067))

(assert (not d!1594549))

(assert (not d!1594493))

(assert (not bm!345674))

(assert (not b!4950672))

(assert (not bm!345671))

(assert (not b!4950715))

(assert (not b!4950778))

(assert (not b!4950775))

(assert (not b!4950799))

(assert (not b!4950818))

(assert (not d!1594503))

(assert (not b!4951059))

(assert (not d!1594563))

(assert (not b!4950698))

(assert (not b!4950703))

(assert (not b!4950481))

(assert (not b!4951114))

(assert (not b!4951117))

(assert (not b!4950707))

(assert (not b!4950699))

(assert (not b!4950779))

(assert (not b!4950830))

(assert (not b!4950809))

(assert (not b!4950793))

(assert (not bm!345672))

(assert (not b!4950655))

(assert (not b!4950817))

(assert (not d!1594371))

(assert (not b!4950803))

(assert (not b!4950658))

(assert (not b!4950834))

(assert (not b!4950713))

(assert (not b!4951108))

(assert (not b!4950811))

(assert (not b!4950746))

(assert tp_is_empty!36181)

(assert (not b!4950667))

(assert (not b!4951109))

(assert (not b!4950731))

(assert (not b!4950745))

(assert (not d!1594471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

