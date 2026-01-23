; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730372 () Bool)

(assert start!730372)

(declare-fun b!7554787 () Bool)

(declare-fun res!3027970 () Bool)

(declare-fun e!4499725 () Bool)

(assert (=> b!7554787 (=> res!3027970 e!4499725)))

(declare-datatypes ((C!40256 0))(
  ( (C!40257 (val!30568 Int)) )
))
(declare-datatypes ((Regex!19965 0))(
  ( (ElementMatch!19965 (c!1394292 C!40256)) (Concat!28810 (regOne!40442 Regex!19965) (regTwo!40442 Regex!19965)) (EmptyExpr!19965) (Star!19965 (reg!20294 Regex!19965)) (EmptyLang!19965) (Union!19965 (regOne!40443 Regex!19965) (regTwo!40443 Regex!19965)) )
))
(declare-fun baseR!101 () Regex!19965)

(declare-datatypes ((List!72848 0))(
  ( (Nil!72724) (Cons!72724 (h!79172 C!40256) (t!387573 List!72848)) )
))
(declare-fun testedP!423 () List!72848)

(declare-fun r!24333 () Regex!19965)

(declare-fun derivative!495 (Regex!19965 List!72848) Regex!19965)

(assert (=> b!7554787 (= res!3027970 (not (= (derivative!495 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7554788 () Bool)

(declare-fun e!4499731 () Bool)

(declare-fun tp_is_empty!50285 () Bool)

(declare-fun tp!2198224 () Bool)

(assert (=> b!7554788 (= e!4499731 (and tp_is_empty!50285 tp!2198224))))

(declare-fun b!7554789 () Bool)

(declare-fun e!4499730 () Bool)

(declare-fun tp!2198235 () Bool)

(assert (=> b!7554789 (= e!4499730 tp!2198235)))

(declare-fun b!7554790 () Bool)

(declare-fun e!4499726 () Bool)

(assert (=> b!7554790 (= e!4499726 tp_is_empty!50285)))

(declare-fun b!7554791 () Bool)

(declare-fun e!4499729 () Bool)

(assert (=> b!7554791 (= e!4499729 (not e!4499725))))

(declare-fun res!3027968 () Bool)

(assert (=> b!7554791 (=> res!3027968 e!4499725)))

(declare-fun knownP!30 () List!72848)

(declare-fun matchR!9567 (Regex!19965 List!72848) Bool)

(declare-fun getSuffix!3649 (List!72848 List!72848) List!72848)

(assert (=> b!7554791 (= res!3027968 (not (matchR!9567 r!24333 (getSuffix!3649 knownP!30 testedP!423))))))

(declare-fun isPrefix!6171 (List!72848 List!72848) Bool)

(assert (=> b!7554791 (isPrefix!6171 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72848)

(declare-datatypes ((Unit!166864 0))(
  ( (Unit!166865) )
))
(declare-fun lt!2647781 () Unit!166864)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!919 (List!72848 List!72848 List!72848) Unit!166864)

(assert (=> b!7554791 (= lt!2647781 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!919 knownP!30 testedP!423 input!7874))))

(declare-fun b!7554792 () Bool)

(declare-fun res!3027972 () Bool)

(declare-fun e!4499724 () Bool)

(assert (=> b!7554792 (=> (not res!3027972) (not e!4499724))))

(assert (=> b!7554792 (= res!3027972 (isPrefix!6171 knownP!30 input!7874))))

(declare-fun b!7554793 () Bool)

(declare-fun e!4499728 () Bool)

(declare-fun tp!2198227 () Bool)

(assert (=> b!7554793 (= e!4499728 (and tp_is_empty!50285 tp!2198227))))

(declare-fun b!7554794 () Bool)

(declare-fun tp!2198223 () Bool)

(declare-fun tp!2198229 () Bool)

(assert (=> b!7554794 (= e!4499726 (and tp!2198223 tp!2198229))))

(declare-fun b!7554795 () Bool)

(declare-fun tp!2198228 () Bool)

(declare-fun tp!2198234 () Bool)

(assert (=> b!7554795 (= e!4499730 (and tp!2198228 tp!2198234))))

(declare-fun b!7554796 () Bool)

(declare-fun lt!2647780 () Int)

(declare-fun lt!2647784 () Int)

(assert (=> b!7554796 (= e!4499725 (>= lt!2647780 lt!2647784))))

(declare-fun lt!2647783 () Int)

(assert (=> b!7554796 (>= lt!2647780 lt!2647783)))

(declare-fun size!42461 (List!72848) Int)

(declare-datatypes ((tuple2!68860 0))(
  ( (tuple2!68861 (_1!37733 List!72848) (_2!37733 List!72848)) )
))
(declare-fun findLongestMatchInner!2138 (Regex!19965 List!72848 Int List!72848 List!72848 Int) tuple2!68860)

(assert (=> b!7554796 (= lt!2647780 (size!42461 (_1!37733 (findLongestMatchInner!2138 r!24333 testedP!423 lt!2647783 (getSuffix!3649 input!7874 testedP!423) input!7874 (size!42461 input!7874)))))))

(declare-fun lt!2647779 () Unit!166864)

(declare-fun lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!16 (Regex!19965 Regex!19965 List!72848 List!72848) Unit!166864)

(assert (=> b!7554796 (= lt!2647779 (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!16 baseR!101 r!24333 input!7874 testedP!423))))

(assert (=> b!7554796 (= testedP!423 knownP!30)))

(declare-fun lt!2647782 () Unit!166864)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1535 (List!72848 List!72848 List!72848) Unit!166864)

(assert (=> b!7554796 (= lt!2647782 (lemmaIsPrefixSameLengthThenSameList!1535 testedP!423 knownP!30 input!7874))))

(declare-fun b!7554797 () Bool)

(declare-fun tp!2198233 () Bool)

(declare-fun tp!2198230 () Bool)

(assert (=> b!7554797 (= e!4499726 (and tp!2198233 tp!2198230))))

(declare-fun b!7554798 () Bool)

(assert (=> b!7554798 (= e!4499730 tp_is_empty!50285)))

(declare-fun b!7554799 () Bool)

(declare-fun res!3027969 () Bool)

(assert (=> b!7554799 (=> (not res!3027969) (not e!4499729))))

(assert (=> b!7554799 (= res!3027969 (matchR!9567 baseR!101 knownP!30))))

(declare-fun b!7554800 () Bool)

(declare-fun e!4499727 () Bool)

(declare-fun tp!2198225 () Bool)

(assert (=> b!7554800 (= e!4499727 (and tp_is_empty!50285 tp!2198225))))

(declare-fun res!3027973 () Bool)

(assert (=> start!730372 (=> (not res!3027973) (not e!4499724))))

(declare-fun validRegex!10393 (Regex!19965) Bool)

(assert (=> start!730372 (= res!3027973 (validRegex!10393 baseR!101))))

(assert (=> start!730372 e!4499724))

(assert (=> start!730372 e!4499726))

(assert (=> start!730372 e!4499727))

(assert (=> start!730372 e!4499728))

(assert (=> start!730372 e!4499731))

(assert (=> start!730372 e!4499730))

(declare-fun b!7554801 () Bool)

(declare-fun tp!2198231 () Bool)

(assert (=> b!7554801 (= e!4499726 tp!2198231)))

(declare-fun b!7554802 () Bool)

(assert (=> b!7554802 (= e!4499724 e!4499729)))

(declare-fun res!3027974 () Bool)

(assert (=> b!7554802 (=> (not res!3027974) (not e!4499729))))

(assert (=> b!7554802 (= res!3027974 (>= lt!2647784 lt!2647783))))

(assert (=> b!7554802 (= lt!2647783 (size!42461 testedP!423))))

(assert (=> b!7554802 (= lt!2647784 (size!42461 knownP!30))))

(declare-fun b!7554803 () Bool)

(declare-fun res!3027976 () Bool)

(assert (=> b!7554803 (=> res!3027976 e!4499725)))

(declare-fun lostCause!1753 (Regex!19965) Bool)

(assert (=> b!7554803 (= res!3027976 (lostCause!1753 r!24333))))

(declare-fun b!7554804 () Bool)

(declare-fun tp!2198232 () Bool)

(declare-fun tp!2198226 () Bool)

(assert (=> b!7554804 (= e!4499730 (and tp!2198232 tp!2198226))))

(declare-fun b!7554805 () Bool)

(declare-fun res!3027971 () Bool)

(assert (=> b!7554805 (=> (not res!3027971) (not e!4499724))))

(assert (=> b!7554805 (= res!3027971 (validRegex!10393 r!24333))))

(declare-fun b!7554806 () Bool)

(declare-fun res!3027975 () Bool)

(assert (=> b!7554806 (=> res!3027975 e!4499725)))

(assert (=> b!7554806 (= res!3027975 (not (= lt!2647783 lt!2647784)))))

(declare-fun b!7554807 () Bool)

(declare-fun res!3027967 () Bool)

(assert (=> b!7554807 (=> (not res!3027967) (not e!4499724))))

(assert (=> b!7554807 (= res!3027967 (isPrefix!6171 testedP!423 input!7874))))

(assert (= (and start!730372 res!3027973) b!7554805))

(assert (= (and b!7554805 res!3027971) b!7554807))

(assert (= (and b!7554807 res!3027967) b!7554792))

(assert (= (and b!7554792 res!3027972) b!7554802))

(assert (= (and b!7554802 res!3027974) b!7554799))

(assert (= (and b!7554799 res!3027969) b!7554791))

(assert (= (and b!7554791 (not res!3027968)) b!7554787))

(assert (= (and b!7554787 (not res!3027970)) b!7554803))

(assert (= (and b!7554803 (not res!3027976)) b!7554806))

(assert (= (and b!7554806 (not res!3027975)) b!7554796))

(get-info :version)

(assert (= (and start!730372 ((_ is ElementMatch!19965) baseR!101)) b!7554790))

(assert (= (and start!730372 ((_ is Concat!28810) baseR!101)) b!7554794))

(assert (= (and start!730372 ((_ is Star!19965) baseR!101)) b!7554801))

(assert (= (and start!730372 ((_ is Union!19965) baseR!101)) b!7554797))

(assert (= (and start!730372 ((_ is Cons!72724) input!7874)) b!7554800))

(assert (= (and start!730372 ((_ is Cons!72724) knownP!30)) b!7554793))

(assert (= (and start!730372 ((_ is Cons!72724) testedP!423)) b!7554788))

(assert (= (and start!730372 ((_ is ElementMatch!19965) r!24333)) b!7554798))

(assert (= (and start!730372 ((_ is Concat!28810) r!24333)) b!7554804))

(assert (= (and start!730372 ((_ is Star!19965) r!24333)) b!7554789))

(assert (= (and start!730372 ((_ is Union!19965) r!24333)) b!7554795))

(declare-fun m!8120836 () Bool)

(assert (=> b!7554791 m!8120836))

(assert (=> b!7554791 m!8120836))

(declare-fun m!8120838 () Bool)

(assert (=> b!7554791 m!8120838))

(declare-fun m!8120840 () Bool)

(assert (=> b!7554791 m!8120840))

(declare-fun m!8120842 () Bool)

(assert (=> b!7554791 m!8120842))

(declare-fun m!8120844 () Bool)

(assert (=> b!7554792 m!8120844))

(declare-fun m!8120846 () Bool)

(assert (=> b!7554799 m!8120846))

(declare-fun m!8120848 () Bool)

(assert (=> b!7554803 m!8120848))

(declare-fun m!8120850 () Bool)

(assert (=> start!730372 m!8120850))

(declare-fun m!8120852 () Bool)

(assert (=> b!7554796 m!8120852))

(declare-fun m!8120854 () Bool)

(assert (=> b!7554796 m!8120854))

(declare-fun m!8120856 () Bool)

(assert (=> b!7554796 m!8120856))

(declare-fun m!8120858 () Bool)

(assert (=> b!7554796 m!8120858))

(assert (=> b!7554796 m!8120854))

(assert (=> b!7554796 m!8120856))

(declare-fun m!8120860 () Bool)

(assert (=> b!7554796 m!8120860))

(declare-fun m!8120862 () Bool)

(assert (=> b!7554796 m!8120862))

(declare-fun m!8120864 () Bool)

(assert (=> b!7554787 m!8120864))

(declare-fun m!8120866 () Bool)

(assert (=> b!7554805 m!8120866))

(declare-fun m!8120868 () Bool)

(assert (=> b!7554807 m!8120868))

(declare-fun m!8120870 () Bool)

(assert (=> b!7554802 m!8120870))

(declare-fun m!8120872 () Bool)

(assert (=> b!7554802 m!8120872))

(check-sat (not start!730372) (not b!7554803) (not b!7554802) (not b!7554796) (not b!7554795) (not b!7554797) (not b!7554794) (not b!7554805) tp_is_empty!50285 (not b!7554801) (not b!7554787) (not b!7554788) (not b!7554799) (not b!7554807) (not b!7554800) (not b!7554793) (not b!7554789) (not b!7554792) (not b!7554804) (not b!7554791))
(check-sat)
