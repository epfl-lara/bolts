; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4708 () Bool)

(assert start!4708)

(declare-fun b_free!1297 () Bool)

(declare-fun b_next!1297 () Bool)

(assert (=> start!4708 (= b_free!1297 (not b_next!1297))))

(declare-fun tp!5354 () Bool)

(declare-fun b_and!2145 () Bool)

(assert (=> start!4708 (= tp!5354 b_and!2145)))

(declare-fun res!22069 () Bool)

(declare-fun e!23072 () Bool)

(assert (=> start!4708 (=> (not res!22069) (not e!23072))))

(declare-datatypes ((B!704 0))(
  ( (B!705 (val!852 Int)) )
))
(declare-datatypes ((tuple2!1368 0))(
  ( (tuple2!1369 (_1!694 (_ BitVec 64)) (_2!694 B!704)) )
))
(declare-datatypes ((List!972 0))(
  ( (Nil!969) (Cons!968 (h!1536 tuple2!1368) (t!3699 List!972)) )
))
(declare-datatypes ((ListLongMap!949 0))(
  ( (ListLongMap!950 (toList!490 List!972)) )
))
(declare-fun lm!252 () ListLongMap!949)

(declare-fun p!304 () Int)

(declare-fun forall!152 (List!972 Int) Bool)

(assert (=> start!4708 (= res!22069 (forall!152 (toList!490 lm!252) p!304))))

(assert (=> start!4708 e!23072))

(declare-fun e!23073 () Bool)

(declare-fun inv!1582 (ListLongMap!949) Bool)

(assert (=> start!4708 (and (inv!1582 lm!252) e!23073)))

(assert (=> start!4708 tp!5354))

(assert (=> start!4708 true))

(declare-fun b!36509 () Bool)

(assert (=> b!36509 (= e!23072 false)))

(declare-fun lt!13504 () Bool)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!438 (ListLongMap!949 (_ BitVec 64)) Bool)

(assert (=> b!36509 (= lt!13504 (contains!438 lm!252 k!388))))

(declare-fun b!36510 () Bool)

(declare-fun tp!5353 () Bool)

(assert (=> b!36510 (= e!23073 tp!5353)))

(assert (= (and start!4708 res!22069) b!36509))

(assert (= start!4708 b!36510))

(declare-fun m!29411 () Bool)

(assert (=> start!4708 m!29411))

(declare-fun m!29413 () Bool)

(assert (=> start!4708 m!29413))

(declare-fun m!29415 () Bool)

(assert (=> b!36509 m!29415))

(push 1)

(assert b_and!2145)

(assert (not b_next!1297))

(assert (not b!36510))

(assert (not b!36509))

(assert (not start!4708))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2145)

(assert (not b_next!1297))

(check-sat)

(pop 1)

