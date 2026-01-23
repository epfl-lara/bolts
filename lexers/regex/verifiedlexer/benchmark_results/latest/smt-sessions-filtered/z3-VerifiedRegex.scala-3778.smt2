; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210746 () Bool)

(assert start!210746)

(declare-fun lt!809819 () Int)

(declare-fun e!1389438 () Bool)

(declare-fun lt!809806 () Int)

(declare-datatypes ((C!12192 0))(
  ( (C!12193 (val!7082 Int)) )
))
(declare-datatypes ((List!25282 0))(
  ( (Nil!25198) (Cons!25198 (h!30599 C!12192) (t!197850 List!25282)) )
))
(declare-fun lt!809798 () List!25282)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6023 0))(
  ( (ElementMatch!6023 (c!344356 C!12192)) (Concat!10325 (regOne!12558 Regex!6023) (regTwo!12558 Regex!6023)) (EmptyExpr!6023) (Star!6023 (reg!6352 Regex!6023)) (EmptyLang!6023) (Union!6023 (regOne!12559 Regex!6023) (regTwo!12559 Regex!6023)) )
))
(declare-datatypes ((List!25283 0))(
  ( (Nil!25199) (Cons!25199 (h!30600 Regex!6023) (t!197851 List!25283)) )
))
(declare-datatypes ((Context!3186 0))(
  ( (Context!3187 (exprs!2093 List!25283)) )
))
(declare-fun z!4055 () (InoxSet Context!3186))

(declare-fun b!2172617 () Bool)

(declare-fun matchZipper!139 ((InoxSet Context!3186) List!25282) Bool)

(declare-fun take!231 (List!25282 Int) List!25282)

(declare-fun drop!1241 (List!25282 Int) List!25282)

(assert (=> b!2172617 (= e!1389438 (matchZipper!139 z!4055 (take!231 (drop!1241 lt!809798 lt!809806) lt!809819)))))

(declare-fun b!2172618 () Bool)

(declare-fun e!1389436 () Bool)

(declare-fun e!1389441 () Bool)

(assert (=> b!2172618 (= e!1389436 e!1389441)))

(declare-fun res!934964 () Bool)

(assert (=> b!2172618 (=> (not res!934964) (not e!1389441))))

(declare-datatypes ((List!25284 0))(
  ( (Nil!25200) (Cons!25200 (h!30601 Context!3186) (t!197852 List!25284)) )
))
(declare-fun lt!809796 () List!25284)

(declare-fun r!12534 () Regex!6023)

(declare-fun unfocusZipper!130 (List!25284) Regex!6023)

(assert (=> b!2172618 (= res!934964 (= (unfocusZipper!130 lt!809796) r!12534))))

(declare-fun toList!1206 ((InoxSet Context!3186)) List!25284)

(assert (=> b!2172618 (= lt!809796 (toList!1206 z!4055))))

(declare-fun b!2172619 () Bool)

(declare-fun e!1389443 () Bool)

(declare-datatypes ((IArray!16323 0))(
  ( (IArray!16324 (innerList!8219 List!25282)) )
))
(declare-datatypes ((Conc!8159 0))(
  ( (Node!8159 (left!19353 Conc!8159) (right!19683 Conc!8159) (csize!16548 Int) (cheight!8370 Int)) (Leaf!11938 (xs!11101 IArray!16323) (csize!16549 Int)) (Empty!8159) )
))
(declare-datatypes ((BalanceConc!16080 0))(
  ( (BalanceConc!16081 (c!344357 Conc!8159)) )
))
(declare-datatypes ((tuple2!24966 0))(
  ( (tuple2!24967 (_1!14853 BalanceConc!16080) (_2!14853 BalanceConc!16080)) )
))
(declare-fun lt!809814 () tuple2!24966)

(declare-fun isEmpty!14455 (BalanceConc!16080) Bool)

(assert (=> b!2172619 (= e!1389443 (not (isEmpty!14455 (_1!14853 lt!809814))))))

(declare-fun b!2172620 () Bool)

(declare-fun e!1389428 () Int)

(assert (=> b!2172620 (= e!1389428 (- lt!809806 1))))

(declare-fun b!2172621 () Bool)

(declare-fun e!1389440 () Bool)

(declare-fun tp!678224 () Bool)

(declare-fun tp!678230 () Bool)

(assert (=> b!2172621 (= e!1389440 (and tp!678224 tp!678230))))

(declare-fun b!2172622 () Bool)

(declare-fun e!1389434 () Bool)

(declare-fun e!1389442 () Bool)

(assert (=> b!2172622 (= e!1389434 e!1389442)))

(declare-fun res!934958 () Bool)

(assert (=> b!2172622 (=> res!934958 e!1389442)))

(declare-fun lt!809818 () List!25282)

(declare-fun lt!809803 () List!25282)

(declare-fun isPrefix!2139 (List!25282 List!25282) Bool)

(assert (=> b!2172622 (= res!934958 (not (isPrefix!2139 lt!809818 lt!809803)))))

(declare-fun lt!809811 () Int)

(assert (=> b!2172622 (isPrefix!2139 (take!231 lt!809803 lt!809811) lt!809803)))

(declare-datatypes ((Unit!38259 0))(
  ( (Unit!38260) )
))
(declare-fun lt!809802 () Unit!38259)

(declare-fun lemmaTakeIsPrefix!54 (List!25282 Int) Unit!38259)

(assert (=> b!2172622 (= lt!809802 (lemmaTakeIsPrefix!54 lt!809803 lt!809811))))

(declare-fun b!2172623 () Bool)

(declare-fun e!1389432 () Bool)

(declare-fun e!1389435 () Bool)

(assert (=> b!2172623 (= e!1389432 e!1389435)))

(declare-fun res!934956 () Bool)

(assert (=> b!2172623 (=> res!934956 e!1389435)))

(declare-fun size!19684 (BalanceConc!16080) Int)

(assert (=> b!2172623 (= res!934956 (<= lt!809811 (size!19684 (_1!14853 lt!809814))))))

(declare-datatypes ((tuple2!24968 0))(
  ( (tuple2!24969 (_1!14854 List!25282) (_2!14854 List!25282)) )
))
(declare-fun lt!809817 () tuple2!24968)

(declare-fun size!19685 (List!25282) Int)

(assert (=> b!2172623 (= lt!809811 (size!19685 (_1!14854 lt!809817)))))

(declare-fun lt!809820 () List!25282)

(declare-fun lt!809808 () Bool)

(declare-fun matchR!2772 (Regex!6023 List!25282) Bool)

(assert (=> b!2172623 (= (matchR!2772 r!12534 lt!809820) lt!809808)))

(declare-fun lt!809821 () Unit!38259)

(declare-fun theoremZipperRegexEquiv!49 ((InoxSet Context!3186) List!25284 Regex!6023 List!25282) Unit!38259)

(assert (=> b!2172623 (= lt!809821 (theoremZipperRegexEquiv!49 z!4055 lt!809796 r!12534 lt!809820))))

(declare-fun lt!809801 () Bool)

(assert (=> b!2172623 (= lt!809801 (matchZipper!139 z!4055 (_1!14854 lt!809817)))))

(declare-fun lt!809797 () Unit!38259)

(assert (=> b!2172623 (= lt!809797 (theoremZipperRegexEquiv!49 z!4055 lt!809796 r!12534 (_1!14854 lt!809817)))))

(declare-fun b!2172624 () Bool)

(declare-fun e!1389444 () Bool)

(assert (=> b!2172624 (= e!1389444 e!1389432)))

(declare-fun res!934954 () Bool)

(assert (=> b!2172624 (=> res!934954 e!1389432)))

(declare-fun e!1389445 () Bool)

(assert (=> b!2172624 (= res!934954 e!1389445)))

(declare-fun res!934965 () Bool)

(assert (=> b!2172624 (=> (not res!934965) (not e!1389445))))

(assert (=> b!2172624 (= res!934965 (not lt!809801))))

(assert (=> b!2172624 (= lt!809801 (matchR!2772 r!12534 (_1!14854 lt!809817)))))

(declare-fun b!2172625 () Bool)

(declare-fun tp!678226 () Bool)

(assert (=> b!2172625 (= e!1389440 tp!678226)))

(declare-fun b!2172626 () Bool)

(declare-fun e!1389439 () Bool)

(assert (=> b!2172626 (= e!1389439 (not e!1389444))))

(declare-fun res!934957 () Bool)

(assert (=> b!2172626 (=> res!934957 e!1389444)))

(assert (=> b!2172626 (= res!934957 e!1389443)))

(declare-fun res!934961 () Bool)

(assert (=> b!2172626 (=> (not res!934961) (not e!1389443))))

(assert (=> b!2172626 (= res!934961 (not lt!809808))))

(assert (=> b!2172626 (= lt!809808 (matchZipper!139 z!4055 lt!809820))))

(declare-fun e!1389437 () Bool)

(assert (=> b!2172626 e!1389437))

(declare-fun res!934955 () Bool)

(assert (=> b!2172626 (=> res!934955 e!1389437)))

(declare-fun lt!809816 () tuple2!24968)

(declare-fun isEmpty!14456 (List!25282) Bool)

(assert (=> b!2172626 (= res!934955 (isEmpty!14456 (_1!14854 lt!809816)))))

(declare-fun findLongestMatchInner!648 (Regex!6023 List!25282 Int List!25282 List!25282 Int) tuple2!24968)

(assert (=> b!2172626 (= lt!809816 (findLongestMatchInner!648 r!12534 Nil!25198 (size!19685 Nil!25198) lt!809803 lt!809803 (size!19685 lt!809803)))))

(declare-fun lt!809800 () Unit!38259)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!621 (Regex!6023 List!25282) Unit!38259)

(assert (=> b!2172626 (= lt!809800 (longestMatchIsAcceptedByMatchOrIsEmpty!621 r!12534 lt!809803))))

(assert (=> b!2172626 e!1389438))

(declare-fun res!934963 () Bool)

(assert (=> b!2172626 (=> res!934963 e!1389438)))

(assert (=> b!2172626 (= res!934963 (<= lt!809819 0))))

(declare-fun lt!809805 () Int)

(declare-fun lt!809804 () Int)

(declare-fun totalInput!977 () BalanceConc!16080)

(declare-fun furthestNullablePosition!205 ((InoxSet Context!3186) Int BalanceConc!16080 Int Int) Int)

(assert (=> b!2172626 (= lt!809819 (+ 1 (- (furthestNullablePosition!205 z!4055 lt!809806 totalInput!977 lt!809804 lt!809805) lt!809806)))))

(declare-fun lt!809799 () Unit!38259)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!46 ((InoxSet Context!3186) Int BalanceConc!16080 Int) Unit!38259)

(assert (=> b!2172626 (= lt!809799 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!46 z!4055 lt!809806 totalInput!977 lt!809805))))

(assert (=> b!2172626 (= lt!809805 e!1389428)))

(declare-fun c!344355 () Bool)

(declare-fun nullableZipper!303 ((InoxSet Context!3186)) Bool)

(assert (=> b!2172626 (= c!344355 (nullableZipper!303 z!4055))))

(assert (=> b!2172626 (isPrefix!2139 (take!231 lt!809798 lt!809806) lt!809798)))

(declare-fun lt!809807 () Unit!38259)

(assert (=> b!2172626 (= lt!809807 (lemmaTakeIsPrefix!54 lt!809798 lt!809806))))

(declare-fun lt!809812 () List!25282)

(assert (=> b!2172626 (isPrefix!2139 (_1!14854 lt!809817) lt!809812)))

(declare-fun lt!809813 () Unit!38259)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1422 (List!25282 List!25282) Unit!38259)

(assert (=> b!2172626 (= lt!809813 (lemmaConcatTwoListThenFirstIsPrefix!1422 (_1!14854 lt!809817) (_2!14854 lt!809817)))))

(declare-fun lt!809815 () List!25282)

(assert (=> b!2172626 (isPrefix!2139 lt!809820 lt!809815)))

(declare-fun lt!809822 () Unit!38259)

(declare-fun lt!809809 () List!25282)

(assert (=> b!2172626 (= lt!809822 (lemmaConcatTwoListThenFirstIsPrefix!1422 lt!809820 lt!809809))))

(declare-fun b!2172627 () Bool)

(declare-fun e!1389431 () Bool)

(assert (=> b!2172627 (= e!1389441 e!1389431)))

(declare-fun res!934959 () Bool)

(assert (=> b!2172627 (=> (not res!934959) (not e!1389431))))

(declare-fun isSuffix!690 (List!25282 List!25282) Bool)

(assert (=> b!2172627 (= res!934959 (isSuffix!690 lt!809803 lt!809798))))

(declare-fun list!9662 (BalanceConc!16080) List!25282)

(assert (=> b!2172627 (= lt!809798 (list!9662 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16080)

(assert (=> b!2172627 (= lt!809803 (list!9662 input!5540))))

(declare-fun res!934960 () Bool)

(assert (=> start!210746 (=> (not res!934960) (not e!1389436))))

(declare-fun validRegex!2299 (Regex!6023) Bool)

(assert (=> start!210746 (= res!934960 (validRegex!2299 r!12534))))

(assert (=> start!210746 e!1389436))

(assert (=> start!210746 e!1389440))

(declare-fun e!1389429 () Bool)

(declare-fun inv!33450 (BalanceConc!16080) Bool)

(assert (=> start!210746 (and (inv!33450 totalInput!977) e!1389429)))

(declare-fun e!1389427 () Bool)

(assert (=> start!210746 (and (inv!33450 input!5540) e!1389427)))

(declare-fun condSetEmpty!18232 () Bool)

(assert (=> start!210746 (= condSetEmpty!18232 (= z!4055 ((as const (Array Context!3186 Bool)) false)))))

(declare-fun setRes!18232 () Bool)

(assert (=> start!210746 setRes!18232))

(declare-fun b!2172628 () Bool)

(assert (=> b!2172628 (= e!1389435 e!1389434)))

(declare-fun res!934967 () Bool)

(assert (=> b!2172628 (=> res!934967 e!1389434)))

(declare-fun lt!809810 () List!25282)

(assert (=> b!2172628 (= res!934967 (not (= lt!809810 lt!809803)))))

(assert (=> b!2172628 (= lt!809818 (take!231 lt!809810 lt!809811))))

(assert (=> b!2172628 (= lt!809810 (drop!1241 lt!809798 lt!809806))))

(declare-fun b!2172629 () Bool)

(declare-fun tp!678227 () Bool)

(declare-fun tp!678222 () Bool)

(assert (=> b!2172629 (= e!1389440 (and tp!678227 tp!678222))))

(declare-fun b!2172630 () Bool)

(assert (=> b!2172630 (= e!1389445 (not (isEmpty!14456 (_1!14854 lt!809817))))))

(declare-fun b!2172631 () Bool)

(assert (=> b!2172631 (= e!1389428 (- 1))))

(declare-fun setIsEmpty!18232 () Bool)

(assert (=> setIsEmpty!18232 setRes!18232))

(declare-fun setElem!18232 () Context!3186)

(declare-fun e!1389430 () Bool)

(declare-fun tp!678225 () Bool)

(declare-fun setNonEmpty!18232 () Bool)

(declare-fun inv!33451 (Context!3186) Bool)

(assert (=> setNonEmpty!18232 (= setRes!18232 (and tp!678225 (inv!33451 setElem!18232) e!1389430))))

(declare-fun setRest!18232 () (InoxSet Context!3186))

(assert (=> setNonEmpty!18232 (= z!4055 ((_ map or) (store ((as const (Array Context!3186 Bool)) false) setElem!18232 true) setRest!18232))))

(declare-fun b!2172632 () Bool)

(declare-fun e!1389433 () Bool)

(assert (=> b!2172632 (= e!1389433 e!1389439)))

(declare-fun res!934962 () Bool)

(assert (=> b!2172632 (=> (not res!934962) (not e!1389439))))

(assert (=> b!2172632 (= res!934962 (= lt!809812 lt!809803))))

(declare-fun ++!6382 (List!25282 List!25282) List!25282)

(assert (=> b!2172632 (= lt!809812 (++!6382 (_1!14854 lt!809817) (_2!14854 lt!809817)))))

(declare-fun b!2172633 () Bool)

(declare-fun tp!678223 () Bool)

(assert (=> b!2172633 (= e!1389430 tp!678223)))

(declare-fun b!2172634 () Bool)

(assert (=> b!2172634 (= e!1389442 (isPrefix!2139 (_1!14854 lt!809817) lt!809803))))

(declare-fun b!2172635 () Bool)

(assert (=> b!2172635 (= e!1389431 e!1389433)))

(declare-fun res!934966 () Bool)

(assert (=> b!2172635 (=> (not res!934966) (not e!1389433))))

(assert (=> b!2172635 (= res!934966 (= lt!809815 lt!809803))))

(assert (=> b!2172635 (= lt!809815 (++!6382 lt!809820 lt!809809))))

(assert (=> b!2172635 (= lt!809809 (list!9662 (_2!14853 lt!809814)))))

(assert (=> b!2172635 (= lt!809820 (list!9662 (_1!14853 lt!809814)))))

(declare-fun findLongestMatch!577 (Regex!6023 List!25282) tuple2!24968)

(assert (=> b!2172635 (= lt!809817 (findLongestMatch!577 r!12534 lt!809803))))

(assert (=> b!2172635 (= lt!809806 (- lt!809804 (size!19684 input!5540)))))

(assert (=> b!2172635 (= lt!809804 (size!19684 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!72 ((InoxSet Context!3186) BalanceConc!16080 BalanceConc!16080) tuple2!24966)

(assert (=> b!2172635 (= lt!809814 (findLongestMatchZipperSequenceV3!72 z!4055 input!5540 totalInput!977))))

(declare-fun b!2172636 () Bool)

(declare-fun tp!678228 () Bool)

(declare-fun inv!33452 (Conc!8159) Bool)

(assert (=> b!2172636 (= e!1389429 (and (inv!33452 (c!344357 totalInput!977)) tp!678228))))

(declare-fun b!2172637 () Bool)

(assert (=> b!2172637 (= e!1389437 (matchR!2772 r!12534 (_1!14854 lt!809816)))))

(declare-fun b!2172638 () Bool)

(declare-fun tp_is_empty!9653 () Bool)

(assert (=> b!2172638 (= e!1389440 tp_is_empty!9653)))

(declare-fun b!2172639 () Bool)

(declare-fun tp!678229 () Bool)

(assert (=> b!2172639 (= e!1389427 (and (inv!33452 (c!344357 input!5540)) tp!678229))))

(assert (= (and start!210746 res!934960) b!2172618))

(assert (= (and b!2172618 res!934964) b!2172627))

(assert (= (and b!2172627 res!934959) b!2172635))

(assert (= (and b!2172635 res!934966) b!2172632))

(assert (= (and b!2172632 res!934962) b!2172626))

(assert (= (and b!2172626 c!344355) b!2172620))

(assert (= (and b!2172626 (not c!344355)) b!2172631))

(assert (= (and b!2172626 (not res!934963)) b!2172617))

(assert (= (and b!2172626 (not res!934955)) b!2172637))

(assert (= (and b!2172626 res!934961) b!2172619))

(assert (= (and b!2172626 (not res!934957)) b!2172624))

(assert (= (and b!2172624 res!934965) b!2172630))

(assert (= (and b!2172624 (not res!934954)) b!2172623))

(assert (= (and b!2172623 (not res!934956)) b!2172628))

(assert (= (and b!2172628 (not res!934967)) b!2172622))

(assert (= (and b!2172622 (not res!934958)) b!2172634))

(get-info :version)

(assert (= (and start!210746 ((_ is ElementMatch!6023) r!12534)) b!2172638))

(assert (= (and start!210746 ((_ is Concat!10325) r!12534)) b!2172629))

(assert (= (and start!210746 ((_ is Star!6023) r!12534)) b!2172625))

(assert (= (and start!210746 ((_ is Union!6023) r!12534)) b!2172621))

(assert (= start!210746 b!2172636))

(assert (= start!210746 b!2172639))

(assert (= (and start!210746 condSetEmpty!18232) setIsEmpty!18232))

(assert (= (and start!210746 (not condSetEmpty!18232)) setNonEmpty!18232))

(assert (= setNonEmpty!18232 b!2172633))

(declare-fun m!2613955 () Bool)

(assert (=> start!210746 m!2613955))

(declare-fun m!2613957 () Bool)

(assert (=> start!210746 m!2613957))

(declare-fun m!2613959 () Bool)

(assert (=> start!210746 m!2613959))

(declare-fun m!2613961 () Bool)

(assert (=> b!2172628 m!2613961))

(declare-fun m!2613963 () Bool)

(assert (=> b!2172628 m!2613963))

(declare-fun m!2613965 () Bool)

(assert (=> b!2172635 m!2613965))

(declare-fun m!2613967 () Bool)

(assert (=> b!2172635 m!2613967))

(declare-fun m!2613969 () Bool)

(assert (=> b!2172635 m!2613969))

(declare-fun m!2613971 () Bool)

(assert (=> b!2172635 m!2613971))

(declare-fun m!2613973 () Bool)

(assert (=> b!2172635 m!2613973))

(declare-fun m!2613975 () Bool)

(assert (=> b!2172635 m!2613975))

(declare-fun m!2613977 () Bool)

(assert (=> b!2172635 m!2613977))

(declare-fun m!2613979 () Bool)

(assert (=> b!2172624 m!2613979))

(declare-fun m!2613981 () Bool)

(assert (=> b!2172630 m!2613981))

(declare-fun m!2613983 () Bool)

(assert (=> b!2172626 m!2613983))

(declare-fun m!2613985 () Bool)

(assert (=> b!2172626 m!2613985))

(declare-fun m!2613987 () Bool)

(assert (=> b!2172626 m!2613987))

(declare-fun m!2613989 () Bool)

(assert (=> b!2172626 m!2613989))

(declare-fun m!2613991 () Bool)

(assert (=> b!2172626 m!2613991))

(declare-fun m!2613993 () Bool)

(assert (=> b!2172626 m!2613993))

(declare-fun m!2613995 () Bool)

(assert (=> b!2172626 m!2613995))

(assert (=> b!2172626 m!2613987))

(declare-fun m!2613997 () Bool)

(assert (=> b!2172626 m!2613997))

(declare-fun m!2613999 () Bool)

(assert (=> b!2172626 m!2613999))

(declare-fun m!2614001 () Bool)

(assert (=> b!2172626 m!2614001))

(declare-fun m!2614003 () Bool)

(assert (=> b!2172626 m!2614003))

(declare-fun m!2614005 () Bool)

(assert (=> b!2172626 m!2614005))

(declare-fun m!2614007 () Bool)

(assert (=> b!2172626 m!2614007))

(declare-fun m!2614009 () Bool)

(assert (=> b!2172626 m!2614009))

(assert (=> b!2172626 m!2613989))

(assert (=> b!2172626 m!2613997))

(declare-fun m!2614011 () Bool)

(assert (=> b!2172626 m!2614011))

(declare-fun m!2614013 () Bool)

(assert (=> b!2172626 m!2614013))

(declare-fun m!2614015 () Bool)

(assert (=> b!2172632 m!2614015))

(declare-fun m!2614017 () Bool)

(assert (=> b!2172639 m!2614017))

(declare-fun m!2614019 () Bool)

(assert (=> setNonEmpty!18232 m!2614019))

(declare-fun m!2614021 () Bool)

(assert (=> b!2172634 m!2614021))

(declare-fun m!2614023 () Bool)

(assert (=> b!2172622 m!2614023))

(declare-fun m!2614025 () Bool)

(assert (=> b!2172622 m!2614025))

(assert (=> b!2172622 m!2614025))

(declare-fun m!2614027 () Bool)

(assert (=> b!2172622 m!2614027))

(declare-fun m!2614029 () Bool)

(assert (=> b!2172622 m!2614029))

(declare-fun m!2614031 () Bool)

(assert (=> b!2172627 m!2614031))

(declare-fun m!2614033 () Bool)

(assert (=> b!2172627 m!2614033))

(declare-fun m!2614035 () Bool)

(assert (=> b!2172627 m!2614035))

(declare-fun m!2614037 () Bool)

(assert (=> b!2172618 m!2614037))

(declare-fun m!2614039 () Bool)

(assert (=> b!2172618 m!2614039))

(declare-fun m!2614041 () Bool)

(assert (=> b!2172637 m!2614041))

(assert (=> b!2172617 m!2613963))

(assert (=> b!2172617 m!2613963))

(declare-fun m!2614043 () Bool)

(assert (=> b!2172617 m!2614043))

(assert (=> b!2172617 m!2614043))

(declare-fun m!2614045 () Bool)

(assert (=> b!2172617 m!2614045))

(declare-fun m!2614047 () Bool)

(assert (=> b!2172623 m!2614047))

(declare-fun m!2614049 () Bool)

(assert (=> b!2172623 m!2614049))

(declare-fun m!2614051 () Bool)

(assert (=> b!2172623 m!2614051))

(declare-fun m!2614053 () Bool)

(assert (=> b!2172623 m!2614053))

(declare-fun m!2614055 () Bool)

(assert (=> b!2172623 m!2614055))

(declare-fun m!2614057 () Bool)

(assert (=> b!2172623 m!2614057))

(declare-fun m!2614059 () Bool)

(assert (=> b!2172636 m!2614059))

(declare-fun m!2614061 () Bool)

(assert (=> b!2172619 m!2614061))

(check-sat (not b!2172635) tp_is_empty!9653 (not b!2172628) (not start!210746) (not b!2172617) (not b!2172624) (not b!2172632) (not b!2172636) (not b!2172630) (not setNonEmpty!18232) (not b!2172622) (not b!2172637) (not b!2172633) (not b!2172627) (not b!2172621) (not b!2172626) (not b!2172634) (not b!2172623) (not b!2172629) (not b!2172619) (not b!2172639) (not b!2172625) (not b!2172618))
(check-sat)
