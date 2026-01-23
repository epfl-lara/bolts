; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!421536 () Bool)

(assert start!421536)

(declare-fun b!4356048 () Bool)

(declare-fun res!1790270 () Bool)

(declare-fun e!2710814 () Bool)

(assert (=> b!4356048 (=> (not res!1790270) (not e!2710814))))

(declare-datatypes ((V!10531 0))(
  ( (V!10532 (val!16499 Int)) )
))
(declare-datatypes ((K!10285 0))(
  ( (K!10286 (val!16500 Int)) )
))
(declare-datatypes ((tuple2!48318 0))(
  ( (tuple2!48319 (_1!27453 K!10285) (_2!27453 V!10531)) )
))
(declare-datatypes ((List!49049 0))(
  ( (Nil!48925) (Cons!48925 (h!54474 tuple2!48318) (t!355969 List!49049)) )
))
(declare-datatypes ((tuple2!48320 0))(
  ( (tuple2!48321 (_1!27454 (_ BitVec 64)) (_2!27454 List!49049)) )
))
(declare-datatypes ((List!49050 0))(
  ( (Nil!48926) (Cons!48926 (h!54475 tuple2!48320) (t!355970 List!49050)) )
))
(declare-datatypes ((ListLongMap!1607 0))(
  ( (ListLongMap!1608 (toList!2957 List!49050)) )
))
(declare-fun lm!1707 () ListLongMap!1607)

(declare-datatypes ((Hashable!4879 0))(
  ( (HashableExt!4878 (__x!30582 Int)) )
))
(declare-fun hashF!1247 () Hashable!4879)

(declare-fun allKeysSameHashInMap!591 (ListLongMap!1607 Hashable!4879) Bool)

(assert (=> b!4356048 (= res!1790270 (allKeysSameHashInMap!591 lm!1707 hashF!1247))))

(declare-fun b!4356049 () Bool)

(declare-fun e!2710818 () Bool)

(declare-fun e!2710817 () Bool)

(assert (=> b!4356049 (= e!2710818 e!2710817)))

(declare-fun res!1790261 () Bool)

(assert (=> b!4356049 (=> res!1790261 e!2710817)))

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4356049 (= res!1790261 (or (and ((_ is Cons!48926) (toList!2957 lm!1707)) (= (_1!27454 (h!54475 (toList!2957 lm!1707))) hash!377)) (not ((_ is Cons!48926) (toList!2957 lm!1707))) (= (_1!27454 (h!54475 (toList!2957 lm!1707))) hash!377)))))

(declare-fun e!2710815 () Bool)

(assert (=> b!4356049 e!2710815))

(declare-fun res!1790264 () Bool)

(assert (=> b!4356049 (=> (not res!1790264) (not e!2710815))))

(declare-fun lt!1568551 () ListLongMap!1607)

(declare-fun lambda!140335 () Int)

(declare-fun forall!9116 (List!49050 Int) Bool)

(assert (=> b!4356049 (= res!1790264 (forall!9116 (toList!2957 lt!1568551) lambda!140335))))

(declare-fun lt!1568554 () tuple2!48320)

(declare-fun +!631 (ListLongMap!1607 tuple2!48320) ListLongMap!1607)

(assert (=> b!4356049 (= lt!1568551 (+!631 lm!1707 lt!1568554))))

(declare-fun newBucket!200 () List!49049)

(assert (=> b!4356049 (= lt!1568554 (tuple2!48321 hash!377 newBucket!200))))

(declare-datatypes ((Unit!71593 0))(
  ( (Unit!71594) )
))
(declare-fun lt!1568544 () Unit!71593)

(declare-fun addValidProp!141 (ListLongMap!1607 Int (_ BitVec 64) List!49049) Unit!71593)

(assert (=> b!4356049 (= lt!1568544 (addValidProp!141 lm!1707 lambda!140335 hash!377 newBucket!200))))

(assert (=> b!4356049 (forall!9116 (toList!2957 lm!1707) lambda!140335)))

(declare-fun b!4356050 () Bool)

(declare-fun e!2710816 () Bool)

(assert (=> b!4356050 (= e!2710814 e!2710816)))

(declare-fun res!1790273 () Bool)

(assert (=> b!4356050 (=> (not res!1790273) (not e!2710816))))

(declare-datatypes ((ListMap!2201 0))(
  ( (ListMap!2202 (toList!2958 List!49049)) )
))
(declare-fun lt!1568547 () ListMap!2201)

(declare-fun key!3918 () K!10285)

(declare-fun contains!11125 (ListMap!2201 K!10285) Bool)

(assert (=> b!4356050 (= res!1790273 (contains!11125 lt!1568547 key!3918))))

(declare-fun extractMap!546 (List!49050) ListMap!2201)

(assert (=> b!4356050 (= lt!1568547 (extractMap!546 (toList!2957 lm!1707)))))

(declare-fun b!4356051 () Bool)

(assert (=> b!4356051 (= e!2710816 (not e!2710818))))

(declare-fun res!1790262 () Bool)

(assert (=> b!4356051 (=> res!1790262 e!2710818)))

(declare-fun lt!1568549 () List!49049)

(declare-fun lt!1568552 () tuple2!48318)

(declare-fun removePairForKey!457 (List!49049 K!10285) List!49049)

(assert (=> b!4356051 (= res!1790262 (not (= newBucket!200 (Cons!48925 lt!1568552 (removePairForKey!457 lt!1568549 key!3918)))))))

(declare-fun newValue!99 () V!10531)

(assert (=> b!4356051 (= lt!1568552 (tuple2!48319 key!3918 newValue!99))))

(declare-fun lt!1568550 () Unit!71593)

(declare-fun lt!1568558 () tuple2!48320)

(declare-fun forallContained!1757 (List!49050 Int tuple2!48320) Unit!71593)

(assert (=> b!4356051 (= lt!1568550 (forallContained!1757 (toList!2957 lm!1707) lambda!140335 lt!1568558))))

(declare-fun contains!11126 (List!49050 tuple2!48320) Bool)

(assert (=> b!4356051 (contains!11126 (toList!2957 lm!1707) lt!1568558)))

(assert (=> b!4356051 (= lt!1568558 (tuple2!48321 hash!377 lt!1568549))))

(declare-fun lt!1568546 () Unit!71593)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!334 (List!49050 (_ BitVec 64) List!49049) Unit!71593)

(assert (=> b!4356051 (= lt!1568546 (lemmaGetValueByKeyImpliesContainsTuple!334 (toList!2957 lm!1707) hash!377 lt!1568549))))

(declare-fun apply!11339 (ListLongMap!1607 (_ BitVec 64)) List!49049)

(assert (=> b!4356051 (= lt!1568549 (apply!11339 lm!1707 hash!377))))

(declare-fun b!4356052 () Bool)

(declare-fun e!2710821 () Bool)

(declare-fun containsKey!684 (List!49049 K!10285) Bool)

(assert (=> b!4356052 (= e!2710821 (not (containsKey!684 (_2!27454 (h!54475 (toList!2957 lm!1707))) key!3918)))))

(declare-fun b!4356053 () Bool)

(assert (=> b!4356053 (= e!2710815 (forall!9116 (toList!2957 lt!1568551) lambda!140335))))

(declare-fun lt!1568555 () ListMap!2201)

(declare-fun b!4356054 () Bool)

(declare-fun e!2710820 () Bool)

(declare-fun addToMapMapFromBucket!183 (List!49049 ListMap!2201) ListMap!2201)

(assert (=> b!4356054 (= e!2710820 (= lt!1568547 (addToMapMapFromBucket!183 (_2!27454 (h!54475 (toList!2957 lm!1707))) lt!1568555)))))

(declare-fun b!4356055 () Bool)

(declare-fun lt!1568548 () ListLongMap!1607)

(assert (=> b!4356055 (= e!2710817 (forall!9116 (toList!2957 lt!1568548) lambda!140335))))

(assert (=> b!4356055 e!2710820))

(declare-fun res!1790271 () Bool)

(assert (=> b!4356055 (=> (not res!1790271) (not e!2710820))))

(declare-fun eq!257 (ListMap!2201 ListMap!2201) Bool)

(declare-fun +!632 (ListMap!2201 tuple2!48318) ListMap!2201)

(assert (=> b!4356055 (= res!1790271 (eq!257 (extractMap!546 (toList!2957 (+!631 lt!1568548 lt!1568554))) (+!632 lt!1568555 lt!1568552)))))

(declare-fun lt!1568545 () Unit!71593)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!91 (ListLongMap!1607 (_ BitVec 64) List!49049 K!10285 V!10531 Hashable!4879) Unit!71593)

(assert (=> b!4356055 (= lt!1568545 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!91 lt!1568548 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4356055 (contains!11125 lt!1568555 key!3918)))

(assert (=> b!4356055 (= lt!1568555 (extractMap!546 (toList!2957 lt!1568548)))))

(declare-fun tail!6992 (ListLongMap!1607) ListLongMap!1607)

(assert (=> b!4356055 (= lt!1568548 (tail!6992 lm!1707))))

(declare-fun lt!1568557 () ListMap!2201)

(assert (=> b!4356055 (contains!11125 lt!1568557 key!3918)))

(declare-fun lt!1568553 () Unit!71593)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!30 (List!49049 K!10285 V!10531 ListMap!2201) Unit!71593)

(assert (=> b!4356055 (= lt!1568553 (lemmaAddToMapContainsAndNotInListThenInAcc!30 (_2!27454 (h!54475 (toList!2957 lm!1707))) key!3918 newValue!99 lt!1568557))))

(assert (=> b!4356055 (= lt!1568557 (extractMap!546 (t!355970 (toList!2957 lm!1707))))))

(assert (=> b!4356055 e!2710821))

(declare-fun res!1790267 () Bool)

(assert (=> b!4356055 (=> (not res!1790267) (not e!2710821))))

(assert (=> b!4356055 (= res!1790267 (not (containsKey!684 (apply!11339 lm!1707 (_1!27454 (h!54475 (toList!2957 lm!1707)))) key!3918)))))

(declare-fun lt!1568556 () Unit!71593)

(declare-fun lemmaNotSameHashThenCannotContainKey!34 (ListLongMap!1607 K!10285 (_ BitVec 64) Hashable!4879) Unit!71593)

(assert (=> b!4356055 (= lt!1568556 (lemmaNotSameHashThenCannotContainKey!34 lm!1707 key!3918 (_1!27454 (h!54475 (toList!2957 lm!1707))) hashF!1247))))

(declare-fun b!4356056 () Bool)

(declare-fun res!1790268 () Bool)

(assert (=> b!4356056 (=> (not res!1790268) (not e!2710816))))

(declare-fun contains!11127 (ListLongMap!1607 (_ BitVec 64)) Bool)

(assert (=> b!4356056 (= res!1790268 (contains!11127 lm!1707 hash!377))))

(declare-fun b!4356057 () Bool)

(declare-fun res!1790266 () Bool)

(assert (=> b!4356057 (=> (not res!1790266) (not e!2710814))))

(declare-fun allKeysSameHash!445 (List!49049 (_ BitVec 64) Hashable!4879) Bool)

(assert (=> b!4356057 (= res!1790266 (allKeysSameHash!445 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4356058 () Bool)

(declare-fun res!1790272 () Bool)

(assert (=> b!4356058 (=> (not res!1790272) (not e!2710820))))

(declare-fun head!9044 (ListLongMap!1607) tuple2!48320)

(assert (=> b!4356058 (= res!1790272 (not (= (head!9044 lm!1707) lt!1568554)))))

(declare-fun tp_is_empty!25187 () Bool)

(declare-fun e!2710819 () Bool)

(declare-fun b!4356059 () Bool)

(declare-fun tp!1330102 () Bool)

(declare-fun tp_is_empty!25185 () Bool)

(assert (=> b!4356059 (= e!2710819 (and tp_is_empty!25185 tp_is_empty!25187 tp!1330102))))

(declare-fun b!4356060 () Bool)

(declare-fun res!1790265 () Bool)

(assert (=> b!4356060 (=> res!1790265 e!2710818)))

(declare-fun noDuplicateKeys!487 (List!49049) Bool)

(assert (=> b!4356060 (= res!1790265 (not (noDuplicateKeys!487 newBucket!200)))))

(declare-fun res!1790269 () Bool)

(assert (=> start!421536 (=> (not res!1790269) (not e!2710814))))

(assert (=> start!421536 (= res!1790269 (forall!9116 (toList!2957 lm!1707) lambda!140335))))

(assert (=> start!421536 e!2710814))

(assert (=> start!421536 e!2710819))

(assert (=> start!421536 true))

(declare-fun e!2710822 () Bool)

(declare-fun inv!64471 (ListLongMap!1607) Bool)

(assert (=> start!421536 (and (inv!64471 lm!1707) e!2710822)))

(assert (=> start!421536 tp_is_empty!25185))

(assert (=> start!421536 tp_is_empty!25187))

(declare-fun b!4356061 () Bool)

(declare-fun res!1790263 () Bool)

(assert (=> b!4356061 (=> (not res!1790263) (not e!2710814))))

(declare-fun hash!1549 (Hashable!4879 K!10285) (_ BitVec 64))

(assert (=> b!4356061 (= res!1790263 (= (hash!1549 hashF!1247 key!3918) hash!377))))

(declare-fun b!4356062 () Bool)

(declare-fun tp!1330101 () Bool)

(assert (=> b!4356062 (= e!2710822 tp!1330101)))

(assert (= (and start!421536 res!1790269) b!4356048))

(assert (= (and b!4356048 res!1790270) b!4356061))

(assert (= (and b!4356061 res!1790263) b!4356057))

(assert (= (and b!4356057 res!1790266) b!4356050))

(assert (= (and b!4356050 res!1790273) b!4356056))

(assert (= (and b!4356056 res!1790268) b!4356051))

(assert (= (and b!4356051 (not res!1790262)) b!4356060))

(assert (= (and b!4356060 (not res!1790265)) b!4356049))

(assert (= (and b!4356049 res!1790264) b!4356053))

(assert (= (and b!4356049 (not res!1790261)) b!4356055))

(assert (= (and b!4356055 res!1790267) b!4356052))

(assert (= (and b!4356055 res!1790271) b!4356058))

(assert (= (and b!4356058 res!1790272) b!4356054))

(assert (= (and start!421536 ((_ is Cons!48925) newBucket!200)) b!4356059))

(assert (= start!421536 b!4356062))

(declare-fun m!4969715 () Bool)

(assert (=> b!4356053 m!4969715))

(declare-fun m!4969717 () Bool)

(assert (=> b!4356055 m!4969717))

(declare-fun m!4969719 () Bool)

(assert (=> b!4356055 m!4969719))

(declare-fun m!4969721 () Bool)

(assert (=> b!4356055 m!4969721))

(declare-fun m!4969723 () Bool)

(assert (=> b!4356055 m!4969723))

(declare-fun m!4969725 () Bool)

(assert (=> b!4356055 m!4969725))

(declare-fun m!4969727 () Bool)

(assert (=> b!4356055 m!4969727))

(declare-fun m!4969729 () Bool)

(assert (=> b!4356055 m!4969729))

(declare-fun m!4969731 () Bool)

(assert (=> b!4356055 m!4969731))

(declare-fun m!4969733 () Bool)

(assert (=> b!4356055 m!4969733))

(declare-fun m!4969735 () Bool)

(assert (=> b!4356055 m!4969735))

(declare-fun m!4969737 () Bool)

(assert (=> b!4356055 m!4969737))

(assert (=> b!4356055 m!4969729))

(declare-fun m!4969739 () Bool)

(assert (=> b!4356055 m!4969739))

(assert (=> b!4356055 m!4969731))

(declare-fun m!4969741 () Bool)

(assert (=> b!4356055 m!4969741))

(declare-fun m!4969743 () Bool)

(assert (=> b!4356055 m!4969743))

(assert (=> b!4356055 m!4969743))

(declare-fun m!4969745 () Bool)

(assert (=> b!4356055 m!4969745))

(declare-fun m!4969747 () Bool)

(assert (=> b!4356057 m!4969747))

(declare-fun m!4969749 () Bool)

(assert (=> b!4356054 m!4969749))

(declare-fun m!4969751 () Bool)

(assert (=> b!4356056 m!4969751))

(assert (=> b!4356049 m!4969715))

(declare-fun m!4969753 () Bool)

(assert (=> b!4356049 m!4969753))

(declare-fun m!4969755 () Bool)

(assert (=> b!4356049 m!4969755))

(declare-fun m!4969757 () Bool)

(assert (=> b!4356049 m!4969757))

(declare-fun m!4969759 () Bool)

(assert (=> b!4356058 m!4969759))

(declare-fun m!4969761 () Bool)

(assert (=> b!4356060 m!4969761))

(declare-fun m!4969763 () Bool)

(assert (=> b!4356061 m!4969763))

(assert (=> start!421536 m!4969757))

(declare-fun m!4969765 () Bool)

(assert (=> start!421536 m!4969765))

(declare-fun m!4969767 () Bool)

(assert (=> b!4356048 m!4969767))

(declare-fun m!4969769 () Bool)

(assert (=> b!4356051 m!4969769))

(declare-fun m!4969771 () Bool)

(assert (=> b!4356051 m!4969771))

(declare-fun m!4969773 () Bool)

(assert (=> b!4356051 m!4969773))

(declare-fun m!4969775 () Bool)

(assert (=> b!4356051 m!4969775))

(declare-fun m!4969777 () Bool)

(assert (=> b!4356051 m!4969777))

(declare-fun m!4969779 () Bool)

(assert (=> b!4356052 m!4969779))

(declare-fun m!4969781 () Bool)

(assert (=> b!4356050 m!4969781))

(declare-fun m!4969783 () Bool)

(assert (=> b!4356050 m!4969783))

(check-sat (not b!4356051) (not b!4356059) (not b!4356053) tp_is_empty!25187 (not b!4356056) (not start!421536) (not b!4356050) tp_is_empty!25185 (not b!4356062) (not b!4356058) (not b!4356061) (not b!4356049) (not b!4356054) (not b!4356060) (not b!4356055) (not b!4356048) (not b!4356052) (not b!4356057))
(check-sat)
(get-model)

(declare-fun d!1287667 () Bool)

(assert (=> d!1287667 true))

(assert (=> d!1287667 true))

(declare-fun lambda!140338 () Int)

(declare-fun forall!9118 (List!49049 Int) Bool)

(assert (=> d!1287667 (= (allKeysSameHash!445 newBucket!200 hash!377 hashF!1247) (forall!9118 newBucket!200 lambda!140338))))

(declare-fun bs!631295 () Bool)

(assert (= bs!631295 d!1287667))

(declare-fun m!4969785 () Bool)

(assert (=> bs!631295 m!4969785))

(assert (=> b!4356057 d!1287667))

(declare-fun d!1287669 () Bool)

(declare-fun head!9046 (List!49050) tuple2!48320)

(assert (=> d!1287669 (= (head!9044 lm!1707) (head!9046 (toList!2957 lm!1707)))))

(declare-fun bs!631296 () Bool)

(assert (= bs!631296 d!1287669))

(declare-fun m!4969795 () Bool)

(assert (=> bs!631296 m!4969795))

(assert (=> b!4356058 d!1287669))

(declare-fun bs!631298 () Bool)

(declare-fun d!1287673 () Bool)

(assert (= bs!631298 (and d!1287673 start!421536)))

(declare-fun lambda!140344 () Int)

(assert (=> bs!631298 (not (= lambda!140344 lambda!140335))))

(assert (=> d!1287673 true))

(assert (=> d!1287673 (= (allKeysSameHashInMap!591 lm!1707 hashF!1247) (forall!9116 (toList!2957 lm!1707) lambda!140344))))

(declare-fun bs!631299 () Bool)

(assert (= bs!631299 d!1287673))

(declare-fun m!4969805 () Bool)

(assert (=> bs!631299 m!4969805))

(assert (=> b!4356048 d!1287673))

(declare-fun d!1287681 () Bool)

(declare-fun res!1790299 () Bool)

(declare-fun e!2710851 () Bool)

(assert (=> d!1287681 (=> res!1790299 e!2710851)))

(assert (=> d!1287681 (= res!1790299 ((_ is Nil!48926) (toList!2957 lm!1707)))))

(assert (=> d!1287681 (= (forall!9116 (toList!2957 lm!1707) lambda!140335) e!2710851)))

(declare-fun b!4356106 () Bool)

(declare-fun e!2710852 () Bool)

(assert (=> b!4356106 (= e!2710851 e!2710852)))

(declare-fun res!1790300 () Bool)

(assert (=> b!4356106 (=> (not res!1790300) (not e!2710852))))

(declare-fun dynLambda!20633 (Int tuple2!48320) Bool)

(assert (=> b!4356106 (= res!1790300 (dynLambda!20633 lambda!140335 (h!54475 (toList!2957 lm!1707))))))

(declare-fun b!4356107 () Bool)

(assert (=> b!4356107 (= e!2710852 (forall!9116 (t!355970 (toList!2957 lm!1707)) lambda!140335))))

(assert (= (and d!1287681 (not res!1790299)) b!4356106))

(assert (= (and b!4356106 res!1790300) b!4356107))

(declare-fun b_lambda!131145 () Bool)

(assert (=> (not b_lambda!131145) (not b!4356106)))

(declare-fun m!4969817 () Bool)

(assert (=> b!4356106 m!4969817))

(declare-fun m!4969819 () Bool)

(assert (=> b!4356107 m!4969819))

(assert (=> start!421536 d!1287681))

(declare-fun d!1287691 () Bool)

(declare-fun isStrictlySorted!102 (List!49050) Bool)

(assert (=> d!1287691 (= (inv!64471 lm!1707) (isStrictlySorted!102 (toList!2957 lm!1707)))))

(declare-fun bs!631304 () Bool)

(assert (= bs!631304 d!1287691))

(declare-fun m!4969821 () Bool)

(assert (=> bs!631304 m!4969821))

(assert (=> start!421536 d!1287691))

(declare-fun d!1287693 () Bool)

(declare-fun res!1790301 () Bool)

(declare-fun e!2710853 () Bool)

(assert (=> d!1287693 (=> res!1790301 e!2710853)))

(assert (=> d!1287693 (= res!1790301 ((_ is Nil!48926) (toList!2957 lt!1568551)))))

(assert (=> d!1287693 (= (forall!9116 (toList!2957 lt!1568551) lambda!140335) e!2710853)))

(declare-fun b!4356108 () Bool)

(declare-fun e!2710854 () Bool)

(assert (=> b!4356108 (= e!2710853 e!2710854)))

(declare-fun res!1790302 () Bool)

(assert (=> b!4356108 (=> (not res!1790302) (not e!2710854))))

(assert (=> b!4356108 (= res!1790302 (dynLambda!20633 lambda!140335 (h!54475 (toList!2957 lt!1568551))))))

(declare-fun b!4356109 () Bool)

(assert (=> b!4356109 (= e!2710854 (forall!9116 (t!355970 (toList!2957 lt!1568551)) lambda!140335))))

(assert (= (and d!1287693 (not res!1790301)) b!4356108))

(assert (= (and b!4356108 res!1790302) b!4356109))

(declare-fun b_lambda!131147 () Bool)

(assert (=> (not b_lambda!131147) (not b!4356108)))

(declare-fun m!4969823 () Bool)

(assert (=> b!4356108 m!4969823))

(declare-fun m!4969825 () Bool)

(assert (=> b!4356109 m!4969825))

(assert (=> b!4356049 d!1287693))

(declare-fun d!1287695 () Bool)

(declare-fun e!2710875 () Bool)

(assert (=> d!1287695 e!2710875))

(declare-fun res!1790316 () Bool)

(assert (=> d!1287695 (=> (not res!1790316) (not e!2710875))))

(declare-fun lt!1568606 () ListLongMap!1607)

(assert (=> d!1287695 (= res!1790316 (contains!11127 lt!1568606 (_1!27454 lt!1568554)))))

(declare-fun lt!1568603 () List!49050)

(assert (=> d!1287695 (= lt!1568606 (ListLongMap!1608 lt!1568603))))

(declare-fun lt!1568605 () Unit!71593)

(declare-fun lt!1568604 () Unit!71593)

(assert (=> d!1287695 (= lt!1568605 lt!1568604)))

(declare-datatypes ((Option!10464 0))(
  ( (None!10463) (Some!10463 (v!43335 List!49049)) )
))
(declare-fun getValueByKey!450 (List!49050 (_ BitVec 64)) Option!10464)

(assert (=> d!1287695 (= (getValueByKey!450 lt!1568603 (_1!27454 lt!1568554)) (Some!10463 (_2!27454 lt!1568554)))))

(declare-fun lemmaContainsTupThenGetReturnValue!224 (List!49050 (_ BitVec 64) List!49049) Unit!71593)

(assert (=> d!1287695 (= lt!1568604 (lemmaContainsTupThenGetReturnValue!224 lt!1568603 (_1!27454 lt!1568554) (_2!27454 lt!1568554)))))

(declare-fun insertStrictlySorted!133 (List!49050 (_ BitVec 64) List!49049) List!49050)

(assert (=> d!1287695 (= lt!1568603 (insertStrictlySorted!133 (toList!2957 lm!1707) (_1!27454 lt!1568554) (_2!27454 lt!1568554)))))

(assert (=> d!1287695 (= (+!631 lm!1707 lt!1568554) lt!1568606)))

(declare-fun b!4356141 () Bool)

(declare-fun res!1790317 () Bool)

(assert (=> b!4356141 (=> (not res!1790317) (not e!2710875))))

(assert (=> b!4356141 (= res!1790317 (= (getValueByKey!450 (toList!2957 lt!1568606) (_1!27454 lt!1568554)) (Some!10463 (_2!27454 lt!1568554))))))

(declare-fun b!4356142 () Bool)

(assert (=> b!4356142 (= e!2710875 (contains!11126 (toList!2957 lt!1568606) lt!1568554))))

(assert (= (and d!1287695 res!1790316) b!4356141))

(assert (= (and b!4356141 res!1790317) b!4356142))

(declare-fun m!4969847 () Bool)

(assert (=> d!1287695 m!4969847))

(declare-fun m!4969849 () Bool)

(assert (=> d!1287695 m!4969849))

(declare-fun m!4969851 () Bool)

(assert (=> d!1287695 m!4969851))

(declare-fun m!4969853 () Bool)

(assert (=> d!1287695 m!4969853))

(declare-fun m!4969855 () Bool)

(assert (=> b!4356141 m!4969855))

(declare-fun m!4969857 () Bool)

(assert (=> b!4356142 m!4969857))

(assert (=> b!4356049 d!1287695))

(declare-fun d!1287699 () Bool)

(assert (=> d!1287699 (forall!9116 (toList!2957 (+!631 lm!1707 (tuple2!48321 hash!377 newBucket!200))) lambda!140335)))

(declare-fun lt!1568614 () Unit!71593)

(declare-fun choose!26895 (ListLongMap!1607 Int (_ BitVec 64) List!49049) Unit!71593)

(assert (=> d!1287699 (= lt!1568614 (choose!26895 lm!1707 lambda!140335 hash!377 newBucket!200))))

(declare-fun e!2710883 () Bool)

(assert (=> d!1287699 e!2710883))

(declare-fun res!1790320 () Bool)

(assert (=> d!1287699 (=> (not res!1790320) (not e!2710883))))

(assert (=> d!1287699 (= res!1790320 (forall!9116 (toList!2957 lm!1707) lambda!140335))))

(assert (=> d!1287699 (= (addValidProp!141 lm!1707 lambda!140335 hash!377 newBucket!200) lt!1568614)))

(declare-fun b!4356156 () Bool)

(assert (=> b!4356156 (= e!2710883 (dynLambda!20633 lambda!140335 (tuple2!48321 hash!377 newBucket!200)))))

(assert (= (and d!1287699 res!1790320) b!4356156))

(declare-fun b_lambda!131149 () Bool)

(assert (=> (not b_lambda!131149) (not b!4356156)))

(declare-fun m!4969887 () Bool)

(assert (=> d!1287699 m!4969887))

(declare-fun m!4969889 () Bool)

(assert (=> d!1287699 m!4969889))

(declare-fun m!4969891 () Bool)

(assert (=> d!1287699 m!4969891))

(assert (=> d!1287699 m!4969757))

(declare-fun m!4969893 () Bool)

(assert (=> b!4356156 m!4969893))

(assert (=> b!4356049 d!1287699))

(assert (=> b!4356049 d!1287681))

(declare-fun d!1287711 () Bool)

(declare-fun res!1790328 () Bool)

(declare-fun e!2710894 () Bool)

(assert (=> d!1287711 (=> res!1790328 e!2710894)))

(assert (=> d!1287711 (= res!1790328 (not ((_ is Cons!48925) newBucket!200)))))

(assert (=> d!1287711 (= (noDuplicateKeys!487 newBucket!200) e!2710894)))

(declare-fun b!4356170 () Bool)

(declare-fun e!2710895 () Bool)

(assert (=> b!4356170 (= e!2710894 e!2710895)))

(declare-fun res!1790329 () Bool)

(assert (=> b!4356170 (=> (not res!1790329) (not e!2710895))))

(assert (=> b!4356170 (= res!1790329 (not (containsKey!684 (t!355969 newBucket!200) (_1!27453 (h!54474 newBucket!200)))))))

(declare-fun b!4356171 () Bool)

(assert (=> b!4356171 (= e!2710895 (noDuplicateKeys!487 (t!355969 newBucket!200)))))

(assert (= (and d!1287711 (not res!1790328)) b!4356170))

(assert (= (and b!4356170 res!1790329) b!4356171))

(declare-fun m!4969919 () Bool)

(assert (=> b!4356170 m!4969919))

(declare-fun m!4969921 () Bool)

(assert (=> b!4356171 m!4969921))

(assert (=> b!4356060 d!1287711))

(declare-fun bm!302726 () Bool)

(declare-fun call!302731 () Bool)

(declare-datatypes ((List!49052 0))(
  ( (Nil!48928) (Cons!48928 (h!54479 K!10285) (t!355972 List!49052)) )
))
(declare-fun e!2710928 () List!49052)

(declare-fun contains!11130 (List!49052 K!10285) Bool)

(assert (=> bm!302726 (= call!302731 (contains!11130 e!2710928 key!3918))))

(declare-fun c!740647 () Bool)

(declare-fun c!740649 () Bool)

(assert (=> bm!302726 (= c!740647 c!740649)))

(declare-fun b!4356219 () Bool)

(assert (=> b!4356219 false))

(declare-fun lt!1568688 () Unit!71593)

(declare-fun lt!1568683 () Unit!71593)

(assert (=> b!4356219 (= lt!1568688 lt!1568683)))

(declare-fun containsKey!687 (List!49049 K!10285) Bool)

(assert (=> b!4356219 (containsKey!687 (toList!2958 lt!1568547) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!122 (List!49049 K!10285) Unit!71593)

(assert (=> b!4356219 (= lt!1568683 (lemmaInGetKeysListThenContainsKey!122 (toList!2958 lt!1568547) key!3918))))

(declare-fun e!2710930 () Unit!71593)

(declare-fun Unit!71602 () Unit!71593)

(assert (=> b!4356219 (= e!2710930 Unit!71602)))

(declare-fun d!1287717 () Bool)

(declare-fun e!2710931 () Bool)

(assert (=> d!1287717 e!2710931))

(declare-fun res!1790358 () Bool)

(assert (=> d!1287717 (=> res!1790358 e!2710931)))

(declare-fun e!2710932 () Bool)

(assert (=> d!1287717 (= res!1790358 e!2710932)))

(declare-fun res!1790359 () Bool)

(assert (=> d!1287717 (=> (not res!1790359) (not e!2710932))))

(declare-fun lt!1568685 () Bool)

(assert (=> d!1287717 (= res!1790359 (not lt!1568685))))

(declare-fun lt!1568682 () Bool)

(assert (=> d!1287717 (= lt!1568685 lt!1568682)))

(declare-fun lt!1568681 () Unit!71593)

(declare-fun e!2710927 () Unit!71593)

(assert (=> d!1287717 (= lt!1568681 e!2710927)))

(assert (=> d!1287717 (= c!740649 lt!1568682)))

(assert (=> d!1287717 (= lt!1568682 (containsKey!687 (toList!2958 lt!1568547) key!3918))))

(assert (=> d!1287717 (= (contains!11125 lt!1568547 key!3918) lt!1568685)))

(declare-fun b!4356220 () Bool)

(declare-fun e!2710929 () Bool)

(assert (=> b!4356220 (= e!2710931 e!2710929)))

(declare-fun res!1790357 () Bool)

(assert (=> b!4356220 (=> (not res!1790357) (not e!2710929))))

(declare-datatypes ((Option!10465 0))(
  ( (None!10464) (Some!10464 (v!43336 V!10531)) )
))
(declare-fun isDefined!7758 (Option!10465) Bool)

(declare-fun getValueByKey!451 (List!49049 K!10285) Option!10465)

(assert (=> b!4356220 (= res!1790357 (isDefined!7758 (getValueByKey!451 (toList!2958 lt!1568547) key!3918)))))

(declare-fun b!4356221 () Bool)

(declare-fun lt!1568684 () Unit!71593)

(assert (=> b!4356221 (= e!2710927 lt!1568684)))

(declare-fun lt!1568687 () Unit!71593)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!361 (List!49049 K!10285) Unit!71593)

(assert (=> b!4356221 (= lt!1568687 (lemmaContainsKeyImpliesGetValueByKeyDefined!361 (toList!2958 lt!1568547) key!3918))))

(assert (=> b!4356221 (isDefined!7758 (getValueByKey!451 (toList!2958 lt!1568547) key!3918))))

(declare-fun lt!1568686 () Unit!71593)

(assert (=> b!4356221 (= lt!1568686 lt!1568687)))

(declare-fun lemmaInListThenGetKeysListContains!121 (List!49049 K!10285) Unit!71593)

(assert (=> b!4356221 (= lt!1568684 (lemmaInListThenGetKeysListContains!121 (toList!2958 lt!1568547) key!3918))))

(assert (=> b!4356221 call!302731))

(declare-fun b!4356222 () Bool)

(declare-fun keys!16524 (ListMap!2201) List!49052)

(assert (=> b!4356222 (= e!2710932 (not (contains!11130 (keys!16524 lt!1568547) key!3918)))))

(declare-fun b!4356223 () Bool)

(declare-fun Unit!71603 () Unit!71593)

(assert (=> b!4356223 (= e!2710930 Unit!71603)))

(declare-fun b!4356224 () Bool)

(assert (=> b!4356224 (= e!2710928 (keys!16524 lt!1568547))))

(declare-fun b!4356225 () Bool)

(declare-fun getKeysList!124 (List!49049) List!49052)

(assert (=> b!4356225 (= e!2710928 (getKeysList!124 (toList!2958 lt!1568547)))))

(declare-fun b!4356226 () Bool)

(assert (=> b!4356226 (= e!2710927 e!2710930)))

(declare-fun c!740648 () Bool)

(assert (=> b!4356226 (= c!740648 call!302731)))

(declare-fun b!4356227 () Bool)

(assert (=> b!4356227 (= e!2710929 (contains!11130 (keys!16524 lt!1568547) key!3918))))

(assert (= (and d!1287717 c!740649) b!4356221))

(assert (= (and d!1287717 (not c!740649)) b!4356226))

(assert (= (and b!4356226 c!740648) b!4356219))

(assert (= (and b!4356226 (not c!740648)) b!4356223))

(assert (= (or b!4356221 b!4356226) bm!302726))

(assert (= (and bm!302726 c!740647) b!4356225))

(assert (= (and bm!302726 (not c!740647)) b!4356224))

(assert (= (and d!1287717 res!1790359) b!4356222))

(assert (= (and d!1287717 (not res!1790358)) b!4356220))

(assert (= (and b!4356220 res!1790357) b!4356227))

(declare-fun m!4970009 () Bool)

(assert (=> bm!302726 m!4970009))

(declare-fun m!4970011 () Bool)

(assert (=> b!4356227 m!4970011))

(assert (=> b!4356227 m!4970011))

(declare-fun m!4970013 () Bool)

(assert (=> b!4356227 m!4970013))

(assert (=> b!4356224 m!4970011))

(declare-fun m!4970015 () Bool)

(assert (=> b!4356221 m!4970015))

(declare-fun m!4970017 () Bool)

(assert (=> b!4356221 m!4970017))

(assert (=> b!4356221 m!4970017))

(declare-fun m!4970023 () Bool)

(assert (=> b!4356221 m!4970023))

(declare-fun m!4970025 () Bool)

(assert (=> b!4356221 m!4970025))

(assert (=> b!4356222 m!4970011))

(assert (=> b!4356222 m!4970011))

(assert (=> b!4356222 m!4970013))

(assert (=> b!4356220 m!4970017))

(assert (=> b!4356220 m!4970017))

(assert (=> b!4356220 m!4970023))

(declare-fun m!4970027 () Bool)

(assert (=> b!4356225 m!4970027))

(declare-fun m!4970029 () Bool)

(assert (=> d!1287717 m!4970029))

(assert (=> b!4356219 m!4970029))

(declare-fun m!4970031 () Bool)

(assert (=> b!4356219 m!4970031))

(assert (=> b!4356050 d!1287717))

(declare-fun bs!631340 () Bool)

(declare-fun d!1287745 () Bool)

(assert (= bs!631340 (and d!1287745 start!421536)))

(declare-fun lambda!140362 () Int)

(assert (=> bs!631340 (= lambda!140362 lambda!140335)))

(declare-fun bs!631341 () Bool)

(assert (= bs!631341 (and d!1287745 d!1287673)))

(assert (=> bs!631341 (not (= lambda!140362 lambda!140344))))

(declare-fun lt!1568710 () ListMap!2201)

(declare-fun invariantList!676 (List!49049) Bool)

(assert (=> d!1287745 (invariantList!676 (toList!2958 lt!1568710))))

(declare-fun e!2710957 () ListMap!2201)

(assert (=> d!1287745 (= lt!1568710 e!2710957)))

(declare-fun c!740658 () Bool)

(assert (=> d!1287745 (= c!740658 ((_ is Cons!48926) (toList!2957 lm!1707)))))

(assert (=> d!1287745 (forall!9116 (toList!2957 lm!1707) lambda!140362)))

(assert (=> d!1287745 (= (extractMap!546 (toList!2957 lm!1707)) lt!1568710)))

(declare-fun b!4356262 () Bool)

(assert (=> b!4356262 (= e!2710957 (addToMapMapFromBucket!183 (_2!27454 (h!54475 (toList!2957 lm!1707))) (extractMap!546 (t!355970 (toList!2957 lm!1707)))))))

(declare-fun b!4356263 () Bool)

(assert (=> b!4356263 (= e!2710957 (ListMap!2202 Nil!48925))))

(assert (= (and d!1287745 c!740658) b!4356262))

(assert (= (and d!1287745 (not c!740658)) b!4356263))

(declare-fun m!4970069 () Bool)

(assert (=> d!1287745 m!4970069))

(declare-fun m!4970071 () Bool)

(assert (=> d!1287745 m!4970071))

(assert (=> b!4356262 m!4969717))

(assert (=> b!4356262 m!4969717))

(declare-fun m!4970073 () Bool)

(assert (=> b!4356262 m!4970073))

(assert (=> b!4356050 d!1287745))

(declare-fun d!1287757 () Bool)

(declare-fun hash!1555 (Hashable!4879 K!10285) (_ BitVec 64))

(assert (=> d!1287757 (= (hash!1549 hashF!1247 key!3918) (hash!1555 hashF!1247 key!3918))))

(declare-fun bs!631342 () Bool)

(assert (= bs!631342 d!1287757))

(declare-fun m!4970075 () Bool)

(assert (=> bs!631342 m!4970075))

(assert (=> b!4356061 d!1287757))

(declare-fun d!1287759 () Bool)

(declare-fun get!15892 (Option!10464) List!49049)

(assert (=> d!1287759 (= (apply!11339 lm!1707 hash!377) (get!15892 (getValueByKey!450 (toList!2957 lm!1707) hash!377)))))

(declare-fun bs!631343 () Bool)

(assert (= bs!631343 d!1287759))

(declare-fun m!4970077 () Bool)

(assert (=> bs!631343 m!4970077))

(assert (=> bs!631343 m!4970077))

(declare-fun m!4970079 () Bool)

(assert (=> bs!631343 m!4970079))

(assert (=> b!4356051 d!1287759))

(declare-fun b!4356274 () Bool)

(declare-fun e!2710963 () List!49049)

(assert (=> b!4356274 (= e!2710963 (Cons!48925 (h!54474 lt!1568549) (removePairForKey!457 (t!355969 lt!1568549) key!3918)))))

(declare-fun b!4356273 () Bool)

(declare-fun e!2710962 () List!49049)

(assert (=> b!4356273 (= e!2710962 e!2710963)))

(declare-fun c!740664 () Bool)

(assert (=> b!4356273 (= c!740664 ((_ is Cons!48925) lt!1568549))))

(declare-fun d!1287761 () Bool)

(declare-fun lt!1568713 () List!49049)

(assert (=> d!1287761 (not (containsKey!684 lt!1568713 key!3918))))

(assert (=> d!1287761 (= lt!1568713 e!2710962)))

(declare-fun c!740663 () Bool)

(assert (=> d!1287761 (= c!740663 (and ((_ is Cons!48925) lt!1568549) (= (_1!27453 (h!54474 lt!1568549)) key!3918)))))

(assert (=> d!1287761 (noDuplicateKeys!487 lt!1568549)))

(assert (=> d!1287761 (= (removePairForKey!457 lt!1568549 key!3918) lt!1568713)))

(declare-fun b!4356272 () Bool)

(assert (=> b!4356272 (= e!2710962 (t!355969 lt!1568549))))

(declare-fun b!4356275 () Bool)

(assert (=> b!4356275 (= e!2710963 Nil!48925)))

(assert (= (and d!1287761 c!740663) b!4356272))

(assert (= (and d!1287761 (not c!740663)) b!4356273))

(assert (= (and b!4356273 c!740664) b!4356274))

(assert (= (and b!4356273 (not c!740664)) b!4356275))

(declare-fun m!4970081 () Bool)

(assert (=> b!4356274 m!4970081))

(declare-fun m!4970083 () Bool)

(assert (=> d!1287761 m!4970083))

(declare-fun m!4970085 () Bool)

(assert (=> d!1287761 m!4970085))

(assert (=> b!4356051 d!1287761))

(declare-fun d!1287763 () Bool)

(assert (=> d!1287763 (contains!11126 (toList!2957 lm!1707) (tuple2!48321 hash!377 lt!1568549))))

(declare-fun lt!1568716 () Unit!71593)

(declare-fun choose!26898 (List!49050 (_ BitVec 64) List!49049) Unit!71593)

(assert (=> d!1287763 (= lt!1568716 (choose!26898 (toList!2957 lm!1707) hash!377 lt!1568549))))

(declare-fun e!2710966 () Bool)

(assert (=> d!1287763 e!2710966))

(declare-fun res!1790379 () Bool)

(assert (=> d!1287763 (=> (not res!1790379) (not e!2710966))))

(assert (=> d!1287763 (= res!1790379 (isStrictlySorted!102 (toList!2957 lm!1707)))))

(assert (=> d!1287763 (= (lemmaGetValueByKeyImpliesContainsTuple!334 (toList!2957 lm!1707) hash!377 lt!1568549) lt!1568716)))

(declare-fun b!4356278 () Bool)

(assert (=> b!4356278 (= e!2710966 (= (getValueByKey!450 (toList!2957 lm!1707) hash!377) (Some!10463 lt!1568549)))))

(assert (= (and d!1287763 res!1790379) b!4356278))

(declare-fun m!4970087 () Bool)

(assert (=> d!1287763 m!4970087))

(declare-fun m!4970089 () Bool)

(assert (=> d!1287763 m!4970089))

(assert (=> d!1287763 m!4969821))

(assert (=> b!4356278 m!4970077))

(assert (=> b!4356051 d!1287763))

(declare-fun d!1287765 () Bool)

(assert (=> d!1287765 (dynLambda!20633 lambda!140335 lt!1568558)))

(declare-fun lt!1568719 () Unit!71593)

(declare-fun choose!26899 (List!49050 Int tuple2!48320) Unit!71593)

(assert (=> d!1287765 (= lt!1568719 (choose!26899 (toList!2957 lm!1707) lambda!140335 lt!1568558))))

(declare-fun e!2710969 () Bool)

(assert (=> d!1287765 e!2710969))

(declare-fun res!1790382 () Bool)

(assert (=> d!1287765 (=> (not res!1790382) (not e!2710969))))

(assert (=> d!1287765 (= res!1790382 (forall!9116 (toList!2957 lm!1707) lambda!140335))))

(assert (=> d!1287765 (= (forallContained!1757 (toList!2957 lm!1707) lambda!140335 lt!1568558) lt!1568719)))

(declare-fun b!4356281 () Bool)

(assert (=> b!4356281 (= e!2710969 (contains!11126 (toList!2957 lm!1707) lt!1568558))))

(assert (= (and d!1287765 res!1790382) b!4356281))

(declare-fun b_lambda!131159 () Bool)

(assert (=> (not b_lambda!131159) (not d!1287765)))

(declare-fun m!4970091 () Bool)

(assert (=> d!1287765 m!4970091))

(declare-fun m!4970093 () Bool)

(assert (=> d!1287765 m!4970093))

(assert (=> d!1287765 m!4969757))

(assert (=> b!4356281 m!4969775))

(assert (=> b!4356051 d!1287765))

(declare-fun d!1287767 () Bool)

(declare-fun lt!1568722 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7716 (List!49050) (InoxSet tuple2!48320))

(assert (=> d!1287767 (= lt!1568722 (select (content!7716 (toList!2957 lm!1707)) lt!1568558))))

(declare-fun e!2710974 () Bool)

(assert (=> d!1287767 (= lt!1568722 e!2710974)))

(declare-fun res!1790387 () Bool)

(assert (=> d!1287767 (=> (not res!1790387) (not e!2710974))))

(assert (=> d!1287767 (= res!1790387 ((_ is Cons!48926) (toList!2957 lm!1707)))))

(assert (=> d!1287767 (= (contains!11126 (toList!2957 lm!1707) lt!1568558) lt!1568722)))

(declare-fun b!4356286 () Bool)

(declare-fun e!2710975 () Bool)

(assert (=> b!4356286 (= e!2710974 e!2710975)))

(declare-fun res!1790388 () Bool)

(assert (=> b!4356286 (=> res!1790388 e!2710975)))

(assert (=> b!4356286 (= res!1790388 (= (h!54475 (toList!2957 lm!1707)) lt!1568558))))

(declare-fun b!4356287 () Bool)

(assert (=> b!4356287 (= e!2710975 (contains!11126 (t!355970 (toList!2957 lm!1707)) lt!1568558))))

(assert (= (and d!1287767 res!1790387) b!4356286))

(assert (= (and b!4356286 (not res!1790388)) b!4356287))

(declare-fun m!4970095 () Bool)

(assert (=> d!1287767 m!4970095))

(declare-fun m!4970097 () Bool)

(assert (=> d!1287767 m!4970097))

(declare-fun m!4970099 () Bool)

(assert (=> b!4356287 m!4970099))

(assert (=> b!4356051 d!1287767))

(declare-fun d!1287769 () Bool)

(declare-fun res!1790393 () Bool)

(declare-fun e!2710980 () Bool)

(assert (=> d!1287769 (=> res!1790393 e!2710980)))

(assert (=> d!1287769 (= res!1790393 (and ((_ is Cons!48925) (_2!27454 (h!54475 (toList!2957 lm!1707)))) (= (_1!27453 (h!54474 (_2!27454 (h!54475 (toList!2957 lm!1707))))) key!3918)))))

(assert (=> d!1287769 (= (containsKey!684 (_2!27454 (h!54475 (toList!2957 lm!1707))) key!3918) e!2710980)))

(declare-fun b!4356292 () Bool)

(declare-fun e!2710981 () Bool)

(assert (=> b!4356292 (= e!2710980 e!2710981)))

(declare-fun res!1790394 () Bool)

(assert (=> b!4356292 (=> (not res!1790394) (not e!2710981))))

(assert (=> b!4356292 (= res!1790394 ((_ is Cons!48925) (_2!27454 (h!54475 (toList!2957 lm!1707)))))))

(declare-fun b!4356293 () Bool)

(assert (=> b!4356293 (= e!2710981 (containsKey!684 (t!355969 (_2!27454 (h!54475 (toList!2957 lm!1707)))) key!3918))))

(assert (= (and d!1287769 (not res!1790393)) b!4356292))

(assert (= (and b!4356292 res!1790394) b!4356293))

(declare-fun m!4970101 () Bool)

(assert (=> b!4356293 m!4970101))

(assert (=> b!4356052 d!1287769))

(assert (=> b!4356053 d!1287693))

(declare-fun bs!631355 () Bool)

(declare-fun b!4356332 () Bool)

(assert (= bs!631355 (and b!4356332 d!1287667)))

(declare-fun lambda!140423 () Int)

(assert (=> bs!631355 (not (= lambda!140423 lambda!140338))))

(assert (=> b!4356332 true))

(declare-fun bs!631356 () Bool)

(declare-fun b!4356333 () Bool)

(assert (= bs!631356 (and b!4356333 d!1287667)))

(declare-fun lambda!140424 () Int)

(assert (=> bs!631356 (not (= lambda!140424 lambda!140338))))

(declare-fun bs!631357 () Bool)

(assert (= bs!631357 (and b!4356333 b!4356332)))

(assert (=> bs!631357 (= lambda!140424 lambda!140423)))

(assert (=> b!4356333 true))

(declare-fun lambda!140425 () Int)

(assert (=> bs!631356 (not (= lambda!140425 lambda!140338))))

(declare-fun lt!1568842 () ListMap!2201)

(assert (=> bs!631357 (= (= lt!1568842 lt!1568555) (= lambda!140425 lambda!140423))))

(assert (=> b!4356333 (= (= lt!1568842 lt!1568555) (= lambda!140425 lambda!140424))))

(assert (=> b!4356333 true))

(declare-fun bs!631358 () Bool)

(declare-fun d!1287771 () Bool)

(assert (= bs!631358 (and d!1287771 d!1287667)))

(declare-fun lambda!140426 () Int)

(assert (=> bs!631358 (not (= lambda!140426 lambda!140338))))

(declare-fun bs!631359 () Bool)

(assert (= bs!631359 (and d!1287771 b!4356332)))

(declare-fun lt!1568845 () ListMap!2201)

(assert (=> bs!631359 (= (= lt!1568845 lt!1568555) (= lambda!140426 lambda!140423))))

(declare-fun bs!631360 () Bool)

(assert (= bs!631360 (and d!1287771 b!4356333)))

(assert (=> bs!631360 (= (= lt!1568845 lt!1568555) (= lambda!140426 lambda!140424))))

(assert (=> bs!631360 (= (= lt!1568845 lt!1568842) (= lambda!140426 lambda!140425))))

(assert (=> d!1287771 true))

(declare-fun b!4356331 () Bool)

(declare-fun res!1790411 () Bool)

(declare-fun e!2711005 () Bool)

(assert (=> b!4356331 (=> (not res!1790411) (not e!2711005))))

(assert (=> b!4356331 (= res!1790411 (forall!9118 (toList!2958 lt!1568555) lambda!140426))))

(declare-fun call!302748 () Bool)

(declare-fun bm!302742 () Bool)

(declare-fun c!740670 () Bool)

(assert (=> bm!302742 (= call!302748 (forall!9118 (ite c!740670 (toList!2958 lt!1568555) (t!355969 (_2!27454 (h!54475 (toList!2957 lm!1707))))) (ite c!740670 lambda!140423 lambda!140425)))))

(assert (=> d!1287771 e!2711005))

(declare-fun res!1790410 () Bool)

(assert (=> d!1287771 (=> (not res!1790410) (not e!2711005))))

(assert (=> d!1287771 (= res!1790410 (forall!9118 (_2!27454 (h!54475 (toList!2957 lm!1707))) lambda!140426))))

(declare-fun e!2711003 () ListMap!2201)

(assert (=> d!1287771 (= lt!1568845 e!2711003)))

(assert (=> d!1287771 (= c!740670 ((_ is Nil!48925) (_2!27454 (h!54475 (toList!2957 lm!1707)))))))

(assert (=> d!1287771 (noDuplicateKeys!487 (_2!27454 (h!54475 (toList!2957 lm!1707))))))

(assert (=> d!1287771 (= (addToMapMapFromBucket!183 (_2!27454 (h!54475 (toList!2957 lm!1707))) lt!1568555) lt!1568845)))

(assert (=> b!4356332 (= e!2711003 lt!1568555)))

(declare-fun lt!1568836 () Unit!71593)

(declare-fun call!302747 () Unit!71593)

(assert (=> b!4356332 (= lt!1568836 call!302747)))

(declare-fun call!302749 () Bool)

(assert (=> b!4356332 call!302749))

(declare-fun lt!1568828 () Unit!71593)

(assert (=> b!4356332 (= lt!1568828 lt!1568836)))

(assert (=> b!4356332 call!302748))

(declare-fun lt!1568830 () Unit!71593)

(declare-fun Unit!71607 () Unit!71593)

(assert (=> b!4356332 (= lt!1568830 Unit!71607)))

(assert (=> b!4356333 (= e!2711003 lt!1568842)))

(declare-fun lt!1568848 () ListMap!2201)

(assert (=> b!4356333 (= lt!1568848 (+!632 lt!1568555 (h!54474 (_2!27454 (h!54475 (toList!2957 lm!1707))))))))

(assert (=> b!4356333 (= lt!1568842 (addToMapMapFromBucket!183 (t!355969 (_2!27454 (h!54475 (toList!2957 lm!1707)))) (+!632 lt!1568555 (h!54474 (_2!27454 (h!54475 (toList!2957 lm!1707)))))))))

(declare-fun lt!1568835 () Unit!71593)

(assert (=> b!4356333 (= lt!1568835 call!302747)))

(assert (=> b!4356333 (forall!9118 (toList!2958 lt!1568555) lambda!140424)))

(declare-fun lt!1568846 () Unit!71593)

(assert (=> b!4356333 (= lt!1568846 lt!1568835)))

(assert (=> b!4356333 (forall!9118 (toList!2958 lt!1568848) lambda!140425)))

(declare-fun lt!1568838 () Unit!71593)

(declare-fun Unit!71611 () Unit!71593)

(assert (=> b!4356333 (= lt!1568838 Unit!71611)))

(assert (=> b!4356333 call!302748))

(declare-fun lt!1568844 () Unit!71593)

(declare-fun Unit!71612 () Unit!71593)

(assert (=> b!4356333 (= lt!1568844 Unit!71612)))

(declare-fun lt!1568832 () Unit!71593)

(declare-fun Unit!71614 () Unit!71593)

(assert (=> b!4356333 (= lt!1568832 Unit!71614)))

(declare-fun lt!1568837 () Unit!71593)

(declare-fun forallContained!1759 (List!49049 Int tuple2!48318) Unit!71593)

(assert (=> b!4356333 (= lt!1568837 (forallContained!1759 (toList!2958 lt!1568848) lambda!140425 (h!54474 (_2!27454 (h!54475 (toList!2957 lm!1707))))))))

(assert (=> b!4356333 (contains!11125 lt!1568848 (_1!27453 (h!54474 (_2!27454 (h!54475 (toList!2957 lm!1707))))))))

(declare-fun lt!1568840 () Unit!71593)

(declare-fun Unit!71617 () Unit!71593)

(assert (=> b!4356333 (= lt!1568840 Unit!71617)))

(assert (=> b!4356333 (contains!11125 lt!1568842 (_1!27453 (h!54474 (_2!27454 (h!54475 (toList!2957 lm!1707))))))))

(declare-fun lt!1568847 () Unit!71593)

(declare-fun Unit!71618 () Unit!71593)

(assert (=> b!4356333 (= lt!1568847 Unit!71618)))

(assert (=> b!4356333 (forall!9118 (_2!27454 (h!54475 (toList!2957 lm!1707))) lambda!140425)))

(declare-fun lt!1568841 () Unit!71593)

(declare-fun Unit!71619 () Unit!71593)

(assert (=> b!4356333 (= lt!1568841 Unit!71619)))

(assert (=> b!4356333 (forall!9118 (toList!2958 lt!1568848) lambda!140425)))

(declare-fun lt!1568829 () Unit!71593)

(declare-fun Unit!71621 () Unit!71593)

(assert (=> b!4356333 (= lt!1568829 Unit!71621)))

(declare-fun lt!1568833 () Unit!71593)

(declare-fun Unit!71622 () Unit!71593)

(assert (=> b!4356333 (= lt!1568833 Unit!71622)))

(declare-fun lt!1568839 () Unit!71593)

(declare-fun addForallContainsKeyThenBeforeAdding!59 (ListMap!2201 ListMap!2201 K!10285 V!10531) Unit!71593)

(assert (=> b!4356333 (= lt!1568839 (addForallContainsKeyThenBeforeAdding!59 lt!1568555 lt!1568842 (_1!27453 (h!54474 (_2!27454 (h!54475 (toList!2957 lm!1707))))) (_2!27453 (h!54474 (_2!27454 (h!54475 (toList!2957 lm!1707)))))))))

(assert (=> b!4356333 (forall!9118 (toList!2958 lt!1568555) lambda!140425)))

(declare-fun lt!1568834 () Unit!71593)

(assert (=> b!4356333 (= lt!1568834 lt!1568839)))

(assert (=> b!4356333 (forall!9118 (toList!2958 lt!1568555) lambda!140425)))

(declare-fun lt!1568843 () Unit!71593)

(declare-fun Unit!71624 () Unit!71593)

(assert (=> b!4356333 (= lt!1568843 Unit!71624)))

(declare-fun res!1790412 () Bool)

(assert (=> b!4356333 (= res!1790412 (forall!9118 (_2!27454 (h!54475 (toList!2957 lm!1707))) lambda!140425))))

(declare-fun e!2711004 () Bool)

(assert (=> b!4356333 (=> (not res!1790412) (not e!2711004))))

(assert (=> b!4356333 e!2711004))

(declare-fun lt!1568831 () Unit!71593)

(declare-fun Unit!71625 () Unit!71593)

(assert (=> b!4356333 (= lt!1568831 Unit!71625)))

(declare-fun bm!302743 () Bool)

(assert (=> bm!302743 (= call!302749 (forall!9118 (toList!2958 lt!1568555) (ite c!740670 lambda!140423 lambda!140425)))))

(declare-fun bm!302744 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!59 (ListMap!2201) Unit!71593)

(assert (=> bm!302744 (= call!302747 (lemmaContainsAllItsOwnKeys!59 lt!1568555))))

(declare-fun b!4356334 () Bool)

(assert (=> b!4356334 (= e!2711004 call!302749)))

(declare-fun b!4356335 () Bool)

(assert (=> b!4356335 (= e!2711005 (invariantList!676 (toList!2958 lt!1568845)))))

(assert (= (and d!1287771 c!740670) b!4356332))

(assert (= (and d!1287771 (not c!740670)) b!4356333))

(assert (= (and b!4356333 res!1790412) b!4356334))

(assert (= (or b!4356332 b!4356333) bm!302744))

(assert (= (or b!4356332 b!4356333) bm!302742))

(assert (= (or b!4356332 b!4356334) bm!302743))

(assert (= (and d!1287771 res!1790410) b!4356331))

(assert (= (and b!4356331 res!1790411) b!4356335))

(declare-fun m!4970143 () Bool)

(assert (=> bm!302743 m!4970143))

(declare-fun m!4970145 () Bool)

(assert (=> b!4356333 m!4970145))

(declare-fun m!4970147 () Bool)

(assert (=> b!4356333 m!4970147))

(declare-fun m!4970149 () Bool)

(assert (=> b!4356333 m!4970149))

(declare-fun m!4970151 () Bool)

(assert (=> b!4356333 m!4970151))

(assert (=> b!4356333 m!4970145))

(assert (=> b!4356333 m!4970149))

(declare-fun m!4970153 () Bool)

(assert (=> b!4356333 m!4970153))

(declare-fun m!4970155 () Bool)

(assert (=> b!4356333 m!4970155))

(assert (=> b!4356333 m!4970147))

(declare-fun m!4970157 () Bool)

(assert (=> b!4356333 m!4970157))

(declare-fun m!4970159 () Bool)

(assert (=> b!4356333 m!4970159))

(declare-fun m!4970161 () Bool)

(assert (=> b!4356333 m!4970161))

(assert (=> b!4356333 m!4970155))

(declare-fun m!4970163 () Bool)

(assert (=> b!4356333 m!4970163))

(declare-fun m!4970165 () Bool)

(assert (=> b!4356331 m!4970165))

(declare-fun m!4970167 () Bool)

(assert (=> bm!302742 m!4970167))

(declare-fun m!4970169 () Bool)

(assert (=> bm!302744 m!4970169))

(declare-fun m!4970171 () Bool)

(assert (=> b!4356335 m!4970171))

(declare-fun m!4970173 () Bool)

(assert (=> d!1287771 m!4970173))

(declare-fun m!4970175 () Bool)

(assert (=> d!1287771 m!4970175))

(assert (=> b!4356054 d!1287771))

(declare-fun d!1287783 () Bool)

(declare-fun e!2711006 () Bool)

(assert (=> d!1287783 e!2711006))

(declare-fun res!1790413 () Bool)

(assert (=> d!1287783 (=> (not res!1790413) (not e!2711006))))

(declare-fun lt!1568852 () ListLongMap!1607)

(assert (=> d!1287783 (= res!1790413 (contains!11127 lt!1568852 (_1!27454 lt!1568554)))))

(declare-fun lt!1568849 () List!49050)

(assert (=> d!1287783 (= lt!1568852 (ListLongMap!1608 lt!1568849))))

(declare-fun lt!1568851 () Unit!71593)

(declare-fun lt!1568850 () Unit!71593)

(assert (=> d!1287783 (= lt!1568851 lt!1568850)))

(assert (=> d!1287783 (= (getValueByKey!450 lt!1568849 (_1!27454 lt!1568554)) (Some!10463 (_2!27454 lt!1568554)))))

(assert (=> d!1287783 (= lt!1568850 (lemmaContainsTupThenGetReturnValue!224 lt!1568849 (_1!27454 lt!1568554) (_2!27454 lt!1568554)))))

(assert (=> d!1287783 (= lt!1568849 (insertStrictlySorted!133 (toList!2957 lt!1568548) (_1!27454 lt!1568554) (_2!27454 lt!1568554)))))

(assert (=> d!1287783 (= (+!631 lt!1568548 lt!1568554) lt!1568852)))

(declare-fun b!4356338 () Bool)

(declare-fun res!1790414 () Bool)

(assert (=> b!4356338 (=> (not res!1790414) (not e!2711006))))

(assert (=> b!4356338 (= res!1790414 (= (getValueByKey!450 (toList!2957 lt!1568852) (_1!27454 lt!1568554)) (Some!10463 (_2!27454 lt!1568554))))))

(declare-fun b!4356339 () Bool)

(assert (=> b!4356339 (= e!2711006 (contains!11126 (toList!2957 lt!1568852) lt!1568554))))

(assert (= (and d!1287783 res!1790413) b!4356338))

(assert (= (and b!4356338 res!1790414) b!4356339))

(declare-fun m!4970177 () Bool)

(assert (=> d!1287783 m!4970177))

(declare-fun m!4970179 () Bool)

(assert (=> d!1287783 m!4970179))

(declare-fun m!4970181 () Bool)

(assert (=> d!1287783 m!4970181))

(declare-fun m!4970183 () Bool)

(assert (=> d!1287783 m!4970183))

(declare-fun m!4970185 () Bool)

(assert (=> b!4356338 m!4970185))

(declare-fun m!4970187 () Bool)

(assert (=> b!4356339 m!4970187))

(assert (=> b!4356055 d!1287783))

(declare-fun d!1287785 () Bool)

(assert (=> d!1287785 (= (apply!11339 lm!1707 (_1!27454 (h!54475 (toList!2957 lm!1707)))) (get!15892 (getValueByKey!450 (toList!2957 lm!1707) (_1!27454 (h!54475 (toList!2957 lm!1707))))))))

(declare-fun bs!631361 () Bool)

(assert (= bs!631361 d!1287785))

(declare-fun m!4970189 () Bool)

(assert (=> bs!631361 m!4970189))

(assert (=> bs!631361 m!4970189))

(declare-fun m!4970191 () Bool)

(assert (=> bs!631361 m!4970191))

(assert (=> b!4356055 d!1287785))

(declare-fun d!1287787 () Bool)

(declare-fun res!1790415 () Bool)

(declare-fun e!2711007 () Bool)

(assert (=> d!1287787 (=> res!1790415 e!2711007)))

(assert (=> d!1287787 (= res!1790415 (and ((_ is Cons!48925) (apply!11339 lm!1707 (_1!27454 (h!54475 (toList!2957 lm!1707))))) (= (_1!27453 (h!54474 (apply!11339 lm!1707 (_1!27454 (h!54475 (toList!2957 lm!1707)))))) key!3918)))))

(assert (=> d!1287787 (= (containsKey!684 (apply!11339 lm!1707 (_1!27454 (h!54475 (toList!2957 lm!1707)))) key!3918) e!2711007)))

(declare-fun b!4356340 () Bool)

(declare-fun e!2711008 () Bool)

(assert (=> b!4356340 (= e!2711007 e!2711008)))

(declare-fun res!1790416 () Bool)

(assert (=> b!4356340 (=> (not res!1790416) (not e!2711008))))

(assert (=> b!4356340 (= res!1790416 ((_ is Cons!48925) (apply!11339 lm!1707 (_1!27454 (h!54475 (toList!2957 lm!1707))))))))

(declare-fun b!4356341 () Bool)

(assert (=> b!4356341 (= e!2711008 (containsKey!684 (t!355969 (apply!11339 lm!1707 (_1!27454 (h!54475 (toList!2957 lm!1707))))) key!3918))))

(assert (= (and d!1287787 (not res!1790415)) b!4356340))

(assert (= (and b!4356340 res!1790416) b!4356341))

(declare-fun m!4970193 () Bool)

(assert (=> b!4356341 m!4970193))

(assert (=> b!4356055 d!1287787))

(declare-fun bs!631362 () Bool)

(declare-fun d!1287789 () Bool)

(assert (= bs!631362 (and d!1287789 start!421536)))

(declare-fun lambda!140427 () Int)

(assert (=> bs!631362 (= lambda!140427 lambda!140335)))

(declare-fun bs!631363 () Bool)

(assert (= bs!631363 (and d!1287789 d!1287673)))

(assert (=> bs!631363 (not (= lambda!140427 lambda!140344))))

(declare-fun bs!631364 () Bool)

(assert (= bs!631364 (and d!1287789 d!1287745)))

(assert (=> bs!631364 (= lambda!140427 lambda!140362)))

(declare-fun lt!1568853 () ListMap!2201)

(assert (=> d!1287789 (invariantList!676 (toList!2958 lt!1568853))))

(declare-fun e!2711009 () ListMap!2201)

(assert (=> d!1287789 (= lt!1568853 e!2711009)))

(declare-fun c!740671 () Bool)

(assert (=> d!1287789 (= c!740671 ((_ is Cons!48926) (toList!2957 (+!631 lt!1568548 lt!1568554))))))

(assert (=> d!1287789 (forall!9116 (toList!2957 (+!631 lt!1568548 lt!1568554)) lambda!140427)))

(assert (=> d!1287789 (= (extractMap!546 (toList!2957 (+!631 lt!1568548 lt!1568554))) lt!1568853)))

(declare-fun b!4356342 () Bool)

(assert (=> b!4356342 (= e!2711009 (addToMapMapFromBucket!183 (_2!27454 (h!54475 (toList!2957 (+!631 lt!1568548 lt!1568554)))) (extractMap!546 (t!355970 (toList!2957 (+!631 lt!1568548 lt!1568554))))))))

(declare-fun b!4356343 () Bool)

(assert (=> b!4356343 (= e!2711009 (ListMap!2202 Nil!48925))))

(assert (= (and d!1287789 c!740671) b!4356342))

(assert (= (and d!1287789 (not c!740671)) b!4356343))

(declare-fun m!4970195 () Bool)

(assert (=> d!1287789 m!4970195))

(declare-fun m!4970197 () Bool)

(assert (=> d!1287789 m!4970197))

(declare-fun m!4970199 () Bool)

(assert (=> b!4356342 m!4970199))

(assert (=> b!4356342 m!4970199))

(declare-fun m!4970201 () Bool)

(assert (=> b!4356342 m!4970201))

(assert (=> b!4356055 d!1287789))

(declare-fun d!1287791 () Bool)

(declare-fun e!2711012 () Bool)

(assert (=> d!1287791 e!2711012))

(declare-fun res!1790422 () Bool)

(assert (=> d!1287791 (=> (not res!1790422) (not e!2711012))))

(declare-fun lt!1568865 () ListMap!2201)

(assert (=> d!1287791 (= res!1790422 (contains!11125 lt!1568865 (_1!27453 lt!1568552)))))

(declare-fun lt!1568862 () List!49049)

(assert (=> d!1287791 (= lt!1568865 (ListMap!2202 lt!1568862))))

(declare-fun lt!1568864 () Unit!71593)

(declare-fun lt!1568863 () Unit!71593)

(assert (=> d!1287791 (= lt!1568864 lt!1568863)))

(assert (=> d!1287791 (= (getValueByKey!451 lt!1568862 (_1!27453 lt!1568552)) (Some!10464 (_2!27453 lt!1568552)))))

(declare-fun lemmaContainsTupThenGetReturnValue!225 (List!49049 K!10285 V!10531) Unit!71593)

(assert (=> d!1287791 (= lt!1568863 (lemmaContainsTupThenGetReturnValue!225 lt!1568862 (_1!27453 lt!1568552) (_2!27453 lt!1568552)))))

(declare-fun insertNoDuplicatedKeys!100 (List!49049 K!10285 V!10531) List!49049)

(assert (=> d!1287791 (= lt!1568862 (insertNoDuplicatedKeys!100 (toList!2958 lt!1568555) (_1!27453 lt!1568552) (_2!27453 lt!1568552)))))

(assert (=> d!1287791 (= (+!632 lt!1568555 lt!1568552) lt!1568865)))

(declare-fun b!4356348 () Bool)

(declare-fun res!1790421 () Bool)

(assert (=> b!4356348 (=> (not res!1790421) (not e!2711012))))

(assert (=> b!4356348 (= res!1790421 (= (getValueByKey!451 (toList!2958 lt!1568865) (_1!27453 lt!1568552)) (Some!10464 (_2!27453 lt!1568552))))))

(declare-fun b!4356349 () Bool)

(declare-fun contains!11131 (List!49049 tuple2!48318) Bool)

(assert (=> b!4356349 (= e!2711012 (contains!11131 (toList!2958 lt!1568865) lt!1568552))))

(assert (= (and d!1287791 res!1790422) b!4356348))

(assert (= (and b!4356348 res!1790421) b!4356349))

(declare-fun m!4970203 () Bool)

(assert (=> d!1287791 m!4970203))

(declare-fun m!4970205 () Bool)

(assert (=> d!1287791 m!4970205))

(declare-fun m!4970207 () Bool)

(assert (=> d!1287791 m!4970207))

(declare-fun m!4970209 () Bool)

(assert (=> d!1287791 m!4970209))

(declare-fun m!4970211 () Bool)

(assert (=> b!4356348 m!4970211))

(declare-fun m!4970213 () Bool)

(assert (=> b!4356349 m!4970213))

(assert (=> b!4356055 d!1287791))

(declare-fun d!1287793 () Bool)

(declare-fun content!7717 (List!49049) (InoxSet tuple2!48318))

(assert (=> d!1287793 (= (eq!257 (extractMap!546 (toList!2957 (+!631 lt!1568548 lt!1568554))) (+!632 lt!1568555 lt!1568552)) (= (content!7717 (toList!2958 (extractMap!546 (toList!2957 (+!631 lt!1568548 lt!1568554))))) (content!7717 (toList!2958 (+!632 lt!1568555 lt!1568552)))))))

(declare-fun bs!631365 () Bool)

(assert (= bs!631365 d!1287793))

(declare-fun m!4970215 () Bool)

(assert (=> bs!631365 m!4970215))

(declare-fun m!4970217 () Bool)

(assert (=> bs!631365 m!4970217))

(assert (=> b!4356055 d!1287793))

(declare-fun bs!631366 () Bool)

(declare-fun d!1287795 () Bool)

(assert (= bs!631366 (and d!1287795 start!421536)))

(declare-fun lambda!140430 () Int)

(assert (=> bs!631366 (= lambda!140430 lambda!140335)))

(declare-fun bs!631367 () Bool)

(assert (= bs!631367 (and d!1287795 d!1287673)))

(assert (=> bs!631367 (not (= lambda!140430 lambda!140344))))

(declare-fun bs!631368 () Bool)

(assert (= bs!631368 (and d!1287795 d!1287745)))

(assert (=> bs!631368 (= lambda!140430 lambda!140362)))

(declare-fun bs!631369 () Bool)

(assert (= bs!631369 (and d!1287795 d!1287789)))

(assert (=> bs!631369 (= lambda!140430 lambda!140427)))

(assert (=> d!1287795 (eq!257 (extractMap!546 (toList!2957 (+!631 lt!1568548 (tuple2!48321 hash!377 newBucket!200)))) (+!632 (extractMap!546 (toList!2957 lt!1568548)) (tuple2!48319 key!3918 newValue!99)))))

(declare-fun lt!1568868 () Unit!71593)

(declare-fun choose!26901 (ListLongMap!1607 (_ BitVec 64) List!49049 K!10285 V!10531 Hashable!4879) Unit!71593)

(assert (=> d!1287795 (= lt!1568868 (choose!26901 lt!1568548 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1287795 (forall!9116 (toList!2957 lt!1568548) lambda!140430)))

(assert (=> d!1287795 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!91 lt!1568548 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1568868)))

(declare-fun bs!631370 () Bool)

(assert (= bs!631370 d!1287795))

(declare-fun m!4970219 () Bool)

(assert (=> bs!631370 m!4970219))

(declare-fun m!4970221 () Bool)

(assert (=> bs!631370 m!4970221))

(assert (=> bs!631370 m!4970219))

(declare-fun m!4970223 () Bool)

(assert (=> bs!631370 m!4970223))

(declare-fun m!4970225 () Bool)

(assert (=> bs!631370 m!4970225))

(declare-fun m!4970227 () Bool)

(assert (=> bs!631370 m!4970227))

(declare-fun m!4970229 () Bool)

(assert (=> bs!631370 m!4970229))

(assert (=> bs!631370 m!4969721))

(assert (=> bs!631370 m!4969721))

(assert (=> bs!631370 m!4970223))

(assert (=> b!4356055 d!1287795))

(declare-fun bm!302745 () Bool)

(declare-fun call!302750 () Bool)

(declare-fun e!2711014 () List!49052)

(assert (=> bm!302745 (= call!302750 (contains!11130 e!2711014 key!3918))))

(declare-fun c!740672 () Bool)

(declare-fun c!740674 () Bool)

(assert (=> bm!302745 (= c!740672 c!740674)))

(declare-fun b!4356350 () Bool)

(assert (=> b!4356350 false))

(declare-fun lt!1568876 () Unit!71593)

(declare-fun lt!1568871 () Unit!71593)

(assert (=> b!4356350 (= lt!1568876 lt!1568871)))

(assert (=> b!4356350 (containsKey!687 (toList!2958 lt!1568555) key!3918)))

(assert (=> b!4356350 (= lt!1568871 (lemmaInGetKeysListThenContainsKey!122 (toList!2958 lt!1568555) key!3918))))

(declare-fun e!2711016 () Unit!71593)

(declare-fun Unit!71626 () Unit!71593)

(assert (=> b!4356350 (= e!2711016 Unit!71626)))

(declare-fun d!1287797 () Bool)

(declare-fun e!2711017 () Bool)

(assert (=> d!1287797 e!2711017))

(declare-fun res!1790424 () Bool)

(assert (=> d!1287797 (=> res!1790424 e!2711017)))

(declare-fun e!2711018 () Bool)

(assert (=> d!1287797 (= res!1790424 e!2711018)))

(declare-fun res!1790425 () Bool)

(assert (=> d!1287797 (=> (not res!1790425) (not e!2711018))))

(declare-fun lt!1568873 () Bool)

(assert (=> d!1287797 (= res!1790425 (not lt!1568873))))

(declare-fun lt!1568870 () Bool)

(assert (=> d!1287797 (= lt!1568873 lt!1568870)))

(declare-fun lt!1568869 () Unit!71593)

(declare-fun e!2711013 () Unit!71593)

(assert (=> d!1287797 (= lt!1568869 e!2711013)))

(assert (=> d!1287797 (= c!740674 lt!1568870)))

(assert (=> d!1287797 (= lt!1568870 (containsKey!687 (toList!2958 lt!1568555) key!3918))))

(assert (=> d!1287797 (= (contains!11125 lt!1568555 key!3918) lt!1568873)))

(declare-fun b!4356351 () Bool)

(declare-fun e!2711015 () Bool)

(assert (=> b!4356351 (= e!2711017 e!2711015)))

(declare-fun res!1790423 () Bool)

(assert (=> b!4356351 (=> (not res!1790423) (not e!2711015))))

(assert (=> b!4356351 (= res!1790423 (isDefined!7758 (getValueByKey!451 (toList!2958 lt!1568555) key!3918)))))

(declare-fun b!4356352 () Bool)

(declare-fun lt!1568872 () Unit!71593)

(assert (=> b!4356352 (= e!2711013 lt!1568872)))

(declare-fun lt!1568875 () Unit!71593)

(assert (=> b!4356352 (= lt!1568875 (lemmaContainsKeyImpliesGetValueByKeyDefined!361 (toList!2958 lt!1568555) key!3918))))

(assert (=> b!4356352 (isDefined!7758 (getValueByKey!451 (toList!2958 lt!1568555) key!3918))))

(declare-fun lt!1568874 () Unit!71593)

(assert (=> b!4356352 (= lt!1568874 lt!1568875)))

(assert (=> b!4356352 (= lt!1568872 (lemmaInListThenGetKeysListContains!121 (toList!2958 lt!1568555) key!3918))))

(assert (=> b!4356352 call!302750))

(declare-fun b!4356353 () Bool)

(assert (=> b!4356353 (= e!2711018 (not (contains!11130 (keys!16524 lt!1568555) key!3918)))))

(declare-fun b!4356354 () Bool)

(declare-fun Unit!71627 () Unit!71593)

(assert (=> b!4356354 (= e!2711016 Unit!71627)))

(declare-fun b!4356355 () Bool)

(assert (=> b!4356355 (= e!2711014 (keys!16524 lt!1568555))))

(declare-fun b!4356356 () Bool)

(assert (=> b!4356356 (= e!2711014 (getKeysList!124 (toList!2958 lt!1568555)))))

(declare-fun b!4356357 () Bool)

(assert (=> b!4356357 (= e!2711013 e!2711016)))

(declare-fun c!740673 () Bool)

(assert (=> b!4356357 (= c!740673 call!302750)))

(declare-fun b!4356358 () Bool)

(assert (=> b!4356358 (= e!2711015 (contains!11130 (keys!16524 lt!1568555) key!3918))))

(assert (= (and d!1287797 c!740674) b!4356352))

(assert (= (and d!1287797 (not c!740674)) b!4356357))

(assert (= (and b!4356357 c!740673) b!4356350))

(assert (= (and b!4356357 (not c!740673)) b!4356354))

(assert (= (or b!4356352 b!4356357) bm!302745))

(assert (= (and bm!302745 c!740672) b!4356356))

(assert (= (and bm!302745 (not c!740672)) b!4356355))

(assert (= (and d!1287797 res!1790425) b!4356353))

(assert (= (and d!1287797 (not res!1790424)) b!4356351))

(assert (= (and b!4356351 res!1790423) b!4356358))

(declare-fun m!4970231 () Bool)

(assert (=> bm!302745 m!4970231))

(declare-fun m!4970233 () Bool)

(assert (=> b!4356358 m!4970233))

(assert (=> b!4356358 m!4970233))

(declare-fun m!4970235 () Bool)

(assert (=> b!4356358 m!4970235))

(assert (=> b!4356355 m!4970233))

(declare-fun m!4970237 () Bool)

(assert (=> b!4356352 m!4970237))

(declare-fun m!4970239 () Bool)

(assert (=> b!4356352 m!4970239))

(assert (=> b!4356352 m!4970239))

(declare-fun m!4970241 () Bool)

(assert (=> b!4356352 m!4970241))

(declare-fun m!4970243 () Bool)

(assert (=> b!4356352 m!4970243))

(assert (=> b!4356353 m!4970233))

(assert (=> b!4356353 m!4970233))

(assert (=> b!4356353 m!4970235))

(assert (=> b!4356351 m!4970239))

(assert (=> b!4356351 m!4970239))

(assert (=> b!4356351 m!4970241))

(declare-fun m!4970245 () Bool)

(assert (=> b!4356356 m!4970245))

(declare-fun m!4970247 () Bool)

(assert (=> d!1287797 m!4970247))

(assert (=> b!4356350 m!4970247))

(declare-fun m!4970249 () Bool)

(assert (=> b!4356350 m!4970249))

(assert (=> b!4356055 d!1287797))

(declare-fun d!1287799 () Bool)

(declare-fun res!1790426 () Bool)

(declare-fun e!2711019 () Bool)

(assert (=> d!1287799 (=> res!1790426 e!2711019)))

(assert (=> d!1287799 (= res!1790426 ((_ is Nil!48926) (toList!2957 lt!1568548)))))

(assert (=> d!1287799 (= (forall!9116 (toList!2957 lt!1568548) lambda!140335) e!2711019)))

(declare-fun b!4356359 () Bool)

(declare-fun e!2711020 () Bool)

(assert (=> b!4356359 (= e!2711019 e!2711020)))

(declare-fun res!1790427 () Bool)

(assert (=> b!4356359 (=> (not res!1790427) (not e!2711020))))

(assert (=> b!4356359 (= res!1790427 (dynLambda!20633 lambda!140335 (h!54475 (toList!2957 lt!1568548))))))

(declare-fun b!4356360 () Bool)

(assert (=> b!4356360 (= e!2711020 (forall!9116 (t!355970 (toList!2957 lt!1568548)) lambda!140335))))

(assert (= (and d!1287799 (not res!1790426)) b!4356359))

(assert (= (and b!4356359 res!1790427) b!4356360))

(declare-fun b_lambda!131171 () Bool)

(assert (=> (not b_lambda!131171) (not b!4356359)))

(declare-fun m!4970251 () Bool)

(assert (=> b!4356359 m!4970251))

(declare-fun m!4970253 () Bool)

(assert (=> b!4356360 m!4970253))

(assert (=> b!4356055 d!1287799))

(declare-fun bs!631371 () Bool)

(declare-fun d!1287801 () Bool)

(assert (= bs!631371 (and d!1287801 d!1287789)))

(declare-fun lambda!140431 () Int)

(assert (=> bs!631371 (= lambda!140431 lambda!140427)))

(declare-fun bs!631372 () Bool)

(assert (= bs!631372 (and d!1287801 d!1287795)))

(assert (=> bs!631372 (= lambda!140431 lambda!140430)))

(declare-fun bs!631373 () Bool)

(assert (= bs!631373 (and d!1287801 d!1287673)))

(assert (=> bs!631373 (not (= lambda!140431 lambda!140344))))

(declare-fun bs!631374 () Bool)

(assert (= bs!631374 (and d!1287801 start!421536)))

(assert (=> bs!631374 (= lambda!140431 lambda!140335)))

(declare-fun bs!631375 () Bool)

(assert (= bs!631375 (and d!1287801 d!1287745)))

(assert (=> bs!631375 (= lambda!140431 lambda!140362)))

(declare-fun lt!1568877 () ListMap!2201)

(assert (=> d!1287801 (invariantList!676 (toList!2958 lt!1568877))))

(declare-fun e!2711021 () ListMap!2201)

(assert (=> d!1287801 (= lt!1568877 e!2711021)))

(declare-fun c!740675 () Bool)

(assert (=> d!1287801 (= c!740675 ((_ is Cons!48926) (t!355970 (toList!2957 lm!1707))))))

(assert (=> d!1287801 (forall!9116 (t!355970 (toList!2957 lm!1707)) lambda!140431)))

(assert (=> d!1287801 (= (extractMap!546 (t!355970 (toList!2957 lm!1707))) lt!1568877)))

(declare-fun b!4356361 () Bool)

(assert (=> b!4356361 (= e!2711021 (addToMapMapFromBucket!183 (_2!27454 (h!54475 (t!355970 (toList!2957 lm!1707)))) (extractMap!546 (t!355970 (t!355970 (toList!2957 lm!1707))))))))

(declare-fun b!4356362 () Bool)

(assert (=> b!4356362 (= e!2711021 (ListMap!2202 Nil!48925))))

(assert (= (and d!1287801 c!740675) b!4356361))

(assert (= (and d!1287801 (not c!740675)) b!4356362))

(declare-fun m!4970255 () Bool)

(assert (=> d!1287801 m!4970255))

(declare-fun m!4970257 () Bool)

(assert (=> d!1287801 m!4970257))

(declare-fun m!4970259 () Bool)

(assert (=> b!4356361 m!4970259))

(assert (=> b!4356361 m!4970259))

(declare-fun m!4970261 () Bool)

(assert (=> b!4356361 m!4970261))

(assert (=> b!4356055 d!1287801))

(declare-fun bs!631376 () Bool)

(declare-fun d!1287803 () Bool)

(assert (= bs!631376 (and d!1287803 d!1287789)))

(declare-fun lambda!140434 () Int)

(assert (=> bs!631376 (= lambda!140434 lambda!140427)))

(declare-fun bs!631377 () Bool)

(assert (= bs!631377 (and d!1287803 d!1287795)))

(assert (=> bs!631377 (= lambda!140434 lambda!140430)))

(declare-fun bs!631378 () Bool)

(assert (= bs!631378 (and d!1287803 d!1287801)))

(assert (=> bs!631378 (= lambda!140434 lambda!140431)))

(declare-fun bs!631379 () Bool)

(assert (= bs!631379 (and d!1287803 d!1287673)))

(assert (=> bs!631379 (not (= lambda!140434 lambda!140344))))

(declare-fun bs!631380 () Bool)

(assert (= bs!631380 (and d!1287803 start!421536)))

(assert (=> bs!631380 (= lambda!140434 lambda!140335)))

(declare-fun bs!631381 () Bool)

(assert (= bs!631381 (and d!1287803 d!1287745)))

(assert (=> bs!631381 (= lambda!140434 lambda!140362)))

(assert (=> d!1287803 (not (containsKey!684 (apply!11339 lm!1707 (_1!27454 (h!54475 (toList!2957 lm!1707)))) key!3918))))

(declare-fun lt!1568880 () Unit!71593)

(declare-fun choose!26902 (ListLongMap!1607 K!10285 (_ BitVec 64) Hashable!4879) Unit!71593)

(assert (=> d!1287803 (= lt!1568880 (choose!26902 lm!1707 key!3918 (_1!27454 (h!54475 (toList!2957 lm!1707))) hashF!1247))))

(assert (=> d!1287803 (forall!9116 (toList!2957 lm!1707) lambda!140434)))

(assert (=> d!1287803 (= (lemmaNotSameHashThenCannotContainKey!34 lm!1707 key!3918 (_1!27454 (h!54475 (toList!2957 lm!1707))) hashF!1247) lt!1568880)))

(declare-fun bs!631382 () Bool)

(assert (= bs!631382 d!1287803))

(assert (=> bs!631382 m!4969743))

(assert (=> bs!631382 m!4969743))

(assert (=> bs!631382 m!4969745))

(declare-fun m!4970263 () Bool)

(assert (=> bs!631382 m!4970263))

(declare-fun m!4970265 () Bool)

(assert (=> bs!631382 m!4970265))

(assert (=> b!4356055 d!1287803))

(declare-fun bs!631383 () Bool)

(declare-fun d!1287805 () Bool)

(assert (= bs!631383 (and d!1287805 d!1287789)))

(declare-fun lambda!140435 () Int)

(assert (=> bs!631383 (= lambda!140435 lambda!140427)))

(declare-fun bs!631384 () Bool)

(assert (= bs!631384 (and d!1287805 d!1287795)))

(assert (=> bs!631384 (= lambda!140435 lambda!140430)))

(declare-fun bs!631385 () Bool)

(assert (= bs!631385 (and d!1287805 d!1287801)))

(assert (=> bs!631385 (= lambda!140435 lambda!140431)))

(declare-fun bs!631386 () Bool)

(assert (= bs!631386 (and d!1287805 d!1287803)))

(assert (=> bs!631386 (= lambda!140435 lambda!140434)))

(declare-fun bs!631387 () Bool)

(assert (= bs!631387 (and d!1287805 d!1287673)))

(assert (=> bs!631387 (not (= lambda!140435 lambda!140344))))

(declare-fun bs!631388 () Bool)

(assert (= bs!631388 (and d!1287805 start!421536)))

(assert (=> bs!631388 (= lambda!140435 lambda!140335)))

(declare-fun bs!631389 () Bool)

(assert (= bs!631389 (and d!1287805 d!1287745)))

(assert (=> bs!631389 (= lambda!140435 lambda!140362)))

(declare-fun lt!1568881 () ListMap!2201)

(assert (=> d!1287805 (invariantList!676 (toList!2958 lt!1568881))))

(declare-fun e!2711022 () ListMap!2201)

(assert (=> d!1287805 (= lt!1568881 e!2711022)))

(declare-fun c!740676 () Bool)

(assert (=> d!1287805 (= c!740676 ((_ is Cons!48926) (toList!2957 lt!1568548)))))

(assert (=> d!1287805 (forall!9116 (toList!2957 lt!1568548) lambda!140435)))

(assert (=> d!1287805 (= (extractMap!546 (toList!2957 lt!1568548)) lt!1568881)))

(declare-fun b!4356363 () Bool)

(assert (=> b!4356363 (= e!2711022 (addToMapMapFromBucket!183 (_2!27454 (h!54475 (toList!2957 lt!1568548))) (extractMap!546 (t!355970 (toList!2957 lt!1568548)))))))

(declare-fun b!4356364 () Bool)

(assert (=> b!4356364 (= e!2711022 (ListMap!2202 Nil!48925))))

(assert (= (and d!1287805 c!740676) b!4356363))

(assert (= (and d!1287805 (not c!740676)) b!4356364))

(declare-fun m!4970267 () Bool)

(assert (=> d!1287805 m!4970267))

(declare-fun m!4970269 () Bool)

(assert (=> d!1287805 m!4970269))

(declare-fun m!4970271 () Bool)

(assert (=> b!4356363 m!4970271))

(assert (=> b!4356363 m!4970271))

(declare-fun m!4970273 () Bool)

(assert (=> b!4356363 m!4970273))

(assert (=> b!4356055 d!1287805))

(declare-fun d!1287807 () Bool)

(assert (=> d!1287807 (contains!11125 lt!1568557 key!3918)))

(declare-fun lt!1568884 () Unit!71593)

(declare-fun choose!26903 (List!49049 K!10285 V!10531 ListMap!2201) Unit!71593)

(assert (=> d!1287807 (= lt!1568884 (choose!26903 (_2!27454 (h!54475 (toList!2957 lm!1707))) key!3918 newValue!99 lt!1568557))))

(assert (=> d!1287807 (noDuplicateKeys!487 (_2!27454 (h!54475 (toList!2957 lm!1707))))))

(assert (=> d!1287807 (= (lemmaAddToMapContainsAndNotInListThenInAcc!30 (_2!27454 (h!54475 (toList!2957 lm!1707))) key!3918 newValue!99 lt!1568557) lt!1568884)))

(declare-fun bs!631390 () Bool)

(assert (= bs!631390 d!1287807))

(assert (=> bs!631390 m!4969741))

(declare-fun m!4970275 () Bool)

(assert (=> bs!631390 m!4970275))

(assert (=> bs!631390 m!4970175))

(assert (=> b!4356055 d!1287807))

(declare-fun d!1287809 () Bool)

(declare-fun tail!6994 (List!49050) List!49050)

(assert (=> d!1287809 (= (tail!6992 lm!1707) (ListLongMap!1608 (tail!6994 (toList!2957 lm!1707))))))

(declare-fun bs!631391 () Bool)

(assert (= bs!631391 d!1287809))

(declare-fun m!4970277 () Bool)

(assert (=> bs!631391 m!4970277))

(assert (=> b!4356055 d!1287809))

(declare-fun bm!302746 () Bool)

(declare-fun call!302751 () Bool)

(declare-fun e!2711024 () List!49052)

(assert (=> bm!302746 (= call!302751 (contains!11130 e!2711024 key!3918))))

(declare-fun c!740677 () Bool)

(declare-fun c!740679 () Bool)

(assert (=> bm!302746 (= c!740677 c!740679)))

(declare-fun b!4356365 () Bool)

(assert (=> b!4356365 false))

(declare-fun lt!1568892 () Unit!71593)

(declare-fun lt!1568887 () Unit!71593)

(assert (=> b!4356365 (= lt!1568892 lt!1568887)))

(assert (=> b!4356365 (containsKey!687 (toList!2958 lt!1568557) key!3918)))

(assert (=> b!4356365 (= lt!1568887 (lemmaInGetKeysListThenContainsKey!122 (toList!2958 lt!1568557) key!3918))))

(declare-fun e!2711026 () Unit!71593)

(declare-fun Unit!71628 () Unit!71593)

(assert (=> b!4356365 (= e!2711026 Unit!71628)))

(declare-fun d!1287811 () Bool)

(declare-fun e!2711027 () Bool)

(assert (=> d!1287811 e!2711027))

(declare-fun res!1790429 () Bool)

(assert (=> d!1287811 (=> res!1790429 e!2711027)))

(declare-fun e!2711028 () Bool)

(assert (=> d!1287811 (= res!1790429 e!2711028)))

(declare-fun res!1790430 () Bool)

(assert (=> d!1287811 (=> (not res!1790430) (not e!2711028))))

(declare-fun lt!1568889 () Bool)

(assert (=> d!1287811 (= res!1790430 (not lt!1568889))))

(declare-fun lt!1568886 () Bool)

(assert (=> d!1287811 (= lt!1568889 lt!1568886)))

(declare-fun lt!1568885 () Unit!71593)

(declare-fun e!2711023 () Unit!71593)

(assert (=> d!1287811 (= lt!1568885 e!2711023)))

(assert (=> d!1287811 (= c!740679 lt!1568886)))

(assert (=> d!1287811 (= lt!1568886 (containsKey!687 (toList!2958 lt!1568557) key!3918))))

(assert (=> d!1287811 (= (contains!11125 lt!1568557 key!3918) lt!1568889)))

(declare-fun b!4356366 () Bool)

(declare-fun e!2711025 () Bool)

(assert (=> b!4356366 (= e!2711027 e!2711025)))

(declare-fun res!1790428 () Bool)

(assert (=> b!4356366 (=> (not res!1790428) (not e!2711025))))

(assert (=> b!4356366 (= res!1790428 (isDefined!7758 (getValueByKey!451 (toList!2958 lt!1568557) key!3918)))))

(declare-fun b!4356367 () Bool)

(declare-fun lt!1568888 () Unit!71593)

(assert (=> b!4356367 (= e!2711023 lt!1568888)))

(declare-fun lt!1568891 () Unit!71593)

(assert (=> b!4356367 (= lt!1568891 (lemmaContainsKeyImpliesGetValueByKeyDefined!361 (toList!2958 lt!1568557) key!3918))))

(assert (=> b!4356367 (isDefined!7758 (getValueByKey!451 (toList!2958 lt!1568557) key!3918))))

(declare-fun lt!1568890 () Unit!71593)

(assert (=> b!4356367 (= lt!1568890 lt!1568891)))

(assert (=> b!4356367 (= lt!1568888 (lemmaInListThenGetKeysListContains!121 (toList!2958 lt!1568557) key!3918))))

(assert (=> b!4356367 call!302751))

(declare-fun b!4356368 () Bool)

(assert (=> b!4356368 (= e!2711028 (not (contains!11130 (keys!16524 lt!1568557) key!3918)))))

(declare-fun b!4356369 () Bool)

(declare-fun Unit!71629 () Unit!71593)

(assert (=> b!4356369 (= e!2711026 Unit!71629)))

(declare-fun b!4356370 () Bool)

(assert (=> b!4356370 (= e!2711024 (keys!16524 lt!1568557))))

(declare-fun b!4356371 () Bool)

(assert (=> b!4356371 (= e!2711024 (getKeysList!124 (toList!2958 lt!1568557)))))

(declare-fun b!4356372 () Bool)

(assert (=> b!4356372 (= e!2711023 e!2711026)))

(declare-fun c!740678 () Bool)

(assert (=> b!4356372 (= c!740678 call!302751)))

(declare-fun b!4356373 () Bool)

(assert (=> b!4356373 (= e!2711025 (contains!11130 (keys!16524 lt!1568557) key!3918))))

(assert (= (and d!1287811 c!740679) b!4356367))

(assert (= (and d!1287811 (not c!740679)) b!4356372))

(assert (= (and b!4356372 c!740678) b!4356365))

(assert (= (and b!4356372 (not c!740678)) b!4356369))

(assert (= (or b!4356367 b!4356372) bm!302746))

(assert (= (and bm!302746 c!740677) b!4356371))

(assert (= (and bm!302746 (not c!740677)) b!4356370))

(assert (= (and d!1287811 res!1790430) b!4356368))

(assert (= (and d!1287811 (not res!1790429)) b!4356366))

(assert (= (and b!4356366 res!1790428) b!4356373))

(declare-fun m!4970279 () Bool)

(assert (=> bm!302746 m!4970279))

(declare-fun m!4970281 () Bool)

(assert (=> b!4356373 m!4970281))

(assert (=> b!4356373 m!4970281))

(declare-fun m!4970283 () Bool)

(assert (=> b!4356373 m!4970283))

(assert (=> b!4356370 m!4970281))

(declare-fun m!4970285 () Bool)

(assert (=> b!4356367 m!4970285))

(declare-fun m!4970287 () Bool)

(assert (=> b!4356367 m!4970287))

(assert (=> b!4356367 m!4970287))

(declare-fun m!4970289 () Bool)

(assert (=> b!4356367 m!4970289))

(declare-fun m!4970291 () Bool)

(assert (=> b!4356367 m!4970291))

(assert (=> b!4356368 m!4970281))

(assert (=> b!4356368 m!4970281))

(assert (=> b!4356368 m!4970283))

(assert (=> b!4356366 m!4970287))

(assert (=> b!4356366 m!4970287))

(assert (=> b!4356366 m!4970289))

(declare-fun m!4970293 () Bool)

(assert (=> b!4356371 m!4970293))

(declare-fun m!4970295 () Bool)

(assert (=> d!1287811 m!4970295))

(assert (=> b!4356365 m!4970295))

(declare-fun m!4970297 () Bool)

(assert (=> b!4356365 m!4970297))

(assert (=> b!4356055 d!1287811))

(declare-fun d!1287813 () Bool)

(declare-fun e!2711033 () Bool)

(assert (=> d!1287813 e!2711033))

(declare-fun res!1790433 () Bool)

(assert (=> d!1287813 (=> res!1790433 e!2711033)))

(declare-fun lt!1568901 () Bool)

(assert (=> d!1287813 (= res!1790433 (not lt!1568901))))

(declare-fun lt!1568904 () Bool)

(assert (=> d!1287813 (= lt!1568901 lt!1568904)))

(declare-fun lt!1568903 () Unit!71593)

(declare-fun e!2711034 () Unit!71593)

(assert (=> d!1287813 (= lt!1568903 e!2711034)))

(declare-fun c!740682 () Bool)

(assert (=> d!1287813 (= c!740682 lt!1568904)))

(declare-fun containsKey!688 (List!49050 (_ BitVec 64)) Bool)

(assert (=> d!1287813 (= lt!1568904 (containsKey!688 (toList!2957 lm!1707) hash!377))))

(assert (=> d!1287813 (= (contains!11127 lm!1707 hash!377) lt!1568901)))

(declare-fun b!4356380 () Bool)

(declare-fun lt!1568902 () Unit!71593)

(assert (=> b!4356380 (= e!2711034 lt!1568902)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!362 (List!49050 (_ BitVec 64)) Unit!71593)

(assert (=> b!4356380 (= lt!1568902 (lemmaContainsKeyImpliesGetValueByKeyDefined!362 (toList!2957 lm!1707) hash!377))))

(declare-fun isDefined!7759 (Option!10464) Bool)

(assert (=> b!4356380 (isDefined!7759 (getValueByKey!450 (toList!2957 lm!1707) hash!377))))

(declare-fun b!4356381 () Bool)

(declare-fun Unit!71630 () Unit!71593)

(assert (=> b!4356381 (= e!2711034 Unit!71630)))

(declare-fun b!4356382 () Bool)

(assert (=> b!4356382 (= e!2711033 (isDefined!7759 (getValueByKey!450 (toList!2957 lm!1707) hash!377)))))

(assert (= (and d!1287813 c!740682) b!4356380))

(assert (= (and d!1287813 (not c!740682)) b!4356381))

(assert (= (and d!1287813 (not res!1790433)) b!4356382))

(declare-fun m!4970299 () Bool)

(assert (=> d!1287813 m!4970299))

(declare-fun m!4970301 () Bool)

(assert (=> b!4356380 m!4970301))

(assert (=> b!4356380 m!4970077))

(assert (=> b!4356380 m!4970077))

(declare-fun m!4970303 () Bool)

(assert (=> b!4356380 m!4970303))

(assert (=> b!4356382 m!4970077))

(assert (=> b!4356382 m!4970077))

(assert (=> b!4356382 m!4970303))

(assert (=> b!4356056 d!1287813))

(declare-fun b!4356387 () Bool)

(declare-fun e!2711037 () Bool)

(declare-fun tp!1330116 () Bool)

(declare-fun tp!1330117 () Bool)

(assert (=> b!4356387 (= e!2711037 (and tp!1330116 tp!1330117))))

(assert (=> b!4356062 (= tp!1330101 e!2711037)))

(assert (= (and b!4356062 ((_ is Cons!48926) (toList!2957 lm!1707))) b!4356387))

(declare-fun b!4356392 () Bool)

(declare-fun e!2711040 () Bool)

(declare-fun tp!1330120 () Bool)

(assert (=> b!4356392 (= e!2711040 (and tp_is_empty!25185 tp_is_empty!25187 tp!1330120))))

(assert (=> b!4356059 (= tp!1330102 e!2711040)))

(assert (= (and b!4356059 ((_ is Cons!48925) (t!355969 newBucket!200))) b!4356392))

(declare-fun b_lambda!131173 () Bool)

(assert (= b_lambda!131147 (or start!421536 b_lambda!131173)))

(declare-fun bs!631392 () Bool)

(declare-fun d!1287815 () Bool)

(assert (= bs!631392 (and d!1287815 start!421536)))

(assert (=> bs!631392 (= (dynLambda!20633 lambda!140335 (h!54475 (toList!2957 lt!1568551))) (noDuplicateKeys!487 (_2!27454 (h!54475 (toList!2957 lt!1568551)))))))

(declare-fun m!4970305 () Bool)

(assert (=> bs!631392 m!4970305))

(assert (=> b!4356108 d!1287815))

(declare-fun b_lambda!131175 () Bool)

(assert (= b_lambda!131171 (or start!421536 b_lambda!131175)))

(declare-fun bs!631393 () Bool)

(declare-fun d!1287817 () Bool)

(assert (= bs!631393 (and d!1287817 start!421536)))

(assert (=> bs!631393 (= (dynLambda!20633 lambda!140335 (h!54475 (toList!2957 lt!1568548))) (noDuplicateKeys!487 (_2!27454 (h!54475 (toList!2957 lt!1568548)))))))

(declare-fun m!4970307 () Bool)

(assert (=> bs!631393 m!4970307))

(assert (=> b!4356359 d!1287817))

(declare-fun b_lambda!131177 () Bool)

(assert (= b_lambda!131159 (or start!421536 b_lambda!131177)))

(declare-fun bs!631394 () Bool)

(declare-fun d!1287819 () Bool)

(assert (= bs!631394 (and d!1287819 start!421536)))

(assert (=> bs!631394 (= (dynLambda!20633 lambda!140335 lt!1568558) (noDuplicateKeys!487 (_2!27454 lt!1568558)))))

(declare-fun m!4970309 () Bool)

(assert (=> bs!631394 m!4970309))

(assert (=> d!1287765 d!1287819))

(declare-fun b_lambda!131179 () Bool)

(assert (= b_lambda!131145 (or start!421536 b_lambda!131179)))

(declare-fun bs!631395 () Bool)

(declare-fun d!1287821 () Bool)

(assert (= bs!631395 (and d!1287821 start!421536)))

(assert (=> bs!631395 (= (dynLambda!20633 lambda!140335 (h!54475 (toList!2957 lm!1707))) (noDuplicateKeys!487 (_2!27454 (h!54475 (toList!2957 lm!1707)))))))

(assert (=> bs!631395 m!4970175))

(assert (=> b!4356106 d!1287821))

(declare-fun b_lambda!131181 () Bool)

(assert (= b_lambda!131149 (or start!421536 b_lambda!131181)))

(declare-fun bs!631396 () Bool)

(declare-fun d!1287823 () Bool)

(assert (= bs!631396 (and d!1287823 start!421536)))

(assert (=> bs!631396 (= (dynLambda!20633 lambda!140335 (tuple2!48321 hash!377 newBucket!200)) (noDuplicateKeys!487 (_2!27454 (tuple2!48321 hash!377 newBucket!200))))))

(declare-fun m!4970311 () Bool)

(assert (=> bs!631396 m!4970311))

(assert (=> b!4356156 d!1287823))

(check-sat (not d!1287809) (not b!4356371) (not d!1287797) (not b!4356274) (not d!1287801) (not b!4356387) (not bs!631392) (not b!4356352) (not bm!302745) (not b!4356380) (not b!4356142) (not bm!302743) (not d!1287695) (not b!4356363) (not b!4356361) (not b!4356392) tp_is_empty!25187 (not b!4356224) (not d!1287745) (not b!4356293) (not d!1287699) (not d!1287793) (not b!4356221) (not d!1287785) (not d!1287783) (not d!1287813) (not b!4356356) (not b!4356171) (not b!4356225) (not b!4356281) (not b!4356370) (not d!1287811) (not b!4356219) (not b_lambda!131179) (not b!4356341) (not b!4356222) (not d!1287765) (not b!4356342) (not bm!302726) (not bm!302742) (not b!4356366) (not b!4356353) (not b!4356351) (not b!4356262) (not b!4356278) (not b!4356109) (not d!1287761) (not d!1287789) (not b!4356348) (not bs!631394) (not b!4356382) (not d!1287667) (not b_lambda!131173) (not b!4356349) (not b_lambda!131175) (not b!4356355) (not d!1287767) (not d!1287759) (not d!1287691) (not b!4356350) (not d!1287771) (not bs!631395) (not b!4356358) (not b!4356141) (not b!4356227) (not d!1287673) (not d!1287757) (not b_lambda!131181) (not b!4356331) (not d!1287791) (not b!4356338) (not b!4356365) (not d!1287669) (not b!4356287) (not bm!302744) tp_is_empty!25185 (not b!4356333) (not b_lambda!131177) (not b!4356335) (not d!1287795) (not b!4356373) (not b!4356220) (not bs!631393) (not d!1287805) (not b!4356368) (not d!1287763) (not b!4356339) (not d!1287717) (not bs!631396) (not d!1287803) (not bm!302746) (not b!4356367) (not d!1287807) (not b!4356170) (not b!4356107) (not b!4356360))
(check-sat)
