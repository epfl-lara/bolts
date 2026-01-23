; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!440992 () Bool)

(assert start!440992)

(declare-fun b!4482265 () Bool)

(declare-fun res!1861183 () Bool)

(declare-fun e!2791679 () Bool)

(assert (=> b!4482265 (=> res!1861183 e!2791679)))

(declare-datatypes ((K!11805 0))(
  ( (K!11806 (val!17715 Int)) )
))
(declare-datatypes ((V!12051 0))(
  ( (V!12052 (val!17716 Int)) )
))
(declare-datatypes ((tuple2!50698 0))(
  ( (tuple2!50699 (_1!28643 K!11805) (_2!28643 V!12051)) )
))
(declare-datatypes ((List!50518 0))(
  ( (Nil!50394) (Cons!50394 (h!56183 tuple2!50698) (t!357472 List!50518)) )
))
(declare-datatypes ((tuple2!50700 0))(
  ( (tuple2!50701 (_1!28644 (_ BitVec 64)) (_2!28644 List!50518)) )
))
(declare-datatypes ((List!50519 0))(
  ( (Nil!50395) (Cons!50395 (h!56184 tuple2!50700) (t!357473 List!50519)) )
))
(declare-datatypes ((ListLongMap!2771 0))(
  ( (ListLongMap!2772 (toList!4139 List!50519)) )
))
(declare-fun lm!1477 () ListLongMap!2771)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4482265 (= res!1861183 (or ((_ is Nil!50395) (toList!4139 lm!1477)) (= (_1!28644 (h!56184 (toList!4139 lm!1477))) hash!344)))))

(declare-fun b!4482266 () Bool)

(declare-fun res!1861177 () Bool)

(assert (=> b!4482266 (=> res!1861177 e!2791679)))

(declare-fun newBucket!178 () List!50518)

(declare-fun noDuplicateKeys!1066 (List!50518) Bool)

(assert (=> b!4482266 (= res!1861177 (not (noDuplicateKeys!1066 newBucket!178)))))

(declare-fun res!1861181 () Bool)

(declare-fun e!2791680 () Bool)

(assert (=> start!440992 (=> (not res!1861181) (not e!2791680))))

(declare-fun lambda!165663 () Int)

(declare-fun forall!10064 (List!50519 Int) Bool)

(assert (=> start!440992 (= res!1861181 (forall!10064 (toList!4139 lm!1477) lambda!165663))))

(assert (=> start!440992 e!2791680))

(assert (=> start!440992 true))

(declare-fun e!2791678 () Bool)

(declare-fun inv!65989 (ListLongMap!2771) Bool)

(assert (=> start!440992 (and (inv!65989 lm!1477) e!2791678)))

(declare-fun tp_is_empty!27541 () Bool)

(assert (=> start!440992 tp_is_empty!27541))

(declare-fun e!2791677 () Bool)

(assert (=> start!440992 e!2791677))

(declare-fun b!4482267 () Bool)

(declare-fun res!1861182 () Bool)

(declare-fun e!2791681 () Bool)

(assert (=> b!4482267 (=> (not res!1861182) (not e!2791681))))

(declare-datatypes ((Hashable!5461 0))(
  ( (HashableExt!5460 (__x!31164 Int)) )
))
(declare-fun hashF!1107 () Hashable!5461)

(declare-fun allKeysSameHash!920 (List!50518 (_ BitVec 64) Hashable!5461) Bool)

(assert (=> b!4482267 (= res!1861182 (allKeysSameHash!920 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4482268 () Bool)

(declare-fun tp_is_empty!27543 () Bool)

(declare-fun tp!1336752 () Bool)

(assert (=> b!4482268 (= e!2791677 (and tp_is_empty!27541 tp_is_empty!27543 tp!1336752))))

(declare-fun b!4482269 () Bool)

(declare-fun res!1861178 () Bool)

(assert (=> b!4482269 (=> (not res!1861178) (not e!2791680))))

(declare-fun allKeysSameHashInMap!1173 (ListLongMap!2771 Hashable!5461) Bool)

(assert (=> b!4482269 (= res!1861178 (allKeysSameHashInMap!1173 lm!1477 hashF!1107))))

(declare-fun b!4482270 () Bool)

(declare-fun contains!12993 (ListLongMap!2771 (_ BitVec 64)) Bool)

(assert (=> b!4482270 (= e!2791679 (contains!12993 lm!1477 hash!344))))

(declare-fun b!4482271 () Bool)

(declare-fun res!1861179 () Bool)

(assert (=> b!4482271 (=> (not res!1861179) (not e!2791680))))

(declare-fun key!3287 () K!11805)

(declare-datatypes ((ListMap!3401 0))(
  ( (ListMap!3402 (toList!4140 List!50518)) )
))
(declare-fun contains!12994 (ListMap!3401 K!11805) Bool)

(declare-fun extractMap!1122 (List!50519) ListMap!3401)

(assert (=> b!4482271 (= res!1861179 (contains!12994 (extractMap!1122 (toList!4139 lm!1477)) key!3287))))

(declare-fun b!4482272 () Bool)

(assert (=> b!4482272 (= e!2791680 e!2791681)))

(declare-fun res!1861180 () Bool)

(assert (=> b!4482272 (=> (not res!1861180) (not e!2791681))))

(declare-fun lt!1668995 () (_ BitVec 64))

(assert (=> b!4482272 (= res!1861180 (= lt!1668995 hash!344))))

(declare-fun hash!2565 (Hashable!5461 K!11805) (_ BitVec 64))

(assert (=> b!4482272 (= lt!1668995 (hash!2565 hashF!1107 key!3287))))

(declare-fun b!4482273 () Bool)

(declare-fun tp!1336753 () Bool)

(assert (=> b!4482273 (= e!2791678 tp!1336753)))

(declare-fun b!4482274 () Bool)

(assert (=> b!4482274 (= e!2791681 (not e!2791679))))

(declare-fun res!1861184 () Bool)

(assert (=> b!4482274 (=> res!1861184 e!2791679)))

(declare-fun lt!1668994 () List!50518)

(declare-fun removePairForKey!693 (List!50518 K!11805) List!50518)

(assert (=> b!4482274 (= res!1861184 (not (= newBucket!178 (removePairForKey!693 lt!1668994 key!3287))))))

(declare-datatypes ((Unit!89877 0))(
  ( (Unit!89878) )
))
(declare-fun lt!1668997 () Unit!89877)

(declare-fun lt!1668993 () tuple2!50700)

(declare-fun forallContained!2325 (List!50519 Int tuple2!50700) Unit!89877)

(assert (=> b!4482274 (= lt!1668997 (forallContained!2325 (toList!4139 lm!1477) lambda!165663 lt!1668993))))

(declare-fun contains!12995 (List!50519 tuple2!50700) Bool)

(assert (=> b!4482274 (contains!12995 (toList!4139 lm!1477) lt!1668993)))

(assert (=> b!4482274 (= lt!1668993 (tuple2!50701 hash!344 lt!1668994))))

(declare-fun lt!1668996 () Unit!89877)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!578 (List!50519 (_ BitVec 64) List!50518) Unit!89877)

(assert (=> b!4482274 (= lt!1668996 (lemmaGetValueByKeyImpliesContainsTuple!578 (toList!4139 lm!1477) hash!344 lt!1668994))))

(declare-fun apply!11803 (ListLongMap!2771 (_ BitVec 64)) List!50518)

(assert (=> b!4482274 (= lt!1668994 (apply!11803 lm!1477 hash!344))))

(assert (=> b!4482274 (contains!12993 lm!1477 lt!1668995)))

(declare-fun lt!1668998 () Unit!89877)

(declare-fun lemmaInGenMapThenLongMapContainsHash!140 (ListLongMap!2771 K!11805 Hashable!5461) Unit!89877)

(assert (=> b!4482274 (= lt!1668998 (lemmaInGenMapThenLongMapContainsHash!140 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!440992 res!1861181) b!4482269))

(assert (= (and b!4482269 res!1861178) b!4482271))

(assert (= (and b!4482271 res!1861179) b!4482272))

(assert (= (and b!4482272 res!1861180) b!4482267))

(assert (= (and b!4482267 res!1861182) b!4482274))

(assert (= (and b!4482274 (not res!1861184)) b!4482266))

(assert (= (and b!4482266 (not res!1861177)) b!4482265))

(assert (= (and b!4482265 (not res!1861183)) b!4482270))

(assert (= start!440992 b!4482273))

(assert (= (and start!440992 ((_ is Cons!50394) newBucket!178)) b!4482268))

(declare-fun m!5202707 () Bool)

(assert (=> b!4482270 m!5202707))

(declare-fun m!5202709 () Bool)

(assert (=> start!440992 m!5202709))

(declare-fun m!5202711 () Bool)

(assert (=> start!440992 m!5202711))

(declare-fun m!5202713 () Bool)

(assert (=> b!4482267 m!5202713))

(declare-fun m!5202715 () Bool)

(assert (=> b!4482272 m!5202715))

(declare-fun m!5202717 () Bool)

(assert (=> b!4482269 m!5202717))

(declare-fun m!5202719 () Bool)

(assert (=> b!4482266 m!5202719))

(declare-fun m!5202721 () Bool)

(assert (=> b!4482274 m!5202721))

(declare-fun m!5202723 () Bool)

(assert (=> b!4482274 m!5202723))

(declare-fun m!5202725 () Bool)

(assert (=> b!4482274 m!5202725))

(declare-fun m!5202727 () Bool)

(assert (=> b!4482274 m!5202727))

(declare-fun m!5202729 () Bool)

(assert (=> b!4482274 m!5202729))

(declare-fun m!5202731 () Bool)

(assert (=> b!4482274 m!5202731))

(declare-fun m!5202733 () Bool)

(assert (=> b!4482274 m!5202733))

(declare-fun m!5202735 () Bool)

(assert (=> b!4482271 m!5202735))

(assert (=> b!4482271 m!5202735))

(declare-fun m!5202737 () Bool)

(assert (=> b!4482271 m!5202737))

(check-sat (not b!4482271) (not b!4482270) (not b!4482274) (not b!4482267) (not b!4482268) (not b!4482266) tp_is_empty!27541 (not start!440992) (not b!4482269) (not b!4482272) (not b!4482273) tp_is_empty!27543)
(check-sat)
