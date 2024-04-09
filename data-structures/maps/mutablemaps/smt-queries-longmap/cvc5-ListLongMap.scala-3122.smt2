; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43984 () Bool)

(assert start!43984)

(declare-fun res!288926 () Bool)

(declare-fun e!285570 () Bool)

(assert (=> start!43984 (=> (not res!288926) (not e!285570))))

(declare-datatypes ((B!1154 0))(
  ( (B!1155 (val!7029 Int)) )
))
(declare-datatypes ((tuple2!9256 0))(
  ( (tuple2!9257 (_1!4638 (_ BitVec 64)) (_2!4638 B!1154)) )
))
(declare-datatypes ((List!9328 0))(
  ( (Nil!9325) (Cons!9324 (h!10180 tuple2!9256) (t!15561 List!9328)) )
))
(declare-fun l!956 () List!9328)

(declare-fun isStrictlySorted!428 (List!9328) Bool)

(assert (=> start!43984 (= res!288926 (isStrictlySorted!428 l!956))))

(assert (=> start!43984 e!285570))

(declare-fun e!285571 () Bool)

(assert (=> start!43984 e!285571))

(assert (=> start!43984 true))

(declare-fun tp_is_empty!13963 () Bool)

(assert (=> start!43984 tp_is_empty!13963))

(declare-fun b!485019 () Bool)

(declare-fun res!288925 () Bool)

(assert (=> b!485019 (=> (not res!288925) (not e!285570))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!394 (List!9328 (_ BitVec 64)) Bool)

(assert (=> b!485019 (= res!288925 (not (containsKey!394 l!956 key!251)))))

(declare-fun b!485020 () Bool)

(assert (=> b!485020 (= e!285570 false)))

(declare-fun lt!219461 () List!9328)

(declare-fun value!166 () B!1154)

(declare-fun insertStrictlySorted!247 (List!9328 (_ BitVec 64) B!1154) List!9328)

(assert (=> b!485020 (= lt!219461 (insertStrictlySorted!247 l!956 key!251 value!166))))

(declare-fun b!485021 () Bool)

(declare-fun tp!43591 () Bool)

(assert (=> b!485021 (= e!285571 (and tp_is_empty!13963 tp!43591))))

(assert (= (and start!43984 res!288926) b!485019))

(assert (= (and b!485019 res!288925) b!485020))

(assert (= (and start!43984 (is-Cons!9324 l!956)) b!485021))

(declare-fun m!465289 () Bool)

(assert (=> start!43984 m!465289))

(declare-fun m!465291 () Bool)

(assert (=> b!485019 m!465291))

(declare-fun m!465293 () Bool)

(assert (=> b!485020 m!465293))

(push 1)

(assert (not b!485021))

(assert tp_is_empty!13963)

(assert (not b!485019))

(assert (not start!43984))

(assert (not b!485020))

(check-sat)

(pop 1)

