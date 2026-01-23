; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209594 () Bool)

(assert start!209594)

(declare-fun b!2159934 () Bool)

(declare-fun e!1381982 () Bool)

(declare-fun tp!673676 () Bool)

(declare-fun tp!673670 () Bool)

(assert (=> b!2159934 (= e!1381982 (and tp!673676 tp!673670))))

(declare-fun b!2159935 () Bool)

(declare-fun res!930655 () Bool)

(declare-fun e!1381976 () Bool)

(assert (=> b!2159935 (=> (not res!930655) (not e!1381976))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12076 0))(
  ( (C!12077 (val!7024 Int)) )
))
(declare-datatypes ((Regex!5965 0))(
  ( (ElementMatch!5965 (c!341866 C!12076)) (Concat!10267 (regOne!12442 Regex!5965) (regTwo!12442 Regex!5965)) (EmptyExpr!5965) (Star!5965 (reg!6294 Regex!5965)) (EmptyLang!5965) (Union!5965 (regOne!12443 Regex!5965) (regTwo!12443 Regex!5965)) )
))
(declare-datatypes ((List!25108 0))(
  ( (Nil!25024) (Cons!25024 (h!30425 Regex!5965) (t!197656 List!25108)) )
))
(declare-datatypes ((Context!3070 0))(
  ( (Context!3071 (exprs!2035 List!25108)) )
))
(declare-fun z!4055 () (InoxSet Context!3070))

(declare-fun r!12534 () Regex!5965)

(declare-datatypes ((List!25109 0))(
  ( (Nil!25025) (Cons!25025 (h!30426 Context!3070) (t!197657 List!25109)) )
))
(declare-fun unfocusZipper!72 (List!25109) Regex!5965)

(declare-fun toList!1148 ((InoxSet Context!3070)) List!25109)

(assert (=> b!2159935 (= res!930655 (= (unfocusZipper!72 (toList!1148 z!4055)) r!12534))))

(declare-fun b!2159936 () Bool)

(declare-fun tp!673672 () Bool)

(assert (=> b!2159936 (= e!1381982 tp!673672)))

(declare-fun b!2159937 () Bool)

(declare-fun e!1381977 () Bool)

(declare-datatypes ((List!25110 0))(
  ( (Nil!25026) (Cons!25026 (h!30427 C!12076) (t!197658 List!25110)) )
))
(declare-datatypes ((IArray!16207 0))(
  ( (IArray!16208 (innerList!8161 List!25110)) )
))
(declare-datatypes ((Conc!8101 0))(
  ( (Node!8101 (left!19262 Conc!8101) (right!19592 Conc!8101) (csize!16432 Int) (cheight!8312 Int)) (Leaf!11851 (xs!11043 IArray!16207) (csize!16433 Int)) (Empty!8101) )
))
(declare-datatypes ((BalanceConc!15964 0))(
  ( (BalanceConc!15965 (c!341867 Conc!8101)) )
))
(declare-fun input!5540 () BalanceConc!15964)

(declare-fun tp!673669 () Bool)

(declare-fun inv!33145 (Conc!8101) Bool)

(assert (=> b!2159937 (= e!1381977 (and (inv!33145 (c!341867 input!5540)) tp!673669))))

(declare-fun b!2159938 () Bool)

(declare-fun e!1381980 () Bool)

(assert (=> b!2159938 (= e!1381976 e!1381980)))

(declare-fun res!930652 () Bool)

(assert (=> b!2159938 (=> (not res!930652) (not e!1381980))))

(declare-fun lt!802880 () List!25110)

(declare-fun lt!802874 () List!25110)

(declare-fun isSuffix!632 (List!25110 List!25110) Bool)

(assert (=> b!2159938 (= res!930652 (isSuffix!632 lt!802880 lt!802874))))

(declare-fun totalInput!977 () BalanceConc!15964)

(declare-fun list!9584 (BalanceConc!15964) List!25110)

(assert (=> b!2159938 (= lt!802874 (list!9584 totalInput!977))))

(assert (=> b!2159938 (= lt!802880 (list!9584 input!5540))))

(declare-fun setIsEmpty!18004 () Bool)

(declare-fun setRes!18004 () Bool)

(assert (=> setIsEmpty!18004 setRes!18004))

(declare-fun b!2159939 () Bool)

(declare-fun e!1381979 () Bool)

(declare-fun tp!673675 () Bool)

(assert (=> b!2159939 (= e!1381979 (and (inv!33145 (c!341867 totalInput!977)) tp!673675))))

(declare-fun b!2159941 () Bool)

(declare-fun tp_is_empty!9537 () Bool)

(assert (=> b!2159941 (= e!1381982 tp_is_empty!9537)))

(declare-fun b!2159942 () Bool)

(declare-fun e!1381978 () Bool)

(declare-fun tp!673671 () Bool)

(assert (=> b!2159942 (= e!1381978 tp!673671)))

(declare-fun b!2159943 () Bool)

(declare-fun e!1381983 () Bool)

(assert (=> b!2159943 (= e!1381983 (not true))))

(declare-fun lt!802873 () Bool)

(declare-fun nullableZipper!246 ((InoxSet Context!3070)) Bool)

(assert (=> b!2159943 (= lt!802873 (nullableZipper!246 z!4055))))

(declare-fun lt!802868 () Int)

(declare-fun isPrefix!2085 (List!25110 List!25110) Bool)

(declare-fun take!179 (List!25110 Int) List!25110)

(assert (=> b!2159943 (isPrefix!2085 (take!179 lt!802874 lt!802868) lt!802874)))

(declare-datatypes ((Unit!38081 0))(
  ( (Unit!38082) )
))
(declare-fun lt!802872 () Unit!38081)

(declare-fun lemmaTakeIsPrefix!2 (List!25110 Int) Unit!38081)

(assert (=> b!2159943 (= lt!802872 (lemmaTakeIsPrefix!2 lt!802874 lt!802868))))

(declare-datatypes ((tuple2!24726 0))(
  ( (tuple2!24727 (_1!14733 List!25110) (_2!14733 List!25110)) )
))
(declare-fun lt!802871 () tuple2!24726)

(declare-fun lt!802878 () List!25110)

(assert (=> b!2159943 (isPrefix!2085 (_1!14733 lt!802871) lt!802878)))

(declare-fun lt!802876 () Unit!38081)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1368 (List!25110 List!25110) Unit!38081)

(assert (=> b!2159943 (= lt!802876 (lemmaConcatTwoListThenFirstIsPrefix!1368 (_1!14733 lt!802871) (_2!14733 lt!802871)))))

(declare-fun lt!802869 () List!25110)

(declare-fun lt!802870 () List!25110)

(assert (=> b!2159943 (isPrefix!2085 lt!802869 lt!802870)))

(declare-fun lt!802875 () Unit!38081)

(declare-fun lt!802879 () List!25110)

(assert (=> b!2159943 (= lt!802875 (lemmaConcatTwoListThenFirstIsPrefix!1368 lt!802869 lt!802879))))

(declare-fun b!2159944 () Bool)

(declare-fun e!1381981 () Bool)

(assert (=> b!2159944 (= e!1381980 e!1381981)))

(declare-fun res!930653 () Bool)

(assert (=> b!2159944 (=> (not res!930653) (not e!1381981))))

(assert (=> b!2159944 (= res!930653 (= lt!802870 lt!802880))))

(declare-fun ++!6322 (List!25110 List!25110) List!25110)

(assert (=> b!2159944 (= lt!802870 (++!6322 lt!802869 lt!802879))))

(declare-datatypes ((tuple2!24728 0))(
  ( (tuple2!24729 (_1!14734 BalanceConc!15964) (_2!14734 BalanceConc!15964)) )
))
(declare-fun lt!802877 () tuple2!24728)

(assert (=> b!2159944 (= lt!802879 (list!9584 (_2!14734 lt!802877)))))

(assert (=> b!2159944 (= lt!802869 (list!9584 (_1!14734 lt!802877)))))

(declare-fun findLongestMatch!519 (Regex!5965 List!25110) tuple2!24726)

(assert (=> b!2159944 (= lt!802871 (findLongestMatch!519 r!12534 lt!802880))))

(declare-fun size!19560 (BalanceConc!15964) Int)

(assert (=> b!2159944 (= lt!802868 (- (size!19560 totalInput!977) (size!19560 input!5540)))))

(declare-fun findLongestMatchZipperSequenceV3!14 ((InoxSet Context!3070) BalanceConc!15964 BalanceConc!15964) tuple2!24728)

(assert (=> b!2159944 (= lt!802877 (findLongestMatchZipperSequenceV3!14 z!4055 input!5540 totalInput!977))))

(declare-fun b!2159940 () Bool)

(assert (=> b!2159940 (= e!1381981 e!1381983)))

(declare-fun res!930651 () Bool)

(assert (=> b!2159940 (=> (not res!930651) (not e!1381983))))

(assert (=> b!2159940 (= res!930651 (= lt!802878 lt!802880))))

(assert (=> b!2159940 (= lt!802878 (++!6322 (_1!14733 lt!802871) (_2!14733 lt!802871)))))

(declare-fun res!930654 () Bool)

(assert (=> start!209594 (=> (not res!930654) (not e!1381976))))

(declare-fun validRegex!2241 (Regex!5965) Bool)

(assert (=> start!209594 (= res!930654 (validRegex!2241 r!12534))))

(assert (=> start!209594 e!1381976))

(assert (=> start!209594 e!1381982))

(declare-fun condSetEmpty!18004 () Bool)

(assert (=> start!209594 (= condSetEmpty!18004 (= z!4055 ((as const (Array Context!3070 Bool)) false)))))

(assert (=> start!209594 setRes!18004))

(declare-fun inv!33146 (BalanceConc!15964) Bool)

(assert (=> start!209594 (and (inv!33146 totalInput!977) e!1381979)))

(assert (=> start!209594 (and (inv!33146 input!5540) e!1381977)))

(declare-fun tp!673668 () Bool)

(declare-fun setNonEmpty!18004 () Bool)

(declare-fun setElem!18004 () Context!3070)

(declare-fun inv!33147 (Context!3070) Bool)

(assert (=> setNonEmpty!18004 (= setRes!18004 (and tp!673668 (inv!33147 setElem!18004) e!1381978))))

(declare-fun setRest!18004 () (InoxSet Context!3070))

(assert (=> setNonEmpty!18004 (= z!4055 ((_ map or) (store ((as const (Array Context!3070 Bool)) false) setElem!18004 true) setRest!18004))))

(declare-fun b!2159945 () Bool)

(declare-fun tp!673673 () Bool)

(declare-fun tp!673674 () Bool)

(assert (=> b!2159945 (= e!1381982 (and tp!673673 tp!673674))))

(assert (= (and start!209594 res!930654) b!2159935))

(assert (= (and b!2159935 res!930655) b!2159938))

(assert (= (and b!2159938 res!930652) b!2159944))

(assert (= (and b!2159944 res!930653) b!2159940))

(assert (= (and b!2159940 res!930651) b!2159943))

(get-info :version)

(assert (= (and start!209594 ((_ is ElementMatch!5965) r!12534)) b!2159941))

(assert (= (and start!209594 ((_ is Concat!10267) r!12534)) b!2159945))

(assert (= (and start!209594 ((_ is Star!5965) r!12534)) b!2159936))

(assert (= (and start!209594 ((_ is Union!5965) r!12534)) b!2159934))

(assert (= (and start!209594 condSetEmpty!18004) setIsEmpty!18004))

(assert (= (and start!209594 (not condSetEmpty!18004)) setNonEmpty!18004))

(assert (= setNonEmpty!18004 b!2159942))

(assert (= start!209594 b!2159939))

(assert (= start!209594 b!2159937))

(declare-fun m!2599693 () Bool)

(assert (=> b!2159943 m!2599693))

(declare-fun m!2599695 () Bool)

(assert (=> b!2159943 m!2599695))

(declare-fun m!2599697 () Bool)

(assert (=> b!2159943 m!2599697))

(declare-fun m!2599699 () Bool)

(assert (=> b!2159943 m!2599699))

(declare-fun m!2599701 () Bool)

(assert (=> b!2159943 m!2599701))

(declare-fun m!2599703 () Bool)

(assert (=> b!2159943 m!2599703))

(declare-fun m!2599705 () Bool)

(assert (=> b!2159943 m!2599705))

(declare-fun m!2599707 () Bool)

(assert (=> b!2159943 m!2599707))

(assert (=> b!2159943 m!2599705))

(declare-fun m!2599709 () Bool)

(assert (=> setNonEmpty!18004 m!2599709))

(declare-fun m!2599711 () Bool)

(assert (=> b!2159940 m!2599711))

(declare-fun m!2599713 () Bool)

(assert (=> b!2159938 m!2599713))

(declare-fun m!2599715 () Bool)

(assert (=> b!2159938 m!2599715))

(declare-fun m!2599717 () Bool)

(assert (=> b!2159938 m!2599717))

(declare-fun m!2599719 () Bool)

(assert (=> b!2159944 m!2599719))

(declare-fun m!2599721 () Bool)

(assert (=> b!2159944 m!2599721))

(declare-fun m!2599723 () Bool)

(assert (=> b!2159944 m!2599723))

(declare-fun m!2599725 () Bool)

(assert (=> b!2159944 m!2599725))

(declare-fun m!2599727 () Bool)

(assert (=> b!2159944 m!2599727))

(declare-fun m!2599729 () Bool)

(assert (=> b!2159944 m!2599729))

(declare-fun m!2599731 () Bool)

(assert (=> b!2159944 m!2599731))

(declare-fun m!2599733 () Bool)

(assert (=> b!2159939 m!2599733))

(declare-fun m!2599735 () Bool)

(assert (=> b!2159937 m!2599735))

(declare-fun m!2599737 () Bool)

(assert (=> start!209594 m!2599737))

(declare-fun m!2599739 () Bool)

(assert (=> start!209594 m!2599739))

(declare-fun m!2599741 () Bool)

(assert (=> start!209594 m!2599741))

(declare-fun m!2599743 () Bool)

(assert (=> b!2159935 m!2599743))

(assert (=> b!2159935 m!2599743))

(declare-fun m!2599745 () Bool)

(assert (=> b!2159935 m!2599745))

(check-sat (not b!2159942) (not b!2159944) tp_is_empty!9537 (not b!2159937) (not b!2159939) (not b!2159938) (not b!2159934) (not b!2159945) (not b!2159935) (not b!2159943) (not setNonEmpty!18004) (not b!2159936) (not start!209594) (not b!2159940))
(check-sat)
