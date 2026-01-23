; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281440 () Bool)

(assert start!281440)

(declare-fun b!2882551 () Bool)

(declare-fun res!1194341 () Bool)

(declare-fun e!1823408 () Bool)

(assert (=> b!2882551 (=> (not res!1194341) (not e!1823408))))

(declare-datatypes ((C!17738 0))(
  ( (C!17739 (val!10903 Int)) )
))
(declare-datatypes ((Regex!8778 0))(
  ( (ElementMatch!8778 (c!468259 C!17738)) (Concat!14099 (regOne!18068 Regex!8778) (regTwo!18068 Regex!8778)) (EmptyExpr!8778) (Star!8778 (reg!9107 Regex!8778)) (EmptyLang!8778) (Union!8778 (regOne!18069 Regex!8778) (regTwo!18069 Regex!8778)) )
))
(declare-fun r!23079 () Regex!8778)

(assert (=> b!2882551 (= res!1194341 (and (not (is-EmptyExpr!8778 r!23079)) (not (is-EmptyLang!8778 r!23079)) (not (is-ElementMatch!8778 r!23079)) (not (is-Star!8778 r!23079)) (is-Union!8778 r!23079)))))

(declare-fun b!2882552 () Bool)

(declare-fun e!1823410 () Bool)

(declare-fun tp!924551 () Bool)

(declare-fun tp!924552 () Bool)

(assert (=> b!2882552 (= e!1823410 (and tp!924551 tp!924552))))

(declare-fun b!2882553 () Bool)

(declare-fun e!1823409 () Bool)

(assert (=> b!2882553 (= e!1823408 (not e!1823409))))

(declare-fun res!1194340 () Bool)

(assert (=> b!2882553 (=> res!1194340 e!1823409)))

(declare-datatypes ((List!34579 0))(
  ( (Nil!34455) (Cons!34455 (h!39875 C!17738) (t!233622 List!34579)) )
))
(declare-datatypes ((Option!6451 0))(
  ( (None!6450) (Some!6450 (v!34576 List!34579)) )
))
(declare-fun lt!1020074 () Option!6451)

(declare-fun isDefined!5015 (Option!6451) Bool)

(assert (=> b!2882553 (= res!1194340 (not (isDefined!5015 lt!1020074)))))

(declare-fun lt!1020076 () List!34579)

(declare-fun matchR!3764 (Regex!8778 List!34579) Bool)

(assert (=> b!2882553 (matchR!3764 (regTwo!18069 r!23079) lt!1020076)))

(declare-fun get!10386 (Option!6451) List!34579)

(assert (=> b!2882553 (= lt!1020076 (get!10386 lt!1020074))))

(declare-datatypes ((Unit!48033 0))(
  ( (Unit!48034) )
))
(declare-fun lt!1020073 () Unit!48033)

(declare-fun lemmaGetWitnessMatches!71 (Regex!8778) Unit!48033)

(assert (=> b!2882553 (= lt!1020073 (lemmaGetWitnessMatches!71 (regTwo!18069 r!23079)))))

(declare-fun getLanguageWitness!485 (Regex!8778) Option!6451)

(assert (=> b!2882553 (= lt!1020074 (getLanguageWitness!485 (regTwo!18069 r!23079)))))

(declare-fun res!1194342 () Bool)

(assert (=> start!281440 (=> (not res!1194342) (not e!1823408))))

(declare-fun validRegex!3551 (Regex!8778) Bool)

(assert (=> start!281440 (= res!1194342 (validRegex!3551 r!23079))))

(assert (=> start!281440 e!1823408))

(assert (=> start!281440 e!1823410))

(declare-fun b!2882554 () Bool)

(assert (=> b!2882554 (= e!1823409 true)))

(assert (=> b!2882554 (matchR!3764 (Union!8778 (regTwo!18069 r!23079) (regOne!18069 r!23079)) lt!1020076)))

(declare-fun lt!1020075 () Unit!48033)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!35 (Regex!8778 Regex!8778 List!34579) Unit!48033)

(assert (=> b!2882554 (= lt!1020075 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!35 (regTwo!18069 r!23079) (regOne!18069 r!23079) lt!1020076))))

(declare-fun b!2882555 () Bool)

(declare-fun tp!924550 () Bool)

(declare-fun tp!924553 () Bool)

(assert (=> b!2882555 (= e!1823410 (and tp!924550 tp!924553))))

(declare-fun b!2882556 () Bool)

(declare-fun tp_is_empty!15143 () Bool)

(assert (=> b!2882556 (= e!1823410 tp_is_empty!15143)))

(declare-fun b!2882557 () Bool)

(declare-fun res!1194344 () Bool)

(assert (=> b!2882557 (=> (not res!1194344) (not e!1823408))))

(assert (=> b!2882557 (= res!1194344 (isDefined!5015 (getLanguageWitness!485 r!23079)))))

(declare-fun b!2882558 () Bool)

(declare-fun tp!924554 () Bool)

(assert (=> b!2882558 (= e!1823410 tp!924554)))

(declare-fun b!2882559 () Bool)

(declare-fun res!1194343 () Bool)

(assert (=> b!2882559 (=> (not res!1194343) (not e!1823408))))

(assert (=> b!2882559 (= res!1194343 (not (is-Some!6450 (getLanguageWitness!485 (regOne!18069 r!23079)))))))

(assert (= (and start!281440 res!1194342) b!2882557))

(assert (= (and b!2882557 res!1194344) b!2882551))

(assert (= (and b!2882551 res!1194341) b!2882559))

(assert (= (and b!2882559 res!1194343) b!2882553))

(assert (= (and b!2882553 (not res!1194340)) b!2882554))

(assert (= (and start!281440 (is-ElementMatch!8778 r!23079)) b!2882556))

(assert (= (and start!281440 (is-Concat!14099 r!23079)) b!2882555))

(assert (= (and start!281440 (is-Star!8778 r!23079)) b!2882558))

(assert (= (and start!281440 (is-Union!8778 r!23079)) b!2882552))

(declare-fun m!3299551 () Bool)

(assert (=> b!2882557 m!3299551))

(assert (=> b!2882557 m!3299551))

(declare-fun m!3299553 () Bool)

(assert (=> b!2882557 m!3299553))

(declare-fun m!3299555 () Bool)

(assert (=> b!2882553 m!3299555))

(declare-fun m!3299557 () Bool)

(assert (=> b!2882553 m!3299557))

(declare-fun m!3299559 () Bool)

(assert (=> b!2882553 m!3299559))

(declare-fun m!3299561 () Bool)

(assert (=> b!2882553 m!3299561))

(declare-fun m!3299563 () Bool)

(assert (=> b!2882553 m!3299563))

(declare-fun m!3299565 () Bool)

(assert (=> start!281440 m!3299565))

(declare-fun m!3299567 () Bool)

(assert (=> b!2882559 m!3299567))

(declare-fun m!3299569 () Bool)

(assert (=> b!2882554 m!3299569))

(declare-fun m!3299571 () Bool)

(assert (=> b!2882554 m!3299571))

(push 1)

(assert (not b!2882553))

(assert (not b!2882554))

(assert (not start!281440))

(assert (not b!2882557))

(assert (not b!2882558))

(assert tp_is_empty!15143)

(assert (not b!2882555))

(assert (not b!2882559))

(assert (not b!2882552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

