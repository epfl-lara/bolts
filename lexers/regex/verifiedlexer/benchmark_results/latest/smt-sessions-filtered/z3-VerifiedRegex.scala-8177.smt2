; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!421640 () Bool)

(assert start!421640)

(declare-fun b!4356468 () Bool)

(declare-fun res!1790507 () Bool)

(declare-fun e!2711087 () Bool)

(assert (=> b!4356468 (=> res!1790507 e!2711087)))

(declare-datatypes ((K!10290 0))(
  ( (K!10291 (val!16503 Int)) )
))
(declare-datatypes ((V!10536 0))(
  ( (V!10537 (val!16504 Int)) )
))
(declare-datatypes ((tuple2!48326 0))(
  ( (tuple2!48327 (_1!27457 K!10290) (_2!27457 V!10536)) )
))
(declare-datatypes ((List!49055 0))(
  ( (Nil!48931) (Cons!48931 (h!54482 tuple2!48326) (t!355975 List!49055)) )
))
(declare-fun newBucket!200 () List!49055)

(declare-fun noDuplicateKeys!489 (List!49055) Bool)

(assert (=> b!4356468 (= res!1790507 (not (noDuplicateKeys!489 newBucket!200)))))

(declare-fun b!4356469 () Bool)

(declare-fun e!2711093 () Bool)

(declare-fun tp!1330131 () Bool)

(assert (=> b!4356469 (= e!2711093 tp!1330131)))

(declare-fun b!4356470 () Bool)

(declare-fun e!2711092 () Bool)

(declare-datatypes ((tuple2!48328 0))(
  ( (tuple2!48329 (_1!27458 (_ BitVec 64)) (_2!27458 List!49055)) )
))
(declare-datatypes ((List!49056 0))(
  ( (Nil!48932) (Cons!48932 (h!54483 tuple2!48328) (t!355976 List!49056)) )
))
(declare-datatypes ((ListLongMap!1611 0))(
  ( (ListLongMap!1612 (toList!2961 List!49056)) )
))
(declare-fun lm!1707 () ListLongMap!1611)

(declare-fun key!3918 () K!10290)

(declare-fun containsKey!690 (List!49055 K!10290) Bool)

(assert (=> b!4356470 (= e!2711092 (not (containsKey!690 (_2!27458 (h!54483 (toList!2961 lm!1707))) key!3918)))))

(declare-fun res!1790510 () Bool)

(declare-fun e!2711094 () Bool)

(assert (=> start!421640 (=> (not res!1790510) (not e!2711094))))

(declare-fun lambda!140457 () Int)

(declare-fun forall!9120 (List!49056 Int) Bool)

(assert (=> start!421640 (= res!1790510 (forall!9120 (toList!2961 lm!1707) lambda!140457))))

(assert (=> start!421640 e!2711094))

(declare-fun e!2711086 () Bool)

(assert (=> start!421640 e!2711086))

(assert (=> start!421640 true))

(declare-fun inv!64476 (ListLongMap!1611) Bool)

(assert (=> start!421640 (and (inv!64476 lm!1707) e!2711093)))

(declare-fun tp_is_empty!25193 () Bool)

(assert (=> start!421640 tp_is_empty!25193))

(declare-fun tp_is_empty!25195 () Bool)

(assert (=> start!421640 tp_is_empty!25195))

(declare-fun tp!1330132 () Bool)

(declare-fun b!4356471 () Bool)

(assert (=> b!4356471 (= e!2711086 (and tp_is_empty!25193 tp_is_empty!25195 tp!1330132))))

(declare-fun b!4356472 () Bool)

(declare-fun e!2711090 () Bool)

(assert (=> b!4356472 (= e!2711094 e!2711090)))

(declare-fun res!1790503 () Bool)

(assert (=> b!4356472 (=> (not res!1790503) (not e!2711090))))

(declare-datatypes ((ListMap!2205 0))(
  ( (ListMap!2206 (toList!2962 List!49055)) )
))
(declare-fun lt!1569000 () ListMap!2205)

(declare-fun contains!11135 (ListMap!2205 K!10290) Bool)

(assert (=> b!4356472 (= res!1790503 (contains!11135 lt!1569000 key!3918))))

(declare-fun extractMap!548 (List!49056) ListMap!2205)

(assert (=> b!4356472 (= lt!1569000 (extractMap!548 (toList!2961 lm!1707)))))

(declare-fun b!4356473 () Bool)

(assert (=> b!4356473 (= e!2711090 (not e!2711087))))

(declare-fun res!1790505 () Bool)

(assert (=> b!4356473 (=> res!1790505 e!2711087)))

(declare-fun lt!1568996 () tuple2!48326)

(declare-fun lt!1568993 () List!49055)

(declare-fun removePairForKey!459 (List!49055 K!10290) List!49055)

(assert (=> b!4356473 (= res!1790505 (not (= newBucket!200 (Cons!48931 lt!1568996 (removePairForKey!459 lt!1568993 key!3918)))))))

(declare-fun newValue!99 () V!10536)

(assert (=> b!4356473 (= lt!1568996 (tuple2!48327 key!3918 newValue!99))))

(declare-fun lt!1568985 () tuple2!48328)

(declare-datatypes ((Unit!71633 0))(
  ( (Unit!71634) )
))
(declare-fun lt!1568987 () Unit!71633)

(declare-fun forallContained!1761 (List!49056 Int tuple2!48328) Unit!71633)

(assert (=> b!4356473 (= lt!1568987 (forallContained!1761 (toList!2961 lm!1707) lambda!140457 lt!1568985))))

(declare-fun contains!11136 (List!49056 tuple2!48328) Bool)

(assert (=> b!4356473 (contains!11136 (toList!2961 lm!1707) lt!1568985)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4356473 (= lt!1568985 (tuple2!48329 hash!377 lt!1568993))))

(declare-fun lt!1568986 () Unit!71633)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!336 (List!49056 (_ BitVec 64) List!49055) Unit!71633)

(assert (=> b!4356473 (= lt!1568986 (lemmaGetValueByKeyImpliesContainsTuple!336 (toList!2961 lm!1707) hash!377 lt!1568993))))

(declare-fun apply!11341 (ListLongMap!1611 (_ BitVec 64)) List!49055)

(assert (=> b!4356473 (= lt!1568993 (apply!11341 lm!1707 hash!377))))

(declare-fun b!4356474 () Bool)

(declare-fun res!1790501 () Bool)

(assert (=> b!4356474 (=> (not res!1790501) (not e!2711094))))

(declare-datatypes ((Hashable!4881 0))(
  ( (HashableExt!4880 (__x!30584 Int)) )
))
(declare-fun hashF!1247 () Hashable!4881)

(declare-fun hash!1557 (Hashable!4881 K!10290) (_ BitVec 64))

(assert (=> b!4356474 (= res!1790501 (= (hash!1557 hashF!1247 key!3918) hash!377))))

(declare-fun b!4356475 () Bool)

(declare-fun res!1790511 () Bool)

(assert (=> b!4356475 (=> (not res!1790511) (not e!2711094))))

(declare-fun allKeysSameHashInMap!593 (ListLongMap!1611 Hashable!4881) Bool)

(assert (=> b!4356475 (= res!1790511 (allKeysSameHashInMap!593 lm!1707 hashF!1247))))

(declare-fun b!4356476 () Bool)

(declare-fun res!1790502 () Bool)

(assert (=> b!4356476 (=> (not res!1790502) (not e!2711090))))

(declare-fun contains!11137 (ListLongMap!1611 (_ BitVec 64)) Bool)

(assert (=> b!4356476 (= res!1790502 (contains!11137 lm!1707 hash!377))))

(declare-fun b!4356477 () Bool)

(declare-fun res!1790500 () Bool)

(assert (=> b!4356477 (=> (not res!1790500) (not e!2711094))))

(declare-fun allKeysSameHash!447 (List!49055 (_ BitVec 64) Hashable!4881) Bool)

(assert (=> b!4356477 (= res!1790500 (allKeysSameHash!447 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4356478 () Bool)

(declare-fun e!2711091 () Bool)

(assert (=> b!4356478 (= e!2711091 true)))

(declare-fun lt!1568994 () Bool)

(assert (=> b!4356478 (= lt!1568994 (noDuplicateKeys!489 (_2!27458 (h!54483 (toList!2961 lm!1707)))))))

(declare-fun e!2711089 () Bool)

(assert (=> b!4356478 e!2711089))

(declare-fun res!1790506 () Bool)

(assert (=> b!4356478 (=> (not res!1790506) (not e!2711089))))

(declare-fun lt!1568989 () tuple2!48328)

(declare-fun lt!1568991 () ListMap!2205)

(declare-fun lt!1568990 () ListLongMap!1611)

(declare-fun eq!259 (ListMap!2205 ListMap!2205) Bool)

(declare-fun +!635 (ListLongMap!1611 tuple2!48328) ListLongMap!1611)

(declare-fun +!636 (ListMap!2205 tuple2!48326) ListMap!2205)

(assert (=> b!4356478 (= res!1790506 (eq!259 (extractMap!548 (toList!2961 (+!635 lt!1568990 lt!1568989))) (+!636 lt!1568991 lt!1568996)))))

(declare-fun lt!1568992 () Unit!71633)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!93 (ListLongMap!1611 (_ BitVec 64) List!49055 K!10290 V!10536 Hashable!4881) Unit!71633)

(assert (=> b!4356478 (= lt!1568992 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!93 lt!1568990 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4356478 (contains!11135 lt!1568991 key!3918)))

(assert (=> b!4356478 (= lt!1568991 (extractMap!548 (toList!2961 lt!1568990)))))

(declare-fun tail!6996 (ListLongMap!1611) ListLongMap!1611)

(assert (=> b!4356478 (= lt!1568990 (tail!6996 lm!1707))))

(declare-fun lt!1568988 () ListMap!2205)

(assert (=> b!4356478 (contains!11135 lt!1568988 key!3918)))

(declare-fun lt!1568998 () Unit!71633)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!32 (List!49055 K!10290 V!10536 ListMap!2205) Unit!71633)

(assert (=> b!4356478 (= lt!1568998 (lemmaAddToMapContainsAndNotInListThenInAcc!32 (_2!27458 (h!54483 (toList!2961 lm!1707))) key!3918 newValue!99 lt!1568988))))

(assert (=> b!4356478 (= lt!1568988 (extractMap!548 (t!355976 (toList!2961 lm!1707))))))

(assert (=> b!4356478 e!2711092))

(declare-fun res!1790509 () Bool)

(assert (=> b!4356478 (=> (not res!1790509) (not e!2711092))))

(assert (=> b!4356478 (= res!1790509 (not (containsKey!690 (apply!11341 lm!1707 (_1!27458 (h!54483 (toList!2961 lm!1707)))) key!3918)))))

(declare-fun lt!1568995 () Unit!71633)

(declare-fun lemmaNotSameHashThenCannotContainKey!36 (ListLongMap!1611 K!10290 (_ BitVec 64) Hashable!4881) Unit!71633)

(assert (=> b!4356478 (= lt!1568995 (lemmaNotSameHashThenCannotContainKey!36 lm!1707 key!3918 (_1!27458 (h!54483 (toList!2961 lm!1707))) hashF!1247))))

(declare-fun b!4356479 () Bool)

(declare-fun e!2711088 () Bool)

(declare-fun lt!1568999 () ListLongMap!1611)

(assert (=> b!4356479 (= e!2711088 (forall!9120 (toList!2961 lt!1568999) lambda!140457))))

(declare-fun b!4356480 () Bool)

(assert (=> b!4356480 (= e!2711087 e!2711091)))

(declare-fun res!1790504 () Bool)

(assert (=> b!4356480 (=> res!1790504 e!2711091)))

(get-info :version)

(assert (=> b!4356480 (= res!1790504 (or (and ((_ is Cons!48932) (toList!2961 lm!1707)) (= (_1!27458 (h!54483 (toList!2961 lm!1707))) hash!377)) (not ((_ is Cons!48932) (toList!2961 lm!1707))) (= (_1!27458 (h!54483 (toList!2961 lm!1707))) hash!377)))))

(assert (=> b!4356480 e!2711088))

(declare-fun res!1790508 () Bool)

(assert (=> b!4356480 (=> (not res!1790508) (not e!2711088))))

(assert (=> b!4356480 (= res!1790508 (forall!9120 (toList!2961 lt!1568999) lambda!140457))))

(assert (=> b!4356480 (= lt!1568999 (+!635 lm!1707 lt!1568989))))

(assert (=> b!4356480 (= lt!1568989 (tuple2!48329 hash!377 newBucket!200))))

(declare-fun lt!1568997 () Unit!71633)

(declare-fun addValidProp!143 (ListLongMap!1611 Int (_ BitVec 64) List!49055) Unit!71633)

(assert (=> b!4356480 (= lt!1568997 (addValidProp!143 lm!1707 lambda!140457 hash!377 newBucket!200))))

(assert (=> b!4356480 (forall!9120 (toList!2961 lm!1707) lambda!140457)))

(declare-fun b!4356481 () Bool)

(declare-fun res!1790499 () Bool)

(assert (=> b!4356481 (=> (not res!1790499) (not e!2711089))))

(declare-fun head!9048 (ListLongMap!1611) tuple2!48328)

(assert (=> b!4356481 (= res!1790499 (not (= (head!9048 lm!1707) lt!1568989)))))

(declare-fun b!4356482 () Bool)

(declare-fun addToMapMapFromBucket!185 (List!49055 ListMap!2205) ListMap!2205)

(assert (=> b!4356482 (= e!2711089 (= lt!1569000 (addToMapMapFromBucket!185 (_2!27458 (h!54483 (toList!2961 lm!1707))) lt!1568991)))))

(assert (= (and start!421640 res!1790510) b!4356475))

(assert (= (and b!4356475 res!1790511) b!4356474))

(assert (= (and b!4356474 res!1790501) b!4356477))

(assert (= (and b!4356477 res!1790500) b!4356472))

(assert (= (and b!4356472 res!1790503) b!4356476))

(assert (= (and b!4356476 res!1790502) b!4356473))

(assert (= (and b!4356473 (not res!1790505)) b!4356468))

(assert (= (and b!4356468 (not res!1790507)) b!4356480))

(assert (= (and b!4356480 res!1790508) b!4356479))

(assert (= (and b!4356480 (not res!1790504)) b!4356478))

(assert (= (and b!4356478 res!1790509) b!4356470))

(assert (= (and b!4356478 res!1790506) b!4356481))

(assert (= (and b!4356481 res!1790499) b!4356482))

(assert (= (and start!421640 ((_ is Cons!48931) newBucket!200)) b!4356471))

(assert (= start!421640 b!4356469))

(declare-fun m!4970383 () Bool)

(assert (=> b!4356481 m!4970383))

(declare-fun m!4970385 () Bool)

(assert (=> b!4356470 m!4970385))

(declare-fun m!4970387 () Bool)

(assert (=> b!4356479 m!4970387))

(declare-fun m!4970389 () Bool)

(assert (=> b!4356478 m!4970389))

(declare-fun m!4970391 () Bool)

(assert (=> b!4356478 m!4970391))

(declare-fun m!4970393 () Bool)

(assert (=> b!4356478 m!4970393))

(declare-fun m!4970395 () Bool)

(assert (=> b!4356478 m!4970395))

(declare-fun m!4970397 () Bool)

(assert (=> b!4356478 m!4970397))

(declare-fun m!4970399 () Bool)

(assert (=> b!4356478 m!4970399))

(declare-fun m!4970401 () Bool)

(assert (=> b!4356478 m!4970401))

(declare-fun m!4970403 () Bool)

(assert (=> b!4356478 m!4970403))

(declare-fun m!4970405 () Bool)

(assert (=> b!4356478 m!4970405))

(declare-fun m!4970407 () Bool)

(assert (=> b!4356478 m!4970407))

(declare-fun m!4970409 () Bool)

(assert (=> b!4356478 m!4970409))

(assert (=> b!4356478 m!4970389))

(declare-fun m!4970411 () Bool)

(assert (=> b!4356478 m!4970411))

(declare-fun m!4970413 () Bool)

(assert (=> b!4356478 m!4970413))

(assert (=> b!4356478 m!4970413))

(declare-fun m!4970415 () Bool)

(assert (=> b!4356478 m!4970415))

(assert (=> b!4356478 m!4970409))

(declare-fun m!4970417 () Bool)

(assert (=> b!4356478 m!4970417))

(declare-fun m!4970419 () Bool)

(assert (=> b!4356473 m!4970419))

(declare-fun m!4970421 () Bool)

(assert (=> b!4356473 m!4970421))

(declare-fun m!4970423 () Bool)

(assert (=> b!4356473 m!4970423))

(declare-fun m!4970425 () Bool)

(assert (=> b!4356473 m!4970425))

(declare-fun m!4970427 () Bool)

(assert (=> b!4356473 m!4970427))

(declare-fun m!4970429 () Bool)

(assert (=> b!4356476 m!4970429))

(declare-fun m!4970431 () Bool)

(assert (=> b!4356472 m!4970431))

(declare-fun m!4970433 () Bool)

(assert (=> b!4356472 m!4970433))

(assert (=> b!4356480 m!4970387))

(declare-fun m!4970435 () Bool)

(assert (=> b!4356480 m!4970435))

(declare-fun m!4970437 () Bool)

(assert (=> b!4356480 m!4970437))

(declare-fun m!4970439 () Bool)

(assert (=> b!4356480 m!4970439))

(declare-fun m!4970441 () Bool)

(assert (=> b!4356482 m!4970441))

(declare-fun m!4970443 () Bool)

(assert (=> b!4356477 m!4970443))

(declare-fun m!4970445 () Bool)

(assert (=> b!4356474 m!4970445))

(assert (=> start!421640 m!4970439))

(declare-fun m!4970447 () Bool)

(assert (=> start!421640 m!4970447))

(declare-fun m!4970449 () Bool)

(assert (=> b!4356468 m!4970449))

(declare-fun m!4970451 () Bool)

(assert (=> b!4356475 m!4970451))

(check-sat (not b!4356479) (not b!4356470) (not start!421640) (not b!4356480) (not b!4356481) (not b!4356472) (not b!4356477) (not b!4356471) (not b!4356468) (not b!4356478) (not b!4356475) (not b!4356476) (not b!4356482) (not b!4356474) tp_is_empty!25195 tp_is_empty!25193 (not b!4356469) (not b!4356473))
(check-sat)
