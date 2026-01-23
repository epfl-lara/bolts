; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276342 () Bool)

(assert start!276342)

(declare-fun b!2841361 () Bool)

(declare-fun e!1800119 () Bool)

(assert (=> b!2841361 (= e!1800119 (not true))))

(declare-datatypes ((B!2515 0))(
  ( (B!2516 (val!10561 Int)) )
))
(declare-datatypes ((List!33773 0))(
  ( (Nil!33649) (Cons!33649 (h!39069 B!2515) (t!232618 List!33773)) )
))
(declare-fun l!2988 () List!33773)

(declare-fun i!849 () Int)

(declare-fun subseq!529 (List!33773 List!33773) Bool)

(declare-fun drop!1800 (List!33773 Int) List!33773)

(assert (=> b!2841361 (subseq!529 (drop!1800 (t!232618 l!2988) (- i!849 1)) (t!232618 l!2988))))

(declare-datatypes ((Unit!47479 0))(
  ( (Unit!47480) )
))
(declare-fun lt!1011622 () Unit!47479)

(declare-fun lemmaDropSubSeq!78 (List!33773 Int) Unit!47479)

(assert (=> b!2841361 (= lt!1011622 (lemmaDropSubSeq!78 (t!232618 l!2988) (- i!849 1)))))

(declare-fun b!2841360 () Bool)

(declare-fun res!1182089 () Bool)

(assert (=> b!2841360 (=> (not res!1182089) (not e!1800119))))

(assert (=> b!2841360 (= res!1182089 (and (not (is-Nil!33649 l!2988)) (> i!849 0)))))

(declare-fun res!1182087 () Bool)

(assert (=> start!276342 (=> (not res!1182087) (not e!1800119))))

(assert (=> start!276342 (= res!1182087 (>= i!849 0))))

(assert (=> start!276342 e!1800119))

(assert (=> start!276342 true))

(declare-fun e!1800118 () Bool)

(assert (=> start!276342 e!1800118))

(declare-fun b!2841362 () Bool)

(declare-fun tp_is_empty!14645 () Bool)

(declare-fun tp!910275 () Bool)

(assert (=> b!2841362 (= e!1800118 (and tp_is_empty!14645 tp!910275))))

(declare-fun b!2841359 () Bool)

(declare-fun res!1182088 () Bool)

(assert (=> b!2841359 (=> (not res!1182088) (not e!1800119))))

(declare-fun size!26118 (List!33773) Int)

(assert (=> b!2841359 (= res!1182088 (<= i!849 (size!26118 l!2988)))))

(assert (= (and start!276342 res!1182087) b!2841359))

(assert (= (and b!2841359 res!1182088) b!2841360))

(assert (= (and b!2841360 res!1182089) b!2841361))

(assert (= (and start!276342 (is-Cons!33649 l!2988)) b!2841362))

(declare-fun m!3269395 () Bool)

(assert (=> b!2841361 m!3269395))

(assert (=> b!2841361 m!3269395))

(declare-fun m!3269397 () Bool)

(assert (=> b!2841361 m!3269397))

(declare-fun m!3269399 () Bool)

(assert (=> b!2841361 m!3269399))

(declare-fun m!3269401 () Bool)

(assert (=> b!2841359 m!3269401))

(push 1)

(assert (not b!2841361))

(assert (not b!2841359))

(assert (not b!2841362))

(assert tp_is_empty!14645)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

