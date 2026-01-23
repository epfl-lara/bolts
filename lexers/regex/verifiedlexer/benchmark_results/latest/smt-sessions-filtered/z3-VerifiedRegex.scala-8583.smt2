; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!456028 () Bool)

(assert start!456028)

(declare-fun bs!971849 () Bool)

(declare-fun b!4579991 () Bool)

(assert (= bs!971849 (and b!4579991 start!456028)))

(declare-fun lambda!183042 () Int)

(declare-fun lambda!183041 () Int)

(assert (=> bs!971849 (not (= lambda!183042 lambda!183041))))

(assert (=> b!4579991 true))

(assert (=> b!4579991 true))

(assert (=> b!4579991 true))

(declare-fun b!4579962 () Bool)

(declare-fun res!1913481 () Bool)

(declare-fun e!2855989 () Bool)

(assert (=> b!4579962 (=> res!1913481 e!2855989)))

(declare-datatypes ((K!12320 0))(
  ( (K!12321 (val!18127 Int)) )
))
(declare-datatypes ((V!12566 0))(
  ( (V!12567 (val!18128 Int)) )
))
(declare-datatypes ((tuple2!51522 0))(
  ( (tuple2!51523 (_1!29055 K!12320) (_2!29055 V!12566)) )
))
(declare-datatypes ((List!51074 0))(
  ( (Nil!50950) (Cons!50950 (h!56885 tuple2!51522) (t!358064 List!51074)) )
))
(declare-datatypes ((tuple2!51524 0))(
  ( (tuple2!51525 (_1!29056 (_ BitVec 64)) (_2!29056 List!51074)) )
))
(declare-datatypes ((List!51075 0))(
  ( (Nil!50951) (Cons!50951 (h!56886 tuple2!51524) (t!358065 List!51075)) )
))
(declare-datatypes ((ListLongMap!3183 0))(
  ( (ListLongMap!3184 (toList!4551 List!51075)) )
))
(declare-fun lm!1477 () ListLongMap!3183)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4579962 (= res!1913481 (or ((_ is Nil!50951) (toList!4551 lm!1477)) (= (_1!29056 (h!56886 (toList!4551 lm!1477))) hash!344)))))

(declare-fun b!4579963 () Bool)

(declare-datatypes ((Unit!105525 0))(
  ( (Unit!105526) )
))
(declare-fun e!2855981 () Unit!105525)

(declare-fun Unit!105527 () Unit!105525)

(assert (=> b!4579963 (= e!2855981 Unit!105527)))

(declare-fun b!4579965 () Bool)

(declare-fun e!2855982 () Bool)

(declare-fun e!2855999 () Bool)

(assert (=> b!4579965 (= e!2855982 e!2855999)))

(declare-fun res!1913486 () Bool)

(assert (=> b!4579965 (=> res!1913486 e!2855999)))

(declare-datatypes ((ListMap!3813 0))(
  ( (ListMap!3814 (toList!4552 List!51074)) )
))
(declare-fun lt!1745222 () ListMap!3813)

(declare-fun lt!1745233 () ListMap!3813)

(declare-fun eq!711 (ListMap!3813 ListMap!3813) Bool)

(assert (=> b!4579965 (= res!1913486 (not (eq!711 lt!1745222 lt!1745233)))))

(declare-fun lt!1745224 () ListMap!3813)

(assert (=> b!4579965 (eq!711 lt!1745224 lt!1745233)))

(declare-fun lt!1745216 () tuple2!51524)

(declare-fun lt!1745214 () ListMap!3813)

(declare-fun addToMapMapFromBucket!785 (List!51074 ListMap!3813) ListMap!3813)

(assert (=> b!4579965 (= lt!1745233 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745214))))

(declare-fun lt!1745218 () ListMap!3813)

(declare-fun lt!1745234 () Unit!105525)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!96 (ListMap!3813 ListMap!3813 List!51074) Unit!105525)

(assert (=> b!4579965 (= lt!1745234 (lemmaAddToMapFromBucketPreservesEquivalence!96 lt!1745218 lt!1745214 (_2!29056 lt!1745216)))))

(declare-fun b!4579966 () Bool)

(declare-fun e!2855990 () Bool)

(declare-fun e!2855996 () Bool)

(assert (=> b!4579966 (= e!2855990 e!2855996)))

(declare-fun res!1913490 () Bool)

(assert (=> b!4579966 (=> res!1913490 e!2855996)))

(declare-fun key!3287 () K!12320)

(declare-fun containsKeyBiggerList!242 (List!51075 K!12320) Bool)

(assert (=> b!4579966 (= res!1913490 (not (containsKeyBiggerList!242 (t!358065 (toList!4551 lm!1477)) key!3287)))))

(declare-fun lt!1745235 () ListLongMap!3183)

(assert (=> b!4579966 (containsKeyBiggerList!242 (toList!4551 lt!1745235) key!3287)))

(declare-datatypes ((Hashable!5667 0))(
  ( (HashableExt!5666 (__x!31370 Int)) )
))
(declare-fun hashF!1107 () Hashable!5667)

(declare-fun lt!1745244 () Unit!105525)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!154 (ListLongMap!3183 K!12320 Hashable!5667) Unit!105525)

(assert (=> b!4579966 (= lt!1745244 (lemmaInLongMapThenContainsKeyBiggerList!154 lt!1745235 key!3287 hashF!1107))))

(declare-fun b!4579967 () Bool)

(declare-fun res!1913493 () Bool)

(declare-fun e!2855983 () Bool)

(assert (=> b!4579967 (=> res!1913493 e!2855983)))

(declare-fun lt!1745215 () tuple2!51524)

(declare-fun contains!13845 (List!51075 tuple2!51524) Bool)

(assert (=> b!4579967 (= res!1913493 (not (contains!13845 (t!358065 (toList!4551 lm!1477)) lt!1745215)))))

(declare-fun b!4579968 () Bool)

(assert (=> b!4579968 (= e!2855983 e!2855990)))

(declare-fun res!1913479 () Bool)

(assert (=> b!4579968 (=> res!1913479 e!2855990)))

(declare-fun lt!1745219 () Bool)

(assert (=> b!4579968 (= res!1913479 lt!1745219)))

(declare-fun lt!1745236 () Unit!105525)

(assert (=> b!4579968 (= lt!1745236 e!2855981)))

(declare-fun c!783850 () Bool)

(assert (=> b!4579968 (= c!783850 lt!1745219)))

(declare-fun lt!1745226 () List!51074)

(declare-fun containsKey!2054 (List!51074 K!12320) Bool)

(assert (=> b!4579968 (= lt!1745219 (not (containsKey!2054 lt!1745226 key!3287)))))

(declare-fun b!4579969 () Bool)

(declare-fun e!2855987 () Bool)

(assert (=> b!4579969 (= e!2855996 e!2855987)))

(declare-fun res!1913483 () Bool)

(assert (=> b!4579969 (=> res!1913483 e!2855987)))

(declare-fun contains!13846 (ListMap!3813 K!12320) Bool)

(declare-fun extractMap!1328 (List!51075) ListMap!3813)

(assert (=> b!4579969 (= res!1913483 (not (contains!13846 (extractMap!1328 (t!358065 (toList!4551 lm!1477))) key!3287)))))

(declare-fun lt!1745232 () ListMap!3813)

(assert (=> b!4579969 (contains!13846 lt!1745232 key!3287)))

(assert (=> b!4579969 (= lt!1745232 (extractMap!1328 (toList!4551 lt!1745235)))))

(declare-fun lt!1745229 () Unit!105525)

(declare-fun lemmaListContainsThenExtractedMapContains!228 (ListLongMap!3183 K!12320 Hashable!5667) Unit!105525)

(assert (=> b!4579969 (= lt!1745229 (lemmaListContainsThenExtractedMapContains!228 lt!1745235 key!3287 hashF!1107))))

(declare-fun b!4579970 () Bool)

(declare-fun res!1913476 () Bool)

(declare-fun e!2855992 () Bool)

(assert (=> b!4579970 (=> res!1913476 e!2855992)))

(declare-fun lt!1745223 () ListLongMap!3183)

(declare-fun head!9538 (ListLongMap!3183) tuple2!51524)

(assert (=> b!4579970 (= res!1913476 (not (= (head!9538 lt!1745223) lt!1745216)))))

(declare-fun b!4579971 () Bool)

(declare-fun e!2855988 () Bool)

(declare-fun e!2855995 () Bool)

(assert (=> b!4579971 (= e!2855988 e!2855995)))

(declare-fun res!1913471 () Bool)

(assert (=> b!4579971 (=> res!1913471 e!2855995)))

(declare-fun lt!1745241 () Bool)

(assert (=> b!4579971 (= res!1913471 lt!1745241)))

(declare-fun lt!1745237 () Unit!105525)

(declare-fun e!2855998 () Unit!105525)

(assert (=> b!4579971 (= lt!1745237 e!2855998)))

(declare-fun c!783849 () Bool)

(assert (=> b!4579971 (= c!783849 lt!1745241)))

(assert (=> b!4579971 (= lt!1745241 (containsKey!2054 (_2!29056 lt!1745216) key!3287))))

(declare-fun b!4579972 () Bool)

(declare-fun res!1913485 () Bool)

(declare-fun e!2855985 () Bool)

(assert (=> b!4579972 (=> res!1913485 e!2855985)))

(assert (=> b!4579972 (= res!1913485 (bvsge (_1!29056 lt!1745216) hash!344))))

(declare-fun b!4579973 () Bool)

(declare-fun e!2855984 () Bool)

(declare-fun tp!1339736 () Bool)

(assert (=> b!4579973 (= e!2855984 tp!1339736)))

(declare-fun b!4579974 () Bool)

(declare-fun e!2855986 () Bool)

(declare-fun e!2855994 () Bool)

(assert (=> b!4579974 (= e!2855986 e!2855994)))

(declare-fun res!1913489 () Bool)

(assert (=> b!4579974 (=> (not res!1913489) (not e!2855994))))

(declare-fun lt!1745221 () (_ BitVec 64))

(assert (=> b!4579974 (= res!1913489 (= lt!1745221 hash!344))))

(declare-fun hash!3119 (Hashable!5667 K!12320) (_ BitVec 64))

(assert (=> b!4579974 (= lt!1745221 (hash!3119 hashF!1107 key!3287))))

(declare-fun b!4579975 () Bool)

(assert (=> b!4579975 (= e!2855987 e!2855985)))

(declare-fun res!1913488 () Bool)

(assert (=> b!4579975 (=> res!1913488 e!2855985)))

(declare-fun lt!1745242 () ListMap!3813)

(declare-fun lt!1745243 () ListMap!3813)

(assert (=> b!4579975 (= res!1913488 (not (eq!711 lt!1745242 lt!1745243)))))

(declare-fun +!1708 (ListLongMap!3183 tuple2!51524) ListLongMap!3183)

(assert (=> b!4579975 (= lt!1745242 (extractMap!1328 (toList!4551 (+!1708 lt!1745235 lt!1745216))))))

(assert (=> b!4579975 (= lt!1745216 (head!9538 lm!1477))))

(assert (=> b!4579975 (eq!711 lt!1745218 lt!1745214)))

(declare-fun -!480 (ListMap!3813 K!12320) ListMap!3813)

(assert (=> b!4579975 (= lt!1745214 (-!480 lt!1745232 key!3287))))

(declare-fun lt!1745230 () ListLongMap!3183)

(assert (=> b!4579975 (= lt!1745218 (extractMap!1328 (toList!4551 lt!1745230)))))

(declare-fun lt!1745211 () tuple2!51524)

(assert (=> b!4579975 (= lt!1745230 (+!1708 lt!1745235 lt!1745211))))

(declare-fun newBucket!178 () List!51074)

(assert (=> b!4579975 (= lt!1745211 (tuple2!51525 hash!344 newBucket!178))))

(declare-fun lt!1745227 () Unit!105525)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!219 (ListLongMap!3183 (_ BitVec 64) List!51074 K!12320 Hashable!5667) Unit!105525)

(assert (=> b!4579975 (= lt!1745227 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!219 lt!1745235 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4579976 () Bool)

(assert (=> b!4579976 (= e!2855992 e!2855982)))

(declare-fun res!1913474 () Bool)

(assert (=> b!4579976 (=> res!1913474 e!2855982)))

(assert (=> b!4579976 (= res!1913474 (not (eq!711 lt!1745222 lt!1745224)))))

(assert (=> b!4579976 (= lt!1745224 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745218))))

(assert (=> b!4579976 (= lt!1745222 (extractMap!1328 (toList!4551 lt!1745223)))))

(declare-fun b!4579977 () Bool)

(declare-fun Unit!105528 () Unit!105525)

(assert (=> b!4579977 (= e!2855981 Unit!105528)))

(declare-fun lt!1745217 () Unit!105525)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!254 (ListLongMap!3183 K!12320 Hashable!5667) Unit!105525)

(assert (=> b!4579977 (= lt!1745217 (lemmaNotInItsHashBucketThenNotInMap!254 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4579977 false))

(declare-fun b!4579978 () Bool)

(declare-fun e!2855991 () Bool)

(assert (=> b!4579978 (= e!2855995 e!2855991)))

(declare-fun res!1913473 () Bool)

(assert (=> b!4579978 (=> res!1913473 e!2855991)))

(declare-fun lt!1745225 () ListMap!3813)

(assert (=> b!4579978 (= res!1913473 (not (eq!711 lt!1745233 lt!1745225)))))

(assert (=> b!4579978 (= lt!1745233 lt!1745225)))

(assert (=> b!4579978 (= lt!1745225 (-!480 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232) key!3287))))

(declare-fun lt!1745213 () Unit!105525)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!38 (ListMap!3813 K!12320 List!51074) Unit!105525)

(assert (=> b!4579978 (= lt!1745213 (lemmaAddToMapFromBucketMinusKeyIsCommutative!38 lt!1745232 key!3287 (_2!29056 lt!1745216)))))

(declare-fun b!4579979 () Bool)

(declare-fun res!1913482 () Bool)

(assert (=> b!4579979 (=> res!1913482 e!2855989)))

(declare-fun noDuplicateKeys!1272 (List!51074) Bool)

(assert (=> b!4579979 (= res!1913482 (not (noDuplicateKeys!1272 newBucket!178)))))

(declare-fun b!4579980 () Bool)

(declare-fun Unit!105529 () Unit!105525)

(assert (=> b!4579980 (= e!2855998 Unit!105529)))

(declare-fun b!4579964 () Bool)

(assert (=> b!4579964 (= e!2855999 e!2855988)))

(declare-fun res!1913470 () Bool)

(assert (=> b!4579964 (=> res!1913470 e!2855988)))

(assert (=> b!4579964 (= res!1913470 (not (noDuplicateKeys!1272 (_2!29056 lt!1745216))))))

(declare-fun lt!1745231 () Unit!105525)

(declare-fun forallContained!2764 (List!51075 Int tuple2!51524) Unit!105525)

(assert (=> b!4579964 (= lt!1745231 (forallContained!2764 (toList!4551 lm!1477) lambda!183041 (h!56886 (toList!4551 lm!1477))))))

(declare-fun res!1913491 () Bool)

(declare-fun e!2855993 () Bool)

(assert (=> start!456028 (=> (not res!1913491) (not e!2855993))))

(declare-fun forall!10500 (List!51075 Int) Bool)

(assert (=> start!456028 (= res!1913491 (forall!10500 (toList!4551 lm!1477) lambda!183041))))

(assert (=> start!456028 e!2855993))

(assert (=> start!456028 true))

(declare-fun inv!66504 (ListLongMap!3183) Bool)

(assert (=> start!456028 (and (inv!66504 lm!1477) e!2855984)))

(declare-fun tp_is_empty!28365 () Bool)

(assert (=> start!456028 tp_is_empty!28365))

(declare-fun e!2855997 () Bool)

(assert (=> start!456028 e!2855997))

(declare-fun b!4579981 () Bool)

(declare-fun res!1913480 () Bool)

(assert (=> b!4579981 (=> res!1913480 e!2855983)))

(declare-fun apply!12009 (ListLongMap!3183 (_ BitVec 64)) List!51074)

(assert (=> b!4579981 (= res!1913480 (not (= (apply!12009 lt!1745235 hash!344) lt!1745226)))))

(declare-fun b!4579982 () Bool)

(declare-fun res!1913487 () Bool)

(assert (=> b!4579982 (=> res!1913487 e!2855985)))

(assert (=> b!4579982 (= res!1913487 (not (eq!711 lt!1745243 lt!1745242)))))

(declare-fun b!4579983 () Bool)

(assert (=> b!4579983 (= e!2855993 e!2855986)))

(declare-fun res!1913484 () Bool)

(assert (=> b!4579983 (=> (not res!1913484) (not e!2855986))))

(assert (=> b!4579983 (= res!1913484 (contains!13846 lt!1745243 key!3287))))

(assert (=> b!4579983 (= lt!1745243 (extractMap!1328 (toList!4551 lm!1477)))))

(declare-fun b!4579984 () Bool)

(assert (=> b!4579984 (= e!2855985 e!2855992)))

(declare-fun res!1913475 () Bool)

(assert (=> b!4579984 (=> res!1913475 e!2855992)))

(assert (=> b!4579984 (= res!1913475 (not (= lt!1745223 (+!1708 lm!1477 lt!1745211))))))

(assert (=> b!4579984 (= lt!1745223 (+!1708 lt!1745230 lt!1745216))))

(declare-fun b!4579985 () Bool)

(assert (=> b!4579985 (= e!2855989 e!2855983)))

(declare-fun res!1913472 () Bool)

(assert (=> b!4579985 (=> res!1913472 e!2855983)))

(declare-fun contains!13847 (ListLongMap!3183 (_ BitVec 64)) Bool)

(assert (=> b!4579985 (= res!1913472 (not (contains!13847 lt!1745235 hash!344)))))

(declare-fun tail!7917 (ListLongMap!3183) ListLongMap!3183)

(assert (=> b!4579985 (= lt!1745235 (tail!7917 lm!1477))))

(declare-fun b!4579986 () Bool)

(assert (=> b!4579986 (= e!2855994 (not e!2855989))))

(declare-fun res!1913478 () Bool)

(assert (=> b!4579986 (=> res!1913478 e!2855989)))

(declare-fun removePairForKey!899 (List!51074 K!12320) List!51074)

(assert (=> b!4579986 (= res!1913478 (not (= newBucket!178 (removePairForKey!899 lt!1745226 key!3287))))))

(declare-fun lt!1745240 () Unit!105525)

(assert (=> b!4579986 (= lt!1745240 (forallContained!2764 (toList!4551 lm!1477) lambda!183041 lt!1745215))))

(assert (=> b!4579986 (contains!13845 (toList!4551 lm!1477) lt!1745215)))

(assert (=> b!4579986 (= lt!1745215 (tuple2!51525 hash!344 lt!1745226))))

(declare-fun lt!1745220 () Unit!105525)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!784 (List!51075 (_ BitVec 64) List!51074) Unit!105525)

(assert (=> b!4579986 (= lt!1745220 (lemmaGetValueByKeyImpliesContainsTuple!784 (toList!4551 lm!1477) hash!344 lt!1745226))))

(assert (=> b!4579986 (= lt!1745226 (apply!12009 lm!1477 hash!344))))

(assert (=> b!4579986 (contains!13847 lm!1477 lt!1745221)))

(declare-fun lt!1745239 () Unit!105525)

(declare-fun lemmaInGenMapThenLongMapContainsHash!346 (ListLongMap!3183 K!12320 Hashable!5667) Unit!105525)

(assert (=> b!4579986 (= lt!1745239 (lemmaInGenMapThenLongMapContainsHash!346 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4579987 () Bool)

(assert (=> b!4579987 (= e!2855991 (eq!711 lt!1745233 (-!480 lt!1745243 key!3287)))))

(declare-fun b!4579988 () Bool)

(declare-fun res!1913477 () Bool)

(assert (=> b!4579988 (=> (not res!1913477) (not e!2855994))))

(declare-fun allKeysSameHash!1126 (List!51074 (_ BitVec 64) Hashable!5667) Bool)

(assert (=> b!4579988 (= res!1913477 (allKeysSameHash!1126 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4579989 () Bool)

(declare-fun res!1913492 () Bool)

(assert (=> b!4579989 (=> (not res!1913492) (not e!2855993))))

(declare-fun allKeysSameHashInMap!1379 (ListLongMap!3183 Hashable!5667) Bool)

(assert (=> b!4579989 (= res!1913492 (allKeysSameHashInMap!1379 lm!1477 hashF!1107))))

(declare-fun tp!1339737 () Bool)

(declare-fun b!4579990 () Bool)

(declare-fun tp_is_empty!28367 () Bool)

(assert (=> b!4579990 (= e!2855997 (and tp_is_empty!28365 tp_is_empty!28367 tp!1339737))))

(declare-fun Unit!105530 () Unit!105525)

(assert (=> b!4579991 (= e!2855998 Unit!105530)))

(assert (=> b!4579991 (not (= hash!344 (_1!29056 lt!1745216)))))

(declare-datatypes ((Option!11325 0))(
  ( (None!11324) (Some!11324 (v!45200 tuple2!51522)) )
))
(declare-fun lt!1745212 () Option!11325)

(declare-fun getPair!232 (List!51074 K!12320) Option!11325)

(assert (=> b!4579991 (= lt!1745212 (getPair!232 (_2!29056 lt!1745216) key!3287))))

(declare-fun lt!1745228 () Unit!105525)

(assert (=> b!4579991 (= lt!1745228 (forallContained!2764 (toList!4551 lm!1477) lambda!183042 (h!56886 (toList!4551 lm!1477))))))

(declare-fun lt!1745238 () Unit!105525)

(declare-fun lambda!183043 () Int)

(declare-fun forallContained!2765 (List!51074 Int tuple2!51522) Unit!105525)

(declare-fun get!16814 (Option!11325) tuple2!51522)

(assert (=> b!4579991 (= lt!1745238 (forallContained!2765 (_2!29056 (h!56886 (toList!4551 lm!1477))) lambda!183043 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))))))

(assert (=> b!4579991 false))

(assert (= (and start!456028 res!1913491) b!4579989))

(assert (= (and b!4579989 res!1913492) b!4579983))

(assert (= (and b!4579983 res!1913484) b!4579974))

(assert (= (and b!4579974 res!1913489) b!4579988))

(assert (= (and b!4579988 res!1913477) b!4579986))

(assert (= (and b!4579986 (not res!1913478)) b!4579979))

(assert (= (and b!4579979 (not res!1913482)) b!4579962))

(assert (= (and b!4579962 (not res!1913481)) b!4579985))

(assert (= (and b!4579985 (not res!1913472)) b!4579981))

(assert (= (and b!4579981 (not res!1913480)) b!4579967))

(assert (= (and b!4579967 (not res!1913493)) b!4579968))

(assert (= (and b!4579968 c!783850) b!4579977))

(assert (= (and b!4579968 (not c!783850)) b!4579963))

(assert (= (and b!4579968 (not res!1913479)) b!4579966))

(assert (= (and b!4579966 (not res!1913490)) b!4579969))

(assert (= (and b!4579969 (not res!1913483)) b!4579975))

(assert (= (and b!4579975 (not res!1913488)) b!4579982))

(assert (= (and b!4579982 (not res!1913487)) b!4579972))

(assert (= (and b!4579972 (not res!1913485)) b!4579984))

(assert (= (and b!4579984 (not res!1913475)) b!4579970))

(assert (= (and b!4579970 (not res!1913476)) b!4579976))

(assert (= (and b!4579976 (not res!1913474)) b!4579965))

(assert (= (and b!4579965 (not res!1913486)) b!4579964))

(assert (= (and b!4579964 (not res!1913470)) b!4579971))

(assert (= (and b!4579971 c!783849) b!4579991))

(assert (= (and b!4579971 (not c!783849)) b!4579980))

(assert (= (and b!4579971 (not res!1913471)) b!4579978))

(assert (= (and b!4579978 (not res!1913473)) b!4579987))

(assert (= start!456028 b!4579973))

(assert (= (and start!456028 ((_ is Cons!50950) newBucket!178)) b!4579990))

(declare-fun m!5389735 () Bool)

(assert (=> b!4579968 m!5389735))

(declare-fun m!5389737 () Bool)

(assert (=> b!4579976 m!5389737))

(declare-fun m!5389739 () Bool)

(assert (=> b!4579976 m!5389739))

(declare-fun m!5389741 () Bool)

(assert (=> b!4579976 m!5389741))

(declare-fun m!5389743 () Bool)

(assert (=> b!4579970 m!5389743))

(declare-fun m!5389745 () Bool)

(assert (=> b!4579965 m!5389745))

(declare-fun m!5389747 () Bool)

(assert (=> b!4579965 m!5389747))

(declare-fun m!5389749 () Bool)

(assert (=> b!4579965 m!5389749))

(declare-fun m!5389751 () Bool)

(assert (=> b!4579965 m!5389751))

(declare-fun m!5389753 () Bool)

(assert (=> b!4579967 m!5389753))

(declare-fun m!5389755 () Bool)

(assert (=> b!4579969 m!5389755))

(declare-fun m!5389757 () Bool)

(assert (=> b!4579969 m!5389757))

(declare-fun m!5389759 () Bool)

(assert (=> b!4579969 m!5389759))

(declare-fun m!5389761 () Bool)

(assert (=> b!4579969 m!5389761))

(assert (=> b!4579969 m!5389761))

(declare-fun m!5389763 () Bool)

(assert (=> b!4579969 m!5389763))

(declare-fun m!5389765 () Bool)

(assert (=> b!4579964 m!5389765))

(declare-fun m!5389767 () Bool)

(assert (=> b!4579964 m!5389767))

(declare-fun m!5389769 () Bool)

(assert (=> b!4579975 m!5389769))

(declare-fun m!5389771 () Bool)

(assert (=> b!4579975 m!5389771))

(declare-fun m!5389773 () Bool)

(assert (=> b!4579975 m!5389773))

(declare-fun m!5389775 () Bool)

(assert (=> b!4579975 m!5389775))

(declare-fun m!5389777 () Bool)

(assert (=> b!4579975 m!5389777))

(declare-fun m!5389779 () Bool)

(assert (=> b!4579975 m!5389779))

(declare-fun m!5389781 () Bool)

(assert (=> b!4579975 m!5389781))

(declare-fun m!5389783 () Bool)

(assert (=> b!4579975 m!5389783))

(declare-fun m!5389785 () Bool)

(assert (=> b!4579975 m!5389785))

(declare-fun m!5389787 () Bool)

(assert (=> b!4579979 m!5389787))

(declare-fun m!5389789 () Bool)

(assert (=> b!4579971 m!5389789))

(declare-fun m!5389791 () Bool)

(assert (=> b!4579978 m!5389791))

(declare-fun m!5389793 () Bool)

(assert (=> b!4579978 m!5389793))

(assert (=> b!4579978 m!5389793))

(declare-fun m!5389795 () Bool)

(assert (=> b!4579978 m!5389795))

(declare-fun m!5389797 () Bool)

(assert (=> b!4579978 m!5389797))

(declare-fun m!5389799 () Bool)

(assert (=> b!4579991 m!5389799))

(declare-fun m!5389801 () Bool)

(assert (=> b!4579991 m!5389801))

(declare-fun m!5389803 () Bool)

(assert (=> b!4579991 m!5389803))

(declare-fun m!5389805 () Bool)

(assert (=> b!4579991 m!5389805))

(declare-fun m!5389807 () Bool)

(assert (=> b!4579983 m!5389807))

(declare-fun m!5389809 () Bool)

(assert (=> b!4579983 m!5389809))

(declare-fun m!5389811 () Bool)

(assert (=> b!4579977 m!5389811))

(declare-fun m!5389813 () Bool)

(assert (=> b!4579989 m!5389813))

(declare-fun m!5389815 () Bool)

(assert (=> b!4579974 m!5389815))

(declare-fun m!5389817 () Bool)

(assert (=> start!456028 m!5389817))

(declare-fun m!5389819 () Bool)

(assert (=> start!456028 m!5389819))

(declare-fun m!5389821 () Bool)

(assert (=> b!4579966 m!5389821))

(declare-fun m!5389823 () Bool)

(assert (=> b!4579966 m!5389823))

(declare-fun m!5389825 () Bool)

(assert (=> b!4579966 m!5389825))

(declare-fun m!5389827 () Bool)

(assert (=> b!4579987 m!5389827))

(assert (=> b!4579987 m!5389827))

(declare-fun m!5389829 () Bool)

(assert (=> b!4579987 m!5389829))

(declare-fun m!5389831 () Bool)

(assert (=> b!4579988 m!5389831))

(declare-fun m!5389833 () Bool)

(assert (=> b!4579985 m!5389833))

(declare-fun m!5389835 () Bool)

(assert (=> b!4579985 m!5389835))

(declare-fun m!5389837 () Bool)

(assert (=> b!4579986 m!5389837))

(declare-fun m!5389839 () Bool)

(assert (=> b!4579986 m!5389839))

(declare-fun m!5389841 () Bool)

(assert (=> b!4579986 m!5389841))

(declare-fun m!5389843 () Bool)

(assert (=> b!4579986 m!5389843))

(declare-fun m!5389845 () Bool)

(assert (=> b!4579986 m!5389845))

(declare-fun m!5389847 () Bool)

(assert (=> b!4579986 m!5389847))

(declare-fun m!5389849 () Bool)

(assert (=> b!4579986 m!5389849))

(declare-fun m!5389851 () Bool)

(assert (=> b!4579981 m!5389851))

(declare-fun m!5389853 () Bool)

(assert (=> b!4579984 m!5389853))

(declare-fun m!5389855 () Bool)

(assert (=> b!4579984 m!5389855))

(declare-fun m!5389857 () Bool)

(assert (=> b!4579982 m!5389857))

(check-sat (not b!4579978) (not b!4579984) (not b!4579976) (not b!4579971) (not b!4579967) (not b!4579970) (not b!4579985) (not b!4579988) (not b!4579966) (not b!4579991) (not b!4579979) (not b!4579968) (not b!4579983) (not b!4579977) tp_is_empty!28367 (not start!456028) (not b!4579982) (not b!4579975) (not b!4579986) (not b!4579969) (not b!4579973) (not b!4579987) (not b!4579974) tp_is_empty!28365 (not b!4579989) (not b!4579965) (not b!4579964) (not b!4579981) (not b!4579990))
(check-sat)
(get-model)

(declare-fun d!1434004 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8586 (List!51074) (InoxSet tuple2!51522))

(assert (=> d!1434004 (= (eq!711 lt!1745243 lt!1745242) (= (content!8586 (toList!4552 lt!1745243)) (content!8586 (toList!4552 lt!1745242))))))

(declare-fun bs!971850 () Bool)

(assert (= bs!971850 d!1434004))

(declare-fun m!5389859 () Bool)

(assert (=> bs!971850 m!5389859))

(declare-fun m!5389861 () Bool)

(assert (=> bs!971850 m!5389861))

(assert (=> b!4579982 d!1434004))

(declare-fun d!1434008 () Bool)

(declare-datatypes ((Option!11327 0))(
  ( (None!11326) (Some!11326 (v!45206 List!51074)) )
))
(declare-fun get!16816 (Option!11327) List!51074)

(declare-fun getValueByKey!1253 (List!51075 (_ BitVec 64)) Option!11327)

(assert (=> d!1434008 (= (apply!12009 lt!1745235 hash!344) (get!16816 (getValueByKey!1253 (toList!4551 lt!1745235) hash!344)))))

(declare-fun bs!971851 () Bool)

(assert (= bs!971851 d!1434008))

(declare-fun m!5389863 () Bool)

(assert (=> bs!971851 m!5389863))

(assert (=> bs!971851 m!5389863))

(declare-fun m!5389865 () Bool)

(assert (=> bs!971851 m!5389865))

(assert (=> b!4579981 d!1434008))

(declare-fun d!1434010 () Bool)

(declare-fun e!2856017 () Bool)

(assert (=> d!1434010 e!2856017))

(declare-fun res!1913511 () Bool)

(assert (=> d!1434010 (=> (not res!1913511) (not e!2856017))))

(declare-fun lt!1745270 () ListLongMap!3183)

(assert (=> d!1434010 (= res!1913511 (contains!13847 lt!1745270 (_1!29056 lt!1745211)))))

(declare-fun lt!1745268 () List!51075)

(assert (=> d!1434010 (= lt!1745270 (ListLongMap!3184 lt!1745268))))

(declare-fun lt!1745271 () Unit!105525)

(declare-fun lt!1745269 () Unit!105525)

(assert (=> d!1434010 (= lt!1745271 lt!1745269)))

(assert (=> d!1434010 (= (getValueByKey!1253 lt!1745268 (_1!29056 lt!1745211)) (Some!11326 (_2!29056 lt!1745211)))))

(declare-fun lemmaContainsTupThenGetReturnValue!777 (List!51075 (_ BitVec 64) List!51074) Unit!105525)

(assert (=> d!1434010 (= lt!1745269 (lemmaContainsTupThenGetReturnValue!777 lt!1745268 (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))

(declare-fun insertStrictlySorted!477 (List!51075 (_ BitVec 64) List!51074) List!51075)

(assert (=> d!1434010 (= lt!1745268 (insertStrictlySorted!477 (toList!4551 lm!1477) (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))

(assert (=> d!1434010 (= (+!1708 lm!1477 lt!1745211) lt!1745270)))

(declare-fun b!4580020 () Bool)

(declare-fun res!1913510 () Bool)

(assert (=> b!4580020 (=> (not res!1913510) (not e!2856017))))

(assert (=> b!4580020 (= res!1913510 (= (getValueByKey!1253 (toList!4551 lt!1745270) (_1!29056 lt!1745211)) (Some!11326 (_2!29056 lt!1745211))))))

(declare-fun b!4580021 () Bool)

(assert (=> b!4580021 (= e!2856017 (contains!13845 (toList!4551 lt!1745270) lt!1745211))))

(assert (= (and d!1434010 res!1913511) b!4580020))

(assert (= (and b!4580020 res!1913510) b!4580021))

(declare-fun m!5389903 () Bool)

(assert (=> d!1434010 m!5389903))

(declare-fun m!5389905 () Bool)

(assert (=> d!1434010 m!5389905))

(declare-fun m!5389907 () Bool)

(assert (=> d!1434010 m!5389907))

(declare-fun m!5389909 () Bool)

(assert (=> d!1434010 m!5389909))

(declare-fun m!5389911 () Bool)

(assert (=> b!4580020 m!5389911))

(declare-fun m!5389913 () Bool)

(assert (=> b!4580021 m!5389913))

(assert (=> b!4579984 d!1434010))

(declare-fun d!1434024 () Bool)

(declare-fun e!2856026 () Bool)

(assert (=> d!1434024 e!2856026))

(declare-fun res!1913517 () Bool)

(assert (=> d!1434024 (=> (not res!1913517) (not e!2856026))))

(declare-fun lt!1745276 () ListLongMap!3183)

(assert (=> d!1434024 (= res!1913517 (contains!13847 lt!1745276 (_1!29056 lt!1745216)))))

(declare-fun lt!1745274 () List!51075)

(assert (=> d!1434024 (= lt!1745276 (ListLongMap!3184 lt!1745274))))

(declare-fun lt!1745277 () Unit!105525)

(declare-fun lt!1745275 () Unit!105525)

(assert (=> d!1434024 (= lt!1745277 lt!1745275)))

(assert (=> d!1434024 (= (getValueByKey!1253 lt!1745274 (_1!29056 lt!1745216)) (Some!11326 (_2!29056 lt!1745216)))))

(assert (=> d!1434024 (= lt!1745275 (lemmaContainsTupThenGetReturnValue!777 lt!1745274 (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))

(assert (=> d!1434024 (= lt!1745274 (insertStrictlySorted!477 (toList!4551 lt!1745230) (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))

(assert (=> d!1434024 (= (+!1708 lt!1745230 lt!1745216) lt!1745276)))

(declare-fun b!4580034 () Bool)

(declare-fun res!1913516 () Bool)

(assert (=> b!4580034 (=> (not res!1913516) (not e!2856026))))

(assert (=> b!4580034 (= res!1913516 (= (getValueByKey!1253 (toList!4551 lt!1745276) (_1!29056 lt!1745216)) (Some!11326 (_2!29056 lt!1745216))))))

(declare-fun b!4580035 () Bool)

(assert (=> b!4580035 (= e!2856026 (contains!13845 (toList!4551 lt!1745276) lt!1745216))))

(assert (= (and d!1434024 res!1913517) b!4580034))

(assert (= (and b!4580034 res!1913516) b!4580035))

(declare-fun m!5389915 () Bool)

(assert (=> d!1434024 m!5389915))

(declare-fun m!5389917 () Bool)

(assert (=> d!1434024 m!5389917))

(declare-fun m!5389919 () Bool)

(assert (=> d!1434024 m!5389919))

(declare-fun m!5389921 () Bool)

(assert (=> d!1434024 m!5389921))

(declare-fun m!5389923 () Bool)

(assert (=> b!4580034 m!5389923))

(declare-fun m!5389925 () Bool)

(assert (=> b!4580035 m!5389925))

(assert (=> b!4579984 d!1434024))

(declare-fun d!1434026 () Bool)

(declare-fun e!2856046 () Bool)

(assert (=> d!1434026 e!2856046))

(declare-fun res!1913536 () Bool)

(assert (=> d!1434026 (=> res!1913536 e!2856046)))

(declare-fun lt!1745298 () Bool)

(assert (=> d!1434026 (= res!1913536 (not lt!1745298))))

(declare-fun lt!1745299 () Bool)

(assert (=> d!1434026 (= lt!1745298 lt!1745299)))

(declare-fun lt!1745300 () Unit!105525)

(declare-fun e!2856047 () Unit!105525)

(assert (=> d!1434026 (= lt!1745300 e!2856047)))

(declare-fun c!783862 () Bool)

(assert (=> d!1434026 (= c!783862 lt!1745299)))

(declare-fun containsKey!2056 (List!51075 (_ BitVec 64)) Bool)

(assert (=> d!1434026 (= lt!1745299 (containsKey!2056 (toList!4551 lt!1745235) hash!344))))

(assert (=> d!1434026 (= (contains!13847 lt!1745235 hash!344) lt!1745298)))

(declare-fun b!4580062 () Bool)

(declare-fun lt!1745301 () Unit!105525)

(assert (=> b!4580062 (= e!2856047 lt!1745301)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (List!51075 (_ BitVec 64)) Unit!105525)

(assert (=> b!4580062 (= lt!1745301 (lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (toList!4551 lt!1745235) hash!344))))

(declare-fun isDefined!8596 (Option!11327) Bool)

(assert (=> b!4580062 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745235) hash!344))))

(declare-fun b!4580063 () Bool)

(declare-fun Unit!105555 () Unit!105525)

(assert (=> b!4580063 (= e!2856047 Unit!105555)))

(declare-fun b!4580064 () Bool)

(assert (=> b!4580064 (= e!2856046 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745235) hash!344)))))

(assert (= (and d!1434026 c!783862) b!4580062))

(assert (= (and d!1434026 (not c!783862)) b!4580063))

(assert (= (and d!1434026 (not res!1913536)) b!4580064))

(declare-fun m!5389959 () Bool)

(assert (=> d!1434026 m!5389959))

(declare-fun m!5389965 () Bool)

(assert (=> b!4580062 m!5389965))

(assert (=> b!4580062 m!5389863))

(assert (=> b!4580062 m!5389863))

(declare-fun m!5389971 () Bool)

(assert (=> b!4580062 m!5389971))

(assert (=> b!4580064 m!5389863))

(assert (=> b!4580064 m!5389863))

(assert (=> b!4580064 m!5389971))

(assert (=> b!4579985 d!1434026))

(declare-fun d!1434040 () Bool)

(declare-fun tail!7919 (List!51075) List!51075)

(assert (=> d!1434040 (= (tail!7917 lm!1477) (ListLongMap!3184 (tail!7919 (toList!4551 lm!1477))))))

(declare-fun bs!971859 () Bool)

(assert (= bs!971859 d!1434040))

(declare-fun m!5389975 () Bool)

(assert (=> bs!971859 m!5389975))

(assert (=> b!4579985 d!1434040))

(declare-fun b!4580106 () Bool)

(declare-fun e!2856081 () Unit!105525)

(declare-fun Unit!105556 () Unit!105525)

(assert (=> b!4580106 (= e!2856081 Unit!105556)))

(declare-fun b!4580107 () Bool)

(declare-fun e!2856076 () Bool)

(declare-fun e!2856079 () Bool)

(assert (=> b!4580107 (= e!2856076 e!2856079)))

(declare-fun res!1913553 () Bool)

(assert (=> b!4580107 (=> (not res!1913553) (not e!2856079))))

(declare-datatypes ((Option!11328 0))(
  ( (None!11327) (Some!11327 (v!45207 V!12566)) )
))
(declare-fun isDefined!8597 (Option!11328) Bool)

(declare-fun getValueByKey!1254 (List!51074 K!12320) Option!11328)

(assert (=> b!4580107 (= res!1913553 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287)))))

(declare-fun b!4580108 () Bool)

(declare-fun e!2856078 () Unit!105525)

(assert (=> b!4580108 (= e!2856078 e!2856081)))

(declare-fun c!783877 () Bool)

(declare-fun call!319685 () Bool)

(assert (=> b!4580108 (= c!783877 call!319685)))

(declare-fun b!4580109 () Bool)

(declare-datatypes ((List!51077 0))(
  ( (Nil!50953) (Cons!50953 (h!56890 K!12320) (t!358067 List!51077)) )
))
(declare-fun contains!13849 (List!51077 K!12320) Bool)

(declare-fun keys!17800 (ListMap!3813) List!51077)

(assert (=> b!4580109 (= e!2856079 (contains!13849 (keys!17800 lt!1745243) key!3287))))

(declare-fun b!4580110 () Bool)

(declare-fun e!2856077 () List!51077)

(assert (=> b!4580110 (= e!2856077 (keys!17800 lt!1745243))))

(declare-fun b!4580111 () Bool)

(declare-fun lt!1745333 () Unit!105525)

(assert (=> b!4580111 (= e!2856078 lt!1745333)))

(declare-fun lt!1745331 () Unit!105525)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (List!51074 K!12320) Unit!105525)

(assert (=> b!4580111 (= lt!1745331 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745243) key!3287))))

(assert (=> b!4580111 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287))))

(declare-fun lt!1745336 () Unit!105525)

(assert (=> b!4580111 (= lt!1745336 lt!1745331)))

(declare-fun lemmaInListThenGetKeysListContains!540 (List!51074 K!12320) Unit!105525)

(assert (=> b!4580111 (= lt!1745333 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745243) key!3287))))

(assert (=> b!4580111 call!319685))

(declare-fun bm!319680 () Bool)

(assert (=> bm!319680 (= call!319685 (contains!13849 e!2856077 key!3287))))

(declare-fun c!783876 () Bool)

(declare-fun c!783878 () Bool)

(assert (=> bm!319680 (= c!783876 c!783878)))

(declare-fun d!1434044 () Bool)

(assert (=> d!1434044 e!2856076))

(declare-fun res!1913554 () Bool)

(assert (=> d!1434044 (=> res!1913554 e!2856076)))

(declare-fun e!2856080 () Bool)

(assert (=> d!1434044 (= res!1913554 e!2856080)))

(declare-fun res!1913552 () Bool)

(assert (=> d!1434044 (=> (not res!1913552) (not e!2856080))))

(declare-fun lt!1745332 () Bool)

(assert (=> d!1434044 (= res!1913552 (not lt!1745332))))

(declare-fun lt!1745337 () Bool)

(assert (=> d!1434044 (= lt!1745332 lt!1745337)))

(declare-fun lt!1745330 () Unit!105525)

(assert (=> d!1434044 (= lt!1745330 e!2856078)))

(assert (=> d!1434044 (= c!783878 lt!1745337)))

(declare-fun containsKey!2057 (List!51074 K!12320) Bool)

(assert (=> d!1434044 (= lt!1745337 (containsKey!2057 (toList!4552 lt!1745243) key!3287))))

(assert (=> d!1434044 (= (contains!13846 lt!1745243 key!3287) lt!1745332)))

(declare-fun b!4580112 () Bool)

(declare-fun getKeysList!544 (List!51074) List!51077)

(assert (=> b!4580112 (= e!2856077 (getKeysList!544 (toList!4552 lt!1745243)))))

(declare-fun b!4580113 () Bool)

(assert (=> b!4580113 false))

(declare-fun lt!1745334 () Unit!105525)

(declare-fun lt!1745335 () Unit!105525)

(assert (=> b!4580113 (= lt!1745334 lt!1745335)))

(assert (=> b!4580113 (containsKey!2057 (toList!4552 lt!1745243) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!543 (List!51074 K!12320) Unit!105525)

(assert (=> b!4580113 (= lt!1745335 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745243) key!3287))))

(declare-fun Unit!105557 () Unit!105525)

(assert (=> b!4580113 (= e!2856081 Unit!105557)))

(declare-fun b!4580114 () Bool)

(assert (=> b!4580114 (= e!2856080 (not (contains!13849 (keys!17800 lt!1745243) key!3287)))))

(assert (= (and d!1434044 c!783878) b!4580111))

(assert (= (and d!1434044 (not c!783878)) b!4580108))

(assert (= (and b!4580108 c!783877) b!4580113))

(assert (= (and b!4580108 (not c!783877)) b!4580106))

(assert (= (or b!4580111 b!4580108) bm!319680))

(assert (= (and bm!319680 c!783876) b!4580112))

(assert (= (and bm!319680 (not c!783876)) b!4580110))

(assert (= (and d!1434044 res!1913552) b!4580114))

(assert (= (and d!1434044 (not res!1913554)) b!4580107))

(assert (= (and b!4580107 res!1913553) b!4580109))

(declare-fun m!5390003 () Bool)

(assert (=> b!4580113 m!5390003))

(declare-fun m!5390005 () Bool)

(assert (=> b!4580113 m!5390005))

(declare-fun m!5390007 () Bool)

(assert (=> b!4580114 m!5390007))

(assert (=> b!4580114 m!5390007))

(declare-fun m!5390009 () Bool)

(assert (=> b!4580114 m!5390009))

(declare-fun m!5390011 () Bool)

(assert (=> b!4580107 m!5390011))

(assert (=> b!4580107 m!5390011))

(declare-fun m!5390013 () Bool)

(assert (=> b!4580107 m!5390013))

(declare-fun m!5390015 () Bool)

(assert (=> b!4580112 m!5390015))

(assert (=> b!4580110 m!5390007))

(declare-fun m!5390017 () Bool)

(assert (=> b!4580111 m!5390017))

(assert (=> b!4580111 m!5390011))

(assert (=> b!4580111 m!5390011))

(assert (=> b!4580111 m!5390013))

(declare-fun m!5390019 () Bool)

(assert (=> b!4580111 m!5390019))

(assert (=> d!1434044 m!5390003))

(declare-fun m!5390021 () Bool)

(assert (=> bm!319680 m!5390021))

(assert (=> b!4580109 m!5390007))

(assert (=> b!4580109 m!5390007))

(assert (=> b!4580109 m!5390009))

(assert (=> b!4579983 d!1434044))

(declare-fun bs!971861 () Bool)

(declare-fun d!1434056 () Bool)

(assert (= bs!971861 (and d!1434056 start!456028)))

(declare-fun lambda!183049 () Int)

(assert (=> bs!971861 (= lambda!183049 lambda!183041)))

(declare-fun bs!971862 () Bool)

(assert (= bs!971862 (and d!1434056 b!4579991)))

(assert (=> bs!971862 (not (= lambda!183049 lambda!183042))))

(declare-fun lt!1745340 () ListMap!3813)

(declare-fun invariantList!1097 (List!51074) Bool)

(assert (=> d!1434056 (invariantList!1097 (toList!4552 lt!1745340))))

(declare-fun e!2856084 () ListMap!3813)

(assert (=> d!1434056 (= lt!1745340 e!2856084)))

(declare-fun c!783881 () Bool)

(assert (=> d!1434056 (= c!783881 ((_ is Cons!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434056 (forall!10500 (toList!4551 lm!1477) lambda!183049)))

(assert (=> d!1434056 (= (extractMap!1328 (toList!4551 lm!1477)) lt!1745340)))

(declare-fun b!4580119 () Bool)

(assert (=> b!4580119 (= e!2856084 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))

(declare-fun b!4580120 () Bool)

(assert (=> b!4580120 (= e!2856084 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434056 c!783881) b!4580119))

(assert (= (and d!1434056 (not c!783881)) b!4580120))

(declare-fun m!5390023 () Bool)

(assert (=> d!1434056 m!5390023))

(declare-fun m!5390025 () Bool)

(assert (=> d!1434056 m!5390025))

(assert (=> b!4580119 m!5389761))

(assert (=> b!4580119 m!5389761))

(declare-fun m!5390027 () Bool)

(assert (=> b!4580119 m!5390027))

(assert (=> b!4579983 d!1434056))

(declare-fun d!1434058 () Bool)

(assert (=> d!1434058 (= (eq!711 lt!1745222 lt!1745224) (= (content!8586 (toList!4552 lt!1745222)) (content!8586 (toList!4552 lt!1745224))))))

(declare-fun bs!971863 () Bool)

(assert (= bs!971863 d!1434058))

(declare-fun m!5390029 () Bool)

(assert (=> bs!971863 m!5390029))

(declare-fun m!5390031 () Bool)

(assert (=> bs!971863 m!5390031))

(assert (=> b!4579976 d!1434058))

(declare-fun bs!971995 () Bool)

(declare-fun b!4580258 () Bool)

(assert (= bs!971995 (and b!4580258 b!4579991)))

(declare-fun lambda!183140 () Int)

(assert (=> bs!971995 (not (= lambda!183140 lambda!183043))))

(assert (=> b!4580258 true))

(declare-fun bs!971996 () Bool)

(declare-fun b!4580257 () Bool)

(assert (= bs!971996 (and b!4580257 b!4579991)))

(declare-fun lambda!183141 () Int)

(assert (=> bs!971996 (not (= lambda!183141 lambda!183043))))

(declare-fun bs!971997 () Bool)

(assert (= bs!971997 (and b!4580257 b!4580258)))

(assert (=> bs!971997 (= lambda!183141 lambda!183140)))

(assert (=> b!4580257 true))

(declare-fun lambda!183142 () Int)

(assert (=> bs!971996 (not (= lambda!183142 lambda!183043))))

(declare-fun lt!1745576 () ListMap!3813)

(assert (=> bs!971997 (= (= lt!1745576 lt!1745218) (= lambda!183142 lambda!183140))))

(assert (=> b!4580257 (= (= lt!1745576 lt!1745218) (= lambda!183142 lambda!183141))))

(assert (=> b!4580257 true))

(declare-fun bs!971998 () Bool)

(declare-fun d!1434060 () Bool)

(assert (= bs!971998 (and d!1434060 b!4579991)))

(declare-fun lambda!183143 () Int)

(assert (=> bs!971998 (not (= lambda!183143 lambda!183043))))

(declare-fun bs!971999 () Bool)

(assert (= bs!971999 (and d!1434060 b!4580258)))

(declare-fun lt!1745579 () ListMap!3813)

(assert (=> bs!971999 (= (= lt!1745579 lt!1745218) (= lambda!183143 lambda!183140))))

(declare-fun bs!972000 () Bool)

(assert (= bs!972000 (and d!1434060 b!4580257)))

(assert (=> bs!972000 (= (= lt!1745579 lt!1745218) (= lambda!183143 lambda!183141))))

(assert (=> bs!972000 (= (= lt!1745579 lt!1745576) (= lambda!183143 lambda!183142))))

(assert (=> d!1434060 true))

(declare-fun b!4580255 () Bool)

(declare-fun e!2856176 () Bool)

(assert (=> b!4580255 (= e!2856176 (invariantList!1097 (toList!4552 lt!1745579)))))

(declare-fun b!4580256 () Bool)

(declare-fun res!1913627 () Bool)

(assert (=> b!4580256 (=> (not res!1913627) (not e!2856176))))

(declare-fun forall!10502 (List!51074 Int) Bool)

(assert (=> b!4580256 (= res!1913627 (forall!10502 (toList!4552 lt!1745218) lambda!183143))))

(declare-fun call!319714 () Bool)

(declare-fun bm!319707 () Bool)

(declare-fun c!783911 () Bool)

(assert (=> bm!319707 (= call!319714 (forall!10502 (ite c!783911 (toList!4552 lt!1745218) (_2!29056 lt!1745216)) (ite c!783911 lambda!183140 lambda!183142)))))

(declare-fun e!2856175 () ListMap!3813)

(assert (=> b!4580257 (= e!2856175 lt!1745576)))

(declare-fun lt!1745574 () ListMap!3813)

(declare-fun +!1710 (ListMap!3813 tuple2!51522) ListMap!3813)

(assert (=> b!4580257 (= lt!1745574 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4580257 (= lt!1745576 (addToMapMapFromBucket!785 (t!358064 (_2!29056 lt!1745216)) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1745578 () Unit!105525)

(declare-fun call!319713 () Unit!105525)

(assert (=> b!4580257 (= lt!1745578 call!319713)))

(assert (=> b!4580257 (forall!10502 (toList!4552 lt!1745218) lambda!183141)))

(declare-fun lt!1745593 () Unit!105525)

(assert (=> b!4580257 (= lt!1745593 lt!1745578)))

(assert (=> b!4580257 (forall!10502 (toList!4552 lt!1745574) lambda!183142)))

(declare-fun lt!1745588 () Unit!105525)

(declare-fun Unit!105565 () Unit!105525)

(assert (=> b!4580257 (= lt!1745588 Unit!105565)))

(assert (=> b!4580257 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183142)))

(declare-fun lt!1745586 () Unit!105525)

(declare-fun Unit!105567 () Unit!105525)

(assert (=> b!4580257 (= lt!1745586 Unit!105567)))

(declare-fun lt!1745583 () Unit!105525)

(declare-fun Unit!105569 () Unit!105525)

(assert (=> b!4580257 (= lt!1745583 Unit!105569)))

(declare-fun lt!1745590 () Unit!105525)

(assert (=> b!4580257 (= lt!1745590 (forallContained!2765 (toList!4552 lt!1745574) lambda!183142 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4580257 (contains!13846 lt!1745574 (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1745580 () Unit!105525)

(declare-fun Unit!105570 () Unit!105525)

(assert (=> b!4580257 (= lt!1745580 Unit!105570)))

(assert (=> b!4580257 (contains!13846 lt!1745576 (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1745585 () Unit!105525)

(declare-fun Unit!105571 () Unit!105525)

(assert (=> b!4580257 (= lt!1745585 Unit!105571)))

(assert (=> b!4580257 call!319714))

(declare-fun lt!1745582 () Unit!105525)

(declare-fun Unit!105572 () Unit!105525)

(assert (=> b!4580257 (= lt!1745582 Unit!105572)))

(declare-fun call!319712 () Bool)

(assert (=> b!4580257 call!319712))

(declare-fun lt!1745584 () Unit!105525)

(declare-fun Unit!105574 () Unit!105525)

(assert (=> b!4580257 (= lt!1745584 Unit!105574)))

(declare-fun lt!1745587 () Unit!105525)

(declare-fun Unit!105575 () Unit!105525)

(assert (=> b!4580257 (= lt!1745587 Unit!105575)))

(declare-fun lt!1745591 () Unit!105525)

(declare-fun addForallContainsKeyThenBeforeAdding!414 (ListMap!3813 ListMap!3813 K!12320 V!12566) Unit!105525)

(assert (=> b!4580257 (= lt!1745591 (addForallContainsKeyThenBeforeAdding!414 lt!1745218 lt!1745576 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4580257 (forall!10502 (toList!4552 lt!1745218) lambda!183142)))

(declare-fun lt!1745589 () Unit!105525)

(assert (=> b!4580257 (= lt!1745589 lt!1745591)))

(assert (=> b!4580257 (forall!10502 (toList!4552 lt!1745218) lambda!183142)))

(declare-fun lt!1745577 () Unit!105525)

(declare-fun Unit!105577 () Unit!105525)

(assert (=> b!4580257 (= lt!1745577 Unit!105577)))

(declare-fun res!1913628 () Bool)

(assert (=> b!4580257 (= res!1913628 (forall!10502 (_2!29056 lt!1745216) lambda!183142))))

(declare-fun e!2856174 () Bool)

(assert (=> b!4580257 (=> (not res!1913628) (not e!2856174))))

(assert (=> b!4580257 e!2856174))

(declare-fun lt!1745581 () Unit!105525)

(declare-fun Unit!105578 () Unit!105525)

(assert (=> b!4580257 (= lt!1745581 Unit!105578)))

(assert (=> b!4580258 (= e!2856175 lt!1745218)))

(declare-fun lt!1745592 () Unit!105525)

(assert (=> b!4580258 (= lt!1745592 call!319713)))

(assert (=> b!4580258 call!319714))

(declare-fun lt!1745573 () Unit!105525)

(assert (=> b!4580258 (= lt!1745573 lt!1745592)))

(assert (=> b!4580258 call!319712))

(declare-fun lt!1745575 () Unit!105525)

(declare-fun Unit!105579 () Unit!105525)

(assert (=> b!4580258 (= lt!1745575 Unit!105579)))

(declare-fun bm!319708 () Bool)

(assert (=> bm!319708 (= call!319712 (forall!10502 (ite c!783911 (toList!4552 lt!1745218) (toList!4552 lt!1745574)) (ite c!783911 lambda!183140 lambda!183142)))))

(assert (=> d!1434060 e!2856176))

(declare-fun res!1913629 () Bool)

(assert (=> d!1434060 (=> (not res!1913629) (not e!2856176))))

(assert (=> d!1434060 (= res!1913629 (forall!10502 (_2!29056 lt!1745216) lambda!183143))))

(assert (=> d!1434060 (= lt!1745579 e!2856175)))

(assert (=> d!1434060 (= c!783911 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434060 (noDuplicateKeys!1272 (_2!29056 lt!1745216))))

(assert (=> d!1434060 (= (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745218) lt!1745579)))

(declare-fun bm!319709 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!414 (ListMap!3813) Unit!105525)

(assert (=> bm!319709 (= call!319713 (lemmaContainsAllItsOwnKeys!414 lt!1745218))))

(declare-fun b!4580259 () Bool)

(assert (=> b!4580259 (= e!2856174 (forall!10502 (toList!4552 lt!1745218) lambda!183142))))

(assert (= (and d!1434060 c!783911) b!4580258))

(assert (= (and d!1434060 (not c!783911)) b!4580257))

(assert (= (and b!4580257 res!1913628) b!4580259))

(assert (= (or b!4580258 b!4580257) bm!319708))

(assert (= (or b!4580258 b!4580257) bm!319707))

(assert (= (or b!4580258 b!4580257) bm!319709))

(assert (= (and d!1434060 res!1913629) b!4580256))

(assert (= (and b!4580256 res!1913627) b!4580255))

(declare-fun m!5390349 () Bool)

(assert (=> b!4580259 m!5390349))

(declare-fun m!5390351 () Bool)

(assert (=> d!1434060 m!5390351))

(assert (=> d!1434060 m!5389765))

(declare-fun m!5390353 () Bool)

(assert (=> bm!319707 m!5390353))

(declare-fun m!5390355 () Bool)

(assert (=> bm!319709 m!5390355))

(declare-fun m!5390357 () Bool)

(assert (=> b!4580257 m!5390357))

(declare-fun m!5390359 () Bool)

(assert (=> b!4580257 m!5390359))

(declare-fun m!5390361 () Bool)

(assert (=> b!4580257 m!5390361))

(assert (=> b!4580257 m!5390349))

(declare-fun m!5390363 () Bool)

(assert (=> b!4580257 m!5390363))

(declare-fun m!5390365 () Bool)

(assert (=> b!4580257 m!5390365))

(declare-fun m!5390367 () Bool)

(assert (=> b!4580257 m!5390367))

(declare-fun m!5390369 () Bool)

(assert (=> b!4580257 m!5390369))

(assert (=> b!4580257 m!5390357))

(declare-fun m!5390371 () Bool)

(assert (=> b!4580257 m!5390371))

(declare-fun m!5390373 () Bool)

(assert (=> b!4580257 m!5390373))

(assert (=> b!4580257 m!5390349))

(declare-fun m!5390375 () Bool)

(assert (=> b!4580257 m!5390375))

(declare-fun m!5390377 () Bool)

(assert (=> b!4580255 m!5390377))

(declare-fun m!5390379 () Bool)

(assert (=> b!4580256 m!5390379))

(declare-fun m!5390381 () Bool)

(assert (=> bm!319708 m!5390381))

(assert (=> b!4579976 d!1434060))

(declare-fun bs!972001 () Bool)

(declare-fun d!1434134 () Bool)

(assert (= bs!972001 (and d!1434134 start!456028)))

(declare-fun lambda!183144 () Int)

(assert (=> bs!972001 (= lambda!183144 lambda!183041)))

(declare-fun bs!972002 () Bool)

(assert (= bs!972002 (and d!1434134 b!4579991)))

(assert (=> bs!972002 (not (= lambda!183144 lambda!183042))))

(declare-fun bs!972003 () Bool)

(assert (= bs!972003 (and d!1434134 d!1434056)))

(assert (=> bs!972003 (= lambda!183144 lambda!183049)))

(declare-fun lt!1745598 () ListMap!3813)

(assert (=> d!1434134 (invariantList!1097 (toList!4552 lt!1745598))))

(declare-fun e!2856178 () ListMap!3813)

(assert (=> d!1434134 (= lt!1745598 e!2856178)))

(declare-fun c!783912 () Bool)

(assert (=> d!1434134 (= c!783912 ((_ is Cons!50951) (toList!4551 lt!1745223)))))

(assert (=> d!1434134 (forall!10500 (toList!4551 lt!1745223) lambda!183144)))

(assert (=> d!1434134 (= (extractMap!1328 (toList!4551 lt!1745223)) lt!1745598)))

(declare-fun b!4580264 () Bool)

(assert (=> b!4580264 (= e!2856178 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))))))

(declare-fun b!4580265 () Bool)

(assert (=> b!4580265 (= e!2856178 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434134 c!783912) b!4580264))

(assert (= (and d!1434134 (not c!783912)) b!4580265))

(declare-fun m!5390383 () Bool)

(assert (=> d!1434134 m!5390383))

(declare-fun m!5390385 () Bool)

(assert (=> d!1434134 m!5390385))

(declare-fun m!5390387 () Bool)

(assert (=> b!4580264 m!5390387))

(assert (=> b!4580264 m!5390387))

(declare-fun m!5390389 () Bool)

(assert (=> b!4580264 m!5390389))

(assert (=> b!4579976 d!1434134))

(declare-fun bs!972012 () Bool)

(declare-fun d!1434136 () Bool)

(assert (= bs!972012 (and d!1434136 start!456028)))

(declare-fun lambda!183150 () Int)

(assert (=> bs!972012 (= lambda!183150 lambda!183041)))

(declare-fun bs!972015 () Bool)

(assert (= bs!972015 (and d!1434136 b!4579991)))

(assert (=> bs!972015 (not (= lambda!183150 lambda!183042))))

(declare-fun bs!972017 () Bool)

(assert (= bs!972017 (and d!1434136 d!1434056)))

(assert (=> bs!972017 (= lambda!183150 lambda!183049)))

(declare-fun bs!972019 () Bool)

(assert (= bs!972019 (and d!1434136 d!1434134)))

(assert (=> bs!972019 (= lambda!183150 lambda!183144)))

(assert (=> d!1434136 (not (contains!13846 (extractMap!1328 (toList!4551 lm!1477)) key!3287))))

(declare-fun lt!1745604 () Unit!105525)

(declare-fun choose!30517 (ListLongMap!3183 K!12320 Hashable!5667) Unit!105525)

(assert (=> d!1434136 (= lt!1745604 (choose!30517 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1434136 (forall!10500 (toList!4551 lm!1477) lambda!183150)))

(assert (=> d!1434136 (= (lemmaNotInItsHashBucketThenNotInMap!254 lm!1477 key!3287 hashF!1107) lt!1745604)))

(declare-fun bs!972020 () Bool)

(assert (= bs!972020 d!1434136))

(assert (=> bs!972020 m!5389809))

(assert (=> bs!972020 m!5389809))

(declare-fun m!5390391 () Bool)

(assert (=> bs!972020 m!5390391))

(declare-fun m!5390393 () Bool)

(assert (=> bs!972020 m!5390393))

(declare-fun m!5390397 () Bool)

(assert (=> bs!972020 m!5390397))

(assert (=> b!4579977 d!1434136))

(declare-fun d!1434138 () Bool)

(assert (=> d!1434138 (= (eq!711 lt!1745218 lt!1745214) (= (content!8586 (toList!4552 lt!1745218)) (content!8586 (toList!4552 lt!1745214))))))

(declare-fun bs!972022 () Bool)

(assert (= bs!972022 d!1434138))

(declare-fun m!5390403 () Bool)

(assert (=> bs!972022 m!5390403))

(declare-fun m!5390407 () Bool)

(assert (=> bs!972022 m!5390407))

(assert (=> b!4579975 d!1434138))

(declare-fun d!1434140 () Bool)

(declare-fun e!2856179 () Bool)

(assert (=> d!1434140 e!2856179))

(declare-fun res!1913633 () Bool)

(assert (=> d!1434140 (=> (not res!1913633) (not e!2856179))))

(declare-fun lt!1745607 () ListLongMap!3183)

(assert (=> d!1434140 (= res!1913633 (contains!13847 lt!1745607 (_1!29056 lt!1745211)))))

(declare-fun lt!1745605 () List!51075)

(assert (=> d!1434140 (= lt!1745607 (ListLongMap!3184 lt!1745605))))

(declare-fun lt!1745608 () Unit!105525)

(declare-fun lt!1745606 () Unit!105525)

(assert (=> d!1434140 (= lt!1745608 lt!1745606)))

(assert (=> d!1434140 (= (getValueByKey!1253 lt!1745605 (_1!29056 lt!1745211)) (Some!11326 (_2!29056 lt!1745211)))))

(assert (=> d!1434140 (= lt!1745606 (lemmaContainsTupThenGetReturnValue!777 lt!1745605 (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))

(assert (=> d!1434140 (= lt!1745605 (insertStrictlySorted!477 (toList!4551 lt!1745235) (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))

(assert (=> d!1434140 (= (+!1708 lt!1745235 lt!1745211) lt!1745607)))

(declare-fun b!4580266 () Bool)

(declare-fun res!1913632 () Bool)

(assert (=> b!4580266 (=> (not res!1913632) (not e!2856179))))

(assert (=> b!4580266 (= res!1913632 (= (getValueByKey!1253 (toList!4551 lt!1745607) (_1!29056 lt!1745211)) (Some!11326 (_2!29056 lt!1745211))))))

(declare-fun b!4580267 () Bool)

(assert (=> b!4580267 (= e!2856179 (contains!13845 (toList!4551 lt!1745607) lt!1745211))))

(assert (= (and d!1434140 res!1913633) b!4580266))

(assert (= (and b!4580266 res!1913632) b!4580267))

(declare-fun m!5390413 () Bool)

(assert (=> d!1434140 m!5390413))

(declare-fun m!5390415 () Bool)

(assert (=> d!1434140 m!5390415))

(declare-fun m!5390417 () Bool)

(assert (=> d!1434140 m!5390417))

(declare-fun m!5390419 () Bool)

(assert (=> d!1434140 m!5390419))

(declare-fun m!5390421 () Bool)

(assert (=> b!4580266 m!5390421))

(declare-fun m!5390423 () Bool)

(assert (=> b!4580267 m!5390423))

(assert (=> b!4579975 d!1434140))

(declare-fun bs!972044 () Bool)

(declare-fun d!1434144 () Bool)

(assert (= bs!972044 (and d!1434144 b!4579991)))

(declare-fun lambda!183154 () Int)

(assert (=> bs!972044 (not (= lambda!183154 lambda!183042))))

(declare-fun bs!972045 () Bool)

(assert (= bs!972045 (and d!1434144 d!1434134)))

(assert (=> bs!972045 (= lambda!183154 lambda!183144)))

(declare-fun bs!972046 () Bool)

(assert (= bs!972046 (and d!1434144 d!1434136)))

(assert (=> bs!972046 (= lambda!183154 lambda!183150)))

(declare-fun bs!972047 () Bool)

(assert (= bs!972047 (and d!1434144 start!456028)))

(assert (=> bs!972047 (= lambda!183154 lambda!183041)))

(declare-fun bs!972048 () Bool)

(assert (= bs!972048 (and d!1434144 d!1434056)))

(assert (=> bs!972048 (= lambda!183154 lambda!183049)))

(assert (=> d!1434144 (eq!711 (extractMap!1328 (toList!4551 (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178)))) (-!480 (extractMap!1328 (toList!4551 lt!1745235)) key!3287))))

(declare-fun lt!1745613 () Unit!105525)

(declare-fun choose!30518 (ListLongMap!3183 (_ BitVec 64) List!51074 K!12320 Hashable!5667) Unit!105525)

(assert (=> d!1434144 (= lt!1745613 (choose!30518 lt!1745235 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1434144 (forall!10500 (toList!4551 lt!1745235) lambda!183154)))

(assert (=> d!1434144 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!219 lt!1745235 hash!344 newBucket!178 key!3287 hashF!1107) lt!1745613)))

(declare-fun bs!972049 () Bool)

(assert (= bs!972049 d!1434144))

(assert (=> bs!972049 m!5389755))

(declare-fun m!5390457 () Bool)

(assert (=> bs!972049 m!5390457))

(declare-fun m!5390459 () Bool)

(assert (=> bs!972049 m!5390459))

(declare-fun m!5390461 () Bool)

(assert (=> bs!972049 m!5390461))

(declare-fun m!5390463 () Bool)

(assert (=> bs!972049 m!5390463))

(declare-fun m!5390465 () Bool)

(assert (=> bs!972049 m!5390465))

(assert (=> bs!972049 m!5389755))

(assert (=> bs!972049 m!5390461))

(assert (=> bs!972049 m!5390459))

(declare-fun m!5390467 () Bool)

(assert (=> bs!972049 m!5390467))

(assert (=> b!4579975 d!1434144))

(declare-fun d!1434166 () Bool)

(declare-fun e!2856196 () Bool)

(assert (=> d!1434166 e!2856196))

(declare-fun res!1913643 () Bool)

(assert (=> d!1434166 (=> (not res!1913643) (not e!2856196))))

(declare-fun lt!1745616 () ListMap!3813)

(assert (=> d!1434166 (= res!1913643 (not (contains!13846 lt!1745616 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!211 (List!51074 K!12320) List!51074)

(assert (=> d!1434166 (= lt!1745616 (ListMap!3814 (removePresrvNoDuplicatedKeys!211 (toList!4552 lt!1745232) key!3287)))))

(assert (=> d!1434166 (= (-!480 lt!1745232 key!3287) lt!1745616)))

(declare-fun b!4580289 () Bool)

(declare-fun content!8587 (List!51077) (InoxSet K!12320))

(assert (=> b!4580289 (= e!2856196 (= ((_ map and) (content!8587 (keys!17800 lt!1745232)) ((_ map not) (store ((as const (Array K!12320 Bool)) false) key!3287 true))) (content!8587 (keys!17800 lt!1745616))))))

(assert (= (and d!1434166 res!1913643) b!4580289))

(declare-fun m!5390469 () Bool)

(assert (=> d!1434166 m!5390469))

(declare-fun m!5390471 () Bool)

(assert (=> d!1434166 m!5390471))

(declare-fun m!5390473 () Bool)

(assert (=> b!4580289 m!5390473))

(declare-fun m!5390475 () Bool)

(assert (=> b!4580289 m!5390475))

(declare-fun m!5390477 () Bool)

(assert (=> b!4580289 m!5390477))

(declare-fun m!5390479 () Bool)

(assert (=> b!4580289 m!5390479))

(assert (=> b!4580289 m!5390477))

(declare-fun m!5390481 () Bool)

(assert (=> b!4580289 m!5390481))

(assert (=> b!4580289 m!5390473))

(assert (=> b!4579975 d!1434166))

(declare-fun bs!972050 () Bool)

(declare-fun d!1434168 () Bool)

(assert (= bs!972050 (and d!1434168 b!4579991)))

(declare-fun lambda!183155 () Int)

(assert (=> bs!972050 (not (= lambda!183155 lambda!183042))))

(declare-fun bs!972051 () Bool)

(assert (= bs!972051 (and d!1434168 d!1434134)))

(assert (=> bs!972051 (= lambda!183155 lambda!183144)))

(declare-fun bs!972052 () Bool)

(assert (= bs!972052 (and d!1434168 d!1434136)))

(assert (=> bs!972052 (= lambda!183155 lambda!183150)))

(declare-fun bs!972053 () Bool)

(assert (= bs!972053 (and d!1434168 start!456028)))

(assert (=> bs!972053 (= lambda!183155 lambda!183041)))

(declare-fun bs!972054 () Bool)

(assert (= bs!972054 (and d!1434168 d!1434056)))

(assert (=> bs!972054 (= lambda!183155 lambda!183049)))

(declare-fun bs!972055 () Bool)

(assert (= bs!972055 (and d!1434168 d!1434144)))

(assert (=> bs!972055 (= lambda!183155 lambda!183154)))

(declare-fun lt!1745617 () ListMap!3813)

(assert (=> d!1434168 (invariantList!1097 (toList!4552 lt!1745617))))

(declare-fun e!2856197 () ListMap!3813)

(assert (=> d!1434168 (= lt!1745617 e!2856197)))

(declare-fun c!783914 () Bool)

(assert (=> d!1434168 (= c!783914 ((_ is Cons!50951) (toList!4551 lt!1745230)))))

(assert (=> d!1434168 (forall!10500 (toList!4551 lt!1745230) lambda!183155)))

(assert (=> d!1434168 (= (extractMap!1328 (toList!4551 lt!1745230)) lt!1745617)))

(declare-fun b!4580290 () Bool)

(assert (=> b!4580290 (= e!2856197 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))))))

(declare-fun b!4580291 () Bool)

(assert (=> b!4580291 (= e!2856197 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434168 c!783914) b!4580290))

(assert (= (and d!1434168 (not c!783914)) b!4580291))

(declare-fun m!5390483 () Bool)

(assert (=> d!1434168 m!5390483))

(declare-fun m!5390485 () Bool)

(assert (=> d!1434168 m!5390485))

(declare-fun m!5390487 () Bool)

(assert (=> b!4580290 m!5390487))

(assert (=> b!4580290 m!5390487))

(declare-fun m!5390489 () Bool)

(assert (=> b!4580290 m!5390489))

(assert (=> b!4579975 d!1434168))

(declare-fun d!1434170 () Bool)

(declare-fun head!9539 (List!51075) tuple2!51524)

(assert (=> d!1434170 (= (head!9538 lm!1477) (head!9539 (toList!4551 lm!1477)))))

(declare-fun bs!972056 () Bool)

(assert (= bs!972056 d!1434170))

(declare-fun m!5390491 () Bool)

(assert (=> bs!972056 m!5390491))

(assert (=> b!4579975 d!1434170))

(declare-fun d!1434172 () Bool)

(assert (=> d!1434172 (= (eq!711 lt!1745242 lt!1745243) (= (content!8586 (toList!4552 lt!1745242)) (content!8586 (toList!4552 lt!1745243))))))

(declare-fun bs!972057 () Bool)

(assert (= bs!972057 d!1434172))

(assert (=> bs!972057 m!5389861))

(assert (=> bs!972057 m!5389859))

(assert (=> b!4579975 d!1434172))

(declare-fun bs!972058 () Bool)

(declare-fun d!1434174 () Bool)

(assert (= bs!972058 (and d!1434174 d!1434168)))

(declare-fun lambda!183156 () Int)

(assert (=> bs!972058 (= lambda!183156 lambda!183155)))

(declare-fun bs!972059 () Bool)

(assert (= bs!972059 (and d!1434174 b!4579991)))

(assert (=> bs!972059 (not (= lambda!183156 lambda!183042))))

(declare-fun bs!972060 () Bool)

(assert (= bs!972060 (and d!1434174 d!1434134)))

(assert (=> bs!972060 (= lambda!183156 lambda!183144)))

(declare-fun bs!972061 () Bool)

(assert (= bs!972061 (and d!1434174 d!1434136)))

(assert (=> bs!972061 (= lambda!183156 lambda!183150)))

(declare-fun bs!972062 () Bool)

(assert (= bs!972062 (and d!1434174 start!456028)))

(assert (=> bs!972062 (= lambda!183156 lambda!183041)))

(declare-fun bs!972063 () Bool)

(assert (= bs!972063 (and d!1434174 d!1434056)))

(assert (=> bs!972063 (= lambda!183156 lambda!183049)))

(declare-fun bs!972064 () Bool)

(assert (= bs!972064 (and d!1434174 d!1434144)))

(assert (=> bs!972064 (= lambda!183156 lambda!183154)))

(declare-fun lt!1745618 () ListMap!3813)

(assert (=> d!1434174 (invariantList!1097 (toList!4552 lt!1745618))))

(declare-fun e!2856198 () ListMap!3813)

(assert (=> d!1434174 (= lt!1745618 e!2856198)))

(declare-fun c!783915 () Bool)

(assert (=> d!1434174 (= c!783915 ((_ is Cons!50951) (toList!4551 (+!1708 lt!1745235 lt!1745216))))))

(assert (=> d!1434174 (forall!10500 (toList!4551 (+!1708 lt!1745235 lt!1745216)) lambda!183156)))

(assert (=> d!1434174 (= (extractMap!1328 (toList!4551 (+!1708 lt!1745235 lt!1745216))) lt!1745618)))

(declare-fun b!4580292 () Bool)

(assert (=> b!4580292 (= e!2856198 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))))))

(declare-fun b!4580293 () Bool)

(assert (=> b!4580293 (= e!2856198 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434174 c!783915) b!4580292))

(assert (= (and d!1434174 (not c!783915)) b!4580293))

(declare-fun m!5390493 () Bool)

(assert (=> d!1434174 m!5390493))

(declare-fun m!5390495 () Bool)

(assert (=> d!1434174 m!5390495))

(declare-fun m!5390497 () Bool)

(assert (=> b!4580292 m!5390497))

(assert (=> b!4580292 m!5390497))

(declare-fun m!5390499 () Bool)

(assert (=> b!4580292 m!5390499))

(assert (=> b!4579975 d!1434174))

(declare-fun d!1434176 () Bool)

(declare-fun e!2856199 () Bool)

(assert (=> d!1434176 e!2856199))

(declare-fun res!1913645 () Bool)

(assert (=> d!1434176 (=> (not res!1913645) (not e!2856199))))

(declare-fun lt!1745621 () ListLongMap!3183)

(assert (=> d!1434176 (= res!1913645 (contains!13847 lt!1745621 (_1!29056 lt!1745216)))))

(declare-fun lt!1745619 () List!51075)

(assert (=> d!1434176 (= lt!1745621 (ListLongMap!3184 lt!1745619))))

(declare-fun lt!1745622 () Unit!105525)

(declare-fun lt!1745620 () Unit!105525)

(assert (=> d!1434176 (= lt!1745622 lt!1745620)))

(assert (=> d!1434176 (= (getValueByKey!1253 lt!1745619 (_1!29056 lt!1745216)) (Some!11326 (_2!29056 lt!1745216)))))

(assert (=> d!1434176 (= lt!1745620 (lemmaContainsTupThenGetReturnValue!777 lt!1745619 (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))

(assert (=> d!1434176 (= lt!1745619 (insertStrictlySorted!477 (toList!4551 lt!1745235) (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))

(assert (=> d!1434176 (= (+!1708 lt!1745235 lt!1745216) lt!1745621)))

(declare-fun b!4580294 () Bool)

(declare-fun res!1913644 () Bool)

(assert (=> b!4580294 (=> (not res!1913644) (not e!2856199))))

(assert (=> b!4580294 (= res!1913644 (= (getValueByKey!1253 (toList!4551 lt!1745621) (_1!29056 lt!1745216)) (Some!11326 (_2!29056 lt!1745216))))))

(declare-fun b!4580295 () Bool)

(assert (=> b!4580295 (= e!2856199 (contains!13845 (toList!4551 lt!1745621) lt!1745216))))

(assert (= (and d!1434176 res!1913645) b!4580294))

(assert (= (and b!4580294 res!1913644) b!4580295))

(declare-fun m!5390501 () Bool)

(assert (=> d!1434176 m!5390501))

(declare-fun m!5390503 () Bool)

(assert (=> d!1434176 m!5390503))

(declare-fun m!5390505 () Bool)

(assert (=> d!1434176 m!5390505))

(declare-fun m!5390507 () Bool)

(assert (=> d!1434176 m!5390507))

(declare-fun m!5390509 () Bool)

(assert (=> b!4580294 m!5390509))

(declare-fun m!5390511 () Bool)

(assert (=> b!4580295 m!5390511))

(assert (=> b!4579975 d!1434176))

(declare-fun d!1434178 () Bool)

(declare-fun res!1913650 () Bool)

(declare-fun e!2856204 () Bool)

(assert (=> d!1434178 (=> res!1913650 e!2856204)))

(assert (=> d!1434178 (= res!1913650 (not ((_ is Cons!50950) newBucket!178)))))

(assert (=> d!1434178 (= (noDuplicateKeys!1272 newBucket!178) e!2856204)))

(declare-fun b!4580300 () Bool)

(declare-fun e!2856205 () Bool)

(assert (=> b!4580300 (= e!2856204 e!2856205)))

(declare-fun res!1913651 () Bool)

(assert (=> b!4580300 (=> (not res!1913651) (not e!2856205))))

(assert (=> b!4580300 (= res!1913651 (not (containsKey!2054 (t!358064 newBucket!178) (_1!29055 (h!56885 newBucket!178)))))))

(declare-fun b!4580301 () Bool)

(assert (=> b!4580301 (= e!2856205 (noDuplicateKeys!1272 (t!358064 newBucket!178)))))

(assert (= (and d!1434178 (not res!1913650)) b!4580300))

(assert (= (and b!4580300 res!1913651) b!4580301))

(declare-fun m!5390513 () Bool)

(assert (=> b!4580300 m!5390513))

(declare-fun m!5390515 () Bool)

(assert (=> b!4580301 m!5390515))

(assert (=> b!4579979 d!1434178))

(declare-fun d!1434180 () Bool)

(assert (=> d!1434180 (= (eq!711 lt!1745233 lt!1745225) (= (content!8586 (toList!4552 lt!1745233)) (content!8586 (toList!4552 lt!1745225))))))

(declare-fun bs!972065 () Bool)

(assert (= bs!972065 d!1434180))

(declare-fun m!5390517 () Bool)

(assert (=> bs!972065 m!5390517))

(declare-fun m!5390519 () Bool)

(assert (=> bs!972065 m!5390519))

(assert (=> b!4579978 d!1434180))

(declare-fun d!1434182 () Bool)

(declare-fun e!2856206 () Bool)

(assert (=> d!1434182 e!2856206))

(declare-fun res!1913652 () Bool)

(assert (=> d!1434182 (=> (not res!1913652) (not e!2856206))))

(declare-fun lt!1745623 () ListMap!3813)

(assert (=> d!1434182 (= res!1913652 (not (contains!13846 lt!1745623 key!3287)))))

(assert (=> d!1434182 (= lt!1745623 (ListMap!3814 (removePresrvNoDuplicatedKeys!211 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287)))))

(assert (=> d!1434182 (= (-!480 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232) key!3287) lt!1745623)))

(declare-fun b!4580302 () Bool)

(assert (=> b!4580302 (= e!2856206 (= ((_ map and) (content!8587 (keys!17800 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) ((_ map not) (store ((as const (Array K!12320 Bool)) false) key!3287 true))) (content!8587 (keys!17800 lt!1745623))))))

(assert (= (and d!1434182 res!1913652) b!4580302))

(declare-fun m!5390521 () Bool)

(assert (=> d!1434182 m!5390521))

(declare-fun m!5390523 () Bool)

(assert (=> d!1434182 m!5390523))

(declare-fun m!5390525 () Bool)

(assert (=> b!4580302 m!5390525))

(declare-fun m!5390527 () Bool)

(assert (=> b!4580302 m!5390527))

(declare-fun m!5390529 () Bool)

(assert (=> b!4580302 m!5390529))

(declare-fun m!5390531 () Bool)

(assert (=> b!4580302 m!5390531))

(assert (=> b!4580302 m!5390529))

(assert (=> b!4580302 m!5390481))

(assert (=> b!4580302 m!5389793))

(assert (=> b!4580302 m!5390525))

(assert (=> b!4579978 d!1434182))

(declare-fun bs!972066 () Bool)

(declare-fun b!4580306 () Bool)

(assert (= bs!972066 (and b!4580306 d!1434060)))

(declare-fun lambda!183157 () Int)

(assert (=> bs!972066 (= (= lt!1745232 lt!1745579) (= lambda!183157 lambda!183143))))

(declare-fun bs!972067 () Bool)

(assert (= bs!972067 (and b!4580306 b!4579991)))

(assert (=> bs!972067 (not (= lambda!183157 lambda!183043))))

(declare-fun bs!972068 () Bool)

(assert (= bs!972068 (and b!4580306 b!4580258)))

(assert (=> bs!972068 (= (= lt!1745232 lt!1745218) (= lambda!183157 lambda!183140))))

(declare-fun bs!972069 () Bool)

(assert (= bs!972069 (and b!4580306 b!4580257)))

(assert (=> bs!972069 (= (= lt!1745232 lt!1745218) (= lambda!183157 lambda!183141))))

(assert (=> bs!972069 (= (= lt!1745232 lt!1745576) (= lambda!183157 lambda!183142))))

(assert (=> b!4580306 true))

(declare-fun bs!972070 () Bool)

(declare-fun b!4580305 () Bool)

(assert (= bs!972070 (and b!4580305 b!4580306)))

(declare-fun lambda!183158 () Int)

(assert (=> bs!972070 (= lambda!183158 lambda!183157)))

(declare-fun bs!972071 () Bool)

(assert (= bs!972071 (and b!4580305 d!1434060)))

(assert (=> bs!972071 (= (= lt!1745232 lt!1745579) (= lambda!183158 lambda!183143))))

(declare-fun bs!972072 () Bool)

(assert (= bs!972072 (and b!4580305 b!4579991)))

(assert (=> bs!972072 (not (= lambda!183158 lambda!183043))))

(declare-fun bs!972073 () Bool)

(assert (= bs!972073 (and b!4580305 b!4580258)))

(assert (=> bs!972073 (= (= lt!1745232 lt!1745218) (= lambda!183158 lambda!183140))))

(declare-fun bs!972074 () Bool)

(assert (= bs!972074 (and b!4580305 b!4580257)))

(assert (=> bs!972074 (= (= lt!1745232 lt!1745218) (= lambda!183158 lambda!183141))))

(assert (=> bs!972074 (= (= lt!1745232 lt!1745576) (= lambda!183158 lambda!183142))))

(assert (=> b!4580305 true))

(declare-fun lt!1745627 () ListMap!3813)

(declare-fun lambda!183159 () Int)

(assert (=> bs!972070 (= (= lt!1745627 lt!1745232) (= lambda!183159 lambda!183157))))

(assert (=> bs!972071 (= (= lt!1745627 lt!1745579) (= lambda!183159 lambda!183143))))

(assert (=> bs!972073 (= (= lt!1745627 lt!1745218) (= lambda!183159 lambda!183140))))

(assert (=> bs!972074 (= (= lt!1745627 lt!1745218) (= lambda!183159 lambda!183141))))

(assert (=> bs!972074 (= (= lt!1745627 lt!1745576) (= lambda!183159 lambda!183142))))

(assert (=> b!4580305 (= (= lt!1745627 lt!1745232) (= lambda!183159 lambda!183158))))

(assert (=> bs!972072 (not (= lambda!183159 lambda!183043))))

(assert (=> b!4580305 true))

(declare-fun bs!972075 () Bool)

(declare-fun d!1434184 () Bool)

(assert (= bs!972075 (and d!1434184 b!4580306)))

(declare-fun lambda!183160 () Int)

(declare-fun lt!1745630 () ListMap!3813)

(assert (=> bs!972075 (= (= lt!1745630 lt!1745232) (= lambda!183160 lambda!183157))))

(declare-fun bs!972076 () Bool)

(assert (= bs!972076 (and d!1434184 b!4580305)))

(assert (=> bs!972076 (= (= lt!1745630 lt!1745627) (= lambda!183160 lambda!183159))))

(declare-fun bs!972077 () Bool)

(assert (= bs!972077 (and d!1434184 d!1434060)))

(assert (=> bs!972077 (= (= lt!1745630 lt!1745579) (= lambda!183160 lambda!183143))))

(declare-fun bs!972078 () Bool)

(assert (= bs!972078 (and d!1434184 b!4580258)))

(assert (=> bs!972078 (= (= lt!1745630 lt!1745218) (= lambda!183160 lambda!183140))))

(declare-fun bs!972079 () Bool)

(assert (= bs!972079 (and d!1434184 b!4580257)))

(assert (=> bs!972079 (= (= lt!1745630 lt!1745218) (= lambda!183160 lambda!183141))))

(assert (=> bs!972079 (= (= lt!1745630 lt!1745576) (= lambda!183160 lambda!183142))))

(assert (=> bs!972076 (= (= lt!1745630 lt!1745232) (= lambda!183160 lambda!183158))))

(declare-fun bs!972080 () Bool)

(assert (= bs!972080 (and d!1434184 b!4579991)))

(assert (=> bs!972080 (not (= lambda!183160 lambda!183043))))

(assert (=> d!1434184 true))

(declare-fun b!4580303 () Bool)

(declare-fun e!2856209 () Bool)

(assert (=> b!4580303 (= e!2856209 (invariantList!1097 (toList!4552 lt!1745630)))))

(declare-fun b!4580304 () Bool)

(declare-fun res!1913653 () Bool)

(assert (=> b!4580304 (=> (not res!1913653) (not e!2856209))))

(assert (=> b!4580304 (= res!1913653 (forall!10502 (toList!4552 lt!1745232) lambda!183160))))

(declare-fun c!783916 () Bool)

(declare-fun call!319717 () Bool)

(declare-fun bm!319710 () Bool)

(assert (=> bm!319710 (= call!319717 (forall!10502 (ite c!783916 (toList!4552 lt!1745232) (_2!29056 lt!1745216)) (ite c!783916 lambda!183157 lambda!183159)))))

(declare-fun e!2856208 () ListMap!3813)

(assert (=> b!4580305 (= e!2856208 lt!1745627)))

(declare-fun lt!1745625 () ListMap!3813)

(assert (=> b!4580305 (= lt!1745625 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4580305 (= lt!1745627 (addToMapMapFromBucket!785 (t!358064 (_2!29056 lt!1745216)) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1745629 () Unit!105525)

(declare-fun call!319716 () Unit!105525)

(assert (=> b!4580305 (= lt!1745629 call!319716)))

(assert (=> b!4580305 (forall!10502 (toList!4552 lt!1745232) lambda!183158)))

(declare-fun lt!1745644 () Unit!105525)

(assert (=> b!4580305 (= lt!1745644 lt!1745629)))

(assert (=> b!4580305 (forall!10502 (toList!4552 lt!1745625) lambda!183159)))

(declare-fun lt!1745639 () Unit!105525)

(declare-fun Unit!105582 () Unit!105525)

(assert (=> b!4580305 (= lt!1745639 Unit!105582)))

(assert (=> b!4580305 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183159)))

(declare-fun lt!1745637 () Unit!105525)

(declare-fun Unit!105583 () Unit!105525)

(assert (=> b!4580305 (= lt!1745637 Unit!105583)))

(declare-fun lt!1745634 () Unit!105525)

(declare-fun Unit!105584 () Unit!105525)

(assert (=> b!4580305 (= lt!1745634 Unit!105584)))

(declare-fun lt!1745641 () Unit!105525)

(assert (=> b!4580305 (= lt!1745641 (forallContained!2765 (toList!4552 lt!1745625) lambda!183159 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4580305 (contains!13846 lt!1745625 (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1745631 () Unit!105525)

(declare-fun Unit!105585 () Unit!105525)

(assert (=> b!4580305 (= lt!1745631 Unit!105585)))

(assert (=> b!4580305 (contains!13846 lt!1745627 (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1745636 () Unit!105525)

(declare-fun Unit!105586 () Unit!105525)

(assert (=> b!4580305 (= lt!1745636 Unit!105586)))

(assert (=> b!4580305 call!319717))

(declare-fun lt!1745633 () Unit!105525)

(declare-fun Unit!105587 () Unit!105525)

(assert (=> b!4580305 (= lt!1745633 Unit!105587)))

(declare-fun call!319715 () Bool)

(assert (=> b!4580305 call!319715))

(declare-fun lt!1745635 () Unit!105525)

(declare-fun Unit!105588 () Unit!105525)

(assert (=> b!4580305 (= lt!1745635 Unit!105588)))

(declare-fun lt!1745638 () Unit!105525)

(declare-fun Unit!105589 () Unit!105525)

(assert (=> b!4580305 (= lt!1745638 Unit!105589)))

(declare-fun lt!1745642 () Unit!105525)

(assert (=> b!4580305 (= lt!1745642 (addForallContainsKeyThenBeforeAdding!414 lt!1745232 lt!1745627 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4580305 (forall!10502 (toList!4552 lt!1745232) lambda!183159)))

(declare-fun lt!1745640 () Unit!105525)

(assert (=> b!4580305 (= lt!1745640 lt!1745642)))

(assert (=> b!4580305 (forall!10502 (toList!4552 lt!1745232) lambda!183159)))

(declare-fun lt!1745628 () Unit!105525)

(declare-fun Unit!105590 () Unit!105525)

(assert (=> b!4580305 (= lt!1745628 Unit!105590)))

(declare-fun res!1913654 () Bool)

(assert (=> b!4580305 (= res!1913654 (forall!10502 (_2!29056 lt!1745216) lambda!183159))))

(declare-fun e!2856207 () Bool)

(assert (=> b!4580305 (=> (not res!1913654) (not e!2856207))))

(assert (=> b!4580305 e!2856207))

(declare-fun lt!1745632 () Unit!105525)

(declare-fun Unit!105591 () Unit!105525)

(assert (=> b!4580305 (= lt!1745632 Unit!105591)))

(assert (=> b!4580306 (= e!2856208 lt!1745232)))

(declare-fun lt!1745643 () Unit!105525)

(assert (=> b!4580306 (= lt!1745643 call!319716)))

(assert (=> b!4580306 call!319717))

(declare-fun lt!1745624 () Unit!105525)

(assert (=> b!4580306 (= lt!1745624 lt!1745643)))

(assert (=> b!4580306 call!319715))

(declare-fun lt!1745626 () Unit!105525)

(declare-fun Unit!105592 () Unit!105525)

(assert (=> b!4580306 (= lt!1745626 Unit!105592)))

(declare-fun bm!319711 () Bool)

(assert (=> bm!319711 (= call!319715 (forall!10502 (ite c!783916 (toList!4552 lt!1745232) (toList!4552 lt!1745625)) (ite c!783916 lambda!183157 lambda!183159)))))

(assert (=> d!1434184 e!2856209))

(declare-fun res!1913655 () Bool)

(assert (=> d!1434184 (=> (not res!1913655) (not e!2856209))))

(assert (=> d!1434184 (= res!1913655 (forall!10502 (_2!29056 lt!1745216) lambda!183160))))

(assert (=> d!1434184 (= lt!1745630 e!2856208)))

(assert (=> d!1434184 (= c!783916 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434184 (noDuplicateKeys!1272 (_2!29056 lt!1745216))))

(assert (=> d!1434184 (= (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232) lt!1745630)))

(declare-fun bm!319712 () Bool)

(assert (=> bm!319712 (= call!319716 (lemmaContainsAllItsOwnKeys!414 lt!1745232))))

(declare-fun b!4580307 () Bool)

(assert (=> b!4580307 (= e!2856207 (forall!10502 (toList!4552 lt!1745232) lambda!183159))))

(assert (= (and d!1434184 c!783916) b!4580306))

(assert (= (and d!1434184 (not c!783916)) b!4580305))

(assert (= (and b!4580305 res!1913654) b!4580307))

(assert (= (or b!4580306 b!4580305) bm!319711))

(assert (= (or b!4580306 b!4580305) bm!319710))

(assert (= (or b!4580306 b!4580305) bm!319712))

(assert (= (and d!1434184 res!1913655) b!4580304))

(assert (= (and b!4580304 res!1913653) b!4580303))

(declare-fun m!5390533 () Bool)

(assert (=> b!4580307 m!5390533))

(declare-fun m!5390535 () Bool)

(assert (=> d!1434184 m!5390535))

(assert (=> d!1434184 m!5389765))

(declare-fun m!5390537 () Bool)

(assert (=> bm!319710 m!5390537))

(declare-fun m!5390539 () Bool)

(assert (=> bm!319712 m!5390539))

(declare-fun m!5390541 () Bool)

(assert (=> b!4580305 m!5390541))

(declare-fun m!5390543 () Bool)

(assert (=> b!4580305 m!5390543))

(declare-fun m!5390545 () Bool)

(assert (=> b!4580305 m!5390545))

(assert (=> b!4580305 m!5390533))

(declare-fun m!5390547 () Bool)

(assert (=> b!4580305 m!5390547))

(declare-fun m!5390549 () Bool)

(assert (=> b!4580305 m!5390549))

(declare-fun m!5390551 () Bool)

(assert (=> b!4580305 m!5390551))

(declare-fun m!5390553 () Bool)

(assert (=> b!4580305 m!5390553))

(assert (=> b!4580305 m!5390541))

(declare-fun m!5390555 () Bool)

(assert (=> b!4580305 m!5390555))

(declare-fun m!5390557 () Bool)

(assert (=> b!4580305 m!5390557))

(assert (=> b!4580305 m!5390533))

(declare-fun m!5390559 () Bool)

(assert (=> b!4580305 m!5390559))

(declare-fun m!5390561 () Bool)

(assert (=> b!4580303 m!5390561))

(declare-fun m!5390563 () Bool)

(assert (=> b!4580304 m!5390563))

(declare-fun m!5390565 () Bool)

(assert (=> bm!319711 m!5390565))

(assert (=> b!4579978 d!1434184))

(declare-fun d!1434186 () Bool)

(assert (=> d!1434186 (= (addToMapMapFromBucket!785 (_2!29056 lt!1745216) (-!480 lt!1745232 key!3287)) (-!480 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232) key!3287))))

(declare-fun lt!1745647 () Unit!105525)

(declare-fun choose!30520 (ListMap!3813 K!12320 List!51074) Unit!105525)

(assert (=> d!1434186 (= lt!1745647 (choose!30520 lt!1745232 key!3287 (_2!29056 lt!1745216)))))

(assert (=> d!1434186 (not (containsKey!2054 (_2!29056 lt!1745216) key!3287))))

(assert (=> d!1434186 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!38 lt!1745232 key!3287 (_2!29056 lt!1745216)) lt!1745647)))

(declare-fun bs!972081 () Bool)

(assert (= bs!972081 d!1434186))

(assert (=> bs!972081 m!5389781))

(declare-fun m!5390567 () Bool)

(assert (=> bs!972081 m!5390567))

(declare-fun m!5390569 () Bool)

(assert (=> bs!972081 m!5390569))

(assert (=> bs!972081 m!5389793))

(assert (=> bs!972081 m!5389781))

(assert (=> bs!972081 m!5389789))

(assert (=> bs!972081 m!5389793))

(assert (=> bs!972081 m!5389795))

(assert (=> b!4579978 d!1434186))

(declare-fun d!1434188 () Bool)

(declare-fun res!1913660 () Bool)

(declare-fun e!2856214 () Bool)

(assert (=> d!1434188 (=> res!1913660 e!2856214)))

(assert (=> d!1434188 (= res!1913660 (and ((_ is Cons!50950) (_2!29056 lt!1745216)) (= (_1!29055 (h!56885 (_2!29056 lt!1745216))) key!3287)))))

(assert (=> d!1434188 (= (containsKey!2054 (_2!29056 lt!1745216) key!3287) e!2856214)))

(declare-fun b!4580312 () Bool)

(declare-fun e!2856215 () Bool)

(assert (=> b!4580312 (= e!2856214 e!2856215)))

(declare-fun res!1913661 () Bool)

(assert (=> b!4580312 (=> (not res!1913661) (not e!2856215))))

(assert (=> b!4580312 (= res!1913661 ((_ is Cons!50950) (_2!29056 lt!1745216)))))

(declare-fun b!4580313 () Bool)

(assert (=> b!4580313 (= e!2856215 (containsKey!2054 (t!358064 (_2!29056 lt!1745216)) key!3287))))

(assert (= (and d!1434188 (not res!1913660)) b!4580312))

(assert (= (and b!4580312 res!1913661) b!4580313))

(declare-fun m!5390571 () Bool)

(assert (=> b!4580313 m!5390571))

(assert (=> b!4579971 d!1434188))

(declare-fun b!4580330 () Bool)

(declare-fun e!2856230 () Option!11325)

(assert (=> b!4580330 (= e!2856230 (getPair!232 (t!358064 (_2!29056 lt!1745216)) key!3287))))

(declare-fun b!4580331 () Bool)

(assert (=> b!4580331 (= e!2856230 None!11324)))

(declare-fun b!4580332 () Bool)

(declare-fun e!2856227 () Option!11325)

(assert (=> b!4580332 (= e!2856227 (Some!11324 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun b!4580333 () Bool)

(declare-fun e!2856228 () Bool)

(assert (=> b!4580333 (= e!2856228 (not (containsKey!2054 (_2!29056 lt!1745216) key!3287)))))

(declare-fun b!4580334 () Bool)

(declare-fun e!2856226 () Bool)

(declare-fun e!2856229 () Bool)

(assert (=> b!4580334 (= e!2856226 e!2856229)))

(declare-fun res!1913671 () Bool)

(assert (=> b!4580334 (=> (not res!1913671) (not e!2856229))))

(declare-fun lt!1745650 () Option!11325)

(declare-fun isDefined!8599 (Option!11325) Bool)

(assert (=> b!4580334 (= res!1913671 (isDefined!8599 lt!1745650))))

(declare-fun d!1434190 () Bool)

(assert (=> d!1434190 e!2856226))

(declare-fun res!1913670 () Bool)

(assert (=> d!1434190 (=> res!1913670 e!2856226)))

(assert (=> d!1434190 (= res!1913670 e!2856228)))

(declare-fun res!1913673 () Bool)

(assert (=> d!1434190 (=> (not res!1913673) (not e!2856228))))

(declare-fun isEmpty!28819 (Option!11325) Bool)

(assert (=> d!1434190 (= res!1913673 (isEmpty!28819 lt!1745650))))

(assert (=> d!1434190 (= lt!1745650 e!2856227)))

(declare-fun c!783921 () Bool)

(assert (=> d!1434190 (= c!783921 (and ((_ is Cons!50950) (_2!29056 lt!1745216)) (= (_1!29055 (h!56885 (_2!29056 lt!1745216))) key!3287)))))

(assert (=> d!1434190 (noDuplicateKeys!1272 (_2!29056 lt!1745216))))

(assert (=> d!1434190 (= (getPair!232 (_2!29056 lt!1745216) key!3287) lt!1745650)))

(declare-fun b!4580335 () Bool)

(declare-fun res!1913672 () Bool)

(assert (=> b!4580335 (=> (not res!1913672) (not e!2856229))))

(assert (=> b!4580335 (= res!1913672 (= (_1!29055 (get!16814 lt!1745650)) key!3287))))

(declare-fun b!4580336 () Bool)

(declare-fun contains!13851 (List!51074 tuple2!51522) Bool)

(assert (=> b!4580336 (= e!2856229 (contains!13851 (_2!29056 lt!1745216) (get!16814 lt!1745650)))))

(declare-fun b!4580337 () Bool)

(assert (=> b!4580337 (= e!2856227 e!2856230)))

(declare-fun c!783922 () Bool)

(assert (=> b!4580337 (= c!783922 ((_ is Cons!50950) (_2!29056 lt!1745216)))))

(assert (= (and d!1434190 c!783921) b!4580332))

(assert (= (and d!1434190 (not c!783921)) b!4580337))

(assert (= (and b!4580337 c!783922) b!4580330))

(assert (= (and b!4580337 (not c!783922)) b!4580331))

(assert (= (and d!1434190 res!1913673) b!4580333))

(assert (= (and d!1434190 (not res!1913670)) b!4580334))

(assert (= (and b!4580334 res!1913671) b!4580335))

(assert (= (and b!4580335 res!1913672) b!4580336))

(declare-fun m!5390573 () Bool)

(assert (=> b!4580336 m!5390573))

(assert (=> b!4580336 m!5390573))

(declare-fun m!5390575 () Bool)

(assert (=> b!4580336 m!5390575))

(declare-fun m!5390577 () Bool)

(assert (=> d!1434190 m!5390577))

(assert (=> d!1434190 m!5389765))

(assert (=> b!4580335 m!5390573))

(declare-fun m!5390579 () Bool)

(assert (=> b!4580330 m!5390579))

(declare-fun m!5390581 () Bool)

(assert (=> b!4580334 m!5390581))

(assert (=> b!4580333 m!5389789))

(assert (=> b!4579991 d!1434190))

(declare-fun d!1434192 () Bool)

(declare-fun dynLambda!21335 (Int tuple2!51524) Bool)

(assert (=> d!1434192 (dynLambda!21335 lambda!183042 (h!56886 (toList!4551 lm!1477)))))

(declare-fun lt!1745653 () Unit!105525)

(declare-fun choose!30521 (List!51075 Int tuple2!51524) Unit!105525)

(assert (=> d!1434192 (= lt!1745653 (choose!30521 (toList!4551 lm!1477) lambda!183042 (h!56886 (toList!4551 lm!1477))))))

(declare-fun e!2856233 () Bool)

(assert (=> d!1434192 e!2856233))

(declare-fun res!1913676 () Bool)

(assert (=> d!1434192 (=> (not res!1913676) (not e!2856233))))

(assert (=> d!1434192 (= res!1913676 (forall!10500 (toList!4551 lm!1477) lambda!183042))))

(assert (=> d!1434192 (= (forallContained!2764 (toList!4551 lm!1477) lambda!183042 (h!56886 (toList!4551 lm!1477))) lt!1745653)))

(declare-fun b!4580340 () Bool)

(assert (=> b!4580340 (= e!2856233 (contains!13845 (toList!4551 lm!1477) (h!56886 (toList!4551 lm!1477))))))

(assert (= (and d!1434192 res!1913676) b!4580340))

(declare-fun b_lambda!166011 () Bool)

(assert (=> (not b_lambda!166011) (not d!1434192)))

(declare-fun m!5390583 () Bool)

(assert (=> d!1434192 m!5390583))

(declare-fun m!5390585 () Bool)

(assert (=> d!1434192 m!5390585))

(declare-fun m!5390587 () Bool)

(assert (=> d!1434192 m!5390587))

(declare-fun m!5390589 () Bool)

(assert (=> b!4580340 m!5390589))

(assert (=> b!4579991 d!1434192))

(declare-fun d!1434194 () Bool)

(declare-fun dynLambda!21336 (Int tuple2!51522) Bool)

(assert (=> d!1434194 (dynLambda!21336 lambda!183043 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212))))))

(declare-fun lt!1745656 () Unit!105525)

(declare-fun choose!30522 (List!51074 Int tuple2!51522) Unit!105525)

(assert (=> d!1434194 (= lt!1745656 (choose!30522 (_2!29056 (h!56886 (toList!4551 lm!1477))) lambda!183043 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))))))

(declare-fun e!2856236 () Bool)

(assert (=> d!1434194 e!2856236))

(declare-fun res!1913679 () Bool)

(assert (=> d!1434194 (=> (not res!1913679) (not e!2856236))))

(assert (=> d!1434194 (= res!1913679 (forall!10502 (_2!29056 (h!56886 (toList!4551 lm!1477))) lambda!183043))))

(assert (=> d!1434194 (= (forallContained!2765 (_2!29056 (h!56886 (toList!4551 lm!1477))) lambda!183043 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))) lt!1745656)))

(declare-fun b!4580343 () Bool)

(assert (=> b!4580343 (= e!2856236 (contains!13851 (_2!29056 (h!56886 (toList!4551 lm!1477))) (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))))))

(assert (= (and d!1434194 res!1913679) b!4580343))

(declare-fun b_lambda!166013 () Bool)

(assert (=> (not b_lambda!166013) (not d!1434194)))

(declare-fun m!5390591 () Bool)

(assert (=> d!1434194 m!5390591))

(declare-fun m!5390593 () Bool)

(assert (=> d!1434194 m!5390593))

(declare-fun m!5390595 () Bool)

(assert (=> d!1434194 m!5390595))

(declare-fun m!5390597 () Bool)

(assert (=> b!4580343 m!5390597))

(assert (=> b!4579991 d!1434194))

(declare-fun d!1434196 () Bool)

(assert (=> d!1434196 (= (get!16814 lt!1745212) (v!45200 lt!1745212))))

(assert (=> b!4579991 d!1434196))

(declare-fun d!1434198 () Bool)

(assert (=> d!1434198 (= (head!9538 lt!1745223) (head!9539 (toList!4551 lt!1745223)))))

(declare-fun bs!972082 () Bool)

(assert (= bs!972082 d!1434198))

(declare-fun m!5390599 () Bool)

(assert (=> bs!972082 m!5390599))

(assert (=> b!4579970 d!1434198))

(declare-fun d!1434200 () Bool)

(declare-fun hash!3122 (Hashable!5667 K!12320) (_ BitVec 64))

(assert (=> d!1434200 (= (hash!3119 hashF!1107 key!3287) (hash!3122 hashF!1107 key!3287))))

(declare-fun bs!972083 () Bool)

(assert (= bs!972083 d!1434200))

(declare-fun m!5390601 () Bool)

(assert (=> bs!972083 m!5390601))

(assert (=> b!4579974 d!1434200))

(declare-fun d!1434202 () Bool)

(assert (=> d!1434202 (= (eq!711 lt!1745233 (-!480 lt!1745243 key!3287)) (= (content!8586 (toList!4552 lt!1745233)) (content!8586 (toList!4552 (-!480 lt!1745243 key!3287)))))))

(declare-fun bs!972084 () Bool)

(assert (= bs!972084 d!1434202))

(assert (=> bs!972084 m!5390517))

(declare-fun m!5390603 () Bool)

(assert (=> bs!972084 m!5390603))

(assert (=> b!4579987 d!1434202))

(declare-fun d!1434204 () Bool)

(declare-fun e!2856237 () Bool)

(assert (=> d!1434204 e!2856237))

(declare-fun res!1913680 () Bool)

(assert (=> d!1434204 (=> (not res!1913680) (not e!2856237))))

(declare-fun lt!1745657 () ListMap!3813)

(assert (=> d!1434204 (= res!1913680 (not (contains!13846 lt!1745657 key!3287)))))

(assert (=> d!1434204 (= lt!1745657 (ListMap!3814 (removePresrvNoDuplicatedKeys!211 (toList!4552 lt!1745243) key!3287)))))

(assert (=> d!1434204 (= (-!480 lt!1745243 key!3287) lt!1745657)))

(declare-fun b!4580344 () Bool)

(assert (=> b!4580344 (= e!2856237 (= ((_ map and) (content!8587 (keys!17800 lt!1745243)) ((_ map not) (store ((as const (Array K!12320 Bool)) false) key!3287 true))) (content!8587 (keys!17800 lt!1745657))))))

(assert (= (and d!1434204 res!1913680) b!4580344))

(declare-fun m!5390605 () Bool)

(assert (=> d!1434204 m!5390605))

(declare-fun m!5390607 () Bool)

(assert (=> d!1434204 m!5390607))

(assert (=> b!4580344 m!5390007))

(declare-fun m!5390609 () Bool)

(assert (=> b!4580344 m!5390609))

(declare-fun m!5390611 () Bool)

(assert (=> b!4580344 m!5390611))

(declare-fun m!5390613 () Bool)

(assert (=> b!4580344 m!5390613))

(assert (=> b!4580344 m!5390611))

(assert (=> b!4580344 m!5390481))

(assert (=> b!4580344 m!5390007))

(assert (=> b!4579987 d!1434204))

(declare-fun d!1434206 () Bool)

(declare-fun res!1913689 () Bool)

(declare-fun e!2856244 () Bool)

(assert (=> d!1434206 (=> res!1913689 e!2856244)))

(declare-fun e!2856245 () Bool)

(assert (=> d!1434206 (= res!1913689 e!2856245)))

(declare-fun res!1913688 () Bool)

(assert (=> d!1434206 (=> (not res!1913688) (not e!2856245))))

(assert (=> d!1434206 (= res!1913688 ((_ is Cons!50951) (t!358065 (toList!4551 lm!1477))))))

(assert (=> d!1434206 (= (containsKeyBiggerList!242 (t!358065 (toList!4551 lm!1477)) key!3287) e!2856244)))

(declare-fun b!4580351 () Bool)

(assert (=> b!4580351 (= e!2856245 (containsKey!2054 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(declare-fun b!4580352 () Bool)

(declare-fun e!2856246 () Bool)

(assert (=> b!4580352 (= e!2856244 e!2856246)))

(declare-fun res!1913687 () Bool)

(assert (=> b!4580352 (=> (not res!1913687) (not e!2856246))))

(assert (=> b!4580352 (= res!1913687 ((_ is Cons!50951) (t!358065 (toList!4551 lm!1477))))))

(declare-fun b!4580353 () Bool)

(assert (=> b!4580353 (= e!2856246 (containsKeyBiggerList!242 (t!358065 (t!358065 (toList!4551 lm!1477))) key!3287))))

(assert (= (and d!1434206 res!1913688) b!4580351))

(assert (= (and d!1434206 (not res!1913689)) b!4580352))

(assert (= (and b!4580352 res!1913687) b!4580353))

(declare-fun m!5390615 () Bool)

(assert (=> b!4580351 m!5390615))

(declare-fun m!5390617 () Bool)

(assert (=> b!4580353 m!5390617))

(assert (=> b!4579966 d!1434206))

(declare-fun d!1434208 () Bool)

(declare-fun res!1913692 () Bool)

(declare-fun e!2856247 () Bool)

(assert (=> d!1434208 (=> res!1913692 e!2856247)))

(declare-fun e!2856248 () Bool)

(assert (=> d!1434208 (= res!1913692 e!2856248)))

(declare-fun res!1913691 () Bool)

(assert (=> d!1434208 (=> (not res!1913691) (not e!2856248))))

(assert (=> d!1434208 (= res!1913691 ((_ is Cons!50951) (toList!4551 lt!1745235)))))

(assert (=> d!1434208 (= (containsKeyBiggerList!242 (toList!4551 lt!1745235) key!3287) e!2856247)))

(declare-fun b!4580354 () Bool)

(assert (=> b!4580354 (= e!2856248 (containsKey!2054 (_2!29056 (h!56886 (toList!4551 lt!1745235))) key!3287))))

(declare-fun b!4580355 () Bool)

(declare-fun e!2856249 () Bool)

(assert (=> b!4580355 (= e!2856247 e!2856249)))

(declare-fun res!1913690 () Bool)

(assert (=> b!4580355 (=> (not res!1913690) (not e!2856249))))

(assert (=> b!4580355 (= res!1913690 ((_ is Cons!50951) (toList!4551 lt!1745235)))))

(declare-fun b!4580356 () Bool)

(assert (=> b!4580356 (= e!2856249 (containsKeyBiggerList!242 (t!358065 (toList!4551 lt!1745235)) key!3287))))

(assert (= (and d!1434208 res!1913691) b!4580354))

(assert (= (and d!1434208 (not res!1913692)) b!4580355))

(assert (= (and b!4580355 res!1913690) b!4580356))

(declare-fun m!5390619 () Bool)

(assert (=> b!4580354 m!5390619))

(declare-fun m!5390621 () Bool)

(assert (=> b!4580356 m!5390621))

(assert (=> b!4579966 d!1434208))

(declare-fun bs!972085 () Bool)

(declare-fun d!1434210 () Bool)

(assert (= bs!972085 (and d!1434210 d!1434168)))

(declare-fun lambda!183163 () Int)

(assert (=> bs!972085 (= lambda!183163 lambda!183155)))

(declare-fun bs!972086 () Bool)

(assert (= bs!972086 (and d!1434210 b!4579991)))

(assert (=> bs!972086 (not (= lambda!183163 lambda!183042))))

(declare-fun bs!972087 () Bool)

(assert (= bs!972087 (and d!1434210 d!1434134)))

(assert (=> bs!972087 (= lambda!183163 lambda!183144)))

(declare-fun bs!972088 () Bool)

(assert (= bs!972088 (and d!1434210 start!456028)))

(assert (=> bs!972088 (= lambda!183163 lambda!183041)))

(declare-fun bs!972089 () Bool)

(assert (= bs!972089 (and d!1434210 d!1434056)))

(assert (=> bs!972089 (= lambda!183163 lambda!183049)))

(declare-fun bs!972090 () Bool)

(assert (= bs!972090 (and d!1434210 d!1434144)))

(assert (=> bs!972090 (= lambda!183163 lambda!183154)))

(declare-fun bs!972091 () Bool)

(assert (= bs!972091 (and d!1434210 d!1434136)))

(assert (=> bs!972091 (= lambda!183163 lambda!183150)))

(declare-fun bs!972092 () Bool)

(assert (= bs!972092 (and d!1434210 d!1434174)))

(assert (=> bs!972092 (= lambda!183163 lambda!183156)))

(assert (=> d!1434210 (containsKeyBiggerList!242 (toList!4551 lt!1745235) key!3287)))

(declare-fun lt!1745660 () Unit!105525)

(declare-fun choose!30523 (ListLongMap!3183 K!12320 Hashable!5667) Unit!105525)

(assert (=> d!1434210 (= lt!1745660 (choose!30523 lt!1745235 key!3287 hashF!1107))))

(assert (=> d!1434210 (forall!10500 (toList!4551 lt!1745235) lambda!183163)))

(assert (=> d!1434210 (= (lemmaInLongMapThenContainsKeyBiggerList!154 lt!1745235 key!3287 hashF!1107) lt!1745660)))

(declare-fun bs!972093 () Bool)

(assert (= bs!972093 d!1434210))

(assert (=> bs!972093 m!5389823))

(declare-fun m!5390623 () Bool)

(assert (=> bs!972093 m!5390623))

(declare-fun m!5390625 () Bool)

(assert (=> bs!972093 m!5390625))

(assert (=> b!4579966 d!1434210))

(declare-fun d!1434212 () Bool)

(declare-fun res!1913697 () Bool)

(declare-fun e!2856254 () Bool)

(assert (=> d!1434212 (=> res!1913697 e!2856254)))

(assert (=> d!1434212 (= res!1913697 ((_ is Nil!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434212 (= (forall!10500 (toList!4551 lm!1477) lambda!183041) e!2856254)))

(declare-fun b!4580361 () Bool)

(declare-fun e!2856255 () Bool)

(assert (=> b!4580361 (= e!2856254 e!2856255)))

(declare-fun res!1913698 () Bool)

(assert (=> b!4580361 (=> (not res!1913698) (not e!2856255))))

(assert (=> b!4580361 (= res!1913698 (dynLambda!21335 lambda!183041 (h!56886 (toList!4551 lm!1477))))))

(declare-fun b!4580362 () Bool)

(assert (=> b!4580362 (= e!2856255 (forall!10500 (t!358065 (toList!4551 lm!1477)) lambda!183041))))

(assert (= (and d!1434212 (not res!1913697)) b!4580361))

(assert (= (and b!4580361 res!1913698) b!4580362))

(declare-fun b_lambda!166015 () Bool)

(assert (=> (not b_lambda!166015) (not b!4580361)))

(declare-fun m!5390627 () Bool)

(assert (=> b!4580361 m!5390627))

(declare-fun m!5390629 () Bool)

(assert (=> b!4580362 m!5390629))

(assert (=> start!456028 d!1434212))

(declare-fun d!1434214 () Bool)

(declare-fun isStrictlySorted!512 (List!51075) Bool)

(assert (=> d!1434214 (= (inv!66504 lm!1477) (isStrictlySorted!512 (toList!4551 lm!1477)))))

(declare-fun bs!972094 () Bool)

(assert (= bs!972094 d!1434214))

(declare-fun m!5390631 () Bool)

(assert (=> bs!972094 m!5390631))

(assert (=> start!456028 d!1434214))

(declare-fun d!1434216 () Bool)

(declare-fun res!1913699 () Bool)

(declare-fun e!2856256 () Bool)

(assert (=> d!1434216 (=> res!1913699 e!2856256)))

(assert (=> d!1434216 (= res!1913699 (not ((_ is Cons!50950) (_2!29056 lt!1745216))))))

(assert (=> d!1434216 (= (noDuplicateKeys!1272 (_2!29056 lt!1745216)) e!2856256)))

(declare-fun b!4580363 () Bool)

(declare-fun e!2856257 () Bool)

(assert (=> b!4580363 (= e!2856256 e!2856257)))

(declare-fun res!1913700 () Bool)

(assert (=> b!4580363 (=> (not res!1913700) (not e!2856257))))

(assert (=> b!4580363 (= res!1913700 (not (containsKey!2054 (t!358064 (_2!29056 lt!1745216)) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4580364 () Bool)

(assert (=> b!4580364 (= e!2856257 (noDuplicateKeys!1272 (t!358064 (_2!29056 lt!1745216))))))

(assert (= (and d!1434216 (not res!1913699)) b!4580363))

(assert (= (and b!4580363 res!1913700) b!4580364))

(declare-fun m!5390633 () Bool)

(assert (=> b!4580363 m!5390633))

(declare-fun m!5390635 () Bool)

(assert (=> b!4580364 m!5390635))

(assert (=> b!4579964 d!1434216))

(declare-fun d!1434218 () Bool)

(assert (=> d!1434218 (dynLambda!21335 lambda!183041 (h!56886 (toList!4551 lm!1477)))))

(declare-fun lt!1745661 () Unit!105525)

(assert (=> d!1434218 (= lt!1745661 (choose!30521 (toList!4551 lm!1477) lambda!183041 (h!56886 (toList!4551 lm!1477))))))

(declare-fun e!2856258 () Bool)

(assert (=> d!1434218 e!2856258))

(declare-fun res!1913701 () Bool)

(assert (=> d!1434218 (=> (not res!1913701) (not e!2856258))))

(assert (=> d!1434218 (= res!1913701 (forall!10500 (toList!4551 lm!1477) lambda!183041))))

(assert (=> d!1434218 (= (forallContained!2764 (toList!4551 lm!1477) lambda!183041 (h!56886 (toList!4551 lm!1477))) lt!1745661)))

(declare-fun b!4580365 () Bool)

(assert (=> b!4580365 (= e!2856258 (contains!13845 (toList!4551 lm!1477) (h!56886 (toList!4551 lm!1477))))))

(assert (= (and d!1434218 res!1913701) b!4580365))

(declare-fun b_lambda!166017 () Bool)

(assert (=> (not b_lambda!166017) (not d!1434218)))

(assert (=> d!1434218 m!5390627))

(declare-fun m!5390637 () Bool)

(assert (=> d!1434218 m!5390637))

(assert (=> d!1434218 m!5389817))

(assert (=> b!4580365 m!5390589))

(assert (=> b!4579964 d!1434218))

(declare-fun d!1434220 () Bool)

(assert (=> d!1434220 (= (eq!711 lt!1745222 lt!1745233) (= (content!8586 (toList!4552 lt!1745222)) (content!8586 (toList!4552 lt!1745233))))))

(declare-fun bs!972095 () Bool)

(assert (= bs!972095 d!1434220))

(assert (=> bs!972095 m!5390029))

(assert (=> bs!972095 m!5390517))

(assert (=> b!4579965 d!1434220))

(declare-fun d!1434222 () Bool)

(assert (=> d!1434222 (= (eq!711 lt!1745224 lt!1745233) (= (content!8586 (toList!4552 lt!1745224)) (content!8586 (toList!4552 lt!1745233))))))

(declare-fun bs!972096 () Bool)

(assert (= bs!972096 d!1434222))

(assert (=> bs!972096 m!5390031))

(assert (=> bs!972096 m!5390517))

(assert (=> b!4579965 d!1434222))

(declare-fun bs!972097 () Bool)

(declare-fun b!4580369 () Bool)

(assert (= bs!972097 (and b!4580369 b!4580306)))

(declare-fun lambda!183164 () Int)

(assert (=> bs!972097 (= (= lt!1745214 lt!1745232) (= lambda!183164 lambda!183157))))

(declare-fun bs!972098 () Bool)

(assert (= bs!972098 (and b!4580369 b!4580305)))

(assert (=> bs!972098 (= (= lt!1745214 lt!1745627) (= lambda!183164 lambda!183159))))

(declare-fun bs!972099 () Bool)

(assert (= bs!972099 (and b!4580369 d!1434060)))

(assert (=> bs!972099 (= (= lt!1745214 lt!1745579) (= lambda!183164 lambda!183143))))

(declare-fun bs!972100 () Bool)

(assert (= bs!972100 (and b!4580369 b!4580258)))

(assert (=> bs!972100 (= (= lt!1745214 lt!1745218) (= lambda!183164 lambda!183140))))

(declare-fun bs!972101 () Bool)

(assert (= bs!972101 (and b!4580369 b!4580257)))

(assert (=> bs!972101 (= (= lt!1745214 lt!1745218) (= lambda!183164 lambda!183141))))

(declare-fun bs!972102 () Bool)

(assert (= bs!972102 (and b!4580369 d!1434184)))

(assert (=> bs!972102 (= (= lt!1745214 lt!1745630) (= lambda!183164 lambda!183160))))

(assert (=> bs!972101 (= (= lt!1745214 lt!1745576) (= lambda!183164 lambda!183142))))

(assert (=> bs!972098 (= (= lt!1745214 lt!1745232) (= lambda!183164 lambda!183158))))

(declare-fun bs!972103 () Bool)

(assert (= bs!972103 (and b!4580369 b!4579991)))

(assert (=> bs!972103 (not (= lambda!183164 lambda!183043))))

(assert (=> b!4580369 true))

(declare-fun bs!972104 () Bool)

(declare-fun b!4580368 () Bool)

(assert (= bs!972104 (and b!4580368 b!4580306)))

(declare-fun lambda!183165 () Int)

(assert (=> bs!972104 (= (= lt!1745214 lt!1745232) (= lambda!183165 lambda!183157))))

(declare-fun bs!972105 () Bool)

(assert (= bs!972105 (and b!4580368 b!4580305)))

(assert (=> bs!972105 (= (= lt!1745214 lt!1745627) (= lambda!183165 lambda!183159))))

(declare-fun bs!972106 () Bool)

(assert (= bs!972106 (and b!4580368 d!1434060)))

(assert (=> bs!972106 (= (= lt!1745214 lt!1745579) (= lambda!183165 lambda!183143))))

(declare-fun bs!972107 () Bool)

(assert (= bs!972107 (and b!4580368 b!4580369)))

(assert (=> bs!972107 (= lambda!183165 lambda!183164)))

(declare-fun bs!972108 () Bool)

(assert (= bs!972108 (and b!4580368 b!4580258)))

(assert (=> bs!972108 (= (= lt!1745214 lt!1745218) (= lambda!183165 lambda!183140))))

(declare-fun bs!972109 () Bool)

(assert (= bs!972109 (and b!4580368 b!4580257)))

(assert (=> bs!972109 (= (= lt!1745214 lt!1745218) (= lambda!183165 lambda!183141))))

(declare-fun bs!972110 () Bool)

(assert (= bs!972110 (and b!4580368 d!1434184)))

(assert (=> bs!972110 (= (= lt!1745214 lt!1745630) (= lambda!183165 lambda!183160))))

(assert (=> bs!972109 (= (= lt!1745214 lt!1745576) (= lambda!183165 lambda!183142))))

(assert (=> bs!972105 (= (= lt!1745214 lt!1745232) (= lambda!183165 lambda!183158))))

(declare-fun bs!972111 () Bool)

(assert (= bs!972111 (and b!4580368 b!4579991)))

(assert (=> bs!972111 (not (= lambda!183165 lambda!183043))))

(assert (=> b!4580368 true))

(declare-fun lt!1745665 () ListMap!3813)

(declare-fun lambda!183166 () Int)

(assert (=> bs!972104 (= (= lt!1745665 lt!1745232) (= lambda!183166 lambda!183157))))

(assert (=> b!4580368 (= (= lt!1745665 lt!1745214) (= lambda!183166 lambda!183165))))

(assert (=> bs!972105 (= (= lt!1745665 lt!1745627) (= lambda!183166 lambda!183159))))

(assert (=> bs!972106 (= (= lt!1745665 lt!1745579) (= lambda!183166 lambda!183143))))

(assert (=> bs!972107 (= (= lt!1745665 lt!1745214) (= lambda!183166 lambda!183164))))

(assert (=> bs!972108 (= (= lt!1745665 lt!1745218) (= lambda!183166 lambda!183140))))

(assert (=> bs!972109 (= (= lt!1745665 lt!1745218) (= lambda!183166 lambda!183141))))

(assert (=> bs!972110 (= (= lt!1745665 lt!1745630) (= lambda!183166 lambda!183160))))

(assert (=> bs!972109 (= (= lt!1745665 lt!1745576) (= lambda!183166 lambda!183142))))

(assert (=> bs!972105 (= (= lt!1745665 lt!1745232) (= lambda!183166 lambda!183158))))

(assert (=> bs!972111 (not (= lambda!183166 lambda!183043))))

(assert (=> b!4580368 true))

(declare-fun bs!972112 () Bool)

(declare-fun d!1434224 () Bool)

(assert (= bs!972112 (and d!1434224 b!4580368)))

(declare-fun lambda!183167 () Int)

(declare-fun lt!1745668 () ListMap!3813)

(assert (=> bs!972112 (= (= lt!1745668 lt!1745665) (= lambda!183167 lambda!183166))))

(declare-fun bs!972113 () Bool)

(assert (= bs!972113 (and d!1434224 b!4580306)))

(assert (=> bs!972113 (= (= lt!1745668 lt!1745232) (= lambda!183167 lambda!183157))))

(assert (=> bs!972112 (= (= lt!1745668 lt!1745214) (= lambda!183167 lambda!183165))))

(declare-fun bs!972114 () Bool)

(assert (= bs!972114 (and d!1434224 b!4580305)))

(assert (=> bs!972114 (= (= lt!1745668 lt!1745627) (= lambda!183167 lambda!183159))))

(declare-fun bs!972115 () Bool)

(assert (= bs!972115 (and d!1434224 d!1434060)))

(assert (=> bs!972115 (= (= lt!1745668 lt!1745579) (= lambda!183167 lambda!183143))))

(declare-fun bs!972116 () Bool)

(assert (= bs!972116 (and d!1434224 b!4580369)))

(assert (=> bs!972116 (= (= lt!1745668 lt!1745214) (= lambda!183167 lambda!183164))))

(declare-fun bs!972117 () Bool)

(assert (= bs!972117 (and d!1434224 b!4580258)))

(assert (=> bs!972117 (= (= lt!1745668 lt!1745218) (= lambda!183167 lambda!183140))))

(declare-fun bs!972118 () Bool)

(assert (= bs!972118 (and d!1434224 b!4580257)))

(assert (=> bs!972118 (= (= lt!1745668 lt!1745218) (= lambda!183167 lambda!183141))))

(declare-fun bs!972119 () Bool)

(assert (= bs!972119 (and d!1434224 d!1434184)))

(assert (=> bs!972119 (= (= lt!1745668 lt!1745630) (= lambda!183167 lambda!183160))))

(assert (=> bs!972118 (= (= lt!1745668 lt!1745576) (= lambda!183167 lambda!183142))))

(assert (=> bs!972114 (= (= lt!1745668 lt!1745232) (= lambda!183167 lambda!183158))))

(declare-fun bs!972120 () Bool)

(assert (= bs!972120 (and d!1434224 b!4579991)))

(assert (=> bs!972120 (not (= lambda!183167 lambda!183043))))

(assert (=> d!1434224 true))

(declare-fun b!4580366 () Bool)

(declare-fun e!2856261 () Bool)

(assert (=> b!4580366 (= e!2856261 (invariantList!1097 (toList!4552 lt!1745668)))))

(declare-fun b!4580367 () Bool)

(declare-fun res!1913702 () Bool)

(assert (=> b!4580367 (=> (not res!1913702) (not e!2856261))))

(assert (=> b!4580367 (= res!1913702 (forall!10502 (toList!4552 lt!1745214) lambda!183167))))

(declare-fun bm!319713 () Bool)

(declare-fun c!783923 () Bool)

(declare-fun call!319720 () Bool)

(assert (=> bm!319713 (= call!319720 (forall!10502 (ite c!783923 (toList!4552 lt!1745214) (_2!29056 lt!1745216)) (ite c!783923 lambda!183164 lambda!183166)))))

(declare-fun e!2856260 () ListMap!3813)

(assert (=> b!4580368 (= e!2856260 lt!1745665)))

(declare-fun lt!1745663 () ListMap!3813)

(assert (=> b!4580368 (= lt!1745663 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4580368 (= lt!1745665 (addToMapMapFromBucket!785 (t!358064 (_2!29056 lt!1745216)) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1745667 () Unit!105525)

(declare-fun call!319719 () Unit!105525)

(assert (=> b!4580368 (= lt!1745667 call!319719)))

(assert (=> b!4580368 (forall!10502 (toList!4552 lt!1745214) lambda!183165)))

(declare-fun lt!1745682 () Unit!105525)

(assert (=> b!4580368 (= lt!1745682 lt!1745667)))

(assert (=> b!4580368 (forall!10502 (toList!4552 lt!1745663) lambda!183166)))

(declare-fun lt!1745677 () Unit!105525)

(declare-fun Unit!105597 () Unit!105525)

(assert (=> b!4580368 (= lt!1745677 Unit!105597)))

(assert (=> b!4580368 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183166)))

(declare-fun lt!1745675 () Unit!105525)

(declare-fun Unit!105598 () Unit!105525)

(assert (=> b!4580368 (= lt!1745675 Unit!105598)))

(declare-fun lt!1745672 () Unit!105525)

(declare-fun Unit!105599 () Unit!105525)

(assert (=> b!4580368 (= lt!1745672 Unit!105599)))

(declare-fun lt!1745679 () Unit!105525)

(assert (=> b!4580368 (= lt!1745679 (forallContained!2765 (toList!4552 lt!1745663) lambda!183166 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4580368 (contains!13846 lt!1745663 (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1745669 () Unit!105525)

(declare-fun Unit!105600 () Unit!105525)

(assert (=> b!4580368 (= lt!1745669 Unit!105600)))

(assert (=> b!4580368 (contains!13846 lt!1745665 (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1745674 () Unit!105525)

(declare-fun Unit!105601 () Unit!105525)

(assert (=> b!4580368 (= lt!1745674 Unit!105601)))

(assert (=> b!4580368 call!319720))

(declare-fun lt!1745671 () Unit!105525)

(declare-fun Unit!105602 () Unit!105525)

(assert (=> b!4580368 (= lt!1745671 Unit!105602)))

(declare-fun call!319718 () Bool)

(assert (=> b!4580368 call!319718))

(declare-fun lt!1745673 () Unit!105525)

(declare-fun Unit!105603 () Unit!105525)

(assert (=> b!4580368 (= lt!1745673 Unit!105603)))

(declare-fun lt!1745676 () Unit!105525)

(declare-fun Unit!105604 () Unit!105525)

(assert (=> b!4580368 (= lt!1745676 Unit!105604)))

(declare-fun lt!1745680 () Unit!105525)

(assert (=> b!4580368 (= lt!1745680 (addForallContainsKeyThenBeforeAdding!414 lt!1745214 lt!1745665 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4580368 (forall!10502 (toList!4552 lt!1745214) lambda!183166)))

(declare-fun lt!1745678 () Unit!105525)

(assert (=> b!4580368 (= lt!1745678 lt!1745680)))

(assert (=> b!4580368 (forall!10502 (toList!4552 lt!1745214) lambda!183166)))

(declare-fun lt!1745666 () Unit!105525)

(declare-fun Unit!105605 () Unit!105525)

(assert (=> b!4580368 (= lt!1745666 Unit!105605)))

(declare-fun res!1913703 () Bool)

(assert (=> b!4580368 (= res!1913703 (forall!10502 (_2!29056 lt!1745216) lambda!183166))))

(declare-fun e!2856259 () Bool)

(assert (=> b!4580368 (=> (not res!1913703) (not e!2856259))))

(assert (=> b!4580368 e!2856259))

(declare-fun lt!1745670 () Unit!105525)

(declare-fun Unit!105606 () Unit!105525)

(assert (=> b!4580368 (= lt!1745670 Unit!105606)))

(assert (=> b!4580369 (= e!2856260 lt!1745214)))

(declare-fun lt!1745681 () Unit!105525)

(assert (=> b!4580369 (= lt!1745681 call!319719)))

(assert (=> b!4580369 call!319720))

(declare-fun lt!1745662 () Unit!105525)

(assert (=> b!4580369 (= lt!1745662 lt!1745681)))

(assert (=> b!4580369 call!319718))

(declare-fun lt!1745664 () Unit!105525)

(declare-fun Unit!105607 () Unit!105525)

(assert (=> b!4580369 (= lt!1745664 Unit!105607)))

(declare-fun bm!319714 () Bool)

(assert (=> bm!319714 (= call!319718 (forall!10502 (ite c!783923 (toList!4552 lt!1745214) (toList!4552 lt!1745663)) (ite c!783923 lambda!183164 lambda!183166)))))

(assert (=> d!1434224 e!2856261))

(declare-fun res!1913704 () Bool)

(assert (=> d!1434224 (=> (not res!1913704) (not e!2856261))))

(assert (=> d!1434224 (= res!1913704 (forall!10502 (_2!29056 lt!1745216) lambda!183167))))

(assert (=> d!1434224 (= lt!1745668 e!2856260)))

(assert (=> d!1434224 (= c!783923 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434224 (noDuplicateKeys!1272 (_2!29056 lt!1745216))))

(assert (=> d!1434224 (= (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745214) lt!1745668)))

(declare-fun bm!319715 () Bool)

(assert (=> bm!319715 (= call!319719 (lemmaContainsAllItsOwnKeys!414 lt!1745214))))

(declare-fun b!4580370 () Bool)

(assert (=> b!4580370 (= e!2856259 (forall!10502 (toList!4552 lt!1745214) lambda!183166))))

(assert (= (and d!1434224 c!783923) b!4580369))

(assert (= (and d!1434224 (not c!783923)) b!4580368))

(assert (= (and b!4580368 res!1913703) b!4580370))

(assert (= (or b!4580369 b!4580368) bm!319714))

(assert (= (or b!4580369 b!4580368) bm!319713))

(assert (= (or b!4580369 b!4580368) bm!319715))

(assert (= (and d!1434224 res!1913704) b!4580367))

(assert (= (and b!4580367 res!1913702) b!4580366))

(declare-fun m!5390639 () Bool)

(assert (=> b!4580370 m!5390639))

(declare-fun m!5390641 () Bool)

(assert (=> d!1434224 m!5390641))

(assert (=> d!1434224 m!5389765))

(declare-fun m!5390643 () Bool)

(assert (=> bm!319713 m!5390643))

(declare-fun m!5390645 () Bool)

(assert (=> bm!319715 m!5390645))

(declare-fun m!5390647 () Bool)

(assert (=> b!4580368 m!5390647))

(declare-fun m!5390649 () Bool)

(assert (=> b!4580368 m!5390649))

(declare-fun m!5390651 () Bool)

(assert (=> b!4580368 m!5390651))

(assert (=> b!4580368 m!5390639))

(declare-fun m!5390653 () Bool)

(assert (=> b!4580368 m!5390653))

(declare-fun m!5390655 () Bool)

(assert (=> b!4580368 m!5390655))

(declare-fun m!5390657 () Bool)

(assert (=> b!4580368 m!5390657))

(declare-fun m!5390659 () Bool)

(assert (=> b!4580368 m!5390659))

(assert (=> b!4580368 m!5390647))

(declare-fun m!5390661 () Bool)

(assert (=> b!4580368 m!5390661))

(declare-fun m!5390663 () Bool)

(assert (=> b!4580368 m!5390663))

(assert (=> b!4580368 m!5390639))

(declare-fun m!5390665 () Bool)

(assert (=> b!4580368 m!5390665))

(declare-fun m!5390667 () Bool)

(assert (=> b!4580366 m!5390667))

(declare-fun m!5390669 () Bool)

(assert (=> b!4580367 m!5390669))

(declare-fun m!5390671 () Bool)

(assert (=> bm!319714 m!5390671))

(assert (=> b!4579965 d!1434224))

(declare-fun d!1434226 () Bool)

(assert (=> d!1434226 (eq!711 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745218) (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745214))))

(declare-fun lt!1745685 () Unit!105525)

(declare-fun choose!30525 (ListMap!3813 ListMap!3813 List!51074) Unit!105525)

(assert (=> d!1434226 (= lt!1745685 (choose!30525 lt!1745218 lt!1745214 (_2!29056 lt!1745216)))))

(assert (=> d!1434226 (noDuplicateKeys!1272 (_2!29056 lt!1745216))))

(assert (=> d!1434226 (= (lemmaAddToMapFromBucketPreservesEquivalence!96 lt!1745218 lt!1745214 (_2!29056 lt!1745216)) lt!1745685)))

(declare-fun bs!972121 () Bool)

(assert (= bs!972121 d!1434226))

(declare-fun m!5390673 () Bool)

(assert (=> bs!972121 m!5390673))

(assert (=> bs!972121 m!5389739))

(assert (=> bs!972121 m!5389739))

(assert (=> bs!972121 m!5389749))

(declare-fun m!5390675 () Bool)

(assert (=> bs!972121 m!5390675))

(assert (=> bs!972121 m!5389765))

(assert (=> bs!972121 m!5389749))

(assert (=> b!4579965 d!1434226))

(declare-fun d!1434228 () Bool)

(declare-fun e!2856262 () Bool)

(assert (=> d!1434228 e!2856262))

(declare-fun res!1913705 () Bool)

(assert (=> d!1434228 (=> res!1913705 e!2856262)))

(declare-fun lt!1745686 () Bool)

(assert (=> d!1434228 (= res!1913705 (not lt!1745686))))

(declare-fun lt!1745687 () Bool)

(assert (=> d!1434228 (= lt!1745686 lt!1745687)))

(declare-fun lt!1745688 () Unit!105525)

(declare-fun e!2856263 () Unit!105525)

(assert (=> d!1434228 (= lt!1745688 e!2856263)))

(declare-fun c!783924 () Bool)

(assert (=> d!1434228 (= c!783924 lt!1745687)))

(assert (=> d!1434228 (= lt!1745687 (containsKey!2056 (toList!4551 lm!1477) lt!1745221))))

(assert (=> d!1434228 (= (contains!13847 lm!1477 lt!1745221) lt!1745686)))

(declare-fun b!4580371 () Bool)

(declare-fun lt!1745689 () Unit!105525)

(assert (=> b!4580371 (= e!2856263 lt!1745689)))

(assert (=> b!4580371 (= lt!1745689 (lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (toList!4551 lm!1477) lt!1745221))))

(assert (=> b!4580371 (isDefined!8596 (getValueByKey!1253 (toList!4551 lm!1477) lt!1745221))))

(declare-fun b!4580372 () Bool)

(declare-fun Unit!105608 () Unit!105525)

(assert (=> b!4580372 (= e!2856263 Unit!105608)))

(declare-fun b!4580373 () Bool)

(assert (=> b!4580373 (= e!2856262 (isDefined!8596 (getValueByKey!1253 (toList!4551 lm!1477) lt!1745221)))))

(assert (= (and d!1434228 c!783924) b!4580371))

(assert (= (and d!1434228 (not c!783924)) b!4580372))

(assert (= (and d!1434228 (not res!1913705)) b!4580373))

(declare-fun m!5390677 () Bool)

(assert (=> d!1434228 m!5390677))

(declare-fun m!5390679 () Bool)

(assert (=> b!4580371 m!5390679))

(declare-fun m!5390681 () Bool)

(assert (=> b!4580371 m!5390681))

(assert (=> b!4580371 m!5390681))

(declare-fun m!5390683 () Bool)

(assert (=> b!4580371 m!5390683))

(assert (=> b!4580373 m!5390681))

(assert (=> b!4580373 m!5390681))

(assert (=> b!4580373 m!5390683))

(assert (=> b!4579986 d!1434228))

(declare-fun bs!972122 () Bool)

(declare-fun d!1434230 () Bool)

(assert (= bs!972122 (and d!1434230 d!1434210)))

(declare-fun lambda!183170 () Int)

(assert (=> bs!972122 (= lambda!183170 lambda!183163)))

(declare-fun bs!972123 () Bool)

(assert (= bs!972123 (and d!1434230 d!1434168)))

(assert (=> bs!972123 (= lambda!183170 lambda!183155)))

(declare-fun bs!972124 () Bool)

(assert (= bs!972124 (and d!1434230 b!4579991)))

(assert (=> bs!972124 (not (= lambda!183170 lambda!183042))))

(declare-fun bs!972125 () Bool)

(assert (= bs!972125 (and d!1434230 d!1434134)))

(assert (=> bs!972125 (= lambda!183170 lambda!183144)))

(declare-fun bs!972126 () Bool)

(assert (= bs!972126 (and d!1434230 start!456028)))

(assert (=> bs!972126 (= lambda!183170 lambda!183041)))

(declare-fun bs!972127 () Bool)

(assert (= bs!972127 (and d!1434230 d!1434056)))

(assert (=> bs!972127 (= lambda!183170 lambda!183049)))

(declare-fun bs!972128 () Bool)

(assert (= bs!972128 (and d!1434230 d!1434144)))

(assert (=> bs!972128 (= lambda!183170 lambda!183154)))

(declare-fun bs!972129 () Bool)

(assert (= bs!972129 (and d!1434230 d!1434136)))

(assert (=> bs!972129 (= lambda!183170 lambda!183150)))

(declare-fun bs!972130 () Bool)

(assert (= bs!972130 (and d!1434230 d!1434174)))

(assert (=> bs!972130 (= lambda!183170 lambda!183156)))

(assert (=> d!1434230 (contains!13847 lm!1477 (hash!3119 hashF!1107 key!3287))))

(declare-fun lt!1745692 () Unit!105525)

(declare-fun choose!30526 (ListLongMap!3183 K!12320 Hashable!5667) Unit!105525)

(assert (=> d!1434230 (= lt!1745692 (choose!30526 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1434230 (forall!10500 (toList!4551 lm!1477) lambda!183170)))

(assert (=> d!1434230 (= (lemmaInGenMapThenLongMapContainsHash!346 lm!1477 key!3287 hashF!1107) lt!1745692)))

(declare-fun bs!972131 () Bool)

(assert (= bs!972131 d!1434230))

(assert (=> bs!972131 m!5389815))

(assert (=> bs!972131 m!5389815))

(declare-fun m!5390685 () Bool)

(assert (=> bs!972131 m!5390685))

(declare-fun m!5390687 () Bool)

(assert (=> bs!972131 m!5390687))

(declare-fun m!5390689 () Bool)

(assert (=> bs!972131 m!5390689))

(assert (=> b!4579986 d!1434230))

(declare-fun d!1434232 () Bool)

(assert (=> d!1434232 (dynLambda!21335 lambda!183041 lt!1745215)))

(declare-fun lt!1745693 () Unit!105525)

(assert (=> d!1434232 (= lt!1745693 (choose!30521 (toList!4551 lm!1477) lambda!183041 lt!1745215))))

(declare-fun e!2856264 () Bool)

(assert (=> d!1434232 e!2856264))

(declare-fun res!1913706 () Bool)

(assert (=> d!1434232 (=> (not res!1913706) (not e!2856264))))

(assert (=> d!1434232 (= res!1913706 (forall!10500 (toList!4551 lm!1477) lambda!183041))))

(assert (=> d!1434232 (= (forallContained!2764 (toList!4551 lm!1477) lambda!183041 lt!1745215) lt!1745693)))

(declare-fun b!4580374 () Bool)

(assert (=> b!4580374 (= e!2856264 (contains!13845 (toList!4551 lm!1477) lt!1745215))))

(assert (= (and d!1434232 res!1913706) b!4580374))

(declare-fun b_lambda!166019 () Bool)

(assert (=> (not b_lambda!166019) (not d!1434232)))

(declare-fun m!5390691 () Bool)

(assert (=> d!1434232 m!5390691))

(declare-fun m!5390693 () Bool)

(assert (=> d!1434232 m!5390693))

(assert (=> d!1434232 m!5389817))

(assert (=> b!4580374 m!5389839))

(assert (=> b!4579986 d!1434232))

(declare-fun d!1434234 () Bool)

(assert (=> d!1434234 (= (apply!12009 lm!1477 hash!344) (get!16816 (getValueByKey!1253 (toList!4551 lm!1477) hash!344)))))

(declare-fun bs!972132 () Bool)

(assert (= bs!972132 d!1434234))

(declare-fun m!5390695 () Bool)

(assert (=> bs!972132 m!5390695))

(assert (=> bs!972132 m!5390695))

(declare-fun m!5390697 () Bool)

(assert (=> bs!972132 m!5390697))

(assert (=> b!4579986 d!1434234))

(declare-fun d!1434236 () Bool)

(declare-fun lt!1745696 () Bool)

(declare-fun content!8588 (List!51075) (InoxSet tuple2!51524))

(assert (=> d!1434236 (= lt!1745696 (select (content!8588 (toList!4551 lm!1477)) lt!1745215))))

(declare-fun e!2856269 () Bool)

(assert (=> d!1434236 (= lt!1745696 e!2856269)))

(declare-fun res!1913711 () Bool)

(assert (=> d!1434236 (=> (not res!1913711) (not e!2856269))))

(assert (=> d!1434236 (= res!1913711 ((_ is Cons!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434236 (= (contains!13845 (toList!4551 lm!1477) lt!1745215) lt!1745696)))

(declare-fun b!4580379 () Bool)

(declare-fun e!2856270 () Bool)

(assert (=> b!4580379 (= e!2856269 e!2856270)))

(declare-fun res!1913712 () Bool)

(assert (=> b!4580379 (=> res!1913712 e!2856270)))

(assert (=> b!4580379 (= res!1913712 (= (h!56886 (toList!4551 lm!1477)) lt!1745215))))

(declare-fun b!4580380 () Bool)

(assert (=> b!4580380 (= e!2856270 (contains!13845 (t!358065 (toList!4551 lm!1477)) lt!1745215))))

(assert (= (and d!1434236 res!1913711) b!4580379))

(assert (= (and b!4580379 (not res!1913712)) b!4580380))

(declare-fun m!5390699 () Bool)

(assert (=> d!1434236 m!5390699))

(declare-fun m!5390701 () Bool)

(assert (=> d!1434236 m!5390701))

(assert (=> b!4580380 m!5389753))

(assert (=> b!4579986 d!1434236))

(declare-fun d!1434238 () Bool)

(assert (=> d!1434238 (contains!13845 (toList!4551 lm!1477) (tuple2!51525 hash!344 lt!1745226))))

(declare-fun lt!1745699 () Unit!105525)

(declare-fun choose!30528 (List!51075 (_ BitVec 64) List!51074) Unit!105525)

(assert (=> d!1434238 (= lt!1745699 (choose!30528 (toList!4551 lm!1477) hash!344 lt!1745226))))

(declare-fun e!2856273 () Bool)

(assert (=> d!1434238 e!2856273))

(declare-fun res!1913715 () Bool)

(assert (=> d!1434238 (=> (not res!1913715) (not e!2856273))))

(assert (=> d!1434238 (= res!1913715 (isStrictlySorted!512 (toList!4551 lm!1477)))))

(assert (=> d!1434238 (= (lemmaGetValueByKeyImpliesContainsTuple!784 (toList!4551 lm!1477) hash!344 lt!1745226) lt!1745699)))

(declare-fun b!4580383 () Bool)

(assert (=> b!4580383 (= e!2856273 (= (getValueByKey!1253 (toList!4551 lm!1477) hash!344) (Some!11326 lt!1745226)))))

(assert (= (and d!1434238 res!1913715) b!4580383))

(declare-fun m!5390703 () Bool)

(assert (=> d!1434238 m!5390703))

(declare-fun m!5390705 () Bool)

(assert (=> d!1434238 m!5390705))

(assert (=> d!1434238 m!5390631))

(assert (=> b!4580383 m!5390695))

(assert (=> b!4579986 d!1434238))

(declare-fun d!1434240 () Bool)

(declare-fun lt!1745702 () List!51074)

(assert (=> d!1434240 (not (containsKey!2054 lt!1745702 key!3287))))

(declare-fun e!2856278 () List!51074)

(assert (=> d!1434240 (= lt!1745702 e!2856278)))

(declare-fun c!783929 () Bool)

(assert (=> d!1434240 (= c!783929 (and ((_ is Cons!50950) lt!1745226) (= (_1!29055 (h!56885 lt!1745226)) key!3287)))))

(assert (=> d!1434240 (noDuplicateKeys!1272 lt!1745226)))

(assert (=> d!1434240 (= (removePairForKey!899 lt!1745226 key!3287) lt!1745702)))

(declare-fun b!4580395 () Bool)

(declare-fun e!2856279 () List!51074)

(assert (=> b!4580395 (= e!2856279 Nil!50950)))

(declare-fun b!4580394 () Bool)

(assert (=> b!4580394 (= e!2856279 (Cons!50950 (h!56885 lt!1745226) (removePairForKey!899 (t!358064 lt!1745226) key!3287)))))

(declare-fun b!4580393 () Bool)

(assert (=> b!4580393 (= e!2856278 e!2856279)))

(declare-fun c!783930 () Bool)

(assert (=> b!4580393 (= c!783930 ((_ is Cons!50950) lt!1745226))))

(declare-fun b!4580392 () Bool)

(assert (=> b!4580392 (= e!2856278 (t!358064 lt!1745226))))

(assert (= (and d!1434240 c!783929) b!4580392))

(assert (= (and d!1434240 (not c!783929)) b!4580393))

(assert (= (and b!4580393 c!783930) b!4580394))

(assert (= (and b!4580393 (not c!783930)) b!4580395))

(declare-fun m!5390707 () Bool)

(assert (=> d!1434240 m!5390707))

(declare-fun m!5390709 () Bool)

(assert (=> d!1434240 m!5390709))

(declare-fun m!5390711 () Bool)

(assert (=> b!4580394 m!5390711))

(assert (=> b!4579986 d!1434240))

(declare-fun d!1434242 () Bool)

(declare-fun res!1913716 () Bool)

(declare-fun e!2856280 () Bool)

(assert (=> d!1434242 (=> res!1913716 e!2856280)))

(assert (=> d!1434242 (= res!1913716 (and ((_ is Cons!50950) lt!1745226) (= (_1!29055 (h!56885 lt!1745226)) key!3287)))))

(assert (=> d!1434242 (= (containsKey!2054 lt!1745226 key!3287) e!2856280)))

(declare-fun b!4580396 () Bool)

(declare-fun e!2856281 () Bool)

(assert (=> b!4580396 (= e!2856280 e!2856281)))

(declare-fun res!1913717 () Bool)

(assert (=> b!4580396 (=> (not res!1913717) (not e!2856281))))

(assert (=> b!4580396 (= res!1913717 ((_ is Cons!50950) lt!1745226))))

(declare-fun b!4580397 () Bool)

(assert (=> b!4580397 (= e!2856281 (containsKey!2054 (t!358064 lt!1745226) key!3287))))

(assert (= (and d!1434242 (not res!1913716)) b!4580396))

(assert (= (and b!4580396 res!1913717) b!4580397))

(declare-fun m!5390713 () Bool)

(assert (=> b!4580397 m!5390713))

(assert (=> b!4579968 d!1434242))

(declare-fun bs!972133 () Bool)

(declare-fun d!1434244 () Bool)

(assert (= bs!972133 (and d!1434244 d!1434210)))

(declare-fun lambda!183171 () Int)

(assert (=> bs!972133 (= lambda!183171 lambda!183163)))

(declare-fun bs!972134 () Bool)

(assert (= bs!972134 (and d!1434244 d!1434168)))

(assert (=> bs!972134 (= lambda!183171 lambda!183155)))

(declare-fun bs!972135 () Bool)

(assert (= bs!972135 (and d!1434244 b!4579991)))

(assert (=> bs!972135 (not (= lambda!183171 lambda!183042))))

(declare-fun bs!972136 () Bool)

(assert (= bs!972136 (and d!1434244 d!1434134)))

(assert (=> bs!972136 (= lambda!183171 lambda!183144)))

(declare-fun bs!972137 () Bool)

(assert (= bs!972137 (and d!1434244 start!456028)))

(assert (=> bs!972137 (= lambda!183171 lambda!183041)))

(declare-fun bs!972138 () Bool)

(assert (= bs!972138 (and d!1434244 d!1434056)))

(assert (=> bs!972138 (= lambda!183171 lambda!183049)))

(declare-fun bs!972139 () Bool)

(assert (= bs!972139 (and d!1434244 d!1434136)))

(assert (=> bs!972139 (= lambda!183171 lambda!183150)))

(declare-fun bs!972140 () Bool)

(assert (= bs!972140 (and d!1434244 d!1434174)))

(assert (=> bs!972140 (= lambda!183171 lambda!183156)))

(declare-fun bs!972141 () Bool)

(assert (= bs!972141 (and d!1434244 d!1434144)))

(assert (=> bs!972141 (= lambda!183171 lambda!183154)))

(declare-fun bs!972142 () Bool)

(assert (= bs!972142 (and d!1434244 d!1434230)))

(assert (=> bs!972142 (= lambda!183171 lambda!183170)))

(declare-fun lt!1745703 () ListMap!3813)

(assert (=> d!1434244 (invariantList!1097 (toList!4552 lt!1745703))))

(declare-fun e!2856282 () ListMap!3813)

(assert (=> d!1434244 (= lt!1745703 e!2856282)))

(declare-fun c!783931 () Bool)

(assert (=> d!1434244 (= c!783931 ((_ is Cons!50951) (toList!4551 lt!1745235)))))

(assert (=> d!1434244 (forall!10500 (toList!4551 lt!1745235) lambda!183171)))

(assert (=> d!1434244 (= (extractMap!1328 (toList!4551 lt!1745235)) lt!1745703)))

(declare-fun b!4580398 () Bool)

(assert (=> b!4580398 (= e!2856282 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))))))

(declare-fun b!4580399 () Bool)

(assert (=> b!4580399 (= e!2856282 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434244 c!783931) b!4580398))

(assert (= (and d!1434244 (not c!783931)) b!4580399))

(declare-fun m!5390715 () Bool)

(assert (=> d!1434244 m!5390715))

(declare-fun m!5390717 () Bool)

(assert (=> d!1434244 m!5390717))

(declare-fun m!5390719 () Bool)

(assert (=> b!4580398 m!5390719))

(assert (=> b!4580398 m!5390719))

(declare-fun m!5390721 () Bool)

(assert (=> b!4580398 m!5390721))

(assert (=> b!4579969 d!1434244))

(declare-fun bs!972143 () Bool)

(declare-fun d!1434246 () Bool)

(assert (= bs!972143 (and d!1434246 d!1434210)))

(declare-fun lambda!183174 () Int)

(assert (=> bs!972143 (= lambda!183174 lambda!183163)))

(declare-fun bs!972144 () Bool)

(assert (= bs!972144 (and d!1434246 d!1434168)))

(assert (=> bs!972144 (= lambda!183174 lambda!183155)))

(declare-fun bs!972145 () Bool)

(assert (= bs!972145 (and d!1434246 d!1434244)))

(assert (=> bs!972145 (= lambda!183174 lambda!183171)))

(declare-fun bs!972146 () Bool)

(assert (= bs!972146 (and d!1434246 b!4579991)))

(assert (=> bs!972146 (not (= lambda!183174 lambda!183042))))

(declare-fun bs!972147 () Bool)

(assert (= bs!972147 (and d!1434246 d!1434134)))

(assert (=> bs!972147 (= lambda!183174 lambda!183144)))

(declare-fun bs!972148 () Bool)

(assert (= bs!972148 (and d!1434246 start!456028)))

(assert (=> bs!972148 (= lambda!183174 lambda!183041)))

(declare-fun bs!972149 () Bool)

(assert (= bs!972149 (and d!1434246 d!1434056)))

(assert (=> bs!972149 (= lambda!183174 lambda!183049)))

(declare-fun bs!972150 () Bool)

(assert (= bs!972150 (and d!1434246 d!1434136)))

(assert (=> bs!972150 (= lambda!183174 lambda!183150)))

(declare-fun bs!972151 () Bool)

(assert (= bs!972151 (and d!1434246 d!1434174)))

(assert (=> bs!972151 (= lambda!183174 lambda!183156)))

(declare-fun bs!972152 () Bool)

(assert (= bs!972152 (and d!1434246 d!1434144)))

(assert (=> bs!972152 (= lambda!183174 lambda!183154)))

(declare-fun bs!972153 () Bool)

(assert (= bs!972153 (and d!1434246 d!1434230)))

(assert (=> bs!972153 (= lambda!183174 lambda!183170)))

(assert (=> d!1434246 (contains!13846 (extractMap!1328 (toList!4551 lt!1745235)) key!3287)))

(declare-fun lt!1745706 () Unit!105525)

(declare-fun choose!30529 (ListLongMap!3183 K!12320 Hashable!5667) Unit!105525)

(assert (=> d!1434246 (= lt!1745706 (choose!30529 lt!1745235 key!3287 hashF!1107))))

(assert (=> d!1434246 (forall!10500 (toList!4551 lt!1745235) lambda!183174)))

(assert (=> d!1434246 (= (lemmaListContainsThenExtractedMapContains!228 lt!1745235 key!3287 hashF!1107) lt!1745706)))

(declare-fun bs!972154 () Bool)

(assert (= bs!972154 d!1434246))

(assert (=> bs!972154 m!5389755))

(assert (=> bs!972154 m!5389755))

(declare-fun m!5390723 () Bool)

(assert (=> bs!972154 m!5390723))

(declare-fun m!5390725 () Bool)

(assert (=> bs!972154 m!5390725))

(declare-fun m!5390727 () Bool)

(assert (=> bs!972154 m!5390727))

(assert (=> b!4579969 d!1434246))

(declare-fun b!4580400 () Bool)

(declare-fun e!2856288 () Unit!105525)

(declare-fun Unit!105609 () Unit!105525)

(assert (=> b!4580400 (= e!2856288 Unit!105609)))

(declare-fun b!4580401 () Bool)

(declare-fun e!2856283 () Bool)

(declare-fun e!2856286 () Bool)

(assert (=> b!4580401 (= e!2856283 e!2856286)))

(declare-fun res!1913719 () Bool)

(assert (=> b!4580401 (=> (not res!1913719) (not e!2856286))))

(assert (=> b!4580401 (= res!1913719 (isDefined!8597 (getValueByKey!1254 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287)))))

(declare-fun b!4580402 () Bool)

(declare-fun e!2856285 () Unit!105525)

(assert (=> b!4580402 (= e!2856285 e!2856288)))

(declare-fun c!783933 () Bool)

(declare-fun call!319721 () Bool)

(assert (=> b!4580402 (= c!783933 call!319721)))

(declare-fun b!4580403 () Bool)

(assert (=> b!4580403 (= e!2856286 (contains!13849 (keys!17800 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(declare-fun b!4580404 () Bool)

(declare-fun e!2856284 () List!51077)

(assert (=> b!4580404 (= e!2856284 (keys!17800 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))

(declare-fun b!4580405 () Bool)

(declare-fun lt!1745710 () Unit!105525)

(assert (=> b!4580405 (= e!2856285 lt!1745710)))

(declare-fun lt!1745708 () Unit!105525)

(assert (=> b!4580405 (= lt!1745708 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(assert (=> b!4580405 (isDefined!8597 (getValueByKey!1254 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(declare-fun lt!1745713 () Unit!105525)

(assert (=> b!4580405 (= lt!1745713 lt!1745708)))

(assert (=> b!4580405 (= lt!1745710 (lemmaInListThenGetKeysListContains!540 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(assert (=> b!4580405 call!319721))

(declare-fun bm!319716 () Bool)

(assert (=> bm!319716 (= call!319721 (contains!13849 e!2856284 key!3287))))

(declare-fun c!783932 () Bool)

(declare-fun c!783934 () Bool)

(assert (=> bm!319716 (= c!783932 c!783934)))

(declare-fun d!1434248 () Bool)

(assert (=> d!1434248 e!2856283))

(declare-fun res!1913720 () Bool)

(assert (=> d!1434248 (=> res!1913720 e!2856283)))

(declare-fun e!2856287 () Bool)

(assert (=> d!1434248 (= res!1913720 e!2856287)))

(declare-fun res!1913718 () Bool)

(assert (=> d!1434248 (=> (not res!1913718) (not e!2856287))))

(declare-fun lt!1745709 () Bool)

(assert (=> d!1434248 (= res!1913718 (not lt!1745709))))

(declare-fun lt!1745714 () Bool)

(assert (=> d!1434248 (= lt!1745709 lt!1745714)))

(declare-fun lt!1745707 () Unit!105525)

(assert (=> d!1434248 (= lt!1745707 e!2856285)))

(assert (=> d!1434248 (= c!783934 lt!1745714)))

(assert (=> d!1434248 (= lt!1745714 (containsKey!2057 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(assert (=> d!1434248 (= (contains!13846 (extractMap!1328 (t!358065 (toList!4551 lm!1477))) key!3287) lt!1745709)))

(declare-fun b!4580406 () Bool)

(assert (=> b!4580406 (= e!2856284 (getKeysList!544 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))

(declare-fun b!4580407 () Bool)

(assert (=> b!4580407 false))

(declare-fun lt!1745711 () Unit!105525)

(declare-fun lt!1745712 () Unit!105525)

(assert (=> b!4580407 (= lt!1745711 lt!1745712)))

(assert (=> b!4580407 (containsKey!2057 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287)))

(assert (=> b!4580407 (= lt!1745712 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(declare-fun Unit!105610 () Unit!105525)

(assert (=> b!4580407 (= e!2856288 Unit!105610)))

(declare-fun b!4580408 () Bool)

(assert (=> b!4580408 (= e!2856287 (not (contains!13849 (keys!17800 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287)))))

(assert (= (and d!1434248 c!783934) b!4580405))

(assert (= (and d!1434248 (not c!783934)) b!4580402))

(assert (= (and b!4580402 c!783933) b!4580407))

(assert (= (and b!4580402 (not c!783933)) b!4580400))

(assert (= (or b!4580405 b!4580402) bm!319716))

(assert (= (and bm!319716 c!783932) b!4580406))

(assert (= (and bm!319716 (not c!783932)) b!4580404))

(assert (= (and d!1434248 res!1913718) b!4580408))

(assert (= (and d!1434248 (not res!1913720)) b!4580401))

(assert (= (and b!4580401 res!1913719) b!4580403))

(declare-fun m!5390729 () Bool)

(assert (=> b!4580407 m!5390729))

(declare-fun m!5390731 () Bool)

(assert (=> b!4580407 m!5390731))

(assert (=> b!4580408 m!5389761))

(declare-fun m!5390733 () Bool)

(assert (=> b!4580408 m!5390733))

(assert (=> b!4580408 m!5390733))

(declare-fun m!5390735 () Bool)

(assert (=> b!4580408 m!5390735))

(declare-fun m!5390737 () Bool)

(assert (=> b!4580401 m!5390737))

(assert (=> b!4580401 m!5390737))

(declare-fun m!5390739 () Bool)

(assert (=> b!4580401 m!5390739))

(declare-fun m!5390741 () Bool)

(assert (=> b!4580406 m!5390741))

(assert (=> b!4580404 m!5389761))

(assert (=> b!4580404 m!5390733))

(declare-fun m!5390743 () Bool)

(assert (=> b!4580405 m!5390743))

(assert (=> b!4580405 m!5390737))

(assert (=> b!4580405 m!5390737))

(assert (=> b!4580405 m!5390739))

(declare-fun m!5390745 () Bool)

(assert (=> b!4580405 m!5390745))

(assert (=> d!1434248 m!5390729))

(declare-fun m!5390747 () Bool)

(assert (=> bm!319716 m!5390747))

(assert (=> b!4580403 m!5389761))

(assert (=> b!4580403 m!5390733))

(assert (=> b!4580403 m!5390733))

(assert (=> b!4580403 m!5390735))

(assert (=> b!4579969 d!1434248))

(declare-fun bs!972155 () Bool)

(declare-fun d!1434250 () Bool)

(assert (= bs!972155 (and d!1434250 d!1434210)))

(declare-fun lambda!183175 () Int)

(assert (=> bs!972155 (= lambda!183175 lambda!183163)))

(declare-fun bs!972156 () Bool)

(assert (= bs!972156 (and d!1434250 d!1434168)))

(assert (=> bs!972156 (= lambda!183175 lambda!183155)))

(declare-fun bs!972157 () Bool)

(assert (= bs!972157 (and d!1434250 d!1434244)))

(assert (=> bs!972157 (= lambda!183175 lambda!183171)))

(declare-fun bs!972158 () Bool)

(assert (= bs!972158 (and d!1434250 b!4579991)))

(assert (=> bs!972158 (not (= lambda!183175 lambda!183042))))

(declare-fun bs!972159 () Bool)

(assert (= bs!972159 (and d!1434250 d!1434246)))

(assert (=> bs!972159 (= lambda!183175 lambda!183174)))

(declare-fun bs!972160 () Bool)

(assert (= bs!972160 (and d!1434250 d!1434134)))

(assert (=> bs!972160 (= lambda!183175 lambda!183144)))

(declare-fun bs!972161 () Bool)

(assert (= bs!972161 (and d!1434250 start!456028)))

(assert (=> bs!972161 (= lambda!183175 lambda!183041)))

(declare-fun bs!972162 () Bool)

(assert (= bs!972162 (and d!1434250 d!1434056)))

(assert (=> bs!972162 (= lambda!183175 lambda!183049)))

(declare-fun bs!972163 () Bool)

(assert (= bs!972163 (and d!1434250 d!1434136)))

(assert (=> bs!972163 (= lambda!183175 lambda!183150)))

(declare-fun bs!972164 () Bool)

(assert (= bs!972164 (and d!1434250 d!1434174)))

(assert (=> bs!972164 (= lambda!183175 lambda!183156)))

(declare-fun bs!972165 () Bool)

(assert (= bs!972165 (and d!1434250 d!1434144)))

(assert (=> bs!972165 (= lambda!183175 lambda!183154)))

(declare-fun bs!972166 () Bool)

(assert (= bs!972166 (and d!1434250 d!1434230)))

(assert (=> bs!972166 (= lambda!183175 lambda!183170)))

(declare-fun lt!1745715 () ListMap!3813)

(assert (=> d!1434250 (invariantList!1097 (toList!4552 lt!1745715))))

(declare-fun e!2856289 () ListMap!3813)

(assert (=> d!1434250 (= lt!1745715 e!2856289)))

(declare-fun c!783935 () Bool)

(assert (=> d!1434250 (= c!783935 ((_ is Cons!50951) (t!358065 (toList!4551 lm!1477))))))

(assert (=> d!1434250 (forall!10500 (t!358065 (toList!4551 lm!1477)) lambda!183175)))

(assert (=> d!1434250 (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745715)))

(declare-fun b!4580409 () Bool)

(assert (=> b!4580409 (= e!2856289 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))))))

(declare-fun b!4580410 () Bool)

(assert (=> b!4580410 (= e!2856289 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434250 c!783935) b!4580409))

(assert (= (and d!1434250 (not c!783935)) b!4580410))

(declare-fun m!5390749 () Bool)

(assert (=> d!1434250 m!5390749))

(declare-fun m!5390751 () Bool)

(assert (=> d!1434250 m!5390751))

(declare-fun m!5390753 () Bool)

(assert (=> b!4580409 m!5390753))

(assert (=> b!4580409 m!5390753))

(declare-fun m!5390755 () Bool)

(assert (=> b!4580409 m!5390755))

(assert (=> b!4579969 d!1434250))

(declare-fun b!4580411 () Bool)

(declare-fun e!2856295 () Unit!105525)

(declare-fun Unit!105611 () Unit!105525)

(assert (=> b!4580411 (= e!2856295 Unit!105611)))

(declare-fun b!4580412 () Bool)

(declare-fun e!2856290 () Bool)

(declare-fun e!2856293 () Bool)

(assert (=> b!4580412 (= e!2856290 e!2856293)))

(declare-fun res!1913722 () Bool)

(assert (=> b!4580412 (=> (not res!1913722) (not e!2856293))))

(assert (=> b!4580412 (= res!1913722 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287)))))

(declare-fun b!4580413 () Bool)

(declare-fun e!2856292 () Unit!105525)

(assert (=> b!4580413 (= e!2856292 e!2856295)))

(declare-fun c!783937 () Bool)

(declare-fun call!319722 () Bool)

(assert (=> b!4580413 (= c!783937 call!319722)))

(declare-fun b!4580414 () Bool)

(assert (=> b!4580414 (= e!2856293 (contains!13849 (keys!17800 lt!1745232) key!3287))))

(declare-fun b!4580415 () Bool)

(declare-fun e!2856291 () List!51077)

(assert (=> b!4580415 (= e!2856291 (keys!17800 lt!1745232))))

(declare-fun b!4580416 () Bool)

(declare-fun lt!1745719 () Unit!105525)

(assert (=> b!4580416 (= e!2856292 lt!1745719)))

(declare-fun lt!1745717 () Unit!105525)

(assert (=> b!4580416 (= lt!1745717 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745232) key!3287))))

(assert (=> b!4580416 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287))))

(declare-fun lt!1745722 () Unit!105525)

(assert (=> b!4580416 (= lt!1745722 lt!1745717)))

(assert (=> b!4580416 (= lt!1745719 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745232) key!3287))))

(assert (=> b!4580416 call!319722))

(declare-fun bm!319717 () Bool)

(assert (=> bm!319717 (= call!319722 (contains!13849 e!2856291 key!3287))))

(declare-fun c!783936 () Bool)

(declare-fun c!783938 () Bool)

(assert (=> bm!319717 (= c!783936 c!783938)))

(declare-fun d!1434252 () Bool)

(assert (=> d!1434252 e!2856290))

(declare-fun res!1913723 () Bool)

(assert (=> d!1434252 (=> res!1913723 e!2856290)))

(declare-fun e!2856294 () Bool)

(assert (=> d!1434252 (= res!1913723 e!2856294)))

(declare-fun res!1913721 () Bool)

(assert (=> d!1434252 (=> (not res!1913721) (not e!2856294))))

(declare-fun lt!1745718 () Bool)

(assert (=> d!1434252 (= res!1913721 (not lt!1745718))))

(declare-fun lt!1745723 () Bool)

(assert (=> d!1434252 (= lt!1745718 lt!1745723)))

(declare-fun lt!1745716 () Unit!105525)

(assert (=> d!1434252 (= lt!1745716 e!2856292)))

(assert (=> d!1434252 (= c!783938 lt!1745723)))

(assert (=> d!1434252 (= lt!1745723 (containsKey!2057 (toList!4552 lt!1745232) key!3287))))

(assert (=> d!1434252 (= (contains!13846 lt!1745232 key!3287) lt!1745718)))

(declare-fun b!4580417 () Bool)

(assert (=> b!4580417 (= e!2856291 (getKeysList!544 (toList!4552 lt!1745232)))))

(declare-fun b!4580418 () Bool)

(assert (=> b!4580418 false))

(declare-fun lt!1745720 () Unit!105525)

(declare-fun lt!1745721 () Unit!105525)

(assert (=> b!4580418 (= lt!1745720 lt!1745721)))

(assert (=> b!4580418 (containsKey!2057 (toList!4552 lt!1745232) key!3287)))

(assert (=> b!4580418 (= lt!1745721 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745232) key!3287))))

(declare-fun Unit!105612 () Unit!105525)

(assert (=> b!4580418 (= e!2856295 Unit!105612)))

(declare-fun b!4580419 () Bool)

(assert (=> b!4580419 (= e!2856294 (not (contains!13849 (keys!17800 lt!1745232) key!3287)))))

(assert (= (and d!1434252 c!783938) b!4580416))

(assert (= (and d!1434252 (not c!783938)) b!4580413))

(assert (= (and b!4580413 c!783937) b!4580418))

(assert (= (and b!4580413 (not c!783937)) b!4580411))

(assert (= (or b!4580416 b!4580413) bm!319717))

(assert (= (and bm!319717 c!783936) b!4580417))

(assert (= (and bm!319717 (not c!783936)) b!4580415))

(assert (= (and d!1434252 res!1913721) b!4580419))

(assert (= (and d!1434252 (not res!1913723)) b!4580412))

(assert (= (and b!4580412 res!1913722) b!4580414))

(declare-fun m!5390757 () Bool)

(assert (=> b!4580418 m!5390757))

(declare-fun m!5390759 () Bool)

(assert (=> b!4580418 m!5390759))

(assert (=> b!4580419 m!5390473))

(assert (=> b!4580419 m!5390473))

(declare-fun m!5390761 () Bool)

(assert (=> b!4580419 m!5390761))

(declare-fun m!5390763 () Bool)

(assert (=> b!4580412 m!5390763))

(assert (=> b!4580412 m!5390763))

(declare-fun m!5390765 () Bool)

(assert (=> b!4580412 m!5390765))

(declare-fun m!5390767 () Bool)

(assert (=> b!4580417 m!5390767))

(assert (=> b!4580415 m!5390473))

(declare-fun m!5390769 () Bool)

(assert (=> b!4580416 m!5390769))

(assert (=> b!4580416 m!5390763))

(assert (=> b!4580416 m!5390763))

(assert (=> b!4580416 m!5390765))

(declare-fun m!5390771 () Bool)

(assert (=> b!4580416 m!5390771))

(assert (=> d!1434252 m!5390757))

(declare-fun m!5390773 () Bool)

(assert (=> bm!319717 m!5390773))

(assert (=> b!4580414 m!5390473))

(assert (=> b!4580414 m!5390473))

(assert (=> b!4580414 m!5390761))

(assert (=> b!4579969 d!1434252))

(declare-fun d!1434254 () Bool)

(declare-fun lt!1745724 () Bool)

(assert (=> d!1434254 (= lt!1745724 (select (content!8588 (t!358065 (toList!4551 lm!1477))) lt!1745215))))

(declare-fun e!2856296 () Bool)

(assert (=> d!1434254 (= lt!1745724 e!2856296)))

(declare-fun res!1913724 () Bool)

(assert (=> d!1434254 (=> (not res!1913724) (not e!2856296))))

(assert (=> d!1434254 (= res!1913724 ((_ is Cons!50951) (t!358065 (toList!4551 lm!1477))))))

(assert (=> d!1434254 (= (contains!13845 (t!358065 (toList!4551 lm!1477)) lt!1745215) lt!1745724)))

(declare-fun b!4580420 () Bool)

(declare-fun e!2856297 () Bool)

(assert (=> b!4580420 (= e!2856296 e!2856297)))

(declare-fun res!1913725 () Bool)

(assert (=> b!4580420 (=> res!1913725 e!2856297)))

(assert (=> b!4580420 (= res!1913725 (= (h!56886 (t!358065 (toList!4551 lm!1477))) lt!1745215))))

(declare-fun b!4580421 () Bool)

(assert (=> b!4580421 (= e!2856297 (contains!13845 (t!358065 (t!358065 (toList!4551 lm!1477))) lt!1745215))))

(assert (= (and d!1434254 res!1913724) b!4580420))

(assert (= (and b!4580420 (not res!1913725)) b!4580421))

(declare-fun m!5390775 () Bool)

(assert (=> d!1434254 m!5390775))

(declare-fun m!5390777 () Bool)

(assert (=> d!1434254 m!5390777))

(declare-fun m!5390779 () Bool)

(assert (=> b!4580421 m!5390779))

(assert (=> b!4579967 d!1434254))

(declare-fun bs!972167 () Bool)

(declare-fun d!1434256 () Bool)

(assert (= bs!972167 (and d!1434256 b!4580368)))

(declare-fun lambda!183178 () Int)

(assert (=> bs!972167 (not (= lambda!183178 lambda!183166))))

(declare-fun bs!972168 () Bool)

(assert (= bs!972168 (and d!1434256 b!4580306)))

(assert (=> bs!972168 (not (= lambda!183178 lambda!183157))))

(assert (=> bs!972167 (not (= lambda!183178 lambda!183165))))

(declare-fun bs!972169 () Bool)

(assert (= bs!972169 (and d!1434256 b!4580305)))

(assert (=> bs!972169 (not (= lambda!183178 lambda!183159))))

(declare-fun bs!972170 () Bool)

(assert (= bs!972170 (and d!1434256 d!1434224)))

(assert (=> bs!972170 (not (= lambda!183178 lambda!183167))))

(declare-fun bs!972171 () Bool)

(assert (= bs!972171 (and d!1434256 d!1434060)))

(assert (=> bs!972171 (not (= lambda!183178 lambda!183143))))

(declare-fun bs!972172 () Bool)

(assert (= bs!972172 (and d!1434256 b!4580369)))

(assert (=> bs!972172 (not (= lambda!183178 lambda!183164))))

(declare-fun bs!972173 () Bool)

(assert (= bs!972173 (and d!1434256 b!4580258)))

(assert (=> bs!972173 (not (= lambda!183178 lambda!183140))))

(declare-fun bs!972174 () Bool)

(assert (= bs!972174 (and d!1434256 b!4580257)))

(assert (=> bs!972174 (not (= lambda!183178 lambda!183141))))

(declare-fun bs!972175 () Bool)

(assert (= bs!972175 (and d!1434256 d!1434184)))

(assert (=> bs!972175 (not (= lambda!183178 lambda!183160))))

(assert (=> bs!972174 (not (= lambda!183178 lambda!183142))))

(assert (=> bs!972169 (not (= lambda!183178 lambda!183158))))

(declare-fun bs!972176 () Bool)

(assert (= bs!972176 (and d!1434256 b!4579991)))

(assert (=> bs!972176 (= (= hash!344 (_1!29056 (h!56886 (toList!4551 lm!1477)))) (= lambda!183178 lambda!183043))))

(assert (=> d!1434256 true))

(assert (=> d!1434256 true))

(assert (=> d!1434256 (= (allKeysSameHash!1126 newBucket!178 hash!344 hashF!1107) (forall!10502 newBucket!178 lambda!183178))))

(declare-fun bs!972177 () Bool)

(assert (= bs!972177 d!1434256))

(declare-fun m!5390781 () Bool)

(assert (=> bs!972177 m!5390781))

(assert (=> b!4579988 d!1434256))

(declare-fun bs!972178 () Bool)

(declare-fun d!1434258 () Bool)

(assert (= bs!972178 (and d!1434258 d!1434210)))

(declare-fun lambda!183181 () Int)

(assert (=> bs!972178 (not (= lambda!183181 lambda!183163))))

(declare-fun bs!972179 () Bool)

(assert (= bs!972179 (and d!1434258 d!1434168)))

(assert (=> bs!972179 (not (= lambda!183181 lambda!183155))))

(declare-fun bs!972180 () Bool)

(assert (= bs!972180 (and d!1434258 d!1434244)))

(assert (=> bs!972180 (not (= lambda!183181 lambda!183171))))

(declare-fun bs!972181 () Bool)

(assert (= bs!972181 (and d!1434258 b!4579991)))

(assert (=> bs!972181 (= lambda!183181 lambda!183042)))

(declare-fun bs!972182 () Bool)

(assert (= bs!972182 (and d!1434258 d!1434246)))

(assert (=> bs!972182 (not (= lambda!183181 lambda!183174))))

(declare-fun bs!972183 () Bool)

(assert (= bs!972183 (and d!1434258 start!456028)))

(assert (=> bs!972183 (not (= lambda!183181 lambda!183041))))

(declare-fun bs!972184 () Bool)

(assert (= bs!972184 (and d!1434258 d!1434056)))

(assert (=> bs!972184 (not (= lambda!183181 lambda!183049))))

(declare-fun bs!972185 () Bool)

(assert (= bs!972185 (and d!1434258 d!1434250)))

(assert (=> bs!972185 (not (= lambda!183181 lambda!183175))))

(declare-fun bs!972186 () Bool)

(assert (= bs!972186 (and d!1434258 d!1434134)))

(assert (=> bs!972186 (not (= lambda!183181 lambda!183144))))

(declare-fun bs!972187 () Bool)

(assert (= bs!972187 (and d!1434258 d!1434136)))

(assert (=> bs!972187 (not (= lambda!183181 lambda!183150))))

(declare-fun bs!972188 () Bool)

(assert (= bs!972188 (and d!1434258 d!1434174)))

(assert (=> bs!972188 (not (= lambda!183181 lambda!183156))))

(declare-fun bs!972189 () Bool)

(assert (= bs!972189 (and d!1434258 d!1434144)))

(assert (=> bs!972189 (not (= lambda!183181 lambda!183154))))

(declare-fun bs!972190 () Bool)

(assert (= bs!972190 (and d!1434258 d!1434230)))

(assert (=> bs!972190 (not (= lambda!183181 lambda!183170))))

(assert (=> d!1434258 true))

(assert (=> d!1434258 (= (allKeysSameHashInMap!1379 lm!1477 hashF!1107) (forall!10500 (toList!4551 lm!1477) lambda!183181))))

(declare-fun bs!972191 () Bool)

(assert (= bs!972191 d!1434258))

(declare-fun m!5390783 () Bool)

(assert (=> bs!972191 m!5390783))

(assert (=> b!4579989 d!1434258))

(declare-fun e!2856300 () Bool)

(declare-fun tp!1339749 () Bool)

(declare-fun b!4580428 () Bool)

(assert (=> b!4580428 (= e!2856300 (and tp_is_empty!28365 tp_is_empty!28367 tp!1339749))))

(assert (=> b!4579990 (= tp!1339737 e!2856300)))

(assert (= (and b!4579990 ((_ is Cons!50950) (t!358064 newBucket!178))) b!4580428))

(declare-fun b!4580433 () Bool)

(declare-fun e!2856303 () Bool)

(declare-fun tp!1339754 () Bool)

(declare-fun tp!1339755 () Bool)

(assert (=> b!4580433 (= e!2856303 (and tp!1339754 tp!1339755))))

(assert (=> b!4579973 (= tp!1339736 e!2856303)))

(assert (= (and b!4579973 ((_ is Cons!50951) (toList!4551 lm!1477))) b!4580433))

(declare-fun b_lambda!166021 () Bool)

(assert (= b_lambda!166015 (or start!456028 b_lambda!166021)))

(declare-fun bs!972192 () Bool)

(declare-fun d!1434260 () Bool)

(assert (= bs!972192 (and d!1434260 start!456028)))

(assert (=> bs!972192 (= (dynLambda!21335 lambda!183041 (h!56886 (toList!4551 lm!1477))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lm!1477)))))))

(declare-fun m!5390785 () Bool)

(assert (=> bs!972192 m!5390785))

(assert (=> b!4580361 d!1434260))

(declare-fun b_lambda!166023 () Bool)

(assert (= b_lambda!166011 (or b!4579991 b_lambda!166023)))

(declare-fun bs!972193 () Bool)

(declare-fun d!1434262 () Bool)

(assert (= bs!972193 (and d!1434262 b!4579991)))

(assert (=> bs!972193 (= (dynLambda!21335 lambda!183042 (h!56886 (toList!4551 lm!1477))) (allKeysSameHash!1126 (_2!29056 (h!56886 (toList!4551 lm!1477))) (_1!29056 (h!56886 (toList!4551 lm!1477))) hashF!1107))))

(declare-fun m!5390787 () Bool)

(assert (=> bs!972193 m!5390787))

(assert (=> d!1434192 d!1434262))

(declare-fun b_lambda!166025 () Bool)

(assert (= b_lambda!166017 (or start!456028 b_lambda!166025)))

(assert (=> d!1434218 d!1434260))

(declare-fun b_lambda!166027 () Bool)

(assert (= b_lambda!166019 (or start!456028 b_lambda!166027)))

(declare-fun bs!972194 () Bool)

(declare-fun d!1434264 () Bool)

(assert (= bs!972194 (and d!1434264 start!456028)))

(assert (=> bs!972194 (= (dynLambda!21335 lambda!183041 lt!1745215) (noDuplicateKeys!1272 (_2!29056 lt!1745215)))))

(declare-fun m!5390789 () Bool)

(assert (=> bs!972194 m!5390789))

(assert (=> d!1434232 d!1434264))

(declare-fun b_lambda!166029 () Bool)

(assert (= b_lambda!166013 (or b!4579991 b_lambda!166029)))

(declare-fun bs!972195 () Bool)

(declare-fun d!1434266 () Bool)

(assert (= bs!972195 (and d!1434266 b!4579991)))

(assert (=> bs!972195 (= (dynLambda!21336 lambda!183043 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))) (= (hash!3119 hashF!1107 (_1!29055 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212))))) (_1!29056 (h!56886 (toList!4551 lm!1477)))))))

(declare-fun m!5390791 () Bool)

(assert (=> bs!972195 m!5390791))

(assert (=> d!1434194 d!1434266))

(check-sat (not b!4580266) (not b!4580367) (not b!4580107) (not b!4580351) (not d!1434252) (not d!1434182) (not d!1434056) (not b!4580292) (not b!4580257) (not b!4580064) (not d!1434230) (not b!4580363) (not b_lambda!166021) (not b!4580419) (not b!4580409) (not b!4580364) (not d!1434138) (not b_lambda!166023) (not d!1434256) (not d!1434198) (not b!4580394) (not b!4580034) (not b!4580294) (not d!1434190) (not d!1434140) (not b!4580112) (not b!4580264) (not d!1434218) (not b!4580373) (not b!4580398) (not bm!319712) (not bs!972192) (not d!1434040) (not b!4580255) (not d!1434222) (not b!4580404) (not d!1434246) (not bm!319709) (not b!4580021) (not b!4580408) (not bs!972195) (not b!4580416) (not b!4580114) (not d!1434010) (not d!1434232) (not b!4580313) (not bm!319717) (not d!1434192) (not b!4580256) (not b!4580403) (not b!4580343) (not b!4580421) (not d!1434024) (not b!4580259) (not b!4580354) (not bm!319680) (not b!4580366) (not bm!319708) (not bm!319713) (not b!4580330) (not d!1434184) (not b!4580418) (not b!4580300) (not d!1434186) (not bs!972194) (not b!4580333) (not b!4580365) (not d!1434168) (not d!1434244) (not bm!319715) (not b_lambda!166025) (not b!4580412) (not b!4580113) (not b!4580020) (not b!4580380) (not b!4580111) (not d!1434134) (not b!4580415) (not b!4580334) (not b_lambda!166029) (not b!4580344) (not b!4580304) (not d!1434044) (not b!4580374) (not b!4580110) (not d!1434254) (not b!4580428) (not d!1434238) (not b!4580062) (not d!1434200) (not b!4580289) (not b!4580368) (not d!1434248) (not bm!319711) (not b!4580035) (not b!4580295) (not d!1434228) (not b!4580336) (not bm!319710) (not b!4580362) (not b!4580405) (not d!1434250) (not d!1434204) (not b!4580417) (not bm!319714) (not d!1434166) (not b!4580340) (not b!4580407) (not d!1434226) (not d!1434194) (not b!4580371) (not d!1434170) (not d!1434180) (not d!1434008) (not b!4580356) (not b!4580383) (not bs!972193) (not b!4580290) (not d!1434004) tp_is_empty!28365 (not b!4580401) (not bm!319716) (not b!4580119) (not b!4580397) (not d!1434060) (not b!4580406) (not b!4580303) (not d!1434174) (not d!1434234) (not b!4580307) (not d!1434136) (not d!1434144) (not d!1434236) (not b!4580433) (not b!4580267) (not d!1434240) (not d!1434202) (not b!4580353) (not d!1434176) (not d!1434224) (not b!4580414) (not d!1434058) (not b!4580109) (not d!1434220) (not b!4580305) tp_is_empty!28367 (not d!1434214) (not d!1434258) (not d!1434172) (not b!4580302) (not b!4580335) (not bm!319707) (not b!4580370) (not d!1434026) (not b_lambda!166027) (not d!1434210) (not b!4580301))
(check-sat)
(get-model)

(declare-fun d!1434268 () Bool)

(assert (=> d!1434268 (dynLambda!21335 lambda!183042 (h!56886 (toList!4551 lm!1477)))))

(assert (=> d!1434268 true))

(declare-fun _$7!2052 () Unit!105525)

(assert (=> d!1434268 (= (choose!30521 (toList!4551 lm!1477) lambda!183042 (h!56886 (toList!4551 lm!1477))) _$7!2052)))

(declare-fun b_lambda!166031 () Bool)

(assert (=> (not b_lambda!166031) (not d!1434268)))

(declare-fun bs!972196 () Bool)

(assert (= bs!972196 d!1434268))

(assert (=> bs!972196 m!5390583))

(assert (=> d!1434192 d!1434268))

(declare-fun d!1434270 () Bool)

(declare-fun res!1913726 () Bool)

(declare-fun e!2856304 () Bool)

(assert (=> d!1434270 (=> res!1913726 e!2856304)))

(assert (=> d!1434270 (= res!1913726 ((_ is Nil!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434270 (= (forall!10500 (toList!4551 lm!1477) lambda!183042) e!2856304)))

(declare-fun b!4580434 () Bool)

(declare-fun e!2856305 () Bool)

(assert (=> b!4580434 (= e!2856304 e!2856305)))

(declare-fun res!1913727 () Bool)

(assert (=> b!4580434 (=> (not res!1913727) (not e!2856305))))

(assert (=> b!4580434 (= res!1913727 (dynLambda!21335 lambda!183042 (h!56886 (toList!4551 lm!1477))))))

(declare-fun b!4580435 () Bool)

(assert (=> b!4580435 (= e!2856305 (forall!10500 (t!358065 (toList!4551 lm!1477)) lambda!183042))))

(assert (= (and d!1434270 (not res!1913726)) b!4580434))

(assert (= (and b!4580434 res!1913727) b!4580435))

(declare-fun b_lambda!166033 () Bool)

(assert (=> (not b_lambda!166033) (not b!4580434)))

(assert (=> b!4580434 m!5390583))

(declare-fun m!5390793 () Bool)

(assert (=> b!4580435 m!5390793))

(assert (=> d!1434192 d!1434270))

(declare-fun d!1434272 () Bool)

(declare-fun res!1913728 () Bool)

(declare-fun e!2856306 () Bool)

(assert (=> d!1434272 (=> res!1913728 e!2856306)))

(assert (=> d!1434272 (= res!1913728 (and ((_ is Cons!50950) (t!358064 newBucket!178)) (= (_1!29055 (h!56885 (t!358064 newBucket!178))) (_1!29055 (h!56885 newBucket!178)))))))

(assert (=> d!1434272 (= (containsKey!2054 (t!358064 newBucket!178) (_1!29055 (h!56885 newBucket!178))) e!2856306)))

(declare-fun b!4580436 () Bool)

(declare-fun e!2856307 () Bool)

(assert (=> b!4580436 (= e!2856306 e!2856307)))

(declare-fun res!1913729 () Bool)

(assert (=> b!4580436 (=> (not res!1913729) (not e!2856307))))

(assert (=> b!4580436 (= res!1913729 ((_ is Cons!50950) (t!358064 newBucket!178)))))

(declare-fun b!4580437 () Bool)

(assert (=> b!4580437 (= e!2856307 (containsKey!2054 (t!358064 (t!358064 newBucket!178)) (_1!29055 (h!56885 newBucket!178))))))

(assert (= (and d!1434272 (not res!1913728)) b!4580436))

(assert (= (and b!4580436 res!1913729) b!4580437))

(declare-fun m!5390795 () Bool)

(assert (=> b!4580437 m!5390795))

(assert (=> b!4580300 d!1434272))

(declare-fun d!1434274 () Bool)

(declare-fun lt!1745725 () List!51074)

(assert (=> d!1434274 (not (containsKey!2054 lt!1745725 key!3287))))

(declare-fun e!2856308 () List!51074)

(assert (=> d!1434274 (= lt!1745725 e!2856308)))

(declare-fun c!783939 () Bool)

(assert (=> d!1434274 (= c!783939 (and ((_ is Cons!50950) (t!358064 lt!1745226)) (= (_1!29055 (h!56885 (t!358064 lt!1745226))) key!3287)))))

(assert (=> d!1434274 (noDuplicateKeys!1272 (t!358064 lt!1745226))))

(assert (=> d!1434274 (= (removePairForKey!899 (t!358064 lt!1745226) key!3287) lt!1745725)))

(declare-fun b!4580441 () Bool)

(declare-fun e!2856309 () List!51074)

(assert (=> b!4580441 (= e!2856309 Nil!50950)))

(declare-fun b!4580440 () Bool)

(assert (=> b!4580440 (= e!2856309 (Cons!50950 (h!56885 (t!358064 lt!1745226)) (removePairForKey!899 (t!358064 (t!358064 lt!1745226)) key!3287)))))

(declare-fun b!4580439 () Bool)

(assert (=> b!4580439 (= e!2856308 e!2856309)))

(declare-fun c!783940 () Bool)

(assert (=> b!4580439 (= c!783940 ((_ is Cons!50950) (t!358064 lt!1745226)))))

(declare-fun b!4580438 () Bool)

(assert (=> b!4580438 (= e!2856308 (t!358064 (t!358064 lt!1745226)))))

(assert (= (and d!1434274 c!783939) b!4580438))

(assert (= (and d!1434274 (not c!783939)) b!4580439))

(assert (= (and b!4580439 c!783940) b!4580440))

(assert (= (and b!4580439 (not c!783940)) b!4580441))

(declare-fun m!5390797 () Bool)

(assert (=> d!1434274 m!5390797))

(declare-fun m!5390799 () Bool)

(assert (=> d!1434274 m!5390799))

(declare-fun m!5390801 () Bool)

(assert (=> b!4580440 m!5390801))

(assert (=> b!4580394 d!1434274))

(declare-fun d!1434276 () Bool)

(declare-fun noDuplicatedKeys!306 (List!51074) Bool)

(assert (=> d!1434276 (= (invariantList!1097 (toList!4552 lt!1745668)) (noDuplicatedKeys!306 (toList!4552 lt!1745668)))))

(declare-fun bs!972197 () Bool)

(assert (= bs!972197 d!1434276))

(declare-fun m!5390803 () Bool)

(assert (=> bs!972197 m!5390803))

(assert (=> b!4580366 d!1434276))

(declare-fun d!1434278 () Bool)

(declare-fun res!1913730 () Bool)

(declare-fun e!2856310 () Bool)

(assert (=> d!1434278 (=> res!1913730 e!2856310)))

(assert (=> d!1434278 (= res!1913730 (and ((_ is Cons!50950) (t!358064 (_2!29056 lt!1745216))) (= (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))) key!3287)))))

(assert (=> d!1434278 (= (containsKey!2054 (t!358064 (_2!29056 lt!1745216)) key!3287) e!2856310)))

(declare-fun b!4580442 () Bool)

(declare-fun e!2856311 () Bool)

(assert (=> b!4580442 (= e!2856310 e!2856311)))

(declare-fun res!1913731 () Bool)

(assert (=> b!4580442 (=> (not res!1913731) (not e!2856311))))

(assert (=> b!4580442 (= res!1913731 ((_ is Cons!50950) (t!358064 (_2!29056 lt!1745216))))))

(declare-fun b!4580443 () Bool)

(assert (=> b!4580443 (= e!2856311 (containsKey!2054 (t!358064 (t!358064 (_2!29056 lt!1745216))) key!3287))))

(assert (= (and d!1434278 (not res!1913730)) b!4580442))

(assert (= (and b!4580442 res!1913731) b!4580443))

(declare-fun m!5390805 () Bool)

(assert (=> b!4580443 m!5390805))

(assert (=> b!4580313 d!1434278))

(declare-fun d!1434280 () Bool)

(declare-fun c!783943 () Bool)

(assert (=> d!1434280 (= c!783943 ((_ is Nil!50951) (toList!4551 lm!1477)))))

(declare-fun e!2856314 () (InoxSet tuple2!51524))

(assert (=> d!1434280 (= (content!8588 (toList!4551 lm!1477)) e!2856314)))

(declare-fun b!4580448 () Bool)

(assert (=> b!4580448 (= e!2856314 ((as const (Array tuple2!51524 Bool)) false))))

(declare-fun b!4580449 () Bool)

(assert (=> b!4580449 (= e!2856314 ((_ map or) (store ((as const (Array tuple2!51524 Bool)) false) (h!56886 (toList!4551 lm!1477)) true) (content!8588 (t!358065 (toList!4551 lm!1477)))))))

(assert (= (and d!1434280 c!783943) b!4580448))

(assert (= (and d!1434280 (not c!783943)) b!4580449))

(declare-fun m!5390807 () Bool)

(assert (=> b!4580449 m!5390807))

(assert (=> b!4580449 m!5390775))

(assert (=> d!1434236 d!1434280))

(declare-fun d!1434282 () Bool)

(declare-fun lt!1745726 () Bool)

(assert (=> d!1434282 (= lt!1745726 (select (content!8588 (toList!4551 lt!1745607)) lt!1745211))))

(declare-fun e!2856315 () Bool)

(assert (=> d!1434282 (= lt!1745726 e!2856315)))

(declare-fun res!1913732 () Bool)

(assert (=> d!1434282 (=> (not res!1913732) (not e!2856315))))

(assert (=> d!1434282 (= res!1913732 ((_ is Cons!50951) (toList!4551 lt!1745607)))))

(assert (=> d!1434282 (= (contains!13845 (toList!4551 lt!1745607) lt!1745211) lt!1745726)))

(declare-fun b!4580450 () Bool)

(declare-fun e!2856316 () Bool)

(assert (=> b!4580450 (= e!2856315 e!2856316)))

(declare-fun res!1913733 () Bool)

(assert (=> b!4580450 (=> res!1913733 e!2856316)))

(assert (=> b!4580450 (= res!1913733 (= (h!56886 (toList!4551 lt!1745607)) lt!1745211))))

(declare-fun b!4580451 () Bool)

(assert (=> b!4580451 (= e!2856316 (contains!13845 (t!358065 (toList!4551 lt!1745607)) lt!1745211))))

(assert (= (and d!1434282 res!1913732) b!4580450))

(assert (= (and b!4580450 (not res!1913733)) b!4580451))

(declare-fun m!5390809 () Bool)

(assert (=> d!1434282 m!5390809))

(declare-fun m!5390811 () Bool)

(assert (=> d!1434282 m!5390811))

(declare-fun m!5390813 () Bool)

(assert (=> b!4580451 m!5390813))

(assert (=> b!4580267 d!1434282))

(declare-fun d!1434284 () Bool)

(assert (=> d!1434284 (= (invariantList!1097 (toList!4552 lt!1745579)) (noDuplicatedKeys!306 (toList!4552 lt!1745579)))))

(declare-fun bs!972198 () Bool)

(assert (= bs!972198 d!1434284))

(declare-fun m!5390815 () Bool)

(assert (=> bs!972198 m!5390815))

(assert (=> b!4580255 d!1434284))

(declare-fun d!1434286 () Bool)

(declare-fun res!1913738 () Bool)

(declare-fun e!2856321 () Bool)

(assert (=> d!1434286 (=> res!1913738 e!2856321)))

(assert (=> d!1434286 (= res!1913738 ((_ is Nil!50950) (toList!4552 lt!1745232)))))

(assert (=> d!1434286 (= (forall!10502 (toList!4552 lt!1745232) lambda!183160) e!2856321)))

(declare-fun b!4580456 () Bool)

(declare-fun e!2856322 () Bool)

(assert (=> b!4580456 (= e!2856321 e!2856322)))

(declare-fun res!1913739 () Bool)

(assert (=> b!4580456 (=> (not res!1913739) (not e!2856322))))

(assert (=> b!4580456 (= res!1913739 (dynLambda!21336 lambda!183160 (h!56885 (toList!4552 lt!1745232))))))

(declare-fun b!4580457 () Bool)

(assert (=> b!4580457 (= e!2856322 (forall!10502 (t!358064 (toList!4552 lt!1745232)) lambda!183160))))

(assert (= (and d!1434286 (not res!1913738)) b!4580456))

(assert (= (and b!4580456 res!1913739) b!4580457))

(declare-fun b_lambda!166035 () Bool)

(assert (=> (not b_lambda!166035) (not b!4580456)))

(declare-fun m!5390817 () Bool)

(assert (=> b!4580456 m!5390817))

(declare-fun m!5390819 () Bool)

(assert (=> b!4580457 m!5390819))

(assert (=> b!4580304 d!1434286))

(declare-fun d!1434288 () Bool)

(declare-fun lt!1745729 () Bool)

(assert (=> d!1434288 (= lt!1745729 (select (content!8587 (keys!17800 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) key!3287))))

(declare-fun e!2856327 () Bool)

(assert (=> d!1434288 (= lt!1745729 e!2856327)))

(declare-fun res!1913744 () Bool)

(assert (=> d!1434288 (=> (not res!1913744) (not e!2856327))))

(assert (=> d!1434288 (= res!1913744 ((_ is Cons!50953) (keys!17800 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))

(assert (=> d!1434288 (= (contains!13849 (keys!17800 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287) lt!1745729)))

(declare-fun b!4580462 () Bool)

(declare-fun e!2856328 () Bool)

(assert (=> b!4580462 (= e!2856327 e!2856328)))

(declare-fun res!1913745 () Bool)

(assert (=> b!4580462 (=> res!1913745 e!2856328)))

(assert (=> b!4580462 (= res!1913745 (= (h!56890 (keys!17800 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) key!3287))))

(declare-fun b!4580463 () Bool)

(assert (=> b!4580463 (= e!2856328 (contains!13849 (t!358067 (keys!17800 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) key!3287))))

(assert (= (and d!1434288 res!1913744) b!4580462))

(assert (= (and b!4580462 (not res!1913745)) b!4580463))

(assert (=> d!1434288 m!5390733))

(declare-fun m!5390821 () Bool)

(assert (=> d!1434288 m!5390821))

(declare-fun m!5390823 () Bool)

(assert (=> d!1434288 m!5390823))

(declare-fun m!5390825 () Bool)

(assert (=> b!4580463 m!5390825))

(assert (=> b!4580408 d!1434288))

(declare-fun b!4580471 () Bool)

(assert (=> b!4580471 true))

(declare-fun d!1434290 () Bool)

(declare-fun e!2856331 () Bool)

(assert (=> d!1434290 e!2856331))

(declare-fun res!1913752 () Bool)

(assert (=> d!1434290 (=> (not res!1913752) (not e!2856331))))

(declare-fun lt!1745732 () List!51077)

(declare-fun noDuplicate!791 (List!51077) Bool)

(assert (=> d!1434290 (= res!1913752 (noDuplicate!791 lt!1745732))))

(assert (=> d!1434290 (= lt!1745732 (getKeysList!544 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))

(assert (=> d!1434290 (= (keys!17800 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) lt!1745732)))

(declare-fun b!4580470 () Bool)

(declare-fun res!1913754 () Bool)

(assert (=> b!4580470 (=> (not res!1913754) (not e!2856331))))

(declare-fun length!438 (List!51077) Int)

(declare-fun length!439 (List!51074) Int)

(assert (=> b!4580470 (= res!1913754 (= (length!438 lt!1745732) (length!439 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))))

(declare-fun res!1913753 () Bool)

(assert (=> b!4580471 (=> (not res!1913753) (not e!2856331))))

(declare-fun lambda!183186 () Int)

(declare-fun forall!10503 (List!51077 Int) Bool)

(assert (=> b!4580471 (= res!1913753 (forall!10503 lt!1745732 lambda!183186))))

(declare-fun lambda!183187 () Int)

(declare-fun b!4580472 () Bool)

(declare-fun map!11238 (List!51074 Int) List!51077)

(assert (=> b!4580472 (= e!2856331 (= (content!8587 lt!1745732) (content!8587 (map!11238 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) lambda!183187))))))

(assert (= (and d!1434290 res!1913752) b!4580470))

(assert (= (and b!4580470 res!1913754) b!4580471))

(assert (= (and b!4580471 res!1913753) b!4580472))

(declare-fun m!5390827 () Bool)

(assert (=> d!1434290 m!5390827))

(assert (=> d!1434290 m!5390741))

(declare-fun m!5390829 () Bool)

(assert (=> b!4580470 m!5390829))

(declare-fun m!5390831 () Bool)

(assert (=> b!4580470 m!5390831))

(declare-fun m!5390833 () Bool)

(assert (=> b!4580471 m!5390833))

(declare-fun m!5390835 () Bool)

(assert (=> b!4580472 m!5390835))

(declare-fun m!5390837 () Bool)

(assert (=> b!4580472 m!5390837))

(assert (=> b!4580472 m!5390837))

(declare-fun m!5390839 () Bool)

(assert (=> b!4580472 m!5390839))

(assert (=> b!4580408 d!1434290))

(declare-fun lt!1745735 () Bool)

(declare-fun d!1434292 () Bool)

(assert (=> d!1434292 (= lt!1745735 (select (content!8586 (_2!29056 (h!56886 (toList!4551 lm!1477)))) (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))))))

(declare-fun e!2856337 () Bool)

(assert (=> d!1434292 (= lt!1745735 e!2856337)))

(declare-fun res!1913760 () Bool)

(assert (=> d!1434292 (=> (not res!1913760) (not e!2856337))))

(assert (=> d!1434292 (= res!1913760 ((_ is Cons!50950) (_2!29056 (h!56886 (toList!4551 lm!1477)))))))

(assert (=> d!1434292 (= (contains!13851 (_2!29056 (h!56886 (toList!4551 lm!1477))) (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))) lt!1745735)))

(declare-fun b!4580479 () Bool)

(declare-fun e!2856336 () Bool)

(assert (=> b!4580479 (= e!2856337 e!2856336)))

(declare-fun res!1913759 () Bool)

(assert (=> b!4580479 (=> res!1913759 e!2856336)))

(assert (=> b!4580479 (= res!1913759 (= (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477)))) (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))))))

(declare-fun b!4580480 () Bool)

(assert (=> b!4580480 (= e!2856336 (contains!13851 (t!358064 (_2!29056 (h!56886 (toList!4551 lm!1477)))) (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))))))

(assert (= (and d!1434292 res!1913760) b!4580479))

(assert (= (and b!4580479 (not res!1913759)) b!4580480))

(declare-fun m!5390841 () Bool)

(assert (=> d!1434292 m!5390841))

(declare-fun m!5390843 () Bool)

(assert (=> d!1434292 m!5390843))

(declare-fun m!5390845 () Bool)

(assert (=> b!4580480 m!5390845))

(assert (=> b!4580343 d!1434292))

(declare-fun d!1434294 () Bool)

(declare-fun c!783946 () Bool)

(assert (=> d!1434294 (= c!783946 ((_ is Nil!50950) (toList!4552 lt!1745222)))))

(declare-fun e!2856340 () (InoxSet tuple2!51522))

(assert (=> d!1434294 (= (content!8586 (toList!4552 lt!1745222)) e!2856340)))

(declare-fun b!4580485 () Bool)

(assert (=> b!4580485 (= e!2856340 ((as const (Array tuple2!51522 Bool)) false))))

(declare-fun b!4580486 () Bool)

(assert (=> b!4580486 (= e!2856340 ((_ map or) (store ((as const (Array tuple2!51522 Bool)) false) (h!56885 (toList!4552 lt!1745222)) true) (content!8586 (t!358064 (toList!4552 lt!1745222)))))))

(assert (= (and d!1434294 c!783946) b!4580485))

(assert (= (and d!1434294 (not c!783946)) b!4580486))

(declare-fun m!5390847 () Bool)

(assert (=> b!4580486 m!5390847))

(declare-fun m!5390849 () Bool)

(assert (=> b!4580486 m!5390849))

(assert (=> d!1434220 d!1434294))

(declare-fun d!1434296 () Bool)

(declare-fun c!783947 () Bool)

(assert (=> d!1434296 (= c!783947 ((_ is Nil!50950) (toList!4552 lt!1745233)))))

(declare-fun e!2856341 () (InoxSet tuple2!51522))

(assert (=> d!1434296 (= (content!8586 (toList!4552 lt!1745233)) e!2856341)))

(declare-fun b!4580487 () Bool)

(assert (=> b!4580487 (= e!2856341 ((as const (Array tuple2!51522 Bool)) false))))

(declare-fun b!4580488 () Bool)

(assert (=> b!4580488 (= e!2856341 ((_ map or) (store ((as const (Array tuple2!51522 Bool)) false) (h!56885 (toList!4552 lt!1745233)) true) (content!8586 (t!358064 (toList!4552 lt!1745233)))))))

(assert (= (and d!1434296 c!783947) b!4580487))

(assert (= (and d!1434296 (not c!783947)) b!4580488))

(declare-fun m!5390851 () Bool)

(assert (=> b!4580488 m!5390851))

(declare-fun m!5390853 () Bool)

(assert (=> b!4580488 m!5390853))

(assert (=> d!1434220 d!1434296))

(declare-fun d!1434298 () Bool)

(declare-fun lt!1745736 () Bool)

(assert (=> d!1434298 (= lt!1745736 (select (content!8588 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745215))))

(declare-fun e!2856342 () Bool)

(assert (=> d!1434298 (= lt!1745736 e!2856342)))

(declare-fun res!1913761 () Bool)

(assert (=> d!1434298 (=> (not res!1913761) (not e!2856342))))

(assert (=> d!1434298 (= res!1913761 ((_ is Cons!50951) (t!358065 (t!358065 (toList!4551 lm!1477)))))))

(assert (=> d!1434298 (= (contains!13845 (t!358065 (t!358065 (toList!4551 lm!1477))) lt!1745215) lt!1745736)))

(declare-fun b!4580489 () Bool)

(declare-fun e!2856343 () Bool)

(assert (=> b!4580489 (= e!2856342 e!2856343)))

(declare-fun res!1913762 () Bool)

(assert (=> b!4580489 (=> res!1913762 e!2856343)))

(assert (=> b!4580489 (= res!1913762 (= (h!56886 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745215))))

(declare-fun b!4580490 () Bool)

(assert (=> b!4580490 (= e!2856343 (contains!13845 (t!358065 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745215))))

(assert (= (and d!1434298 res!1913761) b!4580489))

(assert (= (and b!4580489 (not res!1913762)) b!4580490))

(declare-fun m!5390855 () Bool)

(assert (=> d!1434298 m!5390855))

(declare-fun m!5390857 () Bool)

(assert (=> d!1434298 m!5390857))

(declare-fun m!5390859 () Bool)

(assert (=> b!4580490 m!5390859))

(assert (=> b!4580421 d!1434298))

(declare-fun d!1434300 () Bool)

(assert (=> d!1434300 (= (tail!7919 (toList!4551 lm!1477)) (t!358065 (toList!4551 lm!1477)))))

(assert (=> d!1434040 d!1434300))

(declare-fun d!1434302 () Bool)

(declare-fun isEmpty!28820 (Option!11328) Bool)

(assert (=> d!1434302 (= (isDefined!8597 (getValueByKey!1254 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287)) (not (isEmpty!28820 (getValueByKey!1254 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))))

(declare-fun bs!972199 () Bool)

(assert (= bs!972199 d!1434302))

(assert (=> bs!972199 m!5390737))

(declare-fun m!5390861 () Bool)

(assert (=> bs!972199 m!5390861))

(assert (=> b!4580401 d!1434302))

(declare-fun b!4580500 () Bool)

(declare-fun e!2856348 () Option!11328)

(declare-fun e!2856349 () Option!11328)

(assert (=> b!4580500 (= e!2856348 e!2856349)))

(declare-fun c!783953 () Bool)

(assert (=> b!4580500 (= c!783953 (and ((_ is Cons!50950) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (not (= (_1!29055 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) key!3287))))))

(declare-fun b!4580502 () Bool)

(assert (=> b!4580502 (= e!2856349 None!11327)))

(declare-fun b!4580499 () Bool)

(assert (=> b!4580499 (= e!2856348 (Some!11327 (_2!29055 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))))

(declare-fun b!4580501 () Bool)

(assert (=> b!4580501 (= e!2856349 (getValueByKey!1254 (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) key!3287))))

(declare-fun d!1434304 () Bool)

(declare-fun c!783952 () Bool)

(assert (=> d!1434304 (= c!783952 (and ((_ is Cons!50950) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= (_1!29055 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) key!3287)))))

(assert (=> d!1434304 (= (getValueByKey!1254 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287) e!2856348)))

(assert (= (and d!1434304 c!783952) b!4580499))

(assert (= (and d!1434304 (not c!783952)) b!4580500))

(assert (= (and b!4580500 c!783953) b!4580501))

(assert (= (and b!4580500 (not c!783953)) b!4580502))

(declare-fun m!5390863 () Bool)

(assert (=> b!4580501 m!5390863))

(assert (=> b!4580401 d!1434304))

(declare-fun d!1434306 () Bool)

(declare-fun res!1913767 () Bool)

(declare-fun e!2856354 () Bool)

(assert (=> d!1434306 (=> res!1913767 e!2856354)))

(assert (=> d!1434306 (= res!1913767 (and ((_ is Cons!50951) (toList!4551 lm!1477)) (= (_1!29056 (h!56886 (toList!4551 lm!1477))) lt!1745221)))))

(assert (=> d!1434306 (= (containsKey!2056 (toList!4551 lm!1477) lt!1745221) e!2856354)))

(declare-fun b!4580507 () Bool)

(declare-fun e!2856355 () Bool)

(assert (=> b!4580507 (= e!2856354 e!2856355)))

(declare-fun res!1913768 () Bool)

(assert (=> b!4580507 (=> (not res!1913768) (not e!2856355))))

(assert (=> b!4580507 (= res!1913768 (and (or (not ((_ is Cons!50951) (toList!4551 lm!1477))) (bvsle (_1!29056 (h!56886 (toList!4551 lm!1477))) lt!1745221)) ((_ is Cons!50951) (toList!4551 lm!1477)) (bvslt (_1!29056 (h!56886 (toList!4551 lm!1477))) lt!1745221)))))

(declare-fun b!4580508 () Bool)

(assert (=> b!4580508 (= e!2856355 (containsKey!2056 (t!358065 (toList!4551 lm!1477)) lt!1745221))))

(assert (= (and d!1434306 (not res!1913767)) b!4580507))

(assert (= (and b!4580507 res!1913768) b!4580508))

(declare-fun m!5390865 () Bool)

(assert (=> b!4580508 m!5390865))

(assert (=> d!1434228 d!1434306))

(declare-fun d!1434308 () Bool)

(declare-fun lt!1745737 () Bool)

(assert (=> d!1434308 (= lt!1745737 (select (content!8588 (toList!4551 lm!1477)) (h!56886 (toList!4551 lm!1477))))))

(declare-fun e!2856356 () Bool)

(assert (=> d!1434308 (= lt!1745737 e!2856356)))

(declare-fun res!1913769 () Bool)

(assert (=> d!1434308 (=> (not res!1913769) (not e!2856356))))

(assert (=> d!1434308 (= res!1913769 ((_ is Cons!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434308 (= (contains!13845 (toList!4551 lm!1477) (h!56886 (toList!4551 lm!1477))) lt!1745737)))

(declare-fun b!4580509 () Bool)

(declare-fun e!2856357 () Bool)

(assert (=> b!4580509 (= e!2856356 e!2856357)))

(declare-fun res!1913770 () Bool)

(assert (=> b!4580509 (=> res!1913770 e!2856357)))

(assert (=> b!4580509 (= res!1913770 (= (h!56886 (toList!4551 lm!1477)) (h!56886 (toList!4551 lm!1477))))))

(declare-fun b!4580510 () Bool)

(assert (=> b!4580510 (= e!2856357 (contains!13845 (t!358065 (toList!4551 lm!1477)) (h!56886 (toList!4551 lm!1477))))))

(assert (= (and d!1434308 res!1913769) b!4580509))

(assert (= (and b!4580509 (not res!1913770)) b!4580510))

(assert (=> d!1434308 m!5390699))

(declare-fun m!5390867 () Bool)

(assert (=> d!1434308 m!5390867))

(declare-fun m!5390869 () Bool)

(assert (=> b!4580510 m!5390869))

(assert (=> b!4580340 d!1434308))

(declare-fun d!1434310 () Bool)

(declare-fun res!1913775 () Bool)

(declare-fun e!2856362 () Bool)

(assert (=> d!1434310 (=> res!1913775 e!2856362)))

(assert (=> d!1434310 (= res!1913775 (and ((_ is Cons!50950) (toList!4552 lt!1745232)) (= (_1!29055 (h!56885 (toList!4552 lt!1745232))) key!3287)))))

(assert (=> d!1434310 (= (containsKey!2057 (toList!4552 lt!1745232) key!3287) e!2856362)))

(declare-fun b!4580515 () Bool)

(declare-fun e!2856363 () Bool)

(assert (=> b!4580515 (= e!2856362 e!2856363)))

(declare-fun res!1913776 () Bool)

(assert (=> b!4580515 (=> (not res!1913776) (not e!2856363))))

(assert (=> b!4580515 (= res!1913776 ((_ is Cons!50950) (toList!4552 lt!1745232)))))

(declare-fun b!4580516 () Bool)

(assert (=> b!4580516 (= e!2856363 (containsKey!2057 (t!358064 (toList!4552 lt!1745232)) key!3287))))

(assert (= (and d!1434310 (not res!1913775)) b!4580515))

(assert (= (and b!4580515 res!1913776) b!4580516))

(declare-fun m!5390871 () Bool)

(assert (=> b!4580516 m!5390871))

(assert (=> b!4580418 d!1434310))

(declare-fun d!1434312 () Bool)

(assert (=> d!1434312 (containsKey!2057 (toList!4552 lt!1745232) key!3287)))

(declare-fun lt!1745740 () Unit!105525)

(declare-fun choose!30531 (List!51074 K!12320) Unit!105525)

(assert (=> d!1434312 (= lt!1745740 (choose!30531 (toList!4552 lt!1745232) key!3287))))

(assert (=> d!1434312 (invariantList!1097 (toList!4552 lt!1745232))))

(assert (=> d!1434312 (= (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745232) key!3287) lt!1745740)))

(declare-fun bs!972200 () Bool)

(assert (= bs!972200 d!1434312))

(assert (=> bs!972200 m!5390757))

(declare-fun m!5390873 () Bool)

(assert (=> bs!972200 m!5390873))

(declare-fun m!5390875 () Bool)

(assert (=> bs!972200 m!5390875))

(assert (=> b!4580418 d!1434312))

(declare-fun d!1434314 () Bool)

(assert (=> d!1434314 (= (head!9539 (toList!4551 lt!1745223)) (h!56886 (toList!4551 lt!1745223)))))

(assert (=> d!1434198 d!1434314))

(declare-fun d!1434316 () Bool)

(assert (=> d!1434316 (isDefined!8597 (getValueByKey!1254 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(declare-fun lt!1745743 () Unit!105525)

(declare-fun choose!30532 (List!51074 K!12320) Unit!105525)

(assert (=> d!1434316 (= lt!1745743 (choose!30532 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(assert (=> d!1434316 (invariantList!1097 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))

(assert (=> d!1434316 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287) lt!1745743)))

(declare-fun bs!972201 () Bool)

(assert (= bs!972201 d!1434316))

(assert (=> bs!972201 m!5390737))

(assert (=> bs!972201 m!5390737))

(assert (=> bs!972201 m!5390739))

(declare-fun m!5390877 () Bool)

(assert (=> bs!972201 m!5390877))

(declare-fun m!5390879 () Bool)

(assert (=> bs!972201 m!5390879))

(assert (=> b!4580405 d!1434316))

(assert (=> b!4580405 d!1434302))

(assert (=> b!4580405 d!1434304))

(declare-fun d!1434318 () Bool)

(assert (=> d!1434318 (contains!13849 (getKeysList!544 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) key!3287)))

(declare-fun lt!1745746 () Unit!105525)

(declare-fun choose!30533 (List!51074 K!12320) Unit!105525)

(assert (=> d!1434318 (= lt!1745746 (choose!30533 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(assert (=> d!1434318 (invariantList!1097 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))

(assert (=> d!1434318 (= (lemmaInListThenGetKeysListContains!540 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287) lt!1745746)))

(declare-fun bs!972202 () Bool)

(assert (= bs!972202 d!1434318))

(assert (=> bs!972202 m!5390741))

(assert (=> bs!972202 m!5390741))

(declare-fun m!5390881 () Bool)

(assert (=> bs!972202 m!5390881))

(declare-fun m!5390883 () Bool)

(assert (=> bs!972202 m!5390883))

(assert (=> bs!972202 m!5390879))

(assert (=> b!4580405 d!1434318))

(declare-fun d!1434320 () Bool)

(declare-fun res!1913777 () Bool)

(declare-fun e!2856364 () Bool)

(assert (=> d!1434320 (=> res!1913777 e!2856364)))

(assert (=> d!1434320 (= res!1913777 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434320 (= (forall!10502 (_2!29056 lt!1745216) lambda!183160) e!2856364)))

(declare-fun b!4580517 () Bool)

(declare-fun e!2856365 () Bool)

(assert (=> b!4580517 (= e!2856364 e!2856365)))

(declare-fun res!1913778 () Bool)

(assert (=> b!4580517 (=> (not res!1913778) (not e!2856365))))

(assert (=> b!4580517 (= res!1913778 (dynLambda!21336 lambda!183160 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun b!4580518 () Bool)

(assert (=> b!4580518 (= e!2856365 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183160))))

(assert (= (and d!1434320 (not res!1913777)) b!4580517))

(assert (= (and b!4580517 res!1913778) b!4580518))

(declare-fun b_lambda!166037 () Bool)

(assert (=> (not b_lambda!166037) (not b!4580517)))

(declare-fun m!5390885 () Bool)

(assert (=> b!4580517 m!5390885))

(declare-fun m!5390887 () Bool)

(assert (=> b!4580518 m!5390887))

(assert (=> d!1434184 d!1434320))

(assert (=> d!1434184 d!1434216))

(declare-fun d!1434322 () Bool)

(declare-fun res!1913779 () Bool)

(declare-fun e!2856366 () Bool)

(assert (=> d!1434322 (=> res!1913779 e!2856366)))

(assert (=> d!1434322 (= res!1913779 (and ((_ is Cons!50950) (toList!4552 lt!1745243)) (= (_1!29055 (h!56885 (toList!4552 lt!1745243))) key!3287)))))

(assert (=> d!1434322 (= (containsKey!2057 (toList!4552 lt!1745243) key!3287) e!2856366)))

(declare-fun b!4580519 () Bool)

(declare-fun e!2856367 () Bool)

(assert (=> b!4580519 (= e!2856366 e!2856367)))

(declare-fun res!1913780 () Bool)

(assert (=> b!4580519 (=> (not res!1913780) (not e!2856367))))

(assert (=> b!4580519 (= res!1913780 ((_ is Cons!50950) (toList!4552 lt!1745243)))))

(declare-fun b!4580520 () Bool)

(assert (=> b!4580520 (= e!2856367 (containsKey!2057 (t!358064 (toList!4552 lt!1745243)) key!3287))))

(assert (= (and d!1434322 (not res!1913779)) b!4580519))

(assert (= (and b!4580519 res!1913780) b!4580520))

(declare-fun m!5390889 () Bool)

(assert (=> b!4580520 m!5390889))

(assert (=> b!4580113 d!1434322))

(declare-fun d!1434324 () Bool)

(assert (=> d!1434324 (containsKey!2057 (toList!4552 lt!1745243) key!3287)))

(declare-fun lt!1745747 () Unit!105525)

(assert (=> d!1434324 (= lt!1745747 (choose!30531 (toList!4552 lt!1745243) key!3287))))

(assert (=> d!1434324 (invariantList!1097 (toList!4552 lt!1745243))))

(assert (=> d!1434324 (= (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745243) key!3287) lt!1745747)))

(declare-fun bs!972203 () Bool)

(assert (= bs!972203 d!1434324))

(assert (=> bs!972203 m!5390003))

(declare-fun m!5390891 () Bool)

(assert (=> bs!972203 m!5390891))

(declare-fun m!5390893 () Bool)

(assert (=> bs!972203 m!5390893))

(assert (=> b!4580113 d!1434324))

(declare-fun bs!972204 () Bool)

(declare-fun b!4580522 () Bool)

(assert (= bs!972204 (and b!4580522 b!4580471)))

(declare-fun lambda!183188 () Int)

(assert (=> bs!972204 (= (= (toList!4552 lt!1745232) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183188 lambda!183186))))

(assert (=> b!4580522 true))

(declare-fun bs!972205 () Bool)

(declare-fun b!4580523 () Bool)

(assert (= bs!972205 (and b!4580523 b!4580472)))

(declare-fun lambda!183189 () Int)

(assert (=> bs!972205 (= lambda!183189 lambda!183187)))

(declare-fun d!1434326 () Bool)

(declare-fun e!2856368 () Bool)

(assert (=> d!1434326 e!2856368))

(declare-fun res!1913781 () Bool)

(assert (=> d!1434326 (=> (not res!1913781) (not e!2856368))))

(declare-fun lt!1745748 () List!51077)

(assert (=> d!1434326 (= res!1913781 (noDuplicate!791 lt!1745748))))

(assert (=> d!1434326 (= lt!1745748 (getKeysList!544 (toList!4552 lt!1745232)))))

(assert (=> d!1434326 (= (keys!17800 lt!1745232) lt!1745748)))

(declare-fun b!4580521 () Bool)

(declare-fun res!1913783 () Bool)

(assert (=> b!4580521 (=> (not res!1913783) (not e!2856368))))

(assert (=> b!4580521 (= res!1913783 (= (length!438 lt!1745748) (length!439 (toList!4552 lt!1745232))))))

(declare-fun res!1913782 () Bool)

(assert (=> b!4580522 (=> (not res!1913782) (not e!2856368))))

(assert (=> b!4580522 (= res!1913782 (forall!10503 lt!1745748 lambda!183188))))

(assert (=> b!4580523 (= e!2856368 (= (content!8587 lt!1745748) (content!8587 (map!11238 (toList!4552 lt!1745232) lambda!183189))))))

(assert (= (and d!1434326 res!1913781) b!4580521))

(assert (= (and b!4580521 res!1913783) b!4580522))

(assert (= (and b!4580522 res!1913782) b!4580523))

(declare-fun m!5390895 () Bool)

(assert (=> d!1434326 m!5390895))

(assert (=> d!1434326 m!5390767))

(declare-fun m!5390897 () Bool)

(assert (=> b!4580521 m!5390897))

(declare-fun m!5390899 () Bool)

(assert (=> b!4580521 m!5390899))

(declare-fun m!5390901 () Bool)

(assert (=> b!4580522 m!5390901))

(declare-fun m!5390903 () Bool)

(assert (=> b!4580523 m!5390903))

(declare-fun m!5390905 () Bool)

(assert (=> b!4580523 m!5390905))

(assert (=> b!4580523 m!5390905))

(declare-fun m!5390907 () Bool)

(assert (=> b!4580523 m!5390907))

(assert (=> b!4580415 d!1434326))

(declare-fun d!1434328 () Bool)

(declare-fun e!2856369 () Bool)

(assert (=> d!1434328 e!2856369))

(declare-fun res!1913784 () Bool)

(assert (=> d!1434328 (=> res!1913784 e!2856369)))

(declare-fun lt!1745749 () Bool)

(assert (=> d!1434328 (= res!1913784 (not lt!1745749))))

(declare-fun lt!1745750 () Bool)

(assert (=> d!1434328 (= lt!1745749 lt!1745750)))

(declare-fun lt!1745751 () Unit!105525)

(declare-fun e!2856370 () Unit!105525)

(assert (=> d!1434328 (= lt!1745751 e!2856370)))

(declare-fun c!783954 () Bool)

(assert (=> d!1434328 (= c!783954 lt!1745750)))

(assert (=> d!1434328 (= lt!1745750 (containsKey!2056 (toList!4551 lm!1477) (hash!3119 hashF!1107 key!3287)))))

(assert (=> d!1434328 (= (contains!13847 lm!1477 (hash!3119 hashF!1107 key!3287)) lt!1745749)))

(declare-fun b!4580524 () Bool)

(declare-fun lt!1745752 () Unit!105525)

(assert (=> b!4580524 (= e!2856370 lt!1745752)))

(assert (=> b!4580524 (= lt!1745752 (lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (toList!4551 lm!1477) (hash!3119 hashF!1107 key!3287)))))

(assert (=> b!4580524 (isDefined!8596 (getValueByKey!1253 (toList!4551 lm!1477) (hash!3119 hashF!1107 key!3287)))))

(declare-fun b!4580525 () Bool)

(declare-fun Unit!105613 () Unit!105525)

(assert (=> b!4580525 (= e!2856370 Unit!105613)))

(declare-fun b!4580526 () Bool)

(assert (=> b!4580526 (= e!2856369 (isDefined!8596 (getValueByKey!1253 (toList!4551 lm!1477) (hash!3119 hashF!1107 key!3287))))))

(assert (= (and d!1434328 c!783954) b!4580524))

(assert (= (and d!1434328 (not c!783954)) b!4580525))

(assert (= (and d!1434328 (not res!1913784)) b!4580526))

(assert (=> d!1434328 m!5389815))

(declare-fun m!5390909 () Bool)

(assert (=> d!1434328 m!5390909))

(assert (=> b!4580524 m!5389815))

(declare-fun m!5390911 () Bool)

(assert (=> b!4580524 m!5390911))

(assert (=> b!4580524 m!5389815))

(declare-fun m!5390913 () Bool)

(assert (=> b!4580524 m!5390913))

(assert (=> b!4580524 m!5390913))

(declare-fun m!5390915 () Bool)

(assert (=> b!4580524 m!5390915))

(assert (=> b!4580526 m!5389815))

(assert (=> b!4580526 m!5390913))

(assert (=> b!4580526 m!5390913))

(assert (=> b!4580526 m!5390915))

(assert (=> d!1434230 d!1434328))

(assert (=> d!1434230 d!1434200))

(declare-fun d!1434330 () Bool)

(assert (=> d!1434330 (contains!13847 lm!1477 (hash!3119 hashF!1107 key!3287))))

(assert (=> d!1434330 true))

(declare-fun _$27!1369 () Unit!105525)

(assert (=> d!1434330 (= (choose!30526 lm!1477 key!3287 hashF!1107) _$27!1369)))

(declare-fun bs!972206 () Bool)

(assert (= bs!972206 d!1434330))

(assert (=> bs!972206 m!5389815))

(assert (=> bs!972206 m!5389815))

(assert (=> bs!972206 m!5390685))

(assert (=> d!1434230 d!1434330))

(declare-fun d!1434332 () Bool)

(declare-fun res!1913785 () Bool)

(declare-fun e!2856371 () Bool)

(assert (=> d!1434332 (=> res!1913785 e!2856371)))

(assert (=> d!1434332 (= res!1913785 ((_ is Nil!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434332 (= (forall!10500 (toList!4551 lm!1477) lambda!183170) e!2856371)))

(declare-fun b!4580527 () Bool)

(declare-fun e!2856372 () Bool)

(assert (=> b!4580527 (= e!2856371 e!2856372)))

(declare-fun res!1913786 () Bool)

(assert (=> b!4580527 (=> (not res!1913786) (not e!2856372))))

(assert (=> b!4580527 (= res!1913786 (dynLambda!21335 lambda!183170 (h!56886 (toList!4551 lm!1477))))))

(declare-fun b!4580528 () Bool)

(assert (=> b!4580528 (= e!2856372 (forall!10500 (t!358065 (toList!4551 lm!1477)) lambda!183170))))

(assert (= (and d!1434332 (not res!1913785)) b!4580527))

(assert (= (and b!4580527 res!1913786) b!4580528))

(declare-fun b_lambda!166039 () Bool)

(assert (=> (not b_lambda!166039) (not b!4580527)))

(declare-fun m!5390917 () Bool)

(assert (=> b!4580527 m!5390917))

(declare-fun m!5390919 () Bool)

(assert (=> b!4580528 m!5390919))

(assert (=> d!1434230 d!1434332))

(assert (=> b!4580333 d!1434188))

(declare-fun d!1434334 () Bool)

(declare-fun res!1913787 () Bool)

(declare-fun e!2856373 () Bool)

(assert (=> d!1434334 (=> res!1913787 e!2856373)))

(assert (=> d!1434334 (= res!1913787 ((_ is Nil!50950) (ite c!783911 (toList!4552 lt!1745218) (toList!4552 lt!1745574))))))

(assert (=> d!1434334 (= (forall!10502 (ite c!783911 (toList!4552 lt!1745218) (toList!4552 lt!1745574)) (ite c!783911 lambda!183140 lambda!183142)) e!2856373)))

(declare-fun b!4580529 () Bool)

(declare-fun e!2856374 () Bool)

(assert (=> b!4580529 (= e!2856373 e!2856374)))

(declare-fun res!1913788 () Bool)

(assert (=> b!4580529 (=> (not res!1913788) (not e!2856374))))

(assert (=> b!4580529 (= res!1913788 (dynLambda!21336 (ite c!783911 lambda!183140 lambda!183142) (h!56885 (ite c!783911 (toList!4552 lt!1745218) (toList!4552 lt!1745574)))))))

(declare-fun b!4580530 () Bool)

(assert (=> b!4580530 (= e!2856374 (forall!10502 (t!358064 (ite c!783911 (toList!4552 lt!1745218) (toList!4552 lt!1745574))) (ite c!783911 lambda!183140 lambda!183142)))))

(assert (= (and d!1434334 (not res!1913787)) b!4580529))

(assert (= (and b!4580529 res!1913788) b!4580530))

(declare-fun b_lambda!166041 () Bool)

(assert (=> (not b_lambda!166041) (not b!4580529)))

(declare-fun m!5390921 () Bool)

(assert (=> b!4580529 m!5390921))

(declare-fun m!5390923 () Bool)

(assert (=> b!4580530 m!5390923))

(assert (=> bm!319708 d!1434334))

(declare-fun d!1434336 () Bool)

(declare-fun res!1913789 () Bool)

(declare-fun e!2856375 () Bool)

(assert (=> d!1434336 (=> res!1913789 e!2856375)))

(assert (=> d!1434336 (= res!1913789 ((_ is Nil!50950) (ite c!783923 (toList!4552 lt!1745214) (toList!4552 lt!1745663))))))

(assert (=> d!1434336 (= (forall!10502 (ite c!783923 (toList!4552 lt!1745214) (toList!4552 lt!1745663)) (ite c!783923 lambda!183164 lambda!183166)) e!2856375)))

(declare-fun b!4580531 () Bool)

(declare-fun e!2856376 () Bool)

(assert (=> b!4580531 (= e!2856375 e!2856376)))

(declare-fun res!1913790 () Bool)

(assert (=> b!4580531 (=> (not res!1913790) (not e!2856376))))

(assert (=> b!4580531 (= res!1913790 (dynLambda!21336 (ite c!783923 lambda!183164 lambda!183166) (h!56885 (ite c!783923 (toList!4552 lt!1745214) (toList!4552 lt!1745663)))))))

(declare-fun b!4580532 () Bool)

(assert (=> b!4580532 (= e!2856376 (forall!10502 (t!358064 (ite c!783923 (toList!4552 lt!1745214) (toList!4552 lt!1745663))) (ite c!783923 lambda!183164 lambda!183166)))))

(assert (= (and d!1434336 (not res!1913789)) b!4580531))

(assert (= (and b!4580531 res!1913790) b!4580532))

(declare-fun b_lambda!166043 () Bool)

(assert (=> (not b_lambda!166043) (not b!4580531)))

(declare-fun m!5390925 () Bool)

(assert (=> b!4580531 m!5390925))

(declare-fun m!5390927 () Bool)

(assert (=> b!4580532 m!5390927))

(assert (=> bm!319714 d!1434336))

(declare-fun bs!972207 () Bool)

(declare-fun b!4580536 () Bool)

(assert (= bs!972207 (and b!4580536 b!4580368)))

(declare-fun lambda!183190 () Int)

(assert (=> bs!972207 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745665) (= lambda!183190 lambda!183166))))

(declare-fun bs!972208 () Bool)

(assert (= bs!972208 (and b!4580536 b!4580306)))

(assert (=> bs!972208 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745232) (= lambda!183190 lambda!183157))))

(assert (=> bs!972207 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745214) (= lambda!183190 lambda!183165))))

(declare-fun bs!972209 () Bool)

(assert (= bs!972209 (and b!4580536 b!4580305)))

(assert (=> bs!972209 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745627) (= lambda!183190 lambda!183159))))

(declare-fun bs!972210 () Bool)

(assert (= bs!972210 (and b!4580536 d!1434224)))

(assert (=> bs!972210 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745668) (= lambda!183190 lambda!183167))))

(declare-fun bs!972211 () Bool)

(assert (= bs!972211 (and b!4580536 d!1434060)))

(assert (=> bs!972211 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745579) (= lambda!183190 lambda!183143))))

(declare-fun bs!972212 () Bool)

(assert (= bs!972212 (and b!4580536 b!4580369)))

(assert (=> bs!972212 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745214) (= lambda!183190 lambda!183164))))

(declare-fun bs!972213 () Bool)

(assert (= bs!972213 (and b!4580536 b!4580258)))

(assert (=> bs!972213 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745218) (= lambda!183190 lambda!183140))))

(declare-fun bs!972214 () Bool)

(assert (= bs!972214 (and b!4580536 b!4580257)))

(assert (=> bs!972214 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745218) (= lambda!183190 lambda!183141))))

(declare-fun bs!972215 () Bool)

(assert (= bs!972215 (and b!4580536 d!1434184)))

(assert (=> bs!972215 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745630) (= lambda!183190 lambda!183160))))

(declare-fun bs!972216 () Bool)

(assert (= bs!972216 (and b!4580536 d!1434256)))

(assert (=> bs!972216 (not (= lambda!183190 lambda!183178))))

(assert (=> bs!972214 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745576) (= lambda!183190 lambda!183142))))

(assert (=> bs!972209 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745232) (= lambda!183190 lambda!183158))))

(declare-fun bs!972217 () Bool)

(assert (= bs!972217 (and b!4580536 b!4579991)))

(assert (=> bs!972217 (not (= lambda!183190 lambda!183043))))

(assert (=> b!4580536 true))

(declare-fun bs!972218 () Bool)

(declare-fun b!4580535 () Bool)

(assert (= bs!972218 (and b!4580535 b!4580368)))

(declare-fun lambda!183191 () Int)

(assert (=> bs!972218 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745665) (= lambda!183191 lambda!183166))))

(assert (=> bs!972218 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745214) (= lambda!183191 lambda!183165))))

(declare-fun bs!972219 () Bool)

(assert (= bs!972219 (and b!4580535 b!4580305)))

(assert (=> bs!972219 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745627) (= lambda!183191 lambda!183159))))

(declare-fun bs!972220 () Bool)

(assert (= bs!972220 (and b!4580535 d!1434224)))

(assert (=> bs!972220 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745668) (= lambda!183191 lambda!183167))))

(declare-fun bs!972221 () Bool)

(assert (= bs!972221 (and b!4580535 d!1434060)))

(assert (=> bs!972221 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745579) (= lambda!183191 lambda!183143))))

(declare-fun bs!972222 () Bool)

(assert (= bs!972222 (and b!4580535 b!4580369)))

(assert (=> bs!972222 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745214) (= lambda!183191 lambda!183164))))

(declare-fun bs!972223 () Bool)

(assert (= bs!972223 (and b!4580535 b!4580258)))

(assert (=> bs!972223 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745218) (= lambda!183191 lambda!183140))))

(declare-fun bs!972224 () Bool)

(assert (= bs!972224 (and b!4580535 b!4580257)))

(assert (=> bs!972224 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745218) (= lambda!183191 lambda!183141))))

(declare-fun bs!972225 () Bool)

(assert (= bs!972225 (and b!4580535 d!1434184)))

(assert (=> bs!972225 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745630) (= lambda!183191 lambda!183160))))

(declare-fun bs!972226 () Bool)

(assert (= bs!972226 (and b!4580535 d!1434256)))

(assert (=> bs!972226 (not (= lambda!183191 lambda!183178))))

(assert (=> bs!972224 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745576) (= lambda!183191 lambda!183142))))

(declare-fun bs!972227 () Bool)

(assert (= bs!972227 (and b!4580535 b!4580536)))

(assert (=> bs!972227 (= lambda!183191 lambda!183190)))

(declare-fun bs!972228 () Bool)

(assert (= bs!972228 (and b!4580535 b!4580306)))

(assert (=> bs!972228 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745232) (= lambda!183191 lambda!183157))))

(assert (=> bs!972219 (= (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745232) (= lambda!183191 lambda!183158))))

(declare-fun bs!972229 () Bool)

(assert (= bs!972229 (and b!4580535 b!4579991)))

(assert (=> bs!972229 (not (= lambda!183191 lambda!183043))))

(assert (=> b!4580535 true))

(declare-fun lambda!183192 () Int)

(declare-fun lt!1745756 () ListMap!3813)

(assert (=> bs!972218 (= (= lt!1745756 lt!1745665) (= lambda!183192 lambda!183166))))

(assert (=> bs!972218 (= (= lt!1745756 lt!1745214) (= lambda!183192 lambda!183165))))

(assert (=> bs!972219 (= (= lt!1745756 lt!1745627) (= lambda!183192 lambda!183159))))

(assert (=> bs!972220 (= (= lt!1745756 lt!1745668) (= lambda!183192 lambda!183167))))

(assert (=> bs!972221 (= (= lt!1745756 lt!1745579) (= lambda!183192 lambda!183143))))

(assert (=> bs!972222 (= (= lt!1745756 lt!1745214) (= lambda!183192 lambda!183164))))

(assert (=> b!4580535 (= (= lt!1745756 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183192 lambda!183191))))

(assert (=> bs!972223 (= (= lt!1745756 lt!1745218) (= lambda!183192 lambda!183140))))

(assert (=> bs!972224 (= (= lt!1745756 lt!1745218) (= lambda!183192 lambda!183141))))

(assert (=> bs!972225 (= (= lt!1745756 lt!1745630) (= lambda!183192 lambda!183160))))

(assert (=> bs!972226 (not (= lambda!183192 lambda!183178))))

(assert (=> bs!972224 (= (= lt!1745756 lt!1745576) (= lambda!183192 lambda!183142))))

(assert (=> bs!972227 (= (= lt!1745756 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183192 lambda!183190))))

(assert (=> bs!972228 (= (= lt!1745756 lt!1745232) (= lambda!183192 lambda!183157))))

(assert (=> bs!972219 (= (= lt!1745756 lt!1745232) (= lambda!183192 lambda!183158))))

(assert (=> bs!972229 (not (= lambda!183192 lambda!183043))))

(assert (=> b!4580535 true))

(declare-fun bs!972230 () Bool)

(declare-fun d!1434338 () Bool)

(assert (= bs!972230 (and d!1434338 b!4580368)))

(declare-fun lambda!183193 () Int)

(declare-fun lt!1745759 () ListMap!3813)

(assert (=> bs!972230 (= (= lt!1745759 lt!1745665) (= lambda!183193 lambda!183166))))

(assert (=> bs!972230 (= (= lt!1745759 lt!1745214) (= lambda!183193 lambda!183165))))

(declare-fun bs!972231 () Bool)

(assert (= bs!972231 (and d!1434338 b!4580305)))

(assert (=> bs!972231 (= (= lt!1745759 lt!1745627) (= lambda!183193 lambda!183159))))

(declare-fun bs!972232 () Bool)

(assert (= bs!972232 (and d!1434338 d!1434224)))

(assert (=> bs!972232 (= (= lt!1745759 lt!1745668) (= lambda!183193 lambda!183167))))

(declare-fun bs!972233 () Bool)

(assert (= bs!972233 (and d!1434338 d!1434060)))

(assert (=> bs!972233 (= (= lt!1745759 lt!1745579) (= lambda!183193 lambda!183143))))

(declare-fun bs!972234 () Bool)

(assert (= bs!972234 (and d!1434338 b!4580535)))

(assert (=> bs!972234 (= (= lt!1745759 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183193 lambda!183191))))

(declare-fun bs!972235 () Bool)

(assert (= bs!972235 (and d!1434338 b!4580258)))

(assert (=> bs!972235 (= (= lt!1745759 lt!1745218) (= lambda!183193 lambda!183140))))

(declare-fun bs!972236 () Bool)

(assert (= bs!972236 (and d!1434338 b!4580257)))

(assert (=> bs!972236 (= (= lt!1745759 lt!1745218) (= lambda!183193 lambda!183141))))

(declare-fun bs!972237 () Bool)

(assert (= bs!972237 (and d!1434338 d!1434184)))

(assert (=> bs!972237 (= (= lt!1745759 lt!1745630) (= lambda!183193 lambda!183160))))

(declare-fun bs!972238 () Bool)

(assert (= bs!972238 (and d!1434338 d!1434256)))

(assert (=> bs!972238 (not (= lambda!183193 lambda!183178))))

(assert (=> bs!972236 (= (= lt!1745759 lt!1745576) (= lambda!183193 lambda!183142))))

(declare-fun bs!972239 () Bool)

(assert (= bs!972239 (and d!1434338 b!4580536)))

(assert (=> bs!972239 (= (= lt!1745759 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183193 lambda!183190))))

(declare-fun bs!972240 () Bool)

(assert (= bs!972240 (and d!1434338 b!4580306)))

(assert (=> bs!972240 (= (= lt!1745759 lt!1745232) (= lambda!183193 lambda!183157))))

(assert (=> bs!972231 (= (= lt!1745759 lt!1745232) (= lambda!183193 lambda!183158))))

(declare-fun bs!972241 () Bool)

(assert (= bs!972241 (and d!1434338 b!4579991)))

(assert (=> bs!972241 (not (= lambda!183193 lambda!183043))))

(assert (=> bs!972234 (= (= lt!1745759 lt!1745756) (= lambda!183193 lambda!183192))))

(declare-fun bs!972242 () Bool)

(assert (= bs!972242 (and d!1434338 b!4580369)))

(assert (=> bs!972242 (= (= lt!1745759 lt!1745214) (= lambda!183193 lambda!183164))))

(assert (=> d!1434338 true))

(declare-fun b!4580533 () Bool)

(declare-fun e!2856379 () Bool)

(assert (=> b!4580533 (= e!2856379 (invariantList!1097 (toList!4552 lt!1745759)))))

(declare-fun b!4580534 () Bool)

(declare-fun res!1913791 () Bool)

(assert (=> b!4580534 (=> (not res!1913791) (not e!2856379))))

(assert (=> b!4580534 (= res!1913791 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) lambda!183193))))

(declare-fun c!783955 () Bool)

(declare-fun bm!319718 () Bool)

(declare-fun call!319725 () Bool)

(assert (=> bm!319718 (= call!319725 (forall!10502 (ite c!783955 (toList!4552 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))) (ite c!783955 lambda!183190 lambda!183192)))))

(declare-fun e!2856378 () ListMap!3813)

(assert (=> b!4580535 (= e!2856378 lt!1745756)))

(declare-fun lt!1745754 () ListMap!3813)

(assert (=> b!4580535 (= lt!1745754 (+!1710 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) (h!56885 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))))))))

(assert (=> b!4580535 (= lt!1745756 (addToMapMapFromBucket!785 (t!358064 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))) (+!1710 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) (h!56885 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))))))))

(declare-fun lt!1745758 () Unit!105525)

(declare-fun call!319724 () Unit!105525)

(assert (=> b!4580535 (= lt!1745758 call!319724)))

(assert (=> b!4580535 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) lambda!183191)))

(declare-fun lt!1745773 () Unit!105525)

(assert (=> b!4580535 (= lt!1745773 lt!1745758)))

(assert (=> b!4580535 (forall!10502 (toList!4552 lt!1745754) lambda!183192)))

(declare-fun lt!1745768 () Unit!105525)

(declare-fun Unit!105614 () Unit!105525)

(assert (=> b!4580535 (= lt!1745768 Unit!105614)))

(assert (=> b!4580535 (forall!10502 (t!358064 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))) lambda!183192)))

(declare-fun lt!1745766 () Unit!105525)

(declare-fun Unit!105615 () Unit!105525)

(assert (=> b!4580535 (= lt!1745766 Unit!105615)))

(declare-fun lt!1745763 () Unit!105525)

(declare-fun Unit!105616 () Unit!105525)

(assert (=> b!4580535 (= lt!1745763 Unit!105616)))

(declare-fun lt!1745770 () Unit!105525)

(assert (=> b!4580535 (= lt!1745770 (forallContained!2765 (toList!4552 lt!1745754) lambda!183192 (h!56885 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))))))))

(assert (=> b!4580535 (contains!13846 lt!1745754 (_1!29055 (h!56885 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))))))))

(declare-fun lt!1745760 () Unit!105525)

(declare-fun Unit!105617 () Unit!105525)

(assert (=> b!4580535 (= lt!1745760 Unit!105617)))

(assert (=> b!4580535 (contains!13846 lt!1745756 (_1!29055 (h!56885 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))))))))

(declare-fun lt!1745765 () Unit!105525)

(declare-fun Unit!105618 () Unit!105525)

(assert (=> b!4580535 (= lt!1745765 Unit!105618)))

(assert (=> b!4580535 call!319725))

(declare-fun lt!1745762 () Unit!105525)

(declare-fun Unit!105619 () Unit!105525)

(assert (=> b!4580535 (= lt!1745762 Unit!105619)))

(declare-fun call!319723 () Bool)

(assert (=> b!4580535 call!319723))

(declare-fun lt!1745764 () Unit!105525)

(declare-fun Unit!105620 () Unit!105525)

(assert (=> b!4580535 (= lt!1745764 Unit!105620)))

(declare-fun lt!1745767 () Unit!105525)

(declare-fun Unit!105621 () Unit!105525)

(assert (=> b!4580535 (= lt!1745767 Unit!105621)))

(declare-fun lt!1745771 () Unit!105525)

(assert (=> b!4580535 (= lt!1745771 (addForallContainsKeyThenBeforeAdding!414 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745756 (_1!29055 (h!56885 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))))) (_2!29055 (h!56885 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))))))))

(assert (=> b!4580535 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) lambda!183192)))

(declare-fun lt!1745769 () Unit!105525)

(assert (=> b!4580535 (= lt!1745769 lt!1745771)))

(assert (=> b!4580535 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) lambda!183192)))

(declare-fun lt!1745757 () Unit!105525)

(declare-fun Unit!105622 () Unit!105525)

(assert (=> b!4580535 (= lt!1745757 Unit!105622)))

(declare-fun res!1913792 () Bool)

(assert (=> b!4580535 (= res!1913792 (forall!10502 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))) lambda!183192))))

(declare-fun e!2856377 () Bool)

(assert (=> b!4580535 (=> (not res!1913792) (not e!2856377))))

(assert (=> b!4580535 e!2856377))

(declare-fun lt!1745761 () Unit!105525)

(declare-fun Unit!105623 () Unit!105525)

(assert (=> b!4580535 (= lt!1745761 Unit!105623)))

(assert (=> b!4580536 (= e!2856378 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))))))

(declare-fun lt!1745772 () Unit!105525)

(assert (=> b!4580536 (= lt!1745772 call!319724)))

(assert (=> b!4580536 call!319725))

(declare-fun lt!1745753 () Unit!105525)

(assert (=> b!4580536 (= lt!1745753 lt!1745772)))

(assert (=> b!4580536 call!319723))

(declare-fun lt!1745755 () Unit!105525)

(declare-fun Unit!105624 () Unit!105525)

(assert (=> b!4580536 (= lt!1745755 Unit!105624)))

(declare-fun bm!319719 () Bool)

(assert (=> bm!319719 (= call!319723 (forall!10502 (ite c!783955 (toList!4552 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (toList!4552 lt!1745754)) (ite c!783955 lambda!183190 lambda!183192)))))

(assert (=> d!1434338 e!2856379))

(declare-fun res!1913793 () Bool)

(assert (=> d!1434338 (=> (not res!1913793) (not e!2856379))))

(assert (=> d!1434338 (= res!1913793 (forall!10502 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))) lambda!183193))))

(assert (=> d!1434338 (= lt!1745759 e!2856378)))

(assert (=> d!1434338 (= c!783955 ((_ is Nil!50950) (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))))))

(assert (=> d!1434338 (noDuplicateKeys!1272 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))))))

(assert (=> d!1434338 (= (addToMapMapFromBucket!785 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) lt!1745759)))

(declare-fun bm!319720 () Bool)

(assert (=> bm!319720 (= call!319724 (lemmaContainsAllItsOwnKeys!414 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))))))

(declare-fun b!4580537 () Bool)

(assert (=> b!4580537 (= e!2856377 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) lambda!183192))))

(assert (= (and d!1434338 c!783955) b!4580536))

(assert (= (and d!1434338 (not c!783955)) b!4580535))

(assert (= (and b!4580535 res!1913792) b!4580537))

(assert (= (or b!4580536 b!4580535) bm!319719))

(assert (= (or b!4580536 b!4580535) bm!319718))

(assert (= (or b!4580536 b!4580535) bm!319720))

(assert (= (and d!1434338 res!1913793) b!4580534))

(assert (= (and b!4580534 res!1913791) b!4580533))

(declare-fun m!5390929 () Bool)

(assert (=> b!4580537 m!5390929))

(declare-fun m!5390931 () Bool)

(assert (=> d!1434338 m!5390931))

(declare-fun m!5390933 () Bool)

(assert (=> d!1434338 m!5390933))

(declare-fun m!5390935 () Bool)

(assert (=> bm!319718 m!5390935))

(assert (=> bm!319720 m!5390753))

(declare-fun m!5390937 () Bool)

(assert (=> bm!319720 m!5390937))

(declare-fun m!5390939 () Bool)

(assert (=> b!4580535 m!5390939))

(declare-fun m!5390941 () Bool)

(assert (=> b!4580535 m!5390941))

(declare-fun m!5390943 () Bool)

(assert (=> b!4580535 m!5390943))

(assert (=> b!4580535 m!5390929))

(declare-fun m!5390945 () Bool)

(assert (=> b!4580535 m!5390945))

(declare-fun m!5390947 () Bool)

(assert (=> b!4580535 m!5390947))

(declare-fun m!5390949 () Bool)

(assert (=> b!4580535 m!5390949))

(declare-fun m!5390951 () Bool)

(assert (=> b!4580535 m!5390951))

(assert (=> b!4580535 m!5390753))

(assert (=> b!4580535 m!5390939))

(declare-fun m!5390953 () Bool)

(assert (=> b!4580535 m!5390953))

(declare-fun m!5390955 () Bool)

(assert (=> b!4580535 m!5390955))

(assert (=> b!4580535 m!5390929))

(assert (=> b!4580535 m!5390753))

(declare-fun m!5390957 () Bool)

(assert (=> b!4580535 m!5390957))

(declare-fun m!5390959 () Bool)

(assert (=> b!4580533 m!5390959))

(declare-fun m!5390961 () Bool)

(assert (=> b!4580534 m!5390961))

(declare-fun m!5390963 () Bool)

(assert (=> bm!319719 m!5390963))

(assert (=> b!4580409 d!1434338))

(declare-fun bs!972243 () Bool)

(declare-fun d!1434340 () Bool)

(assert (= bs!972243 (and d!1434340 d!1434210)))

(declare-fun lambda!183194 () Int)

(assert (=> bs!972243 (= lambda!183194 lambda!183163)))

(declare-fun bs!972244 () Bool)

(assert (= bs!972244 (and d!1434340 d!1434168)))

(assert (=> bs!972244 (= lambda!183194 lambda!183155)))

(declare-fun bs!972245 () Bool)

(assert (= bs!972245 (and d!1434340 b!4579991)))

(assert (=> bs!972245 (not (= lambda!183194 lambda!183042))))

(declare-fun bs!972246 () Bool)

(assert (= bs!972246 (and d!1434340 d!1434246)))

(assert (=> bs!972246 (= lambda!183194 lambda!183174)))

(declare-fun bs!972247 () Bool)

(assert (= bs!972247 (and d!1434340 start!456028)))

(assert (=> bs!972247 (= lambda!183194 lambda!183041)))

(declare-fun bs!972248 () Bool)

(assert (= bs!972248 (and d!1434340 d!1434056)))

(assert (=> bs!972248 (= lambda!183194 lambda!183049)))

(declare-fun bs!972249 () Bool)

(assert (= bs!972249 (and d!1434340 d!1434258)))

(assert (=> bs!972249 (not (= lambda!183194 lambda!183181))))

(declare-fun bs!972250 () Bool)

(assert (= bs!972250 (and d!1434340 d!1434244)))

(assert (=> bs!972250 (= lambda!183194 lambda!183171)))

(declare-fun bs!972251 () Bool)

(assert (= bs!972251 (and d!1434340 d!1434250)))

(assert (=> bs!972251 (= lambda!183194 lambda!183175)))

(declare-fun bs!972252 () Bool)

(assert (= bs!972252 (and d!1434340 d!1434134)))

(assert (=> bs!972252 (= lambda!183194 lambda!183144)))

(declare-fun bs!972253 () Bool)

(assert (= bs!972253 (and d!1434340 d!1434136)))

(assert (=> bs!972253 (= lambda!183194 lambda!183150)))

(declare-fun bs!972254 () Bool)

(assert (= bs!972254 (and d!1434340 d!1434174)))

(assert (=> bs!972254 (= lambda!183194 lambda!183156)))

(declare-fun bs!972255 () Bool)

(assert (= bs!972255 (and d!1434340 d!1434144)))

(assert (=> bs!972255 (= lambda!183194 lambda!183154)))

(declare-fun bs!972256 () Bool)

(assert (= bs!972256 (and d!1434340 d!1434230)))

(assert (=> bs!972256 (= lambda!183194 lambda!183170)))

(declare-fun lt!1745774 () ListMap!3813)

(assert (=> d!1434340 (invariantList!1097 (toList!4552 lt!1745774))))

(declare-fun e!2856380 () ListMap!3813)

(assert (=> d!1434340 (= lt!1745774 e!2856380)))

(declare-fun c!783956 () Bool)

(assert (=> d!1434340 (= c!783956 ((_ is Cons!50951) (t!358065 (t!358065 (toList!4551 lm!1477)))))))

(assert (=> d!1434340 (forall!10500 (t!358065 (t!358065 (toList!4551 lm!1477))) lambda!183194)))

(assert (=> d!1434340 (= (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477)))) lt!1745774)))

(declare-fun b!4580538 () Bool)

(assert (=> b!4580538 (= e!2856380 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (t!358065 (t!358065 (toList!4551 lm!1477))))) (extractMap!1328 (t!358065 (t!358065 (t!358065 (toList!4551 lm!1477)))))))))

(declare-fun b!4580539 () Bool)

(assert (=> b!4580539 (= e!2856380 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434340 c!783956) b!4580538))

(assert (= (and d!1434340 (not c!783956)) b!4580539))

(declare-fun m!5390965 () Bool)

(assert (=> d!1434340 m!5390965))

(declare-fun m!5390967 () Bool)

(assert (=> d!1434340 m!5390967))

(declare-fun m!5390969 () Bool)

(assert (=> b!4580538 m!5390969))

(assert (=> b!4580538 m!5390969))

(declare-fun m!5390971 () Bool)

(assert (=> b!4580538 m!5390971))

(assert (=> b!4580409 d!1434340))

(declare-fun bs!972257 () Bool)

(declare-fun b!4580541 () Bool)

(assert (= bs!972257 (and b!4580541 b!4580471)))

(declare-fun lambda!183195 () Int)

(assert (=> bs!972257 (= (= (toList!4552 lt!1745243) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183195 lambda!183186))))

(declare-fun bs!972258 () Bool)

(assert (= bs!972258 (and b!4580541 b!4580522)))

(assert (=> bs!972258 (= (= (toList!4552 lt!1745243) (toList!4552 lt!1745232)) (= lambda!183195 lambda!183188))))

(assert (=> b!4580541 true))

(declare-fun bs!972259 () Bool)

(declare-fun b!4580542 () Bool)

(assert (= bs!972259 (and b!4580542 b!4580472)))

(declare-fun lambda!183196 () Int)

(assert (=> bs!972259 (= lambda!183196 lambda!183187)))

(declare-fun bs!972260 () Bool)

(assert (= bs!972260 (and b!4580542 b!4580523)))

(assert (=> bs!972260 (= lambda!183196 lambda!183189)))

(declare-fun d!1434342 () Bool)

(declare-fun e!2856381 () Bool)

(assert (=> d!1434342 e!2856381))

(declare-fun res!1913794 () Bool)

(assert (=> d!1434342 (=> (not res!1913794) (not e!2856381))))

(declare-fun lt!1745775 () List!51077)

(assert (=> d!1434342 (= res!1913794 (noDuplicate!791 lt!1745775))))

(assert (=> d!1434342 (= lt!1745775 (getKeysList!544 (toList!4552 lt!1745243)))))

(assert (=> d!1434342 (= (keys!17800 lt!1745243) lt!1745775)))

(declare-fun b!4580540 () Bool)

(declare-fun res!1913796 () Bool)

(assert (=> b!4580540 (=> (not res!1913796) (not e!2856381))))

(assert (=> b!4580540 (= res!1913796 (= (length!438 lt!1745775) (length!439 (toList!4552 lt!1745243))))))

(declare-fun res!1913795 () Bool)

(assert (=> b!4580541 (=> (not res!1913795) (not e!2856381))))

(assert (=> b!4580541 (= res!1913795 (forall!10503 lt!1745775 lambda!183195))))

(assert (=> b!4580542 (= e!2856381 (= (content!8587 lt!1745775) (content!8587 (map!11238 (toList!4552 lt!1745243) lambda!183196))))))

(assert (= (and d!1434342 res!1913794) b!4580540))

(assert (= (and b!4580540 res!1913796) b!4580541))

(assert (= (and b!4580541 res!1913795) b!4580542))

(declare-fun m!5390973 () Bool)

(assert (=> d!1434342 m!5390973))

(assert (=> d!1434342 m!5390015))

(declare-fun m!5390975 () Bool)

(assert (=> b!4580540 m!5390975))

(declare-fun m!5390977 () Bool)

(assert (=> b!4580540 m!5390977))

(declare-fun m!5390979 () Bool)

(assert (=> b!4580541 m!5390979))

(declare-fun m!5390981 () Bool)

(assert (=> b!4580542 m!5390981))

(declare-fun m!5390983 () Bool)

(assert (=> b!4580542 m!5390983))

(assert (=> b!4580542 m!5390983))

(declare-fun m!5390985 () Bool)

(assert (=> b!4580542 m!5390985))

(assert (=> b!4580110 d!1434342))

(declare-fun bs!972261 () Bool)

(declare-fun d!1434344 () Bool)

(assert (= bs!972261 (and d!1434344 b!4580368)))

(declare-fun lambda!183199 () Int)

(assert (=> bs!972261 (= (= lt!1745232 lt!1745665) (= lambda!183199 lambda!183166))))

(assert (=> bs!972261 (= (= lt!1745232 lt!1745214) (= lambda!183199 lambda!183165))))

(declare-fun bs!972262 () Bool)

(assert (= bs!972262 (and d!1434344 b!4580305)))

(assert (=> bs!972262 (= (= lt!1745232 lt!1745627) (= lambda!183199 lambda!183159))))

(declare-fun bs!972263 () Bool)

(assert (= bs!972263 (and d!1434344 d!1434224)))

(assert (=> bs!972263 (= (= lt!1745232 lt!1745668) (= lambda!183199 lambda!183167))))

(declare-fun bs!972264 () Bool)

(assert (= bs!972264 (and d!1434344 d!1434060)))

(assert (=> bs!972264 (= (= lt!1745232 lt!1745579) (= lambda!183199 lambda!183143))))

(declare-fun bs!972265 () Bool)

(assert (= bs!972265 (and d!1434344 d!1434338)))

(assert (=> bs!972265 (= (= lt!1745232 lt!1745759) (= lambda!183199 lambda!183193))))

(declare-fun bs!972266 () Bool)

(assert (= bs!972266 (and d!1434344 b!4580535)))

(assert (=> bs!972266 (= (= lt!1745232 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183199 lambda!183191))))

(declare-fun bs!972267 () Bool)

(assert (= bs!972267 (and d!1434344 b!4580258)))

(assert (=> bs!972267 (= (= lt!1745232 lt!1745218) (= lambda!183199 lambda!183140))))

(declare-fun bs!972268 () Bool)

(assert (= bs!972268 (and d!1434344 b!4580257)))

(assert (=> bs!972268 (= (= lt!1745232 lt!1745218) (= lambda!183199 lambda!183141))))

(declare-fun bs!972269 () Bool)

(assert (= bs!972269 (and d!1434344 d!1434184)))

(assert (=> bs!972269 (= (= lt!1745232 lt!1745630) (= lambda!183199 lambda!183160))))

(declare-fun bs!972270 () Bool)

(assert (= bs!972270 (and d!1434344 d!1434256)))

(assert (=> bs!972270 (not (= lambda!183199 lambda!183178))))

(assert (=> bs!972268 (= (= lt!1745232 lt!1745576) (= lambda!183199 lambda!183142))))

(declare-fun bs!972271 () Bool)

(assert (= bs!972271 (and d!1434344 b!4580536)))

(assert (=> bs!972271 (= (= lt!1745232 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183199 lambda!183190))))

(declare-fun bs!972272 () Bool)

(assert (= bs!972272 (and d!1434344 b!4580306)))

(assert (=> bs!972272 (= lambda!183199 lambda!183157)))

(assert (=> bs!972262 (= lambda!183199 lambda!183158)))

(declare-fun bs!972273 () Bool)

(assert (= bs!972273 (and d!1434344 b!4579991)))

(assert (=> bs!972273 (not (= lambda!183199 lambda!183043))))

(assert (=> bs!972266 (= (= lt!1745232 lt!1745756) (= lambda!183199 lambda!183192))))

(declare-fun bs!972274 () Bool)

(assert (= bs!972274 (and d!1434344 b!4580369)))

(assert (=> bs!972274 (= (= lt!1745232 lt!1745214) (= lambda!183199 lambda!183164))))

(assert (=> d!1434344 true))

(assert (=> d!1434344 (forall!10502 (toList!4552 lt!1745232) lambda!183199)))

(declare-fun lt!1745778 () Unit!105525)

(declare-fun choose!30534 (ListMap!3813) Unit!105525)

(assert (=> d!1434344 (= lt!1745778 (choose!30534 lt!1745232))))

(assert (=> d!1434344 (= (lemmaContainsAllItsOwnKeys!414 lt!1745232) lt!1745778)))

(declare-fun bs!972275 () Bool)

(assert (= bs!972275 d!1434344))

(declare-fun m!5390987 () Bool)

(assert (=> bs!972275 m!5390987))

(declare-fun m!5390989 () Bool)

(assert (=> bs!972275 m!5390989))

(assert (=> bm!319712 d!1434344))

(declare-fun d!1434346 () Bool)

(declare-fun res!1913797 () Bool)

(declare-fun e!2856382 () Bool)

(assert (=> d!1434346 (=> res!1913797 e!2856382)))

(assert (=> d!1434346 (= res!1913797 (not ((_ is Cons!50950) (t!358064 (_2!29056 lt!1745216)))))))

(assert (=> d!1434346 (= (noDuplicateKeys!1272 (t!358064 (_2!29056 lt!1745216))) e!2856382)))

(declare-fun b!4580543 () Bool)

(declare-fun e!2856383 () Bool)

(assert (=> b!4580543 (= e!2856382 e!2856383)))

(declare-fun res!1913798 () Bool)

(assert (=> b!4580543 (=> (not res!1913798) (not e!2856383))))

(assert (=> b!4580543 (= res!1913798 (not (containsKey!2054 (t!358064 (t!358064 (_2!29056 lt!1745216))) (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))))

(declare-fun b!4580544 () Bool)

(assert (=> b!4580544 (= e!2856383 (noDuplicateKeys!1272 (t!358064 (t!358064 (_2!29056 lt!1745216)))))))

(assert (= (and d!1434346 (not res!1913797)) b!4580543))

(assert (= (and b!4580543 res!1913798) b!4580544))

(declare-fun m!5390991 () Bool)

(assert (=> b!4580543 m!5390991))

(declare-fun m!5390993 () Bool)

(assert (=> b!4580544 m!5390993))

(assert (=> b!4580364 d!1434346))

(declare-fun d!1434348 () Bool)

(declare-fun lt!1745779 () Bool)

(assert (=> d!1434348 (= lt!1745779 (select (content!8588 (toList!4551 lt!1745270)) lt!1745211))))

(declare-fun e!2856384 () Bool)

(assert (=> d!1434348 (= lt!1745779 e!2856384)))

(declare-fun res!1913799 () Bool)

(assert (=> d!1434348 (=> (not res!1913799) (not e!2856384))))

(assert (=> d!1434348 (= res!1913799 ((_ is Cons!50951) (toList!4551 lt!1745270)))))

(assert (=> d!1434348 (= (contains!13845 (toList!4551 lt!1745270) lt!1745211) lt!1745779)))

(declare-fun b!4580545 () Bool)

(declare-fun e!2856385 () Bool)

(assert (=> b!4580545 (= e!2856384 e!2856385)))

(declare-fun res!1913800 () Bool)

(assert (=> b!4580545 (=> res!1913800 e!2856385)))

(assert (=> b!4580545 (= res!1913800 (= (h!56886 (toList!4551 lt!1745270)) lt!1745211))))

(declare-fun b!4580546 () Bool)

(assert (=> b!4580546 (= e!2856385 (contains!13845 (t!358065 (toList!4551 lt!1745270)) lt!1745211))))

(assert (= (and d!1434348 res!1913799) b!4580545))

(assert (= (and b!4580545 (not res!1913800)) b!4580546))

(declare-fun m!5390995 () Bool)

(assert (=> d!1434348 m!5390995))

(declare-fun m!5390997 () Bool)

(assert (=> d!1434348 m!5390997))

(declare-fun m!5390999 () Bool)

(assert (=> b!4580546 m!5390999))

(assert (=> b!4580021 d!1434348))

(declare-fun d!1434350 () Bool)

(declare-fun res!1913801 () Bool)

(declare-fun e!2856386 () Bool)

(assert (=> d!1434350 (=> res!1913801 e!2856386)))

(assert (=> d!1434350 (= res!1913801 (not ((_ is Cons!50950) (_2!29056 (h!56886 (toList!4551 lm!1477))))))))

(assert (=> d!1434350 (= (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lm!1477)))) e!2856386)))

(declare-fun b!4580547 () Bool)

(declare-fun e!2856387 () Bool)

(assert (=> b!4580547 (= e!2856386 e!2856387)))

(declare-fun res!1913802 () Bool)

(assert (=> b!4580547 (=> (not res!1913802) (not e!2856387))))

(assert (=> b!4580547 (= res!1913802 (not (containsKey!2054 (t!358064 (_2!29056 (h!56886 (toList!4551 lm!1477)))) (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477))))))))))

(declare-fun b!4580548 () Bool)

(assert (=> b!4580548 (= e!2856387 (noDuplicateKeys!1272 (t!358064 (_2!29056 (h!56886 (toList!4551 lm!1477))))))))

(assert (= (and d!1434350 (not res!1913801)) b!4580547))

(assert (= (and b!4580547 res!1913802) b!4580548))

(declare-fun m!5391001 () Bool)

(assert (=> b!4580547 m!5391001))

(declare-fun m!5391003 () Bool)

(assert (=> b!4580548 m!5391003))

(assert (=> bs!972192 d!1434350))

(declare-fun d!1434352 () Bool)

(declare-fun res!1913803 () Bool)

(declare-fun e!2856388 () Bool)

(assert (=> d!1434352 (=> res!1913803 e!2856388)))

(assert (=> d!1434352 (= res!1913803 ((_ is Nil!50950) (toList!4552 lt!1745218)))))

(assert (=> d!1434352 (= (forall!10502 (toList!4552 lt!1745218) lambda!183143) e!2856388)))

(declare-fun b!4580549 () Bool)

(declare-fun e!2856389 () Bool)

(assert (=> b!4580549 (= e!2856388 e!2856389)))

(declare-fun res!1913804 () Bool)

(assert (=> b!4580549 (=> (not res!1913804) (not e!2856389))))

(assert (=> b!4580549 (= res!1913804 (dynLambda!21336 lambda!183143 (h!56885 (toList!4552 lt!1745218))))))

(declare-fun b!4580550 () Bool)

(assert (=> b!4580550 (= e!2856389 (forall!10502 (t!358064 (toList!4552 lt!1745218)) lambda!183143))))

(assert (= (and d!1434352 (not res!1913803)) b!4580549))

(assert (= (and b!4580549 res!1913804) b!4580550))

(declare-fun b_lambda!166045 () Bool)

(assert (=> (not b_lambda!166045) (not b!4580549)))

(declare-fun m!5391005 () Bool)

(assert (=> b!4580549 m!5391005))

(declare-fun m!5391007 () Bool)

(assert (=> b!4580550 m!5391007))

(assert (=> b!4580256 d!1434352))

(declare-fun d!1434354 () Bool)

(declare-fun res!1913805 () Bool)

(declare-fun e!2856390 () Bool)

(assert (=> d!1434354 (=> res!1913805 e!2856390)))

(assert (=> d!1434354 (= res!1913805 ((_ is Nil!50950) (toList!4552 lt!1745214)))))

(assert (=> d!1434354 (= (forall!10502 (toList!4552 lt!1745214) lambda!183167) e!2856390)))

(declare-fun b!4580551 () Bool)

(declare-fun e!2856391 () Bool)

(assert (=> b!4580551 (= e!2856390 e!2856391)))

(declare-fun res!1913806 () Bool)

(assert (=> b!4580551 (=> (not res!1913806) (not e!2856391))))

(assert (=> b!4580551 (= res!1913806 (dynLambda!21336 lambda!183167 (h!56885 (toList!4552 lt!1745214))))))

(declare-fun b!4580552 () Bool)

(assert (=> b!4580552 (= e!2856391 (forall!10502 (t!358064 (toList!4552 lt!1745214)) lambda!183167))))

(assert (= (and d!1434354 (not res!1913805)) b!4580551))

(assert (= (and b!4580551 res!1913806) b!4580552))

(declare-fun b_lambda!166047 () Bool)

(assert (=> (not b_lambda!166047) (not b!4580551)))

(declare-fun m!5391009 () Bool)

(assert (=> b!4580551 m!5391009))

(declare-fun m!5391011 () Bool)

(assert (=> b!4580552 m!5391011))

(assert (=> b!4580367 d!1434354))

(declare-fun d!1434356 () Bool)

(assert (=> d!1434356 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745235) hash!344))))

(declare-fun lt!1745782 () Unit!105525)

(declare-fun choose!30535 (List!51075 (_ BitVec 64)) Unit!105525)

(assert (=> d!1434356 (= lt!1745782 (choose!30535 (toList!4551 lt!1745235) hash!344))))

(declare-fun e!2856394 () Bool)

(assert (=> d!1434356 e!2856394))

(declare-fun res!1913809 () Bool)

(assert (=> d!1434356 (=> (not res!1913809) (not e!2856394))))

(assert (=> d!1434356 (= res!1913809 (isStrictlySorted!512 (toList!4551 lt!1745235)))))

(assert (=> d!1434356 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (toList!4551 lt!1745235) hash!344) lt!1745782)))

(declare-fun b!4580555 () Bool)

(assert (=> b!4580555 (= e!2856394 (containsKey!2056 (toList!4551 lt!1745235) hash!344))))

(assert (= (and d!1434356 res!1913809) b!4580555))

(assert (=> d!1434356 m!5389863))

(assert (=> d!1434356 m!5389863))

(assert (=> d!1434356 m!5389971))

(declare-fun m!5391013 () Bool)

(assert (=> d!1434356 m!5391013))

(declare-fun m!5391015 () Bool)

(assert (=> d!1434356 m!5391015))

(assert (=> b!4580555 m!5389959))

(assert (=> b!4580062 d!1434356))

(declare-fun d!1434358 () Bool)

(declare-fun isEmpty!28821 (Option!11327) Bool)

(assert (=> d!1434358 (= (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745235) hash!344)) (not (isEmpty!28821 (getValueByKey!1253 (toList!4551 lt!1745235) hash!344))))))

(declare-fun bs!972276 () Bool)

(assert (= bs!972276 d!1434358))

(assert (=> bs!972276 m!5389863))

(declare-fun m!5391017 () Bool)

(assert (=> bs!972276 m!5391017))

(assert (=> b!4580062 d!1434358))

(declare-fun d!1434360 () Bool)

(declare-fun c!783961 () Bool)

(assert (=> d!1434360 (= c!783961 (and ((_ is Cons!50951) (toList!4551 lt!1745235)) (= (_1!29056 (h!56886 (toList!4551 lt!1745235))) hash!344)))))

(declare-fun e!2856399 () Option!11327)

(assert (=> d!1434360 (= (getValueByKey!1253 (toList!4551 lt!1745235) hash!344) e!2856399)))

(declare-fun b!4580567 () Bool)

(declare-fun e!2856400 () Option!11327)

(assert (=> b!4580567 (= e!2856400 None!11326)))

(declare-fun b!4580566 () Bool)

(assert (=> b!4580566 (= e!2856400 (getValueByKey!1253 (t!358065 (toList!4551 lt!1745235)) hash!344))))

(declare-fun b!4580564 () Bool)

(assert (=> b!4580564 (= e!2856399 (Some!11326 (_2!29056 (h!56886 (toList!4551 lt!1745235)))))))

(declare-fun b!4580565 () Bool)

(assert (=> b!4580565 (= e!2856399 e!2856400)))

(declare-fun c!783962 () Bool)

(assert (=> b!4580565 (= c!783962 (and ((_ is Cons!50951) (toList!4551 lt!1745235)) (not (= (_1!29056 (h!56886 (toList!4551 lt!1745235))) hash!344))))))

(assert (= (and d!1434360 c!783961) b!4580564))

(assert (= (and d!1434360 (not c!783961)) b!4580565))

(assert (= (and b!4580565 c!783962) b!4580566))

(assert (= (and b!4580565 (not c!783962)) b!4580567))

(declare-fun m!5391019 () Bool)

(assert (=> b!4580566 m!5391019))

(assert (=> b!4580062 d!1434360))

(declare-fun d!1434362 () Bool)

(declare-fun res!1913810 () Bool)

(declare-fun e!2856401 () Bool)

(assert (=> d!1434362 (=> res!1913810 e!2856401)))

(assert (=> d!1434362 (= res!1913810 (not ((_ is Cons!50950) (t!358064 newBucket!178))))))

(assert (=> d!1434362 (= (noDuplicateKeys!1272 (t!358064 newBucket!178)) e!2856401)))

(declare-fun b!4580568 () Bool)

(declare-fun e!2856402 () Bool)

(assert (=> b!4580568 (= e!2856401 e!2856402)))

(declare-fun res!1913811 () Bool)

(assert (=> b!4580568 (=> (not res!1913811) (not e!2856402))))

(assert (=> b!4580568 (= res!1913811 (not (containsKey!2054 (t!358064 (t!358064 newBucket!178)) (_1!29055 (h!56885 (t!358064 newBucket!178))))))))

(declare-fun b!4580569 () Bool)

(assert (=> b!4580569 (= e!2856402 (noDuplicateKeys!1272 (t!358064 (t!358064 newBucket!178))))))

(assert (= (and d!1434362 (not res!1913810)) b!4580568))

(assert (= (and b!4580568 res!1913811) b!4580569))

(declare-fun m!5391021 () Bool)

(assert (=> b!4580568 m!5391021))

(declare-fun m!5391023 () Bool)

(assert (=> b!4580569 m!5391023))

(assert (=> b!4580301 d!1434362))

(declare-fun d!1434364 () Bool)

(declare-fun lt!1745783 () Bool)

(assert (=> d!1434364 (= lt!1745783 (select (content!8588 (toList!4551 lt!1745276)) lt!1745216))))

(declare-fun e!2856403 () Bool)

(assert (=> d!1434364 (= lt!1745783 e!2856403)))

(declare-fun res!1913812 () Bool)

(assert (=> d!1434364 (=> (not res!1913812) (not e!2856403))))

(assert (=> d!1434364 (= res!1913812 ((_ is Cons!50951) (toList!4551 lt!1745276)))))

(assert (=> d!1434364 (= (contains!13845 (toList!4551 lt!1745276) lt!1745216) lt!1745783)))

(declare-fun b!4580570 () Bool)

(declare-fun e!2856404 () Bool)

(assert (=> b!4580570 (= e!2856403 e!2856404)))

(declare-fun res!1913813 () Bool)

(assert (=> b!4580570 (=> res!1913813 e!2856404)))

(assert (=> b!4580570 (= res!1913813 (= (h!56886 (toList!4551 lt!1745276)) lt!1745216))))

(declare-fun b!4580571 () Bool)

(assert (=> b!4580571 (= e!2856404 (contains!13845 (t!358065 (toList!4551 lt!1745276)) lt!1745216))))

(assert (= (and d!1434364 res!1913812) b!4580570))

(assert (= (and b!4580570 (not res!1913813)) b!4580571))

(declare-fun m!5391025 () Bool)

(assert (=> d!1434364 m!5391025))

(declare-fun m!5391027 () Bool)

(assert (=> d!1434364 m!5391027))

(declare-fun m!5391029 () Bool)

(assert (=> b!4580571 m!5391029))

(assert (=> b!4580035 d!1434364))

(declare-fun bs!972277 () Bool)

(declare-fun b!4580575 () Bool)

(assert (= bs!972277 (and b!4580575 b!4580368)))

(declare-fun lambda!183200 () Int)

(assert (=> bs!972277 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745665) (= lambda!183200 lambda!183166))))

(assert (=> bs!972277 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745214) (= lambda!183200 lambda!183165))))

(declare-fun bs!972278 () Bool)

(assert (= bs!972278 (and b!4580575 b!4580305)))

(assert (=> bs!972278 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745627) (= lambda!183200 lambda!183159))))

(declare-fun bs!972279 () Bool)

(assert (= bs!972279 (and b!4580575 d!1434224)))

(assert (=> bs!972279 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745668) (= lambda!183200 lambda!183167))))

(declare-fun bs!972280 () Bool)

(assert (= bs!972280 (and b!4580575 d!1434060)))

(assert (=> bs!972280 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745579) (= lambda!183200 lambda!183143))))

(declare-fun bs!972281 () Bool)

(assert (= bs!972281 (and b!4580575 d!1434338)))

(assert (=> bs!972281 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745759) (= lambda!183200 lambda!183193))))

(declare-fun bs!972282 () Bool)

(assert (= bs!972282 (and b!4580575 b!4580535)))

(assert (=> bs!972282 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183200 lambda!183191))))

(declare-fun bs!972283 () Bool)

(assert (= bs!972283 (and b!4580575 b!4580258)))

(assert (=> bs!972283 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745218) (= lambda!183200 lambda!183140))))

(declare-fun bs!972284 () Bool)

(assert (= bs!972284 (and b!4580575 b!4580257)))

(assert (=> bs!972284 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745218) (= lambda!183200 lambda!183141))))

(declare-fun bs!972285 () Bool)

(assert (= bs!972285 (and b!4580575 d!1434184)))

(assert (=> bs!972285 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745630) (= lambda!183200 lambda!183160))))

(declare-fun bs!972286 () Bool)

(assert (= bs!972286 (and b!4580575 d!1434344)))

(assert (=> bs!972286 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745232) (= lambda!183200 lambda!183199))))

(declare-fun bs!972287 () Bool)

(assert (= bs!972287 (and b!4580575 d!1434256)))

(assert (=> bs!972287 (not (= lambda!183200 lambda!183178))))

(assert (=> bs!972284 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745576) (= lambda!183200 lambda!183142))))

(declare-fun bs!972288 () Bool)

(assert (= bs!972288 (and b!4580575 b!4580536)))

(assert (=> bs!972288 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183200 lambda!183190))))

(declare-fun bs!972289 () Bool)

(assert (= bs!972289 (and b!4580575 b!4580306)))

(assert (=> bs!972289 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745232) (= lambda!183200 lambda!183157))))

(assert (=> bs!972278 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745232) (= lambda!183200 lambda!183158))))

(declare-fun bs!972290 () Bool)

(assert (= bs!972290 (and b!4580575 b!4579991)))

(assert (=> bs!972290 (not (= lambda!183200 lambda!183043))))

(assert (=> bs!972282 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745756) (= lambda!183200 lambda!183192))))

(declare-fun bs!972291 () Bool)

(assert (= bs!972291 (and b!4580575 b!4580369)))

(assert (=> bs!972291 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745214) (= lambda!183200 lambda!183164))))

(assert (=> b!4580575 true))

(declare-fun bs!972292 () Bool)

(declare-fun b!4580574 () Bool)

(assert (= bs!972292 (and b!4580574 b!4580368)))

(declare-fun lambda!183201 () Int)

(assert (=> bs!972292 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745665) (= lambda!183201 lambda!183166))))

(assert (=> bs!972292 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745214) (= lambda!183201 lambda!183165))))

(declare-fun bs!972293 () Bool)

(assert (= bs!972293 (and b!4580574 b!4580305)))

(assert (=> bs!972293 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745627) (= lambda!183201 lambda!183159))))

(declare-fun bs!972294 () Bool)

(assert (= bs!972294 (and b!4580574 d!1434224)))

(assert (=> bs!972294 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745668) (= lambda!183201 lambda!183167))))

(declare-fun bs!972295 () Bool)

(assert (= bs!972295 (and b!4580574 d!1434060)))

(assert (=> bs!972295 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745579) (= lambda!183201 lambda!183143))))

(declare-fun bs!972296 () Bool)

(assert (= bs!972296 (and b!4580574 d!1434338)))

(assert (=> bs!972296 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745759) (= lambda!183201 lambda!183193))))

(declare-fun bs!972297 () Bool)

(assert (= bs!972297 (and b!4580574 b!4580258)))

(assert (=> bs!972297 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745218) (= lambda!183201 lambda!183140))))

(declare-fun bs!972298 () Bool)

(assert (= bs!972298 (and b!4580574 b!4580257)))

(assert (=> bs!972298 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745218) (= lambda!183201 lambda!183141))))

(declare-fun bs!972299 () Bool)

(assert (= bs!972299 (and b!4580574 d!1434184)))

(assert (=> bs!972299 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745630) (= lambda!183201 lambda!183160))))

(declare-fun bs!972300 () Bool)

(assert (= bs!972300 (and b!4580574 d!1434344)))

(assert (=> bs!972300 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745232) (= lambda!183201 lambda!183199))))

(declare-fun bs!972301 () Bool)

(assert (= bs!972301 (and b!4580574 d!1434256)))

(assert (=> bs!972301 (not (= lambda!183201 lambda!183178))))

(assert (=> bs!972298 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745576) (= lambda!183201 lambda!183142))))

(declare-fun bs!972302 () Bool)

(assert (= bs!972302 (and b!4580574 b!4580536)))

(assert (=> bs!972302 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183201 lambda!183190))))

(declare-fun bs!972303 () Bool)

(assert (= bs!972303 (and b!4580574 b!4580306)))

(assert (=> bs!972303 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745232) (= lambda!183201 lambda!183157))))

(assert (=> bs!972293 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745232) (= lambda!183201 lambda!183158))))

(declare-fun bs!972304 () Bool)

(assert (= bs!972304 (and b!4580574 b!4579991)))

(assert (=> bs!972304 (not (= lambda!183201 lambda!183043))))

(declare-fun bs!972305 () Bool)

(assert (= bs!972305 (and b!4580574 b!4580535)))

(assert (=> bs!972305 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745756) (= lambda!183201 lambda!183192))))

(declare-fun bs!972306 () Bool)

(assert (= bs!972306 (and b!4580574 b!4580369)))

(assert (=> bs!972306 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745214) (= lambda!183201 lambda!183164))))

(declare-fun bs!972307 () Bool)

(assert (= bs!972307 (and b!4580574 b!4580575)))

(assert (=> bs!972307 (= lambda!183201 lambda!183200)))

(assert (=> bs!972305 (= (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183201 lambda!183191))))

(assert (=> b!4580574 true))

(declare-fun lambda!183202 () Int)

(declare-fun lt!1745787 () ListMap!3813)

(assert (=> bs!972292 (= (= lt!1745787 lt!1745665) (= lambda!183202 lambda!183166))))

(assert (=> bs!972292 (= (= lt!1745787 lt!1745214) (= lambda!183202 lambda!183165))))

(assert (=> bs!972293 (= (= lt!1745787 lt!1745627) (= lambda!183202 lambda!183159))))

(assert (=> bs!972294 (= (= lt!1745787 lt!1745668) (= lambda!183202 lambda!183167))))

(assert (=> bs!972295 (= (= lt!1745787 lt!1745579) (= lambda!183202 lambda!183143))))

(assert (=> bs!972296 (= (= lt!1745787 lt!1745759) (= lambda!183202 lambda!183193))))

(assert (=> bs!972298 (= (= lt!1745787 lt!1745218) (= lambda!183202 lambda!183141))))

(assert (=> bs!972299 (= (= lt!1745787 lt!1745630) (= lambda!183202 lambda!183160))))

(assert (=> bs!972300 (= (= lt!1745787 lt!1745232) (= lambda!183202 lambda!183199))))

(assert (=> bs!972301 (not (= lambda!183202 lambda!183178))))

(assert (=> bs!972298 (= (= lt!1745787 lt!1745576) (= lambda!183202 lambda!183142))))

(assert (=> bs!972302 (= (= lt!1745787 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183202 lambda!183190))))

(assert (=> bs!972303 (= (= lt!1745787 lt!1745232) (= lambda!183202 lambda!183157))))

(assert (=> bs!972293 (= (= lt!1745787 lt!1745232) (= lambda!183202 lambda!183158))))

(assert (=> bs!972304 (not (= lambda!183202 lambda!183043))))

(assert (=> bs!972305 (= (= lt!1745787 lt!1745756) (= lambda!183202 lambda!183192))))

(assert (=> bs!972306 (= (= lt!1745787 lt!1745214) (= lambda!183202 lambda!183164))))

(assert (=> bs!972307 (= (= lt!1745787 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183202 lambda!183200))))

(assert (=> bs!972305 (= (= lt!1745787 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183202 lambda!183191))))

(assert (=> b!4580574 (= (= lt!1745787 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183202 lambda!183201))))

(assert (=> bs!972297 (= (= lt!1745787 lt!1745218) (= lambda!183202 lambda!183140))))

(assert (=> b!4580574 true))

(declare-fun bs!972308 () Bool)

(declare-fun d!1434366 () Bool)

(assert (= bs!972308 (and d!1434366 b!4580368)))

(declare-fun lt!1745790 () ListMap!3813)

(declare-fun lambda!183203 () Int)

(assert (=> bs!972308 (= (= lt!1745790 lt!1745665) (= lambda!183203 lambda!183166))))

(declare-fun bs!972309 () Bool)

(assert (= bs!972309 (and d!1434366 b!4580305)))

(assert (=> bs!972309 (= (= lt!1745790 lt!1745627) (= lambda!183203 lambda!183159))))

(declare-fun bs!972310 () Bool)

(assert (= bs!972310 (and d!1434366 d!1434224)))

(assert (=> bs!972310 (= (= lt!1745790 lt!1745668) (= lambda!183203 lambda!183167))))

(declare-fun bs!972311 () Bool)

(assert (= bs!972311 (and d!1434366 d!1434060)))

(assert (=> bs!972311 (= (= lt!1745790 lt!1745579) (= lambda!183203 lambda!183143))))

(declare-fun bs!972312 () Bool)

(assert (= bs!972312 (and d!1434366 d!1434338)))

(assert (=> bs!972312 (= (= lt!1745790 lt!1745759) (= lambda!183203 lambda!183193))))

(declare-fun bs!972313 () Bool)

(assert (= bs!972313 (and d!1434366 b!4580257)))

(assert (=> bs!972313 (= (= lt!1745790 lt!1745218) (= lambda!183203 lambda!183141))))

(declare-fun bs!972314 () Bool)

(assert (= bs!972314 (and d!1434366 d!1434184)))

(assert (=> bs!972314 (= (= lt!1745790 lt!1745630) (= lambda!183203 lambda!183160))))

(declare-fun bs!972315 () Bool)

(assert (= bs!972315 (and d!1434366 d!1434344)))

(assert (=> bs!972315 (= (= lt!1745790 lt!1745232) (= lambda!183203 lambda!183199))))

(declare-fun bs!972316 () Bool)

(assert (= bs!972316 (and d!1434366 d!1434256)))

(assert (=> bs!972316 (not (= lambda!183203 lambda!183178))))

(assert (=> bs!972313 (= (= lt!1745790 lt!1745576) (= lambda!183203 lambda!183142))))

(declare-fun bs!972317 () Bool)

(assert (= bs!972317 (and d!1434366 b!4580536)))

(assert (=> bs!972317 (= (= lt!1745790 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183203 lambda!183190))))

(declare-fun bs!972318 () Bool)

(assert (= bs!972318 (and d!1434366 b!4580306)))

(assert (=> bs!972318 (= (= lt!1745790 lt!1745232) (= lambda!183203 lambda!183157))))

(assert (=> bs!972308 (= (= lt!1745790 lt!1745214) (= lambda!183203 lambda!183165))))

(declare-fun bs!972319 () Bool)

(assert (= bs!972319 (and d!1434366 b!4580574)))

(assert (=> bs!972319 (= (= lt!1745790 lt!1745787) (= lambda!183203 lambda!183202))))

(assert (=> bs!972309 (= (= lt!1745790 lt!1745232) (= lambda!183203 lambda!183158))))

(declare-fun bs!972320 () Bool)

(assert (= bs!972320 (and d!1434366 b!4579991)))

(assert (=> bs!972320 (not (= lambda!183203 lambda!183043))))

(declare-fun bs!972321 () Bool)

(assert (= bs!972321 (and d!1434366 b!4580535)))

(assert (=> bs!972321 (= (= lt!1745790 lt!1745756) (= lambda!183203 lambda!183192))))

(declare-fun bs!972322 () Bool)

(assert (= bs!972322 (and d!1434366 b!4580369)))

(assert (=> bs!972322 (= (= lt!1745790 lt!1745214) (= lambda!183203 lambda!183164))))

(declare-fun bs!972323 () Bool)

(assert (= bs!972323 (and d!1434366 b!4580575)))

(assert (=> bs!972323 (= (= lt!1745790 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183203 lambda!183200))))

(assert (=> bs!972321 (= (= lt!1745790 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183203 lambda!183191))))

(assert (=> bs!972319 (= (= lt!1745790 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183203 lambda!183201))))

(declare-fun bs!972324 () Bool)

(assert (= bs!972324 (and d!1434366 b!4580258)))

(assert (=> bs!972324 (= (= lt!1745790 lt!1745218) (= lambda!183203 lambda!183140))))

(assert (=> d!1434366 true))

(declare-fun b!4580572 () Bool)

(declare-fun e!2856407 () Bool)

(assert (=> b!4580572 (= e!2856407 (invariantList!1097 (toList!4552 lt!1745790)))))

(declare-fun b!4580573 () Bool)

(declare-fun res!1913814 () Bool)

(assert (=> b!4580573 (=> (not res!1913814) (not e!2856407))))

(assert (=> b!4580573 (= res!1913814 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) lambda!183203))))

(declare-fun bm!319721 () Bool)

(declare-fun call!319728 () Bool)

(declare-fun c!783963 () Bool)

(assert (=> bm!319721 (= call!319728 (forall!10502 (ite c!783963 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (ite c!783963 lambda!183200 lambda!183202)))))

(declare-fun e!2856406 () ListMap!3813)

(assert (=> b!4580574 (= e!2856406 lt!1745787)))

(declare-fun lt!1745785 () ListMap!3813)

(assert (=> b!4580574 (= lt!1745785 (+!1710 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) (h!56885 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))))))

(assert (=> b!4580574 (= lt!1745787 (addToMapMapFromBucket!785 (t!358064 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (+!1710 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) (h!56885 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216))))))))))

(declare-fun lt!1745789 () Unit!105525)

(declare-fun call!319727 () Unit!105525)

(assert (=> b!4580574 (= lt!1745789 call!319727)))

(assert (=> b!4580574 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) lambda!183201)))

(declare-fun lt!1745804 () Unit!105525)

(assert (=> b!4580574 (= lt!1745804 lt!1745789)))

(assert (=> b!4580574 (forall!10502 (toList!4552 lt!1745785) lambda!183202)))

(declare-fun lt!1745799 () Unit!105525)

(declare-fun Unit!105625 () Unit!105525)

(assert (=> b!4580574 (= lt!1745799 Unit!105625)))

(assert (=> b!4580574 (forall!10502 (t!358064 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) lambda!183202)))

(declare-fun lt!1745797 () Unit!105525)

(declare-fun Unit!105626 () Unit!105525)

(assert (=> b!4580574 (= lt!1745797 Unit!105626)))

(declare-fun lt!1745794 () Unit!105525)

(declare-fun Unit!105627 () Unit!105525)

(assert (=> b!4580574 (= lt!1745794 Unit!105627)))

(declare-fun lt!1745801 () Unit!105525)

(assert (=> b!4580574 (= lt!1745801 (forallContained!2765 (toList!4552 lt!1745785) lambda!183202 (h!56885 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))))))

(assert (=> b!4580574 (contains!13846 lt!1745785 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))))))

(declare-fun lt!1745791 () Unit!105525)

(declare-fun Unit!105628 () Unit!105525)

(assert (=> b!4580574 (= lt!1745791 Unit!105628)))

(assert (=> b!4580574 (contains!13846 lt!1745787 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))))))

(declare-fun lt!1745796 () Unit!105525)

(declare-fun Unit!105629 () Unit!105525)

(assert (=> b!4580574 (= lt!1745796 Unit!105629)))

(assert (=> b!4580574 call!319728))

(declare-fun lt!1745793 () Unit!105525)

(declare-fun Unit!105630 () Unit!105525)

(assert (=> b!4580574 (= lt!1745793 Unit!105630)))

(declare-fun call!319726 () Bool)

(assert (=> b!4580574 call!319726))

(declare-fun lt!1745795 () Unit!105525)

(declare-fun Unit!105631 () Unit!105525)

(assert (=> b!4580574 (= lt!1745795 Unit!105631)))

(declare-fun lt!1745798 () Unit!105525)

(declare-fun Unit!105632 () Unit!105525)

(assert (=> b!4580574 (= lt!1745798 Unit!105632)))

(declare-fun lt!1745802 () Unit!105525)

(assert (=> b!4580574 (= lt!1745802 (addForallContainsKeyThenBeforeAdding!414 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745787 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))) (_2!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216))))))))))

(assert (=> b!4580574 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) lambda!183202)))

(declare-fun lt!1745800 () Unit!105525)

(assert (=> b!4580574 (= lt!1745800 lt!1745802)))

(assert (=> b!4580574 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) lambda!183202)))

(declare-fun lt!1745788 () Unit!105525)

(declare-fun Unit!105633 () Unit!105525)

(assert (=> b!4580574 (= lt!1745788 Unit!105633)))

(declare-fun res!1913815 () Bool)

(assert (=> b!4580574 (= res!1913815 (forall!10502 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lambda!183202))))

(declare-fun e!2856405 () Bool)

(assert (=> b!4580574 (=> (not res!1913815) (not e!2856405))))

(assert (=> b!4580574 e!2856405))

(declare-fun lt!1745792 () Unit!105525)

(declare-fun Unit!105634 () Unit!105525)

(assert (=> b!4580574 (= lt!1745792 Unit!105634)))

(assert (=> b!4580575 (= e!2856406 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))))

(declare-fun lt!1745803 () Unit!105525)

(assert (=> b!4580575 (= lt!1745803 call!319727)))

(assert (=> b!4580575 call!319728))

(declare-fun lt!1745784 () Unit!105525)

(assert (=> b!4580575 (= lt!1745784 lt!1745803)))

(assert (=> b!4580575 call!319726))

(declare-fun lt!1745786 () Unit!105525)

(declare-fun Unit!105635 () Unit!105525)

(assert (=> b!4580575 (= lt!1745786 Unit!105635)))

(declare-fun bm!319722 () Bool)

(assert (=> bm!319722 (= call!319726 (forall!10502 (ite c!783963 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (toList!4552 lt!1745785)) (ite c!783963 lambda!183200 lambda!183202)))))

(assert (=> d!1434366 e!2856407))

(declare-fun res!1913816 () Bool)

(assert (=> d!1434366 (=> (not res!1913816) (not e!2856407))))

(assert (=> d!1434366 (= res!1913816 (forall!10502 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lambda!183203))))

(assert (=> d!1434366 (= lt!1745790 e!2856406)))

(assert (=> d!1434366 (= c!783963 ((_ is Nil!50950) (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216))))))))

(assert (=> d!1434366 (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))))

(assert (=> d!1434366 (= (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) lt!1745790)))

(declare-fun bm!319723 () Bool)

(assert (=> bm!319723 (= call!319727 (lemmaContainsAllItsOwnKeys!414 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))))))

(declare-fun b!4580576 () Bool)

(assert (=> b!4580576 (= e!2856405 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) lambda!183202))))

(assert (= (and d!1434366 c!783963) b!4580575))

(assert (= (and d!1434366 (not c!783963)) b!4580574))

(assert (= (and b!4580574 res!1913815) b!4580576))

(assert (= (or b!4580575 b!4580574) bm!319722))

(assert (= (or b!4580575 b!4580574) bm!319721))

(assert (= (or b!4580575 b!4580574) bm!319723))

(assert (= (and d!1434366 res!1913816) b!4580573))

(assert (= (and b!4580573 res!1913814) b!4580572))

(declare-fun m!5391031 () Bool)

(assert (=> b!4580576 m!5391031))

(declare-fun m!5391033 () Bool)

(assert (=> d!1434366 m!5391033))

(declare-fun m!5391035 () Bool)

(assert (=> d!1434366 m!5391035))

(declare-fun m!5391037 () Bool)

(assert (=> bm!319721 m!5391037))

(assert (=> bm!319723 m!5390497))

(declare-fun m!5391039 () Bool)

(assert (=> bm!319723 m!5391039))

(declare-fun m!5391041 () Bool)

(assert (=> b!4580574 m!5391041))

(declare-fun m!5391043 () Bool)

(assert (=> b!4580574 m!5391043))

(declare-fun m!5391045 () Bool)

(assert (=> b!4580574 m!5391045))

(assert (=> b!4580574 m!5391031))

(declare-fun m!5391047 () Bool)

(assert (=> b!4580574 m!5391047))

(declare-fun m!5391049 () Bool)

(assert (=> b!4580574 m!5391049))

(declare-fun m!5391051 () Bool)

(assert (=> b!4580574 m!5391051))

(declare-fun m!5391053 () Bool)

(assert (=> b!4580574 m!5391053))

(assert (=> b!4580574 m!5390497))

(assert (=> b!4580574 m!5391041))

(declare-fun m!5391055 () Bool)

(assert (=> b!4580574 m!5391055))

(declare-fun m!5391057 () Bool)

(assert (=> b!4580574 m!5391057))

(assert (=> b!4580574 m!5391031))

(assert (=> b!4580574 m!5390497))

(declare-fun m!5391059 () Bool)

(assert (=> b!4580574 m!5391059))

(declare-fun m!5391061 () Bool)

(assert (=> b!4580572 m!5391061))

(declare-fun m!5391063 () Bool)

(assert (=> b!4580573 m!5391063))

(declare-fun m!5391065 () Bool)

(assert (=> bm!319722 m!5391065))

(assert (=> b!4580292 d!1434366))

(declare-fun bs!972325 () Bool)

(declare-fun d!1434368 () Bool)

(assert (= bs!972325 (and d!1434368 d!1434210)))

(declare-fun lambda!183204 () Int)

(assert (=> bs!972325 (= lambda!183204 lambda!183163)))

(declare-fun bs!972326 () Bool)

(assert (= bs!972326 (and d!1434368 d!1434168)))

(assert (=> bs!972326 (= lambda!183204 lambda!183155)))

(declare-fun bs!972327 () Bool)

(assert (= bs!972327 (and d!1434368 d!1434246)))

(assert (=> bs!972327 (= lambda!183204 lambda!183174)))

(declare-fun bs!972328 () Bool)

(assert (= bs!972328 (and d!1434368 start!456028)))

(assert (=> bs!972328 (= lambda!183204 lambda!183041)))

(declare-fun bs!972329 () Bool)

(assert (= bs!972329 (and d!1434368 d!1434056)))

(assert (=> bs!972329 (= lambda!183204 lambda!183049)))

(declare-fun bs!972330 () Bool)

(assert (= bs!972330 (and d!1434368 d!1434258)))

(assert (=> bs!972330 (not (= lambda!183204 lambda!183181))))

(declare-fun bs!972331 () Bool)

(assert (= bs!972331 (and d!1434368 d!1434244)))

(assert (=> bs!972331 (= lambda!183204 lambda!183171)))

(declare-fun bs!972332 () Bool)

(assert (= bs!972332 (and d!1434368 d!1434340)))

(assert (=> bs!972332 (= lambda!183204 lambda!183194)))

(declare-fun bs!972333 () Bool)

(assert (= bs!972333 (and d!1434368 b!4579991)))

(assert (=> bs!972333 (not (= lambda!183204 lambda!183042))))

(declare-fun bs!972334 () Bool)

(assert (= bs!972334 (and d!1434368 d!1434250)))

(assert (=> bs!972334 (= lambda!183204 lambda!183175)))

(declare-fun bs!972335 () Bool)

(assert (= bs!972335 (and d!1434368 d!1434134)))

(assert (=> bs!972335 (= lambda!183204 lambda!183144)))

(declare-fun bs!972336 () Bool)

(assert (= bs!972336 (and d!1434368 d!1434136)))

(assert (=> bs!972336 (= lambda!183204 lambda!183150)))

(declare-fun bs!972337 () Bool)

(assert (= bs!972337 (and d!1434368 d!1434174)))

(assert (=> bs!972337 (= lambda!183204 lambda!183156)))

(declare-fun bs!972338 () Bool)

(assert (= bs!972338 (and d!1434368 d!1434144)))

(assert (=> bs!972338 (= lambda!183204 lambda!183154)))

(declare-fun bs!972339 () Bool)

(assert (= bs!972339 (and d!1434368 d!1434230)))

(assert (=> bs!972339 (= lambda!183204 lambda!183170)))

(declare-fun lt!1745805 () ListMap!3813)

(assert (=> d!1434368 (invariantList!1097 (toList!4552 lt!1745805))))

(declare-fun e!2856408 () ListMap!3813)

(assert (=> d!1434368 (= lt!1745805 e!2856408)))

(declare-fun c!783964 () Bool)

(assert (=> d!1434368 (= c!783964 ((_ is Cons!50951) (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))))

(assert (=> d!1434368 (forall!10500 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))) lambda!183204)))

(assert (=> d!1434368 (= (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) lt!1745805)))

(declare-fun b!4580577 () Bool)

(assert (=> b!4580577 (= e!2856408 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))))))

(declare-fun b!4580578 () Bool)

(assert (=> b!4580578 (= e!2856408 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434368 c!783964) b!4580577))

(assert (= (and d!1434368 (not c!783964)) b!4580578))

(declare-fun m!5391067 () Bool)

(assert (=> d!1434368 m!5391067))

(declare-fun m!5391069 () Bool)

(assert (=> d!1434368 m!5391069))

(declare-fun m!5391071 () Bool)

(assert (=> b!4580577 m!5391071))

(assert (=> b!4580577 m!5391071))

(declare-fun m!5391073 () Bool)

(assert (=> b!4580577 m!5391073))

(assert (=> b!4580292 d!1434368))

(declare-fun d!1434370 () Bool)

(assert (=> d!1434370 (isDefined!8596 (getValueByKey!1253 (toList!4551 lm!1477) lt!1745221))))

(declare-fun lt!1745806 () Unit!105525)

(assert (=> d!1434370 (= lt!1745806 (choose!30535 (toList!4551 lm!1477) lt!1745221))))

(declare-fun e!2856409 () Bool)

(assert (=> d!1434370 e!2856409))

(declare-fun res!1913817 () Bool)

(assert (=> d!1434370 (=> (not res!1913817) (not e!2856409))))

(assert (=> d!1434370 (= res!1913817 (isStrictlySorted!512 (toList!4551 lm!1477)))))

(assert (=> d!1434370 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (toList!4551 lm!1477) lt!1745221) lt!1745806)))

(declare-fun b!4580579 () Bool)

(assert (=> b!4580579 (= e!2856409 (containsKey!2056 (toList!4551 lm!1477) lt!1745221))))

(assert (= (and d!1434370 res!1913817) b!4580579))

(assert (=> d!1434370 m!5390681))

(assert (=> d!1434370 m!5390681))

(assert (=> d!1434370 m!5390683))

(declare-fun m!5391075 () Bool)

(assert (=> d!1434370 m!5391075))

(assert (=> d!1434370 m!5390631))

(assert (=> b!4580579 m!5390677))

(assert (=> b!4580371 d!1434370))

(declare-fun d!1434372 () Bool)

(assert (=> d!1434372 (= (isDefined!8596 (getValueByKey!1253 (toList!4551 lm!1477) lt!1745221)) (not (isEmpty!28821 (getValueByKey!1253 (toList!4551 lm!1477) lt!1745221))))))

(declare-fun bs!972340 () Bool)

(assert (= bs!972340 d!1434372))

(assert (=> bs!972340 m!5390681))

(declare-fun m!5391077 () Bool)

(assert (=> bs!972340 m!5391077))

(assert (=> b!4580371 d!1434372))

(declare-fun d!1434374 () Bool)

(declare-fun c!783965 () Bool)

(assert (=> d!1434374 (= c!783965 (and ((_ is Cons!50951) (toList!4551 lm!1477)) (= (_1!29056 (h!56886 (toList!4551 lm!1477))) lt!1745221)))))

(declare-fun e!2856410 () Option!11327)

(assert (=> d!1434374 (= (getValueByKey!1253 (toList!4551 lm!1477) lt!1745221) e!2856410)))

(declare-fun b!4580583 () Bool)

(declare-fun e!2856411 () Option!11327)

(assert (=> b!4580583 (= e!2856411 None!11326)))

(declare-fun b!4580582 () Bool)

(assert (=> b!4580582 (= e!2856411 (getValueByKey!1253 (t!358065 (toList!4551 lm!1477)) lt!1745221))))

(declare-fun b!4580580 () Bool)

(assert (=> b!4580580 (= e!2856410 (Some!11326 (_2!29056 (h!56886 (toList!4551 lm!1477)))))))

(declare-fun b!4580581 () Bool)

(assert (=> b!4580581 (= e!2856410 e!2856411)))

(declare-fun c!783966 () Bool)

(assert (=> b!4580581 (= c!783966 (and ((_ is Cons!50951) (toList!4551 lm!1477)) (not (= (_1!29056 (h!56886 (toList!4551 lm!1477))) lt!1745221))))))

(assert (= (and d!1434374 c!783965) b!4580580))

(assert (= (and d!1434374 (not c!783965)) b!4580581))

(assert (= (and b!4580581 c!783966) b!4580582))

(assert (= (and b!4580581 (not c!783966)) b!4580583))

(declare-fun m!5391079 () Bool)

(assert (=> b!4580582 m!5391079))

(assert (=> b!4580371 d!1434374))

(declare-fun d!1434376 () Bool)

(assert (=> d!1434376 (= (invariantList!1097 (toList!4552 lt!1745715)) (noDuplicatedKeys!306 (toList!4552 lt!1745715)))))

(declare-fun bs!972341 () Bool)

(assert (= bs!972341 d!1434376))

(declare-fun m!5391081 () Bool)

(assert (=> bs!972341 m!5391081))

(assert (=> d!1434250 d!1434376))

(declare-fun d!1434378 () Bool)

(declare-fun res!1913818 () Bool)

(declare-fun e!2856412 () Bool)

(assert (=> d!1434378 (=> res!1913818 e!2856412)))

(assert (=> d!1434378 (= res!1913818 ((_ is Nil!50951) (t!358065 (toList!4551 lm!1477))))))

(assert (=> d!1434378 (= (forall!10500 (t!358065 (toList!4551 lm!1477)) lambda!183175) e!2856412)))

(declare-fun b!4580584 () Bool)

(declare-fun e!2856413 () Bool)

(assert (=> b!4580584 (= e!2856412 e!2856413)))

(declare-fun res!1913819 () Bool)

(assert (=> b!4580584 (=> (not res!1913819) (not e!2856413))))

(assert (=> b!4580584 (= res!1913819 (dynLambda!21335 lambda!183175 (h!56886 (t!358065 (toList!4551 lm!1477)))))))

(declare-fun b!4580585 () Bool)

(assert (=> b!4580585 (= e!2856413 (forall!10500 (t!358065 (t!358065 (toList!4551 lm!1477))) lambda!183175))))

(assert (= (and d!1434378 (not res!1913818)) b!4580584))

(assert (= (and b!4580584 res!1913819) b!4580585))

(declare-fun b_lambda!166049 () Bool)

(assert (=> (not b_lambda!166049) (not b!4580584)))

(declare-fun m!5391083 () Bool)

(assert (=> b!4580584 m!5391083))

(declare-fun m!5391085 () Bool)

(assert (=> b!4580585 m!5391085))

(assert (=> d!1434250 d!1434378))

(declare-fun d!1434380 () Bool)

(declare-fun choose!30536 (Hashable!5667 K!12320) (_ BitVec 64))

(assert (=> d!1434380 (= (hash!3122 hashF!1107 key!3287) (choose!30536 hashF!1107 key!3287))))

(declare-fun bs!972342 () Bool)

(assert (= bs!972342 d!1434380))

(declare-fun m!5391087 () Bool)

(assert (=> bs!972342 m!5391087))

(assert (=> d!1434200 d!1434380))

(declare-fun d!1434382 () Bool)

(declare-fun res!1913820 () Bool)

(declare-fun e!2856414 () Bool)

(assert (=> d!1434382 (=> res!1913820 e!2856414)))

(assert (=> d!1434382 (= res!1913820 ((_ is Nil!50950) (ite c!783916 (toList!4552 lt!1745232) (_2!29056 lt!1745216))))))

(assert (=> d!1434382 (= (forall!10502 (ite c!783916 (toList!4552 lt!1745232) (_2!29056 lt!1745216)) (ite c!783916 lambda!183157 lambda!183159)) e!2856414)))

(declare-fun b!4580586 () Bool)

(declare-fun e!2856415 () Bool)

(assert (=> b!4580586 (= e!2856414 e!2856415)))

(declare-fun res!1913821 () Bool)

(assert (=> b!4580586 (=> (not res!1913821) (not e!2856415))))

(assert (=> b!4580586 (= res!1913821 (dynLambda!21336 (ite c!783916 lambda!183157 lambda!183159) (h!56885 (ite c!783916 (toList!4552 lt!1745232) (_2!29056 lt!1745216)))))))

(declare-fun b!4580587 () Bool)

(assert (=> b!4580587 (= e!2856415 (forall!10502 (t!358064 (ite c!783916 (toList!4552 lt!1745232) (_2!29056 lt!1745216))) (ite c!783916 lambda!183157 lambda!183159)))))

(assert (= (and d!1434382 (not res!1913820)) b!4580586))

(assert (= (and b!4580586 res!1913821) b!4580587))

(declare-fun b_lambda!166051 () Bool)

(assert (=> (not b_lambda!166051) (not b!4580586)))

(declare-fun m!5391089 () Bool)

(assert (=> b!4580586 m!5391089))

(declare-fun m!5391091 () Bool)

(assert (=> b!4580587 m!5391091))

(assert (=> bm!319710 d!1434382))

(assert (=> d!1434044 d!1434322))

(declare-fun d!1434384 () Bool)

(declare-fun res!1913824 () Bool)

(declare-fun e!2856416 () Bool)

(assert (=> d!1434384 (=> res!1913824 e!2856416)))

(declare-fun e!2856417 () Bool)

(assert (=> d!1434384 (= res!1913824 e!2856417)))

(declare-fun res!1913823 () Bool)

(assert (=> d!1434384 (=> (not res!1913823) (not e!2856417))))

(assert (=> d!1434384 (= res!1913823 ((_ is Cons!50951) (t!358065 (toList!4551 lt!1745235))))))

(assert (=> d!1434384 (= (containsKeyBiggerList!242 (t!358065 (toList!4551 lt!1745235)) key!3287) e!2856416)))

(declare-fun b!4580588 () Bool)

(assert (=> b!4580588 (= e!2856417 (containsKey!2054 (_2!29056 (h!56886 (t!358065 (toList!4551 lt!1745235)))) key!3287))))

(declare-fun b!4580589 () Bool)

(declare-fun e!2856418 () Bool)

(assert (=> b!4580589 (= e!2856416 e!2856418)))

(declare-fun res!1913822 () Bool)

(assert (=> b!4580589 (=> (not res!1913822) (not e!2856418))))

(assert (=> b!4580589 (= res!1913822 ((_ is Cons!50951) (t!358065 (toList!4551 lt!1745235))))))

(declare-fun b!4580590 () Bool)

(assert (=> b!4580590 (= e!2856418 (containsKeyBiggerList!242 (t!358065 (t!358065 (toList!4551 lt!1745235))) key!3287))))

(assert (= (and d!1434384 res!1913823) b!4580588))

(assert (= (and d!1434384 (not res!1913824)) b!4580589))

(assert (= (and b!4580589 res!1913822) b!4580590))

(declare-fun m!5391093 () Bool)

(assert (=> b!4580588 m!5391093))

(declare-fun m!5391095 () Bool)

(assert (=> b!4580590 m!5391095))

(assert (=> b!4580356 d!1434384))

(declare-fun d!1434386 () Bool)

(assert (=> d!1434386 (= (get!16816 (getValueByKey!1253 (toList!4551 lm!1477) hash!344)) (v!45206 (getValueByKey!1253 (toList!4551 lm!1477) hash!344)))))

(assert (=> d!1434234 d!1434386))

(declare-fun d!1434388 () Bool)

(declare-fun c!783967 () Bool)

(assert (=> d!1434388 (= c!783967 (and ((_ is Cons!50951) (toList!4551 lm!1477)) (= (_1!29056 (h!56886 (toList!4551 lm!1477))) hash!344)))))

(declare-fun e!2856419 () Option!11327)

(assert (=> d!1434388 (= (getValueByKey!1253 (toList!4551 lm!1477) hash!344) e!2856419)))

(declare-fun b!4580594 () Bool)

(declare-fun e!2856420 () Option!11327)

(assert (=> b!4580594 (= e!2856420 None!11326)))

(declare-fun b!4580593 () Bool)

(assert (=> b!4580593 (= e!2856420 (getValueByKey!1253 (t!358065 (toList!4551 lm!1477)) hash!344))))

(declare-fun b!4580591 () Bool)

(assert (=> b!4580591 (= e!2856419 (Some!11326 (_2!29056 (h!56886 (toList!4551 lm!1477)))))))

(declare-fun b!4580592 () Bool)

(assert (=> b!4580592 (= e!2856419 e!2856420)))

(declare-fun c!783968 () Bool)

(assert (=> b!4580592 (= c!783968 (and ((_ is Cons!50951) (toList!4551 lm!1477)) (not (= (_1!29056 (h!56886 (toList!4551 lm!1477))) hash!344))))))

(assert (= (and d!1434388 c!783967) b!4580591))

(assert (= (and d!1434388 (not c!783967)) b!4580592))

(assert (= (and b!4580592 c!783968) b!4580593))

(assert (= (and b!4580592 (not c!783968)) b!4580594))

(declare-fun m!5391097 () Bool)

(assert (=> b!4580593 m!5391097))

(assert (=> d!1434234 d!1434388))

(declare-fun d!1434390 () Bool)

(declare-fun lt!1745807 () Bool)

(assert (=> d!1434390 (= lt!1745807 (select (content!8587 (keys!17800 lt!1745232)) key!3287))))

(declare-fun e!2856421 () Bool)

(assert (=> d!1434390 (= lt!1745807 e!2856421)))

(declare-fun res!1913825 () Bool)

(assert (=> d!1434390 (=> (not res!1913825) (not e!2856421))))

(assert (=> d!1434390 (= res!1913825 ((_ is Cons!50953) (keys!17800 lt!1745232)))))

(assert (=> d!1434390 (= (contains!13849 (keys!17800 lt!1745232) key!3287) lt!1745807)))

(declare-fun b!4580595 () Bool)

(declare-fun e!2856422 () Bool)

(assert (=> b!4580595 (= e!2856421 e!2856422)))

(declare-fun res!1913826 () Bool)

(assert (=> b!4580595 (=> res!1913826 e!2856422)))

(assert (=> b!4580595 (= res!1913826 (= (h!56890 (keys!17800 lt!1745232)) key!3287))))

(declare-fun b!4580596 () Bool)

(assert (=> b!4580596 (= e!2856422 (contains!13849 (t!358067 (keys!17800 lt!1745232)) key!3287))))

(assert (= (and d!1434390 res!1913825) b!4580595))

(assert (= (and b!4580595 (not res!1913826)) b!4580596))

(assert (=> d!1434390 m!5390473))

(assert (=> d!1434390 m!5390475))

(declare-fun m!5391099 () Bool)

(assert (=> d!1434390 m!5391099))

(declare-fun m!5391101 () Bool)

(assert (=> b!4580596 m!5391101))

(assert (=> b!4580419 d!1434390))

(assert (=> b!4580419 d!1434326))

(declare-fun d!1434392 () Bool)

(declare-fun c!783969 () Bool)

(assert (=> d!1434392 (= c!783969 ((_ is Nil!50951) (t!358065 (toList!4551 lm!1477))))))

(declare-fun e!2856423 () (InoxSet tuple2!51524))

(assert (=> d!1434392 (= (content!8588 (t!358065 (toList!4551 lm!1477))) e!2856423)))

(declare-fun b!4580597 () Bool)

(assert (=> b!4580597 (= e!2856423 ((as const (Array tuple2!51524 Bool)) false))))

(declare-fun b!4580598 () Bool)

(assert (=> b!4580598 (= e!2856423 ((_ map or) (store ((as const (Array tuple2!51524 Bool)) false) (h!56886 (t!358065 (toList!4551 lm!1477))) true) (content!8588 (t!358065 (t!358065 (toList!4551 lm!1477))))))))

(assert (= (and d!1434392 c!783969) b!4580597))

(assert (= (and d!1434392 (not c!783969)) b!4580598))

(declare-fun m!5391103 () Bool)

(assert (=> b!4580598 m!5391103))

(assert (=> b!4580598 m!5390855))

(assert (=> d!1434254 d!1434392))

(declare-fun d!1434394 () Bool)

(declare-fun res!1913827 () Bool)

(declare-fun e!2856424 () Bool)

(assert (=> d!1434394 (=> res!1913827 e!2856424)))

(assert (=> d!1434394 (= res!1913827 (and ((_ is Cons!50950) (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))) (= (_1!29055 (h!56885 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))))) key!3287)))))

(assert (=> d!1434394 (= (containsKey!2054 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477)))) key!3287) e!2856424)))

(declare-fun b!4580599 () Bool)

(declare-fun e!2856425 () Bool)

(assert (=> b!4580599 (= e!2856424 e!2856425)))

(declare-fun res!1913828 () Bool)

(assert (=> b!4580599 (=> (not res!1913828) (not e!2856425))))

(assert (=> b!4580599 (= res!1913828 ((_ is Cons!50950) (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))))))

(declare-fun b!4580600 () Bool)

(assert (=> b!4580600 (= e!2856425 (containsKey!2054 (t!358064 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))) key!3287))))

(assert (= (and d!1434394 (not res!1913827)) b!4580599))

(assert (= (and b!4580599 res!1913828) b!4580600))

(declare-fun m!5391105 () Bool)

(assert (=> b!4580600 m!5391105))

(assert (=> b!4580351 d!1434394))

(declare-fun d!1434396 () Bool)

(assert (=> d!1434396 (= (invariantList!1097 (toList!4552 lt!1745618)) (noDuplicatedKeys!306 (toList!4552 lt!1745618)))))

(declare-fun bs!972343 () Bool)

(assert (= bs!972343 d!1434396))

(declare-fun m!5391107 () Bool)

(assert (=> bs!972343 m!5391107))

(assert (=> d!1434174 d!1434396))

(declare-fun d!1434398 () Bool)

(declare-fun res!1913829 () Bool)

(declare-fun e!2856426 () Bool)

(assert (=> d!1434398 (=> res!1913829 e!2856426)))

(assert (=> d!1434398 (= res!1913829 ((_ is Nil!50951) (toList!4551 (+!1708 lt!1745235 lt!1745216))))))

(assert (=> d!1434398 (= (forall!10500 (toList!4551 (+!1708 lt!1745235 lt!1745216)) lambda!183156) e!2856426)))

(declare-fun b!4580601 () Bool)

(declare-fun e!2856427 () Bool)

(assert (=> b!4580601 (= e!2856426 e!2856427)))

(declare-fun res!1913830 () Bool)

(assert (=> b!4580601 (=> (not res!1913830) (not e!2856427))))

(assert (=> b!4580601 (= res!1913830 (dynLambda!21335 lambda!183156 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))))))

(declare-fun b!4580602 () Bool)

(assert (=> b!4580602 (= e!2856427 (forall!10500 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))) lambda!183156))))

(assert (= (and d!1434398 (not res!1913829)) b!4580601))

(assert (= (and b!4580601 res!1913830) b!4580602))

(declare-fun b_lambda!166053 () Bool)

(assert (=> (not b_lambda!166053) (not b!4580601)))

(declare-fun m!5391109 () Bool)

(assert (=> b!4580601 m!5391109))

(declare-fun m!5391111 () Bool)

(assert (=> b!4580602 m!5391111))

(assert (=> d!1434174 d!1434398))

(declare-fun d!1434400 () Bool)

(declare-fun lt!1745808 () Bool)

(assert (=> d!1434400 (= lt!1745808 (select (content!8587 e!2856284) key!3287))))

(declare-fun e!2856428 () Bool)

(assert (=> d!1434400 (= lt!1745808 e!2856428)))

(declare-fun res!1913831 () Bool)

(assert (=> d!1434400 (=> (not res!1913831) (not e!2856428))))

(assert (=> d!1434400 (= res!1913831 ((_ is Cons!50953) e!2856284))))

(assert (=> d!1434400 (= (contains!13849 e!2856284 key!3287) lt!1745808)))

(declare-fun b!4580603 () Bool)

(declare-fun e!2856429 () Bool)

(assert (=> b!4580603 (= e!2856428 e!2856429)))

(declare-fun res!1913832 () Bool)

(assert (=> b!4580603 (=> res!1913832 e!2856429)))

(assert (=> b!4580603 (= res!1913832 (= (h!56890 e!2856284) key!3287))))

(declare-fun b!4580604 () Bool)

(assert (=> b!4580604 (= e!2856429 (contains!13849 (t!358067 e!2856284) key!3287))))

(assert (= (and d!1434400 res!1913831) b!4580603))

(assert (= (and b!4580603 (not res!1913832)) b!4580604))

(declare-fun m!5391113 () Bool)

(assert (=> d!1434400 m!5391113))

(declare-fun m!5391115 () Bool)

(assert (=> d!1434400 m!5391115))

(declare-fun m!5391117 () Bool)

(assert (=> b!4580604 m!5391117))

(assert (=> bm!319716 d!1434400))

(declare-fun d!1434402 () Bool)

(declare-fun res!1913833 () Bool)

(declare-fun e!2856430 () Bool)

(assert (=> d!1434402 (=> res!1913833 e!2856430)))

(assert (=> d!1434402 (= res!1913833 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434402 (= (forall!10502 (_2!29056 lt!1745216) lambda!183167) e!2856430)))

(declare-fun b!4580605 () Bool)

(declare-fun e!2856431 () Bool)

(assert (=> b!4580605 (= e!2856430 e!2856431)))

(declare-fun res!1913834 () Bool)

(assert (=> b!4580605 (=> (not res!1913834) (not e!2856431))))

(assert (=> b!4580605 (= res!1913834 (dynLambda!21336 lambda!183167 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun b!4580606 () Bool)

(assert (=> b!4580606 (= e!2856431 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183167))))

(assert (= (and d!1434402 (not res!1913833)) b!4580605))

(assert (= (and b!4580605 res!1913834) b!4580606))

(declare-fun b_lambda!166055 () Bool)

(assert (=> (not b_lambda!166055) (not b!4580605)))

(declare-fun m!5391119 () Bool)

(assert (=> b!4580605 m!5391119))

(declare-fun m!5391121 () Bool)

(assert (=> b!4580606 m!5391121))

(assert (=> d!1434224 d!1434402))

(assert (=> d!1434224 d!1434216))

(declare-fun d!1434404 () Bool)

(assert (=> d!1434404 (= (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287)) (not (isEmpty!28820 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287))))))

(declare-fun bs!972344 () Bool)

(assert (= bs!972344 d!1434404))

(assert (=> bs!972344 m!5390763))

(declare-fun m!5391123 () Bool)

(assert (=> bs!972344 m!5391123))

(assert (=> b!4580412 d!1434404))

(declare-fun b!4580608 () Bool)

(declare-fun e!2856432 () Option!11328)

(declare-fun e!2856433 () Option!11328)

(assert (=> b!4580608 (= e!2856432 e!2856433)))

(declare-fun c!783971 () Bool)

(assert (=> b!4580608 (= c!783971 (and ((_ is Cons!50950) (toList!4552 lt!1745232)) (not (= (_1!29055 (h!56885 (toList!4552 lt!1745232))) key!3287))))))

(declare-fun b!4580610 () Bool)

(assert (=> b!4580610 (= e!2856433 None!11327)))

(declare-fun b!4580607 () Bool)

(assert (=> b!4580607 (= e!2856432 (Some!11327 (_2!29055 (h!56885 (toList!4552 lt!1745232)))))))

(declare-fun b!4580609 () Bool)

(assert (=> b!4580609 (= e!2856433 (getValueByKey!1254 (t!358064 (toList!4552 lt!1745232)) key!3287))))

(declare-fun d!1434406 () Bool)

(declare-fun c!783970 () Bool)

(assert (=> d!1434406 (= c!783970 (and ((_ is Cons!50950) (toList!4552 lt!1745232)) (= (_1!29055 (h!56885 (toList!4552 lt!1745232))) key!3287)))))

(assert (=> d!1434406 (= (getValueByKey!1254 (toList!4552 lt!1745232) key!3287) e!2856432)))

(assert (= (and d!1434406 c!783970) b!4580607))

(assert (= (and d!1434406 (not c!783970)) b!4580608))

(assert (= (and b!4580608 c!783971) b!4580609))

(assert (= (and b!4580608 (not c!783971)) b!4580610))

(declare-fun m!5391125 () Bool)

(assert (=> b!4580609 m!5391125))

(assert (=> b!4580412 d!1434406))

(declare-fun d!1434408 () Bool)

(declare-fun lt!1745809 () Bool)

(assert (=> d!1434408 (= lt!1745809 (select (content!8588 (toList!4551 lm!1477)) (tuple2!51525 hash!344 lt!1745226)))))

(declare-fun e!2856434 () Bool)

(assert (=> d!1434408 (= lt!1745809 e!2856434)))

(declare-fun res!1913835 () Bool)

(assert (=> d!1434408 (=> (not res!1913835) (not e!2856434))))

(assert (=> d!1434408 (= res!1913835 ((_ is Cons!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434408 (= (contains!13845 (toList!4551 lm!1477) (tuple2!51525 hash!344 lt!1745226)) lt!1745809)))

(declare-fun b!4580611 () Bool)

(declare-fun e!2856435 () Bool)

(assert (=> b!4580611 (= e!2856434 e!2856435)))

(declare-fun res!1913836 () Bool)

(assert (=> b!4580611 (=> res!1913836 e!2856435)))

(assert (=> b!4580611 (= res!1913836 (= (h!56886 (toList!4551 lm!1477)) (tuple2!51525 hash!344 lt!1745226)))))

(declare-fun b!4580612 () Bool)

(assert (=> b!4580612 (= e!2856435 (contains!13845 (t!358065 (toList!4551 lm!1477)) (tuple2!51525 hash!344 lt!1745226)))))

(assert (= (and d!1434408 res!1913835) b!4580611))

(assert (= (and b!4580611 (not res!1913836)) b!4580612))

(assert (=> d!1434408 m!5390699))

(declare-fun m!5391127 () Bool)

(assert (=> d!1434408 m!5391127))

(declare-fun m!5391129 () Bool)

(assert (=> b!4580612 m!5391129))

(assert (=> d!1434238 d!1434408))

(declare-fun d!1434410 () Bool)

(assert (=> d!1434410 (contains!13845 (toList!4551 lm!1477) (tuple2!51525 hash!344 lt!1745226))))

(assert (=> d!1434410 true))

(declare-fun _$14!1385 () Unit!105525)

(assert (=> d!1434410 (= (choose!30528 (toList!4551 lm!1477) hash!344 lt!1745226) _$14!1385)))

(declare-fun bs!972345 () Bool)

(assert (= bs!972345 d!1434410))

(assert (=> bs!972345 m!5390703))

(assert (=> d!1434238 d!1434410))

(declare-fun d!1434412 () Bool)

(declare-fun res!1913841 () Bool)

(declare-fun e!2856440 () Bool)

(assert (=> d!1434412 (=> res!1913841 e!2856440)))

(assert (=> d!1434412 (= res!1913841 (or ((_ is Nil!50951) (toList!4551 lm!1477)) ((_ is Nil!50951) (t!358065 (toList!4551 lm!1477)))))))

(assert (=> d!1434412 (= (isStrictlySorted!512 (toList!4551 lm!1477)) e!2856440)))

(declare-fun b!4580617 () Bool)

(declare-fun e!2856441 () Bool)

(assert (=> b!4580617 (= e!2856440 e!2856441)))

(declare-fun res!1913842 () Bool)

(assert (=> b!4580617 (=> (not res!1913842) (not e!2856441))))

(assert (=> b!4580617 (= res!1913842 (bvslt (_1!29056 (h!56886 (toList!4551 lm!1477))) (_1!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))))))

(declare-fun b!4580618 () Bool)

(assert (=> b!4580618 (= e!2856441 (isStrictlySorted!512 (t!358065 (toList!4551 lm!1477))))))

(assert (= (and d!1434412 (not res!1913841)) b!4580617))

(assert (= (and b!4580617 res!1913842) b!4580618))

(declare-fun m!5391131 () Bool)

(assert (=> b!4580618 m!5391131))

(assert (=> d!1434238 d!1434412))

(assert (=> d!1434202 d!1434296))

(declare-fun d!1434414 () Bool)

(declare-fun c!783972 () Bool)

(assert (=> d!1434414 (= c!783972 ((_ is Nil!50950) (toList!4552 (-!480 lt!1745243 key!3287))))))

(declare-fun e!2856442 () (InoxSet tuple2!51522))

(assert (=> d!1434414 (= (content!8586 (toList!4552 (-!480 lt!1745243 key!3287))) e!2856442)))

(declare-fun b!4580619 () Bool)

(assert (=> b!4580619 (= e!2856442 ((as const (Array tuple2!51522 Bool)) false))))

(declare-fun b!4580620 () Bool)

(assert (=> b!4580620 (= e!2856442 ((_ map or) (store ((as const (Array tuple2!51522 Bool)) false) (h!56885 (toList!4552 (-!480 lt!1745243 key!3287))) true) (content!8586 (t!358064 (toList!4552 (-!480 lt!1745243 key!3287))))))))

(assert (= (and d!1434414 c!783972) b!4580619))

(assert (= (and d!1434414 (not c!783972)) b!4580620))

(declare-fun m!5391133 () Bool)

(assert (=> b!4580620 m!5391133))

(declare-fun m!5391135 () Bool)

(assert (=> b!4580620 m!5391135))

(assert (=> d!1434202 d!1434414))

(declare-fun d!1434416 () Bool)

(declare-fun res!1913843 () Bool)

(declare-fun e!2856443 () Bool)

(assert (=> d!1434416 (=> res!1913843 e!2856443)))

(assert (=> d!1434416 (= res!1913843 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434416 (= (forall!10502 (_2!29056 lt!1745216) lambda!183143) e!2856443)))

(declare-fun b!4580621 () Bool)

(declare-fun e!2856444 () Bool)

(assert (=> b!4580621 (= e!2856443 e!2856444)))

(declare-fun res!1913844 () Bool)

(assert (=> b!4580621 (=> (not res!1913844) (not e!2856444))))

(assert (=> b!4580621 (= res!1913844 (dynLambda!21336 lambda!183143 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun b!4580622 () Bool)

(assert (=> b!4580622 (= e!2856444 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183143))))

(assert (= (and d!1434416 (not res!1913843)) b!4580621))

(assert (= (and b!4580621 res!1913844) b!4580622))

(declare-fun b_lambda!166057 () Bool)

(assert (=> (not b_lambda!166057) (not b!4580621)))

(declare-fun m!5391137 () Bool)

(assert (=> b!4580621 m!5391137))

(declare-fun m!5391139 () Bool)

(assert (=> b!4580622 m!5391139))

(assert (=> d!1434060 d!1434416))

(assert (=> d!1434060 d!1434216))

(declare-fun d!1434418 () Bool)

(assert (=> d!1434418 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287))))

(declare-fun lt!1745810 () Unit!105525)

(assert (=> d!1434418 (= lt!1745810 (choose!30532 (toList!4552 lt!1745232) key!3287))))

(assert (=> d!1434418 (invariantList!1097 (toList!4552 lt!1745232))))

(assert (=> d!1434418 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745232) key!3287) lt!1745810)))

(declare-fun bs!972346 () Bool)

(assert (= bs!972346 d!1434418))

(assert (=> bs!972346 m!5390763))

(assert (=> bs!972346 m!5390763))

(assert (=> bs!972346 m!5390765))

(declare-fun m!5391141 () Bool)

(assert (=> bs!972346 m!5391141))

(assert (=> bs!972346 m!5390875))

(assert (=> b!4580416 d!1434418))

(assert (=> b!4580416 d!1434404))

(assert (=> b!4580416 d!1434406))

(declare-fun d!1434420 () Bool)

(assert (=> d!1434420 (contains!13849 (getKeysList!544 (toList!4552 lt!1745232)) key!3287)))

(declare-fun lt!1745811 () Unit!105525)

(assert (=> d!1434420 (= lt!1745811 (choose!30533 (toList!4552 lt!1745232) key!3287))))

(assert (=> d!1434420 (invariantList!1097 (toList!4552 lt!1745232))))

(assert (=> d!1434420 (= (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745232) key!3287) lt!1745811)))

(declare-fun bs!972347 () Bool)

(assert (= bs!972347 d!1434420))

(assert (=> bs!972347 m!5390767))

(assert (=> bs!972347 m!5390767))

(declare-fun m!5391143 () Bool)

(assert (=> bs!972347 m!5391143))

(declare-fun m!5391145 () Bool)

(assert (=> bs!972347 m!5391145))

(assert (=> bs!972347 m!5390875))

(assert (=> b!4580416 d!1434420))

(declare-fun d!1434422 () Bool)

(declare-fun lt!1745812 () Bool)

(assert (=> d!1434422 (= lt!1745812 (select (content!8587 (keys!17800 lt!1745243)) key!3287))))

(declare-fun e!2856445 () Bool)

(assert (=> d!1434422 (= lt!1745812 e!2856445)))

(declare-fun res!1913845 () Bool)

(assert (=> d!1434422 (=> (not res!1913845) (not e!2856445))))

(assert (=> d!1434422 (= res!1913845 ((_ is Cons!50953) (keys!17800 lt!1745243)))))

(assert (=> d!1434422 (= (contains!13849 (keys!17800 lt!1745243) key!3287) lt!1745812)))

(declare-fun b!4580623 () Bool)

(declare-fun e!2856446 () Bool)

(assert (=> b!4580623 (= e!2856445 e!2856446)))

(declare-fun res!1913846 () Bool)

(assert (=> b!4580623 (=> res!1913846 e!2856446)))

(assert (=> b!4580623 (= res!1913846 (= (h!56890 (keys!17800 lt!1745243)) key!3287))))

(declare-fun b!4580624 () Bool)

(assert (=> b!4580624 (= e!2856446 (contains!13849 (t!358067 (keys!17800 lt!1745243)) key!3287))))

(assert (= (and d!1434422 res!1913845) b!4580623))

(assert (= (and b!4580623 (not res!1913846)) b!4580624))

(assert (=> d!1434422 m!5390007))

(assert (=> d!1434422 m!5390609))

(declare-fun m!5391147 () Bool)

(assert (=> d!1434422 m!5391147))

(declare-fun m!5391149 () Bool)

(assert (=> b!4580624 m!5391149))

(assert (=> b!4580114 d!1434422))

(assert (=> b!4580114 d!1434342))

(declare-fun bs!972348 () Bool)

(declare-fun d!1434424 () Bool)

(assert (= bs!972348 (and d!1434424 b!4580368)))

(declare-fun lambda!183205 () Int)

(assert (=> bs!972348 (= (= lt!1745214 lt!1745665) (= lambda!183205 lambda!183166))))

(declare-fun bs!972349 () Bool)

(assert (= bs!972349 (and d!1434424 b!4580305)))

(assert (=> bs!972349 (= (= lt!1745214 lt!1745627) (= lambda!183205 lambda!183159))))

(declare-fun bs!972350 () Bool)

(assert (= bs!972350 (and d!1434424 d!1434224)))

(assert (=> bs!972350 (= (= lt!1745214 lt!1745668) (= lambda!183205 lambda!183167))))

(declare-fun bs!972351 () Bool)

(assert (= bs!972351 (and d!1434424 d!1434338)))

(assert (=> bs!972351 (= (= lt!1745214 lt!1745759) (= lambda!183205 lambda!183193))))

(declare-fun bs!972352 () Bool)

(assert (= bs!972352 (and d!1434424 b!4580257)))

(assert (=> bs!972352 (= (= lt!1745214 lt!1745218) (= lambda!183205 lambda!183141))))

(declare-fun bs!972353 () Bool)

(assert (= bs!972353 (and d!1434424 d!1434184)))

(assert (=> bs!972353 (= (= lt!1745214 lt!1745630) (= lambda!183205 lambda!183160))))

(declare-fun bs!972354 () Bool)

(assert (= bs!972354 (and d!1434424 d!1434344)))

(assert (=> bs!972354 (= (= lt!1745214 lt!1745232) (= lambda!183205 lambda!183199))))

(declare-fun bs!972355 () Bool)

(assert (= bs!972355 (and d!1434424 d!1434256)))

(assert (=> bs!972355 (not (= lambda!183205 lambda!183178))))

(assert (=> bs!972352 (= (= lt!1745214 lt!1745576) (= lambda!183205 lambda!183142))))

(declare-fun bs!972356 () Bool)

(assert (= bs!972356 (and d!1434424 b!4580536)))

(assert (=> bs!972356 (= (= lt!1745214 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183205 lambda!183190))))

(declare-fun bs!972357 () Bool)

(assert (= bs!972357 (and d!1434424 b!4580306)))

(assert (=> bs!972357 (= (= lt!1745214 lt!1745232) (= lambda!183205 lambda!183157))))

(assert (=> bs!972348 (= lambda!183205 lambda!183165)))

(declare-fun bs!972358 () Bool)

(assert (= bs!972358 (and d!1434424 b!4580574)))

(assert (=> bs!972358 (= (= lt!1745214 lt!1745787) (= lambda!183205 lambda!183202))))

(declare-fun bs!972359 () Bool)

(assert (= bs!972359 (and d!1434424 d!1434366)))

(assert (=> bs!972359 (= (= lt!1745214 lt!1745790) (= lambda!183205 lambda!183203))))

(declare-fun bs!972360 () Bool)

(assert (= bs!972360 (and d!1434424 d!1434060)))

(assert (=> bs!972360 (= (= lt!1745214 lt!1745579) (= lambda!183205 lambda!183143))))

(assert (=> bs!972349 (= (= lt!1745214 lt!1745232) (= lambda!183205 lambda!183158))))

(declare-fun bs!972361 () Bool)

(assert (= bs!972361 (and d!1434424 b!4579991)))

(assert (=> bs!972361 (not (= lambda!183205 lambda!183043))))

(declare-fun bs!972362 () Bool)

(assert (= bs!972362 (and d!1434424 b!4580535)))

(assert (=> bs!972362 (= (= lt!1745214 lt!1745756) (= lambda!183205 lambda!183192))))

(declare-fun bs!972363 () Bool)

(assert (= bs!972363 (and d!1434424 b!4580369)))

(assert (=> bs!972363 (= lambda!183205 lambda!183164)))

(declare-fun bs!972364 () Bool)

(assert (= bs!972364 (and d!1434424 b!4580575)))

(assert (=> bs!972364 (= (= lt!1745214 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183205 lambda!183200))))

(assert (=> bs!972362 (= (= lt!1745214 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183205 lambda!183191))))

(assert (=> bs!972358 (= (= lt!1745214 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183205 lambda!183201))))

(declare-fun bs!972365 () Bool)

(assert (= bs!972365 (and d!1434424 b!4580258)))

(assert (=> bs!972365 (= (= lt!1745214 lt!1745218) (= lambda!183205 lambda!183140))))

(assert (=> d!1434424 true))

(assert (=> d!1434424 (forall!10502 (toList!4552 lt!1745214) lambda!183205)))

(declare-fun lt!1745813 () Unit!105525)

(assert (=> d!1434424 (= lt!1745813 (choose!30534 lt!1745214))))

(assert (=> d!1434424 (= (lemmaContainsAllItsOwnKeys!414 lt!1745214) lt!1745813)))

(declare-fun bs!972366 () Bool)

(assert (= bs!972366 d!1434424))

(declare-fun m!5391151 () Bool)

(assert (=> bs!972366 m!5391151))

(declare-fun m!5391153 () Bool)

(assert (=> bs!972366 m!5391153))

(assert (=> bm!319715 d!1434424))

(declare-fun b!4580625 () Bool)

(declare-fun e!2856452 () Unit!105525)

(declare-fun Unit!105636 () Unit!105525)

(assert (=> b!4580625 (= e!2856452 Unit!105636)))

(declare-fun b!4580626 () Bool)

(declare-fun e!2856447 () Bool)

(declare-fun e!2856450 () Bool)

(assert (=> b!4580626 (= e!2856447 e!2856450)))

(declare-fun res!1913848 () Bool)

(assert (=> b!4580626 (=> (not res!1913848) (not e!2856450))))

(assert (=> b!4580626 (= res!1913848 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745627) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4580627 () Bool)

(declare-fun e!2856449 () Unit!105525)

(assert (=> b!4580627 (= e!2856449 e!2856452)))

(declare-fun c!783974 () Bool)

(declare-fun call!319729 () Bool)

(assert (=> b!4580627 (= c!783974 call!319729)))

(declare-fun b!4580628 () Bool)

(assert (=> b!4580628 (= e!2856450 (contains!13849 (keys!17800 lt!1745627) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun b!4580629 () Bool)

(declare-fun e!2856448 () List!51077)

(assert (=> b!4580629 (= e!2856448 (keys!17800 lt!1745627))))

(declare-fun b!4580630 () Bool)

(declare-fun lt!1745817 () Unit!105525)

(assert (=> b!4580630 (= e!2856449 lt!1745817)))

(declare-fun lt!1745815 () Unit!105525)

(assert (=> b!4580630 (= lt!1745815 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745627) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4580630 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745627) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1745820 () Unit!105525)

(assert (=> b!4580630 (= lt!1745820 lt!1745815)))

(assert (=> b!4580630 (= lt!1745817 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745627) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4580630 call!319729))

(declare-fun bm!319724 () Bool)

(assert (=> bm!319724 (= call!319729 (contains!13849 e!2856448 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun c!783973 () Bool)

(declare-fun c!783975 () Bool)

(assert (=> bm!319724 (= c!783973 c!783975)))

(declare-fun d!1434426 () Bool)

(assert (=> d!1434426 e!2856447))

(declare-fun res!1913849 () Bool)

(assert (=> d!1434426 (=> res!1913849 e!2856447)))

(declare-fun e!2856451 () Bool)

(assert (=> d!1434426 (= res!1913849 e!2856451)))

(declare-fun res!1913847 () Bool)

(assert (=> d!1434426 (=> (not res!1913847) (not e!2856451))))

(declare-fun lt!1745816 () Bool)

(assert (=> d!1434426 (= res!1913847 (not lt!1745816))))

(declare-fun lt!1745821 () Bool)

(assert (=> d!1434426 (= lt!1745816 lt!1745821)))

(declare-fun lt!1745814 () Unit!105525)

(assert (=> d!1434426 (= lt!1745814 e!2856449)))

(assert (=> d!1434426 (= c!783975 lt!1745821)))

(assert (=> d!1434426 (= lt!1745821 (containsKey!2057 (toList!4552 lt!1745627) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434426 (= (contains!13846 lt!1745627 (_1!29055 (h!56885 (_2!29056 lt!1745216)))) lt!1745816)))

(declare-fun b!4580631 () Bool)

(assert (=> b!4580631 (= e!2856448 (getKeysList!544 (toList!4552 lt!1745627)))))

(declare-fun b!4580632 () Bool)

(assert (=> b!4580632 false))

(declare-fun lt!1745818 () Unit!105525)

(declare-fun lt!1745819 () Unit!105525)

(assert (=> b!4580632 (= lt!1745818 lt!1745819)))

(assert (=> b!4580632 (containsKey!2057 (toList!4552 lt!1745627) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4580632 (= lt!1745819 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745627) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun Unit!105637 () Unit!105525)

(assert (=> b!4580632 (= e!2856452 Unit!105637)))

(declare-fun b!4580633 () Bool)

(assert (=> b!4580633 (= e!2856451 (not (contains!13849 (keys!17800 lt!1745627) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(assert (= (and d!1434426 c!783975) b!4580630))

(assert (= (and d!1434426 (not c!783975)) b!4580627))

(assert (= (and b!4580627 c!783974) b!4580632))

(assert (= (and b!4580627 (not c!783974)) b!4580625))

(assert (= (or b!4580630 b!4580627) bm!319724))

(assert (= (and bm!319724 c!783973) b!4580631))

(assert (= (and bm!319724 (not c!783973)) b!4580629))

(assert (= (and d!1434426 res!1913847) b!4580633))

(assert (= (and d!1434426 (not res!1913849)) b!4580626))

(assert (= (and b!4580626 res!1913848) b!4580628))

(declare-fun m!5391155 () Bool)

(assert (=> b!4580632 m!5391155))

(declare-fun m!5391157 () Bool)

(assert (=> b!4580632 m!5391157))

(declare-fun m!5391159 () Bool)

(assert (=> b!4580633 m!5391159))

(assert (=> b!4580633 m!5391159))

(declare-fun m!5391161 () Bool)

(assert (=> b!4580633 m!5391161))

(declare-fun m!5391163 () Bool)

(assert (=> b!4580626 m!5391163))

(assert (=> b!4580626 m!5391163))

(declare-fun m!5391165 () Bool)

(assert (=> b!4580626 m!5391165))

(declare-fun m!5391167 () Bool)

(assert (=> b!4580631 m!5391167))

(assert (=> b!4580629 m!5391159))

(declare-fun m!5391169 () Bool)

(assert (=> b!4580630 m!5391169))

(assert (=> b!4580630 m!5391163))

(assert (=> b!4580630 m!5391163))

(assert (=> b!4580630 m!5391165))

(declare-fun m!5391171 () Bool)

(assert (=> b!4580630 m!5391171))

(assert (=> d!1434426 m!5391155))

(declare-fun m!5391173 () Bool)

(assert (=> bm!319724 m!5391173))

(assert (=> b!4580628 m!5391159))

(assert (=> b!4580628 m!5391159))

(assert (=> b!4580628 m!5391161))

(assert (=> b!4580305 d!1434426))

(declare-fun d!1434428 () Bool)

(assert (=> d!1434428 (dynLambda!21336 lambda!183159 (h!56885 (_2!29056 lt!1745216)))))

(declare-fun lt!1745822 () Unit!105525)

(assert (=> d!1434428 (= lt!1745822 (choose!30522 (toList!4552 lt!1745625) lambda!183159 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun e!2856453 () Bool)

(assert (=> d!1434428 e!2856453))

(declare-fun res!1913850 () Bool)

(assert (=> d!1434428 (=> (not res!1913850) (not e!2856453))))

(assert (=> d!1434428 (= res!1913850 (forall!10502 (toList!4552 lt!1745625) lambda!183159))))

(assert (=> d!1434428 (= (forallContained!2765 (toList!4552 lt!1745625) lambda!183159 (h!56885 (_2!29056 lt!1745216))) lt!1745822)))

(declare-fun b!4580634 () Bool)

(assert (=> b!4580634 (= e!2856453 (contains!13851 (toList!4552 lt!1745625) (h!56885 (_2!29056 lt!1745216))))))

(assert (= (and d!1434428 res!1913850) b!4580634))

(declare-fun b_lambda!166059 () Bool)

(assert (=> (not b_lambda!166059) (not d!1434428)))

(declare-fun m!5391175 () Bool)

(assert (=> d!1434428 m!5391175))

(declare-fun m!5391177 () Bool)

(assert (=> d!1434428 m!5391177))

(assert (=> d!1434428 m!5390557))

(declare-fun m!5391179 () Bool)

(assert (=> b!4580634 m!5391179))

(assert (=> b!4580305 d!1434428))

(declare-fun d!1434430 () Bool)

(declare-fun res!1913851 () Bool)

(declare-fun e!2856454 () Bool)

(assert (=> d!1434430 (=> res!1913851 e!2856454)))

(assert (=> d!1434430 (= res!1913851 ((_ is Nil!50950) (toList!4552 lt!1745625)))))

(assert (=> d!1434430 (= (forall!10502 (toList!4552 lt!1745625) lambda!183159) e!2856454)))

(declare-fun b!4580635 () Bool)

(declare-fun e!2856455 () Bool)

(assert (=> b!4580635 (= e!2856454 e!2856455)))

(declare-fun res!1913852 () Bool)

(assert (=> b!4580635 (=> (not res!1913852) (not e!2856455))))

(assert (=> b!4580635 (= res!1913852 (dynLambda!21336 lambda!183159 (h!56885 (toList!4552 lt!1745625))))))

(declare-fun b!4580636 () Bool)

(assert (=> b!4580636 (= e!2856455 (forall!10502 (t!358064 (toList!4552 lt!1745625)) lambda!183159))))

(assert (= (and d!1434430 (not res!1913851)) b!4580635))

(assert (= (and b!4580635 res!1913852) b!4580636))

(declare-fun b_lambda!166061 () Bool)

(assert (=> (not b_lambda!166061) (not b!4580635)))

(declare-fun m!5391181 () Bool)

(assert (=> b!4580635 m!5391181))

(declare-fun m!5391183 () Bool)

(assert (=> b!4580636 m!5391183))

(assert (=> b!4580305 d!1434430))

(declare-fun d!1434432 () Bool)

(declare-fun res!1913853 () Bool)

(declare-fun e!2856456 () Bool)

(assert (=> d!1434432 (=> res!1913853 e!2856456)))

(assert (=> d!1434432 (= res!1913853 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434432 (= (forall!10502 (_2!29056 lt!1745216) lambda!183159) e!2856456)))

(declare-fun b!4580637 () Bool)

(declare-fun e!2856457 () Bool)

(assert (=> b!4580637 (= e!2856456 e!2856457)))

(declare-fun res!1913854 () Bool)

(assert (=> b!4580637 (=> (not res!1913854) (not e!2856457))))

(assert (=> b!4580637 (= res!1913854 (dynLambda!21336 lambda!183159 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun b!4580638 () Bool)

(assert (=> b!4580638 (= e!2856457 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183159))))

(assert (= (and d!1434432 (not res!1913853)) b!4580637))

(assert (= (and b!4580637 res!1913854) b!4580638))

(declare-fun b_lambda!166063 () Bool)

(assert (=> (not b_lambda!166063) (not b!4580637)))

(assert (=> b!4580637 m!5391175))

(assert (=> b!4580638 m!5390545))

(assert (=> b!4580305 d!1434432))

(declare-fun b!4580639 () Bool)

(declare-fun e!2856463 () Unit!105525)

(declare-fun Unit!105638 () Unit!105525)

(assert (=> b!4580639 (= e!2856463 Unit!105638)))

(declare-fun b!4580640 () Bool)

(declare-fun e!2856458 () Bool)

(declare-fun e!2856461 () Bool)

(assert (=> b!4580640 (= e!2856458 e!2856461)))

(declare-fun res!1913856 () Bool)

(assert (=> b!4580640 (=> (not res!1913856) (not e!2856461))))

(assert (=> b!4580640 (= res!1913856 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745625) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4580641 () Bool)

(declare-fun e!2856460 () Unit!105525)

(assert (=> b!4580641 (= e!2856460 e!2856463)))

(declare-fun c!783977 () Bool)

(declare-fun call!319730 () Bool)

(assert (=> b!4580641 (= c!783977 call!319730)))

(declare-fun b!4580642 () Bool)

(assert (=> b!4580642 (= e!2856461 (contains!13849 (keys!17800 lt!1745625) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun b!4580643 () Bool)

(declare-fun e!2856459 () List!51077)

(assert (=> b!4580643 (= e!2856459 (keys!17800 lt!1745625))))

(declare-fun b!4580644 () Bool)

(declare-fun lt!1745826 () Unit!105525)

(assert (=> b!4580644 (= e!2856460 lt!1745826)))

(declare-fun lt!1745824 () Unit!105525)

(assert (=> b!4580644 (= lt!1745824 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745625) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4580644 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745625) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1745829 () Unit!105525)

(assert (=> b!4580644 (= lt!1745829 lt!1745824)))

(assert (=> b!4580644 (= lt!1745826 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745625) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4580644 call!319730))

(declare-fun bm!319725 () Bool)

(assert (=> bm!319725 (= call!319730 (contains!13849 e!2856459 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun c!783976 () Bool)

(declare-fun c!783978 () Bool)

(assert (=> bm!319725 (= c!783976 c!783978)))

(declare-fun d!1434434 () Bool)

(assert (=> d!1434434 e!2856458))

(declare-fun res!1913857 () Bool)

(assert (=> d!1434434 (=> res!1913857 e!2856458)))

(declare-fun e!2856462 () Bool)

(assert (=> d!1434434 (= res!1913857 e!2856462)))

(declare-fun res!1913855 () Bool)

(assert (=> d!1434434 (=> (not res!1913855) (not e!2856462))))

(declare-fun lt!1745825 () Bool)

(assert (=> d!1434434 (= res!1913855 (not lt!1745825))))

(declare-fun lt!1745830 () Bool)

(assert (=> d!1434434 (= lt!1745825 lt!1745830)))

(declare-fun lt!1745823 () Unit!105525)

(assert (=> d!1434434 (= lt!1745823 e!2856460)))

(assert (=> d!1434434 (= c!783978 lt!1745830)))

(assert (=> d!1434434 (= lt!1745830 (containsKey!2057 (toList!4552 lt!1745625) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434434 (= (contains!13846 lt!1745625 (_1!29055 (h!56885 (_2!29056 lt!1745216)))) lt!1745825)))

(declare-fun b!4580645 () Bool)

(assert (=> b!4580645 (= e!2856459 (getKeysList!544 (toList!4552 lt!1745625)))))

(declare-fun b!4580646 () Bool)

(assert (=> b!4580646 false))

(declare-fun lt!1745827 () Unit!105525)

(declare-fun lt!1745828 () Unit!105525)

(assert (=> b!4580646 (= lt!1745827 lt!1745828)))

(assert (=> b!4580646 (containsKey!2057 (toList!4552 lt!1745625) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4580646 (= lt!1745828 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745625) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun Unit!105639 () Unit!105525)

(assert (=> b!4580646 (= e!2856463 Unit!105639)))

(declare-fun b!4580647 () Bool)

(assert (=> b!4580647 (= e!2856462 (not (contains!13849 (keys!17800 lt!1745625) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(assert (= (and d!1434434 c!783978) b!4580644))

(assert (= (and d!1434434 (not c!783978)) b!4580641))

(assert (= (and b!4580641 c!783977) b!4580646))

(assert (= (and b!4580641 (not c!783977)) b!4580639))

(assert (= (or b!4580644 b!4580641) bm!319725))

(assert (= (and bm!319725 c!783976) b!4580645))

(assert (= (and bm!319725 (not c!783976)) b!4580643))

(assert (= (and d!1434434 res!1913855) b!4580647))

(assert (= (and d!1434434 (not res!1913857)) b!4580640))

(assert (= (and b!4580640 res!1913856) b!4580642))

(declare-fun m!5391185 () Bool)

(assert (=> b!4580646 m!5391185))

(declare-fun m!5391187 () Bool)

(assert (=> b!4580646 m!5391187))

(declare-fun m!5391189 () Bool)

(assert (=> b!4580647 m!5391189))

(assert (=> b!4580647 m!5391189))

(declare-fun m!5391191 () Bool)

(assert (=> b!4580647 m!5391191))

(declare-fun m!5391193 () Bool)

(assert (=> b!4580640 m!5391193))

(assert (=> b!4580640 m!5391193))

(declare-fun m!5391195 () Bool)

(assert (=> b!4580640 m!5391195))

(declare-fun m!5391197 () Bool)

(assert (=> b!4580645 m!5391197))

(assert (=> b!4580643 m!5391189))

(declare-fun m!5391199 () Bool)

(assert (=> b!4580644 m!5391199))

(assert (=> b!4580644 m!5391193))

(assert (=> b!4580644 m!5391193))

(assert (=> b!4580644 m!5391195))

(declare-fun m!5391201 () Bool)

(assert (=> b!4580644 m!5391201))

(assert (=> d!1434434 m!5391185))

(declare-fun m!5391203 () Bool)

(assert (=> bm!319725 m!5391203))

(assert (=> b!4580642 m!5391189))

(assert (=> b!4580642 m!5391189))

(assert (=> b!4580642 m!5391191))

(assert (=> b!4580305 d!1434434))

(declare-fun d!1434436 () Bool)

(declare-fun res!1913858 () Bool)

(declare-fun e!2856464 () Bool)

(assert (=> d!1434436 (=> res!1913858 e!2856464)))

(assert (=> d!1434436 (= res!1913858 ((_ is Nil!50950) (toList!4552 lt!1745232)))))

(assert (=> d!1434436 (= (forall!10502 (toList!4552 lt!1745232) lambda!183158) e!2856464)))

(declare-fun b!4580648 () Bool)

(declare-fun e!2856465 () Bool)

(assert (=> b!4580648 (= e!2856464 e!2856465)))

(declare-fun res!1913859 () Bool)

(assert (=> b!4580648 (=> (not res!1913859) (not e!2856465))))

(assert (=> b!4580648 (= res!1913859 (dynLambda!21336 lambda!183158 (h!56885 (toList!4552 lt!1745232))))))

(declare-fun b!4580649 () Bool)

(assert (=> b!4580649 (= e!2856465 (forall!10502 (t!358064 (toList!4552 lt!1745232)) lambda!183158))))

(assert (= (and d!1434436 (not res!1913858)) b!4580648))

(assert (= (and b!4580648 res!1913859) b!4580649))

(declare-fun b_lambda!166065 () Bool)

(assert (=> (not b_lambda!166065) (not b!4580648)))

(declare-fun m!5391205 () Bool)

(assert (=> b!4580648 m!5391205))

(declare-fun m!5391207 () Bool)

(assert (=> b!4580649 m!5391207))

(assert (=> b!4580305 d!1434436))

(declare-fun d!1434438 () Bool)

(declare-fun res!1913860 () Bool)

(declare-fun e!2856466 () Bool)

(assert (=> d!1434438 (=> res!1913860 e!2856466)))

(assert (=> d!1434438 (= res!1913860 ((_ is Nil!50950) (t!358064 (_2!29056 lt!1745216))))))

(assert (=> d!1434438 (= (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183159) e!2856466)))

(declare-fun b!4580650 () Bool)

(declare-fun e!2856467 () Bool)

(assert (=> b!4580650 (= e!2856466 e!2856467)))

(declare-fun res!1913861 () Bool)

(assert (=> b!4580650 (=> (not res!1913861) (not e!2856467))))

(assert (=> b!4580650 (= res!1913861 (dynLambda!21336 lambda!183159 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun b!4580651 () Bool)

(assert (=> b!4580651 (= e!2856467 (forall!10502 (t!358064 (t!358064 (_2!29056 lt!1745216))) lambda!183159))))

(assert (= (and d!1434438 (not res!1913860)) b!4580650))

(assert (= (and b!4580650 res!1913861) b!4580651))

(declare-fun b_lambda!166067 () Bool)

(assert (=> (not b_lambda!166067) (not b!4580650)))

(declare-fun m!5391209 () Bool)

(assert (=> b!4580650 m!5391209))

(declare-fun m!5391211 () Bool)

(assert (=> b!4580651 m!5391211))

(assert (=> b!4580305 d!1434438))

(declare-fun d!1434440 () Bool)

(declare-fun e!2856470 () Bool)

(assert (=> d!1434440 e!2856470))

(declare-fun res!1913867 () Bool)

(assert (=> d!1434440 (=> (not res!1913867) (not e!2856470))))

(declare-fun lt!1745842 () ListMap!3813)

(assert (=> d!1434440 (= res!1913867 (contains!13846 lt!1745842 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1745840 () List!51074)

(assert (=> d!1434440 (= lt!1745842 (ListMap!3814 lt!1745840))))

(declare-fun lt!1745839 () Unit!105525)

(declare-fun lt!1745841 () Unit!105525)

(assert (=> d!1434440 (= lt!1745839 lt!1745841)))

(assert (=> d!1434440 (= (getValueByKey!1254 lt!1745840 (_1!29055 (h!56885 (_2!29056 lt!1745216)))) (Some!11327 (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!779 (List!51074 K!12320 V!12566) Unit!105525)

(assert (=> d!1434440 (= lt!1745841 (lemmaContainsTupThenGetReturnValue!779 lt!1745840 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun insertNoDuplicatedKeys!309 (List!51074 K!12320 V!12566) List!51074)

(assert (=> d!1434440 (= lt!1745840 (insertNoDuplicatedKeys!309 (toList!4552 lt!1745232) (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434440 (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745842)))

(declare-fun b!4580656 () Bool)

(declare-fun res!1913866 () Bool)

(assert (=> b!4580656 (=> (not res!1913866) (not e!2856470))))

(assert (=> b!4580656 (= res!1913866 (= (getValueByKey!1254 (toList!4552 lt!1745842) (_1!29055 (h!56885 (_2!29056 lt!1745216)))) (Some!11327 (_2!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4580657 () Bool)

(assert (=> b!4580657 (= e!2856470 (contains!13851 (toList!4552 lt!1745842) (h!56885 (_2!29056 lt!1745216))))))

(assert (= (and d!1434440 res!1913867) b!4580656))

(assert (= (and b!4580656 res!1913866) b!4580657))

(declare-fun m!5391213 () Bool)

(assert (=> d!1434440 m!5391213))

(declare-fun m!5391215 () Bool)

(assert (=> d!1434440 m!5391215))

(declare-fun m!5391217 () Bool)

(assert (=> d!1434440 m!5391217))

(declare-fun m!5391219 () Bool)

(assert (=> d!1434440 m!5391219))

(declare-fun m!5391221 () Bool)

(assert (=> b!4580656 m!5391221))

(declare-fun m!5391223 () Bool)

(assert (=> b!4580657 m!5391223))

(assert (=> b!4580305 d!1434440))

(declare-fun bs!972367 () Bool)

(declare-fun d!1434442 () Bool)

(assert (= bs!972367 (and d!1434442 b!4580368)))

(declare-fun lambda!183210 () Int)

(assert (=> bs!972367 (= (= lt!1745627 lt!1745665) (= lambda!183210 lambda!183166))))

(declare-fun bs!972368 () Bool)

(assert (= bs!972368 (and d!1434442 b!4580305)))

(assert (=> bs!972368 (= lambda!183210 lambda!183159)))

(declare-fun bs!972369 () Bool)

(assert (= bs!972369 (and d!1434442 d!1434224)))

(assert (=> bs!972369 (= (= lt!1745627 lt!1745668) (= lambda!183210 lambda!183167))))

(declare-fun bs!972370 () Bool)

(assert (= bs!972370 (and d!1434442 d!1434338)))

(assert (=> bs!972370 (= (= lt!1745627 lt!1745759) (= lambda!183210 lambda!183193))))

(declare-fun bs!972371 () Bool)

(assert (= bs!972371 (and d!1434442 b!4580257)))

(assert (=> bs!972371 (= (= lt!1745627 lt!1745218) (= lambda!183210 lambda!183141))))

(declare-fun bs!972372 () Bool)

(assert (= bs!972372 (and d!1434442 d!1434184)))

(assert (=> bs!972372 (= (= lt!1745627 lt!1745630) (= lambda!183210 lambda!183160))))

(declare-fun bs!972373 () Bool)

(assert (= bs!972373 (and d!1434442 d!1434344)))

(assert (=> bs!972373 (= (= lt!1745627 lt!1745232) (= lambda!183210 lambda!183199))))

(declare-fun bs!972374 () Bool)

(assert (= bs!972374 (and d!1434442 d!1434256)))

(assert (=> bs!972374 (not (= lambda!183210 lambda!183178))))

(assert (=> bs!972371 (= (= lt!1745627 lt!1745576) (= lambda!183210 lambda!183142))))

(declare-fun bs!972375 () Bool)

(assert (= bs!972375 (and d!1434442 b!4580536)))

(assert (=> bs!972375 (= (= lt!1745627 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183210 lambda!183190))))

(declare-fun bs!972376 () Bool)

(assert (= bs!972376 (and d!1434442 b!4580306)))

(assert (=> bs!972376 (= (= lt!1745627 lt!1745232) (= lambda!183210 lambda!183157))))

(declare-fun bs!972377 () Bool)

(assert (= bs!972377 (and d!1434442 d!1434424)))

(assert (=> bs!972377 (= (= lt!1745627 lt!1745214) (= lambda!183210 lambda!183205))))

(assert (=> bs!972367 (= (= lt!1745627 lt!1745214) (= lambda!183210 lambda!183165))))

(declare-fun bs!972378 () Bool)

(assert (= bs!972378 (and d!1434442 b!4580574)))

(assert (=> bs!972378 (= (= lt!1745627 lt!1745787) (= lambda!183210 lambda!183202))))

(declare-fun bs!972379 () Bool)

(assert (= bs!972379 (and d!1434442 d!1434366)))

(assert (=> bs!972379 (= (= lt!1745627 lt!1745790) (= lambda!183210 lambda!183203))))

(declare-fun bs!972380 () Bool)

(assert (= bs!972380 (and d!1434442 d!1434060)))

(assert (=> bs!972380 (= (= lt!1745627 lt!1745579) (= lambda!183210 lambda!183143))))

(assert (=> bs!972368 (= (= lt!1745627 lt!1745232) (= lambda!183210 lambda!183158))))

(declare-fun bs!972381 () Bool)

(assert (= bs!972381 (and d!1434442 b!4579991)))

(assert (=> bs!972381 (not (= lambda!183210 lambda!183043))))

(declare-fun bs!972382 () Bool)

(assert (= bs!972382 (and d!1434442 b!4580535)))

(assert (=> bs!972382 (= (= lt!1745627 lt!1745756) (= lambda!183210 lambda!183192))))

(declare-fun bs!972383 () Bool)

(assert (= bs!972383 (and d!1434442 b!4580369)))

(assert (=> bs!972383 (= (= lt!1745627 lt!1745214) (= lambda!183210 lambda!183164))))

(declare-fun bs!972384 () Bool)

(assert (= bs!972384 (and d!1434442 b!4580575)))

(assert (=> bs!972384 (= (= lt!1745627 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183210 lambda!183200))))

(assert (=> bs!972382 (= (= lt!1745627 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183210 lambda!183191))))

(assert (=> bs!972378 (= (= lt!1745627 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183210 lambda!183201))))

(declare-fun bs!972385 () Bool)

(assert (= bs!972385 (and d!1434442 b!4580258)))

(assert (=> bs!972385 (= (= lt!1745627 lt!1745218) (= lambda!183210 lambda!183140))))

(assert (=> d!1434442 true))

(assert (=> d!1434442 (forall!10502 (toList!4552 lt!1745232) lambda!183210)))

(declare-fun lt!1745845 () Unit!105525)

(declare-fun choose!30537 (ListMap!3813 ListMap!3813 K!12320 V!12566) Unit!105525)

(assert (=> d!1434442 (= lt!1745845 (choose!30537 lt!1745232 lt!1745627 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434442 (forall!10502 (toList!4552 (+!1710 lt!1745232 (tuple2!51523 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))) lambda!183210)))

(assert (=> d!1434442 (= (addForallContainsKeyThenBeforeAdding!414 lt!1745232 lt!1745627 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))) lt!1745845)))

(declare-fun bs!972386 () Bool)

(assert (= bs!972386 d!1434442))

(declare-fun m!5391225 () Bool)

(assert (=> bs!972386 m!5391225))

(declare-fun m!5391227 () Bool)

(assert (=> bs!972386 m!5391227))

(declare-fun m!5391229 () Bool)

(assert (=> bs!972386 m!5391229))

(declare-fun m!5391231 () Bool)

(assert (=> bs!972386 m!5391231))

(assert (=> b!4580305 d!1434442))

(declare-fun d!1434444 () Bool)

(declare-fun res!1913868 () Bool)

(declare-fun e!2856471 () Bool)

(assert (=> d!1434444 (=> res!1913868 e!2856471)))

(assert (=> d!1434444 (= res!1913868 ((_ is Nil!50950) (toList!4552 lt!1745232)))))

(assert (=> d!1434444 (= (forall!10502 (toList!4552 lt!1745232) lambda!183159) e!2856471)))

(declare-fun b!4580659 () Bool)

(declare-fun e!2856472 () Bool)

(assert (=> b!4580659 (= e!2856471 e!2856472)))

(declare-fun res!1913869 () Bool)

(assert (=> b!4580659 (=> (not res!1913869) (not e!2856472))))

(assert (=> b!4580659 (= res!1913869 (dynLambda!21336 lambda!183159 (h!56885 (toList!4552 lt!1745232))))))

(declare-fun b!4580660 () Bool)

(assert (=> b!4580660 (= e!2856472 (forall!10502 (t!358064 (toList!4552 lt!1745232)) lambda!183159))))

(assert (= (and d!1434444 (not res!1913868)) b!4580659))

(assert (= (and b!4580659 res!1913869) b!4580660))

(declare-fun b_lambda!166069 () Bool)

(assert (=> (not b_lambda!166069) (not b!4580659)))

(declare-fun m!5391233 () Bool)

(assert (=> b!4580659 m!5391233))

(declare-fun m!5391235 () Bool)

(assert (=> b!4580660 m!5391235))

(assert (=> b!4580305 d!1434444))

(declare-fun bs!972387 () Bool)

(declare-fun b!4580664 () Bool)

(assert (= bs!972387 (and b!4580664 b!4580368)))

(declare-fun lambda!183211 () Int)

(assert (=> bs!972387 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183211 lambda!183166))))

(declare-fun bs!972388 () Bool)

(assert (= bs!972388 (and b!4580664 b!4580305)))

(assert (=> bs!972388 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183211 lambda!183159))))

(declare-fun bs!972389 () Bool)

(assert (= bs!972389 (and b!4580664 d!1434224)))

(assert (=> bs!972389 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745668) (= lambda!183211 lambda!183167))))

(declare-fun bs!972390 () Bool)

(assert (= bs!972390 (and b!4580664 d!1434338)))

(assert (=> bs!972390 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745759) (= lambda!183211 lambda!183193))))

(declare-fun bs!972391 () Bool)

(assert (= bs!972391 (and b!4580664 b!4580257)))

(assert (=> bs!972391 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183211 lambda!183141))))

(declare-fun bs!972392 () Bool)

(assert (= bs!972392 (and b!4580664 d!1434184)))

(assert (=> bs!972392 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745630) (= lambda!183211 lambda!183160))))

(declare-fun bs!972393 () Bool)

(assert (= bs!972393 (and b!4580664 d!1434344)))

(assert (=> bs!972393 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183211 lambda!183199))))

(assert (=> bs!972391 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745576) (= lambda!183211 lambda!183142))))

(declare-fun bs!972394 () Bool)

(assert (= bs!972394 (and b!4580664 b!4580536)))

(assert (=> bs!972394 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183211 lambda!183190))))

(declare-fun bs!972395 () Bool)

(assert (= bs!972395 (and b!4580664 b!4580306)))

(assert (=> bs!972395 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183211 lambda!183157))))

(declare-fun bs!972396 () Bool)

(assert (= bs!972396 (and b!4580664 d!1434424)))

(assert (=> bs!972396 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183211 lambda!183205))))

(assert (=> bs!972387 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183211 lambda!183165))))

(declare-fun bs!972397 () Bool)

(assert (= bs!972397 (and b!4580664 b!4580574)))

(assert (=> bs!972397 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745787) (= lambda!183211 lambda!183202))))

(declare-fun bs!972398 () Bool)

(assert (= bs!972398 (and b!4580664 d!1434366)))

(assert (=> bs!972398 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745790) (= lambda!183211 lambda!183203))))

(declare-fun bs!972399 () Bool)

(assert (= bs!972399 (and b!4580664 d!1434060)))

(assert (=> bs!972399 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745579) (= lambda!183211 lambda!183143))))

(assert (=> bs!972388 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183211 lambda!183158))))

(declare-fun bs!972400 () Bool)

(assert (= bs!972400 (and b!4580664 b!4579991)))

(assert (=> bs!972400 (not (= lambda!183211 lambda!183043))))

(declare-fun bs!972401 () Bool)

(assert (= bs!972401 (and b!4580664 b!4580535)))

(assert (=> bs!972401 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745756) (= lambda!183211 lambda!183192))))

(declare-fun bs!972402 () Bool)

(assert (= bs!972402 (and b!4580664 b!4580369)))

(assert (=> bs!972402 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183211 lambda!183164))))

(declare-fun bs!972403 () Bool)

(assert (= bs!972403 (and b!4580664 b!4580575)))

(assert (=> bs!972403 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183211 lambda!183200))))

(assert (=> bs!972401 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183211 lambda!183191))))

(assert (=> bs!972397 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183211 lambda!183201))))

(declare-fun bs!972404 () Bool)

(assert (= bs!972404 (and b!4580664 b!4580258)))

(assert (=> bs!972404 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183211 lambda!183140))))

(declare-fun bs!972405 () Bool)

(assert (= bs!972405 (and b!4580664 d!1434256)))

(assert (=> bs!972405 (not (= lambda!183211 lambda!183178))))

(declare-fun bs!972406 () Bool)

(assert (= bs!972406 (and b!4580664 d!1434442)))

(assert (=> bs!972406 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183211 lambda!183210))))

(assert (=> b!4580664 true))

(declare-fun bs!972407 () Bool)

(declare-fun b!4580663 () Bool)

(assert (= bs!972407 (and b!4580663 b!4580368)))

(declare-fun lambda!183212 () Int)

(assert (=> bs!972407 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183212 lambda!183166))))

(declare-fun bs!972408 () Bool)

(assert (= bs!972408 (and b!4580663 b!4580664)))

(assert (=> bs!972408 (= lambda!183212 lambda!183211)))

(declare-fun bs!972409 () Bool)

(assert (= bs!972409 (and b!4580663 b!4580305)))

(assert (=> bs!972409 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183212 lambda!183159))))

(declare-fun bs!972410 () Bool)

(assert (= bs!972410 (and b!4580663 d!1434224)))

(assert (=> bs!972410 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745668) (= lambda!183212 lambda!183167))))

(declare-fun bs!972411 () Bool)

(assert (= bs!972411 (and b!4580663 d!1434338)))

(assert (=> bs!972411 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745759) (= lambda!183212 lambda!183193))))

(declare-fun bs!972412 () Bool)

(assert (= bs!972412 (and b!4580663 b!4580257)))

(assert (=> bs!972412 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183212 lambda!183141))))

(declare-fun bs!972413 () Bool)

(assert (= bs!972413 (and b!4580663 d!1434184)))

(assert (=> bs!972413 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745630) (= lambda!183212 lambda!183160))))

(declare-fun bs!972414 () Bool)

(assert (= bs!972414 (and b!4580663 d!1434344)))

(assert (=> bs!972414 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183212 lambda!183199))))

(assert (=> bs!972412 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745576) (= lambda!183212 lambda!183142))))

(declare-fun bs!972415 () Bool)

(assert (= bs!972415 (and b!4580663 b!4580536)))

(assert (=> bs!972415 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183212 lambda!183190))))

(declare-fun bs!972416 () Bool)

(assert (= bs!972416 (and b!4580663 b!4580306)))

(assert (=> bs!972416 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183212 lambda!183157))))

(declare-fun bs!972417 () Bool)

(assert (= bs!972417 (and b!4580663 d!1434424)))

(assert (=> bs!972417 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183212 lambda!183205))))

(assert (=> bs!972407 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183212 lambda!183165))))

(declare-fun bs!972418 () Bool)

(assert (= bs!972418 (and b!4580663 b!4580574)))

(assert (=> bs!972418 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745787) (= lambda!183212 lambda!183202))))

(declare-fun bs!972419 () Bool)

(assert (= bs!972419 (and b!4580663 d!1434366)))

(assert (=> bs!972419 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745790) (= lambda!183212 lambda!183203))))

(declare-fun bs!972420 () Bool)

(assert (= bs!972420 (and b!4580663 d!1434060)))

(assert (=> bs!972420 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745579) (= lambda!183212 lambda!183143))))

(assert (=> bs!972409 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183212 lambda!183158))))

(declare-fun bs!972421 () Bool)

(assert (= bs!972421 (and b!4580663 b!4579991)))

(assert (=> bs!972421 (not (= lambda!183212 lambda!183043))))

(declare-fun bs!972422 () Bool)

(assert (= bs!972422 (and b!4580663 b!4580535)))

(assert (=> bs!972422 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745756) (= lambda!183212 lambda!183192))))

(declare-fun bs!972423 () Bool)

(assert (= bs!972423 (and b!4580663 b!4580369)))

(assert (=> bs!972423 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183212 lambda!183164))))

(declare-fun bs!972424 () Bool)

(assert (= bs!972424 (and b!4580663 b!4580575)))

(assert (=> bs!972424 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183212 lambda!183200))))

(assert (=> bs!972422 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183212 lambda!183191))))

(assert (=> bs!972418 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183212 lambda!183201))))

(declare-fun bs!972425 () Bool)

(assert (= bs!972425 (and b!4580663 b!4580258)))

(assert (=> bs!972425 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183212 lambda!183140))))

(declare-fun bs!972426 () Bool)

(assert (= bs!972426 (and b!4580663 d!1434256)))

(assert (=> bs!972426 (not (= lambda!183212 lambda!183178))))

(declare-fun bs!972427 () Bool)

(assert (= bs!972427 (and b!4580663 d!1434442)))

(assert (=> bs!972427 (= (= (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183212 lambda!183210))))

(assert (=> b!4580663 true))

(declare-fun lt!1745849 () ListMap!3813)

(declare-fun lambda!183213 () Int)

(assert (=> bs!972407 (= (= lt!1745849 lt!1745665) (= lambda!183213 lambda!183166))))

(assert (=> bs!972408 (= (= lt!1745849 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183213 lambda!183211))))

(assert (=> bs!972409 (= (= lt!1745849 lt!1745627) (= lambda!183213 lambda!183159))))

(assert (=> bs!972410 (= (= lt!1745849 lt!1745668) (= lambda!183213 lambda!183167))))

(assert (=> bs!972411 (= (= lt!1745849 lt!1745759) (= lambda!183213 lambda!183193))))

(assert (=> bs!972412 (= (= lt!1745849 lt!1745218) (= lambda!183213 lambda!183141))))

(assert (=> bs!972413 (= (= lt!1745849 lt!1745630) (= lambda!183213 lambda!183160))))

(assert (=> bs!972412 (= (= lt!1745849 lt!1745576) (= lambda!183213 lambda!183142))))

(assert (=> bs!972415 (= (= lt!1745849 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183213 lambda!183190))))

(assert (=> bs!972416 (= (= lt!1745849 lt!1745232) (= lambda!183213 lambda!183157))))

(assert (=> bs!972417 (= (= lt!1745849 lt!1745214) (= lambda!183213 lambda!183205))))

(assert (=> bs!972407 (= (= lt!1745849 lt!1745214) (= lambda!183213 lambda!183165))))

(assert (=> bs!972418 (= (= lt!1745849 lt!1745787) (= lambda!183213 lambda!183202))))

(assert (=> bs!972419 (= (= lt!1745849 lt!1745790) (= lambda!183213 lambda!183203))))

(assert (=> bs!972420 (= (= lt!1745849 lt!1745579) (= lambda!183213 lambda!183143))))

(assert (=> bs!972409 (= (= lt!1745849 lt!1745232) (= lambda!183213 lambda!183158))))

(assert (=> bs!972421 (not (= lambda!183213 lambda!183043))))

(assert (=> bs!972422 (= (= lt!1745849 lt!1745756) (= lambda!183213 lambda!183192))))

(assert (=> bs!972423 (= (= lt!1745849 lt!1745214) (= lambda!183213 lambda!183164))))

(assert (=> bs!972424 (= (= lt!1745849 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183213 lambda!183200))))

(assert (=> bs!972422 (= (= lt!1745849 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183213 lambda!183191))))

(assert (=> bs!972418 (= (= lt!1745849 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183213 lambda!183201))))

(assert (=> bs!972425 (= (= lt!1745849 lt!1745218) (= lambda!183213 lambda!183140))))

(assert (=> b!4580663 (= (= lt!1745849 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183213 lambda!183212))))

(assert (=> bs!972414 (= (= lt!1745849 lt!1745232) (= lambda!183213 lambda!183199))))

(assert (=> bs!972426 (not (= lambda!183213 lambda!183178))))

(assert (=> bs!972427 (= (= lt!1745849 lt!1745627) (= lambda!183213 lambda!183210))))

(assert (=> b!4580663 true))

(declare-fun bs!972428 () Bool)

(declare-fun d!1434446 () Bool)

(assert (= bs!972428 (and d!1434446 b!4580368)))

(declare-fun lambda!183214 () Int)

(declare-fun lt!1745852 () ListMap!3813)

(assert (=> bs!972428 (= (= lt!1745852 lt!1745665) (= lambda!183214 lambda!183166))))

(declare-fun bs!972429 () Bool)

(assert (= bs!972429 (and d!1434446 b!4580664)))

(assert (=> bs!972429 (= (= lt!1745852 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183214 lambda!183211))))

(declare-fun bs!972430 () Bool)

(assert (= bs!972430 (and d!1434446 b!4580305)))

(assert (=> bs!972430 (= (= lt!1745852 lt!1745627) (= lambda!183214 lambda!183159))))

(declare-fun bs!972431 () Bool)

(assert (= bs!972431 (and d!1434446 d!1434224)))

(assert (=> bs!972431 (= (= lt!1745852 lt!1745668) (= lambda!183214 lambda!183167))))

(declare-fun bs!972432 () Bool)

(assert (= bs!972432 (and d!1434446 d!1434338)))

(assert (=> bs!972432 (= (= lt!1745852 lt!1745759) (= lambda!183214 lambda!183193))))

(declare-fun bs!972433 () Bool)

(assert (= bs!972433 (and d!1434446 b!4580663)))

(assert (=> bs!972433 (= (= lt!1745852 lt!1745849) (= lambda!183214 lambda!183213))))

(declare-fun bs!972434 () Bool)

(assert (= bs!972434 (and d!1434446 b!4580257)))

(assert (=> bs!972434 (= (= lt!1745852 lt!1745218) (= lambda!183214 lambda!183141))))

(declare-fun bs!972435 () Bool)

(assert (= bs!972435 (and d!1434446 d!1434184)))

(assert (=> bs!972435 (= (= lt!1745852 lt!1745630) (= lambda!183214 lambda!183160))))

(assert (=> bs!972434 (= (= lt!1745852 lt!1745576) (= lambda!183214 lambda!183142))))

(declare-fun bs!972436 () Bool)

(assert (= bs!972436 (and d!1434446 b!4580536)))

(assert (=> bs!972436 (= (= lt!1745852 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183214 lambda!183190))))

(declare-fun bs!972437 () Bool)

(assert (= bs!972437 (and d!1434446 b!4580306)))

(assert (=> bs!972437 (= (= lt!1745852 lt!1745232) (= lambda!183214 lambda!183157))))

(declare-fun bs!972438 () Bool)

(assert (= bs!972438 (and d!1434446 d!1434424)))

(assert (=> bs!972438 (= (= lt!1745852 lt!1745214) (= lambda!183214 lambda!183205))))

(assert (=> bs!972428 (= (= lt!1745852 lt!1745214) (= lambda!183214 lambda!183165))))

(declare-fun bs!972439 () Bool)

(assert (= bs!972439 (and d!1434446 b!4580574)))

(assert (=> bs!972439 (= (= lt!1745852 lt!1745787) (= lambda!183214 lambda!183202))))

(declare-fun bs!972440 () Bool)

(assert (= bs!972440 (and d!1434446 d!1434366)))

(assert (=> bs!972440 (= (= lt!1745852 lt!1745790) (= lambda!183214 lambda!183203))))

(declare-fun bs!972441 () Bool)

(assert (= bs!972441 (and d!1434446 d!1434060)))

(assert (=> bs!972441 (= (= lt!1745852 lt!1745579) (= lambda!183214 lambda!183143))))

(assert (=> bs!972430 (= (= lt!1745852 lt!1745232) (= lambda!183214 lambda!183158))))

(declare-fun bs!972442 () Bool)

(assert (= bs!972442 (and d!1434446 b!4579991)))

(assert (=> bs!972442 (not (= lambda!183214 lambda!183043))))

(declare-fun bs!972443 () Bool)

(assert (= bs!972443 (and d!1434446 b!4580535)))

(assert (=> bs!972443 (= (= lt!1745852 lt!1745756) (= lambda!183214 lambda!183192))))

(declare-fun bs!972444 () Bool)

(assert (= bs!972444 (and d!1434446 b!4580369)))

(assert (=> bs!972444 (= (= lt!1745852 lt!1745214) (= lambda!183214 lambda!183164))))

(declare-fun bs!972445 () Bool)

(assert (= bs!972445 (and d!1434446 b!4580575)))

(assert (=> bs!972445 (= (= lt!1745852 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183214 lambda!183200))))

(assert (=> bs!972443 (= (= lt!1745852 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183214 lambda!183191))))

(assert (=> bs!972439 (= (= lt!1745852 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183214 lambda!183201))))

(declare-fun bs!972446 () Bool)

(assert (= bs!972446 (and d!1434446 b!4580258)))

(assert (=> bs!972446 (= (= lt!1745852 lt!1745218) (= lambda!183214 lambda!183140))))

(assert (=> bs!972433 (= (= lt!1745852 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183214 lambda!183212))))

(declare-fun bs!972447 () Bool)

(assert (= bs!972447 (and d!1434446 d!1434344)))

(assert (=> bs!972447 (= (= lt!1745852 lt!1745232) (= lambda!183214 lambda!183199))))

(declare-fun bs!972448 () Bool)

(assert (= bs!972448 (and d!1434446 d!1434256)))

(assert (=> bs!972448 (not (= lambda!183214 lambda!183178))))

(declare-fun bs!972449 () Bool)

(assert (= bs!972449 (and d!1434446 d!1434442)))

(assert (=> bs!972449 (= (= lt!1745852 lt!1745627) (= lambda!183214 lambda!183210))))

(assert (=> d!1434446 true))

(declare-fun b!4580661 () Bool)

(declare-fun e!2856475 () Bool)

(assert (=> b!4580661 (= e!2856475 (invariantList!1097 (toList!4552 lt!1745852)))))

(declare-fun b!4580662 () Bool)

(declare-fun res!1913870 () Bool)

(assert (=> b!4580662 (=> (not res!1913870) (not e!2856475))))

(assert (=> b!4580662 (= res!1913870 (forall!10502 (toList!4552 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) lambda!183214))))

(declare-fun bm!319726 () Bool)

(declare-fun c!783979 () Bool)

(declare-fun call!319733 () Bool)

(assert (=> bm!319726 (= call!319733 (forall!10502 (ite c!783979 (toList!4552 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (t!358064 (_2!29056 lt!1745216))) (ite c!783979 lambda!183211 lambda!183213)))))

(declare-fun e!2856474 () ListMap!3813)

(assert (=> b!4580663 (= e!2856474 lt!1745849)))

(declare-fun lt!1745847 () ListMap!3813)

(assert (=> b!4580663 (= lt!1745847 (+!1710 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(assert (=> b!4580663 (= lt!1745849 (addToMapMapFromBucket!785 (t!358064 (t!358064 (_2!29056 lt!1745216))) (+!1710 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) (h!56885 (t!358064 (_2!29056 lt!1745216))))))))

(declare-fun lt!1745851 () Unit!105525)

(declare-fun call!319732 () Unit!105525)

(assert (=> b!4580663 (= lt!1745851 call!319732)))

(assert (=> b!4580663 (forall!10502 (toList!4552 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) lambda!183212)))

(declare-fun lt!1745866 () Unit!105525)

(assert (=> b!4580663 (= lt!1745866 lt!1745851)))

(assert (=> b!4580663 (forall!10502 (toList!4552 lt!1745847) lambda!183213)))

(declare-fun lt!1745861 () Unit!105525)

(declare-fun Unit!105641 () Unit!105525)

(assert (=> b!4580663 (= lt!1745861 Unit!105641)))

(assert (=> b!4580663 (forall!10502 (t!358064 (t!358064 (_2!29056 lt!1745216))) lambda!183213)))

(declare-fun lt!1745859 () Unit!105525)

(declare-fun Unit!105642 () Unit!105525)

(assert (=> b!4580663 (= lt!1745859 Unit!105642)))

(declare-fun lt!1745856 () Unit!105525)

(declare-fun Unit!105643 () Unit!105525)

(assert (=> b!4580663 (= lt!1745856 Unit!105643)))

(declare-fun lt!1745863 () Unit!105525)

(assert (=> b!4580663 (= lt!1745863 (forallContained!2765 (toList!4552 lt!1745847) lambda!183213 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(assert (=> b!4580663 (contains!13846 lt!1745847 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun lt!1745853 () Unit!105525)

(declare-fun Unit!105644 () Unit!105525)

(assert (=> b!4580663 (= lt!1745853 Unit!105644)))

(assert (=> b!4580663 (contains!13846 lt!1745849 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun lt!1745858 () Unit!105525)

(declare-fun Unit!105645 () Unit!105525)

(assert (=> b!4580663 (= lt!1745858 Unit!105645)))

(assert (=> b!4580663 call!319733))

(declare-fun lt!1745855 () Unit!105525)

(declare-fun Unit!105646 () Unit!105525)

(assert (=> b!4580663 (= lt!1745855 Unit!105646)))

(declare-fun call!319731 () Bool)

(assert (=> b!4580663 call!319731))

(declare-fun lt!1745857 () Unit!105525)

(declare-fun Unit!105647 () Unit!105525)

(assert (=> b!4580663 (= lt!1745857 Unit!105647)))

(declare-fun lt!1745860 () Unit!105525)

(declare-fun Unit!105648 () Unit!105525)

(assert (=> b!4580663 (= lt!1745860 Unit!105648)))

(declare-fun lt!1745864 () Unit!105525)

(assert (=> b!4580663 (= lt!1745864 (addForallContainsKeyThenBeforeAdding!414 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))) lt!1745849 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))) (_2!29055 (h!56885 (t!358064 (_2!29056 lt!1745216))))))))

(assert (=> b!4580663 (forall!10502 (toList!4552 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) lambda!183213)))

(declare-fun lt!1745862 () Unit!105525)

(assert (=> b!4580663 (= lt!1745862 lt!1745864)))

(assert (=> b!4580663 (forall!10502 (toList!4552 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) lambda!183213)))

(declare-fun lt!1745850 () Unit!105525)

(declare-fun Unit!105649 () Unit!105525)

(assert (=> b!4580663 (= lt!1745850 Unit!105649)))

(declare-fun res!1913871 () Bool)

(assert (=> b!4580663 (= res!1913871 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183213))))

(declare-fun e!2856473 () Bool)

(assert (=> b!4580663 (=> (not res!1913871) (not e!2856473))))

(assert (=> b!4580663 e!2856473))

(declare-fun lt!1745854 () Unit!105525)

(declare-fun Unit!105650 () Unit!105525)

(assert (=> b!4580663 (= lt!1745854 Unit!105650)))

(assert (=> b!4580664 (= e!2856474 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1745865 () Unit!105525)

(assert (=> b!4580664 (= lt!1745865 call!319732)))

(assert (=> b!4580664 call!319733))

(declare-fun lt!1745846 () Unit!105525)

(assert (=> b!4580664 (= lt!1745846 lt!1745865)))

(assert (=> b!4580664 call!319731))

(declare-fun lt!1745848 () Unit!105525)

(declare-fun Unit!105651 () Unit!105525)

(assert (=> b!4580664 (= lt!1745848 Unit!105651)))

(declare-fun bm!319727 () Bool)

(assert (=> bm!319727 (= call!319731 (forall!10502 (ite c!783979 (toList!4552 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (toList!4552 lt!1745847)) (ite c!783979 lambda!183211 lambda!183213)))))

(assert (=> d!1434446 e!2856475))

(declare-fun res!1913872 () Bool)

(assert (=> d!1434446 (=> (not res!1913872) (not e!2856475))))

(assert (=> d!1434446 (= res!1913872 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183214))))

(assert (=> d!1434446 (= lt!1745852 e!2856474)))

(assert (=> d!1434446 (= c!783979 ((_ is Nil!50950) (t!358064 (_2!29056 lt!1745216))))))

(assert (=> d!1434446 (noDuplicateKeys!1272 (t!358064 (_2!29056 lt!1745216)))))

(assert (=> d!1434446 (= (addToMapMapFromBucket!785 (t!358064 (_2!29056 lt!1745216)) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) lt!1745852)))

(declare-fun bm!319728 () Bool)

(assert (=> bm!319728 (= call!319732 (lemmaContainsAllItsOwnKeys!414 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun b!4580665 () Bool)

(assert (=> b!4580665 (= e!2856473 (forall!10502 (toList!4552 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) lambda!183213))))

(assert (= (and d!1434446 c!783979) b!4580664))

(assert (= (and d!1434446 (not c!783979)) b!4580663))

(assert (= (and b!4580663 res!1913871) b!4580665))

(assert (= (or b!4580664 b!4580663) bm!319727))

(assert (= (or b!4580664 b!4580663) bm!319726))

(assert (= (or b!4580664 b!4580663) bm!319728))

(assert (= (and d!1434446 res!1913872) b!4580662))

(assert (= (and b!4580662 res!1913870) b!4580661))

(declare-fun m!5391237 () Bool)

(assert (=> b!4580665 m!5391237))

(declare-fun m!5391239 () Bool)

(assert (=> d!1434446 m!5391239))

(assert (=> d!1434446 m!5390635))

(declare-fun m!5391241 () Bool)

(assert (=> bm!319726 m!5391241))

(assert (=> bm!319728 m!5390541))

(declare-fun m!5391243 () Bool)

(assert (=> bm!319728 m!5391243))

(declare-fun m!5391245 () Bool)

(assert (=> b!4580663 m!5391245))

(declare-fun m!5391247 () Bool)

(assert (=> b!4580663 m!5391247))

(declare-fun m!5391249 () Bool)

(assert (=> b!4580663 m!5391249))

(assert (=> b!4580663 m!5391237))

(declare-fun m!5391251 () Bool)

(assert (=> b!4580663 m!5391251))

(declare-fun m!5391253 () Bool)

(assert (=> b!4580663 m!5391253))

(declare-fun m!5391255 () Bool)

(assert (=> b!4580663 m!5391255))

(declare-fun m!5391257 () Bool)

(assert (=> b!4580663 m!5391257))

(assert (=> b!4580663 m!5390541))

(assert (=> b!4580663 m!5391245))

(declare-fun m!5391259 () Bool)

(assert (=> b!4580663 m!5391259))

(declare-fun m!5391261 () Bool)

(assert (=> b!4580663 m!5391261))

(assert (=> b!4580663 m!5391237))

(assert (=> b!4580663 m!5390541))

(declare-fun m!5391263 () Bool)

(assert (=> b!4580663 m!5391263))

(declare-fun m!5391265 () Bool)

(assert (=> b!4580661 m!5391265))

(declare-fun m!5391267 () Bool)

(assert (=> b!4580662 m!5391267))

(declare-fun m!5391269 () Bool)

(assert (=> bm!319727 m!5391269))

(assert (=> b!4580305 d!1434446))

(declare-fun bs!972450 () Bool)

(declare-fun d!1434448 () Bool)

(assert (= bs!972450 (and d!1434448 b!4580368)))

(declare-fun lambda!183215 () Int)

(assert (=> bs!972450 (= (= lt!1745218 lt!1745665) (= lambda!183215 lambda!183166))))

(declare-fun bs!972451 () Bool)

(assert (= bs!972451 (and d!1434448 b!4580664)))

(assert (=> bs!972451 (= (= lt!1745218 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183215 lambda!183211))))

(declare-fun bs!972452 () Bool)

(assert (= bs!972452 (and d!1434448 b!4580305)))

(assert (=> bs!972452 (= (= lt!1745218 lt!1745627) (= lambda!183215 lambda!183159))))

(declare-fun bs!972453 () Bool)

(assert (= bs!972453 (and d!1434448 d!1434224)))

(assert (=> bs!972453 (= (= lt!1745218 lt!1745668) (= lambda!183215 lambda!183167))))

(declare-fun bs!972454 () Bool)

(assert (= bs!972454 (and d!1434448 d!1434338)))

(assert (=> bs!972454 (= (= lt!1745218 lt!1745759) (= lambda!183215 lambda!183193))))

(declare-fun bs!972455 () Bool)

(assert (= bs!972455 (and d!1434448 b!4580663)))

(assert (=> bs!972455 (= (= lt!1745218 lt!1745849) (= lambda!183215 lambda!183213))))

(declare-fun bs!972456 () Bool)

(assert (= bs!972456 (and d!1434448 b!4580257)))

(assert (=> bs!972456 (= lambda!183215 lambda!183141)))

(declare-fun bs!972457 () Bool)

(assert (= bs!972457 (and d!1434448 d!1434184)))

(assert (=> bs!972457 (= (= lt!1745218 lt!1745630) (= lambda!183215 lambda!183160))))

(assert (=> bs!972456 (= (= lt!1745218 lt!1745576) (= lambda!183215 lambda!183142))))

(declare-fun bs!972458 () Bool)

(assert (= bs!972458 (and d!1434448 d!1434446)))

(assert (=> bs!972458 (= (= lt!1745218 lt!1745852) (= lambda!183215 lambda!183214))))

(declare-fun bs!972459 () Bool)

(assert (= bs!972459 (and d!1434448 b!4580536)))

(assert (=> bs!972459 (= (= lt!1745218 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183215 lambda!183190))))

(declare-fun bs!972460 () Bool)

(assert (= bs!972460 (and d!1434448 b!4580306)))

(assert (=> bs!972460 (= (= lt!1745218 lt!1745232) (= lambda!183215 lambda!183157))))

(declare-fun bs!972461 () Bool)

(assert (= bs!972461 (and d!1434448 d!1434424)))

(assert (=> bs!972461 (= (= lt!1745218 lt!1745214) (= lambda!183215 lambda!183205))))

(assert (=> bs!972450 (= (= lt!1745218 lt!1745214) (= lambda!183215 lambda!183165))))

(declare-fun bs!972462 () Bool)

(assert (= bs!972462 (and d!1434448 b!4580574)))

(assert (=> bs!972462 (= (= lt!1745218 lt!1745787) (= lambda!183215 lambda!183202))))

(declare-fun bs!972463 () Bool)

(assert (= bs!972463 (and d!1434448 d!1434366)))

(assert (=> bs!972463 (= (= lt!1745218 lt!1745790) (= lambda!183215 lambda!183203))))

(declare-fun bs!972464 () Bool)

(assert (= bs!972464 (and d!1434448 d!1434060)))

(assert (=> bs!972464 (= (= lt!1745218 lt!1745579) (= lambda!183215 lambda!183143))))

(assert (=> bs!972452 (= (= lt!1745218 lt!1745232) (= lambda!183215 lambda!183158))))

(declare-fun bs!972465 () Bool)

(assert (= bs!972465 (and d!1434448 b!4579991)))

(assert (=> bs!972465 (not (= lambda!183215 lambda!183043))))

(declare-fun bs!972466 () Bool)

(assert (= bs!972466 (and d!1434448 b!4580535)))

(assert (=> bs!972466 (= (= lt!1745218 lt!1745756) (= lambda!183215 lambda!183192))))

(declare-fun bs!972467 () Bool)

(assert (= bs!972467 (and d!1434448 b!4580369)))

(assert (=> bs!972467 (= (= lt!1745218 lt!1745214) (= lambda!183215 lambda!183164))))

(declare-fun bs!972468 () Bool)

(assert (= bs!972468 (and d!1434448 b!4580575)))

(assert (=> bs!972468 (= (= lt!1745218 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183215 lambda!183200))))

(assert (=> bs!972466 (= (= lt!1745218 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183215 lambda!183191))))

(assert (=> bs!972462 (= (= lt!1745218 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183215 lambda!183201))))

(declare-fun bs!972469 () Bool)

(assert (= bs!972469 (and d!1434448 b!4580258)))

(assert (=> bs!972469 (= lambda!183215 lambda!183140)))

(assert (=> bs!972455 (= (= lt!1745218 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183215 lambda!183212))))

(declare-fun bs!972470 () Bool)

(assert (= bs!972470 (and d!1434448 d!1434344)))

(assert (=> bs!972470 (= (= lt!1745218 lt!1745232) (= lambda!183215 lambda!183199))))

(declare-fun bs!972471 () Bool)

(assert (= bs!972471 (and d!1434448 d!1434256)))

(assert (=> bs!972471 (not (= lambda!183215 lambda!183178))))

(declare-fun bs!972472 () Bool)

(assert (= bs!972472 (and d!1434448 d!1434442)))

(assert (=> bs!972472 (= (= lt!1745218 lt!1745627) (= lambda!183215 lambda!183210))))

(assert (=> d!1434448 true))

(assert (=> d!1434448 (forall!10502 (toList!4552 lt!1745218) lambda!183215)))

(declare-fun lt!1745867 () Unit!105525)

(assert (=> d!1434448 (= lt!1745867 (choose!30534 lt!1745218))))

(assert (=> d!1434448 (= (lemmaContainsAllItsOwnKeys!414 lt!1745218) lt!1745867)))

(declare-fun bs!972473 () Bool)

(assert (= bs!972473 d!1434448))

(declare-fun m!5391271 () Bool)

(assert (=> bs!972473 m!5391271))

(declare-fun m!5391273 () Bool)

(assert (=> bs!972473 m!5391273))

(assert (=> bm!319709 d!1434448))

(assert (=> b!4580383 d!1434388))

(declare-fun d!1434450 () Bool)

(assert (=> d!1434450 (= (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287)) (not (isEmpty!28820 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287))))))

(declare-fun bs!972474 () Bool)

(assert (= bs!972474 d!1434450))

(assert (=> bs!972474 m!5390011))

(declare-fun m!5391275 () Bool)

(assert (=> bs!972474 m!5391275))

(assert (=> b!4580107 d!1434450))

(declare-fun b!4580667 () Bool)

(declare-fun e!2856476 () Option!11328)

(declare-fun e!2856477 () Option!11328)

(assert (=> b!4580667 (= e!2856476 e!2856477)))

(declare-fun c!783981 () Bool)

(assert (=> b!4580667 (= c!783981 (and ((_ is Cons!50950) (toList!4552 lt!1745243)) (not (= (_1!29055 (h!56885 (toList!4552 lt!1745243))) key!3287))))))

(declare-fun b!4580669 () Bool)

(assert (=> b!4580669 (= e!2856477 None!11327)))

(declare-fun b!4580666 () Bool)

(assert (=> b!4580666 (= e!2856476 (Some!11327 (_2!29055 (h!56885 (toList!4552 lt!1745243)))))))

(declare-fun b!4580668 () Bool)

(assert (=> b!4580668 (= e!2856477 (getValueByKey!1254 (t!358064 (toList!4552 lt!1745243)) key!3287))))

(declare-fun d!1434452 () Bool)

(declare-fun c!783980 () Bool)

(assert (=> d!1434452 (= c!783980 (and ((_ is Cons!50950) (toList!4552 lt!1745243)) (= (_1!29055 (h!56885 (toList!4552 lt!1745243))) key!3287)))))

(assert (=> d!1434452 (= (getValueByKey!1254 (toList!4552 lt!1745243) key!3287) e!2856476)))

(assert (= (and d!1434452 c!783980) b!4580666))

(assert (= (and d!1434452 (not c!783980)) b!4580667))

(assert (= (and b!4580667 c!783981) b!4580668))

(assert (= (and b!4580667 (not c!783981)) b!4580669))

(declare-fun m!5391277 () Bool)

(assert (=> b!4580668 m!5391277))

(assert (=> b!4580107 d!1434452))

(declare-fun d!1434454 () Bool)

(assert (=> d!1434454 (= (isDefined!8599 lt!1745650) (not (isEmpty!28819 lt!1745650)))))

(declare-fun bs!972475 () Bool)

(assert (= bs!972475 d!1434454))

(assert (=> bs!972475 m!5390577))

(assert (=> b!4580334 d!1434454))

(assert (=> b!4580374 d!1434236))

(declare-fun d!1434456 () Bool)

(assert (=> d!1434456 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287))))

(declare-fun lt!1745868 () Unit!105525)

(assert (=> d!1434456 (= lt!1745868 (choose!30532 (toList!4552 lt!1745243) key!3287))))

(assert (=> d!1434456 (invariantList!1097 (toList!4552 lt!1745243))))

(assert (=> d!1434456 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745243) key!3287) lt!1745868)))

(declare-fun bs!972476 () Bool)

(assert (= bs!972476 d!1434456))

(assert (=> bs!972476 m!5390011))

(assert (=> bs!972476 m!5390011))

(assert (=> bs!972476 m!5390013))

(declare-fun m!5391279 () Bool)

(assert (=> bs!972476 m!5391279))

(assert (=> bs!972476 m!5390893))

(assert (=> b!4580111 d!1434456))

(assert (=> b!4580111 d!1434450))

(assert (=> b!4580111 d!1434452))

(declare-fun d!1434458 () Bool)

(assert (=> d!1434458 (contains!13849 (getKeysList!544 (toList!4552 lt!1745243)) key!3287)))

(declare-fun lt!1745869 () Unit!105525)

(assert (=> d!1434458 (= lt!1745869 (choose!30533 (toList!4552 lt!1745243) key!3287))))

(assert (=> d!1434458 (invariantList!1097 (toList!4552 lt!1745243))))

(assert (=> d!1434458 (= (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745243) key!3287) lt!1745869)))

(declare-fun bs!972477 () Bool)

(assert (= bs!972477 d!1434458))

(assert (=> bs!972477 m!5390015))

(assert (=> bs!972477 m!5390015))

(declare-fun m!5391281 () Bool)

(assert (=> bs!972477 m!5391281))

(declare-fun m!5391283 () Bool)

(assert (=> bs!972477 m!5391283))

(assert (=> bs!972477 m!5390893))

(assert (=> b!4580111 d!1434458))

(declare-fun b!4580670 () Bool)

(declare-fun e!2856483 () Unit!105525)

(declare-fun Unit!105652 () Unit!105525)

(assert (=> b!4580670 (= e!2856483 Unit!105652)))

(declare-fun b!4580671 () Bool)

(declare-fun e!2856478 () Bool)

(declare-fun e!2856481 () Bool)

(assert (=> b!4580671 (= e!2856478 e!2856481)))

(declare-fun res!1913874 () Bool)

(assert (=> b!4580671 (=> (not res!1913874) (not e!2856481))))

(assert (=> b!4580671 (= res!1913874 (isDefined!8597 (getValueByKey!1254 (toList!4552 (extractMap!1328 (toList!4551 lm!1477))) key!3287)))))

(declare-fun b!4580672 () Bool)

(declare-fun e!2856480 () Unit!105525)

(assert (=> b!4580672 (= e!2856480 e!2856483)))

(declare-fun c!783983 () Bool)

(declare-fun call!319734 () Bool)

(assert (=> b!4580672 (= c!783983 call!319734)))

(declare-fun b!4580673 () Bool)

(assert (=> b!4580673 (= e!2856481 (contains!13849 (keys!17800 (extractMap!1328 (toList!4551 lm!1477))) key!3287))))

(declare-fun b!4580674 () Bool)

(declare-fun e!2856479 () List!51077)

(assert (=> b!4580674 (= e!2856479 (keys!17800 (extractMap!1328 (toList!4551 lm!1477))))))

(declare-fun b!4580675 () Bool)

(declare-fun lt!1745873 () Unit!105525)

(assert (=> b!4580675 (= e!2856480 lt!1745873)))

(declare-fun lt!1745871 () Unit!105525)

(assert (=> b!4580675 (= lt!1745871 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 (extractMap!1328 (toList!4551 lm!1477))) key!3287))))

(assert (=> b!4580675 (isDefined!8597 (getValueByKey!1254 (toList!4552 (extractMap!1328 (toList!4551 lm!1477))) key!3287))))

(declare-fun lt!1745876 () Unit!105525)

(assert (=> b!4580675 (= lt!1745876 lt!1745871)))

(assert (=> b!4580675 (= lt!1745873 (lemmaInListThenGetKeysListContains!540 (toList!4552 (extractMap!1328 (toList!4551 lm!1477))) key!3287))))

(assert (=> b!4580675 call!319734))

(declare-fun bm!319729 () Bool)

(assert (=> bm!319729 (= call!319734 (contains!13849 e!2856479 key!3287))))

(declare-fun c!783982 () Bool)

(declare-fun c!783984 () Bool)

(assert (=> bm!319729 (= c!783982 c!783984)))

(declare-fun d!1434460 () Bool)

(assert (=> d!1434460 e!2856478))

(declare-fun res!1913875 () Bool)

(assert (=> d!1434460 (=> res!1913875 e!2856478)))

(declare-fun e!2856482 () Bool)

(assert (=> d!1434460 (= res!1913875 e!2856482)))

(declare-fun res!1913873 () Bool)

(assert (=> d!1434460 (=> (not res!1913873) (not e!2856482))))

(declare-fun lt!1745872 () Bool)

(assert (=> d!1434460 (= res!1913873 (not lt!1745872))))

(declare-fun lt!1745877 () Bool)

(assert (=> d!1434460 (= lt!1745872 lt!1745877)))

(declare-fun lt!1745870 () Unit!105525)

(assert (=> d!1434460 (= lt!1745870 e!2856480)))

(assert (=> d!1434460 (= c!783984 lt!1745877)))

(assert (=> d!1434460 (= lt!1745877 (containsKey!2057 (toList!4552 (extractMap!1328 (toList!4551 lm!1477))) key!3287))))

(assert (=> d!1434460 (= (contains!13846 (extractMap!1328 (toList!4551 lm!1477)) key!3287) lt!1745872)))

(declare-fun b!4580676 () Bool)

(assert (=> b!4580676 (= e!2856479 (getKeysList!544 (toList!4552 (extractMap!1328 (toList!4551 lm!1477)))))))

(declare-fun b!4580677 () Bool)

(assert (=> b!4580677 false))

(declare-fun lt!1745874 () Unit!105525)

(declare-fun lt!1745875 () Unit!105525)

(assert (=> b!4580677 (= lt!1745874 lt!1745875)))

(assert (=> b!4580677 (containsKey!2057 (toList!4552 (extractMap!1328 (toList!4551 lm!1477))) key!3287)))

(assert (=> b!4580677 (= lt!1745875 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 (extractMap!1328 (toList!4551 lm!1477))) key!3287))))

(declare-fun Unit!105653 () Unit!105525)

(assert (=> b!4580677 (= e!2856483 Unit!105653)))

(declare-fun b!4580678 () Bool)

(assert (=> b!4580678 (= e!2856482 (not (contains!13849 (keys!17800 (extractMap!1328 (toList!4551 lm!1477))) key!3287)))))

(assert (= (and d!1434460 c!783984) b!4580675))

(assert (= (and d!1434460 (not c!783984)) b!4580672))

(assert (= (and b!4580672 c!783983) b!4580677))

(assert (= (and b!4580672 (not c!783983)) b!4580670))

(assert (= (or b!4580675 b!4580672) bm!319729))

(assert (= (and bm!319729 c!783982) b!4580676))

(assert (= (and bm!319729 (not c!783982)) b!4580674))

(assert (= (and d!1434460 res!1913873) b!4580678))

(assert (= (and d!1434460 (not res!1913875)) b!4580671))

(assert (= (and b!4580671 res!1913874) b!4580673))

(declare-fun m!5391285 () Bool)

(assert (=> b!4580677 m!5391285))

(declare-fun m!5391287 () Bool)

(assert (=> b!4580677 m!5391287))

(assert (=> b!4580678 m!5389809))

(declare-fun m!5391289 () Bool)

(assert (=> b!4580678 m!5391289))

(assert (=> b!4580678 m!5391289))

(declare-fun m!5391291 () Bool)

(assert (=> b!4580678 m!5391291))

(declare-fun m!5391293 () Bool)

(assert (=> b!4580671 m!5391293))

(assert (=> b!4580671 m!5391293))

(declare-fun m!5391295 () Bool)

(assert (=> b!4580671 m!5391295))

(declare-fun m!5391297 () Bool)

(assert (=> b!4580676 m!5391297))

(assert (=> b!4580674 m!5389809))

(assert (=> b!4580674 m!5391289))

(declare-fun m!5391299 () Bool)

(assert (=> b!4580675 m!5391299))

(assert (=> b!4580675 m!5391293))

(assert (=> b!4580675 m!5391293))

(assert (=> b!4580675 m!5391295))

(declare-fun m!5391301 () Bool)

(assert (=> b!4580675 m!5391301))

(assert (=> d!1434460 m!5391285))

(declare-fun m!5391303 () Bool)

(assert (=> bm!319729 m!5391303))

(assert (=> b!4580673 m!5389809))

(assert (=> b!4580673 m!5391289))

(assert (=> b!4580673 m!5391289))

(assert (=> b!4580673 m!5391291))

(assert (=> d!1434136 d!1434460))

(assert (=> d!1434136 d!1434056))

(declare-fun d!1434462 () Bool)

(assert (=> d!1434462 (not (contains!13846 (extractMap!1328 (toList!4551 lm!1477)) key!3287))))

(assert (=> d!1434462 true))

(declare-fun _$26!494 () Unit!105525)

(assert (=> d!1434462 (= (choose!30517 lm!1477 key!3287 hashF!1107) _$26!494)))

(declare-fun bs!972478 () Bool)

(assert (= bs!972478 d!1434462))

(assert (=> bs!972478 m!5389809))

(assert (=> bs!972478 m!5389809))

(assert (=> bs!972478 m!5390391))

(assert (=> d!1434136 d!1434462))

(declare-fun d!1434464 () Bool)

(declare-fun res!1913876 () Bool)

(declare-fun e!2856484 () Bool)

(assert (=> d!1434464 (=> res!1913876 e!2856484)))

(assert (=> d!1434464 (= res!1913876 ((_ is Nil!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434464 (= (forall!10500 (toList!4551 lm!1477) lambda!183150) e!2856484)))

(declare-fun b!4580679 () Bool)

(declare-fun e!2856485 () Bool)

(assert (=> b!4580679 (= e!2856484 e!2856485)))

(declare-fun res!1913877 () Bool)

(assert (=> b!4580679 (=> (not res!1913877) (not e!2856485))))

(assert (=> b!4580679 (= res!1913877 (dynLambda!21335 lambda!183150 (h!56886 (toList!4551 lm!1477))))))

(declare-fun b!4580680 () Bool)

(assert (=> b!4580680 (= e!2856485 (forall!10500 (t!358065 (toList!4551 lm!1477)) lambda!183150))))

(assert (= (and d!1434464 (not res!1913876)) b!4580679))

(assert (= (and b!4580679 res!1913877) b!4580680))

(declare-fun b_lambda!166071 () Bool)

(assert (=> (not b_lambda!166071) (not b!4580679)))

(declare-fun m!5391305 () Bool)

(assert (=> b!4580679 m!5391305))

(declare-fun m!5391307 () Bool)

(assert (=> b!4580680 m!5391307))

(assert (=> d!1434136 d!1434464))

(assert (=> b!4580307 d!1434444))

(declare-fun bs!972479 () Bool)

(declare-fun b!4580707 () Bool)

(assert (= bs!972479 (and b!4580707 b!4580471)))

(declare-fun lambda!183224 () Int)

(assert (=> bs!972479 (= (= (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183224 lambda!183186))))

(declare-fun bs!972480 () Bool)

(assert (= bs!972480 (and b!4580707 b!4580522)))

(assert (=> bs!972480 (= (= (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (toList!4552 lt!1745232)) (= lambda!183224 lambda!183188))))

(declare-fun bs!972481 () Bool)

(assert (= bs!972481 (and b!4580707 b!4580541)))

(assert (=> bs!972481 (= (= (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (toList!4552 lt!1745243)) (= lambda!183224 lambda!183195))))

(assert (=> b!4580707 true))

(declare-fun bs!972482 () Bool)

(declare-fun b!4580705 () Bool)

(assert (= bs!972482 (and b!4580705 b!4580471)))

(declare-fun lambda!183225 () Int)

(assert (=> bs!972482 (= (= (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183225 lambda!183186))))

(declare-fun bs!972483 () Bool)

(assert (= bs!972483 (and b!4580705 b!4580522)))

(assert (=> bs!972483 (= (= (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (toList!4552 lt!1745232)) (= lambda!183225 lambda!183188))))

(declare-fun bs!972484 () Bool)

(assert (= bs!972484 (and b!4580705 b!4580541)))

(assert (=> bs!972484 (= (= (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (toList!4552 lt!1745243)) (= lambda!183225 lambda!183195))))

(declare-fun bs!972485 () Bool)

(assert (= bs!972485 (and b!4580705 b!4580707)))

(assert (=> bs!972485 (= (= (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183225 lambda!183224))))

(assert (=> b!4580705 true))

(declare-fun bs!972486 () Bool)

(declare-fun b!4580703 () Bool)

(assert (= bs!972486 (and b!4580703 b!4580522)))

(declare-fun lambda!183226 () Int)

(assert (=> bs!972486 (= (= (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (toList!4552 lt!1745232)) (= lambda!183226 lambda!183188))))

(declare-fun bs!972487 () Bool)

(assert (= bs!972487 (and b!4580703 b!4580471)))

(assert (=> bs!972487 (= lambda!183226 lambda!183186)))

(declare-fun bs!972488 () Bool)

(assert (= bs!972488 (and b!4580703 b!4580707)))

(assert (=> bs!972488 (= (= (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183226 lambda!183224))))

(declare-fun bs!972489 () Bool)

(assert (= bs!972489 (and b!4580703 b!4580705)))

(assert (=> bs!972489 (= (= (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183226 lambda!183225))))

(declare-fun bs!972490 () Bool)

(assert (= bs!972490 (and b!4580703 b!4580541)))

(assert (=> bs!972490 (= (= (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (toList!4552 lt!1745243)) (= lambda!183226 lambda!183195))))

(assert (=> b!4580703 true))

(declare-fun bs!972491 () Bool)

(declare-fun b!4580706 () Bool)

(assert (= bs!972491 (and b!4580706 b!4580472)))

(declare-fun lambda!183227 () Int)

(assert (=> bs!972491 (= lambda!183227 lambda!183187)))

(declare-fun bs!972492 () Bool)

(assert (= bs!972492 (and b!4580706 b!4580523)))

(assert (=> bs!972492 (= lambda!183227 lambda!183189)))

(declare-fun bs!972493 () Bool)

(assert (= bs!972493 (and b!4580706 b!4580542)))

(assert (=> bs!972493 (= lambda!183227 lambda!183196)))

(declare-fun b!4580699 () Bool)

(declare-fun e!2856496 () Unit!105525)

(declare-fun Unit!105665 () Unit!105525)

(assert (=> b!4580699 (= e!2856496 Unit!105665)))

(declare-fun b!4580700 () Bool)

(assert (=> b!4580700 false))

(declare-fun Unit!105666 () Unit!105525)

(assert (=> b!4580700 (= e!2856496 Unit!105666)))

(declare-fun b!4580701 () Bool)

(declare-fun e!2856494 () Unit!105525)

(declare-fun Unit!105667 () Unit!105525)

(assert (=> b!4580701 (= e!2856494 Unit!105667)))

(declare-fun d!1434466 () Bool)

(declare-fun e!2856497 () Bool)

(assert (=> d!1434466 e!2856497))

(declare-fun res!1913885 () Bool)

(assert (=> d!1434466 (=> (not res!1913885) (not e!2856497))))

(declare-fun lt!1745895 () List!51077)

(assert (=> d!1434466 (= res!1913885 (noDuplicate!791 lt!1745895))))

(declare-fun e!2856495 () List!51077)

(assert (=> d!1434466 (= lt!1745895 e!2856495)))

(declare-fun c!783991 () Bool)

(assert (=> d!1434466 (= c!783991 ((_ is Cons!50950) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))

(assert (=> d!1434466 (invariantList!1097 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))

(assert (=> d!1434466 (= (getKeysList!544 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) lt!1745895)))

(declare-fun b!4580702 () Bool)

(declare-fun res!1913886 () Bool)

(assert (=> b!4580702 (=> (not res!1913886) (not e!2856497))))

(assert (=> b!4580702 (= res!1913886 (= (length!438 lt!1745895) (length!439 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))))

(declare-fun res!1913884 () Bool)

(assert (=> b!4580703 (=> (not res!1913884) (not e!2856497))))

(assert (=> b!4580703 (= res!1913884 (forall!10503 lt!1745895 lambda!183226))))

(declare-fun b!4580704 () Bool)

(assert (=> b!4580704 (= e!2856495 Nil!50953)))

(assert (=> b!4580705 (= e!2856495 (Cons!50953 (_1!29055 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (getKeysList!544 (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))))

(declare-fun c!783993 () Bool)

(assert (=> b!4580705 (= c!783993 (containsKey!2057 (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (_1!29055 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))))

(declare-fun lt!1745894 () Unit!105525)

(assert (=> b!4580705 (= lt!1745894 e!2856496)))

(declare-fun c!783992 () Bool)

(assert (=> b!4580705 (= c!783992 (contains!13849 (getKeysList!544 (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (_1!29055 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))))

(declare-fun lt!1745896 () Unit!105525)

(assert (=> b!4580705 (= lt!1745896 e!2856494)))

(declare-fun lt!1745892 () List!51077)

(assert (=> b!4580705 (= lt!1745892 (getKeysList!544 (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))))

(declare-fun lt!1745898 () Unit!105525)

(declare-fun lemmaForallContainsAddHeadPreserves!211 (List!51074 List!51077 tuple2!51522) Unit!105525)

(assert (=> b!4580705 (= lt!1745898 (lemmaForallContainsAddHeadPreserves!211 (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) lt!1745892 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))))

(assert (=> b!4580705 (forall!10503 lt!1745892 lambda!183225)))

(declare-fun lt!1745897 () Unit!105525)

(assert (=> b!4580705 (= lt!1745897 lt!1745898)))

(assert (=> b!4580706 (= e!2856497 (= (content!8587 lt!1745895) (content!8587 (map!11238 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) lambda!183227))))))

(assert (=> b!4580707 false))

(declare-fun lt!1745893 () Unit!105525)

(declare-fun forallContained!2766 (List!51077 Int K!12320) Unit!105525)

(assert (=> b!4580707 (= lt!1745893 (forallContained!2766 (getKeysList!544 (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) lambda!183224 (_1!29055 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))))

(declare-fun Unit!105668 () Unit!105525)

(assert (=> b!4580707 (= e!2856494 Unit!105668)))

(assert (= (and d!1434466 c!783991) b!4580705))

(assert (= (and d!1434466 (not c!783991)) b!4580704))

(assert (= (and b!4580705 c!783993) b!4580700))

(assert (= (and b!4580705 (not c!783993)) b!4580699))

(assert (= (and b!4580705 c!783992) b!4580707))

(assert (= (and b!4580705 (not c!783992)) b!4580701))

(assert (= (and d!1434466 res!1913885) b!4580702))

(assert (= (and b!4580702 res!1913886) b!4580703))

(assert (= (and b!4580703 res!1913884) b!4580706))

(declare-fun m!5391309 () Bool)

(assert (=> b!4580703 m!5391309))

(declare-fun m!5391311 () Bool)

(assert (=> b!4580707 m!5391311))

(assert (=> b!4580707 m!5391311))

(declare-fun m!5391313 () Bool)

(assert (=> b!4580707 m!5391313))

(assert (=> b!4580705 m!5391311))

(declare-fun m!5391315 () Bool)

(assert (=> b!4580705 m!5391315))

(assert (=> b!4580705 m!5391311))

(declare-fun m!5391317 () Bool)

(assert (=> b!4580705 m!5391317))

(declare-fun m!5391319 () Bool)

(assert (=> b!4580705 m!5391319))

(declare-fun m!5391321 () Bool)

(assert (=> b!4580705 m!5391321))

(declare-fun m!5391323 () Bool)

(assert (=> b!4580706 m!5391323))

(declare-fun m!5391325 () Bool)

(assert (=> b!4580706 m!5391325))

(assert (=> b!4580706 m!5391325))

(declare-fun m!5391327 () Bool)

(assert (=> b!4580706 m!5391327))

(declare-fun m!5391329 () Bool)

(assert (=> d!1434466 m!5391329))

(assert (=> d!1434466 m!5390879))

(declare-fun m!5391331 () Bool)

(assert (=> b!4580702 m!5391331))

(assert (=> b!4580702 m!5390831))

(assert (=> b!4580406 d!1434466))

(declare-fun d!1434468 () Bool)

(declare-fun e!2856498 () Bool)

(assert (=> d!1434468 e!2856498))

(declare-fun res!1913887 () Bool)

(assert (=> d!1434468 (=> res!1913887 e!2856498)))

(declare-fun lt!1745899 () Bool)

(assert (=> d!1434468 (= res!1913887 (not lt!1745899))))

(declare-fun lt!1745900 () Bool)

(assert (=> d!1434468 (= lt!1745899 lt!1745900)))

(declare-fun lt!1745901 () Unit!105525)

(declare-fun e!2856499 () Unit!105525)

(assert (=> d!1434468 (= lt!1745901 e!2856499)))

(declare-fun c!783994 () Bool)

(assert (=> d!1434468 (= c!783994 lt!1745900)))

(assert (=> d!1434468 (= lt!1745900 (containsKey!2056 (toList!4551 lt!1745270) (_1!29056 lt!1745211)))))

(assert (=> d!1434468 (= (contains!13847 lt!1745270 (_1!29056 lt!1745211)) lt!1745899)))

(declare-fun b!4580710 () Bool)

(declare-fun lt!1745902 () Unit!105525)

(assert (=> b!4580710 (= e!2856499 lt!1745902)))

(assert (=> b!4580710 (= lt!1745902 (lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (toList!4551 lt!1745270) (_1!29056 lt!1745211)))))

(assert (=> b!4580710 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745270) (_1!29056 lt!1745211)))))

(declare-fun b!4580711 () Bool)

(declare-fun Unit!105669 () Unit!105525)

(assert (=> b!4580711 (= e!2856499 Unit!105669)))

(declare-fun b!4580712 () Bool)

(assert (=> b!4580712 (= e!2856498 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745270) (_1!29056 lt!1745211))))))

(assert (= (and d!1434468 c!783994) b!4580710))

(assert (= (and d!1434468 (not c!783994)) b!4580711))

(assert (= (and d!1434468 (not res!1913887)) b!4580712))

(declare-fun m!5391333 () Bool)

(assert (=> d!1434468 m!5391333))

(declare-fun m!5391335 () Bool)

(assert (=> b!4580710 m!5391335))

(assert (=> b!4580710 m!5389911))

(assert (=> b!4580710 m!5389911))

(declare-fun m!5391337 () Bool)

(assert (=> b!4580710 m!5391337))

(assert (=> b!4580712 m!5389911))

(assert (=> b!4580712 m!5389911))

(assert (=> b!4580712 m!5391337))

(assert (=> d!1434010 d!1434468))

(declare-fun d!1434470 () Bool)

(declare-fun c!783995 () Bool)

(assert (=> d!1434470 (= c!783995 (and ((_ is Cons!50951) lt!1745268) (= (_1!29056 (h!56886 lt!1745268)) (_1!29056 lt!1745211))))))

(declare-fun e!2856500 () Option!11327)

(assert (=> d!1434470 (= (getValueByKey!1253 lt!1745268 (_1!29056 lt!1745211)) e!2856500)))

(declare-fun b!4580716 () Bool)

(declare-fun e!2856501 () Option!11327)

(assert (=> b!4580716 (= e!2856501 None!11326)))

(declare-fun b!4580715 () Bool)

(assert (=> b!4580715 (= e!2856501 (getValueByKey!1253 (t!358065 lt!1745268) (_1!29056 lt!1745211)))))

(declare-fun b!4580713 () Bool)

(assert (=> b!4580713 (= e!2856500 (Some!11326 (_2!29056 (h!56886 lt!1745268))))))

(declare-fun b!4580714 () Bool)

(assert (=> b!4580714 (= e!2856500 e!2856501)))

(declare-fun c!783996 () Bool)

(assert (=> b!4580714 (= c!783996 (and ((_ is Cons!50951) lt!1745268) (not (= (_1!29056 (h!56886 lt!1745268)) (_1!29056 lt!1745211)))))))

(assert (= (and d!1434470 c!783995) b!4580713))

(assert (= (and d!1434470 (not c!783995)) b!4580714))

(assert (= (and b!4580714 c!783996) b!4580715))

(assert (= (and b!4580714 (not c!783996)) b!4580716))

(declare-fun m!5391339 () Bool)

(assert (=> b!4580715 m!5391339))

(assert (=> d!1434010 d!1434470))

(declare-fun d!1434472 () Bool)

(assert (=> d!1434472 (= (getValueByKey!1253 lt!1745268 (_1!29056 lt!1745211)) (Some!11326 (_2!29056 lt!1745211)))))

(declare-fun lt!1745905 () Unit!105525)

(declare-fun choose!30539 (List!51075 (_ BitVec 64) List!51074) Unit!105525)

(assert (=> d!1434472 (= lt!1745905 (choose!30539 lt!1745268 (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))

(declare-fun e!2856504 () Bool)

(assert (=> d!1434472 e!2856504))

(declare-fun res!1913892 () Bool)

(assert (=> d!1434472 (=> (not res!1913892) (not e!2856504))))

(assert (=> d!1434472 (= res!1913892 (isStrictlySorted!512 lt!1745268))))

(assert (=> d!1434472 (= (lemmaContainsTupThenGetReturnValue!777 lt!1745268 (_1!29056 lt!1745211) (_2!29056 lt!1745211)) lt!1745905)))

(declare-fun b!4580721 () Bool)

(declare-fun res!1913893 () Bool)

(assert (=> b!4580721 (=> (not res!1913893) (not e!2856504))))

(assert (=> b!4580721 (= res!1913893 (containsKey!2056 lt!1745268 (_1!29056 lt!1745211)))))

(declare-fun b!4580722 () Bool)

(assert (=> b!4580722 (= e!2856504 (contains!13845 lt!1745268 (tuple2!51525 (_1!29056 lt!1745211) (_2!29056 lt!1745211))))))

(assert (= (and d!1434472 res!1913892) b!4580721))

(assert (= (and b!4580721 res!1913893) b!4580722))

(assert (=> d!1434472 m!5389905))

(declare-fun m!5391341 () Bool)

(assert (=> d!1434472 m!5391341))

(declare-fun m!5391343 () Bool)

(assert (=> d!1434472 m!5391343))

(declare-fun m!5391345 () Bool)

(assert (=> b!4580721 m!5391345))

(declare-fun m!5391347 () Bool)

(assert (=> b!4580722 m!5391347))

(assert (=> d!1434010 d!1434472))

(declare-fun b!4580743 () Bool)

(declare-fun e!2856516 () List!51075)

(declare-fun call!319742 () List!51075)

(assert (=> b!4580743 (= e!2856516 call!319742)))

(declare-fun d!1434474 () Bool)

(declare-fun e!2856518 () Bool)

(assert (=> d!1434474 e!2856518))

(declare-fun res!1913898 () Bool)

(assert (=> d!1434474 (=> (not res!1913898) (not e!2856518))))

(declare-fun lt!1745908 () List!51075)

(assert (=> d!1434474 (= res!1913898 (isStrictlySorted!512 lt!1745908))))

(assert (=> d!1434474 (= lt!1745908 e!2856516)))

(declare-fun c!784005 () Bool)

(assert (=> d!1434474 (= c!784005 (and ((_ is Cons!50951) (toList!4551 lm!1477)) (bvslt (_1!29056 (h!56886 (toList!4551 lm!1477))) (_1!29056 lt!1745211))))))

(assert (=> d!1434474 (isStrictlySorted!512 (toList!4551 lm!1477))))

(assert (=> d!1434474 (= (insertStrictlySorted!477 (toList!4551 lm!1477) (_1!29056 lt!1745211) (_2!29056 lt!1745211)) lt!1745908)))

(declare-fun b!4580744 () Bool)

(declare-fun e!2856515 () List!51075)

(assert (=> b!4580744 (= e!2856516 e!2856515)))

(declare-fun c!784008 () Bool)

(assert (=> b!4580744 (= c!784008 (and ((_ is Cons!50951) (toList!4551 lm!1477)) (= (_1!29056 (h!56886 (toList!4551 lm!1477))) (_1!29056 lt!1745211))))))

(declare-fun bm!319736 () Bool)

(declare-fun call!319741 () List!51075)

(assert (=> bm!319736 (= call!319741 call!319742)))

(declare-fun b!4580745 () Bool)

(declare-fun e!2856517 () List!51075)

(declare-fun call!319743 () List!51075)

(assert (=> b!4580745 (= e!2856517 call!319743)))

(declare-fun b!4580746 () Bool)

(declare-fun c!784007 () Bool)

(assert (=> b!4580746 (= c!784007 (and ((_ is Cons!50951) (toList!4551 lm!1477)) (bvsgt (_1!29056 (h!56886 (toList!4551 lm!1477))) (_1!29056 lt!1745211))))))

(assert (=> b!4580746 (= e!2856515 e!2856517)))

(declare-fun b!4580747 () Bool)

(assert (=> b!4580747 (= e!2856518 (contains!13845 lt!1745908 (tuple2!51525 (_1!29056 lt!1745211) (_2!29056 lt!1745211))))))

(declare-fun e!2856519 () List!51075)

(declare-fun bm!319737 () Bool)

(declare-fun $colon$colon!1022 (List!51075 tuple2!51524) List!51075)

(assert (=> bm!319737 (= call!319742 ($colon$colon!1022 e!2856519 (ite c!784005 (h!56886 (toList!4551 lm!1477)) (tuple2!51525 (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))))

(declare-fun c!784006 () Bool)

(assert (=> bm!319737 (= c!784006 c!784005)))

(declare-fun b!4580748 () Bool)

(declare-fun res!1913899 () Bool)

(assert (=> b!4580748 (=> (not res!1913899) (not e!2856518))))

(assert (=> b!4580748 (= res!1913899 (containsKey!2056 lt!1745908 (_1!29056 lt!1745211)))))

(declare-fun b!4580749 () Bool)

(assert (=> b!4580749 (= e!2856515 call!319741)))

(declare-fun bm!319738 () Bool)

(assert (=> bm!319738 (= call!319743 call!319741)))

(declare-fun b!4580750 () Bool)

(assert (=> b!4580750 (= e!2856519 (insertStrictlySorted!477 (t!358065 (toList!4551 lm!1477)) (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))

(declare-fun b!4580751 () Bool)

(assert (=> b!4580751 (= e!2856517 call!319743)))

(declare-fun b!4580752 () Bool)

(assert (=> b!4580752 (= e!2856519 (ite c!784008 (t!358065 (toList!4551 lm!1477)) (ite c!784007 (Cons!50951 (h!56886 (toList!4551 lm!1477)) (t!358065 (toList!4551 lm!1477))) Nil!50951)))))

(assert (= (and d!1434474 c!784005) b!4580743))

(assert (= (and d!1434474 (not c!784005)) b!4580744))

(assert (= (and b!4580744 c!784008) b!4580749))

(assert (= (and b!4580744 (not c!784008)) b!4580746))

(assert (= (and b!4580746 c!784007) b!4580745))

(assert (= (and b!4580746 (not c!784007)) b!4580751))

(assert (= (or b!4580745 b!4580751) bm!319738))

(assert (= (or b!4580749 bm!319738) bm!319736))

(assert (= (or b!4580743 bm!319736) bm!319737))

(assert (= (and bm!319737 c!784006) b!4580750))

(assert (= (and bm!319737 (not c!784006)) b!4580752))

(assert (= (and d!1434474 res!1913898) b!4580748))

(assert (= (and b!4580748 res!1913899) b!4580747))

(declare-fun m!5391349 () Bool)

(assert (=> b!4580750 m!5391349))

(declare-fun m!5391351 () Bool)

(assert (=> b!4580748 m!5391351))

(declare-fun m!5391353 () Bool)

(assert (=> b!4580747 m!5391353))

(declare-fun m!5391355 () Bool)

(assert (=> bm!319737 m!5391355))

(declare-fun m!5391357 () Bool)

(assert (=> d!1434474 m!5391357))

(assert (=> d!1434474 m!5390631))

(assert (=> d!1434010 d!1434474))

(declare-fun d!1434476 () Bool)

(declare-fun c!784011 () Bool)

(assert (=> d!1434476 (= c!784011 ((_ is Nil!50953) (keys!17800 lt!1745243)))))

(declare-fun e!2856522 () (InoxSet K!12320))

(assert (=> d!1434476 (= (content!8587 (keys!17800 lt!1745243)) e!2856522)))

(declare-fun b!4580757 () Bool)

(assert (=> b!4580757 (= e!2856522 ((as const (Array K!12320 Bool)) false))))

(declare-fun b!4580758 () Bool)

(assert (=> b!4580758 (= e!2856522 ((_ map or) (store ((as const (Array K!12320 Bool)) false) (h!56890 (keys!17800 lt!1745243)) true) (content!8587 (t!358067 (keys!17800 lt!1745243)))))))

(assert (= (and d!1434476 c!784011) b!4580757))

(assert (= (and d!1434476 (not c!784011)) b!4580758))

(declare-fun m!5391359 () Bool)

(assert (=> b!4580758 m!5391359))

(declare-fun m!5391361 () Bool)

(assert (=> b!4580758 m!5391361))

(assert (=> b!4580344 d!1434476))

(assert (=> b!4580344 d!1434342))

(declare-fun d!1434478 () Bool)

(declare-fun c!784012 () Bool)

(assert (=> d!1434478 (= c!784012 ((_ is Nil!50953) (keys!17800 lt!1745657)))))

(declare-fun e!2856523 () (InoxSet K!12320))

(assert (=> d!1434478 (= (content!8587 (keys!17800 lt!1745657)) e!2856523)))

(declare-fun b!4580759 () Bool)

(assert (=> b!4580759 (= e!2856523 ((as const (Array K!12320 Bool)) false))))

(declare-fun b!4580760 () Bool)

(assert (=> b!4580760 (= e!2856523 ((_ map or) (store ((as const (Array K!12320 Bool)) false) (h!56890 (keys!17800 lt!1745657)) true) (content!8587 (t!358067 (keys!17800 lt!1745657)))))))

(assert (= (and d!1434478 c!784012) b!4580759))

(assert (= (and d!1434478 (not c!784012)) b!4580760))

(declare-fun m!5391363 () Bool)

(assert (=> b!4580760 m!5391363))

(declare-fun m!5391365 () Bool)

(assert (=> b!4580760 m!5391365))

(assert (=> b!4580344 d!1434478))

(declare-fun bs!972494 () Bool)

(declare-fun b!4580762 () Bool)

(assert (= bs!972494 (and b!4580762 b!4580522)))

(declare-fun lambda!183228 () Int)

(assert (=> bs!972494 (= (= (toList!4552 lt!1745657) (toList!4552 lt!1745232)) (= lambda!183228 lambda!183188))))

(declare-fun bs!972495 () Bool)

(assert (= bs!972495 (and b!4580762 b!4580703)))

(assert (=> bs!972495 (= (= (toList!4552 lt!1745657) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183228 lambda!183226))))

(declare-fun bs!972496 () Bool)

(assert (= bs!972496 (and b!4580762 b!4580471)))

(assert (=> bs!972496 (= (= (toList!4552 lt!1745657) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183228 lambda!183186))))

(declare-fun bs!972497 () Bool)

(assert (= bs!972497 (and b!4580762 b!4580707)))

(assert (=> bs!972497 (= (= (toList!4552 lt!1745657) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183228 lambda!183224))))

(declare-fun bs!972498 () Bool)

(assert (= bs!972498 (and b!4580762 b!4580705)))

(assert (=> bs!972498 (= (= (toList!4552 lt!1745657) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183228 lambda!183225))))

(declare-fun bs!972499 () Bool)

(assert (= bs!972499 (and b!4580762 b!4580541)))

(assert (=> bs!972499 (= (= (toList!4552 lt!1745657) (toList!4552 lt!1745243)) (= lambda!183228 lambda!183195))))

(assert (=> b!4580762 true))

(declare-fun bs!972500 () Bool)

(declare-fun b!4580763 () Bool)

(assert (= bs!972500 (and b!4580763 b!4580472)))

(declare-fun lambda!183229 () Int)

(assert (=> bs!972500 (= lambda!183229 lambda!183187)))

(declare-fun bs!972501 () Bool)

(assert (= bs!972501 (and b!4580763 b!4580523)))

(assert (=> bs!972501 (= lambda!183229 lambda!183189)))

(declare-fun bs!972502 () Bool)

(assert (= bs!972502 (and b!4580763 b!4580542)))

(assert (=> bs!972502 (= lambda!183229 lambda!183196)))

(declare-fun bs!972503 () Bool)

(assert (= bs!972503 (and b!4580763 b!4580706)))

(assert (=> bs!972503 (= lambda!183229 lambda!183227)))

(declare-fun d!1434480 () Bool)

(declare-fun e!2856524 () Bool)

(assert (=> d!1434480 e!2856524))

(declare-fun res!1913900 () Bool)

(assert (=> d!1434480 (=> (not res!1913900) (not e!2856524))))

(declare-fun lt!1745909 () List!51077)

(assert (=> d!1434480 (= res!1913900 (noDuplicate!791 lt!1745909))))

(assert (=> d!1434480 (= lt!1745909 (getKeysList!544 (toList!4552 lt!1745657)))))

(assert (=> d!1434480 (= (keys!17800 lt!1745657) lt!1745909)))

(declare-fun b!4580761 () Bool)

(declare-fun res!1913902 () Bool)

(assert (=> b!4580761 (=> (not res!1913902) (not e!2856524))))

(assert (=> b!4580761 (= res!1913902 (= (length!438 lt!1745909) (length!439 (toList!4552 lt!1745657))))))

(declare-fun res!1913901 () Bool)

(assert (=> b!4580762 (=> (not res!1913901) (not e!2856524))))

(assert (=> b!4580762 (= res!1913901 (forall!10503 lt!1745909 lambda!183228))))

(assert (=> b!4580763 (= e!2856524 (= (content!8587 lt!1745909) (content!8587 (map!11238 (toList!4552 lt!1745657) lambda!183229))))))

(assert (= (and d!1434480 res!1913900) b!4580761))

(assert (= (and b!4580761 res!1913902) b!4580762))

(assert (= (and b!4580762 res!1913901) b!4580763))

(declare-fun m!5391367 () Bool)

(assert (=> d!1434480 m!5391367))

(declare-fun m!5391369 () Bool)

(assert (=> d!1434480 m!5391369))

(declare-fun m!5391371 () Bool)

(assert (=> b!4580761 m!5391371))

(declare-fun m!5391373 () Bool)

(assert (=> b!4580761 m!5391373))

(declare-fun m!5391375 () Bool)

(assert (=> b!4580762 m!5391375))

(declare-fun m!5391377 () Bool)

(assert (=> b!4580763 m!5391377))

(declare-fun m!5391379 () Bool)

(assert (=> b!4580763 m!5391379))

(assert (=> b!4580763 m!5391379))

(declare-fun m!5391381 () Bool)

(assert (=> b!4580763 m!5391381))

(assert (=> b!4580344 d!1434480))

(declare-fun d!1434482 () Bool)

(declare-fun res!1913903 () Bool)

(declare-fun e!2856525 () Bool)

(assert (=> d!1434482 (=> res!1913903 e!2856525)))

(assert (=> d!1434482 (= res!1913903 ((_ is Nil!50950) (ite c!783923 (toList!4552 lt!1745214) (_2!29056 lt!1745216))))))

(assert (=> d!1434482 (= (forall!10502 (ite c!783923 (toList!4552 lt!1745214) (_2!29056 lt!1745216)) (ite c!783923 lambda!183164 lambda!183166)) e!2856525)))

(declare-fun b!4580764 () Bool)

(declare-fun e!2856526 () Bool)

(assert (=> b!4580764 (= e!2856525 e!2856526)))

(declare-fun res!1913904 () Bool)

(assert (=> b!4580764 (=> (not res!1913904) (not e!2856526))))

(assert (=> b!4580764 (= res!1913904 (dynLambda!21336 (ite c!783923 lambda!183164 lambda!183166) (h!56885 (ite c!783923 (toList!4552 lt!1745214) (_2!29056 lt!1745216)))))))

(declare-fun b!4580765 () Bool)

(assert (=> b!4580765 (= e!2856526 (forall!10502 (t!358064 (ite c!783923 (toList!4552 lt!1745214) (_2!29056 lt!1745216))) (ite c!783923 lambda!183164 lambda!183166)))))

(assert (= (and d!1434482 (not res!1913903)) b!4580764))

(assert (= (and b!4580764 res!1913904) b!4580765))

(declare-fun b_lambda!166073 () Bool)

(assert (=> (not b_lambda!166073) (not b!4580764)))

(declare-fun m!5391383 () Bool)

(assert (=> b!4580764 m!5391383))

(declare-fun m!5391385 () Bool)

(assert (=> b!4580765 m!5391385))

(assert (=> bm!319713 d!1434482))

(declare-fun d!1434484 () Bool)

(declare-fun c!784013 () Bool)

(assert (=> d!1434484 (= c!784013 (and ((_ is Cons!50951) (toList!4551 lt!1745276)) (= (_1!29056 (h!56886 (toList!4551 lt!1745276))) (_1!29056 lt!1745216))))))

(declare-fun e!2856527 () Option!11327)

(assert (=> d!1434484 (= (getValueByKey!1253 (toList!4551 lt!1745276) (_1!29056 lt!1745216)) e!2856527)))

(declare-fun b!4580769 () Bool)

(declare-fun e!2856528 () Option!11327)

(assert (=> b!4580769 (= e!2856528 None!11326)))

(declare-fun b!4580768 () Bool)

(assert (=> b!4580768 (= e!2856528 (getValueByKey!1253 (t!358065 (toList!4551 lt!1745276)) (_1!29056 lt!1745216)))))

(declare-fun b!4580766 () Bool)

(assert (=> b!4580766 (= e!2856527 (Some!11326 (_2!29056 (h!56886 (toList!4551 lt!1745276)))))))

(declare-fun b!4580767 () Bool)

(assert (=> b!4580767 (= e!2856527 e!2856528)))

(declare-fun c!784014 () Bool)

(assert (=> b!4580767 (= c!784014 (and ((_ is Cons!50951) (toList!4551 lt!1745276)) (not (= (_1!29056 (h!56886 (toList!4551 lt!1745276))) (_1!29056 lt!1745216)))))))

(assert (= (and d!1434484 c!784013) b!4580766))

(assert (= (and d!1434484 (not c!784013)) b!4580767))

(assert (= (and b!4580767 c!784014) b!4580768))

(assert (= (and b!4580767 (not c!784014)) b!4580769))

(declare-fun m!5391387 () Bool)

(assert (=> b!4580768 m!5391387))

(assert (=> b!4580034 d!1434484))

(declare-fun bs!972504 () Bool)

(declare-fun b!4580773 () Bool)

(assert (= bs!972504 (and b!4580773 b!4580368)))

(declare-fun lambda!183230 () Int)

(assert (=> bs!972504 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745665) (= lambda!183230 lambda!183166))))

(declare-fun bs!972505 () Bool)

(assert (= bs!972505 (and b!4580773 b!4580664)))

(assert (=> bs!972505 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183230 lambda!183211))))

(declare-fun bs!972506 () Bool)

(assert (= bs!972506 (and b!4580773 b!4580305)))

(assert (=> bs!972506 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745627) (= lambda!183230 lambda!183159))))

(declare-fun bs!972507 () Bool)

(assert (= bs!972507 (and b!4580773 d!1434224)))

(assert (=> bs!972507 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745668) (= lambda!183230 lambda!183167))))

(declare-fun bs!972508 () Bool)

(assert (= bs!972508 (and b!4580773 d!1434338)))

(assert (=> bs!972508 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745759) (= lambda!183230 lambda!183193))))

(declare-fun bs!972509 () Bool)

(assert (= bs!972509 (and b!4580773 b!4580663)))

(assert (=> bs!972509 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745849) (= lambda!183230 lambda!183213))))

(declare-fun bs!972510 () Bool)

(assert (= bs!972510 (and b!4580773 d!1434184)))

(assert (=> bs!972510 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745630) (= lambda!183230 lambda!183160))))

(declare-fun bs!972511 () Bool)

(assert (= bs!972511 (and b!4580773 b!4580257)))

(assert (=> bs!972511 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745576) (= lambda!183230 lambda!183142))))

(declare-fun bs!972512 () Bool)

(assert (= bs!972512 (and b!4580773 d!1434446)))

(assert (=> bs!972512 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745852) (= lambda!183230 lambda!183214))))

(declare-fun bs!972513 () Bool)

(assert (= bs!972513 (and b!4580773 b!4580536)))

(assert (=> bs!972513 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183230 lambda!183190))))

(declare-fun bs!972514 () Bool)

(assert (= bs!972514 (and b!4580773 b!4580306)))

(assert (=> bs!972514 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745232) (= lambda!183230 lambda!183157))))

(declare-fun bs!972515 () Bool)

(assert (= bs!972515 (and b!4580773 d!1434424)))

(assert (=> bs!972515 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745214) (= lambda!183230 lambda!183205))))

(assert (=> bs!972504 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745214) (= lambda!183230 lambda!183165))))

(declare-fun bs!972516 () Bool)

(assert (= bs!972516 (and b!4580773 b!4580574)))

(assert (=> bs!972516 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745787) (= lambda!183230 lambda!183202))))

(declare-fun bs!972517 () Bool)

(assert (= bs!972517 (and b!4580773 d!1434366)))

(assert (=> bs!972517 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745790) (= lambda!183230 lambda!183203))))

(declare-fun bs!972518 () Bool)

(assert (= bs!972518 (and b!4580773 d!1434060)))

(assert (=> bs!972518 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745579) (= lambda!183230 lambda!183143))))

(assert (=> bs!972506 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745232) (= lambda!183230 lambda!183158))))

(declare-fun bs!972519 () Bool)

(assert (= bs!972519 (and b!4580773 b!4579991)))

(assert (=> bs!972519 (not (= lambda!183230 lambda!183043))))

(declare-fun bs!972520 () Bool)

(assert (= bs!972520 (and b!4580773 b!4580535)))

(assert (=> bs!972520 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745756) (= lambda!183230 lambda!183192))))

(declare-fun bs!972521 () Bool)

(assert (= bs!972521 (and b!4580773 b!4580369)))

(assert (=> bs!972521 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745214) (= lambda!183230 lambda!183164))))

(declare-fun bs!972522 () Bool)

(assert (= bs!972522 (and b!4580773 b!4580575)))

(assert (=> bs!972522 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183230 lambda!183200))))

(assert (=> bs!972520 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183230 lambda!183191))))

(assert (=> bs!972516 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183230 lambda!183201))))

(declare-fun bs!972523 () Bool)

(assert (= bs!972523 (and b!4580773 b!4580258)))

(assert (=> bs!972523 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745218) (= lambda!183230 lambda!183140))))

(assert (=> bs!972511 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745218) (= lambda!183230 lambda!183141))))

(declare-fun bs!972524 () Bool)

(assert (= bs!972524 (and b!4580773 d!1434448)))

(assert (=> bs!972524 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745218) (= lambda!183230 lambda!183215))))

(assert (=> bs!972509 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183230 lambda!183212))))

(declare-fun bs!972525 () Bool)

(assert (= bs!972525 (and b!4580773 d!1434344)))

(assert (=> bs!972525 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745232) (= lambda!183230 lambda!183199))))

(declare-fun bs!972526 () Bool)

(assert (= bs!972526 (and b!4580773 d!1434256)))

(assert (=> bs!972526 (not (= lambda!183230 lambda!183178))))

(declare-fun bs!972527 () Bool)

(assert (= bs!972527 (and b!4580773 d!1434442)))

(assert (=> bs!972527 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745627) (= lambda!183230 lambda!183210))))

(assert (=> b!4580773 true))

(declare-fun bs!972528 () Bool)

(declare-fun b!4580772 () Bool)

(assert (= bs!972528 (and b!4580772 b!4580368)))

(declare-fun lambda!183231 () Int)

(assert (=> bs!972528 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745665) (= lambda!183231 lambda!183166))))

(declare-fun bs!972529 () Bool)

(assert (= bs!972529 (and b!4580772 b!4580664)))

(assert (=> bs!972529 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183231 lambda!183211))))

(declare-fun bs!972530 () Bool)

(assert (= bs!972530 (and b!4580772 b!4580305)))

(assert (=> bs!972530 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745627) (= lambda!183231 lambda!183159))))

(declare-fun bs!972531 () Bool)

(assert (= bs!972531 (and b!4580772 d!1434224)))

(assert (=> bs!972531 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745668) (= lambda!183231 lambda!183167))))

(declare-fun bs!972532 () Bool)

(assert (= bs!972532 (and b!4580772 d!1434338)))

(assert (=> bs!972532 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745759) (= lambda!183231 lambda!183193))))

(declare-fun bs!972533 () Bool)

(assert (= bs!972533 (and b!4580772 b!4580663)))

(assert (=> bs!972533 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745849) (= lambda!183231 lambda!183213))))

(declare-fun bs!972534 () Bool)

(assert (= bs!972534 (and b!4580772 d!1434184)))

(assert (=> bs!972534 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745630) (= lambda!183231 lambda!183160))))

(declare-fun bs!972535 () Bool)

(assert (= bs!972535 (and b!4580772 b!4580257)))

(assert (=> bs!972535 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745576) (= lambda!183231 lambda!183142))))

(declare-fun bs!972536 () Bool)

(assert (= bs!972536 (and b!4580772 d!1434446)))

(assert (=> bs!972536 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745852) (= lambda!183231 lambda!183214))))

(declare-fun bs!972537 () Bool)

(assert (= bs!972537 (and b!4580772 b!4580536)))

(assert (=> bs!972537 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183231 lambda!183190))))

(declare-fun bs!972538 () Bool)

(assert (= bs!972538 (and b!4580772 b!4580306)))

(assert (=> bs!972538 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745232) (= lambda!183231 lambda!183157))))

(declare-fun bs!972539 () Bool)

(assert (= bs!972539 (and b!4580772 d!1434424)))

(assert (=> bs!972539 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745214) (= lambda!183231 lambda!183205))))

(assert (=> bs!972528 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745214) (= lambda!183231 lambda!183165))))

(declare-fun bs!972540 () Bool)

(assert (= bs!972540 (and b!4580772 b!4580574)))

(assert (=> bs!972540 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745787) (= lambda!183231 lambda!183202))))

(declare-fun bs!972541 () Bool)

(assert (= bs!972541 (and b!4580772 b!4580773)))

(assert (=> bs!972541 (= lambda!183231 lambda!183230)))

(declare-fun bs!972542 () Bool)

(assert (= bs!972542 (and b!4580772 d!1434366)))

(assert (=> bs!972542 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745790) (= lambda!183231 lambda!183203))))

(declare-fun bs!972543 () Bool)

(assert (= bs!972543 (and b!4580772 d!1434060)))

(assert (=> bs!972543 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745579) (= lambda!183231 lambda!183143))))

(assert (=> bs!972530 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745232) (= lambda!183231 lambda!183158))))

(declare-fun bs!972544 () Bool)

(assert (= bs!972544 (and b!4580772 b!4579991)))

(assert (=> bs!972544 (not (= lambda!183231 lambda!183043))))

(declare-fun bs!972545 () Bool)

(assert (= bs!972545 (and b!4580772 b!4580535)))

(assert (=> bs!972545 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745756) (= lambda!183231 lambda!183192))))

(declare-fun bs!972546 () Bool)

(assert (= bs!972546 (and b!4580772 b!4580369)))

(assert (=> bs!972546 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745214) (= lambda!183231 lambda!183164))))

(declare-fun bs!972547 () Bool)

(assert (= bs!972547 (and b!4580772 b!4580575)))

(assert (=> bs!972547 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183231 lambda!183200))))

(assert (=> bs!972545 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183231 lambda!183191))))

(assert (=> bs!972540 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183231 lambda!183201))))

(declare-fun bs!972548 () Bool)

(assert (= bs!972548 (and b!4580772 b!4580258)))

(assert (=> bs!972548 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745218) (= lambda!183231 lambda!183140))))

(assert (=> bs!972535 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745218) (= lambda!183231 lambda!183141))))

(declare-fun bs!972549 () Bool)

(assert (= bs!972549 (and b!4580772 d!1434448)))

(assert (=> bs!972549 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745218) (= lambda!183231 lambda!183215))))

(assert (=> bs!972533 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183231 lambda!183212))))

(declare-fun bs!972550 () Bool)

(assert (= bs!972550 (and b!4580772 d!1434344)))

(assert (=> bs!972550 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745232) (= lambda!183231 lambda!183199))))

(declare-fun bs!972551 () Bool)

(assert (= bs!972551 (and b!4580772 d!1434256)))

(assert (=> bs!972551 (not (= lambda!183231 lambda!183178))))

(declare-fun bs!972552 () Bool)

(assert (= bs!972552 (and b!4580772 d!1434442)))

(assert (=> bs!972552 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745627) (= lambda!183231 lambda!183210))))

(assert (=> b!4580772 true))

(declare-fun lt!1745913 () ListMap!3813)

(declare-fun lambda!183232 () Int)

(assert (=> bs!972528 (= (= lt!1745913 lt!1745665) (= lambda!183232 lambda!183166))))

(assert (=> bs!972529 (= (= lt!1745913 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183232 lambda!183211))))

(assert (=> bs!972530 (= (= lt!1745913 lt!1745627) (= lambda!183232 lambda!183159))))

(assert (=> bs!972531 (= (= lt!1745913 lt!1745668) (= lambda!183232 lambda!183167))))

(assert (=> bs!972532 (= (= lt!1745913 lt!1745759) (= lambda!183232 lambda!183193))))

(assert (=> bs!972533 (= (= lt!1745913 lt!1745849) (= lambda!183232 lambda!183213))))

(assert (=> bs!972534 (= (= lt!1745913 lt!1745630) (= lambda!183232 lambda!183160))))

(assert (=> bs!972535 (= (= lt!1745913 lt!1745576) (= lambda!183232 lambda!183142))))

(assert (=> bs!972536 (= (= lt!1745913 lt!1745852) (= lambda!183232 lambda!183214))))

(assert (=> bs!972537 (= (= lt!1745913 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183232 lambda!183190))))

(assert (=> bs!972538 (= (= lt!1745913 lt!1745232) (= lambda!183232 lambda!183157))))

(assert (=> bs!972539 (= (= lt!1745913 lt!1745214) (= lambda!183232 lambda!183205))))

(assert (=> bs!972528 (= (= lt!1745913 lt!1745214) (= lambda!183232 lambda!183165))))

(assert (=> bs!972540 (= (= lt!1745913 lt!1745787) (= lambda!183232 lambda!183202))))

(assert (=> bs!972541 (= (= lt!1745913 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183232 lambda!183230))))

(assert (=> bs!972542 (= (= lt!1745913 lt!1745790) (= lambda!183232 lambda!183203))))

(assert (=> bs!972543 (= (= lt!1745913 lt!1745579) (= lambda!183232 lambda!183143))))

(assert (=> bs!972530 (= (= lt!1745913 lt!1745232) (= lambda!183232 lambda!183158))))

(assert (=> bs!972544 (not (= lambda!183232 lambda!183043))))

(assert (=> bs!972545 (= (= lt!1745913 lt!1745756) (= lambda!183232 lambda!183192))))

(assert (=> bs!972546 (= (= lt!1745913 lt!1745214) (= lambda!183232 lambda!183164))))

(assert (=> bs!972547 (= (= lt!1745913 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183232 lambda!183200))))

(assert (=> bs!972545 (= (= lt!1745913 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183232 lambda!183191))))

(assert (=> b!4580772 (= (= lt!1745913 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183232 lambda!183231))))

(assert (=> bs!972540 (= (= lt!1745913 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183232 lambda!183201))))

(assert (=> bs!972548 (= (= lt!1745913 lt!1745218) (= lambda!183232 lambda!183140))))

(assert (=> bs!972535 (= (= lt!1745913 lt!1745218) (= lambda!183232 lambda!183141))))

(assert (=> bs!972549 (= (= lt!1745913 lt!1745218) (= lambda!183232 lambda!183215))))

(assert (=> bs!972533 (= (= lt!1745913 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183232 lambda!183212))))

(assert (=> bs!972550 (= (= lt!1745913 lt!1745232) (= lambda!183232 lambda!183199))))

(assert (=> bs!972551 (not (= lambda!183232 lambda!183178))))

(assert (=> bs!972552 (= (= lt!1745913 lt!1745627) (= lambda!183232 lambda!183210))))

(assert (=> b!4580772 true))

(declare-fun bs!972553 () Bool)

(declare-fun d!1434486 () Bool)

(assert (= bs!972553 (and d!1434486 b!4580368)))

(declare-fun lambda!183233 () Int)

(declare-fun lt!1745916 () ListMap!3813)

(assert (=> bs!972553 (= (= lt!1745916 lt!1745665) (= lambda!183233 lambda!183166))))

(declare-fun bs!972554 () Bool)

(assert (= bs!972554 (and d!1434486 b!4580772)))

(assert (=> bs!972554 (= (= lt!1745916 lt!1745913) (= lambda!183233 lambda!183232))))

(declare-fun bs!972555 () Bool)

(assert (= bs!972555 (and d!1434486 b!4580664)))

(assert (=> bs!972555 (= (= lt!1745916 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183233 lambda!183211))))

(declare-fun bs!972556 () Bool)

(assert (= bs!972556 (and d!1434486 b!4580305)))

(assert (=> bs!972556 (= (= lt!1745916 lt!1745627) (= lambda!183233 lambda!183159))))

(declare-fun bs!972557 () Bool)

(assert (= bs!972557 (and d!1434486 d!1434224)))

(assert (=> bs!972557 (= (= lt!1745916 lt!1745668) (= lambda!183233 lambda!183167))))

(declare-fun bs!972558 () Bool)

(assert (= bs!972558 (and d!1434486 d!1434338)))

(assert (=> bs!972558 (= (= lt!1745916 lt!1745759) (= lambda!183233 lambda!183193))))

(declare-fun bs!972559 () Bool)

(assert (= bs!972559 (and d!1434486 b!4580663)))

(assert (=> bs!972559 (= (= lt!1745916 lt!1745849) (= lambda!183233 lambda!183213))))

(declare-fun bs!972560 () Bool)

(assert (= bs!972560 (and d!1434486 d!1434184)))

(assert (=> bs!972560 (= (= lt!1745916 lt!1745630) (= lambda!183233 lambda!183160))))

(declare-fun bs!972561 () Bool)

(assert (= bs!972561 (and d!1434486 b!4580257)))

(assert (=> bs!972561 (= (= lt!1745916 lt!1745576) (= lambda!183233 lambda!183142))))

(declare-fun bs!972562 () Bool)

(assert (= bs!972562 (and d!1434486 d!1434446)))

(assert (=> bs!972562 (= (= lt!1745916 lt!1745852) (= lambda!183233 lambda!183214))))

(declare-fun bs!972563 () Bool)

(assert (= bs!972563 (and d!1434486 b!4580536)))

(assert (=> bs!972563 (= (= lt!1745916 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183233 lambda!183190))))

(declare-fun bs!972564 () Bool)

(assert (= bs!972564 (and d!1434486 b!4580306)))

(assert (=> bs!972564 (= (= lt!1745916 lt!1745232) (= lambda!183233 lambda!183157))))

(declare-fun bs!972565 () Bool)

(assert (= bs!972565 (and d!1434486 d!1434424)))

(assert (=> bs!972565 (= (= lt!1745916 lt!1745214) (= lambda!183233 lambda!183205))))

(assert (=> bs!972553 (= (= lt!1745916 lt!1745214) (= lambda!183233 lambda!183165))))

(declare-fun bs!972566 () Bool)

(assert (= bs!972566 (and d!1434486 b!4580574)))

(assert (=> bs!972566 (= (= lt!1745916 lt!1745787) (= lambda!183233 lambda!183202))))

(declare-fun bs!972567 () Bool)

(assert (= bs!972567 (and d!1434486 b!4580773)))

(assert (=> bs!972567 (= (= lt!1745916 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183233 lambda!183230))))

(declare-fun bs!972568 () Bool)

(assert (= bs!972568 (and d!1434486 d!1434366)))

(assert (=> bs!972568 (= (= lt!1745916 lt!1745790) (= lambda!183233 lambda!183203))))

(declare-fun bs!972569 () Bool)

(assert (= bs!972569 (and d!1434486 d!1434060)))

(assert (=> bs!972569 (= (= lt!1745916 lt!1745579) (= lambda!183233 lambda!183143))))

(assert (=> bs!972556 (= (= lt!1745916 lt!1745232) (= lambda!183233 lambda!183158))))

(declare-fun bs!972570 () Bool)

(assert (= bs!972570 (and d!1434486 b!4579991)))

(assert (=> bs!972570 (not (= lambda!183233 lambda!183043))))

(declare-fun bs!972571 () Bool)

(assert (= bs!972571 (and d!1434486 b!4580535)))

(assert (=> bs!972571 (= (= lt!1745916 lt!1745756) (= lambda!183233 lambda!183192))))

(declare-fun bs!972572 () Bool)

(assert (= bs!972572 (and d!1434486 b!4580369)))

(assert (=> bs!972572 (= (= lt!1745916 lt!1745214) (= lambda!183233 lambda!183164))))

(declare-fun bs!972573 () Bool)

(assert (= bs!972573 (and d!1434486 b!4580575)))

(assert (=> bs!972573 (= (= lt!1745916 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183233 lambda!183200))))

(assert (=> bs!972571 (= (= lt!1745916 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183233 lambda!183191))))

(assert (=> bs!972554 (= (= lt!1745916 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183233 lambda!183231))))

(assert (=> bs!972566 (= (= lt!1745916 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183233 lambda!183201))))

(declare-fun bs!972574 () Bool)

(assert (= bs!972574 (and d!1434486 b!4580258)))

(assert (=> bs!972574 (= (= lt!1745916 lt!1745218) (= lambda!183233 lambda!183140))))

(assert (=> bs!972561 (= (= lt!1745916 lt!1745218) (= lambda!183233 lambda!183141))))

(declare-fun bs!972575 () Bool)

(assert (= bs!972575 (and d!1434486 d!1434448)))

(assert (=> bs!972575 (= (= lt!1745916 lt!1745218) (= lambda!183233 lambda!183215))))

(assert (=> bs!972559 (= (= lt!1745916 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183233 lambda!183212))))

(declare-fun bs!972576 () Bool)

(assert (= bs!972576 (and d!1434486 d!1434344)))

(assert (=> bs!972576 (= (= lt!1745916 lt!1745232) (= lambda!183233 lambda!183199))))

(declare-fun bs!972577 () Bool)

(assert (= bs!972577 (and d!1434486 d!1434256)))

(assert (=> bs!972577 (not (= lambda!183233 lambda!183178))))

(declare-fun bs!972578 () Bool)

(assert (= bs!972578 (and d!1434486 d!1434442)))

(assert (=> bs!972578 (= (= lt!1745916 lt!1745627) (= lambda!183233 lambda!183210))))

(assert (=> d!1434486 true))

(declare-fun b!4580770 () Bool)

(declare-fun e!2856531 () Bool)

(assert (=> b!4580770 (= e!2856531 (invariantList!1097 (toList!4552 lt!1745916)))))

(declare-fun b!4580771 () Bool)

(declare-fun res!1913905 () Bool)

(assert (=> b!4580771 (=> (not res!1913905) (not e!2856531))))

(assert (=> b!4580771 (= res!1913905 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) lambda!183233))))

(declare-fun c!784015 () Bool)

(declare-fun call!319746 () Bool)

(declare-fun bm!319739 () Bool)

(assert (=> bm!319739 (= call!319746 (forall!10502 (ite c!784015 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (_2!29056 (h!56886 (toList!4551 lt!1745235)))) (ite c!784015 lambda!183230 lambda!183232)))))

(declare-fun e!2856530 () ListMap!3813)

(assert (=> b!4580772 (= e!2856530 lt!1745913)))

(declare-fun lt!1745911 () ListMap!3813)

(assert (=> b!4580772 (= lt!1745911 (+!1710 (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745235))))))))

(assert (=> b!4580772 (= lt!1745913 (addToMapMapFromBucket!785 (t!358064 (_2!29056 (h!56886 (toList!4551 lt!1745235)))) (+!1710 (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745235)))))))))

(declare-fun lt!1745915 () Unit!105525)

(declare-fun call!319745 () Unit!105525)

(assert (=> b!4580772 (= lt!1745915 call!319745)))

(assert (=> b!4580772 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) lambda!183231)))

(declare-fun lt!1745930 () Unit!105525)

(assert (=> b!4580772 (= lt!1745930 lt!1745915)))

(assert (=> b!4580772 (forall!10502 (toList!4552 lt!1745911) lambda!183232)))

(declare-fun lt!1745925 () Unit!105525)

(declare-fun Unit!105681 () Unit!105525)

(assert (=> b!4580772 (= lt!1745925 Unit!105681)))

(assert (=> b!4580772 (forall!10502 (t!358064 (_2!29056 (h!56886 (toList!4551 lt!1745235)))) lambda!183232)))

(declare-fun lt!1745923 () Unit!105525)

(declare-fun Unit!105682 () Unit!105525)

(assert (=> b!4580772 (= lt!1745923 Unit!105682)))

(declare-fun lt!1745920 () Unit!105525)

(declare-fun Unit!105683 () Unit!105525)

(assert (=> b!4580772 (= lt!1745920 Unit!105683)))

(declare-fun lt!1745927 () Unit!105525)

(assert (=> b!4580772 (= lt!1745927 (forallContained!2765 (toList!4552 lt!1745911) lambda!183232 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745235))))))))

(assert (=> b!4580772 (contains!13846 lt!1745911 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745235))))))))

(declare-fun lt!1745917 () Unit!105525)

(declare-fun Unit!105684 () Unit!105525)

(assert (=> b!4580772 (= lt!1745917 Unit!105684)))

(assert (=> b!4580772 (contains!13846 lt!1745913 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745235))))))))

(declare-fun lt!1745922 () Unit!105525)

(declare-fun Unit!105685 () Unit!105525)

(assert (=> b!4580772 (= lt!1745922 Unit!105685)))

(assert (=> b!4580772 call!319746))

(declare-fun lt!1745919 () Unit!105525)

(declare-fun Unit!105686 () Unit!105525)

(assert (=> b!4580772 (= lt!1745919 Unit!105686)))

(declare-fun call!319744 () Bool)

(assert (=> b!4580772 call!319744))

(declare-fun lt!1745921 () Unit!105525)

(declare-fun Unit!105687 () Unit!105525)

(assert (=> b!4580772 (= lt!1745921 Unit!105687)))

(declare-fun lt!1745924 () Unit!105525)

(declare-fun Unit!105688 () Unit!105525)

(assert (=> b!4580772 (= lt!1745924 Unit!105688)))

(declare-fun lt!1745928 () Unit!105525)

(assert (=> b!4580772 (= lt!1745928 (addForallContainsKeyThenBeforeAdding!414 (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745913 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745235))))) (_2!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745235)))))))))

(assert (=> b!4580772 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) lambda!183232)))

(declare-fun lt!1745926 () Unit!105525)

(assert (=> b!4580772 (= lt!1745926 lt!1745928)))

(assert (=> b!4580772 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) lambda!183232)))

(declare-fun lt!1745914 () Unit!105525)

(declare-fun Unit!105689 () Unit!105525)

(assert (=> b!4580772 (= lt!1745914 Unit!105689)))

(declare-fun res!1913906 () Bool)

(assert (=> b!4580772 (= res!1913906 (forall!10502 (_2!29056 (h!56886 (toList!4551 lt!1745235))) lambda!183232))))

(declare-fun e!2856529 () Bool)

(assert (=> b!4580772 (=> (not res!1913906) (not e!2856529))))

(assert (=> b!4580772 e!2856529))

(declare-fun lt!1745918 () Unit!105525)

(declare-fun Unit!105690 () Unit!105525)

(assert (=> b!4580772 (= lt!1745918 Unit!105690)))

(assert (=> b!4580773 (= e!2856530 (extractMap!1328 (t!358065 (toList!4551 lt!1745235))))))

(declare-fun lt!1745929 () Unit!105525)

(assert (=> b!4580773 (= lt!1745929 call!319745)))

(assert (=> b!4580773 call!319746))

(declare-fun lt!1745910 () Unit!105525)

(assert (=> b!4580773 (= lt!1745910 lt!1745929)))

(assert (=> b!4580773 call!319744))

(declare-fun lt!1745912 () Unit!105525)

(declare-fun Unit!105691 () Unit!105525)

(assert (=> b!4580773 (= lt!1745912 Unit!105691)))

(declare-fun bm!319740 () Bool)

(assert (=> bm!319740 (= call!319744 (forall!10502 (ite c!784015 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (toList!4552 lt!1745911)) (ite c!784015 lambda!183230 lambda!183232)))))

(assert (=> d!1434486 e!2856531))

(declare-fun res!1913907 () Bool)

(assert (=> d!1434486 (=> (not res!1913907) (not e!2856531))))

(assert (=> d!1434486 (= res!1913907 (forall!10502 (_2!29056 (h!56886 (toList!4551 lt!1745235))) lambda!183233))))

(assert (=> d!1434486 (= lt!1745916 e!2856530)))

(assert (=> d!1434486 (= c!784015 ((_ is Nil!50950) (_2!29056 (h!56886 (toList!4551 lt!1745235)))))))

(assert (=> d!1434486 (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lt!1745235))))))

(assert (=> d!1434486 (= (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 lt!1745235))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) lt!1745916)))

(declare-fun bm!319741 () Bool)

(assert (=> bm!319741 (= call!319745 (lemmaContainsAllItsOwnKeys!414 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))))))

(declare-fun b!4580774 () Bool)

(assert (=> b!4580774 (= e!2856529 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) lambda!183232))))

(assert (= (and d!1434486 c!784015) b!4580773))

(assert (= (and d!1434486 (not c!784015)) b!4580772))

(assert (= (and b!4580772 res!1913906) b!4580774))

(assert (= (or b!4580773 b!4580772) bm!319740))

(assert (= (or b!4580773 b!4580772) bm!319739))

(assert (= (or b!4580773 b!4580772) bm!319741))

(assert (= (and d!1434486 res!1913907) b!4580771))

(assert (= (and b!4580771 res!1913905) b!4580770))

(declare-fun m!5391389 () Bool)

(assert (=> b!4580774 m!5391389))

(declare-fun m!5391391 () Bool)

(assert (=> d!1434486 m!5391391))

(declare-fun m!5391393 () Bool)

(assert (=> d!1434486 m!5391393))

(declare-fun m!5391395 () Bool)

(assert (=> bm!319739 m!5391395))

(assert (=> bm!319741 m!5390719))

(declare-fun m!5391397 () Bool)

(assert (=> bm!319741 m!5391397))

(declare-fun m!5391399 () Bool)

(assert (=> b!4580772 m!5391399))

(declare-fun m!5391401 () Bool)

(assert (=> b!4580772 m!5391401))

(declare-fun m!5391403 () Bool)

(assert (=> b!4580772 m!5391403))

(assert (=> b!4580772 m!5391389))

(declare-fun m!5391405 () Bool)

(assert (=> b!4580772 m!5391405))

(declare-fun m!5391407 () Bool)

(assert (=> b!4580772 m!5391407))

(declare-fun m!5391409 () Bool)

(assert (=> b!4580772 m!5391409))

(declare-fun m!5391411 () Bool)

(assert (=> b!4580772 m!5391411))

(assert (=> b!4580772 m!5390719))

(assert (=> b!4580772 m!5391399))

(declare-fun m!5391413 () Bool)

(assert (=> b!4580772 m!5391413))

(declare-fun m!5391415 () Bool)

(assert (=> b!4580772 m!5391415))

(assert (=> b!4580772 m!5391389))

(assert (=> b!4580772 m!5390719))

(declare-fun m!5391417 () Bool)

(assert (=> b!4580772 m!5391417))

(declare-fun m!5391419 () Bool)

(assert (=> b!4580770 m!5391419))

(declare-fun m!5391421 () Bool)

(assert (=> b!4580771 m!5391421))

(declare-fun m!5391423 () Bool)

(assert (=> bm!319740 m!5391423))

(assert (=> b!4580398 d!1434486))

(declare-fun bs!972579 () Bool)

(declare-fun d!1434488 () Bool)

(assert (= bs!972579 (and d!1434488 d!1434210)))

(declare-fun lambda!183234 () Int)

(assert (=> bs!972579 (= lambda!183234 lambda!183163)))

(declare-fun bs!972580 () Bool)

(assert (= bs!972580 (and d!1434488 d!1434168)))

(assert (=> bs!972580 (= lambda!183234 lambda!183155)))

(declare-fun bs!972581 () Bool)

(assert (= bs!972581 (and d!1434488 d!1434246)))

(assert (=> bs!972581 (= lambda!183234 lambda!183174)))

(declare-fun bs!972582 () Bool)

(assert (= bs!972582 (and d!1434488 d!1434368)))

(assert (=> bs!972582 (= lambda!183234 lambda!183204)))

(declare-fun bs!972583 () Bool)

(assert (= bs!972583 (and d!1434488 start!456028)))

(assert (=> bs!972583 (= lambda!183234 lambda!183041)))

(declare-fun bs!972584 () Bool)

(assert (= bs!972584 (and d!1434488 d!1434056)))

(assert (=> bs!972584 (= lambda!183234 lambda!183049)))

(declare-fun bs!972585 () Bool)

(assert (= bs!972585 (and d!1434488 d!1434258)))

(assert (=> bs!972585 (not (= lambda!183234 lambda!183181))))

(declare-fun bs!972586 () Bool)

(assert (= bs!972586 (and d!1434488 d!1434244)))

(assert (=> bs!972586 (= lambda!183234 lambda!183171)))

(declare-fun bs!972587 () Bool)

(assert (= bs!972587 (and d!1434488 d!1434340)))

(assert (=> bs!972587 (= lambda!183234 lambda!183194)))

(declare-fun bs!972588 () Bool)

(assert (= bs!972588 (and d!1434488 b!4579991)))

(assert (=> bs!972588 (not (= lambda!183234 lambda!183042))))

(declare-fun bs!972589 () Bool)

(assert (= bs!972589 (and d!1434488 d!1434250)))

(assert (=> bs!972589 (= lambda!183234 lambda!183175)))

(declare-fun bs!972590 () Bool)

(assert (= bs!972590 (and d!1434488 d!1434134)))

(assert (=> bs!972590 (= lambda!183234 lambda!183144)))

(declare-fun bs!972591 () Bool)

(assert (= bs!972591 (and d!1434488 d!1434136)))

(assert (=> bs!972591 (= lambda!183234 lambda!183150)))

(declare-fun bs!972592 () Bool)

(assert (= bs!972592 (and d!1434488 d!1434174)))

(assert (=> bs!972592 (= lambda!183234 lambda!183156)))

(declare-fun bs!972593 () Bool)

(assert (= bs!972593 (and d!1434488 d!1434144)))

(assert (=> bs!972593 (= lambda!183234 lambda!183154)))

(declare-fun bs!972594 () Bool)

(assert (= bs!972594 (and d!1434488 d!1434230)))

(assert (=> bs!972594 (= lambda!183234 lambda!183170)))

(declare-fun lt!1745931 () ListMap!3813)

(assert (=> d!1434488 (invariantList!1097 (toList!4552 lt!1745931))))

(declare-fun e!2856532 () ListMap!3813)

(assert (=> d!1434488 (= lt!1745931 e!2856532)))

(declare-fun c!784016 () Bool)

(assert (=> d!1434488 (= c!784016 ((_ is Cons!50951) (t!358065 (toList!4551 lt!1745235))))))

(assert (=> d!1434488 (forall!10500 (t!358065 (toList!4551 lt!1745235)) lambda!183234)))

(assert (=> d!1434488 (= (extractMap!1328 (t!358065 (toList!4551 lt!1745235))) lt!1745931)))

(declare-fun b!4580775 () Bool)

(assert (=> b!4580775 (= e!2856532 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (t!358065 (toList!4551 lt!1745235)))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lt!1745235))))))))

(declare-fun b!4580776 () Bool)

(assert (=> b!4580776 (= e!2856532 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434488 c!784016) b!4580775))

(assert (= (and d!1434488 (not c!784016)) b!4580776))

(declare-fun m!5391425 () Bool)

(assert (=> d!1434488 m!5391425))

(declare-fun m!5391427 () Bool)

(assert (=> d!1434488 m!5391427))

(declare-fun m!5391429 () Bool)

(assert (=> b!4580775 m!5391429))

(assert (=> b!4580775 m!5391429))

(declare-fun m!5391431 () Bool)

(assert (=> b!4580775 m!5391431))

(assert (=> b!4580398 d!1434488))

(declare-fun d!1434490 () Bool)

(declare-fun res!1913908 () Bool)

(declare-fun e!2856533 () Bool)

(assert (=> d!1434490 (=> res!1913908 e!2856533)))

(assert (=> d!1434490 (= res!1913908 ((_ is Nil!50950) (ite c!783911 (toList!4552 lt!1745218) (_2!29056 lt!1745216))))))

(assert (=> d!1434490 (= (forall!10502 (ite c!783911 (toList!4552 lt!1745218) (_2!29056 lt!1745216)) (ite c!783911 lambda!183140 lambda!183142)) e!2856533)))

(declare-fun b!4580777 () Bool)

(declare-fun e!2856534 () Bool)

(assert (=> b!4580777 (= e!2856533 e!2856534)))

(declare-fun res!1913909 () Bool)

(assert (=> b!4580777 (=> (not res!1913909) (not e!2856534))))

(assert (=> b!4580777 (= res!1913909 (dynLambda!21336 (ite c!783911 lambda!183140 lambda!183142) (h!56885 (ite c!783911 (toList!4552 lt!1745218) (_2!29056 lt!1745216)))))))

(declare-fun b!4580778 () Bool)

(assert (=> b!4580778 (= e!2856534 (forall!10502 (t!358064 (ite c!783911 (toList!4552 lt!1745218) (_2!29056 lt!1745216))) (ite c!783911 lambda!183140 lambda!183142)))))

(assert (= (and d!1434490 (not res!1913908)) b!4580777))

(assert (= (and b!4580777 res!1913909) b!4580778))

(declare-fun b_lambda!166075 () Bool)

(assert (=> (not b_lambda!166075) (not b!4580777)))

(declare-fun m!5391433 () Bool)

(assert (=> b!4580777 m!5391433))

(declare-fun m!5391435 () Bool)

(assert (=> b!4580778 m!5391435))

(assert (=> bm!319707 d!1434490))

(declare-fun d!1434494 () Bool)

(declare-fun res!1913910 () Bool)

(declare-fun e!2856535 () Bool)

(assert (=> d!1434494 (=> res!1913910 e!2856535)))

(assert (=> d!1434494 (= res!1913910 (and ((_ is Cons!50951) (toList!4551 lt!1745235)) (= (_1!29056 (h!56886 (toList!4551 lt!1745235))) hash!344)))))

(assert (=> d!1434494 (= (containsKey!2056 (toList!4551 lt!1745235) hash!344) e!2856535)))

(declare-fun b!4580779 () Bool)

(declare-fun e!2856536 () Bool)

(assert (=> b!4580779 (= e!2856535 e!2856536)))

(declare-fun res!1913911 () Bool)

(assert (=> b!4580779 (=> (not res!1913911) (not e!2856536))))

(assert (=> b!4580779 (= res!1913911 (and (or (not ((_ is Cons!50951) (toList!4551 lt!1745235))) (bvsle (_1!29056 (h!56886 (toList!4551 lt!1745235))) hash!344)) ((_ is Cons!50951) (toList!4551 lt!1745235)) (bvslt (_1!29056 (h!56886 (toList!4551 lt!1745235))) hash!344)))))

(declare-fun b!4580780 () Bool)

(assert (=> b!4580780 (= e!2856536 (containsKey!2056 (t!358065 (toList!4551 lt!1745235)) hash!344))))

(assert (= (and d!1434494 (not res!1913910)) b!4580779))

(assert (= (and b!4580779 res!1913911) b!4580780))

(declare-fun m!5391437 () Bool)

(assert (=> b!4580780 m!5391437))

(assert (=> d!1434026 d!1434494))

(declare-fun b!4580781 () Bool)

(declare-fun e!2856541 () Option!11325)

(assert (=> b!4580781 (= e!2856541 (getPair!232 (t!358064 (t!358064 (_2!29056 lt!1745216))) key!3287))))

(declare-fun b!4580782 () Bool)

(assert (=> b!4580782 (= e!2856541 None!11324)))

(declare-fun b!4580783 () Bool)

(declare-fun e!2856538 () Option!11325)

(assert (=> b!4580783 (= e!2856538 (Some!11324 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun b!4580784 () Bool)

(declare-fun e!2856539 () Bool)

(assert (=> b!4580784 (= e!2856539 (not (containsKey!2054 (t!358064 (_2!29056 lt!1745216)) key!3287)))))

(declare-fun b!4580785 () Bool)

(declare-fun e!2856537 () Bool)

(declare-fun e!2856540 () Bool)

(assert (=> b!4580785 (= e!2856537 e!2856540)))

(declare-fun res!1913913 () Bool)

(assert (=> b!4580785 (=> (not res!1913913) (not e!2856540))))

(declare-fun lt!1745932 () Option!11325)

(assert (=> b!4580785 (= res!1913913 (isDefined!8599 lt!1745932))))

(declare-fun d!1434496 () Bool)

(assert (=> d!1434496 e!2856537))

(declare-fun res!1913912 () Bool)

(assert (=> d!1434496 (=> res!1913912 e!2856537)))

(assert (=> d!1434496 (= res!1913912 e!2856539)))

(declare-fun res!1913915 () Bool)

(assert (=> d!1434496 (=> (not res!1913915) (not e!2856539))))

(assert (=> d!1434496 (= res!1913915 (isEmpty!28819 lt!1745932))))

(assert (=> d!1434496 (= lt!1745932 e!2856538)))

(declare-fun c!784017 () Bool)

(assert (=> d!1434496 (= c!784017 (and ((_ is Cons!50950) (t!358064 (_2!29056 lt!1745216))) (= (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))) key!3287)))))

(assert (=> d!1434496 (noDuplicateKeys!1272 (t!358064 (_2!29056 lt!1745216)))))

(assert (=> d!1434496 (= (getPair!232 (t!358064 (_2!29056 lt!1745216)) key!3287) lt!1745932)))

(declare-fun b!4580786 () Bool)

(declare-fun res!1913914 () Bool)

(assert (=> b!4580786 (=> (not res!1913914) (not e!2856540))))

(assert (=> b!4580786 (= res!1913914 (= (_1!29055 (get!16814 lt!1745932)) key!3287))))

(declare-fun b!4580787 () Bool)

(assert (=> b!4580787 (= e!2856540 (contains!13851 (t!358064 (_2!29056 lt!1745216)) (get!16814 lt!1745932)))))

(declare-fun b!4580788 () Bool)

(assert (=> b!4580788 (= e!2856538 e!2856541)))

(declare-fun c!784018 () Bool)

(assert (=> b!4580788 (= c!784018 ((_ is Cons!50950) (t!358064 (_2!29056 lt!1745216))))))

(assert (= (and d!1434496 c!784017) b!4580783))

(assert (= (and d!1434496 (not c!784017)) b!4580788))

(assert (= (and b!4580788 c!784018) b!4580781))

(assert (= (and b!4580788 (not c!784018)) b!4580782))

(assert (= (and d!1434496 res!1913915) b!4580784))

(assert (= (and d!1434496 (not res!1913912)) b!4580785))

(assert (= (and b!4580785 res!1913913) b!4580786))

(assert (= (and b!4580786 res!1913914) b!4580787))

(declare-fun m!5391439 () Bool)

(assert (=> b!4580787 m!5391439))

(assert (=> b!4580787 m!5391439))

(declare-fun m!5391441 () Bool)

(assert (=> b!4580787 m!5391441))

(declare-fun m!5391443 () Bool)

(assert (=> d!1434496 m!5391443))

(assert (=> d!1434496 m!5390635))

(assert (=> b!4580786 m!5391439))

(declare-fun m!5391445 () Bool)

(assert (=> b!4580781 m!5391445))

(declare-fun m!5391447 () Bool)

(assert (=> b!4580785 m!5391447))

(assert (=> b!4580784 m!5390571))

(assert (=> b!4580330 d!1434496))

(declare-fun d!1434498 () Bool)

(assert (=> d!1434498 (dynLambda!21335 lambda!183041 lt!1745215)))

(assert (=> d!1434498 true))

(declare-fun _$7!2055 () Unit!105525)

(assert (=> d!1434498 (= (choose!30521 (toList!4551 lm!1477) lambda!183041 lt!1745215) _$7!2055)))

(declare-fun b_lambda!166077 () Bool)

(assert (=> (not b_lambda!166077) (not d!1434498)))

(declare-fun bs!972595 () Bool)

(assert (= bs!972595 d!1434498))

(assert (=> bs!972595 m!5390691))

(assert (=> d!1434232 d!1434498))

(assert (=> d!1434232 d!1434212))

(declare-fun bs!972596 () Bool)

(declare-fun d!1434500 () Bool)

(assert (= bs!972596 (and d!1434500 b!4580368)))

(declare-fun lambda!183235 () Int)

(assert (=> bs!972596 (not (= lambda!183235 lambda!183166))))

(declare-fun bs!972597 () Bool)

(assert (= bs!972597 (and d!1434500 b!4580772)))

(assert (=> bs!972597 (not (= lambda!183235 lambda!183232))))

(declare-fun bs!972599 () Bool)

(assert (= bs!972599 (and d!1434500 b!4580664)))

(assert (=> bs!972599 (not (= lambda!183235 lambda!183211))))

(declare-fun bs!972600 () Bool)

(assert (= bs!972600 (and d!1434500 b!4580305)))

(assert (=> bs!972600 (not (= lambda!183235 lambda!183159))))

(declare-fun bs!972601 () Bool)

(assert (= bs!972601 (and d!1434500 d!1434224)))

(assert (=> bs!972601 (not (= lambda!183235 lambda!183167))))

(declare-fun bs!972602 () Bool)

(assert (= bs!972602 (and d!1434500 d!1434338)))

(assert (=> bs!972602 (not (= lambda!183235 lambda!183193))))

(declare-fun bs!972603 () Bool)

(assert (= bs!972603 (and d!1434500 b!4580663)))

(assert (=> bs!972603 (not (= lambda!183235 lambda!183213))))

(declare-fun bs!972604 () Bool)

(assert (= bs!972604 (and d!1434500 d!1434184)))

(assert (=> bs!972604 (not (= lambda!183235 lambda!183160))))

(declare-fun bs!972605 () Bool)

(assert (= bs!972605 (and d!1434500 b!4580257)))

(assert (=> bs!972605 (not (= lambda!183235 lambda!183142))))

(declare-fun bs!972606 () Bool)

(assert (= bs!972606 (and d!1434500 d!1434446)))

(assert (=> bs!972606 (not (= lambda!183235 lambda!183214))))

(declare-fun bs!972607 () Bool)

(assert (= bs!972607 (and d!1434500 b!4580536)))

(assert (=> bs!972607 (not (= lambda!183235 lambda!183190))))

(declare-fun bs!972608 () Bool)

(assert (= bs!972608 (and d!1434500 b!4580306)))

(assert (=> bs!972608 (not (= lambda!183235 lambda!183157))))

(declare-fun bs!972609 () Bool)

(assert (= bs!972609 (and d!1434500 d!1434424)))

(assert (=> bs!972609 (not (= lambda!183235 lambda!183205))))

(assert (=> bs!972596 (not (= lambda!183235 lambda!183165))))

(declare-fun bs!972610 () Bool)

(assert (= bs!972610 (and d!1434500 b!4580574)))

(assert (=> bs!972610 (not (= lambda!183235 lambda!183202))))

(declare-fun bs!972611 () Bool)

(assert (= bs!972611 (and d!1434500 b!4580773)))

(assert (=> bs!972611 (not (= lambda!183235 lambda!183230))))

(declare-fun bs!972612 () Bool)

(assert (= bs!972612 (and d!1434500 d!1434366)))

(assert (=> bs!972612 (not (= lambda!183235 lambda!183203))))

(declare-fun bs!972613 () Bool)

(assert (= bs!972613 (and d!1434500 d!1434060)))

(assert (=> bs!972613 (not (= lambda!183235 lambda!183143))))

(assert (=> bs!972600 (not (= lambda!183235 lambda!183158))))

(declare-fun bs!972614 () Bool)

(assert (= bs!972614 (and d!1434500 b!4579991)))

(assert (=> bs!972614 (= lambda!183235 lambda!183043)))

(declare-fun bs!972615 () Bool)

(assert (= bs!972615 (and d!1434500 b!4580535)))

(assert (=> bs!972615 (not (= lambda!183235 lambda!183192))))

(declare-fun bs!972616 () Bool)

(assert (= bs!972616 (and d!1434500 b!4580369)))

(assert (=> bs!972616 (not (= lambda!183235 lambda!183164))))

(declare-fun bs!972617 () Bool)

(assert (= bs!972617 (and d!1434500 b!4580575)))

(assert (=> bs!972617 (not (= lambda!183235 lambda!183200))))

(assert (=> bs!972615 (not (= lambda!183235 lambda!183191))))

(assert (=> bs!972597 (not (= lambda!183235 lambda!183231))))

(assert (=> bs!972610 (not (= lambda!183235 lambda!183201))))

(declare-fun bs!972618 () Bool)

(assert (= bs!972618 (and d!1434500 b!4580258)))

(assert (=> bs!972618 (not (= lambda!183235 lambda!183140))))

(declare-fun bs!972619 () Bool)

(assert (= bs!972619 (and d!1434500 d!1434486)))

(assert (=> bs!972619 (not (= lambda!183235 lambda!183233))))

(assert (=> bs!972605 (not (= lambda!183235 lambda!183141))))

(declare-fun bs!972620 () Bool)

(assert (= bs!972620 (and d!1434500 d!1434448)))

(assert (=> bs!972620 (not (= lambda!183235 lambda!183215))))

(assert (=> bs!972603 (not (= lambda!183235 lambda!183212))))

(declare-fun bs!972621 () Bool)

(assert (= bs!972621 (and d!1434500 d!1434344)))

(assert (=> bs!972621 (not (= lambda!183235 lambda!183199))))

(declare-fun bs!972622 () Bool)

(assert (= bs!972622 (and d!1434500 d!1434256)))

(assert (=> bs!972622 (= (= (_1!29056 (h!56886 (toList!4551 lm!1477))) hash!344) (= lambda!183235 lambda!183178))))

(declare-fun bs!972623 () Bool)

(assert (= bs!972623 (and d!1434500 d!1434442)))

(assert (=> bs!972623 (not (= lambda!183235 lambda!183210))))

(assert (=> d!1434500 true))

(assert (=> d!1434500 true))

(assert (=> d!1434500 (= (allKeysSameHash!1126 (_2!29056 (h!56886 (toList!4551 lm!1477))) (_1!29056 (h!56886 (toList!4551 lm!1477))) hashF!1107) (forall!10502 (_2!29056 (h!56886 (toList!4551 lm!1477))) lambda!183235))))

(declare-fun bs!972624 () Bool)

(assert (= bs!972624 d!1434500))

(declare-fun m!5391449 () Bool)

(assert (=> bs!972624 m!5391449))

(assert (=> bs!972193 d!1434500))

(declare-fun d!1434504 () Bool)

(assert (=> d!1434504 (dynLambda!21335 lambda!183041 (h!56886 (toList!4551 lm!1477)))))

(assert (=> d!1434504 true))

(declare-fun _$7!2057 () Unit!105525)

(assert (=> d!1434504 (= (choose!30521 (toList!4551 lm!1477) lambda!183041 (h!56886 (toList!4551 lm!1477))) _$7!2057)))

(declare-fun b_lambda!166081 () Bool)

(assert (=> (not b_lambda!166081) (not d!1434504)))

(declare-fun bs!972625 () Bool)

(assert (= bs!972625 d!1434504))

(assert (=> bs!972625 m!5390627))

(assert (=> d!1434218 d!1434504))

(assert (=> d!1434218 d!1434212))

(declare-fun d!1434506 () Bool)

(declare-fun c!784019 () Bool)

(assert (=> d!1434506 (= c!784019 ((_ is Nil!50950) (toList!4552 lt!1745242)))))

(declare-fun e!2856546 () (InoxSet tuple2!51522))

(assert (=> d!1434506 (= (content!8586 (toList!4552 lt!1745242)) e!2856546)))

(declare-fun b!4580793 () Bool)

(assert (=> b!4580793 (= e!2856546 ((as const (Array tuple2!51522 Bool)) false))))

(declare-fun b!4580794 () Bool)

(assert (=> b!4580794 (= e!2856546 ((_ map or) (store ((as const (Array tuple2!51522 Bool)) false) (h!56885 (toList!4552 lt!1745242)) true) (content!8586 (t!358064 (toList!4552 lt!1745242)))))))

(assert (= (and d!1434506 c!784019) b!4580793))

(assert (= (and d!1434506 (not c!784019)) b!4580794))

(declare-fun m!5391451 () Bool)

(assert (=> b!4580794 m!5391451))

(declare-fun m!5391453 () Bool)

(assert (=> b!4580794 m!5391453))

(assert (=> d!1434172 d!1434506))

(declare-fun d!1434508 () Bool)

(declare-fun c!784020 () Bool)

(assert (=> d!1434508 (= c!784020 ((_ is Nil!50950) (toList!4552 lt!1745243)))))

(declare-fun e!2856547 () (InoxSet tuple2!51522))

(assert (=> d!1434508 (= (content!8586 (toList!4552 lt!1745243)) e!2856547)))

(declare-fun b!4580795 () Bool)

(assert (=> b!4580795 (= e!2856547 ((as const (Array tuple2!51522 Bool)) false))))

(declare-fun b!4580796 () Bool)

(assert (=> b!4580796 (= e!2856547 ((_ map or) (store ((as const (Array tuple2!51522 Bool)) false) (h!56885 (toList!4552 lt!1745243)) true) (content!8586 (t!358064 (toList!4552 lt!1745243)))))))

(assert (= (and d!1434508 c!784020) b!4580795))

(assert (= (and d!1434508 (not c!784020)) b!4580796))

(declare-fun m!5391455 () Bool)

(assert (=> b!4580796 m!5391455))

(declare-fun m!5391457 () Bool)

(assert (=> b!4580796 m!5391457))

(assert (=> d!1434172 d!1434508))

(declare-fun d!1434510 () Bool)

(declare-fun lt!1745933 () Bool)

(assert (=> d!1434510 (= lt!1745933 (select (content!8587 e!2856291) key!3287))))

(declare-fun e!2856548 () Bool)

(assert (=> d!1434510 (= lt!1745933 e!2856548)))

(declare-fun res!1913920 () Bool)

(assert (=> d!1434510 (=> (not res!1913920) (not e!2856548))))

(assert (=> d!1434510 (= res!1913920 ((_ is Cons!50953) e!2856291))))

(assert (=> d!1434510 (= (contains!13849 e!2856291 key!3287) lt!1745933)))

(declare-fun b!4580797 () Bool)

(declare-fun e!2856549 () Bool)

(assert (=> b!4580797 (= e!2856548 e!2856549)))

(declare-fun res!1913921 () Bool)

(assert (=> b!4580797 (=> res!1913921 e!2856549)))

(assert (=> b!4580797 (= res!1913921 (= (h!56890 e!2856291) key!3287))))

(declare-fun b!4580798 () Bool)

(assert (=> b!4580798 (= e!2856549 (contains!13849 (t!358067 e!2856291) key!3287))))

(assert (= (and d!1434510 res!1913920) b!4580797))

(assert (= (and b!4580797 (not res!1913921)) b!4580798))

(declare-fun m!5391459 () Bool)

(assert (=> d!1434510 m!5391459))

(declare-fun m!5391461 () Bool)

(assert (=> d!1434510 m!5391461))

(declare-fun m!5391463 () Bool)

(assert (=> b!4580798 m!5391463))

(assert (=> bm!319717 d!1434510))

(assert (=> b!4580403 d!1434288))

(assert (=> b!4580403 d!1434290))

(declare-fun b!4580799 () Bool)

(declare-fun e!2856555 () Unit!105525)

(declare-fun Unit!105693 () Unit!105525)

(assert (=> b!4580799 (= e!2856555 Unit!105693)))

(declare-fun b!4580800 () Bool)

(declare-fun e!2856550 () Bool)

(declare-fun e!2856553 () Bool)

(assert (=> b!4580800 (= e!2856550 e!2856553)))

(declare-fun res!1913923 () Bool)

(assert (=> b!4580800 (=> (not res!1913923) (not e!2856553))))

(assert (=> b!4580800 (= res!1913923 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745657) key!3287)))))

(declare-fun b!4580801 () Bool)

(declare-fun e!2856552 () Unit!105525)

(assert (=> b!4580801 (= e!2856552 e!2856555)))

(declare-fun c!784022 () Bool)

(declare-fun call!319747 () Bool)

(assert (=> b!4580801 (= c!784022 call!319747)))

(declare-fun b!4580802 () Bool)

(assert (=> b!4580802 (= e!2856553 (contains!13849 (keys!17800 lt!1745657) key!3287))))

(declare-fun b!4580803 () Bool)

(declare-fun e!2856551 () List!51077)

(assert (=> b!4580803 (= e!2856551 (keys!17800 lt!1745657))))

(declare-fun b!4580804 () Bool)

(declare-fun lt!1745937 () Unit!105525)

(assert (=> b!4580804 (= e!2856552 lt!1745937)))

(declare-fun lt!1745935 () Unit!105525)

(assert (=> b!4580804 (= lt!1745935 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745657) key!3287))))

(assert (=> b!4580804 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745657) key!3287))))

(declare-fun lt!1745940 () Unit!105525)

(assert (=> b!4580804 (= lt!1745940 lt!1745935)))

(assert (=> b!4580804 (= lt!1745937 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745657) key!3287))))

(assert (=> b!4580804 call!319747))

(declare-fun bm!319742 () Bool)

(assert (=> bm!319742 (= call!319747 (contains!13849 e!2856551 key!3287))))

(declare-fun c!784021 () Bool)

(declare-fun c!784023 () Bool)

(assert (=> bm!319742 (= c!784021 c!784023)))

(declare-fun d!1434512 () Bool)

(assert (=> d!1434512 e!2856550))

(declare-fun res!1913924 () Bool)

(assert (=> d!1434512 (=> res!1913924 e!2856550)))

(declare-fun e!2856554 () Bool)

(assert (=> d!1434512 (= res!1913924 e!2856554)))

(declare-fun res!1913922 () Bool)

(assert (=> d!1434512 (=> (not res!1913922) (not e!2856554))))

(declare-fun lt!1745936 () Bool)

(assert (=> d!1434512 (= res!1913922 (not lt!1745936))))

(declare-fun lt!1745941 () Bool)

(assert (=> d!1434512 (= lt!1745936 lt!1745941)))

(declare-fun lt!1745934 () Unit!105525)

(assert (=> d!1434512 (= lt!1745934 e!2856552)))

(assert (=> d!1434512 (= c!784023 lt!1745941)))

(assert (=> d!1434512 (= lt!1745941 (containsKey!2057 (toList!4552 lt!1745657) key!3287))))

(assert (=> d!1434512 (= (contains!13846 lt!1745657 key!3287) lt!1745936)))

(declare-fun b!4580805 () Bool)

(assert (=> b!4580805 (= e!2856551 (getKeysList!544 (toList!4552 lt!1745657)))))

(declare-fun b!4580806 () Bool)

(assert (=> b!4580806 false))

(declare-fun lt!1745938 () Unit!105525)

(declare-fun lt!1745939 () Unit!105525)

(assert (=> b!4580806 (= lt!1745938 lt!1745939)))

(assert (=> b!4580806 (containsKey!2057 (toList!4552 lt!1745657) key!3287)))

(assert (=> b!4580806 (= lt!1745939 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745657) key!3287))))

(declare-fun Unit!105694 () Unit!105525)

(assert (=> b!4580806 (= e!2856555 Unit!105694)))

(declare-fun b!4580807 () Bool)

(assert (=> b!4580807 (= e!2856554 (not (contains!13849 (keys!17800 lt!1745657) key!3287)))))

(assert (= (and d!1434512 c!784023) b!4580804))

(assert (= (and d!1434512 (not c!784023)) b!4580801))

(assert (= (and b!4580801 c!784022) b!4580806))

(assert (= (and b!4580801 (not c!784022)) b!4580799))

(assert (= (or b!4580804 b!4580801) bm!319742))

(assert (= (and bm!319742 c!784021) b!4580805))

(assert (= (and bm!319742 (not c!784021)) b!4580803))

(assert (= (and d!1434512 res!1913922) b!4580807))

(assert (= (and d!1434512 (not res!1913924)) b!4580800))

(assert (= (and b!4580800 res!1913923) b!4580802))

(declare-fun m!5391465 () Bool)

(assert (=> b!4580806 m!5391465))

(declare-fun m!5391467 () Bool)

(assert (=> b!4580806 m!5391467))

(assert (=> b!4580807 m!5390611))

(assert (=> b!4580807 m!5390611))

(declare-fun m!5391469 () Bool)

(assert (=> b!4580807 m!5391469))

(declare-fun m!5391471 () Bool)

(assert (=> b!4580800 m!5391471))

(assert (=> b!4580800 m!5391471))

(declare-fun m!5391473 () Bool)

(assert (=> b!4580800 m!5391473))

(assert (=> b!4580805 m!5391369))

(assert (=> b!4580803 m!5390611))

(declare-fun m!5391475 () Bool)

(assert (=> b!4580804 m!5391475))

(assert (=> b!4580804 m!5391471))

(assert (=> b!4580804 m!5391471))

(assert (=> b!4580804 m!5391473))

(declare-fun m!5391477 () Bool)

(assert (=> b!4580804 m!5391477))

(assert (=> d!1434512 m!5391465))

(declare-fun m!5391479 () Bool)

(assert (=> bm!319742 m!5391479))

(assert (=> b!4580802 m!5390611))

(assert (=> b!4580802 m!5390611))

(assert (=> b!4580802 m!5391469))

(assert (=> d!1434204 d!1434512))

(declare-fun bm!319755 () Bool)

(declare-fun call!319764 () (InoxSet tuple2!51522))

(assert (=> bm!319755 (= call!319764 (content!8586 (toList!4552 lt!1745243)))))

(declare-fun call!319765 () (InoxSet tuple2!51522))

(declare-fun e!2856611 () Bool)

(declare-fun b!4580896 () Bool)

(declare-fun get!16817 (Option!11328) V!12566)

(assert (=> b!4580896 (= e!2856611 (= call!319765 ((_ map and) call!319764 ((_ map not) (store ((as const (Array tuple2!51522 Bool)) false) (tuple2!51523 key!3287 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287))) true)))))))

(assert (=> b!4580896 (containsKey!2057 (toList!4552 lt!1745243) key!3287)))

(declare-fun lt!1746009 () Unit!105525)

(assert (=> b!4580896 (= lt!1746009 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745243) key!3287))))

(assert (=> b!4580896 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287))))

(declare-fun lt!1746008 () Unit!105525)

(assert (=> b!4580896 (= lt!1746008 lt!1746009)))

(declare-fun b!4580897 () Bool)

(declare-fun e!2856616 () List!51074)

(assert (=> b!4580897 (= e!2856616 (t!358064 (toList!4552 lt!1745243)))))

(declare-fun c!784050 () Bool)

(declare-fun call!319761 () Bool)

(assert (=> b!4580897 (= c!784050 call!319761)))

(declare-fun lt!1746005 () Unit!105525)

(declare-fun e!2856610 () Unit!105525)

(assert (=> b!4580897 (= lt!1746005 e!2856610)))

(declare-fun e!2856608 () List!51074)

(declare-fun bm!319756 () Bool)

(declare-fun c!784048 () Bool)

(declare-fun call!319763 () Bool)

(declare-fun lt!1746004 () K!12320)

(assert (=> bm!319756 (= call!319763 (containsKey!2057 e!2856608 (ite c!784048 lt!1746004 (_1!29055 (h!56885 (toList!4552 lt!1745243))))))))

(declare-fun c!784053 () Bool)

(assert (=> bm!319756 (= c!784053 c!784048)))

(declare-fun b!4580898 () Bool)

(assert (=> b!4580898 (= e!2856608 (removePresrvNoDuplicatedKeys!211 (t!358064 (toList!4552 lt!1745243)) key!3287))))

(declare-fun b!4580900 () Bool)

(declare-fun e!2856615 () Bool)

(assert (=> b!4580900 (= e!2856615 e!2856611)))

(declare-fun c!784051 () Bool)

(assert (=> b!4580900 (= c!784051 (containsKey!2057 (toList!4552 lt!1745243) key!3287))))

(declare-fun b!4580901 () Bool)

(declare-fun lt!1745993 () Unit!105525)

(declare-fun e!2856614 () Unit!105525)

(assert (=> b!4580901 (= lt!1745993 e!2856614)))

(declare-fun c!784047 () Bool)

(assert (=> b!4580901 (= c!784047 call!319763)))

(declare-fun lt!1746006 () Unit!105525)

(declare-fun e!2856613 () Unit!105525)

(assert (=> b!4580901 (= lt!1746006 e!2856613)))

(declare-fun c!784049 () Bool)

(assert (=> b!4580901 (= c!784049 (contains!13849 (getKeysList!544 (t!358064 (toList!4552 lt!1745243))) (_1!29055 (h!56885 (toList!4552 lt!1745243)))))))

(declare-fun lt!1745998 () List!51074)

(declare-fun $colon$colon!1023 (List!51074 tuple2!51522) List!51074)

(assert (=> b!4580901 (= lt!1745998 ($colon$colon!1023 (removePresrvNoDuplicatedKeys!211 (t!358064 (toList!4552 lt!1745243)) key!3287) (h!56885 (toList!4552 lt!1745243))))))

(declare-fun e!2856609 () List!51074)

(assert (=> b!4580901 (= e!2856609 lt!1745998)))

(declare-fun b!4580902 () Bool)

(declare-fun Unit!105697 () Unit!105525)

(assert (=> b!4580902 (= e!2856614 Unit!105697)))

(declare-fun b!4580903 () Bool)

(declare-fun res!1913967 () Bool)

(assert (=> b!4580903 (=> (not res!1913967) (not e!2856615))))

(declare-fun lt!1745997 () List!51074)

(assert (=> b!4580903 (= res!1913967 (= (content!8587 (getKeysList!544 lt!1745997)) ((_ map and) (content!8587 (getKeysList!544 (toList!4552 lt!1745243))) ((_ map not) (store ((as const (Array K!12320 Bool)) false) key!3287 true)))))))

(declare-fun b!4580904 () Bool)

(declare-fun e!2856612 () Unit!105525)

(declare-fun Unit!105698 () Unit!105525)

(assert (=> b!4580904 (= e!2856612 Unit!105698)))

(declare-fun b!4580905 () Bool)

(assert (=> b!4580905 (= e!2856608 (t!358064 (toList!4552 lt!1745243)))))

(declare-fun bm!319757 () Bool)

(assert (=> bm!319757 (= call!319765 (content!8586 lt!1745997))))

(declare-fun b!4580906 () Bool)

(assert (=> b!4580906 (= e!2856609 Nil!50950)))

(declare-fun b!4580907 () Bool)

(assert (=> b!4580907 (= e!2856616 e!2856609)))

(declare-fun c!784052 () Bool)

(assert (=> b!4580907 (= c!784052 (and ((_ is Cons!50950) (toList!4552 lt!1745243)) (not (= (_1!29055 (h!56885 (toList!4552 lt!1745243))) key!3287))))))

(declare-fun b!4580908 () Bool)

(declare-fun Unit!105700 () Unit!105525)

(assert (=> b!4580908 (= e!2856614 Unit!105700)))

(declare-fun lt!1746000 () List!51074)

(assert (=> b!4580908 (= lt!1746000 (removePresrvNoDuplicatedKeys!211 (t!358064 (toList!4552 lt!1745243)) key!3287))))

(declare-fun lt!1745999 () Unit!105525)

(assert (=> b!4580908 (= lt!1745999 (lemmaInListThenGetKeysListContains!540 lt!1746000 (_1!29055 (h!56885 (toList!4552 lt!1745243)))))))

(assert (=> b!4580908 (contains!13849 (getKeysList!544 lt!1746000) (_1!29055 (h!56885 (toList!4552 lt!1745243))))))

(declare-fun lt!1745995 () Unit!105525)

(assert (=> b!4580908 (= lt!1745995 lt!1745999)))

(assert (=> b!4580908 false))

(declare-fun b!4580909 () Bool)

(assert (=> b!4580909 (= e!2856611 (= call!319765 call!319764))))

(declare-fun b!4580899 () Bool)

(declare-fun Unit!105701 () Unit!105525)

(assert (=> b!4580899 (= e!2856613 Unit!105701)))

(declare-fun d!1434514 () Bool)

(assert (=> d!1434514 e!2856615))

(declare-fun res!1913965 () Bool)

(assert (=> d!1434514 (=> (not res!1913965) (not e!2856615))))

(assert (=> d!1434514 (= res!1913965 (invariantList!1097 lt!1745997))))

(assert (=> d!1434514 (= lt!1745997 e!2856616)))

(assert (=> d!1434514 (= c!784048 (and ((_ is Cons!50950) (toList!4552 lt!1745243)) (= (_1!29055 (h!56885 (toList!4552 lt!1745243))) key!3287)))))

(assert (=> d!1434514 (invariantList!1097 (toList!4552 lt!1745243))))

(assert (=> d!1434514 (= (removePresrvNoDuplicatedKeys!211 (toList!4552 lt!1745243) key!3287) lt!1745997)))

(declare-fun b!4580910 () Bool)

(declare-fun res!1913966 () Bool)

(assert (=> b!4580910 (=> (not res!1913966) (not e!2856615))))

(assert (=> b!4580910 (= res!1913966 (not (containsKey!2057 lt!1745997 key!3287)))))

(declare-fun b!4580911 () Bool)

(declare-fun Unit!105703 () Unit!105525)

(assert (=> b!4580911 (= e!2856612 Unit!105703)))

(declare-fun lt!1746002 () V!12566)

(assert (=> b!4580911 (= lt!1746002 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287)))))

(assert (=> b!4580911 (= lt!1746004 key!3287)))

(declare-fun lt!1746003 () K!12320)

(assert (=> b!4580911 (= lt!1746003 key!3287)))

(declare-fun lt!1746007 () Unit!105525)

(declare-fun lemmaContainsTupleThenContainsKey!98 (List!51074 K!12320 V!12566) Unit!105525)

(assert (=> b!4580911 (= lt!1746007 (lemmaContainsTupleThenContainsKey!98 (t!358064 (toList!4552 lt!1745243)) lt!1746004 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287))))))

(assert (=> b!4580911 call!319763))

(declare-fun lt!1745996 () Unit!105525)

(assert (=> b!4580911 (= lt!1745996 lt!1746007)))

(assert (=> b!4580911 false))

(declare-fun b!4580912 () Bool)

(declare-fun call!319760 () (InoxSet tuple2!51522))

(declare-fun call!319762 () (InoxSet tuple2!51522))

(assert (=> b!4580912 (= call!319762 ((_ map and) call!319760 ((_ map not) (store ((as const (Array tuple2!51522 Bool)) false) (tuple2!51523 key!3287 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287))) true))))))

(declare-fun lt!1745992 () Unit!105525)

(assert (=> b!4580912 (= lt!1745992 e!2856612)))

(declare-fun c!784054 () Bool)

(assert (=> b!4580912 (= c!784054 (contains!13851 (t!358064 (toList!4552 lt!1745243)) (tuple2!51523 key!3287 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745243) key!3287)))))))

(declare-fun Unit!105704 () Unit!105525)

(assert (=> b!4580912 (= e!2856610 Unit!105704)))

(declare-fun bm!319758 () Bool)

(assert (=> bm!319758 (= call!319761 (containsKey!2057 (ite c!784048 (toList!4552 lt!1745243) (t!358064 (toList!4552 lt!1745243))) (ite c!784048 key!3287 (_1!29055 (h!56885 (toList!4552 lt!1745243))))))))

(declare-fun bm!319759 () Bool)

(assert (=> bm!319759 (= call!319760 (content!8586 (toList!4552 lt!1745243)))))

(declare-fun bm!319760 () Bool)

(assert (=> bm!319760 (= call!319762 (content!8586 (t!358064 (toList!4552 lt!1745243))))))

(declare-fun b!4580913 () Bool)

(declare-fun Unit!105705 () Unit!105525)

(assert (=> b!4580913 (= e!2856613 Unit!105705)))

(declare-fun lt!1745994 () Unit!105525)

(assert (=> b!4580913 (= lt!1745994 (lemmaInGetKeysListThenContainsKey!543 (t!358064 (toList!4552 lt!1745243)) (_1!29055 (h!56885 (toList!4552 lt!1745243)))))))

(assert (=> b!4580913 call!319761))

(declare-fun lt!1746001 () Unit!105525)

(assert (=> b!4580913 (= lt!1746001 lt!1745994)))

(assert (=> b!4580913 false))

(declare-fun b!4580914 () Bool)

(assert (=> b!4580914 (= call!319762 call!319760)))

(declare-fun Unit!105706 () Unit!105525)

(assert (=> b!4580914 (= e!2856610 Unit!105706)))

(assert (= (and d!1434514 c!784048) b!4580897))

(assert (= (and d!1434514 (not c!784048)) b!4580907))

(assert (= (and b!4580897 c!784050) b!4580912))

(assert (= (and b!4580897 (not c!784050)) b!4580914))

(assert (= (and b!4580912 c!784054) b!4580911))

(assert (= (and b!4580912 (not c!784054)) b!4580904))

(assert (= (or b!4580912 b!4580914) bm!319760))

(assert (= (or b!4580912 b!4580914) bm!319759))

(assert (= (and b!4580907 c!784052) b!4580901))

(assert (= (and b!4580907 (not c!784052)) b!4580906))

(assert (= (and b!4580901 c!784049) b!4580913))

(assert (= (and b!4580901 (not c!784049)) b!4580899))

(assert (= (and b!4580901 c!784047) b!4580908))

(assert (= (and b!4580901 (not c!784047)) b!4580902))

(assert (= (or b!4580897 b!4580913) bm!319758))

(assert (= (or b!4580911 b!4580901) bm!319756))

(assert (= (and bm!319756 c!784053) b!4580905))

(assert (= (and bm!319756 (not c!784053)) b!4580898))

(assert (= (and d!1434514 res!1913965) b!4580910))

(assert (= (and b!4580910 res!1913966) b!4580903))

(assert (= (and b!4580903 res!1913967) b!4580900))

(assert (= (and b!4580900 c!784051) b!4580896))

(assert (= (and b!4580900 (not c!784051)) b!4580909))

(assert (= (or b!4580896 b!4580909) bm!319757))

(assert (= (or b!4580896 b!4580909) bm!319755))

(declare-fun m!5391529 () Bool)

(assert (=> b!4580910 m!5391529))

(assert (=> b!4580900 m!5390003))

(declare-fun m!5391531 () Bool)

(assert (=> bm!319758 m!5391531))

(declare-fun m!5391533 () Bool)

(assert (=> d!1434514 m!5391533))

(assert (=> d!1434514 m!5390893))

(declare-fun m!5391535 () Bool)

(assert (=> b!4580901 m!5391535))

(assert (=> b!4580901 m!5391535))

(declare-fun m!5391537 () Bool)

(assert (=> b!4580901 m!5391537))

(declare-fun m!5391539 () Bool)

(assert (=> b!4580901 m!5391539))

(assert (=> b!4580901 m!5391539))

(declare-fun m!5391541 () Bool)

(assert (=> b!4580901 m!5391541))

(assert (=> bm!319755 m!5389859))

(assert (=> bm!319759 m!5389859))

(assert (=> b!4580898 m!5391539))

(assert (=> b!4580911 m!5390011))

(assert (=> b!4580911 m!5390011))

(declare-fun m!5391543 () Bool)

(assert (=> b!4580911 m!5391543))

(assert (=> b!4580911 m!5391543))

(declare-fun m!5391545 () Bool)

(assert (=> b!4580911 m!5391545))

(declare-fun m!5391547 () Bool)

(assert (=> b!4580903 m!5391547))

(assert (=> b!4580903 m!5390015))

(assert (=> b!4580903 m!5390481))

(assert (=> b!4580903 m!5391547))

(declare-fun m!5391549 () Bool)

(assert (=> b!4580903 m!5391549))

(assert (=> b!4580903 m!5390015))

(declare-fun m!5391551 () Bool)

(assert (=> b!4580903 m!5391551))

(assert (=> bm!319760 m!5391457))

(declare-fun m!5391553 () Bool)

(assert (=> bm!319756 m!5391553))

(assert (=> b!4580896 m!5390011))

(assert (=> b!4580896 m!5390011))

(assert (=> b!4580896 m!5391543))

(declare-fun m!5391555 () Bool)

(assert (=> b!4580896 m!5391555))

(assert (=> b!4580896 m!5390017))

(assert (=> b!4580896 m!5390003))

(assert (=> b!4580896 m!5390011))

(assert (=> b!4580896 m!5390013))

(assert (=> b!4580908 m!5391539))

(declare-fun m!5391557 () Bool)

(assert (=> b!4580908 m!5391557))

(declare-fun m!5391559 () Bool)

(assert (=> b!4580908 m!5391559))

(assert (=> b!4580908 m!5391559))

(declare-fun m!5391561 () Bool)

(assert (=> b!4580908 m!5391561))

(declare-fun m!5391563 () Bool)

(assert (=> bm!319757 m!5391563))

(declare-fun m!5391565 () Bool)

(assert (=> b!4580913 m!5391565))

(assert (=> b!4580912 m!5390011))

(assert (=> b!4580912 m!5390011))

(assert (=> b!4580912 m!5391543))

(assert (=> b!4580912 m!5391555))

(declare-fun m!5391567 () Bool)

(assert (=> b!4580912 m!5391567))

(assert (=> d!1434204 d!1434514))

(declare-fun d!1434538 () Bool)

(assert (=> d!1434538 (= (invariantList!1097 (toList!4552 lt!1745703)) (noDuplicatedKeys!306 (toList!4552 lt!1745703)))))

(declare-fun bs!972627 () Bool)

(assert (= bs!972627 d!1434538))

(declare-fun m!5391569 () Bool)

(assert (=> bs!972627 m!5391569))

(assert (=> d!1434244 d!1434538))

(declare-fun d!1434540 () Bool)

(declare-fun res!1913968 () Bool)

(declare-fun e!2856617 () Bool)

(assert (=> d!1434540 (=> res!1913968 e!2856617)))

(assert (=> d!1434540 (= res!1913968 ((_ is Nil!50951) (toList!4551 lt!1745235)))))

(assert (=> d!1434540 (= (forall!10500 (toList!4551 lt!1745235) lambda!183171) e!2856617)))

(declare-fun b!4580915 () Bool)

(declare-fun e!2856618 () Bool)

(assert (=> b!4580915 (= e!2856617 e!2856618)))

(declare-fun res!1913969 () Bool)

(assert (=> b!4580915 (=> (not res!1913969) (not e!2856618))))

(assert (=> b!4580915 (= res!1913969 (dynLambda!21335 lambda!183171 (h!56886 (toList!4551 lt!1745235))))))

(declare-fun b!4580916 () Bool)

(assert (=> b!4580916 (= e!2856618 (forall!10500 (t!358065 (toList!4551 lt!1745235)) lambda!183171))))

(assert (= (and d!1434540 (not res!1913968)) b!4580915))

(assert (= (and b!4580915 res!1913969) b!4580916))

(declare-fun b_lambda!166087 () Bool)

(assert (=> (not b_lambda!166087) (not b!4580915)))

(declare-fun m!5391571 () Bool)

(assert (=> b!4580915 m!5391571))

(declare-fun m!5391573 () Bool)

(assert (=> b!4580916 m!5391573))

(assert (=> d!1434244 d!1434540))

(assert (=> b!4580365 d!1434308))

(declare-fun d!1434542 () Bool)

(declare-fun lt!1746010 () Bool)

(assert (=> d!1434542 (= lt!1746010 (select (content!8587 e!2856077) key!3287))))

(declare-fun e!2856619 () Bool)

(assert (=> d!1434542 (= lt!1746010 e!2856619)))

(declare-fun res!1913970 () Bool)

(assert (=> d!1434542 (=> (not res!1913970) (not e!2856619))))

(assert (=> d!1434542 (= res!1913970 ((_ is Cons!50953) e!2856077))))

(assert (=> d!1434542 (= (contains!13849 e!2856077 key!3287) lt!1746010)))

(declare-fun b!4580917 () Bool)

(declare-fun e!2856620 () Bool)

(assert (=> b!4580917 (= e!2856619 e!2856620)))

(declare-fun res!1913971 () Bool)

(assert (=> b!4580917 (=> res!1913971 e!2856620)))

(assert (=> b!4580917 (= res!1913971 (= (h!56890 e!2856077) key!3287))))

(declare-fun b!4580918 () Bool)

(assert (=> b!4580918 (= e!2856620 (contains!13849 (t!358067 e!2856077) key!3287))))

(assert (= (and d!1434542 res!1913970) b!4580917))

(assert (= (and b!4580917 (not res!1913971)) b!4580918))

(declare-fun m!5391575 () Bool)

(assert (=> d!1434542 m!5391575))

(declare-fun m!5391577 () Bool)

(assert (=> d!1434542 m!5391577))

(declare-fun m!5391579 () Bool)

(assert (=> b!4580918 m!5391579))

(assert (=> bm!319680 d!1434542))

(declare-fun d!1434544 () Bool)

(assert (=> d!1434544 (= (invariantList!1097 (toList!4552 lt!1745340)) (noDuplicatedKeys!306 (toList!4552 lt!1745340)))))

(declare-fun bs!972628 () Bool)

(assert (= bs!972628 d!1434544))

(declare-fun m!5391581 () Bool)

(assert (=> bs!972628 m!5391581))

(assert (=> d!1434056 d!1434544))

(declare-fun d!1434546 () Bool)

(declare-fun res!1913972 () Bool)

(declare-fun e!2856621 () Bool)

(assert (=> d!1434546 (=> res!1913972 e!2856621)))

(assert (=> d!1434546 (= res!1913972 ((_ is Nil!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434546 (= (forall!10500 (toList!4551 lm!1477) lambda!183049) e!2856621)))

(declare-fun b!4580919 () Bool)

(declare-fun e!2856622 () Bool)

(assert (=> b!4580919 (= e!2856621 e!2856622)))

(declare-fun res!1913973 () Bool)

(assert (=> b!4580919 (=> (not res!1913973) (not e!2856622))))

(assert (=> b!4580919 (= res!1913973 (dynLambda!21335 lambda!183049 (h!56886 (toList!4551 lm!1477))))))

(declare-fun b!4580920 () Bool)

(assert (=> b!4580920 (= e!2856622 (forall!10500 (t!358065 (toList!4551 lm!1477)) lambda!183049))))

(assert (= (and d!1434546 (not res!1913972)) b!4580919))

(assert (= (and b!4580919 res!1913973) b!4580920))

(declare-fun b_lambda!166089 () Bool)

(assert (=> (not b_lambda!166089) (not b!4580919)))

(declare-fun m!5391583 () Bool)

(assert (=> b!4580919 m!5391583))

(declare-fun m!5391585 () Bool)

(assert (=> b!4580920 m!5391585))

(assert (=> d!1434056 d!1434546))

(declare-fun d!1434548 () Bool)

(declare-fun res!1913974 () Bool)

(declare-fun e!2856623 () Bool)

(assert (=> d!1434548 (=> res!1913974 e!2856623)))

(assert (=> d!1434548 (= res!1913974 (and ((_ is Cons!50950) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= (_1!29055 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) key!3287)))))

(assert (=> d!1434548 (= (containsKey!2057 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287) e!2856623)))

(declare-fun b!4580921 () Bool)

(declare-fun e!2856624 () Bool)

(assert (=> b!4580921 (= e!2856623 e!2856624)))

(declare-fun res!1913975 () Bool)

(assert (=> b!4580921 (=> (not res!1913975) (not e!2856624))))

(assert (=> b!4580921 (= res!1913975 ((_ is Cons!50950) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))))

(declare-fun b!4580922 () Bool)

(assert (=> b!4580922 (= e!2856624 (containsKey!2057 (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) key!3287))))

(assert (= (and d!1434548 (not res!1913974)) b!4580921))

(assert (= (and b!4580921 res!1913975) b!4580922))

(declare-fun m!5391587 () Bool)

(assert (=> b!4580922 m!5391587))

(assert (=> d!1434248 d!1434548))

(declare-fun b!4580923 () Bool)

(declare-fun e!2856630 () Unit!105525)

(declare-fun Unit!105707 () Unit!105525)

(assert (=> b!4580923 (= e!2856630 Unit!105707)))

(declare-fun b!4580924 () Bool)

(declare-fun e!2856625 () Bool)

(declare-fun e!2856628 () Bool)

(assert (=> b!4580924 (= e!2856625 e!2856628)))

(declare-fun res!1913977 () Bool)

(assert (=> b!4580924 (=> (not res!1913977) (not e!2856628))))

(assert (=> b!4580924 (= res!1913977 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745623) key!3287)))))

(declare-fun b!4580925 () Bool)

(declare-fun e!2856627 () Unit!105525)

(assert (=> b!4580925 (= e!2856627 e!2856630)))

(declare-fun c!784056 () Bool)

(declare-fun call!319766 () Bool)

(assert (=> b!4580925 (= c!784056 call!319766)))

(declare-fun b!4580926 () Bool)

(assert (=> b!4580926 (= e!2856628 (contains!13849 (keys!17800 lt!1745623) key!3287))))

(declare-fun b!4580927 () Bool)

(declare-fun e!2856626 () List!51077)

(assert (=> b!4580927 (= e!2856626 (keys!17800 lt!1745623))))

(declare-fun b!4580928 () Bool)

(declare-fun lt!1746014 () Unit!105525)

(assert (=> b!4580928 (= e!2856627 lt!1746014)))

(declare-fun lt!1746012 () Unit!105525)

(assert (=> b!4580928 (= lt!1746012 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745623) key!3287))))

(assert (=> b!4580928 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745623) key!3287))))

(declare-fun lt!1746017 () Unit!105525)

(assert (=> b!4580928 (= lt!1746017 lt!1746012)))

(assert (=> b!4580928 (= lt!1746014 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745623) key!3287))))

(assert (=> b!4580928 call!319766))

(declare-fun bm!319761 () Bool)

(assert (=> bm!319761 (= call!319766 (contains!13849 e!2856626 key!3287))))

(declare-fun c!784055 () Bool)

(declare-fun c!784057 () Bool)

(assert (=> bm!319761 (= c!784055 c!784057)))

(declare-fun d!1434550 () Bool)

(assert (=> d!1434550 e!2856625))

(declare-fun res!1913978 () Bool)

(assert (=> d!1434550 (=> res!1913978 e!2856625)))

(declare-fun e!2856629 () Bool)

(assert (=> d!1434550 (= res!1913978 e!2856629)))

(declare-fun res!1913976 () Bool)

(assert (=> d!1434550 (=> (not res!1913976) (not e!2856629))))

(declare-fun lt!1746013 () Bool)

(assert (=> d!1434550 (= res!1913976 (not lt!1746013))))

(declare-fun lt!1746018 () Bool)

(assert (=> d!1434550 (= lt!1746013 lt!1746018)))

(declare-fun lt!1746011 () Unit!105525)

(assert (=> d!1434550 (= lt!1746011 e!2856627)))

(assert (=> d!1434550 (= c!784057 lt!1746018)))

(assert (=> d!1434550 (= lt!1746018 (containsKey!2057 (toList!4552 lt!1745623) key!3287))))

(assert (=> d!1434550 (= (contains!13846 lt!1745623 key!3287) lt!1746013)))

(declare-fun b!4580929 () Bool)

(assert (=> b!4580929 (= e!2856626 (getKeysList!544 (toList!4552 lt!1745623)))))

(declare-fun b!4580930 () Bool)

(assert (=> b!4580930 false))

(declare-fun lt!1746015 () Unit!105525)

(declare-fun lt!1746016 () Unit!105525)

(assert (=> b!4580930 (= lt!1746015 lt!1746016)))

(assert (=> b!4580930 (containsKey!2057 (toList!4552 lt!1745623) key!3287)))

(assert (=> b!4580930 (= lt!1746016 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745623) key!3287))))

(declare-fun Unit!105708 () Unit!105525)

(assert (=> b!4580930 (= e!2856630 Unit!105708)))

(declare-fun b!4580931 () Bool)

(assert (=> b!4580931 (= e!2856629 (not (contains!13849 (keys!17800 lt!1745623) key!3287)))))

(assert (= (and d!1434550 c!784057) b!4580928))

(assert (= (and d!1434550 (not c!784057)) b!4580925))

(assert (= (and b!4580925 c!784056) b!4580930))

(assert (= (and b!4580925 (not c!784056)) b!4580923))

(assert (= (or b!4580928 b!4580925) bm!319761))

(assert (= (and bm!319761 c!784055) b!4580929))

(assert (= (and bm!319761 (not c!784055)) b!4580927))

(assert (= (and d!1434550 res!1913976) b!4580931))

(assert (= (and d!1434550 (not res!1913978)) b!4580924))

(assert (= (and b!4580924 res!1913977) b!4580926))

(declare-fun m!5391589 () Bool)

(assert (=> b!4580930 m!5391589))

(declare-fun m!5391591 () Bool)

(assert (=> b!4580930 m!5391591))

(assert (=> b!4580931 m!5390529))

(assert (=> b!4580931 m!5390529))

(declare-fun m!5391593 () Bool)

(assert (=> b!4580931 m!5391593))

(declare-fun m!5391595 () Bool)

(assert (=> b!4580924 m!5391595))

(assert (=> b!4580924 m!5391595))

(declare-fun m!5391597 () Bool)

(assert (=> b!4580924 m!5391597))

(declare-fun m!5391599 () Bool)

(assert (=> b!4580929 m!5391599))

(assert (=> b!4580927 m!5390529))

(declare-fun m!5391601 () Bool)

(assert (=> b!4580928 m!5391601))

(assert (=> b!4580928 m!5391595))

(assert (=> b!4580928 m!5391595))

(assert (=> b!4580928 m!5391597))

(declare-fun m!5391603 () Bool)

(assert (=> b!4580928 m!5391603))

(assert (=> d!1434550 m!5391589))

(declare-fun m!5391605 () Bool)

(assert (=> bm!319761 m!5391605))

(assert (=> b!4580926 m!5390529))

(assert (=> b!4580926 m!5390529))

(assert (=> b!4580926 m!5391593))

(assert (=> d!1434182 d!1434550))

(declare-fun bm!319762 () Bool)

(declare-fun call!319771 () (InoxSet tuple2!51522))

(assert (=> bm!319762 (= call!319771 (content!8586 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))

(declare-fun b!4580932 () Bool)

(declare-fun e!2856634 () Bool)

(declare-fun call!319772 () (InoxSet tuple2!51522))

(assert (=> b!4580932 (= e!2856634 (= call!319772 ((_ map and) call!319771 ((_ map not) (store ((as const (Array tuple2!51522 Bool)) false) (tuple2!51523 key!3287 (get!16817 (getValueByKey!1254 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287))) true)))))))

(assert (=> b!4580932 (containsKey!2057 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287)))

(declare-fun lt!1746036 () Unit!105525)

(assert (=> b!4580932 (= lt!1746036 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287))))

(assert (=> b!4580932 (isDefined!8597 (getValueByKey!1254 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287))))

(declare-fun lt!1746035 () Unit!105525)

(assert (=> b!4580932 (= lt!1746035 lt!1746036)))

(declare-fun b!4580933 () Bool)

(declare-fun e!2856639 () List!51074)

(assert (=> b!4580933 (= e!2856639 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))

(declare-fun c!784061 () Bool)

(declare-fun call!319768 () Bool)

(assert (=> b!4580933 (= c!784061 call!319768)))

(declare-fun lt!1746032 () Unit!105525)

(declare-fun e!2856633 () Unit!105525)

(assert (=> b!4580933 (= lt!1746032 e!2856633)))

(declare-fun bm!319763 () Bool)

(declare-fun c!784059 () Bool)

(declare-fun call!319770 () Bool)

(declare-fun e!2856631 () List!51074)

(declare-fun lt!1746031 () K!12320)

(assert (=> bm!319763 (= call!319770 (containsKey!2057 e!2856631 (ite c!784059 lt!1746031 (_1!29055 (h!56885 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))))))))

(declare-fun c!784064 () Bool)

(assert (=> bm!319763 (= c!784064 c!784059)))

(declare-fun b!4580934 () Bool)

(assert (=> b!4580934 (= e!2856631 (removePresrvNoDuplicatedKeys!211 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) key!3287))))

(declare-fun b!4580936 () Bool)

(declare-fun e!2856638 () Bool)

(assert (=> b!4580936 (= e!2856638 e!2856634)))

(declare-fun c!784062 () Bool)

(assert (=> b!4580936 (= c!784062 (containsKey!2057 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287))))

(declare-fun b!4580937 () Bool)

(declare-fun lt!1746020 () Unit!105525)

(declare-fun e!2856637 () Unit!105525)

(assert (=> b!4580937 (= lt!1746020 e!2856637)))

(declare-fun c!784058 () Bool)

(assert (=> b!4580937 (= c!784058 call!319770)))

(declare-fun lt!1746033 () Unit!105525)

(declare-fun e!2856636 () Unit!105525)

(assert (=> b!4580937 (= lt!1746033 e!2856636)))

(declare-fun c!784060 () Bool)

(assert (=> b!4580937 (= c!784060 (contains!13849 (getKeysList!544 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))) (_1!29055 (h!56885 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))))

(declare-fun lt!1746025 () List!51074)

(assert (=> b!4580937 (= lt!1746025 ($colon$colon!1023 (removePresrvNoDuplicatedKeys!211 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) key!3287) (h!56885 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))))))

(declare-fun e!2856632 () List!51074)

(assert (=> b!4580937 (= e!2856632 lt!1746025)))

(declare-fun b!4580938 () Bool)

(declare-fun Unit!105709 () Unit!105525)

(assert (=> b!4580938 (= e!2856637 Unit!105709)))

(declare-fun b!4580939 () Bool)

(declare-fun res!1913981 () Bool)

(assert (=> b!4580939 (=> (not res!1913981) (not e!2856638))))

(declare-fun lt!1746024 () List!51074)

(assert (=> b!4580939 (= res!1913981 (= (content!8587 (getKeysList!544 lt!1746024)) ((_ map and) (content!8587 (getKeysList!544 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))) ((_ map not) (store ((as const (Array K!12320 Bool)) false) key!3287 true)))))))

(declare-fun b!4580940 () Bool)

(declare-fun e!2856635 () Unit!105525)

(declare-fun Unit!105710 () Unit!105525)

(assert (=> b!4580940 (= e!2856635 Unit!105710)))

(declare-fun b!4580941 () Bool)

(assert (=> b!4580941 (= e!2856631 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))

(declare-fun bm!319764 () Bool)

(assert (=> bm!319764 (= call!319772 (content!8586 lt!1746024))))

(declare-fun b!4580942 () Bool)

(assert (=> b!4580942 (= e!2856632 Nil!50950)))

(declare-fun b!4580943 () Bool)

(assert (=> b!4580943 (= e!2856639 e!2856632)))

(declare-fun c!784063 () Bool)

(assert (=> b!4580943 (= c!784063 (and ((_ is Cons!50950) (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) (not (= (_1!29055 (h!56885 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))) key!3287))))))

(declare-fun b!4580944 () Bool)

(declare-fun Unit!105711 () Unit!105525)

(assert (=> b!4580944 (= e!2856637 Unit!105711)))

(declare-fun lt!1746027 () List!51074)

(assert (=> b!4580944 (= lt!1746027 (removePresrvNoDuplicatedKeys!211 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) key!3287))))

(declare-fun lt!1746026 () Unit!105525)

(assert (=> b!4580944 (= lt!1746026 (lemmaInListThenGetKeysListContains!540 lt!1746027 (_1!29055 (h!56885 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))))

(assert (=> b!4580944 (contains!13849 (getKeysList!544 lt!1746027) (_1!29055 (h!56885 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))))))

(declare-fun lt!1746022 () Unit!105525)

(assert (=> b!4580944 (= lt!1746022 lt!1746026)))

(assert (=> b!4580944 false))

(declare-fun b!4580945 () Bool)

(assert (=> b!4580945 (= e!2856634 (= call!319772 call!319771))))

(declare-fun b!4580935 () Bool)

(declare-fun Unit!105712 () Unit!105525)

(assert (=> b!4580935 (= e!2856636 Unit!105712)))

(declare-fun d!1434552 () Bool)

(assert (=> d!1434552 e!2856638))

(declare-fun res!1913979 () Bool)

(assert (=> d!1434552 (=> (not res!1913979) (not e!2856638))))

(assert (=> d!1434552 (= res!1913979 (invariantList!1097 lt!1746024))))

(assert (=> d!1434552 (= lt!1746024 e!2856639)))

(assert (=> d!1434552 (= c!784059 (and ((_ is Cons!50950) (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) (= (_1!29055 (h!56885 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))) key!3287)))))

(assert (=> d!1434552 (invariantList!1097 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))))

(assert (=> d!1434552 (= (removePresrvNoDuplicatedKeys!211 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287) lt!1746024)))

(declare-fun b!4580946 () Bool)

(declare-fun res!1913980 () Bool)

(assert (=> b!4580946 (=> (not res!1913980) (not e!2856638))))

(assert (=> b!4580946 (= res!1913980 (not (containsKey!2057 lt!1746024 key!3287)))))

(declare-fun b!4580947 () Bool)

(declare-fun Unit!105713 () Unit!105525)

(assert (=> b!4580947 (= e!2856635 Unit!105713)))

(declare-fun lt!1746029 () V!12566)

(assert (=> b!4580947 (= lt!1746029 (get!16817 (getValueByKey!1254 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287)))))

(assert (=> b!4580947 (= lt!1746031 key!3287)))

(declare-fun lt!1746030 () K!12320)

(assert (=> b!4580947 (= lt!1746030 key!3287)))

(declare-fun lt!1746034 () Unit!105525)

(assert (=> b!4580947 (= lt!1746034 (lemmaContainsTupleThenContainsKey!98 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) lt!1746031 (get!16817 (getValueByKey!1254 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287))))))

(assert (=> b!4580947 call!319770))

(declare-fun lt!1746023 () Unit!105525)

(assert (=> b!4580947 (= lt!1746023 lt!1746034)))

(assert (=> b!4580947 false))

(declare-fun call!319767 () (InoxSet tuple2!51522))

(declare-fun call!319769 () (InoxSet tuple2!51522))

(declare-fun b!4580948 () Bool)

(assert (=> b!4580948 (= call!319769 ((_ map and) call!319767 ((_ map not) (store ((as const (Array tuple2!51522 Bool)) false) (tuple2!51523 key!3287 (get!16817 (getValueByKey!1254 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287))) true))))))

(declare-fun lt!1746019 () Unit!105525)

(assert (=> b!4580948 (= lt!1746019 e!2856635)))

(declare-fun c!784065 () Bool)

(assert (=> b!4580948 (= c!784065 (contains!13851 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) (tuple2!51523 key!3287 (get!16817 (getValueByKey!1254 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) key!3287)))))))

(declare-fun Unit!105714 () Unit!105525)

(assert (=> b!4580948 (= e!2856633 Unit!105714)))

(declare-fun bm!319765 () Bool)

(assert (=> bm!319765 (= call!319768 (containsKey!2057 (ite c!784059 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))) (ite c!784059 key!3287 (_1!29055 (h!56885 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))))))))

(declare-fun bm!319766 () Bool)

(assert (=> bm!319766 (= call!319767 (content!8586 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))

(declare-fun bm!319767 () Bool)

(assert (=> bm!319767 (= call!319769 (content!8586 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))))))

(declare-fun b!4580949 () Bool)

(declare-fun Unit!105715 () Unit!105525)

(assert (=> b!4580949 (= e!2856636 Unit!105715)))

(declare-fun lt!1746021 () Unit!105525)

(assert (=> b!4580949 (= lt!1746021 (lemmaInGetKeysListThenContainsKey!543 (t!358064 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) (_1!29055 (h!56885 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))))

(assert (=> b!4580949 call!319768))

(declare-fun lt!1746028 () Unit!105525)

(assert (=> b!4580949 (= lt!1746028 lt!1746021)))

(assert (=> b!4580949 false))

(declare-fun b!4580950 () Bool)

(assert (=> b!4580950 (= call!319769 call!319767)))

(declare-fun Unit!105716 () Unit!105525)

(assert (=> b!4580950 (= e!2856633 Unit!105716)))

(assert (= (and d!1434552 c!784059) b!4580933))

(assert (= (and d!1434552 (not c!784059)) b!4580943))

(assert (= (and b!4580933 c!784061) b!4580948))

(assert (= (and b!4580933 (not c!784061)) b!4580950))

(assert (= (and b!4580948 c!784065) b!4580947))

(assert (= (and b!4580948 (not c!784065)) b!4580940))

(assert (= (or b!4580948 b!4580950) bm!319767))

(assert (= (or b!4580948 b!4580950) bm!319766))

(assert (= (and b!4580943 c!784063) b!4580937))

(assert (= (and b!4580943 (not c!784063)) b!4580942))

(assert (= (and b!4580937 c!784060) b!4580949))

(assert (= (and b!4580937 (not c!784060)) b!4580935))

(assert (= (and b!4580937 c!784058) b!4580944))

(assert (= (and b!4580937 (not c!784058)) b!4580938))

(assert (= (or b!4580933 b!4580949) bm!319765))

(assert (= (or b!4580947 b!4580937) bm!319763))

(assert (= (and bm!319763 c!784064) b!4580941))

(assert (= (and bm!319763 (not c!784064)) b!4580934))

(assert (= (and d!1434552 res!1913979) b!4580946))

(assert (= (and b!4580946 res!1913980) b!4580939))

(assert (= (and b!4580939 res!1913981) b!4580936))

(assert (= (and b!4580936 c!784062) b!4580932))

(assert (= (and b!4580936 (not c!784062)) b!4580945))

(assert (= (or b!4580932 b!4580945) bm!319764))

(assert (= (or b!4580932 b!4580945) bm!319762))

(declare-fun m!5391607 () Bool)

(assert (=> b!4580946 m!5391607))

(declare-fun m!5391609 () Bool)

(assert (=> b!4580936 m!5391609))

(declare-fun m!5391611 () Bool)

(assert (=> bm!319765 m!5391611))

(declare-fun m!5391613 () Bool)

(assert (=> d!1434552 m!5391613))

(declare-fun m!5391615 () Bool)

(assert (=> d!1434552 m!5391615))

(declare-fun m!5391617 () Bool)

(assert (=> b!4580937 m!5391617))

(assert (=> b!4580937 m!5391617))

(declare-fun m!5391619 () Bool)

(assert (=> b!4580937 m!5391619))

(declare-fun m!5391621 () Bool)

(assert (=> b!4580937 m!5391621))

(assert (=> b!4580937 m!5391621))

(declare-fun m!5391623 () Bool)

(assert (=> b!4580937 m!5391623))

(declare-fun m!5391625 () Bool)

(assert (=> bm!319762 m!5391625))

(assert (=> bm!319766 m!5391625))

(assert (=> b!4580934 m!5391621))

(declare-fun m!5391627 () Bool)

(assert (=> b!4580947 m!5391627))

(assert (=> b!4580947 m!5391627))

(declare-fun m!5391629 () Bool)

(assert (=> b!4580947 m!5391629))

(assert (=> b!4580947 m!5391629))

(declare-fun m!5391631 () Bool)

(assert (=> b!4580947 m!5391631))

(declare-fun m!5391633 () Bool)

(assert (=> b!4580939 m!5391633))

(declare-fun m!5391635 () Bool)

(assert (=> b!4580939 m!5391635))

(assert (=> b!4580939 m!5390481))

(assert (=> b!4580939 m!5391633))

(declare-fun m!5391637 () Bool)

(assert (=> b!4580939 m!5391637))

(assert (=> b!4580939 m!5391635))

(declare-fun m!5391639 () Bool)

(assert (=> b!4580939 m!5391639))

(declare-fun m!5391641 () Bool)

(assert (=> bm!319767 m!5391641))

(declare-fun m!5391643 () Bool)

(assert (=> bm!319763 m!5391643))

(assert (=> b!4580932 m!5391627))

(assert (=> b!4580932 m!5391627))

(assert (=> b!4580932 m!5391629))

(declare-fun m!5391645 () Bool)

(assert (=> b!4580932 m!5391645))

(declare-fun m!5391647 () Bool)

(assert (=> b!4580932 m!5391647))

(assert (=> b!4580932 m!5391609))

(assert (=> b!4580932 m!5391627))

(declare-fun m!5391649 () Bool)

(assert (=> b!4580932 m!5391649))

(assert (=> b!4580944 m!5391621))

(declare-fun m!5391651 () Bool)

(assert (=> b!4580944 m!5391651))

(declare-fun m!5391653 () Bool)

(assert (=> b!4580944 m!5391653))

(assert (=> b!4580944 m!5391653))

(declare-fun m!5391655 () Bool)

(assert (=> b!4580944 m!5391655))

(declare-fun m!5391657 () Bool)

(assert (=> bm!319764 m!5391657))

(declare-fun m!5391659 () Bool)

(assert (=> b!4580949 m!5391659))

(assert (=> b!4580948 m!5391627))

(assert (=> b!4580948 m!5391627))

(assert (=> b!4580948 m!5391629))

(assert (=> b!4580948 m!5391645))

(declare-fun m!5391661 () Bool)

(assert (=> b!4580948 m!5391661))

(assert (=> d!1434182 d!1434552))

(assert (=> d!1434004 d!1434508))

(assert (=> d!1434004 d!1434506))

(declare-fun d!1434554 () Bool)

(declare-fun res!1913982 () Bool)

(declare-fun e!2856640 () Bool)

(assert (=> d!1434554 (=> res!1913982 e!2856640)))

(assert (=> d!1434554 (= res!1913982 (and ((_ is Cons!50950) (t!358064 lt!1745226)) (= (_1!29055 (h!56885 (t!358064 lt!1745226))) key!3287)))))

(assert (=> d!1434554 (= (containsKey!2054 (t!358064 lt!1745226) key!3287) e!2856640)))

(declare-fun b!4580951 () Bool)

(declare-fun e!2856641 () Bool)

(assert (=> b!4580951 (= e!2856640 e!2856641)))

(declare-fun res!1913983 () Bool)

(assert (=> b!4580951 (=> (not res!1913983) (not e!2856641))))

(assert (=> b!4580951 (= res!1913983 ((_ is Cons!50950) (t!358064 lt!1745226)))))

(declare-fun b!4580952 () Bool)

(assert (=> b!4580952 (= e!2856641 (containsKey!2054 (t!358064 (t!358064 lt!1745226)) key!3287))))

(assert (= (and d!1434554 (not res!1913982)) b!4580951))

(assert (= (and b!4580951 res!1913983) b!4580952))

(declare-fun m!5391663 () Bool)

(assert (=> b!4580952 m!5391663))

(assert (=> b!4580397 d!1434554))

(assert (=> b!4580373 d!1434372))

(assert (=> b!4580373 d!1434374))

(declare-fun bs!972629 () Bool)

(declare-fun b!4580956 () Bool)

(assert (= bs!972629 (and b!4580956 b!4580368)))

(declare-fun lambda!183242 () Int)

(assert (=> bs!972629 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745665) (= lambda!183242 lambda!183166))))

(declare-fun bs!972630 () Bool)

(assert (= bs!972630 (and b!4580956 b!4580772)))

(assert (=> bs!972630 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745913) (= lambda!183242 lambda!183232))))

(declare-fun bs!972631 () Bool)

(assert (= bs!972631 (and b!4580956 b!4580664)))

(assert (=> bs!972631 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183242 lambda!183211))))

(declare-fun bs!972632 () Bool)

(assert (= bs!972632 (and b!4580956 b!4580305)))

(assert (=> bs!972632 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745627) (= lambda!183242 lambda!183159))))

(declare-fun bs!972633 () Bool)

(assert (= bs!972633 (and b!4580956 d!1434224)))

(assert (=> bs!972633 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745668) (= lambda!183242 lambda!183167))))

(declare-fun bs!972634 () Bool)

(assert (= bs!972634 (and b!4580956 d!1434338)))

(assert (=> bs!972634 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745759) (= lambda!183242 lambda!183193))))

(declare-fun bs!972635 () Bool)

(assert (= bs!972635 (and b!4580956 b!4580663)))

(assert (=> bs!972635 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745849) (= lambda!183242 lambda!183213))))

(declare-fun bs!972636 () Bool)

(assert (= bs!972636 (and b!4580956 d!1434184)))

(assert (=> bs!972636 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745630) (= lambda!183242 lambda!183160))))

(declare-fun bs!972637 () Bool)

(assert (= bs!972637 (and b!4580956 b!4580257)))

(assert (=> bs!972637 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745576) (= lambda!183242 lambda!183142))))

(declare-fun bs!972638 () Bool)

(assert (= bs!972638 (and b!4580956 d!1434446)))

(assert (=> bs!972638 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745852) (= lambda!183242 lambda!183214))))

(declare-fun bs!972639 () Bool)

(assert (= bs!972639 (and b!4580956 d!1434500)))

(assert (=> bs!972639 (not (= lambda!183242 lambda!183235))))

(declare-fun bs!972640 () Bool)

(assert (= bs!972640 (and b!4580956 b!4580536)))

(assert (=> bs!972640 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183242 lambda!183190))))

(declare-fun bs!972641 () Bool)

(assert (= bs!972641 (and b!4580956 b!4580306)))

(assert (=> bs!972641 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745232) (= lambda!183242 lambda!183157))))

(declare-fun bs!972642 () Bool)

(assert (= bs!972642 (and b!4580956 d!1434424)))

(assert (=> bs!972642 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745214) (= lambda!183242 lambda!183205))))

(assert (=> bs!972629 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745214) (= lambda!183242 lambda!183165))))

(declare-fun bs!972643 () Bool)

(assert (= bs!972643 (and b!4580956 b!4580574)))

(assert (=> bs!972643 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745787) (= lambda!183242 lambda!183202))))

(declare-fun bs!972644 () Bool)

(assert (= bs!972644 (and b!4580956 b!4580773)))

(assert (=> bs!972644 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183242 lambda!183230))))

(declare-fun bs!972645 () Bool)

(assert (= bs!972645 (and b!4580956 d!1434366)))

(assert (=> bs!972645 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745790) (= lambda!183242 lambda!183203))))

(declare-fun bs!972646 () Bool)

(assert (= bs!972646 (and b!4580956 d!1434060)))

(assert (=> bs!972646 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745579) (= lambda!183242 lambda!183143))))

(assert (=> bs!972632 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745232) (= lambda!183242 lambda!183158))))

(declare-fun bs!972647 () Bool)

(assert (= bs!972647 (and b!4580956 b!4579991)))

(assert (=> bs!972647 (not (= lambda!183242 lambda!183043))))

(declare-fun bs!972648 () Bool)

(assert (= bs!972648 (and b!4580956 b!4580535)))

(assert (=> bs!972648 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745756) (= lambda!183242 lambda!183192))))

(declare-fun bs!972649 () Bool)

(assert (= bs!972649 (and b!4580956 b!4580369)))

(assert (=> bs!972649 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745214) (= lambda!183242 lambda!183164))))

(declare-fun bs!972650 () Bool)

(assert (= bs!972650 (and b!4580956 b!4580575)))

(assert (=> bs!972650 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183242 lambda!183200))))

(assert (=> bs!972648 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183242 lambda!183191))))

(assert (=> bs!972630 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183242 lambda!183231))))

(assert (=> bs!972643 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183242 lambda!183201))))

(declare-fun bs!972651 () Bool)

(assert (= bs!972651 (and b!4580956 b!4580258)))

(assert (=> bs!972651 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745218) (= lambda!183242 lambda!183140))))

(declare-fun bs!972652 () Bool)

(assert (= bs!972652 (and b!4580956 d!1434486)))

(assert (=> bs!972652 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745916) (= lambda!183242 lambda!183233))))

(assert (=> bs!972637 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745218) (= lambda!183242 lambda!183141))))

(declare-fun bs!972653 () Bool)

(assert (= bs!972653 (and b!4580956 d!1434448)))

(assert (=> bs!972653 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745218) (= lambda!183242 lambda!183215))))

(assert (=> bs!972635 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183242 lambda!183212))))

(declare-fun bs!972654 () Bool)

(assert (= bs!972654 (and b!4580956 d!1434344)))

(assert (=> bs!972654 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745232) (= lambda!183242 lambda!183199))))

(declare-fun bs!972655 () Bool)

(assert (= bs!972655 (and b!4580956 d!1434256)))

(assert (=> bs!972655 (not (= lambda!183242 lambda!183178))))

(declare-fun bs!972656 () Bool)

(assert (= bs!972656 (and b!4580956 d!1434442)))

(assert (=> bs!972656 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745627) (= lambda!183242 lambda!183210))))

(assert (=> b!4580956 true))

(declare-fun bs!972657 () Bool)

(declare-fun b!4580955 () Bool)

(assert (= bs!972657 (and b!4580955 b!4580368)))

(declare-fun lambda!183243 () Int)

(assert (=> bs!972657 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745665) (= lambda!183243 lambda!183166))))

(declare-fun bs!972658 () Bool)

(assert (= bs!972658 (and b!4580955 b!4580772)))

(assert (=> bs!972658 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745913) (= lambda!183243 lambda!183232))))

(declare-fun bs!972659 () Bool)

(assert (= bs!972659 (and b!4580955 b!4580664)))

(assert (=> bs!972659 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183243 lambda!183211))))

(declare-fun bs!972660 () Bool)

(assert (= bs!972660 (and b!4580955 b!4580305)))

(assert (=> bs!972660 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745627) (= lambda!183243 lambda!183159))))

(declare-fun bs!972661 () Bool)

(assert (= bs!972661 (and b!4580955 d!1434224)))

(assert (=> bs!972661 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745668) (= lambda!183243 lambda!183167))))

(declare-fun bs!972662 () Bool)

(assert (= bs!972662 (and b!4580955 d!1434338)))

(assert (=> bs!972662 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745759) (= lambda!183243 lambda!183193))))

(declare-fun bs!972663 () Bool)

(assert (= bs!972663 (and b!4580955 d!1434184)))

(assert (=> bs!972663 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745630) (= lambda!183243 lambda!183160))))

(declare-fun bs!972664 () Bool)

(assert (= bs!972664 (and b!4580955 b!4580257)))

(assert (=> bs!972664 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745576) (= lambda!183243 lambda!183142))))

(declare-fun bs!972665 () Bool)

(assert (= bs!972665 (and b!4580955 d!1434446)))

(assert (=> bs!972665 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745852) (= lambda!183243 lambda!183214))))

(declare-fun bs!972666 () Bool)

(assert (= bs!972666 (and b!4580955 d!1434500)))

(assert (=> bs!972666 (not (= lambda!183243 lambda!183235))))

(declare-fun bs!972667 () Bool)

(assert (= bs!972667 (and b!4580955 b!4580536)))

(assert (=> bs!972667 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183243 lambda!183190))))

(declare-fun bs!972668 () Bool)

(assert (= bs!972668 (and b!4580955 b!4580306)))

(assert (=> bs!972668 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745232) (= lambda!183243 lambda!183157))))

(declare-fun bs!972669 () Bool)

(assert (= bs!972669 (and b!4580955 d!1434424)))

(assert (=> bs!972669 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745214) (= lambda!183243 lambda!183205))))

(assert (=> bs!972657 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745214) (= lambda!183243 lambda!183165))))

(declare-fun bs!972670 () Bool)

(assert (= bs!972670 (and b!4580955 b!4580574)))

(assert (=> bs!972670 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745787) (= lambda!183243 lambda!183202))))

(declare-fun bs!972671 () Bool)

(assert (= bs!972671 (and b!4580955 b!4580773)))

(assert (=> bs!972671 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183243 lambda!183230))))

(declare-fun bs!972672 () Bool)

(assert (= bs!972672 (and b!4580955 d!1434366)))

(assert (=> bs!972672 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745790) (= lambda!183243 lambda!183203))))

(declare-fun bs!972673 () Bool)

(assert (= bs!972673 (and b!4580955 d!1434060)))

(assert (=> bs!972673 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745579) (= lambda!183243 lambda!183143))))

(assert (=> bs!972660 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745232) (= lambda!183243 lambda!183158))))

(declare-fun bs!972674 () Bool)

(assert (= bs!972674 (and b!4580955 b!4579991)))

(assert (=> bs!972674 (not (= lambda!183243 lambda!183043))))

(declare-fun bs!972675 () Bool)

(assert (= bs!972675 (and b!4580955 b!4580535)))

(assert (=> bs!972675 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745756) (= lambda!183243 lambda!183192))))

(declare-fun bs!972676 () Bool)

(assert (= bs!972676 (and b!4580955 b!4580369)))

(assert (=> bs!972676 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745214) (= lambda!183243 lambda!183164))))

(declare-fun bs!972677 () Bool)

(assert (= bs!972677 (and b!4580955 b!4580575)))

(assert (=> bs!972677 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183243 lambda!183200))))

(assert (=> bs!972675 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183243 lambda!183191))))

(assert (=> bs!972658 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183243 lambda!183231))))

(declare-fun bs!972678 () Bool)

(assert (= bs!972678 (and b!4580955 b!4580663)))

(assert (=> bs!972678 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745849) (= lambda!183243 lambda!183213))))

(declare-fun bs!972679 () Bool)

(assert (= bs!972679 (and b!4580955 b!4580956)))

(assert (=> bs!972679 (= lambda!183243 lambda!183242)))

(assert (=> bs!972670 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183243 lambda!183201))))

(declare-fun bs!972680 () Bool)

(assert (= bs!972680 (and b!4580955 b!4580258)))

(assert (=> bs!972680 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745218) (= lambda!183243 lambda!183140))))

(declare-fun bs!972681 () Bool)

(assert (= bs!972681 (and b!4580955 d!1434486)))

(assert (=> bs!972681 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745916) (= lambda!183243 lambda!183233))))

(assert (=> bs!972664 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745218) (= lambda!183243 lambda!183141))))

(declare-fun bs!972682 () Bool)

(assert (= bs!972682 (and b!4580955 d!1434448)))

(assert (=> bs!972682 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745218) (= lambda!183243 lambda!183215))))

(assert (=> bs!972678 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183243 lambda!183212))))

(declare-fun bs!972683 () Bool)

(assert (= bs!972683 (and b!4580955 d!1434344)))

(assert (=> bs!972683 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745232) (= lambda!183243 lambda!183199))))

(declare-fun bs!972684 () Bool)

(assert (= bs!972684 (and b!4580955 d!1434256)))

(assert (=> bs!972684 (not (= lambda!183243 lambda!183178))))

(declare-fun bs!972685 () Bool)

(assert (= bs!972685 (and b!4580955 d!1434442)))

(assert (=> bs!972685 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1745627) (= lambda!183243 lambda!183210))))

(assert (=> b!4580955 true))

(declare-fun lambda!183244 () Int)

(declare-fun lt!1746040 () ListMap!3813)

(assert (=> bs!972657 (= (= lt!1746040 lt!1745665) (= lambda!183244 lambda!183166))))

(assert (=> bs!972658 (= (= lt!1746040 lt!1745913) (= lambda!183244 lambda!183232))))

(assert (=> bs!972659 (= (= lt!1746040 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183244 lambda!183211))))

(assert (=> bs!972660 (= (= lt!1746040 lt!1745627) (= lambda!183244 lambda!183159))))

(assert (=> bs!972661 (= (= lt!1746040 lt!1745668) (= lambda!183244 lambda!183167))))

(assert (=> bs!972662 (= (= lt!1746040 lt!1745759) (= lambda!183244 lambda!183193))))

(assert (=> bs!972663 (= (= lt!1746040 lt!1745630) (= lambda!183244 lambda!183160))))

(assert (=> bs!972664 (= (= lt!1746040 lt!1745576) (= lambda!183244 lambda!183142))))

(assert (=> bs!972665 (= (= lt!1746040 lt!1745852) (= lambda!183244 lambda!183214))))

(assert (=> bs!972667 (= (= lt!1746040 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183244 lambda!183190))))

(assert (=> bs!972668 (= (= lt!1746040 lt!1745232) (= lambda!183244 lambda!183157))))

(assert (=> bs!972669 (= (= lt!1746040 lt!1745214) (= lambda!183244 lambda!183205))))

(assert (=> bs!972657 (= (= lt!1746040 lt!1745214) (= lambda!183244 lambda!183165))))

(assert (=> bs!972670 (= (= lt!1746040 lt!1745787) (= lambda!183244 lambda!183202))))

(assert (=> bs!972671 (= (= lt!1746040 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183244 lambda!183230))))

(assert (=> bs!972672 (= (= lt!1746040 lt!1745790) (= lambda!183244 lambda!183203))))

(assert (=> bs!972673 (= (= lt!1746040 lt!1745579) (= lambda!183244 lambda!183143))))

(assert (=> bs!972660 (= (= lt!1746040 lt!1745232) (= lambda!183244 lambda!183158))))

(assert (=> bs!972674 (not (= lambda!183244 lambda!183043))))

(assert (=> bs!972675 (= (= lt!1746040 lt!1745756) (= lambda!183244 lambda!183192))))

(assert (=> bs!972676 (= (= lt!1746040 lt!1745214) (= lambda!183244 lambda!183164))))

(assert (=> bs!972677 (= (= lt!1746040 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183244 lambda!183200))))

(assert (=> bs!972675 (= (= lt!1746040 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183244 lambda!183191))))

(assert (=> bs!972658 (= (= lt!1746040 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183244 lambda!183231))))

(assert (=> bs!972678 (= (= lt!1746040 lt!1745849) (= lambda!183244 lambda!183213))))

(assert (=> bs!972679 (= (= lt!1746040 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183244 lambda!183242))))

(assert (=> bs!972670 (= (= lt!1746040 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183244 lambda!183201))))

(assert (=> bs!972680 (= (= lt!1746040 lt!1745218) (= lambda!183244 lambda!183140))))

(assert (=> bs!972681 (= (= lt!1746040 lt!1745916) (= lambda!183244 lambda!183233))))

(assert (=> bs!972664 (= (= lt!1746040 lt!1745218) (= lambda!183244 lambda!183141))))

(assert (=> bs!972682 (= (= lt!1746040 lt!1745218) (= lambda!183244 lambda!183215))))

(assert (=> bs!972678 (= (= lt!1746040 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183244 lambda!183212))))

(assert (=> bs!972683 (= (= lt!1746040 lt!1745232) (= lambda!183244 lambda!183199))))

(assert (=> bs!972684 (not (= lambda!183244 lambda!183178))))

(assert (=> bs!972685 (= (= lt!1746040 lt!1745627) (= lambda!183244 lambda!183210))))

(assert (=> b!4580955 (= (= lt!1746040 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183244 lambda!183243))))

(assert (=> bs!972666 (not (= lambda!183244 lambda!183235))))

(assert (=> b!4580955 true))

(declare-fun bs!972686 () Bool)

(declare-fun d!1434556 () Bool)

(assert (= bs!972686 (and d!1434556 b!4580368)))

(declare-fun lambda!183245 () Int)

(declare-fun lt!1746043 () ListMap!3813)

(assert (=> bs!972686 (= (= lt!1746043 lt!1745665) (= lambda!183245 lambda!183166))))

(declare-fun bs!972687 () Bool)

(assert (= bs!972687 (and d!1434556 b!4580772)))

(assert (=> bs!972687 (= (= lt!1746043 lt!1745913) (= lambda!183245 lambda!183232))))

(declare-fun bs!972688 () Bool)

(assert (= bs!972688 (and d!1434556 b!4580664)))

(assert (=> bs!972688 (= (= lt!1746043 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183245 lambda!183211))))

(declare-fun bs!972689 () Bool)

(assert (= bs!972689 (and d!1434556 b!4580305)))

(assert (=> bs!972689 (= (= lt!1746043 lt!1745627) (= lambda!183245 lambda!183159))))

(declare-fun bs!972690 () Bool)

(assert (= bs!972690 (and d!1434556 d!1434338)))

(assert (=> bs!972690 (= (= lt!1746043 lt!1745759) (= lambda!183245 lambda!183193))))

(declare-fun bs!972691 () Bool)

(assert (= bs!972691 (and d!1434556 d!1434184)))

(assert (=> bs!972691 (= (= lt!1746043 lt!1745630) (= lambda!183245 lambda!183160))))

(declare-fun bs!972692 () Bool)

(assert (= bs!972692 (and d!1434556 b!4580257)))

(assert (=> bs!972692 (= (= lt!1746043 lt!1745576) (= lambda!183245 lambda!183142))))

(declare-fun bs!972693 () Bool)

(assert (= bs!972693 (and d!1434556 d!1434446)))

(assert (=> bs!972693 (= (= lt!1746043 lt!1745852) (= lambda!183245 lambda!183214))))

(declare-fun bs!972694 () Bool)

(assert (= bs!972694 (and d!1434556 b!4580536)))

(assert (=> bs!972694 (= (= lt!1746043 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183245 lambda!183190))))

(declare-fun bs!972695 () Bool)

(assert (= bs!972695 (and d!1434556 b!4580306)))

(assert (=> bs!972695 (= (= lt!1746043 lt!1745232) (= lambda!183245 lambda!183157))))

(declare-fun bs!972696 () Bool)

(assert (= bs!972696 (and d!1434556 d!1434424)))

(assert (=> bs!972696 (= (= lt!1746043 lt!1745214) (= lambda!183245 lambda!183205))))

(assert (=> bs!972686 (= (= lt!1746043 lt!1745214) (= lambda!183245 lambda!183165))))

(declare-fun bs!972697 () Bool)

(assert (= bs!972697 (and d!1434556 b!4580574)))

(assert (=> bs!972697 (= (= lt!1746043 lt!1745787) (= lambda!183245 lambda!183202))))

(declare-fun bs!972698 () Bool)

(assert (= bs!972698 (and d!1434556 b!4580773)))

(assert (=> bs!972698 (= (= lt!1746043 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183245 lambda!183230))))

(declare-fun bs!972699 () Bool)

(assert (= bs!972699 (and d!1434556 d!1434224)))

(assert (=> bs!972699 (= (= lt!1746043 lt!1745668) (= lambda!183245 lambda!183167))))

(declare-fun bs!972700 () Bool)

(assert (= bs!972700 (and d!1434556 b!4580955)))

(assert (=> bs!972700 (= (= lt!1746043 lt!1746040) (= lambda!183245 lambda!183244))))

(declare-fun bs!972701 () Bool)

(assert (= bs!972701 (and d!1434556 d!1434366)))

(assert (=> bs!972701 (= (= lt!1746043 lt!1745790) (= lambda!183245 lambda!183203))))

(declare-fun bs!972702 () Bool)

(assert (= bs!972702 (and d!1434556 d!1434060)))

(assert (=> bs!972702 (= (= lt!1746043 lt!1745579) (= lambda!183245 lambda!183143))))

(assert (=> bs!972689 (= (= lt!1746043 lt!1745232) (= lambda!183245 lambda!183158))))

(declare-fun bs!972703 () Bool)

(assert (= bs!972703 (and d!1434556 b!4579991)))

(assert (=> bs!972703 (not (= lambda!183245 lambda!183043))))

(declare-fun bs!972704 () Bool)

(assert (= bs!972704 (and d!1434556 b!4580535)))

(assert (=> bs!972704 (= (= lt!1746043 lt!1745756) (= lambda!183245 lambda!183192))))

(declare-fun bs!972705 () Bool)

(assert (= bs!972705 (and d!1434556 b!4580369)))

(assert (=> bs!972705 (= (= lt!1746043 lt!1745214) (= lambda!183245 lambda!183164))))

(declare-fun bs!972706 () Bool)

(assert (= bs!972706 (and d!1434556 b!4580575)))

(assert (=> bs!972706 (= (= lt!1746043 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183245 lambda!183200))))

(assert (=> bs!972704 (= (= lt!1746043 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183245 lambda!183191))))

(assert (=> bs!972687 (= (= lt!1746043 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183245 lambda!183231))))

(declare-fun bs!972707 () Bool)

(assert (= bs!972707 (and d!1434556 b!4580663)))

(assert (=> bs!972707 (= (= lt!1746043 lt!1745849) (= lambda!183245 lambda!183213))))

(declare-fun bs!972708 () Bool)

(assert (= bs!972708 (and d!1434556 b!4580956)))

(assert (=> bs!972708 (= (= lt!1746043 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183245 lambda!183242))))

(assert (=> bs!972697 (= (= lt!1746043 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183245 lambda!183201))))

(declare-fun bs!972709 () Bool)

(assert (= bs!972709 (and d!1434556 b!4580258)))

(assert (=> bs!972709 (= (= lt!1746043 lt!1745218) (= lambda!183245 lambda!183140))))

(declare-fun bs!972710 () Bool)

(assert (= bs!972710 (and d!1434556 d!1434486)))

(assert (=> bs!972710 (= (= lt!1746043 lt!1745916) (= lambda!183245 lambda!183233))))

(assert (=> bs!972692 (= (= lt!1746043 lt!1745218) (= lambda!183245 lambda!183141))))

(declare-fun bs!972711 () Bool)

(assert (= bs!972711 (and d!1434556 d!1434448)))

(assert (=> bs!972711 (= (= lt!1746043 lt!1745218) (= lambda!183245 lambda!183215))))

(assert (=> bs!972707 (= (= lt!1746043 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183245 lambda!183212))))

(declare-fun bs!972712 () Bool)

(assert (= bs!972712 (and d!1434556 d!1434344)))

(assert (=> bs!972712 (= (= lt!1746043 lt!1745232) (= lambda!183245 lambda!183199))))

(declare-fun bs!972713 () Bool)

(assert (= bs!972713 (and d!1434556 d!1434256)))

(assert (=> bs!972713 (not (= lambda!183245 lambda!183178))))

(declare-fun bs!972714 () Bool)

(assert (= bs!972714 (and d!1434556 d!1434442)))

(assert (=> bs!972714 (= (= lt!1746043 lt!1745627) (= lambda!183245 lambda!183210))))

(assert (=> bs!972700 (= (= lt!1746043 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183245 lambda!183243))))

(declare-fun bs!972715 () Bool)

(assert (= bs!972715 (and d!1434556 d!1434500)))

(assert (=> bs!972715 (not (= lambda!183245 lambda!183235))))

(assert (=> d!1434556 true))

(declare-fun b!4580953 () Bool)

(declare-fun e!2856644 () Bool)

(assert (=> b!4580953 (= e!2856644 (invariantList!1097 (toList!4552 lt!1746043)))))

(declare-fun b!4580954 () Bool)

(declare-fun res!1913984 () Bool)

(assert (=> b!4580954 (=> (not res!1913984) (not e!2856644))))

(assert (=> b!4580954 (= res!1913984 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) lambda!183245))))

(declare-fun c!784066 () Bool)

(declare-fun call!319775 () Bool)

(declare-fun bm!319768 () Bool)

(assert (=> bm!319768 (= call!319775 (forall!10502 (ite c!784066 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (_2!29056 (h!56886 (toList!4551 lt!1745230)))) (ite c!784066 lambda!183242 lambda!183244)))))

(declare-fun e!2856643 () ListMap!3813)

(assert (=> b!4580955 (= e!2856643 lt!1746040)))

(declare-fun lt!1746038 () ListMap!3813)

(assert (=> b!4580955 (= lt!1746038 (+!1710 (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745230))))))))

(assert (=> b!4580955 (= lt!1746040 (addToMapMapFromBucket!785 (t!358064 (_2!29056 (h!56886 (toList!4551 lt!1745230)))) (+!1710 (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745230)))))))))

(declare-fun lt!1746042 () Unit!105525)

(declare-fun call!319774 () Unit!105525)

(assert (=> b!4580955 (= lt!1746042 call!319774)))

(assert (=> b!4580955 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) lambda!183243)))

(declare-fun lt!1746057 () Unit!105525)

(assert (=> b!4580955 (= lt!1746057 lt!1746042)))

(assert (=> b!4580955 (forall!10502 (toList!4552 lt!1746038) lambda!183244)))

(declare-fun lt!1746052 () Unit!105525)

(declare-fun Unit!105727 () Unit!105525)

(assert (=> b!4580955 (= lt!1746052 Unit!105727)))

(assert (=> b!4580955 (forall!10502 (t!358064 (_2!29056 (h!56886 (toList!4551 lt!1745230)))) lambda!183244)))

(declare-fun lt!1746050 () Unit!105525)

(declare-fun Unit!105728 () Unit!105525)

(assert (=> b!4580955 (= lt!1746050 Unit!105728)))

(declare-fun lt!1746047 () Unit!105525)

(declare-fun Unit!105729 () Unit!105525)

(assert (=> b!4580955 (= lt!1746047 Unit!105729)))

(declare-fun lt!1746054 () Unit!105525)

(assert (=> b!4580955 (= lt!1746054 (forallContained!2765 (toList!4552 lt!1746038) lambda!183244 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745230))))))))

(assert (=> b!4580955 (contains!13846 lt!1746038 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745230))))))))

(declare-fun lt!1746044 () Unit!105525)

(declare-fun Unit!105730 () Unit!105525)

(assert (=> b!4580955 (= lt!1746044 Unit!105730)))

(assert (=> b!4580955 (contains!13846 lt!1746040 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745230))))))))

(declare-fun lt!1746049 () Unit!105525)

(declare-fun Unit!105731 () Unit!105525)

(assert (=> b!4580955 (= lt!1746049 Unit!105731)))

(assert (=> b!4580955 call!319775))

(declare-fun lt!1746046 () Unit!105525)

(declare-fun Unit!105732 () Unit!105525)

(assert (=> b!4580955 (= lt!1746046 Unit!105732)))

(declare-fun call!319773 () Bool)

(assert (=> b!4580955 call!319773))

(declare-fun lt!1746048 () Unit!105525)

(declare-fun Unit!105733 () Unit!105525)

(assert (=> b!4580955 (= lt!1746048 Unit!105733)))

(declare-fun lt!1746051 () Unit!105525)

(declare-fun Unit!105734 () Unit!105525)

(assert (=> b!4580955 (= lt!1746051 Unit!105734)))

(declare-fun lt!1746055 () Unit!105525)

(assert (=> b!4580955 (= lt!1746055 (addForallContainsKeyThenBeforeAdding!414 (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1746040 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745230))))) (_2!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745230)))))))))

(assert (=> b!4580955 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) lambda!183244)))

(declare-fun lt!1746053 () Unit!105525)

(assert (=> b!4580955 (= lt!1746053 lt!1746055)))

(assert (=> b!4580955 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) lambda!183244)))

(declare-fun lt!1746041 () Unit!105525)

(declare-fun Unit!105735 () Unit!105525)

(assert (=> b!4580955 (= lt!1746041 Unit!105735)))

(declare-fun res!1913985 () Bool)

(assert (=> b!4580955 (= res!1913985 (forall!10502 (_2!29056 (h!56886 (toList!4551 lt!1745230))) lambda!183244))))

(declare-fun e!2856642 () Bool)

(assert (=> b!4580955 (=> (not res!1913985) (not e!2856642))))

(assert (=> b!4580955 e!2856642))

(declare-fun lt!1746045 () Unit!105525)

(declare-fun Unit!105736 () Unit!105525)

(assert (=> b!4580955 (= lt!1746045 Unit!105736)))

(assert (=> b!4580956 (= e!2856643 (extractMap!1328 (t!358065 (toList!4551 lt!1745230))))))

(declare-fun lt!1746056 () Unit!105525)

(assert (=> b!4580956 (= lt!1746056 call!319774)))

(assert (=> b!4580956 call!319775))

(declare-fun lt!1746037 () Unit!105525)

(assert (=> b!4580956 (= lt!1746037 lt!1746056)))

(assert (=> b!4580956 call!319773))

(declare-fun lt!1746039 () Unit!105525)

(declare-fun Unit!105737 () Unit!105525)

(assert (=> b!4580956 (= lt!1746039 Unit!105737)))

(declare-fun bm!319769 () Bool)

(assert (=> bm!319769 (= call!319773 (forall!10502 (ite c!784066 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (toList!4552 lt!1746038)) (ite c!784066 lambda!183242 lambda!183244)))))

(assert (=> d!1434556 e!2856644))

(declare-fun res!1913986 () Bool)

(assert (=> d!1434556 (=> (not res!1913986) (not e!2856644))))

(assert (=> d!1434556 (= res!1913986 (forall!10502 (_2!29056 (h!56886 (toList!4551 lt!1745230))) lambda!183245))))

(assert (=> d!1434556 (= lt!1746043 e!2856643)))

(assert (=> d!1434556 (= c!784066 ((_ is Nil!50950) (_2!29056 (h!56886 (toList!4551 lt!1745230)))))))

(assert (=> d!1434556 (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lt!1745230))))))

(assert (=> d!1434556 (= (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 lt!1745230))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) lt!1746043)))

(declare-fun bm!319770 () Bool)

(assert (=> bm!319770 (= call!319774 (lemmaContainsAllItsOwnKeys!414 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))))))

(declare-fun b!4580957 () Bool)

(assert (=> b!4580957 (= e!2856642 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) lambda!183244))))

(assert (= (and d!1434556 c!784066) b!4580956))

(assert (= (and d!1434556 (not c!784066)) b!4580955))

(assert (= (and b!4580955 res!1913985) b!4580957))

(assert (= (or b!4580956 b!4580955) bm!319769))

(assert (= (or b!4580956 b!4580955) bm!319768))

(assert (= (or b!4580956 b!4580955) bm!319770))

(assert (= (and d!1434556 res!1913986) b!4580954))

(assert (= (and b!4580954 res!1913984) b!4580953))

(declare-fun m!5391683 () Bool)

(assert (=> b!4580957 m!5391683))

(declare-fun m!5391685 () Bool)

(assert (=> d!1434556 m!5391685))

(declare-fun m!5391687 () Bool)

(assert (=> d!1434556 m!5391687))

(declare-fun m!5391689 () Bool)

(assert (=> bm!319768 m!5391689))

(assert (=> bm!319770 m!5390487))

(declare-fun m!5391691 () Bool)

(assert (=> bm!319770 m!5391691))

(declare-fun m!5391693 () Bool)

(assert (=> b!4580955 m!5391693))

(declare-fun m!5391695 () Bool)

(assert (=> b!4580955 m!5391695))

(declare-fun m!5391697 () Bool)

(assert (=> b!4580955 m!5391697))

(assert (=> b!4580955 m!5391683))

(declare-fun m!5391699 () Bool)

(assert (=> b!4580955 m!5391699))

(declare-fun m!5391701 () Bool)

(assert (=> b!4580955 m!5391701))

(declare-fun m!5391703 () Bool)

(assert (=> b!4580955 m!5391703))

(declare-fun m!5391705 () Bool)

(assert (=> b!4580955 m!5391705))

(assert (=> b!4580955 m!5390487))

(assert (=> b!4580955 m!5391693))

(declare-fun m!5391707 () Bool)

(assert (=> b!4580955 m!5391707))

(declare-fun m!5391709 () Bool)

(assert (=> b!4580955 m!5391709))

(assert (=> b!4580955 m!5391683))

(assert (=> b!4580955 m!5390487))

(declare-fun m!5391711 () Bool)

(assert (=> b!4580955 m!5391711))

(declare-fun m!5391713 () Bool)

(assert (=> b!4580953 m!5391713))

(declare-fun m!5391715 () Bool)

(assert (=> b!4580954 m!5391715))

(declare-fun m!5391717 () Bool)

(assert (=> bm!319769 m!5391717))

(assert (=> b!4580290 d!1434556))

(declare-fun bs!972716 () Bool)

(declare-fun d!1434564 () Bool)

(assert (= bs!972716 (and d!1434564 d!1434210)))

(declare-fun lambda!183246 () Int)

(assert (=> bs!972716 (= lambda!183246 lambda!183163)))

(declare-fun bs!972717 () Bool)

(assert (= bs!972717 (and d!1434564 d!1434168)))

(assert (=> bs!972717 (= lambda!183246 lambda!183155)))

(declare-fun bs!972718 () Bool)

(assert (= bs!972718 (and d!1434564 d!1434246)))

(assert (=> bs!972718 (= lambda!183246 lambda!183174)))

(declare-fun bs!972719 () Bool)

(assert (= bs!972719 (and d!1434564 d!1434368)))

(assert (=> bs!972719 (= lambda!183246 lambda!183204)))

(declare-fun bs!972720 () Bool)

(assert (= bs!972720 (and d!1434564 start!456028)))

(assert (=> bs!972720 (= lambda!183246 lambda!183041)))

(declare-fun bs!972721 () Bool)

(assert (= bs!972721 (and d!1434564 d!1434056)))

(assert (=> bs!972721 (= lambda!183246 lambda!183049)))

(declare-fun bs!972722 () Bool)

(assert (= bs!972722 (and d!1434564 d!1434488)))

(assert (=> bs!972722 (= lambda!183246 lambda!183234)))

(declare-fun bs!972723 () Bool)

(assert (= bs!972723 (and d!1434564 d!1434258)))

(assert (=> bs!972723 (not (= lambda!183246 lambda!183181))))

(declare-fun bs!972724 () Bool)

(assert (= bs!972724 (and d!1434564 d!1434244)))

(assert (=> bs!972724 (= lambda!183246 lambda!183171)))

(declare-fun bs!972725 () Bool)

(assert (= bs!972725 (and d!1434564 d!1434340)))

(assert (=> bs!972725 (= lambda!183246 lambda!183194)))

(declare-fun bs!972726 () Bool)

(assert (= bs!972726 (and d!1434564 b!4579991)))

(assert (=> bs!972726 (not (= lambda!183246 lambda!183042))))

(declare-fun bs!972727 () Bool)

(assert (= bs!972727 (and d!1434564 d!1434250)))

(assert (=> bs!972727 (= lambda!183246 lambda!183175)))

(declare-fun bs!972728 () Bool)

(assert (= bs!972728 (and d!1434564 d!1434134)))

(assert (=> bs!972728 (= lambda!183246 lambda!183144)))

(declare-fun bs!972729 () Bool)

(assert (= bs!972729 (and d!1434564 d!1434136)))

(assert (=> bs!972729 (= lambda!183246 lambda!183150)))

(declare-fun bs!972730 () Bool)

(assert (= bs!972730 (and d!1434564 d!1434174)))

(assert (=> bs!972730 (= lambda!183246 lambda!183156)))

(declare-fun bs!972731 () Bool)

(assert (= bs!972731 (and d!1434564 d!1434144)))

(assert (=> bs!972731 (= lambda!183246 lambda!183154)))

(declare-fun bs!972732 () Bool)

(assert (= bs!972732 (and d!1434564 d!1434230)))

(assert (=> bs!972732 (= lambda!183246 lambda!183170)))

(declare-fun lt!1746061 () ListMap!3813)

(assert (=> d!1434564 (invariantList!1097 (toList!4552 lt!1746061))))

(declare-fun e!2856664 () ListMap!3813)

(assert (=> d!1434564 (= lt!1746061 e!2856664)))

(declare-fun c!784079 () Bool)

(assert (=> d!1434564 (= c!784079 ((_ is Cons!50951) (t!358065 (toList!4551 lt!1745230))))))

(assert (=> d!1434564 (forall!10500 (t!358065 (toList!4551 lt!1745230)) lambda!183246)))

(assert (=> d!1434564 (= (extractMap!1328 (t!358065 (toList!4551 lt!1745230))) lt!1746061)))

(declare-fun b!4580992 () Bool)

(assert (=> b!4580992 (= e!2856664 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (t!358065 (toList!4551 lt!1745230)))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lt!1745230))))))))

(declare-fun b!4580993 () Bool)

(assert (=> b!4580993 (= e!2856664 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434564 c!784079) b!4580992))

(assert (= (and d!1434564 (not c!784079)) b!4580993))

(declare-fun m!5391719 () Bool)

(assert (=> d!1434564 m!5391719))

(declare-fun m!5391721 () Bool)

(assert (=> d!1434564 m!5391721))

(declare-fun m!5391723 () Bool)

(assert (=> b!4580992 m!5391723))

(assert (=> b!4580992 m!5391723))

(declare-fun m!5391725 () Bool)

(assert (=> b!4580992 m!5391725))

(assert (=> b!4580290 d!1434564))

(declare-fun d!1434566 () Bool)

(declare-fun c!784080 () Bool)

(assert (=> d!1434566 (= c!784080 ((_ is Nil!50953) (keys!17800 lt!1745232)))))

(declare-fun e!2856669 () (InoxSet K!12320))

(assert (=> d!1434566 (= (content!8587 (keys!17800 lt!1745232)) e!2856669)))

(declare-fun b!4580998 () Bool)

(assert (=> b!4580998 (= e!2856669 ((as const (Array K!12320 Bool)) false))))

(declare-fun b!4580999 () Bool)

(assert (=> b!4580999 (= e!2856669 ((_ map or) (store ((as const (Array K!12320 Bool)) false) (h!56890 (keys!17800 lt!1745232)) true) (content!8587 (t!358067 (keys!17800 lt!1745232)))))))

(assert (= (and d!1434566 c!784080) b!4580998))

(assert (= (and d!1434566 (not c!784080)) b!4580999))

(declare-fun m!5391727 () Bool)

(assert (=> b!4580999 m!5391727))

(declare-fun m!5391729 () Bool)

(assert (=> b!4580999 m!5391729))

(assert (=> b!4580289 d!1434566))

(assert (=> b!4580289 d!1434326))

(declare-fun d!1434568 () Bool)

(declare-fun c!784081 () Bool)

(assert (=> d!1434568 (= c!784081 ((_ is Nil!50953) (keys!17800 lt!1745616)))))

(declare-fun e!2856670 () (InoxSet K!12320))

(assert (=> d!1434568 (= (content!8587 (keys!17800 lt!1745616)) e!2856670)))

(declare-fun b!4581000 () Bool)

(assert (=> b!4581000 (= e!2856670 ((as const (Array K!12320 Bool)) false))))

(declare-fun b!4581001 () Bool)

(assert (=> b!4581001 (= e!2856670 ((_ map or) (store ((as const (Array K!12320 Bool)) false) (h!56890 (keys!17800 lt!1745616)) true) (content!8587 (t!358067 (keys!17800 lt!1745616)))))))

(assert (= (and d!1434568 c!784081) b!4581000))

(assert (= (and d!1434568 (not c!784081)) b!4581001))

(declare-fun m!5391731 () Bool)

(assert (=> b!4581001 m!5391731))

(declare-fun m!5391733 () Bool)

(assert (=> b!4581001 m!5391733))

(assert (=> b!4580289 d!1434568))

(declare-fun bs!972733 () Bool)

(declare-fun b!4581005 () Bool)

(assert (= bs!972733 (and b!4581005 b!4580522)))

(declare-fun lambda!183247 () Int)

(assert (=> bs!972733 (= (= (toList!4552 lt!1745616) (toList!4552 lt!1745232)) (= lambda!183247 lambda!183188))))

(declare-fun bs!972734 () Bool)

(assert (= bs!972734 (and b!4581005 b!4580703)))

(assert (=> bs!972734 (= (= (toList!4552 lt!1745616) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183247 lambda!183226))))

(declare-fun bs!972735 () Bool)

(assert (= bs!972735 (and b!4581005 b!4580471)))

(assert (=> bs!972735 (= (= (toList!4552 lt!1745616) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183247 lambda!183186))))

(declare-fun bs!972736 () Bool)

(assert (= bs!972736 (and b!4581005 b!4580762)))

(assert (=> bs!972736 (= (= (toList!4552 lt!1745616) (toList!4552 lt!1745657)) (= lambda!183247 lambda!183228))))

(declare-fun bs!972737 () Bool)

(assert (= bs!972737 (and b!4581005 b!4580707)))

(assert (=> bs!972737 (= (= (toList!4552 lt!1745616) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183247 lambda!183224))))

(declare-fun bs!972738 () Bool)

(assert (= bs!972738 (and b!4581005 b!4580705)))

(assert (=> bs!972738 (= (= (toList!4552 lt!1745616) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183247 lambda!183225))))

(declare-fun bs!972739 () Bool)

(assert (= bs!972739 (and b!4581005 b!4580541)))

(assert (=> bs!972739 (= (= (toList!4552 lt!1745616) (toList!4552 lt!1745243)) (= lambda!183247 lambda!183195))))

(assert (=> b!4581005 true))

(declare-fun bs!972740 () Bool)

(declare-fun b!4581006 () Bool)

(assert (= bs!972740 (and b!4581006 b!4580472)))

(declare-fun lambda!183248 () Int)

(assert (=> bs!972740 (= lambda!183248 lambda!183187)))

(declare-fun bs!972741 () Bool)

(assert (= bs!972741 (and b!4581006 b!4580706)))

(assert (=> bs!972741 (= lambda!183248 lambda!183227)))

(declare-fun bs!972742 () Bool)

(assert (= bs!972742 (and b!4581006 b!4580763)))

(assert (=> bs!972742 (= lambda!183248 lambda!183229)))

(declare-fun bs!972743 () Bool)

(assert (= bs!972743 (and b!4581006 b!4580542)))

(assert (=> bs!972743 (= lambda!183248 lambda!183196)))

(declare-fun bs!972744 () Bool)

(assert (= bs!972744 (and b!4581006 b!4580523)))

(assert (=> bs!972744 (= lambda!183248 lambda!183189)))

(declare-fun d!1434570 () Bool)

(declare-fun e!2856673 () Bool)

(assert (=> d!1434570 e!2856673))

(declare-fun res!1914003 () Bool)

(assert (=> d!1434570 (=> (not res!1914003) (not e!2856673))))

(declare-fun lt!1746062 () List!51077)

(assert (=> d!1434570 (= res!1914003 (noDuplicate!791 lt!1746062))))

(assert (=> d!1434570 (= lt!1746062 (getKeysList!544 (toList!4552 lt!1745616)))))

(assert (=> d!1434570 (= (keys!17800 lt!1745616) lt!1746062)))

(declare-fun b!4581004 () Bool)

(declare-fun res!1914005 () Bool)

(assert (=> b!4581004 (=> (not res!1914005) (not e!2856673))))

(assert (=> b!4581004 (= res!1914005 (= (length!438 lt!1746062) (length!439 (toList!4552 lt!1745616))))))

(declare-fun res!1914004 () Bool)

(assert (=> b!4581005 (=> (not res!1914004) (not e!2856673))))

(assert (=> b!4581005 (= res!1914004 (forall!10503 lt!1746062 lambda!183247))))

(assert (=> b!4581006 (= e!2856673 (= (content!8587 lt!1746062) (content!8587 (map!11238 (toList!4552 lt!1745616) lambda!183248))))))

(assert (= (and d!1434570 res!1914003) b!4581004))

(assert (= (and b!4581004 res!1914005) b!4581005))

(assert (= (and b!4581005 res!1914004) b!4581006))

(declare-fun m!5391737 () Bool)

(assert (=> d!1434570 m!5391737))

(declare-fun m!5391739 () Bool)

(assert (=> d!1434570 m!5391739))

(declare-fun m!5391741 () Bool)

(assert (=> b!4581004 m!5391741))

(declare-fun m!5391743 () Bool)

(assert (=> b!4581004 m!5391743))

(declare-fun m!5391745 () Bool)

(assert (=> b!4581005 m!5391745))

(declare-fun m!5391747 () Bool)

(assert (=> b!4581006 m!5391747))

(declare-fun m!5391749 () Bool)

(assert (=> b!4581006 m!5391749))

(assert (=> b!4581006 m!5391749))

(declare-fun m!5391751 () Bool)

(assert (=> b!4581006 m!5391751))

(assert (=> b!4580289 d!1434570))

(declare-fun d!1434574 () Bool)

(assert (=> d!1434574 (= (get!16816 (getValueByKey!1253 (toList!4551 lt!1745235) hash!344)) (v!45206 (getValueByKey!1253 (toList!4551 lt!1745235) hash!344)))))

(assert (=> d!1434008 d!1434574))

(assert (=> d!1434008 d!1434360))

(declare-fun d!1434576 () Bool)

(declare-fun e!2856677 () Bool)

(assert (=> d!1434576 e!2856677))

(declare-fun res!1914009 () Bool)

(assert (=> d!1434576 (=> res!1914009 e!2856677)))

(declare-fun lt!1746084 () Bool)

(assert (=> d!1434576 (= res!1914009 (not lt!1746084))))

(declare-fun lt!1746085 () Bool)

(assert (=> d!1434576 (= lt!1746084 lt!1746085)))

(declare-fun lt!1746086 () Unit!105525)

(declare-fun e!2856678 () Unit!105525)

(assert (=> d!1434576 (= lt!1746086 e!2856678)))

(declare-fun c!784083 () Bool)

(assert (=> d!1434576 (= c!784083 lt!1746085)))

(assert (=> d!1434576 (= lt!1746085 (containsKey!2056 (toList!4551 lt!1745276) (_1!29056 lt!1745216)))))

(assert (=> d!1434576 (= (contains!13847 lt!1745276 (_1!29056 lt!1745216)) lt!1746084)))

(declare-fun b!4581012 () Bool)

(declare-fun lt!1746087 () Unit!105525)

(assert (=> b!4581012 (= e!2856678 lt!1746087)))

(assert (=> b!4581012 (= lt!1746087 (lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (toList!4551 lt!1745276) (_1!29056 lt!1745216)))))

(assert (=> b!4581012 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745276) (_1!29056 lt!1745216)))))

(declare-fun b!4581013 () Bool)

(declare-fun Unit!105739 () Unit!105525)

(assert (=> b!4581013 (= e!2856678 Unit!105739)))

(declare-fun b!4581014 () Bool)

(assert (=> b!4581014 (= e!2856677 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745276) (_1!29056 lt!1745216))))))

(assert (= (and d!1434576 c!784083) b!4581012))

(assert (= (and d!1434576 (not c!784083)) b!4581013))

(assert (= (and d!1434576 (not res!1914009)) b!4581014))

(declare-fun m!5391753 () Bool)

(assert (=> d!1434576 m!5391753))

(declare-fun m!5391755 () Bool)

(assert (=> b!4581012 m!5391755))

(assert (=> b!4581012 m!5389923))

(assert (=> b!4581012 m!5389923))

(declare-fun m!5391757 () Bool)

(assert (=> b!4581012 m!5391757))

(assert (=> b!4581014 m!5389923))

(assert (=> b!4581014 m!5389923))

(assert (=> b!4581014 m!5391757))

(assert (=> d!1434024 d!1434576))

(declare-fun d!1434578 () Bool)

(declare-fun c!784084 () Bool)

(assert (=> d!1434578 (= c!784084 (and ((_ is Cons!50951) lt!1745274) (= (_1!29056 (h!56886 lt!1745274)) (_1!29056 lt!1745216))))))

(declare-fun e!2856679 () Option!11327)

(assert (=> d!1434578 (= (getValueByKey!1253 lt!1745274 (_1!29056 lt!1745216)) e!2856679)))

(declare-fun b!4581018 () Bool)

(declare-fun e!2856680 () Option!11327)

(assert (=> b!4581018 (= e!2856680 None!11326)))

(declare-fun b!4581017 () Bool)

(assert (=> b!4581017 (= e!2856680 (getValueByKey!1253 (t!358065 lt!1745274) (_1!29056 lt!1745216)))))

(declare-fun b!4581015 () Bool)

(assert (=> b!4581015 (= e!2856679 (Some!11326 (_2!29056 (h!56886 lt!1745274))))))

(declare-fun b!4581016 () Bool)

(assert (=> b!4581016 (= e!2856679 e!2856680)))

(declare-fun c!784085 () Bool)

(assert (=> b!4581016 (= c!784085 (and ((_ is Cons!50951) lt!1745274) (not (= (_1!29056 (h!56886 lt!1745274)) (_1!29056 lt!1745216)))))))

(assert (= (and d!1434578 c!784084) b!4581015))

(assert (= (and d!1434578 (not c!784084)) b!4581016))

(assert (= (and b!4581016 c!784085) b!4581017))

(assert (= (and b!4581016 (not c!784085)) b!4581018))

(declare-fun m!5391759 () Bool)

(assert (=> b!4581017 m!5391759))

(assert (=> d!1434024 d!1434578))

(declare-fun d!1434580 () Bool)

(assert (=> d!1434580 (= (getValueByKey!1253 lt!1745274 (_1!29056 lt!1745216)) (Some!11326 (_2!29056 lt!1745216)))))

(declare-fun lt!1746088 () Unit!105525)

(assert (=> d!1434580 (= lt!1746088 (choose!30539 lt!1745274 (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))

(declare-fun e!2856681 () Bool)

(assert (=> d!1434580 e!2856681))

(declare-fun res!1914010 () Bool)

(assert (=> d!1434580 (=> (not res!1914010) (not e!2856681))))

(assert (=> d!1434580 (= res!1914010 (isStrictlySorted!512 lt!1745274))))

(assert (=> d!1434580 (= (lemmaContainsTupThenGetReturnValue!777 lt!1745274 (_1!29056 lt!1745216) (_2!29056 lt!1745216)) lt!1746088)))

(declare-fun b!4581019 () Bool)

(declare-fun res!1914011 () Bool)

(assert (=> b!4581019 (=> (not res!1914011) (not e!2856681))))

(assert (=> b!4581019 (= res!1914011 (containsKey!2056 lt!1745274 (_1!29056 lt!1745216)))))

(declare-fun b!4581020 () Bool)

(assert (=> b!4581020 (= e!2856681 (contains!13845 lt!1745274 (tuple2!51525 (_1!29056 lt!1745216) (_2!29056 lt!1745216))))))

(assert (= (and d!1434580 res!1914010) b!4581019))

(assert (= (and b!4581019 res!1914011) b!4581020))

(assert (=> d!1434580 m!5389917))

(declare-fun m!5391761 () Bool)

(assert (=> d!1434580 m!5391761))

(declare-fun m!5391763 () Bool)

(assert (=> d!1434580 m!5391763))

(declare-fun m!5391765 () Bool)

(assert (=> b!4581019 m!5391765))

(declare-fun m!5391767 () Bool)

(assert (=> b!4581020 m!5391767))

(assert (=> d!1434024 d!1434580))

(declare-fun b!4581021 () Bool)

(declare-fun e!2856683 () List!51075)

(declare-fun call!319789 () List!51075)

(assert (=> b!4581021 (= e!2856683 call!319789)))

(declare-fun d!1434582 () Bool)

(declare-fun e!2856685 () Bool)

(assert (=> d!1434582 e!2856685))

(declare-fun res!1914012 () Bool)

(assert (=> d!1434582 (=> (not res!1914012) (not e!2856685))))

(declare-fun lt!1746089 () List!51075)

(assert (=> d!1434582 (= res!1914012 (isStrictlySorted!512 lt!1746089))))

(assert (=> d!1434582 (= lt!1746089 e!2856683)))

(declare-fun c!784086 () Bool)

(assert (=> d!1434582 (= c!784086 (and ((_ is Cons!50951) (toList!4551 lt!1745230)) (bvslt (_1!29056 (h!56886 (toList!4551 lt!1745230))) (_1!29056 lt!1745216))))))

(assert (=> d!1434582 (isStrictlySorted!512 (toList!4551 lt!1745230))))

(assert (=> d!1434582 (= (insertStrictlySorted!477 (toList!4551 lt!1745230) (_1!29056 lt!1745216) (_2!29056 lt!1745216)) lt!1746089)))

(declare-fun b!4581022 () Bool)

(declare-fun e!2856682 () List!51075)

(assert (=> b!4581022 (= e!2856683 e!2856682)))

(declare-fun c!784089 () Bool)

(assert (=> b!4581022 (= c!784089 (and ((_ is Cons!50951) (toList!4551 lt!1745230)) (= (_1!29056 (h!56886 (toList!4551 lt!1745230))) (_1!29056 lt!1745216))))))

(declare-fun bm!319783 () Bool)

(declare-fun call!319788 () List!51075)

(assert (=> bm!319783 (= call!319788 call!319789)))

(declare-fun b!4581023 () Bool)

(declare-fun e!2856684 () List!51075)

(declare-fun call!319790 () List!51075)

(assert (=> b!4581023 (= e!2856684 call!319790)))

(declare-fun b!4581024 () Bool)

(declare-fun c!784088 () Bool)

(assert (=> b!4581024 (= c!784088 (and ((_ is Cons!50951) (toList!4551 lt!1745230)) (bvsgt (_1!29056 (h!56886 (toList!4551 lt!1745230))) (_1!29056 lt!1745216))))))

(assert (=> b!4581024 (= e!2856682 e!2856684)))

(declare-fun b!4581025 () Bool)

(assert (=> b!4581025 (= e!2856685 (contains!13845 lt!1746089 (tuple2!51525 (_1!29056 lt!1745216) (_2!29056 lt!1745216))))))

(declare-fun bm!319784 () Bool)

(declare-fun e!2856686 () List!51075)

(assert (=> bm!319784 (= call!319789 ($colon$colon!1022 e!2856686 (ite c!784086 (h!56886 (toList!4551 lt!1745230)) (tuple2!51525 (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))))

(declare-fun c!784087 () Bool)

(assert (=> bm!319784 (= c!784087 c!784086)))

(declare-fun b!4581026 () Bool)

(declare-fun res!1914013 () Bool)

(assert (=> b!4581026 (=> (not res!1914013) (not e!2856685))))

(assert (=> b!4581026 (= res!1914013 (containsKey!2056 lt!1746089 (_1!29056 lt!1745216)))))

(declare-fun b!4581027 () Bool)

(assert (=> b!4581027 (= e!2856682 call!319788)))

(declare-fun bm!319785 () Bool)

(assert (=> bm!319785 (= call!319790 call!319788)))

(declare-fun b!4581028 () Bool)

(assert (=> b!4581028 (= e!2856686 (insertStrictlySorted!477 (t!358065 (toList!4551 lt!1745230)) (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))

(declare-fun b!4581029 () Bool)

(assert (=> b!4581029 (= e!2856684 call!319790)))

(declare-fun b!4581030 () Bool)

(assert (=> b!4581030 (= e!2856686 (ite c!784089 (t!358065 (toList!4551 lt!1745230)) (ite c!784088 (Cons!50951 (h!56886 (toList!4551 lt!1745230)) (t!358065 (toList!4551 lt!1745230))) Nil!50951)))))

(assert (= (and d!1434582 c!784086) b!4581021))

(assert (= (and d!1434582 (not c!784086)) b!4581022))

(assert (= (and b!4581022 c!784089) b!4581027))

(assert (= (and b!4581022 (not c!784089)) b!4581024))

(assert (= (and b!4581024 c!784088) b!4581023))

(assert (= (and b!4581024 (not c!784088)) b!4581029))

(assert (= (or b!4581023 b!4581029) bm!319785))

(assert (= (or b!4581027 bm!319785) bm!319783))

(assert (= (or b!4581021 bm!319783) bm!319784))

(assert (= (and bm!319784 c!784087) b!4581028))

(assert (= (and bm!319784 (not c!784087)) b!4581030))

(assert (= (and d!1434582 res!1914012) b!4581026))

(assert (= (and b!4581026 res!1914013) b!4581025))

(declare-fun m!5391769 () Bool)

(assert (=> b!4581028 m!5391769))

(declare-fun m!5391771 () Bool)

(assert (=> b!4581026 m!5391771))

(declare-fun m!5391773 () Bool)

(assert (=> b!4581025 m!5391773))

(declare-fun m!5391775 () Bool)

(assert (=> bm!319784 m!5391775))

(declare-fun m!5391777 () Bool)

(assert (=> d!1434582 m!5391777))

(declare-fun m!5391779 () Bool)

(assert (=> d!1434582 m!5391779))

(assert (=> d!1434024 d!1434582))

(assert (=> d!1434058 d!1434294))

(declare-fun d!1434584 () Bool)

(declare-fun c!784090 () Bool)

(assert (=> d!1434584 (= c!784090 ((_ is Nil!50950) (toList!4552 lt!1745224)))))

(declare-fun e!2856687 () (InoxSet tuple2!51522))

(assert (=> d!1434584 (= (content!8586 (toList!4552 lt!1745224)) e!2856687)))

(declare-fun b!4581031 () Bool)

(assert (=> b!4581031 (= e!2856687 ((as const (Array tuple2!51522 Bool)) false))))

(declare-fun b!4581032 () Bool)

(assert (=> b!4581032 (= e!2856687 ((_ map or) (store ((as const (Array tuple2!51522 Bool)) false) (h!56885 (toList!4552 lt!1745224)) true) (content!8586 (t!358064 (toList!4552 lt!1745224)))))))

(assert (= (and d!1434584 c!784090) b!4581031))

(assert (= (and d!1434584 (not c!784090)) b!4581032))

(declare-fun m!5391781 () Bool)

(assert (=> b!4581032 m!5391781))

(declare-fun m!5391783 () Bool)

(assert (=> b!4581032 m!5391783))

(assert (=> d!1434058 d!1434584))

(declare-fun d!1434586 () Bool)

(declare-fun res!1914014 () Bool)

(declare-fun e!2856688 () Bool)

(assert (=> d!1434586 (=> res!1914014 e!2856688)))

(assert (=> d!1434586 (= res!1914014 ((_ is Nil!50950) (toList!4552 lt!1745214)))))

(assert (=> d!1434586 (= (forall!10502 (toList!4552 lt!1745214) lambda!183166) e!2856688)))

(declare-fun b!4581033 () Bool)

(declare-fun e!2856689 () Bool)

(assert (=> b!4581033 (= e!2856688 e!2856689)))

(declare-fun res!1914015 () Bool)

(assert (=> b!4581033 (=> (not res!1914015) (not e!2856689))))

(assert (=> b!4581033 (= res!1914015 (dynLambda!21336 lambda!183166 (h!56885 (toList!4552 lt!1745214))))))

(declare-fun b!4581034 () Bool)

(assert (=> b!4581034 (= e!2856689 (forall!10502 (t!358064 (toList!4552 lt!1745214)) lambda!183166))))

(assert (= (and d!1434586 (not res!1914014)) b!4581033))

(assert (= (and b!4581033 res!1914015) b!4581034))

(declare-fun b_lambda!166091 () Bool)

(assert (=> (not b_lambda!166091) (not b!4581033)))

(declare-fun m!5391785 () Bool)

(assert (=> b!4581033 m!5391785))

(declare-fun m!5391787 () Bool)

(assert (=> b!4581034 m!5391787))

(assert (=> b!4580370 d!1434586))

(declare-fun d!1434588 () Bool)

(declare-fun res!1914016 () Bool)

(declare-fun e!2856690 () Bool)

(assert (=> d!1434588 (=> res!1914016 e!2856690)))

(assert (=> d!1434588 (= res!1914016 ((_ is Nil!50951) (toList!4551 lm!1477)))))

(assert (=> d!1434588 (= (forall!10500 (toList!4551 lm!1477) lambda!183181) e!2856690)))

(declare-fun b!4581035 () Bool)

(declare-fun e!2856691 () Bool)

(assert (=> b!4581035 (= e!2856690 e!2856691)))

(declare-fun res!1914017 () Bool)

(assert (=> b!4581035 (=> (not res!1914017) (not e!2856691))))

(assert (=> b!4581035 (= res!1914017 (dynLambda!21335 lambda!183181 (h!56886 (toList!4551 lm!1477))))))

(declare-fun b!4581036 () Bool)

(assert (=> b!4581036 (= e!2856691 (forall!10500 (t!358065 (toList!4551 lm!1477)) lambda!183181))))

(assert (= (and d!1434588 (not res!1914016)) b!4581035))

(assert (= (and b!4581035 res!1914017) b!4581036))

(declare-fun b_lambda!166093 () Bool)

(assert (=> (not b_lambda!166093) (not b!4581035)))

(declare-fun m!5391789 () Bool)

(assert (=> b!4581035 m!5391789))

(declare-fun m!5391791 () Bool)

(assert (=> b!4581036 m!5391791))

(assert (=> d!1434258 d!1434588))

(declare-fun d!1434590 () Bool)

(assert (=> d!1434590 (= (head!9539 (toList!4551 lm!1477)) (h!56886 (toList!4551 lm!1477)))))

(assert (=> d!1434170 d!1434590))

(assert (=> d!1434222 d!1434584))

(assert (=> d!1434222 d!1434296))

(declare-fun d!1434592 () Bool)

(assert (=> d!1434592 (= (get!16814 lt!1745650) (v!45200 lt!1745650))))

(assert (=> b!4580335 d!1434592))

(declare-fun d!1434594 () Bool)

(declare-fun res!1914018 () Bool)

(declare-fun e!2856692 () Bool)

(assert (=> d!1434594 (=> res!1914018 e!2856692)))

(assert (=> d!1434594 (= res!1914018 ((_ is Nil!50950) (toList!4552 lt!1745218)))))

(assert (=> d!1434594 (= (forall!10502 (toList!4552 lt!1745218) lambda!183142) e!2856692)))

(declare-fun b!4581037 () Bool)

(declare-fun e!2856693 () Bool)

(assert (=> b!4581037 (= e!2856692 e!2856693)))

(declare-fun res!1914019 () Bool)

(assert (=> b!4581037 (=> (not res!1914019) (not e!2856693))))

(assert (=> b!4581037 (= res!1914019 (dynLambda!21336 lambda!183142 (h!56885 (toList!4552 lt!1745218))))))

(declare-fun b!4581038 () Bool)

(assert (=> b!4581038 (= e!2856693 (forall!10502 (t!358064 (toList!4552 lt!1745218)) lambda!183142))))

(assert (= (and d!1434594 (not res!1914018)) b!4581037))

(assert (= (and b!4581037 res!1914019) b!4581038))

(declare-fun b_lambda!166095 () Bool)

(assert (=> (not b_lambda!166095) (not b!4581037)))

(declare-fun m!5391793 () Bool)

(assert (=> b!4581037 m!5391793))

(declare-fun m!5391795 () Bool)

(assert (=> b!4581038 m!5391795))

(assert (=> b!4580259 d!1434594))

(declare-fun d!1434596 () Bool)

(declare-fun c!784091 () Bool)

(assert (=> d!1434596 (= c!784091 (and ((_ is Cons!50951) (toList!4551 lt!1745621)) (= (_1!29056 (h!56886 (toList!4551 lt!1745621))) (_1!29056 lt!1745216))))))

(declare-fun e!2856694 () Option!11327)

(assert (=> d!1434596 (= (getValueByKey!1253 (toList!4551 lt!1745621) (_1!29056 lt!1745216)) e!2856694)))

(declare-fun b!4581042 () Bool)

(declare-fun e!2856695 () Option!11327)

(assert (=> b!4581042 (= e!2856695 None!11326)))

(declare-fun b!4581041 () Bool)

(assert (=> b!4581041 (= e!2856695 (getValueByKey!1253 (t!358065 (toList!4551 lt!1745621)) (_1!29056 lt!1745216)))))

(declare-fun b!4581039 () Bool)

(assert (=> b!4581039 (= e!2856694 (Some!11326 (_2!29056 (h!56886 (toList!4551 lt!1745621)))))))

(declare-fun b!4581040 () Bool)

(assert (=> b!4581040 (= e!2856694 e!2856695)))

(declare-fun c!784092 () Bool)

(assert (=> b!4581040 (= c!784092 (and ((_ is Cons!50951) (toList!4551 lt!1745621)) (not (= (_1!29056 (h!56886 (toList!4551 lt!1745621))) (_1!29056 lt!1745216)))))))

(assert (= (and d!1434596 c!784091) b!4581039))

(assert (= (and d!1434596 (not c!784091)) b!4581040))

(assert (= (and b!4581040 c!784092) b!4581041))

(assert (= (and b!4581040 (not c!784092)) b!4581042))

(declare-fun m!5391797 () Bool)

(assert (=> b!4581041 m!5391797))

(assert (=> b!4580294 d!1434596))

(declare-fun b!4581043 () Bool)

(declare-fun e!2856701 () Unit!105525)

(declare-fun Unit!105740 () Unit!105525)

(assert (=> b!4581043 (= e!2856701 Unit!105740)))

(declare-fun b!4581044 () Bool)

(declare-fun e!2856696 () Bool)

(declare-fun e!2856699 () Bool)

(assert (=> b!4581044 (= e!2856696 e!2856699)))

(declare-fun res!1914021 () Bool)

(assert (=> b!4581044 (=> (not res!1914021) (not e!2856699))))

(assert (=> b!4581044 (= res!1914021 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745616) key!3287)))))

(declare-fun b!4581045 () Bool)

(declare-fun e!2856698 () Unit!105525)

(assert (=> b!4581045 (= e!2856698 e!2856701)))

(declare-fun c!784094 () Bool)

(declare-fun call!319791 () Bool)

(assert (=> b!4581045 (= c!784094 call!319791)))

(declare-fun b!4581046 () Bool)

(assert (=> b!4581046 (= e!2856699 (contains!13849 (keys!17800 lt!1745616) key!3287))))

(declare-fun b!4581047 () Bool)

(declare-fun e!2856697 () List!51077)

(assert (=> b!4581047 (= e!2856697 (keys!17800 lt!1745616))))

(declare-fun b!4581048 () Bool)

(declare-fun lt!1746093 () Unit!105525)

(assert (=> b!4581048 (= e!2856698 lt!1746093)))

(declare-fun lt!1746091 () Unit!105525)

(assert (=> b!4581048 (= lt!1746091 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745616) key!3287))))

(assert (=> b!4581048 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745616) key!3287))))

(declare-fun lt!1746096 () Unit!105525)

(assert (=> b!4581048 (= lt!1746096 lt!1746091)))

(assert (=> b!4581048 (= lt!1746093 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745616) key!3287))))

(assert (=> b!4581048 call!319791))

(declare-fun bm!319786 () Bool)

(assert (=> bm!319786 (= call!319791 (contains!13849 e!2856697 key!3287))))

(declare-fun c!784093 () Bool)

(declare-fun c!784095 () Bool)

(assert (=> bm!319786 (= c!784093 c!784095)))

(declare-fun d!1434598 () Bool)

(assert (=> d!1434598 e!2856696))

(declare-fun res!1914022 () Bool)

(assert (=> d!1434598 (=> res!1914022 e!2856696)))

(declare-fun e!2856700 () Bool)

(assert (=> d!1434598 (= res!1914022 e!2856700)))

(declare-fun res!1914020 () Bool)

(assert (=> d!1434598 (=> (not res!1914020) (not e!2856700))))

(declare-fun lt!1746092 () Bool)

(assert (=> d!1434598 (= res!1914020 (not lt!1746092))))

(declare-fun lt!1746097 () Bool)

(assert (=> d!1434598 (= lt!1746092 lt!1746097)))

(declare-fun lt!1746090 () Unit!105525)

(assert (=> d!1434598 (= lt!1746090 e!2856698)))

(assert (=> d!1434598 (= c!784095 lt!1746097)))

(assert (=> d!1434598 (= lt!1746097 (containsKey!2057 (toList!4552 lt!1745616) key!3287))))

(assert (=> d!1434598 (= (contains!13846 lt!1745616 key!3287) lt!1746092)))

(declare-fun b!4581049 () Bool)

(assert (=> b!4581049 (= e!2856697 (getKeysList!544 (toList!4552 lt!1745616)))))

(declare-fun b!4581050 () Bool)

(assert (=> b!4581050 false))

(declare-fun lt!1746094 () Unit!105525)

(declare-fun lt!1746095 () Unit!105525)

(assert (=> b!4581050 (= lt!1746094 lt!1746095)))

(assert (=> b!4581050 (containsKey!2057 (toList!4552 lt!1745616) key!3287)))

(assert (=> b!4581050 (= lt!1746095 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745616) key!3287))))

(declare-fun Unit!105741 () Unit!105525)

(assert (=> b!4581050 (= e!2856701 Unit!105741)))

(declare-fun b!4581051 () Bool)

(assert (=> b!4581051 (= e!2856700 (not (contains!13849 (keys!17800 lt!1745616) key!3287)))))

(assert (= (and d!1434598 c!784095) b!4581048))

(assert (= (and d!1434598 (not c!784095)) b!4581045))

(assert (= (and b!4581045 c!784094) b!4581050))

(assert (= (and b!4581045 (not c!784094)) b!4581043))

(assert (= (or b!4581048 b!4581045) bm!319786))

(assert (= (and bm!319786 c!784093) b!4581049))

(assert (= (and bm!319786 (not c!784093)) b!4581047))

(assert (= (and d!1434598 res!1914020) b!4581051))

(assert (= (and d!1434598 (not res!1914022)) b!4581044))

(assert (= (and b!4581044 res!1914021) b!4581046))

(declare-fun m!5391799 () Bool)

(assert (=> b!4581050 m!5391799))

(declare-fun m!5391801 () Bool)

(assert (=> b!4581050 m!5391801))

(assert (=> b!4581051 m!5390477))

(assert (=> b!4581051 m!5390477))

(declare-fun m!5391803 () Bool)

(assert (=> b!4581051 m!5391803))

(declare-fun m!5391805 () Bool)

(assert (=> b!4581044 m!5391805))

(assert (=> b!4581044 m!5391805))

(declare-fun m!5391807 () Bool)

(assert (=> b!4581044 m!5391807))

(assert (=> b!4581049 m!5391739))

(assert (=> b!4581047 m!5390477))

(declare-fun m!5391809 () Bool)

(assert (=> b!4581048 m!5391809))

(assert (=> b!4581048 m!5391805))

(assert (=> b!4581048 m!5391805))

(assert (=> b!4581048 m!5391807))

(declare-fun m!5391811 () Bool)

(assert (=> b!4581048 m!5391811))

(assert (=> d!1434598 m!5391799))

(declare-fun m!5391813 () Bool)

(assert (=> bm!319786 m!5391813))

(assert (=> b!4581046 m!5390477))

(assert (=> b!4581046 m!5390477))

(assert (=> b!4581046 m!5391803))

(assert (=> d!1434166 d!1434598))

(declare-fun bm!319787 () Bool)

(declare-fun call!319796 () (InoxSet tuple2!51522))

(assert (=> bm!319787 (= call!319796 (content!8586 (toList!4552 lt!1745232)))))

(declare-fun call!319797 () (InoxSet tuple2!51522))

(declare-fun e!2856705 () Bool)

(declare-fun b!4581052 () Bool)

(assert (=> b!4581052 (= e!2856705 (= call!319797 ((_ map and) call!319796 ((_ map not) (store ((as const (Array tuple2!51522 Bool)) false) (tuple2!51523 key!3287 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287))) true)))))))

(assert (=> b!4581052 (containsKey!2057 (toList!4552 lt!1745232) key!3287)))

(declare-fun lt!1746115 () Unit!105525)

(assert (=> b!4581052 (= lt!1746115 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745232) key!3287))))

(assert (=> b!4581052 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287))))

(declare-fun lt!1746114 () Unit!105525)

(assert (=> b!4581052 (= lt!1746114 lt!1746115)))

(declare-fun b!4581053 () Bool)

(declare-fun e!2856710 () List!51074)

(assert (=> b!4581053 (= e!2856710 (t!358064 (toList!4552 lt!1745232)))))

(declare-fun c!784099 () Bool)

(declare-fun call!319793 () Bool)

(assert (=> b!4581053 (= c!784099 call!319793)))

(declare-fun lt!1746111 () Unit!105525)

(declare-fun e!2856704 () Unit!105525)

(assert (=> b!4581053 (= lt!1746111 e!2856704)))

(declare-fun bm!319788 () Bool)

(declare-fun c!784097 () Bool)

(declare-fun e!2856702 () List!51074)

(declare-fun call!319795 () Bool)

(declare-fun lt!1746110 () K!12320)

(assert (=> bm!319788 (= call!319795 (containsKey!2057 e!2856702 (ite c!784097 lt!1746110 (_1!29055 (h!56885 (toList!4552 lt!1745232))))))))

(declare-fun c!784102 () Bool)

(assert (=> bm!319788 (= c!784102 c!784097)))

(declare-fun b!4581054 () Bool)

(assert (=> b!4581054 (= e!2856702 (removePresrvNoDuplicatedKeys!211 (t!358064 (toList!4552 lt!1745232)) key!3287))))

(declare-fun b!4581056 () Bool)

(declare-fun e!2856709 () Bool)

(assert (=> b!4581056 (= e!2856709 e!2856705)))

(declare-fun c!784100 () Bool)

(assert (=> b!4581056 (= c!784100 (containsKey!2057 (toList!4552 lt!1745232) key!3287))))

(declare-fun b!4581057 () Bool)

(declare-fun lt!1746099 () Unit!105525)

(declare-fun e!2856708 () Unit!105525)

(assert (=> b!4581057 (= lt!1746099 e!2856708)))

(declare-fun c!784096 () Bool)

(assert (=> b!4581057 (= c!784096 call!319795)))

(declare-fun lt!1746112 () Unit!105525)

(declare-fun e!2856707 () Unit!105525)

(assert (=> b!4581057 (= lt!1746112 e!2856707)))

(declare-fun c!784098 () Bool)

(assert (=> b!4581057 (= c!784098 (contains!13849 (getKeysList!544 (t!358064 (toList!4552 lt!1745232))) (_1!29055 (h!56885 (toList!4552 lt!1745232)))))))

(declare-fun lt!1746104 () List!51074)

(assert (=> b!4581057 (= lt!1746104 ($colon$colon!1023 (removePresrvNoDuplicatedKeys!211 (t!358064 (toList!4552 lt!1745232)) key!3287) (h!56885 (toList!4552 lt!1745232))))))

(declare-fun e!2856703 () List!51074)

(assert (=> b!4581057 (= e!2856703 lt!1746104)))

(declare-fun b!4581058 () Bool)

(declare-fun Unit!105743 () Unit!105525)

(assert (=> b!4581058 (= e!2856708 Unit!105743)))

(declare-fun b!4581059 () Bool)

(declare-fun res!1914025 () Bool)

(assert (=> b!4581059 (=> (not res!1914025) (not e!2856709))))

(declare-fun lt!1746103 () List!51074)

(assert (=> b!4581059 (= res!1914025 (= (content!8587 (getKeysList!544 lt!1746103)) ((_ map and) (content!8587 (getKeysList!544 (toList!4552 lt!1745232))) ((_ map not) (store ((as const (Array K!12320 Bool)) false) key!3287 true)))))))

(declare-fun b!4581060 () Bool)

(declare-fun e!2856706 () Unit!105525)

(declare-fun Unit!105745 () Unit!105525)

(assert (=> b!4581060 (= e!2856706 Unit!105745)))

(declare-fun b!4581061 () Bool)

(assert (=> b!4581061 (= e!2856702 (t!358064 (toList!4552 lt!1745232)))))

(declare-fun bm!319789 () Bool)

(assert (=> bm!319789 (= call!319797 (content!8586 lt!1746103))))

(declare-fun b!4581062 () Bool)

(assert (=> b!4581062 (= e!2856703 Nil!50950)))

(declare-fun b!4581063 () Bool)

(assert (=> b!4581063 (= e!2856710 e!2856703)))

(declare-fun c!784101 () Bool)

(assert (=> b!4581063 (= c!784101 (and ((_ is Cons!50950) (toList!4552 lt!1745232)) (not (= (_1!29055 (h!56885 (toList!4552 lt!1745232))) key!3287))))))

(declare-fun b!4581064 () Bool)

(declare-fun Unit!105746 () Unit!105525)

(assert (=> b!4581064 (= e!2856708 Unit!105746)))

(declare-fun lt!1746106 () List!51074)

(assert (=> b!4581064 (= lt!1746106 (removePresrvNoDuplicatedKeys!211 (t!358064 (toList!4552 lt!1745232)) key!3287))))

(declare-fun lt!1746105 () Unit!105525)

(assert (=> b!4581064 (= lt!1746105 (lemmaInListThenGetKeysListContains!540 lt!1746106 (_1!29055 (h!56885 (toList!4552 lt!1745232)))))))

(assert (=> b!4581064 (contains!13849 (getKeysList!544 lt!1746106) (_1!29055 (h!56885 (toList!4552 lt!1745232))))))

(declare-fun lt!1746101 () Unit!105525)

(assert (=> b!4581064 (= lt!1746101 lt!1746105)))

(assert (=> b!4581064 false))

(declare-fun b!4581065 () Bool)

(assert (=> b!4581065 (= e!2856705 (= call!319797 call!319796))))

(declare-fun b!4581055 () Bool)

(declare-fun Unit!105747 () Unit!105525)

(assert (=> b!4581055 (= e!2856707 Unit!105747)))

(declare-fun d!1434600 () Bool)

(assert (=> d!1434600 e!2856709))

(declare-fun res!1914023 () Bool)

(assert (=> d!1434600 (=> (not res!1914023) (not e!2856709))))

(assert (=> d!1434600 (= res!1914023 (invariantList!1097 lt!1746103))))

(assert (=> d!1434600 (= lt!1746103 e!2856710)))

(assert (=> d!1434600 (= c!784097 (and ((_ is Cons!50950) (toList!4552 lt!1745232)) (= (_1!29055 (h!56885 (toList!4552 lt!1745232))) key!3287)))))

(assert (=> d!1434600 (invariantList!1097 (toList!4552 lt!1745232))))

(assert (=> d!1434600 (= (removePresrvNoDuplicatedKeys!211 (toList!4552 lt!1745232) key!3287) lt!1746103)))

(declare-fun b!4581066 () Bool)

(declare-fun res!1914024 () Bool)

(assert (=> b!4581066 (=> (not res!1914024) (not e!2856709))))

(assert (=> b!4581066 (= res!1914024 (not (containsKey!2057 lt!1746103 key!3287)))))

(declare-fun b!4581067 () Bool)

(declare-fun Unit!105749 () Unit!105525)

(assert (=> b!4581067 (= e!2856706 Unit!105749)))

(declare-fun lt!1746108 () V!12566)

(assert (=> b!4581067 (= lt!1746108 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287)))))

(assert (=> b!4581067 (= lt!1746110 key!3287)))

(declare-fun lt!1746109 () K!12320)

(assert (=> b!4581067 (= lt!1746109 key!3287)))

(declare-fun lt!1746113 () Unit!105525)

(assert (=> b!4581067 (= lt!1746113 (lemmaContainsTupleThenContainsKey!98 (t!358064 (toList!4552 lt!1745232)) lt!1746110 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287))))))

(assert (=> b!4581067 call!319795))

(declare-fun lt!1746102 () Unit!105525)

(assert (=> b!4581067 (= lt!1746102 lt!1746113)))

(assert (=> b!4581067 false))

(declare-fun call!319792 () (InoxSet tuple2!51522))

(declare-fun call!319794 () (InoxSet tuple2!51522))

(declare-fun b!4581068 () Bool)

(assert (=> b!4581068 (= call!319794 ((_ map and) call!319792 ((_ map not) (store ((as const (Array tuple2!51522 Bool)) false) (tuple2!51523 key!3287 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287))) true))))))

(declare-fun lt!1746098 () Unit!105525)

(assert (=> b!4581068 (= lt!1746098 e!2856706)))

(declare-fun c!784103 () Bool)

(assert (=> b!4581068 (= c!784103 (contains!13851 (t!358064 (toList!4552 lt!1745232)) (tuple2!51523 key!3287 (get!16817 (getValueByKey!1254 (toList!4552 lt!1745232) key!3287)))))))

(declare-fun Unit!105750 () Unit!105525)

(assert (=> b!4581068 (= e!2856704 Unit!105750)))

(declare-fun bm!319790 () Bool)

(assert (=> bm!319790 (= call!319793 (containsKey!2057 (ite c!784097 (toList!4552 lt!1745232) (t!358064 (toList!4552 lt!1745232))) (ite c!784097 key!3287 (_1!29055 (h!56885 (toList!4552 lt!1745232))))))))

(declare-fun bm!319791 () Bool)

(assert (=> bm!319791 (= call!319792 (content!8586 (toList!4552 lt!1745232)))))

(declare-fun bm!319792 () Bool)

(assert (=> bm!319792 (= call!319794 (content!8586 (t!358064 (toList!4552 lt!1745232))))))

(declare-fun b!4581069 () Bool)

(declare-fun Unit!105752 () Unit!105525)

(assert (=> b!4581069 (= e!2856707 Unit!105752)))

(declare-fun lt!1746100 () Unit!105525)

(assert (=> b!4581069 (= lt!1746100 (lemmaInGetKeysListThenContainsKey!543 (t!358064 (toList!4552 lt!1745232)) (_1!29055 (h!56885 (toList!4552 lt!1745232)))))))

(assert (=> b!4581069 call!319793))

(declare-fun lt!1746107 () Unit!105525)

(assert (=> b!4581069 (= lt!1746107 lt!1746100)))

(assert (=> b!4581069 false))

(declare-fun b!4581070 () Bool)

(assert (=> b!4581070 (= call!319794 call!319792)))

(declare-fun Unit!105753 () Unit!105525)

(assert (=> b!4581070 (= e!2856704 Unit!105753)))

(assert (= (and d!1434600 c!784097) b!4581053))

(assert (= (and d!1434600 (not c!784097)) b!4581063))

(assert (= (and b!4581053 c!784099) b!4581068))

(assert (= (and b!4581053 (not c!784099)) b!4581070))

(assert (= (and b!4581068 c!784103) b!4581067))

(assert (= (and b!4581068 (not c!784103)) b!4581060))

(assert (= (or b!4581068 b!4581070) bm!319792))

(assert (= (or b!4581068 b!4581070) bm!319791))

(assert (= (and b!4581063 c!784101) b!4581057))

(assert (= (and b!4581063 (not c!784101)) b!4581062))

(assert (= (and b!4581057 c!784098) b!4581069))

(assert (= (and b!4581057 (not c!784098)) b!4581055))

(assert (= (and b!4581057 c!784096) b!4581064))

(assert (= (and b!4581057 (not c!784096)) b!4581058))

(assert (= (or b!4581053 b!4581069) bm!319790))

(assert (= (or b!4581067 b!4581057) bm!319788))

(assert (= (and bm!319788 c!784102) b!4581061))

(assert (= (and bm!319788 (not c!784102)) b!4581054))

(assert (= (and d!1434600 res!1914023) b!4581066))

(assert (= (and b!4581066 res!1914024) b!4581059))

(assert (= (and b!4581059 res!1914025) b!4581056))

(assert (= (and b!4581056 c!784100) b!4581052))

(assert (= (and b!4581056 (not c!784100)) b!4581065))

(assert (= (or b!4581052 b!4581065) bm!319789))

(assert (= (or b!4581052 b!4581065) bm!319787))

(declare-fun m!5391815 () Bool)

(assert (=> b!4581066 m!5391815))

(assert (=> b!4581056 m!5390757))

(declare-fun m!5391817 () Bool)

(assert (=> bm!319790 m!5391817))

(declare-fun m!5391819 () Bool)

(assert (=> d!1434600 m!5391819))

(assert (=> d!1434600 m!5390875))

(declare-fun m!5391821 () Bool)

(assert (=> b!4581057 m!5391821))

(assert (=> b!4581057 m!5391821))

(declare-fun m!5391823 () Bool)

(assert (=> b!4581057 m!5391823))

(declare-fun m!5391825 () Bool)

(assert (=> b!4581057 m!5391825))

(assert (=> b!4581057 m!5391825))

(declare-fun m!5391827 () Bool)

(assert (=> b!4581057 m!5391827))

(declare-fun m!5391829 () Bool)

(assert (=> bm!319787 m!5391829))

(assert (=> bm!319791 m!5391829))

(assert (=> b!4581054 m!5391825))

(assert (=> b!4581067 m!5390763))

(assert (=> b!4581067 m!5390763))

(declare-fun m!5391831 () Bool)

(assert (=> b!4581067 m!5391831))

(assert (=> b!4581067 m!5391831))

(declare-fun m!5391833 () Bool)

(assert (=> b!4581067 m!5391833))

(declare-fun m!5391835 () Bool)

(assert (=> b!4581059 m!5391835))

(assert (=> b!4581059 m!5390767))

(assert (=> b!4581059 m!5390481))

(assert (=> b!4581059 m!5391835))

(declare-fun m!5391837 () Bool)

(assert (=> b!4581059 m!5391837))

(assert (=> b!4581059 m!5390767))

(declare-fun m!5391839 () Bool)

(assert (=> b!4581059 m!5391839))

(declare-fun m!5391841 () Bool)

(assert (=> bm!319792 m!5391841))

(declare-fun m!5391843 () Bool)

(assert (=> bm!319788 m!5391843))

(assert (=> b!4581052 m!5390763))

(assert (=> b!4581052 m!5390763))

(assert (=> b!4581052 m!5391831))

(declare-fun m!5391845 () Bool)

(assert (=> b!4581052 m!5391845))

(assert (=> b!4581052 m!5390769))

(assert (=> b!4581052 m!5390757))

(assert (=> b!4581052 m!5390763))

(assert (=> b!4581052 m!5390765))

(assert (=> b!4581064 m!5391825))

(declare-fun m!5391847 () Bool)

(assert (=> b!4581064 m!5391847))

(declare-fun m!5391849 () Bool)

(assert (=> b!4581064 m!5391849))

(assert (=> b!4581064 m!5391849))

(declare-fun m!5391851 () Bool)

(assert (=> b!4581064 m!5391851))

(declare-fun m!5391853 () Bool)

(assert (=> bm!319789 m!5391853))

(declare-fun m!5391855 () Bool)

(assert (=> b!4581069 m!5391855))

(assert (=> b!4581068 m!5390763))

(assert (=> b!4581068 m!5390763))

(assert (=> b!4581068 m!5391831))

(assert (=> b!4581068 m!5391845))

(declare-fun m!5391857 () Bool)

(assert (=> b!4581068 m!5391857))

(assert (=> d!1434166 d!1434600))

(declare-fun d!1434602 () Bool)

(assert (=> d!1434602 (= (eq!711 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745218) (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745214)) (= (content!8586 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745218))) (content!8586 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745214)))))))

(declare-fun bs!972768 () Bool)

(assert (= bs!972768 d!1434602))

(declare-fun m!5391859 () Bool)

(assert (=> bs!972768 m!5391859))

(declare-fun m!5391861 () Bool)

(assert (=> bs!972768 m!5391861))

(assert (=> d!1434226 d!1434602))

(assert (=> d!1434226 d!1434216))

(declare-fun d!1434604 () Bool)

(assert (=> d!1434604 (eq!711 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745218) (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745214))))

(assert (=> d!1434604 true))

(declare-fun _$16!266 () Unit!105525)

(assert (=> d!1434604 (= (choose!30525 lt!1745218 lt!1745214 (_2!29056 lt!1745216)) _$16!266)))

(declare-fun bs!972783 () Bool)

(assert (= bs!972783 d!1434604))

(assert (=> bs!972783 m!5389739))

(assert (=> bs!972783 m!5389749))

(assert (=> bs!972783 m!5389739))

(assert (=> bs!972783 m!5389749))

(assert (=> bs!972783 m!5390675))

(assert (=> d!1434226 d!1434604))

(assert (=> d!1434226 d!1434224))

(assert (=> d!1434226 d!1434060))

(declare-fun d!1434610 () Bool)

(declare-fun res!1914026 () Bool)

(declare-fun e!2856711 () Bool)

(assert (=> d!1434610 (=> res!1914026 e!2856711)))

(assert (=> d!1434610 (= res!1914026 (not ((_ is Cons!50950) (_2!29056 lt!1745215))))))

(assert (=> d!1434610 (= (noDuplicateKeys!1272 (_2!29056 lt!1745215)) e!2856711)))

(declare-fun b!4581071 () Bool)

(declare-fun e!2856712 () Bool)

(assert (=> b!4581071 (= e!2856711 e!2856712)))

(declare-fun res!1914027 () Bool)

(assert (=> b!4581071 (=> (not res!1914027) (not e!2856712))))

(assert (=> b!4581071 (= res!1914027 (not (containsKey!2054 (t!358064 (_2!29056 lt!1745215)) (_1!29055 (h!56885 (_2!29056 lt!1745215))))))))

(declare-fun b!4581072 () Bool)

(assert (=> b!4581072 (= e!2856712 (noDuplicateKeys!1272 (t!358064 (_2!29056 lt!1745215))))))

(assert (= (and d!1434610 (not res!1914026)) b!4581071))

(assert (= (and b!4581071 res!1914027) b!4581072))

(declare-fun m!5391897 () Bool)

(assert (=> b!4581071 m!5391897))

(declare-fun m!5391899 () Bool)

(assert (=> b!4581072 m!5391899))

(assert (=> bs!972194 d!1434610))

(declare-fun d!1434612 () Bool)

(declare-fun e!2856713 () Bool)

(assert (=> d!1434612 e!2856713))

(declare-fun res!1914028 () Bool)

(assert (=> d!1434612 (=> res!1914028 e!2856713)))

(declare-fun lt!1746116 () Bool)

(assert (=> d!1434612 (= res!1914028 (not lt!1746116))))

(declare-fun lt!1746117 () Bool)

(assert (=> d!1434612 (= lt!1746116 lt!1746117)))

(declare-fun lt!1746118 () Unit!105525)

(declare-fun e!2856714 () Unit!105525)

(assert (=> d!1434612 (= lt!1746118 e!2856714)))

(declare-fun c!784104 () Bool)

(assert (=> d!1434612 (= c!784104 lt!1746117)))

(assert (=> d!1434612 (= lt!1746117 (containsKey!2056 (toList!4551 lt!1745621) (_1!29056 lt!1745216)))))

(assert (=> d!1434612 (= (contains!13847 lt!1745621 (_1!29056 lt!1745216)) lt!1746116)))

(declare-fun b!4581073 () Bool)

(declare-fun lt!1746119 () Unit!105525)

(assert (=> b!4581073 (= e!2856714 lt!1746119)))

(assert (=> b!4581073 (= lt!1746119 (lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (toList!4551 lt!1745621) (_1!29056 lt!1745216)))))

(assert (=> b!4581073 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745621) (_1!29056 lt!1745216)))))

(declare-fun b!4581074 () Bool)

(declare-fun Unit!105754 () Unit!105525)

(assert (=> b!4581074 (= e!2856714 Unit!105754)))

(declare-fun b!4581075 () Bool)

(assert (=> b!4581075 (= e!2856713 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745621) (_1!29056 lt!1745216))))))

(assert (= (and d!1434612 c!784104) b!4581073))

(assert (= (and d!1434612 (not c!784104)) b!4581074))

(assert (= (and d!1434612 (not res!1914028)) b!4581075))

(declare-fun m!5391901 () Bool)

(assert (=> d!1434612 m!5391901))

(declare-fun m!5391903 () Bool)

(assert (=> b!4581073 m!5391903))

(assert (=> b!4581073 m!5390509))

(assert (=> b!4581073 m!5390509))

(declare-fun m!5391905 () Bool)

(assert (=> b!4581073 m!5391905))

(assert (=> b!4581075 m!5390509))

(assert (=> b!4581075 m!5390509))

(assert (=> b!4581075 m!5391905))

(assert (=> d!1434176 d!1434612))

(declare-fun d!1434614 () Bool)

(declare-fun c!784109 () Bool)

(assert (=> d!1434614 (= c!784109 (and ((_ is Cons!50951) lt!1745619) (= (_1!29056 (h!56886 lt!1745619)) (_1!29056 lt!1745216))))))

(declare-fun e!2856719 () Option!11327)

(assert (=> d!1434614 (= (getValueByKey!1253 lt!1745619 (_1!29056 lt!1745216)) e!2856719)))

(declare-fun b!4581087 () Bool)

(declare-fun e!2856720 () Option!11327)

(assert (=> b!4581087 (= e!2856720 None!11326)))

(declare-fun b!4581086 () Bool)

(assert (=> b!4581086 (= e!2856720 (getValueByKey!1253 (t!358065 lt!1745619) (_1!29056 lt!1745216)))))

(declare-fun b!4581084 () Bool)

(assert (=> b!4581084 (= e!2856719 (Some!11326 (_2!29056 (h!56886 lt!1745619))))))

(declare-fun b!4581085 () Bool)

(assert (=> b!4581085 (= e!2856719 e!2856720)))

(declare-fun c!784110 () Bool)

(assert (=> b!4581085 (= c!784110 (and ((_ is Cons!50951) lt!1745619) (not (= (_1!29056 (h!56886 lt!1745619)) (_1!29056 lt!1745216)))))))

(assert (= (and d!1434614 c!784109) b!4581084))

(assert (= (and d!1434614 (not c!784109)) b!4581085))

(assert (= (and b!4581085 c!784110) b!4581086))

(assert (= (and b!4581085 (not c!784110)) b!4581087))

(declare-fun m!5391907 () Bool)

(assert (=> b!4581086 m!5391907))

(assert (=> d!1434176 d!1434614))

(declare-fun d!1434616 () Bool)

(assert (=> d!1434616 (= (getValueByKey!1253 lt!1745619 (_1!29056 lt!1745216)) (Some!11326 (_2!29056 lt!1745216)))))

(declare-fun lt!1746120 () Unit!105525)

(assert (=> d!1434616 (= lt!1746120 (choose!30539 lt!1745619 (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))

(declare-fun e!2856721 () Bool)

(assert (=> d!1434616 e!2856721))

(declare-fun res!1914029 () Bool)

(assert (=> d!1434616 (=> (not res!1914029) (not e!2856721))))

(assert (=> d!1434616 (= res!1914029 (isStrictlySorted!512 lt!1745619))))

(assert (=> d!1434616 (= (lemmaContainsTupThenGetReturnValue!777 lt!1745619 (_1!29056 lt!1745216) (_2!29056 lt!1745216)) lt!1746120)))

(declare-fun b!4581088 () Bool)

(declare-fun res!1914030 () Bool)

(assert (=> b!4581088 (=> (not res!1914030) (not e!2856721))))

(assert (=> b!4581088 (= res!1914030 (containsKey!2056 lt!1745619 (_1!29056 lt!1745216)))))

(declare-fun b!4581089 () Bool)

(assert (=> b!4581089 (= e!2856721 (contains!13845 lt!1745619 (tuple2!51525 (_1!29056 lt!1745216) (_2!29056 lt!1745216))))))

(assert (= (and d!1434616 res!1914029) b!4581088))

(assert (= (and b!4581088 res!1914030) b!4581089))

(assert (=> d!1434616 m!5390503))

(declare-fun m!5391909 () Bool)

(assert (=> d!1434616 m!5391909))

(declare-fun m!5391911 () Bool)

(assert (=> d!1434616 m!5391911))

(declare-fun m!5391913 () Bool)

(assert (=> b!4581088 m!5391913))

(declare-fun m!5391915 () Bool)

(assert (=> b!4581089 m!5391915))

(assert (=> d!1434176 d!1434616))

(declare-fun b!4581090 () Bool)

(declare-fun e!2856723 () List!51075)

(declare-fun call!319799 () List!51075)

(assert (=> b!4581090 (= e!2856723 call!319799)))

(declare-fun d!1434618 () Bool)

(declare-fun e!2856725 () Bool)

(assert (=> d!1434618 e!2856725))

(declare-fun res!1914031 () Bool)

(assert (=> d!1434618 (=> (not res!1914031) (not e!2856725))))

(declare-fun lt!1746121 () List!51075)

(assert (=> d!1434618 (= res!1914031 (isStrictlySorted!512 lt!1746121))))

(assert (=> d!1434618 (= lt!1746121 e!2856723)))

(declare-fun c!784111 () Bool)

(assert (=> d!1434618 (= c!784111 (and ((_ is Cons!50951) (toList!4551 lt!1745235)) (bvslt (_1!29056 (h!56886 (toList!4551 lt!1745235))) (_1!29056 lt!1745216))))))

(assert (=> d!1434618 (isStrictlySorted!512 (toList!4551 lt!1745235))))

(assert (=> d!1434618 (= (insertStrictlySorted!477 (toList!4551 lt!1745235) (_1!29056 lt!1745216) (_2!29056 lt!1745216)) lt!1746121)))

(declare-fun b!4581091 () Bool)

(declare-fun e!2856722 () List!51075)

(assert (=> b!4581091 (= e!2856723 e!2856722)))

(declare-fun c!784114 () Bool)

(assert (=> b!4581091 (= c!784114 (and ((_ is Cons!50951) (toList!4551 lt!1745235)) (= (_1!29056 (h!56886 (toList!4551 lt!1745235))) (_1!29056 lt!1745216))))))

(declare-fun bm!319793 () Bool)

(declare-fun call!319798 () List!51075)

(assert (=> bm!319793 (= call!319798 call!319799)))

(declare-fun b!4581092 () Bool)

(declare-fun e!2856724 () List!51075)

(declare-fun call!319800 () List!51075)

(assert (=> b!4581092 (= e!2856724 call!319800)))

(declare-fun b!4581093 () Bool)

(declare-fun c!784113 () Bool)

(assert (=> b!4581093 (= c!784113 (and ((_ is Cons!50951) (toList!4551 lt!1745235)) (bvsgt (_1!29056 (h!56886 (toList!4551 lt!1745235))) (_1!29056 lt!1745216))))))

(assert (=> b!4581093 (= e!2856722 e!2856724)))

(declare-fun b!4581094 () Bool)

(assert (=> b!4581094 (= e!2856725 (contains!13845 lt!1746121 (tuple2!51525 (_1!29056 lt!1745216) (_2!29056 lt!1745216))))))

(declare-fun bm!319794 () Bool)

(declare-fun e!2856726 () List!51075)

(assert (=> bm!319794 (= call!319799 ($colon$colon!1022 e!2856726 (ite c!784111 (h!56886 (toList!4551 lt!1745235)) (tuple2!51525 (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))))

(declare-fun c!784112 () Bool)

(assert (=> bm!319794 (= c!784112 c!784111)))

(declare-fun b!4581095 () Bool)

(declare-fun res!1914032 () Bool)

(assert (=> b!4581095 (=> (not res!1914032) (not e!2856725))))

(assert (=> b!4581095 (= res!1914032 (containsKey!2056 lt!1746121 (_1!29056 lt!1745216)))))

(declare-fun b!4581096 () Bool)

(assert (=> b!4581096 (= e!2856722 call!319798)))

(declare-fun bm!319795 () Bool)

(assert (=> bm!319795 (= call!319800 call!319798)))

(declare-fun b!4581097 () Bool)

(assert (=> b!4581097 (= e!2856726 (insertStrictlySorted!477 (t!358065 (toList!4551 lt!1745235)) (_1!29056 lt!1745216) (_2!29056 lt!1745216)))))

(declare-fun b!4581098 () Bool)

(assert (=> b!4581098 (= e!2856724 call!319800)))

(declare-fun b!4581099 () Bool)

(assert (=> b!4581099 (= e!2856726 (ite c!784114 (t!358065 (toList!4551 lt!1745235)) (ite c!784113 (Cons!50951 (h!56886 (toList!4551 lt!1745235)) (t!358065 (toList!4551 lt!1745235))) Nil!50951)))))

(assert (= (and d!1434618 c!784111) b!4581090))

(assert (= (and d!1434618 (not c!784111)) b!4581091))

(assert (= (and b!4581091 c!784114) b!4581096))

(assert (= (and b!4581091 (not c!784114)) b!4581093))

(assert (= (and b!4581093 c!784113) b!4581092))

(assert (= (and b!4581093 (not c!784113)) b!4581098))

(assert (= (or b!4581092 b!4581098) bm!319795))

(assert (= (or b!4581096 bm!319795) bm!319793))

(assert (= (or b!4581090 bm!319793) bm!319794))

(assert (= (and bm!319794 c!784112) b!4581097))

(assert (= (and bm!319794 (not c!784112)) b!4581099))

(assert (= (and d!1434618 res!1914031) b!4581095))

(assert (= (and b!4581095 res!1914032) b!4581094))

(declare-fun m!5391919 () Bool)

(assert (=> b!4581097 m!5391919))

(declare-fun m!5391921 () Bool)

(assert (=> b!4581095 m!5391921))

(declare-fun m!5391923 () Bool)

(assert (=> b!4581094 m!5391923))

(declare-fun m!5391925 () Bool)

(assert (=> bm!319794 m!5391925))

(declare-fun m!5391927 () Bool)

(assert (=> d!1434618 m!5391927))

(assert (=> d!1434618 m!5391015))

(assert (=> d!1434176 d!1434618))

(assert (=> b!4580407 d!1434548))

(declare-fun d!1434622 () Bool)

(assert (=> d!1434622 (containsKey!2057 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287)))

(declare-fun lt!1746122 () Unit!105525)

(assert (=> d!1434622 (= lt!1746122 (choose!30531 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(assert (=> d!1434622 (invariantList!1097 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))

(assert (=> d!1434622 (= (lemmaInGetKeysListThenContainsKey!543 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) key!3287) lt!1746122)))

(declare-fun bs!972784 () Bool)

(assert (= bs!972784 d!1434622))

(assert (=> bs!972784 m!5390729))

(declare-fun m!5391929 () Bool)

(assert (=> bs!972784 m!5391929))

(assert (=> bs!972784 m!5390879))

(assert (=> b!4580407 d!1434622))

(assert (=> d!1434210 d!1434208))

(declare-fun d!1434626 () Bool)

(assert (=> d!1434626 (containsKeyBiggerList!242 (toList!4551 lt!1745235) key!3287)))

(assert (=> d!1434626 true))

(declare-fun _$33!757 () Unit!105525)

(assert (=> d!1434626 (= (choose!30523 lt!1745235 key!3287 hashF!1107) _$33!757)))

(declare-fun bs!972785 () Bool)

(assert (= bs!972785 d!1434626))

(assert (=> bs!972785 m!5389823))

(assert (=> d!1434210 d!1434626))

(declare-fun d!1434630 () Bool)

(declare-fun res!1914033 () Bool)

(declare-fun e!2856731 () Bool)

(assert (=> d!1434630 (=> res!1914033 e!2856731)))

(assert (=> d!1434630 (= res!1914033 ((_ is Nil!50951) (toList!4551 lt!1745235)))))

(assert (=> d!1434630 (= (forall!10500 (toList!4551 lt!1745235) lambda!183163) e!2856731)))

(declare-fun b!4581108 () Bool)

(declare-fun e!2856732 () Bool)

(assert (=> b!4581108 (= e!2856731 e!2856732)))

(declare-fun res!1914034 () Bool)

(assert (=> b!4581108 (=> (not res!1914034) (not e!2856732))))

(assert (=> b!4581108 (= res!1914034 (dynLambda!21335 lambda!183163 (h!56886 (toList!4551 lt!1745235))))))

(declare-fun b!4581109 () Bool)

(assert (=> b!4581109 (= e!2856732 (forall!10500 (t!358065 (toList!4551 lt!1745235)) lambda!183163))))

(assert (= (and d!1434630 (not res!1914033)) b!4581108))

(assert (= (and b!4581108 res!1914034) b!4581109))

(declare-fun b_lambda!166097 () Bool)

(assert (=> (not b_lambda!166097) (not b!4581108)))

(declare-fun m!5391933 () Bool)

(assert (=> b!4581108 m!5391933))

(declare-fun m!5391935 () Bool)

(assert (=> b!4581109 m!5391935))

(assert (=> d!1434210 d!1434630))

(declare-fun d!1434632 () Bool)

(declare-fun c!784119 () Bool)

(assert (=> d!1434632 (= c!784119 (and ((_ is Cons!50951) (toList!4551 lt!1745607)) (= (_1!29056 (h!56886 (toList!4551 lt!1745607))) (_1!29056 lt!1745211))))))

(declare-fun e!2856737 () Option!11327)

(assert (=> d!1434632 (= (getValueByKey!1253 (toList!4551 lt!1745607) (_1!29056 lt!1745211)) e!2856737)))

(declare-fun b!4581117 () Bool)

(declare-fun e!2856738 () Option!11327)

(assert (=> b!4581117 (= e!2856738 None!11326)))

(declare-fun b!4581116 () Bool)

(assert (=> b!4581116 (= e!2856738 (getValueByKey!1253 (t!358065 (toList!4551 lt!1745607)) (_1!29056 lt!1745211)))))

(declare-fun b!4581114 () Bool)

(assert (=> b!4581114 (= e!2856737 (Some!11326 (_2!29056 (h!56886 (toList!4551 lt!1745607)))))))

(declare-fun b!4581115 () Bool)

(assert (=> b!4581115 (= e!2856737 e!2856738)))

(declare-fun c!784120 () Bool)

(assert (=> b!4581115 (= c!784120 (and ((_ is Cons!50951) (toList!4551 lt!1745607)) (not (= (_1!29056 (h!56886 (toList!4551 lt!1745607))) (_1!29056 lt!1745211)))))))

(assert (= (and d!1434632 c!784119) b!4581114))

(assert (= (and d!1434632 (not c!784119)) b!4581115))

(assert (= (and b!4581115 c!784120) b!4581116))

(assert (= (and b!4581115 (not c!784120)) b!4581117))

(declare-fun m!5391937 () Bool)

(assert (=> b!4581116 m!5391937))

(assert (=> b!4580266 d!1434632))

(declare-fun d!1434634 () Bool)

(assert (=> d!1434634 (= (invariantList!1097 (toList!4552 lt!1745617)) (noDuplicatedKeys!306 (toList!4552 lt!1745617)))))

(declare-fun bs!972786 () Bool)

(assert (= bs!972786 d!1434634))

(declare-fun m!5391939 () Bool)

(assert (=> bs!972786 m!5391939))

(assert (=> d!1434168 d!1434634))

(declare-fun d!1434636 () Bool)

(declare-fun res!1914039 () Bool)

(declare-fun e!2856739 () Bool)

(assert (=> d!1434636 (=> res!1914039 e!2856739)))

(assert (=> d!1434636 (= res!1914039 ((_ is Nil!50951) (toList!4551 lt!1745230)))))

(assert (=> d!1434636 (= (forall!10500 (toList!4551 lt!1745230) lambda!183155) e!2856739)))

(declare-fun b!4581118 () Bool)

(declare-fun e!2856740 () Bool)

(assert (=> b!4581118 (= e!2856739 e!2856740)))

(declare-fun res!1914040 () Bool)

(assert (=> b!4581118 (=> (not res!1914040) (not e!2856740))))

(assert (=> b!4581118 (= res!1914040 (dynLambda!21335 lambda!183155 (h!56886 (toList!4551 lt!1745230))))))

(declare-fun b!4581119 () Bool)

(assert (=> b!4581119 (= e!2856740 (forall!10500 (t!358065 (toList!4551 lt!1745230)) lambda!183155))))

(assert (= (and d!1434636 (not res!1914039)) b!4581118))

(assert (= (and b!4581118 res!1914040) b!4581119))

(declare-fun b_lambda!166099 () Bool)

(assert (=> (not b_lambda!166099) (not b!4581118)))

(declare-fun m!5391941 () Bool)

(assert (=> b!4581118 m!5391941))

(declare-fun m!5391943 () Bool)

(assert (=> b!4581119 m!5391943))

(assert (=> d!1434168 d!1434636))

(declare-fun d!1434638 () Bool)

(declare-fun c!784121 () Bool)

(assert (=> d!1434638 (= c!784121 ((_ is Nil!50950) (toList!4552 lt!1745218)))))

(declare-fun e!2856741 () (InoxSet tuple2!51522))

(assert (=> d!1434638 (= (content!8586 (toList!4552 lt!1745218)) e!2856741)))

(declare-fun b!4581120 () Bool)

(assert (=> b!4581120 (= e!2856741 ((as const (Array tuple2!51522 Bool)) false))))

(declare-fun b!4581121 () Bool)

(assert (=> b!4581121 (= e!2856741 ((_ map or) (store ((as const (Array tuple2!51522 Bool)) false) (h!56885 (toList!4552 lt!1745218)) true) (content!8586 (t!358064 (toList!4552 lt!1745218)))))))

(assert (= (and d!1434638 c!784121) b!4581120))

(assert (= (and d!1434638 (not c!784121)) b!4581121))

(declare-fun m!5391945 () Bool)

(assert (=> b!4581121 m!5391945))

(declare-fun m!5391947 () Bool)

(assert (=> b!4581121 m!5391947))

(assert (=> d!1434138 d!1434638))

(declare-fun d!1434640 () Bool)

(declare-fun c!784122 () Bool)

(assert (=> d!1434640 (= c!784122 ((_ is Nil!50950) (toList!4552 lt!1745214)))))

(declare-fun e!2856744 () (InoxSet tuple2!51522))

(assert (=> d!1434640 (= (content!8586 (toList!4552 lt!1745214)) e!2856744)))

(declare-fun b!4581124 () Bool)

(assert (=> b!4581124 (= e!2856744 ((as const (Array tuple2!51522 Bool)) false))))

(declare-fun b!4581125 () Bool)

(assert (=> b!4581125 (= e!2856744 ((_ map or) (store ((as const (Array tuple2!51522 Bool)) false) (h!56885 (toList!4552 lt!1745214)) true) (content!8586 (t!358064 (toList!4552 lt!1745214)))))))

(assert (= (and d!1434640 c!784122) b!4581124))

(assert (= (and d!1434640 (not c!784122)) b!4581125))

(declare-fun m!5391949 () Bool)

(assert (=> b!4581125 m!5391949))

(declare-fun m!5391953 () Bool)

(assert (=> b!4581125 m!5391953))

(assert (=> d!1434138 d!1434640))

(declare-fun d!1434642 () Bool)

(declare-fun res!1914045 () Bool)

(declare-fun e!2856745 () Bool)

(assert (=> d!1434642 (=> res!1914045 e!2856745)))

(declare-fun e!2856746 () Bool)

(assert (=> d!1434642 (= res!1914045 e!2856746)))

(declare-fun res!1914044 () Bool)

(assert (=> d!1434642 (=> (not res!1914044) (not e!2856746))))

(assert (=> d!1434642 (= res!1914044 ((_ is Cons!50951) (t!358065 (t!358065 (toList!4551 lm!1477)))))))

(assert (=> d!1434642 (= (containsKeyBiggerList!242 (t!358065 (t!358065 (toList!4551 lm!1477))) key!3287) e!2856745)))

(declare-fun b!4581126 () Bool)

(assert (=> b!4581126 (= e!2856746 (containsKey!2054 (_2!29056 (h!56886 (t!358065 (t!358065 (toList!4551 lm!1477))))) key!3287))))

(declare-fun b!4581127 () Bool)

(declare-fun e!2856747 () Bool)

(assert (=> b!4581127 (= e!2856745 e!2856747)))

(declare-fun res!1914043 () Bool)

(assert (=> b!4581127 (=> (not res!1914043) (not e!2856747))))

(assert (=> b!4581127 (= res!1914043 ((_ is Cons!50951) (t!358065 (t!358065 (toList!4551 lm!1477)))))))

(declare-fun b!4581128 () Bool)

(assert (=> b!4581128 (= e!2856747 (containsKeyBiggerList!242 (t!358065 (t!358065 (t!358065 (toList!4551 lm!1477)))) key!3287))))

(assert (= (and d!1434642 res!1914044) b!4581126))

(assert (= (and d!1434642 (not res!1914045)) b!4581127))

(assert (= (and b!4581127 res!1914043) b!4581128))

(declare-fun m!5391959 () Bool)

(assert (=> b!4581126 m!5391959))

(declare-fun m!5391961 () Bool)

(assert (=> b!4581128 m!5391961))

(assert (=> b!4580353 d!1434642))

(assert (=> d!1434186 d!1434188))

(assert (=> d!1434186 d!1434184))

(assert (=> d!1434186 d!1434166))

(declare-fun d!1434646 () Bool)

(assert (=> d!1434646 (= (addToMapMapFromBucket!785 (_2!29056 lt!1745216) (-!480 lt!1745232 key!3287)) (-!480 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232) key!3287))))

(assert (=> d!1434646 true))

(declare-fun _$14!1391 () Unit!105525)

(assert (=> d!1434646 (= (choose!30520 lt!1745232 key!3287 (_2!29056 lt!1745216)) _$14!1391)))

(declare-fun bs!972832 () Bool)

(assert (= bs!972832 d!1434646))

(assert (=> bs!972832 m!5389781))

(assert (=> bs!972832 m!5389781))

(assert (=> bs!972832 m!5390567))

(assert (=> bs!972832 m!5389793))

(assert (=> bs!972832 m!5389793))

(assert (=> bs!972832 m!5389795))

(assert (=> d!1434186 d!1434646))

(assert (=> d!1434186 d!1434182))

(declare-fun bs!972833 () Bool)

(declare-fun b!4581137 () Bool)

(assert (= bs!972833 (and b!4581137 b!4580368)))

(declare-fun lambda!183257 () Int)

(assert (=> bs!972833 (= (= (-!480 lt!1745232 key!3287) lt!1745665) (= lambda!183257 lambda!183166))))

(declare-fun bs!972834 () Bool)

(assert (= bs!972834 (and b!4581137 b!4580772)))

(assert (=> bs!972834 (= (= (-!480 lt!1745232 key!3287) lt!1745913) (= lambda!183257 lambda!183232))))

(declare-fun bs!972835 () Bool)

(assert (= bs!972835 (and b!4581137 b!4580664)))

(assert (=> bs!972835 (= (= (-!480 lt!1745232 key!3287) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183257 lambda!183211))))

(declare-fun bs!972836 () Bool)

(assert (= bs!972836 (and b!4581137 b!4580305)))

(assert (=> bs!972836 (= (= (-!480 lt!1745232 key!3287) lt!1745627) (= lambda!183257 lambda!183159))))

(declare-fun bs!972837 () Bool)

(assert (= bs!972837 (and b!4581137 d!1434338)))

(assert (=> bs!972837 (= (= (-!480 lt!1745232 key!3287) lt!1745759) (= lambda!183257 lambda!183193))))

(declare-fun bs!972838 () Bool)

(assert (= bs!972838 (and b!4581137 d!1434184)))

(assert (=> bs!972838 (= (= (-!480 lt!1745232 key!3287) lt!1745630) (= lambda!183257 lambda!183160))))

(declare-fun bs!972840 () Bool)

(assert (= bs!972840 (and b!4581137 b!4580257)))

(assert (=> bs!972840 (= (= (-!480 lt!1745232 key!3287) lt!1745576) (= lambda!183257 lambda!183142))))

(declare-fun bs!972841 () Bool)

(assert (= bs!972841 (and b!4581137 d!1434446)))

(assert (=> bs!972841 (= (= (-!480 lt!1745232 key!3287) lt!1745852) (= lambda!183257 lambda!183214))))

(declare-fun bs!972843 () Bool)

(assert (= bs!972843 (and b!4581137 b!4580536)))

(assert (=> bs!972843 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183257 lambda!183190))))

(declare-fun bs!972845 () Bool)

(assert (= bs!972845 (and b!4581137 b!4580306)))

(assert (=> bs!972845 (= (= (-!480 lt!1745232 key!3287) lt!1745232) (= lambda!183257 lambda!183157))))

(declare-fun bs!972846 () Bool)

(assert (= bs!972846 (and b!4581137 d!1434424)))

(assert (=> bs!972846 (= (= (-!480 lt!1745232 key!3287) lt!1745214) (= lambda!183257 lambda!183205))))

(assert (=> bs!972833 (= (= (-!480 lt!1745232 key!3287) lt!1745214) (= lambda!183257 lambda!183165))))

(declare-fun bs!972849 () Bool)

(assert (= bs!972849 (and b!4581137 b!4580574)))

(assert (=> bs!972849 (= (= (-!480 lt!1745232 key!3287) lt!1745787) (= lambda!183257 lambda!183202))))

(declare-fun bs!972851 () Bool)

(assert (= bs!972851 (and b!4581137 b!4580773)))

(assert (=> bs!972851 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183257 lambda!183230))))

(declare-fun bs!972854 () Bool)

(assert (= bs!972854 (and b!4581137 d!1434224)))

(assert (=> bs!972854 (= (= (-!480 lt!1745232 key!3287) lt!1745668) (= lambda!183257 lambda!183167))))

(declare-fun bs!972857 () Bool)

(assert (= bs!972857 (and b!4581137 b!4580955)))

(assert (=> bs!972857 (= (= (-!480 lt!1745232 key!3287) lt!1746040) (= lambda!183257 lambda!183244))))

(declare-fun bs!972859 () Bool)

(assert (= bs!972859 (and b!4581137 d!1434366)))

(assert (=> bs!972859 (= (= (-!480 lt!1745232 key!3287) lt!1745790) (= lambda!183257 lambda!183203))))

(declare-fun bs!972861 () Bool)

(assert (= bs!972861 (and b!4581137 d!1434060)))

(assert (=> bs!972861 (= (= (-!480 lt!1745232 key!3287) lt!1745579) (= lambda!183257 lambda!183143))))

(assert (=> bs!972836 (= (= (-!480 lt!1745232 key!3287) lt!1745232) (= lambda!183257 lambda!183158))))

(declare-fun bs!972864 () Bool)

(assert (= bs!972864 (and b!4581137 b!4579991)))

(assert (=> bs!972864 (not (= lambda!183257 lambda!183043))))

(declare-fun bs!972865 () Bool)

(assert (= bs!972865 (and b!4581137 b!4580535)))

(assert (=> bs!972865 (= (= (-!480 lt!1745232 key!3287) lt!1745756) (= lambda!183257 lambda!183192))))

(declare-fun bs!972866 () Bool)

(assert (= bs!972866 (and b!4581137 b!4580369)))

(assert (=> bs!972866 (= (= (-!480 lt!1745232 key!3287) lt!1745214) (= lambda!183257 lambda!183164))))

(declare-fun bs!972867 () Bool)

(assert (= bs!972867 (and b!4581137 b!4580575)))

(assert (=> bs!972867 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183257 lambda!183200))))

(declare-fun bs!972868 () Bool)

(assert (= bs!972868 (and b!4581137 d!1434556)))

(assert (=> bs!972868 (= (= (-!480 lt!1745232 key!3287) lt!1746043) (= lambda!183257 lambda!183245))))

(assert (=> bs!972865 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183257 lambda!183191))))

(assert (=> bs!972834 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183257 lambda!183231))))

(declare-fun bs!972869 () Bool)

(assert (= bs!972869 (and b!4581137 b!4580663)))

(assert (=> bs!972869 (= (= (-!480 lt!1745232 key!3287) lt!1745849) (= lambda!183257 lambda!183213))))

(declare-fun bs!972870 () Bool)

(assert (= bs!972870 (and b!4581137 b!4580956)))

(assert (=> bs!972870 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183257 lambda!183242))))

(assert (=> bs!972849 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183257 lambda!183201))))

(declare-fun bs!972871 () Bool)

(assert (= bs!972871 (and b!4581137 b!4580258)))

(assert (=> bs!972871 (= (= (-!480 lt!1745232 key!3287) lt!1745218) (= lambda!183257 lambda!183140))))

(declare-fun bs!972872 () Bool)

(assert (= bs!972872 (and b!4581137 d!1434486)))

(assert (=> bs!972872 (= (= (-!480 lt!1745232 key!3287) lt!1745916) (= lambda!183257 lambda!183233))))

(assert (=> bs!972840 (= (= (-!480 lt!1745232 key!3287) lt!1745218) (= lambda!183257 lambda!183141))))

(declare-fun bs!972873 () Bool)

(assert (= bs!972873 (and b!4581137 d!1434448)))

(assert (=> bs!972873 (= (= (-!480 lt!1745232 key!3287) lt!1745218) (= lambda!183257 lambda!183215))))

(assert (=> bs!972869 (= (= (-!480 lt!1745232 key!3287) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183257 lambda!183212))))

(declare-fun bs!972874 () Bool)

(assert (= bs!972874 (and b!4581137 d!1434344)))

(assert (=> bs!972874 (= (= (-!480 lt!1745232 key!3287) lt!1745232) (= lambda!183257 lambda!183199))))

(declare-fun bs!972875 () Bool)

(assert (= bs!972875 (and b!4581137 d!1434256)))

(assert (=> bs!972875 (not (= lambda!183257 lambda!183178))))

(declare-fun bs!972876 () Bool)

(assert (= bs!972876 (and b!4581137 d!1434442)))

(assert (=> bs!972876 (= (= (-!480 lt!1745232 key!3287) lt!1745627) (= lambda!183257 lambda!183210))))

(assert (=> bs!972857 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183257 lambda!183243))))

(declare-fun bs!972877 () Bool)

(assert (= bs!972877 (and b!4581137 d!1434500)))

(assert (=> bs!972877 (not (= lambda!183257 lambda!183235))))

(assert (=> b!4581137 true))

(declare-fun bs!972878 () Bool)

(declare-fun b!4581136 () Bool)

(assert (= bs!972878 (and b!4581136 b!4580368)))

(declare-fun lambda!183259 () Int)

(assert (=> bs!972878 (= (= (-!480 lt!1745232 key!3287) lt!1745665) (= lambda!183259 lambda!183166))))

(declare-fun bs!972879 () Bool)

(assert (= bs!972879 (and b!4581136 b!4580772)))

(assert (=> bs!972879 (= (= (-!480 lt!1745232 key!3287) lt!1745913) (= lambda!183259 lambda!183232))))

(declare-fun bs!972880 () Bool)

(assert (= bs!972880 (and b!4581136 b!4580664)))

(assert (=> bs!972880 (= (= (-!480 lt!1745232 key!3287) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183259 lambda!183211))))

(declare-fun bs!972881 () Bool)

(assert (= bs!972881 (and b!4581136 b!4580305)))

(assert (=> bs!972881 (= (= (-!480 lt!1745232 key!3287) lt!1745627) (= lambda!183259 lambda!183159))))

(declare-fun bs!972882 () Bool)

(assert (= bs!972882 (and b!4581136 d!1434338)))

(assert (=> bs!972882 (= (= (-!480 lt!1745232 key!3287) lt!1745759) (= lambda!183259 lambda!183193))))

(declare-fun bs!972883 () Bool)

(assert (= bs!972883 (and b!4581136 b!4581137)))

(assert (=> bs!972883 (= lambda!183259 lambda!183257)))

(declare-fun bs!972884 () Bool)

(assert (= bs!972884 (and b!4581136 d!1434184)))

(assert (=> bs!972884 (= (= (-!480 lt!1745232 key!3287) lt!1745630) (= lambda!183259 lambda!183160))))

(declare-fun bs!972885 () Bool)

(assert (= bs!972885 (and b!4581136 b!4580257)))

(assert (=> bs!972885 (= (= (-!480 lt!1745232 key!3287) lt!1745576) (= lambda!183259 lambda!183142))))

(declare-fun bs!972886 () Bool)

(assert (= bs!972886 (and b!4581136 d!1434446)))

(assert (=> bs!972886 (= (= (-!480 lt!1745232 key!3287) lt!1745852) (= lambda!183259 lambda!183214))))

(declare-fun bs!972887 () Bool)

(assert (= bs!972887 (and b!4581136 b!4580536)))

(assert (=> bs!972887 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183259 lambda!183190))))

(declare-fun bs!972888 () Bool)

(assert (= bs!972888 (and b!4581136 b!4580306)))

(assert (=> bs!972888 (= (= (-!480 lt!1745232 key!3287) lt!1745232) (= lambda!183259 lambda!183157))))

(declare-fun bs!972889 () Bool)

(assert (= bs!972889 (and b!4581136 d!1434424)))

(assert (=> bs!972889 (= (= (-!480 lt!1745232 key!3287) lt!1745214) (= lambda!183259 lambda!183205))))

(assert (=> bs!972878 (= (= (-!480 lt!1745232 key!3287) lt!1745214) (= lambda!183259 lambda!183165))))

(declare-fun bs!972890 () Bool)

(assert (= bs!972890 (and b!4581136 b!4580574)))

(assert (=> bs!972890 (= (= (-!480 lt!1745232 key!3287) lt!1745787) (= lambda!183259 lambda!183202))))

(declare-fun bs!972891 () Bool)

(assert (= bs!972891 (and b!4581136 b!4580773)))

(assert (=> bs!972891 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183259 lambda!183230))))

(declare-fun bs!972892 () Bool)

(assert (= bs!972892 (and b!4581136 d!1434224)))

(assert (=> bs!972892 (= (= (-!480 lt!1745232 key!3287) lt!1745668) (= lambda!183259 lambda!183167))))

(declare-fun bs!972893 () Bool)

(assert (= bs!972893 (and b!4581136 b!4580955)))

(assert (=> bs!972893 (= (= (-!480 lt!1745232 key!3287) lt!1746040) (= lambda!183259 lambda!183244))))

(declare-fun bs!972894 () Bool)

(assert (= bs!972894 (and b!4581136 d!1434366)))

(assert (=> bs!972894 (= (= (-!480 lt!1745232 key!3287) lt!1745790) (= lambda!183259 lambda!183203))))

(declare-fun bs!972895 () Bool)

(assert (= bs!972895 (and b!4581136 d!1434060)))

(assert (=> bs!972895 (= (= (-!480 lt!1745232 key!3287) lt!1745579) (= lambda!183259 lambda!183143))))

(assert (=> bs!972881 (= (= (-!480 lt!1745232 key!3287) lt!1745232) (= lambda!183259 lambda!183158))))

(declare-fun bs!972896 () Bool)

(assert (= bs!972896 (and b!4581136 b!4579991)))

(assert (=> bs!972896 (not (= lambda!183259 lambda!183043))))

(declare-fun bs!972897 () Bool)

(assert (= bs!972897 (and b!4581136 b!4580535)))

(assert (=> bs!972897 (= (= (-!480 lt!1745232 key!3287) lt!1745756) (= lambda!183259 lambda!183192))))

(declare-fun bs!972898 () Bool)

(assert (= bs!972898 (and b!4581136 b!4580369)))

(assert (=> bs!972898 (= (= (-!480 lt!1745232 key!3287) lt!1745214) (= lambda!183259 lambda!183164))))

(declare-fun bs!972899 () Bool)

(assert (= bs!972899 (and b!4581136 b!4580575)))

(assert (=> bs!972899 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183259 lambda!183200))))

(declare-fun bs!972900 () Bool)

(assert (= bs!972900 (and b!4581136 d!1434556)))

(assert (=> bs!972900 (= (= (-!480 lt!1745232 key!3287) lt!1746043) (= lambda!183259 lambda!183245))))

(assert (=> bs!972897 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183259 lambda!183191))))

(assert (=> bs!972879 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183259 lambda!183231))))

(declare-fun bs!972901 () Bool)

(assert (= bs!972901 (and b!4581136 b!4580663)))

(assert (=> bs!972901 (= (= (-!480 lt!1745232 key!3287) lt!1745849) (= lambda!183259 lambda!183213))))

(declare-fun bs!972902 () Bool)

(assert (= bs!972902 (and b!4581136 b!4580956)))

(assert (=> bs!972902 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183259 lambda!183242))))

(assert (=> bs!972890 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183259 lambda!183201))))

(declare-fun bs!972903 () Bool)

(assert (= bs!972903 (and b!4581136 b!4580258)))

(assert (=> bs!972903 (= (= (-!480 lt!1745232 key!3287) lt!1745218) (= lambda!183259 lambda!183140))))

(declare-fun bs!972904 () Bool)

(assert (= bs!972904 (and b!4581136 d!1434486)))

(assert (=> bs!972904 (= (= (-!480 lt!1745232 key!3287) lt!1745916) (= lambda!183259 lambda!183233))))

(assert (=> bs!972885 (= (= (-!480 lt!1745232 key!3287) lt!1745218) (= lambda!183259 lambda!183141))))

(declare-fun bs!972905 () Bool)

(assert (= bs!972905 (and b!4581136 d!1434448)))

(assert (=> bs!972905 (= (= (-!480 lt!1745232 key!3287) lt!1745218) (= lambda!183259 lambda!183215))))

(assert (=> bs!972901 (= (= (-!480 lt!1745232 key!3287) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183259 lambda!183212))))

(declare-fun bs!972906 () Bool)

(assert (= bs!972906 (and b!4581136 d!1434344)))

(assert (=> bs!972906 (= (= (-!480 lt!1745232 key!3287) lt!1745232) (= lambda!183259 lambda!183199))))

(declare-fun bs!972907 () Bool)

(assert (= bs!972907 (and b!4581136 d!1434256)))

(assert (=> bs!972907 (not (= lambda!183259 lambda!183178))))

(declare-fun bs!972908 () Bool)

(assert (= bs!972908 (and b!4581136 d!1434442)))

(assert (=> bs!972908 (= (= (-!480 lt!1745232 key!3287) lt!1745627) (= lambda!183259 lambda!183210))))

(assert (=> bs!972893 (= (= (-!480 lt!1745232 key!3287) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183259 lambda!183243))))

(declare-fun bs!972909 () Bool)

(assert (= bs!972909 (and b!4581136 d!1434500)))

(assert (=> bs!972909 (not (= lambda!183259 lambda!183235))))

(assert (=> b!4581136 true))

(declare-fun lt!1746150 () ListMap!3813)

(declare-fun lambda!183260 () Int)

(assert (=> bs!972878 (= (= lt!1746150 lt!1745665) (= lambda!183260 lambda!183166))))

(assert (=> bs!972879 (= (= lt!1746150 lt!1745913) (= lambda!183260 lambda!183232))))

(assert (=> bs!972880 (= (= lt!1746150 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183260 lambda!183211))))

(assert (=> bs!972881 (= (= lt!1746150 lt!1745627) (= lambda!183260 lambda!183159))))

(assert (=> bs!972882 (= (= lt!1746150 lt!1745759) (= lambda!183260 lambda!183193))))

(assert (=> bs!972883 (= (= lt!1746150 (-!480 lt!1745232 key!3287)) (= lambda!183260 lambda!183257))))

(assert (=> bs!972884 (= (= lt!1746150 lt!1745630) (= lambda!183260 lambda!183160))))

(assert (=> bs!972885 (= (= lt!1746150 lt!1745576) (= lambda!183260 lambda!183142))))

(assert (=> bs!972886 (= (= lt!1746150 lt!1745852) (= lambda!183260 lambda!183214))))

(assert (=> bs!972887 (= (= lt!1746150 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183260 lambda!183190))))

(assert (=> bs!972888 (= (= lt!1746150 lt!1745232) (= lambda!183260 lambda!183157))))

(assert (=> bs!972889 (= (= lt!1746150 lt!1745214) (= lambda!183260 lambda!183205))))

(assert (=> bs!972878 (= (= lt!1746150 lt!1745214) (= lambda!183260 lambda!183165))))

(assert (=> b!4581136 (= (= lt!1746150 (-!480 lt!1745232 key!3287)) (= lambda!183260 lambda!183259))))

(assert (=> bs!972890 (= (= lt!1746150 lt!1745787) (= lambda!183260 lambda!183202))))

(assert (=> bs!972891 (= (= lt!1746150 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183260 lambda!183230))))

(assert (=> bs!972892 (= (= lt!1746150 lt!1745668) (= lambda!183260 lambda!183167))))

(assert (=> bs!972893 (= (= lt!1746150 lt!1746040) (= lambda!183260 lambda!183244))))

(assert (=> bs!972894 (= (= lt!1746150 lt!1745790) (= lambda!183260 lambda!183203))))

(assert (=> bs!972895 (= (= lt!1746150 lt!1745579) (= lambda!183260 lambda!183143))))

(assert (=> bs!972881 (= (= lt!1746150 lt!1745232) (= lambda!183260 lambda!183158))))

(assert (=> bs!972896 (not (= lambda!183260 lambda!183043))))

(assert (=> bs!972897 (= (= lt!1746150 lt!1745756) (= lambda!183260 lambda!183192))))

(assert (=> bs!972898 (= (= lt!1746150 lt!1745214) (= lambda!183260 lambda!183164))))

(assert (=> bs!972899 (= (= lt!1746150 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183260 lambda!183200))))

(assert (=> bs!972900 (= (= lt!1746150 lt!1746043) (= lambda!183260 lambda!183245))))

(assert (=> bs!972897 (= (= lt!1746150 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183260 lambda!183191))))

(assert (=> bs!972879 (= (= lt!1746150 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183260 lambda!183231))))

(assert (=> bs!972901 (= (= lt!1746150 lt!1745849) (= lambda!183260 lambda!183213))))

(assert (=> bs!972902 (= (= lt!1746150 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183260 lambda!183242))))

(assert (=> bs!972890 (= (= lt!1746150 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183260 lambda!183201))))

(assert (=> bs!972903 (= (= lt!1746150 lt!1745218) (= lambda!183260 lambda!183140))))

(assert (=> bs!972904 (= (= lt!1746150 lt!1745916) (= lambda!183260 lambda!183233))))

(assert (=> bs!972885 (= (= lt!1746150 lt!1745218) (= lambda!183260 lambda!183141))))

(assert (=> bs!972905 (= (= lt!1746150 lt!1745218) (= lambda!183260 lambda!183215))))

(assert (=> bs!972901 (= (= lt!1746150 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183260 lambda!183212))))

(assert (=> bs!972906 (= (= lt!1746150 lt!1745232) (= lambda!183260 lambda!183199))))

(assert (=> bs!972907 (not (= lambda!183260 lambda!183178))))

(assert (=> bs!972908 (= (= lt!1746150 lt!1745627) (= lambda!183260 lambda!183210))))

(assert (=> bs!972893 (= (= lt!1746150 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183260 lambda!183243))))

(assert (=> bs!972909 (not (= lambda!183260 lambda!183235))))

(assert (=> b!4581136 true))

(declare-fun bs!972918 () Bool)

(declare-fun d!1434648 () Bool)

(assert (= bs!972918 (and d!1434648 b!4580368)))

(declare-fun lambda!183265 () Int)

(declare-fun lt!1746153 () ListMap!3813)

(assert (=> bs!972918 (= (= lt!1746153 lt!1745665) (= lambda!183265 lambda!183166))))

(declare-fun bs!972919 () Bool)

(assert (= bs!972919 (and d!1434648 b!4580772)))

(assert (=> bs!972919 (= (= lt!1746153 lt!1745913) (= lambda!183265 lambda!183232))))

(declare-fun bs!972920 () Bool)

(assert (= bs!972920 (and d!1434648 b!4580664)))

(assert (=> bs!972920 (= (= lt!1746153 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183265 lambda!183211))))

(declare-fun bs!972921 () Bool)

(assert (= bs!972921 (and d!1434648 b!4580305)))

(assert (=> bs!972921 (= (= lt!1746153 lt!1745627) (= lambda!183265 lambda!183159))))

(declare-fun bs!972922 () Bool)

(assert (= bs!972922 (and d!1434648 d!1434338)))

(assert (=> bs!972922 (= (= lt!1746153 lt!1745759) (= lambda!183265 lambda!183193))))

(declare-fun bs!972923 () Bool)

(assert (= bs!972923 (and d!1434648 b!4581137)))

(assert (=> bs!972923 (= (= lt!1746153 (-!480 lt!1745232 key!3287)) (= lambda!183265 lambda!183257))))

(declare-fun bs!972924 () Bool)

(assert (= bs!972924 (and d!1434648 d!1434184)))

(assert (=> bs!972924 (= (= lt!1746153 lt!1745630) (= lambda!183265 lambda!183160))))

(declare-fun bs!972925 () Bool)

(assert (= bs!972925 (and d!1434648 b!4580257)))

(assert (=> bs!972925 (= (= lt!1746153 lt!1745576) (= lambda!183265 lambda!183142))))

(declare-fun bs!972926 () Bool)

(assert (= bs!972926 (and d!1434648 d!1434446)))

(assert (=> bs!972926 (= (= lt!1746153 lt!1745852) (= lambda!183265 lambda!183214))))

(declare-fun bs!972927 () Bool)

(assert (= bs!972927 (and d!1434648 b!4580536)))

(assert (=> bs!972927 (= (= lt!1746153 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183265 lambda!183190))))

(declare-fun bs!972928 () Bool)

(assert (= bs!972928 (and d!1434648 b!4580306)))

(assert (=> bs!972928 (= (= lt!1746153 lt!1745232) (= lambda!183265 lambda!183157))))

(declare-fun bs!972930 () Bool)

(assert (= bs!972930 (and d!1434648 d!1434424)))

(assert (=> bs!972930 (= (= lt!1746153 lt!1745214) (= lambda!183265 lambda!183205))))

(assert (=> bs!972918 (= (= lt!1746153 lt!1745214) (= lambda!183265 lambda!183165))))

(declare-fun bs!972931 () Bool)

(assert (= bs!972931 (and d!1434648 b!4581136)))

(assert (=> bs!972931 (= (= lt!1746153 lt!1746150) (= lambda!183265 lambda!183260))))

(assert (=> bs!972931 (= (= lt!1746153 (-!480 lt!1745232 key!3287)) (= lambda!183265 lambda!183259))))

(declare-fun bs!972932 () Bool)

(assert (= bs!972932 (and d!1434648 b!4580574)))

(assert (=> bs!972932 (= (= lt!1746153 lt!1745787) (= lambda!183265 lambda!183202))))

(declare-fun bs!972933 () Bool)

(assert (= bs!972933 (and d!1434648 b!4580773)))

(assert (=> bs!972933 (= (= lt!1746153 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183265 lambda!183230))))

(declare-fun bs!972934 () Bool)

(assert (= bs!972934 (and d!1434648 d!1434224)))

(assert (=> bs!972934 (= (= lt!1746153 lt!1745668) (= lambda!183265 lambda!183167))))

(declare-fun bs!972935 () Bool)

(assert (= bs!972935 (and d!1434648 b!4580955)))

(assert (=> bs!972935 (= (= lt!1746153 lt!1746040) (= lambda!183265 lambda!183244))))

(declare-fun bs!972936 () Bool)

(assert (= bs!972936 (and d!1434648 d!1434366)))

(assert (=> bs!972936 (= (= lt!1746153 lt!1745790) (= lambda!183265 lambda!183203))))

(declare-fun bs!972937 () Bool)

(assert (= bs!972937 (and d!1434648 d!1434060)))

(assert (=> bs!972937 (= (= lt!1746153 lt!1745579) (= lambda!183265 lambda!183143))))

(assert (=> bs!972921 (= (= lt!1746153 lt!1745232) (= lambda!183265 lambda!183158))))

(declare-fun bs!972938 () Bool)

(assert (= bs!972938 (and d!1434648 b!4579991)))

(assert (=> bs!972938 (not (= lambda!183265 lambda!183043))))

(declare-fun bs!972939 () Bool)

(assert (= bs!972939 (and d!1434648 b!4580535)))

(assert (=> bs!972939 (= (= lt!1746153 lt!1745756) (= lambda!183265 lambda!183192))))

(declare-fun bs!972940 () Bool)

(assert (= bs!972940 (and d!1434648 b!4580369)))

(assert (=> bs!972940 (= (= lt!1746153 lt!1745214) (= lambda!183265 lambda!183164))))

(declare-fun bs!972941 () Bool)

(assert (= bs!972941 (and d!1434648 b!4580575)))

(assert (=> bs!972941 (= (= lt!1746153 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183265 lambda!183200))))

(declare-fun bs!972942 () Bool)

(assert (= bs!972942 (and d!1434648 d!1434556)))

(assert (=> bs!972942 (= (= lt!1746153 lt!1746043) (= lambda!183265 lambda!183245))))

(assert (=> bs!972939 (= (= lt!1746153 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183265 lambda!183191))))

(assert (=> bs!972919 (= (= lt!1746153 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183265 lambda!183231))))

(declare-fun bs!972943 () Bool)

(assert (= bs!972943 (and d!1434648 b!4580663)))

(assert (=> bs!972943 (= (= lt!1746153 lt!1745849) (= lambda!183265 lambda!183213))))

(declare-fun bs!972944 () Bool)

(assert (= bs!972944 (and d!1434648 b!4580956)))

(assert (=> bs!972944 (= (= lt!1746153 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183265 lambda!183242))))

(assert (=> bs!972932 (= (= lt!1746153 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183265 lambda!183201))))

(declare-fun bs!972945 () Bool)

(assert (= bs!972945 (and d!1434648 b!4580258)))

(assert (=> bs!972945 (= (= lt!1746153 lt!1745218) (= lambda!183265 lambda!183140))))

(declare-fun bs!972946 () Bool)

(assert (= bs!972946 (and d!1434648 d!1434486)))

(assert (=> bs!972946 (= (= lt!1746153 lt!1745916) (= lambda!183265 lambda!183233))))

(assert (=> bs!972925 (= (= lt!1746153 lt!1745218) (= lambda!183265 lambda!183141))))

(declare-fun bs!972947 () Bool)

(assert (= bs!972947 (and d!1434648 d!1434448)))

(assert (=> bs!972947 (= (= lt!1746153 lt!1745218) (= lambda!183265 lambda!183215))))

(assert (=> bs!972943 (= (= lt!1746153 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183265 lambda!183212))))

(declare-fun bs!972948 () Bool)

(assert (= bs!972948 (and d!1434648 d!1434344)))

(assert (=> bs!972948 (= (= lt!1746153 lt!1745232) (= lambda!183265 lambda!183199))))

(declare-fun bs!972949 () Bool)

(assert (= bs!972949 (and d!1434648 d!1434256)))

(assert (=> bs!972949 (not (= lambda!183265 lambda!183178))))

(declare-fun bs!972950 () Bool)

(assert (= bs!972950 (and d!1434648 d!1434442)))

(assert (=> bs!972950 (= (= lt!1746153 lt!1745627) (= lambda!183265 lambda!183210))))

(assert (=> bs!972935 (= (= lt!1746153 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183265 lambda!183243))))

(declare-fun bs!972951 () Bool)

(assert (= bs!972951 (and d!1434648 d!1434500)))

(assert (=> bs!972951 (not (= lambda!183265 lambda!183235))))

(assert (=> d!1434648 true))

(declare-fun b!4581134 () Bool)

(declare-fun e!2856753 () Bool)

(assert (=> b!4581134 (= e!2856753 (invariantList!1097 (toList!4552 lt!1746153)))))

(declare-fun b!4581135 () Bool)

(declare-fun res!1914049 () Bool)

(assert (=> b!4581135 (=> (not res!1914049) (not e!2856753))))

(assert (=> b!4581135 (= res!1914049 (forall!10502 (toList!4552 (-!480 lt!1745232 key!3287)) lambda!183265))))

(declare-fun bm!319799 () Bool)

(declare-fun c!784124 () Bool)

(declare-fun call!319806 () Bool)

(assert (=> bm!319799 (= call!319806 (forall!10502 (ite c!784124 (toList!4552 (-!480 lt!1745232 key!3287)) (_2!29056 lt!1745216)) (ite c!784124 lambda!183257 lambda!183260)))))

(declare-fun e!2856752 () ListMap!3813)

(assert (=> b!4581136 (= e!2856752 lt!1746150)))

(declare-fun lt!1746148 () ListMap!3813)

(assert (=> b!4581136 (= lt!1746148 (+!1710 (-!480 lt!1745232 key!3287) (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4581136 (= lt!1746150 (addToMapMapFromBucket!785 (t!358064 (_2!29056 lt!1745216)) (+!1710 (-!480 lt!1745232 key!3287) (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746152 () Unit!105525)

(declare-fun call!319805 () Unit!105525)

(assert (=> b!4581136 (= lt!1746152 call!319805)))

(assert (=> b!4581136 (forall!10502 (toList!4552 (-!480 lt!1745232 key!3287)) lambda!183259)))

(declare-fun lt!1746167 () Unit!105525)

(assert (=> b!4581136 (= lt!1746167 lt!1746152)))

(assert (=> b!4581136 (forall!10502 (toList!4552 lt!1746148) lambda!183260)))

(declare-fun lt!1746162 () Unit!105525)

(declare-fun Unit!105757 () Unit!105525)

(assert (=> b!4581136 (= lt!1746162 Unit!105757)))

(assert (=> b!4581136 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183260)))

(declare-fun lt!1746160 () Unit!105525)

(declare-fun Unit!105758 () Unit!105525)

(assert (=> b!4581136 (= lt!1746160 Unit!105758)))

(declare-fun lt!1746157 () Unit!105525)

(declare-fun Unit!105759 () Unit!105525)

(assert (=> b!4581136 (= lt!1746157 Unit!105759)))

(declare-fun lt!1746164 () Unit!105525)

(assert (=> b!4581136 (= lt!1746164 (forallContained!2765 (toList!4552 lt!1746148) lambda!183260 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4581136 (contains!13846 lt!1746148 (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1746154 () Unit!105525)

(declare-fun Unit!105760 () Unit!105525)

(assert (=> b!4581136 (= lt!1746154 Unit!105760)))

(assert (=> b!4581136 (contains!13846 lt!1746150 (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1746159 () Unit!105525)

(declare-fun Unit!105761 () Unit!105525)

(assert (=> b!4581136 (= lt!1746159 Unit!105761)))

(assert (=> b!4581136 call!319806))

(declare-fun lt!1746156 () Unit!105525)

(declare-fun Unit!105762 () Unit!105525)

(assert (=> b!4581136 (= lt!1746156 Unit!105762)))

(declare-fun call!319804 () Bool)

(assert (=> b!4581136 call!319804))

(declare-fun lt!1746158 () Unit!105525)

(declare-fun Unit!105763 () Unit!105525)

(assert (=> b!4581136 (= lt!1746158 Unit!105763)))

(declare-fun lt!1746161 () Unit!105525)

(declare-fun Unit!105764 () Unit!105525)

(assert (=> b!4581136 (= lt!1746161 Unit!105764)))

(declare-fun lt!1746165 () Unit!105525)

(assert (=> b!4581136 (= lt!1746165 (addForallContainsKeyThenBeforeAdding!414 (-!480 lt!1745232 key!3287) lt!1746150 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4581136 (forall!10502 (toList!4552 (-!480 lt!1745232 key!3287)) lambda!183260)))

(declare-fun lt!1746163 () Unit!105525)

(assert (=> b!4581136 (= lt!1746163 lt!1746165)))

(assert (=> b!4581136 (forall!10502 (toList!4552 (-!480 lt!1745232 key!3287)) lambda!183260)))

(declare-fun lt!1746151 () Unit!105525)

(declare-fun Unit!105765 () Unit!105525)

(assert (=> b!4581136 (= lt!1746151 Unit!105765)))

(declare-fun res!1914050 () Bool)

(assert (=> b!4581136 (= res!1914050 (forall!10502 (_2!29056 lt!1745216) lambda!183260))))

(declare-fun e!2856751 () Bool)

(assert (=> b!4581136 (=> (not res!1914050) (not e!2856751))))

(assert (=> b!4581136 e!2856751))

(declare-fun lt!1746155 () Unit!105525)

(declare-fun Unit!105766 () Unit!105525)

(assert (=> b!4581136 (= lt!1746155 Unit!105766)))

(assert (=> b!4581137 (= e!2856752 (-!480 lt!1745232 key!3287))))

(declare-fun lt!1746166 () Unit!105525)

(assert (=> b!4581137 (= lt!1746166 call!319805)))

(assert (=> b!4581137 call!319806))

(declare-fun lt!1746147 () Unit!105525)

(assert (=> b!4581137 (= lt!1746147 lt!1746166)))

(assert (=> b!4581137 call!319804))

(declare-fun lt!1746149 () Unit!105525)

(declare-fun Unit!105767 () Unit!105525)

(assert (=> b!4581137 (= lt!1746149 Unit!105767)))

(declare-fun bm!319800 () Bool)

(assert (=> bm!319800 (= call!319804 (forall!10502 (ite c!784124 (toList!4552 (-!480 lt!1745232 key!3287)) (toList!4552 lt!1746148)) (ite c!784124 lambda!183257 lambda!183260)))))

(assert (=> d!1434648 e!2856753))

(declare-fun res!1914051 () Bool)

(assert (=> d!1434648 (=> (not res!1914051) (not e!2856753))))

(assert (=> d!1434648 (= res!1914051 (forall!10502 (_2!29056 lt!1745216) lambda!183265))))

(assert (=> d!1434648 (= lt!1746153 e!2856752)))

(assert (=> d!1434648 (= c!784124 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434648 (noDuplicateKeys!1272 (_2!29056 lt!1745216))))

(assert (=> d!1434648 (= (addToMapMapFromBucket!785 (_2!29056 lt!1745216) (-!480 lt!1745232 key!3287)) lt!1746153)))

(declare-fun bm!319801 () Bool)

(assert (=> bm!319801 (= call!319805 (lemmaContainsAllItsOwnKeys!414 (-!480 lt!1745232 key!3287)))))

(declare-fun b!4581138 () Bool)

(assert (=> b!4581138 (= e!2856751 (forall!10502 (toList!4552 (-!480 lt!1745232 key!3287)) lambda!183260))))

(assert (= (and d!1434648 c!784124) b!4581137))

(assert (= (and d!1434648 (not c!784124)) b!4581136))

(assert (= (and b!4581136 res!1914050) b!4581138))

(assert (= (or b!4581137 b!4581136) bm!319800))

(assert (= (or b!4581137 b!4581136) bm!319799))

(assert (= (or b!4581137 b!4581136) bm!319801))

(assert (= (and d!1434648 res!1914051) b!4581135))

(assert (= (and b!4581135 res!1914049) b!4581134))

(declare-fun m!5392083 () Bool)

(assert (=> b!4581138 m!5392083))

(declare-fun m!5392087 () Bool)

(assert (=> d!1434648 m!5392087))

(assert (=> d!1434648 m!5389765))

(declare-fun m!5392089 () Bool)

(assert (=> bm!319799 m!5392089))

(assert (=> bm!319801 m!5389781))

(declare-fun m!5392091 () Bool)

(assert (=> bm!319801 m!5392091))

(declare-fun m!5392093 () Bool)

(assert (=> b!4581136 m!5392093))

(declare-fun m!5392095 () Bool)

(assert (=> b!4581136 m!5392095))

(declare-fun m!5392097 () Bool)

(assert (=> b!4581136 m!5392097))

(assert (=> b!4581136 m!5392083))

(declare-fun m!5392099 () Bool)

(assert (=> b!4581136 m!5392099))

(declare-fun m!5392101 () Bool)

(assert (=> b!4581136 m!5392101))

(declare-fun m!5392103 () Bool)

(assert (=> b!4581136 m!5392103))

(declare-fun m!5392105 () Bool)

(assert (=> b!4581136 m!5392105))

(assert (=> b!4581136 m!5389781))

(assert (=> b!4581136 m!5392093))

(declare-fun m!5392107 () Bool)

(assert (=> b!4581136 m!5392107))

(declare-fun m!5392109 () Bool)

(assert (=> b!4581136 m!5392109))

(assert (=> b!4581136 m!5392083))

(assert (=> b!4581136 m!5389781))

(declare-fun m!5392111 () Bool)

(assert (=> b!4581136 m!5392111))

(declare-fun m!5392113 () Bool)

(assert (=> b!4581134 m!5392113))

(declare-fun m!5392115 () Bool)

(assert (=> b!4581135 m!5392115))

(declare-fun m!5392117 () Bool)

(assert (=> bm!319800 m!5392117))

(assert (=> d!1434186 d!1434648))

(declare-fun b!4581188 () Bool)

(declare-fun e!2856789 () Unit!105525)

(declare-fun Unit!105768 () Unit!105525)

(assert (=> b!4581188 (= e!2856789 Unit!105768)))

(declare-fun b!4581189 () Bool)

(declare-fun e!2856784 () Bool)

(declare-fun e!2856787 () Bool)

(assert (=> b!4581189 (= e!2856784 e!2856787)))

(declare-fun res!1914072 () Bool)

(assert (=> b!4581189 (=> (not res!1914072) (not e!2856787))))

(assert (=> b!4581189 (= res!1914072 (isDefined!8597 (getValueByKey!1254 (toList!4552 (extractMap!1328 (toList!4551 lt!1745235))) key!3287)))))

(declare-fun b!4581190 () Bool)

(declare-fun e!2856786 () Unit!105525)

(assert (=> b!4581190 (= e!2856786 e!2856789)))

(declare-fun c!784141 () Bool)

(declare-fun call!319807 () Bool)

(assert (=> b!4581190 (= c!784141 call!319807)))

(declare-fun b!4581191 () Bool)

(assert (=> b!4581191 (= e!2856787 (contains!13849 (keys!17800 (extractMap!1328 (toList!4551 lt!1745235))) key!3287))))

(declare-fun b!4581192 () Bool)

(declare-fun e!2856785 () List!51077)

(assert (=> b!4581192 (= e!2856785 (keys!17800 (extractMap!1328 (toList!4551 lt!1745235))))))

(declare-fun b!4581193 () Bool)

(declare-fun lt!1746180 () Unit!105525)

(assert (=> b!4581193 (= e!2856786 lt!1746180)))

(declare-fun lt!1746178 () Unit!105525)

(assert (=> b!4581193 (= lt!1746178 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 (extractMap!1328 (toList!4551 lt!1745235))) key!3287))))

(assert (=> b!4581193 (isDefined!8597 (getValueByKey!1254 (toList!4552 (extractMap!1328 (toList!4551 lt!1745235))) key!3287))))

(declare-fun lt!1746183 () Unit!105525)

(assert (=> b!4581193 (= lt!1746183 lt!1746178)))

(assert (=> b!4581193 (= lt!1746180 (lemmaInListThenGetKeysListContains!540 (toList!4552 (extractMap!1328 (toList!4551 lt!1745235))) key!3287))))

(assert (=> b!4581193 call!319807))

(declare-fun bm!319802 () Bool)

(assert (=> bm!319802 (= call!319807 (contains!13849 e!2856785 key!3287))))

(declare-fun c!784140 () Bool)

(declare-fun c!784142 () Bool)

(assert (=> bm!319802 (= c!784140 c!784142)))

(declare-fun d!1434694 () Bool)

(assert (=> d!1434694 e!2856784))

(declare-fun res!1914073 () Bool)

(assert (=> d!1434694 (=> res!1914073 e!2856784)))

(declare-fun e!2856788 () Bool)

(assert (=> d!1434694 (= res!1914073 e!2856788)))

(declare-fun res!1914071 () Bool)

(assert (=> d!1434694 (=> (not res!1914071) (not e!2856788))))

(declare-fun lt!1746179 () Bool)

(assert (=> d!1434694 (= res!1914071 (not lt!1746179))))

(declare-fun lt!1746184 () Bool)

(assert (=> d!1434694 (= lt!1746179 lt!1746184)))

(declare-fun lt!1746177 () Unit!105525)

(assert (=> d!1434694 (= lt!1746177 e!2856786)))

(assert (=> d!1434694 (= c!784142 lt!1746184)))

(assert (=> d!1434694 (= lt!1746184 (containsKey!2057 (toList!4552 (extractMap!1328 (toList!4551 lt!1745235))) key!3287))))

(assert (=> d!1434694 (= (contains!13846 (extractMap!1328 (toList!4551 lt!1745235)) key!3287) lt!1746179)))

(declare-fun b!4581194 () Bool)

(assert (=> b!4581194 (= e!2856785 (getKeysList!544 (toList!4552 (extractMap!1328 (toList!4551 lt!1745235)))))))

(declare-fun b!4581195 () Bool)

(assert (=> b!4581195 false))

(declare-fun lt!1746181 () Unit!105525)

(declare-fun lt!1746182 () Unit!105525)

(assert (=> b!4581195 (= lt!1746181 lt!1746182)))

(assert (=> b!4581195 (containsKey!2057 (toList!4552 (extractMap!1328 (toList!4551 lt!1745235))) key!3287)))

(assert (=> b!4581195 (= lt!1746182 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 (extractMap!1328 (toList!4551 lt!1745235))) key!3287))))

(declare-fun Unit!105771 () Unit!105525)

(assert (=> b!4581195 (= e!2856789 Unit!105771)))

(declare-fun b!4581196 () Bool)

(assert (=> b!4581196 (= e!2856788 (not (contains!13849 (keys!17800 (extractMap!1328 (toList!4551 lt!1745235))) key!3287)))))

(assert (= (and d!1434694 c!784142) b!4581193))

(assert (= (and d!1434694 (not c!784142)) b!4581190))

(assert (= (and b!4581190 c!784141) b!4581195))

(assert (= (and b!4581190 (not c!784141)) b!4581188))

(assert (= (or b!4581193 b!4581190) bm!319802))

(assert (= (and bm!319802 c!784140) b!4581194))

(assert (= (and bm!319802 (not c!784140)) b!4581192))

(assert (= (and d!1434694 res!1914071) b!4581196))

(assert (= (and d!1434694 (not res!1914073)) b!4581189))

(assert (= (and b!4581189 res!1914072) b!4581191))

(declare-fun m!5392119 () Bool)

(assert (=> b!4581195 m!5392119))

(declare-fun m!5392121 () Bool)

(assert (=> b!4581195 m!5392121))

(assert (=> b!4581196 m!5389755))

(declare-fun m!5392123 () Bool)

(assert (=> b!4581196 m!5392123))

(assert (=> b!4581196 m!5392123))

(declare-fun m!5392125 () Bool)

(assert (=> b!4581196 m!5392125))

(declare-fun m!5392127 () Bool)

(assert (=> b!4581189 m!5392127))

(assert (=> b!4581189 m!5392127))

(declare-fun m!5392129 () Bool)

(assert (=> b!4581189 m!5392129))

(declare-fun m!5392131 () Bool)

(assert (=> b!4581194 m!5392131))

(assert (=> b!4581192 m!5389755))

(assert (=> b!4581192 m!5392123))

(declare-fun m!5392133 () Bool)

(assert (=> b!4581193 m!5392133))

(assert (=> b!4581193 m!5392127))

(assert (=> b!4581193 m!5392127))

(assert (=> b!4581193 m!5392129))

(declare-fun m!5392135 () Bool)

(assert (=> b!4581193 m!5392135))

(assert (=> d!1434694 m!5392119))

(declare-fun m!5392137 () Bool)

(assert (=> bm!319802 m!5392137))

(assert (=> b!4581191 m!5389755))

(assert (=> b!4581191 m!5392123))

(assert (=> b!4581191 m!5392123))

(assert (=> b!4581191 m!5392125))

(assert (=> d!1434246 d!1434694))

(assert (=> d!1434246 d!1434244))

(declare-fun d!1434696 () Bool)

(assert (=> d!1434696 (contains!13846 (extractMap!1328 (toList!4551 lt!1745235)) key!3287)))

(assert (=> d!1434696 true))

(declare-fun _$34!793 () Unit!105525)

(assert (=> d!1434696 (= (choose!30529 lt!1745235 key!3287 hashF!1107) _$34!793)))

(declare-fun bs!972953 () Bool)

(assert (= bs!972953 d!1434696))

(assert (=> bs!972953 m!5389755))

(assert (=> bs!972953 m!5389755))

(assert (=> bs!972953 m!5390723))

(assert (=> d!1434246 d!1434696))

(declare-fun d!1434698 () Bool)

(declare-fun res!1914074 () Bool)

(declare-fun e!2856790 () Bool)

(assert (=> d!1434698 (=> res!1914074 e!2856790)))

(assert (=> d!1434698 (= res!1914074 ((_ is Nil!50951) (toList!4551 lt!1745235)))))

(assert (=> d!1434698 (= (forall!10500 (toList!4551 lt!1745235) lambda!183174) e!2856790)))

(declare-fun b!4581197 () Bool)

(declare-fun e!2856791 () Bool)

(assert (=> b!4581197 (= e!2856790 e!2856791)))

(declare-fun res!1914075 () Bool)

(assert (=> b!4581197 (=> (not res!1914075) (not e!2856791))))

(assert (=> b!4581197 (= res!1914075 (dynLambda!21335 lambda!183174 (h!56886 (toList!4551 lt!1745235))))))

(declare-fun b!4581198 () Bool)

(assert (=> b!4581198 (= e!2856791 (forall!10500 (t!358065 (toList!4551 lt!1745235)) lambda!183174))))

(assert (= (and d!1434698 (not res!1914074)) b!4581197))

(assert (= (and b!4581197 res!1914075) b!4581198))

(declare-fun b_lambda!166111 () Bool)

(assert (=> (not b_lambda!166111) (not b!4581197)))

(declare-fun m!5392139 () Bool)

(assert (=> b!4581197 m!5392139))

(declare-fun m!5392141 () Bool)

(assert (=> b!4581198 m!5392141))

(assert (=> d!1434246 d!1434698))

(declare-fun d!1434700 () Bool)

(assert (=> d!1434700 (= (invariantList!1097 (toList!4552 lt!1745630)) (noDuplicatedKeys!306 (toList!4552 lt!1745630)))))

(declare-fun bs!972954 () Bool)

(assert (= bs!972954 d!1434700))

(declare-fun m!5392143 () Bool)

(assert (=> bs!972954 m!5392143))

(assert (=> b!4580303 d!1434700))

(declare-fun b!4581199 () Bool)

(declare-fun e!2856797 () Unit!105525)

(declare-fun Unit!105774 () Unit!105525)

(assert (=> b!4581199 (= e!2856797 Unit!105774)))

(declare-fun b!4581200 () Bool)

(declare-fun e!2856792 () Bool)

(declare-fun e!2856795 () Bool)

(assert (=> b!4581200 (= e!2856792 e!2856795)))

(declare-fun res!1914077 () Bool)

(assert (=> b!4581200 (=> (not res!1914077) (not e!2856795))))

(assert (=> b!4581200 (= res!1914077 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745665) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4581201 () Bool)

(declare-fun e!2856794 () Unit!105525)

(assert (=> b!4581201 (= e!2856794 e!2856797)))

(declare-fun c!784144 () Bool)

(declare-fun call!319808 () Bool)

(assert (=> b!4581201 (= c!784144 call!319808)))

(declare-fun b!4581202 () Bool)

(assert (=> b!4581202 (= e!2856795 (contains!13849 (keys!17800 lt!1745665) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun b!4581203 () Bool)

(declare-fun e!2856793 () List!51077)

(assert (=> b!4581203 (= e!2856793 (keys!17800 lt!1745665))))

(declare-fun b!4581204 () Bool)

(declare-fun lt!1746188 () Unit!105525)

(assert (=> b!4581204 (= e!2856794 lt!1746188)))

(declare-fun lt!1746186 () Unit!105525)

(assert (=> b!4581204 (= lt!1746186 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745665) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4581204 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745665) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746191 () Unit!105525)

(assert (=> b!4581204 (= lt!1746191 lt!1746186)))

(assert (=> b!4581204 (= lt!1746188 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745665) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4581204 call!319808))

(declare-fun bm!319803 () Bool)

(assert (=> bm!319803 (= call!319808 (contains!13849 e!2856793 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun c!784143 () Bool)

(declare-fun c!784145 () Bool)

(assert (=> bm!319803 (= c!784143 c!784145)))

(declare-fun d!1434702 () Bool)

(assert (=> d!1434702 e!2856792))

(declare-fun res!1914078 () Bool)

(assert (=> d!1434702 (=> res!1914078 e!2856792)))

(declare-fun e!2856796 () Bool)

(assert (=> d!1434702 (= res!1914078 e!2856796)))

(declare-fun res!1914076 () Bool)

(assert (=> d!1434702 (=> (not res!1914076) (not e!2856796))))

(declare-fun lt!1746187 () Bool)

(assert (=> d!1434702 (= res!1914076 (not lt!1746187))))

(declare-fun lt!1746192 () Bool)

(assert (=> d!1434702 (= lt!1746187 lt!1746192)))

(declare-fun lt!1746185 () Unit!105525)

(assert (=> d!1434702 (= lt!1746185 e!2856794)))

(assert (=> d!1434702 (= c!784145 lt!1746192)))

(assert (=> d!1434702 (= lt!1746192 (containsKey!2057 (toList!4552 lt!1745665) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434702 (= (contains!13846 lt!1745665 (_1!29055 (h!56885 (_2!29056 lt!1745216)))) lt!1746187)))

(declare-fun b!4581205 () Bool)

(assert (=> b!4581205 (= e!2856793 (getKeysList!544 (toList!4552 lt!1745665)))))

(declare-fun b!4581206 () Bool)

(assert (=> b!4581206 false))

(declare-fun lt!1746189 () Unit!105525)

(declare-fun lt!1746190 () Unit!105525)

(assert (=> b!4581206 (= lt!1746189 lt!1746190)))

(assert (=> b!4581206 (containsKey!2057 (toList!4552 lt!1745665) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4581206 (= lt!1746190 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745665) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun Unit!105776 () Unit!105525)

(assert (=> b!4581206 (= e!2856797 Unit!105776)))

(declare-fun b!4581207 () Bool)

(assert (=> b!4581207 (= e!2856796 (not (contains!13849 (keys!17800 lt!1745665) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(assert (= (and d!1434702 c!784145) b!4581204))

(assert (= (and d!1434702 (not c!784145)) b!4581201))

(assert (= (and b!4581201 c!784144) b!4581206))

(assert (= (and b!4581201 (not c!784144)) b!4581199))

(assert (= (or b!4581204 b!4581201) bm!319803))

(assert (= (and bm!319803 c!784143) b!4581205))

(assert (= (and bm!319803 (not c!784143)) b!4581203))

(assert (= (and d!1434702 res!1914076) b!4581207))

(assert (= (and d!1434702 (not res!1914078)) b!4581200))

(assert (= (and b!4581200 res!1914077) b!4581202))

(declare-fun m!5392145 () Bool)

(assert (=> b!4581206 m!5392145))

(declare-fun m!5392147 () Bool)

(assert (=> b!4581206 m!5392147))

(declare-fun m!5392149 () Bool)

(assert (=> b!4581207 m!5392149))

(assert (=> b!4581207 m!5392149))

(declare-fun m!5392151 () Bool)

(assert (=> b!4581207 m!5392151))

(declare-fun m!5392153 () Bool)

(assert (=> b!4581200 m!5392153))

(assert (=> b!4581200 m!5392153))

(declare-fun m!5392155 () Bool)

(assert (=> b!4581200 m!5392155))

(declare-fun m!5392157 () Bool)

(assert (=> b!4581205 m!5392157))

(assert (=> b!4581203 m!5392149))

(declare-fun m!5392159 () Bool)

(assert (=> b!4581204 m!5392159))

(assert (=> b!4581204 m!5392153))

(assert (=> b!4581204 m!5392153))

(assert (=> b!4581204 m!5392155))

(declare-fun m!5392161 () Bool)

(assert (=> b!4581204 m!5392161))

(assert (=> d!1434702 m!5392145))

(declare-fun m!5392163 () Bool)

(assert (=> bm!319803 m!5392163))

(assert (=> b!4581202 m!5392149))

(assert (=> b!4581202 m!5392149))

(assert (=> b!4581202 m!5392151))

(assert (=> b!4580368 d!1434702))

(declare-fun d!1434704 () Bool)

(assert (=> d!1434704 (dynLambda!21336 lambda!183166 (h!56885 (_2!29056 lt!1745216)))))

(declare-fun lt!1746197 () Unit!105525)

(assert (=> d!1434704 (= lt!1746197 (choose!30522 (toList!4552 lt!1745663) lambda!183166 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun e!2856802 () Bool)

(assert (=> d!1434704 e!2856802))

(declare-fun res!1914079 () Bool)

(assert (=> d!1434704 (=> (not res!1914079) (not e!2856802))))

(assert (=> d!1434704 (= res!1914079 (forall!10502 (toList!4552 lt!1745663) lambda!183166))))

(assert (=> d!1434704 (= (forallContained!2765 (toList!4552 lt!1745663) lambda!183166 (h!56885 (_2!29056 lt!1745216))) lt!1746197)))

(declare-fun b!4581216 () Bool)

(assert (=> b!4581216 (= e!2856802 (contains!13851 (toList!4552 lt!1745663) (h!56885 (_2!29056 lt!1745216))))))

(assert (= (and d!1434704 res!1914079) b!4581216))

(declare-fun b_lambda!166113 () Bool)

(assert (=> (not b_lambda!166113) (not d!1434704)))

(declare-fun m!5392165 () Bool)

(assert (=> d!1434704 m!5392165))

(declare-fun m!5392167 () Bool)

(assert (=> d!1434704 m!5392167))

(assert (=> d!1434704 m!5390663))

(declare-fun m!5392169 () Bool)

(assert (=> b!4581216 m!5392169))

(assert (=> b!4580368 d!1434704))

(declare-fun d!1434706 () Bool)

(declare-fun res!1914080 () Bool)

(declare-fun e!2856805 () Bool)

(assert (=> d!1434706 (=> res!1914080 e!2856805)))

(assert (=> d!1434706 (= res!1914080 ((_ is Nil!50950) (toList!4552 lt!1745663)))))

(assert (=> d!1434706 (= (forall!10502 (toList!4552 lt!1745663) lambda!183166) e!2856805)))

(declare-fun b!4581221 () Bool)

(declare-fun e!2856806 () Bool)

(assert (=> b!4581221 (= e!2856805 e!2856806)))

(declare-fun res!1914081 () Bool)

(assert (=> b!4581221 (=> (not res!1914081) (not e!2856806))))

(assert (=> b!4581221 (= res!1914081 (dynLambda!21336 lambda!183166 (h!56885 (toList!4552 lt!1745663))))))

(declare-fun b!4581222 () Bool)

(assert (=> b!4581222 (= e!2856806 (forall!10502 (t!358064 (toList!4552 lt!1745663)) lambda!183166))))

(assert (= (and d!1434706 (not res!1914080)) b!4581221))

(assert (= (and b!4581221 res!1914081) b!4581222))

(declare-fun b_lambda!166115 () Bool)

(assert (=> (not b_lambda!166115) (not b!4581221)))

(declare-fun m!5392171 () Bool)

(assert (=> b!4581221 m!5392171))

(declare-fun m!5392173 () Bool)

(assert (=> b!4581222 m!5392173))

(assert (=> b!4580368 d!1434706))

(declare-fun b!4581223 () Bool)

(declare-fun e!2856812 () Unit!105525)

(declare-fun Unit!105779 () Unit!105525)

(assert (=> b!4581223 (= e!2856812 Unit!105779)))

(declare-fun b!4581224 () Bool)

(declare-fun e!2856807 () Bool)

(declare-fun e!2856810 () Bool)

(assert (=> b!4581224 (= e!2856807 e!2856810)))

(declare-fun res!1914083 () Bool)

(assert (=> b!4581224 (=> (not res!1914083) (not e!2856810))))

(assert (=> b!4581224 (= res!1914083 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745663) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4581225 () Bool)

(declare-fun e!2856809 () Unit!105525)

(assert (=> b!4581225 (= e!2856809 e!2856812)))

(declare-fun c!784153 () Bool)

(declare-fun call!319809 () Bool)

(assert (=> b!4581225 (= c!784153 call!319809)))

(declare-fun b!4581226 () Bool)

(assert (=> b!4581226 (= e!2856810 (contains!13849 (keys!17800 lt!1745663) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun b!4581227 () Bool)

(declare-fun e!2856808 () List!51077)

(assert (=> b!4581227 (= e!2856808 (keys!17800 lt!1745663))))

(declare-fun b!4581228 () Bool)

(declare-fun lt!1746205 () Unit!105525)

(assert (=> b!4581228 (= e!2856809 lt!1746205)))

(declare-fun lt!1746203 () Unit!105525)

(assert (=> b!4581228 (= lt!1746203 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745663) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4581228 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745663) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746208 () Unit!105525)

(assert (=> b!4581228 (= lt!1746208 lt!1746203)))

(assert (=> b!4581228 (= lt!1746205 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745663) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4581228 call!319809))

(declare-fun bm!319804 () Bool)

(assert (=> bm!319804 (= call!319809 (contains!13849 e!2856808 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun c!784152 () Bool)

(declare-fun c!784154 () Bool)

(assert (=> bm!319804 (= c!784152 c!784154)))

(declare-fun d!1434708 () Bool)

(assert (=> d!1434708 e!2856807))

(declare-fun res!1914084 () Bool)

(assert (=> d!1434708 (=> res!1914084 e!2856807)))

(declare-fun e!2856811 () Bool)

(assert (=> d!1434708 (= res!1914084 e!2856811)))

(declare-fun res!1914082 () Bool)

(assert (=> d!1434708 (=> (not res!1914082) (not e!2856811))))

(declare-fun lt!1746204 () Bool)

(assert (=> d!1434708 (= res!1914082 (not lt!1746204))))

(declare-fun lt!1746209 () Bool)

(assert (=> d!1434708 (= lt!1746204 lt!1746209)))

(declare-fun lt!1746202 () Unit!105525)

(assert (=> d!1434708 (= lt!1746202 e!2856809)))

(assert (=> d!1434708 (= c!784154 lt!1746209)))

(assert (=> d!1434708 (= lt!1746209 (containsKey!2057 (toList!4552 lt!1745663) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434708 (= (contains!13846 lt!1745663 (_1!29055 (h!56885 (_2!29056 lt!1745216)))) lt!1746204)))

(declare-fun b!4581229 () Bool)

(assert (=> b!4581229 (= e!2856808 (getKeysList!544 (toList!4552 lt!1745663)))))

(declare-fun b!4581230 () Bool)

(assert (=> b!4581230 false))

(declare-fun lt!1746206 () Unit!105525)

(declare-fun lt!1746207 () Unit!105525)

(assert (=> b!4581230 (= lt!1746206 lt!1746207)))

(assert (=> b!4581230 (containsKey!2057 (toList!4552 lt!1745663) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4581230 (= lt!1746207 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745663) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun Unit!105783 () Unit!105525)

(assert (=> b!4581230 (= e!2856812 Unit!105783)))

(declare-fun b!4581231 () Bool)

(assert (=> b!4581231 (= e!2856811 (not (contains!13849 (keys!17800 lt!1745663) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(assert (= (and d!1434708 c!784154) b!4581228))

(assert (= (and d!1434708 (not c!784154)) b!4581225))

(assert (= (and b!4581225 c!784153) b!4581230))

(assert (= (and b!4581225 (not c!784153)) b!4581223))

(assert (= (or b!4581228 b!4581225) bm!319804))

(assert (= (and bm!319804 c!784152) b!4581229))

(assert (= (and bm!319804 (not c!784152)) b!4581227))

(assert (= (and d!1434708 res!1914082) b!4581231))

(assert (= (and d!1434708 (not res!1914084)) b!4581224))

(assert (= (and b!4581224 res!1914083) b!4581226))

(declare-fun m!5392175 () Bool)

(assert (=> b!4581230 m!5392175))

(declare-fun m!5392177 () Bool)

(assert (=> b!4581230 m!5392177))

(declare-fun m!5392179 () Bool)

(assert (=> b!4581231 m!5392179))

(assert (=> b!4581231 m!5392179))

(declare-fun m!5392181 () Bool)

(assert (=> b!4581231 m!5392181))

(declare-fun m!5392183 () Bool)

(assert (=> b!4581224 m!5392183))

(assert (=> b!4581224 m!5392183))

(declare-fun m!5392185 () Bool)

(assert (=> b!4581224 m!5392185))

(declare-fun m!5392187 () Bool)

(assert (=> b!4581229 m!5392187))

(assert (=> b!4581227 m!5392179))

(declare-fun m!5392189 () Bool)

(assert (=> b!4581228 m!5392189))

(assert (=> b!4581228 m!5392183))

(assert (=> b!4581228 m!5392183))

(assert (=> b!4581228 m!5392185))

(declare-fun m!5392191 () Bool)

(assert (=> b!4581228 m!5392191))

(assert (=> d!1434708 m!5392175))

(declare-fun m!5392193 () Bool)

(assert (=> bm!319804 m!5392193))

(assert (=> b!4581226 m!5392179))

(assert (=> b!4581226 m!5392179))

(assert (=> b!4581226 m!5392181))

(assert (=> b!4580368 d!1434708))

(declare-fun bs!972955 () Bool)

(declare-fun d!1434710 () Bool)

(assert (= bs!972955 (and d!1434710 b!4580368)))

(declare-fun lambda!183270 () Int)

(assert (=> bs!972955 (= lambda!183270 lambda!183166)))

(declare-fun bs!972956 () Bool)

(assert (= bs!972956 (and d!1434710 b!4580772)))

(assert (=> bs!972956 (= (= lt!1745665 lt!1745913) (= lambda!183270 lambda!183232))))

(declare-fun bs!972957 () Bool)

(assert (= bs!972957 (and d!1434710 b!4580664)))

(assert (=> bs!972957 (= (= lt!1745665 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183270 lambda!183211))))

(declare-fun bs!972958 () Bool)

(assert (= bs!972958 (and d!1434710 b!4580305)))

(assert (=> bs!972958 (= (= lt!1745665 lt!1745627) (= lambda!183270 lambda!183159))))

(declare-fun bs!972959 () Bool)

(assert (= bs!972959 (and d!1434710 b!4581137)))

(assert (=> bs!972959 (= (= lt!1745665 (-!480 lt!1745232 key!3287)) (= lambda!183270 lambda!183257))))

(declare-fun bs!972960 () Bool)

(assert (= bs!972960 (and d!1434710 d!1434184)))

(assert (=> bs!972960 (= (= lt!1745665 lt!1745630) (= lambda!183270 lambda!183160))))

(declare-fun bs!972961 () Bool)

(assert (= bs!972961 (and d!1434710 b!4580257)))

(assert (=> bs!972961 (= (= lt!1745665 lt!1745576) (= lambda!183270 lambda!183142))))

(declare-fun bs!972962 () Bool)

(assert (= bs!972962 (and d!1434710 d!1434446)))

(assert (=> bs!972962 (= (= lt!1745665 lt!1745852) (= lambda!183270 lambda!183214))))

(declare-fun bs!972963 () Bool)

(assert (= bs!972963 (and d!1434710 b!4580536)))

(assert (=> bs!972963 (= (= lt!1745665 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183270 lambda!183190))))

(declare-fun bs!972964 () Bool)

(assert (= bs!972964 (and d!1434710 b!4580306)))

(assert (=> bs!972964 (= (= lt!1745665 lt!1745232) (= lambda!183270 lambda!183157))))

(declare-fun bs!972965 () Bool)

(assert (= bs!972965 (and d!1434710 d!1434424)))

(assert (=> bs!972965 (= (= lt!1745665 lt!1745214) (= lambda!183270 lambda!183205))))

(assert (=> bs!972955 (= (= lt!1745665 lt!1745214) (= lambda!183270 lambda!183165))))

(declare-fun bs!972966 () Bool)

(assert (= bs!972966 (and d!1434710 b!4581136)))

(assert (=> bs!972966 (= (= lt!1745665 lt!1746150) (= lambda!183270 lambda!183260))))

(assert (=> bs!972966 (= (= lt!1745665 (-!480 lt!1745232 key!3287)) (= lambda!183270 lambda!183259))))

(declare-fun bs!972967 () Bool)

(assert (= bs!972967 (and d!1434710 b!4580574)))

(assert (=> bs!972967 (= (= lt!1745665 lt!1745787) (= lambda!183270 lambda!183202))))

(declare-fun bs!972968 () Bool)

(assert (= bs!972968 (and d!1434710 b!4580773)))

(assert (=> bs!972968 (= (= lt!1745665 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183270 lambda!183230))))

(declare-fun bs!972969 () Bool)

(assert (= bs!972969 (and d!1434710 d!1434224)))

(assert (=> bs!972969 (= (= lt!1745665 lt!1745668) (= lambda!183270 lambda!183167))))

(declare-fun bs!972970 () Bool)

(assert (= bs!972970 (and d!1434710 b!4580955)))

(assert (=> bs!972970 (= (= lt!1745665 lt!1746040) (= lambda!183270 lambda!183244))))

(declare-fun bs!972971 () Bool)

(assert (= bs!972971 (and d!1434710 d!1434366)))

(assert (=> bs!972971 (= (= lt!1745665 lt!1745790) (= lambda!183270 lambda!183203))))

(declare-fun bs!972972 () Bool)

(assert (= bs!972972 (and d!1434710 d!1434060)))

(assert (=> bs!972972 (= (= lt!1745665 lt!1745579) (= lambda!183270 lambda!183143))))

(declare-fun bs!972973 () Bool)

(assert (= bs!972973 (and d!1434710 d!1434648)))

(assert (=> bs!972973 (= (= lt!1745665 lt!1746153) (= lambda!183270 lambda!183265))))

(declare-fun bs!972974 () Bool)

(assert (= bs!972974 (and d!1434710 d!1434338)))

(assert (=> bs!972974 (= (= lt!1745665 lt!1745759) (= lambda!183270 lambda!183193))))

(assert (=> bs!972958 (= (= lt!1745665 lt!1745232) (= lambda!183270 lambda!183158))))

(declare-fun bs!972975 () Bool)

(assert (= bs!972975 (and d!1434710 b!4579991)))

(assert (=> bs!972975 (not (= lambda!183270 lambda!183043))))

(declare-fun bs!972976 () Bool)

(assert (= bs!972976 (and d!1434710 b!4580535)))

(assert (=> bs!972976 (= (= lt!1745665 lt!1745756) (= lambda!183270 lambda!183192))))

(declare-fun bs!972977 () Bool)

(assert (= bs!972977 (and d!1434710 b!4580369)))

(assert (=> bs!972977 (= (= lt!1745665 lt!1745214) (= lambda!183270 lambda!183164))))

(declare-fun bs!972978 () Bool)

(assert (= bs!972978 (and d!1434710 b!4580575)))

(assert (=> bs!972978 (= (= lt!1745665 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183270 lambda!183200))))

(declare-fun bs!972979 () Bool)

(assert (= bs!972979 (and d!1434710 d!1434556)))

(assert (=> bs!972979 (= (= lt!1745665 lt!1746043) (= lambda!183270 lambda!183245))))

(assert (=> bs!972976 (= (= lt!1745665 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183270 lambda!183191))))

(assert (=> bs!972956 (= (= lt!1745665 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183270 lambda!183231))))

(declare-fun bs!972980 () Bool)

(assert (= bs!972980 (and d!1434710 b!4580663)))

(assert (=> bs!972980 (= (= lt!1745665 lt!1745849) (= lambda!183270 lambda!183213))))

(declare-fun bs!972981 () Bool)

(assert (= bs!972981 (and d!1434710 b!4580956)))

(assert (=> bs!972981 (= (= lt!1745665 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183270 lambda!183242))))

(assert (=> bs!972967 (= (= lt!1745665 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183270 lambda!183201))))

(declare-fun bs!972982 () Bool)

(assert (= bs!972982 (and d!1434710 b!4580258)))

(assert (=> bs!972982 (= (= lt!1745665 lt!1745218) (= lambda!183270 lambda!183140))))

(declare-fun bs!972983 () Bool)

(assert (= bs!972983 (and d!1434710 d!1434486)))

(assert (=> bs!972983 (= (= lt!1745665 lt!1745916) (= lambda!183270 lambda!183233))))

(assert (=> bs!972961 (= (= lt!1745665 lt!1745218) (= lambda!183270 lambda!183141))))

(declare-fun bs!972984 () Bool)

(assert (= bs!972984 (and d!1434710 d!1434448)))

(assert (=> bs!972984 (= (= lt!1745665 lt!1745218) (= lambda!183270 lambda!183215))))

(assert (=> bs!972980 (= (= lt!1745665 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183270 lambda!183212))))

(declare-fun bs!972985 () Bool)

(assert (= bs!972985 (and d!1434710 d!1434344)))

(assert (=> bs!972985 (= (= lt!1745665 lt!1745232) (= lambda!183270 lambda!183199))))

(declare-fun bs!972986 () Bool)

(assert (= bs!972986 (and d!1434710 d!1434256)))

(assert (=> bs!972986 (not (= lambda!183270 lambda!183178))))

(declare-fun bs!972987 () Bool)

(assert (= bs!972987 (and d!1434710 d!1434442)))

(assert (=> bs!972987 (= (= lt!1745665 lt!1745627) (= lambda!183270 lambda!183210))))

(assert (=> bs!972970 (= (= lt!1745665 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183270 lambda!183243))))

(declare-fun bs!972988 () Bool)

(assert (= bs!972988 (and d!1434710 d!1434500)))

(assert (=> bs!972988 (not (= lambda!183270 lambda!183235))))

(assert (=> d!1434710 true))

(assert (=> d!1434710 (forall!10502 (toList!4552 lt!1745214) lambda!183270)))

(declare-fun lt!1746216 () Unit!105525)

(assert (=> d!1434710 (= lt!1746216 (choose!30537 lt!1745214 lt!1745665 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434710 (forall!10502 (toList!4552 (+!1710 lt!1745214 (tuple2!51523 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))) lambda!183270)))

(assert (=> d!1434710 (= (addForallContainsKeyThenBeforeAdding!414 lt!1745214 lt!1745665 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))) lt!1746216)))

(declare-fun bs!972989 () Bool)

(assert (= bs!972989 d!1434710))

(declare-fun m!5392195 () Bool)

(assert (=> bs!972989 m!5392195))

(declare-fun m!5392197 () Bool)

(assert (=> bs!972989 m!5392197))

(declare-fun m!5392199 () Bool)

(assert (=> bs!972989 m!5392199))

(declare-fun m!5392201 () Bool)

(assert (=> bs!972989 m!5392201))

(assert (=> b!4580368 d!1434710))

(declare-fun d!1434712 () Bool)

(declare-fun res!1914091 () Bool)

(declare-fun e!2856815 () Bool)

(assert (=> d!1434712 (=> res!1914091 e!2856815)))

(assert (=> d!1434712 (= res!1914091 ((_ is Nil!50950) (t!358064 (_2!29056 lt!1745216))))))

(assert (=> d!1434712 (= (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183166) e!2856815)))

(declare-fun b!4581238 () Bool)

(declare-fun e!2856816 () Bool)

(assert (=> b!4581238 (= e!2856815 e!2856816)))

(declare-fun res!1914092 () Bool)

(assert (=> b!4581238 (=> (not res!1914092) (not e!2856816))))

(assert (=> b!4581238 (= res!1914092 (dynLambda!21336 lambda!183166 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun b!4581239 () Bool)

(assert (=> b!4581239 (= e!2856816 (forall!10502 (t!358064 (t!358064 (_2!29056 lt!1745216))) lambda!183166))))

(assert (= (and d!1434712 (not res!1914091)) b!4581238))

(assert (= (and b!4581238 res!1914092) b!4581239))

(declare-fun b_lambda!166117 () Bool)

(assert (=> (not b_lambda!166117) (not b!4581238)))

(declare-fun m!5392203 () Bool)

(assert (=> b!4581238 m!5392203))

(declare-fun m!5392205 () Bool)

(assert (=> b!4581239 m!5392205))

(assert (=> b!4580368 d!1434712))

(declare-fun d!1434714 () Bool)

(declare-fun res!1914093 () Bool)

(declare-fun e!2856817 () Bool)

(assert (=> d!1434714 (=> res!1914093 e!2856817)))

(assert (=> d!1434714 (= res!1914093 ((_ is Nil!50950) (toList!4552 lt!1745214)))))

(assert (=> d!1434714 (= (forall!10502 (toList!4552 lt!1745214) lambda!183165) e!2856817)))

(declare-fun b!4581240 () Bool)

(declare-fun e!2856818 () Bool)

(assert (=> b!4581240 (= e!2856817 e!2856818)))

(declare-fun res!1914094 () Bool)

(assert (=> b!4581240 (=> (not res!1914094) (not e!2856818))))

(assert (=> b!4581240 (= res!1914094 (dynLambda!21336 lambda!183165 (h!56885 (toList!4552 lt!1745214))))))

(declare-fun b!4581241 () Bool)

(assert (=> b!4581241 (= e!2856818 (forall!10502 (t!358064 (toList!4552 lt!1745214)) lambda!183165))))

(assert (= (and d!1434714 (not res!1914093)) b!4581240))

(assert (= (and b!4581240 res!1914094) b!4581241))

(declare-fun b_lambda!166119 () Bool)

(assert (=> (not b_lambda!166119) (not b!4581240)))

(declare-fun m!5392207 () Bool)

(assert (=> b!4581240 m!5392207))

(declare-fun m!5392209 () Bool)

(assert (=> b!4581241 m!5392209))

(assert (=> b!4580368 d!1434714))

(declare-fun d!1434716 () Bool)

(declare-fun e!2856823 () Bool)

(assert (=> d!1434716 e!2856823))

(declare-fun res!1914099 () Bool)

(assert (=> d!1434716 (=> (not res!1914099) (not e!2856823))))

(declare-fun lt!1746227 () ListMap!3813)

(assert (=> d!1434716 (= res!1914099 (contains!13846 lt!1746227 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746225 () List!51074)

(assert (=> d!1434716 (= lt!1746227 (ListMap!3814 lt!1746225))))

(declare-fun lt!1746224 () Unit!105525)

(declare-fun lt!1746226 () Unit!105525)

(assert (=> d!1434716 (= lt!1746224 lt!1746226)))

(assert (=> d!1434716 (= (getValueByKey!1254 lt!1746225 (_1!29055 (h!56885 (_2!29056 lt!1745216)))) (Some!11327 (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434716 (= lt!1746226 (lemmaContainsTupThenGetReturnValue!779 lt!1746225 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434716 (= lt!1746225 (insertNoDuplicatedKeys!309 (toList!4552 lt!1745214) (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434716 (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746227)))

(declare-fun b!4581251 () Bool)

(declare-fun res!1914098 () Bool)

(assert (=> b!4581251 (=> (not res!1914098) (not e!2856823))))

(assert (=> b!4581251 (= res!1914098 (= (getValueByKey!1254 (toList!4552 lt!1746227) (_1!29055 (h!56885 (_2!29056 lt!1745216)))) (Some!11327 (_2!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4581252 () Bool)

(assert (=> b!4581252 (= e!2856823 (contains!13851 (toList!4552 lt!1746227) (h!56885 (_2!29056 lt!1745216))))))

(assert (= (and d!1434716 res!1914099) b!4581251))

(assert (= (and b!4581251 res!1914098) b!4581252))

(declare-fun m!5392211 () Bool)

(assert (=> d!1434716 m!5392211))

(declare-fun m!5392213 () Bool)

(assert (=> d!1434716 m!5392213))

(declare-fun m!5392215 () Bool)

(assert (=> d!1434716 m!5392215))

(declare-fun m!5392217 () Bool)

(assert (=> d!1434716 m!5392217))

(declare-fun m!5392219 () Bool)

(assert (=> b!4581251 m!5392219))

(declare-fun m!5392221 () Bool)

(assert (=> b!4581252 m!5392221))

(assert (=> b!4580368 d!1434716))

(declare-fun d!1434718 () Bool)

(declare-fun res!1914100 () Bool)

(declare-fun e!2856824 () Bool)

(assert (=> d!1434718 (=> res!1914100 e!2856824)))

(assert (=> d!1434718 (= res!1914100 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434718 (= (forall!10502 (_2!29056 lt!1745216) lambda!183166) e!2856824)))

(declare-fun b!4581255 () Bool)

(declare-fun e!2856825 () Bool)

(assert (=> b!4581255 (= e!2856824 e!2856825)))

(declare-fun res!1914101 () Bool)

(assert (=> b!4581255 (=> (not res!1914101) (not e!2856825))))

(assert (=> b!4581255 (= res!1914101 (dynLambda!21336 lambda!183166 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun b!4581256 () Bool)

(assert (=> b!4581256 (= e!2856825 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183166))))

(assert (= (and d!1434718 (not res!1914100)) b!4581255))

(assert (= (and b!4581255 res!1914101) b!4581256))

(declare-fun b_lambda!166121 () Bool)

(assert (=> (not b_lambda!166121) (not b!4581255)))

(assert (=> b!4581255 m!5392165))

(assert (=> b!4581256 m!5390651))

(assert (=> b!4580368 d!1434718))

(declare-fun bs!973002 () Bool)

(declare-fun b!4581260 () Bool)

(assert (= bs!973002 (and b!4581260 b!4580368)))

(declare-fun lambda!183278 () Int)

(assert (=> bs!973002 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183278 lambda!183166))))

(declare-fun bs!973003 () Bool)

(assert (= bs!973003 (and b!4581260 b!4580772)))

(assert (=> bs!973003 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745913) (= lambda!183278 lambda!183232))))

(declare-fun bs!973005 () Bool)

(assert (= bs!973005 (and b!4581260 b!4580664)))

(assert (=> bs!973005 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183278 lambda!183211))))

(declare-fun bs!973007 () Bool)

(assert (= bs!973007 (and b!4581260 b!4580305)))

(assert (=> bs!973007 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183278 lambda!183159))))

(declare-fun bs!973009 () Bool)

(assert (= bs!973009 (and b!4581260 b!4581137)))

(assert (=> bs!973009 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (-!480 lt!1745232 key!3287)) (= lambda!183278 lambda!183257))))

(declare-fun bs!973010 () Bool)

(assert (= bs!973010 (and b!4581260 d!1434184)))

(assert (=> bs!973010 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745630) (= lambda!183278 lambda!183160))))

(declare-fun bs!973011 () Bool)

(assert (= bs!973011 (and b!4581260 d!1434710)))

(assert (=> bs!973011 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183278 lambda!183270))))

(declare-fun bs!973012 () Bool)

(assert (= bs!973012 (and b!4581260 b!4580257)))

(assert (=> bs!973012 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745576) (= lambda!183278 lambda!183142))))

(declare-fun bs!973013 () Bool)

(assert (= bs!973013 (and b!4581260 d!1434446)))

(assert (=> bs!973013 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745852) (= lambda!183278 lambda!183214))))

(declare-fun bs!973014 () Bool)

(assert (= bs!973014 (and b!4581260 b!4580536)))

(assert (=> bs!973014 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183278 lambda!183190))))

(declare-fun bs!973015 () Bool)

(assert (= bs!973015 (and b!4581260 b!4580306)))

(assert (=> bs!973015 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183278 lambda!183157))))

(declare-fun bs!973016 () Bool)

(assert (= bs!973016 (and b!4581260 d!1434424)))

(assert (=> bs!973016 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183278 lambda!183205))))

(assert (=> bs!973002 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183278 lambda!183165))))

(declare-fun bs!973017 () Bool)

(assert (= bs!973017 (and b!4581260 b!4581136)))

(assert (=> bs!973017 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746150) (= lambda!183278 lambda!183260))))

(assert (=> bs!973017 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (-!480 lt!1745232 key!3287)) (= lambda!183278 lambda!183259))))

(declare-fun bs!973018 () Bool)

(assert (= bs!973018 (and b!4581260 b!4580574)))

(assert (=> bs!973018 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745787) (= lambda!183278 lambda!183202))))

(declare-fun bs!973019 () Bool)

(assert (= bs!973019 (and b!4581260 b!4580773)))

(assert (=> bs!973019 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183278 lambda!183230))))

(declare-fun bs!973020 () Bool)

(assert (= bs!973020 (and b!4581260 d!1434224)))

(assert (=> bs!973020 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745668) (= lambda!183278 lambda!183167))))

(declare-fun bs!973021 () Bool)

(assert (= bs!973021 (and b!4581260 b!4580955)))

(assert (=> bs!973021 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746040) (= lambda!183278 lambda!183244))))

(declare-fun bs!973022 () Bool)

(assert (= bs!973022 (and b!4581260 d!1434366)))

(assert (=> bs!973022 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745790) (= lambda!183278 lambda!183203))))

(declare-fun bs!973023 () Bool)

(assert (= bs!973023 (and b!4581260 d!1434060)))

(assert (=> bs!973023 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745579) (= lambda!183278 lambda!183143))))

(declare-fun bs!973024 () Bool)

(assert (= bs!973024 (and b!4581260 d!1434648)))

(assert (=> bs!973024 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746153) (= lambda!183278 lambda!183265))))

(declare-fun bs!973025 () Bool)

(assert (= bs!973025 (and b!4581260 d!1434338)))

(assert (=> bs!973025 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745759) (= lambda!183278 lambda!183193))))

(assert (=> bs!973007 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183278 lambda!183158))))

(declare-fun bs!973026 () Bool)

(assert (= bs!973026 (and b!4581260 b!4579991)))

(assert (=> bs!973026 (not (= lambda!183278 lambda!183043))))

(declare-fun bs!973027 () Bool)

(assert (= bs!973027 (and b!4581260 b!4580535)))

(assert (=> bs!973027 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745756) (= lambda!183278 lambda!183192))))

(declare-fun bs!973029 () Bool)

(assert (= bs!973029 (and b!4581260 b!4580369)))

(assert (=> bs!973029 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183278 lambda!183164))))

(declare-fun bs!973030 () Bool)

(assert (= bs!973030 (and b!4581260 b!4580575)))

(assert (=> bs!973030 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183278 lambda!183200))))

(declare-fun bs!973031 () Bool)

(assert (= bs!973031 (and b!4581260 d!1434556)))

(assert (=> bs!973031 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746043) (= lambda!183278 lambda!183245))))

(assert (=> bs!973027 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183278 lambda!183191))))

(assert (=> bs!973003 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183278 lambda!183231))))

(declare-fun bs!973032 () Bool)

(assert (= bs!973032 (and b!4581260 b!4580663)))

(assert (=> bs!973032 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745849) (= lambda!183278 lambda!183213))))

(declare-fun bs!973033 () Bool)

(assert (= bs!973033 (and b!4581260 b!4580956)))

(assert (=> bs!973033 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183278 lambda!183242))))

(assert (=> bs!973018 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183278 lambda!183201))))

(declare-fun bs!973034 () Bool)

(assert (= bs!973034 (and b!4581260 b!4580258)))

(assert (=> bs!973034 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183278 lambda!183140))))

(declare-fun bs!973035 () Bool)

(assert (= bs!973035 (and b!4581260 d!1434486)))

(assert (=> bs!973035 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745916) (= lambda!183278 lambda!183233))))

(assert (=> bs!973012 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183278 lambda!183141))))

(declare-fun bs!973036 () Bool)

(assert (= bs!973036 (and b!4581260 d!1434448)))

(assert (=> bs!973036 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183278 lambda!183215))))

(assert (=> bs!973032 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183278 lambda!183212))))

(declare-fun bs!973037 () Bool)

(assert (= bs!973037 (and b!4581260 d!1434344)))

(assert (=> bs!973037 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183278 lambda!183199))))

(declare-fun bs!973038 () Bool)

(assert (= bs!973038 (and b!4581260 d!1434256)))

(assert (=> bs!973038 (not (= lambda!183278 lambda!183178))))

(declare-fun bs!973039 () Bool)

(assert (= bs!973039 (and b!4581260 d!1434442)))

(assert (=> bs!973039 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183278 lambda!183210))))

(assert (=> bs!973021 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183278 lambda!183243))))

(declare-fun bs!973040 () Bool)

(assert (= bs!973040 (and b!4581260 d!1434500)))

(assert (=> bs!973040 (not (= lambda!183278 lambda!183235))))

(assert (=> b!4581260 true))

(declare-fun bs!973041 () Bool)

(declare-fun b!4581259 () Bool)

(assert (= bs!973041 (and b!4581259 b!4580368)))

(declare-fun lambda!183280 () Int)

(assert (=> bs!973041 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183280 lambda!183166))))

(declare-fun bs!973042 () Bool)

(assert (= bs!973042 (and b!4581259 b!4580772)))

(assert (=> bs!973042 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745913) (= lambda!183280 lambda!183232))))

(declare-fun bs!973043 () Bool)

(assert (= bs!973043 (and b!4581259 b!4580664)))

(assert (=> bs!973043 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183280 lambda!183211))))

(declare-fun bs!973044 () Bool)

(assert (= bs!973044 (and b!4581259 b!4580305)))

(assert (=> bs!973044 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183280 lambda!183159))))

(declare-fun bs!973045 () Bool)

(assert (= bs!973045 (and b!4581259 b!4581137)))

(assert (=> bs!973045 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (-!480 lt!1745232 key!3287)) (= lambda!183280 lambda!183257))))

(declare-fun bs!973046 () Bool)

(assert (= bs!973046 (and b!4581259 d!1434184)))

(assert (=> bs!973046 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745630) (= lambda!183280 lambda!183160))))

(declare-fun bs!973047 () Bool)

(assert (= bs!973047 (and b!4581259 d!1434710)))

(assert (=> bs!973047 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183280 lambda!183270))))

(declare-fun bs!973048 () Bool)

(assert (= bs!973048 (and b!4581259 b!4580257)))

(assert (=> bs!973048 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745576) (= lambda!183280 lambda!183142))))

(declare-fun bs!973049 () Bool)

(assert (= bs!973049 (and b!4581259 d!1434446)))

(assert (=> bs!973049 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745852) (= lambda!183280 lambda!183214))))

(declare-fun bs!973050 () Bool)

(assert (= bs!973050 (and b!4581259 b!4580536)))

(assert (=> bs!973050 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183280 lambda!183190))))

(declare-fun bs!973051 () Bool)

(assert (= bs!973051 (and b!4581259 b!4580306)))

(assert (=> bs!973051 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183280 lambda!183157))))

(declare-fun bs!973052 () Bool)

(assert (= bs!973052 (and b!4581259 d!1434424)))

(assert (=> bs!973052 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183280 lambda!183205))))

(assert (=> bs!973041 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183280 lambda!183165))))

(declare-fun bs!973053 () Bool)

(assert (= bs!973053 (and b!4581259 b!4581136)))

(assert (=> bs!973053 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746150) (= lambda!183280 lambda!183260))))

(assert (=> bs!973053 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (-!480 lt!1745232 key!3287)) (= lambda!183280 lambda!183259))))

(declare-fun bs!973054 () Bool)

(assert (= bs!973054 (and b!4581259 b!4580574)))

(assert (=> bs!973054 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745787) (= lambda!183280 lambda!183202))))

(declare-fun bs!973055 () Bool)

(assert (= bs!973055 (and b!4581259 b!4581260)))

(assert (=> bs!973055 (= lambda!183280 lambda!183278)))

(declare-fun bs!973056 () Bool)

(assert (= bs!973056 (and b!4581259 b!4580773)))

(assert (=> bs!973056 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183280 lambda!183230))))

(declare-fun bs!973057 () Bool)

(assert (= bs!973057 (and b!4581259 d!1434224)))

(assert (=> bs!973057 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745668) (= lambda!183280 lambda!183167))))

(declare-fun bs!973058 () Bool)

(assert (= bs!973058 (and b!4581259 b!4580955)))

(assert (=> bs!973058 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746040) (= lambda!183280 lambda!183244))))

(declare-fun bs!973060 () Bool)

(assert (= bs!973060 (and b!4581259 d!1434366)))

(assert (=> bs!973060 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745790) (= lambda!183280 lambda!183203))))

(declare-fun bs!973062 () Bool)

(assert (= bs!973062 (and b!4581259 d!1434060)))

(assert (=> bs!973062 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745579) (= lambda!183280 lambda!183143))))

(declare-fun bs!973064 () Bool)

(assert (= bs!973064 (and b!4581259 d!1434648)))

(assert (=> bs!973064 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746153) (= lambda!183280 lambda!183265))))

(declare-fun bs!973066 () Bool)

(assert (= bs!973066 (and b!4581259 d!1434338)))

(assert (=> bs!973066 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745759) (= lambda!183280 lambda!183193))))

(assert (=> bs!973044 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183280 lambda!183158))))

(declare-fun bs!973069 () Bool)

(assert (= bs!973069 (and b!4581259 b!4579991)))

(assert (=> bs!973069 (not (= lambda!183280 lambda!183043))))

(declare-fun bs!973070 () Bool)

(assert (= bs!973070 (and b!4581259 b!4580535)))

(assert (=> bs!973070 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745756) (= lambda!183280 lambda!183192))))

(declare-fun bs!973071 () Bool)

(assert (= bs!973071 (and b!4581259 b!4580369)))

(assert (=> bs!973071 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183280 lambda!183164))))

(declare-fun bs!973073 () Bool)

(assert (= bs!973073 (and b!4581259 b!4580575)))

(assert (=> bs!973073 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183280 lambda!183200))))

(declare-fun bs!973075 () Bool)

(assert (= bs!973075 (and b!4581259 d!1434556)))

(assert (=> bs!973075 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746043) (= lambda!183280 lambda!183245))))

(assert (=> bs!973070 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183280 lambda!183191))))

(assert (=> bs!973042 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183280 lambda!183231))))

(declare-fun bs!973078 () Bool)

(assert (= bs!973078 (and b!4581259 b!4580663)))

(assert (=> bs!973078 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745849) (= lambda!183280 lambda!183213))))

(declare-fun bs!973079 () Bool)

(assert (= bs!973079 (and b!4581259 b!4580956)))

(assert (=> bs!973079 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183280 lambda!183242))))

(assert (=> bs!973054 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183280 lambda!183201))))

(declare-fun bs!973080 () Bool)

(assert (= bs!973080 (and b!4581259 b!4580258)))

(assert (=> bs!973080 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183280 lambda!183140))))

(declare-fun bs!973081 () Bool)

(assert (= bs!973081 (and b!4581259 d!1434486)))

(assert (=> bs!973081 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745916) (= lambda!183280 lambda!183233))))

(assert (=> bs!973048 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183280 lambda!183141))))

(declare-fun bs!973082 () Bool)

(assert (= bs!973082 (and b!4581259 d!1434448)))

(assert (=> bs!973082 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183280 lambda!183215))))

(assert (=> bs!973078 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183280 lambda!183212))))

(declare-fun bs!973083 () Bool)

(assert (= bs!973083 (and b!4581259 d!1434344)))

(assert (=> bs!973083 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183280 lambda!183199))))

(declare-fun bs!973084 () Bool)

(assert (= bs!973084 (and b!4581259 d!1434256)))

(assert (=> bs!973084 (not (= lambda!183280 lambda!183178))))

(declare-fun bs!973085 () Bool)

(assert (= bs!973085 (and b!4581259 d!1434442)))

(assert (=> bs!973085 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183280 lambda!183210))))

(assert (=> bs!973058 (= (= (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183280 lambda!183243))))

(declare-fun bs!973086 () Bool)

(assert (= bs!973086 (and b!4581259 d!1434500)))

(assert (=> bs!973086 (not (= lambda!183280 lambda!183235))))

(assert (=> b!4581259 true))

(declare-fun lambda!183283 () Int)

(declare-fun lt!1746231 () ListMap!3813)

(assert (=> bs!973041 (= (= lt!1746231 lt!1745665) (= lambda!183283 lambda!183166))))

(assert (=> bs!973042 (= (= lt!1746231 lt!1745913) (= lambda!183283 lambda!183232))))

(assert (=> bs!973043 (= (= lt!1746231 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183283 lambda!183211))))

(assert (=> bs!973044 (= (= lt!1746231 lt!1745627) (= lambda!183283 lambda!183159))))

(assert (=> bs!973045 (= (= lt!1746231 (-!480 lt!1745232 key!3287)) (= lambda!183283 lambda!183257))))

(assert (=> bs!973046 (= (= lt!1746231 lt!1745630) (= lambda!183283 lambda!183160))))

(assert (=> bs!973047 (= (= lt!1746231 lt!1745665) (= lambda!183283 lambda!183270))))

(assert (=> bs!973048 (= (= lt!1746231 lt!1745576) (= lambda!183283 lambda!183142))))

(assert (=> bs!973049 (= (= lt!1746231 lt!1745852) (= lambda!183283 lambda!183214))))

(assert (=> bs!973050 (= (= lt!1746231 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183283 lambda!183190))))

(assert (=> bs!973051 (= (= lt!1746231 lt!1745232) (= lambda!183283 lambda!183157))))

(assert (=> bs!973052 (= (= lt!1746231 lt!1745214) (= lambda!183283 lambda!183205))))

(assert (=> bs!973041 (= (= lt!1746231 lt!1745214) (= lambda!183283 lambda!183165))))

(assert (=> bs!973053 (= (= lt!1746231 lt!1746150) (= lambda!183283 lambda!183260))))

(assert (=> bs!973053 (= (= lt!1746231 (-!480 lt!1745232 key!3287)) (= lambda!183283 lambda!183259))))

(assert (=> bs!973054 (= (= lt!1746231 lt!1745787) (= lambda!183283 lambda!183202))))

(assert (=> bs!973055 (= (= lt!1746231 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183283 lambda!183278))))

(assert (=> bs!973056 (= (= lt!1746231 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183283 lambda!183230))))

(assert (=> bs!973058 (= (= lt!1746231 lt!1746040) (= lambda!183283 lambda!183244))))

(assert (=> bs!973057 (= (= lt!1746231 lt!1745668) (= lambda!183283 lambda!183167))))

(assert (=> b!4581259 (= (= lt!1746231 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183283 lambda!183280))))

(assert (=> bs!973060 (= (= lt!1746231 lt!1745790) (= lambda!183283 lambda!183203))))

(assert (=> bs!973062 (= (= lt!1746231 lt!1745579) (= lambda!183283 lambda!183143))))

(assert (=> bs!973064 (= (= lt!1746231 lt!1746153) (= lambda!183283 lambda!183265))))

(assert (=> bs!973066 (= (= lt!1746231 lt!1745759) (= lambda!183283 lambda!183193))))

(assert (=> bs!973044 (= (= lt!1746231 lt!1745232) (= lambda!183283 lambda!183158))))

(assert (=> bs!973069 (not (= lambda!183283 lambda!183043))))

(assert (=> bs!973070 (= (= lt!1746231 lt!1745756) (= lambda!183283 lambda!183192))))

(assert (=> bs!973071 (= (= lt!1746231 lt!1745214) (= lambda!183283 lambda!183164))))

(assert (=> bs!973073 (= (= lt!1746231 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183283 lambda!183200))))

(assert (=> bs!973075 (= (= lt!1746231 lt!1746043) (= lambda!183283 lambda!183245))))

(assert (=> bs!973070 (= (= lt!1746231 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183283 lambda!183191))))

(assert (=> bs!973042 (= (= lt!1746231 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183283 lambda!183231))))

(assert (=> bs!973078 (= (= lt!1746231 lt!1745849) (= lambda!183283 lambda!183213))))

(assert (=> bs!973079 (= (= lt!1746231 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183283 lambda!183242))))

(assert (=> bs!973054 (= (= lt!1746231 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183283 lambda!183201))))

(assert (=> bs!973080 (= (= lt!1746231 lt!1745218) (= lambda!183283 lambda!183140))))

(assert (=> bs!973081 (= (= lt!1746231 lt!1745916) (= lambda!183283 lambda!183233))))

(assert (=> bs!973048 (= (= lt!1746231 lt!1745218) (= lambda!183283 lambda!183141))))

(assert (=> bs!973082 (= (= lt!1746231 lt!1745218) (= lambda!183283 lambda!183215))))

(assert (=> bs!973078 (= (= lt!1746231 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183283 lambda!183212))))

(assert (=> bs!973083 (= (= lt!1746231 lt!1745232) (= lambda!183283 lambda!183199))))

(assert (=> bs!973084 (not (= lambda!183283 lambda!183178))))

(assert (=> bs!973085 (= (= lt!1746231 lt!1745627) (= lambda!183283 lambda!183210))))

(assert (=> bs!973058 (= (= lt!1746231 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183283 lambda!183243))))

(assert (=> bs!973086 (not (= lambda!183283 lambda!183235))))

(assert (=> b!4581259 true))

(declare-fun bs!973089 () Bool)

(declare-fun d!1434720 () Bool)

(assert (= bs!973089 (and d!1434720 b!4580368)))

(declare-fun lambda!183287 () Int)

(declare-fun lt!1746234 () ListMap!3813)

(assert (=> bs!973089 (= (= lt!1746234 lt!1745665) (= lambda!183287 lambda!183166))))

(declare-fun bs!973091 () Bool)

(assert (= bs!973091 (and d!1434720 b!4580772)))

(assert (=> bs!973091 (= (= lt!1746234 lt!1745913) (= lambda!183287 lambda!183232))))

(declare-fun bs!973093 () Bool)

(assert (= bs!973093 (and d!1434720 b!4580664)))

(assert (=> bs!973093 (= (= lt!1746234 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183287 lambda!183211))))

(declare-fun bs!973095 () Bool)

(assert (= bs!973095 (and d!1434720 b!4580305)))

(assert (=> bs!973095 (= (= lt!1746234 lt!1745627) (= lambda!183287 lambda!183159))))

(declare-fun bs!973097 () Bool)

(assert (= bs!973097 (and d!1434720 b!4581137)))

(assert (=> bs!973097 (= (= lt!1746234 (-!480 lt!1745232 key!3287)) (= lambda!183287 lambda!183257))))

(declare-fun bs!973099 () Bool)

(assert (= bs!973099 (and d!1434720 b!4581259)))

(assert (=> bs!973099 (= (= lt!1746234 lt!1746231) (= lambda!183287 lambda!183283))))

(declare-fun bs!973100 () Bool)

(assert (= bs!973100 (and d!1434720 d!1434184)))

(assert (=> bs!973100 (= (= lt!1746234 lt!1745630) (= lambda!183287 lambda!183160))))

(declare-fun bs!973102 () Bool)

(assert (= bs!973102 (and d!1434720 d!1434710)))

(assert (=> bs!973102 (= (= lt!1746234 lt!1745665) (= lambda!183287 lambda!183270))))

(declare-fun bs!973104 () Bool)

(assert (= bs!973104 (and d!1434720 b!4580257)))

(assert (=> bs!973104 (= (= lt!1746234 lt!1745576) (= lambda!183287 lambda!183142))))

(declare-fun bs!973105 () Bool)

(assert (= bs!973105 (and d!1434720 d!1434446)))

(assert (=> bs!973105 (= (= lt!1746234 lt!1745852) (= lambda!183287 lambda!183214))))

(declare-fun bs!973107 () Bool)

(assert (= bs!973107 (and d!1434720 b!4580536)))

(assert (=> bs!973107 (= (= lt!1746234 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183287 lambda!183190))))

(declare-fun bs!973109 () Bool)

(assert (= bs!973109 (and d!1434720 b!4580306)))

(assert (=> bs!973109 (= (= lt!1746234 lt!1745232) (= lambda!183287 lambda!183157))))

(declare-fun bs!973111 () Bool)

(assert (= bs!973111 (and d!1434720 d!1434424)))

(assert (=> bs!973111 (= (= lt!1746234 lt!1745214) (= lambda!183287 lambda!183205))))

(assert (=> bs!973089 (= (= lt!1746234 lt!1745214) (= lambda!183287 lambda!183165))))

(declare-fun bs!973113 () Bool)

(assert (= bs!973113 (and d!1434720 b!4581136)))

(assert (=> bs!973113 (= (= lt!1746234 lt!1746150) (= lambda!183287 lambda!183260))))

(assert (=> bs!973113 (= (= lt!1746234 (-!480 lt!1745232 key!3287)) (= lambda!183287 lambda!183259))))

(declare-fun bs!973115 () Bool)

(assert (= bs!973115 (and d!1434720 b!4580574)))

(assert (=> bs!973115 (= (= lt!1746234 lt!1745787) (= lambda!183287 lambda!183202))))

(declare-fun bs!973117 () Bool)

(assert (= bs!973117 (and d!1434720 b!4581260)))

(assert (=> bs!973117 (= (= lt!1746234 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183287 lambda!183278))))

(declare-fun bs!973118 () Bool)

(assert (= bs!973118 (and d!1434720 b!4580773)))

(assert (=> bs!973118 (= (= lt!1746234 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183287 lambda!183230))))

(declare-fun bs!973120 () Bool)

(assert (= bs!973120 (and d!1434720 b!4580955)))

(assert (=> bs!973120 (= (= lt!1746234 lt!1746040) (= lambda!183287 lambda!183244))))

(declare-fun bs!973122 () Bool)

(assert (= bs!973122 (and d!1434720 d!1434224)))

(assert (=> bs!973122 (= (= lt!1746234 lt!1745668) (= lambda!183287 lambda!183167))))

(assert (=> bs!973099 (= (= lt!1746234 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183287 lambda!183280))))

(declare-fun bs!973123 () Bool)

(assert (= bs!973123 (and d!1434720 d!1434366)))

(assert (=> bs!973123 (= (= lt!1746234 lt!1745790) (= lambda!183287 lambda!183203))))

(declare-fun bs!973125 () Bool)

(assert (= bs!973125 (and d!1434720 d!1434060)))

(assert (=> bs!973125 (= (= lt!1746234 lt!1745579) (= lambda!183287 lambda!183143))))

(declare-fun bs!973126 () Bool)

(assert (= bs!973126 (and d!1434720 d!1434648)))

(assert (=> bs!973126 (= (= lt!1746234 lt!1746153) (= lambda!183287 lambda!183265))))

(declare-fun bs!973127 () Bool)

(assert (= bs!973127 (and d!1434720 d!1434338)))

(assert (=> bs!973127 (= (= lt!1746234 lt!1745759) (= lambda!183287 lambda!183193))))

(assert (=> bs!973095 (= (= lt!1746234 lt!1745232) (= lambda!183287 lambda!183158))))

(declare-fun bs!973128 () Bool)

(assert (= bs!973128 (and d!1434720 b!4579991)))

(assert (=> bs!973128 (not (= lambda!183287 lambda!183043))))

(declare-fun bs!973129 () Bool)

(assert (= bs!973129 (and d!1434720 b!4580535)))

(assert (=> bs!973129 (= (= lt!1746234 lt!1745756) (= lambda!183287 lambda!183192))))

(declare-fun bs!973130 () Bool)

(assert (= bs!973130 (and d!1434720 b!4580369)))

(assert (=> bs!973130 (= (= lt!1746234 lt!1745214) (= lambda!183287 lambda!183164))))

(declare-fun bs!973131 () Bool)

(assert (= bs!973131 (and d!1434720 b!4580575)))

(assert (=> bs!973131 (= (= lt!1746234 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183287 lambda!183200))))

(declare-fun bs!973132 () Bool)

(assert (= bs!973132 (and d!1434720 d!1434556)))

(assert (=> bs!973132 (= (= lt!1746234 lt!1746043) (= lambda!183287 lambda!183245))))

(assert (=> bs!973129 (= (= lt!1746234 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183287 lambda!183191))))

(assert (=> bs!973091 (= (= lt!1746234 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183287 lambda!183231))))

(declare-fun bs!973133 () Bool)

(assert (= bs!973133 (and d!1434720 b!4580663)))

(assert (=> bs!973133 (= (= lt!1746234 lt!1745849) (= lambda!183287 lambda!183213))))

(declare-fun bs!973134 () Bool)

(assert (= bs!973134 (and d!1434720 b!4580956)))

(assert (=> bs!973134 (= (= lt!1746234 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183287 lambda!183242))))

(assert (=> bs!973115 (= (= lt!1746234 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183287 lambda!183201))))

(declare-fun bs!973135 () Bool)

(assert (= bs!973135 (and d!1434720 b!4580258)))

(assert (=> bs!973135 (= (= lt!1746234 lt!1745218) (= lambda!183287 lambda!183140))))

(declare-fun bs!973136 () Bool)

(assert (= bs!973136 (and d!1434720 d!1434486)))

(assert (=> bs!973136 (= (= lt!1746234 lt!1745916) (= lambda!183287 lambda!183233))))

(assert (=> bs!973104 (= (= lt!1746234 lt!1745218) (= lambda!183287 lambda!183141))))

(declare-fun bs!973137 () Bool)

(assert (= bs!973137 (and d!1434720 d!1434448)))

(assert (=> bs!973137 (= (= lt!1746234 lt!1745218) (= lambda!183287 lambda!183215))))

(assert (=> bs!973133 (= (= lt!1746234 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183287 lambda!183212))))

(declare-fun bs!973138 () Bool)

(assert (= bs!973138 (and d!1434720 d!1434344)))

(assert (=> bs!973138 (= (= lt!1746234 lt!1745232) (= lambda!183287 lambda!183199))))

(declare-fun bs!973139 () Bool)

(assert (= bs!973139 (and d!1434720 d!1434256)))

(assert (=> bs!973139 (not (= lambda!183287 lambda!183178))))

(declare-fun bs!973140 () Bool)

(assert (= bs!973140 (and d!1434720 d!1434442)))

(assert (=> bs!973140 (= (= lt!1746234 lt!1745627) (= lambda!183287 lambda!183210))))

(assert (=> bs!973120 (= (= lt!1746234 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183287 lambda!183243))))

(declare-fun bs!973141 () Bool)

(assert (= bs!973141 (and d!1434720 d!1434500)))

(assert (=> bs!973141 (not (= lambda!183287 lambda!183235))))

(assert (=> d!1434720 true))

(declare-fun b!4581257 () Bool)

(declare-fun e!2856828 () Bool)

(assert (=> b!4581257 (= e!2856828 (invariantList!1097 (toList!4552 lt!1746234)))))

(declare-fun b!4581258 () Bool)

(declare-fun res!1914102 () Bool)

(assert (=> b!4581258 (=> (not res!1914102) (not e!2856828))))

(assert (=> b!4581258 (= res!1914102 (forall!10502 (toList!4552 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) lambda!183287))))

(declare-fun call!319812 () Bool)

(declare-fun c!784158 () Bool)

(declare-fun bm!319805 () Bool)

(assert (=> bm!319805 (= call!319812 (forall!10502 (ite c!784158 (toList!4552 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (t!358064 (_2!29056 lt!1745216))) (ite c!784158 lambda!183278 lambda!183283)))))

(declare-fun e!2856827 () ListMap!3813)

(assert (=> b!4581259 (= e!2856827 lt!1746231)))

(declare-fun lt!1746229 () ListMap!3813)

(assert (=> b!4581259 (= lt!1746229 (+!1710 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(assert (=> b!4581259 (= lt!1746231 (addToMapMapFromBucket!785 (t!358064 (t!358064 (_2!29056 lt!1745216))) (+!1710 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) (h!56885 (t!358064 (_2!29056 lt!1745216))))))))

(declare-fun lt!1746233 () Unit!105525)

(declare-fun call!319811 () Unit!105525)

(assert (=> b!4581259 (= lt!1746233 call!319811)))

(assert (=> b!4581259 (forall!10502 (toList!4552 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) lambda!183280)))

(declare-fun lt!1746248 () Unit!105525)

(assert (=> b!4581259 (= lt!1746248 lt!1746233)))

(assert (=> b!4581259 (forall!10502 (toList!4552 lt!1746229) lambda!183283)))

(declare-fun lt!1746243 () Unit!105525)

(declare-fun Unit!105794 () Unit!105525)

(assert (=> b!4581259 (= lt!1746243 Unit!105794)))

(assert (=> b!4581259 (forall!10502 (t!358064 (t!358064 (_2!29056 lt!1745216))) lambda!183283)))

(declare-fun lt!1746241 () Unit!105525)

(declare-fun Unit!105795 () Unit!105525)

(assert (=> b!4581259 (= lt!1746241 Unit!105795)))

(declare-fun lt!1746238 () Unit!105525)

(declare-fun Unit!105796 () Unit!105525)

(assert (=> b!4581259 (= lt!1746238 Unit!105796)))

(declare-fun lt!1746245 () Unit!105525)

(assert (=> b!4581259 (= lt!1746245 (forallContained!2765 (toList!4552 lt!1746229) lambda!183283 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(assert (=> b!4581259 (contains!13846 lt!1746229 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746235 () Unit!105525)

(declare-fun Unit!105797 () Unit!105525)

(assert (=> b!4581259 (= lt!1746235 Unit!105797)))

(assert (=> b!4581259 (contains!13846 lt!1746231 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746240 () Unit!105525)

(declare-fun Unit!105798 () Unit!105525)

(assert (=> b!4581259 (= lt!1746240 Unit!105798)))

(assert (=> b!4581259 call!319812))

(declare-fun lt!1746237 () Unit!105525)

(declare-fun Unit!105799 () Unit!105525)

(assert (=> b!4581259 (= lt!1746237 Unit!105799)))

(declare-fun call!319810 () Bool)

(assert (=> b!4581259 call!319810))

(declare-fun lt!1746239 () Unit!105525)

(declare-fun Unit!105800 () Unit!105525)

(assert (=> b!4581259 (= lt!1746239 Unit!105800)))

(declare-fun lt!1746242 () Unit!105525)

(declare-fun Unit!105801 () Unit!105525)

(assert (=> b!4581259 (= lt!1746242 Unit!105801)))

(declare-fun lt!1746246 () Unit!105525)

(assert (=> b!4581259 (= lt!1746246 (addForallContainsKeyThenBeforeAdding!414 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))) lt!1746231 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))) (_2!29055 (h!56885 (t!358064 (_2!29056 lt!1745216))))))))

(assert (=> b!4581259 (forall!10502 (toList!4552 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) lambda!183283)))

(declare-fun lt!1746244 () Unit!105525)

(assert (=> b!4581259 (= lt!1746244 lt!1746246)))

(assert (=> b!4581259 (forall!10502 (toList!4552 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) lambda!183283)))

(declare-fun lt!1746232 () Unit!105525)

(declare-fun Unit!105802 () Unit!105525)

(assert (=> b!4581259 (= lt!1746232 Unit!105802)))

(declare-fun res!1914103 () Bool)

(assert (=> b!4581259 (= res!1914103 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183283))))

(declare-fun e!2856826 () Bool)

(assert (=> b!4581259 (=> (not res!1914103) (not e!2856826))))

(assert (=> b!4581259 e!2856826))

(declare-fun lt!1746236 () Unit!105525)

(declare-fun Unit!105803 () Unit!105525)

(assert (=> b!4581259 (= lt!1746236 Unit!105803)))

(assert (=> b!4581260 (= e!2856827 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1746247 () Unit!105525)

(assert (=> b!4581260 (= lt!1746247 call!319811)))

(assert (=> b!4581260 call!319812))

(declare-fun lt!1746228 () Unit!105525)

(assert (=> b!4581260 (= lt!1746228 lt!1746247)))

(assert (=> b!4581260 call!319810))

(declare-fun lt!1746230 () Unit!105525)

(declare-fun Unit!105804 () Unit!105525)

(assert (=> b!4581260 (= lt!1746230 Unit!105804)))

(declare-fun bm!319806 () Bool)

(assert (=> bm!319806 (= call!319810 (forall!10502 (ite c!784158 (toList!4552 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (toList!4552 lt!1746229)) (ite c!784158 lambda!183278 lambda!183283)))))

(assert (=> d!1434720 e!2856828))

(declare-fun res!1914104 () Bool)

(assert (=> d!1434720 (=> (not res!1914104) (not e!2856828))))

(assert (=> d!1434720 (= res!1914104 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183287))))

(assert (=> d!1434720 (= lt!1746234 e!2856827)))

(assert (=> d!1434720 (= c!784158 ((_ is Nil!50950) (t!358064 (_2!29056 lt!1745216))))))

(assert (=> d!1434720 (noDuplicateKeys!1272 (t!358064 (_2!29056 lt!1745216)))))

(assert (=> d!1434720 (= (addToMapMapFromBucket!785 (t!358064 (_2!29056 lt!1745216)) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) lt!1746234)))

(declare-fun bm!319807 () Bool)

(assert (=> bm!319807 (= call!319811 (lemmaContainsAllItsOwnKeys!414 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun b!4581261 () Bool)

(assert (=> b!4581261 (= e!2856826 (forall!10502 (toList!4552 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) lambda!183283))))

(assert (= (and d!1434720 c!784158) b!4581260))

(assert (= (and d!1434720 (not c!784158)) b!4581259))

(assert (= (and b!4581259 res!1914103) b!4581261))

(assert (= (or b!4581260 b!4581259) bm!319806))

(assert (= (or b!4581260 b!4581259) bm!319805))

(assert (= (or b!4581260 b!4581259) bm!319807))

(assert (= (and d!1434720 res!1914104) b!4581258))

(assert (= (and b!4581258 res!1914102) b!4581257))

(declare-fun m!5392305 () Bool)

(assert (=> b!4581261 m!5392305))

(declare-fun m!5392307 () Bool)

(assert (=> d!1434720 m!5392307))

(assert (=> d!1434720 m!5390635))

(declare-fun m!5392309 () Bool)

(assert (=> bm!319805 m!5392309))

(assert (=> bm!319807 m!5390647))

(declare-fun m!5392311 () Bool)

(assert (=> bm!319807 m!5392311))

(declare-fun m!5392313 () Bool)

(assert (=> b!4581259 m!5392313))

(declare-fun m!5392315 () Bool)

(assert (=> b!4581259 m!5392315))

(declare-fun m!5392317 () Bool)

(assert (=> b!4581259 m!5392317))

(assert (=> b!4581259 m!5392305))

(declare-fun m!5392319 () Bool)

(assert (=> b!4581259 m!5392319))

(declare-fun m!5392321 () Bool)

(assert (=> b!4581259 m!5392321))

(declare-fun m!5392323 () Bool)

(assert (=> b!4581259 m!5392323))

(declare-fun m!5392325 () Bool)

(assert (=> b!4581259 m!5392325))

(assert (=> b!4581259 m!5390647))

(assert (=> b!4581259 m!5392313))

(declare-fun m!5392327 () Bool)

(assert (=> b!4581259 m!5392327))

(declare-fun m!5392329 () Bool)

(assert (=> b!4581259 m!5392329))

(assert (=> b!4581259 m!5392305))

(assert (=> b!4581259 m!5390647))

(declare-fun m!5392331 () Bool)

(assert (=> b!4581259 m!5392331))

(declare-fun m!5392333 () Bool)

(assert (=> b!4581257 m!5392333))

(declare-fun m!5392335 () Bool)

(assert (=> b!4581258 m!5392335))

(declare-fun m!5392337 () Bool)

(assert (=> bm!319806 m!5392337))

(assert (=> b!4580368 d!1434720))

(assert (=> b!4580368 d!1434586))

(assert (=> b!4580064 d!1434358))

(assert (=> b!4580064 d!1434360))

(declare-fun d!1434752 () Bool)

(declare-fun res!1914119 () Bool)

(declare-fun e!2856852 () Bool)

(assert (=> d!1434752 (=> res!1914119 e!2856852)))

(assert (=> d!1434752 (= res!1914119 ((_ is Nil!50950) (t!358064 (_2!29056 lt!1745216))))))

(assert (=> d!1434752 (= (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183142) e!2856852)))

(declare-fun b!4581298 () Bool)

(declare-fun e!2856853 () Bool)

(assert (=> b!4581298 (= e!2856852 e!2856853)))

(declare-fun res!1914120 () Bool)

(assert (=> b!4581298 (=> (not res!1914120) (not e!2856853))))

(assert (=> b!4581298 (= res!1914120 (dynLambda!21336 lambda!183142 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun b!4581299 () Bool)

(assert (=> b!4581299 (= e!2856853 (forall!10502 (t!358064 (t!358064 (_2!29056 lt!1745216))) lambda!183142))))

(assert (= (and d!1434752 (not res!1914119)) b!4581298))

(assert (= (and b!4581298 res!1914120) b!4581299))

(declare-fun b_lambda!166127 () Bool)

(assert (=> (not b_lambda!166127) (not b!4581298)))

(declare-fun m!5392355 () Bool)

(assert (=> b!4581298 m!5392355))

(declare-fun m!5392357 () Bool)

(assert (=> b!4581299 m!5392357))

(assert (=> b!4580257 d!1434752))

(declare-fun d!1434756 () Bool)

(declare-fun res!1914121 () Bool)

(declare-fun e!2856854 () Bool)

(assert (=> d!1434756 (=> res!1914121 e!2856854)))

(assert (=> d!1434756 (= res!1914121 ((_ is Nil!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434756 (= (forall!10502 (_2!29056 lt!1745216) lambda!183142) e!2856854)))

(declare-fun b!4581300 () Bool)

(declare-fun e!2856855 () Bool)

(assert (=> b!4581300 (= e!2856854 e!2856855)))

(declare-fun res!1914122 () Bool)

(assert (=> b!4581300 (=> (not res!1914122) (not e!2856855))))

(assert (=> b!4581300 (= res!1914122 (dynLambda!21336 lambda!183142 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun b!4581301 () Bool)

(assert (=> b!4581301 (= e!2856855 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183142))))

(assert (= (and d!1434756 (not res!1914121)) b!4581300))

(assert (= (and b!4581300 res!1914122) b!4581301))

(declare-fun b_lambda!166129 () Bool)

(assert (=> (not b_lambda!166129) (not b!4581300)))

(declare-fun m!5392359 () Bool)

(assert (=> b!4581300 m!5392359))

(assert (=> b!4581301 m!5390361))

(assert (=> b!4580257 d!1434756))

(declare-fun d!1434758 () Bool)

(assert (=> d!1434758 (dynLambda!21336 lambda!183142 (h!56885 (_2!29056 lt!1745216)))))

(declare-fun lt!1746262 () Unit!105525)

(assert (=> d!1434758 (= lt!1746262 (choose!30522 (toList!4552 lt!1745574) lambda!183142 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun e!2856856 () Bool)

(assert (=> d!1434758 e!2856856))

(declare-fun res!1914123 () Bool)

(assert (=> d!1434758 (=> (not res!1914123) (not e!2856856))))

(assert (=> d!1434758 (= res!1914123 (forall!10502 (toList!4552 lt!1745574) lambda!183142))))

(assert (=> d!1434758 (= (forallContained!2765 (toList!4552 lt!1745574) lambda!183142 (h!56885 (_2!29056 lt!1745216))) lt!1746262)))

(declare-fun b!4581302 () Bool)

(assert (=> b!4581302 (= e!2856856 (contains!13851 (toList!4552 lt!1745574) (h!56885 (_2!29056 lt!1745216))))))

(assert (= (and d!1434758 res!1914123) b!4581302))

(declare-fun b_lambda!166131 () Bool)

(assert (=> (not b_lambda!166131) (not d!1434758)))

(assert (=> d!1434758 m!5392359))

(declare-fun m!5392361 () Bool)

(assert (=> d!1434758 m!5392361))

(assert (=> d!1434758 m!5390373))

(declare-fun m!5392363 () Bool)

(assert (=> b!4581302 m!5392363))

(assert (=> b!4580257 d!1434758))

(declare-fun bs!973142 () Bool)

(declare-fun b!4581306 () Bool)

(assert (= bs!973142 (and b!4581306 b!4580368)))

(declare-fun lambda!183288 () Int)

(assert (=> bs!973142 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183288 lambda!183166))))

(declare-fun bs!973143 () Bool)

(assert (= bs!973143 (and b!4581306 b!4580772)))

(assert (=> bs!973143 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745913) (= lambda!183288 lambda!183232))))

(declare-fun bs!973144 () Bool)

(assert (= bs!973144 (and b!4581306 b!4580664)))

(assert (=> bs!973144 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183288 lambda!183211))))

(declare-fun bs!973145 () Bool)

(assert (= bs!973145 (and b!4581306 b!4580305)))

(assert (=> bs!973145 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183288 lambda!183159))))

(declare-fun bs!973146 () Bool)

(assert (= bs!973146 (and b!4581306 b!4581137)))

(assert (=> bs!973146 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (-!480 lt!1745232 key!3287)) (= lambda!183288 lambda!183257))))

(declare-fun bs!973147 () Bool)

(assert (= bs!973147 (and b!4581306 b!4581259)))

(assert (=> bs!973147 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746231) (= lambda!183288 lambda!183283))))

(declare-fun bs!973148 () Bool)

(assert (= bs!973148 (and b!4581306 d!1434184)))

(assert (=> bs!973148 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745630) (= lambda!183288 lambda!183160))))

(declare-fun bs!973149 () Bool)

(assert (= bs!973149 (and b!4581306 d!1434710)))

(assert (=> bs!973149 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183288 lambda!183270))))

(declare-fun bs!973150 () Bool)

(assert (= bs!973150 (and b!4581306 b!4580257)))

(assert (=> bs!973150 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745576) (= lambda!183288 lambda!183142))))

(declare-fun bs!973151 () Bool)

(assert (= bs!973151 (and b!4581306 d!1434446)))

(assert (=> bs!973151 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745852) (= lambda!183288 lambda!183214))))

(declare-fun bs!973152 () Bool)

(assert (= bs!973152 (and b!4581306 b!4580536)))

(assert (=> bs!973152 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183288 lambda!183190))))

(declare-fun bs!973153 () Bool)

(assert (= bs!973153 (and b!4581306 b!4580306)))

(assert (=> bs!973153 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183288 lambda!183157))))

(declare-fun bs!973154 () Bool)

(assert (= bs!973154 (and b!4581306 d!1434424)))

(assert (=> bs!973154 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183288 lambda!183205))))

(assert (=> bs!973142 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183288 lambda!183165))))

(declare-fun bs!973155 () Bool)

(assert (= bs!973155 (and b!4581306 b!4581136)))

(assert (=> bs!973155 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746150) (= lambda!183288 lambda!183260))))

(assert (=> bs!973155 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (-!480 lt!1745232 key!3287)) (= lambda!183288 lambda!183259))))

(declare-fun bs!973156 () Bool)

(assert (= bs!973156 (and b!4581306 b!4580574)))

(assert (=> bs!973156 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745787) (= lambda!183288 lambda!183202))))

(declare-fun bs!973157 () Bool)

(assert (= bs!973157 (and b!4581306 b!4581260)))

(assert (=> bs!973157 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183288 lambda!183278))))

(declare-fun bs!973158 () Bool)

(assert (= bs!973158 (and b!4581306 b!4580773)))

(assert (=> bs!973158 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183288 lambda!183230))))

(declare-fun bs!973159 () Bool)

(assert (= bs!973159 (and b!4581306 b!4580955)))

(assert (=> bs!973159 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746040) (= lambda!183288 lambda!183244))))

(declare-fun bs!973160 () Bool)

(assert (= bs!973160 (and b!4581306 d!1434224)))

(assert (=> bs!973160 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745668) (= lambda!183288 lambda!183167))))

(assert (=> bs!973147 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183288 lambda!183280))))

(declare-fun bs!973161 () Bool)

(assert (= bs!973161 (and b!4581306 d!1434366)))

(assert (=> bs!973161 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745790) (= lambda!183288 lambda!183203))))

(declare-fun bs!973162 () Bool)

(assert (= bs!973162 (and b!4581306 d!1434060)))

(assert (=> bs!973162 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745579) (= lambda!183288 lambda!183143))))

(declare-fun bs!973163 () Bool)

(assert (= bs!973163 (and b!4581306 d!1434648)))

(assert (=> bs!973163 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746153) (= lambda!183288 lambda!183265))))

(declare-fun bs!973164 () Bool)

(assert (= bs!973164 (and b!4581306 d!1434338)))

(assert (=> bs!973164 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745759) (= lambda!183288 lambda!183193))))

(assert (=> bs!973145 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183288 lambda!183158))))

(declare-fun bs!973165 () Bool)

(assert (= bs!973165 (and b!4581306 b!4579991)))

(assert (=> bs!973165 (not (= lambda!183288 lambda!183043))))

(declare-fun bs!973166 () Bool)

(assert (= bs!973166 (and b!4581306 b!4580535)))

(assert (=> bs!973166 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745756) (= lambda!183288 lambda!183192))))

(declare-fun bs!973167 () Bool)

(assert (= bs!973167 (and b!4581306 b!4580369)))

(assert (=> bs!973167 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183288 lambda!183164))))

(declare-fun bs!973168 () Bool)

(assert (= bs!973168 (and b!4581306 b!4580575)))

(assert (=> bs!973168 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183288 lambda!183200))))

(declare-fun bs!973169 () Bool)

(assert (= bs!973169 (and b!4581306 d!1434556)))

(assert (=> bs!973169 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746043) (= lambda!183288 lambda!183245))))

(assert (=> bs!973166 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183288 lambda!183191))))

(assert (=> bs!973143 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183288 lambda!183231))))

(declare-fun bs!973170 () Bool)

(assert (= bs!973170 (and b!4581306 b!4580663)))

(assert (=> bs!973170 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745849) (= lambda!183288 lambda!183213))))

(declare-fun bs!973171 () Bool)

(assert (= bs!973171 (and b!4581306 d!1434720)))

(assert (=> bs!973171 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746234) (= lambda!183288 lambda!183287))))

(declare-fun bs!973172 () Bool)

(assert (= bs!973172 (and b!4581306 b!4580956)))

(assert (=> bs!973172 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183288 lambda!183242))))

(assert (=> bs!973156 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183288 lambda!183201))))

(declare-fun bs!973173 () Bool)

(assert (= bs!973173 (and b!4581306 b!4580258)))

(assert (=> bs!973173 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183288 lambda!183140))))

(declare-fun bs!973174 () Bool)

(assert (= bs!973174 (and b!4581306 d!1434486)))

(assert (=> bs!973174 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745916) (= lambda!183288 lambda!183233))))

(assert (=> bs!973150 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183288 lambda!183141))))

(declare-fun bs!973175 () Bool)

(assert (= bs!973175 (and b!4581306 d!1434448)))

(assert (=> bs!973175 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183288 lambda!183215))))

(assert (=> bs!973170 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183288 lambda!183212))))

(declare-fun bs!973176 () Bool)

(assert (= bs!973176 (and b!4581306 d!1434344)))

(assert (=> bs!973176 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183288 lambda!183199))))

(declare-fun bs!973177 () Bool)

(assert (= bs!973177 (and b!4581306 d!1434256)))

(assert (=> bs!973177 (not (= lambda!183288 lambda!183178))))

(declare-fun bs!973178 () Bool)

(assert (= bs!973178 (and b!4581306 d!1434442)))

(assert (=> bs!973178 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183288 lambda!183210))))

(assert (=> bs!973159 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183288 lambda!183243))))

(declare-fun bs!973179 () Bool)

(assert (= bs!973179 (and b!4581306 d!1434500)))

(assert (=> bs!973179 (not (= lambda!183288 lambda!183235))))

(assert (=> b!4581306 true))

(declare-fun bs!973180 () Bool)

(declare-fun b!4581305 () Bool)

(assert (= bs!973180 (and b!4581305 b!4580368)))

(declare-fun lambda!183289 () Int)

(assert (=> bs!973180 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183289 lambda!183166))))

(declare-fun bs!973181 () Bool)

(assert (= bs!973181 (and b!4581305 b!4580772)))

(assert (=> bs!973181 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745913) (= lambda!183289 lambda!183232))))

(declare-fun bs!973182 () Bool)

(assert (= bs!973182 (and b!4581305 b!4580664)))

(assert (=> bs!973182 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183289 lambda!183211))))

(declare-fun bs!973183 () Bool)

(assert (= bs!973183 (and b!4581305 b!4580305)))

(assert (=> bs!973183 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183289 lambda!183159))))

(declare-fun bs!973184 () Bool)

(assert (= bs!973184 (and b!4581305 b!4581137)))

(assert (=> bs!973184 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (-!480 lt!1745232 key!3287)) (= lambda!183289 lambda!183257))))

(declare-fun bs!973185 () Bool)

(assert (= bs!973185 (and b!4581305 b!4581259)))

(assert (=> bs!973185 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746231) (= lambda!183289 lambda!183283))))

(declare-fun bs!973186 () Bool)

(assert (= bs!973186 (and b!4581305 d!1434184)))

(assert (=> bs!973186 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745630) (= lambda!183289 lambda!183160))))

(declare-fun bs!973187 () Bool)

(assert (= bs!973187 (and b!4581305 d!1434710)))

(assert (=> bs!973187 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745665) (= lambda!183289 lambda!183270))))

(declare-fun bs!973188 () Bool)

(assert (= bs!973188 (and b!4581305 b!4580257)))

(assert (=> bs!973188 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745576) (= lambda!183289 lambda!183142))))

(declare-fun bs!973189 () Bool)

(assert (= bs!973189 (and b!4581305 b!4581306)))

(assert (=> bs!973189 (= lambda!183289 lambda!183288)))

(declare-fun bs!973190 () Bool)

(assert (= bs!973190 (and b!4581305 d!1434446)))

(assert (=> bs!973190 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745852) (= lambda!183289 lambda!183214))))

(declare-fun bs!973191 () Bool)

(assert (= bs!973191 (and b!4581305 b!4580536)))

(assert (=> bs!973191 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183289 lambda!183190))))

(declare-fun bs!973192 () Bool)

(assert (= bs!973192 (and b!4581305 b!4580306)))

(assert (=> bs!973192 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183289 lambda!183157))))

(declare-fun bs!973193 () Bool)

(assert (= bs!973193 (and b!4581305 d!1434424)))

(assert (=> bs!973193 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183289 lambda!183205))))

(assert (=> bs!973180 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183289 lambda!183165))))

(declare-fun bs!973194 () Bool)

(assert (= bs!973194 (and b!4581305 b!4581136)))

(assert (=> bs!973194 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746150) (= lambda!183289 lambda!183260))))

(assert (=> bs!973194 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (-!480 lt!1745232 key!3287)) (= lambda!183289 lambda!183259))))

(declare-fun bs!973195 () Bool)

(assert (= bs!973195 (and b!4581305 b!4580574)))

(assert (=> bs!973195 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745787) (= lambda!183289 lambda!183202))))

(declare-fun bs!973196 () Bool)

(assert (= bs!973196 (and b!4581305 b!4581260)))

(assert (=> bs!973196 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183289 lambda!183278))))

(declare-fun bs!973197 () Bool)

(assert (= bs!973197 (and b!4581305 b!4580773)))

(assert (=> bs!973197 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183289 lambda!183230))))

(declare-fun bs!973198 () Bool)

(assert (= bs!973198 (and b!4581305 b!4580955)))

(assert (=> bs!973198 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746040) (= lambda!183289 lambda!183244))))

(declare-fun bs!973199 () Bool)

(assert (= bs!973199 (and b!4581305 d!1434224)))

(assert (=> bs!973199 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745668) (= lambda!183289 lambda!183167))))

(assert (=> bs!973185 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183289 lambda!183280))))

(declare-fun bs!973200 () Bool)

(assert (= bs!973200 (and b!4581305 d!1434366)))

(assert (=> bs!973200 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745790) (= lambda!183289 lambda!183203))))

(declare-fun bs!973201 () Bool)

(assert (= bs!973201 (and b!4581305 d!1434060)))

(assert (=> bs!973201 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745579) (= lambda!183289 lambda!183143))))

(declare-fun bs!973202 () Bool)

(assert (= bs!973202 (and b!4581305 d!1434648)))

(assert (=> bs!973202 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746153) (= lambda!183289 lambda!183265))))

(declare-fun bs!973203 () Bool)

(assert (= bs!973203 (and b!4581305 d!1434338)))

(assert (=> bs!973203 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745759) (= lambda!183289 lambda!183193))))

(assert (=> bs!973183 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183289 lambda!183158))))

(declare-fun bs!973204 () Bool)

(assert (= bs!973204 (and b!4581305 b!4579991)))

(assert (=> bs!973204 (not (= lambda!183289 lambda!183043))))

(declare-fun bs!973205 () Bool)

(assert (= bs!973205 (and b!4581305 b!4580535)))

(assert (=> bs!973205 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745756) (= lambda!183289 lambda!183192))))

(declare-fun bs!973206 () Bool)

(assert (= bs!973206 (and b!4581305 b!4580369)))

(assert (=> bs!973206 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745214) (= lambda!183289 lambda!183164))))

(declare-fun bs!973207 () Bool)

(assert (= bs!973207 (and b!4581305 b!4580575)))

(assert (=> bs!973207 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183289 lambda!183200))))

(declare-fun bs!973208 () Bool)

(assert (= bs!973208 (and b!4581305 d!1434556)))

(assert (=> bs!973208 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746043) (= lambda!183289 lambda!183245))))

(assert (=> bs!973205 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183289 lambda!183191))))

(assert (=> bs!973181 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183289 lambda!183231))))

(declare-fun bs!973209 () Bool)

(assert (= bs!973209 (and b!4581305 b!4580663)))

(assert (=> bs!973209 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745849) (= lambda!183289 lambda!183213))))

(declare-fun bs!973210 () Bool)

(assert (= bs!973210 (and b!4581305 d!1434720)))

(assert (=> bs!973210 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746234) (= lambda!183289 lambda!183287))))

(declare-fun bs!973211 () Bool)

(assert (= bs!973211 (and b!4581305 b!4580956)))

(assert (=> bs!973211 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183289 lambda!183242))))

(assert (=> bs!973195 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183289 lambda!183201))))

(declare-fun bs!973212 () Bool)

(assert (= bs!973212 (and b!4581305 b!4580258)))

(assert (=> bs!973212 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183289 lambda!183140))))

(declare-fun bs!973213 () Bool)

(assert (= bs!973213 (and b!4581305 d!1434486)))

(assert (=> bs!973213 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745916) (= lambda!183289 lambda!183233))))

(assert (=> bs!973188 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183289 lambda!183141))))

(declare-fun bs!973214 () Bool)

(assert (= bs!973214 (and b!4581305 d!1434448)))

(assert (=> bs!973214 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745218) (= lambda!183289 lambda!183215))))

(assert (=> bs!973209 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183289 lambda!183212))))

(declare-fun bs!973215 () Bool)

(assert (= bs!973215 (and b!4581305 d!1434344)))

(assert (=> bs!973215 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745232) (= lambda!183289 lambda!183199))))

(declare-fun bs!973216 () Bool)

(assert (= bs!973216 (and b!4581305 d!1434256)))

(assert (=> bs!973216 (not (= lambda!183289 lambda!183178))))

(declare-fun bs!973217 () Bool)

(assert (= bs!973217 (and b!4581305 d!1434442)))

(assert (=> bs!973217 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1745627) (= lambda!183289 lambda!183210))))

(assert (=> bs!973198 (= (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183289 lambda!183243))))

(declare-fun bs!973218 () Bool)

(assert (= bs!973218 (and b!4581305 d!1434500)))

(assert (=> bs!973218 (not (= lambda!183289 lambda!183235))))

(assert (=> b!4581305 true))

(declare-fun lambda!183290 () Int)

(declare-fun lt!1746266 () ListMap!3813)

(assert (=> bs!973180 (= (= lt!1746266 lt!1745665) (= lambda!183290 lambda!183166))))

(assert (=> b!4581305 (= (= lt!1746266 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183290 lambda!183289))))

(assert (=> bs!973181 (= (= lt!1746266 lt!1745913) (= lambda!183290 lambda!183232))))

(assert (=> bs!973182 (= (= lt!1746266 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183290 lambda!183211))))

(assert (=> bs!973183 (= (= lt!1746266 lt!1745627) (= lambda!183290 lambda!183159))))

(assert (=> bs!973184 (= (= lt!1746266 (-!480 lt!1745232 key!3287)) (= lambda!183290 lambda!183257))))

(assert (=> bs!973185 (= (= lt!1746266 lt!1746231) (= lambda!183290 lambda!183283))))

(assert (=> bs!973186 (= (= lt!1746266 lt!1745630) (= lambda!183290 lambda!183160))))

(assert (=> bs!973187 (= (= lt!1746266 lt!1745665) (= lambda!183290 lambda!183270))))

(assert (=> bs!973188 (= (= lt!1746266 lt!1745576) (= lambda!183290 lambda!183142))))

(assert (=> bs!973189 (= (= lt!1746266 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183290 lambda!183288))))

(assert (=> bs!973190 (= (= lt!1746266 lt!1745852) (= lambda!183290 lambda!183214))))

(assert (=> bs!973191 (= (= lt!1746266 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183290 lambda!183190))))

(assert (=> bs!973192 (= (= lt!1746266 lt!1745232) (= lambda!183290 lambda!183157))))

(assert (=> bs!973193 (= (= lt!1746266 lt!1745214) (= lambda!183290 lambda!183205))))

(assert (=> bs!973180 (= (= lt!1746266 lt!1745214) (= lambda!183290 lambda!183165))))

(assert (=> bs!973194 (= (= lt!1746266 lt!1746150) (= lambda!183290 lambda!183260))))

(assert (=> bs!973194 (= (= lt!1746266 (-!480 lt!1745232 key!3287)) (= lambda!183290 lambda!183259))))

(assert (=> bs!973195 (= (= lt!1746266 lt!1745787) (= lambda!183290 lambda!183202))))

(assert (=> bs!973196 (= (= lt!1746266 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183290 lambda!183278))))

(assert (=> bs!973197 (= (= lt!1746266 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183290 lambda!183230))))

(assert (=> bs!973198 (= (= lt!1746266 lt!1746040) (= lambda!183290 lambda!183244))))

(assert (=> bs!973199 (= (= lt!1746266 lt!1745668) (= lambda!183290 lambda!183167))))

(assert (=> bs!973185 (= (= lt!1746266 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183290 lambda!183280))))

(assert (=> bs!973200 (= (= lt!1746266 lt!1745790) (= lambda!183290 lambda!183203))))

(assert (=> bs!973201 (= (= lt!1746266 lt!1745579) (= lambda!183290 lambda!183143))))

(assert (=> bs!973202 (= (= lt!1746266 lt!1746153) (= lambda!183290 lambda!183265))))

(assert (=> bs!973203 (= (= lt!1746266 lt!1745759) (= lambda!183290 lambda!183193))))

(assert (=> bs!973183 (= (= lt!1746266 lt!1745232) (= lambda!183290 lambda!183158))))

(assert (=> bs!973204 (not (= lambda!183290 lambda!183043))))

(assert (=> bs!973205 (= (= lt!1746266 lt!1745756) (= lambda!183290 lambda!183192))))

(assert (=> bs!973206 (= (= lt!1746266 lt!1745214) (= lambda!183290 lambda!183164))))

(assert (=> bs!973207 (= (= lt!1746266 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183290 lambda!183200))))

(assert (=> bs!973208 (= (= lt!1746266 lt!1746043) (= lambda!183290 lambda!183245))))

(assert (=> bs!973205 (= (= lt!1746266 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183290 lambda!183191))))

(assert (=> bs!973181 (= (= lt!1746266 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183290 lambda!183231))))

(assert (=> bs!973209 (= (= lt!1746266 lt!1745849) (= lambda!183290 lambda!183213))))

(assert (=> bs!973210 (= (= lt!1746266 lt!1746234) (= lambda!183290 lambda!183287))))

(assert (=> bs!973211 (= (= lt!1746266 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183290 lambda!183242))))

(assert (=> bs!973195 (= (= lt!1746266 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183290 lambda!183201))))

(assert (=> bs!973212 (= (= lt!1746266 lt!1745218) (= lambda!183290 lambda!183140))))

(assert (=> bs!973213 (= (= lt!1746266 lt!1745916) (= lambda!183290 lambda!183233))))

(assert (=> bs!973188 (= (= lt!1746266 lt!1745218) (= lambda!183290 lambda!183141))))

(assert (=> bs!973214 (= (= lt!1746266 lt!1745218) (= lambda!183290 lambda!183215))))

(assert (=> bs!973209 (= (= lt!1746266 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183290 lambda!183212))))

(assert (=> bs!973215 (= (= lt!1746266 lt!1745232) (= lambda!183290 lambda!183199))))

(assert (=> bs!973216 (not (= lambda!183290 lambda!183178))))

(assert (=> bs!973217 (= (= lt!1746266 lt!1745627) (= lambda!183290 lambda!183210))))

(assert (=> bs!973198 (= (= lt!1746266 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183290 lambda!183243))))

(assert (=> bs!973218 (not (= lambda!183290 lambda!183235))))

(assert (=> b!4581305 true))

(declare-fun bs!973219 () Bool)

(declare-fun d!1434760 () Bool)

(assert (= bs!973219 (and d!1434760 b!4580368)))

(declare-fun lambda!183291 () Int)

(declare-fun lt!1746269 () ListMap!3813)

(assert (=> bs!973219 (= (= lt!1746269 lt!1745665) (= lambda!183291 lambda!183166))))

(declare-fun bs!973220 () Bool)

(assert (= bs!973220 (and d!1434760 b!4581305)))

(assert (=> bs!973220 (= (= lt!1746269 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183291 lambda!183289))))

(declare-fun bs!973221 () Bool)

(assert (= bs!973221 (and d!1434760 b!4580772)))

(assert (=> bs!973221 (= (= lt!1746269 lt!1745913) (= lambda!183291 lambda!183232))))

(declare-fun bs!973222 () Bool)

(assert (= bs!973222 (and d!1434760 b!4580664)))

(assert (=> bs!973222 (= (= lt!1746269 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183291 lambda!183211))))

(declare-fun bs!973223 () Bool)

(assert (= bs!973223 (and d!1434760 b!4580305)))

(assert (=> bs!973223 (= (= lt!1746269 lt!1745627) (= lambda!183291 lambda!183159))))

(declare-fun bs!973224 () Bool)

(assert (= bs!973224 (and d!1434760 b!4581137)))

(assert (=> bs!973224 (= (= lt!1746269 (-!480 lt!1745232 key!3287)) (= lambda!183291 lambda!183257))))

(declare-fun bs!973225 () Bool)

(assert (= bs!973225 (and d!1434760 b!4581259)))

(assert (=> bs!973225 (= (= lt!1746269 lt!1746231) (= lambda!183291 lambda!183283))))

(declare-fun bs!973226 () Bool)

(assert (= bs!973226 (and d!1434760 d!1434710)))

(assert (=> bs!973226 (= (= lt!1746269 lt!1745665) (= lambda!183291 lambda!183270))))

(declare-fun bs!973227 () Bool)

(assert (= bs!973227 (and d!1434760 b!4580257)))

(assert (=> bs!973227 (= (= lt!1746269 lt!1745576) (= lambda!183291 lambda!183142))))

(declare-fun bs!973228 () Bool)

(assert (= bs!973228 (and d!1434760 b!4581306)))

(assert (=> bs!973228 (= (= lt!1746269 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183291 lambda!183288))))

(declare-fun bs!973229 () Bool)

(assert (= bs!973229 (and d!1434760 d!1434446)))

(assert (=> bs!973229 (= (= lt!1746269 lt!1745852) (= lambda!183291 lambda!183214))))

(declare-fun bs!973230 () Bool)

(assert (= bs!973230 (and d!1434760 b!4580536)))

(assert (=> bs!973230 (= (= lt!1746269 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183291 lambda!183190))))

(declare-fun bs!973231 () Bool)

(assert (= bs!973231 (and d!1434760 b!4580306)))

(assert (=> bs!973231 (= (= lt!1746269 lt!1745232) (= lambda!183291 lambda!183157))))

(declare-fun bs!973232 () Bool)

(assert (= bs!973232 (and d!1434760 d!1434424)))

(assert (=> bs!973232 (= (= lt!1746269 lt!1745214) (= lambda!183291 lambda!183205))))

(assert (=> bs!973219 (= (= lt!1746269 lt!1745214) (= lambda!183291 lambda!183165))))

(declare-fun bs!973233 () Bool)

(assert (= bs!973233 (and d!1434760 b!4581136)))

(assert (=> bs!973233 (= (= lt!1746269 lt!1746150) (= lambda!183291 lambda!183260))))

(assert (=> bs!973233 (= (= lt!1746269 (-!480 lt!1745232 key!3287)) (= lambda!183291 lambda!183259))))

(declare-fun bs!973234 () Bool)

(assert (= bs!973234 (and d!1434760 b!4580574)))

(assert (=> bs!973234 (= (= lt!1746269 lt!1745787) (= lambda!183291 lambda!183202))))

(declare-fun bs!973235 () Bool)

(assert (= bs!973235 (and d!1434760 b!4581260)))

(assert (=> bs!973235 (= (= lt!1746269 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183291 lambda!183278))))

(declare-fun bs!973236 () Bool)

(assert (= bs!973236 (and d!1434760 b!4580773)))

(assert (=> bs!973236 (= (= lt!1746269 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183291 lambda!183230))))

(declare-fun bs!973237 () Bool)

(assert (= bs!973237 (and d!1434760 b!4580955)))

(assert (=> bs!973237 (= (= lt!1746269 lt!1746040) (= lambda!183291 lambda!183244))))

(declare-fun bs!973238 () Bool)

(assert (= bs!973238 (and d!1434760 d!1434224)))

(assert (=> bs!973238 (= (= lt!1746269 lt!1745668) (= lambda!183291 lambda!183167))))

(assert (=> bs!973225 (= (= lt!1746269 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183291 lambda!183280))))

(declare-fun bs!973239 () Bool)

(assert (= bs!973239 (and d!1434760 d!1434366)))

(assert (=> bs!973239 (= (= lt!1746269 lt!1745790) (= lambda!183291 lambda!183203))))

(declare-fun bs!973240 () Bool)

(assert (= bs!973240 (and d!1434760 d!1434060)))

(assert (=> bs!973240 (= (= lt!1746269 lt!1745579) (= lambda!183291 lambda!183143))))

(declare-fun bs!973241 () Bool)

(assert (= bs!973241 (and d!1434760 d!1434648)))

(assert (=> bs!973241 (= (= lt!1746269 lt!1746153) (= lambda!183291 lambda!183265))))

(declare-fun bs!973242 () Bool)

(assert (= bs!973242 (and d!1434760 d!1434338)))

(assert (=> bs!973242 (= (= lt!1746269 lt!1745759) (= lambda!183291 lambda!183193))))

(assert (=> bs!973223 (= (= lt!1746269 lt!1745232) (= lambda!183291 lambda!183158))))

(declare-fun bs!973243 () Bool)

(assert (= bs!973243 (and d!1434760 b!4579991)))

(assert (=> bs!973243 (not (= lambda!183291 lambda!183043))))

(declare-fun bs!973244 () Bool)

(assert (= bs!973244 (and d!1434760 b!4580535)))

(assert (=> bs!973244 (= (= lt!1746269 lt!1745756) (= lambda!183291 lambda!183192))))

(declare-fun bs!973245 () Bool)

(assert (= bs!973245 (and d!1434760 b!4580369)))

(assert (=> bs!973245 (= (= lt!1746269 lt!1745214) (= lambda!183291 lambda!183164))))

(declare-fun bs!973246 () Bool)

(assert (= bs!973246 (and d!1434760 b!4580575)))

(assert (=> bs!973246 (= (= lt!1746269 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183291 lambda!183200))))

(declare-fun bs!973247 () Bool)

(assert (= bs!973247 (and d!1434760 d!1434556)))

(assert (=> bs!973247 (= (= lt!1746269 lt!1746043) (= lambda!183291 lambda!183245))))

(assert (=> bs!973244 (= (= lt!1746269 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183291 lambda!183191))))

(assert (=> bs!973221 (= (= lt!1746269 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183291 lambda!183231))))

(declare-fun bs!973248 () Bool)

(assert (= bs!973248 (and d!1434760 b!4580663)))

(assert (=> bs!973248 (= (= lt!1746269 lt!1745849) (= lambda!183291 lambda!183213))))

(declare-fun bs!973249 () Bool)

(assert (= bs!973249 (and d!1434760 d!1434720)))

(assert (=> bs!973249 (= (= lt!1746269 lt!1746234) (= lambda!183291 lambda!183287))))

(declare-fun bs!973250 () Bool)

(assert (= bs!973250 (and d!1434760 b!4580956)))

(assert (=> bs!973250 (= (= lt!1746269 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183291 lambda!183242))))

(assert (=> bs!973234 (= (= lt!1746269 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183291 lambda!183201))))

(declare-fun bs!973251 () Bool)

(assert (= bs!973251 (and d!1434760 b!4580258)))

(assert (=> bs!973251 (= (= lt!1746269 lt!1745218) (= lambda!183291 lambda!183140))))

(declare-fun bs!973252 () Bool)

(assert (= bs!973252 (and d!1434760 d!1434486)))

(assert (=> bs!973252 (= (= lt!1746269 lt!1745916) (= lambda!183291 lambda!183233))))

(assert (=> bs!973227 (= (= lt!1746269 lt!1745218) (= lambda!183291 lambda!183141))))

(declare-fun bs!973253 () Bool)

(assert (= bs!973253 (and d!1434760 d!1434448)))

(assert (=> bs!973253 (= (= lt!1746269 lt!1745218) (= lambda!183291 lambda!183215))))

(declare-fun bs!973254 () Bool)

(assert (= bs!973254 (and d!1434760 d!1434184)))

(assert (=> bs!973254 (= (= lt!1746269 lt!1745630) (= lambda!183291 lambda!183160))))

(assert (=> bs!973220 (= (= lt!1746269 lt!1746266) (= lambda!183291 lambda!183290))))

(assert (=> bs!973248 (= (= lt!1746269 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183291 lambda!183212))))

(declare-fun bs!973255 () Bool)

(assert (= bs!973255 (and d!1434760 d!1434344)))

(assert (=> bs!973255 (= (= lt!1746269 lt!1745232) (= lambda!183291 lambda!183199))))

(declare-fun bs!973256 () Bool)

(assert (= bs!973256 (and d!1434760 d!1434256)))

(assert (=> bs!973256 (not (= lambda!183291 lambda!183178))))

(declare-fun bs!973257 () Bool)

(assert (= bs!973257 (and d!1434760 d!1434442)))

(assert (=> bs!973257 (= (= lt!1746269 lt!1745627) (= lambda!183291 lambda!183210))))

(assert (=> bs!973237 (= (= lt!1746269 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183291 lambda!183243))))

(declare-fun bs!973258 () Bool)

(assert (= bs!973258 (and d!1434760 d!1434500)))

(assert (=> bs!973258 (not (= lambda!183291 lambda!183235))))

(assert (=> d!1434760 true))

(declare-fun b!4581303 () Bool)

(declare-fun e!2856859 () Bool)

(assert (=> b!4581303 (= e!2856859 (invariantList!1097 (toList!4552 lt!1746269)))))

(declare-fun b!4581304 () Bool)

(declare-fun res!1914124 () Bool)

(assert (=> b!4581304 (=> (not res!1914124) (not e!2856859))))

(assert (=> b!4581304 (= res!1914124 (forall!10502 (toList!4552 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) lambda!183291))))

(declare-fun c!784170 () Bool)

(declare-fun bm!319809 () Bool)

(declare-fun call!319816 () Bool)

(assert (=> bm!319809 (= call!319816 (forall!10502 (ite c!784170 (toList!4552 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (t!358064 (_2!29056 lt!1745216))) (ite c!784170 lambda!183288 lambda!183290)))))

(declare-fun e!2856858 () ListMap!3813)

(assert (=> b!4581305 (= e!2856858 lt!1746266)))

(declare-fun lt!1746264 () ListMap!3813)

(assert (=> b!4581305 (= lt!1746264 (+!1710 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(assert (=> b!4581305 (= lt!1746266 (addToMapMapFromBucket!785 (t!358064 (t!358064 (_2!29056 lt!1745216))) (+!1710 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) (h!56885 (t!358064 (_2!29056 lt!1745216))))))))

(declare-fun lt!1746268 () Unit!105525)

(declare-fun call!319815 () Unit!105525)

(assert (=> b!4581305 (= lt!1746268 call!319815)))

(assert (=> b!4581305 (forall!10502 (toList!4552 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) lambda!183289)))

(declare-fun lt!1746283 () Unit!105525)

(assert (=> b!4581305 (= lt!1746283 lt!1746268)))

(assert (=> b!4581305 (forall!10502 (toList!4552 lt!1746264) lambda!183290)))

(declare-fun lt!1746278 () Unit!105525)

(declare-fun Unit!105816 () Unit!105525)

(assert (=> b!4581305 (= lt!1746278 Unit!105816)))

(assert (=> b!4581305 (forall!10502 (t!358064 (t!358064 (_2!29056 lt!1745216))) lambda!183290)))

(declare-fun lt!1746276 () Unit!105525)

(declare-fun Unit!105817 () Unit!105525)

(assert (=> b!4581305 (= lt!1746276 Unit!105817)))

(declare-fun lt!1746273 () Unit!105525)

(declare-fun Unit!105818 () Unit!105525)

(assert (=> b!4581305 (= lt!1746273 Unit!105818)))

(declare-fun lt!1746280 () Unit!105525)

(assert (=> b!4581305 (= lt!1746280 (forallContained!2765 (toList!4552 lt!1746264) lambda!183290 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(assert (=> b!4581305 (contains!13846 lt!1746264 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746270 () Unit!105525)

(declare-fun Unit!105819 () Unit!105525)

(assert (=> b!4581305 (= lt!1746270 Unit!105819)))

(assert (=> b!4581305 (contains!13846 lt!1746266 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746275 () Unit!105525)

(declare-fun Unit!105820 () Unit!105525)

(assert (=> b!4581305 (= lt!1746275 Unit!105820)))

(assert (=> b!4581305 call!319816))

(declare-fun lt!1746272 () Unit!105525)

(declare-fun Unit!105821 () Unit!105525)

(assert (=> b!4581305 (= lt!1746272 Unit!105821)))

(declare-fun call!319814 () Bool)

(assert (=> b!4581305 call!319814))

(declare-fun lt!1746274 () Unit!105525)

(declare-fun Unit!105822 () Unit!105525)

(assert (=> b!4581305 (= lt!1746274 Unit!105822)))

(declare-fun lt!1746277 () Unit!105525)

(declare-fun Unit!105823 () Unit!105525)

(assert (=> b!4581305 (= lt!1746277 Unit!105823)))

(declare-fun lt!1746281 () Unit!105525)

(assert (=> b!4581305 (= lt!1746281 (addForallContainsKeyThenBeforeAdding!414 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746266 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))) (_2!29055 (h!56885 (t!358064 (_2!29056 lt!1745216))))))))

(assert (=> b!4581305 (forall!10502 (toList!4552 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) lambda!183290)))

(declare-fun lt!1746279 () Unit!105525)

(assert (=> b!4581305 (= lt!1746279 lt!1746281)))

(assert (=> b!4581305 (forall!10502 (toList!4552 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) lambda!183290)))

(declare-fun lt!1746267 () Unit!105525)

(declare-fun Unit!105824 () Unit!105525)

(assert (=> b!4581305 (= lt!1746267 Unit!105824)))

(declare-fun res!1914125 () Bool)

(assert (=> b!4581305 (= res!1914125 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183290))))

(declare-fun e!2856857 () Bool)

(assert (=> b!4581305 (=> (not res!1914125) (not e!2856857))))

(assert (=> b!4581305 e!2856857))

(declare-fun lt!1746271 () Unit!105525)

(declare-fun Unit!105825 () Unit!105525)

(assert (=> b!4581305 (= lt!1746271 Unit!105825)))

(assert (=> b!4581306 (= e!2856858 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))))))

(declare-fun lt!1746282 () Unit!105525)

(assert (=> b!4581306 (= lt!1746282 call!319815)))

(assert (=> b!4581306 call!319816))

(declare-fun lt!1746263 () Unit!105525)

(assert (=> b!4581306 (= lt!1746263 lt!1746282)))

(assert (=> b!4581306 call!319814))

(declare-fun lt!1746265 () Unit!105525)

(declare-fun Unit!105826 () Unit!105525)

(assert (=> b!4581306 (= lt!1746265 Unit!105826)))

(declare-fun bm!319810 () Bool)

(assert (=> bm!319810 (= call!319814 (forall!10502 (ite c!784170 (toList!4552 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (toList!4552 lt!1746264)) (ite c!784170 lambda!183288 lambda!183290)))))

(assert (=> d!1434760 e!2856859))

(declare-fun res!1914126 () Bool)

(assert (=> d!1434760 (=> (not res!1914126) (not e!2856859))))

(assert (=> d!1434760 (= res!1914126 (forall!10502 (t!358064 (_2!29056 lt!1745216)) lambda!183291))))

(assert (=> d!1434760 (= lt!1746269 e!2856858)))

(assert (=> d!1434760 (= c!784170 ((_ is Nil!50950) (t!358064 (_2!29056 lt!1745216))))))

(assert (=> d!1434760 (noDuplicateKeys!1272 (t!358064 (_2!29056 lt!1745216)))))

(assert (=> d!1434760 (= (addToMapMapFromBucket!785 (t!358064 (_2!29056 lt!1745216)) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) lt!1746269)))

(declare-fun bm!319811 () Bool)

(assert (=> bm!319811 (= call!319815 (lemmaContainsAllItsOwnKeys!414 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun b!4581307 () Bool)

(assert (=> b!4581307 (= e!2856857 (forall!10502 (toList!4552 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) lambda!183290))))

(assert (= (and d!1434760 c!784170) b!4581306))

(assert (= (and d!1434760 (not c!784170)) b!4581305))

(assert (= (and b!4581305 res!1914125) b!4581307))

(assert (= (or b!4581306 b!4581305) bm!319810))

(assert (= (or b!4581306 b!4581305) bm!319809))

(assert (= (or b!4581306 b!4581305) bm!319811))

(assert (= (and d!1434760 res!1914126) b!4581304))

(assert (= (and b!4581304 res!1914124) b!4581303))

(declare-fun m!5392365 () Bool)

(assert (=> b!4581307 m!5392365))

(declare-fun m!5392367 () Bool)

(assert (=> d!1434760 m!5392367))

(assert (=> d!1434760 m!5390635))

(declare-fun m!5392369 () Bool)

(assert (=> bm!319809 m!5392369))

(assert (=> bm!319811 m!5390357))

(declare-fun m!5392371 () Bool)

(assert (=> bm!319811 m!5392371))

(declare-fun m!5392373 () Bool)

(assert (=> b!4581305 m!5392373))

(declare-fun m!5392375 () Bool)

(assert (=> b!4581305 m!5392375))

(declare-fun m!5392377 () Bool)

(assert (=> b!4581305 m!5392377))

(assert (=> b!4581305 m!5392365))

(declare-fun m!5392379 () Bool)

(assert (=> b!4581305 m!5392379))

(declare-fun m!5392381 () Bool)

(assert (=> b!4581305 m!5392381))

(declare-fun m!5392383 () Bool)

(assert (=> b!4581305 m!5392383))

(declare-fun m!5392385 () Bool)

(assert (=> b!4581305 m!5392385))

(assert (=> b!4581305 m!5390357))

(assert (=> b!4581305 m!5392373))

(declare-fun m!5392387 () Bool)

(assert (=> b!4581305 m!5392387))

(declare-fun m!5392389 () Bool)

(assert (=> b!4581305 m!5392389))

(assert (=> b!4581305 m!5392365))

(assert (=> b!4581305 m!5390357))

(declare-fun m!5392391 () Bool)

(assert (=> b!4581305 m!5392391))

(declare-fun m!5392393 () Bool)

(assert (=> b!4581303 m!5392393))

(declare-fun m!5392395 () Bool)

(assert (=> b!4581304 m!5392395))

(declare-fun m!5392397 () Bool)

(assert (=> bm!319810 m!5392397))

(assert (=> b!4580257 d!1434760))

(declare-fun b!4581308 () Bool)

(declare-fun e!2856865 () Unit!105525)

(declare-fun Unit!105827 () Unit!105525)

(assert (=> b!4581308 (= e!2856865 Unit!105827)))

(declare-fun b!4581309 () Bool)

(declare-fun e!2856860 () Bool)

(declare-fun e!2856863 () Bool)

(assert (=> b!4581309 (= e!2856860 e!2856863)))

(declare-fun res!1914128 () Bool)

(assert (=> b!4581309 (=> (not res!1914128) (not e!2856863))))

(assert (=> b!4581309 (= res!1914128 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745576) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4581310 () Bool)

(declare-fun e!2856862 () Unit!105525)

(assert (=> b!4581310 (= e!2856862 e!2856865)))

(declare-fun c!784172 () Bool)

(declare-fun call!319817 () Bool)

(assert (=> b!4581310 (= c!784172 call!319817)))

(declare-fun b!4581311 () Bool)

(assert (=> b!4581311 (= e!2856863 (contains!13849 (keys!17800 lt!1745576) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun b!4581312 () Bool)

(declare-fun e!2856861 () List!51077)

(assert (=> b!4581312 (= e!2856861 (keys!17800 lt!1745576))))

(declare-fun b!4581313 () Bool)

(declare-fun lt!1746287 () Unit!105525)

(assert (=> b!4581313 (= e!2856862 lt!1746287)))

(declare-fun lt!1746285 () Unit!105525)

(assert (=> b!4581313 (= lt!1746285 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745576) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4581313 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745576) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746290 () Unit!105525)

(assert (=> b!4581313 (= lt!1746290 lt!1746285)))

(assert (=> b!4581313 (= lt!1746287 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745576) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4581313 call!319817))

(declare-fun bm!319812 () Bool)

(assert (=> bm!319812 (= call!319817 (contains!13849 e!2856861 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun c!784171 () Bool)

(declare-fun c!784173 () Bool)

(assert (=> bm!319812 (= c!784171 c!784173)))

(declare-fun d!1434762 () Bool)

(assert (=> d!1434762 e!2856860))

(declare-fun res!1914129 () Bool)

(assert (=> d!1434762 (=> res!1914129 e!2856860)))

(declare-fun e!2856864 () Bool)

(assert (=> d!1434762 (= res!1914129 e!2856864)))

(declare-fun res!1914127 () Bool)

(assert (=> d!1434762 (=> (not res!1914127) (not e!2856864))))

(declare-fun lt!1746286 () Bool)

(assert (=> d!1434762 (= res!1914127 (not lt!1746286))))

(declare-fun lt!1746291 () Bool)

(assert (=> d!1434762 (= lt!1746286 lt!1746291)))

(declare-fun lt!1746284 () Unit!105525)

(assert (=> d!1434762 (= lt!1746284 e!2856862)))

(assert (=> d!1434762 (= c!784173 lt!1746291)))

(assert (=> d!1434762 (= lt!1746291 (containsKey!2057 (toList!4552 lt!1745576) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434762 (= (contains!13846 lt!1745576 (_1!29055 (h!56885 (_2!29056 lt!1745216)))) lt!1746286)))

(declare-fun b!4581314 () Bool)

(assert (=> b!4581314 (= e!2856861 (getKeysList!544 (toList!4552 lt!1745576)))))

(declare-fun b!4581315 () Bool)

(assert (=> b!4581315 false))

(declare-fun lt!1746288 () Unit!105525)

(declare-fun lt!1746289 () Unit!105525)

(assert (=> b!4581315 (= lt!1746288 lt!1746289)))

(assert (=> b!4581315 (containsKey!2057 (toList!4552 lt!1745576) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4581315 (= lt!1746289 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745576) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun Unit!105828 () Unit!105525)

(assert (=> b!4581315 (= e!2856865 Unit!105828)))

(declare-fun b!4581316 () Bool)

(assert (=> b!4581316 (= e!2856864 (not (contains!13849 (keys!17800 lt!1745576) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(assert (= (and d!1434762 c!784173) b!4581313))

(assert (= (and d!1434762 (not c!784173)) b!4581310))

(assert (= (and b!4581310 c!784172) b!4581315))

(assert (= (and b!4581310 (not c!784172)) b!4581308))

(assert (= (or b!4581313 b!4581310) bm!319812))

(assert (= (and bm!319812 c!784171) b!4581314))

(assert (= (and bm!319812 (not c!784171)) b!4581312))

(assert (= (and d!1434762 res!1914127) b!4581316))

(assert (= (and d!1434762 (not res!1914129)) b!4581309))

(assert (= (and b!4581309 res!1914128) b!4581311))

(declare-fun m!5392399 () Bool)

(assert (=> b!4581315 m!5392399))

(declare-fun m!5392401 () Bool)

(assert (=> b!4581315 m!5392401))

(declare-fun m!5392403 () Bool)

(assert (=> b!4581316 m!5392403))

(assert (=> b!4581316 m!5392403))

(declare-fun m!5392405 () Bool)

(assert (=> b!4581316 m!5392405))

(declare-fun m!5392407 () Bool)

(assert (=> b!4581309 m!5392407))

(assert (=> b!4581309 m!5392407))

(declare-fun m!5392409 () Bool)

(assert (=> b!4581309 m!5392409))

(declare-fun m!5392411 () Bool)

(assert (=> b!4581314 m!5392411))

(assert (=> b!4581312 m!5392403))

(declare-fun m!5392413 () Bool)

(assert (=> b!4581313 m!5392413))

(assert (=> b!4581313 m!5392407))

(assert (=> b!4581313 m!5392407))

(assert (=> b!4581313 m!5392409))

(declare-fun m!5392415 () Bool)

(assert (=> b!4581313 m!5392415))

(assert (=> d!1434762 m!5392399))

(declare-fun m!5392417 () Bool)

(assert (=> bm!319812 m!5392417))

(assert (=> b!4581311 m!5392403))

(assert (=> b!4581311 m!5392403))

(assert (=> b!4581311 m!5392405))

(assert (=> b!4580257 d!1434762))

(declare-fun d!1434764 () Bool)

(declare-fun e!2856866 () Bool)

(assert (=> d!1434764 e!2856866))

(declare-fun res!1914131 () Bool)

(assert (=> d!1434764 (=> (not res!1914131) (not e!2856866))))

(declare-fun lt!1746295 () ListMap!3813)

(assert (=> d!1434764 (= res!1914131 (contains!13846 lt!1746295 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746293 () List!51074)

(assert (=> d!1434764 (= lt!1746295 (ListMap!3814 lt!1746293))))

(declare-fun lt!1746292 () Unit!105525)

(declare-fun lt!1746294 () Unit!105525)

(assert (=> d!1434764 (= lt!1746292 lt!1746294)))

(assert (=> d!1434764 (= (getValueByKey!1254 lt!1746293 (_1!29055 (h!56885 (_2!29056 lt!1745216)))) (Some!11327 (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434764 (= lt!1746294 (lemmaContainsTupThenGetReturnValue!779 lt!1746293 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434764 (= lt!1746293 (insertNoDuplicatedKeys!309 (toList!4552 lt!1745218) (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434764 (= (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216))) lt!1746295)))

(declare-fun b!4581317 () Bool)

(declare-fun res!1914130 () Bool)

(assert (=> b!4581317 (=> (not res!1914130) (not e!2856866))))

(assert (=> b!4581317 (= res!1914130 (= (getValueByKey!1254 (toList!4552 lt!1746295) (_1!29055 (h!56885 (_2!29056 lt!1745216)))) (Some!11327 (_2!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4581318 () Bool)

(assert (=> b!4581318 (= e!2856866 (contains!13851 (toList!4552 lt!1746295) (h!56885 (_2!29056 lt!1745216))))))

(assert (= (and d!1434764 res!1914131) b!4581317))

(assert (= (and b!4581317 res!1914130) b!4581318))

(declare-fun m!5392419 () Bool)

(assert (=> d!1434764 m!5392419))

(declare-fun m!5392421 () Bool)

(assert (=> d!1434764 m!5392421))

(declare-fun m!5392423 () Bool)

(assert (=> d!1434764 m!5392423))

(declare-fun m!5392425 () Bool)

(assert (=> d!1434764 m!5392425))

(declare-fun m!5392427 () Bool)

(assert (=> b!4581317 m!5392427))

(declare-fun m!5392429 () Bool)

(assert (=> b!4581318 m!5392429))

(assert (=> b!4580257 d!1434764))

(assert (=> b!4580257 d!1434594))

(declare-fun b!4581319 () Bool)

(declare-fun e!2856872 () Unit!105525)

(declare-fun Unit!105829 () Unit!105525)

(assert (=> b!4581319 (= e!2856872 Unit!105829)))

(declare-fun b!4581320 () Bool)

(declare-fun e!2856867 () Bool)

(declare-fun e!2856870 () Bool)

(assert (=> b!4581320 (= e!2856867 e!2856870)))

(declare-fun res!1914133 () Bool)

(assert (=> b!4581320 (=> (not res!1914133) (not e!2856870))))

(assert (=> b!4581320 (= res!1914133 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745574) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(declare-fun b!4581321 () Bool)

(declare-fun e!2856869 () Unit!105525)

(assert (=> b!4581321 (= e!2856869 e!2856872)))

(declare-fun c!784175 () Bool)

(declare-fun call!319818 () Bool)

(assert (=> b!4581321 (= c!784175 call!319818)))

(declare-fun b!4581322 () Bool)

(assert (=> b!4581322 (= e!2856870 (contains!13849 (keys!17800 lt!1745574) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun b!4581323 () Bool)

(declare-fun e!2856868 () List!51077)

(assert (=> b!4581323 (= e!2856868 (keys!17800 lt!1745574))))

(declare-fun b!4581324 () Bool)

(declare-fun lt!1746299 () Unit!105525)

(assert (=> b!4581324 (= e!2856869 lt!1746299)))

(declare-fun lt!1746297 () Unit!105525)

(assert (=> b!4581324 (= lt!1746297 (lemmaContainsKeyImpliesGetValueByKeyDefined!1158 (toList!4552 lt!1745574) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4581324 (isDefined!8597 (getValueByKey!1254 (toList!4552 lt!1745574) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun lt!1746302 () Unit!105525)

(assert (=> b!4581324 (= lt!1746302 lt!1746297)))

(assert (=> b!4581324 (= lt!1746299 (lemmaInListThenGetKeysListContains!540 (toList!4552 lt!1745574) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> b!4581324 call!319818))

(declare-fun bm!319813 () Bool)

(assert (=> bm!319813 (= call!319818 (contains!13849 e!2856868 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun c!784174 () Bool)

(declare-fun c!784176 () Bool)

(assert (=> bm!319813 (= c!784174 c!784176)))

(declare-fun d!1434766 () Bool)

(assert (=> d!1434766 e!2856867))

(declare-fun res!1914134 () Bool)

(assert (=> d!1434766 (=> res!1914134 e!2856867)))

(declare-fun e!2856871 () Bool)

(assert (=> d!1434766 (= res!1914134 e!2856871)))

(declare-fun res!1914132 () Bool)

(assert (=> d!1434766 (=> (not res!1914132) (not e!2856871))))

(declare-fun lt!1746298 () Bool)

(assert (=> d!1434766 (= res!1914132 (not lt!1746298))))

(declare-fun lt!1746303 () Bool)

(assert (=> d!1434766 (= lt!1746298 lt!1746303)))

(declare-fun lt!1746296 () Unit!105525)

(assert (=> d!1434766 (= lt!1746296 e!2856869)))

(assert (=> d!1434766 (= c!784176 lt!1746303)))

(assert (=> d!1434766 (= lt!1746303 (containsKey!2057 (toList!4552 lt!1745574) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434766 (= (contains!13846 lt!1745574 (_1!29055 (h!56885 (_2!29056 lt!1745216)))) lt!1746298)))

(declare-fun b!4581325 () Bool)

(assert (=> b!4581325 (= e!2856868 (getKeysList!544 (toList!4552 lt!1745574)))))

(declare-fun b!4581326 () Bool)

(assert (=> b!4581326 false))

(declare-fun lt!1746300 () Unit!105525)

(declare-fun lt!1746301 () Unit!105525)

(assert (=> b!4581326 (= lt!1746300 lt!1746301)))

(assert (=> b!4581326 (containsKey!2057 (toList!4552 lt!1745574) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))

(assert (=> b!4581326 (= lt!1746301 (lemmaInGetKeysListThenContainsKey!543 (toList!4552 lt!1745574) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun Unit!105830 () Unit!105525)

(assert (=> b!4581326 (= e!2856872 Unit!105830)))

(declare-fun b!4581327 () Bool)

(assert (=> b!4581327 (= e!2856871 (not (contains!13849 (keys!17800 lt!1745574) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(assert (= (and d!1434766 c!784176) b!4581324))

(assert (= (and d!1434766 (not c!784176)) b!4581321))

(assert (= (and b!4581321 c!784175) b!4581326))

(assert (= (and b!4581321 (not c!784175)) b!4581319))

(assert (= (or b!4581324 b!4581321) bm!319813))

(assert (= (and bm!319813 c!784174) b!4581325))

(assert (= (and bm!319813 (not c!784174)) b!4581323))

(assert (= (and d!1434766 res!1914132) b!4581327))

(assert (= (and d!1434766 (not res!1914134)) b!4581320))

(assert (= (and b!4581320 res!1914133) b!4581322))

(declare-fun m!5392431 () Bool)

(assert (=> b!4581326 m!5392431))

(declare-fun m!5392433 () Bool)

(assert (=> b!4581326 m!5392433))

(declare-fun m!5392435 () Bool)

(assert (=> b!4581327 m!5392435))

(assert (=> b!4581327 m!5392435))

(declare-fun m!5392437 () Bool)

(assert (=> b!4581327 m!5392437))

(declare-fun m!5392439 () Bool)

(assert (=> b!4581320 m!5392439))

(assert (=> b!4581320 m!5392439))

(declare-fun m!5392441 () Bool)

(assert (=> b!4581320 m!5392441))

(declare-fun m!5392443 () Bool)

(assert (=> b!4581325 m!5392443))

(assert (=> b!4581323 m!5392435))

(declare-fun m!5392445 () Bool)

(assert (=> b!4581324 m!5392445))

(assert (=> b!4581324 m!5392439))

(assert (=> b!4581324 m!5392439))

(assert (=> b!4581324 m!5392441))

(declare-fun m!5392447 () Bool)

(assert (=> b!4581324 m!5392447))

(assert (=> d!1434766 m!5392431))

(declare-fun m!5392449 () Bool)

(assert (=> bm!319813 m!5392449))

(assert (=> b!4581322 m!5392435))

(assert (=> b!4581322 m!5392435))

(assert (=> b!4581322 m!5392437))

(assert (=> b!4580257 d!1434766))

(declare-fun bs!973259 () Bool)

(declare-fun d!1434768 () Bool)

(assert (= bs!973259 (and d!1434768 b!4580368)))

(declare-fun lambda!183292 () Int)

(assert (=> bs!973259 (= (= lt!1745576 lt!1745665) (= lambda!183292 lambda!183166))))

(declare-fun bs!973260 () Bool)

(assert (= bs!973260 (and d!1434768 b!4581305)))

(assert (=> bs!973260 (= (= lt!1745576 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183292 lambda!183289))))

(declare-fun bs!973261 () Bool)

(assert (= bs!973261 (and d!1434768 b!4580772)))

(assert (=> bs!973261 (= (= lt!1745576 lt!1745913) (= lambda!183292 lambda!183232))))

(declare-fun bs!973262 () Bool)

(assert (= bs!973262 (and d!1434768 b!4580664)))

(assert (=> bs!973262 (= (= lt!1745576 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183292 lambda!183211))))

(declare-fun bs!973263 () Bool)

(assert (= bs!973263 (and d!1434768 b!4580305)))

(assert (=> bs!973263 (= (= lt!1745576 lt!1745627) (= lambda!183292 lambda!183159))))

(declare-fun bs!973264 () Bool)

(assert (= bs!973264 (and d!1434768 d!1434760)))

(assert (=> bs!973264 (= (= lt!1745576 lt!1746269) (= lambda!183292 lambda!183291))))

(declare-fun bs!973265 () Bool)

(assert (= bs!973265 (and d!1434768 b!4581137)))

(assert (=> bs!973265 (= (= lt!1745576 (-!480 lt!1745232 key!3287)) (= lambda!183292 lambda!183257))))

(declare-fun bs!973266 () Bool)

(assert (= bs!973266 (and d!1434768 b!4581259)))

(assert (=> bs!973266 (= (= lt!1745576 lt!1746231) (= lambda!183292 lambda!183283))))

(declare-fun bs!973267 () Bool)

(assert (= bs!973267 (and d!1434768 d!1434710)))

(assert (=> bs!973267 (= (= lt!1745576 lt!1745665) (= lambda!183292 lambda!183270))))

(declare-fun bs!973268 () Bool)

(assert (= bs!973268 (and d!1434768 b!4580257)))

(assert (=> bs!973268 (= lambda!183292 lambda!183142)))

(declare-fun bs!973269 () Bool)

(assert (= bs!973269 (and d!1434768 b!4581306)))

(assert (=> bs!973269 (= (= lt!1745576 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183292 lambda!183288))))

(declare-fun bs!973270 () Bool)

(assert (= bs!973270 (and d!1434768 d!1434446)))

(assert (=> bs!973270 (= (= lt!1745576 lt!1745852) (= lambda!183292 lambda!183214))))

(declare-fun bs!973271 () Bool)

(assert (= bs!973271 (and d!1434768 b!4580536)))

(assert (=> bs!973271 (= (= lt!1745576 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183292 lambda!183190))))

(declare-fun bs!973272 () Bool)

(assert (= bs!973272 (and d!1434768 b!4580306)))

(assert (=> bs!973272 (= (= lt!1745576 lt!1745232) (= lambda!183292 lambda!183157))))

(declare-fun bs!973273 () Bool)

(assert (= bs!973273 (and d!1434768 d!1434424)))

(assert (=> bs!973273 (= (= lt!1745576 lt!1745214) (= lambda!183292 lambda!183205))))

(assert (=> bs!973259 (= (= lt!1745576 lt!1745214) (= lambda!183292 lambda!183165))))

(declare-fun bs!973274 () Bool)

(assert (= bs!973274 (and d!1434768 b!4581136)))

(assert (=> bs!973274 (= (= lt!1745576 lt!1746150) (= lambda!183292 lambda!183260))))

(assert (=> bs!973274 (= (= lt!1745576 (-!480 lt!1745232 key!3287)) (= lambda!183292 lambda!183259))))

(declare-fun bs!973275 () Bool)

(assert (= bs!973275 (and d!1434768 b!4580574)))

(assert (=> bs!973275 (= (= lt!1745576 lt!1745787) (= lambda!183292 lambda!183202))))

(declare-fun bs!973276 () Bool)

(assert (= bs!973276 (and d!1434768 b!4581260)))

(assert (=> bs!973276 (= (= lt!1745576 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183292 lambda!183278))))

(declare-fun bs!973277 () Bool)

(assert (= bs!973277 (and d!1434768 b!4580773)))

(assert (=> bs!973277 (= (= lt!1745576 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183292 lambda!183230))))

(declare-fun bs!973278 () Bool)

(assert (= bs!973278 (and d!1434768 b!4580955)))

(assert (=> bs!973278 (= (= lt!1745576 lt!1746040) (= lambda!183292 lambda!183244))))

(declare-fun bs!973279 () Bool)

(assert (= bs!973279 (and d!1434768 d!1434224)))

(assert (=> bs!973279 (= (= lt!1745576 lt!1745668) (= lambda!183292 lambda!183167))))

(assert (=> bs!973266 (= (= lt!1745576 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183292 lambda!183280))))

(declare-fun bs!973280 () Bool)

(assert (= bs!973280 (and d!1434768 d!1434366)))

(assert (=> bs!973280 (= (= lt!1745576 lt!1745790) (= lambda!183292 lambda!183203))))

(declare-fun bs!973281 () Bool)

(assert (= bs!973281 (and d!1434768 d!1434060)))

(assert (=> bs!973281 (= (= lt!1745576 lt!1745579) (= lambda!183292 lambda!183143))))

(declare-fun bs!973282 () Bool)

(assert (= bs!973282 (and d!1434768 d!1434648)))

(assert (=> bs!973282 (= (= lt!1745576 lt!1746153) (= lambda!183292 lambda!183265))))

(declare-fun bs!973283 () Bool)

(assert (= bs!973283 (and d!1434768 d!1434338)))

(assert (=> bs!973283 (= (= lt!1745576 lt!1745759) (= lambda!183292 lambda!183193))))

(assert (=> bs!973263 (= (= lt!1745576 lt!1745232) (= lambda!183292 lambda!183158))))

(declare-fun bs!973284 () Bool)

(assert (= bs!973284 (and d!1434768 b!4579991)))

(assert (=> bs!973284 (not (= lambda!183292 lambda!183043))))

(declare-fun bs!973285 () Bool)

(assert (= bs!973285 (and d!1434768 b!4580535)))

(assert (=> bs!973285 (= (= lt!1745576 lt!1745756) (= lambda!183292 lambda!183192))))

(declare-fun bs!973286 () Bool)

(assert (= bs!973286 (and d!1434768 b!4580369)))

(assert (=> bs!973286 (= (= lt!1745576 lt!1745214) (= lambda!183292 lambda!183164))))

(declare-fun bs!973287 () Bool)

(assert (= bs!973287 (and d!1434768 b!4580575)))

(assert (=> bs!973287 (= (= lt!1745576 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183292 lambda!183200))))

(declare-fun bs!973288 () Bool)

(assert (= bs!973288 (and d!1434768 d!1434556)))

(assert (=> bs!973288 (= (= lt!1745576 lt!1746043) (= lambda!183292 lambda!183245))))

(assert (=> bs!973285 (= (= lt!1745576 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183292 lambda!183191))))

(assert (=> bs!973261 (= (= lt!1745576 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183292 lambda!183231))))

(declare-fun bs!973289 () Bool)

(assert (= bs!973289 (and d!1434768 b!4580663)))

(assert (=> bs!973289 (= (= lt!1745576 lt!1745849) (= lambda!183292 lambda!183213))))

(declare-fun bs!973290 () Bool)

(assert (= bs!973290 (and d!1434768 d!1434720)))

(assert (=> bs!973290 (= (= lt!1745576 lt!1746234) (= lambda!183292 lambda!183287))))

(declare-fun bs!973291 () Bool)

(assert (= bs!973291 (and d!1434768 b!4580956)))

(assert (=> bs!973291 (= (= lt!1745576 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183292 lambda!183242))))

(assert (=> bs!973275 (= (= lt!1745576 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183292 lambda!183201))))

(declare-fun bs!973292 () Bool)

(assert (= bs!973292 (and d!1434768 b!4580258)))

(assert (=> bs!973292 (= (= lt!1745576 lt!1745218) (= lambda!183292 lambda!183140))))

(declare-fun bs!973293 () Bool)

(assert (= bs!973293 (and d!1434768 d!1434486)))

(assert (=> bs!973293 (= (= lt!1745576 lt!1745916) (= lambda!183292 lambda!183233))))

(assert (=> bs!973268 (= (= lt!1745576 lt!1745218) (= lambda!183292 lambda!183141))))

(declare-fun bs!973294 () Bool)

(assert (= bs!973294 (and d!1434768 d!1434448)))

(assert (=> bs!973294 (= (= lt!1745576 lt!1745218) (= lambda!183292 lambda!183215))))

(declare-fun bs!973295 () Bool)

(assert (= bs!973295 (and d!1434768 d!1434184)))

(assert (=> bs!973295 (= (= lt!1745576 lt!1745630) (= lambda!183292 lambda!183160))))

(assert (=> bs!973260 (= (= lt!1745576 lt!1746266) (= lambda!183292 lambda!183290))))

(assert (=> bs!973289 (= (= lt!1745576 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183292 lambda!183212))))

(declare-fun bs!973296 () Bool)

(assert (= bs!973296 (and d!1434768 d!1434344)))

(assert (=> bs!973296 (= (= lt!1745576 lt!1745232) (= lambda!183292 lambda!183199))))

(declare-fun bs!973297 () Bool)

(assert (= bs!973297 (and d!1434768 d!1434256)))

(assert (=> bs!973297 (not (= lambda!183292 lambda!183178))))

(declare-fun bs!973298 () Bool)

(assert (= bs!973298 (and d!1434768 d!1434442)))

(assert (=> bs!973298 (= (= lt!1745576 lt!1745627) (= lambda!183292 lambda!183210))))

(assert (=> bs!973278 (= (= lt!1745576 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183292 lambda!183243))))

(declare-fun bs!973299 () Bool)

(assert (= bs!973299 (and d!1434768 d!1434500)))

(assert (=> bs!973299 (not (= lambda!183292 lambda!183235))))

(assert (=> d!1434768 true))

(assert (=> d!1434768 (forall!10502 (toList!4552 lt!1745218) lambda!183292)))

(declare-fun lt!1746304 () Unit!105525)

(assert (=> d!1434768 (= lt!1746304 (choose!30537 lt!1745218 lt!1745576 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> d!1434768 (forall!10502 (toList!4552 (+!1710 lt!1745218 (tuple2!51523 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))))) lambda!183292)))

(assert (=> d!1434768 (= (addForallContainsKeyThenBeforeAdding!414 lt!1745218 lt!1745576 (_1!29055 (h!56885 (_2!29056 lt!1745216))) (_2!29055 (h!56885 (_2!29056 lt!1745216)))) lt!1746304)))

(declare-fun bs!973300 () Bool)

(assert (= bs!973300 d!1434768))

(declare-fun m!5392451 () Bool)

(assert (=> bs!973300 m!5392451))

(declare-fun m!5392453 () Bool)

(assert (=> bs!973300 m!5392453))

(declare-fun m!5392455 () Bool)

(assert (=> bs!973300 m!5392455))

(declare-fun m!5392457 () Bool)

(assert (=> bs!973300 m!5392457))

(assert (=> b!4580257 d!1434768))

(declare-fun d!1434770 () Bool)

(declare-fun res!1914135 () Bool)

(declare-fun e!2856875 () Bool)

(assert (=> d!1434770 (=> res!1914135 e!2856875)))

(assert (=> d!1434770 (= res!1914135 ((_ is Nil!50950) (toList!4552 lt!1745574)))))

(assert (=> d!1434770 (= (forall!10502 (toList!4552 lt!1745574) lambda!183142) e!2856875)))

(declare-fun b!4581328 () Bool)

(declare-fun e!2856876 () Bool)

(assert (=> b!4581328 (= e!2856875 e!2856876)))

(declare-fun res!1914136 () Bool)

(assert (=> b!4581328 (=> (not res!1914136) (not e!2856876))))

(assert (=> b!4581328 (= res!1914136 (dynLambda!21336 lambda!183142 (h!56885 (toList!4552 lt!1745574))))))

(declare-fun b!4581329 () Bool)

(assert (=> b!4581329 (= e!2856876 (forall!10502 (t!358064 (toList!4552 lt!1745574)) lambda!183142))))

(assert (= (and d!1434770 (not res!1914135)) b!4581328))

(assert (= (and b!4581328 res!1914136) b!4581329))

(declare-fun b_lambda!166133 () Bool)

(assert (=> (not b_lambda!166133) (not b!4581328)))

(declare-fun m!5392459 () Bool)

(assert (=> b!4581328 m!5392459))

(declare-fun m!5392461 () Bool)

(assert (=> b!4581329 m!5392461))

(assert (=> b!4580257 d!1434770))

(declare-fun d!1434772 () Bool)

(declare-fun res!1914137 () Bool)

(declare-fun e!2856877 () Bool)

(assert (=> d!1434772 (=> res!1914137 e!2856877)))

(assert (=> d!1434772 (= res!1914137 ((_ is Nil!50950) (toList!4552 lt!1745218)))))

(assert (=> d!1434772 (= (forall!10502 (toList!4552 lt!1745218) lambda!183141) e!2856877)))

(declare-fun b!4581330 () Bool)

(declare-fun e!2856878 () Bool)

(assert (=> b!4581330 (= e!2856877 e!2856878)))

(declare-fun res!1914138 () Bool)

(assert (=> b!4581330 (=> (not res!1914138) (not e!2856878))))

(assert (=> b!4581330 (= res!1914138 (dynLambda!21336 lambda!183141 (h!56885 (toList!4552 lt!1745218))))))

(declare-fun b!4581331 () Bool)

(assert (=> b!4581331 (= e!2856878 (forall!10502 (t!358064 (toList!4552 lt!1745218)) lambda!183141))))

(assert (= (and d!1434772 (not res!1914137)) b!4581330))

(assert (= (and b!4581330 res!1914138) b!4581331))

(declare-fun b_lambda!166135 () Bool)

(assert (=> (not b_lambda!166135) (not b!4581330)))

(declare-fun m!5392463 () Bool)

(assert (=> b!4581330 m!5392463))

(declare-fun m!5392465 () Bool)

(assert (=> b!4581331 m!5392465))

(assert (=> b!4580257 d!1434772))

(declare-fun bs!973301 () Bool)

(declare-fun b!4581335 () Bool)

(assert (= bs!973301 (and b!4581335 b!4580368)))

(declare-fun lambda!183293 () Int)

(assert (=> bs!973301 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745665) (= lambda!183293 lambda!183166))))

(declare-fun bs!973302 () Bool)

(assert (= bs!973302 (and b!4581335 b!4581305)))

(assert (=> bs!973302 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183293 lambda!183289))))

(declare-fun bs!973303 () Bool)

(assert (= bs!973303 (and b!4581335 b!4580772)))

(assert (=> bs!973303 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745913) (= lambda!183293 lambda!183232))))

(declare-fun bs!973304 () Bool)

(assert (= bs!973304 (and b!4581335 b!4580664)))

(assert (=> bs!973304 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183293 lambda!183211))))

(declare-fun bs!973305 () Bool)

(assert (= bs!973305 (and b!4581335 b!4580305)))

(assert (=> bs!973305 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745627) (= lambda!183293 lambda!183159))))

(declare-fun bs!973306 () Bool)

(assert (= bs!973306 (and b!4581335 d!1434760)))

(assert (=> bs!973306 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746269) (= lambda!183293 lambda!183291))))

(declare-fun bs!973307 () Bool)

(assert (= bs!973307 (and b!4581335 b!4581137)))

(assert (=> bs!973307 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (-!480 lt!1745232 key!3287)) (= lambda!183293 lambda!183257))))

(declare-fun bs!973308 () Bool)

(assert (= bs!973308 (and b!4581335 b!4581259)))

(assert (=> bs!973308 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746231) (= lambda!183293 lambda!183283))))

(declare-fun bs!973309 () Bool)

(assert (= bs!973309 (and b!4581335 b!4580257)))

(assert (=> bs!973309 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745576) (= lambda!183293 lambda!183142))))

(declare-fun bs!973310 () Bool)

(assert (= bs!973310 (and b!4581335 b!4581306)))

(assert (=> bs!973310 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183293 lambda!183288))))

(declare-fun bs!973311 () Bool)

(assert (= bs!973311 (and b!4581335 d!1434446)))

(assert (=> bs!973311 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745852) (= lambda!183293 lambda!183214))))

(declare-fun bs!973312 () Bool)

(assert (= bs!973312 (and b!4581335 b!4580536)))

(assert (=> bs!973312 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183293 lambda!183190))))

(declare-fun bs!973313 () Bool)

(assert (= bs!973313 (and b!4581335 b!4580306)))

(assert (=> bs!973313 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745232) (= lambda!183293 lambda!183157))))

(declare-fun bs!973314 () Bool)

(assert (= bs!973314 (and b!4581335 d!1434424)))

(assert (=> bs!973314 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745214) (= lambda!183293 lambda!183205))))

(assert (=> bs!973301 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745214) (= lambda!183293 lambda!183165))))

(declare-fun bs!973315 () Bool)

(assert (= bs!973315 (and b!4581335 b!4581136)))

(assert (=> bs!973315 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746150) (= lambda!183293 lambda!183260))))

(assert (=> bs!973315 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (-!480 lt!1745232 key!3287)) (= lambda!183293 lambda!183259))))

(declare-fun bs!973316 () Bool)

(assert (= bs!973316 (and b!4581335 b!4580574)))

(assert (=> bs!973316 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745787) (= lambda!183293 lambda!183202))))

(declare-fun bs!973317 () Bool)

(assert (= bs!973317 (and b!4581335 b!4581260)))

(assert (=> bs!973317 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183293 lambda!183278))))

(declare-fun bs!973318 () Bool)

(assert (= bs!973318 (and b!4581335 b!4580773)))

(assert (=> bs!973318 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183293 lambda!183230))))

(declare-fun bs!973319 () Bool)

(assert (= bs!973319 (and b!4581335 b!4580955)))

(assert (=> bs!973319 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746040) (= lambda!183293 lambda!183244))))

(declare-fun bs!973320 () Bool)

(assert (= bs!973320 (and b!4581335 d!1434224)))

(assert (=> bs!973320 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745668) (= lambda!183293 lambda!183167))))

(assert (=> bs!973308 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183293 lambda!183280))))

(declare-fun bs!973321 () Bool)

(assert (= bs!973321 (and b!4581335 d!1434366)))

(assert (=> bs!973321 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745790) (= lambda!183293 lambda!183203))))

(declare-fun bs!973322 () Bool)

(assert (= bs!973322 (and b!4581335 d!1434060)))

(assert (=> bs!973322 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745579) (= lambda!183293 lambda!183143))))

(declare-fun bs!973323 () Bool)

(assert (= bs!973323 (and b!4581335 d!1434648)))

(assert (=> bs!973323 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746153) (= lambda!183293 lambda!183265))))

(declare-fun bs!973324 () Bool)

(assert (= bs!973324 (and b!4581335 d!1434338)))

(assert (=> bs!973324 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745759) (= lambda!183293 lambda!183193))))

(assert (=> bs!973305 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745232) (= lambda!183293 lambda!183158))))

(declare-fun bs!973325 () Bool)

(assert (= bs!973325 (and b!4581335 b!4579991)))

(assert (=> bs!973325 (not (= lambda!183293 lambda!183043))))

(declare-fun bs!973326 () Bool)

(assert (= bs!973326 (and b!4581335 b!4580535)))

(assert (=> bs!973326 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745756) (= lambda!183293 lambda!183192))))

(declare-fun bs!973327 () Bool)

(assert (= bs!973327 (and b!4581335 b!4580369)))

(assert (=> bs!973327 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745214) (= lambda!183293 lambda!183164))))

(declare-fun bs!973328 () Bool)

(assert (= bs!973328 (and b!4581335 b!4580575)))

(assert (=> bs!973328 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183293 lambda!183200))))

(declare-fun bs!973329 () Bool)

(assert (= bs!973329 (and b!4581335 d!1434556)))

(assert (=> bs!973329 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746043) (= lambda!183293 lambda!183245))))

(assert (=> bs!973326 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183293 lambda!183191))))

(assert (=> bs!973303 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183293 lambda!183231))))

(declare-fun bs!973330 () Bool)

(assert (= bs!973330 (and b!4581335 b!4580663)))

(assert (=> bs!973330 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745849) (= lambda!183293 lambda!183213))))

(declare-fun bs!973331 () Bool)

(assert (= bs!973331 (and b!4581335 d!1434720)))

(assert (=> bs!973331 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746234) (= lambda!183293 lambda!183287))))

(declare-fun bs!973332 () Bool)

(assert (= bs!973332 (and b!4581335 b!4580956)))

(assert (=> bs!973332 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183293 lambda!183242))))

(assert (=> bs!973316 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183293 lambda!183201))))

(declare-fun bs!973333 () Bool)

(assert (= bs!973333 (and b!4581335 b!4580258)))

(assert (=> bs!973333 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745218) (= lambda!183293 lambda!183140))))

(declare-fun bs!973334 () Bool)

(assert (= bs!973334 (and b!4581335 d!1434486)))

(assert (=> bs!973334 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745916) (= lambda!183293 lambda!183233))))

(assert (=> bs!973309 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745218) (= lambda!183293 lambda!183141))))

(declare-fun bs!973335 () Bool)

(assert (= bs!973335 (and b!4581335 d!1434448)))

(assert (=> bs!973335 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745218) (= lambda!183293 lambda!183215))))

(declare-fun bs!973336 () Bool)

(assert (= bs!973336 (and b!4581335 d!1434184)))

(assert (=> bs!973336 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745630) (= lambda!183293 lambda!183160))))

(assert (=> bs!973302 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746266) (= lambda!183293 lambda!183290))))

(assert (=> bs!973330 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183293 lambda!183212))))

(declare-fun bs!973337 () Bool)

(assert (= bs!973337 (and b!4581335 d!1434344)))

(assert (=> bs!973337 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745232) (= lambda!183293 lambda!183199))))

(declare-fun bs!973338 () Bool)

(assert (= bs!973338 (and b!4581335 d!1434256)))

(assert (=> bs!973338 (not (= lambda!183293 lambda!183178))))

(declare-fun bs!973339 () Bool)

(assert (= bs!973339 (and b!4581335 d!1434442)))

(assert (=> bs!973339 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745627) (= lambda!183293 lambda!183210))))

(declare-fun bs!973340 () Bool)

(assert (= bs!973340 (and b!4581335 d!1434710)))

(assert (=> bs!973340 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745665) (= lambda!183293 lambda!183270))))

(declare-fun bs!973341 () Bool)

(assert (= bs!973341 (and b!4581335 d!1434768)))

(assert (=> bs!973341 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745576) (= lambda!183293 lambda!183292))))

(assert (=> bs!973319 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183293 lambda!183243))))

(declare-fun bs!973342 () Bool)

(assert (= bs!973342 (and b!4581335 d!1434500)))

(assert (=> bs!973342 (not (= lambda!183293 lambda!183235))))

(assert (=> b!4581335 true))

(declare-fun bs!973343 () Bool)

(declare-fun b!4581334 () Bool)

(assert (= bs!973343 (and b!4581334 b!4580368)))

(declare-fun lambda!183294 () Int)

(assert (=> bs!973343 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745665) (= lambda!183294 lambda!183166))))

(declare-fun bs!973344 () Bool)

(assert (= bs!973344 (and b!4581334 b!4581305)))

(assert (=> bs!973344 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183294 lambda!183289))))

(declare-fun bs!973345 () Bool)

(assert (= bs!973345 (and b!4581334 b!4580772)))

(assert (=> bs!973345 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745913) (= lambda!183294 lambda!183232))))

(declare-fun bs!973346 () Bool)

(assert (= bs!973346 (and b!4581334 b!4580664)))

(assert (=> bs!973346 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183294 lambda!183211))))

(declare-fun bs!973347 () Bool)

(assert (= bs!973347 (and b!4581334 b!4580305)))

(assert (=> bs!973347 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745627) (= lambda!183294 lambda!183159))))

(declare-fun bs!973348 () Bool)

(assert (= bs!973348 (and b!4581334 d!1434760)))

(assert (=> bs!973348 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746269) (= lambda!183294 lambda!183291))))

(declare-fun bs!973349 () Bool)

(assert (= bs!973349 (and b!4581334 b!4581137)))

(assert (=> bs!973349 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (-!480 lt!1745232 key!3287)) (= lambda!183294 lambda!183257))))

(declare-fun bs!973350 () Bool)

(assert (= bs!973350 (and b!4581334 b!4581259)))

(assert (=> bs!973350 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746231) (= lambda!183294 lambda!183283))))

(declare-fun bs!973351 () Bool)

(assert (= bs!973351 (and b!4581334 b!4580257)))

(assert (=> bs!973351 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745576) (= lambda!183294 lambda!183142))))

(declare-fun bs!973352 () Bool)

(assert (= bs!973352 (and b!4581334 b!4581306)))

(assert (=> bs!973352 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183294 lambda!183288))))

(declare-fun bs!973353 () Bool)

(assert (= bs!973353 (and b!4581334 d!1434446)))

(assert (=> bs!973353 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745852) (= lambda!183294 lambda!183214))))

(declare-fun bs!973354 () Bool)

(assert (= bs!973354 (and b!4581334 b!4580536)))

(assert (=> bs!973354 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183294 lambda!183190))))

(declare-fun bs!973355 () Bool)

(assert (= bs!973355 (and b!4581334 b!4580306)))

(assert (=> bs!973355 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745232) (= lambda!183294 lambda!183157))))

(declare-fun bs!973356 () Bool)

(assert (= bs!973356 (and b!4581334 d!1434424)))

(assert (=> bs!973356 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745214) (= lambda!183294 lambda!183205))))

(assert (=> bs!973343 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745214) (= lambda!183294 lambda!183165))))

(declare-fun bs!973357 () Bool)

(assert (= bs!973357 (and b!4581334 b!4581136)))

(assert (=> bs!973357 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746150) (= lambda!183294 lambda!183260))))

(assert (=> bs!973357 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (-!480 lt!1745232 key!3287)) (= lambda!183294 lambda!183259))))

(declare-fun bs!973358 () Bool)

(assert (= bs!973358 (and b!4581334 b!4580574)))

(assert (=> bs!973358 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745787) (= lambda!183294 lambda!183202))))

(declare-fun bs!973359 () Bool)

(assert (= bs!973359 (and b!4581334 b!4581260)))

(assert (=> bs!973359 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183294 lambda!183278))))

(declare-fun bs!973360 () Bool)

(assert (= bs!973360 (and b!4581334 b!4580773)))

(assert (=> bs!973360 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183294 lambda!183230))))

(declare-fun bs!973361 () Bool)

(assert (= bs!973361 (and b!4581334 b!4580955)))

(assert (=> bs!973361 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746040) (= lambda!183294 lambda!183244))))

(declare-fun bs!973362 () Bool)

(assert (= bs!973362 (and b!4581334 d!1434224)))

(assert (=> bs!973362 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745668) (= lambda!183294 lambda!183167))))

(assert (=> bs!973350 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183294 lambda!183280))))

(declare-fun bs!973363 () Bool)

(assert (= bs!973363 (and b!4581334 d!1434366)))

(assert (=> bs!973363 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745790) (= lambda!183294 lambda!183203))))

(declare-fun bs!973364 () Bool)

(assert (= bs!973364 (and b!4581334 d!1434060)))

(assert (=> bs!973364 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745579) (= lambda!183294 lambda!183143))))

(declare-fun bs!973365 () Bool)

(assert (= bs!973365 (and b!4581334 d!1434648)))

(assert (=> bs!973365 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746153) (= lambda!183294 lambda!183265))))

(declare-fun bs!973366 () Bool)

(assert (= bs!973366 (and b!4581334 d!1434338)))

(assert (=> bs!973366 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745759) (= lambda!183294 lambda!183193))))

(assert (=> bs!973347 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745232) (= lambda!183294 lambda!183158))))

(declare-fun bs!973367 () Bool)

(assert (= bs!973367 (and b!4581334 b!4579991)))

(assert (=> bs!973367 (not (= lambda!183294 lambda!183043))))

(declare-fun bs!973368 () Bool)

(assert (= bs!973368 (and b!4581334 b!4580535)))

(assert (=> bs!973368 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745756) (= lambda!183294 lambda!183192))))

(declare-fun bs!973369 () Bool)

(assert (= bs!973369 (and b!4581334 b!4580369)))

(assert (=> bs!973369 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745214) (= lambda!183294 lambda!183164))))

(declare-fun bs!973370 () Bool)

(assert (= bs!973370 (and b!4581334 b!4580575)))

(assert (=> bs!973370 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183294 lambda!183200))))

(declare-fun bs!973371 () Bool)

(assert (= bs!973371 (and b!4581334 d!1434556)))

(assert (=> bs!973371 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746043) (= lambda!183294 lambda!183245))))

(assert (=> bs!973368 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183294 lambda!183191))))

(assert (=> bs!973345 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183294 lambda!183231))))

(declare-fun bs!973372 () Bool)

(assert (= bs!973372 (and b!4581334 b!4580663)))

(assert (=> bs!973372 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745849) (= lambda!183294 lambda!183213))))

(declare-fun bs!973373 () Bool)

(assert (= bs!973373 (and b!4581334 d!1434720)))

(assert (=> bs!973373 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746234) (= lambda!183294 lambda!183287))))

(declare-fun bs!973374 () Bool)

(assert (= bs!973374 (and b!4581334 b!4580956)))

(assert (=> bs!973374 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183294 lambda!183242))))

(assert (=> bs!973358 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183294 lambda!183201))))

(declare-fun bs!973375 () Bool)

(assert (= bs!973375 (and b!4581334 b!4581335)))

(assert (=> bs!973375 (= lambda!183294 lambda!183293)))

(declare-fun bs!973376 () Bool)

(assert (= bs!973376 (and b!4581334 b!4580258)))

(assert (=> bs!973376 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745218) (= lambda!183294 lambda!183140))))

(declare-fun bs!973377 () Bool)

(assert (= bs!973377 (and b!4581334 d!1434486)))

(assert (=> bs!973377 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745916) (= lambda!183294 lambda!183233))))

(assert (=> bs!973351 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745218) (= lambda!183294 lambda!183141))))

(declare-fun bs!973378 () Bool)

(assert (= bs!973378 (and b!4581334 d!1434448)))

(assert (=> bs!973378 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745218) (= lambda!183294 lambda!183215))))

(declare-fun bs!973379 () Bool)

(assert (= bs!973379 (and b!4581334 d!1434184)))

(assert (=> bs!973379 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745630) (= lambda!183294 lambda!183160))))

(assert (=> bs!973344 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746266) (= lambda!183294 lambda!183290))))

(assert (=> bs!973372 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183294 lambda!183212))))

(declare-fun bs!973380 () Bool)

(assert (= bs!973380 (and b!4581334 d!1434344)))

(assert (=> bs!973380 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745232) (= lambda!183294 lambda!183199))))

(declare-fun bs!973381 () Bool)

(assert (= bs!973381 (and b!4581334 d!1434256)))

(assert (=> bs!973381 (not (= lambda!183294 lambda!183178))))

(declare-fun bs!973382 () Bool)

(assert (= bs!973382 (and b!4581334 d!1434442)))

(assert (=> bs!973382 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745627) (= lambda!183294 lambda!183210))))

(declare-fun bs!973383 () Bool)

(assert (= bs!973383 (and b!4581334 d!1434710)))

(assert (=> bs!973383 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745665) (= lambda!183294 lambda!183270))))

(declare-fun bs!973384 () Bool)

(assert (= bs!973384 (and b!4581334 d!1434768)))

(assert (=> bs!973384 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1745576) (= lambda!183294 lambda!183292))))

(assert (=> bs!973361 (= (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183294 lambda!183243))))

(declare-fun bs!973385 () Bool)

(assert (= bs!973385 (and b!4581334 d!1434500)))

(assert (=> bs!973385 (not (= lambda!183294 lambda!183235))))

(assert (=> b!4581334 true))

(declare-fun lambda!183295 () Int)

(declare-fun lt!1746308 () ListMap!3813)

(assert (=> bs!973343 (= (= lt!1746308 lt!1745665) (= lambda!183295 lambda!183166))))

(assert (=> bs!973344 (= (= lt!1746308 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183295 lambda!183289))))

(assert (=> bs!973345 (= (= lt!1746308 lt!1745913) (= lambda!183295 lambda!183232))))

(assert (=> b!4581334 (= (= lt!1746308 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183295 lambda!183294))))

(assert (=> bs!973346 (= (= lt!1746308 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183295 lambda!183211))))

(assert (=> bs!973347 (= (= lt!1746308 lt!1745627) (= lambda!183295 lambda!183159))))

(assert (=> bs!973348 (= (= lt!1746308 lt!1746269) (= lambda!183295 lambda!183291))))

(assert (=> bs!973349 (= (= lt!1746308 (-!480 lt!1745232 key!3287)) (= lambda!183295 lambda!183257))))

(assert (=> bs!973350 (= (= lt!1746308 lt!1746231) (= lambda!183295 lambda!183283))))

(assert (=> bs!973351 (= (= lt!1746308 lt!1745576) (= lambda!183295 lambda!183142))))

(assert (=> bs!973352 (= (= lt!1746308 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183295 lambda!183288))))

(assert (=> bs!973353 (= (= lt!1746308 lt!1745852) (= lambda!183295 lambda!183214))))

(assert (=> bs!973354 (= (= lt!1746308 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183295 lambda!183190))))

(assert (=> bs!973355 (= (= lt!1746308 lt!1745232) (= lambda!183295 lambda!183157))))

(assert (=> bs!973356 (= (= lt!1746308 lt!1745214) (= lambda!183295 lambda!183205))))

(assert (=> bs!973343 (= (= lt!1746308 lt!1745214) (= lambda!183295 lambda!183165))))

(assert (=> bs!973357 (= (= lt!1746308 lt!1746150) (= lambda!183295 lambda!183260))))

(assert (=> bs!973357 (= (= lt!1746308 (-!480 lt!1745232 key!3287)) (= lambda!183295 lambda!183259))))

(assert (=> bs!973358 (= (= lt!1746308 lt!1745787) (= lambda!183295 lambda!183202))))

(assert (=> bs!973359 (= (= lt!1746308 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183295 lambda!183278))))

(assert (=> bs!973360 (= (= lt!1746308 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183295 lambda!183230))))

(assert (=> bs!973361 (= (= lt!1746308 lt!1746040) (= lambda!183295 lambda!183244))))

(assert (=> bs!973362 (= (= lt!1746308 lt!1745668) (= lambda!183295 lambda!183167))))

(assert (=> bs!973350 (= (= lt!1746308 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183295 lambda!183280))))

(assert (=> bs!973363 (= (= lt!1746308 lt!1745790) (= lambda!183295 lambda!183203))))

(assert (=> bs!973364 (= (= lt!1746308 lt!1745579) (= lambda!183295 lambda!183143))))

(assert (=> bs!973365 (= (= lt!1746308 lt!1746153) (= lambda!183295 lambda!183265))))

(assert (=> bs!973366 (= (= lt!1746308 lt!1745759) (= lambda!183295 lambda!183193))))

(assert (=> bs!973347 (= (= lt!1746308 lt!1745232) (= lambda!183295 lambda!183158))))

(assert (=> bs!973367 (not (= lambda!183295 lambda!183043))))

(assert (=> bs!973368 (= (= lt!1746308 lt!1745756) (= lambda!183295 lambda!183192))))

(assert (=> bs!973369 (= (= lt!1746308 lt!1745214) (= lambda!183295 lambda!183164))))

(assert (=> bs!973370 (= (= lt!1746308 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183295 lambda!183200))))

(assert (=> bs!973371 (= (= lt!1746308 lt!1746043) (= lambda!183295 lambda!183245))))

(assert (=> bs!973368 (= (= lt!1746308 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183295 lambda!183191))))

(assert (=> bs!973345 (= (= lt!1746308 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183295 lambda!183231))))

(assert (=> bs!973372 (= (= lt!1746308 lt!1745849) (= lambda!183295 lambda!183213))))

(assert (=> bs!973373 (= (= lt!1746308 lt!1746234) (= lambda!183295 lambda!183287))))

(assert (=> bs!973374 (= (= lt!1746308 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183295 lambda!183242))))

(assert (=> bs!973358 (= (= lt!1746308 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183295 lambda!183201))))

(assert (=> bs!973375 (= (= lt!1746308 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183295 lambda!183293))))

(assert (=> bs!973376 (= (= lt!1746308 lt!1745218) (= lambda!183295 lambda!183140))))

(assert (=> bs!973377 (= (= lt!1746308 lt!1745916) (= lambda!183295 lambda!183233))))

(assert (=> bs!973351 (= (= lt!1746308 lt!1745218) (= lambda!183295 lambda!183141))))

(assert (=> bs!973378 (= (= lt!1746308 lt!1745218) (= lambda!183295 lambda!183215))))

(assert (=> bs!973379 (= (= lt!1746308 lt!1745630) (= lambda!183295 lambda!183160))))

(assert (=> bs!973344 (= (= lt!1746308 lt!1746266) (= lambda!183295 lambda!183290))))

(assert (=> bs!973372 (= (= lt!1746308 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183295 lambda!183212))))

(assert (=> bs!973380 (= (= lt!1746308 lt!1745232) (= lambda!183295 lambda!183199))))

(assert (=> bs!973381 (not (= lambda!183295 lambda!183178))))

(assert (=> bs!973382 (= (= lt!1746308 lt!1745627) (= lambda!183295 lambda!183210))))

(assert (=> bs!973383 (= (= lt!1746308 lt!1745665) (= lambda!183295 lambda!183270))))

(assert (=> bs!973384 (= (= lt!1746308 lt!1745576) (= lambda!183295 lambda!183292))))

(assert (=> bs!973361 (= (= lt!1746308 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183295 lambda!183243))))

(assert (=> bs!973385 (not (= lambda!183295 lambda!183235))))

(assert (=> b!4581334 true))

(declare-fun bs!973386 () Bool)

(declare-fun d!1434774 () Bool)

(assert (= bs!973386 (and d!1434774 b!4580368)))

(declare-fun lambda!183296 () Int)

(declare-fun lt!1746311 () ListMap!3813)

(assert (=> bs!973386 (= (= lt!1746311 lt!1745665) (= lambda!183296 lambda!183166))))

(declare-fun bs!973387 () Bool)

(assert (= bs!973387 (and d!1434774 b!4581305)))

(assert (=> bs!973387 (= (= lt!1746311 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183296 lambda!183289))))

(declare-fun bs!973388 () Bool)

(assert (= bs!973388 (and d!1434774 b!4580772)))

(assert (=> bs!973388 (= (= lt!1746311 lt!1745913) (= lambda!183296 lambda!183232))))

(declare-fun bs!973389 () Bool)

(assert (= bs!973389 (and d!1434774 b!4581334)))

(assert (=> bs!973389 (= (= lt!1746311 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183296 lambda!183294))))

(declare-fun bs!973390 () Bool)

(assert (= bs!973390 (and d!1434774 b!4580664)))

(assert (=> bs!973390 (= (= lt!1746311 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183296 lambda!183211))))

(declare-fun bs!973391 () Bool)

(assert (= bs!973391 (and d!1434774 b!4580305)))

(assert (=> bs!973391 (= (= lt!1746311 lt!1745627) (= lambda!183296 lambda!183159))))

(declare-fun bs!973392 () Bool)

(assert (= bs!973392 (and d!1434774 d!1434760)))

(assert (=> bs!973392 (= (= lt!1746311 lt!1746269) (= lambda!183296 lambda!183291))))

(declare-fun bs!973393 () Bool)

(assert (= bs!973393 (and d!1434774 b!4581137)))

(assert (=> bs!973393 (= (= lt!1746311 (-!480 lt!1745232 key!3287)) (= lambda!183296 lambda!183257))))

(declare-fun bs!973394 () Bool)

(assert (= bs!973394 (and d!1434774 b!4581259)))

(assert (=> bs!973394 (= (= lt!1746311 lt!1746231) (= lambda!183296 lambda!183283))))

(declare-fun bs!973395 () Bool)

(assert (= bs!973395 (and d!1434774 b!4580257)))

(assert (=> bs!973395 (= (= lt!1746311 lt!1745576) (= lambda!183296 lambda!183142))))

(declare-fun bs!973396 () Bool)

(assert (= bs!973396 (and d!1434774 b!4581306)))

(assert (=> bs!973396 (= (= lt!1746311 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183296 lambda!183288))))

(declare-fun bs!973397 () Bool)

(assert (= bs!973397 (and d!1434774 d!1434446)))

(assert (=> bs!973397 (= (= lt!1746311 lt!1745852) (= lambda!183296 lambda!183214))))

(declare-fun bs!973398 () Bool)

(assert (= bs!973398 (and d!1434774 b!4580536)))

(assert (=> bs!973398 (= (= lt!1746311 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183296 lambda!183190))))

(declare-fun bs!973399 () Bool)

(assert (= bs!973399 (and d!1434774 b!4580306)))

(assert (=> bs!973399 (= (= lt!1746311 lt!1745232) (= lambda!183296 lambda!183157))))

(declare-fun bs!973400 () Bool)

(assert (= bs!973400 (and d!1434774 d!1434424)))

(assert (=> bs!973400 (= (= lt!1746311 lt!1745214) (= lambda!183296 lambda!183205))))

(assert (=> bs!973386 (= (= lt!1746311 lt!1745214) (= lambda!183296 lambda!183165))))

(declare-fun bs!973401 () Bool)

(assert (= bs!973401 (and d!1434774 b!4581136)))

(assert (=> bs!973401 (= (= lt!1746311 lt!1746150) (= lambda!183296 lambda!183260))))

(assert (=> bs!973401 (= (= lt!1746311 (-!480 lt!1745232 key!3287)) (= lambda!183296 lambda!183259))))

(declare-fun bs!973402 () Bool)

(assert (= bs!973402 (and d!1434774 b!4580574)))

(assert (=> bs!973402 (= (= lt!1746311 lt!1745787) (= lambda!183296 lambda!183202))))

(declare-fun bs!973403 () Bool)

(assert (= bs!973403 (and d!1434774 b!4581260)))

(assert (=> bs!973403 (= (= lt!1746311 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183296 lambda!183278))))

(declare-fun bs!973404 () Bool)

(assert (= bs!973404 (and d!1434774 b!4580773)))

(assert (=> bs!973404 (= (= lt!1746311 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183296 lambda!183230))))

(declare-fun bs!973405 () Bool)

(assert (= bs!973405 (and d!1434774 b!4580955)))

(assert (=> bs!973405 (= (= lt!1746311 lt!1746040) (= lambda!183296 lambda!183244))))

(declare-fun bs!973406 () Bool)

(assert (= bs!973406 (and d!1434774 d!1434224)))

(assert (=> bs!973406 (= (= lt!1746311 lt!1745668) (= lambda!183296 lambda!183167))))

(assert (=> bs!973394 (= (= lt!1746311 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183296 lambda!183280))))

(declare-fun bs!973407 () Bool)

(assert (= bs!973407 (and d!1434774 d!1434366)))

(assert (=> bs!973407 (= (= lt!1746311 lt!1745790) (= lambda!183296 lambda!183203))))

(declare-fun bs!973408 () Bool)

(assert (= bs!973408 (and d!1434774 d!1434060)))

(assert (=> bs!973408 (= (= lt!1746311 lt!1745579) (= lambda!183296 lambda!183143))))

(declare-fun bs!973409 () Bool)

(assert (= bs!973409 (and d!1434774 d!1434648)))

(assert (=> bs!973409 (= (= lt!1746311 lt!1746153) (= lambda!183296 lambda!183265))))

(declare-fun bs!973410 () Bool)

(assert (= bs!973410 (and d!1434774 d!1434338)))

(assert (=> bs!973410 (= (= lt!1746311 lt!1745759) (= lambda!183296 lambda!183193))))

(assert (=> bs!973391 (= (= lt!1746311 lt!1745232) (= lambda!183296 lambda!183158))))

(assert (=> bs!973389 (= (= lt!1746311 lt!1746308) (= lambda!183296 lambda!183295))))

(declare-fun bs!973411 () Bool)

(assert (= bs!973411 (and d!1434774 b!4579991)))

(assert (=> bs!973411 (not (= lambda!183296 lambda!183043))))

(declare-fun bs!973412 () Bool)

(assert (= bs!973412 (and d!1434774 b!4580535)))

(assert (=> bs!973412 (= (= lt!1746311 lt!1745756) (= lambda!183296 lambda!183192))))

(declare-fun bs!973413 () Bool)

(assert (= bs!973413 (and d!1434774 b!4580369)))

(assert (=> bs!973413 (= (= lt!1746311 lt!1745214) (= lambda!183296 lambda!183164))))

(declare-fun bs!973414 () Bool)

(assert (= bs!973414 (and d!1434774 b!4580575)))

(assert (=> bs!973414 (= (= lt!1746311 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183296 lambda!183200))))

(declare-fun bs!973415 () Bool)

(assert (= bs!973415 (and d!1434774 d!1434556)))

(assert (=> bs!973415 (= (= lt!1746311 lt!1746043) (= lambda!183296 lambda!183245))))

(assert (=> bs!973412 (= (= lt!1746311 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183296 lambda!183191))))

(assert (=> bs!973388 (= (= lt!1746311 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183296 lambda!183231))))

(declare-fun bs!973416 () Bool)

(assert (= bs!973416 (and d!1434774 b!4580663)))

(assert (=> bs!973416 (= (= lt!1746311 lt!1745849) (= lambda!183296 lambda!183213))))

(declare-fun bs!973417 () Bool)

(assert (= bs!973417 (and d!1434774 d!1434720)))

(assert (=> bs!973417 (= (= lt!1746311 lt!1746234) (= lambda!183296 lambda!183287))))

(declare-fun bs!973418 () Bool)

(assert (= bs!973418 (and d!1434774 b!4580956)))

(assert (=> bs!973418 (= (= lt!1746311 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183296 lambda!183242))))

(assert (=> bs!973402 (= (= lt!1746311 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183296 lambda!183201))))

(declare-fun bs!973419 () Bool)

(assert (= bs!973419 (and d!1434774 b!4581335)))

(assert (=> bs!973419 (= (= lt!1746311 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183296 lambda!183293))))

(declare-fun bs!973420 () Bool)

(assert (= bs!973420 (and d!1434774 b!4580258)))

(assert (=> bs!973420 (= (= lt!1746311 lt!1745218) (= lambda!183296 lambda!183140))))

(declare-fun bs!973421 () Bool)

(assert (= bs!973421 (and d!1434774 d!1434486)))

(assert (=> bs!973421 (= (= lt!1746311 lt!1745916) (= lambda!183296 lambda!183233))))

(assert (=> bs!973395 (= (= lt!1746311 lt!1745218) (= lambda!183296 lambda!183141))))

(declare-fun bs!973422 () Bool)

(assert (= bs!973422 (and d!1434774 d!1434448)))

(assert (=> bs!973422 (= (= lt!1746311 lt!1745218) (= lambda!183296 lambda!183215))))

(declare-fun bs!973423 () Bool)

(assert (= bs!973423 (and d!1434774 d!1434184)))

(assert (=> bs!973423 (= (= lt!1746311 lt!1745630) (= lambda!183296 lambda!183160))))

(assert (=> bs!973387 (= (= lt!1746311 lt!1746266) (= lambda!183296 lambda!183290))))

(assert (=> bs!973416 (= (= lt!1746311 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183296 lambda!183212))))

(declare-fun bs!973424 () Bool)

(assert (= bs!973424 (and d!1434774 d!1434344)))

(assert (=> bs!973424 (= (= lt!1746311 lt!1745232) (= lambda!183296 lambda!183199))))

(declare-fun bs!973425 () Bool)

(assert (= bs!973425 (and d!1434774 d!1434256)))

(assert (=> bs!973425 (not (= lambda!183296 lambda!183178))))

(declare-fun bs!973426 () Bool)

(assert (= bs!973426 (and d!1434774 d!1434442)))

(assert (=> bs!973426 (= (= lt!1746311 lt!1745627) (= lambda!183296 lambda!183210))))

(declare-fun bs!973427 () Bool)

(assert (= bs!973427 (and d!1434774 d!1434710)))

(assert (=> bs!973427 (= (= lt!1746311 lt!1745665) (= lambda!183296 lambda!183270))))

(declare-fun bs!973428 () Bool)

(assert (= bs!973428 (and d!1434774 d!1434768)))

(assert (=> bs!973428 (= (= lt!1746311 lt!1745576) (= lambda!183296 lambda!183292))))

(assert (=> bs!973405 (= (= lt!1746311 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183296 lambda!183243))))

(declare-fun bs!973429 () Bool)

(assert (= bs!973429 (and d!1434774 d!1434500)))

(assert (=> bs!973429 (not (= lambda!183296 lambda!183235))))

(assert (=> d!1434774 true))

(declare-fun b!4581332 () Bool)

(declare-fun e!2856881 () Bool)

(assert (=> b!4581332 (= e!2856881 (invariantList!1097 (toList!4552 lt!1746311)))))

(declare-fun b!4581333 () Bool)

(declare-fun res!1914139 () Bool)

(assert (=> b!4581333 (=> (not res!1914139) (not e!2856881))))

(assert (=> b!4581333 (= res!1914139 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) lambda!183296))))

(declare-fun call!319821 () Bool)

(declare-fun c!784177 () Bool)

(declare-fun bm!319814 () Bool)

(assert (=> bm!319814 (= call!319821 (forall!10502 (ite c!784177 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (_2!29056 (h!56886 (toList!4551 lt!1745223)))) (ite c!784177 lambda!183293 lambda!183295)))))

(declare-fun e!2856880 () ListMap!3813)

(assert (=> b!4581334 (= e!2856880 lt!1746308)))

(declare-fun lt!1746306 () ListMap!3813)

(assert (=> b!4581334 (= lt!1746306 (+!1710 (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745223))))))))

(assert (=> b!4581334 (= lt!1746308 (addToMapMapFromBucket!785 (t!358064 (_2!29056 (h!56886 (toList!4551 lt!1745223)))) (+!1710 (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745223)))))))))

(declare-fun lt!1746310 () Unit!105525)

(declare-fun call!319820 () Unit!105525)

(assert (=> b!4581334 (= lt!1746310 call!319820)))

(assert (=> b!4581334 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) lambda!183294)))

(declare-fun lt!1746325 () Unit!105525)

(assert (=> b!4581334 (= lt!1746325 lt!1746310)))

(assert (=> b!4581334 (forall!10502 (toList!4552 lt!1746306) lambda!183295)))

(declare-fun lt!1746320 () Unit!105525)

(declare-fun Unit!105832 () Unit!105525)

(assert (=> b!4581334 (= lt!1746320 Unit!105832)))

(assert (=> b!4581334 (forall!10502 (t!358064 (_2!29056 (h!56886 (toList!4551 lt!1745223)))) lambda!183295)))

(declare-fun lt!1746318 () Unit!105525)

(declare-fun Unit!105833 () Unit!105525)

(assert (=> b!4581334 (= lt!1746318 Unit!105833)))

(declare-fun lt!1746315 () Unit!105525)

(declare-fun Unit!105834 () Unit!105525)

(assert (=> b!4581334 (= lt!1746315 Unit!105834)))

(declare-fun lt!1746322 () Unit!105525)

(assert (=> b!4581334 (= lt!1746322 (forallContained!2765 (toList!4552 lt!1746306) lambda!183295 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745223))))))))

(assert (=> b!4581334 (contains!13846 lt!1746306 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745223))))))))

(declare-fun lt!1746312 () Unit!105525)

(declare-fun Unit!105835 () Unit!105525)

(assert (=> b!4581334 (= lt!1746312 Unit!105835)))

(assert (=> b!4581334 (contains!13846 lt!1746308 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745223))))))))

(declare-fun lt!1746317 () Unit!105525)

(declare-fun Unit!105836 () Unit!105525)

(assert (=> b!4581334 (= lt!1746317 Unit!105836)))

(assert (=> b!4581334 call!319821))

(declare-fun lt!1746314 () Unit!105525)

(declare-fun Unit!105837 () Unit!105525)

(assert (=> b!4581334 (= lt!1746314 Unit!105837)))

(declare-fun call!319819 () Bool)

(assert (=> b!4581334 call!319819))

(declare-fun lt!1746316 () Unit!105525)

(declare-fun Unit!105838 () Unit!105525)

(assert (=> b!4581334 (= lt!1746316 Unit!105838)))

(declare-fun lt!1746319 () Unit!105525)

(declare-fun Unit!105839 () Unit!105525)

(assert (=> b!4581334 (= lt!1746319 Unit!105839)))

(declare-fun lt!1746323 () Unit!105525)

(assert (=> b!4581334 (= lt!1746323 (addForallContainsKeyThenBeforeAdding!414 (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746308 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745223))))) (_2!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745223)))))))))

(assert (=> b!4581334 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) lambda!183295)))

(declare-fun lt!1746321 () Unit!105525)

(assert (=> b!4581334 (= lt!1746321 lt!1746323)))

(assert (=> b!4581334 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) lambda!183295)))

(declare-fun lt!1746309 () Unit!105525)

(declare-fun Unit!105840 () Unit!105525)

(assert (=> b!4581334 (= lt!1746309 Unit!105840)))

(declare-fun res!1914140 () Bool)

(assert (=> b!4581334 (= res!1914140 (forall!10502 (_2!29056 (h!56886 (toList!4551 lt!1745223))) lambda!183295))))

(declare-fun e!2856879 () Bool)

(assert (=> b!4581334 (=> (not res!1914140) (not e!2856879))))

(assert (=> b!4581334 e!2856879))

(declare-fun lt!1746313 () Unit!105525)

(declare-fun Unit!105841 () Unit!105525)

(assert (=> b!4581334 (= lt!1746313 Unit!105841)))

(assert (=> b!4581335 (= e!2856880 (extractMap!1328 (t!358065 (toList!4551 lt!1745223))))))

(declare-fun lt!1746324 () Unit!105525)

(assert (=> b!4581335 (= lt!1746324 call!319820)))

(assert (=> b!4581335 call!319821))

(declare-fun lt!1746305 () Unit!105525)

(assert (=> b!4581335 (= lt!1746305 lt!1746324)))

(assert (=> b!4581335 call!319819))

(declare-fun lt!1746307 () Unit!105525)

(declare-fun Unit!105842 () Unit!105525)

(assert (=> b!4581335 (= lt!1746307 Unit!105842)))

(declare-fun bm!319815 () Bool)

(assert (=> bm!319815 (= call!319819 (forall!10502 (ite c!784177 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (toList!4552 lt!1746306)) (ite c!784177 lambda!183293 lambda!183295)))))

(assert (=> d!1434774 e!2856881))

(declare-fun res!1914141 () Bool)

(assert (=> d!1434774 (=> (not res!1914141) (not e!2856881))))

(assert (=> d!1434774 (= res!1914141 (forall!10502 (_2!29056 (h!56886 (toList!4551 lt!1745223))) lambda!183296))))

(assert (=> d!1434774 (= lt!1746311 e!2856880)))

(assert (=> d!1434774 (= c!784177 ((_ is Nil!50950) (_2!29056 (h!56886 (toList!4551 lt!1745223)))))))

(assert (=> d!1434774 (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lt!1745223))))))

(assert (=> d!1434774 (= (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 lt!1745223))) (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) lt!1746311)))

(declare-fun bm!319816 () Bool)

(assert (=> bm!319816 (= call!319820 (lemmaContainsAllItsOwnKeys!414 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))))))

(declare-fun b!4581336 () Bool)

(assert (=> b!4581336 (= e!2856879 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) lambda!183295))))

(assert (= (and d!1434774 c!784177) b!4581335))

(assert (= (and d!1434774 (not c!784177)) b!4581334))

(assert (= (and b!4581334 res!1914140) b!4581336))

(assert (= (or b!4581335 b!4581334) bm!319815))

(assert (= (or b!4581335 b!4581334) bm!319814))

(assert (= (or b!4581335 b!4581334) bm!319816))

(assert (= (and d!1434774 res!1914141) b!4581333))

(assert (= (and b!4581333 res!1914139) b!4581332))

(declare-fun m!5392467 () Bool)

(assert (=> b!4581336 m!5392467))

(declare-fun m!5392469 () Bool)

(assert (=> d!1434774 m!5392469))

(declare-fun m!5392471 () Bool)

(assert (=> d!1434774 m!5392471))

(declare-fun m!5392473 () Bool)

(assert (=> bm!319814 m!5392473))

(assert (=> bm!319816 m!5390387))

(declare-fun m!5392475 () Bool)

(assert (=> bm!319816 m!5392475))

(declare-fun m!5392477 () Bool)

(assert (=> b!4581334 m!5392477))

(declare-fun m!5392479 () Bool)

(assert (=> b!4581334 m!5392479))

(declare-fun m!5392481 () Bool)

(assert (=> b!4581334 m!5392481))

(assert (=> b!4581334 m!5392467))

(declare-fun m!5392483 () Bool)

(assert (=> b!4581334 m!5392483))

(declare-fun m!5392485 () Bool)

(assert (=> b!4581334 m!5392485))

(declare-fun m!5392487 () Bool)

(assert (=> b!4581334 m!5392487))

(declare-fun m!5392489 () Bool)

(assert (=> b!4581334 m!5392489))

(assert (=> b!4581334 m!5390387))

(assert (=> b!4581334 m!5392477))

(declare-fun m!5392491 () Bool)

(assert (=> b!4581334 m!5392491))

(declare-fun m!5392493 () Bool)

(assert (=> b!4581334 m!5392493))

(assert (=> b!4581334 m!5392467))

(assert (=> b!4581334 m!5390387))

(declare-fun m!5392495 () Bool)

(assert (=> b!4581334 m!5392495))

(declare-fun m!5392497 () Bool)

(assert (=> b!4581332 m!5392497))

(declare-fun m!5392499 () Bool)

(assert (=> b!4581333 m!5392499))

(declare-fun m!5392501 () Bool)

(assert (=> bm!319815 m!5392501))

(assert (=> b!4580264 d!1434774))

(declare-fun bs!973430 () Bool)

(declare-fun d!1434776 () Bool)

(assert (= bs!973430 (and d!1434776 d!1434210)))

(declare-fun lambda!183297 () Int)

(assert (=> bs!973430 (= lambda!183297 lambda!183163)))

(declare-fun bs!973431 () Bool)

(assert (= bs!973431 (and d!1434776 d!1434168)))

(assert (=> bs!973431 (= lambda!183297 lambda!183155)))

(declare-fun bs!973432 () Bool)

(assert (= bs!973432 (and d!1434776 d!1434246)))

(assert (=> bs!973432 (= lambda!183297 lambda!183174)))

(declare-fun bs!973433 () Bool)

(assert (= bs!973433 (and d!1434776 d!1434368)))

(assert (=> bs!973433 (= lambda!183297 lambda!183204)))

(declare-fun bs!973434 () Bool)

(assert (= bs!973434 (and d!1434776 start!456028)))

(assert (=> bs!973434 (= lambda!183297 lambda!183041)))

(declare-fun bs!973435 () Bool)

(assert (= bs!973435 (and d!1434776 d!1434056)))

(assert (=> bs!973435 (= lambda!183297 lambda!183049)))

(declare-fun bs!973436 () Bool)

(assert (= bs!973436 (and d!1434776 d!1434488)))

(assert (=> bs!973436 (= lambda!183297 lambda!183234)))

(declare-fun bs!973437 () Bool)

(assert (= bs!973437 (and d!1434776 d!1434258)))

(assert (=> bs!973437 (not (= lambda!183297 lambda!183181))))

(declare-fun bs!973438 () Bool)

(assert (= bs!973438 (and d!1434776 d!1434244)))

(assert (=> bs!973438 (= lambda!183297 lambda!183171)))

(declare-fun bs!973439 () Bool)

(assert (= bs!973439 (and d!1434776 d!1434564)))

(assert (=> bs!973439 (= lambda!183297 lambda!183246)))

(declare-fun bs!973440 () Bool)

(assert (= bs!973440 (and d!1434776 d!1434340)))

(assert (=> bs!973440 (= lambda!183297 lambda!183194)))

(declare-fun bs!973441 () Bool)

(assert (= bs!973441 (and d!1434776 b!4579991)))

(assert (=> bs!973441 (not (= lambda!183297 lambda!183042))))

(declare-fun bs!973442 () Bool)

(assert (= bs!973442 (and d!1434776 d!1434250)))

(assert (=> bs!973442 (= lambda!183297 lambda!183175)))

(declare-fun bs!973443 () Bool)

(assert (= bs!973443 (and d!1434776 d!1434134)))

(assert (=> bs!973443 (= lambda!183297 lambda!183144)))

(declare-fun bs!973444 () Bool)

(assert (= bs!973444 (and d!1434776 d!1434136)))

(assert (=> bs!973444 (= lambda!183297 lambda!183150)))

(declare-fun bs!973445 () Bool)

(assert (= bs!973445 (and d!1434776 d!1434174)))

(assert (=> bs!973445 (= lambda!183297 lambda!183156)))

(declare-fun bs!973446 () Bool)

(assert (= bs!973446 (and d!1434776 d!1434144)))

(assert (=> bs!973446 (= lambda!183297 lambda!183154)))

(declare-fun bs!973447 () Bool)

(assert (= bs!973447 (and d!1434776 d!1434230)))

(assert (=> bs!973447 (= lambda!183297 lambda!183170)))

(declare-fun lt!1746380 () ListMap!3813)

(assert (=> d!1434776 (invariantList!1097 (toList!4552 lt!1746380))))

(declare-fun e!2856909 () ListMap!3813)

(assert (=> d!1434776 (= lt!1746380 e!2856909)))

(declare-fun c!784202 () Bool)

(assert (=> d!1434776 (= c!784202 ((_ is Cons!50951) (t!358065 (toList!4551 lt!1745223))))))

(assert (=> d!1434776 (forall!10500 (t!358065 (toList!4551 lt!1745223)) lambda!183297)))

(assert (=> d!1434776 (= (extractMap!1328 (t!358065 (toList!4551 lt!1745223))) lt!1746380)))

(declare-fun b!4581394 () Bool)

(assert (=> b!4581394 (= e!2856909 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (t!358065 (toList!4551 lt!1745223)))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lt!1745223))))))))

(declare-fun b!4581395 () Bool)

(assert (=> b!4581395 (= e!2856909 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434776 c!784202) b!4581394))

(assert (= (and d!1434776 (not c!784202)) b!4581395))

(declare-fun m!5392541 () Bool)

(assert (=> d!1434776 m!5392541))

(declare-fun m!5392543 () Bool)

(assert (=> d!1434776 m!5392543))

(declare-fun m!5392545 () Bool)

(assert (=> b!4581394 m!5392545))

(assert (=> b!4581394 m!5392545))

(declare-fun m!5392547 () Bool)

(assert (=> b!4581394 m!5392547))

(assert (=> b!4580264 d!1434776))

(assert (=> d!1434214 d!1434412))

(declare-fun bs!973448 () Bool)

(declare-fun b!4581406 () Bool)

(assert (= bs!973448 (and b!4581406 b!4580522)))

(declare-fun lambda!183298 () Int)

(assert (=> bs!973448 (= (= (t!358064 (toList!4552 lt!1745232)) (toList!4552 lt!1745232)) (= lambda!183298 lambda!183188))))

(declare-fun bs!973449 () Bool)

(assert (= bs!973449 (and b!4581406 b!4580703)))

(assert (=> bs!973449 (= (= (t!358064 (toList!4552 lt!1745232)) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183298 lambda!183226))))

(declare-fun bs!973450 () Bool)

(assert (= bs!973450 (and b!4581406 b!4580762)))

(assert (=> bs!973450 (= (= (t!358064 (toList!4552 lt!1745232)) (toList!4552 lt!1745657)) (= lambda!183298 lambda!183228))))

(declare-fun bs!973451 () Bool)

(assert (= bs!973451 (and b!4581406 b!4580707)))

(assert (=> bs!973451 (= (= (t!358064 (toList!4552 lt!1745232)) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183298 lambda!183224))))

(declare-fun bs!973452 () Bool)

(assert (= bs!973452 (and b!4581406 b!4580705)))

(assert (=> bs!973452 (= (= (t!358064 (toList!4552 lt!1745232)) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183298 lambda!183225))))

(declare-fun bs!973453 () Bool)

(assert (= bs!973453 (and b!4581406 b!4580541)))

(assert (=> bs!973453 (= (= (t!358064 (toList!4552 lt!1745232)) (toList!4552 lt!1745243)) (= lambda!183298 lambda!183195))))

(declare-fun bs!973454 () Bool)

(assert (= bs!973454 (and b!4581406 b!4580471)))

(assert (=> bs!973454 (= (= (t!358064 (toList!4552 lt!1745232)) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183298 lambda!183186))))

(declare-fun bs!973455 () Bool)

(assert (= bs!973455 (and b!4581406 b!4581005)))

(assert (=> bs!973455 (= (= (t!358064 (toList!4552 lt!1745232)) (toList!4552 lt!1745616)) (= lambda!183298 lambda!183247))))

(assert (=> b!4581406 true))

(declare-fun bs!973456 () Bool)

(declare-fun b!4581404 () Bool)

(assert (= bs!973456 (and b!4581404 b!4580522)))

(declare-fun lambda!183299 () Int)

(assert (=> bs!973456 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (toList!4552 lt!1745232)) (= lambda!183299 lambda!183188))))

(declare-fun bs!973457 () Bool)

(assert (= bs!973457 (and b!4581404 b!4580703)))

(assert (=> bs!973457 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183299 lambda!183226))))

(declare-fun bs!973458 () Bool)

(assert (= bs!973458 (and b!4581404 b!4581406)))

(assert (=> bs!973458 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (t!358064 (toList!4552 lt!1745232))) (= lambda!183299 lambda!183298))))

(declare-fun bs!973459 () Bool)

(assert (= bs!973459 (and b!4581404 b!4580762)))

(assert (=> bs!973459 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (toList!4552 lt!1745657)) (= lambda!183299 lambda!183228))))

(declare-fun bs!973460 () Bool)

(assert (= bs!973460 (and b!4581404 b!4580707)))

(assert (=> bs!973460 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183299 lambda!183224))))

(declare-fun bs!973461 () Bool)

(assert (= bs!973461 (and b!4581404 b!4580705)))

(assert (=> bs!973461 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183299 lambda!183225))))

(declare-fun bs!973462 () Bool)

(assert (= bs!973462 (and b!4581404 b!4580541)))

(assert (=> bs!973462 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (toList!4552 lt!1745243)) (= lambda!183299 lambda!183195))))

(declare-fun bs!973463 () Bool)

(assert (= bs!973463 (and b!4581404 b!4580471)))

(assert (=> bs!973463 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183299 lambda!183186))))

(declare-fun bs!973464 () Bool)

(assert (= bs!973464 (and b!4581404 b!4581005)))

(assert (=> bs!973464 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (toList!4552 lt!1745616)) (= lambda!183299 lambda!183247))))

(assert (=> b!4581404 true))

(declare-fun bs!973465 () Bool)

(declare-fun b!4581402 () Bool)

(assert (= bs!973465 (and b!4581402 b!4580522)))

(declare-fun lambda!183300 () Int)

(assert (=> bs!973465 (= lambda!183300 lambda!183188)))

(declare-fun bs!973466 () Bool)

(assert (= bs!973466 (and b!4581402 b!4580703)))

(assert (=> bs!973466 (= (= (toList!4552 lt!1745232) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183300 lambda!183226))))

(declare-fun bs!973467 () Bool)

(assert (= bs!973467 (and b!4581402 b!4581406)))

(assert (=> bs!973467 (= (= (toList!4552 lt!1745232) (t!358064 (toList!4552 lt!1745232))) (= lambda!183300 lambda!183298))))

(declare-fun bs!973468 () Bool)

(assert (= bs!973468 (and b!4581402 b!4580762)))

(assert (=> bs!973468 (= (= (toList!4552 lt!1745232) (toList!4552 lt!1745657)) (= lambda!183300 lambda!183228))))

(declare-fun bs!973469 () Bool)

(assert (= bs!973469 (and b!4581402 b!4580707)))

(assert (=> bs!973469 (= (= (toList!4552 lt!1745232) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183300 lambda!183224))))

(declare-fun bs!973470 () Bool)

(assert (= bs!973470 (and b!4581402 b!4581404)))

(assert (=> bs!973470 (= (= (toList!4552 lt!1745232) (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232)))) (= lambda!183300 lambda!183299))))

(declare-fun bs!973471 () Bool)

(assert (= bs!973471 (and b!4581402 b!4580705)))

(assert (=> bs!973471 (= (= (toList!4552 lt!1745232) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183300 lambda!183225))))

(declare-fun bs!973472 () Bool)

(assert (= bs!973472 (and b!4581402 b!4580541)))

(assert (=> bs!973472 (= (= (toList!4552 lt!1745232) (toList!4552 lt!1745243)) (= lambda!183300 lambda!183195))))

(declare-fun bs!973473 () Bool)

(assert (= bs!973473 (and b!4581402 b!4580471)))

(assert (=> bs!973473 (= (= (toList!4552 lt!1745232) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183300 lambda!183186))))

(declare-fun bs!973474 () Bool)

(assert (= bs!973474 (and b!4581402 b!4581005)))

(assert (=> bs!973474 (= (= (toList!4552 lt!1745232) (toList!4552 lt!1745616)) (= lambda!183300 lambda!183247))))

(assert (=> b!4581402 true))

(declare-fun bs!973475 () Bool)

(declare-fun b!4581405 () Bool)

(assert (= bs!973475 (and b!4581405 b!4580472)))

(declare-fun lambda!183301 () Int)

(assert (=> bs!973475 (= lambda!183301 lambda!183187)))

(declare-fun bs!973476 () Bool)

(assert (= bs!973476 (and b!4581405 b!4580706)))

(assert (=> bs!973476 (= lambda!183301 lambda!183227)))

(declare-fun bs!973477 () Bool)

(assert (= bs!973477 (and b!4581405 b!4581006)))

(assert (=> bs!973477 (= lambda!183301 lambda!183248)))

(declare-fun bs!973478 () Bool)

(assert (= bs!973478 (and b!4581405 b!4580763)))

(assert (=> bs!973478 (= lambda!183301 lambda!183229)))

(declare-fun bs!973479 () Bool)

(assert (= bs!973479 (and b!4581405 b!4580542)))

(assert (=> bs!973479 (= lambda!183301 lambda!183196)))

(declare-fun bs!973480 () Bool)

(assert (= bs!973480 (and b!4581405 b!4580523)))

(assert (=> bs!973480 (= lambda!183301 lambda!183189)))

(declare-fun b!4581398 () Bool)

(declare-fun e!2856914 () Unit!105525)

(declare-fun Unit!105844 () Unit!105525)

(assert (=> b!4581398 (= e!2856914 Unit!105844)))

(declare-fun b!4581399 () Bool)

(assert (=> b!4581399 false))

(declare-fun Unit!105845 () Unit!105525)

(assert (=> b!4581399 (= e!2856914 Unit!105845)))

(declare-fun b!4581400 () Bool)

(declare-fun e!2856912 () Unit!105525)

(declare-fun Unit!105846 () Unit!105525)

(assert (=> b!4581400 (= e!2856912 Unit!105846)))

(declare-fun d!1434780 () Bool)

(declare-fun e!2856915 () Bool)

(assert (=> d!1434780 e!2856915))

(declare-fun res!1914154 () Bool)

(assert (=> d!1434780 (=> (not res!1914154) (not e!2856915))))

(declare-fun lt!1746385 () List!51077)

(assert (=> d!1434780 (= res!1914154 (noDuplicate!791 lt!1746385))))

(declare-fun e!2856913 () List!51077)

(assert (=> d!1434780 (= lt!1746385 e!2856913)))

(declare-fun c!784203 () Bool)

(assert (=> d!1434780 (= c!784203 ((_ is Cons!50950) (toList!4552 lt!1745232)))))

(assert (=> d!1434780 (invariantList!1097 (toList!4552 lt!1745232))))

(assert (=> d!1434780 (= (getKeysList!544 (toList!4552 lt!1745232)) lt!1746385)))

(declare-fun b!4581401 () Bool)

(declare-fun res!1914155 () Bool)

(assert (=> b!4581401 (=> (not res!1914155) (not e!2856915))))

(assert (=> b!4581401 (= res!1914155 (= (length!438 lt!1746385) (length!439 (toList!4552 lt!1745232))))))

(declare-fun res!1914153 () Bool)

(assert (=> b!4581402 (=> (not res!1914153) (not e!2856915))))

(assert (=> b!4581402 (= res!1914153 (forall!10503 lt!1746385 lambda!183300))))

(declare-fun b!4581403 () Bool)

(assert (=> b!4581403 (= e!2856913 Nil!50953)))

(assert (=> b!4581404 (= e!2856913 (Cons!50953 (_1!29055 (h!56885 (toList!4552 lt!1745232))) (getKeysList!544 (t!358064 (toList!4552 lt!1745232)))))))

(declare-fun c!784205 () Bool)

(assert (=> b!4581404 (= c!784205 (containsKey!2057 (t!358064 (toList!4552 lt!1745232)) (_1!29055 (h!56885 (toList!4552 lt!1745232)))))))

(declare-fun lt!1746384 () Unit!105525)

(assert (=> b!4581404 (= lt!1746384 e!2856914)))

(declare-fun c!784204 () Bool)

(assert (=> b!4581404 (= c!784204 (contains!13849 (getKeysList!544 (t!358064 (toList!4552 lt!1745232))) (_1!29055 (h!56885 (toList!4552 lt!1745232)))))))

(declare-fun lt!1746386 () Unit!105525)

(assert (=> b!4581404 (= lt!1746386 e!2856912)))

(declare-fun lt!1746382 () List!51077)

(assert (=> b!4581404 (= lt!1746382 (getKeysList!544 (t!358064 (toList!4552 lt!1745232))))))

(declare-fun lt!1746388 () Unit!105525)

(assert (=> b!4581404 (= lt!1746388 (lemmaForallContainsAddHeadPreserves!211 (t!358064 (toList!4552 lt!1745232)) lt!1746382 (h!56885 (toList!4552 lt!1745232))))))

(assert (=> b!4581404 (forall!10503 lt!1746382 lambda!183299)))

(declare-fun lt!1746387 () Unit!105525)

(assert (=> b!4581404 (= lt!1746387 lt!1746388)))

(assert (=> b!4581405 (= e!2856915 (= (content!8587 lt!1746385) (content!8587 (map!11238 (toList!4552 lt!1745232) lambda!183301))))))

(assert (=> b!4581406 false))

(declare-fun lt!1746383 () Unit!105525)

(assert (=> b!4581406 (= lt!1746383 (forallContained!2766 (getKeysList!544 (t!358064 (toList!4552 lt!1745232))) lambda!183298 (_1!29055 (h!56885 (toList!4552 lt!1745232)))))))

(declare-fun Unit!105855 () Unit!105525)

(assert (=> b!4581406 (= e!2856912 Unit!105855)))

(assert (= (and d!1434780 c!784203) b!4581404))

(assert (= (and d!1434780 (not c!784203)) b!4581403))

(assert (= (and b!4581404 c!784205) b!4581399))

(assert (= (and b!4581404 (not c!784205)) b!4581398))

(assert (= (and b!4581404 c!784204) b!4581406))

(assert (= (and b!4581404 (not c!784204)) b!4581400))

(assert (= (and d!1434780 res!1914154) b!4581401))

(assert (= (and b!4581401 res!1914155) b!4581402))

(assert (= (and b!4581402 res!1914153) b!4581405))

(declare-fun m!5392569 () Bool)

(assert (=> b!4581402 m!5392569))

(assert (=> b!4581406 m!5391821))

(assert (=> b!4581406 m!5391821))

(declare-fun m!5392571 () Bool)

(assert (=> b!4581406 m!5392571))

(assert (=> b!4581404 m!5391821))

(declare-fun m!5392573 () Bool)

(assert (=> b!4581404 m!5392573))

(assert (=> b!4581404 m!5391821))

(assert (=> b!4581404 m!5391823))

(declare-fun m!5392575 () Bool)

(assert (=> b!4581404 m!5392575))

(declare-fun m!5392577 () Bool)

(assert (=> b!4581404 m!5392577))

(declare-fun m!5392579 () Bool)

(assert (=> b!4581405 m!5392579))

(declare-fun m!5392581 () Bool)

(assert (=> b!4581405 m!5392581))

(assert (=> b!4581405 m!5392581))

(declare-fun m!5392583 () Bool)

(assert (=> b!4581405 m!5392583))

(declare-fun m!5392585 () Bool)

(assert (=> d!1434780 m!5392585))

(assert (=> d!1434780 m!5390875))

(declare-fun m!5392587 () Bool)

(assert (=> b!4581401 m!5392587))

(assert (=> b!4581401 m!5390899))

(assert (=> b!4580417 d!1434780))

(assert (=> b!4580404 d!1434290))

(declare-fun d!1434794 () Bool)

(declare-fun c!784207 () Bool)

(assert (=> d!1434794 (= c!784207 ((_ is Nil!50953) (keys!17800 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))

(declare-fun e!2856929 () (InoxSet K!12320))

(assert (=> d!1434794 (= (content!8587 (keys!17800 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) e!2856929)))

(declare-fun b!4581421 () Bool)

(assert (=> b!4581421 (= e!2856929 ((as const (Array K!12320 Bool)) false))))

(declare-fun b!4581422 () Bool)

(assert (=> b!4581422 (= e!2856929 ((_ map or) (store ((as const (Array K!12320 Bool)) false) (h!56890 (keys!17800 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) true) (content!8587 (t!358067 (keys!17800 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))))

(assert (= (and d!1434794 c!784207) b!4581421))

(assert (= (and d!1434794 (not c!784207)) b!4581422))

(declare-fun m!5392589 () Bool)

(assert (=> b!4581422 m!5392589))

(declare-fun m!5392591 () Bool)

(assert (=> b!4581422 m!5392591))

(assert (=> b!4580302 d!1434794))

(declare-fun bs!973482 () Bool)

(declare-fun b!4581424 () Bool)

(assert (= bs!973482 (and b!4581424 b!4580703)))

(declare-fun lambda!183302 () Int)

(assert (=> bs!973482 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183302 lambda!183226))))

(declare-fun bs!973483 () Bool)

(assert (= bs!973483 (and b!4581424 b!4581406)))

(assert (=> bs!973483 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (t!358064 (toList!4552 lt!1745232))) (= lambda!183302 lambda!183298))))

(declare-fun bs!973484 () Bool)

(assert (= bs!973484 (and b!4581424 b!4580762)))

(assert (=> bs!973484 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (toList!4552 lt!1745657)) (= lambda!183302 lambda!183228))))

(declare-fun bs!973485 () Bool)

(assert (= bs!973485 (and b!4581424 b!4580707)))

(assert (=> bs!973485 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183302 lambda!183224))))

(declare-fun bs!973486 () Bool)

(assert (= bs!973486 (and b!4581424 b!4581404)))

(assert (=> bs!973486 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232)))) (= lambda!183302 lambda!183299))))

(declare-fun bs!973487 () Bool)

(assert (= bs!973487 (and b!4581424 b!4581402)))

(assert (=> bs!973487 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (toList!4552 lt!1745232)) (= lambda!183302 lambda!183300))))

(declare-fun bs!973488 () Bool)

(assert (= bs!973488 (and b!4581424 b!4580522)))

(assert (=> bs!973488 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (toList!4552 lt!1745232)) (= lambda!183302 lambda!183188))))

(declare-fun bs!973489 () Bool)

(assert (= bs!973489 (and b!4581424 b!4580705)))

(assert (=> bs!973489 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183302 lambda!183225))))

(declare-fun bs!973490 () Bool)

(assert (= bs!973490 (and b!4581424 b!4580541)))

(assert (=> bs!973490 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (toList!4552 lt!1745243)) (= lambda!183302 lambda!183195))))

(declare-fun bs!973491 () Bool)

(assert (= bs!973491 (and b!4581424 b!4580471)))

(assert (=> bs!973491 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183302 lambda!183186))))

(declare-fun bs!973492 () Bool)

(assert (= bs!973492 (and b!4581424 b!4581005)))

(assert (=> bs!973492 (= (= (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) (toList!4552 lt!1745616)) (= lambda!183302 lambda!183247))))

(assert (=> b!4581424 true))

(declare-fun bs!973493 () Bool)

(declare-fun b!4581425 () Bool)

(assert (= bs!973493 (and b!4581425 b!4580472)))

(declare-fun lambda!183303 () Int)

(assert (=> bs!973493 (= lambda!183303 lambda!183187)))

(declare-fun bs!973494 () Bool)

(assert (= bs!973494 (and b!4581425 b!4580706)))

(assert (=> bs!973494 (= lambda!183303 lambda!183227)))

(declare-fun bs!973495 () Bool)

(assert (= bs!973495 (and b!4581425 b!4581006)))

(assert (=> bs!973495 (= lambda!183303 lambda!183248)))

(declare-fun bs!973496 () Bool)

(assert (= bs!973496 (and b!4581425 b!4581405)))

(assert (=> bs!973496 (= lambda!183303 lambda!183301)))

(declare-fun bs!973497 () Bool)

(assert (= bs!973497 (and b!4581425 b!4580763)))

(assert (=> bs!973497 (= lambda!183303 lambda!183229)))

(declare-fun bs!973498 () Bool)

(assert (= bs!973498 (and b!4581425 b!4580542)))

(assert (=> bs!973498 (= lambda!183303 lambda!183196)))

(declare-fun bs!973499 () Bool)

(assert (= bs!973499 (and b!4581425 b!4580523)))

(assert (=> bs!973499 (= lambda!183303 lambda!183189)))

(declare-fun d!1434796 () Bool)

(declare-fun e!2856930 () Bool)

(assert (=> d!1434796 e!2856930))

(declare-fun res!1914168 () Bool)

(assert (=> d!1434796 (=> (not res!1914168) (not e!2856930))))

(declare-fun lt!1746391 () List!51077)

(assert (=> d!1434796 (= res!1914168 (noDuplicate!791 lt!1746391))))

(assert (=> d!1434796 (= lt!1746391 (getKeysList!544 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))))))

(assert (=> d!1434796 (= (keys!17800 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) lt!1746391)))

(declare-fun b!4581423 () Bool)

(declare-fun res!1914170 () Bool)

(assert (=> b!4581423 (=> (not res!1914170) (not e!2856930))))

(assert (=> b!4581423 (= res!1914170 (= (length!438 lt!1746391) (length!439 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)))))))

(declare-fun res!1914169 () Bool)

(assert (=> b!4581424 (=> (not res!1914169) (not e!2856930))))

(assert (=> b!4581424 (= res!1914169 (forall!10503 lt!1746391 lambda!183302))))

(assert (=> b!4581425 (= e!2856930 (= (content!8587 lt!1746391) (content!8587 (map!11238 (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232)) lambda!183303))))))

(assert (= (and d!1434796 res!1914168) b!4581423))

(assert (= (and b!4581423 res!1914170) b!4581424))

(assert (= (and b!4581424 res!1914169) b!4581425))

(declare-fun m!5392597 () Bool)

(assert (=> d!1434796 m!5392597))

(assert (=> d!1434796 m!5391635))

(declare-fun m!5392599 () Bool)

(assert (=> b!4581423 m!5392599))

(declare-fun m!5392601 () Bool)

(assert (=> b!4581423 m!5392601))

(declare-fun m!5392603 () Bool)

(assert (=> b!4581424 m!5392603))

(declare-fun m!5392605 () Bool)

(assert (=> b!4581425 m!5392605))

(declare-fun m!5392607 () Bool)

(assert (=> b!4581425 m!5392607))

(assert (=> b!4581425 m!5392607))

(declare-fun m!5392609 () Bool)

(assert (=> b!4581425 m!5392609))

(assert (=> b!4580302 d!1434796))

(declare-fun d!1434800 () Bool)

(declare-fun c!784208 () Bool)

(assert (=> d!1434800 (= c!784208 ((_ is Nil!50953) (keys!17800 lt!1745623)))))

(declare-fun e!2856931 () (InoxSet K!12320))

(assert (=> d!1434800 (= (content!8587 (keys!17800 lt!1745623)) e!2856931)))

(declare-fun b!4581426 () Bool)

(assert (=> b!4581426 (= e!2856931 ((as const (Array K!12320 Bool)) false))))

(declare-fun b!4581427 () Bool)

(assert (=> b!4581427 (= e!2856931 ((_ map or) (store ((as const (Array K!12320 Bool)) false) (h!56890 (keys!17800 lt!1745623)) true) (content!8587 (t!358067 (keys!17800 lt!1745623)))))))

(assert (= (and d!1434800 c!784208) b!4581426))

(assert (= (and d!1434800 (not c!784208)) b!4581427))

(declare-fun m!5392611 () Bool)

(assert (=> b!4581427 m!5392611))

(declare-fun m!5392613 () Bool)

(assert (=> b!4581427 m!5392613))

(assert (=> b!4580302 d!1434800))

(declare-fun bs!973500 () Bool)

(declare-fun b!4581429 () Bool)

(assert (= bs!973500 (and b!4581429 b!4580703)))

(declare-fun lambda!183304 () Int)

(assert (=> bs!973500 (= (= (toList!4552 lt!1745623) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183304 lambda!183226))))

(declare-fun bs!973501 () Bool)

(assert (= bs!973501 (and b!4581429 b!4581406)))

(assert (=> bs!973501 (= (= (toList!4552 lt!1745623) (t!358064 (toList!4552 lt!1745232))) (= lambda!183304 lambda!183298))))

(declare-fun bs!973502 () Bool)

(assert (= bs!973502 (and b!4581429 b!4580762)))

(assert (=> bs!973502 (= (= (toList!4552 lt!1745623) (toList!4552 lt!1745657)) (= lambda!183304 lambda!183228))))

(declare-fun bs!973503 () Bool)

(assert (= bs!973503 (and b!4581429 b!4580707)))

(assert (=> bs!973503 (= (= (toList!4552 lt!1745623) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183304 lambda!183224))))

(declare-fun bs!973504 () Bool)

(assert (= bs!973504 (and b!4581429 b!4581402)))

(assert (=> bs!973504 (= (= (toList!4552 lt!1745623) (toList!4552 lt!1745232)) (= lambda!183304 lambda!183300))))

(declare-fun bs!973505 () Bool)

(assert (= bs!973505 (and b!4581429 b!4580522)))

(assert (=> bs!973505 (= (= (toList!4552 lt!1745623) (toList!4552 lt!1745232)) (= lambda!183304 lambda!183188))))

(declare-fun bs!973507 () Bool)

(assert (= bs!973507 (and b!4581429 b!4580705)))

(assert (=> bs!973507 (= (= (toList!4552 lt!1745623) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183304 lambda!183225))))

(declare-fun bs!973508 () Bool)

(assert (= bs!973508 (and b!4581429 b!4580541)))

(assert (=> bs!973508 (= (= (toList!4552 lt!1745623) (toList!4552 lt!1745243)) (= lambda!183304 lambda!183195))))

(declare-fun bs!973509 () Bool)

(assert (= bs!973509 (and b!4581429 b!4580471)))

(assert (=> bs!973509 (= (= (toList!4552 lt!1745623) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183304 lambda!183186))))

(declare-fun bs!973510 () Bool)

(assert (= bs!973510 (and b!4581429 b!4581005)))

(assert (=> bs!973510 (= (= (toList!4552 lt!1745623) (toList!4552 lt!1745616)) (= lambda!183304 lambda!183247))))

(declare-fun bs!973511 () Bool)

(assert (= bs!973511 (and b!4581429 b!4581424)))

(assert (=> bs!973511 (= (= (toList!4552 lt!1745623) (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) (= lambda!183304 lambda!183302))))

(declare-fun bs!973512 () Bool)

(assert (= bs!973512 (and b!4581429 b!4581404)))

(assert (=> bs!973512 (= (= (toList!4552 lt!1745623) (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232)))) (= lambda!183304 lambda!183299))))

(assert (=> b!4581429 true))

(declare-fun bs!973513 () Bool)

(declare-fun b!4581430 () Bool)

(assert (= bs!973513 (and b!4581430 b!4580472)))

(declare-fun lambda!183305 () Int)

(assert (=> bs!973513 (= lambda!183305 lambda!183187)))

(declare-fun bs!973514 () Bool)

(assert (= bs!973514 (and b!4581430 b!4580706)))

(assert (=> bs!973514 (= lambda!183305 lambda!183227)))

(declare-fun bs!973515 () Bool)

(assert (= bs!973515 (and b!4581430 b!4581006)))

(assert (=> bs!973515 (= lambda!183305 lambda!183248)))

(declare-fun bs!973516 () Bool)

(assert (= bs!973516 (and b!4581430 b!4581425)))

(assert (=> bs!973516 (= lambda!183305 lambda!183303)))

(declare-fun bs!973517 () Bool)

(assert (= bs!973517 (and b!4581430 b!4581405)))

(assert (=> bs!973517 (= lambda!183305 lambda!183301)))

(declare-fun bs!973518 () Bool)

(assert (= bs!973518 (and b!4581430 b!4580763)))

(assert (=> bs!973518 (= lambda!183305 lambda!183229)))

(declare-fun bs!973519 () Bool)

(assert (= bs!973519 (and b!4581430 b!4580542)))

(assert (=> bs!973519 (= lambda!183305 lambda!183196)))

(declare-fun bs!973520 () Bool)

(assert (= bs!973520 (and b!4581430 b!4580523)))

(assert (=> bs!973520 (= lambda!183305 lambda!183189)))

(declare-fun d!1434802 () Bool)

(declare-fun e!2856932 () Bool)

(assert (=> d!1434802 e!2856932))

(declare-fun res!1914171 () Bool)

(assert (=> d!1434802 (=> (not res!1914171) (not e!2856932))))

(declare-fun lt!1746393 () List!51077)

(assert (=> d!1434802 (= res!1914171 (noDuplicate!791 lt!1746393))))

(assert (=> d!1434802 (= lt!1746393 (getKeysList!544 (toList!4552 lt!1745623)))))

(assert (=> d!1434802 (= (keys!17800 lt!1745623) lt!1746393)))

(declare-fun b!4581428 () Bool)

(declare-fun res!1914173 () Bool)

(assert (=> b!4581428 (=> (not res!1914173) (not e!2856932))))

(assert (=> b!4581428 (= res!1914173 (= (length!438 lt!1746393) (length!439 (toList!4552 lt!1745623))))))

(declare-fun res!1914172 () Bool)

(assert (=> b!4581429 (=> (not res!1914172) (not e!2856932))))

(assert (=> b!4581429 (= res!1914172 (forall!10503 lt!1746393 lambda!183304))))

(assert (=> b!4581430 (= e!2856932 (= (content!8587 lt!1746393) (content!8587 (map!11238 (toList!4552 lt!1745623) lambda!183305))))))

(assert (= (and d!1434802 res!1914171) b!4581428))

(assert (= (and b!4581428 res!1914173) b!4581429))

(assert (= (and b!4581429 res!1914172) b!4581430))

(declare-fun m!5392623 () Bool)

(assert (=> d!1434802 m!5392623))

(assert (=> d!1434802 m!5391599))

(declare-fun m!5392625 () Bool)

(assert (=> b!4581428 m!5392625))

(declare-fun m!5392627 () Bool)

(assert (=> b!4581428 m!5392627))

(declare-fun m!5392629 () Bool)

(assert (=> b!4581429 m!5392629))

(declare-fun m!5392631 () Bool)

(assert (=> b!4581430 m!5392631))

(declare-fun m!5392633 () Bool)

(assert (=> b!4581430 m!5392633))

(assert (=> b!4581430 m!5392633))

(declare-fun m!5392635 () Bool)

(assert (=> b!4581430 m!5392635))

(assert (=> b!4580302 d!1434802))

(declare-fun bs!973521 () Bool)

(declare-fun b!4581444 () Bool)

(assert (= bs!973521 (and b!4581444 b!4580703)))

(declare-fun lambda!183306 () Int)

(assert (=> bs!973521 (= (= (t!358064 (toList!4552 lt!1745243)) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183306 lambda!183226))))

(declare-fun bs!973522 () Bool)

(assert (= bs!973522 (and b!4581444 b!4581406)))

(assert (=> bs!973522 (= (= (t!358064 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745232))) (= lambda!183306 lambda!183298))))

(declare-fun bs!973523 () Bool)

(assert (= bs!973523 (and b!4581444 b!4580762)))

(assert (=> bs!973523 (= (= (t!358064 (toList!4552 lt!1745243)) (toList!4552 lt!1745657)) (= lambda!183306 lambda!183228))))

(declare-fun bs!973524 () Bool)

(assert (= bs!973524 (and b!4581444 b!4581429)))

(assert (=> bs!973524 (= (= (t!358064 (toList!4552 lt!1745243)) (toList!4552 lt!1745623)) (= lambda!183306 lambda!183304))))

(declare-fun bs!973525 () Bool)

(assert (= bs!973525 (and b!4581444 b!4580707)))

(assert (=> bs!973525 (= (= (t!358064 (toList!4552 lt!1745243)) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183306 lambda!183224))))

(declare-fun bs!973526 () Bool)

(assert (= bs!973526 (and b!4581444 b!4581402)))

(assert (=> bs!973526 (= (= (t!358064 (toList!4552 lt!1745243)) (toList!4552 lt!1745232)) (= lambda!183306 lambda!183300))))

(declare-fun bs!973527 () Bool)

(assert (= bs!973527 (and b!4581444 b!4580522)))

(assert (=> bs!973527 (= (= (t!358064 (toList!4552 lt!1745243)) (toList!4552 lt!1745232)) (= lambda!183306 lambda!183188))))

(declare-fun bs!973528 () Bool)

(assert (= bs!973528 (and b!4581444 b!4580705)))

(assert (=> bs!973528 (= (= (t!358064 (toList!4552 lt!1745243)) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183306 lambda!183225))))

(declare-fun bs!973529 () Bool)

(assert (= bs!973529 (and b!4581444 b!4580541)))

(assert (=> bs!973529 (= (= (t!358064 (toList!4552 lt!1745243)) (toList!4552 lt!1745243)) (= lambda!183306 lambda!183195))))

(declare-fun bs!973530 () Bool)

(assert (= bs!973530 (and b!4581444 b!4580471)))

(assert (=> bs!973530 (= (= (t!358064 (toList!4552 lt!1745243)) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183306 lambda!183186))))

(declare-fun bs!973531 () Bool)

(assert (= bs!973531 (and b!4581444 b!4581005)))

(assert (=> bs!973531 (= (= (t!358064 (toList!4552 lt!1745243)) (toList!4552 lt!1745616)) (= lambda!183306 lambda!183247))))

(declare-fun bs!973532 () Bool)

(assert (= bs!973532 (and b!4581444 b!4581424)))

(assert (=> bs!973532 (= (= (t!358064 (toList!4552 lt!1745243)) (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) (= lambda!183306 lambda!183302))))

(declare-fun bs!973533 () Bool)

(assert (= bs!973533 (and b!4581444 b!4581404)))

(assert (=> bs!973533 (= (= (t!358064 (toList!4552 lt!1745243)) (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232)))) (= lambda!183306 lambda!183299))))

(assert (=> b!4581444 true))

(declare-fun bs!973534 () Bool)

(declare-fun b!4581442 () Bool)

(assert (= bs!973534 (and b!4581442 b!4580703)))

(declare-fun lambda!183307 () Int)

(assert (=> bs!973534 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183307 lambda!183226))))

(declare-fun bs!973535 () Bool)

(assert (= bs!973535 (and b!4581442 b!4581406)))

(assert (=> bs!973535 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (t!358064 (toList!4552 lt!1745232))) (= lambda!183307 lambda!183298))))

(declare-fun bs!973536 () Bool)

(assert (= bs!973536 (and b!4581442 b!4580762)))

(assert (=> bs!973536 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (toList!4552 lt!1745657)) (= lambda!183307 lambda!183228))))

(declare-fun bs!973537 () Bool)

(assert (= bs!973537 (and b!4581442 b!4581429)))

(assert (=> bs!973537 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (toList!4552 lt!1745623)) (= lambda!183307 lambda!183304))))

(declare-fun bs!973538 () Bool)

(assert (= bs!973538 (and b!4581442 b!4580707)))

(assert (=> bs!973538 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183307 lambda!183224))))

(declare-fun bs!973539 () Bool)

(assert (= bs!973539 (and b!4581442 b!4581444)))

(assert (=> bs!973539 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (t!358064 (toList!4552 lt!1745243))) (= lambda!183307 lambda!183306))))

(declare-fun bs!973540 () Bool)

(assert (= bs!973540 (and b!4581442 b!4581402)))

(assert (=> bs!973540 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (toList!4552 lt!1745232)) (= lambda!183307 lambda!183300))))

(declare-fun bs!973541 () Bool)

(assert (= bs!973541 (and b!4581442 b!4580522)))

(assert (=> bs!973541 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (toList!4552 lt!1745232)) (= lambda!183307 lambda!183188))))

(declare-fun bs!973542 () Bool)

(assert (= bs!973542 (and b!4581442 b!4580705)))

(assert (=> bs!973542 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183307 lambda!183225))))

(declare-fun bs!973543 () Bool)

(assert (= bs!973543 (and b!4581442 b!4580541)))

(assert (=> bs!973543 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (toList!4552 lt!1745243)) (= lambda!183307 lambda!183195))))

(declare-fun bs!973544 () Bool)

(assert (= bs!973544 (and b!4581442 b!4580471)))

(assert (=> bs!973544 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183307 lambda!183186))))

(declare-fun bs!973545 () Bool)

(assert (= bs!973545 (and b!4581442 b!4581005)))

(assert (=> bs!973545 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (toList!4552 lt!1745616)) (= lambda!183307 lambda!183247))))

(declare-fun bs!973546 () Bool)

(assert (= bs!973546 (and b!4581442 b!4581424)))

(assert (=> bs!973546 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) (= lambda!183307 lambda!183302))))

(declare-fun bs!973547 () Bool)

(assert (= bs!973547 (and b!4581442 b!4581404)))

(assert (=> bs!973547 (= (= (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243))) (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232)))) (= lambda!183307 lambda!183299))))

(assert (=> b!4581442 true))

(declare-fun bs!973548 () Bool)

(declare-fun b!4581440 () Bool)

(assert (= bs!973548 (and b!4581440 b!4580703)))

(declare-fun lambda!183308 () Int)

(assert (=> bs!973548 (= (= (toList!4552 lt!1745243) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183308 lambda!183226))))

(declare-fun bs!973549 () Bool)

(assert (= bs!973549 (and b!4581440 b!4581406)))

(assert (=> bs!973549 (= (= (toList!4552 lt!1745243) (t!358064 (toList!4552 lt!1745232))) (= lambda!183308 lambda!183298))))

(declare-fun bs!973550 () Bool)

(assert (= bs!973550 (and b!4581440 b!4580762)))

(assert (=> bs!973550 (= (= (toList!4552 lt!1745243) (toList!4552 lt!1745657)) (= lambda!183308 lambda!183228))))

(declare-fun bs!973551 () Bool)

(assert (= bs!973551 (and b!4581440 b!4581429)))

(assert (=> bs!973551 (= (= (toList!4552 lt!1745243) (toList!4552 lt!1745623)) (= lambda!183308 lambda!183304))))

(declare-fun bs!973552 () Bool)

(assert (= bs!973552 (and b!4581440 b!4581444)))

(assert (=> bs!973552 (= (= (toList!4552 lt!1745243) (t!358064 (toList!4552 lt!1745243))) (= lambda!183308 lambda!183306))))

(declare-fun bs!973554 () Bool)

(assert (= bs!973554 (and b!4581440 b!4581402)))

(assert (=> bs!973554 (= (= (toList!4552 lt!1745243) (toList!4552 lt!1745232)) (= lambda!183308 lambda!183300))))

(declare-fun bs!973555 () Bool)

(assert (= bs!973555 (and b!4581440 b!4580522)))

(assert (=> bs!973555 (= (= (toList!4552 lt!1745243) (toList!4552 lt!1745232)) (= lambda!183308 lambda!183188))))

(declare-fun bs!973557 () Bool)

(assert (= bs!973557 (and b!4581440 b!4580705)))

(assert (=> bs!973557 (= (= (toList!4552 lt!1745243) (Cons!50950 (h!56885 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))) (= lambda!183308 lambda!183225))))

(declare-fun bs!973558 () Bool)

(assert (= bs!973558 (and b!4581440 b!4580541)))

(assert (=> bs!973558 (= lambda!183308 lambda!183195)))

(declare-fun bs!973560 () Bool)

(assert (= bs!973560 (and b!4581440 b!4580471)))

(assert (=> bs!973560 (= (= (toList!4552 lt!1745243) (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))) (= lambda!183308 lambda!183186))))

(declare-fun bs!973562 () Bool)

(assert (= bs!973562 (and b!4581440 b!4581005)))

(assert (=> bs!973562 (= (= (toList!4552 lt!1745243) (toList!4552 lt!1745616)) (= lambda!183308 lambda!183247))))

(declare-fun bs!973564 () Bool)

(assert (= bs!973564 (and b!4581440 b!4580707)))

(assert (=> bs!973564 (= (= (toList!4552 lt!1745243) (t!358064 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))) (= lambda!183308 lambda!183224))))

(declare-fun bs!973566 () Bool)

(assert (= bs!973566 (and b!4581440 b!4581442)))

(assert (=> bs!973566 (= (= (toList!4552 lt!1745243) (Cons!50950 (h!56885 (toList!4552 lt!1745243)) (t!358064 (toList!4552 lt!1745243)))) (= lambda!183308 lambda!183307))))

(declare-fun bs!973567 () Bool)

(assert (= bs!973567 (and b!4581440 b!4581424)))

(assert (=> bs!973567 (= (= (toList!4552 lt!1745243) (toList!4552 (addToMapMapFromBucket!785 (_2!29056 lt!1745216) lt!1745232))) (= lambda!183308 lambda!183302))))

(declare-fun bs!973569 () Bool)

(assert (= bs!973569 (and b!4581440 b!4581404)))

(assert (=> bs!973569 (= (= (toList!4552 lt!1745243) (Cons!50950 (h!56885 (toList!4552 lt!1745232)) (t!358064 (toList!4552 lt!1745232)))) (= lambda!183308 lambda!183299))))

(assert (=> b!4581440 true))

(declare-fun bs!973573 () Bool)

(declare-fun b!4581443 () Bool)

(assert (= bs!973573 (and b!4581443 b!4580472)))

(declare-fun lambda!183310 () Int)

(assert (=> bs!973573 (= lambda!183310 lambda!183187)))

(declare-fun bs!973574 () Bool)

(assert (= bs!973574 (and b!4581443 b!4581430)))

(assert (=> bs!973574 (= lambda!183310 lambda!183305)))

(declare-fun bs!973576 () Bool)

(assert (= bs!973576 (and b!4581443 b!4580706)))

(assert (=> bs!973576 (= lambda!183310 lambda!183227)))

(declare-fun bs!973578 () Bool)

(assert (= bs!973578 (and b!4581443 b!4581006)))

(assert (=> bs!973578 (= lambda!183310 lambda!183248)))

(declare-fun bs!973580 () Bool)

(assert (= bs!973580 (and b!4581443 b!4581425)))

(assert (=> bs!973580 (= lambda!183310 lambda!183303)))

(declare-fun bs!973581 () Bool)

(assert (= bs!973581 (and b!4581443 b!4581405)))

(assert (=> bs!973581 (= lambda!183310 lambda!183301)))

(declare-fun bs!973583 () Bool)

(assert (= bs!973583 (and b!4581443 b!4580763)))

(assert (=> bs!973583 (= lambda!183310 lambda!183229)))

(declare-fun bs!973584 () Bool)

(assert (= bs!973584 (and b!4581443 b!4580542)))

(assert (=> bs!973584 (= lambda!183310 lambda!183196)))

(declare-fun bs!973585 () Bool)

(assert (= bs!973585 (and b!4581443 b!4580523)))

(assert (=> bs!973585 (= lambda!183310 lambda!183189)))

(declare-fun b!4581436 () Bool)

(declare-fun e!2856939 () Unit!105525)

(declare-fun Unit!105858 () Unit!105525)

(assert (=> b!4581436 (= e!2856939 Unit!105858)))

(declare-fun b!4581437 () Bool)

(assert (=> b!4581437 false))

(declare-fun Unit!105859 () Unit!105525)

(assert (=> b!4581437 (= e!2856939 Unit!105859)))

(declare-fun b!4581438 () Bool)

(declare-fun e!2856937 () Unit!105525)

(declare-fun Unit!105860 () Unit!105525)

(assert (=> b!4581438 (= e!2856937 Unit!105860)))

(declare-fun d!1434808 () Bool)

(declare-fun e!2856940 () Bool)

(assert (=> d!1434808 e!2856940))

(declare-fun res!1914178 () Bool)

(assert (=> d!1434808 (=> (not res!1914178) (not e!2856940))))

(declare-fun lt!1746404 () List!51077)

(assert (=> d!1434808 (= res!1914178 (noDuplicate!791 lt!1746404))))

(declare-fun e!2856938 () List!51077)

(assert (=> d!1434808 (= lt!1746404 e!2856938)))

(declare-fun c!784210 () Bool)

(assert (=> d!1434808 (= c!784210 ((_ is Cons!50950) (toList!4552 lt!1745243)))))

(assert (=> d!1434808 (invariantList!1097 (toList!4552 lt!1745243))))

(assert (=> d!1434808 (= (getKeysList!544 (toList!4552 lt!1745243)) lt!1746404)))

(declare-fun b!4581439 () Bool)

(declare-fun res!1914179 () Bool)

(assert (=> b!4581439 (=> (not res!1914179) (not e!2856940))))

(assert (=> b!4581439 (= res!1914179 (= (length!438 lt!1746404) (length!439 (toList!4552 lt!1745243))))))

(declare-fun res!1914177 () Bool)

(assert (=> b!4581440 (=> (not res!1914177) (not e!2856940))))

(assert (=> b!4581440 (= res!1914177 (forall!10503 lt!1746404 lambda!183308))))

(declare-fun b!4581441 () Bool)

(assert (=> b!4581441 (= e!2856938 Nil!50953)))

(assert (=> b!4581442 (= e!2856938 (Cons!50953 (_1!29055 (h!56885 (toList!4552 lt!1745243))) (getKeysList!544 (t!358064 (toList!4552 lt!1745243)))))))

(declare-fun c!784212 () Bool)

(assert (=> b!4581442 (= c!784212 (containsKey!2057 (t!358064 (toList!4552 lt!1745243)) (_1!29055 (h!56885 (toList!4552 lt!1745243)))))))

(declare-fun lt!1746403 () Unit!105525)

(assert (=> b!4581442 (= lt!1746403 e!2856939)))

(declare-fun c!784211 () Bool)

(assert (=> b!4581442 (= c!784211 (contains!13849 (getKeysList!544 (t!358064 (toList!4552 lt!1745243))) (_1!29055 (h!56885 (toList!4552 lt!1745243)))))))

(declare-fun lt!1746405 () Unit!105525)

(assert (=> b!4581442 (= lt!1746405 e!2856937)))

(declare-fun lt!1746401 () List!51077)

(assert (=> b!4581442 (= lt!1746401 (getKeysList!544 (t!358064 (toList!4552 lt!1745243))))))

(declare-fun lt!1746407 () Unit!105525)

(assert (=> b!4581442 (= lt!1746407 (lemmaForallContainsAddHeadPreserves!211 (t!358064 (toList!4552 lt!1745243)) lt!1746401 (h!56885 (toList!4552 lt!1745243))))))

(assert (=> b!4581442 (forall!10503 lt!1746401 lambda!183307)))

(declare-fun lt!1746406 () Unit!105525)

(assert (=> b!4581442 (= lt!1746406 lt!1746407)))

(assert (=> b!4581443 (= e!2856940 (= (content!8587 lt!1746404) (content!8587 (map!11238 (toList!4552 lt!1745243) lambda!183310))))))

(assert (=> b!4581444 false))

(declare-fun lt!1746402 () Unit!105525)

(assert (=> b!4581444 (= lt!1746402 (forallContained!2766 (getKeysList!544 (t!358064 (toList!4552 lt!1745243))) lambda!183306 (_1!29055 (h!56885 (toList!4552 lt!1745243)))))))

(declare-fun Unit!105861 () Unit!105525)

(assert (=> b!4581444 (= e!2856937 Unit!105861)))

(assert (= (and d!1434808 c!784210) b!4581442))

(assert (= (and d!1434808 (not c!784210)) b!4581441))

(assert (= (and b!4581442 c!784212) b!4581437))

(assert (= (and b!4581442 (not c!784212)) b!4581436))

(assert (= (and b!4581442 c!784211) b!4581444))

(assert (= (and b!4581442 (not c!784211)) b!4581438))

(assert (= (and d!1434808 res!1914178) b!4581439))

(assert (= (and b!4581439 res!1914179) b!4581440))

(assert (= (and b!4581440 res!1914177) b!4581443))

(declare-fun m!5392673 () Bool)

(assert (=> b!4581440 m!5392673))

(assert (=> b!4581444 m!5391535))

(assert (=> b!4581444 m!5391535))

(declare-fun m!5392675 () Bool)

(assert (=> b!4581444 m!5392675))

(assert (=> b!4581442 m!5391535))

(declare-fun m!5392677 () Bool)

(assert (=> b!4581442 m!5392677))

(assert (=> b!4581442 m!5391535))

(assert (=> b!4581442 m!5391537))

(declare-fun m!5392679 () Bool)

(assert (=> b!4581442 m!5392679))

(declare-fun m!5392681 () Bool)

(assert (=> b!4581442 m!5392681))

(declare-fun m!5392683 () Bool)

(assert (=> b!4581443 m!5392683))

(declare-fun m!5392685 () Bool)

(assert (=> b!4581443 m!5392685))

(assert (=> b!4581443 m!5392685))

(declare-fun m!5392687 () Bool)

(assert (=> b!4581443 m!5392687))

(declare-fun m!5392689 () Bool)

(assert (=> d!1434808 m!5392689))

(assert (=> d!1434808 m!5390893))

(declare-fun m!5392691 () Bool)

(assert (=> b!4581439 m!5392691))

(assert (=> b!4581439 m!5390977))

(assert (=> b!4580112 d!1434808))

(declare-fun d!1434822 () Bool)

(assert (=> d!1434822 (= (invariantList!1097 (toList!4552 lt!1745598)) (noDuplicatedKeys!306 (toList!4552 lt!1745598)))))

(declare-fun bs!973595 () Bool)

(assert (= bs!973595 d!1434822))

(declare-fun m!5392693 () Bool)

(assert (=> bs!973595 m!5392693))

(assert (=> d!1434134 d!1434822))

(declare-fun d!1434824 () Bool)

(declare-fun res!1914189 () Bool)

(declare-fun e!2856955 () Bool)

(assert (=> d!1434824 (=> res!1914189 e!2856955)))

(assert (=> d!1434824 (= res!1914189 ((_ is Nil!50951) (toList!4551 lt!1745223)))))

(assert (=> d!1434824 (= (forall!10500 (toList!4551 lt!1745223) lambda!183144) e!2856955)))

(declare-fun b!4581472 () Bool)

(declare-fun e!2856956 () Bool)

(assert (=> b!4581472 (= e!2856955 e!2856956)))

(declare-fun res!1914190 () Bool)

(assert (=> b!4581472 (=> (not res!1914190) (not e!2856956))))

(assert (=> b!4581472 (= res!1914190 (dynLambda!21335 lambda!183144 (h!56886 (toList!4551 lt!1745223))))))

(declare-fun b!4581473 () Bool)

(assert (=> b!4581473 (= e!2856956 (forall!10500 (t!358065 (toList!4551 lt!1745223)) lambda!183144))))

(assert (= (and d!1434824 (not res!1914189)) b!4581472))

(assert (= (and b!4581472 res!1914190) b!4581473))

(declare-fun b_lambda!166143 () Bool)

(assert (=> (not b_lambda!166143) (not b!4581472)))

(declare-fun m!5392695 () Bool)

(assert (=> b!4581472 m!5392695))

(declare-fun m!5392697 () Bool)

(assert (=> b!4581473 m!5392697))

(assert (=> d!1434134 d!1434824))

(declare-fun d!1434826 () Bool)

(declare-fun res!1914191 () Bool)

(declare-fun e!2856957 () Bool)

(assert (=> d!1434826 (=> res!1914191 e!2856957)))

(assert (=> d!1434826 (= res!1914191 (and ((_ is Cons!50950) lt!1745702) (= (_1!29055 (h!56885 lt!1745702)) key!3287)))))

(assert (=> d!1434826 (= (containsKey!2054 lt!1745702 key!3287) e!2856957)))

(declare-fun b!4581474 () Bool)

(declare-fun e!2856958 () Bool)

(assert (=> b!4581474 (= e!2856957 e!2856958)))

(declare-fun res!1914192 () Bool)

(assert (=> b!4581474 (=> (not res!1914192) (not e!2856958))))

(assert (=> b!4581474 (= res!1914192 ((_ is Cons!50950) lt!1745702))))

(declare-fun b!4581475 () Bool)

(assert (=> b!4581475 (= e!2856958 (containsKey!2054 (t!358064 lt!1745702) key!3287))))

(assert (= (and d!1434826 (not res!1914191)) b!4581474))

(assert (= (and b!4581474 res!1914192) b!4581475))

(declare-fun m!5392699 () Bool)

(assert (=> b!4581475 m!5392699))

(assert (=> d!1434240 d!1434826))

(declare-fun d!1434828 () Bool)

(declare-fun res!1914193 () Bool)

(declare-fun e!2856959 () Bool)

(assert (=> d!1434828 (=> res!1914193 e!2856959)))

(assert (=> d!1434828 (= res!1914193 (not ((_ is Cons!50950) lt!1745226)))))

(assert (=> d!1434828 (= (noDuplicateKeys!1272 lt!1745226) e!2856959)))

(declare-fun b!4581476 () Bool)

(declare-fun e!2856960 () Bool)

(assert (=> b!4581476 (= e!2856959 e!2856960)))

(declare-fun res!1914194 () Bool)

(assert (=> b!4581476 (=> (not res!1914194) (not e!2856960))))

(assert (=> b!4581476 (= res!1914194 (not (containsKey!2054 (t!358064 lt!1745226) (_1!29055 (h!56885 lt!1745226)))))))

(declare-fun b!4581477 () Bool)

(assert (=> b!4581477 (= e!2856960 (noDuplicateKeys!1272 (t!358064 lt!1745226)))))

(assert (= (and d!1434828 (not res!1914193)) b!4581476))

(assert (= (and b!4581476 res!1914194) b!4581477))

(declare-fun m!5392701 () Bool)

(assert (=> b!4581476 m!5392701))

(assert (=> b!4581477 m!5390799))

(assert (=> d!1434240 d!1434828))

(declare-fun d!1434830 () Bool)

(declare-fun res!1914195 () Bool)

(declare-fun e!2856961 () Bool)

(assert (=> d!1434830 (=> res!1914195 e!2856961)))

(assert (=> d!1434830 (= res!1914195 ((_ is Nil!50950) newBucket!178))))

(assert (=> d!1434830 (= (forall!10502 newBucket!178 lambda!183178) e!2856961)))

(declare-fun b!4581478 () Bool)

(declare-fun e!2856962 () Bool)

(assert (=> b!4581478 (= e!2856961 e!2856962)))

(declare-fun res!1914196 () Bool)

(assert (=> b!4581478 (=> (not res!1914196) (not e!2856962))))

(assert (=> b!4581478 (= res!1914196 (dynLambda!21336 lambda!183178 (h!56885 newBucket!178)))))

(declare-fun b!4581479 () Bool)

(assert (=> b!4581479 (= e!2856962 (forall!10502 (t!358064 newBucket!178) lambda!183178))))

(assert (= (and d!1434830 (not res!1914195)) b!4581478))

(assert (= (and b!4581478 res!1914196) b!4581479))

(declare-fun b_lambda!166145 () Bool)

(assert (=> (not b_lambda!166145) (not b!4581478)))

(declare-fun m!5392703 () Bool)

(assert (=> b!4581478 m!5392703))

(declare-fun m!5392705 () Bool)

(assert (=> b!4581479 m!5392705))

(assert (=> d!1434256 d!1434830))

(assert (=> b!4580414 d!1434390))

(assert (=> b!4580414 d!1434326))

(declare-fun bs!973620 () Bool)

(declare-fun b!4581483 () Bool)

(assert (= bs!973620 (and b!4581483 b!4580368)))

(declare-fun lambda!183315 () Int)

(assert (=> bs!973620 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745665) (= lambda!183315 lambda!183166))))

(declare-fun bs!973622 () Bool)

(assert (= bs!973622 (and b!4581483 b!4581305)))

(assert (=> bs!973622 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183315 lambda!183289))))

(declare-fun bs!973623 () Bool)

(assert (= bs!973623 (and b!4581483 b!4580772)))

(assert (=> bs!973623 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745913) (= lambda!183315 lambda!183232))))

(declare-fun bs!973624 () Bool)

(assert (= bs!973624 (and b!4581483 b!4581334)))

(assert (=> bs!973624 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183315 lambda!183294))))

(declare-fun bs!973625 () Bool)

(assert (= bs!973625 (and b!4581483 b!4580305)))

(assert (=> bs!973625 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745627) (= lambda!183315 lambda!183159))))

(declare-fun bs!973626 () Bool)

(assert (= bs!973626 (and b!4581483 d!1434760)))

(assert (=> bs!973626 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746269) (= lambda!183315 lambda!183291))))

(declare-fun bs!973627 () Bool)

(assert (= bs!973627 (and b!4581483 b!4581137)))

(assert (=> bs!973627 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (-!480 lt!1745232 key!3287)) (= lambda!183315 lambda!183257))))

(declare-fun bs!973628 () Bool)

(assert (= bs!973628 (and b!4581483 b!4581259)))

(assert (=> bs!973628 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746231) (= lambda!183315 lambda!183283))))

(declare-fun bs!973629 () Bool)

(assert (= bs!973629 (and b!4581483 b!4580257)))

(assert (=> bs!973629 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745576) (= lambda!183315 lambda!183142))))

(declare-fun bs!973630 () Bool)

(assert (= bs!973630 (and b!4581483 b!4581306)))

(assert (=> bs!973630 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183315 lambda!183288))))

(declare-fun bs!973631 () Bool)

(assert (= bs!973631 (and b!4581483 d!1434446)))

(assert (=> bs!973631 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745852) (= lambda!183315 lambda!183214))))

(declare-fun bs!973632 () Bool)

(assert (= bs!973632 (and b!4581483 b!4580536)))

(assert (=> bs!973632 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183315 lambda!183190))))

(declare-fun bs!973633 () Bool)

(assert (= bs!973633 (and b!4581483 b!4580306)))

(assert (=> bs!973633 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745232) (= lambda!183315 lambda!183157))))

(declare-fun bs!973634 () Bool)

(assert (= bs!973634 (and b!4581483 d!1434424)))

(assert (=> bs!973634 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745214) (= lambda!183315 lambda!183205))))

(assert (=> bs!973620 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745214) (= lambda!183315 lambda!183165))))

(declare-fun bs!973635 () Bool)

(assert (= bs!973635 (and b!4581483 b!4581136)))

(assert (=> bs!973635 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746150) (= lambda!183315 lambda!183260))))

(assert (=> bs!973635 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (-!480 lt!1745232 key!3287)) (= lambda!183315 lambda!183259))))

(declare-fun bs!973636 () Bool)

(assert (= bs!973636 (and b!4581483 b!4580574)))

(assert (=> bs!973636 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745787) (= lambda!183315 lambda!183202))))

(declare-fun bs!973637 () Bool)

(assert (= bs!973637 (and b!4581483 b!4581260)))

(assert (=> bs!973637 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183315 lambda!183278))))

(declare-fun bs!973638 () Bool)

(assert (= bs!973638 (and b!4581483 b!4580773)))

(assert (=> bs!973638 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183315 lambda!183230))))

(declare-fun bs!973639 () Bool)

(assert (= bs!973639 (and b!4581483 b!4580664)))

(assert (=> bs!973639 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183315 lambda!183211))))

(declare-fun bs!973640 () Bool)

(assert (= bs!973640 (and b!4581483 d!1434774)))

(assert (=> bs!973640 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746311) (= lambda!183315 lambda!183296))))

(declare-fun bs!973641 () Bool)

(assert (= bs!973641 (and b!4581483 b!4580955)))

(assert (=> bs!973641 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746040) (= lambda!183315 lambda!183244))))

(declare-fun bs!973642 () Bool)

(assert (= bs!973642 (and b!4581483 d!1434224)))

(assert (=> bs!973642 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745668) (= lambda!183315 lambda!183167))))

(assert (=> bs!973628 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183315 lambda!183280))))

(declare-fun bs!973643 () Bool)

(assert (= bs!973643 (and b!4581483 d!1434366)))

(assert (=> bs!973643 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745790) (= lambda!183315 lambda!183203))))

(declare-fun bs!973644 () Bool)

(assert (= bs!973644 (and b!4581483 d!1434060)))

(assert (=> bs!973644 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745579) (= lambda!183315 lambda!183143))))

(declare-fun bs!973645 () Bool)

(assert (= bs!973645 (and b!4581483 d!1434648)))

(assert (=> bs!973645 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746153) (= lambda!183315 lambda!183265))))

(declare-fun bs!973646 () Bool)

(assert (= bs!973646 (and b!4581483 d!1434338)))

(assert (=> bs!973646 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745759) (= lambda!183315 lambda!183193))))

(assert (=> bs!973625 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745232) (= lambda!183315 lambda!183158))))

(assert (=> bs!973624 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746308) (= lambda!183315 lambda!183295))))

(declare-fun bs!973647 () Bool)

(assert (= bs!973647 (and b!4581483 b!4579991)))

(assert (=> bs!973647 (not (= lambda!183315 lambda!183043))))

(declare-fun bs!973648 () Bool)

(assert (= bs!973648 (and b!4581483 b!4580535)))

(assert (=> bs!973648 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745756) (= lambda!183315 lambda!183192))))

(declare-fun bs!973649 () Bool)

(assert (= bs!973649 (and b!4581483 b!4580369)))

(assert (=> bs!973649 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745214) (= lambda!183315 lambda!183164))))

(declare-fun bs!973651 () Bool)

(assert (= bs!973651 (and b!4581483 b!4580575)))

(assert (=> bs!973651 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183315 lambda!183200))))

(declare-fun bs!973653 () Bool)

(assert (= bs!973653 (and b!4581483 d!1434556)))

(assert (=> bs!973653 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746043) (= lambda!183315 lambda!183245))))

(assert (=> bs!973648 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183315 lambda!183191))))

(assert (=> bs!973623 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183315 lambda!183231))))

(declare-fun bs!973656 () Bool)

(assert (= bs!973656 (and b!4581483 b!4580663)))

(assert (=> bs!973656 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745849) (= lambda!183315 lambda!183213))))

(declare-fun bs!973658 () Bool)

(assert (= bs!973658 (and b!4581483 d!1434720)))

(assert (=> bs!973658 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746234) (= lambda!183315 lambda!183287))))

(declare-fun bs!973660 () Bool)

(assert (= bs!973660 (and b!4581483 b!4580956)))

(assert (=> bs!973660 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183315 lambda!183242))))

(assert (=> bs!973636 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183315 lambda!183201))))

(declare-fun bs!973663 () Bool)

(assert (= bs!973663 (and b!4581483 b!4581335)))

(assert (=> bs!973663 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183315 lambda!183293))))

(declare-fun bs!973664 () Bool)

(assert (= bs!973664 (and b!4581483 b!4580258)))

(assert (=> bs!973664 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745218) (= lambda!183315 lambda!183140))))

(declare-fun bs!973665 () Bool)

(assert (= bs!973665 (and b!4581483 d!1434486)))

(assert (=> bs!973665 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745916) (= lambda!183315 lambda!183233))))

(assert (=> bs!973629 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745218) (= lambda!183315 lambda!183141))))

(declare-fun bs!973667 () Bool)

(assert (= bs!973667 (and b!4581483 d!1434448)))

(assert (=> bs!973667 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745218) (= lambda!183315 lambda!183215))))

(declare-fun bs!973669 () Bool)

(assert (= bs!973669 (and b!4581483 d!1434184)))

(assert (=> bs!973669 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745630) (= lambda!183315 lambda!183160))))

(assert (=> bs!973622 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746266) (= lambda!183315 lambda!183290))))

(assert (=> bs!973656 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183315 lambda!183212))))

(declare-fun bs!973671 () Bool)

(assert (= bs!973671 (and b!4581483 d!1434344)))

(assert (=> bs!973671 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745232) (= lambda!183315 lambda!183199))))

(declare-fun bs!973673 () Bool)

(assert (= bs!973673 (and b!4581483 d!1434256)))

(assert (=> bs!973673 (not (= lambda!183315 lambda!183178))))

(declare-fun bs!973675 () Bool)

(assert (= bs!973675 (and b!4581483 d!1434442)))

(assert (=> bs!973675 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745627) (= lambda!183315 lambda!183210))))

(declare-fun bs!973678 () Bool)

(assert (= bs!973678 (and b!4581483 d!1434710)))

(assert (=> bs!973678 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745665) (= lambda!183315 lambda!183270))))

(declare-fun bs!973680 () Bool)

(assert (= bs!973680 (and b!4581483 d!1434768)))

(assert (=> bs!973680 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745576) (= lambda!183315 lambda!183292))))

(assert (=> bs!973641 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183315 lambda!183243))))

(declare-fun bs!973681 () Bool)

(assert (= bs!973681 (and b!4581483 d!1434500)))

(assert (=> bs!973681 (not (= lambda!183315 lambda!183235))))

(assert (=> b!4581483 true))

(declare-fun bs!973682 () Bool)

(declare-fun b!4581482 () Bool)

(assert (= bs!973682 (and b!4581482 b!4580368)))

(declare-fun lambda!183318 () Int)

(assert (=> bs!973682 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745665) (= lambda!183318 lambda!183166))))

(declare-fun bs!973683 () Bool)

(assert (= bs!973683 (and b!4581482 b!4581305)))

(assert (=> bs!973683 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183318 lambda!183289))))

(declare-fun bs!973684 () Bool)

(assert (= bs!973684 (and b!4581482 b!4580772)))

(assert (=> bs!973684 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745913) (= lambda!183318 lambda!183232))))

(declare-fun bs!973685 () Bool)

(assert (= bs!973685 (and b!4581482 b!4580305)))

(assert (=> bs!973685 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745627) (= lambda!183318 lambda!183159))))

(declare-fun bs!973687 () Bool)

(assert (= bs!973687 (and b!4581482 d!1434760)))

(assert (=> bs!973687 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746269) (= lambda!183318 lambda!183291))))

(declare-fun bs!973688 () Bool)

(assert (= bs!973688 (and b!4581482 b!4581137)))

(assert (=> bs!973688 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (-!480 lt!1745232 key!3287)) (= lambda!183318 lambda!183257))))

(declare-fun bs!973690 () Bool)

(assert (= bs!973690 (and b!4581482 b!4581259)))

(assert (=> bs!973690 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746231) (= lambda!183318 lambda!183283))))

(declare-fun bs!973692 () Bool)

(assert (= bs!973692 (and b!4581482 b!4580257)))

(assert (=> bs!973692 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745576) (= lambda!183318 lambda!183142))))

(declare-fun bs!973694 () Bool)

(assert (= bs!973694 (and b!4581482 b!4581306)))

(assert (=> bs!973694 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183318 lambda!183288))))

(declare-fun bs!973696 () Bool)

(assert (= bs!973696 (and b!4581482 d!1434446)))

(assert (=> bs!973696 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745852) (= lambda!183318 lambda!183214))))

(declare-fun bs!973698 () Bool)

(assert (= bs!973698 (and b!4581482 b!4580536)))

(assert (=> bs!973698 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183318 lambda!183190))))

(declare-fun bs!973701 () Bool)

(assert (= bs!973701 (and b!4581482 b!4580306)))

(assert (=> bs!973701 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745232) (= lambda!183318 lambda!183157))))

(declare-fun bs!973703 () Bool)

(assert (= bs!973703 (and b!4581482 d!1434424)))

(assert (=> bs!973703 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745214) (= lambda!183318 lambda!183205))))

(assert (=> bs!973682 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745214) (= lambda!183318 lambda!183165))))

(declare-fun bs!973706 () Bool)

(assert (= bs!973706 (and b!4581482 b!4581136)))

(assert (=> bs!973706 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746150) (= lambda!183318 lambda!183260))))

(assert (=> bs!973706 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (-!480 lt!1745232 key!3287)) (= lambda!183318 lambda!183259))))

(declare-fun bs!973707 () Bool)

(assert (= bs!973707 (and b!4581482 b!4580574)))

(assert (=> bs!973707 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745787) (= lambda!183318 lambda!183202))))

(declare-fun bs!973709 () Bool)

(assert (= bs!973709 (and b!4581482 b!4581260)))

(assert (=> bs!973709 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183318 lambda!183278))))

(declare-fun bs!973711 () Bool)

(assert (= bs!973711 (and b!4581482 b!4580773)))

(assert (=> bs!973711 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183318 lambda!183230))))

(declare-fun bs!973713 () Bool)

(assert (= bs!973713 (and b!4581482 b!4581483)))

(assert (=> bs!973713 (= lambda!183318 lambda!183315)))

(declare-fun bs!973715 () Bool)

(assert (= bs!973715 (and b!4581482 b!4581334)))

(assert (=> bs!973715 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183318 lambda!183294))))

(declare-fun bs!973717 () Bool)

(assert (= bs!973717 (and b!4581482 b!4580664)))

(assert (=> bs!973717 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183318 lambda!183211))))

(declare-fun bs!973719 () Bool)

(assert (= bs!973719 (and b!4581482 d!1434774)))

(assert (=> bs!973719 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746311) (= lambda!183318 lambda!183296))))

(declare-fun bs!973721 () Bool)

(assert (= bs!973721 (and b!4581482 b!4580955)))

(assert (=> bs!973721 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746040) (= lambda!183318 lambda!183244))))

(declare-fun bs!973722 () Bool)

(assert (= bs!973722 (and b!4581482 d!1434224)))

(assert (=> bs!973722 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745668) (= lambda!183318 lambda!183167))))

(assert (=> bs!973690 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183318 lambda!183280))))

(declare-fun bs!973723 () Bool)

(assert (= bs!973723 (and b!4581482 d!1434366)))

(assert (=> bs!973723 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745790) (= lambda!183318 lambda!183203))))

(declare-fun bs!973724 () Bool)

(assert (= bs!973724 (and b!4581482 d!1434060)))

(assert (=> bs!973724 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745579) (= lambda!183318 lambda!183143))))

(declare-fun bs!973725 () Bool)

(assert (= bs!973725 (and b!4581482 d!1434648)))

(assert (=> bs!973725 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746153) (= lambda!183318 lambda!183265))))

(declare-fun bs!973726 () Bool)

(assert (= bs!973726 (and b!4581482 d!1434338)))

(assert (=> bs!973726 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745759) (= lambda!183318 lambda!183193))))

(assert (=> bs!973685 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745232) (= lambda!183318 lambda!183158))))

(assert (=> bs!973715 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746308) (= lambda!183318 lambda!183295))))

(declare-fun bs!973727 () Bool)

(assert (= bs!973727 (and b!4581482 b!4579991)))

(assert (=> bs!973727 (not (= lambda!183318 lambda!183043))))

(declare-fun bs!973728 () Bool)

(assert (= bs!973728 (and b!4581482 b!4580535)))

(assert (=> bs!973728 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745756) (= lambda!183318 lambda!183192))))

(declare-fun bs!973729 () Bool)

(assert (= bs!973729 (and b!4581482 b!4580369)))

(assert (=> bs!973729 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745214) (= lambda!183318 lambda!183164))))

(declare-fun bs!973730 () Bool)

(assert (= bs!973730 (and b!4581482 b!4580575)))

(assert (=> bs!973730 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183318 lambda!183200))))

(declare-fun bs!973731 () Bool)

(assert (= bs!973731 (and b!4581482 d!1434556)))

(assert (=> bs!973731 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746043) (= lambda!183318 lambda!183245))))

(assert (=> bs!973728 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183318 lambda!183191))))

(assert (=> bs!973684 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183318 lambda!183231))))

(declare-fun bs!973732 () Bool)

(assert (= bs!973732 (and b!4581482 b!4580663)))

(assert (=> bs!973732 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745849) (= lambda!183318 lambda!183213))))

(declare-fun bs!973733 () Bool)

(assert (= bs!973733 (and b!4581482 d!1434720)))

(assert (=> bs!973733 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746234) (= lambda!183318 lambda!183287))))

(declare-fun bs!973734 () Bool)

(assert (= bs!973734 (and b!4581482 b!4580956)))

(assert (=> bs!973734 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183318 lambda!183242))))

(assert (=> bs!973707 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183318 lambda!183201))))

(declare-fun bs!973735 () Bool)

(assert (= bs!973735 (and b!4581482 b!4581335)))

(assert (=> bs!973735 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183318 lambda!183293))))

(declare-fun bs!973736 () Bool)

(assert (= bs!973736 (and b!4581482 b!4580258)))

(assert (=> bs!973736 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745218) (= lambda!183318 lambda!183140))))

(declare-fun bs!973737 () Bool)

(assert (= bs!973737 (and b!4581482 d!1434486)))

(assert (=> bs!973737 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745916) (= lambda!183318 lambda!183233))))

(assert (=> bs!973692 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745218) (= lambda!183318 lambda!183141))))

(declare-fun bs!973738 () Bool)

(assert (= bs!973738 (and b!4581482 d!1434448)))

(assert (=> bs!973738 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745218) (= lambda!183318 lambda!183215))))

(declare-fun bs!973740 () Bool)

(assert (= bs!973740 (and b!4581482 d!1434184)))

(assert (=> bs!973740 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745630) (= lambda!183318 lambda!183160))))

(assert (=> bs!973683 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746266) (= lambda!183318 lambda!183290))))

(assert (=> bs!973732 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183318 lambda!183212))))

(declare-fun bs!973741 () Bool)

(assert (= bs!973741 (and b!4581482 d!1434344)))

(assert (=> bs!973741 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745232) (= lambda!183318 lambda!183199))))

(declare-fun bs!973742 () Bool)

(assert (= bs!973742 (and b!4581482 d!1434256)))

(assert (=> bs!973742 (not (= lambda!183318 lambda!183178))))

(declare-fun bs!973743 () Bool)

(assert (= bs!973743 (and b!4581482 d!1434442)))

(assert (=> bs!973743 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745627) (= lambda!183318 lambda!183210))))

(declare-fun bs!973744 () Bool)

(assert (= bs!973744 (and b!4581482 d!1434710)))

(assert (=> bs!973744 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745665) (= lambda!183318 lambda!183270))))

(declare-fun bs!973745 () Bool)

(assert (= bs!973745 (and b!4581482 d!1434768)))

(assert (=> bs!973745 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1745576) (= lambda!183318 lambda!183292))))

(assert (=> bs!973721 (= (= (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183318 lambda!183243))))

(declare-fun bs!973746 () Bool)

(assert (= bs!973746 (and b!4581482 d!1434500)))

(assert (=> bs!973746 (not (= lambda!183318 lambda!183235))))

(assert (=> b!4581482 true))

(declare-fun lambda!183321 () Int)

(declare-fun lt!1746421 () ListMap!3813)

(assert (=> bs!973682 (= (= lt!1746421 lt!1745665) (= lambda!183321 lambda!183166))))

(assert (=> bs!973683 (= (= lt!1746421 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183321 lambda!183289))))

(assert (=> bs!973684 (= (= lt!1746421 lt!1745913) (= lambda!183321 lambda!183232))))

(assert (=> bs!973685 (= (= lt!1746421 lt!1745627) (= lambda!183321 lambda!183159))))

(assert (=> bs!973687 (= (= lt!1746421 lt!1746269) (= lambda!183321 lambda!183291))))

(assert (=> bs!973688 (= (= lt!1746421 (-!480 lt!1745232 key!3287)) (= lambda!183321 lambda!183257))))

(assert (=> bs!973690 (= (= lt!1746421 lt!1746231) (= lambda!183321 lambda!183283))))

(assert (=> bs!973692 (= (= lt!1746421 lt!1745576) (= lambda!183321 lambda!183142))))

(assert (=> bs!973694 (= (= lt!1746421 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183321 lambda!183288))))

(assert (=> bs!973696 (= (= lt!1746421 lt!1745852) (= lambda!183321 lambda!183214))))

(assert (=> b!4581482 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (= lambda!183321 lambda!183318))))

(assert (=> bs!973698 (= (= lt!1746421 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183321 lambda!183190))))

(assert (=> bs!973701 (= (= lt!1746421 lt!1745232) (= lambda!183321 lambda!183157))))

(assert (=> bs!973703 (= (= lt!1746421 lt!1745214) (= lambda!183321 lambda!183205))))

(assert (=> bs!973682 (= (= lt!1746421 lt!1745214) (= lambda!183321 lambda!183165))))

(assert (=> bs!973706 (= (= lt!1746421 lt!1746150) (= lambda!183321 lambda!183260))))

(assert (=> bs!973706 (= (= lt!1746421 (-!480 lt!1745232 key!3287)) (= lambda!183321 lambda!183259))))

(assert (=> bs!973707 (= (= lt!1746421 lt!1745787) (= lambda!183321 lambda!183202))))

(assert (=> bs!973709 (= (= lt!1746421 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183321 lambda!183278))))

(assert (=> bs!973711 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183321 lambda!183230))))

(assert (=> bs!973713 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (= lambda!183321 lambda!183315))))

(assert (=> bs!973715 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183321 lambda!183294))))

(assert (=> bs!973717 (= (= lt!1746421 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183321 lambda!183211))))

(assert (=> bs!973719 (= (= lt!1746421 lt!1746311) (= lambda!183321 lambda!183296))))

(assert (=> bs!973721 (= (= lt!1746421 lt!1746040) (= lambda!183321 lambda!183244))))

(assert (=> bs!973722 (= (= lt!1746421 lt!1745668) (= lambda!183321 lambda!183167))))

(assert (=> bs!973690 (= (= lt!1746421 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183321 lambda!183280))))

(assert (=> bs!973723 (= (= lt!1746421 lt!1745790) (= lambda!183321 lambda!183203))))

(assert (=> bs!973724 (= (= lt!1746421 lt!1745579) (= lambda!183321 lambda!183143))))

(assert (=> bs!973725 (= (= lt!1746421 lt!1746153) (= lambda!183321 lambda!183265))))

(assert (=> bs!973726 (= (= lt!1746421 lt!1745759) (= lambda!183321 lambda!183193))))

(assert (=> bs!973685 (= (= lt!1746421 lt!1745232) (= lambda!183321 lambda!183158))))

(assert (=> bs!973715 (= (= lt!1746421 lt!1746308) (= lambda!183321 lambda!183295))))

(assert (=> bs!973727 (not (= lambda!183321 lambda!183043))))

(assert (=> bs!973728 (= (= lt!1746421 lt!1745756) (= lambda!183321 lambda!183192))))

(assert (=> bs!973729 (= (= lt!1746421 lt!1745214) (= lambda!183321 lambda!183164))))

(assert (=> bs!973730 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183321 lambda!183200))))

(assert (=> bs!973731 (= (= lt!1746421 lt!1746043) (= lambda!183321 lambda!183245))))

(assert (=> bs!973728 (= (= lt!1746421 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183321 lambda!183191))))

(assert (=> bs!973684 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183321 lambda!183231))))

(assert (=> bs!973732 (= (= lt!1746421 lt!1745849) (= lambda!183321 lambda!183213))))

(assert (=> bs!973733 (= (= lt!1746421 lt!1746234) (= lambda!183321 lambda!183287))))

(assert (=> bs!973734 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183321 lambda!183242))))

(assert (=> bs!973707 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183321 lambda!183201))))

(assert (=> bs!973735 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183321 lambda!183293))))

(assert (=> bs!973736 (= (= lt!1746421 lt!1745218) (= lambda!183321 lambda!183140))))

(assert (=> bs!973737 (= (= lt!1746421 lt!1745916) (= lambda!183321 lambda!183233))))

(assert (=> bs!973692 (= (= lt!1746421 lt!1745218) (= lambda!183321 lambda!183141))))

(assert (=> bs!973738 (= (= lt!1746421 lt!1745218) (= lambda!183321 lambda!183215))))

(assert (=> bs!973740 (= (= lt!1746421 lt!1745630) (= lambda!183321 lambda!183160))))

(assert (=> bs!973683 (= (= lt!1746421 lt!1746266) (= lambda!183321 lambda!183290))))

(assert (=> bs!973732 (= (= lt!1746421 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183321 lambda!183212))))

(assert (=> bs!973741 (= (= lt!1746421 lt!1745232) (= lambda!183321 lambda!183199))))

(assert (=> bs!973742 (not (= lambda!183321 lambda!183178))))

(assert (=> bs!973743 (= (= lt!1746421 lt!1745627) (= lambda!183321 lambda!183210))))

(assert (=> bs!973744 (= (= lt!1746421 lt!1745665) (= lambda!183321 lambda!183270))))

(assert (=> bs!973745 (= (= lt!1746421 lt!1745576) (= lambda!183321 lambda!183292))))

(assert (=> bs!973721 (= (= lt!1746421 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183321 lambda!183243))))

(assert (=> bs!973746 (not (= lambda!183321 lambda!183235))))

(assert (=> b!4581482 true))

(declare-fun bs!973747 () Bool)

(declare-fun d!1434832 () Bool)

(assert (= bs!973747 (and d!1434832 b!4580368)))

(declare-fun lt!1746424 () ListMap!3813)

(declare-fun lambda!183322 () Int)

(assert (=> bs!973747 (= (= lt!1746424 lt!1745665) (= lambda!183322 lambda!183166))))

(declare-fun bs!973748 () Bool)

(assert (= bs!973748 (and d!1434832 b!4581305)))

(assert (=> bs!973748 (= (= lt!1746424 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183322 lambda!183289))))

(declare-fun bs!973749 () Bool)

(assert (= bs!973749 (and d!1434832 b!4580772)))

(assert (=> bs!973749 (= (= lt!1746424 lt!1745913) (= lambda!183322 lambda!183232))))

(declare-fun bs!973750 () Bool)

(assert (= bs!973750 (and d!1434832 b!4580305)))

(assert (=> bs!973750 (= (= lt!1746424 lt!1745627) (= lambda!183322 lambda!183159))))

(declare-fun bs!973751 () Bool)

(assert (= bs!973751 (and d!1434832 d!1434760)))

(assert (=> bs!973751 (= (= lt!1746424 lt!1746269) (= lambda!183322 lambda!183291))))

(declare-fun bs!973752 () Bool)

(assert (= bs!973752 (and d!1434832 b!4581137)))

(assert (=> bs!973752 (= (= lt!1746424 (-!480 lt!1745232 key!3287)) (= lambda!183322 lambda!183257))))

(declare-fun bs!973753 () Bool)

(assert (= bs!973753 (and d!1434832 b!4581259)))

(assert (=> bs!973753 (= (= lt!1746424 lt!1746231) (= lambda!183322 lambda!183283))))

(declare-fun bs!973754 () Bool)

(assert (= bs!973754 (and d!1434832 b!4580257)))

(assert (=> bs!973754 (= (= lt!1746424 lt!1745576) (= lambda!183322 lambda!183142))))

(declare-fun bs!973755 () Bool)

(assert (= bs!973755 (and d!1434832 b!4581306)))

(assert (=> bs!973755 (= (= lt!1746424 (+!1710 lt!1745218 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183322 lambda!183288))))

(declare-fun bs!973756 () Bool)

(assert (= bs!973756 (and d!1434832 d!1434446)))

(assert (=> bs!973756 (= (= lt!1746424 lt!1745852) (= lambda!183322 lambda!183214))))

(declare-fun bs!973757 () Bool)

(assert (= bs!973757 (and d!1434832 b!4581482)))

(assert (=> bs!973757 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (= lambda!183322 lambda!183318))))

(declare-fun bs!973758 () Bool)

(assert (= bs!973758 (and d!1434832 b!4580536)))

(assert (=> bs!973758 (= (= lt!1746424 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183322 lambda!183190))))

(declare-fun bs!973759 () Bool)

(assert (= bs!973759 (and d!1434832 b!4580306)))

(assert (=> bs!973759 (= (= lt!1746424 lt!1745232) (= lambda!183322 lambda!183157))))

(declare-fun bs!973760 () Bool)

(assert (= bs!973760 (and d!1434832 d!1434424)))

(assert (=> bs!973760 (= (= lt!1746424 lt!1745214) (= lambda!183322 lambda!183205))))

(assert (=> bs!973747 (= (= lt!1746424 lt!1745214) (= lambda!183322 lambda!183165))))

(declare-fun bs!973761 () Bool)

(assert (= bs!973761 (and d!1434832 b!4581136)))

(assert (=> bs!973761 (= (= lt!1746424 lt!1746150) (= lambda!183322 lambda!183260))))

(assert (=> bs!973761 (= (= lt!1746424 (-!480 lt!1745232 key!3287)) (= lambda!183322 lambda!183259))))

(declare-fun bs!973762 () Bool)

(assert (= bs!973762 (and d!1434832 b!4580574)))

(assert (=> bs!973762 (= (= lt!1746424 lt!1745787) (= lambda!183322 lambda!183202))))

(declare-fun bs!973763 () Bool)

(assert (= bs!973763 (and d!1434832 b!4581260)))

(assert (=> bs!973763 (= (= lt!1746424 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183322 lambda!183278))))

(declare-fun bs!973764 () Bool)

(assert (= bs!973764 (and d!1434832 b!4580773)))

(assert (=> bs!973764 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183322 lambda!183230))))

(declare-fun bs!973765 () Bool)

(assert (= bs!973765 (and d!1434832 b!4581483)))

(assert (=> bs!973765 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (= lambda!183322 lambda!183315))))

(declare-fun bs!973766 () Bool)

(assert (= bs!973766 (and d!1434832 b!4581334)))

(assert (=> bs!973766 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183322 lambda!183294))))

(assert (=> bs!973757 (= (= lt!1746424 lt!1746421) (= lambda!183322 lambda!183321))))

(declare-fun bs!973767 () Bool)

(assert (= bs!973767 (and d!1434832 b!4580664)))

(assert (=> bs!973767 (= (= lt!1746424 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183322 lambda!183211))))

(declare-fun bs!973768 () Bool)

(assert (= bs!973768 (and d!1434832 d!1434774)))

(assert (=> bs!973768 (= (= lt!1746424 lt!1746311) (= lambda!183322 lambda!183296))))

(declare-fun bs!973769 () Bool)

(assert (= bs!973769 (and d!1434832 b!4580955)))

(assert (=> bs!973769 (= (= lt!1746424 lt!1746040) (= lambda!183322 lambda!183244))))

(declare-fun bs!973770 () Bool)

(assert (= bs!973770 (and d!1434832 d!1434224)))

(assert (=> bs!973770 (= (= lt!1746424 lt!1745668) (= lambda!183322 lambda!183167))))

(assert (=> bs!973753 (= (= lt!1746424 (+!1710 lt!1745214 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183322 lambda!183280))))

(declare-fun bs!973771 () Bool)

(assert (= bs!973771 (and d!1434832 d!1434366)))

(assert (=> bs!973771 (= (= lt!1746424 lt!1745790) (= lambda!183322 lambda!183203))))

(declare-fun bs!973772 () Bool)

(assert (= bs!973772 (and d!1434832 d!1434060)))

(assert (=> bs!973772 (= (= lt!1746424 lt!1745579) (= lambda!183322 lambda!183143))))

(declare-fun bs!973773 () Bool)

(assert (= bs!973773 (and d!1434832 d!1434648)))

(assert (=> bs!973773 (= (= lt!1746424 lt!1746153) (= lambda!183322 lambda!183265))))

(declare-fun bs!973774 () Bool)

(assert (= bs!973774 (and d!1434832 d!1434338)))

(assert (=> bs!973774 (= (= lt!1746424 lt!1745759) (= lambda!183322 lambda!183193))))

(assert (=> bs!973750 (= (= lt!1746424 lt!1745232) (= lambda!183322 lambda!183158))))

(assert (=> bs!973766 (= (= lt!1746424 lt!1746308) (= lambda!183322 lambda!183295))))

(declare-fun bs!973775 () Bool)

(assert (= bs!973775 (and d!1434832 b!4579991)))

(assert (=> bs!973775 (not (= lambda!183322 lambda!183043))))

(declare-fun bs!973776 () Bool)

(assert (= bs!973776 (and d!1434832 b!4580535)))

(assert (=> bs!973776 (= (= lt!1746424 lt!1745756) (= lambda!183322 lambda!183192))))

(declare-fun bs!973777 () Bool)

(assert (= bs!973777 (and d!1434832 b!4580369)))

(assert (=> bs!973777 (= (= lt!1746424 lt!1745214) (= lambda!183322 lambda!183164))))

(declare-fun bs!973778 () Bool)

(assert (= bs!973778 (and d!1434832 b!4580575)))

(assert (=> bs!973778 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183322 lambda!183200))))

(declare-fun bs!973779 () Bool)

(assert (= bs!973779 (and d!1434832 d!1434556)))

(assert (=> bs!973779 (= (= lt!1746424 lt!1746043) (= lambda!183322 lambda!183245))))

(assert (=> bs!973776 (= (= lt!1746424 (extractMap!1328 (t!358065 (t!358065 (toList!4551 lm!1477))))) (= lambda!183322 lambda!183191))))

(assert (=> bs!973749 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 lt!1745235)))) (= lambda!183322 lambda!183231))))

(declare-fun bs!973780 () Bool)

(assert (= bs!973780 (and d!1434832 b!4580663)))

(assert (=> bs!973780 (= (= lt!1746424 lt!1745849) (= lambda!183322 lambda!183213))))

(declare-fun bs!973781 () Bool)

(assert (= bs!973781 (and d!1434832 d!1434720)))

(assert (=> bs!973781 (= (= lt!1746424 lt!1746234) (= lambda!183322 lambda!183287))))

(declare-fun bs!973782 () Bool)

(assert (= bs!973782 (and d!1434832 b!4580956)))

(assert (=> bs!973782 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183322 lambda!183242))))

(assert (=> bs!973762 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 lt!1745216))))) (= lambda!183322 lambda!183201))))

(declare-fun bs!973783 () Bool)

(assert (= bs!973783 (and d!1434832 b!4581335)))

(assert (=> bs!973783 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 lt!1745223)))) (= lambda!183322 lambda!183293))))

(declare-fun bs!973784 () Bool)

(assert (= bs!973784 (and d!1434832 b!4580258)))

(assert (=> bs!973784 (= (= lt!1746424 lt!1745218) (= lambda!183322 lambda!183140))))

(declare-fun bs!973785 () Bool)

(assert (= bs!973785 (and d!1434832 d!1434486)))

(assert (=> bs!973785 (= (= lt!1746424 lt!1745916) (= lambda!183322 lambda!183233))))

(assert (=> bs!973754 (= (= lt!1746424 lt!1745218) (= lambda!183322 lambda!183141))))

(declare-fun bs!973786 () Bool)

(assert (= bs!973786 (and d!1434832 d!1434448)))

(assert (=> bs!973786 (= (= lt!1746424 lt!1745218) (= lambda!183322 lambda!183215))))

(declare-fun bs!973787 () Bool)

(assert (= bs!973787 (and d!1434832 d!1434184)))

(assert (=> bs!973787 (= (= lt!1746424 lt!1745630) (= lambda!183322 lambda!183160))))

(assert (=> bs!973748 (= (= lt!1746424 lt!1746266) (= lambda!183322 lambda!183290))))

(assert (=> bs!973780 (= (= lt!1746424 (+!1710 lt!1745232 (h!56885 (_2!29056 lt!1745216)))) (= lambda!183322 lambda!183212))))

(declare-fun bs!973788 () Bool)

(assert (= bs!973788 (and d!1434832 d!1434344)))

(assert (=> bs!973788 (= (= lt!1746424 lt!1745232) (= lambda!183322 lambda!183199))))

(declare-fun bs!973790 () Bool)

(assert (= bs!973790 (and d!1434832 d!1434256)))

(assert (=> bs!973790 (not (= lambda!183322 lambda!183178))))

(declare-fun bs!973791 () Bool)

(assert (= bs!973791 (and d!1434832 d!1434442)))

(assert (=> bs!973791 (= (= lt!1746424 lt!1745627) (= lambda!183322 lambda!183210))))

(declare-fun bs!973792 () Bool)

(assert (= bs!973792 (and d!1434832 d!1434710)))

(assert (=> bs!973792 (= (= lt!1746424 lt!1745665) (= lambda!183322 lambda!183270))))

(declare-fun bs!973793 () Bool)

(assert (= bs!973793 (and d!1434832 d!1434768)))

(assert (=> bs!973793 (= (= lt!1746424 lt!1745576) (= lambda!183322 lambda!183292))))

(assert (=> bs!973769 (= (= lt!1746424 (extractMap!1328 (t!358065 (toList!4551 lt!1745230)))) (= lambda!183322 lambda!183243))))

(declare-fun bs!973794 () Bool)

(assert (= bs!973794 (and d!1434832 d!1434500)))

(assert (=> bs!973794 (not (= lambda!183322 lambda!183235))))

(assert (=> d!1434832 true))

(declare-fun b!4581480 () Bool)

(declare-fun e!2856965 () Bool)

(assert (=> b!4581480 (= e!2856965 (invariantList!1097 (toList!4552 lt!1746424)))))

(declare-fun b!4581481 () Bool)

(declare-fun res!1914197 () Bool)

(assert (=> b!4581481 (=> (not res!1914197) (not e!2856965))))

(assert (=> b!4581481 (= res!1914197 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) lambda!183322))))

(declare-fun c!784222 () Bool)

(declare-fun call!319845 () Bool)

(declare-fun bm!319838 () Bool)

(assert (=> bm!319838 (= call!319845 (forall!10502 (ite c!784222 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (_2!29056 (h!56886 (toList!4551 lm!1477)))) (ite c!784222 lambda!183315 lambda!183321)))))

(declare-fun e!2856964 () ListMap!3813)

(assert (=> b!4581482 (= e!2856964 lt!1746421)))

(declare-fun lt!1746419 () ListMap!3813)

(assert (=> b!4581482 (= lt!1746419 (+!1710 (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477))))))))

(assert (=> b!4581482 (= lt!1746421 (addToMapMapFromBucket!785 (t!358064 (_2!29056 (h!56886 (toList!4551 lm!1477)))) (+!1710 (extractMap!1328 (t!358065 (toList!4551 lm!1477))) (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477)))))))))

(declare-fun lt!1746423 () Unit!105525)

(declare-fun call!319844 () Unit!105525)

(assert (=> b!4581482 (= lt!1746423 call!319844)))

(assert (=> b!4581482 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) lambda!183318)))

(declare-fun lt!1746438 () Unit!105525)

(assert (=> b!4581482 (= lt!1746438 lt!1746423)))

(assert (=> b!4581482 (forall!10502 (toList!4552 lt!1746419) lambda!183321)))

(declare-fun lt!1746433 () Unit!105525)

(declare-fun Unit!105873 () Unit!105525)

(assert (=> b!4581482 (= lt!1746433 Unit!105873)))

(assert (=> b!4581482 (forall!10502 (t!358064 (_2!29056 (h!56886 (toList!4551 lm!1477)))) lambda!183321)))

(declare-fun lt!1746431 () Unit!105525)

(declare-fun Unit!105874 () Unit!105525)

(assert (=> b!4581482 (= lt!1746431 Unit!105874)))

(declare-fun lt!1746428 () Unit!105525)

(declare-fun Unit!105875 () Unit!105525)

(assert (=> b!4581482 (= lt!1746428 Unit!105875)))

(declare-fun lt!1746435 () Unit!105525)

(assert (=> b!4581482 (= lt!1746435 (forallContained!2765 (toList!4552 lt!1746419) lambda!183321 (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477))))))))

(assert (=> b!4581482 (contains!13846 lt!1746419 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477))))))))

(declare-fun lt!1746425 () Unit!105525)

(declare-fun Unit!105876 () Unit!105525)

(assert (=> b!4581482 (= lt!1746425 Unit!105876)))

(assert (=> b!4581482 (contains!13846 lt!1746421 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477))))))))

(declare-fun lt!1746430 () Unit!105525)

(declare-fun Unit!105877 () Unit!105525)

(assert (=> b!4581482 (= lt!1746430 Unit!105877)))

(assert (=> b!4581482 call!319845))

(declare-fun lt!1746427 () Unit!105525)

(declare-fun Unit!105878 () Unit!105525)

(assert (=> b!4581482 (= lt!1746427 Unit!105878)))

(declare-fun call!319843 () Bool)

(assert (=> b!4581482 call!319843))

(declare-fun lt!1746429 () Unit!105525)

(declare-fun Unit!105879 () Unit!105525)

(assert (=> b!4581482 (= lt!1746429 Unit!105879)))

(declare-fun lt!1746432 () Unit!105525)

(declare-fun Unit!105880 () Unit!105525)

(assert (=> b!4581482 (= lt!1746432 Unit!105880)))

(declare-fun lt!1746436 () Unit!105525)

(assert (=> b!4581482 (= lt!1746436 (addForallContainsKeyThenBeforeAdding!414 (extractMap!1328 (t!358065 (toList!4551 lm!1477))) lt!1746421 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477))))) (_2!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477)))))))))

(assert (=> b!4581482 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) lambda!183321)))

(declare-fun lt!1746434 () Unit!105525)

(assert (=> b!4581482 (= lt!1746434 lt!1746436)))

(assert (=> b!4581482 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) lambda!183321)))

(declare-fun lt!1746422 () Unit!105525)

(declare-fun Unit!105881 () Unit!105525)

(assert (=> b!4581482 (= lt!1746422 Unit!105881)))

(declare-fun res!1914198 () Bool)

(assert (=> b!4581482 (= res!1914198 (forall!10502 (_2!29056 (h!56886 (toList!4551 lm!1477))) lambda!183321))))

(declare-fun e!2856963 () Bool)

(assert (=> b!4581482 (=> (not res!1914198) (not e!2856963))))

(assert (=> b!4581482 e!2856963))

(declare-fun lt!1746426 () Unit!105525)

(declare-fun Unit!105882 () Unit!105525)

(assert (=> b!4581482 (= lt!1746426 Unit!105882)))

(assert (=> b!4581483 (= e!2856964 (extractMap!1328 (t!358065 (toList!4551 lm!1477))))))

(declare-fun lt!1746437 () Unit!105525)

(assert (=> b!4581483 (= lt!1746437 call!319844)))

(assert (=> b!4581483 call!319845))

(declare-fun lt!1746418 () Unit!105525)

(assert (=> b!4581483 (= lt!1746418 lt!1746437)))

(assert (=> b!4581483 call!319843))

(declare-fun lt!1746420 () Unit!105525)

(declare-fun Unit!105884 () Unit!105525)

(assert (=> b!4581483 (= lt!1746420 Unit!105884)))

(declare-fun bm!319839 () Bool)

(assert (=> bm!319839 (= call!319843 (forall!10502 (ite c!784222 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) (toList!4552 lt!1746419)) (ite c!784222 lambda!183315 lambda!183321)))))

(assert (=> d!1434832 e!2856965))

(declare-fun res!1914199 () Bool)

(assert (=> d!1434832 (=> (not res!1914199) (not e!2856965))))

(assert (=> d!1434832 (= res!1914199 (forall!10502 (_2!29056 (h!56886 (toList!4551 lm!1477))) lambda!183322))))

(assert (=> d!1434832 (= lt!1746424 e!2856964)))

(assert (=> d!1434832 (= c!784222 ((_ is Nil!50950) (_2!29056 (h!56886 (toList!4551 lm!1477)))))))

(assert (=> d!1434832 (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lm!1477))))))

(assert (=> d!1434832 (= (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 lm!1477))) (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) lt!1746424)))

(declare-fun bm!319840 () Bool)

(assert (=> bm!319840 (= call!319844 (lemmaContainsAllItsOwnKeys!414 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))))))

(declare-fun b!4581484 () Bool)

(assert (=> b!4581484 (= e!2856963 (forall!10502 (toList!4552 (extractMap!1328 (t!358065 (toList!4551 lm!1477)))) lambda!183321))))

(assert (= (and d!1434832 c!784222) b!4581483))

(assert (= (and d!1434832 (not c!784222)) b!4581482))

(assert (= (and b!4581482 res!1914198) b!4581484))

(assert (= (or b!4581483 b!4581482) bm!319839))

(assert (= (or b!4581483 b!4581482) bm!319838))

(assert (= (or b!4581483 b!4581482) bm!319840))

(assert (= (and d!1434832 res!1914199) b!4581481))

(assert (= (and b!4581481 res!1914197) b!4581480))

(declare-fun m!5392811 () Bool)

(assert (=> b!4581484 m!5392811))

(declare-fun m!5392813 () Bool)

(assert (=> d!1434832 m!5392813))

(assert (=> d!1434832 m!5390785))

(declare-fun m!5392815 () Bool)

(assert (=> bm!319838 m!5392815))

(assert (=> bm!319840 m!5389761))

(declare-fun m!5392817 () Bool)

(assert (=> bm!319840 m!5392817))

(declare-fun m!5392819 () Bool)

(assert (=> b!4581482 m!5392819))

(declare-fun m!5392821 () Bool)

(assert (=> b!4581482 m!5392821))

(declare-fun m!5392823 () Bool)

(assert (=> b!4581482 m!5392823))

(assert (=> b!4581482 m!5392811))

(declare-fun m!5392825 () Bool)

(assert (=> b!4581482 m!5392825))

(declare-fun m!5392827 () Bool)

(assert (=> b!4581482 m!5392827))

(declare-fun m!5392829 () Bool)

(assert (=> b!4581482 m!5392829))

(declare-fun m!5392831 () Bool)

(assert (=> b!4581482 m!5392831))

(assert (=> b!4581482 m!5389761))

(assert (=> b!4581482 m!5392819))

(declare-fun m!5392833 () Bool)

(assert (=> b!4581482 m!5392833))

(declare-fun m!5392835 () Bool)

(assert (=> b!4581482 m!5392835))

(assert (=> b!4581482 m!5392811))

(assert (=> b!4581482 m!5389761))

(declare-fun m!5392837 () Bool)

(assert (=> b!4581482 m!5392837))

(declare-fun m!5392839 () Bool)

(assert (=> b!4581480 m!5392839))

(declare-fun m!5392841 () Bool)

(assert (=> b!4581481 m!5392841))

(declare-fun m!5392843 () Bool)

(assert (=> bm!319839 m!5392843))

(assert (=> b!4580119 d!1434832))

(assert (=> b!4580119 d!1434250))

(declare-fun d!1434862 () Bool)

(assert (=> d!1434862 (= (hash!3119 hashF!1107 (_1!29055 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212))))) (hash!3122 hashF!1107 (_1!29055 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212))))))))

(declare-fun bs!973814 () Bool)

(assert (= bs!973814 d!1434862))

(declare-fun m!5392845 () Bool)

(assert (=> bs!973814 m!5392845))

(assert (=> bs!972195 d!1434862))

(declare-fun d!1434868 () Bool)

(declare-fun e!2856989 () Bool)

(assert (=> d!1434868 e!2856989))

(declare-fun res!1914222 () Bool)

(assert (=> d!1434868 (=> res!1914222 e!2856989)))

(declare-fun lt!1746451 () Bool)

(assert (=> d!1434868 (= res!1914222 (not lt!1746451))))

(declare-fun lt!1746452 () Bool)

(assert (=> d!1434868 (= lt!1746451 lt!1746452)))

(declare-fun lt!1746453 () Unit!105525)

(declare-fun e!2856990 () Unit!105525)

(assert (=> d!1434868 (= lt!1746453 e!2856990)))

(declare-fun c!784228 () Bool)

(assert (=> d!1434868 (= c!784228 lt!1746452)))

(assert (=> d!1434868 (= lt!1746452 (containsKey!2056 (toList!4551 lt!1745607) (_1!29056 lt!1745211)))))

(assert (=> d!1434868 (= (contains!13847 lt!1745607 (_1!29056 lt!1745211)) lt!1746451)))

(declare-fun b!4581517 () Bool)

(declare-fun lt!1746454 () Unit!105525)

(assert (=> b!4581517 (= e!2856990 lt!1746454)))

(assert (=> b!4581517 (= lt!1746454 (lemmaContainsKeyImpliesGetValueByKeyDefined!1157 (toList!4551 lt!1745607) (_1!29056 lt!1745211)))))

(assert (=> b!4581517 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745607) (_1!29056 lt!1745211)))))

(declare-fun b!4581518 () Bool)

(declare-fun Unit!105888 () Unit!105525)

(assert (=> b!4581518 (= e!2856990 Unit!105888)))

(declare-fun b!4581519 () Bool)

(assert (=> b!4581519 (= e!2856989 (isDefined!8596 (getValueByKey!1253 (toList!4551 lt!1745607) (_1!29056 lt!1745211))))))

(assert (= (and d!1434868 c!784228) b!4581517))

(assert (= (and d!1434868 (not c!784228)) b!4581518))

(assert (= (and d!1434868 (not res!1914222)) b!4581519))

(declare-fun m!5392853 () Bool)

(assert (=> d!1434868 m!5392853))

(declare-fun m!5392855 () Bool)

(assert (=> b!4581517 m!5392855))

(assert (=> b!4581517 m!5390421))

(assert (=> b!4581517 m!5390421))

(declare-fun m!5392857 () Bool)

(assert (=> b!4581517 m!5392857))

(assert (=> b!4581519 m!5390421))

(assert (=> b!4581519 m!5390421))

(assert (=> b!4581519 m!5392857))

(assert (=> d!1434140 d!1434868))

(declare-fun d!1434870 () Bool)

(declare-fun c!784229 () Bool)

(assert (=> d!1434870 (= c!784229 (and ((_ is Cons!50951) lt!1745605) (= (_1!29056 (h!56886 lt!1745605)) (_1!29056 lt!1745211))))))

(declare-fun e!2856991 () Option!11327)

(assert (=> d!1434870 (= (getValueByKey!1253 lt!1745605 (_1!29056 lt!1745211)) e!2856991)))

(declare-fun b!4581523 () Bool)

(declare-fun e!2856992 () Option!11327)

(assert (=> b!4581523 (= e!2856992 None!11326)))

(declare-fun b!4581522 () Bool)

(assert (=> b!4581522 (= e!2856992 (getValueByKey!1253 (t!358065 lt!1745605) (_1!29056 lt!1745211)))))

(declare-fun b!4581520 () Bool)

(assert (=> b!4581520 (= e!2856991 (Some!11326 (_2!29056 (h!56886 lt!1745605))))))

(declare-fun b!4581521 () Bool)

(assert (=> b!4581521 (= e!2856991 e!2856992)))

(declare-fun c!784230 () Bool)

(assert (=> b!4581521 (= c!784230 (and ((_ is Cons!50951) lt!1745605) (not (= (_1!29056 (h!56886 lt!1745605)) (_1!29056 lt!1745211)))))))

(assert (= (and d!1434870 c!784229) b!4581520))

(assert (= (and d!1434870 (not c!784229)) b!4581521))

(assert (= (and b!4581521 c!784230) b!4581522))

(assert (= (and b!4581521 (not c!784230)) b!4581523))

(declare-fun m!5392859 () Bool)

(assert (=> b!4581522 m!5392859))

(assert (=> d!1434140 d!1434870))

(declare-fun d!1434872 () Bool)

(assert (=> d!1434872 (= (getValueByKey!1253 lt!1745605 (_1!29056 lt!1745211)) (Some!11326 (_2!29056 lt!1745211)))))

(declare-fun lt!1746457 () Unit!105525)

(assert (=> d!1434872 (= lt!1746457 (choose!30539 lt!1745605 (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))

(declare-fun e!2856993 () Bool)

(assert (=> d!1434872 e!2856993))

(declare-fun res!1914223 () Bool)

(assert (=> d!1434872 (=> (not res!1914223) (not e!2856993))))

(assert (=> d!1434872 (= res!1914223 (isStrictlySorted!512 lt!1745605))))

(assert (=> d!1434872 (= (lemmaContainsTupThenGetReturnValue!777 lt!1745605 (_1!29056 lt!1745211) (_2!29056 lt!1745211)) lt!1746457)))

(declare-fun b!4581524 () Bool)

(declare-fun res!1914224 () Bool)

(assert (=> b!4581524 (=> (not res!1914224) (not e!2856993))))

(assert (=> b!4581524 (= res!1914224 (containsKey!2056 lt!1745605 (_1!29056 lt!1745211)))))

(declare-fun b!4581525 () Bool)

(assert (=> b!4581525 (= e!2856993 (contains!13845 lt!1745605 (tuple2!51525 (_1!29056 lt!1745211) (_2!29056 lt!1745211))))))

(assert (= (and d!1434872 res!1914223) b!4581524))

(assert (= (and b!4581524 res!1914224) b!4581525))

(assert (=> d!1434872 m!5390415))

(declare-fun m!5392861 () Bool)

(assert (=> d!1434872 m!5392861))

(declare-fun m!5392863 () Bool)

(assert (=> d!1434872 m!5392863))

(declare-fun m!5392865 () Bool)

(assert (=> b!4581524 m!5392865))

(declare-fun m!5392867 () Bool)

(assert (=> b!4581525 m!5392867))

(assert (=> d!1434140 d!1434872))

(declare-fun b!4581526 () Bool)

(declare-fun e!2856996 () List!51075)

(declare-fun call!319848 () List!51075)

(assert (=> b!4581526 (= e!2856996 call!319848)))

(declare-fun d!1434874 () Bool)

(declare-fun e!2856999 () Bool)

(assert (=> d!1434874 e!2856999))

(declare-fun res!1914225 () Bool)

(assert (=> d!1434874 (=> (not res!1914225) (not e!2856999))))

(declare-fun lt!1746464 () List!51075)

(assert (=> d!1434874 (= res!1914225 (isStrictlySorted!512 lt!1746464))))

(assert (=> d!1434874 (= lt!1746464 e!2856996)))

(declare-fun c!784231 () Bool)

(assert (=> d!1434874 (= c!784231 (and ((_ is Cons!50951) (toList!4551 lt!1745235)) (bvslt (_1!29056 (h!56886 (toList!4551 lt!1745235))) (_1!29056 lt!1745211))))))

(assert (=> d!1434874 (isStrictlySorted!512 (toList!4551 lt!1745235))))

(assert (=> d!1434874 (= (insertStrictlySorted!477 (toList!4551 lt!1745235) (_1!29056 lt!1745211) (_2!29056 lt!1745211)) lt!1746464)))

(declare-fun b!4581527 () Bool)

(declare-fun e!2856995 () List!51075)

(assert (=> b!4581527 (= e!2856996 e!2856995)))

(declare-fun c!784235 () Bool)

(assert (=> b!4581527 (= c!784235 (and ((_ is Cons!50951) (toList!4551 lt!1745235)) (= (_1!29056 (h!56886 (toList!4551 lt!1745235))) (_1!29056 lt!1745211))))))

(declare-fun bm!319842 () Bool)

(declare-fun call!319847 () List!51075)

(assert (=> bm!319842 (= call!319847 call!319848)))

(declare-fun b!4581528 () Bool)

(declare-fun e!2856998 () List!51075)

(declare-fun call!319850 () List!51075)

(assert (=> b!4581528 (= e!2856998 call!319850)))

(declare-fun b!4581529 () Bool)

(declare-fun c!784234 () Bool)

(assert (=> b!4581529 (= c!784234 (and ((_ is Cons!50951) (toList!4551 lt!1745235)) (bvsgt (_1!29056 (h!56886 (toList!4551 lt!1745235))) (_1!29056 lt!1745211))))))

(assert (=> b!4581529 (= e!2856995 e!2856998)))

(declare-fun b!4581530 () Bool)

(assert (=> b!4581530 (= e!2856999 (contains!13845 lt!1746464 (tuple2!51525 (_1!29056 lt!1745211) (_2!29056 lt!1745211))))))

(declare-fun e!2857001 () List!51075)

(declare-fun bm!319843 () Bool)

(assert (=> bm!319843 (= call!319848 ($colon$colon!1022 e!2857001 (ite c!784231 (h!56886 (toList!4551 lt!1745235)) (tuple2!51525 (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))))

(declare-fun c!784232 () Bool)

(assert (=> bm!319843 (= c!784232 c!784231)))

(declare-fun b!4581531 () Bool)

(declare-fun res!1914226 () Bool)

(assert (=> b!4581531 (=> (not res!1914226) (not e!2856999))))

(assert (=> b!4581531 (= res!1914226 (containsKey!2056 lt!1746464 (_1!29056 lt!1745211)))))

(declare-fun b!4581532 () Bool)

(assert (=> b!4581532 (= e!2856995 call!319847)))

(declare-fun bm!319844 () Bool)

(assert (=> bm!319844 (= call!319850 call!319847)))

(declare-fun b!4581535 () Bool)

(assert (=> b!4581535 (= e!2857001 (insertStrictlySorted!477 (t!358065 (toList!4551 lt!1745235)) (_1!29056 lt!1745211) (_2!29056 lt!1745211)))))

(declare-fun b!4581537 () Bool)

(assert (=> b!4581537 (= e!2856998 call!319850)))

(declare-fun b!4581539 () Bool)

(assert (=> b!4581539 (= e!2857001 (ite c!784235 (t!358065 (toList!4551 lt!1745235)) (ite c!784234 (Cons!50951 (h!56886 (toList!4551 lt!1745235)) (t!358065 (toList!4551 lt!1745235))) Nil!50951)))))

(assert (= (and d!1434874 c!784231) b!4581526))

(assert (= (and d!1434874 (not c!784231)) b!4581527))

(assert (= (and b!4581527 c!784235) b!4581532))

(assert (= (and b!4581527 (not c!784235)) b!4581529))

(assert (= (and b!4581529 c!784234) b!4581528))

(assert (= (and b!4581529 (not c!784234)) b!4581537))

(assert (= (or b!4581528 b!4581537) bm!319844))

(assert (= (or b!4581532 bm!319844) bm!319842))

(assert (= (or b!4581526 bm!319842) bm!319843))

(assert (= (and bm!319843 c!784232) b!4581535))

(assert (= (and bm!319843 (not c!784232)) b!4581539))

(assert (= (and d!1434874 res!1914225) b!4581531))

(assert (= (and b!4581531 res!1914226) b!4581530))

(declare-fun m!5392879 () Bool)

(assert (=> b!4581535 m!5392879))

(declare-fun m!5392883 () Bool)

(assert (=> b!4581531 m!5392883))

(declare-fun m!5392887 () Bool)

(assert (=> b!4581530 m!5392887))

(declare-fun m!5392895 () Bool)

(assert (=> bm!319843 m!5392895))

(declare-fun m!5392897 () Bool)

(assert (=> d!1434874 m!5392897))

(assert (=> d!1434874 m!5391015))

(assert (=> d!1434140 d!1434874))

(declare-fun d!1434878 () Bool)

(declare-fun res!1914230 () Bool)

(declare-fun e!2857005 () Bool)

(assert (=> d!1434878 (=> res!1914230 e!2857005)))

(assert (=> d!1434878 (= res!1914230 (and ((_ is Cons!50950) (_2!29056 (h!56886 (toList!4551 lt!1745235)))) (= (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lt!1745235))))) key!3287)))))

(assert (=> d!1434878 (= (containsKey!2054 (_2!29056 (h!56886 (toList!4551 lt!1745235))) key!3287) e!2857005)))

(declare-fun b!4581545 () Bool)

(declare-fun e!2857006 () Bool)

(assert (=> b!4581545 (= e!2857005 e!2857006)))

(declare-fun res!1914231 () Bool)

(assert (=> b!4581545 (=> (not res!1914231) (not e!2857006))))

(assert (=> b!4581545 (= res!1914231 ((_ is Cons!50950) (_2!29056 (h!56886 (toList!4551 lt!1745235)))))))

(declare-fun b!4581546 () Bool)

(assert (=> b!4581546 (= e!2857006 (containsKey!2054 (t!358064 (_2!29056 (h!56886 (toList!4551 lt!1745235)))) key!3287))))

(assert (= (and d!1434878 (not res!1914230)) b!4581545))

(assert (= (and b!4581545 res!1914231) b!4581546))

(declare-fun m!5392899 () Bool)

(assert (=> b!4581546 m!5392899))

(assert (=> b!4580354 d!1434878))

(declare-fun d!1434882 () Bool)

(assert (=> d!1434882 (= (isEmpty!28819 lt!1745650) (not ((_ is Some!11324) lt!1745650)))))

(assert (=> d!1434190 d!1434882))

(assert (=> d!1434190 d!1434216))

(assert (=> b!4580380 d!1434254))

(declare-fun d!1434884 () Bool)

(declare-fun res!1914235 () Bool)

(declare-fun e!2857016 () Bool)

(assert (=> d!1434884 (=> res!1914235 e!2857016)))

(assert (=> d!1434884 (= res!1914235 ((_ is Nil!50950) (ite c!783916 (toList!4552 lt!1745232) (toList!4552 lt!1745625))))))

(assert (=> d!1434884 (= (forall!10502 (ite c!783916 (toList!4552 lt!1745232) (toList!4552 lt!1745625)) (ite c!783916 lambda!183157 lambda!183159)) e!2857016)))

(declare-fun b!4581566 () Bool)

(declare-fun e!2857017 () Bool)

(assert (=> b!4581566 (= e!2857016 e!2857017)))

(declare-fun res!1914236 () Bool)

(assert (=> b!4581566 (=> (not res!1914236) (not e!2857017))))

(assert (=> b!4581566 (= res!1914236 (dynLambda!21336 (ite c!783916 lambda!183157 lambda!183159) (h!56885 (ite c!783916 (toList!4552 lt!1745232) (toList!4552 lt!1745625)))))))

(declare-fun b!4581567 () Bool)

(assert (=> b!4581567 (= e!2857017 (forall!10502 (t!358064 (ite c!783916 (toList!4552 lt!1745232) (toList!4552 lt!1745625))) (ite c!783916 lambda!183157 lambda!183159)))))

(assert (= (and d!1434884 (not res!1914235)) b!4581566))

(assert (= (and b!4581566 res!1914236) b!4581567))

(declare-fun b_lambda!166149 () Bool)

(assert (=> (not b_lambda!166149) (not b!4581566)))

(declare-fun m!5392939 () Bool)

(assert (=> b!4581566 m!5392939))

(declare-fun m!5392943 () Bool)

(assert (=> b!4581567 m!5392943))

(assert (=> bm!319711 d!1434884))

(assert (=> d!1434180 d!1434296))

(declare-fun d!1434886 () Bool)

(declare-fun c!784246 () Bool)

(assert (=> d!1434886 (= c!784246 ((_ is Nil!50950) (toList!4552 lt!1745225)))))

(declare-fun e!2857018 () (InoxSet tuple2!51522))

(assert (=> d!1434886 (= (content!8586 (toList!4552 lt!1745225)) e!2857018)))

(declare-fun b!4581568 () Bool)

(assert (=> b!4581568 (= e!2857018 ((as const (Array tuple2!51522 Bool)) false))))

(declare-fun b!4581569 () Bool)

(assert (=> b!4581569 (= e!2857018 ((_ map or) (store ((as const (Array tuple2!51522 Bool)) false) (h!56885 (toList!4552 lt!1745225)) true) (content!8586 (t!358064 (toList!4552 lt!1745225)))))))

(assert (= (and d!1434886 c!784246) b!4581568))

(assert (= (and d!1434886 (not c!784246)) b!4581569))

(declare-fun m!5392949 () Bool)

(assert (=> b!4581569 m!5392949))

(declare-fun m!5392951 () Bool)

(assert (=> b!4581569 m!5392951))

(assert (=> d!1434180 d!1434886))

(declare-fun d!1434890 () Bool)

(declare-fun lt!1746494 () Bool)

(assert (=> d!1434890 (= lt!1746494 (select (content!8586 (_2!29056 lt!1745216)) (get!16814 lt!1745650)))))

(declare-fun e!2857026 () Bool)

(assert (=> d!1434890 (= lt!1746494 e!2857026)))

(declare-fun res!1914241 () Bool)

(assert (=> d!1434890 (=> (not res!1914241) (not e!2857026))))

(assert (=> d!1434890 (= res!1914241 ((_ is Cons!50950) (_2!29056 lt!1745216)))))

(assert (=> d!1434890 (= (contains!13851 (_2!29056 lt!1745216) (get!16814 lt!1745650)) lt!1746494)))

(declare-fun b!4581579 () Bool)

(declare-fun e!2857025 () Bool)

(assert (=> b!4581579 (= e!2857026 e!2857025)))

(declare-fun res!1914240 () Bool)

(assert (=> b!4581579 (=> res!1914240 e!2857025)))

(assert (=> b!4581579 (= res!1914240 (= (h!56885 (_2!29056 lt!1745216)) (get!16814 lt!1745650)))))

(declare-fun b!4581580 () Bool)

(assert (=> b!4581580 (= e!2857025 (contains!13851 (t!358064 (_2!29056 lt!1745216)) (get!16814 lt!1745650)))))

(assert (= (and d!1434890 res!1914241) b!4581579))

(assert (= (and b!4581579 (not res!1914240)) b!4581580))

(declare-fun m!5392953 () Bool)

(assert (=> d!1434890 m!5392953))

(assert (=> d!1434890 m!5390573))

(declare-fun m!5392955 () Bool)

(assert (=> d!1434890 m!5392955))

(assert (=> b!4581580 m!5390573))

(declare-fun m!5392957 () Bool)

(assert (=> b!4581580 m!5392957))

(assert (=> b!4580336 d!1434890))

(assert (=> b!4580336 d!1434592))

(declare-fun d!1434892 () Bool)

(assert (=> d!1434892 (dynLambda!21336 lambda!183043 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212))))))

(assert (=> d!1434892 true))

(declare-fun _$7!2063 () Unit!105525)

(assert (=> d!1434892 (= (choose!30522 (_2!29056 (h!56886 (toList!4551 lm!1477))) lambda!183043 (tuple2!51523 key!3287 (_2!29055 (get!16814 lt!1745212)))) _$7!2063)))

(declare-fun b_lambda!166151 () Bool)

(assert (=> (not b_lambda!166151) (not d!1434892)))

(declare-fun bs!973817 () Bool)

(assert (= bs!973817 d!1434892))

(assert (=> bs!973817 m!5390591))

(assert (=> d!1434194 d!1434892))

(declare-fun d!1434896 () Bool)

(declare-fun res!1914245 () Bool)

(declare-fun e!2857036 () Bool)

(assert (=> d!1434896 (=> res!1914245 e!2857036)))

(assert (=> d!1434896 (= res!1914245 ((_ is Nil!50950) (_2!29056 (h!56886 (toList!4551 lm!1477)))))))

(assert (=> d!1434896 (= (forall!10502 (_2!29056 (h!56886 (toList!4551 lm!1477))) lambda!183043) e!2857036)))

(declare-fun b!4581600 () Bool)

(declare-fun e!2857037 () Bool)

(assert (=> b!4581600 (= e!2857036 e!2857037)))

(declare-fun res!1914246 () Bool)

(assert (=> b!4581600 (=> (not res!1914246) (not e!2857037))))

(assert (=> b!4581600 (= res!1914246 (dynLambda!21336 lambda!183043 (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477))))))))

(declare-fun b!4581601 () Bool)

(assert (=> b!4581601 (= e!2857037 (forall!10502 (t!358064 (_2!29056 (h!56886 (toList!4551 lm!1477)))) lambda!183043))))

(assert (= (and d!1434896 (not res!1914245)) b!4581600))

(assert (= (and b!4581600 res!1914246) b!4581601))

(declare-fun b_lambda!166153 () Bool)

(assert (=> (not b_lambda!166153) (not b!4581600)))

(declare-fun m!5392975 () Bool)

(assert (=> b!4581600 m!5392975))

(declare-fun m!5392977 () Bool)

(assert (=> b!4581601 m!5392977))

(assert (=> d!1434194 d!1434896))

(declare-fun d!1434898 () Bool)

(declare-fun c!784258 () Bool)

(assert (=> d!1434898 (= c!784258 (and ((_ is Cons!50951) (toList!4551 lt!1745270)) (= (_1!29056 (h!56886 (toList!4551 lt!1745270))) (_1!29056 lt!1745211))))))

(declare-fun e!2857038 () Option!11327)

(assert (=> d!1434898 (= (getValueByKey!1253 (toList!4551 lt!1745270) (_1!29056 lt!1745211)) e!2857038)))

(declare-fun b!4581605 () Bool)

(declare-fun e!2857039 () Option!11327)

(assert (=> b!4581605 (= e!2857039 None!11326)))

(declare-fun b!4581604 () Bool)

(assert (=> b!4581604 (= e!2857039 (getValueByKey!1253 (t!358065 (toList!4551 lt!1745270)) (_1!29056 lt!1745211)))))

(declare-fun b!4581602 () Bool)

(assert (=> b!4581602 (= e!2857038 (Some!11326 (_2!29056 (h!56886 (toList!4551 lt!1745270)))))))

(declare-fun b!4581603 () Bool)

(assert (=> b!4581603 (= e!2857038 e!2857039)))

(declare-fun c!784259 () Bool)

(assert (=> b!4581603 (= c!784259 (and ((_ is Cons!50951) (toList!4551 lt!1745270)) (not (= (_1!29056 (h!56886 (toList!4551 lt!1745270))) (_1!29056 lt!1745211)))))))

(assert (= (and d!1434898 c!784258) b!4581602))

(assert (= (and d!1434898 (not c!784258)) b!4581603))

(assert (= (and b!4581603 c!784259) b!4581604))

(assert (= (and b!4581603 (not c!784259)) b!4581605))

(declare-fun m!5392979 () Bool)

(assert (=> b!4581604 m!5392979))

(assert (=> b!4580020 d!1434898))

(assert (=> d!1434144 d!1434244))

(declare-fun d!1434900 () Bool)

(assert (=> d!1434900 (eq!711 (extractMap!1328 (toList!4551 (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178)))) (-!480 (extractMap!1328 (toList!4551 lt!1745235)) key!3287))))

(assert (=> d!1434900 true))

(declare-fun _$8!731 () Unit!105525)

(assert (=> d!1434900 (= (choose!30518 lt!1745235 hash!344 newBucket!178 key!3287 hashF!1107) _$8!731)))

(declare-fun bs!973881 () Bool)

(assert (= bs!973881 d!1434900))

(assert (=> bs!973881 m!5389755))

(assert (=> bs!973881 m!5389755))

(assert (=> bs!973881 m!5390461))

(assert (=> bs!973881 m!5390465))

(assert (=> bs!973881 m!5390459))

(assert (=> bs!973881 m!5390459))

(assert (=> bs!973881 m!5390461))

(assert (=> bs!973881 m!5390463))

(assert (=> d!1434144 d!1434900))

(declare-fun bs!973882 () Bool)

(declare-fun d!1434906 () Bool)

(assert (= bs!973882 (and d!1434906 d!1434210)))

(declare-fun lambda!183328 () Int)

(assert (=> bs!973882 (= lambda!183328 lambda!183163)))

(declare-fun bs!973883 () Bool)

(assert (= bs!973883 (and d!1434906 d!1434168)))

(assert (=> bs!973883 (= lambda!183328 lambda!183155)))

(declare-fun bs!973884 () Bool)

(assert (= bs!973884 (and d!1434906 d!1434246)))

(assert (=> bs!973884 (= lambda!183328 lambda!183174)))

(declare-fun bs!973885 () Bool)

(assert (= bs!973885 (and d!1434906 d!1434368)))

(assert (=> bs!973885 (= lambda!183328 lambda!183204)))

(declare-fun bs!973886 () Bool)

(assert (= bs!973886 (and d!1434906 start!456028)))

(assert (=> bs!973886 (= lambda!183328 lambda!183041)))

(declare-fun bs!973887 () Bool)

(assert (= bs!973887 (and d!1434906 d!1434056)))

(assert (=> bs!973887 (= lambda!183328 lambda!183049)))

(declare-fun bs!973888 () Bool)

(assert (= bs!973888 (and d!1434906 d!1434488)))

(assert (=> bs!973888 (= lambda!183328 lambda!183234)))

(declare-fun bs!973889 () Bool)

(assert (= bs!973889 (and d!1434906 d!1434258)))

(assert (=> bs!973889 (not (= lambda!183328 lambda!183181))))

(declare-fun bs!973890 () Bool)

(assert (= bs!973890 (and d!1434906 d!1434244)))

(assert (=> bs!973890 (= lambda!183328 lambda!183171)))

(declare-fun bs!973891 () Bool)

(assert (= bs!973891 (and d!1434906 d!1434564)))

(assert (=> bs!973891 (= lambda!183328 lambda!183246)))

(declare-fun bs!973892 () Bool)

(assert (= bs!973892 (and d!1434906 d!1434340)))

(assert (=> bs!973892 (= lambda!183328 lambda!183194)))

(declare-fun bs!973893 () Bool)

(assert (= bs!973893 (and d!1434906 b!4579991)))

(assert (=> bs!973893 (not (= lambda!183328 lambda!183042))))

(declare-fun bs!973894 () Bool)

(assert (= bs!973894 (and d!1434906 d!1434250)))

(assert (=> bs!973894 (= lambda!183328 lambda!183175)))

(declare-fun bs!973895 () Bool)

(assert (= bs!973895 (and d!1434906 d!1434134)))

(assert (=> bs!973895 (= lambda!183328 lambda!183144)))

(declare-fun bs!973896 () Bool)

(assert (= bs!973896 (and d!1434906 d!1434136)))

(assert (=> bs!973896 (= lambda!183328 lambda!183150)))

(declare-fun bs!973897 () Bool)

(assert (= bs!973897 (and d!1434906 d!1434776)))

(assert (=> bs!973897 (= lambda!183328 lambda!183297)))

(declare-fun bs!973898 () Bool)

(assert (= bs!973898 (and d!1434906 d!1434174)))

(assert (=> bs!973898 (= lambda!183328 lambda!183156)))

(declare-fun bs!973899 () Bool)

(assert (= bs!973899 (and d!1434906 d!1434144)))

(assert (=> bs!973899 (= lambda!183328 lambda!183154)))

(declare-fun bs!973900 () Bool)

(assert (= bs!973900 (and d!1434906 d!1434230)))

(assert (=> bs!973900 (= lambda!183328 lambda!183170)))

(declare-fun lt!1746535 () ListMap!3813)

(assert (=> d!1434906 (invariantList!1097 (toList!4552 lt!1746535))))

(declare-fun e!2857045 () ListMap!3813)

(assert (=> d!1434906 (= lt!1746535 e!2857045)))

(declare-fun c!784261 () Bool)

(assert (=> d!1434906 (= c!784261 ((_ is Cons!50951) (toList!4551 (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178)))))))

(assert (=> d!1434906 (forall!10500 (toList!4551 (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178))) lambda!183328)))

(assert (=> d!1434906 (= (extractMap!1328 (toList!4551 (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178)))) lt!1746535)))

(declare-fun b!4581613 () Bool)

(assert (=> b!4581613 (= e!2857045 (addToMapMapFromBucket!785 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178))))) (extractMap!1328 (t!358065 (toList!4551 (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178)))))))))

(declare-fun b!4581614 () Bool)

(assert (=> b!4581614 (= e!2857045 (ListMap!3814 Nil!50950))))

(assert (= (and d!1434906 c!784261) b!4581613))

(assert (= (and d!1434906 (not c!784261)) b!4581614))

(declare-fun m!5393075 () Bool)

(assert (=> d!1434906 m!5393075))

(declare-fun m!5393077 () Bool)

(assert (=> d!1434906 m!5393077))

(declare-fun m!5393079 () Bool)

(assert (=> b!4581613 m!5393079))

(assert (=> b!4581613 m!5393079))

(declare-fun m!5393081 () Bool)

(assert (=> b!4581613 m!5393081))

(assert (=> d!1434144 d!1434906))

(declare-fun d!1434910 () Bool)

(declare-fun e!2857047 () Bool)

(assert (=> d!1434910 e!2857047))

(declare-fun res!1914253 () Bool)

(assert (=> d!1434910 (=> (not res!1914253) (not e!2857047))))

(declare-fun lt!1746539 () ListLongMap!3183)

(assert (=> d!1434910 (= res!1914253 (contains!13847 lt!1746539 (_1!29056 (tuple2!51525 hash!344 newBucket!178))))))

(declare-fun lt!1746537 () List!51075)

(assert (=> d!1434910 (= lt!1746539 (ListLongMap!3184 lt!1746537))))

(declare-fun lt!1746540 () Unit!105525)

(declare-fun lt!1746538 () Unit!105525)

(assert (=> d!1434910 (= lt!1746540 lt!1746538)))

(assert (=> d!1434910 (= (getValueByKey!1253 lt!1746537 (_1!29056 (tuple2!51525 hash!344 newBucket!178))) (Some!11326 (_2!29056 (tuple2!51525 hash!344 newBucket!178))))))

(assert (=> d!1434910 (= lt!1746538 (lemmaContainsTupThenGetReturnValue!777 lt!1746537 (_1!29056 (tuple2!51525 hash!344 newBucket!178)) (_2!29056 (tuple2!51525 hash!344 newBucket!178))))))

(assert (=> d!1434910 (= lt!1746537 (insertStrictlySorted!477 (toList!4551 lt!1745235) (_1!29056 (tuple2!51525 hash!344 newBucket!178)) (_2!29056 (tuple2!51525 hash!344 newBucket!178))))))

(assert (=> d!1434910 (= (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178)) lt!1746539)))

(declare-fun b!4581617 () Bool)

(declare-fun res!1914252 () Bool)

(assert (=> b!4581617 (=> (not res!1914252) (not e!2857047))))

(assert (=> b!4581617 (= res!1914252 (= (getValueByKey!1253 (toList!4551 lt!1746539) (_1!29056 (tuple2!51525 hash!344 newBucket!178))) (Some!11326 (_2!29056 (tuple2!51525 hash!344 newBucket!178)))))))

(declare-fun b!4581618 () Bool)

(assert (=> b!4581618 (= e!2857047 (contains!13845 (toList!4551 lt!1746539) (tuple2!51525 hash!344 newBucket!178)))))

(assert (= (and d!1434910 res!1914253) b!4581617))

(assert (= (and b!4581617 res!1914252) b!4581618))

(declare-fun m!5393083 () Bool)

(assert (=> d!1434910 m!5393083))

(declare-fun m!5393085 () Bool)

(assert (=> d!1434910 m!5393085))

(declare-fun m!5393087 () Bool)

(assert (=> d!1434910 m!5393087))

(declare-fun m!5393089 () Bool)

(assert (=> d!1434910 m!5393089))

(declare-fun m!5393091 () Bool)

(assert (=> b!4581617 m!5393091))

(declare-fun m!5393093 () Bool)

(assert (=> b!4581618 m!5393093))

(assert (=> d!1434144 d!1434910))

(declare-fun d!1434912 () Bool)

(declare-fun res!1914254 () Bool)

(declare-fun e!2857048 () Bool)

(assert (=> d!1434912 (=> res!1914254 e!2857048)))

(assert (=> d!1434912 (= res!1914254 ((_ is Nil!50951) (toList!4551 lt!1745235)))))

(assert (=> d!1434912 (= (forall!10500 (toList!4551 lt!1745235) lambda!183154) e!2857048)))

(declare-fun b!4581619 () Bool)

(declare-fun e!2857049 () Bool)

(assert (=> b!4581619 (= e!2857048 e!2857049)))

(declare-fun res!1914255 () Bool)

(assert (=> b!4581619 (=> (not res!1914255) (not e!2857049))))

(assert (=> b!4581619 (= res!1914255 (dynLambda!21335 lambda!183154 (h!56886 (toList!4551 lt!1745235))))))

(declare-fun b!4581620 () Bool)

(assert (=> b!4581620 (= e!2857049 (forall!10500 (t!358065 (toList!4551 lt!1745235)) lambda!183154))))

(assert (= (and d!1434912 (not res!1914254)) b!4581619))

(assert (= (and b!4581619 res!1914255) b!4581620))

(declare-fun b_lambda!166155 () Bool)

(assert (=> (not b_lambda!166155) (not b!4581619)))

(declare-fun m!5393095 () Bool)

(assert (=> b!4581619 m!5393095))

(declare-fun m!5393097 () Bool)

(assert (=> b!4581620 m!5393097))

(assert (=> d!1434144 d!1434912))

(declare-fun d!1434914 () Bool)

(declare-fun e!2857050 () Bool)

(assert (=> d!1434914 e!2857050))

(declare-fun res!1914256 () Bool)

(assert (=> d!1434914 (=> (not res!1914256) (not e!2857050))))

(declare-fun lt!1746541 () ListMap!3813)

(assert (=> d!1434914 (= res!1914256 (not (contains!13846 lt!1746541 key!3287)))))

(assert (=> d!1434914 (= lt!1746541 (ListMap!3814 (removePresrvNoDuplicatedKeys!211 (toList!4552 (extractMap!1328 (toList!4551 lt!1745235))) key!3287)))))

(assert (=> d!1434914 (= (-!480 (extractMap!1328 (toList!4551 lt!1745235)) key!3287) lt!1746541)))

(declare-fun b!4581621 () Bool)

(assert (=> b!4581621 (= e!2857050 (= ((_ map and) (content!8587 (keys!17800 (extractMap!1328 (toList!4551 lt!1745235)))) ((_ map not) (store ((as const (Array K!12320 Bool)) false) key!3287 true))) (content!8587 (keys!17800 lt!1746541))))))

(assert (= (and d!1434914 res!1914256) b!4581621))

(declare-fun m!5393099 () Bool)

(assert (=> d!1434914 m!5393099))

(declare-fun m!5393101 () Bool)

(assert (=> d!1434914 m!5393101))

(assert (=> b!4581621 m!5392123))

(declare-fun m!5393105 () Bool)

(assert (=> b!4581621 m!5393105))

(declare-fun m!5393107 () Bool)

(assert (=> b!4581621 m!5393107))

(declare-fun m!5393111 () Bool)

(assert (=> b!4581621 m!5393111))

(assert (=> b!4581621 m!5393107))

(assert (=> b!4581621 m!5390481))

(assert (=> b!4581621 m!5389755))

(assert (=> b!4581621 m!5392123))

(assert (=> d!1434144 d!1434914))

(declare-fun d!1434916 () Bool)

(assert (=> d!1434916 (= (eq!711 (extractMap!1328 (toList!4551 (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178)))) (-!480 (extractMap!1328 (toList!4551 lt!1745235)) key!3287)) (= (content!8586 (toList!4552 (extractMap!1328 (toList!4551 (+!1708 lt!1745235 (tuple2!51525 hash!344 newBucket!178)))))) (content!8586 (toList!4552 (-!480 (extractMap!1328 (toList!4551 lt!1745235)) key!3287)))))))

(declare-fun bs!973916 () Bool)

(assert (= bs!973916 d!1434916))

(declare-fun m!5393117 () Bool)

(assert (=> bs!973916 m!5393117))

(declare-fun m!5393119 () Bool)

(assert (=> bs!973916 m!5393119))

(assert (=> d!1434144 d!1434916))

(declare-fun d!1434920 () Bool)

(declare-fun res!1914259 () Bool)

(declare-fun e!2857053 () Bool)

(assert (=> d!1434920 (=> res!1914259 e!2857053)))

(assert (=> d!1434920 (= res!1914259 ((_ is Nil!50951) (t!358065 (toList!4551 lm!1477))))))

(assert (=> d!1434920 (= (forall!10500 (t!358065 (toList!4551 lm!1477)) lambda!183041) e!2857053)))

(declare-fun b!4581624 () Bool)

(declare-fun e!2857054 () Bool)

(assert (=> b!4581624 (= e!2857053 e!2857054)))

(declare-fun res!1914260 () Bool)

(assert (=> b!4581624 (=> (not res!1914260) (not e!2857054))))

(assert (=> b!4581624 (= res!1914260 (dynLambda!21335 lambda!183041 (h!56886 (t!358065 (toList!4551 lm!1477)))))))

(declare-fun b!4581625 () Bool)

(assert (=> b!4581625 (= e!2857054 (forall!10500 (t!358065 (t!358065 (toList!4551 lm!1477))) lambda!183041))))

(assert (= (and d!1434920 (not res!1914259)) b!4581624))

(assert (= (and b!4581624 res!1914260) b!4581625))

(declare-fun b_lambda!166157 () Bool)

(assert (=> (not b_lambda!166157) (not b!4581624)))

(declare-fun m!5393133 () Bool)

(assert (=> b!4581624 m!5393133))

(declare-fun m!5393135 () Bool)

(assert (=> b!4581625 m!5393135))

(assert (=> b!4580362 d!1434920))

(assert (=> b!4580109 d!1434422))

(assert (=> b!4580109 d!1434342))

(declare-fun d!1434926 () Bool)

(declare-fun res!1914263 () Bool)

(declare-fun e!2857058 () Bool)

(assert (=> d!1434926 (=> res!1914263 e!2857058)))

(assert (=> d!1434926 (= res!1914263 (and ((_ is Cons!50950) (t!358064 (_2!29056 lt!1745216))) (= (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216)))) (_1!29055 (h!56885 (_2!29056 lt!1745216))))))))

(assert (=> d!1434926 (= (containsKey!2054 (t!358064 (_2!29056 lt!1745216)) (_1!29055 (h!56885 (_2!29056 lt!1745216)))) e!2857058)))

(declare-fun b!4581630 () Bool)

(declare-fun e!2857059 () Bool)

(assert (=> b!4581630 (= e!2857058 e!2857059)))

(declare-fun res!1914264 () Bool)

(assert (=> b!4581630 (=> (not res!1914264) (not e!2857059))))

(assert (=> b!4581630 (= res!1914264 ((_ is Cons!50950) (t!358064 (_2!29056 lt!1745216))))))

(declare-fun b!4581631 () Bool)

(assert (=> b!4581631 (= e!2857059 (containsKey!2054 (t!358064 (t!358064 (_2!29056 lt!1745216))) (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (= (and d!1434926 (not res!1914263)) b!4581630))

(assert (= (and b!4581630 res!1914264) b!4581631))

(declare-fun m!5393143 () Bool)

(assert (=> b!4581631 m!5393143))

(assert (=> b!4580363 d!1434926))

(declare-fun d!1434930 () Bool)

(declare-fun lt!1746545 () Bool)

(assert (=> d!1434930 (= lt!1746545 (select (content!8588 (toList!4551 lt!1745621)) lt!1745216))))

(declare-fun e!2857062 () Bool)

(assert (=> d!1434930 (= lt!1746545 e!2857062)))

(declare-fun res!1914268 () Bool)

(assert (=> d!1434930 (=> (not res!1914268) (not e!2857062))))

(assert (=> d!1434930 (= res!1914268 ((_ is Cons!50951) (toList!4551 lt!1745621)))))

(assert (=> d!1434930 (= (contains!13845 (toList!4551 lt!1745621) lt!1745216) lt!1746545)))

(declare-fun b!4581637 () Bool)

(declare-fun e!2857063 () Bool)

(assert (=> b!4581637 (= e!2857062 e!2857063)))

(declare-fun res!1914269 () Bool)

(assert (=> b!4581637 (=> res!1914269 e!2857063)))

(assert (=> b!4581637 (= res!1914269 (= (h!56886 (toList!4551 lt!1745621)) lt!1745216))))

(declare-fun b!4581638 () Bool)

(assert (=> b!4581638 (= e!2857063 (contains!13845 (t!358065 (toList!4551 lt!1745621)) lt!1745216))))

(assert (= (and d!1434930 res!1914268) b!4581637))

(assert (= (and b!4581637 (not res!1914269)) b!4581638))

(declare-fun m!5393147 () Bool)

(assert (=> d!1434930 m!5393147))

(declare-fun m!5393149 () Bool)

(assert (=> d!1434930 m!5393149))

(declare-fun m!5393151 () Bool)

(assert (=> b!4581638 m!5393151))

(assert (=> b!4580295 d!1434930))

(assert (=> d!1434252 d!1434310))

(declare-fun e!2857064 () Bool)

(declare-fun b!4581639 () Bool)

(declare-fun tp!1339756 () Bool)

(assert (=> b!4581639 (= e!2857064 (and tp_is_empty!28365 tp_is_empty!28367 tp!1339756))))

(assert (=> b!4580428 (= tp!1339749 e!2857064)))

(assert (= (and b!4580428 ((_ is Cons!50950) (t!358064 (t!358064 newBucket!178)))) b!4581639))

(declare-fun tp!1339757 () Bool)

(declare-fun e!2857065 () Bool)

(declare-fun b!4581640 () Bool)

(assert (=> b!4581640 (= e!2857065 (and tp_is_empty!28365 tp_is_empty!28367 tp!1339757))))

(assert (=> b!4580433 (= tp!1339754 e!2857065)))

(assert (= (and b!4580433 ((_ is Cons!50950) (_2!29056 (h!56886 (toList!4551 lm!1477))))) b!4581640))

(declare-fun b!4581641 () Bool)

(declare-fun e!2857066 () Bool)

(declare-fun tp!1339758 () Bool)

(declare-fun tp!1339759 () Bool)

(assert (=> b!4581641 (= e!2857066 (and tp!1339758 tp!1339759))))

(assert (=> b!4580433 (= tp!1339755 e!2857066)))

(assert (= (and b!4580433 ((_ is Cons!50951) (t!358065 (toList!4551 lm!1477)))) b!4581641))

(declare-fun b_lambda!166159 () Bool)

(assert (= b_lambda!166115 (or b!4580368 b_lambda!166159)))

(declare-fun bs!973937 () Bool)

(declare-fun d!1434938 () Bool)

(assert (= bs!973937 (and d!1434938 b!4580368)))

(assert (=> bs!973937 (= (dynLambda!21336 lambda!183166 (h!56885 (toList!4552 lt!1745663))) (contains!13846 lt!1745665 (_1!29055 (h!56885 (toList!4552 lt!1745663)))))))

(declare-fun m!5393179 () Bool)

(assert (=> bs!973937 m!5393179))

(assert (=> b!4581221 d!1434938))

(declare-fun b_lambda!166161 () Bool)

(assert (= b_lambda!166151 (or b!4579991 b_lambda!166161)))

(assert (=> d!1434892 d!1434266))

(declare-fun b_lambda!166163 () Bool)

(assert (= b_lambda!166153 (or b!4579991 b_lambda!166163)))

(declare-fun bs!973939 () Bool)

(declare-fun d!1434944 () Bool)

(assert (= bs!973939 (and d!1434944 b!4579991)))

(assert (=> bs!973939 (= (dynLambda!21336 lambda!183043 (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477))))) (= (hash!3119 hashF!1107 (_1!29055 (h!56885 (_2!29056 (h!56886 (toList!4551 lm!1477)))))) (_1!29056 (h!56886 (toList!4551 lm!1477)))))))

(declare-fun m!5393181 () Bool)

(assert (=> bs!973939 m!5393181))

(assert (=> b!4581600 d!1434944))

(declare-fun b_lambda!166165 () Bool)

(assert (= b_lambda!166057 (or d!1434060 b_lambda!166165)))

(declare-fun bs!973940 () Bool)

(declare-fun d!1434946 () Bool)

(assert (= bs!973940 (and d!1434946 d!1434060)))

(assert (=> bs!973940 (= (dynLambda!21336 lambda!183143 (h!56885 (_2!29056 lt!1745216))) (contains!13846 lt!1745579 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun m!5393185 () Bool)

(assert (=> bs!973940 m!5393185))

(assert (=> b!4580621 d!1434946))

(declare-fun b_lambda!166167 () Bool)

(assert (= b_lambda!166121 (or b!4580368 b_lambda!166167)))

(declare-fun bs!973941 () Bool)

(declare-fun d!1434948 () Bool)

(assert (= bs!973941 (and d!1434948 b!4580368)))

(assert (=> bs!973941 (= (dynLambda!21336 lambda!183166 (h!56885 (_2!29056 lt!1745216))) (contains!13846 lt!1745665 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> bs!973941 m!5390659))

(assert (=> b!4581255 d!1434948))

(declare-fun b_lambda!166169 () Bool)

(assert (= b_lambda!166049 (or d!1434250 b_lambda!166169)))

(declare-fun bs!973942 () Bool)

(declare-fun d!1434952 () Bool)

(assert (= bs!973942 (and d!1434952 d!1434250)))

(assert (=> bs!973942 (= (dynLambda!21335 lambda!183175 (h!56886 (t!358065 (toList!4551 lm!1477)))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))))))

(assert (=> bs!973942 m!5390933))

(assert (=> b!4580584 d!1434952))

(declare-fun b_lambda!166171 () Bool)

(assert (= b_lambda!166031 (or b!4579991 b_lambda!166171)))

(assert (=> d!1434268 d!1434262))

(declare-fun b_lambda!166173 () Bool)

(assert (= b_lambda!166135 (or b!4580257 b_lambda!166173)))

(declare-fun bs!973944 () Bool)

(declare-fun d!1434956 () Bool)

(assert (= bs!973944 (and d!1434956 b!4580257)))

(assert (=> bs!973944 (= (dynLambda!21336 lambda!183141 (h!56885 (toList!4552 lt!1745218))) (contains!13846 lt!1745218 (_1!29055 (h!56885 (toList!4552 lt!1745218)))))))

(declare-fun m!5393193 () Bool)

(assert (=> bs!973944 m!5393193))

(assert (=> b!4581330 d!1434956))

(declare-fun b_lambda!166175 () Bool)

(assert (= b_lambda!166157 (or start!456028 b_lambda!166175)))

(declare-fun bs!973946 () Bool)

(declare-fun d!1434960 () Bool)

(assert (= bs!973946 (and d!1434960 start!456028)))

(assert (=> bs!973946 (= (dynLambda!21335 lambda!183041 (h!56886 (t!358065 (toList!4551 lm!1477)))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (t!358065 (toList!4551 lm!1477))))))))

(assert (=> bs!973946 m!5390933))

(assert (=> b!4581624 d!1434960))

(declare-fun b_lambda!166177 () Bool)

(assert (= b_lambda!166145 (or d!1434256 b_lambda!166177)))

(declare-fun bs!973947 () Bool)

(declare-fun d!1434962 () Bool)

(assert (= bs!973947 (and d!1434962 d!1434256)))

(assert (=> bs!973947 (= (dynLambda!21336 lambda!183178 (h!56885 newBucket!178)) (= (hash!3119 hashF!1107 (_1!29055 (h!56885 newBucket!178))) hash!344))))

(declare-fun m!5393195 () Bool)

(assert (=> bs!973947 m!5393195))

(assert (=> b!4581478 d!1434962))

(declare-fun b_lambda!166179 () Bool)

(assert (= b_lambda!166055 (or d!1434224 b_lambda!166179)))

(declare-fun bs!973948 () Bool)

(declare-fun d!1434964 () Bool)

(assert (= bs!973948 (and d!1434964 d!1434224)))

(assert (=> bs!973948 (= (dynLambda!21336 lambda!183167 (h!56885 (_2!29056 lt!1745216))) (contains!13846 lt!1745668 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun m!5393197 () Bool)

(assert (=> bs!973948 m!5393197))

(assert (=> b!4580605 d!1434964))

(declare-fun b_lambda!166181 () Bool)

(assert (= b_lambda!166089 (or d!1434056 b_lambda!166181)))

(declare-fun bs!973949 () Bool)

(declare-fun d!1434966 () Bool)

(assert (= bs!973949 (and d!1434966 d!1434056)))

(assert (=> bs!973949 (= (dynLambda!21335 lambda!183049 (h!56886 (toList!4551 lm!1477))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lm!1477)))))))

(assert (=> bs!973949 m!5390785))

(assert (=> b!4580919 d!1434966))

(declare-fun b_lambda!166183 () Bool)

(assert (= b_lambda!166037 (or d!1434184 b_lambda!166183)))

(declare-fun bs!973950 () Bool)

(declare-fun d!1434968 () Bool)

(assert (= bs!973950 (and d!1434968 d!1434184)))

(assert (=> bs!973950 (= (dynLambda!21336 lambda!183160 (h!56885 (_2!29056 lt!1745216))) (contains!13846 lt!1745630 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(declare-fun m!5393205 () Bool)

(assert (=> bs!973950 m!5393205))

(assert (=> b!4580517 d!1434968))

(declare-fun b_lambda!166185 () Bool)

(assert (= b_lambda!166069 (or b!4580305 b_lambda!166185)))

(declare-fun bs!973951 () Bool)

(declare-fun d!1434970 () Bool)

(assert (= bs!973951 (and d!1434970 b!4580305)))

(assert (=> bs!973951 (= (dynLambda!21336 lambda!183159 (h!56885 (toList!4552 lt!1745232))) (contains!13846 lt!1745627 (_1!29055 (h!56885 (toList!4552 lt!1745232)))))))

(declare-fun m!5393207 () Bool)

(assert (=> bs!973951 m!5393207))

(assert (=> b!4580659 d!1434970))

(declare-fun b_lambda!166187 () Bool)

(assert (= b_lambda!166067 (or b!4580305 b_lambda!166187)))

(declare-fun bs!973952 () Bool)

(declare-fun d!1434974 () Bool)

(assert (= bs!973952 (and d!1434974 b!4580305)))

(assert (=> bs!973952 (= (dynLambda!21336 lambda!183159 (h!56885 (t!358064 (_2!29056 lt!1745216)))) (contains!13846 lt!1745627 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216))))))))

(declare-fun m!5393209 () Bool)

(assert (=> bs!973952 m!5393209))

(assert (=> b!4580650 d!1434974))

(declare-fun b_lambda!166189 () Bool)

(assert (= b_lambda!166099 (or d!1434168 b_lambda!166189)))

(declare-fun bs!973953 () Bool)

(declare-fun d!1434976 () Bool)

(assert (= bs!973953 (and d!1434976 d!1434168)))

(assert (=> bs!973953 (= (dynLambda!21335 lambda!183155 (h!56886 (toList!4551 lt!1745230))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lt!1745230)))))))

(assert (=> bs!973953 m!5391687))

(assert (=> b!4581118 d!1434976))

(declare-fun b_lambda!166191 () Bool)

(assert (= b_lambda!166111 (or d!1434246 b_lambda!166191)))

(declare-fun bs!973954 () Bool)

(declare-fun d!1434978 () Bool)

(assert (= bs!973954 (and d!1434978 d!1434246)))

(assert (=> bs!973954 (= (dynLambda!21335 lambda!183174 (h!56886 (toList!4551 lt!1745235))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lt!1745235)))))))

(assert (=> bs!973954 m!5391393))

(assert (=> b!4581197 d!1434978))

(declare-fun b_lambda!166193 () Bool)

(assert (= b_lambda!166117 (or b!4580368 b_lambda!166193)))

(declare-fun bs!973955 () Bool)

(declare-fun d!1434980 () Bool)

(assert (= bs!973955 (and d!1434980 b!4580368)))

(assert (=> bs!973955 (= (dynLambda!21336 lambda!183166 (h!56885 (t!358064 (_2!29056 lt!1745216)))) (contains!13846 lt!1745665 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216))))))))

(declare-fun m!5393213 () Bool)

(assert (=> bs!973955 m!5393213))

(assert (=> b!4581238 d!1434980))

(declare-fun b_lambda!166195 () Bool)

(assert (= b_lambda!166035 (or d!1434184 b_lambda!166195)))

(declare-fun bs!973956 () Bool)

(declare-fun d!1434984 () Bool)

(assert (= bs!973956 (and d!1434984 d!1434184)))

(assert (=> bs!973956 (= (dynLambda!21336 lambda!183160 (h!56885 (toList!4552 lt!1745232))) (contains!13846 lt!1745630 (_1!29055 (h!56885 (toList!4552 lt!1745232)))))))

(declare-fun m!5393215 () Bool)

(assert (=> bs!973956 m!5393215))

(assert (=> b!4580456 d!1434984))

(declare-fun b_lambda!166197 () Bool)

(assert (= b_lambda!166093 (or d!1434258 b_lambda!166197)))

(declare-fun bs!973957 () Bool)

(declare-fun d!1434986 () Bool)

(assert (= bs!973957 (and d!1434986 d!1434258)))

(assert (=> bs!973957 (= (dynLambda!21335 lambda!183181 (h!56886 (toList!4551 lm!1477))) (allKeysSameHash!1126 (_2!29056 (h!56886 (toList!4551 lm!1477))) (_1!29056 (h!56886 (toList!4551 lm!1477))) hashF!1107))))

(assert (=> bs!973957 m!5390787))

(assert (=> b!4581035 d!1434986))

(declare-fun b_lambda!166199 () Bool)

(assert (= b_lambda!166063 (or b!4580305 b_lambda!166199)))

(declare-fun bs!973958 () Bool)

(declare-fun d!1434988 () Bool)

(assert (= bs!973958 (and d!1434988 b!4580305)))

(assert (=> bs!973958 (= (dynLambda!21336 lambda!183159 (h!56885 (_2!29056 lt!1745216))) (contains!13846 lt!1745627 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> bs!973958 m!5390553))

(assert (=> b!4580637 d!1434988))

(declare-fun b_lambda!166201 () Bool)

(assert (= b_lambda!166091 (or b!4580368 b_lambda!166201)))

(declare-fun bs!973959 () Bool)

(declare-fun d!1434990 () Bool)

(assert (= bs!973959 (and d!1434990 b!4580368)))

(assert (=> bs!973959 (= (dynLambda!21336 lambda!183166 (h!56885 (toList!4552 lt!1745214))) (contains!13846 lt!1745665 (_1!29055 (h!56885 (toList!4552 lt!1745214)))))))

(declare-fun m!5393221 () Bool)

(assert (=> bs!973959 m!5393221))

(assert (=> b!4581033 d!1434990))

(declare-fun b_lambda!166203 () Bool)

(assert (= b_lambda!166065 (or b!4580305 b_lambda!166203)))

(declare-fun bs!973960 () Bool)

(declare-fun d!1434992 () Bool)

(assert (= bs!973960 (and d!1434992 b!4580305)))

(assert (=> bs!973960 (= (dynLambda!21336 lambda!183158 (h!56885 (toList!4552 lt!1745232))) (contains!13846 lt!1745232 (_1!29055 (h!56885 (toList!4552 lt!1745232)))))))

(declare-fun m!5393227 () Bool)

(assert (=> bs!973960 m!5393227))

(assert (=> b!4580648 d!1434992))

(declare-fun b_lambda!166205 () Bool)

(assert (= b_lambda!166097 (or d!1434210 b_lambda!166205)))

(declare-fun bs!973961 () Bool)

(declare-fun d!1434996 () Bool)

(assert (= bs!973961 (and d!1434996 d!1434210)))

(assert (=> bs!973961 (= (dynLambda!21335 lambda!183163 (h!56886 (toList!4551 lt!1745235))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lt!1745235)))))))

(assert (=> bs!973961 m!5391393))

(assert (=> b!4581108 d!1434996))

(declare-fun b_lambda!166207 () Bool)

(assert (= b_lambda!166087 (or d!1434244 b_lambda!166207)))

(declare-fun bs!973962 () Bool)

(declare-fun d!1434998 () Bool)

(assert (= bs!973962 (and d!1434998 d!1434244)))

(assert (=> bs!973962 (= (dynLambda!21335 lambda!183171 (h!56886 (toList!4551 lt!1745235))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lt!1745235)))))))

(assert (=> bs!973962 m!5391393))

(assert (=> b!4580915 d!1434998))

(declare-fun b_lambda!166209 () Bool)

(assert (= b_lambda!166061 (or b!4580305 b_lambda!166209)))

(declare-fun bs!973963 () Bool)

(declare-fun d!1435000 () Bool)

(assert (= bs!973963 (and d!1435000 b!4580305)))

(assert (=> bs!973963 (= (dynLambda!21336 lambda!183159 (h!56885 (toList!4552 lt!1745625))) (contains!13846 lt!1745627 (_1!29055 (h!56885 (toList!4552 lt!1745625)))))))

(declare-fun m!5393229 () Bool)

(assert (=> bs!973963 m!5393229))

(assert (=> b!4580635 d!1435000))

(declare-fun b_lambda!166211 () Bool)

(assert (= b_lambda!166131 (or b!4580257 b_lambda!166211)))

(declare-fun bs!973964 () Bool)

(declare-fun d!1435002 () Bool)

(assert (= bs!973964 (and d!1435002 b!4580257)))

(assert (=> bs!973964 (= (dynLambda!21336 lambda!183142 (h!56885 (_2!29056 lt!1745216))) (contains!13846 lt!1745576 (_1!29055 (h!56885 (_2!29056 lt!1745216)))))))

(assert (=> bs!973964 m!5390369))

(assert (=> d!1434758 d!1435002))

(declare-fun b_lambda!166213 () Bool)

(assert (= b_lambda!166133 (or b!4580257 b_lambda!166213)))

(declare-fun bs!973965 () Bool)

(declare-fun d!1435004 () Bool)

(assert (= bs!973965 (and d!1435004 b!4580257)))

(assert (=> bs!973965 (= (dynLambda!21336 lambda!183142 (h!56885 (toList!4552 lt!1745574))) (contains!13846 lt!1745576 (_1!29055 (h!56885 (toList!4552 lt!1745574)))))))

(declare-fun m!5393231 () Bool)

(assert (=> bs!973965 m!5393231))

(assert (=> b!4581328 d!1435004))

(declare-fun b_lambda!166215 () Bool)

(assert (= b_lambda!166095 (or b!4580257 b_lambda!166215)))

(declare-fun bs!973966 () Bool)

(declare-fun d!1435006 () Bool)

(assert (= bs!973966 (and d!1435006 b!4580257)))

(assert (=> bs!973966 (= (dynLambda!21336 lambda!183142 (h!56885 (toList!4552 lt!1745218))) (contains!13846 lt!1745576 (_1!29055 (h!56885 (toList!4552 lt!1745218)))))))

(declare-fun m!5393233 () Bool)

(assert (=> bs!973966 m!5393233))

(assert (=> b!4581037 d!1435006))

(declare-fun b_lambda!166217 () Bool)

(assert (= b_lambda!166045 (or d!1434060 b_lambda!166217)))

(declare-fun bs!973967 () Bool)

(declare-fun d!1435008 () Bool)

(assert (= bs!973967 (and d!1435008 d!1434060)))

(assert (=> bs!973967 (= (dynLambda!21336 lambda!183143 (h!56885 (toList!4552 lt!1745218))) (contains!13846 lt!1745579 (_1!29055 (h!56885 (toList!4552 lt!1745218)))))))

(declare-fun m!5393235 () Bool)

(assert (=> bs!973967 m!5393235))

(assert (=> b!4580549 d!1435008))

(declare-fun b_lambda!166219 () Bool)

(assert (= b_lambda!166119 (or b!4580368 b_lambda!166219)))

(declare-fun bs!973968 () Bool)

(declare-fun d!1435010 () Bool)

(assert (= bs!973968 (and d!1435010 b!4580368)))

(assert (=> bs!973968 (= (dynLambda!21336 lambda!183165 (h!56885 (toList!4552 lt!1745214))) (contains!13846 lt!1745214 (_1!29055 (h!56885 (toList!4552 lt!1745214)))))))

(declare-fun m!5393237 () Bool)

(assert (=> bs!973968 m!5393237))

(assert (=> b!4581240 d!1435010))

(declare-fun b_lambda!166221 () Bool)

(assert (= b_lambda!166127 (or b!4580257 b_lambda!166221)))

(declare-fun bs!973969 () Bool)

(declare-fun d!1435012 () Bool)

(assert (= bs!973969 (and d!1435012 b!4580257)))

(assert (=> bs!973969 (= (dynLambda!21336 lambda!183142 (h!56885 (t!358064 (_2!29056 lt!1745216)))) (contains!13846 lt!1745576 (_1!29055 (h!56885 (t!358064 (_2!29056 lt!1745216))))))))

(declare-fun m!5393239 () Bool)

(assert (=> bs!973969 m!5393239))

(assert (=> b!4581298 d!1435012))

(declare-fun b_lambda!166223 () Bool)

(assert (= b_lambda!166033 (or b!4579991 b_lambda!166223)))

(assert (=> b!4580434 d!1434262))

(declare-fun b_lambda!166225 () Bool)

(assert (= b_lambda!166053 (or d!1434174 b_lambda!166225)))

(declare-fun bs!973970 () Bool)

(declare-fun d!1435014 () Bool)

(assert (= bs!973970 (and d!1435014 d!1434174)))

(assert (=> bs!973970 (= (dynLambda!21335 lambda!183156 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216)))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 (+!1708 lt!1745235 lt!1745216))))))))

(assert (=> bs!973970 m!5391035))

(assert (=> b!4580601 d!1435014))

(declare-fun b_lambda!166227 () Bool)

(assert (= b_lambda!166059 (or b!4580305 b_lambda!166227)))

(assert (=> d!1434428 d!1434988))

(declare-fun b_lambda!166229 () Bool)

(assert (= b_lambda!166113 (or b!4580368 b_lambda!166229)))

(assert (=> d!1434704 d!1434948))

(declare-fun b_lambda!166231 () Bool)

(assert (= b_lambda!166081 (or start!456028 b_lambda!166231)))

(assert (=> d!1434504 d!1434260))

(declare-fun b_lambda!166233 () Bool)

(assert (= b_lambda!166047 (or d!1434224 b_lambda!166233)))

(declare-fun bs!973971 () Bool)

(declare-fun d!1435016 () Bool)

(assert (= bs!973971 (and d!1435016 d!1434224)))

(assert (=> bs!973971 (= (dynLambda!21336 lambda!183167 (h!56885 (toList!4552 lt!1745214))) (contains!13846 lt!1745668 (_1!29055 (h!56885 (toList!4552 lt!1745214)))))))

(declare-fun m!5393247 () Bool)

(assert (=> bs!973971 m!5393247))

(assert (=> b!4580551 d!1435016))

(declare-fun b_lambda!166235 () Bool)

(assert (= b_lambda!166039 (or d!1434230 b_lambda!166235)))

(declare-fun bs!973972 () Bool)

(declare-fun d!1435018 () Bool)

(assert (= bs!973972 (and d!1435018 d!1434230)))

(assert (=> bs!973972 (= (dynLambda!21335 lambda!183170 (h!56886 (toList!4551 lm!1477))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lm!1477)))))))

(assert (=> bs!973972 m!5390785))

(assert (=> b!4580527 d!1435018))

(declare-fun b_lambda!166237 () Bool)

(assert (= b_lambda!166143 (or d!1434134 b_lambda!166237)))

(declare-fun bs!973973 () Bool)

(declare-fun d!1435022 () Bool)

(assert (= bs!973973 (and d!1435022 d!1434134)))

(assert (=> bs!973973 (= (dynLambda!21335 lambda!183144 (h!56886 (toList!4551 lt!1745223))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lt!1745223)))))))

(assert (=> bs!973973 m!5392471))

(assert (=> b!4581472 d!1435022))

(declare-fun b_lambda!166239 () Bool)

(assert (= b_lambda!166129 (or b!4580257 b_lambda!166239)))

(assert (=> b!4581300 d!1435002))

(declare-fun b_lambda!166241 () Bool)

(assert (= b_lambda!166071 (or d!1434136 b_lambda!166241)))

(declare-fun bs!973975 () Bool)

(declare-fun d!1435026 () Bool)

(assert (= bs!973975 (and d!1435026 d!1434136)))

(assert (=> bs!973975 (= (dynLambda!21335 lambda!183150 (h!56886 (toList!4551 lm!1477))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lm!1477)))))))

(assert (=> bs!973975 m!5390785))

(assert (=> b!4580679 d!1435026))

(declare-fun b_lambda!166243 () Bool)

(assert (= b_lambda!166077 (or start!456028 b_lambda!166243)))

(assert (=> d!1434498 d!1434264))

(declare-fun b_lambda!166245 () Bool)

(assert (= b_lambda!166155 (or d!1434144 b_lambda!166245)))

(declare-fun bs!973976 () Bool)

(declare-fun d!1435028 () Bool)

(assert (= bs!973976 (and d!1435028 d!1434144)))

(assert (=> bs!973976 (= (dynLambda!21335 lambda!183154 (h!56886 (toList!4551 lt!1745235))) (noDuplicateKeys!1272 (_2!29056 (h!56886 (toList!4551 lt!1745235)))))))

(assert (=> bs!973976 m!5391393))

(assert (=> b!4581619 d!1435028))

(check-sat (not b!4581517) (not b!4580901) (not b!4581480) (not b_lambda!166199) (not bm!319801) (not b!4581064) (not b!4580642) (not b_lambda!166227) (not b!4580520) (not b!4580472) (not b!4581119) (not b_lambda!166241) (not bm!319790) (not d!1434872) (not b!4581424) (not d!1434318) (not b!4580449) (not b!4581066) (not b_lambda!166179) (not b!4580530) (not b!4580920) (not b!4580710) (not b!4581017) (not b!4581320) (not d!1434446) (not b!4580574) (not b!4580952) (not b!4580624) (not b!4580927) (not b!4581026) (not bs!973965) (not d!1434696) (not b_lambda!166021) (not bs!973942) (not b!4580954) (not b!4581442) (not b!4580566) (not b!4580522) (not b!4581089) (not b!4580946) (not b!4580673) (not bm!319784) (not b_lambda!166233) (not bm!319788) (not b!4580677) (not b!4580533) (not bm!319729) (not b!4580758) (not d!1434890) (not b!4580678) (not d!1434456) (not b!4581086) (not bm!319718) (not b!4580528) (not d!1434326) (not b_lambda!166023) (not b!4580630) (not b!4581406) (not b!4581109) (not d!1434312) (not b!4581189) (not b_lambda!166165) (not b!4580488) (not b!4581638) (not b_lambda!166235) (not b!4581227) (not d!1434282) (not b!4581316) (not b!4581318) (not d!1434462) (not b!4581444) (not d!1434400) (not b_lambda!166229) (not d!1434600) (not b!4581333) (not bs!973937) (not b!4580631) (not b!4581535) (not bm!319765) (not d!1434274) (not b!4581305) (not b_lambda!166051) (not bm!319838) (not b!4580577) (not b!4581425) (not b!4581625) (not b_lambda!166201) (not b!4580618) (not b!4581315) (not b!4580947) (not b!4580656) (not b!4580924) (not b!4581617) (not b!4580702) (not bm!319804) (not b!4581640) (not d!1434302) (not b!4580649) (not bs!973970) (not b!4581423) (not b!4580807) (not b_lambda!166183) (not d!1434552) (not b!4580768) (not b!4580922) (not b!4581639) (not b!4580632) (not b!4581241) (not b!4580443) (not bm!319770) (not b!4580750) (not b!4580657) (not b!4580707) (not d!1434356) (not b!4580532) (not b!4580508) (not b!4581601) (not b!4580660) (not b!4580715) (not b!4581301) (not b!4581314) (not b_lambda!166073) (not d!1434426) (not b!4580661) (not bs!973960) (not b!4581484) (not bm!319787) (not b!4581580) (not b!4581125) (not b!4581050) (not d!1434538) (not b!4581312) (not b!4581228) (not bm!319724) (not b!4581198) (not b!4580932) (not b!4581004) (not b!4581259) (not b!4581025) (not d!1434448) (not bm!319719) (not d!1434324) (not b!4581006) (not d!1434340) (not b!4581072) (not b!4581193) (not bs!973968) (not b!4580470) (not d!1434564) (not d!1434292) (not d!1434702) (not bm!319800) (not d!1434342) (not d!1434468) (not d!1434758) (not b!4581329) (not d!1434418) (not bm!319769) (not b!4580910) (not b!4581001) (not b!4580598) (not b!4581479) (not b!4580644) (not d!1434440) (not b!4580480) (not d!1434408) (not b!4580778) (not b!4580787) (not bm!319739) (not b!4580643) (not bm!319725) (not b!4580931) (not d!1434500) (not b!4580806) (not b!4581116) (not b!4580944) (not b!4580521) (not bs!973952) (not d!1434550) (not b!4581322) (not bs!973944) (not d!1434776) (not b!4581231) (not d!1434646) (not d!1434868) (not b!4580526) (not b!4581054) (not d!1434832) (not d!1434428) (not b!4580771) (not b!4581195) (not b!4580585) (not b_lambda!166189) (not d!1434372) (not b!4580722) (not b!4580555) (not d!1434380) (not d!1434276) (not b!4581204) (not b!4581531) (not bm!319843) (not b_lambda!166239) (not b!4580463) (not b!4580911) (not b!4580804) (not bm!319760) (not d!1434580) (not bm!319737) (not b_lambda!166175) (not d!1434874) (not bs!973955) (not b!4581475) (not b!4580535) (not b!4580760) (not d!1434618) (not b!4580590) (not b!4580538) (not b!4580780) (not b!4581302) (not bm!319786) (not b!4580537) (not b_lambda!166025) (not d!1434622) (not b!4580798) (not b!4580501) (not b!4580516) (not b!4580629) (not b!4580747) (not bm!319764) (not bm!319812) (not bm!319766) (not b!4581325) (not d!1434366) (not b!4580542) (not b!4580706) (not b!4581482) (not bm!319721) (not d!1434424) (not bm!319792) (not bm!319806) (not b!4581440) (not bm!319799) (not bm!319756) (not b!4580651) (not d!1434486) (not b!4580510) (not d!1434604) (not b!4581046) (not bs!973961) (not d!1434288) (not b!4580765) (not b!4580548) (not d!1434906) (not b!4581332) (not b!4580913) (not d!1434602) (not bs!973966) (not bm!319761) (not d!1434404) (not bm!319840) (not b!4581618) (not b!4581128) (not b!4581439) (not b_lambda!166177) (not d!1434930) (not b_lambda!166041) (not b!4581429) (not b!4580573) (not d!1434780) (not b_lambda!166161) (not d!1434694) (not b!4580602) (not b!4580896) (not b!4580955) (not d!1434626) (not b!4581394) (not d!1434368) (not b_lambda!166029) (not b!4580796) (not b!4581051) (not b!4580547) (not d!1434496) (not b!4581222) (not b!4581430) (not d!1434616) (not b!4581309) (not b!4581206) (not b!4581481) (not b!4581317) (not bm!319757) (not d!1434460) (not b!4580676) (not d!1434716) (not b!4581307) (not b!4580550) (not b!4580633) (not d!1434766) (not b!4580486) (not b!4580662) (not d!1434768) (not b!4581038) (not b_lambda!166221) (not b!4580800) (not b!4580671) (not b!4580703) (not b!4581057) (not d!1434700) (not b!4581205) (not b!4581020) (not b!4581334) (not b!4581194) (not b_lambda!166169) (not bs!973950) (not bm!319768) (not b!4581477) (not b!4580775) (not b_lambda!166149) (not b!4580647) (not b!4581428) (not bm!319740) (not b!4581631) (not b_lambda!166185) (not b!4580926) (not b!4580628) (not b!4580572) (not b!4580435) (not b!4580588) (not d!1434454) (not b!4581299) (not b!4581216) (not b!4581546) (not b!4580937) (not b!4581327) (not d!1434760) (not b!4581191) (not b!4581336) (not bm!319767) (not d!1434764) (not b!4580898) (not b!4580622) (not b_lambda!166173) (not b!4580587) (not b!4580802) (not b!4580636) (not b!4580582) (not b_lambda!166207) (not b!4580674) (not b!4581405) (not b!4580928) (not b!4581094) (not b_lambda!166209) (not b!4580712) (not b!4580546) (not d!1434796) (not b!4581097) (not b!4581257) (not bs!973948) (not b!4581229) (not b!4580805) (not d!1434544) (not b!4580948) (not b!4581088) (not d!1434434) (not b!4581200) (not b!4581073) (not b_lambda!166219) (not b_lambda!166191) (not b!4580609) (not b_lambda!166159) (not bm!319755) (not d!1434648) (not b_lambda!166195) (not b_lambda!166187) (not bm!319813) (not b!4580518) (not b!4580770) (not b_lambda!166203) (not b!4580781) (not bm!319720) (not d!1434466) (not d!1434422) (not b!4581524) (not b!4581012) (not bs!973962) (not d!1434344) (not b!4581324) (not b!4581049) (not b!4580576) (not b!4580668) (not b!4580900) (not b!4581069) (not b!4581196) (not b!4580626) (not b!4580437) (not b!4581203) (not b!4580663) (not b!4581256) (not d!1434328) (not b!4580675) (not d!1434488) (not b!4581443) (not d!1434598) (not b!4580953) (not b!4581134) (not b_lambda!166215) (not bs!973951) (not b!4580490) (not b!4581121) (not bm!319815) (not b_lambda!166211) (not b!4581028) (not d!1434284) (not b_lambda!166163) (not b_lambda!166205) (not d!1434298) (not b!4580569) (not d!1434570) tp_is_empty!28365 (not b!4581323) (not b!4580606) (not bs!973958) (not b!4580761) (not bs!973972) (not bs!973957) (not bm!319722) (not bm!319741) (not b!4581239) (not d!1434910) (not b!4580936) (not b!4580534) (not b!4581230) (not bs!973940) (not b!4581048) (not bm!319816) (not b!4580939) (not b!4580640) (not b!4580568) (not d!1434808) (not b!4580638) (not bm!319802) (not bm!319805) (not bm!319728) (not b!4580571) (not bs!973976) (not b_lambda!166217) (not d!1434916) (not d!1434290) (not b!4581138) (not b!4581202) (not d!1434458) (not d!1434442) (not b!4581404) (not b!4580957) (not bs!973971) (not b!4580646) (not b!4580620) (not b!4580440) (not b!4581192) (not b!4581252) (not b!4581041) (not bm!319726) (not d!1434338) (not bs!973953) (not d!1434316) (not bs!973956) (not b!4581620) (not d!1434474) (not bm!319758) (not b!4581261) (not bs!973939) (not b!4580593) (not b!4581005) (not b!4580596) (not b!4581304) (not b_lambda!166075) (not bs!973959) (not d!1434576) (not b_lambda!166171) (not b!4581641) (not b_lambda!166223) (not bs!973941) (not bm!319789) (not b!4580471) (not b_lambda!166237) (not d!1434330) (not b!4581519) (not b!4581401) (not d!1434582) (not b!4581032) (not b!4580544) (not b!4580457) (not d!1434450) (not b!4580903) (not d!1434862) (not bm!319807) (not b!4581226) (not d!1434556) (not b!4581303) (not b!4581056) (not b!4581207) (not b!4581427) (not b!4581313) (not b!4581402) (not b!4581422) (not b!4581052) (not b!4580934) (not b!4580929) (not bm!319810) (not d!1434376) (not b!4580992) (not b_lambda!166213) (not b_lambda!166193) (not d!1434308) (not b!4581530) (not b!4580912) (not b!4580552) (not bs!973969) (not b!4580803) (not b!4581224) (not b!4580772) (not b!4580524) (not d!1434542) (not d!1434914) (not bs!973947) (not b!4581047) (not b!4580680) (not d!1434510) (not b!4580705) (not d!1434512) (not bm!319763) (not b!4581135) (not b!4580523) (not d!1434480) (not d!1434900) (not d!1434802) (not b!4581476) (not bs!973963) (not b!4581095) (not b_lambda!166181) (not b!4580540) (not b!4580774) (not bm!319811) (not b!4581621) (not b!4580543) (not b!4581034) (not b!4581473) (not bs!973967) (not b_lambda!166197) (not d!1434358) (not bs!973954) (not d!1434774) (not b!4580612) (not bs!973946) (not d!1434710) (not bm!319803) (not b!4581136) (not d!1434420) (not b!4580794) (not bm!319791) (not d!1434390) (not b!4580721) (not b!4581569) (not b!4580579) (not b!4581068) (not b!4580786) (not b!4581071) (not b!4580645) (not bm!319814) (not b!4580908) (not bm!319794) (not b!4580748) (not d!1434370) (not d!1434396) (not b!4581014) tp_is_empty!28367 (not bs!973949) (not bm!319727) (not b!4580916) (not bm!319759) (not b!4580604) (not d!1434472) (not b!4580665) (not bm!319742) (not d!1434514) (not bm!319762) (not b_lambda!166225) (not d!1434708) (not b!4581258) (not bs!973975) (not bs!973973) (not d!1434612) (not d!1434762) (not d!1434822) (not b!4581311) (not d!1434410) (not b!4580999) (not b!4581567) (not b!4581075) (not b!4581331) (not b!4580762) (not b!4581059) (not b!4580785) (not b!4580541) (not d!1434720) (not b!4581525) (not b!4581522) (not b!4581251) (not b!4581067) (not b_lambda!166167) (not d!1434364) (not bs!973964) (not bm!319809) (not b!4580930) (not b!4580634) (not b!4580784) (not b!4580600) (not bm!319723) (not b_lambda!166043) (not b_lambda!166245) (not b!4580451) (not b!4581613) (not b!4581019) (not bm!319839) (not d!1434348) (not b!4581326) (not b!4581044) (not b!4580949) (not d!1434634) (not b!4581604) (not b_lambda!166027) (not b!4580763) (not b_lambda!166243) (not b!4581036) (not d!1434704) (not b!4580918) (not b!4581126) (not b_lambda!166231))
(check-sat)
