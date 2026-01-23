; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!480264 () Bool)

(assert start!480264)

(declare-fun b!4719086 () Bool)

(declare-fun res!1995996 () Bool)

(declare-fun e!2943090 () Bool)

(assert (=> b!4719086 (=> (not res!1995996) (not e!2943090))))

(declare-datatypes ((K!14160 0))(
  ( (K!14161 (val!19599 Int)) )
))
(declare-datatypes ((V!14406 0))(
  ( (V!14407 (val!19600 Int)) )
))
(declare-datatypes ((tuple2!54410 0))(
  ( (tuple2!54411 (_1!30499 K!14160) (_2!30499 V!14406)) )
))
(declare-datatypes ((List!52926 0))(
  ( (Nil!52802) (Cons!52802 (h!59141 tuple2!54410) (t!360182 List!52926)) )
))
(declare-datatypes ((tuple2!54412 0))(
  ( (tuple2!54413 (_1!30500 (_ BitVec 64)) (_2!30500 List!52926)) )
))
(declare-datatypes ((List!52927 0))(
  ( (Nil!52803) (Cons!52803 (h!59142 tuple2!54412) (t!360183 List!52927)) )
))
(declare-datatypes ((ListLongMap!4427 0))(
  ( (ListLongMap!4428 (toList!5897 List!52927)) )
))
(declare-fun lm!2023 () ListLongMap!4427)

(get-info :version)

(assert (=> b!4719086 (= res!1995996 ((_ is Cons!52803) (toList!5897 lm!2023)))))

(declare-fun b!4719087 () Bool)

(declare-fun e!2943089 () Bool)

(assert (=> b!4719087 (= e!2943089 e!2943090)))

(declare-fun res!1995983 () Bool)

(assert (=> b!4719087 (=> (not res!1995983) (not e!2943090))))

(declare-datatypes ((ListMap!5261 0))(
  ( (ListMap!5262 (toList!5898 List!52926)) )
))
(declare-fun lt!1884357 () ListMap!5261)

(declare-fun key!4653 () K!14160)

(declare-fun contains!16150 (ListMap!5261 K!14160) Bool)

(assert (=> b!4719087 (= res!1995983 (contains!16150 lt!1884357 key!4653))))

(declare-fun extractMap!2030 (List!52927) ListMap!5261)

(assert (=> b!4719087 (= lt!1884357 (extractMap!2030 (toList!5897 lm!2023)))))

(declare-fun tp_is_empty!31309 () Bool)

(declare-fun e!2943084 () Bool)

(declare-fun tp!1348215 () Bool)

(declare-fun tp_is_empty!31311 () Bool)

(declare-fun b!4719088 () Bool)

(assert (=> b!4719088 (= e!2943084 (and tp_is_empty!31309 tp_is_empty!31311 tp!1348215))))

(declare-fun b!4719089 () Bool)

(declare-fun e!2943086 () Bool)

(declare-fun lt!1884359 () List!52926)

(declare-fun noDuplicateKeys!2004 (List!52926) Bool)

(assert (=> b!4719089 (= e!2943086 (noDuplicateKeys!2004 lt!1884359))))

(declare-fun b!4719090 () Bool)

(declare-fun res!1995985 () Bool)

(assert (=> b!4719090 (=> (not res!1995985) (not e!2943089))))

(declare-fun newBucket!218 () List!52926)

(declare-fun oldBucket!34 () List!52926)

(declare-fun removePairForKey!1599 (List!52926 K!14160) List!52926)

(assert (=> b!4719090 (= res!1995985 (= (removePairForKey!1599 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4719091 () Bool)

(declare-fun res!1995989 () Bool)

(assert (=> b!4719091 (=> (not res!1995989) (not e!2943089))))

(assert (=> b!4719091 (= res!1995989 (noDuplicateKeys!2004 newBucket!218))))

(declare-fun b!4719092 () Bool)

(declare-fun res!1995986 () Bool)

(assert (=> b!4719092 (=> res!1995986 e!2943086)))

(declare-fun lt!1884358 () ListMap!5261)

(declare-fun addToMapMapFromBucket!1434 (List!52926 ListMap!5261) ListMap!5261)

(assert (=> b!4719092 (= res!1995986 (not (= (addToMapMapFromBucket!1434 lt!1884359 lt!1884358) (addToMapMapFromBucket!1434 newBucket!218 lt!1884358))))))

(declare-fun b!4719093 () Bool)

(declare-fun tp!1348216 () Bool)

(declare-fun e!2943088 () Bool)

(assert (=> b!4719093 (= e!2943088 (and tp_is_empty!31309 tp_is_empty!31311 tp!1348216))))

(declare-fun b!4719094 () Bool)

(declare-fun res!1995991 () Bool)

(assert (=> b!4719094 (=> (not res!1995991) (not e!2943090))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6373 0))(
  ( (HashableExt!6372 (__x!32076 Int)) )
))
(declare-fun hashF!1323 () Hashable!6373)

(declare-fun allKeysSameHash!1830 (List!52926 (_ BitVec 64) Hashable!6373) Bool)

(assert (=> b!4719094 (= res!1995991 (allKeysSameHash!1830 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4719095 () Bool)

(declare-fun e!2943085 () Bool)

(assert (=> b!4719095 (= e!2943090 (not e!2943085))))

(declare-fun res!1995988 () Bool)

(assert (=> b!4719095 (=> res!1995988 e!2943085)))

(assert (=> b!4719095 (= res!1995988 (or (not ((_ is Cons!52802) oldBucket!34)) (not (= (_1!30499 (h!59141 oldBucket!34)) key!4653))))))

(assert (=> b!4719095 (= lt!1884357 (addToMapMapFromBucket!1434 (_2!30500 (h!59142 (toList!5897 lm!2023))) lt!1884358))))

(assert (=> b!4719095 (= lt!1884358 (extractMap!2030 (t!360183 (toList!5897 lm!2023))))))

(declare-fun tail!8974 (ListLongMap!4427) ListLongMap!4427)

(assert (=> b!4719095 (= (t!360183 (toList!5897 lm!2023)) (toList!5897 (tail!8974 lm!2023)))))

(declare-fun b!4719096 () Bool)

(declare-fun res!1995987 () Bool)

(assert (=> b!4719096 (=> (not res!1995987) (not e!2943089))))

(assert (=> b!4719096 (= res!1995987 (noDuplicateKeys!2004 oldBucket!34))))

(declare-fun b!4719097 () Bool)

(declare-fun res!1995997 () Bool)

(assert (=> b!4719097 (=> (not res!1995997) (not e!2943090))))

(declare-fun hash!4366 (Hashable!6373 K!14160) (_ BitVec 64))

(assert (=> b!4719097 (= res!1995997 (= (hash!4366 hashF!1323 key!4653) hash!405))))

(declare-fun b!4719098 () Bool)

(declare-fun e!2943087 () Bool)

(declare-fun tp!1348217 () Bool)

(assert (=> b!4719098 (= e!2943087 tp!1348217)))

(declare-fun res!1995984 () Bool)

(assert (=> start!480264 (=> (not res!1995984) (not e!2943089))))

(declare-fun lambda!214758 () Int)

(declare-fun forall!11566 (List!52927 Int) Bool)

(assert (=> start!480264 (= res!1995984 (forall!11566 (toList!5897 lm!2023) lambda!214758))))

(assert (=> start!480264 e!2943089))

(declare-fun inv!68034 (ListLongMap!4427) Bool)

(assert (=> start!480264 (and (inv!68034 lm!2023) e!2943087)))

(assert (=> start!480264 tp_is_empty!31309))

(assert (=> start!480264 e!2943088))

(assert (=> start!480264 true))

(assert (=> start!480264 e!2943084))

(declare-fun b!4719099 () Bool)

(assert (=> b!4719099 (= e!2943085 e!2943086)))

(declare-fun res!1995994 () Bool)

(assert (=> b!4719099 (=> res!1995994 e!2943086)))

(assert (=> b!4719099 (= res!1995994 (not (= lt!1884359 newBucket!218)))))

(declare-fun tail!8975 (List!52926) List!52926)

(assert (=> b!4719099 (= lt!1884359 (tail!8975 oldBucket!34))))

(declare-fun b!4719100 () Bool)

(declare-fun res!1995990 () Bool)

(assert (=> b!4719100 (=> res!1995990 e!2943086)))

(assert (=> b!4719100 (= res!1995990 (not (= (extractMap!2030 (Cons!52803 (tuple2!54413 hash!405 lt!1884359) (t!360183 (toList!5897 lm!2023)))) (extractMap!2030 (Cons!52803 (tuple2!54413 hash!405 newBucket!218) (t!360183 (toList!5897 lm!2023)))))))))

(declare-fun b!4719101 () Bool)

(declare-fun res!1995995 () Bool)

(assert (=> b!4719101 (=> (not res!1995995) (not e!2943089))))

(assert (=> b!4719101 (= res!1995995 (allKeysSameHash!1830 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4719102 () Bool)

(declare-fun res!1995993 () Bool)

(assert (=> b!4719102 (=> (not res!1995993) (not e!2943090))))

(declare-fun allKeysSameHashInMap!1918 (ListLongMap!4427 Hashable!6373) Bool)

(assert (=> b!4719102 (= res!1995993 (allKeysSameHashInMap!1918 lm!2023 hashF!1323))))

(declare-fun b!4719103 () Bool)

(declare-fun res!1995992 () Bool)

(assert (=> b!4719103 (=> (not res!1995992) (not e!2943090))))

(declare-fun head!10230 (List!52927) tuple2!54412)

(assert (=> b!4719103 (= res!1995992 (= (head!10230 (toList!5897 lm!2023)) (tuple2!54413 hash!405 oldBucket!34)))))

(assert (= (and start!480264 res!1995984) b!4719096))

(assert (= (and b!4719096 res!1995987) b!4719091))

(assert (= (and b!4719091 res!1995989) b!4719090))

(assert (= (and b!4719090 res!1995985) b!4719101))

(assert (= (and b!4719101 res!1995995) b!4719087))

(assert (= (and b!4719087 res!1995983) b!4719097))

(assert (= (and b!4719097 res!1995997) b!4719094))

(assert (= (and b!4719094 res!1995991) b!4719102))

(assert (= (and b!4719102 res!1995993) b!4719103))

(assert (= (and b!4719103 res!1995992) b!4719086))

(assert (= (and b!4719086 res!1995996) b!4719095))

(assert (= (and b!4719095 (not res!1995988)) b!4719099))

(assert (= (and b!4719099 (not res!1995994)) b!4719100))

(assert (= (and b!4719100 (not res!1995990)) b!4719092))

(assert (= (and b!4719092 (not res!1995986)) b!4719089))

(assert (= start!480264 b!4719098))

(assert (= (and start!480264 ((_ is Cons!52802) oldBucket!34)) b!4719093))

(assert (= (and start!480264 ((_ is Cons!52802) newBucket!218)) b!4719088))

(declare-fun m!5651023 () Bool)

(assert (=> b!4719097 m!5651023))

(declare-fun m!5651025 () Bool)

(assert (=> b!4719092 m!5651025))

(declare-fun m!5651027 () Bool)

(assert (=> b!4719092 m!5651027))

(declare-fun m!5651029 () Bool)

(assert (=> b!4719100 m!5651029))

(declare-fun m!5651031 () Bool)

(assert (=> b!4719100 m!5651031))

(declare-fun m!5651033 () Bool)

(assert (=> b!4719090 m!5651033))

(declare-fun m!5651035 () Bool)

(assert (=> b!4719103 m!5651035))

(declare-fun m!5651037 () Bool)

(assert (=> b!4719099 m!5651037))

(declare-fun m!5651039 () Bool)

(assert (=> b!4719102 m!5651039))

(declare-fun m!5651041 () Bool)

(assert (=> b!4719091 m!5651041))

(declare-fun m!5651043 () Bool)

(assert (=> b!4719089 m!5651043))

(declare-fun m!5651045 () Bool)

(assert (=> b!4719095 m!5651045))

(declare-fun m!5651047 () Bool)

(assert (=> b!4719095 m!5651047))

(declare-fun m!5651049 () Bool)

(assert (=> b!4719095 m!5651049))

(declare-fun m!5651051 () Bool)

(assert (=> b!4719087 m!5651051))

(declare-fun m!5651053 () Bool)

(assert (=> b!4719087 m!5651053))

(declare-fun m!5651055 () Bool)

(assert (=> b!4719101 m!5651055))

(declare-fun m!5651057 () Bool)

(assert (=> start!480264 m!5651057))

(declare-fun m!5651059 () Bool)

(assert (=> start!480264 m!5651059))

(declare-fun m!5651061 () Bool)

(assert (=> b!4719094 m!5651061))

(declare-fun m!5651063 () Bool)

(assert (=> b!4719096 m!5651063))

(check-sat (not b!4719095) (not b!4719102) tp_is_empty!31309 (not b!4719099) (not start!480264) (not b!4719093) (not b!4719101) (not b!4719096) (not b!4719097) (not b!4719090) (not b!4719103) (not b!4719098) (not b!4719100) (not b!4719087) tp_is_empty!31311 (not b!4719094) (not b!4719092) (not b!4719088) (not b!4719089) (not b!4719091))
(check-sat)
