; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!482896 () Bool)

(assert start!482896)

(declare-fun res!2005259 () Bool)

(declare-fun e!2953576 () Bool)

(assert (=> start!482896 (=> (not res!2005259) (not e!2953576))))

(declare-datatypes ((K!14265 0))(
  ( (K!14266 (val!19683 Int)) )
))
(declare-datatypes ((V!14511 0))(
  ( (V!14512 (val!19684 Int)) )
))
(declare-datatypes ((tuple2!54578 0))(
  ( (tuple2!54579 (_1!30583 K!14265) (_2!30583 V!14511)) )
))
(declare-datatypes ((List!53043 0))(
  ( (Nil!52919) (Cons!52919 (h!59292 tuple2!54578) (t!360327 List!53043)) )
))
(declare-datatypes ((tuple2!54580 0))(
  ( (tuple2!54581 (_1!30584 (_ BitVec 64)) (_2!30584 List!53043)) )
))
(declare-datatypes ((List!53044 0))(
  ( (Nil!52920) (Cons!52920 (h!59293 tuple2!54580) (t!360328 List!53044)) )
))
(declare-datatypes ((ListLongMap!4511 0))(
  ( (ListLongMap!4512 (toList!5981 List!53044)) )
))
(declare-fun lm!2023 () ListLongMap!4511)

(declare-fun lambda!218044 () Int)

(declare-fun forall!11657 (List!53044 Int) Bool)

(assert (=> start!482896 (= res!2005259 (forall!11657 (toList!5981 lm!2023) lambda!218044))))

(assert (=> start!482896 e!2953576))

(declare-fun e!2953580 () Bool)

(declare-fun inv!68139 (ListLongMap!4511) Bool)

(assert (=> start!482896 (and (inv!68139 lm!2023) e!2953580)))

(declare-fun tp_is_empty!31477 () Bool)

(assert (=> start!482896 tp_is_empty!31477))

(declare-fun e!2953585 () Bool)

(assert (=> start!482896 e!2953585))

(assert (=> start!482896 true))

(declare-fun e!2953581 () Bool)

(assert (=> start!482896 e!2953581))

(declare-fun b!4735174 () Bool)

(declare-fun e!2953586 () Bool)

(declare-fun e!2953583 () Bool)

(assert (=> b!4735174 (= e!2953586 e!2953583)))

(declare-fun res!2005255 () Bool)

(assert (=> b!4735174 (=> (not res!2005255) (not e!2953583))))

(declare-fun lt!1898108 () tuple2!54580)

(declare-fun head!10295 (List!53044) tuple2!54580)

(assert (=> b!4735174 (= res!2005255 (= (head!10295 (toList!5981 lm!2023)) lt!1898108))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun oldBucket!34 () List!53043)

(assert (=> b!4735174 (= lt!1898108 (tuple2!54581 hash!405 oldBucket!34))))

(declare-fun b!4735175 () Bool)

(declare-fun res!2005264 () Bool)

(declare-fun e!2953578 () Bool)

(assert (=> b!4735175 (=> res!2005264 e!2953578)))

(declare-fun key!4653 () K!14265)

(declare-fun lt!1898106 () List!53043)

(declare-fun removePairForKey!1641 (List!53043 K!14265) List!53043)

(assert (=> b!4735175 (= res!2005264 (not (= (removePairForKey!1641 (t!360327 oldBucket!34) key!4653) lt!1898106)))))

(declare-fun b!4735176 () Bool)

(declare-fun tp!1349027 () Bool)

(assert (=> b!4735176 (= e!2953580 tp!1349027)))

(declare-fun b!4735177 () Bool)

(declare-fun res!2005258 () Bool)

(declare-fun e!2953584 () Bool)

(assert (=> b!4735177 (=> res!2005258 e!2953584)))

(declare-datatypes ((ListMap!5345 0))(
  ( (ListMap!5346 (toList!5982 List!53043)) )
))
(declare-fun lt!1898114 () ListMap!5345)

(declare-fun lt!1898116 () tuple2!54578)

(declare-fun lt!1898120 () ListMap!5345)

(declare-fun eq!1143 (ListMap!5345 ListMap!5345) Bool)

(declare-fun +!2294 (ListMap!5345 tuple2!54578) ListMap!5345)

(assert (=> b!4735177 (= res!2005258 (not (eq!1143 lt!1898120 (+!2294 lt!1898114 lt!1898116))))))

(declare-fun b!4735178 () Bool)

(declare-fun res!2005263 () Bool)

(assert (=> b!4735178 (=> (not res!2005263) (not e!2953583))))

(get-info :version)

(assert (=> b!4735178 (= res!2005263 ((_ is Cons!52920) (toList!5981 lm!2023)))))

(declare-fun tp_is_empty!31479 () Bool)

(declare-fun tp!1349025 () Bool)

(declare-fun b!4735179 () Bool)

(assert (=> b!4735179 (= e!2953581 (and tp_is_empty!31477 tp_is_empty!31479 tp!1349025))))

(declare-fun b!4735180 () Bool)

(declare-fun e!2953582 () Bool)

(assert (=> b!4735180 (= e!2953582 e!2953578)))

(declare-fun res!2005253 () Bool)

(assert (=> b!4735180 (=> res!2005253 e!2953578)))

(declare-fun lt!1898122 () List!53043)

(assert (=> b!4735180 (= res!2005253 (not (= (removePairForKey!1641 lt!1898122 key!4653) lt!1898106)))))

(declare-fun newBucket!218 () List!53043)

(declare-fun tail!9082 (List!53043) List!53043)

(assert (=> b!4735180 (= lt!1898106 (tail!9082 newBucket!218))))

(assert (=> b!4735180 (= lt!1898122 (tail!9082 oldBucket!34))))

(declare-fun b!4735181 () Bool)

(declare-fun res!2005256 () Bool)

(assert (=> b!4735181 (=> (not res!2005256) (not e!2953576))))

(declare-fun noDuplicateKeys!2046 (List!53043) Bool)

(assert (=> b!4735181 (= res!2005256 (noDuplicateKeys!2046 oldBucket!34))))

(declare-fun b!4735182 () Bool)

(declare-fun res!2005265 () Bool)

(assert (=> b!4735182 (=> res!2005265 e!2953584)))

(declare-fun lt!1898124 () List!53044)

(assert (=> b!4735182 (= res!2005265 (not (forall!11657 lt!1898124 lambda!218044)))))

(declare-fun b!4735183 () Bool)

(declare-fun res!2005260 () Bool)

(assert (=> b!4735183 (=> res!2005260 e!2953584)))

(assert (=> b!4735183 (= res!2005260 (not (= (h!59292 oldBucket!34) lt!1898116)))))

(declare-fun b!4735184 () Bool)

(declare-fun e!2953577 () Bool)

(assert (=> b!4735184 (= e!2953577 e!2953582)))

(declare-fun res!2005249 () Bool)

(assert (=> b!4735184 (=> res!2005249 e!2953582)))

(declare-fun containsKey!3443 (List!53043 K!14265) Bool)

(assert (=> b!4735184 (= res!2005249 (not (containsKey!3443 (t!360327 oldBucket!34) key!4653)))))

(assert (=> b!4735184 (containsKey!3443 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!132179 0))(
  ( (Unit!132180) )
))
(declare-fun lt!1898125 () Unit!132179)

(declare-datatypes ((Hashable!6415 0))(
  ( (HashableExt!6414 (__x!32118 Int)) )
))
(declare-fun hashF!1323 () Hashable!6415)

(declare-fun lemmaGetPairDefinedThenContainsKey!330 (List!53043 K!14265 Hashable!6415) Unit!132179)

(assert (=> b!4735184 (= lt!1898125 (lemmaGetPairDefinedThenContainsKey!330 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1898111 () List!53043)

(declare-datatypes ((Option!12429 0))(
  ( (None!12428) (Some!12428 (v!47069 tuple2!54578)) )
))
(declare-fun isDefined!9683 (Option!12429) Bool)

(declare-fun getPair!586 (List!53043 K!14265) Option!12429)

(assert (=> b!4735184 (isDefined!9683 (getPair!586 lt!1898111 key!4653))))

(declare-fun lt!1898113 () Unit!132179)

(declare-fun lt!1898115 () tuple2!54580)

(declare-fun forallContained!3697 (List!53044 Int tuple2!54580) Unit!132179)

(assert (=> b!4735184 (= lt!1898113 (forallContained!3697 (toList!5981 lm!2023) lambda!218044 lt!1898115))))

(declare-fun contains!16306 (List!53044 tuple2!54580) Bool)

(assert (=> b!4735184 (contains!16306 (toList!5981 lm!2023) lt!1898115)))

(declare-fun lt!1898110 () (_ BitVec 64))

(assert (=> b!4735184 (= lt!1898115 (tuple2!54581 lt!1898110 lt!1898111))))

(declare-fun lt!1898118 () Unit!132179)

(declare-fun lemmaGetValueImpliesTupleContained!391 (ListLongMap!4511 (_ BitVec 64) List!53043) Unit!132179)

(assert (=> b!4735184 (= lt!1898118 (lemmaGetValueImpliesTupleContained!391 lm!2023 lt!1898110 lt!1898111))))

(declare-fun apply!12471 (ListLongMap!4511 (_ BitVec 64)) List!53043)

(assert (=> b!4735184 (= lt!1898111 (apply!12471 lm!2023 lt!1898110))))

(declare-fun contains!16307 (ListLongMap!4511 (_ BitVec 64)) Bool)

(assert (=> b!4735184 (contains!16307 lm!2023 lt!1898110)))

(declare-fun lt!1898117 () Unit!132179)

(declare-fun lemmaInGenMapThenLongMapContainsHash!792 (ListLongMap!4511 K!14265 Hashable!6415) Unit!132179)

(assert (=> b!4735184 (= lt!1898117 (lemmaInGenMapThenLongMapContainsHash!792 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1898109 () Unit!132179)

(declare-fun lemmaInGenMapThenGetPairDefined!382 (ListLongMap!4511 K!14265 Hashable!6415) Unit!132179)

(assert (=> b!4735184 (= lt!1898109 (lemmaInGenMapThenGetPairDefined!382 lm!2023 key!4653 hashF!1323))))

(declare-fun tp!1349026 () Bool)

(declare-fun b!4735185 () Bool)

(assert (=> b!4735185 (= e!2953585 (and tp_is_empty!31477 tp_is_empty!31479 tp!1349026))))

(declare-fun b!4735186 () Bool)

(declare-fun res!2005261 () Bool)

(assert (=> b!4735186 (=> (not res!2005261) (not e!2953576))))

(assert (=> b!4735186 (= res!2005261 (= (removePairForKey!1641 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4735187 () Bool)

(declare-fun e!2953579 () Bool)

(assert (=> b!4735187 (= e!2953576 e!2953579)))

(declare-fun res!2005254 () Bool)

(assert (=> b!4735187 (=> (not res!2005254) (not e!2953579))))

(declare-fun lt!1898121 () ListMap!5345)

(declare-fun contains!16308 (ListMap!5345 K!14265) Bool)

(assert (=> b!4735187 (= res!2005254 (contains!16308 lt!1898121 key!4653))))

(declare-fun extractMap!2072 (List!53044) ListMap!5345)

(assert (=> b!4735187 (= lt!1898121 (extractMap!2072 (toList!5981 lm!2023)))))

(declare-fun b!4735188 () Bool)

(declare-fun res!2005257 () Bool)

(assert (=> b!4735188 (=> (not res!2005257) (not e!2953586))))

(declare-fun allKeysSameHash!1872 (List!53043 (_ BitVec 64) Hashable!6415) Bool)

(assert (=> b!4735188 (= res!2005257 (allKeysSameHash!1872 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4735189 () Bool)

(assert (=> b!4735189 (= e!2953579 e!2953586)))

(declare-fun res!2005252 () Bool)

(assert (=> b!4735189 (=> (not res!2005252) (not e!2953586))))

(assert (=> b!4735189 (= res!2005252 (= lt!1898110 hash!405))))

(declare-fun hash!4440 (Hashable!6415 K!14265) (_ BitVec 64))

(assert (=> b!4735189 (= lt!1898110 (hash!4440 hashF!1323 key!4653))))

(declare-fun b!4735190 () Bool)

(assert (=> b!4735190 (= e!2953583 (not e!2953577))))

(declare-fun res!2005262 () Bool)

(assert (=> b!4735190 (=> res!2005262 e!2953577)))

(assert (=> b!4735190 (= res!2005262 (or (and ((_ is Cons!52919) oldBucket!34) (= (_1!30583 (h!59292 oldBucket!34)) key!4653)) (not ((_ is Cons!52919) oldBucket!34)) (= (_1!30583 (h!59292 oldBucket!34)) key!4653)))))

(declare-fun lt!1898123 () ListMap!5345)

(declare-fun addToMapMapFromBucket!1476 (List!53043 ListMap!5345) ListMap!5345)

(assert (=> b!4735190 (= lt!1898121 (addToMapMapFromBucket!1476 (_2!30584 (h!59293 (toList!5981 lm!2023))) lt!1898123))))

(assert (=> b!4735190 (= lt!1898123 (extractMap!2072 (t!360328 (toList!5981 lm!2023))))))

(declare-fun tail!9083 (ListLongMap!4511) ListLongMap!4511)

(assert (=> b!4735190 (= (t!360328 (toList!5981 lm!2023)) (toList!5981 (tail!9083 lm!2023)))))

(declare-fun b!4735191 () Bool)

(assert (=> b!4735191 (= e!2953578 e!2953584)))

(declare-fun res!2005251 () Bool)

(assert (=> b!4735191 (=> res!2005251 e!2953584)))

(assert (=> b!4735191 (= res!2005251 (not (eq!1143 lt!1898120 (+!2294 lt!1898114 (h!59292 oldBucket!34)))))))

(assert (=> b!4735191 (= lt!1898114 (extractMap!2072 (Cons!52920 (tuple2!54581 hash!405 lt!1898122) (t!360328 (toList!5981 lm!2023)))))))

(assert (=> b!4735191 (= lt!1898120 (extractMap!2072 (Cons!52920 lt!1898108 (t!360328 (toList!5981 lm!2023)))))))

(assert (=> b!4735191 (eq!1143 (addToMapMapFromBucket!1476 (Cons!52919 lt!1898116 lt!1898106) lt!1898123) (+!2294 (addToMapMapFromBucket!1476 lt!1898106 lt!1898123) lt!1898116))))

(declare-fun lt!1898112 () Unit!132179)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!392 (tuple2!54578 List!53043 ListMap!5345) Unit!132179)

(assert (=> b!4735191 (= lt!1898112 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!392 lt!1898116 lt!1898106 lt!1898123))))

(declare-fun head!10296 (List!53043) tuple2!54578)

(assert (=> b!4735191 (= lt!1898116 (head!10296 newBucket!218))))

(declare-fun lt!1898119 () tuple2!54578)

(assert (=> b!4735191 (eq!1143 (addToMapMapFromBucket!1476 (Cons!52919 lt!1898119 lt!1898122) lt!1898123) (+!2294 (addToMapMapFromBucket!1476 lt!1898122 lt!1898123) lt!1898119))))

(declare-fun lt!1898107 () Unit!132179)

(assert (=> b!4735191 (= lt!1898107 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!392 lt!1898119 lt!1898122 lt!1898123))))

(assert (=> b!4735191 (= lt!1898119 (head!10296 oldBucket!34))))

(assert (=> b!4735191 (contains!16308 (extractMap!2072 lt!1898124) key!4653)))

(declare-fun lt!1898105 () Unit!132179)

(declare-fun lemmaListContainsThenExtractedMapContains!554 (ListLongMap!4511 K!14265 Hashable!6415) Unit!132179)

(assert (=> b!4735191 (= lt!1898105 (lemmaListContainsThenExtractedMapContains!554 (ListLongMap!4512 lt!1898124) key!4653 hashF!1323))))

(assert (=> b!4735191 (= lt!1898124 (Cons!52920 (tuple2!54581 hash!405 (t!360327 oldBucket!34)) (t!360328 (toList!5981 lm!2023))))))

(declare-fun b!4735192 () Bool)

(assert (=> b!4735192 (= e!2953584 (noDuplicateKeys!2046 (t!360327 oldBucket!34)))))

(declare-fun b!4735193 () Bool)

(declare-fun res!2005250 () Bool)

(assert (=> b!4735193 (=> (not res!2005250) (not e!2953586))))

(declare-fun allKeysSameHashInMap!1960 (ListLongMap!4511 Hashable!6415) Bool)

(assert (=> b!4735193 (= res!2005250 (allKeysSameHashInMap!1960 lm!2023 hashF!1323))))

(declare-fun b!4735194 () Bool)

(declare-fun res!2005267 () Bool)

(assert (=> b!4735194 (=> (not res!2005267) (not e!2953576))))

(assert (=> b!4735194 (= res!2005267 (noDuplicateKeys!2046 newBucket!218))))

(declare-fun b!4735195 () Bool)

(declare-fun res!2005266 () Bool)

(assert (=> b!4735195 (=> (not res!2005266) (not e!2953576))))

(assert (=> b!4735195 (= res!2005266 (allKeysSameHash!1872 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!482896 res!2005259) b!4735181))

(assert (= (and b!4735181 res!2005256) b!4735194))

(assert (= (and b!4735194 res!2005267) b!4735186))

(assert (= (and b!4735186 res!2005261) b!4735195))

(assert (= (and b!4735195 res!2005266) b!4735187))

(assert (= (and b!4735187 res!2005254) b!4735189))

(assert (= (and b!4735189 res!2005252) b!4735188))

(assert (= (and b!4735188 res!2005257) b!4735193))

(assert (= (and b!4735193 res!2005250) b!4735174))

(assert (= (and b!4735174 res!2005255) b!4735178))

(assert (= (and b!4735178 res!2005263) b!4735190))

(assert (= (and b!4735190 (not res!2005262)) b!4735184))

(assert (= (and b!4735184 (not res!2005249)) b!4735180))

(assert (= (and b!4735180 (not res!2005253)) b!4735175))

(assert (= (and b!4735175 (not res!2005264)) b!4735191))

(assert (= (and b!4735191 (not res!2005251)) b!4735183))

(assert (= (and b!4735183 (not res!2005260)) b!4735177))

(assert (= (and b!4735177 (not res!2005258)) b!4735182))

(assert (= (and b!4735182 (not res!2005265)) b!4735192))

(assert (= start!482896 b!4735176))

(assert (= (and start!482896 ((_ is Cons!52919) oldBucket!34)) b!4735185))

(assert (= (and start!482896 ((_ is Cons!52919) newBucket!218)) b!4735179))

(declare-fun m!5680825 () Bool)

(assert (=> b!4735177 m!5680825))

(assert (=> b!4735177 m!5680825))

(declare-fun m!5680827 () Bool)

(assert (=> b!4735177 m!5680827))

(declare-fun m!5680829 () Bool)

(assert (=> b!4735180 m!5680829))

(declare-fun m!5680831 () Bool)

(assert (=> b!4735180 m!5680831))

(declare-fun m!5680833 () Bool)

(assert (=> b!4735180 m!5680833))

(declare-fun m!5680835 () Bool)

(assert (=> b!4735187 m!5680835))

(declare-fun m!5680837 () Bool)

(assert (=> b!4735187 m!5680837))

(declare-fun m!5680839 () Bool)

(assert (=> start!482896 m!5680839))

(declare-fun m!5680841 () Bool)

(assert (=> start!482896 m!5680841))

(declare-fun m!5680843 () Bool)

(assert (=> b!4735182 m!5680843))

(declare-fun m!5680845 () Bool)

(assert (=> b!4735194 m!5680845))

(declare-fun m!5680847 () Bool)

(assert (=> b!4735189 m!5680847))

(declare-fun m!5680849 () Bool)

(assert (=> b!4735184 m!5680849))

(declare-fun m!5680851 () Bool)

(assert (=> b!4735184 m!5680851))

(declare-fun m!5680853 () Bool)

(assert (=> b!4735184 m!5680853))

(assert (=> b!4735184 m!5680851))

(declare-fun m!5680855 () Bool)

(assert (=> b!4735184 m!5680855))

(declare-fun m!5680857 () Bool)

(assert (=> b!4735184 m!5680857))

(declare-fun m!5680859 () Bool)

(assert (=> b!4735184 m!5680859))

(declare-fun m!5680861 () Bool)

(assert (=> b!4735184 m!5680861))

(declare-fun m!5680863 () Bool)

(assert (=> b!4735184 m!5680863))

(declare-fun m!5680865 () Bool)

(assert (=> b!4735184 m!5680865))

(declare-fun m!5680867 () Bool)

(assert (=> b!4735184 m!5680867))

(declare-fun m!5680869 () Bool)

(assert (=> b!4735184 m!5680869))

(declare-fun m!5680871 () Bool)

(assert (=> b!4735184 m!5680871))

(declare-fun m!5680873 () Bool)

(assert (=> b!4735195 m!5680873))

(declare-fun m!5680875 () Bool)

(assert (=> b!4735174 m!5680875))

(declare-fun m!5680877 () Bool)

(assert (=> b!4735181 m!5680877))

(declare-fun m!5680879 () Bool)

(assert (=> b!4735191 m!5680879))

(declare-fun m!5680881 () Bool)

(assert (=> b!4735191 m!5680881))

(declare-fun m!5680883 () Bool)

(assert (=> b!4735191 m!5680883))

(declare-fun m!5680885 () Bool)

(assert (=> b!4735191 m!5680885))

(declare-fun m!5680887 () Bool)

(assert (=> b!4735191 m!5680887))

(assert (=> b!4735191 m!5680887))

(assert (=> b!4735191 m!5680881))

(declare-fun m!5680889 () Bool)

(assert (=> b!4735191 m!5680889))

(declare-fun m!5680891 () Bool)

(assert (=> b!4735191 m!5680891))

(declare-fun m!5680893 () Bool)

(assert (=> b!4735191 m!5680893))

(declare-fun m!5680895 () Bool)

(assert (=> b!4735191 m!5680895))

(assert (=> b!4735191 m!5680889))

(declare-fun m!5680897 () Bool)

(assert (=> b!4735191 m!5680897))

(declare-fun m!5680899 () Bool)

(assert (=> b!4735191 m!5680899))

(assert (=> b!4735191 m!5680891))

(assert (=> b!4735191 m!5680879))

(declare-fun m!5680901 () Bool)

(assert (=> b!4735191 m!5680901))

(declare-fun m!5680903 () Bool)

(assert (=> b!4735191 m!5680903))

(assert (=> b!4735191 m!5680897))

(assert (=> b!4735191 m!5680903))

(declare-fun m!5680905 () Bool)

(assert (=> b!4735191 m!5680905))

(declare-fun m!5680907 () Bool)

(assert (=> b!4735191 m!5680907))

(declare-fun m!5680909 () Bool)

(assert (=> b!4735191 m!5680909))

(declare-fun m!5680911 () Bool)

(assert (=> b!4735191 m!5680911))

(declare-fun m!5680913 () Bool)

(assert (=> b!4735191 m!5680913))

(assert (=> b!4735191 m!5680901))

(declare-fun m!5680915 () Bool)

(assert (=> b!4735191 m!5680915))

(declare-fun m!5680917 () Bool)

(assert (=> b!4735190 m!5680917))

(declare-fun m!5680919 () Bool)

(assert (=> b!4735190 m!5680919))

(declare-fun m!5680921 () Bool)

(assert (=> b!4735190 m!5680921))

(declare-fun m!5680923 () Bool)

(assert (=> b!4735188 m!5680923))

(declare-fun m!5680925 () Bool)

(assert (=> b!4735193 m!5680925))

(declare-fun m!5680927 () Bool)

(assert (=> b!4735186 m!5680927))

(declare-fun m!5680929 () Bool)

(assert (=> b!4735175 m!5680929))

(declare-fun m!5680931 () Bool)

(assert (=> b!4735192 m!5680931))

(check-sat tp_is_empty!31479 (not b!4735191) (not b!4735177) (not b!4735175) (not b!4735188) (not b!4735189) (not b!4735185) (not b!4735190) (not b!4735180) (not b!4735179) (not b!4735194) (not b!4735187) (not b!4735184) (not b!4735181) (not b!4735174) (not b!4735193) (not b!4735182) (not b!4735186) (not b!4735192) (not start!482896) tp_is_empty!31477 (not b!4735176) (not b!4735195))
(check-sat)
(get-model)

(declare-fun d!1510929 () Bool)

(assert (=> d!1510929 true))

(assert (=> d!1510929 true))

(declare-fun lambda!218054 () Int)

(declare-fun forall!11659 (List!53043 Int) Bool)

(assert (=> d!1510929 (= (allKeysSameHash!1872 oldBucket!34 hash!405 hashF!1323) (forall!11659 oldBucket!34 lambda!218054))))

(declare-fun bs!1124518 () Bool)

(assert (= bs!1124518 d!1510929))

(declare-fun m!5680975 () Bool)

(assert (=> bs!1124518 m!5680975))

(assert (=> b!4735195 d!1510929))

(declare-fun d!1510931 () Bool)

(assert (=> d!1510931 (= (head!10295 (toList!5981 lm!2023)) (h!59293 (toList!5981 lm!2023)))))

(assert (=> b!4735174 d!1510931))

(declare-fun d!1510933 () Bool)

(declare-datatypes ((Option!12431 0))(
  ( (None!12430) (Some!12430 (v!47075 List!53043)) )
))
(declare-fun get!17779 (Option!12431) List!53043)

(declare-fun getValueByKey!2003 (List!53044 (_ BitVec 64)) Option!12431)

(assert (=> d!1510933 (= (apply!12471 lm!2023 lt!1898110) (get!17779 (getValueByKey!2003 (toList!5981 lm!2023) lt!1898110)))))

(declare-fun bs!1124519 () Bool)

(assert (= bs!1124519 d!1510933))

(declare-fun m!5680977 () Bool)

(assert (=> bs!1124519 m!5680977))

(assert (=> bs!1124519 m!5680977))

(declare-fun m!5680979 () Bool)

(assert (=> bs!1124519 m!5680979))

(assert (=> b!4735184 d!1510933))

(declare-fun d!1510935 () Bool)

(assert (=> d!1510935 (contains!16306 (toList!5981 lm!2023) (tuple2!54581 lt!1898110 lt!1898111))))

(declare-fun lt!1898144 () Unit!132179)

(declare-fun choose!33550 (ListLongMap!4511 (_ BitVec 64) List!53043) Unit!132179)

(assert (=> d!1510935 (= lt!1898144 (choose!33550 lm!2023 lt!1898110 lt!1898111))))

(assert (=> d!1510935 (contains!16307 lm!2023 lt!1898110)))

(assert (=> d!1510935 (= (lemmaGetValueImpliesTupleContained!391 lm!2023 lt!1898110 lt!1898111) lt!1898144)))

(declare-fun bs!1124520 () Bool)

(assert (= bs!1124520 d!1510935))

(declare-fun m!5680981 () Bool)

(assert (=> bs!1124520 m!5680981))

(declare-fun m!5680983 () Bool)

(assert (=> bs!1124520 m!5680983))

(assert (=> bs!1124520 m!5680857))

(assert (=> b!4735184 d!1510935))

(declare-fun bs!1124521 () Bool)

(declare-fun d!1510937 () Bool)

(assert (= bs!1124521 (and d!1510937 start!482896)))

(declare-fun lambda!218061 () Int)

(assert (=> bs!1124521 (= lambda!218061 lambda!218044)))

(assert (=> d!1510937 (contains!16307 lm!2023 (hash!4440 hashF!1323 key!4653))))

(declare-fun lt!1898149 () Unit!132179)

(declare-fun choose!33551 (ListLongMap!4511 K!14265 Hashable!6415) Unit!132179)

(assert (=> d!1510937 (= lt!1898149 (choose!33551 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1510937 (forall!11657 (toList!5981 lm!2023) lambda!218061)))

(assert (=> d!1510937 (= (lemmaInGenMapThenLongMapContainsHash!792 lm!2023 key!4653 hashF!1323) lt!1898149)))

(declare-fun bs!1124522 () Bool)

(assert (= bs!1124522 d!1510937))

(assert (=> bs!1124522 m!5680847))

(assert (=> bs!1124522 m!5680847))

(declare-fun m!5680985 () Bool)

(assert (=> bs!1124522 m!5680985))

(declare-fun m!5680987 () Bool)

(assert (=> bs!1124522 m!5680987))

(declare-fun m!5680989 () Bool)

(assert (=> bs!1124522 m!5680989))

(assert (=> b!4735184 d!1510937))

(declare-fun b!4735280 () Bool)

(declare-fun e!2953641 () Bool)

(declare-fun e!2953639 () Bool)

(assert (=> b!4735280 (= e!2953641 e!2953639)))

(declare-fun res!2005314 () Bool)

(assert (=> b!4735280 (=> (not res!2005314) (not e!2953639))))

(declare-fun lt!1898186 () Option!12429)

(assert (=> b!4735280 (= res!2005314 (isDefined!9683 lt!1898186))))

(declare-fun b!4735281 () Bool)

(declare-fun e!2953642 () Option!12429)

(assert (=> b!4735281 (= e!2953642 (getPair!586 (t!360327 lt!1898111) key!4653))))

(declare-fun d!1510939 () Bool)

(assert (=> d!1510939 e!2953641))

(declare-fun res!2005315 () Bool)

(assert (=> d!1510939 (=> res!2005315 e!2953641)))

(declare-fun e!2953640 () Bool)

(assert (=> d!1510939 (= res!2005315 e!2953640)))

(declare-fun res!2005313 () Bool)

(assert (=> d!1510939 (=> (not res!2005313) (not e!2953640))))

(declare-fun isEmpty!29217 (Option!12429) Bool)

(assert (=> d!1510939 (= res!2005313 (isEmpty!29217 lt!1898186))))

(declare-fun e!2953638 () Option!12429)

(assert (=> d!1510939 (= lt!1898186 e!2953638)))

(declare-fun c!808744 () Bool)

(assert (=> d!1510939 (= c!808744 (and ((_ is Cons!52919) lt!1898111) (= (_1!30583 (h!59292 lt!1898111)) key!4653)))))

(assert (=> d!1510939 (noDuplicateKeys!2046 lt!1898111)))

(assert (=> d!1510939 (= (getPair!586 lt!1898111 key!4653) lt!1898186)))

(declare-fun b!4735282 () Bool)

(declare-fun res!2005312 () Bool)

(assert (=> b!4735282 (=> (not res!2005312) (not e!2953639))))

(declare-fun get!17780 (Option!12429) tuple2!54578)

(assert (=> b!4735282 (= res!2005312 (= (_1!30583 (get!17780 lt!1898186)) key!4653))))

(declare-fun b!4735283 () Bool)

(declare-fun contains!16310 (List!53043 tuple2!54578) Bool)

(assert (=> b!4735283 (= e!2953639 (contains!16310 lt!1898111 (get!17780 lt!1898186)))))

(declare-fun b!4735284 () Bool)

(assert (=> b!4735284 (= e!2953638 e!2953642)))

(declare-fun c!808743 () Bool)

(assert (=> b!4735284 (= c!808743 ((_ is Cons!52919) lt!1898111))))

(declare-fun b!4735285 () Bool)

(assert (=> b!4735285 (= e!2953642 None!12428)))

(declare-fun b!4735286 () Bool)

(assert (=> b!4735286 (= e!2953640 (not (containsKey!3443 lt!1898111 key!4653)))))

(declare-fun b!4735287 () Bool)

(assert (=> b!4735287 (= e!2953638 (Some!12428 (h!59292 lt!1898111)))))

(assert (= (and d!1510939 c!808744) b!4735287))

(assert (= (and d!1510939 (not c!808744)) b!4735284))

(assert (= (and b!4735284 c!808743) b!4735281))

(assert (= (and b!4735284 (not c!808743)) b!4735285))

(assert (= (and d!1510939 res!2005313) b!4735286))

(assert (= (and d!1510939 (not res!2005315)) b!4735280))

(assert (= (and b!4735280 res!2005314) b!4735282))

(assert (= (and b!4735282 res!2005312) b!4735283))

(declare-fun m!5681025 () Bool)

(assert (=> b!4735281 m!5681025))

(declare-fun m!5681027 () Bool)

(assert (=> b!4735283 m!5681027))

(assert (=> b!4735283 m!5681027))

(declare-fun m!5681029 () Bool)

(assert (=> b!4735283 m!5681029))

(declare-fun m!5681031 () Bool)

(assert (=> b!4735280 m!5681031))

(declare-fun m!5681033 () Bool)

(assert (=> d!1510939 m!5681033))

(declare-fun m!5681035 () Bool)

(assert (=> d!1510939 m!5681035))

(declare-fun m!5681037 () Bool)

(assert (=> b!4735286 m!5681037))

(assert (=> b!4735282 m!5681027))

(assert (=> b!4735184 d!1510939))

(declare-fun bs!1124528 () Bool)

(declare-fun d!1510949 () Bool)

(assert (= bs!1124528 (and d!1510949 start!482896)))

(declare-fun lambda!218071 () Int)

(assert (=> bs!1124528 (= lambda!218071 lambda!218044)))

(declare-fun bs!1124529 () Bool)

(assert (= bs!1124529 (and d!1510949 d!1510937)))

(assert (=> bs!1124529 (= lambda!218071 lambda!218061)))

(declare-fun b!4735326 () Bool)

(declare-fun res!2005342 () Bool)

(declare-fun e!2953666 () Bool)

(assert (=> b!4735326 (=> (not res!2005342) (not e!2953666))))

(assert (=> b!4735326 (= res!2005342 (allKeysSameHashInMap!1960 lm!2023 hashF!1323))))

(declare-fun e!2953667 () Bool)

(declare-fun lt!1898216 () (_ BitVec 64))

(declare-fun lt!1898212 () List!53043)

(declare-fun b!4735329 () Bool)

(assert (=> b!4735329 (= e!2953667 (= (getValueByKey!2003 (toList!5981 lm!2023) lt!1898216) (Some!12430 lt!1898212)))))

(assert (=> d!1510949 e!2953666))

(declare-fun res!2005340 () Bool)

(assert (=> d!1510949 (=> (not res!2005340) (not e!2953666))))

(assert (=> d!1510949 (= res!2005340 (forall!11657 (toList!5981 lm!2023) lambda!218071))))

(declare-fun lt!1898214 () Unit!132179)

(declare-fun choose!33552 (ListLongMap!4511 K!14265 Hashable!6415) Unit!132179)

(assert (=> d!1510949 (= lt!1898214 (choose!33552 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1510949 (forall!11657 (toList!5981 lm!2023) lambda!218071)))

(assert (=> d!1510949 (= (lemmaInGenMapThenGetPairDefined!382 lm!2023 key!4653 hashF!1323) lt!1898214)))

(declare-fun b!4735328 () Bool)

(assert (=> b!4735328 (= e!2953666 (isDefined!9683 (getPair!586 (apply!12471 lm!2023 (hash!4440 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1898217 () Unit!132179)

(assert (=> b!4735328 (= lt!1898217 (forallContained!3697 (toList!5981 lm!2023) lambda!218071 (tuple2!54581 (hash!4440 hashF!1323 key!4653) (apply!12471 lm!2023 (hash!4440 hashF!1323 key!4653)))))))

(declare-fun lt!1898211 () Unit!132179)

(declare-fun lt!1898215 () Unit!132179)

(assert (=> b!4735328 (= lt!1898211 lt!1898215)))

(assert (=> b!4735328 (contains!16306 (toList!5981 lm!2023) (tuple2!54581 lt!1898216 lt!1898212))))

(assert (=> b!4735328 (= lt!1898215 (lemmaGetValueImpliesTupleContained!391 lm!2023 lt!1898216 lt!1898212))))

(assert (=> b!4735328 e!2953667))

(declare-fun res!2005343 () Bool)

(assert (=> b!4735328 (=> (not res!2005343) (not e!2953667))))

(assert (=> b!4735328 (= res!2005343 (contains!16307 lm!2023 lt!1898216))))

(assert (=> b!4735328 (= lt!1898212 (apply!12471 lm!2023 (hash!4440 hashF!1323 key!4653)))))

(assert (=> b!4735328 (= lt!1898216 (hash!4440 hashF!1323 key!4653))))

(declare-fun lt!1898213 () Unit!132179)

(declare-fun lt!1898218 () Unit!132179)

(assert (=> b!4735328 (= lt!1898213 lt!1898218)))

(assert (=> b!4735328 (contains!16307 lm!2023 (hash!4440 hashF!1323 key!4653))))

(assert (=> b!4735328 (= lt!1898218 (lemmaInGenMapThenLongMapContainsHash!792 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4735327 () Bool)

(declare-fun res!2005341 () Bool)

(assert (=> b!4735327 (=> (not res!2005341) (not e!2953666))))

(assert (=> b!4735327 (= res!2005341 (contains!16308 (extractMap!2072 (toList!5981 lm!2023)) key!4653))))

(assert (= (and d!1510949 res!2005340) b!4735326))

(assert (= (and b!4735326 res!2005342) b!4735327))

(assert (= (and b!4735327 res!2005341) b!4735328))

(assert (= (and b!4735328 res!2005343) b!4735329))

(declare-fun m!5681061 () Bool)

(assert (=> b!4735328 m!5681061))

(declare-fun m!5681063 () Bool)

(assert (=> b!4735328 m!5681063))

(declare-fun m!5681065 () Bool)

(assert (=> b!4735328 m!5681065))

(declare-fun m!5681067 () Bool)

(assert (=> b!4735328 m!5681067))

(assert (=> b!4735328 m!5680847))

(assert (=> b!4735328 m!5680847))

(assert (=> b!4735328 m!5681061))

(assert (=> b!4735328 m!5680847))

(assert (=> b!4735328 m!5680985))

(assert (=> b!4735328 m!5681063))

(declare-fun m!5681069 () Bool)

(assert (=> b!4735328 m!5681069))

(declare-fun m!5681071 () Bool)

(assert (=> b!4735328 m!5681071))

(declare-fun m!5681073 () Bool)

(assert (=> b!4735328 m!5681073))

(assert (=> b!4735328 m!5680853))

(declare-fun m!5681075 () Bool)

(assert (=> d!1510949 m!5681075))

(declare-fun m!5681077 () Bool)

(assert (=> d!1510949 m!5681077))

(assert (=> d!1510949 m!5681075))

(declare-fun m!5681079 () Bool)

(assert (=> b!4735329 m!5681079))

(assert (=> b!4735327 m!5680837))

(assert (=> b!4735327 m!5680837))

(declare-fun m!5681081 () Bool)

(assert (=> b!4735327 m!5681081))

(assert (=> b!4735326 m!5680925))

(assert (=> b!4735184 d!1510949))

(declare-fun d!1510961 () Bool)

(assert (=> d!1510961 (= (isDefined!9683 (getPair!586 lt!1898111 key!4653)) (not (isEmpty!29217 (getPair!586 lt!1898111 key!4653))))))

(declare-fun bs!1124530 () Bool)

(assert (= bs!1124530 d!1510961))

(assert (=> bs!1124530 m!5680851))

(declare-fun m!5681083 () Bool)

(assert (=> bs!1124530 m!5681083))

(assert (=> b!4735184 d!1510961))

(declare-fun d!1510963 () Bool)

(assert (=> d!1510963 (containsKey!3443 oldBucket!34 key!4653)))

(declare-fun lt!1898259 () Unit!132179)

(declare-fun choose!33553 (List!53043 K!14265 Hashable!6415) Unit!132179)

(assert (=> d!1510963 (= lt!1898259 (choose!33553 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1510963 (noDuplicateKeys!2046 oldBucket!34)))

(assert (=> d!1510963 (= (lemmaGetPairDefinedThenContainsKey!330 oldBucket!34 key!4653 hashF!1323) lt!1898259)))

(declare-fun bs!1124531 () Bool)

(assert (= bs!1124531 d!1510963))

(assert (=> bs!1124531 m!5680869))

(declare-fun m!5681085 () Bool)

(assert (=> bs!1124531 m!5681085))

(assert (=> bs!1124531 m!5680877))

(assert (=> b!4735184 d!1510963))

(declare-fun d!1510965 () Bool)

(declare-fun res!2005350 () Bool)

(declare-fun e!2953676 () Bool)

(assert (=> d!1510965 (=> res!2005350 e!2953676)))

(assert (=> d!1510965 (= res!2005350 (and ((_ is Cons!52919) (t!360327 oldBucket!34)) (= (_1!30583 (h!59292 (t!360327 oldBucket!34))) key!4653)))))

(assert (=> d!1510965 (= (containsKey!3443 (t!360327 oldBucket!34) key!4653) e!2953676)))

(declare-fun b!4735338 () Bool)

(declare-fun e!2953677 () Bool)

(assert (=> b!4735338 (= e!2953676 e!2953677)))

(declare-fun res!2005351 () Bool)

(assert (=> b!4735338 (=> (not res!2005351) (not e!2953677))))

(assert (=> b!4735338 (= res!2005351 ((_ is Cons!52919) (t!360327 oldBucket!34)))))

(declare-fun b!4735339 () Bool)

(assert (=> b!4735339 (= e!2953677 (containsKey!3443 (t!360327 (t!360327 oldBucket!34)) key!4653))))

(assert (= (and d!1510965 (not res!2005350)) b!4735338))

(assert (= (and b!4735338 res!2005351) b!4735339))

(declare-fun m!5681087 () Bool)

(assert (=> b!4735339 m!5681087))

(assert (=> b!4735184 d!1510965))

(declare-fun d!1510967 () Bool)

(declare-fun lt!1898264 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9446 (List!53044) (InoxSet tuple2!54580))

(assert (=> d!1510967 (= lt!1898264 (select (content!9446 (toList!5981 lm!2023)) lt!1898115))))

(declare-fun e!2953684 () Bool)

(assert (=> d!1510967 (= lt!1898264 e!2953684)))

(declare-fun res!2005360 () Bool)

(assert (=> d!1510967 (=> (not res!2005360) (not e!2953684))))

(assert (=> d!1510967 (= res!2005360 ((_ is Cons!52920) (toList!5981 lm!2023)))))

(assert (=> d!1510967 (= (contains!16306 (toList!5981 lm!2023) lt!1898115) lt!1898264)))

(declare-fun b!4735348 () Bool)

(declare-fun e!2953685 () Bool)

(assert (=> b!4735348 (= e!2953684 e!2953685)))

(declare-fun res!2005361 () Bool)

(assert (=> b!4735348 (=> res!2005361 e!2953685)))

(assert (=> b!4735348 (= res!2005361 (= (h!59293 (toList!5981 lm!2023)) lt!1898115))))

(declare-fun b!4735349 () Bool)

(assert (=> b!4735349 (= e!2953685 (contains!16306 (t!360328 (toList!5981 lm!2023)) lt!1898115))))

(assert (= (and d!1510967 res!2005360) b!4735348))

(assert (= (and b!4735348 (not res!2005361)) b!4735349))

(declare-fun m!5681089 () Bool)

(assert (=> d!1510967 m!5681089))

(declare-fun m!5681091 () Bool)

(assert (=> d!1510967 m!5681091))

(declare-fun m!5681093 () Bool)

(assert (=> b!4735349 m!5681093))

(assert (=> b!4735184 d!1510967))

(declare-fun d!1510969 () Bool)

(declare-fun dynLambda!21861 (Int tuple2!54580) Bool)

(assert (=> d!1510969 (dynLambda!21861 lambda!218044 lt!1898115)))

(declare-fun lt!1898288 () Unit!132179)

(declare-fun choose!33554 (List!53044 Int tuple2!54580) Unit!132179)

(assert (=> d!1510969 (= lt!1898288 (choose!33554 (toList!5981 lm!2023) lambda!218044 lt!1898115))))

(declare-fun e!2953691 () Bool)

(assert (=> d!1510969 e!2953691))

(declare-fun res!2005367 () Bool)

(assert (=> d!1510969 (=> (not res!2005367) (not e!2953691))))

(assert (=> d!1510969 (= res!2005367 (forall!11657 (toList!5981 lm!2023) lambda!218044))))

(assert (=> d!1510969 (= (forallContained!3697 (toList!5981 lm!2023) lambda!218044 lt!1898115) lt!1898288)))

(declare-fun b!4735359 () Bool)

(assert (=> b!4735359 (= e!2953691 (contains!16306 (toList!5981 lm!2023) lt!1898115))))

(assert (= (and d!1510969 res!2005367) b!4735359))

(declare-fun b_lambda!181093 () Bool)

(assert (=> (not b_lambda!181093) (not d!1510969)))

(declare-fun m!5681095 () Bool)

(assert (=> d!1510969 m!5681095))

(declare-fun m!5681097 () Bool)

(assert (=> d!1510969 m!5681097))

(assert (=> d!1510969 m!5680839))

(assert (=> b!4735359 m!5680871))

(assert (=> b!4735184 d!1510969))

(declare-fun d!1510971 () Bool)

(declare-fun res!2005368 () Bool)

(declare-fun e!2953692 () Bool)

(assert (=> d!1510971 (=> res!2005368 e!2953692)))

(assert (=> d!1510971 (= res!2005368 (and ((_ is Cons!52919) oldBucket!34) (= (_1!30583 (h!59292 oldBucket!34)) key!4653)))))

(assert (=> d!1510971 (= (containsKey!3443 oldBucket!34 key!4653) e!2953692)))

(declare-fun b!4735360 () Bool)

(declare-fun e!2953693 () Bool)

(assert (=> b!4735360 (= e!2953692 e!2953693)))

(declare-fun res!2005369 () Bool)

(assert (=> b!4735360 (=> (not res!2005369) (not e!2953693))))

(assert (=> b!4735360 (= res!2005369 ((_ is Cons!52919) oldBucket!34))))

(declare-fun b!4735361 () Bool)

(assert (=> b!4735361 (= e!2953693 (containsKey!3443 (t!360327 oldBucket!34) key!4653))))

(assert (= (and d!1510971 (not res!2005368)) b!4735360))

(assert (= (and b!4735360 res!2005369) b!4735361))

(assert (=> b!4735361 m!5680863))

(assert (=> b!4735184 d!1510971))

(declare-fun d!1510973 () Bool)

(declare-fun e!2953701 () Bool)

(assert (=> d!1510973 e!2953701))

(declare-fun res!2005372 () Bool)

(assert (=> d!1510973 (=> res!2005372 e!2953701)))

(declare-fun lt!1898300 () Bool)

(assert (=> d!1510973 (= res!2005372 (not lt!1898300))))

(declare-fun lt!1898302 () Bool)

(assert (=> d!1510973 (= lt!1898300 lt!1898302)))

(declare-fun lt!1898303 () Unit!132179)

(declare-fun e!2953702 () Unit!132179)

(assert (=> d!1510973 (= lt!1898303 e!2953702)))

(declare-fun c!808759 () Bool)

(assert (=> d!1510973 (= c!808759 lt!1898302)))

(declare-fun containsKey!3445 (List!53044 (_ BitVec 64)) Bool)

(assert (=> d!1510973 (= lt!1898302 (containsKey!3445 (toList!5981 lm!2023) lt!1898110))))

(assert (=> d!1510973 (= (contains!16307 lm!2023 lt!1898110) lt!1898300)))

(declare-fun b!4735374 () Bool)

(declare-fun lt!1898301 () Unit!132179)

(assert (=> b!4735374 (= e!2953702 lt!1898301)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1894 (List!53044 (_ BitVec 64)) Unit!132179)

(assert (=> b!4735374 (= lt!1898301 (lemmaContainsKeyImpliesGetValueByKeyDefined!1894 (toList!5981 lm!2023) lt!1898110))))

(declare-fun isDefined!9685 (Option!12431) Bool)

(assert (=> b!4735374 (isDefined!9685 (getValueByKey!2003 (toList!5981 lm!2023) lt!1898110))))

(declare-fun b!4735375 () Bool)

(declare-fun Unit!132215 () Unit!132179)

(assert (=> b!4735375 (= e!2953702 Unit!132215)))

(declare-fun b!4735376 () Bool)

(assert (=> b!4735376 (= e!2953701 (isDefined!9685 (getValueByKey!2003 (toList!5981 lm!2023) lt!1898110)))))

(assert (= (and d!1510973 c!808759) b!4735374))

(assert (= (and d!1510973 (not c!808759)) b!4735375))

(assert (= (and d!1510973 (not res!2005372)) b!4735376))

(declare-fun m!5681141 () Bool)

(assert (=> d!1510973 m!5681141))

(declare-fun m!5681143 () Bool)

(assert (=> b!4735374 m!5681143))

(assert (=> b!4735374 m!5680977))

(assert (=> b!4735374 m!5680977))

(declare-fun m!5681145 () Bool)

(assert (=> b!4735374 m!5681145))

(assert (=> b!4735376 m!5680977))

(assert (=> b!4735376 m!5680977))

(assert (=> b!4735376 m!5681145))

(assert (=> b!4735184 d!1510973))

(declare-fun d!1510979 () Bool)

(declare-fun res!2005386 () Bool)

(declare-fun e!2953718 () Bool)

(assert (=> d!1510979 (=> res!2005386 e!2953718)))

(assert (=> d!1510979 (= res!2005386 (not ((_ is Cons!52919) newBucket!218)))))

(assert (=> d!1510979 (= (noDuplicateKeys!2046 newBucket!218) e!2953718)))

(declare-fun b!4735396 () Bool)

(declare-fun e!2953719 () Bool)

(assert (=> b!4735396 (= e!2953718 e!2953719)))

(declare-fun res!2005387 () Bool)

(assert (=> b!4735396 (=> (not res!2005387) (not e!2953719))))

(assert (=> b!4735396 (= res!2005387 (not (containsKey!3443 (t!360327 newBucket!218) (_1!30583 (h!59292 newBucket!218)))))))

(declare-fun b!4735397 () Bool)

(assert (=> b!4735397 (= e!2953719 (noDuplicateKeys!2046 (t!360327 newBucket!218)))))

(assert (= (and d!1510979 (not res!2005386)) b!4735396))

(assert (= (and b!4735396 res!2005387) b!4735397))

(declare-fun m!5681153 () Bool)

(assert (=> b!4735396 m!5681153))

(declare-fun m!5681155 () Bool)

(assert (=> b!4735397 m!5681155))

(assert (=> b!4735194 d!1510979))

(declare-fun bs!1124563 () Bool)

(declare-fun d!1510987 () Bool)

(assert (= bs!1124563 (and d!1510987 start!482896)))

(declare-fun lambda!218113 () Int)

(assert (=> bs!1124563 (not (= lambda!218113 lambda!218044))))

(declare-fun bs!1124564 () Bool)

(assert (= bs!1124564 (and d!1510987 d!1510937)))

(assert (=> bs!1124564 (not (= lambda!218113 lambda!218061))))

(declare-fun bs!1124565 () Bool)

(assert (= bs!1124565 (and d!1510987 d!1510949)))

(assert (=> bs!1124565 (not (= lambda!218113 lambda!218071))))

(assert (=> d!1510987 true))

(assert (=> d!1510987 (= (allKeysSameHashInMap!1960 lm!2023 hashF!1323) (forall!11657 (toList!5981 lm!2023) lambda!218113))))

(declare-fun bs!1124566 () Bool)

(assert (= bs!1124566 d!1510987))

(declare-fun m!5681179 () Bool)

(assert (=> bs!1124566 m!5681179))

(assert (=> b!4735193 d!1510987))

(declare-fun d!1510989 () Bool)

(declare-fun res!2005395 () Bool)

(declare-fun e!2953727 () Bool)

(assert (=> d!1510989 (=> res!2005395 e!2953727)))

(assert (=> d!1510989 (= res!2005395 ((_ is Nil!52920) (toList!5981 lm!2023)))))

(assert (=> d!1510989 (= (forall!11657 (toList!5981 lm!2023) lambda!218044) e!2953727)))

(declare-fun b!4735409 () Bool)

(declare-fun e!2953728 () Bool)

(assert (=> b!4735409 (= e!2953727 e!2953728)))

(declare-fun res!2005396 () Bool)

(assert (=> b!4735409 (=> (not res!2005396) (not e!2953728))))

(assert (=> b!4735409 (= res!2005396 (dynLambda!21861 lambda!218044 (h!59293 (toList!5981 lm!2023))))))

(declare-fun b!4735410 () Bool)

(assert (=> b!4735410 (= e!2953728 (forall!11657 (t!360328 (toList!5981 lm!2023)) lambda!218044))))

(assert (= (and d!1510989 (not res!2005395)) b!4735409))

(assert (= (and b!4735409 res!2005396) b!4735410))

(declare-fun b_lambda!181095 () Bool)

(assert (=> (not b_lambda!181095) (not b!4735409)))

(declare-fun m!5681193 () Bool)

(assert (=> b!4735409 m!5681193))

(declare-fun m!5681195 () Bool)

(assert (=> b!4735410 m!5681195))

(assert (=> start!482896 d!1510989))

(declare-fun d!1510997 () Bool)

(declare-fun isStrictlySorted!774 (List!53044) Bool)

(assert (=> d!1510997 (= (inv!68139 lm!2023) (isStrictlySorted!774 (toList!5981 lm!2023)))))

(declare-fun bs!1124585 () Bool)

(assert (= bs!1124585 d!1510997))

(declare-fun m!5681197 () Bool)

(assert (=> bs!1124585 m!5681197))

(assert (=> start!482896 d!1510997))

(declare-fun d!1510999 () Bool)

(declare-fun res!2005397 () Bool)

(declare-fun e!2953729 () Bool)

(assert (=> d!1510999 (=> res!2005397 e!2953729)))

(assert (=> d!1510999 (= res!2005397 ((_ is Nil!52920) lt!1898124))))

(assert (=> d!1510999 (= (forall!11657 lt!1898124 lambda!218044) e!2953729)))

(declare-fun b!4735411 () Bool)

(declare-fun e!2953730 () Bool)

(assert (=> b!4735411 (= e!2953729 e!2953730)))

(declare-fun res!2005398 () Bool)

(assert (=> b!4735411 (=> (not res!2005398) (not e!2953730))))

(assert (=> b!4735411 (= res!2005398 (dynLambda!21861 lambda!218044 (h!59293 lt!1898124)))))

(declare-fun b!4735412 () Bool)

(assert (=> b!4735412 (= e!2953730 (forall!11657 (t!360328 lt!1898124) lambda!218044))))

(assert (= (and d!1510999 (not res!2005397)) b!4735411))

(assert (= (and b!4735411 res!2005398) b!4735412))

(declare-fun b_lambda!181097 () Bool)

(assert (=> (not b_lambda!181097) (not b!4735411)))

(declare-fun m!5681199 () Bool)

(assert (=> b!4735411 m!5681199))

(declare-fun m!5681201 () Bool)

(assert (=> b!4735412 m!5681201))

(assert (=> b!4735182 d!1510999))

(declare-fun d!1511001 () Bool)

(declare-fun res!2005399 () Bool)

(declare-fun e!2953731 () Bool)

(assert (=> d!1511001 (=> res!2005399 e!2953731)))

(assert (=> d!1511001 (= res!2005399 (not ((_ is Cons!52919) oldBucket!34)))))

(assert (=> d!1511001 (= (noDuplicateKeys!2046 oldBucket!34) e!2953731)))

(declare-fun b!4735413 () Bool)

(declare-fun e!2953732 () Bool)

(assert (=> b!4735413 (= e!2953731 e!2953732)))

(declare-fun res!2005400 () Bool)

(assert (=> b!4735413 (=> (not res!2005400) (not e!2953732))))

(assert (=> b!4735413 (= res!2005400 (not (containsKey!3443 (t!360327 oldBucket!34) (_1!30583 (h!59292 oldBucket!34)))))))

(declare-fun b!4735414 () Bool)

(assert (=> b!4735414 (= e!2953732 (noDuplicateKeys!2046 (t!360327 oldBucket!34)))))

(assert (= (and d!1511001 (not res!2005399)) b!4735413))

(assert (= (and b!4735413 res!2005400) b!4735414))

(declare-fun m!5681203 () Bool)

(assert (=> b!4735413 m!5681203))

(assert (=> b!4735414 m!5680931))

(assert (=> b!4735181 d!1511001))

(declare-fun d!1511003 () Bool)

(declare-fun res!2005401 () Bool)

(declare-fun e!2953733 () Bool)

(assert (=> d!1511003 (=> res!2005401 e!2953733)))

(assert (=> d!1511003 (= res!2005401 (not ((_ is Cons!52919) (t!360327 oldBucket!34))))))

(assert (=> d!1511003 (= (noDuplicateKeys!2046 (t!360327 oldBucket!34)) e!2953733)))

(declare-fun b!4735415 () Bool)

(declare-fun e!2953734 () Bool)

(assert (=> b!4735415 (= e!2953733 e!2953734)))

(declare-fun res!2005402 () Bool)

(assert (=> b!4735415 (=> (not res!2005402) (not e!2953734))))

(assert (=> b!4735415 (= res!2005402 (not (containsKey!3443 (t!360327 (t!360327 oldBucket!34)) (_1!30583 (h!59292 (t!360327 oldBucket!34))))))))

(declare-fun b!4735416 () Bool)

(assert (=> b!4735416 (= e!2953734 (noDuplicateKeys!2046 (t!360327 (t!360327 oldBucket!34))))))

(assert (= (and d!1511003 (not res!2005401)) b!4735415))

(assert (= (and b!4735415 res!2005402) b!4735416))

(declare-fun m!5681205 () Bool)

(assert (=> b!4735415 m!5681205))

(declare-fun m!5681207 () Bool)

(assert (=> b!4735416 m!5681207))

(assert (=> b!4735192 d!1511003))

(declare-fun b!4735435 () Bool)

(declare-datatypes ((List!53046 0))(
  ( (Nil!52922) (Cons!52922 (h!59297 K!14265) (t!360332 List!53046)) )
))
(declare-fun e!2953749 () List!53046)

(declare-fun getKeysList!976 (List!53043) List!53046)

(assert (=> b!4735435 (= e!2953749 (getKeysList!976 (toList!5982 (extractMap!2072 lt!1898124))))))

(declare-fun d!1511005 () Bool)

(declare-fun e!2953748 () Bool)

(assert (=> d!1511005 e!2953748))

(declare-fun res!2005411 () Bool)

(assert (=> d!1511005 (=> res!2005411 e!2953748)))

(declare-fun e!2953747 () Bool)

(assert (=> d!1511005 (= res!2005411 e!2953747)))

(declare-fun res!2005409 () Bool)

(assert (=> d!1511005 (=> (not res!2005409) (not e!2953747))))

(declare-fun lt!1898367 () Bool)

(assert (=> d!1511005 (= res!2005409 (not lt!1898367))))

(declare-fun lt!1898369 () Bool)

(assert (=> d!1511005 (= lt!1898367 lt!1898369)))

(declare-fun lt!1898372 () Unit!132179)

(declare-fun e!2953750 () Unit!132179)

(assert (=> d!1511005 (= lt!1898372 e!2953750)))

(declare-fun c!808772 () Bool)

(assert (=> d!1511005 (= c!808772 lt!1898369)))

(declare-fun containsKey!3447 (List!53043 K!14265) Bool)

(assert (=> d!1511005 (= lt!1898369 (containsKey!3447 (toList!5982 (extractMap!2072 lt!1898124)) key!4653))))

(assert (=> d!1511005 (= (contains!16308 (extractMap!2072 lt!1898124) key!4653) lt!1898367)))

(declare-fun b!4735436 () Bool)

(declare-fun contains!16312 (List!53046 K!14265) Bool)

(declare-fun keys!19033 (ListMap!5345) List!53046)

(assert (=> b!4735436 (= e!2953747 (not (contains!16312 (keys!19033 (extractMap!2072 lt!1898124)) key!4653)))))

(declare-fun b!4735437 () Bool)

(assert (=> b!4735437 (= e!2953749 (keys!19033 (extractMap!2072 lt!1898124)))))

(declare-fun b!4735438 () Bool)

(declare-fun lt!1898373 () Unit!132179)

(assert (=> b!4735438 (= e!2953750 lt!1898373)))

(declare-fun lt!1898371 () Unit!132179)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1896 (List!53043 K!14265) Unit!132179)

(assert (=> b!4735438 (= lt!1898371 (lemmaContainsKeyImpliesGetValueByKeyDefined!1896 (toList!5982 (extractMap!2072 lt!1898124)) key!4653))))

(declare-datatypes ((Option!12433 0))(
  ( (None!12432) (Some!12432 (v!47077 V!14511)) )
))
(declare-fun isDefined!9687 (Option!12433) Bool)

(declare-fun getValueByKey!2005 (List!53043 K!14265) Option!12433)

(assert (=> b!4735438 (isDefined!9687 (getValueByKey!2005 (toList!5982 (extractMap!2072 lt!1898124)) key!4653))))

(declare-fun lt!1898370 () Unit!132179)

(assert (=> b!4735438 (= lt!1898370 lt!1898371)))

(declare-fun lemmaInListThenGetKeysListContains!971 (List!53043 K!14265) Unit!132179)

(assert (=> b!4735438 (= lt!1898373 (lemmaInListThenGetKeysListContains!971 (toList!5982 (extractMap!2072 lt!1898124)) key!4653))))

(declare-fun call!331247 () Bool)

(assert (=> b!4735438 call!331247))

(declare-fun b!4735439 () Bool)

(declare-fun e!2953751 () Bool)

(assert (=> b!4735439 (= e!2953751 (contains!16312 (keys!19033 (extractMap!2072 lt!1898124)) key!4653))))

(declare-fun b!4735440 () Bool)

(declare-fun e!2953752 () Unit!132179)

(assert (=> b!4735440 (= e!2953750 e!2953752)))

(declare-fun c!808770 () Bool)

(assert (=> b!4735440 (= c!808770 call!331247)))

(declare-fun b!4735441 () Bool)

(assert (=> b!4735441 (= e!2953748 e!2953751)))

(declare-fun res!2005410 () Bool)

(assert (=> b!4735441 (=> (not res!2005410) (not e!2953751))))

(assert (=> b!4735441 (= res!2005410 (isDefined!9687 (getValueByKey!2005 (toList!5982 (extractMap!2072 lt!1898124)) key!4653)))))

(declare-fun b!4735442 () Bool)

(declare-fun Unit!132218 () Unit!132179)

(assert (=> b!4735442 (= e!2953752 Unit!132218)))

(declare-fun bm!331242 () Bool)

(assert (=> bm!331242 (= call!331247 (contains!16312 e!2953749 key!4653))))

(declare-fun c!808771 () Bool)

(assert (=> bm!331242 (= c!808771 c!808772)))

(declare-fun b!4735443 () Bool)

(assert (=> b!4735443 false))

(declare-fun lt!1898366 () Unit!132179)

(declare-fun lt!1898368 () Unit!132179)

(assert (=> b!4735443 (= lt!1898366 lt!1898368)))

(assert (=> b!4735443 (containsKey!3447 (toList!5982 (extractMap!2072 lt!1898124)) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!975 (List!53043 K!14265) Unit!132179)

(assert (=> b!4735443 (= lt!1898368 (lemmaInGetKeysListThenContainsKey!975 (toList!5982 (extractMap!2072 lt!1898124)) key!4653))))

(declare-fun Unit!132219 () Unit!132179)

(assert (=> b!4735443 (= e!2953752 Unit!132219)))

(assert (= (and d!1511005 c!808772) b!4735438))

(assert (= (and d!1511005 (not c!808772)) b!4735440))

(assert (= (and b!4735440 c!808770) b!4735443))

(assert (= (and b!4735440 (not c!808770)) b!4735442))

(assert (= (or b!4735438 b!4735440) bm!331242))

(assert (= (and bm!331242 c!808771) b!4735435))

(assert (= (and bm!331242 (not c!808771)) b!4735437))

(assert (= (and d!1511005 res!2005409) b!4735436))

(assert (= (and d!1511005 (not res!2005411)) b!4735441))

(assert (= (and b!4735441 res!2005410) b!4735439))

(assert (=> b!4735436 m!5680891))

(declare-fun m!5681249 () Bool)

(assert (=> b!4735436 m!5681249))

(assert (=> b!4735436 m!5681249))

(declare-fun m!5681251 () Bool)

(assert (=> b!4735436 m!5681251))

(assert (=> b!4735437 m!5680891))

(assert (=> b!4735437 m!5681249))

(declare-fun m!5681253 () Bool)

(assert (=> b!4735435 m!5681253))

(declare-fun m!5681255 () Bool)

(assert (=> d!1511005 m!5681255))

(assert (=> b!4735443 m!5681255))

(declare-fun m!5681257 () Bool)

(assert (=> b!4735443 m!5681257))

(assert (=> b!4735439 m!5680891))

(assert (=> b!4735439 m!5681249))

(assert (=> b!4735439 m!5681249))

(assert (=> b!4735439 m!5681251))

(declare-fun m!5681259 () Bool)

(assert (=> b!4735441 m!5681259))

(assert (=> b!4735441 m!5681259))

(declare-fun m!5681261 () Bool)

(assert (=> b!4735441 m!5681261))

(declare-fun m!5681263 () Bool)

(assert (=> b!4735438 m!5681263))

(assert (=> b!4735438 m!5681259))

(assert (=> b!4735438 m!5681259))

(assert (=> b!4735438 m!5681261))

(declare-fun m!5681265 () Bool)

(assert (=> b!4735438 m!5681265))

(declare-fun m!5681267 () Bool)

(assert (=> bm!331242 m!5681267))

(assert (=> b!4735191 d!1511005))

(declare-fun bs!1124613 () Bool)

(declare-fun d!1511011 () Bool)

(assert (= bs!1124613 (and d!1511011 start!482896)))

(declare-fun lambda!218124 () Int)

(assert (=> bs!1124613 (= lambda!218124 lambda!218044)))

(declare-fun bs!1124614 () Bool)

(assert (= bs!1124614 (and d!1511011 d!1510937)))

(assert (=> bs!1124614 (= lambda!218124 lambda!218061)))

(declare-fun bs!1124615 () Bool)

(assert (= bs!1124615 (and d!1511011 d!1510949)))

(assert (=> bs!1124615 (= lambda!218124 lambda!218071)))

(declare-fun bs!1124616 () Bool)

(assert (= bs!1124616 (and d!1511011 d!1510987)))

(assert (=> bs!1124616 (not (= lambda!218124 lambda!218113))))

(declare-fun lt!1898421 () ListMap!5345)

(declare-fun invariantList!1537 (List!53043) Bool)

(assert (=> d!1511011 (invariantList!1537 (toList!5982 lt!1898421))))

(declare-fun e!2953776 () ListMap!5345)

(assert (=> d!1511011 (= lt!1898421 e!2953776)))

(declare-fun c!808785 () Bool)

(assert (=> d!1511011 (= c!808785 ((_ is Cons!52920) lt!1898124))))

(assert (=> d!1511011 (forall!11657 lt!1898124 lambda!218124)))

(assert (=> d!1511011 (= (extractMap!2072 lt!1898124) lt!1898421)))

(declare-fun b!4735480 () Bool)

(assert (=> b!4735480 (= e!2953776 (addToMapMapFromBucket!1476 (_2!30584 (h!59293 lt!1898124)) (extractMap!2072 (t!360328 lt!1898124))))))

(declare-fun b!4735481 () Bool)

(assert (=> b!4735481 (= e!2953776 (ListMap!5346 Nil!52919))))

(assert (= (and d!1511011 c!808785) b!4735480))

(assert (= (and d!1511011 (not c!808785)) b!4735481))

(declare-fun m!5681293 () Bool)

(assert (=> d!1511011 m!5681293))

(declare-fun m!5681295 () Bool)

(assert (=> d!1511011 m!5681295))

(declare-fun m!5681297 () Bool)

(assert (=> b!4735480 m!5681297))

(assert (=> b!4735480 m!5681297))

(declare-fun m!5681299 () Bool)

(assert (=> b!4735480 m!5681299))

(assert (=> b!4735191 d!1511011))

(declare-fun bs!1124627 () Bool)

(declare-fun d!1511017 () Bool)

(assert (= bs!1124627 (and d!1511017 d!1510949)))

(declare-fun lambda!218126 () Int)

(assert (=> bs!1124627 (= lambda!218126 lambda!218071)))

(declare-fun bs!1124630 () Bool)

(assert (= bs!1124630 (and d!1511017 start!482896)))

(assert (=> bs!1124630 (= lambda!218126 lambda!218044)))

(declare-fun bs!1124631 () Bool)

(assert (= bs!1124631 (and d!1511017 d!1510937)))

(assert (=> bs!1124631 (= lambda!218126 lambda!218061)))

(declare-fun bs!1124632 () Bool)

(assert (= bs!1124632 (and d!1511017 d!1511011)))

(assert (=> bs!1124632 (= lambda!218126 lambda!218124)))

(declare-fun bs!1124633 () Bool)

(assert (= bs!1124633 (and d!1511017 d!1510987)))

(assert (=> bs!1124633 (not (= lambda!218126 lambda!218113))))

(declare-fun lt!1898422 () ListMap!5345)

(assert (=> d!1511017 (invariantList!1537 (toList!5982 lt!1898422))))

(declare-fun e!2953777 () ListMap!5345)

(assert (=> d!1511017 (= lt!1898422 e!2953777)))

(declare-fun c!808786 () Bool)

(assert (=> d!1511017 (= c!808786 ((_ is Cons!52920) (Cons!52920 (tuple2!54581 hash!405 lt!1898122) (t!360328 (toList!5981 lm!2023)))))))

(assert (=> d!1511017 (forall!11657 (Cons!52920 (tuple2!54581 hash!405 lt!1898122) (t!360328 (toList!5981 lm!2023))) lambda!218126)))

(assert (=> d!1511017 (= (extractMap!2072 (Cons!52920 (tuple2!54581 hash!405 lt!1898122) (t!360328 (toList!5981 lm!2023)))) lt!1898422)))

(declare-fun b!4735482 () Bool)

(assert (=> b!4735482 (= e!2953777 (addToMapMapFromBucket!1476 (_2!30584 (h!59293 (Cons!52920 (tuple2!54581 hash!405 lt!1898122) (t!360328 (toList!5981 lm!2023))))) (extractMap!2072 (t!360328 (Cons!52920 (tuple2!54581 hash!405 lt!1898122) (t!360328 (toList!5981 lm!2023)))))))))

(declare-fun b!4735483 () Bool)

(assert (=> b!4735483 (= e!2953777 (ListMap!5346 Nil!52919))))

(assert (= (and d!1511017 c!808786) b!4735482))

(assert (= (and d!1511017 (not c!808786)) b!4735483))

(declare-fun m!5681301 () Bool)

(assert (=> d!1511017 m!5681301))

(declare-fun m!5681303 () Bool)

(assert (=> d!1511017 m!5681303))

(declare-fun m!5681305 () Bool)

(assert (=> b!4735482 m!5681305))

(assert (=> b!4735482 m!5681305))

(declare-fun m!5681307 () Bool)

(assert (=> b!4735482 m!5681307))

(assert (=> b!4735191 d!1511017))

(declare-fun d!1511019 () Bool)

(assert (=> d!1511019 (eq!1143 (addToMapMapFromBucket!1476 (Cons!52919 lt!1898116 lt!1898106) lt!1898123) (+!2294 (addToMapMapFromBucket!1476 lt!1898106 lt!1898123) lt!1898116))))

(declare-fun lt!1898447 () Unit!132179)

(declare-fun choose!33556 (tuple2!54578 List!53043 ListMap!5345) Unit!132179)

(assert (=> d!1511019 (= lt!1898447 (choose!33556 lt!1898116 lt!1898106 lt!1898123))))

(assert (=> d!1511019 (noDuplicateKeys!2046 lt!1898106)))

(assert (=> d!1511019 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!392 lt!1898116 lt!1898106 lt!1898123) lt!1898447)))

(declare-fun bs!1124680 () Bool)

(assert (= bs!1124680 d!1511019))

(assert (=> bs!1124680 m!5680903))

(declare-fun m!5681349 () Bool)

(assert (=> bs!1124680 m!5681349))

(assert (=> bs!1124680 m!5680903))

(assert (=> bs!1124680 m!5680897))

(assert (=> bs!1124680 m!5680889))

(assert (=> bs!1124680 m!5680897))

(assert (=> bs!1124680 m!5680899))

(declare-fun m!5681351 () Bool)

(assert (=> bs!1124680 m!5681351))

(assert (=> bs!1124680 m!5680889))

(assert (=> b!4735191 d!1511019))

(declare-fun d!1511025 () Bool)

(declare-fun e!2953784 () Bool)

(assert (=> d!1511025 e!2953784))

(declare-fun res!2005432 () Bool)

(assert (=> d!1511025 (=> (not res!2005432) (not e!2953784))))

(declare-fun lt!1898458 () ListMap!5345)

(assert (=> d!1511025 (= res!2005432 (contains!16308 lt!1898458 (_1!30583 lt!1898116)))))

(declare-fun lt!1898459 () List!53043)

(assert (=> d!1511025 (= lt!1898458 (ListMap!5346 lt!1898459))))

(declare-fun lt!1898457 () Unit!132179)

(declare-fun lt!1898456 () Unit!132179)

(assert (=> d!1511025 (= lt!1898457 lt!1898456)))

(assert (=> d!1511025 (= (getValueByKey!2005 lt!1898459 (_1!30583 lt!1898116)) (Some!12432 (_2!30583 lt!1898116)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1103 (List!53043 K!14265 V!14511) Unit!132179)

(assert (=> d!1511025 (= lt!1898456 (lemmaContainsTupThenGetReturnValue!1103 lt!1898459 (_1!30583 lt!1898116) (_2!30583 lt!1898116)))))

(declare-fun insertNoDuplicatedKeys!611 (List!53043 K!14265 V!14511) List!53043)

(assert (=> d!1511025 (= lt!1898459 (insertNoDuplicatedKeys!611 (toList!5982 (addToMapMapFromBucket!1476 lt!1898106 lt!1898123)) (_1!30583 lt!1898116) (_2!30583 lt!1898116)))))

(assert (=> d!1511025 (= (+!2294 (addToMapMapFromBucket!1476 lt!1898106 lt!1898123) lt!1898116) lt!1898458)))

(declare-fun b!4735495 () Bool)

(declare-fun res!2005431 () Bool)

(assert (=> b!4735495 (=> (not res!2005431) (not e!2953784))))

(assert (=> b!4735495 (= res!2005431 (= (getValueByKey!2005 (toList!5982 lt!1898458) (_1!30583 lt!1898116)) (Some!12432 (_2!30583 lt!1898116))))))

(declare-fun b!4735496 () Bool)

(assert (=> b!4735496 (= e!2953784 (contains!16310 (toList!5982 lt!1898458) lt!1898116))))

(assert (= (and d!1511025 res!2005432) b!4735495))

(assert (= (and b!4735495 res!2005431) b!4735496))

(declare-fun m!5681385 () Bool)

(assert (=> d!1511025 m!5681385))

(declare-fun m!5681387 () Bool)

(assert (=> d!1511025 m!5681387))

(declare-fun m!5681389 () Bool)

(assert (=> d!1511025 m!5681389))

(declare-fun m!5681391 () Bool)

(assert (=> d!1511025 m!5681391))

(declare-fun m!5681393 () Bool)

(assert (=> b!4735495 m!5681393))

(declare-fun m!5681395 () Bool)

(assert (=> b!4735496 m!5681395))

(assert (=> b!4735191 d!1511025))

(declare-fun bs!1124736 () Bool)

(declare-fun b!4735553 () Bool)

(assert (= bs!1124736 (and b!4735553 d!1510929)))

(declare-fun lambda!218168 () Int)

(assert (=> bs!1124736 (not (= lambda!218168 lambda!218054))))

(assert (=> b!4735553 true))

(declare-fun bs!1124737 () Bool)

(declare-fun b!4735555 () Bool)

(assert (= bs!1124737 (and b!4735555 d!1510929)))

(declare-fun lambda!218169 () Int)

(assert (=> bs!1124737 (not (= lambda!218169 lambda!218054))))

(declare-fun bs!1124738 () Bool)

(assert (= bs!1124738 (and b!4735555 b!4735553)))

(assert (=> bs!1124738 (= lambda!218169 lambda!218168)))

(assert (=> b!4735555 true))

(declare-fun lambda!218170 () Int)

(assert (=> bs!1124737 (not (= lambda!218170 lambda!218054))))

(declare-fun lt!1898552 () ListMap!5345)

(assert (=> bs!1124738 (= (= lt!1898552 lt!1898123) (= lambda!218170 lambda!218168))))

(assert (=> b!4735555 (= (= lt!1898552 lt!1898123) (= lambda!218170 lambda!218169))))

(assert (=> b!4735555 true))

(declare-fun bs!1124739 () Bool)

(declare-fun d!1511029 () Bool)

(assert (= bs!1124739 (and d!1511029 d!1510929)))

(declare-fun lambda!218171 () Int)

(assert (=> bs!1124739 (not (= lambda!218171 lambda!218054))))

(declare-fun bs!1124740 () Bool)

(assert (= bs!1124740 (and d!1511029 b!4735553)))

(declare-fun lt!1898549 () ListMap!5345)

(assert (=> bs!1124740 (= (= lt!1898549 lt!1898123) (= lambda!218171 lambda!218168))))

(declare-fun bs!1124741 () Bool)

(assert (= bs!1124741 (and d!1511029 b!4735555)))

(assert (=> bs!1124741 (= (= lt!1898549 lt!1898123) (= lambda!218171 lambda!218169))))

(assert (=> bs!1124741 (= (= lt!1898549 lt!1898552) (= lambda!218171 lambda!218170))))

(assert (=> d!1511029 true))

(declare-fun call!331264 () Bool)

(declare-fun c!808797 () Bool)

(declare-fun bm!331259 () Bool)

(assert (=> bm!331259 (= call!331264 (forall!11659 (toList!5982 lt!1898123) (ite c!808797 lambda!218168 lambda!218170)))))

(declare-fun call!331266 () Bool)

(declare-fun lt!1898560 () ListMap!5345)

(declare-fun bm!331260 () Bool)

(assert (=> bm!331260 (= call!331266 (forall!11659 (ite c!808797 (toList!5982 lt!1898123) (toList!5982 lt!1898560)) (ite c!808797 lambda!218168 lambda!218170)))))

(declare-fun b!4735551 () Bool)

(declare-fun res!2005458 () Bool)

(declare-fun e!2953819 () Bool)

(assert (=> b!4735551 (=> (not res!2005458) (not e!2953819))))

(assert (=> b!4735551 (= res!2005458 (forall!11659 (toList!5982 lt!1898123) lambda!218171))))

(declare-fun b!4735552 () Bool)

(assert (=> b!4735552 (= e!2953819 (invariantList!1537 (toList!5982 lt!1898549)))))

(declare-fun e!2953818 () ListMap!5345)

(assert (=> b!4735553 (= e!2953818 lt!1898123)))

(declare-fun lt!1898548 () Unit!132179)

(declare-fun call!331265 () Unit!132179)

(assert (=> b!4735553 (= lt!1898548 call!331265)))

(assert (=> b!4735553 call!331266))

(declare-fun lt!1898553 () Unit!132179)

(assert (=> b!4735553 (= lt!1898553 lt!1898548)))

(assert (=> b!4735553 call!331264))

(declare-fun lt!1898547 () Unit!132179)

(declare-fun Unit!132231 () Unit!132179)

(assert (=> b!4735553 (= lt!1898547 Unit!132231)))

(declare-fun b!4735554 () Bool)

(declare-fun e!2953817 () Bool)

(assert (=> b!4735554 (= e!2953817 (forall!11659 (toList!5982 lt!1898123) lambda!218170))))

(assert (=> b!4735555 (= e!2953818 lt!1898552)))

(assert (=> b!4735555 (= lt!1898560 (+!2294 lt!1898123 (h!59292 (Cons!52919 lt!1898116 lt!1898106))))))

(assert (=> b!4735555 (= lt!1898552 (addToMapMapFromBucket!1476 (t!360327 (Cons!52919 lt!1898116 lt!1898106)) (+!2294 lt!1898123 (h!59292 (Cons!52919 lt!1898116 lt!1898106)))))))

(declare-fun lt!1898559 () Unit!132179)

(assert (=> b!4735555 (= lt!1898559 call!331265)))

(assert (=> b!4735555 (forall!11659 (toList!5982 lt!1898123) lambda!218169)))

(declare-fun lt!1898541 () Unit!132179)

(assert (=> b!4735555 (= lt!1898541 lt!1898559)))

(assert (=> b!4735555 (forall!11659 (toList!5982 lt!1898560) lambda!218170)))

(declare-fun lt!1898543 () Unit!132179)

(declare-fun Unit!132232 () Unit!132179)

(assert (=> b!4735555 (= lt!1898543 Unit!132232)))

(assert (=> b!4735555 (forall!11659 (t!360327 (Cons!52919 lt!1898116 lt!1898106)) lambda!218170)))

(declare-fun lt!1898546 () Unit!132179)

(declare-fun Unit!132233 () Unit!132179)

(assert (=> b!4735555 (= lt!1898546 Unit!132233)))

(declare-fun lt!1898556 () Unit!132179)

(declare-fun Unit!132234 () Unit!132179)

(assert (=> b!4735555 (= lt!1898556 Unit!132234)))

(declare-fun lt!1898561 () Unit!132179)

(declare-fun forallContained!3699 (List!53043 Int tuple2!54578) Unit!132179)

(assert (=> b!4735555 (= lt!1898561 (forallContained!3699 (toList!5982 lt!1898560) lambda!218170 (h!59292 (Cons!52919 lt!1898116 lt!1898106))))))

(assert (=> b!4735555 (contains!16308 lt!1898560 (_1!30583 (h!59292 (Cons!52919 lt!1898116 lt!1898106))))))

(declare-fun lt!1898545 () Unit!132179)

(declare-fun Unit!132235 () Unit!132179)

(assert (=> b!4735555 (= lt!1898545 Unit!132235)))

(assert (=> b!4735555 (contains!16308 lt!1898552 (_1!30583 (h!59292 (Cons!52919 lt!1898116 lt!1898106))))))

(declare-fun lt!1898550 () Unit!132179)

(declare-fun Unit!132236 () Unit!132179)

(assert (=> b!4735555 (= lt!1898550 Unit!132236)))

(assert (=> b!4735555 (forall!11659 (Cons!52919 lt!1898116 lt!1898106) lambda!218170)))

(declare-fun lt!1898557 () Unit!132179)

(declare-fun Unit!132237 () Unit!132179)

(assert (=> b!4735555 (= lt!1898557 Unit!132237)))

(assert (=> b!4735555 call!331266))

(declare-fun lt!1898554 () Unit!132179)

(declare-fun Unit!132238 () Unit!132179)

(assert (=> b!4735555 (= lt!1898554 Unit!132238)))

(declare-fun lt!1898542 () Unit!132179)

(declare-fun Unit!132239 () Unit!132179)

(assert (=> b!4735555 (= lt!1898542 Unit!132239)))

(declare-fun lt!1898544 () Unit!132179)

(declare-fun addForallContainsKeyThenBeforeAdding!821 (ListMap!5345 ListMap!5345 K!14265 V!14511) Unit!132179)

(assert (=> b!4735555 (= lt!1898544 (addForallContainsKeyThenBeforeAdding!821 lt!1898123 lt!1898552 (_1!30583 (h!59292 (Cons!52919 lt!1898116 lt!1898106))) (_2!30583 (h!59292 (Cons!52919 lt!1898116 lt!1898106)))))))

(assert (=> b!4735555 (forall!11659 (toList!5982 lt!1898123) lambda!218170)))

(declare-fun lt!1898555 () Unit!132179)

(assert (=> b!4735555 (= lt!1898555 lt!1898544)))

(assert (=> b!4735555 call!331264))

(declare-fun lt!1898558 () Unit!132179)

(declare-fun Unit!132240 () Unit!132179)

(assert (=> b!4735555 (= lt!1898558 Unit!132240)))

(declare-fun res!2005460 () Bool)

(assert (=> b!4735555 (= res!2005460 (forall!11659 (Cons!52919 lt!1898116 lt!1898106) lambda!218170))))

(assert (=> b!4735555 (=> (not res!2005460) (not e!2953817))))

(assert (=> b!4735555 e!2953817))

(declare-fun lt!1898551 () Unit!132179)

(declare-fun Unit!132241 () Unit!132179)

(assert (=> b!4735555 (= lt!1898551 Unit!132241)))

(assert (=> d!1511029 e!2953819))

(declare-fun res!2005459 () Bool)

(assert (=> d!1511029 (=> (not res!2005459) (not e!2953819))))

(assert (=> d!1511029 (= res!2005459 (forall!11659 (Cons!52919 lt!1898116 lt!1898106) lambda!218171))))

(assert (=> d!1511029 (= lt!1898549 e!2953818)))

(assert (=> d!1511029 (= c!808797 ((_ is Nil!52919) (Cons!52919 lt!1898116 lt!1898106)))))

(assert (=> d!1511029 (noDuplicateKeys!2046 (Cons!52919 lt!1898116 lt!1898106))))

(assert (=> d!1511029 (= (addToMapMapFromBucket!1476 (Cons!52919 lt!1898116 lt!1898106) lt!1898123) lt!1898549)))

(declare-fun bm!331261 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!822 (ListMap!5345) Unit!132179)

(assert (=> bm!331261 (= call!331265 (lemmaContainsAllItsOwnKeys!822 lt!1898123))))

(assert (= (and d!1511029 c!808797) b!4735553))

(assert (= (and d!1511029 (not c!808797)) b!4735555))

(assert (= (and b!4735555 res!2005460) b!4735554))

(assert (= (or b!4735553 b!4735555) bm!331261))

(assert (= (or b!4735553 b!4735555) bm!331260))

(assert (= (or b!4735553 b!4735555) bm!331259))

(assert (= (and d!1511029 res!2005459) b!4735551))

(assert (= (and b!4735551 res!2005458) b!4735552))

(declare-fun m!5681511 () Bool)

(assert (=> d!1511029 m!5681511))

(declare-fun m!5681513 () Bool)

(assert (=> d!1511029 m!5681513))

(declare-fun m!5681515 () Bool)

(assert (=> b!4735555 m!5681515))

(declare-fun m!5681517 () Bool)

(assert (=> b!4735555 m!5681517))

(declare-fun m!5681519 () Bool)

(assert (=> b!4735555 m!5681519))

(assert (=> b!4735555 m!5681517))

(declare-fun m!5681521 () Bool)

(assert (=> b!4735555 m!5681521))

(declare-fun m!5681523 () Bool)

(assert (=> b!4735555 m!5681523))

(declare-fun m!5681525 () Bool)

(assert (=> b!4735555 m!5681525))

(declare-fun m!5681527 () Bool)

(assert (=> b!4735555 m!5681527))

(declare-fun m!5681529 () Bool)

(assert (=> b!4735555 m!5681529))

(assert (=> b!4735555 m!5681527))

(declare-fun m!5681531 () Bool)

(assert (=> b!4735555 m!5681531))

(declare-fun m!5681533 () Bool)

(assert (=> b!4735555 m!5681533))

(declare-fun m!5681535 () Bool)

(assert (=> b!4735555 m!5681535))

(declare-fun m!5681537 () Bool)

(assert (=> bm!331259 m!5681537))

(declare-fun m!5681539 () Bool)

(assert (=> bm!331261 m!5681539))

(assert (=> b!4735554 m!5681523))

(declare-fun m!5681541 () Bool)

(assert (=> b!4735551 m!5681541))

(declare-fun m!5681543 () Bool)

(assert (=> b!4735552 m!5681543))

(declare-fun m!5681545 () Bool)

(assert (=> bm!331260 m!5681545))

(assert (=> b!4735191 d!1511029))

(declare-fun d!1511069 () Bool)

(declare-fun e!2953820 () Bool)

(assert (=> d!1511069 e!2953820))

(declare-fun res!2005462 () Bool)

(assert (=> d!1511069 (=> (not res!2005462) (not e!2953820))))

(declare-fun lt!1898564 () ListMap!5345)

(assert (=> d!1511069 (= res!2005462 (contains!16308 lt!1898564 (_1!30583 lt!1898119)))))

(declare-fun lt!1898565 () List!53043)

(assert (=> d!1511069 (= lt!1898564 (ListMap!5346 lt!1898565))))

(declare-fun lt!1898563 () Unit!132179)

(declare-fun lt!1898562 () Unit!132179)

(assert (=> d!1511069 (= lt!1898563 lt!1898562)))

(assert (=> d!1511069 (= (getValueByKey!2005 lt!1898565 (_1!30583 lt!1898119)) (Some!12432 (_2!30583 lt!1898119)))))

(assert (=> d!1511069 (= lt!1898562 (lemmaContainsTupThenGetReturnValue!1103 lt!1898565 (_1!30583 lt!1898119) (_2!30583 lt!1898119)))))

(assert (=> d!1511069 (= lt!1898565 (insertNoDuplicatedKeys!611 (toList!5982 (addToMapMapFromBucket!1476 lt!1898122 lt!1898123)) (_1!30583 lt!1898119) (_2!30583 lt!1898119)))))

(assert (=> d!1511069 (= (+!2294 (addToMapMapFromBucket!1476 lt!1898122 lt!1898123) lt!1898119) lt!1898564)))

(declare-fun b!4735558 () Bool)

(declare-fun res!2005461 () Bool)

(assert (=> b!4735558 (=> (not res!2005461) (not e!2953820))))

(assert (=> b!4735558 (= res!2005461 (= (getValueByKey!2005 (toList!5982 lt!1898564) (_1!30583 lt!1898119)) (Some!12432 (_2!30583 lt!1898119))))))

(declare-fun b!4735559 () Bool)

(assert (=> b!4735559 (= e!2953820 (contains!16310 (toList!5982 lt!1898564) lt!1898119))))

(assert (= (and d!1511069 res!2005462) b!4735558))

(assert (= (and b!4735558 res!2005461) b!4735559))

(declare-fun m!5681547 () Bool)

(assert (=> d!1511069 m!5681547))

(declare-fun m!5681549 () Bool)

(assert (=> d!1511069 m!5681549))

(declare-fun m!5681551 () Bool)

(assert (=> d!1511069 m!5681551))

(declare-fun m!5681553 () Bool)

(assert (=> d!1511069 m!5681553))

(declare-fun m!5681555 () Bool)

(assert (=> b!4735558 m!5681555))

(declare-fun m!5681557 () Bool)

(assert (=> b!4735559 m!5681557))

(assert (=> b!4735191 d!1511069))

(declare-fun bs!1124742 () Bool)

(declare-fun d!1511071 () Bool)

(assert (= bs!1124742 (and d!1511071 d!1510949)))

(declare-fun lambda!218172 () Int)

(assert (=> bs!1124742 (= lambda!218172 lambda!218071)))

(declare-fun bs!1124743 () Bool)

(assert (= bs!1124743 (and d!1511071 start!482896)))

(assert (=> bs!1124743 (= lambda!218172 lambda!218044)))

(declare-fun bs!1124744 () Bool)

(assert (= bs!1124744 (and d!1511071 d!1511017)))

(assert (=> bs!1124744 (= lambda!218172 lambda!218126)))

(declare-fun bs!1124745 () Bool)

(assert (= bs!1124745 (and d!1511071 d!1510937)))

(assert (=> bs!1124745 (= lambda!218172 lambda!218061)))

(declare-fun bs!1124746 () Bool)

(assert (= bs!1124746 (and d!1511071 d!1511011)))

(assert (=> bs!1124746 (= lambda!218172 lambda!218124)))

(declare-fun bs!1124747 () Bool)

(assert (= bs!1124747 (and d!1511071 d!1510987)))

(assert (=> bs!1124747 (not (= lambda!218172 lambda!218113))))

(declare-fun lt!1898566 () ListMap!5345)

(assert (=> d!1511071 (invariantList!1537 (toList!5982 lt!1898566))))

(declare-fun e!2953821 () ListMap!5345)

(assert (=> d!1511071 (= lt!1898566 e!2953821)))

(declare-fun c!808798 () Bool)

(assert (=> d!1511071 (= c!808798 ((_ is Cons!52920) (Cons!52920 lt!1898108 (t!360328 (toList!5981 lm!2023)))))))

(assert (=> d!1511071 (forall!11657 (Cons!52920 lt!1898108 (t!360328 (toList!5981 lm!2023))) lambda!218172)))

(assert (=> d!1511071 (= (extractMap!2072 (Cons!52920 lt!1898108 (t!360328 (toList!5981 lm!2023)))) lt!1898566)))

(declare-fun b!4735560 () Bool)

(assert (=> b!4735560 (= e!2953821 (addToMapMapFromBucket!1476 (_2!30584 (h!59293 (Cons!52920 lt!1898108 (t!360328 (toList!5981 lm!2023))))) (extractMap!2072 (t!360328 (Cons!52920 lt!1898108 (t!360328 (toList!5981 lm!2023)))))))))

(declare-fun b!4735561 () Bool)

(assert (=> b!4735561 (= e!2953821 (ListMap!5346 Nil!52919))))

(assert (= (and d!1511071 c!808798) b!4735560))

(assert (= (and d!1511071 (not c!808798)) b!4735561))

(declare-fun m!5681559 () Bool)

(assert (=> d!1511071 m!5681559))

(declare-fun m!5681561 () Bool)

(assert (=> d!1511071 m!5681561))

(declare-fun m!5681563 () Bool)

(assert (=> b!4735560 m!5681563))

(assert (=> b!4735560 m!5681563))

(declare-fun m!5681565 () Bool)

(assert (=> b!4735560 m!5681565))

(assert (=> b!4735191 d!1511071))

(declare-fun bs!1124748 () Bool)

(declare-fun b!4735564 () Bool)

(assert (= bs!1124748 (and b!4735564 d!1511029)))

(declare-fun lambda!218173 () Int)

(assert (=> bs!1124748 (= (= lt!1898123 lt!1898549) (= lambda!218173 lambda!218171))))

(declare-fun bs!1124749 () Bool)

(assert (= bs!1124749 (and b!4735564 d!1510929)))

(assert (=> bs!1124749 (not (= lambda!218173 lambda!218054))))

(declare-fun bs!1124750 () Bool)

(assert (= bs!1124750 (and b!4735564 b!4735555)))

(assert (=> bs!1124750 (= (= lt!1898123 lt!1898552) (= lambda!218173 lambda!218170))))

(assert (=> bs!1124750 (= lambda!218173 lambda!218169)))

(declare-fun bs!1124751 () Bool)

(assert (= bs!1124751 (and b!4735564 b!4735553)))

(assert (=> bs!1124751 (= lambda!218173 lambda!218168)))

(assert (=> b!4735564 true))

(declare-fun bs!1124752 () Bool)

(declare-fun b!4735566 () Bool)

(assert (= bs!1124752 (and b!4735566 d!1511029)))

(declare-fun lambda!218174 () Int)

(assert (=> bs!1124752 (= (= lt!1898123 lt!1898549) (= lambda!218174 lambda!218171))))

(declare-fun bs!1124753 () Bool)

(assert (= bs!1124753 (and b!4735566 d!1510929)))

(assert (=> bs!1124753 (not (= lambda!218174 lambda!218054))))

(declare-fun bs!1124754 () Bool)

(assert (= bs!1124754 (and b!4735566 b!4735564)))

(assert (=> bs!1124754 (= lambda!218174 lambda!218173)))

(declare-fun bs!1124755 () Bool)

(assert (= bs!1124755 (and b!4735566 b!4735555)))

(assert (=> bs!1124755 (= (= lt!1898123 lt!1898552) (= lambda!218174 lambda!218170))))

(assert (=> bs!1124755 (= lambda!218174 lambda!218169)))

(declare-fun bs!1124756 () Bool)

(assert (= bs!1124756 (and b!4735566 b!4735553)))

(assert (=> bs!1124756 (= lambda!218174 lambda!218168)))

(assert (=> b!4735566 true))

(declare-fun lambda!218175 () Int)

(declare-fun lt!1898578 () ListMap!5345)

(assert (=> b!4735566 (= (= lt!1898578 lt!1898123) (= lambda!218175 lambda!218174))))

(assert (=> bs!1124752 (= (= lt!1898578 lt!1898549) (= lambda!218175 lambda!218171))))

(assert (=> bs!1124753 (not (= lambda!218175 lambda!218054))))

(assert (=> bs!1124754 (= (= lt!1898578 lt!1898123) (= lambda!218175 lambda!218173))))

(assert (=> bs!1124755 (= (= lt!1898578 lt!1898552) (= lambda!218175 lambda!218170))))

(assert (=> bs!1124755 (= (= lt!1898578 lt!1898123) (= lambda!218175 lambda!218169))))

(assert (=> bs!1124756 (= (= lt!1898578 lt!1898123) (= lambda!218175 lambda!218168))))

(assert (=> b!4735566 true))

(declare-fun bs!1124757 () Bool)

(declare-fun d!1511073 () Bool)

(assert (= bs!1124757 (and d!1511073 b!4735566)))

(declare-fun lt!1898575 () ListMap!5345)

(declare-fun lambda!218176 () Int)

(assert (=> bs!1124757 (= (= lt!1898575 lt!1898123) (= lambda!218176 lambda!218174))))

(declare-fun bs!1124758 () Bool)

(assert (= bs!1124758 (and d!1511073 d!1511029)))

(assert (=> bs!1124758 (= (= lt!1898575 lt!1898549) (= lambda!218176 lambda!218171))))

(declare-fun bs!1124759 () Bool)

(assert (= bs!1124759 (and d!1511073 d!1510929)))

(assert (=> bs!1124759 (not (= lambda!218176 lambda!218054))))

(declare-fun bs!1124760 () Bool)

(assert (= bs!1124760 (and d!1511073 b!4735564)))

(assert (=> bs!1124760 (= (= lt!1898575 lt!1898123) (= lambda!218176 lambda!218173))))

(declare-fun bs!1124761 () Bool)

(assert (= bs!1124761 (and d!1511073 b!4735555)))

(assert (=> bs!1124761 (= (= lt!1898575 lt!1898123) (= lambda!218176 lambda!218169))))

(declare-fun bs!1124762 () Bool)

(assert (= bs!1124762 (and d!1511073 b!4735553)))

(assert (=> bs!1124762 (= (= lt!1898575 lt!1898123) (= lambda!218176 lambda!218168))))

(assert (=> bs!1124757 (= (= lt!1898575 lt!1898578) (= lambda!218176 lambda!218175))))

(assert (=> bs!1124761 (= (= lt!1898575 lt!1898552) (= lambda!218176 lambda!218170))))

(assert (=> d!1511073 true))

(declare-fun call!331267 () Bool)

(declare-fun bm!331262 () Bool)

(declare-fun c!808799 () Bool)

(assert (=> bm!331262 (= call!331267 (forall!11659 (toList!5982 lt!1898123) (ite c!808799 lambda!218173 lambda!218175)))))

(declare-fun bm!331263 () Bool)

(declare-fun call!331269 () Bool)

(declare-fun lt!1898586 () ListMap!5345)

(assert (=> bm!331263 (= call!331269 (forall!11659 (ite c!808799 (toList!5982 lt!1898123) (toList!5982 lt!1898586)) (ite c!808799 lambda!218173 lambda!218175)))))

(declare-fun b!4735562 () Bool)

(declare-fun res!2005463 () Bool)

(declare-fun e!2953824 () Bool)

(assert (=> b!4735562 (=> (not res!2005463) (not e!2953824))))

(assert (=> b!4735562 (= res!2005463 (forall!11659 (toList!5982 lt!1898123) lambda!218176))))

(declare-fun b!4735563 () Bool)

(assert (=> b!4735563 (= e!2953824 (invariantList!1537 (toList!5982 lt!1898575)))))

(declare-fun e!2953823 () ListMap!5345)

(assert (=> b!4735564 (= e!2953823 lt!1898123)))

(declare-fun lt!1898574 () Unit!132179)

(declare-fun call!331268 () Unit!132179)

(assert (=> b!4735564 (= lt!1898574 call!331268)))

(assert (=> b!4735564 call!331269))

(declare-fun lt!1898579 () Unit!132179)

(assert (=> b!4735564 (= lt!1898579 lt!1898574)))

(assert (=> b!4735564 call!331267))

(declare-fun lt!1898573 () Unit!132179)

(declare-fun Unit!132242 () Unit!132179)

(assert (=> b!4735564 (= lt!1898573 Unit!132242)))

(declare-fun b!4735565 () Bool)

(declare-fun e!2953822 () Bool)

(assert (=> b!4735565 (= e!2953822 (forall!11659 (toList!5982 lt!1898123) lambda!218175))))

(assert (=> b!4735566 (= e!2953823 lt!1898578)))

(assert (=> b!4735566 (= lt!1898586 (+!2294 lt!1898123 (h!59292 lt!1898106)))))

(assert (=> b!4735566 (= lt!1898578 (addToMapMapFromBucket!1476 (t!360327 lt!1898106) (+!2294 lt!1898123 (h!59292 lt!1898106))))))

(declare-fun lt!1898585 () Unit!132179)

(assert (=> b!4735566 (= lt!1898585 call!331268)))

(assert (=> b!4735566 (forall!11659 (toList!5982 lt!1898123) lambda!218174)))

(declare-fun lt!1898567 () Unit!132179)

(assert (=> b!4735566 (= lt!1898567 lt!1898585)))

(assert (=> b!4735566 (forall!11659 (toList!5982 lt!1898586) lambda!218175)))

(declare-fun lt!1898569 () Unit!132179)

(declare-fun Unit!132243 () Unit!132179)

(assert (=> b!4735566 (= lt!1898569 Unit!132243)))

(assert (=> b!4735566 (forall!11659 (t!360327 lt!1898106) lambda!218175)))

(declare-fun lt!1898572 () Unit!132179)

(declare-fun Unit!132245 () Unit!132179)

(assert (=> b!4735566 (= lt!1898572 Unit!132245)))

(declare-fun lt!1898582 () Unit!132179)

(declare-fun Unit!132247 () Unit!132179)

(assert (=> b!4735566 (= lt!1898582 Unit!132247)))

(declare-fun lt!1898587 () Unit!132179)

(assert (=> b!4735566 (= lt!1898587 (forallContained!3699 (toList!5982 lt!1898586) lambda!218175 (h!59292 lt!1898106)))))

(assert (=> b!4735566 (contains!16308 lt!1898586 (_1!30583 (h!59292 lt!1898106)))))

(declare-fun lt!1898571 () Unit!132179)

(declare-fun Unit!132249 () Unit!132179)

(assert (=> b!4735566 (= lt!1898571 Unit!132249)))

(assert (=> b!4735566 (contains!16308 lt!1898578 (_1!30583 (h!59292 lt!1898106)))))

(declare-fun lt!1898576 () Unit!132179)

(declare-fun Unit!132251 () Unit!132179)

(assert (=> b!4735566 (= lt!1898576 Unit!132251)))

(assert (=> b!4735566 (forall!11659 lt!1898106 lambda!218175)))

(declare-fun lt!1898583 () Unit!132179)

(declare-fun Unit!132253 () Unit!132179)

(assert (=> b!4735566 (= lt!1898583 Unit!132253)))

(assert (=> b!4735566 call!331269))

(declare-fun lt!1898580 () Unit!132179)

(declare-fun Unit!132254 () Unit!132179)

(assert (=> b!4735566 (= lt!1898580 Unit!132254)))

(declare-fun lt!1898568 () Unit!132179)

(declare-fun Unit!132256 () Unit!132179)

(assert (=> b!4735566 (= lt!1898568 Unit!132256)))

(declare-fun lt!1898570 () Unit!132179)

(assert (=> b!4735566 (= lt!1898570 (addForallContainsKeyThenBeforeAdding!821 lt!1898123 lt!1898578 (_1!30583 (h!59292 lt!1898106)) (_2!30583 (h!59292 lt!1898106))))))

(assert (=> b!4735566 (forall!11659 (toList!5982 lt!1898123) lambda!218175)))

(declare-fun lt!1898581 () Unit!132179)

(assert (=> b!4735566 (= lt!1898581 lt!1898570)))

(assert (=> b!4735566 call!331267))

(declare-fun lt!1898584 () Unit!132179)

(declare-fun Unit!132259 () Unit!132179)

(assert (=> b!4735566 (= lt!1898584 Unit!132259)))

(declare-fun res!2005465 () Bool)

(assert (=> b!4735566 (= res!2005465 (forall!11659 lt!1898106 lambda!218175))))

(assert (=> b!4735566 (=> (not res!2005465) (not e!2953822))))

(assert (=> b!4735566 e!2953822))

(declare-fun lt!1898577 () Unit!132179)

(declare-fun Unit!132261 () Unit!132179)

(assert (=> b!4735566 (= lt!1898577 Unit!132261)))

(assert (=> d!1511073 e!2953824))

(declare-fun res!2005464 () Bool)

(assert (=> d!1511073 (=> (not res!2005464) (not e!2953824))))

(assert (=> d!1511073 (= res!2005464 (forall!11659 lt!1898106 lambda!218176))))

(assert (=> d!1511073 (= lt!1898575 e!2953823)))

(assert (=> d!1511073 (= c!808799 ((_ is Nil!52919) lt!1898106))))

(assert (=> d!1511073 (noDuplicateKeys!2046 lt!1898106)))

(assert (=> d!1511073 (= (addToMapMapFromBucket!1476 lt!1898106 lt!1898123) lt!1898575)))

(declare-fun bm!331264 () Bool)

(assert (=> bm!331264 (= call!331268 (lemmaContainsAllItsOwnKeys!822 lt!1898123))))

(assert (= (and d!1511073 c!808799) b!4735564))

(assert (= (and d!1511073 (not c!808799)) b!4735566))

(assert (= (and b!4735566 res!2005465) b!4735565))

(assert (= (or b!4735564 b!4735566) bm!331264))

(assert (= (or b!4735564 b!4735566) bm!331263))

(assert (= (or b!4735564 b!4735566) bm!331262))

(assert (= (and d!1511073 res!2005464) b!4735562))

(assert (= (and b!4735562 res!2005463) b!4735563))

(declare-fun m!5681567 () Bool)

(assert (=> d!1511073 m!5681567))

(assert (=> d!1511073 m!5681351))

(declare-fun m!5681569 () Bool)

(assert (=> b!4735566 m!5681569))

(declare-fun m!5681571 () Bool)

(assert (=> b!4735566 m!5681571))

(declare-fun m!5681573 () Bool)

(assert (=> b!4735566 m!5681573))

(assert (=> b!4735566 m!5681571))

(declare-fun m!5681575 () Bool)

(assert (=> b!4735566 m!5681575))

(declare-fun m!5681577 () Bool)

(assert (=> b!4735566 m!5681577))

(declare-fun m!5681579 () Bool)

(assert (=> b!4735566 m!5681579))

(declare-fun m!5681581 () Bool)

(assert (=> b!4735566 m!5681581))

(declare-fun m!5681583 () Bool)

(assert (=> b!4735566 m!5681583))

(assert (=> b!4735566 m!5681581))

(declare-fun m!5681585 () Bool)

(assert (=> b!4735566 m!5681585))

(declare-fun m!5681587 () Bool)

(assert (=> b!4735566 m!5681587))

(declare-fun m!5681589 () Bool)

(assert (=> b!4735566 m!5681589))

(declare-fun m!5681591 () Bool)

(assert (=> bm!331262 m!5681591))

(assert (=> bm!331264 m!5681539))

(assert (=> b!4735565 m!5681577))

(declare-fun m!5681593 () Bool)

(assert (=> b!4735562 m!5681593))

(declare-fun m!5681595 () Bool)

(assert (=> b!4735563 m!5681595))

(declare-fun m!5681597 () Bool)

(assert (=> bm!331263 m!5681597))

(assert (=> b!4735191 d!1511073))

(declare-fun d!1511075 () Bool)

(assert (=> d!1511075 (= (head!10296 oldBucket!34) (h!59292 oldBucket!34))))

(assert (=> b!4735191 d!1511075))

(declare-fun d!1511077 () Bool)

(declare-fun content!9447 (List!53043) (InoxSet tuple2!54578))

(assert (=> d!1511077 (= (eq!1143 lt!1898120 (+!2294 lt!1898114 (h!59292 oldBucket!34))) (= (content!9447 (toList!5982 lt!1898120)) (content!9447 (toList!5982 (+!2294 lt!1898114 (h!59292 oldBucket!34))))))))

(declare-fun bs!1124763 () Bool)

(assert (= bs!1124763 d!1511077))

(declare-fun m!5681599 () Bool)

(assert (=> bs!1124763 m!5681599))

(declare-fun m!5681601 () Bool)

(assert (=> bs!1124763 m!5681601))

(assert (=> b!4735191 d!1511077))

(declare-fun d!1511079 () Bool)

(assert (=> d!1511079 (eq!1143 (addToMapMapFromBucket!1476 (Cons!52919 lt!1898119 lt!1898122) lt!1898123) (+!2294 (addToMapMapFromBucket!1476 lt!1898122 lt!1898123) lt!1898119))))

(declare-fun lt!1898588 () Unit!132179)

(assert (=> d!1511079 (= lt!1898588 (choose!33556 lt!1898119 lt!1898122 lt!1898123))))

(assert (=> d!1511079 (noDuplicateKeys!2046 lt!1898122)))

(assert (=> d!1511079 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!392 lt!1898119 lt!1898122 lt!1898123) lt!1898588)))

(declare-fun bs!1124764 () Bool)

(assert (= bs!1124764 d!1511079))

(assert (=> bs!1124764 m!5680887))

(declare-fun m!5681603 () Bool)

(assert (=> bs!1124764 m!5681603))

(assert (=> bs!1124764 m!5680887))

(assert (=> bs!1124764 m!5680881))

(assert (=> bs!1124764 m!5680879))

(assert (=> bs!1124764 m!5680881))

(assert (=> bs!1124764 m!5680883))

(declare-fun m!5681605 () Bool)

(assert (=> bs!1124764 m!5681605))

(assert (=> bs!1124764 m!5680879))

(assert (=> b!4735191 d!1511079))

(declare-fun d!1511081 () Bool)

(declare-fun e!2953825 () Bool)

(assert (=> d!1511081 e!2953825))

(declare-fun res!2005467 () Bool)

(assert (=> d!1511081 (=> (not res!2005467) (not e!2953825))))

(declare-fun lt!1898591 () ListMap!5345)

(assert (=> d!1511081 (= res!2005467 (contains!16308 lt!1898591 (_1!30583 (h!59292 oldBucket!34))))))

(declare-fun lt!1898592 () List!53043)

(assert (=> d!1511081 (= lt!1898591 (ListMap!5346 lt!1898592))))

(declare-fun lt!1898590 () Unit!132179)

(declare-fun lt!1898589 () Unit!132179)

(assert (=> d!1511081 (= lt!1898590 lt!1898589)))

(assert (=> d!1511081 (= (getValueByKey!2005 lt!1898592 (_1!30583 (h!59292 oldBucket!34))) (Some!12432 (_2!30583 (h!59292 oldBucket!34))))))

(assert (=> d!1511081 (= lt!1898589 (lemmaContainsTupThenGetReturnValue!1103 lt!1898592 (_1!30583 (h!59292 oldBucket!34)) (_2!30583 (h!59292 oldBucket!34))))))

(assert (=> d!1511081 (= lt!1898592 (insertNoDuplicatedKeys!611 (toList!5982 lt!1898114) (_1!30583 (h!59292 oldBucket!34)) (_2!30583 (h!59292 oldBucket!34))))))

(assert (=> d!1511081 (= (+!2294 lt!1898114 (h!59292 oldBucket!34)) lt!1898591)))

(declare-fun b!4735567 () Bool)

(declare-fun res!2005466 () Bool)

(assert (=> b!4735567 (=> (not res!2005466) (not e!2953825))))

(assert (=> b!4735567 (= res!2005466 (= (getValueByKey!2005 (toList!5982 lt!1898591) (_1!30583 (h!59292 oldBucket!34))) (Some!12432 (_2!30583 (h!59292 oldBucket!34)))))))

(declare-fun b!4735568 () Bool)

(assert (=> b!4735568 (= e!2953825 (contains!16310 (toList!5982 lt!1898591) (h!59292 oldBucket!34)))))

(assert (= (and d!1511081 res!2005467) b!4735567))

(assert (= (and b!4735567 res!2005466) b!4735568))

(declare-fun m!5681607 () Bool)

(assert (=> d!1511081 m!5681607))

(declare-fun m!5681609 () Bool)

(assert (=> d!1511081 m!5681609))

(declare-fun m!5681611 () Bool)

(assert (=> d!1511081 m!5681611))

(declare-fun m!5681613 () Bool)

(assert (=> d!1511081 m!5681613))

(declare-fun m!5681615 () Bool)

(assert (=> b!4735567 m!5681615))

(declare-fun m!5681617 () Bool)

(assert (=> b!4735568 m!5681617))

(assert (=> b!4735191 d!1511081))

(declare-fun d!1511083 () Bool)

(assert (=> d!1511083 (= (head!10296 newBucket!218) (h!59292 newBucket!218))))

(assert (=> b!4735191 d!1511083))

(declare-fun bs!1124765 () Bool)

(declare-fun b!4735571 () Bool)

(assert (= bs!1124765 (and b!4735571 b!4735566)))

(declare-fun lambda!218177 () Int)

(assert (=> bs!1124765 (= lambda!218177 lambda!218174)))

(declare-fun bs!1124766 () Bool)

(assert (= bs!1124766 (and b!4735571 d!1511029)))

(assert (=> bs!1124766 (= (= lt!1898123 lt!1898549) (= lambda!218177 lambda!218171))))

(declare-fun bs!1124767 () Bool)

(assert (= bs!1124767 (and b!4735571 d!1510929)))

(assert (=> bs!1124767 (not (= lambda!218177 lambda!218054))))

(declare-fun bs!1124768 () Bool)

(assert (= bs!1124768 (and b!4735571 b!4735564)))

(assert (=> bs!1124768 (= lambda!218177 lambda!218173)))

(declare-fun bs!1124769 () Bool)

(assert (= bs!1124769 (and b!4735571 d!1511073)))

(assert (=> bs!1124769 (= (= lt!1898123 lt!1898575) (= lambda!218177 lambda!218176))))

(declare-fun bs!1124770 () Bool)

(assert (= bs!1124770 (and b!4735571 b!4735555)))

(assert (=> bs!1124770 (= lambda!218177 lambda!218169)))

(declare-fun bs!1124771 () Bool)

(assert (= bs!1124771 (and b!4735571 b!4735553)))

(assert (=> bs!1124771 (= lambda!218177 lambda!218168)))

(assert (=> bs!1124765 (= (= lt!1898123 lt!1898578) (= lambda!218177 lambda!218175))))

(assert (=> bs!1124770 (= (= lt!1898123 lt!1898552) (= lambda!218177 lambda!218170))))

(assert (=> b!4735571 true))

(declare-fun bs!1124772 () Bool)

(declare-fun b!4735573 () Bool)

(assert (= bs!1124772 (and b!4735573 b!4735566)))

(declare-fun lambda!218178 () Int)

(assert (=> bs!1124772 (= lambda!218178 lambda!218174)))

(declare-fun bs!1124773 () Bool)

(assert (= bs!1124773 (and b!4735573 d!1511029)))

(assert (=> bs!1124773 (= (= lt!1898123 lt!1898549) (= lambda!218178 lambda!218171))))

(declare-fun bs!1124774 () Bool)

(assert (= bs!1124774 (and b!4735573 d!1510929)))

(assert (=> bs!1124774 (not (= lambda!218178 lambda!218054))))

(declare-fun bs!1124775 () Bool)

(assert (= bs!1124775 (and b!4735573 b!4735564)))

(assert (=> bs!1124775 (= lambda!218178 lambda!218173)))

(declare-fun bs!1124776 () Bool)

(assert (= bs!1124776 (and b!4735573 d!1511073)))

(assert (=> bs!1124776 (= (= lt!1898123 lt!1898575) (= lambda!218178 lambda!218176))))

(declare-fun bs!1124777 () Bool)

(assert (= bs!1124777 (and b!4735573 b!4735571)))

(assert (=> bs!1124777 (= lambda!218178 lambda!218177)))

(declare-fun bs!1124778 () Bool)

(assert (= bs!1124778 (and b!4735573 b!4735555)))

(assert (=> bs!1124778 (= lambda!218178 lambda!218169)))

(declare-fun bs!1124779 () Bool)

(assert (= bs!1124779 (and b!4735573 b!4735553)))

(assert (=> bs!1124779 (= lambda!218178 lambda!218168)))

(assert (=> bs!1124772 (= (= lt!1898123 lt!1898578) (= lambda!218178 lambda!218175))))

(assert (=> bs!1124778 (= (= lt!1898123 lt!1898552) (= lambda!218178 lambda!218170))))

(assert (=> b!4735573 true))

(declare-fun lt!1898604 () ListMap!5345)

(declare-fun lambda!218179 () Int)

(assert (=> bs!1124772 (= (= lt!1898604 lt!1898123) (= lambda!218179 lambda!218174))))

(assert (=> bs!1124773 (= (= lt!1898604 lt!1898549) (= lambda!218179 lambda!218171))))

(assert (=> bs!1124774 (not (= lambda!218179 lambda!218054))))

(assert (=> bs!1124775 (= (= lt!1898604 lt!1898123) (= lambda!218179 lambda!218173))))

(assert (=> bs!1124776 (= (= lt!1898604 lt!1898575) (= lambda!218179 lambda!218176))))

(assert (=> bs!1124777 (= (= lt!1898604 lt!1898123) (= lambda!218179 lambda!218177))))

(assert (=> b!4735573 (= (= lt!1898604 lt!1898123) (= lambda!218179 lambda!218178))))

(assert (=> bs!1124778 (= (= lt!1898604 lt!1898123) (= lambda!218179 lambda!218169))))

(assert (=> bs!1124779 (= (= lt!1898604 lt!1898123) (= lambda!218179 lambda!218168))))

(assert (=> bs!1124772 (= (= lt!1898604 lt!1898578) (= lambda!218179 lambda!218175))))

(assert (=> bs!1124778 (= (= lt!1898604 lt!1898552) (= lambda!218179 lambda!218170))))

(assert (=> b!4735573 true))

(declare-fun bs!1124780 () Bool)

(declare-fun d!1511085 () Bool)

(assert (= bs!1124780 (and d!1511085 b!4735566)))

(declare-fun lambda!218180 () Int)

(declare-fun lt!1898601 () ListMap!5345)

(assert (=> bs!1124780 (= (= lt!1898601 lt!1898123) (= lambda!218180 lambda!218174))))

(declare-fun bs!1124781 () Bool)

(assert (= bs!1124781 (and d!1511085 d!1511029)))

(assert (=> bs!1124781 (= (= lt!1898601 lt!1898549) (= lambda!218180 lambda!218171))))

(declare-fun bs!1124782 () Bool)

(assert (= bs!1124782 (and d!1511085 d!1510929)))

(assert (=> bs!1124782 (not (= lambda!218180 lambda!218054))))

(declare-fun bs!1124783 () Bool)

(assert (= bs!1124783 (and d!1511085 b!4735564)))

(assert (=> bs!1124783 (= (= lt!1898601 lt!1898123) (= lambda!218180 lambda!218173))))

(declare-fun bs!1124784 () Bool)

(assert (= bs!1124784 (and d!1511085 b!4735573)))

(assert (=> bs!1124784 (= (= lt!1898601 lt!1898604) (= lambda!218180 lambda!218179))))

(declare-fun bs!1124785 () Bool)

(assert (= bs!1124785 (and d!1511085 d!1511073)))

(assert (=> bs!1124785 (= (= lt!1898601 lt!1898575) (= lambda!218180 lambda!218176))))

(declare-fun bs!1124786 () Bool)

(assert (= bs!1124786 (and d!1511085 b!4735571)))

(assert (=> bs!1124786 (= (= lt!1898601 lt!1898123) (= lambda!218180 lambda!218177))))

(assert (=> bs!1124784 (= (= lt!1898601 lt!1898123) (= lambda!218180 lambda!218178))))

(declare-fun bs!1124787 () Bool)

(assert (= bs!1124787 (and d!1511085 b!4735555)))

(assert (=> bs!1124787 (= (= lt!1898601 lt!1898123) (= lambda!218180 lambda!218169))))

(declare-fun bs!1124788 () Bool)

(assert (= bs!1124788 (and d!1511085 b!4735553)))

(assert (=> bs!1124788 (= (= lt!1898601 lt!1898123) (= lambda!218180 lambda!218168))))

(assert (=> bs!1124780 (= (= lt!1898601 lt!1898578) (= lambda!218180 lambda!218175))))

(assert (=> bs!1124787 (= (= lt!1898601 lt!1898552) (= lambda!218180 lambda!218170))))

(assert (=> d!1511085 true))

(declare-fun call!331270 () Bool)

(declare-fun c!808800 () Bool)

(declare-fun bm!331265 () Bool)

(assert (=> bm!331265 (= call!331270 (forall!11659 (toList!5982 lt!1898123) (ite c!808800 lambda!218177 lambda!218179)))))

(declare-fun lt!1898612 () ListMap!5345)

(declare-fun bm!331266 () Bool)

(declare-fun call!331272 () Bool)

(assert (=> bm!331266 (= call!331272 (forall!11659 (ite c!808800 (toList!5982 lt!1898123) (toList!5982 lt!1898612)) (ite c!808800 lambda!218177 lambda!218179)))))

(declare-fun b!4735569 () Bool)

(declare-fun res!2005468 () Bool)

(declare-fun e!2953828 () Bool)

(assert (=> b!4735569 (=> (not res!2005468) (not e!2953828))))

(assert (=> b!4735569 (= res!2005468 (forall!11659 (toList!5982 lt!1898123) lambda!218180))))

(declare-fun b!4735570 () Bool)

(assert (=> b!4735570 (= e!2953828 (invariantList!1537 (toList!5982 lt!1898601)))))

(declare-fun e!2953827 () ListMap!5345)

(assert (=> b!4735571 (= e!2953827 lt!1898123)))

(declare-fun lt!1898600 () Unit!132179)

(declare-fun call!331271 () Unit!132179)

(assert (=> b!4735571 (= lt!1898600 call!331271)))

(assert (=> b!4735571 call!331272))

(declare-fun lt!1898605 () Unit!132179)

(assert (=> b!4735571 (= lt!1898605 lt!1898600)))

(assert (=> b!4735571 call!331270))

(declare-fun lt!1898599 () Unit!132179)

(declare-fun Unit!132264 () Unit!132179)

(assert (=> b!4735571 (= lt!1898599 Unit!132264)))

(declare-fun b!4735572 () Bool)

(declare-fun e!2953826 () Bool)

(assert (=> b!4735572 (= e!2953826 (forall!11659 (toList!5982 lt!1898123) lambda!218179))))

(assert (=> b!4735573 (= e!2953827 lt!1898604)))

(assert (=> b!4735573 (= lt!1898612 (+!2294 lt!1898123 (h!59292 (Cons!52919 lt!1898119 lt!1898122))))))

(assert (=> b!4735573 (= lt!1898604 (addToMapMapFromBucket!1476 (t!360327 (Cons!52919 lt!1898119 lt!1898122)) (+!2294 lt!1898123 (h!59292 (Cons!52919 lt!1898119 lt!1898122)))))))

(declare-fun lt!1898611 () Unit!132179)

(assert (=> b!4735573 (= lt!1898611 call!331271)))

(assert (=> b!4735573 (forall!11659 (toList!5982 lt!1898123) lambda!218178)))

(declare-fun lt!1898593 () Unit!132179)

(assert (=> b!4735573 (= lt!1898593 lt!1898611)))

(assert (=> b!4735573 (forall!11659 (toList!5982 lt!1898612) lambda!218179)))

(declare-fun lt!1898595 () Unit!132179)

(declare-fun Unit!132265 () Unit!132179)

(assert (=> b!4735573 (= lt!1898595 Unit!132265)))

(assert (=> b!4735573 (forall!11659 (t!360327 (Cons!52919 lt!1898119 lt!1898122)) lambda!218179)))

(declare-fun lt!1898598 () Unit!132179)

(declare-fun Unit!132266 () Unit!132179)

(assert (=> b!4735573 (= lt!1898598 Unit!132266)))

(declare-fun lt!1898608 () Unit!132179)

(declare-fun Unit!132267 () Unit!132179)

(assert (=> b!4735573 (= lt!1898608 Unit!132267)))

(declare-fun lt!1898613 () Unit!132179)

(assert (=> b!4735573 (= lt!1898613 (forallContained!3699 (toList!5982 lt!1898612) lambda!218179 (h!59292 (Cons!52919 lt!1898119 lt!1898122))))))

(assert (=> b!4735573 (contains!16308 lt!1898612 (_1!30583 (h!59292 (Cons!52919 lt!1898119 lt!1898122))))))

(declare-fun lt!1898597 () Unit!132179)

(declare-fun Unit!132268 () Unit!132179)

(assert (=> b!4735573 (= lt!1898597 Unit!132268)))

(assert (=> b!4735573 (contains!16308 lt!1898604 (_1!30583 (h!59292 (Cons!52919 lt!1898119 lt!1898122))))))

(declare-fun lt!1898602 () Unit!132179)

(declare-fun Unit!132269 () Unit!132179)

(assert (=> b!4735573 (= lt!1898602 Unit!132269)))

(assert (=> b!4735573 (forall!11659 (Cons!52919 lt!1898119 lt!1898122) lambda!218179)))

(declare-fun lt!1898609 () Unit!132179)

(declare-fun Unit!132270 () Unit!132179)

(assert (=> b!4735573 (= lt!1898609 Unit!132270)))

(assert (=> b!4735573 call!331272))

(declare-fun lt!1898606 () Unit!132179)

(declare-fun Unit!132271 () Unit!132179)

(assert (=> b!4735573 (= lt!1898606 Unit!132271)))

(declare-fun lt!1898594 () Unit!132179)

(declare-fun Unit!132272 () Unit!132179)

(assert (=> b!4735573 (= lt!1898594 Unit!132272)))

(declare-fun lt!1898596 () Unit!132179)

(assert (=> b!4735573 (= lt!1898596 (addForallContainsKeyThenBeforeAdding!821 lt!1898123 lt!1898604 (_1!30583 (h!59292 (Cons!52919 lt!1898119 lt!1898122))) (_2!30583 (h!59292 (Cons!52919 lt!1898119 lt!1898122)))))))

(assert (=> b!4735573 (forall!11659 (toList!5982 lt!1898123) lambda!218179)))

(declare-fun lt!1898607 () Unit!132179)

(assert (=> b!4735573 (= lt!1898607 lt!1898596)))

(assert (=> b!4735573 call!331270))

(declare-fun lt!1898610 () Unit!132179)

(declare-fun Unit!132273 () Unit!132179)

(assert (=> b!4735573 (= lt!1898610 Unit!132273)))

(declare-fun res!2005470 () Bool)

(assert (=> b!4735573 (= res!2005470 (forall!11659 (Cons!52919 lt!1898119 lt!1898122) lambda!218179))))

(assert (=> b!4735573 (=> (not res!2005470) (not e!2953826))))

(assert (=> b!4735573 e!2953826))

(declare-fun lt!1898603 () Unit!132179)

(declare-fun Unit!132274 () Unit!132179)

(assert (=> b!4735573 (= lt!1898603 Unit!132274)))

(assert (=> d!1511085 e!2953828))

(declare-fun res!2005469 () Bool)

(assert (=> d!1511085 (=> (not res!2005469) (not e!2953828))))

(assert (=> d!1511085 (= res!2005469 (forall!11659 (Cons!52919 lt!1898119 lt!1898122) lambda!218180))))

(assert (=> d!1511085 (= lt!1898601 e!2953827)))

(assert (=> d!1511085 (= c!808800 ((_ is Nil!52919) (Cons!52919 lt!1898119 lt!1898122)))))

(assert (=> d!1511085 (noDuplicateKeys!2046 (Cons!52919 lt!1898119 lt!1898122))))

(assert (=> d!1511085 (= (addToMapMapFromBucket!1476 (Cons!52919 lt!1898119 lt!1898122) lt!1898123) lt!1898601)))

(declare-fun bm!331267 () Bool)

(assert (=> bm!331267 (= call!331271 (lemmaContainsAllItsOwnKeys!822 lt!1898123))))

(assert (= (and d!1511085 c!808800) b!4735571))

(assert (= (and d!1511085 (not c!808800)) b!4735573))

(assert (= (and b!4735573 res!2005470) b!4735572))

(assert (= (or b!4735571 b!4735573) bm!331267))

(assert (= (or b!4735571 b!4735573) bm!331266))

(assert (= (or b!4735571 b!4735573) bm!331265))

(assert (= (and d!1511085 res!2005469) b!4735569))

(assert (= (and b!4735569 res!2005468) b!4735570))

(declare-fun m!5681619 () Bool)

(assert (=> d!1511085 m!5681619))

(declare-fun m!5681621 () Bool)

(assert (=> d!1511085 m!5681621))

(declare-fun m!5681623 () Bool)

(assert (=> b!4735573 m!5681623))

(declare-fun m!5681625 () Bool)

(assert (=> b!4735573 m!5681625))

(declare-fun m!5681627 () Bool)

(assert (=> b!4735573 m!5681627))

(assert (=> b!4735573 m!5681625))

(declare-fun m!5681629 () Bool)

(assert (=> b!4735573 m!5681629))

(declare-fun m!5681631 () Bool)

(assert (=> b!4735573 m!5681631))

(declare-fun m!5681633 () Bool)

(assert (=> b!4735573 m!5681633))

(declare-fun m!5681635 () Bool)

(assert (=> b!4735573 m!5681635))

(declare-fun m!5681637 () Bool)

(assert (=> b!4735573 m!5681637))

(assert (=> b!4735573 m!5681635))

(declare-fun m!5681639 () Bool)

(assert (=> b!4735573 m!5681639))

(declare-fun m!5681641 () Bool)

(assert (=> b!4735573 m!5681641))

(declare-fun m!5681643 () Bool)

(assert (=> b!4735573 m!5681643))

(declare-fun m!5681645 () Bool)

(assert (=> bm!331265 m!5681645))

(assert (=> bm!331267 m!5681539))

(assert (=> b!4735572 m!5681631))

(declare-fun m!5681647 () Bool)

(assert (=> b!4735569 m!5681647))

(declare-fun m!5681649 () Bool)

(assert (=> b!4735570 m!5681649))

(declare-fun m!5681651 () Bool)

(assert (=> bm!331266 m!5681651))

(assert (=> b!4735191 d!1511085))

(declare-fun d!1511087 () Bool)

(assert (=> d!1511087 (= (eq!1143 (addToMapMapFromBucket!1476 (Cons!52919 lt!1898116 lt!1898106) lt!1898123) (+!2294 (addToMapMapFromBucket!1476 lt!1898106 lt!1898123) lt!1898116)) (= (content!9447 (toList!5982 (addToMapMapFromBucket!1476 (Cons!52919 lt!1898116 lt!1898106) lt!1898123))) (content!9447 (toList!5982 (+!2294 (addToMapMapFromBucket!1476 lt!1898106 lt!1898123) lt!1898116)))))))

(declare-fun bs!1124789 () Bool)

(assert (= bs!1124789 d!1511087))

(declare-fun m!5681653 () Bool)

(assert (=> bs!1124789 m!5681653))

(declare-fun m!5681655 () Bool)

(assert (=> bs!1124789 m!5681655))

(assert (=> b!4735191 d!1511087))

(declare-fun d!1511089 () Bool)

(assert (=> d!1511089 (= (eq!1143 (addToMapMapFromBucket!1476 (Cons!52919 lt!1898119 lt!1898122) lt!1898123) (+!2294 (addToMapMapFromBucket!1476 lt!1898122 lt!1898123) lt!1898119)) (= (content!9447 (toList!5982 (addToMapMapFromBucket!1476 (Cons!52919 lt!1898119 lt!1898122) lt!1898123))) (content!9447 (toList!5982 (+!2294 (addToMapMapFromBucket!1476 lt!1898122 lt!1898123) lt!1898119)))))))

(declare-fun bs!1124790 () Bool)

(assert (= bs!1124790 d!1511089))

(declare-fun m!5681657 () Bool)

(assert (=> bs!1124790 m!5681657))

(declare-fun m!5681659 () Bool)

(assert (=> bs!1124790 m!5681659))

(assert (=> b!4735191 d!1511089))

(declare-fun bs!1124791 () Bool)

(declare-fun b!4735576 () Bool)

(assert (= bs!1124791 (and b!4735576 b!4735566)))

(declare-fun lambda!218181 () Int)

(assert (=> bs!1124791 (= lambda!218181 lambda!218174)))

(declare-fun bs!1124792 () Bool)

(assert (= bs!1124792 (and b!4735576 d!1511029)))

(assert (=> bs!1124792 (= (= lt!1898123 lt!1898549) (= lambda!218181 lambda!218171))))

(declare-fun bs!1124793 () Bool)

(assert (= bs!1124793 (and b!4735576 d!1510929)))

(assert (=> bs!1124793 (not (= lambda!218181 lambda!218054))))

(declare-fun bs!1124794 () Bool)

(assert (= bs!1124794 (and b!4735576 b!4735564)))

(assert (=> bs!1124794 (= lambda!218181 lambda!218173)))

(declare-fun bs!1124795 () Bool)

(assert (= bs!1124795 (and b!4735576 b!4735573)))

(assert (=> bs!1124795 (= (= lt!1898123 lt!1898604) (= lambda!218181 lambda!218179))))

(declare-fun bs!1124796 () Bool)

(assert (= bs!1124796 (and b!4735576 d!1511073)))

(assert (=> bs!1124796 (= (= lt!1898123 lt!1898575) (= lambda!218181 lambda!218176))))

(declare-fun bs!1124797 () Bool)

(assert (= bs!1124797 (and b!4735576 b!4735571)))

(assert (=> bs!1124797 (= lambda!218181 lambda!218177)))

(assert (=> bs!1124795 (= lambda!218181 lambda!218178)))

(declare-fun bs!1124798 () Bool)

(assert (= bs!1124798 (and b!4735576 d!1511085)))

(assert (=> bs!1124798 (= (= lt!1898123 lt!1898601) (= lambda!218181 lambda!218180))))

(declare-fun bs!1124799 () Bool)

(assert (= bs!1124799 (and b!4735576 b!4735555)))

(assert (=> bs!1124799 (= lambda!218181 lambda!218169)))

(declare-fun bs!1124800 () Bool)

(assert (= bs!1124800 (and b!4735576 b!4735553)))

(assert (=> bs!1124800 (= lambda!218181 lambda!218168)))

(assert (=> bs!1124791 (= (= lt!1898123 lt!1898578) (= lambda!218181 lambda!218175))))

(assert (=> bs!1124799 (= (= lt!1898123 lt!1898552) (= lambda!218181 lambda!218170))))

(assert (=> b!4735576 true))

(declare-fun bs!1124801 () Bool)

(declare-fun b!4735578 () Bool)

(assert (= bs!1124801 (and b!4735578 b!4735566)))

(declare-fun lambda!218182 () Int)

(assert (=> bs!1124801 (= lambda!218182 lambda!218174)))

(declare-fun bs!1124802 () Bool)

(assert (= bs!1124802 (and b!4735578 d!1511029)))

(assert (=> bs!1124802 (= (= lt!1898123 lt!1898549) (= lambda!218182 lambda!218171))))

(declare-fun bs!1124803 () Bool)

(assert (= bs!1124803 (and b!4735578 d!1510929)))

(assert (=> bs!1124803 (not (= lambda!218182 lambda!218054))))

(declare-fun bs!1124804 () Bool)

(assert (= bs!1124804 (and b!4735578 b!4735564)))

(assert (=> bs!1124804 (= lambda!218182 lambda!218173)))

(declare-fun bs!1124805 () Bool)

(assert (= bs!1124805 (and b!4735578 b!4735573)))

(assert (=> bs!1124805 (= (= lt!1898123 lt!1898604) (= lambda!218182 lambda!218179))))

(declare-fun bs!1124806 () Bool)

(assert (= bs!1124806 (and b!4735578 d!1511073)))

(assert (=> bs!1124806 (= (= lt!1898123 lt!1898575) (= lambda!218182 lambda!218176))))

(declare-fun bs!1124807 () Bool)

(assert (= bs!1124807 (and b!4735578 b!4735571)))

(assert (=> bs!1124807 (= lambda!218182 lambda!218177)))

(assert (=> bs!1124805 (= lambda!218182 lambda!218178)))

(declare-fun bs!1124808 () Bool)

(assert (= bs!1124808 (and b!4735578 d!1511085)))

(assert (=> bs!1124808 (= (= lt!1898123 lt!1898601) (= lambda!218182 lambda!218180))))

(declare-fun bs!1124809 () Bool)

(assert (= bs!1124809 (and b!4735578 b!4735555)))

(assert (=> bs!1124809 (= lambda!218182 lambda!218169)))

(declare-fun bs!1124810 () Bool)

(assert (= bs!1124810 (and b!4735578 b!4735553)))

(assert (=> bs!1124810 (= lambda!218182 lambda!218168)))

(assert (=> bs!1124801 (= (= lt!1898123 lt!1898578) (= lambda!218182 lambda!218175))))

(declare-fun bs!1124811 () Bool)

(assert (= bs!1124811 (and b!4735578 b!4735576)))

(assert (=> bs!1124811 (= lambda!218182 lambda!218181)))

(assert (=> bs!1124809 (= (= lt!1898123 lt!1898552) (= lambda!218182 lambda!218170))))

(assert (=> b!4735578 true))

(declare-fun lt!1898625 () ListMap!5345)

(declare-fun lambda!218183 () Int)

(assert (=> bs!1124801 (= (= lt!1898625 lt!1898123) (= lambda!218183 lambda!218174))))

(assert (=> bs!1124802 (= (= lt!1898625 lt!1898549) (= lambda!218183 lambda!218171))))

(assert (=> bs!1124803 (not (= lambda!218183 lambda!218054))))

(assert (=> bs!1124804 (= (= lt!1898625 lt!1898123) (= lambda!218183 lambda!218173))))

(assert (=> bs!1124805 (= (= lt!1898625 lt!1898604) (= lambda!218183 lambda!218179))))

(assert (=> bs!1124806 (= (= lt!1898625 lt!1898575) (= lambda!218183 lambda!218176))))

(assert (=> bs!1124807 (= (= lt!1898625 lt!1898123) (= lambda!218183 lambda!218177))))

(assert (=> bs!1124805 (= (= lt!1898625 lt!1898123) (= lambda!218183 lambda!218178))))

(assert (=> bs!1124808 (= (= lt!1898625 lt!1898601) (= lambda!218183 lambda!218180))))

(assert (=> b!4735578 (= (= lt!1898625 lt!1898123) (= lambda!218183 lambda!218182))))

(assert (=> bs!1124809 (= (= lt!1898625 lt!1898123) (= lambda!218183 lambda!218169))))

(assert (=> bs!1124810 (= (= lt!1898625 lt!1898123) (= lambda!218183 lambda!218168))))

(assert (=> bs!1124801 (= (= lt!1898625 lt!1898578) (= lambda!218183 lambda!218175))))

(assert (=> bs!1124811 (= (= lt!1898625 lt!1898123) (= lambda!218183 lambda!218181))))

(assert (=> bs!1124809 (= (= lt!1898625 lt!1898552) (= lambda!218183 lambda!218170))))

(assert (=> b!4735578 true))

(declare-fun bs!1124812 () Bool)

(declare-fun d!1511091 () Bool)

(assert (= bs!1124812 (and d!1511091 b!4735566)))

(declare-fun lambda!218184 () Int)

(declare-fun lt!1898622 () ListMap!5345)

(assert (=> bs!1124812 (= (= lt!1898622 lt!1898123) (= lambda!218184 lambda!218174))))

(declare-fun bs!1124813 () Bool)

(assert (= bs!1124813 (and d!1511091 d!1511029)))

(assert (=> bs!1124813 (= (= lt!1898622 lt!1898549) (= lambda!218184 lambda!218171))))

(declare-fun bs!1124814 () Bool)

(assert (= bs!1124814 (and d!1511091 d!1510929)))

(assert (=> bs!1124814 (not (= lambda!218184 lambda!218054))))

(declare-fun bs!1124815 () Bool)

(assert (= bs!1124815 (and d!1511091 b!4735564)))

(assert (=> bs!1124815 (= (= lt!1898622 lt!1898123) (= lambda!218184 lambda!218173))))

(declare-fun bs!1124816 () Bool)

(assert (= bs!1124816 (and d!1511091 b!4735573)))

(assert (=> bs!1124816 (= (= lt!1898622 lt!1898604) (= lambda!218184 lambda!218179))))

(declare-fun bs!1124817 () Bool)

(assert (= bs!1124817 (and d!1511091 d!1511073)))

(assert (=> bs!1124817 (= (= lt!1898622 lt!1898575) (= lambda!218184 lambda!218176))))

(declare-fun bs!1124818 () Bool)

(assert (= bs!1124818 (and d!1511091 b!4735571)))

(assert (=> bs!1124818 (= (= lt!1898622 lt!1898123) (= lambda!218184 lambda!218177))))

(assert (=> bs!1124816 (= (= lt!1898622 lt!1898123) (= lambda!218184 lambda!218178))))

(declare-fun bs!1124819 () Bool)

(assert (= bs!1124819 (and d!1511091 d!1511085)))

(assert (=> bs!1124819 (= (= lt!1898622 lt!1898601) (= lambda!218184 lambda!218180))))

(declare-fun bs!1124820 () Bool)

(assert (= bs!1124820 (and d!1511091 b!4735578)))

(assert (=> bs!1124820 (= (= lt!1898622 lt!1898123) (= lambda!218184 lambda!218182))))

(assert (=> bs!1124820 (= (= lt!1898622 lt!1898625) (= lambda!218184 lambda!218183))))

(declare-fun bs!1124821 () Bool)

(assert (= bs!1124821 (and d!1511091 b!4735555)))

(assert (=> bs!1124821 (= (= lt!1898622 lt!1898123) (= lambda!218184 lambda!218169))))

(declare-fun bs!1124822 () Bool)

(assert (= bs!1124822 (and d!1511091 b!4735553)))

(assert (=> bs!1124822 (= (= lt!1898622 lt!1898123) (= lambda!218184 lambda!218168))))

(assert (=> bs!1124812 (= (= lt!1898622 lt!1898578) (= lambda!218184 lambda!218175))))

(declare-fun bs!1124823 () Bool)

(assert (= bs!1124823 (and d!1511091 b!4735576)))

(assert (=> bs!1124823 (= (= lt!1898622 lt!1898123) (= lambda!218184 lambda!218181))))

(assert (=> bs!1124821 (= (= lt!1898622 lt!1898552) (= lambda!218184 lambda!218170))))

(assert (=> d!1511091 true))

(declare-fun call!331273 () Bool)

(declare-fun bm!331268 () Bool)

(declare-fun c!808801 () Bool)

(assert (=> bm!331268 (= call!331273 (forall!11659 (toList!5982 lt!1898123) (ite c!808801 lambda!218181 lambda!218183)))))

(declare-fun bm!331269 () Bool)

(declare-fun call!331275 () Bool)

(declare-fun lt!1898633 () ListMap!5345)

(assert (=> bm!331269 (= call!331275 (forall!11659 (ite c!808801 (toList!5982 lt!1898123) (toList!5982 lt!1898633)) (ite c!808801 lambda!218181 lambda!218183)))))

(declare-fun b!4735574 () Bool)

(declare-fun res!2005471 () Bool)

(declare-fun e!2953831 () Bool)

(assert (=> b!4735574 (=> (not res!2005471) (not e!2953831))))

(assert (=> b!4735574 (= res!2005471 (forall!11659 (toList!5982 lt!1898123) lambda!218184))))

(declare-fun b!4735575 () Bool)

(assert (=> b!4735575 (= e!2953831 (invariantList!1537 (toList!5982 lt!1898622)))))

(declare-fun e!2953830 () ListMap!5345)

(assert (=> b!4735576 (= e!2953830 lt!1898123)))

(declare-fun lt!1898621 () Unit!132179)

(declare-fun call!331274 () Unit!132179)

(assert (=> b!4735576 (= lt!1898621 call!331274)))

(assert (=> b!4735576 call!331275))

(declare-fun lt!1898626 () Unit!132179)

(assert (=> b!4735576 (= lt!1898626 lt!1898621)))

(assert (=> b!4735576 call!331273))

(declare-fun lt!1898620 () Unit!132179)

(declare-fun Unit!132277 () Unit!132179)

(assert (=> b!4735576 (= lt!1898620 Unit!132277)))

(declare-fun b!4735577 () Bool)

(declare-fun e!2953829 () Bool)

(assert (=> b!4735577 (= e!2953829 (forall!11659 (toList!5982 lt!1898123) lambda!218183))))

(assert (=> b!4735578 (= e!2953830 lt!1898625)))

(assert (=> b!4735578 (= lt!1898633 (+!2294 lt!1898123 (h!59292 lt!1898122)))))

(assert (=> b!4735578 (= lt!1898625 (addToMapMapFromBucket!1476 (t!360327 lt!1898122) (+!2294 lt!1898123 (h!59292 lt!1898122))))))

(declare-fun lt!1898632 () Unit!132179)

(assert (=> b!4735578 (= lt!1898632 call!331274)))

(assert (=> b!4735578 (forall!11659 (toList!5982 lt!1898123) lambda!218182)))

(declare-fun lt!1898614 () Unit!132179)

(assert (=> b!4735578 (= lt!1898614 lt!1898632)))

(assert (=> b!4735578 (forall!11659 (toList!5982 lt!1898633) lambda!218183)))

(declare-fun lt!1898616 () Unit!132179)

(declare-fun Unit!132278 () Unit!132179)

(assert (=> b!4735578 (= lt!1898616 Unit!132278)))

(assert (=> b!4735578 (forall!11659 (t!360327 lt!1898122) lambda!218183)))

(declare-fun lt!1898619 () Unit!132179)

(declare-fun Unit!132279 () Unit!132179)

(assert (=> b!4735578 (= lt!1898619 Unit!132279)))

(declare-fun lt!1898629 () Unit!132179)

(declare-fun Unit!132280 () Unit!132179)

(assert (=> b!4735578 (= lt!1898629 Unit!132280)))

(declare-fun lt!1898634 () Unit!132179)

(assert (=> b!4735578 (= lt!1898634 (forallContained!3699 (toList!5982 lt!1898633) lambda!218183 (h!59292 lt!1898122)))))

(assert (=> b!4735578 (contains!16308 lt!1898633 (_1!30583 (h!59292 lt!1898122)))))

(declare-fun lt!1898618 () Unit!132179)

(declare-fun Unit!132281 () Unit!132179)

(assert (=> b!4735578 (= lt!1898618 Unit!132281)))

(assert (=> b!4735578 (contains!16308 lt!1898625 (_1!30583 (h!59292 lt!1898122)))))

(declare-fun lt!1898623 () Unit!132179)

(declare-fun Unit!132282 () Unit!132179)

(assert (=> b!4735578 (= lt!1898623 Unit!132282)))

(assert (=> b!4735578 (forall!11659 lt!1898122 lambda!218183)))

(declare-fun lt!1898630 () Unit!132179)

(declare-fun Unit!132283 () Unit!132179)

(assert (=> b!4735578 (= lt!1898630 Unit!132283)))

(assert (=> b!4735578 call!331275))

(declare-fun lt!1898627 () Unit!132179)

(declare-fun Unit!132284 () Unit!132179)

(assert (=> b!4735578 (= lt!1898627 Unit!132284)))

(declare-fun lt!1898615 () Unit!132179)

(declare-fun Unit!132285 () Unit!132179)

(assert (=> b!4735578 (= lt!1898615 Unit!132285)))

(declare-fun lt!1898617 () Unit!132179)

(assert (=> b!4735578 (= lt!1898617 (addForallContainsKeyThenBeforeAdding!821 lt!1898123 lt!1898625 (_1!30583 (h!59292 lt!1898122)) (_2!30583 (h!59292 lt!1898122))))))

(assert (=> b!4735578 (forall!11659 (toList!5982 lt!1898123) lambda!218183)))

(declare-fun lt!1898628 () Unit!132179)

(assert (=> b!4735578 (= lt!1898628 lt!1898617)))

(assert (=> b!4735578 call!331273))

(declare-fun lt!1898631 () Unit!132179)

(declare-fun Unit!132286 () Unit!132179)

(assert (=> b!4735578 (= lt!1898631 Unit!132286)))

(declare-fun res!2005473 () Bool)

(assert (=> b!4735578 (= res!2005473 (forall!11659 lt!1898122 lambda!218183))))

(assert (=> b!4735578 (=> (not res!2005473) (not e!2953829))))

(assert (=> b!4735578 e!2953829))

(declare-fun lt!1898624 () Unit!132179)

(declare-fun Unit!132287 () Unit!132179)

(assert (=> b!4735578 (= lt!1898624 Unit!132287)))

(assert (=> d!1511091 e!2953831))

(declare-fun res!2005472 () Bool)

(assert (=> d!1511091 (=> (not res!2005472) (not e!2953831))))

(assert (=> d!1511091 (= res!2005472 (forall!11659 lt!1898122 lambda!218184))))

(assert (=> d!1511091 (= lt!1898622 e!2953830)))

(assert (=> d!1511091 (= c!808801 ((_ is Nil!52919) lt!1898122))))

(assert (=> d!1511091 (noDuplicateKeys!2046 lt!1898122)))

(assert (=> d!1511091 (= (addToMapMapFromBucket!1476 lt!1898122 lt!1898123) lt!1898622)))

(declare-fun bm!331270 () Bool)

(assert (=> bm!331270 (= call!331274 (lemmaContainsAllItsOwnKeys!822 lt!1898123))))

(assert (= (and d!1511091 c!808801) b!4735576))

(assert (= (and d!1511091 (not c!808801)) b!4735578))

(assert (= (and b!4735578 res!2005473) b!4735577))

(assert (= (or b!4735576 b!4735578) bm!331270))

(assert (= (or b!4735576 b!4735578) bm!331269))

(assert (= (or b!4735576 b!4735578) bm!331268))

(assert (= (and d!1511091 res!2005472) b!4735574))

(assert (= (and b!4735574 res!2005471) b!4735575))

(declare-fun m!5681661 () Bool)

(assert (=> d!1511091 m!5681661))

(assert (=> d!1511091 m!5681605))

(declare-fun m!5681663 () Bool)

(assert (=> b!4735578 m!5681663))

(declare-fun m!5681665 () Bool)

(assert (=> b!4735578 m!5681665))

(declare-fun m!5681667 () Bool)

(assert (=> b!4735578 m!5681667))

(assert (=> b!4735578 m!5681665))

(declare-fun m!5681669 () Bool)

(assert (=> b!4735578 m!5681669))

(declare-fun m!5681671 () Bool)

(assert (=> b!4735578 m!5681671))

(declare-fun m!5681673 () Bool)

(assert (=> b!4735578 m!5681673))

(declare-fun m!5681675 () Bool)

(assert (=> b!4735578 m!5681675))

(declare-fun m!5681677 () Bool)

(assert (=> b!4735578 m!5681677))

(assert (=> b!4735578 m!5681675))

(declare-fun m!5681679 () Bool)

(assert (=> b!4735578 m!5681679))

(declare-fun m!5681681 () Bool)

(assert (=> b!4735578 m!5681681))

(declare-fun m!5681683 () Bool)

(assert (=> b!4735578 m!5681683))

(declare-fun m!5681685 () Bool)

(assert (=> bm!331268 m!5681685))

(assert (=> bm!331270 m!5681539))

(assert (=> b!4735577 m!5681671))

(declare-fun m!5681687 () Bool)

(assert (=> b!4735574 m!5681687))

(declare-fun m!5681689 () Bool)

(assert (=> b!4735575 m!5681689))

(declare-fun m!5681691 () Bool)

(assert (=> bm!331269 m!5681691))

(assert (=> b!4735191 d!1511091))

(declare-fun bs!1124824 () Bool)

(declare-fun d!1511093 () Bool)

(assert (= bs!1124824 (and d!1511093 start!482896)))

(declare-fun lambda!218187 () Int)

(assert (=> bs!1124824 (= lambda!218187 lambda!218044)))

(declare-fun bs!1124825 () Bool)

(assert (= bs!1124825 (and d!1511093 d!1511017)))

(assert (=> bs!1124825 (= lambda!218187 lambda!218126)))

(declare-fun bs!1124826 () Bool)

(assert (= bs!1124826 (and d!1511093 d!1510937)))

(assert (=> bs!1124826 (= lambda!218187 lambda!218061)))

(declare-fun bs!1124827 () Bool)

(assert (= bs!1124827 (and d!1511093 d!1511011)))

(assert (=> bs!1124827 (= lambda!218187 lambda!218124)))

(declare-fun bs!1124828 () Bool)

(assert (= bs!1124828 (and d!1511093 d!1510987)))

(assert (=> bs!1124828 (not (= lambda!218187 lambda!218113))))

(declare-fun bs!1124829 () Bool)

(assert (= bs!1124829 (and d!1511093 d!1510949)))

(assert (=> bs!1124829 (= lambda!218187 lambda!218071)))

(declare-fun bs!1124830 () Bool)

(assert (= bs!1124830 (and d!1511093 d!1511071)))

(assert (=> bs!1124830 (= lambda!218187 lambda!218172)))

(assert (=> d!1511093 (contains!16308 (extractMap!2072 (toList!5981 (ListLongMap!4512 lt!1898124))) key!4653)))

(declare-fun lt!1898637 () Unit!132179)

(declare-fun choose!33558 (ListLongMap!4511 K!14265 Hashable!6415) Unit!132179)

(assert (=> d!1511093 (= lt!1898637 (choose!33558 (ListLongMap!4512 lt!1898124) key!4653 hashF!1323))))

(assert (=> d!1511093 (forall!11657 (toList!5981 (ListLongMap!4512 lt!1898124)) lambda!218187)))

(assert (=> d!1511093 (= (lemmaListContainsThenExtractedMapContains!554 (ListLongMap!4512 lt!1898124) key!4653 hashF!1323) lt!1898637)))

(declare-fun bs!1124831 () Bool)

(assert (= bs!1124831 d!1511093))

(declare-fun m!5681693 () Bool)

(assert (=> bs!1124831 m!5681693))

(assert (=> bs!1124831 m!5681693))

(declare-fun m!5681695 () Bool)

(assert (=> bs!1124831 m!5681695))

(declare-fun m!5681697 () Bool)

(assert (=> bs!1124831 m!5681697))

(declare-fun m!5681699 () Bool)

(assert (=> bs!1124831 m!5681699))

(assert (=> b!4735191 d!1511093))

(declare-fun b!4735589 () Bool)

(declare-fun e!2953837 () List!53043)

(assert (=> b!4735589 (= e!2953837 (Cons!52919 (h!59292 lt!1898122) (removePairForKey!1641 (t!360327 lt!1898122) key!4653)))))

(declare-fun b!4735588 () Bool)

(declare-fun e!2953836 () List!53043)

(assert (=> b!4735588 (= e!2953836 e!2953837)))

(declare-fun c!808806 () Bool)

(assert (=> b!4735588 (= c!808806 ((_ is Cons!52919) lt!1898122))))

(declare-fun b!4735590 () Bool)

(assert (=> b!4735590 (= e!2953837 Nil!52919)))

(declare-fun b!4735587 () Bool)

(assert (=> b!4735587 (= e!2953836 (t!360327 lt!1898122))))

(declare-fun d!1511095 () Bool)

(declare-fun lt!1898640 () List!53043)

(assert (=> d!1511095 (not (containsKey!3443 lt!1898640 key!4653))))

(assert (=> d!1511095 (= lt!1898640 e!2953836)))

(declare-fun c!808807 () Bool)

(assert (=> d!1511095 (= c!808807 (and ((_ is Cons!52919) lt!1898122) (= (_1!30583 (h!59292 lt!1898122)) key!4653)))))

(assert (=> d!1511095 (noDuplicateKeys!2046 lt!1898122)))

(assert (=> d!1511095 (= (removePairForKey!1641 lt!1898122 key!4653) lt!1898640)))

(assert (= (and d!1511095 c!808807) b!4735587))

(assert (= (and d!1511095 (not c!808807)) b!4735588))

(assert (= (and b!4735588 c!808806) b!4735589))

(assert (= (and b!4735588 (not c!808806)) b!4735590))

(declare-fun m!5681701 () Bool)

(assert (=> b!4735589 m!5681701))

(declare-fun m!5681703 () Bool)

(assert (=> d!1511095 m!5681703))

(assert (=> d!1511095 m!5681605))

(assert (=> b!4735180 d!1511095))

(declare-fun d!1511097 () Bool)

(assert (=> d!1511097 (= (tail!9082 newBucket!218) (t!360327 newBucket!218))))

(assert (=> b!4735180 d!1511097))

(declare-fun d!1511099 () Bool)

(assert (=> d!1511099 (= (tail!9082 oldBucket!34) (t!360327 oldBucket!34))))

(assert (=> b!4735180 d!1511099))

(declare-fun bs!1124832 () Bool)

(declare-fun b!4735593 () Bool)

(assert (= bs!1124832 (and b!4735593 d!1511091)))

(declare-fun lambda!218188 () Int)

(assert (=> bs!1124832 (= (= lt!1898123 lt!1898622) (= lambda!218188 lambda!218184))))

(declare-fun bs!1124833 () Bool)

(assert (= bs!1124833 (and b!4735593 b!4735566)))

(assert (=> bs!1124833 (= lambda!218188 lambda!218174)))

(declare-fun bs!1124834 () Bool)

(assert (= bs!1124834 (and b!4735593 d!1511029)))

(assert (=> bs!1124834 (= (= lt!1898123 lt!1898549) (= lambda!218188 lambda!218171))))

(declare-fun bs!1124835 () Bool)

(assert (= bs!1124835 (and b!4735593 d!1510929)))

(assert (=> bs!1124835 (not (= lambda!218188 lambda!218054))))

(declare-fun bs!1124836 () Bool)

(assert (= bs!1124836 (and b!4735593 b!4735564)))

(assert (=> bs!1124836 (= lambda!218188 lambda!218173)))

(declare-fun bs!1124837 () Bool)

(assert (= bs!1124837 (and b!4735593 b!4735573)))

(assert (=> bs!1124837 (= (= lt!1898123 lt!1898604) (= lambda!218188 lambda!218179))))

(declare-fun bs!1124838 () Bool)

(assert (= bs!1124838 (and b!4735593 d!1511073)))

(assert (=> bs!1124838 (= (= lt!1898123 lt!1898575) (= lambda!218188 lambda!218176))))

(declare-fun bs!1124839 () Bool)

(assert (= bs!1124839 (and b!4735593 b!4735571)))

(assert (=> bs!1124839 (= lambda!218188 lambda!218177)))

(assert (=> bs!1124837 (= lambda!218188 lambda!218178)))

(declare-fun bs!1124840 () Bool)

(assert (= bs!1124840 (and b!4735593 d!1511085)))

(assert (=> bs!1124840 (= (= lt!1898123 lt!1898601) (= lambda!218188 lambda!218180))))

(declare-fun bs!1124841 () Bool)

(assert (= bs!1124841 (and b!4735593 b!4735578)))

(assert (=> bs!1124841 (= lambda!218188 lambda!218182)))

(assert (=> bs!1124841 (= (= lt!1898123 lt!1898625) (= lambda!218188 lambda!218183))))

(declare-fun bs!1124842 () Bool)

(assert (= bs!1124842 (and b!4735593 b!4735555)))

(assert (=> bs!1124842 (= lambda!218188 lambda!218169)))

(declare-fun bs!1124843 () Bool)

(assert (= bs!1124843 (and b!4735593 b!4735553)))

(assert (=> bs!1124843 (= lambda!218188 lambda!218168)))

(assert (=> bs!1124833 (= (= lt!1898123 lt!1898578) (= lambda!218188 lambda!218175))))

(declare-fun bs!1124844 () Bool)

(assert (= bs!1124844 (and b!4735593 b!4735576)))

(assert (=> bs!1124844 (= lambda!218188 lambda!218181)))

(assert (=> bs!1124842 (= (= lt!1898123 lt!1898552) (= lambda!218188 lambda!218170))))

(assert (=> b!4735593 true))

(declare-fun bs!1124845 () Bool)

(declare-fun b!4735595 () Bool)

(assert (= bs!1124845 (and b!4735595 d!1511091)))

(declare-fun lambda!218189 () Int)

(assert (=> bs!1124845 (= (= lt!1898123 lt!1898622) (= lambda!218189 lambda!218184))))

(declare-fun bs!1124846 () Bool)

(assert (= bs!1124846 (and b!4735595 b!4735566)))

(assert (=> bs!1124846 (= lambda!218189 lambda!218174)))

(declare-fun bs!1124847 () Bool)

(assert (= bs!1124847 (and b!4735595 d!1511029)))

(assert (=> bs!1124847 (= (= lt!1898123 lt!1898549) (= lambda!218189 lambda!218171))))

(declare-fun bs!1124848 () Bool)

(assert (= bs!1124848 (and b!4735595 d!1510929)))

(assert (=> bs!1124848 (not (= lambda!218189 lambda!218054))))

(declare-fun bs!1124849 () Bool)

(assert (= bs!1124849 (and b!4735595 b!4735564)))

(assert (=> bs!1124849 (= lambda!218189 lambda!218173)))

(declare-fun bs!1124850 () Bool)

(assert (= bs!1124850 (and b!4735595 b!4735573)))

(assert (=> bs!1124850 (= (= lt!1898123 lt!1898604) (= lambda!218189 lambda!218179))))

(declare-fun bs!1124851 () Bool)

(assert (= bs!1124851 (and b!4735595 d!1511073)))

(assert (=> bs!1124851 (= (= lt!1898123 lt!1898575) (= lambda!218189 lambda!218176))))

(assert (=> bs!1124850 (= lambda!218189 lambda!218178)))

(declare-fun bs!1124852 () Bool)

(assert (= bs!1124852 (and b!4735595 d!1511085)))

(assert (=> bs!1124852 (= (= lt!1898123 lt!1898601) (= lambda!218189 lambda!218180))))

(declare-fun bs!1124853 () Bool)

(assert (= bs!1124853 (and b!4735595 b!4735578)))

(assert (=> bs!1124853 (= lambda!218189 lambda!218182)))

(assert (=> bs!1124853 (= (= lt!1898123 lt!1898625) (= lambda!218189 lambda!218183))))

(declare-fun bs!1124854 () Bool)

(assert (= bs!1124854 (and b!4735595 b!4735555)))

(assert (=> bs!1124854 (= lambda!218189 lambda!218169)))

(declare-fun bs!1124855 () Bool)

(assert (= bs!1124855 (and b!4735595 b!4735553)))

(assert (=> bs!1124855 (= lambda!218189 lambda!218168)))

(assert (=> bs!1124846 (= (= lt!1898123 lt!1898578) (= lambda!218189 lambda!218175))))

(declare-fun bs!1124856 () Bool)

(assert (= bs!1124856 (and b!4735595 b!4735576)))

(assert (=> bs!1124856 (= lambda!218189 lambda!218181)))

(assert (=> bs!1124854 (= (= lt!1898123 lt!1898552) (= lambda!218189 lambda!218170))))

(declare-fun bs!1124857 () Bool)

(assert (= bs!1124857 (and b!4735595 b!4735571)))

(assert (=> bs!1124857 (= lambda!218189 lambda!218177)))

(declare-fun bs!1124858 () Bool)

(assert (= bs!1124858 (and b!4735595 b!4735593)))

(assert (=> bs!1124858 (= lambda!218189 lambda!218188)))

(assert (=> b!4735595 true))

(declare-fun lambda!218190 () Int)

(declare-fun lt!1898652 () ListMap!5345)

(assert (=> bs!1124845 (= (= lt!1898652 lt!1898622) (= lambda!218190 lambda!218184))))

(assert (=> bs!1124846 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218174))))

(assert (=> bs!1124847 (= (= lt!1898652 lt!1898549) (= lambda!218190 lambda!218171))))

(assert (=> bs!1124848 (not (= lambda!218190 lambda!218054))))

(assert (=> b!4735595 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218189))))

(assert (=> bs!1124849 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218173))))

(assert (=> bs!1124850 (= (= lt!1898652 lt!1898604) (= lambda!218190 lambda!218179))))

(assert (=> bs!1124851 (= (= lt!1898652 lt!1898575) (= lambda!218190 lambda!218176))))

(assert (=> bs!1124850 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218178))))

(assert (=> bs!1124852 (= (= lt!1898652 lt!1898601) (= lambda!218190 lambda!218180))))

(assert (=> bs!1124853 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218182))))

(assert (=> bs!1124853 (= (= lt!1898652 lt!1898625) (= lambda!218190 lambda!218183))))

(assert (=> bs!1124854 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218169))))

(assert (=> bs!1124855 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218168))))

(assert (=> bs!1124846 (= (= lt!1898652 lt!1898578) (= lambda!218190 lambda!218175))))

(assert (=> bs!1124856 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218181))))

(assert (=> bs!1124854 (= (= lt!1898652 lt!1898552) (= lambda!218190 lambda!218170))))

(assert (=> bs!1124857 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218177))))

(assert (=> bs!1124858 (= (= lt!1898652 lt!1898123) (= lambda!218190 lambda!218188))))

(assert (=> b!4735595 true))

(declare-fun bs!1124859 () Bool)

(declare-fun d!1511101 () Bool)

(assert (= bs!1124859 (and d!1511101 d!1511091)))

(declare-fun lambda!218191 () Int)

(declare-fun lt!1898649 () ListMap!5345)

(assert (=> bs!1124859 (= (= lt!1898649 lt!1898622) (= lambda!218191 lambda!218184))))

(declare-fun bs!1124860 () Bool)

(assert (= bs!1124860 (and d!1511101 b!4735566)))

(assert (=> bs!1124860 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218174))))

(declare-fun bs!1124861 () Bool)

(assert (= bs!1124861 (and d!1511101 d!1511029)))

(assert (=> bs!1124861 (= (= lt!1898649 lt!1898549) (= lambda!218191 lambda!218171))))

(declare-fun bs!1124862 () Bool)

(assert (= bs!1124862 (and d!1511101 d!1510929)))

(assert (=> bs!1124862 (not (= lambda!218191 lambda!218054))))

(declare-fun bs!1124863 () Bool)

(assert (= bs!1124863 (and d!1511101 b!4735595)))

(assert (=> bs!1124863 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218189))))

(declare-fun bs!1124864 () Bool)

(assert (= bs!1124864 (and d!1511101 b!4735564)))

(assert (=> bs!1124864 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218173))))

(declare-fun bs!1124865 () Bool)

(assert (= bs!1124865 (and d!1511101 b!4735573)))

(assert (=> bs!1124865 (= (= lt!1898649 lt!1898604) (= lambda!218191 lambda!218179))))

(declare-fun bs!1124866 () Bool)

(assert (= bs!1124866 (and d!1511101 d!1511073)))

(assert (=> bs!1124866 (= (= lt!1898649 lt!1898575) (= lambda!218191 lambda!218176))))

(assert (=> bs!1124865 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218178))))

(declare-fun bs!1124867 () Bool)

(assert (= bs!1124867 (and d!1511101 d!1511085)))

(assert (=> bs!1124867 (= (= lt!1898649 lt!1898601) (= lambda!218191 lambda!218180))))

(assert (=> bs!1124863 (= (= lt!1898649 lt!1898652) (= lambda!218191 lambda!218190))))

(declare-fun bs!1124868 () Bool)

(assert (= bs!1124868 (and d!1511101 b!4735578)))

(assert (=> bs!1124868 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218182))))

(assert (=> bs!1124868 (= (= lt!1898649 lt!1898625) (= lambda!218191 lambda!218183))))

(declare-fun bs!1124869 () Bool)

(assert (= bs!1124869 (and d!1511101 b!4735555)))

(assert (=> bs!1124869 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218169))))

(declare-fun bs!1124870 () Bool)

(assert (= bs!1124870 (and d!1511101 b!4735553)))

(assert (=> bs!1124870 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218168))))

(assert (=> bs!1124860 (= (= lt!1898649 lt!1898578) (= lambda!218191 lambda!218175))))

(declare-fun bs!1124871 () Bool)

(assert (= bs!1124871 (and d!1511101 b!4735576)))

(assert (=> bs!1124871 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218181))))

(assert (=> bs!1124869 (= (= lt!1898649 lt!1898552) (= lambda!218191 lambda!218170))))

(declare-fun bs!1124872 () Bool)

(assert (= bs!1124872 (and d!1511101 b!4735571)))

(assert (=> bs!1124872 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218177))))

(declare-fun bs!1124873 () Bool)

(assert (= bs!1124873 (and d!1511101 b!4735593)))

(assert (=> bs!1124873 (= (= lt!1898649 lt!1898123) (= lambda!218191 lambda!218188))))

(assert (=> d!1511101 true))

(declare-fun c!808808 () Bool)

(declare-fun bm!331271 () Bool)

(declare-fun call!331276 () Bool)

(assert (=> bm!331271 (= call!331276 (forall!11659 (toList!5982 lt!1898123) (ite c!808808 lambda!218188 lambda!218190)))))

(declare-fun call!331278 () Bool)

(declare-fun lt!1898660 () ListMap!5345)

(declare-fun bm!331272 () Bool)

(assert (=> bm!331272 (= call!331278 (forall!11659 (ite c!808808 (toList!5982 lt!1898123) (toList!5982 lt!1898660)) (ite c!808808 lambda!218188 lambda!218190)))))

(declare-fun b!4735591 () Bool)

(declare-fun res!2005474 () Bool)

(declare-fun e!2953840 () Bool)

(assert (=> b!4735591 (=> (not res!2005474) (not e!2953840))))

(assert (=> b!4735591 (= res!2005474 (forall!11659 (toList!5982 lt!1898123) lambda!218191))))

(declare-fun b!4735592 () Bool)

(assert (=> b!4735592 (= e!2953840 (invariantList!1537 (toList!5982 lt!1898649)))))

(declare-fun e!2953839 () ListMap!5345)

(assert (=> b!4735593 (= e!2953839 lt!1898123)))

(declare-fun lt!1898648 () Unit!132179)

(declare-fun call!331277 () Unit!132179)

(assert (=> b!4735593 (= lt!1898648 call!331277)))

(assert (=> b!4735593 call!331278))

(declare-fun lt!1898653 () Unit!132179)

(assert (=> b!4735593 (= lt!1898653 lt!1898648)))

(assert (=> b!4735593 call!331276))

(declare-fun lt!1898647 () Unit!132179)

(declare-fun Unit!132288 () Unit!132179)

(assert (=> b!4735593 (= lt!1898647 Unit!132288)))

(declare-fun b!4735594 () Bool)

(declare-fun e!2953838 () Bool)

(assert (=> b!4735594 (= e!2953838 (forall!11659 (toList!5982 lt!1898123) lambda!218190))))

(assert (=> b!4735595 (= e!2953839 lt!1898652)))

(assert (=> b!4735595 (= lt!1898660 (+!2294 lt!1898123 (h!59292 (_2!30584 (h!59293 (toList!5981 lm!2023))))))))

(assert (=> b!4735595 (= lt!1898652 (addToMapMapFromBucket!1476 (t!360327 (_2!30584 (h!59293 (toList!5981 lm!2023)))) (+!2294 lt!1898123 (h!59292 (_2!30584 (h!59293 (toList!5981 lm!2023)))))))))

(declare-fun lt!1898659 () Unit!132179)

(assert (=> b!4735595 (= lt!1898659 call!331277)))

(assert (=> b!4735595 (forall!11659 (toList!5982 lt!1898123) lambda!218189)))

(declare-fun lt!1898641 () Unit!132179)

(assert (=> b!4735595 (= lt!1898641 lt!1898659)))

(assert (=> b!4735595 (forall!11659 (toList!5982 lt!1898660) lambda!218190)))

(declare-fun lt!1898643 () Unit!132179)

(declare-fun Unit!132289 () Unit!132179)

(assert (=> b!4735595 (= lt!1898643 Unit!132289)))

(assert (=> b!4735595 (forall!11659 (t!360327 (_2!30584 (h!59293 (toList!5981 lm!2023)))) lambda!218190)))

(declare-fun lt!1898646 () Unit!132179)

(declare-fun Unit!132290 () Unit!132179)

(assert (=> b!4735595 (= lt!1898646 Unit!132290)))

(declare-fun lt!1898656 () Unit!132179)

(declare-fun Unit!132291 () Unit!132179)

(assert (=> b!4735595 (= lt!1898656 Unit!132291)))

(declare-fun lt!1898661 () Unit!132179)

(assert (=> b!4735595 (= lt!1898661 (forallContained!3699 (toList!5982 lt!1898660) lambda!218190 (h!59292 (_2!30584 (h!59293 (toList!5981 lm!2023))))))))

(assert (=> b!4735595 (contains!16308 lt!1898660 (_1!30583 (h!59292 (_2!30584 (h!59293 (toList!5981 lm!2023))))))))

(declare-fun lt!1898645 () Unit!132179)

(declare-fun Unit!132292 () Unit!132179)

(assert (=> b!4735595 (= lt!1898645 Unit!132292)))

(assert (=> b!4735595 (contains!16308 lt!1898652 (_1!30583 (h!59292 (_2!30584 (h!59293 (toList!5981 lm!2023))))))))

(declare-fun lt!1898650 () Unit!132179)

(declare-fun Unit!132293 () Unit!132179)

(assert (=> b!4735595 (= lt!1898650 Unit!132293)))

(assert (=> b!4735595 (forall!11659 (_2!30584 (h!59293 (toList!5981 lm!2023))) lambda!218190)))

(declare-fun lt!1898657 () Unit!132179)

(declare-fun Unit!132294 () Unit!132179)

(assert (=> b!4735595 (= lt!1898657 Unit!132294)))

(assert (=> b!4735595 call!331278))

(declare-fun lt!1898654 () Unit!132179)

(declare-fun Unit!132295 () Unit!132179)

(assert (=> b!4735595 (= lt!1898654 Unit!132295)))

(declare-fun lt!1898642 () Unit!132179)

(declare-fun Unit!132296 () Unit!132179)

(assert (=> b!4735595 (= lt!1898642 Unit!132296)))

(declare-fun lt!1898644 () Unit!132179)

(assert (=> b!4735595 (= lt!1898644 (addForallContainsKeyThenBeforeAdding!821 lt!1898123 lt!1898652 (_1!30583 (h!59292 (_2!30584 (h!59293 (toList!5981 lm!2023))))) (_2!30583 (h!59292 (_2!30584 (h!59293 (toList!5981 lm!2023)))))))))

(assert (=> b!4735595 (forall!11659 (toList!5982 lt!1898123) lambda!218190)))

(declare-fun lt!1898655 () Unit!132179)

(assert (=> b!4735595 (= lt!1898655 lt!1898644)))

(assert (=> b!4735595 call!331276))

(declare-fun lt!1898658 () Unit!132179)

(declare-fun Unit!132297 () Unit!132179)

(assert (=> b!4735595 (= lt!1898658 Unit!132297)))

(declare-fun res!2005476 () Bool)

(assert (=> b!4735595 (= res!2005476 (forall!11659 (_2!30584 (h!59293 (toList!5981 lm!2023))) lambda!218190))))

(assert (=> b!4735595 (=> (not res!2005476) (not e!2953838))))

(assert (=> b!4735595 e!2953838))

(declare-fun lt!1898651 () Unit!132179)

(declare-fun Unit!132298 () Unit!132179)

(assert (=> b!4735595 (= lt!1898651 Unit!132298)))

(assert (=> d!1511101 e!2953840))

(declare-fun res!2005475 () Bool)

(assert (=> d!1511101 (=> (not res!2005475) (not e!2953840))))

(assert (=> d!1511101 (= res!2005475 (forall!11659 (_2!30584 (h!59293 (toList!5981 lm!2023))) lambda!218191))))

(assert (=> d!1511101 (= lt!1898649 e!2953839)))

(assert (=> d!1511101 (= c!808808 ((_ is Nil!52919) (_2!30584 (h!59293 (toList!5981 lm!2023)))))))

(assert (=> d!1511101 (noDuplicateKeys!2046 (_2!30584 (h!59293 (toList!5981 lm!2023))))))

(assert (=> d!1511101 (= (addToMapMapFromBucket!1476 (_2!30584 (h!59293 (toList!5981 lm!2023))) lt!1898123) lt!1898649)))

(declare-fun bm!331273 () Bool)

(assert (=> bm!331273 (= call!331277 (lemmaContainsAllItsOwnKeys!822 lt!1898123))))

(assert (= (and d!1511101 c!808808) b!4735593))

(assert (= (and d!1511101 (not c!808808)) b!4735595))

(assert (= (and b!4735595 res!2005476) b!4735594))

(assert (= (or b!4735593 b!4735595) bm!331273))

(assert (= (or b!4735593 b!4735595) bm!331272))

(assert (= (or b!4735593 b!4735595) bm!331271))

(assert (= (and d!1511101 res!2005475) b!4735591))

(assert (= (and b!4735591 res!2005474) b!4735592))

(declare-fun m!5681705 () Bool)

(assert (=> d!1511101 m!5681705))

(declare-fun m!5681707 () Bool)

(assert (=> d!1511101 m!5681707))

(declare-fun m!5681709 () Bool)

(assert (=> b!4735595 m!5681709))

(declare-fun m!5681711 () Bool)

(assert (=> b!4735595 m!5681711))

(declare-fun m!5681713 () Bool)

(assert (=> b!4735595 m!5681713))

(assert (=> b!4735595 m!5681711))

(declare-fun m!5681715 () Bool)

(assert (=> b!4735595 m!5681715))

(declare-fun m!5681717 () Bool)

(assert (=> b!4735595 m!5681717))

(declare-fun m!5681719 () Bool)

(assert (=> b!4735595 m!5681719))

(declare-fun m!5681721 () Bool)

(assert (=> b!4735595 m!5681721))

(declare-fun m!5681723 () Bool)

(assert (=> b!4735595 m!5681723))

(assert (=> b!4735595 m!5681721))

(declare-fun m!5681725 () Bool)

(assert (=> b!4735595 m!5681725))

(declare-fun m!5681727 () Bool)

(assert (=> b!4735595 m!5681727))

(declare-fun m!5681729 () Bool)

(assert (=> b!4735595 m!5681729))

(declare-fun m!5681731 () Bool)

(assert (=> bm!331271 m!5681731))

(assert (=> bm!331273 m!5681539))

(assert (=> b!4735594 m!5681717))

(declare-fun m!5681733 () Bool)

(assert (=> b!4735591 m!5681733))

(declare-fun m!5681735 () Bool)

(assert (=> b!4735592 m!5681735))

(declare-fun m!5681737 () Bool)

(assert (=> bm!331272 m!5681737))

(assert (=> b!4735190 d!1511101))

(declare-fun bs!1124874 () Bool)

(declare-fun d!1511103 () Bool)

(assert (= bs!1124874 (and d!1511103 start!482896)))

(declare-fun lambda!218192 () Int)

(assert (=> bs!1124874 (= lambda!218192 lambda!218044)))

(declare-fun bs!1124875 () Bool)

(assert (= bs!1124875 (and d!1511103 d!1510937)))

(assert (=> bs!1124875 (= lambda!218192 lambda!218061)))

(declare-fun bs!1124876 () Bool)

(assert (= bs!1124876 (and d!1511103 d!1511011)))

(assert (=> bs!1124876 (= lambda!218192 lambda!218124)))

(declare-fun bs!1124877 () Bool)

(assert (= bs!1124877 (and d!1511103 d!1510987)))

(assert (=> bs!1124877 (not (= lambda!218192 lambda!218113))))

(declare-fun bs!1124878 () Bool)

(assert (= bs!1124878 (and d!1511103 d!1510949)))

(assert (=> bs!1124878 (= lambda!218192 lambda!218071)))

(declare-fun bs!1124879 () Bool)

(assert (= bs!1124879 (and d!1511103 d!1511071)))

(assert (=> bs!1124879 (= lambda!218192 lambda!218172)))

(declare-fun bs!1124880 () Bool)

(assert (= bs!1124880 (and d!1511103 d!1511093)))

(assert (=> bs!1124880 (= lambda!218192 lambda!218187)))

(declare-fun bs!1124881 () Bool)

(assert (= bs!1124881 (and d!1511103 d!1511017)))

(assert (=> bs!1124881 (= lambda!218192 lambda!218126)))

(declare-fun lt!1898662 () ListMap!5345)

(assert (=> d!1511103 (invariantList!1537 (toList!5982 lt!1898662))))

(declare-fun e!2953841 () ListMap!5345)

(assert (=> d!1511103 (= lt!1898662 e!2953841)))

(declare-fun c!808809 () Bool)

(assert (=> d!1511103 (= c!808809 ((_ is Cons!52920) (t!360328 (toList!5981 lm!2023))))))

(assert (=> d!1511103 (forall!11657 (t!360328 (toList!5981 lm!2023)) lambda!218192)))

(assert (=> d!1511103 (= (extractMap!2072 (t!360328 (toList!5981 lm!2023))) lt!1898662)))

(declare-fun b!4735596 () Bool)

(assert (=> b!4735596 (= e!2953841 (addToMapMapFromBucket!1476 (_2!30584 (h!59293 (t!360328 (toList!5981 lm!2023)))) (extractMap!2072 (t!360328 (t!360328 (toList!5981 lm!2023))))))))

(declare-fun b!4735597 () Bool)

(assert (=> b!4735597 (= e!2953841 (ListMap!5346 Nil!52919))))

(assert (= (and d!1511103 c!808809) b!4735596))

(assert (= (and d!1511103 (not c!808809)) b!4735597))

(declare-fun m!5681739 () Bool)

(assert (=> d!1511103 m!5681739))

(declare-fun m!5681741 () Bool)

(assert (=> d!1511103 m!5681741))

(declare-fun m!5681743 () Bool)

(assert (=> b!4735596 m!5681743))

(assert (=> b!4735596 m!5681743))

(declare-fun m!5681745 () Bool)

(assert (=> b!4735596 m!5681745))

(assert (=> b!4735190 d!1511103))

(declare-fun d!1511105 () Bool)

(declare-fun tail!9085 (List!53044) List!53044)

(assert (=> d!1511105 (= (tail!9083 lm!2023) (ListLongMap!4512 (tail!9085 (toList!5981 lm!2023))))))

(declare-fun bs!1124882 () Bool)

(assert (= bs!1124882 d!1511105))

(declare-fun m!5681747 () Bool)

(assert (=> bs!1124882 m!5681747))

(assert (=> b!4735190 d!1511105))

(declare-fun d!1511107 () Bool)

(declare-fun hash!4442 (Hashable!6415 K!14265) (_ BitVec 64))

(assert (=> d!1511107 (= (hash!4440 hashF!1323 key!4653) (hash!4442 hashF!1323 key!4653))))

(declare-fun bs!1124883 () Bool)

(assert (= bs!1124883 d!1511107))

(declare-fun m!5681749 () Bool)

(assert (=> bs!1124883 m!5681749))

(assert (=> b!4735189 d!1511107))

(declare-fun d!1511109 () Bool)

(assert (=> d!1511109 (= (eq!1143 lt!1898120 (+!2294 lt!1898114 lt!1898116)) (= (content!9447 (toList!5982 lt!1898120)) (content!9447 (toList!5982 (+!2294 lt!1898114 lt!1898116)))))))

(declare-fun bs!1124884 () Bool)

(assert (= bs!1124884 d!1511109))

(assert (=> bs!1124884 m!5681599))

(declare-fun m!5681751 () Bool)

(assert (=> bs!1124884 m!5681751))

(assert (=> b!4735177 d!1511109))

(declare-fun d!1511111 () Bool)

(declare-fun e!2953842 () Bool)

(assert (=> d!1511111 e!2953842))

(declare-fun res!2005478 () Bool)

(assert (=> d!1511111 (=> (not res!2005478) (not e!2953842))))

(declare-fun lt!1898665 () ListMap!5345)

(assert (=> d!1511111 (= res!2005478 (contains!16308 lt!1898665 (_1!30583 lt!1898116)))))

(declare-fun lt!1898666 () List!53043)

(assert (=> d!1511111 (= lt!1898665 (ListMap!5346 lt!1898666))))

(declare-fun lt!1898664 () Unit!132179)

(declare-fun lt!1898663 () Unit!132179)

(assert (=> d!1511111 (= lt!1898664 lt!1898663)))

(assert (=> d!1511111 (= (getValueByKey!2005 lt!1898666 (_1!30583 lt!1898116)) (Some!12432 (_2!30583 lt!1898116)))))

(assert (=> d!1511111 (= lt!1898663 (lemmaContainsTupThenGetReturnValue!1103 lt!1898666 (_1!30583 lt!1898116) (_2!30583 lt!1898116)))))

(assert (=> d!1511111 (= lt!1898666 (insertNoDuplicatedKeys!611 (toList!5982 lt!1898114) (_1!30583 lt!1898116) (_2!30583 lt!1898116)))))

(assert (=> d!1511111 (= (+!2294 lt!1898114 lt!1898116) lt!1898665)))

(declare-fun b!4735598 () Bool)

(declare-fun res!2005477 () Bool)

(assert (=> b!4735598 (=> (not res!2005477) (not e!2953842))))

(assert (=> b!4735598 (= res!2005477 (= (getValueByKey!2005 (toList!5982 lt!1898665) (_1!30583 lt!1898116)) (Some!12432 (_2!30583 lt!1898116))))))

(declare-fun b!4735599 () Bool)

(assert (=> b!4735599 (= e!2953842 (contains!16310 (toList!5982 lt!1898665) lt!1898116))))

(assert (= (and d!1511111 res!2005478) b!4735598))

(assert (= (and b!4735598 res!2005477) b!4735599))

(declare-fun m!5681753 () Bool)

(assert (=> d!1511111 m!5681753))

(declare-fun m!5681755 () Bool)

(assert (=> d!1511111 m!5681755))

(declare-fun m!5681757 () Bool)

(assert (=> d!1511111 m!5681757))

(declare-fun m!5681759 () Bool)

(assert (=> d!1511111 m!5681759))

(declare-fun m!5681761 () Bool)

(assert (=> b!4735598 m!5681761))

(declare-fun m!5681763 () Bool)

(assert (=> b!4735599 m!5681763))

(assert (=> b!4735177 d!1511111))

(declare-fun bs!1124885 () Bool)

(declare-fun d!1511113 () Bool)

(assert (= bs!1124885 (and d!1511113 d!1511091)))

(declare-fun lambda!218193 () Int)

(assert (=> bs!1124885 (not (= lambda!218193 lambda!218184))))

(declare-fun bs!1124886 () Bool)

(assert (= bs!1124886 (and d!1511113 d!1511029)))

(assert (=> bs!1124886 (not (= lambda!218193 lambda!218171))))

(declare-fun bs!1124887 () Bool)

(assert (= bs!1124887 (and d!1511113 d!1510929)))

(assert (=> bs!1124887 (= lambda!218193 lambda!218054)))

(declare-fun bs!1124888 () Bool)

(assert (= bs!1124888 (and d!1511113 b!4735595)))

(assert (=> bs!1124888 (not (= lambda!218193 lambda!218189))))

(declare-fun bs!1124889 () Bool)

(assert (= bs!1124889 (and d!1511113 b!4735564)))

(assert (=> bs!1124889 (not (= lambda!218193 lambda!218173))))

(declare-fun bs!1124890 () Bool)

(assert (= bs!1124890 (and d!1511113 b!4735573)))

(assert (=> bs!1124890 (not (= lambda!218193 lambda!218179))))

(declare-fun bs!1124891 () Bool)

(assert (= bs!1124891 (and d!1511113 d!1511073)))

(assert (=> bs!1124891 (not (= lambda!218193 lambda!218176))))

(assert (=> bs!1124890 (not (= lambda!218193 lambda!218178))))

(declare-fun bs!1124892 () Bool)

(assert (= bs!1124892 (and d!1511113 d!1511085)))

(assert (=> bs!1124892 (not (= lambda!218193 lambda!218180))))

(assert (=> bs!1124888 (not (= lambda!218193 lambda!218190))))

(declare-fun bs!1124893 () Bool)

(assert (= bs!1124893 (and d!1511113 b!4735578)))

(assert (=> bs!1124893 (not (= lambda!218193 lambda!218182))))

(assert (=> bs!1124893 (not (= lambda!218193 lambda!218183))))

(declare-fun bs!1124894 () Bool)

(assert (= bs!1124894 (and d!1511113 d!1511101)))

(assert (=> bs!1124894 (not (= lambda!218193 lambda!218191))))

(declare-fun bs!1124895 () Bool)

(assert (= bs!1124895 (and d!1511113 b!4735566)))

(assert (=> bs!1124895 (not (= lambda!218193 lambda!218174))))

(declare-fun bs!1124896 () Bool)

(assert (= bs!1124896 (and d!1511113 b!4735555)))

(assert (=> bs!1124896 (not (= lambda!218193 lambda!218169))))

(declare-fun bs!1124897 () Bool)

(assert (= bs!1124897 (and d!1511113 b!4735553)))

(assert (=> bs!1124897 (not (= lambda!218193 lambda!218168))))

(assert (=> bs!1124895 (not (= lambda!218193 lambda!218175))))

(declare-fun bs!1124898 () Bool)

(assert (= bs!1124898 (and d!1511113 b!4735576)))

(assert (=> bs!1124898 (not (= lambda!218193 lambda!218181))))

(assert (=> bs!1124896 (not (= lambda!218193 lambda!218170))))

(declare-fun bs!1124899 () Bool)

(assert (= bs!1124899 (and d!1511113 b!4735571)))

(assert (=> bs!1124899 (not (= lambda!218193 lambda!218177))))

(declare-fun bs!1124900 () Bool)

(assert (= bs!1124900 (and d!1511113 b!4735593)))

(assert (=> bs!1124900 (not (= lambda!218193 lambda!218188))))

(assert (=> d!1511113 true))

(assert (=> d!1511113 true))

(assert (=> d!1511113 (= (allKeysSameHash!1872 newBucket!218 hash!405 hashF!1323) (forall!11659 newBucket!218 lambda!218193))))

(declare-fun bs!1124901 () Bool)

(assert (= bs!1124901 d!1511113))

(declare-fun m!5681765 () Bool)

(assert (=> bs!1124901 m!5681765))

(assert (=> b!4735188 d!1511113))

(declare-fun b!4735600 () Bool)

(declare-fun e!2953845 () List!53046)

(assert (=> b!4735600 (= e!2953845 (getKeysList!976 (toList!5982 lt!1898121)))))

(declare-fun d!1511115 () Bool)

(declare-fun e!2953844 () Bool)

(assert (=> d!1511115 e!2953844))

(declare-fun res!2005481 () Bool)

(assert (=> d!1511115 (=> res!2005481 e!2953844)))

(declare-fun e!2953843 () Bool)

(assert (=> d!1511115 (= res!2005481 e!2953843)))

(declare-fun res!2005479 () Bool)

(assert (=> d!1511115 (=> (not res!2005479) (not e!2953843))))

(declare-fun lt!1898668 () Bool)

(assert (=> d!1511115 (= res!2005479 (not lt!1898668))))

(declare-fun lt!1898670 () Bool)

(assert (=> d!1511115 (= lt!1898668 lt!1898670)))

(declare-fun lt!1898673 () Unit!132179)

(declare-fun e!2953846 () Unit!132179)

(assert (=> d!1511115 (= lt!1898673 e!2953846)))

(declare-fun c!808812 () Bool)

(assert (=> d!1511115 (= c!808812 lt!1898670)))

(assert (=> d!1511115 (= lt!1898670 (containsKey!3447 (toList!5982 lt!1898121) key!4653))))

(assert (=> d!1511115 (= (contains!16308 lt!1898121 key!4653) lt!1898668)))

(declare-fun b!4735601 () Bool)

(assert (=> b!4735601 (= e!2953843 (not (contains!16312 (keys!19033 lt!1898121) key!4653)))))

(declare-fun b!4735602 () Bool)

(assert (=> b!4735602 (= e!2953845 (keys!19033 lt!1898121))))

(declare-fun b!4735603 () Bool)

(declare-fun lt!1898674 () Unit!132179)

(assert (=> b!4735603 (= e!2953846 lt!1898674)))

(declare-fun lt!1898672 () Unit!132179)

(assert (=> b!4735603 (= lt!1898672 (lemmaContainsKeyImpliesGetValueByKeyDefined!1896 (toList!5982 lt!1898121) key!4653))))

(assert (=> b!4735603 (isDefined!9687 (getValueByKey!2005 (toList!5982 lt!1898121) key!4653))))

(declare-fun lt!1898671 () Unit!132179)

(assert (=> b!4735603 (= lt!1898671 lt!1898672)))

(assert (=> b!4735603 (= lt!1898674 (lemmaInListThenGetKeysListContains!971 (toList!5982 lt!1898121) key!4653))))

(declare-fun call!331279 () Bool)

(assert (=> b!4735603 call!331279))

(declare-fun b!4735604 () Bool)

(declare-fun e!2953847 () Bool)

(assert (=> b!4735604 (= e!2953847 (contains!16312 (keys!19033 lt!1898121) key!4653))))

(declare-fun b!4735605 () Bool)

(declare-fun e!2953848 () Unit!132179)

(assert (=> b!4735605 (= e!2953846 e!2953848)))

(declare-fun c!808810 () Bool)

(assert (=> b!4735605 (= c!808810 call!331279)))

(declare-fun b!4735606 () Bool)

(assert (=> b!4735606 (= e!2953844 e!2953847)))

(declare-fun res!2005480 () Bool)

(assert (=> b!4735606 (=> (not res!2005480) (not e!2953847))))

(assert (=> b!4735606 (= res!2005480 (isDefined!9687 (getValueByKey!2005 (toList!5982 lt!1898121) key!4653)))))

(declare-fun b!4735607 () Bool)

(declare-fun Unit!132299 () Unit!132179)

(assert (=> b!4735607 (= e!2953848 Unit!132299)))

(declare-fun bm!331274 () Bool)

(assert (=> bm!331274 (= call!331279 (contains!16312 e!2953845 key!4653))))

(declare-fun c!808811 () Bool)

(assert (=> bm!331274 (= c!808811 c!808812)))

(declare-fun b!4735608 () Bool)

(assert (=> b!4735608 false))

(declare-fun lt!1898667 () Unit!132179)

(declare-fun lt!1898669 () Unit!132179)

(assert (=> b!4735608 (= lt!1898667 lt!1898669)))

(assert (=> b!4735608 (containsKey!3447 (toList!5982 lt!1898121) key!4653)))

(assert (=> b!4735608 (= lt!1898669 (lemmaInGetKeysListThenContainsKey!975 (toList!5982 lt!1898121) key!4653))))

(declare-fun Unit!132300 () Unit!132179)

(assert (=> b!4735608 (= e!2953848 Unit!132300)))

(assert (= (and d!1511115 c!808812) b!4735603))

(assert (= (and d!1511115 (not c!808812)) b!4735605))

(assert (= (and b!4735605 c!808810) b!4735608))

(assert (= (and b!4735605 (not c!808810)) b!4735607))

(assert (= (or b!4735603 b!4735605) bm!331274))

(assert (= (and bm!331274 c!808811) b!4735600))

(assert (= (and bm!331274 (not c!808811)) b!4735602))

(assert (= (and d!1511115 res!2005479) b!4735601))

(assert (= (and d!1511115 (not res!2005481)) b!4735606))

(assert (= (and b!4735606 res!2005480) b!4735604))

(declare-fun m!5681767 () Bool)

(assert (=> b!4735601 m!5681767))

(assert (=> b!4735601 m!5681767))

(declare-fun m!5681769 () Bool)

(assert (=> b!4735601 m!5681769))

(assert (=> b!4735602 m!5681767))

(declare-fun m!5681771 () Bool)

(assert (=> b!4735600 m!5681771))

(declare-fun m!5681773 () Bool)

(assert (=> d!1511115 m!5681773))

(assert (=> b!4735608 m!5681773))

(declare-fun m!5681775 () Bool)

(assert (=> b!4735608 m!5681775))

(assert (=> b!4735604 m!5681767))

(assert (=> b!4735604 m!5681767))

(assert (=> b!4735604 m!5681769))

(declare-fun m!5681777 () Bool)

(assert (=> b!4735606 m!5681777))

(assert (=> b!4735606 m!5681777))

(declare-fun m!5681779 () Bool)

(assert (=> b!4735606 m!5681779))

(declare-fun m!5681781 () Bool)

(assert (=> b!4735603 m!5681781))

(assert (=> b!4735603 m!5681777))

(assert (=> b!4735603 m!5681777))

(assert (=> b!4735603 m!5681779))

(declare-fun m!5681783 () Bool)

(assert (=> b!4735603 m!5681783))

(declare-fun m!5681785 () Bool)

(assert (=> bm!331274 m!5681785))

(assert (=> b!4735187 d!1511115))

(declare-fun bs!1124902 () Bool)

(declare-fun d!1511117 () Bool)

(assert (= bs!1124902 (and d!1511117 d!1511103)))

(declare-fun lambda!218194 () Int)

(assert (=> bs!1124902 (= lambda!218194 lambda!218192)))

(declare-fun bs!1124903 () Bool)

(assert (= bs!1124903 (and d!1511117 start!482896)))

(assert (=> bs!1124903 (= lambda!218194 lambda!218044)))

(declare-fun bs!1124904 () Bool)

(assert (= bs!1124904 (and d!1511117 d!1510937)))

(assert (=> bs!1124904 (= lambda!218194 lambda!218061)))

(declare-fun bs!1124905 () Bool)

(assert (= bs!1124905 (and d!1511117 d!1511011)))

(assert (=> bs!1124905 (= lambda!218194 lambda!218124)))

(declare-fun bs!1124906 () Bool)

(assert (= bs!1124906 (and d!1511117 d!1510987)))

(assert (=> bs!1124906 (not (= lambda!218194 lambda!218113))))

(declare-fun bs!1124907 () Bool)

(assert (= bs!1124907 (and d!1511117 d!1510949)))

(assert (=> bs!1124907 (= lambda!218194 lambda!218071)))

(declare-fun bs!1124908 () Bool)

(assert (= bs!1124908 (and d!1511117 d!1511071)))

(assert (=> bs!1124908 (= lambda!218194 lambda!218172)))

(declare-fun bs!1124909 () Bool)

(assert (= bs!1124909 (and d!1511117 d!1511093)))

(assert (=> bs!1124909 (= lambda!218194 lambda!218187)))

(declare-fun bs!1124910 () Bool)

(assert (= bs!1124910 (and d!1511117 d!1511017)))

(assert (=> bs!1124910 (= lambda!218194 lambda!218126)))

(declare-fun lt!1898675 () ListMap!5345)

(assert (=> d!1511117 (invariantList!1537 (toList!5982 lt!1898675))))

(declare-fun e!2953849 () ListMap!5345)

(assert (=> d!1511117 (= lt!1898675 e!2953849)))

(declare-fun c!808813 () Bool)

(assert (=> d!1511117 (= c!808813 ((_ is Cons!52920) (toList!5981 lm!2023)))))

(assert (=> d!1511117 (forall!11657 (toList!5981 lm!2023) lambda!218194)))

(assert (=> d!1511117 (= (extractMap!2072 (toList!5981 lm!2023)) lt!1898675)))

(declare-fun b!4735609 () Bool)

(assert (=> b!4735609 (= e!2953849 (addToMapMapFromBucket!1476 (_2!30584 (h!59293 (toList!5981 lm!2023))) (extractMap!2072 (t!360328 (toList!5981 lm!2023)))))))

(declare-fun b!4735610 () Bool)

(assert (=> b!4735610 (= e!2953849 (ListMap!5346 Nil!52919))))

(assert (= (and d!1511117 c!808813) b!4735609))

(assert (= (and d!1511117 (not c!808813)) b!4735610))

(declare-fun m!5681787 () Bool)

(assert (=> d!1511117 m!5681787))

(declare-fun m!5681789 () Bool)

(assert (=> d!1511117 m!5681789))

(assert (=> b!4735609 m!5680919))

(assert (=> b!4735609 m!5680919))

(declare-fun m!5681791 () Bool)

(assert (=> b!4735609 m!5681791))

(assert (=> b!4735187 d!1511117))

(declare-fun b!4735613 () Bool)

(declare-fun e!2953851 () List!53043)

(assert (=> b!4735613 (= e!2953851 (Cons!52919 (h!59292 (t!360327 oldBucket!34)) (removePairForKey!1641 (t!360327 (t!360327 oldBucket!34)) key!4653)))))

(declare-fun b!4735612 () Bool)

(declare-fun e!2953850 () List!53043)

(assert (=> b!4735612 (= e!2953850 e!2953851)))

(declare-fun c!808814 () Bool)

(assert (=> b!4735612 (= c!808814 ((_ is Cons!52919) (t!360327 oldBucket!34)))))

(declare-fun b!4735614 () Bool)

(assert (=> b!4735614 (= e!2953851 Nil!52919)))

(declare-fun b!4735611 () Bool)

(assert (=> b!4735611 (= e!2953850 (t!360327 (t!360327 oldBucket!34)))))

(declare-fun d!1511119 () Bool)

(declare-fun lt!1898676 () List!53043)

(assert (=> d!1511119 (not (containsKey!3443 lt!1898676 key!4653))))

(assert (=> d!1511119 (= lt!1898676 e!2953850)))

(declare-fun c!808815 () Bool)

(assert (=> d!1511119 (= c!808815 (and ((_ is Cons!52919) (t!360327 oldBucket!34)) (= (_1!30583 (h!59292 (t!360327 oldBucket!34))) key!4653)))))

(assert (=> d!1511119 (noDuplicateKeys!2046 (t!360327 oldBucket!34))))

(assert (=> d!1511119 (= (removePairForKey!1641 (t!360327 oldBucket!34) key!4653) lt!1898676)))

(assert (= (and d!1511119 c!808815) b!4735611))

(assert (= (and d!1511119 (not c!808815)) b!4735612))

(assert (= (and b!4735612 c!808814) b!4735613))

(assert (= (and b!4735612 (not c!808814)) b!4735614))

(declare-fun m!5681793 () Bool)

(assert (=> b!4735613 m!5681793))

(declare-fun m!5681795 () Bool)

(assert (=> d!1511119 m!5681795))

(assert (=> d!1511119 m!5680931))

(assert (=> b!4735175 d!1511119))

(declare-fun b!4735617 () Bool)

(declare-fun e!2953853 () List!53043)

(assert (=> b!4735617 (= e!2953853 (Cons!52919 (h!59292 oldBucket!34) (removePairForKey!1641 (t!360327 oldBucket!34) key!4653)))))

(declare-fun b!4735616 () Bool)

(declare-fun e!2953852 () List!53043)

(assert (=> b!4735616 (= e!2953852 e!2953853)))

(declare-fun c!808816 () Bool)

(assert (=> b!4735616 (= c!808816 ((_ is Cons!52919) oldBucket!34))))

(declare-fun b!4735618 () Bool)

(assert (=> b!4735618 (= e!2953853 Nil!52919)))

(declare-fun b!4735615 () Bool)

(assert (=> b!4735615 (= e!2953852 (t!360327 oldBucket!34))))

(declare-fun d!1511121 () Bool)

(declare-fun lt!1898677 () List!53043)

(assert (=> d!1511121 (not (containsKey!3443 lt!1898677 key!4653))))

(assert (=> d!1511121 (= lt!1898677 e!2953852)))

(declare-fun c!808817 () Bool)

(assert (=> d!1511121 (= c!808817 (and ((_ is Cons!52919) oldBucket!34) (= (_1!30583 (h!59292 oldBucket!34)) key!4653)))))

(assert (=> d!1511121 (noDuplicateKeys!2046 oldBucket!34)))

(assert (=> d!1511121 (= (removePairForKey!1641 oldBucket!34 key!4653) lt!1898677)))

(assert (= (and d!1511121 c!808817) b!4735615))

(assert (= (and d!1511121 (not c!808817)) b!4735616))

(assert (= (and b!4735616 c!808816) b!4735617))

(assert (= (and b!4735616 (not c!808816)) b!4735618))

(assert (=> b!4735617 m!5680929))

(declare-fun m!5681797 () Bool)

(assert (=> d!1511121 m!5681797))

(assert (=> d!1511121 m!5680877))

(assert (=> b!4735186 d!1511121))

(declare-fun b!4735623 () Bool)

(declare-fun tp!1349040 () Bool)

(declare-fun e!2953856 () Bool)

(assert (=> b!4735623 (= e!2953856 (and tp_is_empty!31477 tp_is_empty!31479 tp!1349040))))

(assert (=> b!4735185 (= tp!1349026 e!2953856)))

(assert (= (and b!4735185 ((_ is Cons!52919) (t!360327 oldBucket!34))) b!4735623))

(declare-fun e!2953857 () Bool)

(declare-fun tp!1349041 () Bool)

(declare-fun b!4735624 () Bool)

(assert (=> b!4735624 (= e!2953857 (and tp_is_empty!31477 tp_is_empty!31479 tp!1349041))))

(assert (=> b!4735179 (= tp!1349025 e!2953857)))

(assert (= (and b!4735179 ((_ is Cons!52919) (t!360327 newBucket!218))) b!4735624))

(declare-fun b!4735629 () Bool)

(declare-fun e!2953860 () Bool)

(declare-fun tp!1349046 () Bool)

(declare-fun tp!1349047 () Bool)

(assert (=> b!4735629 (= e!2953860 (and tp!1349046 tp!1349047))))

(assert (=> b!4735176 (= tp!1349027 e!2953860)))

(assert (= (and b!4735176 ((_ is Cons!52920) (toList!5981 lm!2023))) b!4735629))

(declare-fun b_lambda!181105 () Bool)

(assert (= b_lambda!181097 (or start!482896 b_lambda!181105)))

(declare-fun bs!1124911 () Bool)

(declare-fun d!1511123 () Bool)

(assert (= bs!1124911 (and d!1511123 start!482896)))

(assert (=> bs!1124911 (= (dynLambda!21861 lambda!218044 (h!59293 lt!1898124)) (noDuplicateKeys!2046 (_2!30584 (h!59293 lt!1898124))))))

(declare-fun m!5681799 () Bool)

(assert (=> bs!1124911 m!5681799))

(assert (=> b!4735411 d!1511123))

(declare-fun b_lambda!181107 () Bool)

(assert (= b_lambda!181095 (or start!482896 b_lambda!181107)))

(declare-fun bs!1124912 () Bool)

(declare-fun d!1511125 () Bool)

(assert (= bs!1124912 (and d!1511125 start!482896)))

(assert (=> bs!1124912 (= (dynLambda!21861 lambda!218044 (h!59293 (toList!5981 lm!2023))) (noDuplicateKeys!2046 (_2!30584 (h!59293 (toList!5981 lm!2023)))))))

(assert (=> bs!1124912 m!5681707))

(assert (=> b!4735409 d!1511125))

(declare-fun b_lambda!181109 () Bool)

(assert (= b_lambda!181093 (or start!482896 b_lambda!181109)))

(declare-fun bs!1124913 () Bool)

(declare-fun d!1511127 () Bool)

(assert (= bs!1124913 (and d!1511127 start!482896)))

(assert (=> bs!1124913 (= (dynLambda!21861 lambda!218044 lt!1898115) (noDuplicateKeys!2046 (_2!30584 lt!1898115)))))

(declare-fun m!5681801 () Bool)

(assert (=> bs!1124913 m!5681801))

(assert (=> d!1510969 d!1511127))

(check-sat (not d!1510939) (not b!4735554) (not d!1511079) (not d!1511109) (not b_lambda!181109) tp_is_empty!31479 (not d!1511025) (not b!4735415) (not b!4735329) (not d!1511019) (not b!4735589) (not d!1510961) (not b!4735623) (not b!4735569) (not d!1510937) (not d!1511011) (not d!1511077) (not d!1511095) (not b!4735326) (not b!4735574) (not b!4735438) (not d!1511081) (not b!4735599) (not bm!331267) (not d!1511111) (not b!4735600) (not b!4735606) (not d!1511069) (not d!1511115) (not b!4735558) (not b!4735436) (not b_lambda!181107) (not b!4735609) (not d!1510929) (not b!4735328) (not b!4735568) (not d!1510935) (not d!1511071) (not b!4735562) (not d!1511089) (not b!4735565) (not d!1511085) (not b!4735281) (not b!4735573) (not b!4735601) (not d!1510933) (not b!4735482) (not b!4735439) (not bs!1124913) (not d!1510949) (not d!1511091) (not d!1511029) (not b!4735374) (not b!4735567) (not b!4735441) (not bm!331262) (not b!4735361) (not b!4735613) (not b!4735443) (not b!4735496) (not bm!331260) (not d!1511121) (not bm!331270) (not b!4735282) (not d!1511119) (not d!1511101) (not b!4735495) (not bs!1124911) (not b!4735280) (not b!4735416) (not b!4735594) (not b!4735604) (not b!4735396) (not b!4735566) (not b!4735359) (not b!4735563) (not bm!331271) (not d!1510973) tp_is_empty!31477 (not d!1511087) (not b!4735339) (not b!4735570) (not b!4735397) (not d!1510967) (not bm!331263) (not d!1511105) (not d!1511113) (not b!4735435) (not b!4735572) (not b!4735617) (not d!1510987) (not b!4735602) (not b!4735412) (not bm!331261) (not b!4735413) (not b!4735410) (not b!4735283) (not b!4735555) (not b!4735608) (not d!1511117) (not b!4735575) (not b!4735598) (not d!1511017) (not b!4735560) (not bm!331242) (not b!4735595) (not bm!331273) (not b!4735551) (not d!1510963) (not d!1511107) (not b!4735596) (not b!4735552) (not bm!331268) (not d!1511093) (not d!1511073) (not d!1510969) (not b!4735577) (not d!1511103) (not b!4735414) (not b!4735437) (not b!4735591) (not b!4735629) (not b!4735286) (not b!4735327) (not bm!331272) (not b_lambda!181105) (not b!4735603) (not b!4735349) (not b!4735559) (not bs!1124912) (not bm!331259) (not d!1510997) (not b!4735624) (not bm!331266) (not b!4735480) (not b!4735592) (not bm!331264) (not bm!331265) (not bm!331269) (not d!1511005) (not b!4735376) (not bm!331274) (not b!4735578))
(check-sat)
