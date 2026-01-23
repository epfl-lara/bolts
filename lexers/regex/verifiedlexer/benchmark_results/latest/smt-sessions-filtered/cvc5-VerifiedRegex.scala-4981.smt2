; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252538 () Bool)

(assert start!252538)

(declare-fun b!2599586 () Bool)

(declare-fun e!1640858 () Bool)

(declare-datatypes ((B!2343 0))(
  ( (B!2344 (val!9639 Int)) )
))
(declare-datatypes ((List!30072 0))(
  ( (Nil!29972) (Cons!29972 (h!35392 B!2343) (t!213085 List!30072)) )
))
(declare-fun lt!915179 () List!30072)

(declare-fun l!3274 () List!30072)

(assert (=> b!2599586 (= e!1640858 (= lt!915179 (t!213085 l!3274)))))

(declare-fun b!2599587 () Bool)

(declare-fun res!1094844 () Bool)

(declare-fun e!1640857 () Bool)

(assert (=> b!2599587 (=> (not res!1094844) (not e!1640857))))

(declare-fun e!9367 () B!2343)

(declare-fun contains!5520 (List!30072 B!2343) Bool)

(assert (=> b!2599587 (= res!1094844 (not (contains!5520 l!3274 e!9367)))))

(declare-fun res!1094847 () Bool)

(assert (=> start!252538 (=> (not res!1094847) (not e!1640857))))

(declare-fun noDuplicate!520 (List!30072) Bool)

(assert (=> start!252538 (= res!1094847 (noDuplicate!520 l!3274))))

(assert (=> start!252538 e!1640857))

(declare-fun e!1640856 () Bool)

(assert (=> start!252538 e!1640856))

(declare-fun tp_is_empty!13623 () Bool)

(assert (=> start!252538 tp_is_empty!13623))

(declare-fun b!2599588 () Bool)

(declare-fun tp!823681 () Bool)

(assert (=> b!2599588 (= e!1640856 (and tp_is_empty!13623 tp!823681))))

(declare-fun b!2599589 () Bool)

(assert (=> b!2599589 (= e!1640857 (not e!1640858))))

(declare-fun res!1094846 () Bool)

(assert (=> b!2599589 (=> res!1094846 e!1640858)))

(assert (=> b!2599589 (= res!1094846 (contains!5520 (t!213085 l!3274) e!9367))))

(assert (=> b!2599589 (= (t!213085 l!3274) lt!915179)))

(declare-fun -!207 (List!30072 B!2343) List!30072)

(assert (=> b!2599589 (= lt!915179 (-!207 (t!213085 l!3274) e!9367))))

(declare-datatypes ((Unit!44013 0))(
  ( (Unit!44014) )
))
(declare-fun lt!915178 () Unit!44013)

(declare-fun lemmaNotContainedThenRemoveSameList!9 (List!30072 B!2343) Unit!44013)

(assert (=> b!2599589 (= lt!915178 (lemmaNotContainedThenRemoveSameList!9 (t!213085 l!3274) e!9367))))

(declare-fun b!2599590 () Bool)

(declare-fun res!1094845 () Bool)

(assert (=> b!2599590 (=> (not res!1094845) (not e!1640857))))

(assert (=> b!2599590 (= res!1094845 (is-Cons!29972 l!3274))))

(assert (= (and start!252538 res!1094847) b!2599587))

(assert (= (and b!2599587 res!1094844) b!2599590))

(assert (= (and b!2599590 res!1094845) b!2599589))

(assert (= (and b!2599589 (not res!1094846)) b!2599586))

(assert (= (and start!252538 (is-Cons!29972 l!3274)) b!2599588))

(declare-fun m!2935285 () Bool)

(assert (=> b!2599587 m!2935285))

(declare-fun m!2935287 () Bool)

(assert (=> start!252538 m!2935287))

(declare-fun m!2935289 () Bool)

(assert (=> b!2599589 m!2935289))

(declare-fun m!2935291 () Bool)

(assert (=> b!2599589 m!2935291))

(declare-fun m!2935293 () Bool)

(assert (=> b!2599589 m!2935293))

(push 1)

(assert (not b!2599588))

(assert tp_is_empty!13623)

(assert (not b!2599587))

(assert (not b!2599589))

(assert (not start!252538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

