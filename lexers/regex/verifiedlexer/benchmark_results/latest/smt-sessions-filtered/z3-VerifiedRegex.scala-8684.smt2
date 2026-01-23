; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462380 () Bool)

(assert start!462380)

(declare-fun b!4619234 () Bool)

(declare-fun e!2881319 () Bool)

(declare-fun e!2881320 () Bool)

(assert (=> b!4619234 (= e!2881319 e!2881320)))

(declare-fun res!1936004 () Bool)

(assert (=> b!4619234 (=> (not res!1936004) (not e!2881320))))

(declare-fun lt!1775077 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4619234 (= res!1936004 (= lt!1775077 hash!414))))

(declare-datatypes ((Hashable!5867 0))(
  ( (HashableExt!5866 (__x!31570 Int)) )
))
(declare-fun hashF!1389 () Hashable!5867)

(declare-datatypes ((K!12825 0))(
  ( (K!12826 (val!18531 Int)) )
))
(declare-fun key!4968 () K!12825)

(declare-fun hash!3438 (Hashable!5867 K!12825) (_ BitVec 64))

(assert (=> b!4619234 (= lt!1775077 (hash!3438 hashF!1389 key!4968))))

(declare-fun b!4619235 () Bool)

(declare-fun e!2881318 () Bool)

(declare-fun e!2881317 () Bool)

(assert (=> b!4619235 (= e!2881318 e!2881317)))

(declare-fun res!1935990 () Bool)

(assert (=> b!4619235 (=> res!1935990 e!2881317)))

(declare-datatypes ((V!13071 0))(
  ( (V!13072 (val!18532 Int)) )
))
(declare-datatypes ((tuple2!52326 0))(
  ( (tuple2!52327 (_1!29457 K!12825) (_2!29457 V!13071)) )
))
(declare-datatypes ((List!51564 0))(
  ( (Nil!51440) (Cons!51440 (h!57468 tuple2!52326) (t!358576 List!51564)) )
))
(declare-fun oldBucket!40 () List!51564)

(declare-fun containsKey!2366 (List!51564 K!12825) Bool)

(assert (=> b!4619235 (= res!1935990 (not (containsKey!2366 (t!358576 oldBucket!40) key!4968)))))

(assert (=> b!4619235 (containsKey!2366 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!110772 0))(
  ( (Unit!110773) )
))
(declare-fun lt!1775079 () Unit!110772)

(declare-fun lemmaGetPairDefinedThenContainsKey!16 (List!51564 K!12825 Hashable!5867) Unit!110772)

(assert (=> b!4619235 (= lt!1775079 (lemmaGetPairDefinedThenContainsKey!16 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1775078 () List!51564)

(declare-datatypes ((Option!11508 0))(
  ( (None!11507) (Some!11507 (v!45589 tuple2!52326)) )
))
(declare-fun isDefined!8773 (Option!11508) Bool)

(declare-fun getPair!262 (List!51564 K!12825) Option!11508)

(assert (=> b!4619235 (isDefined!8773 (getPair!262 lt!1775078 key!4968))))

(declare-fun lambda!190320 () Int)

(declare-datatypes ((tuple2!52328 0))(
  ( (tuple2!52329 (_1!29458 (_ BitVec 64)) (_2!29458 List!51564)) )
))
(declare-fun lt!1775081 () tuple2!52328)

(declare-fun lt!1775080 () Unit!110772)

(declare-datatypes ((List!51565 0))(
  ( (Nil!51441) (Cons!51441 (h!57469 tuple2!52328) (t!358577 List!51565)) )
))
(declare-fun lt!1775073 () List!51565)

(declare-fun forallContained!2992 (List!51565 Int tuple2!52328) Unit!110772)

(assert (=> b!4619235 (= lt!1775080 (forallContained!2992 lt!1775073 lambda!190320 lt!1775081))))

(declare-fun contains!14425 (List!51565 tuple2!52328) Bool)

(assert (=> b!4619235 (contains!14425 lt!1775073 lt!1775081)))

(assert (=> b!4619235 (= lt!1775081 (tuple2!52329 lt!1775077 lt!1775078))))

(declare-fun lt!1775084 () Unit!110772)

(declare-datatypes ((ListLongMap!3495 0))(
  ( (ListLongMap!3496 (toList!4905 List!51565)) )
))
(declare-fun lt!1775083 () ListLongMap!3495)

(declare-fun lemmaGetValueImpliesTupleContained!67 (ListLongMap!3495 (_ BitVec 64) List!51564) Unit!110772)

(assert (=> b!4619235 (= lt!1775084 (lemmaGetValueImpliesTupleContained!67 lt!1775083 lt!1775077 lt!1775078))))

(declare-fun apply!12135 (ListLongMap!3495 (_ BitVec 64)) List!51564)

(assert (=> b!4619235 (= lt!1775078 (apply!12135 lt!1775083 lt!1775077))))

(declare-fun contains!14426 (ListLongMap!3495 (_ BitVec 64)) Bool)

(assert (=> b!4619235 (contains!14426 lt!1775083 lt!1775077)))

(declare-fun lt!1775072 () Unit!110772)

(declare-fun lemmaInGenMapThenLongMapContainsHash!468 (ListLongMap!3495 K!12825 Hashable!5867) Unit!110772)

(assert (=> b!4619235 (= lt!1775072 (lemmaInGenMapThenLongMapContainsHash!468 lt!1775083 key!4968 hashF!1389))))

(declare-fun lt!1775075 () Unit!110772)

(declare-fun lemmaInGenMapThenGetPairDefined!58 (ListLongMap!3495 K!12825 Hashable!5867) Unit!110772)

(assert (=> b!4619235 (= lt!1775075 (lemmaInGenMapThenGetPairDefined!58 lt!1775083 key!4968 hashF!1389))))

(assert (=> b!4619235 (= lt!1775083 (ListLongMap!3496 lt!1775073))))

(declare-fun b!4619236 () Bool)

(declare-fun res!1935992 () Bool)

(declare-fun e!2881325 () Bool)

(assert (=> b!4619236 (=> res!1935992 e!2881325)))

(declare-fun lt!1775076 () List!51564)

(declare-fun removePairForKey!1093 (List!51564 K!12825) List!51564)

(assert (=> b!4619236 (= res!1935992 (not (= (removePairForKey!1093 (t!358576 oldBucket!40) key!4968) lt!1775076)))))

(declare-fun b!4619237 () Bool)

(declare-fun e!2881322 () Bool)

(assert (=> b!4619237 (= e!2881322 true)))

(declare-fun b!4619238 () Bool)

(assert (=> b!4619238 (= e!2881325 e!2881322)))

(declare-fun res!1935991 () Bool)

(assert (=> b!4619238 (=> res!1935991 e!2881322)))

(declare-fun lt!1775082 () List!51565)

(declare-fun forall!10776 (List!51565 Int) Bool)

(assert (=> b!4619238 (= res!1935991 (not (forall!10776 lt!1775082 lambda!190320)))))

(assert (=> b!4619238 (= lt!1775082 (Cons!51441 (tuple2!52329 hash!414 (t!358576 oldBucket!40)) Nil!51441))))

(declare-fun b!4619239 () Bool)

(declare-fun res!1935998 () Bool)

(assert (=> b!4619239 (=> res!1935998 e!2881322)))

(declare-fun allKeysSameHashInMap!1506 (ListLongMap!3495 Hashable!5867) Bool)

(assert (=> b!4619239 (= res!1935998 (not (allKeysSameHashInMap!1506 (ListLongMap!3496 lt!1775082) hashF!1389)))))

(declare-fun b!4619240 () Bool)

(declare-fun res!1935999 () Bool)

(assert (=> b!4619240 (=> (not res!1935999) (not e!2881320))))

(declare-fun newBucket!224 () List!51564)

(declare-fun allKeysSameHash!1324 (List!51564 (_ BitVec 64) Hashable!5867) Bool)

(assert (=> b!4619240 (= res!1935999 (allKeysSameHash!1324 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1935994 () Bool)

(declare-fun e!2881323 () Bool)

(assert (=> start!462380 (=> (not res!1935994) (not e!2881323))))

(declare-fun noDuplicateKeys!1470 (List!51564) Bool)

(assert (=> start!462380 (= res!1935994 (noDuplicateKeys!1470 oldBucket!40))))

(assert (=> start!462380 e!2881323))

(assert (=> start!462380 true))

(declare-fun e!2881326 () Bool)

(assert (=> start!462380 e!2881326))

(declare-fun tp_is_empty!29173 () Bool)

(assert (=> start!462380 tp_is_empty!29173))

(declare-fun e!2881321 () Bool)

(assert (=> start!462380 e!2881321))

(declare-fun b!4619241 () Bool)

(assert (=> b!4619241 (= e!2881317 e!2881325)))

(declare-fun res!1936003 () Bool)

(assert (=> b!4619241 (=> res!1936003 e!2881325)))

(declare-fun tail!8105 (List!51564) List!51564)

(assert (=> b!4619241 (= res!1936003 (not (= (removePairForKey!1093 (tail!8105 oldBucket!40) key!4968) lt!1775076)))))

(assert (=> b!4619241 (= lt!1775076 (tail!8105 newBucket!224))))

(declare-fun tp!1341803 () Bool)

(declare-fun tp_is_empty!29175 () Bool)

(declare-fun b!4619242 () Bool)

(assert (=> b!4619242 (= e!2881326 (and tp_is_empty!29173 tp_is_empty!29175 tp!1341803))))

(declare-fun b!4619243 () Bool)

(assert (=> b!4619243 (= e!2881323 e!2881319)))

(declare-fun res!1935993 () Bool)

(assert (=> b!4619243 (=> (not res!1935993) (not e!2881319))))

(declare-datatypes ((ListMap!4209 0))(
  ( (ListMap!4210 (toList!4906 List!51564)) )
))
(declare-fun lt!1775085 () ListMap!4209)

(declare-fun contains!14427 (ListMap!4209 K!12825) Bool)

(assert (=> b!4619243 (= res!1935993 (contains!14427 lt!1775085 key!4968))))

(declare-fun extractMap!1526 (List!51565) ListMap!4209)

(assert (=> b!4619243 (= lt!1775085 (extractMap!1526 lt!1775073))))

(assert (=> b!4619243 (= lt!1775073 (Cons!51441 (tuple2!52329 hash!414 oldBucket!40) Nil!51441))))

(declare-fun b!4619244 () Bool)

(declare-fun res!1936001 () Bool)

(assert (=> b!4619244 (=> (not res!1936001) (not e!2881323))))

(assert (=> b!4619244 (= res!1936001 (= (removePairForKey!1093 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4619245 () Bool)

(assert (=> b!4619245 (= e!2881320 (not e!2881318))))

(declare-fun res!1935995 () Bool)

(assert (=> b!4619245 (=> res!1935995 e!2881318)))

(get-info :version)

(assert (=> b!4619245 (= res!1935995 (or (and ((_ is Cons!51440) oldBucket!40) (= (_1!29457 (h!57468 oldBucket!40)) key!4968)) (not ((_ is Cons!51440) oldBucket!40)) (= (_1!29457 (h!57468 oldBucket!40)) key!4968)))))

(declare-fun e!2881324 () Bool)

(assert (=> b!4619245 e!2881324))

(declare-fun res!1936002 () Bool)

(assert (=> b!4619245 (=> (not res!1936002) (not e!2881324))))

(declare-fun lt!1775074 () ListMap!4209)

(declare-fun addToMapMapFromBucket!931 (List!51564 ListMap!4209) ListMap!4209)

(assert (=> b!4619245 (= res!1936002 (= lt!1775085 (addToMapMapFromBucket!931 oldBucket!40 lt!1775074)))))

(assert (=> b!4619245 (= lt!1775074 (extractMap!1526 Nil!51441))))

(assert (=> b!4619245 true))

(declare-fun b!4619246 () Bool)

(declare-fun res!1936000 () Bool)

(assert (=> b!4619246 (=> (not res!1936000) (not e!2881323))))

(assert (=> b!4619246 (= res!1936000 (noDuplicateKeys!1470 newBucket!224))))

(declare-fun b!4619247 () Bool)

(assert (=> b!4619247 (= e!2881324 (= lt!1775074 (ListMap!4210 Nil!51440)))))

(declare-fun b!4619248 () Bool)

(declare-fun res!1935997 () Bool)

(assert (=> b!4619248 (=> res!1935997 e!2881322)))

(declare-fun containsKeyBiggerList!320 (List!51565 K!12825) Bool)

(assert (=> b!4619248 (= res!1935997 (not (containsKeyBiggerList!320 lt!1775082 key!4968)))))

(declare-fun b!4619249 () Bool)

(declare-fun tp!1341802 () Bool)

(assert (=> b!4619249 (= e!2881321 (and tp_is_empty!29173 tp_is_empty!29175 tp!1341802))))

(declare-fun b!4619250 () Bool)

(declare-fun res!1935996 () Bool)

(assert (=> b!4619250 (=> (not res!1935996) (not e!2881323))))

(assert (=> b!4619250 (= res!1935996 (allKeysSameHash!1324 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!462380 res!1935994) b!4619246))

(assert (= (and b!4619246 res!1936000) b!4619244))

(assert (= (and b!4619244 res!1936001) b!4619250))

(assert (= (and b!4619250 res!1935996) b!4619243))

(assert (= (and b!4619243 res!1935993) b!4619234))

(assert (= (and b!4619234 res!1936004) b!4619240))

(assert (= (and b!4619240 res!1935999) b!4619245))

(assert (= (and b!4619245 res!1936002) b!4619247))

(assert (= (and b!4619245 (not res!1935995)) b!4619235))

(assert (= (and b!4619235 (not res!1935990)) b!4619241))

(assert (= (and b!4619241 (not res!1936003)) b!4619236))

(assert (= (and b!4619236 (not res!1935992)) b!4619238))

(assert (= (and b!4619238 (not res!1935991)) b!4619239))

(assert (= (and b!4619239 (not res!1935998)) b!4619248))

(assert (= (and b!4619248 (not res!1935997)) b!4619237))

(assert (= (and start!462380 ((_ is Cons!51440) oldBucket!40)) b!4619242))

(assert (= (and start!462380 ((_ is Cons!51440) newBucket!224)) b!4619249))

(declare-fun m!5454865 () Bool)

(assert (=> b!4619245 m!5454865))

(declare-fun m!5454867 () Bool)

(assert (=> b!4619245 m!5454867))

(declare-fun m!5454869 () Bool)

(assert (=> b!4619250 m!5454869))

(declare-fun m!5454871 () Bool)

(assert (=> b!4619241 m!5454871))

(assert (=> b!4619241 m!5454871))

(declare-fun m!5454873 () Bool)

(assert (=> b!4619241 m!5454873))

(declare-fun m!5454875 () Bool)

(assert (=> b!4619241 m!5454875))

(declare-fun m!5454877 () Bool)

(assert (=> b!4619246 m!5454877))

(declare-fun m!5454879 () Bool)

(assert (=> b!4619243 m!5454879))

(declare-fun m!5454881 () Bool)

(assert (=> b!4619243 m!5454881))

(declare-fun m!5454883 () Bool)

(assert (=> b!4619235 m!5454883))

(declare-fun m!5454885 () Bool)

(assert (=> b!4619235 m!5454885))

(declare-fun m!5454887 () Bool)

(assert (=> b!4619235 m!5454887))

(declare-fun m!5454889 () Bool)

(assert (=> b!4619235 m!5454889))

(declare-fun m!5454891 () Bool)

(assert (=> b!4619235 m!5454891))

(declare-fun m!5454893 () Bool)

(assert (=> b!4619235 m!5454893))

(declare-fun m!5454895 () Bool)

(assert (=> b!4619235 m!5454895))

(declare-fun m!5454897 () Bool)

(assert (=> b!4619235 m!5454897))

(declare-fun m!5454899 () Bool)

(assert (=> b!4619235 m!5454899))

(declare-fun m!5454901 () Bool)

(assert (=> b!4619235 m!5454901))

(assert (=> b!4619235 m!5454887))

(declare-fun m!5454903 () Bool)

(assert (=> b!4619235 m!5454903))

(declare-fun m!5454905 () Bool)

(assert (=> b!4619235 m!5454905))

(declare-fun m!5454907 () Bool)

(assert (=> b!4619240 m!5454907))

(declare-fun m!5454909 () Bool)

(assert (=> b!4619248 m!5454909))

(declare-fun m!5454911 () Bool)

(assert (=> b!4619244 m!5454911))

(declare-fun m!5454913 () Bool)

(assert (=> b!4619234 m!5454913))

(declare-fun m!5454915 () Bool)

(assert (=> b!4619238 m!5454915))

(declare-fun m!5454917 () Bool)

(assert (=> b!4619236 m!5454917))

(declare-fun m!5454919 () Bool)

(assert (=> start!462380 m!5454919))

(declare-fun m!5454921 () Bool)

(assert (=> b!4619239 m!5454921))

(check-sat (not b!4619246) (not b!4619239) (not b!4619235) (not b!4619244) (not b!4619234) (not start!462380) (not b!4619236) (not b!4619243) (not b!4619241) (not b!4619245) (not b!4619242) (not b!4619240) tp_is_empty!29173 (not b!4619238) (not b!4619250) (not b!4619249) (not b!4619248) tp_is_empty!29175)
(check-sat)
