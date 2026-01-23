; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!491904 () Bool)

(assert start!491904)

(declare-fun b!4785131 () Bool)

(declare-fun res!2032506 () Bool)

(declare-fun e!2987627 () Bool)

(assert (=> b!4785131 (=> (not res!2032506) (not e!2987627))))

(declare-datatypes ((K!15622 0))(
  ( (K!15623 (val!20803 Int)) )
))
(declare-datatypes ((V!15868 0))(
  ( (V!15869 (val!20804 Int)) )
))
(declare-datatypes ((tuple2!56580 0))(
  ( (tuple2!56581 (_1!31584 K!15622) (_2!31584 V!15868)) )
))
(declare-datatypes ((List!54183 0))(
  ( (Nil!54059) (Cons!54059 (h!60479 tuple2!56580) (t!361633 List!54183)) )
))
(declare-datatypes ((tuple2!56582 0))(
  ( (tuple2!56583 (_1!31585 (_ BitVec 64)) (_2!31585 List!54183)) )
))
(declare-datatypes ((List!54184 0))(
  ( (Nil!54060) (Cons!54060 (h!60480 tuple2!56582) (t!361634 List!54184)) )
))
(declare-datatypes ((ListLongMap!5207 0))(
  ( (ListLongMap!5208 (toList!6785 List!54184)) )
))
(declare-fun lm!2473 () ListLongMap!5207)

(declare-fun key!5896 () K!15622)

(declare-datatypes ((ListMap!6257 0))(
  ( (ListMap!6258 (toList!6786 List!54183)) )
))
(declare-fun contains!17628 (ListMap!6257 K!15622) Bool)

(declare-fun extractMap!2380 (List!54184) ListMap!6257)

(assert (=> b!4785131 (= res!2032506 (contains!17628 (extractMap!2380 (toList!6785 lm!2473)) key!5896))))

(declare-fun res!2032503 () Bool)

(assert (=> start!491904 (=> (not res!2032503) (not e!2987627))))

(declare-fun lambda!229080 () Int)

(declare-fun forall!12153 (List!54184 Int) Bool)

(assert (=> start!491904 (= res!2032503 (forall!12153 (toList!6785 lm!2473) lambda!229080))))

(assert (=> start!491904 e!2987627))

(declare-fun e!2987628 () Bool)

(declare-fun inv!69649 (ListLongMap!5207) Bool)

(assert (=> start!491904 (and (inv!69649 lm!2473) e!2987628)))

(assert (=> start!491904 true))

(declare-fun tp_is_empty!33301 () Bool)

(assert (=> start!491904 tp_is_empty!33301))

(declare-fun b!4785132 () Bool)

(declare-fun res!2032505 () Bool)

(assert (=> b!4785132 (=> (not res!2032505) (not e!2987627))))

(declare-datatypes ((Hashable!6853 0))(
  ( (HashableExt!6852 (__x!32876 Int)) )
))
(declare-fun hashF!1559 () Hashable!6853)

(declare-fun allKeysSameHashInMap!2258 (ListLongMap!5207 Hashable!6853) Bool)

(assert (=> b!4785132 (= res!2032505 (allKeysSameHashInMap!2258 lm!2473 hashF!1559))))

(declare-fun b!4785133 () Bool)

(assert (=> b!4785133 (= e!2987627 (not true))))

(declare-fun containsKeyBiggerList!503 (List!54184 K!15622) Bool)

(assert (=> b!4785133 (containsKeyBiggerList!503 (toList!6785 lm!2473) key!5896)))

(declare-datatypes ((Unit!139461 0))(
  ( (Unit!139462) )
))
(declare-fun lt!1946911 () Unit!139461)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!243 (ListLongMap!5207 K!15622 Hashable!6853) Unit!139461)

(assert (=> b!4785133 (= lt!1946911 (lemmaInLongMapThenContainsKeyBiggerList!243 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2987629 () Bool)

(assert (=> b!4785133 e!2987629))

(declare-fun res!2032504 () Bool)

(assert (=> b!4785133 (=> (not res!2032504) (not e!2987629))))

(declare-fun lt!1946910 () (_ BitVec 64))

(declare-fun contains!17629 (ListLongMap!5207 (_ BitVec 64)) Bool)

(assert (=> b!4785133 (= res!2032504 (contains!17629 lm!2473 lt!1946910))))

(declare-fun hash!4869 (Hashable!6853 K!15622) (_ BitVec 64))

(assert (=> b!4785133 (= lt!1946910 (hash!4869 hashF!1559 key!5896))))

(declare-fun lt!1946912 () Unit!139461)

(declare-fun lemmaInGenericMapThenInLongMap!257 (ListLongMap!5207 K!15622 Hashable!6853) Unit!139461)

(assert (=> b!4785133 (= lt!1946912 (lemmaInGenericMapThenInLongMap!257 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4785134 () Bool)

(declare-fun tp!1357621 () Bool)

(assert (=> b!4785134 (= e!2987628 tp!1357621)))

(declare-fun b!4785135 () Bool)

(declare-datatypes ((Option!12985 0))(
  ( (None!12984) (Some!12984 (v!48233 tuple2!56580)) )
))
(declare-fun isDefined!10128 (Option!12985) Bool)

(declare-fun getPair!825 (List!54183 K!15622) Option!12985)

(declare-fun apply!12908 (ListLongMap!5207 (_ BitVec 64)) List!54183)

(assert (=> b!4785135 (= e!2987629 (isDefined!10128 (getPair!825 (apply!12908 lm!2473 lt!1946910) key!5896)))))

(assert (= (and start!491904 res!2032503) b!4785132))

(assert (= (and b!4785132 res!2032505) b!4785131))

(assert (= (and b!4785131 res!2032506) b!4785133))

(assert (= (and b!4785133 res!2032504) b!4785135))

(assert (= start!491904 b!4785134))

(declare-fun m!5764114 () Bool)

(assert (=> b!4785133 m!5764114))

(declare-fun m!5764116 () Bool)

(assert (=> b!4785133 m!5764116))

(declare-fun m!5764118 () Bool)

(assert (=> b!4785133 m!5764118))

(declare-fun m!5764120 () Bool)

(assert (=> b!4785133 m!5764120))

(declare-fun m!5764122 () Bool)

(assert (=> b!4785133 m!5764122))

(declare-fun m!5764124 () Bool)

(assert (=> b!4785131 m!5764124))

(assert (=> b!4785131 m!5764124))

(declare-fun m!5764126 () Bool)

(assert (=> b!4785131 m!5764126))

(declare-fun m!5764128 () Bool)

(assert (=> b!4785132 m!5764128))

(declare-fun m!5764130 () Bool)

(assert (=> b!4785135 m!5764130))

(assert (=> b!4785135 m!5764130))

(declare-fun m!5764132 () Bool)

(assert (=> b!4785135 m!5764132))

(assert (=> b!4785135 m!5764132))

(declare-fun m!5764134 () Bool)

(assert (=> b!4785135 m!5764134))

(declare-fun m!5764136 () Bool)

(assert (=> start!491904 m!5764136))

(declare-fun m!5764138 () Bool)

(assert (=> start!491904 m!5764138))

(push 1)

(assert (not b!4785134))

(assert (not b!4785133))

(assert (not b!4785135))

(assert tp_is_empty!33301)

(assert (not start!491904))

(assert (not b!4785132))

(assert (not b!4785131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

