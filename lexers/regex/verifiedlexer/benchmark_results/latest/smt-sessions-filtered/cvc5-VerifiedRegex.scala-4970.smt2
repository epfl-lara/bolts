; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252398 () Bool)

(assert start!252398)

(declare-fun b!2598926 () Bool)

(declare-fun res!1094378 () Bool)

(declare-fun e!1640437 () Bool)

(assert (=> b!2598926 (=> (not res!1094378) (not e!1640437))))

(declare-datatypes ((B!2299 0))(
  ( (B!2300 (val!9617 Int)) )
))
(declare-datatypes ((List!30050 0))(
  ( (Nil!29950) (Cons!29950 (h!35370 B!2299) (t!213063 List!30050)) )
))
(declare-fun l!3796 () List!30050)

(declare-fun e!9468 () B!2299)

(declare-fun contains!5498 (List!30050 B!2299) Bool)

(assert (=> b!2598926 (= res!1094378 (contains!5498 l!3796 e!9468))))

(declare-fun b!2598929 () Bool)

(declare-fun e!1640436 () Bool)

(declare-fun tp_is_empty!13579 () Bool)

(declare-fun tp!823573 () Bool)

(assert (=> b!2598929 (= e!1640436 (and tp_is_empty!13579 tp!823573))))

(declare-fun b!2598927 () Bool)

(declare-fun res!1094376 () Bool)

(assert (=> b!2598927 (=> (not res!1094376) (not e!1640437))))

(assert (=> b!2598927 (= res!1094376 (and (or (not (is-Cons!29950 l!3796)) (= (h!35370 l!3796) e!9468)) (or (not (is-Cons!29950 l!3796)) (not (= (h!35370 l!3796) e!9468))) (not (is-Nil!29950 l!3796))))))

(declare-fun res!1094377 () Bool)

(assert (=> start!252398 (=> (not res!1094377) (not e!1640437))))

(declare-fun noDuplicate!498 (List!30050) Bool)

(assert (=> start!252398 (= res!1094377 (noDuplicate!498 l!3796))))

(assert (=> start!252398 e!1640437))

(assert (=> start!252398 e!1640436))

(assert (=> start!252398 tp_is_empty!13579))

(declare-fun b!2598928 () Bool)

(declare-fun size!23235 (List!30050) Int)

(declare-fun -!197 (List!30050 B!2299) List!30050)

(assert (=> b!2598928 (= e!1640437 (not (= (size!23235 (-!197 l!3796 e!9468)) (- (size!23235 l!3796) 1))))))

(assert (= (and start!252398 res!1094377) b!2598926))

(assert (= (and b!2598926 res!1094378) b!2598927))

(assert (= (and b!2598927 res!1094376) b!2598928))

(assert (= (and start!252398 (is-Cons!29950 l!3796)) b!2598929))

(declare-fun m!2934841 () Bool)

(assert (=> b!2598926 m!2934841))

(declare-fun m!2934843 () Bool)

(assert (=> start!252398 m!2934843))

(declare-fun m!2934845 () Bool)

(assert (=> b!2598928 m!2934845))

(assert (=> b!2598928 m!2934845))

(declare-fun m!2934847 () Bool)

(assert (=> b!2598928 m!2934847))

(declare-fun m!2934849 () Bool)

(assert (=> b!2598928 m!2934849))

(push 1)

(assert (not b!2598929))

(assert tp_is_empty!13579)

(assert (not b!2598926))

(assert (not start!252398))

(assert (not b!2598928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

