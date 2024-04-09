; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4726 () Bool)

(assert start!4726)

(declare-fun b_free!1315 () Bool)

(declare-fun b_next!1315 () Bool)

(assert (=> start!4726 (= b_free!1315 (not b_next!1315))))

(declare-fun tp!5408 () Bool)

(declare-fun b_and!2169 () Bool)

(assert (=> start!4726 (= tp!5408 b_and!2169)))

(declare-fun res!22177 () Bool)

(declare-fun e!23144 () Bool)

(assert (=> start!4726 (=> (not res!22177) (not e!23144))))

(declare-datatypes ((B!722 0))(
  ( (B!723 (val!861 Int)) )
))
(declare-datatypes ((tuple2!1386 0))(
  ( (tuple2!1387 (_1!703 (_ BitVec 64)) (_2!703 B!722)) )
))
(declare-datatypes ((List!981 0))(
  ( (Nil!978) (Cons!977 (h!1545 tuple2!1386) (t!3714 List!981)) )
))
(declare-datatypes ((ListLongMap!967 0))(
  ( (ListLongMap!968 (toList!499 List!981)) )
))
(declare-fun lm!252 () ListLongMap!967)

(declare-fun p!304 () Int)

(declare-fun forall!161 (List!981 Int) Bool)

(assert (=> start!4726 (= res!22177 (forall!161 (toList!499 lm!252) p!304))))

(assert (=> start!4726 e!23144))

(declare-fun e!23145 () Bool)

(declare-fun inv!1606 (ListLongMap!967) Bool)

(assert (=> start!4726 (and (inv!1606 lm!252) e!23145)))

(assert (=> start!4726 tp!5408))

(assert (=> start!4726 true))

(declare-fun b!36644 () Bool)

(assert (=> b!36644 (= e!23144 false)))

(declare-fun lt!13549 () Bool)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!447 (ListLongMap!967 (_ BitVec 64)) Bool)

(assert (=> b!36644 (= lt!13549 (contains!447 lm!252 k!388))))

(declare-fun b!36645 () Bool)

(declare-fun tp!5407 () Bool)

(assert (=> b!36645 (= e!23145 tp!5407)))

(assert (= (and start!4726 res!22177) b!36644))

(assert (= start!4726 b!36645))

(declare-fun m!29543 () Bool)

(assert (=> start!4726 m!29543))

(declare-fun m!29545 () Bool)

(assert (=> start!4726 m!29545))

(declare-fun m!29547 () Bool)

(assert (=> b!36644 m!29547))

(push 1)

(assert (not b!36645))

(assert (not b_next!1315))

(assert b_and!2169)

(assert (not start!4726))

(assert (not b!36644))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2169)

(assert (not b_next!1315))

(check-sat)

