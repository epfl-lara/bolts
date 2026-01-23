; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423000 () Bool)

(assert start!423000)

(declare-fun b!4363544 () Bool)

(declare-fun e!2715692 () Bool)

(declare-fun e!2715695 () Bool)

(assert (=> b!4363544 (= e!2715692 e!2715695)))

(declare-fun res!1794395 () Bool)

(assert (=> b!4363544 (=> (not res!1794395) (not e!2715695))))

(declare-datatypes ((K!10350 0))(
  ( (K!10351 (val!16551 Int)) )
))
(declare-datatypes ((V!10596 0))(
  ( (V!10597 (val!16552 Int)) )
))
(declare-datatypes ((tuple2!48422 0))(
  ( (tuple2!48423 (_1!27505 K!10350) (_2!27505 V!10596)) )
))
(declare-datatypes ((List!49119 0))(
  ( (Nil!48995) (Cons!48995 (h!54562 tuple2!48422) (t!356039 List!49119)) )
))
(declare-datatypes ((ListMap!2253 0))(
  ( (ListMap!2254 (toList!3009 List!49119)) )
))
(declare-fun lt!1575998 () ListMap!2253)

(declare-fun key!3918 () K!10350)

(declare-fun contains!11239 (ListMap!2253 K!10350) Bool)

(assert (=> b!4363544 (= res!1794395 (contains!11239 lt!1575998 key!3918))))

(declare-datatypes ((tuple2!48424 0))(
  ( (tuple2!48425 (_1!27506 (_ BitVec 64)) (_2!27506 List!49119)) )
))
(declare-datatypes ((List!49120 0))(
  ( (Nil!48996) (Cons!48996 (h!54563 tuple2!48424) (t!356040 List!49120)) )
))
(declare-datatypes ((ListLongMap!1659 0))(
  ( (ListLongMap!1660 (toList!3010 List!49120)) )
))
(declare-fun lm!1707 () ListLongMap!1659)

(declare-fun extractMap!572 (List!49120) ListMap!2253)

(assert (=> b!4363544 (= lt!1575998 (extractMap!572 (toList!3010 lm!1707)))))

(declare-fun tp!1330443 () Bool)

(declare-fun tp_is_empty!25289 () Bool)

(declare-fun b!4363545 () Bool)

(declare-fun tp_is_empty!25291 () Bool)

(declare-fun e!2715689 () Bool)

(assert (=> b!4363545 (= e!2715689 (and tp_is_empty!25289 tp_is_empty!25291 tp!1330443))))

(declare-fun res!1794402 () Bool)

(assert (=> start!423000 (=> (not res!1794402) (not e!2715692))))

(declare-fun lambda!142041 () Int)

(declare-fun forall!9166 (List!49120 Int) Bool)

(assert (=> start!423000 (= res!1794402 (forall!9166 (toList!3010 lm!1707) lambda!142041))))

(assert (=> start!423000 e!2715692))

(assert (=> start!423000 e!2715689))

(assert (=> start!423000 true))

(declare-fun e!2715693 () Bool)

(declare-fun inv!64536 (ListLongMap!1659) Bool)

(assert (=> start!423000 (and (inv!64536 lm!1707) e!2715693)))

(assert (=> start!423000 tp_is_empty!25289))

(assert (=> start!423000 tp_is_empty!25291))

(declare-fun b!4363546 () Bool)

(declare-fun e!2715690 () Bool)

(declare-fun e!2715694 () Bool)

(assert (=> b!4363546 (= e!2715690 e!2715694)))

(declare-fun res!1794405 () Bool)

(assert (=> b!4363546 (=> res!1794405 e!2715694)))

(declare-fun lt!1575983 () ListMap!2253)

(declare-fun eq!283 (ListMap!2253 ListMap!2253) Bool)

(assert (=> b!4363546 (= res!1794405 (not (eq!283 lt!1575983 lt!1575998)))))

(declare-fun lt!1575984 () ListMap!2253)

(declare-fun lt!1575990 () ListMap!2253)

(assert (=> b!4363546 (eq!283 lt!1575984 lt!1575990)))

(declare-fun lt!1576001 () tuple2!48422)

(declare-fun +!683 (ListMap!2253 tuple2!48422) ListMap!2253)

(assert (=> b!4363546 (= lt!1575990 (+!683 lt!1575983 lt!1576001))))

(declare-fun lt!1576003 () ListMap!2253)

(declare-fun addToMapMapFromBucket!209 (List!49119 ListMap!2253) ListMap!2253)

(assert (=> b!4363546 (= lt!1575984 (addToMapMapFromBucket!209 (_2!27506 (h!54563 (toList!3010 lm!1707))) lt!1576003))))

(declare-fun newValue!99 () V!10596)

(declare-datatypes ((Unit!72795 0))(
  ( (Unit!72796) )
))
(declare-fun lt!1575993 () Unit!72795)

(declare-fun lt!1575987 () ListMap!2253)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!92 (ListMap!2253 K!10350 V!10596 List!49119) Unit!72795)

(assert (=> b!4363546 (= lt!1575993 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!92 lt!1575987 key!3918 newValue!99 (_2!27506 (h!54563 (toList!3010 lm!1707)))))))

(assert (=> b!4363546 (= lt!1575998 lt!1575983)))

(assert (=> b!4363546 (= lt!1575983 (addToMapMapFromBucket!209 (_2!27506 (h!54563 (toList!3010 lm!1707))) lt!1575987))))

(declare-fun e!2715691 () Bool)

(assert (=> b!4363546 e!2715691))

(declare-fun res!1794394 () Bool)

(assert (=> b!4363546 (=> (not res!1794394) (not e!2715691))))

(declare-fun lt!1575985 () ListMap!2253)

(assert (=> b!4363546 (= res!1794394 (eq!283 lt!1575985 lt!1576003))))

(assert (=> b!4363546 (= lt!1576003 (+!683 lt!1575987 lt!1576001))))

(declare-fun lt!1576002 () ListLongMap!1659)

(assert (=> b!4363546 (= lt!1575985 (extractMap!572 (toList!3010 lt!1576002)))))

(declare-fun lt!1575986 () ListLongMap!1659)

(declare-fun lt!1575992 () tuple2!48424)

(declare-fun +!684 (ListLongMap!1659 tuple2!48424) ListLongMap!1659)

(assert (=> b!4363546 (= lt!1576002 (+!684 lt!1575986 lt!1575992))))

(declare-fun newBucket!200 () List!49119)

(declare-datatypes ((Hashable!4905 0))(
  ( (HashableExt!4904 (__x!30608 Int)) )
))
(declare-fun hashF!1247 () Hashable!4905)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lt!1575988 () Unit!72795)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!117 (ListLongMap!1659 (_ BitVec 64) List!49119 K!10350 V!10596 Hashable!4905) Unit!72795)

(assert (=> b!4363546 (= lt!1575988 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!117 lt!1575986 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4363546 (contains!11239 lt!1575987 key!3918)))

(assert (=> b!4363546 (= lt!1575987 (extractMap!572 (toList!3010 lt!1575986)))))

(declare-fun tail!7036 (ListLongMap!1659) ListLongMap!1659)

(assert (=> b!4363546 (= lt!1575986 (tail!7036 lm!1707))))

(declare-fun lt!1576000 () ListMap!2253)

(assert (=> b!4363546 (contains!11239 lt!1576000 key!3918)))

(declare-fun lt!1575982 () Unit!72795)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!56 (List!49119 K!10350 V!10596 ListMap!2253) Unit!72795)

(assert (=> b!4363546 (= lt!1575982 (lemmaAddToMapContainsAndNotInListThenInAcc!56 (_2!27506 (h!54563 (toList!3010 lm!1707))) key!3918 newValue!99 lt!1576000))))

(assert (=> b!4363546 (= lt!1576000 (extractMap!572 (t!356040 (toList!3010 lm!1707))))))

(declare-fun e!2715688 () Bool)

(assert (=> b!4363546 e!2715688))

(declare-fun res!1794399 () Bool)

(assert (=> b!4363546 (=> (not res!1794399) (not e!2715688))))

(declare-fun containsKey!746 (List!49119 K!10350) Bool)

(declare-fun apply!11365 (ListLongMap!1659 (_ BitVec 64)) List!49119)

(assert (=> b!4363546 (= res!1794399 (not (containsKey!746 (apply!11365 lm!1707 (_1!27506 (h!54563 (toList!3010 lm!1707)))) key!3918)))))

(declare-fun lt!1575994 () Unit!72795)

(declare-fun lemmaNotSameHashThenCannotContainKey!60 (ListLongMap!1659 K!10350 (_ BitVec 64) Hashable!4905) Unit!72795)

(assert (=> b!4363546 (= lt!1575994 (lemmaNotSameHashThenCannotContainKey!60 lm!1707 key!3918 (_1!27506 (h!54563 (toList!3010 lm!1707))) hashF!1247))))

(declare-fun b!4363547 () Bool)

(declare-fun res!1794400 () Bool)

(assert (=> b!4363547 (=> (not res!1794400) (not e!2715692))))

(declare-fun allKeysSameHashInMap!617 (ListLongMap!1659 Hashable!4905) Bool)

(assert (=> b!4363547 (= res!1794400 (allKeysSameHashInMap!617 lm!1707 hashF!1247))))

(declare-fun b!4363548 () Bool)

(declare-fun res!1794398 () Bool)

(assert (=> b!4363548 (=> (not res!1794398) (not e!2715692))))

(declare-fun allKeysSameHash!471 (List!49119 (_ BitVec 64) Hashable!4905) Bool)

(assert (=> b!4363548 (= res!1794398 (allKeysSameHash!471 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4363549 () Bool)

(declare-fun e!2715687 () Bool)

(assert (=> b!4363549 (= e!2715687 e!2715690)))

(declare-fun res!1794397 () Bool)

(assert (=> b!4363549 (=> res!1794397 e!2715690)))

(get-info :version)

(assert (=> b!4363549 (= res!1794397 (or (and ((_ is Cons!48996) (toList!3010 lm!1707)) (= (_1!27506 (h!54563 (toList!3010 lm!1707))) hash!377)) (not ((_ is Cons!48996) (toList!3010 lm!1707))) (= (_1!27506 (h!54563 (toList!3010 lm!1707))) hash!377)))))

(declare-fun e!2715696 () Bool)

(assert (=> b!4363549 e!2715696))

(declare-fun res!1794401 () Bool)

(assert (=> b!4363549 (=> (not res!1794401) (not e!2715696))))

(declare-fun lt!1575996 () ListLongMap!1659)

(assert (=> b!4363549 (= res!1794401 (forall!9166 (toList!3010 lt!1575996) lambda!142041))))

(assert (=> b!4363549 (= lt!1575996 (+!684 lm!1707 lt!1575992))))

(assert (=> b!4363549 (= lt!1575992 (tuple2!48425 hash!377 newBucket!200))))

(declare-fun lt!1575991 () Unit!72795)

(declare-fun addValidProp!167 (ListLongMap!1659 Int (_ BitVec 64) List!49119) Unit!72795)

(assert (=> b!4363549 (= lt!1575991 (addValidProp!167 lm!1707 lambda!142041 hash!377 newBucket!200))))

(assert (=> b!4363549 (forall!9166 (toList!3010 lm!1707) lambda!142041)))

(declare-fun b!4363550 () Bool)

(assert (=> b!4363550 (= e!2715688 (not (containsKey!746 (_2!27506 (h!54563 (toList!3010 lm!1707))) key!3918)))))

(declare-fun b!4363551 () Bool)

(declare-fun res!1794396 () Bool)

(assert (=> b!4363551 (=> (not res!1794396) (not e!2715695))))

(declare-fun contains!11240 (ListLongMap!1659 (_ BitVec 64)) Bool)

(assert (=> b!4363551 (= res!1794396 (contains!11240 lm!1707 hash!377))))

(declare-fun b!4363552 () Bool)

(declare-fun res!1794403 () Bool)

(assert (=> b!4363552 (=> res!1794403 e!2715687)))

(declare-fun noDuplicateKeys!513 (List!49119) Bool)

(assert (=> b!4363552 (= res!1794403 (not (noDuplicateKeys!513 newBucket!200)))))

(declare-fun b!4363553 () Bool)

(assert (=> b!4363553 (= e!2715696 (forall!9166 (toList!3010 lt!1575996) lambda!142041))))

(declare-fun b!4363554 () Bool)

(declare-fun res!1794404 () Bool)

(assert (=> b!4363554 (=> (not res!1794404) (not e!2715692))))

(declare-fun hash!1641 (Hashable!4905 K!10350) (_ BitVec 64))

(assert (=> b!4363554 (= res!1794404 (= (hash!1641 hashF!1247 key!3918) hash!377))))

(declare-fun b!4363555 () Bool)

(declare-fun head!9088 (ListLongMap!1659) tuple2!48424)

(assert (=> b!4363555 (= e!2715691 (not (= (head!9088 lm!1707) lt!1575992)))))

(declare-fun b!4363556 () Bool)

(assert (=> b!4363556 (= e!2715694 (forall!9166 (toList!3010 lt!1576002) lambda!142041))))

(assert (=> b!4363556 (eq!283 (+!683 lt!1575998 lt!1576001) lt!1575990)))

(declare-fun lt!1575999 () Unit!72795)

(declare-fun lemmaAddToEqMapsPreservesEq!6 (ListMap!2253 ListMap!2253 K!10350 V!10596) Unit!72795)

(assert (=> b!4363556 (= lt!1575999 (lemmaAddToEqMapsPreservesEq!6 lt!1575998 lt!1575983 key!3918 newValue!99))))

(declare-fun b!4363557 () Bool)

(declare-fun tp!1330444 () Bool)

(assert (=> b!4363557 (= e!2715693 tp!1330444)))

(declare-fun b!4363558 () Bool)

(assert (=> b!4363558 (= e!2715695 (not e!2715687))))

(declare-fun res!1794393 () Bool)

(assert (=> b!4363558 (=> res!1794393 e!2715687)))

(declare-fun lt!1575995 () List!49119)

(declare-fun removePairForKey!483 (List!49119 K!10350) List!49119)

(assert (=> b!4363558 (= res!1794393 (not (= newBucket!200 (Cons!48995 lt!1576001 (removePairForKey!483 lt!1575995 key!3918)))))))

(assert (=> b!4363558 (= lt!1576001 (tuple2!48423 key!3918 newValue!99))))

(declare-fun lt!1575989 () Unit!72795)

(declare-fun lt!1576004 () tuple2!48424)

(declare-fun forallContained!1807 (List!49120 Int tuple2!48424) Unit!72795)

(assert (=> b!4363558 (= lt!1575989 (forallContained!1807 (toList!3010 lm!1707) lambda!142041 lt!1576004))))

(declare-fun contains!11241 (List!49120 tuple2!48424) Bool)

(assert (=> b!4363558 (contains!11241 (toList!3010 lm!1707) lt!1576004)))

(assert (=> b!4363558 (= lt!1576004 (tuple2!48425 hash!377 lt!1575995))))

(declare-fun lt!1575997 () Unit!72795)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!360 (List!49120 (_ BitVec 64) List!49119) Unit!72795)

(assert (=> b!4363558 (= lt!1575997 (lemmaGetValueByKeyImpliesContainsTuple!360 (toList!3010 lm!1707) hash!377 lt!1575995))))

(assert (=> b!4363558 (= lt!1575995 (apply!11365 lm!1707 hash!377))))

(assert (= (and start!423000 res!1794402) b!4363547))

(assert (= (and b!4363547 res!1794400) b!4363554))

(assert (= (and b!4363554 res!1794404) b!4363548))

(assert (= (and b!4363548 res!1794398) b!4363544))

(assert (= (and b!4363544 res!1794395) b!4363551))

(assert (= (and b!4363551 res!1794396) b!4363558))

(assert (= (and b!4363558 (not res!1794393)) b!4363552))

(assert (= (and b!4363552 (not res!1794403)) b!4363549))

(assert (= (and b!4363549 res!1794401) b!4363553))

(assert (= (and b!4363549 (not res!1794397)) b!4363546))

(assert (= (and b!4363546 res!1794399) b!4363550))

(assert (= (and b!4363546 res!1794394) b!4363555))

(assert (= (and b!4363546 (not res!1794405)) b!4363556))

(assert (= (and start!423000 ((_ is Cons!48995) newBucket!200)) b!4363545))

(assert (= start!423000 b!4363557))

(declare-fun m!4984489 () Bool)

(assert (=> b!4363550 m!4984489))

(declare-fun m!4984491 () Bool)

(assert (=> b!4363553 m!4984491))

(declare-fun m!4984493 () Bool)

(assert (=> start!423000 m!4984493))

(declare-fun m!4984495 () Bool)

(assert (=> start!423000 m!4984495))

(declare-fun m!4984497 () Bool)

(assert (=> b!4363556 m!4984497))

(declare-fun m!4984499 () Bool)

(assert (=> b!4363556 m!4984499))

(assert (=> b!4363556 m!4984499))

(declare-fun m!4984501 () Bool)

(assert (=> b!4363556 m!4984501))

(declare-fun m!4984503 () Bool)

(assert (=> b!4363556 m!4984503))

(declare-fun m!4984505 () Bool)

(assert (=> b!4363547 m!4984505))

(declare-fun m!4984507 () Bool)

(assert (=> b!4363551 m!4984507))

(declare-fun m!4984509 () Bool)

(assert (=> b!4363546 m!4984509))

(declare-fun m!4984511 () Bool)

(assert (=> b!4363546 m!4984511))

(declare-fun m!4984513 () Bool)

(assert (=> b!4363546 m!4984513))

(declare-fun m!4984515 () Bool)

(assert (=> b!4363546 m!4984515))

(declare-fun m!4984517 () Bool)

(assert (=> b!4363546 m!4984517))

(declare-fun m!4984519 () Bool)

(assert (=> b!4363546 m!4984519))

(declare-fun m!4984521 () Bool)

(assert (=> b!4363546 m!4984521))

(declare-fun m!4984523 () Bool)

(assert (=> b!4363546 m!4984523))

(declare-fun m!4984525 () Bool)

(assert (=> b!4363546 m!4984525))

(declare-fun m!4984527 () Bool)

(assert (=> b!4363546 m!4984527))

(declare-fun m!4984529 () Bool)

(assert (=> b!4363546 m!4984529))

(declare-fun m!4984531 () Bool)

(assert (=> b!4363546 m!4984531))

(declare-fun m!4984533 () Bool)

(assert (=> b!4363546 m!4984533))

(declare-fun m!4984535 () Bool)

(assert (=> b!4363546 m!4984535))

(declare-fun m!4984537 () Bool)

(assert (=> b!4363546 m!4984537))

(declare-fun m!4984539 () Bool)

(assert (=> b!4363546 m!4984539))

(declare-fun m!4984541 () Bool)

(assert (=> b!4363546 m!4984541))

(assert (=> b!4363546 m!4984541))

(declare-fun m!4984543 () Bool)

(assert (=> b!4363546 m!4984543))

(declare-fun m!4984545 () Bool)

(assert (=> b!4363546 m!4984545))

(declare-fun m!4984547 () Bool)

(assert (=> b!4363546 m!4984547))

(declare-fun m!4984549 () Bool)

(assert (=> b!4363555 m!4984549))

(declare-fun m!4984551 () Bool)

(assert (=> b!4363544 m!4984551))

(declare-fun m!4984553 () Bool)

(assert (=> b!4363544 m!4984553))

(declare-fun m!4984555 () Bool)

(assert (=> b!4363558 m!4984555))

(declare-fun m!4984557 () Bool)

(assert (=> b!4363558 m!4984557))

(declare-fun m!4984559 () Bool)

(assert (=> b!4363558 m!4984559))

(declare-fun m!4984561 () Bool)

(assert (=> b!4363558 m!4984561))

(declare-fun m!4984563 () Bool)

(assert (=> b!4363558 m!4984563))

(declare-fun m!4984565 () Bool)

(assert (=> b!4363548 m!4984565))

(assert (=> b!4363549 m!4984491))

(declare-fun m!4984567 () Bool)

(assert (=> b!4363549 m!4984567))

(declare-fun m!4984569 () Bool)

(assert (=> b!4363549 m!4984569))

(assert (=> b!4363549 m!4984493))

(declare-fun m!4984571 () Bool)

(assert (=> b!4363552 m!4984571))

(declare-fun m!4984573 () Bool)

(assert (=> b!4363554 m!4984573))

(check-sat (not b!4363553) (not b!4363558) (not start!423000) (not b!4363545) (not b!4363549) (not b!4363557) (not b!4363555) (not b!4363556) (not b!4363547) tp_is_empty!25291 (not b!4363551) (not b!4363552) (not b!4363544) (not b!4363546) (not b!4363548) (not b!4363554) tp_is_empty!25289 (not b!4363550))
(check-sat)
(get-model)

(declare-fun d!1291490 () Bool)

(declare-fun res!1794410 () Bool)

(declare-fun e!2715701 () Bool)

(assert (=> d!1291490 (=> res!1794410 e!2715701)))

(assert (=> d!1291490 (= res!1794410 (not ((_ is Cons!48995) newBucket!200)))))

(assert (=> d!1291490 (= (noDuplicateKeys!513 newBucket!200) e!2715701)))

(declare-fun b!4363565 () Bool)

(declare-fun e!2715702 () Bool)

(assert (=> b!4363565 (= e!2715701 e!2715702)))

(declare-fun res!1794411 () Bool)

(assert (=> b!4363565 (=> (not res!1794411) (not e!2715702))))

(assert (=> b!4363565 (= res!1794411 (not (containsKey!746 (t!356039 newBucket!200) (_1!27505 (h!54562 newBucket!200)))))))

(declare-fun b!4363566 () Bool)

(assert (=> b!4363566 (= e!2715702 (noDuplicateKeys!513 (t!356039 newBucket!200)))))

(assert (= (and d!1291490 (not res!1794410)) b!4363565))

(assert (= (and b!4363565 res!1794411) b!4363566))

(declare-fun m!4984577 () Bool)

(assert (=> b!4363565 m!4984577))

(declare-fun m!4984579 () Bool)

(assert (=> b!4363566 m!4984579))

(assert (=> b!4363552 d!1291490))

(declare-fun d!1291492 () Bool)

(declare-fun e!2715725 () Bool)

(assert (=> d!1291492 e!2715725))

(declare-fun res!1794423 () Bool)

(assert (=> d!1291492 (=> res!1794423 e!2715725)))

(declare-fun lt!1576039 () Bool)

(assert (=> d!1291492 (= res!1794423 (not lt!1576039))))

(declare-fun lt!1576037 () Bool)

(assert (=> d!1291492 (= lt!1576039 lt!1576037)))

(declare-fun lt!1576038 () Unit!72795)

(declare-fun e!2715726 () Unit!72795)

(assert (=> d!1291492 (= lt!1576038 e!2715726)))

(declare-fun c!742034 () Bool)

(assert (=> d!1291492 (= c!742034 lt!1576037)))

(declare-fun containsKey!749 (List!49120 (_ BitVec 64)) Bool)

(assert (=> d!1291492 (= lt!1576037 (containsKey!749 (toList!3010 lm!1707) hash!377))))

(assert (=> d!1291492 (= (contains!11240 lm!1707 hash!377) lt!1576039)))

(declare-fun b!4363600 () Bool)

(declare-fun lt!1576040 () Unit!72795)

(assert (=> b!4363600 (= e!2715726 lt!1576040)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!397 (List!49120 (_ BitVec 64)) Unit!72795)

(assert (=> b!4363600 (= lt!1576040 (lemmaContainsKeyImpliesGetValueByKeyDefined!397 (toList!3010 lm!1707) hash!377))))

(declare-datatypes ((Option!10500 0))(
  ( (None!10499) (Some!10499 (v!43425 List!49119)) )
))
(declare-fun isDefined!7794 (Option!10500) Bool)

(declare-fun getValueByKey!486 (List!49120 (_ BitVec 64)) Option!10500)

(assert (=> b!4363600 (isDefined!7794 (getValueByKey!486 (toList!3010 lm!1707) hash!377))))

(declare-fun b!4363601 () Bool)

(declare-fun Unit!72803 () Unit!72795)

(assert (=> b!4363601 (= e!2715726 Unit!72803)))

(declare-fun b!4363602 () Bool)

(assert (=> b!4363602 (= e!2715725 (isDefined!7794 (getValueByKey!486 (toList!3010 lm!1707) hash!377)))))

(assert (= (and d!1291492 c!742034) b!4363600))

(assert (= (and d!1291492 (not c!742034)) b!4363601))

(assert (= (and d!1291492 (not res!1794423)) b!4363602))

(declare-fun m!4984601 () Bool)

(assert (=> d!1291492 m!4984601))

(declare-fun m!4984603 () Bool)

(assert (=> b!4363600 m!4984603))

(declare-fun m!4984605 () Bool)

(assert (=> b!4363600 m!4984605))

(assert (=> b!4363600 m!4984605))

(declare-fun m!4984607 () Bool)

(assert (=> b!4363600 m!4984607))

(assert (=> b!4363602 m!4984605))

(assert (=> b!4363602 m!4984605))

(assert (=> b!4363602 m!4984607))

(assert (=> b!4363551 d!1291492))

(declare-fun b!4363677 () Bool)

(declare-datatypes ((List!49122 0))(
  ( (Nil!48998) (Cons!48998 (h!54567 K!10350) (t!356042 List!49122)) )
))
(declare-fun e!2715781 () List!49122)

(declare-fun getKeysList!142 (List!49119) List!49122)

(assert (=> b!4363677 (= e!2715781 (getKeysList!142 (toList!3009 lt!1575998)))))

(declare-fun d!1291496 () Bool)

(declare-fun e!2715778 () Bool)

(assert (=> d!1291496 e!2715778))

(declare-fun res!1794460 () Bool)

(assert (=> d!1291496 (=> res!1794460 e!2715778)))

(declare-fun e!2715777 () Bool)

(assert (=> d!1291496 (= res!1794460 e!2715777)))

(declare-fun res!1794459 () Bool)

(assert (=> d!1291496 (=> (not res!1794459) (not e!2715777))))

(declare-fun lt!1576098 () Bool)

(assert (=> d!1291496 (= res!1794459 (not lt!1576098))))

(declare-fun lt!1576101 () Bool)

(assert (=> d!1291496 (= lt!1576098 lt!1576101)))

(declare-fun lt!1576097 () Unit!72795)

(declare-fun e!2715776 () Unit!72795)

(assert (=> d!1291496 (= lt!1576097 e!2715776)))

(declare-fun c!742054 () Bool)

(assert (=> d!1291496 (= c!742054 lt!1576101)))

(declare-fun containsKey!750 (List!49119 K!10350) Bool)

(assert (=> d!1291496 (= lt!1576101 (containsKey!750 (toList!3009 lt!1575998) key!3918))))

(assert (=> d!1291496 (= (contains!11239 lt!1575998 key!3918) lt!1576098)))

(declare-fun b!4363678 () Bool)

(declare-fun keys!16568 (ListMap!2253) List!49122)

(assert (=> b!4363678 (= e!2715781 (keys!16568 lt!1575998))))

(declare-fun b!4363679 () Bool)

(declare-fun e!2715780 () Bool)

(assert (=> b!4363679 (= e!2715778 e!2715780)))

(declare-fun res!1794461 () Bool)

(assert (=> b!4363679 (=> (not res!1794461) (not e!2715780))))

(declare-datatypes ((Option!10501 0))(
  ( (None!10500) (Some!10500 (v!43426 V!10596)) )
))
(declare-fun isDefined!7795 (Option!10501) Bool)

(declare-fun getValueByKey!487 (List!49119 K!10350) Option!10501)

(assert (=> b!4363679 (= res!1794461 (isDefined!7795 (getValueByKey!487 (toList!3009 lt!1575998) key!3918)))))

(declare-fun bm!303365 () Bool)

(declare-fun call!303370 () Bool)

(declare-fun contains!11243 (List!49122 K!10350) Bool)

(assert (=> bm!303365 (= call!303370 (contains!11243 e!2715781 key!3918))))

(declare-fun c!742052 () Bool)

(assert (=> bm!303365 (= c!742052 c!742054)))

(declare-fun b!4363680 () Bool)

(declare-fun lt!1576102 () Unit!72795)

(assert (=> b!4363680 (= e!2715776 lt!1576102)))

(declare-fun lt!1576104 () Unit!72795)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!398 (List!49119 K!10350) Unit!72795)

(assert (=> b!4363680 (= lt!1576104 (lemmaContainsKeyImpliesGetValueByKeyDefined!398 (toList!3009 lt!1575998) key!3918))))

(assert (=> b!4363680 (isDefined!7795 (getValueByKey!487 (toList!3009 lt!1575998) key!3918))))

(declare-fun lt!1576099 () Unit!72795)

(assert (=> b!4363680 (= lt!1576099 lt!1576104)))

(declare-fun lemmaInListThenGetKeysListContains!139 (List!49119 K!10350) Unit!72795)

(assert (=> b!4363680 (= lt!1576102 (lemmaInListThenGetKeysListContains!139 (toList!3009 lt!1575998) key!3918))))

(assert (=> b!4363680 call!303370))

(declare-fun b!4363681 () Bool)

(declare-fun e!2715779 () Unit!72795)

(assert (=> b!4363681 (= e!2715776 e!2715779)))

(declare-fun c!742053 () Bool)

(assert (=> b!4363681 (= c!742053 call!303370)))

(declare-fun b!4363682 () Bool)

(declare-fun Unit!72814 () Unit!72795)

(assert (=> b!4363682 (= e!2715779 Unit!72814)))

(declare-fun b!4363683 () Bool)

(assert (=> b!4363683 (= e!2715777 (not (contains!11243 (keys!16568 lt!1575998) key!3918)))))

(declare-fun b!4363684 () Bool)

(assert (=> b!4363684 (= e!2715780 (contains!11243 (keys!16568 lt!1575998) key!3918))))

(declare-fun b!4363685 () Bool)

(assert (=> b!4363685 false))

(declare-fun lt!1576103 () Unit!72795)

(declare-fun lt!1576100 () Unit!72795)

(assert (=> b!4363685 (= lt!1576103 lt!1576100)))

(assert (=> b!4363685 (containsKey!750 (toList!3009 lt!1575998) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!140 (List!49119 K!10350) Unit!72795)

(assert (=> b!4363685 (= lt!1576100 (lemmaInGetKeysListThenContainsKey!140 (toList!3009 lt!1575998) key!3918))))

(declare-fun Unit!72815 () Unit!72795)

(assert (=> b!4363685 (= e!2715779 Unit!72815)))

(assert (= (and d!1291496 c!742054) b!4363680))

(assert (= (and d!1291496 (not c!742054)) b!4363681))

(assert (= (and b!4363681 c!742053) b!4363685))

(assert (= (and b!4363681 (not c!742053)) b!4363682))

(assert (= (or b!4363680 b!4363681) bm!303365))

(assert (= (and bm!303365 c!742052) b!4363677))

(assert (= (and bm!303365 (not c!742052)) b!4363678))

(assert (= (and d!1291496 res!1794459) b!4363683))

(assert (= (and d!1291496 (not res!1794460)) b!4363679))

(assert (= (and b!4363679 res!1794461) b!4363684))

(declare-fun m!4984701 () Bool)

(assert (=> b!4363684 m!4984701))

(assert (=> b!4363684 m!4984701))

(declare-fun m!4984703 () Bool)

(assert (=> b!4363684 m!4984703))

(declare-fun m!4984705 () Bool)

(assert (=> b!4363679 m!4984705))

(assert (=> b!4363679 m!4984705))

(declare-fun m!4984707 () Bool)

(assert (=> b!4363679 m!4984707))

(declare-fun m!4984709 () Bool)

(assert (=> b!4363685 m!4984709))

(declare-fun m!4984711 () Bool)

(assert (=> b!4363685 m!4984711))

(assert (=> b!4363678 m!4984701))

(declare-fun m!4984713 () Bool)

(assert (=> b!4363680 m!4984713))

(assert (=> b!4363680 m!4984705))

(assert (=> b!4363680 m!4984705))

(assert (=> b!4363680 m!4984707))

(declare-fun m!4984717 () Bool)

(assert (=> b!4363680 m!4984717))

(assert (=> d!1291496 m!4984709))

(declare-fun m!4984721 () Bool)

(assert (=> bm!303365 m!4984721))

(declare-fun m!4984723 () Bool)

(assert (=> b!4363677 m!4984723))

(assert (=> b!4363683 m!4984701))

(assert (=> b!4363683 m!4984701))

(assert (=> b!4363683 m!4984703))

(assert (=> b!4363544 d!1291496))

(declare-fun bs!636460 () Bool)

(declare-fun d!1291528 () Bool)

(assert (= bs!636460 (and d!1291528 start!423000)))

(declare-fun lambda!142058 () Int)

(assert (=> bs!636460 (= lambda!142058 lambda!142041)))

(declare-fun lt!1576110 () ListMap!2253)

(declare-fun invariantList!694 (List!49119) Bool)

(assert (=> d!1291528 (invariantList!694 (toList!3009 lt!1576110))))

(declare-fun e!2715784 () ListMap!2253)

(assert (=> d!1291528 (= lt!1576110 e!2715784)))

(declare-fun c!742057 () Bool)

(assert (=> d!1291528 (= c!742057 ((_ is Cons!48996) (toList!3010 lm!1707)))))

(assert (=> d!1291528 (forall!9166 (toList!3010 lm!1707) lambda!142058)))

(assert (=> d!1291528 (= (extractMap!572 (toList!3010 lm!1707)) lt!1576110)))

(declare-fun b!4363690 () Bool)

(assert (=> b!4363690 (= e!2715784 (addToMapMapFromBucket!209 (_2!27506 (h!54563 (toList!3010 lm!1707))) (extractMap!572 (t!356040 (toList!3010 lm!1707)))))))

(declare-fun b!4363691 () Bool)

(assert (=> b!4363691 (= e!2715784 (ListMap!2254 Nil!48995))))

(assert (= (and d!1291528 c!742057) b!4363690))

(assert (= (and d!1291528 (not c!742057)) b!4363691))

(declare-fun m!4984725 () Bool)

(assert (=> d!1291528 m!4984725))

(declare-fun m!4984727 () Bool)

(assert (=> d!1291528 m!4984727))

(assert (=> b!4363690 m!4984513))

(assert (=> b!4363690 m!4984513))

(declare-fun m!4984729 () Bool)

(assert (=> b!4363690 m!4984729))

(assert (=> b!4363544 d!1291528))

(declare-fun d!1291530 () Bool)

(declare-fun head!9089 (List!49120) tuple2!48424)

(assert (=> d!1291530 (= (head!9088 lm!1707) (head!9089 (toList!3010 lm!1707)))))

(declare-fun bs!636461 () Bool)

(assert (= bs!636461 d!1291530))

(declare-fun m!4984731 () Bool)

(assert (=> bs!636461 m!4984731))

(assert (=> b!4363555 d!1291530))

(declare-fun d!1291532 () Bool)

(declare-fun res!1794466 () Bool)

(declare-fun e!2715789 () Bool)

(assert (=> d!1291532 (=> res!1794466 e!2715789)))

(assert (=> d!1291532 (= res!1794466 ((_ is Nil!48996) (toList!3010 lt!1575996)))))

(assert (=> d!1291532 (= (forall!9166 (toList!3010 lt!1575996) lambda!142041) e!2715789)))

(declare-fun b!4363696 () Bool)

(declare-fun e!2715790 () Bool)

(assert (=> b!4363696 (= e!2715789 e!2715790)))

(declare-fun res!1794467 () Bool)

(assert (=> b!4363696 (=> (not res!1794467) (not e!2715790))))

(declare-fun dynLambda!20657 (Int tuple2!48424) Bool)

(assert (=> b!4363696 (= res!1794467 (dynLambda!20657 lambda!142041 (h!54563 (toList!3010 lt!1575996))))))

(declare-fun b!4363697 () Bool)

(assert (=> b!4363697 (= e!2715790 (forall!9166 (t!356040 (toList!3010 lt!1575996)) lambda!142041))))

(assert (= (and d!1291532 (not res!1794466)) b!4363696))

(assert (= (and b!4363696 res!1794467) b!4363697))

(declare-fun b_lambda!132169 () Bool)

(assert (=> (not b_lambda!132169) (not b!4363696)))

(declare-fun m!4984733 () Bool)

(assert (=> b!4363696 m!4984733))

(declare-fun m!4984735 () Bool)

(assert (=> b!4363697 m!4984735))

(assert (=> b!4363553 d!1291532))

(declare-fun d!1291534 () Bool)

(declare-fun hash!1647 (Hashable!4905 K!10350) (_ BitVec 64))

(assert (=> d!1291534 (= (hash!1641 hashF!1247 key!3918) (hash!1647 hashF!1247 key!3918))))

(declare-fun bs!636462 () Bool)

(assert (= bs!636462 d!1291534))

(declare-fun m!4984737 () Bool)

(assert (=> bs!636462 m!4984737))

(assert (=> b!4363554 d!1291534))

(declare-fun bs!636463 () Bool)

(declare-fun d!1291536 () Bool)

(assert (= bs!636463 (and d!1291536 start!423000)))

(declare-fun lambda!142061 () Int)

(assert (=> bs!636463 (not (= lambda!142061 lambda!142041))))

(declare-fun bs!636464 () Bool)

(assert (= bs!636464 (and d!1291536 d!1291528)))

(assert (=> bs!636464 (not (= lambda!142061 lambda!142058))))

(assert (=> d!1291536 true))

(assert (=> d!1291536 (= (allKeysSameHashInMap!617 lm!1707 hashF!1247) (forall!9166 (toList!3010 lm!1707) lambda!142061))))

(declare-fun bs!636465 () Bool)

(assert (= bs!636465 d!1291536))

(declare-fun m!4984739 () Bool)

(assert (=> bs!636465 m!4984739))

(assert (=> b!4363547 d!1291536))

(declare-fun b!4363710 () Bool)

(declare-fun e!2715795 () List!49119)

(assert (=> b!4363710 (= e!2715795 (Cons!48995 (h!54562 lt!1575995) (removePairForKey!483 (t!356039 lt!1575995) key!3918)))))

(declare-fun b!4363708 () Bool)

(declare-fun e!2715796 () List!49119)

(assert (=> b!4363708 (= e!2715796 (t!356039 lt!1575995))))

(declare-fun b!4363711 () Bool)

(assert (=> b!4363711 (= e!2715795 Nil!48995)))

(declare-fun b!4363709 () Bool)

(assert (=> b!4363709 (= e!2715796 e!2715795)))

(declare-fun c!742063 () Bool)

(assert (=> b!4363709 (= c!742063 ((_ is Cons!48995) lt!1575995))))

(declare-fun d!1291538 () Bool)

(declare-fun lt!1576113 () List!49119)

(assert (=> d!1291538 (not (containsKey!746 lt!1576113 key!3918))))

(assert (=> d!1291538 (= lt!1576113 e!2715796)))

(declare-fun c!742062 () Bool)

(assert (=> d!1291538 (= c!742062 (and ((_ is Cons!48995) lt!1575995) (= (_1!27505 (h!54562 lt!1575995)) key!3918)))))

(assert (=> d!1291538 (noDuplicateKeys!513 lt!1575995)))

(assert (=> d!1291538 (= (removePairForKey!483 lt!1575995 key!3918) lt!1576113)))

(assert (= (and d!1291538 c!742062) b!4363708))

(assert (= (and d!1291538 (not c!742062)) b!4363709))

(assert (= (and b!4363709 c!742063) b!4363710))

(assert (= (and b!4363709 (not c!742063)) b!4363711))

(declare-fun m!4984741 () Bool)

(assert (=> b!4363710 m!4984741))

(declare-fun m!4984743 () Bool)

(assert (=> d!1291538 m!4984743))

(declare-fun m!4984745 () Bool)

(assert (=> d!1291538 m!4984745))

(assert (=> b!4363558 d!1291538))

(declare-fun d!1291540 () Bool)

(declare-fun lt!1576116 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7756 (List!49120) (InoxSet tuple2!48424))

(assert (=> d!1291540 (= lt!1576116 (select (content!7756 (toList!3010 lm!1707)) lt!1576004))))

(declare-fun e!2715802 () Bool)

(assert (=> d!1291540 (= lt!1576116 e!2715802)))

(declare-fun res!1794473 () Bool)

(assert (=> d!1291540 (=> (not res!1794473) (not e!2715802))))

(assert (=> d!1291540 (= res!1794473 ((_ is Cons!48996) (toList!3010 lm!1707)))))

(assert (=> d!1291540 (= (contains!11241 (toList!3010 lm!1707) lt!1576004) lt!1576116)))

(declare-fun b!4363716 () Bool)

(declare-fun e!2715801 () Bool)

(assert (=> b!4363716 (= e!2715802 e!2715801)))

(declare-fun res!1794472 () Bool)

(assert (=> b!4363716 (=> res!1794472 e!2715801)))

(assert (=> b!4363716 (= res!1794472 (= (h!54563 (toList!3010 lm!1707)) lt!1576004))))

(declare-fun b!4363717 () Bool)

(assert (=> b!4363717 (= e!2715801 (contains!11241 (t!356040 (toList!3010 lm!1707)) lt!1576004))))

(assert (= (and d!1291540 res!1794473) b!4363716))

(assert (= (and b!4363716 (not res!1794472)) b!4363717))

(declare-fun m!4984747 () Bool)

(assert (=> d!1291540 m!4984747))

(declare-fun m!4984749 () Bool)

(assert (=> d!1291540 m!4984749))

(declare-fun m!4984751 () Bool)

(assert (=> b!4363717 m!4984751))

(assert (=> b!4363558 d!1291540))

(declare-fun d!1291542 () Bool)

(declare-fun get!15923 (Option!10500) List!49119)

(assert (=> d!1291542 (= (apply!11365 lm!1707 hash!377) (get!15923 (getValueByKey!486 (toList!3010 lm!1707) hash!377)))))

(declare-fun bs!636466 () Bool)

(assert (= bs!636466 d!1291542))

(assert (=> bs!636466 m!4984605))

(assert (=> bs!636466 m!4984605))

(declare-fun m!4984753 () Bool)

(assert (=> bs!636466 m!4984753))

(assert (=> b!4363558 d!1291542))

(declare-fun d!1291544 () Bool)

(assert (=> d!1291544 (dynLambda!20657 lambda!142041 lt!1576004)))

(declare-fun lt!1576119 () Unit!72795)

(declare-fun choose!27084 (List!49120 Int tuple2!48424) Unit!72795)

(assert (=> d!1291544 (= lt!1576119 (choose!27084 (toList!3010 lm!1707) lambda!142041 lt!1576004))))

(declare-fun e!2715805 () Bool)

(assert (=> d!1291544 e!2715805))

(declare-fun res!1794476 () Bool)

(assert (=> d!1291544 (=> (not res!1794476) (not e!2715805))))

(assert (=> d!1291544 (= res!1794476 (forall!9166 (toList!3010 lm!1707) lambda!142041))))

(assert (=> d!1291544 (= (forallContained!1807 (toList!3010 lm!1707) lambda!142041 lt!1576004) lt!1576119)))

(declare-fun b!4363720 () Bool)

(assert (=> b!4363720 (= e!2715805 (contains!11241 (toList!3010 lm!1707) lt!1576004))))

(assert (= (and d!1291544 res!1794476) b!4363720))

(declare-fun b_lambda!132171 () Bool)

(assert (=> (not b_lambda!132171) (not d!1291544)))

(declare-fun m!4984755 () Bool)

(assert (=> d!1291544 m!4984755))

(declare-fun m!4984757 () Bool)

(assert (=> d!1291544 m!4984757))

(assert (=> d!1291544 m!4984493))

(assert (=> b!4363720 m!4984561))

(assert (=> b!4363558 d!1291544))

(declare-fun d!1291546 () Bool)

(assert (=> d!1291546 (contains!11241 (toList!3010 lm!1707) (tuple2!48425 hash!377 lt!1575995))))

(declare-fun lt!1576122 () Unit!72795)

(declare-fun choose!27085 (List!49120 (_ BitVec 64) List!49119) Unit!72795)

(assert (=> d!1291546 (= lt!1576122 (choose!27085 (toList!3010 lm!1707) hash!377 lt!1575995))))

(declare-fun e!2715808 () Bool)

(assert (=> d!1291546 e!2715808))

(declare-fun res!1794479 () Bool)

(assert (=> d!1291546 (=> (not res!1794479) (not e!2715808))))

(declare-fun isStrictlySorted!119 (List!49120) Bool)

(assert (=> d!1291546 (= res!1794479 (isStrictlySorted!119 (toList!3010 lm!1707)))))

(assert (=> d!1291546 (= (lemmaGetValueByKeyImpliesContainsTuple!360 (toList!3010 lm!1707) hash!377 lt!1575995) lt!1576122)))

(declare-fun b!4363723 () Bool)

(assert (=> b!4363723 (= e!2715808 (= (getValueByKey!486 (toList!3010 lm!1707) hash!377) (Some!10499 lt!1575995)))))

(assert (= (and d!1291546 res!1794479) b!4363723))

(declare-fun m!4984759 () Bool)

(assert (=> d!1291546 m!4984759))

(declare-fun m!4984761 () Bool)

(assert (=> d!1291546 m!4984761))

(declare-fun m!4984763 () Bool)

(assert (=> d!1291546 m!4984763))

(assert (=> b!4363723 m!4984605))

(assert (=> b!4363558 d!1291546))

(declare-fun d!1291548 () Bool)

(declare-fun res!1794480 () Bool)

(declare-fun e!2715809 () Bool)

(assert (=> d!1291548 (=> res!1794480 e!2715809)))

(assert (=> d!1291548 (= res!1794480 ((_ is Nil!48996) (toList!3010 lt!1576002)))))

(assert (=> d!1291548 (= (forall!9166 (toList!3010 lt!1576002) lambda!142041) e!2715809)))

(declare-fun b!4363724 () Bool)

(declare-fun e!2715810 () Bool)

(assert (=> b!4363724 (= e!2715809 e!2715810)))

(declare-fun res!1794481 () Bool)

(assert (=> b!4363724 (=> (not res!1794481) (not e!2715810))))

(assert (=> b!4363724 (= res!1794481 (dynLambda!20657 lambda!142041 (h!54563 (toList!3010 lt!1576002))))))

(declare-fun b!4363725 () Bool)

(assert (=> b!4363725 (= e!2715810 (forall!9166 (t!356040 (toList!3010 lt!1576002)) lambda!142041))))

(assert (= (and d!1291548 (not res!1794480)) b!4363724))

(assert (= (and b!4363724 res!1794481) b!4363725))

(declare-fun b_lambda!132173 () Bool)

(assert (=> (not b_lambda!132173) (not b!4363724)))

(declare-fun m!4984765 () Bool)

(assert (=> b!4363724 m!4984765))

(declare-fun m!4984767 () Bool)

(assert (=> b!4363725 m!4984767))

(assert (=> b!4363556 d!1291548))

(declare-fun d!1291550 () Bool)

(declare-fun content!7758 (List!49119) (InoxSet tuple2!48422))

(assert (=> d!1291550 (= (eq!283 (+!683 lt!1575998 lt!1576001) lt!1575990) (= (content!7758 (toList!3009 (+!683 lt!1575998 lt!1576001))) (content!7758 (toList!3009 lt!1575990))))))

(declare-fun bs!636467 () Bool)

(assert (= bs!636467 d!1291550))

(declare-fun m!4984769 () Bool)

(assert (=> bs!636467 m!4984769))

(declare-fun m!4984771 () Bool)

(assert (=> bs!636467 m!4984771))

(assert (=> b!4363556 d!1291550))

(declare-fun d!1291552 () Bool)

(declare-fun e!2715815 () Bool)

(assert (=> d!1291552 e!2715815))

(declare-fun res!1794487 () Bool)

(assert (=> d!1291552 (=> (not res!1794487) (not e!2715815))))

(declare-fun lt!1576148 () ListMap!2253)

(assert (=> d!1291552 (= res!1794487 (contains!11239 lt!1576148 (_1!27505 lt!1576001)))))

(declare-fun lt!1576150 () List!49119)

(assert (=> d!1291552 (= lt!1576148 (ListMap!2254 lt!1576150))))

(declare-fun lt!1576147 () Unit!72795)

(declare-fun lt!1576149 () Unit!72795)

(assert (=> d!1291552 (= lt!1576147 lt!1576149)))

(assert (=> d!1291552 (= (getValueByKey!487 lt!1576150 (_1!27505 lt!1576001)) (Some!10500 (_2!27505 lt!1576001)))))

(declare-fun lemmaContainsTupThenGetReturnValue!260 (List!49119 K!10350 V!10596) Unit!72795)

(assert (=> d!1291552 (= lt!1576149 (lemmaContainsTupThenGetReturnValue!260 lt!1576150 (_1!27505 lt!1576001) (_2!27505 lt!1576001)))))

(declare-fun insertNoDuplicatedKeys!118 (List!49119 K!10350 V!10596) List!49119)

(assert (=> d!1291552 (= lt!1576150 (insertNoDuplicatedKeys!118 (toList!3009 lt!1575998) (_1!27505 lt!1576001) (_2!27505 lt!1576001)))))

(assert (=> d!1291552 (= (+!683 lt!1575998 lt!1576001) lt!1576148)))

(declare-fun b!4363734 () Bool)

(declare-fun res!1794486 () Bool)

(assert (=> b!4363734 (=> (not res!1794486) (not e!2715815))))

(assert (=> b!4363734 (= res!1794486 (= (getValueByKey!487 (toList!3009 lt!1576148) (_1!27505 lt!1576001)) (Some!10500 (_2!27505 lt!1576001))))))

(declare-fun b!4363735 () Bool)

(declare-fun contains!11245 (List!49119 tuple2!48422) Bool)

(assert (=> b!4363735 (= e!2715815 (contains!11245 (toList!3009 lt!1576148) lt!1576001))))

(assert (= (and d!1291552 res!1794487) b!4363734))

(assert (= (and b!4363734 res!1794486) b!4363735))

(declare-fun m!4984773 () Bool)

(assert (=> d!1291552 m!4984773))

(declare-fun m!4984775 () Bool)

(assert (=> d!1291552 m!4984775))

(declare-fun m!4984777 () Bool)

(assert (=> d!1291552 m!4984777))

(declare-fun m!4984779 () Bool)

(assert (=> d!1291552 m!4984779))

(declare-fun m!4984781 () Bool)

(assert (=> b!4363734 m!4984781))

(declare-fun m!4984783 () Bool)

(assert (=> b!4363735 m!4984783))

(assert (=> b!4363556 d!1291552))

(declare-fun d!1291554 () Bool)

(assert (=> d!1291554 (eq!283 (+!683 lt!1575998 (tuple2!48423 key!3918 newValue!99)) (+!683 lt!1575983 (tuple2!48423 key!3918 newValue!99)))))

(declare-fun lt!1576179 () Unit!72795)

(declare-fun choose!27086 (ListMap!2253 ListMap!2253 K!10350 V!10596) Unit!72795)

(assert (=> d!1291554 (= lt!1576179 (choose!27086 lt!1575998 lt!1575983 key!3918 newValue!99))))

(assert (=> d!1291554 (eq!283 lt!1575998 lt!1575983)))

(assert (=> d!1291554 (= (lemmaAddToEqMapsPreservesEq!6 lt!1575998 lt!1575983 key!3918 newValue!99) lt!1576179)))

(declare-fun bs!636468 () Bool)

(assert (= bs!636468 d!1291554))

(declare-fun m!4984785 () Bool)

(assert (=> bs!636468 m!4984785))

(declare-fun m!4984787 () Bool)

(assert (=> bs!636468 m!4984787))

(declare-fun m!4984789 () Bool)

(assert (=> bs!636468 m!4984789))

(declare-fun m!4984791 () Bool)

(assert (=> bs!636468 m!4984791))

(assert (=> bs!636468 m!4984785))

(assert (=> bs!636468 m!4984787))

(declare-fun m!4984793 () Bool)

(assert (=> bs!636468 m!4984793))

(assert (=> b!4363556 d!1291554))

(declare-fun bs!636469 () Bool)

(declare-fun d!1291556 () Bool)

(assert (= bs!636469 (and d!1291556 start!423000)))

(declare-fun lambda!142086 () Int)

(assert (=> bs!636469 (= lambda!142086 lambda!142041)))

(declare-fun bs!636470 () Bool)

(assert (= bs!636470 (and d!1291556 d!1291528)))

(assert (=> bs!636470 (= lambda!142086 lambda!142058)))

(declare-fun bs!636471 () Bool)

(assert (= bs!636471 (and d!1291556 d!1291536)))

(assert (=> bs!636471 (not (= lambda!142086 lambda!142061))))

(declare-fun lt!1576180 () ListMap!2253)

(assert (=> d!1291556 (invariantList!694 (toList!3009 lt!1576180))))

(declare-fun e!2715818 () ListMap!2253)

(assert (=> d!1291556 (= lt!1576180 e!2715818)))

(declare-fun c!742066 () Bool)

(assert (=> d!1291556 (= c!742066 ((_ is Cons!48996) (toList!3010 lt!1575986)))))

(assert (=> d!1291556 (forall!9166 (toList!3010 lt!1575986) lambda!142086)))

(assert (=> d!1291556 (= (extractMap!572 (toList!3010 lt!1575986)) lt!1576180)))

(declare-fun b!4363738 () Bool)

(assert (=> b!4363738 (= e!2715818 (addToMapMapFromBucket!209 (_2!27506 (h!54563 (toList!3010 lt!1575986))) (extractMap!572 (t!356040 (toList!3010 lt!1575986)))))))

(declare-fun b!4363739 () Bool)

(assert (=> b!4363739 (= e!2715818 (ListMap!2254 Nil!48995))))

(assert (= (and d!1291556 c!742066) b!4363738))

(assert (= (and d!1291556 (not c!742066)) b!4363739))

(declare-fun m!4984795 () Bool)

(assert (=> d!1291556 m!4984795))

(declare-fun m!4984797 () Bool)

(assert (=> d!1291556 m!4984797))

(declare-fun m!4984799 () Bool)

(assert (=> b!4363738 m!4984799))

(assert (=> b!4363738 m!4984799))

(declare-fun m!4984801 () Bool)

(assert (=> b!4363738 m!4984801))

(assert (=> b!4363546 d!1291556))

(declare-fun d!1291558 () Bool)

(assert (=> d!1291558 (= (eq!283 lt!1575984 lt!1575990) (= (content!7758 (toList!3009 lt!1575984)) (content!7758 (toList!3009 lt!1575990))))))

(declare-fun bs!636472 () Bool)

(assert (= bs!636472 d!1291558))

(declare-fun m!4984803 () Bool)

(assert (=> bs!636472 m!4984803))

(assert (=> bs!636472 m!4984771))

(assert (=> b!4363546 d!1291558))

(declare-fun d!1291560 () Bool)

(assert (=> d!1291560 (contains!11239 lt!1576000 key!3918)))

(declare-fun lt!1576183 () Unit!72795)

(declare-fun choose!27087 (List!49119 K!10350 V!10596 ListMap!2253) Unit!72795)

(assert (=> d!1291560 (= lt!1576183 (choose!27087 (_2!27506 (h!54563 (toList!3010 lm!1707))) key!3918 newValue!99 lt!1576000))))

(assert (=> d!1291560 (noDuplicateKeys!513 (_2!27506 (h!54563 (toList!3010 lm!1707))))))

(assert (=> d!1291560 (= (lemmaAddToMapContainsAndNotInListThenInAcc!56 (_2!27506 (h!54563 (toList!3010 lm!1707))) key!3918 newValue!99 lt!1576000) lt!1576183)))

(declare-fun bs!636473 () Bool)

(assert (= bs!636473 d!1291560))

(assert (=> bs!636473 m!4984517))

(declare-fun m!4984805 () Bool)

(assert (=> bs!636473 m!4984805))

(declare-fun m!4984807 () Bool)

(assert (=> bs!636473 m!4984807))

(assert (=> b!4363546 d!1291560))

(declare-fun b!4363744 () Bool)

(declare-fun e!2715826 () List!49122)

(assert (=> b!4363744 (= e!2715826 (getKeysList!142 (toList!3009 lt!1575987)))))

(declare-fun d!1291562 () Bool)

(declare-fun e!2715823 () Bool)

(assert (=> d!1291562 e!2715823))

(declare-fun res!1794495 () Bool)

(assert (=> d!1291562 (=> res!1794495 e!2715823)))

(declare-fun e!2715822 () Bool)

(assert (=> d!1291562 (= res!1794495 e!2715822)))

(declare-fun res!1794494 () Bool)

(assert (=> d!1291562 (=> (not res!1794494) (not e!2715822))))

(declare-fun lt!1576185 () Bool)

(assert (=> d!1291562 (= res!1794494 (not lt!1576185))))

(declare-fun lt!1576188 () Bool)

(assert (=> d!1291562 (= lt!1576185 lt!1576188)))

(declare-fun lt!1576184 () Unit!72795)

(declare-fun e!2715821 () Unit!72795)

(assert (=> d!1291562 (= lt!1576184 e!2715821)))

(declare-fun c!742069 () Bool)

(assert (=> d!1291562 (= c!742069 lt!1576188)))

(assert (=> d!1291562 (= lt!1576188 (containsKey!750 (toList!3009 lt!1575987) key!3918))))

(assert (=> d!1291562 (= (contains!11239 lt!1575987 key!3918) lt!1576185)))

(declare-fun b!4363745 () Bool)

(assert (=> b!4363745 (= e!2715826 (keys!16568 lt!1575987))))

(declare-fun b!4363746 () Bool)

(declare-fun e!2715825 () Bool)

(assert (=> b!4363746 (= e!2715823 e!2715825)))

(declare-fun res!1794496 () Bool)

(assert (=> b!4363746 (=> (not res!1794496) (not e!2715825))))

(assert (=> b!4363746 (= res!1794496 (isDefined!7795 (getValueByKey!487 (toList!3009 lt!1575987) key!3918)))))

(declare-fun bm!303372 () Bool)

(declare-fun call!303377 () Bool)

(assert (=> bm!303372 (= call!303377 (contains!11243 e!2715826 key!3918))))

(declare-fun c!742067 () Bool)

(assert (=> bm!303372 (= c!742067 c!742069)))

(declare-fun b!4363747 () Bool)

(declare-fun lt!1576189 () Unit!72795)

(assert (=> b!4363747 (= e!2715821 lt!1576189)))

(declare-fun lt!1576191 () Unit!72795)

(assert (=> b!4363747 (= lt!1576191 (lemmaContainsKeyImpliesGetValueByKeyDefined!398 (toList!3009 lt!1575987) key!3918))))

(assert (=> b!4363747 (isDefined!7795 (getValueByKey!487 (toList!3009 lt!1575987) key!3918))))

(declare-fun lt!1576186 () Unit!72795)

(assert (=> b!4363747 (= lt!1576186 lt!1576191)))

(assert (=> b!4363747 (= lt!1576189 (lemmaInListThenGetKeysListContains!139 (toList!3009 lt!1575987) key!3918))))

(assert (=> b!4363747 call!303377))

(declare-fun b!4363748 () Bool)

(declare-fun e!2715824 () Unit!72795)

(assert (=> b!4363748 (= e!2715821 e!2715824)))

(declare-fun c!742068 () Bool)

(assert (=> b!4363748 (= c!742068 call!303377)))

(declare-fun b!4363749 () Bool)

(declare-fun Unit!72827 () Unit!72795)

(assert (=> b!4363749 (= e!2715824 Unit!72827)))

(declare-fun b!4363750 () Bool)

(assert (=> b!4363750 (= e!2715822 (not (contains!11243 (keys!16568 lt!1575987) key!3918)))))

(declare-fun b!4363751 () Bool)

(assert (=> b!4363751 (= e!2715825 (contains!11243 (keys!16568 lt!1575987) key!3918))))

(declare-fun b!4363752 () Bool)

(assert (=> b!4363752 false))

(declare-fun lt!1576190 () Unit!72795)

(declare-fun lt!1576187 () Unit!72795)

(assert (=> b!4363752 (= lt!1576190 lt!1576187)))

(assert (=> b!4363752 (containsKey!750 (toList!3009 lt!1575987) key!3918)))

(assert (=> b!4363752 (= lt!1576187 (lemmaInGetKeysListThenContainsKey!140 (toList!3009 lt!1575987) key!3918))))

(declare-fun Unit!72828 () Unit!72795)

(assert (=> b!4363752 (= e!2715824 Unit!72828)))

(assert (= (and d!1291562 c!742069) b!4363747))

(assert (= (and d!1291562 (not c!742069)) b!4363748))

(assert (= (and b!4363748 c!742068) b!4363752))

(assert (= (and b!4363748 (not c!742068)) b!4363749))

(assert (= (or b!4363747 b!4363748) bm!303372))

(assert (= (and bm!303372 c!742067) b!4363744))

(assert (= (and bm!303372 (not c!742067)) b!4363745))

(assert (= (and d!1291562 res!1794494) b!4363750))

(assert (= (and d!1291562 (not res!1794495)) b!4363746))

(assert (= (and b!4363746 res!1794496) b!4363751))

(declare-fun m!4984809 () Bool)

(assert (=> b!4363751 m!4984809))

(assert (=> b!4363751 m!4984809))

(declare-fun m!4984811 () Bool)

(assert (=> b!4363751 m!4984811))

(declare-fun m!4984813 () Bool)

(assert (=> b!4363746 m!4984813))

(assert (=> b!4363746 m!4984813))

(declare-fun m!4984815 () Bool)

(assert (=> b!4363746 m!4984815))

(declare-fun m!4984817 () Bool)

(assert (=> b!4363752 m!4984817))

(declare-fun m!4984819 () Bool)

(assert (=> b!4363752 m!4984819))

(assert (=> b!4363745 m!4984809))

(declare-fun m!4984821 () Bool)

(assert (=> b!4363747 m!4984821))

(assert (=> b!4363747 m!4984813))

(assert (=> b!4363747 m!4984813))

(assert (=> b!4363747 m!4984815))

(declare-fun m!4984823 () Bool)

(assert (=> b!4363747 m!4984823))

(assert (=> d!1291562 m!4984817))

(declare-fun m!4984825 () Bool)

(assert (=> bm!303372 m!4984825))

(declare-fun m!4984827 () Bool)

(assert (=> b!4363744 m!4984827))

(assert (=> b!4363750 m!4984809))

(assert (=> b!4363750 m!4984809))

(assert (=> b!4363750 m!4984811))

(assert (=> b!4363546 d!1291562))

(declare-fun b!4363846 () Bool)

(assert (=> b!4363846 true))

(declare-fun bs!636524 () Bool)

(declare-fun b!4363843 () Bool)

(assert (= bs!636524 (and b!4363843 b!4363846)))

(declare-fun lambda!142132 () Int)

(declare-fun lambda!142131 () Int)

(assert (=> bs!636524 (= lambda!142132 lambda!142131)))

(assert (=> b!4363843 true))

(declare-fun lambda!142133 () Int)

(declare-fun lt!1576352 () ListMap!2253)

(assert (=> bs!636524 (= (= lt!1576352 lt!1575987) (= lambda!142133 lambda!142131))))

(assert (=> b!4363843 (= (= lt!1576352 lt!1575987) (= lambda!142133 lambda!142132))))

(assert (=> b!4363843 true))

(declare-fun bs!636525 () Bool)

(declare-fun d!1291564 () Bool)

(assert (= bs!636525 (and d!1291564 b!4363846)))

(declare-fun lambda!142134 () Int)

(declare-fun lt!1576351 () ListMap!2253)

(assert (=> bs!636525 (= (= lt!1576351 lt!1575987) (= lambda!142134 lambda!142131))))

(declare-fun bs!636526 () Bool)

(assert (= bs!636526 (and d!1291564 b!4363843)))

(assert (=> bs!636526 (= (= lt!1576351 lt!1575987) (= lambda!142134 lambda!142132))))

(assert (=> bs!636526 (= (= lt!1576351 lt!1576352) (= lambda!142134 lambda!142133))))

(assert (=> d!1291564 true))

(declare-fun call!303393 () Bool)

(declare-fun c!742084 () Bool)

(declare-fun bm!303386 () Bool)

(declare-fun forall!9168 (List!49119 Int) Bool)

(assert (=> bm!303386 (= call!303393 (forall!9168 (toList!3009 lt!1575987) (ite c!742084 lambda!142131 lambda!142132)))))

(declare-fun b!4363842 () Bool)

(declare-fun e!2715887 () Bool)

(assert (=> b!4363842 (= e!2715887 (invariantList!694 (toList!3009 lt!1576351)))))

(declare-fun e!2715886 () ListMap!2253)

(assert (=> b!4363843 (= e!2715886 lt!1576352)))

(declare-fun lt!1576344 () ListMap!2253)

(assert (=> b!4363843 (= lt!1576344 (+!683 lt!1575987 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))))))

(assert (=> b!4363843 (= lt!1576352 (addToMapMapFromBucket!209 (t!356039 (_2!27506 (h!54563 (toList!3010 lm!1707)))) (+!683 lt!1575987 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707)))))))))

(declare-fun lt!1576343 () Unit!72795)

(declare-fun call!303391 () Unit!72795)

(assert (=> b!4363843 (= lt!1576343 call!303391)))

(assert (=> b!4363843 call!303393))

(declare-fun lt!1576347 () Unit!72795)

(assert (=> b!4363843 (= lt!1576347 lt!1576343)))

(declare-fun call!303392 () Bool)

(assert (=> b!4363843 call!303392))

(declare-fun lt!1576339 () Unit!72795)

(declare-fun Unit!72829 () Unit!72795)

(assert (=> b!4363843 (= lt!1576339 Unit!72829)))

(assert (=> b!4363843 (forall!9168 (t!356039 (_2!27506 (h!54563 (toList!3010 lm!1707)))) lambda!142133)))

(declare-fun lt!1576348 () Unit!72795)

(declare-fun Unit!72830 () Unit!72795)

(assert (=> b!4363843 (= lt!1576348 Unit!72830)))

(declare-fun lt!1576334 () Unit!72795)

(declare-fun Unit!72831 () Unit!72795)

(assert (=> b!4363843 (= lt!1576334 Unit!72831)))

(declare-fun lt!1576342 () Unit!72795)

(declare-fun forallContained!1809 (List!49119 Int tuple2!48422) Unit!72795)

(assert (=> b!4363843 (= lt!1576342 (forallContained!1809 (toList!3009 lt!1576344) lambda!142133 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))))))

(assert (=> b!4363843 (contains!11239 lt!1576344 (_1!27505 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))))))

(declare-fun lt!1576349 () Unit!72795)

(declare-fun Unit!72832 () Unit!72795)

(assert (=> b!4363843 (= lt!1576349 Unit!72832)))

(assert (=> b!4363843 (contains!11239 lt!1576352 (_1!27505 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))))))

(declare-fun lt!1576340 () Unit!72795)

(declare-fun Unit!72833 () Unit!72795)

(assert (=> b!4363843 (= lt!1576340 Unit!72833)))

(assert (=> b!4363843 (forall!9168 (_2!27506 (h!54563 (toList!3010 lm!1707))) lambda!142133)))

(declare-fun lt!1576353 () Unit!72795)

(declare-fun Unit!72834 () Unit!72795)

(assert (=> b!4363843 (= lt!1576353 Unit!72834)))

(assert (=> b!4363843 (forall!9168 (toList!3009 lt!1576344) lambda!142133)))

(declare-fun lt!1576336 () Unit!72795)

(declare-fun Unit!72835 () Unit!72795)

(assert (=> b!4363843 (= lt!1576336 Unit!72835)))

(declare-fun lt!1576338 () Unit!72795)

(declare-fun Unit!72836 () Unit!72795)

(assert (=> b!4363843 (= lt!1576338 Unit!72836)))

(declare-fun lt!1576335 () Unit!72795)

(declare-fun addForallContainsKeyThenBeforeAdding!77 (ListMap!2253 ListMap!2253 K!10350 V!10596) Unit!72795)

(assert (=> b!4363843 (= lt!1576335 (addForallContainsKeyThenBeforeAdding!77 lt!1575987 lt!1576352 (_1!27505 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))) (_2!27505 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707)))))))))

(assert (=> b!4363843 (forall!9168 (toList!3009 lt!1575987) lambda!142133)))

(declare-fun lt!1576341 () Unit!72795)

(assert (=> b!4363843 (= lt!1576341 lt!1576335)))

(assert (=> b!4363843 (forall!9168 (toList!3009 lt!1575987) lambda!142133)))

(declare-fun lt!1576333 () Unit!72795)

(declare-fun Unit!72837 () Unit!72795)

(assert (=> b!4363843 (= lt!1576333 Unit!72837)))

(declare-fun res!1794548 () Bool)

(assert (=> b!4363843 (= res!1794548 (forall!9168 (_2!27506 (h!54563 (toList!3010 lm!1707))) lambda!142133))))

(declare-fun e!2715888 () Bool)

(assert (=> b!4363843 (=> (not res!1794548) (not e!2715888))))

(assert (=> b!4363843 e!2715888))

(declare-fun lt!1576346 () Unit!72795)

(declare-fun Unit!72838 () Unit!72795)

(assert (=> b!4363843 (= lt!1576346 Unit!72838)))

(declare-fun bm!303387 () Bool)

(assert (=> bm!303387 (= call!303392 (forall!9168 (ite c!742084 (toList!3009 lt!1575987) (toList!3009 lt!1576344)) (ite c!742084 lambda!142131 lambda!142133)))))

(assert (=> d!1291564 e!2715887))

(declare-fun res!1794546 () Bool)

(assert (=> d!1291564 (=> (not res!1794546) (not e!2715887))))

(assert (=> d!1291564 (= res!1794546 (forall!9168 (_2!27506 (h!54563 (toList!3010 lm!1707))) lambda!142134))))

(assert (=> d!1291564 (= lt!1576351 e!2715886)))

(assert (=> d!1291564 (= c!742084 ((_ is Nil!48995) (_2!27506 (h!54563 (toList!3010 lm!1707)))))))

(assert (=> d!1291564 (noDuplicateKeys!513 (_2!27506 (h!54563 (toList!3010 lm!1707))))))

(assert (=> d!1291564 (= (addToMapMapFromBucket!209 (_2!27506 (h!54563 (toList!3010 lm!1707))) lt!1575987) lt!1576351)))

(declare-fun bm!303388 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!77 (ListMap!2253) Unit!72795)

(assert (=> bm!303388 (= call!303391 (lemmaContainsAllItsOwnKeys!77 lt!1575987))))

(declare-fun b!4363844 () Bool)

(assert (=> b!4363844 (= e!2715888 (forall!9168 (toList!3009 lt!1575987) lambda!142133))))

(declare-fun b!4363845 () Bool)

(declare-fun res!1794547 () Bool)

(assert (=> b!4363845 (=> (not res!1794547) (not e!2715887))))

(assert (=> b!4363845 (= res!1794547 (forall!9168 (toList!3009 lt!1575987) lambda!142134))))

(assert (=> b!4363846 (= e!2715886 lt!1575987)))

(declare-fun lt!1576350 () Unit!72795)

(assert (=> b!4363846 (= lt!1576350 call!303391)))

(assert (=> b!4363846 call!303392))

(declare-fun lt!1576337 () Unit!72795)

(assert (=> b!4363846 (= lt!1576337 lt!1576350)))

(assert (=> b!4363846 call!303393))

(declare-fun lt!1576345 () Unit!72795)

(declare-fun Unit!72841 () Unit!72795)

(assert (=> b!4363846 (= lt!1576345 Unit!72841)))

(assert (= (and d!1291564 c!742084) b!4363846))

(assert (= (and d!1291564 (not c!742084)) b!4363843))

(assert (= (and b!4363843 res!1794548) b!4363844))

(assert (= (or b!4363846 b!4363843) bm!303388))

(assert (= (or b!4363846 b!4363843) bm!303387))

(assert (= (or b!4363846 b!4363843) bm!303386))

(assert (= (and d!1291564 res!1794546) b!4363845))

(assert (= (and b!4363845 res!1794547) b!4363842))

(declare-fun m!4985061 () Bool)

(assert (=> bm!303387 m!4985061))

(declare-fun m!4985063 () Bool)

(assert (=> d!1291564 m!4985063))

(assert (=> d!1291564 m!4984807))

(declare-fun m!4985065 () Bool)

(assert (=> bm!303388 m!4985065))

(declare-fun m!4985067 () Bool)

(assert (=> b!4363845 m!4985067))

(declare-fun m!4985069 () Bool)

(assert (=> b!4363843 m!4985069))

(declare-fun m!4985071 () Bool)

(assert (=> b!4363843 m!4985071))

(declare-fun m!4985073 () Bool)

(assert (=> b!4363843 m!4985073))

(declare-fun m!4985075 () Bool)

(assert (=> b!4363843 m!4985075))

(declare-fun m!4985077 () Bool)

(assert (=> b!4363843 m!4985077))

(declare-fun m!4985079 () Bool)

(assert (=> b!4363843 m!4985079))

(assert (=> b!4363843 m!4985073))

(declare-fun m!4985081 () Bool)

(assert (=> b!4363843 m!4985081))

(declare-fun m!4985083 () Bool)

(assert (=> b!4363843 m!4985083))

(declare-fun m!4985085 () Bool)

(assert (=> b!4363843 m!4985085))

(assert (=> b!4363843 m!4985079))

(assert (=> b!4363843 m!4985071))

(declare-fun m!4985087 () Bool)

(assert (=> b!4363843 m!4985087))

(declare-fun m!4985089 () Bool)

(assert (=> b!4363842 m!4985089))

(assert (=> b!4363844 m!4985079))

(declare-fun m!4985091 () Bool)

(assert (=> bm!303386 m!4985091))

(assert (=> b!4363546 d!1291564))

(declare-fun d!1291626 () Bool)

(declare-fun e!2715889 () Bool)

(assert (=> d!1291626 e!2715889))

(declare-fun res!1794550 () Bool)

(assert (=> d!1291626 (=> (not res!1794550) (not e!2715889))))

(declare-fun lt!1576355 () ListMap!2253)

(assert (=> d!1291626 (= res!1794550 (contains!11239 lt!1576355 (_1!27505 lt!1576001)))))

(declare-fun lt!1576357 () List!49119)

(assert (=> d!1291626 (= lt!1576355 (ListMap!2254 lt!1576357))))

(declare-fun lt!1576354 () Unit!72795)

(declare-fun lt!1576356 () Unit!72795)

(assert (=> d!1291626 (= lt!1576354 lt!1576356)))

(assert (=> d!1291626 (= (getValueByKey!487 lt!1576357 (_1!27505 lt!1576001)) (Some!10500 (_2!27505 lt!1576001)))))

(assert (=> d!1291626 (= lt!1576356 (lemmaContainsTupThenGetReturnValue!260 lt!1576357 (_1!27505 lt!1576001) (_2!27505 lt!1576001)))))

(assert (=> d!1291626 (= lt!1576357 (insertNoDuplicatedKeys!118 (toList!3009 lt!1575983) (_1!27505 lt!1576001) (_2!27505 lt!1576001)))))

(assert (=> d!1291626 (= (+!683 lt!1575983 lt!1576001) lt!1576355)))

(declare-fun b!4363849 () Bool)

(declare-fun res!1794549 () Bool)

(assert (=> b!4363849 (=> (not res!1794549) (not e!2715889))))

(assert (=> b!4363849 (= res!1794549 (= (getValueByKey!487 (toList!3009 lt!1576355) (_1!27505 lt!1576001)) (Some!10500 (_2!27505 lt!1576001))))))

(declare-fun b!4363850 () Bool)

(assert (=> b!4363850 (= e!2715889 (contains!11245 (toList!3009 lt!1576355) lt!1576001))))

(assert (= (and d!1291626 res!1794550) b!4363849))

(assert (= (and b!4363849 res!1794549) b!4363850))

(declare-fun m!4985093 () Bool)

(assert (=> d!1291626 m!4985093))

(declare-fun m!4985095 () Bool)

(assert (=> d!1291626 m!4985095))

(declare-fun m!4985097 () Bool)

(assert (=> d!1291626 m!4985097))

(declare-fun m!4985099 () Bool)

(assert (=> d!1291626 m!4985099))

(declare-fun m!4985101 () Bool)

(assert (=> b!4363849 m!4985101))

(declare-fun m!4985103 () Bool)

(assert (=> b!4363850 m!4985103))

(assert (=> b!4363546 d!1291626))

(declare-fun bs!636527 () Bool)

(declare-fun d!1291628 () Bool)

(assert (= bs!636527 (and d!1291628 start!423000)))

(declare-fun lambda!142137 () Int)

(assert (=> bs!636527 (= lambda!142137 lambda!142041)))

(declare-fun bs!636528 () Bool)

(assert (= bs!636528 (and d!1291628 d!1291528)))

(assert (=> bs!636528 (= lambda!142137 lambda!142058)))

(declare-fun bs!636529 () Bool)

(assert (= bs!636529 (and d!1291628 d!1291536)))

(assert (=> bs!636529 (not (= lambda!142137 lambda!142061))))

(declare-fun bs!636530 () Bool)

(assert (= bs!636530 (and d!1291628 d!1291556)))

(assert (=> bs!636530 (= lambda!142137 lambda!142086)))

(assert (=> d!1291628 (eq!283 (extractMap!572 (toList!3010 (+!684 lt!1575986 (tuple2!48425 hash!377 newBucket!200)))) (+!683 (extractMap!572 (toList!3010 lt!1575986)) (tuple2!48423 key!3918 newValue!99)))))

(declare-fun lt!1576360 () Unit!72795)

(declare-fun choose!27089 (ListLongMap!1659 (_ BitVec 64) List!49119 K!10350 V!10596 Hashable!4905) Unit!72795)

(assert (=> d!1291628 (= lt!1576360 (choose!27089 lt!1575986 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1291628 (forall!9166 (toList!3010 lt!1575986) lambda!142137)))

(assert (=> d!1291628 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!117 lt!1575986 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1576360)))

(declare-fun bs!636531 () Bool)

(assert (= bs!636531 d!1291628))

(declare-fun m!4985105 () Bool)

(assert (=> bs!636531 m!4985105))

(declare-fun m!4985107 () Bool)

(assert (=> bs!636531 m!4985107))

(declare-fun m!4985109 () Bool)

(assert (=> bs!636531 m!4985109))

(declare-fun m!4985111 () Bool)

(assert (=> bs!636531 m!4985111))

(declare-fun m!4985113 () Bool)

(assert (=> bs!636531 m!4985113))

(assert (=> bs!636531 m!4984533))

(assert (=> bs!636531 m!4984533))

(assert (=> bs!636531 m!4985107))

(assert (=> bs!636531 m!4985105))

(declare-fun m!4985115 () Bool)

(assert (=> bs!636531 m!4985115))

(assert (=> b!4363546 d!1291628))

(declare-fun d!1291630 () Bool)

(declare-fun tail!7038 (List!49120) List!49120)

(assert (=> d!1291630 (= (tail!7036 lm!1707) (ListLongMap!1660 (tail!7038 (toList!3010 lm!1707))))))

(declare-fun bs!636532 () Bool)

(assert (= bs!636532 d!1291630))

(declare-fun m!4985117 () Bool)

(assert (=> bs!636532 m!4985117))

(assert (=> b!4363546 d!1291630))

(declare-fun bs!636533 () Bool)

(declare-fun d!1291632 () Bool)

(assert (= bs!636533 (and d!1291632 d!1291628)))

(declare-fun lambda!142140 () Int)

(assert (=> bs!636533 (= lambda!142140 lambda!142137)))

(declare-fun bs!636534 () Bool)

(assert (= bs!636534 (and d!1291632 d!1291536)))

(assert (=> bs!636534 (not (= lambda!142140 lambda!142061))))

(declare-fun bs!636535 () Bool)

(assert (= bs!636535 (and d!1291632 d!1291556)))

(assert (=> bs!636535 (= lambda!142140 lambda!142086)))

(declare-fun bs!636536 () Bool)

(assert (= bs!636536 (and d!1291632 start!423000)))

(assert (=> bs!636536 (= lambda!142140 lambda!142041)))

(declare-fun bs!636537 () Bool)

(assert (= bs!636537 (and d!1291632 d!1291528)))

(assert (=> bs!636537 (= lambda!142140 lambda!142058)))

(assert (=> d!1291632 (not (containsKey!746 (apply!11365 lm!1707 (_1!27506 (h!54563 (toList!3010 lm!1707)))) key!3918))))

(declare-fun lt!1576363 () Unit!72795)

(declare-fun choose!27090 (ListLongMap!1659 K!10350 (_ BitVec 64) Hashable!4905) Unit!72795)

(assert (=> d!1291632 (= lt!1576363 (choose!27090 lm!1707 key!3918 (_1!27506 (h!54563 (toList!3010 lm!1707))) hashF!1247))))

(assert (=> d!1291632 (forall!9166 (toList!3010 lm!1707) lambda!142140)))

(assert (=> d!1291632 (= (lemmaNotSameHashThenCannotContainKey!60 lm!1707 key!3918 (_1!27506 (h!54563 (toList!3010 lm!1707))) hashF!1247) lt!1576363)))

(declare-fun bs!636538 () Bool)

(assert (= bs!636538 d!1291632))

(assert (=> bs!636538 m!4984541))

(assert (=> bs!636538 m!4984541))

(assert (=> bs!636538 m!4984543))

(declare-fun m!4985119 () Bool)

(assert (=> bs!636538 m!4985119))

(declare-fun m!4985121 () Bool)

(assert (=> bs!636538 m!4985121))

(assert (=> b!4363546 d!1291632))

(declare-fun d!1291634 () Bool)

(declare-fun e!2715890 () Bool)

(assert (=> d!1291634 e!2715890))

(declare-fun res!1794552 () Bool)

(assert (=> d!1291634 (=> (not res!1794552) (not e!2715890))))

(declare-fun lt!1576365 () ListMap!2253)

(assert (=> d!1291634 (= res!1794552 (contains!11239 lt!1576365 (_1!27505 lt!1576001)))))

(declare-fun lt!1576367 () List!49119)

(assert (=> d!1291634 (= lt!1576365 (ListMap!2254 lt!1576367))))

(declare-fun lt!1576364 () Unit!72795)

(declare-fun lt!1576366 () Unit!72795)

(assert (=> d!1291634 (= lt!1576364 lt!1576366)))

(assert (=> d!1291634 (= (getValueByKey!487 lt!1576367 (_1!27505 lt!1576001)) (Some!10500 (_2!27505 lt!1576001)))))

(assert (=> d!1291634 (= lt!1576366 (lemmaContainsTupThenGetReturnValue!260 lt!1576367 (_1!27505 lt!1576001) (_2!27505 lt!1576001)))))

(assert (=> d!1291634 (= lt!1576367 (insertNoDuplicatedKeys!118 (toList!3009 lt!1575987) (_1!27505 lt!1576001) (_2!27505 lt!1576001)))))

(assert (=> d!1291634 (= (+!683 lt!1575987 lt!1576001) lt!1576365)))

(declare-fun b!4363851 () Bool)

(declare-fun res!1794551 () Bool)

(assert (=> b!4363851 (=> (not res!1794551) (not e!2715890))))

(assert (=> b!4363851 (= res!1794551 (= (getValueByKey!487 (toList!3009 lt!1576365) (_1!27505 lt!1576001)) (Some!10500 (_2!27505 lt!1576001))))))

(declare-fun b!4363852 () Bool)

(assert (=> b!4363852 (= e!2715890 (contains!11245 (toList!3009 lt!1576365) lt!1576001))))

(assert (= (and d!1291634 res!1794552) b!4363851))

(assert (= (and b!4363851 res!1794551) b!4363852))

(declare-fun m!4985123 () Bool)

(assert (=> d!1291634 m!4985123))

(declare-fun m!4985125 () Bool)

(assert (=> d!1291634 m!4985125))

(declare-fun m!4985127 () Bool)

(assert (=> d!1291634 m!4985127))

(declare-fun m!4985129 () Bool)

(assert (=> d!1291634 m!4985129))

(declare-fun m!4985131 () Bool)

(assert (=> b!4363851 m!4985131))

(declare-fun m!4985133 () Bool)

(assert (=> b!4363852 m!4985133))

(assert (=> b!4363546 d!1291634))

(declare-fun b!4363853 () Bool)

(declare-fun e!2715896 () List!49122)

(assert (=> b!4363853 (= e!2715896 (getKeysList!142 (toList!3009 lt!1576000)))))

(declare-fun d!1291636 () Bool)

(declare-fun e!2715893 () Bool)

(assert (=> d!1291636 e!2715893))

(declare-fun res!1794554 () Bool)

(assert (=> d!1291636 (=> res!1794554 e!2715893)))

(declare-fun e!2715892 () Bool)

(assert (=> d!1291636 (= res!1794554 e!2715892)))

(declare-fun res!1794553 () Bool)

(assert (=> d!1291636 (=> (not res!1794553) (not e!2715892))))

(declare-fun lt!1576369 () Bool)

(assert (=> d!1291636 (= res!1794553 (not lt!1576369))))

(declare-fun lt!1576372 () Bool)

(assert (=> d!1291636 (= lt!1576369 lt!1576372)))

(declare-fun lt!1576368 () Unit!72795)

(declare-fun e!2715891 () Unit!72795)

(assert (=> d!1291636 (= lt!1576368 e!2715891)))

(declare-fun c!742087 () Bool)

(assert (=> d!1291636 (= c!742087 lt!1576372)))

(assert (=> d!1291636 (= lt!1576372 (containsKey!750 (toList!3009 lt!1576000) key!3918))))

(assert (=> d!1291636 (= (contains!11239 lt!1576000 key!3918) lt!1576369)))

(declare-fun b!4363854 () Bool)

(assert (=> b!4363854 (= e!2715896 (keys!16568 lt!1576000))))

(declare-fun b!4363855 () Bool)

(declare-fun e!2715895 () Bool)

(assert (=> b!4363855 (= e!2715893 e!2715895)))

(declare-fun res!1794555 () Bool)

(assert (=> b!4363855 (=> (not res!1794555) (not e!2715895))))

(assert (=> b!4363855 (= res!1794555 (isDefined!7795 (getValueByKey!487 (toList!3009 lt!1576000) key!3918)))))

(declare-fun bm!303389 () Bool)

(declare-fun call!303394 () Bool)

(assert (=> bm!303389 (= call!303394 (contains!11243 e!2715896 key!3918))))

(declare-fun c!742085 () Bool)

(assert (=> bm!303389 (= c!742085 c!742087)))

(declare-fun b!4363856 () Bool)

(declare-fun lt!1576373 () Unit!72795)

(assert (=> b!4363856 (= e!2715891 lt!1576373)))

(declare-fun lt!1576375 () Unit!72795)

(assert (=> b!4363856 (= lt!1576375 (lemmaContainsKeyImpliesGetValueByKeyDefined!398 (toList!3009 lt!1576000) key!3918))))

(assert (=> b!4363856 (isDefined!7795 (getValueByKey!487 (toList!3009 lt!1576000) key!3918))))

(declare-fun lt!1576370 () Unit!72795)

(assert (=> b!4363856 (= lt!1576370 lt!1576375)))

(assert (=> b!4363856 (= lt!1576373 (lemmaInListThenGetKeysListContains!139 (toList!3009 lt!1576000) key!3918))))

(assert (=> b!4363856 call!303394))

(declare-fun b!4363857 () Bool)

(declare-fun e!2715894 () Unit!72795)

(assert (=> b!4363857 (= e!2715891 e!2715894)))

(declare-fun c!742086 () Bool)

(assert (=> b!4363857 (= c!742086 call!303394)))

(declare-fun b!4363858 () Bool)

(declare-fun Unit!72842 () Unit!72795)

(assert (=> b!4363858 (= e!2715894 Unit!72842)))

(declare-fun b!4363859 () Bool)

(assert (=> b!4363859 (= e!2715892 (not (contains!11243 (keys!16568 lt!1576000) key!3918)))))

(declare-fun b!4363860 () Bool)

(assert (=> b!4363860 (= e!2715895 (contains!11243 (keys!16568 lt!1576000) key!3918))))

(declare-fun b!4363861 () Bool)

(assert (=> b!4363861 false))

(declare-fun lt!1576374 () Unit!72795)

(declare-fun lt!1576371 () Unit!72795)

(assert (=> b!4363861 (= lt!1576374 lt!1576371)))

(assert (=> b!4363861 (containsKey!750 (toList!3009 lt!1576000) key!3918)))

(assert (=> b!4363861 (= lt!1576371 (lemmaInGetKeysListThenContainsKey!140 (toList!3009 lt!1576000) key!3918))))

(declare-fun Unit!72843 () Unit!72795)

(assert (=> b!4363861 (= e!2715894 Unit!72843)))

(assert (= (and d!1291636 c!742087) b!4363856))

(assert (= (and d!1291636 (not c!742087)) b!4363857))

(assert (= (and b!4363857 c!742086) b!4363861))

(assert (= (and b!4363857 (not c!742086)) b!4363858))

(assert (= (or b!4363856 b!4363857) bm!303389))

(assert (= (and bm!303389 c!742085) b!4363853))

(assert (= (and bm!303389 (not c!742085)) b!4363854))

(assert (= (and d!1291636 res!1794553) b!4363859))

(assert (= (and d!1291636 (not res!1794554)) b!4363855))

(assert (= (and b!4363855 res!1794555) b!4363860))

(declare-fun m!4985135 () Bool)

(assert (=> b!4363860 m!4985135))

(assert (=> b!4363860 m!4985135))

(declare-fun m!4985137 () Bool)

(assert (=> b!4363860 m!4985137))

(declare-fun m!4985139 () Bool)

(assert (=> b!4363855 m!4985139))

(assert (=> b!4363855 m!4985139))

(declare-fun m!4985141 () Bool)

(assert (=> b!4363855 m!4985141))

(declare-fun m!4985143 () Bool)

(assert (=> b!4363861 m!4985143))

(declare-fun m!4985145 () Bool)

(assert (=> b!4363861 m!4985145))

(assert (=> b!4363854 m!4985135))

(declare-fun m!4985147 () Bool)

(assert (=> b!4363856 m!4985147))

(assert (=> b!4363856 m!4985139))

(assert (=> b!4363856 m!4985139))

(assert (=> b!4363856 m!4985141))

(declare-fun m!4985149 () Bool)

(assert (=> b!4363856 m!4985149))

(assert (=> d!1291636 m!4985143))

(declare-fun m!4985151 () Bool)

(assert (=> bm!303389 m!4985151))

(declare-fun m!4985153 () Bool)

(assert (=> b!4363853 m!4985153))

(assert (=> b!4363859 m!4985135))

(assert (=> b!4363859 m!4985135))

(assert (=> b!4363859 m!4985137))

(assert (=> b!4363546 d!1291636))

(declare-fun d!1291638 () Bool)

(assert (=> d!1291638 (= (apply!11365 lm!1707 (_1!27506 (h!54563 (toList!3010 lm!1707)))) (get!15923 (getValueByKey!486 (toList!3010 lm!1707) (_1!27506 (h!54563 (toList!3010 lm!1707))))))))

(declare-fun bs!636539 () Bool)

(assert (= bs!636539 d!1291638))

(declare-fun m!4985155 () Bool)

(assert (=> bs!636539 m!4985155))

(assert (=> bs!636539 m!4985155))

(declare-fun m!4985157 () Bool)

(assert (=> bs!636539 m!4985157))

(assert (=> b!4363546 d!1291638))

(declare-fun d!1291640 () Bool)

(assert (=> d!1291640 (eq!283 (addToMapMapFromBucket!209 (_2!27506 (h!54563 (toList!3010 lm!1707))) (+!683 lt!1575987 (tuple2!48423 key!3918 newValue!99))) (+!683 (addToMapMapFromBucket!209 (_2!27506 (h!54563 (toList!3010 lm!1707))) lt!1575987) (tuple2!48423 key!3918 newValue!99)))))

(declare-fun lt!1576378 () Unit!72795)

(declare-fun choose!27094 (ListMap!2253 K!10350 V!10596 List!49119) Unit!72795)

(assert (=> d!1291640 (= lt!1576378 (choose!27094 lt!1575987 key!3918 newValue!99 (_2!27506 (h!54563 (toList!3010 lm!1707)))))))

(assert (=> d!1291640 (not (containsKey!746 (_2!27506 (h!54563 (toList!3010 lm!1707))) key!3918))))

(assert (=> d!1291640 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!92 lt!1575987 key!3918 newValue!99 (_2!27506 (h!54563 (toList!3010 lm!1707)))) lt!1576378)))

(declare-fun bs!636540 () Bool)

(assert (= bs!636540 d!1291640))

(declare-fun m!4985159 () Bool)

(assert (=> bs!636540 m!4985159))

(declare-fun m!4985161 () Bool)

(assert (=> bs!636540 m!4985161))

(declare-fun m!4985163 () Bool)

(assert (=> bs!636540 m!4985163))

(assert (=> bs!636540 m!4984515))

(declare-fun m!4985165 () Bool)

(assert (=> bs!636540 m!4985165))

(assert (=> bs!636540 m!4984515))

(assert (=> bs!636540 m!4985161))

(assert (=> bs!636540 m!4985165))

(assert (=> bs!636540 m!4985159))

(assert (=> bs!636540 m!4984489))

(declare-fun m!4985167 () Bool)

(assert (=> bs!636540 m!4985167))

(assert (=> b!4363546 d!1291640))

(declare-fun bs!636541 () Bool)

(declare-fun d!1291642 () Bool)

(assert (= bs!636541 (and d!1291642 d!1291628)))

(declare-fun lambda!142141 () Int)

(assert (=> bs!636541 (= lambda!142141 lambda!142137)))

(declare-fun bs!636542 () Bool)

(assert (= bs!636542 (and d!1291642 d!1291536)))

(assert (=> bs!636542 (not (= lambda!142141 lambda!142061))))

(declare-fun bs!636543 () Bool)

(assert (= bs!636543 (and d!1291642 d!1291556)))

(assert (=> bs!636543 (= lambda!142141 lambda!142086)))

(declare-fun bs!636544 () Bool)

(assert (= bs!636544 (and d!1291642 start!423000)))

(assert (=> bs!636544 (= lambda!142141 lambda!142041)))

(declare-fun bs!636545 () Bool)

(assert (= bs!636545 (and d!1291642 d!1291528)))

(assert (=> bs!636545 (= lambda!142141 lambda!142058)))

(declare-fun bs!636546 () Bool)

(assert (= bs!636546 (and d!1291642 d!1291632)))

(assert (=> bs!636546 (= lambda!142141 lambda!142140)))

(declare-fun lt!1576379 () ListMap!2253)

(assert (=> d!1291642 (invariantList!694 (toList!3009 lt!1576379))))

(declare-fun e!2715897 () ListMap!2253)

(assert (=> d!1291642 (= lt!1576379 e!2715897)))

(declare-fun c!742088 () Bool)

(assert (=> d!1291642 (= c!742088 ((_ is Cons!48996) (toList!3010 lt!1576002)))))

(assert (=> d!1291642 (forall!9166 (toList!3010 lt!1576002) lambda!142141)))

(assert (=> d!1291642 (= (extractMap!572 (toList!3010 lt!1576002)) lt!1576379)))

(declare-fun b!4363862 () Bool)

(assert (=> b!4363862 (= e!2715897 (addToMapMapFromBucket!209 (_2!27506 (h!54563 (toList!3010 lt!1576002))) (extractMap!572 (t!356040 (toList!3010 lt!1576002)))))))

(declare-fun b!4363863 () Bool)

(assert (=> b!4363863 (= e!2715897 (ListMap!2254 Nil!48995))))

(assert (= (and d!1291642 c!742088) b!4363862))

(assert (= (and d!1291642 (not c!742088)) b!4363863))

(declare-fun m!4985169 () Bool)

(assert (=> d!1291642 m!4985169))

(declare-fun m!4985171 () Bool)

(assert (=> d!1291642 m!4985171))

(declare-fun m!4985173 () Bool)

(assert (=> b!4363862 m!4985173))

(assert (=> b!4363862 m!4985173))

(declare-fun m!4985175 () Bool)

(assert (=> b!4363862 m!4985175))

(assert (=> b!4363546 d!1291642))

(declare-fun d!1291644 () Bool)

(assert (=> d!1291644 (= (eq!283 lt!1575983 lt!1575998) (= (content!7758 (toList!3009 lt!1575983)) (content!7758 (toList!3009 lt!1575998))))))

(declare-fun bs!636547 () Bool)

(assert (= bs!636547 d!1291644))

(declare-fun m!4985177 () Bool)

(assert (=> bs!636547 m!4985177))

(declare-fun m!4985179 () Bool)

(assert (=> bs!636547 m!4985179))

(assert (=> b!4363546 d!1291644))

(declare-fun d!1291646 () Bool)

(declare-fun res!1794560 () Bool)

(declare-fun e!2715902 () Bool)

(assert (=> d!1291646 (=> res!1794560 e!2715902)))

(assert (=> d!1291646 (= res!1794560 (and ((_ is Cons!48995) (apply!11365 lm!1707 (_1!27506 (h!54563 (toList!3010 lm!1707))))) (= (_1!27505 (h!54562 (apply!11365 lm!1707 (_1!27506 (h!54563 (toList!3010 lm!1707)))))) key!3918)))))

(assert (=> d!1291646 (= (containsKey!746 (apply!11365 lm!1707 (_1!27506 (h!54563 (toList!3010 lm!1707)))) key!3918) e!2715902)))

(declare-fun b!4363868 () Bool)

(declare-fun e!2715903 () Bool)

(assert (=> b!4363868 (= e!2715902 e!2715903)))

(declare-fun res!1794561 () Bool)

(assert (=> b!4363868 (=> (not res!1794561) (not e!2715903))))

(assert (=> b!4363868 (= res!1794561 ((_ is Cons!48995) (apply!11365 lm!1707 (_1!27506 (h!54563 (toList!3010 lm!1707))))))))

(declare-fun b!4363869 () Bool)

(assert (=> b!4363869 (= e!2715903 (containsKey!746 (t!356039 (apply!11365 lm!1707 (_1!27506 (h!54563 (toList!3010 lm!1707))))) key!3918))))

(assert (= (and d!1291646 (not res!1794560)) b!4363868))

(assert (= (and b!4363868 res!1794561) b!4363869))

(declare-fun m!4985181 () Bool)

(assert (=> b!4363869 m!4985181))

(assert (=> b!4363546 d!1291646))

(declare-fun bs!636548 () Bool)

(declare-fun b!4363874 () Bool)

(assert (= bs!636548 (and b!4363874 b!4363846)))

(declare-fun lambda!142142 () Int)

(assert (=> bs!636548 (= (= lt!1576003 lt!1575987) (= lambda!142142 lambda!142131))))

(declare-fun bs!636549 () Bool)

(assert (= bs!636549 (and b!4363874 b!4363843)))

(assert (=> bs!636549 (= (= lt!1576003 lt!1575987) (= lambda!142142 lambda!142132))))

(assert (=> bs!636549 (= (= lt!1576003 lt!1576352) (= lambda!142142 lambda!142133))))

(declare-fun bs!636550 () Bool)

(assert (= bs!636550 (and b!4363874 d!1291564)))

(assert (=> bs!636550 (= (= lt!1576003 lt!1576351) (= lambda!142142 lambda!142134))))

(assert (=> b!4363874 true))

(declare-fun bs!636551 () Bool)

(declare-fun b!4363871 () Bool)

(assert (= bs!636551 (and b!4363871 d!1291564)))

(declare-fun lambda!142143 () Int)

(assert (=> bs!636551 (= (= lt!1576003 lt!1576351) (= lambda!142143 lambda!142134))))

(declare-fun bs!636552 () Bool)

(assert (= bs!636552 (and b!4363871 b!4363874)))

(assert (=> bs!636552 (= lambda!142143 lambda!142142)))

(declare-fun bs!636553 () Bool)

(assert (= bs!636553 (and b!4363871 b!4363843)))

(assert (=> bs!636553 (= (= lt!1576003 lt!1575987) (= lambda!142143 lambda!142132))))

(declare-fun bs!636554 () Bool)

(assert (= bs!636554 (and b!4363871 b!4363846)))

(assert (=> bs!636554 (= (= lt!1576003 lt!1575987) (= lambda!142143 lambda!142131))))

(assert (=> bs!636553 (= (= lt!1576003 lt!1576352) (= lambda!142143 lambda!142133))))

(assert (=> b!4363871 true))

(declare-fun lt!1576399 () ListMap!2253)

(declare-fun lambda!142144 () Int)

(assert (=> bs!636551 (= (= lt!1576399 lt!1576351) (= lambda!142144 lambda!142134))))

(assert (=> bs!636552 (= (= lt!1576399 lt!1576003) (= lambda!142144 lambda!142142))))

(assert (=> b!4363871 (= (= lt!1576399 lt!1576003) (= lambda!142144 lambda!142143))))

(assert (=> bs!636553 (= (= lt!1576399 lt!1575987) (= lambda!142144 lambda!142132))))

(assert (=> bs!636554 (= (= lt!1576399 lt!1575987) (= lambda!142144 lambda!142131))))

(assert (=> bs!636553 (= (= lt!1576399 lt!1576352) (= lambda!142144 lambda!142133))))

(assert (=> b!4363871 true))

(declare-fun bs!636555 () Bool)

(declare-fun d!1291648 () Bool)

(assert (= bs!636555 (and d!1291648 d!1291564)))

(declare-fun lambda!142145 () Int)

(declare-fun lt!1576398 () ListMap!2253)

(assert (=> bs!636555 (= (= lt!1576398 lt!1576351) (= lambda!142145 lambda!142134))))

(declare-fun bs!636556 () Bool)

(assert (= bs!636556 (and d!1291648 b!4363871)))

(assert (=> bs!636556 (= (= lt!1576398 lt!1576399) (= lambda!142145 lambda!142144))))

(declare-fun bs!636557 () Bool)

(assert (= bs!636557 (and d!1291648 b!4363874)))

(assert (=> bs!636557 (= (= lt!1576398 lt!1576003) (= lambda!142145 lambda!142142))))

(assert (=> bs!636556 (= (= lt!1576398 lt!1576003) (= lambda!142145 lambda!142143))))

(declare-fun bs!636558 () Bool)

(assert (= bs!636558 (and d!1291648 b!4363843)))

(assert (=> bs!636558 (= (= lt!1576398 lt!1575987) (= lambda!142145 lambda!142132))))

(declare-fun bs!636559 () Bool)

(assert (= bs!636559 (and d!1291648 b!4363846)))

(assert (=> bs!636559 (= (= lt!1576398 lt!1575987) (= lambda!142145 lambda!142131))))

(assert (=> bs!636558 (= (= lt!1576398 lt!1576352) (= lambda!142145 lambda!142133))))

(assert (=> d!1291648 true))

(declare-fun call!303397 () Bool)

(declare-fun c!742089 () Bool)

(declare-fun bm!303390 () Bool)

(assert (=> bm!303390 (= call!303397 (forall!9168 (toList!3009 lt!1576003) (ite c!742089 lambda!142142 lambda!142143)))))

(declare-fun b!4363870 () Bool)

(declare-fun e!2715905 () Bool)

(assert (=> b!4363870 (= e!2715905 (invariantList!694 (toList!3009 lt!1576398)))))

(declare-fun e!2715904 () ListMap!2253)

(assert (=> b!4363871 (= e!2715904 lt!1576399)))

(declare-fun lt!1576391 () ListMap!2253)

(assert (=> b!4363871 (= lt!1576391 (+!683 lt!1576003 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))))))

(assert (=> b!4363871 (= lt!1576399 (addToMapMapFromBucket!209 (t!356039 (_2!27506 (h!54563 (toList!3010 lm!1707)))) (+!683 lt!1576003 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707)))))))))

(declare-fun lt!1576390 () Unit!72795)

(declare-fun call!303395 () Unit!72795)

(assert (=> b!4363871 (= lt!1576390 call!303395)))

(assert (=> b!4363871 call!303397))

(declare-fun lt!1576394 () Unit!72795)

(assert (=> b!4363871 (= lt!1576394 lt!1576390)))

(declare-fun call!303396 () Bool)

(assert (=> b!4363871 call!303396))

(declare-fun lt!1576386 () Unit!72795)

(declare-fun Unit!72844 () Unit!72795)

(assert (=> b!4363871 (= lt!1576386 Unit!72844)))

(assert (=> b!4363871 (forall!9168 (t!356039 (_2!27506 (h!54563 (toList!3010 lm!1707)))) lambda!142144)))

(declare-fun lt!1576395 () Unit!72795)

(declare-fun Unit!72845 () Unit!72795)

(assert (=> b!4363871 (= lt!1576395 Unit!72845)))

(declare-fun lt!1576381 () Unit!72795)

(declare-fun Unit!72846 () Unit!72795)

(assert (=> b!4363871 (= lt!1576381 Unit!72846)))

(declare-fun lt!1576389 () Unit!72795)

(assert (=> b!4363871 (= lt!1576389 (forallContained!1809 (toList!3009 lt!1576391) lambda!142144 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))))))

(assert (=> b!4363871 (contains!11239 lt!1576391 (_1!27505 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))))))

(declare-fun lt!1576396 () Unit!72795)

(declare-fun Unit!72847 () Unit!72795)

(assert (=> b!4363871 (= lt!1576396 Unit!72847)))

(assert (=> b!4363871 (contains!11239 lt!1576399 (_1!27505 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))))))

(declare-fun lt!1576387 () Unit!72795)

(declare-fun Unit!72848 () Unit!72795)

(assert (=> b!4363871 (= lt!1576387 Unit!72848)))

(assert (=> b!4363871 (forall!9168 (_2!27506 (h!54563 (toList!3010 lm!1707))) lambda!142144)))

(declare-fun lt!1576400 () Unit!72795)

(declare-fun Unit!72849 () Unit!72795)

(assert (=> b!4363871 (= lt!1576400 Unit!72849)))

(assert (=> b!4363871 (forall!9168 (toList!3009 lt!1576391) lambda!142144)))

(declare-fun lt!1576383 () Unit!72795)

(declare-fun Unit!72850 () Unit!72795)

(assert (=> b!4363871 (= lt!1576383 Unit!72850)))

(declare-fun lt!1576385 () Unit!72795)

(declare-fun Unit!72851 () Unit!72795)

(assert (=> b!4363871 (= lt!1576385 Unit!72851)))

(declare-fun lt!1576382 () Unit!72795)

(assert (=> b!4363871 (= lt!1576382 (addForallContainsKeyThenBeforeAdding!77 lt!1576003 lt!1576399 (_1!27505 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))) (_2!27505 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707)))))))))

(assert (=> b!4363871 (forall!9168 (toList!3009 lt!1576003) lambda!142144)))

(declare-fun lt!1576388 () Unit!72795)

(assert (=> b!4363871 (= lt!1576388 lt!1576382)))

(assert (=> b!4363871 (forall!9168 (toList!3009 lt!1576003) lambda!142144)))

(declare-fun lt!1576380 () Unit!72795)

(declare-fun Unit!72852 () Unit!72795)

(assert (=> b!4363871 (= lt!1576380 Unit!72852)))

(declare-fun res!1794564 () Bool)

(assert (=> b!4363871 (= res!1794564 (forall!9168 (_2!27506 (h!54563 (toList!3010 lm!1707))) lambda!142144))))

(declare-fun e!2715906 () Bool)

(assert (=> b!4363871 (=> (not res!1794564) (not e!2715906))))

(assert (=> b!4363871 e!2715906))

(declare-fun lt!1576393 () Unit!72795)

(declare-fun Unit!72853 () Unit!72795)

(assert (=> b!4363871 (= lt!1576393 Unit!72853)))

(declare-fun bm!303391 () Bool)

(assert (=> bm!303391 (= call!303396 (forall!9168 (ite c!742089 (toList!3009 lt!1576003) (toList!3009 lt!1576391)) (ite c!742089 lambda!142142 lambda!142144)))))

(assert (=> d!1291648 e!2715905))

(declare-fun res!1794562 () Bool)

(assert (=> d!1291648 (=> (not res!1794562) (not e!2715905))))

(assert (=> d!1291648 (= res!1794562 (forall!9168 (_2!27506 (h!54563 (toList!3010 lm!1707))) lambda!142145))))

(assert (=> d!1291648 (= lt!1576398 e!2715904)))

(assert (=> d!1291648 (= c!742089 ((_ is Nil!48995) (_2!27506 (h!54563 (toList!3010 lm!1707)))))))

(assert (=> d!1291648 (noDuplicateKeys!513 (_2!27506 (h!54563 (toList!3010 lm!1707))))))

(assert (=> d!1291648 (= (addToMapMapFromBucket!209 (_2!27506 (h!54563 (toList!3010 lm!1707))) lt!1576003) lt!1576398)))

(declare-fun bm!303392 () Bool)

(assert (=> bm!303392 (= call!303395 (lemmaContainsAllItsOwnKeys!77 lt!1576003))))

(declare-fun b!4363872 () Bool)

(assert (=> b!4363872 (= e!2715906 (forall!9168 (toList!3009 lt!1576003) lambda!142144))))

(declare-fun b!4363873 () Bool)

(declare-fun res!1794563 () Bool)

(assert (=> b!4363873 (=> (not res!1794563) (not e!2715905))))

(assert (=> b!4363873 (= res!1794563 (forall!9168 (toList!3009 lt!1576003) lambda!142145))))

(assert (=> b!4363874 (= e!2715904 lt!1576003)))

(declare-fun lt!1576397 () Unit!72795)

(assert (=> b!4363874 (= lt!1576397 call!303395)))

(assert (=> b!4363874 call!303396))

(declare-fun lt!1576384 () Unit!72795)

(assert (=> b!4363874 (= lt!1576384 lt!1576397)))

(assert (=> b!4363874 call!303397))

(declare-fun lt!1576392 () Unit!72795)

(declare-fun Unit!72854 () Unit!72795)

(assert (=> b!4363874 (= lt!1576392 Unit!72854)))

(assert (= (and d!1291648 c!742089) b!4363874))

(assert (= (and d!1291648 (not c!742089)) b!4363871))

(assert (= (and b!4363871 res!1794564) b!4363872))

(assert (= (or b!4363874 b!4363871) bm!303392))

(assert (= (or b!4363874 b!4363871) bm!303391))

(assert (= (or b!4363874 b!4363871) bm!303390))

(assert (= (and d!1291648 res!1794562) b!4363873))

(assert (= (and b!4363873 res!1794563) b!4363870))

(declare-fun m!4985183 () Bool)

(assert (=> bm!303391 m!4985183))

(declare-fun m!4985185 () Bool)

(assert (=> d!1291648 m!4985185))

(assert (=> d!1291648 m!4984807))

(declare-fun m!4985187 () Bool)

(assert (=> bm!303392 m!4985187))

(declare-fun m!4985189 () Bool)

(assert (=> b!4363873 m!4985189))

(declare-fun m!4985191 () Bool)

(assert (=> b!4363871 m!4985191))

(declare-fun m!4985193 () Bool)

(assert (=> b!4363871 m!4985193))

(declare-fun m!4985195 () Bool)

(assert (=> b!4363871 m!4985195))

(declare-fun m!4985197 () Bool)

(assert (=> b!4363871 m!4985197))

(declare-fun m!4985199 () Bool)

(assert (=> b!4363871 m!4985199))

(declare-fun m!4985201 () Bool)

(assert (=> b!4363871 m!4985201))

(assert (=> b!4363871 m!4985195))

(declare-fun m!4985203 () Bool)

(assert (=> b!4363871 m!4985203))

(declare-fun m!4985205 () Bool)

(assert (=> b!4363871 m!4985205))

(declare-fun m!4985207 () Bool)

(assert (=> b!4363871 m!4985207))

(assert (=> b!4363871 m!4985201))

(assert (=> b!4363871 m!4985193))

(declare-fun m!4985209 () Bool)

(assert (=> b!4363871 m!4985209))

(declare-fun m!4985211 () Bool)

(assert (=> b!4363870 m!4985211))

(assert (=> b!4363872 m!4985201))

(declare-fun m!4985213 () Bool)

(assert (=> bm!303390 m!4985213))

(assert (=> b!4363546 d!1291648))

(declare-fun d!1291650 () Bool)

(declare-fun e!2715909 () Bool)

(assert (=> d!1291650 e!2715909))

(declare-fun res!1794569 () Bool)

(assert (=> d!1291650 (=> (not res!1794569) (not e!2715909))))

(declare-fun lt!1576409 () ListLongMap!1659)

(assert (=> d!1291650 (= res!1794569 (contains!11240 lt!1576409 (_1!27506 lt!1575992)))))

(declare-fun lt!1576411 () List!49120)

(assert (=> d!1291650 (= lt!1576409 (ListLongMap!1660 lt!1576411))))

(declare-fun lt!1576410 () Unit!72795)

(declare-fun lt!1576412 () Unit!72795)

(assert (=> d!1291650 (= lt!1576410 lt!1576412)))

(assert (=> d!1291650 (= (getValueByKey!486 lt!1576411 (_1!27506 lt!1575992)) (Some!10499 (_2!27506 lt!1575992)))))

(declare-fun lemmaContainsTupThenGetReturnValue!261 (List!49120 (_ BitVec 64) List!49119) Unit!72795)

(assert (=> d!1291650 (= lt!1576412 (lemmaContainsTupThenGetReturnValue!261 lt!1576411 (_1!27506 lt!1575992) (_2!27506 lt!1575992)))))

(declare-fun insertStrictlySorted!151 (List!49120 (_ BitVec 64) List!49119) List!49120)

(assert (=> d!1291650 (= lt!1576411 (insertStrictlySorted!151 (toList!3010 lt!1575986) (_1!27506 lt!1575992) (_2!27506 lt!1575992)))))

(assert (=> d!1291650 (= (+!684 lt!1575986 lt!1575992) lt!1576409)))

(declare-fun b!4363879 () Bool)

(declare-fun res!1794570 () Bool)

(assert (=> b!4363879 (=> (not res!1794570) (not e!2715909))))

(assert (=> b!4363879 (= res!1794570 (= (getValueByKey!486 (toList!3010 lt!1576409) (_1!27506 lt!1575992)) (Some!10499 (_2!27506 lt!1575992))))))

(declare-fun b!4363880 () Bool)

(assert (=> b!4363880 (= e!2715909 (contains!11241 (toList!3010 lt!1576409) lt!1575992))))

(assert (= (and d!1291650 res!1794569) b!4363879))

(assert (= (and b!4363879 res!1794570) b!4363880))

(declare-fun m!4985215 () Bool)

(assert (=> d!1291650 m!4985215))

(declare-fun m!4985217 () Bool)

(assert (=> d!1291650 m!4985217))

(declare-fun m!4985219 () Bool)

(assert (=> d!1291650 m!4985219))

(declare-fun m!4985221 () Bool)

(assert (=> d!1291650 m!4985221))

(declare-fun m!4985223 () Bool)

(assert (=> b!4363879 m!4985223))

(declare-fun m!4985225 () Bool)

(assert (=> b!4363880 m!4985225))

(assert (=> b!4363546 d!1291650))

(declare-fun bs!636560 () Bool)

(declare-fun d!1291652 () Bool)

(assert (= bs!636560 (and d!1291652 d!1291628)))

(declare-fun lambda!142146 () Int)

(assert (=> bs!636560 (= lambda!142146 lambda!142137)))

(declare-fun bs!636561 () Bool)

(assert (= bs!636561 (and d!1291652 d!1291536)))

(assert (=> bs!636561 (not (= lambda!142146 lambda!142061))))

(declare-fun bs!636562 () Bool)

(assert (= bs!636562 (and d!1291652 d!1291556)))

(assert (=> bs!636562 (= lambda!142146 lambda!142086)))

(declare-fun bs!636563 () Bool)

(assert (= bs!636563 (and d!1291652 start!423000)))

(assert (=> bs!636563 (= lambda!142146 lambda!142041)))

(declare-fun bs!636564 () Bool)

(assert (= bs!636564 (and d!1291652 d!1291528)))

(assert (=> bs!636564 (= lambda!142146 lambda!142058)))

(declare-fun bs!636565 () Bool)

(assert (= bs!636565 (and d!1291652 d!1291642)))

(assert (=> bs!636565 (= lambda!142146 lambda!142141)))

(declare-fun bs!636566 () Bool)

(assert (= bs!636566 (and d!1291652 d!1291632)))

(assert (=> bs!636566 (= lambda!142146 lambda!142140)))

(declare-fun lt!1576413 () ListMap!2253)

(assert (=> d!1291652 (invariantList!694 (toList!3009 lt!1576413))))

(declare-fun e!2715910 () ListMap!2253)

(assert (=> d!1291652 (= lt!1576413 e!2715910)))

(declare-fun c!742090 () Bool)

(assert (=> d!1291652 (= c!742090 ((_ is Cons!48996) (t!356040 (toList!3010 lm!1707))))))

(assert (=> d!1291652 (forall!9166 (t!356040 (toList!3010 lm!1707)) lambda!142146)))

(assert (=> d!1291652 (= (extractMap!572 (t!356040 (toList!3010 lm!1707))) lt!1576413)))

(declare-fun b!4363881 () Bool)

(assert (=> b!4363881 (= e!2715910 (addToMapMapFromBucket!209 (_2!27506 (h!54563 (t!356040 (toList!3010 lm!1707)))) (extractMap!572 (t!356040 (t!356040 (toList!3010 lm!1707))))))))

(declare-fun b!4363882 () Bool)

(assert (=> b!4363882 (= e!2715910 (ListMap!2254 Nil!48995))))

(assert (= (and d!1291652 c!742090) b!4363881))

(assert (= (and d!1291652 (not c!742090)) b!4363882))

(declare-fun m!4985227 () Bool)

(assert (=> d!1291652 m!4985227))

(declare-fun m!4985229 () Bool)

(assert (=> d!1291652 m!4985229))

(declare-fun m!4985231 () Bool)

(assert (=> b!4363881 m!4985231))

(assert (=> b!4363881 m!4985231))

(declare-fun m!4985233 () Bool)

(assert (=> b!4363881 m!4985233))

(assert (=> b!4363546 d!1291652))

(declare-fun d!1291654 () Bool)

(assert (=> d!1291654 (= (eq!283 lt!1575985 lt!1576003) (= (content!7758 (toList!3009 lt!1575985)) (content!7758 (toList!3009 lt!1576003))))))

(declare-fun bs!636567 () Bool)

(assert (= bs!636567 d!1291654))

(declare-fun m!4985235 () Bool)

(assert (=> bs!636567 m!4985235))

(declare-fun m!4985237 () Bool)

(assert (=> bs!636567 m!4985237))

(assert (=> b!4363546 d!1291654))

(assert (=> b!4363549 d!1291532))

(declare-fun d!1291656 () Bool)

(declare-fun e!2715911 () Bool)

(assert (=> d!1291656 e!2715911))

(declare-fun res!1794571 () Bool)

(assert (=> d!1291656 (=> (not res!1794571) (not e!2715911))))

(declare-fun lt!1576414 () ListLongMap!1659)

(assert (=> d!1291656 (= res!1794571 (contains!11240 lt!1576414 (_1!27506 lt!1575992)))))

(declare-fun lt!1576416 () List!49120)

(assert (=> d!1291656 (= lt!1576414 (ListLongMap!1660 lt!1576416))))

(declare-fun lt!1576415 () Unit!72795)

(declare-fun lt!1576417 () Unit!72795)

(assert (=> d!1291656 (= lt!1576415 lt!1576417)))

(assert (=> d!1291656 (= (getValueByKey!486 lt!1576416 (_1!27506 lt!1575992)) (Some!10499 (_2!27506 lt!1575992)))))

(assert (=> d!1291656 (= lt!1576417 (lemmaContainsTupThenGetReturnValue!261 lt!1576416 (_1!27506 lt!1575992) (_2!27506 lt!1575992)))))

(assert (=> d!1291656 (= lt!1576416 (insertStrictlySorted!151 (toList!3010 lm!1707) (_1!27506 lt!1575992) (_2!27506 lt!1575992)))))

(assert (=> d!1291656 (= (+!684 lm!1707 lt!1575992) lt!1576414)))

(declare-fun b!4363883 () Bool)

(declare-fun res!1794572 () Bool)

(assert (=> b!4363883 (=> (not res!1794572) (not e!2715911))))

(assert (=> b!4363883 (= res!1794572 (= (getValueByKey!486 (toList!3010 lt!1576414) (_1!27506 lt!1575992)) (Some!10499 (_2!27506 lt!1575992))))))

(declare-fun b!4363884 () Bool)

(assert (=> b!4363884 (= e!2715911 (contains!11241 (toList!3010 lt!1576414) lt!1575992))))

(assert (= (and d!1291656 res!1794571) b!4363883))

(assert (= (and b!4363883 res!1794572) b!4363884))

(declare-fun m!4985239 () Bool)

(assert (=> d!1291656 m!4985239))

(declare-fun m!4985241 () Bool)

(assert (=> d!1291656 m!4985241))

(declare-fun m!4985243 () Bool)

(assert (=> d!1291656 m!4985243))

(declare-fun m!4985245 () Bool)

(assert (=> d!1291656 m!4985245))

(declare-fun m!4985247 () Bool)

(assert (=> b!4363883 m!4985247))

(declare-fun m!4985249 () Bool)

(assert (=> b!4363884 m!4985249))

(assert (=> b!4363549 d!1291656))

(declare-fun d!1291658 () Bool)

(assert (=> d!1291658 (forall!9166 (toList!3010 (+!684 lm!1707 (tuple2!48425 hash!377 newBucket!200))) lambda!142041)))

(declare-fun lt!1576420 () Unit!72795)

(declare-fun choose!27095 (ListLongMap!1659 Int (_ BitVec 64) List!49119) Unit!72795)

(assert (=> d!1291658 (= lt!1576420 (choose!27095 lm!1707 lambda!142041 hash!377 newBucket!200))))

(declare-fun e!2715914 () Bool)

(assert (=> d!1291658 e!2715914))

(declare-fun res!1794575 () Bool)

(assert (=> d!1291658 (=> (not res!1794575) (not e!2715914))))

(assert (=> d!1291658 (= res!1794575 (forall!9166 (toList!3010 lm!1707) lambda!142041))))

(assert (=> d!1291658 (= (addValidProp!167 lm!1707 lambda!142041 hash!377 newBucket!200) lt!1576420)))

(declare-fun b!4363888 () Bool)

(assert (=> b!4363888 (= e!2715914 (dynLambda!20657 lambda!142041 (tuple2!48425 hash!377 newBucket!200)))))

(assert (= (and d!1291658 res!1794575) b!4363888))

(declare-fun b_lambda!132189 () Bool)

(assert (=> (not b_lambda!132189) (not b!4363888)))

(declare-fun m!4985251 () Bool)

(assert (=> d!1291658 m!4985251))

(declare-fun m!4985253 () Bool)

(assert (=> d!1291658 m!4985253))

(declare-fun m!4985255 () Bool)

(assert (=> d!1291658 m!4985255))

(assert (=> d!1291658 m!4984493))

(declare-fun m!4985257 () Bool)

(assert (=> b!4363888 m!4985257))

(assert (=> b!4363549 d!1291658))

(declare-fun d!1291660 () Bool)

(declare-fun res!1794576 () Bool)

(declare-fun e!2715915 () Bool)

(assert (=> d!1291660 (=> res!1794576 e!2715915)))

(assert (=> d!1291660 (= res!1794576 ((_ is Nil!48996) (toList!3010 lm!1707)))))

(assert (=> d!1291660 (= (forall!9166 (toList!3010 lm!1707) lambda!142041) e!2715915)))

(declare-fun b!4363889 () Bool)

(declare-fun e!2715916 () Bool)

(assert (=> b!4363889 (= e!2715915 e!2715916)))

(declare-fun res!1794577 () Bool)

(assert (=> b!4363889 (=> (not res!1794577) (not e!2715916))))

(assert (=> b!4363889 (= res!1794577 (dynLambda!20657 lambda!142041 (h!54563 (toList!3010 lm!1707))))))

(declare-fun b!4363890 () Bool)

(assert (=> b!4363890 (= e!2715916 (forall!9166 (t!356040 (toList!3010 lm!1707)) lambda!142041))))

(assert (= (and d!1291660 (not res!1794576)) b!4363889))

(assert (= (and b!4363889 res!1794577) b!4363890))

(declare-fun b_lambda!132191 () Bool)

(assert (=> (not b_lambda!132191) (not b!4363889)))

(declare-fun m!4985259 () Bool)

(assert (=> b!4363889 m!4985259))

(declare-fun m!4985261 () Bool)

(assert (=> b!4363890 m!4985261))

(assert (=> b!4363549 d!1291660))

(assert (=> start!423000 d!1291660))

(declare-fun d!1291662 () Bool)

(assert (=> d!1291662 (= (inv!64536 lm!1707) (isStrictlySorted!119 (toList!3010 lm!1707)))))

(declare-fun bs!636568 () Bool)

(assert (= bs!636568 d!1291662))

(assert (=> bs!636568 m!4984763))

(assert (=> start!423000 d!1291662))

(declare-fun d!1291664 () Bool)

(declare-fun res!1794578 () Bool)

(declare-fun e!2715917 () Bool)

(assert (=> d!1291664 (=> res!1794578 e!2715917)))

(assert (=> d!1291664 (= res!1794578 (and ((_ is Cons!48995) (_2!27506 (h!54563 (toList!3010 lm!1707)))) (= (_1!27505 (h!54562 (_2!27506 (h!54563 (toList!3010 lm!1707))))) key!3918)))))

(assert (=> d!1291664 (= (containsKey!746 (_2!27506 (h!54563 (toList!3010 lm!1707))) key!3918) e!2715917)))

(declare-fun b!4363891 () Bool)

(declare-fun e!2715918 () Bool)

(assert (=> b!4363891 (= e!2715917 e!2715918)))

(declare-fun res!1794579 () Bool)

(assert (=> b!4363891 (=> (not res!1794579) (not e!2715918))))

(assert (=> b!4363891 (= res!1794579 ((_ is Cons!48995) (_2!27506 (h!54563 (toList!3010 lm!1707)))))))

(declare-fun b!4363892 () Bool)

(assert (=> b!4363892 (= e!2715918 (containsKey!746 (t!356039 (_2!27506 (h!54563 (toList!3010 lm!1707)))) key!3918))))

(assert (= (and d!1291664 (not res!1794578)) b!4363891))

(assert (= (and b!4363891 res!1794579) b!4363892))

(declare-fun m!4985263 () Bool)

(assert (=> b!4363892 m!4985263))

(assert (=> b!4363550 d!1291664))

(declare-fun bs!636569 () Bool)

(declare-fun d!1291666 () Bool)

(assert (= bs!636569 (and d!1291666 d!1291564)))

(declare-fun lambda!142149 () Int)

(assert (=> bs!636569 (not (= lambda!142149 lambda!142134))))

(declare-fun bs!636570 () Bool)

(assert (= bs!636570 (and d!1291666 b!4363871)))

(assert (=> bs!636570 (not (= lambda!142149 lambda!142144))))

(declare-fun bs!636571 () Bool)

(assert (= bs!636571 (and d!1291666 b!4363874)))

(assert (=> bs!636571 (not (= lambda!142149 lambda!142142))))

(assert (=> bs!636570 (not (= lambda!142149 lambda!142143))))

(declare-fun bs!636572 () Bool)

(assert (= bs!636572 (and d!1291666 d!1291648)))

(assert (=> bs!636572 (not (= lambda!142149 lambda!142145))))

(declare-fun bs!636573 () Bool)

(assert (= bs!636573 (and d!1291666 b!4363843)))

(assert (=> bs!636573 (not (= lambda!142149 lambda!142132))))

(declare-fun bs!636574 () Bool)

(assert (= bs!636574 (and d!1291666 b!4363846)))

(assert (=> bs!636574 (not (= lambda!142149 lambda!142131))))

(assert (=> bs!636573 (not (= lambda!142149 lambda!142133))))

(assert (=> d!1291666 true))

(assert (=> d!1291666 true))

(assert (=> d!1291666 (= (allKeysSameHash!471 newBucket!200 hash!377 hashF!1247) (forall!9168 newBucket!200 lambda!142149))))

(declare-fun bs!636575 () Bool)

(assert (= bs!636575 d!1291666))

(declare-fun m!4985265 () Bool)

(assert (=> bs!636575 m!4985265))

(assert (=> b!4363548 d!1291666))

(declare-fun b!4363901 () Bool)

(declare-fun e!2715921 () Bool)

(declare-fun tp!1330458 () Bool)

(declare-fun tp!1330459 () Bool)

(assert (=> b!4363901 (= e!2715921 (and tp!1330458 tp!1330459))))

(assert (=> b!4363557 (= tp!1330444 e!2715921)))

(assert (= (and b!4363557 ((_ is Cons!48996) (toList!3010 lm!1707))) b!4363901))

(declare-fun e!2715924 () Bool)

(declare-fun tp!1330462 () Bool)

(declare-fun b!4363906 () Bool)

(assert (=> b!4363906 (= e!2715924 (and tp_is_empty!25289 tp_is_empty!25291 tp!1330462))))

(assert (=> b!4363545 (= tp!1330443 e!2715924)))

(assert (= (and b!4363545 ((_ is Cons!48995) (t!356039 newBucket!200))) b!4363906))

(declare-fun b_lambda!132193 () Bool)

(assert (= b_lambda!132173 (or start!423000 b_lambda!132193)))

(declare-fun bs!636576 () Bool)

(declare-fun d!1291668 () Bool)

(assert (= bs!636576 (and d!1291668 start!423000)))

(assert (=> bs!636576 (= (dynLambda!20657 lambda!142041 (h!54563 (toList!3010 lt!1576002))) (noDuplicateKeys!513 (_2!27506 (h!54563 (toList!3010 lt!1576002)))))))

(declare-fun m!4985267 () Bool)

(assert (=> bs!636576 m!4985267))

(assert (=> b!4363724 d!1291668))

(declare-fun b_lambda!132195 () Bool)

(assert (= b_lambda!132171 (or start!423000 b_lambda!132195)))

(declare-fun bs!636577 () Bool)

(declare-fun d!1291670 () Bool)

(assert (= bs!636577 (and d!1291670 start!423000)))

(assert (=> bs!636577 (= (dynLambda!20657 lambda!142041 lt!1576004) (noDuplicateKeys!513 (_2!27506 lt!1576004)))))

(declare-fun m!4985269 () Bool)

(assert (=> bs!636577 m!4985269))

(assert (=> d!1291544 d!1291670))

(declare-fun b_lambda!132197 () Bool)

(assert (= b_lambda!132191 (or start!423000 b_lambda!132197)))

(declare-fun bs!636578 () Bool)

(declare-fun d!1291672 () Bool)

(assert (= bs!636578 (and d!1291672 start!423000)))

(assert (=> bs!636578 (= (dynLambda!20657 lambda!142041 (h!54563 (toList!3010 lm!1707))) (noDuplicateKeys!513 (_2!27506 (h!54563 (toList!3010 lm!1707)))))))

(assert (=> bs!636578 m!4984807))

(assert (=> b!4363889 d!1291672))

(declare-fun b_lambda!132199 () Bool)

(assert (= b_lambda!132169 (or start!423000 b_lambda!132199)))

(declare-fun bs!636579 () Bool)

(declare-fun d!1291674 () Bool)

(assert (= bs!636579 (and d!1291674 start!423000)))

(assert (=> bs!636579 (= (dynLambda!20657 lambda!142041 (h!54563 (toList!3010 lt!1575996))) (noDuplicateKeys!513 (_2!27506 (h!54563 (toList!3010 lt!1575996)))))))

(declare-fun m!4985271 () Bool)

(assert (=> bs!636579 m!4985271))

(assert (=> b!4363696 d!1291674))

(declare-fun b_lambda!132201 () Bool)

(assert (= b_lambda!132189 (or start!423000 b_lambda!132201)))

(declare-fun bs!636580 () Bool)

(declare-fun d!1291676 () Bool)

(assert (= bs!636580 (and d!1291676 start!423000)))

(assert (=> bs!636580 (= (dynLambda!20657 lambda!142041 (tuple2!48425 hash!377 newBucket!200)) (noDuplicateKeys!513 (_2!27506 (tuple2!48425 hash!377 newBucket!200))))))

(declare-fun m!4985273 () Bool)

(assert (=> bs!636580 m!4985273))

(assert (=> b!4363888 d!1291676))

(check-sat (not b!4363602) (not b!4363720) (not b!4363747) (not b!4363853) (not d!1291542) (not b!4363873) (not b!4363854) (not d!1291492) (not b!4363880) (not bm!303387) (not bs!636577) (not b!4363871) (not bm!303386) (not d!1291648) (not d!1291544) (not b_lambda!132195) (not bm!303365) (not b!4363881) (not b!4363879) (not b!4363723) (not b!4363845) (not bs!636579) (not b!4363745) (not b!4363901) (not d!1291530) (not d!1291536) (not b!4363677) (not b!4363697) (not d!1291554) (not b!4363860) (not d!1291560) (not b!4363859) (not d!1291642) (not b!4363679) (not d!1291528) (not b!4363566) (not d!1291562) (not b!4363843) (not b!4363725) (not d!1291630) (not b!4363851) (not b!4363844) (not d!1291662) (not b!4363752) (not d!1291652) (not b!4363906) (not d!1291636) (not b!4363852) (not d!1291626) (not d!1291564) (not d!1291632) (not b!4363884) (not d!1291496) (not b!4363734) (not b!4363680) (not b!4363750) (not d!1291666) (not b!4363892) (not b!4363684) (not b!4363862) (not b!4363849) (not b!4363735) (not b_lambda!132199) (not b!4363565) (not b!4363861) (not d!1291538) (not b!4363842) (not b!4363690) (not b!4363870) (not d!1291640) (not b!4363744) (not b_lambda!132201) (not bm!303389) (not d!1291644) (not d!1291656) (not d!1291634) (not b!4363856) (not d!1291628) (not bs!636576) (not b!4363869) (not bs!636580) (not b_lambda!132197) (not bm!303392) (not d!1291534) (not b!4363683) (not d!1291546) (not b!4363717) (not b!4363685) (not d!1291556) (not d!1291550) (not b!4363600) (not b!4363751) (not b!4363890) (not bs!636578) (not d!1291650) (not d!1291638) (not b!4363678) (not b!4363710) (not b!4363738) (not bm!303390) (not b!4363746) (not bm!303388) (not d!1291552) tp_is_empty!25291 (not b_lambda!132193) (not d!1291654) (not b!4363855) (not b!4363872) (not d!1291658) tp_is_empty!25289 (not bm!303391) (not bm!303372) (not d!1291540) (not d!1291558) (not b!4363850) (not b!4363883))
(check-sat)
