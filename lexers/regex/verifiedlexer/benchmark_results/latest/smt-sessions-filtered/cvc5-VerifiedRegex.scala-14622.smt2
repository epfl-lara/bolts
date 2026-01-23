; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756446 () Bool)

(assert start!756446)

(assert (=> start!756446 false))

(declare-fun e!4730828 () Bool)

(assert (=> start!756446 e!4730828))

(declare-fun b!8029974 () Bool)

(declare-fun tp!2403017 () Bool)

(assert (=> b!8029974 (= e!4730828 tp!2403017)))

(declare-fun b!8029972 () Bool)

(declare-fun tp_is_empty!54387 () Bool)

(assert (=> b!8029972 (= e!4730828 tp_is_empty!54387)))

(declare-fun b!8029973 () Bool)

(declare-fun tp!2403014 () Bool)

(declare-fun tp!2403015 () Bool)

(assert (=> b!8029973 (= e!4730828 (and tp!2403014 tp!2403015))))

(declare-fun b!8029975 () Bool)

(declare-fun tp!2403016 () Bool)

(declare-fun tp!2403018 () Bool)

(assert (=> b!8029975 (= e!4730828 (and tp!2403016 tp!2403018))))

(declare-datatypes ((C!43730 0))(
  ( (C!43731 (val!32641 Int)) )
))
(declare-datatypes ((Regex!21696 0))(
  ( (ElementMatch!21696 (c!1473183 C!43730)) (Concat!30699 (regOne!43904 Regex!21696) (regTwo!43904 Regex!21696)) (EmptyExpr!21696) (Star!21696 (reg!22025 Regex!21696)) (EmptyLang!21696) (Union!21696 (regOne!43905 Regex!21696) (regTwo!43905 Regex!21696)) )
))
(declare-fun r!24836 () Regex!21696)

(assert (= (and start!756446 (is-ElementMatch!21696 r!24836)) b!8029972))

(assert (= (and start!756446 (is-Concat!30699 r!24836)) b!8029973))

(assert (= (and start!756446 (is-Star!21696 r!24836)) b!8029974))

(assert (= (and start!756446 (is-Union!21696 r!24836)) b!8029975))

(push 1)

(assert (not b!8029975))

(assert (not b!8029974))

(assert (not b!8029973))

(assert tp_is_empty!54387)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

