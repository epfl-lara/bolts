; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!469744 () Bool)

(assert start!469744)

(declare-fun res!1961378 () Bool)

(declare-fun e!2909282 () Bool)

(assert (=> start!469744 (=> (not res!1961378) (not e!2909282))))

(declare-datatypes ((K!13300 0))(
  ( (K!13301 (val!18911 Int)) )
))
(declare-datatypes ((V!13546 0))(
  ( (V!13547 (val!18912 Int)) )
))
(declare-datatypes ((tuple2!53086 0))(
  ( (tuple2!53087 (_1!29837 K!13300) (_2!29837 V!13546)) )
))
(declare-datatypes ((List!52076 0))(
  ( (Nil!51952) (Cons!51952 (h!58112 tuple2!53086) (t!359192 List!52076)) )
))
(declare-fun oldBucket!40 () List!52076)

(declare-fun noDuplicateKeys!1660 (List!52076) Bool)

(assert (=> start!469744 (= res!1961378 (noDuplicateKeys!1660 oldBucket!40))))

(assert (=> start!469744 e!2909282))

(assert (=> start!469744 true))

(declare-fun e!2909283 () Bool)

(assert (=> start!469744 e!2909283))

(declare-fun tp_is_empty!29933 () Bool)

(assert (=> start!469744 tp_is_empty!29933))

(declare-fun e!2909278 () Bool)

(assert (=> start!469744 e!2909278))

(declare-fun b!4662271 () Bool)

(declare-fun e!2909281 () Bool)

(declare-datatypes ((ListMap!4589 0))(
  ( (ListMap!4590 (toList!5249 List!52076)) )
))
(declare-fun lt!1823725 () ListMap!4589)

(assert (=> b!4662271 (= e!2909281 (= lt!1823725 (ListMap!4590 Nil!51952)))))

(declare-fun b!4662272 () Bool)

(declare-fun tp_is_empty!29935 () Bool)

(declare-fun tp!1343519 () Bool)

(assert (=> b!4662272 (= e!2909283 (and tp_is_empty!29933 tp_is_empty!29935 tp!1343519))))

(declare-fun b!4662273 () Bool)

(declare-fun res!1961371 () Bool)

(assert (=> b!4662273 (=> (not res!1961371) (not e!2909282))))

(declare-datatypes ((Hashable!6057 0))(
  ( (HashableExt!6056 (__x!31760 Int)) )
))
(declare-fun hashF!1389 () Hashable!6057)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1514 (List!52076 (_ BitVec 64) Hashable!6057) Bool)

(assert (=> b!4662273 (= res!1961371 (allKeysSameHash!1514 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4662274 () Bool)

(declare-fun res!1961375 () Bool)

(assert (=> b!4662274 (=> (not res!1961375) (not e!2909282))))

(declare-fun key!4968 () K!13300)

(declare-fun newBucket!224 () List!52076)

(declare-fun removePairForKey!1283 (List!52076 K!13300) List!52076)

(assert (=> b!4662274 (= res!1961375 (= (removePairForKey!1283 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4662275 () Bool)

(declare-fun res!1961372 () Bool)

(declare-fun e!2909285 () Bool)

(assert (=> b!4662275 (=> (not res!1961372) (not e!2909285))))

(assert (=> b!4662275 (= res!1961372 (allKeysSameHash!1514 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4662276 () Bool)

(declare-fun res!1961369 () Bool)

(assert (=> b!4662276 (=> (not res!1961369) (not e!2909282))))

(assert (=> b!4662276 (= res!1961369 (noDuplicateKeys!1660 newBucket!224))))

(declare-fun b!4662277 () Bool)

(declare-fun e!2909280 () Bool)

(declare-fun lt!1823717 () List!52076)

(assert (=> b!4662277 (= e!2909280 (noDuplicateKeys!1660 lt!1823717))))

(declare-fun lt!1823731 () tuple2!53086)

(declare-fun lt!1823720 () List!52076)

(declare-fun eq!915 (ListMap!4589 ListMap!4589) Bool)

(declare-fun addToMapMapFromBucket!1117 (List!52076 ListMap!4589) ListMap!4589)

(declare-fun +!2000 (ListMap!4589 tuple2!53086) ListMap!4589)

(assert (=> b!4662277 (eq!915 (addToMapMapFromBucket!1117 (Cons!51952 lt!1823731 lt!1823720) (ListMap!4590 Nil!51952)) (+!2000 (addToMapMapFromBucket!1117 lt!1823720 (ListMap!4590 Nil!51952)) lt!1823731))))

(declare-datatypes ((Unit!119356 0))(
  ( (Unit!119357) )
))
(declare-fun lt!1823728 () Unit!119356)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!166 (tuple2!53086 List!52076 ListMap!4589) Unit!119356)

(assert (=> b!4662277 (= lt!1823728 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!166 lt!1823731 lt!1823720 (ListMap!4590 Nil!51952)))))

(declare-fun head!9738 (List!52076) tuple2!53086)

(assert (=> b!4662277 (= lt!1823731 (head!9738 oldBucket!40))))

(declare-datatypes ((tuple2!53088 0))(
  ( (tuple2!53089 (_1!29838 (_ BitVec 64)) (_2!29838 List!52076)) )
))
(declare-datatypes ((List!52077 0))(
  ( (Nil!51953) (Cons!51953 (h!58113 tuple2!53088) (t!359193 List!52077)) )
))
(declare-fun lt!1823726 () List!52077)

(declare-fun contains!15123 (ListMap!4589 K!13300) Bool)

(declare-fun extractMap!1716 (List!52077) ListMap!4589)

(assert (=> b!4662277 (contains!15123 (extractMap!1716 lt!1823726) key!4968)))

(declare-fun lt!1823715 () Unit!119356)

(declare-datatypes ((ListLongMap!3803 0))(
  ( (ListLongMap!3804 (toList!5250 List!52077)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!394 (ListLongMap!3803 K!13300 Hashable!6057) Unit!119356)

(assert (=> b!4662277 (= lt!1823715 (lemmaListContainsThenExtractedMapContains!394 (ListLongMap!3804 lt!1823726) key!4968 hashF!1389))))

(assert (=> b!4662277 (= lt!1823726 (Cons!51953 (tuple2!53089 hash!414 (t!359192 oldBucket!40)) Nil!51953))))

(declare-fun b!4662278 () Bool)

(declare-fun e!2909284 () Bool)

(assert (=> b!4662278 (= e!2909284 e!2909285)))

(declare-fun res!1961374 () Bool)

(assert (=> b!4662278 (=> (not res!1961374) (not e!2909285))))

(declare-fun lt!1823722 () (_ BitVec 64))

(assert (=> b!4662278 (= res!1961374 (= lt!1823722 hash!414))))

(declare-fun hash!3813 (Hashable!6057 K!13300) (_ BitVec 64))

(assert (=> b!4662278 (= lt!1823722 (hash!3813 hashF!1389 key!4968))))

(declare-fun b!4662279 () Bool)

(declare-fun e!2909286 () Bool)

(assert (=> b!4662279 (= e!2909286 e!2909280)))

(declare-fun res!1961379 () Bool)

(assert (=> b!4662279 (=> res!1961379 e!2909280)))

(assert (=> b!4662279 (= res!1961379 (not (= (removePairForKey!1283 lt!1823720 key!4968) lt!1823717)))))

(declare-fun tail!8263 (List!52076) List!52076)

(assert (=> b!4662279 (= lt!1823717 (tail!8263 newBucket!224))))

(assert (=> b!4662279 (= lt!1823720 (tail!8263 oldBucket!40))))

(declare-fun b!4662280 () Bool)

(declare-fun e!2909279 () Bool)

(assert (=> b!4662280 (= e!2909285 (not e!2909279))))

(declare-fun res!1961370 () Bool)

(assert (=> b!4662280 (=> res!1961370 e!2909279)))

(get-info :version)

(assert (=> b!4662280 (= res!1961370 (or (and ((_ is Cons!51952) oldBucket!40) (= (_1!29837 (h!58112 oldBucket!40)) key!4968)) (not ((_ is Cons!51952) oldBucket!40)) (= (_1!29837 (h!58112 oldBucket!40)) key!4968)))))

(assert (=> b!4662280 e!2909281))

(declare-fun res!1961377 () Bool)

(assert (=> b!4662280 (=> (not res!1961377) (not e!2909281))))

(declare-fun lt!1823721 () ListMap!4589)

(assert (=> b!4662280 (= res!1961377 (= lt!1823721 (addToMapMapFromBucket!1117 oldBucket!40 lt!1823725)))))

(assert (=> b!4662280 (= lt!1823725 (extractMap!1716 Nil!51953))))

(assert (=> b!4662280 true))

(declare-fun tp!1343518 () Bool)

(declare-fun b!4662281 () Bool)

(assert (=> b!4662281 (= e!2909278 (and tp_is_empty!29933 tp_is_empty!29935 tp!1343518))))

(declare-fun b!4662282 () Bool)

(declare-fun res!1961376 () Bool)

(assert (=> b!4662282 (=> res!1961376 e!2909280)))

(assert (=> b!4662282 (= res!1961376 (not (= (removePairForKey!1283 (t!359192 oldBucket!40) key!4968) lt!1823717)))))

(declare-fun b!4662283 () Bool)

(assert (=> b!4662283 (= e!2909279 e!2909286)))

(declare-fun res!1961373 () Bool)

(assert (=> b!4662283 (=> res!1961373 e!2909286)))

(declare-fun containsKey!2770 (List!52076 K!13300) Bool)

(assert (=> b!4662283 (= res!1961373 (not (containsKey!2770 (t!359192 oldBucket!40) key!4968)))))

(assert (=> b!4662283 (containsKey!2770 oldBucket!40 key!4968)))

(declare-fun lt!1823729 () Unit!119356)

(declare-fun lemmaGetPairDefinedThenContainsKey!138 (List!52076 K!13300 Hashable!6057) Unit!119356)

(assert (=> b!4662283 (= lt!1823729 (lemmaGetPairDefinedThenContainsKey!138 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1823730 () List!52076)

(declare-datatypes ((Option!11868 0))(
  ( (None!11867) (Some!11867 (v!46181 tuple2!53086)) )
))
(declare-fun isDefined!9133 (Option!11868) Bool)

(declare-fun getPair!388 (List!52076 K!13300) Option!11868)

(assert (=> b!4662283 (isDefined!9133 (getPair!388 lt!1823730 key!4968))))

(declare-fun lambda!200624 () Int)

(declare-fun lt!1823719 () Unit!119356)

(declare-fun lt!1823724 () List!52077)

(declare-fun lt!1823716 () tuple2!53088)

(declare-fun forallContained!3266 (List!52077 Int tuple2!53088) Unit!119356)

(assert (=> b!4662283 (= lt!1823719 (forallContained!3266 lt!1823724 lambda!200624 lt!1823716))))

(declare-fun contains!15124 (List!52077 tuple2!53088) Bool)

(assert (=> b!4662283 (contains!15124 lt!1823724 lt!1823716)))

(assert (=> b!4662283 (= lt!1823716 (tuple2!53089 lt!1823722 lt!1823730))))

(declare-fun lt!1823727 () Unit!119356)

(declare-fun lt!1823714 () ListLongMap!3803)

(declare-fun lemmaGetValueImpliesTupleContained!193 (ListLongMap!3803 (_ BitVec 64) List!52076) Unit!119356)

(assert (=> b!4662283 (= lt!1823727 (lemmaGetValueImpliesTupleContained!193 lt!1823714 lt!1823722 lt!1823730))))

(declare-fun apply!12263 (ListLongMap!3803 (_ BitVec 64)) List!52076)

(assert (=> b!4662283 (= lt!1823730 (apply!12263 lt!1823714 lt!1823722))))

(declare-fun contains!15125 (ListLongMap!3803 (_ BitVec 64)) Bool)

(assert (=> b!4662283 (contains!15125 lt!1823714 lt!1823722)))

(declare-fun lt!1823718 () Unit!119356)

(declare-fun lemmaInGenMapThenLongMapContainsHash!594 (ListLongMap!3803 K!13300 Hashable!6057) Unit!119356)

(assert (=> b!4662283 (= lt!1823718 (lemmaInGenMapThenLongMapContainsHash!594 lt!1823714 key!4968 hashF!1389))))

(declare-fun lt!1823723 () Unit!119356)

(declare-fun lemmaInGenMapThenGetPairDefined!184 (ListLongMap!3803 K!13300 Hashable!6057) Unit!119356)

(assert (=> b!4662283 (= lt!1823723 (lemmaInGenMapThenGetPairDefined!184 lt!1823714 key!4968 hashF!1389))))

(assert (=> b!4662283 (= lt!1823714 (ListLongMap!3804 lt!1823724))))

(declare-fun b!4662284 () Bool)

(assert (=> b!4662284 (= e!2909282 e!2909284)))

(declare-fun res!1961380 () Bool)

(assert (=> b!4662284 (=> (not res!1961380) (not e!2909284))))

(assert (=> b!4662284 (= res!1961380 (contains!15123 lt!1823721 key!4968))))

(assert (=> b!4662284 (= lt!1823721 (extractMap!1716 lt!1823724))))

(assert (=> b!4662284 (= lt!1823724 (Cons!51953 (tuple2!53089 hash!414 oldBucket!40) Nil!51953))))

(assert (= (and start!469744 res!1961378) b!4662276))

(assert (= (and b!4662276 res!1961369) b!4662274))

(assert (= (and b!4662274 res!1961375) b!4662273))

(assert (= (and b!4662273 res!1961371) b!4662284))

(assert (= (and b!4662284 res!1961380) b!4662278))

(assert (= (and b!4662278 res!1961374) b!4662275))

(assert (= (and b!4662275 res!1961372) b!4662280))

(assert (= (and b!4662280 res!1961377) b!4662271))

(assert (= (and b!4662280 (not res!1961370)) b!4662283))

(assert (= (and b!4662283 (not res!1961373)) b!4662279))

(assert (= (and b!4662279 (not res!1961379)) b!4662282))

(assert (= (and b!4662282 (not res!1961376)) b!4662277))

(assert (= (and start!469744 ((_ is Cons!51952) oldBucket!40)) b!4662272))

(assert (= (and start!469744 ((_ is Cons!51952) newBucket!224)) b!4662281))

(declare-fun m!5546125 () Bool)

(assert (=> b!4662282 m!5546125))

(declare-fun m!5546127 () Bool)

(assert (=> start!469744 m!5546127))

(declare-fun m!5546129 () Bool)

(assert (=> b!4662280 m!5546129))

(declare-fun m!5546131 () Bool)

(assert (=> b!4662280 m!5546131))

(declare-fun m!5546133 () Bool)

(assert (=> b!4662283 m!5546133))

(declare-fun m!5546135 () Bool)

(assert (=> b!4662283 m!5546135))

(declare-fun m!5546137 () Bool)

(assert (=> b!4662283 m!5546137))

(declare-fun m!5546139 () Bool)

(assert (=> b!4662283 m!5546139))

(assert (=> b!4662283 m!5546135))

(declare-fun m!5546141 () Bool)

(assert (=> b!4662283 m!5546141))

(declare-fun m!5546143 () Bool)

(assert (=> b!4662283 m!5546143))

(declare-fun m!5546145 () Bool)

(assert (=> b!4662283 m!5546145))

(declare-fun m!5546147 () Bool)

(assert (=> b!4662283 m!5546147))

(declare-fun m!5546149 () Bool)

(assert (=> b!4662283 m!5546149))

(declare-fun m!5546151 () Bool)

(assert (=> b!4662283 m!5546151))

(declare-fun m!5546153 () Bool)

(assert (=> b!4662283 m!5546153))

(declare-fun m!5546155 () Bool)

(assert (=> b!4662283 m!5546155))

(declare-fun m!5546157 () Bool)

(assert (=> b!4662275 m!5546157))

(declare-fun m!5546159 () Bool)

(assert (=> b!4662277 m!5546159))

(declare-fun m!5546161 () Bool)

(assert (=> b!4662277 m!5546161))

(declare-fun m!5546163 () Bool)

(assert (=> b!4662277 m!5546163))

(declare-fun m!5546165 () Bool)

(assert (=> b!4662277 m!5546165))

(declare-fun m!5546167 () Bool)

(assert (=> b!4662277 m!5546167))

(declare-fun m!5546169 () Bool)

(assert (=> b!4662277 m!5546169))

(declare-fun m!5546171 () Bool)

(assert (=> b!4662277 m!5546171))

(assert (=> b!4662277 m!5546161))

(assert (=> b!4662277 m!5546167))

(declare-fun m!5546173 () Bool)

(assert (=> b!4662277 m!5546173))

(assert (=> b!4662277 m!5546169))

(declare-fun m!5546175 () Bool)

(assert (=> b!4662277 m!5546175))

(assert (=> b!4662277 m!5546173))

(declare-fun m!5546177 () Bool)

(assert (=> b!4662277 m!5546177))

(declare-fun m!5546179 () Bool)

(assert (=> b!4662278 m!5546179))

(declare-fun m!5546181 () Bool)

(assert (=> b!4662284 m!5546181))

(declare-fun m!5546183 () Bool)

(assert (=> b!4662284 m!5546183))

(declare-fun m!5546185 () Bool)

(assert (=> b!4662276 m!5546185))

(declare-fun m!5546187 () Bool)

(assert (=> b!4662274 m!5546187))

(declare-fun m!5546189 () Bool)

(assert (=> b!4662279 m!5546189))

(declare-fun m!5546191 () Bool)

(assert (=> b!4662279 m!5546191))

(declare-fun m!5546193 () Bool)

(assert (=> b!4662279 m!5546193))

(declare-fun m!5546195 () Bool)

(assert (=> b!4662273 m!5546195))

(check-sat (not b!4662276) tp_is_empty!29933 (not b!4662274) (not b!4662284) (not b!4662275) (not b!4662277) tp_is_empty!29935 (not b!4662272) (not b!4662280) (not b!4662282) (not b!4662279) (not b!4662283) (not b!4662281) (not b!4662273) (not b!4662278) (not start!469744))
(check-sat)
(get-model)

(declare-fun bs!1068846 () Bool)

(declare-fun d!1481040 () Bool)

(assert (= bs!1068846 (and d!1481040 b!4662283)))

(declare-fun lambda!200630 () Int)

(assert (=> bs!1068846 (= lambda!200630 lambda!200624)))

(assert (=> d!1481040 (contains!15123 (extractMap!1716 (toList!5250 (ListLongMap!3804 lt!1823726))) key!4968)))

(declare-fun lt!1823764 () Unit!119356)

(declare-fun choose!32146 (ListLongMap!3803 K!13300 Hashable!6057) Unit!119356)

(assert (=> d!1481040 (= lt!1823764 (choose!32146 (ListLongMap!3804 lt!1823726) key!4968 hashF!1389))))

(declare-fun forall!11067 (List!52077 Int) Bool)

(assert (=> d!1481040 (forall!11067 (toList!5250 (ListLongMap!3804 lt!1823726)) lambda!200630)))

(assert (=> d!1481040 (= (lemmaListContainsThenExtractedMapContains!394 (ListLongMap!3804 lt!1823726) key!4968 hashF!1389) lt!1823764)))

(declare-fun bs!1068847 () Bool)

(assert (= bs!1068847 d!1481040))

(declare-fun m!5546247 () Bool)

(assert (=> bs!1068847 m!5546247))

(assert (=> bs!1068847 m!5546247))

(declare-fun m!5546249 () Bool)

(assert (=> bs!1068847 m!5546249))

(declare-fun m!5546251 () Bool)

(assert (=> bs!1068847 m!5546251))

(declare-fun m!5546253 () Bool)

(assert (=> bs!1068847 m!5546253))

(assert (=> b!4662277 d!1481040))

(declare-fun d!1481046 () Bool)

(declare-fun res!1961417 () Bool)

(declare-fun e!2909329 () Bool)

(assert (=> d!1481046 (=> res!1961417 e!2909329)))

(assert (=> d!1481046 (= res!1961417 (not ((_ is Cons!51952) lt!1823717)))))

(assert (=> d!1481046 (= (noDuplicateKeys!1660 lt!1823717) e!2909329)))

(declare-fun b!4662340 () Bool)

(declare-fun e!2909330 () Bool)

(assert (=> b!4662340 (= e!2909329 e!2909330)))

(declare-fun res!1961418 () Bool)

(assert (=> b!4662340 (=> (not res!1961418) (not e!2909330))))

(assert (=> b!4662340 (= res!1961418 (not (containsKey!2770 (t!359192 lt!1823717) (_1!29837 (h!58112 lt!1823717)))))))

(declare-fun b!4662341 () Bool)

(assert (=> b!4662341 (= e!2909330 (noDuplicateKeys!1660 (t!359192 lt!1823717)))))

(assert (= (and d!1481046 (not res!1961417)) b!4662340))

(assert (= (and b!4662340 res!1961418) b!4662341))

(declare-fun m!5546255 () Bool)

(assert (=> b!4662340 m!5546255))

(declare-fun m!5546257 () Bool)

(assert (=> b!4662341 m!5546257))

(assert (=> b!4662277 d!1481046))

(declare-fun bs!1068851 () Bool)

(declare-fun d!1481048 () Bool)

(assert (= bs!1068851 (and d!1481048 b!4662283)))

(declare-fun lambda!200640 () Int)

(assert (=> bs!1068851 (= lambda!200640 lambda!200624)))

(declare-fun bs!1068852 () Bool)

(assert (= bs!1068852 (and d!1481048 d!1481040)))

(assert (=> bs!1068852 (= lambda!200640 lambda!200630)))

(declare-fun lt!1823795 () ListMap!4589)

(declare-fun invariantList!1314 (List!52076) Bool)

(assert (=> d!1481048 (invariantList!1314 (toList!5249 lt!1823795))))

(declare-fun e!2909347 () ListMap!4589)

(assert (=> d!1481048 (= lt!1823795 e!2909347)))

(declare-fun c!798086 () Bool)

(assert (=> d!1481048 (= c!798086 ((_ is Cons!51953) lt!1823726))))

(assert (=> d!1481048 (forall!11067 lt!1823726 lambda!200640)))

(assert (=> d!1481048 (= (extractMap!1716 lt!1823726) lt!1823795)))

(declare-fun b!4662374 () Bool)

(assert (=> b!4662374 (= e!2909347 (addToMapMapFromBucket!1117 (_2!29838 (h!58113 lt!1823726)) (extractMap!1716 (t!359193 lt!1823726))))))

(declare-fun b!4662375 () Bool)

(assert (=> b!4662375 (= e!2909347 (ListMap!4590 Nil!51952))))

(assert (= (and d!1481048 c!798086) b!4662374))

(assert (= (and d!1481048 (not c!798086)) b!4662375))

(declare-fun m!5546295 () Bool)

(assert (=> d!1481048 m!5546295))

(declare-fun m!5546297 () Bool)

(assert (=> d!1481048 m!5546297))

(declare-fun m!5546299 () Bool)

(assert (=> b!4662374 m!5546299))

(assert (=> b!4662374 m!5546299))

(declare-fun m!5546301 () Bool)

(assert (=> b!4662374 m!5546301))

(assert (=> b!4662277 d!1481048))

(declare-fun b!4662451 () Bool)

(assert (=> b!4662451 true))

(declare-fun bs!1068880 () Bool)

(declare-fun b!4662448 () Bool)

(assert (= bs!1068880 (and b!4662448 b!4662451)))

(declare-fun lambda!200713 () Int)

(declare-fun lambda!200712 () Int)

(assert (=> bs!1068880 (= lambda!200713 lambda!200712)))

(assert (=> b!4662448 true))

(declare-fun lt!1823946 () ListMap!4589)

(declare-fun lambda!200714 () Int)

(assert (=> bs!1068880 (= (= lt!1823946 (ListMap!4590 Nil!51952)) (= lambda!200714 lambda!200712))))

(assert (=> b!4662448 (= (= lt!1823946 (ListMap!4590 Nil!51952)) (= lambda!200714 lambda!200713))))

(assert (=> b!4662448 true))

(declare-fun bs!1068881 () Bool)

(declare-fun d!1481062 () Bool)

(assert (= bs!1068881 (and d!1481062 b!4662451)))

(declare-fun lt!1823942 () ListMap!4589)

(declare-fun lambda!200715 () Int)

(assert (=> bs!1068881 (= (= lt!1823942 (ListMap!4590 Nil!51952)) (= lambda!200715 lambda!200712))))

(declare-fun bs!1068882 () Bool)

(assert (= bs!1068882 (and d!1481062 b!4662448)))

(assert (=> bs!1068882 (= (= lt!1823942 (ListMap!4590 Nil!51952)) (= lambda!200715 lambda!200713))))

(assert (=> bs!1068882 (= (= lt!1823942 lt!1823946) (= lambda!200715 lambda!200714))))

(assert (=> d!1481062 true))

(declare-fun e!2909389 () ListMap!4589)

(assert (=> b!4662448 (= e!2909389 lt!1823946)))

(declare-fun lt!1823944 () ListMap!4589)

(assert (=> b!4662448 (= lt!1823944 (+!2000 (ListMap!4590 Nil!51952) (h!58112 lt!1823720)))))

(assert (=> b!4662448 (= lt!1823946 (addToMapMapFromBucket!1117 (t!359192 lt!1823720) (+!2000 (ListMap!4590 Nil!51952) (h!58112 lt!1823720))))))

(declare-fun lt!1823934 () Unit!119356)

(declare-fun call!325733 () Unit!119356)

(assert (=> b!4662448 (= lt!1823934 call!325733)))

(declare-fun forall!11068 (List!52076 Int) Bool)

(assert (=> b!4662448 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) lambda!200713)))

(declare-fun lt!1823936 () Unit!119356)

(assert (=> b!4662448 (= lt!1823936 lt!1823934)))

(assert (=> b!4662448 (forall!11068 (toList!5249 lt!1823944) lambda!200714)))

(declare-fun lt!1823948 () Unit!119356)

(declare-fun Unit!119372 () Unit!119356)

(assert (=> b!4662448 (= lt!1823948 Unit!119372)))

(declare-fun call!325734 () Bool)

(assert (=> b!4662448 call!325734))

(declare-fun lt!1823949 () Unit!119356)

(declare-fun Unit!119373 () Unit!119356)

(assert (=> b!4662448 (= lt!1823949 Unit!119373)))

(declare-fun lt!1823937 () Unit!119356)

(declare-fun Unit!119374 () Unit!119356)

(assert (=> b!4662448 (= lt!1823937 Unit!119374)))

(declare-fun lt!1823945 () Unit!119356)

(declare-fun forallContained!3268 (List!52076 Int tuple2!53086) Unit!119356)

(assert (=> b!4662448 (= lt!1823945 (forallContained!3268 (toList!5249 lt!1823944) lambda!200714 (h!58112 lt!1823720)))))

(assert (=> b!4662448 (contains!15123 lt!1823944 (_1!29837 (h!58112 lt!1823720)))))

(declare-fun lt!1823952 () Unit!119356)

(declare-fun Unit!119375 () Unit!119356)

(assert (=> b!4662448 (= lt!1823952 Unit!119375)))

(assert (=> b!4662448 (contains!15123 lt!1823946 (_1!29837 (h!58112 lt!1823720)))))

(declare-fun lt!1823943 () Unit!119356)

(declare-fun Unit!119376 () Unit!119356)

(assert (=> b!4662448 (= lt!1823943 Unit!119376)))

(assert (=> b!4662448 (forall!11068 lt!1823720 lambda!200714)))

(declare-fun lt!1823938 () Unit!119356)

(declare-fun Unit!119377 () Unit!119356)

(assert (=> b!4662448 (= lt!1823938 Unit!119377)))

(assert (=> b!4662448 (forall!11068 (toList!5249 lt!1823944) lambda!200714)))

(declare-fun lt!1823940 () Unit!119356)

(declare-fun Unit!119378 () Unit!119356)

(assert (=> b!4662448 (= lt!1823940 Unit!119378)))

(declare-fun lt!1823951 () Unit!119356)

(declare-fun Unit!119379 () Unit!119356)

(assert (=> b!4662448 (= lt!1823951 Unit!119379)))

(declare-fun lt!1823935 () Unit!119356)

(declare-fun addForallContainsKeyThenBeforeAdding!613 (ListMap!4589 ListMap!4589 K!13300 V!13546) Unit!119356)

(assert (=> b!4662448 (= lt!1823935 (addForallContainsKeyThenBeforeAdding!613 (ListMap!4590 Nil!51952) lt!1823946 (_1!29837 (h!58112 lt!1823720)) (_2!29837 (h!58112 lt!1823720))))))

(declare-fun call!325732 () Bool)

(assert (=> b!4662448 call!325732))

(declare-fun lt!1823950 () Unit!119356)

(assert (=> b!4662448 (= lt!1823950 lt!1823935)))

(assert (=> b!4662448 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) lambda!200714)))

(declare-fun lt!1823953 () Unit!119356)

(declare-fun Unit!119380 () Unit!119356)

(assert (=> b!4662448 (= lt!1823953 Unit!119380)))

(declare-fun res!1961457 () Bool)

(assert (=> b!4662448 (= res!1961457 (forall!11068 lt!1823720 lambda!200714))))

(declare-fun e!2909388 () Bool)

(assert (=> b!4662448 (=> (not res!1961457) (not e!2909388))))

(assert (=> b!4662448 e!2909388))

(declare-fun lt!1823939 () Unit!119356)

(declare-fun Unit!119381 () Unit!119356)

(assert (=> b!4662448 (= lt!1823939 Unit!119381)))

(declare-fun b!4662449 () Bool)

(declare-fun res!1961456 () Bool)

(declare-fun e!2909390 () Bool)

(assert (=> b!4662449 (=> (not res!1961456) (not e!2909390))))

(assert (=> b!4662449 (= res!1961456 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) lambda!200715))))

(declare-fun b!4662450 () Bool)

(assert (=> b!4662450 (= e!2909388 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) lambda!200714))))

(assert (=> b!4662451 (= e!2909389 (ListMap!4590 Nil!51952))))

(declare-fun lt!1823947 () Unit!119356)

(assert (=> b!4662451 (= lt!1823947 call!325733)))

(assert (=> b!4662451 call!325732))

(declare-fun lt!1823954 () Unit!119356)

(assert (=> b!4662451 (= lt!1823954 lt!1823947)))

(assert (=> b!4662451 call!325734))

(declare-fun lt!1823941 () Unit!119356)

(declare-fun Unit!119382 () Unit!119356)

(assert (=> b!4662451 (= lt!1823941 Unit!119382)))

(assert (=> d!1481062 e!2909390))

(declare-fun res!1961455 () Bool)

(assert (=> d!1481062 (=> (not res!1961455) (not e!2909390))))

(assert (=> d!1481062 (= res!1961455 (forall!11068 lt!1823720 lambda!200715))))

(assert (=> d!1481062 (= lt!1823942 e!2909389)))

(declare-fun c!798108 () Bool)

(assert (=> d!1481062 (= c!798108 ((_ is Nil!51952) lt!1823720))))

(assert (=> d!1481062 (noDuplicateKeys!1660 lt!1823720)))

(assert (=> d!1481062 (= (addToMapMapFromBucket!1117 lt!1823720 (ListMap!4590 Nil!51952)) lt!1823942)))

(declare-fun b!4662452 () Bool)

(assert (=> b!4662452 (= e!2909390 (invariantList!1314 (toList!5249 lt!1823942)))))

(declare-fun bm!325727 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!614 (ListMap!4589) Unit!119356)

(assert (=> bm!325727 (= call!325733 (lemmaContainsAllItsOwnKeys!614 (ListMap!4590 Nil!51952)))))

(declare-fun bm!325728 () Bool)

(assert (=> bm!325728 (= call!325732 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) (ite c!798108 lambda!200712 lambda!200714)))))

(declare-fun bm!325729 () Bool)

(assert (=> bm!325729 (= call!325734 (forall!11068 (ite c!798108 (toList!5249 (ListMap!4590 Nil!51952)) (t!359192 lt!1823720)) (ite c!798108 lambda!200712 lambda!200714)))))

(assert (= (and d!1481062 c!798108) b!4662451))

(assert (= (and d!1481062 (not c!798108)) b!4662448))

(assert (= (and b!4662448 res!1961457) b!4662450))

(assert (= (or b!4662451 b!4662448) bm!325727))

(assert (= (or b!4662451 b!4662448) bm!325729))

(assert (= (or b!4662451 b!4662448) bm!325728))

(assert (= (and d!1481062 res!1961455) b!4662449))

(assert (= (and b!4662449 res!1961456) b!4662452))

(declare-fun m!5546399 () Bool)

(assert (=> bm!325727 m!5546399))

(declare-fun m!5546401 () Bool)

(assert (=> bm!325729 m!5546401))

(declare-fun m!5546403 () Bool)

(assert (=> b!4662450 m!5546403))

(declare-fun m!5546405 () Bool)

(assert (=> bm!325728 m!5546405))

(declare-fun m!5546407 () Bool)

(assert (=> b!4662448 m!5546407))

(assert (=> b!4662448 m!5546403))

(declare-fun m!5546409 () Bool)

(assert (=> b!4662448 m!5546409))

(declare-fun m!5546411 () Bool)

(assert (=> b!4662448 m!5546411))

(assert (=> b!4662448 m!5546411))

(declare-fun m!5546413 () Bool)

(assert (=> b!4662448 m!5546413))

(declare-fun m!5546415 () Bool)

(assert (=> b!4662448 m!5546415))

(declare-fun m!5546417 () Bool)

(assert (=> b!4662448 m!5546417))

(assert (=> b!4662448 m!5546409))

(declare-fun m!5546419 () Bool)

(assert (=> b!4662448 m!5546419))

(declare-fun m!5546421 () Bool)

(assert (=> b!4662448 m!5546421))

(assert (=> b!4662448 m!5546415))

(declare-fun m!5546425 () Bool)

(assert (=> b!4662448 m!5546425))

(declare-fun m!5546427 () Bool)

(assert (=> d!1481062 m!5546427))

(declare-fun m!5546429 () Bool)

(assert (=> d!1481062 m!5546429))

(declare-fun m!5546431 () Bool)

(assert (=> b!4662452 m!5546431))

(declare-fun m!5546433 () Bool)

(assert (=> b!4662449 m!5546433))

(assert (=> b!4662277 d!1481062))

(declare-fun d!1481084 () Bool)

(assert (=> d!1481084 (eq!915 (addToMapMapFromBucket!1117 (Cons!51952 lt!1823731 lt!1823720) (ListMap!4590 Nil!51952)) (+!2000 (addToMapMapFromBucket!1117 lt!1823720 (ListMap!4590 Nil!51952)) lt!1823731))))

(declare-fun lt!1823968 () Unit!119356)

(declare-fun choose!32149 (tuple2!53086 List!52076 ListMap!4589) Unit!119356)

(assert (=> d!1481084 (= lt!1823968 (choose!32149 lt!1823731 lt!1823720 (ListMap!4590 Nil!51952)))))

(assert (=> d!1481084 (noDuplicateKeys!1660 lt!1823720)))

(assert (=> d!1481084 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!166 lt!1823731 lt!1823720 (ListMap!4590 Nil!51952)) lt!1823968)))

(declare-fun bs!1068884 () Bool)

(assert (= bs!1068884 d!1481084))

(declare-fun m!5546439 () Bool)

(assert (=> bs!1068884 m!5546439))

(assert (=> bs!1068884 m!5546173))

(assert (=> bs!1068884 m!5546169))

(assert (=> bs!1068884 m!5546175))

(assert (=> bs!1068884 m!5546167))

(assert (=> bs!1068884 m!5546167))

(assert (=> bs!1068884 m!5546169))

(assert (=> bs!1068884 m!5546173))

(assert (=> bs!1068884 m!5546429))

(assert (=> b!4662277 d!1481084))

(declare-fun b!4662504 () Bool)

(declare-fun e!2909426 () Bool)

(declare-datatypes ((List!52079 0))(
  ( (Nil!51955) (Cons!51955 (h!58117 K!13300) (t!359197 List!52079)) )
))
(declare-fun contains!15128 (List!52079 K!13300) Bool)

(declare-fun keys!18424 (ListMap!4589) List!52079)

(assert (=> b!4662504 (= e!2909426 (not (contains!15128 (keys!18424 (extractMap!1716 lt!1823726)) key!4968)))))

(declare-fun b!4662505 () Bool)

(declare-fun e!2909429 () Unit!119356)

(declare-fun e!2909425 () Unit!119356)

(assert (=> b!4662505 (= e!2909429 e!2909425)))

(declare-fun c!798122 () Bool)

(declare-fun call!325744 () Bool)

(assert (=> b!4662505 (= c!798122 call!325744)))

(declare-fun b!4662506 () Bool)

(declare-fun e!2909428 () Bool)

(assert (=> b!4662506 (= e!2909428 (contains!15128 (keys!18424 (extractMap!1716 lt!1823726)) key!4968))))

(declare-fun bm!325739 () Bool)

(declare-fun e!2909424 () List!52079)

(assert (=> bm!325739 (= call!325744 (contains!15128 e!2909424 key!4968))))

(declare-fun c!798121 () Bool)

(declare-fun c!798120 () Bool)

(assert (=> bm!325739 (= c!798121 c!798120)))

(declare-fun b!4662507 () Bool)

(assert (=> b!4662507 false))

(declare-fun lt!1824040 () Unit!119356)

(declare-fun lt!1824039 () Unit!119356)

(assert (=> b!4662507 (= lt!1824040 lt!1824039)))

(declare-fun containsKey!2773 (List!52076 K!13300) Bool)

(assert (=> b!4662507 (containsKey!2773 (toList!5249 (extractMap!1716 lt!1823726)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!764 (List!52076 K!13300) Unit!119356)

(assert (=> b!4662507 (= lt!1824039 (lemmaInGetKeysListThenContainsKey!764 (toList!5249 (extractMap!1716 lt!1823726)) key!4968))))

(declare-fun Unit!119383 () Unit!119356)

(assert (=> b!4662507 (= e!2909425 Unit!119383)))

(declare-fun d!1481088 () Bool)

(declare-fun e!2909427 () Bool)

(assert (=> d!1481088 e!2909427))

(declare-fun res!1961486 () Bool)

(assert (=> d!1481088 (=> res!1961486 e!2909427)))

(assert (=> d!1481088 (= res!1961486 e!2909426)))

(declare-fun res!1961485 () Bool)

(assert (=> d!1481088 (=> (not res!1961485) (not e!2909426))))

(declare-fun lt!1824041 () Bool)

(assert (=> d!1481088 (= res!1961485 (not lt!1824041))))

(declare-fun lt!1824044 () Bool)

(assert (=> d!1481088 (= lt!1824041 lt!1824044)))

(declare-fun lt!1824045 () Unit!119356)

(assert (=> d!1481088 (= lt!1824045 e!2909429)))

(assert (=> d!1481088 (= c!798120 lt!1824044)))

(assert (=> d!1481088 (= lt!1824044 (containsKey!2773 (toList!5249 (extractMap!1716 lt!1823726)) key!4968))))

(assert (=> d!1481088 (= (contains!15123 (extractMap!1716 lt!1823726) key!4968) lt!1824041)))

(declare-fun b!4662508 () Bool)

(assert (=> b!4662508 (= e!2909424 (keys!18424 (extractMap!1716 lt!1823726)))))

(declare-fun b!4662509 () Bool)

(assert (=> b!4662509 (= e!2909427 e!2909428)))

(declare-fun res!1961487 () Bool)

(assert (=> b!4662509 (=> (not res!1961487) (not e!2909428))))

(declare-datatypes ((Option!11871 0))(
  ( (None!11870) (Some!11870 (v!46188 V!13546)) )
))
(declare-fun isDefined!9136 (Option!11871) Bool)

(declare-fun getValueByKey!1641 (List!52076 K!13300) Option!11871)

(assert (=> b!4662509 (= res!1961487 (isDefined!9136 (getValueByKey!1641 (toList!5249 (extractMap!1716 lt!1823726)) key!4968)))))

(declare-fun b!4662510 () Bool)

(declare-fun getKeysList!765 (List!52076) List!52079)

(assert (=> b!4662510 (= e!2909424 (getKeysList!765 (toList!5249 (extractMap!1716 lt!1823726))))))

(declare-fun b!4662511 () Bool)

(declare-fun lt!1824046 () Unit!119356)

(assert (=> b!4662511 (= e!2909429 lt!1824046)))

(declare-fun lt!1824043 () Unit!119356)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1543 (List!52076 K!13300) Unit!119356)

(assert (=> b!4662511 (= lt!1824043 (lemmaContainsKeyImpliesGetValueByKeyDefined!1543 (toList!5249 (extractMap!1716 lt!1823726)) key!4968))))

(assert (=> b!4662511 (isDefined!9136 (getValueByKey!1641 (toList!5249 (extractMap!1716 lt!1823726)) key!4968))))

(declare-fun lt!1824042 () Unit!119356)

(assert (=> b!4662511 (= lt!1824042 lt!1824043)))

(declare-fun lemmaInListThenGetKeysListContains!760 (List!52076 K!13300) Unit!119356)

(assert (=> b!4662511 (= lt!1824046 (lemmaInListThenGetKeysListContains!760 (toList!5249 (extractMap!1716 lt!1823726)) key!4968))))

(assert (=> b!4662511 call!325744))

(declare-fun b!4662512 () Bool)

(declare-fun Unit!119386 () Unit!119356)

(assert (=> b!4662512 (= e!2909425 Unit!119386)))

(assert (= (and d!1481088 c!798120) b!4662511))

(assert (= (and d!1481088 (not c!798120)) b!4662505))

(assert (= (and b!4662505 c!798122) b!4662507))

(assert (= (and b!4662505 (not c!798122)) b!4662512))

(assert (= (or b!4662511 b!4662505) bm!325739))

(assert (= (and bm!325739 c!798121) b!4662510))

(assert (= (and bm!325739 (not c!798121)) b!4662508))

(assert (= (and d!1481088 res!1961485) b!4662504))

(assert (= (and d!1481088 (not res!1961486)) b!4662509))

(assert (= (and b!4662509 res!1961487) b!4662506))

(assert (=> b!4662506 m!5546161))

(declare-fun m!5546545 () Bool)

(assert (=> b!4662506 m!5546545))

(assert (=> b!4662506 m!5546545))

(declare-fun m!5546549 () Bool)

(assert (=> b!4662506 m!5546549))

(declare-fun m!5546553 () Bool)

(assert (=> d!1481088 m!5546553))

(declare-fun m!5546555 () Bool)

(assert (=> bm!325739 m!5546555))

(assert (=> b!4662508 m!5546161))

(assert (=> b!4662508 m!5546545))

(assert (=> b!4662504 m!5546161))

(assert (=> b!4662504 m!5546545))

(assert (=> b!4662504 m!5546545))

(assert (=> b!4662504 m!5546549))

(declare-fun m!5546557 () Bool)

(assert (=> b!4662511 m!5546557))

(declare-fun m!5546559 () Bool)

(assert (=> b!4662511 m!5546559))

(assert (=> b!4662511 m!5546559))

(declare-fun m!5546563 () Bool)

(assert (=> b!4662511 m!5546563))

(declare-fun m!5546565 () Bool)

(assert (=> b!4662511 m!5546565))

(declare-fun m!5546567 () Bool)

(assert (=> b!4662510 m!5546567))

(assert (=> b!4662509 m!5546559))

(assert (=> b!4662509 m!5546559))

(assert (=> b!4662509 m!5546563))

(assert (=> b!4662507 m!5546553))

(declare-fun m!5546569 () Bool)

(assert (=> b!4662507 m!5546569))

(assert (=> b!4662277 d!1481088))

(declare-fun d!1481106 () Bool)

(declare-fun e!2909440 () Bool)

(assert (=> d!1481106 e!2909440))

(declare-fun res!1961497 () Bool)

(assert (=> d!1481106 (=> (not res!1961497) (not e!2909440))))

(declare-fun lt!1824055 () ListMap!4589)

(assert (=> d!1481106 (= res!1961497 (contains!15123 lt!1824055 (_1!29837 lt!1823731)))))

(declare-fun lt!1824056 () List!52076)

(assert (=> d!1481106 (= lt!1824055 (ListMap!4590 lt!1824056))))

(declare-fun lt!1824058 () Unit!119356)

(declare-fun lt!1824057 () Unit!119356)

(assert (=> d!1481106 (= lt!1824058 lt!1824057)))

(assert (=> d!1481106 (= (getValueByKey!1641 lt!1824056 (_1!29837 lt!1823731)) (Some!11870 (_2!29837 lt!1823731)))))

(declare-fun lemmaContainsTupThenGetReturnValue!932 (List!52076 K!13300 V!13546) Unit!119356)

(assert (=> d!1481106 (= lt!1824057 (lemmaContainsTupThenGetReturnValue!932 lt!1824056 (_1!29837 lt!1823731) (_2!29837 lt!1823731)))))

(declare-fun insertNoDuplicatedKeys!440 (List!52076 K!13300 V!13546) List!52076)

(assert (=> d!1481106 (= lt!1824056 (insertNoDuplicatedKeys!440 (toList!5249 (addToMapMapFromBucket!1117 lt!1823720 (ListMap!4590 Nil!51952))) (_1!29837 lt!1823731) (_2!29837 lt!1823731)))))

(assert (=> d!1481106 (= (+!2000 (addToMapMapFromBucket!1117 lt!1823720 (ListMap!4590 Nil!51952)) lt!1823731) lt!1824055)))

(declare-fun b!4662527 () Bool)

(declare-fun res!1961496 () Bool)

(assert (=> b!4662527 (=> (not res!1961496) (not e!2909440))))

(assert (=> b!4662527 (= res!1961496 (= (getValueByKey!1641 (toList!5249 lt!1824055) (_1!29837 lt!1823731)) (Some!11870 (_2!29837 lt!1823731))))))

(declare-fun b!4662528 () Bool)

(declare-fun contains!15129 (List!52076 tuple2!53086) Bool)

(assert (=> b!4662528 (= e!2909440 (contains!15129 (toList!5249 lt!1824055) lt!1823731))))

(assert (= (and d!1481106 res!1961497) b!4662527))

(assert (= (and b!4662527 res!1961496) b!4662528))

(declare-fun m!5546575 () Bool)

(assert (=> d!1481106 m!5546575))

(declare-fun m!5546577 () Bool)

(assert (=> d!1481106 m!5546577))

(declare-fun m!5546579 () Bool)

(assert (=> d!1481106 m!5546579))

(declare-fun m!5546581 () Bool)

(assert (=> d!1481106 m!5546581))

(declare-fun m!5546583 () Bool)

(assert (=> b!4662527 m!5546583))

(declare-fun m!5546585 () Bool)

(assert (=> b!4662528 m!5546585))

(assert (=> b!4662277 d!1481106))

(declare-fun d!1481110 () Bool)

(assert (=> d!1481110 (= (head!9738 oldBucket!40) (h!58112 oldBucket!40))))

(assert (=> b!4662277 d!1481110))

(declare-fun d!1481112 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9025 (List!52076) (InoxSet tuple2!53086))

(assert (=> d!1481112 (= (eq!915 (addToMapMapFromBucket!1117 (Cons!51952 lt!1823731 lt!1823720) (ListMap!4590 Nil!51952)) (+!2000 (addToMapMapFromBucket!1117 lt!1823720 (ListMap!4590 Nil!51952)) lt!1823731)) (= (content!9025 (toList!5249 (addToMapMapFromBucket!1117 (Cons!51952 lt!1823731 lt!1823720) (ListMap!4590 Nil!51952)))) (content!9025 (toList!5249 (+!2000 (addToMapMapFromBucket!1117 lt!1823720 (ListMap!4590 Nil!51952)) lt!1823731)))))))

(declare-fun bs!1068937 () Bool)

(assert (= bs!1068937 d!1481112))

(declare-fun m!5546587 () Bool)

(assert (=> bs!1068937 m!5546587))

(declare-fun m!5546589 () Bool)

(assert (=> bs!1068937 m!5546589))

(assert (=> b!4662277 d!1481112))

(declare-fun bs!1068938 () Bool)

(declare-fun b!4662532 () Bool)

(assert (= bs!1068938 (and b!4662532 b!4662451)))

(declare-fun lambda!200725 () Int)

(assert (=> bs!1068938 (= lambda!200725 lambda!200712)))

(declare-fun bs!1068939 () Bool)

(assert (= bs!1068939 (and b!4662532 b!4662448)))

(assert (=> bs!1068939 (= lambda!200725 lambda!200713)))

(assert (=> bs!1068939 (= (= (ListMap!4590 Nil!51952) lt!1823946) (= lambda!200725 lambda!200714))))

(declare-fun bs!1068940 () Bool)

(assert (= bs!1068940 (and b!4662532 d!1481062)))

(assert (=> bs!1068940 (= (= (ListMap!4590 Nil!51952) lt!1823942) (= lambda!200725 lambda!200715))))

(assert (=> b!4662532 true))

(declare-fun bs!1068941 () Bool)

(declare-fun b!4662529 () Bool)

(assert (= bs!1068941 (and b!4662529 b!4662532)))

(declare-fun lambda!200726 () Int)

(assert (=> bs!1068941 (= lambda!200726 lambda!200725)))

(declare-fun bs!1068942 () Bool)

(assert (= bs!1068942 (and b!4662529 b!4662448)))

(assert (=> bs!1068942 (= (= (ListMap!4590 Nil!51952) lt!1823946) (= lambda!200726 lambda!200714))))

(assert (=> bs!1068942 (= lambda!200726 lambda!200713)))

(declare-fun bs!1068943 () Bool)

(assert (= bs!1068943 (and b!4662529 b!4662451)))

(assert (=> bs!1068943 (= lambda!200726 lambda!200712)))

(declare-fun bs!1068944 () Bool)

(assert (= bs!1068944 (and b!4662529 d!1481062)))

(assert (=> bs!1068944 (= (= (ListMap!4590 Nil!51952) lt!1823942) (= lambda!200726 lambda!200715))))

(assert (=> b!4662529 true))

(declare-fun lt!1824071 () ListMap!4589)

(declare-fun lambda!200727 () Int)

(assert (=> bs!1068941 (= (= lt!1824071 (ListMap!4590 Nil!51952)) (= lambda!200727 lambda!200725))))

(assert (=> bs!1068942 (= (= lt!1824071 lt!1823946) (= lambda!200727 lambda!200714))))

(assert (=> bs!1068942 (= (= lt!1824071 (ListMap!4590 Nil!51952)) (= lambda!200727 lambda!200713))))

(assert (=> bs!1068943 (= (= lt!1824071 (ListMap!4590 Nil!51952)) (= lambda!200727 lambda!200712))))

(assert (=> bs!1068944 (= (= lt!1824071 lt!1823942) (= lambda!200727 lambda!200715))))

(assert (=> b!4662529 (= (= lt!1824071 (ListMap!4590 Nil!51952)) (= lambda!200727 lambda!200726))))

(assert (=> b!4662529 true))

(declare-fun bs!1068945 () Bool)

(declare-fun d!1481114 () Bool)

(assert (= bs!1068945 (and d!1481114 b!4662532)))

(declare-fun lt!1824067 () ListMap!4589)

(declare-fun lambda!200728 () Int)

(assert (=> bs!1068945 (= (= lt!1824067 (ListMap!4590 Nil!51952)) (= lambda!200728 lambda!200725))))

(declare-fun bs!1068946 () Bool)

(assert (= bs!1068946 (and d!1481114 b!4662448)))

(assert (=> bs!1068946 (= (= lt!1824067 lt!1823946) (= lambda!200728 lambda!200714))))

(declare-fun bs!1068947 () Bool)

(assert (= bs!1068947 (and d!1481114 b!4662529)))

(assert (=> bs!1068947 (= (= lt!1824067 lt!1824071) (= lambda!200728 lambda!200727))))

(assert (=> bs!1068946 (= (= lt!1824067 (ListMap!4590 Nil!51952)) (= lambda!200728 lambda!200713))))

(declare-fun bs!1068948 () Bool)

(assert (= bs!1068948 (and d!1481114 b!4662451)))

(assert (=> bs!1068948 (= (= lt!1824067 (ListMap!4590 Nil!51952)) (= lambda!200728 lambda!200712))))

(declare-fun bs!1068949 () Bool)

(assert (= bs!1068949 (and d!1481114 d!1481062)))

(assert (=> bs!1068949 (= (= lt!1824067 lt!1823942) (= lambda!200728 lambda!200715))))

(assert (=> bs!1068947 (= (= lt!1824067 (ListMap!4590 Nil!51952)) (= lambda!200728 lambda!200726))))

(assert (=> d!1481114 true))

(declare-fun e!2909442 () ListMap!4589)

(assert (=> b!4662529 (= e!2909442 lt!1824071)))

(declare-fun lt!1824069 () ListMap!4589)

(assert (=> b!4662529 (= lt!1824069 (+!2000 (ListMap!4590 Nil!51952) (h!58112 (Cons!51952 lt!1823731 lt!1823720))))))

(assert (=> b!4662529 (= lt!1824071 (addToMapMapFromBucket!1117 (t!359192 (Cons!51952 lt!1823731 lt!1823720)) (+!2000 (ListMap!4590 Nil!51952) (h!58112 (Cons!51952 lt!1823731 lt!1823720)))))))

(declare-fun lt!1824059 () Unit!119356)

(declare-fun call!325746 () Unit!119356)

(assert (=> b!4662529 (= lt!1824059 call!325746)))

(assert (=> b!4662529 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) lambda!200726)))

(declare-fun lt!1824061 () Unit!119356)

(assert (=> b!4662529 (= lt!1824061 lt!1824059)))

(assert (=> b!4662529 (forall!11068 (toList!5249 lt!1824069) lambda!200727)))

(declare-fun lt!1824073 () Unit!119356)

(declare-fun Unit!119391 () Unit!119356)

(assert (=> b!4662529 (= lt!1824073 Unit!119391)))

(declare-fun call!325747 () Bool)

(assert (=> b!4662529 call!325747))

(declare-fun lt!1824074 () Unit!119356)

(declare-fun Unit!119392 () Unit!119356)

(assert (=> b!4662529 (= lt!1824074 Unit!119392)))

(declare-fun lt!1824062 () Unit!119356)

(declare-fun Unit!119394 () Unit!119356)

(assert (=> b!4662529 (= lt!1824062 Unit!119394)))

(declare-fun lt!1824070 () Unit!119356)

(assert (=> b!4662529 (= lt!1824070 (forallContained!3268 (toList!5249 lt!1824069) lambda!200727 (h!58112 (Cons!51952 lt!1823731 lt!1823720))))))

(assert (=> b!4662529 (contains!15123 lt!1824069 (_1!29837 (h!58112 (Cons!51952 lt!1823731 lt!1823720))))))

(declare-fun lt!1824077 () Unit!119356)

(declare-fun Unit!119397 () Unit!119356)

(assert (=> b!4662529 (= lt!1824077 Unit!119397)))

(assert (=> b!4662529 (contains!15123 lt!1824071 (_1!29837 (h!58112 (Cons!51952 lt!1823731 lt!1823720))))))

(declare-fun lt!1824068 () Unit!119356)

(declare-fun Unit!119399 () Unit!119356)

(assert (=> b!4662529 (= lt!1824068 Unit!119399)))

(assert (=> b!4662529 (forall!11068 (Cons!51952 lt!1823731 lt!1823720) lambda!200727)))

(declare-fun lt!1824063 () Unit!119356)

(declare-fun Unit!119401 () Unit!119356)

(assert (=> b!4662529 (= lt!1824063 Unit!119401)))

(assert (=> b!4662529 (forall!11068 (toList!5249 lt!1824069) lambda!200727)))

(declare-fun lt!1824065 () Unit!119356)

(declare-fun Unit!119402 () Unit!119356)

(assert (=> b!4662529 (= lt!1824065 Unit!119402)))

(declare-fun lt!1824076 () Unit!119356)

(declare-fun Unit!119403 () Unit!119356)

(assert (=> b!4662529 (= lt!1824076 Unit!119403)))

(declare-fun lt!1824060 () Unit!119356)

(assert (=> b!4662529 (= lt!1824060 (addForallContainsKeyThenBeforeAdding!613 (ListMap!4590 Nil!51952) lt!1824071 (_1!29837 (h!58112 (Cons!51952 lt!1823731 lt!1823720))) (_2!29837 (h!58112 (Cons!51952 lt!1823731 lt!1823720)))))))

(declare-fun call!325745 () Bool)

(assert (=> b!4662529 call!325745))

(declare-fun lt!1824075 () Unit!119356)

(assert (=> b!4662529 (= lt!1824075 lt!1824060)))

(assert (=> b!4662529 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) lambda!200727)))

(declare-fun lt!1824078 () Unit!119356)

(declare-fun Unit!119406 () Unit!119356)

(assert (=> b!4662529 (= lt!1824078 Unit!119406)))

(declare-fun res!1961500 () Bool)

(assert (=> b!4662529 (= res!1961500 (forall!11068 (Cons!51952 lt!1823731 lt!1823720) lambda!200727))))

(declare-fun e!2909441 () Bool)

(assert (=> b!4662529 (=> (not res!1961500) (not e!2909441))))

(assert (=> b!4662529 e!2909441))

(declare-fun lt!1824064 () Unit!119356)

(declare-fun Unit!119407 () Unit!119356)

(assert (=> b!4662529 (= lt!1824064 Unit!119407)))

(declare-fun b!4662530 () Bool)

(declare-fun res!1961499 () Bool)

(declare-fun e!2909443 () Bool)

(assert (=> b!4662530 (=> (not res!1961499) (not e!2909443))))

(assert (=> b!4662530 (= res!1961499 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) lambda!200728))))

(declare-fun b!4662531 () Bool)

(assert (=> b!4662531 (= e!2909441 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) lambda!200727))))

(assert (=> b!4662532 (= e!2909442 (ListMap!4590 Nil!51952))))

(declare-fun lt!1824072 () Unit!119356)

(assert (=> b!4662532 (= lt!1824072 call!325746)))

(assert (=> b!4662532 call!325745))

(declare-fun lt!1824079 () Unit!119356)

(assert (=> b!4662532 (= lt!1824079 lt!1824072)))

(assert (=> b!4662532 call!325747))

(declare-fun lt!1824066 () Unit!119356)

(declare-fun Unit!119408 () Unit!119356)

(assert (=> b!4662532 (= lt!1824066 Unit!119408)))

(assert (=> d!1481114 e!2909443))

(declare-fun res!1961498 () Bool)

(assert (=> d!1481114 (=> (not res!1961498) (not e!2909443))))

(assert (=> d!1481114 (= res!1961498 (forall!11068 (Cons!51952 lt!1823731 lt!1823720) lambda!200728))))

(assert (=> d!1481114 (= lt!1824067 e!2909442)))

(declare-fun c!798123 () Bool)

(assert (=> d!1481114 (= c!798123 ((_ is Nil!51952) (Cons!51952 lt!1823731 lt!1823720)))))

(assert (=> d!1481114 (noDuplicateKeys!1660 (Cons!51952 lt!1823731 lt!1823720))))

(assert (=> d!1481114 (= (addToMapMapFromBucket!1117 (Cons!51952 lt!1823731 lt!1823720) (ListMap!4590 Nil!51952)) lt!1824067)))

(declare-fun b!4662533 () Bool)

(assert (=> b!4662533 (= e!2909443 (invariantList!1314 (toList!5249 lt!1824067)))))

(declare-fun bm!325740 () Bool)

(assert (=> bm!325740 (= call!325746 (lemmaContainsAllItsOwnKeys!614 (ListMap!4590 Nil!51952)))))

(declare-fun bm!325741 () Bool)

(assert (=> bm!325741 (= call!325745 (forall!11068 (toList!5249 (ListMap!4590 Nil!51952)) (ite c!798123 lambda!200725 lambda!200727)))))

(declare-fun bm!325742 () Bool)

(assert (=> bm!325742 (= call!325747 (forall!11068 (ite c!798123 (toList!5249 (ListMap!4590 Nil!51952)) (t!359192 (Cons!51952 lt!1823731 lt!1823720))) (ite c!798123 lambda!200725 lambda!200727)))))

(assert (= (and d!1481114 c!798123) b!4662532))

(assert (= (and d!1481114 (not c!798123)) b!4662529))

(assert (= (and b!4662529 res!1961500) b!4662531))

(assert (= (or b!4662532 b!4662529) bm!325740))

(assert (= (or b!4662532 b!4662529) bm!325742))

(assert (= (or b!4662532 b!4662529) bm!325741))

(assert (= (and d!1481114 res!1961498) b!4662530))

(assert (= (and b!4662530 res!1961499) b!4662533))

(assert (=> bm!325740 m!5546399))

(declare-fun m!5546591 () Bool)

(assert (=> bm!325742 m!5546591))

(declare-fun m!5546593 () Bool)

(assert (=> b!4662531 m!5546593))

(declare-fun m!5546595 () Bool)

(assert (=> bm!325741 m!5546595))

(declare-fun m!5546597 () Bool)

(assert (=> b!4662529 m!5546597))

(assert (=> b!4662529 m!5546593))

(declare-fun m!5546599 () Bool)

(assert (=> b!4662529 m!5546599))

(declare-fun m!5546601 () Bool)

(assert (=> b!4662529 m!5546601))

(assert (=> b!4662529 m!5546601))

(declare-fun m!5546603 () Bool)

(assert (=> b!4662529 m!5546603))

(declare-fun m!5546605 () Bool)

(assert (=> b!4662529 m!5546605))

(declare-fun m!5546607 () Bool)

(assert (=> b!4662529 m!5546607))

(assert (=> b!4662529 m!5546599))

(declare-fun m!5546609 () Bool)

(assert (=> b!4662529 m!5546609))

(declare-fun m!5546611 () Bool)

(assert (=> b!4662529 m!5546611))

(assert (=> b!4662529 m!5546605))

(declare-fun m!5546613 () Bool)

(assert (=> b!4662529 m!5546613))

(declare-fun m!5546615 () Bool)

(assert (=> d!1481114 m!5546615))

(declare-fun m!5546617 () Bool)

(assert (=> d!1481114 m!5546617))

(declare-fun m!5546619 () Bool)

(assert (=> b!4662533 m!5546619))

(declare-fun m!5546621 () Bool)

(assert (=> b!4662530 m!5546621))

(assert (=> b!4662277 d!1481114))

(declare-fun d!1481116 () Bool)

(declare-fun res!1961501 () Bool)

(declare-fun e!2909444 () Bool)

(assert (=> d!1481116 (=> res!1961501 e!2909444)))

(assert (=> d!1481116 (= res!1961501 (not ((_ is Cons!51952) newBucket!224)))))

(assert (=> d!1481116 (= (noDuplicateKeys!1660 newBucket!224) e!2909444)))

(declare-fun b!4662534 () Bool)

(declare-fun e!2909445 () Bool)

(assert (=> b!4662534 (= e!2909444 e!2909445)))

(declare-fun res!1961502 () Bool)

(assert (=> b!4662534 (=> (not res!1961502) (not e!2909445))))

(assert (=> b!4662534 (= res!1961502 (not (containsKey!2770 (t!359192 newBucket!224) (_1!29837 (h!58112 newBucket!224)))))))

(declare-fun b!4662535 () Bool)

(assert (=> b!4662535 (= e!2909445 (noDuplicateKeys!1660 (t!359192 newBucket!224)))))

(assert (= (and d!1481116 (not res!1961501)) b!4662534))

(assert (= (and b!4662534 res!1961502) b!4662535))

(declare-fun m!5546623 () Bool)

(assert (=> b!4662534 m!5546623))

(declare-fun m!5546625 () Bool)

(assert (=> b!4662535 m!5546625))

(assert (=> b!4662276 d!1481116))

(declare-fun d!1481118 () Bool)

(declare-fun hash!3815 (Hashable!6057 K!13300) (_ BitVec 64))

(assert (=> d!1481118 (= (hash!3813 hashF!1389 key!4968) (hash!3815 hashF!1389 key!4968))))

(declare-fun bs!1068950 () Bool)

(assert (= bs!1068950 d!1481118))

(declare-fun m!5546627 () Bool)

(assert (=> bs!1068950 m!5546627))

(assert (=> b!4662278 d!1481118))

(declare-fun b!4662546 () Bool)

(declare-fun e!2909451 () List!52076)

(assert (=> b!4662546 (= e!2909451 (Cons!51952 (h!58112 lt!1823720) (removePairForKey!1283 (t!359192 lt!1823720) key!4968)))))

(declare-fun b!4662547 () Bool)

(assert (=> b!4662547 (= e!2909451 Nil!51952)))

(declare-fun b!4662545 () Bool)

(declare-fun e!2909450 () List!52076)

(assert (=> b!4662545 (= e!2909450 e!2909451)))

(declare-fun c!798128 () Bool)

(assert (=> b!4662545 (= c!798128 ((_ is Cons!51952) lt!1823720))))

(declare-fun b!4662544 () Bool)

(assert (=> b!4662544 (= e!2909450 (t!359192 lt!1823720))))

(declare-fun d!1481120 () Bool)

(declare-fun lt!1824082 () List!52076)

(assert (=> d!1481120 (not (containsKey!2770 lt!1824082 key!4968))))

(assert (=> d!1481120 (= lt!1824082 e!2909450)))

(declare-fun c!798129 () Bool)

(assert (=> d!1481120 (= c!798129 (and ((_ is Cons!51952) lt!1823720) (= (_1!29837 (h!58112 lt!1823720)) key!4968)))))

(assert (=> d!1481120 (noDuplicateKeys!1660 lt!1823720)))

(assert (=> d!1481120 (= (removePairForKey!1283 lt!1823720 key!4968) lt!1824082)))

(assert (= (and d!1481120 c!798129) b!4662544))

(assert (= (and d!1481120 (not c!798129)) b!4662545))

(assert (= (and b!4662545 c!798128) b!4662546))

(assert (= (and b!4662545 (not c!798128)) b!4662547))

(declare-fun m!5546629 () Bool)

(assert (=> b!4662546 m!5546629))

(declare-fun m!5546631 () Bool)

(assert (=> d!1481120 m!5546631))

(assert (=> d!1481120 m!5546429))

(assert (=> b!4662279 d!1481120))

(declare-fun d!1481122 () Bool)

(assert (=> d!1481122 (= (tail!8263 newBucket!224) (t!359192 newBucket!224))))

(assert (=> b!4662279 d!1481122))

(declare-fun d!1481124 () Bool)

(assert (=> d!1481124 (= (tail!8263 oldBucket!40) (t!359192 oldBucket!40))))

(assert (=> b!4662279 d!1481124))

(declare-fun bs!1068951 () Bool)

(declare-fun b!4662551 () Bool)

(assert (= bs!1068951 (and b!4662551 b!4662532)))

(declare-fun lambda!200729 () Int)

(assert (=> bs!1068951 (= (= lt!1823725 (ListMap!4590 Nil!51952)) (= lambda!200729 lambda!200725))))

(declare-fun bs!1068952 () Bool)

(assert (= bs!1068952 (and b!4662551 b!4662448)))

(assert (=> bs!1068952 (= (= lt!1823725 lt!1823946) (= lambda!200729 lambda!200714))))

(declare-fun bs!1068953 () Bool)

(assert (= bs!1068953 (and b!4662551 b!4662529)))

(assert (=> bs!1068953 (= (= lt!1823725 lt!1824071) (= lambda!200729 lambda!200727))))

(assert (=> bs!1068952 (= (= lt!1823725 (ListMap!4590 Nil!51952)) (= lambda!200729 lambda!200713))))

(declare-fun bs!1068954 () Bool)

(assert (= bs!1068954 (and b!4662551 b!4662451)))

(assert (=> bs!1068954 (= (= lt!1823725 (ListMap!4590 Nil!51952)) (= lambda!200729 lambda!200712))))

(declare-fun bs!1068955 () Bool)

(assert (= bs!1068955 (and b!4662551 d!1481062)))

(assert (=> bs!1068955 (= (= lt!1823725 lt!1823942) (= lambda!200729 lambda!200715))))

(assert (=> bs!1068953 (= (= lt!1823725 (ListMap!4590 Nil!51952)) (= lambda!200729 lambda!200726))))

(declare-fun bs!1068956 () Bool)

(assert (= bs!1068956 (and b!4662551 d!1481114)))

(assert (=> bs!1068956 (= (= lt!1823725 lt!1824067) (= lambda!200729 lambda!200728))))

(assert (=> b!4662551 true))

(declare-fun bs!1068957 () Bool)

(declare-fun b!4662548 () Bool)

(assert (= bs!1068957 (and b!4662548 b!4662532)))

(declare-fun lambda!200730 () Int)

(assert (=> bs!1068957 (= (= lt!1823725 (ListMap!4590 Nil!51952)) (= lambda!200730 lambda!200725))))

(declare-fun bs!1068958 () Bool)

(assert (= bs!1068958 (and b!4662548 b!4662448)))

(assert (=> bs!1068958 (= (= lt!1823725 lt!1823946) (= lambda!200730 lambda!200714))))

(declare-fun bs!1068959 () Bool)

(assert (= bs!1068959 (and b!4662548 b!4662529)))

(assert (=> bs!1068959 (= (= lt!1823725 lt!1824071) (= lambda!200730 lambda!200727))))

(assert (=> bs!1068958 (= (= lt!1823725 (ListMap!4590 Nil!51952)) (= lambda!200730 lambda!200713))))

(declare-fun bs!1068960 () Bool)

(assert (= bs!1068960 (and b!4662548 b!4662451)))

(assert (=> bs!1068960 (= (= lt!1823725 (ListMap!4590 Nil!51952)) (= lambda!200730 lambda!200712))))

(assert (=> bs!1068959 (= (= lt!1823725 (ListMap!4590 Nil!51952)) (= lambda!200730 lambda!200726))))

(declare-fun bs!1068961 () Bool)

(assert (= bs!1068961 (and b!4662548 d!1481114)))

(assert (=> bs!1068961 (= (= lt!1823725 lt!1824067) (= lambda!200730 lambda!200728))))

(declare-fun bs!1068962 () Bool)

(assert (= bs!1068962 (and b!4662548 d!1481062)))

(assert (=> bs!1068962 (= (= lt!1823725 lt!1823942) (= lambda!200730 lambda!200715))))

(declare-fun bs!1068963 () Bool)

(assert (= bs!1068963 (and b!4662548 b!4662551)))

(assert (=> bs!1068963 (= lambda!200730 lambda!200729)))

(assert (=> b!4662548 true))

(declare-fun lt!1824095 () ListMap!4589)

(declare-fun lambda!200731 () Int)

(assert (=> bs!1068957 (= (= lt!1824095 (ListMap!4590 Nil!51952)) (= lambda!200731 lambda!200725))))

(assert (=> bs!1068958 (= (= lt!1824095 lt!1823946) (= lambda!200731 lambda!200714))))

(assert (=> b!4662548 (= (= lt!1824095 lt!1823725) (= lambda!200731 lambda!200730))))

(assert (=> bs!1068959 (= (= lt!1824095 lt!1824071) (= lambda!200731 lambda!200727))))

(assert (=> bs!1068958 (= (= lt!1824095 (ListMap!4590 Nil!51952)) (= lambda!200731 lambda!200713))))

(assert (=> bs!1068960 (= (= lt!1824095 (ListMap!4590 Nil!51952)) (= lambda!200731 lambda!200712))))

(assert (=> bs!1068959 (= (= lt!1824095 (ListMap!4590 Nil!51952)) (= lambda!200731 lambda!200726))))

(assert (=> bs!1068961 (= (= lt!1824095 lt!1824067) (= lambda!200731 lambda!200728))))

(assert (=> bs!1068962 (= (= lt!1824095 lt!1823942) (= lambda!200731 lambda!200715))))

(assert (=> bs!1068963 (= (= lt!1824095 lt!1823725) (= lambda!200731 lambda!200729))))

(assert (=> b!4662548 true))

(declare-fun bs!1068964 () Bool)

(declare-fun d!1481126 () Bool)

(assert (= bs!1068964 (and d!1481126 b!4662548)))

(declare-fun lt!1824091 () ListMap!4589)

(declare-fun lambda!200732 () Int)

(assert (=> bs!1068964 (= (= lt!1824091 lt!1824095) (= lambda!200732 lambda!200731))))

(declare-fun bs!1068965 () Bool)

(assert (= bs!1068965 (and d!1481126 b!4662532)))

(assert (=> bs!1068965 (= (= lt!1824091 (ListMap!4590 Nil!51952)) (= lambda!200732 lambda!200725))))

(declare-fun bs!1068966 () Bool)

(assert (= bs!1068966 (and d!1481126 b!4662448)))

(assert (=> bs!1068966 (= (= lt!1824091 lt!1823946) (= lambda!200732 lambda!200714))))

(assert (=> bs!1068964 (= (= lt!1824091 lt!1823725) (= lambda!200732 lambda!200730))))

(declare-fun bs!1068967 () Bool)

(assert (= bs!1068967 (and d!1481126 b!4662529)))

(assert (=> bs!1068967 (= (= lt!1824091 lt!1824071) (= lambda!200732 lambda!200727))))

(assert (=> bs!1068966 (= (= lt!1824091 (ListMap!4590 Nil!51952)) (= lambda!200732 lambda!200713))))

(declare-fun bs!1068968 () Bool)

(assert (= bs!1068968 (and d!1481126 b!4662451)))

(assert (=> bs!1068968 (= (= lt!1824091 (ListMap!4590 Nil!51952)) (= lambda!200732 lambda!200712))))

(assert (=> bs!1068967 (= (= lt!1824091 (ListMap!4590 Nil!51952)) (= lambda!200732 lambda!200726))))

(declare-fun bs!1068969 () Bool)

(assert (= bs!1068969 (and d!1481126 d!1481114)))

(assert (=> bs!1068969 (= (= lt!1824091 lt!1824067) (= lambda!200732 lambda!200728))))

(declare-fun bs!1068970 () Bool)

(assert (= bs!1068970 (and d!1481126 d!1481062)))

(assert (=> bs!1068970 (= (= lt!1824091 lt!1823942) (= lambda!200732 lambda!200715))))

(declare-fun bs!1068971 () Bool)

(assert (= bs!1068971 (and d!1481126 b!4662551)))

(assert (=> bs!1068971 (= (= lt!1824091 lt!1823725) (= lambda!200732 lambda!200729))))

(assert (=> d!1481126 true))

(declare-fun e!2909453 () ListMap!4589)

(assert (=> b!4662548 (= e!2909453 lt!1824095)))

(declare-fun lt!1824093 () ListMap!4589)

(assert (=> b!4662548 (= lt!1824093 (+!2000 lt!1823725 (h!58112 oldBucket!40)))))

(assert (=> b!4662548 (= lt!1824095 (addToMapMapFromBucket!1117 (t!359192 oldBucket!40) (+!2000 lt!1823725 (h!58112 oldBucket!40))))))

(declare-fun lt!1824083 () Unit!119356)

(declare-fun call!325749 () Unit!119356)

(assert (=> b!4662548 (= lt!1824083 call!325749)))

(assert (=> b!4662548 (forall!11068 (toList!5249 lt!1823725) lambda!200730)))

(declare-fun lt!1824085 () Unit!119356)

(assert (=> b!4662548 (= lt!1824085 lt!1824083)))

(assert (=> b!4662548 (forall!11068 (toList!5249 lt!1824093) lambda!200731)))

(declare-fun lt!1824097 () Unit!119356)

(declare-fun Unit!119419 () Unit!119356)

(assert (=> b!4662548 (= lt!1824097 Unit!119419)))

(declare-fun call!325750 () Bool)

(assert (=> b!4662548 call!325750))

(declare-fun lt!1824098 () Unit!119356)

(declare-fun Unit!119420 () Unit!119356)

(assert (=> b!4662548 (= lt!1824098 Unit!119420)))

(declare-fun lt!1824086 () Unit!119356)

(declare-fun Unit!119422 () Unit!119356)

(assert (=> b!4662548 (= lt!1824086 Unit!119422)))

(declare-fun lt!1824094 () Unit!119356)

(assert (=> b!4662548 (= lt!1824094 (forallContained!3268 (toList!5249 lt!1824093) lambda!200731 (h!58112 oldBucket!40)))))

(assert (=> b!4662548 (contains!15123 lt!1824093 (_1!29837 (h!58112 oldBucket!40)))))

(declare-fun lt!1824101 () Unit!119356)

(declare-fun Unit!119423 () Unit!119356)

(assert (=> b!4662548 (= lt!1824101 Unit!119423)))

(assert (=> b!4662548 (contains!15123 lt!1824095 (_1!29837 (h!58112 oldBucket!40)))))

(declare-fun lt!1824092 () Unit!119356)

(declare-fun Unit!119424 () Unit!119356)

(assert (=> b!4662548 (= lt!1824092 Unit!119424)))

(assert (=> b!4662548 (forall!11068 oldBucket!40 lambda!200731)))

(declare-fun lt!1824087 () Unit!119356)

(declare-fun Unit!119425 () Unit!119356)

(assert (=> b!4662548 (= lt!1824087 Unit!119425)))

(assert (=> b!4662548 (forall!11068 (toList!5249 lt!1824093) lambda!200731)))

(declare-fun lt!1824089 () Unit!119356)

(declare-fun Unit!119426 () Unit!119356)

(assert (=> b!4662548 (= lt!1824089 Unit!119426)))

(declare-fun lt!1824100 () Unit!119356)

(declare-fun Unit!119427 () Unit!119356)

(assert (=> b!4662548 (= lt!1824100 Unit!119427)))

(declare-fun lt!1824084 () Unit!119356)

(assert (=> b!4662548 (= lt!1824084 (addForallContainsKeyThenBeforeAdding!613 lt!1823725 lt!1824095 (_1!29837 (h!58112 oldBucket!40)) (_2!29837 (h!58112 oldBucket!40))))))

(declare-fun call!325748 () Bool)

(assert (=> b!4662548 call!325748))

(declare-fun lt!1824099 () Unit!119356)

(assert (=> b!4662548 (= lt!1824099 lt!1824084)))

(assert (=> b!4662548 (forall!11068 (toList!5249 lt!1823725) lambda!200731)))

(declare-fun lt!1824102 () Unit!119356)

(declare-fun Unit!119428 () Unit!119356)

(assert (=> b!4662548 (= lt!1824102 Unit!119428)))

(declare-fun res!1961505 () Bool)

(assert (=> b!4662548 (= res!1961505 (forall!11068 oldBucket!40 lambda!200731))))

(declare-fun e!2909452 () Bool)

(assert (=> b!4662548 (=> (not res!1961505) (not e!2909452))))

(assert (=> b!4662548 e!2909452))

(declare-fun lt!1824088 () Unit!119356)

(declare-fun Unit!119429 () Unit!119356)

(assert (=> b!4662548 (= lt!1824088 Unit!119429)))

(declare-fun b!4662549 () Bool)

(declare-fun res!1961504 () Bool)

(declare-fun e!2909454 () Bool)

(assert (=> b!4662549 (=> (not res!1961504) (not e!2909454))))

(assert (=> b!4662549 (= res!1961504 (forall!11068 (toList!5249 lt!1823725) lambda!200732))))

(declare-fun b!4662550 () Bool)

(assert (=> b!4662550 (= e!2909452 (forall!11068 (toList!5249 lt!1823725) lambda!200731))))

(assert (=> b!4662551 (= e!2909453 lt!1823725)))

(declare-fun lt!1824096 () Unit!119356)

(assert (=> b!4662551 (= lt!1824096 call!325749)))

(assert (=> b!4662551 call!325748))

(declare-fun lt!1824103 () Unit!119356)

(assert (=> b!4662551 (= lt!1824103 lt!1824096)))

(assert (=> b!4662551 call!325750))

(declare-fun lt!1824090 () Unit!119356)

(declare-fun Unit!119430 () Unit!119356)

(assert (=> b!4662551 (= lt!1824090 Unit!119430)))

(assert (=> d!1481126 e!2909454))

(declare-fun res!1961503 () Bool)

(assert (=> d!1481126 (=> (not res!1961503) (not e!2909454))))

(assert (=> d!1481126 (= res!1961503 (forall!11068 oldBucket!40 lambda!200732))))

(assert (=> d!1481126 (= lt!1824091 e!2909453)))

(declare-fun c!798130 () Bool)

(assert (=> d!1481126 (= c!798130 ((_ is Nil!51952) oldBucket!40))))

(assert (=> d!1481126 (noDuplicateKeys!1660 oldBucket!40)))

(assert (=> d!1481126 (= (addToMapMapFromBucket!1117 oldBucket!40 lt!1823725) lt!1824091)))

(declare-fun b!4662552 () Bool)

(assert (=> b!4662552 (= e!2909454 (invariantList!1314 (toList!5249 lt!1824091)))))

(declare-fun bm!325743 () Bool)

(assert (=> bm!325743 (= call!325749 (lemmaContainsAllItsOwnKeys!614 lt!1823725))))

(declare-fun bm!325744 () Bool)

(assert (=> bm!325744 (= call!325748 (forall!11068 (toList!5249 lt!1823725) (ite c!798130 lambda!200729 lambda!200731)))))

(declare-fun bm!325745 () Bool)

(assert (=> bm!325745 (= call!325750 (forall!11068 (ite c!798130 (toList!5249 lt!1823725) (t!359192 oldBucket!40)) (ite c!798130 lambda!200729 lambda!200731)))))

(assert (= (and d!1481126 c!798130) b!4662551))

(assert (= (and d!1481126 (not c!798130)) b!4662548))

(assert (= (and b!4662548 res!1961505) b!4662550))

(assert (= (or b!4662551 b!4662548) bm!325743))

(assert (= (or b!4662551 b!4662548) bm!325745))

(assert (= (or b!4662551 b!4662548) bm!325744))

(assert (= (and d!1481126 res!1961503) b!4662549))

(assert (= (and b!4662549 res!1961504) b!4662552))

(declare-fun m!5546633 () Bool)

(assert (=> bm!325743 m!5546633))

(declare-fun m!5546635 () Bool)

(assert (=> bm!325745 m!5546635))

(declare-fun m!5546637 () Bool)

(assert (=> b!4662550 m!5546637))

(declare-fun m!5546639 () Bool)

(assert (=> bm!325744 m!5546639))

(declare-fun m!5546641 () Bool)

(assert (=> b!4662548 m!5546641))

(assert (=> b!4662548 m!5546637))

(declare-fun m!5546643 () Bool)

(assert (=> b!4662548 m!5546643))

(declare-fun m!5546645 () Bool)

(assert (=> b!4662548 m!5546645))

(assert (=> b!4662548 m!5546645))

(declare-fun m!5546647 () Bool)

(assert (=> b!4662548 m!5546647))

(declare-fun m!5546649 () Bool)

(assert (=> b!4662548 m!5546649))

(declare-fun m!5546651 () Bool)

(assert (=> b!4662548 m!5546651))

(assert (=> b!4662548 m!5546643))

(declare-fun m!5546653 () Bool)

(assert (=> b!4662548 m!5546653))

(declare-fun m!5546655 () Bool)

(assert (=> b!4662548 m!5546655))

(assert (=> b!4662548 m!5546649))

(declare-fun m!5546657 () Bool)

(assert (=> b!4662548 m!5546657))

(declare-fun m!5546659 () Bool)

(assert (=> d!1481126 m!5546659))

(assert (=> d!1481126 m!5546127))

(declare-fun m!5546661 () Bool)

(assert (=> b!4662552 m!5546661))

(declare-fun m!5546663 () Bool)

(assert (=> b!4662549 m!5546663))

(assert (=> b!4662280 d!1481126))

(declare-fun bs!1068972 () Bool)

(declare-fun d!1481128 () Bool)

(assert (= bs!1068972 (and d!1481128 b!4662283)))

(declare-fun lambda!200733 () Int)

(assert (=> bs!1068972 (= lambda!200733 lambda!200624)))

(declare-fun bs!1068973 () Bool)

(assert (= bs!1068973 (and d!1481128 d!1481040)))

(assert (=> bs!1068973 (= lambda!200733 lambda!200630)))

(declare-fun bs!1068974 () Bool)

(assert (= bs!1068974 (and d!1481128 d!1481048)))

(assert (=> bs!1068974 (= lambda!200733 lambda!200640)))

(declare-fun lt!1824104 () ListMap!4589)

(assert (=> d!1481128 (invariantList!1314 (toList!5249 lt!1824104))))

(declare-fun e!2909455 () ListMap!4589)

(assert (=> d!1481128 (= lt!1824104 e!2909455)))

(declare-fun c!798131 () Bool)

(assert (=> d!1481128 (= c!798131 ((_ is Cons!51953) Nil!51953))))

(assert (=> d!1481128 (forall!11067 Nil!51953 lambda!200733)))

(assert (=> d!1481128 (= (extractMap!1716 Nil!51953) lt!1824104)))

(declare-fun b!4662553 () Bool)

(assert (=> b!4662553 (= e!2909455 (addToMapMapFromBucket!1117 (_2!29838 (h!58113 Nil!51953)) (extractMap!1716 (t!359193 Nil!51953))))))

(declare-fun b!4662554 () Bool)

(assert (=> b!4662554 (= e!2909455 (ListMap!4590 Nil!51952))))

(assert (= (and d!1481128 c!798131) b!4662553))

(assert (= (and d!1481128 (not c!798131)) b!4662554))

(declare-fun m!5546665 () Bool)

(assert (=> d!1481128 m!5546665))

(declare-fun m!5546667 () Bool)

(assert (=> d!1481128 m!5546667))

(declare-fun m!5546669 () Bool)

(assert (=> b!4662553 m!5546669))

(assert (=> b!4662553 m!5546669))

(declare-fun m!5546671 () Bool)

(assert (=> b!4662553 m!5546671))

(assert (=> b!4662280 d!1481128))

(declare-fun b!4662557 () Bool)

(declare-fun e!2909457 () List!52076)

(assert (=> b!4662557 (= e!2909457 (Cons!51952 (h!58112 (t!359192 oldBucket!40)) (removePairForKey!1283 (t!359192 (t!359192 oldBucket!40)) key!4968)))))

(declare-fun b!4662558 () Bool)

(assert (=> b!4662558 (= e!2909457 Nil!51952)))

(declare-fun b!4662556 () Bool)

(declare-fun e!2909456 () List!52076)

(assert (=> b!4662556 (= e!2909456 e!2909457)))

(declare-fun c!798132 () Bool)

(assert (=> b!4662556 (= c!798132 ((_ is Cons!51952) (t!359192 oldBucket!40)))))

(declare-fun b!4662555 () Bool)

(assert (=> b!4662555 (= e!2909456 (t!359192 (t!359192 oldBucket!40)))))

(declare-fun d!1481130 () Bool)

(declare-fun lt!1824105 () List!52076)

(assert (=> d!1481130 (not (containsKey!2770 lt!1824105 key!4968))))

(assert (=> d!1481130 (= lt!1824105 e!2909456)))

(declare-fun c!798133 () Bool)

(assert (=> d!1481130 (= c!798133 (and ((_ is Cons!51952) (t!359192 oldBucket!40)) (= (_1!29837 (h!58112 (t!359192 oldBucket!40))) key!4968)))))

(assert (=> d!1481130 (noDuplicateKeys!1660 (t!359192 oldBucket!40))))

(assert (=> d!1481130 (= (removePairForKey!1283 (t!359192 oldBucket!40) key!4968) lt!1824105)))

(assert (= (and d!1481130 c!798133) b!4662555))

(assert (= (and d!1481130 (not c!798133)) b!4662556))

(assert (= (and b!4662556 c!798132) b!4662557))

(assert (= (and b!4662556 (not c!798132)) b!4662558))

(declare-fun m!5546673 () Bool)

(assert (=> b!4662557 m!5546673))

(declare-fun m!5546675 () Bool)

(assert (=> d!1481130 m!5546675))

(declare-fun m!5546677 () Bool)

(assert (=> d!1481130 m!5546677))

(assert (=> b!4662282 d!1481130))

(declare-fun bs!1068975 () Bool)

(declare-fun d!1481132 () Bool)

(assert (= bs!1068975 (and d!1481132 d!1481126)))

(declare-fun lambda!200736 () Int)

(assert (=> bs!1068975 (not (= lambda!200736 lambda!200732))))

(declare-fun bs!1068976 () Bool)

(assert (= bs!1068976 (and d!1481132 b!4662548)))

(assert (=> bs!1068976 (not (= lambda!200736 lambda!200731))))

(declare-fun bs!1068977 () Bool)

(assert (= bs!1068977 (and d!1481132 b!4662532)))

(assert (=> bs!1068977 (not (= lambda!200736 lambda!200725))))

(declare-fun bs!1068978 () Bool)

(assert (= bs!1068978 (and d!1481132 b!4662448)))

(assert (=> bs!1068978 (not (= lambda!200736 lambda!200714))))

(assert (=> bs!1068976 (not (= lambda!200736 lambda!200730))))

(declare-fun bs!1068979 () Bool)

(assert (= bs!1068979 (and d!1481132 b!4662529)))

(assert (=> bs!1068979 (not (= lambda!200736 lambda!200727))))

(assert (=> bs!1068978 (not (= lambda!200736 lambda!200713))))

(declare-fun bs!1068980 () Bool)

(assert (= bs!1068980 (and d!1481132 b!4662451)))

(assert (=> bs!1068980 (not (= lambda!200736 lambda!200712))))

(assert (=> bs!1068979 (not (= lambda!200736 lambda!200726))))

(declare-fun bs!1068981 () Bool)

(assert (= bs!1068981 (and d!1481132 d!1481114)))

(assert (=> bs!1068981 (not (= lambda!200736 lambda!200728))))

(declare-fun bs!1068982 () Bool)

(assert (= bs!1068982 (and d!1481132 d!1481062)))

(assert (=> bs!1068982 (not (= lambda!200736 lambda!200715))))

(declare-fun bs!1068983 () Bool)

(assert (= bs!1068983 (and d!1481132 b!4662551)))

(assert (=> bs!1068983 (not (= lambda!200736 lambda!200729))))

(assert (=> d!1481132 true))

(assert (=> d!1481132 true))

(assert (=> d!1481132 (= (allKeysSameHash!1514 oldBucket!40 hash!414 hashF!1389) (forall!11068 oldBucket!40 lambda!200736))))

(declare-fun bs!1068984 () Bool)

(assert (= bs!1068984 d!1481132))

(declare-fun m!5546679 () Bool)

(assert (=> bs!1068984 m!5546679))

(assert (=> b!4662273 d!1481132))

(declare-fun d!1481134 () Bool)

(assert (=> d!1481134 (containsKey!2770 oldBucket!40 key!4968)))

(declare-fun lt!1824108 () Unit!119356)

(declare-fun choose!32150 (List!52076 K!13300 Hashable!6057) Unit!119356)

(assert (=> d!1481134 (= lt!1824108 (choose!32150 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1481134 (noDuplicateKeys!1660 oldBucket!40)))

(assert (=> d!1481134 (= (lemmaGetPairDefinedThenContainsKey!138 oldBucket!40 key!4968 hashF!1389) lt!1824108)))

(declare-fun bs!1068985 () Bool)

(assert (= bs!1068985 d!1481134))

(assert (=> bs!1068985 m!5546137))

(declare-fun m!5546681 () Bool)

(assert (=> bs!1068985 m!5546681))

(assert (=> bs!1068985 m!5546127))

(assert (=> b!4662283 d!1481134))

(declare-fun d!1481136 () Bool)

(declare-fun res!1961510 () Bool)

(declare-fun e!2909462 () Bool)

(assert (=> d!1481136 (=> res!1961510 e!2909462)))

(assert (=> d!1481136 (= res!1961510 (and ((_ is Cons!51952) (t!359192 oldBucket!40)) (= (_1!29837 (h!58112 (t!359192 oldBucket!40))) key!4968)))))

(assert (=> d!1481136 (= (containsKey!2770 (t!359192 oldBucket!40) key!4968) e!2909462)))

(declare-fun b!4662567 () Bool)

(declare-fun e!2909463 () Bool)

(assert (=> b!4662567 (= e!2909462 e!2909463)))

(declare-fun res!1961511 () Bool)

(assert (=> b!4662567 (=> (not res!1961511) (not e!2909463))))

(assert (=> b!4662567 (= res!1961511 ((_ is Cons!51952) (t!359192 oldBucket!40)))))

(declare-fun b!4662568 () Bool)

(assert (=> b!4662568 (= e!2909463 (containsKey!2770 (t!359192 (t!359192 oldBucket!40)) key!4968))))

(assert (= (and d!1481136 (not res!1961510)) b!4662567))

(assert (= (and b!4662567 res!1961511) b!4662568))

(declare-fun m!5546683 () Bool)

(assert (=> b!4662568 m!5546683))

(assert (=> b!4662283 d!1481136))

(declare-fun d!1481138 () Bool)

(declare-fun lt!1824111 () Bool)

(declare-fun content!9027 (List!52077) (InoxSet tuple2!53088))

(assert (=> d!1481138 (= lt!1824111 (select (content!9027 lt!1823724) lt!1823716))))

(declare-fun e!2909469 () Bool)

(assert (=> d!1481138 (= lt!1824111 e!2909469)))

(declare-fun res!1961517 () Bool)

(assert (=> d!1481138 (=> (not res!1961517) (not e!2909469))))

(assert (=> d!1481138 (= res!1961517 ((_ is Cons!51953) lt!1823724))))

(assert (=> d!1481138 (= (contains!15124 lt!1823724 lt!1823716) lt!1824111)))

(declare-fun b!4662573 () Bool)

(declare-fun e!2909468 () Bool)

(assert (=> b!4662573 (= e!2909469 e!2909468)))

(declare-fun res!1961516 () Bool)

(assert (=> b!4662573 (=> res!1961516 e!2909468)))

(assert (=> b!4662573 (= res!1961516 (= (h!58113 lt!1823724) lt!1823716))))

(declare-fun b!4662574 () Bool)

(assert (=> b!4662574 (= e!2909468 (contains!15124 (t!359193 lt!1823724) lt!1823716))))

(assert (= (and d!1481138 res!1961517) b!4662573))

(assert (= (and b!4662573 (not res!1961516)) b!4662574))

(declare-fun m!5546685 () Bool)

(assert (=> d!1481138 m!5546685))

(declare-fun m!5546687 () Bool)

(assert (=> d!1481138 m!5546687))

(declare-fun m!5546689 () Bool)

(assert (=> b!4662574 m!5546689))

(assert (=> b!4662283 d!1481138))

(declare-fun d!1481140 () Bool)

(declare-fun e!2909474 () Bool)

(assert (=> d!1481140 e!2909474))

(declare-fun res!1961520 () Bool)

(assert (=> d!1481140 (=> res!1961520 e!2909474)))

(declare-fun lt!1824122 () Bool)

(assert (=> d!1481140 (= res!1961520 (not lt!1824122))))

(declare-fun lt!1824123 () Bool)

(assert (=> d!1481140 (= lt!1824122 lt!1824123)))

(declare-fun lt!1824121 () Unit!119356)

(declare-fun e!2909475 () Unit!119356)

(assert (=> d!1481140 (= lt!1824121 e!2909475)))

(declare-fun c!798136 () Bool)

(assert (=> d!1481140 (= c!798136 lt!1824123)))

(declare-fun containsKey!2774 (List!52077 (_ BitVec 64)) Bool)

(assert (=> d!1481140 (= lt!1824123 (containsKey!2774 (toList!5250 lt!1823714) lt!1823722))))

(assert (=> d!1481140 (= (contains!15125 lt!1823714 lt!1823722) lt!1824122)))

(declare-fun b!4662581 () Bool)

(declare-fun lt!1824120 () Unit!119356)

(assert (=> b!4662581 (= e!2909475 lt!1824120)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1544 (List!52077 (_ BitVec 64)) Unit!119356)

(assert (=> b!4662581 (= lt!1824120 (lemmaContainsKeyImpliesGetValueByKeyDefined!1544 (toList!5250 lt!1823714) lt!1823722))))

(declare-datatypes ((Option!11872 0))(
  ( (None!11871) (Some!11871 (v!46189 List!52076)) )
))
(declare-fun isDefined!9137 (Option!11872) Bool)

(declare-fun getValueByKey!1642 (List!52077 (_ BitVec 64)) Option!11872)

(assert (=> b!4662581 (isDefined!9137 (getValueByKey!1642 (toList!5250 lt!1823714) lt!1823722))))

(declare-fun b!4662582 () Bool)

(declare-fun Unit!119431 () Unit!119356)

(assert (=> b!4662582 (= e!2909475 Unit!119431)))

(declare-fun b!4662583 () Bool)

(assert (=> b!4662583 (= e!2909474 (isDefined!9137 (getValueByKey!1642 (toList!5250 lt!1823714) lt!1823722)))))

(assert (= (and d!1481140 c!798136) b!4662581))

(assert (= (and d!1481140 (not c!798136)) b!4662582))

(assert (= (and d!1481140 (not res!1961520)) b!4662583))

(declare-fun m!5546691 () Bool)

(assert (=> d!1481140 m!5546691))

(declare-fun m!5546693 () Bool)

(assert (=> b!4662581 m!5546693))

(declare-fun m!5546695 () Bool)

(assert (=> b!4662581 m!5546695))

(assert (=> b!4662581 m!5546695))

(declare-fun m!5546697 () Bool)

(assert (=> b!4662581 m!5546697))

(assert (=> b!4662583 m!5546695))

(assert (=> b!4662583 m!5546695))

(assert (=> b!4662583 m!5546697))

(assert (=> b!4662283 d!1481140))

(declare-fun d!1481142 () Bool)

(declare-fun get!17308 (Option!11872) List!52076)

(assert (=> d!1481142 (= (apply!12263 lt!1823714 lt!1823722) (get!17308 (getValueByKey!1642 (toList!5250 lt!1823714) lt!1823722)))))

(declare-fun bs!1068986 () Bool)

(assert (= bs!1068986 d!1481142))

(assert (=> bs!1068986 m!5546695))

(assert (=> bs!1068986 m!5546695))

(declare-fun m!5546699 () Bool)

(assert (=> bs!1068986 m!5546699))

(assert (=> b!4662283 d!1481142))

(declare-fun d!1481144 () Bool)

(assert (=> d!1481144 (contains!15124 (toList!5250 lt!1823714) (tuple2!53089 lt!1823722 lt!1823730))))

(declare-fun lt!1824126 () Unit!119356)

(declare-fun choose!32151 (ListLongMap!3803 (_ BitVec 64) List!52076) Unit!119356)

(assert (=> d!1481144 (= lt!1824126 (choose!32151 lt!1823714 lt!1823722 lt!1823730))))

(assert (=> d!1481144 (contains!15125 lt!1823714 lt!1823722)))

(assert (=> d!1481144 (= (lemmaGetValueImpliesTupleContained!193 lt!1823714 lt!1823722 lt!1823730) lt!1824126)))

(declare-fun bs!1068987 () Bool)

(assert (= bs!1068987 d!1481144))

(declare-fun m!5546701 () Bool)

(assert (=> bs!1068987 m!5546701))

(declare-fun m!5546703 () Bool)

(assert (=> bs!1068987 m!5546703))

(assert (=> bs!1068987 m!5546153))

(assert (=> b!4662283 d!1481144))

(declare-fun d!1481146 () Bool)

(declare-fun res!1961521 () Bool)

(declare-fun e!2909476 () Bool)

(assert (=> d!1481146 (=> res!1961521 e!2909476)))

(assert (=> d!1481146 (= res!1961521 (and ((_ is Cons!51952) oldBucket!40) (= (_1!29837 (h!58112 oldBucket!40)) key!4968)))))

(assert (=> d!1481146 (= (containsKey!2770 oldBucket!40 key!4968) e!2909476)))

(declare-fun b!4662585 () Bool)

(declare-fun e!2909477 () Bool)

(assert (=> b!4662585 (= e!2909476 e!2909477)))

(declare-fun res!1961522 () Bool)

(assert (=> b!4662585 (=> (not res!1961522) (not e!2909477))))

(assert (=> b!4662585 (= res!1961522 ((_ is Cons!51952) oldBucket!40))))

(declare-fun b!4662586 () Bool)

(assert (=> b!4662586 (= e!2909477 (containsKey!2770 (t!359192 oldBucket!40) key!4968))))

(assert (= (and d!1481146 (not res!1961521)) b!4662585))

(assert (= (and b!4662585 res!1961522) b!4662586))

(assert (=> b!4662586 m!5546145))

(assert (=> b!4662283 d!1481146))

(declare-fun bs!1068988 () Bool)

(declare-fun d!1481148 () Bool)

(assert (= bs!1068988 (and d!1481148 b!4662283)))

(declare-fun lambda!200739 () Int)

(assert (=> bs!1068988 (= lambda!200739 lambda!200624)))

(declare-fun bs!1068989 () Bool)

(assert (= bs!1068989 (and d!1481148 d!1481040)))

(assert (=> bs!1068989 (= lambda!200739 lambda!200630)))

(declare-fun bs!1068990 () Bool)

(assert (= bs!1068990 (and d!1481148 d!1481048)))

(assert (=> bs!1068990 (= lambda!200739 lambda!200640)))

(declare-fun bs!1068991 () Bool)

(assert (= bs!1068991 (and d!1481148 d!1481128)))

(assert (=> bs!1068991 (= lambda!200739 lambda!200733)))

(assert (=> d!1481148 (contains!15125 lt!1823714 (hash!3813 hashF!1389 key!4968))))

(declare-fun lt!1824129 () Unit!119356)

(declare-fun choose!32152 (ListLongMap!3803 K!13300 Hashable!6057) Unit!119356)

(assert (=> d!1481148 (= lt!1824129 (choose!32152 lt!1823714 key!4968 hashF!1389))))

(assert (=> d!1481148 (forall!11067 (toList!5250 lt!1823714) lambda!200739)))

(assert (=> d!1481148 (= (lemmaInGenMapThenLongMapContainsHash!594 lt!1823714 key!4968 hashF!1389) lt!1824129)))

(declare-fun bs!1068992 () Bool)

(assert (= bs!1068992 d!1481148))

(assert (=> bs!1068992 m!5546179))

(assert (=> bs!1068992 m!5546179))

(declare-fun m!5546705 () Bool)

(assert (=> bs!1068992 m!5546705))

(declare-fun m!5546707 () Bool)

(assert (=> bs!1068992 m!5546707))

(declare-fun m!5546709 () Bool)

(assert (=> bs!1068992 m!5546709))

(assert (=> b!4662283 d!1481148))

(declare-fun d!1481150 () Bool)

(declare-fun isEmpty!29033 (Option!11868) Bool)

(assert (=> d!1481150 (= (isDefined!9133 (getPair!388 lt!1823730 key!4968)) (not (isEmpty!29033 (getPair!388 lt!1823730 key!4968))))))

(declare-fun bs!1068993 () Bool)

(assert (= bs!1068993 d!1481150))

(assert (=> bs!1068993 m!5546135))

(declare-fun m!5546711 () Bool)

(assert (=> bs!1068993 m!5546711))

(assert (=> b!4662283 d!1481150))

(declare-fun d!1481152 () Bool)

(declare-fun dynLambda!21620 (Int tuple2!53088) Bool)

(assert (=> d!1481152 (dynLambda!21620 lambda!200624 lt!1823716)))

(declare-fun lt!1824132 () Unit!119356)

(declare-fun choose!32153 (List!52077 Int tuple2!53088) Unit!119356)

(assert (=> d!1481152 (= lt!1824132 (choose!32153 lt!1823724 lambda!200624 lt!1823716))))

(declare-fun e!2909480 () Bool)

(assert (=> d!1481152 e!2909480))

(declare-fun res!1961525 () Bool)

(assert (=> d!1481152 (=> (not res!1961525) (not e!2909480))))

(assert (=> d!1481152 (= res!1961525 (forall!11067 lt!1823724 lambda!200624))))

(assert (=> d!1481152 (= (forallContained!3266 lt!1823724 lambda!200624 lt!1823716) lt!1824132)))

(declare-fun b!4662589 () Bool)

(assert (=> b!4662589 (= e!2909480 (contains!15124 lt!1823724 lt!1823716))))

(assert (= (and d!1481152 res!1961525) b!4662589))

(declare-fun b_lambda!175251 () Bool)

(assert (=> (not b_lambda!175251) (not d!1481152)))

(declare-fun m!5546713 () Bool)

(assert (=> d!1481152 m!5546713))

(declare-fun m!5546715 () Bool)

(assert (=> d!1481152 m!5546715))

(declare-fun m!5546717 () Bool)

(assert (=> d!1481152 m!5546717))

(assert (=> b!4662589 m!5546149))

(assert (=> b!4662283 d!1481152))

(declare-fun b!4662606 () Bool)

(declare-fun e!2909491 () Option!11868)

(assert (=> b!4662606 (= e!2909491 (Some!11867 (h!58112 lt!1823730)))))

(declare-fun d!1481154 () Bool)

(declare-fun e!2909493 () Bool)

(assert (=> d!1481154 e!2909493))

(declare-fun res!1961537 () Bool)

(assert (=> d!1481154 (=> res!1961537 e!2909493)))

(declare-fun e!2909495 () Bool)

(assert (=> d!1481154 (= res!1961537 e!2909495)))

(declare-fun res!1961534 () Bool)

(assert (=> d!1481154 (=> (not res!1961534) (not e!2909495))))

(declare-fun lt!1824135 () Option!11868)

(assert (=> d!1481154 (= res!1961534 (isEmpty!29033 lt!1824135))))

(assert (=> d!1481154 (= lt!1824135 e!2909491)))

(declare-fun c!798142 () Bool)

(assert (=> d!1481154 (= c!798142 (and ((_ is Cons!51952) lt!1823730) (= (_1!29837 (h!58112 lt!1823730)) key!4968)))))

(assert (=> d!1481154 (noDuplicateKeys!1660 lt!1823730)))

(assert (=> d!1481154 (= (getPair!388 lt!1823730 key!4968) lt!1824135)))

(declare-fun b!4662607 () Bool)

(declare-fun e!2909492 () Option!11868)

(assert (=> b!4662607 (= e!2909491 e!2909492)))

(declare-fun c!798141 () Bool)

(assert (=> b!4662607 (= c!798141 ((_ is Cons!51952) lt!1823730))))

(declare-fun b!4662608 () Bool)

(declare-fun e!2909494 () Bool)

(declare-fun get!17309 (Option!11868) tuple2!53086)

(assert (=> b!4662608 (= e!2909494 (contains!15129 lt!1823730 (get!17309 lt!1824135)))))

(declare-fun b!4662609 () Bool)

(assert (=> b!4662609 (= e!2909492 (getPair!388 (t!359192 lt!1823730) key!4968))))

(declare-fun b!4662610 () Bool)

(assert (=> b!4662610 (= e!2909492 None!11867)))

(declare-fun b!4662611 () Bool)

(assert (=> b!4662611 (= e!2909493 e!2909494)))

(declare-fun res!1961536 () Bool)

(assert (=> b!4662611 (=> (not res!1961536) (not e!2909494))))

(assert (=> b!4662611 (= res!1961536 (isDefined!9133 lt!1824135))))

(declare-fun b!4662612 () Bool)

(declare-fun res!1961535 () Bool)

(assert (=> b!4662612 (=> (not res!1961535) (not e!2909494))))

(assert (=> b!4662612 (= res!1961535 (= (_1!29837 (get!17309 lt!1824135)) key!4968))))

(declare-fun b!4662613 () Bool)

(assert (=> b!4662613 (= e!2909495 (not (containsKey!2770 lt!1823730 key!4968)))))

(assert (= (and d!1481154 c!798142) b!4662606))

(assert (= (and d!1481154 (not c!798142)) b!4662607))

(assert (= (and b!4662607 c!798141) b!4662609))

(assert (= (and b!4662607 (not c!798141)) b!4662610))

(assert (= (and d!1481154 res!1961534) b!4662613))

(assert (= (and d!1481154 (not res!1961537)) b!4662611))

(assert (= (and b!4662611 res!1961536) b!4662612))

(assert (= (and b!4662612 res!1961535) b!4662608))

(declare-fun m!5546719 () Bool)

(assert (=> b!4662613 m!5546719))

(declare-fun m!5546721 () Bool)

(assert (=> b!4662608 m!5546721))

(assert (=> b!4662608 m!5546721))

(declare-fun m!5546723 () Bool)

(assert (=> b!4662608 m!5546723))

(assert (=> b!4662612 m!5546721))

(declare-fun m!5546725 () Bool)

(assert (=> b!4662611 m!5546725))

(declare-fun m!5546727 () Bool)

(assert (=> d!1481154 m!5546727))

(declare-fun m!5546729 () Bool)

(assert (=> d!1481154 m!5546729))

(declare-fun m!5546731 () Bool)

(assert (=> b!4662609 m!5546731))

(assert (=> b!4662283 d!1481154))

(declare-fun bs!1068994 () Bool)

(declare-fun d!1481156 () Bool)

(assert (= bs!1068994 (and d!1481156 d!1481040)))

(declare-fun lambda!200746 () Int)

(assert (=> bs!1068994 (= lambda!200746 lambda!200630)))

(declare-fun bs!1068995 () Bool)

(assert (= bs!1068995 (and d!1481156 b!4662283)))

(assert (=> bs!1068995 (= lambda!200746 lambda!200624)))

(declare-fun bs!1068996 () Bool)

(assert (= bs!1068996 (and d!1481156 d!1481148)))

(assert (=> bs!1068996 (= lambda!200746 lambda!200739)))

(declare-fun bs!1068997 () Bool)

(assert (= bs!1068997 (and d!1481156 d!1481128)))

(assert (=> bs!1068997 (= lambda!200746 lambda!200733)))

(declare-fun bs!1068998 () Bool)

(assert (= bs!1068998 (and d!1481156 d!1481048)))

(assert (=> bs!1068998 (= lambda!200746 lambda!200640)))

(declare-fun e!2909500 () Bool)

(declare-fun b!4662624 () Bool)

(assert (=> b!4662624 (= e!2909500 (isDefined!9133 (getPair!388 (apply!12263 lt!1823714 (hash!3813 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1824157 () Unit!119356)

(assert (=> b!4662624 (= lt!1824157 (forallContained!3266 (toList!5250 lt!1823714) lambda!200746 (tuple2!53089 (hash!3813 hashF!1389 key!4968) (apply!12263 lt!1823714 (hash!3813 hashF!1389 key!4968)))))))

(declare-fun lt!1824159 () Unit!119356)

(declare-fun lt!1824158 () Unit!119356)

(assert (=> b!4662624 (= lt!1824159 lt!1824158)))

(declare-fun lt!1824155 () (_ BitVec 64))

(declare-fun lt!1824153 () List!52076)

(assert (=> b!4662624 (contains!15124 (toList!5250 lt!1823714) (tuple2!53089 lt!1824155 lt!1824153))))

(assert (=> b!4662624 (= lt!1824158 (lemmaGetValueImpliesTupleContained!193 lt!1823714 lt!1824155 lt!1824153))))

(declare-fun e!2909501 () Bool)

(assert (=> b!4662624 e!2909501))

(declare-fun res!1961549 () Bool)

(assert (=> b!4662624 (=> (not res!1961549) (not e!2909501))))

(assert (=> b!4662624 (= res!1961549 (contains!15125 lt!1823714 lt!1824155))))

(assert (=> b!4662624 (= lt!1824153 (apply!12263 lt!1823714 (hash!3813 hashF!1389 key!4968)))))

(assert (=> b!4662624 (= lt!1824155 (hash!3813 hashF!1389 key!4968))))

(declare-fun lt!1824152 () Unit!119356)

(declare-fun lt!1824154 () Unit!119356)

(assert (=> b!4662624 (= lt!1824152 lt!1824154)))

(assert (=> b!4662624 (contains!15125 lt!1823714 (hash!3813 hashF!1389 key!4968))))

(assert (=> b!4662624 (= lt!1824154 (lemmaInGenMapThenLongMapContainsHash!594 lt!1823714 key!4968 hashF!1389))))

(declare-fun b!4662623 () Bool)

(declare-fun res!1961548 () Bool)

(assert (=> b!4662623 (=> (not res!1961548) (not e!2909500))))

(assert (=> b!4662623 (= res!1961548 (contains!15123 (extractMap!1716 (toList!5250 lt!1823714)) key!4968))))

(declare-fun b!4662625 () Bool)

(assert (=> b!4662625 (= e!2909501 (= (getValueByKey!1642 (toList!5250 lt!1823714) lt!1824155) (Some!11871 lt!1824153)))))

(declare-fun b!4662622 () Bool)

(declare-fun res!1961547 () Bool)

(assert (=> b!4662622 (=> (not res!1961547) (not e!2909500))))

(declare-fun allKeysSameHashInMap!1616 (ListLongMap!3803 Hashable!6057) Bool)

(assert (=> b!4662622 (= res!1961547 (allKeysSameHashInMap!1616 lt!1823714 hashF!1389))))

(assert (=> d!1481156 e!2909500))

(declare-fun res!1961546 () Bool)

(assert (=> d!1481156 (=> (not res!1961546) (not e!2909500))))

(assert (=> d!1481156 (= res!1961546 (forall!11067 (toList!5250 lt!1823714) lambda!200746))))

(declare-fun lt!1824156 () Unit!119356)

(declare-fun choose!32154 (ListLongMap!3803 K!13300 Hashable!6057) Unit!119356)

(assert (=> d!1481156 (= lt!1824156 (choose!32154 lt!1823714 key!4968 hashF!1389))))

(assert (=> d!1481156 (forall!11067 (toList!5250 lt!1823714) lambda!200746)))

(assert (=> d!1481156 (= (lemmaInGenMapThenGetPairDefined!184 lt!1823714 key!4968 hashF!1389) lt!1824156)))

(assert (= (and d!1481156 res!1961546) b!4662622))

(assert (= (and b!4662622 res!1961547) b!4662623))

(assert (= (and b!4662623 res!1961548) b!4662624))

(assert (= (and b!4662624 res!1961549) b!4662625))

(declare-fun m!5546733 () Bool)

(assert (=> d!1481156 m!5546733))

(declare-fun m!5546735 () Bool)

(assert (=> d!1481156 m!5546735))

(assert (=> d!1481156 m!5546733))

(assert (=> b!4662624 m!5546155))

(declare-fun m!5546737 () Bool)

(assert (=> b!4662624 m!5546737))

(declare-fun m!5546739 () Bool)

(assert (=> b!4662624 m!5546739))

(declare-fun m!5546741 () Bool)

(assert (=> b!4662624 m!5546741))

(assert (=> b!4662624 m!5546737))

(assert (=> b!4662624 m!5546179))

(assert (=> b!4662624 m!5546179))

(assert (=> b!4662624 m!5546741))

(declare-fun m!5546743 () Bool)

(assert (=> b!4662624 m!5546743))

(declare-fun m!5546745 () Bool)

(assert (=> b!4662624 m!5546745))

(declare-fun m!5546747 () Bool)

(assert (=> b!4662624 m!5546747))

(declare-fun m!5546749 () Bool)

(assert (=> b!4662624 m!5546749))

(assert (=> b!4662624 m!5546179))

(assert (=> b!4662624 m!5546705))

(declare-fun m!5546751 () Bool)

(assert (=> b!4662625 m!5546751))

(declare-fun m!5546753 () Bool)

(assert (=> b!4662622 m!5546753))

(declare-fun m!5546755 () Bool)

(assert (=> b!4662623 m!5546755))

(assert (=> b!4662623 m!5546755))

(declare-fun m!5546757 () Bool)

(assert (=> b!4662623 m!5546757))

(assert (=> b!4662283 d!1481156))

(declare-fun b!4662628 () Bool)

(declare-fun e!2909503 () List!52076)

(assert (=> b!4662628 (= e!2909503 (Cons!51952 (h!58112 oldBucket!40) (removePairForKey!1283 (t!359192 oldBucket!40) key!4968)))))

(declare-fun b!4662629 () Bool)

(assert (=> b!4662629 (= e!2909503 Nil!51952)))

(declare-fun b!4662627 () Bool)

(declare-fun e!2909502 () List!52076)

(assert (=> b!4662627 (= e!2909502 e!2909503)))

(declare-fun c!798143 () Bool)

(assert (=> b!4662627 (= c!798143 ((_ is Cons!51952) oldBucket!40))))

(declare-fun b!4662626 () Bool)

(assert (=> b!4662626 (= e!2909502 (t!359192 oldBucket!40))))

(declare-fun d!1481158 () Bool)

(declare-fun lt!1824160 () List!52076)

(assert (=> d!1481158 (not (containsKey!2770 lt!1824160 key!4968))))

(assert (=> d!1481158 (= lt!1824160 e!2909502)))

(declare-fun c!798144 () Bool)

(assert (=> d!1481158 (= c!798144 (and ((_ is Cons!51952) oldBucket!40) (= (_1!29837 (h!58112 oldBucket!40)) key!4968)))))

(assert (=> d!1481158 (noDuplicateKeys!1660 oldBucket!40)))

(assert (=> d!1481158 (= (removePairForKey!1283 oldBucket!40 key!4968) lt!1824160)))

(assert (= (and d!1481158 c!798144) b!4662626))

(assert (= (and d!1481158 (not c!798144)) b!4662627))

(assert (= (and b!4662627 c!798143) b!4662628))

(assert (= (and b!4662627 (not c!798143)) b!4662629))

(assert (=> b!4662628 m!5546125))

(declare-fun m!5546759 () Bool)

(assert (=> d!1481158 m!5546759))

(assert (=> d!1481158 m!5546127))

(assert (=> b!4662274 d!1481158))

(declare-fun b!4662630 () Bool)

(declare-fun e!2909506 () Bool)

(assert (=> b!4662630 (= e!2909506 (not (contains!15128 (keys!18424 lt!1823721) key!4968)))))

(declare-fun b!4662631 () Bool)

(declare-fun e!2909509 () Unit!119356)

(declare-fun e!2909505 () Unit!119356)

(assert (=> b!4662631 (= e!2909509 e!2909505)))

(declare-fun c!798147 () Bool)

(declare-fun call!325751 () Bool)

(assert (=> b!4662631 (= c!798147 call!325751)))

(declare-fun b!4662632 () Bool)

(declare-fun e!2909508 () Bool)

(assert (=> b!4662632 (= e!2909508 (contains!15128 (keys!18424 lt!1823721) key!4968))))

(declare-fun bm!325746 () Bool)

(declare-fun e!2909504 () List!52079)

(assert (=> bm!325746 (= call!325751 (contains!15128 e!2909504 key!4968))))

(declare-fun c!798146 () Bool)

(declare-fun c!798145 () Bool)

(assert (=> bm!325746 (= c!798146 c!798145)))

(declare-fun b!4662633 () Bool)

(assert (=> b!4662633 false))

(declare-fun lt!1824162 () Unit!119356)

(declare-fun lt!1824161 () Unit!119356)

(assert (=> b!4662633 (= lt!1824162 lt!1824161)))

(assert (=> b!4662633 (containsKey!2773 (toList!5249 lt!1823721) key!4968)))

(assert (=> b!4662633 (= lt!1824161 (lemmaInGetKeysListThenContainsKey!764 (toList!5249 lt!1823721) key!4968))))

(declare-fun Unit!119432 () Unit!119356)

(assert (=> b!4662633 (= e!2909505 Unit!119432)))

(declare-fun d!1481160 () Bool)

(declare-fun e!2909507 () Bool)

(assert (=> d!1481160 e!2909507))

(declare-fun res!1961551 () Bool)

(assert (=> d!1481160 (=> res!1961551 e!2909507)))

(assert (=> d!1481160 (= res!1961551 e!2909506)))

(declare-fun res!1961550 () Bool)

(assert (=> d!1481160 (=> (not res!1961550) (not e!2909506))))

(declare-fun lt!1824163 () Bool)

(assert (=> d!1481160 (= res!1961550 (not lt!1824163))))

(declare-fun lt!1824166 () Bool)

(assert (=> d!1481160 (= lt!1824163 lt!1824166)))

(declare-fun lt!1824167 () Unit!119356)

(assert (=> d!1481160 (= lt!1824167 e!2909509)))

(assert (=> d!1481160 (= c!798145 lt!1824166)))

(assert (=> d!1481160 (= lt!1824166 (containsKey!2773 (toList!5249 lt!1823721) key!4968))))

(assert (=> d!1481160 (= (contains!15123 lt!1823721 key!4968) lt!1824163)))

(declare-fun b!4662634 () Bool)

(assert (=> b!4662634 (= e!2909504 (keys!18424 lt!1823721))))

(declare-fun b!4662635 () Bool)

(assert (=> b!4662635 (= e!2909507 e!2909508)))

(declare-fun res!1961552 () Bool)

(assert (=> b!4662635 (=> (not res!1961552) (not e!2909508))))

(assert (=> b!4662635 (= res!1961552 (isDefined!9136 (getValueByKey!1641 (toList!5249 lt!1823721) key!4968)))))

(declare-fun b!4662636 () Bool)

(assert (=> b!4662636 (= e!2909504 (getKeysList!765 (toList!5249 lt!1823721)))))

(declare-fun b!4662637 () Bool)

(declare-fun lt!1824168 () Unit!119356)

(assert (=> b!4662637 (= e!2909509 lt!1824168)))

(declare-fun lt!1824165 () Unit!119356)

(assert (=> b!4662637 (= lt!1824165 (lemmaContainsKeyImpliesGetValueByKeyDefined!1543 (toList!5249 lt!1823721) key!4968))))

(assert (=> b!4662637 (isDefined!9136 (getValueByKey!1641 (toList!5249 lt!1823721) key!4968))))

(declare-fun lt!1824164 () Unit!119356)

(assert (=> b!4662637 (= lt!1824164 lt!1824165)))

(assert (=> b!4662637 (= lt!1824168 (lemmaInListThenGetKeysListContains!760 (toList!5249 lt!1823721) key!4968))))

(assert (=> b!4662637 call!325751))

(declare-fun b!4662638 () Bool)

(declare-fun Unit!119433 () Unit!119356)

(assert (=> b!4662638 (= e!2909505 Unit!119433)))

(assert (= (and d!1481160 c!798145) b!4662637))

(assert (= (and d!1481160 (not c!798145)) b!4662631))

(assert (= (and b!4662631 c!798147) b!4662633))

(assert (= (and b!4662631 (not c!798147)) b!4662638))

(assert (= (or b!4662637 b!4662631) bm!325746))

(assert (= (and bm!325746 c!798146) b!4662636))

(assert (= (and bm!325746 (not c!798146)) b!4662634))

(assert (= (and d!1481160 res!1961550) b!4662630))

(assert (= (and d!1481160 (not res!1961551)) b!4662635))

(assert (= (and b!4662635 res!1961552) b!4662632))

(declare-fun m!5546761 () Bool)

(assert (=> b!4662632 m!5546761))

(assert (=> b!4662632 m!5546761))

(declare-fun m!5546763 () Bool)

(assert (=> b!4662632 m!5546763))

(declare-fun m!5546765 () Bool)

(assert (=> d!1481160 m!5546765))

(declare-fun m!5546767 () Bool)

(assert (=> bm!325746 m!5546767))

(assert (=> b!4662634 m!5546761))

(assert (=> b!4662630 m!5546761))

(assert (=> b!4662630 m!5546761))

(assert (=> b!4662630 m!5546763))

(declare-fun m!5546769 () Bool)

(assert (=> b!4662637 m!5546769))

(declare-fun m!5546771 () Bool)

(assert (=> b!4662637 m!5546771))

(assert (=> b!4662637 m!5546771))

(declare-fun m!5546773 () Bool)

(assert (=> b!4662637 m!5546773))

(declare-fun m!5546775 () Bool)

(assert (=> b!4662637 m!5546775))

(declare-fun m!5546777 () Bool)

(assert (=> b!4662636 m!5546777))

(assert (=> b!4662635 m!5546771))

(assert (=> b!4662635 m!5546771))

(assert (=> b!4662635 m!5546773))

(assert (=> b!4662633 m!5546765))

(declare-fun m!5546779 () Bool)

(assert (=> b!4662633 m!5546779))

(assert (=> b!4662284 d!1481160))

(declare-fun bs!1068999 () Bool)

(declare-fun d!1481162 () Bool)

(assert (= bs!1068999 (and d!1481162 d!1481040)))

(declare-fun lambda!200747 () Int)

(assert (=> bs!1068999 (= lambda!200747 lambda!200630)))

(declare-fun bs!1069000 () Bool)

(assert (= bs!1069000 (and d!1481162 b!4662283)))

(assert (=> bs!1069000 (= lambda!200747 lambda!200624)))

(declare-fun bs!1069001 () Bool)

(assert (= bs!1069001 (and d!1481162 d!1481148)))

(assert (=> bs!1069001 (= lambda!200747 lambda!200739)))

(declare-fun bs!1069002 () Bool)

(assert (= bs!1069002 (and d!1481162 d!1481128)))

(assert (=> bs!1069002 (= lambda!200747 lambda!200733)))

(declare-fun bs!1069003 () Bool)

(assert (= bs!1069003 (and d!1481162 d!1481156)))

(assert (=> bs!1069003 (= lambda!200747 lambda!200746)))

(declare-fun bs!1069004 () Bool)

(assert (= bs!1069004 (and d!1481162 d!1481048)))

(assert (=> bs!1069004 (= lambda!200747 lambda!200640)))

(declare-fun lt!1824169 () ListMap!4589)

(assert (=> d!1481162 (invariantList!1314 (toList!5249 lt!1824169))))

(declare-fun e!2909510 () ListMap!4589)

(assert (=> d!1481162 (= lt!1824169 e!2909510)))

(declare-fun c!798148 () Bool)

(assert (=> d!1481162 (= c!798148 ((_ is Cons!51953) lt!1823724))))

(assert (=> d!1481162 (forall!11067 lt!1823724 lambda!200747)))

(assert (=> d!1481162 (= (extractMap!1716 lt!1823724) lt!1824169)))

(declare-fun b!4662639 () Bool)

(assert (=> b!4662639 (= e!2909510 (addToMapMapFromBucket!1117 (_2!29838 (h!58113 lt!1823724)) (extractMap!1716 (t!359193 lt!1823724))))))

(declare-fun b!4662640 () Bool)

(assert (=> b!4662640 (= e!2909510 (ListMap!4590 Nil!51952))))

(assert (= (and d!1481162 c!798148) b!4662639))

(assert (= (and d!1481162 (not c!798148)) b!4662640))

(declare-fun m!5546781 () Bool)

(assert (=> d!1481162 m!5546781))

(declare-fun m!5546783 () Bool)

(assert (=> d!1481162 m!5546783))

(declare-fun m!5546785 () Bool)

(assert (=> b!4662639 m!5546785))

(assert (=> b!4662639 m!5546785))

(declare-fun m!5546787 () Bool)

(assert (=> b!4662639 m!5546787))

(assert (=> b!4662284 d!1481162))

(declare-fun d!1481164 () Bool)

(declare-fun res!1961553 () Bool)

(declare-fun e!2909511 () Bool)

(assert (=> d!1481164 (=> res!1961553 e!2909511)))

(assert (=> d!1481164 (= res!1961553 (not ((_ is Cons!51952) oldBucket!40)))))

(assert (=> d!1481164 (= (noDuplicateKeys!1660 oldBucket!40) e!2909511)))

(declare-fun b!4662641 () Bool)

(declare-fun e!2909512 () Bool)

(assert (=> b!4662641 (= e!2909511 e!2909512)))

(declare-fun res!1961554 () Bool)

(assert (=> b!4662641 (=> (not res!1961554) (not e!2909512))))

(assert (=> b!4662641 (= res!1961554 (not (containsKey!2770 (t!359192 oldBucket!40) (_1!29837 (h!58112 oldBucket!40)))))))

(declare-fun b!4662642 () Bool)

(assert (=> b!4662642 (= e!2909512 (noDuplicateKeys!1660 (t!359192 oldBucket!40)))))

(assert (= (and d!1481164 (not res!1961553)) b!4662641))

(assert (= (and b!4662641 res!1961554) b!4662642))

(declare-fun m!5546789 () Bool)

(assert (=> b!4662641 m!5546789))

(assert (=> b!4662642 m!5546677))

(assert (=> start!469744 d!1481164))

(declare-fun bs!1069005 () Bool)

(declare-fun d!1481166 () Bool)

(assert (= bs!1069005 (and d!1481166 d!1481126)))

(declare-fun lambda!200748 () Int)

(assert (=> bs!1069005 (not (= lambda!200748 lambda!200732))))

(declare-fun bs!1069006 () Bool)

(assert (= bs!1069006 (and d!1481166 b!4662548)))

(assert (=> bs!1069006 (not (= lambda!200748 lambda!200731))))

(declare-fun bs!1069007 () Bool)

(assert (= bs!1069007 (and d!1481166 b!4662532)))

(assert (=> bs!1069007 (not (= lambda!200748 lambda!200725))))

(declare-fun bs!1069008 () Bool)

(assert (= bs!1069008 (and d!1481166 b!4662448)))

(assert (=> bs!1069008 (not (= lambda!200748 lambda!200714))))

(assert (=> bs!1069006 (not (= lambda!200748 lambda!200730))))

(declare-fun bs!1069009 () Bool)

(assert (= bs!1069009 (and d!1481166 b!4662529)))

(assert (=> bs!1069009 (not (= lambda!200748 lambda!200727))))

(declare-fun bs!1069010 () Bool)

(assert (= bs!1069010 (and d!1481166 d!1481132)))

(assert (=> bs!1069010 (= lambda!200748 lambda!200736)))

(assert (=> bs!1069008 (not (= lambda!200748 lambda!200713))))

(declare-fun bs!1069011 () Bool)

(assert (= bs!1069011 (and d!1481166 b!4662451)))

(assert (=> bs!1069011 (not (= lambda!200748 lambda!200712))))

(assert (=> bs!1069009 (not (= lambda!200748 lambda!200726))))

(declare-fun bs!1069012 () Bool)

(assert (= bs!1069012 (and d!1481166 d!1481114)))

(assert (=> bs!1069012 (not (= lambda!200748 lambda!200728))))

(declare-fun bs!1069013 () Bool)

(assert (= bs!1069013 (and d!1481166 d!1481062)))

(assert (=> bs!1069013 (not (= lambda!200748 lambda!200715))))

(declare-fun bs!1069014 () Bool)

(assert (= bs!1069014 (and d!1481166 b!4662551)))

(assert (=> bs!1069014 (not (= lambda!200748 lambda!200729))))

(assert (=> d!1481166 true))

(assert (=> d!1481166 true))

(assert (=> d!1481166 (= (allKeysSameHash!1514 newBucket!224 hash!414 hashF!1389) (forall!11068 newBucket!224 lambda!200748))))

(declare-fun bs!1069015 () Bool)

(assert (= bs!1069015 d!1481166))

(declare-fun m!5546791 () Bool)

(assert (=> bs!1069015 m!5546791))

(assert (=> b!4662275 d!1481166))

(declare-fun e!2909515 () Bool)

(declare-fun b!4662647 () Bool)

(declare-fun tp!1343526 () Bool)

(assert (=> b!4662647 (= e!2909515 (and tp_is_empty!29933 tp_is_empty!29935 tp!1343526))))

(assert (=> b!4662272 (= tp!1343519 e!2909515)))

(assert (= (and b!4662272 ((_ is Cons!51952) (t!359192 oldBucket!40))) b!4662647))

(declare-fun tp!1343527 () Bool)

(declare-fun b!4662648 () Bool)

(declare-fun e!2909516 () Bool)

(assert (=> b!4662648 (= e!2909516 (and tp_is_empty!29933 tp_is_empty!29935 tp!1343527))))

(assert (=> b!4662281 (= tp!1343518 e!2909516)))

(assert (= (and b!4662281 ((_ is Cons!51952) (t!359192 newBucket!224))) b!4662648))

(declare-fun b_lambda!175253 () Bool)

(assert (= b_lambda!175251 (or b!4662283 b_lambda!175253)))

(declare-fun bs!1069016 () Bool)

(declare-fun d!1481168 () Bool)

(assert (= bs!1069016 (and d!1481168 b!4662283)))

(assert (=> bs!1069016 (= (dynLambda!21620 lambda!200624 lt!1823716) (noDuplicateKeys!1660 (_2!29838 lt!1823716)))))

(declare-fun m!5546793 () Bool)

(assert (=> bs!1069016 m!5546793))

(assert (=> d!1481152 d!1481168))

(check-sat (not b!4662557) (not b!4662533) (not b!4662507) (not b!4662622) (not d!1481126) (not b!4662611) (not d!1481120) (not b!4662642) (not b!4662641) (not d!1481152) (not b!4662509) (not b!4662633) (not bm!325728) (not b!4662531) (not b!4662647) (not b!4662609) (not b!4662635) (not d!1481132) (not b!4662632) (not b!4662553) (not d!1481106) (not b!4662548) (not b!4662448) (not bm!325741) (not b!4662634) (not b!4662535) (not b_lambda!175253) (not b!4662623) (not b!4662624) (not b!4662452) (not b!4662583) (not b!4662552) (not d!1481118) (not b!4662374) tp_is_empty!29933 (not d!1481142) (not b!4662589) (not d!1481128) (not bm!325744) (not b!4662511) (not b!4662637) (not d!1481048) (not b!4662550) (not bm!325746) (not b!4662340) (not d!1481040) (not b!4662636) (not b!4662450) (not b!4662546) (not b!4662341) (not d!1481154) tp_is_empty!29935 (not b!4662630) (not d!1481088) (not d!1481144) (not b!4662639) (not bm!325727) (not b!4662530) (not d!1481150) (not d!1481134) (not d!1481162) (not d!1481084) (not bm!325740) (not b!4662534) (not b!4662510) (not b!4662612) (not b!4662648) (not bm!325743) (not bs!1069016) (not b!4662608) (not b!4662504) (not d!1481156) (not d!1481148) (not b!4662529) (not d!1481114) (not d!1481166) (not b!4662581) (not bm!325729) (not b!4662628) (not b!4662528) (not b!4662613) (not d!1481130) (not d!1481158) (not b!4662527) (not b!4662625) (not b!4662574) (not b!4662506) (not b!4662508) (not b!4662586) (not b!4662449) (not d!1481140) (not d!1481112) (not bm!325745) (not d!1481138) (not b!4662549) (not bm!325739) (not d!1481062) (not b!4662568) (not bm!325742) (not d!1481160))
(check-sat)
