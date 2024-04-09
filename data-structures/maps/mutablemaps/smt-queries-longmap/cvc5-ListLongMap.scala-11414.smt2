; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133024 () Bool)

(assert start!133024)

(declare-fun res!1065093 () Bool)

(declare-fun e!867284 () Bool)

(assert (=> start!133024 (=> (not res!1065093) (not e!867284))))

(declare-datatypes ((B!2360 0))(
  ( (B!2361 (val!19266 Int)) )
))
(declare-datatypes ((tuple2!25048 0))(
  ( (tuple2!25049 (_1!12534 (_ BitVec 64)) (_2!12534 B!2360)) )
))
(declare-datatypes ((List!36446 0))(
  ( (Nil!36443) (Cons!36442 (h!37889 tuple2!25048) (t!51180 List!36446)) )
))
(declare-datatypes ((ListLongMap!22561 0))(
  ( (ListLongMap!22562 (toList!11296 List!36446)) )
))
(declare-fun lm!250 () ListLongMap!22561)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun contains!10195 (ListLongMap!22561 (_ BitVec 64)) Bool)

(assert (=> start!133024 (= res!1065093 (contains!10195 lm!250 a0!50))))

(assert (=> start!133024 e!867284))

(declare-fun e!867285 () Bool)

(declare-fun inv!57449 (ListLongMap!22561) Bool)

(assert (=> start!133024 (and (inv!57449 lm!250) e!867285)))

(assert (=> start!133024 true))

(declare-fun b!1556970 () Bool)

(assert (=> b!1556970 (= e!867284 false)))

(declare-fun b!1556971 () Bool)

(declare-fun tp!112468 () Bool)

(assert (=> b!1556971 (= e!867285 tp!112468)))

(assert (= (and start!133024 res!1065093) b!1556970))

(assert (= start!133024 b!1556971))

(declare-fun m!1434273 () Bool)

(assert (=> start!133024 m!1434273))

(declare-fun m!1434275 () Bool)

(assert (=> start!133024 m!1434275))

(push 1)

(assert (not start!133024))

(assert (not b!1556971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

