; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209590 () Bool)

(assert start!209590)

(declare-fun b!2159862 () Bool)

(declare-fun e!1381935 () Bool)

(declare-datatypes ((C!12072 0))(
  ( (C!12073 (val!7022 Int)) )
))
(declare-datatypes ((List!25102 0))(
  ( (Nil!25018) (Cons!25018 (h!30419 C!12072) (t!197650 List!25102)) )
))
(declare-datatypes ((IArray!16203 0))(
  ( (IArray!16204 (innerList!8159 List!25102)) )
))
(declare-datatypes ((Conc!8099 0))(
  ( (Node!8099 (left!19259 Conc!8099) (right!19589 Conc!8099) (csize!16428 Int) (cheight!8310 Int)) (Leaf!11848 (xs!11041 IArray!16203) (csize!16429 Int)) (Empty!8099) )
))
(declare-datatypes ((BalanceConc!15960 0))(
  ( (BalanceConc!15961 (c!341862 Conc!8099)) )
))
(declare-fun totalInput!977 () BalanceConc!15960)

(declare-fun tp!673622 () Bool)

(declare-fun inv!33136 (Conc!8099) Bool)

(assert (=> b!2159862 (= e!1381935 (and (inv!33136 (c!341862 totalInput!977)) tp!673622))))

(declare-fun b!2159863 () Bool)

(declare-fun e!1381931 () Bool)

(declare-fun e!1381932 () Bool)

(assert (=> b!2159863 (= e!1381931 e!1381932)))

(declare-fun res!930623 () Bool)

(assert (=> b!2159863 (=> (not res!930623) (not e!1381932))))

(declare-fun lt!802795 () List!25102)

(declare-fun lt!802796 () List!25102)

(assert (=> b!2159863 (= res!930623 (= lt!802795 lt!802796))))

(declare-fun lt!802794 () List!25102)

(declare-fun lt!802797 () List!25102)

(declare-fun ++!6320 (List!25102 List!25102) List!25102)

(assert (=> b!2159863 (= lt!802795 (++!6320 lt!802794 lt!802797))))

(declare-datatypes ((tuple2!24718 0))(
  ( (tuple2!24719 (_1!14729 BalanceConc!15960) (_2!14729 BalanceConc!15960)) )
))
(declare-fun lt!802792 () tuple2!24718)

(declare-fun list!9582 (BalanceConc!15960) List!25102)

(assert (=> b!2159863 (= lt!802797 (list!9582 (_2!14729 lt!802792)))))

(assert (=> b!2159863 (= lt!802794 (list!9582 (_1!14729 lt!802792)))))

(declare-datatypes ((tuple2!24720 0))(
  ( (tuple2!24721 (_1!14730 List!25102) (_2!14730 List!25102)) )
))
(declare-fun lt!802801 () tuple2!24720)

(declare-datatypes ((Regex!5963 0))(
  ( (ElementMatch!5963 (c!341863 C!12072)) (Concat!10265 (regOne!12438 Regex!5963) (regTwo!12438 Regex!5963)) (EmptyExpr!5963) (Star!5963 (reg!6292 Regex!5963)) (EmptyLang!5963) (Union!5963 (regOne!12439 Regex!5963) (regTwo!12439 Regex!5963)) )
))
(declare-fun r!12534 () Regex!5963)

(declare-fun findLongestMatch!517 (Regex!5963 List!25102) tuple2!24720)

(assert (=> b!2159863 (= lt!802801 (findLongestMatch!517 r!12534 lt!802796))))

(declare-fun lt!802798 () Int)

(declare-fun input!5540 () BalanceConc!15960)

(declare-fun size!19558 (BalanceConc!15960) Int)

(assert (=> b!2159863 (= lt!802798 (size!19558 input!5540))))

(declare-fun lt!802802 () Int)

(assert (=> b!2159863 (= lt!802802 (size!19558 totalInput!977))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25103 0))(
  ( (Nil!25019) (Cons!25019 (h!30420 Regex!5963) (t!197651 List!25103)) )
))
(declare-datatypes ((Context!3066 0))(
  ( (Context!3067 (exprs!2033 List!25103)) )
))
(declare-fun z!4055 () (InoxSet Context!3066))

(declare-fun findLongestMatchZipperSequenceV3!12 ((InoxSet Context!3066) BalanceConc!15960 BalanceConc!15960) tuple2!24718)

(assert (=> b!2159863 (= lt!802792 (findLongestMatchZipperSequenceV3!12 z!4055 input!5540 totalInput!977))))

(declare-fun setElem!17998 () Context!3066)

(declare-fun tp!673619 () Bool)

(declare-fun setRes!17998 () Bool)

(declare-fun setNonEmpty!17998 () Bool)

(declare-fun e!1381928 () Bool)

(declare-fun inv!33137 (Context!3066) Bool)

(assert (=> setNonEmpty!17998 (= setRes!17998 (and tp!673619 (inv!33137 setElem!17998) e!1381928))))

(declare-fun setRest!17998 () (InoxSet Context!3066))

(assert (=> setNonEmpty!17998 (= z!4055 ((_ map or) (store ((as const (Array Context!3066 Bool)) false) setElem!17998 true) setRest!17998))))

(declare-fun b!2159864 () Bool)

(declare-fun e!1381929 () Bool)

(declare-fun tp!673621 () Bool)

(declare-fun tp!673617 () Bool)

(assert (=> b!2159864 (= e!1381929 (and tp!673621 tp!673617))))

(declare-fun setIsEmpty!17998 () Bool)

(assert (=> setIsEmpty!17998 setRes!17998))

(declare-fun b!2159865 () Bool)

(declare-fun e!1381933 () Bool)

(assert (=> b!2159865 (= e!1381932 e!1381933)))

(declare-fun res!930624 () Bool)

(assert (=> b!2159865 (=> (not res!930624) (not e!1381933))))

(declare-fun lt!802800 () List!25102)

(assert (=> b!2159865 (= res!930624 (= lt!802800 lt!802796))))

(assert (=> b!2159865 (= lt!802800 (++!6320 (_1!14730 lt!802801) (_2!14730 lt!802801)))))

(declare-fun b!2159866 () Bool)

(declare-fun tp_is_empty!9533 () Bool)

(assert (=> b!2159866 (= e!1381929 tp_is_empty!9533)))

(declare-fun b!2159867 () Bool)

(declare-fun tp!673618 () Bool)

(assert (=> b!2159867 (= e!1381929 tp!673618)))

(declare-fun res!930621 () Bool)

(declare-fun e!1381930 () Bool)

(assert (=> start!209590 (=> (not res!930621) (not e!1381930))))

(declare-fun validRegex!2239 (Regex!5963) Bool)

(assert (=> start!209590 (= res!930621 (validRegex!2239 r!12534))))

(assert (=> start!209590 e!1381930))

(assert (=> start!209590 e!1381929))

(declare-fun condSetEmpty!17998 () Bool)

(assert (=> start!209590 (= condSetEmpty!17998 (= z!4055 ((as const (Array Context!3066 Bool)) false)))))

(assert (=> start!209590 setRes!17998))

(declare-fun inv!33138 (BalanceConc!15960) Bool)

(assert (=> start!209590 (and (inv!33138 totalInput!977) e!1381935)))

(declare-fun e!1381934 () Bool)

(assert (=> start!209590 (and (inv!33138 input!5540) e!1381934)))

(declare-fun b!2159868 () Bool)

(assert (=> b!2159868 (= e!1381930 e!1381931)))

(declare-fun res!930625 () Bool)

(assert (=> b!2159868 (=> (not res!930625) (not e!1381931))))

(declare-fun isSuffix!630 (List!25102 List!25102) Bool)

(assert (=> b!2159868 (= res!930625 (isSuffix!630 lt!802796 (list!9582 totalInput!977)))))

(assert (=> b!2159868 (= lt!802796 (list!9582 input!5540))))

(declare-fun b!2159869 () Bool)

(declare-fun res!930622 () Bool)

(assert (=> b!2159869 (=> (not res!930622) (not e!1381930))))

(declare-datatypes ((List!25104 0))(
  ( (Nil!25020) (Cons!25020 (h!30421 Context!3066) (t!197652 List!25104)) )
))
(declare-fun unfocusZipper!70 (List!25104) Regex!5963)

(declare-fun toList!1146 ((InoxSet Context!3066)) List!25104)

(assert (=> b!2159869 (= res!930622 (= (unfocusZipper!70 (toList!1146 z!4055)) r!12534))))

(declare-fun b!2159870 () Bool)

(declare-fun tp!673614 () Bool)

(assert (=> b!2159870 (= e!1381928 tp!673614)))

(declare-fun b!2159871 () Bool)

(declare-fun tp!673620 () Bool)

(assert (=> b!2159871 (= e!1381934 (and (inv!33136 (c!341862 input!5540)) tp!673620))))

(declare-fun b!2159872 () Bool)

(assert (=> b!2159872 (= e!1381933 (not true))))

(declare-fun isPrefix!2083 (List!25102 List!25102) Bool)

(assert (=> b!2159872 (isPrefix!2083 (_1!14730 lt!802801) lt!802800)))

(declare-datatypes ((Unit!38077 0))(
  ( (Unit!38078) )
))
(declare-fun lt!802793 () Unit!38077)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1366 (List!25102 List!25102) Unit!38077)

(assert (=> b!2159872 (= lt!802793 (lemmaConcatTwoListThenFirstIsPrefix!1366 (_1!14730 lt!802801) (_2!14730 lt!802801)))))

(assert (=> b!2159872 (isPrefix!2083 lt!802794 lt!802795)))

(declare-fun lt!802799 () Unit!38077)

(assert (=> b!2159872 (= lt!802799 (lemmaConcatTwoListThenFirstIsPrefix!1366 lt!802794 lt!802797))))

(declare-fun b!2159873 () Bool)

(declare-fun tp!673615 () Bool)

(declare-fun tp!673616 () Bool)

(assert (=> b!2159873 (= e!1381929 (and tp!673615 tp!673616))))

(assert (= (and start!209590 res!930621) b!2159869))

(assert (= (and b!2159869 res!930622) b!2159868))

(assert (= (and b!2159868 res!930625) b!2159863))

(assert (= (and b!2159863 res!930623) b!2159865))

(assert (= (and b!2159865 res!930624) b!2159872))

(get-info :version)

(assert (= (and start!209590 ((_ is ElementMatch!5963) r!12534)) b!2159866))

(assert (= (and start!209590 ((_ is Concat!10265) r!12534)) b!2159873))

(assert (= (and start!209590 ((_ is Star!5963) r!12534)) b!2159867))

(assert (= (and start!209590 ((_ is Union!5963) r!12534)) b!2159864))

(assert (= (and start!209590 condSetEmpty!17998) setIsEmpty!17998))

(assert (= (and start!209590 (not condSetEmpty!17998)) setNonEmpty!17998))

(assert (= setNonEmpty!17998 b!2159870))

(assert (= start!209590 b!2159862))

(assert (= start!209590 b!2159871))

(declare-fun m!2599593 () Bool)

(assert (=> start!209590 m!2599593))

(declare-fun m!2599595 () Bool)

(assert (=> start!209590 m!2599595))

(declare-fun m!2599597 () Bool)

(assert (=> start!209590 m!2599597))

(declare-fun m!2599599 () Bool)

(assert (=> b!2159869 m!2599599))

(assert (=> b!2159869 m!2599599))

(declare-fun m!2599601 () Bool)

(assert (=> b!2159869 m!2599601))

(declare-fun m!2599603 () Bool)

(assert (=> b!2159872 m!2599603))

(declare-fun m!2599605 () Bool)

(assert (=> b!2159872 m!2599605))

(declare-fun m!2599607 () Bool)

(assert (=> b!2159872 m!2599607))

(declare-fun m!2599609 () Bool)

(assert (=> b!2159872 m!2599609))

(declare-fun m!2599611 () Bool)

(assert (=> b!2159863 m!2599611))

(declare-fun m!2599613 () Bool)

(assert (=> b!2159863 m!2599613))

(declare-fun m!2599615 () Bool)

(assert (=> b!2159863 m!2599615))

(declare-fun m!2599617 () Bool)

(assert (=> b!2159863 m!2599617))

(declare-fun m!2599619 () Bool)

(assert (=> b!2159863 m!2599619))

(declare-fun m!2599621 () Bool)

(assert (=> b!2159863 m!2599621))

(declare-fun m!2599623 () Bool)

(assert (=> b!2159863 m!2599623))

(declare-fun m!2599625 () Bool)

(assert (=> b!2159871 m!2599625))

(declare-fun m!2599627 () Bool)

(assert (=> b!2159865 m!2599627))

(declare-fun m!2599629 () Bool)

(assert (=> setNonEmpty!17998 m!2599629))

(declare-fun m!2599631 () Bool)

(assert (=> b!2159862 m!2599631))

(declare-fun m!2599633 () Bool)

(assert (=> b!2159868 m!2599633))

(assert (=> b!2159868 m!2599633))

(declare-fun m!2599635 () Bool)

(assert (=> b!2159868 m!2599635))

(declare-fun m!2599637 () Bool)

(assert (=> b!2159868 m!2599637))

(check-sat (not b!2159871) (not b!2159873) (not b!2159867) (not b!2159865) (not b!2159863) (not b!2159862) (not b!2159868) (not b!2159872) (not b!2159869) (not b!2159870) (not setNonEmpty!17998) (not start!209590) (not b!2159864) tp_is_empty!9533)
(check-sat)
