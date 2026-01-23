; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467712 () Bool)

(assert start!467712)

(declare-fun b!4647086 () Bool)

(declare-fun e!2898955 () Bool)

(declare-datatypes ((K!13215 0))(
  ( (K!13216 (val!18843 Int)) )
))
(declare-datatypes ((V!13461 0))(
  ( (V!13462 (val!18844 Int)) )
))
(declare-datatypes ((tuple2!52950 0))(
  ( (tuple2!52951 (_1!29769 K!13215) (_2!29769 V!13461)) )
))
(declare-datatypes ((List!51980 0))(
  ( (Nil!51856) (Cons!51856 (h!57988 tuple2!52950) (t!359080 List!51980)) )
))
(declare-datatypes ((ListMap!4521 0))(
  ( (ListMap!4522 (toList!5184 List!51980)) )
))
(declare-fun lt!1811332 () ListMap!4521)

(assert (=> b!4647086 (= e!2898955 (= lt!1811332 (ListMap!4522 Nil!51856)))))

(declare-fun b!4647087 () Bool)

(declare-fun res!1952668 () Bool)

(declare-fun e!2898958 () Bool)

(assert (=> b!4647087 (=> (not res!1952668) (not e!2898958))))

(declare-datatypes ((Hashable!6023 0))(
  ( (HashableExt!6022 (__x!31726 Int)) )
))
(declare-fun hashF!1389 () Hashable!6023)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51980)

(declare-fun allKeysSameHash!1480 (List!51980 (_ BitVec 64) Hashable!6023) Bool)

(assert (=> b!4647087 (= res!1952668 (allKeysSameHash!1480 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4647088 () Bool)

(declare-fun e!2898959 () Bool)

(declare-fun e!2898954 () Bool)

(assert (=> b!4647088 (= e!2898959 e!2898954)))

(declare-fun res!1952673 () Bool)

(assert (=> b!4647088 (=> res!1952673 e!2898954)))

(declare-fun lt!1811329 () ListMap!4521)

(declare-fun eq!905 (ListMap!4521 ListMap!4521) Bool)

(declare-fun +!1970 (ListMap!4521 tuple2!52950) ListMap!4521)

(declare-fun addToMapMapFromBucket!1083 (List!51980 ListMap!4521) ListMap!4521)

(assert (=> b!4647088 (= res!1952673 (not (eq!905 (+!1970 lt!1811329 (h!57988 oldBucket!40)) (addToMapMapFromBucket!1083 oldBucket!40 (ListMap!4522 Nil!51856)))))))

(declare-fun lt!1811333 () tuple2!52950)

(declare-fun lt!1811335 () List!51980)

(assert (=> b!4647088 (eq!905 (addToMapMapFromBucket!1083 (Cons!51856 lt!1811333 lt!1811335) (ListMap!4522 Nil!51856)) (+!1970 lt!1811329 lt!1811333))))

(declare-datatypes ((Unit!116622 0))(
  ( (Unit!116623) )
))
(declare-fun lt!1811331 () Unit!116622)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!156 (tuple2!52950 List!51980 ListMap!4521) Unit!116622)

(assert (=> b!4647088 (= lt!1811331 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!156 lt!1811333 lt!1811335 (ListMap!4522 Nil!51856)))))

(declare-fun head!9726 (List!51980) tuple2!52950)

(assert (=> b!4647088 (= lt!1811333 (head!9726 oldBucket!40))))

(declare-fun b!4647089 () Bool)

(declare-fun e!2898953 () Bool)

(assert (=> b!4647089 (= e!2898953 e!2898959)))

(declare-fun res!1952662 () Bool)

(assert (=> b!4647089 (=> res!1952662 e!2898959)))

(declare-fun newBucket!224 () List!51980)

(assert (=> b!4647089 (= res!1952662 (not (= lt!1811329 (addToMapMapFromBucket!1083 newBucket!224 (ListMap!4522 Nil!51856)))))))

(assert (=> b!4647089 (= lt!1811329 (addToMapMapFromBucket!1083 lt!1811335 (ListMap!4522 Nil!51856)))))

(declare-fun b!4647090 () Bool)

(declare-datatypes ((tuple2!52952 0))(
  ( (tuple2!52953 (_1!29770 (_ BitVec 64)) (_2!29770 List!51980)) )
))
(declare-datatypes ((List!51981 0))(
  ( (Nil!51857) (Cons!51857 (h!57989 tuple2!52952) (t!359081 List!51981)) )
))
(declare-fun lt!1811334 () List!51981)

(declare-fun lambda!197740 () Int)

(declare-fun forall!10992 (List!51981 Int) Bool)

(assert (=> b!4647090 (= e!2898954 (forall!10992 lt!1811334 lambda!197740))))

(declare-fun tp_is_empty!29797 () Bool)

(declare-fun tp!1343159 () Bool)

(declare-fun tp_is_empty!29799 () Bool)

(declare-fun b!4647091 () Bool)

(declare-fun e!2898960 () Bool)

(assert (=> b!4647091 (= e!2898960 (and tp_is_empty!29797 tp_is_empty!29799 tp!1343159))))

(declare-fun b!4647092 () Bool)

(declare-fun res!1952661 () Bool)

(declare-fun e!2898951 () Bool)

(assert (=> b!4647092 (=> (not res!1952661) (not e!2898951))))

(assert (=> b!4647092 (= res!1952661 (allKeysSameHash!1480 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4647093 () Bool)

(declare-fun res!1952660 () Bool)

(assert (=> b!4647093 (=> (not res!1952660) (not e!2898958))))

(declare-fun noDuplicateKeys!1626 (List!51980) Bool)

(assert (=> b!4647093 (= res!1952660 (noDuplicateKeys!1626 newBucket!224))))

(declare-fun b!4647094 () Bool)

(declare-fun res!1952669 () Bool)

(assert (=> b!4647094 (=> (not res!1952669) (not e!2898951))))

(declare-fun key!4968 () K!13215)

(declare-fun hash!3751 (Hashable!6023 K!13215) (_ BitVec 64))

(assert (=> b!4647094 (= res!1952669 (= (hash!3751 hashF!1389 key!4968) hash!414))))

(declare-fun b!4647095 () Bool)

(declare-fun res!1952665 () Bool)

(assert (=> b!4647095 (=> (not res!1952665) (not e!2898958))))

(declare-fun removePairForKey!1249 (List!51980 K!13215) List!51980)

(assert (=> b!4647095 (= res!1952665 (= (removePairForKey!1249 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1952664 () Bool)

(assert (=> start!467712 (=> (not res!1952664) (not e!2898958))))

(assert (=> start!467712 (= res!1952664 (noDuplicateKeys!1626 oldBucket!40))))

(assert (=> start!467712 e!2898958))

(assert (=> start!467712 true))

(assert (=> start!467712 e!2898960))

(assert (=> start!467712 tp_is_empty!29797))

(declare-fun e!2898952 () Bool)

(assert (=> start!467712 e!2898952))

(declare-fun b!4647096 () Bool)

(declare-fun e!2898956 () Bool)

(declare-fun e!2898957 () Bool)

(assert (=> b!4647096 (= e!2898956 e!2898957)))

(declare-fun res!1952663 () Bool)

(assert (=> b!4647096 (=> res!1952663 e!2898957)))

(assert (=> b!4647096 (= res!1952663 (not (= lt!1811335 newBucket!224)))))

(declare-fun tail!8241 (List!51980) List!51980)

(assert (=> b!4647096 (= lt!1811335 (tail!8241 oldBucket!40))))

(declare-fun b!4647097 () Bool)

(declare-fun tp!1343158 () Bool)

(assert (=> b!4647097 (= e!2898952 (and tp_is_empty!29797 tp_is_empty!29799 tp!1343158))))

(declare-fun b!4647098 () Bool)

(assert (=> b!4647098 (= e!2898957 e!2898953)))

(declare-fun res!1952670 () Bool)

(assert (=> b!4647098 (=> res!1952670 e!2898953)))

(declare-fun lt!1811330 () ListMap!4521)

(declare-fun extractMap!1682 (List!51981) ListMap!4521)

(assert (=> b!4647098 (= res!1952670 (not (= lt!1811330 (extractMap!1682 (Cons!51857 (tuple2!52953 hash!414 newBucket!224) Nil!51857)))))))

(assert (=> b!4647098 (= lt!1811330 (extractMap!1682 lt!1811334))))

(assert (=> b!4647098 (= lt!1811334 (Cons!51857 (tuple2!52953 hash!414 lt!1811335) Nil!51857))))

(declare-fun b!4647099 () Bool)

(declare-fun res!1952674 () Bool)

(assert (=> b!4647099 (=> res!1952674 e!2898954)))

(assert (=> b!4647099 (= res!1952674 (not (= lt!1811329 lt!1811330)))))

(declare-fun b!4647100 () Bool)

(declare-fun res!1952667 () Bool)

(assert (=> b!4647100 (=> res!1952667 e!2898954)))

(declare-fun containsKey!2694 (List!51980 K!13215) Bool)

(assert (=> b!4647100 (= res!1952667 (containsKey!2694 lt!1811335 key!4968))))

(declare-fun b!4647101 () Bool)

(assert (=> b!4647101 (= e!2898951 (not e!2898956))))

(declare-fun res!1952672 () Bool)

(assert (=> b!4647101 (=> res!1952672 e!2898956)))

(get-info :version)

(assert (=> b!4647101 (= res!1952672 (or (not ((_ is Cons!51856) oldBucket!40)) (not (= (_1!29769 (h!57988 oldBucket!40)) key!4968))))))

(assert (=> b!4647101 e!2898955))

(declare-fun res!1952671 () Bool)

(assert (=> b!4647101 (=> (not res!1952671) (not e!2898955))))

(declare-fun lt!1811328 () ListMap!4521)

(assert (=> b!4647101 (= res!1952671 (= lt!1811328 (addToMapMapFromBucket!1083 oldBucket!40 lt!1811332)))))

(assert (=> b!4647101 (= lt!1811332 (extractMap!1682 Nil!51857))))

(assert (=> b!4647101 true))

(declare-fun b!4647102 () Bool)

(assert (=> b!4647102 (= e!2898958 e!2898951)))

(declare-fun res!1952666 () Bool)

(assert (=> b!4647102 (=> (not res!1952666) (not e!2898951))))

(declare-fun contains!14997 (ListMap!4521 K!13215) Bool)

(assert (=> b!4647102 (= res!1952666 (contains!14997 lt!1811328 key!4968))))

(assert (=> b!4647102 (= lt!1811328 (extractMap!1682 (Cons!51857 (tuple2!52953 hash!414 oldBucket!40) Nil!51857)))))

(assert (= (and start!467712 res!1952664) b!4647093))

(assert (= (and b!4647093 res!1952660) b!4647095))

(assert (= (and b!4647095 res!1952665) b!4647087))

(assert (= (and b!4647087 res!1952668) b!4647102))

(assert (= (and b!4647102 res!1952666) b!4647094))

(assert (= (and b!4647094 res!1952669) b!4647092))

(assert (= (and b!4647092 res!1952661) b!4647101))

(assert (= (and b!4647101 res!1952671) b!4647086))

(assert (= (and b!4647101 (not res!1952672)) b!4647096))

(assert (= (and b!4647096 (not res!1952663)) b!4647098))

(assert (= (and b!4647098 (not res!1952670)) b!4647089))

(assert (= (and b!4647089 (not res!1952662)) b!4647088))

(assert (= (and b!4647088 (not res!1952673)) b!4647100))

(assert (= (and b!4647100 (not res!1952667)) b!4647099))

(assert (= (and b!4647099 (not res!1952674)) b!4647090))

(assert (= (and start!467712 ((_ is Cons!51856) oldBucket!40)) b!4647091))

(assert (= (and start!467712 ((_ is Cons!51856) newBucket!224)) b!4647097))

(declare-fun m!5513799 () Bool)

(assert (=> b!4647088 m!5513799))

(declare-fun m!5513801 () Bool)

(assert (=> b!4647088 m!5513801))

(declare-fun m!5513803 () Bool)

(assert (=> b!4647088 m!5513803))

(declare-fun m!5513805 () Bool)

(assert (=> b!4647088 m!5513805))

(declare-fun m!5513807 () Bool)

(assert (=> b!4647088 m!5513807))

(assert (=> b!4647088 m!5513805))

(declare-fun m!5513809 () Bool)

(assert (=> b!4647088 m!5513809))

(declare-fun m!5513811 () Bool)

(assert (=> b!4647088 m!5513811))

(assert (=> b!4647088 m!5513799))

(assert (=> b!4647088 m!5513807))

(assert (=> b!4647088 m!5513801))

(declare-fun m!5513813 () Bool)

(assert (=> b!4647088 m!5513813))

(declare-fun m!5513815 () Bool)

(assert (=> b!4647095 m!5513815))

(declare-fun m!5513817 () Bool)

(assert (=> b!4647096 m!5513817))

(declare-fun m!5513819 () Bool)

(assert (=> b!4647102 m!5513819))

(declare-fun m!5513821 () Bool)

(assert (=> b!4647102 m!5513821))

(declare-fun m!5513823 () Bool)

(assert (=> b!4647094 m!5513823))

(declare-fun m!5513825 () Bool)

(assert (=> b!4647093 m!5513825))

(declare-fun m!5513827 () Bool)

(assert (=> b!4647098 m!5513827))

(declare-fun m!5513829 () Bool)

(assert (=> b!4647098 m!5513829))

(declare-fun m!5513831 () Bool)

(assert (=> b!4647089 m!5513831))

(declare-fun m!5513833 () Bool)

(assert (=> b!4647089 m!5513833))

(declare-fun m!5513835 () Bool)

(assert (=> b!4647100 m!5513835))

(declare-fun m!5513837 () Bool)

(assert (=> start!467712 m!5513837))

(declare-fun m!5513839 () Bool)

(assert (=> b!4647090 m!5513839))

(declare-fun m!5513841 () Bool)

(assert (=> b!4647092 m!5513841))

(declare-fun m!5513843 () Bool)

(assert (=> b!4647087 m!5513843))

(declare-fun m!5513845 () Bool)

(assert (=> b!4647101 m!5513845))

(declare-fun m!5513847 () Bool)

(assert (=> b!4647101 m!5513847))

(check-sat tp_is_empty!29797 (not b!4647102) (not b!4647097) tp_is_empty!29799 (not b!4647087) (not b!4647101) (not b!4647098) (not b!4647100) (not b!4647093) (not b!4647090) (not b!4647088) (not b!4647094) (not b!4647092) (not b!4647089) (not b!4647096) (not b!4647095) (not b!4647091) (not start!467712))
(check-sat)
(get-model)

(declare-fun d!1465729 () Bool)

(assert (=> d!1465729 true))

(assert (=> d!1465729 true))

(declare-fun lambda!197743 () Int)

(declare-fun forall!10994 (List!51980 Int) Bool)

(assert (=> d!1465729 (= (allKeysSameHash!1480 newBucket!224 hash!414 hashF!1389) (forall!10994 newBucket!224 lambda!197743))))

(declare-fun bs!1038709 () Bool)

(assert (= bs!1038709 d!1465729))

(declare-fun m!5513849 () Bool)

(assert (=> bs!1038709 m!5513849))

(assert (=> b!4647092 d!1465729))

(declare-fun d!1465731 () Bool)

(declare-fun res!1952679 () Bool)

(declare-fun e!2898965 () Bool)

(assert (=> d!1465731 (=> res!1952679 e!2898965)))

(assert (=> d!1465731 (= res!1952679 (not ((_ is Cons!51856) newBucket!224)))))

(assert (=> d!1465731 (= (noDuplicateKeys!1626 newBucket!224) e!2898965)))

(declare-fun b!4647111 () Bool)

(declare-fun e!2898966 () Bool)

(assert (=> b!4647111 (= e!2898965 e!2898966)))

(declare-fun res!1952680 () Bool)

(assert (=> b!4647111 (=> (not res!1952680) (not e!2898966))))

(assert (=> b!4647111 (= res!1952680 (not (containsKey!2694 (t!359080 newBucket!224) (_1!29769 (h!57988 newBucket!224)))))))

(declare-fun b!4647112 () Bool)

(assert (=> b!4647112 (= e!2898966 (noDuplicateKeys!1626 (t!359080 newBucket!224)))))

(assert (= (and d!1465731 (not res!1952679)) b!4647111))

(assert (= (and b!4647111 res!1952680) b!4647112))

(declare-fun m!5513851 () Bool)

(assert (=> b!4647111 m!5513851))

(declare-fun m!5513853 () Bool)

(assert (=> b!4647112 m!5513853))

(assert (=> b!4647093 d!1465731))

(declare-fun d!1465733 () Bool)

(declare-fun hash!3752 (Hashable!6023 K!13215) (_ BitVec 64))

(assert (=> d!1465733 (= (hash!3751 hashF!1389 key!4968) (hash!3752 hashF!1389 key!4968))))

(declare-fun bs!1038710 () Bool)

(assert (= bs!1038710 d!1465733))

(declare-fun m!5513855 () Bool)

(assert (=> bs!1038710 m!5513855))

(assert (=> b!4647094 d!1465733))

(declare-fun d!1465735 () Bool)

(declare-fun lt!1811338 () List!51980)

(assert (=> d!1465735 (not (containsKey!2694 lt!1811338 key!4968))))

(declare-fun e!2898972 () List!51980)

(assert (=> d!1465735 (= lt!1811338 e!2898972)))

(declare-fun c!795191 () Bool)

(assert (=> d!1465735 (= c!795191 (and ((_ is Cons!51856) oldBucket!40) (= (_1!29769 (h!57988 oldBucket!40)) key!4968)))))

(assert (=> d!1465735 (noDuplicateKeys!1626 oldBucket!40)))

(assert (=> d!1465735 (= (removePairForKey!1249 oldBucket!40 key!4968) lt!1811338)))

(declare-fun b!4647123 () Bool)

(declare-fun e!2898971 () List!51980)

(assert (=> b!4647123 (= e!2898971 (Cons!51856 (h!57988 oldBucket!40) (removePairForKey!1249 (t!359080 oldBucket!40) key!4968)))))

(declare-fun b!4647122 () Bool)

(assert (=> b!4647122 (= e!2898972 e!2898971)))

(declare-fun c!795192 () Bool)

(assert (=> b!4647122 (= c!795192 ((_ is Cons!51856) oldBucket!40))))

(declare-fun b!4647124 () Bool)

(assert (=> b!4647124 (= e!2898971 Nil!51856)))

(declare-fun b!4647121 () Bool)

(assert (=> b!4647121 (= e!2898972 (t!359080 oldBucket!40))))

(assert (= (and d!1465735 c!795191) b!4647121))

(assert (= (and d!1465735 (not c!795191)) b!4647122))

(assert (= (and b!4647122 c!795192) b!4647123))

(assert (= (and b!4647122 (not c!795192)) b!4647124))

(declare-fun m!5513857 () Bool)

(assert (=> d!1465735 m!5513857))

(assert (=> d!1465735 m!5513837))

(declare-fun m!5513859 () Bool)

(assert (=> b!4647123 m!5513859))

(assert (=> b!4647095 d!1465735))

(declare-fun d!1465737 () Bool)

(assert (=> d!1465737 (= (tail!8241 oldBucket!40) (t!359080 oldBucket!40))))

(assert (=> b!4647096 d!1465737))

(declare-fun bs!1038711 () Bool)

(declare-fun d!1465739 () Bool)

(assert (= bs!1038711 (and d!1465739 b!4647090)))

(declare-fun lambda!197746 () Int)

(assert (=> bs!1038711 (= lambda!197746 lambda!197740)))

(declare-fun lt!1811341 () ListMap!4521)

(declare-fun invariantList!1286 (List!51980) Bool)

(assert (=> d!1465739 (invariantList!1286 (toList!5184 lt!1811341))))

(declare-fun e!2898975 () ListMap!4521)

(assert (=> d!1465739 (= lt!1811341 e!2898975)))

(declare-fun c!795195 () Bool)

(assert (=> d!1465739 (= c!795195 ((_ is Cons!51857) (Cons!51857 (tuple2!52953 hash!414 newBucket!224) Nil!51857)))))

(assert (=> d!1465739 (forall!10992 (Cons!51857 (tuple2!52953 hash!414 newBucket!224) Nil!51857) lambda!197746)))

(assert (=> d!1465739 (= (extractMap!1682 (Cons!51857 (tuple2!52953 hash!414 newBucket!224) Nil!51857)) lt!1811341)))

(declare-fun b!4647129 () Bool)

(assert (=> b!4647129 (= e!2898975 (addToMapMapFromBucket!1083 (_2!29770 (h!57989 (Cons!51857 (tuple2!52953 hash!414 newBucket!224) Nil!51857))) (extractMap!1682 (t!359081 (Cons!51857 (tuple2!52953 hash!414 newBucket!224) Nil!51857)))))))

(declare-fun b!4647130 () Bool)

(assert (=> b!4647130 (= e!2898975 (ListMap!4522 Nil!51856))))

(assert (= (and d!1465739 c!795195) b!4647129))

(assert (= (and d!1465739 (not c!795195)) b!4647130))

(declare-fun m!5513861 () Bool)

(assert (=> d!1465739 m!5513861))

(declare-fun m!5513863 () Bool)

(assert (=> d!1465739 m!5513863))

(declare-fun m!5513865 () Bool)

(assert (=> b!4647129 m!5513865))

(assert (=> b!4647129 m!5513865))

(declare-fun m!5513867 () Bool)

(assert (=> b!4647129 m!5513867))

(assert (=> b!4647098 d!1465739))

(declare-fun bs!1038712 () Bool)

(declare-fun d!1465741 () Bool)

(assert (= bs!1038712 (and d!1465741 b!4647090)))

(declare-fun lambda!197747 () Int)

(assert (=> bs!1038712 (= lambda!197747 lambda!197740)))

(declare-fun bs!1038713 () Bool)

(assert (= bs!1038713 (and d!1465741 d!1465739)))

(assert (=> bs!1038713 (= lambda!197747 lambda!197746)))

(declare-fun lt!1811342 () ListMap!4521)

(assert (=> d!1465741 (invariantList!1286 (toList!5184 lt!1811342))))

(declare-fun e!2898976 () ListMap!4521)

(assert (=> d!1465741 (= lt!1811342 e!2898976)))

(declare-fun c!795196 () Bool)

(assert (=> d!1465741 (= c!795196 ((_ is Cons!51857) lt!1811334))))

(assert (=> d!1465741 (forall!10992 lt!1811334 lambda!197747)))

(assert (=> d!1465741 (= (extractMap!1682 lt!1811334) lt!1811342)))

(declare-fun b!4647131 () Bool)

(assert (=> b!4647131 (= e!2898976 (addToMapMapFromBucket!1083 (_2!29770 (h!57989 lt!1811334)) (extractMap!1682 (t!359081 lt!1811334))))))

(declare-fun b!4647132 () Bool)

(assert (=> b!4647132 (= e!2898976 (ListMap!4522 Nil!51856))))

(assert (= (and d!1465741 c!795196) b!4647131))

(assert (= (and d!1465741 (not c!795196)) b!4647132))

(declare-fun m!5513869 () Bool)

(assert (=> d!1465741 m!5513869))

(declare-fun m!5513871 () Bool)

(assert (=> d!1465741 m!5513871))

(declare-fun m!5513873 () Bool)

(assert (=> b!4647131 m!5513873))

(assert (=> b!4647131 m!5513873))

(declare-fun m!5513875 () Bool)

(assert (=> b!4647131 m!5513875))

(assert (=> b!4647098 d!1465741))

(declare-fun bs!1038714 () Bool)

(declare-fun d!1465743 () Bool)

(assert (= bs!1038714 (and d!1465743 d!1465729)))

(declare-fun lambda!197748 () Int)

(assert (=> bs!1038714 (= lambda!197748 lambda!197743)))

(assert (=> d!1465743 true))

(assert (=> d!1465743 true))

(assert (=> d!1465743 (= (allKeysSameHash!1480 oldBucket!40 hash!414 hashF!1389) (forall!10994 oldBucket!40 lambda!197748))))

(declare-fun bs!1038715 () Bool)

(assert (= bs!1038715 d!1465743))

(declare-fun m!5513877 () Bool)

(assert (=> bs!1038715 m!5513877))

(assert (=> b!4647087 d!1465743))

(declare-fun d!1465745 () Bool)

(declare-fun res!1952681 () Bool)

(declare-fun e!2898977 () Bool)

(assert (=> d!1465745 (=> res!1952681 e!2898977)))

(assert (=> d!1465745 (= res!1952681 (not ((_ is Cons!51856) oldBucket!40)))))

(assert (=> d!1465745 (= (noDuplicateKeys!1626 oldBucket!40) e!2898977)))

(declare-fun b!4647133 () Bool)

(declare-fun e!2898978 () Bool)

(assert (=> b!4647133 (= e!2898977 e!2898978)))

(declare-fun res!1952682 () Bool)

(assert (=> b!4647133 (=> (not res!1952682) (not e!2898978))))

(assert (=> b!4647133 (= res!1952682 (not (containsKey!2694 (t!359080 oldBucket!40) (_1!29769 (h!57988 oldBucket!40)))))))

(declare-fun b!4647134 () Bool)

(assert (=> b!4647134 (= e!2898978 (noDuplicateKeys!1626 (t!359080 oldBucket!40)))))

(assert (= (and d!1465745 (not res!1952681)) b!4647133))

(assert (= (and b!4647133 res!1952682) b!4647134))

(declare-fun m!5513879 () Bool)

(assert (=> b!4647133 m!5513879))

(declare-fun m!5513881 () Bool)

(assert (=> b!4647134 m!5513881))

(assert (=> start!467712 d!1465745))

(declare-fun d!1465747 () Bool)

(declare-fun e!2898985 () Bool)

(assert (=> d!1465747 e!2898985))

(declare-fun res!1952690 () Bool)

(assert (=> d!1465747 (=> (not res!1952690) (not e!2898985))))

(declare-fun lt!1811394 () ListMap!4521)

(assert (=> d!1465747 (= res!1952690 (contains!14997 lt!1811394 (_1!29769 (h!57988 oldBucket!40))))))

(declare-fun lt!1811395 () List!51980)

(assert (=> d!1465747 (= lt!1811394 (ListMap!4522 lt!1811395))))

(declare-fun lt!1811396 () Unit!116622)

(declare-fun lt!1811393 () Unit!116622)

(assert (=> d!1465747 (= lt!1811396 lt!1811393)))

(declare-datatypes ((Option!11806 0))(
  ( (None!11805) (Some!11805 (v!46061 V!13461)) )
))
(declare-fun getValueByKey!1594 (List!51980 K!13215) Option!11806)

(assert (=> d!1465747 (= (getValueByKey!1594 lt!1811395 (_1!29769 (h!57988 oldBucket!40))) (Some!11805 (_2!29769 (h!57988 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!914 (List!51980 K!13215 V!13461) Unit!116622)

(assert (=> d!1465747 (= lt!1811393 (lemmaContainsTupThenGetReturnValue!914 lt!1811395 (_1!29769 (h!57988 oldBucket!40)) (_2!29769 (h!57988 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!422 (List!51980 K!13215 V!13461) List!51980)

(assert (=> d!1465747 (= lt!1811395 (insertNoDuplicatedKeys!422 (toList!5184 lt!1811329) (_1!29769 (h!57988 oldBucket!40)) (_2!29769 (h!57988 oldBucket!40))))))

(assert (=> d!1465747 (= (+!1970 lt!1811329 (h!57988 oldBucket!40)) lt!1811394)))

(declare-fun b!4647145 () Bool)

(declare-fun res!1952689 () Bool)

(assert (=> b!4647145 (=> (not res!1952689) (not e!2898985))))

(assert (=> b!4647145 (= res!1952689 (= (getValueByKey!1594 (toList!5184 lt!1811394) (_1!29769 (h!57988 oldBucket!40))) (Some!11805 (_2!29769 (h!57988 oldBucket!40)))))))

(declare-fun b!4647146 () Bool)

(declare-fun contains!15000 (List!51980 tuple2!52950) Bool)

(assert (=> b!4647146 (= e!2898985 (contains!15000 (toList!5184 lt!1811394) (h!57988 oldBucket!40)))))

(assert (= (and d!1465747 res!1952690) b!4647145))

(assert (= (and b!4647145 res!1952689) b!4647146))

(declare-fun m!5513883 () Bool)

(assert (=> d!1465747 m!5513883))

(declare-fun m!5513885 () Bool)

(assert (=> d!1465747 m!5513885))

(declare-fun m!5513887 () Bool)

(assert (=> d!1465747 m!5513887))

(declare-fun m!5513889 () Bool)

(assert (=> d!1465747 m!5513889))

(declare-fun m!5513891 () Bool)

(assert (=> b!4647145 m!5513891))

(declare-fun m!5513893 () Bool)

(assert (=> b!4647146 m!5513893))

(assert (=> b!4647088 d!1465747))

(declare-fun d!1465749 () Bool)

(declare-fun e!2898988 () Bool)

(assert (=> d!1465749 e!2898988))

(declare-fun res!1952694 () Bool)

(assert (=> d!1465749 (=> (not res!1952694) (not e!2898988))))

(declare-fun lt!1811398 () ListMap!4521)

(assert (=> d!1465749 (= res!1952694 (contains!14997 lt!1811398 (_1!29769 lt!1811333)))))

(declare-fun lt!1811399 () List!51980)

(assert (=> d!1465749 (= lt!1811398 (ListMap!4522 lt!1811399))))

(declare-fun lt!1811400 () Unit!116622)

(declare-fun lt!1811397 () Unit!116622)

(assert (=> d!1465749 (= lt!1811400 lt!1811397)))

(assert (=> d!1465749 (= (getValueByKey!1594 lt!1811399 (_1!29769 lt!1811333)) (Some!11805 (_2!29769 lt!1811333)))))

(assert (=> d!1465749 (= lt!1811397 (lemmaContainsTupThenGetReturnValue!914 lt!1811399 (_1!29769 lt!1811333) (_2!29769 lt!1811333)))))

(assert (=> d!1465749 (= lt!1811399 (insertNoDuplicatedKeys!422 (toList!5184 lt!1811329) (_1!29769 lt!1811333) (_2!29769 lt!1811333)))))

(assert (=> d!1465749 (= (+!1970 lt!1811329 lt!1811333) lt!1811398)))

(declare-fun b!4647147 () Bool)

(declare-fun res!1952693 () Bool)

(assert (=> b!4647147 (=> (not res!1952693) (not e!2898988))))

(assert (=> b!4647147 (= res!1952693 (= (getValueByKey!1594 (toList!5184 lt!1811398) (_1!29769 lt!1811333)) (Some!11805 (_2!29769 lt!1811333))))))

(declare-fun b!4647148 () Bool)

(assert (=> b!4647148 (= e!2898988 (contains!15000 (toList!5184 lt!1811398) lt!1811333))))

(assert (= (and d!1465749 res!1952694) b!4647147))

(assert (= (and b!4647147 res!1952693) b!4647148))

(declare-fun m!5513895 () Bool)

(assert (=> d!1465749 m!5513895))

(declare-fun m!5513897 () Bool)

(assert (=> d!1465749 m!5513897))

(declare-fun m!5513899 () Bool)

(assert (=> d!1465749 m!5513899))

(declare-fun m!5513901 () Bool)

(assert (=> d!1465749 m!5513901))

(declare-fun m!5513903 () Bool)

(assert (=> b!4647147 m!5513903))

(declare-fun m!5513905 () Bool)

(assert (=> b!4647148 m!5513905))

(assert (=> b!4647088 d!1465749))

(declare-fun bs!1038869 () Bool)

(declare-fun b!4647280 () Bool)

(assert (= bs!1038869 (and b!4647280 d!1465729)))

(declare-fun lambda!197835 () Int)

(assert (=> bs!1038869 (not (= lambda!197835 lambda!197743))))

(declare-fun bs!1038870 () Bool)

(assert (= bs!1038870 (and b!4647280 d!1465743)))

(assert (=> bs!1038870 (not (= lambda!197835 lambda!197748))))

(assert (=> b!4647280 true))

(declare-fun bs!1038871 () Bool)

(declare-fun b!4647281 () Bool)

(assert (= bs!1038871 (and b!4647281 d!1465729)))

(declare-fun lambda!197836 () Int)

(assert (=> bs!1038871 (not (= lambda!197836 lambda!197743))))

(declare-fun bs!1038872 () Bool)

(assert (= bs!1038872 (and b!4647281 d!1465743)))

(assert (=> bs!1038872 (not (= lambda!197836 lambda!197748))))

(declare-fun bs!1038873 () Bool)

(assert (= bs!1038873 (and b!4647281 b!4647280)))

(assert (=> bs!1038873 (= lambda!197836 lambda!197835)))

(assert (=> b!4647281 true))

(declare-fun lambda!197837 () Int)

(assert (=> bs!1038871 (not (= lambda!197837 lambda!197743))))

(assert (=> bs!1038872 (not (= lambda!197837 lambda!197748))))

(declare-fun lt!1811618 () ListMap!4521)

(assert (=> bs!1038873 (= (= lt!1811618 (ListMap!4522 Nil!51856)) (= lambda!197837 lambda!197835))))

(assert (=> b!4647281 (= (= lt!1811618 (ListMap!4522 Nil!51856)) (= lambda!197837 lambda!197836))))

(assert (=> b!4647281 true))

(declare-fun bs!1038874 () Bool)

(declare-fun d!1465751 () Bool)

(assert (= bs!1038874 (and d!1465751 d!1465743)))

(declare-fun lambda!197838 () Int)

(assert (=> bs!1038874 (not (= lambda!197838 lambda!197748))))

(declare-fun bs!1038875 () Bool)

(assert (= bs!1038875 (and d!1465751 d!1465729)))

(assert (=> bs!1038875 (not (= lambda!197838 lambda!197743))))

(declare-fun bs!1038876 () Bool)

(assert (= bs!1038876 (and d!1465751 b!4647281)))

(declare-fun lt!1811609 () ListMap!4521)

(assert (=> bs!1038876 (= (= lt!1811609 (ListMap!4522 Nil!51856)) (= lambda!197838 lambda!197836))))

(assert (=> bs!1038876 (= (= lt!1811609 lt!1811618) (= lambda!197838 lambda!197837))))

(declare-fun bs!1038877 () Bool)

(assert (= bs!1038877 (and d!1465751 b!4647280)))

(assert (=> bs!1038877 (= (= lt!1811609 (ListMap!4522 Nil!51856)) (= lambda!197838 lambda!197835))))

(assert (=> d!1465751 true))

(declare-fun b!4647279 () Bool)

(declare-fun e!2899069 () Bool)

(assert (=> b!4647279 (= e!2899069 (invariantList!1286 (toList!5184 lt!1811609)))))

(declare-fun e!2899068 () ListMap!4521)

(assert (=> b!4647280 (= e!2899068 (ListMap!4522 Nil!51856))))

(declare-fun lt!1811616 () Unit!116622)

(declare-fun call!324566 () Unit!116622)

(assert (=> b!4647280 (= lt!1811616 call!324566)))

(declare-fun call!324568 () Bool)

(assert (=> b!4647280 call!324568))

(declare-fun lt!1811617 () Unit!116622)

(assert (=> b!4647280 (= lt!1811617 lt!1811616)))

(declare-fun call!324567 () Bool)

(assert (=> b!4647280 call!324567))

(declare-fun lt!1811604 () Unit!116622)

(declare-fun Unit!116659 () Unit!116622)

(assert (=> b!4647280 (= lt!1811604 Unit!116659)))

(assert (=> b!4647281 (= e!2899068 lt!1811618)))

(declare-fun lt!1811619 () ListMap!4521)

(assert (=> b!4647281 (= lt!1811619 (+!1970 (ListMap!4522 Nil!51856) (h!57988 oldBucket!40)))))

(assert (=> b!4647281 (= lt!1811618 (addToMapMapFromBucket!1083 (t!359080 oldBucket!40) (+!1970 (ListMap!4522 Nil!51856) (h!57988 oldBucket!40))))))

(declare-fun lt!1811612 () Unit!116622)

(assert (=> b!4647281 (= lt!1811612 call!324566)))

(assert (=> b!4647281 call!324567))

(declare-fun lt!1811614 () Unit!116622)

(assert (=> b!4647281 (= lt!1811614 lt!1811612)))

(assert (=> b!4647281 (forall!10994 (toList!5184 lt!1811619) lambda!197837)))

(declare-fun lt!1811600 () Unit!116622)

(declare-fun Unit!116660 () Unit!116622)

(assert (=> b!4647281 (= lt!1811600 Unit!116660)))

(assert (=> b!4647281 (forall!10994 (t!359080 oldBucket!40) lambda!197837)))

(declare-fun lt!1811601 () Unit!116622)

(declare-fun Unit!116661 () Unit!116622)

(assert (=> b!4647281 (= lt!1811601 Unit!116661)))

(declare-fun lt!1811607 () Unit!116622)

(declare-fun Unit!116662 () Unit!116622)

(assert (=> b!4647281 (= lt!1811607 Unit!116662)))

(declare-fun lt!1811610 () Unit!116622)

(declare-fun forallContained!3206 (List!51980 Int tuple2!52950) Unit!116622)

(assert (=> b!4647281 (= lt!1811610 (forallContained!3206 (toList!5184 lt!1811619) lambda!197837 (h!57988 oldBucket!40)))))

(assert (=> b!4647281 (contains!14997 lt!1811619 (_1!29769 (h!57988 oldBucket!40)))))

(declare-fun lt!1811613 () Unit!116622)

(declare-fun Unit!116663 () Unit!116622)

(assert (=> b!4647281 (= lt!1811613 Unit!116663)))

(assert (=> b!4647281 (contains!14997 lt!1811618 (_1!29769 (h!57988 oldBucket!40)))))

(declare-fun lt!1811608 () Unit!116622)

(declare-fun Unit!116664 () Unit!116622)

(assert (=> b!4647281 (= lt!1811608 Unit!116664)))

(assert (=> b!4647281 (forall!10994 oldBucket!40 lambda!197837)))

(declare-fun lt!1811602 () Unit!116622)

(declare-fun Unit!116665 () Unit!116622)

(assert (=> b!4647281 (= lt!1811602 Unit!116665)))

(assert (=> b!4647281 (forall!10994 (toList!5184 lt!1811619) lambda!197837)))

(declare-fun lt!1811603 () Unit!116622)

(declare-fun Unit!116666 () Unit!116622)

(assert (=> b!4647281 (= lt!1811603 Unit!116666)))

(declare-fun lt!1811611 () Unit!116622)

(declare-fun Unit!116667 () Unit!116622)

(assert (=> b!4647281 (= lt!1811611 Unit!116667)))

(declare-fun lt!1811615 () Unit!116622)

(declare-fun addForallContainsKeyThenBeforeAdding!585 (ListMap!4521 ListMap!4521 K!13215 V!13461) Unit!116622)

(assert (=> b!4647281 (= lt!1811615 (addForallContainsKeyThenBeforeAdding!585 (ListMap!4522 Nil!51856) lt!1811618 (_1!29769 (h!57988 oldBucket!40)) (_2!29769 (h!57988 oldBucket!40))))))

(assert (=> b!4647281 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197837)))

(declare-fun lt!1811620 () Unit!116622)

(assert (=> b!4647281 (= lt!1811620 lt!1811615)))

(assert (=> b!4647281 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197837)))

(declare-fun lt!1811605 () Unit!116622)

(declare-fun Unit!116668 () Unit!116622)

(assert (=> b!4647281 (= lt!1811605 Unit!116668)))

(declare-fun res!1952755 () Bool)

(assert (=> b!4647281 (= res!1952755 call!324568)))

(declare-fun e!2899070 () Bool)

(assert (=> b!4647281 (=> (not res!1952755) (not e!2899070))))

(assert (=> b!4647281 e!2899070))

(declare-fun lt!1811606 () Unit!116622)

(declare-fun Unit!116669 () Unit!116622)

(assert (=> b!4647281 (= lt!1811606 Unit!116669)))

(declare-fun c!795227 () Bool)

(declare-fun bm!324561 () Bool)

(assert (=> bm!324561 (= call!324568 (forall!10994 (ite c!795227 (toList!5184 (ListMap!4522 Nil!51856)) oldBucket!40) (ite c!795227 lambda!197835 lambda!197837)))))

(declare-fun bm!324562 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!586 (ListMap!4521) Unit!116622)

(assert (=> bm!324562 (= call!324566 (lemmaContainsAllItsOwnKeys!586 (ListMap!4522 Nil!51856)))))

(assert (=> d!1465751 e!2899069))

(declare-fun res!1952756 () Bool)

(assert (=> d!1465751 (=> (not res!1952756) (not e!2899069))))

(assert (=> d!1465751 (= res!1952756 (forall!10994 oldBucket!40 lambda!197838))))

(assert (=> d!1465751 (= lt!1811609 e!2899068)))

(assert (=> d!1465751 (= c!795227 ((_ is Nil!51856) oldBucket!40))))

(assert (=> d!1465751 (noDuplicateKeys!1626 oldBucket!40)))

(assert (=> d!1465751 (= (addToMapMapFromBucket!1083 oldBucket!40 (ListMap!4522 Nil!51856)) lt!1811609)))

(declare-fun b!4647282 () Bool)

(declare-fun res!1952757 () Bool)

(assert (=> b!4647282 (=> (not res!1952757) (not e!2899069))))

(assert (=> b!4647282 (= res!1952757 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197838))))

(declare-fun b!4647283 () Bool)

(assert (=> b!4647283 (= e!2899070 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197837))))

(declare-fun bm!324563 () Bool)

(assert (=> bm!324563 (= call!324567 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) (ite c!795227 lambda!197835 lambda!197836)))))

(assert (= (and d!1465751 c!795227) b!4647280))

(assert (= (and d!1465751 (not c!795227)) b!4647281))

(assert (= (and b!4647281 res!1952755) b!4647283))

(assert (= (or b!4647280 b!4647281) bm!324562))

(assert (= (or b!4647280 b!4647281) bm!324563))

(assert (= (or b!4647280 b!4647281) bm!324561))

(assert (= (and d!1465751 res!1952756) b!4647282))

(assert (= (and b!4647282 res!1952757) b!4647279))

(declare-fun m!5514191 () Bool)

(assert (=> b!4647283 m!5514191))

(assert (=> b!4647281 m!5514191))

(declare-fun m!5514193 () Bool)

(assert (=> b!4647281 m!5514193))

(declare-fun m!5514195 () Bool)

(assert (=> b!4647281 m!5514195))

(declare-fun m!5514197 () Bool)

(assert (=> b!4647281 m!5514197))

(declare-fun m!5514199 () Bool)

(assert (=> b!4647281 m!5514199))

(assert (=> b!4647281 m!5514191))

(declare-fun m!5514201 () Bool)

(assert (=> b!4647281 m!5514201))

(declare-fun m!5514203 () Bool)

(assert (=> b!4647281 m!5514203))

(declare-fun m!5514205 () Bool)

(assert (=> b!4647281 m!5514205))

(declare-fun m!5514207 () Bool)

(assert (=> b!4647281 m!5514207))

(declare-fun m!5514209 () Bool)

(assert (=> b!4647281 m!5514209))

(assert (=> b!4647281 m!5514201))

(assert (=> b!4647281 m!5514195))

(declare-fun m!5514211 () Bool)

(assert (=> d!1465751 m!5514211))

(assert (=> d!1465751 m!5513837))

(declare-fun m!5514213 () Bool)

(assert (=> bm!324562 m!5514213))

(declare-fun m!5514215 () Bool)

(assert (=> bm!324561 m!5514215))

(declare-fun m!5514217 () Bool)

(assert (=> b!4647282 m!5514217))

(declare-fun m!5514219 () Bool)

(assert (=> bm!324563 m!5514219))

(declare-fun m!5514221 () Bool)

(assert (=> b!4647279 m!5514221))

(assert (=> b!4647088 d!1465751))

(declare-fun d!1465803 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8979 (List!51980) (InoxSet tuple2!52950))

(assert (=> d!1465803 (= (eq!905 (+!1970 lt!1811329 (h!57988 oldBucket!40)) (addToMapMapFromBucket!1083 oldBucket!40 (ListMap!4522 Nil!51856))) (= (content!8979 (toList!5184 (+!1970 lt!1811329 (h!57988 oldBucket!40)))) (content!8979 (toList!5184 (addToMapMapFromBucket!1083 oldBucket!40 (ListMap!4522 Nil!51856))))))))

(declare-fun bs!1038878 () Bool)

(assert (= bs!1038878 d!1465803))

(declare-fun m!5514223 () Bool)

(assert (=> bs!1038878 m!5514223))

(declare-fun m!5514225 () Bool)

(assert (=> bs!1038878 m!5514225))

(assert (=> b!4647088 d!1465803))

(declare-fun d!1465805 () Bool)

(assert (=> d!1465805 (= (eq!905 (addToMapMapFromBucket!1083 (Cons!51856 lt!1811333 lt!1811335) (ListMap!4522 Nil!51856)) (+!1970 lt!1811329 lt!1811333)) (= (content!8979 (toList!5184 (addToMapMapFromBucket!1083 (Cons!51856 lt!1811333 lt!1811335) (ListMap!4522 Nil!51856)))) (content!8979 (toList!5184 (+!1970 lt!1811329 lt!1811333)))))))

(declare-fun bs!1038879 () Bool)

(assert (= bs!1038879 d!1465805))

(declare-fun m!5514227 () Bool)

(assert (=> bs!1038879 m!5514227))

(declare-fun m!5514229 () Bool)

(assert (=> bs!1038879 m!5514229))

(assert (=> b!4647088 d!1465805))

(declare-fun bs!1038880 () Bool)

(declare-fun b!4647287 () Bool)

(assert (= bs!1038880 (and b!4647287 d!1465743)))

(declare-fun lambda!197839 () Int)

(assert (=> bs!1038880 (not (= lambda!197839 lambda!197748))))

(declare-fun bs!1038881 () Bool)

(assert (= bs!1038881 (and b!4647287 d!1465729)))

(assert (=> bs!1038881 (not (= lambda!197839 lambda!197743))))

(declare-fun bs!1038882 () Bool)

(assert (= bs!1038882 (and b!4647287 d!1465751)))

(assert (=> bs!1038882 (= (= (ListMap!4522 Nil!51856) lt!1811609) (= lambda!197839 lambda!197838))))

(declare-fun bs!1038883 () Bool)

(assert (= bs!1038883 (and b!4647287 b!4647281)))

(assert (=> bs!1038883 (= lambda!197839 lambda!197836)))

(assert (=> bs!1038883 (= (= (ListMap!4522 Nil!51856) lt!1811618) (= lambda!197839 lambda!197837))))

(declare-fun bs!1038884 () Bool)

(assert (= bs!1038884 (and b!4647287 b!4647280)))

(assert (=> bs!1038884 (= lambda!197839 lambda!197835)))

(assert (=> b!4647287 true))

(declare-fun bs!1038885 () Bool)

(declare-fun b!4647288 () Bool)

(assert (= bs!1038885 (and b!4647288 d!1465743)))

(declare-fun lambda!197840 () Int)

(assert (=> bs!1038885 (not (= lambda!197840 lambda!197748))))

(declare-fun bs!1038886 () Bool)

(assert (= bs!1038886 (and b!4647288 d!1465729)))

(assert (=> bs!1038886 (not (= lambda!197840 lambda!197743))))

(declare-fun bs!1038887 () Bool)

(assert (= bs!1038887 (and b!4647288 b!4647287)))

(assert (=> bs!1038887 (= lambda!197840 lambda!197839)))

(declare-fun bs!1038888 () Bool)

(assert (= bs!1038888 (and b!4647288 d!1465751)))

(assert (=> bs!1038888 (= (= (ListMap!4522 Nil!51856) lt!1811609) (= lambda!197840 lambda!197838))))

(declare-fun bs!1038889 () Bool)

(assert (= bs!1038889 (and b!4647288 b!4647281)))

(assert (=> bs!1038889 (= lambda!197840 lambda!197836)))

(assert (=> bs!1038889 (= (= (ListMap!4522 Nil!51856) lt!1811618) (= lambda!197840 lambda!197837))))

(declare-fun bs!1038890 () Bool)

(assert (= bs!1038890 (and b!4647288 b!4647280)))

(assert (=> bs!1038890 (= lambda!197840 lambda!197835)))

(assert (=> b!4647288 true))

(declare-fun lambda!197841 () Int)

(assert (=> bs!1038885 (not (= lambda!197841 lambda!197748))))

(assert (=> bs!1038886 (not (= lambda!197841 lambda!197743))))

(declare-fun lt!1811639 () ListMap!4521)

(assert (=> bs!1038888 (= (= lt!1811639 lt!1811609) (= lambda!197841 lambda!197838))))

(assert (=> bs!1038889 (= (= lt!1811639 (ListMap!4522 Nil!51856)) (= lambda!197841 lambda!197836))))

(assert (=> bs!1038889 (= (= lt!1811639 lt!1811618) (= lambda!197841 lambda!197837))))

(assert (=> bs!1038890 (= (= lt!1811639 (ListMap!4522 Nil!51856)) (= lambda!197841 lambda!197835))))

(assert (=> bs!1038887 (= (= lt!1811639 (ListMap!4522 Nil!51856)) (= lambda!197841 lambda!197839))))

(assert (=> b!4647288 (= (= lt!1811639 (ListMap!4522 Nil!51856)) (= lambda!197841 lambda!197840))))

(assert (=> b!4647288 true))

(declare-fun bs!1038891 () Bool)

(declare-fun d!1465807 () Bool)

(assert (= bs!1038891 (and d!1465807 d!1465743)))

(declare-fun lambda!197842 () Int)

(assert (=> bs!1038891 (not (= lambda!197842 lambda!197748))))

(declare-fun bs!1038892 () Bool)

(assert (= bs!1038892 (and d!1465807 b!4647288)))

(declare-fun lt!1811630 () ListMap!4521)

(assert (=> bs!1038892 (= (= lt!1811630 lt!1811639) (= lambda!197842 lambda!197841))))

(declare-fun bs!1038893 () Bool)

(assert (= bs!1038893 (and d!1465807 d!1465729)))

(assert (=> bs!1038893 (not (= lambda!197842 lambda!197743))))

(declare-fun bs!1038894 () Bool)

(assert (= bs!1038894 (and d!1465807 d!1465751)))

(assert (=> bs!1038894 (= (= lt!1811630 lt!1811609) (= lambda!197842 lambda!197838))))

(declare-fun bs!1038895 () Bool)

(assert (= bs!1038895 (and d!1465807 b!4647281)))

(assert (=> bs!1038895 (= (= lt!1811630 (ListMap!4522 Nil!51856)) (= lambda!197842 lambda!197836))))

(assert (=> bs!1038895 (= (= lt!1811630 lt!1811618) (= lambda!197842 lambda!197837))))

(declare-fun bs!1038896 () Bool)

(assert (= bs!1038896 (and d!1465807 b!4647280)))

(assert (=> bs!1038896 (= (= lt!1811630 (ListMap!4522 Nil!51856)) (= lambda!197842 lambda!197835))))

(declare-fun bs!1038897 () Bool)

(assert (= bs!1038897 (and d!1465807 b!4647287)))

(assert (=> bs!1038897 (= (= lt!1811630 (ListMap!4522 Nil!51856)) (= lambda!197842 lambda!197839))))

(assert (=> bs!1038892 (= (= lt!1811630 (ListMap!4522 Nil!51856)) (= lambda!197842 lambda!197840))))

(assert (=> d!1465807 true))

(declare-fun b!4647286 () Bool)

(declare-fun e!2899072 () Bool)

(assert (=> b!4647286 (= e!2899072 (invariantList!1286 (toList!5184 lt!1811630)))))

(declare-fun e!2899071 () ListMap!4521)

(assert (=> b!4647287 (= e!2899071 (ListMap!4522 Nil!51856))))

(declare-fun lt!1811637 () Unit!116622)

(declare-fun call!324569 () Unit!116622)

(assert (=> b!4647287 (= lt!1811637 call!324569)))

(declare-fun call!324571 () Bool)

(assert (=> b!4647287 call!324571))

(declare-fun lt!1811638 () Unit!116622)

(assert (=> b!4647287 (= lt!1811638 lt!1811637)))

(declare-fun call!324570 () Bool)

(assert (=> b!4647287 call!324570))

(declare-fun lt!1811625 () Unit!116622)

(declare-fun Unit!116670 () Unit!116622)

(assert (=> b!4647287 (= lt!1811625 Unit!116670)))

(assert (=> b!4647288 (= e!2899071 lt!1811639)))

(declare-fun lt!1811640 () ListMap!4521)

(assert (=> b!4647288 (= lt!1811640 (+!1970 (ListMap!4522 Nil!51856) (h!57988 (Cons!51856 lt!1811333 lt!1811335))))))

(assert (=> b!4647288 (= lt!1811639 (addToMapMapFromBucket!1083 (t!359080 (Cons!51856 lt!1811333 lt!1811335)) (+!1970 (ListMap!4522 Nil!51856) (h!57988 (Cons!51856 lt!1811333 lt!1811335)))))))

(declare-fun lt!1811633 () Unit!116622)

(assert (=> b!4647288 (= lt!1811633 call!324569)))

(assert (=> b!4647288 call!324570))

(declare-fun lt!1811635 () Unit!116622)

(assert (=> b!4647288 (= lt!1811635 lt!1811633)))

(assert (=> b!4647288 (forall!10994 (toList!5184 lt!1811640) lambda!197841)))

(declare-fun lt!1811621 () Unit!116622)

(declare-fun Unit!116671 () Unit!116622)

(assert (=> b!4647288 (= lt!1811621 Unit!116671)))

(assert (=> b!4647288 (forall!10994 (t!359080 (Cons!51856 lt!1811333 lt!1811335)) lambda!197841)))

(declare-fun lt!1811622 () Unit!116622)

(declare-fun Unit!116672 () Unit!116622)

(assert (=> b!4647288 (= lt!1811622 Unit!116672)))

(declare-fun lt!1811628 () Unit!116622)

(declare-fun Unit!116673 () Unit!116622)

(assert (=> b!4647288 (= lt!1811628 Unit!116673)))

(declare-fun lt!1811631 () Unit!116622)

(assert (=> b!4647288 (= lt!1811631 (forallContained!3206 (toList!5184 lt!1811640) lambda!197841 (h!57988 (Cons!51856 lt!1811333 lt!1811335))))))

(assert (=> b!4647288 (contains!14997 lt!1811640 (_1!29769 (h!57988 (Cons!51856 lt!1811333 lt!1811335))))))

(declare-fun lt!1811634 () Unit!116622)

(declare-fun Unit!116674 () Unit!116622)

(assert (=> b!4647288 (= lt!1811634 Unit!116674)))

(assert (=> b!4647288 (contains!14997 lt!1811639 (_1!29769 (h!57988 (Cons!51856 lt!1811333 lt!1811335))))))

(declare-fun lt!1811629 () Unit!116622)

(declare-fun Unit!116675 () Unit!116622)

(assert (=> b!4647288 (= lt!1811629 Unit!116675)))

(assert (=> b!4647288 (forall!10994 (Cons!51856 lt!1811333 lt!1811335) lambda!197841)))

(declare-fun lt!1811623 () Unit!116622)

(declare-fun Unit!116676 () Unit!116622)

(assert (=> b!4647288 (= lt!1811623 Unit!116676)))

(assert (=> b!4647288 (forall!10994 (toList!5184 lt!1811640) lambda!197841)))

(declare-fun lt!1811624 () Unit!116622)

(declare-fun Unit!116677 () Unit!116622)

(assert (=> b!4647288 (= lt!1811624 Unit!116677)))

(declare-fun lt!1811632 () Unit!116622)

(declare-fun Unit!116678 () Unit!116622)

(assert (=> b!4647288 (= lt!1811632 Unit!116678)))

(declare-fun lt!1811636 () Unit!116622)

(assert (=> b!4647288 (= lt!1811636 (addForallContainsKeyThenBeforeAdding!585 (ListMap!4522 Nil!51856) lt!1811639 (_1!29769 (h!57988 (Cons!51856 lt!1811333 lt!1811335))) (_2!29769 (h!57988 (Cons!51856 lt!1811333 lt!1811335)))))))

(assert (=> b!4647288 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197841)))

(declare-fun lt!1811641 () Unit!116622)

(assert (=> b!4647288 (= lt!1811641 lt!1811636)))

(assert (=> b!4647288 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197841)))

(declare-fun lt!1811626 () Unit!116622)

(declare-fun Unit!116679 () Unit!116622)

(assert (=> b!4647288 (= lt!1811626 Unit!116679)))

(declare-fun res!1952758 () Bool)

(assert (=> b!4647288 (= res!1952758 call!324571)))

(declare-fun e!2899073 () Bool)

(assert (=> b!4647288 (=> (not res!1952758) (not e!2899073))))

(assert (=> b!4647288 e!2899073))

(declare-fun lt!1811627 () Unit!116622)

(declare-fun Unit!116680 () Unit!116622)

(assert (=> b!4647288 (= lt!1811627 Unit!116680)))

(declare-fun bm!324564 () Bool)

(declare-fun c!795228 () Bool)

(assert (=> bm!324564 (= call!324571 (forall!10994 (ite c!795228 (toList!5184 (ListMap!4522 Nil!51856)) (Cons!51856 lt!1811333 lt!1811335)) (ite c!795228 lambda!197839 lambda!197841)))))

(declare-fun bm!324565 () Bool)

(assert (=> bm!324565 (= call!324569 (lemmaContainsAllItsOwnKeys!586 (ListMap!4522 Nil!51856)))))

(assert (=> d!1465807 e!2899072))

(declare-fun res!1952759 () Bool)

(assert (=> d!1465807 (=> (not res!1952759) (not e!2899072))))

(assert (=> d!1465807 (= res!1952759 (forall!10994 (Cons!51856 lt!1811333 lt!1811335) lambda!197842))))

(assert (=> d!1465807 (= lt!1811630 e!2899071)))

(assert (=> d!1465807 (= c!795228 ((_ is Nil!51856) (Cons!51856 lt!1811333 lt!1811335)))))

(assert (=> d!1465807 (noDuplicateKeys!1626 (Cons!51856 lt!1811333 lt!1811335))))

(assert (=> d!1465807 (= (addToMapMapFromBucket!1083 (Cons!51856 lt!1811333 lt!1811335) (ListMap!4522 Nil!51856)) lt!1811630)))

(declare-fun b!4647289 () Bool)

(declare-fun res!1952760 () Bool)

(assert (=> b!4647289 (=> (not res!1952760) (not e!2899072))))

(assert (=> b!4647289 (= res!1952760 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197842))))

(declare-fun b!4647290 () Bool)

(assert (=> b!4647290 (= e!2899073 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197841))))

(declare-fun bm!324566 () Bool)

(assert (=> bm!324566 (= call!324570 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) (ite c!795228 lambda!197839 lambda!197840)))))

(assert (= (and d!1465807 c!795228) b!4647287))

(assert (= (and d!1465807 (not c!795228)) b!4647288))

(assert (= (and b!4647288 res!1952758) b!4647290))

(assert (= (or b!4647287 b!4647288) bm!324565))

(assert (= (or b!4647287 b!4647288) bm!324566))

(assert (= (or b!4647287 b!4647288) bm!324564))

(assert (= (and d!1465807 res!1952759) b!4647289))

(assert (= (and b!4647289 res!1952760) b!4647286))

(declare-fun m!5514231 () Bool)

(assert (=> b!4647290 m!5514231))

(assert (=> b!4647288 m!5514231))

(declare-fun m!5514233 () Bool)

(assert (=> b!4647288 m!5514233))

(declare-fun m!5514235 () Bool)

(assert (=> b!4647288 m!5514235))

(declare-fun m!5514237 () Bool)

(assert (=> b!4647288 m!5514237))

(declare-fun m!5514239 () Bool)

(assert (=> b!4647288 m!5514239))

(assert (=> b!4647288 m!5514231))

(declare-fun m!5514241 () Bool)

(assert (=> b!4647288 m!5514241))

(declare-fun m!5514243 () Bool)

(assert (=> b!4647288 m!5514243))

(declare-fun m!5514245 () Bool)

(assert (=> b!4647288 m!5514245))

(declare-fun m!5514247 () Bool)

(assert (=> b!4647288 m!5514247))

(declare-fun m!5514249 () Bool)

(assert (=> b!4647288 m!5514249))

(assert (=> b!4647288 m!5514241))

(assert (=> b!4647288 m!5514235))

(declare-fun m!5514251 () Bool)

(assert (=> d!1465807 m!5514251))

(declare-fun m!5514253 () Bool)

(assert (=> d!1465807 m!5514253))

(assert (=> bm!324565 m!5514213))

(declare-fun m!5514255 () Bool)

(assert (=> bm!324564 m!5514255))

(declare-fun m!5514257 () Bool)

(assert (=> b!4647289 m!5514257))

(declare-fun m!5514259 () Bool)

(assert (=> bm!324566 m!5514259))

(declare-fun m!5514261 () Bool)

(assert (=> b!4647286 m!5514261))

(assert (=> b!4647088 d!1465807))

(declare-fun d!1465809 () Bool)

(assert (=> d!1465809 (= (head!9726 oldBucket!40) (h!57988 oldBucket!40))))

(assert (=> b!4647088 d!1465809))

(declare-fun d!1465811 () Bool)

(assert (=> d!1465811 (eq!905 (addToMapMapFromBucket!1083 (Cons!51856 lt!1811333 lt!1811335) (ListMap!4522 Nil!51856)) (+!1970 (addToMapMapFromBucket!1083 lt!1811335 (ListMap!4522 Nil!51856)) lt!1811333))))

(declare-fun lt!1811644 () Unit!116622)

(declare-fun choose!31918 (tuple2!52950 List!51980 ListMap!4521) Unit!116622)

(assert (=> d!1465811 (= lt!1811644 (choose!31918 lt!1811333 lt!1811335 (ListMap!4522 Nil!51856)))))

(assert (=> d!1465811 (noDuplicateKeys!1626 lt!1811335)))

(assert (=> d!1465811 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!156 lt!1811333 lt!1811335 (ListMap!4522 Nil!51856)) lt!1811644)))

(declare-fun bs!1038898 () Bool)

(assert (= bs!1038898 d!1465811))

(declare-fun m!5514263 () Bool)

(assert (=> bs!1038898 m!5514263))

(declare-fun m!5514265 () Bool)

(assert (=> bs!1038898 m!5514265))

(assert (=> bs!1038898 m!5513833))

(declare-fun m!5514267 () Bool)

(assert (=> bs!1038898 m!5514267))

(assert (=> bs!1038898 m!5513833))

(assert (=> bs!1038898 m!5513799))

(assert (=> bs!1038898 m!5514267))

(declare-fun m!5514269 () Bool)

(assert (=> bs!1038898 m!5514269))

(assert (=> bs!1038898 m!5513799))

(assert (=> b!4647088 d!1465811))

(declare-fun d!1465813 () Bool)

(declare-fun res!1952765 () Bool)

(declare-fun e!2899078 () Bool)

(assert (=> d!1465813 (=> res!1952765 e!2899078)))

(assert (=> d!1465813 (= res!1952765 (and ((_ is Cons!51856) lt!1811335) (= (_1!29769 (h!57988 lt!1811335)) key!4968)))))

(assert (=> d!1465813 (= (containsKey!2694 lt!1811335 key!4968) e!2899078)))

(declare-fun b!4647295 () Bool)

(declare-fun e!2899079 () Bool)

(assert (=> b!4647295 (= e!2899078 e!2899079)))

(declare-fun res!1952766 () Bool)

(assert (=> b!4647295 (=> (not res!1952766) (not e!2899079))))

(assert (=> b!4647295 (= res!1952766 ((_ is Cons!51856) lt!1811335))))

(declare-fun b!4647296 () Bool)

(assert (=> b!4647296 (= e!2899079 (containsKey!2694 (t!359080 lt!1811335) key!4968))))

(assert (= (and d!1465813 (not res!1952765)) b!4647295))

(assert (= (and b!4647295 res!1952766) b!4647296))

(declare-fun m!5514271 () Bool)

(assert (=> b!4647296 m!5514271))

(assert (=> b!4647100 d!1465813))

(declare-fun bs!1038899 () Bool)

(declare-fun b!4647298 () Bool)

(assert (= bs!1038899 (and b!4647298 d!1465743)))

(declare-fun lambda!197843 () Int)

(assert (=> bs!1038899 (not (= lambda!197843 lambda!197748))))

(declare-fun bs!1038900 () Bool)

(assert (= bs!1038900 (and b!4647298 b!4647288)))

(assert (=> bs!1038900 (= (= (ListMap!4522 Nil!51856) lt!1811639) (= lambda!197843 lambda!197841))))

(declare-fun bs!1038901 () Bool)

(assert (= bs!1038901 (and b!4647298 d!1465729)))

(assert (=> bs!1038901 (not (= lambda!197843 lambda!197743))))

(declare-fun bs!1038902 () Bool)

(assert (= bs!1038902 (and b!4647298 d!1465751)))

(assert (=> bs!1038902 (= (= (ListMap!4522 Nil!51856) lt!1811609) (= lambda!197843 lambda!197838))))

(declare-fun bs!1038903 () Bool)

(assert (= bs!1038903 (and b!4647298 b!4647281)))

(assert (=> bs!1038903 (= lambda!197843 lambda!197836)))

(declare-fun bs!1038904 () Bool)

(assert (= bs!1038904 (and b!4647298 d!1465807)))

(assert (=> bs!1038904 (= (= (ListMap!4522 Nil!51856) lt!1811630) (= lambda!197843 lambda!197842))))

(assert (=> bs!1038903 (= (= (ListMap!4522 Nil!51856) lt!1811618) (= lambda!197843 lambda!197837))))

(declare-fun bs!1038905 () Bool)

(assert (= bs!1038905 (and b!4647298 b!4647280)))

(assert (=> bs!1038905 (= lambda!197843 lambda!197835)))

(declare-fun bs!1038906 () Bool)

(assert (= bs!1038906 (and b!4647298 b!4647287)))

(assert (=> bs!1038906 (= lambda!197843 lambda!197839)))

(assert (=> bs!1038900 (= lambda!197843 lambda!197840)))

(assert (=> b!4647298 true))

(declare-fun bs!1038907 () Bool)

(declare-fun b!4647299 () Bool)

(assert (= bs!1038907 (and b!4647299 d!1465743)))

(declare-fun lambda!197844 () Int)

(assert (=> bs!1038907 (not (= lambda!197844 lambda!197748))))

(declare-fun bs!1038908 () Bool)

(assert (= bs!1038908 (and b!4647299 b!4647288)))

(assert (=> bs!1038908 (= (= (ListMap!4522 Nil!51856) lt!1811639) (= lambda!197844 lambda!197841))))

(declare-fun bs!1038909 () Bool)

(assert (= bs!1038909 (and b!4647299 b!4647298)))

(assert (=> bs!1038909 (= lambda!197844 lambda!197843)))

(declare-fun bs!1038910 () Bool)

(assert (= bs!1038910 (and b!4647299 d!1465729)))

(assert (=> bs!1038910 (not (= lambda!197844 lambda!197743))))

(declare-fun bs!1038911 () Bool)

(assert (= bs!1038911 (and b!4647299 d!1465751)))

(assert (=> bs!1038911 (= (= (ListMap!4522 Nil!51856) lt!1811609) (= lambda!197844 lambda!197838))))

(declare-fun bs!1038912 () Bool)

(assert (= bs!1038912 (and b!4647299 b!4647281)))

(assert (=> bs!1038912 (= lambda!197844 lambda!197836)))

(declare-fun bs!1038913 () Bool)

(assert (= bs!1038913 (and b!4647299 d!1465807)))

(assert (=> bs!1038913 (= (= (ListMap!4522 Nil!51856) lt!1811630) (= lambda!197844 lambda!197842))))

(assert (=> bs!1038912 (= (= (ListMap!4522 Nil!51856) lt!1811618) (= lambda!197844 lambda!197837))))

(declare-fun bs!1038914 () Bool)

(assert (= bs!1038914 (and b!4647299 b!4647280)))

(assert (=> bs!1038914 (= lambda!197844 lambda!197835)))

(declare-fun bs!1038915 () Bool)

(assert (= bs!1038915 (and b!4647299 b!4647287)))

(assert (=> bs!1038915 (= lambda!197844 lambda!197839)))

(assert (=> bs!1038908 (= lambda!197844 lambda!197840)))

(assert (=> b!4647299 true))

(declare-fun lambda!197845 () Int)

(assert (=> bs!1038907 (not (= lambda!197845 lambda!197748))))

(declare-fun lt!1811663 () ListMap!4521)

(assert (=> b!4647299 (= (= lt!1811663 (ListMap!4522 Nil!51856)) (= lambda!197845 lambda!197844))))

(assert (=> bs!1038908 (= (= lt!1811663 lt!1811639) (= lambda!197845 lambda!197841))))

(assert (=> bs!1038909 (= (= lt!1811663 (ListMap!4522 Nil!51856)) (= lambda!197845 lambda!197843))))

(assert (=> bs!1038910 (not (= lambda!197845 lambda!197743))))

(assert (=> bs!1038911 (= (= lt!1811663 lt!1811609) (= lambda!197845 lambda!197838))))

(assert (=> bs!1038912 (= (= lt!1811663 (ListMap!4522 Nil!51856)) (= lambda!197845 lambda!197836))))

(assert (=> bs!1038913 (= (= lt!1811663 lt!1811630) (= lambda!197845 lambda!197842))))

(assert (=> bs!1038912 (= (= lt!1811663 lt!1811618) (= lambda!197845 lambda!197837))))

(assert (=> bs!1038914 (= (= lt!1811663 (ListMap!4522 Nil!51856)) (= lambda!197845 lambda!197835))))

(assert (=> bs!1038915 (= (= lt!1811663 (ListMap!4522 Nil!51856)) (= lambda!197845 lambda!197839))))

(assert (=> bs!1038908 (= (= lt!1811663 (ListMap!4522 Nil!51856)) (= lambda!197845 lambda!197840))))

(assert (=> b!4647299 true))

(declare-fun bs!1038916 () Bool)

(declare-fun d!1465815 () Bool)

(assert (= bs!1038916 (and d!1465815 b!4647299)))

(declare-fun lambda!197846 () Int)

(declare-fun lt!1811654 () ListMap!4521)

(assert (=> bs!1038916 (= (= lt!1811654 lt!1811663) (= lambda!197846 lambda!197845))))

(declare-fun bs!1038917 () Bool)

(assert (= bs!1038917 (and d!1465815 d!1465743)))

(assert (=> bs!1038917 (not (= lambda!197846 lambda!197748))))

(assert (=> bs!1038916 (= (= lt!1811654 (ListMap!4522 Nil!51856)) (= lambda!197846 lambda!197844))))

(declare-fun bs!1038918 () Bool)

(assert (= bs!1038918 (and d!1465815 b!4647288)))

(assert (=> bs!1038918 (= (= lt!1811654 lt!1811639) (= lambda!197846 lambda!197841))))

(declare-fun bs!1038919 () Bool)

(assert (= bs!1038919 (and d!1465815 b!4647298)))

(assert (=> bs!1038919 (= (= lt!1811654 (ListMap!4522 Nil!51856)) (= lambda!197846 lambda!197843))))

(declare-fun bs!1038920 () Bool)

(assert (= bs!1038920 (and d!1465815 d!1465729)))

(assert (=> bs!1038920 (not (= lambda!197846 lambda!197743))))

(declare-fun bs!1038921 () Bool)

(assert (= bs!1038921 (and d!1465815 d!1465751)))

(assert (=> bs!1038921 (= (= lt!1811654 lt!1811609) (= lambda!197846 lambda!197838))))

(declare-fun bs!1038922 () Bool)

(assert (= bs!1038922 (and d!1465815 b!4647281)))

(assert (=> bs!1038922 (= (= lt!1811654 (ListMap!4522 Nil!51856)) (= lambda!197846 lambda!197836))))

(declare-fun bs!1038923 () Bool)

(assert (= bs!1038923 (and d!1465815 d!1465807)))

(assert (=> bs!1038923 (= (= lt!1811654 lt!1811630) (= lambda!197846 lambda!197842))))

(assert (=> bs!1038922 (= (= lt!1811654 lt!1811618) (= lambda!197846 lambda!197837))))

(declare-fun bs!1038924 () Bool)

(assert (= bs!1038924 (and d!1465815 b!4647280)))

(assert (=> bs!1038924 (= (= lt!1811654 (ListMap!4522 Nil!51856)) (= lambda!197846 lambda!197835))))

(declare-fun bs!1038925 () Bool)

(assert (= bs!1038925 (and d!1465815 b!4647287)))

(assert (=> bs!1038925 (= (= lt!1811654 (ListMap!4522 Nil!51856)) (= lambda!197846 lambda!197839))))

(assert (=> bs!1038918 (= (= lt!1811654 (ListMap!4522 Nil!51856)) (= lambda!197846 lambda!197840))))

(assert (=> d!1465815 true))

(declare-fun b!4647297 () Bool)

(declare-fun e!2899081 () Bool)

(assert (=> b!4647297 (= e!2899081 (invariantList!1286 (toList!5184 lt!1811654)))))

(declare-fun e!2899080 () ListMap!4521)

(assert (=> b!4647298 (= e!2899080 (ListMap!4522 Nil!51856))))

(declare-fun lt!1811661 () Unit!116622)

(declare-fun call!324572 () Unit!116622)

(assert (=> b!4647298 (= lt!1811661 call!324572)))

(declare-fun call!324574 () Bool)

(assert (=> b!4647298 call!324574))

(declare-fun lt!1811662 () Unit!116622)

(assert (=> b!4647298 (= lt!1811662 lt!1811661)))

(declare-fun call!324573 () Bool)

(assert (=> b!4647298 call!324573))

(declare-fun lt!1811649 () Unit!116622)

(declare-fun Unit!116692 () Unit!116622)

(assert (=> b!4647298 (= lt!1811649 Unit!116692)))

(assert (=> b!4647299 (= e!2899080 lt!1811663)))

(declare-fun lt!1811664 () ListMap!4521)

(assert (=> b!4647299 (= lt!1811664 (+!1970 (ListMap!4522 Nil!51856) (h!57988 newBucket!224)))))

(assert (=> b!4647299 (= lt!1811663 (addToMapMapFromBucket!1083 (t!359080 newBucket!224) (+!1970 (ListMap!4522 Nil!51856) (h!57988 newBucket!224))))))

(declare-fun lt!1811657 () Unit!116622)

(assert (=> b!4647299 (= lt!1811657 call!324572)))

(assert (=> b!4647299 call!324573))

(declare-fun lt!1811659 () Unit!116622)

(assert (=> b!4647299 (= lt!1811659 lt!1811657)))

(assert (=> b!4647299 (forall!10994 (toList!5184 lt!1811664) lambda!197845)))

(declare-fun lt!1811645 () Unit!116622)

(declare-fun Unit!116693 () Unit!116622)

(assert (=> b!4647299 (= lt!1811645 Unit!116693)))

(assert (=> b!4647299 (forall!10994 (t!359080 newBucket!224) lambda!197845)))

(declare-fun lt!1811646 () Unit!116622)

(declare-fun Unit!116694 () Unit!116622)

(assert (=> b!4647299 (= lt!1811646 Unit!116694)))

(declare-fun lt!1811652 () Unit!116622)

(declare-fun Unit!116695 () Unit!116622)

(assert (=> b!4647299 (= lt!1811652 Unit!116695)))

(declare-fun lt!1811655 () Unit!116622)

(assert (=> b!4647299 (= lt!1811655 (forallContained!3206 (toList!5184 lt!1811664) lambda!197845 (h!57988 newBucket!224)))))

(assert (=> b!4647299 (contains!14997 lt!1811664 (_1!29769 (h!57988 newBucket!224)))))

(declare-fun lt!1811658 () Unit!116622)

(declare-fun Unit!116696 () Unit!116622)

(assert (=> b!4647299 (= lt!1811658 Unit!116696)))

(assert (=> b!4647299 (contains!14997 lt!1811663 (_1!29769 (h!57988 newBucket!224)))))

(declare-fun lt!1811653 () Unit!116622)

(declare-fun Unit!116697 () Unit!116622)

(assert (=> b!4647299 (= lt!1811653 Unit!116697)))

(assert (=> b!4647299 (forall!10994 newBucket!224 lambda!197845)))

(declare-fun lt!1811647 () Unit!116622)

(declare-fun Unit!116698 () Unit!116622)

(assert (=> b!4647299 (= lt!1811647 Unit!116698)))

(assert (=> b!4647299 (forall!10994 (toList!5184 lt!1811664) lambda!197845)))

(declare-fun lt!1811648 () Unit!116622)

(declare-fun Unit!116699 () Unit!116622)

(assert (=> b!4647299 (= lt!1811648 Unit!116699)))

(declare-fun lt!1811656 () Unit!116622)

(declare-fun Unit!116700 () Unit!116622)

(assert (=> b!4647299 (= lt!1811656 Unit!116700)))

(declare-fun lt!1811660 () Unit!116622)

(assert (=> b!4647299 (= lt!1811660 (addForallContainsKeyThenBeforeAdding!585 (ListMap!4522 Nil!51856) lt!1811663 (_1!29769 (h!57988 newBucket!224)) (_2!29769 (h!57988 newBucket!224))))))

(assert (=> b!4647299 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197845)))

(declare-fun lt!1811665 () Unit!116622)

(assert (=> b!4647299 (= lt!1811665 lt!1811660)))

(assert (=> b!4647299 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197845)))

(declare-fun lt!1811650 () Unit!116622)

(declare-fun Unit!116701 () Unit!116622)

(assert (=> b!4647299 (= lt!1811650 Unit!116701)))

(declare-fun res!1952767 () Bool)

(assert (=> b!4647299 (= res!1952767 call!324574)))

(declare-fun e!2899082 () Bool)

(assert (=> b!4647299 (=> (not res!1952767) (not e!2899082))))

(assert (=> b!4647299 e!2899082))

(declare-fun lt!1811651 () Unit!116622)

(declare-fun Unit!116702 () Unit!116622)

(assert (=> b!4647299 (= lt!1811651 Unit!116702)))

(declare-fun c!795229 () Bool)

(declare-fun bm!324567 () Bool)

(assert (=> bm!324567 (= call!324574 (forall!10994 (ite c!795229 (toList!5184 (ListMap!4522 Nil!51856)) newBucket!224) (ite c!795229 lambda!197843 lambda!197845)))))

(declare-fun bm!324568 () Bool)

(assert (=> bm!324568 (= call!324572 (lemmaContainsAllItsOwnKeys!586 (ListMap!4522 Nil!51856)))))

(assert (=> d!1465815 e!2899081))

(declare-fun res!1952768 () Bool)

(assert (=> d!1465815 (=> (not res!1952768) (not e!2899081))))

(assert (=> d!1465815 (= res!1952768 (forall!10994 newBucket!224 lambda!197846))))

(assert (=> d!1465815 (= lt!1811654 e!2899080)))

(assert (=> d!1465815 (= c!795229 ((_ is Nil!51856) newBucket!224))))

(assert (=> d!1465815 (noDuplicateKeys!1626 newBucket!224)))

(assert (=> d!1465815 (= (addToMapMapFromBucket!1083 newBucket!224 (ListMap!4522 Nil!51856)) lt!1811654)))

(declare-fun b!4647300 () Bool)

(declare-fun res!1952769 () Bool)

(assert (=> b!4647300 (=> (not res!1952769) (not e!2899081))))

(assert (=> b!4647300 (= res!1952769 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197846))))

(declare-fun b!4647301 () Bool)

(assert (=> b!4647301 (= e!2899082 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197845))))

(declare-fun bm!324569 () Bool)

(assert (=> bm!324569 (= call!324573 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) (ite c!795229 lambda!197843 lambda!197844)))))

(assert (= (and d!1465815 c!795229) b!4647298))

(assert (= (and d!1465815 (not c!795229)) b!4647299))

(assert (= (and b!4647299 res!1952767) b!4647301))

(assert (= (or b!4647298 b!4647299) bm!324568))

(assert (= (or b!4647298 b!4647299) bm!324569))

(assert (= (or b!4647298 b!4647299) bm!324567))

(assert (= (and d!1465815 res!1952768) b!4647300))

(assert (= (and b!4647300 res!1952769) b!4647297))

(declare-fun m!5514273 () Bool)

(assert (=> b!4647301 m!5514273))

(assert (=> b!4647299 m!5514273))

(declare-fun m!5514275 () Bool)

(assert (=> b!4647299 m!5514275))

(declare-fun m!5514277 () Bool)

(assert (=> b!4647299 m!5514277))

(declare-fun m!5514279 () Bool)

(assert (=> b!4647299 m!5514279))

(declare-fun m!5514281 () Bool)

(assert (=> b!4647299 m!5514281))

(assert (=> b!4647299 m!5514273))

(declare-fun m!5514283 () Bool)

(assert (=> b!4647299 m!5514283))

(declare-fun m!5514285 () Bool)

(assert (=> b!4647299 m!5514285))

(declare-fun m!5514287 () Bool)

(assert (=> b!4647299 m!5514287))

(declare-fun m!5514289 () Bool)

(assert (=> b!4647299 m!5514289))

(declare-fun m!5514291 () Bool)

(assert (=> b!4647299 m!5514291))

(assert (=> b!4647299 m!5514283))

(assert (=> b!4647299 m!5514277))

(declare-fun m!5514293 () Bool)

(assert (=> d!1465815 m!5514293))

(assert (=> d!1465815 m!5513825))

(assert (=> bm!324568 m!5514213))

(declare-fun m!5514295 () Bool)

(assert (=> bm!324567 m!5514295))

(declare-fun m!5514297 () Bool)

(assert (=> b!4647300 m!5514297))

(declare-fun m!5514299 () Bool)

(assert (=> bm!324569 m!5514299))

(declare-fun m!5514301 () Bool)

(assert (=> b!4647297 m!5514301))

(assert (=> b!4647089 d!1465815))

(declare-fun bs!1038926 () Bool)

(declare-fun b!4647303 () Bool)

(assert (= bs!1038926 (and b!4647303 d!1465815)))

(declare-fun lambda!197847 () Int)

(assert (=> bs!1038926 (= (= (ListMap!4522 Nil!51856) lt!1811654) (= lambda!197847 lambda!197846))))

(declare-fun bs!1038927 () Bool)

(assert (= bs!1038927 (and b!4647303 b!4647299)))

(assert (=> bs!1038927 (= (= (ListMap!4522 Nil!51856) lt!1811663) (= lambda!197847 lambda!197845))))

(declare-fun bs!1038928 () Bool)

(assert (= bs!1038928 (and b!4647303 d!1465743)))

(assert (=> bs!1038928 (not (= lambda!197847 lambda!197748))))

(assert (=> bs!1038927 (= lambda!197847 lambda!197844)))

(declare-fun bs!1038929 () Bool)

(assert (= bs!1038929 (and b!4647303 b!4647288)))

(assert (=> bs!1038929 (= (= (ListMap!4522 Nil!51856) lt!1811639) (= lambda!197847 lambda!197841))))

(declare-fun bs!1038930 () Bool)

(assert (= bs!1038930 (and b!4647303 b!4647298)))

(assert (=> bs!1038930 (= lambda!197847 lambda!197843)))

(declare-fun bs!1038931 () Bool)

(assert (= bs!1038931 (and b!4647303 d!1465729)))

(assert (=> bs!1038931 (not (= lambda!197847 lambda!197743))))

(declare-fun bs!1038932 () Bool)

(assert (= bs!1038932 (and b!4647303 d!1465751)))

(assert (=> bs!1038932 (= (= (ListMap!4522 Nil!51856) lt!1811609) (= lambda!197847 lambda!197838))))

(declare-fun bs!1038933 () Bool)

(assert (= bs!1038933 (and b!4647303 b!4647281)))

(assert (=> bs!1038933 (= lambda!197847 lambda!197836)))

(declare-fun bs!1038934 () Bool)

(assert (= bs!1038934 (and b!4647303 d!1465807)))

(assert (=> bs!1038934 (= (= (ListMap!4522 Nil!51856) lt!1811630) (= lambda!197847 lambda!197842))))

(assert (=> bs!1038933 (= (= (ListMap!4522 Nil!51856) lt!1811618) (= lambda!197847 lambda!197837))))

(declare-fun bs!1038935 () Bool)

(assert (= bs!1038935 (and b!4647303 b!4647280)))

(assert (=> bs!1038935 (= lambda!197847 lambda!197835)))

(declare-fun bs!1038936 () Bool)

(assert (= bs!1038936 (and b!4647303 b!4647287)))

(assert (=> bs!1038936 (= lambda!197847 lambda!197839)))

(assert (=> bs!1038929 (= lambda!197847 lambda!197840)))

(assert (=> b!4647303 true))

(declare-fun bs!1038937 () Bool)

(declare-fun b!4647304 () Bool)

(assert (= bs!1038937 (and b!4647304 d!1465815)))

(declare-fun lambda!197848 () Int)

(assert (=> bs!1038937 (= (= (ListMap!4522 Nil!51856) lt!1811654) (= lambda!197848 lambda!197846))))

(declare-fun bs!1038938 () Bool)

(assert (= bs!1038938 (and b!4647304 b!4647299)))

(assert (=> bs!1038938 (= (= (ListMap!4522 Nil!51856) lt!1811663) (= lambda!197848 lambda!197845))))

(declare-fun bs!1038939 () Bool)

(assert (= bs!1038939 (and b!4647304 d!1465743)))

(assert (=> bs!1038939 (not (= lambda!197848 lambda!197748))))

(assert (=> bs!1038938 (= lambda!197848 lambda!197844)))

(declare-fun bs!1038940 () Bool)

(assert (= bs!1038940 (and b!4647304 b!4647288)))

(assert (=> bs!1038940 (= (= (ListMap!4522 Nil!51856) lt!1811639) (= lambda!197848 lambda!197841))))

(declare-fun bs!1038941 () Bool)

(assert (= bs!1038941 (and b!4647304 b!4647298)))

(assert (=> bs!1038941 (= lambda!197848 lambda!197843)))

(declare-fun bs!1038942 () Bool)

(assert (= bs!1038942 (and b!4647304 d!1465729)))

(assert (=> bs!1038942 (not (= lambda!197848 lambda!197743))))

(declare-fun bs!1038943 () Bool)

(assert (= bs!1038943 (and b!4647304 d!1465751)))

(assert (=> bs!1038943 (= (= (ListMap!4522 Nil!51856) lt!1811609) (= lambda!197848 lambda!197838))))

(declare-fun bs!1038944 () Bool)

(assert (= bs!1038944 (and b!4647304 b!4647281)))

(assert (=> bs!1038944 (= lambda!197848 lambda!197836)))

(declare-fun bs!1038945 () Bool)

(assert (= bs!1038945 (and b!4647304 d!1465807)))

(assert (=> bs!1038945 (= (= (ListMap!4522 Nil!51856) lt!1811630) (= lambda!197848 lambda!197842))))

(assert (=> bs!1038944 (= (= (ListMap!4522 Nil!51856) lt!1811618) (= lambda!197848 lambda!197837))))

(declare-fun bs!1038946 () Bool)

(assert (= bs!1038946 (and b!4647304 b!4647280)))

(assert (=> bs!1038946 (= lambda!197848 lambda!197835)))

(declare-fun bs!1038947 () Bool)

(assert (= bs!1038947 (and b!4647304 b!4647287)))

(assert (=> bs!1038947 (= lambda!197848 lambda!197839)))

(assert (=> bs!1038940 (= lambda!197848 lambda!197840)))

(declare-fun bs!1038948 () Bool)

(assert (= bs!1038948 (and b!4647304 b!4647303)))

(assert (=> bs!1038948 (= lambda!197848 lambda!197847)))

(assert (=> b!4647304 true))

(declare-fun lambda!197849 () Int)

(declare-fun lt!1811684 () ListMap!4521)

(assert (=> bs!1038937 (= (= lt!1811684 lt!1811654) (= lambda!197849 lambda!197846))))

(assert (=> b!4647304 (= (= lt!1811684 (ListMap!4522 Nil!51856)) (= lambda!197849 lambda!197848))))

(assert (=> bs!1038938 (= (= lt!1811684 lt!1811663) (= lambda!197849 lambda!197845))))

(assert (=> bs!1038939 (not (= lambda!197849 lambda!197748))))

(assert (=> bs!1038938 (= (= lt!1811684 (ListMap!4522 Nil!51856)) (= lambda!197849 lambda!197844))))

(assert (=> bs!1038940 (= (= lt!1811684 lt!1811639) (= lambda!197849 lambda!197841))))

(assert (=> bs!1038941 (= (= lt!1811684 (ListMap!4522 Nil!51856)) (= lambda!197849 lambda!197843))))

(assert (=> bs!1038942 (not (= lambda!197849 lambda!197743))))

(assert (=> bs!1038943 (= (= lt!1811684 lt!1811609) (= lambda!197849 lambda!197838))))

(assert (=> bs!1038944 (= (= lt!1811684 (ListMap!4522 Nil!51856)) (= lambda!197849 lambda!197836))))

(assert (=> bs!1038945 (= (= lt!1811684 lt!1811630) (= lambda!197849 lambda!197842))))

(assert (=> bs!1038944 (= (= lt!1811684 lt!1811618) (= lambda!197849 lambda!197837))))

(assert (=> bs!1038946 (= (= lt!1811684 (ListMap!4522 Nil!51856)) (= lambda!197849 lambda!197835))))

(assert (=> bs!1038947 (= (= lt!1811684 (ListMap!4522 Nil!51856)) (= lambda!197849 lambda!197839))))

(assert (=> bs!1038940 (= (= lt!1811684 (ListMap!4522 Nil!51856)) (= lambda!197849 lambda!197840))))

(assert (=> bs!1038948 (= (= lt!1811684 (ListMap!4522 Nil!51856)) (= lambda!197849 lambda!197847))))

(assert (=> b!4647304 true))

(declare-fun bs!1038949 () Bool)

(declare-fun d!1465817 () Bool)

(assert (= bs!1038949 (and d!1465817 d!1465815)))

(declare-fun lt!1811675 () ListMap!4521)

(declare-fun lambda!197850 () Int)

(assert (=> bs!1038949 (= (= lt!1811675 lt!1811654) (= lambda!197850 lambda!197846))))

(declare-fun bs!1038950 () Bool)

(assert (= bs!1038950 (and d!1465817 b!4647304)))

(assert (=> bs!1038950 (= (= lt!1811675 (ListMap!4522 Nil!51856)) (= lambda!197850 lambda!197848))))

(declare-fun bs!1038951 () Bool)

(assert (= bs!1038951 (and d!1465817 b!4647299)))

(assert (=> bs!1038951 (= (= lt!1811675 lt!1811663) (= lambda!197850 lambda!197845))))

(assert (=> bs!1038950 (= (= lt!1811675 lt!1811684) (= lambda!197850 lambda!197849))))

(declare-fun bs!1038952 () Bool)

(assert (= bs!1038952 (and d!1465817 d!1465743)))

(assert (=> bs!1038952 (not (= lambda!197850 lambda!197748))))

(assert (=> bs!1038951 (= (= lt!1811675 (ListMap!4522 Nil!51856)) (= lambda!197850 lambda!197844))))

(declare-fun bs!1038953 () Bool)

(assert (= bs!1038953 (and d!1465817 b!4647288)))

(assert (=> bs!1038953 (= (= lt!1811675 lt!1811639) (= lambda!197850 lambda!197841))))

(declare-fun bs!1038954 () Bool)

(assert (= bs!1038954 (and d!1465817 b!4647298)))

(assert (=> bs!1038954 (= (= lt!1811675 (ListMap!4522 Nil!51856)) (= lambda!197850 lambda!197843))))

(declare-fun bs!1038955 () Bool)

(assert (= bs!1038955 (and d!1465817 d!1465729)))

(assert (=> bs!1038955 (not (= lambda!197850 lambda!197743))))

(declare-fun bs!1038956 () Bool)

(assert (= bs!1038956 (and d!1465817 d!1465751)))

(assert (=> bs!1038956 (= (= lt!1811675 lt!1811609) (= lambda!197850 lambda!197838))))

(declare-fun bs!1038957 () Bool)

(assert (= bs!1038957 (and d!1465817 b!4647281)))

(assert (=> bs!1038957 (= (= lt!1811675 (ListMap!4522 Nil!51856)) (= lambda!197850 lambda!197836))))

(declare-fun bs!1038958 () Bool)

(assert (= bs!1038958 (and d!1465817 d!1465807)))

(assert (=> bs!1038958 (= (= lt!1811675 lt!1811630) (= lambda!197850 lambda!197842))))

(assert (=> bs!1038957 (= (= lt!1811675 lt!1811618) (= lambda!197850 lambda!197837))))

(declare-fun bs!1038959 () Bool)

(assert (= bs!1038959 (and d!1465817 b!4647280)))

(assert (=> bs!1038959 (= (= lt!1811675 (ListMap!4522 Nil!51856)) (= lambda!197850 lambda!197835))))

(declare-fun bs!1038960 () Bool)

(assert (= bs!1038960 (and d!1465817 b!4647287)))

(assert (=> bs!1038960 (= (= lt!1811675 (ListMap!4522 Nil!51856)) (= lambda!197850 lambda!197839))))

(assert (=> bs!1038953 (= (= lt!1811675 (ListMap!4522 Nil!51856)) (= lambda!197850 lambda!197840))))

(declare-fun bs!1038961 () Bool)

(assert (= bs!1038961 (and d!1465817 b!4647303)))

(assert (=> bs!1038961 (= (= lt!1811675 (ListMap!4522 Nil!51856)) (= lambda!197850 lambda!197847))))

(assert (=> d!1465817 true))

(declare-fun b!4647302 () Bool)

(declare-fun e!2899084 () Bool)

(assert (=> b!4647302 (= e!2899084 (invariantList!1286 (toList!5184 lt!1811675)))))

(declare-fun e!2899083 () ListMap!4521)

(assert (=> b!4647303 (= e!2899083 (ListMap!4522 Nil!51856))))

(declare-fun lt!1811682 () Unit!116622)

(declare-fun call!324575 () Unit!116622)

(assert (=> b!4647303 (= lt!1811682 call!324575)))

(declare-fun call!324577 () Bool)

(assert (=> b!4647303 call!324577))

(declare-fun lt!1811683 () Unit!116622)

(assert (=> b!4647303 (= lt!1811683 lt!1811682)))

(declare-fun call!324576 () Bool)

(assert (=> b!4647303 call!324576))

(declare-fun lt!1811670 () Unit!116622)

(declare-fun Unit!116707 () Unit!116622)

(assert (=> b!4647303 (= lt!1811670 Unit!116707)))

(assert (=> b!4647304 (= e!2899083 lt!1811684)))

(declare-fun lt!1811685 () ListMap!4521)

(assert (=> b!4647304 (= lt!1811685 (+!1970 (ListMap!4522 Nil!51856) (h!57988 lt!1811335)))))

(assert (=> b!4647304 (= lt!1811684 (addToMapMapFromBucket!1083 (t!359080 lt!1811335) (+!1970 (ListMap!4522 Nil!51856) (h!57988 lt!1811335))))))

(declare-fun lt!1811678 () Unit!116622)

(assert (=> b!4647304 (= lt!1811678 call!324575)))

(assert (=> b!4647304 call!324576))

(declare-fun lt!1811680 () Unit!116622)

(assert (=> b!4647304 (= lt!1811680 lt!1811678)))

(assert (=> b!4647304 (forall!10994 (toList!5184 lt!1811685) lambda!197849)))

(declare-fun lt!1811666 () Unit!116622)

(declare-fun Unit!116712 () Unit!116622)

(assert (=> b!4647304 (= lt!1811666 Unit!116712)))

(assert (=> b!4647304 (forall!10994 (t!359080 lt!1811335) lambda!197849)))

(declare-fun lt!1811667 () Unit!116622)

(declare-fun Unit!116714 () Unit!116622)

(assert (=> b!4647304 (= lt!1811667 Unit!116714)))

(declare-fun lt!1811673 () Unit!116622)

(declare-fun Unit!116715 () Unit!116622)

(assert (=> b!4647304 (= lt!1811673 Unit!116715)))

(declare-fun lt!1811676 () Unit!116622)

(assert (=> b!4647304 (= lt!1811676 (forallContained!3206 (toList!5184 lt!1811685) lambda!197849 (h!57988 lt!1811335)))))

(assert (=> b!4647304 (contains!14997 lt!1811685 (_1!29769 (h!57988 lt!1811335)))))

(declare-fun lt!1811679 () Unit!116622)

(declare-fun Unit!116717 () Unit!116622)

(assert (=> b!4647304 (= lt!1811679 Unit!116717)))

(assert (=> b!4647304 (contains!14997 lt!1811684 (_1!29769 (h!57988 lt!1811335)))))

(declare-fun lt!1811674 () Unit!116622)

(declare-fun Unit!116718 () Unit!116622)

(assert (=> b!4647304 (= lt!1811674 Unit!116718)))

(assert (=> b!4647304 (forall!10994 lt!1811335 lambda!197849)))

(declare-fun lt!1811668 () Unit!116622)

(declare-fun Unit!116720 () Unit!116622)

(assert (=> b!4647304 (= lt!1811668 Unit!116720)))

(assert (=> b!4647304 (forall!10994 (toList!5184 lt!1811685) lambda!197849)))

(declare-fun lt!1811669 () Unit!116622)

(declare-fun Unit!116721 () Unit!116622)

(assert (=> b!4647304 (= lt!1811669 Unit!116721)))

(declare-fun lt!1811677 () Unit!116622)

(declare-fun Unit!116722 () Unit!116622)

(assert (=> b!4647304 (= lt!1811677 Unit!116722)))

(declare-fun lt!1811681 () Unit!116622)

(assert (=> b!4647304 (= lt!1811681 (addForallContainsKeyThenBeforeAdding!585 (ListMap!4522 Nil!51856) lt!1811684 (_1!29769 (h!57988 lt!1811335)) (_2!29769 (h!57988 lt!1811335))))))

(assert (=> b!4647304 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197849)))

(declare-fun lt!1811686 () Unit!116622)

(assert (=> b!4647304 (= lt!1811686 lt!1811681)))

(assert (=> b!4647304 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197849)))

(declare-fun lt!1811671 () Unit!116622)

(declare-fun Unit!116723 () Unit!116622)

(assert (=> b!4647304 (= lt!1811671 Unit!116723)))

(declare-fun res!1952770 () Bool)

(assert (=> b!4647304 (= res!1952770 call!324577)))

(declare-fun e!2899085 () Bool)

(assert (=> b!4647304 (=> (not res!1952770) (not e!2899085))))

(assert (=> b!4647304 e!2899085))

(declare-fun lt!1811672 () Unit!116622)

(declare-fun Unit!116724 () Unit!116622)

(assert (=> b!4647304 (= lt!1811672 Unit!116724)))

(declare-fun c!795230 () Bool)

(declare-fun bm!324570 () Bool)

(assert (=> bm!324570 (= call!324577 (forall!10994 (ite c!795230 (toList!5184 (ListMap!4522 Nil!51856)) lt!1811335) (ite c!795230 lambda!197847 lambda!197849)))))

(declare-fun bm!324571 () Bool)

(assert (=> bm!324571 (= call!324575 (lemmaContainsAllItsOwnKeys!586 (ListMap!4522 Nil!51856)))))

(assert (=> d!1465817 e!2899084))

(declare-fun res!1952771 () Bool)

(assert (=> d!1465817 (=> (not res!1952771) (not e!2899084))))

(assert (=> d!1465817 (= res!1952771 (forall!10994 lt!1811335 lambda!197850))))

(assert (=> d!1465817 (= lt!1811675 e!2899083)))

(assert (=> d!1465817 (= c!795230 ((_ is Nil!51856) lt!1811335))))

(assert (=> d!1465817 (noDuplicateKeys!1626 lt!1811335)))

(assert (=> d!1465817 (= (addToMapMapFromBucket!1083 lt!1811335 (ListMap!4522 Nil!51856)) lt!1811675)))

(declare-fun b!4647305 () Bool)

(declare-fun res!1952772 () Bool)

(assert (=> b!4647305 (=> (not res!1952772) (not e!2899084))))

(assert (=> b!4647305 (= res!1952772 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197850))))

(declare-fun b!4647306 () Bool)

(assert (=> b!4647306 (= e!2899085 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) lambda!197849))))

(declare-fun bm!324572 () Bool)

(assert (=> bm!324572 (= call!324576 (forall!10994 (toList!5184 (ListMap!4522 Nil!51856)) (ite c!795230 lambda!197847 lambda!197848)))))

(assert (= (and d!1465817 c!795230) b!4647303))

(assert (= (and d!1465817 (not c!795230)) b!4647304))

(assert (= (and b!4647304 res!1952770) b!4647306))

(assert (= (or b!4647303 b!4647304) bm!324571))

(assert (= (or b!4647303 b!4647304) bm!324572))

(assert (= (or b!4647303 b!4647304) bm!324570))

(assert (= (and d!1465817 res!1952771) b!4647305))

(assert (= (and b!4647305 res!1952772) b!4647302))

(declare-fun m!5514303 () Bool)

(assert (=> b!4647306 m!5514303))

(assert (=> b!4647304 m!5514303))

(declare-fun m!5514305 () Bool)

(assert (=> b!4647304 m!5514305))

(declare-fun m!5514307 () Bool)

(assert (=> b!4647304 m!5514307))

(declare-fun m!5514309 () Bool)

(assert (=> b!4647304 m!5514309))

(declare-fun m!5514311 () Bool)

(assert (=> b!4647304 m!5514311))

(assert (=> b!4647304 m!5514303))

(declare-fun m!5514313 () Bool)

(assert (=> b!4647304 m!5514313))

(declare-fun m!5514315 () Bool)

(assert (=> b!4647304 m!5514315))

(declare-fun m!5514317 () Bool)

(assert (=> b!4647304 m!5514317))

(declare-fun m!5514319 () Bool)

(assert (=> b!4647304 m!5514319))

(declare-fun m!5514321 () Bool)

(assert (=> b!4647304 m!5514321))

(assert (=> b!4647304 m!5514313))

(assert (=> b!4647304 m!5514307))

(declare-fun m!5514323 () Bool)

(assert (=> d!1465817 m!5514323))

(assert (=> d!1465817 m!5514263))

(assert (=> bm!324571 m!5514213))

(declare-fun m!5514325 () Bool)

(assert (=> bm!324570 m!5514325))

(declare-fun m!5514327 () Bool)

(assert (=> b!4647305 m!5514327))

(declare-fun m!5514329 () Bool)

(assert (=> bm!324572 m!5514329))

(declare-fun m!5514331 () Bool)

(assert (=> b!4647302 m!5514331))

(assert (=> b!4647089 d!1465817))

(declare-fun d!1465819 () Bool)

(declare-fun res!1952777 () Bool)

(declare-fun e!2899090 () Bool)

(assert (=> d!1465819 (=> res!1952777 e!2899090)))

(assert (=> d!1465819 (= res!1952777 ((_ is Nil!51857) lt!1811334))))

(assert (=> d!1465819 (= (forall!10992 lt!1811334 lambda!197740) e!2899090)))

(declare-fun b!4647311 () Bool)

(declare-fun e!2899091 () Bool)

(assert (=> b!4647311 (= e!2899090 e!2899091)))

(declare-fun res!1952778 () Bool)

(assert (=> b!4647311 (=> (not res!1952778) (not e!2899091))))

(declare-fun dynLambda!21564 (Int tuple2!52952) Bool)

(assert (=> b!4647311 (= res!1952778 (dynLambda!21564 lambda!197740 (h!57989 lt!1811334)))))

(declare-fun b!4647312 () Bool)

(assert (=> b!4647312 (= e!2899091 (forall!10992 (t!359081 lt!1811334) lambda!197740))))

(assert (= (and d!1465819 (not res!1952777)) b!4647311))

(assert (= (and b!4647311 res!1952778) b!4647312))

(declare-fun b_lambda!171509 () Bool)

(assert (=> (not b_lambda!171509) (not b!4647311)))

(declare-fun m!5514333 () Bool)

(assert (=> b!4647311 m!5514333))

(declare-fun m!5514335 () Bool)

(assert (=> b!4647312 m!5514335))

(assert (=> b!4647090 d!1465819))

(declare-fun bs!1038962 () Bool)

(declare-fun b!4647314 () Bool)

(assert (= bs!1038962 (and b!4647314 d!1465815)))

(declare-fun lambda!197851 () Int)

(assert (=> bs!1038962 (= (= lt!1811332 lt!1811654) (= lambda!197851 lambda!197846))))

(declare-fun bs!1038963 () Bool)

(assert (= bs!1038963 (and b!4647314 b!4647304)))

(assert (=> bs!1038963 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197851 lambda!197848))))

(declare-fun bs!1038964 () Bool)

(assert (= bs!1038964 (and b!4647314 b!4647299)))

(assert (=> bs!1038964 (= (= lt!1811332 lt!1811663) (= lambda!197851 lambda!197845))))

(assert (=> bs!1038963 (= (= lt!1811332 lt!1811684) (= lambda!197851 lambda!197849))))

(declare-fun bs!1038965 () Bool)

(assert (= bs!1038965 (and b!4647314 d!1465743)))

(assert (=> bs!1038965 (not (= lambda!197851 lambda!197748))))

(assert (=> bs!1038964 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197851 lambda!197844))))

(declare-fun bs!1038966 () Bool)

(assert (= bs!1038966 (and b!4647314 b!4647288)))

(assert (=> bs!1038966 (= (= lt!1811332 lt!1811639) (= lambda!197851 lambda!197841))))

(declare-fun bs!1038967 () Bool)

(assert (= bs!1038967 (and b!4647314 b!4647298)))

(assert (=> bs!1038967 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197851 lambda!197843))))

(declare-fun bs!1038968 () Bool)

(assert (= bs!1038968 (and b!4647314 d!1465729)))

(assert (=> bs!1038968 (not (= lambda!197851 lambda!197743))))

(declare-fun bs!1038969 () Bool)

(assert (= bs!1038969 (and b!4647314 d!1465751)))

(assert (=> bs!1038969 (= (= lt!1811332 lt!1811609) (= lambda!197851 lambda!197838))))

(declare-fun bs!1038970 () Bool)

(assert (= bs!1038970 (and b!4647314 b!4647281)))

(assert (=> bs!1038970 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197851 lambda!197836))))

(declare-fun bs!1038971 () Bool)

(assert (= bs!1038971 (and b!4647314 d!1465807)))

(assert (=> bs!1038971 (= (= lt!1811332 lt!1811630) (= lambda!197851 lambda!197842))))

(assert (=> bs!1038970 (= (= lt!1811332 lt!1811618) (= lambda!197851 lambda!197837))))

(declare-fun bs!1038972 () Bool)

(assert (= bs!1038972 (and b!4647314 b!4647280)))

(assert (=> bs!1038972 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197851 lambda!197835))))

(declare-fun bs!1038973 () Bool)

(assert (= bs!1038973 (and b!4647314 d!1465817)))

(assert (=> bs!1038973 (= (= lt!1811332 lt!1811675) (= lambda!197851 lambda!197850))))

(declare-fun bs!1038974 () Bool)

(assert (= bs!1038974 (and b!4647314 b!4647287)))

(assert (=> bs!1038974 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197851 lambda!197839))))

(assert (=> bs!1038966 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197851 lambda!197840))))

(declare-fun bs!1038975 () Bool)

(assert (= bs!1038975 (and b!4647314 b!4647303)))

(assert (=> bs!1038975 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197851 lambda!197847))))

(assert (=> b!4647314 true))

(declare-fun bs!1038976 () Bool)

(declare-fun b!4647315 () Bool)

(assert (= bs!1038976 (and b!4647315 d!1465815)))

(declare-fun lambda!197852 () Int)

(assert (=> bs!1038976 (= (= lt!1811332 lt!1811654) (= lambda!197852 lambda!197846))))

(declare-fun bs!1038977 () Bool)

(assert (= bs!1038977 (and b!4647315 b!4647299)))

(assert (=> bs!1038977 (= (= lt!1811332 lt!1811663) (= lambda!197852 lambda!197845))))

(declare-fun bs!1038978 () Bool)

(assert (= bs!1038978 (and b!4647315 b!4647304)))

(assert (=> bs!1038978 (= (= lt!1811332 lt!1811684) (= lambda!197852 lambda!197849))))

(declare-fun bs!1038979 () Bool)

(assert (= bs!1038979 (and b!4647315 d!1465743)))

(assert (=> bs!1038979 (not (= lambda!197852 lambda!197748))))

(assert (=> bs!1038977 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197852 lambda!197844))))

(declare-fun bs!1038980 () Bool)

(assert (= bs!1038980 (and b!4647315 b!4647288)))

(assert (=> bs!1038980 (= (= lt!1811332 lt!1811639) (= lambda!197852 lambda!197841))))

(declare-fun bs!1038981 () Bool)

(assert (= bs!1038981 (and b!4647315 b!4647298)))

(assert (=> bs!1038981 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197852 lambda!197843))))

(declare-fun bs!1038982 () Bool)

(assert (= bs!1038982 (and b!4647315 d!1465729)))

(assert (=> bs!1038982 (not (= lambda!197852 lambda!197743))))

(declare-fun bs!1038983 () Bool)

(assert (= bs!1038983 (and b!4647315 d!1465751)))

(assert (=> bs!1038983 (= (= lt!1811332 lt!1811609) (= lambda!197852 lambda!197838))))

(declare-fun bs!1038984 () Bool)

(assert (= bs!1038984 (and b!4647315 b!4647281)))

(assert (=> bs!1038984 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197852 lambda!197836))))

(declare-fun bs!1038985 () Bool)

(assert (= bs!1038985 (and b!4647315 d!1465807)))

(assert (=> bs!1038985 (= (= lt!1811332 lt!1811630) (= lambda!197852 lambda!197842))))

(declare-fun bs!1038986 () Bool)

(assert (= bs!1038986 (and b!4647315 b!4647314)))

(assert (=> bs!1038986 (= lambda!197852 lambda!197851)))

(assert (=> bs!1038978 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197852 lambda!197848))))

(assert (=> bs!1038984 (= (= lt!1811332 lt!1811618) (= lambda!197852 lambda!197837))))

(declare-fun bs!1038987 () Bool)

(assert (= bs!1038987 (and b!4647315 b!4647280)))

(assert (=> bs!1038987 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197852 lambda!197835))))

(declare-fun bs!1038988 () Bool)

(assert (= bs!1038988 (and b!4647315 d!1465817)))

(assert (=> bs!1038988 (= (= lt!1811332 lt!1811675) (= lambda!197852 lambda!197850))))

(declare-fun bs!1038989 () Bool)

(assert (= bs!1038989 (and b!4647315 b!4647287)))

(assert (=> bs!1038989 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197852 lambda!197839))))

(assert (=> bs!1038980 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197852 lambda!197840))))

(declare-fun bs!1038990 () Bool)

(assert (= bs!1038990 (and b!4647315 b!4647303)))

(assert (=> bs!1038990 (= (= lt!1811332 (ListMap!4522 Nil!51856)) (= lambda!197852 lambda!197847))))

(assert (=> b!4647315 true))

(declare-fun lambda!197853 () Int)

(declare-fun lt!1811705 () ListMap!4521)

(assert (=> bs!1038976 (= (= lt!1811705 lt!1811654) (= lambda!197853 lambda!197846))))

(assert (=> bs!1038977 (= (= lt!1811705 lt!1811663) (= lambda!197853 lambda!197845))))

(assert (=> bs!1038979 (not (= lambda!197853 lambda!197748))))

(assert (=> bs!1038977 (= (= lt!1811705 (ListMap!4522 Nil!51856)) (= lambda!197853 lambda!197844))))

(assert (=> bs!1038980 (= (= lt!1811705 lt!1811639) (= lambda!197853 lambda!197841))))

(assert (=> bs!1038981 (= (= lt!1811705 (ListMap!4522 Nil!51856)) (= lambda!197853 lambda!197843))))

(assert (=> bs!1038982 (not (= lambda!197853 lambda!197743))))

(assert (=> bs!1038983 (= (= lt!1811705 lt!1811609) (= lambda!197853 lambda!197838))))

(assert (=> bs!1038984 (= (= lt!1811705 (ListMap!4522 Nil!51856)) (= lambda!197853 lambda!197836))))

(assert (=> bs!1038985 (= (= lt!1811705 lt!1811630) (= lambda!197853 lambda!197842))))

(assert (=> bs!1038986 (= (= lt!1811705 lt!1811332) (= lambda!197853 lambda!197851))))

(assert (=> bs!1038978 (= (= lt!1811705 (ListMap!4522 Nil!51856)) (= lambda!197853 lambda!197848))))

(assert (=> bs!1038978 (= (= lt!1811705 lt!1811684) (= lambda!197853 lambda!197849))))

(assert (=> b!4647315 (= (= lt!1811705 lt!1811332) (= lambda!197853 lambda!197852))))

(assert (=> bs!1038984 (= (= lt!1811705 lt!1811618) (= lambda!197853 lambda!197837))))

(assert (=> bs!1038987 (= (= lt!1811705 (ListMap!4522 Nil!51856)) (= lambda!197853 lambda!197835))))

(assert (=> bs!1038988 (= (= lt!1811705 lt!1811675) (= lambda!197853 lambda!197850))))

(assert (=> bs!1038989 (= (= lt!1811705 (ListMap!4522 Nil!51856)) (= lambda!197853 lambda!197839))))

(assert (=> bs!1038980 (= (= lt!1811705 (ListMap!4522 Nil!51856)) (= lambda!197853 lambda!197840))))

(assert (=> bs!1038990 (= (= lt!1811705 (ListMap!4522 Nil!51856)) (= lambda!197853 lambda!197847))))

(assert (=> b!4647315 true))

(declare-fun bs!1038991 () Bool)

(declare-fun d!1465821 () Bool)

(assert (= bs!1038991 (and d!1465821 b!4647315)))

(declare-fun lt!1811696 () ListMap!4521)

(declare-fun lambda!197854 () Int)

(assert (=> bs!1038991 (= (= lt!1811696 lt!1811705) (= lambda!197854 lambda!197853))))

(declare-fun bs!1038992 () Bool)

(assert (= bs!1038992 (and d!1465821 d!1465815)))

(assert (=> bs!1038992 (= (= lt!1811696 lt!1811654) (= lambda!197854 lambda!197846))))

(declare-fun bs!1038993 () Bool)

(assert (= bs!1038993 (and d!1465821 b!4647299)))

(assert (=> bs!1038993 (= (= lt!1811696 lt!1811663) (= lambda!197854 lambda!197845))))

(declare-fun bs!1038994 () Bool)

(assert (= bs!1038994 (and d!1465821 d!1465743)))

(assert (=> bs!1038994 (not (= lambda!197854 lambda!197748))))

(assert (=> bs!1038993 (= (= lt!1811696 (ListMap!4522 Nil!51856)) (= lambda!197854 lambda!197844))))

(declare-fun bs!1038995 () Bool)

(assert (= bs!1038995 (and d!1465821 b!4647288)))

(assert (=> bs!1038995 (= (= lt!1811696 lt!1811639) (= lambda!197854 lambda!197841))))

(declare-fun bs!1038996 () Bool)

(assert (= bs!1038996 (and d!1465821 b!4647298)))

(assert (=> bs!1038996 (= (= lt!1811696 (ListMap!4522 Nil!51856)) (= lambda!197854 lambda!197843))))

(declare-fun bs!1038997 () Bool)

(assert (= bs!1038997 (and d!1465821 d!1465729)))

(assert (=> bs!1038997 (not (= lambda!197854 lambda!197743))))

(declare-fun bs!1038998 () Bool)

(assert (= bs!1038998 (and d!1465821 d!1465751)))

(assert (=> bs!1038998 (= (= lt!1811696 lt!1811609) (= lambda!197854 lambda!197838))))

(declare-fun bs!1038999 () Bool)

(assert (= bs!1038999 (and d!1465821 b!4647281)))

(assert (=> bs!1038999 (= (= lt!1811696 (ListMap!4522 Nil!51856)) (= lambda!197854 lambda!197836))))

(declare-fun bs!1039000 () Bool)

(assert (= bs!1039000 (and d!1465821 d!1465807)))

(assert (=> bs!1039000 (= (= lt!1811696 lt!1811630) (= lambda!197854 lambda!197842))))

(declare-fun bs!1039001 () Bool)

(assert (= bs!1039001 (and d!1465821 b!4647314)))

(assert (=> bs!1039001 (= (= lt!1811696 lt!1811332) (= lambda!197854 lambda!197851))))

(declare-fun bs!1039002 () Bool)

(assert (= bs!1039002 (and d!1465821 b!4647304)))

(assert (=> bs!1039002 (= (= lt!1811696 (ListMap!4522 Nil!51856)) (= lambda!197854 lambda!197848))))

(assert (=> bs!1039002 (= (= lt!1811696 lt!1811684) (= lambda!197854 lambda!197849))))

(assert (=> bs!1038991 (= (= lt!1811696 lt!1811332) (= lambda!197854 lambda!197852))))

(assert (=> bs!1038999 (= (= lt!1811696 lt!1811618) (= lambda!197854 lambda!197837))))

(declare-fun bs!1039003 () Bool)

(assert (= bs!1039003 (and d!1465821 b!4647280)))

(assert (=> bs!1039003 (= (= lt!1811696 (ListMap!4522 Nil!51856)) (= lambda!197854 lambda!197835))))

(declare-fun bs!1039004 () Bool)

(assert (= bs!1039004 (and d!1465821 d!1465817)))

(assert (=> bs!1039004 (= (= lt!1811696 lt!1811675) (= lambda!197854 lambda!197850))))

(declare-fun bs!1039005 () Bool)

(assert (= bs!1039005 (and d!1465821 b!4647287)))

(assert (=> bs!1039005 (= (= lt!1811696 (ListMap!4522 Nil!51856)) (= lambda!197854 lambda!197839))))

(assert (=> bs!1038995 (= (= lt!1811696 (ListMap!4522 Nil!51856)) (= lambda!197854 lambda!197840))))

(declare-fun bs!1039006 () Bool)

(assert (= bs!1039006 (and d!1465821 b!4647303)))

(assert (=> bs!1039006 (= (= lt!1811696 (ListMap!4522 Nil!51856)) (= lambda!197854 lambda!197847))))

(assert (=> d!1465821 true))

(declare-fun b!4647313 () Bool)

(declare-fun e!2899093 () Bool)

(assert (=> b!4647313 (= e!2899093 (invariantList!1286 (toList!5184 lt!1811696)))))

(declare-fun e!2899092 () ListMap!4521)

(assert (=> b!4647314 (= e!2899092 lt!1811332)))

(declare-fun lt!1811703 () Unit!116622)

(declare-fun call!324578 () Unit!116622)

(assert (=> b!4647314 (= lt!1811703 call!324578)))

(declare-fun call!324580 () Bool)

(assert (=> b!4647314 call!324580))

(declare-fun lt!1811704 () Unit!116622)

(assert (=> b!4647314 (= lt!1811704 lt!1811703)))

(declare-fun call!324579 () Bool)

(assert (=> b!4647314 call!324579))

(declare-fun lt!1811691 () Unit!116622)

(declare-fun Unit!116725 () Unit!116622)

(assert (=> b!4647314 (= lt!1811691 Unit!116725)))

(assert (=> b!4647315 (= e!2899092 lt!1811705)))

(declare-fun lt!1811706 () ListMap!4521)

(assert (=> b!4647315 (= lt!1811706 (+!1970 lt!1811332 (h!57988 oldBucket!40)))))

(assert (=> b!4647315 (= lt!1811705 (addToMapMapFromBucket!1083 (t!359080 oldBucket!40) (+!1970 lt!1811332 (h!57988 oldBucket!40))))))

(declare-fun lt!1811699 () Unit!116622)

(assert (=> b!4647315 (= lt!1811699 call!324578)))

(assert (=> b!4647315 call!324579))

(declare-fun lt!1811701 () Unit!116622)

(assert (=> b!4647315 (= lt!1811701 lt!1811699)))

(assert (=> b!4647315 (forall!10994 (toList!5184 lt!1811706) lambda!197853)))

(declare-fun lt!1811687 () Unit!116622)

(declare-fun Unit!116726 () Unit!116622)

(assert (=> b!4647315 (= lt!1811687 Unit!116726)))

(assert (=> b!4647315 (forall!10994 (t!359080 oldBucket!40) lambda!197853)))

(declare-fun lt!1811688 () Unit!116622)

(declare-fun Unit!116727 () Unit!116622)

(assert (=> b!4647315 (= lt!1811688 Unit!116727)))

(declare-fun lt!1811694 () Unit!116622)

(declare-fun Unit!116728 () Unit!116622)

(assert (=> b!4647315 (= lt!1811694 Unit!116728)))

(declare-fun lt!1811697 () Unit!116622)

(assert (=> b!4647315 (= lt!1811697 (forallContained!3206 (toList!5184 lt!1811706) lambda!197853 (h!57988 oldBucket!40)))))

(assert (=> b!4647315 (contains!14997 lt!1811706 (_1!29769 (h!57988 oldBucket!40)))))

(declare-fun lt!1811700 () Unit!116622)

(declare-fun Unit!116729 () Unit!116622)

(assert (=> b!4647315 (= lt!1811700 Unit!116729)))

(assert (=> b!4647315 (contains!14997 lt!1811705 (_1!29769 (h!57988 oldBucket!40)))))

(declare-fun lt!1811695 () Unit!116622)

(declare-fun Unit!116730 () Unit!116622)

(assert (=> b!4647315 (= lt!1811695 Unit!116730)))

(assert (=> b!4647315 (forall!10994 oldBucket!40 lambda!197853)))

(declare-fun lt!1811689 () Unit!116622)

(declare-fun Unit!116731 () Unit!116622)

(assert (=> b!4647315 (= lt!1811689 Unit!116731)))

(assert (=> b!4647315 (forall!10994 (toList!5184 lt!1811706) lambda!197853)))

(declare-fun lt!1811690 () Unit!116622)

(declare-fun Unit!116732 () Unit!116622)

(assert (=> b!4647315 (= lt!1811690 Unit!116732)))

(declare-fun lt!1811698 () Unit!116622)

(declare-fun Unit!116733 () Unit!116622)

(assert (=> b!4647315 (= lt!1811698 Unit!116733)))

(declare-fun lt!1811702 () Unit!116622)

(assert (=> b!4647315 (= lt!1811702 (addForallContainsKeyThenBeforeAdding!585 lt!1811332 lt!1811705 (_1!29769 (h!57988 oldBucket!40)) (_2!29769 (h!57988 oldBucket!40))))))

(assert (=> b!4647315 (forall!10994 (toList!5184 lt!1811332) lambda!197853)))

(declare-fun lt!1811707 () Unit!116622)

(assert (=> b!4647315 (= lt!1811707 lt!1811702)))

(assert (=> b!4647315 (forall!10994 (toList!5184 lt!1811332) lambda!197853)))

(declare-fun lt!1811692 () Unit!116622)

(declare-fun Unit!116734 () Unit!116622)

(assert (=> b!4647315 (= lt!1811692 Unit!116734)))

(declare-fun res!1952779 () Bool)

(assert (=> b!4647315 (= res!1952779 call!324580)))

(declare-fun e!2899094 () Bool)

(assert (=> b!4647315 (=> (not res!1952779) (not e!2899094))))

(assert (=> b!4647315 e!2899094))

(declare-fun lt!1811693 () Unit!116622)

(declare-fun Unit!116735 () Unit!116622)

(assert (=> b!4647315 (= lt!1811693 Unit!116735)))

(declare-fun c!795231 () Bool)

(declare-fun bm!324573 () Bool)

(assert (=> bm!324573 (= call!324580 (forall!10994 (ite c!795231 (toList!5184 lt!1811332) oldBucket!40) (ite c!795231 lambda!197851 lambda!197853)))))

(declare-fun bm!324574 () Bool)

(assert (=> bm!324574 (= call!324578 (lemmaContainsAllItsOwnKeys!586 lt!1811332))))

(assert (=> d!1465821 e!2899093))

(declare-fun res!1952780 () Bool)

(assert (=> d!1465821 (=> (not res!1952780) (not e!2899093))))

(assert (=> d!1465821 (= res!1952780 (forall!10994 oldBucket!40 lambda!197854))))

(assert (=> d!1465821 (= lt!1811696 e!2899092)))

(assert (=> d!1465821 (= c!795231 ((_ is Nil!51856) oldBucket!40))))

(assert (=> d!1465821 (noDuplicateKeys!1626 oldBucket!40)))

(assert (=> d!1465821 (= (addToMapMapFromBucket!1083 oldBucket!40 lt!1811332) lt!1811696)))

(declare-fun b!4647316 () Bool)

(declare-fun res!1952781 () Bool)

(assert (=> b!4647316 (=> (not res!1952781) (not e!2899093))))

(assert (=> b!4647316 (= res!1952781 (forall!10994 (toList!5184 lt!1811332) lambda!197854))))

(declare-fun b!4647317 () Bool)

(assert (=> b!4647317 (= e!2899094 (forall!10994 (toList!5184 lt!1811332) lambda!197853))))

(declare-fun bm!324575 () Bool)

(assert (=> bm!324575 (= call!324579 (forall!10994 (toList!5184 lt!1811332) (ite c!795231 lambda!197851 lambda!197852)))))

(assert (= (and d!1465821 c!795231) b!4647314))

(assert (= (and d!1465821 (not c!795231)) b!4647315))

(assert (= (and b!4647315 res!1952779) b!4647317))

(assert (= (or b!4647314 b!4647315) bm!324574))

(assert (= (or b!4647314 b!4647315) bm!324575))

(assert (= (or b!4647314 b!4647315) bm!324573))

(assert (= (and d!1465821 res!1952780) b!4647316))

(assert (= (and b!4647316 res!1952781) b!4647313))

(declare-fun m!5514337 () Bool)

(assert (=> b!4647317 m!5514337))

(assert (=> b!4647315 m!5514337))

(declare-fun m!5514339 () Bool)

(assert (=> b!4647315 m!5514339))

(declare-fun m!5514341 () Bool)

(assert (=> b!4647315 m!5514341))

(declare-fun m!5514343 () Bool)

(assert (=> b!4647315 m!5514343))

(declare-fun m!5514345 () Bool)

(assert (=> b!4647315 m!5514345))

(assert (=> b!4647315 m!5514337))

(declare-fun m!5514347 () Bool)

(assert (=> b!4647315 m!5514347))

(declare-fun m!5514349 () Bool)

(assert (=> b!4647315 m!5514349))

(declare-fun m!5514351 () Bool)

(assert (=> b!4647315 m!5514351))

(declare-fun m!5514353 () Bool)

(assert (=> b!4647315 m!5514353))

(declare-fun m!5514355 () Bool)

(assert (=> b!4647315 m!5514355))

(assert (=> b!4647315 m!5514347))

(assert (=> b!4647315 m!5514341))

(declare-fun m!5514357 () Bool)

(assert (=> d!1465821 m!5514357))

(assert (=> d!1465821 m!5513837))

(declare-fun m!5514359 () Bool)

(assert (=> bm!324574 m!5514359))

(declare-fun m!5514361 () Bool)

(assert (=> bm!324573 m!5514361))

(declare-fun m!5514363 () Bool)

(assert (=> b!4647316 m!5514363))

(declare-fun m!5514365 () Bool)

(assert (=> bm!324575 m!5514365))

(declare-fun m!5514367 () Bool)

(assert (=> b!4647313 m!5514367))

(assert (=> b!4647101 d!1465821))

(declare-fun bs!1039007 () Bool)

(declare-fun d!1465823 () Bool)

(assert (= bs!1039007 (and d!1465823 b!4647090)))

(declare-fun lambda!197855 () Int)

(assert (=> bs!1039007 (= lambda!197855 lambda!197740)))

(declare-fun bs!1039008 () Bool)

(assert (= bs!1039008 (and d!1465823 d!1465739)))

(assert (=> bs!1039008 (= lambda!197855 lambda!197746)))

(declare-fun bs!1039009 () Bool)

(assert (= bs!1039009 (and d!1465823 d!1465741)))

(assert (=> bs!1039009 (= lambda!197855 lambda!197747)))

(declare-fun lt!1811708 () ListMap!4521)

(assert (=> d!1465823 (invariantList!1286 (toList!5184 lt!1811708))))

(declare-fun e!2899095 () ListMap!4521)

(assert (=> d!1465823 (= lt!1811708 e!2899095)))

(declare-fun c!795232 () Bool)

(assert (=> d!1465823 (= c!795232 ((_ is Cons!51857) Nil!51857))))

(assert (=> d!1465823 (forall!10992 Nil!51857 lambda!197855)))

(assert (=> d!1465823 (= (extractMap!1682 Nil!51857) lt!1811708)))

(declare-fun b!4647318 () Bool)

(assert (=> b!4647318 (= e!2899095 (addToMapMapFromBucket!1083 (_2!29770 (h!57989 Nil!51857)) (extractMap!1682 (t!359081 Nil!51857))))))

(declare-fun b!4647319 () Bool)

(assert (=> b!4647319 (= e!2899095 (ListMap!4522 Nil!51856))))

(assert (= (and d!1465823 c!795232) b!4647318))

(assert (= (and d!1465823 (not c!795232)) b!4647319))

(declare-fun m!5514369 () Bool)

(assert (=> d!1465823 m!5514369))

(declare-fun m!5514371 () Bool)

(assert (=> d!1465823 m!5514371))

(declare-fun m!5514373 () Bool)

(assert (=> b!4647318 m!5514373))

(assert (=> b!4647318 m!5514373))

(declare-fun m!5514375 () Bool)

(assert (=> b!4647318 m!5514375))

(assert (=> b!4647101 d!1465823))

(declare-fun b!4647338 () Bool)

(declare-datatypes ((List!51983 0))(
  ( (Nil!51859) (Cons!51859 (h!57993 K!13215) (t!359085 List!51983)) )
))
(declare-fun e!2899111 () List!51983)

(declare-fun keys!18356 (ListMap!4521) List!51983)

(assert (=> b!4647338 (= e!2899111 (keys!18356 lt!1811328))))

(declare-fun b!4647339 () Bool)

(declare-fun getKeysList!737 (List!51980) List!51983)

(assert (=> b!4647339 (= e!2899111 (getKeysList!737 (toList!5184 lt!1811328)))))

(declare-fun b!4647340 () Bool)

(declare-fun e!2899110 () Unit!116622)

(declare-fun e!2899112 () Unit!116622)

(assert (=> b!4647340 (= e!2899110 e!2899112)))

(declare-fun c!795239 () Bool)

(declare-fun call!324583 () Bool)

(assert (=> b!4647340 (= c!795239 call!324583)))

(declare-fun b!4647341 () Bool)

(declare-fun e!2899113 () Bool)

(declare-fun contains!15001 (List!51983 K!13215) Bool)

(assert (=> b!4647341 (= e!2899113 (not (contains!15001 (keys!18356 lt!1811328) key!4968)))))

(declare-fun bm!324578 () Bool)

(assert (=> bm!324578 (= call!324583 (contains!15001 e!2899111 key!4968))))

(declare-fun c!795240 () Bool)

(declare-fun c!795241 () Bool)

(assert (=> bm!324578 (= c!795240 c!795241)))

(declare-fun b!4647342 () Bool)

(declare-fun Unit!116736 () Unit!116622)

(assert (=> b!4647342 (= e!2899112 Unit!116736)))

(declare-fun b!4647343 () Bool)

(declare-fun e!2899108 () Bool)

(declare-fun e!2899109 () Bool)

(assert (=> b!4647343 (= e!2899108 e!2899109)))

(declare-fun res!1952790 () Bool)

(assert (=> b!4647343 (=> (not res!1952790) (not e!2899109))))

(declare-fun isDefined!9071 (Option!11806) Bool)

(assert (=> b!4647343 (= res!1952790 (isDefined!9071 (getValueByKey!1594 (toList!5184 lt!1811328) key!4968)))))

(declare-fun b!4647344 () Bool)

(declare-fun lt!1811725 () Unit!116622)

(assert (=> b!4647344 (= e!2899110 lt!1811725)))

(declare-fun lt!1811726 () Unit!116622)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1496 (List!51980 K!13215) Unit!116622)

(assert (=> b!4647344 (= lt!1811726 (lemmaContainsKeyImpliesGetValueByKeyDefined!1496 (toList!5184 lt!1811328) key!4968))))

(assert (=> b!4647344 (isDefined!9071 (getValueByKey!1594 (toList!5184 lt!1811328) key!4968))))

(declare-fun lt!1811730 () Unit!116622)

(assert (=> b!4647344 (= lt!1811730 lt!1811726)))

(declare-fun lemmaInListThenGetKeysListContains!732 (List!51980 K!13215) Unit!116622)

(assert (=> b!4647344 (= lt!1811725 (lemmaInListThenGetKeysListContains!732 (toList!5184 lt!1811328) key!4968))))

(assert (=> b!4647344 call!324583))

(declare-fun d!1465825 () Bool)

(assert (=> d!1465825 e!2899108))

(declare-fun res!1952789 () Bool)

(assert (=> d!1465825 (=> res!1952789 e!2899108)))

(assert (=> d!1465825 (= res!1952789 e!2899113)))

(declare-fun res!1952788 () Bool)

(assert (=> d!1465825 (=> (not res!1952788) (not e!2899113))))

(declare-fun lt!1811729 () Bool)

(assert (=> d!1465825 (= res!1952788 (not lt!1811729))))

(declare-fun lt!1811727 () Bool)

(assert (=> d!1465825 (= lt!1811729 lt!1811727)))

(declare-fun lt!1811732 () Unit!116622)

(assert (=> d!1465825 (= lt!1811732 e!2899110)))

(assert (=> d!1465825 (= c!795241 lt!1811727)))

(declare-fun containsKey!2696 (List!51980 K!13215) Bool)

(assert (=> d!1465825 (= lt!1811727 (containsKey!2696 (toList!5184 lt!1811328) key!4968))))

(assert (=> d!1465825 (= (contains!14997 lt!1811328 key!4968) lt!1811729)))

(declare-fun b!4647345 () Bool)

(assert (=> b!4647345 false))

(declare-fun lt!1811728 () Unit!116622)

(declare-fun lt!1811731 () Unit!116622)

(assert (=> b!4647345 (= lt!1811728 lt!1811731)))

(assert (=> b!4647345 (containsKey!2696 (toList!5184 lt!1811328) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!736 (List!51980 K!13215) Unit!116622)

(assert (=> b!4647345 (= lt!1811731 (lemmaInGetKeysListThenContainsKey!736 (toList!5184 lt!1811328) key!4968))))

(declare-fun Unit!116737 () Unit!116622)

(assert (=> b!4647345 (= e!2899112 Unit!116737)))

(declare-fun b!4647346 () Bool)

(assert (=> b!4647346 (= e!2899109 (contains!15001 (keys!18356 lt!1811328) key!4968))))

(assert (= (and d!1465825 c!795241) b!4647344))

(assert (= (and d!1465825 (not c!795241)) b!4647340))

(assert (= (and b!4647340 c!795239) b!4647345))

(assert (= (and b!4647340 (not c!795239)) b!4647342))

(assert (= (or b!4647344 b!4647340) bm!324578))

(assert (= (and bm!324578 c!795240) b!4647339))

(assert (= (and bm!324578 (not c!795240)) b!4647338))

(assert (= (and d!1465825 res!1952788) b!4647341))

(assert (= (and d!1465825 (not res!1952789)) b!4647343))

(assert (= (and b!4647343 res!1952790) b!4647346))

(declare-fun m!5514377 () Bool)

(assert (=> b!4647341 m!5514377))

(assert (=> b!4647341 m!5514377))

(declare-fun m!5514379 () Bool)

(assert (=> b!4647341 m!5514379))

(declare-fun m!5514381 () Bool)

(assert (=> b!4647344 m!5514381))

(declare-fun m!5514383 () Bool)

(assert (=> b!4647344 m!5514383))

(assert (=> b!4647344 m!5514383))

(declare-fun m!5514385 () Bool)

(assert (=> b!4647344 m!5514385))

(declare-fun m!5514387 () Bool)

(assert (=> b!4647344 m!5514387))

(assert (=> b!4647338 m!5514377))

(assert (=> b!4647343 m!5514383))

(assert (=> b!4647343 m!5514383))

(assert (=> b!4647343 m!5514385))

(assert (=> b!4647346 m!5514377))

(assert (=> b!4647346 m!5514377))

(assert (=> b!4647346 m!5514379))

(declare-fun m!5514389 () Bool)

(assert (=> bm!324578 m!5514389))

(declare-fun m!5514391 () Bool)

(assert (=> b!4647339 m!5514391))

(declare-fun m!5514393 () Bool)

(assert (=> d!1465825 m!5514393))

(assert (=> b!4647345 m!5514393))

(declare-fun m!5514395 () Bool)

(assert (=> b!4647345 m!5514395))

(assert (=> b!4647102 d!1465825))

(declare-fun bs!1039010 () Bool)

(declare-fun d!1465827 () Bool)

(assert (= bs!1039010 (and d!1465827 b!4647090)))

(declare-fun lambda!197856 () Int)

(assert (=> bs!1039010 (= lambda!197856 lambda!197740)))

(declare-fun bs!1039011 () Bool)

(assert (= bs!1039011 (and d!1465827 d!1465739)))

(assert (=> bs!1039011 (= lambda!197856 lambda!197746)))

(declare-fun bs!1039012 () Bool)

(assert (= bs!1039012 (and d!1465827 d!1465741)))

(assert (=> bs!1039012 (= lambda!197856 lambda!197747)))

(declare-fun bs!1039013 () Bool)

(assert (= bs!1039013 (and d!1465827 d!1465823)))

(assert (=> bs!1039013 (= lambda!197856 lambda!197855)))

(declare-fun lt!1811733 () ListMap!4521)

(assert (=> d!1465827 (invariantList!1286 (toList!5184 lt!1811733))))

(declare-fun e!2899114 () ListMap!4521)

(assert (=> d!1465827 (= lt!1811733 e!2899114)))

(declare-fun c!795242 () Bool)

(assert (=> d!1465827 (= c!795242 ((_ is Cons!51857) (Cons!51857 (tuple2!52953 hash!414 oldBucket!40) Nil!51857)))))

(assert (=> d!1465827 (forall!10992 (Cons!51857 (tuple2!52953 hash!414 oldBucket!40) Nil!51857) lambda!197856)))

(assert (=> d!1465827 (= (extractMap!1682 (Cons!51857 (tuple2!52953 hash!414 oldBucket!40) Nil!51857)) lt!1811733)))

(declare-fun b!4647347 () Bool)

(assert (=> b!4647347 (= e!2899114 (addToMapMapFromBucket!1083 (_2!29770 (h!57989 (Cons!51857 (tuple2!52953 hash!414 oldBucket!40) Nil!51857))) (extractMap!1682 (t!359081 (Cons!51857 (tuple2!52953 hash!414 oldBucket!40) Nil!51857)))))))

(declare-fun b!4647348 () Bool)

(assert (=> b!4647348 (= e!2899114 (ListMap!4522 Nil!51856))))

(assert (= (and d!1465827 c!795242) b!4647347))

(assert (= (and d!1465827 (not c!795242)) b!4647348))

(declare-fun m!5514397 () Bool)

(assert (=> d!1465827 m!5514397))

(declare-fun m!5514399 () Bool)

(assert (=> d!1465827 m!5514399))

(declare-fun m!5514401 () Bool)

(assert (=> b!4647347 m!5514401))

(assert (=> b!4647347 m!5514401))

(declare-fun m!5514403 () Bool)

(assert (=> b!4647347 m!5514403))

(assert (=> b!4647102 d!1465827))

(declare-fun e!2899117 () Bool)

(declare-fun tp!1343166 () Bool)

(declare-fun b!4647353 () Bool)

(assert (=> b!4647353 (= e!2899117 (and tp_is_empty!29797 tp_is_empty!29799 tp!1343166))))

(assert (=> b!4647097 (= tp!1343158 e!2899117)))

(assert (= (and b!4647097 ((_ is Cons!51856) (t!359080 newBucket!224))) b!4647353))

(declare-fun b!4647354 () Bool)

(declare-fun e!2899118 () Bool)

(declare-fun tp!1343167 () Bool)

(assert (=> b!4647354 (= e!2899118 (and tp_is_empty!29797 tp_is_empty!29799 tp!1343167))))

(assert (=> b!4647091 (= tp!1343159 e!2899118)))

(assert (= (and b!4647091 ((_ is Cons!51856) (t!359080 oldBucket!40))) b!4647354))

(declare-fun b_lambda!171511 () Bool)

(assert (= b_lambda!171509 (or b!4647090 b_lambda!171511)))

(declare-fun bs!1039014 () Bool)

(declare-fun d!1465829 () Bool)

(assert (= bs!1039014 (and d!1465829 b!4647090)))

(assert (=> bs!1039014 (= (dynLambda!21564 lambda!197740 (h!57989 lt!1811334)) (noDuplicateKeys!1626 (_2!29770 (h!57989 lt!1811334))))))

(declare-fun m!5514405 () Bool)

(assert (=> bs!1039014 m!5514405))

(assert (=> b!4647311 d!1465829))

(check-sat (not bm!324574) (not b!4647297) (not b!4647338) (not d!1465807) (not bm!324563) (not b!4647131) (not b!4647147) (not d!1465827) (not b!4647304) (not bm!324572) (not bm!324564) (not b!4647316) (not d!1465749) (not b!4647343) (not d!1465825) (not b!4647279) (not b!4647312) (not b!4647283) tp_is_empty!29797 (not b!4647354) (not d!1465747) (not b!4647289) (not d!1465751) (not b!4647299) (not b!4647129) (not d!1465817) (not d!1465805) (not d!1465815) (not bs!1039014) (not d!1465821) (not b!4647347) (not b!4647286) (not b!4647112) (not b!4647339) (not bm!324561) (not b!4647133) (not b!4647146) (not b!4647282) (not b!4647123) (not b!4647300) (not bm!324575) (not b!4647288) (not d!1465741) tp_is_empty!29799 (not d!1465735) (not b!4647346) (not d!1465729) (not bm!324571) (not b!4647145) (not d!1465743) (not b!4647345) (not b!4647341) (not bm!324573) (not b!4647111) (not bm!324566) (not b!4647290) (not b!4647306) (not bm!324570) (not b!4647302) (not d!1465811) (not bm!324568) (not b!4647317) (not b!4647296) (not bm!324562) (not b!4647281) (not b!4647344) (not d!1465739) (not bm!324569) (not d!1465733) (not d!1465803) (not b!4647301) (not b!4647305) (not b!4647353) (not bm!324578) (not b!4647148) (not d!1465823) (not bm!324567) (not b!4647318) (not b!4647134) (not b_lambda!171511) (not b!4647315) (not bm!324565) (not b!4647313))
(check-sat)
