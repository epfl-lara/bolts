; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729124 () Bool)

(assert start!729124)

(declare-fun b!7538794 () Bool)

(declare-fun e!4491914 () Bool)

(declare-fun tp!2192807 () Bool)

(declare-fun tp!2192809 () Bool)

(assert (=> b!7538794 (= e!4491914 (and tp!2192807 tp!2192809))))

(declare-fun b!7538795 () Bool)

(declare-fun e!4491912 () Bool)

(declare-datatypes ((C!40124 0))(
  ( (C!40125 (val!30502 Int)) )
))
(declare-datatypes ((List!72782 0))(
  ( (Nil!72658) (Cons!72658 (h!79106 C!40124) (t!387489 List!72782)) )
))
(declare-fun lt!2642641 () List!72782)

(assert (=> b!7538795 (= e!4491912 (not (= lt!2642641 Nil!72658)))))

(declare-fun lt!2642636 () List!72782)

(assert (=> b!7538795 (= lt!2642636 lt!2642641)))

(declare-datatypes ((Unit!166736 0))(
  ( (Unit!166737) )
))
(declare-fun lt!2642643 () Unit!166736)

(declare-fun input!7874 () List!72782)

(declare-fun testedP!423 () List!72782)

(declare-fun lemmaSamePrefixThenSameSuffix!2833 (List!72782 List!72782 List!72782 List!72782 List!72782) Unit!166736)

(assert (=> b!7538795 (= lt!2642643 (lemmaSamePrefixThenSameSuffix!2833 testedP!423 lt!2642636 testedP!423 lt!2642641 input!7874))))

(declare-fun b!7538796 () Bool)

(declare-fun e!4491915 () Bool)

(declare-fun e!4491916 () Bool)

(assert (=> b!7538796 (= e!4491915 e!4491916)))

(declare-fun res!3021188 () Bool)

(assert (=> b!7538796 (=> (not res!3021188) (not e!4491916))))

(declare-fun lt!2642639 () Int)

(declare-fun lt!2642638 () Int)

(assert (=> b!7538796 (= res!3021188 (>= lt!2642639 lt!2642638))))

(declare-fun size!42395 (List!72782) Int)

(assert (=> b!7538796 (= lt!2642638 (size!42395 testedP!423))))

(declare-fun knownP!30 () List!72782)

(assert (=> b!7538796 (= lt!2642639 (size!42395 knownP!30))))

(declare-fun b!7538797 () Bool)

(declare-fun e!4491911 () Bool)

(declare-fun tp!2192811 () Bool)

(assert (=> b!7538797 (= e!4491911 tp!2192811)))

(declare-fun b!7538798 () Bool)

(declare-fun e!4491918 () Bool)

(declare-fun e!4491913 () Bool)

(assert (=> b!7538798 (= e!4491918 e!4491913)))

(declare-fun res!3021191 () Bool)

(assert (=> b!7538798 (=> res!3021191 e!4491913)))

(declare-fun lt!2642649 () List!72782)

(declare-fun ++!17416 (List!72782 List!72782) List!72782)

(assert (=> b!7538798 (= res!3021191 (not (= (++!17416 knownP!30 lt!2642649) input!7874)))))

(declare-fun getSuffix!3585 (List!72782 List!72782) List!72782)

(assert (=> b!7538798 (= lt!2642649 (getSuffix!3585 input!7874 knownP!30))))

(declare-fun lt!2642650 () List!72782)

(declare-fun lt!2642642 () List!72782)

(assert (=> b!7538798 (= lt!2642650 (getSuffix!3585 knownP!30 lt!2642642))))

(declare-fun isPrefix!6105 (List!72782 List!72782) Bool)

(assert (=> b!7538798 (isPrefix!6105 lt!2642642 knownP!30)))

(declare-fun lt!2642648 () Unit!166736)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!855 (List!72782 List!72782 List!72782) Unit!166736)

(assert (=> b!7538798 (= lt!2642648 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!855 knownP!30 lt!2642642 input!7874))))

(declare-datatypes ((Regex!19899 0))(
  ( (ElementMatch!19899 (c!1391906 C!40124)) (Concat!28744 (regOne!40310 Regex!19899) (regTwo!40310 Regex!19899)) (EmptyExpr!19899) (Star!19899 (reg!20228 Regex!19899)) (EmptyLang!19899) (Union!19899 (regOne!40311 Regex!19899) (regTwo!40311 Regex!19899)) )
))
(declare-fun baseR!101 () Regex!19899)

(declare-fun r!24333 () Regex!19899)

(declare-fun lt!2642651 () C!40124)

(declare-fun derivative!431 (Regex!19899 List!72782) Regex!19899)

(declare-fun derivativeStep!5689 (Regex!19899 C!40124) Regex!19899)

(assert (=> b!7538798 (= (derivative!431 baseR!101 lt!2642642) (derivativeStep!5689 r!24333 lt!2642651))))

(declare-fun lt!2642644 () Unit!166736)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!137 (Regex!19899 Regex!19899 List!72782 C!40124) Unit!166736)

(assert (=> b!7538798 (= lt!2642644 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!137 baseR!101 r!24333 testedP!423 lt!2642651))))

(assert (=> b!7538798 (isPrefix!6105 lt!2642642 input!7874)))

(declare-fun lt!2642640 () Unit!166736)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1170 (List!72782 List!72782) Unit!166736)

(assert (=> b!7538798 (= lt!2642640 (lemmaAddHeadSuffixToPrefixStillPrefix!1170 testedP!423 input!7874))))

(assert (=> b!7538798 (= lt!2642642 (++!17416 testedP!423 (Cons!72658 lt!2642651 Nil!72658)))))

(declare-fun head!15489 (List!72782) C!40124)

(assert (=> b!7538798 (= lt!2642651 (head!15489 lt!2642641))))

(assert (=> b!7538798 (= lt!2642641 (getSuffix!3585 input!7874 testedP!423))))

(declare-fun b!7538799 () Bool)

(declare-fun e!4491920 () Bool)

(declare-fun tp_is_empty!50153 () Bool)

(declare-fun tp!2192813 () Bool)

(assert (=> b!7538799 (= e!4491920 (and tp_is_empty!50153 tp!2192813))))

(declare-fun b!7538800 () Bool)

(declare-fun res!3021187 () Bool)

(assert (=> b!7538800 (=> res!3021187 e!4491918)))

(declare-fun lostCause!1691 (Regex!19899) Bool)

(assert (=> b!7538800 (= res!3021187 (lostCause!1691 r!24333))))

(declare-fun b!7538801 () Bool)

(declare-fun e!4491919 () Bool)

(assert (=> b!7538801 (= e!4491919 e!4491912)))

(declare-fun res!3021194 () Bool)

(assert (=> b!7538801 (=> res!3021194 e!4491912)))

(declare-fun lt!2642637 () List!72782)

(assert (=> b!7538801 (= res!3021194 (not (= lt!2642637 input!7874)))))

(declare-fun lt!2642645 () List!72782)

(assert (=> b!7538801 (= lt!2642645 lt!2642637)))

(assert (=> b!7538801 (= lt!2642637 (++!17416 testedP!423 lt!2642636))))

(declare-fun lt!2642647 () List!72782)

(assert (=> b!7538801 (= lt!2642636 (++!17416 lt!2642647 lt!2642649))))

(declare-fun lt!2642652 () Unit!166736)

(declare-fun lemmaConcatAssociativity!3064 (List!72782 List!72782 List!72782) Unit!166736)

(assert (=> b!7538801 (= lt!2642652 (lemmaConcatAssociativity!3064 testedP!423 lt!2642647 lt!2642649))))

(declare-fun b!7538802 () Bool)

(declare-fun res!3021183 () Bool)

(assert (=> b!7538802 (=> (not res!3021183) (not e!4491915))))

(assert (=> b!7538802 (= res!3021183 (isPrefix!6105 knownP!30 input!7874))))

(declare-fun b!7538803 () Bool)

(assert (=> b!7538803 (= e!4491911 tp_is_empty!50153)))

(declare-fun b!7538804 () Bool)

(assert (=> b!7538804 (= e!4491914 tp_is_empty!50153)))

(declare-fun res!3021182 () Bool)

(assert (=> start!729124 (=> (not res!3021182) (not e!4491915))))

(declare-fun validRegex!10327 (Regex!19899) Bool)

(assert (=> start!729124 (= res!3021182 (validRegex!10327 baseR!101))))

(assert (=> start!729124 e!4491915))

(assert (=> start!729124 e!4491911))

(assert (=> start!729124 e!4491920))

(declare-fun e!4491917 () Bool)

(assert (=> start!729124 e!4491917))

(declare-fun e!4491921 () Bool)

(assert (=> start!729124 e!4491921))

(assert (=> start!729124 e!4491914))

(declare-fun b!7538805 () Bool)

(declare-fun res!3021189 () Bool)

(assert (=> b!7538805 (=> res!3021189 e!4491919)))

(assert (=> b!7538805 (= res!3021189 (not (= (++!17416 testedP!423 lt!2642641) input!7874)))))

(declare-fun b!7538806 () Bool)

(declare-fun res!3021185 () Bool)

(assert (=> b!7538806 (=> (not res!3021185) (not e!4491916))))

(declare-fun matchR!9501 (Regex!19899 List!72782) Bool)

(assert (=> b!7538806 (= res!3021185 (matchR!9501 baseR!101 knownP!30))))

(declare-fun b!7538807 () Bool)

(declare-fun res!3021192 () Bool)

(assert (=> b!7538807 (=> res!3021192 e!4491918)))

(assert (=> b!7538807 (= res!3021192 (>= lt!2642638 (size!42395 input!7874)))))

(declare-fun b!7538808 () Bool)

(declare-fun tp!2192803 () Bool)

(assert (=> b!7538808 (= e!4491914 tp!2192803)))

(declare-fun b!7538809 () Bool)

(declare-fun tp!2192804 () Bool)

(assert (=> b!7538809 (= e!4491917 (and tp_is_empty!50153 tp!2192804))))

(declare-fun b!7538810 () Bool)

(declare-fun tp!2192805 () Bool)

(declare-fun tp!2192812 () Bool)

(assert (=> b!7538810 (= e!4491911 (and tp!2192805 tp!2192812))))

(declare-fun b!7538811 () Bool)

(declare-fun res!3021186 () Bool)

(assert (=> b!7538811 (=> res!3021186 e!4491918)))

(assert (=> b!7538811 (= res!3021186 (= lt!2642638 lt!2642639))))

(declare-fun b!7538812 () Bool)

(declare-fun tp!2192810 () Bool)

(declare-fun tp!2192815 () Bool)

(assert (=> b!7538812 (= e!4491911 (and tp!2192810 tp!2192815))))

(declare-fun b!7538813 () Bool)

(declare-fun res!3021196 () Bool)

(assert (=> b!7538813 (=> (not res!3021196) (not e!4491915))))

(assert (=> b!7538813 (= res!3021196 (validRegex!10327 r!24333))))

(declare-fun b!7538814 () Bool)

(declare-fun tp!2192806 () Bool)

(declare-fun tp!2192808 () Bool)

(assert (=> b!7538814 (= e!4491914 (and tp!2192806 tp!2192808))))

(declare-fun b!7538815 () Bool)

(assert (=> b!7538815 (= e!4491913 e!4491919)))

(declare-fun res!3021195 () Bool)

(assert (=> b!7538815 (=> res!3021195 e!4491919)))

(assert (=> b!7538815 (= res!3021195 (not (= lt!2642645 input!7874)))))

(assert (=> b!7538815 (= lt!2642645 (++!17416 (++!17416 testedP!423 lt!2642647) lt!2642649))))

(declare-fun b!7538816 () Bool)

(declare-fun res!3021190 () Bool)

(assert (=> b!7538816 (=> (not res!3021190) (not e!4491915))))

(assert (=> b!7538816 (= res!3021190 (isPrefix!6105 testedP!423 input!7874))))

(declare-fun b!7538817 () Bool)

(declare-fun res!3021184 () Bool)

(assert (=> b!7538817 (=> res!3021184 e!4491918)))

(assert (=> b!7538817 (= res!3021184 (not (= (derivative!431 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7538818 () Bool)

(declare-fun tp!2192814 () Bool)

(assert (=> b!7538818 (= e!4491921 (and tp_is_empty!50153 tp!2192814))))

(declare-fun b!7538819 () Bool)

(assert (=> b!7538819 (= e!4491916 (not e!4491918))))

(declare-fun res!3021193 () Bool)

(assert (=> b!7538819 (=> res!3021193 e!4491918)))

(assert (=> b!7538819 (= res!3021193 (not (matchR!9501 r!24333 lt!2642647)))))

(assert (=> b!7538819 (= lt!2642647 (getSuffix!3585 knownP!30 testedP!423))))

(assert (=> b!7538819 (isPrefix!6105 testedP!423 knownP!30)))

(declare-fun lt!2642646 () Unit!166736)

(assert (=> b!7538819 (= lt!2642646 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!855 knownP!30 testedP!423 input!7874))))

(assert (= (and start!729124 res!3021182) b!7538813))

(assert (= (and b!7538813 res!3021196) b!7538816))

(assert (= (and b!7538816 res!3021190) b!7538802))

(assert (= (and b!7538802 res!3021183) b!7538796))

(assert (= (and b!7538796 res!3021188) b!7538806))

(assert (= (and b!7538806 res!3021185) b!7538819))

(assert (= (and b!7538819 (not res!3021193)) b!7538817))

(assert (= (and b!7538817 (not res!3021184)) b!7538800))

(assert (= (and b!7538800 (not res!3021187)) b!7538811))

(assert (= (and b!7538811 (not res!3021186)) b!7538807))

(assert (= (and b!7538807 (not res!3021192)) b!7538798))

(assert (= (and b!7538798 (not res!3021191)) b!7538815))

(assert (= (and b!7538815 (not res!3021195)) b!7538805))

(assert (= (and b!7538805 (not res!3021189)) b!7538801))

(assert (= (and b!7538801 (not res!3021194)) b!7538795))

(get-info :version)

(assert (= (and start!729124 ((_ is ElementMatch!19899) baseR!101)) b!7538803))

(assert (= (and start!729124 ((_ is Concat!28744) baseR!101)) b!7538812))

(assert (= (and start!729124 ((_ is Star!19899) baseR!101)) b!7538797))

(assert (= (and start!729124 ((_ is Union!19899) baseR!101)) b!7538810))

(assert (= (and start!729124 ((_ is Cons!72658) input!7874)) b!7538799))

(assert (= (and start!729124 ((_ is Cons!72658) knownP!30)) b!7538809))

(assert (= (and start!729124 ((_ is Cons!72658) testedP!423)) b!7538818))

(assert (= (and start!729124 ((_ is ElementMatch!19899) r!24333)) b!7538804))

(assert (= (and start!729124 ((_ is Concat!28744) r!24333)) b!7538814))

(assert (= (and start!729124 ((_ is Star!19899) r!24333)) b!7538808))

(assert (= (and start!729124 ((_ is Union!19899) r!24333)) b!7538794))

(declare-fun m!8108626 () Bool)

(assert (=> b!7538815 m!8108626))

(assert (=> b!7538815 m!8108626))

(declare-fun m!8108628 () Bool)

(assert (=> b!7538815 m!8108628))

(declare-fun m!8108630 () Bool)

(assert (=> b!7538807 m!8108630))

(declare-fun m!8108632 () Bool)

(assert (=> b!7538800 m!8108632))

(declare-fun m!8108634 () Bool)

(assert (=> b!7538813 m!8108634))

(declare-fun m!8108636 () Bool)

(assert (=> b!7538796 m!8108636))

(declare-fun m!8108638 () Bool)

(assert (=> b!7538796 m!8108638))

(declare-fun m!8108640 () Bool)

(assert (=> b!7538805 m!8108640))

(declare-fun m!8108642 () Bool)

(assert (=> b!7538819 m!8108642))

(declare-fun m!8108644 () Bool)

(assert (=> b!7538819 m!8108644))

(declare-fun m!8108646 () Bool)

(assert (=> b!7538819 m!8108646))

(declare-fun m!8108648 () Bool)

(assert (=> b!7538819 m!8108648))

(declare-fun m!8108650 () Bool)

(assert (=> start!729124 m!8108650))

(declare-fun m!8108652 () Bool)

(assert (=> b!7538806 m!8108652))

(declare-fun m!8108654 () Bool)

(assert (=> b!7538798 m!8108654))

(declare-fun m!8108656 () Bool)

(assert (=> b!7538798 m!8108656))

(declare-fun m!8108658 () Bool)

(assert (=> b!7538798 m!8108658))

(declare-fun m!8108660 () Bool)

(assert (=> b!7538798 m!8108660))

(declare-fun m!8108662 () Bool)

(assert (=> b!7538798 m!8108662))

(declare-fun m!8108664 () Bool)

(assert (=> b!7538798 m!8108664))

(declare-fun m!8108666 () Bool)

(assert (=> b!7538798 m!8108666))

(declare-fun m!8108668 () Bool)

(assert (=> b!7538798 m!8108668))

(declare-fun m!8108670 () Bool)

(assert (=> b!7538798 m!8108670))

(declare-fun m!8108672 () Bool)

(assert (=> b!7538798 m!8108672))

(declare-fun m!8108674 () Bool)

(assert (=> b!7538798 m!8108674))

(declare-fun m!8108676 () Bool)

(assert (=> b!7538798 m!8108676))

(declare-fun m!8108678 () Bool)

(assert (=> b!7538798 m!8108678))

(declare-fun m!8108680 () Bool)

(assert (=> b!7538795 m!8108680))

(declare-fun m!8108682 () Bool)

(assert (=> b!7538802 m!8108682))

(declare-fun m!8108684 () Bool)

(assert (=> b!7538817 m!8108684))

(declare-fun m!8108686 () Bool)

(assert (=> b!7538801 m!8108686))

(declare-fun m!8108688 () Bool)

(assert (=> b!7538801 m!8108688))

(declare-fun m!8108690 () Bool)

(assert (=> b!7538801 m!8108690))

(declare-fun m!8108692 () Bool)

(assert (=> b!7538816 m!8108692))

(check-sat (not b!7538798) (not b!7538815) (not b!7538812) (not b!7538816) (not b!7538808) (not b!7538819) (not b!7538797) (not b!7538809) (not b!7538810) (not b!7538796) (not b!7538801) (not b!7538818) (not b!7538794) tp_is_empty!50153 (not b!7538802) (not b!7538814) (not b!7538813) (not b!7538800) (not b!7538805) (not b!7538799) (not b!7538795) (not b!7538806) (not start!729124) (not b!7538807) (not b!7538817))
(check-sat)
(get-model)

(declare-fun b!7538832 () Bool)

(declare-fun e!4491929 () List!72782)

(assert (=> b!7538832 (= e!4491929 lt!2642636)))

(declare-fun b!7538833 () Bool)

(assert (=> b!7538833 (= e!4491929 (Cons!72658 (h!79106 testedP!423) (++!17416 (t!387489 testedP!423) lt!2642636)))))

(declare-fun d!2310865 () Bool)

(declare-fun e!4491928 () Bool)

(assert (=> d!2310865 e!4491928))

(declare-fun res!3021202 () Bool)

(assert (=> d!2310865 (=> (not res!3021202) (not e!4491928))))

(declare-fun lt!2642657 () List!72782)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15362 (List!72782) (InoxSet C!40124))

(assert (=> d!2310865 (= res!3021202 (= (content!15362 lt!2642657) ((_ map or) (content!15362 testedP!423) (content!15362 lt!2642636))))))

(assert (=> d!2310865 (= lt!2642657 e!4491929)))

(declare-fun c!1391911 () Bool)

(assert (=> d!2310865 (= c!1391911 ((_ is Nil!72658) testedP!423))))

(assert (=> d!2310865 (= (++!17416 testedP!423 lt!2642636) lt!2642657)))

(declare-fun b!7538834 () Bool)

(declare-fun res!3021201 () Bool)

(assert (=> b!7538834 (=> (not res!3021201) (not e!4491928))))

(assert (=> b!7538834 (= res!3021201 (= (size!42395 lt!2642657) (+ (size!42395 testedP!423) (size!42395 lt!2642636))))))

(declare-fun b!7538835 () Bool)

(assert (=> b!7538835 (= e!4491928 (or (not (= lt!2642636 Nil!72658)) (= lt!2642657 testedP!423)))))

(assert (= (and d!2310865 c!1391911) b!7538832))

(assert (= (and d!2310865 (not c!1391911)) b!7538833))

(assert (= (and d!2310865 res!3021202) b!7538834))

(assert (= (and b!7538834 res!3021201) b!7538835))

(declare-fun m!8108694 () Bool)

(assert (=> b!7538833 m!8108694))

(declare-fun m!8108696 () Bool)

(assert (=> d!2310865 m!8108696))

(declare-fun m!8108698 () Bool)

(assert (=> d!2310865 m!8108698))

(declare-fun m!8108700 () Bool)

(assert (=> d!2310865 m!8108700))

(declare-fun m!8108702 () Bool)

(assert (=> b!7538834 m!8108702))

(assert (=> b!7538834 m!8108636))

(declare-fun m!8108704 () Bool)

(assert (=> b!7538834 m!8108704))

(assert (=> b!7538801 d!2310865))

(declare-fun b!7538840 () Bool)

(declare-fun e!4491933 () List!72782)

(assert (=> b!7538840 (= e!4491933 lt!2642649)))

(declare-fun b!7538841 () Bool)

(assert (=> b!7538841 (= e!4491933 (Cons!72658 (h!79106 lt!2642647) (++!17416 (t!387489 lt!2642647) lt!2642649)))))

(declare-fun d!2310869 () Bool)

(declare-fun e!4491932 () Bool)

(assert (=> d!2310869 e!4491932))

(declare-fun res!3021208 () Bool)

(assert (=> d!2310869 (=> (not res!3021208) (not e!4491932))))

(declare-fun lt!2642658 () List!72782)

(assert (=> d!2310869 (= res!3021208 (= (content!15362 lt!2642658) ((_ map or) (content!15362 lt!2642647) (content!15362 lt!2642649))))))

(assert (=> d!2310869 (= lt!2642658 e!4491933)))

(declare-fun c!1391912 () Bool)

(assert (=> d!2310869 (= c!1391912 ((_ is Nil!72658) lt!2642647))))

(assert (=> d!2310869 (= (++!17416 lt!2642647 lt!2642649) lt!2642658)))

(declare-fun b!7538842 () Bool)

(declare-fun res!3021207 () Bool)

(assert (=> b!7538842 (=> (not res!3021207) (not e!4491932))))

(assert (=> b!7538842 (= res!3021207 (= (size!42395 lt!2642658) (+ (size!42395 lt!2642647) (size!42395 lt!2642649))))))

(declare-fun b!7538843 () Bool)

(assert (=> b!7538843 (= e!4491932 (or (not (= lt!2642649 Nil!72658)) (= lt!2642658 lt!2642647)))))

(assert (= (and d!2310869 c!1391912) b!7538840))

(assert (= (and d!2310869 (not c!1391912)) b!7538841))

(assert (= (and d!2310869 res!3021208) b!7538842))

(assert (= (and b!7538842 res!3021207) b!7538843))

(declare-fun m!8108706 () Bool)

(assert (=> b!7538841 m!8108706))

(declare-fun m!8108708 () Bool)

(assert (=> d!2310869 m!8108708))

(declare-fun m!8108710 () Bool)

(assert (=> d!2310869 m!8108710))

(declare-fun m!8108712 () Bool)

(assert (=> d!2310869 m!8108712))

(declare-fun m!8108714 () Bool)

(assert (=> b!7538842 m!8108714))

(declare-fun m!8108716 () Bool)

(assert (=> b!7538842 m!8108716))

(declare-fun m!8108718 () Bool)

(assert (=> b!7538842 m!8108718))

(assert (=> b!7538801 d!2310869))

(declare-fun d!2310871 () Bool)

(assert (=> d!2310871 (= (++!17416 (++!17416 testedP!423 lt!2642647) lt!2642649) (++!17416 testedP!423 (++!17416 lt!2642647 lt!2642649)))))

(declare-fun lt!2642663 () Unit!166736)

(declare-fun choose!58317 (List!72782 List!72782 List!72782) Unit!166736)

(assert (=> d!2310871 (= lt!2642663 (choose!58317 testedP!423 lt!2642647 lt!2642649))))

(assert (=> d!2310871 (= (lemmaConcatAssociativity!3064 testedP!423 lt!2642647 lt!2642649) lt!2642663)))

(declare-fun bs!1939953 () Bool)

(assert (= bs!1939953 d!2310871))

(assert (=> bs!1939953 m!8108688))

(declare-fun m!8108746 () Bool)

(assert (=> bs!1939953 m!8108746))

(assert (=> bs!1939953 m!8108626))

(assert (=> bs!1939953 m!8108628))

(assert (=> bs!1939953 m!8108626))

(assert (=> bs!1939953 m!8108688))

(declare-fun m!8108748 () Bool)

(assert (=> bs!1939953 m!8108748))

(assert (=> b!7538801 d!2310871))

(declare-fun bm!691546 () Bool)

(declare-fun call!691551 () Bool)

(declare-fun call!691553 () Bool)

(assert (=> bm!691546 (= call!691551 call!691553)))

(declare-fun bm!691547 () Bool)

(declare-fun c!1391923 () Bool)

(declare-fun c!1391924 () Bool)

(assert (=> bm!691547 (= call!691553 (validRegex!10327 (ite c!1391924 (reg!20228 r!24333) (ite c!1391923 (regTwo!40311 r!24333) (regTwo!40310 r!24333)))))))

(declare-fun d!2310877 () Bool)

(declare-fun res!3021226 () Bool)

(declare-fun e!4491957 () Bool)

(assert (=> d!2310877 (=> res!3021226 e!4491957)))

(assert (=> d!2310877 (= res!3021226 ((_ is ElementMatch!19899) r!24333))))

(assert (=> d!2310877 (= (validRegex!10327 r!24333) e!4491957)))

(declare-fun b!7538878 () Bool)

(declare-fun e!4491960 () Bool)

(declare-fun e!4491962 () Bool)

(assert (=> b!7538878 (= e!4491960 e!4491962)))

(declare-fun res!3021227 () Bool)

(assert (=> b!7538878 (=> (not res!3021227) (not e!4491962))))

(declare-fun call!691552 () Bool)

(assert (=> b!7538878 (= res!3021227 call!691552)))

(declare-fun b!7538879 () Bool)

(assert (=> b!7538879 (= e!4491962 call!691551)))

(declare-fun b!7538880 () Bool)

(declare-fun res!3021224 () Bool)

(declare-fun e!4491961 () Bool)

(assert (=> b!7538880 (=> (not res!3021224) (not e!4491961))))

(assert (=> b!7538880 (= res!3021224 call!691552)))

(declare-fun e!4491959 () Bool)

(assert (=> b!7538880 (= e!4491959 e!4491961)))

(declare-fun b!7538881 () Bool)

(assert (=> b!7538881 (= e!4491961 call!691551)))

(declare-fun bm!691548 () Bool)

(assert (=> bm!691548 (= call!691552 (validRegex!10327 (ite c!1391923 (regOne!40311 r!24333) (regOne!40310 r!24333))))))

(declare-fun b!7538882 () Bool)

(declare-fun e!4491958 () Bool)

(declare-fun e!4491956 () Bool)

(assert (=> b!7538882 (= e!4491958 e!4491956)))

(declare-fun res!3021223 () Bool)

(declare-fun nullable!8673 (Regex!19899) Bool)

(assert (=> b!7538882 (= res!3021223 (not (nullable!8673 (reg!20228 r!24333))))))

(assert (=> b!7538882 (=> (not res!3021223) (not e!4491956))))

(declare-fun b!7538883 () Bool)

(assert (=> b!7538883 (= e!4491958 e!4491959)))

(assert (=> b!7538883 (= c!1391923 ((_ is Union!19899) r!24333))))

(declare-fun b!7538884 () Bool)

(assert (=> b!7538884 (= e!4491957 e!4491958)))

(assert (=> b!7538884 (= c!1391924 ((_ is Star!19899) r!24333))))

(declare-fun b!7538885 () Bool)

(assert (=> b!7538885 (= e!4491956 call!691553)))

(declare-fun b!7538886 () Bool)

(declare-fun res!3021225 () Bool)

(assert (=> b!7538886 (=> res!3021225 e!4491960)))

(assert (=> b!7538886 (= res!3021225 (not ((_ is Concat!28744) r!24333)))))

(assert (=> b!7538886 (= e!4491959 e!4491960)))

(assert (= (and d!2310877 (not res!3021226)) b!7538884))

(assert (= (and b!7538884 c!1391924) b!7538882))

(assert (= (and b!7538884 (not c!1391924)) b!7538883))

(assert (= (and b!7538882 res!3021223) b!7538885))

(assert (= (and b!7538883 c!1391923) b!7538880))

(assert (= (and b!7538883 (not c!1391923)) b!7538886))

(assert (= (and b!7538880 res!3021224) b!7538881))

(assert (= (and b!7538886 (not res!3021225)) b!7538878))

(assert (= (and b!7538878 res!3021227) b!7538879))

(assert (= (or b!7538880 b!7538878) bm!691548))

(assert (= (or b!7538881 b!7538879) bm!691546))

(assert (= (or b!7538885 bm!691546) bm!691547))

(declare-fun m!8108760 () Bool)

(assert (=> bm!691547 m!8108760))

(declare-fun m!8108762 () Bool)

(assert (=> bm!691548 m!8108762))

(declare-fun m!8108764 () Bool)

(assert (=> b!7538882 m!8108764))

(assert (=> b!7538813 d!2310877))

(declare-fun d!2310887 () Bool)

(declare-fun e!4491984 () Bool)

(assert (=> d!2310887 e!4491984))

(declare-fun res!3021253 () Bool)

(assert (=> d!2310887 (=> res!3021253 e!4491984)))

(declare-fun lt!2642675 () Bool)

(assert (=> d!2310887 (= res!3021253 (not lt!2642675))))

(declare-fun e!4491983 () Bool)

(assert (=> d!2310887 (= lt!2642675 e!4491983)))

(declare-fun res!3021255 () Bool)

(assert (=> d!2310887 (=> res!3021255 e!4491983)))

(assert (=> d!2310887 (= res!3021255 ((_ is Nil!72658) knownP!30))))

(assert (=> d!2310887 (= (isPrefix!6105 knownP!30 input!7874) lt!2642675)))

(declare-fun b!7538924 () Bool)

(declare-fun res!3021252 () Bool)

(declare-fun e!4491985 () Bool)

(assert (=> b!7538924 (=> (not res!3021252) (not e!4491985))))

(assert (=> b!7538924 (= res!3021252 (= (head!15489 knownP!30) (head!15489 input!7874)))))

(declare-fun b!7538926 () Bool)

(assert (=> b!7538926 (= e!4491984 (>= (size!42395 input!7874) (size!42395 knownP!30)))))

(declare-fun b!7538923 () Bool)

(assert (=> b!7538923 (= e!4491983 e!4491985)))

(declare-fun res!3021254 () Bool)

(assert (=> b!7538923 (=> (not res!3021254) (not e!4491985))))

(assert (=> b!7538923 (= res!3021254 (not ((_ is Nil!72658) input!7874)))))

(declare-fun b!7538925 () Bool)

(declare-fun tail!15035 (List!72782) List!72782)

(assert (=> b!7538925 (= e!4491985 (isPrefix!6105 (tail!15035 knownP!30) (tail!15035 input!7874)))))

(assert (= (and d!2310887 (not res!3021255)) b!7538923))

(assert (= (and b!7538923 res!3021254) b!7538924))

(assert (= (and b!7538924 res!3021252) b!7538925))

(assert (= (and d!2310887 (not res!3021253)) b!7538926))

(declare-fun m!8108766 () Bool)

(assert (=> b!7538924 m!8108766))

(declare-fun m!8108768 () Bool)

(assert (=> b!7538924 m!8108768))

(assert (=> b!7538926 m!8108630))

(assert (=> b!7538926 m!8108638))

(declare-fun m!8108770 () Bool)

(assert (=> b!7538925 m!8108770))

(declare-fun m!8108772 () Bool)

(assert (=> b!7538925 m!8108772))

(assert (=> b!7538925 m!8108770))

(assert (=> b!7538925 m!8108772))

(declare-fun m!8108774 () Bool)

(assert (=> b!7538925 m!8108774))

(assert (=> b!7538802 d!2310887))

(declare-fun d!2310889 () Bool)

(declare-fun lt!2642679 () Regex!19899)

(assert (=> d!2310889 (validRegex!10327 lt!2642679)))

(declare-fun e!4491995 () Regex!19899)

(assert (=> d!2310889 (= lt!2642679 e!4491995)))

(declare-fun c!1391936 () Bool)

(assert (=> d!2310889 (= c!1391936 ((_ is Cons!72658) lt!2642642))))

(assert (=> d!2310889 (validRegex!10327 baseR!101)))

(assert (=> d!2310889 (= (derivative!431 baseR!101 lt!2642642) lt!2642679)))

(declare-fun b!7538945 () Bool)

(assert (=> b!7538945 (= e!4491995 (derivative!431 (derivativeStep!5689 baseR!101 (h!79106 lt!2642642)) (t!387489 lt!2642642)))))

(declare-fun b!7538946 () Bool)

(assert (=> b!7538946 (= e!4491995 baseR!101)))

(assert (= (and d!2310889 c!1391936) b!7538945))

(assert (= (and d!2310889 (not c!1391936)) b!7538946))

(declare-fun m!8108790 () Bool)

(assert (=> d!2310889 m!8108790))

(assert (=> d!2310889 m!8108650))

(declare-fun m!8108792 () Bool)

(assert (=> b!7538945 m!8108792))

(assert (=> b!7538945 m!8108792))

(declare-fun m!8108794 () Bool)

(assert (=> b!7538945 m!8108794))

(assert (=> b!7538798 d!2310889))

(declare-fun d!2310893 () Bool)

(declare-fun lt!2642687 () List!72782)

(assert (=> d!2310893 (= (++!17416 testedP!423 lt!2642687) input!7874)))

(declare-fun e!4492003 () List!72782)

(assert (=> d!2310893 (= lt!2642687 e!4492003)))

(declare-fun c!1391942 () Bool)

(assert (=> d!2310893 (= c!1391942 ((_ is Cons!72658) testedP!423))))

(assert (=> d!2310893 (>= (size!42395 input!7874) (size!42395 testedP!423))))

(assert (=> d!2310893 (= (getSuffix!3585 input!7874 testedP!423) lt!2642687)))

(declare-fun b!7538959 () Bool)

(assert (=> b!7538959 (= e!4492003 (getSuffix!3585 (tail!15035 input!7874) (t!387489 testedP!423)))))

(declare-fun b!7538960 () Bool)

(assert (=> b!7538960 (= e!4492003 input!7874)))

(assert (= (and d!2310893 c!1391942) b!7538959))

(assert (= (and d!2310893 (not c!1391942)) b!7538960))

(declare-fun m!8108802 () Bool)

(assert (=> d!2310893 m!8108802))

(assert (=> d!2310893 m!8108630))

(assert (=> d!2310893 m!8108636))

(assert (=> b!7538959 m!8108772))

(assert (=> b!7538959 m!8108772))

(declare-fun m!8108804 () Bool)

(assert (=> b!7538959 m!8108804))

(assert (=> b!7538798 d!2310893))

(declare-fun b!7538967 () Bool)

(declare-fun e!4492009 () List!72782)

(assert (=> b!7538967 (= e!4492009 (Cons!72658 lt!2642651 Nil!72658))))

(declare-fun b!7538968 () Bool)

(assert (=> b!7538968 (= e!4492009 (Cons!72658 (h!79106 testedP!423) (++!17416 (t!387489 testedP!423) (Cons!72658 lt!2642651 Nil!72658))))))

(declare-fun d!2310897 () Bool)

(declare-fun e!4492008 () Bool)

(assert (=> d!2310897 e!4492008))

(declare-fun res!3021273 () Bool)

(assert (=> d!2310897 (=> (not res!3021273) (not e!4492008))))

(declare-fun lt!2642688 () List!72782)

(assert (=> d!2310897 (= res!3021273 (= (content!15362 lt!2642688) ((_ map or) (content!15362 testedP!423) (content!15362 (Cons!72658 lt!2642651 Nil!72658)))))))

(assert (=> d!2310897 (= lt!2642688 e!4492009)))

(declare-fun c!1391943 () Bool)

(assert (=> d!2310897 (= c!1391943 ((_ is Nil!72658) testedP!423))))

(assert (=> d!2310897 (= (++!17416 testedP!423 (Cons!72658 lt!2642651 Nil!72658)) lt!2642688)))

(declare-fun b!7538969 () Bool)

(declare-fun res!3021272 () Bool)

(assert (=> b!7538969 (=> (not res!3021272) (not e!4492008))))

(assert (=> b!7538969 (= res!3021272 (= (size!42395 lt!2642688) (+ (size!42395 testedP!423) (size!42395 (Cons!72658 lt!2642651 Nil!72658)))))))

(declare-fun b!7538970 () Bool)

(assert (=> b!7538970 (= e!4492008 (or (not (= (Cons!72658 lt!2642651 Nil!72658) Nil!72658)) (= lt!2642688 testedP!423)))))

(assert (= (and d!2310897 c!1391943) b!7538967))

(assert (= (and d!2310897 (not c!1391943)) b!7538968))

(assert (= (and d!2310897 res!3021273) b!7538969))

(assert (= (and b!7538969 res!3021272) b!7538970))

(declare-fun m!8108806 () Bool)

(assert (=> b!7538968 m!8108806))

(declare-fun m!8108808 () Bool)

(assert (=> d!2310897 m!8108808))

(assert (=> d!2310897 m!8108698))

(declare-fun m!8108810 () Bool)

(assert (=> d!2310897 m!8108810))

(declare-fun m!8108812 () Bool)

(assert (=> b!7538969 m!8108812))

(assert (=> b!7538969 m!8108636))

(declare-fun m!8108814 () Bool)

(assert (=> b!7538969 m!8108814))

(assert (=> b!7538798 d!2310897))

(declare-fun d!2310899 () Bool)

(declare-fun e!4492011 () Bool)

(assert (=> d!2310899 e!4492011))

(declare-fun res!3021275 () Bool)

(assert (=> d!2310899 (=> res!3021275 e!4492011)))

(declare-fun lt!2642689 () Bool)

(assert (=> d!2310899 (= res!3021275 (not lt!2642689))))

(declare-fun e!4492010 () Bool)

(assert (=> d!2310899 (= lt!2642689 e!4492010)))

(declare-fun res!3021277 () Bool)

(assert (=> d!2310899 (=> res!3021277 e!4492010)))

(assert (=> d!2310899 (= res!3021277 ((_ is Nil!72658) lt!2642642))))

(assert (=> d!2310899 (= (isPrefix!6105 lt!2642642 input!7874) lt!2642689)))

(declare-fun b!7538972 () Bool)

(declare-fun res!3021274 () Bool)

(declare-fun e!4492012 () Bool)

(assert (=> b!7538972 (=> (not res!3021274) (not e!4492012))))

(assert (=> b!7538972 (= res!3021274 (= (head!15489 lt!2642642) (head!15489 input!7874)))))

(declare-fun b!7538974 () Bool)

(assert (=> b!7538974 (= e!4492011 (>= (size!42395 input!7874) (size!42395 lt!2642642)))))

(declare-fun b!7538971 () Bool)

(assert (=> b!7538971 (= e!4492010 e!4492012)))

(declare-fun res!3021276 () Bool)

(assert (=> b!7538971 (=> (not res!3021276) (not e!4492012))))

(assert (=> b!7538971 (= res!3021276 (not ((_ is Nil!72658) input!7874)))))

(declare-fun b!7538973 () Bool)

(assert (=> b!7538973 (= e!4492012 (isPrefix!6105 (tail!15035 lt!2642642) (tail!15035 input!7874)))))

(assert (= (and d!2310899 (not res!3021277)) b!7538971))

(assert (= (and b!7538971 res!3021276) b!7538972))

(assert (= (and b!7538972 res!3021274) b!7538973))

(assert (= (and d!2310899 (not res!3021275)) b!7538974))

(declare-fun m!8108816 () Bool)

(assert (=> b!7538972 m!8108816))

(assert (=> b!7538972 m!8108768))

(assert (=> b!7538974 m!8108630))

(declare-fun m!8108818 () Bool)

(assert (=> b!7538974 m!8108818))

(declare-fun m!8108820 () Bool)

(assert (=> b!7538973 m!8108820))

(assert (=> b!7538973 m!8108772))

(assert (=> b!7538973 m!8108820))

(assert (=> b!7538973 m!8108772))

(declare-fun m!8108822 () Bool)

(assert (=> b!7538973 m!8108822))

(assert (=> b!7538798 d!2310899))

(declare-fun d!2310901 () Bool)

(declare-fun lt!2642691 () List!72782)

(assert (=> d!2310901 (= (++!17416 knownP!30 lt!2642691) input!7874)))

(declare-fun e!4492016 () List!72782)

(assert (=> d!2310901 (= lt!2642691 e!4492016)))

(declare-fun c!1391944 () Bool)

(assert (=> d!2310901 (= c!1391944 ((_ is Cons!72658) knownP!30))))

(assert (=> d!2310901 (>= (size!42395 input!7874) (size!42395 knownP!30))))

(assert (=> d!2310901 (= (getSuffix!3585 input!7874 knownP!30) lt!2642691)))

(declare-fun b!7538979 () Bool)

(assert (=> b!7538979 (= e!4492016 (getSuffix!3585 (tail!15035 input!7874) (t!387489 knownP!30)))))

(declare-fun b!7538980 () Bool)

(assert (=> b!7538980 (= e!4492016 input!7874)))

(assert (= (and d!2310901 c!1391944) b!7538979))

(assert (= (and d!2310901 (not c!1391944)) b!7538980))

(declare-fun m!8108824 () Bool)

(assert (=> d!2310901 m!8108824))

(assert (=> d!2310901 m!8108630))

(assert (=> d!2310901 m!8108638))

(assert (=> b!7538979 m!8108772))

(assert (=> b!7538979 m!8108772))

(declare-fun m!8108826 () Bool)

(assert (=> b!7538979 m!8108826))

(assert (=> b!7538798 d!2310901))

(declare-fun d!2310903 () Bool)

(assert (=> d!2310903 (= (derivative!431 baseR!101 (++!17416 testedP!423 (Cons!72658 lt!2642651 Nil!72658))) (derivativeStep!5689 r!24333 lt!2642651))))

(declare-fun lt!2642700 () Unit!166736)

(declare-fun choose!58318 (Regex!19899 Regex!19899 List!72782 C!40124) Unit!166736)

(assert (=> d!2310903 (= lt!2642700 (choose!58318 baseR!101 r!24333 testedP!423 lt!2642651))))

(assert (=> d!2310903 (validRegex!10327 baseR!101)))

(assert (=> d!2310903 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!137 baseR!101 r!24333 testedP!423 lt!2642651) lt!2642700)))

(declare-fun bs!1939957 () Bool)

(assert (= bs!1939957 d!2310903))

(assert (=> bs!1939957 m!8108650))

(assert (=> bs!1939957 m!8108658))

(declare-fun m!8108846 () Bool)

(assert (=> bs!1939957 m!8108846))

(assert (=> bs!1939957 m!8108676))

(assert (=> bs!1939957 m!8108658))

(declare-fun m!8108852 () Bool)

(assert (=> bs!1939957 m!8108852))

(assert (=> b!7538798 d!2310903))

(declare-fun b!7538991 () Bool)

(declare-fun e!4492024 () List!72782)

(assert (=> b!7538991 (= e!4492024 lt!2642649)))

(declare-fun b!7538992 () Bool)

(assert (=> b!7538992 (= e!4492024 (Cons!72658 (h!79106 knownP!30) (++!17416 (t!387489 knownP!30) lt!2642649)))))

(declare-fun d!2310913 () Bool)

(declare-fun e!4492023 () Bool)

(assert (=> d!2310913 e!4492023))

(declare-fun res!3021287 () Bool)

(assert (=> d!2310913 (=> (not res!3021287) (not e!4492023))))

(declare-fun lt!2642702 () List!72782)

(assert (=> d!2310913 (= res!3021287 (= (content!15362 lt!2642702) ((_ map or) (content!15362 knownP!30) (content!15362 lt!2642649))))))

(assert (=> d!2310913 (= lt!2642702 e!4492024)))

(declare-fun c!1391949 () Bool)

(assert (=> d!2310913 (= c!1391949 ((_ is Nil!72658) knownP!30))))

(assert (=> d!2310913 (= (++!17416 knownP!30 lt!2642649) lt!2642702)))

(declare-fun b!7538993 () Bool)

(declare-fun res!3021286 () Bool)

(assert (=> b!7538993 (=> (not res!3021286) (not e!4492023))))

(assert (=> b!7538993 (= res!3021286 (= (size!42395 lt!2642702) (+ (size!42395 knownP!30) (size!42395 lt!2642649))))))

(declare-fun b!7538994 () Bool)

(assert (=> b!7538994 (= e!4492023 (or (not (= lt!2642649 Nil!72658)) (= lt!2642702 knownP!30)))))

(assert (= (and d!2310913 c!1391949) b!7538991))

(assert (= (and d!2310913 (not c!1391949)) b!7538992))

(assert (= (and d!2310913 res!3021287) b!7538993))

(assert (= (and b!7538993 res!3021286) b!7538994))

(declare-fun m!8108854 () Bool)

(assert (=> b!7538992 m!8108854))

(declare-fun m!8108856 () Bool)

(assert (=> d!2310913 m!8108856))

(declare-fun m!8108858 () Bool)

(assert (=> d!2310913 m!8108858))

(assert (=> d!2310913 m!8108712))

(declare-fun m!8108860 () Bool)

(assert (=> b!7538993 m!8108860))

(assert (=> b!7538993 m!8108638))

(assert (=> b!7538993 m!8108718))

(assert (=> b!7538798 d!2310913))

(declare-fun d!2310915 () Bool)

(assert (=> d!2310915 (isPrefix!6105 (++!17416 testedP!423 (Cons!72658 (head!15489 (getSuffix!3585 input!7874 testedP!423)) Nil!72658)) input!7874)))

(declare-fun lt!2642708 () Unit!166736)

(declare-fun choose!58320 (List!72782 List!72782) Unit!166736)

(assert (=> d!2310915 (= lt!2642708 (choose!58320 testedP!423 input!7874))))

(assert (=> d!2310915 (isPrefix!6105 testedP!423 input!7874)))

(assert (=> d!2310915 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1170 testedP!423 input!7874) lt!2642708)))

(declare-fun bs!1939958 () Bool)

(assert (= bs!1939958 d!2310915))

(assert (=> bs!1939958 m!8108656))

(declare-fun m!8108894 () Bool)

(assert (=> bs!1939958 m!8108894))

(assert (=> bs!1939958 m!8108656))

(declare-fun m!8108896 () Bool)

(assert (=> bs!1939958 m!8108896))

(assert (=> bs!1939958 m!8108692))

(declare-fun m!8108900 () Bool)

(assert (=> bs!1939958 m!8108900))

(declare-fun m!8108902 () Bool)

(assert (=> bs!1939958 m!8108902))

(assert (=> bs!1939958 m!8108900))

(assert (=> b!7538798 d!2310915))

(declare-fun d!2310927 () Bool)

(declare-fun e!4492056 () Bool)

(assert (=> d!2310927 e!4492056))

(declare-fun res!3021314 () Bool)

(assert (=> d!2310927 (=> res!3021314 e!4492056)))

(declare-fun lt!2642710 () Bool)

(assert (=> d!2310927 (= res!3021314 (not lt!2642710))))

(declare-fun e!4492055 () Bool)

(assert (=> d!2310927 (= lt!2642710 e!4492055)))

(declare-fun res!3021316 () Bool)

(assert (=> d!2310927 (=> res!3021316 e!4492055)))

(assert (=> d!2310927 (= res!3021316 ((_ is Nil!72658) lt!2642642))))

(assert (=> d!2310927 (= (isPrefix!6105 lt!2642642 knownP!30) lt!2642710)))

(declare-fun b!7539039 () Bool)

(declare-fun res!3021313 () Bool)

(declare-fun e!4492057 () Bool)

(assert (=> b!7539039 (=> (not res!3021313) (not e!4492057))))

(assert (=> b!7539039 (= res!3021313 (= (head!15489 lt!2642642) (head!15489 knownP!30)))))

(declare-fun b!7539041 () Bool)

(assert (=> b!7539041 (= e!4492056 (>= (size!42395 knownP!30) (size!42395 lt!2642642)))))

(declare-fun b!7539038 () Bool)

(assert (=> b!7539038 (= e!4492055 e!4492057)))

(declare-fun res!3021315 () Bool)

(assert (=> b!7539038 (=> (not res!3021315) (not e!4492057))))

(assert (=> b!7539038 (= res!3021315 (not ((_ is Nil!72658) knownP!30)))))

(declare-fun b!7539040 () Bool)

(assert (=> b!7539040 (= e!4492057 (isPrefix!6105 (tail!15035 lt!2642642) (tail!15035 knownP!30)))))

(assert (= (and d!2310927 (not res!3021316)) b!7539038))

(assert (= (and b!7539038 res!3021315) b!7539039))

(assert (= (and b!7539039 res!3021313) b!7539040))

(assert (= (and d!2310927 (not res!3021314)) b!7539041))

(assert (=> b!7539039 m!8108816))

(assert (=> b!7539039 m!8108766))

(assert (=> b!7539041 m!8108638))

(assert (=> b!7539041 m!8108818))

(assert (=> b!7539040 m!8108820))

(assert (=> b!7539040 m!8108770))

(assert (=> b!7539040 m!8108820))

(assert (=> b!7539040 m!8108770))

(declare-fun m!8108904 () Bool)

(assert (=> b!7539040 m!8108904))

(assert (=> b!7538798 d!2310927))

(declare-fun d!2310929 () Bool)

(declare-fun lt!2642711 () List!72782)

(assert (=> d!2310929 (= (++!17416 lt!2642642 lt!2642711) knownP!30)))

(declare-fun e!4492058 () List!72782)

(assert (=> d!2310929 (= lt!2642711 e!4492058)))

(declare-fun c!1391959 () Bool)

(assert (=> d!2310929 (= c!1391959 ((_ is Cons!72658) lt!2642642))))

(assert (=> d!2310929 (>= (size!42395 knownP!30) (size!42395 lt!2642642))))

(assert (=> d!2310929 (= (getSuffix!3585 knownP!30 lt!2642642) lt!2642711)))

(declare-fun b!7539042 () Bool)

(assert (=> b!7539042 (= e!4492058 (getSuffix!3585 (tail!15035 knownP!30) (t!387489 lt!2642642)))))

(declare-fun b!7539043 () Bool)

(assert (=> b!7539043 (= e!4492058 knownP!30)))

(assert (= (and d!2310929 c!1391959) b!7539042))

(assert (= (and d!2310929 (not c!1391959)) b!7539043))

(declare-fun m!8108906 () Bool)

(assert (=> d!2310929 m!8108906))

(assert (=> d!2310929 m!8108638))

(assert (=> d!2310929 m!8108818))

(assert (=> b!7539042 m!8108770))

(assert (=> b!7539042 m!8108770))

(declare-fun m!8108908 () Bool)

(assert (=> b!7539042 m!8108908))

(assert (=> b!7538798 d!2310929))

(declare-fun bm!691585 () Bool)

(declare-fun call!691591 () Regex!19899)

(declare-fun call!691593 () Regex!19899)

(assert (=> bm!691585 (= call!691591 call!691593)))

(declare-fun call!691590 () Regex!19899)

(declare-fun bm!691586 () Bool)

(declare-fun c!1392001 () Bool)

(assert (=> bm!691586 (= call!691590 (derivativeStep!5689 (ite c!1392001 (regOne!40311 r!24333) (regTwo!40310 r!24333)) lt!2642651))))

(declare-fun bm!691587 () Bool)

(declare-fun c!1391999 () Bool)

(assert (=> bm!691587 (= call!691593 (derivativeStep!5689 (ite c!1392001 (regTwo!40311 r!24333) (ite c!1391999 (reg!20228 r!24333) (regOne!40310 r!24333))) lt!2642651))))

(declare-fun b!7539143 () Bool)

(declare-fun e!4492114 () Regex!19899)

(declare-fun e!4492117 () Regex!19899)

(assert (=> b!7539143 (= e!4492114 e!4492117)))

(assert (=> b!7539143 (= c!1391999 ((_ is Star!19899) r!24333))))

(declare-fun b!7539144 () Bool)

(declare-fun e!4492113 () Regex!19899)

(assert (=> b!7539144 (= e!4492113 EmptyLang!19899)))

(declare-fun b!7539145 () Bool)

(declare-fun e!4492115 () Regex!19899)

(assert (=> b!7539145 (= e!4492113 e!4492115)))

(declare-fun c!1392002 () Bool)

(assert (=> b!7539145 (= c!1392002 ((_ is ElementMatch!19899) r!24333))))

(declare-fun bm!691588 () Bool)

(declare-fun call!691592 () Regex!19899)

(assert (=> bm!691588 (= call!691592 call!691591)))

(declare-fun b!7539146 () Bool)

(declare-fun e!4492116 () Regex!19899)

(assert (=> b!7539146 (= e!4492116 (Union!19899 (Concat!28744 call!691592 (regTwo!40310 r!24333)) EmptyLang!19899))))

(declare-fun d!2310931 () Bool)

(declare-fun lt!2642736 () Regex!19899)

(assert (=> d!2310931 (validRegex!10327 lt!2642736)))

(assert (=> d!2310931 (= lt!2642736 e!4492113)))

(declare-fun c!1392000 () Bool)

(assert (=> d!2310931 (= c!1392000 (or ((_ is EmptyExpr!19899) r!24333) ((_ is EmptyLang!19899) r!24333)))))

(assert (=> d!2310931 (validRegex!10327 r!24333)))

(assert (=> d!2310931 (= (derivativeStep!5689 r!24333 lt!2642651) lt!2642736)))

(declare-fun b!7539147 () Bool)

(assert (=> b!7539147 (= e!4492115 (ite (= lt!2642651 (c!1391906 r!24333)) EmptyExpr!19899 EmptyLang!19899))))

(declare-fun b!7539148 () Bool)

(assert (=> b!7539148 (= c!1392001 ((_ is Union!19899) r!24333))))

(assert (=> b!7539148 (= e!4492115 e!4492114)))

(declare-fun b!7539149 () Bool)

(declare-fun c!1391998 () Bool)

(assert (=> b!7539149 (= c!1391998 (nullable!8673 (regOne!40310 r!24333)))))

(assert (=> b!7539149 (= e!4492117 e!4492116)))

(declare-fun b!7539150 () Bool)

(assert (=> b!7539150 (= e!4492116 (Union!19899 (Concat!28744 call!691592 (regTwo!40310 r!24333)) call!691590))))

(declare-fun b!7539151 () Bool)

(assert (=> b!7539151 (= e!4492114 (Union!19899 call!691590 call!691593))))

(declare-fun b!7539152 () Bool)

(assert (=> b!7539152 (= e!4492117 (Concat!28744 call!691591 r!24333))))

(assert (= (and d!2310931 c!1392000) b!7539144))

(assert (= (and d!2310931 (not c!1392000)) b!7539145))

(assert (= (and b!7539145 c!1392002) b!7539147))

(assert (= (and b!7539145 (not c!1392002)) b!7539148))

(assert (= (and b!7539148 c!1392001) b!7539151))

(assert (= (and b!7539148 (not c!1392001)) b!7539143))

(assert (= (and b!7539143 c!1391999) b!7539152))

(assert (= (and b!7539143 (not c!1391999)) b!7539149))

(assert (= (and b!7539149 c!1391998) b!7539150))

(assert (= (and b!7539149 (not c!1391998)) b!7539146))

(assert (= (or b!7539150 b!7539146) bm!691588))

(assert (= (or b!7539152 bm!691588) bm!691585))

(assert (= (or b!7539151 bm!691585) bm!691587))

(assert (= (or b!7539151 b!7539150) bm!691586))

(declare-fun m!8108998 () Bool)

(assert (=> bm!691586 m!8108998))

(declare-fun m!8109000 () Bool)

(assert (=> bm!691587 m!8109000))

(declare-fun m!8109002 () Bool)

(assert (=> d!2310931 m!8109002))

(assert (=> d!2310931 m!8108634))

(declare-fun m!8109004 () Bool)

(assert (=> b!7539149 m!8109004))

(assert (=> b!7538798 d!2310931))

(declare-fun d!2310965 () Bool)

(assert (=> d!2310965 (isPrefix!6105 lt!2642642 knownP!30)))

(declare-fun lt!2642740 () Unit!166736)

(declare-fun choose!58322 (List!72782 List!72782 List!72782) Unit!166736)

(assert (=> d!2310965 (= lt!2642740 (choose!58322 knownP!30 lt!2642642 input!7874))))

(assert (=> d!2310965 (isPrefix!6105 knownP!30 input!7874)))

(assert (=> d!2310965 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!855 knownP!30 lt!2642642 input!7874) lt!2642740)))

(declare-fun bs!1939963 () Bool)

(assert (= bs!1939963 d!2310965))

(assert (=> bs!1939963 m!8108674))

(declare-fun m!8109006 () Bool)

(assert (=> bs!1939963 m!8109006))

(assert (=> bs!1939963 m!8108682))

(assert (=> b!7538798 d!2310965))

(declare-fun d!2310967 () Bool)

(assert (=> d!2310967 (= (head!15489 lt!2642641) (h!79106 lt!2642641))))

(assert (=> b!7538798 d!2310967))

(declare-fun b!7539238 () Bool)

(declare-fun e!4492149 () Bool)

(declare-fun e!4492153 () Bool)

(assert (=> b!7539238 (= e!4492149 e!4492153)))

(declare-fun c!1392011 () Bool)

(assert (=> b!7539238 (= c!1392011 ((_ is EmptyLang!19899) r!24333))))

(declare-fun b!7539239 () Bool)

(declare-fun e!4492155 () Bool)

(assert (=> b!7539239 (= e!4492155 (nullable!8673 r!24333))))

(declare-fun b!7539240 () Bool)

(declare-fun e!4492154 () Bool)

(assert (=> b!7539240 (= e!4492154 (not (= (head!15489 lt!2642647) (c!1391906 r!24333))))))

(declare-fun bm!691591 () Bool)

(declare-fun call!691596 () Bool)

(declare-fun isEmpty!41369 (List!72782) Bool)

(assert (=> bm!691591 (= call!691596 (isEmpty!41369 lt!2642647))))

(declare-fun b!7539242 () Bool)

(declare-fun e!4492152 () Bool)

(assert (=> b!7539242 (= e!4492152 (= (head!15489 lt!2642647) (c!1391906 r!24333)))))

(declare-fun b!7539243 () Bool)

(declare-fun e!4492150 () Bool)

(assert (=> b!7539243 (= e!4492150 e!4492154)))

(declare-fun res!3021361 () Bool)

(assert (=> b!7539243 (=> res!3021361 e!4492154)))

(assert (=> b!7539243 (= res!3021361 call!691596)))

(declare-fun b!7539244 () Bool)

(declare-fun res!3021360 () Bool)

(assert (=> b!7539244 (=> (not res!3021360) (not e!4492152))))

(assert (=> b!7539244 (= res!3021360 (isEmpty!41369 (tail!15035 lt!2642647)))))

(declare-fun d!2310969 () Bool)

(assert (=> d!2310969 e!4492149))

(declare-fun c!1392010 () Bool)

(assert (=> d!2310969 (= c!1392010 ((_ is EmptyExpr!19899) r!24333))))

(declare-fun lt!2642743 () Bool)

(assert (=> d!2310969 (= lt!2642743 e!4492155)))

(declare-fun c!1392009 () Bool)

(assert (=> d!2310969 (= c!1392009 (isEmpty!41369 lt!2642647))))

(assert (=> d!2310969 (validRegex!10327 r!24333)))

(assert (=> d!2310969 (= (matchR!9501 r!24333 lt!2642647) lt!2642743)))

(declare-fun b!7539241 () Bool)

(assert (=> b!7539241 (= e!4492155 (matchR!9501 (derivativeStep!5689 r!24333 (head!15489 lt!2642647)) (tail!15035 lt!2642647)))))

(declare-fun b!7539245 () Bool)

(declare-fun res!3021364 () Bool)

(declare-fun e!4492151 () Bool)

(assert (=> b!7539245 (=> res!3021364 e!4492151)))

(assert (=> b!7539245 (= res!3021364 (not ((_ is ElementMatch!19899) r!24333)))))

(assert (=> b!7539245 (= e!4492153 e!4492151)))

(declare-fun b!7539246 () Bool)

(declare-fun res!3021362 () Bool)

(assert (=> b!7539246 (=> res!3021362 e!4492151)))

(assert (=> b!7539246 (= res!3021362 e!4492152)))

(declare-fun res!3021363 () Bool)

(assert (=> b!7539246 (=> (not res!3021363) (not e!4492152))))

(assert (=> b!7539246 (= res!3021363 lt!2642743)))

(declare-fun b!7539247 () Bool)

(assert (=> b!7539247 (= e!4492153 (not lt!2642743))))

(declare-fun b!7539248 () Bool)

(declare-fun res!3021359 () Bool)

(assert (=> b!7539248 (=> (not res!3021359) (not e!4492152))))

(assert (=> b!7539248 (= res!3021359 (not call!691596))))

(declare-fun b!7539249 () Bool)

(assert (=> b!7539249 (= e!4492149 (= lt!2642743 call!691596))))

(declare-fun b!7539250 () Bool)

(assert (=> b!7539250 (= e!4492151 e!4492150)))

(declare-fun res!3021358 () Bool)

(assert (=> b!7539250 (=> (not res!3021358) (not e!4492150))))

(assert (=> b!7539250 (= res!3021358 (not lt!2642743))))

(declare-fun b!7539251 () Bool)

(declare-fun res!3021365 () Bool)

(assert (=> b!7539251 (=> res!3021365 e!4492154)))

(assert (=> b!7539251 (= res!3021365 (not (isEmpty!41369 (tail!15035 lt!2642647))))))

(assert (= (and d!2310969 c!1392009) b!7539239))

(assert (= (and d!2310969 (not c!1392009)) b!7539241))

(assert (= (and d!2310969 c!1392010) b!7539249))

(assert (= (and d!2310969 (not c!1392010)) b!7539238))

(assert (= (and b!7539238 c!1392011) b!7539247))

(assert (= (and b!7539238 (not c!1392011)) b!7539245))

(assert (= (and b!7539245 (not res!3021364)) b!7539246))

(assert (= (and b!7539246 res!3021363) b!7539248))

(assert (= (and b!7539248 res!3021359) b!7539244))

(assert (= (and b!7539244 res!3021360) b!7539242))

(assert (= (and b!7539246 (not res!3021362)) b!7539250))

(assert (= (and b!7539250 res!3021358) b!7539243))

(assert (= (and b!7539243 (not res!3021361)) b!7539251))

(assert (= (and b!7539251 (not res!3021365)) b!7539240))

(assert (= (or b!7539249 b!7539243 b!7539248) bm!691591))

(declare-fun m!8109008 () Bool)

(assert (=> d!2310969 m!8109008))

(assert (=> d!2310969 m!8108634))

(declare-fun m!8109010 () Bool)

(assert (=> b!7539242 m!8109010))

(assert (=> b!7539241 m!8109010))

(assert (=> b!7539241 m!8109010))

(declare-fun m!8109012 () Bool)

(assert (=> b!7539241 m!8109012))

(declare-fun m!8109014 () Bool)

(assert (=> b!7539241 m!8109014))

(assert (=> b!7539241 m!8109012))

(assert (=> b!7539241 m!8109014))

(declare-fun m!8109016 () Bool)

(assert (=> b!7539241 m!8109016))

(assert (=> b!7539244 m!8109014))

(assert (=> b!7539244 m!8109014))

(declare-fun m!8109018 () Bool)

(assert (=> b!7539244 m!8109018))

(declare-fun m!8109020 () Bool)

(assert (=> b!7539239 m!8109020))

(assert (=> bm!691591 m!8109008))

(assert (=> b!7539251 m!8109014))

(assert (=> b!7539251 m!8109014))

(assert (=> b!7539251 m!8109018))

(assert (=> b!7539240 m!8109010))

(assert (=> b!7538819 d!2310969))

(declare-fun d!2310971 () Bool)

(declare-fun lt!2642744 () List!72782)

(assert (=> d!2310971 (= (++!17416 testedP!423 lt!2642744) knownP!30)))

(declare-fun e!4492156 () List!72782)

(assert (=> d!2310971 (= lt!2642744 e!4492156)))

(declare-fun c!1392012 () Bool)

(assert (=> d!2310971 (= c!1392012 ((_ is Cons!72658) testedP!423))))

(assert (=> d!2310971 (>= (size!42395 knownP!30) (size!42395 testedP!423))))

(assert (=> d!2310971 (= (getSuffix!3585 knownP!30 testedP!423) lt!2642744)))

(declare-fun b!7539252 () Bool)

(assert (=> b!7539252 (= e!4492156 (getSuffix!3585 (tail!15035 knownP!30) (t!387489 testedP!423)))))

(declare-fun b!7539253 () Bool)

(assert (=> b!7539253 (= e!4492156 knownP!30)))

(assert (= (and d!2310971 c!1392012) b!7539252))

(assert (= (and d!2310971 (not c!1392012)) b!7539253))

(declare-fun m!8109022 () Bool)

(assert (=> d!2310971 m!8109022))

(assert (=> d!2310971 m!8108638))

(assert (=> d!2310971 m!8108636))

(assert (=> b!7539252 m!8108770))

(assert (=> b!7539252 m!8108770))

(declare-fun m!8109024 () Bool)

(assert (=> b!7539252 m!8109024))

(assert (=> b!7538819 d!2310971))

(declare-fun d!2310973 () Bool)

(declare-fun e!4492158 () Bool)

(assert (=> d!2310973 e!4492158))

(declare-fun res!3021367 () Bool)

(assert (=> d!2310973 (=> res!3021367 e!4492158)))

(declare-fun lt!2642745 () Bool)

(assert (=> d!2310973 (= res!3021367 (not lt!2642745))))

(declare-fun e!4492157 () Bool)

(assert (=> d!2310973 (= lt!2642745 e!4492157)))

(declare-fun res!3021369 () Bool)

(assert (=> d!2310973 (=> res!3021369 e!4492157)))

(assert (=> d!2310973 (= res!3021369 ((_ is Nil!72658) testedP!423))))

(assert (=> d!2310973 (= (isPrefix!6105 testedP!423 knownP!30) lt!2642745)))

(declare-fun b!7539255 () Bool)

(declare-fun res!3021366 () Bool)

(declare-fun e!4492159 () Bool)

(assert (=> b!7539255 (=> (not res!3021366) (not e!4492159))))

(assert (=> b!7539255 (= res!3021366 (= (head!15489 testedP!423) (head!15489 knownP!30)))))

(declare-fun b!7539257 () Bool)

(assert (=> b!7539257 (= e!4492158 (>= (size!42395 knownP!30) (size!42395 testedP!423)))))

(declare-fun b!7539254 () Bool)

(assert (=> b!7539254 (= e!4492157 e!4492159)))

(declare-fun res!3021368 () Bool)

(assert (=> b!7539254 (=> (not res!3021368) (not e!4492159))))

(assert (=> b!7539254 (= res!3021368 (not ((_ is Nil!72658) knownP!30)))))

(declare-fun b!7539256 () Bool)

(assert (=> b!7539256 (= e!4492159 (isPrefix!6105 (tail!15035 testedP!423) (tail!15035 knownP!30)))))

(assert (= (and d!2310973 (not res!3021369)) b!7539254))

(assert (= (and b!7539254 res!3021368) b!7539255))

(assert (= (and b!7539255 res!3021366) b!7539256))

(assert (= (and d!2310973 (not res!3021367)) b!7539257))

(declare-fun m!8109026 () Bool)

(assert (=> b!7539255 m!8109026))

(assert (=> b!7539255 m!8108766))

(assert (=> b!7539257 m!8108638))

(assert (=> b!7539257 m!8108636))

(declare-fun m!8109028 () Bool)

(assert (=> b!7539256 m!8109028))

(assert (=> b!7539256 m!8108770))

(assert (=> b!7539256 m!8109028))

(assert (=> b!7539256 m!8108770))

(declare-fun m!8109030 () Bool)

(assert (=> b!7539256 m!8109030))

(assert (=> b!7538819 d!2310973))

(declare-fun d!2310975 () Bool)

(assert (=> d!2310975 (isPrefix!6105 testedP!423 knownP!30)))

(declare-fun lt!2642746 () Unit!166736)

(assert (=> d!2310975 (= lt!2642746 (choose!58322 knownP!30 testedP!423 input!7874))))

(assert (=> d!2310975 (isPrefix!6105 knownP!30 input!7874)))

(assert (=> d!2310975 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!855 knownP!30 testedP!423 input!7874) lt!2642746)))

(declare-fun bs!1939964 () Bool)

(assert (= bs!1939964 d!2310975))

(assert (=> bs!1939964 m!8108646))

(declare-fun m!8109032 () Bool)

(assert (=> bs!1939964 m!8109032))

(assert (=> bs!1939964 m!8108682))

(assert (=> b!7538819 d!2310975))

(declare-fun d!2310977 () Bool)

(declare-fun lostCauseFct!429 (Regex!19899) Bool)

(assert (=> d!2310977 (= (lostCause!1691 r!24333) (lostCauseFct!429 r!24333))))

(declare-fun bs!1939965 () Bool)

(assert (= bs!1939965 d!2310977))

(declare-fun m!8109034 () Bool)

(assert (=> bs!1939965 m!8109034))

(assert (=> b!7538800 d!2310977))

(declare-fun d!2310979 () Bool)

(declare-fun lt!2642749 () Int)

(assert (=> d!2310979 (>= lt!2642749 0)))

(declare-fun e!4492162 () Int)

(assert (=> d!2310979 (= lt!2642749 e!4492162)))

(declare-fun c!1392015 () Bool)

(assert (=> d!2310979 (= c!1392015 ((_ is Nil!72658) testedP!423))))

(assert (=> d!2310979 (= (size!42395 testedP!423) lt!2642749)))

(declare-fun b!7539262 () Bool)

(assert (=> b!7539262 (= e!4492162 0)))

(declare-fun b!7539263 () Bool)

(assert (=> b!7539263 (= e!4492162 (+ 1 (size!42395 (t!387489 testedP!423))))))

(assert (= (and d!2310979 c!1392015) b!7539262))

(assert (= (and d!2310979 (not c!1392015)) b!7539263))

(declare-fun m!8109036 () Bool)

(assert (=> b!7539263 m!8109036))

(assert (=> b!7538796 d!2310979))

(declare-fun d!2310981 () Bool)

(declare-fun lt!2642750 () Int)

(assert (=> d!2310981 (>= lt!2642750 0)))

(declare-fun e!4492163 () Int)

(assert (=> d!2310981 (= lt!2642750 e!4492163)))

(declare-fun c!1392016 () Bool)

(assert (=> d!2310981 (= c!1392016 ((_ is Nil!72658) knownP!30))))

(assert (=> d!2310981 (= (size!42395 knownP!30) lt!2642750)))

(declare-fun b!7539264 () Bool)

(assert (=> b!7539264 (= e!4492163 0)))

(declare-fun b!7539265 () Bool)

(assert (=> b!7539265 (= e!4492163 (+ 1 (size!42395 (t!387489 knownP!30))))))

(assert (= (and d!2310981 c!1392016) b!7539264))

(assert (= (and d!2310981 (not c!1392016)) b!7539265))

(declare-fun m!8109038 () Bool)

(assert (=> b!7539265 m!8109038))

(assert (=> b!7538796 d!2310981))

(declare-fun d!2310983 () Bool)

(declare-fun lt!2642751 () Regex!19899)

(assert (=> d!2310983 (validRegex!10327 lt!2642751)))

(declare-fun e!4492164 () Regex!19899)

(assert (=> d!2310983 (= lt!2642751 e!4492164)))

(declare-fun c!1392017 () Bool)

(assert (=> d!2310983 (= c!1392017 ((_ is Cons!72658) testedP!423))))

(assert (=> d!2310983 (validRegex!10327 baseR!101)))

(assert (=> d!2310983 (= (derivative!431 baseR!101 testedP!423) lt!2642751)))

(declare-fun b!7539266 () Bool)

(assert (=> b!7539266 (= e!4492164 (derivative!431 (derivativeStep!5689 baseR!101 (h!79106 testedP!423)) (t!387489 testedP!423)))))

(declare-fun b!7539267 () Bool)

(assert (=> b!7539267 (= e!4492164 baseR!101)))

(assert (= (and d!2310983 c!1392017) b!7539266))

(assert (= (and d!2310983 (not c!1392017)) b!7539267))

(declare-fun m!8109040 () Bool)

(assert (=> d!2310983 m!8109040))

(assert (=> d!2310983 m!8108650))

(declare-fun m!8109042 () Bool)

(assert (=> b!7539266 m!8109042))

(assert (=> b!7539266 m!8109042))

(declare-fun m!8109044 () Bool)

(assert (=> b!7539266 m!8109044))

(assert (=> b!7538817 d!2310983))

(declare-fun b!7539268 () Bool)

(declare-fun e!4492165 () Bool)

(declare-fun e!4492169 () Bool)

(assert (=> b!7539268 (= e!4492165 e!4492169)))

(declare-fun c!1392020 () Bool)

(assert (=> b!7539268 (= c!1392020 ((_ is EmptyLang!19899) baseR!101))))

(declare-fun b!7539269 () Bool)

(declare-fun e!4492171 () Bool)

(assert (=> b!7539269 (= e!4492171 (nullable!8673 baseR!101))))

(declare-fun b!7539270 () Bool)

(declare-fun e!4492170 () Bool)

(assert (=> b!7539270 (= e!4492170 (not (= (head!15489 knownP!30) (c!1391906 baseR!101))))))

(declare-fun bm!691592 () Bool)

(declare-fun call!691597 () Bool)

(assert (=> bm!691592 (= call!691597 (isEmpty!41369 knownP!30))))

(declare-fun b!7539272 () Bool)

(declare-fun e!4492168 () Bool)

(assert (=> b!7539272 (= e!4492168 (= (head!15489 knownP!30) (c!1391906 baseR!101)))))

(declare-fun b!7539273 () Bool)

(declare-fun e!4492166 () Bool)

(assert (=> b!7539273 (= e!4492166 e!4492170)))

(declare-fun res!3021373 () Bool)

(assert (=> b!7539273 (=> res!3021373 e!4492170)))

(assert (=> b!7539273 (= res!3021373 call!691597)))

(declare-fun b!7539274 () Bool)

(declare-fun res!3021372 () Bool)

(assert (=> b!7539274 (=> (not res!3021372) (not e!4492168))))

(assert (=> b!7539274 (= res!3021372 (isEmpty!41369 (tail!15035 knownP!30)))))

(declare-fun d!2310985 () Bool)

(assert (=> d!2310985 e!4492165))

(declare-fun c!1392019 () Bool)

(assert (=> d!2310985 (= c!1392019 ((_ is EmptyExpr!19899) baseR!101))))

(declare-fun lt!2642752 () Bool)

(assert (=> d!2310985 (= lt!2642752 e!4492171)))

(declare-fun c!1392018 () Bool)

(assert (=> d!2310985 (= c!1392018 (isEmpty!41369 knownP!30))))

(assert (=> d!2310985 (validRegex!10327 baseR!101)))

(assert (=> d!2310985 (= (matchR!9501 baseR!101 knownP!30) lt!2642752)))

(declare-fun b!7539271 () Bool)

(assert (=> b!7539271 (= e!4492171 (matchR!9501 (derivativeStep!5689 baseR!101 (head!15489 knownP!30)) (tail!15035 knownP!30)))))

(declare-fun b!7539275 () Bool)

(declare-fun res!3021376 () Bool)

(declare-fun e!4492167 () Bool)

(assert (=> b!7539275 (=> res!3021376 e!4492167)))

(assert (=> b!7539275 (= res!3021376 (not ((_ is ElementMatch!19899) baseR!101)))))

(assert (=> b!7539275 (= e!4492169 e!4492167)))

(declare-fun b!7539276 () Bool)

(declare-fun res!3021374 () Bool)

(assert (=> b!7539276 (=> res!3021374 e!4492167)))

(assert (=> b!7539276 (= res!3021374 e!4492168)))

(declare-fun res!3021375 () Bool)

(assert (=> b!7539276 (=> (not res!3021375) (not e!4492168))))

(assert (=> b!7539276 (= res!3021375 lt!2642752)))

(declare-fun b!7539277 () Bool)

(assert (=> b!7539277 (= e!4492169 (not lt!2642752))))

(declare-fun b!7539278 () Bool)

(declare-fun res!3021371 () Bool)

(assert (=> b!7539278 (=> (not res!3021371) (not e!4492168))))

(assert (=> b!7539278 (= res!3021371 (not call!691597))))

(declare-fun b!7539279 () Bool)

(assert (=> b!7539279 (= e!4492165 (= lt!2642752 call!691597))))

(declare-fun b!7539280 () Bool)

(assert (=> b!7539280 (= e!4492167 e!4492166)))

(declare-fun res!3021370 () Bool)

(assert (=> b!7539280 (=> (not res!3021370) (not e!4492166))))

(assert (=> b!7539280 (= res!3021370 (not lt!2642752))))

(declare-fun b!7539281 () Bool)

(declare-fun res!3021377 () Bool)

(assert (=> b!7539281 (=> res!3021377 e!4492170)))

(assert (=> b!7539281 (= res!3021377 (not (isEmpty!41369 (tail!15035 knownP!30))))))

(assert (= (and d!2310985 c!1392018) b!7539269))

(assert (= (and d!2310985 (not c!1392018)) b!7539271))

(assert (= (and d!2310985 c!1392019) b!7539279))

(assert (= (and d!2310985 (not c!1392019)) b!7539268))

(assert (= (and b!7539268 c!1392020) b!7539277))

(assert (= (and b!7539268 (not c!1392020)) b!7539275))

(assert (= (and b!7539275 (not res!3021376)) b!7539276))

(assert (= (and b!7539276 res!3021375) b!7539278))

(assert (= (and b!7539278 res!3021371) b!7539274))

(assert (= (and b!7539274 res!3021372) b!7539272))

(assert (= (and b!7539276 (not res!3021374)) b!7539280))

(assert (= (and b!7539280 res!3021370) b!7539273))

(assert (= (and b!7539273 (not res!3021373)) b!7539281))

(assert (= (and b!7539281 (not res!3021377)) b!7539270))

(assert (= (or b!7539279 b!7539273 b!7539278) bm!691592))

(declare-fun m!8109046 () Bool)

(assert (=> d!2310985 m!8109046))

(assert (=> d!2310985 m!8108650))

(assert (=> b!7539272 m!8108766))

(assert (=> b!7539271 m!8108766))

(assert (=> b!7539271 m!8108766))

(declare-fun m!8109048 () Bool)

(assert (=> b!7539271 m!8109048))

(assert (=> b!7539271 m!8108770))

(assert (=> b!7539271 m!8109048))

(assert (=> b!7539271 m!8108770))

(declare-fun m!8109050 () Bool)

(assert (=> b!7539271 m!8109050))

(assert (=> b!7539274 m!8108770))

(assert (=> b!7539274 m!8108770))

(declare-fun m!8109052 () Bool)

(assert (=> b!7539274 m!8109052))

(declare-fun m!8109054 () Bool)

(assert (=> b!7539269 m!8109054))

(assert (=> bm!691592 m!8109046))

(assert (=> b!7539281 m!8108770))

(assert (=> b!7539281 m!8108770))

(assert (=> b!7539281 m!8109052))

(assert (=> b!7539270 m!8108766))

(assert (=> b!7538806 d!2310985))

(declare-fun bm!691593 () Bool)

(declare-fun call!691598 () Bool)

(declare-fun call!691600 () Bool)

(assert (=> bm!691593 (= call!691598 call!691600)))

(declare-fun c!1392022 () Bool)

(declare-fun c!1392021 () Bool)

(declare-fun bm!691594 () Bool)

(assert (=> bm!691594 (= call!691600 (validRegex!10327 (ite c!1392022 (reg!20228 baseR!101) (ite c!1392021 (regTwo!40311 baseR!101) (regTwo!40310 baseR!101)))))))

(declare-fun d!2310987 () Bool)

(declare-fun res!3021381 () Bool)

(declare-fun e!4492173 () Bool)

(assert (=> d!2310987 (=> res!3021381 e!4492173)))

(assert (=> d!2310987 (= res!3021381 ((_ is ElementMatch!19899) baseR!101))))

(assert (=> d!2310987 (= (validRegex!10327 baseR!101) e!4492173)))

(declare-fun b!7539282 () Bool)

(declare-fun e!4492176 () Bool)

(declare-fun e!4492178 () Bool)

(assert (=> b!7539282 (= e!4492176 e!4492178)))

(declare-fun res!3021382 () Bool)

(assert (=> b!7539282 (=> (not res!3021382) (not e!4492178))))

(declare-fun call!691599 () Bool)

(assert (=> b!7539282 (= res!3021382 call!691599)))

(declare-fun b!7539283 () Bool)

(assert (=> b!7539283 (= e!4492178 call!691598)))

(declare-fun b!7539284 () Bool)

(declare-fun res!3021379 () Bool)

(declare-fun e!4492177 () Bool)

(assert (=> b!7539284 (=> (not res!3021379) (not e!4492177))))

(assert (=> b!7539284 (= res!3021379 call!691599)))

(declare-fun e!4492175 () Bool)

(assert (=> b!7539284 (= e!4492175 e!4492177)))

(declare-fun b!7539285 () Bool)

(assert (=> b!7539285 (= e!4492177 call!691598)))

(declare-fun bm!691595 () Bool)

(assert (=> bm!691595 (= call!691599 (validRegex!10327 (ite c!1392021 (regOne!40311 baseR!101) (regOne!40310 baseR!101))))))

(declare-fun b!7539286 () Bool)

(declare-fun e!4492174 () Bool)

(declare-fun e!4492172 () Bool)

(assert (=> b!7539286 (= e!4492174 e!4492172)))

(declare-fun res!3021378 () Bool)

(assert (=> b!7539286 (= res!3021378 (not (nullable!8673 (reg!20228 baseR!101))))))

(assert (=> b!7539286 (=> (not res!3021378) (not e!4492172))))

(declare-fun b!7539287 () Bool)

(assert (=> b!7539287 (= e!4492174 e!4492175)))

(assert (=> b!7539287 (= c!1392021 ((_ is Union!19899) baseR!101))))

(declare-fun b!7539288 () Bool)

(assert (=> b!7539288 (= e!4492173 e!4492174)))

(assert (=> b!7539288 (= c!1392022 ((_ is Star!19899) baseR!101))))

(declare-fun b!7539289 () Bool)

(assert (=> b!7539289 (= e!4492172 call!691600)))

(declare-fun b!7539290 () Bool)

(declare-fun res!3021380 () Bool)

(assert (=> b!7539290 (=> res!3021380 e!4492176)))

(assert (=> b!7539290 (= res!3021380 (not ((_ is Concat!28744) baseR!101)))))

(assert (=> b!7539290 (= e!4492175 e!4492176)))

(assert (= (and d!2310987 (not res!3021381)) b!7539288))

(assert (= (and b!7539288 c!1392022) b!7539286))

(assert (= (and b!7539288 (not c!1392022)) b!7539287))

(assert (= (and b!7539286 res!3021378) b!7539289))

(assert (= (and b!7539287 c!1392021) b!7539284))

(assert (= (and b!7539287 (not c!1392021)) b!7539290))

(assert (= (and b!7539284 res!3021379) b!7539285))

(assert (= (and b!7539290 (not res!3021380)) b!7539282))

(assert (= (and b!7539282 res!3021382) b!7539283))

(assert (= (or b!7539284 b!7539282) bm!691595))

(assert (= (or b!7539285 b!7539283) bm!691593))

(assert (= (or b!7539289 bm!691593) bm!691594))

(declare-fun m!8109056 () Bool)

(assert (=> bm!691594 m!8109056))

(declare-fun m!8109058 () Bool)

(assert (=> bm!691595 m!8109058))

(declare-fun m!8109060 () Bool)

(assert (=> b!7539286 m!8109060))

(assert (=> start!729124 d!2310987))

(declare-fun d!2310989 () Bool)

(assert (=> d!2310989 (= lt!2642636 lt!2642641)))

(declare-fun lt!2642755 () Unit!166736)

(declare-fun choose!58324 (List!72782 List!72782 List!72782 List!72782 List!72782) Unit!166736)

(assert (=> d!2310989 (= lt!2642755 (choose!58324 testedP!423 lt!2642636 testedP!423 lt!2642641 input!7874))))

(assert (=> d!2310989 (isPrefix!6105 testedP!423 input!7874)))

(assert (=> d!2310989 (= (lemmaSamePrefixThenSameSuffix!2833 testedP!423 lt!2642636 testedP!423 lt!2642641 input!7874) lt!2642755)))

(declare-fun bs!1939966 () Bool)

(assert (= bs!1939966 d!2310989))

(declare-fun m!8109062 () Bool)

(assert (=> bs!1939966 m!8109062))

(assert (=> bs!1939966 m!8108692))

(assert (=> b!7538795 d!2310989))

(declare-fun d!2310991 () Bool)

(declare-fun lt!2642756 () Int)

(assert (=> d!2310991 (>= lt!2642756 0)))

(declare-fun e!4492179 () Int)

(assert (=> d!2310991 (= lt!2642756 e!4492179)))

(declare-fun c!1392023 () Bool)

(assert (=> d!2310991 (= c!1392023 ((_ is Nil!72658) input!7874))))

(assert (=> d!2310991 (= (size!42395 input!7874) lt!2642756)))

(declare-fun b!7539291 () Bool)

(assert (=> b!7539291 (= e!4492179 0)))

(declare-fun b!7539292 () Bool)

(assert (=> b!7539292 (= e!4492179 (+ 1 (size!42395 (t!387489 input!7874))))))

(assert (= (and d!2310991 c!1392023) b!7539291))

(assert (= (and d!2310991 (not c!1392023)) b!7539292))

(declare-fun m!8109064 () Bool)

(assert (=> b!7539292 m!8109064))

(assert (=> b!7538807 d!2310991))

(declare-fun d!2310993 () Bool)

(declare-fun e!4492181 () Bool)

(assert (=> d!2310993 e!4492181))

(declare-fun res!3021384 () Bool)

(assert (=> d!2310993 (=> res!3021384 e!4492181)))

(declare-fun lt!2642757 () Bool)

(assert (=> d!2310993 (= res!3021384 (not lt!2642757))))

(declare-fun e!4492180 () Bool)

(assert (=> d!2310993 (= lt!2642757 e!4492180)))

(declare-fun res!3021386 () Bool)

(assert (=> d!2310993 (=> res!3021386 e!4492180)))

(assert (=> d!2310993 (= res!3021386 ((_ is Nil!72658) testedP!423))))

(assert (=> d!2310993 (= (isPrefix!6105 testedP!423 input!7874) lt!2642757)))

(declare-fun b!7539294 () Bool)

(declare-fun res!3021383 () Bool)

(declare-fun e!4492182 () Bool)

(assert (=> b!7539294 (=> (not res!3021383) (not e!4492182))))

(assert (=> b!7539294 (= res!3021383 (= (head!15489 testedP!423) (head!15489 input!7874)))))

(declare-fun b!7539296 () Bool)

(assert (=> b!7539296 (= e!4492181 (>= (size!42395 input!7874) (size!42395 testedP!423)))))

(declare-fun b!7539293 () Bool)

(assert (=> b!7539293 (= e!4492180 e!4492182)))

(declare-fun res!3021385 () Bool)

(assert (=> b!7539293 (=> (not res!3021385) (not e!4492182))))

(assert (=> b!7539293 (= res!3021385 (not ((_ is Nil!72658) input!7874)))))

(declare-fun b!7539295 () Bool)

(assert (=> b!7539295 (= e!4492182 (isPrefix!6105 (tail!15035 testedP!423) (tail!15035 input!7874)))))

(assert (= (and d!2310993 (not res!3021386)) b!7539293))

(assert (= (and b!7539293 res!3021385) b!7539294))

(assert (= (and b!7539294 res!3021383) b!7539295))

(assert (= (and d!2310993 (not res!3021384)) b!7539296))

(assert (=> b!7539294 m!8109026))

(assert (=> b!7539294 m!8108768))

(assert (=> b!7539296 m!8108630))

(assert (=> b!7539296 m!8108636))

(assert (=> b!7539295 m!8109028))

(assert (=> b!7539295 m!8108772))

(assert (=> b!7539295 m!8109028))

(assert (=> b!7539295 m!8108772))

(declare-fun m!8109066 () Bool)

(assert (=> b!7539295 m!8109066))

(assert (=> b!7538816 d!2310993))

(declare-fun b!7539297 () Bool)

(declare-fun e!4492184 () List!72782)

(assert (=> b!7539297 (= e!4492184 lt!2642641)))

(declare-fun b!7539298 () Bool)

(assert (=> b!7539298 (= e!4492184 (Cons!72658 (h!79106 testedP!423) (++!17416 (t!387489 testedP!423) lt!2642641)))))

(declare-fun d!2310995 () Bool)

(declare-fun e!4492183 () Bool)

(assert (=> d!2310995 e!4492183))

(declare-fun res!3021388 () Bool)

(assert (=> d!2310995 (=> (not res!3021388) (not e!4492183))))

(declare-fun lt!2642758 () List!72782)

(assert (=> d!2310995 (= res!3021388 (= (content!15362 lt!2642758) ((_ map or) (content!15362 testedP!423) (content!15362 lt!2642641))))))

(assert (=> d!2310995 (= lt!2642758 e!4492184)))

(declare-fun c!1392024 () Bool)

(assert (=> d!2310995 (= c!1392024 ((_ is Nil!72658) testedP!423))))

(assert (=> d!2310995 (= (++!17416 testedP!423 lt!2642641) lt!2642758)))

(declare-fun b!7539299 () Bool)

(declare-fun res!3021387 () Bool)

(assert (=> b!7539299 (=> (not res!3021387) (not e!4492183))))

(assert (=> b!7539299 (= res!3021387 (= (size!42395 lt!2642758) (+ (size!42395 testedP!423) (size!42395 lt!2642641))))))

(declare-fun b!7539300 () Bool)

(assert (=> b!7539300 (= e!4492183 (or (not (= lt!2642641 Nil!72658)) (= lt!2642758 testedP!423)))))

(assert (= (and d!2310995 c!1392024) b!7539297))

(assert (= (and d!2310995 (not c!1392024)) b!7539298))

(assert (= (and d!2310995 res!3021388) b!7539299))

(assert (= (and b!7539299 res!3021387) b!7539300))

(declare-fun m!8109068 () Bool)

(assert (=> b!7539298 m!8109068))

(declare-fun m!8109070 () Bool)

(assert (=> d!2310995 m!8109070))

(assert (=> d!2310995 m!8108698))

(declare-fun m!8109072 () Bool)

(assert (=> d!2310995 m!8109072))

(declare-fun m!8109074 () Bool)

(assert (=> b!7539299 m!8109074))

(assert (=> b!7539299 m!8108636))

(declare-fun m!8109076 () Bool)

(assert (=> b!7539299 m!8109076))

(assert (=> b!7538805 d!2310995))

(declare-fun b!7539301 () Bool)

(declare-fun e!4492186 () List!72782)

(assert (=> b!7539301 (= e!4492186 lt!2642649)))

(declare-fun b!7539302 () Bool)

(assert (=> b!7539302 (= e!4492186 (Cons!72658 (h!79106 (++!17416 testedP!423 lt!2642647)) (++!17416 (t!387489 (++!17416 testedP!423 lt!2642647)) lt!2642649)))))

(declare-fun d!2310997 () Bool)

(declare-fun e!4492185 () Bool)

(assert (=> d!2310997 e!4492185))

(declare-fun res!3021390 () Bool)

(assert (=> d!2310997 (=> (not res!3021390) (not e!4492185))))

(declare-fun lt!2642759 () List!72782)

(assert (=> d!2310997 (= res!3021390 (= (content!15362 lt!2642759) ((_ map or) (content!15362 (++!17416 testedP!423 lt!2642647)) (content!15362 lt!2642649))))))

(assert (=> d!2310997 (= lt!2642759 e!4492186)))

(declare-fun c!1392025 () Bool)

(assert (=> d!2310997 (= c!1392025 ((_ is Nil!72658) (++!17416 testedP!423 lt!2642647)))))

(assert (=> d!2310997 (= (++!17416 (++!17416 testedP!423 lt!2642647) lt!2642649) lt!2642759)))

(declare-fun b!7539303 () Bool)

(declare-fun res!3021389 () Bool)

(assert (=> b!7539303 (=> (not res!3021389) (not e!4492185))))

(assert (=> b!7539303 (= res!3021389 (= (size!42395 lt!2642759) (+ (size!42395 (++!17416 testedP!423 lt!2642647)) (size!42395 lt!2642649))))))

(declare-fun b!7539304 () Bool)

(assert (=> b!7539304 (= e!4492185 (or (not (= lt!2642649 Nil!72658)) (= lt!2642759 (++!17416 testedP!423 lt!2642647))))))

(assert (= (and d!2310997 c!1392025) b!7539301))

(assert (= (and d!2310997 (not c!1392025)) b!7539302))

(assert (= (and d!2310997 res!3021390) b!7539303))

(assert (= (and b!7539303 res!3021389) b!7539304))

(declare-fun m!8109078 () Bool)

(assert (=> b!7539302 m!8109078))

(declare-fun m!8109080 () Bool)

(assert (=> d!2310997 m!8109080))

(assert (=> d!2310997 m!8108626))

(declare-fun m!8109082 () Bool)

(assert (=> d!2310997 m!8109082))

(assert (=> d!2310997 m!8108712))

(declare-fun m!8109084 () Bool)

(assert (=> b!7539303 m!8109084))

(assert (=> b!7539303 m!8108626))

(declare-fun m!8109086 () Bool)

(assert (=> b!7539303 m!8109086))

(assert (=> b!7539303 m!8108718))

(assert (=> b!7538815 d!2310997))

(declare-fun b!7539305 () Bool)

(declare-fun e!4492188 () List!72782)

(assert (=> b!7539305 (= e!4492188 lt!2642647)))

(declare-fun b!7539306 () Bool)

(assert (=> b!7539306 (= e!4492188 (Cons!72658 (h!79106 testedP!423) (++!17416 (t!387489 testedP!423) lt!2642647)))))

(declare-fun d!2310999 () Bool)

(declare-fun e!4492187 () Bool)

(assert (=> d!2310999 e!4492187))

(declare-fun res!3021392 () Bool)

(assert (=> d!2310999 (=> (not res!3021392) (not e!4492187))))

(declare-fun lt!2642760 () List!72782)

(assert (=> d!2310999 (= res!3021392 (= (content!15362 lt!2642760) ((_ map or) (content!15362 testedP!423) (content!15362 lt!2642647))))))

(assert (=> d!2310999 (= lt!2642760 e!4492188)))

(declare-fun c!1392026 () Bool)

(assert (=> d!2310999 (= c!1392026 ((_ is Nil!72658) testedP!423))))

(assert (=> d!2310999 (= (++!17416 testedP!423 lt!2642647) lt!2642760)))

(declare-fun b!7539307 () Bool)

(declare-fun res!3021391 () Bool)

(assert (=> b!7539307 (=> (not res!3021391) (not e!4492187))))

(assert (=> b!7539307 (= res!3021391 (= (size!42395 lt!2642760) (+ (size!42395 testedP!423) (size!42395 lt!2642647))))))

(declare-fun b!7539308 () Bool)

(assert (=> b!7539308 (= e!4492187 (or (not (= lt!2642647 Nil!72658)) (= lt!2642760 testedP!423)))))

(assert (= (and d!2310999 c!1392026) b!7539305))

(assert (= (and d!2310999 (not c!1392026)) b!7539306))

(assert (= (and d!2310999 res!3021392) b!7539307))

(assert (= (and b!7539307 res!3021391) b!7539308))

(declare-fun m!8109088 () Bool)

(assert (=> b!7539306 m!8109088))

(declare-fun m!8109090 () Bool)

(assert (=> d!2310999 m!8109090))

(assert (=> d!2310999 m!8108698))

(assert (=> d!2310999 m!8108710))

(declare-fun m!8109092 () Bool)

(assert (=> b!7539307 m!8109092))

(assert (=> b!7539307 m!8108636))

(assert (=> b!7539307 m!8108716))

(assert (=> b!7538815 d!2310999))

(declare-fun b!7539320 () Bool)

(declare-fun e!4492191 () Bool)

(declare-fun tp!2192891 () Bool)

(declare-fun tp!2192895 () Bool)

(assert (=> b!7539320 (= e!4492191 (and tp!2192891 tp!2192895))))

(declare-fun b!7539319 () Bool)

(assert (=> b!7539319 (= e!4492191 tp_is_empty!50153)))

(declare-fun b!7539321 () Bool)

(declare-fun tp!2192892 () Bool)

(assert (=> b!7539321 (= e!4492191 tp!2192892)))

(declare-fun b!7539322 () Bool)

(declare-fun tp!2192893 () Bool)

(declare-fun tp!2192894 () Bool)

(assert (=> b!7539322 (= e!4492191 (and tp!2192893 tp!2192894))))

(assert (=> b!7538812 (= tp!2192810 e!4492191)))

(assert (= (and b!7538812 ((_ is ElementMatch!19899) (regOne!40310 baseR!101))) b!7539319))

(assert (= (and b!7538812 ((_ is Concat!28744) (regOne!40310 baseR!101))) b!7539320))

(assert (= (and b!7538812 ((_ is Star!19899) (regOne!40310 baseR!101))) b!7539321))

(assert (= (and b!7538812 ((_ is Union!19899) (regOne!40310 baseR!101))) b!7539322))

(declare-fun b!7539324 () Bool)

(declare-fun e!4492192 () Bool)

(declare-fun tp!2192896 () Bool)

(declare-fun tp!2192900 () Bool)

(assert (=> b!7539324 (= e!4492192 (and tp!2192896 tp!2192900))))

(declare-fun b!7539323 () Bool)

(assert (=> b!7539323 (= e!4492192 tp_is_empty!50153)))

(declare-fun b!7539325 () Bool)

(declare-fun tp!2192897 () Bool)

(assert (=> b!7539325 (= e!4492192 tp!2192897)))

(declare-fun b!7539326 () Bool)

(declare-fun tp!2192898 () Bool)

(declare-fun tp!2192899 () Bool)

(assert (=> b!7539326 (= e!4492192 (and tp!2192898 tp!2192899))))

(assert (=> b!7538812 (= tp!2192815 e!4492192)))

(assert (= (and b!7538812 ((_ is ElementMatch!19899) (regTwo!40310 baseR!101))) b!7539323))

(assert (= (and b!7538812 ((_ is Concat!28744) (regTwo!40310 baseR!101))) b!7539324))

(assert (= (and b!7538812 ((_ is Star!19899) (regTwo!40310 baseR!101))) b!7539325))

(assert (= (and b!7538812 ((_ is Union!19899) (regTwo!40310 baseR!101))) b!7539326))

(declare-fun b!7539328 () Bool)

(declare-fun e!4492193 () Bool)

(declare-fun tp!2192901 () Bool)

(declare-fun tp!2192905 () Bool)

(assert (=> b!7539328 (= e!4492193 (and tp!2192901 tp!2192905))))

(declare-fun b!7539327 () Bool)

(assert (=> b!7539327 (= e!4492193 tp_is_empty!50153)))

(declare-fun b!7539329 () Bool)

(declare-fun tp!2192902 () Bool)

(assert (=> b!7539329 (= e!4492193 tp!2192902)))

(declare-fun b!7539330 () Bool)

(declare-fun tp!2192903 () Bool)

(declare-fun tp!2192904 () Bool)

(assert (=> b!7539330 (= e!4492193 (and tp!2192903 tp!2192904))))

(assert (=> b!7538808 (= tp!2192803 e!4492193)))

(assert (= (and b!7538808 ((_ is ElementMatch!19899) (reg!20228 r!24333))) b!7539327))

(assert (= (and b!7538808 ((_ is Concat!28744) (reg!20228 r!24333))) b!7539328))

(assert (= (and b!7538808 ((_ is Star!19899) (reg!20228 r!24333))) b!7539329))

(assert (= (and b!7538808 ((_ is Union!19899) (reg!20228 r!24333))) b!7539330))

(declare-fun b!7539332 () Bool)

(declare-fun e!4492194 () Bool)

(declare-fun tp!2192906 () Bool)

(declare-fun tp!2192910 () Bool)

(assert (=> b!7539332 (= e!4492194 (and tp!2192906 tp!2192910))))

(declare-fun b!7539331 () Bool)

(assert (=> b!7539331 (= e!4492194 tp_is_empty!50153)))

(declare-fun b!7539333 () Bool)

(declare-fun tp!2192907 () Bool)

(assert (=> b!7539333 (= e!4492194 tp!2192907)))

(declare-fun b!7539334 () Bool)

(declare-fun tp!2192908 () Bool)

(declare-fun tp!2192909 () Bool)

(assert (=> b!7539334 (= e!4492194 (and tp!2192908 tp!2192909))))

(assert (=> b!7538797 (= tp!2192811 e!4492194)))

(assert (= (and b!7538797 ((_ is ElementMatch!19899) (reg!20228 baseR!101))) b!7539331))

(assert (= (and b!7538797 ((_ is Concat!28744) (reg!20228 baseR!101))) b!7539332))

(assert (= (and b!7538797 ((_ is Star!19899) (reg!20228 baseR!101))) b!7539333))

(assert (= (and b!7538797 ((_ is Union!19899) (reg!20228 baseR!101))) b!7539334))

(declare-fun b!7539339 () Bool)

(declare-fun e!4492197 () Bool)

(declare-fun tp!2192913 () Bool)

(assert (=> b!7539339 (= e!4492197 (and tp_is_empty!50153 tp!2192913))))

(assert (=> b!7538818 (= tp!2192814 e!4492197)))

(assert (= (and b!7538818 ((_ is Cons!72658) (t!387489 testedP!423))) b!7539339))

(declare-fun b!7539340 () Bool)

(declare-fun e!4492198 () Bool)

(declare-fun tp!2192914 () Bool)

(assert (=> b!7539340 (= e!4492198 (and tp_is_empty!50153 tp!2192914))))

(assert (=> b!7538809 (= tp!2192804 e!4492198)))

(assert (= (and b!7538809 ((_ is Cons!72658) (t!387489 knownP!30))) b!7539340))

(declare-fun b!7539342 () Bool)

(declare-fun e!4492199 () Bool)

(declare-fun tp!2192915 () Bool)

(declare-fun tp!2192919 () Bool)

(assert (=> b!7539342 (= e!4492199 (and tp!2192915 tp!2192919))))

(declare-fun b!7539341 () Bool)

(assert (=> b!7539341 (= e!4492199 tp_is_empty!50153)))

(declare-fun b!7539343 () Bool)

(declare-fun tp!2192916 () Bool)

(assert (=> b!7539343 (= e!4492199 tp!2192916)))

(declare-fun b!7539344 () Bool)

(declare-fun tp!2192917 () Bool)

(declare-fun tp!2192918 () Bool)

(assert (=> b!7539344 (= e!4492199 (and tp!2192917 tp!2192918))))

(assert (=> b!7538814 (= tp!2192806 e!4492199)))

(assert (= (and b!7538814 ((_ is ElementMatch!19899) (regOne!40310 r!24333))) b!7539341))

(assert (= (and b!7538814 ((_ is Concat!28744) (regOne!40310 r!24333))) b!7539342))

(assert (= (and b!7538814 ((_ is Star!19899) (regOne!40310 r!24333))) b!7539343))

(assert (= (and b!7538814 ((_ is Union!19899) (regOne!40310 r!24333))) b!7539344))

(declare-fun b!7539346 () Bool)

(declare-fun e!4492200 () Bool)

(declare-fun tp!2192920 () Bool)

(declare-fun tp!2192924 () Bool)

(assert (=> b!7539346 (= e!4492200 (and tp!2192920 tp!2192924))))

(declare-fun b!7539345 () Bool)

(assert (=> b!7539345 (= e!4492200 tp_is_empty!50153)))

(declare-fun b!7539347 () Bool)

(declare-fun tp!2192921 () Bool)

(assert (=> b!7539347 (= e!4492200 tp!2192921)))

(declare-fun b!7539348 () Bool)

(declare-fun tp!2192922 () Bool)

(declare-fun tp!2192923 () Bool)

(assert (=> b!7539348 (= e!4492200 (and tp!2192922 tp!2192923))))

(assert (=> b!7538814 (= tp!2192808 e!4492200)))

(assert (= (and b!7538814 ((_ is ElementMatch!19899) (regTwo!40310 r!24333))) b!7539345))

(assert (= (and b!7538814 ((_ is Concat!28744) (regTwo!40310 r!24333))) b!7539346))

(assert (= (and b!7538814 ((_ is Star!19899) (regTwo!40310 r!24333))) b!7539347))

(assert (= (and b!7538814 ((_ is Union!19899) (regTwo!40310 r!24333))) b!7539348))

(declare-fun b!7539350 () Bool)

(declare-fun e!4492201 () Bool)

(declare-fun tp!2192925 () Bool)

(declare-fun tp!2192929 () Bool)

(assert (=> b!7539350 (= e!4492201 (and tp!2192925 tp!2192929))))

(declare-fun b!7539349 () Bool)

(assert (=> b!7539349 (= e!4492201 tp_is_empty!50153)))

(declare-fun b!7539351 () Bool)

(declare-fun tp!2192926 () Bool)

(assert (=> b!7539351 (= e!4492201 tp!2192926)))

(declare-fun b!7539352 () Bool)

(declare-fun tp!2192927 () Bool)

(declare-fun tp!2192928 () Bool)

(assert (=> b!7539352 (= e!4492201 (and tp!2192927 tp!2192928))))

(assert (=> b!7538794 (= tp!2192807 e!4492201)))

(assert (= (and b!7538794 ((_ is ElementMatch!19899) (regOne!40311 r!24333))) b!7539349))

(assert (= (and b!7538794 ((_ is Concat!28744) (regOne!40311 r!24333))) b!7539350))

(assert (= (and b!7538794 ((_ is Star!19899) (regOne!40311 r!24333))) b!7539351))

(assert (= (and b!7538794 ((_ is Union!19899) (regOne!40311 r!24333))) b!7539352))

(declare-fun b!7539354 () Bool)

(declare-fun e!4492202 () Bool)

(declare-fun tp!2192930 () Bool)

(declare-fun tp!2192934 () Bool)

(assert (=> b!7539354 (= e!4492202 (and tp!2192930 tp!2192934))))

(declare-fun b!7539353 () Bool)

(assert (=> b!7539353 (= e!4492202 tp_is_empty!50153)))

(declare-fun b!7539355 () Bool)

(declare-fun tp!2192931 () Bool)

(assert (=> b!7539355 (= e!4492202 tp!2192931)))

(declare-fun b!7539356 () Bool)

(declare-fun tp!2192932 () Bool)

(declare-fun tp!2192933 () Bool)

(assert (=> b!7539356 (= e!4492202 (and tp!2192932 tp!2192933))))

(assert (=> b!7538794 (= tp!2192809 e!4492202)))

(assert (= (and b!7538794 ((_ is ElementMatch!19899) (regTwo!40311 r!24333))) b!7539353))

(assert (= (and b!7538794 ((_ is Concat!28744) (regTwo!40311 r!24333))) b!7539354))

(assert (= (and b!7538794 ((_ is Star!19899) (regTwo!40311 r!24333))) b!7539355))

(assert (= (and b!7538794 ((_ is Union!19899) (regTwo!40311 r!24333))) b!7539356))

(declare-fun b!7539358 () Bool)

(declare-fun e!4492203 () Bool)

(declare-fun tp!2192935 () Bool)

(declare-fun tp!2192939 () Bool)

(assert (=> b!7539358 (= e!4492203 (and tp!2192935 tp!2192939))))

(declare-fun b!7539357 () Bool)

(assert (=> b!7539357 (= e!4492203 tp_is_empty!50153)))

(declare-fun b!7539359 () Bool)

(declare-fun tp!2192936 () Bool)

(assert (=> b!7539359 (= e!4492203 tp!2192936)))

(declare-fun b!7539360 () Bool)

(declare-fun tp!2192937 () Bool)

(declare-fun tp!2192938 () Bool)

(assert (=> b!7539360 (= e!4492203 (and tp!2192937 tp!2192938))))

(assert (=> b!7538810 (= tp!2192805 e!4492203)))

(assert (= (and b!7538810 ((_ is ElementMatch!19899) (regOne!40311 baseR!101))) b!7539357))

(assert (= (and b!7538810 ((_ is Concat!28744) (regOne!40311 baseR!101))) b!7539358))

(assert (= (and b!7538810 ((_ is Star!19899) (regOne!40311 baseR!101))) b!7539359))

(assert (= (and b!7538810 ((_ is Union!19899) (regOne!40311 baseR!101))) b!7539360))

(declare-fun b!7539362 () Bool)

(declare-fun e!4492204 () Bool)

(declare-fun tp!2192940 () Bool)

(declare-fun tp!2192944 () Bool)

(assert (=> b!7539362 (= e!4492204 (and tp!2192940 tp!2192944))))

(declare-fun b!7539361 () Bool)

(assert (=> b!7539361 (= e!4492204 tp_is_empty!50153)))

(declare-fun b!7539363 () Bool)

(declare-fun tp!2192941 () Bool)

(assert (=> b!7539363 (= e!4492204 tp!2192941)))

(declare-fun b!7539364 () Bool)

(declare-fun tp!2192942 () Bool)

(declare-fun tp!2192943 () Bool)

(assert (=> b!7539364 (= e!4492204 (and tp!2192942 tp!2192943))))

(assert (=> b!7538810 (= tp!2192812 e!4492204)))

(assert (= (and b!7538810 ((_ is ElementMatch!19899) (regTwo!40311 baseR!101))) b!7539361))

(assert (= (and b!7538810 ((_ is Concat!28744) (regTwo!40311 baseR!101))) b!7539362))

(assert (= (and b!7538810 ((_ is Star!19899) (regTwo!40311 baseR!101))) b!7539363))

(assert (= (and b!7538810 ((_ is Union!19899) (regTwo!40311 baseR!101))) b!7539364))

(declare-fun b!7539365 () Bool)

(declare-fun e!4492205 () Bool)

(declare-fun tp!2192945 () Bool)

(assert (=> b!7539365 (= e!4492205 (and tp_is_empty!50153 tp!2192945))))

(assert (=> b!7538799 (= tp!2192813 e!4492205)))

(assert (= (and b!7538799 ((_ is Cons!72658) (t!387489 input!7874))) b!7539365))

(check-sat (not b!7538993) (not d!2310995) (not b!7539351) (not b!7539333) (not d!2310989) (not b!7539307) (not b!7539263) (not b!7539347) (not b!7538959) (not b!7539356) (not b!7539299) (not b!7539365) (not b!7539292) (not b!7539320) (not bm!691548) (not b!7539322) (not d!2310977) (not b!7539265) (not b!7539364) (not b!7539358) (not b!7539328) tp_is_empty!50153 (not bm!691592) (not b!7539039) (not d!2310897) (not d!2310965) (not b!7539334) (not d!2310865) (not b!7538842) (not b!7539241) (not b!7539242) (not bm!691547) (not d!2310985) (not b!7539274) (not bm!691594) (not b!7539362) (not d!2310999) (not b!7539303) (not b!7539272) (not b!7539296) (not b!7539269) (not bm!691586) (not b!7539348) (not b!7538834) (not b!7538925) (not b!7538992) (not b!7539344) (not b!7539343) (not b!7539350) (not b!7539346) (not bm!691591) (not b!7539286) (not d!2310893) (not b!7538924) (not bm!691595) (not b!7539256) (not d!2310869) (not d!2310969) (not b!7539355) (not d!2310975) (not b!7539352) (not b!7539251) (not b!7539330) (not b!7538833) (not b!7539302) (not b!7539294) (not b!7539332) (not b!7539257) (not b!7539298) (not d!2310971) (not b!7539281) (not b!7539240) (not b!7539339) (not b!7538972) (not b!7539354) (not d!2310901) (not d!2310871) (not b!7539244) (not b!7539270) (not b!7539040) (not d!2310915) (not b!7539266) (not d!2310997) (not b!7538841) (not b!7539042) (not b!7539306) (not b!7539321) (not d!2310889) (not b!7539342) (not b!7538973) (not b!7538882) (not b!7539359) (not b!7539326) (not b!7539295) (not b!7538945) (not b!7539363) (not b!7538926) (not b!7539271) (not b!7539324) (not b!7538979) (not d!2310931) (not b!7538974) (not b!7539340) (not d!2310913) (not bm!691587) (not d!2310929) (not b!7539329) (not d!2310903) (not d!2310983) (not b!7539255) (not b!7539360) (not b!7539041) (not b!7539239) (not b!7539149) (not b!7539252) (not b!7539325) (not b!7538968) (not b!7538969))
(check-sat)
