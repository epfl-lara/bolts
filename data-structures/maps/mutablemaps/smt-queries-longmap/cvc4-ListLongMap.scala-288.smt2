; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4730 () Bool)

(assert start!4730)

(declare-fun b_free!1319 () Bool)

(declare-fun b_next!1319 () Bool)

(assert (=> start!4730 (= b_free!1319 (not b_next!1319))))

(declare-fun tp!5420 () Bool)

(declare-fun b_and!2173 () Bool)

(assert (=> start!4730 (= tp!5420 b_and!2173)))

(declare-fun res!22183 () Bool)

(declare-fun e!23157 () Bool)

(assert (=> start!4730 (=> (not res!22183) (not e!23157))))

(declare-datatypes ((B!726 0))(
  ( (B!727 (val!863 Int)) )
))
(declare-datatypes ((tuple2!1390 0))(
  ( (tuple2!1391 (_1!705 (_ BitVec 64)) (_2!705 B!726)) )
))
(declare-datatypes ((List!983 0))(
  ( (Nil!980) (Cons!979 (h!1547 tuple2!1390) (t!3716 List!983)) )
))
(declare-datatypes ((ListLongMap!971 0))(
  ( (ListLongMap!972 (toList!501 List!983)) )
))
(declare-fun lm!252 () ListLongMap!971)

(declare-fun p!304 () Int)

(declare-fun forall!163 (List!983 Int) Bool)

(assert (=> start!4730 (= res!22183 (forall!163 (toList!501 lm!252) p!304))))

(assert (=> start!4730 e!23157))

(declare-fun e!23156 () Bool)

(declare-fun inv!1608 (ListLongMap!971) Bool)

(assert (=> start!4730 (and (inv!1608 lm!252) e!23156)))

(assert (=> start!4730 tp!5420))

(assert (=> start!4730 true))

(declare-fun b!36656 () Bool)

(assert (=> b!36656 (= e!23157 false)))

(declare-fun lt!13555 () Bool)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!449 (ListLongMap!971 (_ BitVec 64)) Bool)

(assert (=> b!36656 (= lt!13555 (contains!449 lm!252 k!388))))

(declare-fun b!36657 () Bool)

(declare-fun tp!5419 () Bool)

(assert (=> b!36657 (= e!23156 tp!5419)))

(assert (= (and start!4730 res!22183) b!36656))

(assert (= start!4730 b!36657))

(declare-fun m!29555 () Bool)

(assert (=> start!4730 m!29555))

(declare-fun m!29557 () Bool)

(assert (=> start!4730 m!29557))

(declare-fun m!29559 () Bool)

(assert (=> b!36656 m!29559))

(push 1)

(assert (not b_next!1319))

(assert (not b!36656))

(assert b_and!2173)

(assert (not start!4730))

(assert (not b!36657))

(check-sat)

