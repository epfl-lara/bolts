; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!445184 () Bool)

(assert start!445184)

(declare-fun b!4506520 () Bool)

(declare-fun e!2807379 () Bool)

(declare-fun e!2807380 () Bool)

(assert (=> b!4506520 (= e!2807379 e!2807380)))

(declare-fun res!1874055 () Bool)

(assert (=> b!4506520 (=> res!1874055 e!2807380)))

(declare-datatypes ((K!11975 0))(
  ( (K!11976 (val!17851 Int)) )
))
(declare-datatypes ((V!12221 0))(
  ( (V!12222 (val!17852 Int)) )
))
(declare-datatypes ((tuple2!50970 0))(
  ( (tuple2!50971 (_1!28779 K!11975) (_2!28779 V!12221)) )
))
(declare-datatypes ((List!50694 0))(
  ( (Nil!50570) (Cons!50570 (h!56399 tuple2!50970) (t!357656 List!50694)) )
))
(declare-datatypes ((tuple2!50972 0))(
  ( (tuple2!50973 (_1!28780 (_ BitVec 64)) (_2!28780 List!50694)) )
))
(declare-datatypes ((List!50695 0))(
  ( (Nil!50571) (Cons!50571 (h!56400 tuple2!50972) (t!357657 List!50695)) )
))
(declare-datatypes ((ListLongMap!2907 0))(
  ( (ListLongMap!2908 (toList!4275 List!50695)) )
))
(declare-fun lt!1685584 () ListLongMap!2907)

(declare-fun lm!1477 () ListLongMap!2907)

(declare-fun lt!1685589 () tuple2!50972)

(declare-fun +!1488 (ListLongMap!2907 tuple2!50972) ListLongMap!2907)

(assert (=> b!4506520 (= res!1874055 (not (= lt!1685584 (+!1488 lm!1477 lt!1685589))))))

(declare-fun lt!1685585 () ListLongMap!2907)

(declare-fun lt!1685576 () tuple2!50972)

(assert (=> b!4506520 (= lt!1685584 (+!1488 lt!1685585 lt!1685576))))

(declare-fun b!4506521 () Bool)

(declare-fun res!1874063 () Bool)

(assert (=> b!4506521 (=> res!1874063 e!2807379)))

(declare-datatypes ((ListMap!3537 0))(
  ( (ListMap!3538 (toList!4276 List!50694)) )
))
(declare-fun lt!1685574 () ListMap!3537)

(declare-fun lt!1685587 () ListMap!3537)

(declare-fun eq!591 (ListMap!3537 ListMap!3537) Bool)

(assert (=> b!4506521 (= res!1874063 (not (eq!591 lt!1685574 lt!1685587)))))

(declare-fun b!4506522 () Bool)

(declare-fun e!2807383 () Bool)

(declare-fun e!2807386 () Bool)

(assert (=> b!4506522 (= e!2807383 e!2807386)))

(declare-fun res!1874064 () Bool)

(assert (=> b!4506522 (=> (not res!1874064) (not e!2807386))))

(declare-fun lt!1685583 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4506522 (= res!1874064 (= lt!1685583 hash!344))))

(declare-datatypes ((Hashable!5529 0))(
  ( (HashableExt!5528 (__x!31232 Int)) )
))
(declare-fun hashF!1107 () Hashable!5529)

(declare-fun key!3287 () K!11975)

(declare-fun hash!2721 (Hashable!5529 K!11975) (_ BitVec 64))

(assert (=> b!4506522 (= lt!1685583 (hash!2721 hashF!1107 key!3287))))

(declare-fun b!4506523 () Bool)

(declare-fun res!1874070 () Bool)

(assert (=> b!4506523 (=> (not res!1874070) (not e!2807386))))

(declare-fun newBucket!178 () List!50694)

(declare-fun allKeysSameHash!988 (List!50694 (_ BitVec 64) Hashable!5529) Bool)

(assert (=> b!4506523 (= res!1874070 (allKeysSameHash!988 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4506524 () Bool)

(declare-datatypes ((Unit!92894 0))(
  ( (Unit!92895) )
))
(declare-fun e!2807384 () Unit!92894)

(declare-fun Unit!92896 () Unit!92894)

(assert (=> b!4506524 (= e!2807384 Unit!92896)))

(declare-fun lt!1685573 () Unit!92894)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!122 (ListLongMap!2907 K!11975 Hashable!5529) Unit!92894)

(assert (=> b!4506524 (= lt!1685573 (lemmaNotInItsHashBucketThenNotInMap!122 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4506524 false))

(declare-fun b!4506525 () Bool)

(declare-fun e!2807377 () Bool)

(assert (=> b!4506525 (= e!2807377 e!2807379)))

(declare-fun res!1874053 () Bool)

(assert (=> b!4506525 (=> res!1874053 e!2807379)))

(assert (=> b!4506525 (= res!1874053 (not (eq!591 lt!1685587 lt!1685574)))))

(declare-fun lt!1685580 () ListLongMap!2907)

(declare-fun extractMap!1190 (List!50695) ListMap!3537)

(assert (=> b!4506525 (= lt!1685587 (extractMap!1190 (toList!4275 (+!1488 lt!1685580 lt!1685576))))))

(declare-fun head!9362 (ListLongMap!2907) tuple2!50972)

(assert (=> b!4506525 (= lt!1685576 (head!9362 lm!1477))))

(declare-fun lt!1685586 () ListMap!3537)

(declare-fun -!360 (ListMap!3537 K!11975) ListMap!3537)

(assert (=> b!4506525 (eq!591 (extractMap!1190 (toList!4275 lt!1685585)) (-!360 lt!1685586 key!3287))))

(assert (=> b!4506525 (= lt!1685585 (+!1488 lt!1685580 lt!1685589))))

(assert (=> b!4506525 (= lt!1685589 (tuple2!50973 hash!344 newBucket!178))))

(declare-fun lt!1685590 () Unit!92894)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!119 (ListLongMap!2907 (_ BitVec 64) List!50694 K!11975 Hashable!5529) Unit!92894)

(assert (=> b!4506525 (= lt!1685590 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!119 lt!1685580 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4506526 () Bool)

(declare-fun e!2807387 () Bool)

(assert (=> b!4506526 (= e!2807387 e!2807383)))

(declare-fun res!1874069 () Bool)

(assert (=> b!4506526 (=> (not res!1874069) (not e!2807383))))

(declare-fun contains!13257 (ListMap!3537 K!11975) Bool)

(assert (=> b!4506526 (= res!1874069 (contains!13257 lt!1685574 key!3287))))

(assert (=> b!4506526 (= lt!1685574 (extractMap!1190 (toList!4275 lm!1477)))))

(declare-fun b!4506527 () Bool)

(declare-fun res!1874067 () Bool)

(declare-fun e!2807382 () Bool)

(assert (=> b!4506527 (=> res!1874067 e!2807382)))

(declare-fun lt!1685588 () tuple2!50972)

(declare-fun contains!13258 (List!50695 tuple2!50972) Bool)

(assert (=> b!4506527 (= res!1874067 (not (contains!13258 (t!357657 (toList!4275 lm!1477)) lt!1685588)))))

(declare-fun b!4506528 () Bool)

(declare-fun res!1874068 () Bool)

(assert (=> b!4506528 (=> res!1874068 e!2807379)))

(assert (=> b!4506528 (= res!1874068 (bvsge (_1!28780 lt!1685576) hash!344))))

(declare-fun res!1874065 () Bool)

(assert (=> start!445184 (=> (not res!1874065) (not e!2807387))))

(declare-fun lambda!169727 () Int)

(declare-fun forall!10201 (List!50695 Int) Bool)

(assert (=> start!445184 (= res!1874065 (forall!10201 (toList!4275 lm!1477) lambda!169727))))

(assert (=> start!445184 e!2807387))

(assert (=> start!445184 true))

(declare-fun e!2807388 () Bool)

(declare-fun inv!66159 (ListLongMap!2907) Bool)

(assert (=> start!445184 (and (inv!66159 lm!1477) e!2807388)))

(declare-fun tp_is_empty!27813 () Bool)

(assert (=> start!445184 tp_is_empty!27813))

(declare-fun e!2807381 () Bool)

(assert (=> start!445184 e!2807381))

(declare-fun b!4506529 () Bool)

(declare-fun res!1874066 () Bool)

(declare-fun e!2807385 () Bool)

(assert (=> b!4506529 (=> res!1874066 e!2807385)))

(get-info :version)

(assert (=> b!4506529 (= res!1874066 (or ((_ is Nil!50571) (toList!4275 lm!1477)) (= (_1!28780 (h!56400 (toList!4275 lm!1477))) hash!344)))))

(declare-fun b!4506530 () Bool)

(declare-fun e!2807378 () Bool)

(assert (=> b!4506530 (= e!2807382 e!2807378)))

(declare-fun res!1874056 () Bool)

(assert (=> b!4506530 (=> res!1874056 e!2807378)))

(declare-fun lt!1685577 () Bool)

(assert (=> b!4506530 (= res!1874056 lt!1685577)))

(declare-fun lt!1685578 () Unit!92894)

(assert (=> b!4506530 (= lt!1685578 e!2807384)))

(declare-fun c!768521 () Bool)

(assert (=> b!4506530 (= c!768521 lt!1685577)))

(declare-fun lt!1685570 () List!50694)

(declare-fun containsKey!1706 (List!50694 K!11975) Bool)

(assert (=> b!4506530 (= lt!1685577 (not (containsKey!1706 lt!1685570 key!3287)))))

(declare-fun tp!1337660 () Bool)

(declare-fun tp_is_empty!27815 () Bool)

(declare-fun b!4506531 () Bool)

(assert (=> b!4506531 (= e!2807381 (and tp_is_empty!27813 tp_is_empty!27815 tp!1337660))))

(declare-fun b!4506532 () Bool)

(declare-fun res!1874052 () Bool)

(assert (=> b!4506532 (=> res!1874052 e!2807382)))

(declare-fun apply!11871 (ListLongMap!2907 (_ BitVec 64)) List!50694)

(assert (=> b!4506532 (= res!1874052 (not (= (apply!11871 lt!1685580 hash!344) lt!1685570)))))

(declare-fun b!4506533 () Bool)

(declare-fun Unit!92897 () Unit!92894)

(assert (=> b!4506533 (= e!2807384 Unit!92897)))

(declare-fun b!4506534 () Bool)

(declare-fun res!1874061 () Bool)

(assert (=> b!4506534 (=> res!1874061 e!2807385)))

(declare-fun noDuplicateKeys!1134 (List!50694) Bool)

(assert (=> b!4506534 (= res!1874061 (not (noDuplicateKeys!1134 newBucket!178)))))

(declare-fun b!4506535 () Bool)

(declare-fun res!1874062 () Bool)

(assert (=> b!4506535 (=> (not res!1874062) (not e!2807387))))

(declare-fun allKeysSameHashInMap!1241 (ListLongMap!2907 Hashable!5529) Bool)

(assert (=> b!4506535 (= res!1874062 (allKeysSameHashInMap!1241 lm!1477 hashF!1107))))

(declare-fun b!4506536 () Bool)

(declare-fun e!2807389 () Bool)

(assert (=> b!4506536 (= e!2807378 e!2807389)))

(declare-fun res!1874054 () Bool)

(assert (=> b!4506536 (=> res!1874054 e!2807389)))

(declare-fun containsKeyBiggerList!114 (List!50695 K!11975) Bool)

(assert (=> b!4506536 (= res!1874054 (not (containsKeyBiggerList!114 (t!357657 (toList!4275 lm!1477)) key!3287)))))

(assert (=> b!4506536 (containsKeyBiggerList!114 (toList!4275 lt!1685580) key!3287)))

(declare-fun lt!1685575 () Unit!92894)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!50 (ListLongMap!2907 K!11975 Hashable!5529) Unit!92894)

(assert (=> b!4506536 (= lt!1685575 (lemmaInLongMapThenContainsKeyBiggerList!50 lt!1685580 key!3287 hashF!1107))))

(declare-fun b!4506537 () Bool)

(assert (=> b!4506537 (= e!2807385 e!2807382)))

(declare-fun res!1874058 () Bool)

(assert (=> b!4506537 (=> res!1874058 e!2807382)))

(declare-fun contains!13259 (ListLongMap!2907 (_ BitVec 64)) Bool)

(assert (=> b!4506537 (= res!1874058 (not (contains!13259 lt!1685580 hash!344)))))

(declare-fun tail!7684 (ListLongMap!2907) ListLongMap!2907)

(assert (=> b!4506537 (= lt!1685580 (tail!7684 lm!1477))))

(declare-fun b!4506538 () Bool)

(assert (=> b!4506538 (= e!2807389 e!2807377)))

(declare-fun res!1874057 () Bool)

(assert (=> b!4506538 (=> res!1874057 e!2807377)))

(assert (=> b!4506538 (= res!1874057 (not (contains!13257 (extractMap!1190 (t!357657 (toList!4275 lm!1477))) key!3287)))))

(assert (=> b!4506538 (contains!13257 lt!1685586 key!3287)))

(assert (=> b!4506538 (= lt!1685586 (extractMap!1190 (toList!4275 lt!1685580)))))

(declare-fun lt!1685581 () Unit!92894)

(declare-fun lemmaListContainsThenExtractedMapContains!104 (ListLongMap!2907 K!11975 Hashable!5529) Unit!92894)

(assert (=> b!4506538 (= lt!1685581 (lemmaListContainsThenExtractedMapContains!104 lt!1685580 key!3287 hashF!1107))))

(declare-fun b!4506539 () Bool)

(assert (=> b!4506539 (= e!2807386 (not e!2807385))))

(declare-fun res!1874060 () Bool)

(assert (=> b!4506539 (=> res!1874060 e!2807385)))

(declare-fun removePairForKey!761 (List!50694 K!11975) List!50694)

(assert (=> b!4506539 (= res!1874060 (not (= newBucket!178 (removePairForKey!761 lt!1685570 key!3287))))))

(declare-fun lt!1685571 () Unit!92894)

(declare-fun forallContained!2453 (List!50695 Int tuple2!50972) Unit!92894)

(assert (=> b!4506539 (= lt!1685571 (forallContained!2453 (toList!4275 lm!1477) lambda!169727 lt!1685588))))

(assert (=> b!4506539 (contains!13258 (toList!4275 lm!1477) lt!1685588)))

(assert (=> b!4506539 (= lt!1685588 (tuple2!50973 hash!344 lt!1685570))))

(declare-fun lt!1685579 () Unit!92894)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!646 (List!50695 (_ BitVec 64) List!50694) Unit!92894)

(assert (=> b!4506539 (= lt!1685579 (lemmaGetValueByKeyImpliesContainsTuple!646 (toList!4275 lm!1477) hash!344 lt!1685570))))

(assert (=> b!4506539 (= lt!1685570 (apply!11871 lm!1477 hash!344))))

(assert (=> b!4506539 (contains!13259 lm!1477 lt!1685583)))

(declare-fun lt!1685572 () Unit!92894)

(declare-fun lemmaInGenMapThenLongMapContainsHash!208 (ListLongMap!2907 K!11975 Hashable!5529) Unit!92894)

(assert (=> b!4506539 (= lt!1685572 (lemmaInGenMapThenLongMapContainsHash!208 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4506540 () Bool)

(declare-fun res!1874059 () Bool)

(assert (=> b!4506540 (=> res!1874059 e!2807380)))

(assert (=> b!4506540 (= res!1874059 (not (= (head!9362 lt!1685584) lt!1685576)))))

(declare-fun b!4506541 () Bool)

(assert (=> b!4506541 (= e!2807380 (noDuplicateKeys!1134 (_2!28780 lt!1685576)))))

(declare-fun lt!1685582 () ListMap!3537)

(assert (=> b!4506541 (= lt!1685582 (extractMap!1190 (toList!4275 lt!1685584)))))

(declare-fun b!4506542 () Bool)

(declare-fun tp!1337661 () Bool)

(assert (=> b!4506542 (= e!2807388 tp!1337661)))

(assert (= (and start!445184 res!1874065) b!4506535))

(assert (= (and b!4506535 res!1874062) b!4506526))

(assert (= (and b!4506526 res!1874069) b!4506522))

(assert (= (and b!4506522 res!1874064) b!4506523))

(assert (= (and b!4506523 res!1874070) b!4506539))

(assert (= (and b!4506539 (not res!1874060)) b!4506534))

(assert (= (and b!4506534 (not res!1874061)) b!4506529))

(assert (= (and b!4506529 (not res!1874066)) b!4506537))

(assert (= (and b!4506537 (not res!1874058)) b!4506532))

(assert (= (and b!4506532 (not res!1874052)) b!4506527))

(assert (= (and b!4506527 (not res!1874067)) b!4506530))

(assert (= (and b!4506530 c!768521) b!4506524))

(assert (= (and b!4506530 (not c!768521)) b!4506533))

(assert (= (and b!4506530 (not res!1874056)) b!4506536))

(assert (= (and b!4506536 (not res!1874054)) b!4506538))

(assert (= (and b!4506538 (not res!1874057)) b!4506525))

(assert (= (and b!4506525 (not res!1874053)) b!4506521))

(assert (= (and b!4506521 (not res!1874063)) b!4506528))

(assert (= (and b!4506528 (not res!1874068)) b!4506520))

(assert (= (and b!4506520 (not res!1874055)) b!4506540))

(assert (= (and b!4506540 (not res!1874059)) b!4506541))

(assert (= start!445184 b!4506542))

(assert (= (and start!445184 ((_ is Cons!50570) newBucket!178)) b!4506531))

(declare-fun m!5242785 () Bool)

(assert (=> b!4506536 m!5242785))

(declare-fun m!5242787 () Bool)

(assert (=> b!4506536 m!5242787))

(declare-fun m!5242789 () Bool)

(assert (=> b!4506536 m!5242789))

(declare-fun m!5242791 () Bool)

(assert (=> start!445184 m!5242791))

(declare-fun m!5242793 () Bool)

(assert (=> start!445184 m!5242793))

(declare-fun m!5242795 () Bool)

(assert (=> b!4506539 m!5242795))

(declare-fun m!5242797 () Bool)

(assert (=> b!4506539 m!5242797))

(declare-fun m!5242799 () Bool)

(assert (=> b!4506539 m!5242799))

(declare-fun m!5242801 () Bool)

(assert (=> b!4506539 m!5242801))

(declare-fun m!5242803 () Bool)

(assert (=> b!4506539 m!5242803))

(declare-fun m!5242805 () Bool)

(assert (=> b!4506539 m!5242805))

(declare-fun m!5242807 () Bool)

(assert (=> b!4506539 m!5242807))

(declare-fun m!5242809 () Bool)

(assert (=> b!4506535 m!5242809))

(declare-fun m!5242811 () Bool)

(assert (=> b!4506532 m!5242811))

(declare-fun m!5242813 () Bool)

(assert (=> b!4506523 m!5242813))

(declare-fun m!5242815 () Bool)

(assert (=> b!4506527 m!5242815))

(declare-fun m!5242817 () Bool)

(assert (=> b!4506524 m!5242817))

(declare-fun m!5242819 () Bool)

(assert (=> b!4506530 m!5242819))

(declare-fun m!5242821 () Bool)

(assert (=> b!4506540 m!5242821))

(declare-fun m!5242823 () Bool)

(assert (=> b!4506541 m!5242823))

(declare-fun m!5242825 () Bool)

(assert (=> b!4506541 m!5242825))

(declare-fun m!5242827 () Bool)

(assert (=> b!4506538 m!5242827))

(declare-fun m!5242829 () Bool)

(assert (=> b!4506538 m!5242829))

(declare-fun m!5242831 () Bool)

(assert (=> b!4506538 m!5242831))

(declare-fun m!5242833 () Bool)

(assert (=> b!4506538 m!5242833))

(assert (=> b!4506538 m!5242833))

(declare-fun m!5242835 () Bool)

(assert (=> b!4506538 m!5242835))

(declare-fun m!5242837 () Bool)

(assert (=> b!4506520 m!5242837))

(declare-fun m!5242839 () Bool)

(assert (=> b!4506520 m!5242839))

(declare-fun m!5242841 () Bool)

(assert (=> b!4506522 m!5242841))

(declare-fun m!5242843 () Bool)

(assert (=> b!4506526 m!5242843))

(declare-fun m!5242845 () Bool)

(assert (=> b!4506526 m!5242845))

(declare-fun m!5242847 () Bool)

(assert (=> b!4506525 m!5242847))

(declare-fun m!5242849 () Bool)

(assert (=> b!4506525 m!5242849))

(declare-fun m!5242851 () Bool)

(assert (=> b!4506525 m!5242851))

(declare-fun m!5242853 () Bool)

(assert (=> b!4506525 m!5242853))

(declare-fun m!5242855 () Bool)

(assert (=> b!4506525 m!5242855))

(declare-fun m!5242857 () Bool)

(assert (=> b!4506525 m!5242857))

(declare-fun m!5242859 () Bool)

(assert (=> b!4506525 m!5242859))

(assert (=> b!4506525 m!5242847))

(assert (=> b!4506525 m!5242855))

(declare-fun m!5242861 () Bool)

(assert (=> b!4506525 m!5242861))

(declare-fun m!5242863 () Bool)

(assert (=> b!4506525 m!5242863))

(declare-fun m!5242865 () Bool)

(assert (=> b!4506521 m!5242865))

(declare-fun m!5242867 () Bool)

(assert (=> b!4506534 m!5242867))

(declare-fun m!5242869 () Bool)

(assert (=> b!4506537 m!5242869))

(declare-fun m!5242871 () Bool)

(assert (=> b!4506537 m!5242871))

(check-sat (not b!4506540) (not b!4506523) (not b!4506536) (not start!445184) (not b!4506541) (not b!4506542) (not b!4506522) tp_is_empty!27815 tp_is_empty!27813 (not b!4506539) (not b!4506524) (not b!4506527) (not b!4506525) (not b!4506535) (not b!4506521) (not b!4506530) (not b!4506538) (not b!4506520) (not b!4506534) (not b!4506531) (not b!4506537) (not b!4506532) (not b!4506526))
(check-sat)
(get-model)

(declare-fun d!1385251 () Bool)

(assert (=> d!1385251 (contains!13258 (toList!4275 lm!1477) (tuple2!50973 hash!344 lt!1685570))))

(declare-fun lt!1685593 () Unit!92894)

(declare-fun choose!29226 (List!50695 (_ BitVec 64) List!50694) Unit!92894)

(assert (=> d!1385251 (= lt!1685593 (choose!29226 (toList!4275 lm!1477) hash!344 lt!1685570))))

(declare-fun e!2807392 () Bool)

(assert (=> d!1385251 e!2807392))

(declare-fun res!1874073 () Bool)

(assert (=> d!1385251 (=> (not res!1874073) (not e!2807392))))

(declare-fun isStrictlySorted!406 (List!50695) Bool)

(assert (=> d!1385251 (= res!1874073 (isStrictlySorted!406 (toList!4275 lm!1477)))))

(assert (=> d!1385251 (= (lemmaGetValueByKeyImpliesContainsTuple!646 (toList!4275 lm!1477) hash!344 lt!1685570) lt!1685593)))

(declare-fun b!4506545 () Bool)

(declare-datatypes ((Option!11064 0))(
  ( (None!11063) (Some!11063 (v!44591 List!50694)) )
))
(declare-fun getValueByKey!1044 (List!50695 (_ BitVec 64)) Option!11064)

(assert (=> b!4506545 (= e!2807392 (= (getValueByKey!1044 (toList!4275 lm!1477) hash!344) (Some!11063 lt!1685570)))))

(assert (= (and d!1385251 res!1874073) b!4506545))

(declare-fun m!5242873 () Bool)

(assert (=> d!1385251 m!5242873))

(declare-fun m!5242875 () Bool)

(assert (=> d!1385251 m!5242875))

(declare-fun m!5242877 () Bool)

(assert (=> d!1385251 m!5242877))

(declare-fun m!5242879 () Bool)

(assert (=> b!4506545 m!5242879))

(assert (=> b!4506539 d!1385251))

(declare-fun bs!844025 () Bool)

(declare-fun d!1385253 () Bool)

(assert (= bs!844025 (and d!1385253 start!445184)))

(declare-fun lambda!169730 () Int)

(assert (=> bs!844025 (= lambda!169730 lambda!169727)))

(assert (=> d!1385253 (contains!13259 lm!1477 (hash!2721 hashF!1107 key!3287))))

(declare-fun lt!1685596 () Unit!92894)

(declare-fun choose!29227 (ListLongMap!2907 K!11975 Hashable!5529) Unit!92894)

(assert (=> d!1385253 (= lt!1685596 (choose!29227 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1385253 (forall!10201 (toList!4275 lm!1477) lambda!169730)))

(assert (=> d!1385253 (= (lemmaInGenMapThenLongMapContainsHash!208 lm!1477 key!3287 hashF!1107) lt!1685596)))

(declare-fun bs!844026 () Bool)

(assert (= bs!844026 d!1385253))

(assert (=> bs!844026 m!5242841))

(assert (=> bs!844026 m!5242841))

(declare-fun m!5242881 () Bool)

(assert (=> bs!844026 m!5242881))

(declare-fun m!5242883 () Bool)

(assert (=> bs!844026 m!5242883))

(declare-fun m!5242885 () Bool)

(assert (=> bs!844026 m!5242885))

(assert (=> b!4506539 d!1385253))

(declare-fun d!1385255 () Bool)

(declare-fun get!16538 (Option!11064) List!50694)

(assert (=> d!1385255 (= (apply!11871 lm!1477 hash!344) (get!16538 (getValueByKey!1044 (toList!4275 lm!1477) hash!344)))))

(declare-fun bs!844027 () Bool)

(assert (= bs!844027 d!1385255))

(assert (=> bs!844027 m!5242879))

(assert (=> bs!844027 m!5242879))

(declare-fun m!5242887 () Bool)

(assert (=> bs!844027 m!5242887))

(assert (=> b!4506539 d!1385255))

(declare-fun b!4506567 () Bool)

(declare-fun e!2807410 () List!50694)

(declare-fun e!2807409 () List!50694)

(assert (=> b!4506567 (= e!2807410 e!2807409)))

(declare-fun c!768527 () Bool)

(assert (=> b!4506567 (= c!768527 ((_ is Cons!50570) lt!1685570))))

(declare-fun b!4506568 () Bool)

(assert (=> b!4506568 (= e!2807409 (Cons!50570 (h!56399 lt!1685570) (removePairForKey!761 (t!357656 lt!1685570) key!3287)))))

(declare-fun b!4506566 () Bool)

(assert (=> b!4506566 (= e!2807410 (t!357656 lt!1685570))))

(declare-fun b!4506569 () Bool)

(assert (=> b!4506569 (= e!2807409 Nil!50570)))

(declare-fun d!1385257 () Bool)

(declare-fun lt!1685601 () List!50694)

(assert (=> d!1385257 (not (containsKey!1706 lt!1685601 key!3287))))

(assert (=> d!1385257 (= lt!1685601 e!2807410)))

(declare-fun c!768526 () Bool)

(assert (=> d!1385257 (= c!768526 (and ((_ is Cons!50570) lt!1685570) (= (_1!28779 (h!56399 lt!1685570)) key!3287)))))

(assert (=> d!1385257 (noDuplicateKeys!1134 lt!1685570)))

(assert (=> d!1385257 (= (removePairForKey!761 lt!1685570 key!3287) lt!1685601)))

(assert (= (and d!1385257 c!768526) b!4506566))

(assert (= (and d!1385257 (not c!768526)) b!4506567))

(assert (= (and b!4506567 c!768527) b!4506568))

(assert (= (and b!4506567 (not c!768527)) b!4506569))

(declare-fun m!5242897 () Bool)

(assert (=> b!4506568 m!5242897))

(declare-fun m!5242899 () Bool)

(assert (=> d!1385257 m!5242899))

(declare-fun m!5242903 () Bool)

(assert (=> d!1385257 m!5242903))

(assert (=> b!4506539 d!1385257))

(declare-fun d!1385267 () Bool)

(declare-fun dynLambda!21126 (Int tuple2!50972) Bool)

(assert (=> d!1385267 (dynLambda!21126 lambda!169727 lt!1685588)))

(declare-fun lt!1685605 () Unit!92894)

(declare-fun choose!29229 (List!50695 Int tuple2!50972) Unit!92894)

(assert (=> d!1385267 (= lt!1685605 (choose!29229 (toList!4275 lm!1477) lambda!169727 lt!1685588))))

(declare-fun e!2807419 () Bool)

(assert (=> d!1385267 e!2807419))

(declare-fun res!1874094 () Bool)

(assert (=> d!1385267 (=> (not res!1874094) (not e!2807419))))

(assert (=> d!1385267 (= res!1874094 (forall!10201 (toList!4275 lm!1477) lambda!169727))))

(assert (=> d!1385267 (= (forallContained!2453 (toList!4275 lm!1477) lambda!169727 lt!1685588) lt!1685605)))

(declare-fun b!4506582 () Bool)

(assert (=> b!4506582 (= e!2807419 (contains!13258 (toList!4275 lm!1477) lt!1685588))))

(assert (= (and d!1385267 res!1874094) b!4506582))

(declare-fun b_lambda!153369 () Bool)

(assert (=> (not b_lambda!153369) (not d!1385267)))

(declare-fun m!5242913 () Bool)

(assert (=> d!1385267 m!5242913))

(declare-fun m!5242915 () Bool)

(assert (=> d!1385267 m!5242915))

(assert (=> d!1385267 m!5242791))

(assert (=> b!4506582 m!5242803))

(assert (=> b!4506539 d!1385267))

(declare-fun d!1385273 () Bool)

(declare-fun lt!1685608 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8283 (List!50695) (InoxSet tuple2!50972))

(assert (=> d!1385273 (= lt!1685608 (select (content!8283 (toList!4275 lm!1477)) lt!1685588))))

(declare-fun e!2807424 () Bool)

(assert (=> d!1385273 (= lt!1685608 e!2807424)))

(declare-fun res!1874099 () Bool)

(assert (=> d!1385273 (=> (not res!1874099) (not e!2807424))))

(assert (=> d!1385273 (= res!1874099 ((_ is Cons!50571) (toList!4275 lm!1477)))))

(assert (=> d!1385273 (= (contains!13258 (toList!4275 lm!1477) lt!1685588) lt!1685608)))

(declare-fun b!4506587 () Bool)

(declare-fun e!2807425 () Bool)

(assert (=> b!4506587 (= e!2807424 e!2807425)))

(declare-fun res!1874100 () Bool)

(assert (=> b!4506587 (=> res!1874100 e!2807425)))

(assert (=> b!4506587 (= res!1874100 (= (h!56400 (toList!4275 lm!1477)) lt!1685588))))

(declare-fun b!4506588 () Bool)

(assert (=> b!4506588 (= e!2807425 (contains!13258 (t!357657 (toList!4275 lm!1477)) lt!1685588))))

(assert (= (and d!1385273 res!1874099) b!4506587))

(assert (= (and b!4506587 (not res!1874100)) b!4506588))

(declare-fun m!5242917 () Bool)

(assert (=> d!1385273 m!5242917))

(declare-fun m!5242919 () Bool)

(assert (=> d!1385273 m!5242919))

(assert (=> b!4506588 m!5242815))

(assert (=> b!4506539 d!1385273))

(declare-fun d!1385275 () Bool)

(declare-fun e!2807454 () Bool)

(assert (=> d!1385275 e!2807454))

(declare-fun res!1874115 () Bool)

(assert (=> d!1385275 (=> res!1874115 e!2807454)))

(declare-fun lt!1685651 () Bool)

(assert (=> d!1385275 (= res!1874115 (not lt!1685651))))

(declare-fun lt!1685649 () Bool)

(assert (=> d!1385275 (= lt!1685651 lt!1685649)))

(declare-fun lt!1685650 () Unit!92894)

(declare-fun e!2807455 () Unit!92894)

(assert (=> d!1385275 (= lt!1685650 e!2807455)))

(declare-fun c!768542 () Bool)

(assert (=> d!1385275 (= c!768542 lt!1685649)))

(declare-fun containsKey!1708 (List!50695 (_ BitVec 64)) Bool)

(assert (=> d!1385275 (= lt!1685649 (containsKey!1708 (toList!4275 lm!1477) lt!1685583))))

(assert (=> d!1385275 (= (contains!13259 lm!1477 lt!1685583) lt!1685651)))

(declare-fun b!4506631 () Bool)

(declare-fun lt!1685652 () Unit!92894)

(assert (=> b!4506631 (= e!2807455 lt!1685652)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!947 (List!50695 (_ BitVec 64)) Unit!92894)

(assert (=> b!4506631 (= lt!1685652 (lemmaContainsKeyImpliesGetValueByKeyDefined!947 (toList!4275 lm!1477) lt!1685583))))

(declare-fun isDefined!8350 (Option!11064) Bool)

(assert (=> b!4506631 (isDefined!8350 (getValueByKey!1044 (toList!4275 lm!1477) lt!1685583))))

(declare-fun b!4506632 () Bool)

(declare-fun Unit!92902 () Unit!92894)

(assert (=> b!4506632 (= e!2807455 Unit!92902)))

(declare-fun b!4506633 () Bool)

(assert (=> b!4506633 (= e!2807454 (isDefined!8350 (getValueByKey!1044 (toList!4275 lm!1477) lt!1685583)))))

(assert (= (and d!1385275 c!768542) b!4506631))

(assert (= (and d!1385275 (not c!768542)) b!4506632))

(assert (= (and d!1385275 (not res!1874115)) b!4506633))

(declare-fun m!5242961 () Bool)

(assert (=> d!1385275 m!5242961))

(declare-fun m!5242963 () Bool)

(assert (=> b!4506631 m!5242963))

(declare-fun m!5242965 () Bool)

(assert (=> b!4506631 m!5242965))

(assert (=> b!4506631 m!5242965))

(declare-fun m!5242967 () Bool)

(assert (=> b!4506631 m!5242967))

(assert (=> b!4506633 m!5242965))

(assert (=> b!4506633 m!5242965))

(assert (=> b!4506633 m!5242967))

(assert (=> b!4506539 d!1385275))

(declare-fun bs!844048 () Bool)

(declare-fun d!1385281 () Bool)

(assert (= bs!844048 (and d!1385281 start!445184)))

(declare-fun lambda!169749 () Int)

(assert (=> bs!844048 (= lambda!169749 lambda!169727)))

(declare-fun bs!844049 () Bool)

(assert (= bs!844049 (and d!1385281 d!1385253)))

(assert (=> bs!844049 (= lambda!169749 lambda!169730)))

(declare-fun lt!1685678 () ListMap!3537)

(declare-fun invariantList!993 (List!50694) Bool)

(assert (=> d!1385281 (invariantList!993 (toList!4276 lt!1685678))))

(declare-fun e!2807466 () ListMap!3537)

(assert (=> d!1385281 (= lt!1685678 e!2807466)))

(declare-fun c!768549 () Bool)

(assert (=> d!1385281 (= c!768549 ((_ is Cons!50571) (toList!4275 lt!1685580)))))

(assert (=> d!1385281 (forall!10201 (toList!4275 lt!1685580) lambda!169749)))

(assert (=> d!1385281 (= (extractMap!1190 (toList!4275 lt!1685580)) lt!1685678)))

(declare-fun b!4506656 () Bool)

(declare-fun addToMapMapFromBucket!661 (List!50694 ListMap!3537) ListMap!3537)

(assert (=> b!4506656 (= e!2807466 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))))))

(declare-fun b!4506657 () Bool)

(assert (=> b!4506657 (= e!2807466 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385281 c!768549) b!4506656))

(assert (= (and d!1385281 (not c!768549)) b!4506657))

(declare-fun m!5243019 () Bool)

(assert (=> d!1385281 m!5243019))

(declare-fun m!5243021 () Bool)

(assert (=> d!1385281 m!5243021))

(declare-fun m!5243023 () Bool)

(assert (=> b!4506656 m!5243023))

(assert (=> b!4506656 m!5243023))

(declare-fun m!5243025 () Bool)

(assert (=> b!4506656 m!5243025))

(assert (=> b!4506538 d!1385281))

(declare-fun b!4506690 () Bool)

(declare-datatypes ((List!50697 0))(
  ( (Nil!50573) (Cons!50573 (h!56404 K!11975) (t!357659 List!50697)) )
))
(declare-fun e!2807495 () List!50697)

(declare-fun getKeysList!441 (List!50694) List!50697)

(assert (=> b!4506690 (= e!2807495 (getKeysList!441 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))

(declare-fun b!4506691 () Bool)

(declare-fun e!2807493 () Bool)

(declare-fun contains!13261 (List!50697 K!11975) Bool)

(declare-fun keys!17544 (ListMap!3537) List!50697)

(assert (=> b!4506691 (= e!2807493 (not (contains!13261 (keys!17544 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287)))))

(declare-fun b!4506692 () Bool)

(declare-fun e!2807496 () Unit!92894)

(declare-fun Unit!92903 () Unit!92894)

(assert (=> b!4506692 (= e!2807496 Unit!92903)))

(declare-fun b!4506693 () Bool)

(assert (=> b!4506693 false))

(declare-fun lt!1685710 () Unit!92894)

(declare-fun lt!1685709 () Unit!92894)

(assert (=> b!4506693 (= lt!1685710 lt!1685709)))

(declare-fun containsKey!1709 (List!50694 K!11975) Bool)

(assert (=> b!4506693 (containsKey!1709 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!440 (List!50694 K!11975) Unit!92894)

(assert (=> b!4506693 (= lt!1685709 (lemmaInGetKeysListThenContainsKey!440 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(declare-fun Unit!92904 () Unit!92894)

(assert (=> b!4506693 (= e!2807496 Unit!92904)))

(declare-fun b!4506694 () Bool)

(assert (=> b!4506694 (= e!2807495 (keys!17544 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))

(declare-fun b!4506695 () Bool)

(declare-fun e!2807492 () Unit!92894)

(assert (=> b!4506695 (= e!2807492 e!2807496)))

(declare-fun c!768557 () Bool)

(declare-fun call!313754 () Bool)

(assert (=> b!4506695 (= c!768557 call!313754)))

(declare-fun d!1385297 () Bool)

(declare-fun e!2807494 () Bool)

(assert (=> d!1385297 e!2807494))

(declare-fun res!1874144 () Bool)

(assert (=> d!1385297 (=> res!1874144 e!2807494)))

(assert (=> d!1385297 (= res!1874144 e!2807493)))

(declare-fun res!1874143 () Bool)

(assert (=> d!1385297 (=> (not res!1874143) (not e!2807493))))

(declare-fun lt!1685711 () Bool)

(assert (=> d!1385297 (= res!1874143 (not lt!1685711))))

(declare-fun lt!1685705 () Bool)

(assert (=> d!1385297 (= lt!1685711 lt!1685705)))

(declare-fun lt!1685712 () Unit!92894)

(assert (=> d!1385297 (= lt!1685712 e!2807492)))

(declare-fun c!768558 () Bool)

(assert (=> d!1385297 (= c!768558 lt!1685705)))

(assert (=> d!1385297 (= lt!1685705 (containsKey!1709 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(assert (=> d!1385297 (= (contains!13257 (extractMap!1190 (t!357657 (toList!4275 lm!1477))) key!3287) lt!1685711)))

(declare-fun b!4506696 () Bool)

(declare-fun e!2807497 () Bool)

(assert (=> b!4506696 (= e!2807497 (contains!13261 (keys!17544 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(declare-fun b!4506697 () Bool)

(assert (=> b!4506697 (= e!2807494 e!2807497)))

(declare-fun res!1874142 () Bool)

(assert (=> b!4506697 (=> (not res!1874142) (not e!2807497))))

(declare-datatypes ((Option!11065 0))(
  ( (None!11064) (Some!11064 (v!44592 V!12221)) )
))
(declare-fun isDefined!8351 (Option!11065) Bool)

(declare-fun getValueByKey!1045 (List!50694 K!11975) Option!11065)

(assert (=> b!4506697 (= res!1874142 (isDefined!8351 (getValueByKey!1045 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287)))))

(declare-fun bm!313749 () Bool)

(assert (=> bm!313749 (= call!313754 (contains!13261 e!2807495 key!3287))))

(declare-fun c!768559 () Bool)

(assert (=> bm!313749 (= c!768559 c!768558)))

(declare-fun b!4506698 () Bool)

(declare-fun lt!1685708 () Unit!92894)

(assert (=> b!4506698 (= e!2807492 lt!1685708)))

(declare-fun lt!1685707 () Unit!92894)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!948 (List!50694 K!11975) Unit!92894)

(assert (=> b!4506698 (= lt!1685707 (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(assert (=> b!4506698 (isDefined!8351 (getValueByKey!1045 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(declare-fun lt!1685706 () Unit!92894)

(assert (=> b!4506698 (= lt!1685706 lt!1685707)))

(declare-fun lemmaInListThenGetKeysListContains!437 (List!50694 K!11975) Unit!92894)

(assert (=> b!4506698 (= lt!1685708 (lemmaInListThenGetKeysListContains!437 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(assert (=> b!4506698 call!313754))

(assert (= (and d!1385297 c!768558) b!4506698))

(assert (= (and d!1385297 (not c!768558)) b!4506695))

(assert (= (and b!4506695 c!768557) b!4506693))

(assert (= (and b!4506695 (not c!768557)) b!4506692))

(assert (= (or b!4506698 b!4506695) bm!313749))

(assert (= (and bm!313749 c!768559) b!4506690))

(assert (= (and bm!313749 (not c!768559)) b!4506694))

(assert (= (and d!1385297 res!1874143) b!4506691))

(assert (= (and d!1385297 (not res!1874144)) b!4506697))

(assert (= (and b!4506697 res!1874142) b!4506696))

(declare-fun m!5243069 () Bool)

(assert (=> b!4506690 m!5243069))

(declare-fun m!5243071 () Bool)

(assert (=> b!4506697 m!5243071))

(assert (=> b!4506697 m!5243071))

(declare-fun m!5243073 () Bool)

(assert (=> b!4506697 m!5243073))

(assert (=> b!4506691 m!5242833))

(declare-fun m!5243075 () Bool)

(assert (=> b!4506691 m!5243075))

(assert (=> b!4506691 m!5243075))

(declare-fun m!5243077 () Bool)

(assert (=> b!4506691 m!5243077))

(declare-fun m!5243079 () Bool)

(assert (=> bm!313749 m!5243079))

(declare-fun m!5243081 () Bool)

(assert (=> b!4506698 m!5243081))

(assert (=> b!4506698 m!5243071))

(assert (=> b!4506698 m!5243071))

(assert (=> b!4506698 m!5243073))

(declare-fun m!5243083 () Bool)

(assert (=> b!4506698 m!5243083))

(declare-fun m!5243085 () Bool)

(assert (=> d!1385297 m!5243085))

(assert (=> b!4506693 m!5243085))

(declare-fun m!5243087 () Bool)

(assert (=> b!4506693 m!5243087))

(assert (=> b!4506694 m!5242833))

(assert (=> b!4506694 m!5243075))

(assert (=> b!4506696 m!5242833))

(assert (=> b!4506696 m!5243075))

(assert (=> b!4506696 m!5243075))

(assert (=> b!4506696 m!5243077))

(assert (=> b!4506538 d!1385297))

(declare-fun bs!844075 () Bool)

(declare-fun d!1385313 () Bool)

(assert (= bs!844075 (and d!1385313 start!445184)))

(declare-fun lambda!169757 () Int)

(assert (=> bs!844075 (= lambda!169757 lambda!169727)))

(declare-fun bs!844076 () Bool)

(assert (= bs!844076 (and d!1385313 d!1385253)))

(assert (=> bs!844076 (= lambda!169757 lambda!169730)))

(declare-fun bs!844077 () Bool)

(assert (= bs!844077 (and d!1385313 d!1385281)))

(assert (=> bs!844077 (= lambda!169757 lambda!169749)))

(declare-fun lt!1685715 () ListMap!3537)

(assert (=> d!1385313 (invariantList!993 (toList!4276 lt!1685715))))

(declare-fun e!2807500 () ListMap!3537)

(assert (=> d!1385313 (= lt!1685715 e!2807500)))

(declare-fun c!768560 () Bool)

(assert (=> d!1385313 (= c!768560 ((_ is Cons!50571) (t!357657 (toList!4275 lm!1477))))))

(assert (=> d!1385313 (forall!10201 (t!357657 (toList!4275 lm!1477)) lambda!169757)))

(assert (=> d!1385313 (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1685715)))

(declare-fun b!4506701 () Bool)

(assert (=> b!4506701 (= e!2807500 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))))))

(declare-fun b!4506702 () Bool)

(assert (=> b!4506702 (= e!2807500 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385313 c!768560) b!4506701))

(assert (= (and d!1385313 (not c!768560)) b!4506702))

(declare-fun m!5243101 () Bool)

(assert (=> d!1385313 m!5243101))

(declare-fun m!5243103 () Bool)

(assert (=> d!1385313 m!5243103))

(declare-fun m!5243105 () Bool)

(assert (=> b!4506701 m!5243105))

(assert (=> b!4506701 m!5243105))

(declare-fun m!5243107 () Bool)

(assert (=> b!4506701 m!5243107))

(assert (=> b!4506538 d!1385313))

(declare-fun b!4506706 () Bool)

(declare-fun e!2807506 () List!50697)

(assert (=> b!4506706 (= e!2807506 (getKeysList!441 (toList!4276 lt!1685586)))))

(declare-fun b!4506707 () Bool)

(declare-fun e!2807504 () Bool)

(assert (=> b!4506707 (= e!2807504 (not (contains!13261 (keys!17544 lt!1685586) key!3287)))))

(declare-fun b!4506708 () Bool)

(declare-fun e!2807507 () Unit!92894)

(declare-fun Unit!92905 () Unit!92894)

(assert (=> b!4506708 (= e!2807507 Unit!92905)))

(declare-fun b!4506709 () Bool)

(assert (=> b!4506709 false))

(declare-fun lt!1685726 () Unit!92894)

(declare-fun lt!1685725 () Unit!92894)

(assert (=> b!4506709 (= lt!1685726 lt!1685725)))

(assert (=> b!4506709 (containsKey!1709 (toList!4276 lt!1685586) key!3287)))

(assert (=> b!4506709 (= lt!1685725 (lemmaInGetKeysListThenContainsKey!440 (toList!4276 lt!1685586) key!3287))))

(declare-fun Unit!92906 () Unit!92894)

(assert (=> b!4506709 (= e!2807507 Unit!92906)))

(declare-fun b!4506710 () Bool)

(assert (=> b!4506710 (= e!2807506 (keys!17544 lt!1685586))))

(declare-fun b!4506711 () Bool)

(declare-fun e!2807503 () Unit!92894)

(assert (=> b!4506711 (= e!2807503 e!2807507)))

(declare-fun c!768561 () Bool)

(declare-fun call!313755 () Bool)

(assert (=> b!4506711 (= c!768561 call!313755)))

(declare-fun d!1385317 () Bool)

(declare-fun e!2807505 () Bool)

(assert (=> d!1385317 e!2807505))

(declare-fun res!1874152 () Bool)

(assert (=> d!1385317 (=> res!1874152 e!2807505)))

(assert (=> d!1385317 (= res!1874152 e!2807504)))

(declare-fun res!1874151 () Bool)

(assert (=> d!1385317 (=> (not res!1874151) (not e!2807504))))

(declare-fun lt!1685727 () Bool)

(assert (=> d!1385317 (= res!1874151 (not lt!1685727))))

(declare-fun lt!1685721 () Bool)

(assert (=> d!1385317 (= lt!1685727 lt!1685721)))

(declare-fun lt!1685728 () Unit!92894)

(assert (=> d!1385317 (= lt!1685728 e!2807503)))

(declare-fun c!768562 () Bool)

(assert (=> d!1385317 (= c!768562 lt!1685721)))

(assert (=> d!1385317 (= lt!1685721 (containsKey!1709 (toList!4276 lt!1685586) key!3287))))

(assert (=> d!1385317 (= (contains!13257 lt!1685586 key!3287) lt!1685727)))

(declare-fun b!4506712 () Bool)

(declare-fun e!2807508 () Bool)

(assert (=> b!4506712 (= e!2807508 (contains!13261 (keys!17544 lt!1685586) key!3287))))

(declare-fun b!4506713 () Bool)

(assert (=> b!4506713 (= e!2807505 e!2807508)))

(declare-fun res!1874150 () Bool)

(assert (=> b!4506713 (=> (not res!1874150) (not e!2807508))))

(assert (=> b!4506713 (= res!1874150 (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287)))))

(declare-fun bm!313750 () Bool)

(assert (=> bm!313750 (= call!313755 (contains!13261 e!2807506 key!3287))))

(declare-fun c!768563 () Bool)

(assert (=> bm!313750 (= c!768563 c!768562)))

(declare-fun b!4506714 () Bool)

(declare-fun lt!1685724 () Unit!92894)

(assert (=> b!4506714 (= e!2807503 lt!1685724)))

(declare-fun lt!1685723 () Unit!92894)

(assert (=> b!4506714 (= lt!1685723 (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 lt!1685586) key!3287))))

(assert (=> b!4506714 (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287))))

(declare-fun lt!1685722 () Unit!92894)

(assert (=> b!4506714 (= lt!1685722 lt!1685723)))

(assert (=> b!4506714 (= lt!1685724 (lemmaInListThenGetKeysListContains!437 (toList!4276 lt!1685586) key!3287))))

(assert (=> b!4506714 call!313755))

(assert (= (and d!1385317 c!768562) b!4506714))

(assert (= (and d!1385317 (not c!768562)) b!4506711))

(assert (= (and b!4506711 c!768561) b!4506709))

(assert (= (and b!4506711 (not c!768561)) b!4506708))

(assert (= (or b!4506714 b!4506711) bm!313750))

(assert (= (and bm!313750 c!768563) b!4506706))

(assert (= (and bm!313750 (not c!768563)) b!4506710))

(assert (= (and d!1385317 res!1874151) b!4506707))

(assert (= (and d!1385317 (not res!1874152)) b!4506713))

(assert (= (and b!4506713 res!1874150) b!4506712))

(declare-fun m!5243127 () Bool)

(assert (=> b!4506706 m!5243127))

(declare-fun m!5243129 () Bool)

(assert (=> b!4506713 m!5243129))

(assert (=> b!4506713 m!5243129))

(declare-fun m!5243131 () Bool)

(assert (=> b!4506713 m!5243131))

(declare-fun m!5243133 () Bool)

(assert (=> b!4506707 m!5243133))

(assert (=> b!4506707 m!5243133))

(declare-fun m!5243135 () Bool)

(assert (=> b!4506707 m!5243135))

(declare-fun m!5243137 () Bool)

(assert (=> bm!313750 m!5243137))

(declare-fun m!5243139 () Bool)

(assert (=> b!4506714 m!5243139))

(assert (=> b!4506714 m!5243129))

(assert (=> b!4506714 m!5243129))

(assert (=> b!4506714 m!5243131))

(declare-fun m!5243141 () Bool)

(assert (=> b!4506714 m!5243141))

(declare-fun m!5243143 () Bool)

(assert (=> d!1385317 m!5243143))

(assert (=> b!4506709 m!5243143))

(declare-fun m!5243145 () Bool)

(assert (=> b!4506709 m!5243145))

(assert (=> b!4506710 m!5243133))

(assert (=> b!4506712 m!5243133))

(assert (=> b!4506712 m!5243133))

(assert (=> b!4506712 m!5243135))

(assert (=> b!4506538 d!1385317))

(declare-fun bs!844114 () Bool)

(declare-fun d!1385325 () Bool)

(assert (= bs!844114 (and d!1385325 start!445184)))

(declare-fun lambda!169765 () Int)

(assert (=> bs!844114 (= lambda!169765 lambda!169727)))

(declare-fun bs!844115 () Bool)

(assert (= bs!844115 (and d!1385325 d!1385253)))

(assert (=> bs!844115 (= lambda!169765 lambda!169730)))

(declare-fun bs!844116 () Bool)

(assert (= bs!844116 (and d!1385325 d!1385281)))

(assert (=> bs!844116 (= lambda!169765 lambda!169749)))

(declare-fun bs!844118 () Bool)

(assert (= bs!844118 (and d!1385325 d!1385313)))

(assert (=> bs!844118 (= lambda!169765 lambda!169757)))

(assert (=> d!1385325 (contains!13257 (extractMap!1190 (toList!4275 lt!1685580)) key!3287)))

(declare-fun lt!1685760 () Unit!92894)

(declare-fun choose!29231 (ListLongMap!2907 K!11975 Hashable!5529) Unit!92894)

(assert (=> d!1385325 (= lt!1685760 (choose!29231 lt!1685580 key!3287 hashF!1107))))

(assert (=> d!1385325 (forall!10201 (toList!4275 lt!1685580) lambda!169765)))

(assert (=> d!1385325 (= (lemmaListContainsThenExtractedMapContains!104 lt!1685580 key!3287 hashF!1107) lt!1685760)))

(declare-fun bs!844119 () Bool)

(assert (= bs!844119 d!1385325))

(assert (=> bs!844119 m!5242827))

(assert (=> bs!844119 m!5242827))

(declare-fun m!5243231 () Bool)

(assert (=> bs!844119 m!5243231))

(declare-fun m!5243233 () Bool)

(assert (=> bs!844119 m!5243233))

(declare-fun m!5243235 () Bool)

(assert (=> bs!844119 m!5243235))

(assert (=> b!4506538 d!1385325))

(declare-fun d!1385353 () Bool)

(declare-fun lt!1685766 () Bool)

(assert (=> d!1385353 (= lt!1685766 (select (content!8283 (t!357657 (toList!4275 lm!1477))) lt!1685588))))

(declare-fun e!2807534 () Bool)

(assert (=> d!1385353 (= lt!1685766 e!2807534)))

(declare-fun res!1874170 () Bool)

(assert (=> d!1385353 (=> (not res!1874170) (not e!2807534))))

(assert (=> d!1385353 (= res!1874170 ((_ is Cons!50571) (t!357657 (toList!4275 lm!1477))))))

(assert (=> d!1385353 (= (contains!13258 (t!357657 (toList!4275 lm!1477)) lt!1685588) lt!1685766)))

(declare-fun b!4506750 () Bool)

(declare-fun e!2807535 () Bool)

(assert (=> b!4506750 (= e!2807534 e!2807535)))

(declare-fun res!1874171 () Bool)

(assert (=> b!4506750 (=> res!1874171 e!2807535)))

(assert (=> b!4506750 (= res!1874171 (= (h!56400 (t!357657 (toList!4275 lm!1477))) lt!1685588))))

(declare-fun b!4506751 () Bool)

(assert (=> b!4506751 (= e!2807535 (contains!13258 (t!357657 (t!357657 (toList!4275 lm!1477))) lt!1685588))))

(assert (= (and d!1385353 res!1874170) b!4506750))

(assert (= (and b!4506750 (not res!1874171)) b!4506751))

(declare-fun m!5243237 () Bool)

(assert (=> d!1385353 m!5243237))

(declare-fun m!5243239 () Bool)

(assert (=> d!1385353 m!5243239))

(declare-fun m!5243241 () Bool)

(assert (=> b!4506751 m!5243241))

(assert (=> b!4506527 d!1385353))

(declare-fun b!4506752 () Bool)

(declare-fun e!2807539 () List!50697)

(assert (=> b!4506752 (= e!2807539 (getKeysList!441 (toList!4276 lt!1685574)))))

(declare-fun b!4506753 () Bool)

(declare-fun e!2807537 () Bool)

(assert (=> b!4506753 (= e!2807537 (not (contains!13261 (keys!17544 lt!1685574) key!3287)))))

(declare-fun b!4506754 () Bool)

(declare-fun e!2807540 () Unit!92894)

(declare-fun Unit!92909 () Unit!92894)

(assert (=> b!4506754 (= e!2807540 Unit!92909)))

(declare-fun b!4506755 () Bool)

(assert (=> b!4506755 false))

(declare-fun lt!1685772 () Unit!92894)

(declare-fun lt!1685771 () Unit!92894)

(assert (=> b!4506755 (= lt!1685772 lt!1685771)))

(assert (=> b!4506755 (containsKey!1709 (toList!4276 lt!1685574) key!3287)))

(assert (=> b!4506755 (= lt!1685771 (lemmaInGetKeysListThenContainsKey!440 (toList!4276 lt!1685574) key!3287))))

(declare-fun Unit!92910 () Unit!92894)

(assert (=> b!4506755 (= e!2807540 Unit!92910)))

(declare-fun b!4506756 () Bool)

(assert (=> b!4506756 (= e!2807539 (keys!17544 lt!1685574))))

(declare-fun b!4506757 () Bool)

(declare-fun e!2807536 () Unit!92894)

(assert (=> b!4506757 (= e!2807536 e!2807540)))

(declare-fun c!768573 () Bool)

(declare-fun call!313757 () Bool)

(assert (=> b!4506757 (= c!768573 call!313757)))

(declare-fun d!1385355 () Bool)

(declare-fun e!2807538 () Bool)

(assert (=> d!1385355 e!2807538))

(declare-fun res!1874174 () Bool)

(assert (=> d!1385355 (=> res!1874174 e!2807538)))

(assert (=> d!1385355 (= res!1874174 e!2807537)))

(declare-fun res!1874173 () Bool)

(assert (=> d!1385355 (=> (not res!1874173) (not e!2807537))))

(declare-fun lt!1685773 () Bool)

(assert (=> d!1385355 (= res!1874173 (not lt!1685773))))

(declare-fun lt!1685767 () Bool)

(assert (=> d!1385355 (= lt!1685773 lt!1685767)))

(declare-fun lt!1685774 () Unit!92894)

(assert (=> d!1385355 (= lt!1685774 e!2807536)))

(declare-fun c!768574 () Bool)

(assert (=> d!1385355 (= c!768574 lt!1685767)))

(assert (=> d!1385355 (= lt!1685767 (containsKey!1709 (toList!4276 lt!1685574) key!3287))))

(assert (=> d!1385355 (= (contains!13257 lt!1685574 key!3287) lt!1685773)))

(declare-fun b!4506758 () Bool)

(declare-fun e!2807541 () Bool)

(assert (=> b!4506758 (= e!2807541 (contains!13261 (keys!17544 lt!1685574) key!3287))))

(declare-fun b!4506759 () Bool)

(assert (=> b!4506759 (= e!2807538 e!2807541)))

(declare-fun res!1874172 () Bool)

(assert (=> b!4506759 (=> (not res!1874172) (not e!2807541))))

(assert (=> b!4506759 (= res!1874172 (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685574) key!3287)))))

(declare-fun bm!313752 () Bool)

(assert (=> bm!313752 (= call!313757 (contains!13261 e!2807539 key!3287))))

(declare-fun c!768575 () Bool)

(assert (=> bm!313752 (= c!768575 c!768574)))

(declare-fun b!4506760 () Bool)

(declare-fun lt!1685770 () Unit!92894)

(assert (=> b!4506760 (= e!2807536 lt!1685770)))

(declare-fun lt!1685769 () Unit!92894)

(assert (=> b!4506760 (= lt!1685769 (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 lt!1685574) key!3287))))

(assert (=> b!4506760 (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685574) key!3287))))

(declare-fun lt!1685768 () Unit!92894)

(assert (=> b!4506760 (= lt!1685768 lt!1685769)))

(assert (=> b!4506760 (= lt!1685770 (lemmaInListThenGetKeysListContains!437 (toList!4276 lt!1685574) key!3287))))

(assert (=> b!4506760 call!313757))

(assert (= (and d!1385355 c!768574) b!4506760))

(assert (= (and d!1385355 (not c!768574)) b!4506757))

(assert (= (and b!4506757 c!768573) b!4506755))

(assert (= (and b!4506757 (not c!768573)) b!4506754))

(assert (= (or b!4506760 b!4506757) bm!313752))

(assert (= (and bm!313752 c!768575) b!4506752))

(assert (= (and bm!313752 (not c!768575)) b!4506756))

(assert (= (and d!1385355 res!1874173) b!4506753))

(assert (= (and d!1385355 (not res!1874174)) b!4506759))

(assert (= (and b!4506759 res!1874172) b!4506758))

(declare-fun m!5243243 () Bool)

(assert (=> b!4506752 m!5243243))

(declare-fun m!5243245 () Bool)

(assert (=> b!4506759 m!5243245))

(assert (=> b!4506759 m!5243245))

(declare-fun m!5243247 () Bool)

(assert (=> b!4506759 m!5243247))

(declare-fun m!5243249 () Bool)

(assert (=> b!4506753 m!5243249))

(assert (=> b!4506753 m!5243249))

(declare-fun m!5243251 () Bool)

(assert (=> b!4506753 m!5243251))

(declare-fun m!5243253 () Bool)

(assert (=> bm!313752 m!5243253))

(declare-fun m!5243255 () Bool)

(assert (=> b!4506760 m!5243255))

(assert (=> b!4506760 m!5243245))

(assert (=> b!4506760 m!5243245))

(assert (=> b!4506760 m!5243247))

(declare-fun m!5243257 () Bool)

(assert (=> b!4506760 m!5243257))

(declare-fun m!5243259 () Bool)

(assert (=> d!1385355 m!5243259))

(assert (=> b!4506755 m!5243259))

(declare-fun m!5243261 () Bool)

(assert (=> b!4506755 m!5243261))

(assert (=> b!4506756 m!5243249))

(assert (=> b!4506758 m!5243249))

(assert (=> b!4506758 m!5243249))

(assert (=> b!4506758 m!5243251))

(assert (=> b!4506526 d!1385355))

(declare-fun bs!844120 () Bool)

(declare-fun d!1385357 () Bool)

(assert (= bs!844120 (and d!1385357 d!1385281)))

(declare-fun lambda!169766 () Int)

(assert (=> bs!844120 (= lambda!169766 lambda!169749)))

(declare-fun bs!844121 () Bool)

(assert (= bs!844121 (and d!1385357 d!1385253)))

(assert (=> bs!844121 (= lambda!169766 lambda!169730)))

(declare-fun bs!844122 () Bool)

(assert (= bs!844122 (and d!1385357 d!1385325)))

(assert (=> bs!844122 (= lambda!169766 lambda!169765)))

(declare-fun bs!844123 () Bool)

(assert (= bs!844123 (and d!1385357 start!445184)))

(assert (=> bs!844123 (= lambda!169766 lambda!169727)))

(declare-fun bs!844124 () Bool)

(assert (= bs!844124 (and d!1385357 d!1385313)))

(assert (=> bs!844124 (= lambda!169766 lambda!169757)))

(declare-fun lt!1685777 () ListMap!3537)

(assert (=> d!1385357 (invariantList!993 (toList!4276 lt!1685777))))

(declare-fun e!2807546 () ListMap!3537)

(assert (=> d!1385357 (= lt!1685777 e!2807546)))

(declare-fun c!768580 () Bool)

(assert (=> d!1385357 (= c!768580 ((_ is Cons!50571) (toList!4275 lm!1477)))))

(assert (=> d!1385357 (forall!10201 (toList!4275 lm!1477) lambda!169766)))

(assert (=> d!1385357 (= (extractMap!1190 (toList!4275 lm!1477)) lt!1685777)))

(declare-fun b!4506769 () Bool)

(assert (=> b!4506769 (= e!2807546 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))

(declare-fun b!4506770 () Bool)

(assert (=> b!4506770 (= e!2807546 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385357 c!768580) b!4506769))

(assert (= (and d!1385357 (not c!768580)) b!4506770))

(declare-fun m!5243269 () Bool)

(assert (=> d!1385357 m!5243269))

(declare-fun m!5243271 () Bool)

(assert (=> d!1385357 m!5243271))

(assert (=> b!4506769 m!5242833))

(assert (=> b!4506769 m!5242833))

(declare-fun m!5243273 () Bool)

(assert (=> b!4506769 m!5243273))

(assert (=> b!4506526 d!1385357))

(declare-fun d!1385361 () Bool)

(declare-fun e!2807549 () Bool)

(assert (=> d!1385361 e!2807549))

(declare-fun res!1874175 () Bool)

(assert (=> d!1385361 (=> res!1874175 e!2807549)))

(declare-fun lt!1685781 () Bool)

(assert (=> d!1385361 (= res!1874175 (not lt!1685781))))

(declare-fun lt!1685779 () Bool)

(assert (=> d!1385361 (= lt!1685781 lt!1685779)))

(declare-fun lt!1685780 () Unit!92894)

(declare-fun e!2807550 () Unit!92894)

(assert (=> d!1385361 (= lt!1685780 e!2807550)))

(declare-fun c!768583 () Bool)

(assert (=> d!1385361 (= c!768583 lt!1685779)))

(assert (=> d!1385361 (= lt!1685779 (containsKey!1708 (toList!4275 lt!1685580) hash!344))))

(assert (=> d!1385361 (= (contains!13259 lt!1685580 hash!344) lt!1685781)))

(declare-fun b!4506775 () Bool)

(declare-fun lt!1685782 () Unit!92894)

(assert (=> b!4506775 (= e!2807550 lt!1685782)))

(assert (=> b!4506775 (= lt!1685782 (lemmaContainsKeyImpliesGetValueByKeyDefined!947 (toList!4275 lt!1685580) hash!344))))

(assert (=> b!4506775 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685580) hash!344))))

(declare-fun b!4506776 () Bool)

(declare-fun Unit!92912 () Unit!92894)

(assert (=> b!4506776 (= e!2807550 Unit!92912)))

(declare-fun b!4506777 () Bool)

(assert (=> b!4506777 (= e!2807549 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685580) hash!344)))))

(assert (= (and d!1385361 c!768583) b!4506775))

(assert (= (and d!1385361 (not c!768583)) b!4506776))

(assert (= (and d!1385361 (not res!1874175)) b!4506777))

(declare-fun m!5243275 () Bool)

(assert (=> d!1385361 m!5243275))

(declare-fun m!5243277 () Bool)

(assert (=> b!4506775 m!5243277))

(declare-fun m!5243279 () Bool)

(assert (=> b!4506775 m!5243279))

(assert (=> b!4506775 m!5243279))

(declare-fun m!5243281 () Bool)

(assert (=> b!4506775 m!5243281))

(assert (=> b!4506777 m!5243279))

(assert (=> b!4506777 m!5243279))

(assert (=> b!4506777 m!5243281))

(assert (=> b!4506537 d!1385361))

(declare-fun d!1385363 () Bool)

(declare-fun tail!7686 (List!50695) List!50695)

(assert (=> d!1385363 (= (tail!7684 lm!1477) (ListLongMap!2908 (tail!7686 (toList!4275 lm!1477))))))

(declare-fun bs!844125 () Bool)

(assert (= bs!844125 d!1385363))

(declare-fun m!5243287 () Bool)

(assert (=> bs!844125 m!5243287))

(assert (=> b!4506537 d!1385363))

(declare-fun d!1385367 () Bool)

(declare-fun res!1874191 () Bool)

(declare-fun e!2807567 () Bool)

(assert (=> d!1385367 (=> res!1874191 e!2807567)))

(declare-fun e!2807566 () Bool)

(assert (=> d!1385367 (= res!1874191 e!2807566)))

(declare-fun res!1874192 () Bool)

(assert (=> d!1385367 (=> (not res!1874192) (not e!2807566))))

(assert (=> d!1385367 (= res!1874192 ((_ is Cons!50571) (t!357657 (toList!4275 lm!1477))))))

(assert (=> d!1385367 (= (containsKeyBiggerList!114 (t!357657 (toList!4275 lm!1477)) key!3287) e!2807567)))

(declare-fun b!4506794 () Bool)

(assert (=> b!4506794 (= e!2807566 (containsKey!1706 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(declare-fun b!4506795 () Bool)

(declare-fun e!2807568 () Bool)

(assert (=> b!4506795 (= e!2807567 e!2807568)))

(declare-fun res!1874190 () Bool)

(assert (=> b!4506795 (=> (not res!1874190) (not e!2807568))))

(assert (=> b!4506795 (= res!1874190 ((_ is Cons!50571) (t!357657 (toList!4275 lm!1477))))))

(declare-fun b!4506796 () Bool)

(assert (=> b!4506796 (= e!2807568 (containsKeyBiggerList!114 (t!357657 (t!357657 (toList!4275 lm!1477))) key!3287))))

(assert (= (and d!1385367 res!1874192) b!4506794))

(assert (= (and d!1385367 (not res!1874191)) b!4506795))

(assert (= (and b!4506795 res!1874190) b!4506796))

(declare-fun m!5243297 () Bool)

(assert (=> b!4506794 m!5243297))

(declare-fun m!5243299 () Bool)

(assert (=> b!4506796 m!5243299))

(assert (=> b!4506536 d!1385367))

(declare-fun d!1385373 () Bool)

(declare-fun res!1874194 () Bool)

(declare-fun e!2807570 () Bool)

(assert (=> d!1385373 (=> res!1874194 e!2807570)))

(declare-fun e!2807569 () Bool)

(assert (=> d!1385373 (= res!1874194 e!2807569)))

(declare-fun res!1874195 () Bool)

(assert (=> d!1385373 (=> (not res!1874195) (not e!2807569))))

(assert (=> d!1385373 (= res!1874195 ((_ is Cons!50571) (toList!4275 lt!1685580)))))

(assert (=> d!1385373 (= (containsKeyBiggerList!114 (toList!4275 lt!1685580) key!3287) e!2807570)))

(declare-fun b!4506797 () Bool)

(assert (=> b!4506797 (= e!2807569 (containsKey!1706 (_2!28780 (h!56400 (toList!4275 lt!1685580))) key!3287))))

(declare-fun b!4506798 () Bool)

(declare-fun e!2807571 () Bool)

(assert (=> b!4506798 (= e!2807570 e!2807571)))

(declare-fun res!1874193 () Bool)

(assert (=> b!4506798 (=> (not res!1874193) (not e!2807571))))

(assert (=> b!4506798 (= res!1874193 ((_ is Cons!50571) (toList!4275 lt!1685580)))))

(declare-fun b!4506799 () Bool)

(assert (=> b!4506799 (= e!2807571 (containsKeyBiggerList!114 (t!357657 (toList!4275 lt!1685580)) key!3287))))

(assert (= (and d!1385373 res!1874195) b!4506797))

(assert (= (and d!1385373 (not res!1874194)) b!4506798))

(assert (= (and b!4506798 res!1874193) b!4506799))

(declare-fun m!5243307 () Bool)

(assert (=> b!4506797 m!5243307))

(declare-fun m!5243311 () Bool)

(assert (=> b!4506799 m!5243311))

(assert (=> b!4506536 d!1385373))

(declare-fun bs!844141 () Bool)

(declare-fun d!1385377 () Bool)

(assert (= bs!844141 (and d!1385377 d!1385281)))

(declare-fun lambda!169770 () Int)

(assert (=> bs!844141 (= lambda!169770 lambda!169749)))

(declare-fun bs!844142 () Bool)

(assert (= bs!844142 (and d!1385377 d!1385253)))

(assert (=> bs!844142 (= lambda!169770 lambda!169730)))

(declare-fun bs!844143 () Bool)

(assert (= bs!844143 (and d!1385377 d!1385357)))

(assert (=> bs!844143 (= lambda!169770 lambda!169766)))

(declare-fun bs!844144 () Bool)

(assert (= bs!844144 (and d!1385377 d!1385325)))

(assert (=> bs!844144 (= lambda!169770 lambda!169765)))

(declare-fun bs!844145 () Bool)

(assert (= bs!844145 (and d!1385377 start!445184)))

(assert (=> bs!844145 (= lambda!169770 lambda!169727)))

(declare-fun bs!844146 () Bool)

(assert (= bs!844146 (and d!1385377 d!1385313)))

(assert (=> bs!844146 (= lambda!169770 lambda!169757)))

(assert (=> d!1385377 (containsKeyBiggerList!114 (toList!4275 lt!1685580) key!3287)))

(declare-fun lt!1685792 () Unit!92894)

(declare-fun choose!29233 (ListLongMap!2907 K!11975 Hashable!5529) Unit!92894)

(assert (=> d!1385377 (= lt!1685792 (choose!29233 lt!1685580 key!3287 hashF!1107))))

(assert (=> d!1385377 (forall!10201 (toList!4275 lt!1685580) lambda!169770)))

(assert (=> d!1385377 (= (lemmaInLongMapThenContainsKeyBiggerList!50 lt!1685580 key!3287 hashF!1107) lt!1685792)))

(declare-fun bs!844147 () Bool)

(assert (= bs!844147 d!1385377))

(assert (=> bs!844147 m!5242787))

(declare-fun m!5243317 () Bool)

(assert (=> bs!844147 m!5243317))

(declare-fun m!5243319 () Bool)

(assert (=> bs!844147 m!5243319))

(assert (=> b!4506536 d!1385377))

(declare-fun d!1385383 () Bool)

(declare-fun e!2807580 () Bool)

(assert (=> d!1385383 e!2807580))

(declare-fun res!1874198 () Bool)

(assert (=> d!1385383 (=> (not res!1874198) (not e!2807580))))

(declare-fun lt!1685795 () ListMap!3537)

(assert (=> d!1385383 (= res!1874198 (not (contains!13257 lt!1685795 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!117 (List!50694 K!11975) List!50694)

(assert (=> d!1385383 (= lt!1685795 (ListMap!3538 (removePresrvNoDuplicatedKeys!117 (toList!4276 lt!1685586) key!3287)))))

(assert (=> d!1385383 (= (-!360 lt!1685586 key!3287) lt!1685795)))

(declare-fun b!4506812 () Bool)

(declare-fun content!8286 (List!50697) (InoxSet K!11975))

(assert (=> b!4506812 (= e!2807580 (= ((_ map and) (content!8286 (keys!17544 lt!1685586)) ((_ map not) (store ((as const (Array K!11975 Bool)) false) key!3287 true))) (content!8286 (keys!17544 lt!1685795))))))

(assert (= (and d!1385383 res!1874198) b!4506812))

(declare-fun m!5243321 () Bool)

(assert (=> d!1385383 m!5243321))

(declare-fun m!5243323 () Bool)

(assert (=> d!1385383 m!5243323))

(declare-fun m!5243325 () Bool)

(assert (=> b!4506812 m!5243325))

(assert (=> b!4506812 m!5243133))

(declare-fun m!5243327 () Bool)

(assert (=> b!4506812 m!5243327))

(declare-fun m!5243329 () Bool)

(assert (=> b!4506812 m!5243329))

(assert (=> b!4506812 m!5243327))

(assert (=> b!4506812 m!5243133))

(declare-fun m!5243331 () Bool)

(assert (=> b!4506812 m!5243331))

(assert (=> b!4506525 d!1385383))

(declare-fun bs!844148 () Bool)

(declare-fun d!1385385 () Bool)

(assert (= bs!844148 (and d!1385385 d!1385281)))

(declare-fun lambda!169773 () Int)

(assert (=> bs!844148 (= lambda!169773 lambda!169749)))

(declare-fun bs!844149 () Bool)

(assert (= bs!844149 (and d!1385385 d!1385253)))

(assert (=> bs!844149 (= lambda!169773 lambda!169730)))

(declare-fun bs!844150 () Bool)

(assert (= bs!844150 (and d!1385385 d!1385357)))

(assert (=> bs!844150 (= lambda!169773 lambda!169766)))

(declare-fun bs!844151 () Bool)

(assert (= bs!844151 (and d!1385385 d!1385325)))

(assert (=> bs!844151 (= lambda!169773 lambda!169765)))

(declare-fun bs!844152 () Bool)

(assert (= bs!844152 (and d!1385385 start!445184)))

(assert (=> bs!844152 (= lambda!169773 lambda!169727)))

(declare-fun bs!844153 () Bool)

(assert (= bs!844153 (and d!1385385 d!1385313)))

(assert (=> bs!844153 (= lambda!169773 lambda!169757)))

(declare-fun bs!844154 () Bool)

(assert (= bs!844154 (and d!1385385 d!1385377)))

(assert (=> bs!844154 (= lambda!169773 lambda!169770)))

(assert (=> d!1385385 (eq!591 (extractMap!1190 (toList!4275 (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178)))) (-!360 (extractMap!1190 (toList!4275 lt!1685580)) key!3287))))

(declare-fun lt!1685798 () Unit!92894)

(declare-fun choose!29236 (ListLongMap!2907 (_ BitVec 64) List!50694 K!11975 Hashable!5529) Unit!92894)

(assert (=> d!1385385 (= lt!1685798 (choose!29236 lt!1685580 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1385385 (forall!10201 (toList!4275 lt!1685580) lambda!169773)))

(assert (=> d!1385385 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!119 lt!1685580 hash!344 newBucket!178 key!3287 hashF!1107) lt!1685798)))

(declare-fun bs!844155 () Bool)

(assert (= bs!844155 d!1385385))

(declare-fun m!5243333 () Bool)

(assert (=> bs!844155 m!5243333))

(assert (=> bs!844155 m!5242827))

(declare-fun m!5243335 () Bool)

(assert (=> bs!844155 m!5243335))

(declare-fun m!5243337 () Bool)

(assert (=> bs!844155 m!5243337))

(declare-fun m!5243339 () Bool)

(assert (=> bs!844155 m!5243339))

(declare-fun m!5243341 () Bool)

(assert (=> bs!844155 m!5243341))

(assert (=> bs!844155 m!5242827))

(assert (=> bs!844155 m!5243337))

(declare-fun m!5243343 () Bool)

(assert (=> bs!844155 m!5243343))

(assert (=> bs!844155 m!5243335))

(assert (=> b!4506525 d!1385385))

(declare-fun d!1385387 () Bool)

(declare-fun e!2807583 () Bool)

(assert (=> d!1385387 e!2807583))

(declare-fun res!1874204 () Bool)

(assert (=> d!1385387 (=> (not res!1874204) (not e!2807583))))

(declare-fun lt!1685810 () ListLongMap!2907)

(assert (=> d!1385387 (= res!1874204 (contains!13259 lt!1685810 (_1!28780 lt!1685576)))))

(declare-fun lt!1685808 () List!50695)

(assert (=> d!1385387 (= lt!1685810 (ListLongMap!2908 lt!1685808))))

(declare-fun lt!1685809 () Unit!92894)

(declare-fun lt!1685807 () Unit!92894)

(assert (=> d!1385387 (= lt!1685809 lt!1685807)))

(assert (=> d!1385387 (= (getValueByKey!1044 lt!1685808 (_1!28780 lt!1685576)) (Some!11063 (_2!28780 lt!1685576)))))

(declare-fun lemmaContainsTupThenGetReturnValue!644 (List!50695 (_ BitVec 64) List!50694) Unit!92894)

(assert (=> d!1385387 (= lt!1685807 (lemmaContainsTupThenGetReturnValue!644 lt!1685808 (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))

(declare-fun insertStrictlySorted!384 (List!50695 (_ BitVec 64) List!50694) List!50695)

(assert (=> d!1385387 (= lt!1685808 (insertStrictlySorted!384 (toList!4275 lt!1685580) (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))

(assert (=> d!1385387 (= (+!1488 lt!1685580 lt!1685576) lt!1685810)))

(declare-fun b!4506817 () Bool)

(declare-fun res!1874203 () Bool)

(assert (=> b!4506817 (=> (not res!1874203) (not e!2807583))))

(assert (=> b!4506817 (= res!1874203 (= (getValueByKey!1044 (toList!4275 lt!1685810) (_1!28780 lt!1685576)) (Some!11063 (_2!28780 lt!1685576))))))

(declare-fun b!4506818 () Bool)

(assert (=> b!4506818 (= e!2807583 (contains!13258 (toList!4275 lt!1685810) lt!1685576))))

(assert (= (and d!1385387 res!1874204) b!4506817))

(assert (= (and b!4506817 res!1874203) b!4506818))

(declare-fun m!5243345 () Bool)

(assert (=> d!1385387 m!5243345))

(declare-fun m!5243347 () Bool)

(assert (=> d!1385387 m!5243347))

(declare-fun m!5243349 () Bool)

(assert (=> d!1385387 m!5243349))

(declare-fun m!5243351 () Bool)

(assert (=> d!1385387 m!5243351))

(declare-fun m!5243353 () Bool)

(assert (=> b!4506817 m!5243353))

(declare-fun m!5243355 () Bool)

(assert (=> b!4506818 m!5243355))

(assert (=> b!4506525 d!1385387))

(declare-fun bs!844156 () Bool)

(declare-fun d!1385389 () Bool)

(assert (= bs!844156 (and d!1385389 d!1385385)))

(declare-fun lambda!169774 () Int)

(assert (=> bs!844156 (= lambda!169774 lambda!169773)))

(declare-fun bs!844157 () Bool)

(assert (= bs!844157 (and d!1385389 d!1385281)))

(assert (=> bs!844157 (= lambda!169774 lambda!169749)))

(declare-fun bs!844158 () Bool)

(assert (= bs!844158 (and d!1385389 d!1385253)))

(assert (=> bs!844158 (= lambda!169774 lambda!169730)))

(declare-fun bs!844159 () Bool)

(assert (= bs!844159 (and d!1385389 d!1385357)))

(assert (=> bs!844159 (= lambda!169774 lambda!169766)))

(declare-fun bs!844160 () Bool)

(assert (= bs!844160 (and d!1385389 d!1385325)))

(assert (=> bs!844160 (= lambda!169774 lambda!169765)))

(declare-fun bs!844161 () Bool)

(assert (= bs!844161 (and d!1385389 start!445184)))

(assert (=> bs!844161 (= lambda!169774 lambda!169727)))

(declare-fun bs!844162 () Bool)

(assert (= bs!844162 (and d!1385389 d!1385313)))

(assert (=> bs!844162 (= lambda!169774 lambda!169757)))

(declare-fun bs!844163 () Bool)

(assert (= bs!844163 (and d!1385389 d!1385377)))

(assert (=> bs!844163 (= lambda!169774 lambda!169770)))

(declare-fun lt!1685811 () ListMap!3537)

(assert (=> d!1385389 (invariantList!993 (toList!4276 lt!1685811))))

(declare-fun e!2807584 () ListMap!3537)

(assert (=> d!1385389 (= lt!1685811 e!2807584)))

(declare-fun c!768585 () Bool)

(assert (=> d!1385389 (= c!768585 ((_ is Cons!50571) (toList!4275 lt!1685585)))))

(assert (=> d!1385389 (forall!10201 (toList!4275 lt!1685585) lambda!169774)))

(assert (=> d!1385389 (= (extractMap!1190 (toList!4275 lt!1685585)) lt!1685811)))

(declare-fun b!4506819 () Bool)

(assert (=> b!4506819 (= e!2807584 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 lt!1685585))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))))))

(declare-fun b!4506820 () Bool)

(assert (=> b!4506820 (= e!2807584 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385389 c!768585) b!4506819))

(assert (= (and d!1385389 (not c!768585)) b!4506820))

(declare-fun m!5243357 () Bool)

(assert (=> d!1385389 m!5243357))

(declare-fun m!5243359 () Bool)

(assert (=> d!1385389 m!5243359))

(declare-fun m!5243361 () Bool)

(assert (=> b!4506819 m!5243361))

(assert (=> b!4506819 m!5243361))

(declare-fun m!5243363 () Bool)

(assert (=> b!4506819 m!5243363))

(assert (=> b!4506525 d!1385389))

(declare-fun d!1385391 () Bool)

(declare-fun content!8287 (List!50694) (InoxSet tuple2!50970))

(assert (=> d!1385391 (= (eq!591 lt!1685587 lt!1685574) (= (content!8287 (toList!4276 lt!1685587)) (content!8287 (toList!4276 lt!1685574))))))

(declare-fun bs!844164 () Bool)

(assert (= bs!844164 d!1385391))

(declare-fun m!5243365 () Bool)

(assert (=> bs!844164 m!5243365))

(declare-fun m!5243367 () Bool)

(assert (=> bs!844164 m!5243367))

(assert (=> b!4506525 d!1385391))

(declare-fun d!1385393 () Bool)

(assert (=> d!1385393 (= (eq!591 (extractMap!1190 (toList!4275 lt!1685585)) (-!360 lt!1685586 key!3287)) (= (content!8287 (toList!4276 (extractMap!1190 (toList!4275 lt!1685585)))) (content!8287 (toList!4276 (-!360 lt!1685586 key!3287)))))))

(declare-fun bs!844165 () Bool)

(assert (= bs!844165 d!1385393))

(declare-fun m!5243369 () Bool)

(assert (=> bs!844165 m!5243369))

(declare-fun m!5243371 () Bool)

(assert (=> bs!844165 m!5243371))

(assert (=> b!4506525 d!1385393))

(declare-fun bs!844166 () Bool)

(declare-fun d!1385395 () Bool)

(assert (= bs!844166 (and d!1385395 d!1385385)))

(declare-fun lambda!169775 () Int)

(assert (=> bs!844166 (= lambda!169775 lambda!169773)))

(declare-fun bs!844167 () Bool)

(assert (= bs!844167 (and d!1385395 d!1385253)))

(assert (=> bs!844167 (= lambda!169775 lambda!169730)))

(declare-fun bs!844168 () Bool)

(assert (= bs!844168 (and d!1385395 d!1385357)))

(assert (=> bs!844168 (= lambda!169775 lambda!169766)))

(declare-fun bs!844169 () Bool)

(assert (= bs!844169 (and d!1385395 d!1385325)))

(assert (=> bs!844169 (= lambda!169775 lambda!169765)))

(declare-fun bs!844170 () Bool)

(assert (= bs!844170 (and d!1385395 start!445184)))

(assert (=> bs!844170 (= lambda!169775 lambda!169727)))

(declare-fun bs!844171 () Bool)

(assert (= bs!844171 (and d!1385395 d!1385313)))

(assert (=> bs!844171 (= lambda!169775 lambda!169757)))

(declare-fun bs!844172 () Bool)

(assert (= bs!844172 (and d!1385395 d!1385377)))

(assert (=> bs!844172 (= lambda!169775 lambda!169770)))

(declare-fun bs!844173 () Bool)

(assert (= bs!844173 (and d!1385395 d!1385281)))

(assert (=> bs!844173 (= lambda!169775 lambda!169749)))

(declare-fun bs!844174 () Bool)

(assert (= bs!844174 (and d!1385395 d!1385389)))

(assert (=> bs!844174 (= lambda!169775 lambda!169774)))

(declare-fun lt!1685812 () ListMap!3537)

(assert (=> d!1385395 (invariantList!993 (toList!4276 lt!1685812))))

(declare-fun e!2807585 () ListMap!3537)

(assert (=> d!1385395 (= lt!1685812 e!2807585)))

(declare-fun c!768586 () Bool)

(assert (=> d!1385395 (= c!768586 ((_ is Cons!50571) (toList!4275 (+!1488 lt!1685580 lt!1685576))))))

(assert (=> d!1385395 (forall!10201 (toList!4275 (+!1488 lt!1685580 lt!1685576)) lambda!169775)))

(assert (=> d!1385395 (= (extractMap!1190 (toList!4275 (+!1488 lt!1685580 lt!1685576))) lt!1685812)))

(declare-fun b!4506821 () Bool)

(assert (=> b!4506821 (= e!2807585 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))))))

(declare-fun b!4506822 () Bool)

(assert (=> b!4506822 (= e!2807585 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385395 c!768586) b!4506821))

(assert (= (and d!1385395 (not c!768586)) b!4506822))

(declare-fun m!5243373 () Bool)

(assert (=> d!1385395 m!5243373))

(declare-fun m!5243375 () Bool)

(assert (=> d!1385395 m!5243375))

(declare-fun m!5243377 () Bool)

(assert (=> b!4506821 m!5243377))

(assert (=> b!4506821 m!5243377))

(declare-fun m!5243379 () Bool)

(assert (=> b!4506821 m!5243379))

(assert (=> b!4506525 d!1385395))

(declare-fun d!1385397 () Bool)

(declare-fun head!9364 (List!50695) tuple2!50972)

(assert (=> d!1385397 (= (head!9362 lm!1477) (head!9364 (toList!4275 lm!1477)))))

(declare-fun bs!844175 () Bool)

(assert (= bs!844175 d!1385397))

(declare-fun m!5243381 () Bool)

(assert (=> bs!844175 m!5243381))

(assert (=> b!4506525 d!1385397))

(declare-fun d!1385399 () Bool)

(declare-fun e!2807586 () Bool)

(assert (=> d!1385399 e!2807586))

(declare-fun res!1874206 () Bool)

(assert (=> d!1385399 (=> (not res!1874206) (not e!2807586))))

(declare-fun lt!1685816 () ListLongMap!2907)

(assert (=> d!1385399 (= res!1874206 (contains!13259 lt!1685816 (_1!28780 lt!1685589)))))

(declare-fun lt!1685814 () List!50695)

(assert (=> d!1385399 (= lt!1685816 (ListLongMap!2908 lt!1685814))))

(declare-fun lt!1685815 () Unit!92894)

(declare-fun lt!1685813 () Unit!92894)

(assert (=> d!1385399 (= lt!1685815 lt!1685813)))

(assert (=> d!1385399 (= (getValueByKey!1044 lt!1685814 (_1!28780 lt!1685589)) (Some!11063 (_2!28780 lt!1685589)))))

(assert (=> d!1385399 (= lt!1685813 (lemmaContainsTupThenGetReturnValue!644 lt!1685814 (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))

(assert (=> d!1385399 (= lt!1685814 (insertStrictlySorted!384 (toList!4275 lt!1685580) (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))

(assert (=> d!1385399 (= (+!1488 lt!1685580 lt!1685589) lt!1685816)))

(declare-fun b!4506823 () Bool)

(declare-fun res!1874205 () Bool)

(assert (=> b!4506823 (=> (not res!1874205) (not e!2807586))))

(assert (=> b!4506823 (= res!1874205 (= (getValueByKey!1044 (toList!4275 lt!1685816) (_1!28780 lt!1685589)) (Some!11063 (_2!28780 lt!1685589))))))

(declare-fun b!4506824 () Bool)

(assert (=> b!4506824 (= e!2807586 (contains!13258 (toList!4275 lt!1685816) lt!1685589))))

(assert (= (and d!1385399 res!1874206) b!4506823))

(assert (= (and b!4506823 res!1874205) b!4506824))

(declare-fun m!5243383 () Bool)

(assert (=> d!1385399 m!5243383))

(declare-fun m!5243385 () Bool)

(assert (=> d!1385399 m!5243385))

(declare-fun m!5243387 () Bool)

(assert (=> d!1385399 m!5243387))

(declare-fun m!5243389 () Bool)

(assert (=> d!1385399 m!5243389))

(declare-fun m!5243391 () Bool)

(assert (=> b!4506823 m!5243391))

(declare-fun m!5243393 () Bool)

(assert (=> b!4506824 m!5243393))

(assert (=> b!4506525 d!1385399))

(declare-fun bs!844176 () Bool)

(declare-fun d!1385401 () Bool)

(assert (= bs!844176 (and d!1385401 d!1385253)))

(declare-fun lambda!169778 () Int)

(assert (=> bs!844176 (= lambda!169778 lambda!169730)))

(declare-fun bs!844177 () Bool)

(assert (= bs!844177 (and d!1385401 d!1385357)))

(assert (=> bs!844177 (= lambda!169778 lambda!169766)))

(declare-fun bs!844178 () Bool)

(assert (= bs!844178 (and d!1385401 d!1385325)))

(assert (=> bs!844178 (= lambda!169778 lambda!169765)))

(declare-fun bs!844179 () Bool)

(assert (= bs!844179 (and d!1385401 start!445184)))

(assert (=> bs!844179 (= lambda!169778 lambda!169727)))

(declare-fun bs!844180 () Bool)

(assert (= bs!844180 (and d!1385401 d!1385313)))

(assert (=> bs!844180 (= lambda!169778 lambda!169757)))

(declare-fun bs!844181 () Bool)

(assert (= bs!844181 (and d!1385401 d!1385377)))

(assert (=> bs!844181 (= lambda!169778 lambda!169770)))

(declare-fun bs!844182 () Bool)

(assert (= bs!844182 (and d!1385401 d!1385385)))

(assert (=> bs!844182 (= lambda!169778 lambda!169773)))

(declare-fun bs!844183 () Bool)

(assert (= bs!844183 (and d!1385401 d!1385395)))

(assert (=> bs!844183 (= lambda!169778 lambda!169775)))

(declare-fun bs!844184 () Bool)

(assert (= bs!844184 (and d!1385401 d!1385281)))

(assert (=> bs!844184 (= lambda!169778 lambda!169749)))

(declare-fun bs!844185 () Bool)

(assert (= bs!844185 (and d!1385401 d!1385389)))

(assert (=> bs!844185 (= lambda!169778 lambda!169774)))

(assert (=> d!1385401 (not (contains!13257 (extractMap!1190 (toList!4275 lm!1477)) key!3287))))

(declare-fun lt!1685819 () Unit!92894)

(declare-fun choose!29237 (ListLongMap!2907 K!11975 Hashable!5529) Unit!92894)

(assert (=> d!1385401 (= lt!1685819 (choose!29237 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1385401 (forall!10201 (toList!4275 lm!1477) lambda!169778)))

(assert (=> d!1385401 (= (lemmaNotInItsHashBucketThenNotInMap!122 lm!1477 key!3287 hashF!1107) lt!1685819)))

(declare-fun bs!844186 () Bool)

(assert (= bs!844186 d!1385401))

(assert (=> bs!844186 m!5242845))

(assert (=> bs!844186 m!5242845))

(declare-fun m!5243395 () Bool)

(assert (=> bs!844186 m!5243395))

(declare-fun m!5243397 () Bool)

(assert (=> bs!844186 m!5243397))

(declare-fun m!5243399 () Bool)

(assert (=> bs!844186 m!5243399))

(assert (=> b!4506524 d!1385401))

(declare-fun bs!844187 () Bool)

(declare-fun d!1385403 () Bool)

(assert (= bs!844187 (and d!1385403 d!1385357)))

(declare-fun lambda!169781 () Int)

(assert (=> bs!844187 (not (= lambda!169781 lambda!169766))))

(declare-fun bs!844188 () Bool)

(assert (= bs!844188 (and d!1385403 d!1385325)))

(assert (=> bs!844188 (not (= lambda!169781 lambda!169765))))

(declare-fun bs!844189 () Bool)

(assert (= bs!844189 (and d!1385403 start!445184)))

(assert (=> bs!844189 (not (= lambda!169781 lambda!169727))))

(declare-fun bs!844190 () Bool)

(assert (= bs!844190 (and d!1385403 d!1385313)))

(assert (=> bs!844190 (not (= lambda!169781 lambda!169757))))

(declare-fun bs!844191 () Bool)

(assert (= bs!844191 (and d!1385403 d!1385377)))

(assert (=> bs!844191 (not (= lambda!169781 lambda!169770))))

(declare-fun bs!844192 () Bool)

(assert (= bs!844192 (and d!1385403 d!1385385)))

(assert (=> bs!844192 (not (= lambda!169781 lambda!169773))))

(declare-fun bs!844193 () Bool)

(assert (= bs!844193 (and d!1385403 d!1385395)))

(assert (=> bs!844193 (not (= lambda!169781 lambda!169775))))

(declare-fun bs!844194 () Bool)

(assert (= bs!844194 (and d!1385403 d!1385281)))

(assert (=> bs!844194 (not (= lambda!169781 lambda!169749))))

(declare-fun bs!844195 () Bool)

(assert (= bs!844195 (and d!1385403 d!1385389)))

(assert (=> bs!844195 (not (= lambda!169781 lambda!169774))))

(declare-fun bs!844196 () Bool)

(assert (= bs!844196 (and d!1385403 d!1385253)))

(assert (=> bs!844196 (not (= lambda!169781 lambda!169730))))

(declare-fun bs!844197 () Bool)

(assert (= bs!844197 (and d!1385403 d!1385401)))

(assert (=> bs!844197 (not (= lambda!169781 lambda!169778))))

(assert (=> d!1385403 true))

(assert (=> d!1385403 (= (allKeysSameHashInMap!1241 lm!1477 hashF!1107) (forall!10201 (toList!4275 lm!1477) lambda!169781))))

(declare-fun bs!844198 () Bool)

(assert (= bs!844198 d!1385403))

(declare-fun m!5243401 () Bool)

(assert (=> bs!844198 m!5243401))

(assert (=> b!4506535 d!1385403))

(declare-fun d!1385405 () Bool)

(declare-fun res!1874211 () Bool)

(declare-fun e!2807591 () Bool)

(assert (=> d!1385405 (=> res!1874211 e!2807591)))

(assert (=> d!1385405 (= res!1874211 (not ((_ is Cons!50570) newBucket!178)))))

(assert (=> d!1385405 (= (noDuplicateKeys!1134 newBucket!178) e!2807591)))

(declare-fun b!4506831 () Bool)

(declare-fun e!2807592 () Bool)

(assert (=> b!4506831 (= e!2807591 e!2807592)))

(declare-fun res!1874212 () Bool)

(assert (=> b!4506831 (=> (not res!1874212) (not e!2807592))))

(assert (=> b!4506831 (= res!1874212 (not (containsKey!1706 (t!357656 newBucket!178) (_1!28779 (h!56399 newBucket!178)))))))

(declare-fun b!4506832 () Bool)

(assert (=> b!4506832 (= e!2807592 (noDuplicateKeys!1134 (t!357656 newBucket!178)))))

(assert (= (and d!1385405 (not res!1874211)) b!4506831))

(assert (= (and b!4506831 res!1874212) b!4506832))

(declare-fun m!5243403 () Bool)

(assert (=> b!4506831 m!5243403))

(declare-fun m!5243405 () Bool)

(assert (=> b!4506832 m!5243405))

(assert (=> b!4506534 d!1385405))

(declare-fun d!1385407 () Bool)

(declare-fun res!1874217 () Bool)

(declare-fun e!2807597 () Bool)

(assert (=> d!1385407 (=> res!1874217 e!2807597)))

(assert (=> d!1385407 (= res!1874217 ((_ is Nil!50571) (toList!4275 lm!1477)))))

(assert (=> d!1385407 (= (forall!10201 (toList!4275 lm!1477) lambda!169727) e!2807597)))

(declare-fun b!4506837 () Bool)

(declare-fun e!2807598 () Bool)

(assert (=> b!4506837 (= e!2807597 e!2807598)))

(declare-fun res!1874218 () Bool)

(assert (=> b!4506837 (=> (not res!1874218) (not e!2807598))))

(assert (=> b!4506837 (= res!1874218 (dynLambda!21126 lambda!169727 (h!56400 (toList!4275 lm!1477))))))

(declare-fun b!4506838 () Bool)

(assert (=> b!4506838 (= e!2807598 (forall!10201 (t!357657 (toList!4275 lm!1477)) lambda!169727))))

(assert (= (and d!1385407 (not res!1874217)) b!4506837))

(assert (= (and b!4506837 res!1874218) b!4506838))

(declare-fun b_lambda!153379 () Bool)

(assert (=> (not b_lambda!153379) (not b!4506837)))

(declare-fun m!5243407 () Bool)

(assert (=> b!4506837 m!5243407))

(declare-fun m!5243409 () Bool)

(assert (=> b!4506838 m!5243409))

(assert (=> start!445184 d!1385407))

(declare-fun d!1385409 () Bool)

(assert (=> d!1385409 (= (inv!66159 lm!1477) (isStrictlySorted!406 (toList!4275 lm!1477)))))

(declare-fun bs!844199 () Bool)

(assert (= bs!844199 d!1385409))

(assert (=> bs!844199 m!5242877))

(assert (=> start!445184 d!1385409))

(declare-fun d!1385411 () Bool)

(assert (=> d!1385411 true))

(assert (=> d!1385411 true))

(declare-fun lambda!169784 () Int)

(declare-fun forall!10203 (List!50694 Int) Bool)

(assert (=> d!1385411 (= (allKeysSameHash!988 newBucket!178 hash!344 hashF!1107) (forall!10203 newBucket!178 lambda!169784))))

(declare-fun bs!844200 () Bool)

(assert (= bs!844200 d!1385411))

(declare-fun m!5243411 () Bool)

(assert (=> bs!844200 m!5243411))

(assert (=> b!4506523 d!1385411))

(declare-fun d!1385413 () Bool)

(declare-fun hash!2725 (Hashable!5529 K!11975) (_ BitVec 64))

(assert (=> d!1385413 (= (hash!2721 hashF!1107 key!3287) (hash!2725 hashF!1107 key!3287))))

(declare-fun bs!844201 () Bool)

(assert (= bs!844201 d!1385413))

(declare-fun m!5243413 () Bool)

(assert (=> bs!844201 m!5243413))

(assert (=> b!4506522 d!1385413))

(declare-fun d!1385415 () Bool)

(assert (=> d!1385415 (= (apply!11871 lt!1685580 hash!344) (get!16538 (getValueByKey!1044 (toList!4275 lt!1685580) hash!344)))))

(declare-fun bs!844202 () Bool)

(assert (= bs!844202 d!1385415))

(assert (=> bs!844202 m!5243279))

(assert (=> bs!844202 m!5243279))

(declare-fun m!5243415 () Bool)

(assert (=> bs!844202 m!5243415))

(assert (=> b!4506532 d!1385415))

(declare-fun d!1385417 () Bool)

(assert (=> d!1385417 (= (eq!591 lt!1685574 lt!1685587) (= (content!8287 (toList!4276 lt!1685574)) (content!8287 (toList!4276 lt!1685587))))))

(declare-fun bs!844203 () Bool)

(assert (= bs!844203 d!1385417))

(assert (=> bs!844203 m!5243367))

(assert (=> bs!844203 m!5243365))

(assert (=> b!4506521 d!1385417))

(declare-fun d!1385419 () Bool)

(declare-fun e!2807599 () Bool)

(assert (=> d!1385419 e!2807599))

(declare-fun res!1874220 () Bool)

(assert (=> d!1385419 (=> (not res!1874220) (not e!2807599))))

(declare-fun lt!1685823 () ListLongMap!2907)

(assert (=> d!1385419 (= res!1874220 (contains!13259 lt!1685823 (_1!28780 lt!1685589)))))

(declare-fun lt!1685821 () List!50695)

(assert (=> d!1385419 (= lt!1685823 (ListLongMap!2908 lt!1685821))))

(declare-fun lt!1685822 () Unit!92894)

(declare-fun lt!1685820 () Unit!92894)

(assert (=> d!1385419 (= lt!1685822 lt!1685820)))

(assert (=> d!1385419 (= (getValueByKey!1044 lt!1685821 (_1!28780 lt!1685589)) (Some!11063 (_2!28780 lt!1685589)))))

(assert (=> d!1385419 (= lt!1685820 (lemmaContainsTupThenGetReturnValue!644 lt!1685821 (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))

(assert (=> d!1385419 (= lt!1685821 (insertStrictlySorted!384 (toList!4275 lm!1477) (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))

(assert (=> d!1385419 (= (+!1488 lm!1477 lt!1685589) lt!1685823)))

(declare-fun b!4506843 () Bool)

(declare-fun res!1874219 () Bool)

(assert (=> b!4506843 (=> (not res!1874219) (not e!2807599))))

(assert (=> b!4506843 (= res!1874219 (= (getValueByKey!1044 (toList!4275 lt!1685823) (_1!28780 lt!1685589)) (Some!11063 (_2!28780 lt!1685589))))))

(declare-fun b!4506844 () Bool)

(assert (=> b!4506844 (= e!2807599 (contains!13258 (toList!4275 lt!1685823) lt!1685589))))

(assert (= (and d!1385419 res!1874220) b!4506843))

(assert (= (and b!4506843 res!1874219) b!4506844))

(declare-fun m!5243417 () Bool)

(assert (=> d!1385419 m!5243417))

(declare-fun m!5243419 () Bool)

(assert (=> d!1385419 m!5243419))

(declare-fun m!5243421 () Bool)

(assert (=> d!1385419 m!5243421))

(declare-fun m!5243423 () Bool)

(assert (=> d!1385419 m!5243423))

(declare-fun m!5243425 () Bool)

(assert (=> b!4506843 m!5243425))

(declare-fun m!5243427 () Bool)

(assert (=> b!4506844 m!5243427))

(assert (=> b!4506520 d!1385419))

(declare-fun d!1385421 () Bool)

(declare-fun e!2807600 () Bool)

(assert (=> d!1385421 e!2807600))

(declare-fun res!1874222 () Bool)

(assert (=> d!1385421 (=> (not res!1874222) (not e!2807600))))

(declare-fun lt!1685827 () ListLongMap!2907)

(assert (=> d!1385421 (= res!1874222 (contains!13259 lt!1685827 (_1!28780 lt!1685576)))))

(declare-fun lt!1685825 () List!50695)

(assert (=> d!1385421 (= lt!1685827 (ListLongMap!2908 lt!1685825))))

(declare-fun lt!1685826 () Unit!92894)

(declare-fun lt!1685824 () Unit!92894)

(assert (=> d!1385421 (= lt!1685826 lt!1685824)))

(assert (=> d!1385421 (= (getValueByKey!1044 lt!1685825 (_1!28780 lt!1685576)) (Some!11063 (_2!28780 lt!1685576)))))

(assert (=> d!1385421 (= lt!1685824 (lemmaContainsTupThenGetReturnValue!644 lt!1685825 (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))

(assert (=> d!1385421 (= lt!1685825 (insertStrictlySorted!384 (toList!4275 lt!1685585) (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))

(assert (=> d!1385421 (= (+!1488 lt!1685585 lt!1685576) lt!1685827)))

(declare-fun b!4506845 () Bool)

(declare-fun res!1874221 () Bool)

(assert (=> b!4506845 (=> (not res!1874221) (not e!2807600))))

(assert (=> b!4506845 (= res!1874221 (= (getValueByKey!1044 (toList!4275 lt!1685827) (_1!28780 lt!1685576)) (Some!11063 (_2!28780 lt!1685576))))))

(declare-fun b!4506846 () Bool)

(assert (=> b!4506846 (= e!2807600 (contains!13258 (toList!4275 lt!1685827) lt!1685576))))

(assert (= (and d!1385421 res!1874222) b!4506845))

(assert (= (and b!4506845 res!1874221) b!4506846))

(declare-fun m!5243429 () Bool)

(assert (=> d!1385421 m!5243429))

(declare-fun m!5243431 () Bool)

(assert (=> d!1385421 m!5243431))

(declare-fun m!5243433 () Bool)

(assert (=> d!1385421 m!5243433))

(declare-fun m!5243435 () Bool)

(assert (=> d!1385421 m!5243435))

(declare-fun m!5243437 () Bool)

(assert (=> b!4506845 m!5243437))

(declare-fun m!5243439 () Bool)

(assert (=> b!4506846 m!5243439))

(assert (=> b!4506520 d!1385421))

(declare-fun d!1385423 () Bool)

(declare-fun res!1874227 () Bool)

(declare-fun e!2807605 () Bool)

(assert (=> d!1385423 (=> res!1874227 e!2807605)))

(assert (=> d!1385423 (= res!1874227 (and ((_ is Cons!50570) lt!1685570) (= (_1!28779 (h!56399 lt!1685570)) key!3287)))))

(assert (=> d!1385423 (= (containsKey!1706 lt!1685570 key!3287) e!2807605)))

(declare-fun b!4506851 () Bool)

(declare-fun e!2807606 () Bool)

(assert (=> b!4506851 (= e!2807605 e!2807606)))

(declare-fun res!1874228 () Bool)

(assert (=> b!4506851 (=> (not res!1874228) (not e!2807606))))

(assert (=> b!4506851 (= res!1874228 ((_ is Cons!50570) lt!1685570))))

(declare-fun b!4506852 () Bool)

(assert (=> b!4506852 (= e!2807606 (containsKey!1706 (t!357656 lt!1685570) key!3287))))

(assert (= (and d!1385423 (not res!1874227)) b!4506851))

(assert (= (and b!4506851 res!1874228) b!4506852))

(declare-fun m!5243441 () Bool)

(assert (=> b!4506852 m!5243441))

(assert (=> b!4506530 d!1385423))

(declare-fun d!1385425 () Bool)

(declare-fun res!1874229 () Bool)

(declare-fun e!2807607 () Bool)

(assert (=> d!1385425 (=> res!1874229 e!2807607)))

(assert (=> d!1385425 (= res!1874229 (not ((_ is Cons!50570) (_2!28780 lt!1685576))))))

(assert (=> d!1385425 (= (noDuplicateKeys!1134 (_2!28780 lt!1685576)) e!2807607)))

(declare-fun b!4506853 () Bool)

(declare-fun e!2807608 () Bool)

(assert (=> b!4506853 (= e!2807607 e!2807608)))

(declare-fun res!1874230 () Bool)

(assert (=> b!4506853 (=> (not res!1874230) (not e!2807608))))

(assert (=> b!4506853 (= res!1874230 (not (containsKey!1706 (t!357656 (_2!28780 lt!1685576)) (_1!28779 (h!56399 (_2!28780 lt!1685576))))))))

(declare-fun b!4506854 () Bool)

(assert (=> b!4506854 (= e!2807608 (noDuplicateKeys!1134 (t!357656 (_2!28780 lt!1685576))))))

(assert (= (and d!1385425 (not res!1874229)) b!4506853))

(assert (= (and b!4506853 res!1874230) b!4506854))

(declare-fun m!5243443 () Bool)

(assert (=> b!4506853 m!5243443))

(declare-fun m!5243445 () Bool)

(assert (=> b!4506854 m!5243445))

(assert (=> b!4506541 d!1385425))

(declare-fun bs!844204 () Bool)

(declare-fun d!1385427 () Bool)

(assert (= bs!844204 (and d!1385427 d!1385357)))

(declare-fun lambda!169785 () Int)

(assert (=> bs!844204 (= lambda!169785 lambda!169766)))

(declare-fun bs!844205 () Bool)

(assert (= bs!844205 (and d!1385427 d!1385325)))

(assert (=> bs!844205 (= lambda!169785 lambda!169765)))

(declare-fun bs!844206 () Bool)

(assert (= bs!844206 (and d!1385427 start!445184)))

(assert (=> bs!844206 (= lambda!169785 lambda!169727)))

(declare-fun bs!844207 () Bool)

(assert (= bs!844207 (and d!1385427 d!1385377)))

(assert (=> bs!844207 (= lambda!169785 lambda!169770)))

(declare-fun bs!844208 () Bool)

(assert (= bs!844208 (and d!1385427 d!1385385)))

(assert (=> bs!844208 (= lambda!169785 lambda!169773)))

(declare-fun bs!844209 () Bool)

(assert (= bs!844209 (and d!1385427 d!1385395)))

(assert (=> bs!844209 (= lambda!169785 lambda!169775)))

(declare-fun bs!844210 () Bool)

(assert (= bs!844210 (and d!1385427 d!1385281)))

(assert (=> bs!844210 (= lambda!169785 lambda!169749)))

(declare-fun bs!844211 () Bool)

(assert (= bs!844211 (and d!1385427 d!1385389)))

(assert (=> bs!844211 (= lambda!169785 lambda!169774)))

(declare-fun bs!844212 () Bool)

(assert (= bs!844212 (and d!1385427 d!1385253)))

(assert (=> bs!844212 (= lambda!169785 lambda!169730)))

(declare-fun bs!844213 () Bool)

(assert (= bs!844213 (and d!1385427 d!1385401)))

(assert (=> bs!844213 (= lambda!169785 lambda!169778)))

(declare-fun bs!844214 () Bool)

(assert (= bs!844214 (and d!1385427 d!1385313)))

(assert (=> bs!844214 (= lambda!169785 lambda!169757)))

(declare-fun bs!844215 () Bool)

(assert (= bs!844215 (and d!1385427 d!1385403)))

(assert (=> bs!844215 (not (= lambda!169785 lambda!169781))))

(declare-fun lt!1685828 () ListMap!3537)

(assert (=> d!1385427 (invariantList!993 (toList!4276 lt!1685828))))

(declare-fun e!2807609 () ListMap!3537)

(assert (=> d!1385427 (= lt!1685828 e!2807609)))

(declare-fun c!768587 () Bool)

(assert (=> d!1385427 (= c!768587 ((_ is Cons!50571) (toList!4275 lt!1685584)))))

(assert (=> d!1385427 (forall!10201 (toList!4275 lt!1685584) lambda!169785)))

(assert (=> d!1385427 (= (extractMap!1190 (toList!4275 lt!1685584)) lt!1685828)))

(declare-fun b!4506855 () Bool)

(assert (=> b!4506855 (= e!2807609 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))))))

(declare-fun b!4506856 () Bool)

(assert (=> b!4506856 (= e!2807609 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385427 c!768587) b!4506855))

(assert (= (and d!1385427 (not c!768587)) b!4506856))

(declare-fun m!5243447 () Bool)

(assert (=> d!1385427 m!5243447))

(declare-fun m!5243449 () Bool)

(assert (=> d!1385427 m!5243449))

(declare-fun m!5243451 () Bool)

(assert (=> b!4506855 m!5243451))

(assert (=> b!4506855 m!5243451))

(declare-fun m!5243453 () Bool)

(assert (=> b!4506855 m!5243453))

(assert (=> b!4506541 d!1385427))

(declare-fun d!1385429 () Bool)

(assert (=> d!1385429 (= (head!9362 lt!1685584) (head!9364 (toList!4275 lt!1685584)))))

(declare-fun bs!844216 () Bool)

(assert (= bs!844216 d!1385429))

(declare-fun m!5243455 () Bool)

(assert (=> bs!844216 m!5243455))

(assert (=> b!4506540 d!1385429))

(declare-fun b!4506861 () Bool)

(declare-fun e!2807612 () Bool)

(declare-fun tp!1337675 () Bool)

(declare-fun tp!1337676 () Bool)

(assert (=> b!4506861 (= e!2807612 (and tp!1337675 tp!1337676))))

(assert (=> b!4506542 (= tp!1337661 e!2807612)))

(assert (= (and b!4506542 ((_ is Cons!50571) (toList!4275 lm!1477))) b!4506861))

(declare-fun b!4506866 () Bool)

(declare-fun e!2807615 () Bool)

(declare-fun tp!1337679 () Bool)

(assert (=> b!4506866 (= e!2807615 (and tp_is_empty!27813 tp_is_empty!27815 tp!1337679))))

(assert (=> b!4506531 (= tp!1337660 e!2807615)))

(assert (= (and b!4506531 ((_ is Cons!50570) (t!357656 newBucket!178))) b!4506866))

(declare-fun b_lambda!153381 () Bool)

(assert (= b_lambda!153369 (or start!445184 b_lambda!153381)))

(declare-fun bs!844217 () Bool)

(declare-fun d!1385431 () Bool)

(assert (= bs!844217 (and d!1385431 start!445184)))

(assert (=> bs!844217 (= (dynLambda!21126 lambda!169727 lt!1685588) (noDuplicateKeys!1134 (_2!28780 lt!1685588)))))

(declare-fun m!5243457 () Bool)

(assert (=> bs!844217 m!5243457))

(assert (=> d!1385267 d!1385431))

(declare-fun b_lambda!153383 () Bool)

(assert (= b_lambda!153379 (or start!445184 b_lambda!153383)))

(declare-fun bs!844218 () Bool)

(declare-fun d!1385433 () Bool)

(assert (= bs!844218 (and d!1385433 start!445184)))

(assert (=> bs!844218 (= (dynLambda!21126 lambda!169727 (h!56400 (toList!4275 lm!1477))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lm!1477)))))))

(declare-fun m!5243459 () Bool)

(assert (=> bs!844218 m!5243459))

(assert (=> b!4506837 d!1385433))

(check-sat (not d!1385409) (not b!4506838) (not d!1385317) (not b!4506710) (not d!1385377) (not b!4506631) (not b_lambda!153381) (not b!4506713) (not b!4506753) (not b!4506714) (not d!1385429) (not d!1385421) (not b!4506698) (not b!4506694) (not b!4506823) (not d!1385411) (not b!4506796) (not b!4506818) (not d!1385257) (not b!4506568) (not b!4506697) (not b!4506794) (not b!4506656) (not b!4506691) (not d!1385253) (not b!4506819) (not b!4506824) (not d!1385281) (not d!1385399) (not bs!844218) (not b!4506690) (not d!1385417) (not b!4506755) (not b!4506855) (not d!1385267) (not d!1385419) (not b!4506777) (not b!4506844) (not b!4506696) (not b!4506712) (not d!1385389) (not b!4506817) (not d!1385255) (not d!1385397) (not b!4506861) (not d!1385355) (not b!4506821) (not b!4506588) (not d!1385387) (not d!1385415) (not b!4506709) (not b!4506831) (not d!1385313) (not b_lambda!153383) (not bs!844217) (not d!1385361) (not bm!313752) (not b!4506759) (not d!1385395) (not d!1385427) (not d!1385357) tp_is_empty!27815 (not bm!313749) (not d!1385251) (not b!4506545) (not b!4506701) (not b!4506843) (not d!1385413) (not b!4506756) (not b!4506846) (not d!1385385) (not b!4506693) tp_is_empty!27813 (not d!1385275) (not d!1385383) (not d!1385401) (not b!4506633) (not b!4506812) (not b!4506854) (not d!1385325) (not bm!313750) (not b!4506706) (not b!4506853) (not d!1385353) (not b!4506760) (not b!4506582) (not b!4506845) (not d!1385363) (not b!4506758) (not b!4506751) (not b!4506707) (not b!4506769) (not d!1385297) (not d!1385403) (not d!1385391) (not b!4506775) (not b!4506799) (not b!4506866) (not d!1385273) (not b!4506752) (not d!1385393) (not b!4506852) (not b!4506832) (not b!4506797))
(check-sat)
(get-model)

(declare-fun d!1385435 () Bool)

(assert (=> d!1385435 (= (get!16538 (getValueByKey!1044 (toList!4275 lt!1685580) hash!344)) (v!44591 (getValueByKey!1044 (toList!4275 lt!1685580) hash!344)))))

(assert (=> d!1385415 d!1385435))

(declare-fun b!4506876 () Bool)

(declare-fun e!2807620 () Option!11064)

(declare-fun e!2807621 () Option!11064)

(assert (=> b!4506876 (= e!2807620 e!2807621)))

(declare-fun c!768593 () Bool)

(assert (=> b!4506876 (= c!768593 (and ((_ is Cons!50571) (toList!4275 lt!1685580)) (not (= (_1!28780 (h!56400 (toList!4275 lt!1685580))) hash!344))))))

(declare-fun b!4506875 () Bool)

(assert (=> b!4506875 (= e!2807620 (Some!11063 (_2!28780 (h!56400 (toList!4275 lt!1685580)))))))

(declare-fun d!1385437 () Bool)

(declare-fun c!768592 () Bool)

(assert (=> d!1385437 (= c!768592 (and ((_ is Cons!50571) (toList!4275 lt!1685580)) (= (_1!28780 (h!56400 (toList!4275 lt!1685580))) hash!344)))))

(assert (=> d!1385437 (= (getValueByKey!1044 (toList!4275 lt!1685580) hash!344) e!2807620)))

(declare-fun b!4506878 () Bool)

(assert (=> b!4506878 (= e!2807621 None!11063)))

(declare-fun b!4506877 () Bool)

(assert (=> b!4506877 (= e!2807621 (getValueByKey!1044 (t!357657 (toList!4275 lt!1685580)) hash!344))))

(assert (= (and d!1385437 c!768592) b!4506875))

(assert (= (and d!1385437 (not c!768592)) b!4506876))

(assert (= (and b!4506876 c!768593) b!4506877))

(assert (= (and b!4506876 (not c!768593)) b!4506878))

(declare-fun m!5243461 () Bool)

(assert (=> b!4506877 m!5243461))

(assert (=> d!1385415 d!1385437))

(declare-fun d!1385439 () Bool)

(declare-fun noDuplicatedKeys!250 (List!50694) Bool)

(assert (=> d!1385439 (= (invariantList!993 (toList!4276 lt!1685811)) (noDuplicatedKeys!250 (toList!4276 lt!1685811)))))

(declare-fun bs!844219 () Bool)

(assert (= bs!844219 d!1385439))

(declare-fun m!5243463 () Bool)

(assert (=> bs!844219 m!5243463))

(assert (=> d!1385389 d!1385439))

(declare-fun d!1385441 () Bool)

(declare-fun res!1874231 () Bool)

(declare-fun e!2807622 () Bool)

(assert (=> d!1385441 (=> res!1874231 e!2807622)))

(assert (=> d!1385441 (= res!1874231 ((_ is Nil!50571) (toList!4275 lt!1685585)))))

(assert (=> d!1385441 (= (forall!10201 (toList!4275 lt!1685585) lambda!169774) e!2807622)))

(declare-fun b!4506879 () Bool)

(declare-fun e!2807623 () Bool)

(assert (=> b!4506879 (= e!2807622 e!2807623)))

(declare-fun res!1874232 () Bool)

(assert (=> b!4506879 (=> (not res!1874232) (not e!2807623))))

(assert (=> b!4506879 (= res!1874232 (dynLambda!21126 lambda!169774 (h!56400 (toList!4275 lt!1685585))))))

(declare-fun b!4506880 () Bool)

(assert (=> b!4506880 (= e!2807623 (forall!10201 (t!357657 (toList!4275 lt!1685585)) lambda!169774))))

(assert (= (and d!1385441 (not res!1874231)) b!4506879))

(assert (= (and b!4506879 res!1874232) b!4506880))

(declare-fun b_lambda!153385 () Bool)

(assert (=> (not b_lambda!153385) (not b!4506879)))

(declare-fun m!5243465 () Bool)

(assert (=> b!4506879 m!5243465))

(declare-fun m!5243467 () Bool)

(assert (=> b!4506880 m!5243467))

(assert (=> d!1385389 d!1385441))

(declare-fun d!1385443 () Bool)

(assert (=> d!1385443 (= (invariantList!993 (toList!4276 lt!1685678)) (noDuplicatedKeys!250 (toList!4276 lt!1685678)))))

(declare-fun bs!844220 () Bool)

(assert (= bs!844220 d!1385443))

(declare-fun m!5243469 () Bool)

(assert (=> bs!844220 m!5243469))

(assert (=> d!1385281 d!1385443))

(declare-fun d!1385445 () Bool)

(declare-fun res!1874233 () Bool)

(declare-fun e!2807624 () Bool)

(assert (=> d!1385445 (=> res!1874233 e!2807624)))

(assert (=> d!1385445 (= res!1874233 ((_ is Nil!50571) (toList!4275 lt!1685580)))))

(assert (=> d!1385445 (= (forall!10201 (toList!4275 lt!1685580) lambda!169749) e!2807624)))

(declare-fun b!4506881 () Bool)

(declare-fun e!2807625 () Bool)

(assert (=> b!4506881 (= e!2807624 e!2807625)))

(declare-fun res!1874234 () Bool)

(assert (=> b!4506881 (=> (not res!1874234) (not e!2807625))))

(assert (=> b!4506881 (= res!1874234 (dynLambda!21126 lambda!169749 (h!56400 (toList!4275 lt!1685580))))))

(declare-fun b!4506882 () Bool)

(assert (=> b!4506882 (= e!2807625 (forall!10201 (t!357657 (toList!4275 lt!1685580)) lambda!169749))))

(assert (= (and d!1385445 (not res!1874233)) b!4506881))

(assert (= (and b!4506881 res!1874234) b!4506882))

(declare-fun b_lambda!153387 () Bool)

(assert (=> (not b_lambda!153387) (not b!4506881)))

(declare-fun m!5243471 () Bool)

(assert (=> b!4506881 m!5243471))

(declare-fun m!5243473 () Bool)

(assert (=> b!4506882 m!5243473))

(assert (=> d!1385281 d!1385445))

(declare-fun d!1385447 () Bool)

(declare-fun res!1874239 () Bool)

(declare-fun e!2807630 () Bool)

(assert (=> d!1385447 (=> res!1874239 e!2807630)))

(assert (=> d!1385447 (= res!1874239 (and ((_ is Cons!50570) (toList!4276 lt!1685586)) (= (_1!28779 (h!56399 (toList!4276 lt!1685586))) key!3287)))))

(assert (=> d!1385447 (= (containsKey!1709 (toList!4276 lt!1685586) key!3287) e!2807630)))

(declare-fun b!4506887 () Bool)

(declare-fun e!2807631 () Bool)

(assert (=> b!4506887 (= e!2807630 e!2807631)))

(declare-fun res!1874240 () Bool)

(assert (=> b!4506887 (=> (not res!1874240) (not e!2807631))))

(assert (=> b!4506887 (= res!1874240 ((_ is Cons!50570) (toList!4276 lt!1685586)))))

(declare-fun b!4506888 () Bool)

(assert (=> b!4506888 (= e!2807631 (containsKey!1709 (t!357656 (toList!4276 lt!1685586)) key!3287))))

(assert (= (and d!1385447 (not res!1874239)) b!4506887))

(assert (= (and b!4506887 res!1874240) b!4506888))

(declare-fun m!5243475 () Bool)

(assert (=> b!4506888 m!5243475))

(assert (=> b!4506709 d!1385447))

(declare-fun d!1385449 () Bool)

(assert (=> d!1385449 (containsKey!1709 (toList!4276 lt!1685586) key!3287)))

(declare-fun lt!1685831 () Unit!92894)

(declare-fun choose!29238 (List!50694 K!11975) Unit!92894)

(assert (=> d!1385449 (= lt!1685831 (choose!29238 (toList!4276 lt!1685586) key!3287))))

(assert (=> d!1385449 (invariantList!993 (toList!4276 lt!1685586))))

(assert (=> d!1385449 (= (lemmaInGetKeysListThenContainsKey!440 (toList!4276 lt!1685586) key!3287) lt!1685831)))

(declare-fun bs!844221 () Bool)

(assert (= bs!844221 d!1385449))

(assert (=> bs!844221 m!5243143))

(declare-fun m!5243477 () Bool)

(assert (=> bs!844221 m!5243477))

(declare-fun m!5243479 () Bool)

(assert (=> bs!844221 m!5243479))

(assert (=> b!4506709 d!1385449))

(declare-fun d!1385451 () Bool)

(assert (=> d!1385451 (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287))))

(declare-fun lt!1685834 () Unit!92894)

(declare-fun choose!29239 (List!50694 K!11975) Unit!92894)

(assert (=> d!1385451 (= lt!1685834 (choose!29239 (toList!4276 lt!1685586) key!3287))))

(assert (=> d!1385451 (invariantList!993 (toList!4276 lt!1685586))))

(assert (=> d!1385451 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 lt!1685586) key!3287) lt!1685834)))

(declare-fun bs!844222 () Bool)

(assert (= bs!844222 d!1385451))

(assert (=> bs!844222 m!5243129))

(assert (=> bs!844222 m!5243129))

(assert (=> bs!844222 m!5243131))

(declare-fun m!5243481 () Bool)

(assert (=> bs!844222 m!5243481))

(assert (=> bs!844222 m!5243479))

(assert (=> b!4506714 d!1385451))

(declare-fun d!1385453 () Bool)

(declare-fun isEmpty!28622 (Option!11065) Bool)

(assert (=> d!1385453 (= (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287)) (not (isEmpty!28622 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287))))))

(declare-fun bs!844223 () Bool)

(assert (= bs!844223 d!1385453))

(assert (=> bs!844223 m!5243129))

(declare-fun m!5243483 () Bool)

(assert (=> bs!844223 m!5243483))

(assert (=> b!4506714 d!1385453))

(declare-fun b!4506898 () Bool)

(declare-fun e!2807636 () Option!11065)

(declare-fun e!2807637 () Option!11065)

(assert (=> b!4506898 (= e!2807636 e!2807637)))

(declare-fun c!768599 () Bool)

(assert (=> b!4506898 (= c!768599 (and ((_ is Cons!50570) (toList!4276 lt!1685586)) (not (= (_1!28779 (h!56399 (toList!4276 lt!1685586))) key!3287))))))

(declare-fun b!4506897 () Bool)

(assert (=> b!4506897 (= e!2807636 (Some!11064 (_2!28779 (h!56399 (toList!4276 lt!1685586)))))))

(declare-fun b!4506900 () Bool)

(assert (=> b!4506900 (= e!2807637 None!11064)))

(declare-fun b!4506899 () Bool)

(assert (=> b!4506899 (= e!2807637 (getValueByKey!1045 (t!357656 (toList!4276 lt!1685586)) key!3287))))

(declare-fun d!1385455 () Bool)

(declare-fun c!768598 () Bool)

(assert (=> d!1385455 (= c!768598 (and ((_ is Cons!50570) (toList!4276 lt!1685586)) (= (_1!28779 (h!56399 (toList!4276 lt!1685586))) key!3287)))))

(assert (=> d!1385455 (= (getValueByKey!1045 (toList!4276 lt!1685586) key!3287) e!2807636)))

(assert (= (and d!1385455 c!768598) b!4506897))

(assert (= (and d!1385455 (not c!768598)) b!4506898))

(assert (= (and b!4506898 c!768599) b!4506899))

(assert (= (and b!4506898 (not c!768599)) b!4506900))

(declare-fun m!5243485 () Bool)

(assert (=> b!4506899 m!5243485))

(assert (=> b!4506714 d!1385455))

(declare-fun d!1385457 () Bool)

(assert (=> d!1385457 (contains!13261 (getKeysList!441 (toList!4276 lt!1685586)) key!3287)))

(declare-fun lt!1685837 () Unit!92894)

(declare-fun choose!29240 (List!50694 K!11975) Unit!92894)

(assert (=> d!1385457 (= lt!1685837 (choose!29240 (toList!4276 lt!1685586) key!3287))))

(assert (=> d!1385457 (invariantList!993 (toList!4276 lt!1685586))))

(assert (=> d!1385457 (= (lemmaInListThenGetKeysListContains!437 (toList!4276 lt!1685586) key!3287) lt!1685837)))

(declare-fun bs!844224 () Bool)

(assert (= bs!844224 d!1385457))

(assert (=> bs!844224 m!5243127))

(assert (=> bs!844224 m!5243127))

(declare-fun m!5243487 () Bool)

(assert (=> bs!844224 m!5243487))

(declare-fun m!5243489 () Bool)

(assert (=> bs!844224 m!5243489))

(assert (=> bs!844224 m!5243479))

(assert (=> b!4506714 d!1385457))

(declare-fun d!1385459 () Bool)

(declare-fun res!1874241 () Bool)

(declare-fun e!2807638 () Bool)

(assert (=> d!1385459 (=> res!1874241 e!2807638)))

(assert (=> d!1385459 (= res!1874241 ((_ is Nil!50571) (toList!4275 lm!1477)))))

(assert (=> d!1385459 (= (forall!10201 (toList!4275 lm!1477) lambda!169781) e!2807638)))

(declare-fun b!4506901 () Bool)

(declare-fun e!2807639 () Bool)

(assert (=> b!4506901 (= e!2807638 e!2807639)))

(declare-fun res!1874242 () Bool)

(assert (=> b!4506901 (=> (not res!1874242) (not e!2807639))))

(assert (=> b!4506901 (= res!1874242 (dynLambda!21126 lambda!169781 (h!56400 (toList!4275 lm!1477))))))

(declare-fun b!4506902 () Bool)

(assert (=> b!4506902 (= e!2807639 (forall!10201 (t!357657 (toList!4275 lm!1477)) lambda!169781))))

(assert (= (and d!1385459 (not res!1874241)) b!4506901))

(assert (= (and b!4506901 res!1874242) b!4506902))

(declare-fun b_lambda!153389 () Bool)

(assert (=> (not b_lambda!153389) (not b!4506901)))

(declare-fun m!5243491 () Bool)

(assert (=> b!4506901 m!5243491))

(declare-fun m!5243493 () Bool)

(assert (=> b!4506902 m!5243493))

(assert (=> d!1385403 d!1385459))

(declare-fun bs!844244 () Bool)

(declare-fun b!4507042 () Bool)

(assert (= bs!844244 (and b!4507042 d!1385411)))

(declare-fun lambda!169826 () Int)

(assert (=> bs!844244 (not (= lambda!169826 lambda!169784))))

(assert (=> b!4507042 true))

(declare-fun bs!844245 () Bool)

(declare-fun b!4507038 () Bool)

(assert (= bs!844245 (and b!4507038 d!1385411)))

(declare-fun lambda!169827 () Int)

(assert (=> bs!844245 (not (= lambda!169827 lambda!169784))))

(declare-fun bs!844246 () Bool)

(assert (= bs!844246 (and b!4507038 b!4507042)))

(assert (=> bs!844246 (= lambda!169827 lambda!169826)))

(assert (=> b!4507038 true))

(declare-fun lambda!169828 () Int)

(assert (=> bs!844245 (not (= lambda!169828 lambda!169784))))

(declare-fun lt!1685929 () ListMap!3537)

(assert (=> bs!844246 (= (= lt!1685929 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169828 lambda!169826))))

(assert (=> b!4507038 (= (= lt!1685929 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169828 lambda!169827))))

(assert (=> b!4507038 true))

(declare-fun bs!844247 () Bool)

(declare-fun d!1385461 () Bool)

(assert (= bs!844247 (and d!1385461 d!1385411)))

(declare-fun lambda!169829 () Int)

(assert (=> bs!844247 (not (= lambda!169829 lambda!169784))))

(declare-fun bs!844248 () Bool)

(assert (= bs!844248 (and d!1385461 b!4507042)))

(declare-fun lt!1685919 () ListMap!3537)

(assert (=> bs!844248 (= (= lt!1685919 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169829 lambda!169826))))

(declare-fun bs!844249 () Bool)

(assert (= bs!844249 (and d!1385461 b!4507038)))

(assert (=> bs!844249 (= (= lt!1685919 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169829 lambda!169827))))

(assert (=> bs!844249 (= (= lt!1685919 lt!1685929) (= lambda!169829 lambda!169828))))

(assert (=> d!1385461 true))

(declare-fun bm!313761 () Bool)

(declare-fun call!313766 () Unit!92894)

(declare-fun lemmaContainsAllItsOwnKeys!313 (ListMap!3537) Unit!92894)

(assert (=> bm!313761 (= call!313766 (lemmaContainsAllItsOwnKeys!313 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))))))

(declare-fun b!4507039 () Bool)

(declare-fun res!1874306 () Bool)

(declare-fun e!2807725 () Bool)

(assert (=> b!4507039 (=> (not res!1874306) (not e!2807725))))

(assert (=> b!4507039 (= res!1874306 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) lambda!169829))))

(declare-fun b!4507040 () Bool)

(assert (=> b!4507040 (= e!2807725 (invariantList!993 (toList!4276 lt!1685919)))))

(declare-fun c!768635 () Bool)

(declare-fun call!313767 () Bool)

(declare-fun bm!313762 () Bool)

(assert (=> bm!313762 (= call!313767 (forall!10203 (ite c!768635 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (_2!28780 (h!56400 (toList!4275 lt!1685585)))) (ite c!768635 lambda!169826 lambda!169828)))))

(declare-fun b!4507041 () Bool)

(declare-fun e!2807724 () Bool)

(assert (=> b!4507041 (= e!2807724 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) lambda!169828))))

(assert (=> d!1385461 e!2807725))

(declare-fun res!1874308 () Bool)

(assert (=> d!1385461 (=> (not res!1874308) (not e!2807725))))

(assert (=> d!1385461 (= res!1874308 (forall!10203 (_2!28780 (h!56400 (toList!4275 lt!1685585))) lambda!169829))))

(declare-fun e!2807726 () ListMap!3537)

(assert (=> d!1385461 (= lt!1685919 e!2807726)))

(assert (=> d!1385461 (= c!768635 ((_ is Nil!50570) (_2!28780 (h!56400 (toList!4275 lt!1685585)))))))

(assert (=> d!1385461 (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lt!1685585))))))

(assert (=> d!1385461 (= (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 lt!1685585))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) lt!1685919)))

(assert (=> b!4507038 (= e!2807726 lt!1685929)))

(declare-fun lt!1685922 () ListMap!3537)

(declare-fun +!1489 (ListMap!3537 tuple2!50970) ListMap!3537)

(assert (=> b!4507038 (= lt!1685922 (+!1489 (extractMap!1190 (t!357657 (toList!4275 lt!1685585))) (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685585))))))))

(assert (=> b!4507038 (= lt!1685929 (addToMapMapFromBucket!661 (t!357656 (_2!28780 (h!56400 (toList!4275 lt!1685585)))) (+!1489 (extractMap!1190 (t!357657 (toList!4275 lt!1685585))) (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685585)))))))))

(declare-fun lt!1685917 () Unit!92894)

(assert (=> b!4507038 (= lt!1685917 call!313766)))

(assert (=> b!4507038 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) lambda!169827)))

(declare-fun lt!1685915 () Unit!92894)

(assert (=> b!4507038 (= lt!1685915 lt!1685917)))

(assert (=> b!4507038 (forall!10203 (toList!4276 lt!1685922) lambda!169828)))

(declare-fun lt!1685932 () Unit!92894)

(declare-fun Unit!92914 () Unit!92894)

(assert (=> b!4507038 (= lt!1685932 Unit!92914)))

(declare-fun call!313768 () Bool)

(assert (=> b!4507038 call!313768))

(declare-fun lt!1685918 () Unit!92894)

(declare-fun Unit!92915 () Unit!92894)

(assert (=> b!4507038 (= lt!1685918 Unit!92915)))

(declare-fun lt!1685931 () Unit!92894)

(declare-fun Unit!92916 () Unit!92894)

(assert (=> b!4507038 (= lt!1685931 Unit!92916)))

(declare-fun lt!1685926 () Unit!92894)

(declare-fun forallContained!2454 (List!50694 Int tuple2!50970) Unit!92894)

(assert (=> b!4507038 (= lt!1685926 (forallContained!2454 (toList!4276 lt!1685922) lambda!169828 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685585))))))))

(assert (=> b!4507038 (contains!13257 lt!1685922 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685585))))))))

(declare-fun lt!1685916 () Unit!92894)

(declare-fun Unit!92917 () Unit!92894)

(assert (=> b!4507038 (= lt!1685916 Unit!92917)))

(assert (=> b!4507038 (contains!13257 lt!1685929 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685585))))))))

(declare-fun lt!1685930 () Unit!92894)

(declare-fun Unit!92918 () Unit!92894)

(assert (=> b!4507038 (= lt!1685930 Unit!92918)))

(assert (=> b!4507038 call!313767))

(declare-fun lt!1685933 () Unit!92894)

(declare-fun Unit!92919 () Unit!92894)

(assert (=> b!4507038 (= lt!1685933 Unit!92919)))

(assert (=> b!4507038 (forall!10203 (toList!4276 lt!1685922) lambda!169828)))

(declare-fun lt!1685928 () Unit!92894)

(declare-fun Unit!92920 () Unit!92894)

(assert (=> b!4507038 (= lt!1685928 Unit!92920)))

(declare-fun lt!1685914 () Unit!92894)

(declare-fun Unit!92921 () Unit!92894)

(assert (=> b!4507038 (= lt!1685914 Unit!92921)))

(declare-fun lt!1685921 () Unit!92894)

(declare-fun addForallContainsKeyThenBeforeAdding!313 (ListMap!3537 ListMap!3537 K!11975 V!12221) Unit!92894)

(assert (=> b!4507038 (= lt!1685921 (addForallContainsKeyThenBeforeAdding!313 (extractMap!1190 (t!357657 (toList!4275 lt!1685585))) lt!1685929 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685585))))) (_2!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685585)))))))))

(assert (=> b!4507038 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) lambda!169828)))

(declare-fun lt!1685927 () Unit!92894)

(assert (=> b!4507038 (= lt!1685927 lt!1685921)))

(assert (=> b!4507038 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) lambda!169828)))

(declare-fun lt!1685925 () Unit!92894)

(declare-fun Unit!92922 () Unit!92894)

(assert (=> b!4507038 (= lt!1685925 Unit!92922)))

(declare-fun res!1874307 () Bool)

(assert (=> b!4507038 (= res!1874307 (forall!10203 (_2!28780 (h!56400 (toList!4275 lt!1685585))) lambda!169828))))

(assert (=> b!4507038 (=> (not res!1874307) (not e!2807724))))

(assert (=> b!4507038 e!2807724))

(declare-fun lt!1685924 () Unit!92894)

(declare-fun Unit!92923 () Unit!92894)

(assert (=> b!4507038 (= lt!1685924 Unit!92923)))

(assert (=> b!4507042 (= e!2807726 (extractMap!1190 (t!357657 (toList!4275 lt!1685585))))))

(declare-fun lt!1685934 () Unit!92894)

(assert (=> b!4507042 (= lt!1685934 call!313766)))

(assert (=> b!4507042 call!313767))

(declare-fun lt!1685923 () Unit!92894)

(assert (=> b!4507042 (= lt!1685923 lt!1685934)))

(assert (=> b!4507042 call!313768))

(declare-fun lt!1685920 () Unit!92894)

(declare-fun Unit!92924 () Unit!92894)

(assert (=> b!4507042 (= lt!1685920 Unit!92924)))

(declare-fun bm!313763 () Bool)

(assert (=> bm!313763 (= call!313768 (forall!10203 (ite c!768635 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (t!357656 (_2!28780 (h!56400 (toList!4275 lt!1685585))))) (ite c!768635 lambda!169826 lambda!169828)))))

(assert (= (and d!1385461 c!768635) b!4507042))

(assert (= (and d!1385461 (not c!768635)) b!4507038))

(assert (= (and b!4507038 res!1874307) b!4507041))

(assert (= (or b!4507042 b!4507038) bm!313762))

(assert (= (or b!4507042 b!4507038) bm!313763))

(assert (= (or b!4507042 b!4507038) bm!313761))

(assert (= (and d!1385461 res!1874308) b!4507039))

(assert (= (and b!4507039 res!1874306) b!4507040))

(declare-fun m!5243673 () Bool)

(assert (=> b!4507040 m!5243673))

(declare-fun m!5243675 () Bool)

(assert (=> d!1385461 m!5243675))

(declare-fun m!5243677 () Bool)

(assert (=> d!1385461 m!5243677))

(declare-fun m!5243679 () Bool)

(assert (=> bm!313763 m!5243679))

(assert (=> bm!313761 m!5243361))

(declare-fun m!5243681 () Bool)

(assert (=> bm!313761 m!5243681))

(declare-fun m!5243683 () Bool)

(assert (=> b!4507041 m!5243683))

(declare-fun m!5243685 () Bool)

(assert (=> bm!313762 m!5243685))

(declare-fun m!5243687 () Bool)

(assert (=> b!4507039 m!5243687))

(declare-fun m!5243689 () Bool)

(assert (=> b!4507038 m!5243689))

(declare-fun m!5243691 () Bool)

(assert (=> b!4507038 m!5243691))

(declare-fun m!5243693 () Bool)

(assert (=> b!4507038 m!5243693))

(declare-fun m!5243695 () Bool)

(assert (=> b!4507038 m!5243695))

(declare-fun m!5243697 () Bool)

(assert (=> b!4507038 m!5243697))

(assert (=> b!4507038 m!5243361))

(assert (=> b!4507038 m!5243689))

(declare-fun m!5243699 () Bool)

(assert (=> b!4507038 m!5243699))

(declare-fun m!5243701 () Bool)

(assert (=> b!4507038 m!5243701))

(declare-fun m!5243703 () Bool)

(assert (=> b!4507038 m!5243703))

(assert (=> b!4507038 m!5243683))

(assert (=> b!4507038 m!5243703))

(assert (=> b!4507038 m!5243361))

(declare-fun m!5243705 () Bool)

(assert (=> b!4507038 m!5243705))

(assert (=> b!4507038 m!5243683))

(assert (=> b!4506819 d!1385461))

(declare-fun bs!844250 () Bool)

(declare-fun d!1385533 () Bool)

(assert (= bs!844250 (and d!1385533 d!1385357)))

(declare-fun lambda!169830 () Int)

(assert (=> bs!844250 (= lambda!169830 lambda!169766)))

(declare-fun bs!844251 () Bool)

(assert (= bs!844251 (and d!1385533 d!1385325)))

(assert (=> bs!844251 (= lambda!169830 lambda!169765)))

(declare-fun bs!844252 () Bool)

(assert (= bs!844252 (and d!1385533 start!445184)))

(assert (=> bs!844252 (= lambda!169830 lambda!169727)))

(declare-fun bs!844253 () Bool)

(assert (= bs!844253 (and d!1385533 d!1385427)))

(assert (=> bs!844253 (= lambda!169830 lambda!169785)))

(declare-fun bs!844254 () Bool)

(assert (= bs!844254 (and d!1385533 d!1385377)))

(assert (=> bs!844254 (= lambda!169830 lambda!169770)))

(declare-fun bs!844255 () Bool)

(assert (= bs!844255 (and d!1385533 d!1385385)))

(assert (=> bs!844255 (= lambda!169830 lambda!169773)))

(declare-fun bs!844256 () Bool)

(assert (= bs!844256 (and d!1385533 d!1385395)))

(assert (=> bs!844256 (= lambda!169830 lambda!169775)))

(declare-fun bs!844257 () Bool)

(assert (= bs!844257 (and d!1385533 d!1385281)))

(assert (=> bs!844257 (= lambda!169830 lambda!169749)))

(declare-fun bs!844258 () Bool)

(assert (= bs!844258 (and d!1385533 d!1385389)))

(assert (=> bs!844258 (= lambda!169830 lambda!169774)))

(declare-fun bs!844259 () Bool)

(assert (= bs!844259 (and d!1385533 d!1385253)))

(assert (=> bs!844259 (= lambda!169830 lambda!169730)))

(declare-fun bs!844260 () Bool)

(assert (= bs!844260 (and d!1385533 d!1385401)))

(assert (=> bs!844260 (= lambda!169830 lambda!169778)))

(declare-fun bs!844261 () Bool)

(assert (= bs!844261 (and d!1385533 d!1385313)))

(assert (=> bs!844261 (= lambda!169830 lambda!169757)))

(declare-fun bs!844262 () Bool)

(assert (= bs!844262 (and d!1385533 d!1385403)))

(assert (=> bs!844262 (not (= lambda!169830 lambda!169781))))

(declare-fun lt!1685935 () ListMap!3537)

(assert (=> d!1385533 (invariantList!993 (toList!4276 lt!1685935))))

(declare-fun e!2807727 () ListMap!3537)

(assert (=> d!1385533 (= lt!1685935 e!2807727)))

(declare-fun c!768636 () Bool)

(assert (=> d!1385533 (= c!768636 ((_ is Cons!50571) (t!357657 (toList!4275 lt!1685585))))))

(assert (=> d!1385533 (forall!10201 (t!357657 (toList!4275 lt!1685585)) lambda!169830)))

(assert (=> d!1385533 (= (extractMap!1190 (t!357657 (toList!4275 lt!1685585))) lt!1685935)))

(declare-fun b!4507045 () Bool)

(assert (=> b!4507045 (= e!2807727 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (t!357657 (toList!4275 lt!1685585)))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lt!1685585))))))))

(declare-fun b!4507046 () Bool)

(assert (=> b!4507046 (= e!2807727 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385533 c!768636) b!4507045))

(assert (= (and d!1385533 (not c!768636)) b!4507046))

(declare-fun m!5243707 () Bool)

(assert (=> d!1385533 m!5243707))

(declare-fun m!5243709 () Bool)

(assert (=> d!1385533 m!5243709))

(declare-fun m!5243711 () Bool)

(assert (=> b!4507045 m!5243711))

(assert (=> b!4507045 m!5243711))

(declare-fun m!5243713 () Bool)

(assert (=> b!4507045 m!5243713))

(assert (=> b!4506819 d!1385533))

(declare-fun b!4507047 () Bool)

(declare-fun e!2807731 () List!50697)

(assert (=> b!4507047 (= e!2807731 (getKeysList!441 (toList!4276 (extractMap!1190 (toList!4275 lt!1685580)))))))

(declare-fun b!4507048 () Bool)

(declare-fun e!2807729 () Bool)

(assert (=> b!4507048 (= e!2807729 (not (contains!13261 (keys!17544 (extractMap!1190 (toList!4275 lt!1685580))) key!3287)))))

(declare-fun b!4507049 () Bool)

(declare-fun e!2807732 () Unit!92894)

(declare-fun Unit!92925 () Unit!92894)

(assert (=> b!4507049 (= e!2807732 Unit!92925)))

(declare-fun b!4507050 () Bool)

(assert (=> b!4507050 false))

(declare-fun lt!1685941 () Unit!92894)

(declare-fun lt!1685940 () Unit!92894)

(assert (=> b!4507050 (= lt!1685941 lt!1685940)))

(assert (=> b!4507050 (containsKey!1709 (toList!4276 (extractMap!1190 (toList!4275 lt!1685580))) key!3287)))

(assert (=> b!4507050 (= lt!1685940 (lemmaInGetKeysListThenContainsKey!440 (toList!4276 (extractMap!1190 (toList!4275 lt!1685580))) key!3287))))

(declare-fun Unit!92926 () Unit!92894)

(assert (=> b!4507050 (= e!2807732 Unit!92926)))

(declare-fun b!4507051 () Bool)

(assert (=> b!4507051 (= e!2807731 (keys!17544 (extractMap!1190 (toList!4275 lt!1685580))))))

(declare-fun b!4507052 () Bool)

(declare-fun e!2807728 () Unit!92894)

(assert (=> b!4507052 (= e!2807728 e!2807732)))

(declare-fun c!768637 () Bool)

(declare-fun call!313769 () Bool)

(assert (=> b!4507052 (= c!768637 call!313769)))

(declare-fun d!1385535 () Bool)

(declare-fun e!2807730 () Bool)

(assert (=> d!1385535 e!2807730))

(declare-fun res!1874311 () Bool)

(assert (=> d!1385535 (=> res!1874311 e!2807730)))

(assert (=> d!1385535 (= res!1874311 e!2807729)))

(declare-fun res!1874310 () Bool)

(assert (=> d!1385535 (=> (not res!1874310) (not e!2807729))))

(declare-fun lt!1685942 () Bool)

(assert (=> d!1385535 (= res!1874310 (not lt!1685942))))

(declare-fun lt!1685936 () Bool)

(assert (=> d!1385535 (= lt!1685942 lt!1685936)))

(declare-fun lt!1685943 () Unit!92894)

(assert (=> d!1385535 (= lt!1685943 e!2807728)))

(declare-fun c!768638 () Bool)

(assert (=> d!1385535 (= c!768638 lt!1685936)))

(assert (=> d!1385535 (= lt!1685936 (containsKey!1709 (toList!4276 (extractMap!1190 (toList!4275 lt!1685580))) key!3287))))

(assert (=> d!1385535 (= (contains!13257 (extractMap!1190 (toList!4275 lt!1685580)) key!3287) lt!1685942)))

(declare-fun b!4507053 () Bool)

(declare-fun e!2807733 () Bool)

(assert (=> b!4507053 (= e!2807733 (contains!13261 (keys!17544 (extractMap!1190 (toList!4275 lt!1685580))) key!3287))))

(declare-fun b!4507054 () Bool)

(assert (=> b!4507054 (= e!2807730 e!2807733)))

(declare-fun res!1874309 () Bool)

(assert (=> b!4507054 (=> (not res!1874309) (not e!2807733))))

(assert (=> b!4507054 (= res!1874309 (isDefined!8351 (getValueByKey!1045 (toList!4276 (extractMap!1190 (toList!4275 lt!1685580))) key!3287)))))

(declare-fun bm!313764 () Bool)

(assert (=> bm!313764 (= call!313769 (contains!13261 e!2807731 key!3287))))

(declare-fun c!768639 () Bool)

(assert (=> bm!313764 (= c!768639 c!768638)))

(declare-fun b!4507055 () Bool)

(declare-fun lt!1685939 () Unit!92894)

(assert (=> b!4507055 (= e!2807728 lt!1685939)))

(declare-fun lt!1685938 () Unit!92894)

(assert (=> b!4507055 (= lt!1685938 (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 (extractMap!1190 (toList!4275 lt!1685580))) key!3287))))

(assert (=> b!4507055 (isDefined!8351 (getValueByKey!1045 (toList!4276 (extractMap!1190 (toList!4275 lt!1685580))) key!3287))))

(declare-fun lt!1685937 () Unit!92894)

(assert (=> b!4507055 (= lt!1685937 lt!1685938)))

(assert (=> b!4507055 (= lt!1685939 (lemmaInListThenGetKeysListContains!437 (toList!4276 (extractMap!1190 (toList!4275 lt!1685580))) key!3287))))

(assert (=> b!4507055 call!313769))

(assert (= (and d!1385535 c!768638) b!4507055))

(assert (= (and d!1385535 (not c!768638)) b!4507052))

(assert (= (and b!4507052 c!768637) b!4507050))

(assert (= (and b!4507052 (not c!768637)) b!4507049))

(assert (= (or b!4507055 b!4507052) bm!313764))

(assert (= (and bm!313764 c!768639) b!4507047))

(assert (= (and bm!313764 (not c!768639)) b!4507051))

(assert (= (and d!1385535 res!1874310) b!4507048))

(assert (= (and d!1385535 (not res!1874311)) b!4507054))

(assert (= (and b!4507054 res!1874309) b!4507053))

(declare-fun m!5243715 () Bool)

(assert (=> b!4507047 m!5243715))

(declare-fun m!5243717 () Bool)

(assert (=> b!4507054 m!5243717))

(assert (=> b!4507054 m!5243717))

(declare-fun m!5243719 () Bool)

(assert (=> b!4507054 m!5243719))

(assert (=> b!4507048 m!5242827))

(declare-fun m!5243721 () Bool)

(assert (=> b!4507048 m!5243721))

(assert (=> b!4507048 m!5243721))

(declare-fun m!5243723 () Bool)

(assert (=> b!4507048 m!5243723))

(declare-fun m!5243725 () Bool)

(assert (=> bm!313764 m!5243725))

(declare-fun m!5243727 () Bool)

(assert (=> b!4507055 m!5243727))

(assert (=> b!4507055 m!5243717))

(assert (=> b!4507055 m!5243717))

(assert (=> b!4507055 m!5243719))

(declare-fun m!5243729 () Bool)

(assert (=> b!4507055 m!5243729))

(declare-fun m!5243731 () Bool)

(assert (=> d!1385535 m!5243731))

(assert (=> b!4507050 m!5243731))

(declare-fun m!5243733 () Bool)

(assert (=> b!4507050 m!5243733))

(assert (=> b!4507051 m!5242827))

(assert (=> b!4507051 m!5243721))

(assert (=> b!4507053 m!5242827))

(assert (=> b!4507053 m!5243721))

(assert (=> b!4507053 m!5243721))

(assert (=> b!4507053 m!5243723))

(assert (=> d!1385325 d!1385535))

(assert (=> d!1385325 d!1385281))

(declare-fun d!1385537 () Bool)

(assert (=> d!1385537 (contains!13257 (extractMap!1190 (toList!4275 lt!1685580)) key!3287)))

(assert (=> d!1385537 true))

(declare-fun _$34!646 () Unit!92894)

(assert (=> d!1385537 (= (choose!29231 lt!1685580 key!3287 hashF!1107) _$34!646)))

(declare-fun bs!844263 () Bool)

(assert (= bs!844263 d!1385537))

(assert (=> bs!844263 m!5242827))

(assert (=> bs!844263 m!5242827))

(assert (=> bs!844263 m!5243231))

(assert (=> d!1385325 d!1385537))

(declare-fun d!1385539 () Bool)

(declare-fun res!1874312 () Bool)

(declare-fun e!2807734 () Bool)

(assert (=> d!1385539 (=> res!1874312 e!2807734)))

(assert (=> d!1385539 (= res!1874312 ((_ is Nil!50571) (toList!4275 lt!1685580)))))

(assert (=> d!1385539 (= (forall!10201 (toList!4275 lt!1685580) lambda!169765) e!2807734)))

(declare-fun b!4507056 () Bool)

(declare-fun e!2807735 () Bool)

(assert (=> b!4507056 (= e!2807734 e!2807735)))

(declare-fun res!1874313 () Bool)

(assert (=> b!4507056 (=> (not res!1874313) (not e!2807735))))

(assert (=> b!4507056 (= res!1874313 (dynLambda!21126 lambda!169765 (h!56400 (toList!4275 lt!1685580))))))

(declare-fun b!4507057 () Bool)

(assert (=> b!4507057 (= e!2807735 (forall!10201 (t!357657 (toList!4275 lt!1685580)) lambda!169765))))

(assert (= (and d!1385539 (not res!1874312)) b!4507056))

(assert (= (and b!4507056 res!1874313) b!4507057))

(declare-fun b_lambda!153399 () Bool)

(assert (=> (not b_lambda!153399) (not b!4507056)))

(declare-fun m!5243735 () Bool)

(assert (=> b!4507056 m!5243735))

(declare-fun m!5243737 () Bool)

(assert (=> b!4507057 m!5243737))

(assert (=> d!1385325 d!1385539))

(declare-fun d!1385541 () Bool)

(assert (=> d!1385541 (= (get!16538 (getValueByKey!1044 (toList!4275 lm!1477) hash!344)) (v!44591 (getValueByKey!1044 (toList!4275 lm!1477) hash!344)))))

(assert (=> d!1385255 d!1385541))

(declare-fun b!4507059 () Bool)

(declare-fun e!2807736 () Option!11064)

(declare-fun e!2807737 () Option!11064)

(assert (=> b!4507059 (= e!2807736 e!2807737)))

(declare-fun c!768641 () Bool)

(assert (=> b!4507059 (= c!768641 (and ((_ is Cons!50571) (toList!4275 lm!1477)) (not (= (_1!28780 (h!56400 (toList!4275 lm!1477))) hash!344))))))

(declare-fun b!4507058 () Bool)

(assert (=> b!4507058 (= e!2807736 (Some!11063 (_2!28780 (h!56400 (toList!4275 lm!1477)))))))

(declare-fun d!1385543 () Bool)

(declare-fun c!768640 () Bool)

(assert (=> d!1385543 (= c!768640 (and ((_ is Cons!50571) (toList!4275 lm!1477)) (= (_1!28780 (h!56400 (toList!4275 lm!1477))) hash!344)))))

(assert (=> d!1385543 (= (getValueByKey!1044 (toList!4275 lm!1477) hash!344) e!2807736)))

(declare-fun b!4507061 () Bool)

(assert (=> b!4507061 (= e!2807737 None!11063)))

(declare-fun b!4507060 () Bool)

(assert (=> b!4507060 (= e!2807737 (getValueByKey!1044 (t!357657 (toList!4275 lm!1477)) hash!344))))

(assert (= (and d!1385543 c!768640) b!4507058))

(assert (= (and d!1385543 (not c!768640)) b!4507059))

(assert (= (and b!4507059 c!768641) b!4507060))

(assert (= (and b!4507059 (not c!768641)) b!4507061))

(declare-fun m!5243739 () Bool)

(assert (=> b!4507060 m!5243739))

(assert (=> d!1385255 d!1385543))

(declare-fun b!4507083 () Bool)

(assert (=> b!4507083 true))

(declare-fun bs!844264 () Bool)

(declare-fun b!4507080 () Bool)

(assert (= bs!844264 (and b!4507080 b!4507083)))

(declare-fun lambda!169840 () Int)

(declare-fun lambda!169839 () Int)

(assert (=> bs!844264 (= (= (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574))) (t!357656 (toList!4276 lt!1685574))) (= lambda!169840 lambda!169839))))

(assert (=> b!4507080 true))

(declare-fun bs!844265 () Bool)

(declare-fun b!4507084 () Bool)

(assert (= bs!844265 (and b!4507084 b!4507083)))

(declare-fun lambda!169841 () Int)

(assert (=> bs!844265 (= (= (toList!4276 lt!1685574) (t!357656 (toList!4276 lt!1685574))) (= lambda!169841 lambda!169839))))

(declare-fun bs!844266 () Bool)

(assert (= bs!844266 (and b!4507084 b!4507080)))

(assert (=> bs!844266 (= (= (toList!4276 lt!1685574) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169841 lambda!169840))))

(assert (=> b!4507084 true))

(declare-fun e!2807748 () List!50697)

(assert (=> b!4507080 (= e!2807748 (Cons!50573 (_1!28779 (h!56399 (toList!4276 lt!1685574))) (getKeysList!441 (t!357656 (toList!4276 lt!1685574)))))))

(declare-fun c!768650 () Bool)

(assert (=> b!4507080 (= c!768650 (containsKey!1709 (t!357656 (toList!4276 lt!1685574)) (_1!28779 (h!56399 (toList!4276 lt!1685574)))))))

(declare-fun lt!1685962 () Unit!92894)

(declare-fun e!2807749 () Unit!92894)

(assert (=> b!4507080 (= lt!1685962 e!2807749)))

(declare-fun c!768649 () Bool)

(assert (=> b!4507080 (= c!768649 (contains!13261 (getKeysList!441 (t!357656 (toList!4276 lt!1685574))) (_1!28779 (h!56399 (toList!4276 lt!1685574)))))))

(declare-fun lt!1685964 () Unit!92894)

(declare-fun e!2807747 () Unit!92894)

(assert (=> b!4507080 (= lt!1685964 e!2807747)))

(declare-fun lt!1685963 () List!50697)

(assert (=> b!4507080 (= lt!1685963 (getKeysList!441 (t!357656 (toList!4276 lt!1685574))))))

(declare-fun lt!1685959 () Unit!92894)

(declare-fun lemmaForallContainsAddHeadPreserves!156 (List!50694 List!50697 tuple2!50970) Unit!92894)

(assert (=> b!4507080 (= lt!1685959 (lemmaForallContainsAddHeadPreserves!156 (t!357656 (toList!4276 lt!1685574)) lt!1685963 (h!56399 (toList!4276 lt!1685574))))))

(declare-fun forall!10205 (List!50697 Int) Bool)

(assert (=> b!4507080 (forall!10205 lt!1685963 lambda!169840)))

(declare-fun lt!1685958 () Unit!92894)

(assert (=> b!4507080 (= lt!1685958 lt!1685959)))

(declare-fun b!4507081 () Bool)

(assert (=> b!4507081 (= e!2807748 Nil!50573)))

(declare-fun b!4507082 () Bool)

(declare-fun lambda!169842 () Int)

(declare-fun e!2807746 () Bool)

(declare-fun lt!1685960 () List!50697)

(declare-fun map!11114 (List!50694 Int) List!50697)

(assert (=> b!4507082 (= e!2807746 (= (content!8286 lt!1685960) (content!8286 (map!11114 (toList!4276 lt!1685574) lambda!169842))))))

(assert (=> b!4507083 false))

(declare-fun lt!1685961 () Unit!92894)

(declare-fun forallContained!2455 (List!50697 Int K!11975) Unit!92894)

(assert (=> b!4507083 (= lt!1685961 (forallContained!2455 (getKeysList!441 (t!357656 (toList!4276 lt!1685574))) lambda!169839 (_1!28779 (h!56399 (toList!4276 lt!1685574)))))))

(declare-fun Unit!92927 () Unit!92894)

(assert (=> b!4507083 (= e!2807747 Unit!92927)))

(declare-fun res!1874322 () Bool)

(assert (=> b!4507084 (=> (not res!1874322) (not e!2807746))))

(assert (=> b!4507084 (= res!1874322 (forall!10205 lt!1685960 lambda!169841))))

(declare-fun d!1385545 () Bool)

(assert (=> d!1385545 e!2807746))

(declare-fun res!1874321 () Bool)

(assert (=> d!1385545 (=> (not res!1874321) (not e!2807746))))

(declare-fun noDuplicate!736 (List!50697) Bool)

(assert (=> d!1385545 (= res!1874321 (noDuplicate!736 lt!1685960))))

(assert (=> d!1385545 (= lt!1685960 e!2807748)))

(declare-fun c!768648 () Bool)

(assert (=> d!1385545 (= c!768648 ((_ is Cons!50570) (toList!4276 lt!1685574)))))

(assert (=> d!1385545 (invariantList!993 (toList!4276 lt!1685574))))

(assert (=> d!1385545 (= (getKeysList!441 (toList!4276 lt!1685574)) lt!1685960)))

(declare-fun b!4507085 () Bool)

(declare-fun Unit!92928 () Unit!92894)

(assert (=> b!4507085 (= e!2807747 Unit!92928)))

(declare-fun b!4507086 () Bool)

(declare-fun Unit!92929 () Unit!92894)

(assert (=> b!4507086 (= e!2807749 Unit!92929)))

(declare-fun b!4507087 () Bool)

(assert (=> b!4507087 false))

(declare-fun Unit!92930 () Unit!92894)

(assert (=> b!4507087 (= e!2807749 Unit!92930)))

(declare-fun b!4507088 () Bool)

(declare-fun res!1874320 () Bool)

(assert (=> b!4507088 (=> (not res!1874320) (not e!2807746))))

(declare-fun length!328 (List!50697) Int)

(declare-fun length!329 (List!50694) Int)

(assert (=> b!4507088 (= res!1874320 (= (length!328 lt!1685960) (length!329 (toList!4276 lt!1685574))))))

(assert (= (and d!1385545 c!768648) b!4507080))

(assert (= (and d!1385545 (not c!768648)) b!4507081))

(assert (= (and b!4507080 c!768650) b!4507087))

(assert (= (and b!4507080 (not c!768650)) b!4507086))

(assert (= (and b!4507080 c!768649) b!4507083))

(assert (= (and b!4507080 (not c!768649)) b!4507085))

(assert (= (and d!1385545 res!1874321) b!4507088))

(assert (= (and b!4507088 res!1874320) b!4507084))

(assert (= (and b!4507084 res!1874322) b!4507082))

(declare-fun m!5243741 () Bool)

(assert (=> b!4507083 m!5243741))

(assert (=> b!4507083 m!5243741))

(declare-fun m!5243743 () Bool)

(assert (=> b!4507083 m!5243743))

(assert (=> b!4507080 m!5243741))

(declare-fun m!5243745 () Bool)

(assert (=> b!4507080 m!5243745))

(assert (=> b!4507080 m!5243741))

(declare-fun m!5243747 () Bool)

(assert (=> b!4507080 m!5243747))

(declare-fun m!5243749 () Bool)

(assert (=> b!4507080 m!5243749))

(declare-fun m!5243751 () Bool)

(assert (=> b!4507080 m!5243751))

(declare-fun m!5243753 () Bool)

(assert (=> b!4507082 m!5243753))

(declare-fun m!5243755 () Bool)

(assert (=> b!4507082 m!5243755))

(assert (=> b!4507082 m!5243755))

(declare-fun m!5243757 () Bool)

(assert (=> b!4507082 m!5243757))

(declare-fun m!5243759 () Bool)

(assert (=> b!4507084 m!5243759))

(declare-fun m!5243761 () Bool)

(assert (=> b!4507088 m!5243761))

(declare-fun m!5243763 () Bool)

(assert (=> b!4507088 m!5243763))

(declare-fun m!5243765 () Bool)

(assert (=> d!1385545 m!5243765))

(declare-fun m!5243767 () Bool)

(assert (=> d!1385545 m!5243767))

(assert (=> b!4506752 d!1385545))

(assert (=> b!4506713 d!1385453))

(assert (=> b!4506713 d!1385455))

(assert (=> d!1385317 d!1385447))

(declare-fun d!1385547 () Bool)

(declare-fun c!768653 () Bool)

(assert (=> d!1385547 (= c!768653 ((_ is Nil!50573) (keys!17544 lt!1685586)))))

(declare-fun e!2807752 () (InoxSet K!11975))

(assert (=> d!1385547 (= (content!8286 (keys!17544 lt!1685586)) e!2807752)))

(declare-fun b!4507095 () Bool)

(assert (=> b!4507095 (= e!2807752 ((as const (Array K!11975 Bool)) false))))

(declare-fun b!4507096 () Bool)

(assert (=> b!4507096 (= e!2807752 ((_ map or) (store ((as const (Array K!11975 Bool)) false) (h!56404 (keys!17544 lt!1685586)) true) (content!8286 (t!357659 (keys!17544 lt!1685586)))))))

(assert (= (and d!1385547 c!768653) b!4507095))

(assert (= (and d!1385547 (not c!768653)) b!4507096))

(declare-fun m!5243769 () Bool)

(assert (=> b!4507096 m!5243769))

(declare-fun m!5243771 () Bool)

(assert (=> b!4507096 m!5243771))

(assert (=> b!4506812 d!1385547))

(declare-fun bs!844267 () Bool)

(declare-fun b!4507104 () Bool)

(assert (= bs!844267 (and b!4507104 b!4507083)))

(declare-fun lambda!169847 () Int)

(assert (=> bs!844267 (= (= (toList!4276 lt!1685586) (t!357656 (toList!4276 lt!1685574))) (= lambda!169847 lambda!169839))))

(declare-fun bs!844268 () Bool)

(assert (= bs!844268 (and b!4507104 b!4507080)))

(assert (=> bs!844268 (= (= (toList!4276 lt!1685586) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169847 lambda!169840))))

(declare-fun bs!844269 () Bool)

(assert (= bs!844269 (and b!4507104 b!4507084)))

(assert (=> bs!844269 (= (= (toList!4276 lt!1685586) (toList!4276 lt!1685574)) (= lambda!169847 lambda!169841))))

(assert (=> b!4507104 true))

(declare-fun bs!844270 () Bool)

(declare-fun b!4507105 () Bool)

(assert (= bs!844270 (and b!4507105 b!4507082)))

(declare-fun lambda!169848 () Int)

(assert (=> bs!844270 (= lambda!169848 lambda!169842)))

(declare-fun d!1385549 () Bool)

(declare-fun e!2807755 () Bool)

(assert (=> d!1385549 e!2807755))

(declare-fun res!1874329 () Bool)

(assert (=> d!1385549 (=> (not res!1874329) (not e!2807755))))

(declare-fun lt!1685967 () List!50697)

(assert (=> d!1385549 (= res!1874329 (noDuplicate!736 lt!1685967))))

(assert (=> d!1385549 (= lt!1685967 (getKeysList!441 (toList!4276 lt!1685586)))))

(assert (=> d!1385549 (= (keys!17544 lt!1685586) lt!1685967)))

(declare-fun b!4507103 () Bool)

(declare-fun res!1874330 () Bool)

(assert (=> b!4507103 (=> (not res!1874330) (not e!2807755))))

(assert (=> b!4507103 (= res!1874330 (= (length!328 lt!1685967) (length!329 (toList!4276 lt!1685586))))))

(declare-fun res!1874331 () Bool)

(assert (=> b!4507104 (=> (not res!1874331) (not e!2807755))))

(assert (=> b!4507104 (= res!1874331 (forall!10205 lt!1685967 lambda!169847))))

(assert (=> b!4507105 (= e!2807755 (= (content!8286 lt!1685967) (content!8286 (map!11114 (toList!4276 lt!1685586) lambda!169848))))))

(assert (= (and d!1385549 res!1874329) b!4507103))

(assert (= (and b!4507103 res!1874330) b!4507104))

(assert (= (and b!4507104 res!1874331) b!4507105))

(declare-fun m!5243773 () Bool)

(assert (=> d!1385549 m!5243773))

(assert (=> d!1385549 m!5243127))

(declare-fun m!5243775 () Bool)

(assert (=> b!4507103 m!5243775))

(declare-fun m!5243777 () Bool)

(assert (=> b!4507103 m!5243777))

(declare-fun m!5243779 () Bool)

(assert (=> b!4507104 m!5243779))

(declare-fun m!5243781 () Bool)

(assert (=> b!4507105 m!5243781))

(declare-fun m!5243783 () Bool)

(assert (=> b!4507105 m!5243783))

(assert (=> b!4507105 m!5243783))

(declare-fun m!5243785 () Bool)

(assert (=> b!4507105 m!5243785))

(assert (=> b!4506812 d!1385549))

(declare-fun d!1385551 () Bool)

(declare-fun c!768654 () Bool)

(assert (=> d!1385551 (= c!768654 ((_ is Nil!50573) (keys!17544 lt!1685795)))))

(declare-fun e!2807756 () (InoxSet K!11975))

(assert (=> d!1385551 (= (content!8286 (keys!17544 lt!1685795)) e!2807756)))

(declare-fun b!4507108 () Bool)

(assert (=> b!4507108 (= e!2807756 ((as const (Array K!11975 Bool)) false))))

(declare-fun b!4507109 () Bool)

(assert (=> b!4507109 (= e!2807756 ((_ map or) (store ((as const (Array K!11975 Bool)) false) (h!56404 (keys!17544 lt!1685795)) true) (content!8286 (t!357659 (keys!17544 lt!1685795)))))))

(assert (= (and d!1385551 c!768654) b!4507108))

(assert (= (and d!1385551 (not c!768654)) b!4507109))

(declare-fun m!5243787 () Bool)

(assert (=> b!4507109 m!5243787))

(declare-fun m!5243789 () Bool)

(assert (=> b!4507109 m!5243789))

(assert (=> b!4506812 d!1385551))

(declare-fun bs!844271 () Bool)

(declare-fun b!4507111 () Bool)

(assert (= bs!844271 (and b!4507111 b!4507083)))

(declare-fun lambda!169849 () Int)

(assert (=> bs!844271 (= (= (toList!4276 lt!1685795) (t!357656 (toList!4276 lt!1685574))) (= lambda!169849 lambda!169839))))

(declare-fun bs!844272 () Bool)

(assert (= bs!844272 (and b!4507111 b!4507080)))

(assert (=> bs!844272 (= (= (toList!4276 lt!1685795) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169849 lambda!169840))))

(declare-fun bs!844273 () Bool)

(assert (= bs!844273 (and b!4507111 b!4507084)))

(assert (=> bs!844273 (= (= (toList!4276 lt!1685795) (toList!4276 lt!1685574)) (= lambda!169849 lambda!169841))))

(declare-fun bs!844274 () Bool)

(assert (= bs!844274 (and b!4507111 b!4507104)))

(assert (=> bs!844274 (= (= (toList!4276 lt!1685795) (toList!4276 lt!1685586)) (= lambda!169849 lambda!169847))))

(assert (=> b!4507111 true))

(declare-fun bs!844275 () Bool)

(declare-fun b!4507112 () Bool)

(assert (= bs!844275 (and b!4507112 b!4507082)))

(declare-fun lambda!169850 () Int)

(assert (=> bs!844275 (= lambda!169850 lambda!169842)))

(declare-fun bs!844276 () Bool)

(assert (= bs!844276 (and b!4507112 b!4507105)))

(assert (=> bs!844276 (= lambda!169850 lambda!169848)))

(declare-fun d!1385553 () Bool)

(declare-fun e!2807757 () Bool)

(assert (=> d!1385553 e!2807757))

(declare-fun res!1874332 () Bool)

(assert (=> d!1385553 (=> (not res!1874332) (not e!2807757))))

(declare-fun lt!1685968 () List!50697)

(assert (=> d!1385553 (= res!1874332 (noDuplicate!736 lt!1685968))))

(assert (=> d!1385553 (= lt!1685968 (getKeysList!441 (toList!4276 lt!1685795)))))

(assert (=> d!1385553 (= (keys!17544 lt!1685795) lt!1685968)))

(declare-fun b!4507110 () Bool)

(declare-fun res!1874333 () Bool)

(assert (=> b!4507110 (=> (not res!1874333) (not e!2807757))))

(assert (=> b!4507110 (= res!1874333 (= (length!328 lt!1685968) (length!329 (toList!4276 lt!1685795))))))

(declare-fun res!1874334 () Bool)

(assert (=> b!4507111 (=> (not res!1874334) (not e!2807757))))

(assert (=> b!4507111 (= res!1874334 (forall!10205 lt!1685968 lambda!169849))))

(assert (=> b!4507112 (= e!2807757 (= (content!8286 lt!1685968) (content!8286 (map!11114 (toList!4276 lt!1685795) lambda!169850))))))

(assert (= (and d!1385553 res!1874332) b!4507110))

(assert (= (and b!4507110 res!1874333) b!4507111))

(assert (= (and b!4507111 res!1874334) b!4507112))

(declare-fun m!5243791 () Bool)

(assert (=> d!1385553 m!5243791))

(declare-fun m!5243793 () Bool)

(assert (=> d!1385553 m!5243793))

(declare-fun m!5243795 () Bool)

(assert (=> b!4507110 m!5243795))

(declare-fun m!5243797 () Bool)

(assert (=> b!4507110 m!5243797))

(declare-fun m!5243799 () Bool)

(assert (=> b!4507111 m!5243799))

(declare-fun m!5243801 () Bool)

(assert (=> b!4507112 m!5243801))

(declare-fun m!5243803 () Bool)

(assert (=> b!4507112 m!5243803))

(assert (=> b!4507112 m!5243803))

(declare-fun m!5243805 () Bool)

(assert (=> b!4507112 m!5243805))

(assert (=> b!4506812 d!1385553))

(declare-fun d!1385555 () Bool)

(declare-fun c!768657 () Bool)

(assert (=> d!1385555 (= c!768657 ((_ is Nil!50571) (t!357657 (toList!4275 lm!1477))))))

(declare-fun e!2807760 () (InoxSet tuple2!50972))

(assert (=> d!1385555 (= (content!8283 (t!357657 (toList!4275 lm!1477))) e!2807760)))

(declare-fun b!4507117 () Bool)

(assert (=> b!4507117 (= e!2807760 ((as const (Array tuple2!50972 Bool)) false))))

(declare-fun b!4507118 () Bool)

(assert (=> b!4507118 (= e!2807760 ((_ map or) (store ((as const (Array tuple2!50972 Bool)) false) (h!56400 (t!357657 (toList!4275 lm!1477))) true) (content!8283 (t!357657 (t!357657 (toList!4275 lm!1477))))))))

(assert (= (and d!1385555 c!768657) b!4507117))

(assert (= (and d!1385555 (not c!768657)) b!4507118))

(declare-fun m!5243807 () Bool)

(assert (=> b!4507118 m!5243807))

(declare-fun m!5243809 () Bool)

(assert (=> b!4507118 m!5243809))

(assert (=> d!1385353 d!1385555))

(declare-fun d!1385557 () Bool)

(assert (=> d!1385557 (= (invariantList!993 (toList!4276 lt!1685715)) (noDuplicatedKeys!250 (toList!4276 lt!1685715)))))

(declare-fun bs!844277 () Bool)

(assert (= bs!844277 d!1385557))

(declare-fun m!5243811 () Bool)

(assert (=> bs!844277 m!5243811))

(assert (=> d!1385313 d!1385557))

(declare-fun d!1385559 () Bool)

(declare-fun res!1874335 () Bool)

(declare-fun e!2807761 () Bool)

(assert (=> d!1385559 (=> res!1874335 e!2807761)))

(assert (=> d!1385559 (= res!1874335 ((_ is Nil!50571) (t!357657 (toList!4275 lm!1477))))))

(assert (=> d!1385559 (= (forall!10201 (t!357657 (toList!4275 lm!1477)) lambda!169757) e!2807761)))

(declare-fun b!4507119 () Bool)

(declare-fun e!2807762 () Bool)

(assert (=> b!4507119 (= e!2807761 e!2807762)))

(declare-fun res!1874336 () Bool)

(assert (=> b!4507119 (=> (not res!1874336) (not e!2807762))))

(assert (=> b!4507119 (= res!1874336 (dynLambda!21126 lambda!169757 (h!56400 (t!357657 (toList!4275 lm!1477)))))))

(declare-fun b!4507120 () Bool)

(assert (=> b!4507120 (= e!2807762 (forall!10201 (t!357657 (t!357657 (toList!4275 lm!1477))) lambda!169757))))

(assert (= (and d!1385559 (not res!1874335)) b!4507119))

(assert (= (and b!4507119 res!1874336) b!4507120))

(declare-fun b_lambda!153401 () Bool)

(assert (=> (not b_lambda!153401) (not b!4507119)))

(declare-fun m!5243813 () Bool)

(assert (=> b!4507119 m!5243813))

(declare-fun m!5243815 () Bool)

(assert (=> b!4507120 m!5243815))

(assert (=> d!1385313 d!1385559))

(declare-fun d!1385561 () Bool)

(declare-fun lt!1685971 () Bool)

(assert (=> d!1385561 (= lt!1685971 (select (content!8286 (keys!17544 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) key!3287))))

(declare-fun e!2807768 () Bool)

(assert (=> d!1385561 (= lt!1685971 e!2807768)))

(declare-fun res!1874341 () Bool)

(assert (=> d!1385561 (=> (not res!1874341) (not e!2807768))))

(assert (=> d!1385561 (= res!1874341 ((_ is Cons!50573) (keys!17544 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))

(assert (=> d!1385561 (= (contains!13261 (keys!17544 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287) lt!1685971)))

(declare-fun b!4507125 () Bool)

(declare-fun e!2807767 () Bool)

(assert (=> b!4507125 (= e!2807768 e!2807767)))

(declare-fun res!1874342 () Bool)

(assert (=> b!4507125 (=> res!1874342 e!2807767)))

(assert (=> b!4507125 (= res!1874342 (= (h!56404 (keys!17544 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) key!3287))))

(declare-fun b!4507126 () Bool)

(assert (=> b!4507126 (= e!2807767 (contains!13261 (t!357659 (keys!17544 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) key!3287))))

(assert (= (and d!1385561 res!1874341) b!4507125))

(assert (= (and b!4507125 (not res!1874342)) b!4507126))

(assert (=> d!1385561 m!5243075))

(declare-fun m!5243817 () Bool)

(assert (=> d!1385561 m!5243817))

(declare-fun m!5243819 () Bool)

(assert (=> d!1385561 m!5243819))

(declare-fun m!5243821 () Bool)

(assert (=> b!4507126 m!5243821))

(assert (=> b!4506691 d!1385561))

(declare-fun bs!844278 () Bool)

(declare-fun b!4507128 () Bool)

(assert (= bs!844278 (and b!4507128 b!4507080)))

(declare-fun lambda!169851 () Int)

(assert (=> bs!844278 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169851 lambda!169840))))

(declare-fun bs!844279 () Bool)

(assert (= bs!844279 (and b!4507128 b!4507083)))

(assert (=> bs!844279 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (t!357656 (toList!4276 lt!1685574))) (= lambda!169851 lambda!169839))))

(declare-fun bs!844280 () Bool)

(assert (= bs!844280 (and b!4507128 b!4507084)))

(assert (=> bs!844280 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (toList!4276 lt!1685574)) (= lambda!169851 lambda!169841))))

(declare-fun bs!844281 () Bool)

(assert (= bs!844281 (and b!4507128 b!4507111)))

(assert (=> bs!844281 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (toList!4276 lt!1685795)) (= lambda!169851 lambda!169849))))

(declare-fun bs!844282 () Bool)

(assert (= bs!844282 (and b!4507128 b!4507104)))

(assert (=> bs!844282 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (toList!4276 lt!1685586)) (= lambda!169851 lambda!169847))))

(assert (=> b!4507128 true))

(declare-fun bs!844283 () Bool)

(declare-fun b!4507129 () Bool)

(assert (= bs!844283 (and b!4507129 b!4507082)))

(declare-fun lambda!169852 () Int)

(assert (=> bs!844283 (= lambda!169852 lambda!169842)))

(declare-fun bs!844284 () Bool)

(assert (= bs!844284 (and b!4507129 b!4507105)))

(assert (=> bs!844284 (= lambda!169852 lambda!169848)))

(declare-fun bs!844285 () Bool)

(assert (= bs!844285 (and b!4507129 b!4507112)))

(assert (=> bs!844285 (= lambda!169852 lambda!169850)))

(declare-fun d!1385563 () Bool)

(declare-fun e!2807769 () Bool)

(assert (=> d!1385563 e!2807769))

(declare-fun res!1874343 () Bool)

(assert (=> d!1385563 (=> (not res!1874343) (not e!2807769))))

(declare-fun lt!1685972 () List!50697)

(assert (=> d!1385563 (= res!1874343 (noDuplicate!736 lt!1685972))))

(assert (=> d!1385563 (= lt!1685972 (getKeysList!441 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))

(assert (=> d!1385563 (= (keys!17544 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) lt!1685972)))

(declare-fun b!4507127 () Bool)

(declare-fun res!1874344 () Bool)

(assert (=> b!4507127 (=> (not res!1874344) (not e!2807769))))

(assert (=> b!4507127 (= res!1874344 (= (length!328 lt!1685972) (length!329 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))))

(declare-fun res!1874345 () Bool)

(assert (=> b!4507128 (=> (not res!1874345) (not e!2807769))))

(assert (=> b!4507128 (= res!1874345 (forall!10205 lt!1685972 lambda!169851))))

(assert (=> b!4507129 (= e!2807769 (= (content!8286 lt!1685972) (content!8286 (map!11114 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) lambda!169852))))))

(assert (= (and d!1385563 res!1874343) b!4507127))

(assert (= (and b!4507127 res!1874344) b!4507128))

(assert (= (and b!4507128 res!1874345) b!4507129))

(declare-fun m!5243823 () Bool)

(assert (=> d!1385563 m!5243823))

(assert (=> d!1385563 m!5243069))

(declare-fun m!5243825 () Bool)

(assert (=> b!4507127 m!5243825))

(declare-fun m!5243827 () Bool)

(assert (=> b!4507127 m!5243827))

(declare-fun m!5243829 () Bool)

(assert (=> b!4507128 m!5243829))

(declare-fun m!5243831 () Bool)

(assert (=> b!4507129 m!5243831))

(declare-fun m!5243833 () Bool)

(assert (=> b!4507129 m!5243833))

(assert (=> b!4507129 m!5243833))

(declare-fun m!5243835 () Bool)

(assert (=> b!4507129 m!5243835))

(assert (=> b!4506691 d!1385563))

(declare-fun d!1385565 () Bool)

(assert (=> d!1385565 (isDefined!8350 (getValueByKey!1044 (toList!4275 lm!1477) lt!1685583))))

(declare-fun lt!1685975 () Unit!92894)

(declare-fun choose!29242 (List!50695 (_ BitVec 64)) Unit!92894)

(assert (=> d!1385565 (= lt!1685975 (choose!29242 (toList!4275 lm!1477) lt!1685583))))

(declare-fun e!2807772 () Bool)

(assert (=> d!1385565 e!2807772))

(declare-fun res!1874348 () Bool)

(assert (=> d!1385565 (=> (not res!1874348) (not e!2807772))))

(assert (=> d!1385565 (= res!1874348 (isStrictlySorted!406 (toList!4275 lm!1477)))))

(assert (=> d!1385565 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!947 (toList!4275 lm!1477) lt!1685583) lt!1685975)))

(declare-fun b!4507132 () Bool)

(assert (=> b!4507132 (= e!2807772 (containsKey!1708 (toList!4275 lm!1477) lt!1685583))))

(assert (= (and d!1385565 res!1874348) b!4507132))

(assert (=> d!1385565 m!5242965))

(assert (=> d!1385565 m!5242965))

(assert (=> d!1385565 m!5242967))

(declare-fun m!5243837 () Bool)

(assert (=> d!1385565 m!5243837))

(assert (=> d!1385565 m!5242877))

(assert (=> b!4507132 m!5242961))

(assert (=> b!4506631 d!1385565))

(declare-fun d!1385567 () Bool)

(declare-fun isEmpty!28624 (Option!11064) Bool)

(assert (=> d!1385567 (= (isDefined!8350 (getValueByKey!1044 (toList!4275 lm!1477) lt!1685583)) (not (isEmpty!28624 (getValueByKey!1044 (toList!4275 lm!1477) lt!1685583))))))

(declare-fun bs!844286 () Bool)

(assert (= bs!844286 d!1385567))

(assert (=> bs!844286 m!5242965))

(declare-fun m!5243839 () Bool)

(assert (=> bs!844286 m!5243839))

(assert (=> b!4506631 d!1385567))

(declare-fun b!4507134 () Bool)

(declare-fun e!2807773 () Option!11064)

(declare-fun e!2807774 () Option!11064)

(assert (=> b!4507134 (= e!2807773 e!2807774)))

(declare-fun c!768659 () Bool)

(assert (=> b!4507134 (= c!768659 (and ((_ is Cons!50571) (toList!4275 lm!1477)) (not (= (_1!28780 (h!56400 (toList!4275 lm!1477))) lt!1685583))))))

(declare-fun b!4507133 () Bool)

(assert (=> b!4507133 (= e!2807773 (Some!11063 (_2!28780 (h!56400 (toList!4275 lm!1477)))))))

(declare-fun d!1385569 () Bool)

(declare-fun c!768658 () Bool)

(assert (=> d!1385569 (= c!768658 (and ((_ is Cons!50571) (toList!4275 lm!1477)) (= (_1!28780 (h!56400 (toList!4275 lm!1477))) lt!1685583)))))

(assert (=> d!1385569 (= (getValueByKey!1044 (toList!4275 lm!1477) lt!1685583) e!2807773)))

(declare-fun b!4507136 () Bool)

(assert (=> b!4507136 (= e!2807774 None!11063)))

(declare-fun b!4507135 () Bool)

(assert (=> b!4507135 (= e!2807774 (getValueByKey!1044 (t!357657 (toList!4275 lm!1477)) lt!1685583))))

(assert (= (and d!1385569 c!768658) b!4507133))

(assert (= (and d!1385569 (not c!768658)) b!4507134))

(assert (= (and b!4507134 c!768659) b!4507135))

(assert (= (and b!4507134 (not c!768659)) b!4507136))

(declare-fun m!5243841 () Bool)

(assert (=> b!4507135 m!5243841))

(assert (=> b!4506631 d!1385569))

(declare-fun d!1385571 () Bool)

(declare-fun res!1874349 () Bool)

(declare-fun e!2807775 () Bool)

(assert (=> d!1385571 (=> res!1874349 e!2807775)))

(assert (=> d!1385571 (= res!1874349 (and ((_ is Cons!50570) (_2!28780 (h!56400 (toList!4275 lt!1685580)))) (= (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685580))))) key!3287)))))

(assert (=> d!1385571 (= (containsKey!1706 (_2!28780 (h!56400 (toList!4275 lt!1685580))) key!3287) e!2807775)))

(declare-fun b!4507137 () Bool)

(declare-fun e!2807776 () Bool)

(assert (=> b!4507137 (= e!2807775 e!2807776)))

(declare-fun res!1874350 () Bool)

(assert (=> b!4507137 (=> (not res!1874350) (not e!2807776))))

(assert (=> b!4507137 (= res!1874350 ((_ is Cons!50570) (_2!28780 (h!56400 (toList!4275 lt!1685580)))))))

(declare-fun b!4507138 () Bool)

(assert (=> b!4507138 (= e!2807776 (containsKey!1706 (t!357656 (_2!28780 (h!56400 (toList!4275 lt!1685580)))) key!3287))))

(assert (= (and d!1385571 (not res!1874349)) b!4507137))

(assert (= (and b!4507137 res!1874350) b!4507138))

(declare-fun m!5243843 () Bool)

(assert (=> b!4507138 m!5243843))

(assert (=> b!4506797 d!1385571))

(declare-fun d!1385573 () Bool)

(assert (=> d!1385573 (= (tail!7686 (toList!4275 lm!1477)) (t!357657 (toList!4275 lm!1477)))))

(assert (=> d!1385363 d!1385573))

(declare-fun d!1385575 () Bool)

(declare-fun res!1874355 () Bool)

(declare-fun e!2807781 () Bool)

(assert (=> d!1385575 (=> res!1874355 e!2807781)))

(assert (=> d!1385575 (= res!1874355 (and ((_ is Cons!50571) (toList!4275 lt!1685580)) (= (_1!28780 (h!56400 (toList!4275 lt!1685580))) hash!344)))))

(assert (=> d!1385575 (= (containsKey!1708 (toList!4275 lt!1685580) hash!344) e!2807781)))

(declare-fun b!4507143 () Bool)

(declare-fun e!2807782 () Bool)

(assert (=> b!4507143 (= e!2807781 e!2807782)))

(declare-fun res!1874356 () Bool)

(assert (=> b!4507143 (=> (not res!1874356) (not e!2807782))))

(assert (=> b!4507143 (= res!1874356 (and (or (not ((_ is Cons!50571) (toList!4275 lt!1685580))) (bvsle (_1!28780 (h!56400 (toList!4275 lt!1685580))) hash!344)) ((_ is Cons!50571) (toList!4275 lt!1685580)) (bvslt (_1!28780 (h!56400 (toList!4275 lt!1685580))) hash!344)))))

(declare-fun b!4507144 () Bool)

(assert (=> b!4507144 (= e!2807782 (containsKey!1708 (t!357657 (toList!4275 lt!1685580)) hash!344))))

(assert (= (and d!1385575 (not res!1874355)) b!4507143))

(assert (= (and b!4507143 res!1874356) b!4507144))

(declare-fun m!5243845 () Bool)

(assert (=> b!4507144 m!5243845))

(assert (=> d!1385361 d!1385575))

(declare-fun d!1385577 () Bool)

(declare-fun res!1874357 () Bool)

(declare-fun e!2807783 () Bool)

(assert (=> d!1385577 (=> res!1874357 e!2807783)))

(assert (=> d!1385577 (= res!1874357 (not ((_ is Cons!50570) (t!357656 (_2!28780 lt!1685576)))))))

(assert (=> d!1385577 (= (noDuplicateKeys!1134 (t!357656 (_2!28780 lt!1685576))) e!2807783)))

(declare-fun b!4507145 () Bool)

(declare-fun e!2807784 () Bool)

(assert (=> b!4507145 (= e!2807783 e!2807784)))

(declare-fun res!1874358 () Bool)

(assert (=> b!4507145 (=> (not res!1874358) (not e!2807784))))

(assert (=> b!4507145 (= res!1874358 (not (containsKey!1706 (t!357656 (t!357656 (_2!28780 lt!1685576))) (_1!28779 (h!56399 (t!357656 (_2!28780 lt!1685576)))))))))

(declare-fun b!4507146 () Bool)

(assert (=> b!4507146 (= e!2807784 (noDuplicateKeys!1134 (t!357656 (t!357656 (_2!28780 lt!1685576)))))))

(assert (= (and d!1385577 (not res!1874357)) b!4507145))

(assert (= (and b!4507145 res!1874358) b!4507146))

(declare-fun m!5243847 () Bool)

(assert (=> b!4507145 m!5243847))

(declare-fun m!5243849 () Bool)

(assert (=> b!4507146 m!5243849))

(assert (=> b!4506854 d!1385577))

(declare-fun lt!1685976 () Bool)

(declare-fun d!1385579 () Bool)

(assert (=> d!1385579 (= lt!1685976 (select (content!8283 (toList!4275 lm!1477)) (tuple2!50973 hash!344 lt!1685570)))))

(declare-fun e!2807785 () Bool)

(assert (=> d!1385579 (= lt!1685976 e!2807785)))

(declare-fun res!1874359 () Bool)

(assert (=> d!1385579 (=> (not res!1874359) (not e!2807785))))

(assert (=> d!1385579 (= res!1874359 ((_ is Cons!50571) (toList!4275 lm!1477)))))

(assert (=> d!1385579 (= (contains!13258 (toList!4275 lm!1477) (tuple2!50973 hash!344 lt!1685570)) lt!1685976)))

(declare-fun b!4507147 () Bool)

(declare-fun e!2807786 () Bool)

(assert (=> b!4507147 (= e!2807785 e!2807786)))

(declare-fun res!1874360 () Bool)

(assert (=> b!4507147 (=> res!1874360 e!2807786)))

(assert (=> b!4507147 (= res!1874360 (= (h!56400 (toList!4275 lm!1477)) (tuple2!50973 hash!344 lt!1685570)))))

(declare-fun b!4507148 () Bool)

(assert (=> b!4507148 (= e!2807786 (contains!13258 (t!357657 (toList!4275 lm!1477)) (tuple2!50973 hash!344 lt!1685570)))))

(assert (= (and d!1385579 res!1874359) b!4507147))

(assert (= (and b!4507147 (not res!1874360)) b!4507148))

(assert (=> d!1385579 m!5242917))

(declare-fun m!5243851 () Bool)

(assert (=> d!1385579 m!5243851))

(declare-fun m!5243853 () Bool)

(assert (=> b!4507148 m!5243853))

(assert (=> d!1385251 d!1385579))

(declare-fun d!1385581 () Bool)

(assert (=> d!1385581 (contains!13258 (toList!4275 lm!1477) (tuple2!50973 hash!344 lt!1685570))))

(assert (=> d!1385581 true))

(declare-fun _$14!1125 () Unit!92894)

(assert (=> d!1385581 (= (choose!29226 (toList!4275 lm!1477) hash!344 lt!1685570) _$14!1125)))

(declare-fun bs!844287 () Bool)

(assert (= bs!844287 d!1385581))

(assert (=> bs!844287 m!5242873))

(assert (=> d!1385251 d!1385581))

(declare-fun d!1385583 () Bool)

(declare-fun res!1874365 () Bool)

(declare-fun e!2807791 () Bool)

(assert (=> d!1385583 (=> res!1874365 e!2807791)))

(assert (=> d!1385583 (= res!1874365 (or ((_ is Nil!50571) (toList!4275 lm!1477)) ((_ is Nil!50571) (t!357657 (toList!4275 lm!1477)))))))

(assert (=> d!1385583 (= (isStrictlySorted!406 (toList!4275 lm!1477)) e!2807791)))

(declare-fun b!4507153 () Bool)

(declare-fun e!2807792 () Bool)

(assert (=> b!4507153 (= e!2807791 e!2807792)))

(declare-fun res!1874366 () Bool)

(assert (=> b!4507153 (=> (not res!1874366) (not e!2807792))))

(assert (=> b!4507153 (= res!1874366 (bvslt (_1!28780 (h!56400 (toList!4275 lm!1477))) (_1!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))))))

(declare-fun b!4507154 () Bool)

(assert (=> b!4507154 (= e!2807792 (isStrictlySorted!406 (t!357657 (toList!4275 lm!1477))))))

(assert (= (and d!1385583 (not res!1874365)) b!4507153))

(assert (= (and b!4507153 res!1874366) b!4507154))

(declare-fun m!5243855 () Bool)

(assert (=> b!4507154 m!5243855))

(assert (=> d!1385251 d!1385583))

(declare-fun d!1385585 () Bool)

(assert (=> d!1385585 (isDefined!8351 (getValueByKey!1045 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(declare-fun lt!1685977 () Unit!92894)

(assert (=> d!1385585 (= lt!1685977 (choose!29239 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(assert (=> d!1385585 (invariantList!993 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))

(assert (=> d!1385585 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287) lt!1685977)))

(declare-fun bs!844288 () Bool)

(assert (= bs!844288 d!1385585))

(assert (=> bs!844288 m!5243071))

(assert (=> bs!844288 m!5243071))

(assert (=> bs!844288 m!5243073))

(declare-fun m!5243857 () Bool)

(assert (=> bs!844288 m!5243857))

(declare-fun m!5243859 () Bool)

(assert (=> bs!844288 m!5243859))

(assert (=> b!4506698 d!1385585))

(declare-fun d!1385587 () Bool)

(assert (=> d!1385587 (= (isDefined!8351 (getValueByKey!1045 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287)) (not (isEmpty!28622 (getValueByKey!1045 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))))

(declare-fun bs!844289 () Bool)

(assert (= bs!844289 d!1385587))

(assert (=> bs!844289 m!5243071))

(declare-fun m!5243861 () Bool)

(assert (=> bs!844289 m!5243861))

(assert (=> b!4506698 d!1385587))

(declare-fun b!4507156 () Bool)

(declare-fun e!2807793 () Option!11065)

(declare-fun e!2807794 () Option!11065)

(assert (=> b!4507156 (= e!2807793 e!2807794)))

(declare-fun c!768661 () Bool)

(assert (=> b!4507156 (= c!768661 (and ((_ is Cons!50570) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (not (= (_1!28779 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) key!3287))))))

(declare-fun b!4507155 () Bool)

(assert (=> b!4507155 (= e!2807793 (Some!11064 (_2!28779 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))))

(declare-fun b!4507158 () Bool)

(assert (=> b!4507158 (= e!2807794 None!11064)))

(declare-fun b!4507157 () Bool)

(assert (=> b!4507157 (= e!2807794 (getValueByKey!1045 (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) key!3287))))

(declare-fun d!1385589 () Bool)

(declare-fun c!768660 () Bool)

(assert (=> d!1385589 (= c!768660 (and ((_ is Cons!50570) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (= (_1!28779 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) key!3287)))))

(assert (=> d!1385589 (= (getValueByKey!1045 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287) e!2807793)))

(assert (= (and d!1385589 c!768660) b!4507155))

(assert (= (and d!1385589 (not c!768660)) b!4507156))

(assert (= (and b!4507156 c!768661) b!4507157))

(assert (= (and b!4507156 (not c!768661)) b!4507158))

(declare-fun m!5243863 () Bool)

(assert (=> b!4507157 m!5243863))

(assert (=> b!4506698 d!1385589))

(declare-fun d!1385591 () Bool)

(assert (=> d!1385591 (contains!13261 (getKeysList!441 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) key!3287)))

(declare-fun lt!1685978 () Unit!92894)

(assert (=> d!1385591 (= lt!1685978 (choose!29240 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(assert (=> d!1385591 (invariantList!993 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))

(assert (=> d!1385591 (= (lemmaInListThenGetKeysListContains!437 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287) lt!1685978)))

(declare-fun bs!844290 () Bool)

(assert (= bs!844290 d!1385591))

(assert (=> bs!844290 m!5243069))

(assert (=> bs!844290 m!5243069))

(declare-fun m!5243865 () Bool)

(assert (=> bs!844290 m!5243865))

(declare-fun m!5243867 () Bool)

(assert (=> bs!844290 m!5243867))

(assert (=> bs!844290 m!5243859))

(assert (=> b!4506698 d!1385591))

(declare-fun d!1385593 () Bool)

(declare-fun lt!1685979 () Bool)

(assert (=> d!1385593 (= lt!1685979 (select (content!8283 (toList!4275 lt!1685823)) lt!1685589))))

(declare-fun e!2807795 () Bool)

(assert (=> d!1385593 (= lt!1685979 e!2807795)))

(declare-fun res!1874367 () Bool)

(assert (=> d!1385593 (=> (not res!1874367) (not e!2807795))))

(assert (=> d!1385593 (= res!1874367 ((_ is Cons!50571) (toList!4275 lt!1685823)))))

(assert (=> d!1385593 (= (contains!13258 (toList!4275 lt!1685823) lt!1685589) lt!1685979)))

(declare-fun b!4507159 () Bool)

(declare-fun e!2807796 () Bool)

(assert (=> b!4507159 (= e!2807795 e!2807796)))

(declare-fun res!1874368 () Bool)

(assert (=> b!4507159 (=> res!1874368 e!2807796)))

(assert (=> b!4507159 (= res!1874368 (= (h!56400 (toList!4275 lt!1685823)) lt!1685589))))

(declare-fun b!4507160 () Bool)

(assert (=> b!4507160 (= e!2807796 (contains!13258 (t!357657 (toList!4275 lt!1685823)) lt!1685589))))

(assert (= (and d!1385593 res!1874367) b!4507159))

(assert (= (and b!4507159 (not res!1874368)) b!4507160))

(declare-fun m!5243869 () Bool)

(assert (=> d!1385593 m!5243869))

(declare-fun m!5243871 () Bool)

(assert (=> d!1385593 m!5243871))

(declare-fun m!5243873 () Bool)

(assert (=> b!4507160 m!5243873))

(assert (=> b!4506844 d!1385593))

(declare-fun d!1385595 () Bool)

(declare-fun res!1874369 () Bool)

(declare-fun e!2807797 () Bool)

(assert (=> d!1385595 (=> res!1874369 e!2807797)))

(assert (=> d!1385595 (= res!1874369 (and ((_ is Cons!50570) lt!1685601) (= (_1!28779 (h!56399 lt!1685601)) key!3287)))))

(assert (=> d!1385595 (= (containsKey!1706 lt!1685601 key!3287) e!2807797)))

(declare-fun b!4507161 () Bool)

(declare-fun e!2807798 () Bool)

(assert (=> b!4507161 (= e!2807797 e!2807798)))

(declare-fun res!1874370 () Bool)

(assert (=> b!4507161 (=> (not res!1874370) (not e!2807798))))

(assert (=> b!4507161 (= res!1874370 ((_ is Cons!50570) lt!1685601))))

(declare-fun b!4507162 () Bool)

(assert (=> b!4507162 (= e!2807798 (containsKey!1706 (t!357656 lt!1685601) key!3287))))

(assert (= (and d!1385595 (not res!1874369)) b!4507161))

(assert (= (and b!4507161 res!1874370) b!4507162))

(declare-fun m!5243875 () Bool)

(assert (=> b!4507162 m!5243875))

(assert (=> d!1385257 d!1385595))

(declare-fun d!1385597 () Bool)

(declare-fun res!1874371 () Bool)

(declare-fun e!2807799 () Bool)

(assert (=> d!1385597 (=> res!1874371 e!2807799)))

(assert (=> d!1385597 (= res!1874371 (not ((_ is Cons!50570) lt!1685570)))))

(assert (=> d!1385597 (= (noDuplicateKeys!1134 lt!1685570) e!2807799)))

(declare-fun b!4507163 () Bool)

(declare-fun e!2807800 () Bool)

(assert (=> b!4507163 (= e!2807799 e!2807800)))

(declare-fun res!1874372 () Bool)

(assert (=> b!4507163 (=> (not res!1874372) (not e!2807800))))

(assert (=> b!4507163 (= res!1874372 (not (containsKey!1706 (t!357656 lt!1685570) (_1!28779 (h!56399 lt!1685570)))))))

(declare-fun b!4507164 () Bool)

(assert (=> b!4507164 (= e!2807800 (noDuplicateKeys!1134 (t!357656 lt!1685570)))))

(assert (= (and d!1385597 (not res!1874371)) b!4507163))

(assert (= (and b!4507163 res!1874372) b!4507164))

(declare-fun m!5243877 () Bool)

(assert (=> b!4507163 m!5243877))

(declare-fun m!5243879 () Bool)

(assert (=> b!4507164 m!5243879))

(assert (=> d!1385257 d!1385597))

(declare-fun b!4507165 () Bool)

(declare-fun e!2807804 () List!50697)

(assert (=> b!4507165 (= e!2807804 (getKeysList!441 (toList!4276 lt!1685795)))))

(declare-fun b!4507166 () Bool)

(declare-fun e!2807802 () Bool)

(assert (=> b!4507166 (= e!2807802 (not (contains!13261 (keys!17544 lt!1685795) key!3287)))))

(declare-fun b!4507167 () Bool)

(declare-fun e!2807805 () Unit!92894)

(declare-fun Unit!92933 () Unit!92894)

(assert (=> b!4507167 (= e!2807805 Unit!92933)))

(declare-fun b!4507168 () Bool)

(assert (=> b!4507168 false))

(declare-fun lt!1685985 () Unit!92894)

(declare-fun lt!1685984 () Unit!92894)

(assert (=> b!4507168 (= lt!1685985 lt!1685984)))

(assert (=> b!4507168 (containsKey!1709 (toList!4276 lt!1685795) key!3287)))

(assert (=> b!4507168 (= lt!1685984 (lemmaInGetKeysListThenContainsKey!440 (toList!4276 lt!1685795) key!3287))))

(declare-fun Unit!92934 () Unit!92894)

(assert (=> b!4507168 (= e!2807805 Unit!92934)))

(declare-fun b!4507169 () Bool)

(assert (=> b!4507169 (= e!2807804 (keys!17544 lt!1685795))))

(declare-fun b!4507170 () Bool)

(declare-fun e!2807801 () Unit!92894)

(assert (=> b!4507170 (= e!2807801 e!2807805)))

(declare-fun c!768662 () Bool)

(declare-fun call!313770 () Bool)

(assert (=> b!4507170 (= c!768662 call!313770)))

(declare-fun d!1385599 () Bool)

(declare-fun e!2807803 () Bool)

(assert (=> d!1385599 e!2807803))

(declare-fun res!1874375 () Bool)

(assert (=> d!1385599 (=> res!1874375 e!2807803)))

(assert (=> d!1385599 (= res!1874375 e!2807802)))

(declare-fun res!1874374 () Bool)

(assert (=> d!1385599 (=> (not res!1874374) (not e!2807802))))

(declare-fun lt!1685986 () Bool)

(assert (=> d!1385599 (= res!1874374 (not lt!1685986))))

(declare-fun lt!1685980 () Bool)

(assert (=> d!1385599 (= lt!1685986 lt!1685980)))

(declare-fun lt!1685987 () Unit!92894)

(assert (=> d!1385599 (= lt!1685987 e!2807801)))

(declare-fun c!768663 () Bool)

(assert (=> d!1385599 (= c!768663 lt!1685980)))

(assert (=> d!1385599 (= lt!1685980 (containsKey!1709 (toList!4276 lt!1685795) key!3287))))

(assert (=> d!1385599 (= (contains!13257 lt!1685795 key!3287) lt!1685986)))

(declare-fun b!4507171 () Bool)

(declare-fun e!2807806 () Bool)

(assert (=> b!4507171 (= e!2807806 (contains!13261 (keys!17544 lt!1685795) key!3287))))

(declare-fun b!4507172 () Bool)

(assert (=> b!4507172 (= e!2807803 e!2807806)))

(declare-fun res!1874373 () Bool)

(assert (=> b!4507172 (=> (not res!1874373) (not e!2807806))))

(assert (=> b!4507172 (= res!1874373 (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685795) key!3287)))))

(declare-fun bm!313765 () Bool)

(assert (=> bm!313765 (= call!313770 (contains!13261 e!2807804 key!3287))))

(declare-fun c!768664 () Bool)

(assert (=> bm!313765 (= c!768664 c!768663)))

(declare-fun b!4507173 () Bool)

(declare-fun lt!1685983 () Unit!92894)

(assert (=> b!4507173 (= e!2807801 lt!1685983)))

(declare-fun lt!1685982 () Unit!92894)

(assert (=> b!4507173 (= lt!1685982 (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 lt!1685795) key!3287))))

(assert (=> b!4507173 (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685795) key!3287))))

(declare-fun lt!1685981 () Unit!92894)

(assert (=> b!4507173 (= lt!1685981 lt!1685982)))

(assert (=> b!4507173 (= lt!1685983 (lemmaInListThenGetKeysListContains!437 (toList!4276 lt!1685795) key!3287))))

(assert (=> b!4507173 call!313770))

(assert (= (and d!1385599 c!768663) b!4507173))

(assert (= (and d!1385599 (not c!768663)) b!4507170))

(assert (= (and b!4507170 c!768662) b!4507168))

(assert (= (and b!4507170 (not c!768662)) b!4507167))

(assert (= (or b!4507173 b!4507170) bm!313765))

(assert (= (and bm!313765 c!768664) b!4507165))

(assert (= (and bm!313765 (not c!768664)) b!4507169))

(assert (= (and d!1385599 res!1874374) b!4507166))

(assert (= (and d!1385599 (not res!1874375)) b!4507172))

(assert (= (and b!4507172 res!1874373) b!4507171))

(assert (=> b!4507165 m!5243793))

(declare-fun m!5243881 () Bool)

(assert (=> b!4507172 m!5243881))

(assert (=> b!4507172 m!5243881))

(declare-fun m!5243883 () Bool)

(assert (=> b!4507172 m!5243883))

(assert (=> b!4507166 m!5243327))

(assert (=> b!4507166 m!5243327))

(declare-fun m!5243885 () Bool)

(assert (=> b!4507166 m!5243885))

(declare-fun m!5243887 () Bool)

(assert (=> bm!313765 m!5243887))

(declare-fun m!5243889 () Bool)

(assert (=> b!4507173 m!5243889))

(assert (=> b!4507173 m!5243881))

(assert (=> b!4507173 m!5243881))

(assert (=> b!4507173 m!5243883))

(declare-fun m!5243891 () Bool)

(assert (=> b!4507173 m!5243891))

(declare-fun m!5243893 () Bool)

(assert (=> d!1385599 m!5243893))

(assert (=> b!4507168 m!5243893))

(declare-fun m!5243895 () Bool)

(assert (=> b!4507168 m!5243895))

(assert (=> b!4507169 m!5243327))

(assert (=> b!4507171 m!5243327))

(assert (=> b!4507171 m!5243327))

(assert (=> b!4507171 m!5243885))

(assert (=> d!1385383 d!1385599))

(declare-fun b!4507255 () Bool)

(declare-fun e!2807865 () List!50694)

(assert (=> b!4507255 (= e!2807865 (t!357656 (toList!4276 lt!1685586)))))

(declare-fun c!768687 () Bool)

(declare-fun call!313793 () Bool)

(assert (=> b!4507255 (= c!768687 call!313793)))

(declare-fun lt!1686098 () Unit!92894)

(declare-fun e!2807860 () Unit!92894)

(assert (=> b!4507255 (= lt!1686098 e!2807860)))

(declare-fun bm!313787 () Bool)

(declare-fun call!313797 () (InoxSet tuple2!50970))

(declare-fun lt!1686110 () List!50694)

(assert (=> bm!313787 (= call!313797 (content!8287 lt!1686110))))

(declare-fun b!4507256 () Bool)

(declare-fun e!2807863 () List!50694)

(assert (=> b!4507256 (= e!2807863 Nil!50570)))

(declare-fun bm!313788 () Bool)

(declare-fun c!768689 () Bool)

(declare-fun e!2807867 () List!50694)

(assert (=> bm!313788 (= call!313793 (containsKey!1709 e!2807867 (ite c!768689 key!3287 (_1!28779 (h!56399 (toList!4276 lt!1685586))))))))

(declare-fun c!768688 () Bool)

(assert (=> bm!313788 (= c!768688 c!768689)))

(declare-fun call!313796 () Bool)

(declare-fun lt!1686112 () K!11975)

(declare-fun bm!313789 () Bool)

(assert (=> bm!313789 (= call!313796 (containsKey!1709 (t!357656 (toList!4276 lt!1685586)) (ite c!768689 lt!1686112 (_1!28779 (h!56399 (toList!4276 lt!1685586))))))))

(declare-fun b!4507257 () Bool)

(declare-fun e!2807864 () Bool)

(declare-fun call!313794 () (InoxSet tuple2!50970))

(assert (=> b!4507257 (= e!2807864 (= call!313797 call!313794))))

(declare-fun b!4507258 () Bool)

(declare-fun e!2807859 () Unit!92894)

(declare-fun Unit!92937 () Unit!92894)

(assert (=> b!4507258 (= e!2807859 Unit!92937)))

(declare-fun b!4507259 () Bool)

(declare-fun e!2807861 () Bool)

(assert (=> b!4507259 (= e!2807861 e!2807864)))

(declare-fun c!768691 () Bool)

(assert (=> b!4507259 (= c!768691 (containsKey!1709 (toList!4276 lt!1685586) key!3287))))

(declare-fun b!4507260 () Bool)

(declare-fun lt!1686113 () Unit!92894)

(declare-fun e!2807862 () Unit!92894)

(assert (=> b!4507260 (= lt!1686113 e!2807862)))

(declare-fun c!768694 () Bool)

(assert (=> b!4507260 (= c!768694 call!313793)))

(declare-fun lt!1686111 () Unit!92894)

(declare-fun e!2807866 () Unit!92894)

(assert (=> b!4507260 (= lt!1686111 e!2807866)))

(declare-fun c!768692 () Bool)

(assert (=> b!4507260 (= c!768692 (contains!13261 (getKeysList!441 (t!357656 (toList!4276 lt!1685586))) (_1!28779 (h!56399 (toList!4276 lt!1685586)))))))

(declare-fun lt!1686102 () List!50694)

(declare-fun $colon$colon!911 (List!50694 tuple2!50970) List!50694)

(assert (=> b!4507260 (= lt!1686102 ($colon$colon!911 (removePresrvNoDuplicatedKeys!117 (t!357656 (toList!4276 lt!1685586)) key!3287) (h!56399 (toList!4276 lt!1685586))))))

(assert (=> b!4507260 (= e!2807863 lt!1686102)))

(declare-fun b!4507261 () Bool)

(declare-fun res!1874412 () Bool)

(assert (=> b!4507261 (=> (not res!1874412) (not e!2807861))))

(assert (=> b!4507261 (= res!1874412 (not (containsKey!1709 lt!1686110 key!3287)))))

(declare-fun call!313795 () (InoxSet tuple2!50970))

(declare-fun b!4507262 () Bool)

(declare-fun call!313792 () (InoxSet tuple2!50970))

(declare-fun get!16540 (Option!11065) V!12221)

(assert (=> b!4507262 (= call!313792 ((_ map and) call!313795 ((_ map not) (store ((as const (Array tuple2!50970 Bool)) false) (tuple2!50971 key!3287 (get!16540 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287))) true))))))

(declare-fun lt!1686097 () Unit!92894)

(assert (=> b!4507262 (= lt!1686097 e!2807859)))

(declare-fun c!768690 () Bool)

(declare-fun contains!13262 (List!50694 tuple2!50970) Bool)

(assert (=> b!4507262 (= c!768690 (contains!13262 (t!357656 (toList!4276 lt!1685586)) (tuple2!50971 key!3287 (get!16540 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287)))))))

(declare-fun Unit!92938 () Unit!92894)

(assert (=> b!4507262 (= e!2807860 Unit!92938)))

(declare-fun b!4507263 () Bool)

(declare-fun res!1874411 () Bool)

(assert (=> b!4507263 (=> (not res!1874411) (not e!2807861))))

(assert (=> b!4507263 (= res!1874411 (= (content!8286 (getKeysList!441 lt!1686110)) ((_ map and) (content!8286 (getKeysList!441 (toList!4276 lt!1685586))) ((_ map not) (store ((as const (Array K!11975 Bool)) false) key!3287 true)))))))

(declare-fun b!4507264 () Bool)

(declare-fun Unit!92939 () Unit!92894)

(assert (=> b!4507264 (= e!2807866 Unit!92939)))

(declare-fun b!4507265 () Bool)

(declare-fun Unit!92940 () Unit!92894)

(assert (=> b!4507265 (= e!2807859 Unit!92940)))

(declare-fun lt!1686100 () V!12221)

(assert (=> b!4507265 (= lt!1686100 (get!16540 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287)))))

(assert (=> b!4507265 (= lt!1686112 key!3287)))

(declare-fun lt!1686106 () K!11975)

(assert (=> b!4507265 (= lt!1686106 key!3287)))

(declare-fun lt!1686096 () Unit!92894)

(declare-fun lemmaContainsTupleThenContainsKey!50 (List!50694 K!11975 V!12221) Unit!92894)

(assert (=> b!4507265 (= lt!1686096 (lemmaContainsTupleThenContainsKey!50 (t!357656 (toList!4276 lt!1685586)) lt!1686112 (get!16540 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287))))))

(assert (=> b!4507265 call!313796))

(declare-fun lt!1686107 () Unit!92894)

(assert (=> b!4507265 (= lt!1686107 lt!1686096)))

(assert (=> b!4507265 false))

(declare-fun b!4507266 () Bool)

(declare-fun Unit!92941 () Unit!92894)

(assert (=> b!4507266 (= e!2807862 Unit!92941)))

(declare-fun b!4507267 () Bool)

(declare-fun Unit!92942 () Unit!92894)

(assert (=> b!4507267 (= e!2807862 Unit!92942)))

(declare-fun lt!1686109 () List!50694)

(assert (=> b!4507267 (= lt!1686109 (removePresrvNoDuplicatedKeys!117 (t!357656 (toList!4276 lt!1685586)) key!3287))))

(declare-fun lt!1686105 () Unit!92894)

(assert (=> b!4507267 (= lt!1686105 (lemmaInListThenGetKeysListContains!437 lt!1686109 (_1!28779 (h!56399 (toList!4276 lt!1685586)))))))

(assert (=> b!4507267 (contains!13261 (getKeysList!441 lt!1686109) (_1!28779 (h!56399 (toList!4276 lt!1685586))))))

(declare-fun lt!1686104 () Unit!92894)

(assert (=> b!4507267 (= lt!1686104 lt!1686105)))

(assert (=> b!4507267 false))

(declare-fun bm!313790 () Bool)

(assert (=> bm!313790 (= call!313795 (content!8287 (toList!4276 lt!1685586)))))

(declare-fun b!4507268 () Bool)

(assert (=> b!4507268 (= call!313792 call!313795)))

(declare-fun Unit!92943 () Unit!92894)

(assert (=> b!4507268 (= e!2807860 Unit!92943)))

(declare-fun b!4507269 () Bool)

(assert (=> b!4507269 (= e!2807867 (toList!4276 lt!1685586))))

(declare-fun b!4507270 () Bool)

(assert (=> b!4507270 (= e!2807865 e!2807863)))

(declare-fun c!768693 () Bool)

(assert (=> b!4507270 (= c!768693 (and ((_ is Cons!50570) (toList!4276 lt!1685586)) (not (= (_1!28779 (h!56399 (toList!4276 lt!1685586))) key!3287))))))

(declare-fun bm!313791 () Bool)

(assert (=> bm!313791 (= call!313792 (content!8287 (t!357656 (toList!4276 lt!1685586))))))

(declare-fun b!4507271 () Bool)

(declare-fun Unit!92944 () Unit!92894)

(assert (=> b!4507271 (= e!2807866 Unit!92944)))

(declare-fun lt!1686103 () Unit!92894)

(assert (=> b!4507271 (= lt!1686103 (lemmaInGetKeysListThenContainsKey!440 (t!357656 (toList!4276 lt!1685586)) (_1!28779 (h!56399 (toList!4276 lt!1685586)))))))

(assert (=> b!4507271 call!313796))

(declare-fun lt!1686108 () Unit!92894)

(assert (=> b!4507271 (= lt!1686108 lt!1686103)))

(assert (=> b!4507271 false))

(declare-fun bm!313792 () Bool)

(assert (=> bm!313792 (= call!313794 (content!8287 (toList!4276 lt!1685586)))))

(declare-fun d!1385601 () Bool)

(assert (=> d!1385601 e!2807861))

(declare-fun res!1874413 () Bool)

(assert (=> d!1385601 (=> (not res!1874413) (not e!2807861))))

(assert (=> d!1385601 (= res!1874413 (invariantList!993 lt!1686110))))

(assert (=> d!1385601 (= lt!1686110 e!2807865)))

(assert (=> d!1385601 (= c!768689 (and ((_ is Cons!50570) (toList!4276 lt!1685586)) (= (_1!28779 (h!56399 (toList!4276 lt!1685586))) key!3287)))))

(assert (=> d!1385601 (invariantList!993 (toList!4276 lt!1685586))))

(assert (=> d!1385601 (= (removePresrvNoDuplicatedKeys!117 (toList!4276 lt!1685586) key!3287) lt!1686110)))

(declare-fun b!4507272 () Bool)

(assert (=> b!4507272 (= e!2807867 (removePresrvNoDuplicatedKeys!117 (t!357656 (toList!4276 lt!1685586)) key!3287))))

(declare-fun b!4507273 () Bool)

(assert (=> b!4507273 (= e!2807864 (= call!313797 ((_ map and) call!313794 ((_ map not) (store ((as const (Array tuple2!50970 Bool)) false) (tuple2!50971 key!3287 (get!16540 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287))) true)))))))

(assert (=> b!4507273 (containsKey!1709 (toList!4276 lt!1685586) key!3287)))

(declare-fun lt!1686099 () Unit!92894)

(assert (=> b!4507273 (= lt!1686099 (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 lt!1685586) key!3287))))

(assert (=> b!4507273 (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685586) key!3287))))

(declare-fun lt!1686101 () Unit!92894)

(assert (=> b!4507273 (= lt!1686101 lt!1686099)))

(assert (= (and d!1385601 c!768689) b!4507255))

(assert (= (and d!1385601 (not c!768689)) b!4507270))

(assert (= (and b!4507255 c!768687) b!4507262))

(assert (= (and b!4507255 (not c!768687)) b!4507268))

(assert (= (and b!4507262 c!768690) b!4507265))

(assert (= (and b!4507262 (not c!768690)) b!4507258))

(assert (= (or b!4507262 b!4507268) bm!313791))

(assert (= (or b!4507262 b!4507268) bm!313790))

(assert (= (and b!4507270 c!768693) b!4507260))

(assert (= (and b!4507270 (not c!768693)) b!4507256))

(assert (= (and b!4507260 c!768692) b!4507271))

(assert (= (and b!4507260 (not c!768692)) b!4507264))

(assert (= (and b!4507260 c!768694) b!4507267))

(assert (= (and b!4507260 (not c!768694)) b!4507266))

(assert (= (or b!4507265 b!4507271) bm!313789))

(assert (= (or b!4507255 b!4507260) bm!313788))

(assert (= (and bm!313788 c!768688) b!4507269))

(assert (= (and bm!313788 (not c!768688)) b!4507272))

(assert (= (and d!1385601 res!1874413) b!4507261))

(assert (= (and b!4507261 res!1874412) b!4507263))

(assert (= (and b!4507263 res!1874411) b!4507259))

(assert (= (and b!4507259 c!768691) b!4507273))

(assert (= (and b!4507259 (not c!768691)) b!4507257))

(assert (= (or b!4507273 b!4507257) bm!313787))

(assert (= (or b!4507273 b!4507257) bm!313792))

(declare-fun m!5243977 () Bool)

(assert (=> b!4507271 m!5243977))

(declare-fun m!5243979 () Bool)

(assert (=> bm!313790 m!5243979))

(declare-fun m!5243981 () Bool)

(assert (=> bm!313788 m!5243981))

(assert (=> b!4507263 m!5243127))

(declare-fun m!5243983 () Bool)

(assert (=> b!4507263 m!5243983))

(declare-fun m!5243985 () Bool)

(assert (=> b!4507263 m!5243985))

(assert (=> b!4507263 m!5243985))

(declare-fun m!5243987 () Bool)

(assert (=> b!4507263 m!5243987))

(assert (=> b!4507263 m!5243325))

(assert (=> b!4507263 m!5243127))

(declare-fun m!5243989 () Bool)

(assert (=> bm!313791 m!5243989))

(declare-fun m!5243991 () Bool)

(assert (=> d!1385601 m!5243991))

(assert (=> d!1385601 m!5243479))

(declare-fun m!5243993 () Bool)

(assert (=> b!4507267 m!5243993))

(declare-fun m!5243995 () Bool)

(assert (=> b!4507267 m!5243995))

(declare-fun m!5243997 () Bool)

(assert (=> b!4507267 m!5243997))

(assert (=> b!4507267 m!5243997))

(declare-fun m!5243999 () Bool)

(assert (=> b!4507267 m!5243999))

(assert (=> b!4507259 m!5243143))

(assert (=> b!4507262 m!5243129))

(assert (=> b!4507262 m!5243129))

(declare-fun m!5244001 () Bool)

(assert (=> b!4507262 m!5244001))

(declare-fun m!5244003 () Bool)

(assert (=> b!4507262 m!5244003))

(declare-fun m!5244005 () Bool)

(assert (=> b!4507262 m!5244005))

(declare-fun m!5244007 () Bool)

(assert (=> bm!313787 m!5244007))

(assert (=> b!4507272 m!5243993))

(assert (=> b!4507265 m!5243129))

(assert (=> b!4507265 m!5243129))

(assert (=> b!4507265 m!5244001))

(assert (=> b!4507265 m!5244001))

(declare-fun m!5244009 () Bool)

(assert (=> b!4507265 m!5244009))

(declare-fun m!5244011 () Bool)

(assert (=> bm!313789 m!5244011))

(assert (=> bm!313792 m!5243979))

(assert (=> b!4507273 m!5244003))

(assert (=> b!4507273 m!5243143))

(assert (=> b!4507273 m!5243129))

(assert (=> b!4507273 m!5243131))

(assert (=> b!4507273 m!5243129))

(assert (=> b!4507273 m!5243129))

(assert (=> b!4507273 m!5244001))

(assert (=> b!4507273 m!5243139))

(declare-fun m!5244013 () Bool)

(assert (=> b!4507261 m!5244013))

(declare-fun m!5244015 () Bool)

(assert (=> b!4507260 m!5244015))

(assert (=> b!4507260 m!5244015))

(declare-fun m!5244017 () Bool)

(assert (=> b!4507260 m!5244017))

(assert (=> b!4507260 m!5243993))

(assert (=> b!4507260 m!5243993))

(declare-fun m!5244019 () Bool)

(assert (=> b!4507260 m!5244019))

(assert (=> d!1385383 d!1385601))

(declare-fun bs!844315 () Bool)

(declare-fun b!4507278 () Bool)

(assert (= bs!844315 (and b!4507278 b!4507038)))

(declare-fun lambda!169886 () Int)

(assert (=> bs!844315 (= (= (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) lt!1685929) (= lambda!169886 lambda!169828))))

(declare-fun bs!844316 () Bool)

(assert (= bs!844316 (and b!4507278 d!1385411)))

(assert (=> bs!844316 (not (= lambda!169886 lambda!169784))))

(declare-fun bs!844317 () Bool)

(assert (= bs!844317 (and b!4507278 d!1385461)))

(assert (=> bs!844317 (= (= (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) lt!1685919) (= lambda!169886 lambda!169829))))

(assert (=> bs!844315 (= (= (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169886 lambda!169827))))

(declare-fun bs!844318 () Bool)

(assert (= bs!844318 (and b!4507278 b!4507042)))

(assert (=> bs!844318 (= (= (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169886 lambda!169826))))

(assert (=> b!4507278 true))

(declare-fun bs!844319 () Bool)

(declare-fun b!4507274 () Bool)

(assert (= bs!844319 (and b!4507274 b!4507038)))

(declare-fun lambda!169887 () Int)

(assert (=> bs!844319 (= (= (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) lt!1685929) (= lambda!169887 lambda!169828))))

(declare-fun bs!844320 () Bool)

(assert (= bs!844320 (and b!4507274 d!1385411)))

(assert (=> bs!844320 (not (= lambda!169887 lambda!169784))))

(declare-fun bs!844321 () Bool)

(assert (= bs!844321 (and b!4507274 d!1385461)))

(assert (=> bs!844321 (= (= (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) lt!1685919) (= lambda!169887 lambda!169829))))

(assert (=> bs!844319 (= (= (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169887 lambda!169827))))

(declare-fun bs!844322 () Bool)

(assert (= bs!844322 (and b!4507274 b!4507042)))

(assert (=> bs!844322 (= (= (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169887 lambda!169826))))

(declare-fun bs!844323 () Bool)

(assert (= bs!844323 (and b!4507274 b!4507278)))

(assert (=> bs!844323 (= lambda!169887 lambda!169886)))

(assert (=> b!4507274 true))

(declare-fun lt!1686129 () ListMap!3537)

(declare-fun lambda!169888 () Int)

(assert (=> bs!844319 (= (= lt!1686129 lt!1685929) (= lambda!169888 lambda!169828))))

(assert (=> b!4507274 (= (= lt!1686129 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169888 lambda!169887))))

(assert (=> bs!844320 (not (= lambda!169888 lambda!169784))))

(assert (=> bs!844321 (= (= lt!1686129 lt!1685919) (= lambda!169888 lambda!169829))))

(assert (=> bs!844319 (= (= lt!1686129 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169888 lambda!169827))))

(assert (=> bs!844322 (= (= lt!1686129 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169888 lambda!169826))))

(assert (=> bs!844323 (= (= lt!1686129 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169888 lambda!169886))))

(assert (=> b!4507274 true))

(declare-fun bs!844324 () Bool)

(declare-fun d!1385635 () Bool)

(assert (= bs!844324 (and d!1385635 b!4507038)))

(declare-fun lt!1686119 () ListMap!3537)

(declare-fun lambda!169889 () Int)

(assert (=> bs!844324 (= (= lt!1686119 lt!1685929) (= lambda!169889 lambda!169828))))

(declare-fun bs!844325 () Bool)

(assert (= bs!844325 (and d!1385635 b!4507274)))

(assert (=> bs!844325 (= (= lt!1686119 lt!1686129) (= lambda!169889 lambda!169888))))

(assert (=> bs!844325 (= (= lt!1686119 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169889 lambda!169887))))

(declare-fun bs!844326 () Bool)

(assert (= bs!844326 (and d!1385635 d!1385411)))

(assert (=> bs!844326 (not (= lambda!169889 lambda!169784))))

(declare-fun bs!844327 () Bool)

(assert (= bs!844327 (and d!1385635 d!1385461)))

(assert (=> bs!844327 (= (= lt!1686119 lt!1685919) (= lambda!169889 lambda!169829))))

(assert (=> bs!844324 (= (= lt!1686119 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169889 lambda!169827))))

(declare-fun bs!844328 () Bool)

(assert (= bs!844328 (and d!1385635 b!4507042)))

(assert (=> bs!844328 (= (= lt!1686119 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169889 lambda!169826))))

(declare-fun bs!844329 () Bool)

(assert (= bs!844329 (and d!1385635 b!4507278)))

(assert (=> bs!844329 (= (= lt!1686119 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169889 lambda!169886))))

(assert (=> d!1385635 true))

(declare-fun bm!313793 () Bool)

(declare-fun call!313798 () Unit!92894)

(assert (=> bm!313793 (= call!313798 (lemmaContainsAllItsOwnKeys!313 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))))))

(declare-fun b!4507275 () Bool)

(declare-fun res!1874414 () Bool)

(declare-fun e!2807869 () Bool)

(assert (=> b!4507275 (=> (not res!1874414) (not e!2807869))))

(assert (=> b!4507275 (= res!1874414 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) lambda!169889))))

(declare-fun b!4507276 () Bool)

(assert (=> b!4507276 (= e!2807869 (invariantList!993 (toList!4276 lt!1686119)))))

(declare-fun call!313799 () Bool)

(declare-fun c!768695 () Bool)

(declare-fun bm!313794 () Bool)

(assert (=> bm!313794 (= call!313799 (forall!10203 (ite c!768695 (toList!4276 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))) (ite c!768695 lambda!169886 lambda!169888)))))

(declare-fun b!4507277 () Bool)

(declare-fun e!2807868 () Bool)

(assert (=> b!4507277 (= e!2807868 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) lambda!169888))))

(assert (=> d!1385635 e!2807869))

(declare-fun res!1874416 () Bool)

(assert (=> d!1385635 (=> (not res!1874416) (not e!2807869))))

(assert (=> d!1385635 (= res!1874416 (forall!10203 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))) lambda!169889))))

(declare-fun e!2807870 () ListMap!3537)

(assert (=> d!1385635 (= lt!1686119 e!2807870)))

(assert (=> d!1385635 (= c!768695 ((_ is Nil!50570) (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))))))

(assert (=> d!1385635 (noDuplicateKeys!1134 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))))))

(assert (=> d!1385635 (= (addToMapMapFromBucket!661 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) lt!1686119)))

(assert (=> b!4507274 (= e!2807870 lt!1686129)))

(declare-fun lt!1686122 () ListMap!3537)

(assert (=> b!4507274 (= lt!1686122 (+!1489 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) (h!56399 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))))))))

(assert (=> b!4507274 (= lt!1686129 (addToMapMapFromBucket!661 (t!357656 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))) (+!1489 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) (h!56399 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))))))))

(declare-fun lt!1686117 () Unit!92894)

(assert (=> b!4507274 (= lt!1686117 call!313798)))

(assert (=> b!4507274 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) lambda!169887)))

(declare-fun lt!1686115 () Unit!92894)

(assert (=> b!4507274 (= lt!1686115 lt!1686117)))

(assert (=> b!4507274 (forall!10203 (toList!4276 lt!1686122) lambda!169888)))

(declare-fun lt!1686132 () Unit!92894)

(declare-fun Unit!92956 () Unit!92894)

(assert (=> b!4507274 (= lt!1686132 Unit!92956)))

(declare-fun call!313800 () Bool)

(assert (=> b!4507274 call!313800))

(declare-fun lt!1686118 () Unit!92894)

(declare-fun Unit!92957 () Unit!92894)

(assert (=> b!4507274 (= lt!1686118 Unit!92957)))

(declare-fun lt!1686131 () Unit!92894)

(declare-fun Unit!92958 () Unit!92894)

(assert (=> b!4507274 (= lt!1686131 Unit!92958)))

(declare-fun lt!1686126 () Unit!92894)

(assert (=> b!4507274 (= lt!1686126 (forallContained!2454 (toList!4276 lt!1686122) lambda!169888 (h!56399 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))))))))

(assert (=> b!4507274 (contains!13257 lt!1686122 (_1!28779 (h!56399 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))))))))

(declare-fun lt!1686116 () Unit!92894)

(declare-fun Unit!92959 () Unit!92894)

(assert (=> b!4507274 (= lt!1686116 Unit!92959)))

(assert (=> b!4507274 (contains!13257 lt!1686129 (_1!28779 (h!56399 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))))))))

(declare-fun lt!1686130 () Unit!92894)

(declare-fun Unit!92960 () Unit!92894)

(assert (=> b!4507274 (= lt!1686130 Unit!92960)))

(assert (=> b!4507274 call!313799))

(declare-fun lt!1686133 () Unit!92894)

(declare-fun Unit!92961 () Unit!92894)

(assert (=> b!4507274 (= lt!1686133 Unit!92961)))

(assert (=> b!4507274 (forall!10203 (toList!4276 lt!1686122) lambda!169888)))

(declare-fun lt!1686128 () Unit!92894)

(declare-fun Unit!92962 () Unit!92894)

(assert (=> b!4507274 (= lt!1686128 Unit!92962)))

(declare-fun lt!1686114 () Unit!92894)

(declare-fun Unit!92963 () Unit!92894)

(assert (=> b!4507274 (= lt!1686114 Unit!92963)))

(declare-fun lt!1686121 () Unit!92894)

(assert (=> b!4507274 (= lt!1686121 (addForallContainsKeyThenBeforeAdding!313 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) lt!1686129 (_1!28779 (h!56399 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))))) (_2!28779 (h!56399 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))))))))

(assert (=> b!4507274 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) lambda!169888)))

(declare-fun lt!1686127 () Unit!92894)

(assert (=> b!4507274 (= lt!1686127 lt!1686121)))

(assert (=> b!4507274 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) lambda!169888)))

(declare-fun lt!1686125 () Unit!92894)

(declare-fun Unit!92964 () Unit!92894)

(assert (=> b!4507274 (= lt!1686125 Unit!92964)))

(declare-fun res!1874415 () Bool)

(assert (=> b!4507274 (= res!1874415 (forall!10203 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))) lambda!169888))))

(assert (=> b!4507274 (=> (not res!1874415) (not e!2807868))))

(assert (=> b!4507274 e!2807868))

(declare-fun lt!1686124 () Unit!92894)

(declare-fun Unit!92965 () Unit!92894)

(assert (=> b!4507274 (= lt!1686124 Unit!92965)))

(assert (=> b!4507278 (= e!2807870 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))))))

(declare-fun lt!1686134 () Unit!92894)

(assert (=> b!4507278 (= lt!1686134 call!313798)))

(assert (=> b!4507278 call!313799))

(declare-fun lt!1686123 () Unit!92894)

(assert (=> b!4507278 (= lt!1686123 lt!1686134)))

(assert (=> b!4507278 call!313800))

(declare-fun lt!1686120 () Unit!92894)

(declare-fun Unit!92966 () Unit!92894)

(assert (=> b!4507278 (= lt!1686120 Unit!92966)))

(declare-fun bm!313795 () Bool)

(assert (=> bm!313795 (= call!313800 (forall!10203 (ite c!768695 (toList!4276 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (t!357656 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))))) (ite c!768695 lambda!169886 lambda!169888)))))

(assert (= (and d!1385635 c!768695) b!4507278))

(assert (= (and d!1385635 (not c!768695)) b!4507274))

(assert (= (and b!4507274 res!1874415) b!4507277))

(assert (= (or b!4507278 b!4507274) bm!313794))

(assert (= (or b!4507278 b!4507274) bm!313795))

(assert (= (or b!4507278 b!4507274) bm!313793))

(assert (= (and d!1385635 res!1874416) b!4507275))

(assert (= (and b!4507275 res!1874414) b!4507276))

(declare-fun m!5244021 () Bool)

(assert (=> b!4507276 m!5244021))

(declare-fun m!5244023 () Bool)

(assert (=> d!1385635 m!5244023))

(declare-fun m!5244025 () Bool)

(assert (=> d!1385635 m!5244025))

(declare-fun m!5244027 () Bool)

(assert (=> bm!313795 m!5244027))

(assert (=> bm!313793 m!5243105))

(declare-fun m!5244029 () Bool)

(assert (=> bm!313793 m!5244029))

(declare-fun m!5244031 () Bool)

(assert (=> b!4507277 m!5244031))

(declare-fun m!5244033 () Bool)

(assert (=> bm!313794 m!5244033))

(declare-fun m!5244035 () Bool)

(assert (=> b!4507275 m!5244035))

(declare-fun m!5244037 () Bool)

(assert (=> b!4507274 m!5244037))

(declare-fun m!5244039 () Bool)

(assert (=> b!4507274 m!5244039))

(declare-fun m!5244041 () Bool)

(assert (=> b!4507274 m!5244041))

(declare-fun m!5244043 () Bool)

(assert (=> b!4507274 m!5244043))

(declare-fun m!5244045 () Bool)

(assert (=> b!4507274 m!5244045))

(assert (=> b!4507274 m!5243105))

(assert (=> b!4507274 m!5244037))

(declare-fun m!5244047 () Bool)

(assert (=> b!4507274 m!5244047))

(declare-fun m!5244049 () Bool)

(assert (=> b!4507274 m!5244049))

(declare-fun m!5244051 () Bool)

(assert (=> b!4507274 m!5244051))

(assert (=> b!4507274 m!5244031))

(assert (=> b!4507274 m!5244051))

(assert (=> b!4507274 m!5243105))

(declare-fun m!5244053 () Bool)

(assert (=> b!4507274 m!5244053))

(assert (=> b!4507274 m!5244031))

(assert (=> b!4506701 d!1385635))

(declare-fun bs!844330 () Bool)

(declare-fun d!1385637 () Bool)

(assert (= bs!844330 (and d!1385637 d!1385357)))

(declare-fun lambda!169896 () Int)

(assert (=> bs!844330 (= lambda!169896 lambda!169766)))

(declare-fun bs!844331 () Bool)

(assert (= bs!844331 (and d!1385637 d!1385325)))

(assert (=> bs!844331 (= lambda!169896 lambda!169765)))

(declare-fun bs!844332 () Bool)

(assert (= bs!844332 (and d!1385637 start!445184)))

(assert (=> bs!844332 (= lambda!169896 lambda!169727)))

(declare-fun bs!844333 () Bool)

(assert (= bs!844333 (and d!1385637 d!1385427)))

(assert (=> bs!844333 (= lambda!169896 lambda!169785)))

(declare-fun bs!844334 () Bool)

(assert (= bs!844334 (and d!1385637 d!1385533)))

(assert (=> bs!844334 (= lambda!169896 lambda!169830)))

(declare-fun bs!844335 () Bool)

(assert (= bs!844335 (and d!1385637 d!1385377)))

(assert (=> bs!844335 (= lambda!169896 lambda!169770)))

(declare-fun bs!844336 () Bool)

(assert (= bs!844336 (and d!1385637 d!1385385)))

(assert (=> bs!844336 (= lambda!169896 lambda!169773)))

(declare-fun bs!844337 () Bool)

(assert (= bs!844337 (and d!1385637 d!1385395)))

(assert (=> bs!844337 (= lambda!169896 lambda!169775)))

(declare-fun bs!844338 () Bool)

(assert (= bs!844338 (and d!1385637 d!1385281)))

(assert (=> bs!844338 (= lambda!169896 lambda!169749)))

(declare-fun bs!844339 () Bool)

(assert (= bs!844339 (and d!1385637 d!1385389)))

(assert (=> bs!844339 (= lambda!169896 lambda!169774)))

(declare-fun bs!844340 () Bool)

(assert (= bs!844340 (and d!1385637 d!1385253)))

(assert (=> bs!844340 (= lambda!169896 lambda!169730)))

(declare-fun bs!844341 () Bool)

(assert (= bs!844341 (and d!1385637 d!1385401)))

(assert (=> bs!844341 (= lambda!169896 lambda!169778)))

(declare-fun bs!844342 () Bool)

(assert (= bs!844342 (and d!1385637 d!1385313)))

(assert (=> bs!844342 (= lambda!169896 lambda!169757)))

(declare-fun bs!844343 () Bool)

(assert (= bs!844343 (and d!1385637 d!1385403)))

(assert (=> bs!844343 (not (= lambda!169896 lambda!169781))))

(declare-fun lt!1686149 () ListMap!3537)

(assert (=> d!1385637 (invariantList!993 (toList!4276 lt!1686149))))

(declare-fun e!2807879 () ListMap!3537)

(assert (=> d!1385637 (= lt!1686149 e!2807879)))

(declare-fun c!768702 () Bool)

(assert (=> d!1385637 (= c!768702 ((_ is Cons!50571) (t!357657 (t!357657 (toList!4275 lm!1477)))))))

(assert (=> d!1385637 (forall!10201 (t!357657 (t!357657 (toList!4275 lm!1477))) lambda!169896)))

(assert (=> d!1385637 (= (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477)))) lt!1686149)))

(declare-fun b!4507295 () Bool)

(assert (=> b!4507295 (= e!2807879 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (t!357657 (t!357657 (toList!4275 lm!1477))))) (extractMap!1190 (t!357657 (t!357657 (t!357657 (toList!4275 lm!1477)))))))))

(declare-fun b!4507296 () Bool)

(assert (=> b!4507296 (= e!2807879 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385637 c!768702) b!4507295))

(assert (= (and d!1385637 (not c!768702)) b!4507296))

(declare-fun m!5244055 () Bool)

(assert (=> d!1385637 m!5244055))

(declare-fun m!5244057 () Bool)

(assert (=> d!1385637 m!5244057))

(declare-fun m!5244059 () Bool)

(assert (=> b!4507295 m!5244059))

(assert (=> b!4507295 m!5244059))

(declare-fun m!5244061 () Bool)

(assert (=> b!4507295 m!5244061))

(assert (=> b!4506701 d!1385637))

(declare-fun d!1385639 () Bool)

(assert (=> d!1385639 (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685574) key!3287))))

(declare-fun lt!1686150 () Unit!92894)

(assert (=> d!1385639 (= lt!1686150 (choose!29239 (toList!4276 lt!1685574) key!3287))))

(assert (=> d!1385639 (invariantList!993 (toList!4276 lt!1685574))))

(assert (=> d!1385639 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 lt!1685574) key!3287) lt!1686150)))

(declare-fun bs!844344 () Bool)

(assert (= bs!844344 d!1385639))

(assert (=> bs!844344 m!5243245))

(assert (=> bs!844344 m!5243245))

(assert (=> bs!844344 m!5243247))

(declare-fun m!5244063 () Bool)

(assert (=> bs!844344 m!5244063))

(assert (=> bs!844344 m!5243767))

(assert (=> b!4506760 d!1385639))

(declare-fun d!1385641 () Bool)

(assert (=> d!1385641 (= (isDefined!8351 (getValueByKey!1045 (toList!4276 lt!1685574) key!3287)) (not (isEmpty!28622 (getValueByKey!1045 (toList!4276 lt!1685574) key!3287))))))

(declare-fun bs!844345 () Bool)

(assert (= bs!844345 d!1385641))

(assert (=> bs!844345 m!5243245))

(declare-fun m!5244065 () Bool)

(assert (=> bs!844345 m!5244065))

(assert (=> b!4506760 d!1385641))

(declare-fun b!4507300 () Bool)

(declare-fun e!2807880 () Option!11065)

(declare-fun e!2807881 () Option!11065)

(assert (=> b!4507300 (= e!2807880 e!2807881)))

(declare-fun c!768704 () Bool)

(assert (=> b!4507300 (= c!768704 (and ((_ is Cons!50570) (toList!4276 lt!1685574)) (not (= (_1!28779 (h!56399 (toList!4276 lt!1685574))) key!3287))))))

(declare-fun b!4507299 () Bool)

(assert (=> b!4507299 (= e!2807880 (Some!11064 (_2!28779 (h!56399 (toList!4276 lt!1685574)))))))

(declare-fun b!4507302 () Bool)

(assert (=> b!4507302 (= e!2807881 None!11064)))

(declare-fun b!4507301 () Bool)

(assert (=> b!4507301 (= e!2807881 (getValueByKey!1045 (t!357656 (toList!4276 lt!1685574)) key!3287))))

(declare-fun d!1385643 () Bool)

(declare-fun c!768703 () Bool)

(assert (=> d!1385643 (= c!768703 (and ((_ is Cons!50570) (toList!4276 lt!1685574)) (= (_1!28779 (h!56399 (toList!4276 lt!1685574))) key!3287)))))

(assert (=> d!1385643 (= (getValueByKey!1045 (toList!4276 lt!1685574) key!3287) e!2807880)))

(assert (= (and d!1385643 c!768703) b!4507299))

(assert (= (and d!1385643 (not c!768703)) b!4507300))

(assert (= (and b!4507300 c!768704) b!4507301))

(assert (= (and b!4507300 (not c!768704)) b!4507302))

(declare-fun m!5244067 () Bool)

(assert (=> b!4507301 m!5244067))

(assert (=> b!4506760 d!1385643))

(declare-fun d!1385645 () Bool)

(assert (=> d!1385645 (contains!13261 (getKeysList!441 (toList!4276 lt!1685574)) key!3287)))

(declare-fun lt!1686151 () Unit!92894)

(assert (=> d!1385645 (= lt!1686151 (choose!29240 (toList!4276 lt!1685574) key!3287))))

(assert (=> d!1385645 (invariantList!993 (toList!4276 lt!1685574))))

(assert (=> d!1385645 (= (lemmaInListThenGetKeysListContains!437 (toList!4276 lt!1685574) key!3287) lt!1686151)))

(declare-fun bs!844346 () Bool)

(assert (= bs!844346 d!1385645))

(assert (=> bs!844346 m!5243243))

(assert (=> bs!844346 m!5243243))

(declare-fun m!5244069 () Bool)

(assert (=> bs!844346 m!5244069))

(declare-fun m!5244071 () Bool)

(assert (=> bs!844346 m!5244071))

(assert (=> bs!844346 m!5243767))

(assert (=> b!4506760 d!1385645))

(assert (=> b!4506545 d!1385543))

(declare-fun b!4507304 () Bool)

(declare-fun e!2807882 () Option!11064)

(declare-fun e!2807883 () Option!11064)

(assert (=> b!4507304 (= e!2807882 e!2807883)))

(declare-fun c!768706 () Bool)

(assert (=> b!4507304 (= c!768706 (and ((_ is Cons!50571) (toList!4275 lt!1685816)) (not (= (_1!28780 (h!56400 (toList!4275 lt!1685816))) (_1!28780 lt!1685589)))))))

(declare-fun b!4507303 () Bool)

(assert (=> b!4507303 (= e!2807882 (Some!11063 (_2!28780 (h!56400 (toList!4275 lt!1685816)))))))

(declare-fun d!1385647 () Bool)

(declare-fun c!768705 () Bool)

(assert (=> d!1385647 (= c!768705 (and ((_ is Cons!50571) (toList!4275 lt!1685816)) (= (_1!28780 (h!56400 (toList!4275 lt!1685816))) (_1!28780 lt!1685589))))))

(assert (=> d!1385647 (= (getValueByKey!1044 (toList!4275 lt!1685816) (_1!28780 lt!1685589)) e!2807882)))

(declare-fun b!4507306 () Bool)

(assert (=> b!4507306 (= e!2807883 None!11063)))

(declare-fun b!4507305 () Bool)

(assert (=> b!4507305 (= e!2807883 (getValueByKey!1044 (t!357657 (toList!4275 lt!1685816)) (_1!28780 lt!1685589)))))

(assert (= (and d!1385647 c!768705) b!4507303))

(assert (= (and d!1385647 (not c!768705)) b!4507304))

(assert (= (and b!4507304 c!768706) b!4507305))

(assert (= (and b!4507304 (not c!768706)) b!4507306))

(declare-fun m!5244073 () Bool)

(assert (=> b!4507305 m!5244073))

(assert (=> b!4506823 d!1385647))

(declare-fun d!1385649 () Bool)

(assert (=> d!1385649 (= (invariantList!993 (toList!4276 lt!1685812)) (noDuplicatedKeys!250 (toList!4276 lt!1685812)))))

(declare-fun bs!844347 () Bool)

(assert (= bs!844347 d!1385649))

(declare-fun m!5244075 () Bool)

(assert (=> bs!844347 m!5244075))

(assert (=> d!1385395 d!1385649))

(declare-fun d!1385651 () Bool)

(declare-fun res!1874423 () Bool)

(declare-fun e!2807884 () Bool)

(assert (=> d!1385651 (=> res!1874423 e!2807884)))

(assert (=> d!1385651 (= res!1874423 ((_ is Nil!50571) (toList!4275 (+!1488 lt!1685580 lt!1685576))))))

(assert (=> d!1385651 (= (forall!10201 (toList!4275 (+!1488 lt!1685580 lt!1685576)) lambda!169775) e!2807884)))

(declare-fun b!4507307 () Bool)

(declare-fun e!2807885 () Bool)

(assert (=> b!4507307 (= e!2807884 e!2807885)))

(declare-fun res!1874424 () Bool)

(assert (=> b!4507307 (=> (not res!1874424) (not e!2807885))))

(assert (=> b!4507307 (= res!1874424 (dynLambda!21126 lambda!169775 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))))

(declare-fun b!4507308 () Bool)

(assert (=> b!4507308 (= e!2807885 (forall!10201 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))) lambda!169775))))

(assert (= (and d!1385651 (not res!1874423)) b!4507307))

(assert (= (and b!4507307 res!1874424) b!4507308))

(declare-fun b_lambda!153405 () Bool)

(assert (=> (not b_lambda!153405) (not b!4507307)))

(declare-fun m!5244077 () Bool)

(assert (=> b!4507307 m!5244077))

(declare-fun m!5244079 () Bool)

(assert (=> b!4507308 m!5244079))

(assert (=> d!1385395 d!1385651))

(assert (=> b!4506710 d!1385549))

(declare-fun d!1385653 () Bool)

(assert (=> d!1385653 (= (head!9364 (toList!4275 lt!1685584)) (h!56400 (toList!4275 lt!1685584)))))

(assert (=> d!1385429 d!1385653))

(declare-fun d!1385655 () Bool)

(declare-fun e!2807890 () Bool)

(assert (=> d!1385655 e!2807890))

(declare-fun res!1874428 () Bool)

(assert (=> d!1385655 (=> res!1874428 e!2807890)))

(declare-fun lt!1686161 () Bool)

(assert (=> d!1385655 (= res!1874428 (not lt!1686161))))

(declare-fun lt!1686159 () Bool)

(assert (=> d!1385655 (= lt!1686161 lt!1686159)))

(declare-fun lt!1686160 () Unit!92894)

(declare-fun e!2807891 () Unit!92894)

(assert (=> d!1385655 (= lt!1686160 e!2807891)))

(declare-fun c!768710 () Bool)

(assert (=> d!1385655 (= c!768710 lt!1686159)))

(assert (=> d!1385655 (= lt!1686159 (containsKey!1708 (toList!4275 lt!1685810) (_1!28780 lt!1685576)))))

(assert (=> d!1385655 (= (contains!13259 lt!1685810 (_1!28780 lt!1685576)) lt!1686161)))

(declare-fun b!4507320 () Bool)

(declare-fun lt!1686162 () Unit!92894)

(assert (=> b!4507320 (= e!2807891 lt!1686162)))

(assert (=> b!4507320 (= lt!1686162 (lemmaContainsKeyImpliesGetValueByKeyDefined!947 (toList!4275 lt!1685810) (_1!28780 lt!1685576)))))

(assert (=> b!4507320 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685810) (_1!28780 lt!1685576)))))

(declare-fun b!4507321 () Bool)

(declare-fun Unit!92967 () Unit!92894)

(assert (=> b!4507321 (= e!2807891 Unit!92967)))

(declare-fun b!4507322 () Bool)

(assert (=> b!4507322 (= e!2807890 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685810) (_1!28780 lt!1685576))))))

(assert (= (and d!1385655 c!768710) b!4507320))

(assert (= (and d!1385655 (not c!768710)) b!4507321))

(assert (= (and d!1385655 (not res!1874428)) b!4507322))

(declare-fun m!5244081 () Bool)

(assert (=> d!1385655 m!5244081))

(declare-fun m!5244083 () Bool)

(assert (=> b!4507320 m!5244083))

(assert (=> b!4507320 m!5243353))

(assert (=> b!4507320 m!5243353))

(declare-fun m!5244085 () Bool)

(assert (=> b!4507320 m!5244085))

(assert (=> b!4507322 m!5243353))

(assert (=> b!4507322 m!5243353))

(assert (=> b!4507322 m!5244085))

(assert (=> d!1385387 d!1385655))

(declare-fun b!4507324 () Bool)

(declare-fun e!2807892 () Option!11064)

(declare-fun e!2807893 () Option!11064)

(assert (=> b!4507324 (= e!2807892 e!2807893)))

(declare-fun c!768712 () Bool)

(assert (=> b!4507324 (= c!768712 (and ((_ is Cons!50571) lt!1685808) (not (= (_1!28780 (h!56400 lt!1685808)) (_1!28780 lt!1685576)))))))

(declare-fun b!4507323 () Bool)

(assert (=> b!4507323 (= e!2807892 (Some!11063 (_2!28780 (h!56400 lt!1685808))))))

(declare-fun d!1385657 () Bool)

(declare-fun c!768711 () Bool)

(assert (=> d!1385657 (= c!768711 (and ((_ is Cons!50571) lt!1685808) (= (_1!28780 (h!56400 lt!1685808)) (_1!28780 lt!1685576))))))

(assert (=> d!1385657 (= (getValueByKey!1044 lt!1685808 (_1!28780 lt!1685576)) e!2807892)))

(declare-fun b!4507326 () Bool)

(assert (=> b!4507326 (= e!2807893 None!11063)))

(declare-fun b!4507325 () Bool)

(assert (=> b!4507325 (= e!2807893 (getValueByKey!1044 (t!357657 lt!1685808) (_1!28780 lt!1685576)))))

(assert (= (and d!1385657 c!768711) b!4507323))

(assert (= (and d!1385657 (not c!768711)) b!4507324))

(assert (= (and b!4507324 c!768712) b!4507325))

(assert (= (and b!4507324 (not c!768712)) b!4507326))

(declare-fun m!5244087 () Bool)

(assert (=> b!4507325 m!5244087))

(assert (=> d!1385387 d!1385657))

(declare-fun d!1385659 () Bool)

(assert (=> d!1385659 (= (getValueByKey!1044 lt!1685808 (_1!28780 lt!1685576)) (Some!11063 (_2!28780 lt!1685576)))))

(declare-fun lt!1686172 () Unit!92894)

(declare-fun choose!29246 (List!50695 (_ BitVec 64) List!50694) Unit!92894)

(assert (=> d!1385659 (= lt!1686172 (choose!29246 lt!1685808 (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))

(declare-fun e!2807906 () Bool)

(assert (=> d!1385659 e!2807906))

(declare-fun res!1874442 () Bool)

(assert (=> d!1385659 (=> (not res!1874442) (not e!2807906))))

(assert (=> d!1385659 (= res!1874442 (isStrictlySorted!406 lt!1685808))))

(assert (=> d!1385659 (= (lemmaContainsTupThenGetReturnValue!644 lt!1685808 (_1!28780 lt!1685576) (_2!28780 lt!1685576)) lt!1686172)))

(declare-fun b!4507346 () Bool)

(declare-fun res!1874443 () Bool)

(assert (=> b!4507346 (=> (not res!1874443) (not e!2807906))))

(assert (=> b!4507346 (= res!1874443 (containsKey!1708 lt!1685808 (_1!28780 lt!1685576)))))

(declare-fun b!4507347 () Bool)

(assert (=> b!4507347 (= e!2807906 (contains!13258 lt!1685808 (tuple2!50973 (_1!28780 lt!1685576) (_2!28780 lt!1685576))))))

(assert (= (and d!1385659 res!1874442) b!4507346))

(assert (= (and b!4507346 res!1874443) b!4507347))

(assert (=> d!1385659 m!5243347))

(declare-fun m!5244123 () Bool)

(assert (=> d!1385659 m!5244123))

(declare-fun m!5244125 () Bool)

(assert (=> d!1385659 m!5244125))

(declare-fun m!5244127 () Bool)

(assert (=> b!4507346 m!5244127))

(declare-fun m!5244129 () Bool)

(assert (=> b!4507347 m!5244129))

(assert (=> d!1385387 d!1385659))

(declare-fun e!2807930 () List!50695)

(declare-fun b!4507385 () Bool)

(declare-fun c!768727 () Bool)

(declare-fun c!768729 () Bool)

(assert (=> b!4507385 (= e!2807930 (ite c!768729 (t!357657 (toList!4275 lt!1685580)) (ite c!768727 (Cons!50571 (h!56400 (toList!4275 lt!1685580)) (t!357657 (toList!4275 lt!1685580))) Nil!50571)))))

(declare-fun b!4507386 () Bool)

(declare-fun e!2807929 () Bool)

(declare-fun lt!1686182 () List!50695)

(assert (=> b!4507386 (= e!2807929 (contains!13258 lt!1686182 (tuple2!50973 (_1!28780 lt!1685576) (_2!28780 lt!1685576))))))

(declare-fun b!4507387 () Bool)

(declare-fun res!1874459 () Bool)

(assert (=> b!4507387 (=> (not res!1874459) (not e!2807929))))

(assert (=> b!4507387 (= res!1874459 (containsKey!1708 lt!1686182 (_1!28780 lt!1685576)))))

(declare-fun b!4507388 () Bool)

(declare-fun e!2807931 () List!50695)

(declare-fun call!313808 () List!50695)

(assert (=> b!4507388 (= e!2807931 call!313808)))

(declare-fun b!4507389 () Bool)

(declare-fun e!2807932 () List!50695)

(declare-fun call!313809 () List!50695)

(assert (=> b!4507389 (= e!2807932 call!313809)))

(declare-fun b!4507390 () Bool)

(declare-fun e!2807928 () List!50695)

(assert (=> b!4507390 (= e!2807928 e!2807931)))

(assert (=> b!4507390 (= c!768729 (and ((_ is Cons!50571) (toList!4275 lt!1685580)) (= (_1!28780 (h!56400 (toList!4275 lt!1685580))) (_1!28780 lt!1685576))))))

(declare-fun c!768728 () Bool)

(declare-fun call!313807 () List!50695)

(declare-fun bm!313802 () Bool)

(declare-fun $colon$colon!912 (List!50695 tuple2!50972) List!50695)

(assert (=> bm!313802 (= call!313807 ($colon$colon!912 e!2807930 (ite c!768728 (h!56400 (toList!4275 lt!1685580)) (tuple2!50973 (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))))

(declare-fun c!768730 () Bool)

(assert (=> bm!313802 (= c!768730 c!768728)))

(declare-fun b!4507392 () Bool)

(assert (=> b!4507392 (= e!2807932 call!313809)))

(declare-fun bm!313803 () Bool)

(assert (=> bm!313803 (= call!313809 call!313808)))

(declare-fun b!4507393 () Bool)

(assert (=> b!4507393 (= c!768727 (and ((_ is Cons!50571) (toList!4275 lt!1685580)) (bvsgt (_1!28780 (h!56400 (toList!4275 lt!1685580))) (_1!28780 lt!1685576))))))

(assert (=> b!4507393 (= e!2807931 e!2807932)))

(declare-fun b!4507394 () Bool)

(assert (=> b!4507394 (= e!2807928 call!313807)))

(declare-fun bm!313804 () Bool)

(assert (=> bm!313804 (= call!313808 call!313807)))

(declare-fun d!1385669 () Bool)

(assert (=> d!1385669 e!2807929))

(declare-fun res!1874460 () Bool)

(assert (=> d!1385669 (=> (not res!1874460) (not e!2807929))))

(assert (=> d!1385669 (= res!1874460 (isStrictlySorted!406 lt!1686182))))

(assert (=> d!1385669 (= lt!1686182 e!2807928)))

(assert (=> d!1385669 (= c!768728 (and ((_ is Cons!50571) (toList!4275 lt!1685580)) (bvslt (_1!28780 (h!56400 (toList!4275 lt!1685580))) (_1!28780 lt!1685576))))))

(assert (=> d!1385669 (isStrictlySorted!406 (toList!4275 lt!1685580))))

(assert (=> d!1385669 (= (insertStrictlySorted!384 (toList!4275 lt!1685580) (_1!28780 lt!1685576) (_2!28780 lt!1685576)) lt!1686182)))

(declare-fun b!4507391 () Bool)

(assert (=> b!4507391 (= e!2807930 (insertStrictlySorted!384 (t!357657 (toList!4275 lt!1685580)) (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))

(assert (= (and d!1385669 c!768728) b!4507394))

(assert (= (and d!1385669 (not c!768728)) b!4507390))

(assert (= (and b!4507390 c!768729) b!4507388))

(assert (= (and b!4507390 (not c!768729)) b!4507393))

(assert (= (and b!4507393 c!768727) b!4507389))

(assert (= (and b!4507393 (not c!768727)) b!4507392))

(assert (= (or b!4507389 b!4507392) bm!313803))

(assert (= (or b!4507388 bm!313803) bm!313804))

(assert (= (or b!4507394 bm!313804) bm!313802))

(assert (= (and bm!313802 c!768730) b!4507391))

(assert (= (and bm!313802 (not c!768730)) b!4507385))

(assert (= (and d!1385669 res!1874460) b!4507387))

(assert (= (and b!4507387 res!1874459) b!4507386))

(declare-fun m!5244183 () Bool)

(assert (=> b!4507387 m!5244183))

(declare-fun m!5244185 () Bool)

(assert (=> b!4507391 m!5244185))

(declare-fun m!5244187 () Bool)

(assert (=> bm!313802 m!5244187))

(declare-fun m!5244189 () Bool)

(assert (=> d!1385669 m!5244189))

(declare-fun m!5244191 () Bool)

(assert (=> d!1385669 m!5244191))

(declare-fun m!5244193 () Bool)

(assert (=> b!4507386 m!5244193))

(assert (=> d!1385387 d!1385669))

(declare-fun b!4507396 () Bool)

(declare-fun e!2807933 () Option!11064)

(declare-fun e!2807934 () Option!11064)

(assert (=> b!4507396 (= e!2807933 e!2807934)))

(declare-fun c!768732 () Bool)

(assert (=> b!4507396 (= c!768732 (and ((_ is Cons!50571) (toList!4275 lt!1685827)) (not (= (_1!28780 (h!56400 (toList!4275 lt!1685827))) (_1!28780 lt!1685576)))))))

(declare-fun b!4507395 () Bool)

(assert (=> b!4507395 (= e!2807933 (Some!11063 (_2!28780 (h!56400 (toList!4275 lt!1685827)))))))

(declare-fun d!1385689 () Bool)

(declare-fun c!768731 () Bool)

(assert (=> d!1385689 (= c!768731 (and ((_ is Cons!50571) (toList!4275 lt!1685827)) (= (_1!28780 (h!56400 (toList!4275 lt!1685827))) (_1!28780 lt!1685576))))))

(assert (=> d!1385689 (= (getValueByKey!1044 (toList!4275 lt!1685827) (_1!28780 lt!1685576)) e!2807933)))

(declare-fun b!4507398 () Bool)

(assert (=> b!4507398 (= e!2807934 None!11063)))

(declare-fun b!4507397 () Bool)

(assert (=> b!4507397 (= e!2807934 (getValueByKey!1044 (t!357657 (toList!4275 lt!1685827)) (_1!28780 lt!1685576)))))

(assert (= (and d!1385689 c!768731) b!4507395))

(assert (= (and d!1385689 (not c!768731)) b!4507396))

(assert (= (and b!4507396 c!768732) b!4507397))

(assert (= (and b!4507396 (not c!768732)) b!4507398))

(declare-fun m!5244195 () Bool)

(assert (=> b!4507397 m!5244195))

(assert (=> b!4506845 d!1385689))

(declare-fun d!1385691 () Bool)

(assert (=> d!1385691 (= (head!9364 (toList!4275 lm!1477)) (h!56400 (toList!4275 lm!1477)))))

(assert (=> d!1385397 d!1385691))

(declare-fun d!1385693 () Bool)

(declare-fun res!1874461 () Bool)

(declare-fun e!2807935 () Bool)

(assert (=> d!1385693 (=> res!1874461 e!2807935)))

(assert (=> d!1385693 (= res!1874461 (and ((_ is Cons!50570) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (= (_1!28779 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) key!3287)))))

(assert (=> d!1385693 (= (containsKey!1709 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287) e!2807935)))

(declare-fun b!4507399 () Bool)

(declare-fun e!2807936 () Bool)

(assert (=> b!4507399 (= e!2807935 e!2807936)))

(declare-fun res!1874462 () Bool)

(assert (=> b!4507399 (=> (not res!1874462) (not e!2807936))))

(assert (=> b!4507399 (= res!1874462 ((_ is Cons!50570) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))

(declare-fun b!4507400 () Bool)

(assert (=> b!4507400 (= e!2807936 (containsKey!1709 (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) key!3287))))

(assert (= (and d!1385693 (not res!1874461)) b!4507399))

(assert (= (and b!4507399 res!1874462) b!4507400))

(declare-fun m!5244197 () Bool)

(assert (=> b!4507400 m!5244197))

(assert (=> d!1385297 d!1385693))

(declare-fun d!1385695 () Bool)

(declare-fun lt!1686183 () Bool)

(assert (=> d!1385695 (= lt!1686183 (select (content!8286 (keys!17544 lt!1685574)) key!3287))))

(declare-fun e!2807938 () Bool)

(assert (=> d!1385695 (= lt!1686183 e!2807938)))

(declare-fun res!1874463 () Bool)

(assert (=> d!1385695 (=> (not res!1874463) (not e!2807938))))

(assert (=> d!1385695 (= res!1874463 ((_ is Cons!50573) (keys!17544 lt!1685574)))))

(assert (=> d!1385695 (= (contains!13261 (keys!17544 lt!1685574) key!3287) lt!1686183)))

(declare-fun b!4507401 () Bool)

(declare-fun e!2807937 () Bool)

(assert (=> b!4507401 (= e!2807938 e!2807937)))

(declare-fun res!1874464 () Bool)

(assert (=> b!4507401 (=> res!1874464 e!2807937)))

(assert (=> b!4507401 (= res!1874464 (= (h!56404 (keys!17544 lt!1685574)) key!3287))))

(declare-fun b!4507402 () Bool)

(assert (=> b!4507402 (= e!2807937 (contains!13261 (t!357659 (keys!17544 lt!1685574)) key!3287))))

(assert (= (and d!1385695 res!1874463) b!4507401))

(assert (= (and b!4507401 (not res!1874464)) b!4507402))

(assert (=> d!1385695 m!5243249))

(declare-fun m!5244199 () Bool)

(assert (=> d!1385695 m!5244199))

(declare-fun m!5244201 () Bool)

(assert (=> d!1385695 m!5244201))

(declare-fun m!5244203 () Bool)

(assert (=> b!4507402 m!5244203))

(assert (=> b!4506753 d!1385695))

(declare-fun bs!844397 () Bool)

(declare-fun b!4507404 () Bool)

(assert (= bs!844397 (and b!4507404 b!4507080)))

(declare-fun lambda!169907 () Int)

(assert (=> bs!844397 (= (= (toList!4276 lt!1685574) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169907 lambda!169840))))

(declare-fun bs!844398 () Bool)

(assert (= bs!844398 (and b!4507404 b!4507083)))

(assert (=> bs!844398 (= (= (toList!4276 lt!1685574) (t!357656 (toList!4276 lt!1685574))) (= lambda!169907 lambda!169839))))

(declare-fun bs!844399 () Bool)

(assert (= bs!844399 (and b!4507404 b!4507111)))

(assert (=> bs!844399 (= (= (toList!4276 lt!1685574) (toList!4276 lt!1685795)) (= lambda!169907 lambda!169849))))

(declare-fun bs!844400 () Bool)

(assert (= bs!844400 (and b!4507404 b!4507104)))

(assert (=> bs!844400 (= (= (toList!4276 lt!1685574) (toList!4276 lt!1685586)) (= lambda!169907 lambda!169847))))

(declare-fun bs!844401 () Bool)

(assert (= bs!844401 (and b!4507404 b!4507084)))

(assert (=> bs!844401 (= lambda!169907 lambda!169841)))

(declare-fun bs!844402 () Bool)

(assert (= bs!844402 (and b!4507404 b!4507128)))

(assert (=> bs!844402 (= (= (toList!4276 lt!1685574) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (= lambda!169907 lambda!169851))))

(assert (=> b!4507404 true))

(declare-fun bs!844403 () Bool)

(declare-fun b!4507405 () Bool)

(assert (= bs!844403 (and b!4507405 b!4507082)))

(declare-fun lambda!169908 () Int)

(assert (=> bs!844403 (= lambda!169908 lambda!169842)))

(declare-fun bs!844404 () Bool)

(assert (= bs!844404 (and b!4507405 b!4507105)))

(assert (=> bs!844404 (= lambda!169908 lambda!169848)))

(declare-fun bs!844405 () Bool)

(assert (= bs!844405 (and b!4507405 b!4507112)))

(assert (=> bs!844405 (= lambda!169908 lambda!169850)))

(declare-fun bs!844406 () Bool)

(assert (= bs!844406 (and b!4507405 b!4507129)))

(assert (=> bs!844406 (= lambda!169908 lambda!169852)))

(declare-fun d!1385697 () Bool)

(declare-fun e!2807939 () Bool)

(assert (=> d!1385697 e!2807939))

(declare-fun res!1874465 () Bool)

(assert (=> d!1385697 (=> (not res!1874465) (not e!2807939))))

(declare-fun lt!1686184 () List!50697)

(assert (=> d!1385697 (= res!1874465 (noDuplicate!736 lt!1686184))))

(assert (=> d!1385697 (= lt!1686184 (getKeysList!441 (toList!4276 lt!1685574)))))

(assert (=> d!1385697 (= (keys!17544 lt!1685574) lt!1686184)))

(declare-fun b!4507403 () Bool)

(declare-fun res!1874466 () Bool)

(assert (=> b!4507403 (=> (not res!1874466) (not e!2807939))))

(assert (=> b!4507403 (= res!1874466 (= (length!328 lt!1686184) (length!329 (toList!4276 lt!1685574))))))

(declare-fun res!1874467 () Bool)

(assert (=> b!4507404 (=> (not res!1874467) (not e!2807939))))

(assert (=> b!4507404 (= res!1874467 (forall!10205 lt!1686184 lambda!169907))))

(assert (=> b!4507405 (= e!2807939 (= (content!8286 lt!1686184) (content!8286 (map!11114 (toList!4276 lt!1685574) lambda!169908))))))

(assert (= (and d!1385697 res!1874465) b!4507403))

(assert (= (and b!4507403 res!1874466) b!4507404))

(assert (= (and b!4507404 res!1874467) b!4507405))

(declare-fun m!5244205 () Bool)

(assert (=> d!1385697 m!5244205))

(assert (=> d!1385697 m!5243243))

(declare-fun m!5244207 () Bool)

(assert (=> b!4507403 m!5244207))

(assert (=> b!4507403 m!5243763))

(declare-fun m!5244209 () Bool)

(assert (=> b!4507404 m!5244209))

(declare-fun m!5244211 () Bool)

(assert (=> b!4507405 m!5244211))

(declare-fun m!5244213 () Bool)

(assert (=> b!4507405 m!5244213))

(assert (=> b!4507405 m!5244213))

(declare-fun m!5244215 () Bool)

(assert (=> b!4507405 m!5244215))

(assert (=> b!4506753 d!1385697))

(declare-fun bs!844407 () Bool)

(declare-fun b!4507410 () Bool)

(assert (= bs!844407 (and b!4507410 b!4507038)))

(declare-fun lambda!169909 () Int)

(assert (=> bs!844407 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1685929) (= lambda!169909 lambda!169828))))

(declare-fun bs!844408 () Bool)

(assert (= bs!844408 (and b!4507410 b!4507274)))

(assert (=> bs!844408 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1686129) (= lambda!169909 lambda!169888))))

(declare-fun bs!844409 () Bool)

(assert (= bs!844409 (and b!4507410 d!1385635)))

(assert (=> bs!844409 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1686119) (= lambda!169909 lambda!169889))))

(assert (=> bs!844408 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169909 lambda!169887))))

(declare-fun bs!844410 () Bool)

(assert (= bs!844410 (and b!4507410 d!1385411)))

(assert (=> bs!844410 (not (= lambda!169909 lambda!169784))))

(declare-fun bs!844411 () Bool)

(assert (= bs!844411 (and b!4507410 d!1385461)))

(assert (=> bs!844411 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1685919) (= lambda!169909 lambda!169829))))

(assert (=> bs!844407 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169909 lambda!169827))))

(declare-fun bs!844412 () Bool)

(assert (= bs!844412 (and b!4507410 b!4507042)))

(assert (=> bs!844412 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169909 lambda!169826))))

(declare-fun bs!844413 () Bool)

(assert (= bs!844413 (and b!4507410 b!4507278)))

(assert (=> bs!844413 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169909 lambda!169886))))

(assert (=> b!4507410 true))

(declare-fun bs!844414 () Bool)

(declare-fun b!4507406 () Bool)

(assert (= bs!844414 (and b!4507406 b!4507274)))

(declare-fun lambda!169910 () Int)

(assert (=> bs!844414 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1686129) (= lambda!169910 lambda!169888))))

(declare-fun bs!844415 () Bool)

(assert (= bs!844415 (and b!4507406 d!1385635)))

(assert (=> bs!844415 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1686119) (= lambda!169910 lambda!169889))))

(assert (=> bs!844414 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169910 lambda!169887))))

(declare-fun bs!844416 () Bool)

(assert (= bs!844416 (and b!4507406 d!1385411)))

(assert (=> bs!844416 (not (= lambda!169910 lambda!169784))))

(declare-fun bs!844417 () Bool)

(assert (= bs!844417 (and b!4507406 d!1385461)))

(assert (=> bs!844417 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1685919) (= lambda!169910 lambda!169829))))

(declare-fun bs!844418 () Bool)

(assert (= bs!844418 (and b!4507406 b!4507038)))

(assert (=> bs!844418 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169910 lambda!169827))))

(declare-fun bs!844419 () Bool)

(assert (= bs!844419 (and b!4507406 b!4507042)))

(assert (=> bs!844419 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169910 lambda!169826))))

(declare-fun bs!844420 () Bool)

(assert (= bs!844420 (and b!4507406 b!4507278)))

(assert (=> bs!844420 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169910 lambda!169886))))

(assert (=> bs!844418 (= (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1685929) (= lambda!169910 lambda!169828))))

(declare-fun bs!844421 () Bool)

(assert (= bs!844421 (and b!4507406 b!4507410)))

(assert (=> bs!844421 (= lambda!169910 lambda!169909)))

(assert (=> b!4507406 true))

(declare-fun lambda!169911 () Int)

(declare-fun lt!1686200 () ListMap!3537)

(assert (=> bs!844414 (= (= lt!1686200 lt!1686129) (= lambda!169911 lambda!169888))))

(assert (=> bs!844415 (= (= lt!1686200 lt!1686119) (= lambda!169911 lambda!169889))))

(assert (=> bs!844414 (= (= lt!1686200 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169911 lambda!169887))))

(assert (=> bs!844416 (not (= lambda!169911 lambda!169784))))

(assert (=> bs!844417 (= (= lt!1686200 lt!1685919) (= lambda!169911 lambda!169829))))

(assert (=> bs!844418 (= (= lt!1686200 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169911 lambda!169827))))

(assert (=> bs!844419 (= (= lt!1686200 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169911 lambda!169826))))

(assert (=> bs!844420 (= (= lt!1686200 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169911 lambda!169886))))

(assert (=> b!4507406 (= (= lt!1686200 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169911 lambda!169910))))

(assert (=> bs!844418 (= (= lt!1686200 lt!1685929) (= lambda!169911 lambda!169828))))

(assert (=> bs!844421 (= (= lt!1686200 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169911 lambda!169909))))

(assert (=> b!4507406 true))

(declare-fun bs!844422 () Bool)

(declare-fun d!1385699 () Bool)

(assert (= bs!844422 (and d!1385699 b!4507274)))

(declare-fun lambda!169912 () Int)

(declare-fun lt!1686190 () ListMap!3537)

(assert (=> bs!844422 (= (= lt!1686190 lt!1686129) (= lambda!169912 lambda!169888))))

(assert (=> bs!844422 (= (= lt!1686190 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169912 lambda!169887))))

(declare-fun bs!844423 () Bool)

(assert (= bs!844423 (and d!1385699 d!1385411)))

(assert (=> bs!844423 (not (= lambda!169912 lambda!169784))))

(declare-fun bs!844424 () Bool)

(assert (= bs!844424 (and d!1385699 d!1385461)))

(assert (=> bs!844424 (= (= lt!1686190 lt!1685919) (= lambda!169912 lambda!169829))))

(declare-fun bs!844425 () Bool)

(assert (= bs!844425 (and d!1385699 b!4507038)))

(assert (=> bs!844425 (= (= lt!1686190 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169912 lambda!169827))))

(declare-fun bs!844426 () Bool)

(assert (= bs!844426 (and d!1385699 b!4507042)))

(assert (=> bs!844426 (= (= lt!1686190 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169912 lambda!169826))))

(declare-fun bs!844427 () Bool)

(assert (= bs!844427 (and d!1385699 b!4507278)))

(assert (=> bs!844427 (= (= lt!1686190 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169912 lambda!169886))))

(declare-fun bs!844428 () Bool)

(assert (= bs!844428 (and d!1385699 b!4507406)))

(assert (=> bs!844428 (= (= lt!1686190 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169912 lambda!169910))))

(assert (=> bs!844425 (= (= lt!1686190 lt!1685929) (= lambda!169912 lambda!169828))))

(declare-fun bs!844429 () Bool)

(assert (= bs!844429 (and d!1385699 b!4507410)))

(assert (=> bs!844429 (= (= lt!1686190 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169912 lambda!169909))))

(declare-fun bs!844430 () Bool)

(assert (= bs!844430 (and d!1385699 d!1385635)))

(assert (=> bs!844430 (= (= lt!1686190 lt!1686119) (= lambda!169912 lambda!169889))))

(assert (=> bs!844428 (= (= lt!1686190 lt!1686200) (= lambda!169912 lambda!169911))))

(assert (=> d!1385699 true))

(declare-fun bm!313805 () Bool)

(declare-fun call!313810 () Unit!92894)

(assert (=> bm!313805 (= call!313810 (lemmaContainsAllItsOwnKeys!313 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))))))

(declare-fun b!4507407 () Bool)

(declare-fun res!1874468 () Bool)

(declare-fun e!2807941 () Bool)

(assert (=> b!4507407 (=> (not res!1874468) (not e!2807941))))

(assert (=> b!4507407 (= res!1874468 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) lambda!169912))))

(declare-fun b!4507408 () Bool)

(assert (=> b!4507408 (= e!2807941 (invariantList!993 (toList!4276 lt!1686190)))))

(declare-fun c!768733 () Bool)

(declare-fun call!313811 () Bool)

(declare-fun bm!313806 () Bool)

(assert (=> bm!313806 (= call!313811 (forall!10203 (ite c!768733 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (ite c!768733 lambda!169909 lambda!169911)))))

(declare-fun e!2807940 () Bool)

(declare-fun b!4507409 () Bool)

(assert (=> b!4507409 (= e!2807940 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) lambda!169911))))

(assert (=> d!1385699 e!2807941))

(declare-fun res!1874470 () Bool)

(assert (=> d!1385699 (=> (not res!1874470) (not e!2807941))))

(assert (=> d!1385699 (= res!1874470 (forall!10203 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lambda!169912))))

(declare-fun e!2807942 () ListMap!3537)

(assert (=> d!1385699 (= lt!1686190 e!2807942)))

(assert (=> d!1385699 (= c!768733 ((_ is Nil!50570) (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576))))))))

(assert (=> d!1385699 (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))))

(assert (=> d!1385699 (= (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) lt!1686190)))

(assert (=> b!4507406 (= e!2807942 lt!1686200)))

(declare-fun lt!1686193 () ListMap!3537)

(assert (=> b!4507406 (= lt!1686193 (+!1489 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (h!56399 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))))))

(assert (=> b!4507406 (= lt!1686200 (addToMapMapFromBucket!661 (t!357656 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (+!1489 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (h!56399 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576))))))))))

(declare-fun lt!1686188 () Unit!92894)

(assert (=> b!4507406 (= lt!1686188 call!313810)))

(assert (=> b!4507406 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) lambda!169910)))

(declare-fun lt!1686186 () Unit!92894)

(assert (=> b!4507406 (= lt!1686186 lt!1686188)))

(assert (=> b!4507406 (forall!10203 (toList!4276 lt!1686193) lambda!169911)))

(declare-fun lt!1686203 () Unit!92894)

(declare-fun Unit!92972 () Unit!92894)

(assert (=> b!4507406 (= lt!1686203 Unit!92972)))

(declare-fun call!313812 () Bool)

(assert (=> b!4507406 call!313812))

(declare-fun lt!1686189 () Unit!92894)

(declare-fun Unit!92973 () Unit!92894)

(assert (=> b!4507406 (= lt!1686189 Unit!92973)))

(declare-fun lt!1686202 () Unit!92894)

(declare-fun Unit!92974 () Unit!92894)

(assert (=> b!4507406 (= lt!1686202 Unit!92974)))

(declare-fun lt!1686197 () Unit!92894)

(assert (=> b!4507406 (= lt!1686197 (forallContained!2454 (toList!4276 lt!1686193) lambda!169911 (h!56399 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))))))

(assert (=> b!4507406 (contains!13257 lt!1686193 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))))))

(declare-fun lt!1686187 () Unit!92894)

(declare-fun Unit!92975 () Unit!92894)

(assert (=> b!4507406 (= lt!1686187 Unit!92975)))

(assert (=> b!4507406 (contains!13257 lt!1686200 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))))))

(declare-fun lt!1686201 () Unit!92894)

(declare-fun Unit!92976 () Unit!92894)

(assert (=> b!4507406 (= lt!1686201 Unit!92976)))

(assert (=> b!4507406 call!313811))

(declare-fun lt!1686204 () Unit!92894)

(declare-fun Unit!92977 () Unit!92894)

(assert (=> b!4507406 (= lt!1686204 Unit!92977)))

(assert (=> b!4507406 (forall!10203 (toList!4276 lt!1686193) lambda!169911)))

(declare-fun lt!1686199 () Unit!92894)

(declare-fun Unit!92978 () Unit!92894)

(assert (=> b!4507406 (= lt!1686199 Unit!92978)))

(declare-fun lt!1686185 () Unit!92894)

(declare-fun Unit!92979 () Unit!92894)

(assert (=> b!4507406 (= lt!1686185 Unit!92979)))

(declare-fun lt!1686192 () Unit!92894)

(assert (=> b!4507406 (= lt!1686192 (addForallContainsKeyThenBeforeAdding!313 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1686200 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))) (_2!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576))))))))))

(assert (=> b!4507406 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) lambda!169911)))

(declare-fun lt!1686198 () Unit!92894)

(assert (=> b!4507406 (= lt!1686198 lt!1686192)))

(assert (=> b!4507406 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) lambda!169911)))

(declare-fun lt!1686196 () Unit!92894)

(declare-fun Unit!92980 () Unit!92894)

(assert (=> b!4507406 (= lt!1686196 Unit!92980)))

(declare-fun res!1874469 () Bool)

(assert (=> b!4507406 (= res!1874469 (forall!10203 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lambda!169911))))

(assert (=> b!4507406 (=> (not res!1874469) (not e!2807940))))

(assert (=> b!4507406 e!2807940))

(declare-fun lt!1686195 () Unit!92894)

(declare-fun Unit!92981 () Unit!92894)

(assert (=> b!4507406 (= lt!1686195 Unit!92981)))

(assert (=> b!4507410 (= e!2807942 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))))

(declare-fun lt!1686205 () Unit!92894)

(assert (=> b!4507410 (= lt!1686205 call!313810)))

(assert (=> b!4507410 call!313811))

(declare-fun lt!1686194 () Unit!92894)

(assert (=> b!4507410 (= lt!1686194 lt!1686205)))

(assert (=> b!4507410 call!313812))

(declare-fun lt!1686191 () Unit!92894)

(declare-fun Unit!92982 () Unit!92894)

(assert (=> b!4507410 (= lt!1686191 Unit!92982)))

(declare-fun bm!313807 () Bool)

(assert (=> bm!313807 (= call!313812 (forall!10203 (ite c!768733 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (t!357656 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))) (ite c!768733 lambda!169909 lambda!169911)))))

(assert (= (and d!1385699 c!768733) b!4507410))

(assert (= (and d!1385699 (not c!768733)) b!4507406))

(assert (= (and b!4507406 res!1874469) b!4507409))

(assert (= (or b!4507410 b!4507406) bm!313806))

(assert (= (or b!4507410 b!4507406) bm!313807))

(assert (= (or b!4507410 b!4507406) bm!313805))

(assert (= (and d!1385699 res!1874470) b!4507407))

(assert (= (and b!4507407 res!1874468) b!4507408))

(declare-fun m!5244217 () Bool)

(assert (=> b!4507408 m!5244217))

(declare-fun m!5244219 () Bool)

(assert (=> d!1385699 m!5244219))

(declare-fun m!5244221 () Bool)

(assert (=> d!1385699 m!5244221))

(declare-fun m!5244223 () Bool)

(assert (=> bm!313807 m!5244223))

(assert (=> bm!313805 m!5243377))

(declare-fun m!5244225 () Bool)

(assert (=> bm!313805 m!5244225))

(declare-fun m!5244227 () Bool)

(assert (=> b!4507409 m!5244227))

(declare-fun m!5244229 () Bool)

(assert (=> bm!313806 m!5244229))

(declare-fun m!5244231 () Bool)

(assert (=> b!4507407 m!5244231))

(declare-fun m!5244233 () Bool)

(assert (=> b!4507406 m!5244233))

(declare-fun m!5244235 () Bool)

(assert (=> b!4507406 m!5244235))

(declare-fun m!5244237 () Bool)

(assert (=> b!4507406 m!5244237))

(declare-fun m!5244239 () Bool)

(assert (=> b!4507406 m!5244239))

(declare-fun m!5244241 () Bool)

(assert (=> b!4507406 m!5244241))

(assert (=> b!4507406 m!5243377))

(assert (=> b!4507406 m!5244233))

(declare-fun m!5244243 () Bool)

(assert (=> b!4507406 m!5244243))

(declare-fun m!5244245 () Bool)

(assert (=> b!4507406 m!5244245))

(declare-fun m!5244247 () Bool)

(assert (=> b!4507406 m!5244247))

(assert (=> b!4507406 m!5244227))

(assert (=> b!4507406 m!5244247))

(assert (=> b!4507406 m!5243377))

(declare-fun m!5244249 () Bool)

(assert (=> b!4507406 m!5244249))

(assert (=> b!4507406 m!5244227))

(assert (=> b!4506821 d!1385699))

(declare-fun bs!844431 () Bool)

(declare-fun d!1385701 () Bool)

(assert (= bs!844431 (and d!1385701 d!1385357)))

(declare-fun lambda!169913 () Int)

(assert (=> bs!844431 (= lambda!169913 lambda!169766)))

(declare-fun bs!844432 () Bool)

(assert (= bs!844432 (and d!1385701 d!1385325)))

(assert (=> bs!844432 (= lambda!169913 lambda!169765)))

(declare-fun bs!844433 () Bool)

(assert (= bs!844433 (and d!1385701 start!445184)))

(assert (=> bs!844433 (= lambda!169913 lambda!169727)))

(declare-fun bs!844434 () Bool)

(assert (= bs!844434 (and d!1385701 d!1385637)))

(assert (=> bs!844434 (= lambda!169913 lambda!169896)))

(declare-fun bs!844435 () Bool)

(assert (= bs!844435 (and d!1385701 d!1385427)))

(assert (=> bs!844435 (= lambda!169913 lambda!169785)))

(declare-fun bs!844437 () Bool)

(assert (= bs!844437 (and d!1385701 d!1385533)))

(assert (=> bs!844437 (= lambda!169913 lambda!169830)))

(declare-fun bs!844438 () Bool)

(assert (= bs!844438 (and d!1385701 d!1385377)))

(assert (=> bs!844438 (= lambda!169913 lambda!169770)))

(declare-fun bs!844439 () Bool)

(assert (= bs!844439 (and d!1385701 d!1385385)))

(assert (=> bs!844439 (= lambda!169913 lambda!169773)))

(declare-fun bs!844440 () Bool)

(assert (= bs!844440 (and d!1385701 d!1385395)))

(assert (=> bs!844440 (= lambda!169913 lambda!169775)))

(declare-fun bs!844442 () Bool)

(assert (= bs!844442 (and d!1385701 d!1385281)))

(assert (=> bs!844442 (= lambda!169913 lambda!169749)))

(declare-fun bs!844443 () Bool)

(assert (= bs!844443 (and d!1385701 d!1385389)))

(assert (=> bs!844443 (= lambda!169913 lambda!169774)))

(declare-fun bs!844444 () Bool)

(assert (= bs!844444 (and d!1385701 d!1385253)))

(assert (=> bs!844444 (= lambda!169913 lambda!169730)))

(declare-fun bs!844445 () Bool)

(assert (= bs!844445 (and d!1385701 d!1385401)))

(assert (=> bs!844445 (= lambda!169913 lambda!169778)))

(declare-fun bs!844446 () Bool)

(assert (= bs!844446 (and d!1385701 d!1385313)))

(assert (=> bs!844446 (= lambda!169913 lambda!169757)))

(declare-fun bs!844447 () Bool)

(assert (= bs!844447 (and d!1385701 d!1385403)))

(assert (=> bs!844447 (not (= lambda!169913 lambda!169781))))

(declare-fun lt!1686209 () ListMap!3537)

(assert (=> d!1385701 (invariantList!993 (toList!4276 lt!1686209))))

(declare-fun e!2807958 () ListMap!3537)

(assert (=> d!1385701 (= lt!1686209 e!2807958)))

(declare-fun c!768746 () Bool)

(assert (=> d!1385701 (= c!768746 ((_ is Cons!50571) (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))))

(assert (=> d!1385701 (forall!10201 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))) lambda!169913)))

(assert (=> d!1385701 (= (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) lt!1686209)))

(declare-fun b!4507441 () Bool)

(assert (=> b!4507441 (= e!2807958 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576)))))))))

(declare-fun b!4507442 () Bool)

(assert (=> b!4507442 (= e!2807958 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385701 c!768746) b!4507441))

(assert (= (and d!1385701 (not c!768746)) b!4507442))

(declare-fun m!5244275 () Bool)

(assert (=> d!1385701 m!5244275))

(declare-fun m!5244277 () Bool)

(assert (=> d!1385701 m!5244277))

(declare-fun m!5244279 () Bool)

(assert (=> b!4507441 m!5244279))

(assert (=> b!4507441 m!5244279))

(declare-fun m!5244281 () Bool)

(assert (=> b!4507441 m!5244281))

(assert (=> b!4506821 d!1385701))

(declare-fun d!1385711 () Bool)

(declare-fun c!768756 () Bool)

(assert (=> d!1385711 (= c!768756 ((_ is Nil!50570) (toList!4276 lt!1685574)))))

(declare-fun e!2807971 () (InoxSet tuple2!50970))

(assert (=> d!1385711 (= (content!8287 (toList!4276 lt!1685574)) e!2807971)))

(declare-fun b!4507466 () Bool)

(assert (=> b!4507466 (= e!2807971 ((as const (Array tuple2!50970 Bool)) false))))

(declare-fun b!4507467 () Bool)

(assert (=> b!4507467 (= e!2807971 ((_ map or) (store ((as const (Array tuple2!50970 Bool)) false) (h!56399 (toList!4276 lt!1685574)) true) (content!8287 (t!357656 (toList!4276 lt!1685574)))))))

(assert (= (and d!1385711 c!768756) b!4507466))

(assert (= (and d!1385711 (not c!768756)) b!4507467))

(declare-fun m!5244301 () Bool)

(assert (=> b!4507467 m!5244301))

(declare-fun m!5244303 () Bool)

(assert (=> b!4507467 m!5244303))

(assert (=> d!1385417 d!1385711))

(declare-fun d!1385717 () Bool)

(declare-fun c!768757 () Bool)

(assert (=> d!1385717 (= c!768757 ((_ is Nil!50570) (toList!4276 lt!1685587)))))

(declare-fun e!2807972 () (InoxSet tuple2!50970))

(assert (=> d!1385717 (= (content!8287 (toList!4276 lt!1685587)) e!2807972)))

(declare-fun b!4507468 () Bool)

(assert (=> b!4507468 (= e!2807972 ((as const (Array tuple2!50970 Bool)) false))))

(declare-fun b!4507469 () Bool)

(assert (=> b!4507469 (= e!2807972 ((_ map or) (store ((as const (Array tuple2!50970 Bool)) false) (h!56399 (toList!4276 lt!1685587)) true) (content!8287 (t!357656 (toList!4276 lt!1685587)))))))

(assert (= (and d!1385717 c!768757) b!4507468))

(assert (= (and d!1385717 (not c!768757)) b!4507469))

(declare-fun m!5244307 () Bool)

(assert (=> b!4507469 m!5244307))

(declare-fun m!5244309 () Bool)

(assert (=> b!4507469 m!5244309))

(assert (=> d!1385417 d!1385717))

(declare-fun d!1385721 () Bool)

(declare-fun lt!1686218 () Bool)

(assert (=> d!1385721 (= lt!1686218 (select (content!8286 e!2807506) key!3287))))

(declare-fun e!2807976 () Bool)

(assert (=> d!1385721 (= lt!1686218 e!2807976)))

(declare-fun res!1874484 () Bool)

(assert (=> d!1385721 (=> (not res!1874484) (not e!2807976))))

(assert (=> d!1385721 (= res!1874484 ((_ is Cons!50573) e!2807506))))

(assert (=> d!1385721 (= (contains!13261 e!2807506 key!3287) lt!1686218)))

(declare-fun b!4507472 () Bool)

(declare-fun e!2807975 () Bool)

(assert (=> b!4507472 (= e!2807976 e!2807975)))

(declare-fun res!1874485 () Bool)

(assert (=> b!4507472 (=> res!1874485 e!2807975)))

(assert (=> b!4507472 (= res!1874485 (= (h!56404 e!2807506) key!3287))))

(declare-fun b!4507473 () Bool)

(assert (=> b!4507473 (= e!2807975 (contains!13261 (t!357659 e!2807506) key!3287))))

(assert (= (and d!1385721 res!1874484) b!4507472))

(assert (= (and b!4507472 (not res!1874485)) b!4507473))

(declare-fun m!5244313 () Bool)

(assert (=> d!1385721 m!5244313))

(declare-fun m!5244315 () Bool)

(assert (=> d!1385721 m!5244315))

(declare-fun m!5244319 () Bool)

(assert (=> b!4507473 m!5244319))

(assert (=> bm!313750 d!1385721))

(declare-fun d!1385725 () Bool)

(assert (=> d!1385725 (dynLambda!21126 lambda!169727 lt!1685588)))

(assert (=> d!1385725 true))

(declare-fun _$7!1801 () Unit!92894)

(assert (=> d!1385725 (= (choose!29229 (toList!4275 lm!1477) lambda!169727 lt!1685588) _$7!1801)))

(declare-fun b_lambda!153411 () Bool)

(assert (=> (not b_lambda!153411) (not d!1385725)))

(declare-fun bs!844448 () Bool)

(assert (= bs!844448 d!1385725))

(assert (=> bs!844448 m!5242913))

(assert (=> d!1385267 d!1385725))

(assert (=> d!1385267 d!1385407))

(assert (=> b!4506758 d!1385695))

(assert (=> b!4506758 d!1385697))

(declare-fun d!1385729 () Bool)

(declare-fun e!2807979 () Bool)

(assert (=> d!1385729 e!2807979))

(declare-fun res!1874487 () Bool)

(assert (=> d!1385729 (=> res!1874487 e!2807979)))

(declare-fun lt!1686225 () Bool)

(assert (=> d!1385729 (= res!1874487 (not lt!1686225))))

(declare-fun lt!1686223 () Bool)

(assert (=> d!1385729 (= lt!1686225 lt!1686223)))

(declare-fun lt!1686224 () Unit!92894)

(declare-fun e!2807980 () Unit!92894)

(assert (=> d!1385729 (= lt!1686224 e!2807980)))

(declare-fun c!768759 () Bool)

(assert (=> d!1385729 (= c!768759 lt!1686223)))

(assert (=> d!1385729 (= lt!1686223 (containsKey!1708 (toList!4275 lt!1685827) (_1!28780 lt!1685576)))))

(assert (=> d!1385729 (= (contains!13259 lt!1685827 (_1!28780 lt!1685576)) lt!1686225)))

(declare-fun b!4507477 () Bool)

(declare-fun lt!1686226 () Unit!92894)

(assert (=> b!4507477 (= e!2807980 lt!1686226)))

(assert (=> b!4507477 (= lt!1686226 (lemmaContainsKeyImpliesGetValueByKeyDefined!947 (toList!4275 lt!1685827) (_1!28780 lt!1685576)))))

(assert (=> b!4507477 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685827) (_1!28780 lt!1685576)))))

(declare-fun b!4507478 () Bool)

(declare-fun Unit!92987 () Unit!92894)

(assert (=> b!4507478 (= e!2807980 Unit!92987)))

(declare-fun b!4507479 () Bool)

(assert (=> b!4507479 (= e!2807979 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685827) (_1!28780 lt!1685576))))))

(assert (= (and d!1385729 c!768759) b!4507477))

(assert (= (and d!1385729 (not c!768759)) b!4507478))

(assert (= (and d!1385729 (not res!1874487)) b!4507479))

(declare-fun m!5244329 () Bool)

(assert (=> d!1385729 m!5244329))

(declare-fun m!5244331 () Bool)

(assert (=> b!4507477 m!5244331))

(assert (=> b!4507477 m!5243437))

(assert (=> b!4507477 m!5243437))

(declare-fun m!5244333 () Bool)

(assert (=> b!4507477 m!5244333))

(assert (=> b!4507479 m!5243437))

(assert (=> b!4507479 m!5243437))

(assert (=> b!4507479 m!5244333))

(assert (=> d!1385421 d!1385729))

(declare-fun b!4507481 () Bool)

(declare-fun e!2807981 () Option!11064)

(declare-fun e!2807982 () Option!11064)

(assert (=> b!4507481 (= e!2807981 e!2807982)))

(declare-fun c!768761 () Bool)

(assert (=> b!4507481 (= c!768761 (and ((_ is Cons!50571) lt!1685825) (not (= (_1!28780 (h!56400 lt!1685825)) (_1!28780 lt!1685576)))))))

(declare-fun b!4507480 () Bool)

(assert (=> b!4507480 (= e!2807981 (Some!11063 (_2!28780 (h!56400 lt!1685825))))))

(declare-fun d!1385731 () Bool)

(declare-fun c!768760 () Bool)

(assert (=> d!1385731 (= c!768760 (and ((_ is Cons!50571) lt!1685825) (= (_1!28780 (h!56400 lt!1685825)) (_1!28780 lt!1685576))))))

(assert (=> d!1385731 (= (getValueByKey!1044 lt!1685825 (_1!28780 lt!1685576)) e!2807981)))

(declare-fun b!4507483 () Bool)

(assert (=> b!4507483 (= e!2807982 None!11063)))

(declare-fun b!4507482 () Bool)

(assert (=> b!4507482 (= e!2807982 (getValueByKey!1044 (t!357657 lt!1685825) (_1!28780 lt!1685576)))))

(assert (= (and d!1385731 c!768760) b!4507480))

(assert (= (and d!1385731 (not c!768760)) b!4507481))

(assert (= (and b!4507481 c!768761) b!4507482))

(assert (= (and b!4507481 (not c!768761)) b!4507483))

(declare-fun m!5244335 () Bool)

(assert (=> b!4507482 m!5244335))

(assert (=> d!1385421 d!1385731))

(declare-fun d!1385733 () Bool)

(assert (=> d!1385733 (= (getValueByKey!1044 lt!1685825 (_1!28780 lt!1685576)) (Some!11063 (_2!28780 lt!1685576)))))

(declare-fun lt!1686227 () Unit!92894)

(assert (=> d!1385733 (= lt!1686227 (choose!29246 lt!1685825 (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))

(declare-fun e!2807983 () Bool)

(assert (=> d!1385733 e!2807983))

(declare-fun res!1874488 () Bool)

(assert (=> d!1385733 (=> (not res!1874488) (not e!2807983))))

(assert (=> d!1385733 (= res!1874488 (isStrictlySorted!406 lt!1685825))))

(assert (=> d!1385733 (= (lemmaContainsTupThenGetReturnValue!644 lt!1685825 (_1!28780 lt!1685576) (_2!28780 lt!1685576)) lt!1686227)))

(declare-fun b!4507484 () Bool)

(declare-fun res!1874489 () Bool)

(assert (=> b!4507484 (=> (not res!1874489) (not e!2807983))))

(assert (=> b!4507484 (= res!1874489 (containsKey!1708 lt!1685825 (_1!28780 lt!1685576)))))

(declare-fun b!4507485 () Bool)

(assert (=> b!4507485 (= e!2807983 (contains!13258 lt!1685825 (tuple2!50973 (_1!28780 lt!1685576) (_2!28780 lt!1685576))))))

(assert (= (and d!1385733 res!1874488) b!4507484))

(assert (= (and b!4507484 res!1874489) b!4507485))

(assert (=> d!1385733 m!5243431))

(declare-fun m!5244337 () Bool)

(assert (=> d!1385733 m!5244337))

(declare-fun m!5244339 () Bool)

(assert (=> d!1385733 m!5244339))

(declare-fun m!5244341 () Bool)

(assert (=> b!4507484 m!5244341))

(declare-fun m!5244343 () Bool)

(assert (=> b!4507485 m!5244343))

(assert (=> d!1385421 d!1385733))

(declare-fun c!768762 () Bool)

(declare-fun e!2807988 () List!50695)

(declare-fun b!4507488 () Bool)

(declare-fun c!768764 () Bool)

(assert (=> b!4507488 (= e!2807988 (ite c!768764 (t!357657 (toList!4275 lt!1685585)) (ite c!768762 (Cons!50571 (h!56400 (toList!4275 lt!1685585)) (t!357657 (toList!4275 lt!1685585))) Nil!50571)))))

(declare-fun b!4507489 () Bool)

(declare-fun e!2807987 () Bool)

(declare-fun lt!1686228 () List!50695)

(assert (=> b!4507489 (= e!2807987 (contains!13258 lt!1686228 (tuple2!50973 (_1!28780 lt!1685576) (_2!28780 lt!1685576))))))

(declare-fun b!4507490 () Bool)

(declare-fun res!1874492 () Bool)

(assert (=> b!4507490 (=> (not res!1874492) (not e!2807987))))

(assert (=> b!4507490 (= res!1874492 (containsKey!1708 lt!1686228 (_1!28780 lt!1685576)))))

(declare-fun b!4507491 () Bool)

(declare-fun e!2807989 () List!50695)

(declare-fun call!313826 () List!50695)

(assert (=> b!4507491 (= e!2807989 call!313826)))

(declare-fun b!4507492 () Bool)

(declare-fun e!2807990 () List!50695)

(declare-fun call!313827 () List!50695)

(assert (=> b!4507492 (= e!2807990 call!313827)))

(declare-fun b!4507493 () Bool)

(declare-fun e!2807986 () List!50695)

(assert (=> b!4507493 (= e!2807986 e!2807989)))

(assert (=> b!4507493 (= c!768764 (and ((_ is Cons!50571) (toList!4275 lt!1685585)) (= (_1!28780 (h!56400 (toList!4275 lt!1685585))) (_1!28780 lt!1685576))))))

(declare-fun bm!313820 () Bool)

(declare-fun call!313825 () List!50695)

(declare-fun c!768763 () Bool)

(assert (=> bm!313820 (= call!313825 ($colon$colon!912 e!2807988 (ite c!768763 (h!56400 (toList!4275 lt!1685585)) (tuple2!50973 (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))))

(declare-fun c!768765 () Bool)

(assert (=> bm!313820 (= c!768765 c!768763)))

(declare-fun b!4507495 () Bool)

(assert (=> b!4507495 (= e!2807990 call!313827)))

(declare-fun bm!313821 () Bool)

(assert (=> bm!313821 (= call!313827 call!313826)))

(declare-fun b!4507496 () Bool)

(assert (=> b!4507496 (= c!768762 (and ((_ is Cons!50571) (toList!4275 lt!1685585)) (bvsgt (_1!28780 (h!56400 (toList!4275 lt!1685585))) (_1!28780 lt!1685576))))))

(assert (=> b!4507496 (= e!2807989 e!2807990)))

(declare-fun b!4507497 () Bool)

(assert (=> b!4507497 (= e!2807986 call!313825)))

(declare-fun bm!313822 () Bool)

(assert (=> bm!313822 (= call!313826 call!313825)))

(declare-fun d!1385737 () Bool)

(assert (=> d!1385737 e!2807987))

(declare-fun res!1874493 () Bool)

(assert (=> d!1385737 (=> (not res!1874493) (not e!2807987))))

(assert (=> d!1385737 (= res!1874493 (isStrictlySorted!406 lt!1686228))))

(assert (=> d!1385737 (= lt!1686228 e!2807986)))

(assert (=> d!1385737 (= c!768763 (and ((_ is Cons!50571) (toList!4275 lt!1685585)) (bvslt (_1!28780 (h!56400 (toList!4275 lt!1685585))) (_1!28780 lt!1685576))))))

(assert (=> d!1385737 (isStrictlySorted!406 (toList!4275 lt!1685585))))

(assert (=> d!1385737 (= (insertStrictlySorted!384 (toList!4275 lt!1685585) (_1!28780 lt!1685576) (_2!28780 lt!1685576)) lt!1686228)))

(declare-fun b!4507494 () Bool)

(assert (=> b!4507494 (= e!2807988 (insertStrictlySorted!384 (t!357657 (toList!4275 lt!1685585)) (_1!28780 lt!1685576) (_2!28780 lt!1685576)))))

(assert (= (and d!1385737 c!768763) b!4507497))

(assert (= (and d!1385737 (not c!768763)) b!4507493))

(assert (= (and b!4507493 c!768764) b!4507491))

(assert (= (and b!4507493 (not c!768764)) b!4507496))

(assert (= (and b!4507496 c!768762) b!4507492))

(assert (= (and b!4507496 (not c!768762)) b!4507495))

(assert (= (or b!4507492 b!4507495) bm!313821))

(assert (= (or b!4507491 bm!313821) bm!313822))

(assert (= (or b!4507497 bm!313822) bm!313820))

(assert (= (and bm!313820 c!768765) b!4507494))

(assert (= (and bm!313820 (not c!768765)) b!4507488))

(assert (= (and d!1385737 res!1874493) b!4507490))

(assert (= (and b!4507490 res!1874492) b!4507489))

(declare-fun m!5244351 () Bool)

(assert (=> b!4507490 m!5244351))

(declare-fun m!5244353 () Bool)

(assert (=> b!4507494 m!5244353))

(declare-fun m!5244357 () Bool)

(assert (=> bm!313820 m!5244357))

(declare-fun m!5244359 () Bool)

(assert (=> d!1385737 m!5244359))

(declare-fun m!5244361 () Bool)

(assert (=> d!1385737 m!5244361))

(declare-fun m!5244363 () Bool)

(assert (=> b!4507489 m!5244363))

(assert (=> d!1385421 d!1385737))

(assert (=> b!4506588 d!1385353))

(declare-fun b!4507508 () Bool)

(declare-fun e!2807996 () Option!11064)

(declare-fun e!2807997 () Option!11064)

(assert (=> b!4507508 (= e!2807996 e!2807997)))

(declare-fun c!768770 () Bool)

(assert (=> b!4507508 (= c!768770 (and ((_ is Cons!50571) (toList!4275 lt!1685810)) (not (= (_1!28780 (h!56400 (toList!4275 lt!1685810))) (_1!28780 lt!1685576)))))))

(declare-fun b!4507507 () Bool)

(assert (=> b!4507507 (= e!2807996 (Some!11063 (_2!28780 (h!56400 (toList!4275 lt!1685810)))))))

(declare-fun d!1385745 () Bool)

(declare-fun c!768769 () Bool)

(assert (=> d!1385745 (= c!768769 (and ((_ is Cons!50571) (toList!4275 lt!1685810)) (= (_1!28780 (h!56400 (toList!4275 lt!1685810))) (_1!28780 lt!1685576))))))

(assert (=> d!1385745 (= (getValueByKey!1044 (toList!4275 lt!1685810) (_1!28780 lt!1685576)) e!2807996)))

(declare-fun b!4507510 () Bool)

(assert (=> b!4507510 (= e!2807997 None!11063)))

(declare-fun b!4507509 () Bool)

(assert (=> b!4507509 (= e!2807997 (getValueByKey!1044 (t!357657 (toList!4275 lt!1685810)) (_1!28780 lt!1685576)))))

(assert (= (and d!1385745 c!768769) b!4507507))

(assert (= (and d!1385745 (not c!768769)) b!4507508))

(assert (= (and b!4507508 c!768770) b!4507509))

(assert (= (and b!4507508 (not c!768770)) b!4507510))

(declare-fun m!5244365 () Bool)

(assert (=> b!4507509 m!5244365))

(assert (=> b!4506817 d!1385745))

(declare-fun d!1385747 () Bool)

(declare-fun res!1874497 () Bool)

(declare-fun e!2807998 () Bool)

(assert (=> d!1385747 (=> res!1874497 e!2807998)))

(assert (=> d!1385747 (= res!1874497 ((_ is Nil!50571) (t!357657 (toList!4275 lm!1477))))))

(assert (=> d!1385747 (= (forall!10201 (t!357657 (toList!4275 lm!1477)) lambda!169727) e!2807998)))

(declare-fun b!4507511 () Bool)

(declare-fun e!2807999 () Bool)

(assert (=> b!4507511 (= e!2807998 e!2807999)))

(declare-fun res!1874498 () Bool)

(assert (=> b!4507511 (=> (not res!1874498) (not e!2807999))))

(assert (=> b!4507511 (= res!1874498 (dynLambda!21126 lambda!169727 (h!56400 (t!357657 (toList!4275 lm!1477)))))))

(declare-fun b!4507512 () Bool)

(assert (=> b!4507512 (= e!2807999 (forall!10201 (t!357657 (t!357657 (toList!4275 lm!1477))) lambda!169727))))

(assert (= (and d!1385747 (not res!1874497)) b!4507511))

(assert (= (and b!4507511 res!1874498) b!4507512))

(declare-fun b_lambda!153415 () Bool)

(assert (=> (not b_lambda!153415) (not b!4507511)))

(declare-fun m!5244367 () Bool)

(assert (=> b!4507511 m!5244367))

(declare-fun m!5244369 () Bool)

(assert (=> b!4507512 m!5244369))

(assert (=> b!4506838 d!1385747))

(declare-fun bs!844456 () Bool)

(declare-fun b!4507516 () Bool)

(assert (= bs!844456 (and b!4507516 b!4507080)))

(declare-fun lambda!169916 () Int)

(assert (=> bs!844456 (= (= (t!357656 (toList!4276 lt!1685586)) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169916 lambda!169840))))

(declare-fun bs!844459 () Bool)

(assert (= bs!844459 (and b!4507516 b!4507083)))

(assert (=> bs!844459 (= (= (t!357656 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685574))) (= lambda!169916 lambda!169839))))

(declare-fun bs!844461 () Bool)

(assert (= bs!844461 (and b!4507516 b!4507404)))

(assert (=> bs!844461 (= (= (t!357656 (toList!4276 lt!1685586)) (toList!4276 lt!1685574)) (= lambda!169916 lambda!169907))))

(declare-fun bs!844463 () Bool)

(assert (= bs!844463 (and b!4507516 b!4507111)))

(assert (=> bs!844463 (= (= (t!357656 (toList!4276 lt!1685586)) (toList!4276 lt!1685795)) (= lambda!169916 lambda!169849))))

(declare-fun bs!844464 () Bool)

(assert (= bs!844464 (and b!4507516 b!4507104)))

(assert (=> bs!844464 (= (= (t!357656 (toList!4276 lt!1685586)) (toList!4276 lt!1685586)) (= lambda!169916 lambda!169847))))

(declare-fun bs!844465 () Bool)

(assert (= bs!844465 (and b!4507516 b!4507084)))

(assert (=> bs!844465 (= (= (t!357656 (toList!4276 lt!1685586)) (toList!4276 lt!1685574)) (= lambda!169916 lambda!169841))))

(declare-fun bs!844466 () Bool)

(assert (= bs!844466 (and b!4507516 b!4507128)))

(assert (=> bs!844466 (= (= (t!357656 (toList!4276 lt!1685586)) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (= lambda!169916 lambda!169851))))

(assert (=> b!4507516 true))

(declare-fun bs!844467 () Bool)

(declare-fun b!4507513 () Bool)

(assert (= bs!844467 (and b!4507513 b!4507080)))

(declare-fun lambda!169918 () Int)

(assert (=> bs!844467 (= (= (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586))) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169918 lambda!169840))))

(declare-fun bs!844468 () Bool)

(assert (= bs!844468 (and b!4507513 b!4507083)))

(assert (=> bs!844468 (= (= (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586))) (t!357656 (toList!4276 lt!1685574))) (= lambda!169918 lambda!169839))))

(declare-fun bs!844469 () Bool)

(assert (= bs!844469 (and b!4507513 b!4507404)))

(assert (=> bs!844469 (= (= (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586))) (toList!4276 lt!1685574)) (= lambda!169918 lambda!169907))))

(declare-fun bs!844470 () Bool)

(assert (= bs!844470 (and b!4507513 b!4507516)))

(assert (=> bs!844470 (= (= (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586))) (t!357656 (toList!4276 lt!1685586))) (= lambda!169918 lambda!169916))))

(declare-fun bs!844471 () Bool)

(assert (= bs!844471 (and b!4507513 b!4507111)))

(assert (=> bs!844471 (= (= (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586))) (toList!4276 lt!1685795)) (= lambda!169918 lambda!169849))))

(declare-fun bs!844472 () Bool)

(assert (= bs!844472 (and b!4507513 b!4507104)))

(assert (=> bs!844472 (= (= (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586))) (toList!4276 lt!1685586)) (= lambda!169918 lambda!169847))))

(declare-fun bs!844473 () Bool)

(assert (= bs!844473 (and b!4507513 b!4507084)))

(assert (=> bs!844473 (= (= (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586))) (toList!4276 lt!1685574)) (= lambda!169918 lambda!169841))))

(declare-fun bs!844474 () Bool)

(assert (= bs!844474 (and b!4507513 b!4507128)))

(assert (=> bs!844474 (= (= (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586))) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (= lambda!169918 lambda!169851))))

(assert (=> b!4507513 true))

(declare-fun bs!844475 () Bool)

(declare-fun b!4507517 () Bool)

(assert (= bs!844475 (and b!4507517 b!4507080)))

(declare-fun lambda!169919 () Int)

(assert (=> bs!844475 (= (= (toList!4276 lt!1685586) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169919 lambda!169840))))

(declare-fun bs!844476 () Bool)

(assert (= bs!844476 (and b!4507517 b!4507513)))

(assert (=> bs!844476 (= (= (toList!4276 lt!1685586) (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586)))) (= lambda!169919 lambda!169918))))

(declare-fun bs!844477 () Bool)

(assert (= bs!844477 (and b!4507517 b!4507083)))

(assert (=> bs!844477 (= (= (toList!4276 lt!1685586) (t!357656 (toList!4276 lt!1685574))) (= lambda!169919 lambda!169839))))

(declare-fun bs!844478 () Bool)

(assert (= bs!844478 (and b!4507517 b!4507404)))

(assert (=> bs!844478 (= (= (toList!4276 lt!1685586) (toList!4276 lt!1685574)) (= lambda!169919 lambda!169907))))

(declare-fun bs!844479 () Bool)

(assert (= bs!844479 (and b!4507517 b!4507516)))

(assert (=> bs!844479 (= (= (toList!4276 lt!1685586) (t!357656 (toList!4276 lt!1685586))) (= lambda!169919 lambda!169916))))

(declare-fun bs!844480 () Bool)

(assert (= bs!844480 (and b!4507517 b!4507111)))

(assert (=> bs!844480 (= (= (toList!4276 lt!1685586) (toList!4276 lt!1685795)) (= lambda!169919 lambda!169849))))

(declare-fun bs!844481 () Bool)

(assert (= bs!844481 (and b!4507517 b!4507104)))

(assert (=> bs!844481 (= lambda!169919 lambda!169847)))

(declare-fun bs!844482 () Bool)

(assert (= bs!844482 (and b!4507517 b!4507084)))

(assert (=> bs!844482 (= (= (toList!4276 lt!1685586) (toList!4276 lt!1685574)) (= lambda!169919 lambda!169841))))

(declare-fun bs!844483 () Bool)

(assert (= bs!844483 (and b!4507517 b!4507128)))

(assert (=> bs!844483 (= (= (toList!4276 lt!1685586) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (= lambda!169919 lambda!169851))))

(assert (=> b!4507517 true))

(declare-fun bs!844486 () Bool)

(declare-fun b!4507515 () Bool)

(assert (= bs!844486 (and b!4507515 b!4507405)))

(declare-fun lambda!169921 () Int)

(assert (=> bs!844486 (= lambda!169921 lambda!169908)))

(declare-fun bs!844488 () Bool)

(assert (= bs!844488 (and b!4507515 b!4507129)))

(assert (=> bs!844488 (= lambda!169921 lambda!169852)))

(declare-fun bs!844490 () Bool)

(assert (= bs!844490 (and b!4507515 b!4507082)))

(assert (=> bs!844490 (= lambda!169921 lambda!169842)))

(declare-fun bs!844492 () Bool)

(assert (= bs!844492 (and b!4507515 b!4507112)))

(assert (=> bs!844492 (= lambda!169921 lambda!169850)))

(declare-fun bs!844493 () Bool)

(assert (= bs!844493 (and b!4507515 b!4507105)))

(assert (=> bs!844493 (= lambda!169921 lambda!169848)))

(declare-fun e!2808002 () List!50697)

(assert (=> b!4507513 (= e!2808002 (Cons!50573 (_1!28779 (h!56399 (toList!4276 lt!1685586))) (getKeysList!441 (t!357656 (toList!4276 lt!1685586)))))))

(declare-fun c!768773 () Bool)

(assert (=> b!4507513 (= c!768773 (containsKey!1709 (t!357656 (toList!4276 lt!1685586)) (_1!28779 (h!56399 (toList!4276 lt!1685586)))))))

(declare-fun lt!1686255 () Unit!92894)

(declare-fun e!2808003 () Unit!92894)

(assert (=> b!4507513 (= lt!1686255 e!2808003)))

(declare-fun c!768772 () Bool)

(assert (=> b!4507513 (= c!768772 (contains!13261 (getKeysList!441 (t!357656 (toList!4276 lt!1685586))) (_1!28779 (h!56399 (toList!4276 lt!1685586)))))))

(declare-fun lt!1686257 () Unit!92894)

(declare-fun e!2808001 () Unit!92894)

(assert (=> b!4507513 (= lt!1686257 e!2808001)))

(declare-fun lt!1686256 () List!50697)

(assert (=> b!4507513 (= lt!1686256 (getKeysList!441 (t!357656 (toList!4276 lt!1685586))))))

(declare-fun lt!1686252 () Unit!92894)

(assert (=> b!4507513 (= lt!1686252 (lemmaForallContainsAddHeadPreserves!156 (t!357656 (toList!4276 lt!1685586)) lt!1686256 (h!56399 (toList!4276 lt!1685586))))))

(assert (=> b!4507513 (forall!10205 lt!1686256 lambda!169918)))

(declare-fun lt!1686251 () Unit!92894)

(assert (=> b!4507513 (= lt!1686251 lt!1686252)))

(declare-fun b!4507514 () Bool)

(assert (=> b!4507514 (= e!2808002 Nil!50573)))

(declare-fun e!2808000 () Bool)

(declare-fun lt!1686253 () List!50697)

(assert (=> b!4507515 (= e!2808000 (= (content!8286 lt!1686253) (content!8286 (map!11114 (toList!4276 lt!1685586) lambda!169921))))))

(assert (=> b!4507516 false))

(declare-fun lt!1686254 () Unit!92894)

(assert (=> b!4507516 (= lt!1686254 (forallContained!2455 (getKeysList!441 (t!357656 (toList!4276 lt!1685586))) lambda!169916 (_1!28779 (h!56399 (toList!4276 lt!1685586)))))))

(declare-fun Unit!92990 () Unit!92894)

(assert (=> b!4507516 (= e!2808001 Unit!92990)))

(declare-fun res!1874501 () Bool)

(assert (=> b!4507517 (=> (not res!1874501) (not e!2808000))))

(assert (=> b!4507517 (= res!1874501 (forall!10205 lt!1686253 lambda!169919))))

(declare-fun d!1385749 () Bool)

(assert (=> d!1385749 e!2808000))

(declare-fun res!1874500 () Bool)

(assert (=> d!1385749 (=> (not res!1874500) (not e!2808000))))

(assert (=> d!1385749 (= res!1874500 (noDuplicate!736 lt!1686253))))

(assert (=> d!1385749 (= lt!1686253 e!2808002)))

(declare-fun c!768771 () Bool)

(assert (=> d!1385749 (= c!768771 ((_ is Cons!50570) (toList!4276 lt!1685586)))))

(assert (=> d!1385749 (invariantList!993 (toList!4276 lt!1685586))))

(assert (=> d!1385749 (= (getKeysList!441 (toList!4276 lt!1685586)) lt!1686253)))

(declare-fun b!4507518 () Bool)

(declare-fun Unit!92991 () Unit!92894)

(assert (=> b!4507518 (= e!2808001 Unit!92991)))

(declare-fun b!4507519 () Bool)

(declare-fun Unit!92992 () Unit!92894)

(assert (=> b!4507519 (= e!2808003 Unit!92992)))

(declare-fun b!4507520 () Bool)

(assert (=> b!4507520 false))

(declare-fun Unit!92993 () Unit!92894)

(assert (=> b!4507520 (= e!2808003 Unit!92993)))

(declare-fun b!4507521 () Bool)

(declare-fun res!1874499 () Bool)

(assert (=> b!4507521 (=> (not res!1874499) (not e!2808000))))

(assert (=> b!4507521 (= res!1874499 (= (length!328 lt!1686253) (length!329 (toList!4276 lt!1685586))))))

(assert (= (and d!1385749 c!768771) b!4507513))

(assert (= (and d!1385749 (not c!768771)) b!4507514))

(assert (= (and b!4507513 c!768773) b!4507520))

(assert (= (and b!4507513 (not c!768773)) b!4507519))

(assert (= (and b!4507513 c!768772) b!4507516))

(assert (= (and b!4507513 (not c!768772)) b!4507518))

(assert (= (and d!1385749 res!1874500) b!4507521))

(assert (= (and b!4507521 res!1874499) b!4507517))

(assert (= (and b!4507517 res!1874501) b!4507515))

(assert (=> b!4507516 m!5244015))

(assert (=> b!4507516 m!5244015))

(declare-fun m!5244371 () Bool)

(assert (=> b!4507516 m!5244371))

(assert (=> b!4507513 m!5244015))

(assert (=> b!4507513 m!5244017))

(assert (=> b!4507513 m!5244015))

(declare-fun m!5244373 () Bool)

(assert (=> b!4507513 m!5244373))

(declare-fun m!5244375 () Bool)

(assert (=> b!4507513 m!5244375))

(declare-fun m!5244377 () Bool)

(assert (=> b!4507513 m!5244377))

(declare-fun m!5244379 () Bool)

(assert (=> b!4507515 m!5244379))

(declare-fun m!5244381 () Bool)

(assert (=> b!4507515 m!5244381))

(assert (=> b!4507515 m!5244381))

(declare-fun m!5244383 () Bool)

(assert (=> b!4507515 m!5244383))

(declare-fun m!5244385 () Bool)

(assert (=> b!4507517 m!5244385))

(declare-fun m!5244387 () Bool)

(assert (=> b!4507521 m!5244387))

(assert (=> b!4507521 m!5243777))

(declare-fun m!5244389 () Bool)

(assert (=> d!1385749 m!5244389))

(assert (=> d!1385749 m!5243479))

(assert (=> b!4506706 d!1385749))

(declare-fun d!1385751 () Bool)

(assert (=> d!1385751 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685580) hash!344))))

(declare-fun lt!1686258 () Unit!92894)

(assert (=> d!1385751 (= lt!1686258 (choose!29242 (toList!4275 lt!1685580) hash!344))))

(declare-fun e!2808004 () Bool)

(assert (=> d!1385751 e!2808004))

(declare-fun res!1874502 () Bool)

(assert (=> d!1385751 (=> (not res!1874502) (not e!2808004))))

(assert (=> d!1385751 (= res!1874502 (isStrictlySorted!406 (toList!4275 lt!1685580)))))

(assert (=> d!1385751 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!947 (toList!4275 lt!1685580) hash!344) lt!1686258)))

(declare-fun b!4507522 () Bool)

(assert (=> b!4507522 (= e!2808004 (containsKey!1708 (toList!4275 lt!1685580) hash!344))))

(assert (= (and d!1385751 res!1874502) b!4507522))

(assert (=> d!1385751 m!5243279))

(assert (=> d!1385751 m!5243279))

(assert (=> d!1385751 m!5243281))

(declare-fun m!5244401 () Bool)

(assert (=> d!1385751 m!5244401))

(assert (=> d!1385751 m!5244191))

(assert (=> b!4507522 m!5243275))

(assert (=> b!4506775 d!1385751))

(declare-fun d!1385753 () Bool)

(assert (=> d!1385753 (= (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685580) hash!344)) (not (isEmpty!28624 (getValueByKey!1044 (toList!4275 lt!1685580) hash!344))))))

(declare-fun bs!844495 () Bool)

(assert (= bs!844495 d!1385753))

(assert (=> bs!844495 m!5243279))

(declare-fun m!5244413 () Bool)

(assert (=> bs!844495 m!5244413))

(assert (=> b!4506775 d!1385753))

(assert (=> b!4506775 d!1385437))

(assert (=> d!1385409 d!1385583))

(declare-fun d!1385755 () Bool)

(declare-fun e!2808005 () Bool)

(assert (=> d!1385755 e!2808005))

(declare-fun res!1874503 () Bool)

(assert (=> d!1385755 (=> res!1874503 e!2808005)))

(declare-fun lt!1686261 () Bool)

(assert (=> d!1385755 (= res!1874503 (not lt!1686261))))

(declare-fun lt!1686259 () Bool)

(assert (=> d!1385755 (= lt!1686261 lt!1686259)))

(declare-fun lt!1686260 () Unit!92894)

(declare-fun e!2808006 () Unit!92894)

(assert (=> d!1385755 (= lt!1686260 e!2808006)))

(declare-fun c!768774 () Bool)

(assert (=> d!1385755 (= c!768774 lt!1686259)))

(assert (=> d!1385755 (= lt!1686259 (containsKey!1708 (toList!4275 lt!1685816) (_1!28780 lt!1685589)))))

(assert (=> d!1385755 (= (contains!13259 lt!1685816 (_1!28780 lt!1685589)) lt!1686261)))

(declare-fun b!4507523 () Bool)

(declare-fun lt!1686262 () Unit!92894)

(assert (=> b!4507523 (= e!2808006 lt!1686262)))

(assert (=> b!4507523 (= lt!1686262 (lemmaContainsKeyImpliesGetValueByKeyDefined!947 (toList!4275 lt!1685816) (_1!28780 lt!1685589)))))

(assert (=> b!4507523 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685816) (_1!28780 lt!1685589)))))

(declare-fun b!4507524 () Bool)

(declare-fun Unit!92994 () Unit!92894)

(assert (=> b!4507524 (= e!2808006 Unit!92994)))

(declare-fun b!4507525 () Bool)

(assert (=> b!4507525 (= e!2808005 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685816) (_1!28780 lt!1685589))))))

(assert (= (and d!1385755 c!768774) b!4507523))

(assert (= (and d!1385755 (not c!768774)) b!4507524))

(assert (= (and d!1385755 (not res!1874503)) b!4507525))

(declare-fun m!5244429 () Bool)

(assert (=> d!1385755 m!5244429))

(declare-fun m!5244431 () Bool)

(assert (=> b!4507523 m!5244431))

(assert (=> b!4507523 m!5243391))

(assert (=> b!4507523 m!5243391))

(declare-fun m!5244433 () Bool)

(assert (=> b!4507523 m!5244433))

(assert (=> b!4507525 m!5243391))

(assert (=> b!4507525 m!5243391))

(assert (=> b!4507525 m!5244433))

(assert (=> d!1385399 d!1385755))

(declare-fun b!4507529 () Bool)

(declare-fun e!2808008 () Option!11064)

(declare-fun e!2808009 () Option!11064)

(assert (=> b!4507529 (= e!2808008 e!2808009)))

(declare-fun c!768777 () Bool)

(assert (=> b!4507529 (= c!768777 (and ((_ is Cons!50571) lt!1685814) (not (= (_1!28780 (h!56400 lt!1685814)) (_1!28780 lt!1685589)))))))

(declare-fun b!4507528 () Bool)

(assert (=> b!4507528 (= e!2808008 (Some!11063 (_2!28780 (h!56400 lt!1685814))))))

(declare-fun d!1385759 () Bool)

(declare-fun c!768776 () Bool)

(assert (=> d!1385759 (= c!768776 (and ((_ is Cons!50571) lt!1685814) (= (_1!28780 (h!56400 lt!1685814)) (_1!28780 lt!1685589))))))

(assert (=> d!1385759 (= (getValueByKey!1044 lt!1685814 (_1!28780 lt!1685589)) e!2808008)))

(declare-fun b!4507531 () Bool)

(assert (=> b!4507531 (= e!2808009 None!11063)))

(declare-fun b!4507530 () Bool)

(assert (=> b!4507530 (= e!2808009 (getValueByKey!1044 (t!357657 lt!1685814) (_1!28780 lt!1685589)))))

(assert (= (and d!1385759 c!768776) b!4507528))

(assert (= (and d!1385759 (not c!768776)) b!4507529))

(assert (= (and b!4507529 c!768777) b!4507530))

(assert (= (and b!4507529 (not c!768777)) b!4507531))

(declare-fun m!5244435 () Bool)

(assert (=> b!4507530 m!5244435))

(assert (=> d!1385399 d!1385759))

(declare-fun d!1385761 () Bool)

(assert (=> d!1385761 (= (getValueByKey!1044 lt!1685814 (_1!28780 lt!1685589)) (Some!11063 (_2!28780 lt!1685589)))))

(declare-fun lt!1686264 () Unit!92894)

(assert (=> d!1385761 (= lt!1686264 (choose!29246 lt!1685814 (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))

(declare-fun e!2808010 () Bool)

(assert (=> d!1385761 e!2808010))

(declare-fun res!1874504 () Bool)

(assert (=> d!1385761 (=> (not res!1874504) (not e!2808010))))

(assert (=> d!1385761 (= res!1874504 (isStrictlySorted!406 lt!1685814))))

(assert (=> d!1385761 (= (lemmaContainsTupThenGetReturnValue!644 lt!1685814 (_1!28780 lt!1685589) (_2!28780 lt!1685589)) lt!1686264)))

(declare-fun b!4507532 () Bool)

(declare-fun res!1874505 () Bool)

(assert (=> b!4507532 (=> (not res!1874505) (not e!2808010))))

(assert (=> b!4507532 (= res!1874505 (containsKey!1708 lt!1685814 (_1!28780 lt!1685589)))))

(declare-fun b!4507533 () Bool)

(assert (=> b!4507533 (= e!2808010 (contains!13258 lt!1685814 (tuple2!50973 (_1!28780 lt!1685589) (_2!28780 lt!1685589))))))

(assert (= (and d!1385761 res!1874504) b!4507532))

(assert (= (and b!4507532 res!1874505) b!4507533))

(assert (=> d!1385761 m!5243385))

(declare-fun m!5244437 () Bool)

(assert (=> d!1385761 m!5244437))

(declare-fun m!5244439 () Bool)

(assert (=> d!1385761 m!5244439))

(declare-fun m!5244441 () Bool)

(assert (=> b!4507532 m!5244441))

(declare-fun m!5244443 () Bool)

(assert (=> b!4507533 m!5244443))

(assert (=> d!1385399 d!1385761))

(declare-fun e!2808013 () List!50695)

(declare-fun c!768780 () Bool)

(declare-fun b!4507534 () Bool)

(declare-fun c!768778 () Bool)

(assert (=> b!4507534 (= e!2808013 (ite c!768780 (t!357657 (toList!4275 lt!1685580)) (ite c!768778 (Cons!50571 (h!56400 (toList!4275 lt!1685580)) (t!357657 (toList!4275 lt!1685580))) Nil!50571)))))

(declare-fun b!4507535 () Bool)

(declare-fun e!2808012 () Bool)

(declare-fun lt!1686265 () List!50695)

(assert (=> b!4507535 (= e!2808012 (contains!13258 lt!1686265 (tuple2!50973 (_1!28780 lt!1685589) (_2!28780 lt!1685589))))))

(declare-fun b!4507536 () Bool)

(declare-fun res!1874506 () Bool)

(assert (=> b!4507536 (=> (not res!1874506) (not e!2808012))))

(assert (=> b!4507536 (= res!1874506 (containsKey!1708 lt!1686265 (_1!28780 lt!1685589)))))

(declare-fun b!4507537 () Bool)

(declare-fun e!2808014 () List!50695)

(declare-fun call!313832 () List!50695)

(assert (=> b!4507537 (= e!2808014 call!313832)))

(declare-fun b!4507538 () Bool)

(declare-fun e!2808015 () List!50695)

(declare-fun call!313833 () List!50695)

(assert (=> b!4507538 (= e!2808015 call!313833)))

(declare-fun b!4507539 () Bool)

(declare-fun e!2808011 () List!50695)

(assert (=> b!4507539 (= e!2808011 e!2808014)))

(assert (=> b!4507539 (= c!768780 (and ((_ is Cons!50571) (toList!4275 lt!1685580)) (= (_1!28780 (h!56400 (toList!4275 lt!1685580))) (_1!28780 lt!1685589))))))

(declare-fun bm!313826 () Bool)

(declare-fun call!313831 () List!50695)

(declare-fun c!768779 () Bool)

(assert (=> bm!313826 (= call!313831 ($colon$colon!912 e!2808013 (ite c!768779 (h!56400 (toList!4275 lt!1685580)) (tuple2!50973 (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))))

(declare-fun c!768781 () Bool)

(assert (=> bm!313826 (= c!768781 c!768779)))

(declare-fun b!4507541 () Bool)

(assert (=> b!4507541 (= e!2808015 call!313833)))

(declare-fun bm!313827 () Bool)

(assert (=> bm!313827 (= call!313833 call!313832)))

(declare-fun b!4507542 () Bool)

(assert (=> b!4507542 (= c!768778 (and ((_ is Cons!50571) (toList!4275 lt!1685580)) (bvsgt (_1!28780 (h!56400 (toList!4275 lt!1685580))) (_1!28780 lt!1685589))))))

(assert (=> b!4507542 (= e!2808014 e!2808015)))

(declare-fun b!4507543 () Bool)

(assert (=> b!4507543 (= e!2808011 call!313831)))

(declare-fun bm!313828 () Bool)

(assert (=> bm!313828 (= call!313832 call!313831)))

(declare-fun d!1385763 () Bool)

(assert (=> d!1385763 e!2808012))

(declare-fun res!1874507 () Bool)

(assert (=> d!1385763 (=> (not res!1874507) (not e!2808012))))

(assert (=> d!1385763 (= res!1874507 (isStrictlySorted!406 lt!1686265))))

(assert (=> d!1385763 (= lt!1686265 e!2808011)))

(assert (=> d!1385763 (= c!768779 (and ((_ is Cons!50571) (toList!4275 lt!1685580)) (bvslt (_1!28780 (h!56400 (toList!4275 lt!1685580))) (_1!28780 lt!1685589))))))

(assert (=> d!1385763 (isStrictlySorted!406 (toList!4275 lt!1685580))))

(assert (=> d!1385763 (= (insertStrictlySorted!384 (toList!4275 lt!1685580) (_1!28780 lt!1685589) (_2!28780 lt!1685589)) lt!1686265)))

(declare-fun b!4507540 () Bool)

(assert (=> b!4507540 (= e!2808013 (insertStrictlySorted!384 (t!357657 (toList!4275 lt!1685580)) (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))

(assert (= (and d!1385763 c!768779) b!4507543))

(assert (= (and d!1385763 (not c!768779)) b!4507539))

(assert (= (and b!4507539 c!768780) b!4507537))

(assert (= (and b!4507539 (not c!768780)) b!4507542))

(assert (= (and b!4507542 c!768778) b!4507538))

(assert (= (and b!4507542 (not c!768778)) b!4507541))

(assert (= (or b!4507538 b!4507541) bm!313827))

(assert (= (or b!4507537 bm!313827) bm!313828))

(assert (= (or b!4507543 bm!313828) bm!313826))

(assert (= (and bm!313826 c!768781) b!4507540))

(assert (= (and bm!313826 (not c!768781)) b!4507534))

(assert (= (and d!1385763 res!1874507) b!4507536))

(assert (= (and b!4507536 res!1874506) b!4507535))

(declare-fun m!5244453 () Bool)

(assert (=> b!4507536 m!5244453))

(declare-fun m!5244455 () Bool)

(assert (=> b!4507540 m!5244455))

(declare-fun m!5244457 () Bool)

(assert (=> bm!313826 m!5244457))

(declare-fun m!5244459 () Bool)

(assert (=> d!1385763 m!5244459))

(assert (=> d!1385763 m!5244191))

(declare-fun m!5244463 () Bool)

(assert (=> b!4507535 m!5244463))

(assert (=> d!1385399 d!1385763))

(assert (=> b!4506696 d!1385561))

(assert (=> b!4506696 d!1385563))

(declare-fun d!1385769 () Bool)

(declare-fun e!2808018 () Bool)

(assert (=> d!1385769 e!2808018))

(declare-fun res!1874508 () Bool)

(assert (=> d!1385769 (=> res!1874508 e!2808018)))

(declare-fun lt!1686268 () Bool)

(assert (=> d!1385769 (= res!1874508 (not lt!1686268))))

(declare-fun lt!1686266 () Bool)

(assert (=> d!1385769 (= lt!1686268 lt!1686266)))

(declare-fun lt!1686267 () Unit!92894)

(declare-fun e!2808019 () Unit!92894)

(assert (=> d!1385769 (= lt!1686267 e!2808019)))

(declare-fun c!768784 () Bool)

(assert (=> d!1385769 (= c!768784 lt!1686266)))

(assert (=> d!1385769 (= lt!1686266 (containsKey!1708 (toList!4275 lm!1477) (hash!2721 hashF!1107 key!3287)))))

(assert (=> d!1385769 (= (contains!13259 lm!1477 (hash!2721 hashF!1107 key!3287)) lt!1686268)))

(declare-fun b!4507548 () Bool)

(declare-fun lt!1686269 () Unit!92894)

(assert (=> b!4507548 (= e!2808019 lt!1686269)))

(assert (=> b!4507548 (= lt!1686269 (lemmaContainsKeyImpliesGetValueByKeyDefined!947 (toList!4275 lm!1477) (hash!2721 hashF!1107 key!3287)))))

(assert (=> b!4507548 (isDefined!8350 (getValueByKey!1044 (toList!4275 lm!1477) (hash!2721 hashF!1107 key!3287)))))

(declare-fun b!4507549 () Bool)

(declare-fun Unit!92996 () Unit!92894)

(assert (=> b!4507549 (= e!2808019 Unit!92996)))

(declare-fun b!4507550 () Bool)

(assert (=> b!4507550 (= e!2808018 (isDefined!8350 (getValueByKey!1044 (toList!4275 lm!1477) (hash!2721 hashF!1107 key!3287))))))

(assert (= (and d!1385769 c!768784) b!4507548))

(assert (= (and d!1385769 (not c!768784)) b!4507549))

(assert (= (and d!1385769 (not res!1874508)) b!4507550))

(assert (=> d!1385769 m!5242841))

(declare-fun m!5244465 () Bool)

(assert (=> d!1385769 m!5244465))

(assert (=> b!4507548 m!5242841))

(declare-fun m!5244467 () Bool)

(assert (=> b!4507548 m!5244467))

(assert (=> b!4507548 m!5242841))

(declare-fun m!5244469 () Bool)

(assert (=> b!4507548 m!5244469))

(assert (=> b!4507548 m!5244469))

(declare-fun m!5244471 () Bool)

(assert (=> b!4507548 m!5244471))

(assert (=> b!4507550 m!5242841))

(assert (=> b!4507550 m!5244469))

(assert (=> b!4507550 m!5244469))

(assert (=> b!4507550 m!5244471))

(assert (=> d!1385253 d!1385769))

(assert (=> d!1385253 d!1385413))

(declare-fun d!1385775 () Bool)

(assert (=> d!1385775 (contains!13259 lm!1477 (hash!2721 hashF!1107 key!3287))))

(assert (=> d!1385775 true))

(declare-fun _$27!1200 () Unit!92894)

(assert (=> d!1385775 (= (choose!29227 lm!1477 key!3287 hashF!1107) _$27!1200)))

(declare-fun bs!844520 () Bool)

(assert (= bs!844520 d!1385775))

(assert (=> bs!844520 m!5242841))

(assert (=> bs!844520 m!5242841))

(assert (=> bs!844520 m!5242881))

(assert (=> d!1385253 d!1385775))

(declare-fun d!1385777 () Bool)

(declare-fun res!1874512 () Bool)

(declare-fun e!2808023 () Bool)

(assert (=> d!1385777 (=> res!1874512 e!2808023)))

(assert (=> d!1385777 (= res!1874512 ((_ is Nil!50571) (toList!4275 lm!1477)))))

(assert (=> d!1385777 (= (forall!10201 (toList!4275 lm!1477) lambda!169730) e!2808023)))

(declare-fun b!4507556 () Bool)

(declare-fun e!2808024 () Bool)

(assert (=> b!4507556 (= e!2808023 e!2808024)))

(declare-fun res!1874513 () Bool)

(assert (=> b!4507556 (=> (not res!1874513) (not e!2808024))))

(assert (=> b!4507556 (= res!1874513 (dynLambda!21126 lambda!169730 (h!56400 (toList!4275 lm!1477))))))

(declare-fun b!4507557 () Bool)

(assert (=> b!4507557 (= e!2808024 (forall!10201 (t!357657 (toList!4275 lm!1477)) lambda!169730))))

(assert (= (and d!1385777 (not res!1874512)) b!4507556))

(assert (= (and b!4507556 res!1874513) b!4507557))

(declare-fun b_lambda!153417 () Bool)

(assert (=> (not b_lambda!153417) (not b!4507556)))

(declare-fun m!5244473 () Bool)

(assert (=> b!4507556 m!5244473))

(declare-fun m!5244475 () Bool)

(assert (=> b!4507557 m!5244475))

(assert (=> d!1385253 d!1385777))

(declare-fun d!1385779 () Bool)

(declare-fun lt!1686291 () Bool)

(assert (=> d!1385779 (= lt!1686291 (select (content!8283 (toList!4275 lt!1685816)) lt!1685589))))

(declare-fun e!2808025 () Bool)

(assert (=> d!1385779 (= lt!1686291 e!2808025)))

(declare-fun res!1874514 () Bool)

(assert (=> d!1385779 (=> (not res!1874514) (not e!2808025))))

(assert (=> d!1385779 (= res!1874514 ((_ is Cons!50571) (toList!4275 lt!1685816)))))

(assert (=> d!1385779 (= (contains!13258 (toList!4275 lt!1685816) lt!1685589) lt!1686291)))

(declare-fun b!4507558 () Bool)

(declare-fun e!2808026 () Bool)

(assert (=> b!4507558 (= e!2808025 e!2808026)))

(declare-fun res!1874515 () Bool)

(assert (=> b!4507558 (=> res!1874515 e!2808026)))

(assert (=> b!4507558 (= res!1874515 (= (h!56400 (toList!4275 lt!1685816)) lt!1685589))))

(declare-fun b!4507559 () Bool)

(assert (=> b!4507559 (= e!2808026 (contains!13258 (t!357657 (toList!4275 lt!1685816)) lt!1685589))))

(assert (= (and d!1385779 res!1874514) b!4507558))

(assert (= (and b!4507558 (not res!1874515)) b!4507559))

(declare-fun m!5244477 () Bool)

(assert (=> d!1385779 m!5244477))

(declare-fun m!5244479 () Bool)

(assert (=> d!1385779 m!5244479))

(declare-fun m!5244481 () Bool)

(assert (=> b!4507559 m!5244481))

(assert (=> b!4506824 d!1385779))

(declare-fun d!1385781 () Bool)

(declare-fun res!1874516 () Bool)

(declare-fun e!2808027 () Bool)

(assert (=> d!1385781 (=> res!1874516 e!2808027)))

(assert (=> d!1385781 (= res!1874516 (not ((_ is Cons!50570) (_2!28780 lt!1685588))))))

(assert (=> d!1385781 (= (noDuplicateKeys!1134 (_2!28780 lt!1685588)) e!2808027)))

(declare-fun b!4507560 () Bool)

(declare-fun e!2808028 () Bool)

(assert (=> b!4507560 (= e!2808027 e!2808028)))

(declare-fun res!1874517 () Bool)

(assert (=> b!4507560 (=> (not res!1874517) (not e!2808028))))

(assert (=> b!4507560 (= res!1874517 (not (containsKey!1706 (t!357656 (_2!28780 lt!1685588)) (_1!28779 (h!56399 (_2!28780 lt!1685588))))))))

(declare-fun b!4507561 () Bool)

(assert (=> b!4507561 (= e!2808028 (noDuplicateKeys!1134 (t!357656 (_2!28780 lt!1685588))))))

(assert (= (and d!1385781 (not res!1874516)) b!4507560))

(assert (= (and b!4507560 res!1874517) b!4507561))

(declare-fun m!5244483 () Bool)

(assert (=> b!4507560 m!5244483))

(declare-fun m!5244485 () Bool)

(assert (=> b!4507561 m!5244485))

(assert (=> bs!844217 d!1385781))

(declare-fun d!1385783 () Bool)

(declare-fun res!1874518 () Bool)

(declare-fun e!2808029 () Bool)

(assert (=> d!1385783 (=> res!1874518 e!2808029)))

(assert (=> d!1385783 (= res!1874518 (and ((_ is Cons!50570) (t!357656 newBucket!178)) (= (_1!28779 (h!56399 (t!357656 newBucket!178))) (_1!28779 (h!56399 newBucket!178)))))))

(assert (=> d!1385783 (= (containsKey!1706 (t!357656 newBucket!178) (_1!28779 (h!56399 newBucket!178))) e!2808029)))

(declare-fun b!4507562 () Bool)

(declare-fun e!2808030 () Bool)

(assert (=> b!4507562 (= e!2808029 e!2808030)))

(declare-fun res!1874519 () Bool)

(assert (=> b!4507562 (=> (not res!1874519) (not e!2808030))))

(assert (=> b!4507562 (= res!1874519 ((_ is Cons!50570) (t!357656 newBucket!178)))))

(declare-fun b!4507563 () Bool)

(assert (=> b!4507563 (= e!2808030 (containsKey!1706 (t!357656 (t!357656 newBucket!178)) (_1!28779 (h!56399 newBucket!178))))))

(assert (= (and d!1385783 (not res!1874518)) b!4507562))

(assert (= (and b!4507562 res!1874519) b!4507563))

(declare-fun m!5244487 () Bool)

(assert (=> b!4507563 m!5244487))

(assert (=> b!4506831 d!1385783))

(declare-fun d!1385785 () Bool)

(declare-fun lt!1686292 () Bool)

(assert (=> d!1385785 (= lt!1686292 (select (content!8283 (toList!4275 lt!1685827)) lt!1685576))))

(declare-fun e!2808031 () Bool)

(assert (=> d!1385785 (= lt!1686292 e!2808031)))

(declare-fun res!1874520 () Bool)

(assert (=> d!1385785 (=> (not res!1874520) (not e!2808031))))

(assert (=> d!1385785 (= res!1874520 ((_ is Cons!50571) (toList!4275 lt!1685827)))))

(assert (=> d!1385785 (= (contains!13258 (toList!4275 lt!1685827) lt!1685576) lt!1686292)))

(declare-fun b!4507564 () Bool)

(declare-fun e!2808032 () Bool)

(assert (=> b!4507564 (= e!2808031 e!2808032)))

(declare-fun res!1874521 () Bool)

(assert (=> b!4507564 (=> res!1874521 e!2808032)))

(assert (=> b!4507564 (= res!1874521 (= (h!56400 (toList!4275 lt!1685827)) lt!1685576))))

(declare-fun b!4507565 () Bool)

(assert (=> b!4507565 (= e!2808032 (contains!13258 (t!357657 (toList!4275 lt!1685827)) lt!1685576))))

(assert (= (and d!1385785 res!1874520) b!4507564))

(assert (= (and b!4507564 (not res!1874521)) b!4507565))

(declare-fun m!5244489 () Bool)

(assert (=> d!1385785 m!5244489))

(declare-fun m!5244491 () Bool)

(assert (=> d!1385785 m!5244491))

(declare-fun m!5244493 () Bool)

(assert (=> b!4507565 m!5244493))

(assert (=> b!4506846 d!1385785))

(assert (=> b!4506582 d!1385273))

(declare-fun bs!844526 () Bool)

(declare-fun b!4507570 () Bool)

(assert (= bs!844526 (and b!4507570 b!4507274)))

(declare-fun lambda!169926 () Int)

(assert (=> bs!844526 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686129) (= lambda!169926 lambda!169888))))

(assert (=> bs!844526 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169926 lambda!169887))))

(declare-fun bs!844530 () Bool)

(assert (= bs!844530 (and b!4507570 d!1385411)))

(assert (=> bs!844530 (not (= lambda!169926 lambda!169784))))

(declare-fun bs!844532 () Bool)

(assert (= bs!844532 (and b!4507570 d!1385461)))

(assert (=> bs!844532 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1685919) (= lambda!169926 lambda!169829))))

(declare-fun bs!844534 () Bool)

(assert (= bs!844534 (and b!4507570 b!4507038)))

(assert (=> bs!844534 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169926 lambda!169827))))

(declare-fun bs!844535 () Bool)

(assert (= bs!844535 (and b!4507570 b!4507042)))

(assert (=> bs!844535 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169926 lambda!169826))))

(declare-fun bs!844537 () Bool)

(assert (= bs!844537 (and b!4507570 b!4507278)))

(assert (=> bs!844537 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169926 lambda!169886))))

(declare-fun bs!844539 () Bool)

(assert (= bs!844539 (and b!4507570 b!4507406)))

(assert (=> bs!844539 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169926 lambda!169910))))

(assert (=> bs!844534 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1685929) (= lambda!169926 lambda!169828))))

(declare-fun bs!844541 () Bool)

(assert (= bs!844541 (and b!4507570 b!4507410)))

(assert (=> bs!844541 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169926 lambda!169909))))

(declare-fun bs!844542 () Bool)

(assert (= bs!844542 (and b!4507570 d!1385699)))

(assert (=> bs!844542 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686190) (= lambda!169926 lambda!169912))))

(declare-fun bs!844544 () Bool)

(assert (= bs!844544 (and b!4507570 d!1385635)))

(assert (=> bs!844544 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686119) (= lambda!169926 lambda!169889))))

(assert (=> bs!844539 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686200) (= lambda!169926 lambda!169911))))

(assert (=> b!4507570 true))

(declare-fun bs!844545 () Bool)

(declare-fun b!4507566 () Bool)

(assert (= bs!844545 (and b!4507566 b!4507274)))

(declare-fun lambda!169928 () Int)

(assert (=> bs!844545 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686129) (= lambda!169928 lambda!169888))))

(assert (=> bs!844545 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169928 lambda!169887))))

(declare-fun bs!844546 () Bool)

(assert (= bs!844546 (and b!4507566 d!1385411)))

(assert (=> bs!844546 (not (= lambda!169928 lambda!169784))))

(declare-fun bs!844547 () Bool)

(assert (= bs!844547 (and b!4507566 d!1385461)))

(assert (=> bs!844547 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1685919) (= lambda!169928 lambda!169829))))

(declare-fun bs!844548 () Bool)

(assert (= bs!844548 (and b!4507566 b!4507038)))

(assert (=> bs!844548 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169928 lambda!169827))))

(declare-fun bs!844549 () Bool)

(assert (= bs!844549 (and b!4507566 b!4507042)))

(assert (=> bs!844549 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169928 lambda!169826))))

(declare-fun bs!844550 () Bool)

(assert (= bs!844550 (and b!4507566 b!4507278)))

(assert (=> bs!844550 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169928 lambda!169886))))

(declare-fun bs!844551 () Bool)

(assert (= bs!844551 (and b!4507566 b!4507406)))

(assert (=> bs!844551 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169928 lambda!169910))))

(declare-fun bs!844552 () Bool)

(assert (= bs!844552 (and b!4507566 b!4507570)))

(assert (=> bs!844552 (= lambda!169928 lambda!169926)))

(assert (=> bs!844548 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1685929) (= lambda!169928 lambda!169828))))

(declare-fun bs!844553 () Bool)

(assert (= bs!844553 (and b!4507566 b!4507410)))

(assert (=> bs!844553 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169928 lambda!169909))))

(declare-fun bs!844554 () Bool)

(assert (= bs!844554 (and b!4507566 d!1385699)))

(assert (=> bs!844554 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686190) (= lambda!169928 lambda!169912))))

(declare-fun bs!844555 () Bool)

(assert (= bs!844555 (and b!4507566 d!1385635)))

(assert (=> bs!844555 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686119) (= lambda!169928 lambda!169889))))

(assert (=> bs!844551 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686200) (= lambda!169928 lambda!169911))))

(assert (=> b!4507566 true))

(declare-fun lt!1686308 () ListMap!3537)

(declare-fun lambda!169929 () Int)

(assert (=> bs!844545 (= (= lt!1686308 lt!1686129) (= lambda!169929 lambda!169888))))

(assert (=> bs!844545 (= (= lt!1686308 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169929 lambda!169887))))

(assert (=> bs!844546 (not (= lambda!169929 lambda!169784))))

(assert (=> bs!844547 (= (= lt!1686308 lt!1685919) (= lambda!169929 lambda!169829))))

(assert (=> bs!844548 (= (= lt!1686308 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169929 lambda!169827))))

(assert (=> bs!844549 (= (= lt!1686308 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169929 lambda!169826))))

(assert (=> bs!844550 (= (= lt!1686308 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169929 lambda!169886))))

(assert (=> b!4507566 (= (= lt!1686308 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169929 lambda!169928))))

(assert (=> bs!844551 (= (= lt!1686308 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169929 lambda!169910))))

(assert (=> bs!844552 (= (= lt!1686308 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169929 lambda!169926))))

(assert (=> bs!844548 (= (= lt!1686308 lt!1685929) (= lambda!169929 lambda!169828))))

(assert (=> bs!844553 (= (= lt!1686308 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169929 lambda!169909))))

(assert (=> bs!844554 (= (= lt!1686308 lt!1686190) (= lambda!169929 lambda!169912))))

(assert (=> bs!844555 (= (= lt!1686308 lt!1686119) (= lambda!169929 lambda!169889))))

(assert (=> bs!844551 (= (= lt!1686308 lt!1686200) (= lambda!169929 lambda!169911))))

(assert (=> b!4507566 true))

(declare-fun bs!844571 () Bool)

(declare-fun d!1385787 () Bool)

(assert (= bs!844571 (and d!1385787 b!4507274)))

(declare-fun lt!1686298 () ListMap!3537)

(declare-fun lambda!169931 () Int)

(assert (=> bs!844571 (= (= lt!1686298 lt!1686129) (= lambda!169931 lambda!169888))))

(assert (=> bs!844571 (= (= lt!1686298 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169931 lambda!169887))))

(declare-fun bs!844572 () Bool)

(assert (= bs!844572 (and d!1385787 d!1385411)))

(assert (=> bs!844572 (not (= lambda!169931 lambda!169784))))

(declare-fun bs!844573 () Bool)

(assert (= bs!844573 (and d!1385787 d!1385461)))

(assert (=> bs!844573 (= (= lt!1686298 lt!1685919) (= lambda!169931 lambda!169829))))

(declare-fun bs!844574 () Bool)

(assert (= bs!844574 (and d!1385787 b!4507038)))

(assert (=> bs!844574 (= (= lt!1686298 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169931 lambda!169827))))

(declare-fun bs!844575 () Bool)

(assert (= bs!844575 (and d!1385787 b!4507042)))

(assert (=> bs!844575 (= (= lt!1686298 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169931 lambda!169826))))

(declare-fun bs!844576 () Bool)

(assert (= bs!844576 (and d!1385787 b!4507278)))

(assert (=> bs!844576 (= (= lt!1686298 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169931 lambda!169886))))

(declare-fun bs!844577 () Bool)

(assert (= bs!844577 (and d!1385787 b!4507406)))

(assert (=> bs!844577 (= (= lt!1686298 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169931 lambda!169910))))

(declare-fun bs!844578 () Bool)

(assert (= bs!844578 (and d!1385787 b!4507570)))

(assert (=> bs!844578 (= (= lt!1686298 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169931 lambda!169926))))

(assert (=> bs!844574 (= (= lt!1686298 lt!1685929) (= lambda!169931 lambda!169828))))

(declare-fun bs!844580 () Bool)

(assert (= bs!844580 (and d!1385787 b!4507410)))

(assert (=> bs!844580 (= (= lt!1686298 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169931 lambda!169909))))

(declare-fun bs!844582 () Bool)

(assert (= bs!844582 (and d!1385787 d!1385699)))

(assert (=> bs!844582 (= (= lt!1686298 lt!1686190) (= lambda!169931 lambda!169912))))

(declare-fun bs!844583 () Bool)

(assert (= bs!844583 (and d!1385787 d!1385635)))

(assert (=> bs!844583 (= (= lt!1686298 lt!1686119) (= lambda!169931 lambda!169889))))

(assert (=> bs!844577 (= (= lt!1686298 lt!1686200) (= lambda!169931 lambda!169911))))

(declare-fun bs!844584 () Bool)

(assert (= bs!844584 (and d!1385787 b!4507566)))

(assert (=> bs!844584 (= (= lt!1686298 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169931 lambda!169928))))

(assert (=> bs!844584 (= (= lt!1686298 lt!1686308) (= lambda!169931 lambda!169929))))

(assert (=> d!1385787 true))

(declare-fun bm!313832 () Bool)

(declare-fun call!313837 () Unit!92894)

(assert (=> bm!313832 (= call!313837 (lemmaContainsAllItsOwnKeys!313 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))))))

(declare-fun b!4507567 () Bool)

(declare-fun res!1874522 () Bool)

(declare-fun e!2808034 () Bool)

(assert (=> b!4507567 (=> (not res!1874522) (not e!2808034))))

(assert (=> b!4507567 (= res!1874522 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) lambda!169931))))

(declare-fun b!4507568 () Bool)

(assert (=> b!4507568 (= e!2808034 (invariantList!993 (toList!4276 lt!1686298)))))

(declare-fun c!768786 () Bool)

(declare-fun bm!313833 () Bool)

(declare-fun call!313838 () Bool)

(assert (=> bm!313833 (= call!313838 (forall!10203 (ite c!768786 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (_2!28780 (h!56400 (toList!4275 lt!1685580)))) (ite c!768786 lambda!169926 lambda!169929)))))

(declare-fun b!4507569 () Bool)

(declare-fun e!2808033 () Bool)

(assert (=> b!4507569 (= e!2808033 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) lambda!169929))))

(assert (=> d!1385787 e!2808034))

(declare-fun res!1874524 () Bool)

(assert (=> d!1385787 (=> (not res!1874524) (not e!2808034))))

(assert (=> d!1385787 (= res!1874524 (forall!10203 (_2!28780 (h!56400 (toList!4275 lt!1685580))) lambda!169931))))

(declare-fun e!2808035 () ListMap!3537)

(assert (=> d!1385787 (= lt!1686298 e!2808035)))

(assert (=> d!1385787 (= c!768786 ((_ is Nil!50570) (_2!28780 (h!56400 (toList!4275 lt!1685580)))))))

(assert (=> d!1385787 (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lt!1685580))))))

(assert (=> d!1385787 (= (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 lt!1685580))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) lt!1686298)))

(assert (=> b!4507566 (= e!2808035 lt!1686308)))

(declare-fun lt!1686301 () ListMap!3537)

(assert (=> b!4507566 (= lt!1686301 (+!1489 (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685580))))))))

(assert (=> b!4507566 (= lt!1686308 (addToMapMapFromBucket!661 (t!357656 (_2!28780 (h!56400 (toList!4275 lt!1685580)))) (+!1489 (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685580)))))))))

(declare-fun lt!1686296 () Unit!92894)

(assert (=> b!4507566 (= lt!1686296 call!313837)))

(assert (=> b!4507566 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) lambda!169928)))

(declare-fun lt!1686294 () Unit!92894)

(assert (=> b!4507566 (= lt!1686294 lt!1686296)))

(assert (=> b!4507566 (forall!10203 (toList!4276 lt!1686301) lambda!169929)))

(declare-fun lt!1686311 () Unit!92894)

(declare-fun Unit!93008 () Unit!92894)

(assert (=> b!4507566 (= lt!1686311 Unit!93008)))

(declare-fun call!313839 () Bool)

(assert (=> b!4507566 call!313839))

(declare-fun lt!1686297 () Unit!92894)

(declare-fun Unit!93009 () Unit!92894)

(assert (=> b!4507566 (= lt!1686297 Unit!93009)))

(declare-fun lt!1686310 () Unit!92894)

(declare-fun Unit!93010 () Unit!92894)

(assert (=> b!4507566 (= lt!1686310 Unit!93010)))

(declare-fun lt!1686305 () Unit!92894)

(assert (=> b!4507566 (= lt!1686305 (forallContained!2454 (toList!4276 lt!1686301) lambda!169929 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685580))))))))

(assert (=> b!4507566 (contains!13257 lt!1686301 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685580))))))))

(declare-fun lt!1686295 () Unit!92894)

(declare-fun Unit!93011 () Unit!92894)

(assert (=> b!4507566 (= lt!1686295 Unit!93011)))

(assert (=> b!4507566 (contains!13257 lt!1686308 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685580))))))))

(declare-fun lt!1686309 () Unit!92894)

(declare-fun Unit!93012 () Unit!92894)

(assert (=> b!4507566 (= lt!1686309 Unit!93012)))

(assert (=> b!4507566 call!313838))

(declare-fun lt!1686312 () Unit!92894)

(declare-fun Unit!93013 () Unit!92894)

(assert (=> b!4507566 (= lt!1686312 Unit!93013)))

(assert (=> b!4507566 (forall!10203 (toList!4276 lt!1686301) lambda!169929)))

(declare-fun lt!1686307 () Unit!92894)

(declare-fun Unit!93014 () Unit!92894)

(assert (=> b!4507566 (= lt!1686307 Unit!93014)))

(declare-fun lt!1686293 () Unit!92894)

(declare-fun Unit!93015 () Unit!92894)

(assert (=> b!4507566 (= lt!1686293 Unit!93015)))

(declare-fun lt!1686300 () Unit!92894)

(assert (=> b!4507566 (= lt!1686300 (addForallContainsKeyThenBeforeAdding!313 (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686308 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685580))))) (_2!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685580)))))))))

(assert (=> b!4507566 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) lambda!169929)))

(declare-fun lt!1686306 () Unit!92894)

(assert (=> b!4507566 (= lt!1686306 lt!1686300)))

(assert (=> b!4507566 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) lambda!169929)))

(declare-fun lt!1686304 () Unit!92894)

(declare-fun Unit!93016 () Unit!92894)

(assert (=> b!4507566 (= lt!1686304 Unit!93016)))

(declare-fun res!1874523 () Bool)

(assert (=> b!4507566 (= res!1874523 (forall!10203 (_2!28780 (h!56400 (toList!4275 lt!1685580))) lambda!169929))))

(assert (=> b!4507566 (=> (not res!1874523) (not e!2808033))))

(assert (=> b!4507566 e!2808033))

(declare-fun lt!1686303 () Unit!92894)

(declare-fun Unit!93017 () Unit!92894)

(assert (=> b!4507566 (= lt!1686303 Unit!93017)))

(assert (=> b!4507570 (= e!2808035 (extractMap!1190 (t!357657 (toList!4275 lt!1685580))))))

(declare-fun lt!1686313 () Unit!92894)

(assert (=> b!4507570 (= lt!1686313 call!313837)))

(assert (=> b!4507570 call!313838))

(declare-fun lt!1686302 () Unit!92894)

(assert (=> b!4507570 (= lt!1686302 lt!1686313)))

(assert (=> b!4507570 call!313839))

(declare-fun lt!1686299 () Unit!92894)

(declare-fun Unit!93018 () Unit!92894)

(assert (=> b!4507570 (= lt!1686299 Unit!93018)))

(declare-fun bm!313834 () Bool)

(assert (=> bm!313834 (= call!313839 (forall!10203 (ite c!768786 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (t!357656 (_2!28780 (h!56400 (toList!4275 lt!1685580))))) (ite c!768786 lambda!169926 lambda!169929)))))

(assert (= (and d!1385787 c!768786) b!4507570))

(assert (= (and d!1385787 (not c!768786)) b!4507566))

(assert (= (and b!4507566 res!1874523) b!4507569))

(assert (= (or b!4507570 b!4507566) bm!313833))

(assert (= (or b!4507570 b!4507566) bm!313834))

(assert (= (or b!4507570 b!4507566) bm!313832))

(assert (= (and d!1385787 res!1874524) b!4507567))

(assert (= (and b!4507567 res!1874522) b!4507568))

(declare-fun m!5244559 () Bool)

(assert (=> b!4507568 m!5244559))

(declare-fun m!5244563 () Bool)

(assert (=> d!1385787 m!5244563))

(declare-fun m!5244565 () Bool)

(assert (=> d!1385787 m!5244565))

(declare-fun m!5244567 () Bool)

(assert (=> bm!313834 m!5244567))

(assert (=> bm!313832 m!5243023))

(declare-fun m!5244569 () Bool)

(assert (=> bm!313832 m!5244569))

(declare-fun m!5244571 () Bool)

(assert (=> b!4507569 m!5244571))

(declare-fun m!5244573 () Bool)

(assert (=> bm!313833 m!5244573))

(declare-fun m!5244575 () Bool)

(assert (=> b!4507567 m!5244575))

(declare-fun m!5244577 () Bool)

(assert (=> b!4507566 m!5244577))

(declare-fun m!5244579 () Bool)

(assert (=> b!4507566 m!5244579))

(declare-fun m!5244581 () Bool)

(assert (=> b!4507566 m!5244581))

(declare-fun m!5244583 () Bool)

(assert (=> b!4507566 m!5244583))

(declare-fun m!5244585 () Bool)

(assert (=> b!4507566 m!5244585))

(assert (=> b!4507566 m!5243023))

(assert (=> b!4507566 m!5244577))

(declare-fun m!5244591 () Bool)

(assert (=> b!4507566 m!5244591))

(declare-fun m!5244593 () Bool)

(assert (=> b!4507566 m!5244593))

(declare-fun m!5244595 () Bool)

(assert (=> b!4507566 m!5244595))

(assert (=> b!4507566 m!5244571))

(assert (=> b!4507566 m!5244595))

(assert (=> b!4507566 m!5243023))

(declare-fun m!5244597 () Bool)

(assert (=> b!4507566 m!5244597))

(assert (=> b!4507566 m!5244571))

(assert (=> b!4506656 d!1385787))

(declare-fun bs!844587 () Bool)

(declare-fun d!1385811 () Bool)

(assert (= bs!844587 (and d!1385811 d!1385701)))

(declare-fun lambda!169933 () Int)

(assert (=> bs!844587 (= lambda!169933 lambda!169913)))

(declare-fun bs!844589 () Bool)

(assert (= bs!844589 (and d!1385811 d!1385357)))

(assert (=> bs!844589 (= lambda!169933 lambda!169766)))

(declare-fun bs!844591 () Bool)

(assert (= bs!844591 (and d!1385811 d!1385325)))

(assert (=> bs!844591 (= lambda!169933 lambda!169765)))

(declare-fun bs!844593 () Bool)

(assert (= bs!844593 (and d!1385811 start!445184)))

(assert (=> bs!844593 (= lambda!169933 lambda!169727)))

(declare-fun bs!844595 () Bool)

(assert (= bs!844595 (and d!1385811 d!1385637)))

(assert (=> bs!844595 (= lambda!169933 lambda!169896)))

(declare-fun bs!844597 () Bool)

(assert (= bs!844597 (and d!1385811 d!1385427)))

(assert (=> bs!844597 (= lambda!169933 lambda!169785)))

(declare-fun bs!844599 () Bool)

(assert (= bs!844599 (and d!1385811 d!1385533)))

(assert (=> bs!844599 (= lambda!169933 lambda!169830)))

(declare-fun bs!844600 () Bool)

(assert (= bs!844600 (and d!1385811 d!1385377)))

(assert (=> bs!844600 (= lambda!169933 lambda!169770)))

(declare-fun bs!844602 () Bool)

(assert (= bs!844602 (and d!1385811 d!1385385)))

(assert (=> bs!844602 (= lambda!169933 lambda!169773)))

(declare-fun bs!844603 () Bool)

(assert (= bs!844603 (and d!1385811 d!1385395)))

(assert (=> bs!844603 (= lambda!169933 lambda!169775)))

(declare-fun bs!844605 () Bool)

(assert (= bs!844605 (and d!1385811 d!1385281)))

(assert (=> bs!844605 (= lambda!169933 lambda!169749)))

(declare-fun bs!844607 () Bool)

(assert (= bs!844607 (and d!1385811 d!1385389)))

(assert (=> bs!844607 (= lambda!169933 lambda!169774)))

(declare-fun bs!844608 () Bool)

(assert (= bs!844608 (and d!1385811 d!1385253)))

(assert (=> bs!844608 (= lambda!169933 lambda!169730)))

(declare-fun bs!844610 () Bool)

(assert (= bs!844610 (and d!1385811 d!1385401)))

(assert (=> bs!844610 (= lambda!169933 lambda!169778)))

(declare-fun bs!844611 () Bool)

(assert (= bs!844611 (and d!1385811 d!1385313)))

(assert (=> bs!844611 (= lambda!169933 lambda!169757)))

(declare-fun bs!844612 () Bool)

(assert (= bs!844612 (and d!1385811 d!1385403)))

(assert (=> bs!844612 (not (= lambda!169933 lambda!169781))))

(declare-fun lt!1686338 () ListMap!3537)

(assert (=> d!1385811 (invariantList!993 (toList!4276 lt!1686338))))

(declare-fun e!2808050 () ListMap!3537)

(assert (=> d!1385811 (= lt!1686338 e!2808050)))

(declare-fun c!768793 () Bool)

(assert (=> d!1385811 (= c!768793 ((_ is Cons!50571) (t!357657 (toList!4275 lt!1685580))))))

(assert (=> d!1385811 (forall!10201 (t!357657 (toList!4275 lt!1685580)) lambda!169933)))

(assert (=> d!1385811 (= (extractMap!1190 (t!357657 (toList!4275 lt!1685580))) lt!1686338)))

(declare-fun b!4507592 () Bool)

(assert (=> b!4507592 (= e!2808050 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (t!357657 (toList!4275 lt!1685580)))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lt!1685580))))))))

(declare-fun b!4507593 () Bool)

(assert (=> b!4507593 (= e!2808050 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385811 c!768793) b!4507592))

(assert (= (and d!1385811 (not c!768793)) b!4507593))

(declare-fun m!5244599 () Bool)

(assert (=> d!1385811 m!5244599))

(declare-fun m!5244601 () Bool)

(assert (=> d!1385811 m!5244601))

(declare-fun m!5244603 () Bool)

(assert (=> b!4507592 m!5244603))

(assert (=> b!4507592 m!5244603))

(declare-fun m!5244605 () Bool)

(assert (=> b!4507592 m!5244605))

(assert (=> b!4506656 d!1385811))

(declare-fun d!1385813 () Bool)

(declare-fun lt!1686339 () Bool)

(assert (=> d!1385813 (= lt!1686339 (select (content!8286 (keys!17544 lt!1685586)) key!3287))))

(declare-fun e!2808052 () Bool)

(assert (=> d!1385813 (= lt!1686339 e!2808052)))

(declare-fun res!1874534 () Bool)

(assert (=> d!1385813 (=> (not res!1874534) (not e!2808052))))

(assert (=> d!1385813 (= res!1874534 ((_ is Cons!50573) (keys!17544 lt!1685586)))))

(assert (=> d!1385813 (= (contains!13261 (keys!17544 lt!1685586) key!3287) lt!1686339)))

(declare-fun b!4507594 () Bool)

(declare-fun e!2808051 () Bool)

(assert (=> b!4507594 (= e!2808052 e!2808051)))

(declare-fun res!1874535 () Bool)

(assert (=> b!4507594 (=> res!1874535 e!2808051)))

(assert (=> b!4507594 (= res!1874535 (= (h!56404 (keys!17544 lt!1685586)) key!3287))))

(declare-fun b!4507595 () Bool)

(assert (=> b!4507595 (= e!2808051 (contains!13261 (t!357659 (keys!17544 lt!1685586)) key!3287))))

(assert (= (and d!1385813 res!1874534) b!4507594))

(assert (= (and b!4507594 (not res!1874535)) b!4507595))

(assert (=> d!1385813 m!5243133))

(assert (=> d!1385813 m!5243331))

(declare-fun m!5244607 () Bool)

(assert (=> d!1385813 m!5244607))

(declare-fun m!5244609 () Bool)

(assert (=> b!4507595 m!5244609))

(assert (=> b!4506707 d!1385813))

(assert (=> b!4506707 d!1385549))

(declare-fun bs!844624 () Bool)

(declare-fun b!4507600 () Bool)

(assert (= bs!844624 (and b!4507600 b!4507274)))

(declare-fun lambda!169935 () Int)

(assert (=> bs!844624 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686129) (= lambda!169935 lambda!169888))))

(assert (=> bs!844624 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169935 lambda!169887))))

(declare-fun bs!844625 () Bool)

(assert (= bs!844625 (and b!4507600 d!1385787)))

(assert (=> bs!844625 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686298) (= lambda!169935 lambda!169931))))

(declare-fun bs!844626 () Bool)

(assert (= bs!844626 (and b!4507600 d!1385411)))

(assert (=> bs!844626 (not (= lambda!169935 lambda!169784))))

(declare-fun bs!844627 () Bool)

(assert (= bs!844627 (and b!4507600 d!1385461)))

(assert (=> bs!844627 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1685919) (= lambda!169935 lambda!169829))))

(declare-fun bs!844628 () Bool)

(assert (= bs!844628 (and b!4507600 b!4507038)))

(assert (=> bs!844628 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169935 lambda!169827))))

(declare-fun bs!844629 () Bool)

(assert (= bs!844629 (and b!4507600 b!4507042)))

(assert (=> bs!844629 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169935 lambda!169826))))

(declare-fun bs!844630 () Bool)

(assert (= bs!844630 (and b!4507600 b!4507278)))

(assert (=> bs!844630 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169935 lambda!169886))))

(declare-fun bs!844631 () Bool)

(assert (= bs!844631 (and b!4507600 b!4507406)))

(assert (=> bs!844631 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169935 lambda!169910))))

(declare-fun bs!844632 () Bool)

(assert (= bs!844632 (and b!4507600 b!4507570)))

(assert (=> bs!844632 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169935 lambda!169926))))

(assert (=> bs!844628 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1685929) (= lambda!169935 lambda!169828))))

(declare-fun bs!844633 () Bool)

(assert (= bs!844633 (and b!4507600 b!4507410)))

(assert (=> bs!844633 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169935 lambda!169909))))

(declare-fun bs!844634 () Bool)

(assert (= bs!844634 (and b!4507600 d!1385699)))

(assert (=> bs!844634 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686190) (= lambda!169935 lambda!169912))))

(declare-fun bs!844635 () Bool)

(assert (= bs!844635 (and b!4507600 d!1385635)))

(assert (=> bs!844635 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686119) (= lambda!169935 lambda!169889))))

(assert (=> bs!844631 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686200) (= lambda!169935 lambda!169911))))

(declare-fun bs!844636 () Bool)

(assert (= bs!844636 (and b!4507600 b!4507566)))

(assert (=> bs!844636 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169935 lambda!169928))))

(assert (=> bs!844636 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686308) (= lambda!169935 lambda!169929))))

(assert (=> b!4507600 true))

(declare-fun bs!844637 () Bool)

(declare-fun b!4507596 () Bool)

(assert (= bs!844637 (and b!4507596 b!4507274)))

(declare-fun lambda!169937 () Int)

(assert (=> bs!844637 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686129) (= lambda!169937 lambda!169888))))

(assert (=> bs!844637 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169937 lambda!169887))))

(declare-fun bs!844638 () Bool)

(assert (= bs!844638 (and b!4507596 d!1385787)))

(assert (=> bs!844638 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686298) (= lambda!169937 lambda!169931))))

(declare-fun bs!844639 () Bool)

(assert (= bs!844639 (and b!4507596 d!1385411)))

(assert (=> bs!844639 (not (= lambda!169937 lambda!169784))))

(declare-fun bs!844640 () Bool)

(assert (= bs!844640 (and b!4507596 d!1385461)))

(assert (=> bs!844640 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1685919) (= lambda!169937 lambda!169829))))

(declare-fun bs!844641 () Bool)

(assert (= bs!844641 (and b!4507596 b!4507038)))

(assert (=> bs!844641 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169937 lambda!169827))))

(declare-fun bs!844642 () Bool)

(assert (= bs!844642 (and b!4507596 b!4507042)))

(assert (=> bs!844642 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169937 lambda!169826))))

(declare-fun bs!844643 () Bool)

(assert (= bs!844643 (and b!4507596 b!4507278)))

(assert (=> bs!844643 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169937 lambda!169886))))

(declare-fun bs!844645 () Bool)

(assert (= bs!844645 (and b!4507596 b!4507406)))

(assert (=> bs!844645 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169937 lambda!169910))))

(declare-fun bs!844647 () Bool)

(assert (= bs!844647 (and b!4507596 b!4507570)))

(assert (=> bs!844647 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169937 lambda!169926))))

(assert (=> bs!844641 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1685929) (= lambda!169937 lambda!169828))))

(declare-fun bs!844649 () Bool)

(assert (= bs!844649 (and b!4507596 b!4507410)))

(assert (=> bs!844649 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169937 lambda!169909))))

(declare-fun bs!844651 () Bool)

(assert (= bs!844651 (and b!4507596 d!1385699)))

(assert (=> bs!844651 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686190) (= lambda!169937 lambda!169912))))

(declare-fun bs!844653 () Bool)

(assert (= bs!844653 (and b!4507596 d!1385635)))

(assert (=> bs!844653 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686119) (= lambda!169937 lambda!169889))))

(declare-fun bs!844655 () Bool)

(assert (= bs!844655 (and b!4507596 b!4507600)))

(assert (=> bs!844655 (= lambda!169937 lambda!169935)))

(assert (=> bs!844645 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686200) (= lambda!169937 lambda!169911))))

(declare-fun bs!844657 () Bool)

(assert (= bs!844657 (and b!4507596 b!4507566)))

(assert (=> bs!844657 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169937 lambda!169928))))

(assert (=> bs!844657 (= (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686308) (= lambda!169937 lambda!169929))))

(assert (=> b!4507596 true))

(declare-fun lt!1686355 () ListMap!3537)

(declare-fun lambda!169939 () Int)

(assert (=> b!4507596 (= (= lt!1686355 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169939 lambda!169937))))

(assert (=> bs!844637 (= (= lt!1686355 lt!1686129) (= lambda!169939 lambda!169888))))

(assert (=> bs!844637 (= (= lt!1686355 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169939 lambda!169887))))

(assert (=> bs!844638 (= (= lt!1686355 lt!1686298) (= lambda!169939 lambda!169931))))

(assert (=> bs!844639 (not (= lambda!169939 lambda!169784))))

(assert (=> bs!844640 (= (= lt!1686355 lt!1685919) (= lambda!169939 lambda!169829))))

(assert (=> bs!844641 (= (= lt!1686355 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169939 lambda!169827))))

(assert (=> bs!844642 (= (= lt!1686355 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169939 lambda!169826))))

(assert (=> bs!844643 (= (= lt!1686355 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169939 lambda!169886))))

(assert (=> bs!844645 (= (= lt!1686355 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169939 lambda!169910))))

(assert (=> bs!844647 (= (= lt!1686355 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169939 lambda!169926))))

(assert (=> bs!844641 (= (= lt!1686355 lt!1685929) (= lambda!169939 lambda!169828))))

(assert (=> bs!844649 (= (= lt!1686355 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169939 lambda!169909))))

(assert (=> bs!844651 (= (= lt!1686355 lt!1686190) (= lambda!169939 lambda!169912))))

(assert (=> bs!844653 (= (= lt!1686355 lt!1686119) (= lambda!169939 lambda!169889))))

(assert (=> bs!844655 (= (= lt!1686355 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169939 lambda!169935))))

(assert (=> bs!844645 (= (= lt!1686355 lt!1686200) (= lambda!169939 lambda!169911))))

(assert (=> bs!844657 (= (= lt!1686355 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169939 lambda!169928))))

(assert (=> bs!844657 (= (= lt!1686355 lt!1686308) (= lambda!169939 lambda!169929))))

(assert (=> b!4507596 true))

(declare-fun bs!844663 () Bool)

(declare-fun d!1385815 () Bool)

(assert (= bs!844663 (and d!1385815 b!4507596)))

(declare-fun lt!1686345 () ListMap!3537)

(declare-fun lambda!169940 () Int)

(assert (=> bs!844663 (= (= lt!1686345 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169940 lambda!169937))))

(declare-fun bs!844664 () Bool)

(assert (= bs!844664 (and d!1385815 b!4507274)))

(assert (=> bs!844664 (= (= lt!1686345 lt!1686129) (= lambda!169940 lambda!169888))))

(assert (=> bs!844663 (= (= lt!1686345 lt!1686355) (= lambda!169940 lambda!169939))))

(assert (=> bs!844664 (= (= lt!1686345 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169940 lambda!169887))))

(declare-fun bs!844665 () Bool)

(assert (= bs!844665 (and d!1385815 d!1385787)))

(assert (=> bs!844665 (= (= lt!1686345 lt!1686298) (= lambda!169940 lambda!169931))))

(declare-fun bs!844666 () Bool)

(assert (= bs!844666 (and d!1385815 d!1385411)))

(assert (=> bs!844666 (not (= lambda!169940 lambda!169784))))

(declare-fun bs!844667 () Bool)

(assert (= bs!844667 (and d!1385815 d!1385461)))

(assert (=> bs!844667 (= (= lt!1686345 lt!1685919) (= lambda!169940 lambda!169829))))

(declare-fun bs!844668 () Bool)

(assert (= bs!844668 (and d!1385815 b!4507038)))

(assert (=> bs!844668 (= (= lt!1686345 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169940 lambda!169827))))

(declare-fun bs!844669 () Bool)

(assert (= bs!844669 (and d!1385815 b!4507042)))

(assert (=> bs!844669 (= (= lt!1686345 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169940 lambda!169826))))

(declare-fun bs!844670 () Bool)

(assert (= bs!844670 (and d!1385815 b!4507278)))

(assert (=> bs!844670 (= (= lt!1686345 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169940 lambda!169886))))

(declare-fun bs!844672 () Bool)

(assert (= bs!844672 (and d!1385815 b!4507406)))

(assert (=> bs!844672 (= (= lt!1686345 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169940 lambda!169910))))

(declare-fun bs!844674 () Bool)

(assert (= bs!844674 (and d!1385815 b!4507570)))

(assert (=> bs!844674 (= (= lt!1686345 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169940 lambda!169926))))

(assert (=> bs!844668 (= (= lt!1686345 lt!1685929) (= lambda!169940 lambda!169828))))

(declare-fun bs!844677 () Bool)

(assert (= bs!844677 (and d!1385815 b!4507410)))

(assert (=> bs!844677 (= (= lt!1686345 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169940 lambda!169909))))

(declare-fun bs!844679 () Bool)

(assert (= bs!844679 (and d!1385815 d!1385699)))

(assert (=> bs!844679 (= (= lt!1686345 lt!1686190) (= lambda!169940 lambda!169912))))

(declare-fun bs!844681 () Bool)

(assert (= bs!844681 (and d!1385815 d!1385635)))

(assert (=> bs!844681 (= (= lt!1686345 lt!1686119) (= lambda!169940 lambda!169889))))

(declare-fun bs!844683 () Bool)

(assert (= bs!844683 (and d!1385815 b!4507600)))

(assert (=> bs!844683 (= (= lt!1686345 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169940 lambda!169935))))

(assert (=> bs!844672 (= (= lt!1686345 lt!1686200) (= lambda!169940 lambda!169911))))

(declare-fun bs!844686 () Bool)

(assert (= bs!844686 (and d!1385815 b!4507566)))

(assert (=> bs!844686 (= (= lt!1686345 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169940 lambda!169928))))

(assert (=> bs!844686 (= (= lt!1686345 lt!1686308) (= lambda!169940 lambda!169929))))

(assert (=> d!1385815 true))

(declare-fun bm!313838 () Bool)

(declare-fun call!313843 () Unit!92894)

(assert (=> bm!313838 (= call!313843 (lemmaContainsAllItsOwnKeys!313 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))))))

(declare-fun b!4507597 () Bool)

(declare-fun res!1874536 () Bool)

(declare-fun e!2808054 () Bool)

(assert (=> b!4507597 (=> (not res!1874536) (not e!2808054))))

(assert (=> b!4507597 (= res!1874536 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) lambda!169940))))

(declare-fun b!4507598 () Bool)

(assert (=> b!4507598 (= e!2808054 (invariantList!993 (toList!4276 lt!1686345)))))

(declare-fun call!313844 () Bool)

(declare-fun c!768794 () Bool)

(declare-fun bm!313839 () Bool)

(assert (=> bm!313839 (= call!313844 (forall!10203 (ite c!768794 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (_2!28780 (h!56400 (toList!4275 lt!1685584)))) (ite c!768794 lambda!169935 lambda!169939)))))

(declare-fun b!4507599 () Bool)

(declare-fun e!2808053 () Bool)

(assert (=> b!4507599 (= e!2808053 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) lambda!169939))))

(assert (=> d!1385815 e!2808054))

(declare-fun res!1874538 () Bool)

(assert (=> d!1385815 (=> (not res!1874538) (not e!2808054))))

(assert (=> d!1385815 (= res!1874538 (forall!10203 (_2!28780 (h!56400 (toList!4275 lt!1685584))) lambda!169940))))

(declare-fun e!2808055 () ListMap!3537)

(assert (=> d!1385815 (= lt!1686345 e!2808055)))

(assert (=> d!1385815 (= c!768794 ((_ is Nil!50570) (_2!28780 (h!56400 (toList!4275 lt!1685584)))))))

(assert (=> d!1385815 (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lt!1685584))))))

(assert (=> d!1385815 (= (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 lt!1685584))) (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) lt!1686345)))

(assert (=> b!4507596 (= e!2808055 lt!1686355)))

(declare-fun lt!1686348 () ListMap!3537)

(assert (=> b!4507596 (= lt!1686348 (+!1489 (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685584))))))))

(assert (=> b!4507596 (= lt!1686355 (addToMapMapFromBucket!661 (t!357656 (_2!28780 (h!56400 (toList!4275 lt!1685584)))) (+!1489 (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685584)))))))))

(declare-fun lt!1686343 () Unit!92894)

(assert (=> b!4507596 (= lt!1686343 call!313843)))

(assert (=> b!4507596 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) lambda!169937)))

(declare-fun lt!1686341 () Unit!92894)

(assert (=> b!4507596 (= lt!1686341 lt!1686343)))

(assert (=> b!4507596 (forall!10203 (toList!4276 lt!1686348) lambda!169939)))

(declare-fun lt!1686358 () Unit!92894)

(declare-fun Unit!93030 () Unit!92894)

(assert (=> b!4507596 (= lt!1686358 Unit!93030)))

(declare-fun call!313845 () Bool)

(assert (=> b!4507596 call!313845))

(declare-fun lt!1686344 () Unit!92894)

(declare-fun Unit!93031 () Unit!92894)

(assert (=> b!4507596 (= lt!1686344 Unit!93031)))

(declare-fun lt!1686357 () Unit!92894)

(declare-fun Unit!93032 () Unit!92894)

(assert (=> b!4507596 (= lt!1686357 Unit!93032)))

(declare-fun lt!1686352 () Unit!92894)

(assert (=> b!4507596 (= lt!1686352 (forallContained!2454 (toList!4276 lt!1686348) lambda!169939 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685584))))))))

(assert (=> b!4507596 (contains!13257 lt!1686348 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685584))))))))

(declare-fun lt!1686342 () Unit!92894)

(declare-fun Unit!93033 () Unit!92894)

(assert (=> b!4507596 (= lt!1686342 Unit!93033)))

(assert (=> b!4507596 (contains!13257 lt!1686355 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685584))))))))

(declare-fun lt!1686356 () Unit!92894)

(declare-fun Unit!93034 () Unit!92894)

(assert (=> b!4507596 (= lt!1686356 Unit!93034)))

(assert (=> b!4507596 call!313844))

(declare-fun lt!1686359 () Unit!92894)

(declare-fun Unit!93035 () Unit!92894)

(assert (=> b!4507596 (= lt!1686359 Unit!93035)))

(assert (=> b!4507596 (forall!10203 (toList!4276 lt!1686348) lambda!169939)))

(declare-fun lt!1686354 () Unit!92894)

(declare-fun Unit!93036 () Unit!92894)

(assert (=> b!4507596 (= lt!1686354 Unit!93036)))

(declare-fun lt!1686340 () Unit!92894)

(declare-fun Unit!93037 () Unit!92894)

(assert (=> b!4507596 (= lt!1686340 Unit!93037)))

(declare-fun lt!1686347 () Unit!92894)

(assert (=> b!4507596 (= lt!1686347 (addForallContainsKeyThenBeforeAdding!313 (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686355 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685584))))) (_2!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lt!1685584)))))))))

(assert (=> b!4507596 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) lambda!169939)))

(declare-fun lt!1686353 () Unit!92894)

(assert (=> b!4507596 (= lt!1686353 lt!1686347)))

(assert (=> b!4507596 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) lambda!169939)))

(declare-fun lt!1686351 () Unit!92894)

(declare-fun Unit!93038 () Unit!92894)

(assert (=> b!4507596 (= lt!1686351 Unit!93038)))

(declare-fun res!1874537 () Bool)

(assert (=> b!4507596 (= res!1874537 (forall!10203 (_2!28780 (h!56400 (toList!4275 lt!1685584))) lambda!169939))))

(assert (=> b!4507596 (=> (not res!1874537) (not e!2808053))))

(assert (=> b!4507596 e!2808053))

(declare-fun lt!1686350 () Unit!92894)

(declare-fun Unit!93039 () Unit!92894)

(assert (=> b!4507596 (= lt!1686350 Unit!93039)))

(assert (=> b!4507600 (= e!2808055 (extractMap!1190 (t!357657 (toList!4275 lt!1685584))))))

(declare-fun lt!1686360 () Unit!92894)

(assert (=> b!4507600 (= lt!1686360 call!313843)))

(assert (=> b!4507600 call!313844))

(declare-fun lt!1686349 () Unit!92894)

(assert (=> b!4507600 (= lt!1686349 lt!1686360)))

(assert (=> b!4507600 call!313845))

(declare-fun lt!1686346 () Unit!92894)

(declare-fun Unit!93040 () Unit!92894)

(assert (=> b!4507600 (= lt!1686346 Unit!93040)))

(declare-fun bm!313840 () Bool)

(assert (=> bm!313840 (= call!313845 (forall!10203 (ite c!768794 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (t!357656 (_2!28780 (h!56400 (toList!4275 lt!1685584))))) (ite c!768794 lambda!169935 lambda!169939)))))

(assert (= (and d!1385815 c!768794) b!4507600))

(assert (= (and d!1385815 (not c!768794)) b!4507596))

(assert (= (and b!4507596 res!1874537) b!4507599))

(assert (= (or b!4507600 b!4507596) bm!313839))

(assert (= (or b!4507600 b!4507596) bm!313840))

(assert (= (or b!4507600 b!4507596) bm!313838))

(assert (= (and d!1385815 res!1874538) b!4507597))

(assert (= (and b!4507597 res!1874536) b!4507598))

(declare-fun m!5244653 () Bool)

(assert (=> b!4507598 m!5244653))

(declare-fun m!5244655 () Bool)

(assert (=> d!1385815 m!5244655))

(declare-fun m!5244657 () Bool)

(assert (=> d!1385815 m!5244657))

(declare-fun m!5244659 () Bool)

(assert (=> bm!313840 m!5244659))

(assert (=> bm!313838 m!5243451))

(declare-fun m!5244661 () Bool)

(assert (=> bm!313838 m!5244661))

(declare-fun m!5244663 () Bool)

(assert (=> b!4507599 m!5244663))

(declare-fun m!5244665 () Bool)

(assert (=> bm!313839 m!5244665))

(declare-fun m!5244667 () Bool)

(assert (=> b!4507597 m!5244667))

(declare-fun m!5244669 () Bool)

(assert (=> b!4507596 m!5244669))

(declare-fun m!5244671 () Bool)

(assert (=> b!4507596 m!5244671))

(declare-fun m!5244673 () Bool)

(assert (=> b!4507596 m!5244673))

(declare-fun m!5244675 () Bool)

(assert (=> b!4507596 m!5244675))

(declare-fun m!5244677 () Bool)

(assert (=> b!4507596 m!5244677))

(assert (=> b!4507596 m!5243451))

(assert (=> b!4507596 m!5244669))

(declare-fun m!5244679 () Bool)

(assert (=> b!4507596 m!5244679))

(declare-fun m!5244681 () Bool)

(assert (=> b!4507596 m!5244681))

(declare-fun m!5244683 () Bool)

(assert (=> b!4507596 m!5244683))

(assert (=> b!4507596 m!5244663))

(assert (=> b!4507596 m!5244683))

(assert (=> b!4507596 m!5243451))

(declare-fun m!5244685 () Bool)

(assert (=> b!4507596 m!5244685))

(assert (=> b!4507596 m!5244663))

(assert (=> b!4506855 d!1385815))

(declare-fun bs!844694 () Bool)

(declare-fun d!1385821 () Bool)

(assert (= bs!844694 (and d!1385821 d!1385701)))

(declare-fun lambda!169942 () Int)

(assert (=> bs!844694 (= lambda!169942 lambda!169913)))

(declare-fun bs!844695 () Bool)

(assert (= bs!844695 (and d!1385821 d!1385357)))

(assert (=> bs!844695 (= lambda!169942 lambda!169766)))

(declare-fun bs!844696 () Bool)

(assert (= bs!844696 (and d!1385821 d!1385325)))

(assert (=> bs!844696 (= lambda!169942 lambda!169765)))

(declare-fun bs!844697 () Bool)

(assert (= bs!844697 (and d!1385821 d!1385811)))

(assert (=> bs!844697 (= lambda!169942 lambda!169933)))

(declare-fun bs!844698 () Bool)

(assert (= bs!844698 (and d!1385821 start!445184)))

(assert (=> bs!844698 (= lambda!169942 lambda!169727)))

(declare-fun bs!844699 () Bool)

(assert (= bs!844699 (and d!1385821 d!1385637)))

(assert (=> bs!844699 (= lambda!169942 lambda!169896)))

(declare-fun bs!844700 () Bool)

(assert (= bs!844700 (and d!1385821 d!1385427)))

(assert (=> bs!844700 (= lambda!169942 lambda!169785)))

(declare-fun bs!844701 () Bool)

(assert (= bs!844701 (and d!1385821 d!1385533)))

(assert (=> bs!844701 (= lambda!169942 lambda!169830)))

(declare-fun bs!844702 () Bool)

(assert (= bs!844702 (and d!1385821 d!1385377)))

(assert (=> bs!844702 (= lambda!169942 lambda!169770)))

(declare-fun bs!844703 () Bool)

(assert (= bs!844703 (and d!1385821 d!1385385)))

(assert (=> bs!844703 (= lambda!169942 lambda!169773)))

(declare-fun bs!844704 () Bool)

(assert (= bs!844704 (and d!1385821 d!1385395)))

(assert (=> bs!844704 (= lambda!169942 lambda!169775)))

(declare-fun bs!844705 () Bool)

(assert (= bs!844705 (and d!1385821 d!1385281)))

(assert (=> bs!844705 (= lambda!169942 lambda!169749)))

(declare-fun bs!844706 () Bool)

(assert (= bs!844706 (and d!1385821 d!1385389)))

(assert (=> bs!844706 (= lambda!169942 lambda!169774)))

(declare-fun bs!844707 () Bool)

(assert (= bs!844707 (and d!1385821 d!1385253)))

(assert (=> bs!844707 (= lambda!169942 lambda!169730)))

(declare-fun bs!844708 () Bool)

(assert (= bs!844708 (and d!1385821 d!1385401)))

(assert (=> bs!844708 (= lambda!169942 lambda!169778)))

(declare-fun bs!844709 () Bool)

(assert (= bs!844709 (and d!1385821 d!1385313)))

(assert (=> bs!844709 (= lambda!169942 lambda!169757)))

(declare-fun bs!844710 () Bool)

(assert (= bs!844710 (and d!1385821 d!1385403)))

(assert (=> bs!844710 (not (= lambda!169942 lambda!169781))))

(declare-fun lt!1686362 () ListMap!3537)

(assert (=> d!1385821 (invariantList!993 (toList!4276 lt!1686362))))

(declare-fun e!2808061 () ListMap!3537)

(assert (=> d!1385821 (= lt!1686362 e!2808061)))

(declare-fun c!768796 () Bool)

(assert (=> d!1385821 (= c!768796 ((_ is Cons!50571) (t!357657 (toList!4275 lt!1685584))))))

(assert (=> d!1385821 (forall!10201 (t!357657 (toList!4275 lt!1685584)) lambda!169942)))

(assert (=> d!1385821 (= (extractMap!1190 (t!357657 (toList!4275 lt!1685584))) lt!1686362)))

(declare-fun b!4507607 () Bool)

(assert (=> b!4507607 (= e!2808061 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (t!357657 (toList!4275 lt!1685584)))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lt!1685584))))))))

(declare-fun b!4507608 () Bool)

(assert (=> b!4507608 (= e!2808061 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385821 c!768796) b!4507607))

(assert (= (and d!1385821 (not c!768796)) b!4507608))

(declare-fun m!5244697 () Bool)

(assert (=> d!1385821 m!5244697))

(declare-fun m!5244699 () Bool)

(assert (=> d!1385821 m!5244699))

(declare-fun m!5244701 () Bool)

(assert (=> b!4507607 m!5244701))

(assert (=> b!4507607 m!5244701))

(declare-fun m!5244703 () Bool)

(assert (=> b!4507607 m!5244703))

(assert (=> b!4506855 d!1385821))

(declare-fun bs!844711 () Bool)

(declare-fun b!4507626 () Bool)

(assert (= bs!844711 (and b!4507626 b!4507596)))

(declare-fun lambda!169943 () Int)

(assert (=> bs!844711 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169943 lambda!169937))))

(declare-fun bs!844712 () Bool)

(assert (= bs!844712 (and b!4507626 b!4507274)))

(assert (=> bs!844712 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686129) (= lambda!169943 lambda!169888))))

(assert (=> bs!844711 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686355) (= lambda!169943 lambda!169939))))

(assert (=> bs!844712 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169943 lambda!169887))))

(declare-fun bs!844713 () Bool)

(assert (= bs!844713 (and b!4507626 d!1385787)))

(assert (=> bs!844713 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686298) (= lambda!169943 lambda!169931))))

(declare-fun bs!844714 () Bool)

(assert (= bs!844714 (and b!4507626 d!1385411)))

(assert (=> bs!844714 (not (= lambda!169943 lambda!169784))))

(declare-fun bs!844715 () Bool)

(assert (= bs!844715 (and b!4507626 d!1385461)))

(assert (=> bs!844715 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1685919) (= lambda!169943 lambda!169829))))

(declare-fun bs!844716 () Bool)

(assert (= bs!844716 (and b!4507626 d!1385815)))

(assert (=> bs!844716 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686345) (= lambda!169943 lambda!169940))))

(declare-fun bs!844717 () Bool)

(assert (= bs!844717 (and b!4507626 b!4507038)))

(assert (=> bs!844717 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169943 lambda!169827))))

(declare-fun bs!844718 () Bool)

(assert (= bs!844718 (and b!4507626 b!4507042)))

(assert (=> bs!844718 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169943 lambda!169826))))

(declare-fun bs!844719 () Bool)

(assert (= bs!844719 (and b!4507626 b!4507278)))

(assert (=> bs!844719 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169943 lambda!169886))))

(declare-fun bs!844720 () Bool)

(assert (= bs!844720 (and b!4507626 b!4507406)))

(assert (=> bs!844720 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169943 lambda!169910))))

(declare-fun bs!844721 () Bool)

(assert (= bs!844721 (and b!4507626 b!4507570)))

(assert (=> bs!844721 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169943 lambda!169926))))

(assert (=> bs!844717 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1685929) (= lambda!169943 lambda!169828))))

(declare-fun bs!844722 () Bool)

(assert (= bs!844722 (and b!4507626 b!4507410)))

(assert (=> bs!844722 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169943 lambda!169909))))

(declare-fun bs!844723 () Bool)

(assert (= bs!844723 (and b!4507626 d!1385699)))

(assert (=> bs!844723 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686190) (= lambda!169943 lambda!169912))))

(declare-fun bs!844724 () Bool)

(assert (= bs!844724 (and b!4507626 d!1385635)))

(assert (=> bs!844724 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686119) (= lambda!169943 lambda!169889))))

(declare-fun bs!844725 () Bool)

(assert (= bs!844725 (and b!4507626 b!4507600)))

(assert (=> bs!844725 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169943 lambda!169935))))

(assert (=> bs!844720 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686200) (= lambda!169943 lambda!169911))))

(declare-fun bs!844726 () Bool)

(assert (= bs!844726 (and b!4507626 b!4507566)))

(assert (=> bs!844726 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169943 lambda!169928))))

(assert (=> bs!844726 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686308) (= lambda!169943 lambda!169929))))

(assert (=> b!4507626 true))

(declare-fun bs!844727 () Bool)

(declare-fun b!4507622 () Bool)

(assert (= bs!844727 (and b!4507622 b!4507596)))

(declare-fun lambda!169944 () Int)

(assert (=> bs!844727 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169944 lambda!169937))))

(declare-fun bs!844728 () Bool)

(assert (= bs!844728 (and b!4507622 b!4507274)))

(assert (=> bs!844728 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686129) (= lambda!169944 lambda!169888))))

(assert (=> bs!844727 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686355) (= lambda!169944 lambda!169939))))

(assert (=> bs!844728 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169944 lambda!169887))))

(declare-fun bs!844729 () Bool)

(assert (= bs!844729 (and b!4507622 d!1385787)))

(assert (=> bs!844729 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686298) (= lambda!169944 lambda!169931))))

(declare-fun bs!844730 () Bool)

(assert (= bs!844730 (and b!4507622 b!4507626)))

(assert (=> bs!844730 (= lambda!169944 lambda!169943)))

(declare-fun bs!844731 () Bool)

(assert (= bs!844731 (and b!4507622 d!1385411)))

(assert (=> bs!844731 (not (= lambda!169944 lambda!169784))))

(declare-fun bs!844732 () Bool)

(assert (= bs!844732 (and b!4507622 d!1385461)))

(assert (=> bs!844732 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1685919) (= lambda!169944 lambda!169829))))

(declare-fun bs!844733 () Bool)

(assert (= bs!844733 (and b!4507622 d!1385815)))

(assert (=> bs!844733 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686345) (= lambda!169944 lambda!169940))))

(declare-fun bs!844734 () Bool)

(assert (= bs!844734 (and b!4507622 b!4507038)))

(assert (=> bs!844734 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169944 lambda!169827))))

(declare-fun bs!844735 () Bool)

(assert (= bs!844735 (and b!4507622 b!4507042)))

(assert (=> bs!844735 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169944 lambda!169826))))

(declare-fun bs!844736 () Bool)

(assert (= bs!844736 (and b!4507622 b!4507278)))

(assert (=> bs!844736 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169944 lambda!169886))))

(declare-fun bs!844737 () Bool)

(assert (= bs!844737 (and b!4507622 b!4507406)))

(assert (=> bs!844737 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169944 lambda!169910))))

(declare-fun bs!844738 () Bool)

(assert (= bs!844738 (and b!4507622 b!4507570)))

(assert (=> bs!844738 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169944 lambda!169926))))

(assert (=> bs!844734 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1685929) (= lambda!169944 lambda!169828))))

(declare-fun bs!844739 () Bool)

(assert (= bs!844739 (and b!4507622 b!4507410)))

(assert (=> bs!844739 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169944 lambda!169909))))

(declare-fun bs!844740 () Bool)

(assert (= bs!844740 (and b!4507622 d!1385699)))

(assert (=> bs!844740 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686190) (= lambda!169944 lambda!169912))))

(declare-fun bs!844741 () Bool)

(assert (= bs!844741 (and b!4507622 d!1385635)))

(assert (=> bs!844741 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686119) (= lambda!169944 lambda!169889))))

(declare-fun bs!844742 () Bool)

(assert (= bs!844742 (and b!4507622 b!4507600)))

(assert (=> bs!844742 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169944 lambda!169935))))

(assert (=> bs!844737 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686200) (= lambda!169944 lambda!169911))))

(declare-fun bs!844743 () Bool)

(assert (= bs!844743 (and b!4507622 b!4507566)))

(assert (=> bs!844743 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169944 lambda!169928))))

(assert (=> bs!844743 (= (= (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686308) (= lambda!169944 lambda!169929))))

(assert (=> b!4507622 true))

(declare-fun lt!1686387 () ListMap!3537)

(declare-fun lambda!169945 () Int)

(assert (=> b!4507622 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (= lambda!169945 lambda!169944))))

(assert (=> bs!844727 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169945 lambda!169937))))

(assert (=> bs!844728 (= (= lt!1686387 lt!1686129) (= lambda!169945 lambda!169888))))

(assert (=> bs!844727 (= (= lt!1686387 lt!1686355) (= lambda!169945 lambda!169939))))

(assert (=> bs!844728 (= (= lt!1686387 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169945 lambda!169887))))

(assert (=> bs!844729 (= (= lt!1686387 lt!1686298) (= lambda!169945 lambda!169931))))

(assert (=> bs!844730 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (= lambda!169945 lambda!169943))))

(assert (=> bs!844731 (not (= lambda!169945 lambda!169784))))

(assert (=> bs!844732 (= (= lt!1686387 lt!1685919) (= lambda!169945 lambda!169829))))

(assert (=> bs!844733 (= (= lt!1686387 lt!1686345) (= lambda!169945 lambda!169940))))

(assert (=> bs!844734 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169945 lambda!169827))))

(assert (=> bs!844735 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169945 lambda!169826))))

(assert (=> bs!844736 (= (= lt!1686387 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169945 lambda!169886))))

(assert (=> bs!844737 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169945 lambda!169910))))

(assert (=> bs!844738 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169945 lambda!169926))))

(assert (=> bs!844734 (= (= lt!1686387 lt!1685929) (= lambda!169945 lambda!169828))))

(assert (=> bs!844739 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169945 lambda!169909))))

(assert (=> bs!844740 (= (= lt!1686387 lt!1686190) (= lambda!169945 lambda!169912))))

(assert (=> bs!844741 (= (= lt!1686387 lt!1686119) (= lambda!169945 lambda!169889))))

(assert (=> bs!844742 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169945 lambda!169935))))

(assert (=> bs!844737 (= (= lt!1686387 lt!1686200) (= lambda!169945 lambda!169911))))

(assert (=> bs!844743 (= (= lt!1686387 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169945 lambda!169928))))

(assert (=> bs!844743 (= (= lt!1686387 lt!1686308) (= lambda!169945 lambda!169929))))

(assert (=> b!4507622 true))

(declare-fun bs!844744 () Bool)

(declare-fun d!1385827 () Bool)

(assert (= bs!844744 (and d!1385827 b!4507622)))

(declare-fun lambda!169946 () Int)

(declare-fun lt!1686377 () ListMap!3537)

(assert (=> bs!844744 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (= lambda!169946 lambda!169944))))

(declare-fun bs!844745 () Bool)

(assert (= bs!844745 (and d!1385827 b!4507596)))

(assert (=> bs!844745 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169946 lambda!169937))))

(declare-fun bs!844746 () Bool)

(assert (= bs!844746 (and d!1385827 b!4507274)))

(assert (=> bs!844746 (= (= lt!1686377 lt!1686129) (= lambda!169946 lambda!169888))))

(assert (=> bs!844745 (= (= lt!1686377 lt!1686355) (= lambda!169946 lambda!169939))))

(assert (=> bs!844746 (= (= lt!1686377 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169946 lambda!169887))))

(declare-fun bs!844747 () Bool)

(assert (= bs!844747 (and d!1385827 d!1385787)))

(assert (=> bs!844747 (= (= lt!1686377 lt!1686298) (= lambda!169946 lambda!169931))))

(declare-fun bs!844748 () Bool)

(assert (= bs!844748 (and d!1385827 b!4507626)))

(assert (=> bs!844748 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (= lambda!169946 lambda!169943))))

(declare-fun bs!844749 () Bool)

(assert (= bs!844749 (and d!1385827 d!1385411)))

(assert (=> bs!844749 (not (= lambda!169946 lambda!169784))))

(declare-fun bs!844750 () Bool)

(assert (= bs!844750 (and d!1385827 d!1385461)))

(assert (=> bs!844750 (= (= lt!1686377 lt!1685919) (= lambda!169946 lambda!169829))))

(declare-fun bs!844751 () Bool)

(assert (= bs!844751 (and d!1385827 d!1385815)))

(assert (=> bs!844751 (= (= lt!1686377 lt!1686345) (= lambda!169946 lambda!169940))))

(declare-fun bs!844752 () Bool)

(assert (= bs!844752 (and d!1385827 b!4507038)))

(assert (=> bs!844752 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169946 lambda!169827))))

(declare-fun bs!844753 () Bool)

(assert (= bs!844753 (and d!1385827 b!4507042)))

(assert (=> bs!844753 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 lt!1685585)))) (= lambda!169946 lambda!169826))))

(assert (=> bs!844744 (= (= lt!1686377 lt!1686387) (= lambda!169946 lambda!169945))))

(declare-fun bs!844754 () Bool)

(assert (= bs!844754 (and d!1385827 b!4507278)))

(assert (=> bs!844754 (= (= lt!1686377 (extractMap!1190 (t!357657 (t!357657 (toList!4275 lm!1477))))) (= lambda!169946 lambda!169886))))

(declare-fun bs!844755 () Bool)

(assert (= bs!844755 (and d!1385827 b!4507406)))

(assert (=> bs!844755 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169946 lambda!169910))))

(declare-fun bs!844756 () Bool)

(assert (= bs!844756 (and d!1385827 b!4507570)))

(assert (=> bs!844756 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169946 lambda!169926))))

(assert (=> bs!844752 (= (= lt!1686377 lt!1685929) (= lambda!169946 lambda!169828))))

(declare-fun bs!844757 () Bool)

(assert (= bs!844757 (and d!1385827 b!4507410)))

(assert (=> bs!844757 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 lt!1685576))))) (= lambda!169946 lambda!169909))))

(declare-fun bs!844758 () Bool)

(assert (= bs!844758 (and d!1385827 d!1385699)))

(assert (=> bs!844758 (= (= lt!1686377 lt!1686190) (= lambda!169946 lambda!169912))))

(declare-fun bs!844759 () Bool)

(assert (= bs!844759 (and d!1385827 d!1385635)))

(assert (=> bs!844759 (= (= lt!1686377 lt!1686119) (= lambda!169946 lambda!169889))))

(declare-fun bs!844760 () Bool)

(assert (= bs!844760 (and d!1385827 b!4507600)))

(assert (=> bs!844760 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 lt!1685584)))) (= lambda!169946 lambda!169935))))

(assert (=> bs!844755 (= (= lt!1686377 lt!1686200) (= lambda!169946 lambda!169911))))

(declare-fun bs!844761 () Bool)

(assert (= bs!844761 (and d!1385827 b!4507566)))

(assert (=> bs!844761 (= (= lt!1686377 (extractMap!1190 (t!357657 (toList!4275 lt!1685580)))) (= lambda!169946 lambda!169928))))

(assert (=> bs!844761 (= (= lt!1686377 lt!1686308) (= lambda!169946 lambda!169929))))

(assert (=> d!1385827 true))

(declare-fun bm!313842 () Bool)

(declare-fun call!313847 () Unit!92894)

(assert (=> bm!313842 (= call!313847 (lemmaContainsAllItsOwnKeys!313 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))

(declare-fun b!4507623 () Bool)

(declare-fun res!1874550 () Bool)

(declare-fun e!2808073 () Bool)

(assert (=> b!4507623 (=> (not res!1874550) (not e!2808073))))

(assert (=> b!4507623 (= res!1874550 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) lambda!169946))))

(declare-fun b!4507624 () Bool)

(assert (=> b!4507624 (= e!2808073 (invariantList!993 (toList!4276 lt!1686377)))))

(declare-fun bm!313843 () Bool)

(declare-fun call!313848 () Bool)

(declare-fun c!768800 () Bool)

(assert (=> bm!313843 (= call!313848 (forall!10203 (ite c!768800 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (_2!28780 (h!56400 (toList!4275 lm!1477)))) (ite c!768800 lambda!169943 lambda!169945)))))

(declare-fun b!4507625 () Bool)

(declare-fun e!2808072 () Bool)

(assert (=> b!4507625 (= e!2808072 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) lambda!169945))))

(assert (=> d!1385827 e!2808073))

(declare-fun res!1874552 () Bool)

(assert (=> d!1385827 (=> (not res!1874552) (not e!2808073))))

(assert (=> d!1385827 (= res!1874552 (forall!10203 (_2!28780 (h!56400 (toList!4275 lm!1477))) lambda!169946))))

(declare-fun e!2808074 () ListMap!3537)

(assert (=> d!1385827 (= lt!1686377 e!2808074)))

(assert (=> d!1385827 (= c!768800 ((_ is Nil!50570) (_2!28780 (h!56400 (toList!4275 lm!1477)))))))

(assert (=> d!1385827 (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lm!1477))))))

(assert (=> d!1385827 (= (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 lm!1477))) (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) lt!1686377)))

(assert (=> b!4507622 (= e!2808074 lt!1686387)))

(declare-fun lt!1686380 () ListMap!3537)

(assert (=> b!4507622 (= lt!1686380 (+!1489 (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (h!56399 (_2!28780 (h!56400 (toList!4275 lm!1477))))))))

(assert (=> b!4507622 (= lt!1686387 (addToMapMapFromBucket!661 (t!357656 (_2!28780 (h!56400 (toList!4275 lm!1477)))) (+!1489 (extractMap!1190 (t!357657 (toList!4275 lm!1477))) (h!56399 (_2!28780 (h!56400 (toList!4275 lm!1477)))))))))

(declare-fun lt!1686375 () Unit!92894)

(assert (=> b!4507622 (= lt!1686375 call!313847)))

(assert (=> b!4507622 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) lambda!169944)))

(declare-fun lt!1686373 () Unit!92894)

(assert (=> b!4507622 (= lt!1686373 lt!1686375)))

(assert (=> b!4507622 (forall!10203 (toList!4276 lt!1686380) lambda!169945)))

(declare-fun lt!1686390 () Unit!92894)

(declare-fun Unit!93052 () Unit!92894)

(assert (=> b!4507622 (= lt!1686390 Unit!93052)))

(declare-fun call!313849 () Bool)

(assert (=> b!4507622 call!313849))

(declare-fun lt!1686376 () Unit!92894)

(declare-fun Unit!93053 () Unit!92894)

(assert (=> b!4507622 (= lt!1686376 Unit!93053)))

(declare-fun lt!1686389 () Unit!92894)

(declare-fun Unit!93054 () Unit!92894)

(assert (=> b!4507622 (= lt!1686389 Unit!93054)))

(declare-fun lt!1686384 () Unit!92894)

(assert (=> b!4507622 (= lt!1686384 (forallContained!2454 (toList!4276 lt!1686380) lambda!169945 (h!56399 (_2!28780 (h!56400 (toList!4275 lm!1477))))))))

(assert (=> b!4507622 (contains!13257 lt!1686380 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lm!1477))))))))

(declare-fun lt!1686374 () Unit!92894)

(declare-fun Unit!93055 () Unit!92894)

(assert (=> b!4507622 (= lt!1686374 Unit!93055)))

(assert (=> b!4507622 (contains!13257 lt!1686387 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lm!1477))))))))

(declare-fun lt!1686388 () Unit!92894)

(declare-fun Unit!93056 () Unit!92894)

(assert (=> b!4507622 (= lt!1686388 Unit!93056)))

(assert (=> b!4507622 call!313848))

(declare-fun lt!1686391 () Unit!92894)

(declare-fun Unit!93057 () Unit!92894)

(assert (=> b!4507622 (= lt!1686391 Unit!93057)))

(assert (=> b!4507622 (forall!10203 (toList!4276 lt!1686380) lambda!169945)))

(declare-fun lt!1686386 () Unit!92894)

(declare-fun Unit!93058 () Unit!92894)

(assert (=> b!4507622 (= lt!1686386 Unit!93058)))

(declare-fun lt!1686372 () Unit!92894)

(declare-fun Unit!93059 () Unit!92894)

(assert (=> b!4507622 (= lt!1686372 Unit!93059)))

(declare-fun lt!1686379 () Unit!92894)

(assert (=> b!4507622 (= lt!1686379 (addForallContainsKeyThenBeforeAdding!313 (extractMap!1190 (t!357657 (toList!4275 lm!1477))) lt!1686387 (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lm!1477))))) (_2!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lm!1477)))))))))

(assert (=> b!4507622 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) lambda!169945)))

(declare-fun lt!1686385 () Unit!92894)

(assert (=> b!4507622 (= lt!1686385 lt!1686379)))

(assert (=> b!4507622 (forall!10203 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) lambda!169945)))

(declare-fun lt!1686383 () Unit!92894)

(declare-fun Unit!93060 () Unit!92894)

(assert (=> b!4507622 (= lt!1686383 Unit!93060)))

(declare-fun res!1874551 () Bool)

(assert (=> b!4507622 (= res!1874551 (forall!10203 (_2!28780 (h!56400 (toList!4275 lm!1477))) lambda!169945))))

(assert (=> b!4507622 (=> (not res!1874551) (not e!2808072))))

(assert (=> b!4507622 e!2808072))

(declare-fun lt!1686382 () Unit!92894)

(declare-fun Unit!93061 () Unit!92894)

(assert (=> b!4507622 (= lt!1686382 Unit!93061)))

(assert (=> b!4507626 (= e!2808074 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))

(declare-fun lt!1686392 () Unit!92894)

(assert (=> b!4507626 (= lt!1686392 call!313847)))

(assert (=> b!4507626 call!313848))

(declare-fun lt!1686381 () Unit!92894)

(assert (=> b!4507626 (= lt!1686381 lt!1686392)))

(assert (=> b!4507626 call!313849))

(declare-fun lt!1686378 () Unit!92894)

(declare-fun Unit!93062 () Unit!92894)

(assert (=> b!4507626 (= lt!1686378 Unit!93062)))

(declare-fun bm!313844 () Bool)

(assert (=> bm!313844 (= call!313849 (forall!10203 (ite c!768800 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (t!357656 (_2!28780 (h!56400 (toList!4275 lm!1477))))) (ite c!768800 lambda!169943 lambda!169945)))))

(assert (= (and d!1385827 c!768800) b!4507626))

(assert (= (and d!1385827 (not c!768800)) b!4507622))

(assert (= (and b!4507622 res!1874551) b!4507625))

(assert (= (or b!4507626 b!4507622) bm!313843))

(assert (= (or b!4507626 b!4507622) bm!313844))

(assert (= (or b!4507626 b!4507622) bm!313842))

(assert (= (and d!1385827 res!1874552) b!4507623))

(assert (= (and b!4507623 res!1874550) b!4507624))

(declare-fun m!5244721 () Bool)

(assert (=> b!4507624 m!5244721))

(declare-fun m!5244723 () Bool)

(assert (=> d!1385827 m!5244723))

(assert (=> d!1385827 m!5243459))

(declare-fun m!5244725 () Bool)

(assert (=> bm!313844 m!5244725))

(assert (=> bm!313842 m!5242833))

(declare-fun m!5244727 () Bool)

(assert (=> bm!313842 m!5244727))

(declare-fun m!5244729 () Bool)

(assert (=> b!4507625 m!5244729))

(declare-fun m!5244731 () Bool)

(assert (=> bm!313843 m!5244731))

(declare-fun m!5244733 () Bool)

(assert (=> b!4507623 m!5244733))

(declare-fun m!5244735 () Bool)

(assert (=> b!4507622 m!5244735))

(declare-fun m!5244737 () Bool)

(assert (=> b!4507622 m!5244737))

(declare-fun m!5244739 () Bool)

(assert (=> b!4507622 m!5244739))

(declare-fun m!5244741 () Bool)

(assert (=> b!4507622 m!5244741))

(declare-fun m!5244743 () Bool)

(assert (=> b!4507622 m!5244743))

(assert (=> b!4507622 m!5242833))

(assert (=> b!4507622 m!5244735))

(declare-fun m!5244745 () Bool)

(assert (=> b!4507622 m!5244745))

(declare-fun m!5244747 () Bool)

(assert (=> b!4507622 m!5244747))

(declare-fun m!5244749 () Bool)

(assert (=> b!4507622 m!5244749))

(assert (=> b!4507622 m!5244729))

(assert (=> b!4507622 m!5244749))

(assert (=> b!4507622 m!5242833))

(declare-fun m!5244751 () Bool)

(assert (=> b!4507622 m!5244751))

(assert (=> b!4507622 m!5244729))

(assert (=> b!4506769 d!1385827))

(assert (=> b!4506769 d!1385313))

(assert (=> d!1385377 d!1385373))

(declare-fun d!1385831 () Bool)

(assert (=> d!1385831 (containsKeyBiggerList!114 (toList!4275 lt!1685580) key!3287)))

(assert (=> d!1385831 true))

(declare-fun _$33!634 () Unit!92894)

(assert (=> d!1385831 (= (choose!29233 lt!1685580 key!3287 hashF!1107) _$33!634)))

(declare-fun bs!844762 () Bool)

(assert (= bs!844762 d!1385831))

(assert (=> bs!844762 m!5242787))

(assert (=> d!1385377 d!1385831))

(declare-fun d!1385833 () Bool)

(declare-fun res!1874553 () Bool)

(declare-fun e!2808075 () Bool)

(assert (=> d!1385833 (=> res!1874553 e!2808075)))

(assert (=> d!1385833 (= res!1874553 ((_ is Nil!50571) (toList!4275 lt!1685580)))))

(assert (=> d!1385833 (= (forall!10201 (toList!4275 lt!1685580) lambda!169770) e!2808075)))

(declare-fun b!4507627 () Bool)

(declare-fun e!2808076 () Bool)

(assert (=> b!4507627 (= e!2808075 e!2808076)))

(declare-fun res!1874554 () Bool)

(assert (=> b!4507627 (=> (not res!1874554) (not e!2808076))))

(assert (=> b!4507627 (= res!1874554 (dynLambda!21126 lambda!169770 (h!56400 (toList!4275 lt!1685580))))))

(declare-fun b!4507628 () Bool)

(assert (=> b!4507628 (= e!2808076 (forall!10201 (t!357657 (toList!4275 lt!1685580)) lambda!169770))))

(assert (= (and d!1385833 (not res!1874553)) b!4507627))

(assert (= (and b!4507627 res!1874554) b!4507628))

(declare-fun b_lambda!153425 () Bool)

(assert (=> (not b_lambda!153425) (not b!4507627)))

(declare-fun m!5244753 () Bool)

(assert (=> b!4507627 m!5244753))

(declare-fun m!5244755 () Bool)

(assert (=> b!4507628 m!5244755))

(assert (=> d!1385377 d!1385833))

(declare-fun d!1385835 () Bool)

(declare-fun c!768801 () Bool)

(assert (=> d!1385835 (= c!768801 ((_ is Nil!50571) (toList!4275 lm!1477)))))

(declare-fun e!2808077 () (InoxSet tuple2!50972))

(assert (=> d!1385835 (= (content!8283 (toList!4275 lm!1477)) e!2808077)))

(declare-fun b!4507629 () Bool)

(assert (=> b!4507629 (= e!2808077 ((as const (Array tuple2!50972 Bool)) false))))

(declare-fun b!4507630 () Bool)

(assert (=> b!4507630 (= e!2808077 ((_ map or) (store ((as const (Array tuple2!50972 Bool)) false) (h!56400 (toList!4275 lm!1477)) true) (content!8283 (t!357657 (toList!4275 lm!1477)))))))

(assert (= (and d!1385835 c!768801) b!4507629))

(assert (= (and d!1385835 (not c!768801)) b!4507630))

(declare-fun m!5244757 () Bool)

(assert (=> b!4507630 m!5244757))

(assert (=> b!4507630 m!5243237))

(assert (=> d!1385273 d!1385835))

(declare-fun d!1385837 () Bool)

(declare-fun res!1874555 () Bool)

(declare-fun e!2808078 () Bool)

(assert (=> d!1385837 (=> res!1874555 e!2808078)))

(assert (=> d!1385837 (= res!1874555 (and ((_ is Cons!50570) (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))) (= (_1!28779 (h!56399 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))))) key!3287)))))

(assert (=> d!1385837 (= (containsKey!1706 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477)))) key!3287) e!2808078)))

(declare-fun b!4507631 () Bool)

(declare-fun e!2808079 () Bool)

(assert (=> b!4507631 (= e!2808078 e!2808079)))

(declare-fun res!1874556 () Bool)

(assert (=> b!4507631 (=> (not res!1874556) (not e!2808079))))

(assert (=> b!4507631 (= res!1874556 ((_ is Cons!50570) (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))))))

(declare-fun b!4507632 () Bool)

(assert (=> b!4507632 (= e!2808079 (containsKey!1706 (t!357656 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))) key!3287))))

(assert (= (and d!1385837 (not res!1874555)) b!4507631))

(assert (= (and b!4507631 res!1874556) b!4507632))

(declare-fun m!5244759 () Bool)

(assert (=> b!4507632 m!5244759))

(assert (=> b!4506794 d!1385837))

(assert (=> d!1385385 d!1385281))

(declare-fun d!1385839 () Bool)

(declare-fun e!2808080 () Bool)

(assert (=> d!1385839 e!2808080))

(declare-fun res!1874557 () Bool)

(assert (=> d!1385839 (=> (not res!1874557) (not e!2808080))))

(declare-fun lt!1686393 () ListMap!3537)

(assert (=> d!1385839 (= res!1874557 (not (contains!13257 lt!1686393 key!3287)))))

(assert (=> d!1385839 (= lt!1686393 (ListMap!3538 (removePresrvNoDuplicatedKeys!117 (toList!4276 (extractMap!1190 (toList!4275 lt!1685580))) key!3287)))))

(assert (=> d!1385839 (= (-!360 (extractMap!1190 (toList!4275 lt!1685580)) key!3287) lt!1686393)))

(declare-fun b!4507633 () Bool)

(assert (=> b!4507633 (= e!2808080 (= ((_ map and) (content!8286 (keys!17544 (extractMap!1190 (toList!4275 lt!1685580)))) ((_ map not) (store ((as const (Array K!11975 Bool)) false) key!3287 true))) (content!8286 (keys!17544 lt!1686393))))))

(assert (= (and d!1385839 res!1874557) b!4507633))

(declare-fun m!5244761 () Bool)

(assert (=> d!1385839 m!5244761))

(declare-fun m!5244763 () Bool)

(assert (=> d!1385839 m!5244763))

(assert (=> b!4507633 m!5243325))

(assert (=> b!4507633 m!5242827))

(assert (=> b!4507633 m!5243721))

(declare-fun m!5244765 () Bool)

(assert (=> b!4507633 m!5244765))

(declare-fun m!5244767 () Bool)

(assert (=> b!4507633 m!5244767))

(assert (=> b!4507633 m!5244765))

(assert (=> b!4507633 m!5243721))

(declare-fun m!5244769 () Bool)

(assert (=> b!4507633 m!5244769))

(assert (=> d!1385385 d!1385839))

(declare-fun d!1385841 () Bool)

(assert (=> d!1385841 (= (eq!591 (extractMap!1190 (toList!4275 (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178)))) (-!360 (extractMap!1190 (toList!4275 lt!1685580)) key!3287)) (= (content!8287 (toList!4276 (extractMap!1190 (toList!4275 (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178)))))) (content!8287 (toList!4276 (-!360 (extractMap!1190 (toList!4275 lt!1685580)) key!3287)))))))

(declare-fun bs!844763 () Bool)

(assert (= bs!844763 d!1385841))

(declare-fun m!5244771 () Bool)

(assert (=> bs!844763 m!5244771))

(declare-fun m!5244773 () Bool)

(assert (=> bs!844763 m!5244773))

(assert (=> d!1385385 d!1385841))

(declare-fun d!1385843 () Bool)

(declare-fun res!1874558 () Bool)

(declare-fun e!2808081 () Bool)

(assert (=> d!1385843 (=> res!1874558 e!2808081)))

(assert (=> d!1385843 (= res!1874558 ((_ is Nil!50571) (toList!4275 lt!1685580)))))

(assert (=> d!1385843 (= (forall!10201 (toList!4275 lt!1685580) lambda!169773) e!2808081)))

(declare-fun b!4507634 () Bool)

(declare-fun e!2808082 () Bool)

(assert (=> b!4507634 (= e!2808081 e!2808082)))

(declare-fun res!1874559 () Bool)

(assert (=> b!4507634 (=> (not res!1874559) (not e!2808082))))

(assert (=> b!4507634 (= res!1874559 (dynLambda!21126 lambda!169773 (h!56400 (toList!4275 lt!1685580))))))

(declare-fun b!4507635 () Bool)

(assert (=> b!4507635 (= e!2808082 (forall!10201 (t!357657 (toList!4275 lt!1685580)) lambda!169773))))

(assert (= (and d!1385843 (not res!1874558)) b!4507634))

(assert (= (and b!4507634 res!1874559) b!4507635))

(declare-fun b_lambda!153427 () Bool)

(assert (=> (not b_lambda!153427) (not b!4507634)))

(declare-fun m!5244775 () Bool)

(assert (=> b!4507634 m!5244775))

(declare-fun m!5244777 () Bool)

(assert (=> b!4507635 m!5244777))

(assert (=> d!1385385 d!1385843))

(declare-fun d!1385845 () Bool)

(declare-fun e!2808083 () Bool)

(assert (=> d!1385845 e!2808083))

(declare-fun res!1874561 () Bool)

(assert (=> d!1385845 (=> (not res!1874561) (not e!2808083))))

(declare-fun lt!1686397 () ListLongMap!2907)

(assert (=> d!1385845 (= res!1874561 (contains!13259 lt!1686397 (_1!28780 (tuple2!50973 hash!344 newBucket!178))))))

(declare-fun lt!1686395 () List!50695)

(assert (=> d!1385845 (= lt!1686397 (ListLongMap!2908 lt!1686395))))

(declare-fun lt!1686396 () Unit!92894)

(declare-fun lt!1686394 () Unit!92894)

(assert (=> d!1385845 (= lt!1686396 lt!1686394)))

(assert (=> d!1385845 (= (getValueByKey!1044 lt!1686395 (_1!28780 (tuple2!50973 hash!344 newBucket!178))) (Some!11063 (_2!28780 (tuple2!50973 hash!344 newBucket!178))))))

(assert (=> d!1385845 (= lt!1686394 (lemmaContainsTupThenGetReturnValue!644 lt!1686395 (_1!28780 (tuple2!50973 hash!344 newBucket!178)) (_2!28780 (tuple2!50973 hash!344 newBucket!178))))))

(assert (=> d!1385845 (= lt!1686395 (insertStrictlySorted!384 (toList!4275 lt!1685580) (_1!28780 (tuple2!50973 hash!344 newBucket!178)) (_2!28780 (tuple2!50973 hash!344 newBucket!178))))))

(assert (=> d!1385845 (= (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178)) lt!1686397)))

(declare-fun b!4507636 () Bool)

(declare-fun res!1874560 () Bool)

(assert (=> b!4507636 (=> (not res!1874560) (not e!2808083))))

(assert (=> b!4507636 (= res!1874560 (= (getValueByKey!1044 (toList!4275 lt!1686397) (_1!28780 (tuple2!50973 hash!344 newBucket!178))) (Some!11063 (_2!28780 (tuple2!50973 hash!344 newBucket!178)))))))

(declare-fun b!4507637 () Bool)

(assert (=> b!4507637 (= e!2808083 (contains!13258 (toList!4275 lt!1686397) (tuple2!50973 hash!344 newBucket!178)))))

(assert (= (and d!1385845 res!1874561) b!4507636))

(assert (= (and b!4507636 res!1874560) b!4507637))

(declare-fun m!5244779 () Bool)

(assert (=> d!1385845 m!5244779))

(declare-fun m!5244781 () Bool)

(assert (=> d!1385845 m!5244781))

(declare-fun m!5244783 () Bool)

(assert (=> d!1385845 m!5244783))

(declare-fun m!5244785 () Bool)

(assert (=> d!1385845 m!5244785))

(declare-fun m!5244787 () Bool)

(assert (=> b!4507636 m!5244787))

(declare-fun m!5244789 () Bool)

(assert (=> b!4507637 m!5244789))

(assert (=> d!1385385 d!1385845))

(declare-fun d!1385847 () Bool)

(assert (=> d!1385847 (eq!591 (extractMap!1190 (toList!4275 (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178)))) (-!360 (extractMap!1190 (toList!4275 lt!1685580)) key!3287))))

(assert (=> d!1385847 true))

(declare-fun _$8!617 () Unit!92894)

(assert (=> d!1385847 (= (choose!29236 lt!1685580 hash!344 newBucket!178 key!3287 hashF!1107) _$8!617)))

(declare-fun bs!844764 () Bool)

(assert (= bs!844764 d!1385847))

(assert (=> bs!844764 m!5242827))

(assert (=> bs!844764 m!5243337))

(assert (=> bs!844764 m!5243335))

(assert (=> bs!844764 m!5243337))

(assert (=> bs!844764 m!5243339))

(assert (=> bs!844764 m!5242827))

(assert (=> bs!844764 m!5243335))

(assert (=> bs!844764 m!5243343))

(assert (=> d!1385385 d!1385847))

(declare-fun bs!844765 () Bool)

(declare-fun d!1385849 () Bool)

(assert (= bs!844765 (and d!1385849 d!1385701)))

(declare-fun lambda!169947 () Int)

(assert (=> bs!844765 (= lambda!169947 lambda!169913)))

(declare-fun bs!844766 () Bool)

(assert (= bs!844766 (and d!1385849 d!1385357)))

(assert (=> bs!844766 (= lambda!169947 lambda!169766)))

(declare-fun bs!844767 () Bool)

(assert (= bs!844767 (and d!1385849 d!1385325)))

(assert (=> bs!844767 (= lambda!169947 lambda!169765)))

(declare-fun bs!844768 () Bool)

(assert (= bs!844768 (and d!1385849 d!1385811)))

(assert (=> bs!844768 (= lambda!169947 lambda!169933)))

(declare-fun bs!844769 () Bool)

(assert (= bs!844769 (and d!1385849 start!445184)))

(assert (=> bs!844769 (= lambda!169947 lambda!169727)))

(declare-fun bs!844770 () Bool)

(assert (= bs!844770 (and d!1385849 d!1385821)))

(assert (=> bs!844770 (= lambda!169947 lambda!169942)))

(declare-fun bs!844771 () Bool)

(assert (= bs!844771 (and d!1385849 d!1385637)))

(assert (=> bs!844771 (= lambda!169947 lambda!169896)))

(declare-fun bs!844772 () Bool)

(assert (= bs!844772 (and d!1385849 d!1385427)))

(assert (=> bs!844772 (= lambda!169947 lambda!169785)))

(declare-fun bs!844773 () Bool)

(assert (= bs!844773 (and d!1385849 d!1385533)))

(assert (=> bs!844773 (= lambda!169947 lambda!169830)))

(declare-fun bs!844774 () Bool)

(assert (= bs!844774 (and d!1385849 d!1385377)))

(assert (=> bs!844774 (= lambda!169947 lambda!169770)))

(declare-fun bs!844775 () Bool)

(assert (= bs!844775 (and d!1385849 d!1385385)))

(assert (=> bs!844775 (= lambda!169947 lambda!169773)))

(declare-fun bs!844776 () Bool)

(assert (= bs!844776 (and d!1385849 d!1385395)))

(assert (=> bs!844776 (= lambda!169947 lambda!169775)))

(declare-fun bs!844777 () Bool)

(assert (= bs!844777 (and d!1385849 d!1385281)))

(assert (=> bs!844777 (= lambda!169947 lambda!169749)))

(declare-fun bs!844778 () Bool)

(assert (= bs!844778 (and d!1385849 d!1385389)))

(assert (=> bs!844778 (= lambda!169947 lambda!169774)))

(declare-fun bs!844779 () Bool)

(assert (= bs!844779 (and d!1385849 d!1385253)))

(assert (=> bs!844779 (= lambda!169947 lambda!169730)))

(declare-fun bs!844780 () Bool)

(assert (= bs!844780 (and d!1385849 d!1385401)))

(assert (=> bs!844780 (= lambda!169947 lambda!169778)))

(declare-fun bs!844781 () Bool)

(assert (= bs!844781 (and d!1385849 d!1385313)))

(assert (=> bs!844781 (= lambda!169947 lambda!169757)))

(declare-fun bs!844782 () Bool)

(assert (= bs!844782 (and d!1385849 d!1385403)))

(assert (=> bs!844782 (not (= lambda!169947 lambda!169781))))

(declare-fun lt!1686398 () ListMap!3537)

(assert (=> d!1385849 (invariantList!993 (toList!4276 lt!1686398))))

(declare-fun e!2808086 () ListMap!3537)

(assert (=> d!1385849 (= lt!1686398 e!2808086)))

(declare-fun c!768802 () Bool)

(assert (=> d!1385849 (= c!768802 ((_ is Cons!50571) (toList!4275 (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178)))))))

(assert (=> d!1385849 (forall!10201 (toList!4275 (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178))) lambda!169947)))

(assert (=> d!1385849 (= (extractMap!1190 (toList!4275 (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178)))) lt!1686398)))

(declare-fun b!4507638 () Bool)

(assert (=> b!4507638 (= e!2808086 (addToMapMapFromBucket!661 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178))))) (extractMap!1190 (t!357657 (toList!4275 (+!1488 lt!1685580 (tuple2!50973 hash!344 newBucket!178)))))))))

(declare-fun b!4507639 () Bool)

(assert (=> b!4507639 (= e!2808086 (ListMap!3538 Nil!50570))))

(assert (= (and d!1385849 c!768802) b!4507638))

(assert (= (and d!1385849 (not c!768802)) b!4507639))

(declare-fun m!5244791 () Bool)

(assert (=> d!1385849 m!5244791))

(declare-fun m!5244793 () Bool)

(assert (=> d!1385849 m!5244793))

(declare-fun m!5244795 () Bool)

(assert (=> b!4507638 m!5244795))

(assert (=> b!4507638 m!5244795))

(declare-fun m!5244797 () Bool)

(assert (=> b!4507638 m!5244797))

(assert (=> d!1385385 d!1385849))

(assert (=> b!4506693 d!1385693))

(declare-fun d!1385851 () Bool)

(assert (=> d!1385851 (containsKey!1709 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287)))

(declare-fun lt!1686399 () Unit!92894)

(assert (=> d!1385851 (= lt!1686399 (choose!29238 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(assert (=> d!1385851 (invariantList!993 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))

(assert (=> d!1385851 (= (lemmaInGetKeysListThenContainsKey!440 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) key!3287) lt!1686399)))

(declare-fun bs!844783 () Bool)

(assert (= bs!844783 d!1385851))

(assert (=> bs!844783 m!5243085))

(declare-fun m!5244799 () Bool)

(assert (=> bs!844783 m!5244799))

(assert (=> bs!844783 m!5243859))

(assert (=> b!4506693 d!1385851))

(assert (=> b!4506759 d!1385641))

(assert (=> b!4506759 d!1385643))

(assert (=> b!4506633 d!1385567))

(assert (=> b!4506633 d!1385569))

(declare-fun d!1385853 () Bool)

(declare-fun res!1874563 () Bool)

(declare-fun e!2808088 () Bool)

(assert (=> d!1385853 (=> res!1874563 e!2808088)))

(declare-fun e!2808087 () Bool)

(assert (=> d!1385853 (= res!1874563 e!2808087)))

(declare-fun res!1874564 () Bool)

(assert (=> d!1385853 (=> (not res!1874564) (not e!2808087))))

(assert (=> d!1385853 (= res!1874564 ((_ is Cons!50571) (t!357657 (toList!4275 lt!1685580))))))

(assert (=> d!1385853 (= (containsKeyBiggerList!114 (t!357657 (toList!4275 lt!1685580)) key!3287) e!2808088)))

(declare-fun b!4507640 () Bool)

(assert (=> b!4507640 (= e!2808087 (containsKey!1706 (_2!28780 (h!56400 (t!357657 (toList!4275 lt!1685580)))) key!3287))))

(declare-fun b!4507641 () Bool)

(declare-fun e!2808089 () Bool)

(assert (=> b!4507641 (= e!2808088 e!2808089)))

(declare-fun res!1874562 () Bool)

(assert (=> b!4507641 (=> (not res!1874562) (not e!2808089))))

(assert (=> b!4507641 (= res!1874562 ((_ is Cons!50571) (t!357657 (toList!4275 lt!1685580))))))

(declare-fun b!4507642 () Bool)

(assert (=> b!4507642 (= e!2808089 (containsKeyBiggerList!114 (t!357657 (t!357657 (toList!4275 lt!1685580))) key!3287))))

(assert (= (and d!1385853 res!1874564) b!4507640))

(assert (= (and d!1385853 (not res!1874563)) b!4507641))

(assert (= (and b!4507641 res!1874562) b!4507642))

(declare-fun m!5244801 () Bool)

(assert (=> b!4507640 m!5244801))

(declare-fun m!5244803 () Bool)

(assert (=> b!4507642 m!5244803))

(assert (=> b!4506799 d!1385853))

(declare-fun d!1385855 () Bool)

(declare-fun res!1874565 () Bool)

(declare-fun e!2808090 () Bool)

(assert (=> d!1385855 (=> res!1874565 e!2808090)))

(assert (=> d!1385855 (= res!1874565 (and ((_ is Cons!50570) (toList!4276 lt!1685574)) (= (_1!28779 (h!56399 (toList!4276 lt!1685574))) key!3287)))))

(assert (=> d!1385855 (= (containsKey!1709 (toList!4276 lt!1685574) key!3287) e!2808090)))

(declare-fun b!4507643 () Bool)

(declare-fun e!2808091 () Bool)

(assert (=> b!4507643 (= e!2808090 e!2808091)))

(declare-fun res!1874566 () Bool)

(assert (=> b!4507643 (=> (not res!1874566) (not e!2808091))))

(assert (=> b!4507643 (= res!1874566 ((_ is Cons!50570) (toList!4276 lt!1685574)))))

(declare-fun b!4507644 () Bool)

(assert (=> b!4507644 (= e!2808091 (containsKey!1709 (t!357656 (toList!4276 lt!1685574)) key!3287))))

(assert (= (and d!1385855 (not res!1874565)) b!4507643))

(assert (= (and b!4507643 res!1874566) b!4507644))

(declare-fun m!5244805 () Bool)

(assert (=> b!4507644 m!5244805))

(assert (=> b!4506755 d!1385855))

(declare-fun d!1385857 () Bool)

(assert (=> d!1385857 (containsKey!1709 (toList!4276 lt!1685574) key!3287)))

(declare-fun lt!1686400 () Unit!92894)

(assert (=> d!1385857 (= lt!1686400 (choose!29238 (toList!4276 lt!1685574) key!3287))))

(assert (=> d!1385857 (invariantList!993 (toList!4276 lt!1685574))))

(assert (=> d!1385857 (= (lemmaInGetKeysListThenContainsKey!440 (toList!4276 lt!1685574) key!3287) lt!1686400)))

(declare-fun bs!844784 () Bool)

(assert (= bs!844784 d!1385857))

(assert (=> bs!844784 m!5243259))

(declare-fun m!5244807 () Bool)

(assert (=> bs!844784 m!5244807))

(assert (=> bs!844784 m!5243767))

(assert (=> b!4506755 d!1385857))

(declare-fun d!1385859 () Bool)

(declare-fun lt!1686401 () Bool)

(assert (=> d!1385859 (= lt!1686401 (select (content!8283 (toList!4275 lt!1685810)) lt!1685576))))

(declare-fun e!2808092 () Bool)

(assert (=> d!1385859 (= lt!1686401 e!2808092)))

(declare-fun res!1874567 () Bool)

(assert (=> d!1385859 (=> (not res!1874567) (not e!2808092))))

(assert (=> d!1385859 (= res!1874567 ((_ is Cons!50571) (toList!4275 lt!1685810)))))

(assert (=> d!1385859 (= (contains!13258 (toList!4275 lt!1685810) lt!1685576) lt!1686401)))

(declare-fun b!4507645 () Bool)

(declare-fun e!2808093 () Bool)

(assert (=> b!4507645 (= e!2808092 e!2808093)))

(declare-fun res!1874568 () Bool)

(assert (=> b!4507645 (=> res!1874568 e!2808093)))

(assert (=> b!4507645 (= res!1874568 (= (h!56400 (toList!4275 lt!1685810)) lt!1685576))))

(declare-fun b!4507646 () Bool)

(assert (=> b!4507646 (= e!2808093 (contains!13258 (t!357657 (toList!4275 lt!1685810)) lt!1685576))))

(assert (= (and d!1385859 res!1874567) b!4507645))

(assert (= (and b!4507645 (not res!1874568)) b!4507646))

(declare-fun m!5244809 () Bool)

(assert (=> d!1385859 m!5244809))

(declare-fun m!5244811 () Bool)

(assert (=> d!1385859 m!5244811))

(declare-fun m!5244813 () Bool)

(assert (=> b!4507646 m!5244813))

(assert (=> b!4506818 d!1385859))

(assert (=> b!4506697 d!1385587))

(assert (=> b!4506697 d!1385589))

(declare-fun d!1385861 () Bool)

(declare-fun c!768803 () Bool)

(assert (=> d!1385861 (= c!768803 ((_ is Nil!50570) (toList!4276 (extractMap!1190 (toList!4275 lt!1685585)))))))

(declare-fun e!2808094 () (InoxSet tuple2!50970))

(assert (=> d!1385861 (= (content!8287 (toList!4276 (extractMap!1190 (toList!4275 lt!1685585)))) e!2808094)))

(declare-fun b!4507647 () Bool)

(assert (=> b!4507647 (= e!2808094 ((as const (Array tuple2!50970 Bool)) false))))

(declare-fun b!4507648 () Bool)

(assert (=> b!4507648 (= e!2808094 ((_ map or) (store ((as const (Array tuple2!50970 Bool)) false) (h!56399 (toList!4276 (extractMap!1190 (toList!4275 lt!1685585)))) true) (content!8287 (t!357656 (toList!4276 (extractMap!1190 (toList!4275 lt!1685585)))))))))

(assert (= (and d!1385861 c!768803) b!4507647))

(assert (= (and d!1385861 (not c!768803)) b!4507648))

(declare-fun m!5244815 () Bool)

(assert (=> b!4507648 m!5244815))

(declare-fun m!5244817 () Bool)

(assert (=> b!4507648 m!5244817))

(assert (=> d!1385393 d!1385861))

(declare-fun d!1385863 () Bool)

(declare-fun c!768804 () Bool)

(assert (=> d!1385863 (= c!768804 ((_ is Nil!50570) (toList!4276 (-!360 lt!1685586 key!3287))))))

(declare-fun e!2808095 () (InoxSet tuple2!50970))

(assert (=> d!1385863 (= (content!8287 (toList!4276 (-!360 lt!1685586 key!3287))) e!2808095)))

(declare-fun b!4507649 () Bool)

(assert (=> b!4507649 (= e!2808095 ((as const (Array tuple2!50970 Bool)) false))))

(declare-fun b!4507650 () Bool)

(assert (=> b!4507650 (= e!2808095 ((_ map or) (store ((as const (Array tuple2!50970 Bool)) false) (h!56399 (toList!4276 (-!360 lt!1685586 key!3287))) true) (content!8287 (t!357656 (toList!4276 (-!360 lt!1685586 key!3287))))))))

(assert (= (and d!1385863 c!768804) b!4507649))

(assert (= (and d!1385863 (not c!768804)) b!4507650))

(declare-fun m!5244819 () Bool)

(assert (=> b!4507650 m!5244819))

(declare-fun m!5244821 () Bool)

(assert (=> b!4507650 m!5244821))

(assert (=> d!1385393 d!1385863))

(declare-fun d!1385865 () Bool)

(assert (=> d!1385865 (= (invariantList!993 (toList!4276 lt!1685828)) (noDuplicatedKeys!250 (toList!4276 lt!1685828)))))

(declare-fun bs!844785 () Bool)

(assert (= bs!844785 d!1385865))

(declare-fun m!5244823 () Bool)

(assert (=> bs!844785 m!5244823))

(assert (=> d!1385427 d!1385865))

(declare-fun d!1385867 () Bool)

(declare-fun res!1874569 () Bool)

(declare-fun e!2808096 () Bool)

(assert (=> d!1385867 (=> res!1874569 e!2808096)))

(assert (=> d!1385867 (= res!1874569 ((_ is Nil!50571) (toList!4275 lt!1685584)))))

(assert (=> d!1385867 (= (forall!10201 (toList!4275 lt!1685584) lambda!169785) e!2808096)))

(declare-fun b!4507651 () Bool)

(declare-fun e!2808097 () Bool)

(assert (=> b!4507651 (= e!2808096 e!2808097)))

(declare-fun res!1874570 () Bool)

(assert (=> b!4507651 (=> (not res!1874570) (not e!2808097))))

(assert (=> b!4507651 (= res!1874570 (dynLambda!21126 lambda!169785 (h!56400 (toList!4275 lt!1685584))))))

(declare-fun b!4507652 () Bool)

(assert (=> b!4507652 (= e!2808097 (forall!10201 (t!357657 (toList!4275 lt!1685584)) lambda!169785))))

(assert (= (and d!1385867 (not res!1874569)) b!4507651))

(assert (= (and b!4507651 res!1874570) b!4507652))

(declare-fun b_lambda!153429 () Bool)

(assert (=> (not b_lambda!153429) (not b!4507651)))

(declare-fun m!5244825 () Bool)

(assert (=> b!4507651 m!5244825))

(declare-fun m!5244827 () Bool)

(assert (=> b!4507652 m!5244827))

(assert (=> d!1385427 d!1385867))

(declare-fun d!1385869 () Bool)

(assert (=> d!1385869 (= (invariantList!993 (toList!4276 lt!1685777)) (noDuplicatedKeys!250 (toList!4276 lt!1685777)))))

(declare-fun bs!844786 () Bool)

(assert (= bs!844786 d!1385869))

(declare-fun m!5244829 () Bool)

(assert (=> bs!844786 m!5244829))

(assert (=> d!1385357 d!1385869))

(declare-fun d!1385871 () Bool)

(declare-fun res!1874571 () Bool)

(declare-fun e!2808098 () Bool)

(assert (=> d!1385871 (=> res!1874571 e!2808098)))

(assert (=> d!1385871 (= res!1874571 ((_ is Nil!50571) (toList!4275 lm!1477)))))

(assert (=> d!1385871 (= (forall!10201 (toList!4275 lm!1477) lambda!169766) e!2808098)))

(declare-fun b!4507653 () Bool)

(declare-fun e!2808099 () Bool)

(assert (=> b!4507653 (= e!2808098 e!2808099)))

(declare-fun res!1874572 () Bool)

(assert (=> b!4507653 (=> (not res!1874572) (not e!2808099))))

(assert (=> b!4507653 (= res!1874572 (dynLambda!21126 lambda!169766 (h!56400 (toList!4275 lm!1477))))))

(declare-fun b!4507654 () Bool)

(assert (=> b!4507654 (= e!2808099 (forall!10201 (t!357657 (toList!4275 lm!1477)) lambda!169766))))

(assert (= (and d!1385871 (not res!1874571)) b!4507653))

(assert (= (and b!4507653 res!1874572) b!4507654))

(declare-fun b_lambda!153431 () Bool)

(assert (=> (not b_lambda!153431) (not b!4507653)))

(declare-fun m!5244831 () Bool)

(assert (=> b!4507653 m!5244831))

(declare-fun m!5244833 () Bool)

(assert (=> b!4507654 m!5244833))

(assert (=> d!1385357 d!1385871))

(declare-fun d!1385873 () Bool)

(declare-fun res!1874573 () Bool)

(declare-fun e!2808100 () Bool)

(assert (=> d!1385873 (=> res!1874573 e!2808100)))

(assert (=> d!1385873 (= res!1874573 (not ((_ is Cons!50570) (t!357656 newBucket!178))))))

(assert (=> d!1385873 (= (noDuplicateKeys!1134 (t!357656 newBucket!178)) e!2808100)))

(declare-fun b!4507655 () Bool)

(declare-fun e!2808101 () Bool)

(assert (=> b!4507655 (= e!2808100 e!2808101)))

(declare-fun res!1874574 () Bool)

(assert (=> b!4507655 (=> (not res!1874574) (not e!2808101))))

(assert (=> b!4507655 (= res!1874574 (not (containsKey!1706 (t!357656 (t!357656 newBucket!178)) (_1!28779 (h!56399 (t!357656 newBucket!178))))))))

(declare-fun b!4507656 () Bool)

(assert (=> b!4507656 (= e!2808101 (noDuplicateKeys!1134 (t!357656 (t!357656 newBucket!178))))))

(assert (= (and d!1385873 (not res!1874573)) b!4507655))

(assert (= (and b!4507655 res!1874574) b!4507656))

(declare-fun m!5244835 () Bool)

(assert (=> b!4507655 m!5244835))

(declare-fun m!5244837 () Bool)

(assert (=> b!4507656 m!5244837))

(assert (=> b!4506832 d!1385873))

(assert (=> b!4506712 d!1385813))

(assert (=> b!4506712 d!1385549))

(declare-fun d!1385875 () Bool)

(declare-fun res!1874579 () Bool)

(declare-fun e!2808114 () Bool)

(assert (=> d!1385875 (=> res!1874579 e!2808114)))

(assert (=> d!1385875 (= res!1874579 ((_ is Nil!50570) newBucket!178))))

(assert (=> d!1385875 (= (forall!10203 newBucket!178 lambda!169784) e!2808114)))

(declare-fun b!4507677 () Bool)

(declare-fun e!2808115 () Bool)

(assert (=> b!4507677 (= e!2808114 e!2808115)))

(declare-fun res!1874580 () Bool)

(assert (=> b!4507677 (=> (not res!1874580) (not e!2808115))))

(declare-fun dynLambda!21129 (Int tuple2!50970) Bool)

(assert (=> b!4507677 (= res!1874580 (dynLambda!21129 lambda!169784 (h!56399 newBucket!178)))))

(declare-fun b!4507678 () Bool)

(assert (=> b!4507678 (= e!2808115 (forall!10203 (t!357656 newBucket!178) lambda!169784))))

(assert (= (and d!1385875 (not res!1874579)) b!4507677))

(assert (= (and b!4507677 res!1874580) b!4507678))

(declare-fun b_lambda!153433 () Bool)

(assert (=> (not b_lambda!153433) (not b!4507677)))

(declare-fun m!5244839 () Bool)

(assert (=> b!4507677 m!5244839))

(declare-fun m!5244841 () Bool)

(assert (=> b!4507678 m!5244841))

(assert (=> d!1385411 d!1385875))

(declare-fun d!1385877 () Bool)

(declare-fun res!1874581 () Bool)

(declare-fun e!2808120 () Bool)

(assert (=> d!1385877 (=> res!1874581 e!2808120)))

(assert (=> d!1385877 (= res!1874581 (and ((_ is Cons!50570) (t!357656 lt!1685570)) (= (_1!28779 (h!56399 (t!357656 lt!1685570))) key!3287)))))

(assert (=> d!1385877 (= (containsKey!1706 (t!357656 lt!1685570) key!3287) e!2808120)))

(declare-fun b!4507687 () Bool)

(declare-fun e!2808121 () Bool)

(assert (=> b!4507687 (= e!2808120 e!2808121)))

(declare-fun res!1874582 () Bool)

(assert (=> b!4507687 (=> (not res!1874582) (not e!2808121))))

(assert (=> b!4507687 (= res!1874582 ((_ is Cons!50570) (t!357656 lt!1685570)))))

(declare-fun b!4507688 () Bool)

(assert (=> b!4507688 (= e!2808121 (containsKey!1706 (t!357656 (t!357656 lt!1685570)) key!3287))))

(assert (= (and d!1385877 (not res!1874581)) b!4507687))

(assert (= (and b!4507687 res!1874582) b!4507688))

(declare-fun m!5244843 () Bool)

(assert (=> b!4507688 m!5244843))

(assert (=> b!4506852 d!1385877))

(assert (=> b!4506777 d!1385753))

(assert (=> b!4506777 d!1385437))

(declare-fun d!1385879 () Bool)

(declare-fun res!1874583 () Bool)

(declare-fun e!2808122 () Bool)

(assert (=> d!1385879 (=> res!1874583 e!2808122)))

(assert (=> d!1385879 (= res!1874583 (not ((_ is Cons!50570) (_2!28780 (h!56400 (toList!4275 lm!1477))))))))

(assert (=> d!1385879 (= (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lm!1477)))) e!2808122)))

(declare-fun b!4507689 () Bool)

(declare-fun e!2808123 () Bool)

(assert (=> b!4507689 (= e!2808122 e!2808123)))

(declare-fun res!1874584 () Bool)

(assert (=> b!4507689 (=> (not res!1874584) (not e!2808123))))

(assert (=> b!4507689 (= res!1874584 (not (containsKey!1706 (t!357656 (_2!28780 (h!56400 (toList!4275 lm!1477)))) (_1!28779 (h!56399 (_2!28780 (h!56400 (toList!4275 lm!1477))))))))))

(declare-fun b!4507690 () Bool)

(assert (=> b!4507690 (= e!2808123 (noDuplicateKeys!1134 (t!357656 (_2!28780 (h!56400 (toList!4275 lm!1477))))))))

(assert (= (and d!1385879 (not res!1874583)) b!4507689))

(assert (= (and b!4507689 res!1874584) b!4507690))

(declare-fun m!5244845 () Bool)

(assert (=> b!4507689 m!5244845))

(declare-fun m!5244847 () Bool)

(assert (=> b!4507690 m!5244847))

(assert (=> bs!844218 d!1385879))

(declare-fun b!4507692 () Bool)

(declare-fun e!2808125 () List!50694)

(declare-fun e!2808124 () List!50694)

(assert (=> b!4507692 (= e!2808125 e!2808124)))

(declare-fun c!768818 () Bool)

(assert (=> b!4507692 (= c!768818 ((_ is Cons!50570) (t!357656 lt!1685570)))))

(declare-fun b!4507693 () Bool)

(assert (=> b!4507693 (= e!2808124 (Cons!50570 (h!56399 (t!357656 lt!1685570)) (removePairForKey!761 (t!357656 (t!357656 lt!1685570)) key!3287)))))

(declare-fun b!4507691 () Bool)

(assert (=> b!4507691 (= e!2808125 (t!357656 (t!357656 lt!1685570)))))

(declare-fun b!4507694 () Bool)

(assert (=> b!4507694 (= e!2808124 Nil!50570)))

(declare-fun d!1385881 () Bool)

(declare-fun lt!1686434 () List!50694)

(assert (=> d!1385881 (not (containsKey!1706 lt!1686434 key!3287))))

(assert (=> d!1385881 (= lt!1686434 e!2808125)))

(declare-fun c!768817 () Bool)

(assert (=> d!1385881 (= c!768817 (and ((_ is Cons!50570) (t!357656 lt!1685570)) (= (_1!28779 (h!56399 (t!357656 lt!1685570))) key!3287)))))

(assert (=> d!1385881 (noDuplicateKeys!1134 (t!357656 lt!1685570))))

(assert (=> d!1385881 (= (removePairForKey!761 (t!357656 lt!1685570) key!3287) lt!1686434)))

(assert (= (and d!1385881 c!768817) b!4507691))

(assert (= (and d!1385881 (not c!768817)) b!4507692))

(assert (= (and b!4507692 c!768818) b!4507693))

(assert (= (and b!4507692 (not c!768818)) b!4507694))

(declare-fun m!5244849 () Bool)

(assert (=> b!4507693 m!5244849))

(declare-fun m!5244851 () Bool)

(assert (=> d!1385881 m!5244851))

(assert (=> d!1385881 m!5243879))

(assert (=> b!4506568 d!1385881))

(assert (=> d!1385355 d!1385855))

(assert (=> d!1385391 d!1385717))

(assert (=> d!1385391 d!1385711))

(declare-fun d!1385883 () Bool)

(declare-fun lt!1686435 () Bool)

(assert (=> d!1385883 (= lt!1686435 (select (content!8286 e!2807539) key!3287))))

(declare-fun e!2808127 () Bool)

(assert (=> d!1385883 (= lt!1686435 e!2808127)))

(declare-fun res!1874585 () Bool)

(assert (=> d!1385883 (=> (not res!1874585) (not e!2808127))))

(assert (=> d!1385883 (= res!1874585 ((_ is Cons!50573) e!2807539))))

(assert (=> d!1385883 (= (contains!13261 e!2807539 key!3287) lt!1686435)))

(declare-fun b!4507695 () Bool)

(declare-fun e!2808126 () Bool)

(assert (=> b!4507695 (= e!2808127 e!2808126)))

(declare-fun res!1874586 () Bool)

(assert (=> b!4507695 (=> res!1874586 e!2808126)))

(assert (=> b!4507695 (= res!1874586 (= (h!56404 e!2807539) key!3287))))

(declare-fun b!4507696 () Bool)

(assert (=> b!4507696 (= e!2808126 (contains!13261 (t!357659 e!2807539) key!3287))))

(assert (= (and d!1385883 res!1874585) b!4507695))

(assert (= (and b!4507695 (not res!1874586)) b!4507696))

(declare-fun m!5244853 () Bool)

(assert (=> d!1385883 m!5244853))

(declare-fun m!5244855 () Bool)

(assert (=> d!1385883 m!5244855))

(declare-fun m!5244857 () Bool)

(assert (=> b!4507696 m!5244857))

(assert (=> bm!313752 d!1385883))

(declare-fun d!1385885 () Bool)

(declare-fun e!2808128 () Bool)

(assert (=> d!1385885 e!2808128))

(declare-fun res!1874587 () Bool)

(assert (=> d!1385885 (=> res!1874587 e!2808128)))

(declare-fun lt!1686438 () Bool)

(assert (=> d!1385885 (= res!1874587 (not lt!1686438))))

(declare-fun lt!1686436 () Bool)

(assert (=> d!1385885 (= lt!1686438 lt!1686436)))

(declare-fun lt!1686437 () Unit!92894)

(declare-fun e!2808129 () Unit!92894)

(assert (=> d!1385885 (= lt!1686437 e!2808129)))

(declare-fun c!768819 () Bool)

(assert (=> d!1385885 (= c!768819 lt!1686436)))

(assert (=> d!1385885 (= lt!1686436 (containsKey!1708 (toList!4275 lt!1685823) (_1!28780 lt!1685589)))))

(assert (=> d!1385885 (= (contains!13259 lt!1685823 (_1!28780 lt!1685589)) lt!1686438)))

(declare-fun b!4507697 () Bool)

(declare-fun lt!1686439 () Unit!92894)

(assert (=> b!4507697 (= e!2808129 lt!1686439)))

(assert (=> b!4507697 (= lt!1686439 (lemmaContainsKeyImpliesGetValueByKeyDefined!947 (toList!4275 lt!1685823) (_1!28780 lt!1685589)))))

(assert (=> b!4507697 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685823) (_1!28780 lt!1685589)))))

(declare-fun b!4507698 () Bool)

(declare-fun Unit!93074 () Unit!92894)

(assert (=> b!4507698 (= e!2808129 Unit!93074)))

(declare-fun b!4507699 () Bool)

(assert (=> b!4507699 (= e!2808128 (isDefined!8350 (getValueByKey!1044 (toList!4275 lt!1685823) (_1!28780 lt!1685589))))))

(assert (= (and d!1385885 c!768819) b!4507697))

(assert (= (and d!1385885 (not c!768819)) b!4507698))

(assert (= (and d!1385885 (not res!1874587)) b!4507699))

(declare-fun m!5244859 () Bool)

(assert (=> d!1385885 m!5244859))

(declare-fun m!5244861 () Bool)

(assert (=> b!4507697 m!5244861))

(assert (=> b!4507697 m!5243425))

(assert (=> b!4507697 m!5243425))

(declare-fun m!5244863 () Bool)

(assert (=> b!4507697 m!5244863))

(assert (=> b!4507699 m!5243425))

(assert (=> b!4507699 m!5243425))

(assert (=> b!4507699 m!5244863))

(assert (=> d!1385419 d!1385885))

(declare-fun b!4507705 () Bool)

(declare-fun e!2808130 () Option!11064)

(declare-fun e!2808131 () Option!11064)

(assert (=> b!4507705 (= e!2808130 e!2808131)))

(declare-fun c!768821 () Bool)

(assert (=> b!4507705 (= c!768821 (and ((_ is Cons!50571) lt!1685821) (not (= (_1!28780 (h!56400 lt!1685821)) (_1!28780 lt!1685589)))))))

(declare-fun b!4507703 () Bool)

(assert (=> b!4507703 (= e!2808130 (Some!11063 (_2!28780 (h!56400 lt!1685821))))))

(declare-fun d!1385887 () Bool)

(declare-fun c!768820 () Bool)

(assert (=> d!1385887 (= c!768820 (and ((_ is Cons!50571) lt!1685821) (= (_1!28780 (h!56400 lt!1685821)) (_1!28780 lt!1685589))))))

(assert (=> d!1385887 (= (getValueByKey!1044 lt!1685821 (_1!28780 lt!1685589)) e!2808130)))

(declare-fun b!4507707 () Bool)

(assert (=> b!4507707 (= e!2808131 None!11063)))

(declare-fun b!4507706 () Bool)

(assert (=> b!4507706 (= e!2808131 (getValueByKey!1044 (t!357657 lt!1685821) (_1!28780 lt!1685589)))))

(assert (= (and d!1385887 c!768820) b!4507703))

(assert (= (and d!1385887 (not c!768820)) b!4507705))

(assert (= (and b!4507705 c!768821) b!4507706))

(assert (= (and b!4507705 (not c!768821)) b!4507707))

(declare-fun m!5244865 () Bool)

(assert (=> b!4507706 m!5244865))

(assert (=> d!1385419 d!1385887))

(declare-fun d!1385889 () Bool)

(assert (=> d!1385889 (= (getValueByKey!1044 lt!1685821 (_1!28780 lt!1685589)) (Some!11063 (_2!28780 lt!1685589)))))

(declare-fun lt!1686440 () Unit!92894)

(assert (=> d!1385889 (= lt!1686440 (choose!29246 lt!1685821 (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))

(declare-fun e!2808134 () Bool)

(assert (=> d!1385889 e!2808134))

(declare-fun res!1874588 () Bool)

(assert (=> d!1385889 (=> (not res!1874588) (not e!2808134))))

(assert (=> d!1385889 (= res!1874588 (isStrictlySorted!406 lt!1685821))))

(assert (=> d!1385889 (= (lemmaContainsTupThenGetReturnValue!644 lt!1685821 (_1!28780 lt!1685589) (_2!28780 lt!1685589)) lt!1686440)))

(declare-fun b!4507708 () Bool)

(declare-fun res!1874589 () Bool)

(assert (=> b!4507708 (=> (not res!1874589) (not e!2808134))))

(assert (=> b!4507708 (= res!1874589 (containsKey!1708 lt!1685821 (_1!28780 lt!1685589)))))

(declare-fun b!4507709 () Bool)

(assert (=> b!4507709 (= e!2808134 (contains!13258 lt!1685821 (tuple2!50973 (_1!28780 lt!1685589) (_2!28780 lt!1685589))))))

(assert (= (and d!1385889 res!1874588) b!4507708))

(assert (= (and b!4507708 res!1874589) b!4507709))

(assert (=> d!1385889 m!5243419))

(declare-fun m!5244867 () Bool)

(assert (=> d!1385889 m!5244867))

(declare-fun m!5244869 () Bool)

(assert (=> d!1385889 m!5244869))

(declare-fun m!5244871 () Bool)

(assert (=> b!4507708 m!5244871))

(declare-fun m!5244873 () Bool)

(assert (=> b!4507709 m!5244873))

(assert (=> d!1385419 d!1385889))

(declare-fun e!2808139 () List!50695)

(declare-fun c!768824 () Bool)

(declare-fun b!4507718 () Bool)

(declare-fun c!768826 () Bool)

(assert (=> b!4507718 (= e!2808139 (ite c!768826 (t!357657 (toList!4275 lm!1477)) (ite c!768824 (Cons!50571 (h!56400 (toList!4275 lm!1477)) (t!357657 (toList!4275 lm!1477))) Nil!50571)))))

(declare-fun b!4507719 () Bool)

(declare-fun e!2808138 () Bool)

(declare-fun lt!1686441 () List!50695)

(assert (=> b!4507719 (= e!2808138 (contains!13258 lt!1686441 (tuple2!50973 (_1!28780 lt!1685589) (_2!28780 lt!1685589))))))

(declare-fun b!4507720 () Bool)

(declare-fun res!1874596 () Bool)

(assert (=> b!4507720 (=> (not res!1874596) (not e!2808138))))

(assert (=> b!4507720 (= res!1874596 (containsKey!1708 lt!1686441 (_1!28780 lt!1685589)))))

(declare-fun b!4507721 () Bool)

(declare-fun e!2808140 () List!50695)

(declare-fun call!313859 () List!50695)

(assert (=> b!4507721 (= e!2808140 call!313859)))

(declare-fun b!4507722 () Bool)

(declare-fun e!2808141 () List!50695)

(declare-fun call!313860 () List!50695)

(assert (=> b!4507722 (= e!2808141 call!313860)))

(declare-fun b!4507723 () Bool)

(declare-fun e!2808137 () List!50695)

(assert (=> b!4507723 (= e!2808137 e!2808140)))

(assert (=> b!4507723 (= c!768826 (and ((_ is Cons!50571) (toList!4275 lm!1477)) (= (_1!28780 (h!56400 (toList!4275 lm!1477))) (_1!28780 lt!1685589))))))

(declare-fun c!768825 () Bool)

(declare-fun bm!313853 () Bool)

(declare-fun call!313858 () List!50695)

(assert (=> bm!313853 (= call!313858 ($colon$colon!912 e!2808139 (ite c!768825 (h!56400 (toList!4275 lm!1477)) (tuple2!50973 (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))))

(declare-fun c!768827 () Bool)

(assert (=> bm!313853 (= c!768827 c!768825)))

(declare-fun b!4507725 () Bool)

(assert (=> b!4507725 (= e!2808141 call!313860)))

(declare-fun bm!313854 () Bool)

(assert (=> bm!313854 (= call!313860 call!313859)))

(declare-fun b!4507726 () Bool)

(assert (=> b!4507726 (= c!768824 (and ((_ is Cons!50571) (toList!4275 lm!1477)) (bvsgt (_1!28780 (h!56400 (toList!4275 lm!1477))) (_1!28780 lt!1685589))))))

(assert (=> b!4507726 (= e!2808140 e!2808141)))

(declare-fun b!4507728 () Bool)

(assert (=> b!4507728 (= e!2808137 call!313858)))

(declare-fun bm!313855 () Bool)

(assert (=> bm!313855 (= call!313859 call!313858)))

(declare-fun d!1385891 () Bool)

(assert (=> d!1385891 e!2808138))

(declare-fun res!1874597 () Bool)

(assert (=> d!1385891 (=> (not res!1874597) (not e!2808138))))

(assert (=> d!1385891 (= res!1874597 (isStrictlySorted!406 lt!1686441))))

(assert (=> d!1385891 (= lt!1686441 e!2808137)))

(assert (=> d!1385891 (= c!768825 (and ((_ is Cons!50571) (toList!4275 lm!1477)) (bvslt (_1!28780 (h!56400 (toList!4275 lm!1477))) (_1!28780 lt!1685589))))))

(assert (=> d!1385891 (isStrictlySorted!406 (toList!4275 lm!1477))))

(assert (=> d!1385891 (= (insertStrictlySorted!384 (toList!4275 lm!1477) (_1!28780 lt!1685589) (_2!28780 lt!1685589)) lt!1686441)))

(declare-fun b!4507724 () Bool)

(assert (=> b!4507724 (= e!2808139 (insertStrictlySorted!384 (t!357657 (toList!4275 lm!1477)) (_1!28780 lt!1685589) (_2!28780 lt!1685589)))))

(assert (= (and d!1385891 c!768825) b!4507728))

(assert (= (and d!1385891 (not c!768825)) b!4507723))

(assert (= (and b!4507723 c!768826) b!4507721))

(assert (= (and b!4507723 (not c!768826)) b!4507726))

(assert (= (and b!4507726 c!768824) b!4507722))

(assert (= (and b!4507726 (not c!768824)) b!4507725))

(assert (= (or b!4507722 b!4507725) bm!313854))

(assert (= (or b!4507721 bm!313854) bm!313855))

(assert (= (or b!4507728 bm!313855) bm!313853))

(assert (= (and bm!313853 c!768827) b!4507724))

(assert (= (and bm!313853 (not c!768827)) b!4507718))

(assert (= (and d!1385891 res!1874597) b!4507720))

(assert (= (and b!4507720 res!1874596) b!4507719))

(declare-fun m!5244875 () Bool)

(assert (=> b!4507720 m!5244875))

(declare-fun m!5244877 () Bool)

(assert (=> b!4507724 m!5244877))

(declare-fun m!5244879 () Bool)

(assert (=> bm!313853 m!5244879))

(declare-fun m!5244881 () Bool)

(assert (=> d!1385891 m!5244881))

(assert (=> d!1385891 m!5242877))

(declare-fun m!5244883 () Bool)

(assert (=> b!4507719 m!5244883))

(assert (=> d!1385419 d!1385891))

(declare-fun bs!844787 () Bool)

(declare-fun b!4507733 () Bool)

(assert (= bs!844787 (and b!4507733 b!4507080)))

(declare-fun lambda!169948 () Int)

(assert (=> bs!844787 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169948 lambda!169840))))

(declare-fun bs!844788 () Bool)

(assert (= bs!844788 (and b!4507733 b!4507513)))

(assert (=> bs!844788 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586)))) (= lambda!169948 lambda!169918))))

(declare-fun bs!844789 () Bool)

(assert (= bs!844789 (and b!4507733 b!4507083)))

(assert (=> bs!844789 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 lt!1685574))) (= lambda!169948 lambda!169839))))

(declare-fun bs!844790 () Bool)

(assert (= bs!844790 (and b!4507733 b!4507517)))

(assert (=> bs!844790 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (toList!4276 lt!1685586)) (= lambda!169948 lambda!169919))))

(declare-fun bs!844791 () Bool)

(assert (= bs!844791 (and b!4507733 b!4507404)))

(assert (=> bs!844791 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (toList!4276 lt!1685574)) (= lambda!169948 lambda!169907))))

(declare-fun bs!844792 () Bool)

(assert (= bs!844792 (and b!4507733 b!4507516)))

(assert (=> bs!844792 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 lt!1685586))) (= lambda!169948 lambda!169916))))

(declare-fun bs!844793 () Bool)

(assert (= bs!844793 (and b!4507733 b!4507111)))

(assert (=> bs!844793 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (toList!4276 lt!1685795)) (= lambda!169948 lambda!169849))))

(declare-fun bs!844794 () Bool)

(assert (= bs!844794 (and b!4507733 b!4507104)))

(assert (=> bs!844794 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (toList!4276 lt!1685586)) (= lambda!169948 lambda!169847))))

(declare-fun bs!844795 () Bool)

(assert (= bs!844795 (and b!4507733 b!4507084)))

(assert (=> bs!844795 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (toList!4276 lt!1685574)) (= lambda!169948 lambda!169841))))

(declare-fun bs!844796 () Bool)

(assert (= bs!844796 (and b!4507733 b!4507128)))

(assert (=> bs!844796 (= (= (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (= lambda!169948 lambda!169851))))

(assert (=> b!4507733 true))

(declare-fun bs!844797 () Bool)

(declare-fun b!4507730 () Bool)

(assert (= bs!844797 (and b!4507730 b!4507080)))

(declare-fun lambda!169949 () Int)

(assert (=> bs!844797 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169949 lambda!169840))))

(declare-fun bs!844798 () Bool)

(assert (= bs!844798 (and b!4507730 b!4507513)))

(assert (=> bs!844798 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586)))) (= lambda!169949 lambda!169918))))

(declare-fun bs!844799 () Bool)

(assert (= bs!844799 (and b!4507730 b!4507083)))

(assert (=> bs!844799 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (t!357656 (toList!4276 lt!1685574))) (= lambda!169949 lambda!169839))))

(declare-fun bs!844800 () Bool)

(assert (= bs!844800 (and b!4507730 b!4507404)))

(assert (=> bs!844800 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (toList!4276 lt!1685574)) (= lambda!169949 lambda!169907))))

(declare-fun bs!844801 () Bool)

(assert (= bs!844801 (and b!4507730 b!4507516)))

(assert (=> bs!844801 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (t!357656 (toList!4276 lt!1685586))) (= lambda!169949 lambda!169916))))

(declare-fun bs!844802 () Bool)

(assert (= bs!844802 (and b!4507730 b!4507111)))

(assert (=> bs!844802 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (toList!4276 lt!1685795)) (= lambda!169949 lambda!169849))))

(declare-fun bs!844803 () Bool)

(assert (= bs!844803 (and b!4507730 b!4507104)))

(assert (=> bs!844803 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (toList!4276 lt!1685586)) (= lambda!169949 lambda!169847))))

(declare-fun bs!844804 () Bool)

(assert (= bs!844804 (and b!4507730 b!4507517)))

(assert (=> bs!844804 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (toList!4276 lt!1685586)) (= lambda!169949 lambda!169919))))

(declare-fun bs!844805 () Bool)

(assert (= bs!844805 (and b!4507730 b!4507733)))

(assert (=> bs!844805 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (= lambda!169949 lambda!169948))))

(declare-fun bs!844806 () Bool)

(assert (= bs!844806 (and b!4507730 b!4507084)))

(assert (=> bs!844806 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (toList!4276 lt!1685574)) (= lambda!169949 lambda!169841))))

(declare-fun bs!844807 () Bool)

(assert (= bs!844807 (and b!4507730 b!4507128)))

(assert (=> bs!844807 (= (= (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (= lambda!169949 lambda!169851))))

(assert (=> b!4507730 true))

(declare-fun bs!844808 () Bool)

(declare-fun b!4507734 () Bool)

(assert (= bs!844808 (and b!4507734 b!4507080)))

(declare-fun lambda!169950 () Int)

(assert (=> bs!844808 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (Cons!50570 (h!56399 (toList!4276 lt!1685574)) (t!357656 (toList!4276 lt!1685574)))) (= lambda!169950 lambda!169840))))

(declare-fun bs!844809 () Bool)

(assert (= bs!844809 (and b!4507734 b!4507730)))

(assert (=> bs!844809 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (Cons!50570 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))) (= lambda!169950 lambda!169949))))

(declare-fun bs!844810 () Bool)

(assert (= bs!844810 (and b!4507734 b!4507513)))

(assert (=> bs!844810 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (Cons!50570 (h!56399 (toList!4276 lt!1685586)) (t!357656 (toList!4276 lt!1685586)))) (= lambda!169950 lambda!169918))))

(declare-fun bs!844811 () Bool)

(assert (= bs!844811 (and b!4507734 b!4507083)))

(assert (=> bs!844811 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (t!357656 (toList!4276 lt!1685574))) (= lambda!169950 lambda!169839))))

(declare-fun bs!844812 () Bool)

(assert (= bs!844812 (and b!4507734 b!4507404)))

(assert (=> bs!844812 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (toList!4276 lt!1685574)) (= lambda!169950 lambda!169907))))

(declare-fun bs!844813 () Bool)

(assert (= bs!844813 (and b!4507734 b!4507516)))

(assert (=> bs!844813 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (t!357656 (toList!4276 lt!1685586))) (= lambda!169950 lambda!169916))))

(declare-fun bs!844814 () Bool)

(assert (= bs!844814 (and b!4507734 b!4507111)))

(assert (=> bs!844814 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (toList!4276 lt!1685795)) (= lambda!169950 lambda!169849))))

(declare-fun bs!844815 () Bool)

(assert (= bs!844815 (and b!4507734 b!4507104)))

(assert (=> bs!844815 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (toList!4276 lt!1685586)) (= lambda!169950 lambda!169847))))

(declare-fun bs!844816 () Bool)

(assert (= bs!844816 (and b!4507734 b!4507517)))

(assert (=> bs!844816 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (toList!4276 lt!1685586)) (= lambda!169950 lambda!169919))))

(declare-fun bs!844817 () Bool)

(assert (= bs!844817 (and b!4507734 b!4507733)))

(assert (=> bs!844817 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (= lambda!169950 lambda!169948))))

(declare-fun bs!844818 () Bool)

(assert (= bs!844818 (and b!4507734 b!4507084)))

(assert (=> bs!844818 (= (= (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) (toList!4276 lt!1685574)) (= lambda!169950 lambda!169841))))

(declare-fun bs!844819 () Bool)

(assert (= bs!844819 (and b!4507734 b!4507128)))

(assert (=> bs!844819 (= lambda!169950 lambda!169851)))

(assert (=> b!4507734 true))

(declare-fun bs!844820 () Bool)

(declare-fun b!4507732 () Bool)

(assert (= bs!844820 (and b!4507732 b!4507405)))

(declare-fun lambda!169951 () Int)

(assert (=> bs!844820 (= lambda!169951 lambda!169908)))

(declare-fun bs!844821 () Bool)

(assert (= bs!844821 (and b!4507732 b!4507129)))

(assert (=> bs!844821 (= lambda!169951 lambda!169852)))

(declare-fun bs!844822 () Bool)

(assert (= bs!844822 (and b!4507732 b!4507515)))

(assert (=> bs!844822 (= lambda!169951 lambda!169921)))

(declare-fun bs!844823 () Bool)

(assert (= bs!844823 (and b!4507732 b!4507082)))

(assert (=> bs!844823 (= lambda!169951 lambda!169842)))

(declare-fun bs!844824 () Bool)

(assert (= bs!844824 (and b!4507732 b!4507112)))

(assert (=> bs!844824 (= lambda!169951 lambda!169850)))

(declare-fun bs!844825 () Bool)

(assert (= bs!844825 (and b!4507732 b!4507105)))

(assert (=> bs!844825 (= lambda!169951 lambda!169848)))

(declare-fun e!2808146 () List!50697)

(assert (=> b!4507730 (= e!2808146 (Cons!50573 (_1!28779 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (getKeysList!441 (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))))

(declare-fun c!768832 () Bool)

(assert (=> b!4507730 (= c!768832 (containsKey!1709 (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) (_1!28779 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))))

(declare-fun lt!1686450 () Unit!92894)

(declare-fun e!2808147 () Unit!92894)

(assert (=> b!4507730 (= lt!1686450 e!2808147)))

(declare-fun c!768831 () Bool)

(assert (=> b!4507730 (= c!768831 (contains!13261 (getKeysList!441 (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) (_1!28779 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))))

(declare-fun lt!1686452 () Unit!92894)

(declare-fun e!2808145 () Unit!92894)

(assert (=> b!4507730 (= lt!1686452 e!2808145)))

(declare-fun lt!1686451 () List!50697)

(assert (=> b!4507730 (= lt!1686451 (getKeysList!441 (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))))

(declare-fun lt!1686447 () Unit!92894)

(assert (=> b!4507730 (= lt!1686447 (lemmaForallContainsAddHeadPreserves!156 (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) lt!1686451 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))))

(assert (=> b!4507730 (forall!10205 lt!1686451 lambda!169949)))

(declare-fun lt!1686446 () Unit!92894)

(assert (=> b!4507730 (= lt!1686446 lt!1686447)))

(declare-fun b!4507731 () Bool)

(assert (=> b!4507731 (= e!2808146 Nil!50573)))

(declare-fun lt!1686448 () List!50697)

(declare-fun e!2808144 () Bool)

(assert (=> b!4507732 (= e!2808144 (= (content!8286 lt!1686448) (content!8286 (map!11114 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))) lambda!169951))))))

(assert (=> b!4507733 false))

(declare-fun lt!1686449 () Unit!92894)

(assert (=> b!4507733 (= lt!1686449 (forallContained!2455 (getKeysList!441 (t!357656 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))) lambda!169948 (_1!28779 (h!56399 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))))

(declare-fun Unit!93085 () Unit!92894)

(assert (=> b!4507733 (= e!2808145 Unit!93085)))

(declare-fun res!1874600 () Bool)

(assert (=> b!4507734 (=> (not res!1874600) (not e!2808144))))

(assert (=> b!4507734 (= res!1874600 (forall!10205 lt!1686448 lambda!169950))))

(declare-fun d!1385893 () Bool)

(assert (=> d!1385893 e!2808144))

(declare-fun res!1874599 () Bool)

(assert (=> d!1385893 (=> (not res!1874599) (not e!2808144))))

(assert (=> d!1385893 (= res!1874599 (noDuplicate!736 lt!1686448))))

(assert (=> d!1385893 (= lt!1686448 e!2808146)))

(declare-fun c!768830 () Bool)

(assert (=> d!1385893 (= c!768830 ((_ is Cons!50570) (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))))))

(assert (=> d!1385893 (invariantList!993 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))

(assert (=> d!1385893 (= (getKeysList!441 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477))))) lt!1686448)))

(declare-fun b!4507735 () Bool)

(declare-fun Unit!93086 () Unit!92894)

(assert (=> b!4507735 (= e!2808145 Unit!93086)))

(declare-fun b!4507736 () Bool)

(declare-fun Unit!93087 () Unit!92894)

(assert (=> b!4507736 (= e!2808147 Unit!93087)))

(declare-fun b!4507737 () Bool)

(assert (=> b!4507737 false))

(declare-fun Unit!93088 () Unit!92894)

(assert (=> b!4507737 (= e!2808147 Unit!93088)))

(declare-fun b!4507738 () Bool)

(declare-fun res!1874598 () Bool)

(assert (=> b!4507738 (=> (not res!1874598) (not e!2808144))))

(assert (=> b!4507738 (= res!1874598 (= (length!328 lt!1686448) (length!329 (toList!4276 (extractMap!1190 (t!357657 (toList!4275 lm!1477)))))))))

(assert (= (and d!1385893 c!768830) b!4507730))

(assert (= (and d!1385893 (not c!768830)) b!4507731))

(assert (= (and b!4507730 c!768832) b!4507737))

(assert (= (and b!4507730 (not c!768832)) b!4507736))

(assert (= (and b!4507730 c!768831) b!4507733))

(assert (= (and b!4507730 (not c!768831)) b!4507735))

(assert (= (and d!1385893 res!1874599) b!4507738))

(assert (= (and b!4507738 res!1874598) b!4507734))

(assert (= (and b!4507734 res!1874600) b!4507732))

(declare-fun m!5244885 () Bool)

(assert (=> b!4507733 m!5244885))

(assert (=> b!4507733 m!5244885))

(declare-fun m!5244887 () Bool)

(assert (=> b!4507733 m!5244887))

(assert (=> b!4507730 m!5244885))

(declare-fun m!5244889 () Bool)

(assert (=> b!4507730 m!5244889))

(assert (=> b!4507730 m!5244885))

(declare-fun m!5244891 () Bool)

(assert (=> b!4507730 m!5244891))

(declare-fun m!5244893 () Bool)

(assert (=> b!4507730 m!5244893))

(declare-fun m!5244895 () Bool)

(assert (=> b!4507730 m!5244895))

(declare-fun m!5244897 () Bool)

(assert (=> b!4507732 m!5244897))

(declare-fun m!5244899 () Bool)

(assert (=> b!4507732 m!5244899))

(assert (=> b!4507732 m!5244899))

(declare-fun m!5244901 () Bool)

(assert (=> b!4507732 m!5244901))

(declare-fun m!5244903 () Bool)

(assert (=> b!4507734 m!5244903))

(declare-fun m!5244905 () Bool)

(assert (=> b!4507738 m!5244905))

(assert (=> b!4507738 m!5243827))

(declare-fun m!5244907 () Bool)

(assert (=> d!1385893 m!5244907))

(assert (=> d!1385893 m!5243859))

(assert (=> b!4506690 d!1385893))

(declare-fun d!1385895 () Bool)

(declare-fun res!1874602 () Bool)

(declare-fun e!2808149 () Bool)

(assert (=> d!1385895 (=> res!1874602 e!2808149)))

(declare-fun e!2808148 () Bool)

(assert (=> d!1385895 (= res!1874602 e!2808148)))

(declare-fun res!1874603 () Bool)

(assert (=> d!1385895 (=> (not res!1874603) (not e!2808148))))

(assert (=> d!1385895 (= res!1874603 ((_ is Cons!50571) (t!357657 (t!357657 (toList!4275 lm!1477)))))))

(assert (=> d!1385895 (= (containsKeyBiggerList!114 (t!357657 (t!357657 (toList!4275 lm!1477))) key!3287) e!2808149)))

(declare-fun b!4507739 () Bool)

(assert (=> b!4507739 (= e!2808148 (containsKey!1706 (_2!28780 (h!56400 (t!357657 (t!357657 (toList!4275 lm!1477))))) key!3287))))

(declare-fun b!4507740 () Bool)

(declare-fun e!2808150 () Bool)

(assert (=> b!4507740 (= e!2808149 e!2808150)))

(declare-fun res!1874601 () Bool)

(assert (=> b!4507740 (=> (not res!1874601) (not e!2808150))))

(assert (=> b!4507740 (= res!1874601 ((_ is Cons!50571) (t!357657 (t!357657 (toList!4275 lm!1477)))))))

(declare-fun b!4507741 () Bool)

(assert (=> b!4507741 (= e!2808150 (containsKeyBiggerList!114 (t!357657 (t!357657 (t!357657 (toList!4275 lm!1477)))) key!3287))))

(assert (= (and d!1385895 res!1874603) b!4507739))

(assert (= (and d!1385895 (not res!1874602)) b!4507740))

(assert (= (and b!4507740 res!1874601) b!4507741))

(declare-fun m!5244909 () Bool)

(assert (=> b!4507739 m!5244909))

(declare-fun m!5244911 () Bool)

(assert (=> b!4507741 m!5244911))

(assert (=> b!4506796 d!1385895))

(declare-fun d!1385897 () Bool)

(declare-fun res!1874604 () Bool)

(declare-fun e!2808151 () Bool)

(assert (=> d!1385897 (=> res!1874604 e!2808151)))

(assert (=> d!1385897 (= res!1874604 (and ((_ is Cons!50570) (t!357656 (_2!28780 lt!1685576))) (= (_1!28779 (h!56399 (t!357656 (_2!28780 lt!1685576)))) (_1!28779 (h!56399 (_2!28780 lt!1685576))))))))

(assert (=> d!1385897 (= (containsKey!1706 (t!357656 (_2!28780 lt!1685576)) (_1!28779 (h!56399 (_2!28780 lt!1685576)))) e!2808151)))

(declare-fun b!4507742 () Bool)

(declare-fun e!2808152 () Bool)

(assert (=> b!4507742 (= e!2808151 e!2808152)))

(declare-fun res!1874605 () Bool)

(assert (=> b!4507742 (=> (not res!1874605) (not e!2808152))))

(assert (=> b!4507742 (= res!1874605 ((_ is Cons!50570) (t!357656 (_2!28780 lt!1685576))))))

(declare-fun b!4507743 () Bool)

(assert (=> b!4507743 (= e!2808152 (containsKey!1706 (t!357656 (t!357656 (_2!28780 lt!1685576))) (_1!28779 (h!56399 (_2!28780 lt!1685576)))))))

(assert (= (and d!1385897 (not res!1874604)) b!4507742))

(assert (= (and b!4507742 res!1874605) b!4507743))

(declare-fun m!5244913 () Bool)

(assert (=> b!4507743 m!5244913))

(assert (=> b!4506853 d!1385897))

(assert (=> b!4506756 d!1385697))

(declare-fun b!4507745 () Bool)

(declare-fun e!2808153 () Option!11064)

(declare-fun e!2808154 () Option!11064)

(assert (=> b!4507745 (= e!2808153 e!2808154)))

(declare-fun c!768834 () Bool)

(assert (=> b!4507745 (= c!768834 (and ((_ is Cons!50571) (toList!4275 lt!1685823)) (not (= (_1!28780 (h!56400 (toList!4275 lt!1685823))) (_1!28780 lt!1685589)))))))

(declare-fun b!4507744 () Bool)

(assert (=> b!4507744 (= e!2808153 (Some!11063 (_2!28780 (h!56400 (toList!4275 lt!1685823)))))))

(declare-fun d!1385899 () Bool)

(declare-fun c!768833 () Bool)

(assert (=> d!1385899 (= c!768833 (and ((_ is Cons!50571) (toList!4275 lt!1685823)) (= (_1!28780 (h!56400 (toList!4275 lt!1685823))) (_1!28780 lt!1685589))))))

(assert (=> d!1385899 (= (getValueByKey!1044 (toList!4275 lt!1685823) (_1!28780 lt!1685589)) e!2808153)))

(declare-fun b!4507747 () Bool)

(assert (=> b!4507747 (= e!2808154 None!11063)))

(declare-fun b!4507746 () Bool)

(assert (=> b!4507746 (= e!2808154 (getValueByKey!1044 (t!357657 (toList!4275 lt!1685823)) (_1!28780 lt!1685589)))))

(assert (= (and d!1385899 c!768833) b!4507744))

(assert (= (and d!1385899 (not c!768833)) b!4507745))

(assert (= (and b!4507745 c!768834) b!4507746))

(assert (= (and b!4507745 (not c!768834)) b!4507747))

(declare-fun m!5244915 () Bool)

(assert (=> b!4507746 m!5244915))

(assert (=> b!4506843 d!1385899))

(declare-fun d!1385901 () Bool)

(declare-fun lt!1686453 () Bool)

(assert (=> d!1385901 (= lt!1686453 (select (content!8286 e!2807495) key!3287))))

(declare-fun e!2808156 () Bool)

(assert (=> d!1385901 (= lt!1686453 e!2808156)))

(declare-fun res!1874606 () Bool)

(assert (=> d!1385901 (=> (not res!1874606) (not e!2808156))))

(assert (=> d!1385901 (= res!1874606 ((_ is Cons!50573) e!2807495))))

(assert (=> d!1385901 (= (contains!13261 e!2807495 key!3287) lt!1686453)))

(declare-fun b!4507748 () Bool)

(declare-fun e!2808155 () Bool)

(assert (=> b!4507748 (= e!2808156 e!2808155)))

(declare-fun res!1874607 () Bool)

(assert (=> b!4507748 (=> res!1874607 e!2808155)))

(assert (=> b!4507748 (= res!1874607 (= (h!56404 e!2807495) key!3287))))

(declare-fun b!4507749 () Bool)

(assert (=> b!4507749 (= e!2808155 (contains!13261 (t!357659 e!2807495) key!3287))))

(assert (= (and d!1385901 res!1874606) b!4507748))

(assert (= (and b!4507748 (not res!1874607)) b!4507749))

(declare-fun m!5244917 () Bool)

(assert (=> d!1385901 m!5244917))

(declare-fun m!5244919 () Bool)

(assert (=> d!1385901 m!5244919))

(declare-fun m!5244921 () Bool)

(assert (=> b!4507749 m!5244921))

(assert (=> bm!313749 d!1385901))

(declare-fun d!1385903 () Bool)

(declare-fun lt!1686454 () Bool)

(assert (=> d!1385903 (= lt!1686454 (select (content!8283 (t!357657 (t!357657 (toList!4275 lm!1477)))) lt!1685588))))

(declare-fun e!2808157 () Bool)

(assert (=> d!1385903 (= lt!1686454 e!2808157)))

(declare-fun res!1874608 () Bool)

(assert (=> d!1385903 (=> (not res!1874608) (not e!2808157))))

(assert (=> d!1385903 (= res!1874608 ((_ is Cons!50571) (t!357657 (t!357657 (toList!4275 lm!1477)))))))

(assert (=> d!1385903 (= (contains!13258 (t!357657 (t!357657 (toList!4275 lm!1477))) lt!1685588) lt!1686454)))

(declare-fun b!4507750 () Bool)

(declare-fun e!2808158 () Bool)

(assert (=> b!4507750 (= e!2808157 e!2808158)))

(declare-fun res!1874609 () Bool)

(assert (=> b!4507750 (=> res!1874609 e!2808158)))

(assert (=> b!4507750 (= res!1874609 (= (h!56400 (t!357657 (t!357657 (toList!4275 lm!1477)))) lt!1685588))))

(declare-fun b!4507751 () Bool)

(assert (=> b!4507751 (= e!2808158 (contains!13258 (t!357657 (t!357657 (t!357657 (toList!4275 lm!1477)))) lt!1685588))))

(assert (= (and d!1385903 res!1874608) b!4507750))

(assert (= (and b!4507750 (not res!1874609)) b!4507751))

(assert (=> d!1385903 m!5243809))

(declare-fun m!5244923 () Bool)

(assert (=> d!1385903 m!5244923))

(declare-fun m!5244925 () Bool)

(assert (=> b!4507751 m!5244925))

(assert (=> b!4506751 d!1385903))

(declare-fun b!4507752 () Bool)

(declare-fun e!2808162 () List!50697)

(assert (=> b!4507752 (= e!2808162 (getKeysList!441 (toList!4276 (extractMap!1190 (toList!4275 lm!1477)))))))

(declare-fun b!4507753 () Bool)

(declare-fun e!2808160 () Bool)

(assert (=> b!4507753 (= e!2808160 (not (contains!13261 (keys!17544 (extractMap!1190 (toList!4275 lm!1477))) key!3287)))))

(declare-fun b!4507754 () Bool)

(declare-fun e!2808163 () Unit!92894)

(declare-fun Unit!93099 () Unit!92894)

(assert (=> b!4507754 (= e!2808163 Unit!93099)))

(declare-fun b!4507755 () Bool)

(assert (=> b!4507755 false))

(declare-fun lt!1686460 () Unit!92894)

(declare-fun lt!1686459 () Unit!92894)

(assert (=> b!4507755 (= lt!1686460 lt!1686459)))

(assert (=> b!4507755 (containsKey!1709 (toList!4276 (extractMap!1190 (toList!4275 lm!1477))) key!3287)))

(assert (=> b!4507755 (= lt!1686459 (lemmaInGetKeysListThenContainsKey!440 (toList!4276 (extractMap!1190 (toList!4275 lm!1477))) key!3287))))

(declare-fun Unit!93101 () Unit!92894)

(assert (=> b!4507755 (= e!2808163 Unit!93101)))

(declare-fun b!4507756 () Bool)

(assert (=> b!4507756 (= e!2808162 (keys!17544 (extractMap!1190 (toList!4275 lm!1477))))))

(declare-fun b!4507757 () Bool)

(declare-fun e!2808159 () Unit!92894)

(assert (=> b!4507757 (= e!2808159 e!2808163)))

(declare-fun c!768835 () Bool)

(declare-fun call!313865 () Bool)

(assert (=> b!4507757 (= c!768835 call!313865)))

(declare-fun d!1385905 () Bool)

(declare-fun e!2808161 () Bool)

(assert (=> d!1385905 e!2808161))

(declare-fun res!1874612 () Bool)

(assert (=> d!1385905 (=> res!1874612 e!2808161)))

(assert (=> d!1385905 (= res!1874612 e!2808160)))

(declare-fun res!1874611 () Bool)

(assert (=> d!1385905 (=> (not res!1874611) (not e!2808160))))

(declare-fun lt!1686461 () Bool)

(assert (=> d!1385905 (= res!1874611 (not lt!1686461))))

(declare-fun lt!1686455 () Bool)

(assert (=> d!1385905 (= lt!1686461 lt!1686455)))

(declare-fun lt!1686462 () Unit!92894)

(assert (=> d!1385905 (= lt!1686462 e!2808159)))

(declare-fun c!768836 () Bool)

(assert (=> d!1385905 (= c!768836 lt!1686455)))

(assert (=> d!1385905 (= lt!1686455 (containsKey!1709 (toList!4276 (extractMap!1190 (toList!4275 lm!1477))) key!3287))))

(assert (=> d!1385905 (= (contains!13257 (extractMap!1190 (toList!4275 lm!1477)) key!3287) lt!1686461)))

(declare-fun b!4507758 () Bool)

(declare-fun e!2808164 () Bool)

(assert (=> b!4507758 (= e!2808164 (contains!13261 (keys!17544 (extractMap!1190 (toList!4275 lm!1477))) key!3287))))

(declare-fun b!4507759 () Bool)

(assert (=> b!4507759 (= e!2808161 e!2808164)))

(declare-fun res!1874610 () Bool)

(assert (=> b!4507759 (=> (not res!1874610) (not e!2808164))))

(assert (=> b!4507759 (= res!1874610 (isDefined!8351 (getValueByKey!1045 (toList!4276 (extractMap!1190 (toList!4275 lm!1477))) key!3287)))))

(declare-fun bm!313860 () Bool)

(assert (=> bm!313860 (= call!313865 (contains!13261 e!2808162 key!3287))))

(declare-fun c!768837 () Bool)

(assert (=> bm!313860 (= c!768837 c!768836)))

(declare-fun b!4507760 () Bool)

(declare-fun lt!1686458 () Unit!92894)

(assert (=> b!4507760 (= e!2808159 lt!1686458)))

(declare-fun lt!1686457 () Unit!92894)

(assert (=> b!4507760 (= lt!1686457 (lemmaContainsKeyImpliesGetValueByKeyDefined!948 (toList!4276 (extractMap!1190 (toList!4275 lm!1477))) key!3287))))

(assert (=> b!4507760 (isDefined!8351 (getValueByKey!1045 (toList!4276 (extractMap!1190 (toList!4275 lm!1477))) key!3287))))

(declare-fun lt!1686456 () Unit!92894)

(assert (=> b!4507760 (= lt!1686456 lt!1686457)))

(assert (=> b!4507760 (= lt!1686458 (lemmaInListThenGetKeysListContains!437 (toList!4276 (extractMap!1190 (toList!4275 lm!1477))) key!3287))))

(assert (=> b!4507760 call!313865))

(assert (= (and d!1385905 c!768836) b!4507760))

(assert (= (and d!1385905 (not c!768836)) b!4507757))

(assert (= (and b!4507757 c!768835) b!4507755))

(assert (= (and b!4507757 (not c!768835)) b!4507754))

(assert (= (or b!4507760 b!4507757) bm!313860))

(assert (= (and bm!313860 c!768837) b!4507752))

(assert (= (and bm!313860 (not c!768837)) b!4507756))

(assert (= (and d!1385905 res!1874611) b!4507753))

(assert (= (and d!1385905 (not res!1874612)) b!4507759))

(assert (= (and b!4507759 res!1874610) b!4507758))

(declare-fun m!5244927 () Bool)

(assert (=> b!4507752 m!5244927))

(declare-fun m!5244929 () Bool)

(assert (=> b!4507759 m!5244929))

(assert (=> b!4507759 m!5244929))

(declare-fun m!5244931 () Bool)

(assert (=> b!4507759 m!5244931))

(assert (=> b!4507753 m!5242845))

(declare-fun m!5244933 () Bool)

(assert (=> b!4507753 m!5244933))

(assert (=> b!4507753 m!5244933))

(declare-fun m!5244935 () Bool)

(assert (=> b!4507753 m!5244935))

(declare-fun m!5244937 () Bool)

(assert (=> bm!313860 m!5244937))

(declare-fun m!5244939 () Bool)

(assert (=> b!4507760 m!5244939))

(assert (=> b!4507760 m!5244929))

(assert (=> b!4507760 m!5244929))

(assert (=> b!4507760 m!5244931))

(declare-fun m!5244941 () Bool)

(assert (=> b!4507760 m!5244941))

(declare-fun m!5244943 () Bool)

(assert (=> d!1385905 m!5244943))

(assert (=> b!4507755 m!5244943))

(declare-fun m!5244945 () Bool)

(assert (=> b!4507755 m!5244945))

(assert (=> b!4507756 m!5242845))

(assert (=> b!4507756 m!5244933))

(assert (=> b!4507758 m!5242845))

(assert (=> b!4507758 m!5244933))

(assert (=> b!4507758 m!5244933))

(assert (=> b!4507758 m!5244935))

(assert (=> d!1385401 d!1385905))

(assert (=> d!1385401 d!1385357))

(declare-fun d!1385907 () Bool)

(assert (=> d!1385907 (not (contains!13257 (extractMap!1190 (toList!4275 lm!1477)) key!3287))))

(assert (=> d!1385907 true))

(declare-fun _$26!341 () Unit!92894)

(assert (=> d!1385907 (= (choose!29237 lm!1477 key!3287 hashF!1107) _$26!341)))

(declare-fun bs!844853 () Bool)

(assert (= bs!844853 d!1385907))

(assert (=> bs!844853 m!5242845))

(assert (=> bs!844853 m!5242845))

(assert (=> bs!844853 m!5243395))

(assert (=> d!1385401 d!1385907))

(declare-fun d!1385911 () Bool)

(declare-fun res!1874619 () Bool)

(declare-fun e!2808177 () Bool)

(assert (=> d!1385911 (=> res!1874619 e!2808177)))

(assert (=> d!1385911 (= res!1874619 ((_ is Nil!50571) (toList!4275 lm!1477)))))

(assert (=> d!1385911 (= (forall!10201 (toList!4275 lm!1477) lambda!169778) e!2808177)))

(declare-fun b!4507785 () Bool)

(declare-fun e!2808178 () Bool)

(assert (=> b!4507785 (= e!2808177 e!2808178)))

(declare-fun res!1874620 () Bool)

(assert (=> b!4507785 (=> (not res!1874620) (not e!2808178))))

(assert (=> b!4507785 (= res!1874620 (dynLambda!21126 lambda!169778 (h!56400 (toList!4275 lm!1477))))))

(declare-fun b!4507786 () Bool)

(assert (=> b!4507786 (= e!2808178 (forall!10201 (t!357657 (toList!4275 lm!1477)) lambda!169778))))

(assert (= (and d!1385911 (not res!1874619)) b!4507785))

(assert (= (and b!4507785 res!1874620) b!4507786))

(declare-fun b_lambda!153435 () Bool)

(assert (=> (not b_lambda!153435) (not b!4507785)))

(declare-fun m!5244993 () Bool)

(assert (=> b!4507785 m!5244993))

(declare-fun m!5244995 () Bool)

(assert (=> b!4507786 m!5244995))

(assert (=> d!1385401 d!1385911))

(declare-fun d!1385913 () Bool)

(declare-fun res!1874621 () Bool)

(declare-fun e!2808179 () Bool)

(assert (=> d!1385913 (=> res!1874621 e!2808179)))

(assert (=> d!1385913 (= res!1874621 (and ((_ is Cons!50571) (toList!4275 lm!1477)) (= (_1!28780 (h!56400 (toList!4275 lm!1477))) lt!1685583)))))

(assert (=> d!1385913 (= (containsKey!1708 (toList!4275 lm!1477) lt!1685583) e!2808179)))

(declare-fun b!4507787 () Bool)

(declare-fun e!2808180 () Bool)

(assert (=> b!4507787 (= e!2808179 e!2808180)))

(declare-fun res!1874622 () Bool)

(assert (=> b!4507787 (=> (not res!1874622) (not e!2808180))))

(assert (=> b!4507787 (= res!1874622 (and (or (not ((_ is Cons!50571) (toList!4275 lm!1477))) (bvsle (_1!28780 (h!56400 (toList!4275 lm!1477))) lt!1685583)) ((_ is Cons!50571) (toList!4275 lm!1477)) (bvslt (_1!28780 (h!56400 (toList!4275 lm!1477))) lt!1685583)))))

(declare-fun b!4507788 () Bool)

(assert (=> b!4507788 (= e!2808180 (containsKey!1708 (t!357657 (toList!4275 lm!1477)) lt!1685583))))

(assert (= (and d!1385913 (not res!1874621)) b!4507787))

(assert (= (and b!4507787 res!1874622) b!4507788))

(declare-fun m!5244997 () Bool)

(assert (=> b!4507788 m!5244997))

(assert (=> d!1385275 d!1385913))

(assert (=> b!4506694 d!1385563))

(declare-fun d!1385915 () Bool)

(declare-fun choose!29249 (Hashable!5529 K!11975) (_ BitVec 64))

(assert (=> d!1385915 (= (hash!2725 hashF!1107 key!3287) (choose!29249 hashF!1107 key!3287))))

(declare-fun bs!844863 () Bool)

(assert (= bs!844863 d!1385915))

(declare-fun m!5244999 () Bool)

(assert (=> bs!844863 m!5244999))

(assert (=> d!1385413 d!1385915))

(declare-fun e!2808181 () Bool)

(declare-fun b!4507789 () Bool)

(declare-fun tp!1337680 () Bool)

(assert (=> b!4507789 (= e!2808181 (and tp_is_empty!27813 tp_is_empty!27815 tp!1337680))))

(assert (=> b!4506861 (= tp!1337675 e!2808181)))

(assert (= (and b!4506861 ((_ is Cons!50570) (_2!28780 (h!56400 (toList!4275 lm!1477))))) b!4507789))

(declare-fun b!4507790 () Bool)

(declare-fun e!2808182 () Bool)

(declare-fun tp!1337681 () Bool)

(declare-fun tp!1337682 () Bool)

(assert (=> b!4507790 (= e!2808182 (and tp!1337681 tp!1337682))))

(assert (=> b!4506861 (= tp!1337676 e!2808182)))

(assert (= (and b!4506861 ((_ is Cons!50571) (t!357657 (toList!4275 lm!1477)))) b!4507790))

(declare-fun b!4507791 () Bool)

(declare-fun e!2808183 () Bool)

(declare-fun tp!1337683 () Bool)

(assert (=> b!4507791 (= e!2808183 (and tp_is_empty!27813 tp_is_empty!27815 tp!1337683))))

(assert (=> b!4506866 (= tp!1337679 e!2808183)))

(assert (= (and b!4506866 ((_ is Cons!50570) (t!357656 (t!357656 newBucket!178)))) b!4507791))

(declare-fun b_lambda!153437 () Bool)

(assert (= b_lambda!153425 (or d!1385377 b_lambda!153437)))

(declare-fun bs!844870 () Bool)

(declare-fun d!1385917 () Bool)

(assert (= bs!844870 (and d!1385917 d!1385377)))

(assert (=> bs!844870 (= (dynLambda!21126 lambda!169770 (h!56400 (toList!4275 lt!1685580))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lt!1685580)))))))

(assert (=> bs!844870 m!5244565))

(assert (=> b!4507627 d!1385917))

(declare-fun b_lambda!153439 () Bool)

(assert (= b_lambda!153431 (or d!1385357 b_lambda!153439)))

(declare-fun bs!844871 () Bool)

(declare-fun d!1385919 () Bool)

(assert (= bs!844871 (and d!1385919 d!1385357)))

(assert (=> bs!844871 (= (dynLambda!21126 lambda!169766 (h!56400 (toList!4275 lm!1477))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lm!1477)))))))

(assert (=> bs!844871 m!5243459))

(assert (=> b!4507653 d!1385919))

(declare-fun b_lambda!153441 () Bool)

(assert (= b_lambda!153417 (or d!1385253 b_lambda!153441)))

(declare-fun bs!844872 () Bool)

(declare-fun d!1385921 () Bool)

(assert (= bs!844872 (and d!1385921 d!1385253)))

(assert (=> bs!844872 (= (dynLambda!21126 lambda!169730 (h!56400 (toList!4275 lm!1477))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lm!1477)))))))

(assert (=> bs!844872 m!5243459))

(assert (=> b!4507556 d!1385921))

(declare-fun b_lambda!153443 () Bool)

(assert (= b_lambda!153401 (or d!1385313 b_lambda!153443)))

(declare-fun bs!844873 () Bool)

(declare-fun d!1385923 () Bool)

(assert (= bs!844873 (and d!1385923 d!1385313)))

(assert (=> bs!844873 (= (dynLambda!21126 lambda!169757 (h!56400 (t!357657 (toList!4275 lm!1477)))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))))))

(assert (=> bs!844873 m!5244025))

(assert (=> b!4507119 d!1385923))

(declare-fun b_lambda!153445 () Bool)

(assert (= b_lambda!153427 (or d!1385385 b_lambda!153445)))

(declare-fun bs!844874 () Bool)

(declare-fun d!1385925 () Bool)

(assert (= bs!844874 (and d!1385925 d!1385385)))

(assert (=> bs!844874 (= (dynLambda!21126 lambda!169773 (h!56400 (toList!4275 lt!1685580))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lt!1685580)))))))

(assert (=> bs!844874 m!5244565))

(assert (=> b!4507634 d!1385925))

(declare-fun b_lambda!153447 () Bool)

(assert (= b_lambda!153387 (or d!1385281 b_lambda!153447)))

(declare-fun bs!844875 () Bool)

(declare-fun d!1385927 () Bool)

(assert (= bs!844875 (and d!1385927 d!1385281)))

(assert (=> bs!844875 (= (dynLambda!21126 lambda!169749 (h!56400 (toList!4275 lt!1685580))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lt!1685580)))))))

(assert (=> bs!844875 m!5244565))

(assert (=> b!4506881 d!1385927))

(declare-fun b_lambda!153449 () Bool)

(assert (= b_lambda!153385 (or d!1385389 b_lambda!153449)))

(declare-fun bs!844876 () Bool)

(declare-fun d!1385929 () Bool)

(assert (= bs!844876 (and d!1385929 d!1385389)))

(assert (=> bs!844876 (= (dynLambda!21126 lambda!169774 (h!56400 (toList!4275 lt!1685585))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lt!1685585)))))))

(assert (=> bs!844876 m!5243677))

(assert (=> b!4506879 d!1385929))

(declare-fun b_lambda!153451 () Bool)

(assert (= b_lambda!153389 (or d!1385403 b_lambda!153451)))

(declare-fun bs!844877 () Bool)

(declare-fun d!1385931 () Bool)

(assert (= bs!844877 (and d!1385931 d!1385403)))

(assert (=> bs!844877 (= (dynLambda!21126 lambda!169781 (h!56400 (toList!4275 lm!1477))) (allKeysSameHash!988 (_2!28780 (h!56400 (toList!4275 lm!1477))) (_1!28780 (h!56400 (toList!4275 lm!1477))) hashF!1107))))

(declare-fun m!5245009 () Bool)

(assert (=> bs!844877 m!5245009))

(assert (=> b!4506901 d!1385931))

(declare-fun b_lambda!153453 () Bool)

(assert (= b_lambda!153415 (or start!445184 b_lambda!153453)))

(declare-fun bs!844878 () Bool)

(declare-fun d!1385933 () Bool)

(assert (= bs!844878 (and d!1385933 start!445184)))

(assert (=> bs!844878 (= (dynLambda!21126 lambda!169727 (h!56400 (t!357657 (toList!4275 lm!1477)))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (t!357657 (toList!4275 lm!1477))))))))

(assert (=> bs!844878 m!5244025))

(assert (=> b!4507511 d!1385933))

(declare-fun b_lambda!153455 () Bool)

(assert (= b_lambda!153399 (or d!1385325 b_lambda!153455)))

(declare-fun bs!844879 () Bool)

(declare-fun d!1385935 () Bool)

(assert (= bs!844879 (and d!1385935 d!1385325)))

(assert (=> bs!844879 (= (dynLambda!21126 lambda!169765 (h!56400 (toList!4275 lt!1685580))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lt!1685580)))))))

(assert (=> bs!844879 m!5244565))

(assert (=> b!4507056 d!1385935))

(declare-fun b_lambda!153457 () Bool)

(assert (= b_lambda!153411 (or start!445184 b_lambda!153457)))

(assert (=> d!1385725 d!1385431))

(declare-fun b_lambda!153459 () Bool)

(assert (= b_lambda!153433 (or d!1385411 b_lambda!153459)))

(declare-fun bs!844880 () Bool)

(declare-fun d!1385937 () Bool)

(assert (= bs!844880 (and d!1385937 d!1385411)))

(assert (=> bs!844880 (= (dynLambda!21129 lambda!169784 (h!56399 newBucket!178)) (= (hash!2721 hashF!1107 (_1!28779 (h!56399 newBucket!178))) hash!344))))

(declare-fun m!5245027 () Bool)

(assert (=> bs!844880 m!5245027))

(assert (=> b!4507677 d!1385937))

(declare-fun b_lambda!153461 () Bool)

(assert (= b_lambda!153435 (or d!1385401 b_lambda!153461)))

(declare-fun bs!844881 () Bool)

(declare-fun d!1385939 () Bool)

(assert (= bs!844881 (and d!1385939 d!1385401)))

(assert (=> bs!844881 (= (dynLambda!21126 lambda!169778 (h!56400 (toList!4275 lm!1477))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lm!1477)))))))

(assert (=> bs!844881 m!5243459))

(assert (=> b!4507785 d!1385939))

(declare-fun b_lambda!153463 () Bool)

(assert (= b_lambda!153405 (or d!1385395 b_lambda!153463)))

(declare-fun bs!844882 () Bool)

(declare-fun d!1385941 () Bool)

(assert (= bs!844882 (and d!1385941 d!1385395)))

(assert (=> bs!844882 (= (dynLambda!21126 lambda!169775 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576)))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 (+!1488 lt!1685580 lt!1685576))))))))

(assert (=> bs!844882 m!5244221))

(assert (=> b!4507307 d!1385941))

(declare-fun b_lambda!153465 () Bool)

(assert (= b_lambda!153429 (or d!1385427 b_lambda!153465)))

(declare-fun bs!844883 () Bool)

(declare-fun d!1385943 () Bool)

(assert (= bs!844883 (and d!1385943 d!1385427)))

(assert (=> bs!844883 (= (dynLambda!21126 lambda!169785 (h!56400 (toList!4275 lt!1685584))) (noDuplicateKeys!1134 (_2!28780 (h!56400 (toList!4275 lt!1685584)))))))

(assert (=> bs!844883 m!5244657))

(assert (=> b!4507651 d!1385943))

(check-sat (not b!4507532) (not b!4507165) (not bs!844880) (not b!4507259) (not b_lambda!153381) (not bm!313806) (not b!4507624) (not d!1385701) (not d!1385585) (not bs!844871) (not b!4507596) (not d!1385831) (not bs!844883) (not d!1385659) (not d!1385729) (not bs!844870) (not b!4507646) (not b!4507743) (not b!4507522) (not b!4507104) (not bm!313795) (not b!4507482) (not b!4507753) (not b!4507607) (not b!4507512) (not bm!313853) (not b!4507276) (not bm!313834) (not d!1385915) (not bm!313764) (not d!1385591) (not b!4507146) (not d!1385695) (not b!4507111) (not b_lambda!153449) (not b!4507135) (not b!4507053) (not b!4507696) (not bs!844881) (not b!4507163) (not b!4507540) (not b!4507144) (not d!1385813) (not d!1385443) (not b!4507561) (not d!1385533) (not b!4507557) (not bm!313765) (not d!1385905) (not b!4507786) (not d!1385859) (not b!4506880) (not d!1385579) (not b!4507642) (not d!1385449) (not b_lambda!153445) (not b!4507171) (not d!1385641) (not d!1385593) (not b!4507083) (not b!4507047) (not d!1385549) (not d!1385567) (not d!1385865) (not d!1385881) (not b!4507635) (not b!4507477) (not b!4507118) (not b!4507110) (not b!4507746) (not b!4507490) (not b!4507598) (not b!4507622) (not b!4507632) (not b!4507699) (not d!1385733) (not b!4507525) (not b!4507407) (not b!4507732) (not b!4507791) (not d!1385601) (not b!4507103) (not b!4507485) (not b!4507790) (not b!4507305) (not b!4507690) (not b!4507566) (not d!1385545) (not b!4507648) (not d!1385779) (not b_lambda!153457) (not b!4507054) (not d!1385903) (not d!1385461) (not bm!313860) (not b_lambda!153463) (not b!4507346) (not b!4507261) (not d!1385453) (not d!1385811) (not b!4507560) (not b!4507260) (not d!1385821) (not d!1385697) (not b!4507640) (not bs!844872) (not b!4507405) (not d!1385815) (not b!4507265) (not b!4507162) (not b!4507467) (not b!4507112) (not b!4507758) (not b!4507513) (not d!1385535) (not b!4507172) (not b!4507636) (not d!1385561) (not bm!313787) (not b_lambda!153455) (not b!4507408) (not b!4507048) (not bm!313820) (not d!1385755) (not d!1385557) (not b!4507400) (not b!4507509) (not bm!313826) (not b!4507788) (not b_lambda!153453) (not b!4507262) (not b!4507386) (not b!4507693) (not d!1385827) (not b!4507082) (not b!4507301) (not d!1385457) (not b!4507625) (not bm!313838) (not bs!844876) (not b!4507166) (not bm!313763) (not bm!313839) (not b!4507719) (not b!4507126) (not d!1385907) (not b!4507473) (not b!4507157) (not b!4507724) (not d!1385637) (not b!4507479) (not d!1385889) (not b!4507749) (not b!4507404) (not b!4507597) (not d!1385451) (not b!4507060) (not b!4507709) (not b_lambda!153383) (not d!1385655) (not b!4507322) (not b!4507132) (not d!1385847) (not b!4507409) (not b!4507120) (not b!4507523) (not d!1385639) (not b!4507706) (not b!4507652) (not b!4507565) (not d!1385581) (not d!1385893) (not b!4507533) (not d!1385841) (not bs!844873) (not d!1385751) (not b!4507568) (not d!1385553) (not d!1385883) (not d!1385761) (not b!4507688) (not b!4507535) (not b!4507397) (not b!4507789) tp_is_empty!27815 (not b!4507678) (not b!4507489) (not b!4507644) (not bm!313791) (not b!4507168) (not b!4507720) (not b!4507760) (not b!4507484) (not d!1385787) (not bm!313789) (not b!4507738) (not b!4507169) (not b_lambda!153441) (not b!4507441) (not b!4507569) (not b!4507403) (not b!4507051) (not bm!313793) (not b!4507347) (not bm!313805) (not d!1385775) (not b!4507274) (not b!4507173) (not d!1385565) tp_is_empty!27813 (not b!4507402) (not b!4507145) (not b!4507637) (not bm!313794) (not bm!313788) (not bm!313761) (not d!1385839) (not b!4507055) (not b!4507730) (not b!4507638) (not b!4507387) (not b!4506882) (not b!4507271) (not bm!313792) (not b!4507160) (not b!4507127) (not b_lambda!153451) (not d!1385769) (not b!4507084) (not b_lambda!153459) (not bs!844879) (not b!4507759) (not b!4507550) (not b!4507751) (not b!4507563) (not bm!313843) (not b!4507308) (not b!4506888) (not b!4507530) (not d!1385891) (not b!4507521) (not bm!313762) (not d!1385587) (not d!1385645) (not b!4507272) (not b!4507039) (not b!4507050) (not b_lambda!153447) (not b!4507739) (not d!1385901) (not bm!313790) (not b!4507650) (not b!4507755) (not b!4507164) (not b!4507733) (not d!1385669) (not b_lambda!153437) (not b_lambda!153439) (not bs!844878) (not b!4507129) (not d!1385563) (not b!4507599) (not d!1385845) (not d!1385869) (not b!4507595) (not d!1385857) (not b!4507708) (not b_lambda!153461) (not b!4507088) (not b!4507654) (not b!4507295) (not b!4507697) (not b!4507273) (not b!4507630) (not b!4507633) (not b!4507138) (not b!4507320) (not b!4507623) (not b!4507080) (not d!1385439) (not d!1385737) (not d!1385785) (not d!1385753) (not b!4507517) (not b!4507536) (not b!4507756) (not b!4507516) (not b!4507689) (not b!4507275) (not b!4507041) (not b!4507045) (not d!1385599) (not b!4507628) (not b!4506877) (not b!4506899) (not b!4507277) (not bm!313807) (not b!4507105) (not b!4507148) (not b!4507040) (not b!4507752) (not d!1385649) (not b!4507096) (not b!4507469) (not b!4507741) (not bm!313802) (not d!1385699) (not b!4507494) (not bm!313832) (not d!1385885) (not b!4507128) (not bs!844874) (not b!4507656) (not b!4507559) (not b!4507406) (not b!4507548) (not b!4506902) (not bs!844877) (not bs!844875) (not b!4507391) (not b!4507109) (not bm!313844) (not b!4507038) (not bm!313833) (not b!4507057) (not d!1385763) (not d!1385635) (not d!1385721) (not b!4507515) (not d!1385537) (not bm!313842) (not b!4507267) (not d!1385749) (not bm!313840) (not b!4507592) (not d!1385849) (not b!4507263) (not b_lambda!153465) (not b!4507655) (not d!1385851) (not bs!844882) (not b!4507325) (not b!4507734) (not b!4507154) (not b_lambda!153443) (not b!4507567))
(check-sat)
