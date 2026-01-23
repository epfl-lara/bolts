; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463760 () Bool)

(assert start!463760)

(declare-fun b!4626254 () Bool)

(declare-fun e!2885798 () Bool)

(declare-fun e!2885796 () Bool)

(assert (=> b!4626254 (= e!2885798 e!2885796)))

(declare-fun res!1940130 () Bool)

(assert (=> b!4626254 (=> res!1940130 e!2885796)))

(declare-datatypes ((K!12925 0))(
  ( (K!12926 (val!18611 Int)) )
))
(declare-datatypes ((V!13171 0))(
  ( (V!13172 (val!18612 Int)) )
))
(declare-datatypes ((tuple2!52486 0))(
  ( (tuple2!52487 (_1!29537 K!12925) (_2!29537 V!13171)) )
))
(declare-datatypes ((List!51670 0))(
  ( (Nil!51546) (Cons!51546 (h!57600 tuple2!52486) (t!358706 List!51670)) )
))
(declare-fun lt!1784409 () List!51670)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51670)

(declare-datatypes ((ListMap!4289 0))(
  ( (ListMap!4290 (toList!4985 List!51670)) )
))
(declare-fun lt!1784422 () ListMap!4289)

(declare-fun eq!825 (ListMap!4289 ListMap!4289) Bool)

(declare-fun +!1876 (ListMap!4289 tuple2!52486) ListMap!4289)

(declare-datatypes ((tuple2!52488 0))(
  ( (tuple2!52489 (_1!29538 (_ BitVec 64)) (_2!29538 List!51670)) )
))
(declare-datatypes ((List!51671 0))(
  ( (Nil!51547) (Cons!51547 (h!57601 tuple2!52488) (t!358707 List!51671)) )
))
(declare-fun extractMap!1566 (List!51671) ListMap!4289)

(assert (=> b!4626254 (= res!1940130 (not (eq!825 lt!1784422 (+!1876 (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547)) (h!57600 oldBucket!40)))))))

(declare-fun lt!1784425 () tuple2!52486)

(declare-fun lt!1784411 () List!51670)

(declare-fun addToMapMapFromBucket!971 (List!51670 ListMap!4289) ListMap!4289)

(assert (=> b!4626254 (eq!825 (addToMapMapFromBucket!971 (Cons!51546 lt!1784425 lt!1784411) (ListMap!4290 Nil!51546)) (+!1876 (addToMapMapFromBucket!971 lt!1784411 (ListMap!4290 Nil!51546)) lt!1784425))))

(declare-datatypes ((Unit!112260 0))(
  ( (Unit!112261) )
))
(declare-fun lt!1784427 () Unit!112260)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!76 (tuple2!52486 List!51670 ListMap!4289) Unit!112260)

(assert (=> b!4626254 (= lt!1784427 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!76 lt!1784425 lt!1784411 (ListMap!4290 Nil!51546)))))

(declare-fun newBucket!224 () List!51670)

(declare-fun head!9644 (List!51670) tuple2!52486)

(assert (=> b!4626254 (= lt!1784425 (head!9644 newBucket!224))))

(declare-fun lt!1784412 () tuple2!52486)

(assert (=> b!4626254 (eq!825 (addToMapMapFromBucket!971 (Cons!51546 lt!1784412 lt!1784409) (ListMap!4290 Nil!51546)) (+!1876 (addToMapMapFromBucket!971 lt!1784409 (ListMap!4290 Nil!51546)) lt!1784412))))

(declare-fun lt!1784407 () Unit!112260)

(assert (=> b!4626254 (= lt!1784407 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!76 lt!1784412 lt!1784409 (ListMap!4290 Nil!51546)))))

(assert (=> b!4626254 (= lt!1784412 (head!9644 oldBucket!40))))

(declare-fun lt!1784423 () ListMap!4289)

(declare-fun key!4968 () K!12925)

(declare-fun contains!14597 (ListMap!4289 K!12925) Bool)

(assert (=> b!4626254 (contains!14597 lt!1784423 key!4968)))

(declare-fun lt!1784417 () List!51671)

(assert (=> b!4626254 (= lt!1784423 (extractMap!1566 lt!1784417))))

(declare-fun lt!1784431 () Unit!112260)

(declare-datatypes ((Hashable!5907 0))(
  ( (HashableExt!5906 (__x!31610 Int)) )
))
(declare-fun hashF!1389 () Hashable!5907)

(declare-datatypes ((ListLongMap!3575 0))(
  ( (ListLongMap!3576 (toList!4986 List!51671)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!328 (ListLongMap!3575 K!12925 Hashable!5907) Unit!112260)

(assert (=> b!4626254 (= lt!1784431 (lemmaListContainsThenExtractedMapContains!328 (ListLongMap!3576 lt!1784417) key!4968 hashF!1389))))

(assert (=> b!4626254 (= lt!1784417 (Cons!51547 (tuple2!52489 hash!414 (t!358706 oldBucket!40)) Nil!51547))))

(declare-fun b!4626255 () Bool)

(declare-fun e!2885804 () Bool)

(declare-fun e!2885802 () Bool)

(assert (=> b!4626255 (= e!2885804 e!2885802)))

(declare-fun res!1940137 () Bool)

(assert (=> b!4626255 (=> (not res!1940137) (not e!2885802))))

(declare-fun lt!1784406 () (_ BitVec 64))

(assert (=> b!4626255 (= res!1940137 (= lt!1784406 hash!414))))

(declare-fun hash!3511 (Hashable!5907 K!12925) (_ BitVec 64))

(assert (=> b!4626255 (= lt!1784406 (hash!3511 hashF!1389 key!4968))))

(declare-fun res!1940141 () Bool)

(declare-fun e!2885801 () Bool)

(assert (=> start!463760 (=> (not res!1940141) (not e!2885801))))

(declare-fun noDuplicateKeys!1510 (List!51670) Bool)

(assert (=> start!463760 (= res!1940141 (noDuplicateKeys!1510 oldBucket!40))))

(assert (=> start!463760 e!2885801))

(assert (=> start!463760 true))

(declare-fun e!2885800 () Bool)

(assert (=> start!463760 e!2885800))

(declare-fun tp_is_empty!29333 () Bool)

(assert (=> start!463760 tp_is_empty!29333))

(declare-fun e!2885795 () Bool)

(assert (=> start!463760 e!2885795))

(declare-fun b!4626256 () Bool)

(declare-fun res!1940136 () Bool)

(assert (=> b!4626256 (=> (not res!1940136) (not e!2885802))))

(declare-fun allKeysSameHash!1364 (List!51670 (_ BitVec 64) Hashable!5907) Bool)

(assert (=> b!4626256 (= res!1940136 (allKeysSameHash!1364 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4626257 () Bool)

(declare-fun e!2885799 () Bool)

(declare-fun lambda!192294 () Int)

(declare-fun forall!10830 (List!51671 Int) Bool)

(assert (=> b!4626257 (= e!2885799 (forall!10830 lt!1784417 lambda!192294))))

(declare-fun tp_is_empty!29335 () Bool)

(declare-fun tp!1342147 () Bool)

(declare-fun b!4626258 () Bool)

(assert (=> b!4626258 (= e!2885795 (and tp_is_empty!29333 tp_is_empty!29335 tp!1342147))))

(declare-fun b!4626259 () Bool)

(declare-fun res!1940131 () Bool)

(assert (=> b!4626259 (=> res!1940131 e!2885798)))

(declare-fun removePairForKey!1133 (List!51670 K!12925) List!51670)

(assert (=> b!4626259 (= res!1940131 (not (= (removePairForKey!1133 (t!358706 oldBucket!40) key!4968) lt!1784411)))))

(declare-fun b!4626260 () Bool)

(declare-fun e!2885806 () Bool)

(declare-fun e!2885803 () Bool)

(assert (=> b!4626260 (= e!2885806 e!2885803)))

(declare-fun res!1940135 () Bool)

(assert (=> b!4626260 (=> res!1940135 e!2885803)))

(declare-fun containsKey!2458 (List!51670 K!12925) Bool)

(assert (=> b!4626260 (= res!1940135 (not (containsKey!2458 (t!358706 oldBucket!40) key!4968)))))

(assert (=> b!4626260 (containsKey!2458 oldBucket!40 key!4968)))

(declare-fun lt!1784408 () Unit!112260)

(declare-fun lemmaGetPairDefinedThenContainsKey!56 (List!51670 K!12925 Hashable!5907) Unit!112260)

(assert (=> b!4626260 (= lt!1784408 (lemmaGetPairDefinedThenContainsKey!56 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1784413 () List!51670)

(declare-datatypes ((Option!11600 0))(
  ( (None!11599) (Some!11599 (v!45733 tuple2!52486)) )
))
(declare-fun isDefined!8865 (Option!11600) Bool)

(declare-fun getPair!302 (List!51670 K!12925) Option!11600)

(assert (=> b!4626260 (isDefined!8865 (getPair!302 lt!1784413 key!4968))))

(declare-fun lt!1784420 () List!51671)

(declare-fun lt!1784419 () tuple2!52488)

(declare-fun lt!1784424 () Unit!112260)

(declare-fun forallContained!3058 (List!51671 Int tuple2!52488) Unit!112260)

(assert (=> b!4626260 (= lt!1784424 (forallContained!3058 lt!1784420 lambda!192294 lt!1784419))))

(declare-fun contains!14598 (List!51671 tuple2!52488) Bool)

(assert (=> b!4626260 (contains!14598 lt!1784420 lt!1784419)))

(assert (=> b!4626260 (= lt!1784419 (tuple2!52489 lt!1784406 lt!1784413))))

(declare-fun lt!1784414 () Unit!112260)

(declare-fun lt!1784421 () ListLongMap!3575)

(declare-fun lemmaGetValueImpliesTupleContained!107 (ListLongMap!3575 (_ BitVec 64) List!51670) Unit!112260)

(assert (=> b!4626260 (= lt!1784414 (lemmaGetValueImpliesTupleContained!107 lt!1784421 lt!1784406 lt!1784413))))

(declare-fun apply!12175 (ListLongMap!3575 (_ BitVec 64)) List!51670)

(assert (=> b!4626260 (= lt!1784413 (apply!12175 lt!1784421 lt!1784406))))

(declare-fun contains!14599 (ListLongMap!3575 (_ BitVec 64)) Bool)

(assert (=> b!4626260 (contains!14599 lt!1784421 lt!1784406)))

(declare-fun lt!1784426 () Unit!112260)

(declare-fun lemmaInGenMapThenLongMapContainsHash!508 (ListLongMap!3575 K!12925 Hashable!5907) Unit!112260)

(assert (=> b!4626260 (= lt!1784426 (lemmaInGenMapThenLongMapContainsHash!508 lt!1784421 key!4968 hashF!1389))))

(declare-fun lt!1784429 () Unit!112260)

(declare-fun lemmaInGenMapThenGetPairDefined!98 (ListLongMap!3575 K!12925 Hashable!5907) Unit!112260)

(assert (=> b!4626260 (= lt!1784429 (lemmaInGenMapThenGetPairDefined!98 lt!1784421 key!4968 hashF!1389))))

(assert (=> b!4626260 (= lt!1784421 (ListLongMap!3576 lt!1784420))))

(declare-fun b!4626261 () Bool)

(assert (=> b!4626261 (= e!2885803 e!2885798)))

(declare-fun res!1940142 () Bool)

(assert (=> b!4626261 (=> res!1940142 e!2885798)))

(assert (=> b!4626261 (= res!1940142 (not (= (removePairForKey!1133 lt!1784409 key!4968) lt!1784411)))))

(declare-fun tail!8145 (List!51670) List!51670)

(assert (=> b!4626261 (= lt!1784411 (tail!8145 newBucket!224))))

(assert (=> b!4626261 (= lt!1784409 (tail!8145 oldBucket!40))))

(declare-fun b!4626262 () Bool)

(assert (=> b!4626262 (= e!2885801 e!2885804)))

(declare-fun res!1940132 () Bool)

(assert (=> b!4626262 (=> (not res!1940132) (not e!2885804))))

(assert (=> b!4626262 (= res!1940132 (contains!14597 lt!1784422 key!4968))))

(assert (=> b!4626262 (= lt!1784422 (extractMap!1566 lt!1784420))))

(assert (=> b!4626262 (= lt!1784420 (Cons!51547 (tuple2!52489 hash!414 oldBucket!40) Nil!51547))))

(declare-fun b!4626263 () Bool)

(declare-fun e!2885805 () Bool)

(assert (=> b!4626263 (= e!2885805 e!2885799)))

(declare-fun res!1940134 () Bool)

(assert (=> b!4626263 (=> res!1940134 e!2885799)))

(declare-fun lt!1784418 () ListMap!4289)

(declare-fun -!550 (ListMap!4289 K!12925) ListMap!4289)

(assert (=> b!4626263 (= res!1940134 (not (= (-!550 (+!1876 lt!1784423 (h!57600 oldBucket!40)) key!4968) (+!1876 lt!1784418 (h!57600 oldBucket!40)))))))

(assert (=> b!4626263 (= (-!550 (+!1876 lt!1784423 (h!57600 oldBucket!40)) key!4968) (+!1876 lt!1784418 (h!57600 oldBucket!40)))))

(declare-fun lt!1784416 () Unit!112260)

(declare-fun addRemoveCommutativeForDiffKeys!5 (ListMap!4289 K!12925 V!13171 K!12925) Unit!112260)

(assert (=> b!4626263 (= lt!1784416 (addRemoveCommutativeForDiffKeys!5 lt!1784423 (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40)) key!4968))))

(declare-fun lt!1784428 () ListMap!4289)

(assert (=> b!4626263 (eq!825 lt!1784428 lt!1784418)))

(assert (=> b!4626263 (= lt!1784418 (-!550 lt!1784423 key!4968))))

(declare-fun lt!1784430 () Unit!112260)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!112 ((_ BitVec 64) List!51670 List!51670 K!12925 Hashable!5907) Unit!112260)

(assert (=> b!4626263 (= lt!1784430 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!112 hash!414 (t!358706 oldBucket!40) lt!1784411 key!4968 hashF!1389))))

(declare-fun b!4626264 () Bool)

(assert (=> b!4626264 (= e!2885802 (not e!2885806))))

(declare-fun res!1940128 () Bool)

(assert (=> b!4626264 (=> res!1940128 e!2885806)))

(get-info :version)

(assert (=> b!4626264 (= res!1940128 (or (and ((_ is Cons!51546) oldBucket!40) (= (_1!29537 (h!57600 oldBucket!40)) key!4968)) (not ((_ is Cons!51546) oldBucket!40)) (= (_1!29537 (h!57600 oldBucket!40)) key!4968)))))

(declare-fun e!2885797 () Bool)

(assert (=> b!4626264 e!2885797))

(declare-fun res!1940138 () Bool)

(assert (=> b!4626264 (=> (not res!1940138) (not e!2885797))))

(declare-fun lt!1784410 () ListMap!4289)

(assert (=> b!4626264 (= res!1940138 (= lt!1784422 (addToMapMapFromBucket!971 oldBucket!40 lt!1784410)))))

(assert (=> b!4626264 (= lt!1784410 (extractMap!1566 Nil!51547))))

(assert (=> b!4626264 true))

(declare-fun b!4626265 () Bool)

(declare-fun res!1940129 () Bool)

(assert (=> b!4626265 (=> (not res!1940129) (not e!2885801))))

(assert (=> b!4626265 (= res!1940129 (noDuplicateKeys!1510 newBucket!224))))

(declare-fun b!4626266 () Bool)

(declare-fun res!1940133 () Bool)

(assert (=> b!4626266 (=> (not res!1940133) (not e!2885801))))

(assert (=> b!4626266 (= res!1940133 (allKeysSameHash!1364 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1342146 () Bool)

(declare-fun b!4626267 () Bool)

(assert (=> b!4626267 (= e!2885800 (and tp_is_empty!29333 tp_is_empty!29335 tp!1342146))))

(declare-fun b!4626268 () Bool)

(assert (=> b!4626268 (= e!2885797 (= lt!1784410 (ListMap!4290 Nil!51546)))))

(declare-fun b!4626269 () Bool)

(assert (=> b!4626269 (= e!2885796 e!2885805)))

(declare-fun res!1940139 () Bool)

(assert (=> b!4626269 (=> res!1940139 e!2885805)))

(declare-fun lt!1784415 () ListMap!4289)

(assert (=> b!4626269 (= res!1940139 (not (eq!825 lt!1784415 (+!1876 lt!1784428 lt!1784425))))))

(assert (=> b!4626269 (= lt!1784428 (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 lt!1784411) Nil!51547)))))

(assert (=> b!4626269 (= lt!1784415 (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 newBucket!224) Nil!51547)))))

(declare-fun b!4626270 () Bool)

(declare-fun res!1940140 () Bool)

(assert (=> b!4626270 (=> (not res!1940140) (not e!2885801))))

(assert (=> b!4626270 (= res!1940140 (= (removePairForKey!1133 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!463760 res!1940141) b!4626265))

(assert (= (and b!4626265 res!1940129) b!4626270))

(assert (= (and b!4626270 res!1940140) b!4626266))

(assert (= (and b!4626266 res!1940133) b!4626262))

(assert (= (and b!4626262 res!1940132) b!4626255))

(assert (= (and b!4626255 res!1940137) b!4626256))

(assert (= (and b!4626256 res!1940136) b!4626264))

(assert (= (and b!4626264 res!1940138) b!4626268))

(assert (= (and b!4626264 (not res!1940128)) b!4626260))

(assert (= (and b!4626260 (not res!1940135)) b!4626261))

(assert (= (and b!4626261 (not res!1940142)) b!4626259))

(assert (= (and b!4626259 (not res!1940131)) b!4626254))

(assert (= (and b!4626254 (not res!1940130)) b!4626269))

(assert (= (and b!4626269 (not res!1940139)) b!4626263))

(assert (= (and b!4626263 (not res!1940134)) b!4626257))

(assert (= (and start!463760 ((_ is Cons!51546) oldBucket!40)) b!4626267))

(assert (= (and start!463760 ((_ is Cons!51546) newBucket!224)) b!4626258))

(declare-fun m!5468851 () Bool)

(assert (=> b!4626256 m!5468851))

(declare-fun m!5468853 () Bool)

(assert (=> b!4626270 m!5468853))

(declare-fun m!5468855 () Bool)

(assert (=> b!4626269 m!5468855))

(assert (=> b!4626269 m!5468855))

(declare-fun m!5468857 () Bool)

(assert (=> b!4626269 m!5468857))

(declare-fun m!5468859 () Bool)

(assert (=> b!4626269 m!5468859))

(declare-fun m!5468861 () Bool)

(assert (=> b!4626269 m!5468861))

(declare-fun m!5468863 () Bool)

(assert (=> b!4626263 m!5468863))

(declare-fun m!5468865 () Bool)

(assert (=> b!4626263 m!5468865))

(declare-fun m!5468867 () Bool)

(assert (=> b!4626263 m!5468867))

(declare-fun m!5468869 () Bool)

(assert (=> b!4626263 m!5468869))

(declare-fun m!5468871 () Bool)

(assert (=> b!4626263 m!5468871))

(assert (=> b!4626263 m!5468863))

(declare-fun m!5468873 () Bool)

(assert (=> b!4626263 m!5468873))

(declare-fun m!5468875 () Bool)

(assert (=> b!4626263 m!5468875))

(declare-fun m!5468877 () Bool)

(assert (=> start!463760 m!5468877))

(declare-fun m!5468879 () Bool)

(assert (=> b!4626262 m!5468879))

(declare-fun m!5468881 () Bool)

(assert (=> b!4626262 m!5468881))

(declare-fun m!5468883 () Bool)

(assert (=> b!4626260 m!5468883))

(declare-fun m!5468885 () Bool)

(assert (=> b!4626260 m!5468885))

(declare-fun m!5468887 () Bool)

(assert (=> b!4626260 m!5468887))

(declare-fun m!5468889 () Bool)

(assert (=> b!4626260 m!5468889))

(declare-fun m!5468891 () Bool)

(assert (=> b!4626260 m!5468891))

(declare-fun m!5468893 () Bool)

(assert (=> b!4626260 m!5468893))

(assert (=> b!4626260 m!5468891))

(declare-fun m!5468895 () Bool)

(assert (=> b!4626260 m!5468895))

(declare-fun m!5468897 () Bool)

(assert (=> b!4626260 m!5468897))

(declare-fun m!5468899 () Bool)

(assert (=> b!4626260 m!5468899))

(declare-fun m!5468901 () Bool)

(assert (=> b!4626260 m!5468901))

(declare-fun m!5468903 () Bool)

(assert (=> b!4626260 m!5468903))

(declare-fun m!5468905 () Bool)

(assert (=> b!4626260 m!5468905))

(declare-fun m!5468907 () Bool)

(assert (=> b!4626255 m!5468907))

(declare-fun m!5468909 () Bool)

(assert (=> b!4626265 m!5468909))

(declare-fun m!5468911 () Bool)

(assert (=> b!4626257 m!5468911))

(declare-fun m!5468913 () Bool)

(assert (=> b!4626264 m!5468913))

(declare-fun m!5468915 () Bool)

(assert (=> b!4626264 m!5468915))

(declare-fun m!5468917 () Bool)

(assert (=> b!4626261 m!5468917))

(declare-fun m!5468919 () Bool)

(assert (=> b!4626261 m!5468919))

(declare-fun m!5468921 () Bool)

(assert (=> b!4626261 m!5468921))

(declare-fun m!5468923 () Bool)

(assert (=> b!4626266 m!5468923))

(declare-fun m!5468925 () Bool)

(assert (=> b!4626254 m!5468925))

(declare-fun m!5468927 () Bool)

(assert (=> b!4626254 m!5468927))

(declare-fun m!5468929 () Bool)

(assert (=> b!4626254 m!5468929))

(declare-fun m!5468931 () Bool)

(assert (=> b!4626254 m!5468931))

(declare-fun m!5468933 () Bool)

(assert (=> b!4626254 m!5468933))

(assert (=> b!4626254 m!5468929))

(declare-fun m!5468935 () Bool)

(assert (=> b!4626254 m!5468935))

(assert (=> b!4626254 m!5468927))

(declare-fun m!5468937 () Bool)

(assert (=> b!4626254 m!5468937))

(declare-fun m!5468939 () Bool)

(assert (=> b!4626254 m!5468939))

(assert (=> b!4626254 m!5468925))

(declare-fun m!5468941 () Bool)

(assert (=> b!4626254 m!5468941))

(declare-fun m!5468943 () Bool)

(assert (=> b!4626254 m!5468943))

(declare-fun m!5468945 () Bool)

(assert (=> b!4626254 m!5468945))

(declare-fun m!5468947 () Bool)

(assert (=> b!4626254 m!5468947))

(declare-fun m!5468949 () Bool)

(assert (=> b!4626254 m!5468949))

(declare-fun m!5468951 () Bool)

(assert (=> b!4626254 m!5468951))

(assert (=> b!4626254 m!5468947))

(assert (=> b!4626254 m!5468933))

(assert (=> b!4626254 m!5468941))

(declare-fun m!5468953 () Bool)

(assert (=> b!4626254 m!5468953))

(assert (=> b!4626254 m!5468951))

(declare-fun m!5468955 () Bool)

(assert (=> b!4626254 m!5468955))

(declare-fun m!5468957 () Bool)

(assert (=> b!4626254 m!5468957))

(assert (=> b!4626254 m!5468945))

(declare-fun m!5468959 () Bool)

(assert (=> b!4626254 m!5468959))

(declare-fun m!5468961 () Bool)

(assert (=> b!4626259 m!5468961))

(check-sat (not b!4626260) tp_is_empty!29335 (not b!4626266) (not b!4626267) (not b!4626257) (not b!4626254) (not b!4626256) (not b!4626269) (not b!4626255) (not b!4626259) (not b!4626265) (not b!4626263) (not start!463760) tp_is_empty!29333 (not b!4626258) (not b!4626270) (not b!4626262) (not b!4626264) (not b!4626261))
(check-sat)
(get-model)

(declare-fun d!1457317 () Bool)

(declare-fun res!1940147 () Bool)

(declare-fun e!2885811 () Bool)

(assert (=> d!1457317 (=> res!1940147 e!2885811)))

(assert (=> d!1457317 (= res!1940147 ((_ is Nil!51547) lt!1784417))))

(assert (=> d!1457317 (= (forall!10830 lt!1784417 lambda!192294) e!2885811)))

(declare-fun b!4626275 () Bool)

(declare-fun e!2885812 () Bool)

(assert (=> b!4626275 (= e!2885811 e!2885812)))

(declare-fun res!1940148 () Bool)

(assert (=> b!4626275 (=> (not res!1940148) (not e!2885812))))

(declare-fun dynLambda!21501 (Int tuple2!52488) Bool)

(assert (=> b!4626275 (= res!1940148 (dynLambda!21501 lambda!192294 (h!57601 lt!1784417)))))

(declare-fun b!4626276 () Bool)

(assert (=> b!4626276 (= e!2885812 (forall!10830 (t!358707 lt!1784417) lambda!192294))))

(assert (= (and d!1457317 (not res!1940147)) b!4626275))

(assert (= (and b!4626275 res!1940148) b!4626276))

(declare-fun b_lambda!170757 () Bool)

(assert (=> (not b_lambda!170757) (not b!4626275)))

(declare-fun m!5468963 () Bool)

(assert (=> b!4626275 m!5468963))

(declare-fun m!5468965 () Bool)

(assert (=> b!4626276 m!5468965))

(assert (=> b!4626257 d!1457317))

(declare-fun d!1457319 () Bool)

(assert (=> d!1457319 true))

(assert (=> d!1457319 true))

(declare-fun lambda!192297 () Int)

(declare-fun forall!10831 (List!51670 Int) Bool)

(assert (=> d!1457319 (= (allKeysSameHash!1364 newBucket!224 hash!414 hashF!1389) (forall!10831 newBucket!224 lambda!192297))))

(declare-fun bs!1023926 () Bool)

(assert (= bs!1023926 d!1457319))

(declare-fun m!5468967 () Bool)

(assert (=> bs!1023926 m!5468967))

(assert (=> b!4626256 d!1457319))

(declare-fun d!1457323 () Bool)

(assert (=> d!1457323 (containsKey!2458 oldBucket!40 key!4968)))

(declare-fun lt!1784434 () Unit!112260)

(declare-fun choose!31332 (List!51670 K!12925 Hashable!5907) Unit!112260)

(assert (=> d!1457323 (= lt!1784434 (choose!31332 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1457323 (noDuplicateKeys!1510 oldBucket!40)))

(assert (=> d!1457323 (= (lemmaGetPairDefinedThenContainsKey!56 oldBucket!40 key!4968 hashF!1389) lt!1784434)))

(declare-fun bs!1023927 () Bool)

(assert (= bs!1023927 d!1457323))

(assert (=> bs!1023927 m!5468903))

(declare-fun m!5468973 () Bool)

(assert (=> bs!1023927 m!5468973))

(assert (=> bs!1023927 m!5468877))

(assert (=> b!4626260 d!1457323))

(declare-fun d!1457327 () Bool)

(declare-fun isEmpty!28933 (Option!11600) Bool)

(assert (=> d!1457327 (= (isDefined!8865 (getPair!302 lt!1784413 key!4968)) (not (isEmpty!28933 (getPair!302 lt!1784413 key!4968))))))

(declare-fun bs!1023928 () Bool)

(assert (= bs!1023928 d!1457327))

(assert (=> bs!1023928 m!5468891))

(declare-fun m!5468975 () Bool)

(assert (=> bs!1023928 m!5468975))

(assert (=> b!4626260 d!1457327))

(declare-fun d!1457329 () Bool)

(assert (=> d!1457329 (contains!14598 (toList!4986 lt!1784421) (tuple2!52489 lt!1784406 lt!1784413))))

(declare-fun lt!1784437 () Unit!112260)

(declare-fun choose!31333 (ListLongMap!3575 (_ BitVec 64) List!51670) Unit!112260)

(assert (=> d!1457329 (= lt!1784437 (choose!31333 lt!1784421 lt!1784406 lt!1784413))))

(assert (=> d!1457329 (contains!14599 lt!1784421 lt!1784406)))

(assert (=> d!1457329 (= (lemmaGetValueImpliesTupleContained!107 lt!1784421 lt!1784406 lt!1784413) lt!1784437)))

(declare-fun bs!1023929 () Bool)

(assert (= bs!1023929 d!1457329))

(declare-fun m!5468977 () Bool)

(assert (=> bs!1023929 m!5468977))

(declare-fun m!5468979 () Bool)

(assert (=> bs!1023929 m!5468979))

(assert (=> bs!1023929 m!5468889))

(assert (=> b!4626260 d!1457329))

(declare-fun d!1457331 () Bool)

(declare-fun e!2885829 () Bool)

(assert (=> d!1457331 e!2885829))

(declare-fun res!1940166 () Bool)

(assert (=> d!1457331 (=> res!1940166 e!2885829)))

(declare-fun e!2885833 () Bool)

(assert (=> d!1457331 (= res!1940166 e!2885833)))

(declare-fun res!1940165 () Bool)

(assert (=> d!1457331 (=> (not res!1940165) (not e!2885833))))

(declare-fun lt!1784440 () Option!11600)

(assert (=> d!1457331 (= res!1940165 (isEmpty!28933 lt!1784440))))

(declare-fun e!2885830 () Option!11600)

(assert (=> d!1457331 (= lt!1784440 e!2885830)))

(declare-fun c!791892 () Bool)

(assert (=> d!1457331 (= c!791892 (and ((_ is Cons!51546) lt!1784413) (= (_1!29537 (h!57600 lt!1784413)) key!4968)))))

(assert (=> d!1457331 (noDuplicateKeys!1510 lt!1784413)))

(assert (=> d!1457331 (= (getPair!302 lt!1784413 key!4968) lt!1784440)))

(declare-fun b!4626304 () Bool)

(declare-fun e!2885831 () Bool)

(declare-fun contains!14600 (List!51670 tuple2!52486) Bool)

(declare-fun get!17085 (Option!11600) tuple2!52486)

(assert (=> b!4626304 (= e!2885831 (contains!14600 lt!1784413 (get!17085 lt!1784440)))))

(declare-fun b!4626305 () Bool)

(declare-fun e!2885832 () Option!11600)

(assert (=> b!4626305 (= e!2885830 e!2885832)))

(declare-fun c!791891 () Bool)

(assert (=> b!4626305 (= c!791891 ((_ is Cons!51546) lt!1784413))))

(declare-fun b!4626306 () Bool)

(assert (=> b!4626306 (= e!2885829 e!2885831)))

(declare-fun res!1940164 () Bool)

(assert (=> b!4626306 (=> (not res!1940164) (not e!2885831))))

(assert (=> b!4626306 (= res!1940164 (isDefined!8865 lt!1784440))))

(declare-fun b!4626307 () Bool)

(assert (=> b!4626307 (= e!2885833 (not (containsKey!2458 lt!1784413 key!4968)))))

(declare-fun b!4626308 () Bool)

(assert (=> b!4626308 (= e!2885832 None!11599)))

(declare-fun b!4626309 () Bool)

(declare-fun res!1940163 () Bool)

(assert (=> b!4626309 (=> (not res!1940163) (not e!2885831))))

(assert (=> b!4626309 (= res!1940163 (= (_1!29537 (get!17085 lt!1784440)) key!4968))))

(declare-fun b!4626310 () Bool)

(assert (=> b!4626310 (= e!2885830 (Some!11599 (h!57600 lt!1784413)))))

(declare-fun b!4626311 () Bool)

(assert (=> b!4626311 (= e!2885832 (getPair!302 (t!358706 lt!1784413) key!4968))))

(assert (= (and d!1457331 c!791892) b!4626310))

(assert (= (and d!1457331 (not c!791892)) b!4626305))

(assert (= (and b!4626305 c!791891) b!4626311))

(assert (= (and b!4626305 (not c!791891)) b!4626308))

(assert (= (and d!1457331 res!1940165) b!4626307))

(assert (= (and d!1457331 (not res!1940166)) b!4626306))

(assert (= (and b!4626306 res!1940164) b!4626309))

(assert (= (and b!4626309 res!1940163) b!4626304))

(declare-fun m!5468981 () Bool)

(assert (=> d!1457331 m!5468981))

(declare-fun m!5468983 () Bool)

(assert (=> d!1457331 m!5468983))

(declare-fun m!5468985 () Bool)

(assert (=> b!4626311 m!5468985))

(declare-fun m!5468987 () Bool)

(assert (=> b!4626307 m!5468987))

(declare-fun m!5468989 () Bool)

(assert (=> b!4626304 m!5468989))

(assert (=> b!4626304 m!5468989))

(declare-fun m!5468991 () Bool)

(assert (=> b!4626304 m!5468991))

(assert (=> b!4626309 m!5468989))

(declare-fun m!5468993 () Bool)

(assert (=> b!4626306 m!5468993))

(assert (=> b!4626260 d!1457331))

(declare-fun d!1457333 () Bool)

(declare-fun res!1940171 () Bool)

(declare-fun e!2885838 () Bool)

(assert (=> d!1457333 (=> res!1940171 e!2885838)))

(assert (=> d!1457333 (= res!1940171 (and ((_ is Cons!51546) oldBucket!40) (= (_1!29537 (h!57600 oldBucket!40)) key!4968)))))

(assert (=> d!1457333 (= (containsKey!2458 oldBucket!40 key!4968) e!2885838)))

(declare-fun b!4626316 () Bool)

(declare-fun e!2885839 () Bool)

(assert (=> b!4626316 (= e!2885838 e!2885839)))

(declare-fun res!1940172 () Bool)

(assert (=> b!4626316 (=> (not res!1940172) (not e!2885839))))

(assert (=> b!4626316 (= res!1940172 ((_ is Cons!51546) oldBucket!40))))

(declare-fun b!4626317 () Bool)

(assert (=> b!4626317 (= e!2885839 (containsKey!2458 (t!358706 oldBucket!40) key!4968))))

(assert (= (and d!1457333 (not res!1940171)) b!4626316))

(assert (= (and b!4626316 res!1940172) b!4626317))

(assert (=> b!4626317 m!5468899))

(assert (=> b!4626260 d!1457333))

(declare-fun d!1457335 () Bool)

(declare-fun lt!1784443 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8806 (List!51671) (InoxSet tuple2!52488))

(assert (=> d!1457335 (= lt!1784443 (select (content!8806 lt!1784420) lt!1784419))))

(declare-fun e!2885845 () Bool)

(assert (=> d!1457335 (= lt!1784443 e!2885845)))

(declare-fun res!1940177 () Bool)

(assert (=> d!1457335 (=> (not res!1940177) (not e!2885845))))

(assert (=> d!1457335 (= res!1940177 ((_ is Cons!51547) lt!1784420))))

(assert (=> d!1457335 (= (contains!14598 lt!1784420 lt!1784419) lt!1784443)))

(declare-fun b!4626322 () Bool)

(declare-fun e!2885844 () Bool)

(assert (=> b!4626322 (= e!2885845 e!2885844)))

(declare-fun res!1940178 () Bool)

(assert (=> b!4626322 (=> res!1940178 e!2885844)))

(assert (=> b!4626322 (= res!1940178 (= (h!57601 lt!1784420) lt!1784419))))

(declare-fun b!4626323 () Bool)

(assert (=> b!4626323 (= e!2885844 (contains!14598 (t!358707 lt!1784420) lt!1784419))))

(assert (= (and d!1457335 res!1940177) b!4626322))

(assert (= (and b!4626322 (not res!1940178)) b!4626323))

(declare-fun m!5468995 () Bool)

(assert (=> d!1457335 m!5468995))

(declare-fun m!5468997 () Bool)

(assert (=> d!1457335 m!5468997))

(declare-fun m!5468999 () Bool)

(assert (=> b!4626323 m!5468999))

(assert (=> b!4626260 d!1457335))

(declare-fun bs!1023937 () Bool)

(declare-fun d!1457337 () Bool)

(assert (= bs!1023937 (and d!1457337 b!4626260)))

(declare-fun lambda!192314 () Int)

(assert (=> bs!1023937 (= lambda!192314 lambda!192294)))

(declare-fun e!2885861 () Bool)

(declare-fun b!4626353 () Bool)

(assert (=> b!4626353 (= e!2885861 (isDefined!8865 (getPair!302 (apply!12175 lt!1784421 (hash!3511 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1784505 () Unit!112260)

(assert (=> b!4626353 (= lt!1784505 (forallContained!3058 (toList!4986 lt!1784421) lambda!192314 (tuple2!52489 (hash!3511 hashF!1389 key!4968) (apply!12175 lt!1784421 (hash!3511 hashF!1389 key!4968)))))))

(declare-fun lt!1784501 () Unit!112260)

(declare-fun lt!1784498 () Unit!112260)

(assert (=> b!4626353 (= lt!1784501 lt!1784498)))

(declare-fun lt!1784499 () (_ BitVec 64))

(declare-fun lt!1784502 () List!51670)

(assert (=> b!4626353 (contains!14598 (toList!4986 lt!1784421) (tuple2!52489 lt!1784499 lt!1784502))))

(assert (=> b!4626353 (= lt!1784498 (lemmaGetValueImpliesTupleContained!107 lt!1784421 lt!1784499 lt!1784502))))

(declare-fun e!2885860 () Bool)

(assert (=> b!4626353 e!2885860))

(declare-fun res!1940201 () Bool)

(assert (=> b!4626353 (=> (not res!1940201) (not e!2885860))))

(assert (=> b!4626353 (= res!1940201 (contains!14599 lt!1784421 lt!1784499))))

(assert (=> b!4626353 (= lt!1784502 (apply!12175 lt!1784421 (hash!3511 hashF!1389 key!4968)))))

(assert (=> b!4626353 (= lt!1784499 (hash!3511 hashF!1389 key!4968))))

(declare-fun lt!1784503 () Unit!112260)

(declare-fun lt!1784500 () Unit!112260)

(assert (=> b!4626353 (= lt!1784503 lt!1784500)))

(assert (=> b!4626353 (contains!14599 lt!1784421 (hash!3511 hashF!1389 key!4968))))

(assert (=> b!4626353 (= lt!1784500 (lemmaInGenMapThenLongMapContainsHash!508 lt!1784421 key!4968 hashF!1389))))

(declare-fun b!4626352 () Bool)

(declare-fun res!1940202 () Bool)

(assert (=> b!4626352 (=> (not res!1940202) (not e!2885861))))

(assert (=> b!4626352 (= res!1940202 (contains!14597 (extractMap!1566 (toList!4986 lt!1784421)) key!4968))))

(assert (=> d!1457337 e!2885861))

(declare-fun res!1940203 () Bool)

(assert (=> d!1457337 (=> (not res!1940203) (not e!2885861))))

(assert (=> d!1457337 (= res!1940203 (forall!10830 (toList!4986 lt!1784421) lambda!192314))))

(declare-fun lt!1784504 () Unit!112260)

(declare-fun choose!31337 (ListLongMap!3575 K!12925 Hashable!5907) Unit!112260)

(assert (=> d!1457337 (= lt!1784504 (choose!31337 lt!1784421 key!4968 hashF!1389))))

(assert (=> d!1457337 (forall!10830 (toList!4986 lt!1784421) lambda!192314)))

(assert (=> d!1457337 (= (lemmaInGenMapThenGetPairDefined!98 lt!1784421 key!4968 hashF!1389) lt!1784504)))

(declare-fun b!4626351 () Bool)

(declare-fun res!1940204 () Bool)

(assert (=> b!4626351 (=> (not res!1940204) (not e!2885861))))

(declare-fun allKeysSameHashInMap!1534 (ListLongMap!3575 Hashable!5907) Bool)

(assert (=> b!4626351 (= res!1940204 (allKeysSameHashInMap!1534 lt!1784421 hashF!1389))))

(declare-fun b!4626354 () Bool)

(declare-datatypes ((Option!11602 0))(
  ( (None!11601) (Some!11601 (v!45739 List!51670)) )
))
(declare-fun getValueByKey!1458 (List!51671 (_ BitVec 64)) Option!11602)

(assert (=> b!4626354 (= e!2885860 (= (getValueByKey!1458 (toList!4986 lt!1784421) lt!1784499) (Some!11601 lt!1784502)))))

(assert (= (and d!1457337 res!1940203) b!4626351))

(assert (= (and b!4626351 res!1940204) b!4626352))

(assert (= (and b!4626352 res!1940202) b!4626353))

(assert (= (and b!4626353 res!1940201) b!4626354))

(declare-fun m!5469049 () Bool)

(assert (=> b!4626354 m!5469049))

(declare-fun m!5469051 () Bool)

(assert (=> b!4626351 m!5469051))

(assert (=> b!4626353 m!5468907))

(declare-fun m!5469053 () Bool)

(assert (=> b!4626353 m!5469053))

(assert (=> b!4626353 m!5468905))

(declare-fun m!5469055 () Bool)

(assert (=> b!4626353 m!5469055))

(declare-fun m!5469057 () Bool)

(assert (=> b!4626353 m!5469057))

(assert (=> b!4626353 m!5468907))

(declare-fun m!5469059 () Bool)

(assert (=> b!4626353 m!5469059))

(declare-fun m!5469061 () Bool)

(assert (=> b!4626353 m!5469061))

(assert (=> b!4626353 m!5468907))

(assert (=> b!4626353 m!5469059))

(declare-fun m!5469063 () Bool)

(assert (=> b!4626353 m!5469063))

(declare-fun m!5469065 () Bool)

(assert (=> b!4626353 m!5469065))

(assert (=> b!4626353 m!5469063))

(declare-fun m!5469067 () Bool)

(assert (=> b!4626353 m!5469067))

(declare-fun m!5469069 () Bool)

(assert (=> b!4626352 m!5469069))

(assert (=> b!4626352 m!5469069))

(declare-fun m!5469071 () Bool)

(assert (=> b!4626352 m!5469071))

(declare-fun m!5469073 () Bool)

(assert (=> d!1457337 m!5469073))

(declare-fun m!5469075 () Bool)

(assert (=> d!1457337 m!5469075))

(assert (=> d!1457337 m!5469073))

(assert (=> b!4626260 d!1457337))

(declare-fun d!1457351 () Bool)

(declare-fun e!2885885 () Bool)

(assert (=> d!1457351 e!2885885))

(declare-fun res!1940222 () Bool)

(assert (=> d!1457351 (=> res!1940222 e!2885885)))

(declare-fun lt!1784523 () Bool)

(assert (=> d!1457351 (= res!1940222 (not lt!1784523))))

(declare-fun lt!1784522 () Bool)

(assert (=> d!1457351 (= lt!1784523 lt!1784522)))

(declare-fun lt!1784521 () Unit!112260)

(declare-fun e!2885884 () Unit!112260)

(assert (=> d!1457351 (= lt!1784521 e!2885884)))

(declare-fun c!791902 () Bool)

(assert (=> d!1457351 (= c!791902 lt!1784522)))

(declare-fun containsKey!2460 (List!51671 (_ BitVec 64)) Bool)

(assert (=> d!1457351 (= lt!1784522 (containsKey!2460 (toList!4986 lt!1784421) lt!1784406))))

(assert (=> d!1457351 (= (contains!14599 lt!1784421 lt!1784406) lt!1784523)))

(declare-fun b!4626386 () Bool)

(declare-fun lt!1784520 () Unit!112260)

(assert (=> b!4626386 (= e!2885884 lt!1784520)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1360 (List!51671 (_ BitVec 64)) Unit!112260)

(assert (=> b!4626386 (= lt!1784520 (lemmaContainsKeyImpliesGetValueByKeyDefined!1360 (toList!4986 lt!1784421) lt!1784406))))

(declare-fun isDefined!8867 (Option!11602) Bool)

(assert (=> b!4626386 (isDefined!8867 (getValueByKey!1458 (toList!4986 lt!1784421) lt!1784406))))

(declare-fun b!4626387 () Bool)

(declare-fun Unit!112263 () Unit!112260)

(assert (=> b!4626387 (= e!2885884 Unit!112263)))

(declare-fun b!4626388 () Bool)

(assert (=> b!4626388 (= e!2885885 (isDefined!8867 (getValueByKey!1458 (toList!4986 lt!1784421) lt!1784406)))))

(assert (= (and d!1457351 c!791902) b!4626386))

(assert (= (and d!1457351 (not c!791902)) b!4626387))

(assert (= (and d!1457351 (not res!1940222)) b!4626388))

(declare-fun m!5469079 () Bool)

(assert (=> d!1457351 m!5469079))

(declare-fun m!5469081 () Bool)

(assert (=> b!4626386 m!5469081))

(declare-fun m!5469083 () Bool)

(assert (=> b!4626386 m!5469083))

(assert (=> b!4626386 m!5469083))

(declare-fun m!5469085 () Bool)

(assert (=> b!4626386 m!5469085))

(assert (=> b!4626388 m!5469083))

(assert (=> b!4626388 m!5469083))

(assert (=> b!4626388 m!5469085))

(assert (=> b!4626260 d!1457351))

(declare-fun d!1457355 () Bool)

(declare-fun res!1940223 () Bool)

(declare-fun e!2885886 () Bool)

(assert (=> d!1457355 (=> res!1940223 e!2885886)))

(assert (=> d!1457355 (= res!1940223 (and ((_ is Cons!51546) (t!358706 oldBucket!40)) (= (_1!29537 (h!57600 (t!358706 oldBucket!40))) key!4968)))))

(assert (=> d!1457355 (= (containsKey!2458 (t!358706 oldBucket!40) key!4968) e!2885886)))

(declare-fun b!4626389 () Bool)

(declare-fun e!2885887 () Bool)

(assert (=> b!4626389 (= e!2885886 e!2885887)))

(declare-fun res!1940224 () Bool)

(assert (=> b!4626389 (=> (not res!1940224) (not e!2885887))))

(assert (=> b!4626389 (= res!1940224 ((_ is Cons!51546) (t!358706 oldBucket!40)))))

(declare-fun b!4626390 () Bool)

(assert (=> b!4626390 (= e!2885887 (containsKey!2458 (t!358706 (t!358706 oldBucket!40)) key!4968))))

(assert (= (and d!1457355 (not res!1940223)) b!4626389))

(assert (= (and b!4626389 res!1940224) b!4626390))

(declare-fun m!5469087 () Bool)

(assert (=> b!4626390 m!5469087))

(assert (=> b!4626260 d!1457355))

(declare-fun bs!1023938 () Bool)

(declare-fun d!1457357 () Bool)

(assert (= bs!1023938 (and d!1457357 b!4626260)))

(declare-fun lambda!192317 () Int)

(assert (=> bs!1023938 (= lambda!192317 lambda!192294)))

(declare-fun bs!1023939 () Bool)

(assert (= bs!1023939 (and d!1457357 d!1457337)))

(assert (=> bs!1023939 (= lambda!192317 lambda!192314)))

(assert (=> d!1457357 (contains!14599 lt!1784421 (hash!3511 hashF!1389 key!4968))))

(declare-fun lt!1784529 () Unit!112260)

(declare-fun choose!31338 (ListLongMap!3575 K!12925 Hashable!5907) Unit!112260)

(assert (=> d!1457357 (= lt!1784529 (choose!31338 lt!1784421 key!4968 hashF!1389))))

(assert (=> d!1457357 (forall!10830 (toList!4986 lt!1784421) lambda!192317)))

(assert (=> d!1457357 (= (lemmaInGenMapThenLongMapContainsHash!508 lt!1784421 key!4968 hashF!1389) lt!1784529)))

(declare-fun bs!1023940 () Bool)

(assert (= bs!1023940 d!1457357))

(assert (=> bs!1023940 m!5468907))

(assert (=> bs!1023940 m!5468907))

(assert (=> bs!1023940 m!5469053))

(declare-fun m!5469109 () Bool)

(assert (=> bs!1023940 m!5469109))

(declare-fun m!5469111 () Bool)

(assert (=> bs!1023940 m!5469111))

(assert (=> b!4626260 d!1457357))

(declare-fun d!1457365 () Bool)

(assert (=> d!1457365 (dynLambda!21501 lambda!192294 lt!1784419)))

(declare-fun lt!1784535 () Unit!112260)

(declare-fun choose!31339 (List!51671 Int tuple2!52488) Unit!112260)

(assert (=> d!1457365 (= lt!1784535 (choose!31339 lt!1784420 lambda!192294 lt!1784419))))

(declare-fun e!2885904 () Bool)

(assert (=> d!1457365 e!2885904))

(declare-fun res!1940240 () Bool)

(assert (=> d!1457365 (=> (not res!1940240) (not e!2885904))))

(assert (=> d!1457365 (= res!1940240 (forall!10830 lt!1784420 lambda!192294))))

(assert (=> d!1457365 (= (forallContained!3058 lt!1784420 lambda!192294 lt!1784419) lt!1784535)))

(declare-fun b!4626410 () Bool)

(assert (=> b!4626410 (= e!2885904 (contains!14598 lt!1784420 lt!1784419))))

(assert (= (and d!1457365 res!1940240) b!4626410))

(declare-fun b_lambda!170761 () Bool)

(assert (=> (not b_lambda!170761) (not d!1457365)))

(declare-fun m!5469113 () Bool)

(assert (=> d!1457365 m!5469113))

(declare-fun m!5469115 () Bool)

(assert (=> d!1457365 m!5469115))

(declare-fun m!5469117 () Bool)

(assert (=> d!1457365 m!5469117))

(assert (=> b!4626410 m!5468897))

(assert (=> b!4626260 d!1457365))

(declare-fun d!1457367 () Bool)

(declare-fun get!17088 (Option!11602) List!51670)

(assert (=> d!1457367 (= (apply!12175 lt!1784421 lt!1784406) (get!17088 (getValueByKey!1458 (toList!4986 lt!1784421) lt!1784406)))))

(declare-fun bs!1023941 () Bool)

(assert (= bs!1023941 d!1457367))

(assert (=> bs!1023941 m!5469083))

(assert (=> bs!1023941 m!5469083))

(declare-fun m!5469125 () Bool)

(assert (=> bs!1023941 m!5469125))

(assert (=> b!4626260 d!1457367))

(declare-fun d!1457371 () Bool)

(declare-fun content!8807 (List!51670) (InoxSet tuple2!52486))

(assert (=> d!1457371 (= (eq!825 lt!1784415 (+!1876 lt!1784428 lt!1784425)) (= (content!8807 (toList!4985 lt!1784415)) (content!8807 (toList!4985 (+!1876 lt!1784428 lt!1784425)))))))

(declare-fun bs!1023943 () Bool)

(assert (= bs!1023943 d!1457371))

(declare-fun m!5469129 () Bool)

(assert (=> bs!1023943 m!5469129))

(declare-fun m!5469131 () Bool)

(assert (=> bs!1023943 m!5469131))

(assert (=> b!4626269 d!1457371))

(declare-fun d!1457375 () Bool)

(declare-fun e!2885915 () Bool)

(assert (=> d!1457375 e!2885915))

(declare-fun res!1940253 () Bool)

(assert (=> d!1457375 (=> (not res!1940253) (not e!2885915))))

(declare-fun lt!1784549 () ListMap!4289)

(assert (=> d!1457375 (= res!1940253 (contains!14597 lt!1784549 (_1!29537 lt!1784425)))))

(declare-fun lt!1784551 () List!51670)

(assert (=> d!1457375 (= lt!1784549 (ListMap!4290 lt!1784551))))

(declare-fun lt!1784548 () Unit!112260)

(declare-fun lt!1784550 () Unit!112260)

(assert (=> d!1457375 (= lt!1784548 lt!1784550)))

(declare-datatypes ((Option!11603 0))(
  ( (None!11602) (Some!11602 (v!45740 V!13171)) )
))
(declare-fun getValueByKey!1459 (List!51670 K!12925) Option!11603)

(assert (=> d!1457375 (= (getValueByKey!1459 lt!1784551 (_1!29537 lt!1784425)) (Some!11602 (_2!29537 lt!1784425)))))

(declare-fun lemmaContainsTupThenGetReturnValue!851 (List!51670 K!12925 V!13171) Unit!112260)

(assert (=> d!1457375 (= lt!1784550 (lemmaContainsTupThenGetReturnValue!851 lt!1784551 (_1!29537 lt!1784425) (_2!29537 lt!1784425)))))

(declare-fun insertNoDuplicatedKeys!359 (List!51670 K!12925 V!13171) List!51670)

(assert (=> d!1457375 (= lt!1784551 (insertNoDuplicatedKeys!359 (toList!4985 lt!1784428) (_1!29537 lt!1784425) (_2!29537 lt!1784425)))))

(assert (=> d!1457375 (= (+!1876 lt!1784428 lt!1784425) lt!1784549)))

(declare-fun b!4626423 () Bool)

(declare-fun res!1940254 () Bool)

(assert (=> b!4626423 (=> (not res!1940254) (not e!2885915))))

(assert (=> b!4626423 (= res!1940254 (= (getValueByKey!1459 (toList!4985 lt!1784549) (_1!29537 lt!1784425)) (Some!11602 (_2!29537 lt!1784425))))))

(declare-fun b!4626424 () Bool)

(assert (=> b!4626424 (= e!2885915 (contains!14600 (toList!4985 lt!1784549) lt!1784425))))

(assert (= (and d!1457375 res!1940253) b!4626423))

(assert (= (and b!4626423 res!1940254) b!4626424))

(declare-fun m!5469141 () Bool)

(assert (=> d!1457375 m!5469141))

(declare-fun m!5469143 () Bool)

(assert (=> d!1457375 m!5469143))

(declare-fun m!5469145 () Bool)

(assert (=> d!1457375 m!5469145))

(declare-fun m!5469147 () Bool)

(assert (=> d!1457375 m!5469147))

(declare-fun m!5469149 () Bool)

(assert (=> b!4626423 m!5469149))

(declare-fun m!5469151 () Bool)

(assert (=> b!4626424 m!5469151))

(assert (=> b!4626269 d!1457375))

(declare-fun bs!1023945 () Bool)

(declare-fun d!1457381 () Bool)

(assert (= bs!1023945 (and d!1457381 b!4626260)))

(declare-fun lambda!192320 () Int)

(assert (=> bs!1023945 (= lambda!192320 lambda!192294)))

(declare-fun bs!1023946 () Bool)

(assert (= bs!1023946 (and d!1457381 d!1457337)))

(assert (=> bs!1023946 (= lambda!192320 lambda!192314)))

(declare-fun bs!1023947 () Bool)

(assert (= bs!1023947 (and d!1457381 d!1457357)))

(assert (=> bs!1023947 (= lambda!192320 lambda!192317)))

(declare-fun lt!1784566 () ListMap!4289)

(declare-fun invariantList!1207 (List!51670) Bool)

(assert (=> d!1457381 (invariantList!1207 (toList!4985 lt!1784566))))

(declare-fun e!2885921 () ListMap!4289)

(assert (=> d!1457381 (= lt!1784566 e!2885921)))

(declare-fun c!791907 () Bool)

(assert (=> d!1457381 (= c!791907 ((_ is Cons!51547) (Cons!51547 (tuple2!52489 hash!414 lt!1784411) Nil!51547)))))

(assert (=> d!1457381 (forall!10830 (Cons!51547 (tuple2!52489 hash!414 lt!1784411) Nil!51547) lambda!192320)))

(assert (=> d!1457381 (= (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 lt!1784411) Nil!51547)) lt!1784566)))

(declare-fun b!4626435 () Bool)

(assert (=> b!4626435 (= e!2885921 (addToMapMapFromBucket!971 (_2!29538 (h!57601 (Cons!51547 (tuple2!52489 hash!414 lt!1784411) Nil!51547))) (extractMap!1566 (t!358707 (Cons!51547 (tuple2!52489 hash!414 lt!1784411) Nil!51547)))))))

(declare-fun b!4626436 () Bool)

(assert (=> b!4626436 (= e!2885921 (ListMap!4290 Nil!51546))))

(assert (= (and d!1457381 c!791907) b!4626435))

(assert (= (and d!1457381 (not c!791907)) b!4626436))

(declare-fun m!5469165 () Bool)

(assert (=> d!1457381 m!5469165))

(declare-fun m!5469167 () Bool)

(assert (=> d!1457381 m!5469167))

(declare-fun m!5469169 () Bool)

(assert (=> b!4626435 m!5469169))

(assert (=> b!4626435 m!5469169))

(declare-fun m!5469171 () Bool)

(assert (=> b!4626435 m!5469171))

(assert (=> b!4626269 d!1457381))

(declare-fun bs!1023948 () Bool)

(declare-fun d!1457385 () Bool)

(assert (= bs!1023948 (and d!1457385 b!4626260)))

(declare-fun lambda!192323 () Int)

(assert (=> bs!1023948 (= lambda!192323 lambda!192294)))

(declare-fun bs!1023949 () Bool)

(assert (= bs!1023949 (and d!1457385 d!1457337)))

(assert (=> bs!1023949 (= lambda!192323 lambda!192314)))

(declare-fun bs!1023950 () Bool)

(assert (= bs!1023950 (and d!1457385 d!1457357)))

(assert (=> bs!1023950 (= lambda!192323 lambda!192317)))

(declare-fun bs!1023951 () Bool)

(assert (= bs!1023951 (and d!1457385 d!1457381)))

(assert (=> bs!1023951 (= lambda!192323 lambda!192320)))

(declare-fun lt!1784567 () ListMap!4289)

(assert (=> d!1457385 (invariantList!1207 (toList!4985 lt!1784567))))

(declare-fun e!2885922 () ListMap!4289)

(assert (=> d!1457385 (= lt!1784567 e!2885922)))

(declare-fun c!791908 () Bool)

(assert (=> d!1457385 (= c!791908 ((_ is Cons!51547) (Cons!51547 (tuple2!52489 hash!414 newBucket!224) Nil!51547)))))

(assert (=> d!1457385 (forall!10830 (Cons!51547 (tuple2!52489 hash!414 newBucket!224) Nil!51547) lambda!192323)))

(assert (=> d!1457385 (= (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 newBucket!224) Nil!51547)) lt!1784567)))

(declare-fun b!4626437 () Bool)

(assert (=> b!4626437 (= e!2885922 (addToMapMapFromBucket!971 (_2!29538 (h!57601 (Cons!51547 (tuple2!52489 hash!414 newBucket!224) Nil!51547))) (extractMap!1566 (t!358707 (Cons!51547 (tuple2!52489 hash!414 newBucket!224) Nil!51547)))))))

(declare-fun b!4626438 () Bool)

(assert (=> b!4626438 (= e!2885922 (ListMap!4290 Nil!51546))))

(assert (= (and d!1457385 c!791908) b!4626437))

(assert (= (and d!1457385 (not c!791908)) b!4626438))

(declare-fun m!5469173 () Bool)

(assert (=> d!1457385 m!5469173))

(declare-fun m!5469175 () Bool)

(assert (=> d!1457385 m!5469175))

(declare-fun m!5469177 () Bool)

(assert (=> b!4626437 m!5469177))

(assert (=> b!4626437 m!5469177))

(declare-fun m!5469179 () Bool)

(assert (=> b!4626437 m!5469179))

(assert (=> b!4626269 d!1457385))

(declare-fun b!4626456 () Bool)

(declare-fun e!2885931 () List!51670)

(declare-fun e!2885932 () List!51670)

(assert (=> b!4626456 (= e!2885931 e!2885932)))

(declare-fun c!791917 () Bool)

(assert (=> b!4626456 (= c!791917 ((_ is Cons!51546) (t!358706 oldBucket!40)))))

(declare-fun b!4626455 () Bool)

(assert (=> b!4626455 (= e!2885931 (t!358706 (t!358706 oldBucket!40)))))

(declare-fun b!4626457 () Bool)

(assert (=> b!4626457 (= e!2885932 (Cons!51546 (h!57600 (t!358706 oldBucket!40)) (removePairForKey!1133 (t!358706 (t!358706 oldBucket!40)) key!4968)))))

(declare-fun b!4626458 () Bool)

(assert (=> b!4626458 (= e!2885932 Nil!51546)))

(declare-fun d!1457387 () Bool)

(declare-fun lt!1784574 () List!51670)

(assert (=> d!1457387 (not (containsKey!2458 lt!1784574 key!4968))))

(assert (=> d!1457387 (= lt!1784574 e!2885931)))

(declare-fun c!791918 () Bool)

(assert (=> d!1457387 (= c!791918 (and ((_ is Cons!51546) (t!358706 oldBucket!40)) (= (_1!29537 (h!57600 (t!358706 oldBucket!40))) key!4968)))))

(assert (=> d!1457387 (noDuplicateKeys!1510 (t!358706 oldBucket!40))))

(assert (=> d!1457387 (= (removePairForKey!1133 (t!358706 oldBucket!40) key!4968) lt!1784574)))

(assert (= (and d!1457387 c!791918) b!4626455))

(assert (= (and d!1457387 (not c!791918)) b!4626456))

(assert (= (and b!4626456 c!791917) b!4626457))

(assert (= (and b!4626456 (not c!791917)) b!4626458))

(declare-fun m!5469197 () Bool)

(assert (=> b!4626457 m!5469197))

(declare-fun m!5469199 () Bool)

(assert (=> d!1457387 m!5469199))

(declare-fun m!5469201 () Bool)

(assert (=> d!1457387 m!5469201))

(assert (=> b!4626259 d!1457387))

(declare-fun b!4626460 () Bool)

(declare-fun e!2885933 () List!51670)

(declare-fun e!2885934 () List!51670)

(assert (=> b!4626460 (= e!2885933 e!2885934)))

(declare-fun c!791919 () Bool)

(assert (=> b!4626460 (= c!791919 ((_ is Cons!51546) oldBucket!40))))

(declare-fun b!4626459 () Bool)

(assert (=> b!4626459 (= e!2885933 (t!358706 oldBucket!40))))

(declare-fun b!4626461 () Bool)

(assert (=> b!4626461 (= e!2885934 (Cons!51546 (h!57600 oldBucket!40) (removePairForKey!1133 (t!358706 oldBucket!40) key!4968)))))

(declare-fun b!4626462 () Bool)

(assert (=> b!4626462 (= e!2885934 Nil!51546)))

(declare-fun d!1457393 () Bool)

(declare-fun lt!1784575 () List!51670)

(assert (=> d!1457393 (not (containsKey!2458 lt!1784575 key!4968))))

(assert (=> d!1457393 (= lt!1784575 e!2885933)))

(declare-fun c!791920 () Bool)

(assert (=> d!1457393 (= c!791920 (and ((_ is Cons!51546) oldBucket!40) (= (_1!29537 (h!57600 oldBucket!40)) key!4968)))))

(assert (=> d!1457393 (noDuplicateKeys!1510 oldBucket!40)))

(assert (=> d!1457393 (= (removePairForKey!1133 oldBucket!40 key!4968) lt!1784575)))

(assert (= (and d!1457393 c!791920) b!4626459))

(assert (= (and d!1457393 (not c!791920)) b!4626460))

(assert (= (and b!4626460 c!791919) b!4626461))

(assert (= (and b!4626460 (not c!791919)) b!4626462))

(assert (=> b!4626461 m!5468961))

(declare-fun m!5469203 () Bool)

(assert (=> d!1457393 m!5469203))

(assert (=> d!1457393 m!5468877))

(assert (=> b!4626270 d!1457393))

(declare-fun d!1457395 () Bool)

(assert (=> d!1457395 (eq!825 (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 lt!1784411) Nil!51547)) (-!550 (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 (t!358706 oldBucket!40)) Nil!51547)) key!4968))))

(declare-fun lt!1784594 () Unit!112260)

(declare-fun choose!31342 ((_ BitVec 64) List!51670 List!51670 K!12925 Hashable!5907) Unit!112260)

(assert (=> d!1457395 (= lt!1784594 (choose!31342 hash!414 (t!358706 oldBucket!40) lt!1784411 key!4968 hashF!1389))))

(assert (=> d!1457395 (noDuplicateKeys!1510 (t!358706 oldBucket!40))))

(assert (=> d!1457395 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!112 hash!414 (t!358706 oldBucket!40) lt!1784411 key!4968 hashF!1389) lt!1784594)))

(declare-fun bs!1023959 () Bool)

(assert (= bs!1023959 d!1457395))

(assert (=> bs!1023959 m!5468859))

(assert (=> bs!1023959 m!5469201))

(declare-fun m!5469205 () Bool)

(assert (=> bs!1023959 m!5469205))

(declare-fun m!5469207 () Bool)

(assert (=> bs!1023959 m!5469207))

(assert (=> bs!1023959 m!5469205))

(declare-fun m!5469209 () Bool)

(assert (=> bs!1023959 m!5469209))

(assert (=> bs!1023959 m!5468859))

(assert (=> bs!1023959 m!5469209))

(declare-fun m!5469211 () Bool)

(assert (=> bs!1023959 m!5469211))

(assert (=> b!4626263 d!1457395))

(declare-fun d!1457397 () Bool)

(declare-fun e!2885947 () Bool)

(assert (=> d!1457397 e!2885947))

(declare-fun res!1940267 () Bool)

(assert (=> d!1457397 (=> (not res!1940267) (not e!2885947))))

(declare-fun lt!1784596 () ListMap!4289)

(assert (=> d!1457397 (= res!1940267 (contains!14597 lt!1784596 (_1!29537 (h!57600 oldBucket!40))))))

(declare-fun lt!1784598 () List!51670)

(assert (=> d!1457397 (= lt!1784596 (ListMap!4290 lt!1784598))))

(declare-fun lt!1784595 () Unit!112260)

(declare-fun lt!1784597 () Unit!112260)

(assert (=> d!1457397 (= lt!1784595 lt!1784597)))

(assert (=> d!1457397 (= (getValueByKey!1459 lt!1784598 (_1!29537 (h!57600 oldBucket!40))) (Some!11602 (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> d!1457397 (= lt!1784597 (lemmaContainsTupThenGetReturnValue!851 lt!1784598 (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> d!1457397 (= lt!1784598 (insertNoDuplicatedKeys!359 (toList!4985 lt!1784418) (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> d!1457397 (= (+!1876 lt!1784418 (h!57600 oldBucket!40)) lt!1784596)))

(declare-fun b!4626481 () Bool)

(declare-fun res!1940268 () Bool)

(assert (=> b!4626481 (=> (not res!1940268) (not e!2885947))))

(assert (=> b!4626481 (= res!1940268 (= (getValueByKey!1459 (toList!4985 lt!1784596) (_1!29537 (h!57600 oldBucket!40))) (Some!11602 (_2!29537 (h!57600 oldBucket!40)))))))

(declare-fun b!4626482 () Bool)

(assert (=> b!4626482 (= e!2885947 (contains!14600 (toList!4985 lt!1784596) (h!57600 oldBucket!40)))))

(assert (= (and d!1457397 res!1940267) b!4626481))

(assert (= (and b!4626481 res!1940268) b!4626482))

(declare-fun m!5469213 () Bool)

(assert (=> d!1457397 m!5469213))

(declare-fun m!5469215 () Bool)

(assert (=> d!1457397 m!5469215))

(declare-fun m!5469217 () Bool)

(assert (=> d!1457397 m!5469217))

(declare-fun m!5469219 () Bool)

(assert (=> d!1457397 m!5469219))

(declare-fun m!5469221 () Bool)

(assert (=> b!4626481 m!5469221))

(declare-fun m!5469223 () Bool)

(assert (=> b!4626482 m!5469223))

(assert (=> b!4626263 d!1457397))

(declare-fun d!1457399 () Bool)

(assert (=> d!1457399 (= (eq!825 lt!1784428 lt!1784418) (= (content!8807 (toList!4985 lt!1784428)) (content!8807 (toList!4985 lt!1784418))))))

(declare-fun bs!1023960 () Bool)

(assert (= bs!1023960 d!1457399))

(declare-fun m!5469225 () Bool)

(assert (=> bs!1023960 m!5469225))

(declare-fun m!5469227 () Bool)

(assert (=> bs!1023960 m!5469227))

(assert (=> b!4626263 d!1457399))

(declare-fun d!1457401 () Bool)

(assert (=> d!1457401 (= (-!550 (+!1876 lt!1784423 (tuple2!52487 (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40)))) key!4968) (+!1876 (-!550 lt!1784423 key!4968) (tuple2!52487 (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40)))))))

(declare-fun lt!1784614 () Unit!112260)

(declare-fun choose!31343 (ListMap!4289 K!12925 V!13171 K!12925) Unit!112260)

(assert (=> d!1457401 (= lt!1784614 (choose!31343 lt!1784423 (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40)) key!4968))))

(assert (=> d!1457401 (not (= (_1!29537 (h!57600 oldBucket!40)) key!4968))))

(assert (=> d!1457401 (= (addRemoveCommutativeForDiffKeys!5 lt!1784423 (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40)) key!4968) lt!1784614)))

(declare-fun bs!1023966 () Bool)

(assert (= bs!1023966 d!1457401))

(declare-fun m!5469269 () Bool)

(assert (=> bs!1023966 m!5469269))

(assert (=> bs!1023966 m!5469269))

(declare-fun m!5469271 () Bool)

(assert (=> bs!1023966 m!5469271))

(assert (=> bs!1023966 m!5468871))

(assert (=> bs!1023966 m!5468871))

(declare-fun m!5469273 () Bool)

(assert (=> bs!1023966 m!5469273))

(declare-fun m!5469275 () Bool)

(assert (=> bs!1023966 m!5469275))

(assert (=> b!4626263 d!1457401))

(declare-fun d!1457417 () Bool)

(declare-fun e!2885968 () Bool)

(assert (=> d!1457417 e!2885968))

(declare-fun res!1940278 () Bool)

(assert (=> d!1457417 (=> (not res!1940278) (not e!2885968))))

(declare-fun lt!1784621 () ListMap!4289)

(assert (=> d!1457417 (= res!1940278 (not (contains!14597 lt!1784621 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!256 (List!51670 K!12925) List!51670)

(assert (=> d!1457417 (= lt!1784621 (ListMap!4290 (removePresrvNoDuplicatedKeys!256 (toList!4985 lt!1784423) key!4968)))))

(assert (=> d!1457417 (= (-!550 lt!1784423 key!4968) lt!1784621)))

(declare-fun b!4626520 () Bool)

(declare-datatypes ((List!51673 0))(
  ( (Nil!51549) (Cons!51549 (h!57605 K!12925) (t!358711 List!51673)) )
))
(declare-fun content!8810 (List!51673) (InoxSet K!12925))

(declare-fun keys!18162 (ListMap!4289) List!51673)

(assert (=> b!4626520 (= e!2885968 (= ((_ map and) (content!8810 (keys!18162 lt!1784423)) ((_ map not) (store ((as const (Array K!12925 Bool)) false) key!4968 true))) (content!8810 (keys!18162 lt!1784621))))))

(assert (= (and d!1457417 res!1940278) b!4626520))

(declare-fun m!5469295 () Bool)

(assert (=> d!1457417 m!5469295))

(declare-fun m!5469297 () Bool)

(assert (=> d!1457417 m!5469297))

(declare-fun m!5469299 () Bool)

(assert (=> b!4626520 m!5469299))

(declare-fun m!5469301 () Bool)

(assert (=> b!4626520 m!5469301))

(declare-fun m!5469303 () Bool)

(assert (=> b!4626520 m!5469303))

(assert (=> b!4626520 m!5469301))

(declare-fun m!5469305 () Bool)

(assert (=> b!4626520 m!5469305))

(assert (=> b!4626520 m!5469299))

(declare-fun m!5469307 () Bool)

(assert (=> b!4626520 m!5469307))

(assert (=> b!4626263 d!1457417))

(declare-fun d!1457425 () Bool)

(declare-fun e!2885969 () Bool)

(assert (=> d!1457425 e!2885969))

(declare-fun res!1940279 () Bool)

(assert (=> d!1457425 (=> (not res!1940279) (not e!2885969))))

(declare-fun lt!1784622 () ListMap!4289)

(assert (=> d!1457425 (= res!1940279 (not (contains!14597 lt!1784622 key!4968)))))

(assert (=> d!1457425 (= lt!1784622 (ListMap!4290 (removePresrvNoDuplicatedKeys!256 (toList!4985 (+!1876 lt!1784423 (h!57600 oldBucket!40))) key!4968)))))

(assert (=> d!1457425 (= (-!550 (+!1876 lt!1784423 (h!57600 oldBucket!40)) key!4968) lt!1784622)))

(declare-fun b!4626521 () Bool)

(assert (=> b!4626521 (= e!2885969 (= ((_ map and) (content!8810 (keys!18162 (+!1876 lt!1784423 (h!57600 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12925 Bool)) false) key!4968 true))) (content!8810 (keys!18162 lt!1784622))))))

(assert (= (and d!1457425 res!1940279) b!4626521))

(declare-fun m!5469309 () Bool)

(assert (=> d!1457425 m!5469309))

(declare-fun m!5469311 () Bool)

(assert (=> d!1457425 m!5469311))

(declare-fun m!5469313 () Bool)

(assert (=> b!4626521 m!5469313))

(assert (=> b!4626521 m!5468863))

(declare-fun m!5469315 () Bool)

(assert (=> b!4626521 m!5469315))

(assert (=> b!4626521 m!5469303))

(assert (=> b!4626521 m!5469315))

(declare-fun m!5469317 () Bool)

(assert (=> b!4626521 m!5469317))

(assert (=> b!4626521 m!5469313))

(declare-fun m!5469319 () Bool)

(assert (=> b!4626521 m!5469319))

(assert (=> b!4626263 d!1457425))

(declare-fun d!1457427 () Bool)

(declare-fun e!2885970 () Bool)

(assert (=> d!1457427 e!2885970))

(declare-fun res!1940280 () Bool)

(assert (=> d!1457427 (=> (not res!1940280) (not e!2885970))))

(declare-fun lt!1784624 () ListMap!4289)

(assert (=> d!1457427 (= res!1940280 (contains!14597 lt!1784624 (_1!29537 (h!57600 oldBucket!40))))))

(declare-fun lt!1784626 () List!51670)

(assert (=> d!1457427 (= lt!1784624 (ListMap!4290 lt!1784626))))

(declare-fun lt!1784623 () Unit!112260)

(declare-fun lt!1784625 () Unit!112260)

(assert (=> d!1457427 (= lt!1784623 lt!1784625)))

(assert (=> d!1457427 (= (getValueByKey!1459 lt!1784626 (_1!29537 (h!57600 oldBucket!40))) (Some!11602 (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> d!1457427 (= lt!1784625 (lemmaContainsTupThenGetReturnValue!851 lt!1784626 (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> d!1457427 (= lt!1784626 (insertNoDuplicatedKeys!359 (toList!4985 lt!1784423) (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> d!1457427 (= (+!1876 lt!1784423 (h!57600 oldBucket!40)) lt!1784624)))

(declare-fun b!4626522 () Bool)

(declare-fun res!1940281 () Bool)

(assert (=> b!4626522 (=> (not res!1940281) (not e!2885970))))

(assert (=> b!4626522 (= res!1940281 (= (getValueByKey!1459 (toList!4985 lt!1784624) (_1!29537 (h!57600 oldBucket!40))) (Some!11602 (_2!29537 (h!57600 oldBucket!40)))))))

(declare-fun b!4626523 () Bool)

(assert (=> b!4626523 (= e!2885970 (contains!14600 (toList!4985 lt!1784624) (h!57600 oldBucket!40)))))

(assert (= (and d!1457427 res!1940280) b!4626522))

(assert (= (and b!4626522 res!1940281) b!4626523))

(declare-fun m!5469321 () Bool)

(assert (=> d!1457427 m!5469321))

(declare-fun m!5469323 () Bool)

(assert (=> d!1457427 m!5469323))

(declare-fun m!5469325 () Bool)

(assert (=> d!1457427 m!5469325))

(declare-fun m!5469327 () Bool)

(assert (=> d!1457427 m!5469327))

(declare-fun m!5469329 () Bool)

(assert (=> b!4626522 m!5469329))

(declare-fun m!5469331 () Bool)

(assert (=> b!4626523 m!5469331))

(assert (=> b!4626263 d!1457427))

(declare-fun b!4626525 () Bool)

(declare-fun e!2885971 () List!51670)

(declare-fun e!2885972 () List!51670)

(assert (=> b!4626525 (= e!2885971 e!2885972)))

(declare-fun c!791939 () Bool)

(assert (=> b!4626525 (= c!791939 ((_ is Cons!51546) lt!1784409))))

(declare-fun b!4626524 () Bool)

(assert (=> b!4626524 (= e!2885971 (t!358706 lt!1784409))))

(declare-fun b!4626526 () Bool)

(assert (=> b!4626526 (= e!2885972 (Cons!51546 (h!57600 lt!1784409) (removePairForKey!1133 (t!358706 lt!1784409) key!4968)))))

(declare-fun b!4626527 () Bool)

(assert (=> b!4626527 (= e!2885972 Nil!51546)))

(declare-fun d!1457429 () Bool)

(declare-fun lt!1784627 () List!51670)

(assert (=> d!1457429 (not (containsKey!2458 lt!1784627 key!4968))))

(assert (=> d!1457429 (= lt!1784627 e!2885971)))

(declare-fun c!791940 () Bool)

(assert (=> d!1457429 (= c!791940 (and ((_ is Cons!51546) lt!1784409) (= (_1!29537 (h!57600 lt!1784409)) key!4968)))))

(assert (=> d!1457429 (noDuplicateKeys!1510 lt!1784409)))

(assert (=> d!1457429 (= (removePairForKey!1133 lt!1784409 key!4968) lt!1784627)))

(assert (= (and d!1457429 c!791940) b!4626524))

(assert (= (and d!1457429 (not c!791940)) b!4626525))

(assert (= (and b!4626525 c!791939) b!4626526))

(assert (= (and b!4626525 (not c!791939)) b!4626527))

(declare-fun m!5469333 () Bool)

(assert (=> b!4626526 m!5469333))

(declare-fun m!5469335 () Bool)

(assert (=> d!1457429 m!5469335))

(declare-fun m!5469337 () Bool)

(assert (=> d!1457429 m!5469337))

(assert (=> b!4626261 d!1457429))

(declare-fun d!1457431 () Bool)

(assert (=> d!1457431 (= (tail!8145 newBucket!224) (t!358706 newBucket!224))))

(assert (=> b!4626261 d!1457431))

(declare-fun d!1457433 () Bool)

(assert (=> d!1457433 (= (tail!8145 oldBucket!40) (t!358706 oldBucket!40))))

(assert (=> b!4626261 d!1457433))

(declare-fun b!4626552 () Bool)

(declare-fun e!2885995 () Bool)

(declare-fun contains!14603 (List!51673 K!12925) Bool)

(assert (=> b!4626552 (= e!2885995 (not (contains!14603 (keys!18162 lt!1784422) key!4968)))))

(declare-fun d!1457435 () Bool)

(declare-fun e!2885991 () Bool)

(assert (=> d!1457435 e!2885991))

(declare-fun res!1940295 () Bool)

(assert (=> d!1457435 (=> res!1940295 e!2885991)))

(assert (=> d!1457435 (= res!1940295 e!2885995)))

(declare-fun res!1940296 () Bool)

(assert (=> d!1457435 (=> (not res!1940296) (not e!2885995))))

(declare-fun lt!1784658 () Bool)

(assert (=> d!1457435 (= res!1940296 (not lt!1784658))))

(declare-fun lt!1784660 () Bool)

(assert (=> d!1457435 (= lt!1784658 lt!1784660)))

(declare-fun lt!1784659 () Unit!112260)

(declare-fun e!2885992 () Unit!112260)

(assert (=> d!1457435 (= lt!1784659 e!2885992)))

(declare-fun c!791948 () Bool)

(assert (=> d!1457435 (= c!791948 lt!1784660)))

(declare-fun containsKey!2462 (List!51670 K!12925) Bool)

(assert (=> d!1457435 (= lt!1784660 (containsKey!2462 (toList!4985 lt!1784422) key!4968))))

(assert (=> d!1457435 (= (contains!14597 lt!1784422 key!4968) lt!1784658)))

(declare-fun b!4626553 () Bool)

(declare-fun e!2885994 () List!51673)

(declare-fun getKeysList!659 (List!51670) List!51673)

(assert (=> b!4626553 (= e!2885994 (getKeysList!659 (toList!4985 lt!1784422)))))

(declare-fun b!4626554 () Bool)

(declare-fun e!2885993 () Bool)

(assert (=> b!4626554 (= e!2885993 (contains!14603 (keys!18162 lt!1784422) key!4968))))

(declare-fun b!4626555 () Bool)

(declare-fun lt!1784661 () Unit!112260)

(assert (=> b!4626555 (= e!2885992 lt!1784661)))

(declare-fun lt!1784662 () Unit!112260)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1362 (List!51670 K!12925) Unit!112260)

(assert (=> b!4626555 (= lt!1784662 (lemmaContainsKeyImpliesGetValueByKeyDefined!1362 (toList!4985 lt!1784422) key!4968))))

(declare-fun isDefined!8869 (Option!11603) Bool)

(assert (=> b!4626555 (isDefined!8869 (getValueByKey!1459 (toList!4985 lt!1784422) key!4968))))

(declare-fun lt!1784656 () Unit!112260)

(assert (=> b!4626555 (= lt!1784656 lt!1784662)))

(declare-fun lemmaInListThenGetKeysListContains!654 (List!51670 K!12925) Unit!112260)

(assert (=> b!4626555 (= lt!1784661 (lemmaInListThenGetKeysListContains!654 (toList!4985 lt!1784422) key!4968))))

(declare-fun call!322707 () Bool)

(assert (=> b!4626555 call!322707))

(declare-fun b!4626556 () Bool)

(assert (=> b!4626556 (= e!2885991 e!2885993)))

(declare-fun res!1940294 () Bool)

(assert (=> b!4626556 (=> (not res!1940294) (not e!2885993))))

(assert (=> b!4626556 (= res!1940294 (isDefined!8869 (getValueByKey!1459 (toList!4985 lt!1784422) key!4968)))))

(declare-fun b!4626557 () Bool)

(declare-fun e!2885990 () Unit!112260)

(declare-fun Unit!112266 () Unit!112260)

(assert (=> b!4626557 (= e!2885990 Unit!112266)))

(declare-fun b!4626558 () Bool)

(assert (=> b!4626558 false))

(declare-fun lt!1784655 () Unit!112260)

(declare-fun lt!1784657 () Unit!112260)

(assert (=> b!4626558 (= lt!1784655 lt!1784657)))

(assert (=> b!4626558 (containsKey!2462 (toList!4985 lt!1784422) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!658 (List!51670 K!12925) Unit!112260)

(assert (=> b!4626558 (= lt!1784657 (lemmaInGetKeysListThenContainsKey!658 (toList!4985 lt!1784422) key!4968))))

(declare-fun Unit!112267 () Unit!112260)

(assert (=> b!4626558 (= e!2885990 Unit!112267)))

(declare-fun bm!322702 () Bool)

(assert (=> bm!322702 (= call!322707 (contains!14603 e!2885994 key!4968))))

(declare-fun c!791949 () Bool)

(assert (=> bm!322702 (= c!791949 c!791948)))

(declare-fun b!4626559 () Bool)

(assert (=> b!4626559 (= e!2885994 (keys!18162 lt!1784422))))

(declare-fun b!4626560 () Bool)

(assert (=> b!4626560 (= e!2885992 e!2885990)))

(declare-fun c!791947 () Bool)

(assert (=> b!4626560 (= c!791947 call!322707)))

(assert (= (and d!1457435 c!791948) b!4626555))

(assert (= (and d!1457435 (not c!791948)) b!4626560))

(assert (= (and b!4626560 c!791947) b!4626558))

(assert (= (and b!4626560 (not c!791947)) b!4626557))

(assert (= (or b!4626555 b!4626560) bm!322702))

(assert (= (and bm!322702 c!791949) b!4626553))

(assert (= (and bm!322702 (not c!791949)) b!4626559))

(assert (= (and d!1457435 res!1940296) b!4626552))

(assert (= (and d!1457435 (not res!1940295)) b!4626556))

(assert (= (and b!4626556 res!1940294) b!4626554))

(declare-fun m!5469385 () Bool)

(assert (=> b!4626558 m!5469385))

(declare-fun m!5469387 () Bool)

(assert (=> b!4626558 m!5469387))

(declare-fun m!5469389 () Bool)

(assert (=> b!4626555 m!5469389))

(declare-fun m!5469391 () Bool)

(assert (=> b!4626555 m!5469391))

(assert (=> b!4626555 m!5469391))

(declare-fun m!5469393 () Bool)

(assert (=> b!4626555 m!5469393))

(declare-fun m!5469395 () Bool)

(assert (=> b!4626555 m!5469395))

(declare-fun m!5469397 () Bool)

(assert (=> b!4626553 m!5469397))

(declare-fun m!5469399 () Bool)

(assert (=> b!4626554 m!5469399))

(assert (=> b!4626554 m!5469399))

(declare-fun m!5469401 () Bool)

(assert (=> b!4626554 m!5469401))

(assert (=> b!4626552 m!5469399))

(assert (=> b!4626552 m!5469399))

(assert (=> b!4626552 m!5469401))

(assert (=> b!4626556 m!5469391))

(assert (=> b!4626556 m!5469391))

(assert (=> b!4626556 m!5469393))

(assert (=> d!1457435 m!5469385))

(declare-fun m!5469403 () Bool)

(assert (=> bm!322702 m!5469403))

(assert (=> b!4626559 m!5469399))

(assert (=> b!4626262 d!1457435))

(declare-fun bs!1023970 () Bool)

(declare-fun d!1457445 () Bool)

(assert (= bs!1023970 (and d!1457445 d!1457337)))

(declare-fun lambda!192330 () Int)

(assert (=> bs!1023970 (= lambda!192330 lambda!192314)))

(declare-fun bs!1023971 () Bool)

(assert (= bs!1023971 (and d!1457445 d!1457381)))

(assert (=> bs!1023971 (= lambda!192330 lambda!192320)))

(declare-fun bs!1023972 () Bool)

(assert (= bs!1023972 (and d!1457445 b!4626260)))

(assert (=> bs!1023972 (= lambda!192330 lambda!192294)))

(declare-fun bs!1023973 () Bool)

(assert (= bs!1023973 (and d!1457445 d!1457385)))

(assert (=> bs!1023973 (= lambda!192330 lambda!192323)))

(declare-fun bs!1023974 () Bool)

(assert (= bs!1023974 (and d!1457445 d!1457357)))

(assert (=> bs!1023974 (= lambda!192330 lambda!192317)))

(declare-fun lt!1784663 () ListMap!4289)

(assert (=> d!1457445 (invariantList!1207 (toList!4985 lt!1784663))))

(declare-fun e!2885996 () ListMap!4289)

(assert (=> d!1457445 (= lt!1784663 e!2885996)))

(declare-fun c!791950 () Bool)

(assert (=> d!1457445 (= c!791950 ((_ is Cons!51547) lt!1784420))))

(assert (=> d!1457445 (forall!10830 lt!1784420 lambda!192330)))

(assert (=> d!1457445 (= (extractMap!1566 lt!1784420) lt!1784663)))

(declare-fun b!4626561 () Bool)

(assert (=> b!4626561 (= e!2885996 (addToMapMapFromBucket!971 (_2!29538 (h!57601 lt!1784420)) (extractMap!1566 (t!358707 lt!1784420))))))

(declare-fun b!4626562 () Bool)

(assert (=> b!4626562 (= e!2885996 (ListMap!4290 Nil!51546))))

(assert (= (and d!1457445 c!791950) b!4626561))

(assert (= (and d!1457445 (not c!791950)) b!4626562))

(declare-fun m!5469405 () Bool)

(assert (=> d!1457445 m!5469405))

(declare-fun m!5469407 () Bool)

(assert (=> d!1457445 m!5469407))

(declare-fun m!5469409 () Bool)

(assert (=> b!4626561 m!5469409))

(assert (=> b!4626561 m!5469409))

(declare-fun m!5469411 () Bool)

(assert (=> b!4626561 m!5469411))

(assert (=> b!4626262 d!1457445))

(declare-fun d!1457447 () Bool)

(declare-fun res!1940301 () Bool)

(declare-fun e!2886001 () Bool)

(assert (=> d!1457447 (=> res!1940301 e!2886001)))

(assert (=> d!1457447 (= res!1940301 (not ((_ is Cons!51546) newBucket!224)))))

(assert (=> d!1457447 (= (noDuplicateKeys!1510 newBucket!224) e!2886001)))

(declare-fun b!4626567 () Bool)

(declare-fun e!2886002 () Bool)

(assert (=> b!4626567 (= e!2886001 e!2886002)))

(declare-fun res!1940302 () Bool)

(assert (=> b!4626567 (=> (not res!1940302) (not e!2886002))))

(assert (=> b!4626567 (= res!1940302 (not (containsKey!2458 (t!358706 newBucket!224) (_1!29537 (h!57600 newBucket!224)))))))

(declare-fun b!4626568 () Bool)

(assert (=> b!4626568 (= e!2886002 (noDuplicateKeys!1510 (t!358706 newBucket!224)))))

(assert (= (and d!1457447 (not res!1940301)) b!4626567))

(assert (= (and b!4626567 res!1940302) b!4626568))

(declare-fun m!5469413 () Bool)

(assert (=> b!4626567 m!5469413))

(declare-fun m!5469415 () Bool)

(assert (=> b!4626568 m!5469415))

(assert (=> b!4626265 d!1457447))

(declare-fun d!1457449 () Bool)

(declare-fun hash!3514 (Hashable!5907 K!12925) (_ BitVec 64))

(assert (=> d!1457449 (= (hash!3511 hashF!1389 key!4968) (hash!3514 hashF!1389 key!4968))))

(declare-fun bs!1023975 () Bool)

(assert (= bs!1023975 d!1457449))

(declare-fun m!5469417 () Bool)

(assert (=> bs!1023975 m!5469417))

(assert (=> b!4626255 d!1457449))

(declare-fun d!1457451 () Bool)

(declare-fun res!1940303 () Bool)

(declare-fun e!2886003 () Bool)

(assert (=> d!1457451 (=> res!1940303 e!2886003)))

(assert (=> d!1457451 (= res!1940303 (not ((_ is Cons!51546) oldBucket!40)))))

(assert (=> d!1457451 (= (noDuplicateKeys!1510 oldBucket!40) e!2886003)))

(declare-fun b!4626569 () Bool)

(declare-fun e!2886004 () Bool)

(assert (=> b!4626569 (= e!2886003 e!2886004)))

(declare-fun res!1940304 () Bool)

(assert (=> b!4626569 (=> (not res!1940304) (not e!2886004))))

(assert (=> b!4626569 (= res!1940304 (not (containsKey!2458 (t!358706 oldBucket!40) (_1!29537 (h!57600 oldBucket!40)))))))

(declare-fun b!4626570 () Bool)

(assert (=> b!4626570 (= e!2886004 (noDuplicateKeys!1510 (t!358706 oldBucket!40)))))

(assert (= (and d!1457451 (not res!1940303)) b!4626569))

(assert (= (and b!4626569 res!1940304) b!4626570))

(declare-fun m!5469419 () Bool)

(assert (=> b!4626569 m!5469419))

(assert (=> b!4626570 m!5469201))

(assert (=> start!463760 d!1457451))

(declare-fun bs!1023976 () Bool)

(declare-fun d!1457453 () Bool)

(assert (= bs!1023976 (and d!1457453 d!1457319)))

(declare-fun lambda!192331 () Int)

(assert (=> bs!1023976 (= lambda!192331 lambda!192297)))

(assert (=> d!1457453 true))

(assert (=> d!1457453 true))

(assert (=> d!1457453 (= (allKeysSameHash!1364 oldBucket!40 hash!414 hashF!1389) (forall!10831 oldBucket!40 lambda!192331))))

(declare-fun bs!1023977 () Bool)

(assert (= bs!1023977 d!1457453))

(declare-fun m!5469421 () Bool)

(assert (=> bs!1023977 m!5469421))

(assert (=> b!4626266 d!1457453))

(declare-fun bs!1023979 () Bool)

(declare-fun b!4626595 () Bool)

(assert (= bs!1023979 (and b!4626595 d!1457319)))

(declare-fun lambda!192388 () Int)

(assert (=> bs!1023979 (not (= lambda!192388 lambda!192297))))

(declare-fun bs!1023980 () Bool)

(assert (= bs!1023980 (and b!4626595 d!1457453)))

(assert (=> bs!1023980 (not (= lambda!192388 lambda!192331))))

(assert (=> b!4626595 true))

(declare-fun bs!1023981 () Bool)

(declare-fun b!4626594 () Bool)

(assert (= bs!1023981 (and b!4626594 d!1457319)))

(declare-fun lambda!192389 () Int)

(assert (=> bs!1023981 (not (= lambda!192389 lambda!192297))))

(declare-fun bs!1023982 () Bool)

(assert (= bs!1023982 (and b!4626594 d!1457453)))

(assert (=> bs!1023982 (not (= lambda!192389 lambda!192331))))

(declare-fun bs!1023983 () Bool)

(assert (= bs!1023983 (and b!4626594 b!4626595)))

(assert (=> bs!1023983 (= lambda!192389 lambda!192388)))

(assert (=> b!4626594 true))

(declare-fun lambda!192390 () Int)

(assert (=> bs!1023981 (not (= lambda!192390 lambda!192297))))

(assert (=> bs!1023982 (not (= lambda!192390 lambda!192331))))

(declare-fun lt!1784759 () ListMap!4289)

(assert (=> bs!1023983 (= (= lt!1784759 lt!1784410) (= lambda!192390 lambda!192388))))

(assert (=> b!4626594 (= (= lt!1784759 lt!1784410) (= lambda!192390 lambda!192389))))

(assert (=> b!4626594 true))

(declare-fun bs!1023985 () Bool)

(declare-fun d!1457455 () Bool)

(assert (= bs!1023985 (and d!1457455 b!4626594)))

(declare-fun lambda!192392 () Int)

(declare-fun lt!1784768 () ListMap!4289)

(assert (=> bs!1023985 (= (= lt!1784768 lt!1784410) (= lambda!192392 lambda!192389))))

(declare-fun bs!1023986 () Bool)

(assert (= bs!1023986 (and d!1457455 d!1457319)))

(assert (=> bs!1023986 (not (= lambda!192392 lambda!192297))))

(assert (=> bs!1023985 (= (= lt!1784768 lt!1784759) (= lambda!192392 lambda!192390))))

(declare-fun bs!1023989 () Bool)

(assert (= bs!1023989 (and d!1457455 d!1457453)))

(assert (=> bs!1023989 (not (= lambda!192392 lambda!192331))))

(declare-fun bs!1023990 () Bool)

(assert (= bs!1023990 (and d!1457455 b!4626595)))

(assert (=> bs!1023990 (= (= lt!1784768 lt!1784410) (= lambda!192392 lambda!192388))))

(assert (=> d!1457455 true))

(declare-fun c!791955 () Bool)

(declare-fun bm!322715 () Bool)

(declare-fun call!322722 () Bool)

(assert (=> bm!322715 (= call!322722 (forall!10831 (toList!4985 lt!1784410) (ite c!791955 lambda!192388 lambda!192390)))))

(declare-fun b!4626591 () Bool)

(declare-fun res!1940319 () Bool)

(declare-fun e!2886018 () Bool)

(assert (=> b!4626591 (=> (not res!1940319) (not e!2886018))))

(assert (=> b!4626591 (= res!1940319 (forall!10831 (toList!4985 lt!1784410) lambda!192392))))

(declare-fun bm!322716 () Bool)

(declare-fun call!322720 () Unit!112260)

(declare-fun lemmaContainsAllItsOwnKeys!509 (ListMap!4289) Unit!112260)

(assert (=> bm!322716 (= call!322720 (lemmaContainsAllItsOwnKeys!509 lt!1784410))))

(assert (=> d!1457455 e!2886018))

(declare-fun res!1940318 () Bool)

(assert (=> d!1457455 (=> (not res!1940318) (not e!2886018))))

(assert (=> d!1457455 (= res!1940318 (forall!10831 oldBucket!40 lambda!192392))))

(declare-fun e!2886019 () ListMap!4289)

(assert (=> d!1457455 (= lt!1784768 e!2886019)))

(assert (=> d!1457455 (= c!791955 ((_ is Nil!51546) oldBucket!40))))

(assert (=> d!1457455 (noDuplicateKeys!1510 oldBucket!40)))

(assert (=> d!1457455 (= (addToMapMapFromBucket!971 oldBucket!40 lt!1784410) lt!1784768)))

(declare-fun b!4626592 () Bool)

(declare-fun e!2886017 () Bool)

(assert (=> b!4626592 (= e!2886017 (forall!10831 (toList!4985 lt!1784410) lambda!192390))))

(declare-fun b!4626593 () Bool)

(assert (=> b!4626593 (= e!2886018 (invariantList!1207 (toList!4985 lt!1784768)))))

(declare-fun call!322721 () Bool)

(declare-fun bm!322717 () Bool)

(assert (=> bm!322717 (= call!322721 (forall!10831 (ite c!791955 (toList!4985 lt!1784410) oldBucket!40) (ite c!791955 lambda!192388 lambda!192390)))))

(assert (=> b!4626594 (= e!2886019 lt!1784759)))

(declare-fun lt!1784769 () ListMap!4289)

(assert (=> b!4626594 (= lt!1784769 (+!1876 lt!1784410 (h!57600 oldBucket!40)))))

(assert (=> b!4626594 (= lt!1784759 (addToMapMapFromBucket!971 (t!358706 oldBucket!40) (+!1876 lt!1784410 (h!57600 oldBucket!40))))))

(declare-fun lt!1784761 () Unit!112260)

(assert (=> b!4626594 (= lt!1784761 call!322720)))

(assert (=> b!4626594 (forall!10831 (toList!4985 lt!1784410) lambda!192389)))

(declare-fun lt!1784765 () Unit!112260)

(assert (=> b!4626594 (= lt!1784765 lt!1784761)))

(assert (=> b!4626594 (forall!10831 (toList!4985 lt!1784769) lambda!192390)))

(declare-fun lt!1784753 () Unit!112260)

(declare-fun Unit!112268 () Unit!112260)

(assert (=> b!4626594 (= lt!1784753 Unit!112268)))

(assert (=> b!4626594 (forall!10831 (t!358706 oldBucket!40) lambda!192390)))

(declare-fun lt!1784763 () Unit!112260)

(declare-fun Unit!112269 () Unit!112260)

(assert (=> b!4626594 (= lt!1784763 Unit!112269)))

(declare-fun lt!1784757 () Unit!112260)

(declare-fun Unit!112270 () Unit!112260)

(assert (=> b!4626594 (= lt!1784757 Unit!112270)))

(declare-fun lt!1784767 () Unit!112260)

(declare-fun forallContained!3059 (List!51670 Int tuple2!52486) Unit!112260)

(assert (=> b!4626594 (= lt!1784767 (forallContained!3059 (toList!4985 lt!1784769) lambda!192390 (h!57600 oldBucket!40)))))

(assert (=> b!4626594 (contains!14597 lt!1784769 (_1!29537 (h!57600 oldBucket!40)))))

(declare-fun lt!1784754 () Unit!112260)

(declare-fun Unit!112271 () Unit!112260)

(assert (=> b!4626594 (= lt!1784754 Unit!112271)))

(assert (=> b!4626594 (contains!14597 lt!1784759 (_1!29537 (h!57600 oldBucket!40)))))

(declare-fun lt!1784762 () Unit!112260)

(declare-fun Unit!112272 () Unit!112260)

(assert (=> b!4626594 (= lt!1784762 Unit!112272)))

(assert (=> b!4626594 (forall!10831 oldBucket!40 lambda!192390)))

(declare-fun lt!1784755 () Unit!112260)

(declare-fun Unit!112273 () Unit!112260)

(assert (=> b!4626594 (= lt!1784755 Unit!112273)))

(assert (=> b!4626594 (forall!10831 (toList!4985 lt!1784769) lambda!192390)))

(declare-fun lt!1784760 () Unit!112260)

(declare-fun Unit!112274 () Unit!112260)

(assert (=> b!4626594 (= lt!1784760 Unit!112274)))

(declare-fun lt!1784766 () Unit!112260)

(declare-fun Unit!112275 () Unit!112260)

(assert (=> b!4626594 (= lt!1784766 Unit!112275)))

(declare-fun lt!1784770 () Unit!112260)

(declare-fun addForallContainsKeyThenBeforeAdding!508 (ListMap!4289 ListMap!4289 K!12925 V!13171) Unit!112260)

(assert (=> b!4626594 (= lt!1784770 (addForallContainsKeyThenBeforeAdding!508 lt!1784410 lt!1784759 (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> b!4626594 (forall!10831 (toList!4985 lt!1784410) lambda!192390)))

(declare-fun lt!1784758 () Unit!112260)

(assert (=> b!4626594 (= lt!1784758 lt!1784770)))

(assert (=> b!4626594 call!322722))

(declare-fun lt!1784764 () Unit!112260)

(declare-fun Unit!112276 () Unit!112260)

(assert (=> b!4626594 (= lt!1784764 Unit!112276)))

(declare-fun res!1940317 () Bool)

(assert (=> b!4626594 (= res!1940317 call!322721)))

(assert (=> b!4626594 (=> (not res!1940317) (not e!2886017))))

(assert (=> b!4626594 e!2886017))

(declare-fun lt!1784752 () Unit!112260)

(declare-fun Unit!112277 () Unit!112260)

(assert (=> b!4626594 (= lt!1784752 Unit!112277)))

(assert (=> b!4626595 (= e!2886019 lt!1784410)))

(declare-fun lt!1784751 () Unit!112260)

(assert (=> b!4626595 (= lt!1784751 call!322720)))

(assert (=> b!4626595 call!322721))

(declare-fun lt!1784771 () Unit!112260)

(assert (=> b!4626595 (= lt!1784771 lt!1784751)))

(assert (=> b!4626595 call!322722))

(declare-fun lt!1784756 () Unit!112260)

(declare-fun Unit!112278 () Unit!112260)

(assert (=> b!4626595 (= lt!1784756 Unit!112278)))

(assert (= (and d!1457455 c!791955) b!4626595))

(assert (= (and d!1457455 (not c!791955)) b!4626594))

(assert (= (and b!4626594 res!1940317) b!4626592))

(assert (= (or b!4626595 b!4626594) bm!322716))

(assert (= (or b!4626595 b!4626594) bm!322715))

(assert (= (or b!4626595 b!4626594) bm!322717))

(assert (= (and d!1457455 res!1940318) b!4626591))

(assert (= (and b!4626591 res!1940319) b!4626593))

(declare-fun m!5469431 () Bool)

(assert (=> b!4626593 m!5469431))

(declare-fun m!5469433 () Bool)

(assert (=> b!4626591 m!5469433))

(declare-fun m!5469435 () Bool)

(assert (=> bm!322717 m!5469435))

(declare-fun m!5469437 () Bool)

(assert (=> d!1457455 m!5469437))

(assert (=> d!1457455 m!5468877))

(declare-fun m!5469439 () Bool)

(assert (=> bm!322716 m!5469439))

(declare-fun m!5469441 () Bool)

(assert (=> bm!322715 m!5469441))

(declare-fun m!5469443 () Bool)

(assert (=> b!4626594 m!5469443))

(declare-fun m!5469445 () Bool)

(assert (=> b!4626594 m!5469445))

(declare-fun m!5469447 () Bool)

(assert (=> b!4626594 m!5469447))

(declare-fun m!5469449 () Bool)

(assert (=> b!4626594 m!5469449))

(declare-fun m!5469451 () Bool)

(assert (=> b!4626594 m!5469451))

(declare-fun m!5469453 () Bool)

(assert (=> b!4626594 m!5469453))

(declare-fun m!5469455 () Bool)

(assert (=> b!4626594 m!5469455))

(declare-fun m!5469457 () Bool)

(assert (=> b!4626594 m!5469457))

(assert (=> b!4626594 m!5469443))

(assert (=> b!4626594 m!5469455))

(declare-fun m!5469459 () Bool)

(assert (=> b!4626594 m!5469459))

(declare-fun m!5469461 () Bool)

(assert (=> b!4626594 m!5469461))

(declare-fun m!5469463 () Bool)

(assert (=> b!4626594 m!5469463))

(assert (=> b!4626592 m!5469449))

(assert (=> b!4626264 d!1457455))

(declare-fun bs!1023994 () Bool)

(declare-fun d!1457459 () Bool)

(assert (= bs!1023994 (and d!1457459 d!1457337)))

(declare-fun lambda!192396 () Int)

(assert (=> bs!1023994 (= lambda!192396 lambda!192314)))

(declare-fun bs!1023995 () Bool)

(assert (= bs!1023995 (and d!1457459 d!1457381)))

(assert (=> bs!1023995 (= lambda!192396 lambda!192320)))

(declare-fun bs!1023996 () Bool)

(assert (= bs!1023996 (and d!1457459 b!4626260)))

(assert (=> bs!1023996 (= lambda!192396 lambda!192294)))

(declare-fun bs!1023997 () Bool)

(assert (= bs!1023997 (and d!1457459 d!1457385)))

(assert (=> bs!1023997 (= lambda!192396 lambda!192323)))

(declare-fun bs!1023998 () Bool)

(assert (= bs!1023998 (and d!1457459 d!1457445)))

(assert (=> bs!1023998 (= lambda!192396 lambda!192330)))

(declare-fun bs!1023999 () Bool)

(assert (= bs!1023999 (and d!1457459 d!1457357)))

(assert (=> bs!1023999 (= lambda!192396 lambda!192317)))

(declare-fun lt!1784793 () ListMap!4289)

(assert (=> d!1457459 (invariantList!1207 (toList!4985 lt!1784793))))

(declare-fun e!2886023 () ListMap!4289)

(assert (=> d!1457459 (= lt!1784793 e!2886023)))

(declare-fun c!791957 () Bool)

(assert (=> d!1457459 (= c!791957 ((_ is Cons!51547) Nil!51547))))

(assert (=> d!1457459 (forall!10830 Nil!51547 lambda!192396)))

(assert (=> d!1457459 (= (extractMap!1566 Nil!51547) lt!1784793)))

(declare-fun b!4626605 () Bool)

(assert (=> b!4626605 (= e!2886023 (addToMapMapFromBucket!971 (_2!29538 (h!57601 Nil!51547)) (extractMap!1566 (t!358707 Nil!51547))))))

(declare-fun b!4626606 () Bool)

(assert (=> b!4626606 (= e!2886023 (ListMap!4290 Nil!51546))))

(assert (= (and d!1457459 c!791957) b!4626605))

(assert (= (and d!1457459 (not c!791957)) b!4626606))

(declare-fun m!5469465 () Bool)

(assert (=> d!1457459 m!5469465))

(declare-fun m!5469469 () Bool)

(assert (=> d!1457459 m!5469469))

(declare-fun m!5469471 () Bool)

(assert (=> b!4626605 m!5469471))

(assert (=> b!4626605 m!5469471))

(declare-fun m!5469477 () Bool)

(assert (=> b!4626605 m!5469477))

(assert (=> b!4626264 d!1457459))

(declare-fun d!1457461 () Bool)

(assert (=> d!1457461 (eq!825 (addToMapMapFromBucket!971 (Cons!51546 lt!1784425 lt!1784411) (ListMap!4290 Nil!51546)) (+!1876 (addToMapMapFromBucket!971 lt!1784411 (ListMap!4290 Nil!51546)) lt!1784425))))

(declare-fun lt!1784829 () Unit!112260)

(declare-fun choose!31346 (tuple2!52486 List!51670 ListMap!4289) Unit!112260)

(assert (=> d!1457461 (= lt!1784829 (choose!31346 lt!1784425 lt!1784411 (ListMap!4290 Nil!51546)))))

(assert (=> d!1457461 (noDuplicateKeys!1510 lt!1784411)))

(assert (=> d!1457461 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!76 lt!1784425 lt!1784411 (ListMap!4290 Nil!51546)) lt!1784829)))

(declare-fun bs!1024016 () Bool)

(assert (= bs!1024016 d!1457461))

(assert (=> bs!1024016 m!5468951))

(assert (=> bs!1024016 m!5468951))

(assert (=> bs!1024016 m!5468947))

(assert (=> bs!1024016 m!5468945))

(assert (=> bs!1024016 m!5468947))

(assert (=> bs!1024016 m!5468949))

(declare-fun m!5469577 () Bool)

(assert (=> bs!1024016 m!5469577))

(assert (=> bs!1024016 m!5468945))

(declare-fun m!5469579 () Bool)

(assert (=> bs!1024016 m!5469579))

(assert (=> b!4626254 d!1457461))

(declare-fun d!1457475 () Bool)

(declare-fun e!2886034 () Bool)

(assert (=> d!1457475 e!2886034))

(declare-fun res!1940331 () Bool)

(assert (=> d!1457475 (=> (not res!1940331) (not e!2886034))))

(declare-fun lt!1784831 () ListMap!4289)

(assert (=> d!1457475 (= res!1940331 (contains!14597 lt!1784831 (_1!29537 lt!1784425)))))

(declare-fun lt!1784833 () List!51670)

(assert (=> d!1457475 (= lt!1784831 (ListMap!4290 lt!1784833))))

(declare-fun lt!1784830 () Unit!112260)

(declare-fun lt!1784832 () Unit!112260)

(assert (=> d!1457475 (= lt!1784830 lt!1784832)))

(assert (=> d!1457475 (= (getValueByKey!1459 lt!1784833 (_1!29537 lt!1784425)) (Some!11602 (_2!29537 lt!1784425)))))

(assert (=> d!1457475 (= lt!1784832 (lemmaContainsTupThenGetReturnValue!851 lt!1784833 (_1!29537 lt!1784425) (_2!29537 lt!1784425)))))

(assert (=> d!1457475 (= lt!1784833 (insertNoDuplicatedKeys!359 (toList!4985 (addToMapMapFromBucket!971 lt!1784411 (ListMap!4290 Nil!51546))) (_1!29537 lt!1784425) (_2!29537 lt!1784425)))))

(assert (=> d!1457475 (= (+!1876 (addToMapMapFromBucket!971 lt!1784411 (ListMap!4290 Nil!51546)) lt!1784425) lt!1784831)))

(declare-fun b!4626623 () Bool)

(declare-fun res!1940332 () Bool)

(assert (=> b!4626623 (=> (not res!1940332) (not e!2886034))))

(assert (=> b!4626623 (= res!1940332 (= (getValueByKey!1459 (toList!4985 lt!1784831) (_1!29537 lt!1784425)) (Some!11602 (_2!29537 lt!1784425))))))

(declare-fun b!4626624 () Bool)

(assert (=> b!4626624 (= e!2886034 (contains!14600 (toList!4985 lt!1784831) lt!1784425))))

(assert (= (and d!1457475 res!1940331) b!4626623))

(assert (= (and b!4626623 res!1940332) b!4626624))

(declare-fun m!5469581 () Bool)

(assert (=> d!1457475 m!5469581))

(declare-fun m!5469583 () Bool)

(assert (=> d!1457475 m!5469583))

(declare-fun m!5469585 () Bool)

(assert (=> d!1457475 m!5469585))

(declare-fun m!5469587 () Bool)

(assert (=> d!1457475 m!5469587))

(declare-fun m!5469589 () Bool)

(assert (=> b!4626623 m!5469589))

(declare-fun m!5469591 () Bool)

(assert (=> b!4626624 m!5469591))

(assert (=> b!4626254 d!1457475))

(declare-fun d!1457477 () Bool)

(assert (=> d!1457477 (eq!825 (addToMapMapFromBucket!971 (Cons!51546 lt!1784412 lt!1784409) (ListMap!4290 Nil!51546)) (+!1876 (addToMapMapFromBucket!971 lt!1784409 (ListMap!4290 Nil!51546)) lt!1784412))))

(declare-fun lt!1784834 () Unit!112260)

(assert (=> d!1457477 (= lt!1784834 (choose!31346 lt!1784412 lt!1784409 (ListMap!4290 Nil!51546)))))

(assert (=> d!1457477 (noDuplicateKeys!1510 lt!1784409)))

(assert (=> d!1457477 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!76 lt!1784412 lt!1784409 (ListMap!4290 Nil!51546)) lt!1784834)))

(declare-fun bs!1024017 () Bool)

(assert (= bs!1024017 d!1457477))

(assert (=> bs!1024017 m!5468933))

(assert (=> bs!1024017 m!5468933))

(assert (=> bs!1024017 m!5468929))

(assert (=> bs!1024017 m!5468927))

(assert (=> bs!1024017 m!5468929))

(assert (=> bs!1024017 m!5468931))

(declare-fun m!5469593 () Bool)

(assert (=> bs!1024017 m!5469593))

(assert (=> bs!1024017 m!5468927))

(assert (=> bs!1024017 m!5469337))

(assert (=> b!4626254 d!1457477))

(declare-fun bs!1024018 () Bool)

(declare-fun d!1457479 () Bool)

(assert (= bs!1024018 (and d!1457479 d!1457337)))

(declare-fun lambda!192401 () Int)

(assert (=> bs!1024018 (= lambda!192401 lambda!192314)))

(declare-fun bs!1024019 () Bool)

(assert (= bs!1024019 (and d!1457479 b!4626260)))

(assert (=> bs!1024019 (= lambda!192401 lambda!192294)))

(declare-fun bs!1024020 () Bool)

(assert (= bs!1024020 (and d!1457479 d!1457385)))

(assert (=> bs!1024020 (= lambda!192401 lambda!192323)))

(declare-fun bs!1024021 () Bool)

(assert (= bs!1024021 (and d!1457479 d!1457445)))

(assert (=> bs!1024021 (= lambda!192401 lambda!192330)))

(declare-fun bs!1024022 () Bool)

(assert (= bs!1024022 (and d!1457479 d!1457357)))

(assert (=> bs!1024022 (= lambda!192401 lambda!192317)))

(declare-fun bs!1024023 () Bool)

(assert (= bs!1024023 (and d!1457479 d!1457381)))

(assert (=> bs!1024023 (= lambda!192401 lambda!192320)))

(declare-fun bs!1024024 () Bool)

(assert (= bs!1024024 (and d!1457479 d!1457459)))

(assert (=> bs!1024024 (= lambda!192401 lambda!192396)))

(declare-fun lt!1784835 () ListMap!4289)

(assert (=> d!1457479 (invariantList!1207 (toList!4985 lt!1784835))))

(declare-fun e!2886035 () ListMap!4289)

(assert (=> d!1457479 (= lt!1784835 e!2886035)))

(declare-fun c!791962 () Bool)

(assert (=> d!1457479 (= c!791962 ((_ is Cons!51547) (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547)))))

(assert (=> d!1457479 (forall!10830 (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547) lambda!192401)))

(assert (=> d!1457479 (= (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547)) lt!1784835)))

(declare-fun b!4626625 () Bool)

(assert (=> b!4626625 (= e!2886035 (addToMapMapFromBucket!971 (_2!29538 (h!57601 (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547))) (extractMap!1566 (t!358707 (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547)))))))

(declare-fun b!4626626 () Bool)

(assert (=> b!4626626 (= e!2886035 (ListMap!4290 Nil!51546))))

(assert (= (and d!1457479 c!791962) b!4626625))

(assert (= (and d!1457479 (not c!791962)) b!4626626))

(declare-fun m!5469595 () Bool)

(assert (=> d!1457479 m!5469595))

(declare-fun m!5469597 () Bool)

(assert (=> d!1457479 m!5469597))

(declare-fun m!5469599 () Bool)

(assert (=> b!4626625 m!5469599))

(assert (=> b!4626625 m!5469599))

(declare-fun m!5469601 () Bool)

(assert (=> b!4626625 m!5469601))

(assert (=> b!4626254 d!1457479))

(declare-fun bs!1024025 () Bool)

(declare-fun b!4626631 () Bool)

(assert (= bs!1024025 (and b!4626631 b!4626594)))

(declare-fun lambda!192402 () Int)

(assert (=> bs!1024025 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192402 lambda!192389))))

(declare-fun bs!1024026 () Bool)

(assert (= bs!1024026 (and b!4626631 d!1457319)))

(assert (=> bs!1024026 (not (= lambda!192402 lambda!192297))))

(assert (=> bs!1024025 (= (= (ListMap!4290 Nil!51546) lt!1784759) (= lambda!192402 lambda!192390))))

(declare-fun bs!1024027 () Bool)

(assert (= bs!1024027 (and b!4626631 d!1457455)))

(assert (=> bs!1024027 (= (= (ListMap!4290 Nil!51546) lt!1784768) (= lambda!192402 lambda!192392))))

(declare-fun bs!1024028 () Bool)

(assert (= bs!1024028 (and b!4626631 d!1457453)))

(assert (=> bs!1024028 (not (= lambda!192402 lambda!192331))))

(declare-fun bs!1024029 () Bool)

(assert (= bs!1024029 (and b!4626631 b!4626595)))

(assert (=> bs!1024029 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192402 lambda!192388))))

(assert (=> b!4626631 true))

(declare-fun bs!1024030 () Bool)

(declare-fun b!4626630 () Bool)

(assert (= bs!1024030 (and b!4626630 b!4626594)))

(declare-fun lambda!192403 () Int)

(assert (=> bs!1024030 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192403 lambda!192389))))

(declare-fun bs!1024031 () Bool)

(assert (= bs!1024031 (and b!4626630 d!1457319)))

(assert (=> bs!1024031 (not (= lambda!192403 lambda!192297))))

(declare-fun bs!1024032 () Bool)

(assert (= bs!1024032 (and b!4626630 b!4626631)))

(assert (=> bs!1024032 (= lambda!192403 lambda!192402)))

(assert (=> bs!1024030 (= (= (ListMap!4290 Nil!51546) lt!1784759) (= lambda!192403 lambda!192390))))

(declare-fun bs!1024033 () Bool)

(assert (= bs!1024033 (and b!4626630 d!1457455)))

(assert (=> bs!1024033 (= (= (ListMap!4290 Nil!51546) lt!1784768) (= lambda!192403 lambda!192392))))

(declare-fun bs!1024034 () Bool)

(assert (= bs!1024034 (and b!4626630 d!1457453)))

(assert (=> bs!1024034 (not (= lambda!192403 lambda!192331))))

(declare-fun bs!1024035 () Bool)

(assert (= bs!1024035 (and b!4626630 b!4626595)))

(assert (=> bs!1024035 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192403 lambda!192388))))

(assert (=> b!4626630 true))

(declare-fun lt!1784844 () ListMap!4289)

(declare-fun lambda!192404 () Int)

(assert (=> bs!1024030 (= (= lt!1784844 lt!1784410) (= lambda!192404 lambda!192389))))

(assert (=> bs!1024031 (not (= lambda!192404 lambda!192297))))

(assert (=> bs!1024032 (= (= lt!1784844 (ListMap!4290 Nil!51546)) (= lambda!192404 lambda!192402))))

(assert (=> bs!1024033 (= (= lt!1784844 lt!1784768) (= lambda!192404 lambda!192392))))

(assert (=> bs!1024034 (not (= lambda!192404 lambda!192331))))

(assert (=> bs!1024035 (= (= lt!1784844 lt!1784410) (= lambda!192404 lambda!192388))))

(assert (=> bs!1024030 (= (= lt!1784844 lt!1784759) (= lambda!192404 lambda!192390))))

(assert (=> b!4626630 (= (= lt!1784844 (ListMap!4290 Nil!51546)) (= lambda!192404 lambda!192403))))

(assert (=> b!4626630 true))

(declare-fun bs!1024036 () Bool)

(declare-fun d!1457481 () Bool)

(assert (= bs!1024036 (and d!1457481 d!1457319)))

(declare-fun lambda!192405 () Int)

(assert (=> bs!1024036 (not (= lambda!192405 lambda!192297))))

(declare-fun bs!1024037 () Bool)

(assert (= bs!1024037 (and d!1457481 b!4626631)))

(declare-fun lt!1784853 () ListMap!4289)

(assert (=> bs!1024037 (= (= lt!1784853 (ListMap!4290 Nil!51546)) (= lambda!192405 lambda!192402))))

(declare-fun bs!1024038 () Bool)

(assert (= bs!1024038 (and d!1457481 d!1457455)))

(assert (=> bs!1024038 (= (= lt!1784853 lt!1784768) (= lambda!192405 lambda!192392))))

(declare-fun bs!1024039 () Bool)

(assert (= bs!1024039 (and d!1457481 d!1457453)))

(assert (=> bs!1024039 (not (= lambda!192405 lambda!192331))))

(declare-fun bs!1024040 () Bool)

(assert (= bs!1024040 (and d!1457481 b!4626595)))

(assert (=> bs!1024040 (= (= lt!1784853 lt!1784410) (= lambda!192405 lambda!192388))))

(declare-fun bs!1024041 () Bool)

(assert (= bs!1024041 (and d!1457481 b!4626630)))

(assert (=> bs!1024041 (= (= lt!1784853 lt!1784844) (= lambda!192405 lambda!192404))))

(declare-fun bs!1024042 () Bool)

(assert (= bs!1024042 (and d!1457481 b!4626594)))

(assert (=> bs!1024042 (= (= lt!1784853 lt!1784410) (= lambda!192405 lambda!192389))))

(assert (=> bs!1024042 (= (= lt!1784853 lt!1784759) (= lambda!192405 lambda!192390))))

(assert (=> bs!1024041 (= (= lt!1784853 (ListMap!4290 Nil!51546)) (= lambda!192405 lambda!192403))))

(assert (=> d!1457481 true))

(declare-fun bm!322725 () Bool)

(declare-fun call!322732 () Bool)

(declare-fun c!791963 () Bool)

(assert (=> bm!322725 (= call!322732 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) (ite c!791963 lambda!192402 lambda!192404)))))

(declare-fun b!4626627 () Bool)

(declare-fun res!1940335 () Bool)

(declare-fun e!2886037 () Bool)

(assert (=> b!4626627 (=> (not res!1940335) (not e!2886037))))

(assert (=> b!4626627 (= res!1940335 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192405))))

(declare-fun bm!322726 () Bool)

(declare-fun call!322730 () Unit!112260)

(assert (=> bm!322726 (= call!322730 (lemmaContainsAllItsOwnKeys!509 (ListMap!4290 Nil!51546)))))

(assert (=> d!1457481 e!2886037))

(declare-fun res!1940334 () Bool)

(assert (=> d!1457481 (=> (not res!1940334) (not e!2886037))))

(assert (=> d!1457481 (= res!1940334 (forall!10831 lt!1784411 lambda!192405))))

(declare-fun e!2886038 () ListMap!4289)

(assert (=> d!1457481 (= lt!1784853 e!2886038)))

(assert (=> d!1457481 (= c!791963 ((_ is Nil!51546) lt!1784411))))

(assert (=> d!1457481 (noDuplicateKeys!1510 lt!1784411)))

(assert (=> d!1457481 (= (addToMapMapFromBucket!971 lt!1784411 (ListMap!4290 Nil!51546)) lt!1784853)))

(declare-fun b!4626628 () Bool)

(declare-fun e!2886036 () Bool)

(assert (=> b!4626628 (= e!2886036 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192404))))

(declare-fun b!4626629 () Bool)

(assert (=> b!4626629 (= e!2886037 (invariantList!1207 (toList!4985 lt!1784853)))))

(declare-fun bm!322727 () Bool)

(declare-fun call!322731 () Bool)

(assert (=> bm!322727 (= call!322731 (forall!10831 (ite c!791963 (toList!4985 (ListMap!4290 Nil!51546)) lt!1784411) (ite c!791963 lambda!192402 lambda!192404)))))

(assert (=> b!4626630 (= e!2886038 lt!1784844)))

(declare-fun lt!1784854 () ListMap!4289)

(assert (=> b!4626630 (= lt!1784854 (+!1876 (ListMap!4290 Nil!51546) (h!57600 lt!1784411)))))

(assert (=> b!4626630 (= lt!1784844 (addToMapMapFromBucket!971 (t!358706 lt!1784411) (+!1876 (ListMap!4290 Nil!51546) (h!57600 lt!1784411))))))

(declare-fun lt!1784846 () Unit!112260)

(assert (=> b!4626630 (= lt!1784846 call!322730)))

(assert (=> b!4626630 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192403)))

(declare-fun lt!1784850 () Unit!112260)

(assert (=> b!4626630 (= lt!1784850 lt!1784846)))

(assert (=> b!4626630 (forall!10831 (toList!4985 lt!1784854) lambda!192404)))

(declare-fun lt!1784838 () Unit!112260)

(declare-fun Unit!112292 () Unit!112260)

(assert (=> b!4626630 (= lt!1784838 Unit!112292)))

(assert (=> b!4626630 (forall!10831 (t!358706 lt!1784411) lambda!192404)))

(declare-fun lt!1784848 () Unit!112260)

(declare-fun Unit!112293 () Unit!112260)

(assert (=> b!4626630 (= lt!1784848 Unit!112293)))

(declare-fun lt!1784842 () Unit!112260)

(declare-fun Unit!112294 () Unit!112260)

(assert (=> b!4626630 (= lt!1784842 Unit!112294)))

(declare-fun lt!1784852 () Unit!112260)

(assert (=> b!4626630 (= lt!1784852 (forallContained!3059 (toList!4985 lt!1784854) lambda!192404 (h!57600 lt!1784411)))))

(assert (=> b!4626630 (contains!14597 lt!1784854 (_1!29537 (h!57600 lt!1784411)))))

(declare-fun lt!1784839 () Unit!112260)

(declare-fun Unit!112295 () Unit!112260)

(assert (=> b!4626630 (= lt!1784839 Unit!112295)))

(assert (=> b!4626630 (contains!14597 lt!1784844 (_1!29537 (h!57600 lt!1784411)))))

(declare-fun lt!1784847 () Unit!112260)

(declare-fun Unit!112296 () Unit!112260)

(assert (=> b!4626630 (= lt!1784847 Unit!112296)))

(assert (=> b!4626630 (forall!10831 lt!1784411 lambda!192404)))

(declare-fun lt!1784840 () Unit!112260)

(declare-fun Unit!112297 () Unit!112260)

(assert (=> b!4626630 (= lt!1784840 Unit!112297)))

(assert (=> b!4626630 (forall!10831 (toList!4985 lt!1784854) lambda!192404)))

(declare-fun lt!1784845 () Unit!112260)

(declare-fun Unit!112299 () Unit!112260)

(assert (=> b!4626630 (= lt!1784845 Unit!112299)))

(declare-fun lt!1784851 () Unit!112260)

(declare-fun Unit!112300 () Unit!112260)

(assert (=> b!4626630 (= lt!1784851 Unit!112300)))

(declare-fun lt!1784855 () Unit!112260)

(assert (=> b!4626630 (= lt!1784855 (addForallContainsKeyThenBeforeAdding!508 (ListMap!4290 Nil!51546) lt!1784844 (_1!29537 (h!57600 lt!1784411)) (_2!29537 (h!57600 lt!1784411))))))

(assert (=> b!4626630 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192404)))

(declare-fun lt!1784843 () Unit!112260)

(assert (=> b!4626630 (= lt!1784843 lt!1784855)))

(assert (=> b!4626630 call!322732))

(declare-fun lt!1784849 () Unit!112260)

(declare-fun Unit!112303 () Unit!112260)

(assert (=> b!4626630 (= lt!1784849 Unit!112303)))

(declare-fun res!1940333 () Bool)

(assert (=> b!4626630 (= res!1940333 call!322731)))

(assert (=> b!4626630 (=> (not res!1940333) (not e!2886036))))

(assert (=> b!4626630 e!2886036))

(declare-fun lt!1784837 () Unit!112260)

(declare-fun Unit!112306 () Unit!112260)

(assert (=> b!4626630 (= lt!1784837 Unit!112306)))

(assert (=> b!4626631 (= e!2886038 (ListMap!4290 Nil!51546))))

(declare-fun lt!1784836 () Unit!112260)

(assert (=> b!4626631 (= lt!1784836 call!322730)))

(assert (=> b!4626631 call!322731))

(declare-fun lt!1784856 () Unit!112260)

(assert (=> b!4626631 (= lt!1784856 lt!1784836)))

(assert (=> b!4626631 call!322732))

(declare-fun lt!1784841 () Unit!112260)

(declare-fun Unit!112309 () Unit!112260)

(assert (=> b!4626631 (= lt!1784841 Unit!112309)))

(assert (= (and d!1457481 c!791963) b!4626631))

(assert (= (and d!1457481 (not c!791963)) b!4626630))

(assert (= (and b!4626630 res!1940333) b!4626628))

(assert (= (or b!4626631 b!4626630) bm!322726))

(assert (= (or b!4626631 b!4626630) bm!322725))

(assert (= (or b!4626631 b!4626630) bm!322727))

(assert (= (and d!1457481 res!1940334) b!4626627))

(assert (= (and b!4626627 res!1940335) b!4626629))

(declare-fun m!5469603 () Bool)

(assert (=> b!4626629 m!5469603))

(declare-fun m!5469605 () Bool)

(assert (=> b!4626627 m!5469605))

(declare-fun m!5469607 () Bool)

(assert (=> bm!322727 m!5469607))

(declare-fun m!5469609 () Bool)

(assert (=> d!1457481 m!5469609))

(assert (=> d!1457481 m!5469579))

(declare-fun m!5469611 () Bool)

(assert (=> bm!322726 m!5469611))

(declare-fun m!5469613 () Bool)

(assert (=> bm!322725 m!5469613))

(declare-fun m!5469615 () Bool)

(assert (=> b!4626630 m!5469615))

(declare-fun m!5469617 () Bool)

(assert (=> b!4626630 m!5469617))

(declare-fun m!5469619 () Bool)

(assert (=> b!4626630 m!5469619))

(declare-fun m!5469621 () Bool)

(assert (=> b!4626630 m!5469621))

(declare-fun m!5469623 () Bool)

(assert (=> b!4626630 m!5469623))

(declare-fun m!5469625 () Bool)

(assert (=> b!4626630 m!5469625))

(declare-fun m!5469627 () Bool)

(assert (=> b!4626630 m!5469627))

(declare-fun m!5469629 () Bool)

(assert (=> b!4626630 m!5469629))

(assert (=> b!4626630 m!5469615))

(assert (=> b!4626630 m!5469627))

(declare-fun m!5469631 () Bool)

(assert (=> b!4626630 m!5469631))

(declare-fun m!5469633 () Bool)

(assert (=> b!4626630 m!5469633))

(declare-fun m!5469635 () Bool)

(assert (=> b!4626630 m!5469635))

(assert (=> b!4626628 m!5469621))

(assert (=> b!4626254 d!1457481))

(declare-fun d!1457483 () Bool)

(assert (=> d!1457483 (= (head!9644 oldBucket!40) (h!57600 oldBucket!40))))

(assert (=> b!4626254 d!1457483))

(declare-fun d!1457485 () Bool)

(assert (=> d!1457485 (= (head!9644 newBucket!224) (h!57600 newBucket!224))))

(assert (=> b!4626254 d!1457485))

(declare-fun bs!1024043 () Bool)

(declare-fun d!1457487 () Bool)

(assert (= bs!1024043 (and d!1457487 d!1457337)))

(declare-fun lambda!192408 () Int)

(assert (=> bs!1024043 (= lambda!192408 lambda!192314)))

(declare-fun bs!1024044 () Bool)

(assert (= bs!1024044 (and d!1457487 b!4626260)))

(assert (=> bs!1024044 (= lambda!192408 lambda!192294)))

(declare-fun bs!1024045 () Bool)

(assert (= bs!1024045 (and d!1457487 d!1457385)))

(assert (=> bs!1024045 (= lambda!192408 lambda!192323)))

(declare-fun bs!1024046 () Bool)

(assert (= bs!1024046 (and d!1457487 d!1457445)))

(assert (=> bs!1024046 (= lambda!192408 lambda!192330)))

(declare-fun bs!1024047 () Bool)

(assert (= bs!1024047 (and d!1457487 d!1457357)))

(assert (=> bs!1024047 (= lambda!192408 lambda!192317)))

(declare-fun bs!1024048 () Bool)

(assert (= bs!1024048 (and d!1457487 d!1457479)))

(assert (=> bs!1024048 (= lambda!192408 lambda!192401)))

(declare-fun bs!1024049 () Bool)

(assert (= bs!1024049 (and d!1457487 d!1457381)))

(assert (=> bs!1024049 (= lambda!192408 lambda!192320)))

(declare-fun bs!1024050 () Bool)

(assert (= bs!1024050 (and d!1457487 d!1457459)))

(assert (=> bs!1024050 (= lambda!192408 lambda!192396)))

(declare-fun lt!1784859 () ListMap!4289)

(assert (=> d!1457487 (invariantList!1207 (toList!4985 lt!1784859))))

(declare-fun e!2886039 () ListMap!4289)

(assert (=> d!1457487 (= lt!1784859 e!2886039)))

(declare-fun c!791964 () Bool)

(assert (=> d!1457487 (= c!791964 ((_ is Cons!51547) lt!1784417))))

(assert (=> d!1457487 (forall!10830 lt!1784417 lambda!192408)))

(assert (=> d!1457487 (= (extractMap!1566 lt!1784417) lt!1784859)))

(declare-fun b!4626632 () Bool)

(assert (=> b!4626632 (= e!2886039 (addToMapMapFromBucket!971 (_2!29538 (h!57601 lt!1784417)) (extractMap!1566 (t!358707 lt!1784417))))))

(declare-fun b!4626633 () Bool)

(assert (=> b!4626633 (= e!2886039 (ListMap!4290 Nil!51546))))

(assert (= (and d!1457487 c!791964) b!4626632))

(assert (= (and d!1457487 (not c!791964)) b!4626633))

(declare-fun m!5469637 () Bool)

(assert (=> d!1457487 m!5469637))

(declare-fun m!5469639 () Bool)

(assert (=> d!1457487 m!5469639))

(declare-fun m!5469641 () Bool)

(assert (=> b!4626632 m!5469641))

(assert (=> b!4626632 m!5469641))

(declare-fun m!5469643 () Bool)

(assert (=> b!4626632 m!5469643))

(assert (=> b!4626254 d!1457487))

(declare-fun d!1457489 () Bool)

(assert (=> d!1457489 (= (eq!825 (addToMapMapFromBucket!971 (Cons!51546 lt!1784412 lt!1784409) (ListMap!4290 Nil!51546)) (+!1876 (addToMapMapFromBucket!971 lt!1784409 (ListMap!4290 Nil!51546)) lt!1784412)) (= (content!8807 (toList!4985 (addToMapMapFromBucket!971 (Cons!51546 lt!1784412 lt!1784409) (ListMap!4290 Nil!51546)))) (content!8807 (toList!4985 (+!1876 (addToMapMapFromBucket!971 lt!1784409 (ListMap!4290 Nil!51546)) lt!1784412)))))))

(declare-fun bs!1024057 () Bool)

(assert (= bs!1024057 d!1457489))

(declare-fun m!5469645 () Bool)

(assert (=> bs!1024057 m!5469645))

(declare-fun m!5469647 () Bool)

(assert (=> bs!1024057 m!5469647))

(assert (=> b!4626254 d!1457489))

(declare-fun d!1457491 () Bool)

(declare-fun e!2886040 () Bool)

(assert (=> d!1457491 e!2886040))

(declare-fun res!1940336 () Bool)

(assert (=> d!1457491 (=> (not res!1940336) (not e!2886040))))

(declare-fun lt!1784862 () ListMap!4289)

(assert (=> d!1457491 (= res!1940336 (contains!14597 lt!1784862 (_1!29537 (h!57600 oldBucket!40))))))

(declare-fun lt!1784864 () List!51670)

(assert (=> d!1457491 (= lt!1784862 (ListMap!4290 lt!1784864))))

(declare-fun lt!1784861 () Unit!112260)

(declare-fun lt!1784863 () Unit!112260)

(assert (=> d!1457491 (= lt!1784861 lt!1784863)))

(assert (=> d!1457491 (= (getValueByKey!1459 lt!1784864 (_1!29537 (h!57600 oldBucket!40))) (Some!11602 (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> d!1457491 (= lt!1784863 (lemmaContainsTupThenGetReturnValue!851 lt!1784864 (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> d!1457491 (= lt!1784864 (insertNoDuplicatedKeys!359 (toList!4985 (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547))) (_1!29537 (h!57600 oldBucket!40)) (_2!29537 (h!57600 oldBucket!40))))))

(assert (=> d!1457491 (= (+!1876 (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547)) (h!57600 oldBucket!40)) lt!1784862)))

(declare-fun b!4626634 () Bool)

(declare-fun res!1940337 () Bool)

(assert (=> b!4626634 (=> (not res!1940337) (not e!2886040))))

(assert (=> b!4626634 (= res!1940337 (= (getValueByKey!1459 (toList!4985 lt!1784862) (_1!29537 (h!57600 oldBucket!40))) (Some!11602 (_2!29537 (h!57600 oldBucket!40)))))))

(declare-fun b!4626635 () Bool)

(assert (=> b!4626635 (= e!2886040 (contains!14600 (toList!4985 lt!1784862) (h!57600 oldBucket!40)))))

(assert (= (and d!1457491 res!1940336) b!4626634))

(assert (= (and b!4626634 res!1940337) b!4626635))

(declare-fun m!5469657 () Bool)

(assert (=> d!1457491 m!5469657))

(declare-fun m!5469659 () Bool)

(assert (=> d!1457491 m!5469659))

(declare-fun m!5469661 () Bool)

(assert (=> d!1457491 m!5469661))

(declare-fun m!5469663 () Bool)

(assert (=> d!1457491 m!5469663))

(declare-fun m!5469665 () Bool)

(assert (=> b!4626634 m!5469665))

(declare-fun m!5469667 () Bool)

(assert (=> b!4626635 m!5469667))

(assert (=> b!4626254 d!1457491))

(declare-fun bs!1024104 () Bool)

(declare-fun d!1457495 () Bool)

(assert (= bs!1024104 (and d!1457495 d!1457337)))

(declare-fun lambda!192419 () Int)

(assert (=> bs!1024104 (= lambda!192419 lambda!192314)))

(declare-fun bs!1024106 () Bool)

(assert (= bs!1024106 (and d!1457495 b!4626260)))

(assert (=> bs!1024106 (= lambda!192419 lambda!192294)))

(declare-fun bs!1024108 () Bool)

(assert (= bs!1024108 (and d!1457495 d!1457385)))

(assert (=> bs!1024108 (= lambda!192419 lambda!192323)))

(declare-fun bs!1024110 () Bool)

(assert (= bs!1024110 (and d!1457495 d!1457445)))

(assert (=> bs!1024110 (= lambda!192419 lambda!192330)))

(declare-fun bs!1024112 () Bool)

(assert (= bs!1024112 (and d!1457495 d!1457487)))

(assert (=> bs!1024112 (= lambda!192419 lambda!192408)))

(declare-fun bs!1024114 () Bool)

(assert (= bs!1024114 (and d!1457495 d!1457357)))

(assert (=> bs!1024114 (= lambda!192419 lambda!192317)))

(declare-fun bs!1024115 () Bool)

(assert (= bs!1024115 (and d!1457495 d!1457479)))

(assert (=> bs!1024115 (= lambda!192419 lambda!192401)))

(declare-fun bs!1024116 () Bool)

(assert (= bs!1024116 (and d!1457495 d!1457381)))

(assert (=> bs!1024116 (= lambda!192419 lambda!192320)))

(declare-fun bs!1024117 () Bool)

(assert (= bs!1024117 (and d!1457495 d!1457459)))

(assert (=> bs!1024117 (= lambda!192419 lambda!192396)))

(assert (=> d!1457495 (contains!14597 (extractMap!1566 (toList!4986 (ListLongMap!3576 lt!1784417))) key!4968)))

(declare-fun lt!1784911 () Unit!112260)

(declare-fun choose!31348 (ListLongMap!3575 K!12925 Hashable!5907) Unit!112260)

(assert (=> d!1457495 (= lt!1784911 (choose!31348 (ListLongMap!3576 lt!1784417) key!4968 hashF!1389))))

(assert (=> d!1457495 (forall!10830 (toList!4986 (ListLongMap!3576 lt!1784417)) lambda!192419)))

(assert (=> d!1457495 (= (lemmaListContainsThenExtractedMapContains!328 (ListLongMap!3576 lt!1784417) key!4968 hashF!1389) lt!1784911)))

(declare-fun bs!1024120 () Bool)

(assert (= bs!1024120 d!1457495))

(declare-fun m!5469721 () Bool)

(assert (=> bs!1024120 m!5469721))

(assert (=> bs!1024120 m!5469721))

(declare-fun m!5469723 () Bool)

(assert (=> bs!1024120 m!5469723))

(declare-fun m!5469725 () Bool)

(assert (=> bs!1024120 m!5469725))

(declare-fun m!5469727 () Bool)

(assert (=> bs!1024120 m!5469727))

(assert (=> b!4626254 d!1457495))

(declare-fun d!1457505 () Bool)

(declare-fun e!2886049 () Bool)

(assert (=> d!1457505 e!2886049))

(declare-fun res!1940344 () Bool)

(assert (=> d!1457505 (=> (not res!1940344) (not e!2886049))))

(declare-fun lt!1784913 () ListMap!4289)

(assert (=> d!1457505 (= res!1940344 (contains!14597 lt!1784913 (_1!29537 lt!1784412)))))

(declare-fun lt!1784915 () List!51670)

(assert (=> d!1457505 (= lt!1784913 (ListMap!4290 lt!1784915))))

(declare-fun lt!1784912 () Unit!112260)

(declare-fun lt!1784914 () Unit!112260)

(assert (=> d!1457505 (= lt!1784912 lt!1784914)))

(assert (=> d!1457505 (= (getValueByKey!1459 lt!1784915 (_1!29537 lt!1784412)) (Some!11602 (_2!29537 lt!1784412)))))

(assert (=> d!1457505 (= lt!1784914 (lemmaContainsTupThenGetReturnValue!851 lt!1784915 (_1!29537 lt!1784412) (_2!29537 lt!1784412)))))

(assert (=> d!1457505 (= lt!1784915 (insertNoDuplicatedKeys!359 (toList!4985 (addToMapMapFromBucket!971 lt!1784409 (ListMap!4290 Nil!51546))) (_1!29537 lt!1784412) (_2!29537 lt!1784412)))))

(assert (=> d!1457505 (= (+!1876 (addToMapMapFromBucket!971 lt!1784409 (ListMap!4290 Nil!51546)) lt!1784412) lt!1784913)))

(declare-fun b!4626650 () Bool)

(declare-fun res!1940345 () Bool)

(assert (=> b!4626650 (=> (not res!1940345) (not e!2886049))))

(assert (=> b!4626650 (= res!1940345 (= (getValueByKey!1459 (toList!4985 lt!1784913) (_1!29537 lt!1784412)) (Some!11602 (_2!29537 lt!1784412))))))

(declare-fun b!4626651 () Bool)

(assert (=> b!4626651 (= e!2886049 (contains!14600 (toList!4985 lt!1784913) lt!1784412))))

(assert (= (and d!1457505 res!1940344) b!4626650))

(assert (= (and b!4626650 res!1940345) b!4626651))

(declare-fun m!5469729 () Bool)

(assert (=> d!1457505 m!5469729))

(declare-fun m!5469731 () Bool)

(assert (=> d!1457505 m!5469731))

(declare-fun m!5469733 () Bool)

(assert (=> d!1457505 m!5469733))

(declare-fun m!5469735 () Bool)

(assert (=> d!1457505 m!5469735))

(declare-fun m!5469737 () Bool)

(assert (=> b!4626650 m!5469737))

(declare-fun m!5469739 () Bool)

(assert (=> b!4626651 m!5469739))

(assert (=> b!4626254 d!1457505))

(declare-fun b!4626652 () Bool)

(declare-fun e!2886055 () Bool)

(assert (=> b!4626652 (= e!2886055 (not (contains!14603 (keys!18162 lt!1784423) key!4968)))))

(declare-fun d!1457507 () Bool)

(declare-fun e!2886051 () Bool)

(assert (=> d!1457507 e!2886051))

(declare-fun res!1940347 () Bool)

(assert (=> d!1457507 (=> res!1940347 e!2886051)))

(assert (=> d!1457507 (= res!1940347 e!2886055)))

(declare-fun res!1940348 () Bool)

(assert (=> d!1457507 (=> (not res!1940348) (not e!2886055))))

(declare-fun lt!1784919 () Bool)

(assert (=> d!1457507 (= res!1940348 (not lt!1784919))))

(declare-fun lt!1784921 () Bool)

(assert (=> d!1457507 (= lt!1784919 lt!1784921)))

(declare-fun lt!1784920 () Unit!112260)

(declare-fun e!2886052 () Unit!112260)

(assert (=> d!1457507 (= lt!1784920 e!2886052)))

(declare-fun c!791970 () Bool)

(assert (=> d!1457507 (= c!791970 lt!1784921)))

(assert (=> d!1457507 (= lt!1784921 (containsKey!2462 (toList!4985 lt!1784423) key!4968))))

(assert (=> d!1457507 (= (contains!14597 lt!1784423 key!4968) lt!1784919)))

(declare-fun b!4626653 () Bool)

(declare-fun e!2886054 () List!51673)

(assert (=> b!4626653 (= e!2886054 (getKeysList!659 (toList!4985 lt!1784423)))))

(declare-fun b!4626654 () Bool)

(declare-fun e!2886053 () Bool)

(assert (=> b!4626654 (= e!2886053 (contains!14603 (keys!18162 lt!1784423) key!4968))))

(declare-fun b!4626655 () Bool)

(declare-fun lt!1784922 () Unit!112260)

(assert (=> b!4626655 (= e!2886052 lt!1784922)))

(declare-fun lt!1784923 () Unit!112260)

(assert (=> b!4626655 (= lt!1784923 (lemmaContainsKeyImpliesGetValueByKeyDefined!1362 (toList!4985 lt!1784423) key!4968))))

(assert (=> b!4626655 (isDefined!8869 (getValueByKey!1459 (toList!4985 lt!1784423) key!4968))))

(declare-fun lt!1784917 () Unit!112260)

(assert (=> b!4626655 (= lt!1784917 lt!1784923)))

(assert (=> b!4626655 (= lt!1784922 (lemmaInListThenGetKeysListContains!654 (toList!4985 lt!1784423) key!4968))))

(declare-fun call!322739 () Bool)

(assert (=> b!4626655 call!322739))

(declare-fun b!4626656 () Bool)

(assert (=> b!4626656 (= e!2886051 e!2886053)))

(declare-fun res!1940346 () Bool)

(assert (=> b!4626656 (=> (not res!1940346) (not e!2886053))))

(assert (=> b!4626656 (= res!1940346 (isDefined!8869 (getValueByKey!1459 (toList!4985 lt!1784423) key!4968)))))

(declare-fun b!4626657 () Bool)

(declare-fun e!2886050 () Unit!112260)

(declare-fun Unit!112314 () Unit!112260)

(assert (=> b!4626657 (= e!2886050 Unit!112314)))

(declare-fun b!4626658 () Bool)

(assert (=> b!4626658 false))

(declare-fun lt!1784916 () Unit!112260)

(declare-fun lt!1784918 () Unit!112260)

(assert (=> b!4626658 (= lt!1784916 lt!1784918)))

(assert (=> b!4626658 (containsKey!2462 (toList!4985 lt!1784423) key!4968)))

(assert (=> b!4626658 (= lt!1784918 (lemmaInGetKeysListThenContainsKey!658 (toList!4985 lt!1784423) key!4968))))

(declare-fun Unit!112315 () Unit!112260)

(assert (=> b!4626658 (= e!2886050 Unit!112315)))

(declare-fun bm!322734 () Bool)

(assert (=> bm!322734 (= call!322739 (contains!14603 e!2886054 key!4968))))

(declare-fun c!791971 () Bool)

(assert (=> bm!322734 (= c!791971 c!791970)))

(declare-fun b!4626659 () Bool)

(assert (=> b!4626659 (= e!2886054 (keys!18162 lt!1784423))))

(declare-fun b!4626660 () Bool)

(assert (=> b!4626660 (= e!2886052 e!2886050)))

(declare-fun c!791969 () Bool)

(assert (=> b!4626660 (= c!791969 call!322739)))

(assert (= (and d!1457507 c!791970) b!4626655))

(assert (= (and d!1457507 (not c!791970)) b!4626660))

(assert (= (and b!4626660 c!791969) b!4626658))

(assert (= (and b!4626660 (not c!791969)) b!4626657))

(assert (= (or b!4626655 b!4626660) bm!322734))

(assert (= (and bm!322734 c!791971) b!4626653))

(assert (= (and bm!322734 (not c!791971)) b!4626659))

(assert (= (and d!1457507 res!1940348) b!4626652))

(assert (= (and d!1457507 (not res!1940347)) b!4626656))

(assert (= (and b!4626656 res!1940346) b!4626654))

(declare-fun m!5469741 () Bool)

(assert (=> b!4626658 m!5469741))

(declare-fun m!5469743 () Bool)

(assert (=> b!4626658 m!5469743))

(declare-fun m!5469745 () Bool)

(assert (=> b!4626655 m!5469745))

(declare-fun m!5469747 () Bool)

(assert (=> b!4626655 m!5469747))

(assert (=> b!4626655 m!5469747))

(declare-fun m!5469749 () Bool)

(assert (=> b!4626655 m!5469749))

(declare-fun m!5469751 () Bool)

(assert (=> b!4626655 m!5469751))

(declare-fun m!5469753 () Bool)

(assert (=> b!4626653 m!5469753))

(assert (=> b!4626654 m!5469301))

(assert (=> b!4626654 m!5469301))

(declare-fun m!5469755 () Bool)

(assert (=> b!4626654 m!5469755))

(assert (=> b!4626652 m!5469301))

(assert (=> b!4626652 m!5469301))

(assert (=> b!4626652 m!5469755))

(assert (=> b!4626656 m!5469747))

(assert (=> b!4626656 m!5469747))

(assert (=> b!4626656 m!5469749))

(assert (=> d!1457507 m!5469741))

(declare-fun m!5469757 () Bool)

(assert (=> bm!322734 m!5469757))

(assert (=> b!4626659 m!5469301))

(assert (=> b!4626254 d!1457507))

(declare-fun bs!1024130 () Bool)

(declare-fun b!4626665 () Bool)

(assert (= bs!1024130 (and b!4626665 d!1457481)))

(declare-fun lambda!192422 () Int)

(assert (=> bs!1024130 (= (= (ListMap!4290 Nil!51546) lt!1784853) (= lambda!192422 lambda!192405))))

(declare-fun bs!1024131 () Bool)

(assert (= bs!1024131 (and b!4626665 d!1457319)))

(assert (=> bs!1024131 (not (= lambda!192422 lambda!192297))))

(declare-fun bs!1024132 () Bool)

(assert (= bs!1024132 (and b!4626665 b!4626631)))

(assert (=> bs!1024132 (= lambda!192422 lambda!192402)))

(declare-fun bs!1024133 () Bool)

(assert (= bs!1024133 (and b!4626665 d!1457455)))

(assert (=> bs!1024133 (= (= (ListMap!4290 Nil!51546) lt!1784768) (= lambda!192422 lambda!192392))))

(declare-fun bs!1024135 () Bool)

(assert (= bs!1024135 (and b!4626665 d!1457453)))

(assert (=> bs!1024135 (not (= lambda!192422 lambda!192331))))

(declare-fun bs!1024137 () Bool)

(assert (= bs!1024137 (and b!4626665 b!4626595)))

(assert (=> bs!1024137 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192422 lambda!192388))))

(declare-fun bs!1024139 () Bool)

(assert (= bs!1024139 (and b!4626665 b!4626630)))

(assert (=> bs!1024139 (= (= (ListMap!4290 Nil!51546) lt!1784844) (= lambda!192422 lambda!192404))))

(declare-fun bs!1024141 () Bool)

(assert (= bs!1024141 (and b!4626665 b!4626594)))

(assert (=> bs!1024141 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192422 lambda!192389))))

(assert (=> bs!1024141 (= (= (ListMap!4290 Nil!51546) lt!1784759) (= lambda!192422 lambda!192390))))

(assert (=> bs!1024139 (= lambda!192422 lambda!192403)))

(assert (=> b!4626665 true))

(declare-fun bs!1024148 () Bool)

(declare-fun b!4626664 () Bool)

(assert (= bs!1024148 (and b!4626664 b!4626665)))

(declare-fun lambda!192424 () Int)

(assert (=> bs!1024148 (= lambda!192424 lambda!192422)))

(declare-fun bs!1024150 () Bool)

(assert (= bs!1024150 (and b!4626664 d!1457481)))

(assert (=> bs!1024150 (= (= (ListMap!4290 Nil!51546) lt!1784853) (= lambda!192424 lambda!192405))))

(declare-fun bs!1024152 () Bool)

(assert (= bs!1024152 (and b!4626664 d!1457319)))

(assert (=> bs!1024152 (not (= lambda!192424 lambda!192297))))

(declare-fun bs!1024153 () Bool)

(assert (= bs!1024153 (and b!4626664 b!4626631)))

(assert (=> bs!1024153 (= lambda!192424 lambda!192402)))

(declare-fun bs!1024154 () Bool)

(assert (= bs!1024154 (and b!4626664 d!1457455)))

(assert (=> bs!1024154 (= (= (ListMap!4290 Nil!51546) lt!1784768) (= lambda!192424 lambda!192392))))

(declare-fun bs!1024155 () Bool)

(assert (= bs!1024155 (and b!4626664 d!1457453)))

(assert (=> bs!1024155 (not (= lambda!192424 lambda!192331))))

(declare-fun bs!1024156 () Bool)

(assert (= bs!1024156 (and b!4626664 b!4626595)))

(assert (=> bs!1024156 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192424 lambda!192388))))

(declare-fun bs!1024157 () Bool)

(assert (= bs!1024157 (and b!4626664 b!4626630)))

(assert (=> bs!1024157 (= (= (ListMap!4290 Nil!51546) lt!1784844) (= lambda!192424 lambda!192404))))

(declare-fun bs!1024158 () Bool)

(assert (= bs!1024158 (and b!4626664 b!4626594)))

(assert (=> bs!1024158 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192424 lambda!192389))))

(assert (=> bs!1024158 (= (= (ListMap!4290 Nil!51546) lt!1784759) (= lambda!192424 lambda!192390))))

(assert (=> bs!1024157 (= lambda!192424 lambda!192403)))

(assert (=> b!4626664 true))

(declare-fun lt!1784932 () ListMap!4289)

(declare-fun lambda!192425 () Int)

(assert (=> bs!1024148 (= (= lt!1784932 (ListMap!4290 Nil!51546)) (= lambda!192425 lambda!192422))))

(assert (=> bs!1024150 (= (= lt!1784932 lt!1784853) (= lambda!192425 lambda!192405))))

(assert (=> bs!1024152 (not (= lambda!192425 lambda!192297))))

(assert (=> bs!1024153 (= (= lt!1784932 (ListMap!4290 Nil!51546)) (= lambda!192425 lambda!192402))))

(assert (=> bs!1024154 (= (= lt!1784932 lt!1784768) (= lambda!192425 lambda!192392))))

(assert (=> bs!1024155 (not (= lambda!192425 lambda!192331))))

(assert (=> b!4626664 (= (= lt!1784932 (ListMap!4290 Nil!51546)) (= lambda!192425 lambda!192424))))

(assert (=> bs!1024156 (= (= lt!1784932 lt!1784410) (= lambda!192425 lambda!192388))))

(assert (=> bs!1024157 (= (= lt!1784932 lt!1784844) (= lambda!192425 lambda!192404))))

(assert (=> bs!1024158 (= (= lt!1784932 lt!1784410) (= lambda!192425 lambda!192389))))

(assert (=> bs!1024158 (= (= lt!1784932 lt!1784759) (= lambda!192425 lambda!192390))))

(assert (=> bs!1024157 (= (= lt!1784932 (ListMap!4290 Nil!51546)) (= lambda!192425 lambda!192403))))

(assert (=> b!4626664 true))

(declare-fun bs!1024159 () Bool)

(declare-fun d!1457509 () Bool)

(assert (= bs!1024159 (and d!1457509 b!4626665)))

(declare-fun lt!1784941 () ListMap!4289)

(declare-fun lambda!192426 () Int)

(assert (=> bs!1024159 (= (= lt!1784941 (ListMap!4290 Nil!51546)) (= lambda!192426 lambda!192422))))

(declare-fun bs!1024160 () Bool)

(assert (= bs!1024160 (and d!1457509 d!1457481)))

(assert (=> bs!1024160 (= (= lt!1784941 lt!1784853) (= lambda!192426 lambda!192405))))

(declare-fun bs!1024161 () Bool)

(assert (= bs!1024161 (and d!1457509 d!1457319)))

(assert (=> bs!1024161 (not (= lambda!192426 lambda!192297))))

(declare-fun bs!1024162 () Bool)

(assert (= bs!1024162 (and d!1457509 b!4626631)))

(assert (=> bs!1024162 (= (= lt!1784941 (ListMap!4290 Nil!51546)) (= lambda!192426 lambda!192402))))

(declare-fun bs!1024163 () Bool)

(assert (= bs!1024163 (and d!1457509 b!4626664)))

(assert (=> bs!1024163 (= (= lt!1784941 lt!1784932) (= lambda!192426 lambda!192425))))

(declare-fun bs!1024164 () Bool)

(assert (= bs!1024164 (and d!1457509 d!1457455)))

(assert (=> bs!1024164 (= (= lt!1784941 lt!1784768) (= lambda!192426 lambda!192392))))

(declare-fun bs!1024165 () Bool)

(assert (= bs!1024165 (and d!1457509 d!1457453)))

(assert (=> bs!1024165 (not (= lambda!192426 lambda!192331))))

(assert (=> bs!1024163 (= (= lt!1784941 (ListMap!4290 Nil!51546)) (= lambda!192426 lambda!192424))))

(declare-fun bs!1024166 () Bool)

(assert (= bs!1024166 (and d!1457509 b!4626595)))

(assert (=> bs!1024166 (= (= lt!1784941 lt!1784410) (= lambda!192426 lambda!192388))))

(declare-fun bs!1024167 () Bool)

(assert (= bs!1024167 (and d!1457509 b!4626630)))

(assert (=> bs!1024167 (= (= lt!1784941 lt!1784844) (= lambda!192426 lambda!192404))))

(declare-fun bs!1024168 () Bool)

(assert (= bs!1024168 (and d!1457509 b!4626594)))

(assert (=> bs!1024168 (= (= lt!1784941 lt!1784410) (= lambda!192426 lambda!192389))))

(assert (=> bs!1024168 (= (= lt!1784941 lt!1784759) (= lambda!192426 lambda!192390))))

(assert (=> bs!1024167 (= (= lt!1784941 (ListMap!4290 Nil!51546)) (= lambda!192426 lambda!192403))))

(assert (=> d!1457509 true))

(declare-fun call!322742 () Bool)

(declare-fun c!791972 () Bool)

(declare-fun bm!322735 () Bool)

(assert (=> bm!322735 (= call!322742 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) (ite c!791972 lambda!192422 lambda!192425)))))

(declare-fun b!4626661 () Bool)

(declare-fun res!1940351 () Bool)

(declare-fun e!2886057 () Bool)

(assert (=> b!4626661 (=> (not res!1940351) (not e!2886057))))

(assert (=> b!4626661 (= res!1940351 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192426))))

(declare-fun bm!322736 () Bool)

(declare-fun call!322740 () Unit!112260)

(assert (=> bm!322736 (= call!322740 (lemmaContainsAllItsOwnKeys!509 (ListMap!4290 Nil!51546)))))

(assert (=> d!1457509 e!2886057))

(declare-fun res!1940350 () Bool)

(assert (=> d!1457509 (=> (not res!1940350) (not e!2886057))))

(assert (=> d!1457509 (= res!1940350 (forall!10831 (Cons!51546 lt!1784425 lt!1784411) lambda!192426))))

(declare-fun e!2886058 () ListMap!4289)

(assert (=> d!1457509 (= lt!1784941 e!2886058)))

(assert (=> d!1457509 (= c!791972 ((_ is Nil!51546) (Cons!51546 lt!1784425 lt!1784411)))))

(assert (=> d!1457509 (noDuplicateKeys!1510 (Cons!51546 lt!1784425 lt!1784411))))

(assert (=> d!1457509 (= (addToMapMapFromBucket!971 (Cons!51546 lt!1784425 lt!1784411) (ListMap!4290 Nil!51546)) lt!1784941)))

(declare-fun b!4626662 () Bool)

(declare-fun e!2886056 () Bool)

(assert (=> b!4626662 (= e!2886056 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192425))))

(declare-fun b!4626663 () Bool)

(assert (=> b!4626663 (= e!2886057 (invariantList!1207 (toList!4985 lt!1784941)))))

(declare-fun call!322741 () Bool)

(declare-fun bm!322737 () Bool)

(assert (=> bm!322737 (= call!322741 (forall!10831 (ite c!791972 (toList!4985 (ListMap!4290 Nil!51546)) (Cons!51546 lt!1784425 lt!1784411)) (ite c!791972 lambda!192422 lambda!192425)))))

(assert (=> b!4626664 (= e!2886058 lt!1784932)))

(declare-fun lt!1784942 () ListMap!4289)

(assert (=> b!4626664 (= lt!1784942 (+!1876 (ListMap!4290 Nil!51546) (h!57600 (Cons!51546 lt!1784425 lt!1784411))))))

(assert (=> b!4626664 (= lt!1784932 (addToMapMapFromBucket!971 (t!358706 (Cons!51546 lt!1784425 lt!1784411)) (+!1876 (ListMap!4290 Nil!51546) (h!57600 (Cons!51546 lt!1784425 lt!1784411)))))))

(declare-fun lt!1784934 () Unit!112260)

(assert (=> b!4626664 (= lt!1784934 call!322740)))

(assert (=> b!4626664 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192424)))

(declare-fun lt!1784938 () Unit!112260)

(assert (=> b!4626664 (= lt!1784938 lt!1784934)))

(assert (=> b!4626664 (forall!10831 (toList!4985 lt!1784942) lambda!192425)))

(declare-fun lt!1784926 () Unit!112260)

(declare-fun Unit!112327 () Unit!112260)

(assert (=> b!4626664 (= lt!1784926 Unit!112327)))

(assert (=> b!4626664 (forall!10831 (t!358706 (Cons!51546 lt!1784425 lt!1784411)) lambda!192425)))

(declare-fun lt!1784936 () Unit!112260)

(declare-fun Unit!112328 () Unit!112260)

(assert (=> b!4626664 (= lt!1784936 Unit!112328)))

(declare-fun lt!1784930 () Unit!112260)

(declare-fun Unit!112329 () Unit!112260)

(assert (=> b!4626664 (= lt!1784930 Unit!112329)))

(declare-fun lt!1784940 () Unit!112260)

(assert (=> b!4626664 (= lt!1784940 (forallContained!3059 (toList!4985 lt!1784942) lambda!192425 (h!57600 (Cons!51546 lt!1784425 lt!1784411))))))

(assert (=> b!4626664 (contains!14597 lt!1784942 (_1!29537 (h!57600 (Cons!51546 lt!1784425 lt!1784411))))))

(declare-fun lt!1784927 () Unit!112260)

(declare-fun Unit!112330 () Unit!112260)

(assert (=> b!4626664 (= lt!1784927 Unit!112330)))

(assert (=> b!4626664 (contains!14597 lt!1784932 (_1!29537 (h!57600 (Cons!51546 lt!1784425 lt!1784411))))))

(declare-fun lt!1784935 () Unit!112260)

(declare-fun Unit!112331 () Unit!112260)

(assert (=> b!4626664 (= lt!1784935 Unit!112331)))

(assert (=> b!4626664 (forall!10831 (Cons!51546 lt!1784425 lt!1784411) lambda!192425)))

(declare-fun lt!1784928 () Unit!112260)

(declare-fun Unit!112332 () Unit!112260)

(assert (=> b!4626664 (= lt!1784928 Unit!112332)))

(assert (=> b!4626664 (forall!10831 (toList!4985 lt!1784942) lambda!192425)))

(declare-fun lt!1784933 () Unit!112260)

(declare-fun Unit!112333 () Unit!112260)

(assert (=> b!4626664 (= lt!1784933 Unit!112333)))

(declare-fun lt!1784939 () Unit!112260)

(declare-fun Unit!112334 () Unit!112260)

(assert (=> b!4626664 (= lt!1784939 Unit!112334)))

(declare-fun lt!1784943 () Unit!112260)

(assert (=> b!4626664 (= lt!1784943 (addForallContainsKeyThenBeforeAdding!508 (ListMap!4290 Nil!51546) lt!1784932 (_1!29537 (h!57600 (Cons!51546 lt!1784425 lt!1784411))) (_2!29537 (h!57600 (Cons!51546 lt!1784425 lt!1784411)))))))

(assert (=> b!4626664 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192425)))

(declare-fun lt!1784931 () Unit!112260)

(assert (=> b!4626664 (= lt!1784931 lt!1784943)))

(assert (=> b!4626664 call!322742))

(declare-fun lt!1784937 () Unit!112260)

(declare-fun Unit!112335 () Unit!112260)

(assert (=> b!4626664 (= lt!1784937 Unit!112335)))

(declare-fun res!1940349 () Bool)

(assert (=> b!4626664 (= res!1940349 call!322741)))

(assert (=> b!4626664 (=> (not res!1940349) (not e!2886056))))

(assert (=> b!4626664 e!2886056))

(declare-fun lt!1784925 () Unit!112260)

(declare-fun Unit!112336 () Unit!112260)

(assert (=> b!4626664 (= lt!1784925 Unit!112336)))

(assert (=> b!4626665 (= e!2886058 (ListMap!4290 Nil!51546))))

(declare-fun lt!1784924 () Unit!112260)

(assert (=> b!4626665 (= lt!1784924 call!322740)))

(assert (=> b!4626665 call!322741))

(declare-fun lt!1784944 () Unit!112260)

(assert (=> b!4626665 (= lt!1784944 lt!1784924)))

(assert (=> b!4626665 call!322742))

(declare-fun lt!1784929 () Unit!112260)

(declare-fun Unit!112337 () Unit!112260)

(assert (=> b!4626665 (= lt!1784929 Unit!112337)))

(assert (= (and d!1457509 c!791972) b!4626665))

(assert (= (and d!1457509 (not c!791972)) b!4626664))

(assert (= (and b!4626664 res!1940349) b!4626662))

(assert (= (or b!4626665 b!4626664) bm!322736))

(assert (= (or b!4626665 b!4626664) bm!322735))

(assert (= (or b!4626665 b!4626664) bm!322737))

(assert (= (and d!1457509 res!1940350) b!4626661))

(assert (= (and b!4626661 res!1940351) b!4626663))

(declare-fun m!5469793 () Bool)

(assert (=> b!4626663 m!5469793))

(declare-fun m!5469795 () Bool)

(assert (=> b!4626661 m!5469795))

(declare-fun m!5469797 () Bool)

(assert (=> bm!322737 m!5469797))

(declare-fun m!5469799 () Bool)

(assert (=> d!1457509 m!5469799))

(declare-fun m!5469801 () Bool)

(assert (=> d!1457509 m!5469801))

(assert (=> bm!322736 m!5469611))

(declare-fun m!5469803 () Bool)

(assert (=> bm!322735 m!5469803))

(declare-fun m!5469805 () Bool)

(assert (=> b!4626664 m!5469805))

(declare-fun m!5469807 () Bool)

(assert (=> b!4626664 m!5469807))

(declare-fun m!5469809 () Bool)

(assert (=> b!4626664 m!5469809))

(declare-fun m!5469811 () Bool)

(assert (=> b!4626664 m!5469811))

(declare-fun m!5469813 () Bool)

(assert (=> b!4626664 m!5469813))

(declare-fun m!5469815 () Bool)

(assert (=> b!4626664 m!5469815))

(declare-fun m!5469817 () Bool)

(assert (=> b!4626664 m!5469817))

(declare-fun m!5469819 () Bool)

(assert (=> b!4626664 m!5469819))

(assert (=> b!4626664 m!5469805))

(assert (=> b!4626664 m!5469817))

(declare-fun m!5469821 () Bool)

(assert (=> b!4626664 m!5469821))

(declare-fun m!5469823 () Bool)

(assert (=> b!4626664 m!5469823))

(declare-fun m!5469825 () Bool)

(assert (=> b!4626664 m!5469825))

(assert (=> b!4626662 m!5469811))

(assert (=> b!4626254 d!1457509))

(declare-fun bs!1024169 () Bool)

(declare-fun b!4626670 () Bool)

(assert (= bs!1024169 (and b!4626670 b!4626665)))

(declare-fun lambda!192427 () Int)

(assert (=> bs!1024169 (= lambda!192427 lambda!192422)))

(declare-fun bs!1024170 () Bool)

(assert (= bs!1024170 (and b!4626670 d!1457481)))

(assert (=> bs!1024170 (= (= (ListMap!4290 Nil!51546) lt!1784853) (= lambda!192427 lambda!192405))))

(declare-fun bs!1024171 () Bool)

(assert (= bs!1024171 (and b!4626670 d!1457509)))

(assert (=> bs!1024171 (= (= (ListMap!4290 Nil!51546) lt!1784941) (= lambda!192427 lambda!192426))))

(declare-fun bs!1024172 () Bool)

(assert (= bs!1024172 (and b!4626670 d!1457319)))

(assert (=> bs!1024172 (not (= lambda!192427 lambda!192297))))

(declare-fun bs!1024173 () Bool)

(assert (= bs!1024173 (and b!4626670 b!4626631)))

(assert (=> bs!1024173 (= lambda!192427 lambda!192402)))

(declare-fun bs!1024174 () Bool)

(assert (= bs!1024174 (and b!4626670 b!4626664)))

(assert (=> bs!1024174 (= (= (ListMap!4290 Nil!51546) lt!1784932) (= lambda!192427 lambda!192425))))

(declare-fun bs!1024175 () Bool)

(assert (= bs!1024175 (and b!4626670 d!1457455)))

(assert (=> bs!1024175 (= (= (ListMap!4290 Nil!51546) lt!1784768) (= lambda!192427 lambda!192392))))

(declare-fun bs!1024176 () Bool)

(assert (= bs!1024176 (and b!4626670 d!1457453)))

(assert (=> bs!1024176 (not (= lambda!192427 lambda!192331))))

(assert (=> bs!1024174 (= lambda!192427 lambda!192424)))

(declare-fun bs!1024177 () Bool)

(assert (= bs!1024177 (and b!4626670 b!4626595)))

(assert (=> bs!1024177 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192427 lambda!192388))))

(declare-fun bs!1024178 () Bool)

(assert (= bs!1024178 (and b!4626670 b!4626630)))

(assert (=> bs!1024178 (= (= (ListMap!4290 Nil!51546) lt!1784844) (= lambda!192427 lambda!192404))))

(declare-fun bs!1024179 () Bool)

(assert (= bs!1024179 (and b!4626670 b!4626594)))

(assert (=> bs!1024179 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192427 lambda!192389))))

(assert (=> bs!1024179 (= (= (ListMap!4290 Nil!51546) lt!1784759) (= lambda!192427 lambda!192390))))

(assert (=> bs!1024178 (= lambda!192427 lambda!192403)))

(assert (=> b!4626670 true))

(declare-fun bs!1024180 () Bool)

(declare-fun b!4626669 () Bool)

(assert (= bs!1024180 (and b!4626669 b!4626665)))

(declare-fun lambda!192428 () Int)

(assert (=> bs!1024180 (= lambda!192428 lambda!192422)))

(declare-fun bs!1024181 () Bool)

(assert (= bs!1024181 (and b!4626669 d!1457481)))

(assert (=> bs!1024181 (= (= (ListMap!4290 Nil!51546) lt!1784853) (= lambda!192428 lambda!192405))))

(declare-fun bs!1024182 () Bool)

(assert (= bs!1024182 (and b!4626669 d!1457509)))

(assert (=> bs!1024182 (= (= (ListMap!4290 Nil!51546) lt!1784941) (= lambda!192428 lambda!192426))))

(declare-fun bs!1024183 () Bool)

(assert (= bs!1024183 (and b!4626669 d!1457319)))

(assert (=> bs!1024183 (not (= lambda!192428 lambda!192297))))

(declare-fun bs!1024184 () Bool)

(assert (= bs!1024184 (and b!4626669 b!4626664)))

(assert (=> bs!1024184 (= (= (ListMap!4290 Nil!51546) lt!1784932) (= lambda!192428 lambda!192425))))

(declare-fun bs!1024185 () Bool)

(assert (= bs!1024185 (and b!4626669 d!1457455)))

(assert (=> bs!1024185 (= (= (ListMap!4290 Nil!51546) lt!1784768) (= lambda!192428 lambda!192392))))

(declare-fun bs!1024186 () Bool)

(assert (= bs!1024186 (and b!4626669 d!1457453)))

(assert (=> bs!1024186 (not (= lambda!192428 lambda!192331))))

(assert (=> bs!1024184 (= lambda!192428 lambda!192424)))

(declare-fun bs!1024187 () Bool)

(assert (= bs!1024187 (and b!4626669 b!4626595)))

(assert (=> bs!1024187 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192428 lambda!192388))))

(declare-fun bs!1024188 () Bool)

(assert (= bs!1024188 (and b!4626669 b!4626630)))

(assert (=> bs!1024188 (= (= (ListMap!4290 Nil!51546) lt!1784844) (= lambda!192428 lambda!192404))))

(declare-fun bs!1024189 () Bool)

(assert (= bs!1024189 (and b!4626669 b!4626594)))

(assert (=> bs!1024189 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192428 lambda!192389))))

(declare-fun bs!1024190 () Bool)

(assert (= bs!1024190 (and b!4626669 b!4626670)))

(assert (=> bs!1024190 (= lambda!192428 lambda!192427)))

(declare-fun bs!1024191 () Bool)

(assert (= bs!1024191 (and b!4626669 b!4626631)))

(assert (=> bs!1024191 (= lambda!192428 lambda!192402)))

(assert (=> bs!1024189 (= (= (ListMap!4290 Nil!51546) lt!1784759) (= lambda!192428 lambda!192390))))

(assert (=> bs!1024188 (= lambda!192428 lambda!192403)))

(assert (=> b!4626669 true))

(declare-fun lt!1784953 () ListMap!4289)

(declare-fun lambda!192429 () Int)

(assert (=> bs!1024180 (= (= lt!1784953 (ListMap!4290 Nil!51546)) (= lambda!192429 lambda!192422))))

(assert (=> bs!1024181 (= (= lt!1784953 lt!1784853) (= lambda!192429 lambda!192405))))

(assert (=> bs!1024182 (= (= lt!1784953 lt!1784941) (= lambda!192429 lambda!192426))))

(assert (=> bs!1024183 (not (= lambda!192429 lambda!192297))))

(assert (=> bs!1024184 (= (= lt!1784953 lt!1784932) (= lambda!192429 lambda!192425))))

(assert (=> bs!1024185 (= (= lt!1784953 lt!1784768) (= lambda!192429 lambda!192392))))

(assert (=> bs!1024186 (not (= lambda!192429 lambda!192331))))

(assert (=> bs!1024187 (= (= lt!1784953 lt!1784410) (= lambda!192429 lambda!192388))))

(assert (=> bs!1024188 (= (= lt!1784953 lt!1784844) (= lambda!192429 lambda!192404))))

(assert (=> bs!1024189 (= (= lt!1784953 lt!1784410) (= lambda!192429 lambda!192389))))

(assert (=> bs!1024190 (= (= lt!1784953 (ListMap!4290 Nil!51546)) (= lambda!192429 lambda!192427))))

(assert (=> bs!1024191 (= (= lt!1784953 (ListMap!4290 Nil!51546)) (= lambda!192429 lambda!192402))))

(assert (=> bs!1024189 (= (= lt!1784953 lt!1784759) (= lambda!192429 lambda!192390))))

(assert (=> bs!1024188 (= (= lt!1784953 (ListMap!4290 Nil!51546)) (= lambda!192429 lambda!192403))))

(assert (=> bs!1024184 (= (= lt!1784953 (ListMap!4290 Nil!51546)) (= lambda!192429 lambda!192424))))

(assert (=> b!4626669 (= (= lt!1784953 (ListMap!4290 Nil!51546)) (= lambda!192429 lambda!192428))))

(assert (=> b!4626669 true))

(declare-fun bs!1024192 () Bool)

(declare-fun d!1457515 () Bool)

(assert (= bs!1024192 (and d!1457515 b!4626665)))

(declare-fun lt!1784962 () ListMap!4289)

(declare-fun lambda!192430 () Int)

(assert (=> bs!1024192 (= (= lt!1784962 (ListMap!4290 Nil!51546)) (= lambda!192430 lambda!192422))))

(declare-fun bs!1024193 () Bool)

(assert (= bs!1024193 (and d!1457515 d!1457481)))

(assert (=> bs!1024193 (= (= lt!1784962 lt!1784853) (= lambda!192430 lambda!192405))))

(declare-fun bs!1024194 () Bool)

(assert (= bs!1024194 (and d!1457515 d!1457509)))

(assert (=> bs!1024194 (= (= lt!1784962 lt!1784941) (= lambda!192430 lambda!192426))))

(declare-fun bs!1024195 () Bool)

(assert (= bs!1024195 (and d!1457515 d!1457319)))

(assert (=> bs!1024195 (not (= lambda!192430 lambda!192297))))

(declare-fun bs!1024196 () Bool)

(assert (= bs!1024196 (and d!1457515 b!4626664)))

(assert (=> bs!1024196 (= (= lt!1784962 lt!1784932) (= lambda!192430 lambda!192425))))

(declare-fun bs!1024197 () Bool)

(assert (= bs!1024197 (and d!1457515 d!1457455)))

(assert (=> bs!1024197 (= (= lt!1784962 lt!1784768) (= lambda!192430 lambda!192392))))

(declare-fun bs!1024198 () Bool)

(assert (= bs!1024198 (and d!1457515 d!1457453)))

(assert (=> bs!1024198 (not (= lambda!192430 lambda!192331))))

(declare-fun bs!1024199 () Bool)

(assert (= bs!1024199 (and d!1457515 b!4626595)))

(assert (=> bs!1024199 (= (= lt!1784962 lt!1784410) (= lambda!192430 lambda!192388))))

(declare-fun bs!1024200 () Bool)

(assert (= bs!1024200 (and d!1457515 b!4626669)))

(assert (=> bs!1024200 (= (= lt!1784962 lt!1784953) (= lambda!192430 lambda!192429))))

(declare-fun bs!1024201 () Bool)

(assert (= bs!1024201 (and d!1457515 b!4626630)))

(assert (=> bs!1024201 (= (= lt!1784962 lt!1784844) (= lambda!192430 lambda!192404))))

(declare-fun bs!1024202 () Bool)

(assert (= bs!1024202 (and d!1457515 b!4626594)))

(assert (=> bs!1024202 (= (= lt!1784962 lt!1784410) (= lambda!192430 lambda!192389))))

(declare-fun bs!1024203 () Bool)

(assert (= bs!1024203 (and d!1457515 b!4626670)))

(assert (=> bs!1024203 (= (= lt!1784962 (ListMap!4290 Nil!51546)) (= lambda!192430 lambda!192427))))

(declare-fun bs!1024205 () Bool)

(assert (= bs!1024205 (and d!1457515 b!4626631)))

(assert (=> bs!1024205 (= (= lt!1784962 (ListMap!4290 Nil!51546)) (= lambda!192430 lambda!192402))))

(assert (=> bs!1024202 (= (= lt!1784962 lt!1784759) (= lambda!192430 lambda!192390))))

(assert (=> bs!1024201 (= (= lt!1784962 (ListMap!4290 Nil!51546)) (= lambda!192430 lambda!192403))))

(assert (=> bs!1024196 (= (= lt!1784962 (ListMap!4290 Nil!51546)) (= lambda!192430 lambda!192424))))

(assert (=> bs!1024200 (= (= lt!1784962 (ListMap!4290 Nil!51546)) (= lambda!192430 lambda!192428))))

(assert (=> d!1457515 true))

(declare-fun bm!322738 () Bool)

(declare-fun call!322745 () Bool)

(declare-fun c!791973 () Bool)

(assert (=> bm!322738 (= call!322745 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) (ite c!791973 lambda!192427 lambda!192429)))))

(declare-fun b!4626666 () Bool)

(declare-fun res!1940354 () Bool)

(declare-fun e!2886060 () Bool)

(assert (=> b!4626666 (=> (not res!1940354) (not e!2886060))))

(assert (=> b!4626666 (= res!1940354 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192430))))

(declare-fun bm!322739 () Bool)

(declare-fun call!322743 () Unit!112260)

(assert (=> bm!322739 (= call!322743 (lemmaContainsAllItsOwnKeys!509 (ListMap!4290 Nil!51546)))))

(assert (=> d!1457515 e!2886060))

(declare-fun res!1940353 () Bool)

(assert (=> d!1457515 (=> (not res!1940353) (not e!2886060))))

(assert (=> d!1457515 (= res!1940353 (forall!10831 lt!1784409 lambda!192430))))

(declare-fun e!2886061 () ListMap!4289)

(assert (=> d!1457515 (= lt!1784962 e!2886061)))

(assert (=> d!1457515 (= c!791973 ((_ is Nil!51546) lt!1784409))))

(assert (=> d!1457515 (noDuplicateKeys!1510 lt!1784409)))

(assert (=> d!1457515 (= (addToMapMapFromBucket!971 lt!1784409 (ListMap!4290 Nil!51546)) lt!1784962)))

(declare-fun b!4626667 () Bool)

(declare-fun e!2886059 () Bool)

(assert (=> b!4626667 (= e!2886059 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192429))))

(declare-fun b!4626668 () Bool)

(assert (=> b!4626668 (= e!2886060 (invariantList!1207 (toList!4985 lt!1784962)))))

(declare-fun call!322744 () Bool)

(declare-fun bm!322740 () Bool)

(assert (=> bm!322740 (= call!322744 (forall!10831 (ite c!791973 (toList!4985 (ListMap!4290 Nil!51546)) lt!1784409) (ite c!791973 lambda!192427 lambda!192429)))))

(assert (=> b!4626669 (= e!2886061 lt!1784953)))

(declare-fun lt!1784963 () ListMap!4289)

(assert (=> b!4626669 (= lt!1784963 (+!1876 (ListMap!4290 Nil!51546) (h!57600 lt!1784409)))))

(assert (=> b!4626669 (= lt!1784953 (addToMapMapFromBucket!971 (t!358706 lt!1784409) (+!1876 (ListMap!4290 Nil!51546) (h!57600 lt!1784409))))))

(declare-fun lt!1784955 () Unit!112260)

(assert (=> b!4626669 (= lt!1784955 call!322743)))

(assert (=> b!4626669 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192428)))

(declare-fun lt!1784959 () Unit!112260)

(assert (=> b!4626669 (= lt!1784959 lt!1784955)))

(assert (=> b!4626669 (forall!10831 (toList!4985 lt!1784963) lambda!192429)))

(declare-fun lt!1784947 () Unit!112260)

(declare-fun Unit!112345 () Unit!112260)

(assert (=> b!4626669 (= lt!1784947 Unit!112345)))

(assert (=> b!4626669 (forall!10831 (t!358706 lt!1784409) lambda!192429)))

(declare-fun lt!1784957 () Unit!112260)

(declare-fun Unit!112347 () Unit!112260)

(assert (=> b!4626669 (= lt!1784957 Unit!112347)))

(declare-fun lt!1784951 () Unit!112260)

(declare-fun Unit!112348 () Unit!112260)

(assert (=> b!4626669 (= lt!1784951 Unit!112348)))

(declare-fun lt!1784961 () Unit!112260)

(assert (=> b!4626669 (= lt!1784961 (forallContained!3059 (toList!4985 lt!1784963) lambda!192429 (h!57600 lt!1784409)))))

(assert (=> b!4626669 (contains!14597 lt!1784963 (_1!29537 (h!57600 lt!1784409)))))

(declare-fun lt!1784948 () Unit!112260)

(declare-fun Unit!112349 () Unit!112260)

(assert (=> b!4626669 (= lt!1784948 Unit!112349)))

(assert (=> b!4626669 (contains!14597 lt!1784953 (_1!29537 (h!57600 lt!1784409)))))

(declare-fun lt!1784956 () Unit!112260)

(declare-fun Unit!112351 () Unit!112260)

(assert (=> b!4626669 (= lt!1784956 Unit!112351)))

(assert (=> b!4626669 (forall!10831 lt!1784409 lambda!192429)))

(declare-fun lt!1784949 () Unit!112260)

(declare-fun Unit!112352 () Unit!112260)

(assert (=> b!4626669 (= lt!1784949 Unit!112352)))

(assert (=> b!4626669 (forall!10831 (toList!4985 lt!1784963) lambda!192429)))

(declare-fun lt!1784954 () Unit!112260)

(declare-fun Unit!112354 () Unit!112260)

(assert (=> b!4626669 (= lt!1784954 Unit!112354)))

(declare-fun lt!1784960 () Unit!112260)

(declare-fun Unit!112355 () Unit!112260)

(assert (=> b!4626669 (= lt!1784960 Unit!112355)))

(declare-fun lt!1784964 () Unit!112260)

(assert (=> b!4626669 (= lt!1784964 (addForallContainsKeyThenBeforeAdding!508 (ListMap!4290 Nil!51546) lt!1784953 (_1!29537 (h!57600 lt!1784409)) (_2!29537 (h!57600 lt!1784409))))))

(assert (=> b!4626669 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192429)))

(declare-fun lt!1784952 () Unit!112260)

(assert (=> b!4626669 (= lt!1784952 lt!1784964)))

(assert (=> b!4626669 call!322745))

(declare-fun lt!1784958 () Unit!112260)

(declare-fun Unit!112357 () Unit!112260)

(assert (=> b!4626669 (= lt!1784958 Unit!112357)))

(declare-fun res!1940352 () Bool)

(assert (=> b!4626669 (= res!1940352 call!322744)))

(assert (=> b!4626669 (=> (not res!1940352) (not e!2886059))))

(assert (=> b!4626669 e!2886059))

(declare-fun lt!1784946 () Unit!112260)

(declare-fun Unit!112358 () Unit!112260)

(assert (=> b!4626669 (= lt!1784946 Unit!112358)))

(assert (=> b!4626670 (= e!2886061 (ListMap!4290 Nil!51546))))

(declare-fun lt!1784945 () Unit!112260)

(assert (=> b!4626670 (= lt!1784945 call!322743)))

(assert (=> b!4626670 call!322744))

(declare-fun lt!1784965 () Unit!112260)

(assert (=> b!4626670 (= lt!1784965 lt!1784945)))

(assert (=> b!4626670 call!322745))

(declare-fun lt!1784950 () Unit!112260)

(declare-fun Unit!112359 () Unit!112260)

(assert (=> b!4626670 (= lt!1784950 Unit!112359)))

(assert (= (and d!1457515 c!791973) b!4626670))

(assert (= (and d!1457515 (not c!791973)) b!4626669))

(assert (= (and b!4626669 res!1940352) b!4626667))

(assert (= (or b!4626670 b!4626669) bm!322739))

(assert (= (or b!4626670 b!4626669) bm!322738))

(assert (= (or b!4626670 b!4626669) bm!322740))

(assert (= (and d!1457515 res!1940353) b!4626666))

(assert (= (and b!4626666 res!1940354) b!4626668))

(declare-fun m!5469845 () Bool)

(assert (=> b!4626668 m!5469845))

(declare-fun m!5469847 () Bool)

(assert (=> b!4626666 m!5469847))

(declare-fun m!5469849 () Bool)

(assert (=> bm!322740 m!5469849))

(declare-fun m!5469851 () Bool)

(assert (=> d!1457515 m!5469851))

(assert (=> d!1457515 m!5469337))

(assert (=> bm!322739 m!5469611))

(declare-fun m!5469853 () Bool)

(assert (=> bm!322738 m!5469853))

(declare-fun m!5469855 () Bool)

(assert (=> b!4626669 m!5469855))

(declare-fun m!5469857 () Bool)

(assert (=> b!4626669 m!5469857))

(declare-fun m!5469859 () Bool)

(assert (=> b!4626669 m!5469859))

(declare-fun m!5469861 () Bool)

(assert (=> b!4626669 m!5469861))

(declare-fun m!5469863 () Bool)

(assert (=> b!4626669 m!5469863))

(declare-fun m!5469865 () Bool)

(assert (=> b!4626669 m!5469865))

(declare-fun m!5469867 () Bool)

(assert (=> b!4626669 m!5469867))

(declare-fun m!5469869 () Bool)

(assert (=> b!4626669 m!5469869))

(assert (=> b!4626669 m!5469855))

(assert (=> b!4626669 m!5469867))

(declare-fun m!5469873 () Bool)

(assert (=> b!4626669 m!5469873))

(declare-fun m!5469875 () Bool)

(assert (=> b!4626669 m!5469875))

(declare-fun m!5469877 () Bool)

(assert (=> b!4626669 m!5469877))

(assert (=> b!4626667 m!5469861))

(assert (=> b!4626254 d!1457515))

(declare-fun d!1457525 () Bool)

(assert (=> d!1457525 (= (eq!825 (addToMapMapFromBucket!971 (Cons!51546 lt!1784425 lt!1784411) (ListMap!4290 Nil!51546)) (+!1876 (addToMapMapFromBucket!971 lt!1784411 (ListMap!4290 Nil!51546)) lt!1784425)) (= (content!8807 (toList!4985 (addToMapMapFromBucket!971 (Cons!51546 lt!1784425 lt!1784411) (ListMap!4290 Nil!51546)))) (content!8807 (toList!4985 (+!1876 (addToMapMapFromBucket!971 lt!1784411 (ListMap!4290 Nil!51546)) lt!1784425)))))))

(declare-fun bs!1024208 () Bool)

(assert (= bs!1024208 d!1457525))

(declare-fun m!5469879 () Bool)

(assert (=> bs!1024208 m!5469879))

(declare-fun m!5469883 () Bool)

(assert (=> bs!1024208 m!5469883))

(assert (=> b!4626254 d!1457525))

(declare-fun bs!1024211 () Bool)

(declare-fun b!4626679 () Bool)

(assert (= bs!1024211 (and b!4626679 b!4626665)))

(declare-fun lambda!192432 () Int)

(assert (=> bs!1024211 (= lambda!192432 lambda!192422)))

(declare-fun bs!1024214 () Bool)

(assert (= bs!1024214 (and b!4626679 d!1457481)))

(assert (=> bs!1024214 (= (= (ListMap!4290 Nil!51546) lt!1784853) (= lambda!192432 lambda!192405))))

(declare-fun bs!1024216 () Bool)

(assert (= bs!1024216 (and b!4626679 d!1457509)))

(assert (=> bs!1024216 (= (= (ListMap!4290 Nil!51546) lt!1784941) (= lambda!192432 lambda!192426))))

(declare-fun bs!1024218 () Bool)

(assert (= bs!1024218 (and b!4626679 d!1457319)))

(assert (=> bs!1024218 (not (= lambda!192432 lambda!192297))))

(declare-fun bs!1024219 () Bool)

(assert (= bs!1024219 (and b!4626679 b!4626664)))

(assert (=> bs!1024219 (= (= (ListMap!4290 Nil!51546) lt!1784932) (= lambda!192432 lambda!192425))))

(declare-fun bs!1024220 () Bool)

(assert (= bs!1024220 (and b!4626679 d!1457455)))

(assert (=> bs!1024220 (= (= (ListMap!4290 Nil!51546) lt!1784768) (= lambda!192432 lambda!192392))))

(declare-fun bs!1024222 () Bool)

(assert (= bs!1024222 (and b!4626679 d!1457453)))

(assert (=> bs!1024222 (not (= lambda!192432 lambda!192331))))

(declare-fun bs!1024224 () Bool)

(assert (= bs!1024224 (and b!4626679 b!4626595)))

(assert (=> bs!1024224 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192432 lambda!192388))))

(declare-fun bs!1024226 () Bool)

(assert (= bs!1024226 (and b!4626679 b!4626669)))

(assert (=> bs!1024226 (= (= (ListMap!4290 Nil!51546) lt!1784953) (= lambda!192432 lambda!192429))))

(declare-fun bs!1024228 () Bool)

(assert (= bs!1024228 (and b!4626679 d!1457515)))

(assert (=> bs!1024228 (= (= (ListMap!4290 Nil!51546) lt!1784962) (= lambda!192432 lambda!192430))))

(declare-fun bs!1024230 () Bool)

(assert (= bs!1024230 (and b!4626679 b!4626630)))

(assert (=> bs!1024230 (= (= (ListMap!4290 Nil!51546) lt!1784844) (= lambda!192432 lambda!192404))))

(declare-fun bs!1024232 () Bool)

(assert (= bs!1024232 (and b!4626679 b!4626594)))

(assert (=> bs!1024232 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192432 lambda!192389))))

(declare-fun bs!1024233 () Bool)

(assert (= bs!1024233 (and b!4626679 b!4626670)))

(assert (=> bs!1024233 (= lambda!192432 lambda!192427)))

(declare-fun bs!1024235 () Bool)

(assert (= bs!1024235 (and b!4626679 b!4626631)))

(assert (=> bs!1024235 (= lambda!192432 lambda!192402)))

(assert (=> bs!1024232 (= (= (ListMap!4290 Nil!51546) lt!1784759) (= lambda!192432 lambda!192390))))

(assert (=> bs!1024230 (= lambda!192432 lambda!192403)))

(assert (=> bs!1024219 (= lambda!192432 lambda!192424)))

(assert (=> bs!1024226 (= lambda!192432 lambda!192428)))

(assert (=> b!4626679 true))

(declare-fun bs!1024237 () Bool)

(declare-fun b!4626678 () Bool)

(assert (= bs!1024237 (and b!4626678 b!4626665)))

(declare-fun lambda!192433 () Int)

(assert (=> bs!1024237 (= lambda!192433 lambda!192422)))

(declare-fun bs!1024238 () Bool)

(assert (= bs!1024238 (and b!4626678 d!1457481)))

(assert (=> bs!1024238 (= (= (ListMap!4290 Nil!51546) lt!1784853) (= lambda!192433 lambda!192405))))

(declare-fun bs!1024239 () Bool)

(assert (= bs!1024239 (and b!4626678 d!1457509)))

(assert (=> bs!1024239 (= (= (ListMap!4290 Nil!51546) lt!1784941) (= lambda!192433 lambda!192426))))

(declare-fun bs!1024240 () Bool)

(assert (= bs!1024240 (and b!4626678 d!1457319)))

(assert (=> bs!1024240 (not (= lambda!192433 lambda!192297))))

(declare-fun bs!1024241 () Bool)

(assert (= bs!1024241 (and b!4626678 b!4626664)))

(assert (=> bs!1024241 (= (= (ListMap!4290 Nil!51546) lt!1784932) (= lambda!192433 lambda!192425))))

(declare-fun bs!1024242 () Bool)

(assert (= bs!1024242 (and b!4626678 d!1457455)))

(assert (=> bs!1024242 (= (= (ListMap!4290 Nil!51546) lt!1784768) (= lambda!192433 lambda!192392))))

(declare-fun bs!1024243 () Bool)

(assert (= bs!1024243 (and b!4626678 d!1457453)))

(assert (=> bs!1024243 (not (= lambda!192433 lambda!192331))))

(declare-fun bs!1024245 () Bool)

(assert (= bs!1024245 (and b!4626678 b!4626595)))

(assert (=> bs!1024245 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192433 lambda!192388))))

(declare-fun bs!1024247 () Bool)

(assert (= bs!1024247 (and b!4626678 b!4626669)))

(assert (=> bs!1024247 (= (= (ListMap!4290 Nil!51546) lt!1784953) (= lambda!192433 lambda!192429))))

(declare-fun bs!1024248 () Bool)

(assert (= bs!1024248 (and b!4626678 d!1457515)))

(assert (=> bs!1024248 (= (= (ListMap!4290 Nil!51546) lt!1784962) (= lambda!192433 lambda!192430))))

(declare-fun bs!1024251 () Bool)

(assert (= bs!1024251 (and b!4626678 b!4626630)))

(assert (=> bs!1024251 (= (= (ListMap!4290 Nil!51546) lt!1784844) (= lambda!192433 lambda!192404))))

(declare-fun bs!1024253 () Bool)

(assert (= bs!1024253 (and b!4626678 b!4626594)))

(assert (=> bs!1024253 (= (= (ListMap!4290 Nil!51546) lt!1784410) (= lambda!192433 lambda!192389))))

(declare-fun bs!1024255 () Bool)

(assert (= bs!1024255 (and b!4626678 b!4626670)))

(assert (=> bs!1024255 (= lambda!192433 lambda!192427)))

(declare-fun bs!1024257 () Bool)

(assert (= bs!1024257 (and b!4626678 b!4626679)))

(assert (=> bs!1024257 (= lambda!192433 lambda!192432)))

(declare-fun bs!1024258 () Bool)

(assert (= bs!1024258 (and b!4626678 b!4626631)))

(assert (=> bs!1024258 (= lambda!192433 lambda!192402)))

(assert (=> bs!1024253 (= (= (ListMap!4290 Nil!51546) lt!1784759) (= lambda!192433 lambda!192390))))

(assert (=> bs!1024251 (= lambda!192433 lambda!192403)))

(assert (=> bs!1024241 (= lambda!192433 lambda!192424)))

(assert (=> bs!1024247 (= lambda!192433 lambda!192428)))

(assert (=> b!4626678 true))

(declare-fun lt!1784986 () ListMap!4289)

(declare-fun lambda!192435 () Int)

(assert (=> bs!1024237 (= (= lt!1784986 (ListMap!4290 Nil!51546)) (= lambda!192435 lambda!192422))))

(assert (=> bs!1024238 (= (= lt!1784986 lt!1784853) (= lambda!192435 lambda!192405))))

(assert (=> bs!1024239 (= (= lt!1784986 lt!1784941) (= lambda!192435 lambda!192426))))

(assert (=> bs!1024240 (not (= lambda!192435 lambda!192297))))

(assert (=> bs!1024241 (= (= lt!1784986 lt!1784932) (= lambda!192435 lambda!192425))))

(assert (=> bs!1024242 (= (= lt!1784986 lt!1784768) (= lambda!192435 lambda!192392))))

(assert (=> bs!1024243 (not (= lambda!192435 lambda!192331))))

(assert (=> bs!1024245 (= (= lt!1784986 lt!1784410) (= lambda!192435 lambda!192388))))

(assert (=> b!4626678 (= (= lt!1784986 (ListMap!4290 Nil!51546)) (= lambda!192435 lambda!192433))))

(assert (=> bs!1024247 (= (= lt!1784986 lt!1784953) (= lambda!192435 lambda!192429))))

(assert (=> bs!1024248 (= (= lt!1784986 lt!1784962) (= lambda!192435 lambda!192430))))

(assert (=> bs!1024251 (= (= lt!1784986 lt!1784844) (= lambda!192435 lambda!192404))))

(assert (=> bs!1024253 (= (= lt!1784986 lt!1784410) (= lambda!192435 lambda!192389))))

(assert (=> bs!1024255 (= (= lt!1784986 (ListMap!4290 Nil!51546)) (= lambda!192435 lambda!192427))))

(assert (=> bs!1024257 (= (= lt!1784986 (ListMap!4290 Nil!51546)) (= lambda!192435 lambda!192432))))

(assert (=> bs!1024258 (= (= lt!1784986 (ListMap!4290 Nil!51546)) (= lambda!192435 lambda!192402))))

(assert (=> bs!1024253 (= (= lt!1784986 lt!1784759) (= lambda!192435 lambda!192390))))

(assert (=> bs!1024251 (= (= lt!1784986 (ListMap!4290 Nil!51546)) (= lambda!192435 lambda!192403))))

(assert (=> bs!1024241 (= (= lt!1784986 (ListMap!4290 Nil!51546)) (= lambda!192435 lambda!192424))))

(assert (=> bs!1024247 (= (= lt!1784986 (ListMap!4290 Nil!51546)) (= lambda!192435 lambda!192428))))

(assert (=> b!4626678 true))

(declare-fun bs!1024281 () Bool)

(declare-fun d!1457527 () Bool)

(assert (= bs!1024281 (and d!1457527 b!4626665)))

(declare-fun lt!1784995 () ListMap!4289)

(declare-fun lambda!192438 () Int)

(assert (=> bs!1024281 (= (= lt!1784995 (ListMap!4290 Nil!51546)) (= lambda!192438 lambda!192422))))

(declare-fun bs!1024282 () Bool)

(assert (= bs!1024282 (and d!1457527 d!1457481)))

(assert (=> bs!1024282 (= (= lt!1784995 lt!1784853) (= lambda!192438 lambda!192405))))

(declare-fun bs!1024283 () Bool)

(assert (= bs!1024283 (and d!1457527 d!1457509)))

(assert (=> bs!1024283 (= (= lt!1784995 lt!1784941) (= lambda!192438 lambda!192426))))

(declare-fun bs!1024284 () Bool)

(assert (= bs!1024284 (and d!1457527 d!1457319)))

(assert (=> bs!1024284 (not (= lambda!192438 lambda!192297))))

(declare-fun bs!1024285 () Bool)

(assert (= bs!1024285 (and d!1457527 b!4626678)))

(assert (=> bs!1024285 (= (= lt!1784995 lt!1784986) (= lambda!192438 lambda!192435))))

(declare-fun bs!1024286 () Bool)

(assert (= bs!1024286 (and d!1457527 b!4626664)))

(assert (=> bs!1024286 (= (= lt!1784995 lt!1784932) (= lambda!192438 lambda!192425))))

(declare-fun bs!1024287 () Bool)

(assert (= bs!1024287 (and d!1457527 d!1457455)))

(assert (=> bs!1024287 (= (= lt!1784995 lt!1784768) (= lambda!192438 lambda!192392))))

(declare-fun bs!1024288 () Bool)

(assert (= bs!1024288 (and d!1457527 d!1457453)))

(assert (=> bs!1024288 (not (= lambda!192438 lambda!192331))))

(declare-fun bs!1024289 () Bool)

(assert (= bs!1024289 (and d!1457527 b!4626595)))

(assert (=> bs!1024289 (= (= lt!1784995 lt!1784410) (= lambda!192438 lambda!192388))))

(assert (=> bs!1024285 (= (= lt!1784995 (ListMap!4290 Nil!51546)) (= lambda!192438 lambda!192433))))

(declare-fun bs!1024290 () Bool)

(assert (= bs!1024290 (and d!1457527 b!4626669)))

(assert (=> bs!1024290 (= (= lt!1784995 lt!1784953) (= lambda!192438 lambda!192429))))

(declare-fun bs!1024291 () Bool)

(assert (= bs!1024291 (and d!1457527 d!1457515)))

(assert (=> bs!1024291 (= (= lt!1784995 lt!1784962) (= lambda!192438 lambda!192430))))

(declare-fun bs!1024292 () Bool)

(assert (= bs!1024292 (and d!1457527 b!4626630)))

(assert (=> bs!1024292 (= (= lt!1784995 lt!1784844) (= lambda!192438 lambda!192404))))

(declare-fun bs!1024293 () Bool)

(assert (= bs!1024293 (and d!1457527 b!4626594)))

(assert (=> bs!1024293 (= (= lt!1784995 lt!1784410) (= lambda!192438 lambda!192389))))

(declare-fun bs!1024294 () Bool)

(assert (= bs!1024294 (and d!1457527 b!4626670)))

(assert (=> bs!1024294 (= (= lt!1784995 (ListMap!4290 Nil!51546)) (= lambda!192438 lambda!192427))))

(declare-fun bs!1024295 () Bool)

(assert (= bs!1024295 (and d!1457527 b!4626679)))

(assert (=> bs!1024295 (= (= lt!1784995 (ListMap!4290 Nil!51546)) (= lambda!192438 lambda!192432))))

(declare-fun bs!1024296 () Bool)

(assert (= bs!1024296 (and d!1457527 b!4626631)))

(assert (=> bs!1024296 (= (= lt!1784995 (ListMap!4290 Nil!51546)) (= lambda!192438 lambda!192402))))

(assert (=> bs!1024293 (= (= lt!1784995 lt!1784759) (= lambda!192438 lambda!192390))))

(assert (=> bs!1024292 (= (= lt!1784995 (ListMap!4290 Nil!51546)) (= lambda!192438 lambda!192403))))

(assert (=> bs!1024286 (= (= lt!1784995 (ListMap!4290 Nil!51546)) (= lambda!192438 lambda!192424))))

(assert (=> bs!1024290 (= (= lt!1784995 (ListMap!4290 Nil!51546)) (= lambda!192438 lambda!192428))))

(assert (=> d!1457527 true))

(declare-fun c!791974 () Bool)

(declare-fun call!322748 () Bool)

(declare-fun bm!322741 () Bool)

(assert (=> bm!322741 (= call!322748 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) (ite c!791974 lambda!192432 lambda!192435)))))

(declare-fun b!4626675 () Bool)

(declare-fun res!1940361 () Bool)

(declare-fun e!2886065 () Bool)

(assert (=> b!4626675 (=> (not res!1940361) (not e!2886065))))

(assert (=> b!4626675 (= res!1940361 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192438))))

(declare-fun bm!322742 () Bool)

(declare-fun call!322746 () Unit!112260)

(assert (=> bm!322742 (= call!322746 (lemmaContainsAllItsOwnKeys!509 (ListMap!4290 Nil!51546)))))

(assert (=> d!1457527 e!2886065))

(declare-fun res!1940360 () Bool)

(assert (=> d!1457527 (=> (not res!1940360) (not e!2886065))))

(assert (=> d!1457527 (= res!1940360 (forall!10831 (Cons!51546 lt!1784412 lt!1784409) lambda!192438))))

(declare-fun e!2886066 () ListMap!4289)

(assert (=> d!1457527 (= lt!1784995 e!2886066)))

(assert (=> d!1457527 (= c!791974 ((_ is Nil!51546) (Cons!51546 lt!1784412 lt!1784409)))))

(assert (=> d!1457527 (noDuplicateKeys!1510 (Cons!51546 lt!1784412 lt!1784409))))

(assert (=> d!1457527 (= (addToMapMapFromBucket!971 (Cons!51546 lt!1784412 lt!1784409) (ListMap!4290 Nil!51546)) lt!1784995)))

(declare-fun b!4626676 () Bool)

(declare-fun e!2886064 () Bool)

(assert (=> b!4626676 (= e!2886064 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192435))))

(declare-fun b!4626677 () Bool)

(assert (=> b!4626677 (= e!2886065 (invariantList!1207 (toList!4985 lt!1784995)))))

(declare-fun call!322747 () Bool)

(declare-fun bm!322743 () Bool)

(assert (=> bm!322743 (= call!322747 (forall!10831 (ite c!791974 (toList!4985 (ListMap!4290 Nil!51546)) (Cons!51546 lt!1784412 lt!1784409)) (ite c!791974 lambda!192432 lambda!192435)))))

(assert (=> b!4626678 (= e!2886066 lt!1784986)))

(declare-fun lt!1784996 () ListMap!4289)

(assert (=> b!4626678 (= lt!1784996 (+!1876 (ListMap!4290 Nil!51546) (h!57600 (Cons!51546 lt!1784412 lt!1784409))))))

(assert (=> b!4626678 (= lt!1784986 (addToMapMapFromBucket!971 (t!358706 (Cons!51546 lt!1784412 lt!1784409)) (+!1876 (ListMap!4290 Nil!51546) (h!57600 (Cons!51546 lt!1784412 lt!1784409)))))))

(declare-fun lt!1784988 () Unit!112260)

(assert (=> b!4626678 (= lt!1784988 call!322746)))

(assert (=> b!4626678 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192433)))

(declare-fun lt!1784992 () Unit!112260)

(assert (=> b!4626678 (= lt!1784992 lt!1784988)))

(assert (=> b!4626678 (forall!10831 (toList!4985 lt!1784996) lambda!192435)))

(declare-fun lt!1784980 () Unit!112260)

(declare-fun Unit!112360 () Unit!112260)

(assert (=> b!4626678 (= lt!1784980 Unit!112360)))

(assert (=> b!4626678 (forall!10831 (t!358706 (Cons!51546 lt!1784412 lt!1784409)) lambda!192435)))

(declare-fun lt!1784990 () Unit!112260)

(declare-fun Unit!112361 () Unit!112260)

(assert (=> b!4626678 (= lt!1784990 Unit!112361)))

(declare-fun lt!1784984 () Unit!112260)

(declare-fun Unit!112362 () Unit!112260)

(assert (=> b!4626678 (= lt!1784984 Unit!112362)))

(declare-fun lt!1784994 () Unit!112260)

(assert (=> b!4626678 (= lt!1784994 (forallContained!3059 (toList!4985 lt!1784996) lambda!192435 (h!57600 (Cons!51546 lt!1784412 lt!1784409))))))

(assert (=> b!4626678 (contains!14597 lt!1784996 (_1!29537 (h!57600 (Cons!51546 lt!1784412 lt!1784409))))))

(declare-fun lt!1784981 () Unit!112260)

(declare-fun Unit!112363 () Unit!112260)

(assert (=> b!4626678 (= lt!1784981 Unit!112363)))

(assert (=> b!4626678 (contains!14597 lt!1784986 (_1!29537 (h!57600 (Cons!51546 lt!1784412 lt!1784409))))))

(declare-fun lt!1784989 () Unit!112260)

(declare-fun Unit!112364 () Unit!112260)

(assert (=> b!4626678 (= lt!1784989 Unit!112364)))

(assert (=> b!4626678 (forall!10831 (Cons!51546 lt!1784412 lt!1784409) lambda!192435)))

(declare-fun lt!1784982 () Unit!112260)

(declare-fun Unit!112365 () Unit!112260)

(assert (=> b!4626678 (= lt!1784982 Unit!112365)))

(assert (=> b!4626678 (forall!10831 (toList!4985 lt!1784996) lambda!192435)))

(declare-fun lt!1784987 () Unit!112260)

(declare-fun Unit!112366 () Unit!112260)

(assert (=> b!4626678 (= lt!1784987 Unit!112366)))

(declare-fun lt!1784993 () Unit!112260)

(declare-fun Unit!112367 () Unit!112260)

(assert (=> b!4626678 (= lt!1784993 Unit!112367)))

(declare-fun lt!1784997 () Unit!112260)

(assert (=> b!4626678 (= lt!1784997 (addForallContainsKeyThenBeforeAdding!508 (ListMap!4290 Nil!51546) lt!1784986 (_1!29537 (h!57600 (Cons!51546 lt!1784412 lt!1784409))) (_2!29537 (h!57600 (Cons!51546 lt!1784412 lt!1784409)))))))

(assert (=> b!4626678 (forall!10831 (toList!4985 (ListMap!4290 Nil!51546)) lambda!192435)))

(declare-fun lt!1784985 () Unit!112260)

(assert (=> b!4626678 (= lt!1784985 lt!1784997)))

(assert (=> b!4626678 call!322748))

(declare-fun lt!1784991 () Unit!112260)

(declare-fun Unit!112368 () Unit!112260)

(assert (=> b!4626678 (= lt!1784991 Unit!112368)))

(declare-fun res!1940359 () Bool)

(assert (=> b!4626678 (= res!1940359 call!322747)))

(assert (=> b!4626678 (=> (not res!1940359) (not e!2886064))))

(assert (=> b!4626678 e!2886064))

(declare-fun lt!1784979 () Unit!112260)

(declare-fun Unit!112369 () Unit!112260)

(assert (=> b!4626678 (= lt!1784979 Unit!112369)))

(assert (=> b!4626679 (= e!2886066 (ListMap!4290 Nil!51546))))

(declare-fun lt!1784978 () Unit!112260)

(assert (=> b!4626679 (= lt!1784978 call!322746)))

(assert (=> b!4626679 call!322747))

(declare-fun lt!1784998 () Unit!112260)

(assert (=> b!4626679 (= lt!1784998 lt!1784978)))

(assert (=> b!4626679 call!322748))

(declare-fun lt!1784983 () Unit!112260)

(declare-fun Unit!112370 () Unit!112260)

(assert (=> b!4626679 (= lt!1784983 Unit!112370)))

(assert (= (and d!1457527 c!791974) b!4626679))

(assert (= (and d!1457527 (not c!791974)) b!4626678))

(assert (= (and b!4626678 res!1940359) b!4626676))

(assert (= (or b!4626679 b!4626678) bm!322742))

(assert (= (or b!4626679 b!4626678) bm!322741))

(assert (= (or b!4626679 b!4626678) bm!322743))

(assert (= (and d!1457527 res!1940360) b!4626675))

(assert (= (and b!4626675 res!1940361) b!4626677))

(declare-fun m!5469901 () Bool)

(assert (=> b!4626677 m!5469901))

(declare-fun m!5469903 () Bool)

(assert (=> b!4626675 m!5469903))

(declare-fun m!5469905 () Bool)

(assert (=> bm!322743 m!5469905))

(declare-fun m!5469907 () Bool)

(assert (=> d!1457527 m!5469907))

(declare-fun m!5469909 () Bool)

(assert (=> d!1457527 m!5469909))

(assert (=> bm!322742 m!5469611))

(declare-fun m!5469911 () Bool)

(assert (=> bm!322741 m!5469911))

(declare-fun m!5469913 () Bool)

(assert (=> b!4626678 m!5469913))

(declare-fun m!5469915 () Bool)

(assert (=> b!4626678 m!5469915))

(declare-fun m!5469917 () Bool)

(assert (=> b!4626678 m!5469917))

(declare-fun m!5469919 () Bool)

(assert (=> b!4626678 m!5469919))

(declare-fun m!5469921 () Bool)

(assert (=> b!4626678 m!5469921))

(declare-fun m!5469923 () Bool)

(assert (=> b!4626678 m!5469923))

(declare-fun m!5469925 () Bool)

(assert (=> b!4626678 m!5469925))

(declare-fun m!5469927 () Bool)

(assert (=> b!4626678 m!5469927))

(assert (=> b!4626678 m!5469913))

(assert (=> b!4626678 m!5469925))

(declare-fun m!5469929 () Bool)

(assert (=> b!4626678 m!5469929))

(declare-fun m!5469931 () Bool)

(assert (=> b!4626678 m!5469931))

(declare-fun m!5469933 () Bool)

(assert (=> b!4626678 m!5469933))

(assert (=> b!4626676 m!5469919))

(assert (=> b!4626254 d!1457527))

(declare-fun d!1457535 () Bool)

(assert (=> d!1457535 (= (eq!825 lt!1784422 (+!1876 (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547)) (h!57600 oldBucket!40))) (= (content!8807 (toList!4985 lt!1784422)) (content!8807 (toList!4985 (+!1876 (extractMap!1566 (Cons!51547 (tuple2!52489 hash!414 lt!1784409) Nil!51547)) (h!57600 oldBucket!40))))))))

(declare-fun bs!1024313 () Bool)

(assert (= bs!1024313 d!1457535))

(declare-fun m!5469935 () Bool)

(assert (=> bs!1024313 m!5469935))

(declare-fun m!5469937 () Bool)

(assert (=> bs!1024313 m!5469937))

(assert (=> b!4626254 d!1457535))

(declare-fun b!4626693 () Bool)

(declare-fun tp!1342150 () Bool)

(declare-fun e!2886074 () Bool)

(assert (=> b!4626693 (= e!2886074 (and tp_is_empty!29333 tp_is_empty!29335 tp!1342150))))

(assert (=> b!4626258 (= tp!1342147 e!2886074)))

(assert (= (and b!4626258 ((_ is Cons!51546) (t!358706 newBucket!224))) b!4626693))

(declare-fun tp!1342151 () Bool)

(declare-fun b!4626694 () Bool)

(declare-fun e!2886075 () Bool)

(assert (=> b!4626694 (= e!2886075 (and tp_is_empty!29333 tp_is_empty!29335 tp!1342151))))

(assert (=> b!4626267 (= tp!1342146 e!2886075)))

(assert (= (and b!4626267 ((_ is Cons!51546) (t!358706 oldBucket!40))) b!4626694))

(declare-fun b_lambda!170765 () Bool)

(assert (= b_lambda!170757 (or b!4626260 b_lambda!170765)))

(declare-fun bs!1024314 () Bool)

(declare-fun d!1457537 () Bool)

(assert (= bs!1024314 (and d!1457537 b!4626260)))

(assert (=> bs!1024314 (= (dynLambda!21501 lambda!192294 (h!57601 lt!1784417)) (noDuplicateKeys!1510 (_2!29538 (h!57601 lt!1784417))))))

(declare-fun m!5469939 () Bool)

(assert (=> bs!1024314 m!5469939))

(assert (=> b!4626275 d!1457537))

(declare-fun b_lambda!170767 () Bool)

(assert (= b_lambda!170761 (or b!4626260 b_lambda!170767)))

(declare-fun bs!1024315 () Bool)

(declare-fun d!1457539 () Bool)

(assert (= bs!1024315 (and d!1457539 b!4626260)))

(assert (=> bs!1024315 (= (dynLambda!21501 lambda!192294 lt!1784419) (noDuplicateKeys!1510 (_2!29538 lt!1784419)))))

(declare-fun m!5469945 () Bool)

(assert (=> bs!1024315 m!5469945))

(assert (=> d!1457365 d!1457539))

(check-sat (not b!4626561) (not bm!322725) (not d!1457401) (not d!1457335) (not b!4626591) (not b!4626662) (not bm!322734) (not b!4626669) (not b!4626634) (not d!1457351) (not bs!1024315) (not b!4626526) (not b!4626309) (not d!1457327) (not b!4626351) (not d!1457453) (not b!4626457) (not b!4626652) (not b!4626666) (not b!4626693) (not b_lambda!170767) (not b!4626554) (not d!1457475) (not b!4626410) (not b!4626352) (not b!4626653) (not d!1457331) (not d!1457489) (not b!4626623) (not b!4626676) (not bm!322737) (not b!4626594) (not bm!322739) tp_is_empty!29335 (not d!1457371) (not d!1457365) (not b!4626627) (not bs!1024314) (not b!4626556) (not bm!322738) (not b!4626567) (not d!1457375) (not b!4626424) (not b!4626624) (not b!4626276) (not bm!322736) (not d!1457429) (not b!4626553) (not b!4626678) (not b!4626651) (not d!1457397) (not d!1457505) (not b!4626555) (not d!1457323) (not b!4626558) (not b!4626605) (not b!4626568) (not b!4626520) (not b!4626569) (not bm!322717) (not d!1457367) (not b!4626559) (not b!4626435) (not d!1457393) (not b!4626659) (not d!1457527) (not b!4626632) (not b!4626655) (not d!1457319) (not d!1457329) (not b!4626461) (not bm!322726) (not b!4626629) (not b!4626661) (not d!1457455) (not d!1457427) (not d!1457445) (not d!1457381) (not d!1457535) (not b!4626522) (not b!4626694) (not b!4626628) (not d!1457479) (not d!1457495) (not b!4626353) (not b!4626390) (not b!4626437) (not b!4626675) (not b!4626323) (not b!4626656) (not bm!322742) (not d!1457515) (not bm!322702) (not b!4626658) (not b!4626668) (not d!1457395) (not d!1457461) (not b!4626650) (not b!4626521) (not bm!322743) (not bm!322715) (not d!1457459) (not bm!322740) (not b!4626667) (not d!1457337) (not b!4626523) (not b_lambda!170765) (not b!4626386) (not bm!322716) (not b!4626552) (not b!4626630) (not d!1457387) (not b!4626304) (not b!4626654) (not b!4626388) (not b!4626307) (not d!1457491) (not d!1457477) (not b!4626317) (not b!4626570) (not b!4626592) (not b!4626311) (not b!4626625) (not b!4626664) (not b!4626482) (not b!4626423) (not b!4626306) (not d!1457385) (not d!1457487) (not b!4626635) (not b!4626481) tp_is_empty!29333 (not b!4626663) (not bm!322735) (not d!1457399) (not b!4626354) (not d!1457357) (not d!1457507) (not bm!322741) (not b!4626593) (not d!1457449) (not bm!322727) (not d!1457525) (not b!4626677) (not d!1457435) (not d!1457509) (not d!1457425) (not d!1457417) (not d!1457481))
(check-sat)
