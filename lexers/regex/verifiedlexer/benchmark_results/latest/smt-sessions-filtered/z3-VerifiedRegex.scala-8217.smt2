; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424796 () Bool)

(assert start!424796)

(declare-fun b!4375562 () Bool)

(declare-fun e!2723586 () Bool)

(declare-datatypes ((V!10736 0))(
  ( (V!10737 (val!16663 Int)) )
))
(declare-datatypes ((K!10490 0))(
  ( (K!10491 (val!16664 Int)) )
))
(declare-datatypes ((tuple2!48646 0))(
  ( (tuple2!48647 (_1!27617 K!10490) (_2!27617 V!10736)) )
))
(declare-datatypes ((List!49256 0))(
  ( (Nil!49132) (Cons!49132 (h!54725 tuple2!48646) (t!356182 List!49256)) )
))
(declare-datatypes ((tuple2!48648 0))(
  ( (tuple2!48649 (_1!27618 (_ BitVec 64)) (_2!27618 List!49256)) )
))
(declare-datatypes ((List!49257 0))(
  ( (Nil!49133) (Cons!49133 (h!54726 tuple2!48648) (t!356183 List!49257)) )
))
(declare-datatypes ((ListLongMap!1771 0))(
  ( (ListLongMap!1772 (toList!3121 List!49257)) )
))
(declare-fun lm!1707 () ListLongMap!1771)

(declare-fun lambda!144559 () Int)

(declare-fun forall!9255 (List!49257 Int) Bool)

(assert (=> b!4375562 (= e!2723586 (forall!9255 (toList!3121 lm!1707) lambda!144559))))

(declare-fun e!2723582 () Bool)

(assert (=> b!4375562 e!2723582))

(declare-fun res!1801413 () Bool)

(assert (=> b!4375562 (=> (not res!1801413) (not e!2723582))))

(declare-fun lt!1586226 () List!49256)

(declare-fun lt!1586220 () List!49256)

(assert (=> b!4375562 (= res!1801413 (= lt!1586226 lt!1586220))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lt!1586233 () ListLongMap!1771)

(declare-fun +!769 (ListLongMap!1771 tuple2!48648) ListLongMap!1771)

(assert (=> b!4375562 (= lt!1586233 (+!769 lm!1707 (tuple2!48649 hash!377 lt!1586226)))))

(declare-fun newBucket!200 () List!49256)

(declare-fun tail!7062 (List!49256) List!49256)

(assert (=> b!4375562 (= lt!1586226 (tail!7062 newBucket!200))))

(declare-fun e!2723583 () Bool)

(assert (=> b!4375562 e!2723583))

(declare-fun res!1801419 () Bool)

(assert (=> b!4375562 (=> (not res!1801419) (not e!2723583))))

(declare-datatypes ((ListMap!2365 0))(
  ( (ListMap!2366 (toList!3122 List!49256)) )
))
(declare-fun lt!1586224 () ListMap!2365)

(declare-fun lt!1586231 () ListMap!2365)

(declare-fun eq!307 (ListMap!2365 ListMap!2365) Bool)

(assert (=> b!4375562 (= res!1801419 (eq!307 lt!1586224 lt!1586231))))

(declare-fun lt!1586223 () ListMap!2365)

(declare-fun lt!1586222 () tuple2!48646)

(declare-fun +!770 (ListMap!2365 tuple2!48646) ListMap!2365)

(assert (=> b!4375562 (= lt!1586231 (+!770 lt!1586223 lt!1586222))))

(declare-fun lt!1586225 () ListMap!2365)

(declare-fun addToMapMapFromBucket!250 (List!49256 ListMap!2365) ListMap!2365)

(assert (=> b!4375562 (= lt!1586223 (addToMapMapFromBucket!250 lt!1586220 lt!1586225))))

(declare-datatypes ((Unit!74648 0))(
  ( (Unit!74649) )
))
(declare-fun lt!1586217 () Unit!74648)

(declare-fun key!3918 () K!10490)

(declare-fun newValue!99 () V!10736)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!116 (ListMap!2365 K!10490 V!10736 List!49256) Unit!74648)

(assert (=> b!4375562 (= lt!1586217 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!116 lt!1586225 key!3918 newValue!99 lt!1586220))))

(declare-fun lt!1586216 () ListMap!2365)

(assert (=> b!4375562 (= lt!1586216 lt!1586224)))

(assert (=> b!4375562 (= lt!1586224 (addToMapMapFromBucket!250 lt!1586220 (+!770 lt!1586225 lt!1586222)))))

(declare-fun lt!1586229 () ListMap!2365)

(assert (=> b!4375562 (= lt!1586229 lt!1586216)))

(declare-fun lt!1586228 () List!49256)

(assert (=> b!4375562 (= lt!1586216 (addToMapMapFromBucket!250 lt!1586228 lt!1586225))))

(assert (=> b!4375562 (= lt!1586229 (addToMapMapFromBucket!250 newBucket!200 lt!1586225))))

(declare-fun lt!1586218 () ListLongMap!1771)

(declare-fun extractMap!628 (List!49257) ListMap!2365)

(assert (=> b!4375562 (= lt!1586229 (extractMap!628 (toList!3121 lt!1586218)))))

(assert (=> b!4375562 (= lt!1586225 (extractMap!628 (t!356183 (toList!3121 lm!1707))))))

(declare-fun e!2723580 () Bool)

(declare-fun tp_is_empty!25513 () Bool)

(declare-fun b!4375563 () Bool)

(declare-fun tp_is_empty!25515 () Bool)

(declare-fun tp!1331075 () Bool)

(assert (=> b!4375563 (= e!2723580 (and tp_is_empty!25513 tp_is_empty!25515 tp!1331075))))

(declare-fun b!4375564 () Bool)

(declare-fun res!1801418 () Bool)

(declare-fun e!2723584 () Bool)

(assert (=> b!4375564 (=> (not res!1801418) (not e!2723584))))

(declare-datatypes ((Hashable!4961 0))(
  ( (HashableExt!4960 (__x!30664 Int)) )
))
(declare-fun hashF!1247 () Hashable!4961)

(declare-fun allKeysSameHash!527 (List!49256 (_ BitVec 64) Hashable!4961) Bool)

(assert (=> b!4375564 (= res!1801418 (allKeysSameHash!527 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4375565 () Bool)

(declare-fun res!1801423 () Bool)

(assert (=> b!4375565 (=> (not res!1801423) (not e!2723584))))

(declare-fun contains!11449 (ListLongMap!1771 (_ BitVec 64)) Bool)

(assert (=> b!4375565 (= res!1801423 (contains!11449 lm!1707 hash!377))))

(declare-fun b!4375566 () Bool)

(declare-fun e!2723581 () Bool)

(assert (=> b!4375566 (= e!2723581 e!2723586)))

(declare-fun res!1801415 () Bool)

(assert (=> b!4375566 (=> res!1801415 e!2723586)))

(get-info :version)

(assert (=> b!4375566 (= res!1801415 (or (not ((_ is Cons!49133) (toList!3121 lm!1707))) (not (= (_1!27618 (h!54726 (toList!3121 lm!1707))) hash!377))))))

(declare-fun e!2723585 () Bool)

(assert (=> b!4375566 e!2723585))

(declare-fun res!1801417 () Bool)

(assert (=> b!4375566 (=> (not res!1801417) (not e!2723585))))

(assert (=> b!4375566 (= res!1801417 (forall!9255 (toList!3121 lt!1586218) lambda!144559))))

(declare-fun lt!1586234 () tuple2!48648)

(assert (=> b!4375566 (= lt!1586218 (+!769 lm!1707 lt!1586234))))

(assert (=> b!4375566 (= lt!1586234 (tuple2!48649 hash!377 newBucket!200))))

(declare-fun lt!1586227 () Unit!74648)

(declare-fun addValidProp!215 (ListLongMap!1771 Int (_ BitVec 64) List!49256) Unit!74648)

(assert (=> b!4375566 (= lt!1586227 (addValidProp!215 lm!1707 lambda!144559 hash!377 newBucket!200))))

(assert (=> b!4375566 (forall!9255 (toList!3121 lm!1707) lambda!144559)))

(declare-fun b!4375567 () Bool)

(declare-fun res!1801422 () Bool)

(assert (=> b!4375567 (=> (not res!1801422) (not e!2723584))))

(declare-fun hash!1732 (Hashable!4961 K!10490) (_ BitVec 64))

(assert (=> b!4375567 (= res!1801422 (= (hash!1732 hashF!1247 key!3918) hash!377))))

(declare-fun b!4375568 () Bool)

(assert (=> b!4375568 (= e!2723585 (or (not ((_ is Cons!49133) (toList!3121 lm!1707))) (not (= (_1!27618 (h!54726 (toList!3121 lm!1707))) hash!377)) (= lt!1586218 (ListLongMap!1772 (Cons!49133 lt!1586234 (t!356183 (toList!3121 lm!1707)))))))))

(declare-fun b!4375569 () Bool)

(declare-fun e!2723579 () Bool)

(declare-fun tp!1331076 () Bool)

(assert (=> b!4375569 (= e!2723579 tp!1331076)))

(declare-fun b!4375570 () Bool)

(declare-fun res!1801421 () Bool)

(assert (=> b!4375570 (=> (not res!1801421) (not e!2723584))))

(declare-fun contains!11450 (ListMap!2365 K!10490) Bool)

(assert (=> b!4375570 (= res!1801421 (contains!11450 (extractMap!628 (toList!3121 lm!1707)) key!3918))))

(declare-fun b!4375571 () Bool)

(declare-fun res!1801424 () Bool)

(assert (=> b!4375571 (=> (not res!1801424) (not e!2723585))))

(assert (=> b!4375571 (= res!1801424 (forall!9255 (toList!3121 lt!1586218) lambda!144559))))

(declare-fun b!4375572 () Bool)

(assert (=> b!4375572 (= e!2723584 (not e!2723581))))

(declare-fun res!1801425 () Bool)

(assert (=> b!4375572 (=> res!1801425 e!2723581)))

(assert (=> b!4375572 (= res!1801425 (not (= newBucket!200 lt!1586228)))))

(assert (=> b!4375572 (= lt!1586228 (Cons!49132 lt!1586222 lt!1586220))))

(declare-fun lt!1586219 () List!49256)

(declare-fun removePairForKey!537 (List!49256 K!10490) List!49256)

(assert (=> b!4375572 (= lt!1586220 (removePairForKey!537 lt!1586219 key!3918))))

(assert (=> b!4375572 (= lt!1586222 (tuple2!48647 key!3918 newValue!99))))

(declare-fun lt!1586230 () Unit!74648)

(declare-fun lt!1586232 () tuple2!48648)

(declare-fun forallContained!1893 (List!49257 Int tuple2!48648) Unit!74648)

(assert (=> b!4375572 (= lt!1586230 (forallContained!1893 (toList!3121 lm!1707) lambda!144559 lt!1586232))))

(declare-fun contains!11451 (List!49257 tuple2!48648) Bool)

(assert (=> b!4375572 (contains!11451 (toList!3121 lm!1707) lt!1586232)))

(assert (=> b!4375572 (= lt!1586232 (tuple2!48649 hash!377 lt!1586219))))

(declare-fun lt!1586221 () Unit!74648)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!414 (List!49257 (_ BitVec 64) List!49256) Unit!74648)

(assert (=> b!4375572 (= lt!1586221 (lemmaGetValueByKeyImpliesContainsTuple!414 (toList!3121 lm!1707) hash!377 lt!1586219))))

(declare-fun apply!11421 (ListLongMap!1771 (_ BitVec 64)) List!49256)

(assert (=> b!4375572 (= lt!1586219 (apply!11421 lm!1707 hash!377))))

(declare-fun b!4375573 () Bool)

(declare-fun res!1801420 () Bool)

(assert (=> b!4375573 (=> res!1801420 e!2723581)))

(declare-fun noDuplicateKeys!569 (List!49256) Bool)

(assert (=> b!4375573 (= res!1801420 (not (noDuplicateKeys!569 newBucket!200)))))

(declare-fun res!1801416 () Bool)

(assert (=> start!424796 (=> (not res!1801416) (not e!2723584))))

(assert (=> start!424796 (= res!1801416 (forall!9255 (toList!3121 lm!1707) lambda!144559))))

(assert (=> start!424796 e!2723584))

(assert (=> start!424796 e!2723580))

(assert (=> start!424796 true))

(declare-fun inv!64676 (ListLongMap!1771) Bool)

(assert (=> start!424796 (and (inv!64676 lm!1707) e!2723579)))

(assert (=> start!424796 tp_is_empty!25513))

(assert (=> start!424796 tp_is_empty!25515))

(declare-fun b!4375574 () Bool)

(assert (=> b!4375574 (= e!2723582 (= lt!1586223 (extractMap!628 (toList!3121 lt!1586233))))))

(declare-fun b!4375575 () Bool)

(declare-fun res!1801414 () Bool)

(assert (=> b!4375575 (=> (not res!1801414) (not e!2723584))))

(declare-fun allKeysSameHashInMap!673 (ListLongMap!1771 Hashable!4961) Bool)

(assert (=> b!4375575 (= res!1801414 (allKeysSameHashInMap!673 lm!1707 hashF!1247))))

(declare-fun b!4375576 () Bool)

(assert (=> b!4375576 (= e!2723583 (eq!307 lt!1586216 lt!1586231))))

(assert (= (and start!424796 res!1801416) b!4375575))

(assert (= (and b!4375575 res!1801414) b!4375567))

(assert (= (and b!4375567 res!1801422) b!4375564))

(assert (= (and b!4375564 res!1801418) b!4375570))

(assert (= (and b!4375570 res!1801421) b!4375565))

(assert (= (and b!4375565 res!1801423) b!4375572))

(assert (= (and b!4375572 (not res!1801425)) b!4375573))

(assert (= (and b!4375573 (not res!1801420)) b!4375566))

(assert (= (and b!4375566 res!1801417) b!4375571))

(assert (= (and b!4375571 res!1801424) b!4375568))

(assert (= (and b!4375566 (not res!1801415)) b!4375562))

(assert (= (and b!4375562 res!1801419) b!4375576))

(assert (= (and b!4375562 res!1801413) b!4375574))

(assert (= (and start!424796 ((_ is Cons!49132) newBucket!200)) b!4375563))

(assert (= start!424796 b!4375569))

(declare-fun m!5008559 () Bool)

(assert (=> b!4375573 m!5008559))

(declare-fun m!5008561 () Bool)

(assert (=> b!4375567 m!5008561))

(declare-fun m!5008563 () Bool)

(assert (=> b!4375566 m!5008563))

(declare-fun m!5008565 () Bool)

(assert (=> b!4375566 m!5008565))

(declare-fun m!5008567 () Bool)

(assert (=> b!4375566 m!5008567))

(declare-fun m!5008569 () Bool)

(assert (=> b!4375566 m!5008569))

(declare-fun m!5008571 () Bool)

(assert (=> b!4375576 m!5008571))

(declare-fun m!5008573 () Bool)

(assert (=> b!4375565 m!5008573))

(assert (=> start!424796 m!5008569))

(declare-fun m!5008575 () Bool)

(assert (=> start!424796 m!5008575))

(declare-fun m!5008577 () Bool)

(assert (=> b!4375564 m!5008577))

(assert (=> b!4375571 m!5008563))

(declare-fun m!5008579 () Bool)

(assert (=> b!4375562 m!5008579))

(declare-fun m!5008581 () Bool)

(assert (=> b!4375562 m!5008581))

(declare-fun m!5008583 () Bool)

(assert (=> b!4375562 m!5008583))

(declare-fun m!5008585 () Bool)

(assert (=> b!4375562 m!5008585))

(declare-fun m!5008587 () Bool)

(assert (=> b!4375562 m!5008587))

(assert (=> b!4375562 m!5008569))

(declare-fun m!5008589 () Bool)

(assert (=> b!4375562 m!5008589))

(declare-fun m!5008591 () Bool)

(assert (=> b!4375562 m!5008591))

(declare-fun m!5008593 () Bool)

(assert (=> b!4375562 m!5008593))

(declare-fun m!5008595 () Bool)

(assert (=> b!4375562 m!5008595))

(assert (=> b!4375562 m!5008593))

(declare-fun m!5008597 () Bool)

(assert (=> b!4375562 m!5008597))

(declare-fun m!5008599 () Bool)

(assert (=> b!4375562 m!5008599))

(declare-fun m!5008601 () Bool)

(assert (=> b!4375562 m!5008601))

(declare-fun m!5008603 () Bool)

(assert (=> b!4375574 m!5008603))

(declare-fun m!5008605 () Bool)

(assert (=> b!4375572 m!5008605))

(declare-fun m!5008607 () Bool)

(assert (=> b!4375572 m!5008607))

(declare-fun m!5008609 () Bool)

(assert (=> b!4375572 m!5008609))

(declare-fun m!5008611 () Bool)

(assert (=> b!4375572 m!5008611))

(declare-fun m!5008613 () Bool)

(assert (=> b!4375572 m!5008613))

(declare-fun m!5008615 () Bool)

(assert (=> b!4375575 m!5008615))

(declare-fun m!5008617 () Bool)

(assert (=> b!4375570 m!5008617))

(assert (=> b!4375570 m!5008617))

(declare-fun m!5008619 () Bool)

(assert (=> b!4375570 m!5008619))

(check-sat (not b!4375570) tp_is_empty!25513 (not b!4375566) (not b!4375576) (not start!424796) (not b!4375571) tp_is_empty!25515 (not b!4375563) (not b!4375562) (not b!4375569) (not b!4375574) (not b!4375572) (not b!4375564) (not b!4375573) (not b!4375575) (not b!4375565) (not b!4375567))
(check-sat)
