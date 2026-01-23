; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!405044 () Bool)

(assert start!405044)

(declare-fun res!1741220 () Bool)

(declare-fun e!2628687 () Bool)

(assert (=> start!405044 (=> (not res!1741220) (not e!2628687))))

(declare-datatypes ((B!2727 0))(
  ( (B!2728 (val!15065 Int)) )
))
(declare-datatypes ((List!46862 0))(
  ( (Nil!46738) (Cons!46738 (h!52158 B!2727) (t!349565 List!46862)) )
))
(declare-fun l!3106 () List!46862)

(declare-fun e1!42 () B!2727)

(declare-fun contains!9682 (List!46862 B!2727) Bool)

(assert (=> start!405044 (= res!1741220 (contains!9682 l!3106 e1!42))))

(assert (=> start!405044 e!2628687))

(declare-fun e!2628688 () Bool)

(assert (=> start!405044 e!2628688))

(declare-fun tp_is_empty!22543 () Bool)

(assert (=> start!405044 tp_is_empty!22543))

(declare-fun b!4233631 () Bool)

(declare-fun res!1741219 () Bool)

(assert (=> b!4233631 (=> (not res!1741219) (not e!2628687))))

(declare-fun e2!42 () B!2727)

(assert (=> b!4233631 (= res!1741219 (contains!9682 l!3106 e2!42))))

(declare-fun b!4233632 () Bool)

(assert (=> b!4233632 (= e!2628687 false)))

(declare-fun lt!1505324 () Int)

(declare-fun getIndex!881 (List!46862 B!2727) Int)

(assert (=> b!4233632 (= lt!1505324 (getIndex!881 l!3106 e2!42))))

(declare-fun lt!1505323 () Int)

(assert (=> b!4233632 (= lt!1505323 (getIndex!881 l!3106 e1!42))))

(declare-fun b!4233633 () Bool)

(declare-fun tp!1296507 () Bool)

(assert (=> b!4233633 (= e!2628688 (and tp_is_empty!22543 tp!1296507))))

(assert (= (and start!405044 res!1741220) b!4233631))

(assert (= (and b!4233631 res!1741219) b!4233632))

(assert (= (and start!405044 (is-Cons!46738 l!3106)) b!4233633))

(declare-fun m!4820043 () Bool)

(assert (=> start!405044 m!4820043))

(declare-fun m!4820045 () Bool)

(assert (=> b!4233631 m!4820045))

(declare-fun m!4820047 () Bool)

(assert (=> b!4233632 m!4820047))

(declare-fun m!4820049 () Bool)

(assert (=> b!4233632 m!4820049))

(push 1)

(assert tp_is_empty!22543)

(assert (not b!4233633))

(assert (not start!405044))

(assert (not b!4233632))

(assert (not b!4233631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

