; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4720 () Bool)

(assert start!4720)

(declare-fun b_free!1309 () Bool)

(declare-fun b_next!1309 () Bool)

(assert (=> start!4720 (= b_free!1309 (not b_next!1309))))

(declare-fun tp!5390 () Bool)

(declare-fun b_and!2157 () Bool)

(assert (=> start!4720 (= tp!5390 b_and!2157)))

(declare-fun b!36591 () Bool)

(declare-fun res!22133 () Bool)

(declare-fun e!23121 () Bool)

(assert (=> b!36591 (=> (not res!22133) (not e!23121))))

(declare-datatypes ((B!716 0))(
  ( (B!717 (val!858 Int)) )
))
(declare-datatypes ((tuple2!1380 0))(
  ( (tuple2!1381 (_1!700 (_ BitVec 64)) (_2!700 B!716)) )
))
(declare-datatypes ((List!978 0))(
  ( (Nil!975) (Cons!974 (h!1542 tuple2!1380) (t!3707 List!978)) )
))
(declare-datatypes ((ListLongMap!961 0))(
  ( (ListLongMap!962 (toList!496 List!978)) )
))
(declare-fun lm!252 () ListLongMap!961)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!444 (ListLongMap!961 (_ BitVec 64)) Bool)

(assert (=> b!36591 (= res!22133 (contains!444 lm!252 k!388))))

(declare-fun b!36592 () Bool)

(declare-fun res!22136 () Bool)

(assert (=> b!36592 (=> (not res!22136) (not e!23121))))

(declare-fun isEmpty!188 (ListLongMap!961) Bool)

(assert (=> b!36592 (= res!22136 (not (isEmpty!188 lm!252)))))

(declare-fun b!36594 () Bool)

(declare-fun e!23120 () Bool)

(assert (=> b!36594 (= e!23120 (not true))))

(declare-fun p!304 () Int)

(declare-fun lt!13534 () ListLongMap!961)

(declare-fun dynLambda!163 (Int tuple2!1380) Bool)

(declare-fun apply!43 (ListLongMap!961 (_ BitVec 64)) B!716)

(assert (=> b!36594 (dynLambda!163 p!304 (tuple2!1381 k!388 (apply!43 lt!13534 k!388)))))

(declare-datatypes ((Unit!807 0))(
  ( (Unit!808) )
))
(declare-fun lt!13533 () Unit!807)

(declare-fun applyForall!2 (ListLongMap!961 Int (_ BitVec 64)) Unit!807)

(assert (=> b!36594 (= lt!13533 (applyForall!2 lt!13534 p!304 k!388))))

(declare-fun b!36595 () Bool)

(declare-fun res!22135 () Bool)

(assert (=> b!36595 (=> (not res!22135) (not e!23121))))

(declare-fun head!836 (List!978) tuple2!1380)

(assert (=> b!36595 (= res!22135 (not (= (_1!700 (head!836 (toList!496 lm!252))) k!388)))))

(declare-fun res!22138 () Bool)

(assert (=> start!4720 (=> (not res!22138) (not e!23121))))

(declare-fun forall!158 (List!978 Int) Bool)

(assert (=> start!4720 (= res!22138 (forall!158 (toList!496 lm!252) p!304))))

(assert (=> start!4720 e!23121))

(declare-fun e!23119 () Bool)

(declare-fun inv!1598 (ListLongMap!961) Bool)

(assert (=> start!4720 (and (inv!1598 lm!252) e!23119)))

(assert (=> start!4720 tp!5390))

(assert (=> start!4720 true))

(declare-fun b!36593 () Bool)

(declare-fun res!22134 () Bool)

(assert (=> b!36593 (=> (not res!22134) (not e!23120))))

(assert (=> b!36593 (= res!22134 (contains!444 lt!13534 k!388))))

(declare-fun b!36596 () Bool)

(assert (=> b!36596 (= e!23121 e!23120)))

(declare-fun res!22137 () Bool)

(assert (=> b!36596 (=> (not res!22137) (not e!23120))))

(assert (=> b!36596 (= res!22137 (forall!158 (toList!496 lt!13534) p!304))))

(declare-fun tail!89 (ListLongMap!961) ListLongMap!961)

(assert (=> b!36596 (= lt!13534 (tail!89 lm!252))))

(declare-fun b!36597 () Bool)

(declare-fun tp!5389 () Bool)

(assert (=> b!36597 (= e!23119 tp!5389)))

(assert (= (and start!4720 res!22138) b!36591))

(assert (= (and b!36591 res!22133) b!36592))

(assert (= (and b!36592 res!22136) b!36595))

(assert (= (and b!36595 res!22135) b!36596))

(assert (= (and b!36596 res!22137) b!36593))

(assert (= (and b!36593 res!22134) b!36594))

(assert (= start!4720 b!36597))

(declare-fun b_lambda!1771 () Bool)

(assert (=> (not b_lambda!1771) (not b!36594)))

(declare-fun t!3706 () Bool)

(declare-fun tb!715 () Bool)

(assert (=> (and start!4720 (= p!304 p!304) t!3706) tb!715))

(declare-fun result!1233 () Bool)

(assert (=> tb!715 (= result!1233 true)))

(assert (=> b!36594 t!3706))

(declare-fun b_and!2159 () Bool)

(assert (= b_and!2157 (and (=> t!3706 result!1233) b_and!2159)))

(declare-fun m!29477 () Bool)

(assert (=> b!36596 m!29477))

(declare-fun m!29479 () Bool)

(assert (=> b!36596 m!29479))

(declare-fun m!29481 () Bool)

(assert (=> b!36592 m!29481))

(declare-fun m!29483 () Bool)

(assert (=> b!36595 m!29483))

(declare-fun m!29485 () Bool)

(assert (=> b!36594 m!29485))

(declare-fun m!29487 () Bool)

(assert (=> b!36594 m!29487))

(declare-fun m!29489 () Bool)

(assert (=> b!36594 m!29489))

(declare-fun m!29491 () Bool)

(assert (=> b!36593 m!29491))

(declare-fun m!29493 () Bool)

(assert (=> start!4720 m!29493))

(declare-fun m!29495 () Bool)

(assert (=> start!4720 m!29495))

(declare-fun m!29497 () Bool)

(assert (=> b!36591 m!29497))

(push 1)

