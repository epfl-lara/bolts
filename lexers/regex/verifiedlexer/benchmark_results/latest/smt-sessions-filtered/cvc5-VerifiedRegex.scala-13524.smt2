; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728522 () Bool)

(assert start!728522)

(declare-fun res!3017570 () Bool)

(declare-fun e!4487562 () Bool)

(assert (=> start!728522 (=> (not res!3017570) (not e!4487562))))

(declare-datatypes ((C!40010 0))(
  ( (C!40011 (val!30445 Int)) )
))
(declare-datatypes ((Regex!19842 0))(
  ( (ElementMatch!19842 (c!1390731 C!40010)) (Concat!28687 (regOne!40196 Regex!19842) (regTwo!40196 Regex!19842)) (EmptyExpr!19842) (Star!19842 (reg!20171 Regex!19842)) (EmptyLang!19842) (Union!19842 (regOne!40197 Regex!19842) (regTwo!40197 Regex!19842)) )
))
(declare-fun baseR!101 () Regex!19842)

(declare-fun validRegex!10270 (Regex!19842) Bool)

(assert (=> start!728522 (= res!3017570 (validRegex!10270 baseR!101))))

(assert (=> start!728522 e!4487562))

(declare-fun e!4487559 () Bool)

(assert (=> start!728522 e!4487559))

(declare-fun e!4487560 () Bool)

(assert (=> start!728522 e!4487560))

(declare-fun e!4487561 () Bool)

(assert (=> start!728522 e!4487561))

(declare-fun e!4487563 () Bool)

(assert (=> start!728522 e!4487563))

(declare-fun e!4487558 () Bool)

(assert (=> start!728522 e!4487558))

(declare-fun b!7529238 () Bool)

(declare-fun res!3017573 () Bool)

(assert (=> b!7529238 (=> (not res!3017573) (not e!4487562))))

(declare-datatypes ((List!72725 0))(
  ( (Nil!72601) (Cons!72601 (h!79049 C!40010) (t!387432 List!72725)) )
))
(declare-fun testedP!423 () List!72725)

(declare-fun input!7874 () List!72725)

(declare-fun isPrefix!6048 (List!72725 List!72725) Bool)

(assert (=> b!7529238 (= res!3017573 (isPrefix!6048 testedP!423 input!7874))))

(declare-fun b!7529239 () Bool)

(assert (=> b!7529239 (= e!4487562 (not true))))

(declare-fun lt!2640059 () List!72725)

(declare-fun knownP!30 () List!72725)

(declare-fun getSuffix!3528 (List!72725 List!72725) List!72725)

(assert (=> b!7529239 (= lt!2640059 (getSuffix!3528 knownP!30 testedP!423))))

(assert (=> b!7529239 (isPrefix!6048 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166598 0))(
  ( (Unit!166599) )
))
(declare-fun lt!2640060 () Unit!166598)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!798 (List!72725 List!72725 List!72725) Unit!166598)

(assert (=> b!7529239 (= lt!2640060 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!798 knownP!30 testedP!423 input!7874))))

(declare-fun b!7529240 () Bool)

(declare-fun tp_is_empty!50039 () Bool)

(declare-fun tp!2188404 () Bool)

(assert (=> b!7529240 (= e!4487563 (and tp_is_empty!50039 tp!2188404))))

(declare-fun b!7529241 () Bool)

(declare-fun tp!2188408 () Bool)

(assert (=> b!7529241 (= e!4487558 tp!2188408)))

(declare-fun b!7529242 () Bool)

(declare-fun res!3017571 () Bool)

(assert (=> b!7529242 (=> (not res!3017571) (not e!4487562))))

(assert (=> b!7529242 (= res!3017571 (isPrefix!6048 knownP!30 input!7874))))

(declare-fun b!7529243 () Bool)

(declare-fun tp!2188399 () Bool)

(declare-fun tp!2188407 () Bool)

(assert (=> b!7529243 (= e!4487559 (and tp!2188399 tp!2188407))))

(declare-fun b!7529244 () Bool)

(declare-fun tp!2188400 () Bool)

(declare-fun tp!2188406 () Bool)

(assert (=> b!7529244 (= e!4487558 (and tp!2188400 tp!2188406))))

(declare-fun b!7529245 () Bool)

(declare-fun tp!2188401 () Bool)

(assert (=> b!7529245 (= e!4487560 (and tp_is_empty!50039 tp!2188401))))

(declare-fun b!7529246 () Bool)

(declare-fun tp!2188403 () Bool)

(declare-fun tp!2188398 () Bool)

(assert (=> b!7529246 (= e!4487558 (and tp!2188403 tp!2188398))))

(declare-fun b!7529247 () Bool)

(assert (=> b!7529247 (= e!4487559 tp_is_empty!50039)))

(declare-fun b!7529248 () Bool)

(declare-fun res!3017572 () Bool)

(assert (=> b!7529248 (=> (not res!3017572) (not e!4487562))))

(declare-fun size!42338 (List!72725) Int)

(assert (=> b!7529248 (= res!3017572 (>= (size!42338 knownP!30) (size!42338 testedP!423)))))

(declare-fun b!7529249 () Bool)

(declare-fun res!3017574 () Bool)

(assert (=> b!7529249 (=> (not res!3017574) (not e!4487562))))

(declare-fun matchR!9444 (Regex!19842 List!72725) Bool)

(assert (=> b!7529249 (= res!3017574 (matchR!9444 baseR!101 knownP!30))))

(declare-fun b!7529250 () Bool)

(assert (=> b!7529250 (= e!4487558 tp_is_empty!50039)))

(declare-fun b!7529251 () Bool)

(declare-fun res!3017569 () Bool)

(assert (=> b!7529251 (=> (not res!3017569) (not e!4487562))))

(declare-fun r!24333 () Regex!19842)

(assert (=> b!7529251 (= res!3017569 (validRegex!10270 r!24333))))

(declare-fun b!7529252 () Bool)

(declare-fun tp!2188409 () Bool)

(assert (=> b!7529252 (= e!4487559 tp!2188409)))

(declare-fun b!7529253 () Bool)

(declare-fun tp!2188402 () Bool)

(assert (=> b!7529253 (= e!4487561 (and tp_is_empty!50039 tp!2188402))))

(declare-fun b!7529254 () Bool)

(declare-fun tp!2188410 () Bool)

(declare-fun tp!2188405 () Bool)

(assert (=> b!7529254 (= e!4487559 (and tp!2188410 tp!2188405))))

(assert (= (and start!728522 res!3017570) b!7529251))

(assert (= (and b!7529251 res!3017569) b!7529238))

(assert (= (and b!7529238 res!3017573) b!7529242))

(assert (= (and b!7529242 res!3017571) b!7529248))

(assert (= (and b!7529248 res!3017572) b!7529249))

(assert (= (and b!7529249 res!3017574) b!7529239))

(assert (= (and start!728522 (is-ElementMatch!19842 baseR!101)) b!7529247))

(assert (= (and start!728522 (is-Concat!28687 baseR!101)) b!7529254))

(assert (= (and start!728522 (is-Star!19842 baseR!101)) b!7529252))

(assert (= (and start!728522 (is-Union!19842 baseR!101)) b!7529243))

(assert (= (and start!728522 (is-Cons!72601 input!7874)) b!7529245))

(assert (= (and start!728522 (is-Cons!72601 knownP!30)) b!7529253))

(assert (= (and start!728522 (is-Cons!72601 testedP!423)) b!7529240))

(assert (= (and start!728522 (is-ElementMatch!19842 r!24333)) b!7529250))

(assert (= (and start!728522 (is-Concat!28687 r!24333)) b!7529244))

(assert (= (and start!728522 (is-Star!19842 r!24333)) b!7529241))

(assert (= (and start!728522 (is-Union!19842 r!24333)) b!7529246))

(declare-fun m!8103226 () Bool)

(assert (=> b!7529248 m!8103226))

(declare-fun m!8103228 () Bool)

(assert (=> b!7529248 m!8103228))

(declare-fun m!8103230 () Bool)

(assert (=> b!7529242 m!8103230))

(declare-fun m!8103232 () Bool)

(assert (=> b!7529249 m!8103232))

(declare-fun m!8103234 () Bool)

(assert (=> b!7529251 m!8103234))

(declare-fun m!8103236 () Bool)

(assert (=> start!728522 m!8103236))

(declare-fun m!8103238 () Bool)

(assert (=> b!7529238 m!8103238))

(declare-fun m!8103240 () Bool)

(assert (=> b!7529239 m!8103240))

(declare-fun m!8103242 () Bool)

(assert (=> b!7529239 m!8103242))

(declare-fun m!8103244 () Bool)

(assert (=> b!7529239 m!8103244))

(push 1)

(assert (not b!7529244))

(assert (not b!7529249))

(assert (not b!7529240))

(assert (not b!7529248))

(assert (not b!7529254))

(assert (not b!7529252))

(assert (not b!7529243))

(assert (not b!7529241))

(assert (not b!7529245))

(assert (not b!7529253))

(assert (not b!7529246))

(assert tp_is_empty!50039)

(assert (not start!728522))

(assert (not b!7529238))

(assert (not b!7529239))

(assert (not b!7529242))

(assert (not b!7529251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

