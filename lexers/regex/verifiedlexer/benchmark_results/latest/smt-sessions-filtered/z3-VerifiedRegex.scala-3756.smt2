; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209622 () Bool)

(assert start!209622)

(declare-fun b!2160751 () Bool)

(declare-fun e!1382610 () Bool)

(declare-fun e!1382612 () Bool)

(assert (=> b!2160751 (= e!1382610 e!1382612)))

(declare-fun res!931100 () Bool)

(assert (=> b!2160751 (=> res!931100 e!1382612)))

(declare-fun lt!803800 () Int)

(declare-datatypes ((C!12104 0))(
  ( (C!12105 (val!7038 Int)) )
))
(declare-datatypes ((List!25150 0))(
  ( (Nil!25066) (Cons!25066 (h!30467 C!12104) (t!197698 List!25150)) )
))
(declare-datatypes ((IArray!16235 0))(
  ( (IArray!16236 (innerList!8175 List!25150)) )
))
(declare-datatypes ((Conc!8115 0))(
  ( (Node!8115 (left!19283 Conc!8115) (right!19613 Conc!8115) (csize!16460 Int) (cheight!8326 Int)) (Leaf!11872 (xs!11057 IArray!16235) (csize!16461 Int)) (Empty!8115) )
))
(declare-datatypes ((BalanceConc!15992 0))(
  ( (BalanceConc!15993 (c!341936 Conc!8115)) )
))
(declare-datatypes ((tuple2!24782 0))(
  ( (tuple2!24783 (_1!14761 BalanceConc!15992) (_2!14761 BalanceConc!15992)) )
))
(declare-fun lt!803799 () tuple2!24782)

(declare-fun size!19585 (BalanceConc!15992) Int)

(assert (=> b!2160751 (= res!931100 (<= lt!803800 (size!19585 (_1!14761 lt!803799))))))

(declare-datatypes ((tuple2!24784 0))(
  ( (tuple2!24785 (_1!14762 List!25150) (_2!14762 List!25150)) )
))
(declare-fun lt!803823 () tuple2!24784)

(declare-fun size!19586 (List!25150) Int)

(assert (=> b!2160751 (= lt!803800 (size!19586 (_1!14762 lt!803823)))))

(declare-datatypes ((Regex!5979 0))(
  ( (ElementMatch!5979 (c!341937 C!12104)) (Concat!10281 (regOne!12470 Regex!5979) (regTwo!12470 Regex!5979)) (EmptyExpr!5979) (Star!5979 (reg!6308 Regex!5979)) (EmptyLang!5979) (Union!5979 (regOne!12471 Regex!5979) (regTwo!12471 Regex!5979)) )
))
(declare-fun r!12534 () Regex!5979)

(declare-fun lt!803812 () List!25150)

(declare-fun lt!803822 () Bool)

(declare-fun matchR!2740 (Regex!5979 List!25150) Bool)

(assert (=> b!2160751 (= (matchR!2740 r!12534 lt!803812) lt!803822)))

(declare-datatypes ((Unit!38109 0))(
  ( (Unit!38110) )
))
(declare-fun lt!803814 () Unit!38109)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25151 0))(
  ( (Nil!25067) (Cons!25067 (h!30468 Regex!5979) (t!197699 List!25151)) )
))
(declare-datatypes ((Context!3098 0))(
  ( (Context!3099 (exprs!2049 List!25151)) )
))
(declare-fun z!4055 () (InoxSet Context!3098))

(declare-datatypes ((List!25152 0))(
  ( (Nil!25068) (Cons!25068 (h!30469 Context!3098) (t!197700 List!25152)) )
))
(declare-fun lt!803826 () List!25152)

(declare-fun theoremZipperRegexEquiv!23 ((InoxSet Context!3098) List!25152 Regex!5979 List!25150) Unit!38109)

(assert (=> b!2160751 (= lt!803814 (theoremZipperRegexEquiv!23 z!4055 lt!803826 r!12534 lt!803812))))

(declare-fun lt!803828 () Bool)

(declare-fun matchZipper!107 ((InoxSet Context!3098) List!25150) Bool)

(assert (=> b!2160751 (= lt!803828 (matchZipper!107 z!4055 (_1!14762 lt!803823)))))

(declare-fun lt!803815 () Unit!38109)

(assert (=> b!2160751 (= lt!803815 (theoremZipperRegexEquiv!23 z!4055 lt!803826 r!12534 (_1!14762 lt!803823)))))

(declare-fun b!2160752 () Bool)

(declare-fun e!1382619 () Int)

(declare-fun lt!803819 () Int)

(assert (=> b!2160752 (= e!1382619 (- lt!803819 1))))

(declare-fun b!2160753 () Bool)

(declare-fun e!1382618 () Bool)

(assert (=> b!2160753 (= e!1382612 e!1382618)))

(declare-fun res!931104 () Bool)

(assert (=> b!2160753 (=> res!931104 e!1382618)))

(declare-fun lt!803813 () List!25150)

(declare-fun lt!803804 () List!25150)

(assert (=> b!2160753 (= res!931104 (not (= lt!803813 lt!803804)))))

(declare-fun lt!803807 () List!25150)

(declare-fun take!193 (List!25150 Int) List!25150)

(assert (=> b!2160753 (= lt!803807 (take!193 lt!803813 lt!803800))))

(declare-fun lt!803801 () List!25150)

(declare-fun drop!1202 (List!25150 Int) List!25150)

(assert (=> b!2160753 (= lt!803813 (drop!1202 lt!803801 lt!803819))))

(declare-fun b!2160754 () Bool)

(declare-fun e!1382613 () Bool)

(declare-fun tp!674050 () Bool)

(assert (=> b!2160754 (= e!1382613 tp!674050)))

(declare-fun b!2160755 () Bool)

(declare-fun e!1382611 () Bool)

(assert (=> b!2160755 (= e!1382611 true)))

(declare-fun lt!803821 () Bool)

(assert (=> b!2160755 (= lt!803821 (matchZipper!107 z!4055 lt!803807))))

(declare-fun tp!674048 () Bool)

(declare-fun e!1382617 () Bool)

(declare-fun setElem!18046 () Context!3098)

(declare-fun setRes!18046 () Bool)

(declare-fun setNonEmpty!18046 () Bool)

(declare-fun inv!33208 (Context!3098) Bool)

(assert (=> setNonEmpty!18046 (= setRes!18046 (and tp!674048 (inv!33208 setElem!18046) e!1382617))))

(declare-fun setRest!18046 () (InoxSet Context!3098))

(assert (=> setNonEmpty!18046 (= z!4055 ((_ map or) (store ((as const (Array Context!3098 Bool)) false) setElem!18046 true) setRest!18046))))

(declare-fun b!2160757 () Bool)

(declare-fun tp_is_empty!9565 () Bool)

(assert (=> b!2160757 (= e!1382613 tp_is_empty!9565)))

(declare-fun b!2160758 () Bool)

(declare-fun tp!674046 () Bool)

(assert (=> b!2160758 (= e!1382617 tp!674046)))

(declare-fun b!2160759 () Bool)

(declare-fun e!1382604 () Bool)

(declare-fun lt!803818 () tuple2!24784)

(assert (=> b!2160759 (= e!1382604 (matchR!2740 r!12534 (_1!14762 lt!803818)))))

(declare-fun b!2160760 () Bool)

(declare-fun e!1382616 () Bool)

(declare-fun isEmpty!14373 (BalanceConc!15992) Bool)

(assert (=> b!2160760 (= e!1382616 (not (isEmpty!14373 (_1!14761 lt!803799))))))

(declare-fun setIsEmpty!18046 () Bool)

(assert (=> setIsEmpty!18046 setRes!18046))

(declare-fun b!2160761 () Bool)

(assert (=> b!2160761 (= e!1382619 (- 1))))

(declare-fun b!2160762 () Bool)

(declare-fun e!1382607 () Bool)

(declare-fun totalInput!977 () BalanceConc!15992)

(declare-fun tp!674054 () Bool)

(declare-fun inv!33209 (Conc!8115) Bool)

(assert (=> b!2160762 (= e!1382607 (and (inv!33209 (c!341936 totalInput!977)) tp!674054))))

(declare-fun b!2160763 () Bool)

(declare-fun tp!674049 () Bool)

(declare-fun tp!674052 () Bool)

(assert (=> b!2160763 (= e!1382613 (and tp!674049 tp!674052))))

(declare-fun b!2160764 () Bool)

(declare-fun e!1382605 () Bool)

(declare-fun e!1382609 () Bool)

(assert (=> b!2160764 (= e!1382605 (not e!1382609))))

(declare-fun res!931101 () Bool)

(assert (=> b!2160764 (=> res!931101 e!1382609)))

(assert (=> b!2160764 (= res!931101 e!1382616)))

(declare-fun res!931099 () Bool)

(assert (=> b!2160764 (=> (not res!931099) (not e!1382616))))

(assert (=> b!2160764 (= res!931099 (not lt!803822))))

(assert (=> b!2160764 (= lt!803822 (matchZipper!107 z!4055 lt!803812))))

(assert (=> b!2160764 e!1382604))

(declare-fun res!931102 () Bool)

(assert (=> b!2160764 (=> res!931102 e!1382604)))

(declare-fun isEmpty!14374 (List!25150) Bool)

(assert (=> b!2160764 (= res!931102 (isEmpty!14374 (_1!14762 lt!803818)))))

(declare-fun findLongestMatchInner!608 (Regex!5979 List!25150 Int List!25150 List!25150 Int) tuple2!24784)

(assert (=> b!2160764 (= lt!803818 (findLongestMatchInner!608 r!12534 Nil!25066 (size!19586 Nil!25066) lt!803804 lt!803804 (size!19586 lt!803804)))))

(declare-fun lt!803806 () Unit!38109)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!589 (Regex!5979 List!25150) Unit!38109)

(assert (=> b!2160764 (= lt!803806 (longestMatchIsAcceptedByMatchOrIsEmpty!589 r!12534 lt!803804))))

(declare-fun e!1382614 () Bool)

(assert (=> b!2160764 e!1382614))

(declare-fun res!931095 () Bool)

(assert (=> b!2160764 (=> res!931095 e!1382614)))

(declare-fun lt!803816 () Int)

(assert (=> b!2160764 (= res!931095 (<= lt!803816 0))))

(declare-fun lt!803802 () Int)

(declare-fun lt!803811 () Int)

(declare-fun furthestNullablePosition!166 ((InoxSet Context!3098) Int BalanceConc!15992 Int Int) Int)

(assert (=> b!2160764 (= lt!803816 (+ 1 (- (furthestNullablePosition!166 z!4055 lt!803819 totalInput!977 lt!803811 lt!803802) lt!803819)))))

(declare-fun lt!803817 () Unit!38109)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!14 ((InoxSet Context!3098) Int BalanceConc!15992 Int) Unit!38109)

(assert (=> b!2160764 (= lt!803817 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!14 z!4055 lt!803819 totalInput!977 lt!803802))))

(assert (=> b!2160764 (= lt!803802 e!1382619)))

(declare-fun c!341935 () Bool)

(declare-fun nullableZipper!260 ((InoxSet Context!3098)) Bool)

(assert (=> b!2160764 (= c!341935 (nullableZipper!260 z!4055))))

(declare-fun isPrefix!2099 (List!25150 List!25150) Bool)

(assert (=> b!2160764 (isPrefix!2099 (take!193 lt!803801 lt!803819) lt!803801)))

(declare-fun lt!803820 () Unit!38109)

(declare-fun lemmaTakeIsPrefix!16 (List!25150 Int) Unit!38109)

(assert (=> b!2160764 (= lt!803820 (lemmaTakeIsPrefix!16 lt!803801 lt!803819))))

(declare-fun lt!803805 () List!25150)

(assert (=> b!2160764 (isPrefix!2099 (_1!14762 lt!803823) lt!803805)))

(declare-fun lt!803803 () Unit!38109)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1382 (List!25150 List!25150) Unit!38109)

(assert (=> b!2160764 (= lt!803803 (lemmaConcatTwoListThenFirstIsPrefix!1382 (_1!14762 lt!803823) (_2!14762 lt!803823)))))

(declare-fun lt!803825 () List!25150)

(assert (=> b!2160764 (isPrefix!2099 lt!803812 lt!803825)))

(declare-fun lt!803824 () Unit!38109)

(declare-fun lt!803809 () List!25150)

(assert (=> b!2160764 (= lt!803824 (lemmaConcatTwoListThenFirstIsPrefix!1382 lt!803812 lt!803809))))

(declare-fun b!2160765 () Bool)

(assert (=> b!2160765 (= e!1382609 e!1382610)))

(declare-fun res!931097 () Bool)

(assert (=> b!2160765 (=> res!931097 e!1382610)))

(declare-fun e!1382606 () Bool)

(assert (=> b!2160765 (= res!931097 e!1382606)))

(declare-fun res!931096 () Bool)

(assert (=> b!2160765 (=> (not res!931096) (not e!1382606))))

(assert (=> b!2160765 (= res!931096 (not lt!803828))))

(assert (=> b!2160765 (= lt!803828 (matchR!2740 r!12534 (_1!14762 lt!803823)))))

(declare-fun b!2160766 () Bool)

(declare-fun e!1382603 () Bool)

(declare-fun e!1382602 () Bool)

(assert (=> b!2160766 (= e!1382603 e!1382602)))

(declare-fun res!931098 () Bool)

(assert (=> b!2160766 (=> (not res!931098) (not e!1382602))))

(declare-fun unfocusZipper!86 (List!25152) Regex!5979)

(assert (=> b!2160766 (= res!931098 (= (unfocusZipper!86 lt!803826) r!12534))))

(declare-fun toList!1162 ((InoxSet Context!3098)) List!25152)

(assert (=> b!2160766 (= lt!803826 (toList!1162 z!4055))))

(declare-fun b!2160767 () Bool)

(assert (=> b!2160767 (= e!1382618 e!1382611)))

(declare-fun res!931094 () Bool)

(assert (=> b!2160767 (=> res!931094 e!1382611)))

(declare-fun lt!803808 () List!25150)

(assert (=> b!2160767 (= res!931094 (or (not (= lt!803808 (_1!14762 lt!803823))) (< lt!803819 0) (> lt!803819 lt!803811) (< lt!803800 0) (> lt!803800 (- lt!803811 lt!803819))))))

(assert (=> b!2160767 (= lt!803807 (_1!14762 lt!803823))))

(declare-fun lt!803810 () Unit!38109)

(declare-fun lemmaIsPrefixSameLengthThenSameList!331 (List!25150 List!25150 List!25150) Unit!38109)

(assert (=> b!2160767 (= lt!803810 (lemmaIsPrefixSameLengthThenSameList!331 lt!803807 (_1!14762 lt!803823) lt!803804))))

(assert (=> b!2160767 (isPrefix!2099 lt!803808 lt!803804)))

(assert (=> b!2160767 (= lt!803808 (take!193 lt!803804 lt!803800))))

(declare-fun lt!803827 () Unit!38109)

(assert (=> b!2160767 (= lt!803827 (lemmaTakeIsPrefix!16 lt!803804 lt!803800))))

(declare-fun b!2160768 () Bool)

(declare-fun e!1382615 () Bool)

(declare-fun e!1382601 () Bool)

(assert (=> b!2160768 (= e!1382615 e!1382601)))

(declare-fun res!931105 () Bool)

(assert (=> b!2160768 (=> (not res!931105) (not e!1382601))))

(assert (=> b!2160768 (= res!931105 (= lt!803825 lt!803804))))

(declare-fun ++!6336 (List!25150 List!25150) List!25150)

(assert (=> b!2160768 (= lt!803825 (++!6336 lt!803812 lt!803809))))

(declare-fun list!9598 (BalanceConc!15992) List!25150)

(assert (=> b!2160768 (= lt!803809 (list!9598 (_2!14761 lt!803799)))))

(assert (=> b!2160768 (= lt!803812 (list!9598 (_1!14761 lt!803799)))))

(declare-fun findLongestMatch!533 (Regex!5979 List!25150) tuple2!24784)

(assert (=> b!2160768 (= lt!803823 (findLongestMatch!533 r!12534 lt!803804))))

(declare-fun input!5540 () BalanceConc!15992)

(assert (=> b!2160768 (= lt!803819 (- lt!803811 (size!19585 input!5540)))))

(assert (=> b!2160768 (= lt!803811 (size!19585 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!28 ((InoxSet Context!3098) BalanceConc!15992 BalanceConc!15992) tuple2!24782)

(assert (=> b!2160768 (= lt!803799 (findLongestMatchZipperSequenceV3!28 z!4055 input!5540 totalInput!977))))

(declare-fun b!2160769 () Bool)

(assert (=> b!2160769 (= e!1382606 (not (isEmpty!14374 (_1!14762 lt!803823))))))

(declare-fun b!2160770 () Bool)

(assert (=> b!2160770 (= e!1382602 e!1382615)))

(declare-fun res!931093 () Bool)

(assert (=> b!2160770 (=> (not res!931093) (not e!1382615))))

(declare-fun isSuffix!646 (List!25150 List!25150) Bool)

(assert (=> b!2160770 (= res!931093 (isSuffix!646 lt!803804 lt!803801))))

(assert (=> b!2160770 (= lt!803801 (list!9598 totalInput!977))))

(assert (=> b!2160770 (= lt!803804 (list!9598 input!5540))))

(declare-fun b!2160771 () Bool)

(declare-fun tp!674051 () Bool)

(declare-fun tp!674053 () Bool)

(assert (=> b!2160771 (= e!1382613 (and tp!674051 tp!674053))))

(declare-fun b!2160772 () Bool)

(assert (=> b!2160772 (= e!1382601 e!1382605)))

(declare-fun res!931092 () Bool)

(assert (=> b!2160772 (=> (not res!931092) (not e!1382605))))

(assert (=> b!2160772 (= res!931092 (= lt!803805 lt!803804))))

(assert (=> b!2160772 (= lt!803805 (++!6336 (_1!14762 lt!803823) (_2!14762 lt!803823)))))

(declare-fun b!2160773 () Bool)

(declare-fun e!1382608 () Bool)

(declare-fun tp!674047 () Bool)

(assert (=> b!2160773 (= e!1382608 (and (inv!33209 (c!341936 input!5540)) tp!674047))))

(declare-fun res!931103 () Bool)

(assert (=> start!209622 (=> (not res!931103) (not e!1382603))))

(declare-fun validRegex!2255 (Regex!5979) Bool)

(assert (=> start!209622 (= res!931103 (validRegex!2255 r!12534))))

(assert (=> start!209622 e!1382603))

(assert (=> start!209622 e!1382613))

(declare-fun inv!33210 (BalanceConc!15992) Bool)

(assert (=> start!209622 (and (inv!33210 totalInput!977) e!1382607)))

(assert (=> start!209622 (and (inv!33210 input!5540) e!1382608)))

(declare-fun condSetEmpty!18046 () Bool)

(assert (=> start!209622 (= condSetEmpty!18046 (= z!4055 ((as const (Array Context!3098 Bool)) false)))))

(assert (=> start!209622 setRes!18046))

(declare-fun b!2160756 () Bool)

(assert (=> b!2160756 (= e!1382614 (matchZipper!107 z!4055 (take!193 (drop!1202 lt!803801 lt!803819) lt!803816)))))

(assert (= (and start!209622 res!931103) b!2160766))

(assert (= (and b!2160766 res!931098) b!2160770))

(assert (= (and b!2160770 res!931093) b!2160768))

(assert (= (and b!2160768 res!931105) b!2160772))

(assert (= (and b!2160772 res!931092) b!2160764))

(assert (= (and b!2160764 c!341935) b!2160752))

(assert (= (and b!2160764 (not c!341935)) b!2160761))

(assert (= (and b!2160764 (not res!931095)) b!2160756))

(assert (= (and b!2160764 (not res!931102)) b!2160759))

(assert (= (and b!2160764 res!931099) b!2160760))

(assert (= (and b!2160764 (not res!931101)) b!2160765))

(assert (= (and b!2160765 res!931096) b!2160769))

(assert (= (and b!2160765 (not res!931097)) b!2160751))

(assert (= (and b!2160751 (not res!931100)) b!2160753))

(assert (= (and b!2160753 (not res!931104)) b!2160767))

(assert (= (and b!2160767 (not res!931094)) b!2160755))

(get-info :version)

(assert (= (and start!209622 ((_ is ElementMatch!5979) r!12534)) b!2160757))

(assert (= (and start!209622 ((_ is Concat!10281) r!12534)) b!2160763))

(assert (= (and start!209622 ((_ is Star!5979) r!12534)) b!2160754))

(assert (= (and start!209622 ((_ is Union!5979) r!12534)) b!2160771))

(assert (= start!209622 b!2160762))

(assert (= start!209622 b!2160773))

(assert (= (and start!209622 condSetEmpty!18046) setIsEmpty!18046))

(assert (= (and start!209622 (not condSetEmpty!18046)) setNonEmpty!18046))

(assert (= setNonEmpty!18046 b!2160758))

(declare-fun m!2600899 () Bool)

(assert (=> b!2160764 m!2600899))

(declare-fun m!2600901 () Bool)

(assert (=> b!2160764 m!2600901))

(declare-fun m!2600903 () Bool)

(assert (=> b!2160764 m!2600903))

(declare-fun m!2600905 () Bool)

(assert (=> b!2160764 m!2600905))

(declare-fun m!2600907 () Bool)

(assert (=> b!2160764 m!2600907))

(declare-fun m!2600909 () Bool)

(assert (=> b!2160764 m!2600909))

(declare-fun m!2600911 () Bool)

(assert (=> b!2160764 m!2600911))

(declare-fun m!2600913 () Bool)

(assert (=> b!2160764 m!2600913))

(declare-fun m!2600915 () Bool)

(assert (=> b!2160764 m!2600915))

(declare-fun m!2600917 () Bool)

(assert (=> b!2160764 m!2600917))

(assert (=> b!2160764 m!2600903))

(declare-fun m!2600919 () Bool)

(assert (=> b!2160764 m!2600919))

(assert (=> b!2160764 m!2600907))

(declare-fun m!2600921 () Bool)

(assert (=> b!2160764 m!2600921))

(assert (=> b!2160764 m!2600917))

(declare-fun m!2600923 () Bool)

(assert (=> b!2160764 m!2600923))

(declare-fun m!2600925 () Bool)

(assert (=> b!2160764 m!2600925))

(declare-fun m!2600927 () Bool)

(assert (=> b!2160764 m!2600927))

(declare-fun m!2600929 () Bool)

(assert (=> b!2160764 m!2600929))

(declare-fun m!2600931 () Bool)

(assert (=> b!2160769 m!2600931))

(declare-fun m!2600933 () Bool)

(assert (=> b!2160759 m!2600933))

(declare-fun m!2600935 () Bool)

(assert (=> b!2160766 m!2600935))

(declare-fun m!2600937 () Bool)

(assert (=> b!2160766 m!2600937))

(declare-fun m!2600939 () Bool)

(assert (=> b!2160760 m!2600939))

(declare-fun m!2600941 () Bool)

(assert (=> b!2160767 m!2600941))

(declare-fun m!2600943 () Bool)

(assert (=> b!2160767 m!2600943))

(declare-fun m!2600945 () Bool)

(assert (=> b!2160767 m!2600945))

(declare-fun m!2600947 () Bool)

(assert (=> b!2160767 m!2600947))

(declare-fun m!2600949 () Bool)

(assert (=> setNonEmpty!18046 m!2600949))

(declare-fun m!2600951 () Bool)

(assert (=> b!2160756 m!2600951))

(assert (=> b!2160756 m!2600951))

(declare-fun m!2600953 () Bool)

(assert (=> b!2160756 m!2600953))

(assert (=> b!2160756 m!2600953))

(declare-fun m!2600955 () Bool)

(assert (=> b!2160756 m!2600955))

(declare-fun m!2600957 () Bool)

(assert (=> b!2160772 m!2600957))

(declare-fun m!2600959 () Bool)

(assert (=> b!2160753 m!2600959))

(assert (=> b!2160753 m!2600951))

(declare-fun m!2600961 () Bool)

(assert (=> b!2160773 m!2600961))

(declare-fun m!2600963 () Bool)

(assert (=> start!209622 m!2600963))

(declare-fun m!2600965 () Bool)

(assert (=> start!209622 m!2600965))

(declare-fun m!2600967 () Bool)

(assert (=> start!209622 m!2600967))

(declare-fun m!2600969 () Bool)

(assert (=> b!2160755 m!2600969))

(declare-fun m!2600971 () Bool)

(assert (=> b!2160770 m!2600971))

(declare-fun m!2600973 () Bool)

(assert (=> b!2160770 m!2600973))

(declare-fun m!2600975 () Bool)

(assert (=> b!2160770 m!2600975))

(declare-fun m!2600977 () Bool)

(assert (=> b!2160765 m!2600977))

(declare-fun m!2600979 () Bool)

(assert (=> b!2160751 m!2600979))

(declare-fun m!2600981 () Bool)

(assert (=> b!2160751 m!2600981))

(declare-fun m!2600983 () Bool)

(assert (=> b!2160751 m!2600983))

(declare-fun m!2600985 () Bool)

(assert (=> b!2160751 m!2600985))

(declare-fun m!2600987 () Bool)

(assert (=> b!2160751 m!2600987))

(declare-fun m!2600989 () Bool)

(assert (=> b!2160751 m!2600989))

(declare-fun m!2600991 () Bool)

(assert (=> b!2160768 m!2600991))

(declare-fun m!2600993 () Bool)

(assert (=> b!2160768 m!2600993))

(declare-fun m!2600995 () Bool)

(assert (=> b!2160768 m!2600995))

(declare-fun m!2600997 () Bool)

(assert (=> b!2160768 m!2600997))

(declare-fun m!2600999 () Bool)

(assert (=> b!2160768 m!2600999))

(declare-fun m!2601001 () Bool)

(assert (=> b!2160768 m!2601001))

(declare-fun m!2601003 () Bool)

(assert (=> b!2160768 m!2601003))

(declare-fun m!2601005 () Bool)

(assert (=> b!2160762 m!2601005))

(check-sat (not b!2160756) (not b!2160765) (not b!2160772) (not b!2160771) (not b!2160768) (not setNonEmpty!18046) (not b!2160769) (not b!2160755) (not b!2160751) (not b!2160766) (not b!2160773) (not b!2160759) (not b!2160760) (not b!2160754) (not b!2160763) (not b!2160758) (not b!2160764) (not b!2160762) (not start!209622) (not b!2160767) (not b!2160753) (not b!2160770) tp_is_empty!9565)
(check-sat)
