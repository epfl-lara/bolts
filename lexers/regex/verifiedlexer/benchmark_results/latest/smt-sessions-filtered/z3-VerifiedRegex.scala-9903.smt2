; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518880 () Bool)

(assert start!518880)

(declare-fun setNonEmpty!27802 () Bool)

(declare-fun setRes!27802 () Bool)

(declare-fun tp!1385429 () Bool)

(declare-fun e!3084169 () Bool)

(declare-datatypes ((C!27096 0))(
  ( (C!27097 (val!22882 Int)) )
))
(declare-datatypes ((Regex!13433 0))(
  ( (ElementMatch!13433 (c!841460 C!27096)) (Concat!22006 (regOne!27378 Regex!13433) (regTwo!27378 Regex!13433)) (EmptyExpr!13433) (Star!13433 (reg!13762 Regex!13433)) (EmptyLang!13433) (Union!13433 (regOne!27379 Regex!13433) (regTwo!27379 Regex!13433)) )
))
(declare-datatypes ((List!56966 0))(
  ( (Nil!56842) (Cons!56842 (h!63290 Regex!13433) (t!367456 List!56966)) )
))
(declare-datatypes ((Context!6150 0))(
  ( (Context!6151 (exprs!3575 List!56966)) )
))
(declare-fun setElem!27802 () Context!6150)

(declare-fun inv!73864 (Context!6150) Bool)

(assert (=> setNonEmpty!27802 (= setRes!27802 (and tp!1385429 (inv!73864 setElem!27802) e!3084169))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6150))

(declare-fun setRest!27802 () (InoxSet Context!6150))

(assert (=> setNonEmpty!27802 (= z!3568 ((_ map or) (store ((as const (Array Context!6150 Bool)) false) setElem!27802 true) setRest!27802))))

(declare-fun res!2106631 () Bool)

(declare-fun e!3084174 () Bool)

(assert (=> start!518880 (=> (not res!2106631) (not e!3084174))))

(declare-datatypes ((List!56967 0))(
  ( (Nil!56843) (Cons!56843 (h!63291 C!27096) (t!367457 List!56967)) )
))
(declare-fun lt!2033688 () List!56967)

(declare-fun lt!2033682 () List!56967)

(assert (=> start!518880 (= res!2106631 (= lt!2033688 lt!2033682))))

(declare-datatypes ((IArray!29945 0))(
  ( (IArray!29946 (innerList!15030 List!56967)) )
))
(declare-datatypes ((Conc!14942 0))(
  ( (Node!14942 (left!41455 Conc!14942) (right!41785 Conc!14942) (csize!30114 Int) (cheight!15153 Int)) (Leaf!24846 (xs!18266 IArray!29945) (csize!30115 Int)) (Empty!14942) )
))
(declare-datatypes ((BalanceConc!29314 0))(
  ( (BalanceConc!29315 (c!841461 Conc!14942)) )
))
(declare-fun totalInput!685 () BalanceConc!29314)

(declare-fun list!18058 (BalanceConc!29314) List!56967)

(assert (=> start!518880 (= lt!2033682 (list!18058 totalInput!685))))

(declare-fun testedP!110 () List!56967)

(declare-fun testedSuffix!70 () List!56967)

(declare-fun ++!12400 (List!56967 List!56967) List!56967)

(assert (=> start!518880 (= lt!2033688 (++!12400 testedP!110 testedSuffix!70))))

(assert (=> start!518880 e!3084174))

(declare-fun e!3084167 () Bool)

(assert (=> start!518880 e!3084167))

(declare-fun condSetEmpty!27802 () Bool)

(assert (=> start!518880 (= condSetEmpty!27802 (= z!3568 ((as const (Array Context!6150 Bool)) false)))))

(assert (=> start!518880 setRes!27802))

(assert (=> start!518880 true))

(declare-fun e!3084170 () Bool)

(declare-fun inv!73865 (BalanceConc!29314) Bool)

(assert (=> start!518880 (and (inv!73865 totalInput!685) e!3084170)))

(declare-fun e!3084168 () Bool)

(assert (=> start!518880 e!3084168))

(declare-fun b!4936108 () Bool)

(declare-fun e!3084178 () Bool)

(declare-fun e!3084171 () Bool)

(assert (=> b!4936108 (= e!3084178 e!3084171)))

(declare-fun res!2106624 () Bool)

(assert (=> b!4936108 (=> res!2106624 e!3084171)))

(declare-fun lt!2033685 () C!27096)

(declare-fun head!10570 (List!56967) C!27096)

(assert (=> b!4936108 (= res!2106624 (not (= lt!2033685 (head!10570 testedSuffix!70))))))

(declare-fun testedPSize!70 () Int)

(declare-fun apply!13754 (BalanceConc!29314 Int) C!27096)

(assert (=> b!4936108 (= lt!2033685 (apply!13754 totalInput!685 testedPSize!70))))

(declare-fun drop!2264 (List!56967 Int) List!56967)

(declare-fun apply!13755 (List!56967 Int) C!27096)

(assert (=> b!4936108 (= (head!10570 (drop!2264 lt!2033682 testedPSize!70)) (apply!13755 lt!2033682 testedPSize!70))))

(declare-datatypes ((Unit!147543 0))(
  ( (Unit!147544) )
))
(declare-fun lt!2033695 () Unit!147543)

(declare-fun lemmaDropApply!1322 (List!56967 Int) Unit!147543)

(assert (=> b!4936108 (= lt!2033695 (lemmaDropApply!1322 lt!2033682 testedPSize!70))))

(declare-fun lt!2033679 () List!56967)

(declare-fun lt!2033694 () List!56967)

(assert (=> b!4936108 (not (or (not (= lt!2033694 testedP!110)) (not (= lt!2033679 testedSuffix!70))))))

(declare-fun lt!2033691 () Unit!147543)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!699 (List!56967 List!56967 List!56967 List!56967) Unit!147543)

(assert (=> b!4936108 (= lt!2033691 (lemmaConcatSameAndSameSizesThenSameLists!699 lt!2033694 lt!2033679 testedP!110 testedSuffix!70))))

(declare-fun b!4936109 () Bool)

(declare-fun e!3084179 () Unit!147543)

(declare-fun Unit!147545 () Unit!147543)

(assert (=> b!4936109 (= e!3084179 Unit!147545)))

(declare-fun b!4936110 () Bool)

(declare-fun e!3084177 () Bool)

(assert (=> b!4936110 (= e!3084171 e!3084177)))

(declare-fun res!2106623 () Bool)

(assert (=> b!4936110 (=> res!2106623 e!3084177)))

(declare-fun lt!2033675 () Int)

(declare-fun lt!2033678 () Int)

(assert (=> b!4936110 (= res!2106623 (>= lt!2033675 lt!2033678))))

(declare-fun lt!2033683 () Unit!147543)

(assert (=> b!4936110 (= lt!2033683 e!3084179)))

(declare-fun c!841459 () Bool)

(assert (=> b!4936110 (= c!841459 (= lt!2033675 lt!2033678))))

(declare-fun lt!2033674 () Int)

(assert (=> b!4936110 (<= lt!2033675 lt!2033674)))

(declare-fun size!37652 (List!56967) Int)

(assert (=> b!4936110 (= lt!2033674 (size!37652 lt!2033682))))

(declare-fun lt!2033687 () Unit!147543)

(declare-fun lemmaIsPrefixThenSmallerEqSize!719 (List!56967 List!56967) Unit!147543)

(assert (=> b!4936110 (= lt!2033687 (lemmaIsPrefixThenSmallerEqSize!719 testedP!110 lt!2033682))))

(declare-fun b!4936111 () Bool)

(declare-fun res!2106629 () Bool)

(declare-fun e!3084176 () Bool)

(assert (=> b!4936111 (=> res!2106629 e!3084176)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4936111 (= res!2106629 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4936112 () Bool)

(declare-fun tp!1385433 () Bool)

(assert (=> b!4936112 (= e!3084169 tp!1385433)))

(declare-fun b!4936113 () Bool)

(declare-fun res!2106630 () Bool)

(assert (=> b!4936113 (=> res!2106630 e!3084178)))

(declare-datatypes ((tuple2!61350 0))(
  ( (tuple2!61351 (_1!33978 BalanceConc!29314) (_2!33978 BalanceConc!29314)) )
))
(declare-fun lt!2033692 () tuple2!61350)

(declare-fun size!37653 (BalanceConc!29314) Int)

(assert (=> b!4936113 (= res!2106630 (not (= (size!37653 (_1!33978 lt!2033692)) testedPSize!70)))))

(declare-fun setIsEmpty!27802 () Bool)

(assert (=> setIsEmpty!27802 setRes!27802))

(declare-fun b!4936114 () Bool)

(declare-fun e!3084173 () Bool)

(assert (=> b!4936114 (= e!3084174 e!3084173)))

(declare-fun res!2106634 () Bool)

(assert (=> b!4936114 (=> (not res!2106634) (not e!3084173))))

(assert (=> b!4936114 (= res!2106634 (= testedPSize!70 lt!2033675))))

(assert (=> b!4936114 (= lt!2033675 (size!37652 testedP!110))))

(declare-fun b!4936115 () Bool)

(declare-fun e!3084172 () Bool)

(assert (=> b!4936115 (= e!3084173 e!3084172)))

(declare-fun res!2106625 () Bool)

(assert (=> b!4936115 (=> (not res!2106625) (not e!3084172))))

(assert (=> b!4936115 (= res!2106625 (= totalInputSize!132 lt!2033678))))

(assert (=> b!4936115 (= lt!2033678 (size!37653 totalInput!685))))

(declare-fun b!4936116 () Bool)

(declare-fun e!3084175 () Bool)

(assert (=> b!4936116 (= e!3084177 e!3084175)))

(declare-fun res!2106628 () Bool)

(assert (=> b!4936116 (=> res!2106628 e!3084175)))

(declare-fun nullableZipper!838 ((InoxSet Context!6150)) Bool)

(assert (=> b!4936116 (= res!2106628 (not (nullableZipper!838 z!3568)))))

(declare-fun lt!2033681 () List!56967)

(declare-fun lt!2033677 () List!56967)

(assert (=> b!4936116 (= (++!12400 lt!2033681 lt!2033677) lt!2033682)))

(assert (=> b!4936116 (= lt!2033681 (++!12400 testedP!110 (Cons!56843 lt!2033685 Nil!56843)))))

(declare-fun lt!2033676 () Unit!147543)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1413 (List!56967 C!27096 List!56967 List!56967) Unit!147543)

(assert (=> b!4936116 (= lt!2033676 (lemmaMoveElementToOtherListKeepsConcatEq!1413 testedP!110 lt!2033685 lt!2033677 lt!2033682))))

(declare-fun tail!9709 (List!56967) List!56967)

(assert (=> b!4936116 (= lt!2033677 (tail!9709 testedSuffix!70))))

(declare-fun lt!2033686 () List!56967)

(declare-fun isPrefix!5031 (List!56967 List!56967) Bool)

(assert (=> b!4936116 (isPrefix!5031 (++!12400 testedP!110 (Cons!56843 (head!10570 lt!2033686) Nil!56843)) lt!2033682)))

(declare-fun lt!2033690 () Unit!147543)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!801 (List!56967 List!56967) Unit!147543)

(assert (=> b!4936116 (= lt!2033690 (lemmaAddHeadSuffixToPrefixStillPrefix!801 testedP!110 lt!2033682))))

(declare-fun b!4936117 () Bool)

(declare-fun tp_is_empty!36043 () Bool)

(declare-fun tp!1385431 () Bool)

(assert (=> b!4936117 (= e!3084167 (and tp_is_empty!36043 tp!1385431))))

(declare-fun b!4936118 () Bool)

(declare-fun e!3084166 () Bool)

(assert (=> b!4936118 (= e!3084166 e!3084176)))

(declare-fun res!2106633 () Bool)

(assert (=> b!4936118 (=> res!2106633 e!3084176)))

(declare-fun lostCauseZipper!751 ((InoxSet Context!6150)) Bool)

(assert (=> b!4936118 (= res!2106633 (lostCauseZipper!751 z!3568))))

(assert (=> b!4936118 (and (= testedSuffix!70 lt!2033686) (= lt!2033686 testedSuffix!70))))

(declare-fun lt!2033689 () Unit!147543)

(declare-fun lemmaSamePrefixThenSameSuffix!2429 (List!56967 List!56967 List!56967 List!56967 List!56967) Unit!147543)

(assert (=> b!4936118 (= lt!2033689 (lemmaSamePrefixThenSameSuffix!2429 testedP!110 testedSuffix!70 testedP!110 lt!2033686 lt!2033682))))

(declare-fun getSuffix!3015 (List!56967 List!56967) List!56967)

(assert (=> b!4936118 (= lt!2033686 (getSuffix!3015 lt!2033682 testedP!110))))

(declare-fun b!4936119 () Bool)

(assert (=> b!4936119 (= e!3084176 e!3084178)))

(declare-fun res!2106627 () Bool)

(assert (=> b!4936119 (=> res!2106627 e!3084178)))

(assert (=> b!4936119 (= res!2106627 (not (= (++!12400 lt!2033694 lt!2033679) lt!2033682)))))

(assert (=> b!4936119 (= lt!2033679 (list!18058 (_2!33978 lt!2033692)))))

(assert (=> b!4936119 (= lt!2033694 (list!18058 (_1!33978 lt!2033692)))))

(declare-fun splitAt!337 (BalanceConc!29314 Int) tuple2!61350)

(assert (=> b!4936119 (= lt!2033692 (splitAt!337 totalInput!685 testedPSize!70))))

(declare-fun b!4936120 () Bool)

(declare-fun tp!1385430 () Bool)

(assert (=> b!4936120 (= e!3084168 (and tp_is_empty!36043 tp!1385430))))

(declare-fun b!4936121 () Bool)

(assert (=> b!4936121 (= e!3084175 (= totalInputSize!132 lt!2033674))))

(declare-fun b!4936122 () Bool)

(declare-fun Unit!147546 () Unit!147543)

(assert (=> b!4936122 (= e!3084179 Unit!147546)))

(declare-fun lt!2033680 () Unit!147543)

(declare-fun lemmaIsPrefixRefl!3397 (List!56967 List!56967) Unit!147543)

(assert (=> b!4936122 (= lt!2033680 (lemmaIsPrefixRefl!3397 lt!2033682 lt!2033682))))

(assert (=> b!4936122 (isPrefix!5031 lt!2033682 lt!2033682)))

(declare-fun lt!2033684 () Unit!147543)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1155 (List!56967 List!56967 List!56967) Unit!147543)

(assert (=> b!4936122 (= lt!2033684 (lemmaIsPrefixSameLengthThenSameList!1155 lt!2033682 testedP!110 lt!2033682))))

(assert (=> b!4936122 false))

(declare-fun b!4936123 () Bool)

(assert (=> b!4936123 (= e!3084172 (not e!3084166))))

(declare-fun res!2106626 () Bool)

(assert (=> b!4936123 (=> res!2106626 e!3084166)))

(assert (=> b!4936123 (= res!2106626 (not (isPrefix!5031 testedP!110 lt!2033682)))))

(assert (=> b!4936123 (isPrefix!5031 testedP!110 lt!2033688)))

(declare-fun lt!2033693 () Unit!147543)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3255 (List!56967 List!56967) Unit!147543)

(assert (=> b!4936123 (= lt!2033693 (lemmaConcatTwoListThenFirstIsPrefix!3255 testedP!110 testedSuffix!70))))

(declare-fun b!4936124 () Bool)

(declare-fun tp!1385432 () Bool)

(declare-fun inv!73866 (Conc!14942) Bool)

(assert (=> b!4936124 (= e!3084170 (and (inv!73866 (c!841461 totalInput!685)) tp!1385432))))

(declare-fun b!4936125 () Bool)

(declare-fun res!2106632 () Bool)

(assert (=> b!4936125 (=> res!2106632 e!3084175)))

(declare-fun findLongestMatchInnerZipperFast!97 ((InoxSet Context!6150) List!56967 Int List!56967 BalanceConc!29314 Int) Int)

(declare-fun derivationStepZipper!600 ((InoxSet Context!6150) C!27096) (InoxSet Context!6150))

(assert (=> b!4936125 (= res!2106632 (= (findLongestMatchInnerZipperFast!97 (derivationStepZipper!600 z!3568 lt!2033685) lt!2033681 (+ 1 testedPSize!70) lt!2033677 totalInput!685 totalInputSize!132) 0))))

(assert (= (and start!518880 res!2106631) b!4936114))

(assert (= (and b!4936114 res!2106634) b!4936115))

(assert (= (and b!4936115 res!2106625) b!4936123))

(assert (= (and b!4936123 (not res!2106626)) b!4936118))

(assert (= (and b!4936118 (not res!2106633)) b!4936111))

(assert (= (and b!4936111 (not res!2106629)) b!4936119))

(assert (= (and b!4936119 (not res!2106627)) b!4936113))

(assert (= (and b!4936113 (not res!2106630)) b!4936108))

(assert (= (and b!4936108 (not res!2106624)) b!4936110))

(assert (= (and b!4936110 c!841459) b!4936122))

(assert (= (and b!4936110 (not c!841459)) b!4936109))

(assert (= (and b!4936110 (not res!2106623)) b!4936116))

(assert (= (and b!4936116 (not res!2106628)) b!4936125))

(assert (= (and b!4936125 (not res!2106632)) b!4936121))

(get-info :version)

(assert (= (and start!518880 ((_ is Cons!56843) testedP!110)) b!4936117))

(assert (= (and start!518880 condSetEmpty!27802) setIsEmpty!27802))

(assert (= (and start!518880 (not condSetEmpty!27802)) setNonEmpty!27802))

(assert (= setNonEmpty!27802 b!4936112))

(assert (= start!518880 b!4936124))

(assert (= (and start!518880 ((_ is Cons!56843) testedSuffix!70)) b!4936120))

(declare-fun m!5957470 () Bool)

(assert (=> b!4936110 m!5957470))

(declare-fun m!5957472 () Bool)

(assert (=> b!4936110 m!5957472))

(declare-fun m!5957474 () Bool)

(assert (=> b!4936116 m!5957474))

(declare-fun m!5957476 () Bool)

(assert (=> b!4936116 m!5957476))

(declare-fun m!5957478 () Bool)

(assert (=> b!4936116 m!5957478))

(declare-fun m!5957480 () Bool)

(assert (=> b!4936116 m!5957480))

(assert (=> b!4936116 m!5957478))

(declare-fun m!5957482 () Bool)

(assert (=> b!4936116 m!5957482))

(declare-fun m!5957484 () Bool)

(assert (=> b!4936116 m!5957484))

(declare-fun m!5957486 () Bool)

(assert (=> b!4936116 m!5957486))

(declare-fun m!5957488 () Bool)

(assert (=> b!4936116 m!5957488))

(declare-fun m!5957490 () Bool)

(assert (=> b!4936116 m!5957490))

(declare-fun m!5957492 () Bool)

(assert (=> b!4936122 m!5957492))

(declare-fun m!5957494 () Bool)

(assert (=> b!4936122 m!5957494))

(declare-fun m!5957496 () Bool)

(assert (=> b!4936122 m!5957496))

(declare-fun m!5957498 () Bool)

(assert (=> b!4936124 m!5957498))

(declare-fun m!5957500 () Bool)

(assert (=> start!518880 m!5957500))

(declare-fun m!5957502 () Bool)

(assert (=> start!518880 m!5957502))

(declare-fun m!5957504 () Bool)

(assert (=> start!518880 m!5957504))

(declare-fun m!5957506 () Bool)

(assert (=> b!4936108 m!5957506))

(declare-fun m!5957508 () Bool)

(assert (=> b!4936108 m!5957508))

(declare-fun m!5957510 () Bool)

(assert (=> b!4936108 m!5957510))

(declare-fun m!5957512 () Bool)

(assert (=> b!4936108 m!5957512))

(declare-fun m!5957514 () Bool)

(assert (=> b!4936108 m!5957514))

(assert (=> b!4936108 m!5957506))

(declare-fun m!5957516 () Bool)

(assert (=> b!4936108 m!5957516))

(declare-fun m!5957518 () Bool)

(assert (=> b!4936108 m!5957518))

(declare-fun m!5957520 () Bool)

(assert (=> b!4936119 m!5957520))

(declare-fun m!5957522 () Bool)

(assert (=> b!4936119 m!5957522))

(declare-fun m!5957524 () Bool)

(assert (=> b!4936119 m!5957524))

(declare-fun m!5957526 () Bool)

(assert (=> b!4936119 m!5957526))

(declare-fun m!5957528 () Bool)

(assert (=> setNonEmpty!27802 m!5957528))

(declare-fun m!5957530 () Bool)

(assert (=> b!4936118 m!5957530))

(declare-fun m!5957532 () Bool)

(assert (=> b!4936118 m!5957532))

(declare-fun m!5957534 () Bool)

(assert (=> b!4936118 m!5957534))

(declare-fun m!5957536 () Bool)

(assert (=> b!4936115 m!5957536))

(declare-fun m!5957538 () Bool)

(assert (=> b!4936114 m!5957538))

(declare-fun m!5957540 () Bool)

(assert (=> b!4936125 m!5957540))

(assert (=> b!4936125 m!5957540))

(declare-fun m!5957542 () Bool)

(assert (=> b!4936125 m!5957542))

(declare-fun m!5957544 () Bool)

(assert (=> b!4936123 m!5957544))

(declare-fun m!5957546 () Bool)

(assert (=> b!4936123 m!5957546))

(declare-fun m!5957548 () Bool)

(assert (=> b!4936123 m!5957548))

(declare-fun m!5957550 () Bool)

(assert (=> b!4936113 m!5957550))

(check-sat (not setNonEmpty!27802) (not b!4936122) (not b!4936115) (not b!4936124) (not b!4936119) (not b!4936123) (not b!4936117) (not b!4936114) (not b!4936113) tp_is_empty!36043 (not b!4936112) (not b!4936116) (not b!4936110) (not b!4936125) (not b!4936120) (not b!4936108) (not start!518880) (not b!4936118))
(check-sat)
(get-model)

(declare-fun d!1588982 () Bool)

(declare-fun lt!2033698 () Int)

(assert (=> d!1588982 (>= lt!2033698 0)))

(declare-fun e!3084182 () Int)

(assert (=> d!1588982 (= lt!2033698 e!3084182)))

(declare-fun c!841464 () Bool)

(assert (=> d!1588982 (= c!841464 ((_ is Nil!56843) lt!2033682))))

(assert (=> d!1588982 (= (size!37652 lt!2033682) lt!2033698)))

(declare-fun b!4936130 () Bool)

(assert (=> b!4936130 (= e!3084182 0)))

(declare-fun b!4936131 () Bool)

(assert (=> b!4936131 (= e!3084182 (+ 1 (size!37652 (t!367457 lt!2033682))))))

(assert (= (and d!1588982 c!841464) b!4936130))

(assert (= (and d!1588982 (not c!841464)) b!4936131))

(declare-fun m!5957552 () Bool)

(assert (=> b!4936131 m!5957552))

(assert (=> b!4936110 d!1588982))

(declare-fun d!1588984 () Bool)

(assert (=> d!1588984 (<= (size!37652 testedP!110) (size!37652 lt!2033682))))

(declare-fun lt!2033701 () Unit!147543)

(declare-fun choose!36273 (List!56967 List!56967) Unit!147543)

(assert (=> d!1588984 (= lt!2033701 (choose!36273 testedP!110 lt!2033682))))

(assert (=> d!1588984 (isPrefix!5031 testedP!110 lt!2033682)))

(assert (=> d!1588984 (= (lemmaIsPrefixThenSmallerEqSize!719 testedP!110 lt!2033682) lt!2033701)))

(declare-fun bs!1180743 () Bool)

(assert (= bs!1180743 d!1588984))

(assert (=> bs!1180743 m!5957538))

(assert (=> bs!1180743 m!5957470))

(declare-fun m!5957554 () Bool)

(assert (=> bs!1180743 m!5957554))

(assert (=> bs!1180743 m!5957544))

(assert (=> b!4936110 d!1588984))

(declare-fun lt!2033704 () List!56967)

(declare-fun e!3084187 () Bool)

(declare-fun b!4936143 () Bool)

(assert (=> b!4936143 (= e!3084187 (or (not (= lt!2033679 Nil!56843)) (= lt!2033704 lt!2033694)))))

(declare-fun d!1588986 () Bool)

(assert (=> d!1588986 e!3084187))

(declare-fun res!2106640 () Bool)

(assert (=> d!1588986 (=> (not res!2106640) (not e!3084187))))

(declare-fun content!10106 (List!56967) (InoxSet C!27096))

(assert (=> d!1588986 (= res!2106640 (= (content!10106 lt!2033704) ((_ map or) (content!10106 lt!2033694) (content!10106 lt!2033679))))))

(declare-fun e!3084188 () List!56967)

(assert (=> d!1588986 (= lt!2033704 e!3084188)))

(declare-fun c!841467 () Bool)

(assert (=> d!1588986 (= c!841467 ((_ is Nil!56843) lt!2033694))))

(assert (=> d!1588986 (= (++!12400 lt!2033694 lt!2033679) lt!2033704)))

(declare-fun b!4936140 () Bool)

(assert (=> b!4936140 (= e!3084188 lt!2033679)))

(declare-fun b!4936142 () Bool)

(declare-fun res!2106639 () Bool)

(assert (=> b!4936142 (=> (not res!2106639) (not e!3084187))))

(assert (=> b!4936142 (= res!2106639 (= (size!37652 lt!2033704) (+ (size!37652 lt!2033694) (size!37652 lt!2033679))))))

(declare-fun b!4936141 () Bool)

(assert (=> b!4936141 (= e!3084188 (Cons!56843 (h!63291 lt!2033694) (++!12400 (t!367457 lt!2033694) lt!2033679)))))

(assert (= (and d!1588986 c!841467) b!4936140))

(assert (= (and d!1588986 (not c!841467)) b!4936141))

(assert (= (and d!1588986 res!2106640) b!4936142))

(assert (= (and b!4936142 res!2106639) b!4936143))

(declare-fun m!5957556 () Bool)

(assert (=> d!1588986 m!5957556))

(declare-fun m!5957558 () Bool)

(assert (=> d!1588986 m!5957558))

(declare-fun m!5957560 () Bool)

(assert (=> d!1588986 m!5957560))

(declare-fun m!5957562 () Bool)

(assert (=> b!4936142 m!5957562))

(declare-fun m!5957564 () Bool)

(assert (=> b!4936142 m!5957564))

(declare-fun m!5957566 () Bool)

(assert (=> b!4936142 m!5957566))

(declare-fun m!5957568 () Bool)

(assert (=> b!4936141 m!5957568))

(assert (=> b!4936119 d!1588986))

(declare-fun d!1588988 () Bool)

(declare-fun list!18060 (Conc!14942) List!56967)

(assert (=> d!1588988 (= (list!18058 (_2!33978 lt!2033692)) (list!18060 (c!841461 (_2!33978 lt!2033692))))))

(declare-fun bs!1180744 () Bool)

(assert (= bs!1180744 d!1588988))

(declare-fun m!5957570 () Bool)

(assert (=> bs!1180744 m!5957570))

(assert (=> b!4936119 d!1588988))

(declare-fun d!1588990 () Bool)

(assert (=> d!1588990 (= (list!18058 (_1!33978 lt!2033692)) (list!18060 (c!841461 (_1!33978 lt!2033692))))))

(declare-fun bs!1180745 () Bool)

(assert (= bs!1180745 d!1588990))

(declare-fun m!5957572 () Bool)

(assert (=> bs!1180745 m!5957572))

(assert (=> b!4936119 d!1588990))

(declare-fun d!1588992 () Bool)

(declare-fun e!3084191 () Bool)

(assert (=> d!1588992 e!3084191))

(declare-fun res!2106646 () Bool)

(assert (=> d!1588992 (=> (not res!2106646) (not e!3084191))))

(declare-fun lt!2033710 () tuple2!61350)

(declare-fun isBalanced!4119 (Conc!14942) Bool)

(assert (=> d!1588992 (= res!2106646 (isBalanced!4119 (c!841461 (_1!33978 lt!2033710))))))

(declare-datatypes ((tuple2!61356 0))(
  ( (tuple2!61357 (_1!33981 Conc!14942) (_2!33981 Conc!14942)) )
))
(declare-fun lt!2033709 () tuple2!61356)

(assert (=> d!1588992 (= lt!2033710 (tuple2!61351 (BalanceConc!29315 (_1!33981 lt!2033709)) (BalanceConc!29315 (_2!33981 lt!2033709))))))

(declare-fun splitAt!339 (Conc!14942 Int) tuple2!61356)

(assert (=> d!1588992 (= lt!2033709 (splitAt!339 (c!841461 totalInput!685) testedPSize!70))))

(assert (=> d!1588992 (isBalanced!4119 (c!841461 totalInput!685))))

(assert (=> d!1588992 (= (splitAt!337 totalInput!685 testedPSize!70) lt!2033710)))

(declare-fun b!4936148 () Bool)

(declare-fun res!2106645 () Bool)

(assert (=> b!4936148 (=> (not res!2106645) (not e!3084191))))

(assert (=> b!4936148 (= res!2106645 (isBalanced!4119 (c!841461 (_2!33978 lt!2033710))))))

(declare-fun b!4936149 () Bool)

(declare-datatypes ((tuple2!61358 0))(
  ( (tuple2!61359 (_1!33982 List!56967) (_2!33982 List!56967)) )
))
(declare-fun splitAtIndex!125 (List!56967 Int) tuple2!61358)

(assert (=> b!4936149 (= e!3084191 (= (tuple2!61359 (list!18058 (_1!33978 lt!2033710)) (list!18058 (_2!33978 lt!2033710))) (splitAtIndex!125 (list!18058 totalInput!685) testedPSize!70)))))

(assert (= (and d!1588992 res!2106646) b!4936148))

(assert (= (and b!4936148 res!2106645) b!4936149))

(declare-fun m!5957574 () Bool)

(assert (=> d!1588992 m!5957574))

(declare-fun m!5957576 () Bool)

(assert (=> d!1588992 m!5957576))

(declare-fun m!5957578 () Bool)

(assert (=> d!1588992 m!5957578))

(declare-fun m!5957580 () Bool)

(assert (=> b!4936148 m!5957580))

(declare-fun m!5957582 () Bool)

(assert (=> b!4936149 m!5957582))

(declare-fun m!5957584 () Bool)

(assert (=> b!4936149 m!5957584))

(assert (=> b!4936149 m!5957500))

(assert (=> b!4936149 m!5957500))

(declare-fun m!5957586 () Bool)

(assert (=> b!4936149 m!5957586))

(assert (=> b!4936119 d!1588992))

(declare-fun d!1588994 () Bool)

(declare-fun lambda!245873 () Int)

(declare-fun forall!13195 (List!56966 Int) Bool)

(assert (=> d!1588994 (= (inv!73864 setElem!27802) (forall!13195 (exprs!3575 setElem!27802) lambda!245873))))

(declare-fun bs!1180762 () Bool)

(assert (= bs!1180762 d!1588994))

(declare-fun m!5957718 () Bool)

(assert (=> bs!1180762 m!5957718))

(assert (=> setNonEmpty!27802 d!1588994))

(declare-fun d!1589054 () Bool)

(assert (=> d!1589054 (= (head!10570 lt!2033686) (h!63291 lt!2033686))))

(assert (=> b!4936116 d!1589054))

(declare-fun d!1589056 () Bool)

(declare-fun lambda!245876 () Int)

(declare-fun exists!1284 ((InoxSet Context!6150) Int) Bool)

(assert (=> d!1589056 (= (nullableZipper!838 z!3568) (exists!1284 z!3568 lambda!245876))))

(declare-fun bs!1180763 () Bool)

(assert (= bs!1180763 d!1589056))

(declare-fun m!5957720 () Bool)

(assert (=> bs!1180763 m!5957720))

(assert (=> b!4936116 d!1589056))

(declare-fun b!4936257 () Bool)

(declare-fun lt!2033791 () List!56967)

(declare-fun e!3084259 () Bool)

(assert (=> b!4936257 (= e!3084259 (or (not (= (Cons!56843 lt!2033685 Nil!56843) Nil!56843)) (= lt!2033791 testedP!110)))))

(declare-fun d!1589058 () Bool)

(assert (=> d!1589058 e!3084259))

(declare-fun res!2106694 () Bool)

(assert (=> d!1589058 (=> (not res!2106694) (not e!3084259))))

(assert (=> d!1589058 (= res!2106694 (= (content!10106 lt!2033791) ((_ map or) (content!10106 testedP!110) (content!10106 (Cons!56843 lt!2033685 Nil!56843)))))))

(declare-fun e!3084260 () List!56967)

(assert (=> d!1589058 (= lt!2033791 e!3084260)))

(declare-fun c!841507 () Bool)

(assert (=> d!1589058 (= c!841507 ((_ is Nil!56843) testedP!110))))

(assert (=> d!1589058 (= (++!12400 testedP!110 (Cons!56843 lt!2033685 Nil!56843)) lt!2033791)))

(declare-fun b!4936254 () Bool)

(assert (=> b!4936254 (= e!3084260 (Cons!56843 lt!2033685 Nil!56843))))

(declare-fun b!4936256 () Bool)

(declare-fun res!2106693 () Bool)

(assert (=> b!4936256 (=> (not res!2106693) (not e!3084259))))

(assert (=> b!4936256 (= res!2106693 (= (size!37652 lt!2033791) (+ (size!37652 testedP!110) (size!37652 (Cons!56843 lt!2033685 Nil!56843)))))))

(declare-fun b!4936255 () Bool)

(assert (=> b!4936255 (= e!3084260 (Cons!56843 (h!63291 testedP!110) (++!12400 (t!367457 testedP!110) (Cons!56843 lt!2033685 Nil!56843))))))

(assert (= (and d!1589058 c!841507) b!4936254))

(assert (= (and d!1589058 (not c!841507)) b!4936255))

(assert (= (and d!1589058 res!2106694) b!4936256))

(assert (= (and b!4936256 res!2106693) b!4936257))

(declare-fun m!5957722 () Bool)

(assert (=> d!1589058 m!5957722))

(declare-fun m!5957724 () Bool)

(assert (=> d!1589058 m!5957724))

(declare-fun m!5957726 () Bool)

(assert (=> d!1589058 m!5957726))

(declare-fun m!5957728 () Bool)

(assert (=> b!4936256 m!5957728))

(assert (=> b!4936256 m!5957538))

(declare-fun m!5957730 () Bool)

(assert (=> b!4936256 m!5957730))

(declare-fun m!5957732 () Bool)

(assert (=> b!4936255 m!5957732))

(assert (=> b!4936116 d!1589058))

(declare-fun e!3084261 () Bool)

(declare-fun lt!2033792 () List!56967)

(declare-fun b!4936261 () Bool)

(assert (=> b!4936261 (= e!3084261 (or (not (= lt!2033677 Nil!56843)) (= lt!2033792 lt!2033681)))))

(declare-fun d!1589060 () Bool)

(assert (=> d!1589060 e!3084261))

(declare-fun res!2106696 () Bool)

(assert (=> d!1589060 (=> (not res!2106696) (not e!3084261))))

(assert (=> d!1589060 (= res!2106696 (= (content!10106 lt!2033792) ((_ map or) (content!10106 lt!2033681) (content!10106 lt!2033677))))))

(declare-fun e!3084262 () List!56967)

(assert (=> d!1589060 (= lt!2033792 e!3084262)))

(declare-fun c!841508 () Bool)

(assert (=> d!1589060 (= c!841508 ((_ is Nil!56843) lt!2033681))))

(assert (=> d!1589060 (= (++!12400 lt!2033681 lt!2033677) lt!2033792)))

(declare-fun b!4936258 () Bool)

(assert (=> b!4936258 (= e!3084262 lt!2033677)))

(declare-fun b!4936260 () Bool)

(declare-fun res!2106695 () Bool)

(assert (=> b!4936260 (=> (not res!2106695) (not e!3084261))))

(assert (=> b!4936260 (= res!2106695 (= (size!37652 lt!2033792) (+ (size!37652 lt!2033681) (size!37652 lt!2033677))))))

(declare-fun b!4936259 () Bool)

(assert (=> b!4936259 (= e!3084262 (Cons!56843 (h!63291 lt!2033681) (++!12400 (t!367457 lt!2033681) lt!2033677)))))

(assert (= (and d!1589060 c!841508) b!4936258))

(assert (= (and d!1589060 (not c!841508)) b!4936259))

(assert (= (and d!1589060 res!2106696) b!4936260))

(assert (= (and b!4936260 res!2106695) b!4936261))

(declare-fun m!5957734 () Bool)

(assert (=> d!1589060 m!5957734))

(declare-fun m!5957736 () Bool)

(assert (=> d!1589060 m!5957736))

(declare-fun m!5957738 () Bool)

(assert (=> d!1589060 m!5957738))

(declare-fun m!5957740 () Bool)

(assert (=> b!4936260 m!5957740))

(declare-fun m!5957742 () Bool)

(assert (=> b!4936260 m!5957742))

(declare-fun m!5957744 () Bool)

(assert (=> b!4936260 m!5957744))

(declare-fun m!5957746 () Bool)

(assert (=> b!4936259 m!5957746))

(assert (=> b!4936116 d!1589060))

(declare-fun lt!2033793 () List!56967)

(declare-fun e!3084263 () Bool)

(declare-fun b!4936265 () Bool)

(assert (=> b!4936265 (= e!3084263 (or (not (= (Cons!56843 (head!10570 lt!2033686) Nil!56843) Nil!56843)) (= lt!2033793 testedP!110)))))

(declare-fun d!1589062 () Bool)

(assert (=> d!1589062 e!3084263))

(declare-fun res!2106698 () Bool)

(assert (=> d!1589062 (=> (not res!2106698) (not e!3084263))))

(assert (=> d!1589062 (= res!2106698 (= (content!10106 lt!2033793) ((_ map or) (content!10106 testedP!110) (content!10106 (Cons!56843 (head!10570 lt!2033686) Nil!56843)))))))

(declare-fun e!3084264 () List!56967)

(assert (=> d!1589062 (= lt!2033793 e!3084264)))

(declare-fun c!841509 () Bool)

(assert (=> d!1589062 (= c!841509 ((_ is Nil!56843) testedP!110))))

(assert (=> d!1589062 (= (++!12400 testedP!110 (Cons!56843 (head!10570 lt!2033686) Nil!56843)) lt!2033793)))

(declare-fun b!4936262 () Bool)

(assert (=> b!4936262 (= e!3084264 (Cons!56843 (head!10570 lt!2033686) Nil!56843))))

(declare-fun b!4936264 () Bool)

(declare-fun res!2106697 () Bool)

(assert (=> b!4936264 (=> (not res!2106697) (not e!3084263))))

(assert (=> b!4936264 (= res!2106697 (= (size!37652 lt!2033793) (+ (size!37652 testedP!110) (size!37652 (Cons!56843 (head!10570 lt!2033686) Nil!56843)))))))

(declare-fun b!4936263 () Bool)

(assert (=> b!4936263 (= e!3084264 (Cons!56843 (h!63291 testedP!110) (++!12400 (t!367457 testedP!110) (Cons!56843 (head!10570 lt!2033686) Nil!56843))))))

(assert (= (and d!1589062 c!841509) b!4936262))

(assert (= (and d!1589062 (not c!841509)) b!4936263))

(assert (= (and d!1589062 res!2106698) b!4936264))

(assert (= (and b!4936264 res!2106697) b!4936265))

(declare-fun m!5957748 () Bool)

(assert (=> d!1589062 m!5957748))

(assert (=> d!1589062 m!5957724))

(declare-fun m!5957750 () Bool)

(assert (=> d!1589062 m!5957750))

(declare-fun m!5957752 () Bool)

(assert (=> b!4936264 m!5957752))

(assert (=> b!4936264 m!5957538))

(declare-fun m!5957754 () Bool)

(assert (=> b!4936264 m!5957754))

(declare-fun m!5957756 () Bool)

(assert (=> b!4936263 m!5957756))

(assert (=> b!4936116 d!1589062))

(declare-fun d!1589064 () Bool)

(declare-fun e!3084273 () Bool)

(assert (=> d!1589064 e!3084273))

(declare-fun res!2106708 () Bool)

(assert (=> d!1589064 (=> res!2106708 e!3084273)))

(declare-fun lt!2033796 () Bool)

(assert (=> d!1589064 (= res!2106708 (not lt!2033796))))

(declare-fun e!3084272 () Bool)

(assert (=> d!1589064 (= lt!2033796 e!3084272)))

(declare-fun res!2106707 () Bool)

(assert (=> d!1589064 (=> res!2106707 e!3084272)))

(assert (=> d!1589064 (= res!2106707 ((_ is Nil!56843) (++!12400 testedP!110 (Cons!56843 (head!10570 lt!2033686) Nil!56843))))))

(assert (=> d!1589064 (= (isPrefix!5031 (++!12400 testedP!110 (Cons!56843 (head!10570 lt!2033686) Nil!56843)) lt!2033682) lt!2033796)))

(declare-fun b!4936275 () Bool)

(declare-fun res!2106709 () Bool)

(declare-fun e!3084271 () Bool)

(assert (=> b!4936275 (=> (not res!2106709) (not e!3084271))))

(assert (=> b!4936275 (= res!2106709 (= (head!10570 (++!12400 testedP!110 (Cons!56843 (head!10570 lt!2033686) Nil!56843))) (head!10570 lt!2033682)))))

(declare-fun b!4936274 () Bool)

(assert (=> b!4936274 (= e!3084272 e!3084271)))

(declare-fun res!2106710 () Bool)

(assert (=> b!4936274 (=> (not res!2106710) (not e!3084271))))

(assert (=> b!4936274 (= res!2106710 (not ((_ is Nil!56843) lt!2033682)))))

(declare-fun b!4936277 () Bool)

(assert (=> b!4936277 (= e!3084273 (>= (size!37652 lt!2033682) (size!37652 (++!12400 testedP!110 (Cons!56843 (head!10570 lt!2033686) Nil!56843)))))))

(declare-fun b!4936276 () Bool)

(assert (=> b!4936276 (= e!3084271 (isPrefix!5031 (tail!9709 (++!12400 testedP!110 (Cons!56843 (head!10570 lt!2033686) Nil!56843))) (tail!9709 lt!2033682)))))

(assert (= (and d!1589064 (not res!2106707)) b!4936274))

(assert (= (and b!4936274 res!2106710) b!4936275))

(assert (= (and b!4936275 res!2106709) b!4936276))

(assert (= (and d!1589064 (not res!2106708)) b!4936277))

(assert (=> b!4936275 m!5957478))

(declare-fun m!5957758 () Bool)

(assert (=> b!4936275 m!5957758))

(declare-fun m!5957760 () Bool)

(assert (=> b!4936275 m!5957760))

(assert (=> b!4936277 m!5957470))

(assert (=> b!4936277 m!5957478))

(declare-fun m!5957762 () Bool)

(assert (=> b!4936277 m!5957762))

(assert (=> b!4936276 m!5957478))

(declare-fun m!5957764 () Bool)

(assert (=> b!4936276 m!5957764))

(declare-fun m!5957766 () Bool)

(assert (=> b!4936276 m!5957766))

(assert (=> b!4936276 m!5957764))

(assert (=> b!4936276 m!5957766))

(declare-fun m!5957768 () Bool)

(assert (=> b!4936276 m!5957768))

(assert (=> b!4936116 d!1589064))

(declare-fun d!1589066 () Bool)

(assert (=> d!1589066 (= (tail!9709 testedSuffix!70) (t!367457 testedSuffix!70))))

(assert (=> b!4936116 d!1589066))

(declare-fun d!1589068 () Bool)

(assert (=> d!1589068 (= (++!12400 (++!12400 testedP!110 (Cons!56843 lt!2033685 Nil!56843)) lt!2033677) lt!2033682)))

(declare-fun lt!2033799 () Unit!147543)

(declare-fun choose!36275 (List!56967 C!27096 List!56967 List!56967) Unit!147543)

(assert (=> d!1589068 (= lt!2033799 (choose!36275 testedP!110 lt!2033685 lt!2033677 lt!2033682))))

(assert (=> d!1589068 (= (++!12400 testedP!110 (Cons!56843 lt!2033685 lt!2033677)) lt!2033682)))

(assert (=> d!1589068 (= (lemmaMoveElementToOtherListKeepsConcatEq!1413 testedP!110 lt!2033685 lt!2033677 lt!2033682) lt!2033799)))

(declare-fun bs!1180764 () Bool)

(assert (= bs!1180764 d!1589068))

(assert (=> bs!1180764 m!5957480))

(assert (=> bs!1180764 m!5957480))

(declare-fun m!5957770 () Bool)

(assert (=> bs!1180764 m!5957770))

(declare-fun m!5957772 () Bool)

(assert (=> bs!1180764 m!5957772))

(declare-fun m!5957774 () Bool)

(assert (=> bs!1180764 m!5957774))

(assert (=> b!4936116 d!1589068))

(declare-fun d!1589070 () Bool)

(assert (=> d!1589070 (isPrefix!5031 (++!12400 testedP!110 (Cons!56843 (head!10570 (getSuffix!3015 lt!2033682 testedP!110)) Nil!56843)) lt!2033682)))

(declare-fun lt!2033802 () Unit!147543)

(declare-fun choose!36277 (List!56967 List!56967) Unit!147543)

(assert (=> d!1589070 (= lt!2033802 (choose!36277 testedP!110 lt!2033682))))

(assert (=> d!1589070 (isPrefix!5031 testedP!110 lt!2033682)))

(assert (=> d!1589070 (= (lemmaAddHeadSuffixToPrefixStillPrefix!801 testedP!110 lt!2033682) lt!2033802)))

(declare-fun bs!1180765 () Bool)

(assert (= bs!1180765 d!1589070))

(declare-fun m!5957776 () Bool)

(assert (=> bs!1180765 m!5957776))

(declare-fun m!5957778 () Bool)

(assert (=> bs!1180765 m!5957778))

(declare-fun m!5957780 () Bool)

(assert (=> bs!1180765 m!5957780))

(assert (=> bs!1180765 m!5957534))

(assert (=> bs!1180765 m!5957544))

(assert (=> bs!1180765 m!5957778))

(assert (=> bs!1180765 m!5957534))

(declare-fun m!5957782 () Bool)

(assert (=> bs!1180765 m!5957782))

(assert (=> b!4936116 d!1589070))

(declare-fun bs!1180766 () Bool)

(declare-fun d!1589072 () Bool)

(assert (= bs!1180766 (and d!1589072 d!1589056)))

(declare-fun lambda!245889 () Int)

(assert (=> bs!1180766 (not (= lambda!245889 lambda!245876))))

(declare-fun bs!1180767 () Bool)

(declare-fun b!4936282 () Bool)

(assert (= bs!1180767 (and b!4936282 d!1589056)))

(declare-fun lambda!245890 () Int)

(assert (=> bs!1180767 (not (= lambda!245890 lambda!245876))))

(declare-fun bs!1180768 () Bool)

(assert (= bs!1180768 (and b!4936282 d!1589072)))

(assert (=> bs!1180768 (not (= lambda!245890 lambda!245889))))

(declare-fun bs!1180769 () Bool)

(declare-fun b!4936283 () Bool)

(assert (= bs!1180769 (and b!4936283 d!1589056)))

(declare-fun lambda!245891 () Int)

(assert (=> bs!1180769 (not (= lambda!245891 lambda!245876))))

(declare-fun bs!1180770 () Bool)

(assert (= bs!1180770 (and b!4936283 d!1589072)))

(assert (=> bs!1180770 (not (= lambda!245891 lambda!245889))))

(declare-fun bs!1180771 () Bool)

(assert (= bs!1180771 (and b!4936283 b!4936282)))

(assert (=> bs!1180771 (= lambda!245891 lambda!245890)))

(declare-fun e!3084280 () Unit!147543)

(declare-fun Unit!147552 () Unit!147543)

(assert (=> b!4936283 (= e!3084280 Unit!147552)))

(declare-datatypes ((List!56969 0))(
  ( (Nil!56845) (Cons!56845 (h!63293 Context!6150) (t!367459 List!56969)) )
))
(declare-fun lt!2033824 () List!56969)

(declare-fun call!344411 () List!56969)

(assert (=> b!4936283 (= lt!2033824 call!344411)))

(declare-fun lt!2033826 () Unit!147543)

(declare-fun lemmaForallThenNotExists!190 (List!56969 Int) Unit!147543)

(assert (=> b!4936283 (= lt!2033826 (lemmaForallThenNotExists!190 lt!2033824 lambda!245889))))

(declare-fun call!344410 () Bool)

(assert (=> b!4936283 (not call!344410)))

(declare-fun lt!2033822 () Unit!147543)

(assert (=> b!4936283 (= lt!2033822 lt!2033826)))

(declare-fun bm!344406 () Bool)

(declare-fun toList!7969 ((InoxSet Context!6150)) List!56969)

(assert (=> bm!344406 (= call!344411 (toList!7969 z!3568))))

(declare-fun lt!2033821 () Bool)

(declare-datatypes ((Option!14187 0))(
  ( (None!14186) (Some!14186 (v!50158 List!56967)) )
))
(declare-fun isEmpty!30614 (Option!14187) Bool)

(declare-fun getLanguageWitness!647 ((InoxSet Context!6150)) Option!14187)

(assert (=> d!1589072 (= lt!2033821 (isEmpty!30614 (getLanguageWitness!647 z!3568)))))

(declare-fun forall!13196 ((InoxSet Context!6150) Int) Bool)

(assert (=> d!1589072 (= lt!2033821 (forall!13196 z!3568 lambda!245889))))

(declare-fun lt!2033819 () Unit!147543)

(assert (=> d!1589072 (= lt!2033819 e!3084280)))

(declare-fun c!841520 () Bool)

(assert (=> d!1589072 (= c!841520 (not (forall!13196 z!3568 lambda!245889)))))

(assert (=> d!1589072 (= (lostCauseZipper!751 z!3568) lt!2033821)))

(declare-fun Unit!147553 () Unit!147543)

(assert (=> b!4936282 (= e!3084280 Unit!147553)))

(declare-fun lt!2033825 () List!56969)

(assert (=> b!4936282 (= lt!2033825 call!344411)))

(declare-fun lt!2033820 () Unit!147543)

(declare-fun lemmaNotForallThenExists!207 (List!56969 Int) Unit!147543)

(assert (=> b!4936282 (= lt!2033820 (lemmaNotForallThenExists!207 lt!2033825 lambda!245889))))

(assert (=> b!4936282 call!344410))

(declare-fun lt!2033823 () Unit!147543)

(assert (=> b!4936282 (= lt!2033823 lt!2033820)))

(declare-fun bm!344405 () Bool)

(declare-fun exists!1286 (List!56969 Int) Bool)

(assert (=> bm!344405 (= call!344410 (exists!1286 (ite c!841520 lt!2033825 lt!2033824) (ite c!841520 lambda!245890 lambda!245891)))))

(assert (= (and d!1589072 c!841520) b!4936282))

(assert (= (and d!1589072 (not c!841520)) b!4936283))

(assert (= (or b!4936282 b!4936283) bm!344405))

(assert (= (or b!4936282 b!4936283) bm!344406))

(declare-fun m!5957784 () Bool)

(assert (=> bm!344405 m!5957784))

(declare-fun m!5957786 () Bool)

(assert (=> b!4936283 m!5957786))

(declare-fun m!5957788 () Bool)

(assert (=> bm!344406 m!5957788))

(declare-fun m!5957790 () Bool)

(assert (=> d!1589072 m!5957790))

(assert (=> d!1589072 m!5957790))

(declare-fun m!5957792 () Bool)

(assert (=> d!1589072 m!5957792))

(declare-fun m!5957794 () Bool)

(assert (=> d!1589072 m!5957794))

(assert (=> d!1589072 m!5957794))

(declare-fun m!5957796 () Bool)

(assert (=> b!4936282 m!5957796))

(assert (=> b!4936118 d!1589072))

(declare-fun d!1589074 () Bool)

(assert (=> d!1589074 (= testedSuffix!70 lt!2033686)))

(declare-fun lt!2033829 () Unit!147543)

(declare-fun choose!36278 (List!56967 List!56967 List!56967 List!56967 List!56967) Unit!147543)

(assert (=> d!1589074 (= lt!2033829 (choose!36278 testedP!110 testedSuffix!70 testedP!110 lt!2033686 lt!2033682))))

(assert (=> d!1589074 (isPrefix!5031 testedP!110 lt!2033682)))

(assert (=> d!1589074 (= (lemmaSamePrefixThenSameSuffix!2429 testedP!110 testedSuffix!70 testedP!110 lt!2033686 lt!2033682) lt!2033829)))

(declare-fun bs!1180772 () Bool)

(assert (= bs!1180772 d!1589074))

(declare-fun m!5957798 () Bool)

(assert (=> bs!1180772 m!5957798))

(assert (=> bs!1180772 m!5957544))

(assert (=> b!4936118 d!1589074))

(declare-fun d!1589076 () Bool)

(declare-fun lt!2033832 () List!56967)

(assert (=> d!1589076 (= (++!12400 testedP!110 lt!2033832) lt!2033682)))

(declare-fun e!3084283 () List!56967)

(assert (=> d!1589076 (= lt!2033832 e!3084283)))

(declare-fun c!841523 () Bool)

(assert (=> d!1589076 (= c!841523 ((_ is Cons!56843) testedP!110))))

(assert (=> d!1589076 (>= (size!37652 lt!2033682) (size!37652 testedP!110))))

(assert (=> d!1589076 (= (getSuffix!3015 lt!2033682 testedP!110) lt!2033832)))

(declare-fun b!4936288 () Bool)

(assert (=> b!4936288 (= e!3084283 (getSuffix!3015 (tail!9709 lt!2033682) (t!367457 testedP!110)))))

(declare-fun b!4936289 () Bool)

(assert (=> b!4936289 (= e!3084283 lt!2033682)))

(assert (= (and d!1589076 c!841523) b!4936288))

(assert (= (and d!1589076 (not c!841523)) b!4936289))

(declare-fun m!5957800 () Bool)

(assert (=> d!1589076 m!5957800))

(assert (=> d!1589076 m!5957470))

(assert (=> d!1589076 m!5957538))

(assert (=> b!4936288 m!5957766))

(assert (=> b!4936288 m!5957766))

(declare-fun m!5957802 () Bool)

(assert (=> b!4936288 m!5957802))

(assert (=> b!4936118 d!1589076))

(declare-fun d!1589078 () Bool)

(declare-fun lt!2033835 () C!27096)

(declare-fun contains!19476 (List!56967 C!27096) Bool)

(assert (=> d!1589078 (contains!19476 lt!2033682 lt!2033835)))

(declare-fun e!3084288 () C!27096)

(assert (=> d!1589078 (= lt!2033835 e!3084288)))

(declare-fun c!841526 () Bool)

(assert (=> d!1589078 (= c!841526 (= testedPSize!70 0))))

(declare-fun e!3084289 () Bool)

(assert (=> d!1589078 e!3084289))

(declare-fun res!2106713 () Bool)

(assert (=> d!1589078 (=> (not res!2106713) (not e!3084289))))

(assert (=> d!1589078 (= res!2106713 (<= 0 testedPSize!70))))

(assert (=> d!1589078 (= (apply!13755 lt!2033682 testedPSize!70) lt!2033835)))

(declare-fun b!4936296 () Bool)

(assert (=> b!4936296 (= e!3084289 (< testedPSize!70 (size!37652 lt!2033682)))))

(declare-fun b!4936297 () Bool)

(assert (=> b!4936297 (= e!3084288 (head!10570 lt!2033682))))

(declare-fun b!4936298 () Bool)

(assert (=> b!4936298 (= e!3084288 (apply!13755 (tail!9709 lt!2033682) (- testedPSize!70 1)))))

(assert (= (and d!1589078 res!2106713) b!4936296))

(assert (= (and d!1589078 c!841526) b!4936297))

(assert (= (and d!1589078 (not c!841526)) b!4936298))

(declare-fun m!5957804 () Bool)

(assert (=> d!1589078 m!5957804))

(assert (=> b!4936296 m!5957470))

(assert (=> b!4936297 m!5957760))

(assert (=> b!4936298 m!5957766))

(assert (=> b!4936298 m!5957766))

(declare-fun m!5957806 () Bool)

(assert (=> b!4936298 m!5957806))

(assert (=> b!4936108 d!1589078))

(declare-fun d!1589080 () Bool)

(assert (=> d!1589080 (= (head!10570 testedSuffix!70) (h!63291 testedSuffix!70))))

(assert (=> b!4936108 d!1589080))

(declare-fun d!1589082 () Bool)

(assert (=> d!1589082 (= (head!10570 (drop!2264 lt!2033682 testedPSize!70)) (apply!13755 lt!2033682 testedPSize!70))))

(declare-fun lt!2033838 () Unit!147543)

(declare-fun choose!36279 (List!56967 Int) Unit!147543)

(assert (=> d!1589082 (= lt!2033838 (choose!36279 lt!2033682 testedPSize!70))))

(declare-fun e!3084292 () Bool)

(assert (=> d!1589082 e!3084292))

(declare-fun res!2106716 () Bool)

(assert (=> d!1589082 (=> (not res!2106716) (not e!3084292))))

(assert (=> d!1589082 (= res!2106716 (>= testedPSize!70 0))))

(assert (=> d!1589082 (= (lemmaDropApply!1322 lt!2033682 testedPSize!70) lt!2033838)))

(declare-fun b!4936301 () Bool)

(assert (=> b!4936301 (= e!3084292 (< testedPSize!70 (size!37652 lt!2033682)))))

(assert (= (and d!1589082 res!2106716) b!4936301))

(assert (=> d!1589082 m!5957506))

(assert (=> d!1589082 m!5957506))

(assert (=> d!1589082 m!5957508))

(assert (=> d!1589082 m!5957518))

(declare-fun m!5957808 () Bool)

(assert (=> d!1589082 m!5957808))

(assert (=> b!4936301 m!5957470))

(assert (=> b!4936108 d!1589082))

(declare-fun d!1589084 () Bool)

(assert (=> d!1589084 (and (= lt!2033694 testedP!110) (= lt!2033679 testedSuffix!70))))

(declare-fun lt!2033841 () Unit!147543)

(declare-fun choose!36280 (List!56967 List!56967 List!56967 List!56967) Unit!147543)

(assert (=> d!1589084 (= lt!2033841 (choose!36280 lt!2033694 lt!2033679 testedP!110 testedSuffix!70))))

(assert (=> d!1589084 (= (++!12400 lt!2033694 lt!2033679) (++!12400 testedP!110 testedSuffix!70))))

(assert (=> d!1589084 (= (lemmaConcatSameAndSameSizesThenSameLists!699 lt!2033694 lt!2033679 testedP!110 testedSuffix!70) lt!2033841)))

(declare-fun bs!1180773 () Bool)

(assert (= bs!1180773 d!1589084))

(declare-fun m!5957810 () Bool)

(assert (=> bs!1180773 m!5957810))

(assert (=> bs!1180773 m!5957520))

(assert (=> bs!1180773 m!5957502))

(assert (=> b!4936108 d!1589084))

(declare-fun d!1589086 () Bool)

(assert (=> d!1589086 (= (head!10570 (drop!2264 lt!2033682 testedPSize!70)) (h!63291 (drop!2264 lt!2033682 testedPSize!70)))))

(assert (=> b!4936108 d!1589086))

(declare-fun b!4936340 () Bool)

(declare-fun e!3084314 () Int)

(declare-fun call!344424 () Int)

(assert (=> b!4936340 (= e!3084314 call!344424)))

(declare-fun bm!344419 () Bool)

(assert (=> bm!344419 (= call!344424 (size!37652 lt!2033682))))

(declare-fun b!4936341 () Bool)

(declare-fun e!3084317 () Int)

(assert (=> b!4936341 (= e!3084314 e!3084317)))

(declare-fun c!841545 () Bool)

(assert (=> b!4936341 (= c!841545 (>= testedPSize!70 call!344424))))

(declare-fun b!4936342 () Bool)

(assert (=> b!4936342 (= e!3084317 (- call!344424 testedPSize!70))))

(declare-fun d!1589088 () Bool)

(declare-fun e!3084315 () Bool)

(assert (=> d!1589088 e!3084315))

(declare-fun res!2106719 () Bool)

(assert (=> d!1589088 (=> (not res!2106719) (not e!3084315))))

(declare-fun lt!2033928 () List!56967)

(assert (=> d!1589088 (= res!2106719 (= ((_ map implies) (content!10106 lt!2033928) (content!10106 lt!2033682)) ((as const (InoxSet C!27096)) true)))))

(declare-fun e!3084313 () List!56967)

(assert (=> d!1589088 (= lt!2033928 e!3084313)))

(declare-fun c!841546 () Bool)

(assert (=> d!1589088 (= c!841546 ((_ is Nil!56843) lt!2033682))))

(assert (=> d!1589088 (= (drop!2264 lt!2033682 testedPSize!70) lt!2033928)))

(declare-fun b!4936343 () Bool)

(declare-fun e!3084316 () List!56967)

(assert (=> b!4936343 (= e!3084316 lt!2033682)))

(declare-fun b!4936344 () Bool)

(assert (=> b!4936344 (= e!3084316 (drop!2264 (t!367457 lt!2033682) (- testedPSize!70 1)))))

(declare-fun b!4936345 () Bool)

(assert (=> b!4936345 (= e!3084313 e!3084316)))

(declare-fun c!841548 () Bool)

(assert (=> b!4936345 (= c!841548 (<= testedPSize!70 0))))

(declare-fun b!4936346 () Bool)

(assert (=> b!4936346 (= e!3084317 0)))

(declare-fun b!4936347 () Bool)

(assert (=> b!4936347 (= e!3084315 (= (size!37652 lt!2033928) e!3084314))))

(declare-fun c!841547 () Bool)

(assert (=> b!4936347 (= c!841547 (<= testedPSize!70 0))))

(declare-fun b!4936348 () Bool)

(assert (=> b!4936348 (= e!3084313 Nil!56843)))

(assert (= (and d!1589088 c!841546) b!4936348))

(assert (= (and d!1589088 (not c!841546)) b!4936345))

(assert (= (and b!4936345 c!841548) b!4936343))

(assert (= (and b!4936345 (not c!841548)) b!4936344))

(assert (= (and d!1589088 res!2106719) b!4936347))

(assert (= (and b!4936347 c!841547) b!4936340))

(assert (= (and b!4936347 (not c!841547)) b!4936341))

(assert (= (and b!4936341 c!841545) b!4936346))

(assert (= (and b!4936341 (not c!841545)) b!4936342))

(assert (= (or b!4936340 b!4936341 b!4936342) bm!344419))

(assert (=> bm!344419 m!5957470))

(declare-fun m!5957812 () Bool)

(assert (=> d!1589088 m!5957812))

(declare-fun m!5957814 () Bool)

(assert (=> d!1589088 m!5957814))

(declare-fun m!5957816 () Bool)

(assert (=> b!4936344 m!5957816))

(declare-fun m!5957818 () Bool)

(assert (=> b!4936347 m!5957818))

(assert (=> b!4936108 d!1589088))

(declare-fun d!1589090 () Bool)

(declare-fun lt!2033931 () C!27096)

(assert (=> d!1589090 (= lt!2033931 (apply!13755 (list!18058 totalInput!685) testedPSize!70))))

(declare-fun apply!13757 (Conc!14942 Int) C!27096)

(assert (=> d!1589090 (= lt!2033931 (apply!13757 (c!841461 totalInput!685) testedPSize!70))))

(declare-fun e!3084322 () Bool)

(assert (=> d!1589090 e!3084322))

(declare-fun res!2106722 () Bool)

(assert (=> d!1589090 (=> (not res!2106722) (not e!3084322))))

(assert (=> d!1589090 (= res!2106722 (<= 0 testedPSize!70))))

(assert (=> d!1589090 (= (apply!13754 totalInput!685 testedPSize!70) lt!2033931)))

(declare-fun b!4936355 () Bool)

(assert (=> b!4936355 (= e!3084322 (< testedPSize!70 (size!37653 totalInput!685)))))

(assert (= (and d!1589090 res!2106722) b!4936355))

(assert (=> d!1589090 m!5957500))

(assert (=> d!1589090 m!5957500))

(declare-fun m!5957820 () Bool)

(assert (=> d!1589090 m!5957820))

(declare-fun m!5957822 () Bool)

(assert (=> d!1589090 m!5957822))

(assert (=> b!4936355 m!5957536))

(assert (=> b!4936108 d!1589090))

(declare-fun d!1589092 () Bool)

(declare-fun lt!2033932 () Int)

(assert (=> d!1589092 (>= lt!2033932 0)))

(declare-fun e!3084323 () Int)

(assert (=> d!1589092 (= lt!2033932 e!3084323)))

(declare-fun c!841551 () Bool)

(assert (=> d!1589092 (= c!841551 ((_ is Nil!56843) testedP!110))))

(assert (=> d!1589092 (= (size!37652 testedP!110) lt!2033932)))

(declare-fun b!4936356 () Bool)

(assert (=> b!4936356 (= e!3084323 0)))

(declare-fun b!4936357 () Bool)

(assert (=> b!4936357 (= e!3084323 (+ 1 (size!37652 (t!367457 testedP!110))))))

(assert (= (and d!1589092 c!841551) b!4936356))

(assert (= (and d!1589092 (not c!841551)) b!4936357))

(declare-fun m!5957824 () Bool)

(assert (=> b!4936357 m!5957824))

(assert (=> b!4936114 d!1589092))

(declare-fun bm!344460 () Bool)

(declare-fun call!344467 () Bool)

(assert (=> bm!344460 (= call!344467 (nullableZipper!838 (derivationStepZipper!600 z!3568 lt!2033685)))))

(declare-fun b!4936448 () Bool)

(declare-fun e!3084377 () Unit!147543)

(declare-fun Unit!147554 () Unit!147543)

(assert (=> b!4936448 (= e!3084377 Unit!147554)))

(declare-fun lt!2034109 () List!56967)

(assert (=> b!4936448 (= lt!2034109 (list!18058 totalInput!685))))

(declare-fun lt!2034093 () List!56967)

(assert (=> b!4936448 (= lt!2034093 (list!18058 totalInput!685))))

(declare-fun lt!2034069 () Unit!147543)

(declare-fun call!344465 () Unit!147543)

(assert (=> b!4936448 (= lt!2034069 call!344465)))

(declare-fun call!344470 () Bool)

(assert (=> b!4936448 call!344470))

(declare-fun lt!2034103 () Unit!147543)

(assert (=> b!4936448 (= lt!2034103 lt!2034069)))

(declare-fun lt!2034098 () List!56967)

(assert (=> b!4936448 (= lt!2034098 (list!18058 totalInput!685))))

(declare-fun lt!2034088 () Unit!147543)

(declare-fun call!344471 () Unit!147543)

(assert (=> b!4936448 (= lt!2034088 call!344471)))

(assert (=> b!4936448 (= lt!2034098 lt!2033681)))

(declare-fun lt!2034110 () Unit!147543)

(assert (=> b!4936448 (= lt!2034110 lt!2034088)))

(assert (=> b!4936448 false))

(declare-fun c!841581 () Bool)

(declare-fun bm!344461 () Bool)

(declare-fun lt!2034102 () List!56967)

(declare-fun lt!2034072 () List!56967)

(assert (=> bm!344461 (= call!344465 (lemmaIsPrefixRefl!3397 (ite c!841581 lt!2034072 lt!2034109) (ite c!841581 lt!2034102 lt!2034093)))))

(declare-fun b!4936449 () Bool)

(declare-fun e!3084378 () Int)

(assert (=> b!4936449 (= e!3084378 0)))

(declare-fun b!4936450 () Bool)

(declare-fun e!3084375 () Int)

(declare-fun lt!2034078 () Int)

(assert (=> b!4936450 (= e!3084375 (ite (= lt!2034078 0) (+ 1 testedPSize!70) lt!2034078))))

(declare-fun call!344466 () Int)

(assert (=> b!4936450 (= lt!2034078 call!344466)))

(declare-fun call!344474 () (InoxSet Context!6150))

(declare-fun call!344469 () C!27096)

(declare-fun bm!344462 () Bool)

(assert (=> bm!344462 (= call!344474 (derivationStepZipper!600 (derivationStepZipper!600 z!3568 lt!2033685) call!344469))))

(declare-fun b!4936451 () Bool)

(declare-fun e!3084373 () Int)

(declare-fun e!3084376 () Int)

(assert (=> b!4936451 (= e!3084373 e!3084376)))

(assert (=> b!4936451 (= c!841581 (= (+ 1 testedPSize!70) totalInputSize!132))))

(declare-fun call!344473 () List!56967)

(declare-fun call!344468 () List!56967)

(declare-fun bm!344463 () Bool)

(assert (=> bm!344463 (= call!344466 (findLongestMatchInnerZipperFast!97 call!344474 call!344468 (+ 1 testedPSize!70 1) call!344473 totalInput!685 totalInputSize!132))))

(declare-fun bm!344464 () Bool)

(assert (=> bm!344464 (= call!344470 (isPrefix!5031 (ite c!841581 lt!2034072 lt!2034109) (ite c!841581 lt!2034102 lt!2034093)))))

(declare-fun lt!2034084 () Int)

(declare-fun d!1589094 () Bool)

(declare-fun findLongestMatchInnerZipper!68 ((InoxSet Context!6150) List!56967 Int List!56967 List!56967 Int) tuple2!61358)

(assert (=> d!1589094 (= (size!37652 (_1!33982 (findLongestMatchInnerZipper!68 (derivationStepZipper!600 z!3568 lt!2033685) lt!2033681 (+ 1 testedPSize!70) lt!2033677 (list!18058 totalInput!685) totalInputSize!132))) lt!2034084)))

(assert (=> d!1589094 (= lt!2034084 e!3084373)))

(declare-fun c!841584 () Bool)

(assert (=> d!1589094 (= c!841584 (lostCauseZipper!751 (derivationStepZipper!600 z!3568 lt!2033685)))))

(declare-fun lt!2034081 () Unit!147543)

(declare-fun Unit!147555 () Unit!147543)

(assert (=> d!1589094 (= lt!2034081 Unit!147555)))

(assert (=> d!1589094 (= (getSuffix!3015 (list!18058 totalInput!685) lt!2033681) lt!2033677)))

(declare-fun lt!2034092 () Unit!147543)

(declare-fun lt!2034106 () Unit!147543)

(assert (=> d!1589094 (= lt!2034092 lt!2034106)))

(declare-fun lt!2034099 () List!56967)

(assert (=> d!1589094 (= lt!2033677 lt!2034099)))

(assert (=> d!1589094 (= lt!2034106 (lemmaSamePrefixThenSameSuffix!2429 lt!2033681 lt!2033677 lt!2033681 lt!2034099 (list!18058 totalInput!685)))))

(assert (=> d!1589094 (= lt!2034099 (getSuffix!3015 (list!18058 totalInput!685) lt!2033681))))

(declare-fun lt!2034090 () Unit!147543)

(declare-fun lt!2034082 () Unit!147543)

(assert (=> d!1589094 (= lt!2034090 lt!2034082)))

(assert (=> d!1589094 (isPrefix!5031 lt!2033681 (++!12400 lt!2033681 lt!2033677))))

(assert (=> d!1589094 (= lt!2034082 (lemmaConcatTwoListThenFirstIsPrefix!3255 lt!2033681 lt!2033677))))

(assert (=> d!1589094 (= (++!12400 lt!2033681 lt!2033677) (list!18058 totalInput!685))))

(assert (=> d!1589094 (= (findLongestMatchInnerZipperFast!97 (derivationStepZipper!600 z!3568 lt!2033685) lt!2033681 (+ 1 testedPSize!70) lt!2033677 totalInput!685 totalInputSize!132) lt!2034084)))

(declare-fun b!4936452 () Bool)

(declare-fun e!3084374 () List!56967)

(declare-fun call!344472 () List!56967)

(assert (=> b!4936452 (= e!3084374 call!344472)))

(declare-fun b!4936453 () Bool)

(assert (=> b!4936453 (= e!3084373 0)))

(declare-fun bm!344465 () Bool)

(declare-fun c!841580 () Bool)

(assert (=> bm!344465 (= c!841580 c!841581)))

(declare-fun lt!2034091 () List!56967)

(assert (=> bm!344465 (= call!344471 (lemmaIsPrefixSameLengthThenSameList!1155 (ite c!841581 lt!2034091 lt!2034098) lt!2033681 e!3084374))))

(declare-fun b!4936454 () Bool)

(declare-fun c!841583 () Bool)

(assert (=> b!4936454 (= c!841583 call!344467)))

(declare-fun lt!2034079 () Unit!147543)

(declare-fun lt!2034097 () Unit!147543)

(assert (=> b!4936454 (= lt!2034079 lt!2034097)))

(declare-fun lt!2034087 () List!56967)

(declare-fun lt!2034094 () List!56967)

(declare-fun lt!2034070 () C!27096)

(assert (=> b!4936454 (= (++!12400 (++!12400 lt!2033681 (Cons!56843 lt!2034070 Nil!56843)) lt!2034094) lt!2034087)))

(assert (=> b!4936454 (= lt!2034097 (lemmaMoveElementToOtherListKeepsConcatEq!1413 lt!2033681 lt!2034070 lt!2034094 lt!2034087))))

(assert (=> b!4936454 (= lt!2034087 (list!18058 totalInput!685))))

(assert (=> b!4936454 (= lt!2034094 (tail!9709 lt!2033677))))

(assert (=> b!4936454 (= lt!2034070 (apply!13754 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun lt!2034075 () Unit!147543)

(declare-fun lt!2034104 () Unit!147543)

(assert (=> b!4936454 (= lt!2034075 lt!2034104)))

(declare-fun lt!2034107 () List!56967)

(assert (=> b!4936454 (isPrefix!5031 (++!12400 lt!2033681 (Cons!56843 (head!10570 (getSuffix!3015 lt!2034107 lt!2033681)) Nil!56843)) lt!2034107)))

(assert (=> b!4936454 (= lt!2034104 (lemmaAddHeadSuffixToPrefixStillPrefix!801 lt!2033681 lt!2034107))))

(assert (=> b!4936454 (= lt!2034107 (list!18058 totalInput!685))))

(declare-fun lt!2034089 () Unit!147543)

(assert (=> b!4936454 (= lt!2034089 e!3084377)))

(declare-fun c!841585 () Bool)

(assert (=> b!4936454 (= c!841585 (= (size!37652 lt!2033681) (size!37653 totalInput!685)))))

(declare-fun lt!2034085 () Unit!147543)

(declare-fun lt!2034076 () Unit!147543)

(assert (=> b!4936454 (= lt!2034085 lt!2034076)))

(declare-fun lt!2034086 () List!56967)

(assert (=> b!4936454 (<= (size!37652 lt!2033681) (size!37652 lt!2034086))))

(assert (=> b!4936454 (= lt!2034076 (lemmaIsPrefixThenSmallerEqSize!719 lt!2033681 lt!2034086))))

(assert (=> b!4936454 (= lt!2034086 (list!18058 totalInput!685))))

(declare-fun lt!2034105 () Unit!147543)

(declare-fun lt!2034073 () Unit!147543)

(assert (=> b!4936454 (= lt!2034105 lt!2034073)))

(declare-fun lt!2034096 () List!56967)

(assert (=> b!4936454 (= (head!10570 (drop!2264 lt!2034096 (+ 1 testedPSize!70))) (apply!13755 lt!2034096 (+ 1 testedPSize!70)))))

(assert (=> b!4936454 (= lt!2034073 (lemmaDropApply!1322 lt!2034096 (+ 1 testedPSize!70)))))

(assert (=> b!4936454 (= lt!2034096 (list!18058 totalInput!685))))

(declare-fun lt!2034100 () Unit!147543)

(declare-fun lt!2034074 () Unit!147543)

(assert (=> b!4936454 (= lt!2034100 lt!2034074)))

(declare-fun lt!2034108 () List!56967)

(declare-fun lt!2034080 () List!56967)

(assert (=> b!4936454 (and (= lt!2034080 lt!2033681) (= lt!2034108 lt!2033677))))

(assert (=> b!4936454 (= lt!2034074 (lemmaConcatSameAndSameSizesThenSameLists!699 lt!2034080 lt!2034108 lt!2033681 lt!2033677))))

(assert (=> b!4936454 (= lt!2034108 call!344472)))

(declare-fun lt!2034077 () tuple2!61350)

(assert (=> b!4936454 (= lt!2034080 (list!18058 (_1!33978 lt!2034077)))))

(assert (=> b!4936454 (= lt!2034077 (splitAt!337 totalInput!685 (+ 1 testedPSize!70)))))

(assert (=> b!4936454 (= e!3084376 e!3084375)))

(declare-fun b!4936455 () Bool)

(declare-fun c!841582 () Bool)

(assert (=> b!4936455 (= c!841582 call!344467)))

(declare-fun lt!2034101 () Unit!147543)

(declare-fun lt!2034095 () Unit!147543)

(assert (=> b!4936455 (= lt!2034101 lt!2034095)))

(assert (=> b!4936455 (= lt!2034091 lt!2033681)))

(assert (=> b!4936455 (= lt!2034095 call!344471)))

(assert (=> b!4936455 (= lt!2034091 call!344472)))

(declare-fun lt!2034071 () Unit!147543)

(declare-fun lt!2034083 () Unit!147543)

(assert (=> b!4936455 (= lt!2034071 lt!2034083)))

(assert (=> b!4936455 call!344470))

(assert (=> b!4936455 (= lt!2034083 call!344465)))

(assert (=> b!4936455 (= lt!2034102 call!344472)))

(assert (=> b!4936455 (= lt!2034072 call!344472)))

(assert (=> b!4936455 (= e!3084376 e!3084378)))

(declare-fun b!4936456 () Bool)

(assert (=> b!4936456 (= e!3084378 (+ 1 testedPSize!70))))

(declare-fun b!4936457 () Bool)

(assert (=> b!4936457 (= e!3084374 (list!18058 totalInput!685))))

(declare-fun bm!344466 () Bool)

(assert (=> bm!344466 (= call!344472 (list!18058 (ite c!841581 totalInput!685 (_2!33978 lt!2034077))))))

(declare-fun bm!344467 () Bool)

(assert (=> bm!344467 (= call!344473 (tail!9709 lt!2033677))))

(declare-fun b!4936458 () Bool)

(assert (=> b!4936458 (= e!3084375 call!344466)))

(declare-fun bm!344468 () Bool)

(assert (=> bm!344468 (= call!344469 (apply!13754 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun b!4936459 () Bool)

(declare-fun Unit!147556 () Unit!147543)

(assert (=> b!4936459 (= e!3084377 Unit!147556)))

(declare-fun bm!344469 () Bool)

(assert (=> bm!344469 (= call!344468 (++!12400 lt!2033681 (Cons!56843 call!344469 Nil!56843)))))

(assert (= (and d!1589094 c!841584) b!4936453))

(assert (= (and d!1589094 (not c!841584)) b!4936451))

(assert (= (and b!4936451 c!841581) b!4936455))

(assert (= (and b!4936451 (not c!841581)) b!4936454))

(assert (= (and b!4936455 c!841582) b!4936456))

(assert (= (and b!4936455 (not c!841582)) b!4936449))

(assert (= (and b!4936454 c!841585) b!4936448))

(assert (= (and b!4936454 (not c!841585)) b!4936459))

(assert (= (and b!4936454 c!841583) b!4936450))

(assert (= (and b!4936454 (not c!841583)) b!4936458))

(assert (= (or b!4936450 b!4936458) bm!344467))

(assert (= (or b!4936450 b!4936458) bm!344468))

(assert (= (or b!4936450 b!4936458) bm!344469))

(assert (= (or b!4936450 b!4936458) bm!344462))

(assert (= (or b!4936450 b!4936458) bm!344463))

(assert (= (or b!4936455 b!4936454) bm!344466))

(assert (= (or b!4936455 b!4936448) bm!344461))

(assert (= (or b!4936455 b!4936454) bm!344460))

(assert (= (or b!4936455 b!4936448) bm!344464))

(assert (= (or b!4936455 b!4936448) bm!344465))

(assert (= (and bm!344465 c!841580) b!4936452))

(assert (= (and bm!344465 (not c!841580)) b!4936457))

(assert (=> bm!344460 m!5957540))

(declare-fun m!5957966 () Bool)

(assert (=> bm!344460 m!5957966))

(assert (=> b!4936457 m!5957500))

(assert (=> d!1589094 m!5957540))

(assert (=> d!1589094 m!5957500))

(declare-fun m!5957968 () Bool)

(assert (=> d!1589094 m!5957968))

(declare-fun m!5957970 () Bool)

(assert (=> d!1589094 m!5957970))

(assert (=> d!1589094 m!5957500))

(assert (=> d!1589094 m!5957540))

(declare-fun m!5957972 () Bool)

(assert (=> d!1589094 m!5957972))

(assert (=> d!1589094 m!5957474))

(assert (=> d!1589094 m!5957500))

(declare-fun m!5957974 () Bool)

(assert (=> d!1589094 m!5957974))

(assert (=> d!1589094 m!5957500))

(declare-fun m!5957976 () Bool)

(assert (=> d!1589094 m!5957976))

(assert (=> d!1589094 m!5957474))

(declare-fun m!5957978 () Bool)

(assert (=> d!1589094 m!5957978))

(declare-fun m!5957980 () Bool)

(assert (=> d!1589094 m!5957980))

(declare-fun m!5957982 () Bool)

(assert (=> bm!344468 m!5957982))

(assert (=> b!4936448 m!5957500))

(declare-fun m!5957984 () Bool)

(assert (=> bm!344463 m!5957984))

(declare-fun m!5957986 () Bool)

(assert (=> bm!344464 m!5957986))

(declare-fun m!5957988 () Bool)

(assert (=> bm!344461 m!5957988))

(declare-fun m!5957990 () Bool)

(assert (=> bm!344469 m!5957990))

(declare-fun m!5957992 () Bool)

(assert (=> b!4936454 m!5957992))

(declare-fun m!5957994 () Bool)

(assert (=> b!4936454 m!5957994))

(assert (=> b!4936454 m!5957536))

(declare-fun m!5957996 () Bool)

(assert (=> b!4936454 m!5957996))

(declare-fun m!5957998 () Bool)

(assert (=> b!4936454 m!5957998))

(declare-fun m!5958000 () Bool)

(assert (=> b!4936454 m!5958000))

(declare-fun m!5958002 () Bool)

(assert (=> b!4936454 m!5958002))

(assert (=> b!4936454 m!5957742))

(assert (=> b!4936454 m!5957982))

(declare-fun m!5958004 () Bool)

(assert (=> b!4936454 m!5958004))

(declare-fun m!5958006 () Bool)

(assert (=> b!4936454 m!5958006))

(declare-fun m!5958008 () Bool)

(assert (=> b!4936454 m!5958008))

(declare-fun m!5958010 () Bool)

(assert (=> b!4936454 m!5958010))

(declare-fun m!5958012 () Bool)

(assert (=> b!4936454 m!5958012))

(assert (=> b!4936454 m!5957996))

(declare-fun m!5958014 () Bool)

(assert (=> b!4936454 m!5958014))

(declare-fun m!5958016 () Bool)

(assert (=> b!4936454 m!5958016))

(declare-fun m!5958018 () Bool)

(assert (=> b!4936454 m!5958018))

(declare-fun m!5958020 () Bool)

(assert (=> b!4936454 m!5958020))

(assert (=> b!4936454 m!5957500))

(assert (=> b!4936454 m!5958004))

(declare-fun m!5958022 () Bool)

(assert (=> b!4936454 m!5958022))

(assert (=> b!4936454 m!5958018))

(declare-fun m!5958024 () Bool)

(assert (=> b!4936454 m!5958024))

(assert (=> b!4936454 m!5958016))

(declare-fun m!5958026 () Bool)

(assert (=> b!4936454 m!5958026))

(declare-fun m!5958028 () Bool)

(assert (=> bm!344466 m!5958028))

(declare-fun m!5958030 () Bool)

(assert (=> bm!344465 m!5958030))

(assert (=> bm!344467 m!5958020))

(assert (=> bm!344462 m!5957540))

(declare-fun m!5958032 () Bool)

(assert (=> bm!344462 m!5958032))

(assert (=> b!4936125 d!1589094))

(declare-fun d!1589118 () Bool)

(assert (=> d!1589118 true))

(declare-fun lambda!245900 () Int)

(declare-fun flatMap!271 ((InoxSet Context!6150) Int) (InoxSet Context!6150))

(assert (=> d!1589118 (= (derivationStepZipper!600 z!3568 lt!2033685) (flatMap!271 z!3568 lambda!245900))))

(declare-fun bs!1180781 () Bool)

(assert (= bs!1180781 d!1589118))

(declare-fun m!5958034 () Bool)

(assert (=> bs!1180781 m!5958034))

(assert (=> b!4936125 d!1589118))

(declare-fun d!1589120 () Bool)

(declare-fun c!841590 () Bool)

(assert (=> d!1589120 (= c!841590 ((_ is Node!14942) (c!841461 totalInput!685)))))

(declare-fun e!3084383 () Bool)

(assert (=> d!1589120 (= (inv!73866 (c!841461 totalInput!685)) e!3084383)))

(declare-fun b!4936468 () Bool)

(declare-fun inv!73870 (Conc!14942) Bool)

(assert (=> b!4936468 (= e!3084383 (inv!73870 (c!841461 totalInput!685)))))

(declare-fun b!4936469 () Bool)

(declare-fun e!3084384 () Bool)

(assert (=> b!4936469 (= e!3084383 e!3084384)))

(declare-fun res!2106738 () Bool)

(assert (=> b!4936469 (= res!2106738 (not ((_ is Leaf!24846) (c!841461 totalInput!685))))))

(assert (=> b!4936469 (=> res!2106738 e!3084384)))

(declare-fun b!4936470 () Bool)

(declare-fun inv!73871 (Conc!14942) Bool)

(assert (=> b!4936470 (= e!3084384 (inv!73871 (c!841461 totalInput!685)))))

(assert (= (and d!1589120 c!841590) b!4936468))

(assert (= (and d!1589120 (not c!841590)) b!4936469))

(assert (= (and b!4936469 (not res!2106738)) b!4936470))

(declare-fun m!5958036 () Bool)

(assert (=> b!4936468 m!5958036))

(declare-fun m!5958038 () Bool)

(assert (=> b!4936470 m!5958038))

(assert (=> b!4936124 d!1589120))

(declare-fun d!1589122 () Bool)

(declare-fun lt!2034113 () Int)

(assert (=> d!1589122 (= lt!2034113 (size!37652 (list!18058 totalInput!685)))))

(declare-fun size!37655 (Conc!14942) Int)

(assert (=> d!1589122 (= lt!2034113 (size!37655 (c!841461 totalInput!685)))))

(assert (=> d!1589122 (= (size!37653 totalInput!685) lt!2034113)))

(declare-fun bs!1180782 () Bool)

(assert (= bs!1180782 d!1589122))

(assert (=> bs!1180782 m!5957500))

(assert (=> bs!1180782 m!5957500))

(declare-fun m!5958040 () Bool)

(assert (=> bs!1180782 m!5958040))

(declare-fun m!5958042 () Bool)

(assert (=> bs!1180782 m!5958042))

(assert (=> b!4936115 d!1589122))

(declare-fun d!1589124 () Bool)

(assert (=> d!1589124 (isPrefix!5031 lt!2033682 lt!2033682)))

(declare-fun lt!2034116 () Unit!147543)

(declare-fun choose!36281 (List!56967 List!56967) Unit!147543)

(assert (=> d!1589124 (= lt!2034116 (choose!36281 lt!2033682 lt!2033682))))

(assert (=> d!1589124 (= (lemmaIsPrefixRefl!3397 lt!2033682 lt!2033682) lt!2034116)))

(declare-fun bs!1180783 () Bool)

(assert (= bs!1180783 d!1589124))

(assert (=> bs!1180783 m!5957494))

(declare-fun m!5958044 () Bool)

(assert (=> bs!1180783 m!5958044))

(assert (=> b!4936122 d!1589124))

(declare-fun d!1589126 () Bool)

(declare-fun e!3084387 () Bool)

(assert (=> d!1589126 e!3084387))

(declare-fun res!2106740 () Bool)

(assert (=> d!1589126 (=> res!2106740 e!3084387)))

(declare-fun lt!2034117 () Bool)

(assert (=> d!1589126 (= res!2106740 (not lt!2034117))))

(declare-fun e!3084386 () Bool)

(assert (=> d!1589126 (= lt!2034117 e!3084386)))

(declare-fun res!2106739 () Bool)

(assert (=> d!1589126 (=> res!2106739 e!3084386)))

(assert (=> d!1589126 (= res!2106739 ((_ is Nil!56843) lt!2033682))))

(assert (=> d!1589126 (= (isPrefix!5031 lt!2033682 lt!2033682) lt!2034117)))

(declare-fun b!4936472 () Bool)

(declare-fun res!2106741 () Bool)

(declare-fun e!3084385 () Bool)

(assert (=> b!4936472 (=> (not res!2106741) (not e!3084385))))

(assert (=> b!4936472 (= res!2106741 (= (head!10570 lt!2033682) (head!10570 lt!2033682)))))

(declare-fun b!4936471 () Bool)

(assert (=> b!4936471 (= e!3084386 e!3084385)))

(declare-fun res!2106742 () Bool)

(assert (=> b!4936471 (=> (not res!2106742) (not e!3084385))))

(assert (=> b!4936471 (= res!2106742 (not ((_ is Nil!56843) lt!2033682)))))

(declare-fun b!4936474 () Bool)

(assert (=> b!4936474 (= e!3084387 (>= (size!37652 lt!2033682) (size!37652 lt!2033682)))))

(declare-fun b!4936473 () Bool)

(assert (=> b!4936473 (= e!3084385 (isPrefix!5031 (tail!9709 lt!2033682) (tail!9709 lt!2033682)))))

(assert (= (and d!1589126 (not res!2106739)) b!4936471))

(assert (= (and b!4936471 res!2106742) b!4936472))

(assert (= (and b!4936472 res!2106741) b!4936473))

(assert (= (and d!1589126 (not res!2106740)) b!4936474))

(assert (=> b!4936472 m!5957760))

(assert (=> b!4936472 m!5957760))

(assert (=> b!4936474 m!5957470))

(assert (=> b!4936474 m!5957470))

(assert (=> b!4936473 m!5957766))

(assert (=> b!4936473 m!5957766))

(assert (=> b!4936473 m!5957766))

(assert (=> b!4936473 m!5957766))

(declare-fun m!5958046 () Bool)

(assert (=> b!4936473 m!5958046))

(assert (=> b!4936122 d!1589126))

(declare-fun d!1589128 () Bool)

(assert (=> d!1589128 (= lt!2033682 testedP!110)))

(declare-fun lt!2034120 () Unit!147543)

(declare-fun choose!36282 (List!56967 List!56967 List!56967) Unit!147543)

(assert (=> d!1589128 (= lt!2034120 (choose!36282 lt!2033682 testedP!110 lt!2033682))))

(assert (=> d!1589128 (isPrefix!5031 lt!2033682 lt!2033682)))

(assert (=> d!1589128 (= (lemmaIsPrefixSameLengthThenSameList!1155 lt!2033682 testedP!110 lt!2033682) lt!2034120)))

(declare-fun bs!1180784 () Bool)

(assert (= bs!1180784 d!1589128))

(declare-fun m!5958048 () Bool)

(assert (=> bs!1180784 m!5958048))

(assert (=> bs!1180784 m!5957494))

(assert (=> b!4936122 d!1589128))

(declare-fun d!1589130 () Bool)

(assert (=> d!1589130 (= (list!18058 totalInput!685) (list!18060 (c!841461 totalInput!685)))))

(declare-fun bs!1180785 () Bool)

(assert (= bs!1180785 d!1589130))

(declare-fun m!5958050 () Bool)

(assert (=> bs!1180785 m!5958050))

(assert (=> start!518880 d!1589130))

(declare-fun b!4936478 () Bool)

(declare-fun e!3084388 () Bool)

(declare-fun lt!2034121 () List!56967)

(assert (=> b!4936478 (= e!3084388 (or (not (= testedSuffix!70 Nil!56843)) (= lt!2034121 testedP!110)))))

(declare-fun d!1589132 () Bool)

(assert (=> d!1589132 e!3084388))

(declare-fun res!2106744 () Bool)

(assert (=> d!1589132 (=> (not res!2106744) (not e!3084388))))

(assert (=> d!1589132 (= res!2106744 (= (content!10106 lt!2034121) ((_ map or) (content!10106 testedP!110) (content!10106 testedSuffix!70))))))

(declare-fun e!3084389 () List!56967)

(assert (=> d!1589132 (= lt!2034121 e!3084389)))

(declare-fun c!841591 () Bool)

(assert (=> d!1589132 (= c!841591 ((_ is Nil!56843) testedP!110))))

(assert (=> d!1589132 (= (++!12400 testedP!110 testedSuffix!70) lt!2034121)))

(declare-fun b!4936475 () Bool)

(assert (=> b!4936475 (= e!3084389 testedSuffix!70)))

(declare-fun b!4936477 () Bool)

(declare-fun res!2106743 () Bool)

(assert (=> b!4936477 (=> (not res!2106743) (not e!3084388))))

(assert (=> b!4936477 (= res!2106743 (= (size!37652 lt!2034121) (+ (size!37652 testedP!110) (size!37652 testedSuffix!70))))))

(declare-fun b!4936476 () Bool)

(assert (=> b!4936476 (= e!3084389 (Cons!56843 (h!63291 testedP!110) (++!12400 (t!367457 testedP!110) testedSuffix!70)))))

(assert (= (and d!1589132 c!841591) b!4936475))

(assert (= (and d!1589132 (not c!841591)) b!4936476))

(assert (= (and d!1589132 res!2106744) b!4936477))

(assert (= (and b!4936477 res!2106743) b!4936478))

(declare-fun m!5958052 () Bool)

(assert (=> d!1589132 m!5958052))

(assert (=> d!1589132 m!5957724))

(declare-fun m!5958054 () Bool)

(assert (=> d!1589132 m!5958054))

(declare-fun m!5958056 () Bool)

(assert (=> b!4936477 m!5958056))

(assert (=> b!4936477 m!5957538))

(declare-fun m!5958058 () Bool)

(assert (=> b!4936477 m!5958058))

(declare-fun m!5958060 () Bool)

(assert (=> b!4936476 m!5958060))

(assert (=> start!518880 d!1589132))

(declare-fun d!1589134 () Bool)

(assert (=> d!1589134 (= (inv!73865 totalInput!685) (isBalanced!4119 (c!841461 totalInput!685)))))

(declare-fun bs!1180786 () Bool)

(assert (= bs!1180786 d!1589134))

(assert (=> bs!1180786 m!5957578))

(assert (=> start!518880 d!1589134))

(declare-fun d!1589136 () Bool)

(declare-fun lt!2034122 () Int)

(assert (=> d!1589136 (= lt!2034122 (size!37652 (list!18058 (_1!33978 lt!2033692))))))

(assert (=> d!1589136 (= lt!2034122 (size!37655 (c!841461 (_1!33978 lt!2033692))))))

(assert (=> d!1589136 (= (size!37653 (_1!33978 lt!2033692)) lt!2034122)))

(declare-fun bs!1180787 () Bool)

(assert (= bs!1180787 d!1589136))

(assert (=> bs!1180787 m!5957524))

(assert (=> bs!1180787 m!5957524))

(declare-fun m!5958062 () Bool)

(assert (=> bs!1180787 m!5958062))

(declare-fun m!5958064 () Bool)

(assert (=> bs!1180787 m!5958064))

(assert (=> b!4936113 d!1589136))

(declare-fun d!1589138 () Bool)

(declare-fun e!3084392 () Bool)

(assert (=> d!1589138 e!3084392))

(declare-fun res!2106746 () Bool)

(assert (=> d!1589138 (=> res!2106746 e!3084392)))

(declare-fun lt!2034123 () Bool)

(assert (=> d!1589138 (= res!2106746 (not lt!2034123))))

(declare-fun e!3084391 () Bool)

(assert (=> d!1589138 (= lt!2034123 e!3084391)))

(declare-fun res!2106745 () Bool)

(assert (=> d!1589138 (=> res!2106745 e!3084391)))

(assert (=> d!1589138 (= res!2106745 ((_ is Nil!56843) testedP!110))))

(assert (=> d!1589138 (= (isPrefix!5031 testedP!110 lt!2033682) lt!2034123)))

(declare-fun b!4936480 () Bool)

(declare-fun res!2106747 () Bool)

(declare-fun e!3084390 () Bool)

(assert (=> b!4936480 (=> (not res!2106747) (not e!3084390))))

(assert (=> b!4936480 (= res!2106747 (= (head!10570 testedP!110) (head!10570 lt!2033682)))))

(declare-fun b!4936479 () Bool)

(assert (=> b!4936479 (= e!3084391 e!3084390)))

(declare-fun res!2106748 () Bool)

(assert (=> b!4936479 (=> (not res!2106748) (not e!3084390))))

(assert (=> b!4936479 (= res!2106748 (not ((_ is Nil!56843) lt!2033682)))))

(declare-fun b!4936482 () Bool)

(assert (=> b!4936482 (= e!3084392 (>= (size!37652 lt!2033682) (size!37652 testedP!110)))))

(declare-fun b!4936481 () Bool)

(assert (=> b!4936481 (= e!3084390 (isPrefix!5031 (tail!9709 testedP!110) (tail!9709 lt!2033682)))))

(assert (= (and d!1589138 (not res!2106745)) b!4936479))

(assert (= (and b!4936479 res!2106748) b!4936480))

(assert (= (and b!4936480 res!2106747) b!4936481))

(assert (= (and d!1589138 (not res!2106746)) b!4936482))

(declare-fun m!5958066 () Bool)

(assert (=> b!4936480 m!5958066))

(assert (=> b!4936480 m!5957760))

(assert (=> b!4936482 m!5957470))

(assert (=> b!4936482 m!5957538))

(declare-fun m!5958068 () Bool)

(assert (=> b!4936481 m!5958068))

(assert (=> b!4936481 m!5957766))

(assert (=> b!4936481 m!5958068))

(assert (=> b!4936481 m!5957766))

(declare-fun m!5958070 () Bool)

(assert (=> b!4936481 m!5958070))

(assert (=> b!4936123 d!1589138))

(declare-fun d!1589140 () Bool)

(declare-fun e!3084395 () Bool)

(assert (=> d!1589140 e!3084395))

(declare-fun res!2106750 () Bool)

(assert (=> d!1589140 (=> res!2106750 e!3084395)))

(declare-fun lt!2034124 () Bool)

(assert (=> d!1589140 (= res!2106750 (not lt!2034124))))

(declare-fun e!3084394 () Bool)

(assert (=> d!1589140 (= lt!2034124 e!3084394)))

(declare-fun res!2106749 () Bool)

(assert (=> d!1589140 (=> res!2106749 e!3084394)))

(assert (=> d!1589140 (= res!2106749 ((_ is Nil!56843) testedP!110))))

(assert (=> d!1589140 (= (isPrefix!5031 testedP!110 lt!2033688) lt!2034124)))

(declare-fun b!4936484 () Bool)

(declare-fun res!2106751 () Bool)

(declare-fun e!3084393 () Bool)

(assert (=> b!4936484 (=> (not res!2106751) (not e!3084393))))

(assert (=> b!4936484 (= res!2106751 (= (head!10570 testedP!110) (head!10570 lt!2033688)))))

(declare-fun b!4936483 () Bool)

(assert (=> b!4936483 (= e!3084394 e!3084393)))

(declare-fun res!2106752 () Bool)

(assert (=> b!4936483 (=> (not res!2106752) (not e!3084393))))

(assert (=> b!4936483 (= res!2106752 (not ((_ is Nil!56843) lt!2033688)))))

(declare-fun b!4936486 () Bool)

(assert (=> b!4936486 (= e!3084395 (>= (size!37652 lt!2033688) (size!37652 testedP!110)))))

(declare-fun b!4936485 () Bool)

(assert (=> b!4936485 (= e!3084393 (isPrefix!5031 (tail!9709 testedP!110) (tail!9709 lt!2033688)))))

(assert (= (and d!1589140 (not res!2106749)) b!4936483))

(assert (= (and b!4936483 res!2106752) b!4936484))

(assert (= (and b!4936484 res!2106751) b!4936485))

(assert (= (and d!1589140 (not res!2106750)) b!4936486))

(assert (=> b!4936484 m!5958066))

(declare-fun m!5958072 () Bool)

(assert (=> b!4936484 m!5958072))

(declare-fun m!5958074 () Bool)

(assert (=> b!4936486 m!5958074))

(assert (=> b!4936486 m!5957538))

(assert (=> b!4936485 m!5958068))

(declare-fun m!5958076 () Bool)

(assert (=> b!4936485 m!5958076))

(assert (=> b!4936485 m!5958068))

(assert (=> b!4936485 m!5958076))

(declare-fun m!5958078 () Bool)

(assert (=> b!4936485 m!5958078))

(assert (=> b!4936123 d!1589140))

(declare-fun d!1589142 () Bool)

(assert (=> d!1589142 (isPrefix!5031 testedP!110 (++!12400 testedP!110 testedSuffix!70))))

(declare-fun lt!2034127 () Unit!147543)

(declare-fun choose!36283 (List!56967 List!56967) Unit!147543)

(assert (=> d!1589142 (= lt!2034127 (choose!36283 testedP!110 testedSuffix!70))))

(assert (=> d!1589142 (= (lemmaConcatTwoListThenFirstIsPrefix!3255 testedP!110 testedSuffix!70) lt!2034127)))

(declare-fun bs!1180788 () Bool)

(assert (= bs!1180788 d!1589142))

(assert (=> bs!1180788 m!5957502))

(assert (=> bs!1180788 m!5957502))

(declare-fun m!5958080 () Bool)

(assert (=> bs!1180788 m!5958080))

(declare-fun m!5958082 () Bool)

(assert (=> bs!1180788 m!5958082))

(assert (=> b!4936123 d!1589142))

(declare-fun tp!1385466 () Bool)

(declare-fun b!4936495 () Bool)

(declare-fun e!3084401 () Bool)

(declare-fun tp!1385467 () Bool)

(assert (=> b!4936495 (= e!3084401 (and (inv!73866 (left!41455 (c!841461 totalInput!685))) tp!1385466 (inv!73866 (right!41785 (c!841461 totalInput!685))) tp!1385467))))

(declare-fun b!4936497 () Bool)

(declare-fun e!3084400 () Bool)

(declare-fun tp!1385465 () Bool)

(assert (=> b!4936497 (= e!3084400 tp!1385465)))

(declare-fun b!4936496 () Bool)

(declare-fun inv!73872 (IArray!29945) Bool)

(assert (=> b!4936496 (= e!3084401 (and (inv!73872 (xs!18266 (c!841461 totalInput!685))) e!3084400))))

(assert (=> b!4936124 (= tp!1385432 (and (inv!73866 (c!841461 totalInput!685)) e!3084401))))

(assert (= (and b!4936124 ((_ is Node!14942) (c!841461 totalInput!685))) b!4936495))

(assert (= b!4936496 b!4936497))

(assert (= (and b!4936124 ((_ is Leaf!24846) (c!841461 totalInput!685))) b!4936496))

(declare-fun m!5958084 () Bool)

(assert (=> b!4936495 m!5958084))

(declare-fun m!5958086 () Bool)

(assert (=> b!4936495 m!5958086))

(declare-fun m!5958088 () Bool)

(assert (=> b!4936496 m!5958088))

(assert (=> b!4936124 m!5957498))

(declare-fun b!4936502 () Bool)

(declare-fun e!3084404 () Bool)

(declare-fun tp!1385470 () Bool)

(assert (=> b!4936502 (= e!3084404 (and tp_is_empty!36043 tp!1385470))))

(assert (=> b!4936120 (= tp!1385430 e!3084404)))

(assert (= (and b!4936120 ((_ is Cons!56843) (t!367457 testedSuffix!70))) b!4936502))

(declare-fun condSetEmpty!27808 () Bool)

(assert (=> setNonEmpty!27802 (= condSetEmpty!27808 (= setRest!27802 ((as const (Array Context!6150 Bool)) false)))))

(declare-fun setRes!27808 () Bool)

(assert (=> setNonEmpty!27802 (= tp!1385429 setRes!27808)))

(declare-fun setIsEmpty!27808 () Bool)

(assert (=> setIsEmpty!27808 setRes!27808))

(declare-fun e!3084407 () Bool)

(declare-fun setElem!27808 () Context!6150)

(declare-fun setNonEmpty!27808 () Bool)

(declare-fun tp!1385475 () Bool)

(assert (=> setNonEmpty!27808 (= setRes!27808 (and tp!1385475 (inv!73864 setElem!27808) e!3084407))))

(declare-fun setRest!27808 () (InoxSet Context!6150))

(assert (=> setNonEmpty!27808 (= setRest!27802 ((_ map or) (store ((as const (Array Context!6150 Bool)) false) setElem!27808 true) setRest!27808))))

(declare-fun b!4936507 () Bool)

(declare-fun tp!1385476 () Bool)

(assert (=> b!4936507 (= e!3084407 tp!1385476)))

(assert (= (and setNonEmpty!27802 condSetEmpty!27808) setIsEmpty!27808))

(assert (= (and setNonEmpty!27802 (not condSetEmpty!27808)) setNonEmpty!27808))

(assert (= setNonEmpty!27808 b!4936507))

(declare-fun m!5958090 () Bool)

(assert (=> setNonEmpty!27808 m!5958090))

(declare-fun b!4936508 () Bool)

(declare-fun e!3084408 () Bool)

(declare-fun tp!1385477 () Bool)

(assert (=> b!4936508 (= e!3084408 (and tp_is_empty!36043 tp!1385477))))

(assert (=> b!4936117 (= tp!1385431 e!3084408)))

(assert (= (and b!4936117 ((_ is Cons!56843) (t!367457 testedP!110))) b!4936508))

(declare-fun b!4936513 () Bool)

(declare-fun e!3084411 () Bool)

(declare-fun tp!1385482 () Bool)

(declare-fun tp!1385483 () Bool)

(assert (=> b!4936513 (= e!3084411 (and tp!1385482 tp!1385483))))

(assert (=> b!4936112 (= tp!1385433 e!3084411)))

(assert (= (and b!4936112 ((_ is Cons!56842) (exprs!3575 setElem!27802))) b!4936513))

(check-sat (not d!1589124) (not d!1589078) (not d!1589090) (not d!1589128) (not d!1589068) (not d!1588988) (not bm!344405) (not b!4936454) (not b!4936481) (not d!1589142) (not d!1588994) (not b!4936124) (not b!4936296) (not b!4936283) (not b!4936468) (not b!4936259) (not b!4936256) (not b!4936149) (not b!4936485) (not bm!344461) (not b!4936508) (not b!4936260) (not b!4936470) (not b!4936473) (not bm!344468) (not d!1589058) (not d!1589130) (not b!4936301) (not b!4936513) (not d!1588984) (not b!4936263) (not b!4936497) (not bm!344466) (not b!4936275) (not b!4936255) (not b!4936357) (not d!1588992) (not d!1588990) (not b!4936288) (not d!1589094) (not b!4936474) (not d!1589070) (not d!1589136) (not b!4936298) (not b!4936277) (not bm!344463) (not bm!344469) (not b!4936264) tp_is_empty!36043 (not b!4936477) (not setNonEmpty!27808) (not b!4936142) (not b!4936496) (not d!1589088) (not bm!344465) (not bm!344419) (not b!4936131) (not d!1589134) (not b!4936148) (not d!1589074) (not b!4936507) (not bm!344467) (not bm!344462) (not d!1589062) (not d!1589076) (not bm!344460) (not b!4936476) (not b!4936457) (not b!4936502) (not b!4936297) (not d!1589072) (not d!1589122) (not b!4936472) (not b!4936486) (not b!4936282) (not d!1588986) (not d!1589060) (not b!4936482) (not bm!344464) (not b!4936355) (not b!4936480) (not b!4936347) (not d!1589118) (not d!1589082) (not d!1589084) (not bm!344406) (not b!4936448) (not d!1589132) (not b!4936495) (not b!4936344) (not d!1589056) (not b!4936276) (not b!4936484) (not b!4936141))
(check-sat)
