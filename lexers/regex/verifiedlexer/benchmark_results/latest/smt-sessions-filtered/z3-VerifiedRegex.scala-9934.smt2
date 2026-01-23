; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520796 () Bool)

(assert start!520796)

(declare-fun b!4946542 () Bool)

(declare-fun e!3090657 () Bool)

(declare-fun e!3090645 () Bool)

(assert (=> b!4946542 (= e!3090657 e!3090645)))

(declare-fun res!2110767 () Bool)

(assert (=> b!4946542 (=> res!2110767 e!3090645)))

(declare-fun lt!2039950 () Int)

(declare-fun lt!2039949 () Int)

(assert (=> b!4946542 (= res!2110767 (>= lt!2039950 lt!2039949))))

(declare-datatypes ((Unit!147782 0))(
  ( (Unit!147783) )
))
(declare-fun lt!2039942 () Unit!147782)

(declare-fun e!3090651 () Unit!147782)

(assert (=> b!4946542 (= lt!2039942 e!3090651)))

(declare-fun c!844067 () Bool)

(assert (=> b!4946542 (= c!844067 (= lt!2039950 lt!2039949))))

(declare-datatypes ((C!27220 0))(
  ( (C!27221 (val!22944 Int)) )
))
(declare-datatypes ((List!57109 0))(
  ( (Nil!56985) (Cons!56985 (h!63433 C!27220) (t!367645 List!57109)) )
))
(declare-fun lt!2039940 () List!57109)

(declare-fun size!37813 (List!57109) Int)

(assert (=> b!4946542 (<= lt!2039950 (size!37813 lt!2039940))))

(declare-fun lt!2039954 () Unit!147782)

(declare-fun testedP!110 () List!57109)

(declare-fun lemmaIsPrefixThenSmallerEqSize!746 (List!57109 List!57109) Unit!147782)

(assert (=> b!4946542 (= lt!2039954 (lemmaIsPrefixThenSmallerEqSize!746 testedP!110 lt!2039940))))

(declare-fun b!4946543 () Bool)

(declare-fun Unit!147784 () Unit!147782)

(assert (=> b!4946543 (= e!3090651 Unit!147784)))

(declare-fun lt!2039941 () Unit!147782)

(declare-fun lemmaIsPrefixRefl!3431 (List!57109 List!57109) Unit!147782)

(assert (=> b!4946543 (= lt!2039941 (lemmaIsPrefixRefl!3431 lt!2039940 lt!2039940))))

(declare-fun isPrefix!5091 (List!57109 List!57109) Bool)

(assert (=> b!4946543 (isPrefix!5091 lt!2039940 lt!2039940)))

(declare-fun lt!2039945 () Unit!147782)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1183 (List!57109 List!57109 List!57109) Unit!147782)

(assert (=> b!4946543 (= lt!2039945 (lemmaIsPrefixSameLengthThenSameList!1183 lt!2039940 testedP!110 lt!2039940))))

(assert (=> b!4946543 false))

(declare-fun b!4946544 () Bool)

(declare-fun Unit!147785 () Unit!147782)

(assert (=> b!4946544 (= e!3090651 Unit!147785)))

(declare-fun b!4946545 () Bool)

(declare-fun e!3090649 () Bool)

(declare-datatypes ((IArray!30069 0))(
  ( (IArray!30070 (innerList!15092 List!57109)) )
))
(declare-datatypes ((Conc!15004 0))(
  ( (Node!15004 (left!41572 Conc!15004) (right!41902 Conc!15004) (csize!30238 Int) (cheight!15215 Int)) (Leaf!24939 (xs!18330 IArray!30069) (csize!30239 Int)) (Empty!15004) )
))
(declare-datatypes ((BalanceConc!29438 0))(
  ( (BalanceConc!29439 (c!844068 Conc!15004)) )
))
(declare-fun totalInput!685 () BalanceConc!29438)

(declare-fun tp!1387545 () Bool)

(declare-fun inv!74235 (Conc!15004) Bool)

(assert (=> b!4946545 (= e!3090649 (and (inv!74235 (c!844068 totalInput!685)) tp!1387545))))

(declare-fun b!4946546 () Bool)

(declare-fun e!3090654 () Bool)

(declare-fun e!3090656 () Bool)

(assert (=> b!4946546 (= e!3090654 (not e!3090656))))

(declare-fun res!2110768 () Bool)

(assert (=> b!4946546 (=> res!2110768 e!3090656)))

(assert (=> b!4946546 (= res!2110768 (not (isPrefix!5091 testedP!110 lt!2039940)))))

(declare-fun lt!2039943 () List!57109)

(assert (=> b!4946546 (isPrefix!5091 testedP!110 lt!2039943)))

(declare-fun lt!2039939 () Unit!147782)

(declare-fun testedSuffix!70 () List!57109)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3315 (List!57109 List!57109) Unit!147782)

(assert (=> b!4946546 (= lt!2039939 (lemmaConcatTwoListThenFirstIsPrefix!3315 testedP!110 testedSuffix!70))))

(declare-fun b!4946547 () Bool)

(declare-fun e!3090646 () Bool)

(declare-fun tp!1387544 () Bool)

(assert (=> b!4946547 (= e!3090646 tp!1387544)))

(declare-fun res!2110764 () Bool)

(declare-fun e!3090648 () Bool)

(assert (=> start!520796 (=> (not res!2110764) (not e!3090648))))

(assert (=> start!520796 (= res!2110764 (= lt!2039943 lt!2039940))))

(declare-fun list!18165 (BalanceConc!29438) List!57109)

(assert (=> start!520796 (= lt!2039940 (list!18165 totalInput!685))))

(declare-fun ++!12470 (List!57109 List!57109) List!57109)

(assert (=> start!520796 (= lt!2039943 (++!12470 testedP!110 testedSuffix!70))))

(assert (=> start!520796 e!3090648))

(declare-fun e!3090650 () Bool)

(assert (=> start!520796 e!3090650))

(declare-fun condSetEmpty!28064 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13485 0))(
  ( (ElementMatch!13485 (c!844069 C!27220)) (Concat!22058 (regOne!27482 Regex!13485) (regTwo!27482 Regex!13485)) (EmptyExpr!13485) (Star!13485 (reg!13814 Regex!13485)) (EmptyLang!13485) (Union!13485 (regOne!27483 Regex!13485) (regTwo!27483 Regex!13485)) )
))
(declare-datatypes ((List!57110 0))(
  ( (Nil!56986) (Cons!56986 (h!63434 Regex!13485) (t!367646 List!57110)) )
))
(declare-datatypes ((Context!6254 0))(
  ( (Context!6255 (exprs!3627 List!57110)) )
))
(declare-fun z!3568 () (InoxSet Context!6254))

(assert (=> start!520796 (= condSetEmpty!28064 (= z!3568 ((as const (Array Context!6254 Bool)) false)))))

(declare-fun setRes!28064 () Bool)

(assert (=> start!520796 setRes!28064))

(assert (=> start!520796 true))

(declare-fun inv!74236 (BalanceConc!29438) Bool)

(assert (=> start!520796 (and (inv!74236 totalInput!685) e!3090649)))

(declare-fun e!3090655 () Bool)

(assert (=> start!520796 e!3090655))

(declare-fun b!4946548 () Bool)

(declare-fun e!3090647 () Bool)

(assert (=> b!4946548 (= e!3090647 e!3090657)))

(declare-fun res!2110762 () Bool)

(assert (=> b!4946548 (=> res!2110762 e!3090657)))

(declare-fun lt!2039947 () C!27220)

(declare-fun head!10611 (List!57109) C!27220)

(assert (=> b!4946548 (= res!2110762 (not (= lt!2039947 (head!10611 testedSuffix!70))))))

(declare-fun testedPSize!70 () Int)

(declare-fun apply!13821 (BalanceConc!29438 Int) C!27220)

(assert (=> b!4946548 (= lt!2039947 (apply!13821 totalInput!685 testedPSize!70))))

(declare-fun drop!2292 (List!57109 Int) List!57109)

(declare-fun apply!13822 (List!57109 Int) C!27220)

(assert (=> b!4946548 (= (head!10611 (drop!2292 lt!2039940 testedPSize!70)) (apply!13822 lt!2039940 testedPSize!70))))

(declare-fun lt!2039953 () Unit!147782)

(declare-fun lemmaDropApply!1346 (List!57109 Int) Unit!147782)

(assert (=> b!4946548 (= lt!2039953 (lemmaDropApply!1346 lt!2039940 testedPSize!70))))

(declare-fun lt!2039948 () List!57109)

(declare-fun lt!2039955 () List!57109)

(assert (=> b!4946548 (not (or (not (= lt!2039955 testedP!110)) (not (= lt!2039948 testedSuffix!70))))))

(declare-fun lt!2039938 () Unit!147782)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!729 (List!57109 List!57109 List!57109 List!57109) Unit!147782)

(assert (=> b!4946548 (= lt!2039938 (lemmaConcatSameAndSameSizesThenSameLists!729 lt!2039955 lt!2039948 testedP!110 testedSuffix!70))))

(declare-fun b!4946549 () Bool)

(declare-fun res!2110765 () Bool)

(declare-fun e!3090653 () Bool)

(assert (=> b!4946549 (=> res!2110765 e!3090653)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4946549 (= res!2110765 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4946550 () Bool)

(declare-fun tail!9746 (List!57109) List!57109)

(assert (=> b!4946550 (= e!3090645 (= (++!12470 testedP!110 (Cons!56985 lt!2039947 (tail!9746 testedSuffix!70))) lt!2039940))))

(declare-fun lt!2039952 () List!57109)

(assert (=> b!4946550 (isPrefix!5091 (++!12470 testedP!110 (Cons!56985 (head!10611 lt!2039952) Nil!56985)) lt!2039940)))

(declare-fun lt!2039951 () Unit!147782)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!820 (List!57109 List!57109) Unit!147782)

(assert (=> b!4946550 (= lt!2039951 (lemmaAddHeadSuffixToPrefixStillPrefix!820 testedP!110 lt!2039940))))

(declare-fun b!4946551 () Bool)

(declare-fun tp_is_empty!36167 () Bool)

(declare-fun tp!1387543 () Bool)

(assert (=> b!4946551 (= e!3090650 (and tp_is_empty!36167 tp!1387543))))

(declare-fun b!4946552 () Bool)

(assert (=> b!4946552 (= e!3090656 e!3090653)))

(declare-fun res!2110766 () Bool)

(assert (=> b!4946552 (=> res!2110766 e!3090653)))

(declare-fun lostCauseZipper!803 ((InoxSet Context!6254)) Bool)

(assert (=> b!4946552 (= res!2110766 (lostCauseZipper!803 z!3568))))

(assert (=> b!4946552 (and (= testedSuffix!70 lt!2039952) (= lt!2039952 testedSuffix!70))))

(declare-fun lt!2039946 () Unit!147782)

(declare-fun lemmaSamePrefixThenSameSuffix!2483 (List!57109 List!57109 List!57109 List!57109 List!57109) Unit!147782)

(assert (=> b!4946552 (= lt!2039946 (lemmaSamePrefixThenSameSuffix!2483 testedP!110 testedSuffix!70 testedP!110 lt!2039952 lt!2039940))))

(declare-fun getSuffix!3073 (List!57109 List!57109) List!57109)

(assert (=> b!4946552 (= lt!2039952 (getSuffix!3073 lt!2039940 testedP!110))))

(declare-fun b!4946553 () Bool)

(declare-fun res!2110759 () Bool)

(assert (=> b!4946553 (=> res!2110759 e!3090647)))

(declare-datatypes ((tuple2!61536 0))(
  ( (tuple2!61537 (_1!34071 BalanceConc!29438) (_2!34071 BalanceConc!29438)) )
))
(declare-fun lt!2039944 () tuple2!61536)

(declare-fun size!37814 (BalanceConc!29438) Int)

(assert (=> b!4946553 (= res!2110759 (not (= (size!37814 (_1!34071 lt!2039944)) testedPSize!70)))))

(declare-fun b!4946554 () Bool)

(assert (=> b!4946554 (= e!3090653 e!3090647)))

(declare-fun res!2110760 () Bool)

(assert (=> b!4946554 (=> res!2110760 e!3090647)))

(assert (=> b!4946554 (= res!2110760 (not (= (++!12470 lt!2039955 lt!2039948) lt!2039940)))))

(assert (=> b!4946554 (= lt!2039948 (list!18165 (_2!34071 lt!2039944)))))

(assert (=> b!4946554 (= lt!2039955 (list!18165 (_1!34071 lt!2039944)))))

(declare-fun splitAt!400 (BalanceConc!29438 Int) tuple2!61536)

(assert (=> b!4946554 (= lt!2039944 (splitAt!400 totalInput!685 testedPSize!70))))

(declare-fun setNonEmpty!28064 () Bool)

(declare-fun tp!1387542 () Bool)

(declare-fun setElem!28064 () Context!6254)

(declare-fun inv!74237 (Context!6254) Bool)

(assert (=> setNonEmpty!28064 (= setRes!28064 (and tp!1387542 (inv!74237 setElem!28064) e!3090646))))

(declare-fun setRest!28064 () (InoxSet Context!6254))

(assert (=> setNonEmpty!28064 (= z!3568 ((_ map or) (store ((as const (Array Context!6254 Bool)) false) setElem!28064 true) setRest!28064))))

(declare-fun b!4946555 () Bool)

(declare-fun tp!1387541 () Bool)

(assert (=> b!4946555 (= e!3090655 (and tp_is_empty!36167 tp!1387541))))

(declare-fun b!4946556 () Bool)

(declare-fun e!3090652 () Bool)

(assert (=> b!4946556 (= e!3090652 e!3090654)))

(declare-fun res!2110761 () Bool)

(assert (=> b!4946556 (=> (not res!2110761) (not e!3090654))))

(assert (=> b!4946556 (= res!2110761 (= totalInputSize!132 lt!2039949))))

(assert (=> b!4946556 (= lt!2039949 (size!37814 totalInput!685))))

(declare-fun setIsEmpty!28064 () Bool)

(assert (=> setIsEmpty!28064 setRes!28064))

(declare-fun b!4946557 () Bool)

(assert (=> b!4946557 (= e!3090648 e!3090652)))

(declare-fun res!2110763 () Bool)

(assert (=> b!4946557 (=> (not res!2110763) (not e!3090652))))

(assert (=> b!4946557 (= res!2110763 (= testedPSize!70 lt!2039950))))

(assert (=> b!4946557 (= lt!2039950 (size!37813 testedP!110))))

(assert (= (and start!520796 res!2110764) b!4946557))

(assert (= (and b!4946557 res!2110763) b!4946556))

(assert (= (and b!4946556 res!2110761) b!4946546))

(assert (= (and b!4946546 (not res!2110768)) b!4946552))

(assert (= (and b!4946552 (not res!2110766)) b!4946549))

(assert (= (and b!4946549 (not res!2110765)) b!4946554))

(assert (= (and b!4946554 (not res!2110760)) b!4946553))

(assert (= (and b!4946553 (not res!2110759)) b!4946548))

(assert (= (and b!4946548 (not res!2110762)) b!4946542))

(assert (= (and b!4946542 c!844067) b!4946543))

(assert (= (and b!4946542 (not c!844067)) b!4946544))

(assert (= (and b!4946542 (not res!2110767)) b!4946550))

(get-info :version)

(assert (= (and start!520796 ((_ is Cons!56985) testedP!110)) b!4946551))

(assert (= (and start!520796 condSetEmpty!28064) setIsEmpty!28064))

(assert (= (and start!520796 (not condSetEmpty!28064)) setNonEmpty!28064))

(assert (= setNonEmpty!28064 b!4946547))

(assert (= start!520796 b!4946545))

(assert (= (and start!520796 ((_ is Cons!56985) testedSuffix!70)) b!4946555))

(declare-fun m!5969756 () Bool)

(assert (=> b!4946553 m!5969756))

(declare-fun m!5969758 () Bool)

(assert (=> b!4946552 m!5969758))

(declare-fun m!5969760 () Bool)

(assert (=> b!4946552 m!5969760))

(declare-fun m!5969762 () Bool)

(assert (=> b!4946552 m!5969762))

(declare-fun m!5969764 () Bool)

(assert (=> start!520796 m!5969764))

(declare-fun m!5969766 () Bool)

(assert (=> start!520796 m!5969766))

(declare-fun m!5969768 () Bool)

(assert (=> start!520796 m!5969768))

(declare-fun m!5969770 () Bool)

(assert (=> b!4946546 m!5969770))

(declare-fun m!5969772 () Bool)

(assert (=> b!4946546 m!5969772))

(declare-fun m!5969774 () Bool)

(assert (=> b!4946546 m!5969774))

(declare-fun m!5969776 () Bool)

(assert (=> b!4946545 m!5969776))

(declare-fun m!5969778 () Bool)

(assert (=> b!4946542 m!5969778))

(declare-fun m!5969780 () Bool)

(assert (=> b!4946542 m!5969780))

(declare-fun m!5969782 () Bool)

(assert (=> b!4946554 m!5969782))

(declare-fun m!5969784 () Bool)

(assert (=> b!4946554 m!5969784))

(declare-fun m!5969786 () Bool)

(assert (=> b!4946554 m!5969786))

(declare-fun m!5969788 () Bool)

(assert (=> b!4946554 m!5969788))

(declare-fun m!5969790 () Bool)

(assert (=> b!4946556 m!5969790))

(declare-fun m!5969792 () Bool)

(assert (=> b!4946550 m!5969792))

(declare-fun m!5969794 () Bool)

(assert (=> b!4946550 m!5969794))

(assert (=> b!4946550 m!5969794))

(declare-fun m!5969796 () Bool)

(assert (=> b!4946550 m!5969796))

(declare-fun m!5969798 () Bool)

(assert (=> b!4946550 m!5969798))

(declare-fun m!5969800 () Bool)

(assert (=> b!4946550 m!5969800))

(declare-fun m!5969802 () Bool)

(assert (=> b!4946550 m!5969802))

(declare-fun m!5969804 () Bool)

(assert (=> b!4946543 m!5969804))

(declare-fun m!5969806 () Bool)

(assert (=> b!4946543 m!5969806))

(declare-fun m!5969808 () Bool)

(assert (=> b!4946543 m!5969808))

(declare-fun m!5969810 () Bool)

(assert (=> setNonEmpty!28064 m!5969810))

(declare-fun m!5969812 () Bool)

(assert (=> b!4946548 m!5969812))

(declare-fun m!5969814 () Bool)

(assert (=> b!4946548 m!5969814))

(declare-fun m!5969816 () Bool)

(assert (=> b!4946548 m!5969816))

(declare-fun m!5969818 () Bool)

(assert (=> b!4946548 m!5969818))

(declare-fun m!5969820 () Bool)

(assert (=> b!4946548 m!5969820))

(assert (=> b!4946548 m!5969816))

(declare-fun m!5969822 () Bool)

(assert (=> b!4946548 m!5969822))

(declare-fun m!5969824 () Bool)

(assert (=> b!4946548 m!5969824))

(declare-fun m!5969826 () Bool)

(assert (=> b!4946557 m!5969826))

(check-sat (not b!4946557) (not b!4946545) tp_is_empty!36167 (not b!4946550) (not b!4946552) (not b!4946543) (not b!4946546) (not setNonEmpty!28064) (not b!4946555) (not b!4946556) (not b!4946551) (not b!4946554) (not b!4946553) (not b!4946547) (not b!4946542) (not b!4946548) (not start!520796))
(check-sat)
(get-model)

(declare-fun d!1592547 () Bool)

(declare-fun c!844072 () Bool)

(assert (=> d!1592547 (= c!844072 ((_ is Node!15004) (c!844068 totalInput!685)))))

(declare-fun e!3090662 () Bool)

(assert (=> d!1592547 (= (inv!74235 (c!844068 totalInput!685)) e!3090662)))

(declare-fun b!4946564 () Bool)

(declare-fun inv!74240 (Conc!15004) Bool)

(assert (=> b!4946564 (= e!3090662 (inv!74240 (c!844068 totalInput!685)))))

(declare-fun b!4946565 () Bool)

(declare-fun e!3090663 () Bool)

(assert (=> b!4946565 (= e!3090662 e!3090663)))

(declare-fun res!2110771 () Bool)

(assert (=> b!4946565 (= res!2110771 (not ((_ is Leaf!24939) (c!844068 totalInput!685))))))

(assert (=> b!4946565 (=> res!2110771 e!3090663)))

(declare-fun b!4946566 () Bool)

(declare-fun inv!74241 (Conc!15004) Bool)

(assert (=> b!4946566 (= e!3090663 (inv!74241 (c!844068 totalInput!685)))))

(assert (= (and d!1592547 c!844072) b!4946564))

(assert (= (and d!1592547 (not c!844072)) b!4946565))

(assert (= (and b!4946565 (not res!2110771)) b!4946566))

(declare-fun m!5969828 () Bool)

(assert (=> b!4946564 m!5969828))

(declare-fun m!5969830 () Bool)

(assert (=> b!4946566 m!5969830))

(assert (=> b!4946545 d!1592547))

(declare-fun b!4946577 () Bool)

(declare-fun res!2110776 () Bool)

(declare-fun e!3090669 () Bool)

(assert (=> b!4946577 (=> (not res!2110776) (not e!3090669))))

(declare-fun lt!2039958 () List!57109)

(assert (=> b!4946577 (= res!2110776 (= (size!37813 lt!2039958) (+ (size!37813 lt!2039955) (size!37813 lt!2039948))))))

(declare-fun b!4946575 () Bool)

(declare-fun e!3090668 () List!57109)

(assert (=> b!4946575 (= e!3090668 lt!2039948)))

(declare-fun b!4946576 () Bool)

(assert (=> b!4946576 (= e!3090668 (Cons!56985 (h!63433 lt!2039955) (++!12470 (t!367645 lt!2039955) lt!2039948)))))

(declare-fun d!1592549 () Bool)

(assert (=> d!1592549 e!3090669))

(declare-fun res!2110777 () Bool)

(assert (=> d!1592549 (=> (not res!2110777) (not e!3090669))))

(declare-fun content!10149 (List!57109) (InoxSet C!27220))

(assert (=> d!1592549 (= res!2110777 (= (content!10149 lt!2039958) ((_ map or) (content!10149 lt!2039955) (content!10149 lt!2039948))))))

(assert (=> d!1592549 (= lt!2039958 e!3090668)))

(declare-fun c!844075 () Bool)

(assert (=> d!1592549 (= c!844075 ((_ is Nil!56985) lt!2039955))))

(assert (=> d!1592549 (= (++!12470 lt!2039955 lt!2039948) lt!2039958)))

(declare-fun b!4946578 () Bool)

(assert (=> b!4946578 (= e!3090669 (or (not (= lt!2039948 Nil!56985)) (= lt!2039958 lt!2039955)))))

(assert (= (and d!1592549 c!844075) b!4946575))

(assert (= (and d!1592549 (not c!844075)) b!4946576))

(assert (= (and d!1592549 res!2110777) b!4946577))

(assert (= (and b!4946577 res!2110776) b!4946578))

(declare-fun m!5969834 () Bool)

(assert (=> b!4946577 m!5969834))

(declare-fun m!5969836 () Bool)

(assert (=> b!4946577 m!5969836))

(declare-fun m!5969838 () Bool)

(assert (=> b!4946577 m!5969838))

(declare-fun m!5969840 () Bool)

(assert (=> b!4946576 m!5969840))

(declare-fun m!5969842 () Bool)

(assert (=> d!1592549 m!5969842))

(declare-fun m!5969844 () Bool)

(assert (=> d!1592549 m!5969844))

(declare-fun m!5969846 () Bool)

(assert (=> d!1592549 m!5969846))

(assert (=> b!4946554 d!1592549))

(declare-fun d!1592555 () Bool)

(declare-fun list!18167 (Conc!15004) List!57109)

(assert (=> d!1592555 (= (list!18165 (_2!34071 lt!2039944)) (list!18167 (c!844068 (_2!34071 lt!2039944))))))

(declare-fun bs!1181730 () Bool)

(assert (= bs!1181730 d!1592555))

(declare-fun m!5969848 () Bool)

(assert (=> bs!1181730 m!5969848))

(assert (=> b!4946554 d!1592555))

(declare-fun d!1592557 () Bool)

(assert (=> d!1592557 (= (list!18165 (_1!34071 lt!2039944)) (list!18167 (c!844068 (_1!34071 lt!2039944))))))

(declare-fun bs!1181731 () Bool)

(assert (= bs!1181731 d!1592557))

(declare-fun m!5969850 () Bool)

(assert (=> bs!1181731 m!5969850))

(assert (=> b!4946554 d!1592557))

(declare-fun d!1592559 () Bool)

(declare-fun e!3090689 () Bool)

(assert (=> d!1592559 e!3090689))

(declare-fun res!2110803 () Bool)

(assert (=> d!1592559 (=> (not res!2110803) (not e!3090689))))

(declare-fun lt!2039977 () tuple2!61536)

(declare-fun isBalanced!4154 (Conc!15004) Bool)

(assert (=> d!1592559 (= res!2110803 (isBalanced!4154 (c!844068 (_1!34071 lt!2039977))))))

(declare-datatypes ((tuple2!61542 0))(
  ( (tuple2!61543 (_1!34074 Conc!15004) (_2!34074 Conc!15004)) )
))
(declare-fun lt!2039976 () tuple2!61542)

(assert (=> d!1592559 (= lt!2039977 (tuple2!61537 (BalanceConc!29439 (_1!34074 lt!2039976)) (BalanceConc!29439 (_2!34074 lt!2039976))))))

(declare-fun splitAt!402 (Conc!15004 Int) tuple2!61542)

(assert (=> d!1592559 (= lt!2039976 (splitAt!402 (c!844068 totalInput!685) testedPSize!70))))

(assert (=> d!1592559 (isBalanced!4154 (c!844068 totalInput!685))))

(assert (=> d!1592559 (= (splitAt!400 totalInput!685 testedPSize!70) lt!2039977)))

(declare-fun b!4946611 () Bool)

(declare-fun res!2110802 () Bool)

(assert (=> b!4946611 (=> (not res!2110802) (not e!3090689))))

(assert (=> b!4946611 (= res!2110802 (isBalanced!4154 (c!844068 (_2!34071 lt!2039977))))))

(declare-fun b!4946612 () Bool)

(declare-datatypes ((tuple2!61544 0))(
  ( (tuple2!61545 (_1!34075 List!57109) (_2!34075 List!57109)) )
))
(declare-fun splitAtIndex!148 (List!57109 Int) tuple2!61544)

(assert (=> b!4946612 (= e!3090689 (= (tuple2!61545 (list!18165 (_1!34071 lt!2039977)) (list!18165 (_2!34071 lt!2039977))) (splitAtIndex!148 (list!18165 totalInput!685) testedPSize!70)))))

(assert (= (and d!1592559 res!2110803) b!4946611))

(assert (= (and b!4946611 res!2110802) b!4946612))

(declare-fun m!5969894 () Bool)

(assert (=> d!1592559 m!5969894))

(declare-fun m!5969896 () Bool)

(assert (=> d!1592559 m!5969896))

(declare-fun m!5969898 () Bool)

(assert (=> d!1592559 m!5969898))

(declare-fun m!5969900 () Bool)

(assert (=> b!4946611 m!5969900))

(declare-fun m!5969902 () Bool)

(assert (=> b!4946612 m!5969902))

(declare-fun m!5969904 () Bool)

(assert (=> b!4946612 m!5969904))

(assert (=> b!4946612 m!5969764))

(assert (=> b!4946612 m!5969764))

(declare-fun m!5969906 () Bool)

(assert (=> b!4946612 m!5969906))

(assert (=> b!4946554 d!1592559))

(declare-fun d!1592577 () Bool)

(declare-fun lambda!246663 () Int)

(declare-fun forall!13261 (List!57110 Int) Bool)

(assert (=> d!1592577 (= (inv!74237 setElem!28064) (forall!13261 (exprs!3627 setElem!28064) lambda!246663))))

(declare-fun bs!1181746 () Bool)

(assert (= bs!1181746 d!1592577))

(declare-fun m!5970014 () Bool)

(assert (=> bs!1181746 m!5970014))

(assert (=> setNonEmpty!28064 d!1592577))

(declare-fun d!1592625 () Bool)

(declare-fun lt!2040050 () Int)

(assert (=> d!1592625 (= lt!2040050 (size!37813 (list!18165 (_1!34071 lt!2039944))))))

(declare-fun size!37816 (Conc!15004) Int)

(assert (=> d!1592625 (= lt!2040050 (size!37816 (c!844068 (_1!34071 lt!2039944))))))

(assert (=> d!1592625 (= (size!37814 (_1!34071 lt!2039944)) lt!2040050)))

(declare-fun bs!1181748 () Bool)

(assert (= bs!1181748 d!1592625))

(assert (=> bs!1181748 m!5969786))

(assert (=> bs!1181748 m!5969786))

(declare-fun m!5970032 () Bool)

(assert (=> bs!1181748 m!5970032))

(declare-fun m!5970034 () Bool)

(assert (=> bs!1181748 m!5970034))

(assert (=> b!4946553 d!1592625))

(declare-fun d!1592633 () Bool)

(declare-fun lt!2040056 () Int)

(assert (=> d!1592633 (>= lt!2040056 0)))

(declare-fun e!3090757 () Int)

(assert (=> d!1592633 (= lt!2040056 e!3090757)))

(declare-fun c!844120 () Bool)

(assert (=> d!1592633 (= c!844120 ((_ is Nil!56985) lt!2039940))))

(assert (=> d!1592633 (= (size!37813 lt!2039940) lt!2040056)))

(declare-fun b!4946718 () Bool)

(assert (=> b!4946718 (= e!3090757 0)))

(declare-fun b!4946719 () Bool)

(assert (=> b!4946719 (= e!3090757 (+ 1 (size!37813 (t!367645 lt!2039940))))))

(assert (= (and d!1592633 c!844120) b!4946718))

(assert (= (and d!1592633 (not c!844120)) b!4946719))

(declare-fun m!5970040 () Bool)

(assert (=> b!4946719 m!5970040))

(assert (=> b!4946542 d!1592633))

(declare-fun d!1592635 () Bool)

(assert (=> d!1592635 (<= (size!37813 testedP!110) (size!37813 lt!2039940))))

(declare-fun lt!2040059 () Unit!147782)

(declare-fun choose!36475 (List!57109 List!57109) Unit!147782)

(assert (=> d!1592635 (= lt!2040059 (choose!36475 testedP!110 lt!2039940))))

(assert (=> d!1592635 (isPrefix!5091 testedP!110 lt!2039940)))

(assert (=> d!1592635 (= (lemmaIsPrefixThenSmallerEqSize!746 testedP!110 lt!2039940) lt!2040059)))

(declare-fun bs!1181750 () Bool)

(assert (= bs!1181750 d!1592635))

(assert (=> bs!1181750 m!5969826))

(assert (=> bs!1181750 m!5969778))

(declare-fun m!5970048 () Bool)

(assert (=> bs!1181750 m!5970048))

(assert (=> bs!1181750 m!5969770))

(assert (=> b!4946542 d!1592635))

(declare-fun d!1592637 () Bool)

(assert (=> d!1592637 (= (list!18165 totalInput!685) (list!18167 (c!844068 totalInput!685)))))

(declare-fun bs!1181751 () Bool)

(assert (= bs!1181751 d!1592637))

(declare-fun m!5970050 () Bool)

(assert (=> bs!1181751 m!5970050))

(assert (=> start!520796 d!1592637))

(declare-fun b!4946741 () Bool)

(declare-fun res!2110841 () Bool)

(declare-fun e!3090769 () Bool)

(assert (=> b!4946741 (=> (not res!2110841) (not e!3090769))))

(declare-fun lt!2040060 () List!57109)

(assert (=> b!4946741 (= res!2110841 (= (size!37813 lt!2040060) (+ (size!37813 testedP!110) (size!37813 testedSuffix!70))))))

(declare-fun b!4946739 () Bool)

(declare-fun e!3090768 () List!57109)

(assert (=> b!4946739 (= e!3090768 testedSuffix!70)))

(declare-fun b!4946740 () Bool)

(assert (=> b!4946740 (= e!3090768 (Cons!56985 (h!63433 testedP!110) (++!12470 (t!367645 testedP!110) testedSuffix!70)))))

(declare-fun d!1592639 () Bool)

(assert (=> d!1592639 e!3090769))

(declare-fun res!2110842 () Bool)

(assert (=> d!1592639 (=> (not res!2110842) (not e!3090769))))

(assert (=> d!1592639 (= res!2110842 (= (content!10149 lt!2040060) ((_ map or) (content!10149 testedP!110) (content!10149 testedSuffix!70))))))

(assert (=> d!1592639 (= lt!2040060 e!3090768)))

(declare-fun c!844121 () Bool)

(assert (=> d!1592639 (= c!844121 ((_ is Nil!56985) testedP!110))))

(assert (=> d!1592639 (= (++!12470 testedP!110 testedSuffix!70) lt!2040060)))

(declare-fun b!4946742 () Bool)

(assert (=> b!4946742 (= e!3090769 (or (not (= testedSuffix!70 Nil!56985)) (= lt!2040060 testedP!110)))))

(assert (= (and d!1592639 c!844121) b!4946739))

(assert (= (and d!1592639 (not c!844121)) b!4946740))

(assert (= (and d!1592639 res!2110842) b!4946741))

(assert (= (and b!4946741 res!2110841) b!4946742))

(declare-fun m!5970052 () Bool)

(assert (=> b!4946741 m!5970052))

(assert (=> b!4946741 m!5969826))

(declare-fun m!5970054 () Bool)

(assert (=> b!4946741 m!5970054))

(declare-fun m!5970056 () Bool)

(assert (=> b!4946740 m!5970056))

(declare-fun m!5970058 () Bool)

(assert (=> d!1592639 m!5970058))

(declare-fun m!5970060 () Bool)

(assert (=> d!1592639 m!5970060))

(declare-fun m!5970062 () Bool)

(assert (=> d!1592639 m!5970062))

(assert (=> start!520796 d!1592639))

(declare-fun d!1592641 () Bool)

(assert (=> d!1592641 (= (inv!74236 totalInput!685) (isBalanced!4154 (c!844068 totalInput!685)))))

(declare-fun bs!1181752 () Bool)

(assert (= bs!1181752 d!1592641))

(assert (=> bs!1181752 m!5969898))

(assert (=> start!520796 d!1592641))

(declare-fun d!1592643 () Bool)

(assert (=> d!1592643 (isPrefix!5091 lt!2039940 lt!2039940)))

(declare-fun lt!2040063 () Unit!147782)

(declare-fun choose!36476 (List!57109 List!57109) Unit!147782)

(assert (=> d!1592643 (= lt!2040063 (choose!36476 lt!2039940 lt!2039940))))

(assert (=> d!1592643 (= (lemmaIsPrefixRefl!3431 lt!2039940 lt!2039940) lt!2040063)))

(declare-fun bs!1181753 () Bool)

(assert (= bs!1181753 d!1592643))

(assert (=> bs!1181753 m!5969806))

(declare-fun m!5970066 () Bool)

(assert (=> bs!1181753 m!5970066))

(assert (=> b!4946543 d!1592643))

(declare-fun b!4946755 () Bool)

(declare-fun e!3090782 () Bool)

(declare-fun e!3090781 () Bool)

(assert (=> b!4946755 (= e!3090782 e!3090781)))

(declare-fun res!2110854 () Bool)

(assert (=> b!4946755 (=> (not res!2110854) (not e!3090781))))

(assert (=> b!4946755 (= res!2110854 (not ((_ is Nil!56985) lt!2039940)))))

(declare-fun b!4946757 () Bool)

(assert (=> b!4946757 (= e!3090781 (isPrefix!5091 (tail!9746 lt!2039940) (tail!9746 lt!2039940)))))

(declare-fun b!4946756 () Bool)

(declare-fun res!2110853 () Bool)

(assert (=> b!4946756 (=> (not res!2110853) (not e!3090781))))

(assert (=> b!4946756 (= res!2110853 (= (head!10611 lt!2039940) (head!10611 lt!2039940)))))

(declare-fun b!4946758 () Bool)

(declare-fun e!3090780 () Bool)

(assert (=> b!4946758 (= e!3090780 (>= (size!37813 lt!2039940) (size!37813 lt!2039940)))))

(declare-fun d!1592645 () Bool)

(assert (=> d!1592645 e!3090780))

(declare-fun res!2110852 () Bool)

(assert (=> d!1592645 (=> res!2110852 e!3090780)))

(declare-fun lt!2040066 () Bool)

(assert (=> d!1592645 (= res!2110852 (not lt!2040066))))

(assert (=> d!1592645 (= lt!2040066 e!3090782)))

(declare-fun res!2110851 () Bool)

(assert (=> d!1592645 (=> res!2110851 e!3090782)))

(assert (=> d!1592645 (= res!2110851 ((_ is Nil!56985) lt!2039940))))

(assert (=> d!1592645 (= (isPrefix!5091 lt!2039940 lt!2039940) lt!2040066)))

(assert (= (and d!1592645 (not res!2110851)) b!4946755))

(assert (= (and b!4946755 res!2110854) b!4946756))

(assert (= (and b!4946756 res!2110853) b!4946757))

(assert (= (and d!1592645 (not res!2110852)) b!4946758))

(declare-fun m!5970068 () Bool)

(assert (=> b!4946757 m!5970068))

(assert (=> b!4946757 m!5970068))

(assert (=> b!4946757 m!5970068))

(assert (=> b!4946757 m!5970068))

(declare-fun m!5970070 () Bool)

(assert (=> b!4946757 m!5970070))

(declare-fun m!5970072 () Bool)

(assert (=> b!4946756 m!5970072))

(assert (=> b!4946756 m!5970072))

(assert (=> b!4946758 m!5969778))

(assert (=> b!4946758 m!5969778))

(assert (=> b!4946543 d!1592645))

(declare-fun d!1592647 () Bool)

(assert (=> d!1592647 (= lt!2039940 testedP!110)))

(declare-fun lt!2040069 () Unit!147782)

(declare-fun choose!36478 (List!57109 List!57109 List!57109) Unit!147782)

(assert (=> d!1592647 (= lt!2040069 (choose!36478 lt!2039940 testedP!110 lt!2039940))))

(assert (=> d!1592647 (isPrefix!5091 lt!2039940 lt!2039940)))

(assert (=> d!1592647 (= (lemmaIsPrefixSameLengthThenSameList!1183 lt!2039940 testedP!110 lt!2039940) lt!2040069)))

(declare-fun bs!1181754 () Bool)

(assert (= bs!1181754 d!1592647))

(declare-fun m!5970074 () Bool)

(assert (=> bs!1181754 m!5970074))

(assert (=> bs!1181754 m!5969806))

(assert (=> b!4946543 d!1592647))

(declare-fun bs!1181755 () Bool)

(declare-fun b!4946763 () Bool)

(declare-fun d!1592649 () Bool)

(assert (= bs!1181755 (and b!4946763 d!1592649)))

(declare-fun lambda!246677 () Int)

(declare-fun lambda!246676 () Int)

(assert (=> bs!1181755 (not (= lambda!246677 lambda!246676))))

(declare-fun bs!1181756 () Bool)

(declare-fun b!4946764 () Bool)

(assert (= bs!1181756 (and b!4946764 d!1592649)))

(declare-fun lambda!246678 () Int)

(assert (=> bs!1181756 (not (= lambda!246678 lambda!246676))))

(declare-fun bs!1181757 () Bool)

(assert (= bs!1181757 (and b!4946764 b!4946763)))

(assert (=> bs!1181757 (= lambda!246678 lambda!246677)))

(declare-fun c!844132 () Bool)

(declare-fun bm!345215 () Bool)

(declare-fun call!345220 () Bool)

(declare-datatypes ((List!57112 0))(
  ( (Nil!56988) (Cons!56988 (h!63436 Context!6254) (t!367648 List!57112)) )
))
(declare-fun lt!2040090 () List!57112)

(declare-fun lt!2040086 () List!57112)

(declare-fun exists!1334 (List!57112 Int) Bool)

(assert (=> bm!345215 (= call!345220 (exists!1334 (ite c!844132 lt!2040086 lt!2040090) (ite c!844132 lambda!246677 lambda!246678)))))

(declare-fun lt!2040092 () Bool)

(declare-datatypes ((Option!14216 0))(
  ( (None!14215) (Some!14215 (v!50191 List!57109)) )
))
(declare-fun isEmpty!30660 (Option!14216) Bool)

(declare-fun getLanguageWitness!685 ((InoxSet Context!6254)) Option!14216)

(assert (=> d!1592649 (= lt!2040092 (isEmpty!30660 (getLanguageWitness!685 z!3568)))))

(declare-fun forall!13264 ((InoxSet Context!6254) Int) Bool)

(assert (=> d!1592649 (= lt!2040092 (forall!13264 z!3568 lambda!246676))))

(declare-fun lt!2040087 () Unit!147782)

(declare-fun e!3090789 () Unit!147782)

(assert (=> d!1592649 (= lt!2040087 e!3090789)))

(assert (=> d!1592649 (= c!844132 (not (forall!13264 z!3568 lambda!246676)))))

(assert (=> d!1592649 (= (lostCauseZipper!803 z!3568) lt!2040092)))

(declare-fun bm!345216 () Bool)

(declare-fun call!345221 () List!57112)

(declare-fun toList!7998 ((InoxSet Context!6254)) List!57112)

(assert (=> bm!345216 (= call!345221 (toList!7998 z!3568))))

(declare-fun Unit!147788 () Unit!147782)

(assert (=> b!4946763 (= e!3090789 Unit!147788)))

(assert (=> b!4946763 (= lt!2040086 call!345221)))

(declare-fun lt!2040093 () Unit!147782)

(declare-fun lemmaNotForallThenExists!236 (List!57112 Int) Unit!147782)

(assert (=> b!4946763 (= lt!2040093 (lemmaNotForallThenExists!236 lt!2040086 lambda!246676))))

(assert (=> b!4946763 call!345220))

(declare-fun lt!2040088 () Unit!147782)

(assert (=> b!4946763 (= lt!2040088 lt!2040093)))

(declare-fun Unit!147789 () Unit!147782)

(assert (=> b!4946764 (= e!3090789 Unit!147789)))

(assert (=> b!4946764 (= lt!2040090 call!345221)))

(declare-fun lt!2040089 () Unit!147782)

(declare-fun lemmaForallThenNotExists!219 (List!57112 Int) Unit!147782)

(assert (=> b!4946764 (= lt!2040089 (lemmaForallThenNotExists!219 lt!2040090 lambda!246676))))

(assert (=> b!4946764 (not call!345220)))

(declare-fun lt!2040091 () Unit!147782)

(assert (=> b!4946764 (= lt!2040091 lt!2040089)))

(assert (= (and d!1592649 c!844132) b!4946763))

(assert (= (and d!1592649 (not c!844132)) b!4946764))

(assert (= (or b!4946763 b!4946764) bm!345215))

(assert (= (or b!4946763 b!4946764) bm!345216))

(declare-fun m!5970076 () Bool)

(assert (=> b!4946764 m!5970076))

(declare-fun m!5970078 () Bool)

(assert (=> b!4946763 m!5970078))

(declare-fun m!5970080 () Bool)

(assert (=> bm!345216 m!5970080))

(declare-fun m!5970082 () Bool)

(assert (=> bm!345215 m!5970082))

(declare-fun m!5970084 () Bool)

(assert (=> d!1592649 m!5970084))

(assert (=> d!1592649 m!5970084))

(declare-fun m!5970086 () Bool)

(assert (=> d!1592649 m!5970086))

(declare-fun m!5970088 () Bool)

(assert (=> d!1592649 m!5970088))

(assert (=> d!1592649 m!5970088))

(assert (=> b!4946552 d!1592649))

(declare-fun d!1592651 () Bool)

(assert (=> d!1592651 (= testedSuffix!70 lt!2039952)))

(declare-fun lt!2040096 () Unit!147782)

(declare-fun choose!36480 (List!57109 List!57109 List!57109 List!57109 List!57109) Unit!147782)

(assert (=> d!1592651 (= lt!2040096 (choose!36480 testedP!110 testedSuffix!70 testedP!110 lt!2039952 lt!2039940))))

(assert (=> d!1592651 (isPrefix!5091 testedP!110 lt!2039940)))

(assert (=> d!1592651 (= (lemmaSamePrefixThenSameSuffix!2483 testedP!110 testedSuffix!70 testedP!110 lt!2039952 lt!2039940) lt!2040096)))

(declare-fun bs!1181758 () Bool)

(assert (= bs!1181758 d!1592651))

(declare-fun m!5970090 () Bool)

(assert (=> bs!1181758 m!5970090))

(assert (=> bs!1181758 m!5969770))

(assert (=> b!4946552 d!1592651))

(declare-fun d!1592653 () Bool)

(declare-fun lt!2040099 () List!57109)

(assert (=> d!1592653 (= (++!12470 testedP!110 lt!2040099) lt!2039940)))

(declare-fun e!3090792 () List!57109)

(assert (=> d!1592653 (= lt!2040099 e!3090792)))

(declare-fun c!844135 () Bool)

(assert (=> d!1592653 (= c!844135 ((_ is Cons!56985) testedP!110))))

(assert (=> d!1592653 (>= (size!37813 lt!2039940) (size!37813 testedP!110))))

(assert (=> d!1592653 (= (getSuffix!3073 lt!2039940 testedP!110) lt!2040099)))

(declare-fun b!4946769 () Bool)

(assert (=> b!4946769 (= e!3090792 (getSuffix!3073 (tail!9746 lt!2039940) (t!367645 testedP!110)))))

(declare-fun b!4946770 () Bool)

(assert (=> b!4946770 (= e!3090792 lt!2039940)))

(assert (= (and d!1592653 c!844135) b!4946769))

(assert (= (and d!1592653 (not c!844135)) b!4946770))

(declare-fun m!5970092 () Bool)

(assert (=> d!1592653 m!5970092))

(assert (=> d!1592653 m!5969778))

(assert (=> d!1592653 m!5969826))

(assert (=> b!4946769 m!5970068))

(assert (=> b!4946769 m!5970068))

(declare-fun m!5970094 () Bool)

(assert (=> b!4946769 m!5970094))

(assert (=> b!4946552 d!1592653))

(declare-fun b!4946773 () Bool)

(declare-fun res!2110855 () Bool)

(declare-fun e!3090794 () Bool)

(assert (=> b!4946773 (=> (not res!2110855) (not e!3090794))))

(declare-fun lt!2040100 () List!57109)

(assert (=> b!4946773 (= res!2110855 (= (size!37813 lt!2040100) (+ (size!37813 testedP!110) (size!37813 (Cons!56985 lt!2039947 (tail!9746 testedSuffix!70))))))))

(declare-fun b!4946771 () Bool)

(declare-fun e!3090793 () List!57109)

(assert (=> b!4946771 (= e!3090793 (Cons!56985 lt!2039947 (tail!9746 testedSuffix!70)))))

(declare-fun b!4946772 () Bool)

(assert (=> b!4946772 (= e!3090793 (Cons!56985 (h!63433 testedP!110) (++!12470 (t!367645 testedP!110) (Cons!56985 lt!2039947 (tail!9746 testedSuffix!70)))))))

(declare-fun d!1592655 () Bool)

(assert (=> d!1592655 e!3090794))

(declare-fun res!2110856 () Bool)

(assert (=> d!1592655 (=> (not res!2110856) (not e!3090794))))

(assert (=> d!1592655 (= res!2110856 (= (content!10149 lt!2040100) ((_ map or) (content!10149 testedP!110) (content!10149 (Cons!56985 lt!2039947 (tail!9746 testedSuffix!70))))))))

(assert (=> d!1592655 (= lt!2040100 e!3090793)))

(declare-fun c!844136 () Bool)

(assert (=> d!1592655 (= c!844136 ((_ is Nil!56985) testedP!110))))

(assert (=> d!1592655 (= (++!12470 testedP!110 (Cons!56985 lt!2039947 (tail!9746 testedSuffix!70))) lt!2040100)))

(declare-fun b!4946774 () Bool)

(assert (=> b!4946774 (= e!3090794 (or (not (= (Cons!56985 lt!2039947 (tail!9746 testedSuffix!70)) Nil!56985)) (= lt!2040100 testedP!110)))))

(assert (= (and d!1592655 c!844136) b!4946771))

(assert (= (and d!1592655 (not c!844136)) b!4946772))

(assert (= (and d!1592655 res!2110856) b!4946773))

(assert (= (and b!4946773 res!2110855) b!4946774))

(declare-fun m!5970096 () Bool)

(assert (=> b!4946773 m!5970096))

(assert (=> b!4946773 m!5969826))

(declare-fun m!5970098 () Bool)

(assert (=> b!4946773 m!5970098))

(declare-fun m!5970100 () Bool)

(assert (=> b!4946772 m!5970100))

(declare-fun m!5970102 () Bool)

(assert (=> d!1592655 m!5970102))

(assert (=> d!1592655 m!5970060))

(declare-fun m!5970104 () Bool)

(assert (=> d!1592655 m!5970104))

(assert (=> b!4946550 d!1592655))

(declare-fun b!4946777 () Bool)

(declare-fun res!2110857 () Bool)

(declare-fun e!3090796 () Bool)

(assert (=> b!4946777 (=> (not res!2110857) (not e!3090796))))

(declare-fun lt!2040101 () List!57109)

(assert (=> b!4946777 (= res!2110857 (= (size!37813 lt!2040101) (+ (size!37813 testedP!110) (size!37813 (Cons!56985 (head!10611 lt!2039952) Nil!56985)))))))

(declare-fun b!4946775 () Bool)

(declare-fun e!3090795 () List!57109)

(assert (=> b!4946775 (= e!3090795 (Cons!56985 (head!10611 lt!2039952) Nil!56985))))

(declare-fun b!4946776 () Bool)

(assert (=> b!4946776 (= e!3090795 (Cons!56985 (h!63433 testedP!110) (++!12470 (t!367645 testedP!110) (Cons!56985 (head!10611 lt!2039952) Nil!56985))))))

(declare-fun d!1592657 () Bool)

(assert (=> d!1592657 e!3090796))

(declare-fun res!2110858 () Bool)

(assert (=> d!1592657 (=> (not res!2110858) (not e!3090796))))

(assert (=> d!1592657 (= res!2110858 (= (content!10149 lt!2040101) ((_ map or) (content!10149 testedP!110) (content!10149 (Cons!56985 (head!10611 lt!2039952) Nil!56985)))))))

(assert (=> d!1592657 (= lt!2040101 e!3090795)))

(declare-fun c!844137 () Bool)

(assert (=> d!1592657 (= c!844137 ((_ is Nil!56985) testedP!110))))

(assert (=> d!1592657 (= (++!12470 testedP!110 (Cons!56985 (head!10611 lt!2039952) Nil!56985)) lt!2040101)))

(declare-fun b!4946778 () Bool)

(assert (=> b!4946778 (= e!3090796 (or (not (= (Cons!56985 (head!10611 lt!2039952) Nil!56985) Nil!56985)) (= lt!2040101 testedP!110)))))

(assert (= (and d!1592657 c!844137) b!4946775))

(assert (= (and d!1592657 (not c!844137)) b!4946776))

(assert (= (and d!1592657 res!2110858) b!4946777))

(assert (= (and b!4946777 res!2110857) b!4946778))

(declare-fun m!5970106 () Bool)

(assert (=> b!4946777 m!5970106))

(assert (=> b!4946777 m!5969826))

(declare-fun m!5970108 () Bool)

(assert (=> b!4946777 m!5970108))

(declare-fun m!5970110 () Bool)

(assert (=> b!4946776 m!5970110))

(declare-fun m!5970112 () Bool)

(assert (=> d!1592657 m!5970112))

(assert (=> d!1592657 m!5970060))

(declare-fun m!5970114 () Bool)

(assert (=> d!1592657 m!5970114))

(assert (=> b!4946550 d!1592657))

(declare-fun d!1592659 () Bool)

(assert (=> d!1592659 (isPrefix!5091 (++!12470 testedP!110 (Cons!56985 (head!10611 (getSuffix!3073 lt!2039940 testedP!110)) Nil!56985)) lt!2039940)))

(declare-fun lt!2040104 () Unit!147782)

(declare-fun choose!36482 (List!57109 List!57109) Unit!147782)

(assert (=> d!1592659 (= lt!2040104 (choose!36482 testedP!110 lt!2039940))))

(assert (=> d!1592659 (isPrefix!5091 testedP!110 lt!2039940)))

(assert (=> d!1592659 (= (lemmaAddHeadSuffixToPrefixStillPrefix!820 testedP!110 lt!2039940) lt!2040104)))

(declare-fun bs!1181759 () Bool)

(assert (= bs!1181759 d!1592659))

(assert (=> bs!1181759 m!5969770))

(assert (=> bs!1181759 m!5969762))

(declare-fun m!5970116 () Bool)

(assert (=> bs!1181759 m!5970116))

(declare-fun m!5970118 () Bool)

(assert (=> bs!1181759 m!5970118))

(declare-fun m!5970120 () Bool)

(assert (=> bs!1181759 m!5970120))

(assert (=> bs!1181759 m!5970116))

(assert (=> bs!1181759 m!5969762))

(declare-fun m!5970122 () Bool)

(assert (=> bs!1181759 m!5970122))

(assert (=> b!4946550 d!1592659))

(declare-fun b!4946779 () Bool)

(declare-fun e!3090799 () Bool)

(declare-fun e!3090798 () Bool)

(assert (=> b!4946779 (= e!3090799 e!3090798)))

(declare-fun res!2110862 () Bool)

(assert (=> b!4946779 (=> (not res!2110862) (not e!3090798))))

(assert (=> b!4946779 (= res!2110862 (not ((_ is Nil!56985) lt!2039940)))))

(declare-fun b!4946781 () Bool)

(assert (=> b!4946781 (= e!3090798 (isPrefix!5091 (tail!9746 (++!12470 testedP!110 (Cons!56985 (head!10611 lt!2039952) Nil!56985))) (tail!9746 lt!2039940)))))

(declare-fun b!4946780 () Bool)

(declare-fun res!2110861 () Bool)

(assert (=> b!4946780 (=> (not res!2110861) (not e!3090798))))

(assert (=> b!4946780 (= res!2110861 (= (head!10611 (++!12470 testedP!110 (Cons!56985 (head!10611 lt!2039952) Nil!56985))) (head!10611 lt!2039940)))))

(declare-fun e!3090797 () Bool)

(declare-fun b!4946782 () Bool)

(assert (=> b!4946782 (= e!3090797 (>= (size!37813 lt!2039940) (size!37813 (++!12470 testedP!110 (Cons!56985 (head!10611 lt!2039952) Nil!56985)))))))

(declare-fun d!1592661 () Bool)

(assert (=> d!1592661 e!3090797))

(declare-fun res!2110860 () Bool)

(assert (=> d!1592661 (=> res!2110860 e!3090797)))

(declare-fun lt!2040105 () Bool)

(assert (=> d!1592661 (= res!2110860 (not lt!2040105))))

(assert (=> d!1592661 (= lt!2040105 e!3090799)))

(declare-fun res!2110859 () Bool)

(assert (=> d!1592661 (=> res!2110859 e!3090799)))

(assert (=> d!1592661 (= res!2110859 ((_ is Nil!56985) (++!12470 testedP!110 (Cons!56985 (head!10611 lt!2039952) Nil!56985))))))

(assert (=> d!1592661 (= (isPrefix!5091 (++!12470 testedP!110 (Cons!56985 (head!10611 lt!2039952) Nil!56985)) lt!2039940) lt!2040105)))

(assert (= (and d!1592661 (not res!2110859)) b!4946779))

(assert (= (and b!4946779 res!2110862) b!4946780))

(assert (= (and b!4946780 res!2110861) b!4946781))

(assert (= (and d!1592661 (not res!2110860)) b!4946782))

(assert (=> b!4946781 m!5969794))

(declare-fun m!5970124 () Bool)

(assert (=> b!4946781 m!5970124))

(assert (=> b!4946781 m!5970068))

(assert (=> b!4946781 m!5970124))

(assert (=> b!4946781 m!5970068))

(declare-fun m!5970126 () Bool)

(assert (=> b!4946781 m!5970126))

(assert (=> b!4946780 m!5969794))

(declare-fun m!5970128 () Bool)

(assert (=> b!4946780 m!5970128))

(assert (=> b!4946780 m!5970072))

(assert (=> b!4946782 m!5969778))

(assert (=> b!4946782 m!5969794))

(declare-fun m!5970130 () Bool)

(assert (=> b!4946782 m!5970130))

(assert (=> b!4946550 d!1592661))

(declare-fun d!1592663 () Bool)

(assert (=> d!1592663 (= (head!10611 lt!2039952) (h!63433 lt!2039952))))

(assert (=> b!4946550 d!1592663))

(declare-fun d!1592665 () Bool)

(assert (=> d!1592665 (= (tail!9746 testedSuffix!70) (t!367645 testedSuffix!70))))

(assert (=> b!4946550 d!1592665))

(declare-fun d!1592667 () Bool)

(declare-fun lt!2040106 () Int)

(assert (=> d!1592667 (>= lt!2040106 0)))

(declare-fun e!3090800 () Int)

(assert (=> d!1592667 (= lt!2040106 e!3090800)))

(declare-fun c!844138 () Bool)

(assert (=> d!1592667 (= c!844138 ((_ is Nil!56985) testedP!110))))

(assert (=> d!1592667 (= (size!37813 testedP!110) lt!2040106)))

(declare-fun b!4946783 () Bool)

(assert (=> b!4946783 (= e!3090800 0)))

(declare-fun b!4946784 () Bool)

(assert (=> b!4946784 (= e!3090800 (+ 1 (size!37813 (t!367645 testedP!110))))))

(assert (= (and d!1592667 c!844138) b!4946783))

(assert (= (and d!1592667 (not c!844138)) b!4946784))

(declare-fun m!5970132 () Bool)

(assert (=> b!4946784 m!5970132))

(assert (=> b!4946557 d!1592667))

(declare-fun b!4946803 () Bool)

(declare-fun e!3090812 () List!57109)

(assert (=> b!4946803 (= e!3090812 Nil!56985)))

(declare-fun b!4946804 () Bool)

(declare-fun e!3090813 () List!57109)

(assert (=> b!4946804 (= e!3090813 (drop!2292 (t!367645 lt!2039940) (- testedPSize!70 1)))))

(declare-fun b!4946805 () Bool)

(declare-fun e!3090815 () Int)

(assert (=> b!4946805 (= e!3090815 0)))

(declare-fun b!4946806 () Bool)

(declare-fun e!3090814 () Bool)

(declare-fun lt!2040109 () List!57109)

(declare-fun e!3090811 () Int)

(assert (=> b!4946806 (= e!3090814 (= (size!37813 lt!2040109) e!3090811))))

(declare-fun c!844147 () Bool)

(assert (=> b!4946806 (= c!844147 (<= testedPSize!70 0))))

(declare-fun b!4946807 () Bool)

(declare-fun call!345224 () Int)

(assert (=> b!4946807 (= e!3090811 call!345224)))

(declare-fun b!4946808 () Bool)

(assert (=> b!4946808 (= e!3090815 (- call!345224 testedPSize!70))))

(declare-fun d!1592669 () Bool)

(assert (=> d!1592669 e!3090814))

(declare-fun res!2110865 () Bool)

(assert (=> d!1592669 (=> (not res!2110865) (not e!3090814))))

(assert (=> d!1592669 (= res!2110865 (= ((_ map implies) (content!10149 lt!2040109) (content!10149 lt!2039940)) ((as const (InoxSet C!27220)) true)))))

(assert (=> d!1592669 (= lt!2040109 e!3090812)))

(declare-fun c!844150 () Bool)

(assert (=> d!1592669 (= c!844150 ((_ is Nil!56985) lt!2039940))))

(assert (=> d!1592669 (= (drop!2292 lt!2039940 testedPSize!70) lt!2040109)))

(declare-fun b!4946809 () Bool)

(assert (=> b!4946809 (= e!3090812 e!3090813)))

(declare-fun c!844148 () Bool)

(assert (=> b!4946809 (= c!844148 (<= testedPSize!70 0))))

(declare-fun b!4946810 () Bool)

(assert (=> b!4946810 (= e!3090813 lt!2039940)))

(declare-fun bm!345219 () Bool)

(assert (=> bm!345219 (= call!345224 (size!37813 lt!2039940))))

(declare-fun b!4946811 () Bool)

(assert (=> b!4946811 (= e!3090811 e!3090815)))

(declare-fun c!844149 () Bool)

(assert (=> b!4946811 (= c!844149 (>= testedPSize!70 call!345224))))

(assert (= (and d!1592669 c!844150) b!4946803))

(assert (= (and d!1592669 (not c!844150)) b!4946809))

(assert (= (and b!4946809 c!844148) b!4946810))

(assert (= (and b!4946809 (not c!844148)) b!4946804))

(assert (= (and d!1592669 res!2110865) b!4946806))

(assert (= (and b!4946806 c!844147) b!4946807))

(assert (= (and b!4946806 (not c!844147)) b!4946811))

(assert (= (and b!4946811 c!844149) b!4946805))

(assert (= (and b!4946811 (not c!844149)) b!4946808))

(assert (= (or b!4946807 b!4946811 b!4946808) bm!345219))

(declare-fun m!5970134 () Bool)

(assert (=> b!4946804 m!5970134))

(declare-fun m!5970136 () Bool)

(assert (=> b!4946806 m!5970136))

(declare-fun m!5970138 () Bool)

(assert (=> d!1592669 m!5970138))

(declare-fun m!5970140 () Bool)

(assert (=> d!1592669 m!5970140))

(assert (=> bm!345219 m!5969778))

(assert (=> b!4946548 d!1592669))

(declare-fun d!1592671 () Bool)

(assert (=> d!1592671 (and (= lt!2039955 testedP!110) (= lt!2039948 testedSuffix!70))))

(declare-fun lt!2040112 () Unit!147782)

(declare-fun choose!36483 (List!57109 List!57109 List!57109 List!57109) Unit!147782)

(assert (=> d!1592671 (= lt!2040112 (choose!36483 lt!2039955 lt!2039948 testedP!110 testedSuffix!70))))

(assert (=> d!1592671 (= (++!12470 lt!2039955 lt!2039948) (++!12470 testedP!110 testedSuffix!70))))

(assert (=> d!1592671 (= (lemmaConcatSameAndSameSizesThenSameLists!729 lt!2039955 lt!2039948 testedP!110 testedSuffix!70) lt!2040112)))

(declare-fun bs!1181760 () Bool)

(assert (= bs!1181760 d!1592671))

(declare-fun m!5970142 () Bool)

(assert (=> bs!1181760 m!5970142))

(assert (=> bs!1181760 m!5969782))

(assert (=> bs!1181760 m!5969766))

(assert (=> b!4946548 d!1592671))

(declare-fun d!1592673 () Bool)

(assert (=> d!1592673 (= (head!10611 testedSuffix!70) (h!63433 testedSuffix!70))))

(assert (=> b!4946548 d!1592673))

(declare-fun d!1592675 () Bool)

(declare-fun lt!2040115 () C!27220)

(declare-fun contains!19492 (List!57109 C!27220) Bool)

(assert (=> d!1592675 (contains!19492 lt!2039940 lt!2040115)))

(declare-fun e!3090821 () C!27220)

(assert (=> d!1592675 (= lt!2040115 e!3090821)))

(declare-fun c!844153 () Bool)

(assert (=> d!1592675 (= c!844153 (= testedPSize!70 0))))

(declare-fun e!3090820 () Bool)

(assert (=> d!1592675 e!3090820))

(declare-fun res!2110868 () Bool)

(assert (=> d!1592675 (=> (not res!2110868) (not e!3090820))))

(assert (=> d!1592675 (= res!2110868 (<= 0 testedPSize!70))))

(assert (=> d!1592675 (= (apply!13822 lt!2039940 testedPSize!70) lt!2040115)))

(declare-fun b!4946818 () Bool)

(assert (=> b!4946818 (= e!3090820 (< testedPSize!70 (size!37813 lt!2039940)))))

(declare-fun b!4946819 () Bool)

(assert (=> b!4946819 (= e!3090821 (head!10611 lt!2039940))))

(declare-fun b!4946820 () Bool)

(assert (=> b!4946820 (= e!3090821 (apply!13822 (tail!9746 lt!2039940) (- testedPSize!70 1)))))

(assert (= (and d!1592675 res!2110868) b!4946818))

(assert (= (and d!1592675 c!844153) b!4946819))

(assert (= (and d!1592675 (not c!844153)) b!4946820))

(declare-fun m!5970144 () Bool)

(assert (=> d!1592675 m!5970144))

(assert (=> b!4946818 m!5969778))

(assert (=> b!4946819 m!5970072))

(assert (=> b!4946820 m!5970068))

(assert (=> b!4946820 m!5970068))

(declare-fun m!5970146 () Bool)

(assert (=> b!4946820 m!5970146))

(assert (=> b!4946548 d!1592675))

(declare-fun d!1592677 () Bool)

(assert (=> d!1592677 (= (head!10611 (drop!2292 lt!2039940 testedPSize!70)) (apply!13822 lt!2039940 testedPSize!70))))

(declare-fun lt!2040118 () Unit!147782)

(declare-fun choose!36484 (List!57109 Int) Unit!147782)

(assert (=> d!1592677 (= lt!2040118 (choose!36484 lt!2039940 testedPSize!70))))

(declare-fun e!3090824 () Bool)

(assert (=> d!1592677 e!3090824))

(declare-fun res!2110871 () Bool)

(assert (=> d!1592677 (=> (not res!2110871) (not e!3090824))))

(assert (=> d!1592677 (= res!2110871 (>= testedPSize!70 0))))

(assert (=> d!1592677 (= (lemmaDropApply!1346 lt!2039940 testedPSize!70) lt!2040118)))

(declare-fun b!4946823 () Bool)

(assert (=> b!4946823 (= e!3090824 (< testedPSize!70 (size!37813 lt!2039940)))))

(assert (= (and d!1592677 res!2110871) b!4946823))

(assert (=> d!1592677 m!5969816))

(assert (=> d!1592677 m!5969816))

(assert (=> d!1592677 m!5969822))

(assert (=> d!1592677 m!5969824))

(declare-fun m!5970148 () Bool)

(assert (=> d!1592677 m!5970148))

(assert (=> b!4946823 m!5969778))

(assert (=> b!4946548 d!1592677))

(declare-fun d!1592679 () Bool)

(assert (=> d!1592679 (= (head!10611 (drop!2292 lt!2039940 testedPSize!70)) (h!63433 (drop!2292 lt!2039940 testedPSize!70)))))

(assert (=> b!4946548 d!1592679))

(declare-fun d!1592681 () Bool)

(declare-fun lt!2040121 () C!27220)

(assert (=> d!1592681 (= lt!2040121 (apply!13822 (list!18165 totalInput!685) testedPSize!70))))

(declare-fun apply!13824 (Conc!15004 Int) C!27220)

(assert (=> d!1592681 (= lt!2040121 (apply!13824 (c!844068 totalInput!685) testedPSize!70))))

(declare-fun e!3090827 () Bool)

(assert (=> d!1592681 e!3090827))

(declare-fun res!2110874 () Bool)

(assert (=> d!1592681 (=> (not res!2110874) (not e!3090827))))

(assert (=> d!1592681 (= res!2110874 (<= 0 testedPSize!70))))

(assert (=> d!1592681 (= (apply!13821 totalInput!685 testedPSize!70) lt!2040121)))

(declare-fun b!4946826 () Bool)

(assert (=> b!4946826 (= e!3090827 (< testedPSize!70 (size!37814 totalInput!685)))))

(assert (= (and d!1592681 res!2110874) b!4946826))

(assert (=> d!1592681 m!5969764))

(assert (=> d!1592681 m!5969764))

(declare-fun m!5970150 () Bool)

(assert (=> d!1592681 m!5970150))

(declare-fun m!5970152 () Bool)

(assert (=> d!1592681 m!5970152))

(assert (=> b!4946826 m!5969790))

(assert (=> b!4946548 d!1592681))

(declare-fun d!1592683 () Bool)

(declare-fun lt!2040122 () Int)

(assert (=> d!1592683 (= lt!2040122 (size!37813 (list!18165 totalInput!685)))))

(assert (=> d!1592683 (= lt!2040122 (size!37816 (c!844068 totalInput!685)))))

(assert (=> d!1592683 (= (size!37814 totalInput!685) lt!2040122)))

(declare-fun bs!1181761 () Bool)

(assert (= bs!1181761 d!1592683))

(assert (=> bs!1181761 m!5969764))

(assert (=> bs!1181761 m!5969764))

(declare-fun m!5970154 () Bool)

(assert (=> bs!1181761 m!5970154))

(declare-fun m!5970156 () Bool)

(assert (=> bs!1181761 m!5970156))

(assert (=> b!4946556 d!1592683))

(declare-fun b!4946827 () Bool)

(declare-fun e!3090830 () Bool)

(declare-fun e!3090829 () Bool)

(assert (=> b!4946827 (= e!3090830 e!3090829)))

(declare-fun res!2110878 () Bool)

(assert (=> b!4946827 (=> (not res!2110878) (not e!3090829))))

(assert (=> b!4946827 (= res!2110878 (not ((_ is Nil!56985) lt!2039940)))))

(declare-fun b!4946829 () Bool)

(assert (=> b!4946829 (= e!3090829 (isPrefix!5091 (tail!9746 testedP!110) (tail!9746 lt!2039940)))))

(declare-fun b!4946828 () Bool)

(declare-fun res!2110877 () Bool)

(assert (=> b!4946828 (=> (not res!2110877) (not e!3090829))))

(assert (=> b!4946828 (= res!2110877 (= (head!10611 testedP!110) (head!10611 lt!2039940)))))

(declare-fun b!4946830 () Bool)

(declare-fun e!3090828 () Bool)

(assert (=> b!4946830 (= e!3090828 (>= (size!37813 lt!2039940) (size!37813 testedP!110)))))

(declare-fun d!1592685 () Bool)

(assert (=> d!1592685 e!3090828))

(declare-fun res!2110876 () Bool)

(assert (=> d!1592685 (=> res!2110876 e!3090828)))

(declare-fun lt!2040123 () Bool)

(assert (=> d!1592685 (= res!2110876 (not lt!2040123))))

(assert (=> d!1592685 (= lt!2040123 e!3090830)))

(declare-fun res!2110875 () Bool)

(assert (=> d!1592685 (=> res!2110875 e!3090830)))

(assert (=> d!1592685 (= res!2110875 ((_ is Nil!56985) testedP!110))))

(assert (=> d!1592685 (= (isPrefix!5091 testedP!110 lt!2039940) lt!2040123)))

(assert (= (and d!1592685 (not res!2110875)) b!4946827))

(assert (= (and b!4946827 res!2110878) b!4946828))

(assert (= (and b!4946828 res!2110877) b!4946829))

(assert (= (and d!1592685 (not res!2110876)) b!4946830))

(declare-fun m!5970158 () Bool)

(assert (=> b!4946829 m!5970158))

(assert (=> b!4946829 m!5970068))

(assert (=> b!4946829 m!5970158))

(assert (=> b!4946829 m!5970068))

(declare-fun m!5970160 () Bool)

(assert (=> b!4946829 m!5970160))

(declare-fun m!5970162 () Bool)

(assert (=> b!4946828 m!5970162))

(assert (=> b!4946828 m!5970072))

(assert (=> b!4946830 m!5969778))

(assert (=> b!4946830 m!5969826))

(assert (=> b!4946546 d!1592685))

(declare-fun b!4946831 () Bool)

(declare-fun e!3090833 () Bool)

(declare-fun e!3090832 () Bool)

(assert (=> b!4946831 (= e!3090833 e!3090832)))

(declare-fun res!2110882 () Bool)

(assert (=> b!4946831 (=> (not res!2110882) (not e!3090832))))

(assert (=> b!4946831 (= res!2110882 (not ((_ is Nil!56985) lt!2039943)))))

(declare-fun b!4946833 () Bool)

(assert (=> b!4946833 (= e!3090832 (isPrefix!5091 (tail!9746 testedP!110) (tail!9746 lt!2039943)))))

(declare-fun b!4946832 () Bool)

(declare-fun res!2110881 () Bool)

(assert (=> b!4946832 (=> (not res!2110881) (not e!3090832))))

(assert (=> b!4946832 (= res!2110881 (= (head!10611 testedP!110) (head!10611 lt!2039943)))))

(declare-fun b!4946834 () Bool)

(declare-fun e!3090831 () Bool)

(assert (=> b!4946834 (= e!3090831 (>= (size!37813 lt!2039943) (size!37813 testedP!110)))))

(declare-fun d!1592687 () Bool)

(assert (=> d!1592687 e!3090831))

(declare-fun res!2110880 () Bool)

(assert (=> d!1592687 (=> res!2110880 e!3090831)))

(declare-fun lt!2040124 () Bool)

(assert (=> d!1592687 (= res!2110880 (not lt!2040124))))

(assert (=> d!1592687 (= lt!2040124 e!3090833)))

(declare-fun res!2110879 () Bool)

(assert (=> d!1592687 (=> res!2110879 e!3090833)))

(assert (=> d!1592687 (= res!2110879 ((_ is Nil!56985) testedP!110))))

(assert (=> d!1592687 (= (isPrefix!5091 testedP!110 lt!2039943) lt!2040124)))

(assert (= (and d!1592687 (not res!2110879)) b!4946831))

(assert (= (and b!4946831 res!2110882) b!4946832))

(assert (= (and b!4946832 res!2110881) b!4946833))

(assert (= (and d!1592687 (not res!2110880)) b!4946834))

(assert (=> b!4946833 m!5970158))

(declare-fun m!5970164 () Bool)

(assert (=> b!4946833 m!5970164))

(assert (=> b!4946833 m!5970158))

(assert (=> b!4946833 m!5970164))

(declare-fun m!5970166 () Bool)

(assert (=> b!4946833 m!5970166))

(assert (=> b!4946832 m!5970162))

(declare-fun m!5970168 () Bool)

(assert (=> b!4946832 m!5970168))

(declare-fun m!5970170 () Bool)

(assert (=> b!4946834 m!5970170))

(assert (=> b!4946834 m!5969826))

(assert (=> b!4946546 d!1592687))

(declare-fun d!1592689 () Bool)

(assert (=> d!1592689 (isPrefix!5091 testedP!110 (++!12470 testedP!110 testedSuffix!70))))

(declare-fun lt!2040127 () Unit!147782)

(declare-fun choose!36485 (List!57109 List!57109) Unit!147782)

(assert (=> d!1592689 (= lt!2040127 (choose!36485 testedP!110 testedSuffix!70))))

(assert (=> d!1592689 (= (lemmaConcatTwoListThenFirstIsPrefix!3315 testedP!110 testedSuffix!70) lt!2040127)))

(declare-fun bs!1181762 () Bool)

(assert (= bs!1181762 d!1592689))

(assert (=> bs!1181762 m!5969766))

(assert (=> bs!1181762 m!5969766))

(declare-fun m!5970172 () Bool)

(assert (=> bs!1181762 m!5970172))

(declare-fun m!5970174 () Bool)

(assert (=> bs!1181762 m!5970174))

(assert (=> b!4946546 d!1592689))

(declare-fun tp!1387578 () Bool)

(declare-fun e!3090838 () Bool)

(declare-fun b!4946843 () Bool)

(declare-fun tp!1387577 () Bool)

(assert (=> b!4946843 (= e!3090838 (and (inv!74235 (left!41572 (c!844068 totalInput!685))) tp!1387577 (inv!74235 (right!41902 (c!844068 totalInput!685))) tp!1387578))))

(declare-fun b!4946845 () Bool)

(declare-fun e!3090839 () Bool)

(declare-fun tp!1387579 () Bool)

(assert (=> b!4946845 (= e!3090839 tp!1387579)))

(declare-fun b!4946844 () Bool)

(declare-fun inv!74243 (IArray!30069) Bool)

(assert (=> b!4946844 (= e!3090838 (and (inv!74243 (xs!18330 (c!844068 totalInput!685))) e!3090839))))

(assert (=> b!4946545 (= tp!1387545 (and (inv!74235 (c!844068 totalInput!685)) e!3090838))))

(assert (= (and b!4946545 ((_ is Node!15004) (c!844068 totalInput!685))) b!4946843))

(assert (= b!4946844 b!4946845))

(assert (= (and b!4946545 ((_ is Leaf!24939) (c!844068 totalInput!685))) b!4946844))

(declare-fun m!5970176 () Bool)

(assert (=> b!4946843 m!5970176))

(declare-fun m!5970178 () Bool)

(assert (=> b!4946843 m!5970178))

(declare-fun m!5970180 () Bool)

(assert (=> b!4946844 m!5970180))

(assert (=> b!4946545 m!5969776))

(declare-fun b!4946850 () Bool)

(declare-fun e!3090842 () Bool)

(declare-fun tp!1387582 () Bool)

(assert (=> b!4946850 (= e!3090842 (and tp_is_empty!36167 tp!1387582))))

(assert (=> b!4946551 (= tp!1387543 e!3090842)))

(assert (= (and b!4946551 ((_ is Cons!56985) (t!367645 testedP!110))) b!4946850))

(declare-fun b!4946851 () Bool)

(declare-fun e!3090843 () Bool)

(declare-fun tp!1387583 () Bool)

(assert (=> b!4946851 (= e!3090843 (and tp_is_empty!36167 tp!1387583))))

(assert (=> b!4946555 (= tp!1387541 e!3090843)))

(assert (= (and b!4946555 ((_ is Cons!56985) (t!367645 testedSuffix!70))) b!4946851))

(declare-fun condSetEmpty!28070 () Bool)

(assert (=> setNonEmpty!28064 (= condSetEmpty!28070 (= setRest!28064 ((as const (Array Context!6254 Bool)) false)))))

(declare-fun setRes!28070 () Bool)

(assert (=> setNonEmpty!28064 (= tp!1387542 setRes!28070)))

(declare-fun setIsEmpty!28070 () Bool)

(assert (=> setIsEmpty!28070 setRes!28070))

(declare-fun tp!1387588 () Bool)

(declare-fun e!3090846 () Bool)

(declare-fun setElem!28070 () Context!6254)

(declare-fun setNonEmpty!28070 () Bool)

(assert (=> setNonEmpty!28070 (= setRes!28070 (and tp!1387588 (inv!74237 setElem!28070) e!3090846))))

(declare-fun setRest!28070 () (InoxSet Context!6254))

(assert (=> setNonEmpty!28070 (= setRest!28064 ((_ map or) (store ((as const (Array Context!6254 Bool)) false) setElem!28070 true) setRest!28070))))

(declare-fun b!4946856 () Bool)

(declare-fun tp!1387589 () Bool)

(assert (=> b!4946856 (= e!3090846 tp!1387589)))

(assert (= (and setNonEmpty!28064 condSetEmpty!28070) setIsEmpty!28070))

(assert (= (and setNonEmpty!28064 (not condSetEmpty!28070)) setNonEmpty!28070))

(assert (= setNonEmpty!28070 b!4946856))

(declare-fun m!5970182 () Bool)

(assert (=> setNonEmpty!28070 m!5970182))

(declare-fun b!4946861 () Bool)

(declare-fun e!3090849 () Bool)

(declare-fun tp!1387594 () Bool)

(declare-fun tp!1387595 () Bool)

(assert (=> b!4946861 (= e!3090849 (and tp!1387594 tp!1387595))))

(assert (=> b!4946547 (= tp!1387544 e!3090849)))

(assert (= (and b!4946547 ((_ is Cons!56986) (exprs!3627 setElem!28064))) b!4946861))

(check-sat (not b!4946819) (not b!4946820) (not b!4946741) (not b!4946577) (not d!1592671) (not b!4946834) (not b!4946856) (not d!1592635) (not b!4946757) (not b!4946611) (not bm!345215) (not b!4946780) (not b!4946545) (not b!4946758) (not b!4946845) (not d!1592669) (not d!1592689) (not b!4946763) (not d!1592557) (not b!4946823) (not b!4946851) (not d!1592577) (not d!1592555) (not b!4946781) tp_is_empty!36167 (not bm!345219) (not d!1592643) (not d!1592657) (not b!4946756) (not d!1592675) (not bm!345216) (not d!1592649) (not b!4946806) (not b!4946576) (not b!4946784) (not b!4946740) (not b!4946764) (not setNonEmpty!28070) (not d!1592677) (not d!1592549) (not d!1592683) (not d!1592653) (not d!1592641) (not b!4946566) (not b!4946719) (not b!4946833) (not d!1592659) (not b!4946861) (not b!4946850) (not b!4946804) (not b!4946844) (not b!4946829) (not b!4946772) (not d!1592625) (not b!4946826) (not d!1592655) (not b!4946777) (not b!4946818) (not d!1592639) (not b!4946612) (not b!4946782) (not b!4946828) (not b!4946830) (not d!1592637) (not d!1592651) (not b!4946776) (not d!1592647) (not b!4946769) (not d!1592559) (not b!4946564) (not b!4946843) (not b!4946832) (not d!1592681) (not b!4946773))
(check-sat)
