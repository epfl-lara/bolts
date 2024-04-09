; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7460 () Bool)

(assert start!7460)

(declare-fun res!27846 () Bool)

(declare-fun e!30744 () Bool)

(assert (=> start!7460 (=> (not res!27846) (not e!30744))))

(declare-datatypes ((B!906 0))(
  ( (B!907 (val!1073 Int)) )
))
(declare-datatypes ((tuple2!1732 0))(
  ( (tuple2!1733 (_1!876 (_ BitVec 64)) (_2!876 B!906)) )
))
(declare-datatypes ((List!1289 0))(
  ( (Nil!1286) (Cons!1285 (h!1865 tuple2!1732) (t!4325 List!1289)) )
))
(declare-datatypes ((ListLongMap!1229 0))(
  ( (ListLongMap!1230 (toList!630 List!1289)) )
))
(declare-fun lm!267 () ListLongMap!1229)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!592 (ListLongMap!1229 (_ BitVec 64)) Bool)

(assert (=> start!7460 (= res!27846 (not (contains!592 lm!267 key!657)))))

(assert (=> start!7460 e!30744))

(declare-fun e!30745 () Bool)

(declare-fun inv!2206 (ListLongMap!1229) Bool)

(assert (=> start!7460 (and (inv!2206 lm!267) e!30745)))

(assert (=> start!7460 true))

(declare-fun b!47945 () Bool)

(assert (=> b!47945 (= e!30744 false)))

(declare-fun b!47946 () Bool)

(declare-fun tp!6299 () Bool)

(assert (=> b!47946 (= e!30745 tp!6299)))

(assert (= (and start!7460 res!27846) b!47945))

(assert (= start!7460 b!47946))

(declare-fun m!41987 () Bool)

(assert (=> start!7460 m!41987))

(declare-fun m!41989 () Bool)

(assert (=> start!7460 m!41989))

(push 1)

(assert (not start!7460))

(assert (not b!47946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

