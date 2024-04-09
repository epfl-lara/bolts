; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4718 () Bool)

(assert start!4718)

(declare-fun b_free!1307 () Bool)

(declare-fun b_next!1307 () Bool)

(assert (=> start!4718 (= b_free!1307 (not b_next!1307))))

(declare-fun tp!5384 () Bool)

(declare-fun b_and!2155 () Bool)

(assert (=> start!4718 (= tp!5384 b_and!2155)))

(declare-fun b!36571 () Bool)

(declare-fun res!22120 () Bool)

(declare-fun e!23112 () Bool)

(assert (=> b!36571 (=> (not res!22120) (not e!23112))))

(declare-datatypes ((B!714 0))(
  ( (B!715 (val!857 Int)) )
))
(declare-datatypes ((tuple2!1378 0))(
  ( (tuple2!1379 (_1!699 (_ BitVec 64)) (_2!699 B!714)) )
))
(declare-datatypes ((List!977 0))(
  ( (Nil!974) (Cons!973 (h!1541 tuple2!1378) (t!3704 List!977)) )
))
(declare-datatypes ((ListLongMap!959 0))(
  ( (ListLongMap!960 (toList!495 List!977)) )
))
(declare-fun lm!252 () ListLongMap!959)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun head!835 (List!977) tuple2!1378)

(assert (=> b!36571 (= res!22120 (not (= (_1!699 (head!835 (toList!495 lm!252))) k!388)))))

(declare-fun b!36572 () Bool)

(declare-fun res!22119 () Bool)

(assert (=> b!36572 (=> (not res!22119) (not e!23112))))

(declare-fun contains!443 (ListLongMap!959 (_ BitVec 64)) Bool)

(assert (=> b!36572 (= res!22119 (contains!443 lm!252 k!388))))

(declare-fun b!36573 () Bool)

(declare-fun e!23110 () Bool)

(assert (=> b!36573 (= e!23112 e!23110)))

(declare-fun res!22117 () Bool)

(assert (=> b!36573 (=> (not res!22117) (not e!23110))))

(declare-fun lt!13527 () ListLongMap!959)

(declare-fun p!304 () Int)

(declare-fun forall!157 (List!977 Int) Bool)

(assert (=> b!36573 (= res!22117 (forall!157 (toList!495 lt!13527) p!304))))

(declare-fun tail!88 (ListLongMap!959) ListLongMap!959)

(assert (=> b!36573 (= lt!13527 (tail!88 lm!252))))

(declare-fun res!22116 () Bool)

(assert (=> start!4718 (=> (not res!22116) (not e!23112))))

(assert (=> start!4718 (= res!22116 (forall!157 (toList!495 lm!252) p!304))))

(assert (=> start!4718 e!23112))

(declare-fun e!23111 () Bool)

(declare-fun inv!1592 (ListLongMap!959) Bool)

(assert (=> start!4718 (and (inv!1592 lm!252) e!23111)))

(assert (=> start!4718 tp!5384))

(assert (=> start!4718 true))

(declare-fun b!36574 () Bool)

(declare-fun res!22118 () Bool)

(assert (=> b!36574 (=> (not res!22118) (not e!23112))))

(declare-fun isEmpty!187 (ListLongMap!959) Bool)

(assert (=> b!36574 (= res!22118 (not (isEmpty!187 lm!252)))))

(declare-fun b!36575 () Bool)

(declare-fun tp!5383 () Bool)

(assert (=> b!36575 (= e!23111 tp!5383)))

(declare-fun b!36576 () Bool)

(assert (=> b!36576 (= e!23110 false)))

(declare-fun lt!13528 () Bool)

(assert (=> b!36576 (= lt!13528 (contains!443 lt!13527 k!388))))

(assert (= (and start!4718 res!22116) b!36572))

(assert (= (and b!36572 res!22119) b!36574))

(assert (= (and b!36574 res!22118) b!36571))

(assert (= (and b!36571 res!22120) b!36573))

(assert (= (and b!36573 res!22117) b!36576))

(assert (= start!4718 b!36575))

(declare-fun m!29461 () Bool)

(assert (=> b!36571 m!29461))

(declare-fun m!29463 () Bool)

(assert (=> b!36573 m!29463))

(declare-fun m!29465 () Bool)

(assert (=> b!36573 m!29465))

(declare-fun m!29467 () Bool)

(assert (=> b!36572 m!29467))

(declare-fun m!29469 () Bool)

(assert (=> start!4718 m!29469))

(declare-fun m!29471 () Bool)

(assert (=> start!4718 m!29471))

(declare-fun m!29473 () Bool)

(assert (=> b!36576 m!29473))

(declare-fun m!29475 () Bool)

(assert (=> b!36574 m!29475))

(push 1)

(assert (not b!36571))

(assert b_and!2155)

(assert (not b!36573))

(assert (not b!36572))

(assert (not b_next!1307))

(assert (not b!36574))

(assert (not start!4718))

