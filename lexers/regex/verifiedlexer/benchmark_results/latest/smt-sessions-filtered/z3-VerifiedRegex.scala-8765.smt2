; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!468164 () Bool)

(assert start!468164)

(declare-fun b!4652943 () Bool)

(declare-fun e!2902969 () Bool)

(declare-fun e!2902977 () Bool)

(assert (=> b!4652943 (= e!2902969 e!2902977)))

(declare-fun res!1956003 () Bool)

(assert (=> b!4652943 (=> res!1956003 e!2902977)))

(declare-datatypes ((K!13230 0))(
  ( (K!13231 (val!18855 Int)) )
))
(declare-datatypes ((V!13476 0))(
  ( (V!13477 (val!18856 Int)) )
))
(declare-datatypes ((tuple2!52974 0))(
  ( (tuple2!52975 (_1!29781 K!13230) (_2!29781 V!13476)) )
))
(declare-datatypes ((List!51998 0))(
  ( (Nil!51874) (Cons!51874 (h!58012 tuple2!52974) (t!359110 List!51998)) )
))
(declare-datatypes ((ListMap!4533 0))(
  ( (ListMap!4534 (toList!5195 List!51998)) )
))
(declare-fun lt!1816249 () ListMap!4533)

(declare-fun oldBucket!40 () List!51998)

(declare-fun eq!911 (ListMap!4533 ListMap!4533) Bool)

(declare-fun +!1976 (ListMap!4533 tuple2!52974) ListMap!4533)

(declare-fun addToMapMapFromBucket!1089 (List!51998 ListMap!4533) ListMap!4533)

(assert (=> b!4652943 (= res!1956003 (not (eq!911 (+!1976 lt!1816249 (h!58012 oldBucket!40)) (addToMapMapFromBucket!1089 oldBucket!40 (ListMap!4534 Nil!51874)))))))

(declare-fun lt!1816246 () tuple2!52974)

(declare-fun lt!1816247 () List!51998)

(assert (=> b!4652943 (eq!911 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)) (+!1976 lt!1816249 lt!1816246))))

(declare-datatypes ((Unit!118036 0))(
  ( (Unit!118037) )
))
(declare-fun lt!1816248 () Unit!118036)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!162 (tuple2!52974 List!51998 ListMap!4533) Unit!118036)

(assert (=> b!4652943 (= lt!1816248 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!162 lt!1816246 lt!1816247 (ListMap!4534 Nil!51874)))))

(declare-fun head!9732 (List!51998) tuple2!52974)

(assert (=> b!4652943 (= lt!1816246 (head!9732 oldBucket!40))))

(declare-fun b!4652944 () Bool)

(declare-fun e!2902975 () Bool)

(declare-fun lt!1816243 () ListMap!4533)

(assert (=> b!4652944 (= e!2902975 (= lt!1816243 (ListMap!4534 Nil!51874)))))

(declare-fun b!4652945 () Bool)

(declare-fun e!2902973 () Bool)

(declare-fun e!2902971 () Bool)

(assert (=> b!4652945 (= e!2902973 e!2902971)))

(declare-fun res!1956004 () Bool)

(assert (=> b!4652945 (=> (not res!1956004) (not e!2902971))))

(declare-fun lt!1816240 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4652945 (= res!1956004 (= lt!1816240 hash!414))))

(declare-datatypes ((Hashable!6029 0))(
  ( (HashableExt!6028 (__x!31732 Int)) )
))
(declare-fun hashF!1389 () Hashable!6029)

(declare-fun key!4968 () K!13230)

(declare-fun hash!3763 (Hashable!6029 K!13230) (_ BitVec 64))

(assert (=> b!4652945 (= lt!1816240 (hash!3763 hashF!1389 key!4968))))

(declare-fun b!4652946 () Bool)

(declare-fun e!2902976 () Bool)

(declare-fun e!2902970 () Bool)

(assert (=> b!4652946 (= e!2902976 e!2902970)))

(declare-fun res!1955992 () Bool)

(assert (=> b!4652946 (=> res!1955992 e!2902970)))

(declare-fun newBucket!224 () List!51998)

(assert (=> b!4652946 (= res!1955992 (not (= lt!1816247 newBucket!224)))))

(declare-fun tail!8247 (List!51998) List!51998)

(assert (=> b!4652946 (= lt!1816247 (tail!8247 oldBucket!40))))

(declare-fun b!4652947 () Bool)

(declare-fun res!1955998 () Bool)

(assert (=> b!4652947 (=> res!1955998 e!2902977)))

(declare-fun lt!1816242 () ListMap!4533)

(assert (=> b!4652947 (= res!1955998 (not (= lt!1816249 lt!1816242)))))

(declare-fun tp_is_empty!29823 () Bool)

(declare-fun tp_is_empty!29821 () Bool)

(declare-fun tp!1343230 () Bool)

(declare-fun e!2902978 () Bool)

(declare-fun b!4652948 () Bool)

(assert (=> b!4652948 (= e!2902978 (and tp_is_empty!29821 tp_is_empty!29823 tp!1343230))))

(declare-fun b!4652949 () Bool)

(declare-fun res!1956000 () Bool)

(declare-fun e!2902974 () Bool)

(assert (=> b!4652949 (=> res!1956000 e!2902974)))

(declare-datatypes ((tuple2!52976 0))(
  ( (tuple2!52977 (_1!29782 (_ BitVec 64)) (_2!29782 List!51998)) )
))
(declare-datatypes ((List!51999 0))(
  ( (Nil!51875) (Cons!51875 (h!58013 tuple2!52976) (t!359111 List!51999)) )
))
(declare-datatypes ((ListLongMap!3751 0))(
  ( (ListLongMap!3752 (toList!5196 List!51999)) )
))
(declare-fun lt!1816244 () ListLongMap!3751)

(declare-fun contains!15018 (ListLongMap!3751 (_ BitVec 64)) Bool)

(assert (=> b!4652949 (= res!1956000 (not (contains!15018 lt!1816244 lt!1816240)))))

(declare-fun b!4652950 () Bool)

(declare-fun e!2902972 () Bool)

(assert (=> b!4652950 (= e!2902972 e!2902973)))

(declare-fun res!1956005 () Bool)

(assert (=> b!4652950 (=> (not res!1956005) (not e!2902973))))

(declare-fun lt!1816241 () ListMap!4533)

(declare-fun contains!15019 (ListMap!4533 K!13230) Bool)

(assert (=> b!4652950 (= res!1956005 (contains!15019 lt!1816241 key!4968))))

(declare-fun extractMap!1688 (List!51999) ListMap!4533)

(assert (=> b!4652950 (= lt!1816241 (extractMap!1688 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))))

(declare-fun b!4652951 () Bool)

(declare-fun res!1955989 () Bool)

(assert (=> b!4652951 (=> (not res!1955989) (not e!2902972))))

(declare-fun noDuplicateKeys!1632 (List!51998) Bool)

(assert (=> b!4652951 (= res!1955989 (noDuplicateKeys!1632 newBucket!224))))

(declare-fun b!4652952 () Bool)

(declare-fun e!2902980 () Bool)

(assert (=> b!4652952 (= e!2902970 e!2902980)))

(declare-fun res!1955997 () Bool)

(assert (=> b!4652952 (=> res!1955997 e!2902980)))

(assert (=> b!4652952 (= res!1955997 (not (= lt!1816242 (extractMap!1688 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))))))

(declare-fun lt!1816245 () List!51999)

(assert (=> b!4652952 (= lt!1816242 (extractMap!1688 lt!1816245))))

(assert (=> b!4652952 (= lt!1816245 (Cons!51875 (tuple2!52977 hash!414 lt!1816247) Nil!51875))))

(declare-fun b!4652953 () Bool)

(declare-fun res!1956002 () Bool)

(assert (=> b!4652953 (=> (not res!1956002) (not e!2902971))))

(declare-fun allKeysSameHash!1486 (List!51998 (_ BitVec 64) Hashable!6029) Bool)

(assert (=> b!4652953 (= res!1956002 (allKeysSameHash!1486 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4652954 () Bool)

(assert (=> b!4652954 (= e!2902977 e!2902974)))

(declare-fun res!1955991 () Bool)

(assert (=> b!4652954 (=> res!1955991 e!2902974)))

(declare-fun lambda!198730 () Int)

(declare-fun forall!11008 (List!51999 Int) Bool)

(assert (=> b!4652954 (= res!1955991 (not (forall!11008 lt!1816245 lambda!198730)))))

(assert (=> b!4652954 (= lt!1816244 (ListLongMap!3752 lt!1816245))))

(declare-fun b!4652955 () Bool)

(declare-fun res!1956006 () Bool)

(assert (=> b!4652955 (=> res!1956006 e!2902977)))

(declare-fun containsKey!2708 (List!51998 K!13230) Bool)

(assert (=> b!4652955 (= res!1956006 (containsKey!2708 lt!1816247 key!4968))))

(declare-fun res!1955996 () Bool)

(assert (=> start!468164 (=> (not res!1955996) (not e!2902972))))

(assert (=> start!468164 (= res!1955996 (noDuplicateKeys!1632 oldBucket!40))))

(assert (=> start!468164 e!2902972))

(assert (=> start!468164 true))

(declare-fun e!2902979 () Bool)

(assert (=> start!468164 e!2902979))

(assert (=> start!468164 tp_is_empty!29821))

(assert (=> start!468164 e!2902978))

(declare-fun b!4652956 () Bool)

(declare-fun res!1955993 () Bool)

(assert (=> b!4652956 (=> (not res!1955993) (not e!2902972))))

(declare-fun removePairForKey!1255 (List!51998 K!13230) List!51998)

(assert (=> b!4652956 (= res!1955993 (= (removePairForKey!1255 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4652957 () Bool)

(declare-fun res!1955995 () Bool)

(assert (=> b!4652957 (=> res!1955995 e!2902974)))

(declare-fun allKeysSameHashInMap!1596 (ListLongMap!3751 Hashable!6029) Bool)

(assert (=> b!4652957 (= res!1955995 (not (allKeysSameHashInMap!1596 lt!1816244 hashF!1389)))))

(declare-fun b!4652958 () Bool)

(declare-fun res!1956001 () Bool)

(assert (=> b!4652958 (=> (not res!1956001) (not e!2902972))))

(assert (=> b!4652958 (= res!1956001 (allKeysSameHash!1486 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4652959 () Bool)

(assert (=> b!4652959 (= e!2902971 (not e!2902976))))

(declare-fun res!1955994 () Bool)

(assert (=> b!4652959 (=> res!1955994 e!2902976)))

(get-info :version)

(assert (=> b!4652959 (= res!1955994 (or (not ((_ is Cons!51874) oldBucket!40)) (not (= (_1!29781 (h!58012 oldBucket!40)) key!4968))))))

(assert (=> b!4652959 e!2902975))

(declare-fun res!1955999 () Bool)

(assert (=> b!4652959 (=> (not res!1955999) (not e!2902975))))

(assert (=> b!4652959 (= res!1955999 (= lt!1816241 (addToMapMapFromBucket!1089 oldBucket!40 lt!1816243)))))

(assert (=> b!4652959 (= lt!1816243 (extractMap!1688 Nil!51875))))

(assert (=> b!4652959 true))

(declare-fun tp!1343231 () Bool)

(declare-fun b!4652960 () Bool)

(assert (=> b!4652960 (= e!2902979 (and tp_is_empty!29821 tp_is_empty!29823 tp!1343231))))

(declare-fun b!4652961 () Bool)

(assert (=> b!4652961 (= e!2902980 e!2902969)))

(declare-fun res!1955990 () Bool)

(assert (=> b!4652961 (=> res!1955990 e!2902969)))

(assert (=> b!4652961 (= res!1955990 (not (= lt!1816249 (addToMapMapFromBucket!1089 newBucket!224 (ListMap!4534 Nil!51874)))))))

(assert (=> b!4652961 (= lt!1816249 (addToMapMapFromBucket!1089 lt!1816247 (ListMap!4534 Nil!51874)))))

(declare-fun b!4652962 () Bool)

(declare-fun apply!12245 (ListLongMap!3751 (_ BitVec 64)) List!51998)

(assert (=> b!4652962 (= e!2902974 (not (containsKey!2708 (apply!12245 lt!1816244 lt!1816240) key!4968)))))

(assert (= (and start!468164 res!1955996) b!4652951))

(assert (= (and b!4652951 res!1955989) b!4652956))

(assert (= (and b!4652956 res!1955993) b!4652958))

(assert (= (and b!4652958 res!1956001) b!4652950))

(assert (= (and b!4652950 res!1956005) b!4652945))

(assert (= (and b!4652945 res!1956004) b!4652953))

(assert (= (and b!4652953 res!1956002) b!4652959))

(assert (= (and b!4652959 res!1955999) b!4652944))

(assert (= (and b!4652959 (not res!1955994)) b!4652946))

(assert (= (and b!4652946 (not res!1955992)) b!4652952))

(assert (= (and b!4652952 (not res!1955997)) b!4652961))

(assert (= (and b!4652961 (not res!1955990)) b!4652943))

(assert (= (and b!4652943 (not res!1956003)) b!4652955))

(assert (= (and b!4652955 (not res!1956006)) b!4652947))

(assert (= (and b!4652947 (not res!1955998)) b!4652954))

(assert (= (and b!4652954 (not res!1955991)) b!4652957))

(assert (= (and b!4652957 (not res!1955995)) b!4652949))

(assert (= (and b!4652949 (not res!1956000)) b!4652962))

(assert (= (and start!468164 ((_ is Cons!51874) oldBucket!40)) b!4652960))

(assert (= (and start!468164 ((_ is Cons!51874) newBucket!224)) b!4652948))

(declare-fun m!5529961 () Bool)

(assert (=> b!4652957 m!5529961))

(declare-fun m!5529963 () Bool)

(assert (=> b!4652958 m!5529963))

(declare-fun m!5529965 () Bool)

(assert (=> b!4652951 m!5529965))

(declare-fun m!5529967 () Bool)

(assert (=> b!4652953 m!5529967))

(declare-fun m!5529969 () Bool)

(assert (=> b!4652952 m!5529969))

(declare-fun m!5529971 () Bool)

(assert (=> b!4652952 m!5529971))

(declare-fun m!5529973 () Bool)

(assert (=> b!4652949 m!5529973))

(declare-fun m!5529975 () Bool)

(assert (=> b!4652945 m!5529975))

(declare-fun m!5529977 () Bool)

(assert (=> b!4652961 m!5529977))

(declare-fun m!5529979 () Bool)

(assert (=> b!4652961 m!5529979))

(declare-fun m!5529981 () Bool)

(assert (=> b!4652943 m!5529981))

(declare-fun m!5529983 () Bool)

(assert (=> b!4652943 m!5529983))

(declare-fun m!5529985 () Bool)

(assert (=> b!4652943 m!5529985))

(declare-fun m!5529987 () Bool)

(assert (=> b!4652943 m!5529987))

(declare-fun m!5529989 () Bool)

(assert (=> b!4652943 m!5529989))

(declare-fun m!5529991 () Bool)

(assert (=> b!4652943 m!5529991))

(assert (=> b!4652943 m!5529989))

(declare-fun m!5529993 () Bool)

(assert (=> b!4652943 m!5529993))

(assert (=> b!4652943 m!5529987))

(declare-fun m!5529995 () Bool)

(assert (=> b!4652943 m!5529995))

(assert (=> b!4652943 m!5529981))

(assert (=> b!4652943 m!5529983))

(declare-fun m!5529997 () Bool)

(assert (=> b!4652946 m!5529997))

(declare-fun m!5529999 () Bool)

(assert (=> b!4652954 m!5529999))

(declare-fun m!5530001 () Bool)

(assert (=> b!4652959 m!5530001))

(declare-fun m!5530003 () Bool)

(assert (=> b!4652959 m!5530003))

(declare-fun m!5530005 () Bool)

(assert (=> b!4652950 m!5530005))

(declare-fun m!5530007 () Bool)

(assert (=> b!4652950 m!5530007))

(declare-fun m!5530009 () Bool)

(assert (=> start!468164 m!5530009))

(declare-fun m!5530011 () Bool)

(assert (=> b!4652956 m!5530011))

(declare-fun m!5530013 () Bool)

(assert (=> b!4652962 m!5530013))

(assert (=> b!4652962 m!5530013))

(declare-fun m!5530015 () Bool)

(assert (=> b!4652962 m!5530015))

(declare-fun m!5530017 () Bool)

(assert (=> b!4652955 m!5530017))

(check-sat tp_is_empty!29821 (not b!4652949) (not b!4652953) (not b!4652954) (not b!4652955) (not b!4652958) (not b!4652962) (not b!4652946) (not b!4652957) (not b!4652960) (not b!4652945) tp_is_empty!29823 (not b!4652952) (not start!468164) (not b!4652950) (not b!4652943) (not b!4652959) (not b!4652948) (not b!4652956) (not b!4652951) (not b!4652961))
(check-sat)
(get-model)

(declare-fun b!4653104 () Bool)

(assert (=> b!4653104 true))

(declare-fun bs!1061796 () Bool)

(declare-fun b!4653105 () Bool)

(assert (= bs!1061796 (and b!4653105 b!4653104)))

(declare-fun lambda!198818 () Int)

(declare-fun lambda!198817 () Int)

(assert (=> bs!1061796 (= lambda!198818 lambda!198817)))

(assert (=> b!4653105 true))

(declare-fun lt!1816505 () ListMap!4533)

(declare-fun lambda!198820 () Int)

(assert (=> bs!1061796 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198820 lambda!198817))))

(assert (=> b!4653105 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198820 lambda!198818))))

(assert (=> b!4653105 true))

(declare-fun bs!1061812 () Bool)

(declare-fun d!1475200 () Bool)

(assert (= bs!1061812 (and d!1475200 b!4653104)))

(declare-fun lt!1816499 () ListMap!4533)

(declare-fun lambda!198821 () Int)

(assert (=> bs!1061812 (= (= lt!1816499 (ListMap!4534 Nil!51874)) (= lambda!198821 lambda!198817))))

(declare-fun bs!1061813 () Bool)

(assert (= bs!1061813 (and d!1475200 b!4653105)))

(assert (=> bs!1061813 (= (= lt!1816499 (ListMap!4534 Nil!51874)) (= lambda!198821 lambda!198818))))

(assert (=> bs!1061813 (= (= lt!1816499 lt!1816505) (= lambda!198821 lambda!198820))))

(assert (=> d!1475200 true))

(declare-fun b!4653102 () Bool)

(declare-fun res!1956074 () Bool)

(declare-fun e!2903067 () Bool)

(assert (=> b!4653102 (=> (not res!1956074) (not e!2903067))))

(declare-fun forall!11010 (List!51998 Int) Bool)

(assert (=> b!4653102 (= res!1956074 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198821))))

(declare-fun b!4653103 () Bool)

(declare-fun invariantList!1292 (List!51998) Bool)

(assert (=> b!4653103 (= e!2903067 (invariantList!1292 (toList!5195 lt!1816499)))))

(declare-fun e!2903068 () ListMap!4533)

(assert (=> b!4653104 (= e!2903068 (ListMap!4534 Nil!51874))))

(declare-fun lt!1816507 () Unit!118036)

(declare-fun call!325129 () Unit!118036)

(assert (=> b!4653104 (= lt!1816507 call!325129)))

(declare-fun call!325128 () Bool)

(assert (=> b!4653104 call!325128))

(declare-fun lt!1816516 () Unit!118036)

(assert (=> b!4653104 (= lt!1816516 lt!1816507)))

(declare-fun call!325130 () Bool)

(assert (=> b!4653104 call!325130))

(declare-fun lt!1816502 () Unit!118036)

(declare-fun Unit!118063 () Unit!118036)

(assert (=> b!4653104 (= lt!1816502 Unit!118063)))

(declare-fun c!796410 () Bool)

(declare-fun bm!325123 () Bool)

(assert (=> bm!325123 (= call!325130 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796410 lambda!198817 lambda!198820)))))

(assert (=> b!4653105 (= e!2903068 lt!1816505)))

(declare-fun lt!1816508 () ListMap!4533)

(assert (=> b!4653105 (= lt!1816508 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)))))

(assert (=> b!4653105 (= lt!1816505 (addToMapMapFromBucket!1089 (t!359110 newBucket!224) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))))))

(declare-fun lt!1816511 () Unit!118036)

(assert (=> b!4653105 (= lt!1816511 call!325129)))

(assert (=> b!4653105 call!325128))

(declare-fun lt!1816510 () Unit!118036)

(assert (=> b!4653105 (= lt!1816510 lt!1816511)))

(assert (=> b!4653105 (forall!11010 (toList!5195 lt!1816508) lambda!198820)))

(declare-fun lt!1816512 () Unit!118036)

(declare-fun Unit!118064 () Unit!118036)

(assert (=> b!4653105 (= lt!1816512 Unit!118064)))

(assert (=> b!4653105 (forall!11010 (t!359110 newBucket!224) lambda!198820)))

(declare-fun lt!1816503 () Unit!118036)

(declare-fun Unit!118065 () Unit!118036)

(assert (=> b!4653105 (= lt!1816503 Unit!118065)))

(declare-fun lt!1816509 () Unit!118036)

(declare-fun Unit!118066 () Unit!118036)

(assert (=> b!4653105 (= lt!1816509 Unit!118066)))

(declare-fun lt!1816501 () Unit!118036)

(declare-fun forallContained!3216 (List!51998 Int tuple2!52974) Unit!118036)

(assert (=> b!4653105 (= lt!1816501 (forallContained!3216 (toList!5195 lt!1816508) lambda!198820 (h!58012 newBucket!224)))))

(assert (=> b!4653105 (contains!15019 lt!1816508 (_1!29781 (h!58012 newBucket!224)))))

(declare-fun lt!1816513 () Unit!118036)

(declare-fun Unit!118067 () Unit!118036)

(assert (=> b!4653105 (= lt!1816513 Unit!118067)))

(assert (=> b!4653105 (contains!15019 lt!1816505 (_1!29781 (h!58012 newBucket!224)))))

(declare-fun lt!1816517 () Unit!118036)

(declare-fun Unit!118068 () Unit!118036)

(assert (=> b!4653105 (= lt!1816517 Unit!118068)))

(assert (=> b!4653105 (forall!11010 newBucket!224 lambda!198820)))

(declare-fun lt!1816519 () Unit!118036)

(declare-fun Unit!118069 () Unit!118036)

(assert (=> b!4653105 (= lt!1816519 Unit!118069)))

(assert (=> b!4653105 (forall!11010 (toList!5195 lt!1816508) lambda!198820)))

(declare-fun lt!1816514 () Unit!118036)

(declare-fun Unit!118070 () Unit!118036)

(assert (=> b!4653105 (= lt!1816514 Unit!118070)))

(declare-fun lt!1816515 () Unit!118036)

(declare-fun Unit!118071 () Unit!118036)

(assert (=> b!4653105 (= lt!1816515 Unit!118071)))

(declare-fun lt!1816506 () Unit!118036)

(declare-fun addForallContainsKeyThenBeforeAdding!591 (ListMap!4533 ListMap!4533 K!13230 V!13476) Unit!118036)

(assert (=> b!4653105 (= lt!1816506 (addForallContainsKeyThenBeforeAdding!591 (ListMap!4534 Nil!51874) lt!1816505 (_1!29781 (h!58012 newBucket!224)) (_2!29781 (h!58012 newBucket!224))))))

(assert (=> b!4653105 call!325130))

(declare-fun lt!1816500 () Unit!118036)

(assert (=> b!4653105 (= lt!1816500 lt!1816506)))

(assert (=> b!4653105 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198820)))

(declare-fun lt!1816504 () Unit!118036)

(declare-fun Unit!118072 () Unit!118036)

(assert (=> b!4653105 (= lt!1816504 Unit!118072)))

(declare-fun res!1956073 () Bool)

(assert (=> b!4653105 (= res!1956073 (forall!11010 newBucket!224 lambda!198820))))

(declare-fun e!2903069 () Bool)

(assert (=> b!4653105 (=> (not res!1956073) (not e!2903069))))

(assert (=> b!4653105 e!2903069))

(declare-fun lt!1816518 () Unit!118036)

(declare-fun Unit!118073 () Unit!118036)

(assert (=> b!4653105 (= lt!1816518 Unit!118073)))

(assert (=> d!1475200 e!2903067))

(declare-fun res!1956072 () Bool)

(assert (=> d!1475200 (=> (not res!1956072) (not e!2903067))))

(assert (=> d!1475200 (= res!1956072 (forall!11010 newBucket!224 lambda!198821))))

(assert (=> d!1475200 (= lt!1816499 e!2903068)))

(assert (=> d!1475200 (= c!796410 ((_ is Nil!51874) newBucket!224))))

(assert (=> d!1475200 (noDuplicateKeys!1632 newBucket!224)))

(assert (=> d!1475200 (= (addToMapMapFromBucket!1089 newBucket!224 (ListMap!4534 Nil!51874)) lt!1816499)))

(declare-fun bm!325124 () Bool)

(assert (=> bm!325124 (= call!325128 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796410 lambda!198817 lambda!198818)))))

(declare-fun bm!325125 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!592 (ListMap!4533) Unit!118036)

(assert (=> bm!325125 (= call!325129 (lemmaContainsAllItsOwnKeys!592 (ListMap!4534 Nil!51874)))))

(declare-fun b!4653106 () Bool)

(assert (=> b!4653106 (= e!2903069 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198820))))

(assert (= (and d!1475200 c!796410) b!4653104))

(assert (= (and d!1475200 (not c!796410)) b!4653105))

(assert (= (and b!4653105 res!1956073) b!4653106))

(assert (= (or b!4653104 b!4653105) bm!325125))

(assert (= (or b!4653104 b!4653105) bm!325124))

(assert (= (or b!4653104 b!4653105) bm!325123))

(assert (= (and d!1475200 res!1956072) b!4653102))

(assert (= (and b!4653102 res!1956074) b!4653103))

(declare-fun m!5530257 () Bool)

(assert (=> d!1475200 m!5530257))

(assert (=> d!1475200 m!5529965))

(declare-fun m!5530259 () Bool)

(assert (=> bm!325124 m!5530259))

(declare-fun m!5530261 () Bool)

(assert (=> b!4653103 m!5530261))

(declare-fun m!5530263 () Bool)

(assert (=> b!4653102 m!5530263))

(declare-fun m!5530265 () Bool)

(assert (=> bm!325125 m!5530265))

(declare-fun m!5530267 () Bool)

(assert (=> bm!325123 m!5530267))

(declare-fun m!5530269 () Bool)

(assert (=> b!4653106 m!5530269))

(declare-fun m!5530271 () Bool)

(assert (=> b!4653105 m!5530271))

(declare-fun m!5530273 () Bool)

(assert (=> b!4653105 m!5530273))

(assert (=> b!4653105 m!5530273))

(declare-fun m!5530275 () Bool)

(assert (=> b!4653105 m!5530275))

(declare-fun m!5530277 () Bool)

(assert (=> b!4653105 m!5530277))

(declare-fun m!5530279 () Bool)

(assert (=> b!4653105 m!5530279))

(assert (=> b!4653105 m!5530277))

(declare-fun m!5530281 () Bool)

(assert (=> b!4653105 m!5530281))

(declare-fun m!5530283 () Bool)

(assert (=> b!4653105 m!5530283))

(declare-fun m!5530285 () Bool)

(assert (=> b!4653105 m!5530285))

(assert (=> b!4653105 m!5530269))

(declare-fun m!5530287 () Bool)

(assert (=> b!4653105 m!5530287))

(assert (=> b!4653105 m!5530281))

(assert (=> b!4652961 d!1475200))

(declare-fun bs!1061822 () Bool)

(declare-fun b!4653111 () Bool)

(assert (= bs!1061822 (and b!4653111 b!4653104)))

(declare-fun lambda!198824 () Int)

(assert (=> bs!1061822 (= lambda!198824 lambda!198817)))

(declare-fun bs!1061824 () Bool)

(assert (= bs!1061824 (and b!4653111 b!4653105)))

(assert (=> bs!1061824 (= lambda!198824 lambda!198818)))

(assert (=> bs!1061824 (= (= (ListMap!4534 Nil!51874) lt!1816505) (= lambda!198824 lambda!198820))))

(declare-fun bs!1061827 () Bool)

(assert (= bs!1061827 (and b!4653111 d!1475200)))

(assert (=> bs!1061827 (= (= (ListMap!4534 Nil!51874) lt!1816499) (= lambda!198824 lambda!198821))))

(assert (=> b!4653111 true))

(declare-fun bs!1061832 () Bool)

(declare-fun b!4653112 () Bool)

(assert (= bs!1061832 (and b!4653112 b!4653105)))

(declare-fun lambda!198825 () Int)

(assert (=> bs!1061832 (= (= (ListMap!4534 Nil!51874) lt!1816505) (= lambda!198825 lambda!198820))))

(assert (=> bs!1061832 (= lambda!198825 lambda!198818)))

(declare-fun bs!1061833 () Bool)

(assert (= bs!1061833 (and b!4653112 b!4653111)))

(assert (=> bs!1061833 (= lambda!198825 lambda!198824)))

(declare-fun bs!1061835 () Bool)

(assert (= bs!1061835 (and b!4653112 d!1475200)))

(assert (=> bs!1061835 (= (= (ListMap!4534 Nil!51874) lt!1816499) (= lambda!198825 lambda!198821))))

(declare-fun bs!1061836 () Bool)

(assert (= bs!1061836 (and b!4653112 b!4653104)))

(assert (=> bs!1061836 (= lambda!198825 lambda!198817)))

(assert (=> b!4653112 true))

(declare-fun lt!1816526 () ListMap!4533)

(declare-fun lambda!198826 () Int)

(assert (=> bs!1061832 (= (= lt!1816526 lt!1816505) (= lambda!198826 lambda!198820))))

(assert (=> b!4653112 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198826 lambda!198825))))

(assert (=> bs!1061832 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198826 lambda!198818))))

(assert (=> bs!1061833 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198826 lambda!198824))))

(assert (=> bs!1061835 (= (= lt!1816526 lt!1816499) (= lambda!198826 lambda!198821))))

(assert (=> bs!1061836 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198826 lambda!198817))))

(assert (=> b!4653112 true))

(declare-fun bs!1061837 () Bool)

(declare-fun d!1475248 () Bool)

(assert (= bs!1061837 (and d!1475248 b!4653105)))

(declare-fun lt!1816520 () ListMap!4533)

(declare-fun lambda!198827 () Int)

(assert (=> bs!1061837 (= (= lt!1816520 lt!1816505) (= lambda!198827 lambda!198820))))

(declare-fun bs!1061838 () Bool)

(assert (= bs!1061838 (and d!1475248 b!4653112)))

(assert (=> bs!1061838 (= (= lt!1816520 (ListMap!4534 Nil!51874)) (= lambda!198827 lambda!198825))))

(assert (=> bs!1061838 (= (= lt!1816520 lt!1816526) (= lambda!198827 lambda!198826))))

(assert (=> bs!1061837 (= (= lt!1816520 (ListMap!4534 Nil!51874)) (= lambda!198827 lambda!198818))))

(declare-fun bs!1061839 () Bool)

(assert (= bs!1061839 (and d!1475248 b!4653111)))

(assert (=> bs!1061839 (= (= lt!1816520 (ListMap!4534 Nil!51874)) (= lambda!198827 lambda!198824))))

(declare-fun bs!1061840 () Bool)

(assert (= bs!1061840 (and d!1475248 d!1475200)))

(assert (=> bs!1061840 (= (= lt!1816520 lt!1816499) (= lambda!198827 lambda!198821))))

(declare-fun bs!1061841 () Bool)

(assert (= bs!1061841 (and d!1475248 b!4653104)))

(assert (=> bs!1061841 (= (= lt!1816520 (ListMap!4534 Nil!51874)) (= lambda!198827 lambda!198817))))

(assert (=> d!1475248 true))

(declare-fun b!4653109 () Bool)

(declare-fun res!1956077 () Bool)

(declare-fun e!2903070 () Bool)

(assert (=> b!4653109 (=> (not res!1956077) (not e!2903070))))

(assert (=> b!4653109 (= res!1956077 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198827))))

(declare-fun b!4653110 () Bool)

(assert (=> b!4653110 (= e!2903070 (invariantList!1292 (toList!5195 lt!1816520)))))

(declare-fun e!2903071 () ListMap!4533)

(assert (=> b!4653111 (= e!2903071 (ListMap!4534 Nil!51874))))

(declare-fun lt!1816528 () Unit!118036)

(declare-fun call!325132 () Unit!118036)

(assert (=> b!4653111 (= lt!1816528 call!325132)))

(declare-fun call!325131 () Bool)

(assert (=> b!4653111 call!325131))

(declare-fun lt!1816537 () Unit!118036)

(assert (=> b!4653111 (= lt!1816537 lt!1816528)))

(declare-fun call!325133 () Bool)

(assert (=> b!4653111 call!325133))

(declare-fun lt!1816523 () Unit!118036)

(declare-fun Unit!118085 () Unit!118036)

(assert (=> b!4653111 (= lt!1816523 Unit!118085)))

(declare-fun c!796411 () Bool)

(declare-fun bm!325126 () Bool)

(assert (=> bm!325126 (= call!325133 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796411 lambda!198824 lambda!198826)))))

(assert (=> b!4653112 (= e!2903071 lt!1816526)))

(declare-fun lt!1816529 () ListMap!4533)

(assert (=> b!4653112 (= lt!1816529 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)))))

(assert (=> b!4653112 (= lt!1816526 (addToMapMapFromBucket!1089 (t!359110 lt!1816247) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))))))

(declare-fun lt!1816532 () Unit!118036)

(assert (=> b!4653112 (= lt!1816532 call!325132)))

(assert (=> b!4653112 call!325131))

(declare-fun lt!1816531 () Unit!118036)

(assert (=> b!4653112 (= lt!1816531 lt!1816532)))

(assert (=> b!4653112 (forall!11010 (toList!5195 lt!1816529) lambda!198826)))

(declare-fun lt!1816533 () Unit!118036)

(declare-fun Unit!118086 () Unit!118036)

(assert (=> b!4653112 (= lt!1816533 Unit!118086)))

(assert (=> b!4653112 (forall!11010 (t!359110 lt!1816247) lambda!198826)))

(declare-fun lt!1816524 () Unit!118036)

(declare-fun Unit!118087 () Unit!118036)

(assert (=> b!4653112 (= lt!1816524 Unit!118087)))

(declare-fun lt!1816530 () Unit!118036)

(declare-fun Unit!118088 () Unit!118036)

(assert (=> b!4653112 (= lt!1816530 Unit!118088)))

(declare-fun lt!1816522 () Unit!118036)

(assert (=> b!4653112 (= lt!1816522 (forallContained!3216 (toList!5195 lt!1816529) lambda!198826 (h!58012 lt!1816247)))))

(assert (=> b!4653112 (contains!15019 lt!1816529 (_1!29781 (h!58012 lt!1816247)))))

(declare-fun lt!1816534 () Unit!118036)

(declare-fun Unit!118089 () Unit!118036)

(assert (=> b!4653112 (= lt!1816534 Unit!118089)))

(assert (=> b!4653112 (contains!15019 lt!1816526 (_1!29781 (h!58012 lt!1816247)))))

(declare-fun lt!1816538 () Unit!118036)

(declare-fun Unit!118090 () Unit!118036)

(assert (=> b!4653112 (= lt!1816538 Unit!118090)))

(assert (=> b!4653112 (forall!11010 lt!1816247 lambda!198826)))

(declare-fun lt!1816540 () Unit!118036)

(declare-fun Unit!118091 () Unit!118036)

(assert (=> b!4653112 (= lt!1816540 Unit!118091)))

(assert (=> b!4653112 (forall!11010 (toList!5195 lt!1816529) lambda!198826)))

(declare-fun lt!1816535 () Unit!118036)

(declare-fun Unit!118092 () Unit!118036)

(assert (=> b!4653112 (= lt!1816535 Unit!118092)))

(declare-fun lt!1816536 () Unit!118036)

(declare-fun Unit!118093 () Unit!118036)

(assert (=> b!4653112 (= lt!1816536 Unit!118093)))

(declare-fun lt!1816527 () Unit!118036)

(assert (=> b!4653112 (= lt!1816527 (addForallContainsKeyThenBeforeAdding!591 (ListMap!4534 Nil!51874) lt!1816526 (_1!29781 (h!58012 lt!1816247)) (_2!29781 (h!58012 lt!1816247))))))

(assert (=> b!4653112 call!325133))

(declare-fun lt!1816521 () Unit!118036)

(assert (=> b!4653112 (= lt!1816521 lt!1816527)))

(assert (=> b!4653112 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198826)))

(declare-fun lt!1816525 () Unit!118036)

(declare-fun Unit!118094 () Unit!118036)

(assert (=> b!4653112 (= lt!1816525 Unit!118094)))

(declare-fun res!1956076 () Bool)

(assert (=> b!4653112 (= res!1956076 (forall!11010 lt!1816247 lambda!198826))))

(declare-fun e!2903072 () Bool)

(assert (=> b!4653112 (=> (not res!1956076) (not e!2903072))))

(assert (=> b!4653112 e!2903072))

(declare-fun lt!1816539 () Unit!118036)

(declare-fun Unit!118095 () Unit!118036)

(assert (=> b!4653112 (= lt!1816539 Unit!118095)))

(assert (=> d!1475248 e!2903070))

(declare-fun res!1956075 () Bool)

(assert (=> d!1475248 (=> (not res!1956075) (not e!2903070))))

(assert (=> d!1475248 (= res!1956075 (forall!11010 lt!1816247 lambda!198827))))

(assert (=> d!1475248 (= lt!1816520 e!2903071)))

(assert (=> d!1475248 (= c!796411 ((_ is Nil!51874) lt!1816247))))

(assert (=> d!1475248 (noDuplicateKeys!1632 lt!1816247)))

(assert (=> d!1475248 (= (addToMapMapFromBucket!1089 lt!1816247 (ListMap!4534 Nil!51874)) lt!1816520)))

(declare-fun bm!325127 () Bool)

(assert (=> bm!325127 (= call!325131 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796411 lambda!198824 lambda!198825)))))

(declare-fun bm!325128 () Bool)

(assert (=> bm!325128 (= call!325132 (lemmaContainsAllItsOwnKeys!592 (ListMap!4534 Nil!51874)))))

(declare-fun b!4653113 () Bool)

(assert (=> b!4653113 (= e!2903072 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198826))))

(assert (= (and d!1475248 c!796411) b!4653111))

(assert (= (and d!1475248 (not c!796411)) b!4653112))

(assert (= (and b!4653112 res!1956076) b!4653113))

(assert (= (or b!4653111 b!4653112) bm!325128))

(assert (= (or b!4653111 b!4653112) bm!325127))

(assert (= (or b!4653111 b!4653112) bm!325126))

(assert (= (and d!1475248 res!1956075) b!4653109))

(assert (= (and b!4653109 res!1956077) b!4653110))

(declare-fun m!5530335 () Bool)

(assert (=> d!1475248 m!5530335))

(declare-fun m!5530337 () Bool)

(assert (=> d!1475248 m!5530337))

(declare-fun m!5530339 () Bool)

(assert (=> bm!325127 m!5530339))

(declare-fun m!5530341 () Bool)

(assert (=> b!4653110 m!5530341))

(declare-fun m!5530343 () Bool)

(assert (=> b!4653109 m!5530343))

(assert (=> bm!325128 m!5530265))

(declare-fun m!5530345 () Bool)

(assert (=> bm!325126 m!5530345))

(declare-fun m!5530347 () Bool)

(assert (=> b!4653113 m!5530347))

(declare-fun m!5530349 () Bool)

(assert (=> b!4653112 m!5530349))

(declare-fun m!5530351 () Bool)

(assert (=> b!4653112 m!5530351))

(assert (=> b!4653112 m!5530351))

(declare-fun m!5530353 () Bool)

(assert (=> b!4653112 m!5530353))

(declare-fun m!5530355 () Bool)

(assert (=> b!4653112 m!5530355))

(declare-fun m!5530357 () Bool)

(assert (=> b!4653112 m!5530357))

(assert (=> b!4653112 m!5530355))

(declare-fun m!5530359 () Bool)

(assert (=> b!4653112 m!5530359))

(declare-fun m!5530361 () Bool)

(assert (=> b!4653112 m!5530361))

(declare-fun m!5530363 () Bool)

(assert (=> b!4653112 m!5530363))

(assert (=> b!4653112 m!5530347))

(declare-fun m!5530365 () Bool)

(assert (=> b!4653112 m!5530365))

(assert (=> b!4653112 m!5530359))

(assert (=> b!4652961 d!1475248))

(declare-fun d!1475256 () Bool)

(declare-fun res!1956086 () Bool)

(declare-fun e!2903084 () Bool)

(assert (=> d!1475256 (=> res!1956086 e!2903084)))

(assert (=> d!1475256 (= res!1956086 (not ((_ is Cons!51874) oldBucket!40)))))

(assert (=> d!1475256 (= (noDuplicateKeys!1632 oldBucket!40) e!2903084)))

(declare-fun b!4653128 () Bool)

(declare-fun e!2903085 () Bool)

(assert (=> b!4653128 (= e!2903084 e!2903085)))

(declare-fun res!1956087 () Bool)

(assert (=> b!4653128 (=> (not res!1956087) (not e!2903085))))

(assert (=> b!4653128 (= res!1956087 (not (containsKey!2708 (t!359110 oldBucket!40) (_1!29781 (h!58012 oldBucket!40)))))))

(declare-fun b!4653129 () Bool)

(assert (=> b!4653129 (= e!2903085 (noDuplicateKeys!1632 (t!359110 oldBucket!40)))))

(assert (= (and d!1475256 (not res!1956086)) b!4653128))

(assert (= (and b!4653128 res!1956087) b!4653129))

(declare-fun m!5530371 () Bool)

(assert (=> b!4653128 m!5530371))

(declare-fun m!5530373 () Bool)

(assert (=> b!4653129 m!5530373))

(assert (=> start!468164 d!1475256))

(declare-fun b!4653148 () Bool)

(declare-fun e!2903103 () Unit!118036)

(declare-fun lt!1816566 () Unit!118036)

(assert (=> b!4653148 (= e!2903103 lt!1816566)))

(declare-fun lt!1816561 () Unit!118036)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (List!51998 K!13230) Unit!118036)

(assert (=> b!4653148 (= lt!1816561 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816241) key!4968))))

(declare-datatypes ((Option!11815 0))(
  ( (None!11814) (Some!11814 (v!46078 V!13476)) )
))
(declare-fun isDefined!9080 (Option!11815) Bool)

(declare-fun getValueByKey!1603 (List!51998 K!13230) Option!11815)

(assert (=> b!4653148 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816241) key!4968))))

(declare-fun lt!1816563 () Unit!118036)

(assert (=> b!4653148 (= lt!1816563 lt!1816561)))

(declare-fun lemmaInListThenGetKeysListContains!738 (List!51998 K!13230) Unit!118036)

(assert (=> b!4653148 (= lt!1816566 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816241) key!4968))))

(declare-fun call!325136 () Bool)

(assert (=> b!4653148 call!325136))

(declare-fun b!4653149 () Bool)

(declare-datatypes ((List!52001 0))(
  ( (Nil!51877) (Cons!51877 (h!58017 K!13230) (t!359115 List!52001)) )
))
(declare-fun e!2903101 () List!52001)

(declare-fun getKeysList!743 (List!51998) List!52001)

(assert (=> b!4653149 (= e!2903101 (getKeysList!743 (toList!5195 lt!1816241)))))

(declare-fun b!4653150 () Bool)

(declare-fun e!2903100 () Unit!118036)

(assert (=> b!4653150 (= e!2903103 e!2903100)))

(declare-fun c!796419 () Bool)

(assert (=> b!4653150 (= c!796419 call!325136)))

(declare-fun b!4653151 () Bool)

(declare-fun e!2903098 () Bool)

(declare-fun contains!15021 (List!52001 K!13230) Bool)

(declare-fun keys!18370 (ListMap!4533) List!52001)

(assert (=> b!4653151 (= e!2903098 (contains!15021 (keys!18370 lt!1816241) key!4968))))

(declare-fun b!4653152 () Bool)

(declare-fun e!2903099 () Bool)

(assert (=> b!4653152 (= e!2903099 e!2903098)))

(declare-fun res!1956095 () Bool)

(assert (=> b!4653152 (=> (not res!1956095) (not e!2903098))))

(assert (=> b!4653152 (= res!1956095 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816241) key!4968)))))

(declare-fun bm!325131 () Bool)

(assert (=> bm!325131 (= call!325136 (contains!15021 e!2903101 key!4968))))

(declare-fun c!796418 () Bool)

(declare-fun c!796420 () Bool)

(assert (=> bm!325131 (= c!796418 c!796420)))

(declare-fun b!4653153 () Bool)

(assert (=> b!4653153 (= e!2903101 (keys!18370 lt!1816241))))

(declare-fun b!4653154 () Bool)

(assert (=> b!4653154 false))

(declare-fun lt!1816567 () Unit!118036)

(declare-fun lt!1816565 () Unit!118036)

(assert (=> b!4653154 (= lt!1816567 lt!1816565)))

(declare-fun containsKey!2711 (List!51998 K!13230) Bool)

(assert (=> b!4653154 (containsKey!2711 (toList!5195 lt!1816241) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!742 (List!51998 K!13230) Unit!118036)

(assert (=> b!4653154 (= lt!1816565 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816241) key!4968))))

(declare-fun Unit!118103 () Unit!118036)

(assert (=> b!4653154 (= e!2903100 Unit!118103)))

(declare-fun d!1475260 () Bool)

(assert (=> d!1475260 e!2903099))

(declare-fun res!1956096 () Bool)

(assert (=> d!1475260 (=> res!1956096 e!2903099)))

(declare-fun e!2903102 () Bool)

(assert (=> d!1475260 (= res!1956096 e!2903102)))

(declare-fun res!1956094 () Bool)

(assert (=> d!1475260 (=> (not res!1956094) (not e!2903102))))

(declare-fun lt!1816568 () Bool)

(assert (=> d!1475260 (= res!1956094 (not lt!1816568))))

(declare-fun lt!1816562 () Bool)

(assert (=> d!1475260 (= lt!1816568 lt!1816562)))

(declare-fun lt!1816564 () Unit!118036)

(assert (=> d!1475260 (= lt!1816564 e!2903103)))

(assert (=> d!1475260 (= c!796420 lt!1816562)))

(assert (=> d!1475260 (= lt!1816562 (containsKey!2711 (toList!5195 lt!1816241) key!4968))))

(assert (=> d!1475260 (= (contains!15019 lt!1816241 key!4968) lt!1816568)))

(declare-fun b!4653155 () Bool)

(declare-fun Unit!118107 () Unit!118036)

(assert (=> b!4653155 (= e!2903100 Unit!118107)))

(declare-fun b!4653156 () Bool)

(assert (=> b!4653156 (= e!2903102 (not (contains!15021 (keys!18370 lt!1816241) key!4968)))))

(assert (= (and d!1475260 c!796420) b!4653148))

(assert (= (and d!1475260 (not c!796420)) b!4653150))

(assert (= (and b!4653150 c!796419) b!4653154))

(assert (= (and b!4653150 (not c!796419)) b!4653155))

(assert (= (or b!4653148 b!4653150) bm!325131))

(assert (= (and bm!325131 c!796418) b!4653149))

(assert (= (and bm!325131 (not c!796418)) b!4653153))

(assert (= (and d!1475260 res!1956094) b!4653156))

(assert (= (and d!1475260 (not res!1956096)) b!4653152))

(assert (= (and b!4653152 res!1956095) b!4653151))

(declare-fun m!5530375 () Bool)

(assert (=> b!4653156 m!5530375))

(assert (=> b!4653156 m!5530375))

(declare-fun m!5530377 () Bool)

(assert (=> b!4653156 m!5530377))

(declare-fun m!5530379 () Bool)

(assert (=> b!4653148 m!5530379))

(declare-fun m!5530381 () Bool)

(assert (=> b!4653148 m!5530381))

(assert (=> b!4653148 m!5530381))

(declare-fun m!5530383 () Bool)

(assert (=> b!4653148 m!5530383))

(declare-fun m!5530385 () Bool)

(assert (=> b!4653148 m!5530385))

(declare-fun m!5530387 () Bool)

(assert (=> bm!325131 m!5530387))

(assert (=> b!4653153 m!5530375))

(declare-fun m!5530389 () Bool)

(assert (=> d!1475260 m!5530389))

(assert (=> b!4653154 m!5530389))

(declare-fun m!5530391 () Bool)

(assert (=> b!4653154 m!5530391))

(assert (=> b!4653152 m!5530381))

(assert (=> b!4653152 m!5530381))

(assert (=> b!4653152 m!5530383))

(assert (=> b!4653151 m!5530375))

(assert (=> b!4653151 m!5530375))

(assert (=> b!4653151 m!5530377))

(declare-fun m!5530393 () Bool)

(assert (=> b!4653149 m!5530393))

(assert (=> b!4652950 d!1475260))

(declare-fun bs!1061844 () Bool)

(declare-fun d!1475262 () Bool)

(assert (= bs!1061844 (and d!1475262 b!4652954)))

(declare-fun lambda!198830 () Int)

(assert (=> bs!1061844 (= lambda!198830 lambda!198730)))

(declare-fun lt!1816571 () ListMap!4533)

(assert (=> d!1475262 (invariantList!1292 (toList!5195 lt!1816571))))

(declare-fun e!2903106 () ListMap!4533)

(assert (=> d!1475262 (= lt!1816571 e!2903106)))

(declare-fun c!796423 () Bool)

(assert (=> d!1475262 (= c!796423 ((_ is Cons!51875) (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))))

(assert (=> d!1475262 (forall!11008 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875) lambda!198830)))

(assert (=> d!1475262 (= (extractMap!1688 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)) lt!1816571)))

(declare-fun b!4653161 () Bool)

(assert (=> b!4653161 (= e!2903106 (addToMapMapFromBucket!1089 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))))))

(declare-fun b!4653162 () Bool)

(assert (=> b!4653162 (= e!2903106 (ListMap!4534 Nil!51874))))

(assert (= (and d!1475262 c!796423) b!4653161))

(assert (= (and d!1475262 (not c!796423)) b!4653162))

(declare-fun m!5530395 () Bool)

(assert (=> d!1475262 m!5530395))

(declare-fun m!5530397 () Bool)

(assert (=> d!1475262 m!5530397))

(declare-fun m!5530399 () Bool)

(assert (=> b!4653161 m!5530399))

(assert (=> b!4653161 m!5530399))

(declare-fun m!5530401 () Bool)

(assert (=> b!4653161 m!5530401))

(assert (=> b!4652950 d!1475262))

(declare-fun d!1475264 () Bool)

(declare-fun res!1956097 () Bool)

(declare-fun e!2903107 () Bool)

(assert (=> d!1475264 (=> res!1956097 e!2903107)))

(assert (=> d!1475264 (= res!1956097 (not ((_ is Cons!51874) newBucket!224)))))

(assert (=> d!1475264 (= (noDuplicateKeys!1632 newBucket!224) e!2903107)))

(declare-fun b!4653163 () Bool)

(declare-fun e!2903108 () Bool)

(assert (=> b!4653163 (= e!2903107 e!2903108)))

(declare-fun res!1956098 () Bool)

(assert (=> b!4653163 (=> (not res!1956098) (not e!2903108))))

(assert (=> b!4653163 (= res!1956098 (not (containsKey!2708 (t!359110 newBucket!224) (_1!29781 (h!58012 newBucket!224)))))))

(declare-fun b!4653164 () Bool)

(assert (=> b!4653164 (= e!2903108 (noDuplicateKeys!1632 (t!359110 newBucket!224)))))

(assert (= (and d!1475264 (not res!1956097)) b!4653163))

(assert (= (and b!4653163 res!1956098) b!4653164))

(declare-fun m!5530403 () Bool)

(assert (=> b!4653163 m!5530403))

(declare-fun m!5530405 () Bool)

(assert (=> b!4653164 m!5530405))

(assert (=> b!4652951 d!1475264))

(declare-fun d!1475266 () Bool)

(declare-fun res!1956103 () Bool)

(declare-fun e!2903113 () Bool)

(assert (=> d!1475266 (=> res!1956103 e!2903113)))

(assert (=> d!1475266 (= res!1956103 (and ((_ is Cons!51874) (apply!12245 lt!1816244 lt!1816240)) (= (_1!29781 (h!58012 (apply!12245 lt!1816244 lt!1816240))) key!4968)))))

(assert (=> d!1475266 (= (containsKey!2708 (apply!12245 lt!1816244 lt!1816240) key!4968) e!2903113)))

(declare-fun b!4653169 () Bool)

(declare-fun e!2903114 () Bool)

(assert (=> b!4653169 (= e!2903113 e!2903114)))

(declare-fun res!1956104 () Bool)

(assert (=> b!4653169 (=> (not res!1956104) (not e!2903114))))

(assert (=> b!4653169 (= res!1956104 ((_ is Cons!51874) (apply!12245 lt!1816244 lt!1816240)))))

(declare-fun b!4653170 () Bool)

(assert (=> b!4653170 (= e!2903114 (containsKey!2708 (t!359110 (apply!12245 lt!1816244 lt!1816240)) key!4968))))

(assert (= (and d!1475266 (not res!1956103)) b!4653169))

(assert (= (and b!4653169 res!1956104) b!4653170))

(declare-fun m!5530407 () Bool)

(assert (=> b!4653170 m!5530407))

(assert (=> b!4652962 d!1475266))

(declare-fun d!1475268 () Bool)

(declare-datatypes ((Option!11816 0))(
  ( (None!11815) (Some!11815 (v!46079 List!51998)) )
))
(declare-fun get!17262 (Option!11816) List!51998)

(declare-fun getValueByKey!1604 (List!51999 (_ BitVec 64)) Option!11816)

(assert (=> d!1475268 (= (apply!12245 lt!1816244 lt!1816240) (get!17262 (getValueByKey!1604 (toList!5196 lt!1816244) lt!1816240)))))

(declare-fun bs!1061845 () Bool)

(assert (= bs!1061845 d!1475268))

(declare-fun m!5530409 () Bool)

(assert (=> bs!1061845 m!5530409))

(assert (=> bs!1061845 m!5530409))

(declare-fun m!5530411 () Bool)

(assert (=> bs!1061845 m!5530411))

(assert (=> b!4652962 d!1475268))

(declare-fun bs!1061846 () Bool)

(declare-fun d!1475270 () Bool)

(assert (= bs!1061846 (and d!1475270 b!4653105)))

(declare-fun lambda!198833 () Int)

(assert (=> bs!1061846 (not (= lambda!198833 lambda!198820))))

(declare-fun bs!1061847 () Bool)

(assert (= bs!1061847 (and d!1475270 b!4653112)))

(assert (=> bs!1061847 (not (= lambda!198833 lambda!198825))))

(assert (=> bs!1061846 (not (= lambda!198833 lambda!198818))))

(declare-fun bs!1061848 () Bool)

(assert (= bs!1061848 (and d!1475270 b!4653111)))

(assert (=> bs!1061848 (not (= lambda!198833 lambda!198824))))

(declare-fun bs!1061849 () Bool)

(assert (= bs!1061849 (and d!1475270 d!1475200)))

(assert (=> bs!1061849 (not (= lambda!198833 lambda!198821))))

(declare-fun bs!1061850 () Bool)

(assert (= bs!1061850 (and d!1475270 b!4653104)))

(assert (=> bs!1061850 (not (= lambda!198833 lambda!198817))))

(declare-fun bs!1061851 () Bool)

(assert (= bs!1061851 (and d!1475270 d!1475248)))

(assert (=> bs!1061851 (not (= lambda!198833 lambda!198827))))

(assert (=> bs!1061847 (not (= lambda!198833 lambda!198826))))

(assert (=> d!1475270 true))

(assert (=> d!1475270 true))

(assert (=> d!1475270 (= (allKeysSameHash!1486 oldBucket!40 hash!414 hashF!1389) (forall!11010 oldBucket!40 lambda!198833))))

(declare-fun bs!1061852 () Bool)

(assert (= bs!1061852 d!1475270))

(declare-fun m!5530413 () Bool)

(assert (=> bs!1061852 m!5530413))

(assert (=> b!4652958 d!1475270))

(declare-fun bs!1061853 () Bool)

(declare-fun b!4653177 () Bool)

(assert (= bs!1061853 (and b!4653177 d!1475270)))

(declare-fun lambda!198834 () Int)

(assert (=> bs!1061853 (not (= lambda!198834 lambda!198833))))

(declare-fun bs!1061854 () Bool)

(assert (= bs!1061854 (and b!4653177 b!4653105)))

(assert (=> bs!1061854 (= (= lt!1816243 lt!1816505) (= lambda!198834 lambda!198820))))

(declare-fun bs!1061855 () Bool)

(assert (= bs!1061855 (and b!4653177 b!4653112)))

(assert (=> bs!1061855 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198834 lambda!198825))))

(assert (=> bs!1061854 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198834 lambda!198818))))

(declare-fun bs!1061856 () Bool)

(assert (= bs!1061856 (and b!4653177 b!4653111)))

(assert (=> bs!1061856 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198834 lambda!198824))))

(declare-fun bs!1061857 () Bool)

(assert (= bs!1061857 (and b!4653177 d!1475200)))

(assert (=> bs!1061857 (= (= lt!1816243 lt!1816499) (= lambda!198834 lambda!198821))))

(declare-fun bs!1061858 () Bool)

(assert (= bs!1061858 (and b!4653177 b!4653104)))

(assert (=> bs!1061858 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198834 lambda!198817))))

(declare-fun bs!1061859 () Bool)

(assert (= bs!1061859 (and b!4653177 d!1475248)))

(assert (=> bs!1061859 (= (= lt!1816243 lt!1816520) (= lambda!198834 lambda!198827))))

(assert (=> bs!1061855 (= (= lt!1816243 lt!1816526) (= lambda!198834 lambda!198826))))

(assert (=> b!4653177 true))

(declare-fun bs!1061860 () Bool)

(declare-fun b!4653178 () Bool)

(assert (= bs!1061860 (and b!4653178 d!1475270)))

(declare-fun lambda!198835 () Int)

(assert (=> bs!1061860 (not (= lambda!198835 lambda!198833))))

(declare-fun bs!1061861 () Bool)

(assert (= bs!1061861 (and b!4653178 b!4653105)))

(assert (=> bs!1061861 (= (= lt!1816243 lt!1816505) (= lambda!198835 lambda!198820))))

(declare-fun bs!1061862 () Bool)

(assert (= bs!1061862 (and b!4653178 b!4653112)))

(assert (=> bs!1061862 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198835 lambda!198825))))

(assert (=> bs!1061861 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198835 lambda!198818))))

(declare-fun bs!1061863 () Bool)

(assert (= bs!1061863 (and b!4653178 b!4653177)))

(assert (=> bs!1061863 (= lambda!198835 lambda!198834)))

(declare-fun bs!1061864 () Bool)

(assert (= bs!1061864 (and b!4653178 b!4653111)))

(assert (=> bs!1061864 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198835 lambda!198824))))

(declare-fun bs!1061865 () Bool)

(assert (= bs!1061865 (and b!4653178 d!1475200)))

(assert (=> bs!1061865 (= (= lt!1816243 lt!1816499) (= lambda!198835 lambda!198821))))

(declare-fun bs!1061866 () Bool)

(assert (= bs!1061866 (and b!4653178 b!4653104)))

(assert (=> bs!1061866 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198835 lambda!198817))))

(declare-fun bs!1061867 () Bool)

(assert (= bs!1061867 (and b!4653178 d!1475248)))

(assert (=> bs!1061867 (= (= lt!1816243 lt!1816520) (= lambda!198835 lambda!198827))))

(assert (=> bs!1061862 (= (= lt!1816243 lt!1816526) (= lambda!198835 lambda!198826))))

(assert (=> b!4653178 true))

(declare-fun lt!1816578 () ListMap!4533)

(declare-fun lambda!198836 () Int)

(assert (=> b!4653178 (= (= lt!1816578 lt!1816243) (= lambda!198836 lambda!198835))))

(assert (=> bs!1061860 (not (= lambda!198836 lambda!198833))))

(assert (=> bs!1061861 (= (= lt!1816578 lt!1816505) (= lambda!198836 lambda!198820))))

(assert (=> bs!1061862 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198836 lambda!198825))))

(assert (=> bs!1061861 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198836 lambda!198818))))

(assert (=> bs!1061863 (= (= lt!1816578 lt!1816243) (= lambda!198836 lambda!198834))))

(assert (=> bs!1061864 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198836 lambda!198824))))

(assert (=> bs!1061865 (= (= lt!1816578 lt!1816499) (= lambda!198836 lambda!198821))))

(assert (=> bs!1061866 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198836 lambda!198817))))

(assert (=> bs!1061867 (= (= lt!1816578 lt!1816520) (= lambda!198836 lambda!198827))))

(assert (=> bs!1061862 (= (= lt!1816578 lt!1816526) (= lambda!198836 lambda!198826))))

(assert (=> b!4653178 true))

(declare-fun bs!1061868 () Bool)

(declare-fun d!1475272 () Bool)

(assert (= bs!1061868 (and d!1475272 b!4653178)))

(declare-fun lambda!198837 () Int)

(declare-fun lt!1816572 () ListMap!4533)

(assert (=> bs!1061868 (= (= lt!1816572 lt!1816243) (= lambda!198837 lambda!198835))))

(assert (=> bs!1061868 (= (= lt!1816572 lt!1816578) (= lambda!198837 lambda!198836))))

(declare-fun bs!1061869 () Bool)

(assert (= bs!1061869 (and d!1475272 d!1475270)))

(assert (=> bs!1061869 (not (= lambda!198837 lambda!198833))))

(declare-fun bs!1061870 () Bool)

(assert (= bs!1061870 (and d!1475272 b!4653105)))

(assert (=> bs!1061870 (= (= lt!1816572 lt!1816505) (= lambda!198837 lambda!198820))))

(declare-fun bs!1061871 () Bool)

(assert (= bs!1061871 (and d!1475272 b!4653112)))

(assert (=> bs!1061871 (= (= lt!1816572 (ListMap!4534 Nil!51874)) (= lambda!198837 lambda!198825))))

(assert (=> bs!1061870 (= (= lt!1816572 (ListMap!4534 Nil!51874)) (= lambda!198837 lambda!198818))))

(declare-fun bs!1061872 () Bool)

(assert (= bs!1061872 (and d!1475272 b!4653177)))

(assert (=> bs!1061872 (= (= lt!1816572 lt!1816243) (= lambda!198837 lambda!198834))))

(declare-fun bs!1061873 () Bool)

(assert (= bs!1061873 (and d!1475272 b!4653111)))

(assert (=> bs!1061873 (= (= lt!1816572 (ListMap!4534 Nil!51874)) (= lambda!198837 lambda!198824))))

(declare-fun bs!1061874 () Bool)

(assert (= bs!1061874 (and d!1475272 d!1475200)))

(assert (=> bs!1061874 (= (= lt!1816572 lt!1816499) (= lambda!198837 lambda!198821))))

(declare-fun bs!1061875 () Bool)

(assert (= bs!1061875 (and d!1475272 b!4653104)))

(assert (=> bs!1061875 (= (= lt!1816572 (ListMap!4534 Nil!51874)) (= lambda!198837 lambda!198817))))

(declare-fun bs!1061876 () Bool)

(assert (= bs!1061876 (and d!1475272 d!1475248)))

(assert (=> bs!1061876 (= (= lt!1816572 lt!1816520) (= lambda!198837 lambda!198827))))

(assert (=> bs!1061871 (= (= lt!1816572 lt!1816526) (= lambda!198837 lambda!198826))))

(assert (=> d!1475272 true))

(declare-fun b!4653175 () Bool)

(declare-fun res!1956107 () Bool)

(declare-fun e!2903115 () Bool)

(assert (=> b!4653175 (=> (not res!1956107) (not e!2903115))))

(assert (=> b!4653175 (= res!1956107 (forall!11010 (toList!5195 lt!1816243) lambda!198837))))

(declare-fun b!4653176 () Bool)

(assert (=> b!4653176 (= e!2903115 (invariantList!1292 (toList!5195 lt!1816572)))))

(declare-fun e!2903116 () ListMap!4533)

(assert (=> b!4653177 (= e!2903116 lt!1816243)))

(declare-fun lt!1816580 () Unit!118036)

(declare-fun call!325138 () Unit!118036)

(assert (=> b!4653177 (= lt!1816580 call!325138)))

(declare-fun call!325137 () Bool)

(assert (=> b!4653177 call!325137))

(declare-fun lt!1816589 () Unit!118036)

(assert (=> b!4653177 (= lt!1816589 lt!1816580)))

(declare-fun call!325139 () Bool)

(assert (=> b!4653177 call!325139))

(declare-fun lt!1816575 () Unit!118036)

(declare-fun Unit!118109 () Unit!118036)

(assert (=> b!4653177 (= lt!1816575 Unit!118109)))

(declare-fun c!796424 () Bool)

(declare-fun bm!325132 () Bool)

(assert (=> bm!325132 (= call!325139 (forall!11010 (toList!5195 lt!1816243) (ite c!796424 lambda!198834 lambda!198836)))))

(assert (=> b!4653178 (= e!2903116 lt!1816578)))

(declare-fun lt!1816581 () ListMap!4533)

(assert (=> b!4653178 (= lt!1816581 (+!1976 lt!1816243 (h!58012 oldBucket!40)))))

(assert (=> b!4653178 (= lt!1816578 (addToMapMapFromBucket!1089 (t!359110 oldBucket!40) (+!1976 lt!1816243 (h!58012 oldBucket!40))))))

(declare-fun lt!1816584 () Unit!118036)

(assert (=> b!4653178 (= lt!1816584 call!325138)))

(assert (=> b!4653178 call!325137))

(declare-fun lt!1816583 () Unit!118036)

(assert (=> b!4653178 (= lt!1816583 lt!1816584)))

(assert (=> b!4653178 (forall!11010 (toList!5195 lt!1816581) lambda!198836)))

(declare-fun lt!1816585 () Unit!118036)

(declare-fun Unit!118110 () Unit!118036)

(assert (=> b!4653178 (= lt!1816585 Unit!118110)))

(assert (=> b!4653178 (forall!11010 (t!359110 oldBucket!40) lambda!198836)))

(declare-fun lt!1816576 () Unit!118036)

(declare-fun Unit!118111 () Unit!118036)

(assert (=> b!4653178 (= lt!1816576 Unit!118111)))

(declare-fun lt!1816582 () Unit!118036)

(declare-fun Unit!118112 () Unit!118036)

(assert (=> b!4653178 (= lt!1816582 Unit!118112)))

(declare-fun lt!1816574 () Unit!118036)

(assert (=> b!4653178 (= lt!1816574 (forallContained!3216 (toList!5195 lt!1816581) lambda!198836 (h!58012 oldBucket!40)))))

(assert (=> b!4653178 (contains!15019 lt!1816581 (_1!29781 (h!58012 oldBucket!40)))))

(declare-fun lt!1816586 () Unit!118036)

(declare-fun Unit!118113 () Unit!118036)

(assert (=> b!4653178 (= lt!1816586 Unit!118113)))

(assert (=> b!4653178 (contains!15019 lt!1816578 (_1!29781 (h!58012 oldBucket!40)))))

(declare-fun lt!1816590 () Unit!118036)

(declare-fun Unit!118114 () Unit!118036)

(assert (=> b!4653178 (= lt!1816590 Unit!118114)))

(assert (=> b!4653178 (forall!11010 oldBucket!40 lambda!198836)))

(declare-fun lt!1816592 () Unit!118036)

(declare-fun Unit!118115 () Unit!118036)

(assert (=> b!4653178 (= lt!1816592 Unit!118115)))

(assert (=> b!4653178 (forall!11010 (toList!5195 lt!1816581) lambda!198836)))

(declare-fun lt!1816587 () Unit!118036)

(declare-fun Unit!118116 () Unit!118036)

(assert (=> b!4653178 (= lt!1816587 Unit!118116)))

(declare-fun lt!1816588 () Unit!118036)

(declare-fun Unit!118117 () Unit!118036)

(assert (=> b!4653178 (= lt!1816588 Unit!118117)))

(declare-fun lt!1816579 () Unit!118036)

(assert (=> b!4653178 (= lt!1816579 (addForallContainsKeyThenBeforeAdding!591 lt!1816243 lt!1816578 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> b!4653178 call!325139))

(declare-fun lt!1816573 () Unit!118036)

(assert (=> b!4653178 (= lt!1816573 lt!1816579)))

(assert (=> b!4653178 (forall!11010 (toList!5195 lt!1816243) lambda!198836)))

(declare-fun lt!1816577 () Unit!118036)

(declare-fun Unit!118118 () Unit!118036)

(assert (=> b!4653178 (= lt!1816577 Unit!118118)))

(declare-fun res!1956106 () Bool)

(assert (=> b!4653178 (= res!1956106 (forall!11010 oldBucket!40 lambda!198836))))

(declare-fun e!2903117 () Bool)

(assert (=> b!4653178 (=> (not res!1956106) (not e!2903117))))

(assert (=> b!4653178 e!2903117))

(declare-fun lt!1816591 () Unit!118036)

(declare-fun Unit!118119 () Unit!118036)

(assert (=> b!4653178 (= lt!1816591 Unit!118119)))

(assert (=> d!1475272 e!2903115))

(declare-fun res!1956105 () Bool)

(assert (=> d!1475272 (=> (not res!1956105) (not e!2903115))))

(assert (=> d!1475272 (= res!1956105 (forall!11010 oldBucket!40 lambda!198837))))

(assert (=> d!1475272 (= lt!1816572 e!2903116)))

(assert (=> d!1475272 (= c!796424 ((_ is Nil!51874) oldBucket!40))))

(assert (=> d!1475272 (noDuplicateKeys!1632 oldBucket!40)))

(assert (=> d!1475272 (= (addToMapMapFromBucket!1089 oldBucket!40 lt!1816243) lt!1816572)))

(declare-fun bm!325133 () Bool)

(assert (=> bm!325133 (= call!325137 (forall!11010 (toList!5195 lt!1816243) (ite c!796424 lambda!198834 lambda!198835)))))

(declare-fun bm!325134 () Bool)

(assert (=> bm!325134 (= call!325138 (lemmaContainsAllItsOwnKeys!592 lt!1816243))))

(declare-fun b!4653179 () Bool)

(assert (=> b!4653179 (= e!2903117 (forall!11010 (toList!5195 lt!1816243) lambda!198836))))

(assert (= (and d!1475272 c!796424) b!4653177))

(assert (= (and d!1475272 (not c!796424)) b!4653178))

(assert (= (and b!4653178 res!1956106) b!4653179))

(assert (= (or b!4653177 b!4653178) bm!325134))

(assert (= (or b!4653177 b!4653178) bm!325133))

(assert (= (or b!4653177 b!4653178) bm!325132))

(assert (= (and d!1475272 res!1956105) b!4653175))

(assert (= (and b!4653175 res!1956107) b!4653176))

(declare-fun m!5530415 () Bool)

(assert (=> d!1475272 m!5530415))

(assert (=> d!1475272 m!5530009))

(declare-fun m!5530417 () Bool)

(assert (=> bm!325133 m!5530417))

(declare-fun m!5530419 () Bool)

(assert (=> b!4653176 m!5530419))

(declare-fun m!5530421 () Bool)

(assert (=> b!4653175 m!5530421))

(declare-fun m!5530423 () Bool)

(assert (=> bm!325134 m!5530423))

(declare-fun m!5530425 () Bool)

(assert (=> bm!325132 m!5530425))

(declare-fun m!5530427 () Bool)

(assert (=> b!4653179 m!5530427))

(declare-fun m!5530429 () Bool)

(assert (=> b!4653178 m!5530429))

(declare-fun m!5530431 () Bool)

(assert (=> b!4653178 m!5530431))

(assert (=> b!4653178 m!5530431))

(declare-fun m!5530433 () Bool)

(assert (=> b!4653178 m!5530433))

(declare-fun m!5530435 () Bool)

(assert (=> b!4653178 m!5530435))

(declare-fun m!5530437 () Bool)

(assert (=> b!4653178 m!5530437))

(assert (=> b!4653178 m!5530435))

(declare-fun m!5530439 () Bool)

(assert (=> b!4653178 m!5530439))

(declare-fun m!5530441 () Bool)

(assert (=> b!4653178 m!5530441))

(declare-fun m!5530443 () Bool)

(assert (=> b!4653178 m!5530443))

(assert (=> b!4653178 m!5530427))

(declare-fun m!5530445 () Bool)

(assert (=> b!4653178 m!5530445))

(assert (=> b!4653178 m!5530439))

(assert (=> b!4652959 d!1475272))

(declare-fun bs!1061877 () Bool)

(declare-fun d!1475274 () Bool)

(assert (= bs!1061877 (and d!1475274 b!4652954)))

(declare-fun lambda!198838 () Int)

(assert (=> bs!1061877 (= lambda!198838 lambda!198730)))

(declare-fun bs!1061878 () Bool)

(assert (= bs!1061878 (and d!1475274 d!1475262)))

(assert (=> bs!1061878 (= lambda!198838 lambda!198830)))

(declare-fun lt!1816593 () ListMap!4533)

(assert (=> d!1475274 (invariantList!1292 (toList!5195 lt!1816593))))

(declare-fun e!2903118 () ListMap!4533)

(assert (=> d!1475274 (= lt!1816593 e!2903118)))

(declare-fun c!796425 () Bool)

(assert (=> d!1475274 (= c!796425 ((_ is Cons!51875) Nil!51875))))

(assert (=> d!1475274 (forall!11008 Nil!51875 lambda!198838)))

(assert (=> d!1475274 (= (extractMap!1688 Nil!51875) lt!1816593)))

(declare-fun b!4653180 () Bool)

(assert (=> b!4653180 (= e!2903118 (addToMapMapFromBucket!1089 (_2!29782 (h!58013 Nil!51875)) (extractMap!1688 (t!359111 Nil!51875))))))

(declare-fun b!4653181 () Bool)

(assert (=> b!4653181 (= e!2903118 (ListMap!4534 Nil!51874))))

(assert (= (and d!1475274 c!796425) b!4653180))

(assert (= (and d!1475274 (not c!796425)) b!4653181))

(declare-fun m!5530447 () Bool)

(assert (=> d!1475274 m!5530447))

(declare-fun m!5530449 () Bool)

(assert (=> d!1475274 m!5530449))

(declare-fun m!5530451 () Bool)

(assert (=> b!4653180 m!5530451))

(assert (=> b!4653180 m!5530451))

(declare-fun m!5530453 () Bool)

(assert (=> b!4653180 m!5530453))

(assert (=> b!4652959 d!1475274))

(declare-fun d!1475276 () Bool)

(declare-fun e!2903124 () Bool)

(assert (=> d!1475276 e!2903124))

(declare-fun res!1956110 () Bool)

(assert (=> d!1475276 (=> res!1956110 e!2903124)))

(declare-fun lt!1816604 () Bool)

(assert (=> d!1475276 (= res!1956110 (not lt!1816604))))

(declare-fun lt!1816602 () Bool)

(assert (=> d!1475276 (= lt!1816604 lt!1816602)))

(declare-fun lt!1816605 () Unit!118036)

(declare-fun e!2903123 () Unit!118036)

(assert (=> d!1475276 (= lt!1816605 e!2903123)))

(declare-fun c!796428 () Bool)

(assert (=> d!1475276 (= c!796428 lt!1816602)))

(declare-fun containsKey!2712 (List!51999 (_ BitVec 64)) Bool)

(assert (=> d!1475276 (= lt!1816602 (containsKey!2712 (toList!5196 lt!1816244) lt!1816240))))

(assert (=> d!1475276 (= (contains!15018 lt!1816244 lt!1816240) lt!1816604)))

(declare-fun b!4653188 () Bool)

(declare-fun lt!1816603 () Unit!118036)

(assert (=> b!4653188 (= e!2903123 lt!1816603)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1506 (List!51999 (_ BitVec 64)) Unit!118036)

(assert (=> b!4653188 (= lt!1816603 (lemmaContainsKeyImpliesGetValueByKeyDefined!1506 (toList!5196 lt!1816244) lt!1816240))))

(declare-fun isDefined!9081 (Option!11816) Bool)

(assert (=> b!4653188 (isDefined!9081 (getValueByKey!1604 (toList!5196 lt!1816244) lt!1816240))))

(declare-fun b!4653189 () Bool)

(declare-fun Unit!118131 () Unit!118036)

(assert (=> b!4653189 (= e!2903123 Unit!118131)))

(declare-fun b!4653190 () Bool)

(assert (=> b!4653190 (= e!2903124 (isDefined!9081 (getValueByKey!1604 (toList!5196 lt!1816244) lt!1816240)))))

(assert (= (and d!1475276 c!796428) b!4653188))

(assert (= (and d!1475276 (not c!796428)) b!4653189))

(assert (= (and d!1475276 (not res!1956110)) b!4653190))

(declare-fun m!5530455 () Bool)

(assert (=> d!1475276 m!5530455))

(declare-fun m!5530457 () Bool)

(assert (=> b!4653188 m!5530457))

(assert (=> b!4653188 m!5530409))

(assert (=> b!4653188 m!5530409))

(declare-fun m!5530459 () Bool)

(assert (=> b!4653188 m!5530459))

(assert (=> b!4653190 m!5530409))

(assert (=> b!4653190 m!5530409))

(assert (=> b!4653190 m!5530459))

(assert (=> b!4652949 d!1475276))

(declare-fun d!1475278 () Bool)

(declare-fun res!1956111 () Bool)

(declare-fun e!2903125 () Bool)

(assert (=> d!1475278 (=> res!1956111 e!2903125)))

(assert (=> d!1475278 (= res!1956111 (and ((_ is Cons!51874) lt!1816247) (= (_1!29781 (h!58012 lt!1816247)) key!4968)))))

(assert (=> d!1475278 (= (containsKey!2708 lt!1816247 key!4968) e!2903125)))

(declare-fun b!4653191 () Bool)

(declare-fun e!2903126 () Bool)

(assert (=> b!4653191 (= e!2903125 e!2903126)))

(declare-fun res!1956112 () Bool)

(assert (=> b!4653191 (=> (not res!1956112) (not e!2903126))))

(assert (=> b!4653191 (= res!1956112 ((_ is Cons!51874) lt!1816247))))

(declare-fun b!4653192 () Bool)

(assert (=> b!4653192 (= e!2903126 (containsKey!2708 (t!359110 lt!1816247) key!4968))))

(assert (= (and d!1475278 (not res!1956111)) b!4653191))

(assert (= (and b!4653191 res!1956112) b!4653192))

(declare-fun m!5530461 () Bool)

(assert (=> b!4653192 m!5530461))

(assert (=> b!4652955 d!1475278))

(declare-fun d!1475280 () Bool)

(declare-fun hash!3765 (Hashable!6029 K!13230) (_ BitVec 64))

(assert (=> d!1475280 (= (hash!3763 hashF!1389 key!4968) (hash!3765 hashF!1389 key!4968))))

(declare-fun bs!1061879 () Bool)

(assert (= bs!1061879 d!1475280))

(declare-fun m!5530463 () Bool)

(assert (=> bs!1061879 m!5530463))

(assert (=> b!4652945 d!1475280))

(declare-fun b!4653201 () Bool)

(declare-fun e!2903131 () List!51998)

(assert (=> b!4653201 (= e!2903131 (t!359110 oldBucket!40))))

(declare-fun d!1475282 () Bool)

(declare-fun lt!1816608 () List!51998)

(assert (=> d!1475282 (not (containsKey!2708 lt!1816608 key!4968))))

(assert (=> d!1475282 (= lt!1816608 e!2903131)))

(declare-fun c!796433 () Bool)

(assert (=> d!1475282 (= c!796433 (and ((_ is Cons!51874) oldBucket!40) (= (_1!29781 (h!58012 oldBucket!40)) key!4968)))))

(assert (=> d!1475282 (noDuplicateKeys!1632 oldBucket!40)))

(assert (=> d!1475282 (= (removePairForKey!1255 oldBucket!40 key!4968) lt!1816608)))

(declare-fun b!4653202 () Bool)

(declare-fun e!2903132 () List!51998)

(assert (=> b!4653202 (= e!2903131 e!2903132)))

(declare-fun c!796434 () Bool)

(assert (=> b!4653202 (= c!796434 ((_ is Cons!51874) oldBucket!40))))

(declare-fun b!4653203 () Bool)

(assert (=> b!4653203 (= e!2903132 (Cons!51874 (h!58012 oldBucket!40) (removePairForKey!1255 (t!359110 oldBucket!40) key!4968)))))

(declare-fun b!4653204 () Bool)

(assert (=> b!4653204 (= e!2903132 Nil!51874)))

(assert (= (and d!1475282 c!796433) b!4653201))

(assert (= (and d!1475282 (not c!796433)) b!4653202))

(assert (= (and b!4653202 c!796434) b!4653203))

(assert (= (and b!4653202 (not c!796434)) b!4653204))

(declare-fun m!5530465 () Bool)

(assert (=> d!1475282 m!5530465))

(assert (=> d!1475282 m!5530009))

(declare-fun m!5530467 () Bool)

(assert (=> b!4653203 m!5530467))

(assert (=> b!4652956 d!1475282))

(declare-fun bs!1061880 () Bool)

(declare-fun d!1475284 () Bool)

(assert (= bs!1061880 (and d!1475284 b!4652954)))

(declare-fun lambda!198841 () Int)

(assert (=> bs!1061880 (not (= lambda!198841 lambda!198730))))

(declare-fun bs!1061881 () Bool)

(assert (= bs!1061881 (and d!1475284 d!1475262)))

(assert (=> bs!1061881 (not (= lambda!198841 lambda!198830))))

(declare-fun bs!1061882 () Bool)

(assert (= bs!1061882 (and d!1475284 d!1475274)))

(assert (=> bs!1061882 (not (= lambda!198841 lambda!198838))))

(assert (=> d!1475284 true))

(assert (=> d!1475284 (= (allKeysSameHashInMap!1596 lt!1816244 hashF!1389) (forall!11008 (toList!5196 lt!1816244) lambda!198841))))

(declare-fun bs!1061883 () Bool)

(assert (= bs!1061883 d!1475284))

(declare-fun m!5530469 () Bool)

(assert (=> bs!1061883 m!5530469))

(assert (=> b!4652957 d!1475284))

(declare-fun d!1475286 () Bool)

(assert (=> d!1475286 (= (tail!8247 oldBucket!40) (t!359110 oldBucket!40))))

(assert (=> b!4652946 d!1475286))

(declare-fun bs!1061884 () Bool)

(declare-fun d!1475288 () Bool)

(assert (= bs!1061884 (and d!1475288 b!4652954)))

(declare-fun lambda!198842 () Int)

(assert (=> bs!1061884 (= lambda!198842 lambda!198730)))

(declare-fun bs!1061885 () Bool)

(assert (= bs!1061885 (and d!1475288 d!1475262)))

(assert (=> bs!1061885 (= lambda!198842 lambda!198830)))

(declare-fun bs!1061886 () Bool)

(assert (= bs!1061886 (and d!1475288 d!1475274)))

(assert (=> bs!1061886 (= lambda!198842 lambda!198838)))

(declare-fun bs!1061887 () Bool)

(assert (= bs!1061887 (and d!1475288 d!1475284)))

(assert (=> bs!1061887 (not (= lambda!198842 lambda!198841))))

(declare-fun lt!1816609 () ListMap!4533)

(assert (=> d!1475288 (invariantList!1292 (toList!5195 lt!1816609))))

(declare-fun e!2903133 () ListMap!4533)

(assert (=> d!1475288 (= lt!1816609 e!2903133)))

(declare-fun c!796435 () Bool)

(assert (=> d!1475288 (= c!796435 ((_ is Cons!51875) (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))))

(assert (=> d!1475288 (forall!11008 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875) lambda!198842)))

(assert (=> d!1475288 (= (extractMap!1688 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)) lt!1816609)))

(declare-fun b!4653207 () Bool)

(assert (=> b!4653207 (= e!2903133 (addToMapMapFromBucket!1089 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))))))

(declare-fun b!4653208 () Bool)

(assert (=> b!4653208 (= e!2903133 (ListMap!4534 Nil!51874))))

(assert (= (and d!1475288 c!796435) b!4653207))

(assert (= (and d!1475288 (not c!796435)) b!4653208))

(declare-fun m!5530471 () Bool)

(assert (=> d!1475288 m!5530471))

(declare-fun m!5530473 () Bool)

(assert (=> d!1475288 m!5530473))

(declare-fun m!5530475 () Bool)

(assert (=> b!4653207 m!5530475))

(assert (=> b!4653207 m!5530475))

(declare-fun m!5530477 () Bool)

(assert (=> b!4653207 m!5530477))

(assert (=> b!4652952 d!1475288))

(declare-fun bs!1061888 () Bool)

(declare-fun d!1475290 () Bool)

(assert (= bs!1061888 (and d!1475290 d!1475284)))

(declare-fun lambda!198843 () Int)

(assert (=> bs!1061888 (not (= lambda!198843 lambda!198841))))

(declare-fun bs!1061889 () Bool)

(assert (= bs!1061889 (and d!1475290 d!1475262)))

(assert (=> bs!1061889 (= lambda!198843 lambda!198830)))

(declare-fun bs!1061890 () Bool)

(assert (= bs!1061890 (and d!1475290 d!1475274)))

(assert (=> bs!1061890 (= lambda!198843 lambda!198838)))

(declare-fun bs!1061891 () Bool)

(assert (= bs!1061891 (and d!1475290 d!1475288)))

(assert (=> bs!1061891 (= lambda!198843 lambda!198842)))

(declare-fun bs!1061892 () Bool)

(assert (= bs!1061892 (and d!1475290 b!4652954)))

(assert (=> bs!1061892 (= lambda!198843 lambda!198730)))

(declare-fun lt!1816610 () ListMap!4533)

(assert (=> d!1475290 (invariantList!1292 (toList!5195 lt!1816610))))

(declare-fun e!2903134 () ListMap!4533)

(assert (=> d!1475290 (= lt!1816610 e!2903134)))

(declare-fun c!796436 () Bool)

(assert (=> d!1475290 (= c!796436 ((_ is Cons!51875) lt!1816245))))

(assert (=> d!1475290 (forall!11008 lt!1816245 lambda!198843)))

(assert (=> d!1475290 (= (extractMap!1688 lt!1816245) lt!1816610)))

(declare-fun b!4653209 () Bool)

(assert (=> b!4653209 (= e!2903134 (addToMapMapFromBucket!1089 (_2!29782 (h!58013 lt!1816245)) (extractMap!1688 (t!359111 lt!1816245))))))

(declare-fun b!4653210 () Bool)

(assert (=> b!4653210 (= e!2903134 (ListMap!4534 Nil!51874))))

(assert (= (and d!1475290 c!796436) b!4653209))

(assert (= (and d!1475290 (not c!796436)) b!4653210))

(declare-fun m!5530479 () Bool)

(assert (=> d!1475290 m!5530479))

(declare-fun m!5530481 () Bool)

(assert (=> d!1475290 m!5530481))

(declare-fun m!5530483 () Bool)

(assert (=> b!4653209 m!5530483))

(assert (=> b!4653209 m!5530483))

(declare-fun m!5530485 () Bool)

(assert (=> b!4653209 m!5530485))

(assert (=> b!4652952 d!1475290))

(declare-fun bs!1061893 () Bool)

(declare-fun d!1475292 () Bool)

(assert (= bs!1061893 (and d!1475292 d!1475272)))

(declare-fun lambda!198844 () Int)

(assert (=> bs!1061893 (not (= lambda!198844 lambda!198837))))

(declare-fun bs!1061894 () Bool)

(assert (= bs!1061894 (and d!1475292 b!4653178)))

(assert (=> bs!1061894 (not (= lambda!198844 lambda!198835))))

(assert (=> bs!1061894 (not (= lambda!198844 lambda!198836))))

(declare-fun bs!1061895 () Bool)

(assert (= bs!1061895 (and d!1475292 d!1475270)))

(assert (=> bs!1061895 (= lambda!198844 lambda!198833)))

(declare-fun bs!1061896 () Bool)

(assert (= bs!1061896 (and d!1475292 b!4653105)))

(assert (=> bs!1061896 (not (= lambda!198844 lambda!198820))))

(declare-fun bs!1061897 () Bool)

(assert (= bs!1061897 (and d!1475292 b!4653112)))

(assert (=> bs!1061897 (not (= lambda!198844 lambda!198825))))

(assert (=> bs!1061896 (not (= lambda!198844 lambda!198818))))

(declare-fun bs!1061898 () Bool)

(assert (= bs!1061898 (and d!1475292 b!4653177)))

(assert (=> bs!1061898 (not (= lambda!198844 lambda!198834))))

(declare-fun bs!1061899 () Bool)

(assert (= bs!1061899 (and d!1475292 b!4653111)))

(assert (=> bs!1061899 (not (= lambda!198844 lambda!198824))))

(declare-fun bs!1061900 () Bool)

(assert (= bs!1061900 (and d!1475292 d!1475200)))

(assert (=> bs!1061900 (not (= lambda!198844 lambda!198821))))

(declare-fun bs!1061901 () Bool)

(assert (= bs!1061901 (and d!1475292 b!4653104)))

(assert (=> bs!1061901 (not (= lambda!198844 lambda!198817))))

(declare-fun bs!1061902 () Bool)

(assert (= bs!1061902 (and d!1475292 d!1475248)))

(assert (=> bs!1061902 (not (= lambda!198844 lambda!198827))))

(assert (=> bs!1061897 (not (= lambda!198844 lambda!198826))))

(assert (=> d!1475292 true))

(assert (=> d!1475292 true))

(assert (=> d!1475292 (= (allKeysSameHash!1486 newBucket!224 hash!414 hashF!1389) (forall!11010 newBucket!224 lambda!198844))))

(declare-fun bs!1061903 () Bool)

(assert (= bs!1061903 d!1475292))

(declare-fun m!5530487 () Bool)

(assert (=> bs!1061903 m!5530487))

(assert (=> b!4652953 d!1475292))

(declare-fun d!1475294 () Bool)

(declare-fun e!2903137 () Bool)

(assert (=> d!1475294 e!2903137))

(declare-fun res!1956117 () Bool)

(assert (=> d!1475294 (=> (not res!1956117) (not e!2903137))))

(declare-fun lt!1816620 () ListMap!4533)

(assert (=> d!1475294 (= res!1956117 (contains!15019 lt!1816620 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun lt!1816621 () List!51998)

(assert (=> d!1475294 (= lt!1816620 (ListMap!4534 lt!1816621))))

(declare-fun lt!1816622 () Unit!118036)

(declare-fun lt!1816619 () Unit!118036)

(assert (=> d!1475294 (= lt!1816622 lt!1816619)))

(assert (=> d!1475294 (= (getValueByKey!1603 lt!1816621 (_1!29781 (h!58012 oldBucket!40))) (Some!11814 (_2!29781 (h!58012 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!920 (List!51998 K!13230 V!13476) Unit!118036)

(assert (=> d!1475294 (= lt!1816619 (lemmaContainsTupThenGetReturnValue!920 lt!1816621 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!428 (List!51998 K!13230 V!13476) List!51998)

(assert (=> d!1475294 (= lt!1816621 (insertNoDuplicatedKeys!428 (toList!5195 lt!1816249) (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475294 (= (+!1976 lt!1816249 (h!58012 oldBucket!40)) lt!1816620)))

(declare-fun b!4653215 () Bool)

(declare-fun res!1956118 () Bool)

(assert (=> b!4653215 (=> (not res!1956118) (not e!2903137))))

(assert (=> b!4653215 (= res!1956118 (= (getValueByKey!1603 (toList!5195 lt!1816620) (_1!29781 (h!58012 oldBucket!40))) (Some!11814 (_2!29781 (h!58012 oldBucket!40)))))))

(declare-fun b!4653216 () Bool)

(declare-fun contains!15023 (List!51998 tuple2!52974) Bool)

(assert (=> b!4653216 (= e!2903137 (contains!15023 (toList!5195 lt!1816620) (h!58012 oldBucket!40)))))

(assert (= (and d!1475294 res!1956117) b!4653215))

(assert (= (and b!4653215 res!1956118) b!4653216))

(declare-fun m!5530489 () Bool)

(assert (=> d!1475294 m!5530489))

(declare-fun m!5530491 () Bool)

(assert (=> d!1475294 m!5530491))

(declare-fun m!5530493 () Bool)

(assert (=> d!1475294 m!5530493))

(declare-fun m!5530495 () Bool)

(assert (=> d!1475294 m!5530495))

(declare-fun m!5530497 () Bool)

(assert (=> b!4653215 m!5530497))

(declare-fun m!5530499 () Bool)

(assert (=> b!4653216 m!5530499))

(assert (=> b!4652943 d!1475294))

(declare-fun d!1475296 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8989 (List!51998) (InoxSet tuple2!52974))

(assert (=> d!1475296 (= (eq!911 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)) (+!1976 lt!1816249 lt!1816246)) (= (content!8989 (toList!5195 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)))) (content!8989 (toList!5195 (+!1976 lt!1816249 lt!1816246)))))))

(declare-fun bs!1061904 () Bool)

(assert (= bs!1061904 d!1475296))

(declare-fun m!5530501 () Bool)

(assert (=> bs!1061904 m!5530501))

(declare-fun m!5530503 () Bool)

(assert (=> bs!1061904 m!5530503))

(assert (=> b!4652943 d!1475296))

(declare-fun d!1475298 () Bool)

(declare-fun e!2903138 () Bool)

(assert (=> d!1475298 e!2903138))

(declare-fun res!1956119 () Bool)

(assert (=> d!1475298 (=> (not res!1956119) (not e!2903138))))

(declare-fun lt!1816624 () ListMap!4533)

(assert (=> d!1475298 (= res!1956119 (contains!15019 lt!1816624 (_1!29781 lt!1816246)))))

(declare-fun lt!1816625 () List!51998)

(assert (=> d!1475298 (= lt!1816624 (ListMap!4534 lt!1816625))))

(declare-fun lt!1816626 () Unit!118036)

(declare-fun lt!1816623 () Unit!118036)

(assert (=> d!1475298 (= lt!1816626 lt!1816623)))

(assert (=> d!1475298 (= (getValueByKey!1603 lt!1816625 (_1!29781 lt!1816246)) (Some!11814 (_2!29781 lt!1816246)))))

(assert (=> d!1475298 (= lt!1816623 (lemmaContainsTupThenGetReturnValue!920 lt!1816625 (_1!29781 lt!1816246) (_2!29781 lt!1816246)))))

(assert (=> d!1475298 (= lt!1816625 (insertNoDuplicatedKeys!428 (toList!5195 lt!1816249) (_1!29781 lt!1816246) (_2!29781 lt!1816246)))))

(assert (=> d!1475298 (= (+!1976 lt!1816249 lt!1816246) lt!1816624)))

(declare-fun b!4653217 () Bool)

(declare-fun res!1956120 () Bool)

(assert (=> b!4653217 (=> (not res!1956120) (not e!2903138))))

(assert (=> b!4653217 (= res!1956120 (= (getValueByKey!1603 (toList!5195 lt!1816624) (_1!29781 lt!1816246)) (Some!11814 (_2!29781 lt!1816246))))))

(declare-fun b!4653218 () Bool)

(assert (=> b!4653218 (= e!2903138 (contains!15023 (toList!5195 lt!1816624) lt!1816246))))

(assert (= (and d!1475298 res!1956119) b!4653217))

(assert (= (and b!4653217 res!1956120) b!4653218))

(declare-fun m!5530505 () Bool)

(assert (=> d!1475298 m!5530505))

(declare-fun m!5530507 () Bool)

(assert (=> d!1475298 m!5530507))

(declare-fun m!5530509 () Bool)

(assert (=> d!1475298 m!5530509))

(declare-fun m!5530511 () Bool)

(assert (=> d!1475298 m!5530511))

(declare-fun m!5530513 () Bool)

(assert (=> b!4653217 m!5530513))

(declare-fun m!5530515 () Bool)

(assert (=> b!4653218 m!5530515))

(assert (=> b!4652943 d!1475298))

(declare-fun bs!1061905 () Bool)

(declare-fun b!4653221 () Bool)

(assert (= bs!1061905 (and b!4653221 d!1475272)))

(declare-fun lambda!198845 () Int)

(assert (=> bs!1061905 (= (= (ListMap!4534 Nil!51874) lt!1816572) (= lambda!198845 lambda!198837))))

(declare-fun bs!1061906 () Bool)

(assert (= bs!1061906 (and b!4653221 b!4653178)))

(assert (=> bs!1061906 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198845 lambda!198835))))

(assert (=> bs!1061906 (= (= (ListMap!4534 Nil!51874) lt!1816578) (= lambda!198845 lambda!198836))))

(declare-fun bs!1061907 () Bool)

(assert (= bs!1061907 (and b!4653221 d!1475270)))

(assert (=> bs!1061907 (not (= lambda!198845 lambda!198833))))

(declare-fun bs!1061908 () Bool)

(assert (= bs!1061908 (and b!4653221 b!4653105)))

(assert (=> bs!1061908 (= (= (ListMap!4534 Nil!51874) lt!1816505) (= lambda!198845 lambda!198820))))

(declare-fun bs!1061909 () Bool)

(assert (= bs!1061909 (and b!4653221 b!4653112)))

(assert (=> bs!1061909 (= lambda!198845 lambda!198825)))

(assert (=> bs!1061908 (= lambda!198845 lambda!198818)))

(declare-fun bs!1061910 () Bool)

(assert (= bs!1061910 (and b!4653221 b!4653177)))

(assert (=> bs!1061910 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198845 lambda!198834))))

(declare-fun bs!1061911 () Bool)

(assert (= bs!1061911 (and b!4653221 d!1475200)))

(assert (=> bs!1061911 (= (= (ListMap!4534 Nil!51874) lt!1816499) (= lambda!198845 lambda!198821))))

(declare-fun bs!1061912 () Bool)

(assert (= bs!1061912 (and b!4653221 b!4653104)))

(assert (=> bs!1061912 (= lambda!198845 lambda!198817)))

(declare-fun bs!1061913 () Bool)

(assert (= bs!1061913 (and b!4653221 d!1475248)))

(assert (=> bs!1061913 (= (= (ListMap!4534 Nil!51874) lt!1816520) (= lambda!198845 lambda!198827))))

(assert (=> bs!1061909 (= (= (ListMap!4534 Nil!51874) lt!1816526) (= lambda!198845 lambda!198826))))

(declare-fun bs!1061914 () Bool)

(assert (= bs!1061914 (and b!4653221 b!4653111)))

(assert (=> bs!1061914 (= lambda!198845 lambda!198824)))

(declare-fun bs!1061915 () Bool)

(assert (= bs!1061915 (and b!4653221 d!1475292)))

(assert (=> bs!1061915 (not (= lambda!198845 lambda!198844))))

(assert (=> b!4653221 true))

(declare-fun bs!1061916 () Bool)

(declare-fun b!4653222 () Bool)

(assert (= bs!1061916 (and b!4653222 d!1475272)))

(declare-fun lambda!198846 () Int)

(assert (=> bs!1061916 (= (= (ListMap!4534 Nil!51874) lt!1816572) (= lambda!198846 lambda!198837))))

(declare-fun bs!1061917 () Bool)

(assert (= bs!1061917 (and b!4653222 b!4653178)))

(assert (=> bs!1061917 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198846 lambda!198835))))

(assert (=> bs!1061917 (= (= (ListMap!4534 Nil!51874) lt!1816578) (= lambda!198846 lambda!198836))))

(declare-fun bs!1061918 () Bool)

(assert (= bs!1061918 (and b!4653222 d!1475270)))

(assert (=> bs!1061918 (not (= lambda!198846 lambda!198833))))

(declare-fun bs!1061919 () Bool)

(assert (= bs!1061919 (and b!4653222 b!4653105)))

(assert (=> bs!1061919 (= (= (ListMap!4534 Nil!51874) lt!1816505) (= lambda!198846 lambda!198820))))

(declare-fun bs!1061920 () Bool)

(assert (= bs!1061920 (and b!4653222 b!4653221)))

(assert (=> bs!1061920 (= lambda!198846 lambda!198845)))

(declare-fun bs!1061921 () Bool)

(assert (= bs!1061921 (and b!4653222 b!4653112)))

(assert (=> bs!1061921 (= lambda!198846 lambda!198825)))

(assert (=> bs!1061919 (= lambda!198846 lambda!198818)))

(declare-fun bs!1061922 () Bool)

(assert (= bs!1061922 (and b!4653222 b!4653177)))

(assert (=> bs!1061922 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198846 lambda!198834))))

(declare-fun bs!1061923 () Bool)

(assert (= bs!1061923 (and b!4653222 d!1475200)))

(assert (=> bs!1061923 (= (= (ListMap!4534 Nil!51874) lt!1816499) (= lambda!198846 lambda!198821))))

(declare-fun bs!1061924 () Bool)

(assert (= bs!1061924 (and b!4653222 b!4653104)))

(assert (=> bs!1061924 (= lambda!198846 lambda!198817)))

(declare-fun bs!1061925 () Bool)

(assert (= bs!1061925 (and b!4653222 d!1475248)))

(assert (=> bs!1061925 (= (= (ListMap!4534 Nil!51874) lt!1816520) (= lambda!198846 lambda!198827))))

(assert (=> bs!1061921 (= (= (ListMap!4534 Nil!51874) lt!1816526) (= lambda!198846 lambda!198826))))

(declare-fun bs!1061926 () Bool)

(assert (= bs!1061926 (and b!4653222 b!4653111)))

(assert (=> bs!1061926 (= lambda!198846 lambda!198824)))

(declare-fun bs!1061927 () Bool)

(assert (= bs!1061927 (and b!4653222 d!1475292)))

(assert (=> bs!1061927 (not (= lambda!198846 lambda!198844))))

(assert (=> b!4653222 true))

(declare-fun lambda!198847 () Int)

(declare-fun lt!1816633 () ListMap!4533)

(assert (=> bs!1061916 (= (= lt!1816633 lt!1816572) (= lambda!198847 lambda!198837))))

(assert (=> bs!1061917 (= (= lt!1816633 lt!1816243) (= lambda!198847 lambda!198835))))

(assert (=> bs!1061917 (= (= lt!1816633 lt!1816578) (= lambda!198847 lambda!198836))))

(assert (=> bs!1061918 (not (= lambda!198847 lambda!198833))))

(assert (=> bs!1061919 (= (= lt!1816633 lt!1816505) (= lambda!198847 lambda!198820))))

(assert (=> bs!1061920 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198847 lambda!198845))))

(assert (=> bs!1061921 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198847 lambda!198825))))

(assert (=> b!4653222 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198847 lambda!198846))))

(assert (=> bs!1061919 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198847 lambda!198818))))

(assert (=> bs!1061922 (= (= lt!1816633 lt!1816243) (= lambda!198847 lambda!198834))))

(assert (=> bs!1061923 (= (= lt!1816633 lt!1816499) (= lambda!198847 lambda!198821))))

(assert (=> bs!1061924 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198847 lambda!198817))))

(assert (=> bs!1061925 (= (= lt!1816633 lt!1816520) (= lambda!198847 lambda!198827))))

(assert (=> bs!1061921 (= (= lt!1816633 lt!1816526) (= lambda!198847 lambda!198826))))

(assert (=> bs!1061926 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198847 lambda!198824))))

(assert (=> bs!1061927 (not (= lambda!198847 lambda!198844))))

(assert (=> b!4653222 true))

(declare-fun bs!1061928 () Bool)

(declare-fun d!1475300 () Bool)

(assert (= bs!1061928 (and d!1475300 d!1475272)))

(declare-fun lt!1816627 () ListMap!4533)

(declare-fun lambda!198848 () Int)

(assert (=> bs!1061928 (= (= lt!1816627 lt!1816572) (= lambda!198848 lambda!198837))))

(declare-fun bs!1061929 () Bool)

(assert (= bs!1061929 (and d!1475300 b!4653178)))

(assert (=> bs!1061929 (= (= lt!1816627 lt!1816243) (= lambda!198848 lambda!198835))))

(declare-fun bs!1061930 () Bool)

(assert (= bs!1061930 (and d!1475300 b!4653222)))

(assert (=> bs!1061930 (= (= lt!1816627 lt!1816633) (= lambda!198848 lambda!198847))))

(assert (=> bs!1061929 (= (= lt!1816627 lt!1816578) (= lambda!198848 lambda!198836))))

(declare-fun bs!1061931 () Bool)

(assert (= bs!1061931 (and d!1475300 d!1475270)))

(assert (=> bs!1061931 (not (= lambda!198848 lambda!198833))))

(declare-fun bs!1061932 () Bool)

(assert (= bs!1061932 (and d!1475300 b!4653105)))

(assert (=> bs!1061932 (= (= lt!1816627 lt!1816505) (= lambda!198848 lambda!198820))))

(declare-fun bs!1061933 () Bool)

(assert (= bs!1061933 (and d!1475300 b!4653221)))

(assert (=> bs!1061933 (= (= lt!1816627 (ListMap!4534 Nil!51874)) (= lambda!198848 lambda!198845))))

(declare-fun bs!1061934 () Bool)

(assert (= bs!1061934 (and d!1475300 b!4653112)))

(assert (=> bs!1061934 (= (= lt!1816627 (ListMap!4534 Nil!51874)) (= lambda!198848 lambda!198825))))

(assert (=> bs!1061930 (= (= lt!1816627 (ListMap!4534 Nil!51874)) (= lambda!198848 lambda!198846))))

(assert (=> bs!1061932 (= (= lt!1816627 (ListMap!4534 Nil!51874)) (= lambda!198848 lambda!198818))))

(declare-fun bs!1061935 () Bool)

(assert (= bs!1061935 (and d!1475300 b!4653177)))

(assert (=> bs!1061935 (= (= lt!1816627 lt!1816243) (= lambda!198848 lambda!198834))))

(declare-fun bs!1061936 () Bool)

(assert (= bs!1061936 (and d!1475300 d!1475200)))

(assert (=> bs!1061936 (= (= lt!1816627 lt!1816499) (= lambda!198848 lambda!198821))))

(declare-fun bs!1061937 () Bool)

(assert (= bs!1061937 (and d!1475300 b!4653104)))

(assert (=> bs!1061937 (= (= lt!1816627 (ListMap!4534 Nil!51874)) (= lambda!198848 lambda!198817))))

(declare-fun bs!1061938 () Bool)

(assert (= bs!1061938 (and d!1475300 d!1475248)))

(assert (=> bs!1061938 (= (= lt!1816627 lt!1816520) (= lambda!198848 lambda!198827))))

(assert (=> bs!1061934 (= (= lt!1816627 lt!1816526) (= lambda!198848 lambda!198826))))

(declare-fun bs!1061939 () Bool)

(assert (= bs!1061939 (and d!1475300 b!4653111)))

(assert (=> bs!1061939 (= (= lt!1816627 (ListMap!4534 Nil!51874)) (= lambda!198848 lambda!198824))))

(declare-fun bs!1061940 () Bool)

(assert (= bs!1061940 (and d!1475300 d!1475292)))

(assert (=> bs!1061940 (not (= lambda!198848 lambda!198844))))

(assert (=> d!1475300 true))

(declare-fun b!4653219 () Bool)

(declare-fun res!1956123 () Bool)

(declare-fun e!2903139 () Bool)

(assert (=> b!4653219 (=> (not res!1956123) (not e!2903139))))

(assert (=> b!4653219 (= res!1956123 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198848))))

(declare-fun b!4653220 () Bool)

(assert (=> b!4653220 (= e!2903139 (invariantList!1292 (toList!5195 lt!1816627)))))

(declare-fun e!2903140 () ListMap!4533)

(assert (=> b!4653221 (= e!2903140 (ListMap!4534 Nil!51874))))

(declare-fun lt!1816635 () Unit!118036)

(declare-fun call!325141 () Unit!118036)

(assert (=> b!4653221 (= lt!1816635 call!325141)))

(declare-fun call!325140 () Bool)

(assert (=> b!4653221 call!325140))

(declare-fun lt!1816644 () Unit!118036)

(assert (=> b!4653221 (= lt!1816644 lt!1816635)))

(declare-fun call!325142 () Bool)

(assert (=> b!4653221 call!325142))

(declare-fun lt!1816630 () Unit!118036)

(declare-fun Unit!118132 () Unit!118036)

(assert (=> b!4653221 (= lt!1816630 Unit!118132)))

(declare-fun bm!325135 () Bool)

(declare-fun c!796437 () Bool)

(assert (=> bm!325135 (= call!325142 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796437 lambda!198845 lambda!198847)))))

(assert (=> b!4653222 (= e!2903140 lt!1816633)))

(declare-fun lt!1816636 () ListMap!4533)

(assert (=> b!4653222 (= lt!1816636 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(assert (=> b!4653222 (= lt!1816633 (addToMapMapFromBucket!1089 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun lt!1816639 () Unit!118036)

(assert (=> b!4653222 (= lt!1816639 call!325141)))

(assert (=> b!4653222 call!325140))

(declare-fun lt!1816638 () Unit!118036)

(assert (=> b!4653222 (= lt!1816638 lt!1816639)))

(assert (=> b!4653222 (forall!11010 (toList!5195 lt!1816636) lambda!198847)))

(declare-fun lt!1816640 () Unit!118036)

(declare-fun Unit!118133 () Unit!118036)

(assert (=> b!4653222 (= lt!1816640 Unit!118133)))

(assert (=> b!4653222 (forall!11010 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) lambda!198847)))

(declare-fun lt!1816631 () Unit!118036)

(declare-fun Unit!118134 () Unit!118036)

(assert (=> b!4653222 (= lt!1816631 Unit!118134)))

(declare-fun lt!1816637 () Unit!118036)

(declare-fun Unit!118135 () Unit!118036)

(assert (=> b!4653222 (= lt!1816637 Unit!118135)))

(declare-fun lt!1816629 () Unit!118036)

(assert (=> b!4653222 (= lt!1816629 (forallContained!3216 (toList!5195 lt!1816636) lambda!198847 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(assert (=> b!4653222 (contains!15019 lt!1816636 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(declare-fun lt!1816641 () Unit!118036)

(declare-fun Unit!118136 () Unit!118036)

(assert (=> b!4653222 (= lt!1816641 Unit!118136)))

(assert (=> b!4653222 (contains!15019 lt!1816633 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(declare-fun lt!1816645 () Unit!118036)

(declare-fun Unit!118137 () Unit!118036)

(assert (=> b!4653222 (= lt!1816645 Unit!118137)))

(assert (=> b!4653222 (forall!11010 (Cons!51874 lt!1816246 lt!1816247) lambda!198847)))

(declare-fun lt!1816647 () Unit!118036)

(declare-fun Unit!118138 () Unit!118036)

(assert (=> b!4653222 (= lt!1816647 Unit!118138)))

(assert (=> b!4653222 (forall!11010 (toList!5195 lt!1816636) lambda!198847)))

(declare-fun lt!1816642 () Unit!118036)

(declare-fun Unit!118139 () Unit!118036)

(assert (=> b!4653222 (= lt!1816642 Unit!118139)))

(declare-fun lt!1816643 () Unit!118036)

(declare-fun Unit!118140 () Unit!118036)

(assert (=> b!4653222 (= lt!1816643 Unit!118140)))

(declare-fun lt!1816634 () Unit!118036)

(assert (=> b!4653222 (= lt!1816634 (addForallContainsKeyThenBeforeAdding!591 (ListMap!4534 Nil!51874) lt!1816633 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (_2!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> b!4653222 call!325142))

(declare-fun lt!1816628 () Unit!118036)

(assert (=> b!4653222 (= lt!1816628 lt!1816634)))

(assert (=> b!4653222 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198847)))

(declare-fun lt!1816632 () Unit!118036)

(declare-fun Unit!118141 () Unit!118036)

(assert (=> b!4653222 (= lt!1816632 Unit!118141)))

(declare-fun res!1956122 () Bool)

(assert (=> b!4653222 (= res!1956122 (forall!11010 (Cons!51874 lt!1816246 lt!1816247) lambda!198847))))

(declare-fun e!2903141 () Bool)

(assert (=> b!4653222 (=> (not res!1956122) (not e!2903141))))

(assert (=> b!4653222 e!2903141))

(declare-fun lt!1816646 () Unit!118036)

(declare-fun Unit!118142 () Unit!118036)

(assert (=> b!4653222 (= lt!1816646 Unit!118142)))

(assert (=> d!1475300 e!2903139))

(declare-fun res!1956121 () Bool)

(assert (=> d!1475300 (=> (not res!1956121) (not e!2903139))))

(assert (=> d!1475300 (= res!1956121 (forall!11010 (Cons!51874 lt!1816246 lt!1816247) lambda!198848))))

(assert (=> d!1475300 (= lt!1816627 e!2903140)))

(assert (=> d!1475300 (= c!796437 ((_ is Nil!51874) (Cons!51874 lt!1816246 lt!1816247)))))

(assert (=> d!1475300 (noDuplicateKeys!1632 (Cons!51874 lt!1816246 lt!1816247))))

(assert (=> d!1475300 (= (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)) lt!1816627)))

(declare-fun bm!325136 () Bool)

(assert (=> bm!325136 (= call!325140 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796437 lambda!198845 lambda!198846)))))

(declare-fun bm!325137 () Bool)

(assert (=> bm!325137 (= call!325141 (lemmaContainsAllItsOwnKeys!592 (ListMap!4534 Nil!51874)))))

(declare-fun b!4653223 () Bool)

(assert (=> b!4653223 (= e!2903141 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198847))))

(assert (= (and d!1475300 c!796437) b!4653221))

(assert (= (and d!1475300 (not c!796437)) b!4653222))

(assert (= (and b!4653222 res!1956122) b!4653223))

(assert (= (or b!4653221 b!4653222) bm!325137))

(assert (= (or b!4653221 b!4653222) bm!325136))

(assert (= (or b!4653221 b!4653222) bm!325135))

(assert (= (and d!1475300 res!1956121) b!4653219))

(assert (= (and b!4653219 res!1956123) b!4653220))

(declare-fun m!5530517 () Bool)

(assert (=> d!1475300 m!5530517))

(declare-fun m!5530519 () Bool)

(assert (=> d!1475300 m!5530519))

(declare-fun m!5530521 () Bool)

(assert (=> bm!325136 m!5530521))

(declare-fun m!5530523 () Bool)

(assert (=> b!4653220 m!5530523))

(declare-fun m!5530525 () Bool)

(assert (=> b!4653219 m!5530525))

(assert (=> bm!325137 m!5530265))

(declare-fun m!5530527 () Bool)

(assert (=> bm!325135 m!5530527))

(declare-fun m!5530529 () Bool)

(assert (=> b!4653223 m!5530529))

(declare-fun m!5530531 () Bool)

(assert (=> b!4653222 m!5530531))

(declare-fun m!5530533 () Bool)

(assert (=> b!4653222 m!5530533))

(assert (=> b!4653222 m!5530533))

(declare-fun m!5530535 () Bool)

(assert (=> b!4653222 m!5530535))

(declare-fun m!5530537 () Bool)

(assert (=> b!4653222 m!5530537))

(declare-fun m!5530539 () Bool)

(assert (=> b!4653222 m!5530539))

(assert (=> b!4653222 m!5530537))

(declare-fun m!5530541 () Bool)

(assert (=> b!4653222 m!5530541))

(declare-fun m!5530543 () Bool)

(assert (=> b!4653222 m!5530543))

(declare-fun m!5530545 () Bool)

(assert (=> b!4653222 m!5530545))

(assert (=> b!4653222 m!5530529))

(declare-fun m!5530547 () Bool)

(assert (=> b!4653222 m!5530547))

(assert (=> b!4653222 m!5530541))

(assert (=> b!4652943 d!1475300))

(declare-fun d!1475302 () Bool)

(assert (=> d!1475302 (= (eq!911 (+!1976 lt!1816249 (h!58012 oldBucket!40)) (addToMapMapFromBucket!1089 oldBucket!40 (ListMap!4534 Nil!51874))) (= (content!8989 (toList!5195 (+!1976 lt!1816249 (h!58012 oldBucket!40)))) (content!8989 (toList!5195 (addToMapMapFromBucket!1089 oldBucket!40 (ListMap!4534 Nil!51874))))))))

(declare-fun bs!1061941 () Bool)

(assert (= bs!1061941 d!1475302))

(declare-fun m!5530549 () Bool)

(assert (=> bs!1061941 m!5530549))

(declare-fun m!5530551 () Bool)

(assert (=> bs!1061941 m!5530551))

(assert (=> b!4652943 d!1475302))

(declare-fun d!1475304 () Bool)

(assert (=> d!1475304 (= (head!9732 oldBucket!40) (h!58012 oldBucket!40))))

(assert (=> b!4652943 d!1475304))

(declare-fun d!1475306 () Bool)

(assert (=> d!1475306 (eq!911 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)) (+!1976 (addToMapMapFromBucket!1089 lt!1816247 (ListMap!4534 Nil!51874)) lt!1816246))))

(declare-fun lt!1816650 () Unit!118036)

(declare-fun choose!31964 (tuple2!52974 List!51998 ListMap!4533) Unit!118036)

(assert (=> d!1475306 (= lt!1816650 (choose!31964 lt!1816246 lt!1816247 (ListMap!4534 Nil!51874)))))

(assert (=> d!1475306 (noDuplicateKeys!1632 lt!1816247)))

(assert (=> d!1475306 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!162 lt!1816246 lt!1816247 (ListMap!4534 Nil!51874)) lt!1816650)))

(declare-fun bs!1061942 () Bool)

(assert (= bs!1061942 d!1475306))

(assert (=> bs!1061942 m!5529981))

(assert (=> bs!1061942 m!5529981))

(declare-fun m!5530553 () Bool)

(assert (=> bs!1061942 m!5530553))

(declare-fun m!5530555 () Bool)

(assert (=> bs!1061942 m!5530555))

(assert (=> bs!1061942 m!5530337))

(assert (=> bs!1061942 m!5529979))

(assert (=> bs!1061942 m!5530553))

(declare-fun m!5530557 () Bool)

(assert (=> bs!1061942 m!5530557))

(assert (=> bs!1061942 m!5529979))

(assert (=> b!4652943 d!1475306))

(declare-fun bs!1061943 () Bool)

(declare-fun b!4653226 () Bool)

(assert (= bs!1061943 (and b!4653226 d!1475272)))

(declare-fun lambda!198849 () Int)

(assert (=> bs!1061943 (= (= (ListMap!4534 Nil!51874) lt!1816572) (= lambda!198849 lambda!198837))))

(declare-fun bs!1061944 () Bool)

(assert (= bs!1061944 (and b!4653226 b!4653178)))

(assert (=> bs!1061944 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198849 lambda!198835))))

(declare-fun bs!1061945 () Bool)

(assert (= bs!1061945 (and b!4653226 b!4653222)))

(assert (=> bs!1061945 (= (= (ListMap!4534 Nil!51874) lt!1816633) (= lambda!198849 lambda!198847))))

(assert (=> bs!1061944 (= (= (ListMap!4534 Nil!51874) lt!1816578) (= lambda!198849 lambda!198836))))

(declare-fun bs!1061946 () Bool)

(assert (= bs!1061946 (and b!4653226 d!1475270)))

(assert (=> bs!1061946 (not (= lambda!198849 lambda!198833))))

(declare-fun bs!1061947 () Bool)

(assert (= bs!1061947 (and b!4653226 b!4653105)))

(assert (=> bs!1061947 (= (= (ListMap!4534 Nil!51874) lt!1816505) (= lambda!198849 lambda!198820))))

(declare-fun bs!1061948 () Bool)

(assert (= bs!1061948 (and b!4653226 b!4653221)))

(assert (=> bs!1061948 (= lambda!198849 lambda!198845)))

(declare-fun bs!1061949 () Bool)

(assert (= bs!1061949 (and b!4653226 b!4653112)))

(assert (=> bs!1061949 (= lambda!198849 lambda!198825)))

(assert (=> bs!1061945 (= lambda!198849 lambda!198846)))

(declare-fun bs!1061950 () Bool)

(assert (= bs!1061950 (and b!4653226 d!1475300)))

(assert (=> bs!1061950 (= (= (ListMap!4534 Nil!51874) lt!1816627) (= lambda!198849 lambda!198848))))

(assert (=> bs!1061947 (= lambda!198849 lambda!198818)))

(declare-fun bs!1061951 () Bool)

(assert (= bs!1061951 (and b!4653226 b!4653177)))

(assert (=> bs!1061951 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198849 lambda!198834))))

(declare-fun bs!1061952 () Bool)

(assert (= bs!1061952 (and b!4653226 d!1475200)))

(assert (=> bs!1061952 (= (= (ListMap!4534 Nil!51874) lt!1816499) (= lambda!198849 lambda!198821))))

(declare-fun bs!1061953 () Bool)

(assert (= bs!1061953 (and b!4653226 b!4653104)))

(assert (=> bs!1061953 (= lambda!198849 lambda!198817)))

(declare-fun bs!1061954 () Bool)

(assert (= bs!1061954 (and b!4653226 d!1475248)))

(assert (=> bs!1061954 (= (= (ListMap!4534 Nil!51874) lt!1816520) (= lambda!198849 lambda!198827))))

(assert (=> bs!1061949 (= (= (ListMap!4534 Nil!51874) lt!1816526) (= lambda!198849 lambda!198826))))

(declare-fun bs!1061955 () Bool)

(assert (= bs!1061955 (and b!4653226 b!4653111)))

(assert (=> bs!1061955 (= lambda!198849 lambda!198824)))

(declare-fun bs!1061956 () Bool)

(assert (= bs!1061956 (and b!4653226 d!1475292)))

(assert (=> bs!1061956 (not (= lambda!198849 lambda!198844))))

(assert (=> b!4653226 true))

(declare-fun bs!1061957 () Bool)

(declare-fun b!4653227 () Bool)

(assert (= bs!1061957 (and b!4653227 d!1475272)))

(declare-fun lambda!198850 () Int)

(assert (=> bs!1061957 (= (= (ListMap!4534 Nil!51874) lt!1816572) (= lambda!198850 lambda!198837))))

(declare-fun bs!1061958 () Bool)

(assert (= bs!1061958 (and b!4653227 b!4653178)))

(assert (=> bs!1061958 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198850 lambda!198835))))

(declare-fun bs!1061959 () Bool)

(assert (= bs!1061959 (and b!4653227 b!4653222)))

(assert (=> bs!1061959 (= (= (ListMap!4534 Nil!51874) lt!1816633) (= lambda!198850 lambda!198847))))

(assert (=> bs!1061958 (= (= (ListMap!4534 Nil!51874) lt!1816578) (= lambda!198850 lambda!198836))))

(declare-fun bs!1061960 () Bool)

(assert (= bs!1061960 (and b!4653227 d!1475270)))

(assert (=> bs!1061960 (not (= lambda!198850 lambda!198833))))

(declare-fun bs!1061961 () Bool)

(assert (= bs!1061961 (and b!4653227 b!4653105)))

(assert (=> bs!1061961 (= (= (ListMap!4534 Nil!51874) lt!1816505) (= lambda!198850 lambda!198820))))

(declare-fun bs!1061962 () Bool)

(assert (= bs!1061962 (and b!4653227 b!4653112)))

(assert (=> bs!1061962 (= lambda!198850 lambda!198825)))

(assert (=> bs!1061959 (= lambda!198850 lambda!198846)))

(declare-fun bs!1061963 () Bool)

(assert (= bs!1061963 (and b!4653227 d!1475300)))

(assert (=> bs!1061963 (= (= (ListMap!4534 Nil!51874) lt!1816627) (= lambda!198850 lambda!198848))))

(assert (=> bs!1061961 (= lambda!198850 lambda!198818)))

(declare-fun bs!1061964 () Bool)

(assert (= bs!1061964 (and b!4653227 b!4653177)))

(assert (=> bs!1061964 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198850 lambda!198834))))

(declare-fun bs!1061965 () Bool)

(assert (= bs!1061965 (and b!4653227 b!4653226)))

(assert (=> bs!1061965 (= lambda!198850 lambda!198849)))

(declare-fun bs!1061966 () Bool)

(assert (= bs!1061966 (and b!4653227 b!4653221)))

(assert (=> bs!1061966 (= lambda!198850 lambda!198845)))

(declare-fun bs!1061967 () Bool)

(assert (= bs!1061967 (and b!4653227 d!1475200)))

(assert (=> bs!1061967 (= (= (ListMap!4534 Nil!51874) lt!1816499) (= lambda!198850 lambda!198821))))

(declare-fun bs!1061968 () Bool)

(assert (= bs!1061968 (and b!4653227 b!4653104)))

(assert (=> bs!1061968 (= lambda!198850 lambda!198817)))

(declare-fun bs!1061969 () Bool)

(assert (= bs!1061969 (and b!4653227 d!1475248)))

(assert (=> bs!1061969 (= (= (ListMap!4534 Nil!51874) lt!1816520) (= lambda!198850 lambda!198827))))

(assert (=> bs!1061962 (= (= (ListMap!4534 Nil!51874) lt!1816526) (= lambda!198850 lambda!198826))))

(declare-fun bs!1061970 () Bool)

(assert (= bs!1061970 (and b!4653227 b!4653111)))

(assert (=> bs!1061970 (= lambda!198850 lambda!198824)))

(declare-fun bs!1061971 () Bool)

(assert (= bs!1061971 (and b!4653227 d!1475292)))

(assert (=> bs!1061971 (not (= lambda!198850 lambda!198844))))

(assert (=> b!4653227 true))

(declare-fun lambda!198851 () Int)

(declare-fun lt!1816657 () ListMap!4533)

(assert (=> bs!1061957 (= (= lt!1816657 lt!1816572) (= lambda!198851 lambda!198837))))

(assert (=> bs!1061958 (= (= lt!1816657 lt!1816243) (= lambda!198851 lambda!198835))))

(assert (=> bs!1061959 (= (= lt!1816657 lt!1816633) (= lambda!198851 lambda!198847))))

(assert (=> b!4653227 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198851 lambda!198850))))

(assert (=> bs!1061958 (= (= lt!1816657 lt!1816578) (= lambda!198851 lambda!198836))))

(assert (=> bs!1061960 (not (= lambda!198851 lambda!198833))))

(assert (=> bs!1061961 (= (= lt!1816657 lt!1816505) (= lambda!198851 lambda!198820))))

(assert (=> bs!1061962 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198851 lambda!198825))))

(assert (=> bs!1061959 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198851 lambda!198846))))

(assert (=> bs!1061963 (= (= lt!1816657 lt!1816627) (= lambda!198851 lambda!198848))))

(assert (=> bs!1061961 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198851 lambda!198818))))

(assert (=> bs!1061964 (= (= lt!1816657 lt!1816243) (= lambda!198851 lambda!198834))))

(assert (=> bs!1061965 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198851 lambda!198849))))

(assert (=> bs!1061966 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198851 lambda!198845))))

(assert (=> bs!1061967 (= (= lt!1816657 lt!1816499) (= lambda!198851 lambda!198821))))

(assert (=> bs!1061968 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198851 lambda!198817))))

(assert (=> bs!1061969 (= (= lt!1816657 lt!1816520) (= lambda!198851 lambda!198827))))

(assert (=> bs!1061962 (= (= lt!1816657 lt!1816526) (= lambda!198851 lambda!198826))))

(assert (=> bs!1061970 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198851 lambda!198824))))

(assert (=> bs!1061971 (not (= lambda!198851 lambda!198844))))

(assert (=> b!4653227 true))

(declare-fun bs!1061972 () Bool)

(declare-fun d!1475308 () Bool)

(assert (= bs!1061972 (and d!1475308 d!1475272)))

(declare-fun lt!1816651 () ListMap!4533)

(declare-fun lambda!198852 () Int)

(assert (=> bs!1061972 (= (= lt!1816651 lt!1816572) (= lambda!198852 lambda!198837))))

(declare-fun bs!1061973 () Bool)

(assert (= bs!1061973 (and d!1475308 b!4653178)))

(assert (=> bs!1061973 (= (= lt!1816651 lt!1816243) (= lambda!198852 lambda!198835))))

(declare-fun bs!1061974 () Bool)

(assert (= bs!1061974 (and d!1475308 b!4653222)))

(assert (=> bs!1061974 (= (= lt!1816651 lt!1816633) (= lambda!198852 lambda!198847))))

(declare-fun bs!1061975 () Bool)

(assert (= bs!1061975 (and d!1475308 b!4653227)))

(assert (=> bs!1061975 (= (= lt!1816651 (ListMap!4534 Nil!51874)) (= lambda!198852 lambda!198850))))

(assert (=> bs!1061973 (= (= lt!1816651 lt!1816578) (= lambda!198852 lambda!198836))))

(assert (=> bs!1061975 (= (= lt!1816651 lt!1816657) (= lambda!198852 lambda!198851))))

(declare-fun bs!1061976 () Bool)

(assert (= bs!1061976 (and d!1475308 d!1475270)))

(assert (=> bs!1061976 (not (= lambda!198852 lambda!198833))))

(declare-fun bs!1061977 () Bool)

(assert (= bs!1061977 (and d!1475308 b!4653105)))

(assert (=> bs!1061977 (= (= lt!1816651 lt!1816505) (= lambda!198852 lambda!198820))))

(declare-fun bs!1061978 () Bool)

(assert (= bs!1061978 (and d!1475308 b!4653112)))

(assert (=> bs!1061978 (= (= lt!1816651 (ListMap!4534 Nil!51874)) (= lambda!198852 lambda!198825))))

(assert (=> bs!1061974 (= (= lt!1816651 (ListMap!4534 Nil!51874)) (= lambda!198852 lambda!198846))))

(declare-fun bs!1061979 () Bool)

(assert (= bs!1061979 (and d!1475308 d!1475300)))

(assert (=> bs!1061979 (= (= lt!1816651 lt!1816627) (= lambda!198852 lambda!198848))))

(assert (=> bs!1061977 (= (= lt!1816651 (ListMap!4534 Nil!51874)) (= lambda!198852 lambda!198818))))

(declare-fun bs!1061980 () Bool)

(assert (= bs!1061980 (and d!1475308 b!4653177)))

(assert (=> bs!1061980 (= (= lt!1816651 lt!1816243) (= lambda!198852 lambda!198834))))

(declare-fun bs!1061981 () Bool)

(assert (= bs!1061981 (and d!1475308 b!4653226)))

(assert (=> bs!1061981 (= (= lt!1816651 (ListMap!4534 Nil!51874)) (= lambda!198852 lambda!198849))))

(declare-fun bs!1061982 () Bool)

(assert (= bs!1061982 (and d!1475308 b!4653221)))

(assert (=> bs!1061982 (= (= lt!1816651 (ListMap!4534 Nil!51874)) (= lambda!198852 lambda!198845))))

(declare-fun bs!1061983 () Bool)

(assert (= bs!1061983 (and d!1475308 d!1475200)))

(assert (=> bs!1061983 (= (= lt!1816651 lt!1816499) (= lambda!198852 lambda!198821))))

(declare-fun bs!1061984 () Bool)

(assert (= bs!1061984 (and d!1475308 b!4653104)))

(assert (=> bs!1061984 (= (= lt!1816651 (ListMap!4534 Nil!51874)) (= lambda!198852 lambda!198817))))

(declare-fun bs!1061985 () Bool)

(assert (= bs!1061985 (and d!1475308 d!1475248)))

(assert (=> bs!1061985 (= (= lt!1816651 lt!1816520) (= lambda!198852 lambda!198827))))

(assert (=> bs!1061978 (= (= lt!1816651 lt!1816526) (= lambda!198852 lambda!198826))))

(declare-fun bs!1061986 () Bool)

(assert (= bs!1061986 (and d!1475308 b!4653111)))

(assert (=> bs!1061986 (= (= lt!1816651 (ListMap!4534 Nil!51874)) (= lambda!198852 lambda!198824))))

(declare-fun bs!1061987 () Bool)

(assert (= bs!1061987 (and d!1475308 d!1475292)))

(assert (=> bs!1061987 (not (= lambda!198852 lambda!198844))))

(assert (=> d!1475308 true))

(declare-fun b!4653224 () Bool)

(declare-fun res!1956126 () Bool)

(declare-fun e!2903142 () Bool)

(assert (=> b!4653224 (=> (not res!1956126) (not e!2903142))))

(assert (=> b!4653224 (= res!1956126 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198852))))

(declare-fun b!4653225 () Bool)

(assert (=> b!4653225 (= e!2903142 (invariantList!1292 (toList!5195 lt!1816651)))))

(declare-fun e!2903143 () ListMap!4533)

(assert (=> b!4653226 (= e!2903143 (ListMap!4534 Nil!51874))))

(declare-fun lt!1816659 () Unit!118036)

(declare-fun call!325144 () Unit!118036)

(assert (=> b!4653226 (= lt!1816659 call!325144)))

(declare-fun call!325143 () Bool)

(assert (=> b!4653226 call!325143))

(declare-fun lt!1816668 () Unit!118036)

(assert (=> b!4653226 (= lt!1816668 lt!1816659)))

(declare-fun call!325145 () Bool)

(assert (=> b!4653226 call!325145))

(declare-fun lt!1816654 () Unit!118036)

(declare-fun Unit!118143 () Unit!118036)

(assert (=> b!4653226 (= lt!1816654 Unit!118143)))

(declare-fun bm!325138 () Bool)

(declare-fun c!796438 () Bool)

(assert (=> bm!325138 (= call!325145 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796438 lambda!198849 lambda!198851)))))

(assert (=> b!4653227 (= e!2903143 lt!1816657)))

(declare-fun lt!1816660 () ListMap!4533)

(assert (=> b!4653227 (= lt!1816660 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)))))

(assert (=> b!4653227 (= lt!1816657 (addToMapMapFromBucket!1089 (t!359110 oldBucket!40) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))))))

(declare-fun lt!1816663 () Unit!118036)

(assert (=> b!4653227 (= lt!1816663 call!325144)))

(assert (=> b!4653227 call!325143))

(declare-fun lt!1816662 () Unit!118036)

(assert (=> b!4653227 (= lt!1816662 lt!1816663)))

(assert (=> b!4653227 (forall!11010 (toList!5195 lt!1816660) lambda!198851)))

(declare-fun lt!1816664 () Unit!118036)

(declare-fun Unit!118144 () Unit!118036)

(assert (=> b!4653227 (= lt!1816664 Unit!118144)))

(assert (=> b!4653227 (forall!11010 (t!359110 oldBucket!40) lambda!198851)))

(declare-fun lt!1816655 () Unit!118036)

(declare-fun Unit!118145 () Unit!118036)

(assert (=> b!4653227 (= lt!1816655 Unit!118145)))

(declare-fun lt!1816661 () Unit!118036)

(declare-fun Unit!118146 () Unit!118036)

(assert (=> b!4653227 (= lt!1816661 Unit!118146)))

(declare-fun lt!1816653 () Unit!118036)

(assert (=> b!4653227 (= lt!1816653 (forallContained!3216 (toList!5195 lt!1816660) lambda!198851 (h!58012 oldBucket!40)))))

(assert (=> b!4653227 (contains!15019 lt!1816660 (_1!29781 (h!58012 oldBucket!40)))))

(declare-fun lt!1816665 () Unit!118036)

(declare-fun Unit!118147 () Unit!118036)

(assert (=> b!4653227 (= lt!1816665 Unit!118147)))

(assert (=> b!4653227 (contains!15019 lt!1816657 (_1!29781 (h!58012 oldBucket!40)))))

(declare-fun lt!1816669 () Unit!118036)

(declare-fun Unit!118148 () Unit!118036)

(assert (=> b!4653227 (= lt!1816669 Unit!118148)))

(assert (=> b!4653227 (forall!11010 oldBucket!40 lambda!198851)))

(declare-fun lt!1816671 () Unit!118036)

(declare-fun Unit!118149 () Unit!118036)

(assert (=> b!4653227 (= lt!1816671 Unit!118149)))

(assert (=> b!4653227 (forall!11010 (toList!5195 lt!1816660) lambda!198851)))

(declare-fun lt!1816666 () Unit!118036)

(declare-fun Unit!118150 () Unit!118036)

(assert (=> b!4653227 (= lt!1816666 Unit!118150)))

(declare-fun lt!1816667 () Unit!118036)

(declare-fun Unit!118151 () Unit!118036)

(assert (=> b!4653227 (= lt!1816667 Unit!118151)))

(declare-fun lt!1816658 () Unit!118036)

(assert (=> b!4653227 (= lt!1816658 (addForallContainsKeyThenBeforeAdding!591 (ListMap!4534 Nil!51874) lt!1816657 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> b!4653227 call!325145))

(declare-fun lt!1816652 () Unit!118036)

(assert (=> b!4653227 (= lt!1816652 lt!1816658)))

(assert (=> b!4653227 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198851)))

(declare-fun lt!1816656 () Unit!118036)

(declare-fun Unit!118152 () Unit!118036)

(assert (=> b!4653227 (= lt!1816656 Unit!118152)))

(declare-fun res!1956125 () Bool)

(assert (=> b!4653227 (= res!1956125 (forall!11010 oldBucket!40 lambda!198851))))

(declare-fun e!2903144 () Bool)

(assert (=> b!4653227 (=> (not res!1956125) (not e!2903144))))

(assert (=> b!4653227 e!2903144))

(declare-fun lt!1816670 () Unit!118036)

(declare-fun Unit!118153 () Unit!118036)

(assert (=> b!4653227 (= lt!1816670 Unit!118153)))

(assert (=> d!1475308 e!2903142))

(declare-fun res!1956124 () Bool)

(assert (=> d!1475308 (=> (not res!1956124) (not e!2903142))))

(assert (=> d!1475308 (= res!1956124 (forall!11010 oldBucket!40 lambda!198852))))

(assert (=> d!1475308 (= lt!1816651 e!2903143)))

(assert (=> d!1475308 (= c!796438 ((_ is Nil!51874) oldBucket!40))))

(assert (=> d!1475308 (noDuplicateKeys!1632 oldBucket!40)))

(assert (=> d!1475308 (= (addToMapMapFromBucket!1089 oldBucket!40 (ListMap!4534 Nil!51874)) lt!1816651)))

(declare-fun bm!325139 () Bool)

(assert (=> bm!325139 (= call!325143 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796438 lambda!198849 lambda!198850)))))

(declare-fun bm!325140 () Bool)

(assert (=> bm!325140 (= call!325144 (lemmaContainsAllItsOwnKeys!592 (ListMap!4534 Nil!51874)))))

(declare-fun b!4653228 () Bool)

(assert (=> b!4653228 (= e!2903144 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198851))))

(assert (= (and d!1475308 c!796438) b!4653226))

(assert (= (and d!1475308 (not c!796438)) b!4653227))

(assert (= (and b!4653227 res!1956125) b!4653228))

(assert (= (or b!4653226 b!4653227) bm!325140))

(assert (= (or b!4653226 b!4653227) bm!325139))

(assert (= (or b!4653226 b!4653227) bm!325138))

(assert (= (and d!1475308 res!1956124) b!4653224))

(assert (= (and b!4653224 res!1956126) b!4653225))

(declare-fun m!5530559 () Bool)

(assert (=> d!1475308 m!5530559))

(assert (=> d!1475308 m!5530009))

(declare-fun m!5530561 () Bool)

(assert (=> bm!325139 m!5530561))

(declare-fun m!5530563 () Bool)

(assert (=> b!4653225 m!5530563))

(declare-fun m!5530565 () Bool)

(assert (=> b!4653224 m!5530565))

(assert (=> bm!325140 m!5530265))

(declare-fun m!5530567 () Bool)

(assert (=> bm!325138 m!5530567))

(declare-fun m!5530569 () Bool)

(assert (=> b!4653228 m!5530569))

(declare-fun m!5530571 () Bool)

(assert (=> b!4653227 m!5530571))

(declare-fun m!5530573 () Bool)

(assert (=> b!4653227 m!5530573))

(assert (=> b!4653227 m!5530573))

(declare-fun m!5530575 () Bool)

(assert (=> b!4653227 m!5530575))

(declare-fun m!5530577 () Bool)

(assert (=> b!4653227 m!5530577))

(declare-fun m!5530579 () Bool)

(assert (=> b!4653227 m!5530579))

(assert (=> b!4653227 m!5530577))

(declare-fun m!5530581 () Bool)

(assert (=> b!4653227 m!5530581))

(declare-fun m!5530583 () Bool)

(assert (=> b!4653227 m!5530583))

(declare-fun m!5530585 () Bool)

(assert (=> b!4653227 m!5530585))

(assert (=> b!4653227 m!5530569))

(declare-fun m!5530587 () Bool)

(assert (=> b!4653227 m!5530587))

(assert (=> b!4653227 m!5530581))

(assert (=> b!4652943 d!1475308))

(declare-fun d!1475310 () Bool)

(declare-fun res!1956131 () Bool)

(declare-fun e!2903149 () Bool)

(assert (=> d!1475310 (=> res!1956131 e!2903149)))

(assert (=> d!1475310 (= res!1956131 ((_ is Nil!51875) lt!1816245))))

(assert (=> d!1475310 (= (forall!11008 lt!1816245 lambda!198730) e!2903149)))

(declare-fun b!4653233 () Bool)

(declare-fun e!2903150 () Bool)

(assert (=> b!4653233 (= e!2903149 e!2903150)))

(declare-fun res!1956132 () Bool)

(assert (=> b!4653233 (=> (not res!1956132) (not e!2903150))))

(declare-fun dynLambda!21578 (Int tuple2!52976) Bool)

(assert (=> b!4653233 (= res!1956132 (dynLambda!21578 lambda!198730 (h!58013 lt!1816245)))))

(declare-fun b!4653234 () Bool)

(assert (=> b!4653234 (= e!2903150 (forall!11008 (t!359111 lt!1816245) lambda!198730))))

(assert (= (and d!1475310 (not res!1956131)) b!4653233))

(assert (= (and b!4653233 res!1956132) b!4653234))

(declare-fun b_lambda!173389 () Bool)

(assert (=> (not b_lambda!173389) (not b!4653233)))

(declare-fun m!5530589 () Bool)

(assert (=> b!4653233 m!5530589))

(declare-fun m!5530591 () Bool)

(assert (=> b!4653234 m!5530591))

(assert (=> b!4652954 d!1475310))

(declare-fun tp!1343238 () Bool)

(declare-fun e!2903153 () Bool)

(declare-fun b!4653239 () Bool)

(assert (=> b!4653239 (= e!2903153 (and tp_is_empty!29821 tp_is_empty!29823 tp!1343238))))

(assert (=> b!4652960 (= tp!1343231 e!2903153)))

(assert (= (and b!4652960 ((_ is Cons!51874) (t!359110 oldBucket!40))) b!4653239))

(declare-fun b!4653240 () Bool)

(declare-fun e!2903154 () Bool)

(declare-fun tp!1343239 () Bool)

(assert (=> b!4653240 (= e!2903154 (and tp_is_empty!29821 tp_is_empty!29823 tp!1343239))))

(assert (=> b!4652948 (= tp!1343230 e!2903154)))

(assert (= (and b!4652948 ((_ is Cons!51874) (t!359110 newBucket!224))) b!4653240))

(declare-fun b_lambda!173391 () Bool)

(assert (= b_lambda!173389 (or b!4652954 b_lambda!173391)))

(declare-fun bs!1061988 () Bool)

(declare-fun d!1475312 () Bool)

(assert (= bs!1061988 (and d!1475312 b!4652954)))

(assert (=> bs!1061988 (= (dynLambda!21578 lambda!198730 (h!58013 lt!1816245)) (noDuplicateKeys!1632 (_2!29782 (h!58013 lt!1816245))))))

(declare-fun m!5530593 () Bool)

(assert (=> bs!1061988 m!5530593))

(assert (=> b!4653233 d!1475312))

(check-sat (not bm!325127) (not bm!325132) (not d!1475284) (not bm!325131) (not bm!325137) (not b!4653227) (not b!4653161) (not b!4653103) tp_is_empty!29823 (not b!4653220) (not d!1475298) (not d!1475272) (not b!4653188) (not d!1475200) (not b!4653223) (not b!4653192) (not b!4653180) (not d!1475296) (not d!1475292) (not b!4653190) (not b!4653176) (not bm!325124) (not bm!325126) tp_is_empty!29821 (not b!4653113) (not b!4653234) (not d!1475270) (not b!4653153) (not b!4653240) (not b!4653109) (not d!1475306) (not b!4653152) (not b!4653219) (not b!4653151) (not b!4653129) (not b!4653105) (not d!1475288) (not d!1475276) (not b!4653239) (not b!4653218) (not bm!325128) (not b!4653215) (not b!4653224) (not d!1475248) (not b!4653112) (not d!1475282) (not b!4653179) (not bm!325135) (not bm!325140) (not b!4653154) (not bm!325139) (not d!1475262) (not d!1475308) (not b!4653225) (not d!1475300) (not b_lambda!173391) (not d!1475290) (not bs!1061988) (not bm!325138) (not b!4653110) (not d!1475302) (not d!1475268) (not bm!325123) (not b!4653216) (not b!4653102) (not b!4653178) (not d!1475274) (not b!4653106) (not bm!325133) (not d!1475280) (not b!4653222) (not b!4653228) (not bm!325134) (not b!4653163) (not b!4653207) (not b!4653156) (not d!1475260) (not b!4653217) (not b!4653149) (not b!4653209) (not b!4653203) (not b!4653148) (not bm!325125) (not bm!325136) (not b!4653128) (not b!4653164) (not b!4653175) (not b!4653170) (not d!1475294))
(check-sat)
(get-model)

(declare-fun d!1475352 () Bool)

(declare-fun res!1956162 () Bool)

(declare-fun e!2903191 () Bool)

(assert (=> d!1475352 (=> res!1956162 e!2903191)))

(assert (=> d!1475352 (= res!1956162 (not ((_ is Cons!51874) (t!359110 oldBucket!40))))))

(assert (=> d!1475352 (= (noDuplicateKeys!1632 (t!359110 oldBucket!40)) e!2903191)))

(declare-fun b!4653292 () Bool)

(declare-fun e!2903192 () Bool)

(assert (=> b!4653292 (= e!2903191 e!2903192)))

(declare-fun res!1956163 () Bool)

(assert (=> b!4653292 (=> (not res!1956163) (not e!2903192))))

(assert (=> b!4653292 (= res!1956163 (not (containsKey!2708 (t!359110 (t!359110 oldBucket!40)) (_1!29781 (h!58012 (t!359110 oldBucket!40))))))))

(declare-fun b!4653293 () Bool)

(assert (=> b!4653293 (= e!2903192 (noDuplicateKeys!1632 (t!359110 (t!359110 oldBucket!40))))))

(assert (= (and d!1475352 (not res!1956162)) b!4653292))

(assert (= (and b!4653292 res!1956163) b!4653293))

(declare-fun m!5530669 () Bool)

(assert (=> b!4653292 m!5530669))

(declare-fun m!5530671 () Bool)

(assert (=> b!4653293 m!5530671))

(assert (=> b!4653129 d!1475352))

(declare-fun d!1475354 () Bool)

(declare-fun lt!1816689 () Bool)

(assert (=> d!1475354 (= lt!1816689 (select (content!8989 (toList!5195 lt!1816624)) lt!1816246))))

(declare-fun e!2903197 () Bool)

(assert (=> d!1475354 (= lt!1816689 e!2903197)))

(declare-fun res!1956168 () Bool)

(assert (=> d!1475354 (=> (not res!1956168) (not e!2903197))))

(assert (=> d!1475354 (= res!1956168 ((_ is Cons!51874) (toList!5195 lt!1816624)))))

(assert (=> d!1475354 (= (contains!15023 (toList!5195 lt!1816624) lt!1816246) lt!1816689)))

(declare-fun b!4653298 () Bool)

(declare-fun e!2903198 () Bool)

(assert (=> b!4653298 (= e!2903197 e!2903198)))

(declare-fun res!1956169 () Bool)

(assert (=> b!4653298 (=> res!1956169 e!2903198)))

(assert (=> b!4653298 (= res!1956169 (= (h!58012 (toList!5195 lt!1816624)) lt!1816246))))

(declare-fun b!4653299 () Bool)

(assert (=> b!4653299 (= e!2903198 (contains!15023 (t!359110 (toList!5195 lt!1816624)) lt!1816246))))

(assert (= (and d!1475354 res!1956168) b!4653298))

(assert (= (and b!4653298 (not res!1956169)) b!4653299))

(declare-fun m!5530673 () Bool)

(assert (=> d!1475354 m!5530673))

(declare-fun m!5530675 () Bool)

(assert (=> d!1475354 m!5530675))

(declare-fun m!5530677 () Bool)

(assert (=> b!4653299 m!5530677))

(assert (=> b!4653218 d!1475354))

(declare-fun d!1475356 () Bool)

(declare-fun res!1956174 () Bool)

(declare-fun e!2903203 () Bool)

(assert (=> d!1475356 (=> res!1956174 e!2903203)))

(assert (=> d!1475356 (= res!1956174 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475356 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198827) e!2903203)))

(declare-fun b!4653304 () Bool)

(declare-fun e!2903204 () Bool)

(assert (=> b!4653304 (= e!2903203 e!2903204)))

(declare-fun res!1956175 () Bool)

(assert (=> b!4653304 (=> (not res!1956175) (not e!2903204))))

(declare-fun dynLambda!21580 (Int tuple2!52974) Bool)

(assert (=> b!4653304 (= res!1956175 (dynLambda!21580 lambda!198827 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653305 () Bool)

(assert (=> b!4653305 (= e!2903204 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) lambda!198827))))

(assert (= (and d!1475356 (not res!1956174)) b!4653304))

(assert (= (and b!4653304 res!1956175) b!4653305))

(declare-fun b_lambda!173403 () Bool)

(assert (=> (not b_lambda!173403) (not b!4653304)))

(declare-fun m!5530679 () Bool)

(assert (=> b!4653304 m!5530679))

(declare-fun m!5530681 () Bool)

(assert (=> b!4653305 m!5530681))

(assert (=> b!4653109 d!1475356))

(declare-fun d!1475358 () Bool)

(declare-fun lt!1816692 () Bool)

(declare-fun content!8990 (List!52001) (InoxSet K!13230))

(assert (=> d!1475358 (= lt!1816692 (select (content!8990 (keys!18370 lt!1816241)) key!4968))))

(declare-fun e!2903209 () Bool)

(assert (=> d!1475358 (= lt!1816692 e!2903209)))

(declare-fun res!1956180 () Bool)

(assert (=> d!1475358 (=> (not res!1956180) (not e!2903209))))

(assert (=> d!1475358 (= res!1956180 ((_ is Cons!51877) (keys!18370 lt!1816241)))))

(assert (=> d!1475358 (= (contains!15021 (keys!18370 lt!1816241) key!4968) lt!1816692)))

(declare-fun b!4653310 () Bool)

(declare-fun e!2903210 () Bool)

(assert (=> b!4653310 (= e!2903209 e!2903210)))

(declare-fun res!1956181 () Bool)

(assert (=> b!4653310 (=> res!1956181 e!2903210)))

(assert (=> b!4653310 (= res!1956181 (= (h!58017 (keys!18370 lt!1816241)) key!4968))))

(declare-fun b!4653311 () Bool)

(assert (=> b!4653311 (= e!2903210 (contains!15021 (t!359115 (keys!18370 lt!1816241)) key!4968))))

(assert (= (and d!1475358 res!1956180) b!4653310))

(assert (= (and b!4653310 (not res!1956181)) b!4653311))

(assert (=> d!1475358 m!5530375))

(declare-fun m!5530683 () Bool)

(assert (=> d!1475358 m!5530683))

(declare-fun m!5530685 () Bool)

(assert (=> d!1475358 m!5530685))

(declare-fun m!5530687 () Bool)

(assert (=> b!4653311 m!5530687))

(assert (=> b!4653151 d!1475358))

(declare-fun b!4653341 () Bool)

(assert (=> b!4653341 true))

(declare-fun d!1475360 () Bool)

(declare-fun e!2903225 () Bool)

(assert (=> d!1475360 e!2903225))

(declare-fun res!1956190 () Bool)

(assert (=> d!1475360 (=> (not res!1956190) (not e!2903225))))

(declare-fun lt!1816717 () List!52001)

(declare-fun noDuplicate!833 (List!52001) Bool)

(assert (=> d!1475360 (= res!1956190 (noDuplicate!833 lt!1816717))))

(assert (=> d!1475360 (= lt!1816717 (getKeysList!743 (toList!5195 lt!1816241)))))

(assert (=> d!1475360 (= (keys!18370 lt!1816241) lt!1816717)))

(declare-fun b!4653340 () Bool)

(declare-fun res!1956192 () Bool)

(assert (=> b!4653340 (=> (not res!1956192) (not e!2903225))))

(declare-fun length!522 (List!52001) Int)

(declare-fun length!523 (List!51998) Int)

(assert (=> b!4653340 (= res!1956192 (= (length!522 lt!1816717) (length!523 (toList!5195 lt!1816241))))))

(declare-fun res!1956191 () Bool)

(assert (=> b!4653341 (=> (not res!1956191) (not e!2903225))))

(declare-fun lambda!198857 () Int)

(declare-fun forall!11011 (List!52001 Int) Bool)

(assert (=> b!4653341 (= res!1956191 (forall!11011 lt!1816717 lambda!198857))))

(declare-fun lambda!198858 () Int)

(declare-fun b!4653342 () Bool)

(declare-fun map!11462 (List!51998 Int) List!52001)

(assert (=> b!4653342 (= e!2903225 (= (content!8990 lt!1816717) (content!8990 (map!11462 (toList!5195 lt!1816241) lambda!198858))))))

(assert (= (and d!1475360 res!1956190) b!4653340))

(assert (= (and b!4653340 res!1956192) b!4653341))

(assert (= (and b!4653341 res!1956191) b!4653342))

(declare-fun m!5530689 () Bool)

(assert (=> d!1475360 m!5530689))

(assert (=> d!1475360 m!5530393))

(declare-fun m!5530691 () Bool)

(assert (=> b!4653340 m!5530691))

(declare-fun m!5530693 () Bool)

(assert (=> b!4653340 m!5530693))

(declare-fun m!5530695 () Bool)

(assert (=> b!4653341 m!5530695))

(declare-fun m!5530697 () Bool)

(assert (=> b!4653342 m!5530697))

(declare-fun m!5530699 () Bool)

(assert (=> b!4653342 m!5530699))

(assert (=> b!4653342 m!5530699))

(declare-fun m!5530701 () Bool)

(assert (=> b!4653342 m!5530701))

(assert (=> b!4653151 d!1475360))

(declare-fun d!1475362 () Bool)

(declare-fun res!1956203 () Bool)

(declare-fun e!2903232 () Bool)

(assert (=> d!1475362 (=> res!1956203 e!2903232)))

(assert (=> d!1475362 (= res!1956203 (and ((_ is Cons!51874) (toList!5195 lt!1816241)) (= (_1!29781 (h!58012 (toList!5195 lt!1816241))) key!4968)))))

(assert (=> d!1475362 (= (containsKey!2711 (toList!5195 lt!1816241) key!4968) e!2903232)))

(declare-fun b!4653355 () Bool)

(declare-fun e!2903233 () Bool)

(assert (=> b!4653355 (= e!2903232 e!2903233)))

(declare-fun res!1956204 () Bool)

(assert (=> b!4653355 (=> (not res!1956204) (not e!2903233))))

(assert (=> b!4653355 (= res!1956204 ((_ is Cons!51874) (toList!5195 lt!1816241)))))

(declare-fun b!4653356 () Bool)

(assert (=> b!4653356 (= e!2903233 (containsKey!2711 (t!359110 (toList!5195 lt!1816241)) key!4968))))

(assert (= (and d!1475362 (not res!1956203)) b!4653355))

(assert (= (and b!4653355 res!1956204) b!4653356))

(declare-fun m!5530703 () Bool)

(assert (=> b!4653356 m!5530703))

(assert (=> b!4653154 d!1475362))

(declare-fun d!1475364 () Bool)

(assert (=> d!1475364 (containsKey!2711 (toList!5195 lt!1816241) key!4968)))

(declare-fun lt!1816720 () Unit!118036)

(declare-fun choose!31967 (List!51998 K!13230) Unit!118036)

(assert (=> d!1475364 (= lt!1816720 (choose!31967 (toList!5195 lt!1816241) key!4968))))

(assert (=> d!1475364 (invariantList!1292 (toList!5195 lt!1816241))))

(assert (=> d!1475364 (= (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816241) key!4968) lt!1816720)))

(declare-fun bs!1061993 () Bool)

(assert (= bs!1061993 d!1475364))

(assert (=> bs!1061993 m!5530389))

(declare-fun m!5530705 () Bool)

(assert (=> bs!1061993 m!5530705))

(declare-fun m!5530707 () Bool)

(assert (=> bs!1061993 m!5530707))

(assert (=> b!4653154 d!1475364))

(declare-fun d!1475366 () Bool)

(declare-fun res!1956205 () Bool)

(declare-fun e!2903234 () Bool)

(assert (=> d!1475366 (=> res!1956205 e!2903234)))

(assert (=> d!1475366 (= res!1956205 (and ((_ is Cons!51874) lt!1816608) (= (_1!29781 (h!58012 lt!1816608)) key!4968)))))

(assert (=> d!1475366 (= (containsKey!2708 lt!1816608 key!4968) e!2903234)))

(declare-fun b!4653357 () Bool)

(declare-fun e!2903235 () Bool)

(assert (=> b!4653357 (= e!2903234 e!2903235)))

(declare-fun res!1956206 () Bool)

(assert (=> b!4653357 (=> (not res!1956206) (not e!2903235))))

(assert (=> b!4653357 (= res!1956206 ((_ is Cons!51874) lt!1816608))))

(declare-fun b!4653358 () Bool)

(assert (=> b!4653358 (= e!2903235 (containsKey!2708 (t!359110 lt!1816608) key!4968))))

(assert (= (and d!1475366 (not res!1956205)) b!4653357))

(assert (= (and b!4653357 res!1956206) b!4653358))

(declare-fun m!5530709 () Bool)

(assert (=> b!4653358 m!5530709))

(assert (=> d!1475282 d!1475366))

(assert (=> d!1475282 d!1475256))

(declare-fun d!1475368 () Bool)

(declare-fun noDuplicatedKeys!347 (List!51998) Bool)

(assert (=> d!1475368 (= (invariantList!1292 (toList!5195 lt!1816651)) (noDuplicatedKeys!347 (toList!5195 lt!1816651)))))

(declare-fun bs!1061994 () Bool)

(assert (= bs!1061994 d!1475368))

(declare-fun m!5530711 () Bool)

(assert (=> bs!1061994 m!5530711))

(assert (=> b!4653225 d!1475368))

(declare-fun d!1475370 () Bool)

(declare-fun res!1956207 () Bool)

(declare-fun e!2903236 () Bool)

(assert (=> d!1475370 (=> res!1956207 e!2903236)))

(assert (=> d!1475370 (= res!1956207 (not ((_ is Cons!51874) (_2!29782 (h!58013 lt!1816245)))))))

(assert (=> d!1475370 (= (noDuplicateKeys!1632 (_2!29782 (h!58013 lt!1816245))) e!2903236)))

(declare-fun b!4653359 () Bool)

(declare-fun e!2903237 () Bool)

(assert (=> b!4653359 (= e!2903236 e!2903237)))

(declare-fun res!1956208 () Bool)

(assert (=> b!4653359 (=> (not res!1956208) (not e!2903237))))

(assert (=> b!4653359 (= res!1956208 (not (containsKey!2708 (t!359110 (_2!29782 (h!58013 lt!1816245))) (_1!29781 (h!58012 (_2!29782 (h!58013 lt!1816245)))))))))

(declare-fun b!4653360 () Bool)

(assert (=> b!4653360 (= e!2903237 (noDuplicateKeys!1632 (t!359110 (_2!29782 (h!58013 lt!1816245)))))))

(assert (= (and d!1475370 (not res!1956207)) b!4653359))

(assert (= (and b!4653359 res!1956208) b!4653360))

(declare-fun m!5530713 () Bool)

(assert (=> b!4653359 m!5530713))

(declare-fun m!5530715 () Bool)

(assert (=> b!4653360 m!5530715))

(assert (=> bs!1061988 d!1475370))

(declare-fun d!1475372 () Bool)

(declare-fun lt!1816721 () Bool)

(assert (=> d!1475372 (= lt!1816721 (select (content!8990 e!2903101) key!4968))))

(declare-fun e!2903238 () Bool)

(assert (=> d!1475372 (= lt!1816721 e!2903238)))

(declare-fun res!1956209 () Bool)

(assert (=> d!1475372 (=> (not res!1956209) (not e!2903238))))

(assert (=> d!1475372 (= res!1956209 ((_ is Cons!51877) e!2903101))))

(assert (=> d!1475372 (= (contains!15021 e!2903101 key!4968) lt!1816721)))

(declare-fun b!4653361 () Bool)

(declare-fun e!2903239 () Bool)

(assert (=> b!4653361 (= e!2903238 e!2903239)))

(declare-fun res!1956210 () Bool)

(assert (=> b!4653361 (=> res!1956210 e!2903239)))

(assert (=> b!4653361 (= res!1956210 (= (h!58017 e!2903101) key!4968))))

(declare-fun b!4653362 () Bool)

(assert (=> b!4653362 (= e!2903239 (contains!15021 (t!359115 e!2903101) key!4968))))

(assert (= (and d!1475372 res!1956209) b!4653361))

(assert (= (and b!4653361 (not res!1956210)) b!4653362))

(declare-fun m!5530717 () Bool)

(assert (=> d!1475372 m!5530717))

(declare-fun m!5530719 () Bool)

(assert (=> d!1475372 m!5530719))

(declare-fun m!5530721 () Bool)

(assert (=> b!4653362 m!5530721))

(assert (=> bm!325131 d!1475372))

(declare-fun d!1475374 () Bool)

(assert (=> d!1475374 (= (invariantList!1292 (toList!5195 lt!1816627)) (noDuplicatedKeys!347 (toList!5195 lt!1816627)))))

(declare-fun bs!1061995 () Bool)

(assert (= bs!1061995 d!1475374))

(declare-fun m!5530723 () Bool)

(assert (=> bs!1061995 m!5530723))

(assert (=> b!4653220 d!1475374))

(declare-fun d!1475376 () Bool)

(declare-fun res!1956215 () Bool)

(declare-fun e!2903247 () Bool)

(assert (=> d!1475376 (=> res!1956215 e!2903247)))

(assert (=> d!1475376 (= res!1956215 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475376 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796438 lambda!198849 lambda!198850)) e!2903247)))

(declare-fun b!4653377 () Bool)

(declare-fun e!2903248 () Bool)

(assert (=> b!4653377 (= e!2903247 e!2903248)))

(declare-fun res!1956216 () Bool)

(assert (=> b!4653377 (=> (not res!1956216) (not e!2903248))))

(assert (=> b!4653377 (= res!1956216 (dynLambda!21580 (ite c!796438 lambda!198849 lambda!198850) (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653378 () Bool)

(assert (=> b!4653378 (= e!2903248 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) (ite c!796438 lambda!198849 lambda!198850)))))

(assert (= (and d!1475376 (not res!1956215)) b!4653377))

(assert (= (and b!4653377 res!1956216) b!4653378))

(declare-fun b_lambda!173405 () Bool)

(assert (=> (not b_lambda!173405) (not b!4653377)))

(declare-fun m!5530725 () Bool)

(assert (=> b!4653377 m!5530725))

(declare-fun m!5530727 () Bool)

(assert (=> b!4653378 m!5530727))

(assert (=> bm!325139 d!1475376))

(assert (=> d!1475260 d!1475362))

(declare-fun d!1475378 () Bool)

(declare-fun res!1956217 () Bool)

(declare-fun e!2903249 () Bool)

(assert (=> d!1475378 (=> res!1956217 e!2903249)))

(assert (=> d!1475378 (= res!1956217 ((_ is Nil!51874) oldBucket!40))))

(assert (=> d!1475378 (= (forall!11010 oldBucket!40 lambda!198833) e!2903249)))

(declare-fun b!4653379 () Bool)

(declare-fun e!2903250 () Bool)

(assert (=> b!4653379 (= e!2903249 e!2903250)))

(declare-fun res!1956218 () Bool)

(assert (=> b!4653379 (=> (not res!1956218) (not e!2903250))))

(assert (=> b!4653379 (= res!1956218 (dynLambda!21580 lambda!198833 (h!58012 oldBucket!40)))))

(declare-fun b!4653380 () Bool)

(assert (=> b!4653380 (= e!2903250 (forall!11010 (t!359110 oldBucket!40) lambda!198833))))

(assert (= (and d!1475378 (not res!1956217)) b!4653379))

(assert (= (and b!4653379 res!1956218) b!4653380))

(declare-fun b_lambda!173407 () Bool)

(assert (=> (not b_lambda!173407) (not b!4653379)))

(declare-fun m!5530729 () Bool)

(assert (=> b!4653379 m!5530729))

(declare-fun m!5530731 () Bool)

(assert (=> b!4653380 m!5530731))

(assert (=> d!1475270 d!1475378))

(assert (=> b!4653156 d!1475358))

(assert (=> b!4653156 d!1475360))

(declare-fun d!1475380 () Bool)

(declare-fun res!1956219 () Bool)

(declare-fun e!2903251 () Bool)

(assert (=> d!1475380 (=> res!1956219 e!2903251)))

(assert (=> d!1475380 (= res!1956219 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475380 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796411 lambda!198824 lambda!198825)) e!2903251)))

(declare-fun b!4653381 () Bool)

(declare-fun e!2903252 () Bool)

(assert (=> b!4653381 (= e!2903251 e!2903252)))

(declare-fun res!1956220 () Bool)

(assert (=> b!4653381 (=> (not res!1956220) (not e!2903252))))

(assert (=> b!4653381 (= res!1956220 (dynLambda!21580 (ite c!796411 lambda!198824 lambda!198825) (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653382 () Bool)

(assert (=> b!4653382 (= e!2903252 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) (ite c!796411 lambda!198824 lambda!198825)))))

(assert (= (and d!1475380 (not res!1956219)) b!4653381))

(assert (= (and b!4653381 res!1956220) b!4653382))

(declare-fun b_lambda!173409 () Bool)

(assert (=> (not b_lambda!173409) (not b!4653381)))

(declare-fun m!5530771 () Bool)

(assert (=> b!4653381 m!5530771))

(declare-fun m!5530775 () Bool)

(assert (=> b!4653382 m!5530775))

(assert (=> bm!325127 d!1475380))

(declare-fun d!1475384 () Bool)

(assert (=> d!1475384 (= (invariantList!1292 (toList!5195 lt!1816610)) (noDuplicatedKeys!347 (toList!5195 lt!1816610)))))

(declare-fun bs!1061996 () Bool)

(assert (= bs!1061996 d!1475384))

(declare-fun m!5530777 () Bool)

(assert (=> bs!1061996 m!5530777))

(assert (=> d!1475290 d!1475384))

(declare-fun d!1475386 () Bool)

(declare-fun res!1956221 () Bool)

(declare-fun e!2903253 () Bool)

(assert (=> d!1475386 (=> res!1956221 e!2903253)))

(assert (=> d!1475386 (= res!1956221 ((_ is Nil!51875) lt!1816245))))

(assert (=> d!1475386 (= (forall!11008 lt!1816245 lambda!198843) e!2903253)))

(declare-fun b!4653383 () Bool)

(declare-fun e!2903254 () Bool)

(assert (=> b!4653383 (= e!2903253 e!2903254)))

(declare-fun res!1956222 () Bool)

(assert (=> b!4653383 (=> (not res!1956222) (not e!2903254))))

(assert (=> b!4653383 (= res!1956222 (dynLambda!21578 lambda!198843 (h!58013 lt!1816245)))))

(declare-fun b!4653384 () Bool)

(assert (=> b!4653384 (= e!2903254 (forall!11008 (t!359111 lt!1816245) lambda!198843))))

(assert (= (and d!1475386 (not res!1956221)) b!4653383))

(assert (= (and b!4653383 res!1956222) b!4653384))

(declare-fun b_lambda!173411 () Bool)

(assert (=> (not b_lambda!173411) (not b!4653383)))

(declare-fun m!5530779 () Bool)

(assert (=> b!4653383 m!5530779))

(declare-fun m!5530781 () Bool)

(assert (=> b!4653384 m!5530781))

(assert (=> d!1475290 d!1475386))

(declare-fun d!1475388 () Bool)

(declare-fun res!1956223 () Bool)

(declare-fun e!2903255 () Bool)

(assert (=> d!1475388 (=> res!1956223 e!2903255)))

(assert (=> d!1475388 (= res!1956223 ((_ is Nil!51874) newBucket!224))))

(assert (=> d!1475388 (= (forall!11010 newBucket!224 lambda!198844) e!2903255)))

(declare-fun b!4653385 () Bool)

(declare-fun e!2903256 () Bool)

(assert (=> b!4653385 (= e!2903255 e!2903256)))

(declare-fun res!1956224 () Bool)

(assert (=> b!4653385 (=> (not res!1956224) (not e!2903256))))

(assert (=> b!4653385 (= res!1956224 (dynLambda!21580 lambda!198844 (h!58012 newBucket!224)))))

(declare-fun b!4653386 () Bool)

(assert (=> b!4653386 (= e!2903256 (forall!11010 (t!359110 newBucket!224) lambda!198844))))

(assert (= (and d!1475388 (not res!1956223)) b!4653385))

(assert (= (and b!4653385 res!1956224) b!4653386))

(declare-fun b_lambda!173413 () Bool)

(assert (=> (not b_lambda!173413) (not b!4653385)))

(declare-fun m!5530785 () Bool)

(assert (=> b!4653385 m!5530785))

(declare-fun m!5530787 () Bool)

(assert (=> b!4653386 m!5530787))

(assert (=> d!1475292 d!1475388))

(declare-fun d!1475392 () Bool)

(declare-fun res!1956227 () Bool)

(declare-fun e!2903259 () Bool)

(assert (=> d!1475392 (=> res!1956227 e!2903259)))

(assert (=> d!1475392 (= res!1956227 (and ((_ is Cons!51874) (t!359110 newBucket!224)) (= (_1!29781 (h!58012 (t!359110 newBucket!224))) (_1!29781 (h!58012 newBucket!224)))))))

(assert (=> d!1475392 (= (containsKey!2708 (t!359110 newBucket!224) (_1!29781 (h!58012 newBucket!224))) e!2903259)))

(declare-fun b!4653389 () Bool)

(declare-fun e!2903260 () Bool)

(assert (=> b!4653389 (= e!2903259 e!2903260)))

(declare-fun res!1956228 () Bool)

(assert (=> b!4653389 (=> (not res!1956228) (not e!2903260))))

(assert (=> b!4653389 (= res!1956228 ((_ is Cons!51874) (t!359110 newBucket!224)))))

(declare-fun b!4653390 () Bool)

(assert (=> b!4653390 (= e!2903260 (containsKey!2708 (t!359110 (t!359110 newBucket!224)) (_1!29781 (h!58012 newBucket!224))))))

(assert (= (and d!1475392 (not res!1956227)) b!4653389))

(assert (= (and b!4653389 res!1956228) b!4653390))

(declare-fun m!5530793 () Bool)

(assert (=> b!4653390 m!5530793))

(assert (=> b!4653163 d!1475392))

(declare-fun d!1475396 () Bool)

(declare-fun res!1956229 () Bool)

(declare-fun e!2903261 () Bool)

(assert (=> d!1475396 (=> res!1956229 e!2903261)))

(assert (=> d!1475396 (= res!1956229 ((_ is Nil!51874) lt!1816247))))

(assert (=> d!1475396 (= (forall!11010 lt!1816247 lambda!198827) e!2903261)))

(declare-fun b!4653391 () Bool)

(declare-fun e!2903262 () Bool)

(assert (=> b!4653391 (= e!2903261 e!2903262)))

(declare-fun res!1956230 () Bool)

(assert (=> b!4653391 (=> (not res!1956230) (not e!2903262))))

(assert (=> b!4653391 (= res!1956230 (dynLambda!21580 lambda!198827 (h!58012 lt!1816247)))))

(declare-fun b!4653392 () Bool)

(assert (=> b!4653392 (= e!2903262 (forall!11010 (t!359110 lt!1816247) lambda!198827))))

(assert (= (and d!1475396 (not res!1956229)) b!4653391))

(assert (= (and b!4653391 res!1956230) b!4653392))

(declare-fun b_lambda!173417 () Bool)

(assert (=> (not b_lambda!173417) (not b!4653391)))

(declare-fun m!5530795 () Bool)

(assert (=> b!4653391 m!5530795))

(declare-fun m!5530797 () Bool)

(assert (=> b!4653392 m!5530797))

(assert (=> d!1475248 d!1475396))

(declare-fun d!1475398 () Bool)

(declare-fun res!1956233 () Bool)

(declare-fun e!2903264 () Bool)

(assert (=> d!1475398 (=> res!1956233 e!2903264)))

(assert (=> d!1475398 (= res!1956233 (not ((_ is Cons!51874) lt!1816247)))))

(assert (=> d!1475398 (= (noDuplicateKeys!1632 lt!1816247) e!2903264)))

(declare-fun b!4653395 () Bool)

(declare-fun e!2903265 () Bool)

(assert (=> b!4653395 (= e!2903264 e!2903265)))

(declare-fun res!1956234 () Bool)

(assert (=> b!4653395 (=> (not res!1956234) (not e!2903265))))

(assert (=> b!4653395 (= res!1956234 (not (containsKey!2708 (t!359110 lt!1816247) (_1!29781 (h!58012 lt!1816247)))))))

(declare-fun b!4653396 () Bool)

(assert (=> b!4653396 (= e!2903265 (noDuplicateKeys!1632 (t!359110 lt!1816247)))))

(assert (= (and d!1475398 (not res!1956233)) b!4653395))

(assert (= (and b!4653395 res!1956234) b!4653396))

(declare-fun m!5530799 () Bool)

(assert (=> b!4653395 m!5530799))

(declare-fun m!5530801 () Bool)

(assert (=> b!4653396 m!5530801))

(assert (=> d!1475248 d!1475398))

(declare-fun d!1475400 () Bool)

(declare-fun res!1956235 () Bool)

(declare-fun e!2903266 () Bool)

(assert (=> d!1475400 (=> res!1956235 e!2903266)))

(assert (=> d!1475400 (= res!1956235 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475400 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796438 lambda!198849 lambda!198851)) e!2903266)))

(declare-fun b!4653397 () Bool)

(declare-fun e!2903267 () Bool)

(assert (=> b!4653397 (= e!2903266 e!2903267)))

(declare-fun res!1956236 () Bool)

(assert (=> b!4653397 (=> (not res!1956236) (not e!2903267))))

(assert (=> b!4653397 (= res!1956236 (dynLambda!21580 (ite c!796438 lambda!198849 lambda!198851) (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653398 () Bool)

(assert (=> b!4653398 (= e!2903267 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) (ite c!796438 lambda!198849 lambda!198851)))))

(assert (= (and d!1475400 (not res!1956235)) b!4653397))

(assert (= (and b!4653397 res!1956236) b!4653398))

(declare-fun b_lambda!173419 () Bool)

(assert (=> (not b_lambda!173419) (not b!4653397)))

(declare-fun m!5530815 () Bool)

(assert (=> b!4653397 m!5530815))

(declare-fun m!5530817 () Bool)

(assert (=> b!4653398 m!5530817))

(assert (=> bm!325138 d!1475400))

(declare-fun bs!1061998 () Bool)

(declare-fun b!4653410 () Bool)

(assert (= bs!1061998 (and b!4653410 d!1475272)))

(declare-fun lambda!198859 () Int)

(assert (=> bs!1061998 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816572) (= lambda!198859 lambda!198837))))

(declare-fun bs!1061999 () Bool)

(assert (= bs!1061999 (and b!4653410 b!4653178)))

(assert (=> bs!1061999 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816243) (= lambda!198859 lambda!198835))))

(declare-fun bs!1062000 () Bool)

(assert (= bs!1062000 (and b!4653410 b!4653222)))

(assert (=> bs!1062000 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816633) (= lambda!198859 lambda!198847))))

(declare-fun bs!1062001 () Bool)

(assert (= bs!1062001 (and b!4653410 b!4653227)))

(assert (=> bs!1062001 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198859 lambda!198850))))

(assert (=> bs!1061999 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816578) (= lambda!198859 lambda!198836))))

(assert (=> bs!1062001 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816657) (= lambda!198859 lambda!198851))))

(declare-fun bs!1062002 () Bool)

(assert (= bs!1062002 (and b!4653410 d!1475270)))

(assert (=> bs!1062002 (not (= lambda!198859 lambda!198833))))

(declare-fun bs!1062003 () Bool)

(assert (= bs!1062003 (and b!4653410 b!4653105)))

(assert (=> bs!1062003 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816505) (= lambda!198859 lambda!198820))))

(declare-fun bs!1062004 () Bool)

(assert (= bs!1062004 (and b!4653410 b!4653112)))

(assert (=> bs!1062004 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198859 lambda!198825))))

(assert (=> bs!1062000 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198859 lambda!198846))))

(declare-fun bs!1062005 () Bool)

(assert (= bs!1062005 (and b!4653410 d!1475300)))

(assert (=> bs!1062005 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816627) (= lambda!198859 lambda!198848))))

(assert (=> bs!1062003 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198859 lambda!198818))))

(declare-fun bs!1062006 () Bool)

(assert (= bs!1062006 (and b!4653410 b!4653177)))

(assert (=> bs!1062006 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816243) (= lambda!198859 lambda!198834))))

(declare-fun bs!1062007 () Bool)

(assert (= bs!1062007 (and b!4653410 b!4653226)))

(assert (=> bs!1062007 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198859 lambda!198849))))

(declare-fun bs!1062008 () Bool)

(assert (= bs!1062008 (and b!4653410 b!4653221)))

(assert (=> bs!1062008 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198859 lambda!198845))))

(declare-fun bs!1062009 () Bool)

(assert (= bs!1062009 (and b!4653410 d!1475200)))

(assert (=> bs!1062009 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816499) (= lambda!198859 lambda!198821))))

(declare-fun bs!1062010 () Bool)

(assert (= bs!1062010 (and b!4653410 b!4653104)))

(assert (=> bs!1062010 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198859 lambda!198817))))

(declare-fun bs!1062011 () Bool)

(assert (= bs!1062011 (and b!4653410 d!1475248)))

(assert (=> bs!1062011 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816520) (= lambda!198859 lambda!198827))))

(assert (=> bs!1062004 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816526) (= lambda!198859 lambda!198826))))

(declare-fun bs!1062012 () Bool)

(assert (= bs!1062012 (and b!4653410 b!4653111)))

(assert (=> bs!1062012 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198859 lambda!198824))))

(declare-fun bs!1062013 () Bool)

(assert (= bs!1062013 (and b!4653410 d!1475308)))

(assert (=> bs!1062013 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816651) (= lambda!198859 lambda!198852))))

(declare-fun bs!1062014 () Bool)

(assert (= bs!1062014 (and b!4653410 d!1475292)))

(assert (=> bs!1062014 (not (= lambda!198859 lambda!198844))))

(assert (=> b!4653410 true))

(declare-fun bs!1062015 () Bool)

(declare-fun b!4653411 () Bool)

(assert (= bs!1062015 (and b!4653411 d!1475272)))

(declare-fun lambda!198860 () Int)

(assert (=> bs!1062015 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816572) (= lambda!198860 lambda!198837))))

(declare-fun bs!1062016 () Bool)

(assert (= bs!1062016 (and b!4653411 b!4653178)))

(assert (=> bs!1062016 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816243) (= lambda!198860 lambda!198835))))

(declare-fun bs!1062017 () Bool)

(assert (= bs!1062017 (and b!4653411 b!4653222)))

(assert (=> bs!1062017 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816633) (= lambda!198860 lambda!198847))))

(declare-fun bs!1062018 () Bool)

(assert (= bs!1062018 (and b!4653411 b!4653227)))

(assert (=> bs!1062018 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198860 lambda!198850))))

(assert (=> bs!1062016 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816578) (= lambda!198860 lambda!198836))))

(assert (=> bs!1062018 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816657) (= lambda!198860 lambda!198851))))

(declare-fun bs!1062019 () Bool)

(assert (= bs!1062019 (and b!4653411 d!1475270)))

(assert (=> bs!1062019 (not (= lambda!198860 lambda!198833))))

(declare-fun bs!1062020 () Bool)

(assert (= bs!1062020 (and b!4653411 b!4653105)))

(assert (=> bs!1062020 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816505) (= lambda!198860 lambda!198820))))

(declare-fun bs!1062021 () Bool)

(assert (= bs!1062021 (and b!4653411 b!4653410)))

(assert (=> bs!1062021 (= lambda!198860 lambda!198859)))

(declare-fun bs!1062022 () Bool)

(assert (= bs!1062022 (and b!4653411 b!4653112)))

(assert (=> bs!1062022 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198860 lambda!198825))))

(assert (=> bs!1062017 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198860 lambda!198846))))

(declare-fun bs!1062023 () Bool)

(assert (= bs!1062023 (and b!4653411 d!1475300)))

(assert (=> bs!1062023 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816627) (= lambda!198860 lambda!198848))))

(assert (=> bs!1062020 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198860 lambda!198818))))

(declare-fun bs!1062024 () Bool)

(assert (= bs!1062024 (and b!4653411 b!4653177)))

(assert (=> bs!1062024 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816243) (= lambda!198860 lambda!198834))))

(declare-fun bs!1062025 () Bool)

(assert (= bs!1062025 (and b!4653411 b!4653226)))

(assert (=> bs!1062025 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198860 lambda!198849))))

(declare-fun bs!1062026 () Bool)

(assert (= bs!1062026 (and b!4653411 b!4653221)))

(assert (=> bs!1062026 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198860 lambda!198845))))

(declare-fun bs!1062027 () Bool)

(assert (= bs!1062027 (and b!4653411 d!1475200)))

(assert (=> bs!1062027 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816499) (= lambda!198860 lambda!198821))))

(declare-fun bs!1062028 () Bool)

(assert (= bs!1062028 (and b!4653411 b!4653104)))

(assert (=> bs!1062028 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198860 lambda!198817))))

(declare-fun bs!1062029 () Bool)

(assert (= bs!1062029 (and b!4653411 d!1475248)))

(assert (=> bs!1062029 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816520) (= lambda!198860 lambda!198827))))

(assert (=> bs!1062022 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816526) (= lambda!198860 lambda!198826))))

(declare-fun bs!1062030 () Bool)

(assert (= bs!1062030 (and b!4653411 b!4653111)))

(assert (=> bs!1062030 (= (= (extractMap!1688 (t!359111 lt!1816245)) (ListMap!4534 Nil!51874)) (= lambda!198860 lambda!198824))))

(declare-fun bs!1062031 () Bool)

(assert (= bs!1062031 (and b!4653411 d!1475308)))

(assert (=> bs!1062031 (= (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816651) (= lambda!198860 lambda!198852))))

(declare-fun bs!1062032 () Bool)

(assert (= bs!1062032 (and b!4653411 d!1475292)))

(assert (=> bs!1062032 (not (= lambda!198860 lambda!198844))))

(assert (=> b!4653411 true))

(declare-fun lambda!198861 () Int)

(declare-fun lt!1816751 () ListMap!4533)

(assert (=> bs!1062015 (= (= lt!1816751 lt!1816572) (= lambda!198861 lambda!198837))))

(assert (=> bs!1062016 (= (= lt!1816751 lt!1816243) (= lambda!198861 lambda!198835))))

(assert (=> bs!1062017 (= (= lt!1816751 lt!1816633) (= lambda!198861 lambda!198847))))

(assert (=> bs!1062018 (= (= lt!1816751 (ListMap!4534 Nil!51874)) (= lambda!198861 lambda!198850))))

(assert (=> bs!1062016 (= (= lt!1816751 lt!1816578) (= lambda!198861 lambda!198836))))

(assert (=> bs!1062018 (= (= lt!1816751 lt!1816657) (= lambda!198861 lambda!198851))))

(assert (=> bs!1062020 (= (= lt!1816751 lt!1816505) (= lambda!198861 lambda!198820))))

(assert (=> bs!1062021 (= (= lt!1816751 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198861 lambda!198859))))

(assert (=> bs!1062022 (= (= lt!1816751 (ListMap!4534 Nil!51874)) (= lambda!198861 lambda!198825))))

(assert (=> bs!1062017 (= (= lt!1816751 (ListMap!4534 Nil!51874)) (= lambda!198861 lambda!198846))))

(assert (=> bs!1062023 (= (= lt!1816751 lt!1816627) (= lambda!198861 lambda!198848))))

(assert (=> bs!1062020 (= (= lt!1816751 (ListMap!4534 Nil!51874)) (= lambda!198861 lambda!198818))))

(assert (=> bs!1062024 (= (= lt!1816751 lt!1816243) (= lambda!198861 lambda!198834))))

(assert (=> b!4653411 (= (= lt!1816751 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198861 lambda!198860))))

(assert (=> bs!1062019 (not (= lambda!198861 lambda!198833))))

(assert (=> bs!1062025 (= (= lt!1816751 (ListMap!4534 Nil!51874)) (= lambda!198861 lambda!198849))))

(assert (=> bs!1062026 (= (= lt!1816751 (ListMap!4534 Nil!51874)) (= lambda!198861 lambda!198845))))

(assert (=> bs!1062027 (= (= lt!1816751 lt!1816499) (= lambda!198861 lambda!198821))))

(assert (=> bs!1062028 (= (= lt!1816751 (ListMap!4534 Nil!51874)) (= lambda!198861 lambda!198817))))

(assert (=> bs!1062029 (= (= lt!1816751 lt!1816520) (= lambda!198861 lambda!198827))))

(assert (=> bs!1062022 (= (= lt!1816751 lt!1816526) (= lambda!198861 lambda!198826))))

(assert (=> bs!1062030 (= (= lt!1816751 (ListMap!4534 Nil!51874)) (= lambda!198861 lambda!198824))))

(assert (=> bs!1062031 (= (= lt!1816751 lt!1816651) (= lambda!198861 lambda!198852))))

(assert (=> bs!1062032 (not (= lambda!198861 lambda!198844))))

(assert (=> b!4653411 true))

(declare-fun bs!1062033 () Bool)

(declare-fun d!1475404 () Bool)

(assert (= bs!1062033 (and d!1475404 d!1475272)))

(declare-fun lt!1816745 () ListMap!4533)

(declare-fun lambda!198862 () Int)

(assert (=> bs!1062033 (= (= lt!1816745 lt!1816572) (= lambda!198862 lambda!198837))))

(declare-fun bs!1062034 () Bool)

(assert (= bs!1062034 (and d!1475404 b!4653178)))

(assert (=> bs!1062034 (= (= lt!1816745 lt!1816243) (= lambda!198862 lambda!198835))))

(declare-fun bs!1062035 () Bool)

(assert (= bs!1062035 (and d!1475404 b!4653222)))

(assert (=> bs!1062035 (= (= lt!1816745 lt!1816633) (= lambda!198862 lambda!198847))))

(declare-fun bs!1062036 () Bool)

(assert (= bs!1062036 (and d!1475404 b!4653227)))

(assert (=> bs!1062036 (= (= lt!1816745 (ListMap!4534 Nil!51874)) (= lambda!198862 lambda!198850))))

(assert (=> bs!1062034 (= (= lt!1816745 lt!1816578) (= lambda!198862 lambda!198836))))

(assert (=> bs!1062036 (= (= lt!1816745 lt!1816657) (= lambda!198862 lambda!198851))))

(declare-fun bs!1062037 () Bool)

(assert (= bs!1062037 (and d!1475404 b!4653410)))

(assert (=> bs!1062037 (= (= lt!1816745 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198862 lambda!198859))))

(declare-fun bs!1062038 () Bool)

(assert (= bs!1062038 (and d!1475404 b!4653112)))

(assert (=> bs!1062038 (= (= lt!1816745 (ListMap!4534 Nil!51874)) (= lambda!198862 lambda!198825))))

(assert (=> bs!1062035 (= (= lt!1816745 (ListMap!4534 Nil!51874)) (= lambda!198862 lambda!198846))))

(declare-fun bs!1062039 () Bool)

(assert (= bs!1062039 (and d!1475404 d!1475300)))

(assert (=> bs!1062039 (= (= lt!1816745 lt!1816627) (= lambda!198862 lambda!198848))))

(declare-fun bs!1062040 () Bool)

(assert (= bs!1062040 (and d!1475404 b!4653105)))

(assert (=> bs!1062040 (= (= lt!1816745 (ListMap!4534 Nil!51874)) (= lambda!198862 lambda!198818))))

(declare-fun bs!1062041 () Bool)

(assert (= bs!1062041 (and d!1475404 b!4653177)))

(assert (=> bs!1062041 (= (= lt!1816745 lt!1816243) (= lambda!198862 lambda!198834))))

(declare-fun bs!1062042 () Bool)

(assert (= bs!1062042 (and d!1475404 b!4653411)))

(assert (=> bs!1062042 (= (= lt!1816745 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198862 lambda!198860))))

(declare-fun bs!1062043 () Bool)

(assert (= bs!1062043 (and d!1475404 d!1475270)))

(assert (=> bs!1062043 (not (= lambda!198862 lambda!198833))))

(assert (=> bs!1062042 (= (= lt!1816745 lt!1816751) (= lambda!198862 lambda!198861))))

(assert (=> bs!1062040 (= (= lt!1816745 lt!1816505) (= lambda!198862 lambda!198820))))

(declare-fun bs!1062044 () Bool)

(assert (= bs!1062044 (and d!1475404 b!4653226)))

(assert (=> bs!1062044 (= (= lt!1816745 (ListMap!4534 Nil!51874)) (= lambda!198862 lambda!198849))))

(declare-fun bs!1062045 () Bool)

(assert (= bs!1062045 (and d!1475404 b!4653221)))

(assert (=> bs!1062045 (= (= lt!1816745 (ListMap!4534 Nil!51874)) (= lambda!198862 lambda!198845))))

(declare-fun bs!1062046 () Bool)

(assert (= bs!1062046 (and d!1475404 d!1475200)))

(assert (=> bs!1062046 (= (= lt!1816745 lt!1816499) (= lambda!198862 lambda!198821))))

(declare-fun bs!1062047 () Bool)

(assert (= bs!1062047 (and d!1475404 b!4653104)))

(assert (=> bs!1062047 (= (= lt!1816745 (ListMap!4534 Nil!51874)) (= lambda!198862 lambda!198817))))

(declare-fun bs!1062048 () Bool)

(assert (= bs!1062048 (and d!1475404 d!1475248)))

(assert (=> bs!1062048 (= (= lt!1816745 lt!1816520) (= lambda!198862 lambda!198827))))

(assert (=> bs!1062038 (= (= lt!1816745 lt!1816526) (= lambda!198862 lambda!198826))))

(declare-fun bs!1062049 () Bool)

(assert (= bs!1062049 (and d!1475404 b!4653111)))

(assert (=> bs!1062049 (= (= lt!1816745 (ListMap!4534 Nil!51874)) (= lambda!198862 lambda!198824))))

(declare-fun bs!1062050 () Bool)

(assert (= bs!1062050 (and d!1475404 d!1475308)))

(assert (=> bs!1062050 (= (= lt!1816745 lt!1816651) (= lambda!198862 lambda!198852))))

(declare-fun bs!1062051 () Bool)

(assert (= bs!1062051 (and d!1475404 d!1475292)))

(assert (=> bs!1062051 (not (= lambda!198862 lambda!198844))))

(assert (=> d!1475404 true))

(declare-fun b!4653408 () Bool)

(declare-fun res!1956242 () Bool)

(declare-fun e!2903274 () Bool)

(assert (=> b!4653408 (=> (not res!1956242) (not e!2903274))))

(assert (=> b!4653408 (= res!1956242 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 lt!1816245))) lambda!198862))))

(declare-fun b!4653409 () Bool)

(assert (=> b!4653409 (= e!2903274 (invariantList!1292 (toList!5195 lt!1816745)))))

(declare-fun e!2903275 () ListMap!4533)

(assert (=> b!4653410 (= e!2903275 (extractMap!1688 (t!359111 lt!1816245)))))

(declare-fun lt!1816753 () Unit!118036)

(declare-fun call!325161 () Unit!118036)

(assert (=> b!4653410 (= lt!1816753 call!325161)))

(declare-fun call!325160 () Bool)

(assert (=> b!4653410 call!325160))

(declare-fun lt!1816762 () Unit!118036)

(assert (=> b!4653410 (= lt!1816762 lt!1816753)))

(declare-fun call!325162 () Bool)

(assert (=> b!4653410 call!325162))

(declare-fun lt!1816748 () Unit!118036)

(declare-fun Unit!118162 () Unit!118036)

(assert (=> b!4653410 (= lt!1816748 Unit!118162)))

(declare-fun c!796468 () Bool)

(declare-fun bm!325155 () Bool)

(assert (=> bm!325155 (= call!325162 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 lt!1816245))) (ite c!796468 lambda!198859 lambda!198861)))))

(assert (=> b!4653411 (= e!2903275 lt!1816751)))

(declare-fun lt!1816754 () ListMap!4533)

(assert (=> b!4653411 (= lt!1816754 (+!1976 (extractMap!1688 (t!359111 lt!1816245)) (h!58012 (_2!29782 (h!58013 lt!1816245)))))))

(assert (=> b!4653411 (= lt!1816751 (addToMapMapFromBucket!1089 (t!359110 (_2!29782 (h!58013 lt!1816245))) (+!1976 (extractMap!1688 (t!359111 lt!1816245)) (h!58012 (_2!29782 (h!58013 lt!1816245))))))))

(declare-fun lt!1816757 () Unit!118036)

(assert (=> b!4653411 (= lt!1816757 call!325161)))

(assert (=> b!4653411 call!325160))

(declare-fun lt!1816756 () Unit!118036)

(assert (=> b!4653411 (= lt!1816756 lt!1816757)))

(assert (=> b!4653411 (forall!11010 (toList!5195 lt!1816754) lambda!198861)))

(declare-fun lt!1816758 () Unit!118036)

(declare-fun Unit!118163 () Unit!118036)

(assert (=> b!4653411 (= lt!1816758 Unit!118163)))

(assert (=> b!4653411 (forall!11010 (t!359110 (_2!29782 (h!58013 lt!1816245))) lambda!198861)))

(declare-fun lt!1816749 () Unit!118036)

(declare-fun Unit!118164 () Unit!118036)

(assert (=> b!4653411 (= lt!1816749 Unit!118164)))

(declare-fun lt!1816755 () Unit!118036)

(declare-fun Unit!118165 () Unit!118036)

(assert (=> b!4653411 (= lt!1816755 Unit!118165)))

(declare-fun lt!1816747 () Unit!118036)

(assert (=> b!4653411 (= lt!1816747 (forallContained!3216 (toList!5195 lt!1816754) lambda!198861 (h!58012 (_2!29782 (h!58013 lt!1816245)))))))

(assert (=> b!4653411 (contains!15019 lt!1816754 (_1!29781 (h!58012 (_2!29782 (h!58013 lt!1816245)))))))

(declare-fun lt!1816759 () Unit!118036)

(declare-fun Unit!118166 () Unit!118036)

(assert (=> b!4653411 (= lt!1816759 Unit!118166)))

(assert (=> b!4653411 (contains!15019 lt!1816751 (_1!29781 (h!58012 (_2!29782 (h!58013 lt!1816245)))))))

(declare-fun lt!1816763 () Unit!118036)

(declare-fun Unit!118167 () Unit!118036)

(assert (=> b!4653411 (= lt!1816763 Unit!118167)))

(assert (=> b!4653411 (forall!11010 (_2!29782 (h!58013 lt!1816245)) lambda!198861)))

(declare-fun lt!1816765 () Unit!118036)

(declare-fun Unit!118168 () Unit!118036)

(assert (=> b!4653411 (= lt!1816765 Unit!118168)))

(assert (=> b!4653411 (forall!11010 (toList!5195 lt!1816754) lambda!198861)))

(declare-fun lt!1816760 () Unit!118036)

(declare-fun Unit!118169 () Unit!118036)

(assert (=> b!4653411 (= lt!1816760 Unit!118169)))

(declare-fun lt!1816761 () Unit!118036)

(declare-fun Unit!118170 () Unit!118036)

(assert (=> b!4653411 (= lt!1816761 Unit!118170)))

(declare-fun lt!1816752 () Unit!118036)

(assert (=> b!4653411 (= lt!1816752 (addForallContainsKeyThenBeforeAdding!591 (extractMap!1688 (t!359111 lt!1816245)) lt!1816751 (_1!29781 (h!58012 (_2!29782 (h!58013 lt!1816245)))) (_2!29781 (h!58012 (_2!29782 (h!58013 lt!1816245))))))))

(assert (=> b!4653411 call!325162))

(declare-fun lt!1816746 () Unit!118036)

(assert (=> b!4653411 (= lt!1816746 lt!1816752)))

(assert (=> b!4653411 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 lt!1816245))) lambda!198861)))

(declare-fun lt!1816750 () Unit!118036)

(declare-fun Unit!118171 () Unit!118036)

(assert (=> b!4653411 (= lt!1816750 Unit!118171)))

(declare-fun res!1956241 () Bool)

(assert (=> b!4653411 (= res!1956241 (forall!11010 (_2!29782 (h!58013 lt!1816245)) lambda!198861))))

(declare-fun e!2903276 () Bool)

(assert (=> b!4653411 (=> (not res!1956241) (not e!2903276))))

(assert (=> b!4653411 e!2903276))

(declare-fun lt!1816764 () Unit!118036)

(declare-fun Unit!118172 () Unit!118036)

(assert (=> b!4653411 (= lt!1816764 Unit!118172)))

(assert (=> d!1475404 e!2903274))

(declare-fun res!1956240 () Bool)

(assert (=> d!1475404 (=> (not res!1956240) (not e!2903274))))

(assert (=> d!1475404 (= res!1956240 (forall!11010 (_2!29782 (h!58013 lt!1816245)) lambda!198862))))

(assert (=> d!1475404 (= lt!1816745 e!2903275)))

(assert (=> d!1475404 (= c!796468 ((_ is Nil!51874) (_2!29782 (h!58013 lt!1816245))))))

(assert (=> d!1475404 (noDuplicateKeys!1632 (_2!29782 (h!58013 lt!1816245)))))

(assert (=> d!1475404 (= (addToMapMapFromBucket!1089 (_2!29782 (h!58013 lt!1816245)) (extractMap!1688 (t!359111 lt!1816245))) lt!1816745)))

(declare-fun bm!325156 () Bool)

(assert (=> bm!325156 (= call!325160 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 lt!1816245))) (ite c!796468 lambda!198859 lambda!198860)))))

(declare-fun bm!325157 () Bool)

(assert (=> bm!325157 (= call!325161 (lemmaContainsAllItsOwnKeys!592 (extractMap!1688 (t!359111 lt!1816245))))))

(declare-fun b!4653412 () Bool)

(assert (=> b!4653412 (= e!2903276 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 lt!1816245))) lambda!198861))))

(assert (= (and d!1475404 c!796468) b!4653410))

(assert (= (and d!1475404 (not c!796468)) b!4653411))

(assert (= (and b!4653411 res!1956241) b!4653412))

(assert (= (or b!4653410 b!4653411) bm!325157))

(assert (= (or b!4653410 b!4653411) bm!325156))

(assert (= (or b!4653410 b!4653411) bm!325155))

(assert (= (and d!1475404 res!1956240) b!4653408))

(assert (= (and b!4653408 res!1956242) b!4653409))

(declare-fun m!5530873 () Bool)

(assert (=> d!1475404 m!5530873))

(assert (=> d!1475404 m!5530593))

(declare-fun m!5530875 () Bool)

(assert (=> bm!325156 m!5530875))

(declare-fun m!5530877 () Bool)

(assert (=> b!4653409 m!5530877))

(declare-fun m!5530879 () Bool)

(assert (=> b!4653408 m!5530879))

(assert (=> bm!325157 m!5530483))

(declare-fun m!5530881 () Bool)

(assert (=> bm!325157 m!5530881))

(declare-fun m!5530883 () Bool)

(assert (=> bm!325155 m!5530883))

(declare-fun m!5530885 () Bool)

(assert (=> b!4653412 m!5530885))

(assert (=> b!4653411 m!5530483))

(declare-fun m!5530887 () Bool)

(assert (=> b!4653411 m!5530887))

(declare-fun m!5530889 () Bool)

(assert (=> b!4653411 m!5530889))

(assert (=> b!4653411 m!5530889))

(declare-fun m!5530891 () Bool)

(assert (=> b!4653411 m!5530891))

(declare-fun m!5530893 () Bool)

(assert (=> b!4653411 m!5530893))

(declare-fun m!5530895 () Bool)

(assert (=> b!4653411 m!5530895))

(assert (=> b!4653411 m!5530893))

(declare-fun m!5530897 () Bool)

(assert (=> b!4653411 m!5530897))

(declare-fun m!5530899 () Bool)

(assert (=> b!4653411 m!5530899))

(declare-fun m!5530901 () Bool)

(assert (=> b!4653411 m!5530901))

(assert (=> b!4653411 m!5530885))

(declare-fun m!5530903 () Bool)

(assert (=> b!4653411 m!5530903))

(assert (=> b!4653411 m!5530483))

(assert (=> b!4653411 m!5530897))

(assert (=> b!4653209 d!1475404))

(declare-fun bs!1062052 () Bool)

(declare-fun d!1475418 () Bool)

(assert (= bs!1062052 (and d!1475418 d!1475284)))

(declare-fun lambda!198863 () Int)

(assert (=> bs!1062052 (not (= lambda!198863 lambda!198841))))

(declare-fun bs!1062053 () Bool)

(assert (= bs!1062053 (and d!1475418 d!1475262)))

(assert (=> bs!1062053 (= lambda!198863 lambda!198830)))

(declare-fun bs!1062054 () Bool)

(assert (= bs!1062054 (and d!1475418 d!1475274)))

(assert (=> bs!1062054 (= lambda!198863 lambda!198838)))

(declare-fun bs!1062055 () Bool)

(assert (= bs!1062055 (and d!1475418 d!1475288)))

(assert (=> bs!1062055 (= lambda!198863 lambda!198842)))

(declare-fun bs!1062056 () Bool)

(assert (= bs!1062056 (and d!1475418 b!4652954)))

(assert (=> bs!1062056 (= lambda!198863 lambda!198730)))

(declare-fun bs!1062057 () Bool)

(assert (= bs!1062057 (and d!1475418 d!1475290)))

(assert (=> bs!1062057 (= lambda!198863 lambda!198843)))

(declare-fun lt!1816777 () ListMap!4533)

(assert (=> d!1475418 (invariantList!1292 (toList!5195 lt!1816777))))

(declare-fun e!2903292 () ListMap!4533)

(assert (=> d!1475418 (= lt!1816777 e!2903292)))

(declare-fun c!796472 () Bool)

(assert (=> d!1475418 (= c!796472 ((_ is Cons!51875) (t!359111 lt!1816245)))))

(assert (=> d!1475418 (forall!11008 (t!359111 lt!1816245) lambda!198863)))

(assert (=> d!1475418 (= (extractMap!1688 (t!359111 lt!1816245)) lt!1816777)))

(declare-fun b!4653432 () Bool)

(assert (=> b!4653432 (= e!2903292 (addToMapMapFromBucket!1089 (_2!29782 (h!58013 (t!359111 lt!1816245))) (extractMap!1688 (t!359111 (t!359111 lt!1816245)))))))

(declare-fun b!4653433 () Bool)

(assert (=> b!4653433 (= e!2903292 (ListMap!4534 Nil!51874))))

(assert (= (and d!1475418 c!796472) b!4653432))

(assert (= (and d!1475418 (not c!796472)) b!4653433))

(declare-fun m!5530905 () Bool)

(assert (=> d!1475418 m!5530905))

(declare-fun m!5530907 () Bool)

(assert (=> d!1475418 m!5530907))

(declare-fun m!5530909 () Bool)

(assert (=> b!4653432 m!5530909))

(assert (=> b!4653432 m!5530909))

(declare-fun m!5530911 () Bool)

(assert (=> b!4653432 m!5530911))

(assert (=> b!4653209 d!1475418))

(declare-fun d!1475420 () Bool)

(declare-fun res!1956255 () Bool)

(declare-fun e!2903293 () Bool)

(assert (=> d!1475420 (=> res!1956255 e!2903293)))

(assert (=> d!1475420 (= res!1956255 ((_ is Nil!51874) (toList!5195 lt!1816243)))))

(assert (=> d!1475420 (= (forall!11010 (toList!5195 lt!1816243) lambda!198837) e!2903293)))

(declare-fun b!4653434 () Bool)

(declare-fun e!2903294 () Bool)

(assert (=> b!4653434 (= e!2903293 e!2903294)))

(declare-fun res!1956256 () Bool)

(assert (=> b!4653434 (=> (not res!1956256) (not e!2903294))))

(assert (=> b!4653434 (= res!1956256 (dynLambda!21580 lambda!198837 (h!58012 (toList!5195 lt!1816243))))))

(declare-fun b!4653435 () Bool)

(assert (=> b!4653435 (= e!2903294 (forall!11010 (t!359110 (toList!5195 lt!1816243)) lambda!198837))))

(assert (= (and d!1475420 (not res!1956255)) b!4653434))

(assert (= (and b!4653434 res!1956256) b!4653435))

(declare-fun b_lambda!173429 () Bool)

(assert (=> (not b_lambda!173429) (not b!4653434)))

(declare-fun m!5530913 () Bool)

(assert (=> b!4653434 m!5530913))

(declare-fun m!5530915 () Bool)

(assert (=> b!4653435 m!5530915))

(assert (=> b!4653175 d!1475420))

(declare-fun d!1475422 () Bool)

(declare-fun res!1956257 () Bool)

(declare-fun e!2903295 () Bool)

(assert (=> d!1475422 (=> res!1956257 e!2903295)))

(assert (=> d!1475422 (= res!1956257 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475422 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796437 lambda!198845 lambda!198847)) e!2903295)))

(declare-fun b!4653436 () Bool)

(declare-fun e!2903296 () Bool)

(assert (=> b!4653436 (= e!2903295 e!2903296)))

(declare-fun res!1956258 () Bool)

(assert (=> b!4653436 (=> (not res!1956258) (not e!2903296))))

(assert (=> b!4653436 (= res!1956258 (dynLambda!21580 (ite c!796437 lambda!198845 lambda!198847) (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653437 () Bool)

(assert (=> b!4653437 (= e!2903296 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) (ite c!796437 lambda!198845 lambda!198847)))))

(assert (= (and d!1475422 (not res!1956257)) b!4653436))

(assert (= (and b!4653436 res!1956258) b!4653437))

(declare-fun b_lambda!173431 () Bool)

(assert (=> (not b_lambda!173431) (not b!4653436)))

(declare-fun m!5530917 () Bool)

(assert (=> b!4653436 m!5530917))

(declare-fun m!5530919 () Bool)

(assert (=> b!4653437 m!5530919))

(assert (=> bm!325135 d!1475422))

(declare-fun d!1475424 () Bool)

(declare-fun res!1956259 () Bool)

(declare-fun e!2903297 () Bool)

(assert (=> d!1475424 (=> res!1956259 e!2903297)))

(assert (=> d!1475424 (= res!1956259 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475424 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198851) e!2903297)))

(declare-fun b!4653438 () Bool)

(declare-fun e!2903298 () Bool)

(assert (=> b!4653438 (= e!2903297 e!2903298)))

(declare-fun res!1956260 () Bool)

(assert (=> b!4653438 (=> (not res!1956260) (not e!2903298))))

(assert (=> b!4653438 (= res!1956260 (dynLambda!21580 lambda!198851 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653439 () Bool)

(assert (=> b!4653439 (= e!2903298 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) lambda!198851))))

(assert (= (and d!1475424 (not res!1956259)) b!4653438))

(assert (= (and b!4653438 res!1956260) b!4653439))

(declare-fun b_lambda!173433 () Bool)

(assert (=> (not b_lambda!173433) (not b!4653438)))

(declare-fun m!5530921 () Bool)

(assert (=> b!4653438 m!5530921))

(declare-fun m!5530923 () Bool)

(assert (=> b!4653439 m!5530923))

(assert (=> b!4653228 d!1475424))

(declare-fun d!1475426 () Bool)

(declare-fun res!1956261 () Bool)

(declare-fun e!2903299 () Bool)

(assert (=> d!1475426 (=> res!1956261 e!2903299)))

(assert (=> d!1475426 (= res!1956261 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475426 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796411 lambda!198824 lambda!198826)) e!2903299)))

(declare-fun b!4653440 () Bool)

(declare-fun e!2903300 () Bool)

(assert (=> b!4653440 (= e!2903299 e!2903300)))

(declare-fun res!1956262 () Bool)

(assert (=> b!4653440 (=> (not res!1956262) (not e!2903300))))

(assert (=> b!4653440 (= res!1956262 (dynLambda!21580 (ite c!796411 lambda!198824 lambda!198826) (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653441 () Bool)

(assert (=> b!4653441 (= e!2903300 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) (ite c!796411 lambda!198824 lambda!198826)))))

(assert (= (and d!1475426 (not res!1956261)) b!4653440))

(assert (= (and b!4653440 res!1956262) b!4653441))

(declare-fun b_lambda!173435 () Bool)

(assert (=> (not b_lambda!173435) (not b!4653440)))

(declare-fun m!5530925 () Bool)

(assert (=> b!4653440 m!5530925))

(declare-fun m!5530927 () Bool)

(assert (=> b!4653441 m!5530927))

(assert (=> bm!325126 d!1475426))

(declare-fun d!1475428 () Bool)

(declare-fun res!1956263 () Bool)

(declare-fun e!2903301 () Bool)

(assert (=> d!1475428 (=> res!1956263 e!2903301)))

(assert (=> d!1475428 (= res!1956263 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475428 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198821) e!2903301)))

(declare-fun b!4653442 () Bool)

(declare-fun e!2903302 () Bool)

(assert (=> b!4653442 (= e!2903301 e!2903302)))

(declare-fun res!1956264 () Bool)

(assert (=> b!4653442 (=> (not res!1956264) (not e!2903302))))

(assert (=> b!4653442 (= res!1956264 (dynLambda!21580 lambda!198821 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653443 () Bool)

(assert (=> b!4653443 (= e!2903302 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) lambda!198821))))

(assert (= (and d!1475428 (not res!1956263)) b!4653442))

(assert (= (and b!4653442 res!1956264) b!4653443))

(declare-fun b_lambda!173437 () Bool)

(assert (=> (not b_lambda!173437) (not b!4653442)))

(declare-fun m!5530929 () Bool)

(assert (=> b!4653442 m!5530929))

(declare-fun m!5530931 () Bool)

(assert (=> b!4653443 m!5530931))

(assert (=> b!4653102 d!1475428))

(declare-fun d!1475430 () Bool)

(declare-fun res!1956265 () Bool)

(declare-fun e!2903303 () Bool)

(assert (=> d!1475430 (=> res!1956265 e!2903303)))

(assert (=> d!1475430 (= res!1956265 ((_ is Nil!51874) oldBucket!40))))

(assert (=> d!1475430 (= (forall!11010 oldBucket!40 lambda!198852) e!2903303)))

(declare-fun b!4653444 () Bool)

(declare-fun e!2903304 () Bool)

(assert (=> b!4653444 (= e!2903303 e!2903304)))

(declare-fun res!1956266 () Bool)

(assert (=> b!4653444 (=> (not res!1956266) (not e!2903304))))

(assert (=> b!4653444 (= res!1956266 (dynLambda!21580 lambda!198852 (h!58012 oldBucket!40)))))

(declare-fun b!4653445 () Bool)

(assert (=> b!4653445 (= e!2903304 (forall!11010 (t!359110 oldBucket!40) lambda!198852))))

(assert (= (and d!1475430 (not res!1956265)) b!4653444))

(assert (= (and b!4653444 res!1956266) b!4653445))

(declare-fun b_lambda!173439 () Bool)

(assert (=> (not b_lambda!173439) (not b!4653444)))

(declare-fun m!5530937 () Bool)

(assert (=> b!4653444 m!5530937))

(declare-fun m!5530941 () Bool)

(assert (=> b!4653445 m!5530941))

(assert (=> d!1475308 d!1475430))

(assert (=> d!1475308 d!1475256))

(declare-fun d!1475432 () Bool)

(declare-fun res!1956267 () Bool)

(declare-fun e!2903305 () Bool)

(assert (=> d!1475432 (=> res!1956267 e!2903305)))

(assert (=> d!1475432 (= res!1956267 (and ((_ is Cons!51874) (t!359110 lt!1816247)) (= (_1!29781 (h!58012 (t!359110 lt!1816247))) key!4968)))))

(assert (=> d!1475432 (= (containsKey!2708 (t!359110 lt!1816247) key!4968) e!2903305)))

(declare-fun b!4653446 () Bool)

(declare-fun e!2903306 () Bool)

(assert (=> b!4653446 (= e!2903305 e!2903306)))

(declare-fun res!1956268 () Bool)

(assert (=> b!4653446 (=> (not res!1956268) (not e!2903306))))

(assert (=> b!4653446 (= res!1956268 ((_ is Cons!51874) (t!359110 lt!1816247)))))

(declare-fun b!4653447 () Bool)

(assert (=> b!4653447 (= e!2903306 (containsKey!2708 (t!359110 (t!359110 lt!1816247)) key!4968))))

(assert (= (and d!1475432 (not res!1956267)) b!4653446))

(assert (= (and b!4653446 res!1956268) b!4653447))

(declare-fun m!5530945 () Bool)

(assert (=> b!4653447 m!5530945))

(assert (=> b!4653192 d!1475432))

(declare-fun d!1475436 () Bool)

(declare-fun res!1956271 () Bool)

(declare-fun e!2903309 () Bool)

(assert (=> d!1475436 (=> res!1956271 e!2903309)))

(assert (=> d!1475436 (= res!1956271 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475436 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796437 lambda!198845 lambda!198846)) e!2903309)))

(declare-fun b!4653450 () Bool)

(declare-fun e!2903310 () Bool)

(assert (=> b!4653450 (= e!2903309 e!2903310)))

(declare-fun res!1956272 () Bool)

(assert (=> b!4653450 (=> (not res!1956272) (not e!2903310))))

(assert (=> b!4653450 (= res!1956272 (dynLambda!21580 (ite c!796437 lambda!198845 lambda!198846) (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653451 () Bool)

(assert (=> b!4653451 (= e!2903310 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) (ite c!796437 lambda!198845 lambda!198846)))))

(assert (= (and d!1475436 (not res!1956271)) b!4653450))

(assert (= (and b!4653450 res!1956272) b!4653451))

(declare-fun b_lambda!173443 () Bool)

(assert (=> (not b_lambda!173443) (not b!4653450)))

(declare-fun m!5530951 () Bool)

(assert (=> b!4653450 m!5530951))

(declare-fun m!5530953 () Bool)

(assert (=> b!4653451 m!5530953))

(assert (=> bm!325136 d!1475436))

(declare-fun d!1475440 () Bool)

(declare-fun lt!1816802 () Bool)

(assert (=> d!1475440 (= lt!1816802 (select (content!8989 (toList!5195 lt!1816620)) (h!58012 oldBucket!40)))))

(declare-fun e!2903314 () Bool)

(assert (=> d!1475440 (= lt!1816802 e!2903314)))

(declare-fun res!1956276 () Bool)

(assert (=> d!1475440 (=> (not res!1956276) (not e!2903314))))

(assert (=> d!1475440 (= res!1956276 ((_ is Cons!51874) (toList!5195 lt!1816620)))))

(assert (=> d!1475440 (= (contains!15023 (toList!5195 lt!1816620) (h!58012 oldBucket!40)) lt!1816802)))

(declare-fun b!4653457 () Bool)

(declare-fun e!2903315 () Bool)

(assert (=> b!4653457 (= e!2903314 e!2903315)))

(declare-fun res!1956277 () Bool)

(assert (=> b!4653457 (=> res!1956277 e!2903315)))

(assert (=> b!4653457 (= res!1956277 (= (h!58012 (toList!5195 lt!1816620)) (h!58012 oldBucket!40)))))

(declare-fun b!4653458 () Bool)

(assert (=> b!4653458 (= e!2903315 (contains!15023 (t!359110 (toList!5195 lt!1816620)) (h!58012 oldBucket!40)))))

(assert (= (and d!1475440 res!1956276) b!4653457))

(assert (= (and b!4653457 (not res!1956277)) b!4653458))

(declare-fun m!5530955 () Bool)

(assert (=> d!1475440 m!5530955))

(declare-fun m!5530957 () Bool)

(assert (=> d!1475440 m!5530957))

(declare-fun m!5530959 () Bool)

(assert (=> b!4653458 m!5530959))

(assert (=> b!4653216 d!1475440))

(declare-fun d!1475442 () Bool)

(declare-fun choose!31971 (Hashable!6029 K!13230) (_ BitVec 64))

(assert (=> d!1475442 (= (hash!3765 hashF!1389 key!4968) (choose!31971 hashF!1389 key!4968))))

(declare-fun bs!1062085 () Bool)

(assert (= bs!1062085 d!1475442))

(declare-fun m!5530961 () Bool)

(assert (=> bs!1062085 m!5530961))

(assert (=> d!1475280 d!1475442))

(declare-fun d!1475444 () Bool)

(assert (=> d!1475444 (= (invariantList!1292 (toList!5195 lt!1816593)) (noDuplicatedKeys!347 (toList!5195 lt!1816593)))))

(declare-fun bs!1062088 () Bool)

(assert (= bs!1062088 d!1475444))

(declare-fun m!5530963 () Bool)

(assert (=> bs!1062088 m!5530963))

(assert (=> d!1475274 d!1475444))

(declare-fun d!1475446 () Bool)

(declare-fun res!1956278 () Bool)

(declare-fun e!2903316 () Bool)

(assert (=> d!1475446 (=> res!1956278 e!2903316)))

(assert (=> d!1475446 (= res!1956278 ((_ is Nil!51875) Nil!51875))))

(assert (=> d!1475446 (= (forall!11008 Nil!51875 lambda!198838) e!2903316)))

(declare-fun b!4653459 () Bool)

(declare-fun e!2903317 () Bool)

(assert (=> b!4653459 (= e!2903316 e!2903317)))

(declare-fun res!1956279 () Bool)

(assert (=> b!4653459 (=> (not res!1956279) (not e!2903317))))

(assert (=> b!4653459 (= res!1956279 (dynLambda!21578 lambda!198838 (h!58013 Nil!51875)))))

(declare-fun b!4653460 () Bool)

(assert (=> b!4653460 (= e!2903317 (forall!11008 (t!359111 Nil!51875) lambda!198838))))

(assert (= (and d!1475446 (not res!1956278)) b!4653459))

(assert (= (and b!4653459 res!1956279) b!4653460))

(declare-fun b_lambda!173445 () Bool)

(assert (=> (not b_lambda!173445) (not b!4653459)))

(declare-fun m!5530965 () Bool)

(assert (=> b!4653459 m!5530965))

(declare-fun m!5530967 () Bool)

(assert (=> b!4653460 m!5530967))

(assert (=> d!1475274 d!1475446))

(declare-fun d!1475448 () Bool)

(declare-fun res!1956280 () Bool)

(declare-fun e!2903318 () Bool)

(assert (=> d!1475448 (=> res!1956280 e!2903318)))

(assert (=> d!1475448 (= res!1956280 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475448 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198826) e!2903318)))

(declare-fun b!4653461 () Bool)

(declare-fun e!2903319 () Bool)

(assert (=> b!4653461 (= e!2903318 e!2903319)))

(declare-fun res!1956281 () Bool)

(assert (=> b!4653461 (=> (not res!1956281) (not e!2903319))))

(assert (=> b!4653461 (= res!1956281 (dynLambda!21580 lambda!198826 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653462 () Bool)

(assert (=> b!4653462 (= e!2903319 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) lambda!198826))))

(assert (= (and d!1475448 (not res!1956280)) b!4653461))

(assert (= (and b!4653461 res!1956281) b!4653462))

(declare-fun b_lambda!173447 () Bool)

(assert (=> (not b_lambda!173447) (not b!4653461)))

(declare-fun m!5530969 () Bool)

(assert (=> b!4653461 m!5530969))

(declare-fun m!5530971 () Bool)

(assert (=> b!4653462 m!5530971))

(assert (=> b!4653113 d!1475448))

(declare-fun b!4653463 () Bool)

(declare-fun e!2903325 () Unit!118036)

(declare-fun lt!1816808 () Unit!118036)

(assert (=> b!4653463 (= e!2903325 lt!1816808)))

(declare-fun lt!1816803 () Unit!118036)

(assert (=> b!4653463 (= lt!1816803 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816624) (_1!29781 lt!1816246)))))

(assert (=> b!4653463 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816624) (_1!29781 lt!1816246)))))

(declare-fun lt!1816805 () Unit!118036)

(assert (=> b!4653463 (= lt!1816805 lt!1816803)))

(assert (=> b!4653463 (= lt!1816808 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816624) (_1!29781 lt!1816246)))))

(declare-fun call!325167 () Bool)

(assert (=> b!4653463 call!325167))

(declare-fun b!4653464 () Bool)

(declare-fun e!2903323 () List!52001)

(assert (=> b!4653464 (= e!2903323 (getKeysList!743 (toList!5195 lt!1816624)))))

(declare-fun b!4653465 () Bool)

(declare-fun e!2903322 () Unit!118036)

(assert (=> b!4653465 (= e!2903325 e!2903322)))

(declare-fun c!796475 () Bool)

(assert (=> b!4653465 (= c!796475 call!325167)))

(declare-fun b!4653466 () Bool)

(declare-fun e!2903320 () Bool)

(assert (=> b!4653466 (= e!2903320 (contains!15021 (keys!18370 lt!1816624) (_1!29781 lt!1816246)))))

(declare-fun b!4653467 () Bool)

(declare-fun e!2903321 () Bool)

(assert (=> b!4653467 (= e!2903321 e!2903320)))

(declare-fun res!1956283 () Bool)

(assert (=> b!4653467 (=> (not res!1956283) (not e!2903320))))

(assert (=> b!4653467 (= res!1956283 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816624) (_1!29781 lt!1816246))))))

(declare-fun bm!325162 () Bool)

(assert (=> bm!325162 (= call!325167 (contains!15021 e!2903323 (_1!29781 lt!1816246)))))

(declare-fun c!796474 () Bool)

(declare-fun c!796476 () Bool)

(assert (=> bm!325162 (= c!796474 c!796476)))

(declare-fun b!4653468 () Bool)

(assert (=> b!4653468 (= e!2903323 (keys!18370 lt!1816624))))

(declare-fun b!4653469 () Bool)

(assert (=> b!4653469 false))

(declare-fun lt!1816809 () Unit!118036)

(declare-fun lt!1816807 () Unit!118036)

(assert (=> b!4653469 (= lt!1816809 lt!1816807)))

(assert (=> b!4653469 (containsKey!2711 (toList!5195 lt!1816624) (_1!29781 lt!1816246))))

(assert (=> b!4653469 (= lt!1816807 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816624) (_1!29781 lt!1816246)))))

(declare-fun Unit!118188 () Unit!118036)

(assert (=> b!4653469 (= e!2903322 Unit!118188)))

(declare-fun d!1475450 () Bool)

(assert (=> d!1475450 e!2903321))

(declare-fun res!1956284 () Bool)

(assert (=> d!1475450 (=> res!1956284 e!2903321)))

(declare-fun e!2903324 () Bool)

(assert (=> d!1475450 (= res!1956284 e!2903324)))

(declare-fun res!1956282 () Bool)

(assert (=> d!1475450 (=> (not res!1956282) (not e!2903324))))

(declare-fun lt!1816810 () Bool)

(assert (=> d!1475450 (= res!1956282 (not lt!1816810))))

(declare-fun lt!1816804 () Bool)

(assert (=> d!1475450 (= lt!1816810 lt!1816804)))

(declare-fun lt!1816806 () Unit!118036)

(assert (=> d!1475450 (= lt!1816806 e!2903325)))

(assert (=> d!1475450 (= c!796476 lt!1816804)))

(assert (=> d!1475450 (= lt!1816804 (containsKey!2711 (toList!5195 lt!1816624) (_1!29781 lt!1816246)))))

(assert (=> d!1475450 (= (contains!15019 lt!1816624 (_1!29781 lt!1816246)) lt!1816810)))

(declare-fun b!4653470 () Bool)

(declare-fun Unit!118189 () Unit!118036)

(assert (=> b!4653470 (= e!2903322 Unit!118189)))

(declare-fun b!4653471 () Bool)

(assert (=> b!4653471 (= e!2903324 (not (contains!15021 (keys!18370 lt!1816624) (_1!29781 lt!1816246))))))

(assert (= (and d!1475450 c!796476) b!4653463))

(assert (= (and d!1475450 (not c!796476)) b!4653465))

(assert (= (and b!4653465 c!796475) b!4653469))

(assert (= (and b!4653465 (not c!796475)) b!4653470))

(assert (= (or b!4653463 b!4653465) bm!325162))

(assert (= (and bm!325162 c!796474) b!4653464))

(assert (= (and bm!325162 (not c!796474)) b!4653468))

(assert (= (and d!1475450 res!1956282) b!4653471))

(assert (= (and d!1475450 (not res!1956284)) b!4653467))

(assert (= (and b!4653467 res!1956283) b!4653466))

(declare-fun m!5530973 () Bool)

(assert (=> b!4653471 m!5530973))

(assert (=> b!4653471 m!5530973))

(declare-fun m!5530975 () Bool)

(assert (=> b!4653471 m!5530975))

(declare-fun m!5530977 () Bool)

(assert (=> b!4653463 m!5530977))

(assert (=> b!4653463 m!5530513))

(assert (=> b!4653463 m!5530513))

(declare-fun m!5530979 () Bool)

(assert (=> b!4653463 m!5530979))

(declare-fun m!5530981 () Bool)

(assert (=> b!4653463 m!5530981))

(declare-fun m!5530983 () Bool)

(assert (=> bm!325162 m!5530983))

(assert (=> b!4653468 m!5530973))

(declare-fun m!5530985 () Bool)

(assert (=> d!1475450 m!5530985))

(assert (=> b!4653469 m!5530985))

(declare-fun m!5530987 () Bool)

(assert (=> b!4653469 m!5530987))

(assert (=> b!4653467 m!5530513))

(assert (=> b!4653467 m!5530513))

(assert (=> b!4653467 m!5530979))

(assert (=> b!4653466 m!5530973))

(assert (=> b!4653466 m!5530973))

(assert (=> b!4653466 m!5530975))

(declare-fun m!5530989 () Bool)

(assert (=> b!4653464 m!5530989))

(assert (=> d!1475298 d!1475450))

(declare-fun d!1475452 () Bool)

(declare-fun c!796481 () Bool)

(assert (=> d!1475452 (= c!796481 (and ((_ is Cons!51874) lt!1816625) (= (_1!29781 (h!58012 lt!1816625)) (_1!29781 lt!1816246))))))

(declare-fun e!2903330 () Option!11815)

(assert (=> d!1475452 (= (getValueByKey!1603 lt!1816625 (_1!29781 lt!1816246)) e!2903330)))

(declare-fun b!4653481 () Bool)

(declare-fun e!2903331 () Option!11815)

(assert (=> b!4653481 (= e!2903330 e!2903331)))

(declare-fun c!796482 () Bool)

(assert (=> b!4653481 (= c!796482 (and ((_ is Cons!51874) lt!1816625) (not (= (_1!29781 (h!58012 lt!1816625)) (_1!29781 lt!1816246)))))))

(declare-fun b!4653480 () Bool)

(assert (=> b!4653480 (= e!2903330 (Some!11814 (_2!29781 (h!58012 lt!1816625))))))

(declare-fun b!4653482 () Bool)

(assert (=> b!4653482 (= e!2903331 (getValueByKey!1603 (t!359110 lt!1816625) (_1!29781 lt!1816246)))))

(declare-fun b!4653483 () Bool)

(assert (=> b!4653483 (= e!2903331 None!11814)))

(assert (= (and d!1475452 c!796481) b!4653480))

(assert (= (and d!1475452 (not c!796481)) b!4653481))

(assert (= (and b!4653481 c!796482) b!4653482))

(assert (= (and b!4653481 (not c!796482)) b!4653483))

(declare-fun m!5530991 () Bool)

(assert (=> b!4653482 m!5530991))

(assert (=> d!1475298 d!1475452))

(declare-fun d!1475454 () Bool)

(assert (=> d!1475454 (= (getValueByKey!1603 lt!1816625 (_1!29781 lt!1816246)) (Some!11814 (_2!29781 lt!1816246)))))

(declare-fun lt!1816813 () Unit!118036)

(declare-fun choose!31972 (List!51998 K!13230 V!13476) Unit!118036)

(assert (=> d!1475454 (= lt!1816813 (choose!31972 lt!1816625 (_1!29781 lt!1816246) (_2!29781 lt!1816246)))))

(declare-fun e!2903334 () Bool)

(assert (=> d!1475454 e!2903334))

(declare-fun res!1956289 () Bool)

(assert (=> d!1475454 (=> (not res!1956289) (not e!2903334))))

(assert (=> d!1475454 (= res!1956289 (invariantList!1292 lt!1816625))))

(assert (=> d!1475454 (= (lemmaContainsTupThenGetReturnValue!920 lt!1816625 (_1!29781 lt!1816246) (_2!29781 lt!1816246)) lt!1816813)))

(declare-fun b!4653488 () Bool)

(declare-fun res!1956290 () Bool)

(assert (=> b!4653488 (=> (not res!1956290) (not e!2903334))))

(assert (=> b!4653488 (= res!1956290 (containsKey!2711 lt!1816625 (_1!29781 lt!1816246)))))

(declare-fun b!4653489 () Bool)

(assert (=> b!4653489 (= e!2903334 (contains!15023 lt!1816625 (tuple2!52975 (_1!29781 lt!1816246) (_2!29781 lt!1816246))))))

(assert (= (and d!1475454 res!1956289) b!4653488))

(assert (= (and b!4653488 res!1956290) b!4653489))

(assert (=> d!1475454 m!5530507))

(declare-fun m!5530993 () Bool)

(assert (=> d!1475454 m!5530993))

(declare-fun m!5530995 () Bool)

(assert (=> d!1475454 m!5530995))

(declare-fun m!5530997 () Bool)

(assert (=> b!4653488 m!5530997))

(declare-fun m!5530999 () Bool)

(assert (=> b!4653489 m!5530999))

(assert (=> d!1475298 d!1475454))

(declare-fun b!4653589 () Bool)

(declare-fun e!2903397 () Unit!118036)

(declare-fun Unit!118190 () Unit!118036)

(assert (=> b!4653589 (= e!2903397 Unit!118190)))

(declare-fun b!4653590 () Bool)

(declare-fun res!1956331 () Bool)

(declare-fun e!2903395 () Bool)

(assert (=> b!4653590 (=> (not res!1956331) (not e!2903395))))

(declare-fun lt!1816907 () List!51998)

(assert (=> b!4653590 (= res!1956331 (contains!15023 lt!1816907 (tuple2!52975 (_1!29781 lt!1816246) (_2!29781 lt!1816246))))))

(declare-fun b!4653591 () Bool)

(declare-fun e!2903396 () List!51998)

(declare-fun lt!1816911 () List!51998)

(assert (=> b!4653591 (= e!2903396 lt!1816911)))

(declare-fun call!325187 () List!51998)

(assert (=> b!4653591 (= lt!1816911 call!325187)))

(declare-fun c!796516 () Bool)

(assert (=> b!4653591 (= c!796516 (containsKey!2711 (insertNoDuplicatedKeys!428 (t!359110 (toList!5195 lt!1816249)) (_1!29781 lt!1816246) (_2!29781 lt!1816246)) (_1!29781 (h!58012 (toList!5195 lt!1816249)))))))

(declare-fun lt!1816906 () Unit!118036)

(assert (=> b!4653591 (= lt!1816906 e!2903397)))

(declare-fun b!4653592 () Bool)

(assert (=> b!4653592 false))

(declare-fun lt!1816904 () Unit!118036)

(declare-fun lt!1816908 () Unit!118036)

(assert (=> b!4653592 (= lt!1816904 lt!1816908)))

(assert (=> b!4653592 (containsKey!2711 (t!359110 (toList!5195 lt!1816249)) (_1!29781 (h!58012 (toList!5195 lt!1816249))))))

(assert (=> b!4653592 (= lt!1816908 (lemmaInGetKeysListThenContainsKey!742 (t!359110 (toList!5195 lt!1816249)) (_1!29781 (h!58012 (toList!5195 lt!1816249)))))))

(declare-fun lt!1816912 () Unit!118036)

(declare-fun lt!1816905 () Unit!118036)

(assert (=> b!4653592 (= lt!1816912 lt!1816905)))

(declare-fun call!325186 () List!52001)

(assert (=> b!4653592 (contains!15021 call!325186 (_1!29781 (h!58012 (toList!5195 lt!1816249))))))

(declare-fun lt!1816910 () List!51998)

(assert (=> b!4653592 (= lt!1816905 (lemmaInListThenGetKeysListContains!738 lt!1816910 (_1!29781 (h!58012 (toList!5195 lt!1816249)))))))

(assert (=> b!4653592 (= lt!1816910 (insertNoDuplicatedKeys!428 (t!359110 (toList!5195 lt!1816249)) (_1!29781 lt!1816246) (_2!29781 lt!1816246)))))

(declare-fun Unit!118191 () Unit!118036)

(assert (=> b!4653592 (= e!2903397 Unit!118191)))

(declare-fun b!4653593 () Bool)

(assert (=> b!4653593 (= e!2903395 (= (content!8990 (getKeysList!743 lt!1816907)) ((_ map or) (content!8990 (getKeysList!743 (toList!5195 lt!1816249))) (store ((as const (Array K!13230 Bool)) false) (_1!29781 lt!1816246) true))))))

(declare-fun bm!325181 () Bool)

(declare-fun call!325189 () List!51998)

(declare-fun e!2903398 () List!51998)

(declare-fun c!796517 () Bool)

(declare-fun c!796514 () Bool)

(declare-fun c!796518 () Bool)

(declare-fun $colon$colon!1060 (List!51998 tuple2!52974) List!51998)

(assert (=> bm!325181 (= call!325189 ($colon$colon!1060 (ite c!796518 (t!359110 (toList!5195 lt!1816249)) (ite c!796514 (toList!5195 lt!1816249) e!2903398)) (ite (or c!796518 c!796514) (tuple2!52975 (_1!29781 lt!1816246) (_2!29781 lt!1816246)) (ite c!796517 (h!58012 (toList!5195 lt!1816249)) (tuple2!52975 (_1!29781 lt!1816246) (_2!29781 lt!1816246))))))))

(declare-fun b!4653594 () Bool)

(declare-fun e!2903400 () List!51998)

(declare-fun e!2903394 () List!51998)

(assert (=> b!4653594 (= e!2903400 e!2903394)))

(declare-fun res!1956329 () Bool)

(assert (=> b!4653594 (= res!1956329 ((_ is Cons!51874) (toList!5195 lt!1816249)))))

(declare-fun e!2903399 () Bool)

(assert (=> b!4653594 (=> (not res!1956329) (not e!2903399))))

(assert (=> b!4653594 (= c!796514 e!2903399)))

(declare-fun b!4653595 () Bool)

(assert (=> b!4653595 (= e!2903400 call!325189)))

(declare-fun lt!1816909 () List!52001)

(assert (=> b!4653595 (= lt!1816909 call!325186)))

(declare-fun lt!1816902 () Unit!118036)

(declare-fun lemmaSubseqRefl!129 (List!52001) Unit!118036)

(assert (=> b!4653595 (= lt!1816902 (lemmaSubseqRefl!129 lt!1816909))))

(declare-fun subseq!645 (List!52001 List!52001) Bool)

(assert (=> b!4653595 (subseq!645 lt!1816909 lt!1816909)))

(declare-fun lt!1816903 () Unit!118036)

(assert (=> b!4653595 (= lt!1816903 lt!1816902)))

(declare-fun b!4653596 () Bool)

(assert (=> b!4653596 (= e!2903398 (insertNoDuplicatedKeys!428 (t!359110 (toList!5195 lt!1816249)) (_1!29781 lt!1816246) (_2!29781 lt!1816246)))))

(declare-fun b!4653597 () Bool)

(declare-fun call!325188 () List!51998)

(assert (=> b!4653597 (= e!2903394 call!325188)))

(declare-fun b!4653599 () Bool)

(assert (=> b!4653599 (= e!2903399 (not (containsKey!2711 (toList!5195 lt!1816249) (_1!29781 lt!1816246))))))

(declare-fun bm!325182 () Bool)

(assert (=> bm!325182 (= call!325188 call!325189)))

(declare-fun b!4653600 () Bool)

(assert (=> b!4653600 (= e!2903398 Nil!51874)))

(declare-fun b!4653601 () Bool)

(assert (=> b!4653601 (= c!796517 ((_ is Cons!51874) (toList!5195 lt!1816249)))))

(assert (=> b!4653601 (= e!2903394 e!2903396)))

(declare-fun b!4653602 () Bool)

(assert (=> b!4653602 (= e!2903396 call!325187)))

(declare-fun bm!325183 () Bool)

(assert (=> bm!325183 (= call!325186 (getKeysList!743 (ite c!796518 (toList!5195 lt!1816249) lt!1816910)))))

(declare-fun bm!325184 () Bool)

(assert (=> bm!325184 (= call!325187 call!325188)))

(declare-fun c!796515 () Bool)

(assert (=> bm!325184 (= c!796515 c!796517)))

(declare-fun d!1475456 () Bool)

(assert (=> d!1475456 e!2903395))

(declare-fun res!1956328 () Bool)

(assert (=> d!1475456 (=> (not res!1956328) (not e!2903395))))

(assert (=> d!1475456 (= res!1956328 (invariantList!1292 lt!1816907))))

(assert (=> d!1475456 (= lt!1816907 e!2903400)))

(assert (=> d!1475456 (= c!796518 (and ((_ is Cons!51874) (toList!5195 lt!1816249)) (= (_1!29781 (h!58012 (toList!5195 lt!1816249))) (_1!29781 lt!1816246))))))

(assert (=> d!1475456 (invariantList!1292 (toList!5195 lt!1816249))))

(assert (=> d!1475456 (= (insertNoDuplicatedKeys!428 (toList!5195 lt!1816249) (_1!29781 lt!1816246) (_2!29781 lt!1816246)) lt!1816907)))

(declare-fun b!4653598 () Bool)

(declare-fun res!1956330 () Bool)

(assert (=> b!4653598 (=> (not res!1956330) (not e!2903395))))

(assert (=> b!4653598 (= res!1956330 (containsKey!2711 lt!1816907 (_1!29781 lt!1816246)))))

(assert (= (and d!1475456 c!796518) b!4653595))

(assert (= (and d!1475456 (not c!796518)) b!4653594))

(assert (= (and b!4653594 res!1956329) b!4653599))

(assert (= (and b!4653594 c!796514) b!4653597))

(assert (= (and b!4653594 (not c!796514)) b!4653601))

(assert (= (and b!4653601 c!796517) b!4653591))

(assert (= (and b!4653601 (not c!796517)) b!4653602))

(assert (= (and b!4653591 c!796516) b!4653592))

(assert (= (and b!4653591 (not c!796516)) b!4653589))

(assert (= (or b!4653591 b!4653602) bm!325184))

(assert (= (and bm!325184 c!796515) b!4653596))

(assert (= (and bm!325184 (not c!796515)) b!4653600))

(assert (= (or b!4653597 bm!325184) bm!325182))

(assert (= (or b!4653595 b!4653592) bm!325183))

(assert (= (or b!4653595 bm!325182) bm!325181))

(assert (= (and d!1475456 res!1956328) b!4653598))

(assert (= (and b!4653598 res!1956330) b!4653590))

(assert (= (and b!4653590 res!1956331) b!4653593))

(declare-fun m!5531183 () Bool)

(assert (=> b!4653593 m!5531183))

(declare-fun m!5531185 () Bool)

(assert (=> b!4653593 m!5531185))

(declare-fun m!5531187 () Bool)

(assert (=> b!4653593 m!5531187))

(assert (=> b!4653593 m!5531183))

(declare-fun m!5531189 () Bool)

(assert (=> b!4653593 m!5531189))

(assert (=> b!4653593 m!5531185))

(declare-fun m!5531191 () Bool)

(assert (=> b!4653593 m!5531191))

(declare-fun m!5531193 () Bool)

(assert (=> b!4653592 m!5531193))

(declare-fun m!5531195 () Bool)

(assert (=> b!4653592 m!5531195))

(declare-fun m!5531197 () Bool)

(assert (=> b!4653592 m!5531197))

(declare-fun m!5531199 () Bool)

(assert (=> b!4653592 m!5531199))

(declare-fun m!5531201 () Bool)

(assert (=> b!4653592 m!5531201))

(declare-fun m!5531203 () Bool)

(assert (=> d!1475456 m!5531203))

(declare-fun m!5531205 () Bool)

(assert (=> d!1475456 m!5531205))

(declare-fun m!5531207 () Bool)

(assert (=> b!4653598 m!5531207))

(declare-fun m!5531209 () Bool)

(assert (=> bm!325183 m!5531209))

(assert (=> b!4653596 m!5531195))

(assert (=> b!4653591 m!5531195))

(assert (=> b!4653591 m!5531195))

(declare-fun m!5531211 () Bool)

(assert (=> b!4653591 m!5531211))

(declare-fun m!5531213 () Bool)

(assert (=> bm!325181 m!5531213))

(declare-fun m!5531215 () Bool)

(assert (=> b!4653599 m!5531215))

(declare-fun m!5531217 () Bool)

(assert (=> b!4653590 m!5531217))

(declare-fun m!5531219 () Bool)

(assert (=> b!4653595 m!5531219))

(declare-fun m!5531221 () Bool)

(assert (=> b!4653595 m!5531221))

(assert (=> d!1475298 d!1475456))

(declare-fun d!1475492 () Bool)

(assert (=> d!1475492 (dynLambda!21580 lambda!198836 (h!58012 oldBucket!40))))

(declare-fun lt!1816915 () Unit!118036)

(declare-fun choose!31973 (List!51998 Int tuple2!52974) Unit!118036)

(assert (=> d!1475492 (= lt!1816915 (choose!31973 (toList!5195 lt!1816581) lambda!198836 (h!58012 oldBucket!40)))))

(declare-fun e!2903403 () Bool)

(assert (=> d!1475492 e!2903403))

(declare-fun res!1956334 () Bool)

(assert (=> d!1475492 (=> (not res!1956334) (not e!2903403))))

(assert (=> d!1475492 (= res!1956334 (forall!11010 (toList!5195 lt!1816581) lambda!198836))))

(assert (=> d!1475492 (= (forallContained!3216 (toList!5195 lt!1816581) lambda!198836 (h!58012 oldBucket!40)) lt!1816915)))

(declare-fun b!4653605 () Bool)

(assert (=> b!4653605 (= e!2903403 (contains!15023 (toList!5195 lt!1816581) (h!58012 oldBucket!40)))))

(assert (= (and d!1475492 res!1956334) b!4653605))

(declare-fun b_lambda!173459 () Bool)

(assert (=> (not b_lambda!173459) (not d!1475492)))

(declare-fun m!5531223 () Bool)

(assert (=> d!1475492 m!5531223))

(declare-fun m!5531225 () Bool)

(assert (=> d!1475492 m!5531225))

(assert (=> d!1475492 m!5530435))

(declare-fun m!5531227 () Bool)

(assert (=> b!4653605 m!5531227))

(assert (=> b!4653178 d!1475492))

(declare-fun bs!1062252 () Bool)

(declare-fun d!1475494 () Bool)

(assert (= bs!1062252 (and d!1475494 d!1475272)))

(declare-fun lambda!198885 () Int)

(assert (=> bs!1062252 (= (= lt!1816578 lt!1816572) (= lambda!198885 lambda!198837))))

(declare-fun bs!1062253 () Bool)

(assert (= bs!1062253 (and d!1475494 b!4653178)))

(assert (=> bs!1062253 (= (= lt!1816578 lt!1816243) (= lambda!198885 lambda!198835))))

(declare-fun bs!1062254 () Bool)

(assert (= bs!1062254 (and d!1475494 b!4653222)))

(assert (=> bs!1062254 (= (= lt!1816578 lt!1816633) (= lambda!198885 lambda!198847))))

(declare-fun bs!1062255 () Bool)

(assert (= bs!1062255 (and d!1475494 b!4653227)))

(assert (=> bs!1062255 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198885 lambda!198850))))

(assert (=> bs!1062253 (= lambda!198885 lambda!198836)))

(assert (=> bs!1062255 (= (= lt!1816578 lt!1816657) (= lambda!198885 lambda!198851))))

(declare-fun bs!1062256 () Bool)

(assert (= bs!1062256 (and d!1475494 d!1475404)))

(assert (=> bs!1062256 (= (= lt!1816578 lt!1816745) (= lambda!198885 lambda!198862))))

(declare-fun bs!1062257 () Bool)

(assert (= bs!1062257 (and d!1475494 b!4653410)))

(assert (=> bs!1062257 (= (= lt!1816578 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198885 lambda!198859))))

(declare-fun bs!1062258 () Bool)

(assert (= bs!1062258 (and d!1475494 b!4653112)))

(assert (=> bs!1062258 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198885 lambda!198825))))

(assert (=> bs!1062254 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198885 lambda!198846))))

(declare-fun bs!1062259 () Bool)

(assert (= bs!1062259 (and d!1475494 d!1475300)))

(assert (=> bs!1062259 (= (= lt!1816578 lt!1816627) (= lambda!198885 lambda!198848))))

(declare-fun bs!1062260 () Bool)

(assert (= bs!1062260 (and d!1475494 b!4653105)))

(assert (=> bs!1062260 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198885 lambda!198818))))

(declare-fun bs!1062261 () Bool)

(assert (= bs!1062261 (and d!1475494 b!4653177)))

(assert (=> bs!1062261 (= (= lt!1816578 lt!1816243) (= lambda!198885 lambda!198834))))

(declare-fun bs!1062262 () Bool)

(assert (= bs!1062262 (and d!1475494 b!4653411)))

(assert (=> bs!1062262 (= (= lt!1816578 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198885 lambda!198860))))

(declare-fun bs!1062263 () Bool)

(assert (= bs!1062263 (and d!1475494 d!1475270)))

(assert (=> bs!1062263 (not (= lambda!198885 lambda!198833))))

(assert (=> bs!1062262 (= (= lt!1816578 lt!1816751) (= lambda!198885 lambda!198861))))

(assert (=> bs!1062260 (= (= lt!1816578 lt!1816505) (= lambda!198885 lambda!198820))))

(declare-fun bs!1062264 () Bool)

(assert (= bs!1062264 (and d!1475494 b!4653226)))

(assert (=> bs!1062264 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198885 lambda!198849))))

(declare-fun bs!1062265 () Bool)

(assert (= bs!1062265 (and d!1475494 b!4653221)))

(assert (=> bs!1062265 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198885 lambda!198845))))

(declare-fun bs!1062266 () Bool)

(assert (= bs!1062266 (and d!1475494 d!1475200)))

(assert (=> bs!1062266 (= (= lt!1816578 lt!1816499) (= lambda!198885 lambda!198821))))

(declare-fun bs!1062267 () Bool)

(assert (= bs!1062267 (and d!1475494 b!4653104)))

(assert (=> bs!1062267 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198885 lambda!198817))))

(declare-fun bs!1062268 () Bool)

(assert (= bs!1062268 (and d!1475494 d!1475248)))

(assert (=> bs!1062268 (= (= lt!1816578 lt!1816520) (= lambda!198885 lambda!198827))))

(assert (=> bs!1062258 (= (= lt!1816578 lt!1816526) (= lambda!198885 lambda!198826))))

(declare-fun bs!1062269 () Bool)

(assert (= bs!1062269 (and d!1475494 b!4653111)))

(assert (=> bs!1062269 (= (= lt!1816578 (ListMap!4534 Nil!51874)) (= lambda!198885 lambda!198824))))

(declare-fun bs!1062270 () Bool)

(assert (= bs!1062270 (and d!1475494 d!1475308)))

(assert (=> bs!1062270 (= (= lt!1816578 lt!1816651) (= lambda!198885 lambda!198852))))

(declare-fun bs!1062271 () Bool)

(assert (= bs!1062271 (and d!1475494 d!1475292)))

(assert (=> bs!1062271 (not (= lambda!198885 lambda!198844))))

(assert (=> d!1475494 true))

(assert (=> d!1475494 (forall!11010 (toList!5195 lt!1816243) lambda!198885)))

(declare-fun lt!1816918 () Unit!118036)

(declare-fun choose!31974 (ListMap!4533 ListMap!4533 K!13230 V!13476) Unit!118036)

(assert (=> d!1475494 (= lt!1816918 (choose!31974 lt!1816243 lt!1816578 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475494 (forall!11010 (toList!5195 (+!1976 lt!1816243 (tuple2!52975 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))) lambda!198885)))

(assert (=> d!1475494 (= (addForallContainsKeyThenBeforeAdding!591 lt!1816243 lt!1816578 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))) lt!1816918)))

(declare-fun bs!1062272 () Bool)

(assert (= bs!1062272 d!1475494))

(declare-fun m!5531261 () Bool)

(assert (=> bs!1062272 m!5531261))

(declare-fun m!5531263 () Bool)

(assert (=> bs!1062272 m!5531263))

(declare-fun m!5531265 () Bool)

(assert (=> bs!1062272 m!5531265))

(declare-fun m!5531267 () Bool)

(assert (=> bs!1062272 m!5531267))

(assert (=> b!4653178 d!1475494))

(declare-fun d!1475498 () Bool)

(declare-fun res!1956344 () Bool)

(declare-fun e!2903407 () Bool)

(assert (=> d!1475498 (=> res!1956344 e!2903407)))

(assert (=> d!1475498 (= res!1956344 ((_ is Nil!51874) oldBucket!40))))

(assert (=> d!1475498 (= (forall!11010 oldBucket!40 lambda!198836) e!2903407)))

(declare-fun b!4653616 () Bool)

(declare-fun e!2903408 () Bool)

(assert (=> b!4653616 (= e!2903407 e!2903408)))

(declare-fun res!1956345 () Bool)

(assert (=> b!4653616 (=> (not res!1956345) (not e!2903408))))

(assert (=> b!4653616 (= res!1956345 (dynLambda!21580 lambda!198836 (h!58012 oldBucket!40)))))

(declare-fun b!4653617 () Bool)

(assert (=> b!4653617 (= e!2903408 (forall!11010 (t!359110 oldBucket!40) lambda!198836))))

(assert (= (and d!1475498 (not res!1956344)) b!4653616))

(assert (= (and b!4653616 res!1956345) b!4653617))

(declare-fun b_lambda!173461 () Bool)

(assert (=> (not b_lambda!173461) (not b!4653616)))

(assert (=> b!4653616 m!5531223))

(assert (=> b!4653617 m!5530443))

(assert (=> b!4653178 d!1475498))

(declare-fun d!1475500 () Bool)

(declare-fun res!1956346 () Bool)

(declare-fun e!2903409 () Bool)

(assert (=> d!1475500 (=> res!1956346 e!2903409)))

(assert (=> d!1475500 (= res!1956346 ((_ is Nil!51874) (t!359110 oldBucket!40)))))

(assert (=> d!1475500 (= (forall!11010 (t!359110 oldBucket!40) lambda!198836) e!2903409)))

(declare-fun b!4653620 () Bool)

(declare-fun e!2903410 () Bool)

(assert (=> b!4653620 (= e!2903409 e!2903410)))

(declare-fun res!1956347 () Bool)

(assert (=> b!4653620 (=> (not res!1956347) (not e!2903410))))

(assert (=> b!4653620 (= res!1956347 (dynLambda!21580 lambda!198836 (h!58012 (t!359110 oldBucket!40))))))

(declare-fun b!4653621 () Bool)

(assert (=> b!4653621 (= e!2903410 (forall!11010 (t!359110 (t!359110 oldBucket!40)) lambda!198836))))

(assert (= (and d!1475500 (not res!1956346)) b!4653620))

(assert (= (and b!4653620 res!1956347) b!4653621))

(declare-fun b_lambda!173463 () Bool)

(assert (=> (not b_lambda!173463) (not b!4653620)))

(declare-fun m!5531269 () Bool)

(assert (=> b!4653620 m!5531269))

(declare-fun m!5531271 () Bool)

(assert (=> b!4653621 m!5531271))

(assert (=> b!4653178 d!1475500))

(declare-fun bs!1062274 () Bool)

(declare-fun b!4653624 () Bool)

(assert (= bs!1062274 (and b!4653624 d!1475272)))

(declare-fun lambda!198892 () Int)

(assert (=> bs!1062274 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816572) (= lambda!198892 lambda!198837))))

(declare-fun bs!1062275 () Bool)

(assert (= bs!1062275 (and b!4653624 d!1475494)))

(assert (=> bs!1062275 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816578) (= lambda!198892 lambda!198885))))

(declare-fun bs!1062276 () Bool)

(assert (= bs!1062276 (and b!4653624 b!4653178)))

(assert (=> bs!1062276 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816243) (= lambda!198892 lambda!198835))))

(declare-fun bs!1062277 () Bool)

(assert (= bs!1062277 (and b!4653624 b!4653222)))

(assert (=> bs!1062277 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816633) (= lambda!198892 lambda!198847))))

(declare-fun bs!1062278 () Bool)

(assert (= bs!1062278 (and b!4653624 b!4653227)))

(assert (=> bs!1062278 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198892 lambda!198850))))

(assert (=> bs!1062276 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816578) (= lambda!198892 lambda!198836))))

(assert (=> bs!1062278 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816657) (= lambda!198892 lambda!198851))))

(declare-fun bs!1062279 () Bool)

(assert (= bs!1062279 (and b!4653624 d!1475404)))

(assert (=> bs!1062279 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816745) (= lambda!198892 lambda!198862))))

(declare-fun bs!1062280 () Bool)

(assert (= bs!1062280 (and b!4653624 b!4653410)))

(assert (=> bs!1062280 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198892 lambda!198859))))

(declare-fun bs!1062281 () Bool)

(assert (= bs!1062281 (and b!4653624 b!4653112)))

(assert (=> bs!1062281 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198892 lambda!198825))))

(assert (=> bs!1062277 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198892 lambda!198846))))

(declare-fun bs!1062282 () Bool)

(assert (= bs!1062282 (and b!4653624 d!1475300)))

(assert (=> bs!1062282 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816627) (= lambda!198892 lambda!198848))))

(declare-fun bs!1062283 () Bool)

(assert (= bs!1062283 (and b!4653624 b!4653105)))

(assert (=> bs!1062283 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198892 lambda!198818))))

(declare-fun bs!1062284 () Bool)

(assert (= bs!1062284 (and b!4653624 b!4653177)))

(assert (=> bs!1062284 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816243) (= lambda!198892 lambda!198834))))

(declare-fun bs!1062285 () Bool)

(assert (= bs!1062285 (and b!4653624 b!4653411)))

(assert (=> bs!1062285 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198892 lambda!198860))))

(declare-fun bs!1062286 () Bool)

(assert (= bs!1062286 (and b!4653624 d!1475270)))

(assert (=> bs!1062286 (not (= lambda!198892 lambda!198833))))

(assert (=> bs!1062285 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816751) (= lambda!198892 lambda!198861))))

(assert (=> bs!1062283 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816505) (= lambda!198892 lambda!198820))))

(declare-fun bs!1062287 () Bool)

(assert (= bs!1062287 (and b!4653624 b!4653226)))

(assert (=> bs!1062287 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198892 lambda!198849))))

(declare-fun bs!1062288 () Bool)

(assert (= bs!1062288 (and b!4653624 b!4653221)))

(assert (=> bs!1062288 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198892 lambda!198845))))

(declare-fun bs!1062289 () Bool)

(assert (= bs!1062289 (and b!4653624 d!1475200)))

(assert (=> bs!1062289 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816499) (= lambda!198892 lambda!198821))))

(declare-fun bs!1062290 () Bool)

(assert (= bs!1062290 (and b!4653624 b!4653104)))

(assert (=> bs!1062290 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198892 lambda!198817))))

(declare-fun bs!1062291 () Bool)

(assert (= bs!1062291 (and b!4653624 d!1475248)))

(assert (=> bs!1062291 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816520) (= lambda!198892 lambda!198827))))

(assert (=> bs!1062281 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816526) (= lambda!198892 lambda!198826))))

(declare-fun bs!1062292 () Bool)

(assert (= bs!1062292 (and b!4653624 b!4653111)))

(assert (=> bs!1062292 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198892 lambda!198824))))

(declare-fun bs!1062293 () Bool)

(assert (= bs!1062293 (and b!4653624 d!1475308)))

(assert (=> bs!1062293 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816651) (= lambda!198892 lambda!198852))))

(declare-fun bs!1062294 () Bool)

(assert (= bs!1062294 (and b!4653624 d!1475292)))

(assert (=> bs!1062294 (not (= lambda!198892 lambda!198844))))

(assert (=> b!4653624 true))

(declare-fun bs!1062295 () Bool)

(declare-fun b!4653625 () Bool)

(assert (= bs!1062295 (and b!4653625 d!1475272)))

(declare-fun lambda!198893 () Int)

(assert (=> bs!1062295 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816572) (= lambda!198893 lambda!198837))))

(declare-fun bs!1062296 () Bool)

(assert (= bs!1062296 (and b!4653625 d!1475494)))

(assert (=> bs!1062296 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816578) (= lambda!198893 lambda!198885))))

(declare-fun bs!1062297 () Bool)

(assert (= bs!1062297 (and b!4653625 b!4653178)))

(assert (=> bs!1062297 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816243) (= lambda!198893 lambda!198835))))

(declare-fun bs!1062298 () Bool)

(assert (= bs!1062298 (and b!4653625 b!4653222)))

(assert (=> bs!1062298 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816633) (= lambda!198893 lambda!198847))))

(declare-fun bs!1062299 () Bool)

(assert (= bs!1062299 (and b!4653625 b!4653227)))

(assert (=> bs!1062299 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198893 lambda!198850))))

(assert (=> bs!1062299 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816657) (= lambda!198893 lambda!198851))))

(declare-fun bs!1062301 () Bool)

(assert (= bs!1062301 (and b!4653625 d!1475404)))

(assert (=> bs!1062301 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816745) (= lambda!198893 lambda!198862))))

(declare-fun bs!1062303 () Bool)

(assert (= bs!1062303 (and b!4653625 b!4653410)))

(assert (=> bs!1062303 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198893 lambda!198859))))

(declare-fun bs!1062305 () Bool)

(assert (= bs!1062305 (and b!4653625 b!4653112)))

(assert (=> bs!1062305 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198893 lambda!198825))))

(assert (=> bs!1062298 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198893 lambda!198846))))

(declare-fun bs!1062307 () Bool)

(assert (= bs!1062307 (and b!4653625 d!1475300)))

(assert (=> bs!1062307 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816627) (= lambda!198893 lambda!198848))))

(declare-fun bs!1062309 () Bool)

(assert (= bs!1062309 (and b!4653625 b!4653105)))

(assert (=> bs!1062309 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198893 lambda!198818))))

(declare-fun bs!1062311 () Bool)

(assert (= bs!1062311 (and b!4653625 b!4653177)))

(assert (=> bs!1062311 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816243) (= lambda!198893 lambda!198834))))

(assert (=> bs!1062297 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816578) (= lambda!198893 lambda!198836))))

(declare-fun bs!1062314 () Bool)

(assert (= bs!1062314 (and b!4653625 b!4653624)))

(assert (=> bs!1062314 (= lambda!198893 lambda!198892)))

(declare-fun bs!1062316 () Bool)

(assert (= bs!1062316 (and b!4653625 b!4653411)))

(assert (=> bs!1062316 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198893 lambda!198860))))

(declare-fun bs!1062318 () Bool)

(assert (= bs!1062318 (and b!4653625 d!1475270)))

(assert (=> bs!1062318 (not (= lambda!198893 lambda!198833))))

(assert (=> bs!1062316 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816751) (= lambda!198893 lambda!198861))))

(assert (=> bs!1062309 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816505) (= lambda!198893 lambda!198820))))

(declare-fun bs!1062322 () Bool)

(assert (= bs!1062322 (and b!4653625 b!4653226)))

(assert (=> bs!1062322 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198893 lambda!198849))))

(declare-fun bs!1062324 () Bool)

(assert (= bs!1062324 (and b!4653625 b!4653221)))

(assert (=> bs!1062324 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198893 lambda!198845))))

(declare-fun bs!1062326 () Bool)

(assert (= bs!1062326 (and b!4653625 d!1475200)))

(assert (=> bs!1062326 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816499) (= lambda!198893 lambda!198821))))

(declare-fun bs!1062328 () Bool)

(assert (= bs!1062328 (and b!4653625 b!4653104)))

(assert (=> bs!1062328 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198893 lambda!198817))))

(declare-fun bs!1062330 () Bool)

(assert (= bs!1062330 (and b!4653625 d!1475248)))

(assert (=> bs!1062330 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816520) (= lambda!198893 lambda!198827))))

(assert (=> bs!1062305 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816526) (= lambda!198893 lambda!198826))))

(declare-fun bs!1062331 () Bool)

(assert (= bs!1062331 (and b!4653625 b!4653111)))

(assert (=> bs!1062331 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198893 lambda!198824))))

(declare-fun bs!1062333 () Bool)

(assert (= bs!1062333 (and b!4653625 d!1475308)))

(assert (=> bs!1062333 (= (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816651) (= lambda!198893 lambda!198852))))

(declare-fun bs!1062334 () Bool)

(assert (= bs!1062334 (and b!4653625 d!1475292)))

(assert (=> bs!1062334 (not (= lambda!198893 lambda!198844))))

(assert (=> b!4653625 true))

(declare-fun lambda!198895 () Int)

(declare-fun lt!1816928 () ListMap!4533)

(assert (=> bs!1062295 (= (= lt!1816928 lt!1816572) (= lambda!198895 lambda!198837))))

(assert (=> bs!1062296 (= (= lt!1816928 lt!1816578) (= lambda!198895 lambda!198885))))

(assert (=> bs!1062297 (= (= lt!1816928 lt!1816243) (= lambda!198895 lambda!198835))))

(assert (=> bs!1062299 (= (= lt!1816928 (ListMap!4534 Nil!51874)) (= lambda!198895 lambda!198850))))

(assert (=> bs!1062299 (= (= lt!1816928 lt!1816657) (= lambda!198895 lambda!198851))))

(assert (=> bs!1062301 (= (= lt!1816928 lt!1816745) (= lambda!198895 lambda!198862))))

(assert (=> bs!1062303 (= (= lt!1816928 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198895 lambda!198859))))

(assert (=> bs!1062305 (= (= lt!1816928 (ListMap!4534 Nil!51874)) (= lambda!198895 lambda!198825))))

(assert (=> bs!1062298 (= (= lt!1816928 (ListMap!4534 Nil!51874)) (= lambda!198895 lambda!198846))))

(assert (=> bs!1062307 (= (= lt!1816928 lt!1816627) (= lambda!198895 lambda!198848))))

(assert (=> bs!1062309 (= (= lt!1816928 (ListMap!4534 Nil!51874)) (= lambda!198895 lambda!198818))))

(assert (=> bs!1062311 (= (= lt!1816928 lt!1816243) (= lambda!198895 lambda!198834))))

(assert (=> bs!1062298 (= (= lt!1816928 lt!1816633) (= lambda!198895 lambda!198847))))

(assert (=> b!4653625 (= (= lt!1816928 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198895 lambda!198893))))

(assert (=> bs!1062297 (= (= lt!1816928 lt!1816578) (= lambda!198895 lambda!198836))))

(assert (=> bs!1062314 (= (= lt!1816928 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198895 lambda!198892))))

(assert (=> bs!1062316 (= (= lt!1816928 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198895 lambda!198860))))

(assert (=> bs!1062318 (not (= lambda!198895 lambda!198833))))

(assert (=> bs!1062316 (= (= lt!1816928 lt!1816751) (= lambda!198895 lambda!198861))))

(assert (=> bs!1062309 (= (= lt!1816928 lt!1816505) (= lambda!198895 lambda!198820))))

(assert (=> bs!1062322 (= (= lt!1816928 (ListMap!4534 Nil!51874)) (= lambda!198895 lambda!198849))))

(assert (=> bs!1062324 (= (= lt!1816928 (ListMap!4534 Nil!51874)) (= lambda!198895 lambda!198845))))

(assert (=> bs!1062326 (= (= lt!1816928 lt!1816499) (= lambda!198895 lambda!198821))))

(assert (=> bs!1062328 (= (= lt!1816928 (ListMap!4534 Nil!51874)) (= lambda!198895 lambda!198817))))

(assert (=> bs!1062330 (= (= lt!1816928 lt!1816520) (= lambda!198895 lambda!198827))))

(assert (=> bs!1062305 (= (= lt!1816928 lt!1816526) (= lambda!198895 lambda!198826))))

(assert (=> bs!1062331 (= (= lt!1816928 (ListMap!4534 Nil!51874)) (= lambda!198895 lambda!198824))))

(assert (=> bs!1062333 (= (= lt!1816928 lt!1816651) (= lambda!198895 lambda!198852))))

(assert (=> bs!1062334 (not (= lambda!198895 lambda!198844))))

(assert (=> b!4653625 true))

(declare-fun bs!1062344 () Bool)

(declare-fun d!1475502 () Bool)

(assert (= bs!1062344 (and d!1475502 d!1475272)))

(declare-fun lt!1816922 () ListMap!4533)

(declare-fun lambda!198896 () Int)

(assert (=> bs!1062344 (= (= lt!1816922 lt!1816572) (= lambda!198896 lambda!198837))))

(declare-fun bs!1062345 () Bool)

(assert (= bs!1062345 (and d!1475502 d!1475494)))

(assert (=> bs!1062345 (= (= lt!1816922 lt!1816578) (= lambda!198896 lambda!198885))))

(declare-fun bs!1062346 () Bool)

(assert (= bs!1062346 (and d!1475502 b!4653178)))

(assert (=> bs!1062346 (= (= lt!1816922 lt!1816243) (= lambda!198896 lambda!198835))))

(declare-fun bs!1062347 () Bool)

(assert (= bs!1062347 (and d!1475502 b!4653227)))

(assert (=> bs!1062347 (= (= lt!1816922 (ListMap!4534 Nil!51874)) (= lambda!198896 lambda!198850))))

(assert (=> bs!1062347 (= (= lt!1816922 lt!1816657) (= lambda!198896 lambda!198851))))

(declare-fun bs!1062348 () Bool)

(assert (= bs!1062348 (and d!1475502 d!1475404)))

(assert (=> bs!1062348 (= (= lt!1816922 lt!1816745) (= lambda!198896 lambda!198862))))

(declare-fun bs!1062349 () Bool)

(assert (= bs!1062349 (and d!1475502 b!4653410)))

(assert (=> bs!1062349 (= (= lt!1816922 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198896 lambda!198859))))

(declare-fun bs!1062350 () Bool)

(assert (= bs!1062350 (and d!1475502 b!4653112)))

(assert (=> bs!1062350 (= (= lt!1816922 (ListMap!4534 Nil!51874)) (= lambda!198896 lambda!198825))))

(declare-fun bs!1062351 () Bool)

(assert (= bs!1062351 (and d!1475502 b!4653625)))

(assert (=> bs!1062351 (= (= lt!1816922 lt!1816928) (= lambda!198896 lambda!198895))))

(declare-fun bs!1062352 () Bool)

(assert (= bs!1062352 (and d!1475502 b!4653222)))

(assert (=> bs!1062352 (= (= lt!1816922 (ListMap!4534 Nil!51874)) (= lambda!198896 lambda!198846))))

(declare-fun bs!1062353 () Bool)

(assert (= bs!1062353 (and d!1475502 d!1475300)))

(assert (=> bs!1062353 (= (= lt!1816922 lt!1816627) (= lambda!198896 lambda!198848))))

(declare-fun bs!1062354 () Bool)

(assert (= bs!1062354 (and d!1475502 b!4653105)))

(assert (=> bs!1062354 (= (= lt!1816922 (ListMap!4534 Nil!51874)) (= lambda!198896 lambda!198818))))

(declare-fun bs!1062355 () Bool)

(assert (= bs!1062355 (and d!1475502 b!4653177)))

(assert (=> bs!1062355 (= (= lt!1816922 lt!1816243) (= lambda!198896 lambda!198834))))

(assert (=> bs!1062352 (= (= lt!1816922 lt!1816633) (= lambda!198896 lambda!198847))))

(assert (=> bs!1062351 (= (= lt!1816922 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198896 lambda!198893))))

(assert (=> bs!1062346 (= (= lt!1816922 lt!1816578) (= lambda!198896 lambda!198836))))

(declare-fun bs!1062356 () Bool)

(assert (= bs!1062356 (and d!1475502 b!4653624)))

(assert (=> bs!1062356 (= (= lt!1816922 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198896 lambda!198892))))

(declare-fun bs!1062357 () Bool)

(assert (= bs!1062357 (and d!1475502 b!4653411)))

(assert (=> bs!1062357 (= (= lt!1816922 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198896 lambda!198860))))

(declare-fun bs!1062358 () Bool)

(assert (= bs!1062358 (and d!1475502 d!1475270)))

(assert (=> bs!1062358 (not (= lambda!198896 lambda!198833))))

(assert (=> bs!1062357 (= (= lt!1816922 lt!1816751) (= lambda!198896 lambda!198861))))

(assert (=> bs!1062354 (= (= lt!1816922 lt!1816505) (= lambda!198896 lambda!198820))))

(declare-fun bs!1062359 () Bool)

(assert (= bs!1062359 (and d!1475502 b!4653226)))

(assert (=> bs!1062359 (= (= lt!1816922 (ListMap!4534 Nil!51874)) (= lambda!198896 lambda!198849))))

(declare-fun bs!1062360 () Bool)

(assert (= bs!1062360 (and d!1475502 b!4653221)))

(assert (=> bs!1062360 (= (= lt!1816922 (ListMap!4534 Nil!51874)) (= lambda!198896 lambda!198845))))

(declare-fun bs!1062361 () Bool)

(assert (= bs!1062361 (and d!1475502 d!1475200)))

(assert (=> bs!1062361 (= (= lt!1816922 lt!1816499) (= lambda!198896 lambda!198821))))

(declare-fun bs!1062362 () Bool)

(assert (= bs!1062362 (and d!1475502 b!4653104)))

(assert (=> bs!1062362 (= (= lt!1816922 (ListMap!4534 Nil!51874)) (= lambda!198896 lambda!198817))))

(declare-fun bs!1062363 () Bool)

(assert (= bs!1062363 (and d!1475502 d!1475248)))

(assert (=> bs!1062363 (= (= lt!1816922 lt!1816520) (= lambda!198896 lambda!198827))))

(assert (=> bs!1062350 (= (= lt!1816922 lt!1816526) (= lambda!198896 lambda!198826))))

(declare-fun bs!1062364 () Bool)

(assert (= bs!1062364 (and d!1475502 b!4653111)))

(assert (=> bs!1062364 (= (= lt!1816922 (ListMap!4534 Nil!51874)) (= lambda!198896 lambda!198824))))

(declare-fun bs!1062365 () Bool)

(assert (= bs!1062365 (and d!1475502 d!1475308)))

(assert (=> bs!1062365 (= (= lt!1816922 lt!1816651) (= lambda!198896 lambda!198852))))

(declare-fun bs!1062367 () Bool)

(assert (= bs!1062367 (and d!1475502 d!1475292)))

(assert (=> bs!1062367 (not (= lambda!198896 lambda!198844))))

(assert (=> d!1475502 true))

(declare-fun b!4653622 () Bool)

(declare-fun res!1956350 () Bool)

(declare-fun e!2903411 () Bool)

(assert (=> b!4653622 (=> (not res!1956350) (not e!2903411))))

(assert (=> b!4653622 (= res!1956350 (forall!11010 (toList!5195 (+!1976 lt!1816243 (h!58012 oldBucket!40))) lambda!198896))))

(declare-fun b!4653623 () Bool)

(assert (=> b!4653623 (= e!2903411 (invariantList!1292 (toList!5195 lt!1816922)))))

(declare-fun e!2903412 () ListMap!4533)

(assert (=> b!4653624 (= e!2903412 (+!1976 lt!1816243 (h!58012 oldBucket!40)))))

(declare-fun lt!1816930 () Unit!118036)

(declare-fun call!325191 () Unit!118036)

(assert (=> b!4653624 (= lt!1816930 call!325191)))

(declare-fun call!325190 () Bool)

(assert (=> b!4653624 call!325190))

(declare-fun lt!1816939 () Unit!118036)

(assert (=> b!4653624 (= lt!1816939 lt!1816930)))

(declare-fun call!325192 () Bool)

(assert (=> b!4653624 call!325192))

(declare-fun lt!1816925 () Unit!118036)

(declare-fun Unit!118207 () Unit!118036)

(assert (=> b!4653624 (= lt!1816925 Unit!118207)))

(declare-fun bm!325185 () Bool)

(declare-fun c!796519 () Bool)

(assert (=> bm!325185 (= call!325192 (forall!11010 (toList!5195 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (ite c!796519 lambda!198892 lambda!198895)))))

(assert (=> b!4653625 (= e!2903412 lt!1816928)))

(declare-fun lt!1816931 () ListMap!4533)

(assert (=> b!4653625 (= lt!1816931 (+!1976 (+!1976 lt!1816243 (h!58012 oldBucket!40)) (h!58012 (t!359110 oldBucket!40))))))

(assert (=> b!4653625 (= lt!1816928 (addToMapMapFromBucket!1089 (t!359110 (t!359110 oldBucket!40)) (+!1976 (+!1976 lt!1816243 (h!58012 oldBucket!40)) (h!58012 (t!359110 oldBucket!40)))))))

(declare-fun lt!1816934 () Unit!118036)

(assert (=> b!4653625 (= lt!1816934 call!325191)))

(assert (=> b!4653625 call!325190))

(declare-fun lt!1816933 () Unit!118036)

(assert (=> b!4653625 (= lt!1816933 lt!1816934)))

(assert (=> b!4653625 (forall!11010 (toList!5195 lt!1816931) lambda!198895)))

(declare-fun lt!1816935 () Unit!118036)

(declare-fun Unit!118208 () Unit!118036)

(assert (=> b!4653625 (= lt!1816935 Unit!118208)))

(assert (=> b!4653625 (forall!11010 (t!359110 (t!359110 oldBucket!40)) lambda!198895)))

(declare-fun lt!1816926 () Unit!118036)

(declare-fun Unit!118209 () Unit!118036)

(assert (=> b!4653625 (= lt!1816926 Unit!118209)))

(declare-fun lt!1816932 () Unit!118036)

(declare-fun Unit!118210 () Unit!118036)

(assert (=> b!4653625 (= lt!1816932 Unit!118210)))

(declare-fun lt!1816924 () Unit!118036)

(assert (=> b!4653625 (= lt!1816924 (forallContained!3216 (toList!5195 lt!1816931) lambda!198895 (h!58012 (t!359110 oldBucket!40))))))

(assert (=> b!4653625 (contains!15019 lt!1816931 (_1!29781 (h!58012 (t!359110 oldBucket!40))))))

(declare-fun lt!1816936 () Unit!118036)

(declare-fun Unit!118211 () Unit!118036)

(assert (=> b!4653625 (= lt!1816936 Unit!118211)))

(assert (=> b!4653625 (contains!15019 lt!1816928 (_1!29781 (h!58012 (t!359110 oldBucket!40))))))

(declare-fun lt!1816940 () Unit!118036)

(declare-fun Unit!118212 () Unit!118036)

(assert (=> b!4653625 (= lt!1816940 Unit!118212)))

(assert (=> b!4653625 (forall!11010 (t!359110 oldBucket!40) lambda!198895)))

(declare-fun lt!1816942 () Unit!118036)

(declare-fun Unit!118213 () Unit!118036)

(assert (=> b!4653625 (= lt!1816942 Unit!118213)))

(assert (=> b!4653625 (forall!11010 (toList!5195 lt!1816931) lambda!198895)))

(declare-fun lt!1816937 () Unit!118036)

(declare-fun Unit!118214 () Unit!118036)

(assert (=> b!4653625 (= lt!1816937 Unit!118214)))

(declare-fun lt!1816938 () Unit!118036)

(declare-fun Unit!118215 () Unit!118036)

(assert (=> b!4653625 (= lt!1816938 Unit!118215)))

(declare-fun lt!1816929 () Unit!118036)

(assert (=> b!4653625 (= lt!1816929 (addForallContainsKeyThenBeforeAdding!591 (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816928 (_1!29781 (h!58012 (t!359110 oldBucket!40))) (_2!29781 (h!58012 (t!359110 oldBucket!40)))))))

(assert (=> b!4653625 call!325192))

(declare-fun lt!1816923 () Unit!118036)

(assert (=> b!4653625 (= lt!1816923 lt!1816929)))

(assert (=> b!4653625 (forall!11010 (toList!5195 (+!1976 lt!1816243 (h!58012 oldBucket!40))) lambda!198895)))

(declare-fun lt!1816927 () Unit!118036)

(declare-fun Unit!118216 () Unit!118036)

(assert (=> b!4653625 (= lt!1816927 Unit!118216)))

(declare-fun res!1956349 () Bool)

(assert (=> b!4653625 (= res!1956349 (forall!11010 (t!359110 oldBucket!40) lambda!198895))))

(declare-fun e!2903413 () Bool)

(assert (=> b!4653625 (=> (not res!1956349) (not e!2903413))))

(assert (=> b!4653625 e!2903413))

(declare-fun lt!1816941 () Unit!118036)

(declare-fun Unit!118217 () Unit!118036)

(assert (=> b!4653625 (= lt!1816941 Unit!118217)))

(assert (=> d!1475502 e!2903411))

(declare-fun res!1956348 () Bool)

(assert (=> d!1475502 (=> (not res!1956348) (not e!2903411))))

(assert (=> d!1475502 (= res!1956348 (forall!11010 (t!359110 oldBucket!40) lambda!198896))))

(assert (=> d!1475502 (= lt!1816922 e!2903412)))

(assert (=> d!1475502 (= c!796519 ((_ is Nil!51874) (t!359110 oldBucket!40)))))

(assert (=> d!1475502 (noDuplicateKeys!1632 (t!359110 oldBucket!40))))

(assert (=> d!1475502 (= (addToMapMapFromBucket!1089 (t!359110 oldBucket!40) (+!1976 lt!1816243 (h!58012 oldBucket!40))) lt!1816922)))

(declare-fun bm!325186 () Bool)

(assert (=> bm!325186 (= call!325190 (forall!11010 (toList!5195 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (ite c!796519 lambda!198892 lambda!198893)))))

(declare-fun bm!325187 () Bool)

(assert (=> bm!325187 (= call!325191 (lemmaContainsAllItsOwnKeys!592 (+!1976 lt!1816243 (h!58012 oldBucket!40))))))

(declare-fun b!4653626 () Bool)

(assert (=> b!4653626 (= e!2903413 (forall!11010 (toList!5195 (+!1976 lt!1816243 (h!58012 oldBucket!40))) lambda!198895))))

(assert (= (and d!1475502 c!796519) b!4653624))

(assert (= (and d!1475502 (not c!796519)) b!4653625))

(assert (= (and b!4653625 res!1956349) b!4653626))

(assert (= (or b!4653624 b!4653625) bm!325187))

(assert (= (or b!4653624 b!4653625) bm!325186))

(assert (= (or b!4653624 b!4653625) bm!325185))

(assert (= (and d!1475502 res!1956348) b!4653622))

(assert (= (and b!4653622 res!1956350) b!4653623))

(declare-fun m!5531371 () Bool)

(assert (=> d!1475502 m!5531371))

(assert (=> d!1475502 m!5530373))

(declare-fun m!5531373 () Bool)

(assert (=> bm!325186 m!5531373))

(declare-fun m!5531375 () Bool)

(assert (=> b!4653623 m!5531375))

(declare-fun m!5531377 () Bool)

(assert (=> b!4653622 m!5531377))

(assert (=> bm!325187 m!5530439))

(declare-fun m!5531379 () Bool)

(assert (=> bm!325187 m!5531379))

(declare-fun m!5531381 () Bool)

(assert (=> bm!325185 m!5531381))

(declare-fun m!5531383 () Bool)

(assert (=> b!4653626 m!5531383))

(assert (=> b!4653625 m!5530439))

(declare-fun m!5531385 () Bool)

(assert (=> b!4653625 m!5531385))

(declare-fun m!5531387 () Bool)

(assert (=> b!4653625 m!5531387))

(assert (=> b!4653625 m!5531387))

(declare-fun m!5531389 () Bool)

(assert (=> b!4653625 m!5531389))

(declare-fun m!5531391 () Bool)

(assert (=> b!4653625 m!5531391))

(declare-fun m!5531393 () Bool)

(assert (=> b!4653625 m!5531393))

(assert (=> b!4653625 m!5531391))

(declare-fun m!5531395 () Bool)

(assert (=> b!4653625 m!5531395))

(declare-fun m!5531397 () Bool)

(assert (=> b!4653625 m!5531397))

(declare-fun m!5531399 () Bool)

(assert (=> b!4653625 m!5531399))

(assert (=> b!4653625 m!5531383))

(declare-fun m!5531401 () Bool)

(assert (=> b!4653625 m!5531401))

(assert (=> b!4653625 m!5530439))

(assert (=> b!4653625 m!5531395))

(assert (=> b!4653178 d!1475502))

(declare-fun d!1475528 () Bool)

(declare-fun res!1956373 () Bool)

(declare-fun e!2903441 () Bool)

(assert (=> d!1475528 (=> res!1956373 e!2903441)))

(assert (=> d!1475528 (= res!1956373 ((_ is Nil!51874) (toList!5195 lt!1816581)))))

(assert (=> d!1475528 (= (forall!11010 (toList!5195 lt!1816581) lambda!198836) e!2903441)))

(declare-fun b!4653663 () Bool)

(declare-fun e!2903442 () Bool)

(assert (=> b!4653663 (= e!2903441 e!2903442)))

(declare-fun res!1956374 () Bool)

(assert (=> b!4653663 (=> (not res!1956374) (not e!2903442))))

(assert (=> b!4653663 (= res!1956374 (dynLambda!21580 lambda!198836 (h!58012 (toList!5195 lt!1816581))))))

(declare-fun b!4653664 () Bool)

(assert (=> b!4653664 (= e!2903442 (forall!11010 (t!359110 (toList!5195 lt!1816581)) lambda!198836))))

(assert (= (and d!1475528 (not res!1956373)) b!4653663))

(assert (= (and b!4653663 res!1956374) b!4653664))

(declare-fun b_lambda!173477 () Bool)

(assert (=> (not b_lambda!173477) (not b!4653663)))

(declare-fun m!5531403 () Bool)

(assert (=> b!4653663 m!5531403))

(declare-fun m!5531405 () Bool)

(assert (=> b!4653664 m!5531405))

(assert (=> b!4653178 d!1475528))

(declare-fun b!4653665 () Bool)

(declare-fun e!2903448 () Unit!118036)

(declare-fun lt!1816991 () Unit!118036)

(assert (=> b!4653665 (= e!2903448 lt!1816991)))

(declare-fun lt!1816986 () Unit!118036)

(assert (=> b!4653665 (= lt!1816986 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816581) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> b!4653665 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816581) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun lt!1816988 () Unit!118036)

(assert (=> b!4653665 (= lt!1816988 lt!1816986)))

(assert (=> b!4653665 (= lt!1816991 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816581) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun call!325198 () Bool)

(assert (=> b!4653665 call!325198))

(declare-fun b!4653666 () Bool)

(declare-fun e!2903446 () List!52001)

(assert (=> b!4653666 (= e!2903446 (getKeysList!743 (toList!5195 lt!1816581)))))

(declare-fun b!4653667 () Bool)

(declare-fun e!2903445 () Unit!118036)

(assert (=> b!4653667 (= e!2903448 e!2903445)))

(declare-fun c!796528 () Bool)

(assert (=> b!4653667 (= c!796528 call!325198)))

(declare-fun b!4653668 () Bool)

(declare-fun e!2903443 () Bool)

(assert (=> b!4653668 (= e!2903443 (contains!15021 (keys!18370 lt!1816581) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun b!4653669 () Bool)

(declare-fun e!2903444 () Bool)

(assert (=> b!4653669 (= e!2903444 e!2903443)))

(declare-fun res!1956376 () Bool)

(assert (=> b!4653669 (=> (not res!1956376) (not e!2903443))))

(assert (=> b!4653669 (= res!1956376 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816581) (_1!29781 (h!58012 oldBucket!40)))))))

(declare-fun bm!325193 () Bool)

(assert (=> bm!325193 (= call!325198 (contains!15021 e!2903446 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun c!796527 () Bool)

(declare-fun c!796529 () Bool)

(assert (=> bm!325193 (= c!796527 c!796529)))

(declare-fun b!4653670 () Bool)

(assert (=> b!4653670 (= e!2903446 (keys!18370 lt!1816581))))

(declare-fun b!4653671 () Bool)

(assert (=> b!4653671 false))

(declare-fun lt!1816992 () Unit!118036)

(declare-fun lt!1816990 () Unit!118036)

(assert (=> b!4653671 (= lt!1816992 lt!1816990)))

(assert (=> b!4653671 (containsKey!2711 (toList!5195 lt!1816581) (_1!29781 (h!58012 oldBucket!40)))))

(assert (=> b!4653671 (= lt!1816990 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816581) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun Unit!118220 () Unit!118036)

(assert (=> b!4653671 (= e!2903445 Unit!118220)))

(declare-fun d!1475530 () Bool)

(assert (=> d!1475530 e!2903444))

(declare-fun res!1956377 () Bool)

(assert (=> d!1475530 (=> res!1956377 e!2903444)))

(declare-fun e!2903447 () Bool)

(assert (=> d!1475530 (= res!1956377 e!2903447)))

(declare-fun res!1956375 () Bool)

(assert (=> d!1475530 (=> (not res!1956375) (not e!2903447))))

(declare-fun lt!1816993 () Bool)

(assert (=> d!1475530 (= res!1956375 (not lt!1816993))))

(declare-fun lt!1816987 () Bool)

(assert (=> d!1475530 (= lt!1816993 lt!1816987)))

(declare-fun lt!1816989 () Unit!118036)

(assert (=> d!1475530 (= lt!1816989 e!2903448)))

(assert (=> d!1475530 (= c!796529 lt!1816987)))

(assert (=> d!1475530 (= lt!1816987 (containsKey!2711 (toList!5195 lt!1816581) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475530 (= (contains!15019 lt!1816581 (_1!29781 (h!58012 oldBucket!40))) lt!1816993)))

(declare-fun b!4653672 () Bool)

(declare-fun Unit!118221 () Unit!118036)

(assert (=> b!4653672 (= e!2903445 Unit!118221)))

(declare-fun b!4653673 () Bool)

(assert (=> b!4653673 (= e!2903447 (not (contains!15021 (keys!18370 lt!1816581) (_1!29781 (h!58012 oldBucket!40)))))))

(assert (= (and d!1475530 c!796529) b!4653665))

(assert (= (and d!1475530 (not c!796529)) b!4653667))

(assert (= (and b!4653667 c!796528) b!4653671))

(assert (= (and b!4653667 (not c!796528)) b!4653672))

(assert (= (or b!4653665 b!4653667) bm!325193))

(assert (= (and bm!325193 c!796527) b!4653666))

(assert (= (and bm!325193 (not c!796527)) b!4653670))

(assert (= (and d!1475530 res!1956375) b!4653673))

(assert (= (and d!1475530 (not res!1956377)) b!4653669))

(assert (= (and b!4653669 res!1956376) b!4653668))

(declare-fun m!5531407 () Bool)

(assert (=> b!4653673 m!5531407))

(assert (=> b!4653673 m!5531407))

(declare-fun m!5531409 () Bool)

(assert (=> b!4653673 m!5531409))

(declare-fun m!5531411 () Bool)

(assert (=> b!4653665 m!5531411))

(declare-fun m!5531413 () Bool)

(assert (=> b!4653665 m!5531413))

(assert (=> b!4653665 m!5531413))

(declare-fun m!5531415 () Bool)

(assert (=> b!4653665 m!5531415))

(declare-fun m!5531417 () Bool)

(assert (=> b!4653665 m!5531417))

(declare-fun m!5531419 () Bool)

(assert (=> bm!325193 m!5531419))

(assert (=> b!4653670 m!5531407))

(declare-fun m!5531421 () Bool)

(assert (=> d!1475530 m!5531421))

(assert (=> b!4653671 m!5531421))

(declare-fun m!5531423 () Bool)

(assert (=> b!4653671 m!5531423))

(assert (=> b!4653669 m!5531413))

(assert (=> b!4653669 m!5531413))

(assert (=> b!4653669 m!5531415))

(assert (=> b!4653668 m!5531407))

(assert (=> b!4653668 m!5531407))

(assert (=> b!4653668 m!5531409))

(declare-fun m!5531425 () Bool)

(assert (=> b!4653666 m!5531425))

(assert (=> b!4653178 d!1475530))

(declare-fun d!1475532 () Bool)

(declare-fun e!2903449 () Bool)

(assert (=> d!1475532 e!2903449))

(declare-fun res!1956378 () Bool)

(assert (=> d!1475532 (=> (not res!1956378) (not e!2903449))))

(declare-fun lt!1816995 () ListMap!4533)

(assert (=> d!1475532 (= res!1956378 (contains!15019 lt!1816995 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun lt!1816996 () List!51998)

(assert (=> d!1475532 (= lt!1816995 (ListMap!4534 lt!1816996))))

(declare-fun lt!1816997 () Unit!118036)

(declare-fun lt!1816994 () Unit!118036)

(assert (=> d!1475532 (= lt!1816997 lt!1816994)))

(assert (=> d!1475532 (= (getValueByKey!1603 lt!1816996 (_1!29781 (h!58012 oldBucket!40))) (Some!11814 (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475532 (= lt!1816994 (lemmaContainsTupThenGetReturnValue!920 lt!1816996 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475532 (= lt!1816996 (insertNoDuplicatedKeys!428 (toList!5195 lt!1816243) (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475532 (= (+!1976 lt!1816243 (h!58012 oldBucket!40)) lt!1816995)))

(declare-fun b!4653674 () Bool)

(declare-fun res!1956379 () Bool)

(assert (=> b!4653674 (=> (not res!1956379) (not e!2903449))))

(assert (=> b!4653674 (= res!1956379 (= (getValueByKey!1603 (toList!5195 lt!1816995) (_1!29781 (h!58012 oldBucket!40))) (Some!11814 (_2!29781 (h!58012 oldBucket!40)))))))

(declare-fun b!4653675 () Bool)

(assert (=> b!4653675 (= e!2903449 (contains!15023 (toList!5195 lt!1816995) (h!58012 oldBucket!40)))))

(assert (= (and d!1475532 res!1956378) b!4653674))

(assert (= (and b!4653674 res!1956379) b!4653675))

(declare-fun m!5531427 () Bool)

(assert (=> d!1475532 m!5531427))

(declare-fun m!5531429 () Bool)

(assert (=> d!1475532 m!5531429))

(declare-fun m!5531431 () Bool)

(assert (=> d!1475532 m!5531431))

(declare-fun m!5531433 () Bool)

(assert (=> d!1475532 m!5531433))

(declare-fun m!5531435 () Bool)

(assert (=> b!4653674 m!5531435))

(declare-fun m!5531437 () Bool)

(assert (=> b!4653675 m!5531437))

(assert (=> b!4653178 d!1475532))

(declare-fun d!1475534 () Bool)

(declare-fun res!1956380 () Bool)

(declare-fun e!2903450 () Bool)

(assert (=> d!1475534 (=> res!1956380 e!2903450)))

(assert (=> d!1475534 (= res!1956380 ((_ is Nil!51874) (toList!5195 lt!1816243)))))

(assert (=> d!1475534 (= (forall!11010 (toList!5195 lt!1816243) lambda!198836) e!2903450)))

(declare-fun b!4653676 () Bool)

(declare-fun e!2903451 () Bool)

(assert (=> b!4653676 (= e!2903450 e!2903451)))

(declare-fun res!1956381 () Bool)

(assert (=> b!4653676 (=> (not res!1956381) (not e!2903451))))

(assert (=> b!4653676 (= res!1956381 (dynLambda!21580 lambda!198836 (h!58012 (toList!5195 lt!1816243))))))

(declare-fun b!4653677 () Bool)

(assert (=> b!4653677 (= e!2903451 (forall!11010 (t!359110 (toList!5195 lt!1816243)) lambda!198836))))

(assert (= (and d!1475534 (not res!1956380)) b!4653676))

(assert (= (and b!4653676 res!1956381) b!4653677))

(declare-fun b_lambda!173479 () Bool)

(assert (=> (not b_lambda!173479) (not b!4653676)))

(declare-fun m!5531439 () Bool)

(assert (=> b!4653676 m!5531439))

(declare-fun m!5531441 () Bool)

(assert (=> b!4653677 m!5531441))

(assert (=> b!4653178 d!1475534))

(declare-fun b!4653678 () Bool)

(declare-fun e!2903457 () Unit!118036)

(declare-fun lt!1817003 () Unit!118036)

(assert (=> b!4653678 (= e!2903457 lt!1817003)))

(declare-fun lt!1816998 () Unit!118036)

(assert (=> b!4653678 (= lt!1816998 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816578) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> b!4653678 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816578) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun lt!1817000 () Unit!118036)

(assert (=> b!4653678 (= lt!1817000 lt!1816998)))

(assert (=> b!4653678 (= lt!1817003 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816578) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun call!325199 () Bool)

(assert (=> b!4653678 call!325199))

(declare-fun b!4653679 () Bool)

(declare-fun e!2903455 () List!52001)

(assert (=> b!4653679 (= e!2903455 (getKeysList!743 (toList!5195 lt!1816578)))))

(declare-fun b!4653680 () Bool)

(declare-fun e!2903454 () Unit!118036)

(assert (=> b!4653680 (= e!2903457 e!2903454)))

(declare-fun c!796531 () Bool)

(assert (=> b!4653680 (= c!796531 call!325199)))

(declare-fun b!4653681 () Bool)

(declare-fun e!2903452 () Bool)

(assert (=> b!4653681 (= e!2903452 (contains!15021 (keys!18370 lt!1816578) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun b!4653682 () Bool)

(declare-fun e!2903453 () Bool)

(assert (=> b!4653682 (= e!2903453 e!2903452)))

(declare-fun res!1956383 () Bool)

(assert (=> b!4653682 (=> (not res!1956383) (not e!2903452))))

(assert (=> b!4653682 (= res!1956383 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816578) (_1!29781 (h!58012 oldBucket!40)))))))

(declare-fun bm!325194 () Bool)

(assert (=> bm!325194 (= call!325199 (contains!15021 e!2903455 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun c!796530 () Bool)

(declare-fun c!796532 () Bool)

(assert (=> bm!325194 (= c!796530 c!796532)))

(declare-fun b!4653683 () Bool)

(assert (=> b!4653683 (= e!2903455 (keys!18370 lt!1816578))))

(declare-fun b!4653684 () Bool)

(assert (=> b!4653684 false))

(declare-fun lt!1817004 () Unit!118036)

(declare-fun lt!1817002 () Unit!118036)

(assert (=> b!4653684 (= lt!1817004 lt!1817002)))

(assert (=> b!4653684 (containsKey!2711 (toList!5195 lt!1816578) (_1!29781 (h!58012 oldBucket!40)))))

(assert (=> b!4653684 (= lt!1817002 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816578) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun Unit!118224 () Unit!118036)

(assert (=> b!4653684 (= e!2903454 Unit!118224)))

(declare-fun d!1475536 () Bool)

(assert (=> d!1475536 e!2903453))

(declare-fun res!1956384 () Bool)

(assert (=> d!1475536 (=> res!1956384 e!2903453)))

(declare-fun e!2903456 () Bool)

(assert (=> d!1475536 (= res!1956384 e!2903456)))

(declare-fun res!1956382 () Bool)

(assert (=> d!1475536 (=> (not res!1956382) (not e!2903456))))

(declare-fun lt!1817005 () Bool)

(assert (=> d!1475536 (= res!1956382 (not lt!1817005))))

(declare-fun lt!1816999 () Bool)

(assert (=> d!1475536 (= lt!1817005 lt!1816999)))

(declare-fun lt!1817001 () Unit!118036)

(assert (=> d!1475536 (= lt!1817001 e!2903457)))

(assert (=> d!1475536 (= c!796532 lt!1816999)))

(assert (=> d!1475536 (= lt!1816999 (containsKey!2711 (toList!5195 lt!1816578) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475536 (= (contains!15019 lt!1816578 (_1!29781 (h!58012 oldBucket!40))) lt!1817005)))

(declare-fun b!4653685 () Bool)

(declare-fun Unit!118225 () Unit!118036)

(assert (=> b!4653685 (= e!2903454 Unit!118225)))

(declare-fun b!4653686 () Bool)

(assert (=> b!4653686 (= e!2903456 (not (contains!15021 (keys!18370 lt!1816578) (_1!29781 (h!58012 oldBucket!40)))))))

(assert (= (and d!1475536 c!796532) b!4653678))

(assert (= (and d!1475536 (not c!796532)) b!4653680))

(assert (= (and b!4653680 c!796531) b!4653684))

(assert (= (and b!4653680 (not c!796531)) b!4653685))

(assert (= (or b!4653678 b!4653680) bm!325194))

(assert (= (and bm!325194 c!796530) b!4653679))

(assert (= (and bm!325194 (not c!796530)) b!4653683))

(assert (= (and d!1475536 res!1956382) b!4653686))

(assert (= (and d!1475536 (not res!1956384)) b!4653682))

(assert (= (and b!4653682 res!1956383) b!4653681))

(declare-fun m!5531443 () Bool)

(assert (=> b!4653686 m!5531443))

(assert (=> b!4653686 m!5531443))

(declare-fun m!5531445 () Bool)

(assert (=> b!4653686 m!5531445))

(declare-fun m!5531447 () Bool)

(assert (=> b!4653678 m!5531447))

(declare-fun m!5531449 () Bool)

(assert (=> b!4653678 m!5531449))

(assert (=> b!4653678 m!5531449))

(declare-fun m!5531451 () Bool)

(assert (=> b!4653678 m!5531451))

(declare-fun m!5531453 () Bool)

(assert (=> b!4653678 m!5531453))

(declare-fun m!5531455 () Bool)

(assert (=> bm!325194 m!5531455))

(assert (=> b!4653683 m!5531443))

(declare-fun m!5531457 () Bool)

(assert (=> d!1475536 m!5531457))

(assert (=> b!4653684 m!5531457))

(declare-fun m!5531459 () Bool)

(assert (=> b!4653684 m!5531459))

(assert (=> b!4653682 m!5531449))

(assert (=> b!4653682 m!5531449))

(assert (=> b!4653682 m!5531451))

(assert (=> b!4653681 m!5531443))

(assert (=> b!4653681 m!5531443))

(assert (=> b!4653681 m!5531445))

(declare-fun m!5531461 () Bool)

(assert (=> b!4653679 m!5531461))

(assert (=> b!4653178 d!1475536))

(declare-fun d!1475538 () Bool)

(declare-fun res!1956385 () Bool)

(declare-fun e!2903458 () Bool)

(assert (=> d!1475538 (=> res!1956385 e!2903458)))

(assert (=> d!1475538 (= res!1956385 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475538 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198847) e!2903458)))

(declare-fun b!4653687 () Bool)

(declare-fun e!2903459 () Bool)

(assert (=> b!4653687 (= e!2903458 e!2903459)))

(declare-fun res!1956386 () Bool)

(assert (=> b!4653687 (=> (not res!1956386) (not e!2903459))))

(assert (=> b!4653687 (= res!1956386 (dynLambda!21580 lambda!198847 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653688 () Bool)

(assert (=> b!4653688 (= e!2903459 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) lambda!198847))))

(assert (= (and d!1475538 (not res!1956385)) b!4653687))

(assert (= (and b!4653687 res!1956386) b!4653688))

(declare-fun b_lambda!173481 () Bool)

(assert (=> (not b_lambda!173481) (not b!4653687)))

(declare-fun m!5531463 () Bool)

(assert (=> b!4653687 m!5531463))

(declare-fun m!5531465 () Bool)

(assert (=> b!4653688 m!5531465))

(assert (=> b!4653223 d!1475538))

(declare-fun d!1475540 () Bool)

(declare-fun res!1956387 () Bool)

(declare-fun e!2903460 () Bool)

(assert (=> d!1475540 (=> res!1956387 e!2903460)))

(assert (=> d!1475540 (= res!1956387 (and ((_ is Cons!51874) (t!359110 (apply!12245 lt!1816244 lt!1816240))) (= (_1!29781 (h!58012 (t!359110 (apply!12245 lt!1816244 lt!1816240)))) key!4968)))))

(assert (=> d!1475540 (= (containsKey!2708 (t!359110 (apply!12245 lt!1816244 lt!1816240)) key!4968) e!2903460)))

(declare-fun b!4653689 () Bool)

(declare-fun e!2903461 () Bool)

(assert (=> b!4653689 (= e!2903460 e!2903461)))

(declare-fun res!1956388 () Bool)

(assert (=> b!4653689 (=> (not res!1956388) (not e!2903461))))

(assert (=> b!4653689 (= res!1956388 ((_ is Cons!51874) (t!359110 (apply!12245 lt!1816244 lt!1816240))))))

(declare-fun b!4653690 () Bool)

(assert (=> b!4653690 (= e!2903461 (containsKey!2708 (t!359110 (t!359110 (apply!12245 lt!1816244 lt!1816240))) key!4968))))

(assert (= (and d!1475540 (not res!1956387)) b!4653689))

(assert (= (and b!4653689 res!1956388) b!4653690))

(declare-fun m!5531467 () Bool)

(assert (=> b!4653690 m!5531467))

(assert (=> b!4653170 d!1475540))

(declare-fun bs!1062451 () Bool)

(declare-fun d!1475542 () Bool)

(assert (= bs!1062451 (and d!1475542 d!1475272)))

(declare-fun lambda!198903 () Int)

(assert (=> bs!1062451 (= (= (ListMap!4534 Nil!51874) lt!1816572) (= lambda!198903 lambda!198837))))

(declare-fun bs!1062452 () Bool)

(assert (= bs!1062452 (and d!1475542 d!1475494)))

(assert (=> bs!1062452 (= (= (ListMap!4534 Nil!51874) lt!1816578) (= lambda!198903 lambda!198885))))

(declare-fun bs!1062453 () Bool)

(assert (= bs!1062453 (and d!1475542 b!4653178)))

(assert (=> bs!1062453 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198903 lambda!198835))))

(declare-fun bs!1062454 () Bool)

(assert (= bs!1062454 (and d!1475542 b!4653227)))

(assert (=> bs!1062454 (= lambda!198903 lambda!198850)))

(assert (=> bs!1062454 (= (= (ListMap!4534 Nil!51874) lt!1816657) (= lambda!198903 lambda!198851))))

(declare-fun bs!1062455 () Bool)

(assert (= bs!1062455 (and d!1475542 d!1475502)))

(assert (=> bs!1062455 (= (= (ListMap!4534 Nil!51874) lt!1816922) (= lambda!198903 lambda!198896))))

(declare-fun bs!1062456 () Bool)

(assert (= bs!1062456 (and d!1475542 d!1475404)))

(assert (=> bs!1062456 (= (= (ListMap!4534 Nil!51874) lt!1816745) (= lambda!198903 lambda!198862))))

(declare-fun bs!1062457 () Bool)

(assert (= bs!1062457 (and d!1475542 b!4653410)))

(assert (=> bs!1062457 (= (= (ListMap!4534 Nil!51874) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198903 lambda!198859))))

(declare-fun bs!1062458 () Bool)

(assert (= bs!1062458 (and d!1475542 b!4653112)))

(assert (=> bs!1062458 (= lambda!198903 lambda!198825)))

(declare-fun bs!1062459 () Bool)

(assert (= bs!1062459 (and d!1475542 b!4653625)))

(assert (=> bs!1062459 (= (= (ListMap!4534 Nil!51874) lt!1816928) (= lambda!198903 lambda!198895))))

(declare-fun bs!1062460 () Bool)

(assert (= bs!1062460 (and d!1475542 b!4653222)))

(assert (=> bs!1062460 (= lambda!198903 lambda!198846)))

(declare-fun bs!1062461 () Bool)

(assert (= bs!1062461 (and d!1475542 d!1475300)))

(assert (=> bs!1062461 (= (= (ListMap!4534 Nil!51874) lt!1816627) (= lambda!198903 lambda!198848))))

(declare-fun bs!1062462 () Bool)

(assert (= bs!1062462 (and d!1475542 b!4653105)))

(assert (=> bs!1062462 (= lambda!198903 lambda!198818)))

(declare-fun bs!1062463 () Bool)

(assert (= bs!1062463 (and d!1475542 b!4653177)))

(assert (=> bs!1062463 (= (= (ListMap!4534 Nil!51874) lt!1816243) (= lambda!198903 lambda!198834))))

(assert (=> bs!1062460 (= (= (ListMap!4534 Nil!51874) lt!1816633) (= lambda!198903 lambda!198847))))

(assert (=> bs!1062459 (= (= (ListMap!4534 Nil!51874) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198903 lambda!198893))))

(assert (=> bs!1062453 (= (= (ListMap!4534 Nil!51874) lt!1816578) (= lambda!198903 lambda!198836))))

(declare-fun bs!1062464 () Bool)

(assert (= bs!1062464 (and d!1475542 b!4653624)))

(assert (=> bs!1062464 (= (= (ListMap!4534 Nil!51874) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198903 lambda!198892))))

(declare-fun bs!1062465 () Bool)

(assert (= bs!1062465 (and d!1475542 b!4653411)))

(assert (=> bs!1062465 (= (= (ListMap!4534 Nil!51874) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198903 lambda!198860))))

(declare-fun bs!1062467 () Bool)

(assert (= bs!1062467 (and d!1475542 d!1475270)))

(assert (=> bs!1062467 (not (= lambda!198903 lambda!198833))))

(assert (=> bs!1062465 (= (= (ListMap!4534 Nil!51874) lt!1816751) (= lambda!198903 lambda!198861))))

(assert (=> bs!1062462 (= (= (ListMap!4534 Nil!51874) lt!1816505) (= lambda!198903 lambda!198820))))

(declare-fun bs!1062468 () Bool)

(assert (= bs!1062468 (and d!1475542 b!4653226)))

(assert (=> bs!1062468 (= lambda!198903 lambda!198849)))

(declare-fun bs!1062469 () Bool)

(assert (= bs!1062469 (and d!1475542 b!4653221)))

(assert (=> bs!1062469 (= lambda!198903 lambda!198845)))

(declare-fun bs!1062470 () Bool)

(assert (= bs!1062470 (and d!1475542 d!1475200)))

(assert (=> bs!1062470 (= (= (ListMap!4534 Nil!51874) lt!1816499) (= lambda!198903 lambda!198821))))

(declare-fun bs!1062471 () Bool)

(assert (= bs!1062471 (and d!1475542 b!4653104)))

(assert (=> bs!1062471 (= lambda!198903 lambda!198817)))

(declare-fun bs!1062472 () Bool)

(assert (= bs!1062472 (and d!1475542 d!1475248)))

(assert (=> bs!1062472 (= (= (ListMap!4534 Nil!51874) lt!1816520) (= lambda!198903 lambda!198827))))

(assert (=> bs!1062458 (= (= (ListMap!4534 Nil!51874) lt!1816526) (= lambda!198903 lambda!198826))))

(declare-fun bs!1062473 () Bool)

(assert (= bs!1062473 (and d!1475542 b!4653111)))

(assert (=> bs!1062473 (= lambda!198903 lambda!198824)))

(declare-fun bs!1062474 () Bool)

(assert (= bs!1062474 (and d!1475542 d!1475308)))

(assert (=> bs!1062474 (= (= (ListMap!4534 Nil!51874) lt!1816651) (= lambda!198903 lambda!198852))))

(declare-fun bs!1062475 () Bool)

(assert (= bs!1062475 (and d!1475542 d!1475292)))

(assert (=> bs!1062475 (not (= lambda!198903 lambda!198844))))

(assert (=> d!1475542 true))

(assert (=> d!1475542 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198903)))

(declare-fun lt!1817008 () Unit!118036)

(declare-fun choose!31975 (ListMap!4533) Unit!118036)

(assert (=> d!1475542 (= lt!1817008 (choose!31975 (ListMap!4534 Nil!51874)))))

(assert (=> d!1475542 (= (lemmaContainsAllItsOwnKeys!592 (ListMap!4534 Nil!51874)) lt!1817008)))

(declare-fun bs!1062476 () Bool)

(assert (= bs!1062476 d!1475542))

(declare-fun m!5531509 () Bool)

(assert (=> bs!1062476 m!5531509))

(declare-fun m!5531513 () Bool)

(assert (=> bs!1062476 m!5531513))

(assert (=> bm!325125 d!1475542))

(declare-fun d!1475552 () Bool)

(assert (=> d!1475552 (= (get!17262 (getValueByKey!1604 (toList!5196 lt!1816244) lt!1816240)) (v!46079 (getValueByKey!1604 (toList!5196 lt!1816244) lt!1816240)))))

(assert (=> d!1475268 d!1475552))

(declare-fun d!1475554 () Bool)

(declare-fun c!796537 () Bool)

(assert (=> d!1475554 (= c!796537 (and ((_ is Cons!51875) (toList!5196 lt!1816244)) (= (_1!29782 (h!58013 (toList!5196 lt!1816244))) lt!1816240)))))

(declare-fun e!2903476 () Option!11816)

(assert (=> d!1475554 (= (getValueByKey!1604 (toList!5196 lt!1816244) lt!1816240) e!2903476)))

(declare-fun b!4653709 () Bool)

(assert (=> b!4653709 (= e!2903476 (Some!11815 (_2!29782 (h!58013 (toList!5196 lt!1816244)))))))

(declare-fun b!4653712 () Bool)

(declare-fun e!2903477 () Option!11816)

(assert (=> b!4653712 (= e!2903477 None!11815)))

(declare-fun b!4653710 () Bool)

(assert (=> b!4653710 (= e!2903476 e!2903477)))

(declare-fun c!796538 () Bool)

(assert (=> b!4653710 (= c!796538 (and ((_ is Cons!51875) (toList!5196 lt!1816244)) (not (= (_1!29782 (h!58013 (toList!5196 lt!1816244))) lt!1816240))))))

(declare-fun b!4653711 () Bool)

(assert (=> b!4653711 (= e!2903477 (getValueByKey!1604 (t!359111 (toList!5196 lt!1816244)) lt!1816240))))

(assert (= (and d!1475554 c!796537) b!4653709))

(assert (= (and d!1475554 (not c!796537)) b!4653710))

(assert (= (and b!4653710 c!796538) b!4653711))

(assert (= (and b!4653710 (not c!796538)) b!4653712))

(declare-fun m!5531517 () Bool)

(assert (=> b!4653711 m!5531517))

(assert (=> d!1475268 d!1475554))

(declare-fun d!1475558 () Bool)

(declare-fun res!1956401 () Bool)

(declare-fun e!2903480 () Bool)

(assert (=> d!1475558 (=> res!1956401 e!2903480)))

(assert (=> d!1475558 (= res!1956401 ((_ is Nil!51874) newBucket!224))))

(assert (=> d!1475558 (= (forall!11010 newBucket!224 lambda!198821) e!2903480)))

(declare-fun b!4653715 () Bool)

(declare-fun e!2903481 () Bool)

(assert (=> b!4653715 (= e!2903480 e!2903481)))

(declare-fun res!1956402 () Bool)

(assert (=> b!4653715 (=> (not res!1956402) (not e!2903481))))

(assert (=> b!4653715 (= res!1956402 (dynLambda!21580 lambda!198821 (h!58012 newBucket!224)))))

(declare-fun b!4653716 () Bool)

(assert (=> b!4653716 (= e!2903481 (forall!11010 (t!359110 newBucket!224) lambda!198821))))

(assert (= (and d!1475558 (not res!1956401)) b!4653715))

(assert (= (and b!4653715 res!1956402) b!4653716))

(declare-fun b_lambda!173489 () Bool)

(assert (=> (not b_lambda!173489) (not b!4653715)))

(declare-fun m!5531523 () Bool)

(assert (=> b!4653715 m!5531523))

(declare-fun m!5531525 () Bool)

(assert (=> b!4653716 m!5531525))

(assert (=> d!1475200 d!1475558))

(assert (=> d!1475200 d!1475264))

(declare-fun d!1475562 () Bool)

(declare-fun res!1956405 () Bool)

(declare-fun e!2903484 () Bool)

(assert (=> d!1475562 (=> res!1956405 e!2903484)))

(assert (=> d!1475562 (= res!1956405 ((_ is Nil!51874) (Cons!51874 lt!1816246 lt!1816247)))))

(assert (=> d!1475562 (= (forall!11010 (Cons!51874 lt!1816246 lt!1816247) lambda!198848) e!2903484)))

(declare-fun b!4653719 () Bool)

(declare-fun e!2903485 () Bool)

(assert (=> b!4653719 (= e!2903484 e!2903485)))

(declare-fun res!1956406 () Bool)

(assert (=> b!4653719 (=> (not res!1956406) (not e!2903485))))

(assert (=> b!4653719 (= res!1956406 (dynLambda!21580 lambda!198848 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(declare-fun b!4653720 () Bool)

(assert (=> b!4653720 (= e!2903485 (forall!11010 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) lambda!198848))))

(assert (= (and d!1475562 (not res!1956405)) b!4653719))

(assert (= (and b!4653719 res!1956406) b!4653720))

(declare-fun b_lambda!173493 () Bool)

(assert (=> (not b_lambda!173493) (not b!4653719)))

(declare-fun m!5531527 () Bool)

(assert (=> b!4653719 m!5531527))

(declare-fun m!5531529 () Bool)

(assert (=> b!4653720 m!5531529))

(assert (=> d!1475300 d!1475562))

(declare-fun d!1475564 () Bool)

(declare-fun res!1956407 () Bool)

(declare-fun e!2903486 () Bool)

(assert (=> d!1475564 (=> res!1956407 e!2903486)))

(assert (=> d!1475564 (= res!1956407 (not ((_ is Cons!51874) (Cons!51874 lt!1816246 lt!1816247))))))

(assert (=> d!1475564 (= (noDuplicateKeys!1632 (Cons!51874 lt!1816246 lt!1816247)) e!2903486)))

(declare-fun b!4653721 () Bool)

(declare-fun e!2903487 () Bool)

(assert (=> b!4653721 (= e!2903486 e!2903487)))

(declare-fun res!1956408 () Bool)

(assert (=> b!4653721 (=> (not res!1956408) (not e!2903487))))

(assert (=> b!4653721 (= res!1956408 (not (containsKey!2708 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))))

(declare-fun b!4653722 () Bool)

(assert (=> b!4653722 (= e!2903487 (noDuplicateKeys!1632 (t!359110 (Cons!51874 lt!1816246 lt!1816247))))))

(assert (= (and d!1475564 (not res!1956407)) b!4653721))

(assert (= (and b!4653721 res!1956408) b!4653722))

(declare-fun m!5531531 () Bool)

(assert (=> b!4653721 m!5531531))

(declare-fun m!5531533 () Bool)

(assert (=> b!4653722 m!5531533))

(assert (=> d!1475300 d!1475564))

(declare-fun bs!1062477 () Bool)

(declare-fun d!1475566 () Bool)

(assert (= bs!1062477 (and d!1475566 d!1475272)))

(declare-fun lambda!198904 () Int)

(assert (=> bs!1062477 (= (= lt!1816243 lt!1816572) (= lambda!198904 lambda!198837))))

(declare-fun bs!1062478 () Bool)

(assert (= bs!1062478 (and d!1475566 d!1475494)))

(assert (=> bs!1062478 (= (= lt!1816243 lt!1816578) (= lambda!198904 lambda!198885))))

(declare-fun bs!1062479 () Bool)

(assert (= bs!1062479 (and d!1475566 b!4653178)))

(assert (=> bs!1062479 (= lambda!198904 lambda!198835)))

(declare-fun bs!1062480 () Bool)

(assert (= bs!1062480 (and d!1475566 b!4653227)))

(assert (=> bs!1062480 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198904 lambda!198850))))

(assert (=> bs!1062480 (= (= lt!1816243 lt!1816657) (= lambda!198904 lambda!198851))))

(declare-fun bs!1062481 () Bool)

(assert (= bs!1062481 (and d!1475566 d!1475502)))

(assert (=> bs!1062481 (= (= lt!1816243 lt!1816922) (= lambda!198904 lambda!198896))))

(declare-fun bs!1062482 () Bool)

(assert (= bs!1062482 (and d!1475566 d!1475404)))

(assert (=> bs!1062482 (= (= lt!1816243 lt!1816745) (= lambda!198904 lambda!198862))))

(declare-fun bs!1062483 () Bool)

(assert (= bs!1062483 (and d!1475566 b!4653410)))

(assert (=> bs!1062483 (= (= lt!1816243 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198904 lambda!198859))))

(declare-fun bs!1062484 () Bool)

(assert (= bs!1062484 (and d!1475566 d!1475542)))

(assert (=> bs!1062484 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198904 lambda!198903))))

(declare-fun bs!1062485 () Bool)

(assert (= bs!1062485 (and d!1475566 b!4653112)))

(assert (=> bs!1062485 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198904 lambda!198825))))

(declare-fun bs!1062486 () Bool)

(assert (= bs!1062486 (and d!1475566 b!4653625)))

(assert (=> bs!1062486 (= (= lt!1816243 lt!1816928) (= lambda!198904 lambda!198895))))

(declare-fun bs!1062487 () Bool)

(assert (= bs!1062487 (and d!1475566 b!4653222)))

(assert (=> bs!1062487 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198904 lambda!198846))))

(declare-fun bs!1062488 () Bool)

(assert (= bs!1062488 (and d!1475566 d!1475300)))

(assert (=> bs!1062488 (= (= lt!1816243 lt!1816627) (= lambda!198904 lambda!198848))))

(declare-fun bs!1062489 () Bool)

(assert (= bs!1062489 (and d!1475566 b!4653105)))

(assert (=> bs!1062489 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198904 lambda!198818))))

(declare-fun bs!1062490 () Bool)

(assert (= bs!1062490 (and d!1475566 b!4653177)))

(assert (=> bs!1062490 (= lambda!198904 lambda!198834)))

(assert (=> bs!1062487 (= (= lt!1816243 lt!1816633) (= lambda!198904 lambda!198847))))

(assert (=> bs!1062486 (= (= lt!1816243 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198904 lambda!198893))))

(assert (=> bs!1062479 (= (= lt!1816243 lt!1816578) (= lambda!198904 lambda!198836))))

(declare-fun bs!1062491 () Bool)

(assert (= bs!1062491 (and d!1475566 b!4653624)))

(assert (=> bs!1062491 (= (= lt!1816243 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198904 lambda!198892))))

(declare-fun bs!1062492 () Bool)

(assert (= bs!1062492 (and d!1475566 b!4653411)))

(assert (=> bs!1062492 (= (= lt!1816243 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198904 lambda!198860))))

(declare-fun bs!1062493 () Bool)

(assert (= bs!1062493 (and d!1475566 d!1475270)))

(assert (=> bs!1062493 (not (= lambda!198904 lambda!198833))))

(assert (=> bs!1062492 (= (= lt!1816243 lt!1816751) (= lambda!198904 lambda!198861))))

(assert (=> bs!1062489 (= (= lt!1816243 lt!1816505) (= lambda!198904 lambda!198820))))

(declare-fun bs!1062494 () Bool)

(assert (= bs!1062494 (and d!1475566 b!4653226)))

(assert (=> bs!1062494 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198904 lambda!198849))))

(declare-fun bs!1062495 () Bool)

(assert (= bs!1062495 (and d!1475566 b!4653221)))

(assert (=> bs!1062495 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198904 lambda!198845))))

(declare-fun bs!1062496 () Bool)

(assert (= bs!1062496 (and d!1475566 d!1475200)))

(assert (=> bs!1062496 (= (= lt!1816243 lt!1816499) (= lambda!198904 lambda!198821))))

(declare-fun bs!1062497 () Bool)

(assert (= bs!1062497 (and d!1475566 b!4653104)))

(assert (=> bs!1062497 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198904 lambda!198817))))

(declare-fun bs!1062498 () Bool)

(assert (= bs!1062498 (and d!1475566 d!1475248)))

(assert (=> bs!1062498 (= (= lt!1816243 lt!1816520) (= lambda!198904 lambda!198827))))

(assert (=> bs!1062485 (= (= lt!1816243 lt!1816526) (= lambda!198904 lambda!198826))))

(declare-fun bs!1062499 () Bool)

(assert (= bs!1062499 (and d!1475566 b!4653111)))

(assert (=> bs!1062499 (= (= lt!1816243 (ListMap!4534 Nil!51874)) (= lambda!198904 lambda!198824))))

(declare-fun bs!1062500 () Bool)

(assert (= bs!1062500 (and d!1475566 d!1475308)))

(assert (=> bs!1062500 (= (= lt!1816243 lt!1816651) (= lambda!198904 lambda!198852))))

(declare-fun bs!1062501 () Bool)

(assert (= bs!1062501 (and d!1475566 d!1475292)))

(assert (=> bs!1062501 (not (= lambda!198904 lambda!198844))))

(assert (=> d!1475566 true))

(assert (=> d!1475566 (forall!11010 (toList!5195 lt!1816243) lambda!198904)))

(declare-fun lt!1817009 () Unit!118036)

(assert (=> d!1475566 (= lt!1817009 (choose!31975 lt!1816243))))

(assert (=> d!1475566 (= (lemmaContainsAllItsOwnKeys!592 lt!1816243) lt!1817009)))

(declare-fun bs!1062503 () Bool)

(assert (= bs!1062503 d!1475566))

(declare-fun m!5531547 () Bool)

(assert (=> bs!1062503 m!5531547))

(declare-fun m!5531549 () Bool)

(assert (=> bs!1062503 m!5531549))

(assert (=> bm!325134 d!1475566))

(declare-fun d!1475574 () Bool)

(declare-fun res!1956411 () Bool)

(declare-fun e!2903490 () Bool)

(assert (=> d!1475574 (=> res!1956411 e!2903490)))

(assert (=> d!1475574 (= res!1956411 ((_ is Nil!51875) (toList!5196 lt!1816244)))))

(assert (=> d!1475574 (= (forall!11008 (toList!5196 lt!1816244) lambda!198841) e!2903490)))

(declare-fun b!4653725 () Bool)

(declare-fun e!2903491 () Bool)

(assert (=> b!4653725 (= e!2903490 e!2903491)))

(declare-fun res!1956412 () Bool)

(assert (=> b!4653725 (=> (not res!1956412) (not e!2903491))))

(assert (=> b!4653725 (= res!1956412 (dynLambda!21578 lambda!198841 (h!58013 (toList!5196 lt!1816244))))))

(declare-fun b!4653726 () Bool)

(assert (=> b!4653726 (= e!2903491 (forall!11008 (t!359111 (toList!5196 lt!1816244)) lambda!198841))))

(assert (= (and d!1475574 (not res!1956411)) b!4653725))

(assert (= (and b!4653725 res!1956412) b!4653726))

(declare-fun b_lambda!173497 () Bool)

(assert (=> (not b_lambda!173497) (not b!4653725)))

(declare-fun m!5531551 () Bool)

(assert (=> b!4653725 m!5531551))

(declare-fun m!5531553 () Bool)

(assert (=> b!4653726 m!5531553))

(assert (=> d!1475284 d!1475574))

(declare-fun d!1475576 () Bool)

(declare-fun res!1956413 () Bool)

(declare-fun e!2903492 () Bool)

(assert (=> d!1475576 (=> res!1956413 e!2903492)))

(assert (=> d!1475576 (= res!1956413 ((_ is Nil!51874) oldBucket!40))))

(assert (=> d!1475576 (= (forall!11010 oldBucket!40 lambda!198837) e!2903492)))

(declare-fun b!4653727 () Bool)

(declare-fun e!2903493 () Bool)

(assert (=> b!4653727 (= e!2903492 e!2903493)))

(declare-fun res!1956414 () Bool)

(assert (=> b!4653727 (=> (not res!1956414) (not e!2903493))))

(assert (=> b!4653727 (= res!1956414 (dynLambda!21580 lambda!198837 (h!58012 oldBucket!40)))))

(declare-fun b!4653728 () Bool)

(assert (=> b!4653728 (= e!2903493 (forall!11010 (t!359110 oldBucket!40) lambda!198837))))

(assert (= (and d!1475576 (not res!1956413)) b!4653727))

(assert (= (and b!4653727 res!1956414) b!4653728))

(declare-fun b_lambda!173499 () Bool)

(assert (=> (not b_lambda!173499) (not b!4653727)))

(declare-fun m!5531555 () Bool)

(assert (=> b!4653727 m!5531555))

(declare-fun m!5531557 () Bool)

(assert (=> b!4653728 m!5531557))

(assert (=> d!1475272 d!1475576))

(assert (=> d!1475272 d!1475256))

(declare-fun d!1475578 () Bool)

(assert (=> d!1475578 (dynLambda!21580 lambda!198820 (h!58012 newBucket!224))))

(declare-fun lt!1817013 () Unit!118036)

(assert (=> d!1475578 (= lt!1817013 (choose!31973 (toList!5195 lt!1816508) lambda!198820 (h!58012 newBucket!224)))))

(declare-fun e!2903494 () Bool)

(assert (=> d!1475578 e!2903494))

(declare-fun res!1956415 () Bool)

(assert (=> d!1475578 (=> (not res!1956415) (not e!2903494))))

(assert (=> d!1475578 (= res!1956415 (forall!11010 (toList!5195 lt!1816508) lambda!198820))))

(assert (=> d!1475578 (= (forallContained!3216 (toList!5195 lt!1816508) lambda!198820 (h!58012 newBucket!224)) lt!1817013)))

(declare-fun b!4653729 () Bool)

(assert (=> b!4653729 (= e!2903494 (contains!15023 (toList!5195 lt!1816508) (h!58012 newBucket!224)))))

(assert (= (and d!1475578 res!1956415) b!4653729))

(declare-fun b_lambda!173501 () Bool)

(assert (=> (not b_lambda!173501) (not d!1475578)))

(declare-fun m!5531559 () Bool)

(assert (=> d!1475578 m!5531559))

(declare-fun m!5531561 () Bool)

(assert (=> d!1475578 m!5531561))

(assert (=> d!1475578 m!5530277))

(declare-fun m!5531563 () Bool)

(assert (=> b!4653729 m!5531563))

(assert (=> b!4653105 d!1475578))

(declare-fun d!1475580 () Bool)

(declare-fun res!1956416 () Bool)

(declare-fun e!2903495 () Bool)

(assert (=> d!1475580 (=> res!1956416 e!2903495)))

(assert (=> d!1475580 (= res!1956416 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475580 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198820) e!2903495)))

(declare-fun b!4653730 () Bool)

(declare-fun e!2903496 () Bool)

(assert (=> b!4653730 (= e!2903495 e!2903496)))

(declare-fun res!1956417 () Bool)

(assert (=> b!4653730 (=> (not res!1956417) (not e!2903496))))

(assert (=> b!4653730 (= res!1956417 (dynLambda!21580 lambda!198820 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653731 () Bool)

(assert (=> b!4653731 (= e!2903496 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) lambda!198820))))

(assert (= (and d!1475580 (not res!1956416)) b!4653730))

(assert (= (and b!4653730 res!1956417) b!4653731))

(declare-fun b_lambda!173503 () Bool)

(assert (=> (not b_lambda!173503) (not b!4653730)))

(declare-fun m!5531565 () Bool)

(assert (=> b!4653730 m!5531565))

(declare-fun m!5531567 () Bool)

(assert (=> b!4653731 m!5531567))

(assert (=> b!4653105 d!1475580))

(declare-fun b!4653732 () Bool)

(declare-fun e!2903502 () Unit!118036)

(declare-fun lt!1817019 () Unit!118036)

(assert (=> b!4653732 (= e!2903502 lt!1817019)))

(declare-fun lt!1817014 () Unit!118036)

(assert (=> b!4653732 (= lt!1817014 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816508) (_1!29781 (h!58012 newBucket!224))))))

(assert (=> b!4653732 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816508) (_1!29781 (h!58012 newBucket!224))))))

(declare-fun lt!1817016 () Unit!118036)

(assert (=> b!4653732 (= lt!1817016 lt!1817014)))

(assert (=> b!4653732 (= lt!1817019 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816508) (_1!29781 (h!58012 newBucket!224))))))

(declare-fun call!325200 () Bool)

(assert (=> b!4653732 call!325200))

(declare-fun b!4653733 () Bool)

(declare-fun e!2903500 () List!52001)

(assert (=> b!4653733 (= e!2903500 (getKeysList!743 (toList!5195 lt!1816508)))))

(declare-fun b!4653734 () Bool)

(declare-fun e!2903499 () Unit!118036)

(assert (=> b!4653734 (= e!2903502 e!2903499)))

(declare-fun c!796540 () Bool)

(assert (=> b!4653734 (= c!796540 call!325200)))

(declare-fun b!4653735 () Bool)

(declare-fun e!2903497 () Bool)

(assert (=> b!4653735 (= e!2903497 (contains!15021 (keys!18370 lt!1816508) (_1!29781 (h!58012 newBucket!224))))))

(declare-fun b!4653736 () Bool)

(declare-fun e!2903498 () Bool)

(assert (=> b!4653736 (= e!2903498 e!2903497)))

(declare-fun res!1956419 () Bool)

(assert (=> b!4653736 (=> (not res!1956419) (not e!2903497))))

(assert (=> b!4653736 (= res!1956419 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816508) (_1!29781 (h!58012 newBucket!224)))))))

(declare-fun bm!325195 () Bool)

(assert (=> bm!325195 (= call!325200 (contains!15021 e!2903500 (_1!29781 (h!58012 newBucket!224))))))

(declare-fun c!796539 () Bool)

(declare-fun c!796541 () Bool)

(assert (=> bm!325195 (= c!796539 c!796541)))

(declare-fun b!4653737 () Bool)

(assert (=> b!4653737 (= e!2903500 (keys!18370 lt!1816508))))

(declare-fun b!4653738 () Bool)

(assert (=> b!4653738 false))

(declare-fun lt!1817020 () Unit!118036)

(declare-fun lt!1817018 () Unit!118036)

(assert (=> b!4653738 (= lt!1817020 lt!1817018)))

(assert (=> b!4653738 (containsKey!2711 (toList!5195 lt!1816508) (_1!29781 (h!58012 newBucket!224)))))

(assert (=> b!4653738 (= lt!1817018 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816508) (_1!29781 (h!58012 newBucket!224))))))

(declare-fun Unit!118237 () Unit!118036)

(assert (=> b!4653738 (= e!2903499 Unit!118237)))

(declare-fun d!1475582 () Bool)

(assert (=> d!1475582 e!2903498))

(declare-fun res!1956420 () Bool)

(assert (=> d!1475582 (=> res!1956420 e!2903498)))

(declare-fun e!2903501 () Bool)

(assert (=> d!1475582 (= res!1956420 e!2903501)))

(declare-fun res!1956418 () Bool)

(assert (=> d!1475582 (=> (not res!1956418) (not e!2903501))))

(declare-fun lt!1817021 () Bool)

(assert (=> d!1475582 (= res!1956418 (not lt!1817021))))

(declare-fun lt!1817015 () Bool)

(assert (=> d!1475582 (= lt!1817021 lt!1817015)))

(declare-fun lt!1817017 () Unit!118036)

(assert (=> d!1475582 (= lt!1817017 e!2903502)))

(assert (=> d!1475582 (= c!796541 lt!1817015)))

(assert (=> d!1475582 (= lt!1817015 (containsKey!2711 (toList!5195 lt!1816508) (_1!29781 (h!58012 newBucket!224))))))

(assert (=> d!1475582 (= (contains!15019 lt!1816508 (_1!29781 (h!58012 newBucket!224))) lt!1817021)))

(declare-fun b!4653739 () Bool)

(declare-fun Unit!118238 () Unit!118036)

(assert (=> b!4653739 (= e!2903499 Unit!118238)))

(declare-fun b!4653740 () Bool)

(assert (=> b!4653740 (= e!2903501 (not (contains!15021 (keys!18370 lt!1816508) (_1!29781 (h!58012 newBucket!224)))))))

(assert (= (and d!1475582 c!796541) b!4653732))

(assert (= (and d!1475582 (not c!796541)) b!4653734))

(assert (= (and b!4653734 c!796540) b!4653738))

(assert (= (and b!4653734 (not c!796540)) b!4653739))

(assert (= (or b!4653732 b!4653734) bm!325195))

(assert (= (and bm!325195 c!796539) b!4653733))

(assert (= (and bm!325195 (not c!796539)) b!4653737))

(assert (= (and d!1475582 res!1956418) b!4653740))

(assert (= (and d!1475582 (not res!1956420)) b!4653736))

(assert (= (and b!4653736 res!1956419) b!4653735))

(declare-fun m!5531569 () Bool)

(assert (=> b!4653740 m!5531569))

(assert (=> b!4653740 m!5531569))

(declare-fun m!5531571 () Bool)

(assert (=> b!4653740 m!5531571))

(declare-fun m!5531573 () Bool)

(assert (=> b!4653732 m!5531573))

(declare-fun m!5531577 () Bool)

(assert (=> b!4653732 m!5531577))

(assert (=> b!4653732 m!5531577))

(declare-fun m!5531581 () Bool)

(assert (=> b!4653732 m!5531581))

(declare-fun m!5531583 () Bool)

(assert (=> b!4653732 m!5531583))

(declare-fun m!5531585 () Bool)

(assert (=> bm!325195 m!5531585))

(assert (=> b!4653737 m!5531569))

(declare-fun m!5531587 () Bool)

(assert (=> d!1475582 m!5531587))

(assert (=> b!4653738 m!5531587))

(declare-fun m!5531589 () Bool)

(assert (=> b!4653738 m!5531589))

(assert (=> b!4653736 m!5531577))

(assert (=> b!4653736 m!5531577))

(assert (=> b!4653736 m!5531581))

(assert (=> b!4653735 m!5531569))

(assert (=> b!4653735 m!5531569))

(assert (=> b!4653735 m!5531571))

(declare-fun m!5531591 () Bool)

(assert (=> b!4653733 m!5531591))

(assert (=> b!4653105 d!1475582))

(declare-fun d!1475586 () Bool)

(declare-fun res!1956423 () Bool)

(declare-fun e!2903505 () Bool)

(assert (=> d!1475586 (=> res!1956423 e!2903505)))

(assert (=> d!1475586 (= res!1956423 ((_ is Nil!51874) newBucket!224))))

(assert (=> d!1475586 (= (forall!11010 newBucket!224 lambda!198820) e!2903505)))

(declare-fun b!4653743 () Bool)

(declare-fun e!2903506 () Bool)

(assert (=> b!4653743 (= e!2903505 e!2903506)))

(declare-fun res!1956424 () Bool)

(assert (=> b!4653743 (=> (not res!1956424) (not e!2903506))))

(assert (=> b!4653743 (= res!1956424 (dynLambda!21580 lambda!198820 (h!58012 newBucket!224)))))

(declare-fun b!4653744 () Bool)

(assert (=> b!4653744 (= e!2903506 (forall!11010 (t!359110 newBucket!224) lambda!198820))))

(assert (= (and d!1475586 (not res!1956423)) b!4653743))

(assert (= (and b!4653743 res!1956424) b!4653744))

(declare-fun b_lambda!173507 () Bool)

(assert (=> (not b_lambda!173507) (not b!4653743)))

(assert (=> b!4653743 m!5531559))

(assert (=> b!4653744 m!5530285))

(assert (=> b!4653105 d!1475586))

(declare-fun d!1475588 () Bool)

(declare-fun res!1956425 () Bool)

(declare-fun e!2903507 () Bool)

(assert (=> d!1475588 (=> res!1956425 e!2903507)))

(assert (=> d!1475588 (= res!1956425 ((_ is Nil!51874) (toList!5195 lt!1816508)))))

(assert (=> d!1475588 (= (forall!11010 (toList!5195 lt!1816508) lambda!198820) e!2903507)))

(declare-fun b!4653745 () Bool)

(declare-fun e!2903508 () Bool)

(assert (=> b!4653745 (= e!2903507 e!2903508)))

(declare-fun res!1956426 () Bool)

(assert (=> b!4653745 (=> (not res!1956426) (not e!2903508))))

(assert (=> b!4653745 (= res!1956426 (dynLambda!21580 lambda!198820 (h!58012 (toList!5195 lt!1816508))))))

(declare-fun b!4653746 () Bool)

(assert (=> b!4653746 (= e!2903508 (forall!11010 (t!359110 (toList!5195 lt!1816508)) lambda!198820))))

(assert (= (and d!1475588 (not res!1956425)) b!4653745))

(assert (= (and b!4653745 res!1956426) b!4653746))

(declare-fun b_lambda!173509 () Bool)

(assert (=> (not b_lambda!173509) (not b!4653745)))

(declare-fun m!5531593 () Bool)

(assert (=> b!4653745 m!5531593))

(declare-fun m!5531595 () Bool)

(assert (=> b!4653746 m!5531595))

(assert (=> b!4653105 d!1475588))

(declare-fun bs!1062505 () Bool)

(declare-fun d!1475590 () Bool)

(assert (= bs!1062505 (and d!1475590 d!1475272)))

(declare-fun lambda!198905 () Int)

(assert (=> bs!1062505 (= (= lt!1816505 lt!1816572) (= lambda!198905 lambda!198837))))

(declare-fun bs!1062506 () Bool)

(assert (= bs!1062506 (and d!1475590 d!1475494)))

(assert (=> bs!1062506 (= (= lt!1816505 lt!1816578) (= lambda!198905 lambda!198885))))

(declare-fun bs!1062507 () Bool)

(assert (= bs!1062507 (and d!1475590 b!4653178)))

(assert (=> bs!1062507 (= (= lt!1816505 lt!1816243) (= lambda!198905 lambda!198835))))

(declare-fun bs!1062508 () Bool)

(assert (= bs!1062508 (and d!1475590 b!4653227)))

(assert (=> bs!1062508 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198905 lambda!198850))))

(assert (=> bs!1062508 (= (= lt!1816505 lt!1816657) (= lambda!198905 lambda!198851))))

(declare-fun bs!1062509 () Bool)

(assert (= bs!1062509 (and d!1475590 d!1475502)))

(assert (=> bs!1062509 (= (= lt!1816505 lt!1816922) (= lambda!198905 lambda!198896))))

(declare-fun bs!1062510 () Bool)

(assert (= bs!1062510 (and d!1475590 d!1475404)))

(assert (=> bs!1062510 (= (= lt!1816505 lt!1816745) (= lambda!198905 lambda!198862))))

(declare-fun bs!1062511 () Bool)

(assert (= bs!1062511 (and d!1475590 b!4653410)))

(assert (=> bs!1062511 (= (= lt!1816505 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198905 lambda!198859))))

(declare-fun bs!1062512 () Bool)

(assert (= bs!1062512 (and d!1475590 d!1475542)))

(assert (=> bs!1062512 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198905 lambda!198903))))

(declare-fun bs!1062513 () Bool)

(assert (= bs!1062513 (and d!1475590 b!4653112)))

(assert (=> bs!1062513 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198905 lambda!198825))))

(declare-fun bs!1062514 () Bool)

(assert (= bs!1062514 (and d!1475590 b!4653625)))

(assert (=> bs!1062514 (= (= lt!1816505 lt!1816928) (= lambda!198905 lambda!198895))))

(declare-fun bs!1062515 () Bool)

(assert (= bs!1062515 (and d!1475590 b!4653222)))

(assert (=> bs!1062515 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198905 lambda!198846))))

(declare-fun bs!1062516 () Bool)

(assert (= bs!1062516 (and d!1475590 d!1475300)))

(assert (=> bs!1062516 (= (= lt!1816505 lt!1816627) (= lambda!198905 lambda!198848))))

(declare-fun bs!1062517 () Bool)

(assert (= bs!1062517 (and d!1475590 b!4653105)))

(assert (=> bs!1062517 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198905 lambda!198818))))

(declare-fun bs!1062518 () Bool)

(assert (= bs!1062518 (and d!1475590 b!4653177)))

(assert (=> bs!1062518 (= (= lt!1816505 lt!1816243) (= lambda!198905 lambda!198834))))

(assert (=> bs!1062515 (= (= lt!1816505 lt!1816633) (= lambda!198905 lambda!198847))))

(assert (=> bs!1062514 (= (= lt!1816505 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198905 lambda!198893))))

(declare-fun bs!1062519 () Bool)

(assert (= bs!1062519 (and d!1475590 d!1475566)))

(assert (=> bs!1062519 (= (= lt!1816505 lt!1816243) (= lambda!198905 lambda!198904))))

(assert (=> bs!1062507 (= (= lt!1816505 lt!1816578) (= lambda!198905 lambda!198836))))

(declare-fun bs!1062520 () Bool)

(assert (= bs!1062520 (and d!1475590 b!4653624)))

(assert (=> bs!1062520 (= (= lt!1816505 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198905 lambda!198892))))

(declare-fun bs!1062521 () Bool)

(assert (= bs!1062521 (and d!1475590 b!4653411)))

(assert (=> bs!1062521 (= (= lt!1816505 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198905 lambda!198860))))

(declare-fun bs!1062522 () Bool)

(assert (= bs!1062522 (and d!1475590 d!1475270)))

(assert (=> bs!1062522 (not (= lambda!198905 lambda!198833))))

(assert (=> bs!1062521 (= (= lt!1816505 lt!1816751) (= lambda!198905 lambda!198861))))

(assert (=> bs!1062517 (= lambda!198905 lambda!198820)))

(declare-fun bs!1062524 () Bool)

(assert (= bs!1062524 (and d!1475590 b!4653226)))

(assert (=> bs!1062524 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198905 lambda!198849))))

(declare-fun bs!1062526 () Bool)

(assert (= bs!1062526 (and d!1475590 b!4653221)))

(assert (=> bs!1062526 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198905 lambda!198845))))

(declare-fun bs!1062531 () Bool)

(assert (= bs!1062531 (and d!1475590 d!1475200)))

(assert (=> bs!1062531 (= (= lt!1816505 lt!1816499) (= lambda!198905 lambda!198821))))

(declare-fun bs!1062533 () Bool)

(assert (= bs!1062533 (and d!1475590 b!4653104)))

(assert (=> bs!1062533 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198905 lambda!198817))))

(declare-fun bs!1062535 () Bool)

(assert (= bs!1062535 (and d!1475590 d!1475248)))

(assert (=> bs!1062535 (= (= lt!1816505 lt!1816520) (= lambda!198905 lambda!198827))))

(assert (=> bs!1062513 (= (= lt!1816505 lt!1816526) (= lambda!198905 lambda!198826))))

(declare-fun bs!1062538 () Bool)

(assert (= bs!1062538 (and d!1475590 b!4653111)))

(assert (=> bs!1062538 (= (= lt!1816505 (ListMap!4534 Nil!51874)) (= lambda!198905 lambda!198824))))

(declare-fun bs!1062540 () Bool)

(assert (= bs!1062540 (and d!1475590 d!1475308)))

(assert (=> bs!1062540 (= (= lt!1816505 lt!1816651) (= lambda!198905 lambda!198852))))

(declare-fun bs!1062542 () Bool)

(assert (= bs!1062542 (and d!1475590 d!1475292)))

(assert (=> bs!1062542 (not (= lambda!198905 lambda!198844))))

(assert (=> d!1475590 true))

(assert (=> d!1475590 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198905)))

(declare-fun lt!1817025 () Unit!118036)

(assert (=> d!1475590 (= lt!1817025 (choose!31974 (ListMap!4534 Nil!51874) lt!1816505 (_1!29781 (h!58012 newBucket!224)) (_2!29781 (h!58012 newBucket!224))))))

(assert (=> d!1475590 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (tuple2!52975 (_1!29781 (h!58012 newBucket!224)) (_2!29781 (h!58012 newBucket!224))))) lambda!198905)))

(assert (=> d!1475590 (= (addForallContainsKeyThenBeforeAdding!591 (ListMap!4534 Nil!51874) lt!1816505 (_1!29781 (h!58012 newBucket!224)) (_2!29781 (h!58012 newBucket!224))) lt!1817025)))

(declare-fun bs!1062550 () Bool)

(assert (= bs!1062550 d!1475590))

(declare-fun m!5531605 () Bool)

(assert (=> bs!1062550 m!5531605))

(declare-fun m!5531607 () Bool)

(assert (=> bs!1062550 m!5531607))

(declare-fun m!5531609 () Bool)

(assert (=> bs!1062550 m!5531609))

(declare-fun m!5531611 () Bool)

(assert (=> bs!1062550 m!5531611))

(assert (=> b!4653105 d!1475590))

(declare-fun bs!1062557 () Bool)

(declare-fun b!4653751 () Bool)

(assert (= bs!1062557 (and b!4653751 d!1475272)))

(declare-fun lambda!198907 () Int)

(assert (=> bs!1062557 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816572) (= lambda!198907 lambda!198837))))

(declare-fun bs!1062559 () Bool)

(assert (= bs!1062559 (and b!4653751 d!1475494)))

(assert (=> bs!1062559 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816578) (= lambda!198907 lambda!198885))))

(declare-fun bs!1062561 () Bool)

(assert (= bs!1062561 (and b!4653751 b!4653178)))

(assert (=> bs!1062561 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816243) (= lambda!198907 lambda!198835))))

(declare-fun bs!1062562 () Bool)

(assert (= bs!1062562 (and b!4653751 b!4653227)))

(assert (=> bs!1062562 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816657) (= lambda!198907 lambda!198851))))

(declare-fun bs!1062564 () Bool)

(assert (= bs!1062564 (and b!4653751 d!1475502)))

(assert (=> bs!1062564 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816922) (= lambda!198907 lambda!198896))))

(declare-fun bs!1062566 () Bool)

(assert (= bs!1062566 (and b!4653751 d!1475404)))

(assert (=> bs!1062566 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816745) (= lambda!198907 lambda!198862))))

(declare-fun bs!1062567 () Bool)

(assert (= bs!1062567 (and b!4653751 b!4653410)))

(assert (=> bs!1062567 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198907 lambda!198859))))

(declare-fun bs!1062568 () Bool)

(assert (= bs!1062568 (and b!4653751 d!1475542)))

(assert (=> bs!1062568 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198907 lambda!198903))))

(declare-fun bs!1062570 () Bool)

(assert (= bs!1062570 (and b!4653751 b!4653112)))

(assert (=> bs!1062570 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198907 lambda!198825))))

(declare-fun bs!1062571 () Bool)

(assert (= bs!1062571 (and b!4653751 b!4653625)))

(assert (=> bs!1062571 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816928) (= lambda!198907 lambda!198895))))

(declare-fun bs!1062572 () Bool)

(assert (= bs!1062572 (and b!4653751 b!4653222)))

(assert (=> bs!1062572 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198907 lambda!198846))))

(declare-fun bs!1062573 () Bool)

(assert (= bs!1062573 (and b!4653751 d!1475300)))

(assert (=> bs!1062573 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816627) (= lambda!198907 lambda!198848))))

(declare-fun bs!1062574 () Bool)

(assert (= bs!1062574 (and b!4653751 b!4653105)))

(assert (=> bs!1062574 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198907 lambda!198818))))

(declare-fun bs!1062576 () Bool)

(assert (= bs!1062576 (and b!4653751 b!4653177)))

(assert (=> bs!1062576 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816243) (= lambda!198907 lambda!198834))))

(assert (=> bs!1062572 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816633) (= lambda!198907 lambda!198847))))

(assert (=> bs!1062571 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198907 lambda!198893))))

(declare-fun bs!1062577 () Bool)

(assert (= bs!1062577 (and b!4653751 d!1475566)))

(assert (=> bs!1062577 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816243) (= lambda!198907 lambda!198904))))

(assert (=> bs!1062562 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198907 lambda!198850))))

(declare-fun bs!1062578 () Bool)

(assert (= bs!1062578 (and b!4653751 d!1475590)))

(assert (=> bs!1062578 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816505) (= lambda!198907 lambda!198905))))

(assert (=> bs!1062561 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816578) (= lambda!198907 lambda!198836))))

(declare-fun bs!1062579 () Bool)

(assert (= bs!1062579 (and b!4653751 b!4653624)))

(assert (=> bs!1062579 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198907 lambda!198892))))

(declare-fun bs!1062580 () Bool)

(assert (= bs!1062580 (and b!4653751 b!4653411)))

(assert (=> bs!1062580 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198907 lambda!198860))))

(declare-fun bs!1062581 () Bool)

(assert (= bs!1062581 (and b!4653751 d!1475270)))

(assert (=> bs!1062581 (not (= lambda!198907 lambda!198833))))

(assert (=> bs!1062580 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816751) (= lambda!198907 lambda!198861))))

(assert (=> bs!1062574 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816505) (= lambda!198907 lambda!198820))))

(declare-fun bs!1062582 () Bool)

(assert (= bs!1062582 (and b!4653751 b!4653226)))

(assert (=> bs!1062582 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198907 lambda!198849))))

(declare-fun bs!1062583 () Bool)

(assert (= bs!1062583 (and b!4653751 b!4653221)))

(assert (=> bs!1062583 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198907 lambda!198845))))

(declare-fun bs!1062584 () Bool)

(assert (= bs!1062584 (and b!4653751 d!1475200)))

(assert (=> bs!1062584 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816499) (= lambda!198907 lambda!198821))))

(declare-fun bs!1062585 () Bool)

(assert (= bs!1062585 (and b!4653751 b!4653104)))

(assert (=> bs!1062585 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198907 lambda!198817))))

(declare-fun bs!1062586 () Bool)

(assert (= bs!1062586 (and b!4653751 d!1475248)))

(assert (=> bs!1062586 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816520) (= lambda!198907 lambda!198827))))

(assert (=> bs!1062570 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816526) (= lambda!198907 lambda!198826))))

(declare-fun bs!1062587 () Bool)

(assert (= bs!1062587 (and b!4653751 b!4653111)))

(assert (=> bs!1062587 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198907 lambda!198824))))

(declare-fun bs!1062588 () Bool)

(assert (= bs!1062588 (and b!4653751 d!1475308)))

(assert (=> bs!1062588 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816651) (= lambda!198907 lambda!198852))))

(declare-fun bs!1062589 () Bool)

(assert (= bs!1062589 (and b!4653751 d!1475292)))

(assert (=> bs!1062589 (not (= lambda!198907 lambda!198844))))

(assert (=> b!4653751 true))

(declare-fun bs!1062590 () Bool)

(declare-fun b!4653752 () Bool)

(assert (= bs!1062590 (and b!4653752 d!1475272)))

(declare-fun lambda!198908 () Int)

(assert (=> bs!1062590 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816572) (= lambda!198908 lambda!198837))))

(declare-fun bs!1062591 () Bool)

(assert (= bs!1062591 (and b!4653752 d!1475494)))

(assert (=> bs!1062591 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816578) (= lambda!198908 lambda!198885))))

(declare-fun bs!1062592 () Bool)

(assert (= bs!1062592 (and b!4653752 b!4653227)))

(assert (=> bs!1062592 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816657) (= lambda!198908 lambda!198851))))

(declare-fun bs!1062593 () Bool)

(assert (= bs!1062593 (and b!4653752 d!1475502)))

(assert (=> bs!1062593 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816922) (= lambda!198908 lambda!198896))))

(declare-fun bs!1062594 () Bool)

(assert (= bs!1062594 (and b!4653752 d!1475404)))

(assert (=> bs!1062594 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816745) (= lambda!198908 lambda!198862))))

(declare-fun bs!1062595 () Bool)

(assert (= bs!1062595 (and b!4653752 b!4653410)))

(assert (=> bs!1062595 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198908 lambda!198859))))

(declare-fun bs!1062596 () Bool)

(assert (= bs!1062596 (and b!4653752 d!1475542)))

(assert (=> bs!1062596 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198908 lambda!198903))))

(declare-fun bs!1062597 () Bool)

(assert (= bs!1062597 (and b!4653752 b!4653112)))

(assert (=> bs!1062597 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198908 lambda!198825))))

(declare-fun bs!1062598 () Bool)

(assert (= bs!1062598 (and b!4653752 b!4653625)))

(assert (=> bs!1062598 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816928) (= lambda!198908 lambda!198895))))

(declare-fun bs!1062599 () Bool)

(assert (= bs!1062599 (and b!4653752 b!4653222)))

(assert (=> bs!1062599 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198908 lambda!198846))))

(declare-fun bs!1062600 () Bool)

(assert (= bs!1062600 (and b!4653752 d!1475300)))

(assert (=> bs!1062600 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816627) (= lambda!198908 lambda!198848))))

(declare-fun bs!1062601 () Bool)

(assert (= bs!1062601 (and b!4653752 b!4653105)))

(assert (=> bs!1062601 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198908 lambda!198818))))

(declare-fun bs!1062602 () Bool)

(assert (= bs!1062602 (and b!4653752 b!4653177)))

(assert (=> bs!1062602 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816243) (= lambda!198908 lambda!198834))))

(declare-fun bs!1062603 () Bool)

(assert (= bs!1062603 (and b!4653752 b!4653178)))

(assert (=> bs!1062603 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816243) (= lambda!198908 lambda!198835))))

(declare-fun bs!1062604 () Bool)

(assert (= bs!1062604 (and b!4653752 b!4653751)))

(assert (=> bs!1062604 (= lambda!198908 lambda!198907)))

(assert (=> bs!1062599 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816633) (= lambda!198908 lambda!198847))))

(assert (=> bs!1062598 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198908 lambda!198893))))

(declare-fun bs!1062605 () Bool)

(assert (= bs!1062605 (and b!4653752 d!1475566)))

(assert (=> bs!1062605 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816243) (= lambda!198908 lambda!198904))))

(assert (=> bs!1062592 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198908 lambda!198850))))

(declare-fun bs!1062606 () Bool)

(assert (= bs!1062606 (and b!4653752 d!1475590)))

(assert (=> bs!1062606 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816505) (= lambda!198908 lambda!198905))))

(assert (=> bs!1062603 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816578) (= lambda!198908 lambda!198836))))

(declare-fun bs!1062607 () Bool)

(assert (= bs!1062607 (and b!4653752 b!4653624)))

(assert (=> bs!1062607 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198908 lambda!198892))))

(declare-fun bs!1062608 () Bool)

(assert (= bs!1062608 (and b!4653752 b!4653411)))

(assert (=> bs!1062608 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198908 lambda!198860))))

(declare-fun bs!1062609 () Bool)

(assert (= bs!1062609 (and b!4653752 d!1475270)))

(assert (=> bs!1062609 (not (= lambda!198908 lambda!198833))))

(assert (=> bs!1062608 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816751) (= lambda!198908 lambda!198861))))

(assert (=> bs!1062601 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816505) (= lambda!198908 lambda!198820))))

(declare-fun bs!1062610 () Bool)

(assert (= bs!1062610 (and b!4653752 b!4653226)))

(assert (=> bs!1062610 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198908 lambda!198849))))

(declare-fun bs!1062611 () Bool)

(assert (= bs!1062611 (and b!4653752 b!4653221)))

(assert (=> bs!1062611 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198908 lambda!198845))))

(declare-fun bs!1062612 () Bool)

(assert (= bs!1062612 (and b!4653752 d!1475200)))

(assert (=> bs!1062612 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816499) (= lambda!198908 lambda!198821))))

(declare-fun bs!1062613 () Bool)

(assert (= bs!1062613 (and b!4653752 b!4653104)))

(assert (=> bs!1062613 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198908 lambda!198817))))

(declare-fun bs!1062614 () Bool)

(assert (= bs!1062614 (and b!4653752 d!1475248)))

(assert (=> bs!1062614 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816520) (= lambda!198908 lambda!198827))))

(assert (=> bs!1062597 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816526) (= lambda!198908 lambda!198826))))

(declare-fun bs!1062615 () Bool)

(assert (= bs!1062615 (and b!4653752 b!4653111)))

(assert (=> bs!1062615 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (ListMap!4534 Nil!51874)) (= lambda!198908 lambda!198824))))

(declare-fun bs!1062616 () Bool)

(assert (= bs!1062616 (and b!4653752 d!1475308)))

(assert (=> bs!1062616 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1816651) (= lambda!198908 lambda!198852))))

(declare-fun bs!1062617 () Bool)

(assert (= bs!1062617 (and b!4653752 d!1475292)))

(assert (=> bs!1062617 (not (= lambda!198908 lambda!198844))))

(assert (=> b!4653752 true))

(declare-fun lambda!198909 () Int)

(declare-fun lt!1817033 () ListMap!4533)

(assert (=> bs!1062590 (= (= lt!1817033 lt!1816572) (= lambda!198909 lambda!198837))))

(assert (=> bs!1062591 (= (= lt!1817033 lt!1816578) (= lambda!198909 lambda!198885))))

(assert (=> bs!1062592 (= (= lt!1817033 lt!1816657) (= lambda!198909 lambda!198851))))

(assert (=> bs!1062593 (= (= lt!1817033 lt!1816922) (= lambda!198909 lambda!198896))))

(assert (=> bs!1062594 (= (= lt!1817033 lt!1816745) (= lambda!198909 lambda!198862))))

(assert (=> bs!1062595 (= (= lt!1817033 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198909 lambda!198859))))

(assert (=> bs!1062596 (= (= lt!1817033 (ListMap!4534 Nil!51874)) (= lambda!198909 lambda!198903))))

(assert (=> bs!1062597 (= (= lt!1817033 (ListMap!4534 Nil!51874)) (= lambda!198909 lambda!198825))))

(assert (=> bs!1062599 (= (= lt!1817033 (ListMap!4534 Nil!51874)) (= lambda!198909 lambda!198846))))

(assert (=> bs!1062600 (= (= lt!1817033 lt!1816627) (= lambda!198909 lambda!198848))))

(assert (=> bs!1062601 (= (= lt!1817033 (ListMap!4534 Nil!51874)) (= lambda!198909 lambda!198818))))

(assert (=> bs!1062602 (= (= lt!1817033 lt!1816243) (= lambda!198909 lambda!198834))))

(assert (=> bs!1062603 (= (= lt!1817033 lt!1816243) (= lambda!198909 lambda!198835))))

(assert (=> bs!1062604 (= (= lt!1817033 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198909 lambda!198907))))

(assert (=> bs!1062599 (= (= lt!1817033 lt!1816633) (= lambda!198909 lambda!198847))))

(assert (=> bs!1062598 (= (= lt!1817033 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198909 lambda!198893))))

(assert (=> bs!1062605 (= (= lt!1817033 lt!1816243) (= lambda!198909 lambda!198904))))

(assert (=> bs!1062592 (= (= lt!1817033 (ListMap!4534 Nil!51874)) (= lambda!198909 lambda!198850))))

(assert (=> bs!1062606 (= (= lt!1817033 lt!1816505) (= lambda!198909 lambda!198905))))

(assert (=> bs!1062603 (= (= lt!1817033 lt!1816578) (= lambda!198909 lambda!198836))))

(assert (=> bs!1062607 (= (= lt!1817033 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198909 lambda!198892))))

(assert (=> bs!1062608 (= (= lt!1817033 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198909 lambda!198860))))

(assert (=> bs!1062609 (not (= lambda!198909 lambda!198833))))

(assert (=> bs!1062608 (= (= lt!1817033 lt!1816751) (= lambda!198909 lambda!198861))))

(assert (=> bs!1062601 (= (= lt!1817033 lt!1816505) (= lambda!198909 lambda!198820))))

(assert (=> bs!1062610 (= (= lt!1817033 (ListMap!4534 Nil!51874)) (= lambda!198909 lambda!198849))))

(assert (=> bs!1062611 (= (= lt!1817033 (ListMap!4534 Nil!51874)) (= lambda!198909 lambda!198845))))

(assert (=> bs!1062612 (= (= lt!1817033 lt!1816499) (= lambda!198909 lambda!198821))))

(assert (=> bs!1062613 (= (= lt!1817033 (ListMap!4534 Nil!51874)) (= lambda!198909 lambda!198817))))

(assert (=> b!4653752 (= (= lt!1817033 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198909 lambda!198908))))

(assert (=> bs!1062598 (= (= lt!1817033 lt!1816928) (= lambda!198909 lambda!198895))))

(assert (=> bs!1062614 (= (= lt!1817033 lt!1816520) (= lambda!198909 lambda!198827))))

(assert (=> bs!1062597 (= (= lt!1817033 lt!1816526) (= lambda!198909 lambda!198826))))

(assert (=> bs!1062615 (= (= lt!1817033 (ListMap!4534 Nil!51874)) (= lambda!198909 lambda!198824))))

(assert (=> bs!1062616 (= (= lt!1817033 lt!1816651) (= lambda!198909 lambda!198852))))

(assert (=> bs!1062617 (not (= lambda!198909 lambda!198844))))

(assert (=> b!4653752 true))

(declare-fun bs!1062618 () Bool)

(declare-fun d!1475596 () Bool)

(assert (= bs!1062618 (and d!1475596 d!1475272)))

(declare-fun lambda!198910 () Int)

(declare-fun lt!1817027 () ListMap!4533)

(assert (=> bs!1062618 (= (= lt!1817027 lt!1816572) (= lambda!198910 lambda!198837))))

(declare-fun bs!1062619 () Bool)

(assert (= bs!1062619 (and d!1475596 d!1475494)))

(assert (=> bs!1062619 (= (= lt!1817027 lt!1816578) (= lambda!198910 lambda!198885))))

(declare-fun bs!1062620 () Bool)

(assert (= bs!1062620 (and d!1475596 b!4653227)))

(assert (=> bs!1062620 (= (= lt!1817027 lt!1816657) (= lambda!198910 lambda!198851))))

(declare-fun bs!1062621 () Bool)

(assert (= bs!1062621 (and d!1475596 d!1475404)))

(assert (=> bs!1062621 (= (= lt!1817027 lt!1816745) (= lambda!198910 lambda!198862))))

(declare-fun bs!1062622 () Bool)

(assert (= bs!1062622 (and d!1475596 b!4653410)))

(assert (=> bs!1062622 (= (= lt!1817027 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198910 lambda!198859))))

(declare-fun bs!1062623 () Bool)

(assert (= bs!1062623 (and d!1475596 d!1475542)))

(assert (=> bs!1062623 (= (= lt!1817027 (ListMap!4534 Nil!51874)) (= lambda!198910 lambda!198903))))

(declare-fun bs!1062624 () Bool)

(assert (= bs!1062624 (and d!1475596 b!4653112)))

(assert (=> bs!1062624 (= (= lt!1817027 (ListMap!4534 Nil!51874)) (= lambda!198910 lambda!198825))))

(declare-fun bs!1062625 () Bool)

(assert (= bs!1062625 (and d!1475596 b!4653222)))

(assert (=> bs!1062625 (= (= lt!1817027 (ListMap!4534 Nil!51874)) (= lambda!198910 lambda!198846))))

(declare-fun bs!1062626 () Bool)

(assert (= bs!1062626 (and d!1475596 d!1475300)))

(assert (=> bs!1062626 (= (= lt!1817027 lt!1816627) (= lambda!198910 lambda!198848))))

(declare-fun bs!1062627 () Bool)

(assert (= bs!1062627 (and d!1475596 b!4653105)))

(assert (=> bs!1062627 (= (= lt!1817027 (ListMap!4534 Nil!51874)) (= lambda!198910 lambda!198818))))

(declare-fun bs!1062628 () Bool)

(assert (= bs!1062628 (and d!1475596 b!4653177)))

(assert (=> bs!1062628 (= (= lt!1817027 lt!1816243) (= lambda!198910 lambda!198834))))

(declare-fun bs!1062629 () Bool)

(assert (= bs!1062629 (and d!1475596 b!4653178)))

(assert (=> bs!1062629 (= (= lt!1817027 lt!1816243) (= lambda!198910 lambda!198835))))

(declare-fun bs!1062630 () Bool)

(assert (= bs!1062630 (and d!1475596 b!4653751)))

(assert (=> bs!1062630 (= (= lt!1817027 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198910 lambda!198907))))

(assert (=> bs!1062625 (= (= lt!1817027 lt!1816633) (= lambda!198910 lambda!198847))))

(declare-fun bs!1062631 () Bool)

(assert (= bs!1062631 (and d!1475596 b!4653625)))

(assert (=> bs!1062631 (= (= lt!1817027 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198910 lambda!198893))))

(declare-fun bs!1062632 () Bool)

(assert (= bs!1062632 (and d!1475596 d!1475566)))

(assert (=> bs!1062632 (= (= lt!1817027 lt!1816243) (= lambda!198910 lambda!198904))))

(assert (=> bs!1062620 (= (= lt!1817027 (ListMap!4534 Nil!51874)) (= lambda!198910 lambda!198850))))

(declare-fun bs!1062633 () Bool)

(assert (= bs!1062633 (and d!1475596 d!1475590)))

(assert (=> bs!1062633 (= (= lt!1817027 lt!1816505) (= lambda!198910 lambda!198905))))

(assert (=> bs!1062629 (= (= lt!1817027 lt!1816578) (= lambda!198910 lambda!198836))))

(declare-fun bs!1062634 () Bool)

(assert (= bs!1062634 (and d!1475596 b!4653624)))

(assert (=> bs!1062634 (= (= lt!1817027 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198910 lambda!198892))))

(declare-fun bs!1062635 () Bool)

(assert (= bs!1062635 (and d!1475596 b!4653411)))

(assert (=> bs!1062635 (= (= lt!1817027 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198910 lambda!198860))))

(declare-fun bs!1062636 () Bool)

(assert (= bs!1062636 (and d!1475596 d!1475270)))

(assert (=> bs!1062636 (not (= lambda!198910 lambda!198833))))

(declare-fun bs!1062637 () Bool)

(assert (= bs!1062637 (and d!1475596 b!4653752)))

(assert (=> bs!1062637 (= (= lt!1817027 lt!1817033) (= lambda!198910 lambda!198909))))

(declare-fun bs!1062638 () Bool)

(assert (= bs!1062638 (and d!1475596 d!1475502)))

(assert (=> bs!1062638 (= (= lt!1817027 lt!1816922) (= lambda!198910 lambda!198896))))

(assert (=> bs!1062635 (= (= lt!1817027 lt!1816751) (= lambda!198910 lambda!198861))))

(assert (=> bs!1062627 (= (= lt!1817027 lt!1816505) (= lambda!198910 lambda!198820))))

(declare-fun bs!1062639 () Bool)

(assert (= bs!1062639 (and d!1475596 b!4653226)))

(assert (=> bs!1062639 (= (= lt!1817027 (ListMap!4534 Nil!51874)) (= lambda!198910 lambda!198849))))

(declare-fun bs!1062640 () Bool)

(assert (= bs!1062640 (and d!1475596 b!4653221)))

(assert (=> bs!1062640 (= (= lt!1817027 (ListMap!4534 Nil!51874)) (= lambda!198910 lambda!198845))))

(declare-fun bs!1062641 () Bool)

(assert (= bs!1062641 (and d!1475596 d!1475200)))

(assert (=> bs!1062641 (= (= lt!1817027 lt!1816499) (= lambda!198910 lambda!198821))))

(declare-fun bs!1062642 () Bool)

(assert (= bs!1062642 (and d!1475596 b!4653104)))

(assert (=> bs!1062642 (= (= lt!1817027 (ListMap!4534 Nil!51874)) (= lambda!198910 lambda!198817))))

(assert (=> bs!1062637 (= (= lt!1817027 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198910 lambda!198908))))

(assert (=> bs!1062631 (= (= lt!1817027 lt!1816928) (= lambda!198910 lambda!198895))))

(declare-fun bs!1062643 () Bool)

(assert (= bs!1062643 (and d!1475596 d!1475248)))

(assert (=> bs!1062643 (= (= lt!1817027 lt!1816520) (= lambda!198910 lambda!198827))))

(assert (=> bs!1062624 (= (= lt!1817027 lt!1816526) (= lambda!198910 lambda!198826))))

(declare-fun bs!1062644 () Bool)

(assert (= bs!1062644 (and d!1475596 b!4653111)))

(assert (=> bs!1062644 (= (= lt!1817027 (ListMap!4534 Nil!51874)) (= lambda!198910 lambda!198824))))

(declare-fun bs!1062645 () Bool)

(assert (= bs!1062645 (and d!1475596 d!1475308)))

(assert (=> bs!1062645 (= (= lt!1817027 lt!1816651) (= lambda!198910 lambda!198852))))

(declare-fun bs!1062646 () Bool)

(assert (= bs!1062646 (and d!1475596 d!1475292)))

(assert (=> bs!1062646 (not (= lambda!198910 lambda!198844))))

(assert (=> d!1475596 true))

(declare-fun b!4653749 () Bool)

(declare-fun res!1956431 () Bool)

(declare-fun e!2903511 () Bool)

(assert (=> b!4653749 (=> (not res!1956431) (not e!2903511))))

(assert (=> b!4653749 (= res!1956431 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) lambda!198910))))

(declare-fun b!4653750 () Bool)

(assert (=> b!4653750 (= e!2903511 (invariantList!1292 (toList!5195 lt!1817027)))))

(declare-fun e!2903512 () ListMap!4533)

(assert (=> b!4653751 (= e!2903512 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)))))

(declare-fun lt!1817035 () Unit!118036)

(declare-fun call!325202 () Unit!118036)

(assert (=> b!4653751 (= lt!1817035 call!325202)))

(declare-fun call!325201 () Bool)

(assert (=> b!4653751 call!325201))

(declare-fun lt!1817044 () Unit!118036)

(assert (=> b!4653751 (= lt!1817044 lt!1817035)))

(declare-fun call!325203 () Bool)

(assert (=> b!4653751 call!325203))

(declare-fun lt!1817030 () Unit!118036)

(declare-fun Unit!118243 () Unit!118036)

(assert (=> b!4653751 (= lt!1817030 Unit!118243)))

(declare-fun bm!325196 () Bool)

(declare-fun c!796542 () Bool)

(assert (=> bm!325196 (= call!325203 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (ite c!796542 lambda!198907 lambda!198909)))))

(assert (=> b!4653752 (= e!2903512 lt!1817033)))

(declare-fun lt!1817036 () ListMap!4533)

(assert (=> b!4653752 (= lt!1817036 (+!1976 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (h!58012 (t!359110 newBucket!224))))))

(assert (=> b!4653752 (= lt!1817033 (addToMapMapFromBucket!1089 (t!359110 (t!359110 newBucket!224)) (+!1976 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) (h!58012 (t!359110 newBucket!224)))))))

(declare-fun lt!1817039 () Unit!118036)

(assert (=> b!4653752 (= lt!1817039 call!325202)))

(assert (=> b!4653752 call!325201))

(declare-fun lt!1817038 () Unit!118036)

(assert (=> b!4653752 (= lt!1817038 lt!1817039)))

(assert (=> b!4653752 (forall!11010 (toList!5195 lt!1817036) lambda!198909)))

(declare-fun lt!1817040 () Unit!118036)

(declare-fun Unit!118244 () Unit!118036)

(assert (=> b!4653752 (= lt!1817040 Unit!118244)))

(assert (=> b!4653752 (forall!11010 (t!359110 (t!359110 newBucket!224)) lambda!198909)))

(declare-fun lt!1817031 () Unit!118036)

(declare-fun Unit!118245 () Unit!118036)

(assert (=> b!4653752 (= lt!1817031 Unit!118245)))

(declare-fun lt!1817037 () Unit!118036)

(declare-fun Unit!118246 () Unit!118036)

(assert (=> b!4653752 (= lt!1817037 Unit!118246)))

(declare-fun lt!1817029 () Unit!118036)

(assert (=> b!4653752 (= lt!1817029 (forallContained!3216 (toList!5195 lt!1817036) lambda!198909 (h!58012 (t!359110 newBucket!224))))))

(assert (=> b!4653752 (contains!15019 lt!1817036 (_1!29781 (h!58012 (t!359110 newBucket!224))))))

(declare-fun lt!1817041 () Unit!118036)

(declare-fun Unit!118247 () Unit!118036)

(assert (=> b!4653752 (= lt!1817041 Unit!118247)))

(assert (=> b!4653752 (contains!15019 lt!1817033 (_1!29781 (h!58012 (t!359110 newBucket!224))))))

(declare-fun lt!1817045 () Unit!118036)

(declare-fun Unit!118248 () Unit!118036)

(assert (=> b!4653752 (= lt!1817045 Unit!118248)))

(assert (=> b!4653752 (forall!11010 (t!359110 newBucket!224) lambda!198909)))

(declare-fun lt!1817047 () Unit!118036)

(declare-fun Unit!118249 () Unit!118036)

(assert (=> b!4653752 (= lt!1817047 Unit!118249)))

(assert (=> b!4653752 (forall!11010 (toList!5195 lt!1817036) lambda!198909)))

(declare-fun lt!1817042 () Unit!118036)

(declare-fun Unit!118250 () Unit!118036)

(assert (=> b!4653752 (= lt!1817042 Unit!118250)))

(declare-fun lt!1817043 () Unit!118036)

(declare-fun Unit!118251 () Unit!118036)

(assert (=> b!4653752 (= lt!1817043 Unit!118251)))

(declare-fun lt!1817034 () Unit!118036)

(assert (=> b!4653752 (= lt!1817034 (addForallContainsKeyThenBeforeAdding!591 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1817033 (_1!29781 (h!58012 (t!359110 newBucket!224))) (_2!29781 (h!58012 (t!359110 newBucket!224)))))))

(assert (=> b!4653752 call!325203))

(declare-fun lt!1817028 () Unit!118036)

(assert (=> b!4653752 (= lt!1817028 lt!1817034)))

(assert (=> b!4653752 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) lambda!198909)))

(declare-fun lt!1817032 () Unit!118036)

(declare-fun Unit!118252 () Unit!118036)

(assert (=> b!4653752 (= lt!1817032 Unit!118252)))

(declare-fun res!1956430 () Bool)

(assert (=> b!4653752 (= res!1956430 (forall!11010 (t!359110 newBucket!224) lambda!198909))))

(declare-fun e!2903513 () Bool)

(assert (=> b!4653752 (=> (not res!1956430) (not e!2903513))))

(assert (=> b!4653752 e!2903513))

(declare-fun lt!1817046 () Unit!118036)

(declare-fun Unit!118253 () Unit!118036)

(assert (=> b!4653752 (= lt!1817046 Unit!118253)))

(assert (=> d!1475596 e!2903511))

(declare-fun res!1956429 () Bool)

(assert (=> d!1475596 (=> (not res!1956429) (not e!2903511))))

(assert (=> d!1475596 (= res!1956429 (forall!11010 (t!359110 newBucket!224) lambda!198910))))

(assert (=> d!1475596 (= lt!1817027 e!2903512)))

(assert (=> d!1475596 (= c!796542 ((_ is Nil!51874) (t!359110 newBucket!224)))))

(assert (=> d!1475596 (noDuplicateKeys!1632 (t!359110 newBucket!224))))

(assert (=> d!1475596 (= (addToMapMapFromBucket!1089 (t!359110 newBucket!224) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) lt!1817027)))

(declare-fun bm!325197 () Bool)

(assert (=> bm!325197 (= call!325201 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (ite c!796542 lambda!198907 lambda!198908)))))

(declare-fun bm!325198 () Bool)

(assert (=> bm!325198 (= call!325202 (lemmaContainsAllItsOwnKeys!592 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))))))

(declare-fun b!4653753 () Bool)

(assert (=> b!4653753 (= e!2903513 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) lambda!198909))))

(assert (= (and d!1475596 c!796542) b!4653751))

(assert (= (and d!1475596 (not c!796542)) b!4653752))

(assert (= (and b!4653752 res!1956430) b!4653753))

(assert (= (or b!4653751 b!4653752) bm!325198))

(assert (= (or b!4653751 b!4653752) bm!325197))

(assert (= (or b!4653751 b!4653752) bm!325196))

(assert (= (and d!1475596 res!1956429) b!4653749))

(assert (= (and b!4653749 res!1956431) b!4653750))

(declare-fun m!5531617 () Bool)

(assert (=> d!1475596 m!5531617))

(assert (=> d!1475596 m!5530405))

(declare-fun m!5531619 () Bool)

(assert (=> bm!325197 m!5531619))

(declare-fun m!5531621 () Bool)

(assert (=> b!4653750 m!5531621))

(declare-fun m!5531623 () Bool)

(assert (=> b!4653749 m!5531623))

(assert (=> bm!325198 m!5530281))

(declare-fun m!5531625 () Bool)

(assert (=> bm!325198 m!5531625))

(declare-fun m!5531627 () Bool)

(assert (=> bm!325196 m!5531627))

(declare-fun m!5531629 () Bool)

(assert (=> b!4653753 m!5531629))

(assert (=> b!4653752 m!5530281))

(declare-fun m!5531631 () Bool)

(assert (=> b!4653752 m!5531631))

(declare-fun m!5531633 () Bool)

(assert (=> b!4653752 m!5531633))

(assert (=> b!4653752 m!5531633))

(declare-fun m!5531635 () Bool)

(assert (=> b!4653752 m!5531635))

(declare-fun m!5531637 () Bool)

(assert (=> b!4653752 m!5531637))

(declare-fun m!5531639 () Bool)

(assert (=> b!4653752 m!5531639))

(assert (=> b!4653752 m!5531637))

(declare-fun m!5531641 () Bool)

(assert (=> b!4653752 m!5531641))

(declare-fun m!5531643 () Bool)

(assert (=> b!4653752 m!5531643))

(declare-fun m!5531645 () Bool)

(assert (=> b!4653752 m!5531645))

(assert (=> b!4653752 m!5531629))

(declare-fun m!5531647 () Bool)

(assert (=> b!4653752 m!5531647))

(assert (=> b!4653752 m!5530281))

(assert (=> b!4653752 m!5531641))

(assert (=> b!4653105 d!1475596))

(declare-fun d!1475600 () Bool)

(declare-fun e!2903520 () Bool)

(assert (=> d!1475600 e!2903520))

(declare-fun res!1956432 () Bool)

(assert (=> d!1475600 (=> (not res!1956432) (not e!2903520))))

(declare-fun lt!1817057 () ListMap!4533)

(assert (=> d!1475600 (= res!1956432 (contains!15019 lt!1817057 (_1!29781 (h!58012 newBucket!224))))))

(declare-fun lt!1817058 () List!51998)

(assert (=> d!1475600 (= lt!1817057 (ListMap!4534 lt!1817058))))

(declare-fun lt!1817059 () Unit!118036)

(declare-fun lt!1817056 () Unit!118036)

(assert (=> d!1475600 (= lt!1817059 lt!1817056)))

(assert (=> d!1475600 (= (getValueByKey!1603 lt!1817058 (_1!29781 (h!58012 newBucket!224))) (Some!11814 (_2!29781 (h!58012 newBucket!224))))))

(assert (=> d!1475600 (= lt!1817056 (lemmaContainsTupThenGetReturnValue!920 lt!1817058 (_1!29781 (h!58012 newBucket!224)) (_2!29781 (h!58012 newBucket!224))))))

(assert (=> d!1475600 (= lt!1817058 (insertNoDuplicatedKeys!428 (toList!5195 (ListMap!4534 Nil!51874)) (_1!29781 (h!58012 newBucket!224)) (_2!29781 (h!58012 newBucket!224))))))

(assert (=> d!1475600 (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224)) lt!1817057)))

(declare-fun b!4653766 () Bool)

(declare-fun res!1956433 () Bool)

(assert (=> b!4653766 (=> (not res!1956433) (not e!2903520))))

(assert (=> b!4653766 (= res!1956433 (= (getValueByKey!1603 (toList!5195 lt!1817057) (_1!29781 (h!58012 newBucket!224))) (Some!11814 (_2!29781 (h!58012 newBucket!224)))))))

(declare-fun b!4653767 () Bool)

(assert (=> b!4653767 (= e!2903520 (contains!15023 (toList!5195 lt!1817057) (h!58012 newBucket!224)))))

(assert (= (and d!1475600 res!1956432) b!4653766))

(assert (= (and b!4653766 res!1956433) b!4653767))

(declare-fun m!5531649 () Bool)

(assert (=> d!1475600 m!5531649))

(declare-fun m!5531651 () Bool)

(assert (=> d!1475600 m!5531651))

(declare-fun m!5531653 () Bool)

(assert (=> d!1475600 m!5531653))

(declare-fun m!5531655 () Bool)

(assert (=> d!1475600 m!5531655))

(declare-fun m!5531657 () Bool)

(assert (=> b!4653766 m!5531657))

(declare-fun m!5531659 () Bool)

(assert (=> b!4653767 m!5531659))

(assert (=> b!4653105 d!1475600))

(declare-fun d!1475602 () Bool)

(declare-fun res!1956434 () Bool)

(declare-fun e!2903521 () Bool)

(assert (=> d!1475602 (=> res!1956434 e!2903521)))

(assert (=> d!1475602 (= res!1956434 ((_ is Nil!51874) (t!359110 newBucket!224)))))

(assert (=> d!1475602 (= (forall!11010 (t!359110 newBucket!224) lambda!198820) e!2903521)))

(declare-fun b!4653768 () Bool)

(declare-fun e!2903522 () Bool)

(assert (=> b!4653768 (= e!2903521 e!2903522)))

(declare-fun res!1956435 () Bool)

(assert (=> b!4653768 (=> (not res!1956435) (not e!2903522))))

(assert (=> b!4653768 (= res!1956435 (dynLambda!21580 lambda!198820 (h!58012 (t!359110 newBucket!224))))))

(declare-fun b!4653769 () Bool)

(assert (=> b!4653769 (= e!2903522 (forall!11010 (t!359110 (t!359110 newBucket!224)) lambda!198820))))

(assert (= (and d!1475602 (not res!1956434)) b!4653768))

(assert (= (and b!4653768 res!1956435) b!4653769))

(declare-fun b_lambda!173513 () Bool)

(assert (=> (not b_lambda!173513) (not b!4653768)))

(declare-fun m!5531661 () Bool)

(assert (=> b!4653768 m!5531661))

(declare-fun m!5531663 () Bool)

(assert (=> b!4653769 m!5531663))

(assert (=> b!4653105 d!1475602))

(declare-fun b!4653770 () Bool)

(declare-fun e!2903528 () Unit!118036)

(declare-fun lt!1817071 () Unit!118036)

(assert (=> b!4653770 (= e!2903528 lt!1817071)))

(declare-fun lt!1817066 () Unit!118036)

(assert (=> b!4653770 (= lt!1817066 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816505) (_1!29781 (h!58012 newBucket!224))))))

(assert (=> b!4653770 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816505) (_1!29781 (h!58012 newBucket!224))))))

(declare-fun lt!1817068 () Unit!118036)

(assert (=> b!4653770 (= lt!1817068 lt!1817066)))

(assert (=> b!4653770 (= lt!1817071 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816505) (_1!29781 (h!58012 newBucket!224))))))

(declare-fun call!325204 () Bool)

(assert (=> b!4653770 call!325204))

(declare-fun b!4653771 () Bool)

(declare-fun e!2903526 () List!52001)

(assert (=> b!4653771 (= e!2903526 (getKeysList!743 (toList!5195 lt!1816505)))))

(declare-fun b!4653772 () Bool)

(declare-fun e!2903525 () Unit!118036)

(assert (=> b!4653772 (= e!2903528 e!2903525)))

(declare-fun c!796550 () Bool)

(assert (=> b!4653772 (= c!796550 call!325204)))

(declare-fun b!4653773 () Bool)

(declare-fun e!2903523 () Bool)

(assert (=> b!4653773 (= e!2903523 (contains!15021 (keys!18370 lt!1816505) (_1!29781 (h!58012 newBucket!224))))))

(declare-fun b!4653774 () Bool)

(declare-fun e!2903524 () Bool)

(assert (=> b!4653774 (= e!2903524 e!2903523)))

(declare-fun res!1956437 () Bool)

(assert (=> b!4653774 (=> (not res!1956437) (not e!2903523))))

(assert (=> b!4653774 (= res!1956437 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816505) (_1!29781 (h!58012 newBucket!224)))))))

(declare-fun bm!325199 () Bool)

(assert (=> bm!325199 (= call!325204 (contains!15021 e!2903526 (_1!29781 (h!58012 newBucket!224))))))

(declare-fun c!796549 () Bool)

(declare-fun c!796551 () Bool)

(assert (=> bm!325199 (= c!796549 c!796551)))

(declare-fun b!4653775 () Bool)

(assert (=> b!4653775 (= e!2903526 (keys!18370 lt!1816505))))

(declare-fun b!4653776 () Bool)

(assert (=> b!4653776 false))

(declare-fun lt!1817072 () Unit!118036)

(declare-fun lt!1817070 () Unit!118036)

(assert (=> b!4653776 (= lt!1817072 lt!1817070)))

(assert (=> b!4653776 (containsKey!2711 (toList!5195 lt!1816505) (_1!29781 (h!58012 newBucket!224)))))

(assert (=> b!4653776 (= lt!1817070 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816505) (_1!29781 (h!58012 newBucket!224))))))

(declare-fun Unit!118263 () Unit!118036)

(assert (=> b!4653776 (= e!2903525 Unit!118263)))

(declare-fun d!1475604 () Bool)

(assert (=> d!1475604 e!2903524))

(declare-fun res!1956438 () Bool)

(assert (=> d!1475604 (=> res!1956438 e!2903524)))

(declare-fun e!2903527 () Bool)

(assert (=> d!1475604 (= res!1956438 e!2903527)))

(declare-fun res!1956436 () Bool)

(assert (=> d!1475604 (=> (not res!1956436) (not e!2903527))))

(declare-fun lt!1817073 () Bool)

(assert (=> d!1475604 (= res!1956436 (not lt!1817073))))

(declare-fun lt!1817067 () Bool)

(assert (=> d!1475604 (= lt!1817073 lt!1817067)))

(declare-fun lt!1817069 () Unit!118036)

(assert (=> d!1475604 (= lt!1817069 e!2903528)))

(assert (=> d!1475604 (= c!796551 lt!1817067)))

(assert (=> d!1475604 (= lt!1817067 (containsKey!2711 (toList!5195 lt!1816505) (_1!29781 (h!58012 newBucket!224))))))

(assert (=> d!1475604 (= (contains!15019 lt!1816505 (_1!29781 (h!58012 newBucket!224))) lt!1817073)))

(declare-fun b!4653777 () Bool)

(declare-fun Unit!118265 () Unit!118036)

(assert (=> b!4653777 (= e!2903525 Unit!118265)))

(declare-fun b!4653778 () Bool)

(assert (=> b!4653778 (= e!2903527 (not (contains!15021 (keys!18370 lt!1816505) (_1!29781 (h!58012 newBucket!224)))))))

(assert (= (and d!1475604 c!796551) b!4653770))

(assert (= (and d!1475604 (not c!796551)) b!4653772))

(assert (= (and b!4653772 c!796550) b!4653776))

(assert (= (and b!4653772 (not c!796550)) b!4653777))

(assert (= (or b!4653770 b!4653772) bm!325199))

(assert (= (and bm!325199 c!796549) b!4653771))

(assert (= (and bm!325199 (not c!796549)) b!4653775))

(assert (= (and d!1475604 res!1956436) b!4653778))

(assert (= (and d!1475604 (not res!1956438)) b!4653774))

(assert (= (and b!4653774 res!1956437) b!4653773))

(declare-fun m!5531665 () Bool)

(assert (=> b!4653778 m!5531665))

(assert (=> b!4653778 m!5531665))

(declare-fun m!5531667 () Bool)

(assert (=> b!4653778 m!5531667))

(declare-fun m!5531669 () Bool)

(assert (=> b!4653770 m!5531669))

(declare-fun m!5531671 () Bool)

(assert (=> b!4653770 m!5531671))

(assert (=> b!4653770 m!5531671))

(declare-fun m!5531673 () Bool)

(assert (=> b!4653770 m!5531673))

(declare-fun m!5531675 () Bool)

(assert (=> b!4653770 m!5531675))

(declare-fun m!5531677 () Bool)

(assert (=> bm!325199 m!5531677))

(assert (=> b!4653775 m!5531665))

(declare-fun m!5531679 () Bool)

(assert (=> d!1475604 m!5531679))

(assert (=> b!4653776 m!5531679))

(declare-fun m!5531681 () Bool)

(assert (=> b!4653776 m!5531681))

(assert (=> b!4653774 m!5531671))

(assert (=> b!4653774 m!5531671))

(assert (=> b!4653774 m!5531673))

(assert (=> b!4653773 m!5531665))

(assert (=> b!4653773 m!5531665))

(assert (=> b!4653773 m!5531667))

(declare-fun m!5531683 () Bool)

(assert (=> b!4653771 m!5531683))

(assert (=> b!4653105 d!1475604))

(declare-fun d!1475606 () Bool)

(assert (=> d!1475606 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816241) key!4968))))

(declare-fun lt!1817076 () Unit!118036)

(declare-fun choose!31978 (List!51998 K!13230) Unit!118036)

(assert (=> d!1475606 (= lt!1817076 (choose!31978 (toList!5195 lt!1816241) key!4968))))

(assert (=> d!1475606 (invariantList!1292 (toList!5195 lt!1816241))))

(assert (=> d!1475606 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816241) key!4968) lt!1817076)))

(declare-fun bs!1062647 () Bool)

(assert (= bs!1062647 d!1475606))

(assert (=> bs!1062647 m!5530381))

(assert (=> bs!1062647 m!5530381))

(assert (=> bs!1062647 m!5530383))

(declare-fun m!5531685 () Bool)

(assert (=> bs!1062647 m!5531685))

(assert (=> bs!1062647 m!5530707))

(assert (=> b!4653148 d!1475606))

(declare-fun d!1475608 () Bool)

(declare-fun isEmpty!29000 (Option!11815) Bool)

(assert (=> d!1475608 (= (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816241) key!4968)) (not (isEmpty!29000 (getValueByKey!1603 (toList!5195 lt!1816241) key!4968))))))

(declare-fun bs!1062648 () Bool)

(assert (= bs!1062648 d!1475608))

(assert (=> bs!1062648 m!5530381))

(declare-fun m!5531687 () Bool)

(assert (=> bs!1062648 m!5531687))

(assert (=> b!4653148 d!1475608))

(declare-fun d!1475610 () Bool)

(declare-fun c!796552 () Bool)

(assert (=> d!1475610 (= c!796552 (and ((_ is Cons!51874) (toList!5195 lt!1816241)) (= (_1!29781 (h!58012 (toList!5195 lt!1816241))) key!4968)))))

(declare-fun e!2903531 () Option!11815)

(assert (=> d!1475610 (= (getValueByKey!1603 (toList!5195 lt!1816241) key!4968) e!2903531)))

(declare-fun b!4653786 () Bool)

(declare-fun e!2903532 () Option!11815)

(assert (=> b!4653786 (= e!2903531 e!2903532)))

(declare-fun c!796553 () Bool)

(assert (=> b!4653786 (= c!796553 (and ((_ is Cons!51874) (toList!5195 lt!1816241)) (not (= (_1!29781 (h!58012 (toList!5195 lt!1816241))) key!4968))))))

(declare-fun b!4653785 () Bool)

(assert (=> b!4653785 (= e!2903531 (Some!11814 (_2!29781 (h!58012 (toList!5195 lt!1816241)))))))

(declare-fun b!4653787 () Bool)

(assert (=> b!4653787 (= e!2903532 (getValueByKey!1603 (t!359110 (toList!5195 lt!1816241)) key!4968))))

(declare-fun b!4653788 () Bool)

(assert (=> b!4653788 (= e!2903532 None!11814)))

(assert (= (and d!1475610 c!796552) b!4653785))

(assert (= (and d!1475610 (not c!796552)) b!4653786))

(assert (= (and b!4653786 c!796553) b!4653787))

(assert (= (and b!4653786 (not c!796553)) b!4653788))

(declare-fun m!5531689 () Bool)

(assert (=> b!4653787 m!5531689))

(assert (=> b!4653148 d!1475610))

(declare-fun d!1475612 () Bool)

(assert (=> d!1475612 (contains!15021 (getKeysList!743 (toList!5195 lt!1816241)) key!4968)))

(declare-fun lt!1817086 () Unit!118036)

(declare-fun choose!31979 (List!51998 K!13230) Unit!118036)

(assert (=> d!1475612 (= lt!1817086 (choose!31979 (toList!5195 lt!1816241) key!4968))))

(assert (=> d!1475612 (invariantList!1292 (toList!5195 lt!1816241))))

(assert (=> d!1475612 (= (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816241) key!4968) lt!1817086)))

(declare-fun bs!1062656 () Bool)

(assert (= bs!1062656 d!1475612))

(assert (=> bs!1062656 m!5530393))

(assert (=> bs!1062656 m!5530393))

(declare-fun m!5531691 () Bool)

(assert (=> bs!1062656 m!5531691))

(declare-fun m!5531693 () Bool)

(assert (=> bs!1062656 m!5531693))

(assert (=> bs!1062656 m!5530707))

(assert (=> b!4653148 d!1475612))

(declare-fun d!1475614 () Bool)

(assert (not d!1475614))

(assert (=> b!4653180 d!1475614))

(declare-fun d!1475616 () Bool)

(assert (not d!1475616))

(assert (=> b!4653180 d!1475616))

(declare-fun d!1475618 () Bool)

(declare-fun res!1956448 () Bool)

(declare-fun e!2903537 () Bool)

(assert (=> d!1475618 (=> res!1956448 e!2903537)))

(assert (=> d!1475618 (= res!1956448 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475618 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198852) e!2903537)))

(declare-fun b!4653800 () Bool)

(declare-fun e!2903538 () Bool)

(assert (=> b!4653800 (= e!2903537 e!2903538)))

(declare-fun res!1956449 () Bool)

(assert (=> b!4653800 (=> (not res!1956449) (not e!2903538))))

(assert (=> b!4653800 (= res!1956449 (dynLambda!21580 lambda!198852 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653801 () Bool)

(assert (=> b!4653801 (= e!2903538 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) lambda!198852))))

(assert (= (and d!1475618 (not res!1956448)) b!4653800))

(assert (= (and b!4653800 res!1956449) b!4653801))

(declare-fun b_lambda!173515 () Bool)

(assert (=> (not b_lambda!173515) (not b!4653800)))

(declare-fun m!5531719 () Bool)

(assert (=> b!4653800 m!5531719))

(declare-fun m!5531721 () Bool)

(assert (=> b!4653801 m!5531721))

(assert (=> b!4653224 d!1475618))

(assert (=> b!4653152 d!1475608))

(assert (=> b!4653152 d!1475610))

(declare-fun d!1475622 () Bool)

(declare-fun c!796557 () Bool)

(assert (=> d!1475622 (= c!796557 (and ((_ is Cons!51874) (toList!5195 lt!1816624)) (= (_1!29781 (h!58012 (toList!5195 lt!1816624))) (_1!29781 lt!1816246))))))

(declare-fun e!2903539 () Option!11815)

(assert (=> d!1475622 (= (getValueByKey!1603 (toList!5195 lt!1816624) (_1!29781 lt!1816246)) e!2903539)))

(declare-fun b!4653803 () Bool)

(declare-fun e!2903540 () Option!11815)

(assert (=> b!4653803 (= e!2903539 e!2903540)))

(declare-fun c!796558 () Bool)

(assert (=> b!4653803 (= c!796558 (and ((_ is Cons!51874) (toList!5195 lt!1816624)) (not (= (_1!29781 (h!58012 (toList!5195 lt!1816624))) (_1!29781 lt!1816246)))))))

(declare-fun b!4653802 () Bool)

(assert (=> b!4653802 (= e!2903539 (Some!11814 (_2!29781 (h!58012 (toList!5195 lt!1816624)))))))

(declare-fun b!4653804 () Bool)

(assert (=> b!4653804 (= e!2903540 (getValueByKey!1603 (t!359110 (toList!5195 lt!1816624)) (_1!29781 lt!1816246)))))

(declare-fun b!4653805 () Bool)

(assert (=> b!4653805 (= e!2903540 None!11814)))

(assert (= (and d!1475622 c!796557) b!4653802))

(assert (= (and d!1475622 (not c!796557)) b!4653803))

(assert (= (and b!4653803 c!796558) b!4653804))

(assert (= (and b!4653803 (not c!796558)) b!4653805))

(declare-fun m!5531723 () Bool)

(assert (=> b!4653804 m!5531723))

(assert (=> b!4653217 d!1475622))

(declare-fun d!1475624 () Bool)

(assert (=> d!1475624 (= (invariantList!1292 (toList!5195 lt!1816520)) (noDuplicatedKeys!347 (toList!5195 lt!1816520)))))

(declare-fun bs!1062657 () Bool)

(assert (= bs!1062657 d!1475624))

(declare-fun m!5531725 () Bool)

(assert (=> bs!1062657 m!5531725))

(assert (=> b!4653110 d!1475624))

(declare-fun b!4653806 () Bool)

(declare-fun e!2903546 () Unit!118036)

(declare-fun lt!1817092 () Unit!118036)

(assert (=> b!4653806 (= e!2903546 lt!1817092)))

(declare-fun lt!1817087 () Unit!118036)

(assert (=> b!4653806 (= lt!1817087 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816620) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> b!4653806 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816620) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun lt!1817089 () Unit!118036)

(assert (=> b!4653806 (= lt!1817089 lt!1817087)))

(assert (=> b!4653806 (= lt!1817092 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816620) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun call!325205 () Bool)

(assert (=> b!4653806 call!325205))

(declare-fun b!4653807 () Bool)

(declare-fun e!2903544 () List!52001)

(assert (=> b!4653807 (= e!2903544 (getKeysList!743 (toList!5195 lt!1816620)))))

(declare-fun b!4653808 () Bool)

(declare-fun e!2903543 () Unit!118036)

(assert (=> b!4653808 (= e!2903546 e!2903543)))

(declare-fun c!796560 () Bool)

(assert (=> b!4653808 (= c!796560 call!325205)))

(declare-fun b!4653809 () Bool)

(declare-fun e!2903541 () Bool)

(assert (=> b!4653809 (= e!2903541 (contains!15021 (keys!18370 lt!1816620) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun b!4653810 () Bool)

(declare-fun e!2903542 () Bool)

(assert (=> b!4653810 (= e!2903542 e!2903541)))

(declare-fun res!1956451 () Bool)

(assert (=> b!4653810 (=> (not res!1956451) (not e!2903541))))

(assert (=> b!4653810 (= res!1956451 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816620) (_1!29781 (h!58012 oldBucket!40)))))))

(declare-fun bm!325200 () Bool)

(assert (=> bm!325200 (= call!325205 (contains!15021 e!2903544 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun c!796559 () Bool)

(declare-fun c!796561 () Bool)

(assert (=> bm!325200 (= c!796559 c!796561)))

(declare-fun b!4653811 () Bool)

(assert (=> b!4653811 (= e!2903544 (keys!18370 lt!1816620))))

(declare-fun b!4653812 () Bool)

(assert (=> b!4653812 false))

(declare-fun lt!1817093 () Unit!118036)

(declare-fun lt!1817091 () Unit!118036)

(assert (=> b!4653812 (= lt!1817093 lt!1817091)))

(assert (=> b!4653812 (containsKey!2711 (toList!5195 lt!1816620) (_1!29781 (h!58012 oldBucket!40)))))

(assert (=> b!4653812 (= lt!1817091 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816620) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun Unit!118267 () Unit!118036)

(assert (=> b!4653812 (= e!2903543 Unit!118267)))

(declare-fun d!1475626 () Bool)

(assert (=> d!1475626 e!2903542))

(declare-fun res!1956452 () Bool)

(assert (=> d!1475626 (=> res!1956452 e!2903542)))

(declare-fun e!2903545 () Bool)

(assert (=> d!1475626 (= res!1956452 e!2903545)))

(declare-fun res!1956450 () Bool)

(assert (=> d!1475626 (=> (not res!1956450) (not e!2903545))))

(declare-fun lt!1817094 () Bool)

(assert (=> d!1475626 (= res!1956450 (not lt!1817094))))

(declare-fun lt!1817088 () Bool)

(assert (=> d!1475626 (= lt!1817094 lt!1817088)))

(declare-fun lt!1817090 () Unit!118036)

(assert (=> d!1475626 (= lt!1817090 e!2903546)))

(assert (=> d!1475626 (= c!796561 lt!1817088)))

(assert (=> d!1475626 (= lt!1817088 (containsKey!2711 (toList!5195 lt!1816620) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475626 (= (contains!15019 lt!1816620 (_1!29781 (h!58012 oldBucket!40))) lt!1817094)))

(declare-fun b!4653813 () Bool)

(declare-fun Unit!118268 () Unit!118036)

(assert (=> b!4653813 (= e!2903543 Unit!118268)))

(declare-fun b!4653814 () Bool)

(assert (=> b!4653814 (= e!2903545 (not (contains!15021 (keys!18370 lt!1816620) (_1!29781 (h!58012 oldBucket!40)))))))

(assert (= (and d!1475626 c!796561) b!4653806))

(assert (= (and d!1475626 (not c!796561)) b!4653808))

(assert (= (and b!4653808 c!796560) b!4653812))

(assert (= (and b!4653808 (not c!796560)) b!4653813))

(assert (= (or b!4653806 b!4653808) bm!325200))

(assert (= (and bm!325200 c!796559) b!4653807))

(assert (= (and bm!325200 (not c!796559)) b!4653811))

(assert (= (and d!1475626 res!1956450) b!4653814))

(assert (= (and d!1475626 (not res!1956452)) b!4653810))

(assert (= (and b!4653810 res!1956451) b!4653809))

(declare-fun m!5531727 () Bool)

(assert (=> b!4653814 m!5531727))

(assert (=> b!4653814 m!5531727))

(declare-fun m!5531729 () Bool)

(assert (=> b!4653814 m!5531729))

(declare-fun m!5531731 () Bool)

(assert (=> b!4653806 m!5531731))

(assert (=> b!4653806 m!5530497))

(assert (=> b!4653806 m!5530497))

(declare-fun m!5531733 () Bool)

(assert (=> b!4653806 m!5531733))

(declare-fun m!5531735 () Bool)

(assert (=> b!4653806 m!5531735))

(declare-fun m!5531737 () Bool)

(assert (=> bm!325200 m!5531737))

(assert (=> b!4653811 m!5531727))

(declare-fun m!5531739 () Bool)

(assert (=> d!1475626 m!5531739))

(assert (=> b!4653812 m!5531739))

(declare-fun m!5531741 () Bool)

(assert (=> b!4653812 m!5531741))

(assert (=> b!4653810 m!5530497))

(assert (=> b!4653810 m!5530497))

(assert (=> b!4653810 m!5531733))

(assert (=> b!4653809 m!5531727))

(assert (=> b!4653809 m!5531727))

(assert (=> b!4653809 m!5531729))

(declare-fun m!5531743 () Bool)

(assert (=> b!4653807 m!5531743))

(assert (=> d!1475294 d!1475626))

(declare-fun d!1475628 () Bool)

(declare-fun c!796562 () Bool)

(assert (=> d!1475628 (= c!796562 (and ((_ is Cons!51874) lt!1816621) (= (_1!29781 (h!58012 lt!1816621)) (_1!29781 (h!58012 oldBucket!40)))))))

(declare-fun e!2903551 () Option!11815)

(assert (=> d!1475628 (= (getValueByKey!1603 lt!1816621 (_1!29781 (h!58012 oldBucket!40))) e!2903551)))

(declare-fun b!4653820 () Bool)

(declare-fun e!2903552 () Option!11815)

(assert (=> b!4653820 (= e!2903551 e!2903552)))

(declare-fun c!796563 () Bool)

(assert (=> b!4653820 (= c!796563 (and ((_ is Cons!51874) lt!1816621) (not (= (_1!29781 (h!58012 lt!1816621)) (_1!29781 (h!58012 oldBucket!40))))))))

(declare-fun b!4653819 () Bool)

(assert (=> b!4653819 (= e!2903551 (Some!11814 (_2!29781 (h!58012 lt!1816621))))))

(declare-fun b!4653821 () Bool)

(assert (=> b!4653821 (= e!2903552 (getValueByKey!1603 (t!359110 lt!1816621) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun b!4653822 () Bool)

(assert (=> b!4653822 (= e!2903552 None!11814)))

(assert (= (and d!1475628 c!796562) b!4653819))

(assert (= (and d!1475628 (not c!796562)) b!4653820))

(assert (= (and b!4653820 c!796563) b!4653821))

(assert (= (and b!4653820 (not c!796563)) b!4653822))

(declare-fun m!5531745 () Bool)

(assert (=> b!4653821 m!5531745))

(assert (=> d!1475294 d!1475628))

(declare-fun d!1475630 () Bool)

(assert (=> d!1475630 (= (getValueByKey!1603 lt!1816621 (_1!29781 (h!58012 oldBucket!40))) (Some!11814 (_2!29781 (h!58012 oldBucket!40))))))

(declare-fun lt!1817097 () Unit!118036)

(assert (=> d!1475630 (= lt!1817097 (choose!31972 lt!1816621 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(declare-fun e!2903553 () Bool)

(assert (=> d!1475630 e!2903553))

(declare-fun res!1956457 () Bool)

(assert (=> d!1475630 (=> (not res!1956457) (not e!2903553))))

(assert (=> d!1475630 (= res!1956457 (invariantList!1292 lt!1816621))))

(assert (=> d!1475630 (= (lemmaContainsTupThenGetReturnValue!920 lt!1816621 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))) lt!1817097)))

(declare-fun b!4653823 () Bool)

(declare-fun res!1956458 () Bool)

(assert (=> b!4653823 (=> (not res!1956458) (not e!2903553))))

(assert (=> b!4653823 (= res!1956458 (containsKey!2711 lt!1816621 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun b!4653824 () Bool)

(assert (=> b!4653824 (= e!2903553 (contains!15023 lt!1816621 (tuple2!52975 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40)))))))

(assert (= (and d!1475630 res!1956457) b!4653823))

(assert (= (and b!4653823 res!1956458) b!4653824))

(assert (=> d!1475630 m!5530491))

(declare-fun m!5531747 () Bool)

(assert (=> d!1475630 m!5531747))

(declare-fun m!5531749 () Bool)

(assert (=> d!1475630 m!5531749))

(declare-fun m!5531753 () Bool)

(assert (=> b!4653823 m!5531753))

(declare-fun m!5531755 () Bool)

(assert (=> b!4653824 m!5531755))

(assert (=> d!1475294 d!1475630))

(declare-fun b!4653829 () Bool)

(declare-fun e!2903561 () Unit!118036)

(declare-fun Unit!118269 () Unit!118036)

(assert (=> b!4653829 (= e!2903561 Unit!118269)))

(declare-fun b!4653830 () Bool)

(declare-fun res!1956466 () Bool)

(declare-fun e!2903558 () Bool)

(assert (=> b!4653830 (=> (not res!1956466) (not e!2903558))))

(declare-fun lt!1817105 () List!51998)

(assert (=> b!4653830 (= res!1956466 (contains!15023 lt!1817105 (tuple2!52975 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40)))))))

(declare-fun b!4653831 () Bool)

(declare-fun e!2903560 () List!51998)

(declare-fun lt!1817109 () List!51998)

(assert (=> b!4653831 (= e!2903560 lt!1817109)))

(declare-fun call!325207 () List!51998)

(assert (=> b!4653831 (= lt!1817109 call!325207)))

(declare-fun c!796566 () Bool)

(assert (=> b!4653831 (= c!796566 (containsKey!2711 (insertNoDuplicatedKeys!428 (t!359110 (toList!5195 lt!1816249)) (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))) (_1!29781 (h!58012 (toList!5195 lt!1816249)))))))

(declare-fun lt!1817104 () Unit!118036)

(assert (=> b!4653831 (= lt!1817104 e!2903561)))

(declare-fun b!4653832 () Bool)

(assert (=> b!4653832 false))

(declare-fun lt!1817101 () Unit!118036)

(declare-fun lt!1817106 () Unit!118036)

(assert (=> b!4653832 (= lt!1817101 lt!1817106)))

(assert (=> b!4653832 (containsKey!2711 (t!359110 (toList!5195 lt!1816249)) (_1!29781 (h!58012 (toList!5195 lt!1816249))))))

(assert (=> b!4653832 (= lt!1817106 (lemmaInGetKeysListThenContainsKey!742 (t!359110 (toList!5195 lt!1816249)) (_1!29781 (h!58012 (toList!5195 lt!1816249)))))))

(declare-fun lt!1817110 () Unit!118036)

(declare-fun lt!1817103 () Unit!118036)

(assert (=> b!4653832 (= lt!1817110 lt!1817103)))

(declare-fun call!325206 () List!52001)

(assert (=> b!4653832 (contains!15021 call!325206 (_1!29781 (h!58012 (toList!5195 lt!1816249))))))

(declare-fun lt!1817108 () List!51998)

(assert (=> b!4653832 (= lt!1817103 (lemmaInListThenGetKeysListContains!738 lt!1817108 (_1!29781 (h!58012 (toList!5195 lt!1816249)))))))

(assert (=> b!4653832 (= lt!1817108 (insertNoDuplicatedKeys!428 (t!359110 (toList!5195 lt!1816249)) (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(declare-fun Unit!118270 () Unit!118036)

(assert (=> b!4653832 (= e!2903561 Unit!118270)))

(declare-fun b!4653833 () Bool)

(assert (=> b!4653833 (= e!2903558 (= (content!8990 (getKeysList!743 lt!1817105)) ((_ map or) (content!8990 (getKeysList!743 (toList!5195 lt!1816249))) (store ((as const (Array K!13230 Bool)) false) (_1!29781 (h!58012 oldBucket!40)) true))))))

(declare-fun bm!325201 () Bool)

(declare-fun e!2903562 () List!51998)

(declare-fun c!796567 () Bool)

(declare-fun c!796568 () Bool)

(declare-fun call!325209 () List!51998)

(declare-fun c!796564 () Bool)

(assert (=> bm!325201 (= call!325209 ($colon$colon!1060 (ite c!796568 (t!359110 (toList!5195 lt!1816249)) (ite c!796564 (toList!5195 lt!1816249) e!2903562)) (ite (or c!796568 c!796564) (tuple2!52975 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))) (ite c!796567 (h!58012 (toList!5195 lt!1816249)) (tuple2!52975 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40)))))))))

(declare-fun b!4653834 () Bool)

(declare-fun e!2903564 () List!51998)

(declare-fun e!2903556 () List!51998)

(assert (=> b!4653834 (= e!2903564 e!2903556)))

(declare-fun res!1956462 () Bool)

(assert (=> b!4653834 (= res!1956462 ((_ is Cons!51874) (toList!5195 lt!1816249)))))

(declare-fun e!2903563 () Bool)

(assert (=> b!4653834 (=> (not res!1956462) (not e!2903563))))

(assert (=> b!4653834 (= c!796564 e!2903563)))

(declare-fun b!4653835 () Bool)

(assert (=> b!4653835 (= e!2903564 call!325209)))

(declare-fun lt!1817107 () List!52001)

(assert (=> b!4653835 (= lt!1817107 call!325206)))

(declare-fun lt!1817099 () Unit!118036)

(assert (=> b!4653835 (= lt!1817099 (lemmaSubseqRefl!129 lt!1817107))))

(assert (=> b!4653835 (subseq!645 lt!1817107 lt!1817107)))

(declare-fun lt!1817100 () Unit!118036)

(assert (=> b!4653835 (= lt!1817100 lt!1817099)))

(declare-fun b!4653836 () Bool)

(assert (=> b!4653836 (= e!2903562 (insertNoDuplicatedKeys!428 (t!359110 (toList!5195 lt!1816249)) (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(declare-fun b!4653837 () Bool)

(declare-fun call!325208 () List!51998)

(assert (=> b!4653837 (= e!2903556 call!325208)))

(declare-fun b!4653839 () Bool)

(assert (=> b!4653839 (= e!2903563 (not (containsKey!2711 (toList!5195 lt!1816249) (_1!29781 (h!58012 oldBucket!40)))))))

(declare-fun bm!325202 () Bool)

(assert (=> bm!325202 (= call!325208 call!325209)))

(declare-fun b!4653840 () Bool)

(assert (=> b!4653840 (= e!2903562 Nil!51874)))

(declare-fun b!4653841 () Bool)

(assert (=> b!4653841 (= c!796567 ((_ is Cons!51874) (toList!5195 lt!1816249)))))

(assert (=> b!4653841 (= e!2903556 e!2903560)))

(declare-fun b!4653842 () Bool)

(assert (=> b!4653842 (= e!2903560 call!325207)))

(declare-fun bm!325203 () Bool)

(assert (=> bm!325203 (= call!325206 (getKeysList!743 (ite c!796568 (toList!5195 lt!1816249) lt!1817108)))))

(declare-fun bm!325204 () Bool)

(assert (=> bm!325204 (= call!325207 call!325208)))

(declare-fun c!796565 () Bool)

(assert (=> bm!325204 (= c!796565 c!796567)))

(declare-fun d!1475632 () Bool)

(assert (=> d!1475632 e!2903558))

(declare-fun res!1956461 () Bool)

(assert (=> d!1475632 (=> (not res!1956461) (not e!2903558))))

(assert (=> d!1475632 (= res!1956461 (invariantList!1292 lt!1817105))))

(assert (=> d!1475632 (= lt!1817105 e!2903564)))

(assert (=> d!1475632 (= c!796568 (and ((_ is Cons!51874) (toList!5195 lt!1816249)) (= (_1!29781 (h!58012 (toList!5195 lt!1816249))) (_1!29781 (h!58012 oldBucket!40)))))))

(assert (=> d!1475632 (invariantList!1292 (toList!5195 lt!1816249))))

(assert (=> d!1475632 (= (insertNoDuplicatedKeys!428 (toList!5195 lt!1816249) (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))) lt!1817105)))

(declare-fun b!4653838 () Bool)

(declare-fun res!1956464 () Bool)

(assert (=> b!4653838 (=> (not res!1956464) (not e!2903558))))

(assert (=> b!4653838 (= res!1956464 (containsKey!2711 lt!1817105 (_1!29781 (h!58012 oldBucket!40))))))

(assert (= (and d!1475632 c!796568) b!4653835))

(assert (= (and d!1475632 (not c!796568)) b!4653834))

(assert (= (and b!4653834 res!1956462) b!4653839))

(assert (= (and b!4653834 c!796564) b!4653837))

(assert (= (and b!4653834 (not c!796564)) b!4653841))

(assert (= (and b!4653841 c!796567) b!4653831))

(assert (= (and b!4653841 (not c!796567)) b!4653842))

(assert (= (and b!4653831 c!796566) b!4653832))

(assert (= (and b!4653831 (not c!796566)) b!4653829))

(assert (= (or b!4653831 b!4653842) bm!325204))

(assert (= (and bm!325204 c!796565) b!4653836))

(assert (= (and bm!325204 (not c!796565)) b!4653840))

(assert (= (or b!4653837 bm!325204) bm!325202))

(assert (= (or b!4653835 b!4653832) bm!325203))

(assert (= (or b!4653835 bm!325202) bm!325201))

(assert (= (and d!1475632 res!1956461) b!4653838))

(assert (= (and b!4653838 res!1956464) b!4653830))

(assert (= (and b!4653830 res!1956466) b!4653833))

(assert (=> b!4653833 m!5531183))

(declare-fun m!5531775 () Bool)

(assert (=> b!4653833 m!5531775))

(declare-fun m!5531777 () Bool)

(assert (=> b!4653833 m!5531777))

(assert (=> b!4653833 m!5531183))

(assert (=> b!4653833 m!5531189))

(assert (=> b!4653833 m!5531775))

(declare-fun m!5531779 () Bool)

(assert (=> b!4653833 m!5531779))

(assert (=> b!4653832 m!5531193))

(declare-fun m!5531781 () Bool)

(assert (=> b!4653832 m!5531781))

(assert (=> b!4653832 m!5531197))

(declare-fun m!5531787 () Bool)

(assert (=> b!4653832 m!5531787))

(declare-fun m!5531789 () Bool)

(assert (=> b!4653832 m!5531789))

(declare-fun m!5531791 () Bool)

(assert (=> d!1475632 m!5531791))

(assert (=> d!1475632 m!5531205))

(declare-fun m!5531793 () Bool)

(assert (=> b!4653838 m!5531793))

(declare-fun m!5531795 () Bool)

(assert (=> bm!325203 m!5531795))

(assert (=> b!4653836 m!5531781))

(assert (=> b!4653831 m!5531781))

(assert (=> b!4653831 m!5531781))

(declare-fun m!5531797 () Bool)

(assert (=> b!4653831 m!5531797))

(declare-fun m!5531801 () Bool)

(assert (=> bm!325201 m!5531801))

(declare-fun m!5531803 () Bool)

(assert (=> b!4653839 m!5531803))

(declare-fun m!5531805 () Bool)

(assert (=> b!4653830 m!5531805))

(declare-fun m!5531807 () Bool)

(assert (=> b!4653835 m!5531807))

(declare-fun m!5531809 () Bool)

(assert (=> b!4653835 m!5531809))

(assert (=> d!1475294 d!1475632))

(declare-fun d!1475648 () Bool)

(declare-fun c!796574 () Bool)

(assert (=> d!1475648 (= c!796574 ((_ is Nil!51874) (toList!5195 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)))))))

(declare-fun e!2903578 () (InoxSet tuple2!52974))

(assert (=> d!1475648 (= (content!8989 (toList!5195 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)))) e!2903578)))

(declare-fun b!4653862 () Bool)

(assert (=> b!4653862 (= e!2903578 ((as const (Array tuple2!52974 Bool)) false))))

(declare-fun b!4653863 () Bool)

(assert (=> b!4653863 (= e!2903578 ((_ map or) (store ((as const (Array tuple2!52974 Bool)) false) (h!58012 (toList!5195 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)))) true) (content!8989 (t!359110 (toList!5195 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)))))))))

(assert (= (and d!1475648 c!796574) b!4653862))

(assert (= (and d!1475648 (not c!796574)) b!4653863))

(declare-fun m!5531811 () Bool)

(assert (=> b!4653863 m!5531811))

(declare-fun m!5531813 () Bool)

(assert (=> b!4653863 m!5531813))

(assert (=> d!1475296 d!1475648))

(declare-fun d!1475650 () Bool)

(declare-fun c!796575 () Bool)

(assert (=> d!1475650 (= c!796575 ((_ is Nil!51874) (toList!5195 (+!1976 lt!1816249 lt!1816246))))))

(declare-fun e!2903579 () (InoxSet tuple2!52974))

(assert (=> d!1475650 (= (content!8989 (toList!5195 (+!1976 lt!1816249 lt!1816246))) e!2903579)))

(declare-fun b!4653864 () Bool)

(assert (=> b!4653864 (= e!2903579 ((as const (Array tuple2!52974 Bool)) false))))

(declare-fun b!4653865 () Bool)

(assert (=> b!4653865 (= e!2903579 ((_ map or) (store ((as const (Array tuple2!52974 Bool)) false) (h!58012 (toList!5195 (+!1976 lt!1816249 lt!1816246))) true) (content!8989 (t!359110 (toList!5195 (+!1976 lt!1816249 lt!1816246))))))))

(assert (= (and d!1475650 c!796575) b!4653864))

(assert (= (and d!1475650 (not c!796575)) b!4653865))

(declare-fun m!5531815 () Bool)

(assert (=> b!4653865 m!5531815))

(declare-fun m!5531817 () Bool)

(assert (=> b!4653865 m!5531817))

(assert (=> d!1475296 d!1475650))

(assert (=> b!4653153 d!1475360))

(declare-fun d!1475652 () Bool)

(declare-fun res!1956476 () Bool)

(declare-fun e!2903580 () Bool)

(assert (=> d!1475652 (=> res!1956476 e!2903580)))

(assert (=> d!1475652 (= res!1956476 (and ((_ is Cons!51874) (t!359110 oldBucket!40)) (= (_1!29781 (h!58012 (t!359110 oldBucket!40))) (_1!29781 (h!58012 oldBucket!40)))))))

(assert (=> d!1475652 (= (containsKey!2708 (t!359110 oldBucket!40) (_1!29781 (h!58012 oldBucket!40))) e!2903580)))

(declare-fun b!4653866 () Bool)

(declare-fun e!2903581 () Bool)

(assert (=> b!4653866 (= e!2903580 e!2903581)))

(declare-fun res!1956477 () Bool)

(assert (=> b!4653866 (=> (not res!1956477) (not e!2903581))))

(assert (=> b!4653866 (= res!1956477 ((_ is Cons!51874) (t!359110 oldBucket!40)))))

(declare-fun b!4653867 () Bool)

(assert (=> b!4653867 (= e!2903581 (containsKey!2708 (t!359110 (t!359110 oldBucket!40)) (_1!29781 (h!58012 oldBucket!40))))))

(assert (= (and d!1475652 (not res!1956476)) b!4653866))

(assert (= (and b!4653866 res!1956477) b!4653867))

(declare-fun m!5531819 () Bool)

(assert (=> b!4653867 m!5531819))

(assert (=> b!4653128 d!1475652))

(declare-fun d!1475654 () Bool)

(declare-fun c!796576 () Bool)

(assert (=> d!1475654 (= c!796576 ((_ is Nil!51874) (toList!5195 (+!1976 lt!1816249 (h!58012 oldBucket!40)))))))

(declare-fun e!2903582 () (InoxSet tuple2!52974))

(assert (=> d!1475654 (= (content!8989 (toList!5195 (+!1976 lt!1816249 (h!58012 oldBucket!40)))) e!2903582)))

(declare-fun b!4653868 () Bool)

(assert (=> b!4653868 (= e!2903582 ((as const (Array tuple2!52974 Bool)) false))))

(declare-fun b!4653869 () Bool)

(assert (=> b!4653869 (= e!2903582 ((_ map or) (store ((as const (Array tuple2!52974 Bool)) false) (h!58012 (toList!5195 (+!1976 lt!1816249 (h!58012 oldBucket!40)))) true) (content!8989 (t!359110 (toList!5195 (+!1976 lt!1816249 (h!58012 oldBucket!40)))))))))

(assert (= (and d!1475654 c!796576) b!4653868))

(assert (= (and d!1475654 (not c!796576)) b!4653869))

(declare-fun m!5531821 () Bool)

(assert (=> b!4653869 m!5531821))

(declare-fun m!5531823 () Bool)

(assert (=> b!4653869 m!5531823))

(assert (=> d!1475302 d!1475654))

(declare-fun d!1475656 () Bool)

(declare-fun c!796577 () Bool)

(assert (=> d!1475656 (= c!796577 ((_ is Nil!51874) (toList!5195 (addToMapMapFromBucket!1089 oldBucket!40 (ListMap!4534 Nil!51874)))))))

(declare-fun e!2903583 () (InoxSet tuple2!52974))

(assert (=> d!1475656 (= (content!8989 (toList!5195 (addToMapMapFromBucket!1089 oldBucket!40 (ListMap!4534 Nil!51874)))) e!2903583)))

(declare-fun b!4653870 () Bool)

(assert (=> b!4653870 (= e!2903583 ((as const (Array tuple2!52974 Bool)) false))))

(declare-fun b!4653871 () Bool)

(assert (=> b!4653871 (= e!2903583 ((_ map or) (store ((as const (Array tuple2!52974 Bool)) false) (h!58012 (toList!5195 (addToMapMapFromBucket!1089 oldBucket!40 (ListMap!4534 Nil!51874)))) true) (content!8989 (t!359110 (toList!5195 (addToMapMapFromBucket!1089 oldBucket!40 (ListMap!4534 Nil!51874)))))))))

(assert (= (and d!1475656 c!796577) b!4653870))

(assert (= (and d!1475656 (not c!796577)) b!4653871))

(declare-fun m!5531825 () Bool)

(assert (=> b!4653871 m!5531825))

(declare-fun m!5531827 () Bool)

(assert (=> b!4653871 m!5531827))

(assert (=> d!1475302 d!1475656))

(declare-fun d!1475658 () Bool)

(assert (=> d!1475658 (= (invariantList!1292 (toList!5195 lt!1816609)) (noDuplicatedKeys!347 (toList!5195 lt!1816609)))))

(declare-fun bs!1062689 () Bool)

(assert (= bs!1062689 d!1475658))

(declare-fun m!5531829 () Bool)

(assert (=> bs!1062689 m!5531829))

(assert (=> d!1475288 d!1475658))

(declare-fun d!1475660 () Bool)

(declare-fun res!1956478 () Bool)

(declare-fun e!2903584 () Bool)

(assert (=> d!1475660 (=> res!1956478 e!2903584)))

(assert (=> d!1475660 (= res!1956478 ((_ is Nil!51875) (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))))

(assert (=> d!1475660 (= (forall!11008 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875) lambda!198842) e!2903584)))

(declare-fun b!4653872 () Bool)

(declare-fun e!2903585 () Bool)

(assert (=> b!4653872 (= e!2903584 e!2903585)))

(declare-fun res!1956479 () Bool)

(assert (=> b!4653872 (=> (not res!1956479) (not e!2903585))))

(assert (=> b!4653872 (= res!1956479 (dynLambda!21578 lambda!198842 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))))

(declare-fun b!4653873 () Bool)

(assert (=> b!4653873 (= e!2903585 (forall!11008 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)) lambda!198842))))

(assert (= (and d!1475660 (not res!1956478)) b!4653872))

(assert (= (and b!4653872 res!1956479) b!4653873))

(declare-fun b_lambda!173519 () Bool)

(assert (=> (not b_lambda!173519) (not b!4653872)))

(declare-fun m!5531831 () Bool)

(assert (=> b!4653872 m!5531831))

(declare-fun m!5531833 () Bool)

(assert (=> b!4653873 m!5531833))

(assert (=> d!1475288 d!1475660))

(declare-fun d!1475662 () Bool)

(assert (=> d!1475662 (= (invariantList!1292 (toList!5195 lt!1816571)) (noDuplicatedKeys!347 (toList!5195 lt!1816571)))))

(declare-fun bs!1062691 () Bool)

(assert (= bs!1062691 d!1475662))

(declare-fun m!5531835 () Bool)

(assert (=> bs!1062691 m!5531835))

(assert (=> d!1475262 d!1475662))

(declare-fun d!1475664 () Bool)

(declare-fun res!1956480 () Bool)

(declare-fun e!2903586 () Bool)

(assert (=> d!1475664 (=> res!1956480 e!2903586)))

(assert (=> d!1475664 (= res!1956480 ((_ is Nil!51875) (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))))

(assert (=> d!1475664 (= (forall!11008 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875) lambda!198830) e!2903586)))

(declare-fun b!4653874 () Bool)

(declare-fun e!2903587 () Bool)

(assert (=> b!4653874 (= e!2903586 e!2903587)))

(declare-fun res!1956481 () Bool)

(assert (=> b!4653874 (=> (not res!1956481) (not e!2903587))))

(assert (=> b!4653874 (= res!1956481 (dynLambda!21578 lambda!198830 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))))

(declare-fun b!4653875 () Bool)

(assert (=> b!4653875 (= e!2903587 (forall!11008 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)) lambda!198830))))

(assert (= (and d!1475664 (not res!1956480)) b!4653874))

(assert (= (and b!4653874 res!1956481) b!4653875))

(declare-fun b_lambda!173521 () Bool)

(assert (=> (not b_lambda!173521) (not b!4653874)))

(declare-fun m!5531837 () Bool)

(assert (=> b!4653874 m!5531837))

(declare-fun m!5531839 () Bool)

(assert (=> b!4653875 m!5531839))

(assert (=> d!1475262 d!1475664))

(declare-fun bs!1062707 () Bool)

(declare-fun b!4653878 () Bool)

(assert (= bs!1062707 (and b!4653878 d!1475272)))

(declare-fun lambda!198925 () Int)

(assert (=> bs!1062707 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816572) (= lambda!198925 lambda!198837))))

(declare-fun bs!1062709 () Bool)

(assert (= bs!1062709 (and b!4653878 d!1475494)))

(assert (=> bs!1062709 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816578) (= lambda!198925 lambda!198885))))

(declare-fun bs!1062711 () Bool)

(assert (= bs!1062711 (and b!4653878 b!4653227)))

(assert (=> bs!1062711 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816657) (= lambda!198925 lambda!198851))))

(declare-fun bs!1062713 () Bool)

(assert (= bs!1062713 (and b!4653878 d!1475404)))

(assert (=> bs!1062713 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816745) (= lambda!198925 lambda!198862))))

(declare-fun bs!1062715 () Bool)

(assert (= bs!1062715 (and b!4653878 b!4653410)))

(assert (=> bs!1062715 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198925 lambda!198859))))

(declare-fun bs!1062717 () Bool)

(assert (= bs!1062717 (and b!4653878 d!1475542)))

(assert (=> bs!1062717 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198925 lambda!198903))))

(declare-fun bs!1062719 () Bool)

(assert (= bs!1062719 (and b!4653878 b!4653112)))

(assert (=> bs!1062719 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198925 lambda!198825))))

(declare-fun bs!1062720 () Bool)

(assert (= bs!1062720 (and b!4653878 b!4653222)))

(assert (=> bs!1062720 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198925 lambda!198846))))

(declare-fun bs!1062722 () Bool)

(assert (= bs!1062722 (and b!4653878 d!1475596)))

(assert (=> bs!1062722 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1817027) (= lambda!198925 lambda!198910))))

(declare-fun bs!1062724 () Bool)

(assert (= bs!1062724 (and b!4653878 d!1475300)))

(assert (=> bs!1062724 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816627) (= lambda!198925 lambda!198848))))

(declare-fun bs!1062726 () Bool)

(assert (= bs!1062726 (and b!4653878 b!4653105)))

(assert (=> bs!1062726 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198925 lambda!198818))))

(declare-fun bs!1062727 () Bool)

(assert (= bs!1062727 (and b!4653878 b!4653177)))

(assert (=> bs!1062727 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816243) (= lambda!198925 lambda!198834))))

(declare-fun bs!1062729 () Bool)

(assert (= bs!1062729 (and b!4653878 b!4653178)))

(assert (=> bs!1062729 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816243) (= lambda!198925 lambda!198835))))

(declare-fun bs!1062731 () Bool)

(assert (= bs!1062731 (and b!4653878 b!4653751)))

(assert (=> bs!1062731 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198925 lambda!198907))))

(assert (=> bs!1062720 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816633) (= lambda!198925 lambda!198847))))

(declare-fun bs!1062733 () Bool)

(assert (= bs!1062733 (and b!4653878 b!4653625)))

(assert (=> bs!1062733 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198925 lambda!198893))))

(declare-fun bs!1062734 () Bool)

(assert (= bs!1062734 (and b!4653878 d!1475566)))

(assert (=> bs!1062734 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816243) (= lambda!198925 lambda!198904))))

(assert (=> bs!1062711 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198925 lambda!198850))))

(declare-fun bs!1062737 () Bool)

(assert (= bs!1062737 (and b!4653878 d!1475590)))

(assert (=> bs!1062737 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816505) (= lambda!198925 lambda!198905))))

(assert (=> bs!1062729 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816578) (= lambda!198925 lambda!198836))))

(declare-fun bs!1062740 () Bool)

(assert (= bs!1062740 (and b!4653878 b!4653624)))

(assert (=> bs!1062740 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198925 lambda!198892))))

(declare-fun bs!1062741 () Bool)

(assert (= bs!1062741 (and b!4653878 b!4653411)))

(assert (=> bs!1062741 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198925 lambda!198860))))

(declare-fun bs!1062742 () Bool)

(assert (= bs!1062742 (and b!4653878 d!1475270)))

(assert (=> bs!1062742 (not (= lambda!198925 lambda!198833))))

(declare-fun bs!1062744 () Bool)

(assert (= bs!1062744 (and b!4653878 b!4653752)))

(assert (=> bs!1062744 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1817033) (= lambda!198925 lambda!198909))))

(declare-fun bs!1062745 () Bool)

(assert (= bs!1062745 (and b!4653878 d!1475502)))

(assert (=> bs!1062745 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816922) (= lambda!198925 lambda!198896))))

(assert (=> bs!1062741 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816751) (= lambda!198925 lambda!198861))))

(assert (=> bs!1062726 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816505) (= lambda!198925 lambda!198820))))

(declare-fun bs!1062746 () Bool)

(assert (= bs!1062746 (and b!4653878 b!4653226)))

(assert (=> bs!1062746 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198925 lambda!198849))))

(declare-fun bs!1062747 () Bool)

(assert (= bs!1062747 (and b!4653878 b!4653221)))

(assert (=> bs!1062747 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198925 lambda!198845))))

(declare-fun bs!1062748 () Bool)

(assert (= bs!1062748 (and b!4653878 d!1475200)))

(assert (=> bs!1062748 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816499) (= lambda!198925 lambda!198821))))

(declare-fun bs!1062749 () Bool)

(assert (= bs!1062749 (and b!4653878 b!4653104)))

(assert (=> bs!1062749 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198925 lambda!198817))))

(assert (=> bs!1062744 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198925 lambda!198908))))

(assert (=> bs!1062733 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816928) (= lambda!198925 lambda!198895))))

(declare-fun bs!1062750 () Bool)

(assert (= bs!1062750 (and b!4653878 d!1475248)))

(assert (=> bs!1062750 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816520) (= lambda!198925 lambda!198827))))

(assert (=> bs!1062719 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816526) (= lambda!198925 lambda!198826))))

(declare-fun bs!1062751 () Bool)

(assert (= bs!1062751 (and b!4653878 b!4653111)))

(assert (=> bs!1062751 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198925 lambda!198824))))

(declare-fun bs!1062752 () Bool)

(assert (= bs!1062752 (and b!4653878 d!1475308)))

(assert (=> bs!1062752 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816651) (= lambda!198925 lambda!198852))))

(declare-fun bs!1062753 () Bool)

(assert (= bs!1062753 (and b!4653878 d!1475292)))

(assert (=> bs!1062753 (not (= lambda!198925 lambda!198844))))

(assert (=> b!4653878 true))

(declare-fun bs!1062754 () Bool)

(declare-fun b!4653879 () Bool)

(assert (= bs!1062754 (and b!4653879 d!1475272)))

(declare-fun lambda!198927 () Int)

(assert (=> bs!1062754 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816572) (= lambda!198927 lambda!198837))))

(declare-fun bs!1062755 () Bool)

(assert (= bs!1062755 (and b!4653879 d!1475494)))

(assert (=> bs!1062755 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816578) (= lambda!198927 lambda!198885))))

(declare-fun bs!1062756 () Bool)

(assert (= bs!1062756 (and b!4653879 b!4653227)))

(assert (=> bs!1062756 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816657) (= lambda!198927 lambda!198851))))

(declare-fun bs!1062757 () Bool)

(assert (= bs!1062757 (and b!4653879 d!1475404)))

(assert (=> bs!1062757 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816745) (= lambda!198927 lambda!198862))))

(declare-fun bs!1062758 () Bool)

(assert (= bs!1062758 (and b!4653879 b!4653410)))

(assert (=> bs!1062758 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198927 lambda!198859))))

(declare-fun bs!1062759 () Bool)

(assert (= bs!1062759 (and b!4653879 d!1475542)))

(assert (=> bs!1062759 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198927 lambda!198903))))

(declare-fun bs!1062760 () Bool)

(assert (= bs!1062760 (and b!4653879 b!4653112)))

(assert (=> bs!1062760 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198927 lambda!198825))))

(declare-fun bs!1062761 () Bool)

(assert (= bs!1062761 (and b!4653879 b!4653222)))

(assert (=> bs!1062761 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198927 lambda!198846))))

(declare-fun bs!1062762 () Bool)

(assert (= bs!1062762 (and b!4653879 d!1475596)))

(assert (=> bs!1062762 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1817027) (= lambda!198927 lambda!198910))))

(declare-fun bs!1062763 () Bool)

(assert (= bs!1062763 (and b!4653879 d!1475300)))

(assert (=> bs!1062763 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816627) (= lambda!198927 lambda!198848))))

(declare-fun bs!1062764 () Bool)

(assert (= bs!1062764 (and b!4653879 b!4653105)))

(assert (=> bs!1062764 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198927 lambda!198818))))

(declare-fun bs!1062765 () Bool)

(assert (= bs!1062765 (and b!4653879 b!4653177)))

(assert (=> bs!1062765 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816243) (= lambda!198927 lambda!198834))))

(declare-fun bs!1062766 () Bool)

(assert (= bs!1062766 (and b!4653879 b!4653178)))

(assert (=> bs!1062766 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816243) (= lambda!198927 lambda!198835))))

(declare-fun bs!1062767 () Bool)

(assert (= bs!1062767 (and b!4653879 b!4653751)))

(assert (=> bs!1062767 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198927 lambda!198907))))

(assert (=> bs!1062761 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816633) (= lambda!198927 lambda!198847))))

(declare-fun bs!1062768 () Bool)

(assert (= bs!1062768 (and b!4653879 b!4653625)))

(assert (=> bs!1062768 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198927 lambda!198893))))

(declare-fun bs!1062769 () Bool)

(assert (= bs!1062769 (and b!4653879 d!1475566)))

(assert (=> bs!1062769 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816243) (= lambda!198927 lambda!198904))))

(assert (=> bs!1062756 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198927 lambda!198850))))

(declare-fun bs!1062770 () Bool)

(assert (= bs!1062770 (and b!4653879 d!1475590)))

(assert (=> bs!1062770 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816505) (= lambda!198927 lambda!198905))))

(assert (=> bs!1062766 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816578) (= lambda!198927 lambda!198836))))

(declare-fun bs!1062771 () Bool)

(assert (= bs!1062771 (and b!4653879 b!4653624)))

(assert (=> bs!1062771 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198927 lambda!198892))))

(declare-fun bs!1062772 () Bool)

(assert (= bs!1062772 (and b!4653879 b!4653411)))

(assert (=> bs!1062772 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198927 lambda!198860))))

(declare-fun bs!1062773 () Bool)

(assert (= bs!1062773 (and b!4653879 d!1475270)))

(assert (=> bs!1062773 (not (= lambda!198927 lambda!198833))))

(declare-fun bs!1062774 () Bool)

(assert (= bs!1062774 (and b!4653879 b!4653752)))

(assert (=> bs!1062774 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1817033) (= lambda!198927 lambda!198909))))

(declare-fun bs!1062775 () Bool)

(assert (= bs!1062775 (and b!4653879 d!1475502)))

(assert (=> bs!1062775 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816922) (= lambda!198927 lambda!198896))))

(declare-fun bs!1062776 () Bool)

(assert (= bs!1062776 (and b!4653879 b!4653878)))

(assert (=> bs!1062776 (= lambda!198927 lambda!198925)))

(assert (=> bs!1062772 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816751) (= lambda!198927 lambda!198861))))

(assert (=> bs!1062764 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816505) (= lambda!198927 lambda!198820))))

(declare-fun bs!1062777 () Bool)

(assert (= bs!1062777 (and b!4653879 b!4653226)))

(assert (=> bs!1062777 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198927 lambda!198849))))

(declare-fun bs!1062778 () Bool)

(assert (= bs!1062778 (and b!4653879 b!4653221)))

(assert (=> bs!1062778 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198927 lambda!198845))))

(declare-fun bs!1062779 () Bool)

(assert (= bs!1062779 (and b!4653879 d!1475200)))

(assert (=> bs!1062779 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816499) (= lambda!198927 lambda!198821))))

(declare-fun bs!1062780 () Bool)

(assert (= bs!1062780 (and b!4653879 b!4653104)))

(assert (=> bs!1062780 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198927 lambda!198817))))

(assert (=> bs!1062774 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198927 lambda!198908))))

(assert (=> bs!1062768 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816928) (= lambda!198927 lambda!198895))))

(declare-fun bs!1062781 () Bool)

(assert (= bs!1062781 (and b!4653879 d!1475248)))

(assert (=> bs!1062781 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816520) (= lambda!198927 lambda!198827))))

(assert (=> bs!1062760 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816526) (= lambda!198927 lambda!198826))))

(declare-fun bs!1062782 () Bool)

(assert (= bs!1062782 (and b!4653879 b!4653111)))

(assert (=> bs!1062782 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (ListMap!4534 Nil!51874)) (= lambda!198927 lambda!198824))))

(declare-fun bs!1062783 () Bool)

(assert (= bs!1062783 (and b!4653879 d!1475308)))

(assert (=> bs!1062783 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1816651) (= lambda!198927 lambda!198852))))

(declare-fun bs!1062784 () Bool)

(assert (= bs!1062784 (and b!4653879 d!1475292)))

(assert (=> bs!1062784 (not (= lambda!198927 lambda!198844))))

(assert (=> b!4653879 true))

(declare-fun lt!1817139 () ListMap!4533)

(declare-fun lambda!198929 () Int)

(assert (=> bs!1062754 (= (= lt!1817139 lt!1816572) (= lambda!198929 lambda!198837))))

(assert (=> bs!1062755 (= (= lt!1817139 lt!1816578) (= lambda!198929 lambda!198885))))

(assert (=> bs!1062756 (= (= lt!1817139 lt!1816657) (= lambda!198929 lambda!198851))))

(assert (=> bs!1062757 (= (= lt!1817139 lt!1816745) (= lambda!198929 lambda!198862))))

(assert (=> bs!1062758 (= (= lt!1817139 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198929 lambda!198859))))

(assert (=> bs!1062759 (= (= lt!1817139 (ListMap!4534 Nil!51874)) (= lambda!198929 lambda!198903))))

(assert (=> bs!1062760 (= (= lt!1817139 (ListMap!4534 Nil!51874)) (= lambda!198929 lambda!198825))))

(assert (=> bs!1062762 (= (= lt!1817139 lt!1817027) (= lambda!198929 lambda!198910))))

(assert (=> bs!1062763 (= (= lt!1817139 lt!1816627) (= lambda!198929 lambda!198848))))

(assert (=> bs!1062764 (= (= lt!1817139 (ListMap!4534 Nil!51874)) (= lambda!198929 lambda!198818))))

(assert (=> bs!1062765 (= (= lt!1817139 lt!1816243) (= lambda!198929 lambda!198834))))

(assert (=> bs!1062766 (= (= lt!1817139 lt!1816243) (= lambda!198929 lambda!198835))))

(assert (=> bs!1062767 (= (= lt!1817139 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198929 lambda!198907))))

(assert (=> bs!1062761 (= (= lt!1817139 lt!1816633) (= lambda!198929 lambda!198847))))

(assert (=> bs!1062768 (= (= lt!1817139 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198929 lambda!198893))))

(assert (=> bs!1062769 (= (= lt!1817139 lt!1816243) (= lambda!198929 lambda!198904))))

(assert (=> bs!1062756 (= (= lt!1817139 (ListMap!4534 Nil!51874)) (= lambda!198929 lambda!198850))))

(assert (=> bs!1062770 (= (= lt!1817139 lt!1816505) (= lambda!198929 lambda!198905))))

(assert (=> bs!1062766 (= (= lt!1817139 lt!1816578) (= lambda!198929 lambda!198836))))

(assert (=> bs!1062771 (= (= lt!1817139 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198929 lambda!198892))))

(assert (=> bs!1062772 (= (= lt!1817139 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198929 lambda!198860))))

(assert (=> bs!1062773 (not (= lambda!198929 lambda!198833))))

(assert (=> bs!1062774 (= (= lt!1817139 lt!1817033) (= lambda!198929 lambda!198909))))

(assert (=> bs!1062775 (= (= lt!1817139 lt!1816922) (= lambda!198929 lambda!198896))))

(assert (=> bs!1062776 (= (= lt!1817139 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198929 lambda!198925))))

(assert (=> bs!1062772 (= (= lt!1817139 lt!1816751) (= lambda!198929 lambda!198861))))

(assert (=> bs!1062764 (= (= lt!1817139 lt!1816505) (= lambda!198929 lambda!198820))))

(assert (=> bs!1062777 (= (= lt!1817139 (ListMap!4534 Nil!51874)) (= lambda!198929 lambda!198849))))

(assert (=> bs!1062778 (= (= lt!1817139 (ListMap!4534 Nil!51874)) (= lambda!198929 lambda!198845))))

(assert (=> bs!1062779 (= (= lt!1817139 lt!1816499) (= lambda!198929 lambda!198821))))

(assert (=> bs!1062780 (= (= lt!1817139 (ListMap!4534 Nil!51874)) (= lambda!198929 lambda!198817))))

(assert (=> bs!1062774 (= (= lt!1817139 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198929 lambda!198908))))

(assert (=> bs!1062768 (= (= lt!1817139 lt!1816928) (= lambda!198929 lambda!198895))))

(assert (=> bs!1062761 (= (= lt!1817139 (ListMap!4534 Nil!51874)) (= lambda!198929 lambda!198846))))

(assert (=> b!4653879 (= (= lt!1817139 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198929 lambda!198927))))

(assert (=> bs!1062781 (= (= lt!1817139 lt!1816520) (= lambda!198929 lambda!198827))))

(assert (=> bs!1062760 (= (= lt!1817139 lt!1816526) (= lambda!198929 lambda!198826))))

(assert (=> bs!1062782 (= (= lt!1817139 (ListMap!4534 Nil!51874)) (= lambda!198929 lambda!198824))))

(assert (=> bs!1062783 (= (= lt!1817139 lt!1816651) (= lambda!198929 lambda!198852))))

(assert (=> bs!1062784 (not (= lambda!198929 lambda!198844))))

(assert (=> b!4653879 true))

(declare-fun bs!1062818 () Bool)

(declare-fun d!1475666 () Bool)

(assert (= bs!1062818 (and d!1475666 d!1475272)))

(declare-fun lt!1817133 () ListMap!4533)

(declare-fun lambda!198930 () Int)

(assert (=> bs!1062818 (= (= lt!1817133 lt!1816572) (= lambda!198930 lambda!198837))))

(declare-fun bs!1062819 () Bool)

(assert (= bs!1062819 (and d!1475666 d!1475494)))

(assert (=> bs!1062819 (= (= lt!1817133 lt!1816578) (= lambda!198930 lambda!198885))))

(declare-fun bs!1062820 () Bool)

(assert (= bs!1062820 (and d!1475666 b!4653227)))

(assert (=> bs!1062820 (= (= lt!1817133 lt!1816657) (= lambda!198930 lambda!198851))))

(declare-fun bs!1062821 () Bool)

(assert (= bs!1062821 (and d!1475666 d!1475404)))

(assert (=> bs!1062821 (= (= lt!1817133 lt!1816745) (= lambda!198930 lambda!198862))))

(declare-fun bs!1062822 () Bool)

(assert (= bs!1062822 (and d!1475666 b!4653410)))

(assert (=> bs!1062822 (= (= lt!1817133 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198930 lambda!198859))))

(declare-fun bs!1062823 () Bool)

(assert (= bs!1062823 (and d!1475666 d!1475542)))

(assert (=> bs!1062823 (= (= lt!1817133 (ListMap!4534 Nil!51874)) (= lambda!198930 lambda!198903))))

(declare-fun bs!1062824 () Bool)

(assert (= bs!1062824 (and d!1475666 b!4653112)))

(assert (=> bs!1062824 (= (= lt!1817133 (ListMap!4534 Nil!51874)) (= lambda!198930 lambda!198825))))

(declare-fun bs!1062825 () Bool)

(assert (= bs!1062825 (and d!1475666 d!1475596)))

(assert (=> bs!1062825 (= (= lt!1817133 lt!1817027) (= lambda!198930 lambda!198910))))

(declare-fun bs!1062826 () Bool)

(assert (= bs!1062826 (and d!1475666 d!1475300)))

(assert (=> bs!1062826 (= (= lt!1817133 lt!1816627) (= lambda!198930 lambda!198848))))

(declare-fun bs!1062827 () Bool)

(assert (= bs!1062827 (and d!1475666 b!4653105)))

(assert (=> bs!1062827 (= (= lt!1817133 (ListMap!4534 Nil!51874)) (= lambda!198930 lambda!198818))))

(declare-fun bs!1062828 () Bool)

(assert (= bs!1062828 (and d!1475666 b!4653177)))

(assert (=> bs!1062828 (= (= lt!1817133 lt!1816243) (= lambda!198930 lambda!198834))))

(declare-fun bs!1062829 () Bool)

(assert (= bs!1062829 (and d!1475666 b!4653178)))

(assert (=> bs!1062829 (= (= lt!1817133 lt!1816243) (= lambda!198930 lambda!198835))))

(declare-fun bs!1062830 () Bool)

(assert (= bs!1062830 (and d!1475666 b!4653751)))

(assert (=> bs!1062830 (= (= lt!1817133 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198930 lambda!198907))))

(declare-fun bs!1062831 () Bool)

(assert (= bs!1062831 (and d!1475666 b!4653222)))

(assert (=> bs!1062831 (= (= lt!1817133 lt!1816633) (= lambda!198930 lambda!198847))))

(declare-fun bs!1062832 () Bool)

(assert (= bs!1062832 (and d!1475666 b!4653625)))

(assert (=> bs!1062832 (= (= lt!1817133 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198930 lambda!198893))))

(declare-fun bs!1062833 () Bool)

(assert (= bs!1062833 (and d!1475666 d!1475566)))

(assert (=> bs!1062833 (= (= lt!1817133 lt!1816243) (= lambda!198930 lambda!198904))))

(assert (=> bs!1062820 (= (= lt!1817133 (ListMap!4534 Nil!51874)) (= lambda!198930 lambda!198850))))

(declare-fun bs!1062834 () Bool)

(assert (= bs!1062834 (and d!1475666 d!1475590)))

(assert (=> bs!1062834 (= (= lt!1817133 lt!1816505) (= lambda!198930 lambda!198905))))

(assert (=> bs!1062829 (= (= lt!1817133 lt!1816578) (= lambda!198930 lambda!198836))))

(declare-fun bs!1062835 () Bool)

(assert (= bs!1062835 (and d!1475666 b!4653624)))

(assert (=> bs!1062835 (= (= lt!1817133 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198930 lambda!198892))))

(declare-fun bs!1062836 () Bool)

(assert (= bs!1062836 (and d!1475666 b!4653411)))

(assert (=> bs!1062836 (= (= lt!1817133 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198930 lambda!198860))))

(declare-fun bs!1062837 () Bool)

(assert (= bs!1062837 (and d!1475666 d!1475270)))

(assert (=> bs!1062837 (not (= lambda!198930 lambda!198833))))

(declare-fun bs!1062838 () Bool)

(assert (= bs!1062838 (and d!1475666 b!4653752)))

(assert (=> bs!1062838 (= (= lt!1817133 lt!1817033) (= lambda!198930 lambda!198909))))

(declare-fun bs!1062839 () Bool)

(assert (= bs!1062839 (and d!1475666 b!4653879)))

(assert (=> bs!1062839 (= (= lt!1817133 lt!1817139) (= lambda!198930 lambda!198929))))

(declare-fun bs!1062840 () Bool)

(assert (= bs!1062840 (and d!1475666 d!1475502)))

(assert (=> bs!1062840 (= (= lt!1817133 lt!1816922) (= lambda!198930 lambda!198896))))

(declare-fun bs!1062841 () Bool)

(assert (= bs!1062841 (and d!1475666 b!4653878)))

(assert (=> bs!1062841 (= (= lt!1817133 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198930 lambda!198925))))

(assert (=> bs!1062836 (= (= lt!1817133 lt!1816751) (= lambda!198930 lambda!198861))))

(assert (=> bs!1062827 (= (= lt!1817133 lt!1816505) (= lambda!198930 lambda!198820))))

(declare-fun bs!1062843 () Bool)

(assert (= bs!1062843 (and d!1475666 b!4653226)))

(assert (=> bs!1062843 (= (= lt!1817133 (ListMap!4534 Nil!51874)) (= lambda!198930 lambda!198849))))

(declare-fun bs!1062844 () Bool)

(assert (= bs!1062844 (and d!1475666 b!4653221)))

(assert (=> bs!1062844 (= (= lt!1817133 (ListMap!4534 Nil!51874)) (= lambda!198930 lambda!198845))))

(declare-fun bs!1062846 () Bool)

(assert (= bs!1062846 (and d!1475666 d!1475200)))

(assert (=> bs!1062846 (= (= lt!1817133 lt!1816499) (= lambda!198930 lambda!198821))))

(declare-fun bs!1062848 () Bool)

(assert (= bs!1062848 (and d!1475666 b!4653104)))

(assert (=> bs!1062848 (= (= lt!1817133 (ListMap!4534 Nil!51874)) (= lambda!198930 lambda!198817))))

(assert (=> bs!1062838 (= (= lt!1817133 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198930 lambda!198908))))

(assert (=> bs!1062832 (= (= lt!1817133 lt!1816928) (= lambda!198930 lambda!198895))))

(assert (=> bs!1062831 (= (= lt!1817133 (ListMap!4534 Nil!51874)) (= lambda!198930 lambda!198846))))

(assert (=> bs!1062839 (= (= lt!1817133 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198930 lambda!198927))))

(declare-fun bs!1062852 () Bool)

(assert (= bs!1062852 (and d!1475666 d!1475248)))

(assert (=> bs!1062852 (= (= lt!1817133 lt!1816520) (= lambda!198930 lambda!198827))))

(assert (=> bs!1062824 (= (= lt!1817133 lt!1816526) (= lambda!198930 lambda!198826))))

(declare-fun bs!1062853 () Bool)

(assert (= bs!1062853 (and d!1475666 b!4653111)))

(assert (=> bs!1062853 (= (= lt!1817133 (ListMap!4534 Nil!51874)) (= lambda!198930 lambda!198824))))

(declare-fun bs!1062854 () Bool)

(assert (= bs!1062854 (and d!1475666 d!1475308)))

(assert (=> bs!1062854 (= (= lt!1817133 lt!1816651) (= lambda!198930 lambda!198852))))

(declare-fun bs!1062855 () Bool)

(assert (= bs!1062855 (and d!1475666 d!1475292)))

(assert (=> bs!1062855 (not (= lambda!198930 lambda!198844))))

(assert (=> d!1475666 true))

(declare-fun b!4653876 () Bool)

(declare-fun res!1956484 () Bool)

(declare-fun e!2903588 () Bool)

(assert (=> b!4653876 (=> (not res!1956484) (not e!2903588))))

(assert (=> b!4653876 (= res!1956484 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) lambda!198930))))

(declare-fun b!4653877 () Bool)

(assert (=> b!4653877 (= e!2903588 (invariantList!1292 (toList!5195 lt!1817133)))))

(declare-fun e!2903589 () ListMap!4533)

(assert (=> b!4653878 (= e!2903589 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)))))

(declare-fun lt!1817141 () Unit!118036)

(declare-fun call!325214 () Unit!118036)

(assert (=> b!4653878 (= lt!1817141 call!325214)))

(declare-fun call!325213 () Bool)

(assert (=> b!4653878 call!325213))

(declare-fun lt!1817150 () Unit!118036)

(assert (=> b!4653878 (= lt!1817150 lt!1817141)))

(declare-fun call!325215 () Bool)

(assert (=> b!4653878 call!325215))

(declare-fun lt!1817136 () Unit!118036)

(declare-fun Unit!118284 () Unit!118036)

(assert (=> b!4653878 (= lt!1817136 Unit!118284)))

(declare-fun c!796578 () Bool)

(declare-fun bm!325208 () Bool)

(assert (=> bm!325208 (= call!325215 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (ite c!796578 lambda!198925 lambda!198929)))))

(assert (=> b!4653879 (= e!2903589 lt!1817139)))

(declare-fun lt!1817142 () ListMap!4533)

(assert (=> b!4653879 (= lt!1817142 (+!1976 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (h!58012 (t!359110 lt!1816247))))))

(assert (=> b!4653879 (= lt!1817139 (addToMapMapFromBucket!1089 (t!359110 (t!359110 lt!1816247)) (+!1976 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) (h!58012 (t!359110 lt!1816247)))))))

(declare-fun lt!1817145 () Unit!118036)

(assert (=> b!4653879 (= lt!1817145 call!325214)))

(assert (=> b!4653879 call!325213))

(declare-fun lt!1817144 () Unit!118036)

(assert (=> b!4653879 (= lt!1817144 lt!1817145)))

(assert (=> b!4653879 (forall!11010 (toList!5195 lt!1817142) lambda!198929)))

(declare-fun lt!1817146 () Unit!118036)

(declare-fun Unit!118285 () Unit!118036)

(assert (=> b!4653879 (= lt!1817146 Unit!118285)))

(assert (=> b!4653879 (forall!11010 (t!359110 (t!359110 lt!1816247)) lambda!198929)))

(declare-fun lt!1817137 () Unit!118036)

(declare-fun Unit!118286 () Unit!118036)

(assert (=> b!4653879 (= lt!1817137 Unit!118286)))

(declare-fun lt!1817143 () Unit!118036)

(declare-fun Unit!118287 () Unit!118036)

(assert (=> b!4653879 (= lt!1817143 Unit!118287)))

(declare-fun lt!1817135 () Unit!118036)

(assert (=> b!4653879 (= lt!1817135 (forallContained!3216 (toList!5195 lt!1817142) lambda!198929 (h!58012 (t!359110 lt!1816247))))))

(assert (=> b!4653879 (contains!15019 lt!1817142 (_1!29781 (h!58012 (t!359110 lt!1816247))))))

(declare-fun lt!1817147 () Unit!118036)

(declare-fun Unit!118288 () Unit!118036)

(assert (=> b!4653879 (= lt!1817147 Unit!118288)))

(assert (=> b!4653879 (contains!15019 lt!1817139 (_1!29781 (h!58012 (t!359110 lt!1816247))))))

(declare-fun lt!1817151 () Unit!118036)

(declare-fun Unit!118289 () Unit!118036)

(assert (=> b!4653879 (= lt!1817151 Unit!118289)))

(assert (=> b!4653879 (forall!11010 (t!359110 lt!1816247) lambda!198929)))

(declare-fun lt!1817153 () Unit!118036)

(declare-fun Unit!118290 () Unit!118036)

(assert (=> b!4653879 (= lt!1817153 Unit!118290)))

(assert (=> b!4653879 (forall!11010 (toList!5195 lt!1817142) lambda!198929)))

(declare-fun lt!1817148 () Unit!118036)

(declare-fun Unit!118291 () Unit!118036)

(assert (=> b!4653879 (= lt!1817148 Unit!118291)))

(declare-fun lt!1817149 () Unit!118036)

(declare-fun Unit!118292 () Unit!118036)

(assert (=> b!4653879 (= lt!1817149 Unit!118292)))

(declare-fun lt!1817140 () Unit!118036)

(assert (=> b!4653879 (= lt!1817140 (addForallContainsKeyThenBeforeAdding!591 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1817139 (_1!29781 (h!58012 (t!359110 lt!1816247))) (_2!29781 (h!58012 (t!359110 lt!1816247)))))))

(assert (=> b!4653879 call!325215))

(declare-fun lt!1817134 () Unit!118036)

(assert (=> b!4653879 (= lt!1817134 lt!1817140)))

(assert (=> b!4653879 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) lambda!198929)))

(declare-fun lt!1817138 () Unit!118036)

(declare-fun Unit!118294 () Unit!118036)

(assert (=> b!4653879 (= lt!1817138 Unit!118294)))

(declare-fun res!1956483 () Bool)

(assert (=> b!4653879 (= res!1956483 (forall!11010 (t!359110 lt!1816247) lambda!198929))))

(declare-fun e!2903590 () Bool)

(assert (=> b!4653879 (=> (not res!1956483) (not e!2903590))))

(assert (=> b!4653879 e!2903590))

(declare-fun lt!1817152 () Unit!118036)

(declare-fun Unit!118295 () Unit!118036)

(assert (=> b!4653879 (= lt!1817152 Unit!118295)))

(assert (=> d!1475666 e!2903588))

(declare-fun res!1956482 () Bool)

(assert (=> d!1475666 (=> (not res!1956482) (not e!2903588))))

(assert (=> d!1475666 (= res!1956482 (forall!11010 (t!359110 lt!1816247) lambda!198930))))

(assert (=> d!1475666 (= lt!1817133 e!2903589)))

(assert (=> d!1475666 (= c!796578 ((_ is Nil!51874) (t!359110 lt!1816247)))))

(assert (=> d!1475666 (noDuplicateKeys!1632 (t!359110 lt!1816247))))

(assert (=> d!1475666 (= (addToMapMapFromBucket!1089 (t!359110 lt!1816247) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) lt!1817133)))

(declare-fun bm!325209 () Bool)

(assert (=> bm!325209 (= call!325213 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (ite c!796578 lambda!198925 lambda!198927)))))

(declare-fun bm!325210 () Bool)

(assert (=> bm!325210 (= call!325214 (lemmaContainsAllItsOwnKeys!592 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))))))

(declare-fun b!4653880 () Bool)

(assert (=> b!4653880 (= e!2903590 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) lambda!198929))))

(assert (= (and d!1475666 c!796578) b!4653878))

(assert (= (and d!1475666 (not c!796578)) b!4653879))

(assert (= (and b!4653879 res!1956483) b!4653880))

(assert (= (or b!4653878 b!4653879) bm!325210))

(assert (= (or b!4653878 b!4653879) bm!325209))

(assert (= (or b!4653878 b!4653879) bm!325208))

(assert (= (and d!1475666 res!1956482) b!4653876))

(assert (= (and b!4653876 res!1956484) b!4653877))

(declare-fun m!5531891 () Bool)

(assert (=> d!1475666 m!5531891))

(assert (=> d!1475666 m!5530801))

(declare-fun m!5531893 () Bool)

(assert (=> bm!325209 m!5531893))

(declare-fun m!5531895 () Bool)

(assert (=> b!4653877 m!5531895))

(declare-fun m!5531899 () Bool)

(assert (=> b!4653876 m!5531899))

(assert (=> bm!325210 m!5530359))

(declare-fun m!5531903 () Bool)

(assert (=> bm!325210 m!5531903))

(declare-fun m!5531905 () Bool)

(assert (=> bm!325208 m!5531905))

(declare-fun m!5531907 () Bool)

(assert (=> b!4653880 m!5531907))

(assert (=> b!4653879 m!5530359))

(declare-fun m!5531909 () Bool)

(assert (=> b!4653879 m!5531909))

(declare-fun m!5531911 () Bool)

(assert (=> b!4653879 m!5531911))

(assert (=> b!4653879 m!5531911))

(declare-fun m!5531913 () Bool)

(assert (=> b!4653879 m!5531913))

(declare-fun m!5531915 () Bool)

(assert (=> b!4653879 m!5531915))

(declare-fun m!5531917 () Bool)

(assert (=> b!4653879 m!5531917))

(assert (=> b!4653879 m!5531915))

(declare-fun m!5531919 () Bool)

(assert (=> b!4653879 m!5531919))

(declare-fun m!5531921 () Bool)

(assert (=> b!4653879 m!5531921))

(declare-fun m!5531923 () Bool)

(assert (=> b!4653879 m!5531923))

(assert (=> b!4653879 m!5531907))

(declare-fun m!5531927 () Bool)

(assert (=> b!4653879 m!5531927))

(assert (=> b!4653879 m!5530359))

(assert (=> b!4653879 m!5531919))

(assert (=> b!4653112 d!1475666))

(declare-fun d!1475682 () Bool)

(declare-fun res!1956497 () Bool)

(declare-fun e!2903604 () Bool)

(assert (=> d!1475682 (=> res!1956497 e!2903604)))

(assert (=> d!1475682 (= res!1956497 ((_ is Nil!51874) (t!359110 lt!1816247)))))

(assert (=> d!1475682 (= (forall!11010 (t!359110 lt!1816247) lambda!198826) e!2903604)))

(declare-fun b!4653895 () Bool)

(declare-fun e!2903605 () Bool)

(assert (=> b!4653895 (= e!2903604 e!2903605)))

(declare-fun res!1956498 () Bool)

(assert (=> b!4653895 (=> (not res!1956498) (not e!2903605))))

(assert (=> b!4653895 (= res!1956498 (dynLambda!21580 lambda!198826 (h!58012 (t!359110 lt!1816247))))))

(declare-fun b!4653896 () Bool)

(assert (=> b!4653896 (= e!2903605 (forall!11010 (t!359110 (t!359110 lt!1816247)) lambda!198826))))

(assert (= (and d!1475682 (not res!1956497)) b!4653895))

(assert (= (and b!4653895 res!1956498) b!4653896))

(declare-fun b_lambda!173529 () Bool)

(assert (=> (not b_lambda!173529) (not b!4653895)))

(declare-fun m!5531935 () Bool)

(assert (=> b!4653895 m!5531935))

(declare-fun m!5531937 () Bool)

(assert (=> b!4653896 m!5531937))

(assert (=> b!4653112 d!1475682))

(declare-fun b!4653899 () Bool)

(declare-fun e!2903613 () Unit!118036)

(declare-fun lt!1817160 () Unit!118036)

(assert (=> b!4653899 (= e!2903613 lt!1817160)))

(declare-fun lt!1817155 () Unit!118036)

(assert (=> b!4653899 (= lt!1817155 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816529) (_1!29781 (h!58012 lt!1816247))))))

(assert (=> b!4653899 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816529) (_1!29781 (h!58012 lt!1816247))))))

(declare-fun lt!1817157 () Unit!118036)

(assert (=> b!4653899 (= lt!1817157 lt!1817155)))

(assert (=> b!4653899 (= lt!1817160 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816529) (_1!29781 (h!58012 lt!1816247))))))

(declare-fun call!325216 () Bool)

(assert (=> b!4653899 call!325216))

(declare-fun b!4653900 () Bool)

(declare-fun e!2903611 () List!52001)

(assert (=> b!4653900 (= e!2903611 (getKeysList!743 (toList!5195 lt!1816529)))))

(declare-fun b!4653901 () Bool)

(declare-fun e!2903610 () Unit!118036)

(assert (=> b!4653901 (= e!2903613 e!2903610)))

(declare-fun c!796581 () Bool)

(assert (=> b!4653901 (= c!796581 call!325216)))

(declare-fun b!4653902 () Bool)

(declare-fun e!2903608 () Bool)

(assert (=> b!4653902 (= e!2903608 (contains!15021 (keys!18370 lt!1816529) (_1!29781 (h!58012 lt!1816247))))))

(declare-fun b!4653903 () Bool)

(declare-fun e!2903609 () Bool)

(assert (=> b!4653903 (= e!2903609 e!2903608)))

(declare-fun res!1956502 () Bool)

(assert (=> b!4653903 (=> (not res!1956502) (not e!2903608))))

(assert (=> b!4653903 (= res!1956502 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816529) (_1!29781 (h!58012 lt!1816247)))))))

(declare-fun bm!325211 () Bool)

(assert (=> bm!325211 (= call!325216 (contains!15021 e!2903611 (_1!29781 (h!58012 lt!1816247))))))

(declare-fun c!796580 () Bool)

(declare-fun c!796582 () Bool)

(assert (=> bm!325211 (= c!796580 c!796582)))

(declare-fun b!4653904 () Bool)

(assert (=> b!4653904 (= e!2903611 (keys!18370 lt!1816529))))

(declare-fun b!4653905 () Bool)

(assert (=> b!4653905 false))

(declare-fun lt!1817161 () Unit!118036)

(declare-fun lt!1817159 () Unit!118036)

(assert (=> b!4653905 (= lt!1817161 lt!1817159)))

(assert (=> b!4653905 (containsKey!2711 (toList!5195 lt!1816529) (_1!29781 (h!58012 lt!1816247)))))

(assert (=> b!4653905 (= lt!1817159 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816529) (_1!29781 (h!58012 lt!1816247))))))

(declare-fun Unit!118297 () Unit!118036)

(assert (=> b!4653905 (= e!2903610 Unit!118297)))

(declare-fun d!1475686 () Bool)

(assert (=> d!1475686 e!2903609))

(declare-fun res!1956503 () Bool)

(assert (=> d!1475686 (=> res!1956503 e!2903609)))

(declare-fun e!2903612 () Bool)

(assert (=> d!1475686 (= res!1956503 e!2903612)))

(declare-fun res!1956501 () Bool)

(assert (=> d!1475686 (=> (not res!1956501) (not e!2903612))))

(declare-fun lt!1817162 () Bool)

(assert (=> d!1475686 (= res!1956501 (not lt!1817162))))

(declare-fun lt!1817156 () Bool)

(assert (=> d!1475686 (= lt!1817162 lt!1817156)))

(declare-fun lt!1817158 () Unit!118036)

(assert (=> d!1475686 (= lt!1817158 e!2903613)))

(assert (=> d!1475686 (= c!796582 lt!1817156)))

(assert (=> d!1475686 (= lt!1817156 (containsKey!2711 (toList!5195 lt!1816529) (_1!29781 (h!58012 lt!1816247))))))

(assert (=> d!1475686 (= (contains!15019 lt!1816529 (_1!29781 (h!58012 lt!1816247))) lt!1817162)))

(declare-fun b!4653906 () Bool)

(declare-fun Unit!118298 () Unit!118036)

(assert (=> b!4653906 (= e!2903610 Unit!118298)))

(declare-fun b!4653907 () Bool)

(assert (=> b!4653907 (= e!2903612 (not (contains!15021 (keys!18370 lt!1816529) (_1!29781 (h!58012 lt!1816247)))))))

(assert (= (and d!1475686 c!796582) b!4653899))

(assert (= (and d!1475686 (not c!796582)) b!4653901))

(assert (= (and b!4653901 c!796581) b!4653905))

(assert (= (and b!4653901 (not c!796581)) b!4653906))

(assert (= (or b!4653899 b!4653901) bm!325211))

(assert (= (and bm!325211 c!796580) b!4653900))

(assert (= (and bm!325211 (not c!796580)) b!4653904))

(assert (= (and d!1475686 res!1956501) b!4653907))

(assert (= (and d!1475686 (not res!1956503)) b!4653903))

(assert (= (and b!4653903 res!1956502) b!4653902))

(declare-fun m!5531939 () Bool)

(assert (=> b!4653907 m!5531939))

(assert (=> b!4653907 m!5531939))

(declare-fun m!5531941 () Bool)

(assert (=> b!4653907 m!5531941))

(declare-fun m!5531943 () Bool)

(assert (=> b!4653899 m!5531943))

(declare-fun m!5531945 () Bool)

(assert (=> b!4653899 m!5531945))

(assert (=> b!4653899 m!5531945))

(declare-fun m!5531947 () Bool)

(assert (=> b!4653899 m!5531947))

(declare-fun m!5531949 () Bool)

(assert (=> b!4653899 m!5531949))

(declare-fun m!5531951 () Bool)

(assert (=> bm!325211 m!5531951))

(assert (=> b!4653904 m!5531939))

(declare-fun m!5531953 () Bool)

(assert (=> d!1475686 m!5531953))

(assert (=> b!4653905 m!5531953))

(declare-fun m!5531955 () Bool)

(assert (=> b!4653905 m!5531955))

(assert (=> b!4653903 m!5531945))

(assert (=> b!4653903 m!5531945))

(assert (=> b!4653903 m!5531947))

(assert (=> b!4653902 m!5531939))

(assert (=> b!4653902 m!5531939))

(assert (=> b!4653902 m!5531941))

(declare-fun m!5531961 () Bool)

(assert (=> b!4653900 m!5531961))

(assert (=> b!4653112 d!1475686))

(declare-fun d!1475690 () Bool)

(declare-fun res!1956504 () Bool)

(declare-fun e!2903614 () Bool)

(assert (=> d!1475690 (=> res!1956504 e!2903614)))

(assert (=> d!1475690 (= res!1956504 ((_ is Nil!51874) (toList!5195 lt!1816529)))))

(assert (=> d!1475690 (= (forall!11010 (toList!5195 lt!1816529) lambda!198826) e!2903614)))

(declare-fun b!4653908 () Bool)

(declare-fun e!2903615 () Bool)

(assert (=> b!4653908 (= e!2903614 e!2903615)))

(declare-fun res!1956505 () Bool)

(assert (=> b!4653908 (=> (not res!1956505) (not e!2903615))))

(assert (=> b!4653908 (= res!1956505 (dynLambda!21580 lambda!198826 (h!58012 (toList!5195 lt!1816529))))))

(declare-fun b!4653909 () Bool)

(assert (=> b!4653909 (= e!2903615 (forall!11010 (t!359110 (toList!5195 lt!1816529)) lambda!198826))))

(assert (= (and d!1475690 (not res!1956504)) b!4653908))

(assert (= (and b!4653908 res!1956505) b!4653909))

(declare-fun b_lambda!173533 () Bool)

(assert (=> (not b_lambda!173533) (not b!4653908)))

(declare-fun m!5531963 () Bool)

(assert (=> b!4653908 m!5531963))

(declare-fun m!5531965 () Bool)

(assert (=> b!4653909 m!5531965))

(assert (=> b!4653112 d!1475690))

(declare-fun b!4653915 () Bool)

(declare-fun e!2903624 () Unit!118036)

(declare-fun lt!1817189 () Unit!118036)

(assert (=> b!4653915 (= e!2903624 lt!1817189)))

(declare-fun lt!1817184 () Unit!118036)

(assert (=> b!4653915 (= lt!1817184 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816526) (_1!29781 (h!58012 lt!1816247))))))

(assert (=> b!4653915 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816526) (_1!29781 (h!58012 lt!1816247))))))

(declare-fun lt!1817186 () Unit!118036)

(assert (=> b!4653915 (= lt!1817186 lt!1817184)))

(assert (=> b!4653915 (= lt!1817189 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816526) (_1!29781 (h!58012 lt!1816247))))))

(declare-fun call!325220 () Bool)

(assert (=> b!4653915 call!325220))

(declare-fun b!4653916 () Bool)

(declare-fun e!2903622 () List!52001)

(assert (=> b!4653916 (= e!2903622 (getKeysList!743 (toList!5195 lt!1816526)))))

(declare-fun b!4653917 () Bool)

(declare-fun e!2903621 () Unit!118036)

(assert (=> b!4653917 (= e!2903624 e!2903621)))

(declare-fun c!796585 () Bool)

(assert (=> b!4653917 (= c!796585 call!325220)))

(declare-fun b!4653918 () Bool)

(declare-fun e!2903619 () Bool)

(assert (=> b!4653918 (= e!2903619 (contains!15021 (keys!18370 lt!1816526) (_1!29781 (h!58012 lt!1816247))))))

(declare-fun b!4653919 () Bool)

(declare-fun e!2903620 () Bool)

(assert (=> b!4653919 (= e!2903620 e!2903619)))

(declare-fun res!1956510 () Bool)

(assert (=> b!4653919 (=> (not res!1956510) (not e!2903619))))

(assert (=> b!4653919 (= res!1956510 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816526) (_1!29781 (h!58012 lt!1816247)))))))

(declare-fun bm!325215 () Bool)

(assert (=> bm!325215 (= call!325220 (contains!15021 e!2903622 (_1!29781 (h!58012 lt!1816247))))))

(declare-fun c!796584 () Bool)

(declare-fun c!796586 () Bool)

(assert (=> bm!325215 (= c!796584 c!796586)))

(declare-fun b!4653920 () Bool)

(assert (=> b!4653920 (= e!2903622 (keys!18370 lt!1816526))))

(declare-fun b!4653921 () Bool)

(assert (=> b!4653921 false))

(declare-fun lt!1817190 () Unit!118036)

(declare-fun lt!1817188 () Unit!118036)

(assert (=> b!4653921 (= lt!1817190 lt!1817188)))

(assert (=> b!4653921 (containsKey!2711 (toList!5195 lt!1816526) (_1!29781 (h!58012 lt!1816247)))))

(assert (=> b!4653921 (= lt!1817188 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816526) (_1!29781 (h!58012 lt!1816247))))))

(declare-fun Unit!118299 () Unit!118036)

(assert (=> b!4653921 (= e!2903621 Unit!118299)))

(declare-fun d!1475692 () Bool)

(assert (=> d!1475692 e!2903620))

(declare-fun res!1956511 () Bool)

(assert (=> d!1475692 (=> res!1956511 e!2903620)))

(declare-fun e!2903623 () Bool)

(assert (=> d!1475692 (= res!1956511 e!2903623)))

(declare-fun res!1956509 () Bool)

(assert (=> d!1475692 (=> (not res!1956509) (not e!2903623))))

(declare-fun lt!1817191 () Bool)

(assert (=> d!1475692 (= res!1956509 (not lt!1817191))))

(declare-fun lt!1817185 () Bool)

(assert (=> d!1475692 (= lt!1817191 lt!1817185)))

(declare-fun lt!1817187 () Unit!118036)

(assert (=> d!1475692 (= lt!1817187 e!2903624)))

(assert (=> d!1475692 (= c!796586 lt!1817185)))

(assert (=> d!1475692 (= lt!1817185 (containsKey!2711 (toList!5195 lt!1816526) (_1!29781 (h!58012 lt!1816247))))))

(assert (=> d!1475692 (= (contains!15019 lt!1816526 (_1!29781 (h!58012 lt!1816247))) lt!1817191)))

(declare-fun b!4653922 () Bool)

(declare-fun Unit!118300 () Unit!118036)

(assert (=> b!4653922 (= e!2903621 Unit!118300)))

(declare-fun b!4653923 () Bool)

(assert (=> b!4653923 (= e!2903623 (not (contains!15021 (keys!18370 lt!1816526) (_1!29781 (h!58012 lt!1816247)))))))

(assert (= (and d!1475692 c!796586) b!4653915))

(assert (= (and d!1475692 (not c!796586)) b!4653917))

(assert (= (and b!4653917 c!796585) b!4653921))

(assert (= (and b!4653917 (not c!796585)) b!4653922))

(assert (= (or b!4653915 b!4653917) bm!325215))

(assert (= (and bm!325215 c!796584) b!4653916))

(assert (= (and bm!325215 (not c!796584)) b!4653920))

(assert (= (and d!1475692 res!1956509) b!4653923))

(assert (= (and d!1475692 (not res!1956511)) b!4653919))

(assert (= (and b!4653919 res!1956510) b!4653918))

(declare-fun m!5531967 () Bool)

(assert (=> b!4653923 m!5531967))

(assert (=> b!4653923 m!5531967))

(declare-fun m!5531969 () Bool)

(assert (=> b!4653923 m!5531969))

(declare-fun m!5531971 () Bool)

(assert (=> b!4653915 m!5531971))

(declare-fun m!5531973 () Bool)

(assert (=> b!4653915 m!5531973))

(assert (=> b!4653915 m!5531973))

(declare-fun m!5531975 () Bool)

(assert (=> b!4653915 m!5531975))

(declare-fun m!5531977 () Bool)

(assert (=> b!4653915 m!5531977))

(declare-fun m!5531979 () Bool)

(assert (=> bm!325215 m!5531979))

(assert (=> b!4653920 m!5531967))

(declare-fun m!5531981 () Bool)

(assert (=> d!1475692 m!5531981))

(assert (=> b!4653921 m!5531981))

(declare-fun m!5531983 () Bool)

(assert (=> b!4653921 m!5531983))

(assert (=> b!4653919 m!5531973))

(assert (=> b!4653919 m!5531973))

(assert (=> b!4653919 m!5531975))

(assert (=> b!4653918 m!5531967))

(assert (=> b!4653918 m!5531967))

(assert (=> b!4653918 m!5531969))

(declare-fun m!5531985 () Bool)

(assert (=> b!4653916 m!5531985))

(assert (=> b!4653112 d!1475692))

(declare-fun d!1475694 () Bool)

(declare-fun res!1956512 () Bool)

(declare-fun e!2903625 () Bool)

(assert (=> d!1475694 (=> res!1956512 e!2903625)))

(assert (=> d!1475694 (= res!1956512 ((_ is Nil!51874) lt!1816247))))

(assert (=> d!1475694 (= (forall!11010 lt!1816247 lambda!198826) e!2903625)))

(declare-fun b!4653924 () Bool)

(declare-fun e!2903626 () Bool)

(assert (=> b!4653924 (= e!2903625 e!2903626)))

(declare-fun res!1956513 () Bool)

(assert (=> b!4653924 (=> (not res!1956513) (not e!2903626))))

(assert (=> b!4653924 (= res!1956513 (dynLambda!21580 lambda!198826 (h!58012 lt!1816247)))))

(declare-fun b!4653925 () Bool)

(assert (=> b!4653925 (= e!2903626 (forall!11010 (t!359110 lt!1816247) lambda!198826))))

(assert (= (and d!1475694 (not res!1956512)) b!4653924))

(assert (= (and b!4653924 res!1956513) b!4653925))

(declare-fun b_lambda!173535 () Bool)

(assert (=> (not b_lambda!173535) (not b!4653924)))

(declare-fun m!5531987 () Bool)

(assert (=> b!4653924 m!5531987))

(assert (=> b!4653925 m!5530363))

(assert (=> b!4653112 d!1475694))

(declare-fun d!1475696 () Bool)

(declare-fun e!2903627 () Bool)

(assert (=> d!1475696 e!2903627))

(declare-fun res!1956514 () Bool)

(assert (=> d!1475696 (=> (not res!1956514) (not e!2903627))))

(declare-fun lt!1817193 () ListMap!4533)

(assert (=> d!1475696 (= res!1956514 (contains!15019 lt!1817193 (_1!29781 (h!58012 lt!1816247))))))

(declare-fun lt!1817194 () List!51998)

(assert (=> d!1475696 (= lt!1817193 (ListMap!4534 lt!1817194))))

(declare-fun lt!1817195 () Unit!118036)

(declare-fun lt!1817192 () Unit!118036)

(assert (=> d!1475696 (= lt!1817195 lt!1817192)))

(assert (=> d!1475696 (= (getValueByKey!1603 lt!1817194 (_1!29781 (h!58012 lt!1816247))) (Some!11814 (_2!29781 (h!58012 lt!1816247))))))

(assert (=> d!1475696 (= lt!1817192 (lemmaContainsTupThenGetReturnValue!920 lt!1817194 (_1!29781 (h!58012 lt!1816247)) (_2!29781 (h!58012 lt!1816247))))))

(assert (=> d!1475696 (= lt!1817194 (insertNoDuplicatedKeys!428 (toList!5195 (ListMap!4534 Nil!51874)) (_1!29781 (h!58012 lt!1816247)) (_2!29781 (h!58012 lt!1816247))))))

(assert (=> d!1475696 (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247)) lt!1817193)))

(declare-fun b!4653926 () Bool)

(declare-fun res!1956515 () Bool)

(assert (=> b!4653926 (=> (not res!1956515) (not e!2903627))))

(assert (=> b!4653926 (= res!1956515 (= (getValueByKey!1603 (toList!5195 lt!1817193) (_1!29781 (h!58012 lt!1816247))) (Some!11814 (_2!29781 (h!58012 lt!1816247)))))))

(declare-fun b!4653927 () Bool)

(assert (=> b!4653927 (= e!2903627 (contains!15023 (toList!5195 lt!1817193) (h!58012 lt!1816247)))))

(assert (= (and d!1475696 res!1956514) b!4653926))

(assert (= (and b!4653926 res!1956515) b!4653927))

(declare-fun m!5531989 () Bool)

(assert (=> d!1475696 m!5531989))

(declare-fun m!5531991 () Bool)

(assert (=> d!1475696 m!5531991))

(declare-fun m!5531993 () Bool)

(assert (=> d!1475696 m!5531993))

(declare-fun m!5531995 () Bool)

(assert (=> d!1475696 m!5531995))

(declare-fun m!5531997 () Bool)

(assert (=> b!4653926 m!5531997))

(declare-fun m!5531999 () Bool)

(assert (=> b!4653927 m!5531999))

(assert (=> b!4653112 d!1475696))

(declare-fun d!1475698 () Bool)

(assert (=> d!1475698 (dynLambda!21580 lambda!198826 (h!58012 lt!1816247))))

(declare-fun lt!1817196 () Unit!118036)

(assert (=> d!1475698 (= lt!1817196 (choose!31973 (toList!5195 lt!1816529) lambda!198826 (h!58012 lt!1816247)))))

(declare-fun e!2903628 () Bool)

(assert (=> d!1475698 e!2903628))

(declare-fun res!1956516 () Bool)

(assert (=> d!1475698 (=> (not res!1956516) (not e!2903628))))

(assert (=> d!1475698 (= res!1956516 (forall!11010 (toList!5195 lt!1816529) lambda!198826))))

(assert (=> d!1475698 (= (forallContained!3216 (toList!5195 lt!1816529) lambda!198826 (h!58012 lt!1816247)) lt!1817196)))

(declare-fun b!4653928 () Bool)

(assert (=> b!4653928 (= e!2903628 (contains!15023 (toList!5195 lt!1816529) (h!58012 lt!1816247)))))

(assert (= (and d!1475698 res!1956516) b!4653928))

(declare-fun b_lambda!173537 () Bool)

(assert (=> (not b_lambda!173537) (not d!1475698)))

(assert (=> d!1475698 m!5531987))

(declare-fun m!5532001 () Bool)

(assert (=> d!1475698 m!5532001))

(assert (=> d!1475698 m!5530355))

(declare-fun m!5532003 () Bool)

(assert (=> b!4653928 m!5532003))

(assert (=> b!4653112 d!1475698))

(assert (=> b!4653112 d!1475448))

(declare-fun bs!1062889 () Bool)

(declare-fun d!1475700 () Bool)

(assert (= bs!1062889 (and d!1475700 d!1475272)))

(declare-fun lambda!198933 () Int)

(assert (=> bs!1062889 (= (= lt!1816526 lt!1816572) (= lambda!198933 lambda!198837))))

(declare-fun bs!1062891 () Bool)

(assert (= bs!1062891 (and d!1475700 d!1475494)))

(assert (=> bs!1062891 (= (= lt!1816526 lt!1816578) (= lambda!198933 lambda!198885))))

(declare-fun bs!1062892 () Bool)

(assert (= bs!1062892 (and d!1475700 b!4653227)))

(assert (=> bs!1062892 (= (= lt!1816526 lt!1816657) (= lambda!198933 lambda!198851))))

(declare-fun bs!1062893 () Bool)

(assert (= bs!1062893 (and d!1475700 d!1475404)))

(assert (=> bs!1062893 (= (= lt!1816526 lt!1816745) (= lambda!198933 lambda!198862))))

(declare-fun bs!1062894 () Bool)

(assert (= bs!1062894 (and d!1475700 b!4653410)))

(assert (=> bs!1062894 (= (= lt!1816526 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198933 lambda!198859))))

(declare-fun bs!1062895 () Bool)

(assert (= bs!1062895 (and d!1475700 d!1475666)))

(assert (=> bs!1062895 (= (= lt!1816526 lt!1817133) (= lambda!198933 lambda!198930))))

(declare-fun bs!1062896 () Bool)

(assert (= bs!1062896 (and d!1475700 d!1475542)))

(assert (=> bs!1062896 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198933 lambda!198903))))

(declare-fun bs!1062897 () Bool)

(assert (= bs!1062897 (and d!1475700 b!4653112)))

(assert (=> bs!1062897 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198933 lambda!198825))))

(declare-fun bs!1062898 () Bool)

(assert (= bs!1062898 (and d!1475700 d!1475596)))

(assert (=> bs!1062898 (= (= lt!1816526 lt!1817027) (= lambda!198933 lambda!198910))))

(declare-fun bs!1062900 () Bool)

(assert (= bs!1062900 (and d!1475700 d!1475300)))

(assert (=> bs!1062900 (= (= lt!1816526 lt!1816627) (= lambda!198933 lambda!198848))))

(declare-fun bs!1062902 () Bool)

(assert (= bs!1062902 (and d!1475700 b!4653105)))

(assert (=> bs!1062902 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198933 lambda!198818))))

(declare-fun bs!1062904 () Bool)

(assert (= bs!1062904 (and d!1475700 b!4653177)))

(assert (=> bs!1062904 (= (= lt!1816526 lt!1816243) (= lambda!198933 lambda!198834))))

(declare-fun bs!1062906 () Bool)

(assert (= bs!1062906 (and d!1475700 b!4653178)))

(assert (=> bs!1062906 (= (= lt!1816526 lt!1816243) (= lambda!198933 lambda!198835))))

(declare-fun bs!1062908 () Bool)

(assert (= bs!1062908 (and d!1475700 b!4653751)))

(assert (=> bs!1062908 (= (= lt!1816526 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198933 lambda!198907))))

(declare-fun bs!1062910 () Bool)

(assert (= bs!1062910 (and d!1475700 b!4653222)))

(assert (=> bs!1062910 (= (= lt!1816526 lt!1816633) (= lambda!198933 lambda!198847))))

(declare-fun bs!1062912 () Bool)

(assert (= bs!1062912 (and d!1475700 b!4653625)))

(assert (=> bs!1062912 (= (= lt!1816526 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198933 lambda!198893))))

(declare-fun bs!1062914 () Bool)

(assert (= bs!1062914 (and d!1475700 d!1475566)))

(assert (=> bs!1062914 (= (= lt!1816526 lt!1816243) (= lambda!198933 lambda!198904))))

(assert (=> bs!1062892 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198933 lambda!198850))))

(declare-fun bs!1062917 () Bool)

(assert (= bs!1062917 (and d!1475700 d!1475590)))

(assert (=> bs!1062917 (= (= lt!1816526 lt!1816505) (= lambda!198933 lambda!198905))))

(assert (=> bs!1062906 (= (= lt!1816526 lt!1816578) (= lambda!198933 lambda!198836))))

(declare-fun bs!1062919 () Bool)

(assert (= bs!1062919 (and d!1475700 b!4653624)))

(assert (=> bs!1062919 (= (= lt!1816526 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198933 lambda!198892))))

(declare-fun bs!1062921 () Bool)

(assert (= bs!1062921 (and d!1475700 b!4653411)))

(assert (=> bs!1062921 (= (= lt!1816526 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198933 lambda!198860))))

(declare-fun bs!1062923 () Bool)

(assert (= bs!1062923 (and d!1475700 d!1475270)))

(assert (=> bs!1062923 (not (= lambda!198933 lambda!198833))))

(declare-fun bs!1062925 () Bool)

(assert (= bs!1062925 (and d!1475700 b!4653752)))

(assert (=> bs!1062925 (= (= lt!1816526 lt!1817033) (= lambda!198933 lambda!198909))))

(declare-fun bs!1062927 () Bool)

(assert (= bs!1062927 (and d!1475700 b!4653879)))

(assert (=> bs!1062927 (= (= lt!1816526 lt!1817139) (= lambda!198933 lambda!198929))))

(declare-fun bs!1062929 () Bool)

(assert (= bs!1062929 (and d!1475700 d!1475502)))

(assert (=> bs!1062929 (= (= lt!1816526 lt!1816922) (= lambda!198933 lambda!198896))))

(declare-fun bs!1062931 () Bool)

(assert (= bs!1062931 (and d!1475700 b!4653878)))

(assert (=> bs!1062931 (= (= lt!1816526 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198933 lambda!198925))))

(assert (=> bs!1062921 (= (= lt!1816526 lt!1816751) (= lambda!198933 lambda!198861))))

(assert (=> bs!1062902 (= (= lt!1816526 lt!1816505) (= lambda!198933 lambda!198820))))

(declare-fun bs!1062934 () Bool)

(assert (= bs!1062934 (and d!1475700 b!4653226)))

(assert (=> bs!1062934 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198933 lambda!198849))))

(declare-fun bs!1062935 () Bool)

(assert (= bs!1062935 (and d!1475700 b!4653221)))

(assert (=> bs!1062935 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198933 lambda!198845))))

(declare-fun bs!1062937 () Bool)

(assert (= bs!1062937 (and d!1475700 d!1475200)))

(assert (=> bs!1062937 (= (= lt!1816526 lt!1816499) (= lambda!198933 lambda!198821))))

(declare-fun bs!1062939 () Bool)

(assert (= bs!1062939 (and d!1475700 b!4653104)))

(assert (=> bs!1062939 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198933 lambda!198817))))

(assert (=> bs!1062925 (= (= lt!1816526 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198933 lambda!198908))))

(assert (=> bs!1062912 (= (= lt!1816526 lt!1816928) (= lambda!198933 lambda!198895))))

(assert (=> bs!1062910 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198933 lambda!198846))))

(assert (=> bs!1062927 (= (= lt!1816526 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198933 lambda!198927))))

(declare-fun bs!1062944 () Bool)

(assert (= bs!1062944 (and d!1475700 d!1475248)))

(assert (=> bs!1062944 (= (= lt!1816526 lt!1816520) (= lambda!198933 lambda!198827))))

(assert (=> bs!1062897 (= lambda!198933 lambda!198826)))

(declare-fun bs!1062946 () Bool)

(assert (= bs!1062946 (and d!1475700 b!4653111)))

(assert (=> bs!1062946 (= (= lt!1816526 (ListMap!4534 Nil!51874)) (= lambda!198933 lambda!198824))))

(declare-fun bs!1062948 () Bool)

(assert (= bs!1062948 (and d!1475700 d!1475308)))

(assert (=> bs!1062948 (= (= lt!1816526 lt!1816651) (= lambda!198933 lambda!198852))))

(declare-fun bs!1062950 () Bool)

(assert (= bs!1062950 (and d!1475700 d!1475292)))

(assert (=> bs!1062950 (not (= lambda!198933 lambda!198844))))

(assert (=> d!1475700 true))

(assert (=> d!1475700 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198933)))

(declare-fun lt!1817197 () Unit!118036)

(assert (=> d!1475700 (= lt!1817197 (choose!31974 (ListMap!4534 Nil!51874) lt!1816526 (_1!29781 (h!58012 lt!1816247)) (_2!29781 (h!58012 lt!1816247))))))

(assert (=> d!1475700 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (tuple2!52975 (_1!29781 (h!58012 lt!1816247)) (_2!29781 (h!58012 lt!1816247))))) lambda!198933)))

(assert (=> d!1475700 (= (addForallContainsKeyThenBeforeAdding!591 (ListMap!4534 Nil!51874) lt!1816526 (_1!29781 (h!58012 lt!1816247)) (_2!29781 (h!58012 lt!1816247))) lt!1817197)))

(declare-fun bs!1062956 () Bool)

(assert (= bs!1062956 d!1475700))

(declare-fun m!5532005 () Bool)

(assert (=> bs!1062956 m!5532005))

(declare-fun m!5532007 () Bool)

(assert (=> bs!1062956 m!5532007))

(declare-fun m!5532009 () Bool)

(assert (=> bs!1062956 m!5532009))

(declare-fun m!5532011 () Bool)

(assert (=> bs!1062956 m!5532011))

(assert (=> b!4653112 d!1475700))

(declare-fun d!1475702 () Bool)

(declare-fun res!1956517 () Bool)

(declare-fun e!2903629 () Bool)

(assert (=> d!1475702 (=> res!1956517 e!2903629)))

(assert (=> d!1475702 (= res!1956517 (not ((_ is Cons!51874) (t!359110 newBucket!224))))))

(assert (=> d!1475702 (= (noDuplicateKeys!1632 (t!359110 newBucket!224)) e!2903629)))

(declare-fun b!4653929 () Bool)

(declare-fun e!2903630 () Bool)

(assert (=> b!4653929 (= e!2903629 e!2903630)))

(declare-fun res!1956518 () Bool)

(assert (=> b!4653929 (=> (not res!1956518) (not e!2903630))))

(assert (=> b!4653929 (= res!1956518 (not (containsKey!2708 (t!359110 (t!359110 newBucket!224)) (_1!29781 (h!58012 (t!359110 newBucket!224))))))))

(declare-fun b!4653930 () Bool)

(assert (=> b!4653930 (= e!2903630 (noDuplicateKeys!1632 (t!359110 (t!359110 newBucket!224))))))

(assert (= (and d!1475702 (not res!1956517)) b!4653929))

(assert (= (and b!4653929 res!1956518) b!4653930))

(declare-fun m!5532013 () Bool)

(assert (=> b!4653929 m!5532013))

(declare-fun m!5532015 () Bool)

(assert (=> b!4653930 m!5532015))

(assert (=> b!4653164 d!1475702))

(declare-fun d!1475704 () Bool)

(declare-fun res!1956519 () Bool)

(declare-fun e!2903631 () Bool)

(assert (=> d!1475704 (=> res!1956519 e!2903631)))

(assert (=> d!1475704 (= res!1956519 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475704 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198848) e!2903631)))

(declare-fun b!4653931 () Bool)

(declare-fun e!2903632 () Bool)

(assert (=> b!4653931 (= e!2903631 e!2903632)))

(declare-fun res!1956520 () Bool)

(assert (=> b!4653931 (=> (not res!1956520) (not e!2903632))))

(assert (=> b!4653931 (= res!1956520 (dynLambda!21580 lambda!198848 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4653932 () Bool)

(assert (=> b!4653932 (= e!2903632 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) lambda!198848))))

(assert (= (and d!1475704 (not res!1956519)) b!4653931))

(assert (= (and b!4653931 res!1956520) b!4653932))

(declare-fun b_lambda!173539 () Bool)

(assert (=> (not b_lambda!173539) (not b!4653931)))

(declare-fun m!5532017 () Bool)

(assert (=> b!4653931 m!5532017))

(declare-fun m!5532019 () Bool)

(assert (=> b!4653932 m!5532019))

(assert (=> b!4653219 d!1475704))

(declare-fun d!1475706 () Bool)

(assert (=> d!1475706 (dynLambda!21580 lambda!198851 (h!58012 oldBucket!40))))

(declare-fun lt!1817198 () Unit!118036)

(assert (=> d!1475706 (= lt!1817198 (choose!31973 (toList!5195 lt!1816660) lambda!198851 (h!58012 oldBucket!40)))))

(declare-fun e!2903633 () Bool)

(assert (=> d!1475706 e!2903633))

(declare-fun res!1956521 () Bool)

(assert (=> d!1475706 (=> (not res!1956521) (not e!2903633))))

(assert (=> d!1475706 (= res!1956521 (forall!11010 (toList!5195 lt!1816660) lambda!198851))))

(assert (=> d!1475706 (= (forallContained!3216 (toList!5195 lt!1816660) lambda!198851 (h!58012 oldBucket!40)) lt!1817198)))

(declare-fun b!4653933 () Bool)

(assert (=> b!4653933 (= e!2903633 (contains!15023 (toList!5195 lt!1816660) (h!58012 oldBucket!40)))))

(assert (= (and d!1475706 res!1956521) b!4653933))

(declare-fun b_lambda!173541 () Bool)

(assert (=> (not b_lambda!173541) (not d!1475706)))

(declare-fun m!5532021 () Bool)

(assert (=> d!1475706 m!5532021))

(declare-fun m!5532023 () Bool)

(assert (=> d!1475706 m!5532023))

(assert (=> d!1475706 m!5530577))

(declare-fun m!5532025 () Bool)

(assert (=> b!4653933 m!5532025))

(assert (=> b!4653227 d!1475706))

(declare-fun b!4653934 () Bool)

(declare-fun e!2903639 () Unit!118036)

(declare-fun lt!1817204 () Unit!118036)

(assert (=> b!4653934 (= e!2903639 lt!1817204)))

(declare-fun lt!1817199 () Unit!118036)

(assert (=> b!4653934 (= lt!1817199 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816660) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> b!4653934 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816660) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun lt!1817201 () Unit!118036)

(assert (=> b!4653934 (= lt!1817201 lt!1817199)))

(assert (=> b!4653934 (= lt!1817204 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816660) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun call!325221 () Bool)

(assert (=> b!4653934 call!325221))

(declare-fun b!4653935 () Bool)

(declare-fun e!2903637 () List!52001)

(assert (=> b!4653935 (= e!2903637 (getKeysList!743 (toList!5195 lt!1816660)))))

(declare-fun b!4653936 () Bool)

(declare-fun e!2903636 () Unit!118036)

(assert (=> b!4653936 (= e!2903639 e!2903636)))

(declare-fun c!796588 () Bool)

(assert (=> b!4653936 (= c!796588 call!325221)))

(declare-fun b!4653937 () Bool)

(declare-fun e!2903634 () Bool)

(assert (=> b!4653937 (= e!2903634 (contains!15021 (keys!18370 lt!1816660) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun b!4653938 () Bool)

(declare-fun e!2903635 () Bool)

(assert (=> b!4653938 (= e!2903635 e!2903634)))

(declare-fun res!1956523 () Bool)

(assert (=> b!4653938 (=> (not res!1956523) (not e!2903634))))

(assert (=> b!4653938 (= res!1956523 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816660) (_1!29781 (h!58012 oldBucket!40)))))))

(declare-fun bm!325216 () Bool)

(assert (=> bm!325216 (= call!325221 (contains!15021 e!2903637 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun c!796587 () Bool)

(declare-fun c!796589 () Bool)

(assert (=> bm!325216 (= c!796587 c!796589)))

(declare-fun b!4653939 () Bool)

(assert (=> b!4653939 (= e!2903637 (keys!18370 lt!1816660))))

(declare-fun b!4653940 () Bool)

(assert (=> b!4653940 false))

(declare-fun lt!1817205 () Unit!118036)

(declare-fun lt!1817203 () Unit!118036)

(assert (=> b!4653940 (= lt!1817205 lt!1817203)))

(assert (=> b!4653940 (containsKey!2711 (toList!5195 lt!1816660) (_1!29781 (h!58012 oldBucket!40)))))

(assert (=> b!4653940 (= lt!1817203 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816660) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun Unit!118301 () Unit!118036)

(assert (=> b!4653940 (= e!2903636 Unit!118301)))

(declare-fun d!1475708 () Bool)

(assert (=> d!1475708 e!2903635))

(declare-fun res!1956524 () Bool)

(assert (=> d!1475708 (=> res!1956524 e!2903635)))

(declare-fun e!2903638 () Bool)

(assert (=> d!1475708 (= res!1956524 e!2903638)))

(declare-fun res!1956522 () Bool)

(assert (=> d!1475708 (=> (not res!1956522) (not e!2903638))))

(declare-fun lt!1817206 () Bool)

(assert (=> d!1475708 (= res!1956522 (not lt!1817206))))

(declare-fun lt!1817200 () Bool)

(assert (=> d!1475708 (= lt!1817206 lt!1817200)))

(declare-fun lt!1817202 () Unit!118036)

(assert (=> d!1475708 (= lt!1817202 e!2903639)))

(assert (=> d!1475708 (= c!796589 lt!1817200)))

(assert (=> d!1475708 (= lt!1817200 (containsKey!2711 (toList!5195 lt!1816660) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475708 (= (contains!15019 lt!1816660 (_1!29781 (h!58012 oldBucket!40))) lt!1817206)))

(declare-fun b!4653941 () Bool)

(declare-fun Unit!118302 () Unit!118036)

(assert (=> b!4653941 (= e!2903636 Unit!118302)))

(declare-fun b!4653942 () Bool)

(assert (=> b!4653942 (= e!2903638 (not (contains!15021 (keys!18370 lt!1816660) (_1!29781 (h!58012 oldBucket!40)))))))

(assert (= (and d!1475708 c!796589) b!4653934))

(assert (= (and d!1475708 (not c!796589)) b!4653936))

(assert (= (and b!4653936 c!796588) b!4653940))

(assert (= (and b!4653936 (not c!796588)) b!4653941))

(assert (= (or b!4653934 b!4653936) bm!325216))

(assert (= (and bm!325216 c!796587) b!4653935))

(assert (= (and bm!325216 (not c!796587)) b!4653939))

(assert (= (and d!1475708 res!1956522) b!4653942))

(assert (= (and d!1475708 (not res!1956524)) b!4653938))

(assert (= (and b!4653938 res!1956523) b!4653937))

(declare-fun m!5532027 () Bool)

(assert (=> b!4653942 m!5532027))

(assert (=> b!4653942 m!5532027))

(declare-fun m!5532029 () Bool)

(assert (=> b!4653942 m!5532029))

(declare-fun m!5532031 () Bool)

(assert (=> b!4653934 m!5532031))

(declare-fun m!5532033 () Bool)

(assert (=> b!4653934 m!5532033))

(assert (=> b!4653934 m!5532033))

(declare-fun m!5532035 () Bool)

(assert (=> b!4653934 m!5532035))

(declare-fun m!5532037 () Bool)

(assert (=> b!4653934 m!5532037))

(declare-fun m!5532039 () Bool)

(assert (=> bm!325216 m!5532039))

(assert (=> b!4653939 m!5532027))

(declare-fun m!5532041 () Bool)

(assert (=> d!1475708 m!5532041))

(assert (=> b!4653940 m!5532041))

(declare-fun m!5532043 () Bool)

(assert (=> b!4653940 m!5532043))

(assert (=> b!4653938 m!5532033))

(assert (=> b!4653938 m!5532033))

(assert (=> b!4653938 m!5532035))

(assert (=> b!4653937 m!5532027))

(assert (=> b!4653937 m!5532027))

(assert (=> b!4653937 m!5532029))

(declare-fun m!5532045 () Bool)

(assert (=> b!4653935 m!5532045))

(assert (=> b!4653227 d!1475708))

(declare-fun d!1475710 () Bool)

(declare-fun res!1956525 () Bool)

(declare-fun e!2903640 () Bool)

(assert (=> d!1475710 (=> res!1956525 e!2903640)))

(assert (=> d!1475710 (= res!1956525 ((_ is Nil!51874) (toList!5195 lt!1816660)))))

(assert (=> d!1475710 (= (forall!11010 (toList!5195 lt!1816660) lambda!198851) e!2903640)))

(declare-fun b!4653943 () Bool)

(declare-fun e!2903641 () Bool)

(assert (=> b!4653943 (= e!2903640 e!2903641)))

(declare-fun res!1956526 () Bool)

(assert (=> b!4653943 (=> (not res!1956526) (not e!2903641))))

(assert (=> b!4653943 (= res!1956526 (dynLambda!21580 lambda!198851 (h!58012 (toList!5195 lt!1816660))))))

(declare-fun b!4653944 () Bool)

(assert (=> b!4653944 (= e!2903641 (forall!11010 (t!359110 (toList!5195 lt!1816660)) lambda!198851))))

(assert (= (and d!1475710 (not res!1956525)) b!4653943))

(assert (= (and b!4653943 res!1956526) b!4653944))

(declare-fun b_lambda!173543 () Bool)

(assert (=> (not b_lambda!173543) (not b!4653943)))

(declare-fun m!5532047 () Bool)

(assert (=> b!4653943 m!5532047))

(declare-fun m!5532049 () Bool)

(assert (=> b!4653944 m!5532049))

(assert (=> b!4653227 d!1475710))

(declare-fun bs!1062959 () Bool)

(declare-fun d!1475712 () Bool)

(assert (= bs!1062959 (and d!1475712 d!1475272)))

(declare-fun lambda!198936 () Int)

(assert (=> bs!1062959 (= (= lt!1816657 lt!1816572) (= lambda!198936 lambda!198837))))

(declare-fun bs!1062960 () Bool)

(assert (= bs!1062960 (and d!1475712 d!1475494)))

(assert (=> bs!1062960 (= (= lt!1816657 lt!1816578) (= lambda!198936 lambda!198885))))

(declare-fun bs!1062961 () Bool)

(assert (= bs!1062961 (and d!1475712 b!4653227)))

(assert (=> bs!1062961 (= lambda!198936 lambda!198851)))

(declare-fun bs!1062962 () Bool)

(assert (= bs!1062962 (and d!1475712 d!1475404)))

(assert (=> bs!1062962 (= (= lt!1816657 lt!1816745) (= lambda!198936 lambda!198862))))

(declare-fun bs!1062963 () Bool)

(assert (= bs!1062963 (and d!1475712 b!4653410)))

(assert (=> bs!1062963 (= (= lt!1816657 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198936 lambda!198859))))

(declare-fun bs!1062964 () Bool)

(assert (= bs!1062964 (and d!1475712 d!1475666)))

(assert (=> bs!1062964 (= (= lt!1816657 lt!1817133) (= lambda!198936 lambda!198930))))

(declare-fun bs!1062965 () Bool)

(assert (= bs!1062965 (and d!1475712 d!1475542)))

(assert (=> bs!1062965 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198936 lambda!198903))))

(declare-fun bs!1062966 () Bool)

(assert (= bs!1062966 (and d!1475712 b!4653112)))

(assert (=> bs!1062966 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198936 lambda!198825))))

(declare-fun bs!1062967 () Bool)

(assert (= bs!1062967 (and d!1475712 d!1475596)))

(assert (=> bs!1062967 (= (= lt!1816657 lt!1817027) (= lambda!198936 lambda!198910))))

(declare-fun bs!1062968 () Bool)

(assert (= bs!1062968 (and d!1475712 d!1475300)))

(assert (=> bs!1062968 (= (= lt!1816657 lt!1816627) (= lambda!198936 lambda!198848))))

(declare-fun bs!1062969 () Bool)

(assert (= bs!1062969 (and d!1475712 b!4653105)))

(assert (=> bs!1062969 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198936 lambda!198818))))

(declare-fun bs!1062970 () Bool)

(assert (= bs!1062970 (and d!1475712 b!4653177)))

(assert (=> bs!1062970 (= (= lt!1816657 lt!1816243) (= lambda!198936 lambda!198834))))

(declare-fun bs!1062971 () Bool)

(assert (= bs!1062971 (and d!1475712 b!4653178)))

(assert (=> bs!1062971 (= (= lt!1816657 lt!1816243) (= lambda!198936 lambda!198835))))

(declare-fun bs!1062972 () Bool)

(assert (= bs!1062972 (and d!1475712 b!4653751)))

(assert (=> bs!1062972 (= (= lt!1816657 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198936 lambda!198907))))

(declare-fun bs!1062973 () Bool)

(assert (= bs!1062973 (and d!1475712 b!4653222)))

(assert (=> bs!1062973 (= (= lt!1816657 lt!1816633) (= lambda!198936 lambda!198847))))

(declare-fun bs!1062974 () Bool)

(assert (= bs!1062974 (and d!1475712 b!4653625)))

(assert (=> bs!1062974 (= (= lt!1816657 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198936 lambda!198893))))

(declare-fun bs!1062975 () Bool)

(assert (= bs!1062975 (and d!1475712 d!1475566)))

(assert (=> bs!1062975 (= (= lt!1816657 lt!1816243) (= lambda!198936 lambda!198904))))

(assert (=> bs!1062961 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198936 lambda!198850))))

(declare-fun bs!1062977 () Bool)

(assert (= bs!1062977 (and d!1475712 d!1475590)))

(assert (=> bs!1062977 (= (= lt!1816657 lt!1816505) (= lambda!198936 lambda!198905))))

(assert (=> bs!1062971 (= (= lt!1816657 lt!1816578) (= lambda!198936 lambda!198836))))

(declare-fun bs!1062980 () Bool)

(assert (= bs!1062980 (and d!1475712 b!4653624)))

(assert (=> bs!1062980 (= (= lt!1816657 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198936 lambda!198892))))

(declare-fun bs!1062982 () Bool)

(assert (= bs!1062982 (and d!1475712 d!1475700)))

(assert (=> bs!1062982 (= (= lt!1816657 lt!1816526) (= lambda!198936 lambda!198933))))

(declare-fun bs!1062984 () Bool)

(assert (= bs!1062984 (and d!1475712 b!4653411)))

(assert (=> bs!1062984 (= (= lt!1816657 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198936 lambda!198860))))

(declare-fun bs!1062986 () Bool)

(assert (= bs!1062986 (and d!1475712 d!1475270)))

(assert (=> bs!1062986 (not (= lambda!198936 lambda!198833))))

(declare-fun bs!1062988 () Bool)

(assert (= bs!1062988 (and d!1475712 b!4653752)))

(assert (=> bs!1062988 (= (= lt!1816657 lt!1817033) (= lambda!198936 lambda!198909))))

(declare-fun bs!1062991 () Bool)

(assert (= bs!1062991 (and d!1475712 b!4653879)))

(assert (=> bs!1062991 (= (= lt!1816657 lt!1817139) (= lambda!198936 lambda!198929))))

(declare-fun bs!1062993 () Bool)

(assert (= bs!1062993 (and d!1475712 d!1475502)))

(assert (=> bs!1062993 (= (= lt!1816657 lt!1816922) (= lambda!198936 lambda!198896))))

(declare-fun bs!1062995 () Bool)

(assert (= bs!1062995 (and d!1475712 b!4653878)))

(assert (=> bs!1062995 (= (= lt!1816657 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198936 lambda!198925))))

(assert (=> bs!1062984 (= (= lt!1816657 lt!1816751) (= lambda!198936 lambda!198861))))

(assert (=> bs!1062969 (= (= lt!1816657 lt!1816505) (= lambda!198936 lambda!198820))))

(declare-fun bs!1062998 () Bool)

(assert (= bs!1062998 (and d!1475712 b!4653226)))

(assert (=> bs!1062998 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198936 lambda!198849))))

(declare-fun bs!1063000 () Bool)

(assert (= bs!1063000 (and d!1475712 b!4653221)))

(assert (=> bs!1063000 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198936 lambda!198845))))

(declare-fun bs!1063002 () Bool)

(assert (= bs!1063002 (and d!1475712 d!1475200)))

(assert (=> bs!1063002 (= (= lt!1816657 lt!1816499) (= lambda!198936 lambda!198821))))

(declare-fun bs!1063004 () Bool)

(assert (= bs!1063004 (and d!1475712 b!4653104)))

(assert (=> bs!1063004 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198936 lambda!198817))))

(assert (=> bs!1062988 (= (= lt!1816657 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198936 lambda!198908))))

(assert (=> bs!1062974 (= (= lt!1816657 lt!1816928) (= lambda!198936 lambda!198895))))

(assert (=> bs!1062973 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198936 lambda!198846))))

(assert (=> bs!1062991 (= (= lt!1816657 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198936 lambda!198927))))

(declare-fun bs!1063009 () Bool)

(assert (= bs!1063009 (and d!1475712 d!1475248)))

(assert (=> bs!1063009 (= (= lt!1816657 lt!1816520) (= lambda!198936 lambda!198827))))

(assert (=> bs!1062966 (= (= lt!1816657 lt!1816526) (= lambda!198936 lambda!198826))))

(declare-fun bs!1063012 () Bool)

(assert (= bs!1063012 (and d!1475712 b!4653111)))

(assert (=> bs!1063012 (= (= lt!1816657 (ListMap!4534 Nil!51874)) (= lambda!198936 lambda!198824))))

(declare-fun bs!1063014 () Bool)

(assert (= bs!1063014 (and d!1475712 d!1475308)))

(assert (=> bs!1063014 (= (= lt!1816657 lt!1816651) (= lambda!198936 lambda!198852))))

(declare-fun bs!1063016 () Bool)

(assert (= bs!1063016 (and d!1475712 d!1475292)))

(assert (=> bs!1063016 (not (= lambda!198936 lambda!198844))))

(assert (=> d!1475712 true))

(assert (=> d!1475712 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198936)))

(declare-fun lt!1817207 () Unit!118036)

(assert (=> d!1475712 (= lt!1817207 (choose!31974 (ListMap!4534 Nil!51874) lt!1816657 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475712 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (tuple2!52975 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))) lambda!198936)))

(assert (=> d!1475712 (= (addForallContainsKeyThenBeforeAdding!591 (ListMap!4534 Nil!51874) lt!1816657 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))) lt!1817207)))

(declare-fun bs!1063023 () Bool)

(assert (= bs!1063023 d!1475712))

(declare-fun m!5532051 () Bool)

(assert (=> bs!1063023 m!5532051))

(declare-fun m!5532053 () Bool)

(assert (=> bs!1063023 m!5532053))

(declare-fun m!5532055 () Bool)

(assert (=> bs!1063023 m!5532055))

(declare-fun m!5532057 () Bool)

(assert (=> bs!1063023 m!5532057))

(assert (=> b!4653227 d!1475712))

(declare-fun d!1475714 () Bool)

(declare-fun e!2903642 () Bool)

(assert (=> d!1475714 e!2903642))

(declare-fun res!1956527 () Bool)

(assert (=> d!1475714 (=> (not res!1956527) (not e!2903642))))

(declare-fun lt!1817209 () ListMap!4533)

(assert (=> d!1475714 (= res!1956527 (contains!15019 lt!1817209 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun lt!1817210 () List!51998)

(assert (=> d!1475714 (= lt!1817209 (ListMap!4534 lt!1817210))))

(declare-fun lt!1817211 () Unit!118036)

(declare-fun lt!1817208 () Unit!118036)

(assert (=> d!1475714 (= lt!1817211 lt!1817208)))

(assert (=> d!1475714 (= (getValueByKey!1603 lt!1817210 (_1!29781 (h!58012 oldBucket!40))) (Some!11814 (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475714 (= lt!1817208 (lemmaContainsTupThenGetReturnValue!920 lt!1817210 (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475714 (= lt!1817210 (insertNoDuplicatedKeys!428 (toList!5195 (ListMap!4534 Nil!51874)) (_1!29781 (h!58012 oldBucket!40)) (_2!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475714 (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817209)))

(declare-fun b!4653945 () Bool)

(declare-fun res!1956528 () Bool)

(assert (=> b!4653945 (=> (not res!1956528) (not e!2903642))))

(assert (=> b!4653945 (= res!1956528 (= (getValueByKey!1603 (toList!5195 lt!1817209) (_1!29781 (h!58012 oldBucket!40))) (Some!11814 (_2!29781 (h!58012 oldBucket!40)))))))

(declare-fun b!4653946 () Bool)

(assert (=> b!4653946 (= e!2903642 (contains!15023 (toList!5195 lt!1817209) (h!58012 oldBucket!40)))))

(assert (= (and d!1475714 res!1956527) b!4653945))

(assert (= (and b!4653945 res!1956528) b!4653946))

(declare-fun m!5532059 () Bool)

(assert (=> d!1475714 m!5532059))

(declare-fun m!5532061 () Bool)

(assert (=> d!1475714 m!5532061))

(declare-fun m!5532063 () Bool)

(assert (=> d!1475714 m!5532063))

(declare-fun m!5532065 () Bool)

(assert (=> d!1475714 m!5532065))

(declare-fun m!5532067 () Bool)

(assert (=> b!4653945 m!5532067))

(declare-fun m!5532069 () Bool)

(assert (=> b!4653946 m!5532069))

(assert (=> b!4653227 d!1475714))

(assert (=> b!4653227 d!1475424))

(declare-fun b!4653947 () Bool)

(declare-fun e!2903648 () Unit!118036)

(declare-fun lt!1817217 () Unit!118036)

(assert (=> b!4653947 (= e!2903648 lt!1817217)))

(declare-fun lt!1817212 () Unit!118036)

(assert (=> b!4653947 (= lt!1817212 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816657) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> b!4653947 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816657) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun lt!1817214 () Unit!118036)

(assert (=> b!4653947 (= lt!1817214 lt!1817212)))

(assert (=> b!4653947 (= lt!1817217 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816657) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun call!325222 () Bool)

(assert (=> b!4653947 call!325222))

(declare-fun b!4653948 () Bool)

(declare-fun e!2903646 () List!52001)

(assert (=> b!4653948 (= e!2903646 (getKeysList!743 (toList!5195 lt!1816657)))))

(declare-fun b!4653949 () Bool)

(declare-fun e!2903645 () Unit!118036)

(assert (=> b!4653949 (= e!2903648 e!2903645)))

(declare-fun c!796591 () Bool)

(assert (=> b!4653949 (= c!796591 call!325222)))

(declare-fun b!4653950 () Bool)

(declare-fun e!2903643 () Bool)

(assert (=> b!4653950 (= e!2903643 (contains!15021 (keys!18370 lt!1816657) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun b!4653951 () Bool)

(declare-fun e!2903644 () Bool)

(assert (=> b!4653951 (= e!2903644 e!2903643)))

(declare-fun res!1956530 () Bool)

(assert (=> b!4653951 (=> (not res!1956530) (not e!2903643))))

(assert (=> b!4653951 (= res!1956530 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816657) (_1!29781 (h!58012 oldBucket!40)))))))

(declare-fun bm!325217 () Bool)

(assert (=> bm!325217 (= call!325222 (contains!15021 e!2903646 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun c!796590 () Bool)

(declare-fun c!796592 () Bool)

(assert (=> bm!325217 (= c!796590 c!796592)))

(declare-fun b!4653952 () Bool)

(assert (=> b!4653952 (= e!2903646 (keys!18370 lt!1816657))))

(declare-fun b!4653953 () Bool)

(assert (=> b!4653953 false))

(declare-fun lt!1817218 () Unit!118036)

(declare-fun lt!1817216 () Unit!118036)

(assert (=> b!4653953 (= lt!1817218 lt!1817216)))

(assert (=> b!4653953 (containsKey!2711 (toList!5195 lt!1816657) (_1!29781 (h!58012 oldBucket!40)))))

(assert (=> b!4653953 (= lt!1817216 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816657) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun Unit!118314 () Unit!118036)

(assert (=> b!4653953 (= e!2903645 Unit!118314)))

(declare-fun d!1475716 () Bool)

(assert (=> d!1475716 e!2903644))

(declare-fun res!1956531 () Bool)

(assert (=> d!1475716 (=> res!1956531 e!2903644)))

(declare-fun e!2903647 () Bool)

(assert (=> d!1475716 (= res!1956531 e!2903647)))

(declare-fun res!1956529 () Bool)

(assert (=> d!1475716 (=> (not res!1956529) (not e!2903647))))

(declare-fun lt!1817219 () Bool)

(assert (=> d!1475716 (= res!1956529 (not lt!1817219))))

(declare-fun lt!1817213 () Bool)

(assert (=> d!1475716 (= lt!1817219 lt!1817213)))

(declare-fun lt!1817215 () Unit!118036)

(assert (=> d!1475716 (= lt!1817215 e!2903648)))

(assert (=> d!1475716 (= c!796592 lt!1817213)))

(assert (=> d!1475716 (= lt!1817213 (containsKey!2711 (toList!5195 lt!1816657) (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> d!1475716 (= (contains!15019 lt!1816657 (_1!29781 (h!58012 oldBucket!40))) lt!1817219)))

(declare-fun b!4653954 () Bool)

(declare-fun Unit!118315 () Unit!118036)

(assert (=> b!4653954 (= e!2903645 Unit!118315)))

(declare-fun b!4653955 () Bool)

(assert (=> b!4653955 (= e!2903647 (not (contains!15021 (keys!18370 lt!1816657) (_1!29781 (h!58012 oldBucket!40)))))))

(assert (= (and d!1475716 c!796592) b!4653947))

(assert (= (and d!1475716 (not c!796592)) b!4653949))

(assert (= (and b!4653949 c!796591) b!4653953))

(assert (= (and b!4653949 (not c!796591)) b!4653954))

(assert (= (or b!4653947 b!4653949) bm!325217))

(assert (= (and bm!325217 c!796590) b!4653948))

(assert (= (and bm!325217 (not c!796590)) b!4653952))

(assert (= (and d!1475716 res!1956529) b!4653955))

(assert (= (and d!1475716 (not res!1956531)) b!4653951))

(assert (= (and b!4653951 res!1956530) b!4653950))

(declare-fun m!5532071 () Bool)

(assert (=> b!4653955 m!5532071))

(assert (=> b!4653955 m!5532071))

(declare-fun m!5532073 () Bool)

(assert (=> b!4653955 m!5532073))

(declare-fun m!5532075 () Bool)

(assert (=> b!4653947 m!5532075))

(declare-fun m!5532077 () Bool)

(assert (=> b!4653947 m!5532077))

(assert (=> b!4653947 m!5532077))

(declare-fun m!5532079 () Bool)

(assert (=> b!4653947 m!5532079))

(declare-fun m!5532081 () Bool)

(assert (=> b!4653947 m!5532081))

(declare-fun m!5532083 () Bool)

(assert (=> bm!325217 m!5532083))

(assert (=> b!4653952 m!5532071))

(declare-fun m!5532085 () Bool)

(assert (=> d!1475716 m!5532085))

(assert (=> b!4653953 m!5532085))

(declare-fun m!5532087 () Bool)

(assert (=> b!4653953 m!5532087))

(assert (=> b!4653951 m!5532077))

(assert (=> b!4653951 m!5532077))

(assert (=> b!4653951 m!5532079))

(assert (=> b!4653950 m!5532071))

(assert (=> b!4653950 m!5532071))

(assert (=> b!4653950 m!5532073))

(declare-fun m!5532089 () Bool)

(assert (=> b!4653948 m!5532089))

(assert (=> b!4653227 d!1475716))

(declare-fun d!1475718 () Bool)

(declare-fun res!1956532 () Bool)

(declare-fun e!2903649 () Bool)

(assert (=> d!1475718 (=> res!1956532 e!2903649)))

(assert (=> d!1475718 (= res!1956532 ((_ is Nil!51874) (t!359110 oldBucket!40)))))

(assert (=> d!1475718 (= (forall!11010 (t!359110 oldBucket!40) lambda!198851) e!2903649)))

(declare-fun b!4653956 () Bool)

(declare-fun e!2903650 () Bool)

(assert (=> b!4653956 (= e!2903649 e!2903650)))

(declare-fun res!1956533 () Bool)

(assert (=> b!4653956 (=> (not res!1956533) (not e!2903650))))

(assert (=> b!4653956 (= res!1956533 (dynLambda!21580 lambda!198851 (h!58012 (t!359110 oldBucket!40))))))

(declare-fun b!4653957 () Bool)

(assert (=> b!4653957 (= e!2903650 (forall!11010 (t!359110 (t!359110 oldBucket!40)) lambda!198851))))

(assert (= (and d!1475718 (not res!1956532)) b!4653956))

(assert (= (and b!4653956 res!1956533) b!4653957))

(declare-fun b_lambda!173545 () Bool)

(assert (=> (not b_lambda!173545) (not b!4653956)))

(declare-fun m!5532091 () Bool)

(assert (=> b!4653956 m!5532091))

(declare-fun m!5532093 () Bool)

(assert (=> b!4653957 m!5532093))

(assert (=> b!4653227 d!1475718))

(declare-fun d!1475720 () Bool)

(declare-fun res!1956534 () Bool)

(declare-fun e!2903651 () Bool)

(assert (=> d!1475720 (=> res!1956534 e!2903651)))

(assert (=> d!1475720 (= res!1956534 ((_ is Nil!51874) oldBucket!40))))

(assert (=> d!1475720 (= (forall!11010 oldBucket!40 lambda!198851) e!2903651)))

(declare-fun b!4653958 () Bool)

(declare-fun e!2903652 () Bool)

(assert (=> b!4653958 (= e!2903651 e!2903652)))

(declare-fun res!1956535 () Bool)

(assert (=> b!4653958 (=> (not res!1956535) (not e!2903652))))

(assert (=> b!4653958 (= res!1956535 (dynLambda!21580 lambda!198851 (h!58012 oldBucket!40)))))

(declare-fun b!4653959 () Bool)

(assert (=> b!4653959 (= e!2903652 (forall!11010 (t!359110 oldBucket!40) lambda!198851))))

(assert (= (and d!1475720 (not res!1956534)) b!4653958))

(assert (= (and b!4653958 res!1956535) b!4653959))

(declare-fun b_lambda!173547 () Bool)

(assert (=> (not b_lambda!173547) (not b!4653958)))

(assert (=> b!4653958 m!5532021))

(assert (=> b!4653959 m!5530585))

(assert (=> b!4653227 d!1475720))

(declare-fun bs!1063030 () Bool)

(declare-fun b!4653962 () Bool)

(assert (= bs!1063030 (and b!4653962 d!1475272)))

(declare-fun lambda!198938 () Int)

(assert (=> bs!1063030 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816572) (= lambda!198938 lambda!198837))))

(declare-fun bs!1063031 () Bool)

(assert (= bs!1063031 (and b!4653962 d!1475494)))

(assert (=> bs!1063031 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816578) (= lambda!198938 lambda!198885))))

(declare-fun bs!1063032 () Bool)

(assert (= bs!1063032 (and b!4653962 b!4653227)))

(assert (=> bs!1063032 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816657) (= lambda!198938 lambda!198851))))

(declare-fun bs!1063033 () Bool)

(assert (= bs!1063033 (and b!4653962 d!1475404)))

(assert (=> bs!1063033 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816745) (= lambda!198938 lambda!198862))))

(declare-fun bs!1063034 () Bool)

(assert (= bs!1063034 (and b!4653962 b!4653410)))

(assert (=> bs!1063034 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198938 lambda!198859))))

(declare-fun bs!1063035 () Bool)

(assert (= bs!1063035 (and b!4653962 d!1475666)))

(assert (=> bs!1063035 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817133) (= lambda!198938 lambda!198930))))

(declare-fun bs!1063036 () Bool)

(assert (= bs!1063036 (and b!4653962 d!1475542)))

(assert (=> bs!1063036 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198938 lambda!198903))))

(declare-fun bs!1063038 () Bool)

(assert (= bs!1063038 (and b!4653962 b!4653112)))

(assert (=> bs!1063038 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198938 lambda!198825))))

(declare-fun bs!1063039 () Bool)

(assert (= bs!1063039 (and b!4653962 d!1475300)))

(assert (=> bs!1063039 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816627) (= lambda!198938 lambda!198848))))

(declare-fun bs!1063041 () Bool)

(assert (= bs!1063041 (and b!4653962 b!4653105)))

(assert (=> bs!1063041 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198938 lambda!198818))))

(declare-fun bs!1063043 () Bool)

(assert (= bs!1063043 (and b!4653962 b!4653177)))

(assert (=> bs!1063043 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816243) (= lambda!198938 lambda!198834))))

(declare-fun bs!1063045 () Bool)

(assert (= bs!1063045 (and b!4653962 b!4653178)))

(assert (=> bs!1063045 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816243) (= lambda!198938 lambda!198835))))

(declare-fun bs!1063047 () Bool)

(assert (= bs!1063047 (and b!4653962 b!4653751)))

(assert (=> bs!1063047 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198938 lambda!198907))))

(declare-fun bs!1063049 () Bool)

(assert (= bs!1063049 (and b!4653962 b!4653222)))

(assert (=> bs!1063049 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816633) (= lambda!198938 lambda!198847))))

(declare-fun bs!1063051 () Bool)

(assert (= bs!1063051 (and b!4653962 b!4653625)))

(assert (=> bs!1063051 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198938 lambda!198893))))

(declare-fun bs!1063052 () Bool)

(assert (= bs!1063052 (and b!4653962 d!1475566)))

(assert (=> bs!1063052 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816243) (= lambda!198938 lambda!198904))))

(assert (=> bs!1063032 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198938 lambda!198850))))

(declare-fun bs!1063053 () Bool)

(assert (= bs!1063053 (and b!4653962 d!1475590)))

(assert (=> bs!1063053 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816505) (= lambda!198938 lambda!198905))))

(assert (=> bs!1063045 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816578) (= lambda!198938 lambda!198836))))

(declare-fun bs!1063054 () Bool)

(assert (= bs!1063054 (and b!4653962 b!4653624)))

(assert (=> bs!1063054 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198938 lambda!198892))))

(declare-fun bs!1063055 () Bool)

(assert (= bs!1063055 (and b!4653962 d!1475700)))

(assert (=> bs!1063055 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816526) (= lambda!198938 lambda!198933))))

(declare-fun bs!1063056 () Bool)

(assert (= bs!1063056 (and b!4653962 b!4653411)))

(assert (=> bs!1063056 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198938 lambda!198860))))

(declare-fun bs!1063057 () Bool)

(assert (= bs!1063057 (and b!4653962 d!1475270)))

(assert (=> bs!1063057 (not (= lambda!198938 lambda!198833))))

(declare-fun bs!1063058 () Bool)

(assert (= bs!1063058 (and b!4653962 b!4653752)))

(assert (=> bs!1063058 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817033) (= lambda!198938 lambda!198909))))

(declare-fun bs!1063059 () Bool)

(assert (= bs!1063059 (and b!4653962 b!4653879)))

(assert (=> bs!1063059 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817139) (= lambda!198938 lambda!198929))))

(declare-fun bs!1063060 () Bool)

(assert (= bs!1063060 (and b!4653962 d!1475502)))

(assert (=> bs!1063060 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816922) (= lambda!198938 lambda!198896))))

(declare-fun bs!1063061 () Bool)

(assert (= bs!1063061 (and b!4653962 b!4653878)))

(assert (=> bs!1063061 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198938 lambda!198925))))

(assert (=> bs!1063056 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816751) (= lambda!198938 lambda!198861))))

(assert (=> bs!1063041 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816505) (= lambda!198938 lambda!198820))))

(declare-fun bs!1063062 () Bool)

(assert (= bs!1063062 (and b!4653962 b!4653226)))

(assert (=> bs!1063062 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198938 lambda!198849))))

(declare-fun bs!1063063 () Bool)

(assert (= bs!1063063 (and b!4653962 b!4653221)))

(assert (=> bs!1063063 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198938 lambda!198845))))

(declare-fun bs!1063064 () Bool)

(assert (= bs!1063064 (and b!4653962 d!1475200)))

(assert (=> bs!1063064 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816499) (= lambda!198938 lambda!198821))))

(declare-fun bs!1063065 () Bool)

(assert (= bs!1063065 (and b!4653962 b!4653104)))

(assert (=> bs!1063065 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198938 lambda!198817))))

(assert (=> bs!1063058 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198938 lambda!198908))))

(assert (=> bs!1063051 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816928) (= lambda!198938 lambda!198895))))

(assert (=> bs!1063049 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198938 lambda!198846))))

(assert (=> bs!1063059 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198938 lambda!198927))))

(declare-fun bs!1063066 () Bool)

(assert (= bs!1063066 (and b!4653962 d!1475596)))

(assert (=> bs!1063066 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817027) (= lambda!198938 lambda!198910))))

(declare-fun bs!1063067 () Bool)

(assert (= bs!1063067 (and b!4653962 d!1475712)))

(assert (=> bs!1063067 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816657) (= lambda!198938 lambda!198936))))

(declare-fun bs!1063068 () Bool)

(assert (= bs!1063068 (and b!4653962 d!1475248)))

(assert (=> bs!1063068 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816520) (= lambda!198938 lambda!198827))))

(assert (=> bs!1063038 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816526) (= lambda!198938 lambda!198826))))

(declare-fun bs!1063069 () Bool)

(assert (= bs!1063069 (and b!4653962 b!4653111)))

(assert (=> bs!1063069 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198938 lambda!198824))))

(declare-fun bs!1063070 () Bool)

(assert (= bs!1063070 (and b!4653962 d!1475308)))

(assert (=> bs!1063070 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816651) (= lambda!198938 lambda!198852))))

(declare-fun bs!1063071 () Bool)

(assert (= bs!1063071 (and b!4653962 d!1475292)))

(assert (=> bs!1063071 (not (= lambda!198938 lambda!198844))))

(assert (=> b!4653962 true))

(declare-fun bs!1063072 () Bool)

(declare-fun b!4653963 () Bool)

(assert (= bs!1063072 (and b!4653963 d!1475272)))

(declare-fun lambda!198940 () Int)

(assert (=> bs!1063072 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816572) (= lambda!198940 lambda!198837))))

(declare-fun bs!1063073 () Bool)

(assert (= bs!1063073 (and b!4653963 d!1475494)))

(assert (=> bs!1063073 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816578) (= lambda!198940 lambda!198885))))

(declare-fun bs!1063074 () Bool)

(assert (= bs!1063074 (and b!4653963 b!4653227)))

(assert (=> bs!1063074 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816657) (= lambda!198940 lambda!198851))))

(declare-fun bs!1063075 () Bool)

(assert (= bs!1063075 (and b!4653963 b!4653962)))

(assert (=> bs!1063075 (= lambda!198940 lambda!198938)))

(declare-fun bs!1063076 () Bool)

(assert (= bs!1063076 (and b!4653963 d!1475404)))

(assert (=> bs!1063076 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816745) (= lambda!198940 lambda!198862))))

(declare-fun bs!1063077 () Bool)

(assert (= bs!1063077 (and b!4653963 b!4653410)))

(assert (=> bs!1063077 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198940 lambda!198859))))

(declare-fun bs!1063078 () Bool)

(assert (= bs!1063078 (and b!4653963 d!1475666)))

(assert (=> bs!1063078 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817133) (= lambda!198940 lambda!198930))))

(declare-fun bs!1063079 () Bool)

(assert (= bs!1063079 (and b!4653963 d!1475542)))

(assert (=> bs!1063079 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198940 lambda!198903))))

(declare-fun bs!1063080 () Bool)

(assert (= bs!1063080 (and b!4653963 b!4653112)))

(assert (=> bs!1063080 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198940 lambda!198825))))

(declare-fun bs!1063081 () Bool)

(assert (= bs!1063081 (and b!4653963 d!1475300)))

(assert (=> bs!1063081 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816627) (= lambda!198940 lambda!198848))))

(declare-fun bs!1063082 () Bool)

(assert (= bs!1063082 (and b!4653963 b!4653105)))

(assert (=> bs!1063082 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198940 lambda!198818))))

(declare-fun bs!1063083 () Bool)

(assert (= bs!1063083 (and b!4653963 b!4653177)))

(assert (=> bs!1063083 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816243) (= lambda!198940 lambda!198834))))

(declare-fun bs!1063084 () Bool)

(assert (= bs!1063084 (and b!4653963 b!4653178)))

(assert (=> bs!1063084 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816243) (= lambda!198940 lambda!198835))))

(declare-fun bs!1063085 () Bool)

(assert (= bs!1063085 (and b!4653963 b!4653751)))

(assert (=> bs!1063085 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198940 lambda!198907))))

(declare-fun bs!1063086 () Bool)

(assert (= bs!1063086 (and b!4653963 b!4653222)))

(assert (=> bs!1063086 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816633) (= lambda!198940 lambda!198847))))

(declare-fun bs!1063087 () Bool)

(assert (= bs!1063087 (and b!4653963 b!4653625)))

(assert (=> bs!1063087 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198940 lambda!198893))))

(declare-fun bs!1063088 () Bool)

(assert (= bs!1063088 (and b!4653963 d!1475566)))

(assert (=> bs!1063088 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816243) (= lambda!198940 lambda!198904))))

(assert (=> bs!1063074 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198940 lambda!198850))))

(declare-fun bs!1063089 () Bool)

(assert (= bs!1063089 (and b!4653963 d!1475590)))

(assert (=> bs!1063089 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816505) (= lambda!198940 lambda!198905))))

(assert (=> bs!1063084 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816578) (= lambda!198940 lambda!198836))))

(declare-fun bs!1063090 () Bool)

(assert (= bs!1063090 (and b!4653963 b!4653624)))

(assert (=> bs!1063090 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198940 lambda!198892))))

(declare-fun bs!1063091 () Bool)

(assert (= bs!1063091 (and b!4653963 d!1475700)))

(assert (=> bs!1063091 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816526) (= lambda!198940 lambda!198933))))

(declare-fun bs!1063092 () Bool)

(assert (= bs!1063092 (and b!4653963 b!4653411)))

(assert (=> bs!1063092 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198940 lambda!198860))))

(declare-fun bs!1063093 () Bool)

(assert (= bs!1063093 (and b!4653963 d!1475270)))

(assert (=> bs!1063093 (not (= lambda!198940 lambda!198833))))

(declare-fun bs!1063094 () Bool)

(assert (= bs!1063094 (and b!4653963 b!4653752)))

(assert (=> bs!1063094 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817033) (= lambda!198940 lambda!198909))))

(declare-fun bs!1063095 () Bool)

(assert (= bs!1063095 (and b!4653963 b!4653879)))

(assert (=> bs!1063095 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817139) (= lambda!198940 lambda!198929))))

(declare-fun bs!1063096 () Bool)

(assert (= bs!1063096 (and b!4653963 d!1475502)))

(assert (=> bs!1063096 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816922) (= lambda!198940 lambda!198896))))

(declare-fun bs!1063097 () Bool)

(assert (= bs!1063097 (and b!4653963 b!4653878)))

(assert (=> bs!1063097 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198940 lambda!198925))))

(assert (=> bs!1063092 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816751) (= lambda!198940 lambda!198861))))

(assert (=> bs!1063082 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816505) (= lambda!198940 lambda!198820))))

(declare-fun bs!1063098 () Bool)

(assert (= bs!1063098 (and b!4653963 b!4653226)))

(assert (=> bs!1063098 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198940 lambda!198849))))

(declare-fun bs!1063099 () Bool)

(assert (= bs!1063099 (and b!4653963 b!4653221)))

(assert (=> bs!1063099 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198940 lambda!198845))))

(declare-fun bs!1063100 () Bool)

(assert (= bs!1063100 (and b!4653963 d!1475200)))

(assert (=> bs!1063100 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816499) (= lambda!198940 lambda!198821))))

(declare-fun bs!1063101 () Bool)

(assert (= bs!1063101 (and b!4653963 b!4653104)))

(assert (=> bs!1063101 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198940 lambda!198817))))

(assert (=> bs!1063094 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198940 lambda!198908))))

(assert (=> bs!1063087 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816928) (= lambda!198940 lambda!198895))))

(assert (=> bs!1063086 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198940 lambda!198846))))

(assert (=> bs!1063095 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198940 lambda!198927))))

(declare-fun bs!1063102 () Bool)

(assert (= bs!1063102 (and b!4653963 d!1475596)))

(assert (=> bs!1063102 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817027) (= lambda!198940 lambda!198910))))

(declare-fun bs!1063103 () Bool)

(assert (= bs!1063103 (and b!4653963 d!1475712)))

(assert (=> bs!1063103 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816657) (= lambda!198940 lambda!198936))))

(declare-fun bs!1063104 () Bool)

(assert (= bs!1063104 (and b!4653963 d!1475248)))

(assert (=> bs!1063104 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816520) (= lambda!198940 lambda!198827))))

(assert (=> bs!1063080 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816526) (= lambda!198940 lambda!198826))))

(declare-fun bs!1063105 () Bool)

(assert (= bs!1063105 (and b!4653963 b!4653111)))

(assert (=> bs!1063105 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (ListMap!4534 Nil!51874)) (= lambda!198940 lambda!198824))))

(declare-fun bs!1063106 () Bool)

(assert (= bs!1063106 (and b!4653963 d!1475308)))

(assert (=> bs!1063106 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1816651) (= lambda!198940 lambda!198852))))

(declare-fun bs!1063107 () Bool)

(assert (= bs!1063107 (and b!4653963 d!1475292)))

(assert (=> bs!1063107 (not (= lambda!198940 lambda!198844))))

(assert (=> b!4653963 true))

(declare-fun lt!1817226 () ListMap!4533)

(declare-fun lambda!198941 () Int)

(assert (=> bs!1063072 (= (= lt!1817226 lt!1816572) (= lambda!198941 lambda!198837))))

(assert (=> bs!1063073 (= (= lt!1817226 lt!1816578) (= lambda!198941 lambda!198885))))

(assert (=> bs!1063074 (= (= lt!1817226 lt!1816657) (= lambda!198941 lambda!198851))))

(assert (=> bs!1063075 (= (= lt!1817226 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198941 lambda!198938))))

(assert (=> bs!1063076 (= (= lt!1817226 lt!1816745) (= lambda!198941 lambda!198862))))

(assert (=> bs!1063077 (= (= lt!1817226 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198941 lambda!198859))))

(assert (=> bs!1063078 (= (= lt!1817226 lt!1817133) (= lambda!198941 lambda!198930))))

(assert (=> bs!1063079 (= (= lt!1817226 (ListMap!4534 Nil!51874)) (= lambda!198941 lambda!198903))))

(assert (=> bs!1063080 (= (= lt!1817226 (ListMap!4534 Nil!51874)) (= lambda!198941 lambda!198825))))

(assert (=> bs!1063081 (= (= lt!1817226 lt!1816627) (= lambda!198941 lambda!198848))))

(assert (=> bs!1063082 (= (= lt!1817226 (ListMap!4534 Nil!51874)) (= lambda!198941 lambda!198818))))

(assert (=> bs!1063083 (= (= lt!1817226 lt!1816243) (= lambda!198941 lambda!198834))))

(assert (=> bs!1063084 (= (= lt!1817226 lt!1816243) (= lambda!198941 lambda!198835))))

(assert (=> bs!1063085 (= (= lt!1817226 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198941 lambda!198907))))

(assert (=> bs!1063086 (= (= lt!1817226 lt!1816633) (= lambda!198941 lambda!198847))))

(assert (=> bs!1063087 (= (= lt!1817226 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198941 lambda!198893))))

(assert (=> bs!1063088 (= (= lt!1817226 lt!1816243) (= lambda!198941 lambda!198904))))

(assert (=> bs!1063074 (= (= lt!1817226 (ListMap!4534 Nil!51874)) (= lambda!198941 lambda!198850))))

(assert (=> bs!1063089 (= (= lt!1817226 lt!1816505) (= lambda!198941 lambda!198905))))

(assert (=> bs!1063084 (= (= lt!1817226 lt!1816578) (= lambda!198941 lambda!198836))))

(assert (=> bs!1063090 (= (= lt!1817226 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198941 lambda!198892))))

(assert (=> bs!1063091 (= (= lt!1817226 lt!1816526) (= lambda!198941 lambda!198933))))

(assert (=> bs!1063092 (= (= lt!1817226 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198941 lambda!198860))))

(assert (=> bs!1063093 (not (= lambda!198941 lambda!198833))))

(assert (=> bs!1063094 (= (= lt!1817226 lt!1817033) (= lambda!198941 lambda!198909))))

(assert (=> bs!1063095 (= (= lt!1817226 lt!1817139) (= lambda!198941 lambda!198929))))

(assert (=> bs!1063096 (= (= lt!1817226 lt!1816922) (= lambda!198941 lambda!198896))))

(assert (=> bs!1063097 (= (= lt!1817226 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198941 lambda!198925))))

(assert (=> bs!1063092 (= (= lt!1817226 lt!1816751) (= lambda!198941 lambda!198861))))

(assert (=> bs!1063082 (= (= lt!1817226 lt!1816505) (= lambda!198941 lambda!198820))))

(assert (=> bs!1063098 (= (= lt!1817226 (ListMap!4534 Nil!51874)) (= lambda!198941 lambda!198849))))

(assert (=> bs!1063099 (= (= lt!1817226 (ListMap!4534 Nil!51874)) (= lambda!198941 lambda!198845))))

(assert (=> bs!1063100 (= (= lt!1817226 lt!1816499) (= lambda!198941 lambda!198821))))

(assert (=> b!4653963 (= (= lt!1817226 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198941 lambda!198940))))

(assert (=> bs!1063101 (= (= lt!1817226 (ListMap!4534 Nil!51874)) (= lambda!198941 lambda!198817))))

(assert (=> bs!1063094 (= (= lt!1817226 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198941 lambda!198908))))

(assert (=> bs!1063087 (= (= lt!1817226 lt!1816928) (= lambda!198941 lambda!198895))))

(assert (=> bs!1063086 (= (= lt!1817226 (ListMap!4534 Nil!51874)) (= lambda!198941 lambda!198846))))

(assert (=> bs!1063095 (= (= lt!1817226 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198941 lambda!198927))))

(assert (=> bs!1063102 (= (= lt!1817226 lt!1817027) (= lambda!198941 lambda!198910))))

(assert (=> bs!1063103 (= (= lt!1817226 lt!1816657) (= lambda!198941 lambda!198936))))

(assert (=> bs!1063104 (= (= lt!1817226 lt!1816520) (= lambda!198941 lambda!198827))))

(assert (=> bs!1063080 (= (= lt!1817226 lt!1816526) (= lambda!198941 lambda!198826))))

(assert (=> bs!1063105 (= (= lt!1817226 (ListMap!4534 Nil!51874)) (= lambda!198941 lambda!198824))))

(assert (=> bs!1063106 (= (= lt!1817226 lt!1816651) (= lambda!198941 lambda!198852))))

(assert (=> bs!1063107 (not (= lambda!198941 lambda!198844))))

(assert (=> b!4653963 true))

(declare-fun bs!1063108 () Bool)

(declare-fun d!1475722 () Bool)

(assert (= bs!1063108 (and d!1475722 d!1475272)))

(declare-fun lambda!198942 () Int)

(declare-fun lt!1817220 () ListMap!4533)

(assert (=> bs!1063108 (= (= lt!1817220 lt!1816572) (= lambda!198942 lambda!198837))))

(declare-fun bs!1063110 () Bool)

(assert (= bs!1063110 (and d!1475722 d!1475494)))

(assert (=> bs!1063110 (= (= lt!1817220 lt!1816578) (= lambda!198942 lambda!198885))))

(declare-fun bs!1063111 () Bool)

(assert (= bs!1063111 (and d!1475722 b!4653227)))

(assert (=> bs!1063111 (= (= lt!1817220 lt!1816657) (= lambda!198942 lambda!198851))))

(declare-fun bs!1063112 () Bool)

(assert (= bs!1063112 (and d!1475722 b!4653962)))

(assert (=> bs!1063112 (= (= lt!1817220 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198942 lambda!198938))))

(declare-fun bs!1063114 () Bool)

(assert (= bs!1063114 (and d!1475722 d!1475404)))

(assert (=> bs!1063114 (= (= lt!1817220 lt!1816745) (= lambda!198942 lambda!198862))))

(declare-fun bs!1063115 () Bool)

(assert (= bs!1063115 (and d!1475722 b!4653410)))

(assert (=> bs!1063115 (= (= lt!1817220 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198942 lambda!198859))))

(declare-fun bs!1063116 () Bool)

(assert (= bs!1063116 (and d!1475722 d!1475666)))

(assert (=> bs!1063116 (= (= lt!1817220 lt!1817133) (= lambda!198942 lambda!198930))))

(declare-fun bs!1063117 () Bool)

(assert (= bs!1063117 (and d!1475722 d!1475542)))

(assert (=> bs!1063117 (= (= lt!1817220 (ListMap!4534 Nil!51874)) (= lambda!198942 lambda!198903))))

(declare-fun bs!1063118 () Bool)

(assert (= bs!1063118 (and d!1475722 b!4653112)))

(assert (=> bs!1063118 (= (= lt!1817220 (ListMap!4534 Nil!51874)) (= lambda!198942 lambda!198825))))

(declare-fun bs!1063119 () Bool)

(assert (= bs!1063119 (and d!1475722 b!4653963)))

(assert (=> bs!1063119 (= (= lt!1817220 lt!1817226) (= lambda!198942 lambda!198941))))

(declare-fun bs!1063120 () Bool)

(assert (= bs!1063120 (and d!1475722 d!1475300)))

(assert (=> bs!1063120 (= (= lt!1817220 lt!1816627) (= lambda!198942 lambda!198848))))

(declare-fun bs!1063121 () Bool)

(assert (= bs!1063121 (and d!1475722 b!4653105)))

(assert (=> bs!1063121 (= (= lt!1817220 (ListMap!4534 Nil!51874)) (= lambda!198942 lambda!198818))))

(declare-fun bs!1063123 () Bool)

(assert (= bs!1063123 (and d!1475722 b!4653177)))

(assert (=> bs!1063123 (= (= lt!1817220 lt!1816243) (= lambda!198942 lambda!198834))))

(declare-fun bs!1063124 () Bool)

(assert (= bs!1063124 (and d!1475722 b!4653178)))

(assert (=> bs!1063124 (= (= lt!1817220 lt!1816243) (= lambda!198942 lambda!198835))))

(declare-fun bs!1063125 () Bool)

(assert (= bs!1063125 (and d!1475722 b!4653751)))

(assert (=> bs!1063125 (= (= lt!1817220 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198942 lambda!198907))))

(declare-fun bs!1063127 () Bool)

(assert (= bs!1063127 (and d!1475722 b!4653222)))

(assert (=> bs!1063127 (= (= lt!1817220 lt!1816633) (= lambda!198942 lambda!198847))))

(declare-fun bs!1063128 () Bool)

(assert (= bs!1063128 (and d!1475722 b!4653625)))

(assert (=> bs!1063128 (= (= lt!1817220 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198942 lambda!198893))))

(declare-fun bs!1063129 () Bool)

(assert (= bs!1063129 (and d!1475722 d!1475566)))

(assert (=> bs!1063129 (= (= lt!1817220 lt!1816243) (= lambda!198942 lambda!198904))))

(assert (=> bs!1063111 (= (= lt!1817220 (ListMap!4534 Nil!51874)) (= lambda!198942 lambda!198850))))

(declare-fun bs!1063130 () Bool)

(assert (= bs!1063130 (and d!1475722 d!1475590)))

(assert (=> bs!1063130 (= (= lt!1817220 lt!1816505) (= lambda!198942 lambda!198905))))

(assert (=> bs!1063124 (= (= lt!1817220 lt!1816578) (= lambda!198942 lambda!198836))))

(declare-fun bs!1063131 () Bool)

(assert (= bs!1063131 (and d!1475722 b!4653624)))

(assert (=> bs!1063131 (= (= lt!1817220 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198942 lambda!198892))))

(declare-fun bs!1063132 () Bool)

(assert (= bs!1063132 (and d!1475722 d!1475700)))

(assert (=> bs!1063132 (= (= lt!1817220 lt!1816526) (= lambda!198942 lambda!198933))))

(declare-fun bs!1063133 () Bool)

(assert (= bs!1063133 (and d!1475722 b!4653411)))

(assert (=> bs!1063133 (= (= lt!1817220 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198942 lambda!198860))))

(declare-fun bs!1063134 () Bool)

(assert (= bs!1063134 (and d!1475722 d!1475270)))

(assert (=> bs!1063134 (not (= lambda!198942 lambda!198833))))

(declare-fun bs!1063135 () Bool)

(assert (= bs!1063135 (and d!1475722 b!4653752)))

(assert (=> bs!1063135 (= (= lt!1817220 lt!1817033) (= lambda!198942 lambda!198909))))

(declare-fun bs!1063136 () Bool)

(assert (= bs!1063136 (and d!1475722 b!4653879)))

(assert (=> bs!1063136 (= (= lt!1817220 lt!1817139) (= lambda!198942 lambda!198929))))

(declare-fun bs!1063137 () Bool)

(assert (= bs!1063137 (and d!1475722 d!1475502)))

(assert (=> bs!1063137 (= (= lt!1817220 lt!1816922) (= lambda!198942 lambda!198896))))

(declare-fun bs!1063138 () Bool)

(assert (= bs!1063138 (and d!1475722 b!4653878)))

(assert (=> bs!1063138 (= (= lt!1817220 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198942 lambda!198925))))

(assert (=> bs!1063133 (= (= lt!1817220 lt!1816751) (= lambda!198942 lambda!198861))))

(assert (=> bs!1063121 (= (= lt!1817220 lt!1816505) (= lambda!198942 lambda!198820))))

(declare-fun bs!1063139 () Bool)

(assert (= bs!1063139 (and d!1475722 b!4653226)))

(assert (=> bs!1063139 (= (= lt!1817220 (ListMap!4534 Nil!51874)) (= lambda!198942 lambda!198849))))

(declare-fun bs!1063140 () Bool)

(assert (= bs!1063140 (and d!1475722 b!4653221)))

(assert (=> bs!1063140 (= (= lt!1817220 (ListMap!4534 Nil!51874)) (= lambda!198942 lambda!198845))))

(declare-fun bs!1063141 () Bool)

(assert (= bs!1063141 (and d!1475722 d!1475200)))

(assert (=> bs!1063141 (= (= lt!1817220 lt!1816499) (= lambda!198942 lambda!198821))))

(assert (=> bs!1063119 (= (= lt!1817220 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198942 lambda!198940))))

(declare-fun bs!1063142 () Bool)

(assert (= bs!1063142 (and d!1475722 b!4653104)))

(assert (=> bs!1063142 (= (= lt!1817220 (ListMap!4534 Nil!51874)) (= lambda!198942 lambda!198817))))

(assert (=> bs!1063135 (= (= lt!1817220 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198942 lambda!198908))))

(assert (=> bs!1063128 (= (= lt!1817220 lt!1816928) (= lambda!198942 lambda!198895))))

(assert (=> bs!1063127 (= (= lt!1817220 (ListMap!4534 Nil!51874)) (= lambda!198942 lambda!198846))))

(assert (=> bs!1063136 (= (= lt!1817220 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198942 lambda!198927))))

(declare-fun bs!1063143 () Bool)

(assert (= bs!1063143 (and d!1475722 d!1475596)))

(assert (=> bs!1063143 (= (= lt!1817220 lt!1817027) (= lambda!198942 lambda!198910))))

(declare-fun bs!1063144 () Bool)

(assert (= bs!1063144 (and d!1475722 d!1475712)))

(assert (=> bs!1063144 (= (= lt!1817220 lt!1816657) (= lambda!198942 lambda!198936))))

(declare-fun bs!1063145 () Bool)

(assert (= bs!1063145 (and d!1475722 d!1475248)))

(assert (=> bs!1063145 (= (= lt!1817220 lt!1816520) (= lambda!198942 lambda!198827))))

(assert (=> bs!1063118 (= (= lt!1817220 lt!1816526) (= lambda!198942 lambda!198826))))

(declare-fun bs!1063146 () Bool)

(assert (= bs!1063146 (and d!1475722 b!4653111)))

(assert (=> bs!1063146 (= (= lt!1817220 (ListMap!4534 Nil!51874)) (= lambda!198942 lambda!198824))))

(declare-fun bs!1063147 () Bool)

(assert (= bs!1063147 (and d!1475722 d!1475308)))

(assert (=> bs!1063147 (= (= lt!1817220 lt!1816651) (= lambda!198942 lambda!198852))))

(declare-fun bs!1063148 () Bool)

(assert (= bs!1063148 (and d!1475722 d!1475292)))

(assert (=> bs!1063148 (not (= lambda!198942 lambda!198844))))

(assert (=> d!1475722 true))

(declare-fun b!4653960 () Bool)

(declare-fun res!1956538 () Bool)

(declare-fun e!2903653 () Bool)

(assert (=> b!4653960 (=> (not res!1956538) (not e!2903653))))

(assert (=> b!4653960 (= res!1956538 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) lambda!198942))))

(declare-fun b!4653961 () Bool)

(assert (=> b!4653961 (= e!2903653 (invariantList!1292 (toList!5195 lt!1817220)))))

(declare-fun e!2903654 () ListMap!4533)

(assert (=> b!4653962 (= e!2903654 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)))))

(declare-fun lt!1817228 () Unit!118036)

(declare-fun call!325224 () Unit!118036)

(assert (=> b!4653962 (= lt!1817228 call!325224)))

(declare-fun call!325223 () Bool)

(assert (=> b!4653962 call!325223))

(declare-fun lt!1817237 () Unit!118036)

(assert (=> b!4653962 (= lt!1817237 lt!1817228)))

(declare-fun call!325225 () Bool)

(assert (=> b!4653962 call!325225))

(declare-fun lt!1817223 () Unit!118036)

(declare-fun Unit!118316 () Unit!118036)

(assert (=> b!4653962 (= lt!1817223 Unit!118316)))

(declare-fun c!796593 () Bool)

(declare-fun bm!325218 () Bool)

(assert (=> bm!325218 (= call!325225 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (ite c!796593 lambda!198938 lambda!198941)))))

(assert (=> b!4653963 (= e!2903654 lt!1817226)))

(declare-fun lt!1817229 () ListMap!4533)

(assert (=> b!4653963 (= lt!1817229 (+!1976 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (h!58012 (t!359110 oldBucket!40))))))

(assert (=> b!4653963 (= lt!1817226 (addToMapMapFromBucket!1089 (t!359110 (t!359110 oldBucket!40)) (+!1976 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) (h!58012 (t!359110 oldBucket!40)))))))

(declare-fun lt!1817232 () Unit!118036)

(assert (=> b!4653963 (= lt!1817232 call!325224)))

(assert (=> b!4653963 call!325223))

(declare-fun lt!1817231 () Unit!118036)

(assert (=> b!4653963 (= lt!1817231 lt!1817232)))

(assert (=> b!4653963 (forall!11010 (toList!5195 lt!1817229) lambda!198941)))

(declare-fun lt!1817233 () Unit!118036)

(declare-fun Unit!118317 () Unit!118036)

(assert (=> b!4653963 (= lt!1817233 Unit!118317)))

(assert (=> b!4653963 (forall!11010 (t!359110 (t!359110 oldBucket!40)) lambda!198941)))

(declare-fun lt!1817224 () Unit!118036)

(declare-fun Unit!118318 () Unit!118036)

(assert (=> b!4653963 (= lt!1817224 Unit!118318)))

(declare-fun lt!1817230 () Unit!118036)

(declare-fun Unit!118319 () Unit!118036)

(assert (=> b!4653963 (= lt!1817230 Unit!118319)))

(declare-fun lt!1817222 () Unit!118036)

(assert (=> b!4653963 (= lt!1817222 (forallContained!3216 (toList!5195 lt!1817229) lambda!198941 (h!58012 (t!359110 oldBucket!40))))))

(assert (=> b!4653963 (contains!15019 lt!1817229 (_1!29781 (h!58012 (t!359110 oldBucket!40))))))

(declare-fun lt!1817234 () Unit!118036)

(declare-fun Unit!118320 () Unit!118036)

(assert (=> b!4653963 (= lt!1817234 Unit!118320)))

(assert (=> b!4653963 (contains!15019 lt!1817226 (_1!29781 (h!58012 (t!359110 oldBucket!40))))))

(declare-fun lt!1817238 () Unit!118036)

(declare-fun Unit!118321 () Unit!118036)

(assert (=> b!4653963 (= lt!1817238 Unit!118321)))

(assert (=> b!4653963 (forall!11010 (t!359110 oldBucket!40) lambda!198941)))

(declare-fun lt!1817240 () Unit!118036)

(declare-fun Unit!118322 () Unit!118036)

(assert (=> b!4653963 (= lt!1817240 Unit!118322)))

(assert (=> b!4653963 (forall!11010 (toList!5195 lt!1817229) lambda!198941)))

(declare-fun lt!1817235 () Unit!118036)

(declare-fun Unit!118323 () Unit!118036)

(assert (=> b!4653963 (= lt!1817235 Unit!118323)))

(declare-fun lt!1817236 () Unit!118036)

(declare-fun Unit!118324 () Unit!118036)

(assert (=> b!4653963 (= lt!1817236 Unit!118324)))

(declare-fun lt!1817227 () Unit!118036)

(assert (=> b!4653963 (= lt!1817227 (addForallContainsKeyThenBeforeAdding!591 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40)) lt!1817226 (_1!29781 (h!58012 (t!359110 oldBucket!40))) (_2!29781 (h!58012 (t!359110 oldBucket!40)))))))

(assert (=> b!4653963 call!325225))

(declare-fun lt!1817221 () Unit!118036)

(assert (=> b!4653963 (= lt!1817221 lt!1817227)))

(assert (=> b!4653963 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) lambda!198941)))

(declare-fun lt!1817225 () Unit!118036)

(declare-fun Unit!118325 () Unit!118036)

(assert (=> b!4653963 (= lt!1817225 Unit!118325)))

(declare-fun res!1956537 () Bool)

(assert (=> b!4653963 (= res!1956537 (forall!11010 (t!359110 oldBucket!40) lambda!198941))))

(declare-fun e!2903655 () Bool)

(assert (=> b!4653963 (=> (not res!1956537) (not e!2903655))))

(assert (=> b!4653963 e!2903655))

(declare-fun lt!1817239 () Unit!118036)

(declare-fun Unit!118326 () Unit!118036)

(assert (=> b!4653963 (= lt!1817239 Unit!118326)))

(assert (=> d!1475722 e!2903653))

(declare-fun res!1956536 () Bool)

(assert (=> d!1475722 (=> (not res!1956536) (not e!2903653))))

(assert (=> d!1475722 (= res!1956536 (forall!11010 (t!359110 oldBucket!40) lambda!198942))))

(assert (=> d!1475722 (= lt!1817220 e!2903654)))

(assert (=> d!1475722 (= c!796593 ((_ is Nil!51874) (t!359110 oldBucket!40)))))

(assert (=> d!1475722 (noDuplicateKeys!1632 (t!359110 oldBucket!40))))

(assert (=> d!1475722 (= (addToMapMapFromBucket!1089 (t!359110 oldBucket!40) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) lt!1817220)))

(declare-fun bm!325219 () Bool)

(assert (=> bm!325219 (= call!325223 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (ite c!796593 lambda!198938 lambda!198940)))))

(declare-fun bm!325220 () Bool)

(assert (=> bm!325220 (= call!325224 (lemmaContainsAllItsOwnKeys!592 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))))))

(declare-fun b!4653964 () Bool)

(assert (=> b!4653964 (= e!2903655 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) lambda!198941))))

(assert (= (and d!1475722 c!796593) b!4653962))

(assert (= (and d!1475722 (not c!796593)) b!4653963))

(assert (= (and b!4653963 res!1956537) b!4653964))

(assert (= (or b!4653962 b!4653963) bm!325220))

(assert (= (or b!4653962 b!4653963) bm!325219))

(assert (= (or b!4653962 b!4653963) bm!325218))

(assert (= (and d!1475722 res!1956536) b!4653960))

(assert (= (and b!4653960 res!1956538) b!4653961))

(declare-fun m!5532211 () Bool)

(assert (=> d!1475722 m!5532211))

(assert (=> d!1475722 m!5530373))

(declare-fun m!5532213 () Bool)

(assert (=> bm!325219 m!5532213))

(declare-fun m!5532215 () Bool)

(assert (=> b!4653961 m!5532215))

(declare-fun m!5532217 () Bool)

(assert (=> b!4653960 m!5532217))

(assert (=> bm!325220 m!5530581))

(declare-fun m!5532219 () Bool)

(assert (=> bm!325220 m!5532219))

(declare-fun m!5532221 () Bool)

(assert (=> bm!325218 m!5532221))

(declare-fun m!5532223 () Bool)

(assert (=> b!4653964 m!5532223))

(assert (=> b!4653963 m!5530581))

(declare-fun m!5532225 () Bool)

(assert (=> b!4653963 m!5532225))

(declare-fun m!5532227 () Bool)

(assert (=> b!4653963 m!5532227))

(assert (=> b!4653963 m!5532227))

(declare-fun m!5532229 () Bool)

(assert (=> b!4653963 m!5532229))

(declare-fun m!5532231 () Bool)

(assert (=> b!4653963 m!5532231))

(declare-fun m!5532233 () Bool)

(assert (=> b!4653963 m!5532233))

(assert (=> b!4653963 m!5532231))

(declare-fun m!5532235 () Bool)

(assert (=> b!4653963 m!5532235))

(declare-fun m!5532237 () Bool)

(assert (=> b!4653963 m!5532237))

(declare-fun m!5532239 () Bool)

(assert (=> b!4653963 m!5532239))

(assert (=> b!4653963 m!5532223))

(declare-fun m!5532241 () Bool)

(assert (=> b!4653963 m!5532241))

(assert (=> b!4653963 m!5530581))

(assert (=> b!4653963 m!5532235))

(assert (=> b!4653227 d!1475722))

(declare-fun d!1475758 () Bool)

(declare-fun c!796607 () Bool)

(assert (=> d!1475758 (= c!796607 (and ((_ is Cons!51874) (toList!5195 lt!1816620)) (= (_1!29781 (h!58012 (toList!5195 lt!1816620))) (_1!29781 (h!58012 oldBucket!40)))))))

(declare-fun e!2903693 () Option!11815)

(assert (=> d!1475758 (= (getValueByKey!1603 (toList!5195 lt!1816620) (_1!29781 (h!58012 oldBucket!40))) e!2903693)))

(declare-fun b!4654016 () Bool)

(declare-fun e!2903694 () Option!11815)

(assert (=> b!4654016 (= e!2903693 e!2903694)))

(declare-fun c!796608 () Bool)

(assert (=> b!4654016 (= c!796608 (and ((_ is Cons!51874) (toList!5195 lt!1816620)) (not (= (_1!29781 (h!58012 (toList!5195 lt!1816620))) (_1!29781 (h!58012 oldBucket!40))))))))

(declare-fun b!4654015 () Bool)

(assert (=> b!4654015 (= e!2903693 (Some!11814 (_2!29781 (h!58012 (toList!5195 lt!1816620)))))))

(declare-fun b!4654017 () Bool)

(assert (=> b!4654017 (= e!2903694 (getValueByKey!1603 (t!359110 (toList!5195 lt!1816620)) (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun b!4654018 () Bool)

(assert (=> b!4654018 (= e!2903694 None!11814)))

(assert (= (and d!1475758 c!796607) b!4654015))

(assert (= (and d!1475758 (not c!796607)) b!4654016))

(assert (= (and b!4654016 c!796608) b!4654017))

(assert (= (and b!4654016 (not c!796608)) b!4654018))

(declare-fun m!5532243 () Bool)

(assert (=> b!4654017 m!5532243))

(assert (=> b!4653215 d!1475758))

(declare-fun bs!1063169 () Bool)

(declare-fun b!4654021 () Bool)

(assert (= bs!1063169 (and b!4654021 d!1475272)))

(declare-fun lambda!198944 () Int)

(assert (=> bs!1063169 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816572) (= lambda!198944 lambda!198837))))

(declare-fun bs!1063172 () Bool)

(assert (= bs!1063172 (and b!4654021 d!1475494)))

(assert (=> bs!1063172 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816578) (= lambda!198944 lambda!198885))))

(declare-fun bs!1063174 () Bool)

(assert (= bs!1063174 (and b!4654021 b!4653227)))

(assert (=> bs!1063174 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816657) (= lambda!198944 lambda!198851))))

(declare-fun bs!1063176 () Bool)

(assert (= bs!1063176 (and b!4654021 d!1475404)))

(assert (=> bs!1063176 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816745) (= lambda!198944 lambda!198862))))

(declare-fun bs!1063178 () Bool)

(assert (= bs!1063178 (and b!4654021 b!4653410)))

(assert (=> bs!1063178 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198944 lambda!198859))))

(declare-fun bs!1063179 () Bool)

(assert (= bs!1063179 (and b!4654021 d!1475666)))

(assert (=> bs!1063179 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817133) (= lambda!198944 lambda!198930))))

(declare-fun bs!1063181 () Bool)

(assert (= bs!1063181 (and b!4654021 d!1475542)))

(assert (=> bs!1063181 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198944 lambda!198903))))

(declare-fun bs!1063183 () Bool)

(assert (= bs!1063183 (and b!4654021 b!4653112)))

(assert (=> bs!1063183 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198944 lambda!198825))))

(declare-fun bs!1063185 () Bool)

(assert (= bs!1063185 (and b!4654021 b!4653963)))

(assert (=> bs!1063185 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817226) (= lambda!198944 lambda!198941))))

(declare-fun bs!1063186 () Bool)

(assert (= bs!1063186 (and b!4654021 d!1475300)))

(assert (=> bs!1063186 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816627) (= lambda!198944 lambda!198848))))

(declare-fun bs!1063188 () Bool)

(assert (= bs!1063188 (and b!4654021 b!4653105)))

(assert (=> bs!1063188 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198944 lambda!198818))))

(declare-fun bs!1063190 () Bool)

(assert (= bs!1063190 (and b!4654021 b!4653177)))

(assert (=> bs!1063190 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816243) (= lambda!198944 lambda!198834))))

(declare-fun bs!1063192 () Bool)

(assert (= bs!1063192 (and b!4654021 b!4653178)))

(assert (=> bs!1063192 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816243) (= lambda!198944 lambda!198835))))

(declare-fun bs!1063193 () Bool)

(assert (= bs!1063193 (and b!4654021 b!4653751)))

(assert (=> bs!1063193 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198944 lambda!198907))))

(declare-fun bs!1063194 () Bool)

(assert (= bs!1063194 (and b!4654021 b!4653222)))

(assert (=> bs!1063194 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816633) (= lambda!198944 lambda!198847))))

(declare-fun bs!1063195 () Bool)

(assert (= bs!1063195 (and b!4654021 b!4653625)))

(assert (=> bs!1063195 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198944 lambda!198893))))

(declare-fun bs!1063197 () Bool)

(assert (= bs!1063197 (and b!4654021 d!1475566)))

(assert (=> bs!1063197 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816243) (= lambda!198944 lambda!198904))))

(assert (=> bs!1063174 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198944 lambda!198850))))

(declare-fun bs!1063202 () Bool)

(assert (= bs!1063202 (and b!4654021 d!1475590)))

(assert (=> bs!1063202 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816505) (= lambda!198944 lambda!198905))))

(assert (=> bs!1063192 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816578) (= lambda!198944 lambda!198836))))

(declare-fun bs!1063204 () Bool)

(assert (= bs!1063204 (and b!4654021 b!4653624)))

(assert (=> bs!1063204 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198944 lambda!198892))))

(declare-fun bs!1063205 () Bool)

(assert (= bs!1063205 (and b!4654021 d!1475700)))

(assert (=> bs!1063205 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816526) (= lambda!198944 lambda!198933))))

(declare-fun bs!1063206 () Bool)

(assert (= bs!1063206 (and b!4654021 b!4653411)))

(assert (=> bs!1063206 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198944 lambda!198860))))

(declare-fun bs!1063207 () Bool)

(assert (= bs!1063207 (and b!4654021 d!1475270)))

(assert (=> bs!1063207 (not (= lambda!198944 lambda!198833))))

(declare-fun bs!1063208 () Bool)

(assert (= bs!1063208 (and b!4654021 b!4653752)))

(assert (=> bs!1063208 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817033) (= lambda!198944 lambda!198909))))

(declare-fun bs!1063209 () Bool)

(assert (= bs!1063209 (and b!4654021 b!4653879)))

(assert (=> bs!1063209 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817139) (= lambda!198944 lambda!198929))))

(declare-fun bs!1063210 () Bool)

(assert (= bs!1063210 (and b!4654021 d!1475502)))

(assert (=> bs!1063210 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816922) (= lambda!198944 lambda!198896))))

(declare-fun bs!1063211 () Bool)

(assert (= bs!1063211 (and b!4654021 b!4653878)))

(assert (=> bs!1063211 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198944 lambda!198925))))

(declare-fun bs!1063212 () Bool)

(assert (= bs!1063212 (and b!4654021 b!4653962)))

(assert (=> bs!1063212 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198944 lambda!198938))))

(declare-fun bs!1063214 () Bool)

(assert (= bs!1063214 (and b!4654021 d!1475722)))

(assert (=> bs!1063214 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817220) (= lambda!198944 lambda!198942))))

(assert (=> bs!1063206 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816751) (= lambda!198944 lambda!198861))))

(assert (=> bs!1063188 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816505) (= lambda!198944 lambda!198820))))

(declare-fun bs!1063215 () Bool)

(assert (= bs!1063215 (and b!4654021 b!4653226)))

(assert (=> bs!1063215 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198944 lambda!198849))))

(declare-fun bs!1063216 () Bool)

(assert (= bs!1063216 (and b!4654021 b!4653221)))

(assert (=> bs!1063216 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198944 lambda!198845))))

(declare-fun bs!1063217 () Bool)

(assert (= bs!1063217 (and b!4654021 d!1475200)))

(assert (=> bs!1063217 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816499) (= lambda!198944 lambda!198821))))

(assert (=> bs!1063185 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198944 lambda!198940))))

(declare-fun bs!1063218 () Bool)

(assert (= bs!1063218 (and b!4654021 b!4653104)))

(assert (=> bs!1063218 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198944 lambda!198817))))

(assert (=> bs!1063208 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198944 lambda!198908))))

(assert (=> bs!1063195 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816928) (= lambda!198944 lambda!198895))))

(assert (=> bs!1063194 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198944 lambda!198846))))

(assert (=> bs!1063209 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198944 lambda!198927))))

(declare-fun bs!1063219 () Bool)

(assert (= bs!1063219 (and b!4654021 d!1475596)))

(assert (=> bs!1063219 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817027) (= lambda!198944 lambda!198910))))

(declare-fun bs!1063220 () Bool)

(assert (= bs!1063220 (and b!4654021 d!1475712)))

(assert (=> bs!1063220 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816657) (= lambda!198944 lambda!198936))))

(declare-fun bs!1063221 () Bool)

(assert (= bs!1063221 (and b!4654021 d!1475248)))

(assert (=> bs!1063221 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816520) (= lambda!198944 lambda!198827))))

(assert (=> bs!1063183 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816526) (= lambda!198944 lambda!198826))))

(declare-fun bs!1063222 () Bool)

(assert (= bs!1063222 (and b!4654021 b!4653111)))

(assert (=> bs!1063222 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198944 lambda!198824))))

(declare-fun bs!1063223 () Bool)

(assert (= bs!1063223 (and b!4654021 d!1475308)))

(assert (=> bs!1063223 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816651) (= lambda!198944 lambda!198852))))

(declare-fun bs!1063224 () Bool)

(assert (= bs!1063224 (and b!4654021 d!1475292)))

(assert (=> bs!1063224 (not (= lambda!198944 lambda!198844))))

(assert (=> b!4654021 true))

(declare-fun bs!1063225 () Bool)

(declare-fun b!4654022 () Bool)

(assert (= bs!1063225 (and b!4654022 d!1475272)))

(declare-fun lambda!198945 () Int)

(assert (=> bs!1063225 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816572) (= lambda!198945 lambda!198837))))

(declare-fun bs!1063227 () Bool)

(assert (= bs!1063227 (and b!4654022 d!1475494)))

(assert (=> bs!1063227 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816578) (= lambda!198945 lambda!198885))))

(declare-fun bs!1063228 () Bool)

(assert (= bs!1063228 (and b!4654022 b!4653227)))

(assert (=> bs!1063228 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816657) (= lambda!198945 lambda!198851))))

(declare-fun bs!1063229 () Bool)

(assert (= bs!1063229 (and b!4654022 b!4654021)))

(assert (=> bs!1063229 (= lambda!198945 lambda!198944)))

(declare-fun bs!1063230 () Bool)

(assert (= bs!1063230 (and b!4654022 d!1475404)))

(assert (=> bs!1063230 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816745) (= lambda!198945 lambda!198862))))

(declare-fun bs!1063231 () Bool)

(assert (= bs!1063231 (and b!4654022 b!4653410)))

(assert (=> bs!1063231 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198945 lambda!198859))))

(declare-fun bs!1063232 () Bool)

(assert (= bs!1063232 (and b!4654022 d!1475666)))

(assert (=> bs!1063232 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817133) (= lambda!198945 lambda!198930))))

(declare-fun bs!1063234 () Bool)

(assert (= bs!1063234 (and b!4654022 d!1475542)))

(assert (=> bs!1063234 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198945 lambda!198903))))

(declare-fun bs!1063236 () Bool)

(assert (= bs!1063236 (and b!4654022 b!4653112)))

(assert (=> bs!1063236 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198945 lambda!198825))))

(declare-fun bs!1063238 () Bool)

(assert (= bs!1063238 (and b!4654022 b!4653963)))

(assert (=> bs!1063238 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817226) (= lambda!198945 lambda!198941))))

(declare-fun bs!1063240 () Bool)

(assert (= bs!1063240 (and b!4654022 d!1475300)))

(assert (=> bs!1063240 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816627) (= lambda!198945 lambda!198848))))

(declare-fun bs!1063242 () Bool)

(assert (= bs!1063242 (and b!4654022 b!4653105)))

(assert (=> bs!1063242 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198945 lambda!198818))))

(declare-fun bs!1063244 () Bool)

(assert (= bs!1063244 (and b!4654022 b!4653177)))

(assert (=> bs!1063244 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816243) (= lambda!198945 lambda!198834))))

(declare-fun bs!1063246 () Bool)

(assert (= bs!1063246 (and b!4654022 b!4653178)))

(assert (=> bs!1063246 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816243) (= lambda!198945 lambda!198835))))

(declare-fun bs!1063248 () Bool)

(assert (= bs!1063248 (and b!4654022 b!4653751)))

(assert (=> bs!1063248 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198945 lambda!198907))))

(declare-fun bs!1063250 () Bool)

(assert (= bs!1063250 (and b!4654022 b!4653222)))

(assert (=> bs!1063250 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816633) (= lambda!198945 lambda!198847))))

(declare-fun bs!1063252 () Bool)

(assert (= bs!1063252 (and b!4654022 b!4653625)))

(assert (=> bs!1063252 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198945 lambda!198893))))

(declare-fun bs!1063254 () Bool)

(assert (= bs!1063254 (and b!4654022 d!1475566)))

(assert (=> bs!1063254 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816243) (= lambda!198945 lambda!198904))))

(assert (=> bs!1063228 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198945 lambda!198850))))

(declare-fun bs!1063257 () Bool)

(assert (= bs!1063257 (and b!4654022 d!1475590)))

(assert (=> bs!1063257 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816505) (= lambda!198945 lambda!198905))))

(assert (=> bs!1063246 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816578) (= lambda!198945 lambda!198836))))

(declare-fun bs!1063259 () Bool)

(assert (= bs!1063259 (and b!4654022 b!4653624)))

(assert (=> bs!1063259 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198945 lambda!198892))))

(declare-fun bs!1063261 () Bool)

(assert (= bs!1063261 (and b!4654022 d!1475700)))

(assert (=> bs!1063261 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816526) (= lambda!198945 lambda!198933))))

(declare-fun bs!1063263 () Bool)

(assert (= bs!1063263 (and b!4654022 b!4653411)))

(assert (=> bs!1063263 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198945 lambda!198860))))

(declare-fun bs!1063265 () Bool)

(assert (= bs!1063265 (and b!4654022 d!1475270)))

(assert (=> bs!1063265 (not (= lambda!198945 lambda!198833))))

(declare-fun bs!1063267 () Bool)

(assert (= bs!1063267 (and b!4654022 b!4653752)))

(assert (=> bs!1063267 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817033) (= lambda!198945 lambda!198909))))

(declare-fun bs!1063268 () Bool)

(assert (= bs!1063268 (and b!4654022 b!4653879)))

(assert (=> bs!1063268 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817139) (= lambda!198945 lambda!198929))))

(declare-fun bs!1063270 () Bool)

(assert (= bs!1063270 (and b!4654022 d!1475502)))

(assert (=> bs!1063270 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816922) (= lambda!198945 lambda!198896))))

(declare-fun bs!1063272 () Bool)

(assert (= bs!1063272 (and b!4654022 b!4653878)))

(assert (=> bs!1063272 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198945 lambda!198925))))

(declare-fun bs!1063274 () Bool)

(assert (= bs!1063274 (and b!4654022 b!4653962)))

(assert (=> bs!1063274 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198945 lambda!198938))))

(declare-fun bs!1063276 () Bool)

(assert (= bs!1063276 (and b!4654022 d!1475722)))

(assert (=> bs!1063276 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817220) (= lambda!198945 lambda!198942))))

(assert (=> bs!1063263 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816751) (= lambda!198945 lambda!198861))))

(assert (=> bs!1063242 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816505) (= lambda!198945 lambda!198820))))

(declare-fun bs!1063280 () Bool)

(assert (= bs!1063280 (and b!4654022 b!4653226)))

(assert (=> bs!1063280 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198945 lambda!198849))))

(declare-fun bs!1063281 () Bool)

(assert (= bs!1063281 (and b!4654022 b!4653221)))

(assert (=> bs!1063281 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198945 lambda!198845))))

(declare-fun bs!1063283 () Bool)

(assert (= bs!1063283 (and b!4654022 d!1475200)))

(assert (=> bs!1063283 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816499) (= lambda!198945 lambda!198821))))

(assert (=> bs!1063238 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198945 lambda!198940))))

(declare-fun bs!1063286 () Bool)

(assert (= bs!1063286 (and b!4654022 b!4653104)))

(assert (=> bs!1063286 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198945 lambda!198817))))

(assert (=> bs!1063267 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198945 lambda!198908))))

(assert (=> bs!1063252 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816928) (= lambda!198945 lambda!198895))))

(assert (=> bs!1063250 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198945 lambda!198846))))

(assert (=> bs!1063268 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198945 lambda!198927))))

(declare-fun bs!1063290 () Bool)

(assert (= bs!1063290 (and b!4654022 d!1475596)))

(assert (=> bs!1063290 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817027) (= lambda!198945 lambda!198910))))

(declare-fun bs!1063291 () Bool)

(assert (= bs!1063291 (and b!4654022 d!1475712)))

(assert (=> bs!1063291 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816657) (= lambda!198945 lambda!198936))))

(declare-fun bs!1063292 () Bool)

(assert (= bs!1063292 (and b!4654022 d!1475248)))

(assert (=> bs!1063292 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816520) (= lambda!198945 lambda!198827))))

(assert (=> bs!1063236 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816526) (= lambda!198945 lambda!198826))))

(declare-fun bs!1063295 () Bool)

(assert (= bs!1063295 (and b!4654022 b!4653111)))

(assert (=> bs!1063295 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198945 lambda!198824))))

(declare-fun bs!1063296 () Bool)

(assert (= bs!1063296 (and b!4654022 d!1475308)))

(assert (=> bs!1063296 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1816651) (= lambda!198945 lambda!198852))))

(declare-fun bs!1063298 () Bool)

(assert (= bs!1063298 (and b!4654022 d!1475292)))

(assert (=> bs!1063298 (not (= lambda!198945 lambda!198844))))

(assert (=> b!4654022 true))

(declare-fun lambda!198947 () Int)

(declare-fun lt!1817268 () ListMap!4533)

(assert (=> bs!1063225 (= (= lt!1817268 lt!1816572) (= lambda!198947 lambda!198837))))

(assert (=> bs!1063227 (= (= lt!1817268 lt!1816578) (= lambda!198947 lambda!198885))))

(assert (=> bs!1063228 (= (= lt!1817268 lt!1816657) (= lambda!198947 lambda!198851))))

(assert (=> bs!1063230 (= (= lt!1817268 lt!1816745) (= lambda!198947 lambda!198862))))

(assert (=> bs!1063231 (= (= lt!1817268 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198947 lambda!198859))))

(assert (=> bs!1063232 (= (= lt!1817268 lt!1817133) (= lambda!198947 lambda!198930))))

(assert (=> bs!1063234 (= (= lt!1817268 (ListMap!4534 Nil!51874)) (= lambda!198947 lambda!198903))))

(assert (=> bs!1063236 (= (= lt!1817268 (ListMap!4534 Nil!51874)) (= lambda!198947 lambda!198825))))

(assert (=> bs!1063238 (= (= lt!1817268 lt!1817226) (= lambda!198947 lambda!198941))))

(assert (=> bs!1063240 (= (= lt!1817268 lt!1816627) (= lambda!198947 lambda!198848))))

(assert (=> bs!1063242 (= (= lt!1817268 (ListMap!4534 Nil!51874)) (= lambda!198947 lambda!198818))))

(assert (=> bs!1063244 (= (= lt!1817268 lt!1816243) (= lambda!198947 lambda!198834))))

(assert (=> bs!1063246 (= (= lt!1817268 lt!1816243) (= lambda!198947 lambda!198835))))

(assert (=> bs!1063248 (= (= lt!1817268 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198947 lambda!198907))))

(assert (=> bs!1063250 (= (= lt!1817268 lt!1816633) (= lambda!198947 lambda!198847))))

(assert (=> bs!1063252 (= (= lt!1817268 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198947 lambda!198893))))

(assert (=> bs!1063254 (= (= lt!1817268 lt!1816243) (= lambda!198947 lambda!198904))))

(assert (=> bs!1063228 (= (= lt!1817268 (ListMap!4534 Nil!51874)) (= lambda!198947 lambda!198850))))

(assert (=> bs!1063257 (= (= lt!1817268 lt!1816505) (= lambda!198947 lambda!198905))))

(assert (=> bs!1063246 (= (= lt!1817268 lt!1816578) (= lambda!198947 lambda!198836))))

(assert (=> bs!1063259 (= (= lt!1817268 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198947 lambda!198892))))

(assert (=> bs!1063261 (= (= lt!1817268 lt!1816526) (= lambda!198947 lambda!198933))))

(assert (=> bs!1063263 (= (= lt!1817268 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198947 lambda!198860))))

(assert (=> bs!1063265 (not (= lambda!198947 lambda!198833))))

(assert (=> bs!1063267 (= (= lt!1817268 lt!1817033) (= lambda!198947 lambda!198909))))

(assert (=> bs!1063268 (= (= lt!1817268 lt!1817139) (= lambda!198947 lambda!198929))))

(assert (=> bs!1063270 (= (= lt!1817268 lt!1816922) (= lambda!198947 lambda!198896))))

(assert (=> bs!1063272 (= (= lt!1817268 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198947 lambda!198925))))

(assert (=> bs!1063274 (= (= lt!1817268 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198947 lambda!198938))))

(assert (=> bs!1063276 (= (= lt!1817268 lt!1817220) (= lambda!198947 lambda!198942))))

(assert (=> bs!1063263 (= (= lt!1817268 lt!1816751) (= lambda!198947 lambda!198861))))

(assert (=> bs!1063242 (= (= lt!1817268 lt!1816505) (= lambda!198947 lambda!198820))))

(assert (=> bs!1063229 (= (= lt!1817268 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198947 lambda!198944))))

(assert (=> b!4654022 (= (= lt!1817268 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198947 lambda!198945))))

(assert (=> bs!1063280 (= (= lt!1817268 (ListMap!4534 Nil!51874)) (= lambda!198947 lambda!198849))))

(assert (=> bs!1063281 (= (= lt!1817268 (ListMap!4534 Nil!51874)) (= lambda!198947 lambda!198845))))

(assert (=> bs!1063283 (= (= lt!1817268 lt!1816499) (= lambda!198947 lambda!198821))))

(assert (=> bs!1063238 (= (= lt!1817268 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198947 lambda!198940))))

(assert (=> bs!1063286 (= (= lt!1817268 (ListMap!4534 Nil!51874)) (= lambda!198947 lambda!198817))))

(assert (=> bs!1063267 (= (= lt!1817268 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198947 lambda!198908))))

(assert (=> bs!1063252 (= (= lt!1817268 lt!1816928) (= lambda!198947 lambda!198895))))

(assert (=> bs!1063250 (= (= lt!1817268 (ListMap!4534 Nil!51874)) (= lambda!198947 lambda!198846))))

(assert (=> bs!1063268 (= (= lt!1817268 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198947 lambda!198927))))

(assert (=> bs!1063290 (= (= lt!1817268 lt!1817027) (= lambda!198947 lambda!198910))))

(assert (=> bs!1063291 (= (= lt!1817268 lt!1816657) (= lambda!198947 lambda!198936))))

(assert (=> bs!1063292 (= (= lt!1817268 lt!1816520) (= lambda!198947 lambda!198827))))

(assert (=> bs!1063236 (= (= lt!1817268 lt!1816526) (= lambda!198947 lambda!198826))))

(assert (=> bs!1063295 (= (= lt!1817268 (ListMap!4534 Nil!51874)) (= lambda!198947 lambda!198824))))

(assert (=> bs!1063296 (= (= lt!1817268 lt!1816651) (= lambda!198947 lambda!198852))))

(assert (=> bs!1063298 (not (= lambda!198947 lambda!198844))))

(assert (=> b!4654022 true))

(declare-fun bs!1063341 () Bool)

(declare-fun d!1475760 () Bool)

(assert (= bs!1063341 (and d!1475760 d!1475272)))

(declare-fun lambda!198950 () Int)

(declare-fun lt!1817262 () ListMap!4533)

(assert (=> bs!1063341 (= (= lt!1817262 lt!1816572) (= lambda!198950 lambda!198837))))

(declare-fun bs!1063342 () Bool)

(assert (= bs!1063342 (and d!1475760 d!1475494)))

(assert (=> bs!1063342 (= (= lt!1817262 lt!1816578) (= lambda!198950 lambda!198885))))

(declare-fun bs!1063343 () Bool)

(assert (= bs!1063343 (and d!1475760 b!4653227)))

(assert (=> bs!1063343 (= (= lt!1817262 lt!1816657) (= lambda!198950 lambda!198851))))

(declare-fun bs!1063344 () Bool)

(assert (= bs!1063344 (and d!1475760 d!1475404)))

(assert (=> bs!1063344 (= (= lt!1817262 lt!1816745) (= lambda!198950 lambda!198862))))

(declare-fun bs!1063345 () Bool)

(assert (= bs!1063345 (and d!1475760 b!4653410)))

(assert (=> bs!1063345 (= (= lt!1817262 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198950 lambda!198859))))

(declare-fun bs!1063346 () Bool)

(assert (= bs!1063346 (and d!1475760 d!1475666)))

(assert (=> bs!1063346 (= (= lt!1817262 lt!1817133) (= lambda!198950 lambda!198930))))

(declare-fun bs!1063347 () Bool)

(assert (= bs!1063347 (and d!1475760 d!1475542)))

(assert (=> bs!1063347 (= (= lt!1817262 (ListMap!4534 Nil!51874)) (= lambda!198950 lambda!198903))))

(declare-fun bs!1063348 () Bool)

(assert (= bs!1063348 (and d!1475760 b!4653112)))

(assert (=> bs!1063348 (= (= lt!1817262 (ListMap!4534 Nil!51874)) (= lambda!198950 lambda!198825))))

(declare-fun bs!1063349 () Bool)

(assert (= bs!1063349 (and d!1475760 b!4653963)))

(assert (=> bs!1063349 (= (= lt!1817262 lt!1817226) (= lambda!198950 lambda!198941))))

(declare-fun bs!1063350 () Bool)

(assert (= bs!1063350 (and d!1475760 d!1475300)))

(assert (=> bs!1063350 (= (= lt!1817262 lt!1816627) (= lambda!198950 lambda!198848))))

(declare-fun bs!1063351 () Bool)

(assert (= bs!1063351 (and d!1475760 b!4653105)))

(assert (=> bs!1063351 (= (= lt!1817262 (ListMap!4534 Nil!51874)) (= lambda!198950 lambda!198818))))

(declare-fun bs!1063352 () Bool)

(assert (= bs!1063352 (and d!1475760 b!4653177)))

(assert (=> bs!1063352 (= (= lt!1817262 lt!1816243) (= lambda!198950 lambda!198834))))

(declare-fun bs!1063353 () Bool)

(assert (= bs!1063353 (and d!1475760 b!4653178)))

(assert (=> bs!1063353 (= (= lt!1817262 lt!1816243) (= lambda!198950 lambda!198835))))

(declare-fun bs!1063354 () Bool)

(assert (= bs!1063354 (and d!1475760 b!4653751)))

(assert (=> bs!1063354 (= (= lt!1817262 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198950 lambda!198907))))

(declare-fun bs!1063355 () Bool)

(assert (= bs!1063355 (and d!1475760 b!4653222)))

(assert (=> bs!1063355 (= (= lt!1817262 lt!1816633) (= lambda!198950 lambda!198847))))

(declare-fun bs!1063356 () Bool)

(assert (= bs!1063356 (and d!1475760 b!4653625)))

(assert (=> bs!1063356 (= (= lt!1817262 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198950 lambda!198893))))

(declare-fun bs!1063357 () Bool)

(assert (= bs!1063357 (and d!1475760 d!1475566)))

(assert (=> bs!1063357 (= (= lt!1817262 lt!1816243) (= lambda!198950 lambda!198904))))

(assert (=> bs!1063343 (= (= lt!1817262 (ListMap!4534 Nil!51874)) (= lambda!198950 lambda!198850))))

(declare-fun bs!1063358 () Bool)

(assert (= bs!1063358 (and d!1475760 d!1475590)))

(assert (=> bs!1063358 (= (= lt!1817262 lt!1816505) (= lambda!198950 lambda!198905))))

(assert (=> bs!1063353 (= (= lt!1817262 lt!1816578) (= lambda!198950 lambda!198836))))

(declare-fun bs!1063359 () Bool)

(assert (= bs!1063359 (and d!1475760 b!4653624)))

(assert (=> bs!1063359 (= (= lt!1817262 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198950 lambda!198892))))

(declare-fun bs!1063360 () Bool)

(assert (= bs!1063360 (and d!1475760 d!1475700)))

(assert (=> bs!1063360 (= (= lt!1817262 lt!1816526) (= lambda!198950 lambda!198933))))

(declare-fun bs!1063361 () Bool)

(assert (= bs!1063361 (and d!1475760 b!4653411)))

(assert (=> bs!1063361 (= (= lt!1817262 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198950 lambda!198860))))

(declare-fun bs!1063362 () Bool)

(assert (= bs!1063362 (and d!1475760 d!1475270)))

(assert (=> bs!1063362 (not (= lambda!198950 lambda!198833))))

(declare-fun bs!1063363 () Bool)

(assert (= bs!1063363 (and d!1475760 b!4653752)))

(assert (=> bs!1063363 (= (= lt!1817262 lt!1817033) (= lambda!198950 lambda!198909))))

(declare-fun bs!1063364 () Bool)

(assert (= bs!1063364 (and d!1475760 b!4653879)))

(assert (=> bs!1063364 (= (= lt!1817262 lt!1817139) (= lambda!198950 lambda!198929))))

(declare-fun bs!1063365 () Bool)

(assert (= bs!1063365 (and d!1475760 b!4654022)))

(assert (=> bs!1063365 (= (= lt!1817262 lt!1817268) (= lambda!198950 lambda!198947))))

(declare-fun bs!1063366 () Bool)

(assert (= bs!1063366 (and d!1475760 d!1475502)))

(assert (=> bs!1063366 (= (= lt!1817262 lt!1816922) (= lambda!198950 lambda!198896))))

(declare-fun bs!1063367 () Bool)

(assert (= bs!1063367 (and d!1475760 b!4653878)))

(assert (=> bs!1063367 (= (= lt!1817262 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198950 lambda!198925))))

(declare-fun bs!1063368 () Bool)

(assert (= bs!1063368 (and d!1475760 b!4653962)))

(assert (=> bs!1063368 (= (= lt!1817262 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198950 lambda!198938))))

(declare-fun bs!1063369 () Bool)

(assert (= bs!1063369 (and d!1475760 d!1475722)))

(assert (=> bs!1063369 (= (= lt!1817262 lt!1817220) (= lambda!198950 lambda!198942))))

(assert (=> bs!1063361 (= (= lt!1817262 lt!1816751) (= lambda!198950 lambda!198861))))

(assert (=> bs!1063351 (= (= lt!1817262 lt!1816505) (= lambda!198950 lambda!198820))))

(declare-fun bs!1063370 () Bool)

(assert (= bs!1063370 (and d!1475760 b!4654021)))

(assert (=> bs!1063370 (= (= lt!1817262 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198950 lambda!198944))))

(assert (=> bs!1063365 (= (= lt!1817262 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198950 lambda!198945))))

(declare-fun bs!1063371 () Bool)

(assert (= bs!1063371 (and d!1475760 b!4653226)))

(assert (=> bs!1063371 (= (= lt!1817262 (ListMap!4534 Nil!51874)) (= lambda!198950 lambda!198849))))

(declare-fun bs!1063372 () Bool)

(assert (= bs!1063372 (and d!1475760 b!4653221)))

(assert (=> bs!1063372 (= (= lt!1817262 (ListMap!4534 Nil!51874)) (= lambda!198950 lambda!198845))))

(declare-fun bs!1063373 () Bool)

(assert (= bs!1063373 (and d!1475760 d!1475200)))

(assert (=> bs!1063373 (= (= lt!1817262 lt!1816499) (= lambda!198950 lambda!198821))))

(assert (=> bs!1063349 (= (= lt!1817262 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198950 lambda!198940))))

(declare-fun bs!1063374 () Bool)

(assert (= bs!1063374 (and d!1475760 b!4653104)))

(assert (=> bs!1063374 (= (= lt!1817262 (ListMap!4534 Nil!51874)) (= lambda!198950 lambda!198817))))

(assert (=> bs!1063363 (= (= lt!1817262 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198950 lambda!198908))))

(assert (=> bs!1063356 (= (= lt!1817262 lt!1816928) (= lambda!198950 lambda!198895))))

(assert (=> bs!1063355 (= (= lt!1817262 (ListMap!4534 Nil!51874)) (= lambda!198950 lambda!198846))))

(assert (=> bs!1063364 (= (= lt!1817262 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198950 lambda!198927))))

(declare-fun bs!1063375 () Bool)

(assert (= bs!1063375 (and d!1475760 d!1475596)))

(assert (=> bs!1063375 (= (= lt!1817262 lt!1817027) (= lambda!198950 lambda!198910))))

(declare-fun bs!1063376 () Bool)

(assert (= bs!1063376 (and d!1475760 d!1475712)))

(assert (=> bs!1063376 (= (= lt!1817262 lt!1816657) (= lambda!198950 lambda!198936))))

(declare-fun bs!1063377 () Bool)

(assert (= bs!1063377 (and d!1475760 d!1475248)))

(assert (=> bs!1063377 (= (= lt!1817262 lt!1816520) (= lambda!198950 lambda!198827))))

(assert (=> bs!1063348 (= (= lt!1817262 lt!1816526) (= lambda!198950 lambda!198826))))

(declare-fun bs!1063378 () Bool)

(assert (= bs!1063378 (and d!1475760 b!4653111)))

(assert (=> bs!1063378 (= (= lt!1817262 (ListMap!4534 Nil!51874)) (= lambda!198950 lambda!198824))))

(declare-fun bs!1063379 () Bool)

(assert (= bs!1063379 (and d!1475760 d!1475308)))

(assert (=> bs!1063379 (= (= lt!1817262 lt!1816651) (= lambda!198950 lambda!198852))))

(declare-fun bs!1063380 () Bool)

(assert (= bs!1063380 (and d!1475760 d!1475292)))

(assert (=> bs!1063380 (not (= lambda!198950 lambda!198844))))

(assert (=> d!1475760 true))

(declare-fun b!4654019 () Bool)

(declare-fun res!1956565 () Bool)

(declare-fun e!2903695 () Bool)

(assert (=> b!4654019 (=> (not res!1956565) (not e!2903695))))

(assert (=> b!4654019 (= res!1956565 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) lambda!198950))))

(declare-fun b!4654020 () Bool)

(assert (=> b!4654020 (= e!2903695 (invariantList!1292 (toList!5195 lt!1817262)))))

(declare-fun e!2903696 () ListMap!4533)

(assert (=> b!4654021 (= e!2903696 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))))

(declare-fun lt!1817270 () Unit!118036)

(declare-fun call!325229 () Unit!118036)

(assert (=> b!4654021 (= lt!1817270 call!325229)))

(declare-fun call!325228 () Bool)

(assert (=> b!4654021 call!325228))

(declare-fun lt!1817279 () Unit!118036)

(assert (=> b!4654021 (= lt!1817279 lt!1817270)))

(declare-fun call!325230 () Bool)

(assert (=> b!4654021 call!325230))

(declare-fun lt!1817265 () Unit!118036)

(declare-fun Unit!118338 () Unit!118036)

(assert (=> b!4654021 (= lt!1817265 Unit!118338)))

(declare-fun bm!325223 () Bool)

(declare-fun c!796609 () Bool)

(assert (=> bm!325223 (= call!325230 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (ite c!796609 lambda!198944 lambda!198947)))))

(assert (=> b!4654022 (= e!2903696 lt!1817268)))

(declare-fun lt!1817271 () ListMap!4533)

(assert (=> b!4654022 (= lt!1817271 (+!1976 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))))))

(assert (=> b!4654022 (= lt!1817268 (addToMapMapFromBucket!1089 (t!359110 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (+!1976 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))))))))

(declare-fun lt!1817274 () Unit!118036)

(assert (=> b!4654022 (= lt!1817274 call!325229)))

(assert (=> b!4654022 call!325228))

(declare-fun lt!1817273 () Unit!118036)

(assert (=> b!4654022 (= lt!1817273 lt!1817274)))

(assert (=> b!4654022 (forall!11010 (toList!5195 lt!1817271) lambda!198947)))

(declare-fun lt!1817275 () Unit!118036)

(declare-fun Unit!118339 () Unit!118036)

(assert (=> b!4654022 (= lt!1817275 Unit!118339)))

(assert (=> b!4654022 (forall!11010 (t!359110 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) lambda!198947)))

(declare-fun lt!1817266 () Unit!118036)

(declare-fun Unit!118340 () Unit!118036)

(assert (=> b!4654022 (= lt!1817266 Unit!118340)))

(declare-fun lt!1817272 () Unit!118036)

(declare-fun Unit!118341 () Unit!118036)

(assert (=> b!4654022 (= lt!1817272 Unit!118341)))

(declare-fun lt!1817264 () Unit!118036)

(assert (=> b!4654022 (= lt!1817264 (forallContained!3216 (toList!5195 lt!1817271) lambda!198947 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))))))

(assert (=> b!4654022 (contains!15019 lt!1817271 (_1!29781 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))))))

(declare-fun lt!1817276 () Unit!118036)

(declare-fun Unit!118342 () Unit!118036)

(assert (=> b!4654022 (= lt!1817276 Unit!118342)))

(assert (=> b!4654022 (contains!15019 lt!1817268 (_1!29781 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))))))

(declare-fun lt!1817280 () Unit!118036)

(declare-fun Unit!118343 () Unit!118036)

(assert (=> b!4654022 (= lt!1817280 Unit!118343)))

(assert (=> b!4654022 (forall!11010 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lambda!198947)))

(declare-fun lt!1817282 () Unit!118036)

(declare-fun Unit!118344 () Unit!118036)

(assert (=> b!4654022 (= lt!1817282 Unit!118344)))

(assert (=> b!4654022 (forall!11010 (toList!5195 lt!1817271) lambda!198947)))

(declare-fun lt!1817277 () Unit!118036)

(declare-fun Unit!118345 () Unit!118036)

(assert (=> b!4654022 (= lt!1817277 Unit!118345)))

(declare-fun lt!1817278 () Unit!118036)

(declare-fun Unit!118346 () Unit!118036)

(assert (=> b!4654022 (= lt!1817278 Unit!118346)))

(declare-fun lt!1817269 () Unit!118036)

(assert (=> b!4654022 (= lt!1817269 (addForallContainsKeyThenBeforeAdding!591 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817268 (_1!29781 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))) (_2!29781 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))))))))

(assert (=> b!4654022 call!325230))

(declare-fun lt!1817263 () Unit!118036)

(assert (=> b!4654022 (= lt!1817263 lt!1817269)))

(assert (=> b!4654022 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) lambda!198947)))

(declare-fun lt!1817267 () Unit!118036)

(declare-fun Unit!118347 () Unit!118036)

(assert (=> b!4654022 (= lt!1817267 Unit!118347)))

(declare-fun res!1956564 () Bool)

(assert (=> b!4654022 (= res!1956564 (forall!11010 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lambda!198947))))

(declare-fun e!2903697 () Bool)

(assert (=> b!4654022 (=> (not res!1956564) (not e!2903697))))

(assert (=> b!4654022 e!2903697))

(declare-fun lt!1817281 () Unit!118036)

(declare-fun Unit!118348 () Unit!118036)

(assert (=> b!4654022 (= lt!1817281 Unit!118348)))

(assert (=> d!1475760 e!2903695))

(declare-fun res!1956563 () Bool)

(assert (=> d!1475760 (=> (not res!1956563) (not e!2903695))))

(assert (=> d!1475760 (= res!1956563 (forall!11010 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lambda!198950))))

(assert (=> d!1475760 (= lt!1817262 e!2903696)))

(assert (=> d!1475760 (= c!796609 ((_ is Nil!51874) (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))))))

(assert (=> d!1475760 (noDuplicateKeys!1632 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))))

(assert (=> d!1475760 (= (addToMapMapFromBucket!1089 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) lt!1817262)))

(declare-fun bm!325224 () Bool)

(assert (=> bm!325224 (= call!325228 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (ite c!796609 lambda!198944 lambda!198945)))))

(declare-fun bm!325225 () Bool)

(assert (=> bm!325225 (= call!325229 (lemmaContainsAllItsOwnKeys!592 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))))))

(declare-fun b!4654023 () Bool)

(assert (=> b!4654023 (= e!2903697 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) lambda!198947))))

(assert (= (and d!1475760 c!796609) b!4654021))

(assert (= (and d!1475760 (not c!796609)) b!4654022))

(assert (= (and b!4654022 res!1956564) b!4654023))

(assert (= (or b!4654021 b!4654022) bm!325225))

(assert (= (or b!4654021 b!4654022) bm!325224))

(assert (= (or b!4654021 b!4654022) bm!325223))

(assert (= (and d!1475760 res!1956563) b!4654019))

(assert (= (and b!4654019 res!1956565) b!4654020))

(declare-fun m!5532263 () Bool)

(assert (=> d!1475760 m!5532263))

(declare-fun m!5532265 () Bool)

(assert (=> d!1475760 m!5532265))

(declare-fun m!5532267 () Bool)

(assert (=> bm!325224 m!5532267))

(declare-fun m!5532269 () Bool)

(assert (=> b!4654020 m!5532269))

(declare-fun m!5532271 () Bool)

(assert (=> b!4654019 m!5532271))

(assert (=> bm!325225 m!5530399))

(declare-fun m!5532273 () Bool)

(assert (=> bm!325225 m!5532273))

(declare-fun m!5532275 () Bool)

(assert (=> bm!325223 m!5532275))

(declare-fun m!5532277 () Bool)

(assert (=> b!4654023 m!5532277))

(assert (=> b!4654022 m!5530399))

(declare-fun m!5532279 () Bool)

(assert (=> b!4654022 m!5532279))

(declare-fun m!5532281 () Bool)

(assert (=> b!4654022 m!5532281))

(assert (=> b!4654022 m!5532281))

(declare-fun m!5532283 () Bool)

(assert (=> b!4654022 m!5532283))

(declare-fun m!5532285 () Bool)

(assert (=> b!4654022 m!5532285))

(declare-fun m!5532287 () Bool)

(assert (=> b!4654022 m!5532287))

(assert (=> b!4654022 m!5532285))

(declare-fun m!5532289 () Bool)

(assert (=> b!4654022 m!5532289))

(declare-fun m!5532291 () Bool)

(assert (=> b!4654022 m!5532291))

(declare-fun m!5532293 () Bool)

(assert (=> b!4654022 m!5532293))

(assert (=> b!4654022 m!5532277))

(declare-fun m!5532295 () Bool)

(assert (=> b!4654022 m!5532295))

(assert (=> b!4654022 m!5530399))

(assert (=> b!4654022 m!5532289))

(assert (=> b!4653161 d!1475760))

(declare-fun bs!1063411 () Bool)

(declare-fun d!1475770 () Bool)

(assert (= bs!1063411 (and d!1475770 d!1475284)))

(declare-fun lambda!198952 () Int)

(assert (=> bs!1063411 (not (= lambda!198952 lambda!198841))))

(declare-fun bs!1063414 () Bool)

(assert (= bs!1063414 (and d!1475770 d!1475262)))

(assert (=> bs!1063414 (= lambda!198952 lambda!198830)))

(declare-fun bs!1063416 () Bool)

(assert (= bs!1063416 (and d!1475770 d!1475274)))

(assert (=> bs!1063416 (= lambda!198952 lambda!198838)))

(declare-fun bs!1063417 () Bool)

(assert (= bs!1063417 (and d!1475770 b!4652954)))

(assert (=> bs!1063417 (= lambda!198952 lambda!198730)))

(declare-fun bs!1063419 () Bool)

(assert (= bs!1063419 (and d!1475770 d!1475290)))

(assert (=> bs!1063419 (= lambda!198952 lambda!198843)))

(declare-fun bs!1063420 () Bool)

(assert (= bs!1063420 (and d!1475770 d!1475418)))

(assert (=> bs!1063420 (= lambda!198952 lambda!198863)))

(declare-fun bs!1063422 () Bool)

(assert (= bs!1063422 (and d!1475770 d!1475288)))

(assert (=> bs!1063422 (= lambda!198952 lambda!198842)))

(declare-fun lt!1817305 () ListMap!4533)

(assert (=> d!1475770 (invariantList!1292 (toList!5195 lt!1817305))))

(declare-fun e!2903706 () ListMap!4533)

(assert (=> d!1475770 (= lt!1817305 e!2903706)))

(declare-fun c!796611 () Bool)

(assert (=> d!1475770 (= c!796611 ((_ is Cons!51875) (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))))

(assert (=> d!1475770 (forall!11008 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)) lambda!198952)))

(assert (=> d!1475770 (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) lt!1817305)))

(declare-fun b!4654034 () Bool)

(assert (=> b!4654034 (= e!2903706 (addToMapMapFromBucket!1089 (_2!29782 (h!58013 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (extractMap!1688 (t!359111 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))))))))

(declare-fun b!4654035 () Bool)

(assert (=> b!4654035 (= e!2903706 (ListMap!4534 Nil!51874))))

(assert (= (and d!1475770 c!796611) b!4654034))

(assert (= (and d!1475770 (not c!796611)) b!4654035))

(declare-fun m!5532297 () Bool)

(assert (=> d!1475770 m!5532297))

(declare-fun m!5532299 () Bool)

(assert (=> d!1475770 m!5532299))

(declare-fun m!5532301 () Bool)

(assert (=> b!4654034 m!5532301))

(assert (=> b!4654034 m!5532301))

(declare-fun m!5532303 () Bool)

(assert (=> b!4654034 m!5532303))

(assert (=> b!4653161 d!1475770))

(assert (=> bm!325140 d!1475542))

(declare-fun d!1475772 () Bool)

(declare-fun res!1956574 () Bool)

(declare-fun e!2903707 () Bool)

(assert (=> d!1475772 (=> res!1956574 e!2903707)))

(assert (=> d!1475772 (= res!1956574 ((_ is Nil!51874) (toList!5195 lt!1816243)))))

(assert (=> d!1475772 (= (forall!11010 (toList!5195 lt!1816243) (ite c!796424 lambda!198834 lambda!198836)) e!2903707)))

(declare-fun b!4654036 () Bool)

(declare-fun e!2903708 () Bool)

(assert (=> b!4654036 (= e!2903707 e!2903708)))

(declare-fun res!1956575 () Bool)

(assert (=> b!4654036 (=> (not res!1956575) (not e!2903708))))

(assert (=> b!4654036 (= res!1956575 (dynLambda!21580 (ite c!796424 lambda!198834 lambda!198836) (h!58012 (toList!5195 lt!1816243))))))

(declare-fun b!4654037 () Bool)

(assert (=> b!4654037 (= e!2903708 (forall!11010 (t!359110 (toList!5195 lt!1816243)) (ite c!796424 lambda!198834 lambda!198836)))))

(assert (= (and d!1475772 (not res!1956574)) b!4654036))

(assert (= (and b!4654036 res!1956575) b!4654037))

(declare-fun b_lambda!173565 () Bool)

(assert (=> (not b_lambda!173565) (not b!4654036)))

(declare-fun m!5532305 () Bool)

(assert (=> b!4654036 m!5532305))

(declare-fun m!5532307 () Bool)

(assert (=> b!4654037 m!5532307))

(assert (=> bm!325132 d!1475772))

(assert (=> bm!325137 d!1475542))

(declare-fun d!1475774 () Bool)

(assert (=> d!1475774 (= (invariantList!1292 (toList!5195 lt!1816499)) (noDuplicatedKeys!347 (toList!5195 lt!1816499)))))

(declare-fun bs!1063428 () Bool)

(assert (= bs!1063428 d!1475774))

(declare-fun m!5532309 () Bool)

(assert (=> bs!1063428 m!5532309))

(assert (=> b!4653103 d!1475774))

(declare-fun bs!1063429 () Bool)

(declare-fun b!4654040 () Bool)

(assert (= bs!1063429 (and b!4654040 d!1475272)))

(declare-fun lambda!198953 () Int)

(assert (=> bs!1063429 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816572) (= lambda!198953 lambda!198837))))

(declare-fun bs!1063430 () Bool)

(assert (= bs!1063430 (and b!4654040 d!1475494)))

(assert (=> bs!1063430 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816578) (= lambda!198953 lambda!198885))))

(declare-fun bs!1063431 () Bool)

(assert (= bs!1063431 (and b!4654040 b!4653227)))

(assert (=> bs!1063431 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816657) (= lambda!198953 lambda!198851))))

(declare-fun bs!1063432 () Bool)

(assert (= bs!1063432 (and b!4654040 d!1475404)))

(assert (=> bs!1063432 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816745) (= lambda!198953 lambda!198862))))

(declare-fun bs!1063433 () Bool)

(assert (= bs!1063433 (and b!4654040 b!4653410)))

(assert (=> bs!1063433 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198953 lambda!198859))))

(declare-fun bs!1063434 () Bool)

(assert (= bs!1063434 (and b!4654040 d!1475666)))

(assert (=> bs!1063434 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817133) (= lambda!198953 lambda!198930))))

(declare-fun bs!1063435 () Bool)

(assert (= bs!1063435 (and b!4654040 d!1475542)))

(assert (=> bs!1063435 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198953 lambda!198903))))

(declare-fun bs!1063436 () Bool)

(assert (= bs!1063436 (and b!4654040 b!4653112)))

(assert (=> bs!1063436 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198953 lambda!198825))))

(declare-fun bs!1063437 () Bool)

(assert (= bs!1063437 (and b!4654040 b!4653963)))

(assert (=> bs!1063437 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817226) (= lambda!198953 lambda!198941))))

(declare-fun bs!1063438 () Bool)

(assert (= bs!1063438 (and b!4654040 d!1475300)))

(assert (=> bs!1063438 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816627) (= lambda!198953 lambda!198848))))

(declare-fun bs!1063439 () Bool)

(assert (= bs!1063439 (and b!4654040 b!4653105)))

(assert (=> bs!1063439 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198953 lambda!198818))))

(declare-fun bs!1063440 () Bool)

(assert (= bs!1063440 (and b!4654040 b!4653177)))

(assert (=> bs!1063440 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816243) (= lambda!198953 lambda!198834))))

(declare-fun bs!1063441 () Bool)

(assert (= bs!1063441 (and b!4654040 b!4653178)))

(assert (=> bs!1063441 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816243) (= lambda!198953 lambda!198835))))

(declare-fun bs!1063442 () Bool)

(assert (= bs!1063442 (and b!4654040 b!4653751)))

(assert (=> bs!1063442 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198953 lambda!198907))))

(declare-fun bs!1063443 () Bool)

(assert (= bs!1063443 (and b!4654040 b!4653222)))

(assert (=> bs!1063443 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816633) (= lambda!198953 lambda!198847))))

(declare-fun bs!1063444 () Bool)

(assert (= bs!1063444 (and b!4654040 b!4653625)))

(assert (=> bs!1063444 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198953 lambda!198893))))

(declare-fun bs!1063445 () Bool)

(assert (= bs!1063445 (and b!4654040 d!1475566)))

(assert (=> bs!1063445 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816243) (= lambda!198953 lambda!198904))))

(assert (=> bs!1063431 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198953 lambda!198850))))

(declare-fun bs!1063446 () Bool)

(assert (= bs!1063446 (and b!4654040 d!1475590)))

(assert (=> bs!1063446 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816505) (= lambda!198953 lambda!198905))))

(assert (=> bs!1063441 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816578) (= lambda!198953 lambda!198836))))

(declare-fun bs!1063447 () Bool)

(assert (= bs!1063447 (and b!4654040 b!4653624)))

(assert (=> bs!1063447 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198953 lambda!198892))))

(declare-fun bs!1063448 () Bool)

(assert (= bs!1063448 (and b!4654040 d!1475700)))

(assert (=> bs!1063448 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816526) (= lambda!198953 lambda!198933))))

(declare-fun bs!1063449 () Bool)

(assert (= bs!1063449 (and b!4654040 b!4653411)))

(assert (=> bs!1063449 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198953 lambda!198860))))

(declare-fun bs!1063450 () Bool)

(assert (= bs!1063450 (and b!4654040 d!1475270)))

(assert (=> bs!1063450 (not (= lambda!198953 lambda!198833))))

(declare-fun bs!1063451 () Bool)

(assert (= bs!1063451 (and b!4654040 b!4653752)))

(assert (=> bs!1063451 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817033) (= lambda!198953 lambda!198909))))

(declare-fun bs!1063452 () Bool)

(assert (= bs!1063452 (and b!4654040 b!4653879)))

(assert (=> bs!1063452 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817139) (= lambda!198953 lambda!198929))))

(declare-fun bs!1063453 () Bool)

(assert (= bs!1063453 (and b!4654040 b!4654022)))

(assert (=> bs!1063453 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817268) (= lambda!198953 lambda!198947))))

(declare-fun bs!1063454 () Bool)

(assert (= bs!1063454 (and b!4654040 d!1475502)))

(assert (=> bs!1063454 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816922) (= lambda!198953 lambda!198896))))

(declare-fun bs!1063455 () Bool)

(assert (= bs!1063455 (and b!4654040 b!4653878)))

(assert (=> bs!1063455 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198953 lambda!198925))))

(declare-fun bs!1063456 () Bool)

(assert (= bs!1063456 (and b!4654040 b!4653962)))

(assert (=> bs!1063456 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198953 lambda!198938))))

(declare-fun bs!1063457 () Bool)

(assert (= bs!1063457 (and b!4654040 d!1475722)))

(assert (=> bs!1063457 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817220) (= lambda!198953 lambda!198942))))

(assert (=> bs!1063439 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816505) (= lambda!198953 lambda!198820))))

(declare-fun bs!1063458 () Bool)

(assert (= bs!1063458 (and b!4654040 d!1475760)))

(assert (=> bs!1063458 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817262) (= lambda!198953 lambda!198950))))

(assert (=> bs!1063449 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816751) (= lambda!198953 lambda!198861))))

(declare-fun bs!1063459 () Bool)

(assert (= bs!1063459 (and b!4654040 b!4654021)))

(assert (=> bs!1063459 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198953 lambda!198944))))

(assert (=> bs!1063453 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198953 lambda!198945))))

(declare-fun bs!1063460 () Bool)

(assert (= bs!1063460 (and b!4654040 b!4653226)))

(assert (=> bs!1063460 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198953 lambda!198849))))

(declare-fun bs!1063461 () Bool)

(assert (= bs!1063461 (and b!4654040 b!4653221)))

(assert (=> bs!1063461 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198953 lambda!198845))))

(declare-fun bs!1063462 () Bool)

(assert (= bs!1063462 (and b!4654040 d!1475200)))

(assert (=> bs!1063462 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816499) (= lambda!198953 lambda!198821))))

(assert (=> bs!1063437 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198953 lambda!198940))))

(declare-fun bs!1063463 () Bool)

(assert (= bs!1063463 (and b!4654040 b!4653104)))

(assert (=> bs!1063463 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198953 lambda!198817))))

(assert (=> bs!1063451 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198953 lambda!198908))))

(assert (=> bs!1063444 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816928) (= lambda!198953 lambda!198895))))

(assert (=> bs!1063443 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198953 lambda!198846))))

(assert (=> bs!1063452 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198953 lambda!198927))))

(declare-fun bs!1063464 () Bool)

(assert (= bs!1063464 (and b!4654040 d!1475596)))

(assert (=> bs!1063464 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817027) (= lambda!198953 lambda!198910))))

(declare-fun bs!1063465 () Bool)

(assert (= bs!1063465 (and b!4654040 d!1475712)))

(assert (=> bs!1063465 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816657) (= lambda!198953 lambda!198936))))

(declare-fun bs!1063466 () Bool)

(assert (= bs!1063466 (and b!4654040 d!1475248)))

(assert (=> bs!1063466 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816520) (= lambda!198953 lambda!198827))))

(assert (=> bs!1063436 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816526) (= lambda!198953 lambda!198826))))

(declare-fun bs!1063467 () Bool)

(assert (= bs!1063467 (and b!4654040 b!4653111)))

(assert (=> bs!1063467 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198953 lambda!198824))))

(declare-fun bs!1063468 () Bool)

(assert (= bs!1063468 (and b!4654040 d!1475308)))

(assert (=> bs!1063468 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816651) (= lambda!198953 lambda!198852))))

(declare-fun bs!1063469 () Bool)

(assert (= bs!1063469 (and b!4654040 d!1475292)))

(assert (=> bs!1063469 (not (= lambda!198953 lambda!198844))))

(assert (=> b!4654040 true))

(declare-fun bs!1063471 () Bool)

(declare-fun b!4654041 () Bool)

(assert (= bs!1063471 (and b!4654041 d!1475272)))

(declare-fun lambda!198954 () Int)

(assert (=> bs!1063471 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816572) (= lambda!198954 lambda!198837))))

(declare-fun bs!1063472 () Bool)

(assert (= bs!1063472 (and b!4654041 d!1475494)))

(assert (=> bs!1063472 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816578) (= lambda!198954 lambda!198885))))

(declare-fun bs!1063473 () Bool)

(assert (= bs!1063473 (and b!4654041 b!4653227)))

(assert (=> bs!1063473 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816657) (= lambda!198954 lambda!198851))))

(declare-fun bs!1063474 () Bool)

(assert (= bs!1063474 (and b!4654041 b!4654040)))

(assert (=> bs!1063474 (= lambda!198954 lambda!198953)))

(declare-fun bs!1063475 () Bool)

(assert (= bs!1063475 (and b!4654041 d!1475404)))

(assert (=> bs!1063475 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816745) (= lambda!198954 lambda!198862))))

(declare-fun bs!1063476 () Bool)

(assert (= bs!1063476 (and b!4654041 b!4653410)))

(assert (=> bs!1063476 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198954 lambda!198859))))

(declare-fun bs!1063477 () Bool)

(assert (= bs!1063477 (and b!4654041 d!1475666)))

(assert (=> bs!1063477 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817133) (= lambda!198954 lambda!198930))))

(declare-fun bs!1063478 () Bool)

(assert (= bs!1063478 (and b!4654041 d!1475542)))

(assert (=> bs!1063478 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198954 lambda!198903))))

(declare-fun bs!1063479 () Bool)

(assert (= bs!1063479 (and b!4654041 b!4653112)))

(assert (=> bs!1063479 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198954 lambda!198825))))

(declare-fun bs!1063480 () Bool)

(assert (= bs!1063480 (and b!4654041 b!4653963)))

(assert (=> bs!1063480 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817226) (= lambda!198954 lambda!198941))))

(declare-fun bs!1063481 () Bool)

(assert (= bs!1063481 (and b!4654041 d!1475300)))

(assert (=> bs!1063481 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816627) (= lambda!198954 lambda!198848))))

(declare-fun bs!1063482 () Bool)

(assert (= bs!1063482 (and b!4654041 b!4653105)))

(assert (=> bs!1063482 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198954 lambda!198818))))

(declare-fun bs!1063483 () Bool)

(assert (= bs!1063483 (and b!4654041 b!4653177)))

(assert (=> bs!1063483 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816243) (= lambda!198954 lambda!198834))))

(declare-fun bs!1063484 () Bool)

(assert (= bs!1063484 (and b!4654041 b!4653178)))

(assert (=> bs!1063484 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816243) (= lambda!198954 lambda!198835))))

(declare-fun bs!1063485 () Bool)

(assert (= bs!1063485 (and b!4654041 b!4653751)))

(assert (=> bs!1063485 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198954 lambda!198907))))

(declare-fun bs!1063486 () Bool)

(assert (= bs!1063486 (and b!4654041 b!4653222)))

(assert (=> bs!1063486 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816633) (= lambda!198954 lambda!198847))))

(declare-fun bs!1063487 () Bool)

(assert (= bs!1063487 (and b!4654041 b!4653625)))

(assert (=> bs!1063487 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198954 lambda!198893))))

(declare-fun bs!1063488 () Bool)

(assert (= bs!1063488 (and b!4654041 d!1475566)))

(assert (=> bs!1063488 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816243) (= lambda!198954 lambda!198904))))

(assert (=> bs!1063473 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198954 lambda!198850))))

(declare-fun bs!1063489 () Bool)

(assert (= bs!1063489 (and b!4654041 d!1475590)))

(assert (=> bs!1063489 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816505) (= lambda!198954 lambda!198905))))

(assert (=> bs!1063484 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816578) (= lambda!198954 lambda!198836))))

(declare-fun bs!1063490 () Bool)

(assert (= bs!1063490 (and b!4654041 b!4653624)))

(assert (=> bs!1063490 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198954 lambda!198892))))

(declare-fun bs!1063491 () Bool)

(assert (= bs!1063491 (and b!4654041 d!1475700)))

(assert (=> bs!1063491 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816526) (= lambda!198954 lambda!198933))))

(declare-fun bs!1063492 () Bool)

(assert (= bs!1063492 (and b!4654041 b!4653411)))

(assert (=> bs!1063492 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198954 lambda!198860))))

(declare-fun bs!1063493 () Bool)

(assert (= bs!1063493 (and b!4654041 d!1475270)))

(assert (=> bs!1063493 (not (= lambda!198954 lambda!198833))))

(declare-fun bs!1063494 () Bool)

(assert (= bs!1063494 (and b!4654041 b!4653752)))

(assert (=> bs!1063494 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817033) (= lambda!198954 lambda!198909))))

(declare-fun bs!1063495 () Bool)

(assert (= bs!1063495 (and b!4654041 b!4653879)))

(assert (=> bs!1063495 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817139) (= lambda!198954 lambda!198929))))

(declare-fun bs!1063496 () Bool)

(assert (= bs!1063496 (and b!4654041 b!4654022)))

(assert (=> bs!1063496 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817268) (= lambda!198954 lambda!198947))))

(declare-fun bs!1063497 () Bool)

(assert (= bs!1063497 (and b!4654041 d!1475502)))

(assert (=> bs!1063497 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816922) (= lambda!198954 lambda!198896))))

(declare-fun bs!1063498 () Bool)

(assert (= bs!1063498 (and b!4654041 b!4653878)))

(assert (=> bs!1063498 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198954 lambda!198925))))

(declare-fun bs!1063499 () Bool)

(assert (= bs!1063499 (and b!4654041 b!4653962)))

(assert (=> bs!1063499 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198954 lambda!198938))))

(declare-fun bs!1063500 () Bool)

(assert (= bs!1063500 (and b!4654041 d!1475722)))

(assert (=> bs!1063500 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817220) (= lambda!198954 lambda!198942))))

(assert (=> bs!1063482 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816505) (= lambda!198954 lambda!198820))))

(declare-fun bs!1063501 () Bool)

(assert (= bs!1063501 (and b!4654041 d!1475760)))

(assert (=> bs!1063501 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817262) (= lambda!198954 lambda!198950))))

(assert (=> bs!1063492 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816751) (= lambda!198954 lambda!198861))))

(declare-fun bs!1063502 () Bool)

(assert (= bs!1063502 (and b!4654041 b!4654021)))

(assert (=> bs!1063502 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198954 lambda!198944))))

(assert (=> bs!1063496 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198954 lambda!198945))))

(declare-fun bs!1063503 () Bool)

(assert (= bs!1063503 (and b!4654041 b!4653226)))

(assert (=> bs!1063503 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198954 lambda!198849))))

(declare-fun bs!1063504 () Bool)

(assert (= bs!1063504 (and b!4654041 b!4653221)))

(assert (=> bs!1063504 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198954 lambda!198845))))

(declare-fun bs!1063505 () Bool)

(assert (= bs!1063505 (and b!4654041 d!1475200)))

(assert (=> bs!1063505 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816499) (= lambda!198954 lambda!198821))))

(assert (=> bs!1063480 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198954 lambda!198940))))

(declare-fun bs!1063506 () Bool)

(assert (= bs!1063506 (and b!4654041 b!4653104)))

(assert (=> bs!1063506 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198954 lambda!198817))))

(assert (=> bs!1063494 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198954 lambda!198908))))

(assert (=> bs!1063487 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816928) (= lambda!198954 lambda!198895))))

(assert (=> bs!1063486 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198954 lambda!198846))))

(assert (=> bs!1063495 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198954 lambda!198927))))

(declare-fun bs!1063507 () Bool)

(assert (= bs!1063507 (and b!4654041 d!1475596)))

(assert (=> bs!1063507 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817027) (= lambda!198954 lambda!198910))))

(declare-fun bs!1063508 () Bool)

(assert (= bs!1063508 (and b!4654041 d!1475712)))

(assert (=> bs!1063508 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816657) (= lambda!198954 lambda!198936))))

(declare-fun bs!1063509 () Bool)

(assert (= bs!1063509 (and b!4654041 d!1475248)))

(assert (=> bs!1063509 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816520) (= lambda!198954 lambda!198827))))

(assert (=> bs!1063479 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816526) (= lambda!198954 lambda!198826))))

(declare-fun bs!1063510 () Bool)

(assert (= bs!1063510 (and b!4654041 b!4653111)))

(assert (=> bs!1063510 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (ListMap!4534 Nil!51874)) (= lambda!198954 lambda!198824))))

(declare-fun bs!1063511 () Bool)

(assert (= bs!1063511 (and b!4654041 d!1475308)))

(assert (=> bs!1063511 (= (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1816651) (= lambda!198954 lambda!198852))))

(declare-fun bs!1063512 () Bool)

(assert (= bs!1063512 (and b!4654041 d!1475292)))

(assert (=> bs!1063512 (not (= lambda!198954 lambda!198844))))

(assert (=> b!4654041 true))

(declare-fun lt!1817312 () ListMap!4533)

(declare-fun lambda!198956 () Int)

(assert (=> bs!1063472 (= (= lt!1817312 lt!1816578) (= lambda!198956 lambda!198885))))

(assert (=> bs!1063473 (= (= lt!1817312 lt!1816657) (= lambda!198956 lambda!198851))))

(assert (=> bs!1063474 (= (= lt!1817312 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198956 lambda!198953))))

(assert (=> bs!1063475 (= (= lt!1817312 lt!1816745) (= lambda!198956 lambda!198862))))

(assert (=> bs!1063476 (= (= lt!1817312 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198956 lambda!198859))))

(assert (=> bs!1063477 (= (= lt!1817312 lt!1817133) (= lambda!198956 lambda!198930))))

(assert (=> bs!1063478 (= (= lt!1817312 (ListMap!4534 Nil!51874)) (= lambda!198956 lambda!198903))))

(assert (=> bs!1063479 (= (= lt!1817312 (ListMap!4534 Nil!51874)) (= lambda!198956 lambda!198825))))

(assert (=> bs!1063480 (= (= lt!1817312 lt!1817226) (= lambda!198956 lambda!198941))))

(assert (=> bs!1063481 (= (= lt!1817312 lt!1816627) (= lambda!198956 lambda!198848))))

(assert (=> bs!1063482 (= (= lt!1817312 (ListMap!4534 Nil!51874)) (= lambda!198956 lambda!198818))))

(assert (=> bs!1063483 (= (= lt!1817312 lt!1816243) (= lambda!198956 lambda!198834))))

(assert (=> bs!1063471 (= (= lt!1817312 lt!1816572) (= lambda!198956 lambda!198837))))

(assert (=> b!4654041 (= (= lt!1817312 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198956 lambda!198954))))

(assert (=> bs!1063484 (= (= lt!1817312 lt!1816243) (= lambda!198956 lambda!198835))))

(assert (=> bs!1063485 (= (= lt!1817312 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198956 lambda!198907))))

(assert (=> bs!1063486 (= (= lt!1817312 lt!1816633) (= lambda!198956 lambda!198847))))

(assert (=> bs!1063487 (= (= lt!1817312 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198956 lambda!198893))))

(assert (=> bs!1063488 (= (= lt!1817312 lt!1816243) (= lambda!198956 lambda!198904))))

(assert (=> bs!1063473 (= (= lt!1817312 (ListMap!4534 Nil!51874)) (= lambda!198956 lambda!198850))))

(assert (=> bs!1063489 (= (= lt!1817312 lt!1816505) (= lambda!198956 lambda!198905))))

(assert (=> bs!1063484 (= (= lt!1817312 lt!1816578) (= lambda!198956 lambda!198836))))

(assert (=> bs!1063490 (= (= lt!1817312 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198956 lambda!198892))))

(assert (=> bs!1063491 (= (= lt!1817312 lt!1816526) (= lambda!198956 lambda!198933))))

(assert (=> bs!1063492 (= (= lt!1817312 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198956 lambda!198860))))

(assert (=> bs!1063493 (not (= lambda!198956 lambda!198833))))

(assert (=> bs!1063494 (= (= lt!1817312 lt!1817033) (= lambda!198956 lambda!198909))))

(assert (=> bs!1063495 (= (= lt!1817312 lt!1817139) (= lambda!198956 lambda!198929))))

(assert (=> bs!1063496 (= (= lt!1817312 lt!1817268) (= lambda!198956 lambda!198947))))

(assert (=> bs!1063497 (= (= lt!1817312 lt!1816922) (= lambda!198956 lambda!198896))))

(assert (=> bs!1063498 (= (= lt!1817312 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198956 lambda!198925))))

(assert (=> bs!1063499 (= (= lt!1817312 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198956 lambda!198938))))

(assert (=> bs!1063500 (= (= lt!1817312 lt!1817220) (= lambda!198956 lambda!198942))))

(assert (=> bs!1063482 (= (= lt!1817312 lt!1816505) (= lambda!198956 lambda!198820))))

(assert (=> bs!1063501 (= (= lt!1817312 lt!1817262) (= lambda!198956 lambda!198950))))

(assert (=> bs!1063492 (= (= lt!1817312 lt!1816751) (= lambda!198956 lambda!198861))))

(assert (=> bs!1063502 (= (= lt!1817312 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198956 lambda!198944))))

(assert (=> bs!1063496 (= (= lt!1817312 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198956 lambda!198945))))

(assert (=> bs!1063503 (= (= lt!1817312 (ListMap!4534 Nil!51874)) (= lambda!198956 lambda!198849))))

(assert (=> bs!1063504 (= (= lt!1817312 (ListMap!4534 Nil!51874)) (= lambda!198956 lambda!198845))))

(assert (=> bs!1063505 (= (= lt!1817312 lt!1816499) (= lambda!198956 lambda!198821))))

(assert (=> bs!1063480 (= (= lt!1817312 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198956 lambda!198940))))

(assert (=> bs!1063506 (= (= lt!1817312 (ListMap!4534 Nil!51874)) (= lambda!198956 lambda!198817))))

(assert (=> bs!1063494 (= (= lt!1817312 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198956 lambda!198908))))

(assert (=> bs!1063487 (= (= lt!1817312 lt!1816928) (= lambda!198956 lambda!198895))))

(assert (=> bs!1063486 (= (= lt!1817312 (ListMap!4534 Nil!51874)) (= lambda!198956 lambda!198846))))

(assert (=> bs!1063495 (= (= lt!1817312 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198956 lambda!198927))))

(assert (=> bs!1063507 (= (= lt!1817312 lt!1817027) (= lambda!198956 lambda!198910))))

(assert (=> bs!1063508 (= (= lt!1817312 lt!1816657) (= lambda!198956 lambda!198936))))

(assert (=> bs!1063509 (= (= lt!1817312 lt!1816520) (= lambda!198956 lambda!198827))))

(assert (=> bs!1063479 (= (= lt!1817312 lt!1816526) (= lambda!198956 lambda!198826))))

(assert (=> bs!1063510 (= (= lt!1817312 (ListMap!4534 Nil!51874)) (= lambda!198956 lambda!198824))))

(assert (=> bs!1063511 (= (= lt!1817312 lt!1816651) (= lambda!198956 lambda!198852))))

(assert (=> bs!1063512 (not (= lambda!198956 lambda!198844))))

(assert (=> b!4654041 true))

(declare-fun bs!1063563 () Bool)

(declare-fun d!1475776 () Bool)

(assert (= bs!1063563 (and d!1475776 d!1475494)))

(declare-fun lt!1817306 () ListMap!4533)

(declare-fun lambda!198958 () Int)

(assert (=> bs!1063563 (= (= lt!1817306 lt!1816578) (= lambda!198958 lambda!198885))))

(declare-fun bs!1063565 () Bool)

(assert (= bs!1063565 (and d!1475776 b!4653227)))

(assert (=> bs!1063565 (= (= lt!1817306 lt!1816657) (= lambda!198958 lambda!198851))))

(declare-fun bs!1063567 () Bool)

(assert (= bs!1063567 (and d!1475776 b!4654040)))

(assert (=> bs!1063567 (= (= lt!1817306 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198958 lambda!198953))))

(declare-fun bs!1063569 () Bool)

(assert (= bs!1063569 (and d!1475776 d!1475404)))

(assert (=> bs!1063569 (= (= lt!1817306 lt!1816745) (= lambda!198958 lambda!198862))))

(declare-fun bs!1063571 () Bool)

(assert (= bs!1063571 (and d!1475776 b!4653410)))

(assert (=> bs!1063571 (= (= lt!1817306 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198958 lambda!198859))))

(declare-fun bs!1063573 () Bool)

(assert (= bs!1063573 (and d!1475776 d!1475666)))

(assert (=> bs!1063573 (= (= lt!1817306 lt!1817133) (= lambda!198958 lambda!198930))))

(declare-fun bs!1063575 () Bool)

(assert (= bs!1063575 (and d!1475776 d!1475542)))

(assert (=> bs!1063575 (= (= lt!1817306 (ListMap!4534 Nil!51874)) (= lambda!198958 lambda!198903))))

(declare-fun bs!1063577 () Bool)

(assert (= bs!1063577 (and d!1475776 b!4653112)))

(assert (=> bs!1063577 (= (= lt!1817306 (ListMap!4534 Nil!51874)) (= lambda!198958 lambda!198825))))

(declare-fun bs!1063579 () Bool)

(assert (= bs!1063579 (and d!1475776 b!4653963)))

(assert (=> bs!1063579 (= (= lt!1817306 lt!1817226) (= lambda!198958 lambda!198941))))

(declare-fun bs!1063581 () Bool)

(assert (= bs!1063581 (and d!1475776 d!1475300)))

(assert (=> bs!1063581 (= (= lt!1817306 lt!1816627) (= lambda!198958 lambda!198848))))

(declare-fun bs!1063583 () Bool)

(assert (= bs!1063583 (and d!1475776 b!4653105)))

(assert (=> bs!1063583 (= (= lt!1817306 (ListMap!4534 Nil!51874)) (= lambda!198958 lambda!198818))))

(declare-fun bs!1063585 () Bool)

(assert (= bs!1063585 (and d!1475776 b!4653177)))

(assert (=> bs!1063585 (= (= lt!1817306 lt!1816243) (= lambda!198958 lambda!198834))))

(declare-fun bs!1063587 () Bool)

(assert (= bs!1063587 (and d!1475776 d!1475272)))

(assert (=> bs!1063587 (= (= lt!1817306 lt!1816572) (= lambda!198958 lambda!198837))))

(declare-fun bs!1063589 () Bool)

(assert (= bs!1063589 (and d!1475776 b!4654041)))

(assert (=> bs!1063589 (= (= lt!1817306 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198958 lambda!198954))))

(declare-fun bs!1063591 () Bool)

(assert (= bs!1063591 (and d!1475776 b!4653178)))

(assert (=> bs!1063591 (= (= lt!1817306 lt!1816243) (= lambda!198958 lambda!198835))))

(declare-fun bs!1063593 () Bool)

(assert (= bs!1063593 (and d!1475776 b!4653751)))

(assert (=> bs!1063593 (= (= lt!1817306 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198958 lambda!198907))))

(declare-fun bs!1063595 () Bool)

(assert (= bs!1063595 (and d!1475776 b!4653222)))

(assert (=> bs!1063595 (= (= lt!1817306 lt!1816633) (= lambda!198958 lambda!198847))))

(declare-fun bs!1063597 () Bool)

(assert (= bs!1063597 (and d!1475776 b!4653625)))

(assert (=> bs!1063597 (= (= lt!1817306 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198958 lambda!198893))))

(declare-fun bs!1063599 () Bool)

(assert (= bs!1063599 (and d!1475776 d!1475566)))

(assert (=> bs!1063599 (= (= lt!1817306 lt!1816243) (= lambda!198958 lambda!198904))))

(assert (=> bs!1063565 (= (= lt!1817306 (ListMap!4534 Nil!51874)) (= lambda!198958 lambda!198850))))

(assert (=> bs!1063589 (= (= lt!1817306 lt!1817312) (= lambda!198958 lambda!198956))))

(declare-fun bs!1063601 () Bool)

(assert (= bs!1063601 (and d!1475776 d!1475590)))

(assert (=> bs!1063601 (= (= lt!1817306 lt!1816505) (= lambda!198958 lambda!198905))))

(assert (=> bs!1063591 (= (= lt!1817306 lt!1816578) (= lambda!198958 lambda!198836))))

(declare-fun bs!1063604 () Bool)

(assert (= bs!1063604 (and d!1475776 b!4653624)))

(assert (=> bs!1063604 (= (= lt!1817306 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198958 lambda!198892))))

(declare-fun bs!1063606 () Bool)

(assert (= bs!1063606 (and d!1475776 d!1475700)))

(assert (=> bs!1063606 (= (= lt!1817306 lt!1816526) (= lambda!198958 lambda!198933))))

(declare-fun bs!1063607 () Bool)

(assert (= bs!1063607 (and d!1475776 b!4653411)))

(assert (=> bs!1063607 (= (= lt!1817306 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198958 lambda!198860))))

(declare-fun bs!1063609 () Bool)

(assert (= bs!1063609 (and d!1475776 d!1475270)))

(assert (=> bs!1063609 (not (= lambda!198958 lambda!198833))))

(declare-fun bs!1063611 () Bool)

(assert (= bs!1063611 (and d!1475776 b!4653752)))

(assert (=> bs!1063611 (= (= lt!1817306 lt!1817033) (= lambda!198958 lambda!198909))))

(declare-fun bs!1063613 () Bool)

(assert (= bs!1063613 (and d!1475776 b!4653879)))

(assert (=> bs!1063613 (= (= lt!1817306 lt!1817139) (= lambda!198958 lambda!198929))))

(declare-fun bs!1063614 () Bool)

(assert (= bs!1063614 (and d!1475776 b!4654022)))

(assert (=> bs!1063614 (= (= lt!1817306 lt!1817268) (= lambda!198958 lambda!198947))))

(declare-fun bs!1063616 () Bool)

(assert (= bs!1063616 (and d!1475776 d!1475502)))

(assert (=> bs!1063616 (= (= lt!1817306 lt!1816922) (= lambda!198958 lambda!198896))))

(declare-fun bs!1063617 () Bool)

(assert (= bs!1063617 (and d!1475776 b!4653878)))

(assert (=> bs!1063617 (= (= lt!1817306 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198958 lambda!198925))))

(declare-fun bs!1063619 () Bool)

(assert (= bs!1063619 (and d!1475776 b!4653962)))

(assert (=> bs!1063619 (= (= lt!1817306 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198958 lambda!198938))))

(declare-fun bs!1063621 () Bool)

(assert (= bs!1063621 (and d!1475776 d!1475722)))

(assert (=> bs!1063621 (= (= lt!1817306 lt!1817220) (= lambda!198958 lambda!198942))))

(assert (=> bs!1063583 (= (= lt!1817306 lt!1816505) (= lambda!198958 lambda!198820))))

(declare-fun bs!1063623 () Bool)

(assert (= bs!1063623 (and d!1475776 d!1475760)))

(assert (=> bs!1063623 (= (= lt!1817306 lt!1817262) (= lambda!198958 lambda!198950))))

(assert (=> bs!1063607 (= (= lt!1817306 lt!1816751) (= lambda!198958 lambda!198861))))

(declare-fun bs!1063625 () Bool)

(assert (= bs!1063625 (and d!1475776 b!4654021)))

(assert (=> bs!1063625 (= (= lt!1817306 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198958 lambda!198944))))

(assert (=> bs!1063614 (= (= lt!1817306 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198958 lambda!198945))))

(declare-fun bs!1063627 () Bool)

(assert (= bs!1063627 (and d!1475776 b!4653226)))

(assert (=> bs!1063627 (= (= lt!1817306 (ListMap!4534 Nil!51874)) (= lambda!198958 lambda!198849))))

(declare-fun bs!1063628 () Bool)

(assert (= bs!1063628 (and d!1475776 b!4653221)))

(assert (=> bs!1063628 (= (= lt!1817306 (ListMap!4534 Nil!51874)) (= lambda!198958 lambda!198845))))

(declare-fun bs!1063630 () Bool)

(assert (= bs!1063630 (and d!1475776 d!1475200)))

(assert (=> bs!1063630 (= (= lt!1817306 lt!1816499) (= lambda!198958 lambda!198821))))

(assert (=> bs!1063579 (= (= lt!1817306 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198958 lambda!198940))))

(declare-fun bs!1063632 () Bool)

(assert (= bs!1063632 (and d!1475776 b!4653104)))

(assert (=> bs!1063632 (= (= lt!1817306 (ListMap!4534 Nil!51874)) (= lambda!198958 lambda!198817))))

(assert (=> bs!1063611 (= (= lt!1817306 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198958 lambda!198908))))

(assert (=> bs!1063597 (= (= lt!1817306 lt!1816928) (= lambda!198958 lambda!198895))))

(assert (=> bs!1063595 (= (= lt!1817306 (ListMap!4534 Nil!51874)) (= lambda!198958 lambda!198846))))

(assert (=> bs!1063613 (= (= lt!1817306 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198958 lambda!198927))))

(declare-fun bs!1063633 () Bool)

(assert (= bs!1063633 (and d!1475776 d!1475596)))

(assert (=> bs!1063633 (= (= lt!1817306 lt!1817027) (= lambda!198958 lambda!198910))))

(declare-fun bs!1063634 () Bool)

(assert (= bs!1063634 (and d!1475776 d!1475712)))

(assert (=> bs!1063634 (= (= lt!1817306 lt!1816657) (= lambda!198958 lambda!198936))))

(declare-fun bs!1063635 () Bool)

(assert (= bs!1063635 (and d!1475776 d!1475248)))

(assert (=> bs!1063635 (= (= lt!1817306 lt!1816520) (= lambda!198958 lambda!198827))))

(assert (=> bs!1063577 (= (= lt!1817306 lt!1816526) (= lambda!198958 lambda!198826))))

(declare-fun bs!1063636 () Bool)

(assert (= bs!1063636 (and d!1475776 b!4653111)))

(assert (=> bs!1063636 (= (= lt!1817306 (ListMap!4534 Nil!51874)) (= lambda!198958 lambda!198824))))

(declare-fun bs!1063637 () Bool)

(assert (= bs!1063637 (and d!1475776 d!1475308)))

(assert (=> bs!1063637 (= (= lt!1817306 lt!1816651) (= lambda!198958 lambda!198852))))

(declare-fun bs!1063638 () Bool)

(assert (= bs!1063638 (and d!1475776 d!1475292)))

(assert (=> bs!1063638 (not (= lambda!198958 lambda!198844))))

(assert (=> d!1475776 true))

(declare-fun b!4654038 () Bool)

(declare-fun res!1956578 () Bool)

(declare-fun e!2903709 () Bool)

(assert (=> b!4654038 (=> (not res!1956578) (not e!2903709))))

(assert (=> b!4654038 (= res!1956578 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) lambda!198958))))

(declare-fun b!4654039 () Bool)

(assert (=> b!4654039 (= e!2903709 (invariantList!1292 (toList!5195 lt!1817306)))))

(declare-fun e!2903710 () ListMap!4533)

(assert (=> b!4654040 (= e!2903710 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))))

(declare-fun lt!1817314 () Unit!118036)

(declare-fun call!325235 () Unit!118036)

(assert (=> b!4654040 (= lt!1817314 call!325235)))

(declare-fun call!325234 () Bool)

(assert (=> b!4654040 call!325234))

(declare-fun lt!1817323 () Unit!118036)

(assert (=> b!4654040 (= lt!1817323 lt!1817314)))

(declare-fun call!325236 () Bool)

(assert (=> b!4654040 call!325236))

(declare-fun lt!1817309 () Unit!118036)

(declare-fun Unit!118362 () Unit!118036)

(assert (=> b!4654040 (= lt!1817309 Unit!118362)))

(declare-fun bm!325229 () Bool)

(declare-fun c!796612 () Bool)

(assert (=> bm!325229 (= call!325236 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (ite c!796612 lambda!198953 lambda!198956)))))

(assert (=> b!4654041 (= e!2903710 lt!1817312)))

(declare-fun lt!1817315 () ListMap!4533)

(assert (=> b!4654041 (= lt!1817315 (+!1976 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))))))

(assert (=> b!4654041 (= lt!1817312 (addToMapMapFromBucket!1089 (t!359110 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (+!1976 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))))))))

(declare-fun lt!1817318 () Unit!118036)

(assert (=> b!4654041 (= lt!1817318 call!325235)))

(assert (=> b!4654041 call!325234))

(declare-fun lt!1817317 () Unit!118036)

(assert (=> b!4654041 (= lt!1817317 lt!1817318)))

(assert (=> b!4654041 (forall!11010 (toList!5195 lt!1817315) lambda!198956)))

(declare-fun lt!1817319 () Unit!118036)

(declare-fun Unit!118363 () Unit!118036)

(assert (=> b!4654041 (= lt!1817319 Unit!118363)))

(assert (=> b!4654041 (forall!11010 (t!359110 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) lambda!198956)))

(declare-fun lt!1817310 () Unit!118036)

(declare-fun Unit!118364 () Unit!118036)

(assert (=> b!4654041 (= lt!1817310 Unit!118364)))

(declare-fun lt!1817316 () Unit!118036)

(declare-fun Unit!118365 () Unit!118036)

(assert (=> b!4654041 (= lt!1817316 Unit!118365)))

(declare-fun lt!1817308 () Unit!118036)

(assert (=> b!4654041 (= lt!1817308 (forallContained!3216 (toList!5195 lt!1817315) lambda!198956 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))))))

(assert (=> b!4654041 (contains!15019 lt!1817315 (_1!29781 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))))))

(declare-fun lt!1817320 () Unit!118036)

(declare-fun Unit!118366 () Unit!118036)

(assert (=> b!4654041 (= lt!1817320 Unit!118366)))

(assert (=> b!4654041 (contains!15019 lt!1817312 (_1!29781 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))))))

(declare-fun lt!1817324 () Unit!118036)

(declare-fun Unit!118367 () Unit!118036)

(assert (=> b!4654041 (= lt!1817324 Unit!118367)))

(assert (=> b!4654041 (forall!11010 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lambda!198956)))

(declare-fun lt!1817326 () Unit!118036)

(declare-fun Unit!118368 () Unit!118036)

(assert (=> b!4654041 (= lt!1817326 Unit!118368)))

(assert (=> b!4654041 (forall!11010 (toList!5195 lt!1817315) lambda!198956)))

(declare-fun lt!1817321 () Unit!118036)

(declare-fun Unit!118369 () Unit!118036)

(assert (=> b!4654041 (= lt!1817321 Unit!118369)))

(declare-fun lt!1817322 () Unit!118036)

(declare-fun Unit!118370 () Unit!118036)

(assert (=> b!4654041 (= lt!1817322 Unit!118370)))

(declare-fun lt!1817313 () Unit!118036)

(assert (=> b!4654041 (= lt!1817313 (addForallContainsKeyThenBeforeAdding!591 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817312 (_1!29781 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))) (_2!29781 (h!58012 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))))))))

(assert (=> b!4654041 call!325236))

(declare-fun lt!1817307 () Unit!118036)

(assert (=> b!4654041 (= lt!1817307 lt!1817313)))

(assert (=> b!4654041 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) lambda!198956)))

(declare-fun lt!1817311 () Unit!118036)

(declare-fun Unit!118371 () Unit!118036)

(assert (=> b!4654041 (= lt!1817311 Unit!118371)))

(declare-fun res!1956577 () Bool)

(assert (=> b!4654041 (= res!1956577 (forall!11010 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lambda!198956))))

(declare-fun e!2903711 () Bool)

(assert (=> b!4654041 (=> (not res!1956577) (not e!2903711))))

(assert (=> b!4654041 e!2903711))

(declare-fun lt!1817325 () Unit!118036)

(declare-fun Unit!118372 () Unit!118036)

(assert (=> b!4654041 (= lt!1817325 Unit!118372)))

(assert (=> d!1475776 e!2903709))

(declare-fun res!1956576 () Bool)

(assert (=> d!1475776 (=> (not res!1956576) (not e!2903709))))

(assert (=> d!1475776 (= res!1956576 (forall!11010 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lambda!198958))))

(assert (=> d!1475776 (= lt!1817306 e!2903710)))

(assert (=> d!1475776 (= c!796612 ((_ is Nil!51874) (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))))))

(assert (=> d!1475776 (noDuplicateKeys!1632 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))))

(assert (=> d!1475776 (= (addToMapMapFromBucket!1089 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) lt!1817306)))

(declare-fun bm!325230 () Bool)

(assert (=> bm!325230 (= call!325234 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (ite c!796612 lambda!198953 lambda!198954)))))

(declare-fun bm!325231 () Bool)

(assert (=> bm!325231 (= call!325235 (lemmaContainsAllItsOwnKeys!592 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))))))

(declare-fun b!4654042 () Bool)

(assert (=> b!4654042 (= e!2903711 (forall!11010 (toList!5195 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) lambda!198956))))

(assert (= (and d!1475776 c!796612) b!4654040))

(assert (= (and d!1475776 (not c!796612)) b!4654041))

(assert (= (and b!4654041 res!1956577) b!4654042))

(assert (= (or b!4654040 b!4654041) bm!325231))

(assert (= (or b!4654040 b!4654041) bm!325230))

(assert (= (or b!4654040 b!4654041) bm!325229))

(assert (= (and d!1475776 res!1956576) b!4654038))

(assert (= (and b!4654038 res!1956578) b!4654039))

(declare-fun m!5532373 () Bool)

(assert (=> d!1475776 m!5532373))

(declare-fun m!5532375 () Bool)

(assert (=> d!1475776 m!5532375))

(declare-fun m!5532377 () Bool)

(assert (=> bm!325230 m!5532377))

(declare-fun m!5532379 () Bool)

(assert (=> b!4654039 m!5532379))

(declare-fun m!5532381 () Bool)

(assert (=> b!4654038 m!5532381))

(assert (=> bm!325231 m!5530475))

(declare-fun m!5532383 () Bool)

(assert (=> bm!325231 m!5532383))

(declare-fun m!5532385 () Bool)

(assert (=> bm!325229 m!5532385))

(declare-fun m!5532387 () Bool)

(assert (=> b!4654042 m!5532387))

(assert (=> b!4654041 m!5530475))

(declare-fun m!5532389 () Bool)

(assert (=> b!4654041 m!5532389))

(declare-fun m!5532391 () Bool)

(assert (=> b!4654041 m!5532391))

(assert (=> b!4654041 m!5532391))

(declare-fun m!5532393 () Bool)

(assert (=> b!4654041 m!5532393))

(declare-fun m!5532395 () Bool)

(assert (=> b!4654041 m!5532395))

(declare-fun m!5532397 () Bool)

(assert (=> b!4654041 m!5532397))

(assert (=> b!4654041 m!5532395))

(declare-fun m!5532399 () Bool)

(assert (=> b!4654041 m!5532399))

(declare-fun m!5532401 () Bool)

(assert (=> b!4654041 m!5532401))

(declare-fun m!5532403 () Bool)

(assert (=> b!4654041 m!5532403))

(assert (=> b!4654041 m!5532387))

(declare-fun m!5532405 () Bool)

(assert (=> b!4654041 m!5532405))

(assert (=> b!4654041 m!5530475))

(assert (=> b!4654041 m!5532399))

(assert (=> b!4653207 d!1475776))

(declare-fun bs!1063639 () Bool)

(declare-fun d!1475790 () Bool)

(assert (= bs!1063639 (and d!1475790 d!1475284)))

(declare-fun lambda!198960 () Int)

(assert (=> bs!1063639 (not (= lambda!198960 lambda!198841))))

(declare-fun bs!1063640 () Bool)

(assert (= bs!1063640 (and d!1475790 d!1475262)))

(assert (=> bs!1063640 (= lambda!198960 lambda!198830)))

(declare-fun bs!1063641 () Bool)

(assert (= bs!1063641 (and d!1475790 d!1475274)))

(assert (=> bs!1063641 (= lambda!198960 lambda!198838)))

(declare-fun bs!1063642 () Bool)

(assert (= bs!1063642 (and d!1475790 b!4652954)))

(assert (=> bs!1063642 (= lambda!198960 lambda!198730)))

(declare-fun bs!1063643 () Bool)

(assert (= bs!1063643 (and d!1475790 d!1475418)))

(assert (=> bs!1063643 (= lambda!198960 lambda!198863)))

(declare-fun bs!1063644 () Bool)

(assert (= bs!1063644 (and d!1475790 d!1475288)))

(assert (=> bs!1063644 (= lambda!198960 lambda!198842)))

(declare-fun bs!1063645 () Bool)

(assert (= bs!1063645 (and d!1475790 d!1475290)))

(assert (=> bs!1063645 (= lambda!198960 lambda!198843)))

(declare-fun bs!1063646 () Bool)

(assert (= bs!1063646 (and d!1475790 d!1475770)))

(assert (=> bs!1063646 (= lambda!198960 lambda!198952)))

(declare-fun lt!1817359 () ListMap!4533)

(assert (=> d!1475790 (invariantList!1292 (toList!5195 lt!1817359))))

(declare-fun e!2903727 () ListMap!4533)

(assert (=> d!1475790 (= lt!1817359 e!2903727)))

(declare-fun c!796614 () Bool)

(assert (=> d!1475790 (= c!796614 ((_ is Cons!51875) (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))))

(assert (=> d!1475790 (forall!11008 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)) lambda!198960)))

(assert (=> d!1475790 (= (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) lt!1817359)))

(declare-fun b!4654061 () Bool)

(assert (=> b!4654061 (= e!2903727 (addToMapMapFromBucket!1089 (_2!29782 (h!58013 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (extractMap!1688 (t!359111 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))))))))

(declare-fun b!4654062 () Bool)

(assert (=> b!4654062 (= e!2903727 (ListMap!4534 Nil!51874))))

(assert (= (and d!1475790 c!796614) b!4654061))

(assert (= (and d!1475790 (not c!796614)) b!4654062))

(declare-fun m!5532407 () Bool)

(assert (=> d!1475790 m!5532407))

(declare-fun m!5532409 () Bool)

(assert (=> d!1475790 m!5532409))

(declare-fun m!5532411 () Bool)

(assert (=> b!4654061 m!5532411))

(assert (=> b!4654061 m!5532411))

(declare-fun m!5532413 () Bool)

(assert (=> b!4654061 m!5532413))

(assert (=> b!4653207 d!1475790))

(declare-fun d!1475792 () Bool)

(assert (=> d!1475792 (= (invariantList!1292 (toList!5195 lt!1816572)) (noDuplicatedKeys!347 (toList!5195 lt!1816572)))))

(declare-fun bs!1063648 () Bool)

(assert (= bs!1063648 d!1475792))

(declare-fun m!5532415 () Bool)

(assert (=> bs!1063648 m!5532415))

(assert (=> b!4653176 d!1475792))

(declare-fun bs!1063658 () Bool)

(declare-fun b!4654065 () Bool)

(assert (= bs!1063658 (and b!4654065 d!1475494)))

(declare-fun lambda!198962 () Int)

(assert (=> bs!1063658 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816578) (= lambda!198962 lambda!198885))))

(declare-fun bs!1063660 () Bool)

(assert (= bs!1063660 (and b!4654065 b!4653227)))

(assert (=> bs!1063660 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816657) (= lambda!198962 lambda!198851))))

(declare-fun bs!1063663 () Bool)

(assert (= bs!1063663 (and b!4654065 b!4654040)))

(assert (=> bs!1063663 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198962 lambda!198953))))

(declare-fun bs!1063665 () Bool)

(assert (= bs!1063665 (and b!4654065 d!1475404)))

(assert (=> bs!1063665 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816745) (= lambda!198962 lambda!198862))))

(declare-fun bs!1063667 () Bool)

(assert (= bs!1063667 (and b!4654065 b!4653410)))

(assert (=> bs!1063667 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198962 lambda!198859))))

(declare-fun bs!1063669 () Bool)

(assert (= bs!1063669 (and b!4654065 d!1475666)))

(assert (=> bs!1063669 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817133) (= lambda!198962 lambda!198930))))

(declare-fun bs!1063671 () Bool)

(assert (= bs!1063671 (and b!4654065 d!1475542)))

(assert (=> bs!1063671 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198962 lambda!198903))))

(declare-fun bs!1063673 () Bool)

(assert (= bs!1063673 (and b!4654065 b!4653112)))

(assert (=> bs!1063673 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198962 lambda!198825))))

(declare-fun bs!1063675 () Bool)

(assert (= bs!1063675 (and b!4654065 b!4653963)))

(assert (=> bs!1063675 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817226) (= lambda!198962 lambda!198941))))

(declare-fun bs!1063677 () Bool)

(assert (= bs!1063677 (and b!4654065 d!1475300)))

(assert (=> bs!1063677 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816627) (= lambda!198962 lambda!198848))))

(declare-fun bs!1063679 () Bool)

(assert (= bs!1063679 (and b!4654065 b!4653105)))

(assert (=> bs!1063679 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198962 lambda!198818))))

(declare-fun bs!1063681 () Bool)

(assert (= bs!1063681 (and b!4654065 b!4653177)))

(assert (=> bs!1063681 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816243) (= lambda!198962 lambda!198834))))

(declare-fun bs!1063682 () Bool)

(assert (= bs!1063682 (and b!4654065 d!1475272)))

(assert (=> bs!1063682 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816572) (= lambda!198962 lambda!198837))))

(declare-fun bs!1063684 () Bool)

(assert (= bs!1063684 (and b!4654065 b!4654041)))

(assert (=> bs!1063684 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198962 lambda!198954))))

(declare-fun bs!1063686 () Bool)

(assert (= bs!1063686 (and b!4654065 b!4653178)))

(assert (=> bs!1063686 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816243) (= lambda!198962 lambda!198835))))

(declare-fun bs!1063688 () Bool)

(assert (= bs!1063688 (and b!4654065 b!4653751)))

(assert (=> bs!1063688 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198962 lambda!198907))))

(declare-fun bs!1063690 () Bool)

(assert (= bs!1063690 (and b!4654065 b!4653222)))

(assert (=> bs!1063690 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816633) (= lambda!198962 lambda!198847))))

(declare-fun bs!1063692 () Bool)

(assert (= bs!1063692 (and b!4654065 b!4653625)))

(assert (=> bs!1063692 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198962 lambda!198893))))

(declare-fun bs!1063694 () Bool)

(assert (= bs!1063694 (and b!4654065 d!1475566)))

(assert (=> bs!1063694 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816243) (= lambda!198962 lambda!198904))))

(assert (=> bs!1063660 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198962 lambda!198850))))

(assert (=> bs!1063684 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817312) (= lambda!198962 lambda!198956))))

(declare-fun bs!1063697 () Bool)

(assert (= bs!1063697 (and b!4654065 d!1475590)))

(assert (=> bs!1063697 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816505) (= lambda!198962 lambda!198905))))

(assert (=> bs!1063686 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816578) (= lambda!198962 lambda!198836))))

(declare-fun bs!1063700 () Bool)

(assert (= bs!1063700 (and b!4654065 b!4653624)))

(assert (=> bs!1063700 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198962 lambda!198892))))

(declare-fun bs!1063701 () Bool)

(assert (= bs!1063701 (and b!4654065 d!1475700)))

(assert (=> bs!1063701 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816526) (= lambda!198962 lambda!198933))))

(declare-fun bs!1063703 () Bool)

(assert (= bs!1063703 (and b!4654065 b!4653411)))

(assert (=> bs!1063703 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198962 lambda!198860))))

(declare-fun bs!1063704 () Bool)

(assert (= bs!1063704 (and b!4654065 d!1475270)))

(assert (=> bs!1063704 (not (= lambda!198962 lambda!198833))))

(declare-fun bs!1063706 () Bool)

(assert (= bs!1063706 (and b!4654065 b!4653752)))

(assert (=> bs!1063706 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817033) (= lambda!198962 lambda!198909))))

(declare-fun bs!1063708 () Bool)

(assert (= bs!1063708 (and b!4654065 b!4653879)))

(assert (=> bs!1063708 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817139) (= lambda!198962 lambda!198929))))

(declare-fun bs!1063709 () Bool)

(assert (= bs!1063709 (and b!4654065 b!4654022)))

(assert (=> bs!1063709 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817268) (= lambda!198962 lambda!198947))))

(declare-fun bs!1063711 () Bool)

(assert (= bs!1063711 (and b!4654065 d!1475502)))

(assert (=> bs!1063711 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816922) (= lambda!198962 lambda!198896))))

(declare-fun bs!1063712 () Bool)

(assert (= bs!1063712 (and b!4654065 b!4653878)))

(assert (=> bs!1063712 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198962 lambda!198925))))

(declare-fun bs!1063713 () Bool)

(assert (= bs!1063713 (and b!4654065 b!4653962)))

(assert (=> bs!1063713 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198962 lambda!198938))))

(declare-fun bs!1063715 () Bool)

(assert (= bs!1063715 (and b!4654065 d!1475722)))

(assert (=> bs!1063715 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817220) (= lambda!198962 lambda!198942))))

(assert (=> bs!1063679 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816505) (= lambda!198962 lambda!198820))))

(declare-fun bs!1063717 () Bool)

(assert (= bs!1063717 (and b!4654065 d!1475760)))

(assert (=> bs!1063717 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817262) (= lambda!198962 lambda!198950))))

(assert (=> bs!1063703 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816751) (= lambda!198962 lambda!198861))))

(declare-fun bs!1063719 () Bool)

(assert (= bs!1063719 (and b!4654065 b!4654021)))

(assert (=> bs!1063719 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198962 lambda!198944))))

(assert (=> bs!1063709 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198962 lambda!198945))))

(declare-fun bs!1063721 () Bool)

(assert (= bs!1063721 (and b!4654065 b!4653226)))

(assert (=> bs!1063721 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198962 lambda!198849))))

(declare-fun bs!1063723 () Bool)

(assert (= bs!1063723 (and b!4654065 b!4653221)))

(assert (=> bs!1063723 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198962 lambda!198845))))

(declare-fun bs!1063724 () Bool)

(assert (= bs!1063724 (and b!4654065 d!1475200)))

(assert (=> bs!1063724 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816499) (= lambda!198962 lambda!198821))))

(assert (=> bs!1063675 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198962 lambda!198940))))

(declare-fun bs!1063726 () Bool)

(assert (= bs!1063726 (and b!4654065 b!4653104)))

(assert (=> bs!1063726 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198962 lambda!198817))))

(assert (=> bs!1063706 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198962 lambda!198908))))

(assert (=> bs!1063692 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816928) (= lambda!198962 lambda!198895))))

(assert (=> bs!1063690 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198962 lambda!198846))))

(assert (=> bs!1063708 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198962 lambda!198927))))

(declare-fun bs!1063728 () Bool)

(assert (= bs!1063728 (and b!4654065 d!1475596)))

(assert (=> bs!1063728 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817027) (= lambda!198962 lambda!198910))))

(declare-fun bs!1063729 () Bool)

(assert (= bs!1063729 (and b!4654065 d!1475712)))

(assert (=> bs!1063729 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816657) (= lambda!198962 lambda!198936))))

(declare-fun bs!1063730 () Bool)

(assert (= bs!1063730 (and b!4654065 d!1475248)))

(assert (=> bs!1063730 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816520) (= lambda!198962 lambda!198827))))

(assert (=> bs!1063673 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816526) (= lambda!198962 lambda!198826))))

(declare-fun bs!1063731 () Bool)

(assert (= bs!1063731 (and b!4654065 d!1475776)))

(assert (=> bs!1063731 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817306) (= lambda!198962 lambda!198958))))

(declare-fun bs!1063732 () Bool)

(assert (= bs!1063732 (and b!4654065 b!4653111)))

(assert (=> bs!1063732 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198962 lambda!198824))))

(declare-fun bs!1063733 () Bool)

(assert (= bs!1063733 (and b!4654065 d!1475308)))

(assert (=> bs!1063733 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816651) (= lambda!198962 lambda!198852))))

(declare-fun bs!1063734 () Bool)

(assert (= bs!1063734 (and b!4654065 d!1475292)))

(assert (=> bs!1063734 (not (= lambda!198962 lambda!198844))))

(assert (=> b!4654065 true))

(declare-fun bs!1063735 () Bool)

(declare-fun b!4654066 () Bool)

(assert (= bs!1063735 (and b!4654066 d!1475494)))

(declare-fun lambda!198963 () Int)

(assert (=> bs!1063735 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816578) (= lambda!198963 lambda!198885))))

(declare-fun bs!1063736 () Bool)

(assert (= bs!1063736 (and b!4654066 b!4653227)))

(assert (=> bs!1063736 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816657) (= lambda!198963 lambda!198851))))

(declare-fun bs!1063737 () Bool)

(assert (= bs!1063737 (and b!4654066 b!4654040)))

(assert (=> bs!1063737 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198963 lambda!198953))))

(declare-fun bs!1063738 () Bool)

(assert (= bs!1063738 (and b!4654066 d!1475404)))

(assert (=> bs!1063738 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816745) (= lambda!198963 lambda!198862))))

(declare-fun bs!1063739 () Bool)

(assert (= bs!1063739 (and b!4654066 b!4653410)))

(assert (=> bs!1063739 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198963 lambda!198859))))

(declare-fun bs!1063740 () Bool)

(assert (= bs!1063740 (and b!4654066 d!1475666)))

(assert (=> bs!1063740 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817133) (= lambda!198963 lambda!198930))))

(declare-fun bs!1063741 () Bool)

(assert (= bs!1063741 (and b!4654066 d!1475542)))

(assert (=> bs!1063741 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198963 lambda!198903))))

(declare-fun bs!1063742 () Bool)

(assert (= bs!1063742 (and b!4654066 b!4653963)))

(assert (=> bs!1063742 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817226) (= lambda!198963 lambda!198941))))

(declare-fun bs!1063743 () Bool)

(assert (= bs!1063743 (and b!4654066 d!1475300)))

(assert (=> bs!1063743 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816627) (= lambda!198963 lambda!198848))))

(declare-fun bs!1063744 () Bool)

(assert (= bs!1063744 (and b!4654066 b!4653105)))

(assert (=> bs!1063744 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198963 lambda!198818))))

(declare-fun bs!1063745 () Bool)

(assert (= bs!1063745 (and b!4654066 b!4653177)))

(assert (=> bs!1063745 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816243) (= lambda!198963 lambda!198834))))

(declare-fun bs!1063746 () Bool)

(assert (= bs!1063746 (and b!4654066 d!1475272)))

(assert (=> bs!1063746 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816572) (= lambda!198963 lambda!198837))))

(declare-fun bs!1063747 () Bool)

(assert (= bs!1063747 (and b!4654066 b!4654041)))

(assert (=> bs!1063747 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198963 lambda!198954))))

(declare-fun bs!1063748 () Bool)

(assert (= bs!1063748 (and b!4654066 b!4653178)))

(assert (=> bs!1063748 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816243) (= lambda!198963 lambda!198835))))

(declare-fun bs!1063749 () Bool)

(assert (= bs!1063749 (and b!4654066 b!4653751)))

(assert (=> bs!1063749 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198963 lambda!198907))))

(declare-fun bs!1063750 () Bool)

(assert (= bs!1063750 (and b!4654066 b!4653222)))

(assert (=> bs!1063750 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816633) (= lambda!198963 lambda!198847))))

(declare-fun bs!1063751 () Bool)

(assert (= bs!1063751 (and b!4654066 b!4653625)))

(assert (=> bs!1063751 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198963 lambda!198893))))

(declare-fun bs!1063752 () Bool)

(assert (= bs!1063752 (and b!4654066 d!1475566)))

(assert (=> bs!1063752 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816243) (= lambda!198963 lambda!198904))))

(assert (=> bs!1063736 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198963 lambda!198850))))

(assert (=> bs!1063747 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817312) (= lambda!198963 lambda!198956))))

(declare-fun bs!1063754 () Bool)

(assert (= bs!1063754 (and b!4654066 d!1475590)))

(assert (=> bs!1063754 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816505) (= lambda!198963 lambda!198905))))

(assert (=> bs!1063748 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816578) (= lambda!198963 lambda!198836))))

(declare-fun bs!1063757 () Bool)

(assert (= bs!1063757 (and b!4654066 b!4653624)))

(assert (=> bs!1063757 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198963 lambda!198892))))

(declare-fun bs!1063759 () Bool)

(assert (= bs!1063759 (and b!4654066 d!1475700)))

(assert (=> bs!1063759 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816526) (= lambda!198963 lambda!198933))))

(declare-fun bs!1063761 () Bool)

(assert (= bs!1063761 (and b!4654066 b!4653411)))

(assert (=> bs!1063761 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198963 lambda!198860))))

(declare-fun bs!1063763 () Bool)

(assert (= bs!1063763 (and b!4654066 d!1475270)))

(assert (=> bs!1063763 (not (= lambda!198963 lambda!198833))))

(declare-fun bs!1063765 () Bool)

(assert (= bs!1063765 (and b!4654066 b!4653752)))

(assert (=> bs!1063765 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817033) (= lambda!198963 lambda!198909))))

(declare-fun bs!1063767 () Bool)

(assert (= bs!1063767 (and b!4654066 b!4653879)))

(assert (=> bs!1063767 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817139) (= lambda!198963 lambda!198929))))

(declare-fun bs!1063768 () Bool)

(assert (= bs!1063768 (and b!4654066 b!4654022)))

(assert (=> bs!1063768 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817268) (= lambda!198963 lambda!198947))))

(declare-fun bs!1063769 () Bool)

(assert (= bs!1063769 (and b!4654066 d!1475502)))

(assert (=> bs!1063769 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816922) (= lambda!198963 lambda!198896))))

(declare-fun bs!1063770 () Bool)

(assert (= bs!1063770 (and b!4654066 b!4653878)))

(assert (=> bs!1063770 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198963 lambda!198925))))

(declare-fun bs!1063771 () Bool)

(assert (= bs!1063771 (and b!4654066 b!4653962)))

(assert (=> bs!1063771 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198963 lambda!198938))))

(declare-fun bs!1063772 () Bool)

(assert (= bs!1063772 (and b!4654066 d!1475722)))

(assert (=> bs!1063772 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817220) (= lambda!198963 lambda!198942))))

(assert (=> bs!1063744 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816505) (= lambda!198963 lambda!198820))))

(declare-fun bs!1063773 () Bool)

(assert (= bs!1063773 (and b!4654066 d!1475760)))

(assert (=> bs!1063773 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817262) (= lambda!198963 lambda!198950))))

(assert (=> bs!1063761 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816751) (= lambda!198963 lambda!198861))))

(declare-fun bs!1063774 () Bool)

(assert (= bs!1063774 (and b!4654066 b!4654021)))

(assert (=> bs!1063774 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198963 lambda!198944))))

(assert (=> bs!1063768 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198963 lambda!198945))))

(declare-fun bs!1063775 () Bool)

(assert (= bs!1063775 (and b!4654066 b!4653226)))

(assert (=> bs!1063775 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198963 lambda!198849))))

(declare-fun bs!1063776 () Bool)

(assert (= bs!1063776 (and b!4654066 b!4653221)))

(assert (=> bs!1063776 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198963 lambda!198845))))

(declare-fun bs!1063777 () Bool)

(assert (= bs!1063777 (and b!4654066 b!4654065)))

(assert (=> bs!1063777 (= lambda!198963 lambda!198962)))

(declare-fun bs!1063778 () Bool)

(assert (= bs!1063778 (and b!4654066 b!4653112)))

(assert (=> bs!1063778 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198963 lambda!198825))))

(declare-fun bs!1063779 () Bool)

(assert (= bs!1063779 (and b!4654066 d!1475200)))

(assert (=> bs!1063779 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816499) (= lambda!198963 lambda!198821))))

(assert (=> bs!1063742 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198963 lambda!198940))))

(declare-fun bs!1063780 () Bool)

(assert (= bs!1063780 (and b!4654066 b!4653104)))

(assert (=> bs!1063780 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198963 lambda!198817))))

(assert (=> bs!1063765 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198963 lambda!198908))))

(assert (=> bs!1063751 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816928) (= lambda!198963 lambda!198895))))

(assert (=> bs!1063750 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198963 lambda!198846))))

(assert (=> bs!1063767 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198963 lambda!198927))))

(declare-fun bs!1063781 () Bool)

(assert (= bs!1063781 (and b!4654066 d!1475596)))

(assert (=> bs!1063781 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817027) (= lambda!198963 lambda!198910))))

(declare-fun bs!1063782 () Bool)

(assert (= bs!1063782 (and b!4654066 d!1475712)))

(assert (=> bs!1063782 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816657) (= lambda!198963 lambda!198936))))

(declare-fun bs!1063783 () Bool)

(assert (= bs!1063783 (and b!4654066 d!1475248)))

(assert (=> bs!1063783 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816520) (= lambda!198963 lambda!198827))))

(assert (=> bs!1063778 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816526) (= lambda!198963 lambda!198826))))

(declare-fun bs!1063784 () Bool)

(assert (= bs!1063784 (and b!4654066 d!1475776)))

(assert (=> bs!1063784 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817306) (= lambda!198963 lambda!198958))))

(declare-fun bs!1063785 () Bool)

(assert (= bs!1063785 (and b!4654066 b!4653111)))

(assert (=> bs!1063785 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (ListMap!4534 Nil!51874)) (= lambda!198963 lambda!198824))))

(declare-fun bs!1063786 () Bool)

(assert (= bs!1063786 (and b!4654066 d!1475308)))

(assert (=> bs!1063786 (= (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1816651) (= lambda!198963 lambda!198852))))

(declare-fun bs!1063787 () Bool)

(assert (= bs!1063787 (and b!4654066 d!1475292)))

(assert (=> bs!1063787 (not (= lambda!198963 lambda!198844))))

(assert (=> b!4654066 true))

(declare-fun lt!1817366 () ListMap!4533)

(declare-fun lambda!198965 () Int)

(assert (=> bs!1063735 (= (= lt!1817366 lt!1816578) (= lambda!198965 lambda!198885))))

(assert (=> bs!1063736 (= (= lt!1817366 lt!1816657) (= lambda!198965 lambda!198851))))

(assert (=> bs!1063737 (= (= lt!1817366 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198965 lambda!198953))))

(assert (=> bs!1063738 (= (= lt!1817366 lt!1816745) (= lambda!198965 lambda!198862))))

(assert (=> bs!1063739 (= (= lt!1817366 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198965 lambda!198859))))

(assert (=> bs!1063740 (= (= lt!1817366 lt!1817133) (= lambda!198965 lambda!198930))))

(assert (=> bs!1063741 (= (= lt!1817366 (ListMap!4534 Nil!51874)) (= lambda!198965 lambda!198903))))

(assert (=> bs!1063742 (= (= lt!1817366 lt!1817226) (= lambda!198965 lambda!198941))))

(assert (=> bs!1063743 (= (= lt!1817366 lt!1816627) (= lambda!198965 lambda!198848))))

(assert (=> bs!1063744 (= (= lt!1817366 (ListMap!4534 Nil!51874)) (= lambda!198965 lambda!198818))))

(assert (=> bs!1063745 (= (= lt!1817366 lt!1816243) (= lambda!198965 lambda!198834))))

(assert (=> bs!1063746 (= (= lt!1817366 lt!1816572) (= lambda!198965 lambda!198837))))

(assert (=> bs!1063747 (= (= lt!1817366 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198965 lambda!198954))))

(assert (=> bs!1063748 (= (= lt!1817366 lt!1816243) (= lambda!198965 lambda!198835))))

(assert (=> bs!1063749 (= (= lt!1817366 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198965 lambda!198907))))

(assert (=> bs!1063750 (= (= lt!1817366 lt!1816633) (= lambda!198965 lambda!198847))))

(assert (=> bs!1063751 (= (= lt!1817366 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198965 lambda!198893))))

(assert (=> bs!1063752 (= (= lt!1817366 lt!1816243) (= lambda!198965 lambda!198904))))

(assert (=> bs!1063736 (= (= lt!1817366 (ListMap!4534 Nil!51874)) (= lambda!198965 lambda!198850))))

(assert (=> bs!1063747 (= (= lt!1817366 lt!1817312) (= lambda!198965 lambda!198956))))

(assert (=> bs!1063754 (= (= lt!1817366 lt!1816505) (= lambda!198965 lambda!198905))))

(assert (=> bs!1063748 (= (= lt!1817366 lt!1816578) (= lambda!198965 lambda!198836))))

(assert (=> bs!1063757 (= (= lt!1817366 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198965 lambda!198892))))

(assert (=> bs!1063759 (= (= lt!1817366 lt!1816526) (= lambda!198965 lambda!198933))))

(assert (=> bs!1063761 (= (= lt!1817366 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198965 lambda!198860))))

(assert (=> bs!1063763 (not (= lambda!198965 lambda!198833))))

(assert (=> bs!1063765 (= (= lt!1817366 lt!1817033) (= lambda!198965 lambda!198909))))

(assert (=> bs!1063767 (= (= lt!1817366 lt!1817139) (= lambda!198965 lambda!198929))))

(assert (=> bs!1063768 (= (= lt!1817366 lt!1817268) (= lambda!198965 lambda!198947))))

(assert (=> bs!1063769 (= (= lt!1817366 lt!1816922) (= lambda!198965 lambda!198896))))

(assert (=> bs!1063770 (= (= lt!1817366 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198965 lambda!198925))))

(assert (=> bs!1063771 (= (= lt!1817366 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198965 lambda!198938))))

(assert (=> bs!1063772 (= (= lt!1817366 lt!1817220) (= lambda!198965 lambda!198942))))

(assert (=> bs!1063744 (= (= lt!1817366 lt!1816505) (= lambda!198965 lambda!198820))))

(assert (=> bs!1063773 (= (= lt!1817366 lt!1817262) (= lambda!198965 lambda!198950))))

(assert (=> bs!1063761 (= (= lt!1817366 lt!1816751) (= lambda!198965 lambda!198861))))

(assert (=> b!4654066 (= (= lt!1817366 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (= lambda!198965 lambda!198963))))

(assert (=> bs!1063774 (= (= lt!1817366 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198965 lambda!198944))))

(assert (=> bs!1063768 (= (= lt!1817366 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198965 lambda!198945))))

(assert (=> bs!1063775 (= (= lt!1817366 (ListMap!4534 Nil!51874)) (= lambda!198965 lambda!198849))))

(assert (=> bs!1063776 (= (= lt!1817366 (ListMap!4534 Nil!51874)) (= lambda!198965 lambda!198845))))

(assert (=> bs!1063777 (= (= lt!1817366 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (= lambda!198965 lambda!198962))))

(assert (=> bs!1063778 (= (= lt!1817366 (ListMap!4534 Nil!51874)) (= lambda!198965 lambda!198825))))

(assert (=> bs!1063779 (= (= lt!1817366 lt!1816499) (= lambda!198965 lambda!198821))))

(assert (=> bs!1063742 (= (= lt!1817366 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198965 lambda!198940))))

(assert (=> bs!1063780 (= (= lt!1817366 (ListMap!4534 Nil!51874)) (= lambda!198965 lambda!198817))))

(assert (=> bs!1063765 (= (= lt!1817366 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198965 lambda!198908))))

(assert (=> bs!1063751 (= (= lt!1817366 lt!1816928) (= lambda!198965 lambda!198895))))

(assert (=> bs!1063750 (= (= lt!1817366 (ListMap!4534 Nil!51874)) (= lambda!198965 lambda!198846))))

(assert (=> bs!1063767 (= (= lt!1817366 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198965 lambda!198927))))

(assert (=> bs!1063781 (= (= lt!1817366 lt!1817027) (= lambda!198965 lambda!198910))))

(assert (=> bs!1063782 (= (= lt!1817366 lt!1816657) (= lambda!198965 lambda!198936))))

(assert (=> bs!1063783 (= (= lt!1817366 lt!1816520) (= lambda!198965 lambda!198827))))

(assert (=> bs!1063778 (= (= lt!1817366 lt!1816526) (= lambda!198965 lambda!198826))))

(assert (=> bs!1063784 (= (= lt!1817366 lt!1817306) (= lambda!198965 lambda!198958))))

(assert (=> bs!1063785 (= (= lt!1817366 (ListMap!4534 Nil!51874)) (= lambda!198965 lambda!198824))))

(assert (=> bs!1063786 (= (= lt!1817366 lt!1816651) (= lambda!198965 lambda!198852))))

(assert (=> bs!1063787 (not (= lambda!198965 lambda!198844))))

(assert (=> b!4654066 true))

(declare-fun bs!1063789 () Bool)

(declare-fun d!1475794 () Bool)

(assert (= bs!1063789 (and d!1475794 d!1475494)))

(declare-fun lambda!198966 () Int)

(declare-fun lt!1817360 () ListMap!4533)

(assert (=> bs!1063789 (= (= lt!1817360 lt!1816578) (= lambda!198966 lambda!198885))))

(declare-fun bs!1063790 () Bool)

(assert (= bs!1063790 (and d!1475794 b!4653227)))

(assert (=> bs!1063790 (= (= lt!1817360 lt!1816657) (= lambda!198966 lambda!198851))))

(declare-fun bs!1063791 () Bool)

(assert (= bs!1063791 (and d!1475794 b!4654040)))

(assert (=> bs!1063791 (= (= lt!1817360 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198966 lambda!198953))))

(declare-fun bs!1063792 () Bool)

(assert (= bs!1063792 (and d!1475794 d!1475404)))

(assert (=> bs!1063792 (= (= lt!1817360 lt!1816745) (= lambda!198966 lambda!198862))))

(declare-fun bs!1063793 () Bool)

(assert (= bs!1063793 (and d!1475794 b!4653410)))

(assert (=> bs!1063793 (= (= lt!1817360 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198966 lambda!198859))))

(declare-fun bs!1063794 () Bool)

(assert (= bs!1063794 (and d!1475794 d!1475666)))

(assert (=> bs!1063794 (= (= lt!1817360 lt!1817133) (= lambda!198966 lambda!198930))))

(declare-fun bs!1063795 () Bool)

(assert (= bs!1063795 (and d!1475794 d!1475542)))

(assert (=> bs!1063795 (= (= lt!1817360 (ListMap!4534 Nil!51874)) (= lambda!198966 lambda!198903))))

(declare-fun bs!1063796 () Bool)

(assert (= bs!1063796 (and d!1475794 b!4653963)))

(assert (=> bs!1063796 (= (= lt!1817360 lt!1817226) (= lambda!198966 lambda!198941))))

(declare-fun bs!1063797 () Bool)

(assert (= bs!1063797 (and d!1475794 d!1475300)))

(assert (=> bs!1063797 (= (= lt!1817360 lt!1816627) (= lambda!198966 lambda!198848))))

(declare-fun bs!1063798 () Bool)

(assert (= bs!1063798 (and d!1475794 b!4653105)))

(assert (=> bs!1063798 (= (= lt!1817360 (ListMap!4534 Nil!51874)) (= lambda!198966 lambda!198818))))

(declare-fun bs!1063799 () Bool)

(assert (= bs!1063799 (and d!1475794 b!4653177)))

(assert (=> bs!1063799 (= (= lt!1817360 lt!1816243) (= lambda!198966 lambda!198834))))

(declare-fun bs!1063800 () Bool)

(assert (= bs!1063800 (and d!1475794 d!1475272)))

(assert (=> bs!1063800 (= (= lt!1817360 lt!1816572) (= lambda!198966 lambda!198837))))

(declare-fun bs!1063801 () Bool)

(assert (= bs!1063801 (and d!1475794 b!4654041)))

(assert (=> bs!1063801 (= (= lt!1817360 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198966 lambda!198954))))

(declare-fun bs!1063802 () Bool)

(assert (= bs!1063802 (and d!1475794 b!4653178)))

(assert (=> bs!1063802 (= (= lt!1817360 lt!1816243) (= lambda!198966 lambda!198835))))

(declare-fun bs!1063803 () Bool)

(assert (= bs!1063803 (and d!1475794 b!4653751)))

(assert (=> bs!1063803 (= (= lt!1817360 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198966 lambda!198907))))

(declare-fun bs!1063804 () Bool)

(assert (= bs!1063804 (and d!1475794 b!4653222)))

(assert (=> bs!1063804 (= (= lt!1817360 lt!1816633) (= lambda!198966 lambda!198847))))

(declare-fun bs!1063805 () Bool)

(assert (= bs!1063805 (and d!1475794 b!4653625)))

(assert (=> bs!1063805 (= (= lt!1817360 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198966 lambda!198893))))

(declare-fun bs!1063806 () Bool)

(assert (= bs!1063806 (and d!1475794 d!1475566)))

(assert (=> bs!1063806 (= (= lt!1817360 lt!1816243) (= lambda!198966 lambda!198904))))

(assert (=> bs!1063790 (= (= lt!1817360 (ListMap!4534 Nil!51874)) (= lambda!198966 lambda!198850))))

(assert (=> bs!1063801 (= (= lt!1817360 lt!1817312) (= lambda!198966 lambda!198956))))

(declare-fun bs!1063807 () Bool)

(assert (= bs!1063807 (and d!1475794 d!1475590)))

(assert (=> bs!1063807 (= (= lt!1817360 lt!1816505) (= lambda!198966 lambda!198905))))

(assert (=> bs!1063802 (= (= lt!1817360 lt!1816578) (= lambda!198966 lambda!198836))))

(declare-fun bs!1063808 () Bool)

(assert (= bs!1063808 (and d!1475794 b!4653624)))

(assert (=> bs!1063808 (= (= lt!1817360 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198966 lambda!198892))))

(declare-fun bs!1063809 () Bool)

(assert (= bs!1063809 (and d!1475794 d!1475700)))

(assert (=> bs!1063809 (= (= lt!1817360 lt!1816526) (= lambda!198966 lambda!198933))))

(declare-fun bs!1063810 () Bool)

(assert (= bs!1063810 (and d!1475794 b!4653411)))

(assert (=> bs!1063810 (= (= lt!1817360 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198966 lambda!198860))))

(declare-fun bs!1063811 () Bool)

(assert (= bs!1063811 (and d!1475794 d!1475270)))

(assert (=> bs!1063811 (not (= lambda!198966 lambda!198833))))

(declare-fun bs!1063813 () Bool)

(assert (= bs!1063813 (and d!1475794 b!4653752)))

(assert (=> bs!1063813 (= (= lt!1817360 lt!1817033) (= lambda!198966 lambda!198909))))

(declare-fun bs!1063814 () Bool)

(assert (= bs!1063814 (and d!1475794 b!4653879)))

(assert (=> bs!1063814 (= (= lt!1817360 lt!1817139) (= lambda!198966 lambda!198929))))

(declare-fun bs!1063816 () Bool)

(assert (= bs!1063816 (and d!1475794 b!4654022)))

(assert (=> bs!1063816 (= (= lt!1817360 lt!1817268) (= lambda!198966 lambda!198947))))

(declare-fun bs!1063818 () Bool)

(assert (= bs!1063818 (and d!1475794 d!1475502)))

(assert (=> bs!1063818 (= (= lt!1817360 lt!1816922) (= lambda!198966 lambda!198896))))

(declare-fun bs!1063820 () Bool)

(assert (= bs!1063820 (and d!1475794 b!4653878)))

(assert (=> bs!1063820 (= (= lt!1817360 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198966 lambda!198925))))

(declare-fun bs!1063822 () Bool)

(assert (= bs!1063822 (and d!1475794 b!4653962)))

(assert (=> bs!1063822 (= (= lt!1817360 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198966 lambda!198938))))

(declare-fun bs!1063824 () Bool)

(assert (= bs!1063824 (and d!1475794 d!1475722)))

(assert (=> bs!1063824 (= (= lt!1817360 lt!1817220) (= lambda!198966 lambda!198942))))

(declare-fun bs!1063826 () Bool)

(assert (= bs!1063826 (and d!1475794 b!4654066)))

(assert (=> bs!1063826 (= (= lt!1817360 lt!1817366) (= lambda!198966 lambda!198965))))

(assert (=> bs!1063798 (= (= lt!1817360 lt!1816505) (= lambda!198966 lambda!198820))))

(declare-fun bs!1063829 () Bool)

(assert (= bs!1063829 (and d!1475794 d!1475760)))

(assert (=> bs!1063829 (= (= lt!1817360 lt!1817262) (= lambda!198966 lambda!198950))))

(assert (=> bs!1063810 (= (= lt!1817360 lt!1816751) (= lambda!198966 lambda!198861))))

(assert (=> bs!1063826 (= (= lt!1817360 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (= lambda!198966 lambda!198963))))

(declare-fun bs!1063833 () Bool)

(assert (= bs!1063833 (and d!1475794 b!4654021)))

(assert (=> bs!1063833 (= (= lt!1817360 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198966 lambda!198944))))

(assert (=> bs!1063816 (= (= lt!1817360 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198966 lambda!198945))))

(declare-fun bs!1063836 () Bool)

(assert (= bs!1063836 (and d!1475794 b!4653226)))

(assert (=> bs!1063836 (= (= lt!1817360 (ListMap!4534 Nil!51874)) (= lambda!198966 lambda!198849))))

(declare-fun bs!1063838 () Bool)

(assert (= bs!1063838 (and d!1475794 b!4653221)))

(assert (=> bs!1063838 (= (= lt!1817360 (ListMap!4534 Nil!51874)) (= lambda!198966 lambda!198845))))

(declare-fun bs!1063840 () Bool)

(assert (= bs!1063840 (and d!1475794 b!4654065)))

(assert (=> bs!1063840 (= (= lt!1817360 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (= lambda!198966 lambda!198962))))

(declare-fun bs!1063841 () Bool)

(assert (= bs!1063841 (and d!1475794 b!4653112)))

(assert (=> bs!1063841 (= (= lt!1817360 (ListMap!4534 Nil!51874)) (= lambda!198966 lambda!198825))))

(declare-fun bs!1063843 () Bool)

(assert (= bs!1063843 (and d!1475794 d!1475200)))

(assert (=> bs!1063843 (= (= lt!1817360 lt!1816499) (= lambda!198966 lambda!198821))))

(assert (=> bs!1063796 (= (= lt!1817360 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198966 lambda!198940))))

(declare-fun bs!1063846 () Bool)

(assert (= bs!1063846 (and d!1475794 b!4653104)))

(assert (=> bs!1063846 (= (= lt!1817360 (ListMap!4534 Nil!51874)) (= lambda!198966 lambda!198817))))

(assert (=> bs!1063813 (= (= lt!1817360 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198966 lambda!198908))))

(assert (=> bs!1063805 (= (= lt!1817360 lt!1816928) (= lambda!198966 lambda!198895))))

(assert (=> bs!1063804 (= (= lt!1817360 (ListMap!4534 Nil!51874)) (= lambda!198966 lambda!198846))))

(assert (=> bs!1063814 (= (= lt!1817360 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198966 lambda!198927))))

(declare-fun bs!1063851 () Bool)

(assert (= bs!1063851 (and d!1475794 d!1475596)))

(assert (=> bs!1063851 (= (= lt!1817360 lt!1817027) (= lambda!198966 lambda!198910))))

(declare-fun bs!1063853 () Bool)

(assert (= bs!1063853 (and d!1475794 d!1475712)))

(assert (=> bs!1063853 (= (= lt!1817360 lt!1816657) (= lambda!198966 lambda!198936))))

(declare-fun bs!1063855 () Bool)

(assert (= bs!1063855 (and d!1475794 d!1475248)))

(assert (=> bs!1063855 (= (= lt!1817360 lt!1816520) (= lambda!198966 lambda!198827))))

(assert (=> bs!1063841 (= (= lt!1817360 lt!1816526) (= lambda!198966 lambda!198826))))

(declare-fun bs!1063858 () Bool)

(assert (= bs!1063858 (and d!1475794 d!1475776)))

(assert (=> bs!1063858 (= (= lt!1817360 lt!1817306) (= lambda!198966 lambda!198958))))

(declare-fun bs!1063860 () Bool)

(assert (= bs!1063860 (and d!1475794 b!4653111)))

(assert (=> bs!1063860 (= (= lt!1817360 (ListMap!4534 Nil!51874)) (= lambda!198966 lambda!198824))))

(declare-fun bs!1063862 () Bool)

(assert (= bs!1063862 (and d!1475794 d!1475308)))

(assert (=> bs!1063862 (= (= lt!1817360 lt!1816651) (= lambda!198966 lambda!198852))))

(declare-fun bs!1063864 () Bool)

(assert (= bs!1063864 (and d!1475794 d!1475292)))

(assert (=> bs!1063864 (not (= lambda!198966 lambda!198844))))

(assert (=> d!1475794 true))

(declare-fun b!4654063 () Bool)

(declare-fun res!1956597 () Bool)

(declare-fun e!2903728 () Bool)

(assert (=> b!4654063 (=> (not res!1956597) (not e!2903728))))

(assert (=> b!4654063 (= res!1956597 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) lambda!198966))))

(declare-fun b!4654064 () Bool)

(assert (=> b!4654064 (= e!2903728 (invariantList!1292 (toList!5195 lt!1817360)))))

(declare-fun e!2903729 () ListMap!4533)

(assert (=> b!4654065 (= e!2903729 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(declare-fun lt!1817368 () Unit!118036)

(declare-fun call!325241 () Unit!118036)

(assert (=> b!4654065 (= lt!1817368 call!325241)))

(declare-fun call!325240 () Bool)

(assert (=> b!4654065 call!325240))

(declare-fun lt!1817377 () Unit!118036)

(assert (=> b!4654065 (= lt!1817377 lt!1817368)))

(declare-fun call!325242 () Bool)

(assert (=> b!4654065 call!325242))

(declare-fun lt!1817363 () Unit!118036)

(declare-fun Unit!118375 () Unit!118036)

(assert (=> b!4654065 (= lt!1817363 Unit!118375)))

(declare-fun bm!325235 () Bool)

(declare-fun c!796615 () Bool)

(assert (=> bm!325235 (= call!325242 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (ite c!796615 lambda!198962 lambda!198965)))))

(assert (=> b!4654066 (= e!2903729 lt!1817366)))

(declare-fun lt!1817369 () ListMap!4533)

(assert (=> b!4654066 (= lt!1817369 (+!1976 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> b!4654066 (= lt!1817366 (addToMapMapFromBucket!1089 (t!359110 (t!359110 (Cons!51874 lt!1816246 lt!1816247))) (+!1976 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247))))))))

(declare-fun lt!1817372 () Unit!118036)

(assert (=> b!4654066 (= lt!1817372 call!325241)))

(assert (=> b!4654066 call!325240))

(declare-fun lt!1817371 () Unit!118036)

(assert (=> b!4654066 (= lt!1817371 lt!1817372)))

(assert (=> b!4654066 (forall!11010 (toList!5195 lt!1817369) lambda!198965)))

(declare-fun lt!1817373 () Unit!118036)

(declare-fun Unit!118376 () Unit!118036)

(assert (=> b!4654066 (= lt!1817373 Unit!118376)))

(assert (=> b!4654066 (forall!11010 (t!359110 (t!359110 (Cons!51874 lt!1816246 lt!1816247))) lambda!198965)))

(declare-fun lt!1817364 () Unit!118036)

(declare-fun Unit!118377 () Unit!118036)

(assert (=> b!4654066 (= lt!1817364 Unit!118377)))

(declare-fun lt!1817370 () Unit!118036)

(declare-fun Unit!118378 () Unit!118036)

(assert (=> b!4654066 (= lt!1817370 Unit!118378)))

(declare-fun lt!1817362 () Unit!118036)

(assert (=> b!4654066 (= lt!1817362 (forallContained!3216 (toList!5195 lt!1817369) lambda!198965 (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> b!4654066 (contains!15019 lt!1817369 (_1!29781 (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun lt!1817374 () Unit!118036)

(declare-fun Unit!118379 () Unit!118036)

(assert (=> b!4654066 (= lt!1817374 Unit!118379)))

(assert (=> b!4654066 (contains!15019 lt!1817366 (_1!29781 (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun lt!1817378 () Unit!118036)

(declare-fun Unit!118380 () Unit!118036)

(assert (=> b!4654066 (= lt!1817378 Unit!118380)))

(assert (=> b!4654066 (forall!11010 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) lambda!198965)))

(declare-fun lt!1817380 () Unit!118036)

(declare-fun Unit!118381 () Unit!118036)

(assert (=> b!4654066 (= lt!1817380 Unit!118381)))

(assert (=> b!4654066 (forall!11010 (toList!5195 lt!1817369) lambda!198965)))

(declare-fun lt!1817375 () Unit!118036)

(declare-fun Unit!118382 () Unit!118036)

(assert (=> b!4654066 (= lt!1817375 Unit!118382)))

(declare-fun lt!1817376 () Unit!118036)

(declare-fun Unit!118383 () Unit!118036)

(assert (=> b!4654066 (= lt!1817376 Unit!118383)))

(declare-fun lt!1817367 () Unit!118036)

(assert (=> b!4654066 (= lt!1817367 (addForallContainsKeyThenBeforeAdding!591 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817366 (_1!29781 (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247)))) (_2!29781 (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247))))))))

(assert (=> b!4654066 call!325242))

(declare-fun lt!1817361 () Unit!118036)

(assert (=> b!4654066 (= lt!1817361 lt!1817367)))

(assert (=> b!4654066 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) lambda!198965)))

(declare-fun lt!1817365 () Unit!118036)

(declare-fun Unit!118384 () Unit!118036)

(assert (=> b!4654066 (= lt!1817365 Unit!118384)))

(declare-fun res!1956596 () Bool)

(assert (=> b!4654066 (= res!1956596 (forall!11010 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) lambda!198965))))

(declare-fun e!2903730 () Bool)

(assert (=> b!4654066 (=> (not res!1956596) (not e!2903730))))

(assert (=> b!4654066 e!2903730))

(declare-fun lt!1817379 () Unit!118036)

(declare-fun Unit!118385 () Unit!118036)

(assert (=> b!4654066 (= lt!1817379 Unit!118385)))

(assert (=> d!1475794 e!2903728))

(declare-fun res!1956595 () Bool)

(assert (=> d!1475794 (=> (not res!1956595) (not e!2903728))))

(assert (=> d!1475794 (= res!1956595 (forall!11010 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) lambda!198966))))

(assert (=> d!1475794 (= lt!1817360 e!2903729)))

(assert (=> d!1475794 (= c!796615 ((_ is Nil!51874) (t!359110 (Cons!51874 lt!1816246 lt!1816247))))))

(assert (=> d!1475794 (noDuplicateKeys!1632 (t!359110 (Cons!51874 lt!1816246 lt!1816247)))))

(assert (=> d!1475794 (= (addToMapMapFromBucket!1089 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) lt!1817360)))

(declare-fun bm!325236 () Bool)

(assert (=> bm!325236 (= call!325240 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (ite c!796615 lambda!198962 lambda!198963)))))

(declare-fun bm!325237 () Bool)

(assert (=> bm!325237 (= call!325241 (lemmaContainsAllItsOwnKeys!592 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun b!4654067 () Bool)

(assert (=> b!4654067 (= e!2903730 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) lambda!198965))))

(assert (= (and d!1475794 c!796615) b!4654065))

(assert (= (and d!1475794 (not c!796615)) b!4654066))

(assert (= (and b!4654066 res!1956596) b!4654067))

(assert (= (or b!4654065 b!4654066) bm!325237))

(assert (= (or b!4654065 b!4654066) bm!325236))

(assert (= (or b!4654065 b!4654066) bm!325235))

(assert (= (and d!1475794 res!1956595) b!4654063))

(assert (= (and b!4654063 res!1956597) b!4654064))

(declare-fun m!5532497 () Bool)

(assert (=> d!1475794 m!5532497))

(assert (=> d!1475794 m!5531533))

(declare-fun m!5532499 () Bool)

(assert (=> bm!325236 m!5532499))

(declare-fun m!5532501 () Bool)

(assert (=> b!4654064 m!5532501))

(declare-fun m!5532503 () Bool)

(assert (=> b!4654063 m!5532503))

(assert (=> bm!325237 m!5530541))

(declare-fun m!5532505 () Bool)

(assert (=> bm!325237 m!5532505))

(declare-fun m!5532507 () Bool)

(assert (=> bm!325235 m!5532507))

(declare-fun m!5532509 () Bool)

(assert (=> b!4654067 m!5532509))

(assert (=> b!4654066 m!5530541))

(declare-fun m!5532511 () Bool)

(assert (=> b!4654066 m!5532511))

(declare-fun m!5532513 () Bool)

(assert (=> b!4654066 m!5532513))

(assert (=> b!4654066 m!5532513))

(declare-fun m!5532515 () Bool)

(assert (=> b!4654066 m!5532515))

(declare-fun m!5532517 () Bool)

(assert (=> b!4654066 m!5532517))

(declare-fun m!5532519 () Bool)

(assert (=> b!4654066 m!5532519))

(assert (=> b!4654066 m!5532517))

(declare-fun m!5532521 () Bool)

(assert (=> b!4654066 m!5532521))

(declare-fun m!5532523 () Bool)

(assert (=> b!4654066 m!5532523))

(declare-fun m!5532525 () Bool)

(assert (=> b!4654066 m!5532525))

(assert (=> b!4654066 m!5532509))

(declare-fun m!5532527 () Bool)

(assert (=> b!4654066 m!5532527))

(assert (=> b!4654066 m!5530541))

(assert (=> b!4654066 m!5532521))

(assert (=> b!4653222 d!1475794))

(declare-fun b!4654095 () Bool)

(declare-fun e!2903758 () Unit!118036)

(declare-fun lt!1817408 () Unit!118036)

(assert (=> b!4654095 (= e!2903758 lt!1817408)))

(declare-fun lt!1817403 () Unit!118036)

(assert (=> b!4654095 (= lt!1817403 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816636) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> b!4654095 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816636) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun lt!1817405 () Unit!118036)

(assert (=> b!4654095 (= lt!1817405 lt!1817403)))

(assert (=> b!4654095 (= lt!1817408 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816636) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun call!325246 () Bool)

(assert (=> b!4654095 call!325246))

(declare-fun b!4654096 () Bool)

(declare-fun e!2903756 () List!52001)

(assert (=> b!4654096 (= e!2903756 (getKeysList!743 (toList!5195 lt!1816636)))))

(declare-fun b!4654097 () Bool)

(declare-fun e!2903755 () Unit!118036)

(assert (=> b!4654097 (= e!2903758 e!2903755)))

(declare-fun c!796621 () Bool)

(assert (=> b!4654097 (= c!796621 call!325246)))

(declare-fun b!4654098 () Bool)

(declare-fun e!2903753 () Bool)

(assert (=> b!4654098 (= e!2903753 (contains!15021 (keys!18370 lt!1816636) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun b!4654099 () Bool)

(declare-fun e!2903754 () Bool)

(assert (=> b!4654099 (= e!2903754 e!2903753)))

(declare-fun res!1956618 () Bool)

(assert (=> b!4654099 (=> (not res!1956618) (not e!2903753))))

(assert (=> b!4654099 (= res!1956618 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816636) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))))

(declare-fun bm!325241 () Bool)

(assert (=> bm!325241 (= call!325246 (contains!15021 e!2903756 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun c!796620 () Bool)

(declare-fun c!796622 () Bool)

(assert (=> bm!325241 (= c!796620 c!796622)))

(declare-fun b!4654100 () Bool)

(assert (=> b!4654100 (= e!2903756 (keys!18370 lt!1816636))))

(declare-fun b!4654101 () Bool)

(assert (=> b!4654101 false))

(declare-fun lt!1817409 () Unit!118036)

(declare-fun lt!1817407 () Unit!118036)

(assert (=> b!4654101 (= lt!1817409 lt!1817407)))

(assert (=> b!4654101 (containsKey!2711 (toList!5195 lt!1816636) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(assert (=> b!4654101 (= lt!1817407 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816636) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun Unit!118386 () Unit!118036)

(assert (=> b!4654101 (= e!2903755 Unit!118386)))

(declare-fun d!1475822 () Bool)

(assert (=> d!1475822 e!2903754))

(declare-fun res!1956619 () Bool)

(assert (=> d!1475822 (=> res!1956619 e!2903754)))

(declare-fun e!2903757 () Bool)

(assert (=> d!1475822 (= res!1956619 e!2903757)))

(declare-fun res!1956617 () Bool)

(assert (=> d!1475822 (=> (not res!1956617) (not e!2903757))))

(declare-fun lt!1817410 () Bool)

(assert (=> d!1475822 (= res!1956617 (not lt!1817410))))

(declare-fun lt!1817404 () Bool)

(assert (=> d!1475822 (= lt!1817410 lt!1817404)))

(declare-fun lt!1817406 () Unit!118036)

(assert (=> d!1475822 (= lt!1817406 e!2903758)))

(assert (=> d!1475822 (= c!796622 lt!1817404)))

(assert (=> d!1475822 (= lt!1817404 (containsKey!2711 (toList!5195 lt!1816636) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> d!1475822 (= (contains!15019 lt!1816636 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) lt!1817410)))

(declare-fun b!4654102 () Bool)

(declare-fun Unit!118387 () Unit!118036)

(assert (=> b!4654102 (= e!2903755 Unit!118387)))

(declare-fun b!4654103 () Bool)

(assert (=> b!4654103 (= e!2903757 (not (contains!15021 (keys!18370 lt!1816636) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))))

(assert (= (and d!1475822 c!796622) b!4654095))

(assert (= (and d!1475822 (not c!796622)) b!4654097))

(assert (= (and b!4654097 c!796621) b!4654101))

(assert (= (and b!4654097 (not c!796621)) b!4654102))

(assert (= (or b!4654095 b!4654097) bm!325241))

(assert (= (and bm!325241 c!796620) b!4654096))

(assert (= (and bm!325241 (not c!796620)) b!4654100))

(assert (= (and d!1475822 res!1956617) b!4654103))

(assert (= (and d!1475822 (not res!1956619)) b!4654099))

(assert (= (and b!4654099 res!1956618) b!4654098))

(declare-fun m!5532529 () Bool)

(assert (=> b!4654103 m!5532529))

(assert (=> b!4654103 m!5532529))

(declare-fun m!5532531 () Bool)

(assert (=> b!4654103 m!5532531))

(declare-fun m!5532533 () Bool)

(assert (=> b!4654095 m!5532533))

(declare-fun m!5532535 () Bool)

(assert (=> b!4654095 m!5532535))

(assert (=> b!4654095 m!5532535))

(declare-fun m!5532537 () Bool)

(assert (=> b!4654095 m!5532537))

(declare-fun m!5532539 () Bool)

(assert (=> b!4654095 m!5532539))

(declare-fun m!5532541 () Bool)

(assert (=> bm!325241 m!5532541))

(assert (=> b!4654100 m!5532529))

(declare-fun m!5532543 () Bool)

(assert (=> d!1475822 m!5532543))

(assert (=> b!4654101 m!5532543))

(declare-fun m!5532545 () Bool)

(assert (=> b!4654101 m!5532545))

(assert (=> b!4654099 m!5532535))

(assert (=> b!4654099 m!5532535))

(assert (=> b!4654099 m!5532537))

(assert (=> b!4654098 m!5532529))

(assert (=> b!4654098 m!5532529))

(assert (=> b!4654098 m!5532531))

(declare-fun m!5532547 () Bool)

(assert (=> b!4654096 m!5532547))

(assert (=> b!4653222 d!1475822))

(declare-fun d!1475824 () Bool)

(declare-fun e!2903759 () Bool)

(assert (=> d!1475824 e!2903759))

(declare-fun res!1956620 () Bool)

(assert (=> d!1475824 (=> (not res!1956620) (not e!2903759))))

(declare-fun lt!1817412 () ListMap!4533)

(assert (=> d!1475824 (= res!1956620 (contains!15019 lt!1817412 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun lt!1817413 () List!51998)

(assert (=> d!1475824 (= lt!1817412 (ListMap!4534 lt!1817413))))

(declare-fun lt!1817414 () Unit!118036)

(declare-fun lt!1817411 () Unit!118036)

(assert (=> d!1475824 (= lt!1817414 lt!1817411)))

(assert (=> d!1475824 (= (getValueByKey!1603 lt!1817413 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (Some!11814 (_2!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> d!1475824 (= lt!1817411 (lemmaContainsTupThenGetReturnValue!920 lt!1817413 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (_2!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> d!1475824 (= lt!1817413 (insertNoDuplicatedKeys!428 (toList!5195 (ListMap!4534 Nil!51874)) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (_2!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> d!1475824 (= (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817412)))

(declare-fun b!4654104 () Bool)

(declare-fun res!1956621 () Bool)

(assert (=> b!4654104 (=> (not res!1956621) (not e!2903759))))

(assert (=> b!4654104 (= res!1956621 (= (getValueByKey!1603 (toList!5195 lt!1817412) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (Some!11814 (_2!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))))

(declare-fun b!4654105 () Bool)

(assert (=> b!4654105 (= e!2903759 (contains!15023 (toList!5195 lt!1817412) (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(assert (= (and d!1475824 res!1956620) b!4654104))

(assert (= (and b!4654104 res!1956621) b!4654105))

(declare-fun m!5532549 () Bool)

(assert (=> d!1475824 m!5532549))

(declare-fun m!5532551 () Bool)

(assert (=> d!1475824 m!5532551))

(declare-fun m!5532553 () Bool)

(assert (=> d!1475824 m!5532553))

(declare-fun m!5532555 () Bool)

(assert (=> d!1475824 m!5532555))

(declare-fun m!5532557 () Bool)

(assert (=> b!4654104 m!5532557))

(declare-fun m!5532559 () Bool)

(assert (=> b!4654105 m!5532559))

(assert (=> b!4653222 d!1475824))

(declare-fun d!1475826 () Bool)

(assert (=> d!1475826 (dynLambda!21580 lambda!198847 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))

(declare-fun lt!1817415 () Unit!118036)

(assert (=> d!1475826 (= lt!1817415 (choose!31973 (toList!5195 lt!1816636) lambda!198847 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(declare-fun e!2903760 () Bool)

(assert (=> d!1475826 e!2903760))

(declare-fun res!1956622 () Bool)

(assert (=> d!1475826 (=> (not res!1956622) (not e!2903760))))

(assert (=> d!1475826 (= res!1956622 (forall!11010 (toList!5195 lt!1816636) lambda!198847))))

(assert (=> d!1475826 (= (forallContained!3216 (toList!5195 lt!1816636) lambda!198847 (h!58012 (Cons!51874 lt!1816246 lt!1816247))) lt!1817415)))

(declare-fun b!4654106 () Bool)

(assert (=> b!4654106 (= e!2903760 (contains!15023 (toList!5195 lt!1816636) (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(assert (= (and d!1475826 res!1956622) b!4654106))

(declare-fun b_lambda!173581 () Bool)

(assert (=> (not b_lambda!173581) (not d!1475826)))

(declare-fun m!5532561 () Bool)

(assert (=> d!1475826 m!5532561))

(declare-fun m!5532563 () Bool)

(assert (=> d!1475826 m!5532563))

(assert (=> d!1475826 m!5530537))

(declare-fun m!5532565 () Bool)

(assert (=> b!4654106 m!5532565))

(assert (=> b!4653222 d!1475826))

(declare-fun d!1475828 () Bool)

(declare-fun res!1956623 () Bool)

(declare-fun e!2903761 () Bool)

(assert (=> d!1475828 (=> res!1956623 e!2903761)))

(assert (=> d!1475828 (= res!1956623 ((_ is Nil!51874) (Cons!51874 lt!1816246 lt!1816247)))))

(assert (=> d!1475828 (= (forall!11010 (Cons!51874 lt!1816246 lt!1816247) lambda!198847) e!2903761)))

(declare-fun b!4654107 () Bool)

(declare-fun e!2903762 () Bool)

(assert (=> b!4654107 (= e!2903761 e!2903762)))

(declare-fun res!1956624 () Bool)

(assert (=> b!4654107 (=> (not res!1956624) (not e!2903762))))

(assert (=> b!4654107 (= res!1956624 (dynLambda!21580 lambda!198847 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(declare-fun b!4654108 () Bool)

(assert (=> b!4654108 (= e!2903762 (forall!11010 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) lambda!198847))))

(assert (= (and d!1475828 (not res!1956623)) b!4654107))

(assert (= (and b!4654107 res!1956624) b!4654108))

(declare-fun b_lambda!173583 () Bool)

(assert (=> (not b_lambda!173583) (not b!4654107)))

(assert (=> b!4654107 m!5532561))

(assert (=> b!4654108 m!5530545))

(assert (=> b!4653222 d!1475828))

(declare-fun d!1475830 () Bool)

(declare-fun res!1956625 () Bool)

(declare-fun e!2903763 () Bool)

(assert (=> d!1475830 (=> res!1956625 e!2903763)))

(assert (=> d!1475830 (= res!1956625 ((_ is Nil!51874) (toList!5195 lt!1816636)))))

(assert (=> d!1475830 (= (forall!11010 (toList!5195 lt!1816636) lambda!198847) e!2903763)))

(declare-fun b!4654109 () Bool)

(declare-fun e!2903764 () Bool)

(assert (=> b!4654109 (= e!2903763 e!2903764)))

(declare-fun res!1956626 () Bool)

(assert (=> b!4654109 (=> (not res!1956626) (not e!2903764))))

(assert (=> b!4654109 (= res!1956626 (dynLambda!21580 lambda!198847 (h!58012 (toList!5195 lt!1816636))))))

(declare-fun b!4654110 () Bool)

(assert (=> b!4654110 (= e!2903764 (forall!11010 (t!359110 (toList!5195 lt!1816636)) lambda!198847))))

(assert (= (and d!1475830 (not res!1956625)) b!4654109))

(assert (= (and b!4654109 res!1956626) b!4654110))

(declare-fun b_lambda!173585 () Bool)

(assert (=> (not b_lambda!173585) (not b!4654109)))

(declare-fun m!5532567 () Bool)

(assert (=> b!4654109 m!5532567))

(declare-fun m!5532569 () Bool)

(assert (=> b!4654110 m!5532569))

(assert (=> b!4653222 d!1475830))

(declare-fun d!1475832 () Bool)

(declare-fun res!1956627 () Bool)

(declare-fun e!2903765 () Bool)

(assert (=> d!1475832 (=> res!1956627 e!2903765)))

(assert (=> d!1475832 (= res!1956627 ((_ is Nil!51874) (t!359110 (Cons!51874 lt!1816246 lt!1816247))))))

(assert (=> d!1475832 (= (forall!11010 (t!359110 (Cons!51874 lt!1816246 lt!1816247)) lambda!198847) e!2903765)))

(declare-fun b!4654111 () Bool)

(declare-fun e!2903766 () Bool)

(assert (=> b!4654111 (= e!2903765 e!2903766)))

(declare-fun res!1956628 () Bool)

(assert (=> b!4654111 (=> (not res!1956628) (not e!2903766))))

(assert (=> b!4654111 (= res!1956628 (dynLambda!21580 lambda!198847 (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun b!4654112 () Bool)

(assert (=> b!4654112 (= e!2903766 (forall!11010 (t!359110 (t!359110 (Cons!51874 lt!1816246 lt!1816247))) lambda!198847))))

(assert (= (and d!1475832 (not res!1956627)) b!4654111))

(assert (= (and b!4654111 res!1956628) b!4654112))

(declare-fun b_lambda!173587 () Bool)

(assert (=> (not b_lambda!173587) (not b!4654111)))

(declare-fun m!5532571 () Bool)

(assert (=> b!4654111 m!5532571))

(declare-fun m!5532573 () Bool)

(assert (=> b!4654112 m!5532573))

(assert (=> b!4653222 d!1475832))

(declare-fun bs!1063924 () Bool)

(declare-fun d!1475834 () Bool)

(assert (= bs!1063924 (and d!1475834 d!1475494)))

(declare-fun lambda!198970 () Int)

(assert (=> bs!1063924 (= (= lt!1816633 lt!1816578) (= lambda!198970 lambda!198885))))

(declare-fun bs!1063925 () Bool)

(assert (= bs!1063925 (and d!1475834 b!4653227)))

(assert (=> bs!1063925 (= (= lt!1816633 lt!1816657) (= lambda!198970 lambda!198851))))

(declare-fun bs!1063926 () Bool)

(assert (= bs!1063926 (and d!1475834 b!4654040)))

(assert (=> bs!1063926 (= (= lt!1816633 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198970 lambda!198953))))

(declare-fun bs!1063927 () Bool)

(assert (= bs!1063927 (and d!1475834 d!1475404)))

(assert (=> bs!1063927 (= (= lt!1816633 lt!1816745) (= lambda!198970 lambda!198862))))

(declare-fun bs!1063928 () Bool)

(assert (= bs!1063928 (and d!1475834 b!4653410)))

(assert (=> bs!1063928 (= (= lt!1816633 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198970 lambda!198859))))

(declare-fun bs!1063929 () Bool)

(assert (= bs!1063929 (and d!1475834 d!1475666)))

(assert (=> bs!1063929 (= (= lt!1816633 lt!1817133) (= lambda!198970 lambda!198930))))

(declare-fun bs!1063930 () Bool)

(assert (= bs!1063930 (and d!1475834 d!1475542)))

(assert (=> bs!1063930 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198970 lambda!198903))))

(declare-fun bs!1063931 () Bool)

(assert (= bs!1063931 (and d!1475834 b!4653963)))

(assert (=> bs!1063931 (= (= lt!1816633 lt!1817226) (= lambda!198970 lambda!198941))))

(declare-fun bs!1063932 () Bool)

(assert (= bs!1063932 (and d!1475834 d!1475300)))

(assert (=> bs!1063932 (= (= lt!1816633 lt!1816627) (= lambda!198970 lambda!198848))))

(declare-fun bs!1063933 () Bool)

(assert (= bs!1063933 (and d!1475834 b!4653105)))

(assert (=> bs!1063933 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198970 lambda!198818))))

(declare-fun bs!1063934 () Bool)

(assert (= bs!1063934 (and d!1475834 b!4653177)))

(assert (=> bs!1063934 (= (= lt!1816633 lt!1816243) (= lambda!198970 lambda!198834))))

(declare-fun bs!1063935 () Bool)

(assert (= bs!1063935 (and d!1475834 d!1475272)))

(assert (=> bs!1063935 (= (= lt!1816633 lt!1816572) (= lambda!198970 lambda!198837))))

(declare-fun bs!1063936 () Bool)

(assert (= bs!1063936 (and d!1475834 b!4654041)))

(assert (=> bs!1063936 (= (= lt!1816633 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))) (= lambda!198970 lambda!198954))))

(declare-fun bs!1063937 () Bool)

(assert (= bs!1063937 (and d!1475834 b!4653178)))

(assert (=> bs!1063937 (= (= lt!1816633 lt!1816243) (= lambda!198970 lambda!198835))))

(declare-fun bs!1063938 () Bool)

(assert (= bs!1063938 (and d!1475834 b!4653751)))

(assert (=> bs!1063938 (= (= lt!1816633 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198970 lambda!198907))))

(declare-fun bs!1063939 () Bool)

(assert (= bs!1063939 (and d!1475834 b!4653222)))

(assert (=> bs!1063939 (= lambda!198970 lambda!198847)))

(declare-fun bs!1063940 () Bool)

(assert (= bs!1063940 (and d!1475834 b!4653625)))

(assert (=> bs!1063940 (= (= lt!1816633 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198970 lambda!198893))))

(declare-fun bs!1063941 () Bool)

(assert (= bs!1063941 (and d!1475834 d!1475566)))

(assert (=> bs!1063941 (= (= lt!1816633 lt!1816243) (= lambda!198970 lambda!198904))))

(assert (=> bs!1063925 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198970 lambda!198850))))

(assert (=> bs!1063936 (= (= lt!1816633 lt!1817312) (= lambda!198970 lambda!198956))))

(declare-fun bs!1063942 () Bool)

(assert (= bs!1063942 (and d!1475834 d!1475590)))

(assert (=> bs!1063942 (= (= lt!1816633 lt!1816505) (= lambda!198970 lambda!198905))))

(assert (=> bs!1063937 (= (= lt!1816633 lt!1816578) (= lambda!198970 lambda!198836))))

(declare-fun bs!1063943 () Bool)

(assert (= bs!1063943 (and d!1475834 b!4653624)))

(assert (=> bs!1063943 (= (= lt!1816633 (+!1976 lt!1816243 (h!58012 oldBucket!40))) (= lambda!198970 lambda!198892))))

(declare-fun bs!1063944 () Bool)

(assert (= bs!1063944 (and d!1475834 d!1475700)))

(assert (=> bs!1063944 (= (= lt!1816633 lt!1816526) (= lambda!198970 lambda!198933))))

(declare-fun bs!1063945 () Bool)

(assert (= bs!1063945 (and d!1475834 b!4653411)))

(assert (=> bs!1063945 (= (= lt!1816633 (extractMap!1688 (t!359111 lt!1816245))) (= lambda!198970 lambda!198860))))

(declare-fun bs!1063946 () Bool)

(assert (= bs!1063946 (and d!1475834 d!1475270)))

(assert (=> bs!1063946 (not (= lambda!198970 lambda!198833))))

(declare-fun bs!1063947 () Bool)

(assert (= bs!1063947 (and d!1475834 b!4653752)))

(assert (=> bs!1063947 (= (= lt!1816633 lt!1817033) (= lambda!198970 lambda!198909))))

(declare-fun bs!1063948 () Bool)

(assert (= bs!1063948 (and d!1475834 b!4653879)))

(assert (=> bs!1063948 (= (= lt!1816633 lt!1817139) (= lambda!198970 lambda!198929))))

(declare-fun bs!1063949 () Bool)

(assert (= bs!1063949 (and d!1475834 b!4654022)))

(assert (=> bs!1063949 (= (= lt!1816633 lt!1817268) (= lambda!198970 lambda!198947))))

(declare-fun bs!1063950 () Bool)

(assert (= bs!1063950 (and d!1475834 d!1475502)))

(assert (=> bs!1063950 (= (= lt!1816633 lt!1816922) (= lambda!198970 lambda!198896))))

(declare-fun bs!1063951 () Bool)

(assert (= bs!1063951 (and d!1475834 b!4653878)))

(assert (=> bs!1063951 (= (= lt!1816633 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198970 lambda!198925))))

(declare-fun bs!1063952 () Bool)

(assert (= bs!1063952 (and d!1475834 b!4653962)))

(assert (=> bs!1063952 (= (= lt!1816633 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198970 lambda!198938))))

(declare-fun bs!1063953 () Bool)

(assert (= bs!1063953 (and d!1475834 d!1475722)))

(assert (=> bs!1063953 (= (= lt!1816633 lt!1817220) (= lambda!198970 lambda!198942))))

(declare-fun bs!1063954 () Bool)

(assert (= bs!1063954 (and d!1475834 b!4654066)))

(assert (=> bs!1063954 (= (= lt!1816633 lt!1817366) (= lambda!198970 lambda!198965))))

(assert (=> bs!1063933 (= (= lt!1816633 lt!1816505) (= lambda!198970 lambda!198820))))

(declare-fun bs!1063955 () Bool)

(assert (= bs!1063955 (and d!1475834 d!1475760)))

(assert (=> bs!1063955 (= (= lt!1816633 lt!1817262) (= lambda!198970 lambda!198950))))

(assert (=> bs!1063945 (= (= lt!1816633 lt!1816751) (= lambda!198970 lambda!198861))))

(assert (=> bs!1063954 (= (= lt!1816633 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (= lambda!198970 lambda!198963))))

(declare-fun bs!1063956 () Bool)

(assert (= bs!1063956 (and d!1475834 b!4654021)))

(assert (=> bs!1063956 (= (= lt!1816633 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198970 lambda!198944))))

(assert (=> bs!1063949 (= (= lt!1816633 (extractMap!1688 (t!359111 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))) (= lambda!198970 lambda!198945))))

(declare-fun bs!1063957 () Bool)

(assert (= bs!1063957 (and d!1475834 b!4653226)))

(assert (=> bs!1063957 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198970 lambda!198849))))

(declare-fun bs!1063958 () Bool)

(assert (= bs!1063958 (and d!1475834 b!4653221)))

(assert (=> bs!1063958 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198970 lambda!198845))))

(declare-fun bs!1063959 () Bool)

(assert (= bs!1063959 (and d!1475834 b!4654065)))

(assert (=> bs!1063959 (= (= lt!1816633 (+!1976 (ListMap!4534 Nil!51874) (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) (= lambda!198970 lambda!198962))))

(declare-fun bs!1063960 () Bool)

(assert (= bs!1063960 (and d!1475834 b!4653112)))

(assert (=> bs!1063960 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198970 lambda!198825))))

(declare-fun bs!1063961 () Bool)

(assert (= bs!1063961 (and d!1475834 d!1475794)))

(assert (=> bs!1063961 (= (= lt!1816633 lt!1817360) (= lambda!198970 lambda!198966))))

(declare-fun bs!1063962 () Bool)

(assert (= bs!1063962 (and d!1475834 d!1475200)))

(assert (=> bs!1063962 (= (= lt!1816633 lt!1816499) (= lambda!198970 lambda!198821))))

(assert (=> bs!1063931 (= (= lt!1816633 (+!1976 (ListMap!4534 Nil!51874) (h!58012 oldBucket!40))) (= lambda!198970 lambda!198940))))

(declare-fun bs!1063963 () Bool)

(assert (= bs!1063963 (and d!1475834 b!4653104)))

(assert (=> bs!1063963 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198970 lambda!198817))))

(assert (=> bs!1063947 (= (= lt!1816633 (+!1976 (ListMap!4534 Nil!51874) (h!58012 newBucket!224))) (= lambda!198970 lambda!198908))))

(assert (=> bs!1063940 (= (= lt!1816633 lt!1816928) (= lambda!198970 lambda!198895))))

(assert (=> bs!1063939 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198970 lambda!198846))))

(assert (=> bs!1063948 (= (= lt!1816633 (+!1976 (ListMap!4534 Nil!51874) (h!58012 lt!1816247))) (= lambda!198970 lambda!198927))))

(declare-fun bs!1063964 () Bool)

(assert (= bs!1063964 (and d!1475834 d!1475596)))

(assert (=> bs!1063964 (= (= lt!1816633 lt!1817027) (= lambda!198970 lambda!198910))))

(declare-fun bs!1063965 () Bool)

(assert (= bs!1063965 (and d!1475834 d!1475712)))

(assert (=> bs!1063965 (= (= lt!1816633 lt!1816657) (= lambda!198970 lambda!198936))))

(declare-fun bs!1063966 () Bool)

(assert (= bs!1063966 (and d!1475834 d!1475248)))

(assert (=> bs!1063966 (= (= lt!1816633 lt!1816520) (= lambda!198970 lambda!198827))))

(assert (=> bs!1063960 (= (= lt!1816633 lt!1816526) (= lambda!198970 lambda!198826))))

(declare-fun bs!1063967 () Bool)

(assert (= bs!1063967 (and d!1475834 d!1475776)))

(assert (=> bs!1063967 (= (= lt!1816633 lt!1817306) (= lambda!198970 lambda!198958))))

(declare-fun bs!1063969 () Bool)

(assert (= bs!1063969 (and d!1475834 b!4653111)))

(assert (=> bs!1063969 (= (= lt!1816633 (ListMap!4534 Nil!51874)) (= lambda!198970 lambda!198824))))

(declare-fun bs!1063971 () Bool)

(assert (= bs!1063971 (and d!1475834 d!1475308)))

(assert (=> bs!1063971 (= (= lt!1816633 lt!1816651) (= lambda!198970 lambda!198852))))

(declare-fun bs!1063973 () Bool)

(assert (= bs!1063973 (and d!1475834 d!1475292)))

(assert (=> bs!1063973 (not (= lambda!198970 lambda!198844))))

(assert (=> d!1475834 true))

(assert (=> d!1475834 (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) lambda!198970)))

(declare-fun lt!1817416 () Unit!118036)

(assert (=> d!1475834 (= lt!1817416 (choose!31974 (ListMap!4534 Nil!51874) lt!1816633 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (_2!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> d!1475834 (forall!11010 (toList!5195 (+!1976 (ListMap!4534 Nil!51874) (tuple2!52975 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (_2!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))) lambda!198970)))

(assert (=> d!1475834 (= (addForallContainsKeyThenBeforeAdding!591 (ListMap!4534 Nil!51874) lt!1816633 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (_2!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) lt!1817416)))

(declare-fun bs!1063984 () Bool)

(assert (= bs!1063984 d!1475834))

(declare-fun m!5532575 () Bool)

(assert (=> bs!1063984 m!5532575))

(declare-fun m!5532577 () Bool)

(assert (=> bs!1063984 m!5532577))

(declare-fun m!5532579 () Bool)

(assert (=> bs!1063984 m!5532579))

(declare-fun m!5532581 () Bool)

(assert (=> bs!1063984 m!5532581))

(assert (=> b!4653222 d!1475834))

(declare-fun b!4654113 () Bool)

(declare-fun e!2903772 () Unit!118036)

(declare-fun lt!1817422 () Unit!118036)

(assert (=> b!4654113 (= e!2903772 lt!1817422)))

(declare-fun lt!1817417 () Unit!118036)

(assert (=> b!4654113 (= lt!1817417 (lemmaContainsKeyImpliesGetValueByKeyDefined!1505 (toList!5195 lt!1816633) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> b!4654113 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816633) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun lt!1817419 () Unit!118036)

(assert (=> b!4654113 (= lt!1817419 lt!1817417)))

(assert (=> b!4654113 (= lt!1817422 (lemmaInListThenGetKeysListContains!738 (toList!5195 lt!1816633) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun call!325247 () Bool)

(assert (=> b!4654113 call!325247))

(declare-fun b!4654114 () Bool)

(declare-fun e!2903770 () List!52001)

(assert (=> b!4654114 (= e!2903770 (getKeysList!743 (toList!5195 lt!1816633)))))

(declare-fun b!4654115 () Bool)

(declare-fun e!2903769 () Unit!118036)

(assert (=> b!4654115 (= e!2903772 e!2903769)))

(declare-fun c!796624 () Bool)

(assert (=> b!4654115 (= c!796624 call!325247)))

(declare-fun e!2903767 () Bool)

(declare-fun b!4654116 () Bool)

(assert (=> b!4654116 (= e!2903767 (contains!15021 (keys!18370 lt!1816633) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun b!4654117 () Bool)

(declare-fun e!2903768 () Bool)

(assert (=> b!4654117 (= e!2903768 e!2903767)))

(declare-fun res!1956630 () Bool)

(assert (=> b!4654117 (=> (not res!1956630) (not e!2903767))))

(assert (=> b!4654117 (= res!1956630 (isDefined!9080 (getValueByKey!1603 (toList!5195 lt!1816633) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))))

(declare-fun bm!325242 () Bool)

(assert (=> bm!325242 (= call!325247 (contains!15021 e!2903770 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun c!796623 () Bool)

(declare-fun c!796625 () Bool)

(assert (=> bm!325242 (= c!796623 c!796625)))

(declare-fun b!4654118 () Bool)

(assert (=> b!4654118 (= e!2903770 (keys!18370 lt!1816633))))

(declare-fun b!4654119 () Bool)

(assert (=> b!4654119 false))

(declare-fun lt!1817423 () Unit!118036)

(declare-fun lt!1817421 () Unit!118036)

(assert (=> b!4654119 (= lt!1817423 lt!1817421)))

(assert (=> b!4654119 (containsKey!2711 (toList!5195 lt!1816633) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))

(assert (=> b!4654119 (= lt!1817421 (lemmaInGetKeysListThenContainsKey!742 (toList!5195 lt!1816633) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun Unit!118388 () Unit!118036)

(assert (=> b!4654119 (= e!2903769 Unit!118388)))

(declare-fun d!1475836 () Bool)

(assert (=> d!1475836 e!2903768))

(declare-fun res!1956631 () Bool)

(assert (=> d!1475836 (=> res!1956631 e!2903768)))

(declare-fun e!2903771 () Bool)

(assert (=> d!1475836 (= res!1956631 e!2903771)))

(declare-fun res!1956629 () Bool)

(assert (=> d!1475836 (=> (not res!1956629) (not e!2903771))))

(declare-fun lt!1817424 () Bool)

(assert (=> d!1475836 (= res!1956629 (not lt!1817424))))

(declare-fun lt!1817418 () Bool)

(assert (=> d!1475836 (= lt!1817424 lt!1817418)))

(declare-fun lt!1817420 () Unit!118036)

(assert (=> d!1475836 (= lt!1817420 e!2903772)))

(assert (=> d!1475836 (= c!796625 lt!1817418)))

(assert (=> d!1475836 (= lt!1817418 (containsKey!2711 (toList!5195 lt!1816633) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> d!1475836 (= (contains!15019 lt!1816633 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))) lt!1817424)))

(declare-fun b!4654120 () Bool)

(declare-fun Unit!118389 () Unit!118036)

(assert (=> b!4654120 (= e!2903769 Unit!118389)))

(declare-fun b!4654121 () Bool)

(assert (=> b!4654121 (= e!2903771 (not (contains!15021 (keys!18370 lt!1816633) (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247))))))))

(assert (= (and d!1475836 c!796625) b!4654113))

(assert (= (and d!1475836 (not c!796625)) b!4654115))

(assert (= (and b!4654115 c!796624) b!4654119))

(assert (= (and b!4654115 (not c!796624)) b!4654120))

(assert (= (or b!4654113 b!4654115) bm!325242))

(assert (= (and bm!325242 c!796623) b!4654114))

(assert (= (and bm!325242 (not c!796623)) b!4654118))

(assert (= (and d!1475836 res!1956629) b!4654121))

(assert (= (and d!1475836 (not res!1956631)) b!4654117))

(assert (= (and b!4654117 res!1956630) b!4654116))

(declare-fun m!5532583 () Bool)

(assert (=> b!4654121 m!5532583))

(assert (=> b!4654121 m!5532583))

(declare-fun m!5532585 () Bool)

(assert (=> b!4654121 m!5532585))

(declare-fun m!5532587 () Bool)

(assert (=> b!4654113 m!5532587))

(declare-fun m!5532589 () Bool)

(assert (=> b!4654113 m!5532589))

(assert (=> b!4654113 m!5532589))

(declare-fun m!5532591 () Bool)

(assert (=> b!4654113 m!5532591))

(declare-fun m!5532593 () Bool)

(assert (=> b!4654113 m!5532593))

(declare-fun m!5532595 () Bool)

(assert (=> bm!325242 m!5532595))

(assert (=> b!4654118 m!5532583))

(declare-fun m!5532597 () Bool)

(assert (=> d!1475836 m!5532597))

(assert (=> b!4654119 m!5532597))

(declare-fun m!5532599 () Bool)

(assert (=> b!4654119 m!5532599))

(assert (=> b!4654117 m!5532589))

(assert (=> b!4654117 m!5532589))

(assert (=> b!4654117 m!5532591))

(assert (=> b!4654116 m!5532583))

(assert (=> b!4654116 m!5532583))

(assert (=> b!4654116 m!5532585))

(declare-fun m!5532601 () Bool)

(assert (=> b!4654114 m!5532601))

(assert (=> b!4653222 d!1475836))

(assert (=> b!4653222 d!1475538))

(assert (=> bm!325128 d!1475542))

(declare-fun d!1475838 () Bool)

(assert (=> d!1475838 (= (eq!911 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)) (+!1976 (addToMapMapFromBucket!1089 lt!1816247 (ListMap!4534 Nil!51874)) lt!1816246)) (= (content!8989 (toList!5195 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)))) (content!8989 (toList!5195 (+!1976 (addToMapMapFromBucket!1089 lt!1816247 (ListMap!4534 Nil!51874)) lt!1816246)))))))

(declare-fun bs!1064007 () Bool)

(assert (= bs!1064007 d!1475838))

(assert (=> bs!1064007 m!5530501))

(declare-fun m!5532603 () Bool)

(assert (=> bs!1064007 m!5532603))

(assert (=> d!1475306 d!1475838))

(assert (=> d!1475306 d!1475248))

(assert (=> d!1475306 d!1475300))

(declare-fun d!1475840 () Bool)

(declare-fun e!2903773 () Bool)

(assert (=> d!1475840 e!2903773))

(declare-fun res!1956632 () Bool)

(assert (=> d!1475840 (=> (not res!1956632) (not e!2903773))))

(declare-fun lt!1817426 () ListMap!4533)

(assert (=> d!1475840 (= res!1956632 (contains!15019 lt!1817426 (_1!29781 lt!1816246)))))

(declare-fun lt!1817427 () List!51998)

(assert (=> d!1475840 (= lt!1817426 (ListMap!4534 lt!1817427))))

(declare-fun lt!1817428 () Unit!118036)

(declare-fun lt!1817425 () Unit!118036)

(assert (=> d!1475840 (= lt!1817428 lt!1817425)))

(assert (=> d!1475840 (= (getValueByKey!1603 lt!1817427 (_1!29781 lt!1816246)) (Some!11814 (_2!29781 lt!1816246)))))

(assert (=> d!1475840 (= lt!1817425 (lemmaContainsTupThenGetReturnValue!920 lt!1817427 (_1!29781 lt!1816246) (_2!29781 lt!1816246)))))

(assert (=> d!1475840 (= lt!1817427 (insertNoDuplicatedKeys!428 (toList!5195 (addToMapMapFromBucket!1089 lt!1816247 (ListMap!4534 Nil!51874))) (_1!29781 lt!1816246) (_2!29781 lt!1816246)))))

(assert (=> d!1475840 (= (+!1976 (addToMapMapFromBucket!1089 lt!1816247 (ListMap!4534 Nil!51874)) lt!1816246) lt!1817426)))

(declare-fun b!4654122 () Bool)

(declare-fun res!1956633 () Bool)

(assert (=> b!4654122 (=> (not res!1956633) (not e!2903773))))

(assert (=> b!4654122 (= res!1956633 (= (getValueByKey!1603 (toList!5195 lt!1817426) (_1!29781 lt!1816246)) (Some!11814 (_2!29781 lt!1816246))))))

(declare-fun b!4654123 () Bool)

(assert (=> b!4654123 (= e!2903773 (contains!15023 (toList!5195 lt!1817426) lt!1816246))))

(assert (= (and d!1475840 res!1956632) b!4654122))

(assert (= (and b!4654122 res!1956633) b!4654123))

(declare-fun m!5532605 () Bool)

(assert (=> d!1475840 m!5532605))

(declare-fun m!5532607 () Bool)

(assert (=> d!1475840 m!5532607))

(declare-fun m!5532609 () Bool)

(assert (=> d!1475840 m!5532609))

(declare-fun m!5532611 () Bool)

(assert (=> d!1475840 m!5532611))

(declare-fun m!5532613 () Bool)

(assert (=> b!4654122 m!5532613))

(declare-fun m!5532615 () Bool)

(assert (=> b!4654123 m!5532615))

(assert (=> d!1475306 d!1475840))

(assert (=> d!1475306 d!1475398))

(declare-fun d!1475842 () Bool)

(assert (=> d!1475842 (eq!911 (addToMapMapFromBucket!1089 (Cons!51874 lt!1816246 lt!1816247) (ListMap!4534 Nil!51874)) (+!1976 (addToMapMapFromBucket!1089 lt!1816247 (ListMap!4534 Nil!51874)) lt!1816246))))

(assert (=> d!1475842 true))

(declare-fun _$30!149 () Unit!118036)

(assert (=> d!1475842 (= (choose!31964 lt!1816246 lt!1816247 (ListMap!4534 Nil!51874)) _$30!149)))

(declare-fun bs!1064052 () Bool)

(assert (= bs!1064052 d!1475842))

(assert (=> bs!1064052 m!5529981))

(assert (=> bs!1064052 m!5529979))

(assert (=> bs!1064052 m!5529979))

(assert (=> bs!1064052 m!5530553))

(assert (=> bs!1064052 m!5529981))

(assert (=> bs!1064052 m!5530553))

(assert (=> bs!1064052 m!5530555))

(assert (=> d!1475306 d!1475842))

(declare-fun d!1475852 () Bool)

(declare-fun res!1956641 () Bool)

(declare-fun e!2903783 () Bool)

(assert (=> d!1475852 (=> res!1956641 e!2903783)))

(assert (=> d!1475852 (= res!1956641 ((_ is Nil!51874) (toList!5195 lt!1816243)))))

(assert (=> d!1475852 (= (forall!11010 (toList!5195 lt!1816243) (ite c!796424 lambda!198834 lambda!198835)) e!2903783)))

(declare-fun b!4654137 () Bool)

(declare-fun e!2903784 () Bool)

(assert (=> b!4654137 (= e!2903783 e!2903784)))

(declare-fun res!1956642 () Bool)

(assert (=> b!4654137 (=> (not res!1956642) (not e!2903784))))

(assert (=> b!4654137 (= res!1956642 (dynLambda!21580 (ite c!796424 lambda!198834 lambda!198835) (h!58012 (toList!5195 lt!1816243))))))

(declare-fun b!4654138 () Bool)

(assert (=> b!4654138 (= e!2903784 (forall!11010 (t!359110 (toList!5195 lt!1816243)) (ite c!796424 lambda!198834 lambda!198835)))))

(assert (= (and d!1475852 (not res!1956641)) b!4654137))

(assert (= (and b!4654137 res!1956642) b!4654138))

(declare-fun b_lambda!173591 () Bool)

(assert (=> (not b_lambda!173591) (not b!4654137)))

(declare-fun m!5532685 () Bool)

(assert (=> b!4654137 m!5532685))

(declare-fun m!5532687 () Bool)

(assert (=> b!4654138 m!5532687))

(assert (=> bm!325133 d!1475852))

(declare-fun b!4654139 () Bool)

(declare-fun e!2903785 () List!51998)

(assert (=> b!4654139 (= e!2903785 (t!359110 (t!359110 oldBucket!40)))))

(declare-fun d!1475854 () Bool)

(declare-fun lt!1817442 () List!51998)

(assert (=> d!1475854 (not (containsKey!2708 lt!1817442 key!4968))))

(assert (=> d!1475854 (= lt!1817442 e!2903785)))

(declare-fun c!796629 () Bool)

(assert (=> d!1475854 (= c!796629 (and ((_ is Cons!51874) (t!359110 oldBucket!40)) (= (_1!29781 (h!58012 (t!359110 oldBucket!40))) key!4968)))))

(assert (=> d!1475854 (noDuplicateKeys!1632 (t!359110 oldBucket!40))))

(assert (=> d!1475854 (= (removePairForKey!1255 (t!359110 oldBucket!40) key!4968) lt!1817442)))

(declare-fun b!4654140 () Bool)

(declare-fun e!2903786 () List!51998)

(assert (=> b!4654140 (= e!2903785 e!2903786)))

(declare-fun c!796630 () Bool)

(assert (=> b!4654140 (= c!796630 ((_ is Cons!51874) (t!359110 oldBucket!40)))))

(declare-fun b!4654141 () Bool)

(assert (=> b!4654141 (= e!2903786 (Cons!51874 (h!58012 (t!359110 oldBucket!40)) (removePairForKey!1255 (t!359110 (t!359110 oldBucket!40)) key!4968)))))

(declare-fun b!4654142 () Bool)

(assert (=> b!4654142 (= e!2903786 Nil!51874)))

(assert (= (and d!1475854 c!796629) b!4654139))

(assert (= (and d!1475854 (not c!796629)) b!4654140))

(assert (= (and b!4654140 c!796630) b!4654141))

(assert (= (and b!4654140 (not c!796630)) b!4654142))

(declare-fun m!5532689 () Bool)

(assert (=> d!1475854 m!5532689))

(assert (=> d!1475854 m!5530373))

(declare-fun m!5532693 () Bool)

(assert (=> b!4654141 m!5532693))

(assert (=> b!4653203 d!1475854))

(declare-fun d!1475856 () Bool)

(declare-fun res!1956655 () Bool)

(declare-fun e!2903802 () Bool)

(assert (=> d!1475856 (=> res!1956655 e!2903802)))

(assert (=> d!1475856 (= res!1956655 (and ((_ is Cons!51875) (toList!5196 lt!1816244)) (= (_1!29782 (h!58013 (toList!5196 lt!1816244))) lt!1816240)))))

(assert (=> d!1475856 (= (containsKey!2712 (toList!5196 lt!1816244) lt!1816240) e!2903802)))

(declare-fun b!4654161 () Bool)

(declare-fun e!2903803 () Bool)

(assert (=> b!4654161 (= e!2903802 e!2903803)))

(declare-fun res!1956656 () Bool)

(assert (=> b!4654161 (=> (not res!1956656) (not e!2903803))))

(assert (=> b!4654161 (= res!1956656 (and (or (not ((_ is Cons!51875) (toList!5196 lt!1816244))) (bvsle (_1!29782 (h!58013 (toList!5196 lt!1816244))) lt!1816240)) ((_ is Cons!51875) (toList!5196 lt!1816244)) (bvslt (_1!29782 (h!58013 (toList!5196 lt!1816244))) lt!1816240)))))

(declare-fun b!4654162 () Bool)

(assert (=> b!4654162 (= e!2903803 (containsKey!2712 (t!359111 (toList!5196 lt!1816244)) lt!1816240))))

(assert (= (and d!1475856 (not res!1956655)) b!4654161))

(assert (= (and b!4654161 res!1956656) b!4654162))

(declare-fun m!5532735 () Bool)

(assert (=> b!4654162 m!5532735))

(assert (=> d!1475276 d!1475856))

(declare-fun d!1475870 () Bool)

(declare-fun res!1956659 () Bool)

(declare-fun e!2903808 () Bool)

(assert (=> d!1475870 (=> res!1956659 e!2903808)))

(assert (=> d!1475870 (= res!1956659 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475870 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796410 lambda!198817 lambda!198818)) e!2903808)))

(declare-fun b!4654169 () Bool)

(declare-fun e!2903809 () Bool)

(assert (=> b!4654169 (= e!2903808 e!2903809)))

(declare-fun res!1956660 () Bool)

(assert (=> b!4654169 (=> (not res!1956660) (not e!2903809))))

(assert (=> b!4654169 (= res!1956660 (dynLambda!21580 (ite c!796410 lambda!198817 lambda!198818) (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4654170 () Bool)

(assert (=> b!4654170 (= e!2903809 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) (ite c!796410 lambda!198817 lambda!198818)))))

(assert (= (and d!1475870 (not res!1956659)) b!4654169))

(assert (= (and b!4654169 res!1956660) b!4654170))

(declare-fun b_lambda!173599 () Bool)

(assert (=> (not b_lambda!173599) (not b!4654169)))

(declare-fun m!5532745 () Bool)

(assert (=> b!4654169 m!5532745))

(declare-fun m!5532747 () Bool)

(assert (=> b!4654170 m!5532747))

(assert (=> bm!325124 d!1475870))

(declare-fun d!1475876 () Bool)

(assert (=> d!1475876 (isDefined!9081 (getValueByKey!1604 (toList!5196 lt!1816244) lt!1816240))))

(declare-fun lt!1817454 () Unit!118036)

(declare-fun choose!31982 (List!51999 (_ BitVec 64)) Unit!118036)

(assert (=> d!1475876 (= lt!1817454 (choose!31982 (toList!5196 lt!1816244) lt!1816240))))

(declare-fun e!2903816 () Bool)

(assert (=> d!1475876 e!2903816))

(declare-fun res!1956663 () Bool)

(assert (=> d!1475876 (=> (not res!1956663) (not e!2903816))))

(declare-fun isStrictlySorted!572 (List!51999) Bool)

(assert (=> d!1475876 (= res!1956663 (isStrictlySorted!572 (toList!5196 lt!1816244)))))

(assert (=> d!1475876 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1506 (toList!5196 lt!1816244) lt!1816240) lt!1817454)))

(declare-fun b!4654179 () Bool)

(assert (=> b!4654179 (= e!2903816 (containsKey!2712 (toList!5196 lt!1816244) lt!1816240))))

(assert (= (and d!1475876 res!1956663) b!4654179))

(assert (=> d!1475876 m!5530409))

(assert (=> d!1475876 m!5530409))

(assert (=> d!1475876 m!5530459))

(declare-fun m!5532781 () Bool)

(assert (=> d!1475876 m!5532781))

(declare-fun m!5532783 () Bool)

(assert (=> d!1475876 m!5532783))

(assert (=> b!4654179 m!5530455))

(assert (=> b!4653188 d!1475876))

(declare-fun d!1475922 () Bool)

(declare-fun isEmpty!29002 (Option!11816) Bool)

(assert (=> d!1475922 (= (isDefined!9081 (getValueByKey!1604 (toList!5196 lt!1816244) lt!1816240)) (not (isEmpty!29002 (getValueByKey!1604 (toList!5196 lt!1816244) lt!1816240))))))

(declare-fun bs!1064096 () Bool)

(assert (= bs!1064096 d!1475922))

(assert (=> bs!1064096 m!5530409))

(declare-fun m!5532791 () Bool)

(assert (=> bs!1064096 m!5532791))

(assert (=> b!4653188 d!1475922))

(assert (=> b!4653188 d!1475554))

(assert (=> b!4653179 d!1475534))

(declare-fun d!1475938 () Bool)

(declare-fun res!1956664 () Bool)

(declare-fun e!2903817 () Bool)

(assert (=> d!1475938 (=> res!1956664 e!2903817)))

(assert (=> d!1475938 (= res!1956664 ((_ is Nil!51875) (t!359111 lt!1816245)))))

(assert (=> d!1475938 (= (forall!11008 (t!359111 lt!1816245) lambda!198730) e!2903817)))

(declare-fun b!4654180 () Bool)

(declare-fun e!2903818 () Bool)

(assert (=> b!4654180 (= e!2903817 e!2903818)))

(declare-fun res!1956665 () Bool)

(assert (=> b!4654180 (=> (not res!1956665) (not e!2903818))))

(assert (=> b!4654180 (= res!1956665 (dynLambda!21578 lambda!198730 (h!58013 (t!359111 lt!1816245))))))

(declare-fun b!4654181 () Bool)

(assert (=> b!4654181 (= e!2903818 (forall!11008 (t!359111 (t!359111 lt!1816245)) lambda!198730))))

(assert (= (and d!1475938 (not res!1956664)) b!4654180))

(assert (= (and b!4654180 res!1956665) b!4654181))

(declare-fun b_lambda!173687 () Bool)

(assert (=> (not b_lambda!173687) (not b!4654180)))

(declare-fun m!5532805 () Bool)

(assert (=> b!4654180 m!5532805))

(declare-fun m!5532807 () Bool)

(assert (=> b!4654181 m!5532807))

(assert (=> b!4653234 d!1475938))

(assert (=> b!4653106 d!1475580))

(declare-fun d!1475950 () Bool)

(declare-fun res!1956666 () Bool)

(declare-fun e!2903819 () Bool)

(assert (=> d!1475950 (=> res!1956666 e!2903819)))

(assert (=> d!1475950 (= res!1956666 ((_ is Nil!51874) (toList!5195 (ListMap!4534 Nil!51874))))))

(assert (=> d!1475950 (= (forall!11010 (toList!5195 (ListMap!4534 Nil!51874)) (ite c!796410 lambda!198817 lambda!198820)) e!2903819)))

(declare-fun b!4654182 () Bool)

(declare-fun e!2903820 () Bool)

(assert (=> b!4654182 (= e!2903819 e!2903820)))

(declare-fun res!1956667 () Bool)

(assert (=> b!4654182 (=> (not res!1956667) (not e!2903820))))

(assert (=> b!4654182 (= res!1956667 (dynLambda!21580 (ite c!796410 lambda!198817 lambda!198820) (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))))))

(declare-fun b!4654183 () Bool)

(assert (=> b!4654183 (= e!2903820 (forall!11010 (t!359110 (toList!5195 (ListMap!4534 Nil!51874))) (ite c!796410 lambda!198817 lambda!198820)))))

(assert (= (and d!1475950 (not res!1956666)) b!4654182))

(assert (= (and b!4654182 res!1956667) b!4654183))

(declare-fun b_lambda!173689 () Bool)

(assert (=> (not b_lambda!173689) (not b!4654182)))

(declare-fun m!5532819 () Bool)

(assert (=> b!4654182 m!5532819))

(declare-fun m!5532821 () Bool)

(assert (=> b!4654183 m!5532821))

(assert (=> bm!325123 d!1475950))

(declare-fun bs!1064108 () Bool)

(declare-fun b!4654209 () Bool)

(assert (= bs!1064108 (and b!4654209 b!4653341)))

(declare-fun lambda!198981 () Int)

(assert (=> bs!1064108 (= (= (t!359110 (toList!5195 lt!1816241)) (toList!5195 lt!1816241)) (= lambda!198981 lambda!198857))))

(assert (=> b!4654209 true))

(declare-fun bs!1064109 () Bool)

(declare-fun b!4654202 () Bool)

(assert (= bs!1064109 (and b!4654202 b!4653341)))

(declare-fun lambda!198982 () Int)

(assert (=> bs!1064109 (= (= (Cons!51874 (h!58012 (toList!5195 lt!1816241)) (t!359110 (toList!5195 lt!1816241))) (toList!5195 lt!1816241)) (= lambda!198982 lambda!198857))))

(declare-fun bs!1064110 () Bool)

(assert (= bs!1064110 (and b!4654202 b!4654209)))

(assert (=> bs!1064110 (= (= (Cons!51874 (h!58012 (toList!5195 lt!1816241)) (t!359110 (toList!5195 lt!1816241))) (t!359110 (toList!5195 lt!1816241))) (= lambda!198982 lambda!198981))))

(assert (=> b!4654202 true))

(declare-fun bs!1064111 () Bool)

(declare-fun b!4654208 () Bool)

(assert (= bs!1064111 (and b!4654208 b!4653341)))

(declare-fun lambda!198983 () Int)

(assert (=> bs!1064111 (= lambda!198983 lambda!198857)))

(declare-fun bs!1064112 () Bool)

(assert (= bs!1064112 (and b!4654208 b!4654209)))

(assert (=> bs!1064112 (= (= (toList!5195 lt!1816241) (t!359110 (toList!5195 lt!1816241))) (= lambda!198983 lambda!198981))))

(declare-fun bs!1064113 () Bool)

(assert (= bs!1064113 (and b!4654208 b!4654202)))

(assert (=> bs!1064113 (= (= (toList!5195 lt!1816241) (Cons!51874 (h!58012 (toList!5195 lt!1816241)) (t!359110 (toList!5195 lt!1816241)))) (= lambda!198983 lambda!198982))))

(assert (=> b!4654208 true))

(declare-fun bs!1064114 () Bool)

(declare-fun b!4654203 () Bool)

(assert (= bs!1064114 (and b!4654203 b!4653342)))

(declare-fun lambda!198984 () Int)

(assert (=> bs!1064114 (= lambda!198984 lambda!198858)))

(declare-fun e!2903830 () List!52001)

(assert (=> b!4654202 (= e!2903830 (Cons!51877 (_1!29781 (h!58012 (toList!5195 lt!1816241))) (getKeysList!743 (t!359110 (toList!5195 lt!1816241)))))))

(declare-fun c!796645 () Bool)

(assert (=> b!4654202 (= c!796645 (containsKey!2711 (t!359110 (toList!5195 lt!1816241)) (_1!29781 (h!58012 (toList!5195 lt!1816241)))))))

(declare-fun lt!1817474 () Unit!118036)

(declare-fun e!2903832 () Unit!118036)

(assert (=> b!4654202 (= lt!1817474 e!2903832)))

(declare-fun c!796646 () Bool)

(assert (=> b!4654202 (= c!796646 (contains!15021 (getKeysList!743 (t!359110 (toList!5195 lt!1816241))) (_1!29781 (h!58012 (toList!5195 lt!1816241)))))))

(declare-fun lt!1817470 () Unit!118036)

(declare-fun e!2903831 () Unit!118036)

(assert (=> b!4654202 (= lt!1817470 e!2903831)))

(declare-fun lt!1817469 () List!52001)

(assert (=> b!4654202 (= lt!1817469 (getKeysList!743 (t!359110 (toList!5195 lt!1816241))))))

(declare-fun lt!1817475 () Unit!118036)

(declare-fun lemmaForallContainsAddHeadPreserves!254 (List!51998 List!52001 tuple2!52974) Unit!118036)

(assert (=> b!4654202 (= lt!1817475 (lemmaForallContainsAddHeadPreserves!254 (t!359110 (toList!5195 lt!1816241)) lt!1817469 (h!58012 (toList!5195 lt!1816241))))))

(assert (=> b!4654202 (forall!11011 lt!1817469 lambda!198982)))

(declare-fun lt!1817471 () Unit!118036)

(assert (=> b!4654202 (= lt!1817471 lt!1817475)))

(declare-fun e!2903829 () Bool)

(declare-fun lt!1817472 () List!52001)

(assert (=> b!4654203 (= e!2903829 (= (content!8990 lt!1817472) (content!8990 (map!11462 (toList!5195 lt!1816241) lambda!198984))))))

(declare-fun d!1475960 () Bool)

(assert (=> d!1475960 e!2903829))

(declare-fun res!1956674 () Bool)

(assert (=> d!1475960 (=> (not res!1956674) (not e!2903829))))

(assert (=> d!1475960 (= res!1956674 (noDuplicate!833 lt!1817472))))

(assert (=> d!1475960 (= lt!1817472 e!2903830)))

(declare-fun c!796644 () Bool)

(assert (=> d!1475960 (= c!796644 ((_ is Cons!51874) (toList!5195 lt!1816241)))))

(assert (=> d!1475960 (invariantList!1292 (toList!5195 lt!1816241))))

(assert (=> d!1475960 (= (getKeysList!743 (toList!5195 lt!1816241)) lt!1817472)))

(declare-fun b!4654204 () Bool)

(declare-fun Unit!118390 () Unit!118036)

(assert (=> b!4654204 (= e!2903832 Unit!118390)))

(declare-fun b!4654205 () Bool)

(declare-fun res!1956675 () Bool)

(assert (=> b!4654205 (=> (not res!1956675) (not e!2903829))))

(assert (=> b!4654205 (= res!1956675 (= (length!522 lt!1817472) (length!523 (toList!5195 lt!1816241))))))

(declare-fun b!4654206 () Bool)

(assert (=> b!4654206 false))

(declare-fun Unit!118391 () Unit!118036)

(assert (=> b!4654206 (= e!2903832 Unit!118391)))

(declare-fun b!4654207 () Bool)

(declare-fun Unit!118392 () Unit!118036)

(assert (=> b!4654207 (= e!2903831 Unit!118392)))

(declare-fun res!1956676 () Bool)

(assert (=> b!4654208 (=> (not res!1956676) (not e!2903829))))

(assert (=> b!4654208 (= res!1956676 (forall!11011 lt!1817472 lambda!198983))))

(assert (=> b!4654209 false))

(declare-fun lt!1817473 () Unit!118036)

(declare-fun forallContained!3218 (List!52001 Int K!13230) Unit!118036)

(assert (=> b!4654209 (= lt!1817473 (forallContained!3218 (getKeysList!743 (t!359110 (toList!5195 lt!1816241))) lambda!198981 (_1!29781 (h!58012 (toList!5195 lt!1816241)))))))

(declare-fun Unit!118393 () Unit!118036)

(assert (=> b!4654209 (= e!2903831 Unit!118393)))

(declare-fun b!4654210 () Bool)

(assert (=> b!4654210 (= e!2903830 Nil!51877)))

(assert (= (and d!1475960 c!796644) b!4654202))

(assert (= (and d!1475960 (not c!796644)) b!4654210))

(assert (= (and b!4654202 c!796645) b!4654206))

(assert (= (and b!4654202 (not c!796645)) b!4654204))

(assert (= (and b!4654202 c!796646) b!4654209))

(assert (= (and b!4654202 (not c!796646)) b!4654207))

(assert (= (and d!1475960 res!1956674) b!4654205))

(assert (= (and b!4654205 res!1956675) b!4654208))

(assert (= (and b!4654208 res!1956676) b!4654203))

(declare-fun m!5532823 () Bool)

(assert (=> b!4654203 m!5532823))

(declare-fun m!5532825 () Bool)

(assert (=> b!4654203 m!5532825))

(assert (=> b!4654203 m!5532825))

(declare-fun m!5532827 () Bool)

(assert (=> b!4654203 m!5532827))

(declare-fun m!5532829 () Bool)

(assert (=> d!1475960 m!5532829))

(assert (=> d!1475960 m!5530707))

(declare-fun m!5532831 () Bool)

(assert (=> b!4654209 m!5532831))

(assert (=> b!4654209 m!5532831))

(declare-fun m!5532833 () Bool)

(assert (=> b!4654209 m!5532833))

(declare-fun m!5532835 () Bool)

(assert (=> b!4654202 m!5532835))

(declare-fun m!5532837 () Bool)

(assert (=> b!4654202 m!5532837))

(assert (=> b!4654202 m!5532831))

(declare-fun m!5532839 () Bool)

(assert (=> b!4654202 m!5532839))

(assert (=> b!4654202 m!5532831))

(declare-fun m!5532841 () Bool)

(assert (=> b!4654202 m!5532841))

(declare-fun m!5532843 () Bool)

(assert (=> b!4654208 m!5532843))

(declare-fun m!5532845 () Bool)

(assert (=> b!4654205 m!5532845))

(assert (=> b!4654205 m!5530693))

(assert (=> b!4653149 d!1475960))

(assert (=> b!4653190 d!1475922))

(assert (=> b!4653190 d!1475554))

(declare-fun e!2903833 () Bool)

(declare-fun b!4654213 () Bool)

(declare-fun tp!1343242 () Bool)

(assert (=> b!4654213 (= e!2903833 (and tp_is_empty!29821 tp_is_empty!29823 tp!1343242))))

(assert (=> b!4653239 (= tp!1343238 e!2903833)))

(assert (= (and b!4653239 ((_ is Cons!51874) (t!359110 (t!359110 oldBucket!40)))) b!4654213))

(declare-fun tp!1343243 () Bool)

(declare-fun b!4654214 () Bool)

(declare-fun e!2903834 () Bool)

(assert (=> b!4654214 (= e!2903834 (and tp_is_empty!29821 tp_is_empty!29823 tp!1343243))))

(assert (=> b!4653240 (= tp!1343239 e!2903834)))

(assert (= (and b!4653240 ((_ is Cons!51874) (t!359110 (t!359110 newBucket!224)))) b!4654214))

(declare-fun b_lambda!173691 () Bool)

(assert (= b_lambda!173497 (or d!1475284 b_lambda!173691)))

(declare-fun bs!1064115 () Bool)

(declare-fun d!1475962 () Bool)

(assert (= bs!1064115 (and d!1475962 d!1475284)))

(assert (=> bs!1064115 (= (dynLambda!21578 lambda!198841 (h!58013 (toList!5196 lt!1816244))) (allKeysSameHash!1486 (_2!29782 (h!58013 (toList!5196 lt!1816244))) (_1!29782 (h!58013 (toList!5196 lt!1816244))) hashF!1389))))

(declare-fun m!5532847 () Bool)

(assert (=> bs!1064115 m!5532847))

(assert (=> b!4653725 d!1475962))

(declare-fun b_lambda!173693 () Bool)

(assert (= b_lambda!173403 (or d!1475248 b_lambda!173693)))

(declare-fun bs!1064116 () Bool)

(declare-fun d!1475964 () Bool)

(assert (= bs!1064116 (and d!1475964 d!1475248)))

(assert (=> bs!1064116 (= (dynLambda!21580 lambda!198827 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))) (contains!15019 lt!1816520 (_1!29781 (h!58012 (toList!5195 (ListMap!4534 Nil!51874))))))))

(declare-fun m!5532849 () Bool)

(assert (=> bs!1064116 m!5532849))

(assert (=> b!4653304 d!1475964))

(declare-fun b_lambda!173695 () Bool)

(assert (= b_lambda!173433 (or b!4653227 b_lambda!173695)))

(declare-fun bs!1064117 () Bool)

(declare-fun d!1475966 () Bool)

(assert (= bs!1064117 (and d!1475966 b!4653227)))

(assert (=> bs!1064117 (= (dynLambda!21580 lambda!198851 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))) (contains!15019 lt!1816657 (_1!29781 (h!58012 (toList!5195 (ListMap!4534 Nil!51874))))))))

(declare-fun m!5532851 () Bool)

(assert (=> bs!1064117 m!5532851))

(assert (=> b!4653438 d!1475966))

(declare-fun b_lambda!173697 () Bool)

(assert (= b_lambda!173437 (or d!1475200 b_lambda!173697)))

(declare-fun bs!1064118 () Bool)

(declare-fun d!1475968 () Bool)

(assert (= bs!1064118 (and d!1475968 d!1475200)))

(assert (=> bs!1064118 (= (dynLambda!21580 lambda!198821 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))) (contains!15019 lt!1816499 (_1!29781 (h!58012 (toList!5195 (ListMap!4534 Nil!51874))))))))

(declare-fun m!5532853 () Bool)

(assert (=> bs!1064118 m!5532853))

(assert (=> b!4653442 d!1475968))

(declare-fun b_lambda!173699 () Bool)

(assert (= b_lambda!173481 (or b!4653222 b_lambda!173699)))

(declare-fun bs!1064119 () Bool)

(declare-fun d!1475970 () Bool)

(assert (= bs!1064119 (and d!1475970 b!4653222)))

(assert (=> bs!1064119 (= (dynLambda!21580 lambda!198847 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))) (contains!15019 lt!1816633 (_1!29781 (h!58012 (toList!5195 (ListMap!4534 Nil!51874))))))))

(declare-fun m!5532855 () Bool)

(assert (=> bs!1064119 m!5532855))

(assert (=> b!4653687 d!1475970))

(declare-fun b_lambda!173701 () Bool)

(assert (= b_lambda!173585 (or b!4653222 b_lambda!173701)))

(declare-fun bs!1064120 () Bool)

(declare-fun d!1475972 () Bool)

(assert (= bs!1064120 (and d!1475972 b!4653222)))

(assert (=> bs!1064120 (= (dynLambda!21580 lambda!198847 (h!58012 (toList!5195 lt!1816636))) (contains!15019 lt!1816633 (_1!29781 (h!58012 (toList!5195 lt!1816636)))))))

(declare-fun m!5532857 () Bool)

(assert (=> bs!1064120 m!5532857))

(assert (=> b!4654109 d!1475972))

(declare-fun b_lambda!173703 () Bool)

(assert (= b_lambda!173583 (or b!4653222 b_lambda!173703)))

(declare-fun bs!1064121 () Bool)

(declare-fun d!1475974 () Bool)

(assert (= bs!1064121 (and d!1475974 b!4653222)))

(assert (=> bs!1064121 (= (dynLambda!21580 lambda!198847 (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (contains!15019 lt!1816633 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(assert (=> bs!1064121 m!5530539))

(assert (=> b!4654107 d!1475974))

(declare-fun b_lambda!173705 () Bool)

(assert (= b_lambda!173541 (or b!4653227 b_lambda!173705)))

(declare-fun bs!1064122 () Bool)

(declare-fun d!1475976 () Bool)

(assert (= bs!1064122 (and d!1475976 b!4653227)))

(assert (=> bs!1064122 (= (dynLambda!21580 lambda!198851 (h!58012 oldBucket!40)) (contains!15019 lt!1816657 (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> bs!1064122 m!5530579))

(assert (=> d!1475706 d!1475976))

(declare-fun b_lambda!173707 () Bool)

(assert (= b_lambda!173503 (or b!4653105 b_lambda!173707)))

(declare-fun bs!1064123 () Bool)

(declare-fun d!1475978 () Bool)

(assert (= bs!1064123 (and d!1475978 b!4653105)))

(assert (=> bs!1064123 (= (dynLambda!21580 lambda!198820 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))) (contains!15019 lt!1816505 (_1!29781 (h!58012 (toList!5195 (ListMap!4534 Nil!51874))))))))

(declare-fun m!5532859 () Bool)

(assert (=> bs!1064123 m!5532859))

(assert (=> b!4653730 d!1475978))

(declare-fun b_lambda!173709 () Bool)

(assert (= b_lambda!173521 (or d!1475262 b_lambda!173709)))

(declare-fun bs!1064124 () Bool)

(declare-fun d!1475980 () Bool)

(assert (= bs!1064124 (and d!1475980 d!1475262)))

(assert (=> bs!1064124 (= (dynLambda!21578 lambda!198830 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875))) (noDuplicateKeys!1632 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 oldBucket!40) Nil!51875)))))))

(assert (=> bs!1064124 m!5532265))

(assert (=> b!4653874 d!1475980))

(declare-fun b_lambda!173711 () Bool)

(assert (= b_lambda!173533 (or b!4653112 b_lambda!173711)))

(declare-fun bs!1064125 () Bool)

(declare-fun d!1475982 () Bool)

(assert (= bs!1064125 (and d!1475982 b!4653112)))

(assert (=> bs!1064125 (= (dynLambda!21580 lambda!198826 (h!58012 (toList!5195 lt!1816529))) (contains!15019 lt!1816526 (_1!29781 (h!58012 (toList!5195 lt!1816529)))))))

(declare-fun m!5532861 () Bool)

(assert (=> bs!1064125 m!5532861))

(assert (=> b!4653908 d!1475982))

(declare-fun b_lambda!173713 () Bool)

(assert (= b_lambda!173509 (or b!4653105 b_lambda!173713)))

(declare-fun bs!1064126 () Bool)

(declare-fun d!1475984 () Bool)

(assert (= bs!1064126 (and d!1475984 b!4653105)))

(assert (=> bs!1064126 (= (dynLambda!21580 lambda!198820 (h!58012 (toList!5195 lt!1816508))) (contains!15019 lt!1816505 (_1!29781 (h!58012 (toList!5195 lt!1816508)))))))

(declare-fun m!5532863 () Bool)

(assert (=> bs!1064126 m!5532863))

(assert (=> b!4653745 d!1475984))

(declare-fun b_lambda!173715 () Bool)

(assert (= b_lambda!173515 (or d!1475308 b_lambda!173715)))

(declare-fun bs!1064127 () Bool)

(declare-fun d!1475986 () Bool)

(assert (= bs!1064127 (and d!1475986 d!1475308)))

(assert (=> bs!1064127 (= (dynLambda!21580 lambda!198852 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))) (contains!15019 lt!1816651 (_1!29781 (h!58012 (toList!5195 (ListMap!4534 Nil!51874))))))))

(declare-fun m!5532865 () Bool)

(assert (=> bs!1064127 m!5532865))

(assert (=> b!4653800 d!1475986))

(declare-fun b_lambda!173717 () Bool)

(assert (= b_lambda!173445 (or d!1475274 b_lambda!173717)))

(declare-fun bs!1064128 () Bool)

(declare-fun d!1475988 () Bool)

(assert (= bs!1064128 (and d!1475988 d!1475274)))

(assert (=> bs!1064128 (= (dynLambda!21578 lambda!198838 (h!58013 Nil!51875)) (noDuplicateKeys!1632 (_2!29782 (h!58013 Nil!51875))))))

(declare-fun m!5532867 () Bool)

(assert (=> bs!1064128 m!5532867))

(assert (=> b!4653459 d!1475988))

(declare-fun b_lambda!173719 () Bool)

(assert (= b_lambda!173461 (or b!4653178 b_lambda!173719)))

(declare-fun bs!1064129 () Bool)

(declare-fun d!1475990 () Bool)

(assert (= bs!1064129 (and d!1475990 b!4653178)))

(assert (=> bs!1064129 (= (dynLambda!21580 lambda!198836 (h!58012 oldBucket!40)) (contains!15019 lt!1816578 (_1!29781 (h!58012 oldBucket!40))))))

(assert (=> bs!1064129 m!5530437))

(assert (=> b!4653616 d!1475990))

(declare-fun b_lambda!173721 () Bool)

(assert (= b_lambda!173519 (or d!1475288 b_lambda!173721)))

(declare-fun bs!1064130 () Bool)

(declare-fun d!1475992 () Bool)

(assert (= bs!1064130 (and d!1475992 d!1475288)))

(assert (=> bs!1064130 (= (dynLambda!21578 lambda!198842 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875))) (noDuplicateKeys!1632 (_2!29782 (h!58013 (Cons!51875 (tuple2!52977 hash!414 newBucket!224) Nil!51875)))))))

(assert (=> bs!1064130 m!5532375))

(assert (=> b!4653872 d!1475992))

(declare-fun b_lambda!173723 () Bool)

(assert (= b_lambda!173439 (or d!1475308 b_lambda!173723)))

(declare-fun bs!1064131 () Bool)

(declare-fun d!1475994 () Bool)

(assert (= bs!1064131 (and d!1475994 d!1475308)))

(assert (=> bs!1064131 (= (dynLambda!21580 lambda!198852 (h!58012 oldBucket!40)) (contains!15019 lt!1816651 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun m!5532869 () Bool)

(assert (=> bs!1064131 m!5532869))

(assert (=> b!4653444 d!1475994))

(declare-fun b_lambda!173725 () Bool)

(assert (= b_lambda!173417 (or d!1475248 b_lambda!173725)))

(declare-fun bs!1064132 () Bool)

(declare-fun d!1475996 () Bool)

(assert (= bs!1064132 (and d!1475996 d!1475248)))

(assert (=> bs!1064132 (= (dynLambda!21580 lambda!198827 (h!58012 lt!1816247)) (contains!15019 lt!1816520 (_1!29781 (h!58012 lt!1816247))))))

(declare-fun m!5532871 () Bool)

(assert (=> bs!1064132 m!5532871))

(assert (=> b!4653391 d!1475996))

(declare-fun b_lambda!173727 () Bool)

(assert (= b_lambda!173459 (or b!4653178 b_lambda!173727)))

(assert (=> d!1475492 d!1475990))

(declare-fun b_lambda!173729 () Bool)

(assert (= b_lambda!173429 (or d!1475272 b_lambda!173729)))

(declare-fun bs!1064133 () Bool)

(declare-fun d!1475998 () Bool)

(assert (= bs!1064133 (and d!1475998 d!1475272)))

(assert (=> bs!1064133 (= (dynLambda!21580 lambda!198837 (h!58012 (toList!5195 lt!1816243))) (contains!15019 lt!1816572 (_1!29781 (h!58012 (toList!5195 lt!1816243)))))))

(declare-fun m!5532873 () Bool)

(assert (=> bs!1064133 m!5532873))

(assert (=> b!4653434 d!1475998))

(declare-fun b_lambda!173731 () Bool)

(assert (= b_lambda!173529 (or b!4653112 b_lambda!173731)))

(declare-fun bs!1064134 () Bool)

(declare-fun d!1476000 () Bool)

(assert (= bs!1064134 (and d!1476000 b!4653112)))

(assert (=> bs!1064134 (= (dynLambda!21580 lambda!198826 (h!58012 (t!359110 lt!1816247))) (contains!15019 lt!1816526 (_1!29781 (h!58012 (t!359110 lt!1816247)))))))

(declare-fun m!5532875 () Bool)

(assert (=> bs!1064134 m!5532875))

(assert (=> b!4653895 d!1476000))

(declare-fun b_lambda!173733 () Bool)

(assert (= b_lambda!173447 (or b!4653112 b_lambda!173733)))

(declare-fun bs!1064135 () Bool)

(declare-fun d!1476002 () Bool)

(assert (= bs!1064135 (and d!1476002 b!4653112)))

(assert (=> bs!1064135 (= (dynLambda!21580 lambda!198826 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))) (contains!15019 lt!1816526 (_1!29781 (h!58012 (toList!5195 (ListMap!4534 Nil!51874))))))))

(declare-fun m!5532877 () Bool)

(assert (=> bs!1064135 m!5532877))

(assert (=> b!4653461 d!1476002))

(declare-fun b_lambda!173735 () Bool)

(assert (= b_lambda!173687 (or b!4652954 b_lambda!173735)))

(declare-fun bs!1064136 () Bool)

(declare-fun d!1476004 () Bool)

(assert (= bs!1064136 (and d!1476004 b!4652954)))

(assert (=> bs!1064136 (= (dynLambda!21578 lambda!198730 (h!58013 (t!359111 lt!1816245))) (noDuplicateKeys!1632 (_2!29782 (h!58013 (t!359111 lt!1816245)))))))

(declare-fun m!5532879 () Bool)

(assert (=> bs!1064136 m!5532879))

(assert (=> b!4654180 d!1476004))

(declare-fun b_lambda!173737 () Bool)

(assert (= b_lambda!173507 (or b!4653105 b_lambda!173737)))

(declare-fun bs!1064137 () Bool)

(declare-fun d!1476006 () Bool)

(assert (= bs!1064137 (and d!1476006 b!4653105)))

(assert (=> bs!1064137 (= (dynLambda!21580 lambda!198820 (h!58012 newBucket!224)) (contains!15019 lt!1816505 (_1!29781 (h!58012 newBucket!224))))))

(assert (=> bs!1064137 m!5530279))

(assert (=> b!4653743 d!1476006))

(declare-fun b_lambda!173739 () Bool)

(assert (= b_lambda!173545 (or b!4653227 b_lambda!173739)))

(declare-fun bs!1064138 () Bool)

(declare-fun d!1476008 () Bool)

(assert (= bs!1064138 (and d!1476008 b!4653227)))

(assert (=> bs!1064138 (= (dynLambda!21580 lambda!198851 (h!58012 (t!359110 oldBucket!40))) (contains!15019 lt!1816657 (_1!29781 (h!58012 (t!359110 oldBucket!40)))))))

(declare-fun m!5532881 () Bool)

(assert (=> bs!1064138 m!5532881))

(assert (=> b!4653956 d!1476008))

(declare-fun b_lambda!173741 () Bool)

(assert (= b_lambda!173587 (or b!4653222 b_lambda!173741)))

(declare-fun bs!1064139 () Bool)

(declare-fun d!1476010 () Bool)

(assert (= bs!1064139 (and d!1476010 b!4653222)))

(assert (=> bs!1064139 (= (dynLambda!21580 lambda!198847 (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247)))) (contains!15019 lt!1816633 (_1!29781 (h!58012 (t!359110 (Cons!51874 lt!1816246 lt!1816247))))))))

(declare-fun m!5532883 () Bool)

(assert (=> bs!1064139 m!5532883))

(assert (=> b!4654111 d!1476010))

(declare-fun b_lambda!173743 () Bool)

(assert (= b_lambda!173489 (or d!1475200 b_lambda!173743)))

(declare-fun bs!1064140 () Bool)

(declare-fun d!1476012 () Bool)

(assert (= bs!1064140 (and d!1476012 d!1475200)))

(assert (=> bs!1064140 (= (dynLambda!21580 lambda!198821 (h!58012 newBucket!224)) (contains!15019 lt!1816499 (_1!29781 (h!58012 newBucket!224))))))

(declare-fun m!5532885 () Bool)

(assert (=> bs!1064140 m!5532885))

(assert (=> b!4653715 d!1476012))

(declare-fun b_lambda!173745 () Bool)

(assert (= b_lambda!173543 (or b!4653227 b_lambda!173745)))

(declare-fun bs!1064141 () Bool)

(declare-fun d!1476014 () Bool)

(assert (= bs!1064141 (and d!1476014 b!4653227)))

(assert (=> bs!1064141 (= (dynLambda!21580 lambda!198851 (h!58012 (toList!5195 lt!1816660))) (contains!15019 lt!1816657 (_1!29781 (h!58012 (toList!5195 lt!1816660)))))))

(declare-fun m!5532887 () Bool)

(assert (=> bs!1064141 m!5532887))

(assert (=> b!4653943 d!1476014))

(declare-fun b_lambda!173747 () Bool)

(assert (= b_lambda!173513 (or b!4653105 b_lambda!173747)))

(declare-fun bs!1064142 () Bool)

(declare-fun d!1476016 () Bool)

(assert (= bs!1064142 (and d!1476016 b!4653105)))

(assert (=> bs!1064142 (= (dynLambda!21580 lambda!198820 (h!58012 (t!359110 newBucket!224))) (contains!15019 lt!1816505 (_1!29781 (h!58012 (t!359110 newBucket!224)))))))

(declare-fun m!5532889 () Bool)

(assert (=> bs!1064142 m!5532889))

(assert (=> b!4653768 d!1476016))

(declare-fun b_lambda!173749 () Bool)

(assert (= b_lambda!173501 (or b!4653105 b_lambda!173749)))

(assert (=> d!1475578 d!1476006))

(declare-fun b_lambda!173751 () Bool)

(assert (= b_lambda!173499 (or d!1475272 b_lambda!173751)))

(declare-fun bs!1064143 () Bool)

(declare-fun d!1476018 () Bool)

(assert (= bs!1064143 (and d!1476018 d!1475272)))

(assert (=> bs!1064143 (= (dynLambda!21580 lambda!198837 (h!58012 oldBucket!40)) (contains!15019 lt!1816572 (_1!29781 (h!58012 oldBucket!40))))))

(declare-fun m!5532891 () Bool)

(assert (=> bs!1064143 m!5532891))

(assert (=> b!4653727 d!1476018))

(declare-fun b_lambda!173753 () Bool)

(assert (= b_lambda!173493 (or d!1475300 b_lambda!173753)))

(declare-fun bs!1064144 () Bool)

(declare-fun d!1476020 () Bool)

(assert (= bs!1064144 (and d!1476020 d!1475300)))

(assert (=> bs!1064144 (= (dynLambda!21580 lambda!198848 (h!58012 (Cons!51874 lt!1816246 lt!1816247))) (contains!15019 lt!1816627 (_1!29781 (h!58012 (Cons!51874 lt!1816246 lt!1816247)))))))

(declare-fun m!5532893 () Bool)

(assert (=> bs!1064144 m!5532893))

(assert (=> b!4653719 d!1476020))

(declare-fun b_lambda!173755 () Bool)

(assert (= b_lambda!173537 (or b!4653112 b_lambda!173755)))

(declare-fun bs!1064145 () Bool)

(declare-fun d!1476022 () Bool)

(assert (= bs!1064145 (and d!1476022 b!4653112)))

(assert (=> bs!1064145 (= (dynLambda!21580 lambda!198826 (h!58012 lt!1816247)) (contains!15019 lt!1816526 (_1!29781 (h!58012 lt!1816247))))))

(assert (=> bs!1064145 m!5530357))

(assert (=> d!1475698 d!1476022))

(declare-fun b_lambda!173757 () Bool)

(assert (= b_lambda!173547 (or b!4653227 b_lambda!173757)))

(assert (=> b!4653958 d!1475976))

(declare-fun b_lambda!173759 () Bool)

(assert (= b_lambda!173407 (or d!1475270 b_lambda!173759)))

(declare-fun bs!1064146 () Bool)

(declare-fun d!1476024 () Bool)

(assert (= bs!1064146 (and d!1476024 d!1475270)))

(assert (=> bs!1064146 (= (dynLambda!21580 lambda!198833 (h!58012 oldBucket!40)) (= (hash!3763 hashF!1389 (_1!29781 (h!58012 oldBucket!40))) hash!414))))

(declare-fun m!5532895 () Bool)

(assert (=> bs!1064146 m!5532895))

(assert (=> b!4653379 d!1476024))

(declare-fun b_lambda!173761 () Bool)

(assert (= b_lambda!173539 (or d!1475300 b_lambda!173761)))

(declare-fun bs!1064147 () Bool)

(declare-fun d!1476026 () Bool)

(assert (= bs!1064147 (and d!1476026 d!1475300)))

(assert (=> bs!1064147 (= (dynLambda!21580 lambda!198848 (h!58012 (toList!5195 (ListMap!4534 Nil!51874)))) (contains!15019 lt!1816627 (_1!29781 (h!58012 (toList!5195 (ListMap!4534 Nil!51874))))))))

(declare-fun m!5532897 () Bool)

(assert (=> bs!1064147 m!5532897))

(assert (=> b!4653931 d!1476026))

(declare-fun b_lambda!173763 () Bool)

(assert (= b_lambda!173479 (or b!4653178 b_lambda!173763)))

(declare-fun bs!1064148 () Bool)

(declare-fun d!1476028 () Bool)

(assert (= bs!1064148 (and d!1476028 b!4653178)))

(assert (=> bs!1064148 (= (dynLambda!21580 lambda!198836 (h!58012 (toList!5195 lt!1816243))) (contains!15019 lt!1816578 (_1!29781 (h!58012 (toList!5195 lt!1816243)))))))

(declare-fun m!5532899 () Bool)

(assert (=> bs!1064148 m!5532899))

(assert (=> b!4653676 d!1476028))

(declare-fun b_lambda!173765 () Bool)

(assert (= b_lambda!173413 (or d!1475292 b_lambda!173765)))

(declare-fun bs!1064149 () Bool)

(declare-fun d!1476030 () Bool)

(assert (= bs!1064149 (and d!1476030 d!1475292)))

(assert (=> bs!1064149 (= (dynLambda!21580 lambda!198844 (h!58012 newBucket!224)) (= (hash!3763 hashF!1389 (_1!29781 (h!58012 newBucket!224))) hash!414))))

(declare-fun m!5532901 () Bool)

(assert (=> bs!1064149 m!5532901))

(assert (=> b!4653385 d!1476030))

(declare-fun b_lambda!173767 () Bool)

(assert (= b_lambda!173535 (or b!4653112 b_lambda!173767)))

(assert (=> b!4653924 d!1476022))

(declare-fun b_lambda!173769 () Bool)

(assert (= b_lambda!173411 (or d!1475290 b_lambda!173769)))

(declare-fun bs!1064150 () Bool)

(declare-fun d!1476032 () Bool)

(assert (= bs!1064150 (and d!1476032 d!1475290)))

(assert (=> bs!1064150 (= (dynLambda!21578 lambda!198843 (h!58013 lt!1816245)) (noDuplicateKeys!1632 (_2!29782 (h!58013 lt!1816245))))))

(assert (=> bs!1064150 m!5530593))

(assert (=> b!4653383 d!1476032))

(declare-fun b_lambda!173771 () Bool)

(assert (= b_lambda!173477 (or b!4653178 b_lambda!173771)))

(declare-fun bs!1064151 () Bool)

(declare-fun d!1476034 () Bool)

(assert (= bs!1064151 (and d!1476034 b!4653178)))

(assert (=> bs!1064151 (= (dynLambda!21580 lambda!198836 (h!58012 (toList!5195 lt!1816581))) (contains!15019 lt!1816578 (_1!29781 (h!58012 (toList!5195 lt!1816581)))))))

(declare-fun m!5532903 () Bool)

(assert (=> bs!1064151 m!5532903))

(assert (=> b!4653663 d!1476034))

(declare-fun b_lambda!173773 () Bool)

(assert (= b_lambda!173463 (or b!4653178 b_lambda!173773)))

(declare-fun bs!1064152 () Bool)

(declare-fun d!1476036 () Bool)

(assert (= bs!1064152 (and d!1476036 b!4653178)))

(assert (=> bs!1064152 (= (dynLambda!21580 lambda!198836 (h!58012 (t!359110 oldBucket!40))) (contains!15019 lt!1816578 (_1!29781 (h!58012 (t!359110 oldBucket!40)))))))

(declare-fun m!5532905 () Bool)

(assert (=> bs!1064152 m!5532905))

(assert (=> b!4653620 d!1476036))

(declare-fun b_lambda!173775 () Bool)

(assert (= b_lambda!173581 (or b!4653222 b_lambda!173775)))

(assert (=> d!1475826 d!1475974))

(check-sat (not b!4653905) (not b!4653880) (not b!4653384) (not b!4654017) (not d!1475658) (not d!1475876) (not bs!1064115) (not b!4653390) (not b!4653463) (not d!1475960) (not bs!1064117) (not bs!1064151) (not b!4654114) (not bm!325220) (not b!4653778) (not bs!1064146) (not b_lambda!173747) (not b!4653807) (not d!1475824) (not b!4653812) (not d!1475632) (not d!1475826) (not b_lambda!173721) (not b!4653804) (not bm!325198) (not b!4653467) (not b!4653626) (not b!4653959) tp_is_empty!29823 (not b!4653443) (not bs!1064126) (not b!4653683) (not b!4653621) (not bs!1064133) (not bm!325210) (not b!4653711) (not b_lambda!173725) (not d!1475360) (not b_lambda!173565) (not b!4653305) (not bm!325217) (not d!1475662) (not b!4653821) (not bm!325197) (not b_lambda!173719) (not bs!1064130) (not bm!325211) (not b!4653738) (not b!4653925) (not b!4653899) (not b!4653432) (not b_lambda!173707) (not bs!1064147) (not d!1475722) (not b!4653736) (not bm!325200) (not b!4654105) (not b!4653879) (not bm!325157) (not bm!325181) (not bm!325229) (not b!4653596) (not bm!325235) (not b!4654104) (not b!4654170) (not b!4653955) (not b!4653773) (not d!1475364) (not b!4653947) (not b_lambda!173737) (not b!4653940) (not b!4653482) (not b!4653927) (not bs!1064148) (not b!4653358) (not d!1475456) (not b!4653598) (not d!1475450) (not d!1475536) (not d!1475530) (not b_lambda!173699) (not b_lambda!173733) (not b!4653920) (not b_lambda!173727) (not d!1475374) (not bm!325230) (not b!4653963) (not d!1475700) (not bm!325236) (not b!4653953) (not b_lambda!173701) (not bs!1064141) (not b!4653951) (not b!4653411) (not d!1475712) (not b!4653774) (not bm!325241) (not b!4653599) (not b!4653677) tp_is_empty!29821 (not b!4653451) (not bm!325201) (not d!1475854) (not b!4653831) (not b!4653823) (not b!4654041) (not b!4653688) (not b!4653726) (not b!4653876) (not d!1475624) (not b!4653623) (not b!4653945) (not b!4653386) (not d!1475774) (not b!4653729) (not b!4653934) (not b!4653471) (not b!4653447) (not b!4653787) (not b_lambda!173711) (not b!4653923) (not b!4653737) (not b_lambda!173729) (not bs!1064150) (not bs!1064120) (not b!4653591) (not b_lambda!173767) (not b!4654138) (not d!1475834) (not b!4654162) (not b!4653867) (not b!4654020) (not d!1475566) (not bs!1064127) (not b!4653299) (not b!4653952) (not b!4653769) (not bs!1064119) (not b_lambda!173717) (not d!1475532) (not b!4654099) (not d!1475384) (not d!1475600) (not d!1475714) (not b_lambda!173705) (not b!4653766) (not bs!1064139) (not b!4653622) (not bm!325183) (not b!4653942) (not d!1475404) (not b!4654214) (not bm!325155) (not b!4653939) (not d!1475666) (not bm!325224) (not b_lambda!173431) (not b_lambda!173599) (not b!4654179) (not b!4654121) (not b_lambda!173773) (not b!4653928) (not bm!325194) (not b_lambda!173435) (not b!4654116) (not bm!325237) (not b_lambda!173739) (not b!4653664) (not b!4653948) (not bm!325203) (not d!1475708) (not b_lambda!173763) (not b!4654122) (not d!1475492) (not b!4653728) (not b!4653469) (not bs!1064144) (not d!1475760) (not b!4654117) (not d!1475630) (not bm!325218) (not b!4653964) (not b!4654113) (not b_lambda!173735) (not b!4653926) (not d!1475604) (not b!4653836) (not bs!1064129) (not b_lambda!173419) (not b!4653810) (not b!4654123) (not b!4654202) (not b!4653678) (not b!4653767) (not b!4653733) (not b!4653932) (not d!1475612) (not b_lambda!173693) (not b!4653776) (not b!4653341) (not b!4653362) (not b!4653929) (not d!1475372) (not b!4653930) (not b!4653684) (not b!4654213) (not bs!1064131) (not bm!325156) (not bs!1064136) (not d!1475716) (not b!4654039) (not b!4654096) (not b_lambda!173761) (not b!4653732) (not bs!1064125) (not b!4654208) (not bs!1064142) (not b!4653722) (not b!4653625) (not d!1475792) (not b!4653871) (not d!1475626) (not b!4653731) (not b_lambda!173691) (not d!1475542) (not b!4653595) (not b_lambda!173715) (not b!4654103) (not bs!1064143) (not b_lambda!173697) (not b!4653437) (not d!1475922) (not d!1475840) (not b!4654209) (not b!4653673) (not b!4654042) (not d!1475454) (not b!4653669) (not d!1475368) (not b!4653873) (not bm!325196) (not b!4653395) (not b!4653957) (not d!1475790) (not b!4653865) (not b!4653396) (not b!4653674) (not b_lambda!173391) (not bm!325208) (not b!4653340) (not bs!1064132) (not b!4653408) (not b!4653679) (not bs!1064123) (not b!4653468) (not b_lambda!173709) (not b!4653752) (not d!1475442) (not b!4653488) (not b!4653671) (not b!4653592) (not bm!325223) (not b!4653670) (not b_lambda!173689) (not d!1475606) (not b!4653464) (not b!4654101) (not d!1475794) (not b!4654106) (not b!4653830) (not b_lambda!173443) (not b!4653944) (not d!1475686) (not b!4653665) (not b!4653311) (not b!4653466) (not d!1475696) (not b!4653342) (not b_lambda!173745) (not b!4654095) (not b!4653918) (not bs!1064135) (not b!4654203) (not bs!1064128) (not b!4653445) (not bm!325216) (not b!4653753) (not b_lambda!173775) (not b!4653716) (not b!4653458) (not b!4653750) (not bs!1064138) (not b!4653686) (not b!4653292) (not b!4654205) (not b_lambda!173769) (not b!4653869) (not b!4653360) (not b!4653735) (not d!1475692) (not b!4654108) (not b!4653933) (not b!4653617) (not b!4654118) (not d!1475608) (not b!4654100) (not b_lambda!173591) (not b!4654019) (not b!4653877) (not b!4653666) (not b!4653863) (not b!4653412) (not bs!1064134) (not bs!1064118) (not b!4653937) (not bm!325209) (not b!4653380) (not bs!1064140) (not d!1475698) (not b_lambda!173713) (not b!4654183) (not b_lambda!173749) (not b!4653814) (not b!4653904) (not b!4653441) (not b!4654141) (not b!4653835) (not b!4654119) (not bs!1064137) (not b!4653921) (not b!4653392) (not d!1475776) (not b!4653946) (not b!4654110) (not b!4654112) (not d!1475418) (not b!4653833) (not b_lambda!173765) (not b!4654064) (not bm!325187) (not b!4653590) (not b!4653900) (not d!1475578) (not b!4653382) (not d!1475838) (not b!4653919) (not b!4653875) (not b_lambda!173405) (not bs!1064124) (not d!1475358) (not b_lambda!173755) (not b_lambda!173743) (not b_lambda!173731) (not b!4653744) (not b!4653746) (not bm!325195) (not b!4653902) (not d!1475502) (not b!4654023) (not b!4653460) (not b!4653832) (not b!4653398) (not b!4653806) (not bm!325186) (not b_lambda!173753) (not b!4654034) (not bm!325219) (not b!4653681) (not d!1475590) (not b!4653771) (not b_lambda!173409) (not b!4653690) (not bs!1064116) (not b!4653801) (not b!4653489) (not b!4654067) (not b!4653409) (not b!4653593) (not d!1475842) (not b!4653811) (not b!4653916) (not d!1475836) (not d!1475494) (not b!4653915) (not b_lambda!173723) (not bm!325242) (not b!4653378) (not b!4653950) (not bs!1064152) (not bm!325162) (not bs!1064145) (not d!1475822) (not b_lambda!173741) (not b!4654038) (not b!4653720) (not b!4653462) (not b!4654181) (not d!1475444) (not b!4653359) (not b!4653740) (not b!4653809) (not b_lambda!173703) (not b!4653721) (not b!4654061) (not b!4653605) (not d!1475354) (not b!4653839) (not b_lambda!173771) (not b!4653824) (not b!4653775) (not b!4653938) (not d!1475440) (not b!4653770) (not b_lambda!173759) (not b!4653909) (not b!4654022) (not b!4653682) (not b!4654098) (not b!4653907) (not bs!1064149) (not b!4653439) (not b!4653749) (not bs!1064121) (not d!1475770) (not d!1475596) (not b!4653903) (not bs!1064122) (not b!4653356) (not b!4653960) (not b!4653838) (not d!1475582) (not d!1475706) (not bm!325185) (not b!4653961) (not b!4654066) (not bm!325193) (not b!4653435) (not b_lambda!173751) (not bm!325215) (not bm!325199) (not b!4653896) (not b!4653668) (not b!4654063) (not b_lambda!173695) (not b!4653293) (not bm!325231) (not bm!325225) (not b!4653935) (not b!4653675) (not b_lambda!173757) (not b!4654037))
(check-sat)
