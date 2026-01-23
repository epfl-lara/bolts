; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252394 () Bool)

(assert start!252394)

(declare-fun res!1094362 () Bool)

(declare-fun e!1640424 () Bool)

(assert (=> start!252394 (=> (not res!1094362) (not e!1640424))))

(declare-datatypes ((B!2295 0))(
  ( (B!2296 (val!9615 Int)) )
))
(declare-datatypes ((List!30048 0))(
  ( (Nil!29948) (Cons!29948 (h!35368 B!2295) (t!213061 List!30048)) )
))
(declare-fun l!3796 () List!30048)

(declare-fun noDuplicate!496 (List!30048) Bool)

(assert (=> start!252394 (= res!1094362 (noDuplicate!496 l!3796))))

(assert (=> start!252394 e!1640424))

(declare-fun e!1640425 () Bool)

(assert (=> start!252394 e!1640425))

(declare-fun tp_is_empty!13575 () Bool)

(assert (=> start!252394 tp_is_empty!13575))

(declare-fun b!2598906 () Bool)

(declare-fun res!1094363 () Bool)

(assert (=> b!2598906 (=> (not res!1094363) (not e!1640424))))

(declare-fun e!9468 () B!2295)

(declare-fun contains!5496 (List!30048 B!2295) Bool)

(assert (=> b!2598906 (= res!1094363 (contains!5496 l!3796 e!9468))))

(declare-fun b!2598907 () Bool)

(assert (=> b!2598907 (= e!1640424 (and (or (not (is-Cons!29948 l!3796)) (= (h!35368 l!3796) e!9468)) (or (not (is-Cons!29948 l!3796)) (not (= (h!35368 l!3796) e!9468))) (not (is-Nil!29948 l!3796))))))

(declare-fun b!2598908 () Bool)

(declare-fun tp!823567 () Bool)

(assert (=> b!2598908 (= e!1640425 (and tp_is_empty!13575 tp!823567))))

(assert (= (and start!252394 res!1094362) b!2598906))

(assert (= (and b!2598906 res!1094363) b!2598907))

(assert (= (and start!252394 (is-Cons!29948 l!3796)) b!2598908))

(declare-fun m!2934833 () Bool)

(assert (=> start!252394 m!2934833))

(declare-fun m!2934835 () Bool)

(assert (=> b!2598906 m!2934835))

(push 1)

(assert (not start!252394))

(assert (not b!2598906))

(assert (not b!2598908))

(assert tp_is_empty!13575)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

