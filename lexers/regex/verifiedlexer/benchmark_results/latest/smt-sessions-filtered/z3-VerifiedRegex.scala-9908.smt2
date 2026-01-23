; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519440 () Bool)

(assert start!519440)

(declare-fun b!4938707 () Bool)

(declare-fun e!3085825 () Bool)

(declare-fun e!3085828 () Bool)

(assert (=> b!4938707 (= e!3085825 (not e!3085828))))

(declare-fun res!2107680 () Bool)

(assert (=> b!4938707 (=> res!2107680 e!3085828)))

(declare-datatypes ((C!27116 0))(
  ( (C!27117 (val!22892 Int)) )
))
(declare-datatypes ((List!56994 0))(
  ( (Nil!56870) (Cons!56870 (h!63318 C!27116) (t!367494 List!56994)) )
))
(declare-fun testedP!110 () List!56994)

(declare-fun lt!2035526 () List!56994)

(declare-fun isPrefix!5041 (List!56994 List!56994) Bool)

(assert (=> b!4938707 (= res!2107680 (not (isPrefix!5041 testedP!110 lt!2035526)))))

(declare-fun lt!2035506 () List!56994)

(assert (=> b!4938707 (isPrefix!5041 testedP!110 lt!2035506)))

(declare-datatypes ((Unit!147605 0))(
  ( (Unit!147606) )
))
(declare-fun lt!2035513 () Unit!147605)

(declare-fun testedSuffix!70 () List!56994)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3265 (List!56994 List!56994) Unit!147605)

(assert (=> b!4938707 (= lt!2035513 (lemmaConcatTwoListThenFirstIsPrefix!3265 testedP!110 testedSuffix!70))))

(declare-fun b!4938709 () Bool)

(declare-fun e!3085827 () Unit!147605)

(declare-fun Unit!147607 () Unit!147605)

(assert (=> b!4938709 (= e!3085827 Unit!147607)))

(declare-fun lt!2035523 () Unit!147605)

(declare-fun lemmaIsPrefixRefl!3407 (List!56994 List!56994) Unit!147605)

(assert (=> b!4938709 (= lt!2035523 (lemmaIsPrefixRefl!3407 lt!2035526 lt!2035526))))

(assert (=> b!4938709 (isPrefix!5041 lt!2035526 lt!2035526)))

(declare-fun lt!2035517 () Unit!147605)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1165 (List!56994 List!56994 List!56994) Unit!147605)

(assert (=> b!4938709 (= lt!2035517 (lemmaIsPrefixSameLengthThenSameList!1165 lt!2035526 testedP!110 lt!2035526))))

(assert (=> b!4938709 false))

(declare-fun b!4938710 () Bool)

(declare-fun res!2107678 () Bool)

(declare-fun e!3085824 () Bool)

(assert (=> b!4938710 (=> res!2107678 e!3085824)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4938710 (= res!2107678 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4938711 () Bool)

(declare-fun Unit!147608 () Unit!147605)

(assert (=> b!4938711 (= e!3085827 Unit!147608)))

(declare-fun b!4938712 () Bool)

(declare-fun e!3085823 () Bool)

(declare-fun e!3085820 () Bool)

(assert (=> b!4938712 (= e!3085823 e!3085820)))

(declare-fun res!2107671 () Bool)

(assert (=> b!4938712 (=> res!2107671 e!3085820)))

(declare-fun lt!2035509 () C!27116)

(declare-fun head!10580 (List!56994) C!27116)

(assert (=> b!4938712 (= res!2107671 (not (= lt!2035509 (head!10580 testedSuffix!70))))))

(declare-datatypes ((IArray!29965 0))(
  ( (IArray!29966 (innerList!15040 List!56994)) )
))
(declare-datatypes ((Conc!14952 0))(
  ( (Node!14952 (left!41478 Conc!14952) (right!41808 Conc!14952) (csize!30134 Int) (cheight!15163 Int)) (Leaf!24861 (xs!18276 IArray!29965) (csize!30135 Int)) (Empty!14952) )
))
(declare-datatypes ((BalanceConc!29334 0))(
  ( (BalanceConc!29335 (c!842154 Conc!14952)) )
))
(declare-fun totalInput!685 () BalanceConc!29334)

(declare-fun apply!13784 (BalanceConc!29334 Int) C!27116)

(assert (=> b!4938712 (= lt!2035509 (apply!13784 totalInput!685 testedPSize!70))))

(declare-fun drop!2274 (List!56994 Int) List!56994)

(declare-fun apply!13785 (List!56994 Int) C!27116)

(assert (=> b!4938712 (= (head!10580 (drop!2274 lt!2035526 testedPSize!70)) (apply!13785 lt!2035526 testedPSize!70))))

(declare-fun lt!2035516 () Unit!147605)

(declare-fun lemmaDropApply!1332 (List!56994 Int) Unit!147605)

(assert (=> b!4938712 (= lt!2035516 (lemmaDropApply!1332 lt!2035526 testedPSize!70))))

(declare-fun lt!2035510 () List!56994)

(declare-fun lt!2035518 () List!56994)

(assert (=> b!4938712 (not (or (not (= lt!2035518 testedP!110)) (not (= lt!2035510 testedSuffix!70))))))

(declare-fun lt!2035507 () Unit!147605)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!709 (List!56994 List!56994 List!56994 List!56994) Unit!147605)

(assert (=> b!4938712 (= lt!2035507 (lemmaConcatSameAndSameSizesThenSameLists!709 lt!2035518 lt!2035510 testedP!110 testedSuffix!70))))

(declare-fun b!4938713 () Bool)

(declare-fun e!3085829 () Bool)

(declare-fun e!3085818 () Bool)

(assert (=> b!4938713 (= e!3085829 e!3085818)))

(declare-fun res!2107676 () Bool)

(assert (=> b!4938713 (=> res!2107676 e!3085818)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13443 0))(
  ( (ElementMatch!13443 (c!842155 C!27116)) (Concat!22016 (regOne!27398 Regex!13443) (regTwo!27398 Regex!13443)) (EmptyExpr!13443) (Star!13443 (reg!13772 Regex!13443)) (EmptyLang!13443) (Union!13443 (regOne!27399 Regex!13443) (regTwo!27399 Regex!13443)) )
))
(declare-datatypes ((List!56995 0))(
  ( (Nil!56871) (Cons!56871 (h!63319 Regex!13443) (t!367495 List!56995)) )
))
(declare-datatypes ((Context!6170 0))(
  ( (Context!6171 (exprs!3585 List!56995)) )
))
(declare-fun z!3568 () (InoxSet Context!6170))

(declare-fun nullableZipper!848 ((InoxSet Context!6170)) Bool)

(assert (=> b!4938713 (= res!2107676 (nullableZipper!848 z!3568))))

(declare-fun lt!2035515 () List!56994)

(declare-fun lt!2035521 () List!56994)

(declare-fun ++!12412 (List!56994 List!56994) List!56994)

(assert (=> b!4938713 (= (++!12412 lt!2035515 lt!2035521) lt!2035526)))

(assert (=> b!4938713 (= lt!2035515 (++!12412 testedP!110 (Cons!56870 lt!2035509 Nil!56870)))))

(declare-fun lt!2035525 () Unit!147605)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1423 (List!56994 C!27116 List!56994 List!56994) Unit!147605)

(assert (=> b!4938713 (= lt!2035525 (lemmaMoveElementToOtherListKeepsConcatEq!1423 testedP!110 lt!2035509 lt!2035521 lt!2035526))))

(declare-fun tail!9719 (List!56994) List!56994)

(assert (=> b!4938713 (= lt!2035521 (tail!9719 testedSuffix!70))))

(declare-fun lt!2035520 () List!56994)

(assert (=> b!4938713 (isPrefix!5041 (++!12412 testedP!110 (Cons!56870 (head!10580 lt!2035520) Nil!56870)) lt!2035526)))

(declare-fun lt!2035522 () Unit!147605)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!811 (List!56994 List!56994) Unit!147605)

(assert (=> b!4938713 (= lt!2035522 (lemmaAddHeadSuffixToPrefixStillPrefix!811 testedP!110 lt!2035526))))

(declare-fun b!4938714 () Bool)

(declare-fun e!3085819 () Bool)

(declare-fun tp!1385839 () Bool)

(assert (=> b!4938714 (= e!3085819 tp!1385839)))

(declare-fun tp!1385840 () Bool)

(declare-fun setRes!27858 () Bool)

(declare-fun setNonEmpty!27858 () Bool)

(declare-fun setElem!27858 () Context!6170)

(declare-fun inv!73933 (Context!6170) Bool)

(assert (=> setNonEmpty!27858 (= setRes!27858 (and tp!1385840 (inv!73933 setElem!27858) e!3085819))))

(declare-fun setRest!27858 () (InoxSet Context!6170))

(assert (=> setNonEmpty!27858 (= z!3568 ((_ map or) (store ((as const (Array Context!6170 Bool)) false) setElem!27858 true) setRest!27858))))

(declare-fun b!4938715 () Bool)

(declare-fun e!3085821 () Bool)

(declare-fun e!3085826 () Bool)

(assert (=> b!4938715 (= e!3085821 e!3085826)))

(declare-fun res!2107670 () Bool)

(assert (=> b!4938715 (=> (not res!2107670) (not e!3085826))))

(declare-fun lt!2035524 () Int)

(assert (=> b!4938715 (= res!2107670 (= testedPSize!70 lt!2035524))))

(declare-fun size!37680 (List!56994) Int)

(assert (=> b!4938715 (= lt!2035524 (size!37680 testedP!110))))

(declare-fun b!4938716 () Bool)

(assert (=> b!4938716 (= e!3085826 e!3085825)))

(declare-fun res!2107672 () Bool)

(assert (=> b!4938716 (=> (not res!2107672) (not e!3085825))))

(declare-fun lt!2035514 () Int)

(assert (=> b!4938716 (= res!2107672 (= totalInputSize!132 lt!2035514))))

(declare-fun size!37681 (BalanceConc!29334) Int)

(assert (=> b!4938716 (= lt!2035514 (size!37681 totalInput!685))))

(declare-fun b!4938717 () Bool)

(declare-fun e!3085816 () Bool)

(declare-fun tp_is_empty!36063 () Bool)

(declare-fun tp!1385842 () Bool)

(assert (=> b!4938717 (= e!3085816 (and tp_is_empty!36063 tp!1385842))))

(declare-fun b!4938718 () Bool)

(assert (=> b!4938718 (= e!3085820 e!3085829)))

(declare-fun res!2107675 () Bool)

(assert (=> b!4938718 (=> res!2107675 e!3085829)))

(assert (=> b!4938718 (= res!2107675 (>= lt!2035524 lt!2035514))))

(declare-fun lt!2035508 () Unit!147605)

(assert (=> b!4938718 (= lt!2035508 e!3085827)))

(declare-fun c!842153 () Bool)

(assert (=> b!4938718 (= c!842153 (= lt!2035524 lt!2035514))))

(assert (=> b!4938718 (<= lt!2035524 (size!37680 lt!2035526))))

(declare-fun lt!2035511 () Unit!147605)

(declare-fun lemmaIsPrefixThenSmallerEqSize!729 (List!56994 List!56994) Unit!147605)

(assert (=> b!4938718 (= lt!2035511 (lemmaIsPrefixThenSmallerEqSize!729 testedP!110 lt!2035526))))

(declare-fun b!4938719 () Bool)

(assert (=> b!4938719 (= e!3085828 e!3085824)))

(declare-fun res!2107673 () Bool)

(assert (=> b!4938719 (=> res!2107673 e!3085824)))

(declare-fun lostCauseZipper!761 ((InoxSet Context!6170)) Bool)

(assert (=> b!4938719 (= res!2107673 (lostCauseZipper!761 z!3568))))

(assert (=> b!4938719 (and (= testedSuffix!70 lt!2035520) (= lt!2035520 testedSuffix!70))))

(declare-fun lt!2035519 () Unit!147605)

(declare-fun lemmaSamePrefixThenSameSuffix!2439 (List!56994 List!56994 List!56994 List!56994 List!56994) Unit!147605)

(assert (=> b!4938719 (= lt!2035519 (lemmaSamePrefixThenSameSuffix!2439 testedP!110 testedSuffix!70 testedP!110 lt!2035520 lt!2035526))))

(declare-fun getSuffix!3025 (List!56994 List!56994) List!56994)

(assert (=> b!4938719 (= lt!2035520 (getSuffix!3025 lt!2035526 testedP!110))))

(declare-fun b!4938720 () Bool)

(declare-fun res!2107674 () Bool)

(assert (=> b!4938720 (=> res!2107674 e!3085823)))

(declare-datatypes ((tuple2!61402 0))(
  ( (tuple2!61403 (_1!34004 BalanceConc!29334) (_2!34004 BalanceConc!29334)) )
))
(declare-fun lt!2035527 () tuple2!61402)

(assert (=> b!4938720 (= res!2107674 (not (= (size!37681 (_1!34004 lt!2035527)) testedPSize!70)))))

(declare-fun b!4938708 () Bool)

(declare-fun e!3085822 () Bool)

(declare-fun tp!1385841 () Bool)

(declare-fun inv!73934 (Conc!14952) Bool)

(assert (=> b!4938708 (= e!3085822 (and (inv!73934 (c!842154 totalInput!685)) tp!1385841))))

(declare-fun res!2107677 () Bool)

(assert (=> start!519440 (=> (not res!2107677) (not e!3085821))))

(assert (=> start!519440 (= res!2107677 (= lt!2035506 lt!2035526))))

(declare-fun list!18078 (BalanceConc!29334) List!56994)

(assert (=> start!519440 (= lt!2035526 (list!18078 totalInput!685))))

(assert (=> start!519440 (= lt!2035506 (++!12412 testedP!110 testedSuffix!70))))

(assert (=> start!519440 e!3085821))

(assert (=> start!519440 e!3085816))

(declare-fun condSetEmpty!27858 () Bool)

(assert (=> start!519440 (= condSetEmpty!27858 (= z!3568 ((as const (Array Context!6170 Bool)) false)))))

(assert (=> start!519440 setRes!27858))

(assert (=> start!519440 true))

(declare-fun inv!73935 (BalanceConc!29334) Bool)

(assert (=> start!519440 (and (inv!73935 totalInput!685) e!3085822)))

(declare-fun e!3085817 () Bool)

(assert (=> start!519440 e!3085817))

(declare-fun b!4938721 () Bool)

(assert (=> b!4938721 (= e!3085824 e!3085823)))

(declare-fun res!2107679 () Bool)

(assert (=> b!4938721 (=> res!2107679 e!3085823)))

(assert (=> b!4938721 (= res!2107679 (not (= (++!12412 lt!2035518 lt!2035510) lt!2035526)))))

(assert (=> b!4938721 (= lt!2035510 (list!18078 (_2!34004 lt!2035527)))))

(assert (=> b!4938721 (= lt!2035518 (list!18078 (_1!34004 lt!2035527)))))

(declare-fun splitAt!355 (BalanceConc!29334 Int) tuple2!61402)

(assert (=> b!4938721 (= lt!2035527 (splitAt!355 totalInput!685 testedPSize!70))))

(declare-fun b!4938722 () Bool)

(declare-fun tp!1385843 () Bool)

(assert (=> b!4938722 (= e!3085817 (and tp_is_empty!36063 tp!1385843))))

(declare-fun setIsEmpty!27858 () Bool)

(assert (=> setIsEmpty!27858 setRes!27858))

(declare-fun b!4938723 () Bool)

(assert (=> b!4938723 (= e!3085818 true)))

(declare-fun lt!2035512 () Int)

(declare-fun findLongestMatchInnerZipperFast!99 ((InoxSet Context!6170) List!56994 Int List!56994 BalanceConc!29334 Int) Int)

(declare-fun derivationStepZipper!602 ((InoxSet Context!6170) C!27116) (InoxSet Context!6170))

(assert (=> b!4938723 (= lt!2035512 (findLongestMatchInnerZipperFast!99 (derivationStepZipper!602 z!3568 lt!2035509) lt!2035515 (+ 1 testedPSize!70) lt!2035521 totalInput!685 totalInputSize!132))))

(assert (= (and start!519440 res!2107677) b!4938715))

(assert (= (and b!4938715 res!2107670) b!4938716))

(assert (= (and b!4938716 res!2107672) b!4938707))

(assert (= (and b!4938707 (not res!2107680)) b!4938719))

(assert (= (and b!4938719 (not res!2107673)) b!4938710))

(assert (= (and b!4938710 (not res!2107678)) b!4938721))

(assert (= (and b!4938721 (not res!2107679)) b!4938720))

(assert (= (and b!4938720 (not res!2107674)) b!4938712))

(assert (= (and b!4938712 (not res!2107671)) b!4938718))

(assert (= (and b!4938718 c!842153) b!4938709))

(assert (= (and b!4938718 (not c!842153)) b!4938711))

(assert (= (and b!4938718 (not res!2107675)) b!4938713))

(assert (= (and b!4938713 (not res!2107676)) b!4938723))

(get-info :version)

(assert (= (and start!519440 ((_ is Cons!56870) testedP!110)) b!4938717))

(assert (= (and start!519440 condSetEmpty!27858) setIsEmpty!27858))

(assert (= (and start!519440 (not condSetEmpty!27858)) setNonEmpty!27858))

(assert (= setNonEmpty!27858 b!4938714))

(assert (= start!519440 b!4938708))

(assert (= (and start!519440 ((_ is Cons!56870) testedSuffix!70)) b!4938722))

(declare-fun m!5960874 () Bool)

(assert (=> b!4938712 m!5960874))

(declare-fun m!5960876 () Bool)

(assert (=> b!4938712 m!5960876))

(declare-fun m!5960878 () Bool)

(assert (=> b!4938712 m!5960878))

(declare-fun m!5960880 () Bool)

(assert (=> b!4938712 m!5960880))

(declare-fun m!5960882 () Bool)

(assert (=> b!4938712 m!5960882))

(assert (=> b!4938712 m!5960874))

(declare-fun m!5960884 () Bool)

(assert (=> b!4938712 m!5960884))

(declare-fun m!5960886 () Bool)

(assert (=> b!4938712 m!5960886))

(declare-fun m!5960888 () Bool)

(assert (=> b!4938715 m!5960888))

(declare-fun m!5960890 () Bool)

(assert (=> b!4938720 m!5960890))

(declare-fun m!5960892 () Bool)

(assert (=> b!4938718 m!5960892))

(declare-fun m!5960894 () Bool)

(assert (=> b!4938718 m!5960894))

(declare-fun m!5960896 () Bool)

(assert (=> b!4938723 m!5960896))

(assert (=> b!4938723 m!5960896))

(declare-fun m!5960898 () Bool)

(assert (=> b!4938723 m!5960898))

(declare-fun m!5960900 () Bool)

(assert (=> b!4938721 m!5960900))

(declare-fun m!5960902 () Bool)

(assert (=> b!4938721 m!5960902))

(declare-fun m!5960904 () Bool)

(assert (=> b!4938721 m!5960904))

(declare-fun m!5960906 () Bool)

(assert (=> b!4938721 m!5960906))

(declare-fun m!5960908 () Bool)

(assert (=> b!4938708 m!5960908))

(declare-fun m!5960910 () Bool)

(assert (=> b!4938719 m!5960910))

(declare-fun m!5960912 () Bool)

(assert (=> b!4938719 m!5960912))

(declare-fun m!5960914 () Bool)

(assert (=> b!4938719 m!5960914))

(declare-fun m!5960916 () Bool)

(assert (=> b!4938709 m!5960916))

(declare-fun m!5960918 () Bool)

(assert (=> b!4938709 m!5960918))

(declare-fun m!5960920 () Bool)

(assert (=> b!4938709 m!5960920))

(declare-fun m!5960922 () Bool)

(assert (=> start!519440 m!5960922))

(declare-fun m!5960924 () Bool)

(assert (=> start!519440 m!5960924))

(declare-fun m!5960926 () Bool)

(assert (=> start!519440 m!5960926))

(declare-fun m!5960928 () Bool)

(assert (=> b!4938707 m!5960928))

(declare-fun m!5960930 () Bool)

(assert (=> b!4938707 m!5960930))

(declare-fun m!5960932 () Bool)

(assert (=> b!4938707 m!5960932))

(declare-fun m!5960934 () Bool)

(assert (=> b!4938713 m!5960934))

(declare-fun m!5960936 () Bool)

(assert (=> b!4938713 m!5960936))

(declare-fun m!5960938 () Bool)

(assert (=> b!4938713 m!5960938))

(declare-fun m!5960940 () Bool)

(assert (=> b!4938713 m!5960940))

(declare-fun m!5960942 () Bool)

(assert (=> b!4938713 m!5960942))

(declare-fun m!5960944 () Bool)

(assert (=> b!4938713 m!5960944))

(declare-fun m!5960946 () Bool)

(assert (=> b!4938713 m!5960946))

(assert (=> b!4938713 m!5960946))

(declare-fun m!5960948 () Bool)

(assert (=> b!4938713 m!5960948))

(declare-fun m!5960950 () Bool)

(assert (=> b!4938713 m!5960950))

(declare-fun m!5960952 () Bool)

(assert (=> setNonEmpty!27858 m!5960952))

(declare-fun m!5960954 () Bool)

(assert (=> b!4938716 m!5960954))

(check-sat (not b!4938707) (not setNonEmpty!27858) (not b!4938716) (not b!4938723) (not start!519440) (not b!4938721) (not b!4938720) (not b!4938718) (not b!4938715) tp_is_empty!36063 (not b!4938714) (not b!4938709) (not b!4938719) (not b!4938712) (not b!4938708) (not b!4938722) (not b!4938713) (not b!4938717))
(check-sat)
