; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756706 () Bool)

(assert start!756706)

(declare-fun b!8033826 () Bool)

(declare-fun e!4732632 () Bool)

(declare-datatypes ((C!43794 0))(
  ( (C!43795 (val!32673 Int)) )
))
(declare-datatypes ((Regex!21728 0))(
  ( (ElementMatch!21728 (c!1473767 C!43794)) (Concat!30731 (regOne!43968 Regex!21728) (regTwo!43968 Regex!21728)) (EmptyExpr!21728) (Star!21728 (reg!22057 Regex!21728)) (EmptyLang!21728) (Union!21728 (regOne!43969 Regex!21728) (regTwo!43969 Regex!21728)) )
))
(declare-fun r!13107 () Regex!21728)

(assert (=> b!8033826 (= e!4732632 false)))

(declare-fun b!8033827 () Bool)

(declare-fun e!4732633 () Bool)

(declare-fun tp!2404987 () Bool)

(declare-fun tp!2404986 () Bool)

(assert (=> b!8033827 (= e!4732633 (and tp!2404987 tp!2404986))))

(declare-fun b!8033828 () Bool)

(declare-fun tp!2404984 () Bool)

(assert (=> b!8033828 (= e!4732633 tp!2404984)))

(declare-fun b!8033829 () Bool)

(declare-fun tp!2404988 () Bool)

(declare-fun tp!2404985 () Bool)

(assert (=> b!8033829 (= e!4732633 (and tp!2404988 tp!2404985))))

(declare-fun b!8033830 () Bool)

(declare-fun tp_is_empty!54451 () Bool)

(assert (=> b!8033830 (= e!4732633 tp_is_empty!54451)))

(declare-fun res!3176778 () Bool)

(assert (=> start!756706 (=> (not res!3176778) (not e!4732632))))

(declare-fun validRegex!12024 (Regex!21728) Bool)

(assert (=> start!756706 (= res!3176778 (validRegex!12024 r!13107))))

(assert (=> start!756706 e!4732632))

(assert (=> start!756706 e!4732633))

(assert (= (and start!756706 res!3176778) b!8033826))

(assert (= (and start!756706 (is-ElementMatch!21728 r!13107)) b!8033830))

(assert (= (and start!756706 (is-Concat!30731 r!13107)) b!8033829))

(assert (= (and start!756706 (is-Star!21728 r!13107)) b!8033828))

(assert (= (and start!756706 (is-Union!21728 r!13107)) b!8033827))

(declare-fun m!8392802 () Bool)

(assert (=> start!756706 m!8392802))

(push 1)

(assert (not b!8033827))

(assert tp_is_empty!54451)

(assert (not start!756706))

(assert (not b!8033829))

(assert (not b!8033828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

