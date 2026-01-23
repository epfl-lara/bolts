; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489064 () Bool)

(assert start!489064)

(declare-fun b!4773800 () Bool)

(declare-fun e!2980193 () Bool)

(declare-fun tp!1356885 () Bool)

(assert (=> b!4773800 (= e!2980193 tp!1356885)))

(declare-fun b!4773801 () Bool)

(declare-fun res!2025329 () Bool)

(declare-fun e!2980192 () Bool)

(assert (=> b!4773801 (=> (not res!2025329) (not e!2980192))))

(declare-datatypes ((K!15272 0))(
  ( (K!15273 (val!20523 Int)) )
))
(declare-datatypes ((V!15518 0))(
  ( (V!15519 (val!20524 Int)) )
))
(declare-datatypes ((tuple2!56020 0))(
  ( (tuple2!56021 (_1!31304 K!15272) (_2!31304 V!15518)) )
))
(declare-datatypes ((List!53865 0))(
  ( (Nil!53741) (Cons!53741 (h!60155 tuple2!56020) (t!361315 List!53865)) )
))
(declare-datatypes ((tuple2!56022 0))(
  ( (tuple2!56023 (_1!31305 (_ BitVec 64)) (_2!31305 List!53865)) )
))
(declare-datatypes ((List!53866 0))(
  ( (Nil!53742) (Cons!53742 (h!60156 tuple2!56022) (t!361316 List!53866)) )
))
(declare-datatypes ((ListLongMap!4927 0))(
  ( (ListLongMap!4928 (toList!6513 List!53866)) )
))
(declare-fun lm!1309 () ListLongMap!4927)

(declare-datatypes ((Hashable!6713 0))(
  ( (HashableExt!6712 (__x!32736 Int)) )
))
(declare-fun hashF!980 () Hashable!6713)

(declare-fun allKeysSameHashInMap!2118 (ListLongMap!4927 Hashable!6713) Bool)

(assert (=> b!4773801 (= res!2025329 (allKeysSameHashInMap!2118 lm!1309 hashF!980))))

(declare-fun b!4773802 () Bool)

(declare-fun res!2025331 () Bool)

(assert (=> b!4773802 (=> (not res!2025331) (not e!2980192))))

(declare-fun key!2872 () K!15272)

(declare-datatypes ((ListMap!5993 0))(
  ( (ListMap!5994 (toList!6514 List!53865)) )
))
(declare-fun contains!17185 (ListMap!5993 K!15272) Bool)

(declare-fun extractMap!2248 (List!53866) ListMap!5993)

(assert (=> b!4773802 (= res!2025331 (contains!17185 (extractMap!2248 (toList!6513 lm!1309)) key!2872))))

(declare-fun b!4773803 () Bool)

(declare-fun e!2980191 () Bool)

(declare-fun lambda!226030 () Int)

(declare-fun forall!11981 (List!53866 Int) Bool)

(assert (=> b!4773803 (= e!2980191 (forall!11981 (toList!6513 lm!1309) lambda!226030))))

(declare-fun v!9615 () V!15518)

(declare-fun getValue!27 (List!53866 K!15272) V!15518)

(assert (=> b!4773803 (= (getValue!27 (toList!6513 lm!1309) key!2872) v!9615)))

(declare-datatypes ((Unit!138730 0))(
  ( (Unit!138731) )
))
(declare-fun lt!1936709 () Unit!138730)

(declare-fun lemmaGetValueEquivToGetPair!27 (ListLongMap!4927 K!15272 V!15518 Hashable!6713) Unit!138730)

(assert (=> b!4773803 (= lt!1936709 (lemmaGetValueEquivToGetPair!27 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!369 (List!53866 K!15272) Bool)

(assert (=> b!4773803 (containsKeyBiggerList!369 (toList!6513 lm!1309) key!2872)))

(declare-fun lt!1936707 () Unit!138730)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!227 (ListLongMap!4927 K!15272 Hashable!6713) Unit!138730)

(assert (=> b!4773803 (= lt!1936707 (lemmaInLongMapThenContainsKeyBiggerList!227 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773799 () Bool)

(assert (=> b!4773799 (= e!2980192 (not e!2980191))))

(declare-fun res!2025330 () Bool)

(assert (=> b!4773799 (=> res!2025330 e!2980191)))

(declare-datatypes ((Option!12806 0))(
  ( (None!12805) (Some!12805 (v!47946 tuple2!56020)) )
))
(declare-fun lt!1936701 () Option!12806)

(declare-fun get!18199 (Option!12806) tuple2!56020)

(assert (=> b!4773799 (= res!2025330 (not (= (_2!31304 (get!18199 lt!1936701)) v!9615)))))

(declare-fun isDefined!9952 (Option!12806) Bool)

(assert (=> b!4773799 (isDefined!9952 lt!1936701)))

(declare-fun lt!1936708 () List!53865)

(declare-fun getPair!721 (List!53865 K!15272) Option!12806)

(assert (=> b!4773799 (= lt!1936701 (getPair!721 lt!1936708 key!2872))))

(declare-fun lt!1936702 () Unit!138730)

(declare-fun lt!1936705 () tuple2!56022)

(declare-fun forallContained!3954 (List!53866 Int tuple2!56022) Unit!138730)

(assert (=> b!4773799 (= lt!1936702 (forallContained!3954 (toList!6513 lm!1309) lambda!226030 lt!1936705))))

(declare-fun lt!1936706 () Unit!138730)

(declare-fun lemmaInGenMapThenGetPairDefined!495 (ListLongMap!4927 K!15272 Hashable!6713) Unit!138730)

(assert (=> b!4773799 (= lt!1936706 (lemmaInGenMapThenGetPairDefined!495 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936700 () Unit!138730)

(assert (=> b!4773799 (= lt!1936700 (forallContained!3954 (toList!6513 lm!1309) lambda!226030 lt!1936705))))

(declare-fun contains!17186 (List!53866 tuple2!56022) Bool)

(assert (=> b!4773799 (contains!17186 (toList!6513 lm!1309) lt!1936705)))

(declare-fun lt!1936710 () (_ BitVec 64))

(assert (=> b!4773799 (= lt!1936705 (tuple2!56023 lt!1936710 lt!1936708))))

(declare-fun lt!1936703 () Unit!138730)

(declare-fun lemmaGetValueImpliesTupleContained!516 (ListLongMap!4927 (_ BitVec 64) List!53865) Unit!138730)

(assert (=> b!4773799 (= lt!1936703 (lemmaGetValueImpliesTupleContained!516 lm!1309 lt!1936710 lt!1936708))))

(declare-fun apply!12776 (ListLongMap!4927 (_ BitVec 64)) List!53865)

(assert (=> b!4773799 (= lt!1936708 (apply!12776 lm!1309 lt!1936710))))

(declare-fun contains!17187 (ListLongMap!4927 (_ BitVec 64)) Bool)

(assert (=> b!4773799 (contains!17187 lm!1309 lt!1936710)))

(declare-fun hash!4688 (Hashable!6713 K!15272) (_ BitVec 64))

(assert (=> b!4773799 (= lt!1936710 (hash!4688 hashF!980 key!2872))))

(declare-fun lt!1936704 () Unit!138730)

(declare-fun lemmaInGenMapThenLongMapContainsHash!925 (ListLongMap!4927 K!15272 Hashable!6713) Unit!138730)

(assert (=> b!4773799 (= lt!1936704 (lemmaInGenMapThenLongMapContainsHash!925 lm!1309 key!2872 hashF!980))))

(declare-fun res!2025332 () Bool)

(assert (=> start!489064 (=> (not res!2025332) (not e!2980192))))

(assert (=> start!489064 (= res!2025332 (forall!11981 (toList!6513 lm!1309) lambda!226030))))

(assert (=> start!489064 e!2980192))

(declare-fun inv!69299 (ListLongMap!4927) Bool)

(assert (=> start!489064 (and (inv!69299 lm!1309) e!2980193)))

(assert (=> start!489064 true))

(declare-fun tp_is_empty!32829 () Bool)

(assert (=> start!489064 tp_is_empty!32829))

(declare-fun tp_is_empty!32831 () Bool)

(assert (=> start!489064 tp_is_empty!32831))

(assert (= (and start!489064 res!2025332) b!4773801))

(assert (= (and b!4773801 res!2025329) b!4773802))

(assert (= (and b!4773802 res!2025331) b!4773799))

(assert (= (and b!4773799 (not res!2025330)) b!4773803))

(assert (= start!489064 b!4773800))

(declare-fun m!5747456 () Bool)

(assert (=> b!4773801 m!5747456))

(declare-fun m!5747458 () Bool)

(assert (=> b!4773799 m!5747458))

(declare-fun m!5747460 () Bool)

(assert (=> b!4773799 m!5747460))

(declare-fun m!5747462 () Bool)

(assert (=> b!4773799 m!5747462))

(declare-fun m!5747464 () Bool)

(assert (=> b!4773799 m!5747464))

(declare-fun m!5747466 () Bool)

(assert (=> b!4773799 m!5747466))

(declare-fun m!5747468 () Bool)

(assert (=> b!4773799 m!5747468))

(declare-fun m!5747470 () Bool)

(assert (=> b!4773799 m!5747470))

(declare-fun m!5747472 () Bool)

(assert (=> b!4773799 m!5747472))

(declare-fun m!5747474 () Bool)

(assert (=> b!4773799 m!5747474))

(assert (=> b!4773799 m!5747472))

(declare-fun m!5747476 () Bool)

(assert (=> b!4773799 m!5747476))

(declare-fun m!5747478 () Bool)

(assert (=> b!4773799 m!5747478))

(declare-fun m!5747480 () Bool)

(assert (=> b!4773803 m!5747480))

(declare-fun m!5747482 () Bool)

(assert (=> b!4773803 m!5747482))

(declare-fun m!5747484 () Bool)

(assert (=> b!4773803 m!5747484))

(declare-fun m!5747486 () Bool)

(assert (=> b!4773803 m!5747486))

(declare-fun m!5747488 () Bool)

(assert (=> b!4773803 m!5747488))

(declare-fun m!5747490 () Bool)

(assert (=> b!4773802 m!5747490))

(assert (=> b!4773802 m!5747490))

(declare-fun m!5747492 () Bool)

(assert (=> b!4773802 m!5747492))

(assert (=> start!489064 m!5747488))

(declare-fun m!5747494 () Bool)

(assert (=> start!489064 m!5747494))

(push 1)

(assert (not b!4773799))

(assert tp_is_empty!32829)

(assert (not b!4773801))

(assert (not b!4773803))

(assert tp_is_empty!32831)

(assert (not start!489064))

(assert (not b!4773802))

(assert (not b!4773800))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

