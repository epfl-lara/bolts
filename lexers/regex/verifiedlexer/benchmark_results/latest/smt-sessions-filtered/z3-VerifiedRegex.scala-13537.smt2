; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728760 () Bool)

(assert start!728760)

(declare-fun b!7532830 () Bool)

(declare-fun e!4489226 () Bool)

(declare-fun tp_is_empty!50093 () Bool)

(declare-fun tp!2189974 () Bool)

(assert (=> b!7532830 (= e!4489226 (and tp_is_empty!50093 tp!2189974))))

(declare-fun res!3018982 () Bool)

(declare-fun e!4489229 () Bool)

(assert (=> start!728760 (=> (not res!3018982) (not e!4489229))))

(declare-datatypes ((C!40064 0))(
  ( (C!40065 (val!30472 Int)) )
))
(declare-datatypes ((Regex!19869 0))(
  ( (ElementMatch!19869 (c!1391178 C!40064)) (Concat!28714 (regOne!40250 Regex!19869) (regTwo!40250 Regex!19869)) (EmptyExpr!19869) (Star!19869 (reg!20198 Regex!19869)) (EmptyLang!19869) (Union!19869 (regOne!40251 Regex!19869) (regTwo!40251 Regex!19869)) )
))
(declare-fun baseR!101 () Regex!19869)

(declare-fun validRegex!10297 (Regex!19869) Bool)

(assert (=> start!728760 (= res!3018982 (validRegex!10297 baseR!101))))

(assert (=> start!728760 e!4489229))

(declare-fun e!4489227 () Bool)

(assert (=> start!728760 e!4489227))

(assert (=> start!728760 e!4489226))

(declare-fun e!4489223 () Bool)

(assert (=> start!728760 e!4489223))

(declare-fun e!4489224 () Bool)

(assert (=> start!728760 e!4489224))

(declare-fun e!4489222 () Bool)

(assert (=> start!728760 e!4489222))

(declare-fun b!7532831 () Bool)

(declare-fun e!4489221 () Bool)

(declare-fun e!4489228 () Bool)

(assert (=> b!7532831 (= e!4489221 (not e!4489228))))

(declare-fun res!3018983 () Bool)

(assert (=> b!7532831 (=> res!3018983 e!4489228)))

(declare-datatypes ((List!72752 0))(
  ( (Nil!72628) (Cons!72628 (h!79076 C!40064) (t!387459 List!72752)) )
))
(declare-fun knownP!30 () List!72752)

(declare-fun testedP!423 () List!72752)

(declare-fun r!24333 () Regex!19869)

(declare-fun matchR!9471 (Regex!19869 List!72752) Bool)

(declare-fun getSuffix!3555 (List!72752 List!72752) List!72752)

(assert (=> b!7532831 (= res!3018983 (not (matchR!9471 r!24333 (getSuffix!3555 knownP!30 testedP!423))))))

(declare-fun isPrefix!6075 (List!72752 List!72752) Bool)

(assert (=> b!7532831 (isPrefix!6075 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72752)

(declare-datatypes ((Unit!166676 0))(
  ( (Unit!166677) )
))
(declare-fun lt!2641412 () Unit!166676)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!825 (List!72752 List!72752 List!72752) Unit!166676)

(assert (=> b!7532831 (= lt!2641412 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!825 knownP!30 testedP!423 input!7874))))

(declare-fun b!7532832 () Bool)

(declare-fun tp!2189977 () Bool)

(assert (=> b!7532832 (= e!4489222 tp!2189977)))

(declare-fun b!7532833 () Bool)

(declare-fun e!4489225 () Bool)

(assert (=> b!7532833 (= e!4489228 e!4489225)))

(declare-fun res!3018975 () Bool)

(assert (=> b!7532833 (=> res!3018975 e!4489225)))

(declare-fun lt!2641418 () Int)

(declare-fun lt!2641416 () Int)

(assert (=> b!7532833 (= res!3018975 (< lt!2641418 lt!2641416))))

(declare-fun lt!2641411 () Int)

(assert (=> b!7532833 (>= lt!2641418 lt!2641411)))

(declare-fun lt!2641415 () List!72752)

(declare-fun size!42365 (List!72752) Int)

(declare-datatypes ((tuple2!68840 0))(
  ( (tuple2!68841 (_1!37723 List!72752) (_2!37723 List!72752)) )
))
(declare-fun findLongestMatchInner!2128 (Regex!19869 List!72752 Int List!72752 List!72752 Int) tuple2!68840)

(assert (=> b!7532833 (= lt!2641418 (size!42365 (_1!37723 (findLongestMatchInner!2128 r!24333 testedP!423 lt!2641411 lt!2641415 input!7874 (size!42365 input!7874)))))))

(assert (=> b!7532833 (= lt!2641415 (getSuffix!3555 input!7874 testedP!423))))

(declare-fun lt!2641417 () Unit!166676)

(declare-fun lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!14 (Regex!19869 Regex!19869 List!72752 List!72752) Unit!166676)

(assert (=> b!7532833 (= lt!2641417 (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!14 baseR!101 r!24333 input!7874 testedP!423))))

(assert (=> b!7532833 (= testedP!423 knownP!30)))

(declare-fun lt!2641413 () Unit!166676)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1529 (List!72752 List!72752 List!72752) Unit!166676)

(assert (=> b!7532833 (= lt!2641413 (lemmaIsPrefixSameLengthThenSameList!1529 testedP!423 knownP!30 input!7874))))

(declare-fun b!7532834 () Bool)

(declare-fun res!3018984 () Bool)

(assert (=> b!7532834 (=> (not res!3018984) (not e!4489229))))

(assert (=> b!7532834 (= res!3018984 (isPrefix!6075 knownP!30 input!7874))))

(declare-fun b!7532835 () Bool)

(assert (=> b!7532835 (= e!4489229 e!4489221)))

(declare-fun res!3018977 () Bool)

(assert (=> b!7532835 (=> (not res!3018977) (not e!4489221))))

(assert (=> b!7532835 (= res!3018977 (>= lt!2641416 lt!2641411))))

(assert (=> b!7532835 (= lt!2641411 (size!42365 testedP!423))))

(assert (=> b!7532835 (= lt!2641416 (size!42365 knownP!30))))

(declare-fun b!7532836 () Bool)

(assert (=> b!7532836 (= e!4489222 tp_is_empty!50093)))

(declare-fun b!7532837 () Bool)

(declare-fun res!3018979 () Bool)

(assert (=> b!7532837 (=> (not res!3018979) (not e!4489229))))

(assert (=> b!7532837 (= res!3018979 (isPrefix!6075 testedP!423 input!7874))))

(declare-fun b!7532838 () Bool)

(declare-fun tp!2189971 () Bool)

(assert (=> b!7532838 (= e!4489223 (and tp_is_empty!50093 tp!2189971))))

(declare-fun b!7532839 () Bool)

(declare-fun res!3018980 () Bool)

(assert (=> b!7532839 (=> res!3018980 e!4489228)))

(assert (=> b!7532839 (= res!3018980 (not (= lt!2641411 lt!2641416)))))

(declare-fun b!7532840 () Bool)

(assert (=> b!7532840 (= e!4489227 tp_is_empty!50093)))

(declare-fun b!7532841 () Bool)

(assert (=> b!7532841 (= e!4489225 true)))

(declare-fun lt!2641414 () List!72752)

(declare-fun ++!17390 (List!72752 List!72752) List!72752)

(assert (=> b!7532841 (= lt!2641414 (++!17390 testedP!423 lt!2641415))))

(declare-fun b!7532842 () Bool)

(declare-fun res!3018978 () Bool)

(assert (=> b!7532842 (=> res!3018978 e!4489228)))

(declare-fun derivative!401 (Regex!19869 List!72752) Regex!19869)

(assert (=> b!7532842 (= res!3018978 (not (= (derivative!401 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7532843 () Bool)

(declare-fun tp!2189980 () Bool)

(assert (=> b!7532843 (= e!4489227 tp!2189980)))

(declare-fun b!7532844 () Bool)

(declare-fun res!3018981 () Bool)

(assert (=> b!7532844 (=> res!3018981 e!4489228)))

(declare-fun lostCause!1661 (Regex!19869) Bool)

(assert (=> b!7532844 (= res!3018981 (lostCause!1661 r!24333))))

(declare-fun b!7532845 () Bool)

(declare-fun tp!2189976 () Bool)

(declare-fun tp!2189979 () Bool)

(assert (=> b!7532845 (= e!4489222 (and tp!2189976 tp!2189979))))

(declare-fun b!7532846 () Bool)

(declare-fun res!3018976 () Bool)

(assert (=> b!7532846 (=> (not res!3018976) (not e!4489221))))

(assert (=> b!7532846 (= res!3018976 (matchR!9471 baseR!101 knownP!30))))

(declare-fun b!7532847 () Bool)

(declare-fun tp!2189983 () Bool)

(declare-fun tp!2189972 () Bool)

(assert (=> b!7532847 (= e!4489227 (and tp!2189983 tp!2189972))))

(declare-fun b!7532848 () Bool)

(declare-fun tp!2189973 () Bool)

(declare-fun tp!2189978 () Bool)

(assert (=> b!7532848 (= e!4489227 (and tp!2189973 tp!2189978))))

(declare-fun b!7532849 () Bool)

(declare-fun tp!2189981 () Bool)

(declare-fun tp!2189975 () Bool)

(assert (=> b!7532849 (= e!4489222 (and tp!2189981 tp!2189975))))

(declare-fun b!7532850 () Bool)

(declare-fun tp!2189982 () Bool)

(assert (=> b!7532850 (= e!4489224 (and tp_is_empty!50093 tp!2189982))))

(declare-fun b!7532851 () Bool)

(declare-fun res!3018974 () Bool)

(assert (=> b!7532851 (=> (not res!3018974) (not e!4489229))))

(assert (=> b!7532851 (= res!3018974 (validRegex!10297 r!24333))))

(assert (= (and start!728760 res!3018982) b!7532851))

(assert (= (and b!7532851 res!3018974) b!7532837))

(assert (= (and b!7532837 res!3018979) b!7532834))

(assert (= (and b!7532834 res!3018984) b!7532835))

(assert (= (and b!7532835 res!3018977) b!7532846))

(assert (= (and b!7532846 res!3018976) b!7532831))

(assert (= (and b!7532831 (not res!3018983)) b!7532842))

(assert (= (and b!7532842 (not res!3018978)) b!7532844))

(assert (= (and b!7532844 (not res!3018981)) b!7532839))

(assert (= (and b!7532839 (not res!3018980)) b!7532833))

(assert (= (and b!7532833 (not res!3018975)) b!7532841))

(get-info :version)

(assert (= (and start!728760 ((_ is ElementMatch!19869) baseR!101)) b!7532840))

(assert (= (and start!728760 ((_ is Concat!28714) baseR!101)) b!7532848))

(assert (= (and start!728760 ((_ is Star!19869) baseR!101)) b!7532843))

(assert (= (and start!728760 ((_ is Union!19869) baseR!101)) b!7532847))

(assert (= (and start!728760 ((_ is Cons!72628) input!7874)) b!7532830))

(assert (= (and start!728760 ((_ is Cons!72628) knownP!30)) b!7532838))

(assert (= (and start!728760 ((_ is Cons!72628) testedP!423)) b!7532850))

(assert (= (and start!728760 ((_ is ElementMatch!19869) r!24333)) b!7532836))

(assert (= (and start!728760 ((_ is Concat!28714) r!24333)) b!7532845))

(assert (= (and start!728760 ((_ is Star!19869) r!24333)) b!7532832))

(assert (= (and start!728760 ((_ is Union!19869) r!24333)) b!7532849))

(declare-fun m!8105262 () Bool)

(assert (=> b!7532842 m!8105262))

(declare-fun m!8105264 () Bool)

(assert (=> b!7532846 m!8105264))

(declare-fun m!8105266 () Bool)

(assert (=> start!728760 m!8105266))

(declare-fun m!8105268 () Bool)

(assert (=> b!7532851 m!8105268))

(declare-fun m!8105270 () Bool)

(assert (=> b!7532834 m!8105270))

(declare-fun m!8105272 () Bool)

(assert (=> b!7532837 m!8105272))

(declare-fun m!8105274 () Bool)

(assert (=> b!7532833 m!8105274))

(declare-fun m!8105276 () Bool)

(assert (=> b!7532833 m!8105276))

(declare-fun m!8105278 () Bool)

(assert (=> b!7532833 m!8105278))

(declare-fun m!8105280 () Bool)

(assert (=> b!7532833 m!8105280))

(declare-fun m!8105282 () Bool)

(assert (=> b!7532833 m!8105282))

(assert (=> b!7532833 m!8105276))

(declare-fun m!8105284 () Bool)

(assert (=> b!7532833 m!8105284))

(declare-fun m!8105286 () Bool)

(assert (=> b!7532831 m!8105286))

(assert (=> b!7532831 m!8105286))

(declare-fun m!8105288 () Bool)

(assert (=> b!7532831 m!8105288))

(declare-fun m!8105290 () Bool)

(assert (=> b!7532831 m!8105290))

(declare-fun m!8105292 () Bool)

(assert (=> b!7532831 m!8105292))

(declare-fun m!8105294 () Bool)

(assert (=> b!7532835 m!8105294))

(declare-fun m!8105296 () Bool)

(assert (=> b!7532835 m!8105296))

(declare-fun m!8105298 () Bool)

(assert (=> b!7532841 m!8105298))

(declare-fun m!8105300 () Bool)

(assert (=> b!7532844 m!8105300))

(check-sat (not b!7532834) (not b!7532837) (not start!728760) (not b!7532835) (not b!7532841) (not b!7532843) (not b!7532846) (not b!7532849) (not b!7532832) tp_is_empty!50093 (not b!7532833) (not b!7532848) (not b!7532842) (not b!7532850) (not b!7532831) (not b!7532844) (not b!7532845) (not b!7532847) (not b!7532851) (not b!7532830) (not b!7532838))
(check-sat)
