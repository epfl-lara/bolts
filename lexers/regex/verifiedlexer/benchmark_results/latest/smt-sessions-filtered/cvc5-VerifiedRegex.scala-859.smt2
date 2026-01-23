; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!46264 () Bool)

(assert start!46264)

(declare-datatypes ((B!1039 0))(
  ( (B!1040 (val!1661 Int)) )
))
(declare-datatypes ((List!4634 0))(
  ( (Nil!4624) (Cons!4624 (h!10021 B!1039) (t!73152 List!4634)) )
))
(declare-fun lt!212024 () List!4634)

(declare-fun elmt!142 () B!1039)

(declare-fun l2!1029 () List!4634)

(declare-fun l1!1060 () List!4634)

(declare-fun ++!1346 (List!4634 List!4634) List!4634)

(assert (=> start!46264 (= lt!212024 (++!1346 (++!1346 l1!1060 (Cons!4624 elmt!142 Nil!4624)) l2!1029))))

(assert (=> start!46264 false))

(declare-fun e!305567 () Bool)

(assert (=> start!46264 e!305567))

(declare-fun tp_is_empty!2425 () Bool)

(assert (=> start!46264 tp_is_empty!2425))

(declare-fun e!305568 () Bool)

(assert (=> start!46264 e!305568))

(declare-fun b!511535 () Bool)

(declare-fun tp!159010 () Bool)

(assert (=> b!511535 (= e!305567 (and tp_is_empty!2425 tp!159010))))

(declare-fun b!511536 () Bool)

(declare-fun tp!159011 () Bool)

(assert (=> b!511536 (= e!305568 (and tp_is_empty!2425 tp!159011))))

(assert (= (and start!46264 (is-Cons!4624 l1!1060)) b!511535))

(assert (= (and start!46264 (is-Cons!4624 l2!1029)) b!511536))

(declare-fun m!758319 () Bool)

(assert (=> start!46264 m!758319))

(assert (=> start!46264 m!758319))

(declare-fun m!758321 () Bool)

(assert (=> start!46264 m!758321))

(push 1)

(assert (not start!46264))

(assert (not b!511536))

(assert (not b!511535))

(assert tp_is_empty!2425)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

