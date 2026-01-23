; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502774 () Bool)

(assert start!502774)

(declare-fun res!2060357 () Bool)

(declare-fun e!3022099 () Bool)

(assert (=> start!502774 (=> (not res!2060357) (not e!3022099))))

(declare-datatypes ((K!16932 0))(
  ( (K!16933 (val!21851 Int)) )
))
(declare-datatypes ((V!17178 0))(
  ( (V!17179 (val!21852 Int)) )
))
(declare-datatypes ((tuple2!58574 0))(
  ( (tuple2!58575 (_1!32581 K!16932) (_2!32581 V!17178)) )
))
(declare-datatypes ((List!55320 0))(
  ( (Nil!55196) (Cons!55196 (h!61631 tuple2!58574) (t!362816 List!55320)) )
))
(declare-datatypes ((tuple2!58576 0))(
  ( (tuple2!58577 (_1!32582 (_ BitVec 64)) (_2!32582 List!55320)) )
))
(declare-datatypes ((List!55321 0))(
  ( (Nil!55197) (Cons!55197 (h!61632 tuple2!58576) (t!362817 List!55321)) )
))
(declare-datatypes ((ListLongMap!6153 0))(
  ( (ListLongMap!6154 (toList!7631 List!55321)) )
))
(declare-fun lm!1282 () ListLongMap!6153)

(declare-fun lambda!239378 () Int)

(declare-fun forall!12745 (List!55321 Int) Bool)

(assert (=> start!502774 (= res!2060357 (forall!12745 (toList!7631 lm!1282) lambda!239378))))

(assert (=> start!502774 e!3022099))

(declare-fun e!3022102 () Bool)

(declare-fun inv!70833 (ListLongMap!6153) Bool)

(assert (=> start!502774 (and (inv!70833 lm!1282) e!3022102)))

(assert (=> start!502774 true))

(declare-fun tp_is_empty!34789 () Bool)

(assert (=> start!502774 tp_is_empty!34789))

(declare-fun b!4835733 () Bool)

(declare-fun tp!1363389 () Bool)

(assert (=> b!4835733 (= e!3022102 tp!1363389)))

(declare-fun b!4835734 () Bool)

(declare-fun e!3022101 () Bool)

(declare-fun e!3022100 () Bool)

(assert (=> b!4835734 (= e!3022101 (not e!3022100))))

(declare-fun res!2060359 () Bool)

(assert (=> b!4835734 (=> res!2060359 e!3022100)))

(declare-fun lt!1981545 () List!55320)

(declare-fun key!2791 () K!16932)

(declare-datatypes ((Option!13579 0))(
  ( (None!13578) (Some!13578 (v!49281 tuple2!58574)) )
))
(declare-fun isDefined!10689 (Option!13579) Bool)

(declare-fun getPair!1041 (List!55320 K!16932) Option!13579)

(assert (=> b!4835734 (= res!2060359 (not (isDefined!10689 (getPair!1041 lt!1981545 key!2791))))))

(declare-datatypes ((Unit!144580 0))(
  ( (Unit!144581) )
))
(declare-fun lt!1981547 () Unit!144580)

(declare-fun lt!1981549 () tuple2!58576)

(declare-fun forallContained!4464 (List!55321 Int tuple2!58576) Unit!144580)

(assert (=> b!4835734 (= lt!1981547 (forallContained!4464 (toList!7631 lm!1282) lambda!239378 lt!1981549))))

(declare-fun contains!19018 (List!55321 tuple2!58576) Bool)

(assert (=> b!4835734 (contains!19018 (toList!7631 lm!1282) lt!1981549)))

(declare-fun lt!1981546 () (_ BitVec 64))

(assert (=> b!4835734 (= lt!1981549 (tuple2!58577 lt!1981546 lt!1981545))))

(declare-fun lt!1981544 () Unit!144580)

(declare-fun lemmaGetValueImpliesTupleContained!720 (ListLongMap!6153 (_ BitVec 64) List!55320) Unit!144580)

(assert (=> b!4835734 (= lt!1981544 (lemmaGetValueImpliesTupleContained!720 lm!1282 lt!1981546 lt!1981545))))

(declare-fun apply!13408 (ListLongMap!6153 (_ BitVec 64)) List!55320)

(assert (=> b!4835734 (= lt!1981545 (apply!13408 lm!1282 lt!1981546))))

(declare-fun b!4835735 () Bool)

(assert (=> b!4835735 (= e!3022099 e!3022101)))

(declare-fun res!2060360 () Bool)

(assert (=> b!4835735 (=> (not res!2060360) (not e!3022101))))

(declare-fun contains!19019 (ListLongMap!6153 (_ BitVec 64)) Bool)

(assert (=> b!4835735 (= res!2060360 (contains!19019 lm!1282 lt!1981546))))

(declare-datatypes ((Hashable!7345 0))(
  ( (HashableExt!7344 (__x!33620 Int)) )
))
(declare-fun hashF!961 () Hashable!7345)

(declare-fun hash!5533 (Hashable!7345 K!16932) (_ BitVec 64))

(assert (=> b!4835735 (= lt!1981546 (hash!5533 hashF!961 key!2791))))

(declare-fun b!4835736 () Bool)

(declare-fun res!2060358 () Bool)

(assert (=> b!4835736 (=> (not res!2060358) (not e!3022099))))

(declare-fun allKeysSameHashInMap!2661 (ListLongMap!6153 Hashable!7345) Bool)

(assert (=> b!4835736 (= res!2060358 (allKeysSameHashInMap!2661 lm!1282 hashF!961))))

(declare-fun b!4835737 () Bool)

(assert (=> b!4835737 (= e!3022100 true)))

(declare-fun containsKeyBiggerList!629 (List!55321 K!16932) Bool)

(assert (=> b!4835737 (containsKeyBiggerList!629 (toList!7631 lm!1282) key!2791)))

(declare-fun lt!1981548 () Unit!144580)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!369 (ListLongMap!6153 K!16932 Hashable!7345) Unit!144580)

(assert (=> b!4835737 (= lt!1981548 (lemmaInLongMapThenContainsKeyBiggerList!369 lm!1282 key!2791 hashF!961))))

(assert (= (and start!502774 res!2060357) b!4835736))

(assert (= (and b!4835736 res!2060358) b!4835735))

(assert (= (and b!4835735 res!2060360) b!4835734))

(assert (= (and b!4835734 (not res!2060359)) b!4835737))

(assert (= start!502774 b!4835733))

(declare-fun m!5830994 () Bool)

(assert (=> b!4835734 m!5830994))

(declare-fun m!5830996 () Bool)

(assert (=> b!4835734 m!5830996))

(declare-fun m!5830998 () Bool)

(assert (=> b!4835734 m!5830998))

(declare-fun m!5831000 () Bool)

(assert (=> b!4835734 m!5831000))

(declare-fun m!5831002 () Bool)

(assert (=> b!4835734 m!5831002))

(declare-fun m!5831004 () Bool)

(assert (=> b!4835734 m!5831004))

(assert (=> b!4835734 m!5831002))

(declare-fun m!5831006 () Bool)

(assert (=> b!4835737 m!5831006))

(declare-fun m!5831008 () Bool)

(assert (=> b!4835737 m!5831008))

(declare-fun m!5831010 () Bool)

(assert (=> b!4835735 m!5831010))

(declare-fun m!5831012 () Bool)

(assert (=> b!4835735 m!5831012))

(declare-fun m!5831014 () Bool)

(assert (=> b!4835736 m!5831014))

(declare-fun m!5831016 () Bool)

(assert (=> start!502774 m!5831016))

(declare-fun m!5831018 () Bool)

(assert (=> start!502774 m!5831018))

(push 1)

(assert (not start!502774))

(assert tp_is_empty!34789)

(assert (not b!4835736))

(assert (not b!4835734))

(assert (not b!4835737))

(assert (not b!4835735))

(assert (not b!4835733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

