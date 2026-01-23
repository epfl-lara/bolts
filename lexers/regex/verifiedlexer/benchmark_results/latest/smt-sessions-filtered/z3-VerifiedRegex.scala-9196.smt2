; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489062 () Bool)

(assert start!489062)

(declare-fun res!2025317 () Bool)

(declare-fun e!2980183 () Bool)

(assert (=> start!489062 (=> (not res!2025317) (not e!2980183))))

(declare-datatypes ((K!15269 0))(
  ( (K!15270 (val!20521 Int)) )
))
(declare-datatypes ((V!15515 0))(
  ( (V!15516 (val!20522 Int)) )
))
(declare-datatypes ((tuple2!56016 0))(
  ( (tuple2!56017 (_1!31302 K!15269) (_2!31302 V!15515)) )
))
(declare-datatypes ((List!53863 0))(
  ( (Nil!53739) (Cons!53739 (h!60153 tuple2!56016) (t!361313 List!53863)) )
))
(declare-datatypes ((tuple2!56018 0))(
  ( (tuple2!56019 (_1!31303 (_ BitVec 64)) (_2!31303 List!53863)) )
))
(declare-datatypes ((List!53864 0))(
  ( (Nil!53740) (Cons!53740 (h!60154 tuple2!56018) (t!361314 List!53864)) )
))
(declare-datatypes ((ListLongMap!4925 0))(
  ( (ListLongMap!4926 (toList!6511 List!53864)) )
))
(declare-fun lm!1309 () ListLongMap!4925)

(declare-fun lambda!226021 () Int)

(declare-fun forall!11980 (List!53864 Int) Bool)

(assert (=> start!489062 (= res!2025317 (forall!11980 (toList!6511 lm!1309) lambda!226021))))

(assert (=> start!489062 e!2980183))

(declare-fun e!2980184 () Bool)

(declare-fun inv!69295 (ListLongMap!4925) Bool)

(assert (=> start!489062 (and (inv!69295 lm!1309) e!2980184)))

(assert (=> start!489062 true))

(declare-fun tp_is_empty!32825 () Bool)

(assert (=> start!489062 tp_is_empty!32825))

(declare-fun tp_is_empty!32827 () Bool)

(assert (=> start!489062 tp_is_empty!32827))

(declare-fun b!4773783 () Bool)

(declare-fun res!2025319 () Bool)

(assert (=> b!4773783 (=> (not res!2025319) (not e!2980183))))

(declare-datatypes ((Hashable!6712 0))(
  ( (HashableExt!6711 (__x!32735 Int)) )
))
(declare-fun hashF!980 () Hashable!6712)

(declare-fun allKeysSameHashInMap!2117 (ListLongMap!4925 Hashable!6712) Bool)

(assert (=> b!4773783 (= res!2025319 (allKeysSameHashInMap!2117 lm!1309 hashF!980))))

(declare-fun b!4773784 () Bool)

(declare-fun tp!1356882 () Bool)

(assert (=> b!4773784 (= e!2980184 tp!1356882)))

(declare-fun b!4773785 () Bool)

(declare-fun e!2980182 () Bool)

(declare-fun e!2980181 () Bool)

(assert (=> b!4773785 (= e!2980182 e!2980181)))

(declare-fun res!2025320 () Bool)

(assert (=> b!4773785 (=> res!2025320 e!2980181)))

(assert (=> b!4773785 (= res!2025320 (not (forall!11980 (toList!6511 lm!1309) lambda!226021)))))

(declare-fun key!2872 () K!15269)

(declare-fun containsKeyBiggerList!368 (List!53864 K!15269) Bool)

(assert (=> b!4773785 (containsKeyBiggerList!368 (toList!6511 lm!1309) key!2872)))

(declare-datatypes ((Unit!138728 0))(
  ( (Unit!138729) )
))
(declare-fun lt!1936672 () Unit!138728)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!226 (ListLongMap!4925 K!15269 Hashable!6712) Unit!138728)

(assert (=> b!4773785 (= lt!1936672 (lemmaInLongMapThenContainsKeyBiggerList!226 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773786 () Bool)

(assert (=> b!4773786 (= e!2980181 true)))

(declare-fun lt!1936676 () Unit!138728)

(declare-fun lt!1936677 () tuple2!56018)

(declare-fun forallContained!3953 (List!53864 Int tuple2!56018) Unit!138728)

(assert (=> b!4773786 (= lt!1936676 (forallContained!3953 (toList!6511 lm!1309) lambda!226021 lt!1936677))))

(declare-fun lt!1936667 () Unit!138728)

(assert (=> b!4773786 (= lt!1936667 (forallContained!3953 (toList!6511 lm!1309) lambda!226021 lt!1936677))))

(declare-fun lt!1936671 () Unit!138728)

(declare-fun lemmaListContainsThenExtractedMapContains!584 (ListLongMap!4925 K!15269 Hashable!6712) Unit!138728)

(assert (=> b!4773786 (= lt!1936671 (lemmaListContainsThenExtractedMapContains!584 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773787 () Bool)

(declare-fun res!2025318 () Bool)

(assert (=> b!4773787 (=> (not res!2025318) (not e!2980183))))

(declare-datatypes ((ListMap!5991 0))(
  ( (ListMap!5992 (toList!6512 List!53863)) )
))
(declare-fun contains!17182 (ListMap!5991 K!15269) Bool)

(declare-fun extractMap!2247 (List!53864) ListMap!5991)

(assert (=> b!4773787 (= res!2025318 (contains!17182 (extractMap!2247 (toList!6511 lm!1309)) key!2872))))

(declare-fun b!4773788 () Bool)

(assert (=> b!4773788 (= e!2980183 (not e!2980182))))

(declare-fun res!2025316 () Bool)

(assert (=> b!4773788 (=> res!2025316 e!2980182)))

(declare-datatypes ((Option!12805 0))(
  ( (None!12804) (Some!12804 (v!47945 tuple2!56016)) )
))
(declare-fun lt!1936665 () Option!12805)

(declare-fun v!9615 () V!15515)

(declare-fun get!18197 (Option!12805) tuple2!56016)

(assert (=> b!4773788 (= res!2025316 (not (= (_2!31302 (get!18197 lt!1936665)) v!9615)))))

(declare-fun isDefined!9951 (Option!12805) Bool)

(assert (=> b!4773788 (isDefined!9951 lt!1936665)))

(declare-fun lt!1936670 () List!53863)

(declare-fun getPair!720 (List!53863 K!15269) Option!12805)

(assert (=> b!4773788 (= lt!1936665 (getPair!720 lt!1936670 key!2872))))

(declare-fun lt!1936666 () Unit!138728)

(assert (=> b!4773788 (= lt!1936666 (forallContained!3953 (toList!6511 lm!1309) lambda!226021 lt!1936677))))

(declare-fun lt!1936668 () Unit!138728)

(declare-fun lemmaInGenMapThenGetPairDefined!494 (ListLongMap!4925 K!15269 Hashable!6712) Unit!138728)

(assert (=> b!4773788 (= lt!1936668 (lemmaInGenMapThenGetPairDefined!494 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936669 () Unit!138728)

(assert (=> b!4773788 (= lt!1936669 (forallContained!3953 (toList!6511 lm!1309) lambda!226021 lt!1936677))))

(declare-fun contains!17183 (List!53864 tuple2!56018) Bool)

(assert (=> b!4773788 (contains!17183 (toList!6511 lm!1309) lt!1936677)))

(declare-fun lt!1936673 () (_ BitVec 64))

(assert (=> b!4773788 (= lt!1936677 (tuple2!56019 lt!1936673 lt!1936670))))

(declare-fun lt!1936674 () Unit!138728)

(declare-fun lemmaGetValueImpliesTupleContained!515 (ListLongMap!4925 (_ BitVec 64) List!53863) Unit!138728)

(assert (=> b!4773788 (= lt!1936674 (lemmaGetValueImpliesTupleContained!515 lm!1309 lt!1936673 lt!1936670))))

(declare-fun apply!12775 (ListLongMap!4925 (_ BitVec 64)) List!53863)

(assert (=> b!4773788 (= lt!1936670 (apply!12775 lm!1309 lt!1936673))))

(declare-fun contains!17184 (ListLongMap!4925 (_ BitVec 64)) Bool)

(assert (=> b!4773788 (contains!17184 lm!1309 lt!1936673)))

(declare-fun hash!4687 (Hashable!6712 K!15269) (_ BitVec 64))

(assert (=> b!4773788 (= lt!1936673 (hash!4687 hashF!980 key!2872))))

(declare-fun lt!1936675 () Unit!138728)

(declare-fun lemmaInGenMapThenLongMapContainsHash!924 (ListLongMap!4925 K!15269 Hashable!6712) Unit!138728)

(assert (=> b!4773788 (= lt!1936675 (lemmaInGenMapThenLongMapContainsHash!924 lm!1309 key!2872 hashF!980))))

(assert (= (and start!489062 res!2025317) b!4773783))

(assert (= (and b!4773783 res!2025319) b!4773787))

(assert (= (and b!4773787 res!2025318) b!4773788))

(assert (= (and b!4773788 (not res!2025316)) b!4773785))

(assert (= (and b!4773785 (not res!2025320)) b!4773786))

(assert (= start!489062 b!4773784))

(declare-fun m!5747418 () Bool)

(assert (=> start!489062 m!5747418))

(declare-fun m!5747420 () Bool)

(assert (=> start!489062 m!5747420))

(declare-fun m!5747422 () Bool)

(assert (=> b!4773786 m!5747422))

(assert (=> b!4773786 m!5747422))

(declare-fun m!5747424 () Bool)

(assert (=> b!4773786 m!5747424))

(declare-fun m!5747426 () Bool)

(assert (=> b!4773788 m!5747426))

(declare-fun m!5747428 () Bool)

(assert (=> b!4773788 m!5747428))

(declare-fun m!5747430 () Bool)

(assert (=> b!4773788 m!5747430))

(declare-fun m!5747432 () Bool)

(assert (=> b!4773788 m!5747432))

(declare-fun m!5747434 () Bool)

(assert (=> b!4773788 m!5747434))

(assert (=> b!4773788 m!5747422))

(declare-fun m!5747436 () Bool)

(assert (=> b!4773788 m!5747436))

(declare-fun m!5747438 () Bool)

(assert (=> b!4773788 m!5747438))

(declare-fun m!5747440 () Bool)

(assert (=> b!4773788 m!5747440))

(declare-fun m!5747442 () Bool)

(assert (=> b!4773788 m!5747442))

(assert (=> b!4773788 m!5747422))

(declare-fun m!5747444 () Bool)

(assert (=> b!4773788 m!5747444))

(assert (=> b!4773785 m!5747418))

(declare-fun m!5747446 () Bool)

(assert (=> b!4773785 m!5747446))

(declare-fun m!5747448 () Bool)

(assert (=> b!4773785 m!5747448))

(declare-fun m!5747450 () Bool)

(assert (=> b!4773787 m!5747450))

(assert (=> b!4773787 m!5747450))

(declare-fun m!5747452 () Bool)

(assert (=> b!4773787 m!5747452))

(declare-fun m!5747454 () Bool)

(assert (=> b!4773783 m!5747454))

(check-sat tp_is_empty!32825 (not b!4773786) (not b!4773784) (not b!4773783) (not start!489062) (not b!4773787) tp_is_empty!32827 (not b!4773785) (not b!4773788))
(check-sat)
