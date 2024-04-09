; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137978 () Bool)

(assert start!137978)

(declare-fun res!1081751 () Bool)

(declare-fun e!883931 () Bool)

(assert (=> start!137978 (=> (not res!1081751) (not e!883931))))

(declare-datatypes ((B!2868 0))(
  ( (B!2869 (val!19796 Int)) )
))
(declare-datatypes ((tuple2!25924 0))(
  ( (tuple2!25925 (_1!12972 (_ BitVec 64)) (_2!12972 B!2868)) )
))
(declare-datatypes ((List!37077 0))(
  ( (Nil!37074) (Cons!37073 (h!38617 tuple2!25924) (t!51998 List!37077)) )
))
(declare-fun l!548 () List!37077)

(declare-fun isStrictlySorted!1148 (List!37077) Bool)

(assert (=> start!137978 (= res!1081751 (isStrictlySorted!1148 l!548))))

(assert (=> start!137978 e!883931))

(declare-fun e!883932 () Bool)

(assert (=> start!137978 e!883932))

(assert (=> start!137978 true))

(declare-fun b!1583485 () Bool)

(declare-fun key!159 () (_ BitVec 64))

(assert (=> b!1583485 (= e!883931 (and (or (not (is-Cons!37073 l!548)) (not (= (_1!12972 (h!38617 l!548)) key!159))) (or (not (is-Cons!37073 l!548)) (= (_1!12972 (h!38617 l!548)) key!159)) (not (is-Nil!37074 l!548))))))

(declare-fun b!1583486 () Bool)

(declare-fun tp_is_empty!39401 () Bool)

(declare-fun tp!114994 () Bool)

(assert (=> b!1583486 (= e!883932 (and tp_is_empty!39401 tp!114994))))

(assert (= (and start!137978 res!1081751) b!1583485))

(assert (= (and start!137978 (is-Cons!37073 l!548)) b!1583486))

(declare-fun m!1453293 () Bool)

(assert (=> start!137978 m!1453293))

(push 1)

(assert (not start!137978))

(assert (not b!1583486))

(assert tp_is_empty!39401)

