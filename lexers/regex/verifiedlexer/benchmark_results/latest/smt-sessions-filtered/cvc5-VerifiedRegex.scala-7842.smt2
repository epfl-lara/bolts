; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!411382 () Bool)

(assert start!411382)

(declare-fun b!4281512 () Bool)

(declare-fun res!1757352 () Bool)

(declare-fun e!2657994 () Bool)

(assert (=> b!4281512 (=> (not res!1757352) (not e!2657994))))

(declare-fun i!813 () Int)

(declare-datatypes ((B!2875 0))(
  ( (B!2876 (val!15307 Int)) )
))
(declare-datatypes ((List!47516 0))(
  ( (Nil!47392) (Cons!47392 (h!52812 B!2875) (t!354105 List!47516)) )
))
(declare-fun l!2982 () List!47516)

(declare-fun size!34728 (List!47516) Int)

(assert (=> b!4281512 (= res!1757352 (< i!813 (size!34728 l!2982)))))

(declare-fun res!1757350 () Bool)

(assert (=> start!411382 (=> (not res!1757350) (not e!2657994))))

(assert (=> start!411382 (= res!1757350 (>= i!813 0))))

(assert (=> start!411382 e!2657994))

(assert (=> start!411382 true))

(declare-fun e!2657995 () Bool)

(assert (=> start!411382 e!2657995))

(declare-fun b!4281513 () Bool)

(declare-fun res!1757351 () Bool)

(assert (=> b!4281513 (=> (not res!1757351) (not e!2657994))))

(assert (=> b!4281513 (= res!1757351 (and (not (is-Nil!47392 l!2982)) (not (= i!813 0)) (>= (- i!813 1) 0)))))

(declare-fun b!4281514 () Bool)

(assert (=> b!4281514 (= e!2657994 false)))

(declare-fun lt!1515228 () Int)

(assert (=> b!4281514 (= lt!1515228 (size!34728 (t!354105 l!2982)))))

(declare-fun b!4281515 () Bool)

(declare-fun tp_is_empty!23023 () Bool)

(declare-fun tp!1309455 () Bool)

(assert (=> b!4281515 (= e!2657995 (and tp_is_empty!23023 tp!1309455))))

(assert (= (and start!411382 res!1757350) b!4281512))

(assert (= (and b!4281512 res!1757352) b!4281513))

(assert (= (and b!4281513 res!1757351) b!4281514))

(assert (= (and start!411382 (is-Cons!47392 l!2982)) b!4281515))

(declare-fun m!4878959 () Bool)

(assert (=> b!4281512 m!4878959))

(declare-fun m!4878961 () Bool)

(assert (=> b!4281514 m!4878961))

(push 1)

(assert (not b!4281512))

(assert (not b!4281514))

(assert (not b!4281515))

(assert tp_is_empty!23023)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

