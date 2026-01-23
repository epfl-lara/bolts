; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!729606 () Bool)

(assert start!729606)

(declare-fun b!7543970 () Bool)

(declare-fun res!3023403 () Bool)

(declare-fun e!4494493 () Bool)

(assert (=> b!7543970 (=> res!3023403 e!4494493)))

(declare-datatypes ((C!40154 0))(
  ( (C!40155 (val!30517 Int)) )
))
(declare-datatypes ((List!72797 0))(
  ( (Nil!72673) (Cons!72673 (h!79121 C!40154) (t!387512 List!72797)) )
))
(declare-fun lt!2644302 () List!72797)

(declare-fun knownP!30 () List!72797)

(assert (=> b!7543970 (= res!3023403 (not (= lt!2644302 knownP!30)))))

(declare-fun b!7543971 () Bool)

(declare-fun res!3023399 () Bool)

(declare-fun e!4494492 () Bool)

(assert (=> b!7543971 (=> res!3023399 e!4494492)))

(declare-fun lt!2644290 () List!72797)

(declare-fun input!7874 () List!72797)

(declare-fun testedP!423 () List!72797)

(declare-fun ++!17431 (List!72797 List!72797) List!72797)

(assert (=> b!7543971 (= res!3023399 (not (= (++!17431 testedP!423 lt!2644290) input!7874)))))

(declare-fun b!7543972 () Bool)

(declare-fun e!4494501 () Bool)

(declare-fun tp_is_empty!50183 () Bool)

(assert (=> b!7543972 (= e!4494501 tp_is_empty!50183)))

(declare-fun b!7543973 () Bool)

(declare-fun res!3023396 () Bool)

(declare-fun e!4494498 () Bool)

(assert (=> b!7543973 (=> (not res!3023396) (not e!4494498))))

(declare-fun isPrefix!6120 (List!72797 List!72797) Bool)

(assert (=> b!7543973 (= res!3023396 (isPrefix!6120 knownP!30 input!7874))))

(declare-fun b!7543974 () Bool)

(declare-fun e!4494499 () Bool)

(assert (=> b!7543974 (= e!4494499 e!4494493)))

(declare-fun res!3023390 () Bool)

(assert (=> b!7543974 (=> res!3023390 e!4494493)))

(declare-fun lt!2644306 () List!72797)

(declare-fun lt!2644293 () List!72797)

(declare-fun lt!2644304 () C!40154)

(declare-fun $colon$colon!3374 (List!72797 C!40154) List!72797)

(assert (=> b!7543974 (= res!3023390 (not (= lt!2644306 ($colon$colon!3374 lt!2644293 lt!2644304))))))

(declare-fun tail!15050 (List!72797) List!72797)

(assert (=> b!7543974 (= lt!2644293 (tail!15050 lt!2644306))))

(declare-fun b!7543975 () Bool)

(declare-fun tp!2194309 () Bool)

(assert (=> b!7543975 (= e!4494501 tp!2194309)))

(declare-fun b!7543976 () Bool)

(declare-fun res!3023393 () Bool)

(assert (=> b!7543976 (=> (not res!3023393) (not e!4494498))))

(declare-datatypes ((Regex!19914 0))(
  ( (ElementMatch!19914 (c!1392775 C!40154)) (Concat!28759 (regOne!40340 Regex!19914) (regTwo!40340 Regex!19914)) (EmptyExpr!19914) (Star!19914 (reg!20243 Regex!19914)) (EmptyLang!19914) (Union!19914 (regOne!40341 Regex!19914) (regTwo!40341 Regex!19914)) )
))
(declare-fun r!24333 () Regex!19914)

(declare-fun validRegex!10342 (Regex!19914) Bool)

(assert (=> b!7543976 (= res!3023393 (validRegex!10342 r!24333))))

(declare-fun b!7543977 () Bool)

(declare-fun e!4494500 () Bool)

(declare-fun tp!2194302 () Bool)

(declare-fun tp!2194300 () Bool)

(assert (=> b!7543977 (= e!4494500 (and tp!2194302 tp!2194300))))

(declare-fun b!7543978 () Bool)

(declare-fun e!4494497 () Bool)

(declare-fun tp!2194308 () Bool)

(assert (=> b!7543978 (= e!4494497 (and tp_is_empty!50183 tp!2194308))))

(declare-fun b!7543979 () Bool)

(declare-fun e!4494490 () Bool)

(assert (=> b!7543979 (= e!4494490 e!4494499)))

(declare-fun res!3023400 () Bool)

(assert (=> b!7543979 (=> res!3023400 e!4494499)))

(declare-fun head!15504 (List!72797) C!40154)

(assert (=> b!7543979 (= res!3023400 (not (= (head!15504 lt!2644306) lt!2644304)))))

(declare-fun lt!2644303 () List!72797)

(assert (=> b!7543979 (= lt!2644303 lt!2644290)))

(declare-datatypes ((Unit!166766 0))(
  ( (Unit!166767) )
))
(declare-fun lt!2644292 () Unit!166766)

(declare-fun lemmaSamePrefixThenSameSuffix!2848 (List!72797 List!72797 List!72797 List!72797 List!72797) Unit!166766)

(assert (=> b!7543979 (= lt!2644292 (lemmaSamePrefixThenSameSuffix!2848 testedP!423 lt!2644303 testedP!423 lt!2644290 input!7874))))

(declare-fun b!7543980 () Bool)

(declare-fun lt!2644305 () List!72797)

(declare-fun e!4494491 () Bool)

(assert (=> b!7543980 (= e!4494491 (or (not (= lt!2644293 lt!2644305)) (not (= lt!2644290 Nil!72673))))))

(declare-fun lt!2644287 () List!72797)

(assert (=> b!7543980 (= lt!2644287 lt!2644306)))

(declare-fun lt!2644289 () Unit!166766)

(assert (=> b!7543980 (= lt!2644289 (lemmaSamePrefixThenSameSuffix!2848 testedP!423 lt!2644287 testedP!423 lt!2644306 knownP!30))))

(declare-fun lt!2644307 () List!72797)

(assert (=> b!7543980 (= lt!2644307 (++!17431 testedP!423 lt!2644287))))

(declare-fun lt!2644294 () List!72797)

(assert (=> b!7543980 (= lt!2644287 (++!17431 lt!2644294 lt!2644305))))

(declare-fun lt!2644296 () Unit!166766)

(declare-fun lemmaConcatAssociativity!3079 (List!72797 List!72797 List!72797) Unit!166766)

(assert (=> b!7543980 (= lt!2644296 (lemmaConcatAssociativity!3079 testedP!423 lt!2644294 lt!2644305))))

(declare-fun b!7543981 () Bool)

(declare-fun tp!2194298 () Bool)

(declare-fun tp!2194305 () Bool)

(assert (=> b!7543981 (= e!4494501 (and tp!2194298 tp!2194305))))

(declare-fun b!7543982 () Bool)

(declare-fun e!4494495 () Bool)

(assert (=> b!7543982 (= e!4494498 e!4494495)))

(declare-fun res!3023386 () Bool)

(assert (=> b!7543982 (=> (not res!3023386) (not e!4494495))))

(declare-fun lt!2644298 () Int)

(declare-fun lt!2644301 () Int)

(assert (=> b!7543982 (= res!3023386 (>= lt!2644298 lt!2644301))))

(declare-fun size!42410 (List!72797) Int)

(assert (=> b!7543982 (= lt!2644301 (size!42410 testedP!423))))

(assert (=> b!7543982 (= lt!2644298 (size!42410 knownP!30))))

(declare-fun b!7543983 () Bool)

(declare-fun tp!2194303 () Bool)

(declare-fun tp!2194301 () Bool)

(assert (=> b!7543983 (= e!4494501 (and tp!2194303 tp!2194301))))

(declare-fun b!7543984 () Bool)

(declare-fun e!4494496 () Bool)

(declare-fun tp!2194304 () Bool)

(assert (=> b!7543984 (= e!4494496 (and tp_is_empty!50183 tp!2194304))))

(declare-fun b!7543985 () Bool)

(declare-fun e!4494488 () Bool)

(declare-fun tp!2194307 () Bool)

(assert (=> b!7543985 (= e!4494488 (and tp_is_empty!50183 tp!2194307))))

(declare-fun b!7543986 () Bool)

(declare-fun tp!2194306 () Bool)

(assert (=> b!7543986 (= e!4494500 tp!2194306)))

(declare-fun b!7543987 () Bool)

(declare-fun res!3023385 () Bool)

(assert (=> b!7543987 (=> (not res!3023385) (not e!4494495))))

(declare-fun baseR!101 () Regex!19914)

(declare-fun matchR!9516 (Regex!19914 List!72797) Bool)

(assert (=> b!7543987 (= res!3023385 (matchR!9516 baseR!101 knownP!30))))

(declare-fun b!7543988 () Bool)

(assert (=> b!7543988 (= e!4494500 tp_is_empty!50183)))

(declare-fun res!3023395 () Bool)

(assert (=> start!729606 (=> (not res!3023395) (not e!4494498))))

(assert (=> start!729606 (= res!3023395 (validRegex!10342 baseR!101))))

(assert (=> start!729606 e!4494498))

(assert (=> start!729606 e!4494501))

(assert (=> start!729606 e!4494488))

(assert (=> start!729606 e!4494497))

(assert (=> start!729606 e!4494496))

(assert (=> start!729606 e!4494500))

(declare-fun b!7543989 () Bool)

(assert (=> b!7543989 (= e!4494493 e!4494491)))

(declare-fun res!3023387 () Bool)

(assert (=> b!7543989 (=> res!3023387 e!4494491)))

(assert (=> b!7543989 (= res!3023387 (not (= lt!2644307 knownP!30)))))

(declare-fun lt!2644295 () List!72797)

(assert (=> b!7543989 (= lt!2644307 (++!17431 lt!2644295 lt!2644305))))

(declare-fun b!7543990 () Bool)

(declare-fun res!3023389 () Bool)

(declare-fun e!4494489 () Bool)

(assert (=> b!7543990 (=> res!3023389 e!4494489)))

(declare-fun derivative!446 (Regex!19914 List!72797) Regex!19914)

(assert (=> b!7543990 (= res!3023389 (not (= (derivative!446 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7543991 () Bool)

(declare-fun e!4494494 () Bool)

(assert (=> b!7543991 (= e!4494489 e!4494494)))

(declare-fun res!3023394 () Bool)

(assert (=> b!7543991 (=> res!3023394 e!4494494)))

(declare-fun lt!2644310 () List!72797)

(assert (=> b!7543991 (= res!3023394 (not (= (++!17431 knownP!30 lt!2644310) input!7874)))))

(declare-fun getSuffix!3600 (List!72797 List!72797) List!72797)

(assert (=> b!7543991 (= lt!2644310 (getSuffix!3600 input!7874 knownP!30))))

(assert (=> b!7543991 (= lt!2644305 (getSuffix!3600 knownP!30 lt!2644295))))

(assert (=> b!7543991 (isPrefix!6120 lt!2644295 knownP!30)))

(declare-fun lt!2644291 () Unit!166766)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!870 (List!72797 List!72797 List!72797) Unit!166766)

(assert (=> b!7543991 (= lt!2644291 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!870 knownP!30 lt!2644295 input!7874))))

(declare-fun derivativeStep!5704 (Regex!19914 C!40154) Regex!19914)

(assert (=> b!7543991 (= (derivative!446 baseR!101 lt!2644295) (derivativeStep!5704 r!24333 lt!2644304))))

(declare-fun lt!2644300 () Unit!166766)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!152 (Regex!19914 Regex!19914 List!72797 C!40154) Unit!166766)

(assert (=> b!7543991 (= lt!2644300 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!152 baseR!101 r!24333 testedP!423 lt!2644304))))

(assert (=> b!7543991 (isPrefix!6120 lt!2644295 input!7874)))

(declare-fun lt!2644288 () Unit!166766)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1185 (List!72797 List!72797) Unit!166766)

(assert (=> b!7543991 (= lt!2644288 (lemmaAddHeadSuffixToPrefixStillPrefix!1185 testedP!423 input!7874))))

(assert (=> b!7543991 (= lt!2644295 (++!17431 testedP!423 lt!2644294))))

(assert (=> b!7543991 (= lt!2644294 (Cons!72673 lt!2644304 Nil!72673))))

(assert (=> b!7543991 (= lt!2644304 (head!15504 lt!2644290))))

(assert (=> b!7543991 (= lt!2644290 (getSuffix!3600 input!7874 testedP!423))))

(declare-fun b!7543992 () Bool)

(assert (=> b!7543992 (= e!4494494 e!4494492)))

(declare-fun res!3023401 () Bool)

(assert (=> b!7543992 (=> res!3023401 e!4494492)))

(declare-fun lt!2644309 () List!72797)

(assert (=> b!7543992 (= res!3023401 (not (= lt!2644309 input!7874)))))

(assert (=> b!7543992 (= lt!2644309 (++!17431 lt!2644302 lt!2644310))))

(assert (=> b!7543992 (= lt!2644302 (++!17431 testedP!423 lt!2644306))))

(declare-fun b!7543993 () Bool)

(declare-fun res!3023392 () Bool)

(assert (=> b!7543993 (=> res!3023392 e!4494489)))

(declare-fun lostCause!1706 (Regex!19914) Bool)

(assert (=> b!7543993 (= res!3023392 (lostCause!1706 r!24333))))

(declare-fun b!7543994 () Bool)

(assert (=> b!7543994 (= e!4494492 e!4494490)))

(declare-fun res!3023398 () Bool)

(assert (=> b!7543994 (=> res!3023398 e!4494490)))

(declare-fun lt!2644299 () List!72797)

(assert (=> b!7543994 (= res!3023398 (not (= lt!2644299 input!7874)))))

(assert (=> b!7543994 (= lt!2644309 lt!2644299)))

(assert (=> b!7543994 (= lt!2644299 (++!17431 testedP!423 lt!2644303))))

(assert (=> b!7543994 (= lt!2644303 (++!17431 lt!2644306 lt!2644310))))

(declare-fun lt!2644308 () Unit!166766)

(assert (=> b!7543994 (= lt!2644308 (lemmaConcatAssociativity!3079 testedP!423 lt!2644306 lt!2644310))))

(declare-fun b!7543995 () Bool)

(declare-fun tp!2194299 () Bool)

(declare-fun tp!2194310 () Bool)

(assert (=> b!7543995 (= e!4494500 (and tp!2194299 tp!2194310))))

(declare-fun b!7543996 () Bool)

(declare-fun res!3023388 () Bool)

(assert (=> b!7543996 (=> (not res!3023388) (not e!4494498))))

(assert (=> b!7543996 (= res!3023388 (isPrefix!6120 testedP!423 input!7874))))

(declare-fun b!7543997 () Bool)

(declare-fun res!3023402 () Bool)

(assert (=> b!7543997 (=> res!3023402 e!4494489)))

(assert (=> b!7543997 (= res!3023402 (>= lt!2644301 (size!42410 input!7874)))))

(declare-fun b!7543998 () Bool)

(declare-fun res!3023391 () Bool)

(assert (=> b!7543998 (=> res!3023391 e!4494489)))

(assert (=> b!7543998 (= res!3023391 (= lt!2644301 lt!2644298))))

(declare-fun b!7543999 () Bool)

(assert (=> b!7543999 (= e!4494495 (not e!4494489))))

(declare-fun res!3023397 () Bool)

(assert (=> b!7543999 (=> res!3023397 e!4494489)))

(assert (=> b!7543999 (= res!3023397 (not (matchR!9516 r!24333 lt!2644306)))))

(assert (=> b!7543999 (= lt!2644306 (getSuffix!3600 knownP!30 testedP!423))))

(assert (=> b!7543999 (isPrefix!6120 testedP!423 knownP!30)))

(declare-fun lt!2644297 () Unit!166766)

(assert (=> b!7543999 (= lt!2644297 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!870 knownP!30 testedP!423 input!7874))))

(assert (= (and start!729606 res!3023395) b!7543976))

(assert (= (and b!7543976 res!3023393) b!7543996))

(assert (= (and b!7543996 res!3023388) b!7543973))

(assert (= (and b!7543973 res!3023396) b!7543982))

(assert (= (and b!7543982 res!3023386) b!7543987))

(assert (= (and b!7543987 res!3023385) b!7543999))

(assert (= (and b!7543999 (not res!3023397)) b!7543990))

(assert (= (and b!7543990 (not res!3023389)) b!7543993))

(assert (= (and b!7543993 (not res!3023392)) b!7543998))

(assert (= (and b!7543998 (not res!3023391)) b!7543997))

(assert (= (and b!7543997 (not res!3023402)) b!7543991))

(assert (= (and b!7543991 (not res!3023394)) b!7543992))

(assert (= (and b!7543992 (not res!3023401)) b!7543971))

(assert (= (and b!7543971 (not res!3023399)) b!7543994))

(assert (= (and b!7543994 (not res!3023398)) b!7543979))

(assert (= (and b!7543979 (not res!3023400)) b!7543974))

(assert (= (and b!7543974 (not res!3023390)) b!7543970))

(assert (= (and b!7543970 (not res!3023403)) b!7543989))

(assert (= (and b!7543989 (not res!3023387)) b!7543980))

(assert (= (and start!729606 (is-ElementMatch!19914 baseR!101)) b!7543972))

(assert (= (and start!729606 (is-Concat!28759 baseR!101)) b!7543983))

(assert (= (and start!729606 (is-Star!19914 baseR!101)) b!7543975))

(assert (= (and start!729606 (is-Union!19914 baseR!101)) b!7543981))

(assert (= (and start!729606 (is-Cons!72673 input!7874)) b!7543985))

(assert (= (and start!729606 (is-Cons!72673 knownP!30)) b!7543978))

(assert (= (and start!729606 (is-Cons!72673 testedP!423)) b!7543984))

(assert (= (and start!729606 (is-ElementMatch!19914 r!24333)) b!7543988))

(assert (= (and start!729606 (is-Concat!28759 r!24333)) b!7543977))

(assert (= (and start!729606 (is-Star!19914 r!24333)) b!7543986))

(assert (= (and start!729606 (is-Union!19914 r!24333)) b!7543995))

(declare-fun m!8112714 () Bool)

(assert (=> b!7543974 m!8112714))

(declare-fun m!8112716 () Bool)

(assert (=> b!7543974 m!8112716))

(declare-fun m!8112718 () Bool)

(assert (=> b!7543993 m!8112718))

(declare-fun m!8112720 () Bool)

(assert (=> b!7543996 m!8112720))

(declare-fun m!8112722 () Bool)

(assert (=> b!7543973 m!8112722))

(declare-fun m!8112724 () Bool)

(assert (=> b!7543987 m!8112724))

(declare-fun m!8112726 () Bool)

(assert (=> b!7543980 m!8112726))

(declare-fun m!8112728 () Bool)

(assert (=> b!7543980 m!8112728))

(declare-fun m!8112730 () Bool)

(assert (=> b!7543980 m!8112730))

(declare-fun m!8112732 () Bool)

(assert (=> b!7543980 m!8112732))

(declare-fun m!8112734 () Bool)

(assert (=> b!7543989 m!8112734))

(declare-fun m!8112736 () Bool)

(assert (=> b!7543990 m!8112736))

(declare-fun m!8112738 () Bool)

(assert (=> b!7543976 m!8112738))

(declare-fun m!8112740 () Bool)

(assert (=> b!7543991 m!8112740))

(declare-fun m!8112742 () Bool)

(assert (=> b!7543991 m!8112742))

(declare-fun m!8112744 () Bool)

(assert (=> b!7543991 m!8112744))

(declare-fun m!8112746 () Bool)

(assert (=> b!7543991 m!8112746))

(declare-fun m!8112748 () Bool)

(assert (=> b!7543991 m!8112748))

(declare-fun m!8112750 () Bool)

(assert (=> b!7543991 m!8112750))

(declare-fun m!8112752 () Bool)

(assert (=> b!7543991 m!8112752))

(declare-fun m!8112754 () Bool)

(assert (=> b!7543991 m!8112754))

(declare-fun m!8112756 () Bool)

(assert (=> b!7543991 m!8112756))

(declare-fun m!8112758 () Bool)

(assert (=> b!7543991 m!8112758))

(declare-fun m!8112760 () Bool)

(assert (=> b!7543991 m!8112760))

(declare-fun m!8112762 () Bool)

(assert (=> b!7543991 m!8112762))

(declare-fun m!8112764 () Bool)

(assert (=> b!7543991 m!8112764))

(declare-fun m!8112766 () Bool)

(assert (=> b!7543994 m!8112766))

(declare-fun m!8112768 () Bool)

(assert (=> b!7543994 m!8112768))

(declare-fun m!8112770 () Bool)

(assert (=> b!7543994 m!8112770))

(declare-fun m!8112772 () Bool)

(assert (=> b!7543979 m!8112772))

(declare-fun m!8112774 () Bool)

(assert (=> b!7543979 m!8112774))

(declare-fun m!8112776 () Bool)

(assert (=> b!7543982 m!8112776))

(declare-fun m!8112778 () Bool)

(assert (=> b!7543982 m!8112778))

(declare-fun m!8112780 () Bool)

(assert (=> b!7543971 m!8112780))

(declare-fun m!8112782 () Bool)

(assert (=> b!7543997 m!8112782))

(declare-fun m!8112784 () Bool)

(assert (=> b!7543992 m!8112784))

(declare-fun m!8112786 () Bool)

(assert (=> b!7543992 m!8112786))

(declare-fun m!8112788 () Bool)

(assert (=> b!7543999 m!8112788))

(declare-fun m!8112790 () Bool)

(assert (=> b!7543999 m!8112790))

(declare-fun m!8112792 () Bool)

(assert (=> b!7543999 m!8112792))

(declare-fun m!8112794 () Bool)

(assert (=> b!7543999 m!8112794))

(declare-fun m!8112796 () Bool)

(assert (=> start!729606 m!8112796))

(push 1)

(assert (not b!7543985))

(assert (not b!7543982))

(assert (not b!7543983))

(assert (not b!7543984))

(assert tp_is_empty!50183)

(assert (not b!7543976))

(assert (not b!7543980))

(assert (not b!7543995))

(assert (not b!7543997))

(assert (not b!7543986))

(assert (not b!7543990))

(assert (not b!7543979))

(assert (not b!7543989))

(assert (not b!7543991))

(assert (not b!7543999))

(assert (not b!7543978))

(assert (not b!7543974))

(assert (not b!7543993))

(assert (not b!7543977))

(assert (not start!729606))

(assert (not b!7543992))

(assert (not b!7543975))

(assert (not b!7543994))

(assert (not b!7543996))

(assert (not b!7543973))

(assert (not b!7543981))

(assert (not b!7543987))

(assert (not b!7543971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2311921 () Bool)

(declare-fun lt!2644385 () Regex!19914)

(assert (=> d!2311921 (validRegex!10342 lt!2644385)))

(declare-fun e!4494546 () Regex!19914)

(assert (=> d!2311921 (= lt!2644385 e!4494546)))

(declare-fun c!1392779 () Bool)

(assert (=> d!2311921 (= c!1392779 (is-Cons!72673 testedP!423))))

(assert (=> d!2311921 (validRegex!10342 baseR!101)))

(assert (=> d!2311921 (= (derivative!446 baseR!101 testedP!423) lt!2644385)))

(declare-fun b!7544094 () Bool)

(assert (=> b!7544094 (= e!4494546 (derivative!446 (derivativeStep!5704 baseR!101 (h!79121 testedP!423)) (t!387512 testedP!423)))))

(declare-fun b!7544095 () Bool)

(assert (=> b!7544095 (= e!4494546 baseR!101)))

(assert (= (and d!2311921 c!1392779) b!7544094))

(assert (= (and d!2311921 (not c!1392779)) b!7544095))

(declare-fun m!8112882 () Bool)

(assert (=> d!2311921 m!8112882))

(assert (=> d!2311921 m!8112796))

(declare-fun m!8112884 () Bool)

(assert (=> b!7544094 m!8112884))

(assert (=> b!7544094 m!8112884))

(declare-fun m!8112886 () Bool)

(assert (=> b!7544094 m!8112886))

(assert (=> b!7543990 d!2311921))

(declare-fun d!2311923 () Bool)

(assert (=> d!2311923 (= (head!15504 lt!2644306) (h!79121 lt!2644306))))

(assert (=> b!7543979 d!2311923))

(declare-fun d!2311925 () Bool)

(assert (=> d!2311925 (= lt!2644303 lt!2644290)))

(declare-fun lt!2644388 () Unit!166766)

(declare-fun choose!58384 (List!72797 List!72797 List!72797 List!72797 List!72797) Unit!166766)

(assert (=> d!2311925 (= lt!2644388 (choose!58384 testedP!423 lt!2644303 testedP!423 lt!2644290 input!7874))))

(assert (=> d!2311925 (isPrefix!6120 testedP!423 input!7874)))

(assert (=> d!2311925 (= (lemmaSamePrefixThenSameSuffix!2848 testedP!423 lt!2644303 testedP!423 lt!2644290 input!7874) lt!2644388)))

(declare-fun bs!1940073 () Bool)

(assert (= bs!1940073 d!2311925))

(declare-fun m!8112888 () Bool)

(assert (=> bs!1940073 m!8112888))

(assert (=> bs!1940073 m!8112720))

(assert (=> b!7543979 d!2311925))

(declare-fun b!7544106 () Bool)

(declare-fun res!3023466 () Bool)

(declare-fun e!4494552 () Bool)

(assert (=> b!7544106 (=> (not res!3023466) (not e!4494552))))

(declare-fun lt!2644391 () List!72797)

(assert (=> b!7544106 (= res!3023466 (= (size!42410 lt!2644391) (+ (size!42410 lt!2644295) (size!42410 lt!2644305))))))

(declare-fun b!7544105 () Bool)

(declare-fun e!4494551 () List!72797)

(assert (=> b!7544105 (= e!4494551 (Cons!72673 (h!79121 lt!2644295) (++!17431 (t!387512 lt!2644295) lt!2644305)))))

(declare-fun d!2311927 () Bool)

(assert (=> d!2311927 e!4494552))

(declare-fun res!3023465 () Bool)

(assert (=> d!2311927 (=> (not res!3023465) (not e!4494552))))

(declare-fun content!15375 (List!72797) (Set C!40154))

(assert (=> d!2311927 (= res!3023465 (= (content!15375 lt!2644391) (set.union (content!15375 lt!2644295) (content!15375 lt!2644305))))))

(assert (=> d!2311927 (= lt!2644391 e!4494551)))

(declare-fun c!1392782 () Bool)

(assert (=> d!2311927 (= c!1392782 (is-Nil!72673 lt!2644295))))

(assert (=> d!2311927 (= (++!17431 lt!2644295 lt!2644305) lt!2644391)))

(declare-fun b!7544104 () Bool)

(assert (=> b!7544104 (= e!4494551 lt!2644305)))

(declare-fun b!7544107 () Bool)

(assert (=> b!7544107 (= e!4494552 (or (not (= lt!2644305 Nil!72673)) (= lt!2644391 lt!2644295)))))

(assert (= (and d!2311927 c!1392782) b!7544104))

(assert (= (and d!2311927 (not c!1392782)) b!7544105))

(assert (= (and d!2311927 res!3023465) b!7544106))

(assert (= (and b!7544106 res!3023466) b!7544107))

(declare-fun m!8112890 () Bool)

(assert (=> b!7544106 m!8112890))

(declare-fun m!8112892 () Bool)

(assert (=> b!7544106 m!8112892))

(declare-fun m!8112894 () Bool)

(assert (=> b!7544106 m!8112894))

(declare-fun m!8112896 () Bool)

(assert (=> b!7544105 m!8112896))

(declare-fun m!8112898 () Bool)

(assert (=> d!2311927 m!8112898))

(declare-fun m!8112900 () Bool)

(assert (=> d!2311927 m!8112900))

(declare-fun m!8112902 () Bool)

(assert (=> d!2311927 m!8112902))

(assert (=> b!7543989 d!2311927))

(declare-fun d!2311931 () Bool)

(declare-fun e!4494573 () Bool)

(assert (=> d!2311931 e!4494573))

(declare-fun c!1392792 () Bool)

(assert (=> d!2311931 (= c!1392792 (is-EmptyExpr!19914 r!24333))))

(declare-fun lt!2644399 () Bool)

(declare-fun e!4494569 () Bool)

(assert (=> d!2311931 (= lt!2644399 e!4494569)))

(declare-fun c!1392793 () Bool)

(declare-fun isEmpty!41382 (List!72797) Bool)

(assert (=> d!2311931 (= c!1392793 (isEmpty!41382 lt!2644306))))

(assert (=> d!2311931 (validRegex!10342 r!24333)))

(assert (=> d!2311931 (= (matchR!9516 r!24333 lt!2644306) lt!2644399)))

(declare-fun b!7544140 () Bool)

(declare-fun res!3023487 () Bool)

(declare-fun e!4494575 () Bool)

(assert (=> b!7544140 (=> (not res!3023487) (not e!4494575))))

(declare-fun call!691939 () Bool)

(assert (=> b!7544140 (= res!3023487 (not call!691939))))

(declare-fun b!7544141 () Bool)

(assert (=> b!7544141 (= e!4494569 (matchR!9516 (derivativeStep!5704 r!24333 (head!15504 lt!2644306)) (tail!15050 lt!2644306)))))

(declare-fun b!7544142 () Bool)

(declare-fun res!3023488 () Bool)

(declare-fun e!4494574 () Bool)

(assert (=> b!7544142 (=> res!3023488 e!4494574)))

(assert (=> b!7544142 (= res!3023488 (not (is-ElementMatch!19914 r!24333)))))

(declare-fun e!4494571 () Bool)

(assert (=> b!7544142 (= e!4494571 e!4494574)))

(declare-fun b!7544143 () Bool)

(assert (=> b!7544143 (= e!4494573 e!4494571)))

(declare-fun c!1392791 () Bool)

(assert (=> b!7544143 (= c!1392791 (is-EmptyLang!19914 r!24333))))

(declare-fun b!7544144 () Bool)

(declare-fun nullable!8686 (Regex!19914) Bool)

(assert (=> b!7544144 (= e!4494569 (nullable!8686 r!24333))))

(declare-fun b!7544145 () Bool)

(declare-fun res!3023490 () Bool)

(declare-fun e!4494572 () Bool)

(assert (=> b!7544145 (=> res!3023490 e!4494572)))

(assert (=> b!7544145 (= res!3023490 (not (isEmpty!41382 (tail!15050 lt!2644306))))))

(declare-fun b!7544146 () Bool)

(assert (=> b!7544146 (= e!4494575 (= (head!15504 lt!2644306) (c!1392775 r!24333)))))

(declare-fun b!7544147 () Bool)

(assert (=> b!7544147 (= e!4494572 (not (= (head!15504 lt!2644306) (c!1392775 r!24333))))))

(declare-fun b!7544148 () Bool)

(assert (=> b!7544148 (= e!4494571 (not lt!2644399))))

(declare-fun b!7544149 () Bool)

(declare-fun res!3023489 () Bool)

(assert (=> b!7544149 (=> res!3023489 e!4494574)))

(assert (=> b!7544149 (= res!3023489 e!4494575)))

(declare-fun res!3023484 () Bool)

(assert (=> b!7544149 (=> (not res!3023484) (not e!4494575))))

(assert (=> b!7544149 (= res!3023484 lt!2644399)))

(declare-fun b!7544150 () Bool)

(declare-fun res!3023483 () Bool)

(assert (=> b!7544150 (=> (not res!3023483) (not e!4494575))))

(assert (=> b!7544150 (= res!3023483 (isEmpty!41382 (tail!15050 lt!2644306)))))

(declare-fun bm!691934 () Bool)

(assert (=> bm!691934 (= call!691939 (isEmpty!41382 lt!2644306))))

(declare-fun b!7544151 () Bool)

(declare-fun e!4494570 () Bool)

(assert (=> b!7544151 (= e!4494574 e!4494570)))

(declare-fun res!3023486 () Bool)

(assert (=> b!7544151 (=> (not res!3023486) (not e!4494570))))

(assert (=> b!7544151 (= res!3023486 (not lt!2644399))))

(declare-fun b!7544152 () Bool)

(assert (=> b!7544152 (= e!4494570 e!4494572)))

(declare-fun res!3023485 () Bool)

(assert (=> b!7544152 (=> res!3023485 e!4494572)))

(assert (=> b!7544152 (= res!3023485 call!691939)))

(declare-fun b!7544153 () Bool)

(assert (=> b!7544153 (= e!4494573 (= lt!2644399 call!691939))))

(assert (= (and d!2311931 c!1392793) b!7544144))

(assert (= (and d!2311931 (not c!1392793)) b!7544141))

(assert (= (and d!2311931 c!1392792) b!7544153))

(assert (= (and d!2311931 (not c!1392792)) b!7544143))

(assert (= (and b!7544143 c!1392791) b!7544148))

(assert (= (and b!7544143 (not c!1392791)) b!7544142))

(assert (= (and b!7544142 (not res!3023488)) b!7544149))

(assert (= (and b!7544149 res!3023484) b!7544140))

(assert (= (and b!7544140 res!3023487) b!7544150))

(assert (= (and b!7544150 res!3023483) b!7544146))

(assert (= (and b!7544149 (not res!3023489)) b!7544151))

(assert (= (and b!7544151 res!3023486) b!7544152))

(assert (= (and b!7544152 (not res!3023485)) b!7544145))

(assert (= (and b!7544145 (not res!3023490)) b!7544147))

(assert (= (or b!7544153 b!7544140 b!7544152) bm!691934))

(assert (=> b!7544150 m!8112716))

(assert (=> b!7544150 m!8112716))

(declare-fun m!8112906 () Bool)

(assert (=> b!7544150 m!8112906))

(assert (=> b!7544146 m!8112772))

(declare-fun m!8112908 () Bool)

(assert (=> b!7544144 m!8112908))

(assert (=> b!7544141 m!8112772))

(assert (=> b!7544141 m!8112772))

(declare-fun m!8112910 () Bool)

(assert (=> b!7544141 m!8112910))

(assert (=> b!7544141 m!8112716))

(assert (=> b!7544141 m!8112910))

(assert (=> b!7544141 m!8112716))

(declare-fun m!8112912 () Bool)

(assert (=> b!7544141 m!8112912))

(declare-fun m!8112914 () Bool)

(assert (=> d!2311931 m!8112914))

(assert (=> d!2311931 m!8112738))

(assert (=> b!7544147 m!8112772))

(assert (=> bm!691934 m!8112914))

(assert (=> b!7544145 m!8112716))

(assert (=> b!7544145 m!8112716))

(assert (=> b!7544145 m!8112906))

(assert (=> b!7543999 d!2311931))

(declare-fun d!2311937 () Bool)

(declare-fun lt!2644403 () List!72797)

(assert (=> d!2311937 (= (++!17431 testedP!423 lt!2644403) knownP!30)))

(declare-fun e!4494582 () List!72797)

(assert (=> d!2311937 (= lt!2644403 e!4494582)))

(declare-fun c!1392797 () Bool)

(assert (=> d!2311937 (= c!1392797 (is-Cons!72673 testedP!423))))

(assert (=> d!2311937 (>= (size!42410 knownP!30) (size!42410 testedP!423))))

(assert (=> d!2311937 (= (getSuffix!3600 knownP!30 testedP!423) lt!2644403)))

(declare-fun b!7544166 () Bool)

(assert (=> b!7544166 (= e!4494582 (getSuffix!3600 (tail!15050 knownP!30) (t!387512 testedP!423)))))

(declare-fun b!7544167 () Bool)

(assert (=> b!7544167 (= e!4494582 knownP!30)))

(assert (= (and d!2311937 c!1392797) b!7544166))

(assert (= (and d!2311937 (not c!1392797)) b!7544167))

(declare-fun m!8112928 () Bool)

(assert (=> d!2311937 m!8112928))

(assert (=> d!2311937 m!8112778))

(assert (=> d!2311937 m!8112776))

(declare-fun m!8112930 () Bool)

(assert (=> b!7544166 m!8112930))

(assert (=> b!7544166 m!8112930))

(declare-fun m!8112932 () Bool)

(assert (=> b!7544166 m!8112932))

(assert (=> b!7543999 d!2311937))

(declare-fun b!7544177 () Bool)

(declare-fun res!3023505 () Bool)

(declare-fun e!4494589 () Bool)

(assert (=> b!7544177 (=> (not res!3023505) (not e!4494589))))

(assert (=> b!7544177 (= res!3023505 (= (head!15504 testedP!423) (head!15504 knownP!30)))))

(declare-fun d!2311941 () Bool)

(declare-fun e!4494590 () Bool)

(assert (=> d!2311941 e!4494590))

(declare-fun res!3023506 () Bool)

(assert (=> d!2311941 (=> res!3023506 e!4494590)))

(declare-fun lt!2644406 () Bool)

(assert (=> d!2311941 (= res!3023506 (not lt!2644406))))

(declare-fun e!4494591 () Bool)

(assert (=> d!2311941 (= lt!2644406 e!4494591)))

(declare-fun res!3023508 () Bool)

(assert (=> d!2311941 (=> res!3023508 e!4494591)))

(assert (=> d!2311941 (= res!3023508 (is-Nil!72673 testedP!423))))

(assert (=> d!2311941 (= (isPrefix!6120 testedP!423 knownP!30) lt!2644406)))

(declare-fun b!7544176 () Bool)

(assert (=> b!7544176 (= e!4494591 e!4494589)))

(declare-fun res!3023507 () Bool)

(assert (=> b!7544176 (=> (not res!3023507) (not e!4494589))))

(assert (=> b!7544176 (= res!3023507 (not (is-Nil!72673 knownP!30)))))

(declare-fun b!7544179 () Bool)

(assert (=> b!7544179 (= e!4494590 (>= (size!42410 knownP!30) (size!42410 testedP!423)))))

(declare-fun b!7544178 () Bool)

(assert (=> b!7544178 (= e!4494589 (isPrefix!6120 (tail!15050 testedP!423) (tail!15050 knownP!30)))))

(assert (= (and d!2311941 (not res!3023508)) b!7544176))

(assert (= (and b!7544176 res!3023507) b!7544177))

(assert (= (and b!7544177 res!3023505) b!7544178))

(assert (= (and d!2311941 (not res!3023506)) b!7544179))

(declare-fun m!8112934 () Bool)

(assert (=> b!7544177 m!8112934))

(declare-fun m!8112936 () Bool)

(assert (=> b!7544177 m!8112936))

(assert (=> b!7544179 m!8112778))

(assert (=> b!7544179 m!8112776))

(declare-fun m!8112938 () Bool)

(assert (=> b!7544178 m!8112938))

(assert (=> b!7544178 m!8112930))

(assert (=> b!7544178 m!8112938))

(assert (=> b!7544178 m!8112930))

(declare-fun m!8112940 () Bool)

(assert (=> b!7544178 m!8112940))

(assert (=> b!7543999 d!2311941))

(declare-fun d!2311943 () Bool)

(assert (=> d!2311943 (isPrefix!6120 testedP!423 knownP!30)))

(declare-fun lt!2644411 () Unit!166766)

(declare-fun choose!58385 (List!72797 List!72797 List!72797) Unit!166766)

(assert (=> d!2311943 (= lt!2644411 (choose!58385 knownP!30 testedP!423 input!7874))))

(assert (=> d!2311943 (isPrefix!6120 knownP!30 input!7874)))

(assert (=> d!2311943 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!870 knownP!30 testedP!423 input!7874) lt!2644411)))

(declare-fun bs!1940075 () Bool)

(assert (= bs!1940075 d!2311943))

(assert (=> bs!1940075 m!8112792))

(declare-fun m!8112942 () Bool)

(assert (=> bs!1940075 m!8112942))

(assert (=> bs!1940075 m!8112722))

(assert (=> b!7543999 d!2311943))

(declare-fun d!2311945 () Bool)

(declare-fun lt!2644415 () Int)

(assert (=> d!2311945 (>= lt!2644415 0)))

(declare-fun e!4494603 () Int)

(assert (=> d!2311945 (= lt!2644415 e!4494603)))

(declare-fun c!1392800 () Bool)

(assert (=> d!2311945 (= c!1392800 (is-Nil!72673 testedP!423))))

(assert (=> d!2311945 (= (size!42410 testedP!423) lt!2644415)))

(declare-fun b!7544196 () Bool)

(assert (=> b!7544196 (= e!4494603 0)))

(declare-fun b!7544197 () Bool)

(assert (=> b!7544197 (= e!4494603 (+ 1 (size!42410 (t!387512 testedP!423))))))

(assert (= (and d!2311945 c!1392800) b!7544196))

(assert (= (and d!2311945 (not c!1392800)) b!7544197))

(declare-fun m!8112944 () Bool)

(assert (=> b!7544197 m!8112944))

(assert (=> b!7543982 d!2311945))

(declare-fun d!2311947 () Bool)

(declare-fun lt!2644416 () Int)

(assert (=> d!2311947 (>= lt!2644416 0)))

(declare-fun e!4494604 () Int)

(assert (=> d!2311947 (= lt!2644416 e!4494604)))

(declare-fun c!1392801 () Bool)

(assert (=> d!2311947 (= c!1392801 (is-Nil!72673 knownP!30))))

(assert (=> d!2311947 (= (size!42410 knownP!30) lt!2644416)))

(declare-fun b!7544198 () Bool)

(assert (=> b!7544198 (= e!4494604 0)))

(declare-fun b!7544199 () Bool)

(assert (=> b!7544199 (= e!4494604 (+ 1 (size!42410 (t!387512 knownP!30))))))

(assert (= (and d!2311947 c!1392801) b!7544198))

(assert (= (and d!2311947 (not c!1392801)) b!7544199))

(declare-fun m!8112946 () Bool)

(assert (=> b!7544199 m!8112946))

(assert (=> b!7543982 d!2311947))

(declare-fun d!2311949 () Bool)

(declare-fun lostCauseFct!441 (Regex!19914) Bool)

(assert (=> d!2311949 (= (lostCause!1706 r!24333) (lostCauseFct!441 r!24333))))

(declare-fun bs!1940076 () Bool)

(assert (= bs!1940076 d!2311949))

(declare-fun m!8112958 () Bool)

(assert (=> bs!1940076 m!8112958))

(assert (=> b!7543993 d!2311949))

(declare-fun b!7544202 () Bool)

(declare-fun res!3023522 () Bool)

(declare-fun e!4494606 () Bool)

(assert (=> b!7544202 (=> (not res!3023522) (not e!4494606))))

(declare-fun lt!2644417 () List!72797)

(assert (=> b!7544202 (= res!3023522 (= (size!42410 lt!2644417) (+ (size!42410 lt!2644302) (size!42410 lt!2644310))))))

(declare-fun b!7544201 () Bool)

(declare-fun e!4494605 () List!72797)

(assert (=> b!7544201 (= e!4494605 (Cons!72673 (h!79121 lt!2644302) (++!17431 (t!387512 lt!2644302) lt!2644310)))))

(declare-fun d!2311953 () Bool)

(assert (=> d!2311953 e!4494606))

(declare-fun res!3023521 () Bool)

(assert (=> d!2311953 (=> (not res!3023521) (not e!4494606))))

(assert (=> d!2311953 (= res!3023521 (= (content!15375 lt!2644417) (set.union (content!15375 lt!2644302) (content!15375 lt!2644310))))))

(assert (=> d!2311953 (= lt!2644417 e!4494605)))

(declare-fun c!1392802 () Bool)

(assert (=> d!2311953 (= c!1392802 (is-Nil!72673 lt!2644302))))

(assert (=> d!2311953 (= (++!17431 lt!2644302 lt!2644310) lt!2644417)))

(declare-fun b!7544200 () Bool)

(assert (=> b!7544200 (= e!4494605 lt!2644310)))

(declare-fun b!7544203 () Bool)

(assert (=> b!7544203 (= e!4494606 (or (not (= lt!2644310 Nil!72673)) (= lt!2644417 lt!2644302)))))

(assert (= (and d!2311953 c!1392802) b!7544200))

(assert (= (and d!2311953 (not c!1392802)) b!7544201))

(assert (= (and d!2311953 res!3023521) b!7544202))

(assert (= (and b!7544202 res!3023522) b!7544203))

(declare-fun m!8112960 () Bool)

(assert (=> b!7544202 m!8112960))

(declare-fun m!8112962 () Bool)

(assert (=> b!7544202 m!8112962))

(declare-fun m!8112964 () Bool)

(assert (=> b!7544202 m!8112964))

(declare-fun m!8112966 () Bool)

(assert (=> b!7544201 m!8112966))

(declare-fun m!8112968 () Bool)

(assert (=> d!2311953 m!8112968))

(declare-fun m!8112970 () Bool)

(assert (=> d!2311953 m!8112970))

(declare-fun m!8112972 () Bool)

(assert (=> d!2311953 m!8112972))

(assert (=> b!7543992 d!2311953))

(declare-fun b!7544206 () Bool)

(declare-fun res!3023524 () Bool)

(declare-fun e!4494608 () Bool)

(assert (=> b!7544206 (=> (not res!3023524) (not e!4494608))))

(declare-fun lt!2644418 () List!72797)

(assert (=> b!7544206 (= res!3023524 (= (size!42410 lt!2644418) (+ (size!42410 testedP!423) (size!42410 lt!2644306))))))

(declare-fun b!7544205 () Bool)

(declare-fun e!4494607 () List!72797)

(assert (=> b!7544205 (= e!4494607 (Cons!72673 (h!79121 testedP!423) (++!17431 (t!387512 testedP!423) lt!2644306)))))

(declare-fun d!2311955 () Bool)

(assert (=> d!2311955 e!4494608))

(declare-fun res!3023523 () Bool)

(assert (=> d!2311955 (=> (not res!3023523) (not e!4494608))))

(assert (=> d!2311955 (= res!3023523 (= (content!15375 lt!2644418) (set.union (content!15375 testedP!423) (content!15375 lt!2644306))))))

(assert (=> d!2311955 (= lt!2644418 e!4494607)))

(declare-fun c!1392803 () Bool)

(assert (=> d!2311955 (= c!1392803 (is-Nil!72673 testedP!423))))

(assert (=> d!2311955 (= (++!17431 testedP!423 lt!2644306) lt!2644418)))

(declare-fun b!7544204 () Bool)

(assert (=> b!7544204 (= e!4494607 lt!2644306)))

(declare-fun b!7544207 () Bool)

(assert (=> b!7544207 (= e!4494608 (or (not (= lt!2644306 Nil!72673)) (= lt!2644418 testedP!423)))))

(assert (= (and d!2311955 c!1392803) b!7544204))

(assert (= (and d!2311955 (not c!1392803)) b!7544205))

(assert (= (and d!2311955 res!3023523) b!7544206))

(assert (= (and b!7544206 res!3023524) b!7544207))

(declare-fun m!8112974 () Bool)

(assert (=> b!7544206 m!8112974))

(assert (=> b!7544206 m!8112776))

(declare-fun m!8112976 () Bool)

(assert (=> b!7544206 m!8112976))

(declare-fun m!8112978 () Bool)

(assert (=> b!7544205 m!8112978))

(declare-fun m!8112980 () Bool)

(assert (=> d!2311955 m!8112980))

(declare-fun m!8112982 () Bool)

(assert (=> d!2311955 m!8112982))

(declare-fun m!8112984 () Bool)

(assert (=> d!2311955 m!8112984))

(assert (=> b!7543992 d!2311955))

(declare-fun b!7544210 () Bool)

(declare-fun res!3023526 () Bool)

(declare-fun e!4494610 () Bool)

(assert (=> b!7544210 (=> (not res!3023526) (not e!4494610))))

(declare-fun lt!2644419 () List!72797)

(assert (=> b!7544210 (= res!3023526 (= (size!42410 lt!2644419) (+ (size!42410 testedP!423) (size!42410 lt!2644290))))))

(declare-fun b!7544209 () Bool)

(declare-fun e!4494609 () List!72797)

(assert (=> b!7544209 (= e!4494609 (Cons!72673 (h!79121 testedP!423) (++!17431 (t!387512 testedP!423) lt!2644290)))))

(declare-fun d!2311957 () Bool)

(assert (=> d!2311957 e!4494610))

(declare-fun res!3023525 () Bool)

(assert (=> d!2311957 (=> (not res!3023525) (not e!4494610))))

(assert (=> d!2311957 (= res!3023525 (= (content!15375 lt!2644419) (set.union (content!15375 testedP!423) (content!15375 lt!2644290))))))

(assert (=> d!2311957 (= lt!2644419 e!4494609)))

(declare-fun c!1392804 () Bool)

(assert (=> d!2311957 (= c!1392804 (is-Nil!72673 testedP!423))))

(assert (=> d!2311957 (= (++!17431 testedP!423 lt!2644290) lt!2644419)))

(declare-fun b!7544208 () Bool)

(assert (=> b!7544208 (= e!4494609 lt!2644290)))

(declare-fun b!7544211 () Bool)

(assert (=> b!7544211 (= e!4494610 (or (not (= lt!2644290 Nil!72673)) (= lt!2644419 testedP!423)))))

(assert (= (and d!2311957 c!1392804) b!7544208))

(assert (= (and d!2311957 (not c!1392804)) b!7544209))

(assert (= (and d!2311957 res!3023525) b!7544210))

(assert (= (and b!7544210 res!3023526) b!7544211))

(declare-fun m!8112986 () Bool)

(assert (=> b!7544210 m!8112986))

(assert (=> b!7544210 m!8112776))

(declare-fun m!8112988 () Bool)

(assert (=> b!7544210 m!8112988))

(declare-fun m!8112990 () Bool)

(assert (=> b!7544209 m!8112990))

(declare-fun m!8112992 () Bool)

(assert (=> d!2311957 m!8112992))

(assert (=> d!2311957 m!8112982))

(declare-fun m!8112994 () Bool)

(assert (=> d!2311957 m!8112994))

(assert (=> b!7543971 d!2311957))

(declare-fun d!2311959 () Bool)

(assert (=> d!2311959 (= lt!2644287 lt!2644306)))

(declare-fun lt!2644420 () Unit!166766)

(assert (=> d!2311959 (= lt!2644420 (choose!58384 testedP!423 lt!2644287 testedP!423 lt!2644306 knownP!30))))

(assert (=> d!2311959 (isPrefix!6120 testedP!423 knownP!30)))

(assert (=> d!2311959 (= (lemmaSamePrefixThenSameSuffix!2848 testedP!423 lt!2644287 testedP!423 lt!2644306 knownP!30) lt!2644420)))

(declare-fun bs!1940077 () Bool)

(assert (= bs!1940077 d!2311959))

(declare-fun m!8112996 () Bool)

(assert (=> bs!1940077 m!8112996))

(assert (=> bs!1940077 m!8112792))

(assert (=> b!7543980 d!2311959))

(declare-fun b!7544214 () Bool)

(declare-fun res!3023528 () Bool)

(declare-fun e!4494612 () Bool)

(assert (=> b!7544214 (=> (not res!3023528) (not e!4494612))))

(declare-fun lt!2644421 () List!72797)

(assert (=> b!7544214 (= res!3023528 (= (size!42410 lt!2644421) (+ (size!42410 testedP!423) (size!42410 lt!2644287))))))

(declare-fun b!7544213 () Bool)

(declare-fun e!4494611 () List!72797)

(assert (=> b!7544213 (= e!4494611 (Cons!72673 (h!79121 testedP!423) (++!17431 (t!387512 testedP!423) lt!2644287)))))

(declare-fun d!2311961 () Bool)

(assert (=> d!2311961 e!4494612))

(declare-fun res!3023527 () Bool)

(assert (=> d!2311961 (=> (not res!3023527) (not e!4494612))))

(assert (=> d!2311961 (= res!3023527 (= (content!15375 lt!2644421) (set.union (content!15375 testedP!423) (content!15375 lt!2644287))))))

(assert (=> d!2311961 (= lt!2644421 e!4494611)))

(declare-fun c!1392805 () Bool)

(assert (=> d!2311961 (= c!1392805 (is-Nil!72673 testedP!423))))

(assert (=> d!2311961 (= (++!17431 testedP!423 lt!2644287) lt!2644421)))

(declare-fun b!7544212 () Bool)

(assert (=> b!7544212 (= e!4494611 lt!2644287)))

(declare-fun b!7544215 () Bool)

(assert (=> b!7544215 (= e!4494612 (or (not (= lt!2644287 Nil!72673)) (= lt!2644421 testedP!423)))))

(assert (= (and d!2311961 c!1392805) b!7544212))

(assert (= (and d!2311961 (not c!1392805)) b!7544213))

(assert (= (and d!2311961 res!3023527) b!7544214))

(assert (= (and b!7544214 res!3023528) b!7544215))

(declare-fun m!8112998 () Bool)

(assert (=> b!7544214 m!8112998))

(assert (=> b!7544214 m!8112776))

(declare-fun m!8113000 () Bool)

(assert (=> b!7544214 m!8113000))

(declare-fun m!8113002 () Bool)

(assert (=> b!7544213 m!8113002))

(declare-fun m!8113004 () Bool)

(assert (=> d!2311961 m!8113004))

(assert (=> d!2311961 m!8112982))

(declare-fun m!8113006 () Bool)

(assert (=> d!2311961 m!8113006))

(assert (=> b!7543980 d!2311961))

(declare-fun b!7544218 () Bool)

(declare-fun res!3023530 () Bool)

(declare-fun e!4494614 () Bool)

(assert (=> b!7544218 (=> (not res!3023530) (not e!4494614))))

(declare-fun lt!2644422 () List!72797)

(assert (=> b!7544218 (= res!3023530 (= (size!42410 lt!2644422) (+ (size!42410 lt!2644294) (size!42410 lt!2644305))))))

(declare-fun b!7544217 () Bool)

(declare-fun e!4494613 () List!72797)

(assert (=> b!7544217 (= e!4494613 (Cons!72673 (h!79121 lt!2644294) (++!17431 (t!387512 lt!2644294) lt!2644305)))))

(declare-fun d!2311963 () Bool)

(assert (=> d!2311963 e!4494614))

(declare-fun res!3023529 () Bool)

(assert (=> d!2311963 (=> (not res!3023529) (not e!4494614))))

(assert (=> d!2311963 (= res!3023529 (= (content!15375 lt!2644422) (set.union (content!15375 lt!2644294) (content!15375 lt!2644305))))))

(assert (=> d!2311963 (= lt!2644422 e!4494613)))

(declare-fun c!1392806 () Bool)

(assert (=> d!2311963 (= c!1392806 (is-Nil!72673 lt!2644294))))

(assert (=> d!2311963 (= (++!17431 lt!2644294 lt!2644305) lt!2644422)))

(declare-fun b!7544216 () Bool)

(assert (=> b!7544216 (= e!4494613 lt!2644305)))

(declare-fun b!7544219 () Bool)

(assert (=> b!7544219 (= e!4494614 (or (not (= lt!2644305 Nil!72673)) (= lt!2644422 lt!2644294)))))

(assert (= (and d!2311963 c!1392806) b!7544216))

(assert (= (and d!2311963 (not c!1392806)) b!7544217))

(assert (= (and d!2311963 res!3023529) b!7544218))

(assert (= (and b!7544218 res!3023530) b!7544219))

(declare-fun m!8113008 () Bool)

(assert (=> b!7544218 m!8113008))

(declare-fun m!8113010 () Bool)

(assert (=> b!7544218 m!8113010))

(assert (=> b!7544218 m!8112894))

(declare-fun m!8113012 () Bool)

(assert (=> b!7544217 m!8113012))

(declare-fun m!8113014 () Bool)

(assert (=> d!2311963 m!8113014))

(declare-fun m!8113016 () Bool)

(assert (=> d!2311963 m!8113016))

(assert (=> d!2311963 m!8112902))

(assert (=> b!7543980 d!2311963))

(declare-fun d!2311965 () Bool)

(assert (=> d!2311965 (= (++!17431 (++!17431 testedP!423 lt!2644294) lt!2644305) (++!17431 testedP!423 (++!17431 lt!2644294 lt!2644305)))))

(declare-fun lt!2644427 () Unit!166766)

(declare-fun choose!58386 (List!72797 List!72797 List!72797) Unit!166766)

(assert (=> d!2311965 (= lt!2644427 (choose!58386 testedP!423 lt!2644294 lt!2644305))))

(assert (=> d!2311965 (= (lemmaConcatAssociativity!3079 testedP!423 lt!2644294 lt!2644305) lt!2644427)))

(declare-fun bs!1940078 () Bool)

(assert (= bs!1940078 d!2311965))

(assert (=> bs!1940078 m!8112754))

(assert (=> bs!1940078 m!8112730))

(assert (=> bs!1940078 m!8112754))

(declare-fun m!8113018 () Bool)

(assert (=> bs!1940078 m!8113018))

(assert (=> bs!1940078 m!8112730))

(declare-fun m!8113020 () Bool)

(assert (=> bs!1940078 m!8113020))

(declare-fun m!8113022 () Bool)

(assert (=> bs!1940078 m!8113022))

(assert (=> b!7543980 d!2311965))

(declare-fun d!2311967 () Bool)

(declare-fun lt!2644428 () Regex!19914)

(assert (=> d!2311967 (validRegex!10342 lt!2644428)))

(declare-fun e!4494617 () Regex!19914)

(assert (=> d!2311967 (= lt!2644428 e!4494617)))

(declare-fun c!1392809 () Bool)

(assert (=> d!2311967 (= c!1392809 (is-Cons!72673 lt!2644295))))

(assert (=> d!2311967 (validRegex!10342 baseR!101)))

(assert (=> d!2311967 (= (derivative!446 baseR!101 lt!2644295) lt!2644428)))

(declare-fun b!7544224 () Bool)

(assert (=> b!7544224 (= e!4494617 (derivative!446 (derivativeStep!5704 baseR!101 (h!79121 lt!2644295)) (t!387512 lt!2644295)))))

(declare-fun b!7544225 () Bool)

(assert (=> b!7544225 (= e!4494617 baseR!101)))

(assert (= (and d!2311967 c!1392809) b!7544224))

(assert (= (and d!2311967 (not c!1392809)) b!7544225))

(declare-fun m!8113024 () Bool)

(assert (=> d!2311967 m!8113024))

(assert (=> d!2311967 m!8112796))

(declare-fun m!8113026 () Bool)

(assert (=> b!7544224 m!8113026))

(assert (=> b!7544224 m!8113026))

(declare-fun m!8113028 () Bool)

(assert (=> b!7544224 m!8113028))

(assert (=> b!7543991 d!2311967))

(declare-fun d!2311969 () Bool)

(declare-fun lt!2644429 () List!72797)

(assert (=> d!2311969 (= (++!17431 testedP!423 lt!2644429) input!7874)))

(declare-fun e!4494618 () List!72797)

(assert (=> d!2311969 (= lt!2644429 e!4494618)))

(declare-fun c!1392810 () Bool)

(assert (=> d!2311969 (= c!1392810 (is-Cons!72673 testedP!423))))

(assert (=> d!2311969 (>= (size!42410 input!7874) (size!42410 testedP!423))))

(assert (=> d!2311969 (= (getSuffix!3600 input!7874 testedP!423) lt!2644429)))

(declare-fun b!7544226 () Bool)

(assert (=> b!7544226 (= e!4494618 (getSuffix!3600 (tail!15050 input!7874) (t!387512 testedP!423)))))

(declare-fun b!7544227 () Bool)

(assert (=> b!7544227 (= e!4494618 input!7874)))

(assert (= (and d!2311969 c!1392810) b!7544226))

(assert (= (and d!2311969 (not c!1392810)) b!7544227))

(declare-fun m!8113030 () Bool)

(assert (=> d!2311969 m!8113030))

(assert (=> d!2311969 m!8112782))

(assert (=> d!2311969 m!8112776))

(declare-fun m!8113032 () Bool)

(assert (=> b!7544226 m!8113032))

(assert (=> b!7544226 m!8113032))

(declare-fun m!8113034 () Bool)

(assert (=> b!7544226 m!8113034))

(assert (=> b!7543991 d!2311969))

(declare-fun b!7544231 () Bool)

(declare-fun res!3023531 () Bool)

(declare-fun e!4494620 () Bool)

(assert (=> b!7544231 (=> (not res!3023531) (not e!4494620))))

(assert (=> b!7544231 (= res!3023531 (= (head!15504 lt!2644295) (head!15504 input!7874)))))

(declare-fun d!2311971 () Bool)

(declare-fun e!4494621 () Bool)

(assert (=> d!2311971 e!4494621))

(declare-fun res!3023532 () Bool)

(assert (=> d!2311971 (=> res!3023532 e!4494621)))

(declare-fun lt!2644431 () Bool)

(assert (=> d!2311971 (= res!3023532 (not lt!2644431))))

(declare-fun e!4494622 () Bool)

(assert (=> d!2311971 (= lt!2644431 e!4494622)))

(declare-fun res!3023534 () Bool)

(assert (=> d!2311971 (=> res!3023534 e!4494622)))

(assert (=> d!2311971 (= res!3023534 (is-Nil!72673 lt!2644295))))

(assert (=> d!2311971 (= (isPrefix!6120 lt!2644295 input!7874) lt!2644431)))

(declare-fun b!7544230 () Bool)

(assert (=> b!7544230 (= e!4494622 e!4494620)))

(declare-fun res!3023533 () Bool)

(assert (=> b!7544230 (=> (not res!3023533) (not e!4494620))))

(assert (=> b!7544230 (= res!3023533 (not (is-Nil!72673 input!7874)))))

(declare-fun b!7544233 () Bool)

(assert (=> b!7544233 (= e!4494621 (>= (size!42410 input!7874) (size!42410 lt!2644295)))))

(declare-fun b!7544232 () Bool)

(assert (=> b!7544232 (= e!4494620 (isPrefix!6120 (tail!15050 lt!2644295) (tail!15050 input!7874)))))

(assert (= (and d!2311971 (not res!3023534)) b!7544230))

(assert (= (and b!7544230 res!3023533) b!7544231))

(assert (= (and b!7544231 res!3023531) b!7544232))

(assert (= (and d!2311971 (not res!3023532)) b!7544233))

(declare-fun m!8113042 () Bool)

(assert (=> b!7544231 m!8113042))

(declare-fun m!8113044 () Bool)

(assert (=> b!7544231 m!8113044))

(assert (=> b!7544233 m!8112782))

(assert (=> b!7544233 m!8112892))

(declare-fun m!8113046 () Bool)

(assert (=> b!7544232 m!8113046))

(assert (=> b!7544232 m!8113032))

(assert (=> b!7544232 m!8113046))

(assert (=> b!7544232 m!8113032))

(declare-fun m!8113048 () Bool)

(assert (=> b!7544232 m!8113048))

(assert (=> b!7543991 d!2311971))

(declare-fun bm!691943 () Bool)

(declare-fun call!691948 () Regex!19914)

(declare-fun call!691949 () Regex!19914)

(assert (=> bm!691943 (= call!691948 call!691949)))

(declare-fun b!7544270 () Bool)

(declare-fun c!1392829 () Bool)

(assert (=> b!7544270 (= c!1392829 (nullable!8686 (regOne!40340 r!24333)))))

(declare-fun e!4494642 () Regex!19914)

(declare-fun e!4494645 () Regex!19914)

(assert (=> b!7544270 (= e!4494642 e!4494645)))

(declare-fun b!7544271 () Bool)

(declare-fun e!4494644 () Regex!19914)

(assert (=> b!7544271 (= e!4494644 (ite (= lt!2644304 (c!1392775 r!24333)) EmptyExpr!19914 EmptyLang!19914))))

(declare-fun b!7544272 () Bool)

(declare-fun e!4494643 () Regex!19914)

(assert (=> b!7544272 (= e!4494643 e!4494642)))

(declare-fun c!1392827 () Bool)

(assert (=> b!7544272 (= c!1392827 (is-Star!19914 r!24333))))

(declare-fun call!691951 () Regex!19914)

(declare-fun call!691950 () Regex!19914)

(declare-fun b!7544273 () Bool)

(assert (=> b!7544273 (= e!4494645 (Union!19914 (Concat!28759 call!691950 (regTwo!40340 r!24333)) call!691951))))

(declare-fun c!1392828 () Bool)

(declare-fun bm!691945 () Bool)

(assert (=> bm!691945 (= call!691951 (derivativeStep!5704 (ite c!1392828 (regOne!40341 r!24333) (regTwo!40340 r!24333)) lt!2644304))))

(declare-fun b!7544274 () Bool)

(declare-fun e!4494641 () Regex!19914)

(assert (=> b!7544274 (= e!4494641 e!4494644)))

(declare-fun c!1392826 () Bool)

(assert (=> b!7544274 (= c!1392826 (is-ElementMatch!19914 r!24333))))

(declare-fun b!7544275 () Bool)

(assert (=> b!7544275 (= e!4494643 (Union!19914 call!691951 call!691949))))

(declare-fun bm!691944 () Bool)

(assert (=> bm!691944 (= call!691949 (derivativeStep!5704 (ite c!1392828 (regTwo!40341 r!24333) (ite c!1392827 (reg!20243 r!24333) (regOne!40340 r!24333))) lt!2644304))))

(declare-fun d!2311975 () Bool)

(declare-fun lt!2644442 () Regex!19914)

(assert (=> d!2311975 (validRegex!10342 lt!2644442)))

(assert (=> d!2311975 (= lt!2644442 e!4494641)))

(declare-fun c!1392830 () Bool)

(assert (=> d!2311975 (= c!1392830 (or (is-EmptyExpr!19914 r!24333) (is-EmptyLang!19914 r!24333)))))

(assert (=> d!2311975 (validRegex!10342 r!24333)))

(assert (=> d!2311975 (= (derivativeStep!5704 r!24333 lt!2644304) lt!2644442)))

(declare-fun bm!691946 () Bool)

(assert (=> bm!691946 (= call!691950 call!691948)))

(declare-fun b!7544276 () Bool)

(assert (=> b!7544276 (= e!4494641 EmptyLang!19914)))

(declare-fun b!7544277 () Bool)

(assert (=> b!7544277 (= e!4494645 (Union!19914 (Concat!28759 call!691950 (regTwo!40340 r!24333)) EmptyLang!19914))))

(declare-fun b!7544278 () Bool)

(assert (=> b!7544278 (= e!4494642 (Concat!28759 call!691948 r!24333))))

(declare-fun b!7544279 () Bool)

(assert (=> b!7544279 (= c!1392828 (is-Union!19914 r!24333))))

(assert (=> b!7544279 (= e!4494644 e!4494643)))

(assert (= (and d!2311975 c!1392830) b!7544276))

(assert (= (and d!2311975 (not c!1392830)) b!7544274))

(assert (= (and b!7544274 c!1392826) b!7544271))

(assert (= (and b!7544274 (not c!1392826)) b!7544279))

(assert (= (and b!7544279 c!1392828) b!7544275))

(assert (= (and b!7544279 (not c!1392828)) b!7544272))

(assert (= (and b!7544272 c!1392827) b!7544278))

(assert (= (and b!7544272 (not c!1392827)) b!7544270))

(assert (= (and b!7544270 c!1392829) b!7544273))

(assert (= (and b!7544270 (not c!1392829)) b!7544277))

(assert (= (or b!7544273 b!7544277) bm!691946))

(assert (= (or b!7544278 bm!691946) bm!691943))

(assert (= (or b!7544275 bm!691943) bm!691944))

(assert (= (or b!7544275 b!7544273) bm!691945))

(declare-fun m!8113106 () Bool)

(assert (=> b!7544270 m!8113106))

(declare-fun m!8113108 () Bool)

(assert (=> bm!691945 m!8113108))

(declare-fun m!8113110 () Bool)

(assert (=> bm!691944 m!8113110))

(declare-fun m!8113112 () Bool)

(assert (=> d!2311975 m!8113112))

(assert (=> d!2311975 m!8112738))

(assert (=> b!7543991 d!2311975))

(declare-fun d!2311989 () Bool)

(assert (=> d!2311989 (isPrefix!6120 lt!2644295 knownP!30)))

(declare-fun lt!2644443 () Unit!166766)

(assert (=> d!2311989 (= lt!2644443 (choose!58385 knownP!30 lt!2644295 input!7874))))

(assert (=> d!2311989 (isPrefix!6120 knownP!30 input!7874)))

(assert (=> d!2311989 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!870 knownP!30 lt!2644295 input!7874) lt!2644443)))

(declare-fun bs!1940081 () Bool)

(assert (= bs!1940081 d!2311989))

(assert (=> bs!1940081 m!8112748))

(declare-fun m!8113114 () Bool)

(assert (=> bs!1940081 m!8113114))

(assert (=> bs!1940081 m!8112722))

(assert (=> b!7543991 d!2311989))

(declare-fun d!2311991 () Bool)

(assert (=> d!2311991 (= (derivative!446 baseR!101 (++!17431 testedP!423 (Cons!72673 lt!2644304 Nil!72673))) (derivativeStep!5704 r!24333 lt!2644304))))

(declare-fun lt!2644446 () Unit!166766)

(declare-fun choose!58387 (Regex!19914 Regex!19914 List!72797 C!40154) Unit!166766)

(assert (=> d!2311991 (= lt!2644446 (choose!58387 baseR!101 r!24333 testedP!423 lt!2644304))))

(assert (=> d!2311991 (validRegex!10342 baseR!101)))

(assert (=> d!2311991 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!152 baseR!101 r!24333 testedP!423 lt!2644304) lt!2644446)))

(declare-fun bs!1940082 () Bool)

(assert (= bs!1940082 d!2311991))

(declare-fun m!8113116 () Bool)

(assert (=> bs!1940082 m!8113116))

(declare-fun m!8113118 () Bool)

(assert (=> bs!1940082 m!8113118))

(assert (=> bs!1940082 m!8112796))

(assert (=> bs!1940082 m!8112744))

(assert (=> bs!1940082 m!8113118))

(declare-fun m!8113120 () Bool)

(assert (=> bs!1940082 m!8113120))

(assert (=> b!7543991 d!2311991))

(declare-fun d!2311993 () Bool)

(declare-fun lt!2644447 () List!72797)

(assert (=> d!2311993 (= (++!17431 knownP!30 lt!2644447) input!7874)))

(declare-fun e!4494646 () List!72797)

(assert (=> d!2311993 (= lt!2644447 e!4494646)))

(declare-fun c!1392832 () Bool)

(assert (=> d!2311993 (= c!1392832 (is-Cons!72673 knownP!30))))

(assert (=> d!2311993 (>= (size!42410 input!7874) (size!42410 knownP!30))))

(assert (=> d!2311993 (= (getSuffix!3600 input!7874 knownP!30) lt!2644447)))

(declare-fun b!7544280 () Bool)

(assert (=> b!7544280 (= e!4494646 (getSuffix!3600 (tail!15050 input!7874) (t!387512 knownP!30)))))

(declare-fun b!7544281 () Bool)

(assert (=> b!7544281 (= e!4494646 input!7874)))

(assert (= (and d!2311993 c!1392832) b!7544280))

(assert (= (and d!2311993 (not c!1392832)) b!7544281))

(declare-fun m!8113122 () Bool)

(assert (=> d!2311993 m!8113122))

(assert (=> d!2311993 m!8112782))

(assert (=> d!2311993 m!8112778))

(assert (=> b!7544280 m!8113032))

(assert (=> b!7544280 m!8113032))

(declare-fun m!8113124 () Bool)

(assert (=> b!7544280 m!8113124))

(assert (=> b!7543991 d!2311993))

(declare-fun d!2311995 () Bool)

(assert (=> d!2311995 (= (head!15504 lt!2644290) (h!79121 lt!2644290))))

(assert (=> b!7543991 d!2311995))

(declare-fun d!2311997 () Bool)

(declare-fun lt!2644448 () List!72797)

(assert (=> d!2311997 (= (++!17431 lt!2644295 lt!2644448) knownP!30)))

(declare-fun e!4494647 () List!72797)

(assert (=> d!2311997 (= lt!2644448 e!4494647)))

(declare-fun c!1392833 () Bool)

(assert (=> d!2311997 (= c!1392833 (is-Cons!72673 lt!2644295))))

(assert (=> d!2311997 (>= (size!42410 knownP!30) (size!42410 lt!2644295))))

(assert (=> d!2311997 (= (getSuffix!3600 knownP!30 lt!2644295) lt!2644448)))

(declare-fun b!7544282 () Bool)

(assert (=> b!7544282 (= e!4494647 (getSuffix!3600 (tail!15050 knownP!30) (t!387512 lt!2644295)))))

(declare-fun b!7544283 () Bool)

(assert (=> b!7544283 (= e!4494647 knownP!30)))

(assert (= (and d!2311997 c!1392833) b!7544282))

(assert (= (and d!2311997 (not c!1392833)) b!7544283))

(declare-fun m!8113126 () Bool)

(assert (=> d!2311997 m!8113126))

(assert (=> d!2311997 m!8112778))

(assert (=> d!2311997 m!8112892))

(assert (=> b!7544282 m!8112930))

(assert (=> b!7544282 m!8112930))

(declare-fun m!8113128 () Bool)

(assert (=> b!7544282 m!8113128))

(assert (=> b!7543991 d!2311997))

(declare-fun b!7544286 () Bool)

(declare-fun res!3023544 () Bool)

(declare-fun e!4494649 () Bool)

(assert (=> b!7544286 (=> (not res!3023544) (not e!4494649))))

(declare-fun lt!2644449 () List!72797)

(assert (=> b!7544286 (= res!3023544 (= (size!42410 lt!2644449) (+ (size!42410 testedP!423) (size!42410 lt!2644294))))))

(declare-fun b!7544285 () Bool)

(declare-fun e!4494648 () List!72797)

(assert (=> b!7544285 (= e!4494648 (Cons!72673 (h!79121 testedP!423) (++!17431 (t!387512 testedP!423) lt!2644294)))))

(declare-fun d!2311999 () Bool)

(assert (=> d!2311999 e!4494649))

(declare-fun res!3023543 () Bool)

(assert (=> d!2311999 (=> (not res!3023543) (not e!4494649))))

(assert (=> d!2311999 (= res!3023543 (= (content!15375 lt!2644449) (set.union (content!15375 testedP!423) (content!15375 lt!2644294))))))

(assert (=> d!2311999 (= lt!2644449 e!4494648)))

(declare-fun c!1392834 () Bool)

(assert (=> d!2311999 (= c!1392834 (is-Nil!72673 testedP!423))))

(assert (=> d!2311999 (= (++!17431 testedP!423 lt!2644294) lt!2644449)))

(declare-fun b!7544284 () Bool)

(assert (=> b!7544284 (= e!4494648 lt!2644294)))

(declare-fun b!7544287 () Bool)

(assert (=> b!7544287 (= e!4494649 (or (not (= lt!2644294 Nil!72673)) (= lt!2644449 testedP!423)))))

(assert (= (and d!2311999 c!1392834) b!7544284))

(assert (= (and d!2311999 (not c!1392834)) b!7544285))

(assert (= (and d!2311999 res!3023543) b!7544286))

(assert (= (and b!7544286 res!3023544) b!7544287))

(declare-fun m!8113130 () Bool)

(assert (=> b!7544286 m!8113130))

(assert (=> b!7544286 m!8112776))

(assert (=> b!7544286 m!8113010))

(declare-fun m!8113132 () Bool)

(assert (=> b!7544285 m!8113132))

(declare-fun m!8113134 () Bool)

(assert (=> d!2311999 m!8113134))

(assert (=> d!2311999 m!8112982))

(assert (=> d!2311999 m!8113016))

(assert (=> b!7543991 d!2311999))

(declare-fun b!7544290 () Bool)

(declare-fun res!3023546 () Bool)

(declare-fun e!4494651 () Bool)

(assert (=> b!7544290 (=> (not res!3023546) (not e!4494651))))

(declare-fun lt!2644450 () List!72797)

(assert (=> b!7544290 (= res!3023546 (= (size!42410 lt!2644450) (+ (size!42410 knownP!30) (size!42410 lt!2644310))))))

(declare-fun b!7544289 () Bool)

(declare-fun e!4494650 () List!72797)

(assert (=> b!7544289 (= e!4494650 (Cons!72673 (h!79121 knownP!30) (++!17431 (t!387512 knownP!30) lt!2644310)))))

(declare-fun d!2312001 () Bool)

(assert (=> d!2312001 e!4494651))

(declare-fun res!3023545 () Bool)

(assert (=> d!2312001 (=> (not res!3023545) (not e!4494651))))

(assert (=> d!2312001 (= res!3023545 (= (content!15375 lt!2644450) (set.union (content!15375 knownP!30) (content!15375 lt!2644310))))))

(assert (=> d!2312001 (= lt!2644450 e!4494650)))

(declare-fun c!1392835 () Bool)

(assert (=> d!2312001 (= c!1392835 (is-Nil!72673 knownP!30))))

(assert (=> d!2312001 (= (++!17431 knownP!30 lt!2644310) lt!2644450)))

(declare-fun b!7544288 () Bool)

(assert (=> b!7544288 (= e!4494650 lt!2644310)))

(declare-fun b!7544291 () Bool)

(assert (=> b!7544291 (= e!4494651 (or (not (= lt!2644310 Nil!72673)) (= lt!2644450 knownP!30)))))

(assert (= (and d!2312001 c!1392835) b!7544288))

(assert (= (and d!2312001 (not c!1392835)) b!7544289))

(assert (= (and d!2312001 res!3023545) b!7544290))

(assert (= (and b!7544290 res!3023546) b!7544291))

(declare-fun m!8113136 () Bool)

(assert (=> b!7544290 m!8113136))

(assert (=> b!7544290 m!8112778))

(assert (=> b!7544290 m!8112964))

(declare-fun m!8113138 () Bool)

(assert (=> b!7544289 m!8113138))

(declare-fun m!8113140 () Bool)

(assert (=> d!2312001 m!8113140))

(declare-fun m!8113142 () Bool)

(assert (=> d!2312001 m!8113142))

(assert (=> d!2312001 m!8112972))

(assert (=> b!7543991 d!2312001))

(declare-fun d!2312003 () Bool)

(assert (=> d!2312003 (isPrefix!6120 (++!17431 testedP!423 (Cons!72673 (head!15504 (getSuffix!3600 input!7874 testedP!423)) Nil!72673)) input!7874)))

(declare-fun lt!2644453 () Unit!166766)

(declare-fun choose!58388 (List!72797 List!72797) Unit!166766)

(assert (=> d!2312003 (= lt!2644453 (choose!58388 testedP!423 input!7874))))

(assert (=> d!2312003 (isPrefix!6120 testedP!423 input!7874)))

(assert (=> d!2312003 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1185 testedP!423 input!7874) lt!2644453)))

(declare-fun bs!1940083 () Bool)

(assert (= bs!1940083 d!2312003))

(declare-fun m!8113144 () Bool)

(assert (=> bs!1940083 m!8113144))

(declare-fun m!8113146 () Bool)

(assert (=> bs!1940083 m!8113146))

(declare-fun m!8113148 () Bool)

(assert (=> bs!1940083 m!8113148))

(assert (=> bs!1940083 m!8112750))

(assert (=> bs!1940083 m!8112750))

(declare-fun m!8113150 () Bool)

(assert (=> bs!1940083 m!8113150))

(assert (=> bs!1940083 m!8113144))

(assert (=> bs!1940083 m!8112720))

(assert (=> b!7543991 d!2312003))

(declare-fun b!7544297 () Bool)

(declare-fun res!3023547 () Bool)

(declare-fun e!4494654 () Bool)

(assert (=> b!7544297 (=> (not res!3023547) (not e!4494654))))

(assert (=> b!7544297 (= res!3023547 (= (head!15504 lt!2644295) (head!15504 knownP!30)))))

(declare-fun d!2312005 () Bool)

(declare-fun e!4494655 () Bool)

(assert (=> d!2312005 e!4494655))

(declare-fun res!3023548 () Bool)

(assert (=> d!2312005 (=> res!3023548 e!4494655)))

(declare-fun lt!2644456 () Bool)

(assert (=> d!2312005 (= res!3023548 (not lt!2644456))))

(declare-fun e!4494656 () Bool)

(assert (=> d!2312005 (= lt!2644456 e!4494656)))

(declare-fun res!3023550 () Bool)

(assert (=> d!2312005 (=> res!3023550 e!4494656)))

(assert (=> d!2312005 (= res!3023550 (is-Nil!72673 lt!2644295))))

(assert (=> d!2312005 (= (isPrefix!6120 lt!2644295 knownP!30) lt!2644456)))

(declare-fun b!7544296 () Bool)

(assert (=> b!7544296 (= e!4494656 e!4494654)))

(declare-fun res!3023549 () Bool)

(assert (=> b!7544296 (=> (not res!3023549) (not e!4494654))))

(assert (=> b!7544296 (= res!3023549 (not (is-Nil!72673 knownP!30)))))

(declare-fun b!7544299 () Bool)

(assert (=> b!7544299 (= e!4494655 (>= (size!42410 knownP!30) (size!42410 lt!2644295)))))

(declare-fun b!7544298 () Bool)

(assert (=> b!7544298 (= e!4494654 (isPrefix!6120 (tail!15050 lt!2644295) (tail!15050 knownP!30)))))

(assert (= (and d!2312005 (not res!3023550)) b!7544296))

(assert (= (and b!7544296 res!3023549) b!7544297))

(assert (= (and b!7544297 res!3023547) b!7544298))

(assert (= (and d!2312005 (not res!3023548)) b!7544299))

(assert (=> b!7544297 m!8113042))

(assert (=> b!7544297 m!8112936))

(assert (=> b!7544299 m!8112778))

(assert (=> b!7544299 m!8112892))

(assert (=> b!7544298 m!8113046))

(assert (=> b!7544298 m!8112930))

(assert (=> b!7544298 m!8113046))

(assert (=> b!7544298 m!8112930))

(declare-fun m!8113152 () Bool)

(assert (=> b!7544298 m!8113152))

(assert (=> b!7543991 d!2312005))

(declare-fun d!2312007 () Bool)

(assert (=> d!2312007 (= ($colon$colon!3374 lt!2644293 lt!2644304) (Cons!72673 lt!2644304 lt!2644293))))

(assert (=> b!7543974 d!2312007))

(declare-fun d!2312009 () Bool)

(assert (=> d!2312009 (= (tail!15050 lt!2644306) (t!387512 lt!2644306))))

(assert (=> b!7543974 d!2312009))

(declare-fun b!7544342 () Bool)

(declare-fun e!4494686 () Bool)

(declare-fun e!4494684 () Bool)

(assert (=> b!7544342 (= e!4494686 e!4494684)))

(declare-fun c!1392847 () Bool)

(assert (=> b!7544342 (= c!1392847 (is-Star!19914 baseR!101))))

(declare-fun b!7544343 () Bool)

(declare-fun e!4494687 () Bool)

(declare-fun call!691962 () Bool)

(assert (=> b!7544343 (= e!4494687 call!691962)))

(declare-fun b!7544344 () Bool)

(declare-fun res!3023577 () Bool)

(declare-fun e!4494688 () Bool)

(assert (=> b!7544344 (=> res!3023577 e!4494688)))

(assert (=> b!7544344 (= res!3023577 (not (is-Concat!28759 baseR!101)))))

(declare-fun e!4494685 () Bool)

(assert (=> b!7544344 (= e!4494685 e!4494688)))

(declare-fun bm!691955 () Bool)

(declare-fun call!691961 () Bool)

(assert (=> bm!691955 (= call!691962 call!691961)))

(declare-fun d!2312011 () Bool)

(declare-fun res!3023578 () Bool)

(assert (=> d!2312011 (=> res!3023578 e!4494686)))

(assert (=> d!2312011 (= res!3023578 (is-ElementMatch!19914 baseR!101))))

(assert (=> d!2312011 (= (validRegex!10342 baseR!101) e!4494686)))

(declare-fun c!1392846 () Bool)

(declare-fun bm!691956 () Bool)

(assert (=> bm!691956 (= call!691961 (validRegex!10342 (ite c!1392847 (reg!20243 baseR!101) (ite c!1392846 (regTwo!40341 baseR!101) (regTwo!40340 baseR!101)))))))

(declare-fun b!7544345 () Bool)

(assert (=> b!7544345 (= e!4494684 e!4494685)))

(assert (=> b!7544345 (= c!1392846 (is-Union!19914 baseR!101))))

(declare-fun b!7544346 () Bool)

(declare-fun res!3023579 () Bool)

(declare-fun e!4494689 () Bool)

(assert (=> b!7544346 (=> (not res!3023579) (not e!4494689))))

(declare-fun call!691960 () Bool)

(assert (=> b!7544346 (= res!3023579 call!691960)))

(assert (=> b!7544346 (= e!4494685 e!4494689)))

(declare-fun b!7544347 () Bool)

(declare-fun e!4494683 () Bool)

(assert (=> b!7544347 (= e!4494683 call!691961)))

(declare-fun bm!691957 () Bool)

(assert (=> bm!691957 (= call!691960 (validRegex!10342 (ite c!1392846 (regOne!40341 baseR!101) (regOne!40340 baseR!101))))))

(declare-fun b!7544348 () Bool)

(assert (=> b!7544348 (= e!4494689 call!691962)))

(declare-fun b!7544349 () Bool)

(assert (=> b!7544349 (= e!4494688 e!4494687)))

(declare-fun res!3023581 () Bool)

(assert (=> b!7544349 (=> (not res!3023581) (not e!4494687))))

(assert (=> b!7544349 (= res!3023581 call!691960)))

(declare-fun b!7544350 () Bool)

(assert (=> b!7544350 (= e!4494684 e!4494683)))

(declare-fun res!3023580 () Bool)

(assert (=> b!7544350 (= res!3023580 (not (nullable!8686 (reg!20243 baseR!101))))))

(assert (=> b!7544350 (=> (not res!3023580) (not e!4494683))))

(assert (= (and d!2312011 (not res!3023578)) b!7544342))

(assert (= (and b!7544342 c!1392847) b!7544350))

(assert (= (and b!7544342 (not c!1392847)) b!7544345))

(assert (= (and b!7544350 res!3023580) b!7544347))

(assert (= (and b!7544345 c!1392846) b!7544346))

(assert (= (and b!7544345 (not c!1392846)) b!7544344))

(assert (= (and b!7544346 res!3023579) b!7544348))

(assert (= (and b!7544344 (not res!3023577)) b!7544349))

(assert (= (and b!7544349 res!3023581) b!7544343))

(assert (= (or b!7544346 b!7544349) bm!691957))

(assert (= (or b!7544348 b!7544343) bm!691955))

(assert (= (or b!7544347 bm!691955) bm!691956))

(declare-fun m!8113154 () Bool)

(assert (=> bm!691956 m!8113154))

(declare-fun m!8113156 () Bool)

(assert (=> bm!691957 m!8113156))

(declare-fun m!8113158 () Bool)

(assert (=> b!7544350 m!8113158))

(assert (=> start!729606 d!2312011))

(declare-fun b!7544353 () Bool)

(declare-fun res!3023583 () Bool)

(declare-fun e!4494691 () Bool)

(assert (=> b!7544353 (=> (not res!3023583) (not e!4494691))))

(declare-fun lt!2644457 () List!72797)

(assert (=> b!7544353 (= res!3023583 (= (size!42410 lt!2644457) (+ (size!42410 testedP!423) (size!42410 lt!2644303))))))

(declare-fun b!7544352 () Bool)

(declare-fun e!4494690 () List!72797)

(assert (=> b!7544352 (= e!4494690 (Cons!72673 (h!79121 testedP!423) (++!17431 (t!387512 testedP!423) lt!2644303)))))

(declare-fun d!2312013 () Bool)

(assert (=> d!2312013 e!4494691))

(declare-fun res!3023582 () Bool)

(assert (=> d!2312013 (=> (not res!3023582) (not e!4494691))))

(assert (=> d!2312013 (= res!3023582 (= (content!15375 lt!2644457) (set.union (content!15375 testedP!423) (content!15375 lt!2644303))))))

(assert (=> d!2312013 (= lt!2644457 e!4494690)))

(declare-fun c!1392848 () Bool)

(assert (=> d!2312013 (= c!1392848 (is-Nil!72673 testedP!423))))

(assert (=> d!2312013 (= (++!17431 testedP!423 lt!2644303) lt!2644457)))

(declare-fun b!7544351 () Bool)

(assert (=> b!7544351 (= e!4494690 lt!2644303)))

(declare-fun b!7544354 () Bool)

(assert (=> b!7544354 (= e!4494691 (or (not (= lt!2644303 Nil!72673)) (= lt!2644457 testedP!423)))))

(assert (= (and d!2312013 c!1392848) b!7544351))

(assert (= (and d!2312013 (not c!1392848)) b!7544352))

(assert (= (and d!2312013 res!3023582) b!7544353))

(assert (= (and b!7544353 res!3023583) b!7544354))

(declare-fun m!8113160 () Bool)

(assert (=> b!7544353 m!8113160))

(assert (=> b!7544353 m!8112776))

(declare-fun m!8113162 () Bool)

(assert (=> b!7544353 m!8113162))

(declare-fun m!8113164 () Bool)

(assert (=> b!7544352 m!8113164))

(declare-fun m!8113166 () Bool)

(assert (=> d!2312013 m!8113166))

(assert (=> d!2312013 m!8112982))

(declare-fun m!8113168 () Bool)

(assert (=> d!2312013 m!8113168))

(assert (=> b!7543994 d!2312013))

(declare-fun b!7544357 () Bool)

(declare-fun res!3023585 () Bool)

(declare-fun e!4494693 () Bool)

(assert (=> b!7544357 (=> (not res!3023585) (not e!4494693))))

(declare-fun lt!2644458 () List!72797)

(assert (=> b!7544357 (= res!3023585 (= (size!42410 lt!2644458) (+ (size!42410 lt!2644306) (size!42410 lt!2644310))))))

(declare-fun b!7544356 () Bool)

(declare-fun e!4494692 () List!72797)

(assert (=> b!7544356 (= e!4494692 (Cons!72673 (h!79121 lt!2644306) (++!17431 (t!387512 lt!2644306) lt!2644310)))))

(declare-fun d!2312015 () Bool)

(assert (=> d!2312015 e!4494693))

(declare-fun res!3023584 () Bool)

(assert (=> d!2312015 (=> (not res!3023584) (not e!4494693))))

(assert (=> d!2312015 (= res!3023584 (= (content!15375 lt!2644458) (set.union (content!15375 lt!2644306) (content!15375 lt!2644310))))))

(assert (=> d!2312015 (= lt!2644458 e!4494692)))

(declare-fun c!1392849 () Bool)

(assert (=> d!2312015 (= c!1392849 (is-Nil!72673 lt!2644306))))

(assert (=> d!2312015 (= (++!17431 lt!2644306 lt!2644310) lt!2644458)))

(declare-fun b!7544355 () Bool)

(assert (=> b!7544355 (= e!4494692 lt!2644310)))

(declare-fun b!7544358 () Bool)

(assert (=> b!7544358 (= e!4494693 (or (not (= lt!2644310 Nil!72673)) (= lt!2644458 lt!2644306)))))

(assert (= (and d!2312015 c!1392849) b!7544355))

(assert (= (and d!2312015 (not c!1392849)) b!7544356))

(assert (= (and d!2312015 res!3023584) b!7544357))

(assert (= (and b!7544357 res!3023585) b!7544358))

(declare-fun m!8113170 () Bool)

(assert (=> b!7544357 m!8113170))

(assert (=> b!7544357 m!8112976))

(assert (=> b!7544357 m!8112964))

(declare-fun m!8113172 () Bool)

(assert (=> b!7544356 m!8113172))

(declare-fun m!8113174 () Bool)

(assert (=> d!2312015 m!8113174))

(assert (=> d!2312015 m!8112984))

(assert (=> d!2312015 m!8112972))

(assert (=> b!7543994 d!2312015))

(declare-fun d!2312017 () Bool)

(assert (=> d!2312017 (= (++!17431 (++!17431 testedP!423 lt!2644306) lt!2644310) (++!17431 testedP!423 (++!17431 lt!2644306 lt!2644310)))))

(declare-fun lt!2644459 () Unit!166766)

(assert (=> d!2312017 (= lt!2644459 (choose!58386 testedP!423 lt!2644306 lt!2644310))))

(assert (=> d!2312017 (= (lemmaConcatAssociativity!3079 testedP!423 lt!2644306 lt!2644310) lt!2644459)))

(declare-fun bs!1940084 () Bool)

(assert (= bs!1940084 d!2312017))

(assert (=> bs!1940084 m!8112786))

(assert (=> bs!1940084 m!8112768))

(assert (=> bs!1940084 m!8112786))

(declare-fun m!8113176 () Bool)

(assert (=> bs!1940084 m!8113176))

(assert (=> bs!1940084 m!8112768))

(declare-fun m!8113178 () Bool)

(assert (=> bs!1940084 m!8113178))

(declare-fun m!8113180 () Bool)

(assert (=> bs!1940084 m!8113180))

(assert (=> b!7543994 d!2312017))

(declare-fun b!7544360 () Bool)

(declare-fun res!3023586 () Bool)

(declare-fun e!4494694 () Bool)

(assert (=> b!7544360 (=> (not res!3023586) (not e!4494694))))

(assert (=> b!7544360 (= res!3023586 (= (head!15504 knownP!30) (head!15504 input!7874)))))

(declare-fun d!2312019 () Bool)

(declare-fun e!4494695 () Bool)

(assert (=> d!2312019 e!4494695))

(declare-fun res!3023587 () Bool)

(assert (=> d!2312019 (=> res!3023587 e!4494695)))

(declare-fun lt!2644460 () Bool)

(assert (=> d!2312019 (= res!3023587 (not lt!2644460))))

(declare-fun e!4494696 () Bool)

(assert (=> d!2312019 (= lt!2644460 e!4494696)))

(declare-fun res!3023589 () Bool)

(assert (=> d!2312019 (=> res!3023589 e!4494696)))

(assert (=> d!2312019 (= res!3023589 (is-Nil!72673 knownP!30))))

(assert (=> d!2312019 (= (isPrefix!6120 knownP!30 input!7874) lt!2644460)))

(declare-fun b!7544359 () Bool)

(assert (=> b!7544359 (= e!4494696 e!4494694)))

(declare-fun res!3023588 () Bool)

(assert (=> b!7544359 (=> (not res!3023588) (not e!4494694))))

(assert (=> b!7544359 (= res!3023588 (not (is-Nil!72673 input!7874)))))

(declare-fun b!7544362 () Bool)

(assert (=> b!7544362 (= e!4494695 (>= (size!42410 input!7874) (size!42410 knownP!30)))))

(declare-fun b!7544361 () Bool)

(assert (=> b!7544361 (= e!4494694 (isPrefix!6120 (tail!15050 knownP!30) (tail!15050 input!7874)))))

(assert (= (and d!2312019 (not res!3023589)) b!7544359))

(assert (= (and b!7544359 res!3023588) b!7544360))

(assert (= (and b!7544360 res!3023586) b!7544361))

(assert (= (and d!2312019 (not res!3023587)) b!7544362))

(assert (=> b!7544360 m!8112936))

(assert (=> b!7544360 m!8113044))

(assert (=> b!7544362 m!8112782))

(assert (=> b!7544362 m!8112778))

(assert (=> b!7544361 m!8112930))

(assert (=> b!7544361 m!8113032))

(assert (=> b!7544361 m!8112930))

(assert (=> b!7544361 m!8113032))

(declare-fun m!8113182 () Bool)

(assert (=> b!7544361 m!8113182))

(assert (=> b!7543973 d!2312019))

(declare-fun b!7544363 () Bool)

(declare-fun e!4494700 () Bool)

(declare-fun e!4494698 () Bool)

(assert (=> b!7544363 (= e!4494700 e!4494698)))

(declare-fun c!1392851 () Bool)

(assert (=> b!7544363 (= c!1392851 (is-Star!19914 r!24333))))

(declare-fun b!7544364 () Bool)

(declare-fun e!4494701 () Bool)

(declare-fun call!691965 () Bool)

(assert (=> b!7544364 (= e!4494701 call!691965)))

(declare-fun b!7544365 () Bool)

(declare-fun res!3023590 () Bool)

(declare-fun e!4494702 () Bool)

(assert (=> b!7544365 (=> res!3023590 e!4494702)))

(assert (=> b!7544365 (= res!3023590 (not (is-Concat!28759 r!24333)))))

(declare-fun e!4494699 () Bool)

(assert (=> b!7544365 (= e!4494699 e!4494702)))

(declare-fun bm!691958 () Bool)

(declare-fun call!691964 () Bool)

(assert (=> bm!691958 (= call!691965 call!691964)))

(declare-fun d!2312021 () Bool)

(declare-fun res!3023591 () Bool)

(assert (=> d!2312021 (=> res!3023591 e!4494700)))

(assert (=> d!2312021 (= res!3023591 (is-ElementMatch!19914 r!24333))))

(assert (=> d!2312021 (= (validRegex!10342 r!24333) e!4494700)))

(declare-fun c!1392850 () Bool)

(declare-fun bm!691959 () Bool)

(assert (=> bm!691959 (= call!691964 (validRegex!10342 (ite c!1392851 (reg!20243 r!24333) (ite c!1392850 (regTwo!40341 r!24333) (regTwo!40340 r!24333)))))))

(declare-fun b!7544366 () Bool)

(assert (=> b!7544366 (= e!4494698 e!4494699)))

(assert (=> b!7544366 (= c!1392850 (is-Union!19914 r!24333))))

(declare-fun b!7544367 () Bool)

(declare-fun res!3023592 () Bool)

(declare-fun e!4494703 () Bool)

(assert (=> b!7544367 (=> (not res!3023592) (not e!4494703))))

(declare-fun call!691963 () Bool)

(assert (=> b!7544367 (= res!3023592 call!691963)))

(assert (=> b!7544367 (= e!4494699 e!4494703)))

(declare-fun b!7544368 () Bool)

(declare-fun e!4494697 () Bool)

(assert (=> b!7544368 (= e!4494697 call!691964)))

(declare-fun bm!691960 () Bool)

(assert (=> bm!691960 (= call!691963 (validRegex!10342 (ite c!1392850 (regOne!40341 r!24333) (regOne!40340 r!24333))))))

(declare-fun b!7544369 () Bool)

(assert (=> b!7544369 (= e!4494703 call!691965)))

(declare-fun b!7544370 () Bool)

(assert (=> b!7544370 (= e!4494702 e!4494701)))

(declare-fun res!3023594 () Bool)

(assert (=> b!7544370 (=> (not res!3023594) (not e!4494701))))

(assert (=> b!7544370 (= res!3023594 call!691963)))

(declare-fun b!7544371 () Bool)

(assert (=> b!7544371 (= e!4494698 e!4494697)))

(declare-fun res!3023593 () Bool)

(assert (=> b!7544371 (= res!3023593 (not (nullable!8686 (reg!20243 r!24333))))))

(assert (=> b!7544371 (=> (not res!3023593) (not e!4494697))))

(assert (= (and d!2312021 (not res!3023591)) b!7544363))

(assert (= (and b!7544363 c!1392851) b!7544371))

(assert (= (and b!7544363 (not c!1392851)) b!7544366))

(assert (= (and b!7544371 res!3023593) b!7544368))

(assert (= (and b!7544366 c!1392850) b!7544367))

(assert (= (and b!7544366 (not c!1392850)) b!7544365))

(assert (= (and b!7544367 res!3023592) b!7544369))

(assert (= (and b!7544365 (not res!3023590)) b!7544370))

(assert (= (and b!7544370 res!3023594) b!7544364))

(assert (= (or b!7544367 b!7544370) bm!691960))

(assert (= (or b!7544369 b!7544364) bm!691958))

(assert (= (or b!7544368 bm!691958) bm!691959))

(declare-fun m!8113184 () Bool)

(assert (=> bm!691959 m!8113184))

(declare-fun m!8113186 () Bool)

(assert (=> bm!691960 m!8113186))

(declare-fun m!8113188 () Bool)

(assert (=> b!7544371 m!8113188))

(assert (=> b!7543976 d!2312021))

(declare-fun d!2312023 () Bool)

(declare-fun e!4494708 () Bool)

(assert (=> d!2312023 e!4494708))

(declare-fun c!1392853 () Bool)

(assert (=> d!2312023 (= c!1392853 (is-EmptyExpr!19914 baseR!101))))

(declare-fun lt!2644461 () Bool)

(declare-fun e!4494704 () Bool)

(assert (=> d!2312023 (= lt!2644461 e!4494704)))

(declare-fun c!1392854 () Bool)

(assert (=> d!2312023 (= c!1392854 (isEmpty!41382 knownP!30))))

(assert (=> d!2312023 (validRegex!10342 baseR!101)))

(assert (=> d!2312023 (= (matchR!9516 baseR!101 knownP!30) lt!2644461)))

(declare-fun b!7544372 () Bool)

(declare-fun res!3023599 () Bool)

(declare-fun e!4494710 () Bool)

(assert (=> b!7544372 (=> (not res!3023599) (not e!4494710))))

(declare-fun call!691966 () Bool)

(assert (=> b!7544372 (= res!3023599 (not call!691966))))

(declare-fun b!7544373 () Bool)

(assert (=> b!7544373 (= e!4494704 (matchR!9516 (derivativeStep!5704 baseR!101 (head!15504 knownP!30)) (tail!15050 knownP!30)))))

(declare-fun b!7544374 () Bool)

(declare-fun res!3023600 () Bool)

(declare-fun e!4494709 () Bool)

(assert (=> b!7544374 (=> res!3023600 e!4494709)))

(assert (=> b!7544374 (= res!3023600 (not (is-ElementMatch!19914 baseR!101)))))

(declare-fun e!4494706 () Bool)

(assert (=> b!7544374 (= e!4494706 e!4494709)))

(declare-fun b!7544375 () Bool)

(assert (=> b!7544375 (= e!4494708 e!4494706)))

(declare-fun c!1392852 () Bool)

(assert (=> b!7544375 (= c!1392852 (is-EmptyLang!19914 baseR!101))))

(declare-fun b!7544376 () Bool)

(assert (=> b!7544376 (= e!4494704 (nullable!8686 baseR!101))))

(declare-fun b!7544377 () Bool)

(declare-fun res!3023602 () Bool)

(declare-fun e!4494707 () Bool)

(assert (=> b!7544377 (=> res!3023602 e!4494707)))

(assert (=> b!7544377 (= res!3023602 (not (isEmpty!41382 (tail!15050 knownP!30))))))

(declare-fun b!7544378 () Bool)

(assert (=> b!7544378 (= e!4494710 (= (head!15504 knownP!30) (c!1392775 baseR!101)))))

(declare-fun b!7544379 () Bool)

(assert (=> b!7544379 (= e!4494707 (not (= (head!15504 knownP!30) (c!1392775 baseR!101))))))

(declare-fun b!7544380 () Bool)

(assert (=> b!7544380 (= e!4494706 (not lt!2644461))))

(declare-fun b!7544381 () Bool)

(declare-fun res!3023601 () Bool)

(assert (=> b!7544381 (=> res!3023601 e!4494709)))

(assert (=> b!7544381 (= res!3023601 e!4494710)))

(declare-fun res!3023596 () Bool)

(assert (=> b!7544381 (=> (not res!3023596) (not e!4494710))))

(assert (=> b!7544381 (= res!3023596 lt!2644461)))

(declare-fun b!7544382 () Bool)

(declare-fun res!3023595 () Bool)

(assert (=> b!7544382 (=> (not res!3023595) (not e!4494710))))

(assert (=> b!7544382 (= res!3023595 (isEmpty!41382 (tail!15050 knownP!30)))))

(declare-fun bm!691961 () Bool)

(assert (=> bm!691961 (= call!691966 (isEmpty!41382 knownP!30))))

(declare-fun b!7544383 () Bool)

(declare-fun e!4494705 () Bool)

(assert (=> b!7544383 (= e!4494709 e!4494705)))

(declare-fun res!3023598 () Bool)

(assert (=> b!7544383 (=> (not res!3023598) (not e!4494705))))

(assert (=> b!7544383 (= res!3023598 (not lt!2644461))))

(declare-fun b!7544384 () Bool)

(assert (=> b!7544384 (= e!4494705 e!4494707)))

(declare-fun res!3023597 () Bool)

(assert (=> b!7544384 (=> res!3023597 e!4494707)))

(assert (=> b!7544384 (= res!3023597 call!691966)))

(declare-fun b!7544385 () Bool)

(assert (=> b!7544385 (= e!4494708 (= lt!2644461 call!691966))))

(assert (= (and d!2312023 c!1392854) b!7544376))

(assert (= (and d!2312023 (not c!1392854)) b!7544373))

(assert (= (and d!2312023 c!1392853) b!7544385))

(assert (= (and d!2312023 (not c!1392853)) b!7544375))

(assert (= (and b!7544375 c!1392852) b!7544380))

(assert (= (and b!7544375 (not c!1392852)) b!7544374))

(assert (= (and b!7544374 (not res!3023600)) b!7544381))

(assert (= (and b!7544381 res!3023596) b!7544372))

(assert (= (and b!7544372 res!3023599) b!7544382))

(assert (= (and b!7544382 res!3023595) b!7544378))

(assert (= (and b!7544381 (not res!3023601)) b!7544383))

(assert (= (and b!7544383 res!3023598) b!7544384))

(assert (= (and b!7544384 (not res!3023597)) b!7544377))

(assert (= (and b!7544377 (not res!3023602)) b!7544379))

(assert (= (or b!7544385 b!7544372 b!7544384) bm!691961))

(assert (=> b!7544382 m!8112930))

(assert (=> b!7544382 m!8112930))

(declare-fun m!8113190 () Bool)

(assert (=> b!7544382 m!8113190))

(assert (=> b!7544378 m!8112936))

(declare-fun m!8113192 () Bool)

(assert (=> b!7544376 m!8113192))

(assert (=> b!7544373 m!8112936))

(assert (=> b!7544373 m!8112936))

(declare-fun m!8113194 () Bool)

(assert (=> b!7544373 m!8113194))

(assert (=> b!7544373 m!8112930))

(assert (=> b!7544373 m!8113194))

(assert (=> b!7544373 m!8112930))

(declare-fun m!8113196 () Bool)

(assert (=> b!7544373 m!8113196))

(declare-fun m!8113198 () Bool)

(assert (=> d!2312023 m!8113198))

(assert (=> d!2312023 m!8112796))

(assert (=> b!7544379 m!8112936))

(assert (=> bm!691961 m!8113198))

(assert (=> b!7544377 m!8112930))

(assert (=> b!7544377 m!8112930))

(assert (=> b!7544377 m!8113190))

(assert (=> b!7543987 d!2312023))

(declare-fun d!2312025 () Bool)

(declare-fun lt!2644463 () Int)

(assert (=> d!2312025 (>= lt!2644463 0)))

(declare-fun e!4494718 () Int)

(assert (=> d!2312025 (= lt!2644463 e!4494718)))

(declare-fun c!1392858 () Bool)

(assert (=> d!2312025 (= c!1392858 (is-Nil!72673 input!7874))))

(assert (=> d!2312025 (= (size!42410 input!7874) lt!2644463)))

(declare-fun b!7544400 () Bool)

(assert (=> b!7544400 (= e!4494718 0)))

(declare-fun b!7544401 () Bool)

(assert (=> b!7544401 (= e!4494718 (+ 1 (size!42410 (t!387512 input!7874))))))

(assert (= (and d!2312025 c!1392858) b!7544400))

(assert (= (and d!2312025 (not c!1392858)) b!7544401))

(declare-fun m!8113200 () Bool)

(assert (=> b!7544401 m!8113200))

(assert (=> b!7543997 d!2312025))

(declare-fun b!7544403 () Bool)

(declare-fun res!3023611 () Bool)

(declare-fun e!4494719 () Bool)

(assert (=> b!7544403 (=> (not res!3023611) (not e!4494719))))

(assert (=> b!7544403 (= res!3023611 (= (head!15504 testedP!423) (head!15504 input!7874)))))

(declare-fun d!2312027 () Bool)

(declare-fun e!4494720 () Bool)

(assert (=> d!2312027 e!4494720))

(declare-fun res!3023612 () Bool)

(assert (=> d!2312027 (=> res!3023612 e!4494720)))

(declare-fun lt!2644464 () Bool)

(assert (=> d!2312027 (= res!3023612 (not lt!2644464))))

(declare-fun e!4494721 () Bool)

(assert (=> d!2312027 (= lt!2644464 e!4494721)))

(declare-fun res!3023614 () Bool)

(assert (=> d!2312027 (=> res!3023614 e!4494721)))

(assert (=> d!2312027 (= res!3023614 (is-Nil!72673 testedP!423))))

(assert (=> d!2312027 (= (isPrefix!6120 testedP!423 input!7874) lt!2644464)))

(declare-fun b!7544402 () Bool)

(assert (=> b!7544402 (= e!4494721 e!4494719)))

(declare-fun res!3023613 () Bool)

(assert (=> b!7544402 (=> (not res!3023613) (not e!4494719))))

(assert (=> b!7544402 (= res!3023613 (not (is-Nil!72673 input!7874)))))

(declare-fun b!7544405 () Bool)

(assert (=> b!7544405 (= e!4494720 (>= (size!42410 input!7874) (size!42410 testedP!423)))))

(declare-fun b!7544404 () Bool)

(assert (=> b!7544404 (= e!4494719 (isPrefix!6120 (tail!15050 testedP!423) (tail!15050 input!7874)))))

(assert (= (and d!2312027 (not res!3023614)) b!7544402))

(assert (= (and b!7544402 res!3023613) b!7544403))

(assert (= (and b!7544403 res!3023611) b!7544404))

(assert (= (and d!2312027 (not res!3023612)) b!7544405))

(assert (=> b!7544403 m!8112934))

(assert (=> b!7544403 m!8113044))

(assert (=> b!7544405 m!8112782))

(assert (=> b!7544405 m!8112776))

(assert (=> b!7544404 m!8112938))

(assert (=> b!7544404 m!8113032))

(assert (=> b!7544404 m!8112938))

(assert (=> b!7544404 m!8113032))

(declare-fun m!8113204 () Bool)

(assert (=> b!7544404 m!8113204))

(assert (=> b!7543996 d!2312027))

(declare-fun b!7544410 () Bool)

(declare-fun e!4494724 () Bool)

(declare-fun tp!2194352 () Bool)

(assert (=> b!7544410 (= e!4494724 (and tp_is_empty!50183 tp!2194352))))

(assert (=> b!7543985 (= tp!2194307 e!4494724)))

(assert (= (and b!7543985 (is-Cons!72673 (t!387512 input!7874))) b!7544410))

(declare-fun b!7544411 () Bool)

(declare-fun e!4494725 () Bool)

(declare-fun tp!2194353 () Bool)

(assert (=> b!7544411 (= e!4494725 (and tp_is_empty!50183 tp!2194353))))

(assert (=> b!7543984 (= tp!2194304 e!4494725)))

(assert (= (and b!7543984 (is-Cons!72673 (t!387512 testedP!423))) b!7544411))

(declare-fun e!4494735 () Bool)

(assert (=> b!7543995 (= tp!2194299 e!4494735)))

(declare-fun b!7544438 () Bool)

(declare-fun tp!2194368 () Bool)

(assert (=> b!7544438 (= e!4494735 tp!2194368)))

(declare-fun b!7544439 () Bool)

(declare-fun tp!2194366 () Bool)

(declare-fun tp!2194364 () Bool)

(assert (=> b!7544439 (= e!4494735 (and tp!2194366 tp!2194364))))

(declare-fun b!7544437 () Bool)

(declare-fun tp!2194365 () Bool)

(declare-fun tp!2194367 () Bool)

(assert (=> b!7544437 (= e!4494735 (and tp!2194365 tp!2194367))))

(declare-fun b!7544436 () Bool)

(assert (=> b!7544436 (= e!4494735 tp_is_empty!50183)))

(assert (= (and b!7543995 (is-ElementMatch!19914 (regOne!40341 r!24333))) b!7544436))

(assert (= (and b!7543995 (is-Concat!28759 (regOne!40341 r!24333))) b!7544437))

(assert (= (and b!7543995 (is-Star!19914 (regOne!40341 r!24333))) b!7544438))

(assert (= (and b!7543995 (is-Union!19914 (regOne!40341 r!24333))) b!7544439))

(declare-fun e!4494736 () Bool)

(assert (=> b!7543995 (= tp!2194310 e!4494736)))

(declare-fun b!7544442 () Bool)

(declare-fun tp!2194373 () Bool)

(assert (=> b!7544442 (= e!4494736 tp!2194373)))

(declare-fun b!7544443 () Bool)

(declare-fun tp!2194371 () Bool)

(declare-fun tp!2194369 () Bool)

(assert (=> b!7544443 (= e!4494736 (and tp!2194371 tp!2194369))))

(declare-fun b!7544441 () Bool)

(declare-fun tp!2194370 () Bool)

(declare-fun tp!2194372 () Bool)

(assert (=> b!7544441 (= e!4494736 (and tp!2194370 tp!2194372))))

(declare-fun b!7544440 () Bool)

(assert (=> b!7544440 (= e!4494736 tp_is_empty!50183)))

(assert (= (and b!7543995 (is-ElementMatch!19914 (regTwo!40341 r!24333))) b!7544440))

(assert (= (and b!7543995 (is-Concat!28759 (regTwo!40341 r!24333))) b!7544441))

(assert (= (and b!7543995 (is-Star!19914 (regTwo!40341 r!24333))) b!7544442))

(assert (= (and b!7543995 (is-Union!19914 (regTwo!40341 r!24333))) b!7544443))

(declare-fun b!7544444 () Bool)

(declare-fun e!4494737 () Bool)

(declare-fun tp!2194374 () Bool)

(assert (=> b!7544444 (= e!4494737 (and tp_is_empty!50183 tp!2194374))))

(assert (=> b!7543978 (= tp!2194308 e!4494737)))

(assert (= (and b!7543978 (is-Cons!72673 (t!387512 knownP!30))) b!7544444))

(declare-fun e!4494738 () Bool)

(assert (=> b!7543983 (= tp!2194303 e!4494738)))

(declare-fun b!7544447 () Bool)

(declare-fun tp!2194379 () Bool)

(assert (=> b!7544447 (= e!4494738 tp!2194379)))

(declare-fun b!7544448 () Bool)

(declare-fun tp!2194377 () Bool)

(declare-fun tp!2194375 () Bool)

(assert (=> b!7544448 (= e!4494738 (and tp!2194377 tp!2194375))))

(declare-fun b!7544446 () Bool)

(declare-fun tp!2194376 () Bool)

(declare-fun tp!2194378 () Bool)

(assert (=> b!7544446 (= e!4494738 (and tp!2194376 tp!2194378))))

(declare-fun b!7544445 () Bool)

(assert (=> b!7544445 (= e!4494738 tp_is_empty!50183)))

(assert (= (and b!7543983 (is-ElementMatch!19914 (regOne!40340 baseR!101))) b!7544445))

(assert (= (and b!7543983 (is-Concat!28759 (regOne!40340 baseR!101))) b!7544446))

(assert (= (and b!7543983 (is-Star!19914 (regOne!40340 baseR!101))) b!7544447))

(assert (= (and b!7543983 (is-Union!19914 (regOne!40340 baseR!101))) b!7544448))

(declare-fun e!4494739 () Bool)

(assert (=> b!7543983 (= tp!2194301 e!4494739)))

(declare-fun b!7544451 () Bool)

(declare-fun tp!2194384 () Bool)

(assert (=> b!7544451 (= e!4494739 tp!2194384)))

(declare-fun b!7544452 () Bool)

(declare-fun tp!2194382 () Bool)

(declare-fun tp!2194380 () Bool)

(assert (=> b!7544452 (= e!4494739 (and tp!2194382 tp!2194380))))

(declare-fun b!7544450 () Bool)

(declare-fun tp!2194381 () Bool)

(declare-fun tp!2194383 () Bool)

(assert (=> b!7544450 (= e!4494739 (and tp!2194381 tp!2194383))))

(declare-fun b!7544449 () Bool)

(assert (=> b!7544449 (= e!4494739 tp_is_empty!50183)))

(assert (= (and b!7543983 (is-ElementMatch!19914 (regTwo!40340 baseR!101))) b!7544449))

(assert (= (and b!7543983 (is-Concat!28759 (regTwo!40340 baseR!101))) b!7544450))

(assert (= (and b!7543983 (is-Star!19914 (regTwo!40340 baseR!101))) b!7544451))

(assert (= (and b!7543983 (is-Union!19914 (regTwo!40340 baseR!101))) b!7544452))

(declare-fun e!4494740 () Bool)

(assert (=> b!7543977 (= tp!2194302 e!4494740)))

(declare-fun b!7544455 () Bool)

(declare-fun tp!2194389 () Bool)

(assert (=> b!7544455 (= e!4494740 tp!2194389)))

(declare-fun b!7544456 () Bool)

(declare-fun tp!2194387 () Bool)

(declare-fun tp!2194385 () Bool)

(assert (=> b!7544456 (= e!4494740 (and tp!2194387 tp!2194385))))

(declare-fun b!7544454 () Bool)

(declare-fun tp!2194386 () Bool)

(declare-fun tp!2194388 () Bool)

(assert (=> b!7544454 (= e!4494740 (and tp!2194386 tp!2194388))))

(declare-fun b!7544453 () Bool)

(assert (=> b!7544453 (= e!4494740 tp_is_empty!50183)))

(assert (= (and b!7543977 (is-ElementMatch!19914 (regOne!40340 r!24333))) b!7544453))

(assert (= (and b!7543977 (is-Concat!28759 (regOne!40340 r!24333))) b!7544454))

(assert (= (and b!7543977 (is-Star!19914 (regOne!40340 r!24333))) b!7544455))

(assert (= (and b!7543977 (is-Union!19914 (regOne!40340 r!24333))) b!7544456))

(declare-fun e!4494741 () Bool)

(assert (=> b!7543977 (= tp!2194300 e!4494741)))

(declare-fun b!7544459 () Bool)

(declare-fun tp!2194394 () Bool)

(assert (=> b!7544459 (= e!4494741 tp!2194394)))

(declare-fun b!7544460 () Bool)

(declare-fun tp!2194392 () Bool)

(declare-fun tp!2194390 () Bool)

(assert (=> b!7544460 (= e!4494741 (and tp!2194392 tp!2194390))))

(declare-fun b!7544458 () Bool)

(declare-fun tp!2194391 () Bool)

(declare-fun tp!2194393 () Bool)

(assert (=> b!7544458 (= e!4494741 (and tp!2194391 tp!2194393))))

(declare-fun b!7544457 () Bool)

(assert (=> b!7544457 (= e!4494741 tp_is_empty!50183)))

(assert (= (and b!7543977 (is-ElementMatch!19914 (regTwo!40340 r!24333))) b!7544457))

(assert (= (and b!7543977 (is-Concat!28759 (regTwo!40340 r!24333))) b!7544458))

(assert (= (and b!7543977 (is-Star!19914 (regTwo!40340 r!24333))) b!7544459))

(assert (= (and b!7543977 (is-Union!19914 (regTwo!40340 r!24333))) b!7544460))

(declare-fun e!4494742 () Bool)

(assert (=> b!7543986 (= tp!2194306 e!4494742)))

(declare-fun b!7544463 () Bool)

(declare-fun tp!2194399 () Bool)

(assert (=> b!7544463 (= e!4494742 tp!2194399)))

(declare-fun b!7544464 () Bool)

(declare-fun tp!2194397 () Bool)

(declare-fun tp!2194395 () Bool)

(assert (=> b!7544464 (= e!4494742 (and tp!2194397 tp!2194395))))

(declare-fun b!7544462 () Bool)

(declare-fun tp!2194396 () Bool)

(declare-fun tp!2194398 () Bool)

(assert (=> b!7544462 (= e!4494742 (and tp!2194396 tp!2194398))))

(declare-fun b!7544461 () Bool)

(assert (=> b!7544461 (= e!4494742 tp_is_empty!50183)))

(assert (= (and b!7543986 (is-ElementMatch!19914 (reg!20243 r!24333))) b!7544461))

(assert (= (and b!7543986 (is-Concat!28759 (reg!20243 r!24333))) b!7544462))

(assert (= (and b!7543986 (is-Star!19914 (reg!20243 r!24333))) b!7544463))

(assert (= (and b!7543986 (is-Union!19914 (reg!20243 r!24333))) b!7544464))

(declare-fun e!4494743 () Bool)

(assert (=> b!7543981 (= tp!2194298 e!4494743)))

(declare-fun b!7544467 () Bool)

(declare-fun tp!2194404 () Bool)

(assert (=> b!7544467 (= e!4494743 tp!2194404)))

(declare-fun b!7544468 () Bool)

(declare-fun tp!2194402 () Bool)

(declare-fun tp!2194400 () Bool)

(assert (=> b!7544468 (= e!4494743 (and tp!2194402 tp!2194400))))

(declare-fun b!7544466 () Bool)

(declare-fun tp!2194401 () Bool)

(declare-fun tp!2194403 () Bool)

(assert (=> b!7544466 (= e!4494743 (and tp!2194401 tp!2194403))))

(declare-fun b!7544465 () Bool)

(assert (=> b!7544465 (= e!4494743 tp_is_empty!50183)))

(assert (= (and b!7543981 (is-ElementMatch!19914 (regOne!40341 baseR!101))) b!7544465))

(assert (= (and b!7543981 (is-Concat!28759 (regOne!40341 baseR!101))) b!7544466))

(assert (= (and b!7543981 (is-Star!19914 (regOne!40341 baseR!101))) b!7544467))

(assert (= (and b!7543981 (is-Union!19914 (regOne!40341 baseR!101))) b!7544468))

(declare-fun e!4494744 () Bool)

(assert (=> b!7543981 (= tp!2194305 e!4494744)))

(declare-fun b!7544471 () Bool)

(declare-fun tp!2194409 () Bool)

(assert (=> b!7544471 (= e!4494744 tp!2194409)))

(declare-fun b!7544472 () Bool)

(declare-fun tp!2194407 () Bool)

(declare-fun tp!2194405 () Bool)

(assert (=> b!7544472 (= e!4494744 (and tp!2194407 tp!2194405))))

(declare-fun b!7544470 () Bool)

(declare-fun tp!2194406 () Bool)

(declare-fun tp!2194408 () Bool)

(assert (=> b!7544470 (= e!4494744 (and tp!2194406 tp!2194408))))

(declare-fun b!7544469 () Bool)

(assert (=> b!7544469 (= e!4494744 tp_is_empty!50183)))

(assert (= (and b!7543981 (is-ElementMatch!19914 (regTwo!40341 baseR!101))) b!7544469))

(assert (= (and b!7543981 (is-Concat!28759 (regTwo!40341 baseR!101))) b!7544470))

(assert (= (and b!7543981 (is-Star!19914 (regTwo!40341 baseR!101))) b!7544471))

(assert (= (and b!7543981 (is-Union!19914 (regTwo!40341 baseR!101))) b!7544472))

(declare-fun e!4494745 () Bool)

(assert (=> b!7543975 (= tp!2194309 e!4494745)))

(declare-fun b!7544475 () Bool)

(declare-fun tp!2194414 () Bool)

(assert (=> b!7544475 (= e!4494745 tp!2194414)))

(declare-fun b!7544476 () Bool)

(declare-fun tp!2194412 () Bool)

(declare-fun tp!2194410 () Bool)

(assert (=> b!7544476 (= e!4494745 (and tp!2194412 tp!2194410))))

(declare-fun b!7544474 () Bool)

(declare-fun tp!2194411 () Bool)

(declare-fun tp!2194413 () Bool)

(assert (=> b!7544474 (= e!4494745 (and tp!2194411 tp!2194413))))

(declare-fun b!7544473 () Bool)

(assert (=> b!7544473 (= e!4494745 tp_is_empty!50183)))

(assert (= (and b!7543975 (is-ElementMatch!19914 (reg!20243 baseR!101))) b!7544473))

(assert (= (and b!7543975 (is-Concat!28759 (reg!20243 baseR!101))) b!7544474))

(assert (= (and b!7543975 (is-Star!19914 (reg!20243 baseR!101))) b!7544475))

(assert (= (and b!7543975 (is-Union!19914 (reg!20243 baseR!101))) b!7544476))

(push 1)

(assert (not b!7544145))

(assert (not d!2311925))

(assert (not b!7544299))

(assert (not b!7544210))

(assert (not d!2312017))

(assert (not b!7544352))

(assert (not b!7544357))

(assert (not b!7544404))

(assert (not b!7544458))

(assert (not b!7544456))

(assert (not b!7544362))

(assert (not b!7544350))

(assert (not b!7544231))

(assert (not b!7544442))

(assert (not d!2311927))

(assert (not b!7544377))

(assert (not b!7544443))

(assert (not bm!691959))

(assert (not d!2311967))

(assert (not b!7544437))

(assert (not b!7544405))

(assert (not b!7544199))

(assert (not d!2311957))

(assert (not b!7544094))

(assert (not b!7544286))

(assert (not b!7544401))

(assert (not b!7544376))

(assert (not d!2311949))

(assert (not bm!691960))

(assert (not b!7544282))

(assert (not b!7544290))

(assert (not b!7544474))

(assert (not b!7544201))

(assert (not b!7544446))

(assert (not b!7544233))

(assert (not b!7544471))

(assert (not d!2312023))

(assert (not b!7544356))

(assert (not d!2311997))

(assert (not b!7544460))

(assert (not b!7544444))

(assert tp_is_empty!50183)

(assert (not b!7544205))

(assert (not d!2311959))

(assert (not b!7544197))

(assert (not d!2311921))

(assert (not d!2311961))

(assert (not d!2311989))

(assert (not b!7544177))

(assert (not b!7544285))

(assert (not b!7544468))

(assert (not b!7544379))

(assert (not b!7544466))

(assert (not d!2311955))

(assert (not b!7544105))

(assert (not b!7544476))

(assert (not b!7544463))

(assert (not d!2311965))

(assert (not b!7544361))

(assert (not b!7544166))

(assert (not b!7544462))

(assert (not b!7544214))

(assert (not b!7544371))

(assert (not d!2312015))

(assert (not b!7544475))

(assert (not d!2311937))

(assert (not b!7544178))

(assert (not b!7544452))

(assert (not d!2311953))

(assert (not d!2311931))

(assert (not b!7544373))

(assert (not d!2311993))

(assert (not b!7544218))

(assert (not b!7544447))

(assert (not d!2312013))

(assert (not b!7544226))

(assert (not b!7544209))

(assert (not b!7544144))

(assert (not d!2312003))

(assert (not b!7544213))

(assert (not b!7544439))

(assert (not b!7544141))

(assert (not b!7544298))

(assert (not b!7544455))

(assert (not b!7544459))

(assert (not b!7544353))

(assert (not b!7544270))

(assert (not bm!691934))

(assert (not b!7544232))

(assert (not d!2311991))

(assert (not b!7544146))

(assert (not b!7544464))

(assert (not b!7544217))

(assert (not d!2311975))

(assert (not b!7544150))

(assert (not b!7544378))

(assert (not bm!691944))

(assert (not d!2311999))

(assert (not b!7544382))

(assert (not bm!691956))

(assert (not b!7544467))

(assert (not bm!691957))

(assert (not b!7544451))

(assert (not b!7544454))

(assert (not d!2311969))

(assert (not b!7544202))

(assert (not b!7544147))

(assert (not b!7544411))

(assert (not b!7544472))

(assert (not b!7544280))

(assert (not b!7544410))

(assert (not d!2311963))

(assert (not bm!691961))

(assert (not d!2312001))

(assert (not b!7544206))

(assert (not b!7544224))

(assert (not b!7544438))

(assert (not b!7544360))

(assert (not d!2311943))

(assert (not b!7544289))

(assert (not b!7544403))

(assert (not b!7544470))

(assert (not b!7544448))

(assert (not b!7544106))

(assert (not b!7544441))

(assert (not b!7544297))

(assert (not b!7544450))

(assert (not b!7544179))

(assert (not bm!691945))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

