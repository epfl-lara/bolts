; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502672 () Bool)

(assert start!502672)

(declare-fun b!4835292 () Bool)

(declare-fun e!3021762 () Bool)

(declare-fun e!3021758 () Bool)

(assert (=> b!4835292 (= e!3021762 e!3021758)))

(declare-fun res!2060048 () Bool)

(assert (=> b!4835292 (=> res!2060048 e!3021758)))

(declare-datatypes ((K!16887 0))(
  ( (K!16888 (val!21815 Int)) )
))
(declare-datatypes ((V!17133 0))(
  ( (V!17134 (val!21816 Int)) )
))
(declare-datatypes ((tuple2!58502 0))(
  ( (tuple2!58503 (_1!32545 K!16887) (_2!32545 V!17133)) )
))
(declare-datatypes ((List!55284 0))(
  ( (Nil!55160) (Cons!55160 (h!61594 tuple2!58502) (t!362780 List!55284)) )
))
(declare-datatypes ((tuple2!58504 0))(
  ( (tuple2!58505 (_1!32546 (_ BitVec 64)) (_2!32546 List!55284)) )
))
(declare-datatypes ((List!55285 0))(
  ( (Nil!55161) (Cons!55161 (h!61595 tuple2!58504) (t!362781 List!55285)) )
))
(declare-datatypes ((ListLongMap!6117 0))(
  ( (ListLongMap!6118 (toList!7611 List!55285)) )
))
(declare-fun lm!1282 () ListLongMap!6117)

(declare-fun lambda!239259 () Int)

(declare-fun forall!12726 (List!55285 Int) Bool)

(assert (=> b!4835292 (= res!2060048 (not (forall!12726 (toList!7611 lm!1282) lambda!239259)))))

(declare-fun key!2791 () K!16887)

(declare-fun containsKeyBiggerList!621 (List!55285 K!16887) Bool)

(assert (=> b!4835292 (containsKeyBiggerList!621 (toList!7611 lm!1282) key!2791)))

(declare-datatypes ((Hashable!7327 0))(
  ( (HashableExt!7326 (__x!33602 Int)) )
))
(declare-fun hashF!961 () Hashable!7327)

(declare-datatypes ((Unit!144546 0))(
  ( (Unit!144547) )
))
(declare-fun lt!1981252 () Unit!144546)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!361 (ListLongMap!6117 K!16887 Hashable!7327) Unit!144546)

(assert (=> b!4835292 (= lt!1981252 (lemmaInLongMapThenContainsKeyBiggerList!361 lm!1282 key!2791 hashF!961))))

(declare-fun b!4835293 () Bool)

(declare-fun e!3021759 () Bool)

(declare-fun tp!1363309 () Bool)

(assert (=> b!4835293 (= e!3021759 tp!1363309)))

(declare-fun b!4835294 () Bool)

(declare-fun res!2060050 () Bool)

(declare-fun e!3021761 () Bool)

(assert (=> b!4835294 (=> (not res!2060050) (not e!3021761))))

(declare-fun allKeysSameHashInMap!2643 (ListLongMap!6117 Hashable!7327) Bool)

(assert (=> b!4835294 (= res!2060050 (allKeysSameHashInMap!2643 lm!1282 hashF!961))))

(declare-fun res!2060049 () Bool)

(assert (=> start!502672 (=> (not res!2060049) (not e!3021761))))

(assert (=> start!502672 (= res!2060049 (forall!12726 (toList!7611 lm!1282) lambda!239259))))

(assert (=> start!502672 e!3021761))

(declare-fun inv!70788 (ListLongMap!6117) Bool)

(assert (=> start!502672 (and (inv!70788 lm!1282) e!3021759)))

(assert (=> start!502672 true))

(declare-fun tp_is_empty!34749 () Bool)

(assert (=> start!502672 tp_is_empty!34749))

(declare-fun b!4835295 () Bool)

(declare-fun e!3021760 () Bool)

(assert (=> b!4835295 (= e!3021761 e!3021760)))

(declare-fun res!2060052 () Bool)

(assert (=> b!4835295 (=> (not res!2060052) (not e!3021760))))

(declare-fun lt!1981250 () (_ BitVec 64))

(declare-fun contains!18984 (ListLongMap!6117 (_ BitVec 64)) Bool)

(assert (=> b!4835295 (= res!2060052 (contains!18984 lm!1282 lt!1981250))))

(declare-fun hash!5513 (Hashable!7327 K!16887) (_ BitVec 64))

(assert (=> b!4835295 (= lt!1981250 (hash!5513 hashF!961 key!2791))))

(declare-fun b!4835296 () Bool)

(assert (=> b!4835296 (= e!3021758 (forall!12726 (toList!7611 lm!1282) lambda!239259))))

(declare-fun b!4835297 () Bool)

(assert (=> b!4835297 (= e!3021760 (not e!3021762))))

(declare-fun res!2060051 () Bool)

(assert (=> b!4835297 (=> res!2060051 e!3021762)))

(declare-fun lt!1981255 () List!55284)

(declare-datatypes ((Option!13563 0))(
  ( (None!13562) (Some!13562 (v!49265 tuple2!58502)) )
))
(declare-fun isDefined!10673 (Option!13563) Bool)

(declare-fun getPair!1027 (List!55284 K!16887) Option!13563)

(assert (=> b!4835297 (= res!2060051 (not (isDefined!10673 (getPair!1027 lt!1981255 key!2791))))))

(declare-fun lt!1981254 () Unit!144546)

(declare-fun lt!1981253 () tuple2!58504)

(declare-fun forallContained!4450 (List!55285 Int tuple2!58504) Unit!144546)

(assert (=> b!4835297 (= lt!1981254 (forallContained!4450 (toList!7611 lm!1282) lambda!239259 lt!1981253))))

(declare-fun contains!18985 (List!55285 tuple2!58504) Bool)

(assert (=> b!4835297 (contains!18985 (toList!7611 lm!1282) lt!1981253)))

(assert (=> b!4835297 (= lt!1981253 (tuple2!58505 lt!1981250 lt!1981255))))

(declare-fun lt!1981251 () Unit!144546)

(declare-fun lemmaGetValueImpliesTupleContained!706 (ListLongMap!6117 (_ BitVec 64) List!55284) Unit!144546)

(assert (=> b!4835297 (= lt!1981251 (lemmaGetValueImpliesTupleContained!706 lm!1282 lt!1981250 lt!1981255))))

(declare-fun apply!13390 (ListLongMap!6117 (_ BitVec 64)) List!55284)

(assert (=> b!4835297 (= lt!1981255 (apply!13390 lm!1282 lt!1981250))))

(assert (= (and start!502672 res!2060049) b!4835294))

(assert (= (and b!4835294 res!2060050) b!4835295))

(assert (= (and b!4835295 res!2060052) b!4835297))

(assert (= (and b!4835297 (not res!2060051)) b!4835292))

(assert (= (and b!4835292 (not res!2060048)) b!4835296))

(assert (= start!502672 b!4835293))

(declare-fun m!5830460 () Bool)

(assert (=> b!4835296 m!5830460))

(declare-fun m!5830462 () Bool)

(assert (=> b!4835294 m!5830462))

(assert (=> start!502672 m!5830460))

(declare-fun m!5830464 () Bool)

(assert (=> start!502672 m!5830464))

(assert (=> b!4835292 m!5830460))

(declare-fun m!5830466 () Bool)

(assert (=> b!4835292 m!5830466))

(declare-fun m!5830468 () Bool)

(assert (=> b!4835292 m!5830468))

(declare-fun m!5830470 () Bool)

(assert (=> b!4835297 m!5830470))

(declare-fun m!5830472 () Bool)

(assert (=> b!4835297 m!5830472))

(declare-fun m!5830474 () Bool)

(assert (=> b!4835297 m!5830474))

(assert (=> b!4835297 m!5830472))

(declare-fun m!5830476 () Bool)

(assert (=> b!4835297 m!5830476))

(declare-fun m!5830478 () Bool)

(assert (=> b!4835297 m!5830478))

(declare-fun m!5830480 () Bool)

(assert (=> b!4835297 m!5830480))

(declare-fun m!5830482 () Bool)

(assert (=> b!4835295 m!5830482))

(declare-fun m!5830484 () Bool)

(assert (=> b!4835295 m!5830484))

(push 1)

(assert (not b!4835295))

(assert (not b!4835293))

(assert (not start!502672))

(assert (not b!4835292))

(assert (not b!4835294))

(assert tp_is_empty!34749)

(assert (not b!4835297))

(assert (not b!4835296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

