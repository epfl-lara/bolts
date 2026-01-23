; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519104 () Bool)

(assert start!519104)

(declare-fun b!4937013 () Bool)

(declare-datatypes ((Unit!147573 0))(
  ( (Unit!147574) )
))
(declare-fun e!3084774 () Unit!147573)

(declare-fun Unit!147575 () Unit!147573)

(assert (=> b!4937013 (= e!3084774 Unit!147575)))

(declare-fun lt!2034529 () Unit!147573)

(declare-datatypes ((C!27104 0))(
  ( (C!27105 (val!22886 Int)) )
))
(declare-datatypes ((List!56978 0))(
  ( (Nil!56854) (Cons!56854 (h!63302 C!27104) (t!367468 List!56978)) )
))
(declare-fun lt!2034542 () List!56978)

(declare-fun lemmaIsPrefixRefl!3401 (List!56978 List!56978) Unit!147573)

(assert (=> b!4937013 (= lt!2034529 (lemmaIsPrefixRefl!3401 lt!2034542 lt!2034542))))

(declare-fun isPrefix!5035 (List!56978 List!56978) Bool)

(assert (=> b!4937013 (isPrefix!5035 lt!2034542 lt!2034542)))

(declare-fun lt!2034540 () Unit!147573)

(declare-fun testedP!110 () List!56978)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1159 (List!56978 List!56978 List!56978) Unit!147573)

(assert (=> b!4937013 (= lt!2034540 (lemmaIsPrefixSameLengthThenSameList!1159 lt!2034542 testedP!110 lt!2034542))))

(assert (=> b!4937013 false))

(declare-fun b!4937014 () Bool)

(declare-fun e!3084765 () Bool)

(declare-fun tp_is_empty!36051 () Bool)

(declare-fun tp!1385591 () Bool)

(assert (=> b!4937014 (= e!3084765 (and tp_is_empty!36051 tp!1385591))))

(declare-fun b!4937015 () Bool)

(declare-fun e!3084771 () Bool)

(declare-fun tp!1385589 () Bool)

(assert (=> b!4937015 (= e!3084771 tp!1385589)))

(declare-fun b!4937016 () Bool)

(declare-fun e!3084764 () Bool)

(declare-fun e!3084769 () Bool)

(assert (=> b!4937016 (= e!3084764 e!3084769)))

(declare-fun res!2106994 () Bool)

(assert (=> b!4937016 (=> (not res!2106994) (not e!3084769))))

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2034530 () Int)

(assert (=> b!4937016 (= res!2106994 (= testedPSize!70 lt!2034530))))

(declare-fun size!37664 (List!56978) Int)

(assert (=> b!4937016 (= lt!2034530 (size!37664 testedP!110))))

(declare-fun b!4937017 () Bool)

(declare-fun e!3084773 () Bool)

(declare-fun e!3084770 () Bool)

(assert (=> b!4937017 (= e!3084773 e!3084770)))

(declare-fun res!2106996 () Bool)

(assert (=> b!4937017 (=> res!2106996 e!3084770)))

(declare-fun lt!2034543 () List!56978)

(declare-fun lt!2034545 () List!56978)

(declare-fun ++!12404 (List!56978 List!56978) List!56978)

(assert (=> b!4937017 (= res!2106996 (not (= (++!12404 lt!2034545 lt!2034543) lt!2034542)))))

(declare-datatypes ((IArray!29953 0))(
  ( (IArray!29954 (innerList!15034 List!56978)) )
))
(declare-datatypes ((Conc!14946 0))(
  ( (Node!14946 (left!41465 Conc!14946) (right!41795 Conc!14946) (csize!30122 Int) (cheight!15157 Int)) (Leaf!24852 (xs!18270 IArray!29953) (csize!30123 Int)) (Empty!14946) )
))
(declare-datatypes ((BalanceConc!29322 0))(
  ( (BalanceConc!29323 (c!841700 Conc!14946)) )
))
(declare-datatypes ((tuple2!61374 0))(
  ( (tuple2!61375 (_1!33990 BalanceConc!29322) (_2!33990 BalanceConc!29322)) )
))
(declare-fun lt!2034541 () tuple2!61374)

(declare-fun list!18066 (BalanceConc!29322) List!56978)

(assert (=> b!4937017 (= lt!2034543 (list!18066 (_2!33990 lt!2034541)))))

(assert (=> b!4937017 (= lt!2034545 (list!18066 (_1!33990 lt!2034541)))))

(declare-fun totalInput!685 () BalanceConc!29322)

(declare-fun splitAt!345 (BalanceConc!29322 Int) tuple2!61374)

(assert (=> b!4937017 (= lt!2034541 (splitAt!345 totalInput!685 testedPSize!70))))

(declare-fun res!2106995 () Bool)

(assert (=> start!519104 (=> (not res!2106995) (not e!3084764))))

(declare-fun lt!2034536 () List!56978)

(assert (=> start!519104 (= res!2106995 (= lt!2034536 lt!2034542))))

(assert (=> start!519104 (= lt!2034542 (list!18066 totalInput!685))))

(declare-fun testedSuffix!70 () List!56978)

(assert (=> start!519104 (= lt!2034536 (++!12404 testedP!110 testedSuffix!70))))

(assert (=> start!519104 e!3084764))

(assert (=> start!519104 e!3084765))

(declare-fun condSetEmpty!27826 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13437 0))(
  ( (ElementMatch!13437 (c!841701 C!27104)) (Concat!22010 (regOne!27386 Regex!13437) (regTwo!27386 Regex!13437)) (EmptyExpr!13437) (Star!13437 (reg!13766 Regex!13437)) (EmptyLang!13437) (Union!13437 (regOne!27387 Regex!13437) (regTwo!27387 Regex!13437)) )
))
(declare-datatypes ((List!56979 0))(
  ( (Nil!56855) (Cons!56855 (h!63303 Regex!13437) (t!367469 List!56979)) )
))
(declare-datatypes ((Context!6158 0))(
  ( (Context!6159 (exprs!3579 List!56979)) )
))
(declare-fun z!3568 () (InoxSet Context!6158))

(assert (=> start!519104 (= condSetEmpty!27826 (= z!3568 ((as const (Array Context!6158 Bool)) false)))))

(declare-fun setRes!27826 () Bool)

(assert (=> start!519104 setRes!27826))

(assert (=> start!519104 true))

(declare-fun e!3084772 () Bool)

(declare-fun inv!73894 (BalanceConc!29322) Bool)

(assert (=> start!519104 (and (inv!73894 totalInput!685) e!3084772)))

(declare-fun e!3084763 () Bool)

(assert (=> start!519104 e!3084763))

(declare-fun tp!1385592 () Bool)

(declare-fun setNonEmpty!27826 () Bool)

(declare-fun setElem!27826 () Context!6158)

(declare-fun inv!73895 (Context!6158) Bool)

(assert (=> setNonEmpty!27826 (= setRes!27826 (and tp!1385592 (inv!73895 setElem!27826) e!3084771))))

(declare-fun setRest!27826 () (InoxSet Context!6158))

(assert (=> setNonEmpty!27826 (= z!3568 ((_ map or) (store ((as const (Array Context!6158 Bool)) false) setElem!27826 true) setRest!27826))))

(declare-fun setIsEmpty!27826 () Bool)

(assert (=> setIsEmpty!27826 setRes!27826))

(declare-fun b!4937018 () Bool)

(declare-fun tp!1385593 () Bool)

(declare-fun inv!73896 (Conc!14946) Bool)

(assert (=> b!4937018 (= e!3084772 (and (inv!73896 (c!841700 totalInput!685)) tp!1385593))))

(declare-fun b!4937019 () Bool)

(declare-fun res!2106998 () Bool)

(assert (=> b!4937019 (=> res!2106998 e!3084773)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4937019 (= res!2106998 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4937020 () Bool)

(declare-fun e!3084768 () Bool)

(declare-fun e!3084762 () Bool)

(assert (=> b!4937020 (= e!3084768 e!3084762)))

(declare-fun res!2107000 () Bool)

(assert (=> b!4937020 (=> res!2107000 e!3084762)))

(declare-fun nullableZipper!842 ((InoxSet Context!6158)) Bool)

(assert (=> b!4937020 (= res!2107000 (nullableZipper!842 z!3568))))

(declare-fun lt!2034539 () List!56978)

(declare-fun lt!2034531 () C!27104)

(assert (=> b!4937020 (= (++!12404 (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854)) lt!2034539) lt!2034542)))

(declare-fun lt!2034538 () Unit!147573)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1417 (List!56978 C!27104 List!56978 List!56978) Unit!147573)

(assert (=> b!4937020 (= lt!2034538 (lemmaMoveElementToOtherListKeepsConcatEq!1417 testedP!110 lt!2034531 lt!2034539 lt!2034542))))

(declare-fun tail!9713 (List!56978) List!56978)

(assert (=> b!4937020 (= lt!2034539 (tail!9713 testedSuffix!70))))

(declare-fun lt!2034533 () List!56978)

(declare-fun head!10574 (List!56978) C!27104)

(assert (=> b!4937020 (isPrefix!5035 (++!12404 testedP!110 (Cons!56854 (head!10574 lt!2034533) Nil!56854)) lt!2034542)))

(declare-fun lt!2034532 () Unit!147573)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!805 (List!56978 List!56978) Unit!147573)

(assert (=> b!4937020 (= lt!2034532 (lemmaAddHeadSuffixToPrefixStillPrefix!805 testedP!110 lt!2034542))))

(declare-fun b!4937021 () Bool)

(declare-fun e!3084775 () Bool)

(assert (=> b!4937021 (= e!3084769 e!3084775)))

(declare-fun res!2107002 () Bool)

(assert (=> b!4937021 (=> (not res!2107002) (not e!3084775))))

(declare-fun lt!2034528 () Int)

(assert (=> b!4937021 (= res!2107002 (= totalInputSize!132 lt!2034528))))

(declare-fun size!37665 (BalanceConc!29322) Int)

(assert (=> b!4937021 (= lt!2034528 (size!37665 totalInput!685))))

(declare-fun b!4937022 () Bool)

(declare-fun e!3084767 () Bool)

(assert (=> b!4937022 (= e!3084767 e!3084773)))

(declare-fun res!2106993 () Bool)

(assert (=> b!4937022 (=> res!2106993 e!3084773)))

(declare-fun lostCauseZipper!755 ((InoxSet Context!6158)) Bool)

(assert (=> b!4937022 (= res!2106993 (lostCauseZipper!755 z!3568))))

(assert (=> b!4937022 (and (= testedSuffix!70 lt!2034533) (= lt!2034533 testedSuffix!70))))

(declare-fun lt!2034534 () Unit!147573)

(declare-fun lemmaSamePrefixThenSameSuffix!2433 (List!56978 List!56978 List!56978 List!56978 List!56978) Unit!147573)

(assert (=> b!4937022 (= lt!2034534 (lemmaSamePrefixThenSameSuffix!2433 testedP!110 testedSuffix!70 testedP!110 lt!2034533 lt!2034542))))

(declare-fun getSuffix!3019 (List!56978 List!56978) List!56978)

(assert (=> b!4937022 (= lt!2034533 (getSuffix!3019 lt!2034542 testedP!110))))

(declare-fun b!4937023 () Bool)

(assert (=> b!4937023 (= e!3084775 (not e!3084767))))

(declare-fun res!2106992 () Bool)

(assert (=> b!4937023 (=> res!2106992 e!3084767)))

(assert (=> b!4937023 (= res!2106992 (not (isPrefix!5035 testedP!110 lt!2034542)))))

(assert (=> b!4937023 (isPrefix!5035 testedP!110 lt!2034536)))

(declare-fun lt!2034547 () Unit!147573)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3259 (List!56978 List!56978) Unit!147573)

(assert (=> b!4937023 (= lt!2034547 (lemmaConcatTwoListThenFirstIsPrefix!3259 testedP!110 testedSuffix!70))))

(declare-fun b!4937024 () Bool)

(assert (=> b!4937024 (= e!3084762 (not (= testedSuffix!70 Nil!56854)))))

(declare-fun b!4937025 () Bool)

(declare-fun tp!1385590 () Bool)

(assert (=> b!4937025 (= e!3084763 (and tp_is_empty!36051 tp!1385590))))

(declare-fun b!4937026 () Bool)

(declare-fun e!3084766 () Bool)

(assert (=> b!4937026 (= e!3084766 e!3084768)))

(declare-fun res!2107001 () Bool)

(assert (=> b!4937026 (=> res!2107001 e!3084768)))

(assert (=> b!4937026 (= res!2107001 (>= lt!2034530 lt!2034528))))

(declare-fun lt!2034546 () Unit!147573)

(assert (=> b!4937026 (= lt!2034546 e!3084774)))

(declare-fun c!841699 () Bool)

(assert (=> b!4937026 (= c!841699 (= lt!2034530 lt!2034528))))

(assert (=> b!4937026 (<= lt!2034530 (size!37664 lt!2034542))))

(declare-fun lt!2034544 () Unit!147573)

(declare-fun lemmaIsPrefixThenSmallerEqSize!723 (List!56978 List!56978) Unit!147573)

(assert (=> b!4937026 (= lt!2034544 (lemmaIsPrefixThenSmallerEqSize!723 testedP!110 lt!2034542))))

(declare-fun b!4937027 () Bool)

(declare-fun Unit!147576 () Unit!147573)

(assert (=> b!4937027 (= e!3084774 Unit!147576)))

(declare-fun b!4937028 () Bool)

(assert (=> b!4937028 (= e!3084770 e!3084766)))

(declare-fun res!2106999 () Bool)

(assert (=> b!4937028 (=> res!2106999 e!3084766)))

(assert (=> b!4937028 (= res!2106999 (not (= lt!2034531 (head!10574 testedSuffix!70))))))

(declare-fun apply!13766 (BalanceConc!29322 Int) C!27104)

(assert (=> b!4937028 (= lt!2034531 (apply!13766 totalInput!685 testedPSize!70))))

(declare-fun drop!2268 (List!56978 Int) List!56978)

(declare-fun apply!13767 (List!56978 Int) C!27104)

(assert (=> b!4937028 (= (head!10574 (drop!2268 lt!2034542 testedPSize!70)) (apply!13767 lt!2034542 testedPSize!70))))

(declare-fun lt!2034537 () Unit!147573)

(declare-fun lemmaDropApply!1326 (List!56978 Int) Unit!147573)

(assert (=> b!4937028 (= lt!2034537 (lemmaDropApply!1326 lt!2034542 testedPSize!70))))

(assert (=> b!4937028 (not (or (not (= lt!2034545 testedP!110)) (not (= lt!2034543 testedSuffix!70))))))

(declare-fun lt!2034535 () Unit!147573)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!703 (List!56978 List!56978 List!56978 List!56978) Unit!147573)

(assert (=> b!4937028 (= lt!2034535 (lemmaConcatSameAndSameSizesThenSameLists!703 lt!2034545 lt!2034543 testedP!110 testedSuffix!70))))

(declare-fun b!4937029 () Bool)

(declare-fun res!2106997 () Bool)

(assert (=> b!4937029 (=> res!2106997 e!3084770)))

(assert (=> b!4937029 (= res!2106997 (not (= (size!37665 (_1!33990 lt!2034541)) testedPSize!70)))))

(assert (= (and start!519104 res!2106995) b!4937016))

(assert (= (and b!4937016 res!2106994) b!4937021))

(assert (= (and b!4937021 res!2107002) b!4937023))

(assert (= (and b!4937023 (not res!2106992)) b!4937022))

(assert (= (and b!4937022 (not res!2106993)) b!4937019))

(assert (= (and b!4937019 (not res!2106998)) b!4937017))

(assert (= (and b!4937017 (not res!2106996)) b!4937029))

(assert (= (and b!4937029 (not res!2106997)) b!4937028))

(assert (= (and b!4937028 (not res!2106999)) b!4937026))

(assert (= (and b!4937026 c!841699) b!4937013))

(assert (= (and b!4937026 (not c!841699)) b!4937027))

(assert (= (and b!4937026 (not res!2107001)) b!4937020))

(assert (= (and b!4937020 (not res!2107000)) b!4937024))

(get-info :version)

(assert (= (and start!519104 ((_ is Cons!56854) testedP!110)) b!4937014))

(assert (= (and start!519104 condSetEmpty!27826) setIsEmpty!27826))

(assert (= (and start!519104 (not condSetEmpty!27826)) setNonEmpty!27826))

(assert (= setNonEmpty!27826 b!4937015))

(assert (= start!519104 b!4937018))

(assert (= (and start!519104 ((_ is Cons!56854) testedSuffix!70)) b!4937025))

(declare-fun m!5958722 () Bool)

(assert (=> b!4937013 m!5958722))

(declare-fun m!5958724 () Bool)

(assert (=> b!4937013 m!5958724))

(declare-fun m!5958726 () Bool)

(assert (=> b!4937013 m!5958726))

(declare-fun m!5958728 () Bool)

(assert (=> b!4937023 m!5958728))

(declare-fun m!5958730 () Bool)

(assert (=> b!4937023 m!5958730))

(declare-fun m!5958732 () Bool)

(assert (=> b!4937023 m!5958732))

(declare-fun m!5958734 () Bool)

(assert (=> b!4937020 m!5958734))

(declare-fun m!5958736 () Bool)

(assert (=> b!4937020 m!5958736))

(declare-fun m!5958738 () Bool)

(assert (=> b!4937020 m!5958738))

(declare-fun m!5958740 () Bool)

(assert (=> b!4937020 m!5958740))

(declare-fun m!5958742 () Bool)

(assert (=> b!4937020 m!5958742))

(declare-fun m!5958744 () Bool)

(assert (=> b!4937020 m!5958744))

(assert (=> b!4937020 m!5958740))

(declare-fun m!5958746 () Bool)

(assert (=> b!4937020 m!5958746))

(assert (=> b!4937020 m!5958738))

(declare-fun m!5958748 () Bool)

(assert (=> b!4937020 m!5958748))

(declare-fun m!5958750 () Bool)

(assert (=> b!4937020 m!5958750))

(declare-fun m!5958752 () Bool)

(assert (=> b!4937026 m!5958752))

(declare-fun m!5958754 () Bool)

(assert (=> b!4937026 m!5958754))

(declare-fun m!5958756 () Bool)

(assert (=> b!4937028 m!5958756))

(declare-fun m!5958758 () Bool)

(assert (=> b!4937028 m!5958758))

(declare-fun m!5958760 () Bool)

(assert (=> b!4937028 m!5958760))

(declare-fun m!5958762 () Bool)

(assert (=> b!4937028 m!5958762))

(declare-fun m!5958764 () Bool)

(assert (=> b!4937028 m!5958764))

(declare-fun m!5958766 () Bool)

(assert (=> b!4937028 m!5958766))

(assert (=> b!4937028 m!5958766))

(declare-fun m!5958768 () Bool)

(assert (=> b!4937028 m!5958768))

(declare-fun m!5958770 () Bool)

(assert (=> b!4937017 m!5958770))

(declare-fun m!5958772 () Bool)

(assert (=> b!4937017 m!5958772))

(declare-fun m!5958774 () Bool)

(assert (=> b!4937017 m!5958774))

(declare-fun m!5958776 () Bool)

(assert (=> b!4937017 m!5958776))

(declare-fun m!5958778 () Bool)

(assert (=> b!4937021 m!5958778))

(declare-fun m!5958780 () Bool)

(assert (=> start!519104 m!5958780))

(declare-fun m!5958782 () Bool)

(assert (=> start!519104 m!5958782))

(declare-fun m!5958784 () Bool)

(assert (=> start!519104 m!5958784))

(declare-fun m!5958786 () Bool)

(assert (=> b!4937016 m!5958786))

(declare-fun m!5958788 () Bool)

(assert (=> setNonEmpty!27826 m!5958788))

(declare-fun m!5958790 () Bool)

(assert (=> b!4937029 m!5958790))

(declare-fun m!5958792 () Bool)

(assert (=> b!4937022 m!5958792))

(declare-fun m!5958794 () Bool)

(assert (=> b!4937022 m!5958794))

(declare-fun m!5958796 () Bool)

(assert (=> b!4937022 m!5958796))

(declare-fun m!5958798 () Bool)

(assert (=> b!4937018 m!5958798))

(check-sat (not b!4937018) (not b!4937023) (not b!4937017) (not b!4937015) (not b!4937028) (not b!4937013) (not setNonEmpty!27826) (not b!4937025) (not b!4937020) (not b!4937029) (not b!4937021) (not b!4937026) (not b!4937016) (not b!4937014) (not b!4937022) (not start!519104) tp_is_empty!36051)
(check-sat)
(get-model)

(declare-fun d!1589304 () Bool)

(declare-fun e!3084800 () Bool)

(assert (=> d!1589304 e!3084800))

(declare-fun res!2107032 () Bool)

(assert (=> d!1589304 (=> res!2107032 e!3084800)))

(declare-fun lt!2034557 () Bool)

(assert (=> d!1589304 (= res!2107032 (not lt!2034557))))

(declare-fun e!3084801 () Bool)

(assert (=> d!1589304 (= lt!2034557 e!3084801)))

(declare-fun res!2107031 () Bool)

(assert (=> d!1589304 (=> res!2107031 e!3084801)))

(assert (=> d!1589304 (= res!2107031 ((_ is Nil!56854) testedP!110))))

(assert (=> d!1589304 (= (isPrefix!5035 testedP!110 lt!2034542) lt!2034557)))

(declare-fun b!4937068 () Bool)

(declare-fun e!3084799 () Bool)

(assert (=> b!4937068 (= e!3084799 (isPrefix!5035 (tail!9713 testedP!110) (tail!9713 lt!2034542)))))

(declare-fun b!4937069 () Bool)

(assert (=> b!4937069 (= e!3084800 (>= (size!37664 lt!2034542) (size!37664 testedP!110)))))

(declare-fun b!4937067 () Bool)

(declare-fun res!2107034 () Bool)

(assert (=> b!4937067 (=> (not res!2107034) (not e!3084799))))

(assert (=> b!4937067 (= res!2107034 (= (head!10574 testedP!110) (head!10574 lt!2034542)))))

(declare-fun b!4937066 () Bool)

(assert (=> b!4937066 (= e!3084801 e!3084799)))

(declare-fun res!2107033 () Bool)

(assert (=> b!4937066 (=> (not res!2107033) (not e!3084799))))

(assert (=> b!4937066 (= res!2107033 (not ((_ is Nil!56854) lt!2034542)))))

(assert (= (and d!1589304 (not res!2107031)) b!4937066))

(assert (= (and b!4937066 res!2107033) b!4937067))

(assert (= (and b!4937067 res!2107034) b!4937068))

(assert (= (and d!1589304 (not res!2107032)) b!4937069))

(declare-fun m!5958834 () Bool)

(assert (=> b!4937068 m!5958834))

(declare-fun m!5958836 () Bool)

(assert (=> b!4937068 m!5958836))

(assert (=> b!4937068 m!5958834))

(assert (=> b!4937068 m!5958836))

(declare-fun m!5958838 () Bool)

(assert (=> b!4937068 m!5958838))

(assert (=> b!4937069 m!5958752))

(assert (=> b!4937069 m!5958786))

(declare-fun m!5958840 () Bool)

(assert (=> b!4937067 m!5958840))

(declare-fun m!5958842 () Bool)

(assert (=> b!4937067 m!5958842))

(assert (=> b!4937023 d!1589304))

(declare-fun d!1589316 () Bool)

(declare-fun e!3084803 () Bool)

(assert (=> d!1589316 e!3084803))

(declare-fun res!2107036 () Bool)

(assert (=> d!1589316 (=> res!2107036 e!3084803)))

(declare-fun lt!2034558 () Bool)

(assert (=> d!1589316 (= res!2107036 (not lt!2034558))))

(declare-fun e!3084804 () Bool)

(assert (=> d!1589316 (= lt!2034558 e!3084804)))

(declare-fun res!2107035 () Bool)

(assert (=> d!1589316 (=> res!2107035 e!3084804)))

(assert (=> d!1589316 (= res!2107035 ((_ is Nil!56854) testedP!110))))

(assert (=> d!1589316 (= (isPrefix!5035 testedP!110 lt!2034536) lt!2034558)))

(declare-fun b!4937072 () Bool)

(declare-fun e!3084802 () Bool)

(assert (=> b!4937072 (= e!3084802 (isPrefix!5035 (tail!9713 testedP!110) (tail!9713 lt!2034536)))))

(declare-fun b!4937073 () Bool)

(assert (=> b!4937073 (= e!3084803 (>= (size!37664 lt!2034536) (size!37664 testedP!110)))))

(declare-fun b!4937071 () Bool)

(declare-fun res!2107038 () Bool)

(assert (=> b!4937071 (=> (not res!2107038) (not e!3084802))))

(assert (=> b!4937071 (= res!2107038 (= (head!10574 testedP!110) (head!10574 lt!2034536)))))

(declare-fun b!4937070 () Bool)

(assert (=> b!4937070 (= e!3084804 e!3084802)))

(declare-fun res!2107037 () Bool)

(assert (=> b!4937070 (=> (not res!2107037) (not e!3084802))))

(assert (=> b!4937070 (= res!2107037 (not ((_ is Nil!56854) lt!2034536)))))

(assert (= (and d!1589316 (not res!2107035)) b!4937070))

(assert (= (and b!4937070 res!2107037) b!4937071))

(assert (= (and b!4937071 res!2107038) b!4937072))

(assert (= (and d!1589316 (not res!2107036)) b!4937073))

(assert (=> b!4937072 m!5958834))

(declare-fun m!5958844 () Bool)

(assert (=> b!4937072 m!5958844))

(assert (=> b!4937072 m!5958834))

(assert (=> b!4937072 m!5958844))

(declare-fun m!5958846 () Bool)

(assert (=> b!4937072 m!5958846))

(declare-fun m!5958848 () Bool)

(assert (=> b!4937073 m!5958848))

(assert (=> b!4937073 m!5958786))

(assert (=> b!4937071 m!5958840))

(declare-fun m!5958850 () Bool)

(assert (=> b!4937071 m!5958850))

(assert (=> b!4937023 d!1589316))

(declare-fun d!1589318 () Bool)

(assert (=> d!1589318 (isPrefix!5035 testedP!110 (++!12404 testedP!110 testedSuffix!70))))

(declare-fun lt!2034564 () Unit!147573)

(declare-fun choose!36308 (List!56978 List!56978) Unit!147573)

(assert (=> d!1589318 (= lt!2034564 (choose!36308 testedP!110 testedSuffix!70))))

(assert (=> d!1589318 (= (lemmaConcatTwoListThenFirstIsPrefix!3259 testedP!110 testedSuffix!70) lt!2034564)))

(declare-fun bs!1180838 () Bool)

(assert (= bs!1180838 d!1589318))

(assert (=> bs!1180838 m!5958782))

(assert (=> bs!1180838 m!5958782))

(declare-fun m!5958856 () Bool)

(assert (=> bs!1180838 m!5958856))

(declare-fun m!5958858 () Bool)

(assert (=> bs!1180838 m!5958858))

(assert (=> b!4937023 d!1589318))

(declare-fun d!1589322 () Bool)

(assert (=> d!1589322 (isPrefix!5035 lt!2034542 lt!2034542)))

(declare-fun lt!2034567 () Unit!147573)

(declare-fun choose!36309 (List!56978 List!56978) Unit!147573)

(assert (=> d!1589322 (= lt!2034567 (choose!36309 lt!2034542 lt!2034542))))

(assert (=> d!1589322 (= (lemmaIsPrefixRefl!3401 lt!2034542 lt!2034542) lt!2034567)))

(declare-fun bs!1180839 () Bool)

(assert (= bs!1180839 d!1589322))

(assert (=> bs!1180839 m!5958724))

(declare-fun m!5958860 () Bool)

(assert (=> bs!1180839 m!5958860))

(assert (=> b!4937013 d!1589322))

(declare-fun d!1589324 () Bool)

(declare-fun e!3084806 () Bool)

(assert (=> d!1589324 e!3084806))

(declare-fun res!2107040 () Bool)

(assert (=> d!1589324 (=> res!2107040 e!3084806)))

(declare-fun lt!2034568 () Bool)

(assert (=> d!1589324 (= res!2107040 (not lt!2034568))))

(declare-fun e!3084807 () Bool)

(assert (=> d!1589324 (= lt!2034568 e!3084807)))

(declare-fun res!2107039 () Bool)

(assert (=> d!1589324 (=> res!2107039 e!3084807)))

(assert (=> d!1589324 (= res!2107039 ((_ is Nil!56854) lt!2034542))))

(assert (=> d!1589324 (= (isPrefix!5035 lt!2034542 lt!2034542) lt!2034568)))

(declare-fun b!4937076 () Bool)

(declare-fun e!3084805 () Bool)

(assert (=> b!4937076 (= e!3084805 (isPrefix!5035 (tail!9713 lt!2034542) (tail!9713 lt!2034542)))))

(declare-fun b!4937077 () Bool)

(assert (=> b!4937077 (= e!3084806 (>= (size!37664 lt!2034542) (size!37664 lt!2034542)))))

(declare-fun b!4937075 () Bool)

(declare-fun res!2107042 () Bool)

(assert (=> b!4937075 (=> (not res!2107042) (not e!3084805))))

(assert (=> b!4937075 (= res!2107042 (= (head!10574 lt!2034542) (head!10574 lt!2034542)))))

(declare-fun b!4937074 () Bool)

(assert (=> b!4937074 (= e!3084807 e!3084805)))

(declare-fun res!2107041 () Bool)

(assert (=> b!4937074 (=> (not res!2107041) (not e!3084805))))

(assert (=> b!4937074 (= res!2107041 (not ((_ is Nil!56854) lt!2034542)))))

(assert (= (and d!1589324 (not res!2107039)) b!4937074))

(assert (= (and b!4937074 res!2107041) b!4937075))

(assert (= (and b!4937075 res!2107042) b!4937076))

(assert (= (and d!1589324 (not res!2107040)) b!4937077))

(assert (=> b!4937076 m!5958836))

(assert (=> b!4937076 m!5958836))

(assert (=> b!4937076 m!5958836))

(assert (=> b!4937076 m!5958836))

(declare-fun m!5958862 () Bool)

(assert (=> b!4937076 m!5958862))

(assert (=> b!4937077 m!5958752))

(assert (=> b!4937077 m!5958752))

(assert (=> b!4937075 m!5958842))

(assert (=> b!4937075 m!5958842))

(assert (=> b!4937013 d!1589324))

(declare-fun d!1589326 () Bool)

(assert (=> d!1589326 (= lt!2034542 testedP!110)))

(declare-fun lt!2034571 () Unit!147573)

(declare-fun choose!36310 (List!56978 List!56978 List!56978) Unit!147573)

(assert (=> d!1589326 (= lt!2034571 (choose!36310 lt!2034542 testedP!110 lt!2034542))))

(assert (=> d!1589326 (isPrefix!5035 lt!2034542 lt!2034542)))

(assert (=> d!1589326 (= (lemmaIsPrefixSameLengthThenSameList!1159 lt!2034542 testedP!110 lt!2034542) lt!2034571)))

(declare-fun bs!1180840 () Bool)

(assert (= bs!1180840 d!1589326))

(declare-fun m!5958864 () Bool)

(assert (=> bs!1180840 m!5958864))

(assert (=> bs!1180840 m!5958724))

(assert (=> b!4937013 d!1589326))

(declare-fun bs!1180853 () Bool)

(declare-fun b!4937167 () Bool)

(declare-fun d!1589328 () Bool)

(assert (= bs!1180853 (and b!4937167 d!1589328)))

(declare-fun lambda!245962 () Int)

(declare-fun lambda!245961 () Int)

(assert (=> bs!1180853 (not (= lambda!245962 lambda!245961))))

(declare-fun bs!1180854 () Bool)

(declare-fun b!4937168 () Bool)

(assert (= bs!1180854 (and b!4937168 d!1589328)))

(declare-fun lambda!245963 () Int)

(assert (=> bs!1180854 (not (= lambda!245963 lambda!245961))))

(declare-fun bs!1180855 () Bool)

(assert (= bs!1180855 (and b!4937168 b!4937167)))

(assert (=> bs!1180855 (= lambda!245963 lambda!245962)))

(declare-datatypes ((List!56980 0))(
  ( (Nil!56856) (Cons!56856 (h!63304 Context!6158) (t!367470 List!56980)) )
))
(declare-fun lt!2034636 () List!56980)

(declare-fun call!344500 () Bool)

(declare-fun bm!344495 () Bool)

(declare-fun lt!2034635 () List!56980)

(declare-fun c!841743 () Bool)

(declare-fun exists!1292 (List!56980 Int) Bool)

(assert (=> bm!344495 (= call!344500 (exists!1292 (ite c!841743 lt!2034635 lt!2034636) (ite c!841743 lambda!245962 lambda!245963)))))

(declare-fun e!3084866 () Unit!147573)

(declare-fun Unit!147577 () Unit!147573)

(assert (=> b!4937168 (= e!3084866 Unit!147577)))

(declare-fun call!344501 () List!56980)

(assert (=> b!4937168 (= lt!2034636 call!344501)))

(declare-fun lt!2034634 () Unit!147573)

(declare-fun lemmaForallThenNotExists!193 (List!56980 Int) Unit!147573)

(assert (=> b!4937168 (= lt!2034634 (lemmaForallThenNotExists!193 lt!2034636 lambda!245961))))

(assert (=> b!4937168 (not call!344500)))

(declare-fun lt!2034637 () Unit!147573)

(assert (=> b!4937168 (= lt!2034637 lt!2034634)))

(declare-fun Unit!147578 () Unit!147573)

(assert (=> b!4937167 (= e!3084866 Unit!147578)))

(assert (=> b!4937167 (= lt!2034635 call!344501)))

(declare-fun lt!2034638 () Unit!147573)

(declare-fun lemmaNotForallThenExists!210 (List!56980 Int) Unit!147573)

(assert (=> b!4937167 (= lt!2034638 (lemmaNotForallThenExists!210 lt!2034635 lambda!245961))))

(assert (=> b!4937167 call!344500))

(declare-fun lt!2034631 () Unit!147573)

(assert (=> b!4937167 (= lt!2034631 lt!2034638)))

(declare-fun bm!344496 () Bool)

(declare-fun toList!7972 ((InoxSet Context!6158)) List!56980)

(assert (=> bm!344496 (= call!344501 (toList!7972 z!3568))))

(declare-fun lt!2034632 () Bool)

(declare-datatypes ((Option!14190 0))(
  ( (None!14189) (Some!14189 (v!50161 List!56978)) )
))
(declare-fun isEmpty!30617 (Option!14190) Bool)

(declare-fun getLanguageWitness!650 ((InoxSet Context!6158)) Option!14190)

(assert (=> d!1589328 (= lt!2034632 (isEmpty!30617 (getLanguageWitness!650 z!3568)))))

(declare-fun forall!13202 ((InoxSet Context!6158) Int) Bool)

(assert (=> d!1589328 (= lt!2034632 (forall!13202 z!3568 lambda!245961))))

(declare-fun lt!2034633 () Unit!147573)

(assert (=> d!1589328 (= lt!2034633 e!3084866)))

(assert (=> d!1589328 (= c!841743 (not (forall!13202 z!3568 lambda!245961)))))

(assert (=> d!1589328 (= (lostCauseZipper!755 z!3568) lt!2034632)))

(assert (= (and d!1589328 c!841743) b!4937167))

(assert (= (and d!1589328 (not c!841743)) b!4937168))

(assert (= (or b!4937167 b!4937168) bm!344495))

(assert (= (or b!4937167 b!4937168) bm!344496))

(declare-fun m!5958996 () Bool)

(assert (=> b!4937167 m!5958996))

(declare-fun m!5958998 () Bool)

(assert (=> bm!344495 m!5958998))

(declare-fun m!5959000 () Bool)

(assert (=> bm!344496 m!5959000))

(declare-fun m!5959002 () Bool)

(assert (=> b!4937168 m!5959002))

(declare-fun m!5959004 () Bool)

(assert (=> d!1589328 m!5959004))

(assert (=> d!1589328 m!5959004))

(declare-fun m!5959006 () Bool)

(assert (=> d!1589328 m!5959006))

(declare-fun m!5959008 () Bool)

(assert (=> d!1589328 m!5959008))

(assert (=> d!1589328 m!5959008))

(assert (=> b!4937022 d!1589328))

(declare-fun d!1589388 () Bool)

(assert (=> d!1589388 (= testedSuffix!70 lt!2034533)))

(declare-fun lt!2034648 () Unit!147573)

(declare-fun choose!36311 (List!56978 List!56978 List!56978 List!56978 List!56978) Unit!147573)

(assert (=> d!1589388 (= lt!2034648 (choose!36311 testedP!110 testedSuffix!70 testedP!110 lt!2034533 lt!2034542))))

(assert (=> d!1589388 (isPrefix!5035 testedP!110 lt!2034542)))

(assert (=> d!1589388 (= (lemmaSamePrefixThenSameSuffix!2433 testedP!110 testedSuffix!70 testedP!110 lt!2034533 lt!2034542) lt!2034648)))

(declare-fun bs!1180858 () Bool)

(assert (= bs!1180858 d!1589388))

(declare-fun m!5959012 () Bool)

(assert (=> bs!1180858 m!5959012))

(assert (=> bs!1180858 m!5958728))

(assert (=> b!4937022 d!1589388))

(declare-fun d!1589392 () Bool)

(declare-fun lt!2034651 () List!56978)

(assert (=> d!1589392 (= (++!12404 testedP!110 lt!2034651) lt!2034542)))

(declare-fun e!3084872 () List!56978)

(assert (=> d!1589392 (= lt!2034651 e!3084872)))

(declare-fun c!841746 () Bool)

(assert (=> d!1589392 (= c!841746 ((_ is Cons!56854) testedP!110))))

(assert (=> d!1589392 (>= (size!37664 lt!2034542) (size!37664 testedP!110))))

(assert (=> d!1589392 (= (getSuffix!3019 lt!2034542 testedP!110) lt!2034651)))

(declare-fun b!4937177 () Bool)

(assert (=> b!4937177 (= e!3084872 (getSuffix!3019 (tail!9713 lt!2034542) (t!367468 testedP!110)))))

(declare-fun b!4937178 () Bool)

(assert (=> b!4937178 (= e!3084872 lt!2034542)))

(assert (= (and d!1589392 c!841746) b!4937177))

(assert (= (and d!1589392 (not c!841746)) b!4937178))

(declare-fun m!5959014 () Bool)

(assert (=> d!1589392 m!5959014))

(assert (=> d!1589392 m!5958752))

(assert (=> d!1589392 m!5958786))

(assert (=> b!4937177 m!5958836))

(assert (=> b!4937177 m!5958836))

(declare-fun m!5959016 () Bool)

(assert (=> b!4937177 m!5959016))

(assert (=> b!4937022 d!1589392))

(declare-fun b!4937193 () Bool)

(declare-fun res!2107087 () Bool)

(declare-fun e!3084882 () Bool)

(assert (=> b!4937193 (=> (not res!2107087) (not e!3084882))))

(declare-fun lt!2034664 () List!56978)

(assert (=> b!4937193 (= res!2107087 (= (size!37664 lt!2034664) (+ (size!37664 lt!2034545) (size!37664 lt!2034543))))))

(declare-fun b!4937192 () Bool)

(declare-fun e!3084881 () List!56978)

(assert (=> b!4937192 (= e!3084881 (Cons!56854 (h!63302 lt!2034545) (++!12404 (t!367468 lt!2034545) lt!2034543)))))

(declare-fun d!1589394 () Bool)

(assert (=> d!1589394 e!3084882))

(declare-fun res!2107086 () Bool)

(assert (=> d!1589394 (=> (not res!2107086) (not e!3084882))))

(declare-fun content!10110 (List!56978) (InoxSet C!27104))

(assert (=> d!1589394 (= res!2107086 (= (content!10110 lt!2034664) ((_ map or) (content!10110 lt!2034545) (content!10110 lt!2034543))))))

(assert (=> d!1589394 (= lt!2034664 e!3084881)))

(declare-fun c!841755 () Bool)

(assert (=> d!1589394 (= c!841755 ((_ is Nil!56854) lt!2034545))))

(assert (=> d!1589394 (= (++!12404 lt!2034545 lt!2034543) lt!2034664)))

(declare-fun b!4937191 () Bool)

(assert (=> b!4937191 (= e!3084881 lt!2034543)))

(declare-fun b!4937194 () Bool)

(assert (=> b!4937194 (= e!3084882 (or (not (= lt!2034543 Nil!56854)) (= lt!2034664 lt!2034545)))))

(assert (= (and d!1589394 c!841755) b!4937191))

(assert (= (and d!1589394 (not c!841755)) b!4937192))

(assert (= (and d!1589394 res!2107086) b!4937193))

(assert (= (and b!4937193 res!2107087) b!4937194))

(declare-fun m!5959018 () Bool)

(assert (=> b!4937193 m!5959018))

(declare-fun m!5959020 () Bool)

(assert (=> b!4937193 m!5959020))

(declare-fun m!5959022 () Bool)

(assert (=> b!4937193 m!5959022))

(declare-fun m!5959024 () Bool)

(assert (=> b!4937192 m!5959024))

(declare-fun m!5959026 () Bool)

(assert (=> d!1589394 m!5959026))

(declare-fun m!5959028 () Bool)

(assert (=> d!1589394 m!5959028))

(declare-fun m!5959030 () Bool)

(assert (=> d!1589394 m!5959030))

(assert (=> b!4937017 d!1589394))

(declare-fun d!1589396 () Bool)

(declare-fun list!18068 (Conc!14946) List!56978)

(assert (=> d!1589396 (= (list!18066 (_2!33990 lt!2034541)) (list!18068 (c!841700 (_2!33990 lt!2034541))))))

(declare-fun bs!1180859 () Bool)

(assert (= bs!1180859 d!1589396))

(declare-fun m!5959032 () Bool)

(assert (=> bs!1180859 m!5959032))

(assert (=> b!4937017 d!1589396))

(declare-fun d!1589398 () Bool)

(assert (=> d!1589398 (= (list!18066 (_1!33990 lt!2034541)) (list!18068 (c!841700 (_1!33990 lt!2034541))))))

(declare-fun bs!1180860 () Bool)

(assert (= bs!1180860 d!1589398))

(declare-fun m!5959034 () Bool)

(assert (=> bs!1180860 m!5959034))

(assert (=> b!4937017 d!1589398))

(declare-fun d!1589400 () Bool)

(declare-fun e!3084904 () Bool)

(assert (=> d!1589400 e!3084904))

(declare-fun res!2107092 () Bool)

(assert (=> d!1589400 (=> (not res!2107092) (not e!3084904))))

(declare-fun lt!2034690 () tuple2!61374)

(declare-fun isBalanced!4123 (Conc!14946) Bool)

(assert (=> d!1589400 (= res!2107092 (isBalanced!4123 (c!841700 (_1!33990 lt!2034690))))))

(declare-datatypes ((tuple2!61380 0))(
  ( (tuple2!61381 (_1!33993 Conc!14946) (_2!33993 Conc!14946)) )
))
(declare-fun lt!2034689 () tuple2!61380)

(assert (=> d!1589400 (= lt!2034690 (tuple2!61375 (BalanceConc!29323 (_1!33993 lt!2034689)) (BalanceConc!29323 (_2!33993 lt!2034689))))))

(declare-fun splitAt!347 (Conc!14946 Int) tuple2!61380)

(assert (=> d!1589400 (= lt!2034689 (splitAt!347 (c!841700 totalInput!685) testedPSize!70))))

(assert (=> d!1589400 (isBalanced!4123 (c!841700 totalInput!685))))

(assert (=> d!1589400 (= (splitAt!345 totalInput!685 testedPSize!70) lt!2034690)))

(declare-fun b!4937231 () Bool)

(declare-fun res!2107093 () Bool)

(assert (=> b!4937231 (=> (not res!2107093) (not e!3084904))))

(assert (=> b!4937231 (= res!2107093 (isBalanced!4123 (c!841700 (_2!33990 lt!2034690))))))

(declare-fun b!4937232 () Bool)

(declare-datatypes ((tuple2!61382 0))(
  ( (tuple2!61383 (_1!33994 List!56978) (_2!33994 List!56978)) )
))
(declare-fun splitAtIndex!129 (List!56978 Int) tuple2!61382)

(assert (=> b!4937232 (= e!3084904 (= (tuple2!61383 (list!18066 (_1!33990 lt!2034690)) (list!18066 (_2!33990 lt!2034690))) (splitAtIndex!129 (list!18066 totalInput!685) testedPSize!70)))))

(assert (= (and d!1589400 res!2107092) b!4937231))

(assert (= (and b!4937231 res!2107093) b!4937232))

(declare-fun m!5959062 () Bool)

(assert (=> d!1589400 m!5959062))

(declare-fun m!5959064 () Bool)

(assert (=> d!1589400 m!5959064))

(declare-fun m!5959066 () Bool)

(assert (=> d!1589400 m!5959066))

(declare-fun m!5959068 () Bool)

(assert (=> b!4937231 m!5959068))

(declare-fun m!5959070 () Bool)

(assert (=> b!4937232 m!5959070))

(declare-fun m!5959072 () Bool)

(assert (=> b!4937232 m!5959072))

(assert (=> b!4937232 m!5958780))

(assert (=> b!4937232 m!5958780))

(declare-fun m!5959074 () Bool)

(assert (=> b!4937232 m!5959074))

(assert (=> b!4937017 d!1589400))

(declare-fun d!1589406 () Bool)

(declare-fun lt!2034693 () Int)

(assert (=> d!1589406 (>= lt!2034693 0)))

(declare-fun e!3084910 () Int)

(assert (=> d!1589406 (= lt!2034693 e!3084910)))

(declare-fun c!841766 () Bool)

(assert (=> d!1589406 (= c!841766 ((_ is Nil!56854) lt!2034542))))

(assert (=> d!1589406 (= (size!37664 lt!2034542) lt!2034693)))

(declare-fun b!4937240 () Bool)

(assert (=> b!4937240 (= e!3084910 0)))

(declare-fun b!4937241 () Bool)

(assert (=> b!4937241 (= e!3084910 (+ 1 (size!37664 (t!367468 lt!2034542))))))

(assert (= (and d!1589406 c!841766) b!4937240))

(assert (= (and d!1589406 (not c!841766)) b!4937241))

(declare-fun m!5959078 () Bool)

(assert (=> b!4937241 m!5959078))

(assert (=> b!4937026 d!1589406))

(declare-fun d!1589408 () Bool)

(assert (=> d!1589408 (<= (size!37664 testedP!110) (size!37664 lt!2034542))))

(declare-fun lt!2034696 () Unit!147573)

(declare-fun choose!36312 (List!56978 List!56978) Unit!147573)

(assert (=> d!1589408 (= lt!2034696 (choose!36312 testedP!110 lt!2034542))))

(assert (=> d!1589408 (isPrefix!5035 testedP!110 lt!2034542)))

(assert (=> d!1589408 (= (lemmaIsPrefixThenSmallerEqSize!723 testedP!110 lt!2034542) lt!2034696)))

(declare-fun bs!1180868 () Bool)

(assert (= bs!1180868 d!1589408))

(assert (=> bs!1180868 m!5958786))

(assert (=> bs!1180868 m!5958752))

(declare-fun m!5959080 () Bool)

(assert (=> bs!1180868 m!5959080))

(assert (=> bs!1180868 m!5958728))

(assert (=> b!4937026 d!1589408))

(declare-fun d!1589410 () Bool)

(declare-fun lambda!245981 () Int)

(declare-fun forall!13203 (List!56979 Int) Bool)

(assert (=> d!1589410 (= (inv!73895 setElem!27826) (forall!13203 (exprs!3579 setElem!27826) lambda!245981))))

(declare-fun bs!1180869 () Bool)

(assert (= bs!1180869 d!1589410))

(declare-fun m!5959082 () Bool)

(assert (=> bs!1180869 m!5959082))

(assert (=> setNonEmpty!27826 d!1589410))

(declare-fun d!1589412 () Bool)

(declare-fun lt!2034697 () Int)

(assert (=> d!1589412 (>= lt!2034697 0)))

(declare-fun e!3084911 () Int)

(assert (=> d!1589412 (= lt!2034697 e!3084911)))

(declare-fun c!841767 () Bool)

(assert (=> d!1589412 (= c!841767 ((_ is Nil!56854) testedP!110))))

(assert (=> d!1589412 (= (size!37664 testedP!110) lt!2034697)))

(declare-fun b!4937242 () Bool)

(assert (=> b!4937242 (= e!3084911 0)))

(declare-fun b!4937243 () Bool)

(assert (=> b!4937243 (= e!3084911 (+ 1 (size!37664 (t!367468 testedP!110))))))

(assert (= (and d!1589412 c!841767) b!4937242))

(assert (= (and d!1589412 (not c!841767)) b!4937243))

(declare-fun m!5959084 () Bool)

(assert (=> b!4937243 m!5959084))

(assert (=> b!4937016 d!1589412))

(declare-fun d!1589414 () Bool)

(declare-fun c!841770 () Bool)

(assert (=> d!1589414 (= c!841770 ((_ is Node!14946) (c!841700 totalInput!685)))))

(declare-fun e!3084916 () Bool)

(assert (=> d!1589414 (= (inv!73896 (c!841700 totalInput!685)) e!3084916)))

(declare-fun b!4937250 () Bool)

(declare-fun inv!73899 (Conc!14946) Bool)

(assert (=> b!4937250 (= e!3084916 (inv!73899 (c!841700 totalInput!685)))))

(declare-fun b!4937251 () Bool)

(declare-fun e!3084917 () Bool)

(assert (=> b!4937251 (= e!3084916 e!3084917)))

(declare-fun res!2107096 () Bool)

(assert (=> b!4937251 (= res!2107096 (not ((_ is Leaf!24852) (c!841700 totalInput!685))))))

(assert (=> b!4937251 (=> res!2107096 e!3084917)))

(declare-fun b!4937252 () Bool)

(declare-fun inv!73900 (Conc!14946) Bool)

(assert (=> b!4937252 (= e!3084917 (inv!73900 (c!841700 totalInput!685)))))

(assert (= (and d!1589414 c!841770) b!4937250))

(assert (= (and d!1589414 (not c!841770)) b!4937251))

(assert (= (and b!4937251 (not res!2107096)) b!4937252))

(declare-fun m!5959086 () Bool)

(assert (=> b!4937250 m!5959086))

(declare-fun m!5959088 () Bool)

(assert (=> b!4937252 m!5959088))

(assert (=> b!4937018 d!1589414))

(declare-fun d!1589416 () Bool)

(declare-fun lt!2034700 () Int)

(assert (=> d!1589416 (= lt!2034700 (size!37664 (list!18066 (_1!33990 lt!2034541))))))

(declare-fun size!37667 (Conc!14946) Int)

(assert (=> d!1589416 (= lt!2034700 (size!37667 (c!841700 (_1!33990 lt!2034541))))))

(assert (=> d!1589416 (= (size!37665 (_1!33990 lt!2034541)) lt!2034700)))

(declare-fun bs!1180870 () Bool)

(assert (= bs!1180870 d!1589416))

(assert (=> bs!1180870 m!5958774))

(assert (=> bs!1180870 m!5958774))

(declare-fun m!5959090 () Bool)

(assert (=> bs!1180870 m!5959090))

(declare-fun m!5959092 () Bool)

(assert (=> bs!1180870 m!5959092))

(assert (=> b!4937029 d!1589416))

(declare-fun d!1589418 () Bool)

(assert (=> d!1589418 (= (list!18066 totalInput!685) (list!18068 (c!841700 totalInput!685)))))

(declare-fun bs!1180871 () Bool)

(assert (= bs!1180871 d!1589418))

(declare-fun m!5959094 () Bool)

(assert (=> bs!1180871 m!5959094))

(assert (=> start!519104 d!1589418))

(declare-fun b!4937255 () Bool)

(declare-fun res!2107098 () Bool)

(declare-fun e!3084919 () Bool)

(assert (=> b!4937255 (=> (not res!2107098) (not e!3084919))))

(declare-fun lt!2034701 () List!56978)

(assert (=> b!4937255 (= res!2107098 (= (size!37664 lt!2034701) (+ (size!37664 testedP!110) (size!37664 testedSuffix!70))))))

(declare-fun b!4937254 () Bool)

(declare-fun e!3084918 () List!56978)

(assert (=> b!4937254 (= e!3084918 (Cons!56854 (h!63302 testedP!110) (++!12404 (t!367468 testedP!110) testedSuffix!70)))))

(declare-fun d!1589420 () Bool)

(assert (=> d!1589420 e!3084919))

(declare-fun res!2107097 () Bool)

(assert (=> d!1589420 (=> (not res!2107097) (not e!3084919))))

(assert (=> d!1589420 (= res!2107097 (= (content!10110 lt!2034701) ((_ map or) (content!10110 testedP!110) (content!10110 testedSuffix!70))))))

(assert (=> d!1589420 (= lt!2034701 e!3084918)))

(declare-fun c!841771 () Bool)

(assert (=> d!1589420 (= c!841771 ((_ is Nil!56854) testedP!110))))

(assert (=> d!1589420 (= (++!12404 testedP!110 testedSuffix!70) lt!2034701)))

(declare-fun b!4937253 () Bool)

(assert (=> b!4937253 (= e!3084918 testedSuffix!70)))

(declare-fun b!4937256 () Bool)

(assert (=> b!4937256 (= e!3084919 (or (not (= testedSuffix!70 Nil!56854)) (= lt!2034701 testedP!110)))))

(assert (= (and d!1589420 c!841771) b!4937253))

(assert (= (and d!1589420 (not c!841771)) b!4937254))

(assert (= (and d!1589420 res!2107097) b!4937255))

(assert (= (and b!4937255 res!2107098) b!4937256))

(declare-fun m!5959096 () Bool)

(assert (=> b!4937255 m!5959096))

(assert (=> b!4937255 m!5958786))

(declare-fun m!5959098 () Bool)

(assert (=> b!4937255 m!5959098))

(declare-fun m!5959100 () Bool)

(assert (=> b!4937254 m!5959100))

(declare-fun m!5959102 () Bool)

(assert (=> d!1589420 m!5959102))

(declare-fun m!5959104 () Bool)

(assert (=> d!1589420 m!5959104))

(declare-fun m!5959106 () Bool)

(assert (=> d!1589420 m!5959106))

(assert (=> start!519104 d!1589420))

(declare-fun d!1589422 () Bool)

(assert (=> d!1589422 (= (inv!73894 totalInput!685) (isBalanced!4123 (c!841700 totalInput!685)))))

(declare-fun bs!1180872 () Bool)

(assert (= bs!1180872 d!1589422))

(assert (=> bs!1180872 m!5959066))

(assert (=> start!519104 d!1589422))

(declare-fun d!1589424 () Bool)

(declare-fun e!3084933 () Bool)

(assert (=> d!1589424 e!3084933))

(declare-fun res!2107101 () Bool)

(assert (=> d!1589424 (=> (not res!2107101) (not e!3084933))))

(declare-fun lt!2034704 () List!56978)

(assert (=> d!1589424 (= res!2107101 (= ((_ map implies) (content!10110 lt!2034704) (content!10110 lt!2034542)) ((as const (InoxSet C!27104)) true)))))

(declare-fun e!3084930 () List!56978)

(assert (=> d!1589424 (= lt!2034704 e!3084930)))

(declare-fun c!841781 () Bool)

(assert (=> d!1589424 (= c!841781 ((_ is Nil!56854) lt!2034542))))

(assert (=> d!1589424 (= (drop!2268 lt!2034542 testedPSize!70) lt!2034704)))

(declare-fun b!4937275 () Bool)

(declare-fun e!3084932 () Int)

(declare-fun call!344510 () Int)

(assert (=> b!4937275 (= e!3084932 (- call!344510 testedPSize!70))))

(declare-fun b!4937276 () Bool)

(declare-fun e!3084934 () List!56978)

(assert (=> b!4937276 (= e!3084930 e!3084934)))

(declare-fun c!841782 () Bool)

(assert (=> b!4937276 (= c!841782 (<= testedPSize!70 0))))

(declare-fun b!4937277 () Bool)

(declare-fun e!3084931 () Int)

(assert (=> b!4937277 (= e!3084931 e!3084932)))

(declare-fun c!841780 () Bool)

(assert (=> b!4937277 (= c!841780 (>= testedPSize!70 call!344510))))

(declare-fun b!4937278 () Bool)

(assert (=> b!4937278 (= e!3084931 call!344510)))

(declare-fun b!4937279 () Bool)

(assert (=> b!4937279 (= e!3084934 (drop!2268 (t!367468 lt!2034542) (- testedPSize!70 1)))))

(declare-fun b!4937280 () Bool)

(assert (=> b!4937280 (= e!3084932 0)))

(declare-fun b!4937281 () Bool)

(assert (=> b!4937281 (= e!3084930 Nil!56854)))

(declare-fun bm!344505 () Bool)

(assert (=> bm!344505 (= call!344510 (size!37664 lt!2034542))))

(declare-fun b!4937282 () Bool)

(assert (=> b!4937282 (= e!3084934 lt!2034542)))

(declare-fun b!4937283 () Bool)

(assert (=> b!4937283 (= e!3084933 (= (size!37664 lt!2034704) e!3084931))))

(declare-fun c!841783 () Bool)

(assert (=> b!4937283 (= c!841783 (<= testedPSize!70 0))))

(assert (= (and d!1589424 c!841781) b!4937281))

(assert (= (and d!1589424 (not c!841781)) b!4937276))

(assert (= (and b!4937276 c!841782) b!4937282))

(assert (= (and b!4937276 (not c!841782)) b!4937279))

(assert (= (and d!1589424 res!2107101) b!4937283))

(assert (= (and b!4937283 c!841783) b!4937278))

(assert (= (and b!4937283 (not c!841783)) b!4937277))

(assert (= (and b!4937277 c!841780) b!4937280))

(assert (= (and b!4937277 (not c!841780)) b!4937275))

(assert (= (or b!4937278 b!4937277 b!4937275) bm!344505))

(declare-fun m!5959108 () Bool)

(assert (=> d!1589424 m!5959108))

(declare-fun m!5959110 () Bool)

(assert (=> d!1589424 m!5959110))

(declare-fun m!5959112 () Bool)

(assert (=> b!4937279 m!5959112))

(assert (=> bm!344505 m!5958752))

(declare-fun m!5959114 () Bool)

(assert (=> b!4937283 m!5959114))

(assert (=> b!4937028 d!1589424))

(declare-fun d!1589426 () Bool)

(assert (=> d!1589426 (= (head!10574 testedSuffix!70) (h!63302 testedSuffix!70))))

(assert (=> b!4937028 d!1589426))

(declare-fun d!1589428 () Bool)

(assert (=> d!1589428 (= (head!10574 (drop!2268 lt!2034542 testedPSize!70)) (apply!13767 lt!2034542 testedPSize!70))))

(declare-fun lt!2034707 () Unit!147573)

(declare-fun choose!36316 (List!56978 Int) Unit!147573)

(assert (=> d!1589428 (= lt!2034707 (choose!36316 lt!2034542 testedPSize!70))))

(declare-fun e!3084937 () Bool)

(assert (=> d!1589428 e!3084937))

(declare-fun res!2107104 () Bool)

(assert (=> d!1589428 (=> (not res!2107104) (not e!3084937))))

(assert (=> d!1589428 (= res!2107104 (>= testedPSize!70 0))))

(assert (=> d!1589428 (= (lemmaDropApply!1326 lt!2034542 testedPSize!70) lt!2034707)))

(declare-fun b!4937286 () Bool)

(assert (=> b!4937286 (= e!3084937 (< testedPSize!70 (size!37664 lt!2034542)))))

(assert (= (and d!1589428 res!2107104) b!4937286))

(assert (=> d!1589428 m!5958766))

(assert (=> d!1589428 m!5958766))

(assert (=> d!1589428 m!5958768))

(assert (=> d!1589428 m!5958764))

(declare-fun m!5959116 () Bool)

(assert (=> d!1589428 m!5959116))

(assert (=> b!4937286 m!5958752))

(assert (=> b!4937028 d!1589428))

(declare-fun d!1589430 () Bool)

(declare-fun lt!2034710 () C!27104)

(declare-fun contains!19480 (List!56978 C!27104) Bool)

(assert (=> d!1589430 (contains!19480 lt!2034542 lt!2034710)))

(declare-fun e!3084943 () C!27104)

(assert (=> d!1589430 (= lt!2034710 e!3084943)))

(declare-fun c!841786 () Bool)

(assert (=> d!1589430 (= c!841786 (= testedPSize!70 0))))

(declare-fun e!3084942 () Bool)

(assert (=> d!1589430 e!3084942))

(declare-fun res!2107107 () Bool)

(assert (=> d!1589430 (=> (not res!2107107) (not e!3084942))))

(assert (=> d!1589430 (= res!2107107 (<= 0 testedPSize!70))))

(assert (=> d!1589430 (= (apply!13767 lt!2034542 testedPSize!70) lt!2034710)))

(declare-fun b!4937293 () Bool)

(assert (=> b!4937293 (= e!3084942 (< testedPSize!70 (size!37664 lt!2034542)))))

(declare-fun b!4937294 () Bool)

(assert (=> b!4937294 (= e!3084943 (head!10574 lt!2034542))))

(declare-fun b!4937295 () Bool)

(assert (=> b!4937295 (= e!3084943 (apply!13767 (tail!9713 lt!2034542) (- testedPSize!70 1)))))

(assert (= (and d!1589430 res!2107107) b!4937293))

(assert (= (and d!1589430 c!841786) b!4937294))

(assert (= (and d!1589430 (not c!841786)) b!4937295))

(declare-fun m!5959118 () Bool)

(assert (=> d!1589430 m!5959118))

(assert (=> b!4937293 m!5958752))

(assert (=> b!4937294 m!5958842))

(assert (=> b!4937295 m!5958836))

(assert (=> b!4937295 m!5958836))

(declare-fun m!5959120 () Bool)

(assert (=> b!4937295 m!5959120))

(assert (=> b!4937028 d!1589430))

(declare-fun d!1589432 () Bool)

(assert (=> d!1589432 (= (head!10574 (drop!2268 lt!2034542 testedPSize!70)) (h!63302 (drop!2268 lt!2034542 testedPSize!70)))))

(assert (=> b!4937028 d!1589432))

(declare-fun d!1589434 () Bool)

(assert (=> d!1589434 (and (= lt!2034545 testedP!110) (= lt!2034543 testedSuffix!70))))

(declare-fun lt!2034713 () Unit!147573)

(declare-fun choose!36317 (List!56978 List!56978 List!56978 List!56978) Unit!147573)

(assert (=> d!1589434 (= lt!2034713 (choose!36317 lt!2034545 lt!2034543 testedP!110 testedSuffix!70))))

(assert (=> d!1589434 (= (++!12404 lt!2034545 lt!2034543) (++!12404 testedP!110 testedSuffix!70))))

(assert (=> d!1589434 (= (lemmaConcatSameAndSameSizesThenSameLists!703 lt!2034545 lt!2034543 testedP!110 testedSuffix!70) lt!2034713)))

(declare-fun bs!1180873 () Bool)

(assert (= bs!1180873 d!1589434))

(declare-fun m!5959122 () Bool)

(assert (=> bs!1180873 m!5959122))

(assert (=> bs!1180873 m!5958770))

(assert (=> bs!1180873 m!5958782))

(assert (=> b!4937028 d!1589434))

(declare-fun d!1589436 () Bool)

(declare-fun lt!2034716 () C!27104)

(assert (=> d!1589436 (= lt!2034716 (apply!13767 (list!18066 totalInput!685) testedPSize!70))))

(declare-fun apply!13769 (Conc!14946 Int) C!27104)

(assert (=> d!1589436 (= lt!2034716 (apply!13769 (c!841700 totalInput!685) testedPSize!70))))

(declare-fun e!3084946 () Bool)

(assert (=> d!1589436 e!3084946))

(declare-fun res!2107110 () Bool)

(assert (=> d!1589436 (=> (not res!2107110) (not e!3084946))))

(assert (=> d!1589436 (= res!2107110 (<= 0 testedPSize!70))))

(assert (=> d!1589436 (= (apply!13766 totalInput!685 testedPSize!70) lt!2034716)))

(declare-fun b!4937298 () Bool)

(assert (=> b!4937298 (= e!3084946 (< testedPSize!70 (size!37665 totalInput!685)))))

(assert (= (and d!1589436 res!2107110) b!4937298))

(assert (=> d!1589436 m!5958780))

(assert (=> d!1589436 m!5958780))

(declare-fun m!5959124 () Bool)

(assert (=> d!1589436 m!5959124))

(declare-fun m!5959126 () Bool)

(assert (=> d!1589436 m!5959126))

(assert (=> b!4937298 m!5958778))

(assert (=> b!4937028 d!1589436))

(declare-fun d!1589438 () Bool)

(declare-fun lt!2034717 () Int)

(assert (=> d!1589438 (= lt!2034717 (size!37664 (list!18066 totalInput!685)))))

(assert (=> d!1589438 (= lt!2034717 (size!37667 (c!841700 totalInput!685)))))

(assert (=> d!1589438 (= (size!37665 totalInput!685) lt!2034717)))

(declare-fun bs!1180874 () Bool)

(assert (= bs!1180874 d!1589438))

(assert (=> bs!1180874 m!5958780))

(assert (=> bs!1180874 m!5958780))

(declare-fun m!5959128 () Bool)

(assert (=> bs!1180874 m!5959128))

(declare-fun m!5959130 () Bool)

(assert (=> bs!1180874 m!5959130))

(assert (=> b!4937021 d!1589438))

(declare-fun b!4937301 () Bool)

(declare-fun res!2107112 () Bool)

(declare-fun e!3084948 () Bool)

(assert (=> b!4937301 (=> (not res!2107112) (not e!3084948))))

(declare-fun lt!2034718 () List!56978)

(assert (=> b!4937301 (= res!2107112 (= (size!37664 lt!2034718) (+ (size!37664 (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854))) (size!37664 lt!2034539))))))

(declare-fun e!3084947 () List!56978)

(declare-fun b!4937300 () Bool)

(assert (=> b!4937300 (= e!3084947 (Cons!56854 (h!63302 (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854))) (++!12404 (t!367468 (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854))) lt!2034539)))))

(declare-fun d!1589440 () Bool)

(assert (=> d!1589440 e!3084948))

(declare-fun res!2107111 () Bool)

(assert (=> d!1589440 (=> (not res!2107111) (not e!3084948))))

(assert (=> d!1589440 (= res!2107111 (= (content!10110 lt!2034718) ((_ map or) (content!10110 (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854))) (content!10110 lt!2034539))))))

(assert (=> d!1589440 (= lt!2034718 e!3084947)))

(declare-fun c!841787 () Bool)

(assert (=> d!1589440 (= c!841787 ((_ is Nil!56854) (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854))))))

(assert (=> d!1589440 (= (++!12404 (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854)) lt!2034539) lt!2034718)))

(declare-fun b!4937299 () Bool)

(assert (=> b!4937299 (= e!3084947 lt!2034539)))

(declare-fun b!4937302 () Bool)

(assert (=> b!4937302 (= e!3084948 (or (not (= lt!2034539 Nil!56854)) (= lt!2034718 (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854)))))))

(assert (= (and d!1589440 c!841787) b!4937299))

(assert (= (and d!1589440 (not c!841787)) b!4937300))

(assert (= (and d!1589440 res!2107111) b!4937301))

(assert (= (and b!4937301 res!2107112) b!4937302))

(declare-fun m!5959132 () Bool)

(assert (=> b!4937301 m!5959132))

(assert (=> b!4937301 m!5958740))

(declare-fun m!5959134 () Bool)

(assert (=> b!4937301 m!5959134))

(declare-fun m!5959136 () Bool)

(assert (=> b!4937301 m!5959136))

(declare-fun m!5959138 () Bool)

(assert (=> b!4937300 m!5959138))

(declare-fun m!5959140 () Bool)

(assert (=> d!1589440 m!5959140))

(assert (=> d!1589440 m!5958740))

(declare-fun m!5959142 () Bool)

(assert (=> d!1589440 m!5959142))

(declare-fun m!5959144 () Bool)

(assert (=> d!1589440 m!5959144))

(assert (=> b!4937020 d!1589440))

(declare-fun d!1589442 () Bool)

(assert (=> d!1589442 (isPrefix!5035 (++!12404 testedP!110 (Cons!56854 (head!10574 (getSuffix!3019 lt!2034542 testedP!110)) Nil!56854)) lt!2034542)))

(declare-fun lt!2034721 () Unit!147573)

(declare-fun choose!36318 (List!56978 List!56978) Unit!147573)

(assert (=> d!1589442 (= lt!2034721 (choose!36318 testedP!110 lt!2034542))))

(assert (=> d!1589442 (isPrefix!5035 testedP!110 lt!2034542)))

(assert (=> d!1589442 (= (lemmaAddHeadSuffixToPrefixStillPrefix!805 testedP!110 lt!2034542) lt!2034721)))

(declare-fun bs!1180875 () Bool)

(assert (= bs!1180875 d!1589442))

(assert (=> bs!1180875 m!5958796))

(declare-fun m!5959146 () Bool)

(assert (=> bs!1180875 m!5959146))

(declare-fun m!5959148 () Bool)

(assert (=> bs!1180875 m!5959148))

(assert (=> bs!1180875 m!5958728))

(assert (=> bs!1180875 m!5958796))

(declare-fun m!5959150 () Bool)

(assert (=> bs!1180875 m!5959150))

(assert (=> bs!1180875 m!5959148))

(declare-fun m!5959152 () Bool)

(assert (=> bs!1180875 m!5959152))

(assert (=> b!4937020 d!1589442))

(declare-fun d!1589444 () Bool)

(assert (=> d!1589444 (= (++!12404 (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854)) lt!2034539) lt!2034542)))

(declare-fun lt!2034724 () Unit!147573)

(declare-fun choose!36319 (List!56978 C!27104 List!56978 List!56978) Unit!147573)

(assert (=> d!1589444 (= lt!2034724 (choose!36319 testedP!110 lt!2034531 lt!2034539 lt!2034542))))

(assert (=> d!1589444 (= (++!12404 testedP!110 (Cons!56854 lt!2034531 lt!2034539)) lt!2034542)))

(assert (=> d!1589444 (= (lemmaMoveElementToOtherListKeepsConcatEq!1417 testedP!110 lt!2034531 lt!2034539 lt!2034542) lt!2034724)))

(declare-fun bs!1180876 () Bool)

(assert (= bs!1180876 d!1589444))

(assert (=> bs!1180876 m!5958740))

(assert (=> bs!1180876 m!5958740))

(assert (=> bs!1180876 m!5958746))

(declare-fun m!5959154 () Bool)

(assert (=> bs!1180876 m!5959154))

(declare-fun m!5959156 () Bool)

(assert (=> bs!1180876 m!5959156))

(assert (=> b!4937020 d!1589444))

(declare-fun d!1589446 () Bool)

(declare-fun e!3084950 () Bool)

(assert (=> d!1589446 e!3084950))

(declare-fun res!2107114 () Bool)

(assert (=> d!1589446 (=> res!2107114 e!3084950)))

(declare-fun lt!2034725 () Bool)

(assert (=> d!1589446 (= res!2107114 (not lt!2034725))))

(declare-fun e!3084951 () Bool)

(assert (=> d!1589446 (= lt!2034725 e!3084951)))

(declare-fun res!2107113 () Bool)

(assert (=> d!1589446 (=> res!2107113 e!3084951)))

(assert (=> d!1589446 (= res!2107113 ((_ is Nil!56854) (++!12404 testedP!110 (Cons!56854 (head!10574 lt!2034533) Nil!56854))))))

(assert (=> d!1589446 (= (isPrefix!5035 (++!12404 testedP!110 (Cons!56854 (head!10574 lt!2034533) Nil!56854)) lt!2034542) lt!2034725)))

(declare-fun e!3084949 () Bool)

(declare-fun b!4937305 () Bool)

(assert (=> b!4937305 (= e!3084949 (isPrefix!5035 (tail!9713 (++!12404 testedP!110 (Cons!56854 (head!10574 lt!2034533) Nil!56854))) (tail!9713 lt!2034542)))))

(declare-fun b!4937306 () Bool)

(assert (=> b!4937306 (= e!3084950 (>= (size!37664 lt!2034542) (size!37664 (++!12404 testedP!110 (Cons!56854 (head!10574 lt!2034533) Nil!56854)))))))

(declare-fun b!4937304 () Bool)

(declare-fun res!2107116 () Bool)

(assert (=> b!4937304 (=> (not res!2107116) (not e!3084949))))

(assert (=> b!4937304 (= res!2107116 (= (head!10574 (++!12404 testedP!110 (Cons!56854 (head!10574 lt!2034533) Nil!56854))) (head!10574 lt!2034542)))))

(declare-fun b!4937303 () Bool)

(assert (=> b!4937303 (= e!3084951 e!3084949)))

(declare-fun res!2107115 () Bool)

(assert (=> b!4937303 (=> (not res!2107115) (not e!3084949))))

(assert (=> b!4937303 (= res!2107115 (not ((_ is Nil!56854) lt!2034542)))))

(assert (= (and d!1589446 (not res!2107113)) b!4937303))

(assert (= (and b!4937303 res!2107115) b!4937304))

(assert (= (and b!4937304 res!2107116) b!4937305))

(assert (= (and d!1589446 (not res!2107114)) b!4937306))

(assert (=> b!4937305 m!5958738))

(declare-fun m!5959158 () Bool)

(assert (=> b!4937305 m!5959158))

(assert (=> b!4937305 m!5958836))

(assert (=> b!4937305 m!5959158))

(assert (=> b!4937305 m!5958836))

(declare-fun m!5959160 () Bool)

(assert (=> b!4937305 m!5959160))

(assert (=> b!4937306 m!5958752))

(assert (=> b!4937306 m!5958738))

(declare-fun m!5959162 () Bool)

(assert (=> b!4937306 m!5959162))

(assert (=> b!4937304 m!5958738))

(declare-fun m!5959164 () Bool)

(assert (=> b!4937304 m!5959164))

(assert (=> b!4937304 m!5958842))

(assert (=> b!4937020 d!1589446))

(declare-fun d!1589448 () Bool)

(assert (=> d!1589448 (= (tail!9713 testedSuffix!70) (t!367468 testedSuffix!70))))

(assert (=> b!4937020 d!1589448))

(declare-fun d!1589450 () Bool)

(assert (=> d!1589450 (= (head!10574 lt!2034533) (h!63302 lt!2034533))))

(assert (=> b!4937020 d!1589450))

(declare-fun b!4937309 () Bool)

(declare-fun res!2107118 () Bool)

(declare-fun e!3084953 () Bool)

(assert (=> b!4937309 (=> (not res!2107118) (not e!3084953))))

(declare-fun lt!2034726 () List!56978)

(assert (=> b!4937309 (= res!2107118 (= (size!37664 lt!2034726) (+ (size!37664 testedP!110) (size!37664 (Cons!56854 (head!10574 lt!2034533) Nil!56854)))))))

(declare-fun b!4937308 () Bool)

(declare-fun e!3084952 () List!56978)

(assert (=> b!4937308 (= e!3084952 (Cons!56854 (h!63302 testedP!110) (++!12404 (t!367468 testedP!110) (Cons!56854 (head!10574 lt!2034533) Nil!56854))))))

(declare-fun d!1589452 () Bool)

(assert (=> d!1589452 e!3084953))

(declare-fun res!2107117 () Bool)

(assert (=> d!1589452 (=> (not res!2107117) (not e!3084953))))

(assert (=> d!1589452 (= res!2107117 (= (content!10110 lt!2034726) ((_ map or) (content!10110 testedP!110) (content!10110 (Cons!56854 (head!10574 lt!2034533) Nil!56854)))))))

(assert (=> d!1589452 (= lt!2034726 e!3084952)))

(declare-fun c!841788 () Bool)

(assert (=> d!1589452 (= c!841788 ((_ is Nil!56854) testedP!110))))

(assert (=> d!1589452 (= (++!12404 testedP!110 (Cons!56854 (head!10574 lt!2034533) Nil!56854)) lt!2034726)))

(declare-fun b!4937307 () Bool)

(assert (=> b!4937307 (= e!3084952 (Cons!56854 (head!10574 lt!2034533) Nil!56854))))

(declare-fun b!4937310 () Bool)

(assert (=> b!4937310 (= e!3084953 (or (not (= (Cons!56854 (head!10574 lt!2034533) Nil!56854) Nil!56854)) (= lt!2034726 testedP!110)))))

(assert (= (and d!1589452 c!841788) b!4937307))

(assert (= (and d!1589452 (not c!841788)) b!4937308))

(assert (= (and d!1589452 res!2107117) b!4937309))

(assert (= (and b!4937309 res!2107118) b!4937310))

(declare-fun m!5959166 () Bool)

(assert (=> b!4937309 m!5959166))

(assert (=> b!4937309 m!5958786))

(declare-fun m!5959168 () Bool)

(assert (=> b!4937309 m!5959168))

(declare-fun m!5959170 () Bool)

(assert (=> b!4937308 m!5959170))

(declare-fun m!5959172 () Bool)

(assert (=> d!1589452 m!5959172))

(assert (=> d!1589452 m!5959104))

(declare-fun m!5959174 () Bool)

(assert (=> d!1589452 m!5959174))

(assert (=> b!4937020 d!1589452))

(declare-fun b!4937313 () Bool)

(declare-fun res!2107120 () Bool)

(declare-fun e!3084955 () Bool)

(assert (=> b!4937313 (=> (not res!2107120) (not e!3084955))))

(declare-fun lt!2034727 () List!56978)

(assert (=> b!4937313 (= res!2107120 (= (size!37664 lt!2034727) (+ (size!37664 testedP!110) (size!37664 (Cons!56854 lt!2034531 Nil!56854)))))))

(declare-fun b!4937312 () Bool)

(declare-fun e!3084954 () List!56978)

(assert (=> b!4937312 (= e!3084954 (Cons!56854 (h!63302 testedP!110) (++!12404 (t!367468 testedP!110) (Cons!56854 lt!2034531 Nil!56854))))))

(declare-fun d!1589454 () Bool)

(assert (=> d!1589454 e!3084955))

(declare-fun res!2107119 () Bool)

(assert (=> d!1589454 (=> (not res!2107119) (not e!3084955))))

(assert (=> d!1589454 (= res!2107119 (= (content!10110 lt!2034727) ((_ map or) (content!10110 testedP!110) (content!10110 (Cons!56854 lt!2034531 Nil!56854)))))))

(assert (=> d!1589454 (= lt!2034727 e!3084954)))

(declare-fun c!841789 () Bool)

(assert (=> d!1589454 (= c!841789 ((_ is Nil!56854) testedP!110))))

(assert (=> d!1589454 (= (++!12404 testedP!110 (Cons!56854 lt!2034531 Nil!56854)) lt!2034727)))

(declare-fun b!4937311 () Bool)

(assert (=> b!4937311 (= e!3084954 (Cons!56854 lt!2034531 Nil!56854))))

(declare-fun b!4937314 () Bool)

(assert (=> b!4937314 (= e!3084955 (or (not (= (Cons!56854 lt!2034531 Nil!56854) Nil!56854)) (= lt!2034727 testedP!110)))))

(assert (= (and d!1589454 c!841789) b!4937311))

(assert (= (and d!1589454 (not c!841789)) b!4937312))

(assert (= (and d!1589454 res!2107119) b!4937313))

(assert (= (and b!4937313 res!2107120) b!4937314))

(declare-fun m!5959176 () Bool)

(assert (=> b!4937313 m!5959176))

(assert (=> b!4937313 m!5958786))

(declare-fun m!5959178 () Bool)

(assert (=> b!4937313 m!5959178))

(declare-fun m!5959180 () Bool)

(assert (=> b!4937312 m!5959180))

(declare-fun m!5959182 () Bool)

(assert (=> d!1589454 m!5959182))

(assert (=> d!1589454 m!5959104))

(declare-fun m!5959184 () Bool)

(assert (=> d!1589454 m!5959184))

(assert (=> b!4937020 d!1589454))

(declare-fun bs!1180877 () Bool)

(declare-fun d!1589456 () Bool)

(assert (= bs!1180877 (and d!1589456 d!1589328)))

(declare-fun lambda!245984 () Int)

(assert (=> bs!1180877 (not (= lambda!245984 lambda!245961))))

(declare-fun bs!1180878 () Bool)

(assert (= bs!1180878 (and d!1589456 b!4937167)))

(assert (=> bs!1180878 (not (= lambda!245984 lambda!245962))))

(declare-fun bs!1180879 () Bool)

(assert (= bs!1180879 (and d!1589456 b!4937168)))

(assert (=> bs!1180879 (not (= lambda!245984 lambda!245963))))

(declare-fun exists!1294 ((InoxSet Context!6158) Int) Bool)

(assert (=> d!1589456 (= (nullableZipper!842 z!3568) (exists!1294 z!3568 lambda!245984))))

(declare-fun bs!1180880 () Bool)

(assert (= bs!1180880 d!1589456))

(declare-fun m!5959186 () Bool)

(assert (=> bs!1180880 m!5959186))

(assert (=> b!4937020 d!1589456))

(declare-fun tp!1385625 () Bool)

(declare-fun b!4937323 () Bool)

(declare-fun tp!1385626 () Bool)

(declare-fun e!3084961 () Bool)

(assert (=> b!4937323 (= e!3084961 (and (inv!73896 (left!41465 (c!841700 totalInput!685))) tp!1385625 (inv!73896 (right!41795 (c!841700 totalInput!685))) tp!1385626))))

(declare-fun b!4937325 () Bool)

(declare-fun e!3084960 () Bool)

(declare-fun tp!1385627 () Bool)

(assert (=> b!4937325 (= e!3084960 tp!1385627)))

(declare-fun b!4937324 () Bool)

(declare-fun inv!73902 (IArray!29953) Bool)

(assert (=> b!4937324 (= e!3084961 (and (inv!73902 (xs!18270 (c!841700 totalInput!685))) e!3084960))))

(assert (=> b!4937018 (= tp!1385593 (and (inv!73896 (c!841700 totalInput!685)) e!3084961))))

(assert (= (and b!4937018 ((_ is Node!14946) (c!841700 totalInput!685))) b!4937323))

(assert (= b!4937324 b!4937325))

(assert (= (and b!4937018 ((_ is Leaf!24852) (c!841700 totalInput!685))) b!4937324))

(declare-fun m!5959188 () Bool)

(assert (=> b!4937323 m!5959188))

(declare-fun m!5959190 () Bool)

(assert (=> b!4937323 m!5959190))

(declare-fun m!5959192 () Bool)

(assert (=> b!4937324 m!5959192))

(assert (=> b!4937018 m!5958798))

(declare-fun b!4937330 () Bool)

(declare-fun e!3084964 () Bool)

(declare-fun tp!1385632 () Bool)

(declare-fun tp!1385633 () Bool)

(assert (=> b!4937330 (= e!3084964 (and tp!1385632 tp!1385633))))

(assert (=> b!4937015 (= tp!1385589 e!3084964)))

(assert (= (and b!4937015 ((_ is Cons!56855) (exprs!3579 setElem!27826))) b!4937330))

(declare-fun b!4937335 () Bool)

(declare-fun e!3084967 () Bool)

(declare-fun tp!1385636 () Bool)

(assert (=> b!4937335 (= e!3084967 (and tp_is_empty!36051 tp!1385636))))

(assert (=> b!4937014 (= tp!1385591 e!3084967)))

(assert (= (and b!4937014 ((_ is Cons!56854) (t!367468 testedP!110))) b!4937335))

(declare-fun condSetEmpty!27832 () Bool)

(assert (=> setNonEmpty!27826 (= condSetEmpty!27832 (= setRest!27826 ((as const (Array Context!6158 Bool)) false)))))

(declare-fun setRes!27832 () Bool)

(assert (=> setNonEmpty!27826 (= tp!1385592 setRes!27832)))

(declare-fun setIsEmpty!27832 () Bool)

(assert (=> setIsEmpty!27832 setRes!27832))

(declare-fun tp!1385641 () Bool)

(declare-fun setNonEmpty!27832 () Bool)

(declare-fun setElem!27832 () Context!6158)

(declare-fun e!3084970 () Bool)

(assert (=> setNonEmpty!27832 (= setRes!27832 (and tp!1385641 (inv!73895 setElem!27832) e!3084970))))

(declare-fun setRest!27832 () (InoxSet Context!6158))

(assert (=> setNonEmpty!27832 (= setRest!27826 ((_ map or) (store ((as const (Array Context!6158 Bool)) false) setElem!27832 true) setRest!27832))))

(declare-fun b!4937340 () Bool)

(declare-fun tp!1385642 () Bool)

(assert (=> b!4937340 (= e!3084970 tp!1385642)))

(assert (= (and setNonEmpty!27826 condSetEmpty!27832) setIsEmpty!27832))

(assert (= (and setNonEmpty!27826 (not condSetEmpty!27832)) setNonEmpty!27832))

(assert (= setNonEmpty!27832 b!4937340))

(declare-fun m!5959194 () Bool)

(assert (=> setNonEmpty!27832 m!5959194))

(declare-fun b!4937341 () Bool)

(declare-fun e!3084971 () Bool)

(declare-fun tp!1385643 () Bool)

(assert (=> b!4937341 (= e!3084971 (and tp_is_empty!36051 tp!1385643))))

(assert (=> b!4937025 (= tp!1385590 e!3084971)))

(assert (= (and b!4937025 ((_ is Cons!56854) (t!367468 testedSuffix!70))) b!4937341))

(check-sat (not setNonEmpty!27832) (not d!1589428) (not d!1589392) (not b!4937254) (not b!4937294) (not b!4937313) (not d!1589430) (not b!4937067) (not b!4937072) (not b!4937308) (not b!4937324) (not b!4937250) (not b!4937192) (not b!4937193) (not d!1589436) (not bm!344496) (not d!1589388) (not d!1589444) (not d!1589408) (not b!4937018) (not d!1589394) (not b!4937243) (not d!1589422) (not b!4937341) (not d!1589438) (not d!1589328) (not d!1589398) (not b!4937325) (not d!1589452) (not b!4937309) (not b!4937231) (not b!4937301) (not d!1589396) (not d!1589418) (not b!4937305) (not b!4937306) (not b!4937312) (not b!4937077) (not b!4937286) (not d!1589318) (not b!4937304) (not b!4937279) (not b!4937330) (not d!1589400) (not b!4937073) (not b!4937293) (not d!1589454) (not d!1589442) (not d!1589434) (not b!4937068) (not d!1589326) (not b!4937300) (not b!4937167) (not b!4937335) (not b!4937323) (not b!4937340) (not b!4937069) (not b!4937241) (not b!4937177) (not b!4937298) (not b!4937252) (not b!4937255) (not bm!344495) (not b!4937232) (not d!1589424) (not b!4937295) (not bm!344505) (not b!4937071) (not d!1589322) (not d!1589420) tp_is_empty!36051 (not b!4937168) (not b!4937075) (not d!1589410) (not b!4937076) (not d!1589440) (not b!4937283) (not d!1589456) (not d!1589416))
(check-sat)
