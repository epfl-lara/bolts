; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43780 () Bool)

(assert start!43780)

(declare-fun b!483675 () Bool)

(declare-fun res!288245 () Bool)

(declare-fun e!284696 () Bool)

(assert (=> b!483675 (=> (not res!288245) (not e!284696))))

(declare-datatypes ((B!1100 0))(
  ( (B!1101 (val!7002 Int)) )
))
(declare-datatypes ((tuple2!9202 0))(
  ( (tuple2!9203 (_1!4611 (_ BitVec 64)) (_2!4611 B!1100)) )
))
(declare-datatypes ((List!9301 0))(
  ( (Nil!9298) (Cons!9297 (h!10153 tuple2!9202) (t!15531 List!9301)) )
))
(declare-fun l!956 () List!9301)

(declare-fun isStrictlySorted!401 (List!9301) Bool)

(assert (=> b!483675 (= res!288245 (isStrictlySorted!401 (t!15531 l!956)))))

(declare-fun b!483676 () Bool)

(declare-fun e!284698 () Bool)

(assert (=> b!483676 (= e!284698 e!284696)))

(declare-fun res!288243 () Bool)

(assert (=> b!483676 (=> (not res!288243) (not e!284696))))

(declare-fun key!251 () (_ BitVec 64))

(assert (=> b!483676 (= res!288243 (and (is-Cons!9297 l!956) (bvslt (_1!4611 (h!10153 l!956)) key!251)))))

(declare-fun lt!219262 () List!9301)

(declare-fun value!166 () B!1100)

(declare-fun insertStrictlySorted!223 (List!9301 (_ BitVec 64) B!1100) List!9301)

(assert (=> b!483676 (= lt!219262 (insertStrictlySorted!223 l!956 key!251 value!166))))

(declare-fun b!483677 () Bool)

(declare-fun e!284697 () Bool)

(declare-fun tp_is_empty!13909 () Bool)

(declare-fun tp!43453 () Bool)

(assert (=> b!483677 (= e!284697 (and tp_is_empty!13909 tp!43453))))

(declare-fun b!483678 () Bool)

(declare-fun res!288241 () Bool)

(assert (=> b!483678 (=> (not res!288241) (not e!284698))))

(declare-fun containsKey!367 (List!9301 (_ BitVec 64)) Bool)

(assert (=> b!483678 (= res!288241 (not (containsKey!367 l!956 key!251)))))

(declare-fun res!288242 () Bool)

(assert (=> start!43780 (=> (not res!288242) (not e!284698))))

(assert (=> start!43780 (= res!288242 (isStrictlySorted!401 l!956))))

(assert (=> start!43780 e!284698))

(assert (=> start!43780 e!284697))

(assert (=> start!43780 true))

(assert (=> start!43780 tp_is_empty!13909))

(declare-fun b!483679 () Bool)

(assert (=> b!483679 (= e!284696 (not true))))

(declare-fun length!8 (List!9301) Int)

(assert (=> b!483679 (= (length!8 (insertStrictlySorted!223 (t!15531 l!956) key!251 value!166)) (+ 1 (length!8 (t!15531 l!956))))))

(declare-datatypes ((Unit!14144 0))(
  ( (Unit!14145) )
))
(declare-fun lt!219263 () Unit!14144)

(declare-fun lemmaAddNewKeyIncrementSize!1 (List!9301 (_ BitVec 64) B!1100) Unit!14144)

(assert (=> b!483679 (= lt!219263 (lemmaAddNewKeyIncrementSize!1 (t!15531 l!956) key!251 value!166))))

(declare-fun b!483680 () Bool)

(declare-fun res!288244 () Bool)

(assert (=> b!483680 (=> (not res!288244) (not e!284696))))

(assert (=> b!483680 (= res!288244 (not (containsKey!367 (t!15531 l!956) key!251)))))

(assert (= (and start!43780 res!288242) b!483678))

(assert (= (and b!483678 res!288241) b!483676))

(assert (= (and b!483676 res!288243) b!483675))

(assert (= (and b!483675 res!288245) b!483680))

(assert (= (and b!483680 res!288244) b!483679))

(assert (= (and start!43780 (is-Cons!9297 l!956)) b!483677))

(declare-fun m!464593 () Bool)

(assert (=> b!483678 m!464593))

(declare-fun m!464595 () Bool)

(assert (=> b!483680 m!464595))

(declare-fun m!464597 () Bool)

(assert (=> b!483675 m!464597))

(declare-fun m!464599 () Bool)

(assert (=> b!483679 m!464599))

(assert (=> b!483679 m!464599))

(declare-fun m!464601 () Bool)

(assert (=> b!483679 m!464601))

(declare-fun m!464603 () Bool)

(assert (=> b!483679 m!464603))

(declare-fun m!464605 () Bool)

(assert (=> b!483679 m!464605))

(declare-fun m!464607 () Bool)

(assert (=> start!43780 m!464607))

(declare-fun m!464609 () Bool)

(assert (=> b!483676 m!464609))

(push 1)

