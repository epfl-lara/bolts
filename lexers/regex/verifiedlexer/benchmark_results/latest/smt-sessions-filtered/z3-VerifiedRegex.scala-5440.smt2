; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276340 () Bool)

(assert start!276340)

(declare-fun b!2841346 () Bool)

(declare-fun res!1182079 () Bool)

(declare-fun e!1800111 () Bool)

(assert (=> b!2841346 (=> (not res!1182079) (not e!1800111))))

(declare-datatypes ((B!2513 0))(
  ( (B!2514 (val!10560 Int)) )
))
(declare-datatypes ((List!33772 0))(
  ( (Nil!33648) (Cons!33648 (h!39068 B!2513) (t!232617 List!33772)) )
))
(declare-fun l!2988 () List!33772)

(declare-fun i!849 () Int)

(get-info :version)

(assert (=> b!2841346 (= res!1182079 (and (not ((_ is Nil!33648) l!2988)) (<= i!849 0)))))

(declare-fun res!1182078 () Bool)

(assert (=> start!276340 (=> (not res!1182078) (not e!1800111))))

(assert (=> start!276340 (= res!1182078 (>= i!849 0))))

(assert (=> start!276340 e!1800111))

(assert (=> start!276340 true))

(declare-fun e!1800112 () Bool)

(assert (=> start!276340 e!1800112))

(declare-fun b!2841347 () Bool)

(declare-fun res!1182080 () Bool)

(assert (=> b!2841347 (=> (not res!1182080) (not e!1800111))))

(declare-fun size!26117 (List!33772) Int)

(assert (=> b!2841347 (= res!1182080 (<= i!849 (size!26117 l!2988)))))

(declare-fun b!2841348 () Bool)

(declare-fun tp_is_empty!14643 () Bool)

(declare-fun tp!910272 () Bool)

(assert (=> b!2841348 (= e!1800112 (and tp_is_empty!14643 tp!910272))))

(declare-fun b!2841349 () Bool)

(declare-fun e!1800113 () Bool)

(declare-fun lt!1011619 () List!33772)

(declare-fun subseq!528 (List!33772 List!33772) Bool)

(assert (=> b!2841349 (= e!1800113 (not (subseq!528 lt!1011619 l!2988)))))

(assert (=> b!2841349 (subseq!528 l!2988 l!2988)))

(declare-datatypes ((Unit!47477 0))(
  ( (Unit!47478) )
))
(declare-fun lt!1011618 () Unit!47477)

(declare-fun lemmaSubseqRefl!51 (List!33772) Unit!47477)

(assert (=> b!2841349 (= lt!1011618 (lemmaSubseqRefl!51 l!2988))))

(declare-fun b!2841350 () Bool)

(assert (=> b!2841350 (= e!1800111 e!1800113)))

(declare-fun res!1182077 () Bool)

(assert (=> b!2841350 (=> (not res!1182077) (not e!1800113))))

(assert (=> b!2841350 (= res!1182077 (= lt!1011619 l!2988))))

(declare-fun drop!1799 (List!33772 Int) List!33772)

(assert (=> b!2841350 (= lt!1011619 (drop!1799 l!2988 i!849))))

(assert (= (and start!276340 res!1182078) b!2841347))

(assert (= (and b!2841347 res!1182080) b!2841346))

(assert (= (and b!2841346 res!1182079) b!2841350))

(assert (= (and b!2841350 res!1182077) b!2841349))

(assert (= (and start!276340 ((_ is Cons!33648) l!2988)) b!2841348))

(declare-fun m!3269385 () Bool)

(assert (=> b!2841347 m!3269385))

(declare-fun m!3269387 () Bool)

(assert (=> b!2841349 m!3269387))

(declare-fun m!3269389 () Bool)

(assert (=> b!2841349 m!3269389))

(declare-fun m!3269391 () Bool)

(assert (=> b!2841349 m!3269391))

(declare-fun m!3269393 () Bool)

(assert (=> b!2841350 m!3269393))

(check-sat tp_is_empty!14643 (not b!2841349) (not b!2841350) (not b!2841347) (not b!2841348))
(check-sat)
