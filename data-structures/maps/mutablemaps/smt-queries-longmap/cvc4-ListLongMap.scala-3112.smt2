; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43778 () Bool)

(assert start!43778)

(declare-fun res!288230 () Bool)

(declare-fun e!284688 () Bool)

(assert (=> start!43778 (=> (not res!288230) (not e!284688))))

(declare-datatypes ((B!1098 0))(
  ( (B!1099 (val!7001 Int)) )
))
(declare-datatypes ((tuple2!9200 0))(
  ( (tuple2!9201 (_1!4610 (_ BitVec 64)) (_2!4610 B!1098)) )
))
(declare-datatypes ((List!9300 0))(
  ( (Nil!9297) (Cons!9296 (h!10152 tuple2!9200) (t!15530 List!9300)) )
))
(declare-fun l!956 () List!9300)

(declare-fun isStrictlySorted!400 (List!9300) Bool)

(assert (=> start!43778 (= res!288230 (isStrictlySorted!400 l!956))))

(assert (=> start!43778 e!284688))

(declare-fun e!284689 () Bool)

(assert (=> start!43778 e!284689))

(assert (=> start!43778 true))

(declare-fun tp_is_empty!13907 () Bool)

(assert (=> start!43778 tp_is_empty!13907))

(declare-fun b!483660 () Bool)

(declare-fun res!288229 () Bool)

(assert (=> b!483660 (=> (not res!288229) (not e!284688))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!366 (List!9300 (_ BitVec 64)) Bool)

(assert (=> b!483660 (= res!288229 (not (containsKey!366 l!956 key!251)))))

(declare-fun b!483661 () Bool)

(assert (=> b!483661 (= e!284688 false)))

(declare-fun lt!219257 () List!9300)

(declare-fun value!166 () B!1098)

(declare-fun insertStrictlySorted!222 (List!9300 (_ BitVec 64) B!1098) List!9300)

(assert (=> b!483661 (= lt!219257 (insertStrictlySorted!222 l!956 key!251 value!166))))

(declare-fun b!483662 () Bool)

(declare-fun tp!43450 () Bool)

(assert (=> b!483662 (= e!284689 (and tp_is_empty!13907 tp!43450))))

(assert (= (and start!43778 res!288230) b!483660))

(assert (= (and b!483660 res!288229) b!483661))

(assert (= (and start!43778 (is-Cons!9296 l!956)) b!483662))

(declare-fun m!464587 () Bool)

(assert (=> start!43778 m!464587))

(declare-fun m!464589 () Bool)

(assert (=> b!483660 m!464589))

(declare-fun m!464591 () Bool)

(assert (=> b!483661 m!464591))

(push 1)

(assert (not b!483662))

(assert tp_is_empty!13907)

(assert (not b!483661))

(assert (not b!483660))

(assert (not start!43778))

(check-sat)

