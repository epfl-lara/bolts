; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461320 () Bool)

(assert start!461320)

(declare-fun b!4611978 () Bool)

(declare-fun e!2876850 () Bool)

(declare-fun e!2876848 () Bool)

(assert (=> b!4611978 (= e!2876850 e!2876848)))

(declare-fun res!1931186 () Bool)

(assert (=> b!4611978 (=> (not res!1931186) (not e!2876848))))

(declare-datatypes ((K!12650 0))(
  ( (K!12651 (val!18391 Int)) )
))
(declare-datatypes ((V!12896 0))(
  ( (V!12897 (val!18392 Int)) )
))
(declare-datatypes ((tuple2!52046 0))(
  ( (tuple2!52047 (_1!29317 K!12650) (_2!29317 V!12896)) )
))
(declare-datatypes ((List!51399 0))(
  ( (Nil!51275) (Cons!51275 (h!57277 tuple2!52046) (t!358393 List!51399)) )
))
(declare-datatypes ((ListMap!4069 0))(
  ( (ListMap!4070 (toList!4788 List!51399)) )
))
(declare-fun lt!1767658 () ListMap!4069)

(declare-fun key!4968 () K!12650)

(declare-fun contains!14266 (ListMap!4069 K!12650) Bool)

(assert (=> b!4611978 (= res!1931186 (contains!14266 lt!1767658 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51399)

(declare-datatypes ((tuple2!52048 0))(
  ( (tuple2!52049 (_1!29318 (_ BitVec 64)) (_2!29318 List!51399)) )
))
(declare-datatypes ((List!51400 0))(
  ( (Nil!51276) (Cons!51276 (h!57278 tuple2!52048) (t!358394 List!51400)) )
))
(declare-fun extractMap!1456 (List!51400) ListMap!4069)

(assert (=> b!4611978 (= lt!1767658 (extractMap!1456 (Cons!51276 (tuple2!52049 hash!414 oldBucket!40) Nil!51276)))))

(declare-fun b!4611980 () Bool)

(declare-fun res!1931191 () Bool)

(assert (=> b!4611980 (=> (not res!1931191) (not e!2876848))))

(declare-datatypes ((Hashable!5797 0))(
  ( (HashableExt!5796 (__x!31500 Int)) )
))
(declare-fun hashF!1389 () Hashable!5797)

(declare-fun newBucket!224 () List!51399)

(declare-fun allKeysSameHash!1254 (List!51399 (_ BitVec 64) Hashable!5797) Bool)

(assert (=> b!4611980 (= res!1931191 (allKeysSameHash!1254 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp_is_empty!28893 () Bool)

(declare-fun tp_is_empty!28895 () Bool)

(declare-fun tp!1341279 () Bool)

(declare-fun e!2876851 () Bool)

(declare-fun b!4611981 () Bool)

(assert (=> b!4611981 (= e!2876851 (and tp_is_empty!28893 tp_is_empty!28895 tp!1341279))))

(declare-fun e!2876846 () Bool)

(declare-fun b!4611982 () Bool)

(declare-fun tp!1341278 () Bool)

(assert (=> b!4611982 (= e!2876846 (and tp_is_empty!28893 tp_is_empty!28895 tp!1341278))))

(declare-fun b!4611983 () Bool)

(declare-fun res!1931188 () Bool)

(assert (=> b!4611983 (=> (not res!1931188) (not e!2876850))))

(declare-fun removePairForKey!1023 (List!51399 K!12650) List!51399)

(assert (=> b!4611983 (= res!1931188 (= (removePairForKey!1023 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4611984 () Bool)

(declare-fun res!1931189 () Bool)

(declare-fun e!2876847 () Bool)

(assert (=> b!4611984 (=> res!1931189 e!2876847)))

(declare-fun lt!1767659 () List!51399)

(assert (=> b!4611984 (= res!1931189 (not (= (extractMap!1456 (Cons!51276 (tuple2!52049 hash!414 lt!1767659) Nil!51276)) (extractMap!1456 (Cons!51276 (tuple2!52049 hash!414 newBucket!224) Nil!51276)))))))

(declare-fun b!4611985 () Bool)

(declare-fun e!2876849 () Bool)

(assert (=> b!4611985 (= e!2876849 e!2876847)))

(declare-fun res!1931190 () Bool)

(assert (=> b!4611985 (=> res!1931190 e!2876847)))

(assert (=> b!4611985 (= res!1931190 (not (= lt!1767659 newBucket!224)))))

(declare-fun tail!8047 (List!51399) List!51399)

(assert (=> b!4611985 (= lt!1767659 (tail!8047 oldBucket!40))))

(declare-fun b!4611986 () Bool)

(declare-fun res!1931192 () Bool)

(assert (=> b!4611986 (=> (not res!1931192) (not e!2876848))))

(declare-fun hash!3343 (Hashable!5797 K!12650) (_ BitVec 64))

(assert (=> b!4611986 (= res!1931192 (= (hash!3343 hashF!1389 key!4968) hash!414))))

(declare-fun b!4611987 () Bool)

(declare-fun res!1931196 () Bool)

(assert (=> b!4611987 (=> (not res!1931196) (not e!2876850))))

(assert (=> b!4611987 (= res!1931196 (allKeysSameHash!1254 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4611988 () Bool)

(declare-fun noDuplicateKeys!1400 (List!51399) Bool)

(assert (=> b!4611988 (= e!2876847 (noDuplicateKeys!1400 lt!1767659))))

(declare-fun b!4611979 () Bool)

(assert (=> b!4611979 (= e!2876848 (not e!2876849))))

(declare-fun res!1931194 () Bool)

(assert (=> b!4611979 (=> res!1931194 e!2876849)))

(get-info :version)

(assert (=> b!4611979 (= res!1931194 (or (not ((_ is Cons!51275) oldBucket!40)) (not (= (_1!29317 (h!57277 oldBucket!40)) key!4968))))))

(declare-fun e!2876852 () Bool)

(assert (=> b!4611979 e!2876852))

(declare-fun res!1931195 () Bool)

(assert (=> b!4611979 (=> (not res!1931195) (not e!2876852))))

(declare-fun lt!1767657 () ListMap!4069)

(declare-fun addToMapMapFromBucket!861 (List!51399 ListMap!4069) ListMap!4069)

(assert (=> b!4611979 (= res!1931195 (= lt!1767658 (addToMapMapFromBucket!861 oldBucket!40 lt!1767657)))))

(assert (=> b!4611979 (= lt!1767657 (extractMap!1456 Nil!51276))))

(assert (=> b!4611979 true))

(declare-fun res!1931187 () Bool)

(assert (=> start!461320 (=> (not res!1931187) (not e!2876850))))

(assert (=> start!461320 (= res!1931187 (noDuplicateKeys!1400 oldBucket!40))))

(assert (=> start!461320 e!2876850))

(assert (=> start!461320 true))

(assert (=> start!461320 e!2876851))

(assert (=> start!461320 tp_is_empty!28893))

(assert (=> start!461320 e!2876846))

(declare-fun b!4611989 () Bool)

(assert (=> b!4611989 (= e!2876852 (= lt!1767657 (ListMap!4070 Nil!51275)))))

(declare-fun b!4611990 () Bool)

(declare-fun res!1931193 () Bool)

(assert (=> b!4611990 (=> (not res!1931193) (not e!2876850))))

(assert (=> b!4611990 (= res!1931193 (noDuplicateKeys!1400 newBucket!224))))

(assert (= (and start!461320 res!1931187) b!4611990))

(assert (= (and b!4611990 res!1931193) b!4611983))

(assert (= (and b!4611983 res!1931188) b!4611987))

(assert (= (and b!4611987 res!1931196) b!4611978))

(assert (= (and b!4611978 res!1931186) b!4611986))

(assert (= (and b!4611986 res!1931192) b!4611980))

(assert (= (and b!4611980 res!1931191) b!4611979))

(assert (= (and b!4611979 res!1931195) b!4611989))

(assert (= (and b!4611979 (not res!1931194)) b!4611985))

(assert (= (and b!4611985 (not res!1931190)) b!4611984))

(assert (= (and b!4611984 (not res!1931189)) b!4611988))

(assert (= (and start!461320 ((_ is Cons!51275) oldBucket!40)) b!4611981))

(assert (= (and start!461320 ((_ is Cons!51275) newBucket!224)) b!4611982))

(declare-fun m!5443345 () Bool)

(assert (=> b!4611990 m!5443345))

(declare-fun m!5443347 () Bool)

(assert (=> b!4611987 m!5443347))

(declare-fun m!5443349 () Bool)

(assert (=> b!4611986 m!5443349))

(declare-fun m!5443351 () Bool)

(assert (=> b!4611985 m!5443351))

(declare-fun m!5443353 () Bool)

(assert (=> b!4611988 m!5443353))

(declare-fun m!5443355 () Bool)

(assert (=> b!4611979 m!5443355))

(declare-fun m!5443357 () Bool)

(assert (=> b!4611979 m!5443357))

(declare-fun m!5443359 () Bool)

(assert (=> start!461320 m!5443359))

(declare-fun m!5443361 () Bool)

(assert (=> b!4611980 m!5443361))

(declare-fun m!5443363 () Bool)

(assert (=> b!4611984 m!5443363))

(declare-fun m!5443365 () Bool)

(assert (=> b!4611984 m!5443365))

(declare-fun m!5443367 () Bool)

(assert (=> b!4611983 m!5443367))

(declare-fun m!5443369 () Bool)

(assert (=> b!4611978 m!5443369))

(declare-fun m!5443371 () Bool)

(assert (=> b!4611978 m!5443371))

(check-sat (not b!4611982) tp_is_empty!28893 (not b!4611984) (not b!4611978) (not start!461320) tp_is_empty!28895 (not b!4611980) (not b!4611981) (not b!4611987) (not b!4611986) (not b!4611983) (not b!4611985) (not b!4611979) (not b!4611988) (not b!4611990))
(check-sat)
