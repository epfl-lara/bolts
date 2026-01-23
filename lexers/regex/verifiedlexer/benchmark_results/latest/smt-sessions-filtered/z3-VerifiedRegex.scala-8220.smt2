; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!425024 () Bool)

(assert start!425024)

(declare-fun b!4377274 () Bool)

(declare-fun res!1802409 () Bool)

(declare-fun e!2724690 () Bool)

(assert (=> b!4377274 (=> (not res!1802409) (not e!2724690))))

(declare-datatypes ((V!10751 0))(
  ( (V!10752 (val!16675 Int)) )
))
(declare-datatypes ((K!10505 0))(
  ( (K!10506 (val!16676 Int)) )
))
(declare-datatypes ((tuple2!48670 0))(
  ( (tuple2!48671 (_1!27629 K!10505) (_2!27629 V!10751)) )
))
(declare-datatypes ((List!49270 0))(
  ( (Nil!49146) (Cons!49146 (h!54741 tuple2!48670) (t!356196 List!49270)) )
))
(declare-datatypes ((tuple2!48672 0))(
  ( (tuple2!48673 (_1!27630 (_ BitVec 64)) (_2!27630 List!49270)) )
))
(declare-datatypes ((List!49271 0))(
  ( (Nil!49147) (Cons!49147 (h!54742 tuple2!48672) (t!356197 List!49271)) )
))
(declare-datatypes ((ListLongMap!1783 0))(
  ( (ListLongMap!1784 (toList!3133 List!49271)) )
))
(declare-fun lm!1707 () ListLongMap!1783)

(declare-datatypes ((Hashable!4967 0))(
  ( (HashableExt!4966 (__x!30670 Int)) )
))
(declare-fun hashF!1247 () Hashable!4967)

(declare-fun allKeysSameHashInMap!679 (ListLongMap!1783 Hashable!4967) Bool)

(assert (=> b!4377274 (= res!1802409 (allKeysSameHashInMap!679 lm!1707 hashF!1247))))

(declare-fun b!4377275 () Bool)

(declare-fun e!2724692 () Bool)

(declare-fun e!2724694 () Bool)

(assert (=> b!4377275 (= e!2724692 e!2724694)))

(declare-fun res!1802416 () Bool)

(assert (=> b!4377275 (=> res!1802416 e!2724694)))

(declare-fun lambda!144889 () Int)

(declare-fun forall!9265 (List!49271 Int) Bool)

(assert (=> b!4377275 (= res!1802416 (not (forall!9265 (toList!3133 lm!1707) lambda!144889)))))

(declare-fun e!2724698 () Bool)

(assert (=> b!4377275 e!2724698))

(declare-fun res!1802418 () Bool)

(assert (=> b!4377275 (=> (not res!1802418) (not e!2724698))))

(declare-fun lt!1587867 () List!49270)

(declare-fun lt!1587881 () List!49270)

(assert (=> b!4377275 (= res!1802418 (= lt!1587867 lt!1587881))))

(declare-fun lt!1587876 () ListLongMap!1783)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun +!781 (ListLongMap!1783 tuple2!48672) ListLongMap!1783)

(assert (=> b!4377275 (= lt!1587876 (+!781 lm!1707 (tuple2!48673 hash!377 lt!1587867)))))

(declare-fun newBucket!200 () List!49270)

(declare-fun tail!7068 (List!49270) List!49270)

(assert (=> b!4377275 (= lt!1587867 (tail!7068 newBucket!200))))

(declare-fun e!2724693 () Bool)

(assert (=> b!4377275 e!2724693))

(declare-fun res!1802405 () Bool)

(assert (=> b!4377275 (=> (not res!1802405) (not e!2724693))))

(declare-datatypes ((ListMap!2377 0))(
  ( (ListMap!2378 (toList!3134 List!49270)) )
))
(declare-fun lt!1587882 () ListMap!2377)

(declare-fun lt!1587873 () ListMap!2377)

(declare-fun eq!313 (ListMap!2377 ListMap!2377) Bool)

(assert (=> b!4377275 (= res!1802405 (eq!313 lt!1587882 lt!1587873))))

(declare-fun lt!1587872 () ListMap!2377)

(declare-fun lt!1587869 () tuple2!48670)

(declare-fun +!782 (ListMap!2377 tuple2!48670) ListMap!2377)

(assert (=> b!4377275 (= lt!1587873 (+!782 lt!1587872 lt!1587869))))

(declare-fun lt!1587874 () ListMap!2377)

(declare-fun addToMapMapFromBucket!256 (List!49270 ListMap!2377) ListMap!2377)

(assert (=> b!4377275 (= lt!1587872 (addToMapMapFromBucket!256 lt!1587881 lt!1587874))))

(declare-datatypes ((Unit!75012 0))(
  ( (Unit!75013) )
))
(declare-fun lt!1587871 () Unit!75012)

(declare-fun key!3918 () K!10505)

(declare-fun newValue!99 () V!10751)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!122 (ListMap!2377 K!10505 V!10751 List!49270) Unit!75012)

(assert (=> b!4377275 (= lt!1587871 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!122 lt!1587874 key!3918 newValue!99 lt!1587881))))

(declare-fun lt!1587880 () ListMap!2377)

(assert (=> b!4377275 (= lt!1587880 lt!1587882)))

(assert (=> b!4377275 (= lt!1587882 (addToMapMapFromBucket!256 lt!1587881 (+!782 lt!1587874 lt!1587869)))))

(declare-fun lt!1587868 () ListMap!2377)

(assert (=> b!4377275 (= lt!1587868 lt!1587880)))

(declare-fun lt!1587888 () List!49270)

(assert (=> b!4377275 (= lt!1587880 (addToMapMapFromBucket!256 lt!1587888 lt!1587874))))

(assert (=> b!4377275 (= lt!1587868 (addToMapMapFromBucket!256 newBucket!200 lt!1587874))))

(declare-fun lt!1587884 () ListLongMap!1783)

(declare-fun extractMap!634 (List!49271) ListMap!2377)

(assert (=> b!4377275 (= lt!1587868 (extractMap!634 (toList!3133 lt!1587884)))))

(assert (=> b!4377275 (= lt!1587874 (extractMap!634 (t!356197 (toList!3133 lm!1707))))))

(declare-fun b!4377276 () Bool)

(declare-fun res!1802410 () Bool)

(declare-fun e!2724691 () Bool)

(assert (=> b!4377276 (=> res!1802410 e!2724691)))

(declare-fun noDuplicateKeys!575 (List!49270) Bool)

(assert (=> b!4377276 (= res!1802410 (not (noDuplicateKeys!575 newBucket!200)))))

(declare-fun b!4377277 () Bool)

(declare-fun res!1802411 () Bool)

(declare-fun e!2724697 () Bool)

(assert (=> b!4377277 (=> (not res!1802411) (not e!2724697))))

(assert (=> b!4377277 (= res!1802411 (forall!9265 (toList!3133 lt!1587884) lambda!144889))))

(declare-fun b!4377278 () Bool)

(declare-fun res!1802406 () Bool)

(declare-fun e!2724695 () Bool)

(assert (=> b!4377278 (=> (not res!1802406) (not e!2724695))))

(declare-fun contains!11471 (ListLongMap!1783 (_ BitVec 64)) Bool)

(assert (=> b!4377278 (= res!1802406 (contains!11471 lm!1707 hash!377))))

(declare-fun b!4377279 () Bool)

(assert (=> b!4377279 (= e!2724694 true)))

(declare-fun lt!1587887 () tuple2!48672)

(declare-fun lt!1587870 () Unit!75012)

(declare-fun forallContained!1903 (List!49271 Int tuple2!48672) Unit!75012)

(assert (=> b!4377279 (= lt!1587870 (forallContained!1903 (toList!3133 lm!1707) lambda!144889 lt!1587887))))

(declare-fun lt!1587883 () (_ BitVec 64))

(assert (=> b!4377279 (contains!11471 lm!1707 lt!1587883)))

(declare-fun lt!1587885 () Unit!75012)

(declare-fun lemmaInGenMapThenLongMapContainsHash!54 (ListLongMap!1783 K!10505 Hashable!4967) Unit!75012)

(assert (=> b!4377279 (= lt!1587885 (lemmaInGenMapThenLongMapContainsHash!54 lm!1707 key!3918 hashF!1247))))

(declare-fun b!4377280 () Bool)

(declare-fun res!1802415 () Bool)

(assert (=> b!4377280 (=> res!1802415 e!2724694)))

(declare-fun allKeysSameHash!533 (List!49270 (_ BitVec 64) Hashable!4967) Bool)

(assert (=> b!4377280 (= res!1802415 (not (allKeysSameHash!533 lt!1587867 hash!377 hashF!1247)))))

(declare-fun b!4377281 () Bool)

(declare-fun res!1802419 () Bool)

(assert (=> b!4377281 (=> (not res!1802419) (not e!2724695))))

(assert (=> b!4377281 (= res!1802419 (allKeysSameHash!533 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4377282 () Bool)

(assert (=> b!4377282 (= e!2724693 (eq!313 lt!1587880 lt!1587873))))

(declare-fun b!4377283 () Bool)

(declare-fun lt!1587877 () tuple2!48672)

(get-info :version)

(assert (=> b!4377283 (= e!2724697 (or (not ((_ is Cons!49147) (toList!3133 lm!1707))) (not (= (_1!27630 (h!54742 (toList!3133 lm!1707))) hash!377)) (= lt!1587884 (ListLongMap!1784 (Cons!49147 lt!1587877 (t!356197 (toList!3133 lm!1707)))))))))

(declare-fun b!4377284 () Bool)

(assert (=> b!4377284 (= e!2724691 e!2724692)))

(declare-fun res!1802414 () Bool)

(assert (=> b!4377284 (=> res!1802414 e!2724692)))

(assert (=> b!4377284 (= res!1802414 (or (not ((_ is Cons!49147) (toList!3133 lm!1707))) (not (= (_1!27630 (h!54742 (toList!3133 lm!1707))) hash!377))))))

(assert (=> b!4377284 e!2724697))

(declare-fun res!1802417 () Bool)

(assert (=> b!4377284 (=> (not res!1802417) (not e!2724697))))

(assert (=> b!4377284 (= res!1802417 (forall!9265 (toList!3133 lt!1587884) lambda!144889))))

(assert (=> b!4377284 (= lt!1587884 (+!781 lm!1707 lt!1587877))))

(assert (=> b!4377284 (= lt!1587877 (tuple2!48673 hash!377 newBucket!200))))

(declare-fun lt!1587886 () Unit!75012)

(declare-fun addValidProp!221 (ListLongMap!1783 Int (_ BitVec 64) List!49270) Unit!75012)

(assert (=> b!4377284 (= lt!1587886 (addValidProp!221 lm!1707 lambda!144889 hash!377 newBucket!200))))

(assert (=> b!4377284 (forall!9265 (toList!3133 lm!1707) lambda!144889)))

(declare-fun res!1802407 () Bool)

(assert (=> start!425024 (=> (not res!1802407) (not e!2724690))))

(assert (=> start!425024 (= res!1802407 (forall!9265 (toList!3133 lm!1707) lambda!144889))))

(assert (=> start!425024 e!2724690))

(declare-fun e!2724696 () Bool)

(assert (=> start!425024 e!2724696))

(assert (=> start!425024 true))

(declare-fun e!2724689 () Bool)

(declare-fun inv!64691 (ListLongMap!1783) Bool)

(assert (=> start!425024 (and (inv!64691 lm!1707) e!2724689)))

(declare-fun tp_is_empty!25537 () Bool)

(assert (=> start!425024 tp_is_empty!25537))

(declare-fun tp_is_empty!25539 () Bool)

(assert (=> start!425024 tp_is_empty!25539))

(declare-fun b!4377285 () Bool)

(declare-fun tp!1331137 () Bool)

(assert (=> b!4377285 (= e!2724689 tp!1331137)))

(declare-fun tp!1331138 () Bool)

(declare-fun b!4377286 () Bool)

(assert (=> b!4377286 (= e!2724696 (and tp_is_empty!25537 tp_is_empty!25539 tp!1331138))))

(declare-fun b!4377287 () Bool)

(declare-fun res!1802413 () Bool)

(assert (=> b!4377287 (=> (not res!1802413) (not e!2724695))))

(declare-fun contains!11472 (ListMap!2377 K!10505) Bool)

(assert (=> b!4377287 (= res!1802413 (contains!11472 (extractMap!634 (toList!3133 lm!1707)) key!3918))))

(declare-fun b!4377288 () Bool)

(assert (=> b!4377288 (= e!2724698 (= lt!1587872 (extractMap!634 (toList!3133 lt!1587876))))))

(declare-fun b!4377289 () Bool)

(assert (=> b!4377289 (= e!2724695 (not e!2724691))))

(declare-fun res!1802412 () Bool)

(assert (=> b!4377289 (=> res!1802412 e!2724691)))

(assert (=> b!4377289 (= res!1802412 (not (= newBucket!200 lt!1587888)))))

(assert (=> b!4377289 (= lt!1587888 (Cons!49146 lt!1587869 lt!1587881))))

(declare-fun lt!1587878 () List!49270)

(declare-fun removePairForKey!543 (List!49270 K!10505) List!49270)

(assert (=> b!4377289 (= lt!1587881 (removePairForKey!543 lt!1587878 key!3918))))

(assert (=> b!4377289 (= lt!1587869 (tuple2!48671 key!3918 newValue!99))))

(declare-fun lt!1587879 () Unit!75012)

(assert (=> b!4377289 (= lt!1587879 (forallContained!1903 (toList!3133 lm!1707) lambda!144889 lt!1587887))))

(declare-fun contains!11473 (List!49271 tuple2!48672) Bool)

(assert (=> b!4377289 (contains!11473 (toList!3133 lm!1707) lt!1587887)))

(assert (=> b!4377289 (= lt!1587887 (tuple2!48673 hash!377 lt!1587878))))

(declare-fun lt!1587875 () Unit!75012)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!420 (List!49271 (_ BitVec 64) List!49270) Unit!75012)

(assert (=> b!4377289 (= lt!1587875 (lemmaGetValueByKeyImpliesContainsTuple!420 (toList!3133 lm!1707) hash!377 lt!1587878))))

(declare-fun apply!11427 (ListLongMap!1783 (_ BitVec 64)) List!49270)

(assert (=> b!4377289 (= lt!1587878 (apply!11427 lm!1707 hash!377))))

(declare-fun b!4377290 () Bool)

(assert (=> b!4377290 (= e!2724690 e!2724695)))

(declare-fun res!1802408 () Bool)

(assert (=> b!4377290 (=> (not res!1802408) (not e!2724695))))

(assert (=> b!4377290 (= res!1802408 (= lt!1587883 hash!377))))

(declare-fun hash!1740 (Hashable!4967 K!10505) (_ BitVec 64))

(assert (=> b!4377290 (= lt!1587883 (hash!1740 hashF!1247 key!3918))))

(assert (= (and start!425024 res!1802407) b!4377274))

(assert (= (and b!4377274 res!1802409) b!4377290))

(assert (= (and b!4377290 res!1802408) b!4377281))

(assert (= (and b!4377281 res!1802419) b!4377287))

(assert (= (and b!4377287 res!1802413) b!4377278))

(assert (= (and b!4377278 res!1802406) b!4377289))

(assert (= (and b!4377289 (not res!1802412)) b!4377276))

(assert (= (and b!4377276 (not res!1802410)) b!4377284))

(assert (= (and b!4377284 res!1802417) b!4377277))

(assert (= (and b!4377277 res!1802411) b!4377283))

(assert (= (and b!4377284 (not res!1802414)) b!4377275))

(assert (= (and b!4377275 res!1802405) b!4377282))

(assert (= (and b!4377275 res!1802418) b!4377288))

(assert (= (and b!4377275 (not res!1802416)) b!4377280))

(assert (= (and b!4377280 (not res!1802415)) b!4377279))

(assert (= (and start!425024 ((_ is Cons!49146) newBucket!200)) b!4377286))

(assert (= start!425024 b!4377285))

(declare-fun m!5011985 () Bool)

(assert (=> b!4377274 m!5011985))

(declare-fun m!5011987 () Bool)

(assert (=> b!4377290 m!5011987))

(declare-fun m!5011989 () Bool)

(assert (=> b!4377281 m!5011989))

(declare-fun m!5011991 () Bool)

(assert (=> b!4377288 m!5011991))

(declare-fun m!5011993 () Bool)

(assert (=> b!4377284 m!5011993))

(declare-fun m!5011995 () Bool)

(assert (=> b!4377284 m!5011995))

(declare-fun m!5011997 () Bool)

(assert (=> b!4377284 m!5011997))

(declare-fun m!5011999 () Bool)

(assert (=> b!4377284 m!5011999))

(declare-fun m!5012001 () Bool)

(assert (=> b!4377275 m!5012001))

(declare-fun m!5012003 () Bool)

(assert (=> b!4377275 m!5012003))

(declare-fun m!5012005 () Bool)

(assert (=> b!4377275 m!5012005))

(declare-fun m!5012007 () Bool)

(assert (=> b!4377275 m!5012007))

(declare-fun m!5012009 () Bool)

(assert (=> b!4377275 m!5012009))

(declare-fun m!5012011 () Bool)

(assert (=> b!4377275 m!5012011))

(assert (=> b!4377275 m!5012009))

(declare-fun m!5012013 () Bool)

(assert (=> b!4377275 m!5012013))

(assert (=> b!4377275 m!5011999))

(declare-fun m!5012015 () Bool)

(assert (=> b!4377275 m!5012015))

(declare-fun m!5012017 () Bool)

(assert (=> b!4377275 m!5012017))

(declare-fun m!5012019 () Bool)

(assert (=> b!4377275 m!5012019))

(declare-fun m!5012021 () Bool)

(assert (=> b!4377275 m!5012021))

(declare-fun m!5012023 () Bool)

(assert (=> b!4377275 m!5012023))

(assert (=> b!4377277 m!5011993))

(declare-fun m!5012025 () Bool)

(assert (=> b!4377289 m!5012025))

(declare-fun m!5012027 () Bool)

(assert (=> b!4377289 m!5012027))

(declare-fun m!5012029 () Bool)

(assert (=> b!4377289 m!5012029))

(declare-fun m!5012031 () Bool)

(assert (=> b!4377289 m!5012031))

(declare-fun m!5012033 () Bool)

(assert (=> b!4377289 m!5012033))

(declare-fun m!5012035 () Bool)

(assert (=> b!4377282 m!5012035))

(assert (=> start!425024 m!5011999))

(declare-fun m!5012037 () Bool)

(assert (=> start!425024 m!5012037))

(declare-fun m!5012039 () Bool)

(assert (=> b!4377287 m!5012039))

(assert (=> b!4377287 m!5012039))

(declare-fun m!5012041 () Bool)

(assert (=> b!4377287 m!5012041))

(assert (=> b!4377279 m!5012025))

(declare-fun m!5012043 () Bool)

(assert (=> b!4377279 m!5012043))

(declare-fun m!5012045 () Bool)

(assert (=> b!4377279 m!5012045))

(declare-fun m!5012047 () Bool)

(assert (=> b!4377280 m!5012047))

(declare-fun m!5012049 () Bool)

(assert (=> b!4377278 m!5012049))

(declare-fun m!5012051 () Bool)

(assert (=> b!4377276 m!5012051))

(check-sat (not b!4377274) tp_is_empty!25539 tp_is_empty!25537 (not b!4377289) (not b!4377275) (not b!4377280) (not b!4377277) (not b!4377281) (not b!4377290) (not b!4377278) (not b!4377284) (not start!425024) (not b!4377276) (not b!4377286) (not b!4377282) (not b!4377287) (not b!4377279) (not b!4377288) (not b!4377285))
(check-sat)
