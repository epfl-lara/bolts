; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489764 () Bool)

(assert start!489764)

(declare-fun b!4776955 () Bool)

(declare-fun res!2027492 () Bool)

(declare-fun e!2982142 () Bool)

(assert (=> b!4776955 (=> (not res!2027492) (not e!2982142))))

(declare-datatypes ((K!15457 0))(
  ( (K!15458 (val!20671 Int)) )
))
(declare-datatypes ((V!15703 0))(
  ( (V!15704 (val!20672 Int)) )
))
(declare-datatypes ((tuple2!56316 0))(
  ( (tuple2!56317 (_1!31452 K!15457) (_2!31452 V!15703)) )
))
(declare-datatypes ((List!54023 0))(
  ( (Nil!53899) (Cons!53899 (h!60313 tuple2!56316) (t!361473 List!54023)) )
))
(declare-datatypes ((tuple2!56318 0))(
  ( (tuple2!56319 (_1!31453 (_ BitVec 64)) (_2!31453 List!54023)) )
))
(declare-datatypes ((List!54024 0))(
  ( (Nil!53900) (Cons!53900 (h!60314 tuple2!56318) (t!361474 List!54024)) )
))
(declare-datatypes ((ListLongMap!5075 0))(
  ( (ListLongMap!5076 (toList!6657 List!54024)) )
))
(declare-fun lm!2709 () ListLongMap!5075)

(declare-datatypes ((Hashable!6787 0))(
  ( (HashableExt!6786 (__x!32810 Int)) )
))
(declare-fun hashF!1687 () Hashable!6787)

(declare-fun allKeysSameHashInMap!2192 (ListLongMap!5075 Hashable!6787) Bool)

(assert (=> b!4776955 (= res!2027492 (allKeysSameHashInMap!2192 lm!2709 hashF!1687))))

(declare-fun b!4776956 () Bool)

(declare-fun e!2982143 () Bool)

(declare-fun tp!1357177 () Bool)

(assert (=> b!4776956 (= e!2982143 tp!1357177)))

(declare-fun b!4776957 () Bool)

(declare-fun e!2982141 () Bool)

(declare-fun lambda!227060 () Int)

(declare-fun forall!12059 (List!54024 Int) Bool)

(assert (=> b!4776957 (= e!2982141 (forall!12059 (toList!6657 lm!2709) lambda!227060))))

(declare-fun res!2027491 () Bool)

(assert (=> start!489764 (=> (not res!2027491) (not e!2982142))))

(assert (=> start!489764 (= res!2027491 (forall!12059 (toList!6657 lm!2709) lambda!227060))))

(assert (=> start!489764 e!2982142))

(declare-fun inv!69484 (ListLongMap!5075) Bool)

(assert (=> start!489764 (and (inv!69484 lm!2709) e!2982143)))

(assert (=> start!489764 true))

(declare-fun tp_is_empty!33077 () Bool)

(assert (=> start!489764 tp_is_empty!33077))

(declare-fun tp_is_empty!33079 () Bool)

(assert (=> start!489764 tp_is_empty!33079))

(declare-fun b!4776958 () Bool)

(assert (=> b!4776958 (= e!2982142 (not e!2982141))))

(declare-fun res!2027493 () Bool)

(assert (=> b!4776958 (=> res!2027493 e!2982141)))

(declare-datatypes ((Option!12880 0))(
  ( (None!12879) (Some!12879 (v!48048 tuple2!56316)) )
))
(declare-fun lt!1940279 () Option!12880)

(declare-fun v!11584 () V!15703)

(declare-fun get!18300 (Option!12880) tuple2!56316)

(assert (=> b!4776958 (= res!2027493 (not (= (_2!31452 (get!18300 lt!1940279)) v!11584)))))

(declare-fun isDefined!10024 (Option!12880) Bool)

(assert (=> b!4776958 (isDefined!10024 lt!1940279)))

(declare-fun lt!1940277 () List!54023)

(declare-fun key!6641 () K!15457)

(declare-fun getPair!775 (List!54023 K!15457) Option!12880)

(assert (=> b!4776958 (= lt!1940279 (getPair!775 lt!1940277 key!6641))))

(declare-datatypes ((Unit!138932 0))(
  ( (Unit!138933) )
))
(declare-fun lt!1940276 () Unit!138932)

(declare-fun lt!1940274 () tuple2!56318)

(declare-fun forallContained!4016 (List!54024 Int tuple2!56318) Unit!138932)

(assert (=> b!4776958 (= lt!1940276 (forallContained!4016 (toList!6657 lm!2709) lambda!227060 lt!1940274))))

(declare-fun lt!1940278 () Unit!138932)

(declare-fun lemmaInGenMapThenGetPairDefined!549 (ListLongMap!5075 K!15457 Hashable!6787) Unit!138932)

(assert (=> b!4776958 (= lt!1940278 (lemmaInGenMapThenGetPairDefined!549 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1940281 () Unit!138932)

(assert (=> b!4776958 (= lt!1940281 (forallContained!4016 (toList!6657 lm!2709) lambda!227060 lt!1940274))))

(declare-fun contains!17401 (List!54024 tuple2!56318) Bool)

(assert (=> b!4776958 (contains!17401 (toList!6657 lm!2709) lt!1940274)))

(declare-fun lt!1940282 () (_ BitVec 64))

(assert (=> b!4776958 (= lt!1940274 (tuple2!56319 lt!1940282 lt!1940277))))

(declare-fun lt!1940283 () Unit!138932)

(declare-fun lemmaGetValueImpliesTupleContained!578 (ListLongMap!5075 (_ BitVec 64) List!54023) Unit!138932)

(assert (=> b!4776958 (= lt!1940283 (lemmaGetValueImpliesTupleContained!578 lm!2709 lt!1940282 lt!1940277))))

(declare-fun apply!12850 (ListLongMap!5075 (_ BitVec 64)) List!54023)

(assert (=> b!4776958 (= lt!1940277 (apply!12850 lm!2709 lt!1940282))))

(declare-fun contains!17402 (ListLongMap!5075 (_ BitVec 64)) Bool)

(assert (=> b!4776958 (contains!17402 lm!2709 lt!1940282)))

(declare-fun hash!4765 (Hashable!6787 K!15457) (_ BitVec 64))

(assert (=> b!4776958 (= lt!1940282 (hash!4765 hashF!1687 key!6641))))

(declare-fun lt!1940280 () Unit!138932)

(declare-fun lemmaInGenMapThenLongMapContainsHash!991 (ListLongMap!5075 K!15457 Hashable!6787) Unit!138932)

(assert (=> b!4776958 (= lt!1940280 (lemmaInGenMapThenLongMapContainsHash!991 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6133 0))(
  ( (ListMap!6134 (toList!6658 List!54023)) )
))
(declare-fun contains!17403 (ListMap!6133 K!15457) Bool)

(declare-fun extractMap!2318 (List!54024) ListMap!6133)

(assert (=> b!4776958 (contains!17403 (extractMap!2318 (toList!6657 lm!2709)) key!6641)))

(declare-fun lt!1940275 () Unit!138932)

(declare-fun lemmaListContainsThenExtractedMapContains!639 (ListLongMap!5075 K!15457 Hashable!6787) Unit!138932)

(assert (=> b!4776958 (= lt!1940275 (lemmaListContainsThenExtractedMapContains!639 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4776959 () Bool)

(declare-fun res!2027489 () Bool)

(assert (=> b!4776959 (=> (not res!2027489) (not e!2982142))))

(declare-fun containsKeyBiggerList!443 (List!54024 K!15457) Bool)

(assert (=> b!4776959 (= res!2027489 (containsKeyBiggerList!443 (toList!6657 lm!2709) key!6641))))

(declare-fun b!4776960 () Bool)

(declare-fun res!2027490 () Bool)

(assert (=> b!4776960 (=> res!2027490 e!2982141)))

(assert (=> b!4776960 (= res!2027490 (or (and (is-Cons!53900 (toList!6657 lm!2709)) (= (_1!31453 (h!60314 (toList!6657 lm!2709))) lt!1940282)) (is-Cons!53900 (toList!6657 lm!2709))))))

(assert (= (and start!489764 res!2027491) b!4776955))

(assert (= (and b!4776955 res!2027492) b!4776959))

(assert (= (and b!4776959 res!2027489) b!4776958))

(assert (= (and b!4776958 (not res!2027493)) b!4776960))

(assert (= (and b!4776960 (not res!2027490)) b!4776957))

(assert (= start!489764 b!4776956))

(declare-fun m!5752428 () Bool)

(assert (=> b!4776955 m!5752428))

(declare-fun m!5752430 () Bool)

(assert (=> start!489764 m!5752430))

(declare-fun m!5752432 () Bool)

(assert (=> start!489764 m!5752432))

(declare-fun m!5752434 () Bool)

(assert (=> b!4776958 m!5752434))

(declare-fun m!5752436 () Bool)

(assert (=> b!4776958 m!5752436))

(declare-fun m!5752438 () Bool)

(assert (=> b!4776958 m!5752438))

(declare-fun m!5752440 () Bool)

(assert (=> b!4776958 m!5752440))

(declare-fun m!5752442 () Bool)

(assert (=> b!4776958 m!5752442))

(assert (=> b!4776958 m!5752434))

(declare-fun m!5752444 () Bool)

(assert (=> b!4776958 m!5752444))

(declare-fun m!5752446 () Bool)

(assert (=> b!4776958 m!5752446))

(declare-fun m!5752448 () Bool)

(assert (=> b!4776958 m!5752448))

(assert (=> b!4776958 m!5752440))

(declare-fun m!5752450 () Bool)

(assert (=> b!4776958 m!5752450))

(declare-fun m!5752452 () Bool)

(assert (=> b!4776958 m!5752452))

(declare-fun m!5752454 () Bool)

(assert (=> b!4776958 m!5752454))

(declare-fun m!5752456 () Bool)

(assert (=> b!4776958 m!5752456))

(declare-fun m!5752458 () Bool)

(assert (=> b!4776958 m!5752458))

(declare-fun m!5752460 () Bool)

(assert (=> b!4776958 m!5752460))

(declare-fun m!5752462 () Bool)

(assert (=> b!4776959 m!5752462))

(assert (=> b!4776957 m!5752430))

(push 1)

(assert (not b!4776958))

(assert (not b!4776957))

(assert (not b!4776959))

(assert tp_is_empty!33077)

(assert tp_is_empty!33079)

(assert (not start!489764))

(assert (not b!4776956))

(assert (not b!4776955))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

