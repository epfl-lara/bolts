; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728764 () Bool)

(assert start!728764)

(declare-fun b!7532957 () Bool)

(declare-fun res!3019038 () Bool)

(declare-fun e!4489277 () Bool)

(assert (=> b!7532957 (=> (not res!3019038) (not e!4489277))))

(declare-datatypes ((C!40068 0))(
  ( (C!40069 (val!30474 Int)) )
))
(declare-datatypes ((List!72754 0))(
  ( (Nil!72630) (Cons!72630 (h!79078 C!40068) (t!387461 List!72754)) )
))
(declare-fun testedP!423 () List!72754)

(declare-fun input!7874 () List!72754)

(declare-fun isPrefix!6077 (List!72754 List!72754) Bool)

(assert (=> b!7532957 (= res!3019038 (isPrefix!6077 testedP!423 input!7874))))

(declare-fun b!7532958 () Bool)

(declare-fun e!4489274 () Bool)

(declare-fun tp!2190049 () Bool)

(declare-fun tp!2190055 () Bool)

(assert (=> b!7532958 (= e!4489274 (and tp!2190049 tp!2190055))))

(declare-fun b!7532959 () Bool)

(declare-fun e!4489273 () Bool)

(declare-fun e!4489272 () Bool)

(assert (=> b!7532959 (= e!4489273 (not e!4489272))))

(declare-fun res!3019043 () Bool)

(assert (=> b!7532959 (=> res!3019043 e!4489272)))

(declare-fun knownP!30 () List!72754)

(declare-datatypes ((Regex!19871 0))(
  ( (ElementMatch!19871 (c!1391180 C!40068)) (Concat!28716 (regOne!40254 Regex!19871) (regTwo!40254 Regex!19871)) (EmptyExpr!19871) (Star!19871 (reg!20200 Regex!19871)) (EmptyLang!19871) (Union!19871 (regOne!40255 Regex!19871) (regTwo!40255 Regex!19871)) )
))
(declare-fun r!24333 () Regex!19871)

(declare-fun matchR!9473 (Regex!19871 List!72754) Bool)

(declare-fun getSuffix!3557 (List!72754 List!72754) List!72754)

(assert (=> b!7532959 (= res!3019043 (not (matchR!9473 r!24333 (getSuffix!3557 knownP!30 testedP!423))))))

(assert (=> b!7532959 (isPrefix!6077 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166680 0))(
  ( (Unit!166681) )
))
(declare-fun lt!2641439 () Unit!166680)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!827 (List!72754 List!72754 List!72754) Unit!166680)

(assert (=> b!7532959 (= lt!2641439 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!827 knownP!30 testedP!423 input!7874))))

(declare-fun b!7532960 () Bool)

(declare-fun res!3019036 () Bool)

(assert (=> b!7532960 (=> (not res!3019036) (not e!4489273))))

(declare-fun baseR!101 () Regex!19871)

(assert (=> b!7532960 (= res!3019036 (matchR!9473 baseR!101 knownP!30))))

(declare-fun b!7532962 () Bool)

(declare-fun res!3019042 () Bool)

(assert (=> b!7532962 (=> res!3019042 e!4489272)))

(declare-fun derivative!403 (Regex!19871 List!72754) Regex!19871)

(assert (=> b!7532962 (= res!3019042 (not (= (derivative!403 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7532963 () Bool)

(declare-fun lt!2641441 () Int)

(declare-fun lt!2641440 () Int)

(assert (=> b!7532963 (= e!4489272 (or (>= lt!2641441 lt!2641440) (>= lt!2641440 lt!2641441)))))

(declare-fun size!42367 (List!72754) Int)

(assert (=> b!7532963 (= lt!2641440 (size!42367 input!7874))))

(declare-fun b!7532964 () Bool)

(declare-fun res!3019040 () Bool)

(assert (=> b!7532964 (=> res!3019040 e!4489272)))

(declare-fun lt!2641442 () Int)

(assert (=> b!7532964 (= res!3019040 (= lt!2641441 lt!2641442))))

(declare-fun b!7532965 () Bool)

(declare-fun e!4489275 () Bool)

(declare-fun tp!2190057 () Bool)

(declare-fun tp!2190052 () Bool)

(assert (=> b!7532965 (= e!4489275 (and tp!2190057 tp!2190052))))

(declare-fun b!7532966 () Bool)

(declare-fun e!4489270 () Bool)

(declare-fun tp_is_empty!50097 () Bool)

(declare-fun tp!2190051 () Bool)

(assert (=> b!7532966 (= e!4489270 (and tp_is_empty!50097 tp!2190051))))

(declare-fun b!7532967 () Bool)

(declare-fun tp!2190058 () Bool)

(declare-fun tp!2190050 () Bool)

(assert (=> b!7532967 (= e!4489274 (and tp!2190058 tp!2190050))))

(declare-fun b!7532968 () Bool)

(assert (=> b!7532968 (= e!4489277 e!4489273)))

(declare-fun res!3019039 () Bool)

(assert (=> b!7532968 (=> (not res!3019039) (not e!4489273))))

(assert (=> b!7532968 (= res!3019039 (>= lt!2641442 lt!2641441))))

(assert (=> b!7532968 (= lt!2641441 (size!42367 testedP!423))))

(assert (=> b!7532968 (= lt!2641442 (size!42367 knownP!30))))

(declare-fun b!7532969 () Bool)

(declare-fun tp!2190059 () Bool)

(assert (=> b!7532969 (= e!4489274 tp!2190059)))

(declare-fun b!7532970 () Bool)

(assert (=> b!7532970 (= e!4489274 tp_is_empty!50097)))

(declare-fun b!7532971 () Bool)

(assert (=> b!7532971 (= e!4489275 tp_is_empty!50097)))

(declare-fun b!7532972 () Bool)

(declare-fun res!3019044 () Bool)

(assert (=> b!7532972 (=> (not res!3019044) (not e!4489277))))

(declare-fun validRegex!10299 (Regex!19871) Bool)

(assert (=> b!7532972 (= res!3019044 (validRegex!10299 r!24333))))

(declare-fun b!7532973 () Bool)

(declare-fun tp!2190053 () Bool)

(declare-fun tp!2190054 () Bool)

(assert (=> b!7532973 (= e!4489275 (and tp!2190053 tp!2190054))))

(declare-fun b!7532974 () Bool)

(declare-fun tp!2190056 () Bool)

(assert (=> b!7532974 (= e!4489275 tp!2190056)))

(declare-fun b!7532975 () Bool)

(declare-fun e!4489271 () Bool)

(declare-fun tp!2190060 () Bool)

(assert (=> b!7532975 (= e!4489271 (and tp_is_empty!50097 tp!2190060))))

(declare-fun b!7532961 () Bool)

(declare-fun e!4489276 () Bool)

(declare-fun tp!2190061 () Bool)

(assert (=> b!7532961 (= e!4489276 (and tp_is_empty!50097 tp!2190061))))

(declare-fun res!3019041 () Bool)

(assert (=> start!728764 (=> (not res!3019041) (not e!4489277))))

(assert (=> start!728764 (= res!3019041 (validRegex!10299 baseR!101))))

(assert (=> start!728764 e!4489277))

(assert (=> start!728764 e!4489275))

(assert (=> start!728764 e!4489270))

(assert (=> start!728764 e!4489271))

(assert (=> start!728764 e!4489276))

(assert (=> start!728764 e!4489274))

(declare-fun b!7532976 () Bool)

(declare-fun res!3019037 () Bool)

(assert (=> b!7532976 (=> res!3019037 e!4489272)))

(declare-fun lostCause!1663 (Regex!19871) Bool)

(assert (=> b!7532976 (= res!3019037 (lostCause!1663 r!24333))))

(declare-fun b!7532977 () Bool)

(declare-fun res!3019035 () Bool)

(assert (=> b!7532977 (=> (not res!3019035) (not e!4489277))))

(assert (=> b!7532977 (= res!3019035 (isPrefix!6077 knownP!30 input!7874))))

(assert (= (and start!728764 res!3019041) b!7532972))

(assert (= (and b!7532972 res!3019044) b!7532957))

(assert (= (and b!7532957 res!3019038) b!7532977))

(assert (= (and b!7532977 res!3019035) b!7532968))

(assert (= (and b!7532968 res!3019039) b!7532960))

(assert (= (and b!7532960 res!3019036) b!7532959))

(assert (= (and b!7532959 (not res!3019043)) b!7532962))

(assert (= (and b!7532962 (not res!3019042)) b!7532976))

(assert (= (and b!7532976 (not res!3019037)) b!7532964))

(assert (= (and b!7532964 (not res!3019040)) b!7532963))

(get-info :version)

(assert (= (and start!728764 ((_ is ElementMatch!19871) baseR!101)) b!7532971))

(assert (= (and start!728764 ((_ is Concat!28716) baseR!101)) b!7532965))

(assert (= (and start!728764 ((_ is Star!19871) baseR!101)) b!7532974))

(assert (= (and start!728764 ((_ is Union!19871) baseR!101)) b!7532973))

(assert (= (and start!728764 ((_ is Cons!72630) input!7874)) b!7532966))

(assert (= (and start!728764 ((_ is Cons!72630) knownP!30)) b!7532975))

(assert (= (and start!728764 ((_ is Cons!72630) testedP!423)) b!7532961))

(assert (= (and start!728764 ((_ is ElementMatch!19871) r!24333)) b!7532970))

(assert (= (and start!728764 ((_ is Concat!28716) r!24333)) b!7532958))

(assert (= (and start!728764 ((_ is Star!19871) r!24333)) b!7532969))

(assert (= (and start!728764 ((_ is Union!19871) r!24333)) b!7532967))

(declare-fun m!8105330 () Bool)

(assert (=> b!7532976 m!8105330))

(declare-fun m!8105332 () Bool)

(assert (=> start!728764 m!8105332))

(declare-fun m!8105334 () Bool)

(assert (=> b!7532960 m!8105334))

(declare-fun m!8105336 () Bool)

(assert (=> b!7532972 m!8105336))

(declare-fun m!8105338 () Bool)

(assert (=> b!7532968 m!8105338))

(declare-fun m!8105340 () Bool)

(assert (=> b!7532968 m!8105340))

(declare-fun m!8105342 () Bool)

(assert (=> b!7532962 m!8105342))

(declare-fun m!8105344 () Bool)

(assert (=> b!7532957 m!8105344))

(declare-fun m!8105346 () Bool)

(assert (=> b!7532963 m!8105346))

(declare-fun m!8105348 () Bool)

(assert (=> b!7532977 m!8105348))

(declare-fun m!8105350 () Bool)

(assert (=> b!7532959 m!8105350))

(assert (=> b!7532959 m!8105350))

(declare-fun m!8105352 () Bool)

(assert (=> b!7532959 m!8105352))

(declare-fun m!8105354 () Bool)

(assert (=> b!7532959 m!8105354))

(declare-fun m!8105356 () Bool)

(assert (=> b!7532959 m!8105356))

(check-sat (not b!7532975) (not b!7532965) (not b!7532957) (not b!7532973) (not b!7532969) (not b!7532958) (not b!7532977) (not b!7532959) (not b!7532962) (not b!7532968) tp_is_empty!50097 (not b!7532967) (not b!7532972) (not b!7532961) (not b!7532976) (not b!7532966) (not b!7532963) (not b!7532960) (not start!728764) (not b!7532974))
(check-sat)
