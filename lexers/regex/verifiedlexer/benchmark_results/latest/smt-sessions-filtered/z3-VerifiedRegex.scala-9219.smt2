; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489494 () Bool)

(assert start!489494)

(declare-fun bs!1150544 () Bool)

(declare-fun b!4775514 () Bool)

(assert (= bs!1150544 (and b!4775514 start!489494)))

(declare-fun lambda!226565 () Int)

(declare-fun lambda!226564 () Int)

(assert (=> bs!1150544 (not (= lambda!226565 lambda!226564))))

(assert (=> b!4775514 true))

(declare-fun e!2981300 () Bool)

(declare-fun e!2981302 () Bool)

(assert (=> b!4775514 (= e!2981300 e!2981302)))

(declare-fun res!2026437 () Bool)

(assert (=> b!4775514 (=> res!2026437 e!2981302)))

(declare-datatypes ((K!15384 0))(
  ( (K!15385 (val!20613 Int)) )
))
(declare-datatypes ((V!15630 0))(
  ( (V!15631 (val!20614 Int)) )
))
(declare-datatypes ((tuple2!56200 0))(
  ( (tuple2!56201 (_1!31394 K!15384) (_2!31394 V!15630)) )
))
(declare-datatypes ((List!53963 0))(
  ( (Nil!53839) (Cons!53839 (h!60253 tuple2!56200) (t!361413 List!53963)) )
))
(declare-datatypes ((tuple2!56202 0))(
  ( (tuple2!56203 (_1!31395 (_ BitVec 64)) (_2!31395 List!53963)) )
))
(declare-datatypes ((List!53964 0))(
  ( (Nil!53840) (Cons!53840 (h!60254 tuple2!56202) (t!361414 List!53964)) )
))
(declare-datatypes ((ListLongMap!5017 0))(
  ( (ListLongMap!5018 (toList!6599 List!53964)) )
))
(declare-fun lm!2709 () ListLongMap!5017)

(declare-fun key!6641 () K!15384)

(declare-fun containsKey!3733 (List!53963 K!15384) Bool)

(assert (=> b!4775514 (= res!2026437 (containsKey!3733 (_2!31395 (h!60254 (toList!6599 lm!2709))) key!6641))))

(declare-datatypes ((Unit!138834 0))(
  ( (Unit!138835) )
))
(declare-fun lt!1938500 () Unit!138834)

(declare-fun forallContained!3983 (List!53964 Int tuple2!56202) Unit!138834)

(assert (=> b!4775514 (= lt!1938500 (forallContained!3983 (toList!6599 lm!2709) lambda!226565 (h!60254 (toList!6599 lm!2709))))))

(declare-fun b!4775515 () Bool)

(declare-fun res!2026435 () Bool)

(declare-fun e!2981299 () Bool)

(assert (=> b!4775515 (=> (not res!2026435) (not e!2981299))))

(declare-fun containsKeyBiggerList!414 (List!53964 K!15384) Bool)

(assert (=> b!4775515 (= res!2026435 (containsKeyBiggerList!414 (toList!6599 lm!2709) key!6641))))

(declare-fun b!4775516 () Bool)

(assert (=> b!4775516 (= e!2981299 (not e!2981300))))

(declare-fun res!2026434 () Bool)

(assert (=> b!4775516 (=> res!2026434 e!2981300)))

(declare-datatypes ((Option!12847 0))(
  ( (None!12846) (Some!12846 (v!48007 tuple2!56200)) )
))
(declare-fun lt!1938506 () Option!12847)

(declare-fun v!11584 () V!15630)

(declare-fun get!18254 (Option!12847) tuple2!56200)

(assert (=> b!4775516 (= res!2026434 (not (= (_2!31394 (get!18254 lt!1938506)) v!11584)))))

(declare-fun isDefined!9991 (Option!12847) Bool)

(assert (=> b!4775516 (isDefined!9991 lt!1938506)))

(declare-fun lt!1938503 () List!53963)

(declare-fun getPair!746 (List!53963 K!15384) Option!12847)

(assert (=> b!4775516 (= lt!1938506 (getPair!746 lt!1938503 key!6641))))

(declare-fun lt!1938505 () tuple2!56202)

(declare-fun lt!1938508 () Unit!138834)

(assert (=> b!4775516 (= lt!1938508 (forallContained!3983 (toList!6599 lm!2709) lambda!226564 lt!1938505))))

(declare-datatypes ((Hashable!6758 0))(
  ( (HashableExt!6757 (__x!32781 Int)) )
))
(declare-fun hashF!1687 () Hashable!6758)

(declare-fun lt!1938501 () Unit!138834)

(declare-fun lemmaInGenMapThenGetPairDefined!520 (ListLongMap!5017 K!15384 Hashable!6758) Unit!138834)

(assert (=> b!4775516 (= lt!1938501 (lemmaInGenMapThenGetPairDefined!520 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938507 () Unit!138834)

(assert (=> b!4775516 (= lt!1938507 (forallContained!3983 (toList!6599 lm!2709) lambda!226564 lt!1938505))))

(declare-fun contains!17310 (List!53964 tuple2!56202) Bool)

(assert (=> b!4775516 (contains!17310 (toList!6599 lm!2709) lt!1938505)))

(declare-fun lt!1938499 () (_ BitVec 64))

(assert (=> b!4775516 (= lt!1938505 (tuple2!56203 lt!1938499 lt!1938503))))

(declare-fun lt!1938509 () Unit!138834)

(declare-fun lemmaGetValueImpliesTupleContained!549 (ListLongMap!5017 (_ BitVec 64) List!53963) Unit!138834)

(assert (=> b!4775516 (= lt!1938509 (lemmaGetValueImpliesTupleContained!549 lm!2709 lt!1938499 lt!1938503))))

(declare-fun apply!12821 (ListLongMap!5017 (_ BitVec 64)) List!53963)

(assert (=> b!4775516 (= lt!1938503 (apply!12821 lm!2709 lt!1938499))))

(declare-fun contains!17311 (ListLongMap!5017 (_ BitVec 64)) Bool)

(assert (=> b!4775516 (contains!17311 lm!2709 lt!1938499)))

(declare-fun hash!4730 (Hashable!6758 K!15384) (_ BitVec 64))

(assert (=> b!4775516 (= lt!1938499 (hash!4730 hashF!1687 key!6641))))

(declare-fun lt!1938502 () Unit!138834)

(declare-fun lemmaInGenMapThenLongMapContainsHash!962 (ListLongMap!5017 K!15384 Hashable!6758) Unit!138834)

(assert (=> b!4775516 (= lt!1938502 (lemmaInGenMapThenLongMapContainsHash!962 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6075 0))(
  ( (ListMap!6076 (toList!6600 List!53963)) )
))
(declare-fun contains!17312 (ListMap!6075 K!15384) Bool)

(declare-fun extractMap!2289 (List!53964) ListMap!6075)

(assert (=> b!4775516 (contains!17312 (extractMap!2289 (toList!6599 lm!2709)) key!6641)))

(declare-fun lt!1938504 () Unit!138834)

(declare-fun lemmaListContainsThenExtractedMapContains!610 (ListLongMap!5017 K!15384 Hashable!6758) Unit!138834)

(assert (=> b!4775516 (= lt!1938504 (lemmaListContainsThenExtractedMapContains!610 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775517 () Bool)

(declare-fun res!2026431 () Bool)

(assert (=> b!4775517 (=> res!2026431 e!2981300)))

(get-info :version)

(assert (=> b!4775517 (= res!2026431 (or (not ((_ is Cons!53840) (toList!6599 lm!2709))) (not (= (_1!31395 (h!60254 (toList!6599 lm!2709))) lt!1938499))))))

(declare-fun res!2026433 () Bool)

(assert (=> start!489494 (=> (not res!2026433) (not e!2981299))))

(declare-fun forall!12026 (List!53964 Int) Bool)

(assert (=> start!489494 (= res!2026433 (forall!12026 (toList!6599 lm!2709) lambda!226564))))

(assert (=> start!489494 e!2981299))

(declare-fun e!2981301 () Bool)

(declare-fun inv!69410 (ListLongMap!5017) Bool)

(assert (=> start!489494 (and (inv!69410 lm!2709) e!2981301)))

(assert (=> start!489494 true))

(declare-fun tp_is_empty!32961 () Bool)

(assert (=> start!489494 tp_is_empty!32961))

(declare-fun tp_is_empty!32963 () Bool)

(assert (=> start!489494 tp_is_empty!32963))

(declare-fun b!4775518 () Bool)

(declare-fun res!2026432 () Bool)

(assert (=> b!4775518 (=> res!2026432 e!2981302)))

(assert (=> b!4775518 (= res!2026432 (containsKey!3733 lt!1938503 key!6641))))

(declare-fun b!4775519 () Bool)

(declare-fun res!2026438 () Bool)

(assert (=> b!4775519 (=> (not res!2026438) (not e!2981299))))

(declare-fun allKeysSameHashInMap!2163 (ListLongMap!5017 Hashable!6758) Bool)

(assert (=> b!4775519 (= res!2026438 (allKeysSameHashInMap!2163 lm!2709 hashF!1687))))

(declare-fun b!4775520 () Bool)

(declare-fun res!2026436 () Bool)

(assert (=> b!4775520 (=> res!2026436 e!2981302)))

(assert (=> b!4775520 (= res!2026436 (not (forall!12026 (toList!6599 lm!2709) lambda!226564)))))

(declare-fun b!4775521 () Bool)

(declare-fun tp!1357068 () Bool)

(assert (=> b!4775521 (= e!2981301 tp!1357068)))

(declare-fun b!4775522 () Bool)

(assert (=> b!4775522 (= e!2981302 true)))

(assert (= (and start!489494 res!2026433) b!4775519))

(assert (= (and b!4775519 res!2026438) b!4775515))

(assert (= (and b!4775515 res!2026435) b!4775516))

(assert (= (and b!4775516 (not res!2026434)) b!4775517))

(assert (= (and b!4775517 (not res!2026431)) b!4775514))

(assert (= (and b!4775514 (not res!2026437)) b!4775520))

(assert (= (and b!4775520 (not res!2026436)) b!4775518))

(assert (= (and b!4775518 (not res!2026432)) b!4775522))

(assert (= start!489494 b!4775521))

(declare-fun m!5749950 () Bool)

(assert (=> b!4775515 m!5749950))

(declare-fun m!5749952 () Bool)

(assert (=> b!4775520 m!5749952))

(declare-fun m!5749954 () Bool)

(assert (=> b!4775514 m!5749954))

(declare-fun m!5749956 () Bool)

(assert (=> b!4775514 m!5749956))

(declare-fun m!5749958 () Bool)

(assert (=> b!4775516 m!5749958))

(declare-fun m!5749960 () Bool)

(assert (=> b!4775516 m!5749960))

(declare-fun m!5749962 () Bool)

(assert (=> b!4775516 m!5749962))

(declare-fun m!5749964 () Bool)

(assert (=> b!4775516 m!5749964))

(declare-fun m!5749966 () Bool)

(assert (=> b!4775516 m!5749966))

(declare-fun m!5749968 () Bool)

(assert (=> b!4775516 m!5749968))

(declare-fun m!5749970 () Bool)

(assert (=> b!4775516 m!5749970))

(declare-fun m!5749972 () Bool)

(assert (=> b!4775516 m!5749972))

(declare-fun m!5749974 () Bool)

(assert (=> b!4775516 m!5749974))

(declare-fun m!5749976 () Bool)

(assert (=> b!4775516 m!5749976))

(declare-fun m!5749978 () Bool)

(assert (=> b!4775516 m!5749978))

(declare-fun m!5749980 () Bool)

(assert (=> b!4775516 m!5749980))

(declare-fun m!5749982 () Bool)

(assert (=> b!4775516 m!5749982))

(assert (=> b!4775516 m!5749974))

(assert (=> b!4775516 m!5749968))

(declare-fun m!5749984 () Bool)

(assert (=> b!4775516 m!5749984))

(declare-fun m!5749986 () Bool)

(assert (=> b!4775518 m!5749986))

(assert (=> start!489494 m!5749952))

(declare-fun m!5749988 () Bool)

(assert (=> start!489494 m!5749988))

(declare-fun m!5749990 () Bool)

(assert (=> b!4775519 m!5749990))

(check-sat (not b!4775516) (not b!4775518) (not b!4775520) (not b!4775515) (not b!4775514) (not start!489494) (not b!4775521) (not b!4775519) tp_is_empty!32963 tp_is_empty!32961)
(check-sat)
