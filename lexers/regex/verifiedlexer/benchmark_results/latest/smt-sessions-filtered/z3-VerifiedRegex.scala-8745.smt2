; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466616 () Bool)

(assert start!466616)

(declare-fun b!4640743 () Bool)

(declare-fun res!1948990 () Bool)

(declare-fun e!2894969 () Bool)

(assert (=> b!4640743 (=> (not res!1948990) (not e!2894969))))

(declare-datatypes ((K!13130 0))(
  ( (K!13131 (val!18775 Int)) )
))
(declare-datatypes ((V!13376 0))(
  ( (V!13377 (val!18776 Int)) )
))
(declare-datatypes ((tuple2!52814 0))(
  ( (tuple2!52815 (_1!29701 K!13130) (_2!29701 V!13376)) )
))
(declare-datatypes ((List!51888 0))(
  ( (Nil!51764) (Cons!51764 (h!57872 tuple2!52814) (t!358970 List!51888)) )
))
(declare-fun newBucket!224 () List!51888)

(declare-fun noDuplicateKeys!1592 (List!51888) Bool)

(assert (=> b!4640743 (= res!1948990 (noDuplicateKeys!1592 newBucket!224))))

(declare-fun b!4640744 () Bool)

(declare-fun res!1948991 () Bool)

(declare-fun e!2894972 () Bool)

(assert (=> b!4640744 (=> res!1948991 e!2894972)))

(declare-fun oldBucket!40 () List!51888)

(declare-fun lt!1803554 () List!51888)

(declare-fun key!4968 () K!13130)

(declare-fun removePairForKey!1215 (List!51888 K!13130) List!51888)

(assert (=> b!4640744 (= res!1948991 (not (= (removePairForKey!1215 (t!358970 oldBucket!40) key!4968) lt!1803554)))))

(declare-fun res!1948982 () Bool)

(assert (=> start!466616 (=> (not res!1948982) (not e!2894969))))

(assert (=> start!466616 (= res!1948982 (noDuplicateKeys!1592 oldBucket!40))))

(assert (=> start!466616 e!2894969))

(assert (=> start!466616 true))

(declare-fun e!2894971 () Bool)

(assert (=> start!466616 e!2894971))

(declare-fun tp_is_empty!29661 () Bool)

(assert (=> start!466616 tp_is_empty!29661))

(declare-fun e!2894973 () Bool)

(assert (=> start!466616 e!2894973))

(declare-fun b!4640745 () Bool)

(declare-fun e!2894975 () Bool)

(assert (=> b!4640745 (= e!2894975 e!2894972)))

(declare-fun res!1948992 () Bool)

(assert (=> b!4640745 (=> res!1948992 e!2894972)))

(declare-fun tail!8215 (List!51888) List!51888)

(assert (=> b!4640745 (= res!1948992 (not (= (removePairForKey!1215 (tail!8215 oldBucket!40) key!4968) lt!1803554)))))

(assert (=> b!4640745 (= lt!1803554 (tail!8215 newBucket!224))))

(declare-fun tp!1342854 () Bool)

(declare-fun tp_is_empty!29663 () Bool)

(declare-fun b!4640746 () Bool)

(assert (=> b!4640746 (= e!2894971 (and tp_is_empty!29661 tp_is_empty!29663 tp!1342854))))

(declare-fun b!4640747 () Bool)

(declare-fun e!2894968 () Bool)

(declare-fun e!2894970 () Bool)

(assert (=> b!4640747 (= e!2894968 (not e!2894970))))

(declare-fun res!1948985 () Bool)

(assert (=> b!4640747 (=> res!1948985 e!2894970)))

(get-info :version)

(assert (=> b!4640747 (= res!1948985 (or (and ((_ is Cons!51764) oldBucket!40) (= (_1!29701 (h!57872 oldBucket!40)) key!4968)) (not ((_ is Cons!51764) oldBucket!40)) (= (_1!29701 (h!57872 oldBucket!40)) key!4968)))))

(declare-fun e!2894974 () Bool)

(assert (=> b!4640747 e!2894974))

(declare-fun res!1948989 () Bool)

(assert (=> b!4640747 (=> (not res!1948989) (not e!2894974))))

(declare-datatypes ((ListMap!4453 0))(
  ( (ListMap!4454 (toList!5129 List!51888)) )
))
(declare-fun lt!1803561 () ListMap!4453)

(declare-fun lt!1803558 () ListMap!4453)

(declare-fun addToMapMapFromBucket!1051 (List!51888 ListMap!4453) ListMap!4453)

(assert (=> b!4640747 (= res!1948989 (= lt!1803558 (addToMapMapFromBucket!1051 oldBucket!40 lt!1803561)))))

(declare-datatypes ((tuple2!52816 0))(
  ( (tuple2!52817 (_1!29702 (_ BitVec 64)) (_2!29702 List!51888)) )
))
(declare-datatypes ((List!51889 0))(
  ( (Nil!51765) (Cons!51765 (h!57873 tuple2!52816) (t!358971 List!51889)) )
))
(declare-fun extractMap!1648 (List!51889) ListMap!4453)

(assert (=> b!4640747 (= lt!1803561 (extractMap!1648 Nil!51765))))

(assert (=> b!4640747 true))

(declare-fun b!4640748 () Bool)

(declare-fun res!1948986 () Bool)

(assert (=> b!4640748 (=> (not res!1948986) (not e!2894968))))

(declare-datatypes ((Hashable!5989 0))(
  ( (HashableExt!5988 (__x!31692 Int)) )
))
(declare-fun hashF!1389 () Hashable!5989)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1446 (List!51888 (_ BitVec 64) Hashable!5989) Bool)

(assert (=> b!4640748 (= res!1948986 (allKeysSameHash!1446 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4640749 () Bool)

(declare-fun res!1948984 () Bool)

(assert (=> b!4640749 (=> (not res!1948984) (not e!2894969))))

(assert (=> b!4640749 (= res!1948984 (allKeysSameHash!1446 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4640750 () Bool)

(declare-fun tp!1342855 () Bool)

(assert (=> b!4640750 (= e!2894973 (and tp_is_empty!29661 tp_is_empty!29663 tp!1342855))))

(declare-fun b!4640751 () Bool)

(assert (=> b!4640751 (= e!2894974 (= lt!1803561 (ListMap!4454 Nil!51764)))))

(declare-fun b!4640752 () Bool)

(assert (=> b!4640752 (= e!2894972 true)))

(declare-fun lt!1803555 () List!51889)

(declare-fun contains!14885 (ListMap!4453 K!13130) Bool)

(assert (=> b!4640752 (contains!14885 (extractMap!1648 lt!1803555) key!4968)))

(declare-datatypes ((Unit!115253 0))(
  ( (Unit!115254) )
))
(declare-fun lt!1803560 () Unit!115253)

(declare-datatypes ((ListLongMap!3699 0))(
  ( (ListLongMap!3700 (toList!5130 List!51889)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!370 (ListLongMap!3699 K!13130 Hashable!5989) Unit!115253)

(assert (=> b!4640752 (= lt!1803560 (lemmaListContainsThenExtractedMapContains!370 (ListLongMap!3700 lt!1803555) key!4968 hashF!1389))))

(assert (=> b!4640752 (= lt!1803555 (Cons!51765 (tuple2!52817 hash!414 (t!358970 oldBucket!40)) Nil!51765))))

(declare-fun b!4640753 () Bool)

(declare-fun e!2894976 () Bool)

(assert (=> b!4640753 (= e!2894969 e!2894976)))

(declare-fun res!1948988 () Bool)

(assert (=> b!4640753 (=> (not res!1948988) (not e!2894976))))

(assert (=> b!4640753 (= res!1948988 (contains!14885 lt!1803558 key!4968))))

(declare-fun lt!1803565 () List!51889)

(assert (=> b!4640753 (= lt!1803558 (extractMap!1648 lt!1803565))))

(assert (=> b!4640753 (= lt!1803565 (Cons!51765 (tuple2!52817 hash!414 oldBucket!40) Nil!51765))))

(declare-fun b!4640754 () Bool)

(assert (=> b!4640754 (= e!2894976 e!2894968)))

(declare-fun res!1948981 () Bool)

(assert (=> b!4640754 (=> (not res!1948981) (not e!2894968))))

(declare-fun lt!1803566 () (_ BitVec 64))

(assert (=> b!4640754 (= res!1948981 (= lt!1803566 hash!414))))

(declare-fun hash!3683 (Hashable!5989 K!13130) (_ BitVec 64))

(assert (=> b!4640754 (= lt!1803566 (hash!3683 hashF!1389 key!4968))))

(declare-fun b!4640755 () Bool)

(declare-fun res!1948983 () Bool)

(assert (=> b!4640755 (=> (not res!1948983) (not e!2894969))))

(assert (=> b!4640755 (= res!1948983 (= (removePairForKey!1215 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4640756 () Bool)

(assert (=> b!4640756 (= e!2894970 e!2894975)))

(declare-fun res!1948987 () Bool)

(assert (=> b!4640756 (=> res!1948987 e!2894975)))

(declare-fun containsKey!2626 (List!51888 K!13130) Bool)

(assert (=> b!4640756 (= res!1948987 (not (containsKey!2626 (t!358970 oldBucket!40) key!4968)))))

(assert (=> b!4640756 (containsKey!2626 oldBucket!40 key!4968)))

(declare-fun lt!1803557 () Unit!115253)

(declare-fun lemmaGetPairDefinedThenContainsKey!106 (List!51888 K!13130 Hashable!5989) Unit!115253)

(assert (=> b!4640756 (= lt!1803557 (lemmaGetPairDefinedThenContainsKey!106 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1803564 () List!51888)

(declare-datatypes ((Option!11748 0))(
  ( (None!11747) (Some!11747 (v!45969 tuple2!52814)) )
))
(declare-fun isDefined!9013 (Option!11748) Bool)

(declare-fun getPair!352 (List!51888 K!13130) Option!11748)

(assert (=> b!4640756 (isDefined!9013 (getPair!352 lt!1803564 key!4968))))

(declare-fun lambda!196140 () Int)

(declare-fun lt!1803559 () Unit!115253)

(declare-fun lt!1803562 () tuple2!52816)

(declare-fun forallContained!3162 (List!51889 Int tuple2!52816) Unit!115253)

(assert (=> b!4640756 (= lt!1803559 (forallContained!3162 lt!1803565 lambda!196140 lt!1803562))))

(declare-fun contains!14886 (List!51889 tuple2!52816) Bool)

(assert (=> b!4640756 (contains!14886 lt!1803565 lt!1803562)))

(assert (=> b!4640756 (= lt!1803562 (tuple2!52817 lt!1803566 lt!1803564))))

(declare-fun lt!1803567 () Unit!115253)

(declare-fun lt!1803553 () ListLongMap!3699)

(declare-fun lemmaGetValueImpliesTupleContained!157 (ListLongMap!3699 (_ BitVec 64) List!51888) Unit!115253)

(assert (=> b!4640756 (= lt!1803567 (lemmaGetValueImpliesTupleContained!157 lt!1803553 lt!1803566 lt!1803564))))

(declare-fun apply!12225 (ListLongMap!3699 (_ BitVec 64)) List!51888)

(assert (=> b!4640756 (= lt!1803564 (apply!12225 lt!1803553 lt!1803566))))

(declare-fun contains!14887 (ListLongMap!3699 (_ BitVec 64)) Bool)

(assert (=> b!4640756 (contains!14887 lt!1803553 lt!1803566)))

(declare-fun lt!1803556 () Unit!115253)

(declare-fun lemmaInGenMapThenLongMapContainsHash!558 (ListLongMap!3699 K!13130 Hashable!5989) Unit!115253)

(assert (=> b!4640756 (= lt!1803556 (lemmaInGenMapThenLongMapContainsHash!558 lt!1803553 key!4968 hashF!1389))))

(declare-fun lt!1803563 () Unit!115253)

(declare-fun lemmaInGenMapThenGetPairDefined!148 (ListLongMap!3699 K!13130 Hashable!5989) Unit!115253)

(assert (=> b!4640756 (= lt!1803563 (lemmaInGenMapThenGetPairDefined!148 lt!1803553 key!4968 hashF!1389))))

(assert (=> b!4640756 (= lt!1803553 (ListLongMap!3700 lt!1803565))))

(assert (= (and start!466616 res!1948982) b!4640743))

(assert (= (and b!4640743 res!1948990) b!4640755))

(assert (= (and b!4640755 res!1948983) b!4640749))

(assert (= (and b!4640749 res!1948984) b!4640753))

(assert (= (and b!4640753 res!1948988) b!4640754))

(assert (= (and b!4640754 res!1948981) b!4640748))

(assert (= (and b!4640748 res!1948986) b!4640747))

(assert (= (and b!4640747 res!1948989) b!4640751))

(assert (= (and b!4640747 (not res!1948985)) b!4640756))

(assert (= (and b!4640756 (not res!1948987)) b!4640745))

(assert (= (and b!4640745 (not res!1948992)) b!4640744))

(assert (= (and b!4640744 (not res!1948991)) b!4640752))

(assert (= (and start!466616 ((_ is Cons!51764) oldBucket!40)) b!4640746))

(assert (= (and start!466616 ((_ is Cons!51764) newBucket!224)) b!4640750))

(declare-fun m!5500373 () Bool)

(assert (=> b!4640752 m!5500373))

(assert (=> b!4640752 m!5500373))

(declare-fun m!5500375 () Bool)

(assert (=> b!4640752 m!5500375))

(declare-fun m!5500377 () Bool)

(assert (=> b!4640752 m!5500377))

(declare-fun m!5500379 () Bool)

(assert (=> b!4640749 m!5500379))

(declare-fun m!5500381 () Bool)

(assert (=> b!4640744 m!5500381))

(declare-fun m!5500383 () Bool)

(assert (=> b!4640754 m!5500383))

(declare-fun m!5500385 () Bool)

(assert (=> b!4640747 m!5500385))

(declare-fun m!5500387 () Bool)

(assert (=> b!4640747 m!5500387))

(declare-fun m!5500389 () Bool)

(assert (=> b!4640743 m!5500389))

(declare-fun m!5500391 () Bool)

(assert (=> b!4640756 m!5500391))

(declare-fun m!5500393 () Bool)

(assert (=> b!4640756 m!5500393))

(declare-fun m!5500395 () Bool)

(assert (=> b!4640756 m!5500395))

(declare-fun m!5500397 () Bool)

(assert (=> b!4640756 m!5500397))

(declare-fun m!5500399 () Bool)

(assert (=> b!4640756 m!5500399))

(declare-fun m!5500401 () Bool)

(assert (=> b!4640756 m!5500401))

(declare-fun m!5500403 () Bool)

(assert (=> b!4640756 m!5500403))

(declare-fun m!5500405 () Bool)

(assert (=> b!4640756 m!5500405))

(declare-fun m!5500407 () Bool)

(assert (=> b!4640756 m!5500407))

(declare-fun m!5500409 () Bool)

(assert (=> b!4640756 m!5500409))

(assert (=> b!4640756 m!5500399))

(declare-fun m!5500411 () Bool)

(assert (=> b!4640756 m!5500411))

(declare-fun m!5500413 () Bool)

(assert (=> b!4640756 m!5500413))

(declare-fun m!5500415 () Bool)

(assert (=> b!4640748 m!5500415))

(declare-fun m!5500417 () Bool)

(assert (=> b!4640753 m!5500417))

(declare-fun m!5500419 () Bool)

(assert (=> b!4640753 m!5500419))

(declare-fun m!5500421 () Bool)

(assert (=> b!4640745 m!5500421))

(assert (=> b!4640745 m!5500421))

(declare-fun m!5500423 () Bool)

(assert (=> b!4640745 m!5500423))

(declare-fun m!5500425 () Bool)

(assert (=> b!4640745 m!5500425))

(declare-fun m!5500427 () Bool)

(assert (=> start!466616 m!5500427))

(declare-fun m!5500429 () Bool)

(assert (=> b!4640755 m!5500429))

(check-sat (not b!4640746) (not b!4640743) (not b!4640754) (not b!4640755) (not b!4640745) (not b!4640753) (not b!4640749) (not b!4640744) (not b!4640747) tp_is_empty!29661 (not start!466616) (not b!4640756) (not b!4640748) (not b!4640750) tp_is_empty!29663 (not b!4640752))
(check-sat)
