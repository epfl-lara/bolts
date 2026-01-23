; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728992 () Bool)

(assert start!728992)

(declare-fun b!7537032 () Bool)

(declare-fun e!4491084 () Bool)

(declare-fun tp_is_empty!50133 () Bool)

(declare-fun tp!2192164 () Bool)

(assert (=> b!7537032 (= e!4491084 (and tp_is_empty!50133 tp!2192164))))

(declare-fun b!7537033 () Bool)

(declare-fun res!3020430 () Bool)

(declare-fun e!4491083 () Bool)

(assert (=> b!7537033 (=> (not res!3020430) (not e!4491083))))

(declare-datatypes ((C!40104 0))(
  ( (C!40105 (val!30492 Int)) )
))
(declare-datatypes ((Regex!19889 0))(
  ( (ElementMatch!19889 (c!1391670 C!40104)) (Concat!28734 (regOne!40290 Regex!19889) (regTwo!40290 Regex!19889)) (EmptyExpr!19889) (Star!19889 (reg!20218 Regex!19889)) (EmptyLang!19889) (Union!19889 (regOne!40291 Regex!19889) (regTwo!40291 Regex!19889)) )
))
(declare-fun baseR!101 () Regex!19889)

(declare-datatypes ((List!72772 0))(
  ( (Nil!72648) (Cons!72648 (h!79096 C!40104) (t!387479 List!72772)) )
))
(declare-fun knownP!30 () List!72772)

(declare-fun matchR!9491 (Regex!19889 List!72772) Bool)

(assert (=> b!7537033 (= res!3020430 (matchR!9491 baseR!101 knownP!30))))

(declare-fun b!7537034 () Bool)

(declare-fun e!4491080 () Bool)

(declare-fun tp!2192162 () Bool)

(assert (=> b!7537034 (= e!4491080 (and tp_is_empty!50133 tp!2192162))))

(declare-fun b!7537035 () Bool)

(declare-fun res!3020427 () Bool)

(declare-fun e!4491078 () Bool)

(assert (=> b!7537035 (=> res!3020427 e!4491078)))

(declare-fun lt!2642059 () Int)

(declare-fun lt!2642057 () Int)

(assert (=> b!7537035 (= res!3020427 (= lt!2642059 lt!2642057))))

(declare-fun b!7537036 () Bool)

(declare-fun e!4491085 () Bool)

(declare-fun tp!2192159 () Bool)

(assert (=> b!7537036 (= e!4491085 tp!2192159)))

(declare-fun b!7537037 () Bool)

(declare-fun res!3020429 () Bool)

(declare-fun e!4491081 () Bool)

(assert (=> b!7537037 (=> (not res!3020429) (not e!4491081))))

(declare-fun testedP!423 () List!72772)

(declare-fun input!7874 () List!72772)

(declare-fun isPrefix!6095 (List!72772 List!72772) Bool)

(assert (=> b!7537037 (= res!3020429 (isPrefix!6095 testedP!423 input!7874))))

(declare-fun b!7537038 () Bool)

(declare-fun tp!2192163 () Bool)

(declare-fun tp!2192157 () Bool)

(assert (=> b!7537038 (= e!4491085 (and tp!2192163 tp!2192157))))

(declare-fun b!7537039 () Bool)

(declare-fun res!3020428 () Bool)

(assert (=> b!7537039 (=> res!3020428 e!4491078)))

(declare-fun r!24333 () Regex!19889)

(declare-fun derivative!421 (Regex!19889 List!72772) Regex!19889)

(assert (=> b!7537039 (= res!3020428 (not (= (derivative!421 baseR!101 testedP!423) r!24333)))))

(declare-fun res!3020424 () Bool)

(assert (=> start!728992 (=> (not res!3020424) (not e!4491081))))

(declare-fun validRegex!10317 (Regex!19889) Bool)

(assert (=> start!728992 (= res!3020424 (validRegex!10317 baseR!101))))

(assert (=> start!728992 e!4491081))

(assert (=> start!728992 e!4491085))

(declare-fun e!4491079 () Bool)

(assert (=> start!728992 e!4491079))

(assert (=> start!728992 e!4491080))

(assert (=> start!728992 e!4491084))

(declare-fun e!4491082 () Bool)

(assert (=> start!728992 e!4491082))

(declare-fun b!7537040 () Bool)

(declare-fun tp!2192153 () Bool)

(declare-fun tp!2192156 () Bool)

(assert (=> b!7537040 (= e!4491085 (and tp!2192153 tp!2192156))))

(declare-fun b!7537041 () Bool)

(declare-fun res!3020431 () Bool)

(assert (=> b!7537041 (=> res!3020431 e!4491078)))

(declare-fun size!42385 (List!72772) Int)

(assert (=> b!7537041 (= res!3020431 (>= lt!2642059 (size!42385 input!7874)))))

(declare-fun b!7537042 () Bool)

(declare-fun tp!2192161 () Bool)

(declare-fun tp!2192165 () Bool)

(assert (=> b!7537042 (= e!4491082 (and tp!2192161 tp!2192165))))

(declare-fun b!7537043 () Bool)

(assert (=> b!7537043 (= e!4491081 e!4491083)))

(declare-fun res!3020423 () Bool)

(assert (=> b!7537043 (=> (not res!3020423) (not e!4491083))))

(assert (=> b!7537043 (= res!3020423 (>= lt!2642057 lt!2642059))))

(assert (=> b!7537043 (= lt!2642059 (size!42385 testedP!423))))

(assert (=> b!7537043 (= lt!2642057 (size!42385 knownP!30))))

(declare-fun b!7537044 () Bool)

(declare-fun tp!2192155 () Bool)

(assert (=> b!7537044 (= e!4491079 (and tp_is_empty!50133 tp!2192155))))

(declare-fun b!7537045 () Bool)

(assert (=> b!7537045 (= e!4491078 true)))

(declare-fun lt!2642052 () Int)

(declare-fun lt!2642055 () List!72772)

(assert (=> b!7537045 (= lt!2642052 (size!42385 lt!2642055))))

(assert (=> b!7537045 (isPrefix!6095 lt!2642055 knownP!30)))

(declare-datatypes ((Unit!166716 0))(
  ( (Unit!166717) )
))
(declare-fun lt!2642053 () Unit!166716)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!845 (List!72772 List!72772 List!72772) Unit!166716)

(assert (=> b!7537045 (= lt!2642053 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!845 knownP!30 lt!2642055 input!7874))))

(declare-fun lt!2642058 () C!40104)

(declare-fun derivativeStep!5679 (Regex!19889 C!40104) Regex!19889)

(assert (=> b!7537045 (= (derivative!421 baseR!101 lt!2642055) (derivativeStep!5679 r!24333 lt!2642058))))

(declare-fun lt!2642056 () Unit!166716)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!127 (Regex!19889 Regex!19889 List!72772 C!40104) Unit!166716)

(assert (=> b!7537045 (= lt!2642056 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!127 baseR!101 r!24333 testedP!423 lt!2642058))))

(assert (=> b!7537045 (isPrefix!6095 lt!2642055 input!7874)))

(declare-fun lt!2642054 () Unit!166716)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1160 (List!72772 List!72772) Unit!166716)

(assert (=> b!7537045 (= lt!2642054 (lemmaAddHeadSuffixToPrefixStillPrefix!1160 testedP!423 input!7874))))

(declare-fun ++!17406 (List!72772 List!72772) List!72772)

(assert (=> b!7537045 (= lt!2642055 (++!17406 testedP!423 (Cons!72648 lt!2642058 Nil!72648)))))

(declare-fun head!15479 (List!72772) C!40104)

(declare-fun getSuffix!3575 (List!72772 List!72772) List!72772)

(assert (=> b!7537045 (= lt!2642058 (head!15479 (getSuffix!3575 input!7874 testedP!423)))))

(declare-fun b!7537046 () Bool)

(declare-fun tp!2192160 () Bool)

(declare-fun tp!2192154 () Bool)

(assert (=> b!7537046 (= e!4491082 (and tp!2192160 tp!2192154))))

(declare-fun b!7537047 () Bool)

(declare-fun tp!2192158 () Bool)

(assert (=> b!7537047 (= e!4491082 tp!2192158)))

(declare-fun b!7537048 () Bool)

(assert (=> b!7537048 (= e!4491082 tp_is_empty!50133)))

(declare-fun b!7537049 () Bool)

(declare-fun res!3020422 () Bool)

(assert (=> b!7537049 (=> (not res!3020422) (not e!4491081))))

(assert (=> b!7537049 (= res!3020422 (isPrefix!6095 knownP!30 input!7874))))

(declare-fun b!7537050 () Bool)

(assert (=> b!7537050 (= e!4491083 (not e!4491078))))

(declare-fun res!3020432 () Bool)

(assert (=> b!7537050 (=> res!3020432 e!4491078)))

(assert (=> b!7537050 (= res!3020432 (not (matchR!9491 r!24333 (getSuffix!3575 knownP!30 testedP!423))))))

(assert (=> b!7537050 (isPrefix!6095 testedP!423 knownP!30)))

(declare-fun lt!2642060 () Unit!166716)

(assert (=> b!7537050 (= lt!2642060 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!845 knownP!30 testedP!423 input!7874))))

(declare-fun b!7537051 () Bool)

(assert (=> b!7537051 (= e!4491085 tp_is_empty!50133)))

(declare-fun b!7537052 () Bool)

(declare-fun res!3020425 () Bool)

(assert (=> b!7537052 (=> res!3020425 e!4491078)))

(declare-fun lostCause!1681 (Regex!19889) Bool)

(assert (=> b!7537052 (= res!3020425 (lostCause!1681 r!24333))))

(declare-fun b!7537053 () Bool)

(declare-fun res!3020426 () Bool)

(assert (=> b!7537053 (=> (not res!3020426) (not e!4491081))))

(assert (=> b!7537053 (= res!3020426 (validRegex!10317 r!24333))))

(assert (= (and start!728992 res!3020424) b!7537053))

(assert (= (and b!7537053 res!3020426) b!7537037))

(assert (= (and b!7537037 res!3020429) b!7537049))

(assert (= (and b!7537049 res!3020422) b!7537043))

(assert (= (and b!7537043 res!3020423) b!7537033))

(assert (= (and b!7537033 res!3020430) b!7537050))

(assert (= (and b!7537050 (not res!3020432)) b!7537039))

(assert (= (and b!7537039 (not res!3020428)) b!7537052))

(assert (= (and b!7537052 (not res!3020425)) b!7537035))

(assert (= (and b!7537035 (not res!3020427)) b!7537041))

(assert (= (and b!7537041 (not res!3020431)) b!7537045))

(get-info :version)

(assert (= (and start!728992 ((_ is ElementMatch!19889) baseR!101)) b!7537051))

(assert (= (and start!728992 ((_ is Concat!28734) baseR!101)) b!7537040))

(assert (= (and start!728992 ((_ is Star!19889) baseR!101)) b!7537036))

(assert (= (and start!728992 ((_ is Union!19889) baseR!101)) b!7537038))

(assert (= (and start!728992 ((_ is Cons!72648) input!7874)) b!7537044))

(assert (= (and start!728992 ((_ is Cons!72648) knownP!30)) b!7537034))

(assert (= (and start!728992 ((_ is Cons!72648) testedP!423)) b!7537032))

(assert (= (and start!728992 ((_ is ElementMatch!19889) r!24333)) b!7537048))

(assert (= (and start!728992 ((_ is Concat!28734) r!24333)) b!7537042))

(assert (= (and start!728992 ((_ is Star!19889) r!24333)) b!7537047))

(assert (= (and start!728992 ((_ is Union!19889) r!24333)) b!7537046))

(declare-fun m!8107380 () Bool)

(assert (=> b!7537052 m!8107380))

(declare-fun m!8107382 () Bool)

(assert (=> b!7537043 m!8107382))

(declare-fun m!8107384 () Bool)

(assert (=> b!7537043 m!8107384))

(declare-fun m!8107386 () Bool)

(assert (=> b!7537050 m!8107386))

(assert (=> b!7537050 m!8107386))

(declare-fun m!8107388 () Bool)

(assert (=> b!7537050 m!8107388))

(declare-fun m!8107390 () Bool)

(assert (=> b!7537050 m!8107390))

(declare-fun m!8107392 () Bool)

(assert (=> b!7537050 m!8107392))

(declare-fun m!8107394 () Bool)

(assert (=> start!728992 m!8107394))

(declare-fun m!8107396 () Bool)

(assert (=> b!7537053 m!8107396))

(declare-fun m!8107398 () Bool)

(assert (=> b!7537049 m!8107398))

(declare-fun m!8107400 () Bool)

(assert (=> b!7537039 m!8107400))

(declare-fun m!8107402 () Bool)

(assert (=> b!7537041 m!8107402))

(declare-fun m!8107404 () Bool)

(assert (=> b!7537037 m!8107404))

(declare-fun m!8107406 () Bool)

(assert (=> b!7537045 m!8107406))

(declare-fun m!8107408 () Bool)

(assert (=> b!7537045 m!8107408))

(declare-fun m!8107410 () Bool)

(assert (=> b!7537045 m!8107410))

(declare-fun m!8107412 () Bool)

(assert (=> b!7537045 m!8107412))

(declare-fun m!8107414 () Bool)

(assert (=> b!7537045 m!8107414))

(assert (=> b!7537045 m!8107410))

(declare-fun m!8107416 () Bool)

(assert (=> b!7537045 m!8107416))

(declare-fun m!8107418 () Bool)

(assert (=> b!7537045 m!8107418))

(declare-fun m!8107420 () Bool)

(assert (=> b!7537045 m!8107420))

(declare-fun m!8107422 () Bool)

(assert (=> b!7537045 m!8107422))

(declare-fun m!8107424 () Bool)

(assert (=> b!7537045 m!8107424))

(declare-fun m!8107426 () Bool)

(assert (=> b!7537045 m!8107426))

(declare-fun m!8107428 () Bool)

(assert (=> b!7537033 m!8107428))

(check-sat (not b!7537040) (not b!7537045) (not b!7537047) (not b!7537042) (not b!7537049) (not b!7537041) (not b!7537033) (not b!7537052) tp_is_empty!50133 (not b!7537034) (not b!7537043) (not b!7537039) (not b!7537053) (not b!7537036) (not start!728992) (not b!7537032) (not b!7537037) (not b!7537046) (not b!7537044) (not b!7537038) (not b!7537050))
(check-sat)
