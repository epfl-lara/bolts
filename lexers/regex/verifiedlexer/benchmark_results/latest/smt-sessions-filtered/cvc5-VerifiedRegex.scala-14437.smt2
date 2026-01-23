; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!752578 () Bool)

(assert start!752578)

(declare-fun b!7996259 () Bool)

(declare-fun e!4711200 () Bool)

(declare-fun tp!2390536 () Bool)

(declare-fun tp!2390534 () Bool)

(assert (=> b!7996259 (= e!4711200 (and tp!2390536 tp!2390534))))

(declare-fun b!7996260 () Bool)

(declare-fun e!4711202 () Bool)

(declare-fun tp_is_empty!53651 () Bool)

(declare-fun tp!2390532 () Bool)

(assert (=> b!7996260 (= e!4711202 (and tp_is_empty!53651 tp!2390532))))

(declare-fun b!7996261 () Bool)

(declare-fun tp!2390535 () Bool)

(declare-fun tp!2390531 () Bool)

(assert (=> b!7996261 (= e!4711200 (and tp!2390535 tp!2390531))))

(declare-fun res!3163089 () Bool)

(declare-fun e!4711201 () Bool)

(assert (=> start!752578 (=> (not res!3163089) (not e!4711201))))

(declare-datatypes ((C!43446 0))(
  ( (C!43447 (val!32271 Int)) )
))
(declare-datatypes ((Regex!21554 0))(
  ( (ElementMatch!21554 (c!1468247 C!43446)) (Concat!30553 (regOne!43620 Regex!21554) (regTwo!43620 Regex!21554)) (EmptyExpr!21554) (Star!21554 (reg!21883 Regex!21554)) (EmptyLang!21554) (Union!21554 (regOne!43621 Regex!21554) (regTwo!43621 Regex!21554)) )
))
(declare-fun baseR!141 () Regex!21554)

(declare-fun validRegex!11858 (Regex!21554) Bool)

(assert (=> start!752578 (= res!3163089 (validRegex!11858 baseR!141))))

(assert (=> start!752578 e!4711201))

(assert (=> start!752578 e!4711200))

(assert (=> start!752578 e!4711202))

(declare-fun b!7996262 () Bool)

(declare-fun tp!2390533 () Bool)

(assert (=> b!7996262 (= e!4711200 tp!2390533)))

(declare-fun b!7996263 () Bool)

(assert (=> b!7996263 (= e!4711201 false)))

(declare-fun lt!2713356 () Regex!21554)

(declare-datatypes ((List!74783 0))(
  ( (Nil!74659) (Cons!74659 (h!81107 C!43446) (t!390526 List!74783)) )
))
(declare-fun input!8036 () List!74783)

(declare-fun derivative!740 (Regex!21554 List!74783) Regex!21554)

(assert (=> b!7996263 (= lt!2713356 (derivative!740 baseR!141 input!8036))))

(declare-fun b!7996264 () Bool)

(assert (=> b!7996264 (= e!4711200 tp_is_empty!53651)))

(assert (= (and start!752578 res!3163089) b!7996263))

(assert (= (and start!752578 (is-ElementMatch!21554 baseR!141)) b!7996264))

(assert (= (and start!752578 (is-Concat!30553 baseR!141)) b!7996261))

(assert (= (and start!752578 (is-Star!21554 baseR!141)) b!7996262))

(assert (= (and start!752578 (is-Union!21554 baseR!141)) b!7996259))

(assert (= (and start!752578 (is-Cons!74659 input!8036)) b!7996260))

(declare-fun m!8367022 () Bool)

(assert (=> start!752578 m!8367022))

(declare-fun m!8367024 () Bool)

(assert (=> b!7996263 m!8367024))

(push 1)

(assert (not b!7996259))

(assert tp_is_empty!53651)

(assert (not b!7996263))

(assert (not b!7996262))

(assert (not b!7996260))

(assert (not b!7996261))

(assert (not start!752578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

