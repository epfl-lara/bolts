; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462040 () Bool)

(assert start!462040)

(declare-fun tp_is_empty!29093 () Bool)

(declare-fun b!4617268 () Bool)

(declare-fun e!2880082 () Bool)

(declare-fun tp!1341650 () Bool)

(declare-fun tp_is_empty!29095 () Bool)

(assert (=> b!4617268 (= e!2880082 (and tp_is_empty!29093 tp_is_empty!29095 tp!1341650))))

(declare-fun b!4617269 () Bool)

(declare-fun res!1934769 () Bool)

(declare-fun e!2880083 () Bool)

(assert (=> b!4617269 (=> (not res!1934769) (not e!2880083))))

(declare-datatypes ((K!12775 0))(
  ( (K!12776 (val!18491 Int)) )
))
(declare-datatypes ((V!13021 0))(
  ( (V!13022 (val!18492 Int)) )
))
(declare-datatypes ((tuple2!52246 0))(
  ( (tuple2!52247 (_1!29417 K!12775) (_2!29417 V!13021)) )
))
(declare-datatypes ((List!51517 0))(
  ( (Nil!51393) (Cons!51393 (h!57413 tuple2!52246) (t!358529 List!51517)) )
))
(declare-fun newBucket!224 () List!51517)

(declare-fun noDuplicateKeys!1450 (List!51517) Bool)

(assert (=> b!4617269 (= res!1934769 (noDuplicateKeys!1450 newBucket!224))))

(declare-fun b!4617270 () Bool)

(declare-fun e!2880085 () Bool)

(assert (=> b!4617270 (= e!2880083 e!2880085)))

(declare-fun res!1934763 () Bool)

(assert (=> b!4617270 (=> (not res!1934763) (not e!2880085))))

(declare-datatypes ((ListMap!4169 0))(
  ( (ListMap!4170 (toList!4865 List!51517)) )
))
(declare-fun lt!1773199 () ListMap!4169)

(declare-fun key!4968 () K!12775)

(declare-fun contains!14356 (ListMap!4169 K!12775) Bool)

(assert (=> b!4617270 (= res!1934763 (contains!14356 lt!1773199 key!4968))))

(declare-datatypes ((tuple2!52248 0))(
  ( (tuple2!52249 (_1!29418 (_ BitVec 64)) (_2!29418 List!51517)) )
))
(declare-datatypes ((List!51518 0))(
  ( (Nil!51394) (Cons!51394 (h!57414 tuple2!52248) (t!358530 List!51518)) )
))
(declare-fun lt!1773200 () List!51518)

(declare-fun extractMap!1506 (List!51518) ListMap!4169)

(assert (=> b!4617270 (= lt!1773199 (extractMap!1506 lt!1773200))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51517)

(assert (=> b!4617270 (= lt!1773200 (Cons!51394 (tuple2!52249 hash!414 oldBucket!40) Nil!51394))))

(declare-fun b!4617271 () Bool)

(declare-fun e!2880084 () Bool)

(declare-fun lambda!189848 () Int)

(declare-fun forall!10756 (List!51518 Int) Bool)

(assert (=> b!4617271 (= e!2880084 (forall!10756 lt!1773200 lambda!189848))))

(declare-fun b!4617272 () Bool)

(declare-fun res!1934760 () Bool)

(assert (=> b!4617272 (=> (not res!1934760) (not e!2880085))))

(declare-datatypes ((Hashable!5847 0))(
  ( (HashableExt!5846 (__x!31550 Int)) )
))
(declare-fun hashF!1389 () Hashable!5847)

(declare-fun allKeysSameHash!1304 (List!51517 (_ BitVec 64) Hashable!5847) Bool)

(assert (=> b!4617272 (= res!1934760 (allKeysSameHash!1304 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1934768 () Bool)

(assert (=> start!462040 (=> (not res!1934768) (not e!2880083))))

(assert (=> start!462040 (= res!1934768 (noDuplicateKeys!1450 oldBucket!40))))

(assert (=> start!462040 e!2880083))

(assert (=> start!462040 true))

(declare-fun e!2880086 () Bool)

(assert (=> start!462040 e!2880086))

(assert (=> start!462040 tp_is_empty!29093))

(assert (=> start!462040 e!2880082))

(declare-fun tp!1341651 () Bool)

(declare-fun b!4617273 () Bool)

(assert (=> b!4617273 (= e!2880086 (and tp_is_empty!29093 tp_is_empty!29095 tp!1341651))))

(declare-fun b!4617274 () Bool)

(declare-fun res!1934766 () Bool)

(assert (=> b!4617274 (=> (not res!1934766) (not e!2880083))))

(declare-fun removePairForKey!1073 (List!51517 K!12775) List!51517)

(assert (=> b!4617274 (= res!1934766 (= (removePairForKey!1073 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4617275 () Bool)

(assert (=> b!4617275 (= e!2880085 (not e!2880084))))

(declare-fun res!1934761 () Bool)

(assert (=> b!4617275 (=> res!1934761 e!2880084)))

(get-info :version)

(assert (=> b!4617275 (= res!1934761 (or (and ((_ is Cons!51393) oldBucket!40) (= (_1!29417 (h!57413 oldBucket!40)) key!4968)) (not ((_ is Cons!51393) oldBucket!40)) (= (_1!29417 (h!57413 oldBucket!40)) key!4968)))))

(declare-fun e!2880081 () Bool)

(assert (=> b!4617275 e!2880081))

(declare-fun res!1934767 () Bool)

(assert (=> b!4617275 (=> (not res!1934767) (not e!2880081))))

(declare-fun lt!1773201 () ListMap!4169)

(declare-fun addToMapMapFromBucket!911 (List!51517 ListMap!4169) ListMap!4169)

(assert (=> b!4617275 (= res!1934767 (= lt!1773199 (addToMapMapFromBucket!911 oldBucket!40 lt!1773201)))))

(assert (=> b!4617275 (= lt!1773201 (extractMap!1506 Nil!51394))))

(assert (=> b!4617275 true))

(declare-fun b!4617276 () Bool)

(declare-fun res!1934764 () Bool)

(assert (=> b!4617276 (=> res!1934764 e!2880084)))

(declare-datatypes ((ListLongMap!3455 0))(
  ( (ListLongMap!3456 (toList!4866 List!51518)) )
))
(declare-fun allKeysSameHashInMap!1493 (ListLongMap!3455 Hashable!5847) Bool)

(assert (=> b!4617276 (= res!1934764 (not (allKeysSameHashInMap!1493 (ListLongMap!3456 lt!1773200) hashF!1389)))))

(declare-fun b!4617277 () Bool)

(declare-fun res!1934762 () Bool)

(assert (=> b!4617277 (=> (not res!1934762) (not e!2880083))))

(assert (=> b!4617277 (= res!1934762 (allKeysSameHash!1304 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4617278 () Bool)

(declare-fun res!1934765 () Bool)

(assert (=> b!4617278 (=> (not res!1934765) (not e!2880085))))

(declare-fun hash!3411 (Hashable!5847 K!12775) (_ BitVec 64))

(assert (=> b!4617278 (= res!1934765 (= (hash!3411 hashF!1389 key!4968) hash!414))))

(declare-fun b!4617279 () Bool)

(declare-fun res!1934770 () Bool)

(assert (=> b!4617279 (=> res!1934770 e!2880084)))

(assert (=> b!4617279 (= res!1934770 (not (forall!10756 lt!1773200 lambda!189848)))))

(declare-fun b!4617280 () Bool)

(assert (=> b!4617280 (= e!2880081 (= lt!1773201 (ListMap!4170 Nil!51393)))))

(assert (= (and start!462040 res!1934768) b!4617269))

(assert (= (and b!4617269 res!1934769) b!4617274))

(assert (= (and b!4617274 res!1934766) b!4617277))

(assert (= (and b!4617277 res!1934762) b!4617270))

(assert (= (and b!4617270 res!1934763) b!4617278))

(assert (= (and b!4617278 res!1934765) b!4617272))

(assert (= (and b!4617272 res!1934760) b!4617275))

(assert (= (and b!4617275 res!1934767) b!4617280))

(assert (= (and b!4617275 (not res!1934761)) b!4617279))

(assert (= (and b!4617279 (not res!1934770)) b!4617276))

(assert (= (and b!4617276 (not res!1934764)) b!4617271))

(assert (= (and start!462040 ((_ is Cons!51393) oldBucket!40)) b!4617273))

(assert (= (and start!462040 ((_ is Cons!51393) newBucket!224)) b!4617268))

(declare-fun m!5452603 () Bool)

(assert (=> b!4617270 m!5452603))

(declare-fun m!5452605 () Bool)

(assert (=> b!4617270 m!5452605))

(declare-fun m!5452607 () Bool)

(assert (=> b!4617272 m!5452607))

(declare-fun m!5452609 () Bool)

(assert (=> b!4617276 m!5452609))

(declare-fun m!5452611 () Bool)

(assert (=> b!4617274 m!5452611))

(declare-fun m!5452613 () Bool)

(assert (=> b!4617271 m!5452613))

(declare-fun m!5452615 () Bool)

(assert (=> b!4617278 m!5452615))

(declare-fun m!5452617 () Bool)

(assert (=> b!4617269 m!5452617))

(assert (=> b!4617279 m!5452613))

(declare-fun m!5452619 () Bool)

(assert (=> b!4617275 m!5452619))

(declare-fun m!5452621 () Bool)

(assert (=> b!4617275 m!5452621))

(declare-fun m!5452623 () Bool)

(assert (=> start!462040 m!5452623))

(declare-fun m!5452625 () Bool)

(assert (=> b!4617277 m!5452625))

(check-sat (not b!4617274) (not b!4617275) (not b!4617277) tp_is_empty!29093 (not b!4617272) (not b!4617270) (not b!4617268) (not b!4617278) (not b!4617269) (not b!4617271) tp_is_empty!29095 (not b!4617276) (not b!4617279) (not b!4617273) (not start!462040))
(check-sat)
