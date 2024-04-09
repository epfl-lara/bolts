; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!158 () Bool)

(assert start!158)

(declare-fun b_free!23 () Bool)

(declare-fun b_next!23 () Bool)

(assert (=> start!158 (= b_free!23 (not b_next!23))))

(declare-fun tp!74 () Bool)

(declare-fun b_and!47 () Bool)

(assert (=> start!158 (= tp!74 b_and!47)))

(declare-fun res!4389 () Bool)

(declare-fun e!333 () Bool)

(assert (=> start!158 (=> (not res!4389) (not e!333))))

(declare-datatypes ((B!258 0))(
  ( (B!259 (val!11 Int)) )
))
(declare-datatypes ((tuple2!22 0))(
  ( (tuple2!23 (_1!11 (_ BitVec 64)) (_2!11 B!258)) )
))
(declare-datatypes ((List!20 0))(
  ( (Nil!17) (Cons!16 (h!582 tuple2!22) (t!2039 List!20)) )
))
(declare-datatypes ((ListLongMap!27 0))(
  ( (ListLongMap!28 (toList!29 List!20)) )
))
(declare-fun lm!258 () ListLongMap!27)

(declare-fun p!318 () Int)

(declare-fun forall!13 (List!20 Int) Bool)

(assert (=> start!158 (= res!4389 (forall!13 (toList!29 lm!258) p!318))))

(assert (=> start!158 e!333))

(declare-fun e!332 () Bool)

(declare-fun inv!41 (ListLongMap!27) Bool)

(assert (=> start!158 (and (inv!41 lm!258) e!332)))

(assert (=> start!158 tp!74))

(assert (=> start!158 true))

(declare-fun b!1803 () Bool)

(declare-fun res!4390 () Bool)

(assert (=> b!1803 (=> (not res!4390) (not e!333))))

(declare-fun isEmpty!18 (ListLongMap!27) Bool)

(assert (=> b!1803 (= res!4390 (not (isEmpty!18 lm!258)))))

(declare-fun b!1806 () Bool)

(declare-fun tp!73 () Bool)

(assert (=> b!1806 (= e!332 tp!73)))

(declare-fun b!1805 () Bool)

(assert (=> b!1805 (= e!333 false)))

(declare-fun lt!305 () Bool)

(declare-fun tail!31 (ListLongMap!27) ListLongMap!27)

(assert (=> b!1805 (= lt!305 (forall!13 (toList!29 (tail!31 lm!258)) p!318))))

(declare-fun b!1804 () Bool)

(declare-fun res!4391 () Bool)

(assert (=> b!1804 (=> (not res!4391) (not e!333))))

(declare-fun k!394 () (_ BitVec 64))

(declare-fun head!745 (List!20) tuple2!22)

(assert (=> b!1804 (= res!4391 (not (= (_1!11 (head!745 (toList!29 lm!258))) k!394)))))

(assert (= (and start!158 res!4389) b!1803))

(assert (= (and b!1803 res!4390) b!1804))

(assert (= (and b!1804 res!4391) b!1805))

(assert (= start!158 b!1806))

(declare-fun m!477 () Bool)

(assert (=> start!158 m!477))

(declare-fun m!479 () Bool)

(assert (=> start!158 m!479))

(declare-fun m!481 () Bool)

(assert (=> b!1803 m!481))

(declare-fun m!483 () Bool)

(assert (=> b!1805 m!483))

(declare-fun m!485 () Bool)

(assert (=> b!1805 m!485))

(declare-fun m!487 () Bool)

(assert (=> b!1804 m!487))

(push 1)

(assert (not b!1805))

(assert (not b!1804))

(assert (not b_next!23))

(assert (not b!1806))

(assert (not start!158))

(assert b_and!47)

(assert (not b!1803))

(check-sat)

(pop 1)

