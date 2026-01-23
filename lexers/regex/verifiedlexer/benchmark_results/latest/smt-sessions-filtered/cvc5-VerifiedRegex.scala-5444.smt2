; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276374 () Bool)

(assert start!276374)

(declare-fun b!2841561 () Bool)

(declare-fun res!1182167 () Bool)

(declare-fun e!1800238 () Bool)

(assert (=> b!2841561 (=> (not res!1182167) (not e!1800238))))

(declare-fun i!849 () Int)

(declare-datatypes ((B!2527 0))(
  ( (B!2528 (val!10567 Int)) )
))
(declare-datatypes ((List!33779 0))(
  ( (Nil!33655) (Cons!33655 (h!39075 B!2527) (t!232624 List!33779)) )
))
(declare-fun l!2988 () List!33779)

(declare-fun size!26124 (List!33779) Int)

(assert (=> b!2841561 (= res!1182167 (<= i!849 (size!26124 l!2988)))))

(declare-fun b!2841562 () Bool)

(declare-fun e!1800239 () Bool)

(declare-fun tp_is_empty!14657 () Bool)

(declare-fun tp!910305 () Bool)

(assert (=> b!2841562 (= e!1800239 (and tp_is_empty!14657 tp!910305))))

(declare-fun res!1182169 () Bool)

(assert (=> start!276374 (=> (not res!1182169) (not e!1800238))))

(assert (=> start!276374 (= res!1182169 (>= i!849 0))))

(assert (=> start!276374 e!1800238))

(assert (=> start!276374 true))

(assert (=> start!276374 e!1800239))

(declare-fun b!2841563 () Bool)

(declare-fun res!1182170 () Bool)

(assert (=> b!2841563 (=> (not res!1182170) (not e!1800238))))

(declare-fun drop!1804 (List!33779 Int) List!33779)

(assert (=> b!2841563 (= res!1182170 (= (drop!1804 l!2988 i!849) l!2988))))

(declare-fun b!2841564 () Bool)

(assert (=> b!2841564 (= e!1800238 (not true))))

(declare-fun subseq!533 (List!33779 List!33779) Bool)

(assert (=> b!2841564 (subseq!533 l!2988 l!2988)))

(declare-datatypes ((Unit!47483 0))(
  ( (Unit!47484) )
))
(declare-fun lt!1011652 () Unit!47483)

(declare-fun lemmaSubseqRefl!52 (List!33779) Unit!47483)

(assert (=> b!2841564 (= lt!1011652 (lemmaSubseqRefl!52 l!2988))))

(declare-fun b!2841565 () Bool)

(declare-fun res!1182168 () Bool)

(assert (=> b!2841565 (=> (not res!1182168) (not e!1800238))))

(assert (=> b!2841565 (= res!1182168 (and (not (is-Nil!33655 l!2988)) (<= i!849 0)))))

(assert (= (and start!276374 res!1182169) b!2841561))

(assert (= (and b!2841561 res!1182167) b!2841565))

(assert (= (and b!2841565 res!1182168) b!2841563))

(assert (= (and b!2841563 res!1182170) b!2841564))

(assert (= (and start!276374 (is-Cons!33655 l!2988)) b!2841562))

(declare-fun m!3269467 () Bool)

(assert (=> b!2841561 m!3269467))

(declare-fun m!3269469 () Bool)

(assert (=> b!2841563 m!3269469))

(declare-fun m!3269471 () Bool)

(assert (=> b!2841564 m!3269471))

(declare-fun m!3269473 () Bool)

(assert (=> b!2841564 m!3269473))

(push 1)

(assert (not b!2841561))

(assert (not b!2841563))

(assert (not b!2841564))

(assert tp_is_empty!14657)

(assert (not b!2841562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

