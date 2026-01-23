; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!469844 () Bool)

(assert start!469844)

(declare-fun b!4662724 () Bool)

(declare-fun e!2909570 () Bool)

(declare-fun e!2909569 () Bool)

(assert (=> b!4662724 (= e!2909570 e!2909569)))

(declare-fun res!1961627 () Bool)

(assert (=> b!4662724 (=> (not res!1961627) (not e!2909569))))

(declare-datatypes ((K!13305 0))(
  ( (K!13306 (val!18915 Int)) )
))
(declare-datatypes ((V!13551 0))(
  ( (V!13552 (val!18916 Int)) )
))
(declare-datatypes ((tuple2!53094 0))(
  ( (tuple2!53095 (_1!29841 K!13305) (_2!29841 V!13551)) )
))
(declare-datatypes ((List!52082 0))(
  ( (Nil!51958) (Cons!51958 (h!58120 tuple2!53094) (t!359200 List!52082)) )
))
(declare-datatypes ((ListMap!4593 0))(
  ( (ListMap!4594 (toList!5253 List!52082)) )
))
(declare-fun lt!1824270 () ListMap!4593)

(declare-fun key!4968 () K!13305)

(declare-fun contains!15133 (ListMap!4593 K!13305) Bool)

(assert (=> b!4662724 (= res!1961627 (contains!15133 lt!1824270 key!4968))))

(declare-datatypes ((tuple2!53096 0))(
  ( (tuple2!53097 (_1!29842 (_ BitVec 64)) (_2!29842 List!52082)) )
))
(declare-datatypes ((List!52083 0))(
  ( (Nil!51959) (Cons!51959 (h!58121 tuple2!53096) (t!359201 List!52083)) )
))
(declare-fun lt!1824263 () List!52083)

(declare-fun extractMap!1718 (List!52083) ListMap!4593)

(assert (=> b!4662724 (= lt!1824270 (extractMap!1718 lt!1824263))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!52082)

(assert (=> b!4662724 (= lt!1824263 (Cons!51959 (tuple2!53097 hash!414 oldBucket!40) Nil!51959))))

(declare-fun b!4662725 () Bool)

(declare-fun e!2909573 () Bool)

(declare-fun e!2909568 () Bool)

(assert (=> b!4662725 (= e!2909573 e!2909568)))

(declare-fun res!1961623 () Bool)

(assert (=> b!4662725 (=> res!1961623 e!2909568)))

(declare-fun lt!1824261 () List!52082)

(declare-fun lt!1824277 () List!52082)

(declare-fun removePairForKey!1285 (List!52082 K!13305) List!52082)

(assert (=> b!4662725 (= res!1961623 (not (= (removePairForKey!1285 lt!1824261 key!4968) lt!1824277)))))

(declare-fun newBucket!224 () List!52082)

(declare-fun tail!8265 (List!52082) List!52082)

(assert (=> b!4662725 (= lt!1824277 (tail!8265 newBucket!224))))

(assert (=> b!4662725 (= lt!1824261 (tail!8265 oldBucket!40))))

(declare-fun b!4662726 () Bool)

(declare-fun e!2909567 () Bool)

(declare-fun lt!1824267 () ListMap!4593)

(assert (=> b!4662726 (= e!2909567 (= lt!1824267 (ListMap!4594 Nil!51958)))))

(declare-fun b!4662727 () Bool)

(declare-fun e!2909571 () Bool)

(assert (=> b!4662727 (= e!2909569 e!2909571)))

(declare-fun res!1961620 () Bool)

(assert (=> b!4662727 (=> (not res!1961620) (not e!2909571))))

(declare-fun lt!1824262 () (_ BitVec 64))

(assert (=> b!4662727 (= res!1961620 (= lt!1824262 hash!414))))

(declare-datatypes ((Hashable!6059 0))(
  ( (HashableExt!6058 (__x!31762 Int)) )
))
(declare-fun hashF!1389 () Hashable!6059)

(declare-fun hash!3817 (Hashable!6059 K!13305) (_ BitVec 64))

(assert (=> b!4662727 (= lt!1824262 (hash!3817 hashF!1389 key!4968))))

(declare-fun b!4662728 () Bool)

(declare-fun res!1961622 () Bool)

(assert (=> b!4662728 (=> (not res!1961622) (not e!2909570))))

(declare-fun noDuplicateKeys!1662 (List!52082) Bool)

(assert (=> b!4662728 (= res!1961622 (noDuplicateKeys!1662 newBucket!224))))

(declare-fun b!4662729 () Bool)

(declare-fun e!2909576 () Bool)

(assert (=> b!4662729 (= e!2909571 (not e!2909576))))

(declare-fun res!1961631 () Bool)

(assert (=> b!4662729 (=> res!1961631 e!2909576)))

(get-info :version)

(assert (=> b!4662729 (= res!1961631 (or (and ((_ is Cons!51958) oldBucket!40) (= (_1!29841 (h!58120 oldBucket!40)) key!4968)) (not ((_ is Cons!51958) oldBucket!40)) (= (_1!29841 (h!58120 oldBucket!40)) key!4968)))))

(assert (=> b!4662729 e!2909567))

(declare-fun res!1961632 () Bool)

(assert (=> b!4662729 (=> (not res!1961632) (not e!2909567))))

(declare-fun addToMapMapFromBucket!1119 (List!52082 ListMap!4593) ListMap!4593)

(assert (=> b!4662729 (= res!1961632 (= lt!1824270 (addToMapMapFromBucket!1119 oldBucket!40 lt!1824267)))))

(assert (=> b!4662729 (= lt!1824267 (extractMap!1718 Nil!51959))))

(assert (=> b!4662729 true))

(declare-fun b!4662730 () Bool)

(declare-fun e!2909574 () Bool)

(assert (=> b!4662730 (= e!2909568 e!2909574)))

(declare-fun res!1961628 () Bool)

(assert (=> b!4662730 (=> res!1961628 e!2909574)))

(assert (=> b!4662730 (= res!1961628 (not (noDuplicateKeys!1662 lt!1824277)))))

(declare-fun lt!1824274 () tuple2!53094)

(declare-fun eq!917 (ListMap!4593 ListMap!4593) Bool)

(declare-fun +!2002 (ListMap!4593 tuple2!53094) ListMap!4593)

(assert (=> b!4662730 (eq!917 (addToMapMapFromBucket!1119 (Cons!51958 lt!1824274 lt!1824261) (ListMap!4594 Nil!51958)) (+!2002 (addToMapMapFromBucket!1119 lt!1824261 (ListMap!4594 Nil!51958)) lt!1824274))))

(declare-datatypes ((Unit!119436 0))(
  ( (Unit!119437) )
))
(declare-fun lt!1824273 () Unit!119436)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!168 (tuple2!53094 List!52082 ListMap!4593) Unit!119436)

(assert (=> b!4662730 (= lt!1824273 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!168 lt!1824274 lt!1824261 (ListMap!4594 Nil!51958)))))

(declare-fun head!9740 (List!52082) tuple2!53094)

(assert (=> b!4662730 (= lt!1824274 (head!9740 oldBucket!40))))

(declare-fun lt!1824275 () List!52083)

(assert (=> b!4662730 (contains!15133 (extractMap!1718 lt!1824275) key!4968)))

(declare-fun lt!1824272 () Unit!119436)

(declare-datatypes ((ListLongMap!3807 0))(
  ( (ListLongMap!3808 (toList!5254 List!52083)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!396 (ListLongMap!3807 K!13305 Hashable!6059) Unit!119436)

(assert (=> b!4662730 (= lt!1824272 (lemmaListContainsThenExtractedMapContains!396 (ListLongMap!3808 lt!1824275) key!4968 hashF!1389))))

(assert (=> b!4662730 (= lt!1824275 (Cons!51959 (tuple2!53097 hash!414 (t!359200 oldBucket!40)) Nil!51959))))

(declare-fun res!1961626 () Bool)

(assert (=> start!469844 (=> (not res!1961626) (not e!2909570))))

(assert (=> start!469844 (= res!1961626 (noDuplicateKeys!1662 oldBucket!40))))

(assert (=> start!469844 e!2909570))

(assert (=> start!469844 true))

(declare-fun e!2909575 () Bool)

(assert (=> start!469844 e!2909575))

(declare-fun tp_is_empty!29941 () Bool)

(assert (=> start!469844 tp_is_empty!29941))

(declare-fun e!2909572 () Bool)

(assert (=> start!469844 e!2909572))

(declare-fun b!4662731 () Bool)

(declare-fun res!1961625 () Bool)

(assert (=> b!4662731 (=> (not res!1961625) (not e!2909571))))

(declare-fun allKeysSameHash!1516 (List!52082 (_ BitVec 64) Hashable!6059) Bool)

(assert (=> b!4662731 (= res!1961625 (allKeysSameHash!1516 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp_is_empty!29943 () Bool)

(declare-fun tp!1343538 () Bool)

(declare-fun b!4662732 () Bool)

(assert (=> b!4662732 (= e!2909572 (and tp_is_empty!29941 tp_is_empty!29943 tp!1343538))))

(declare-fun b!4662733 () Bool)

(assert (=> b!4662733 (= e!2909574 (noDuplicateKeys!1662 (Cons!51958 (head!9740 newBucket!224) lt!1824277)))))

(declare-fun b!4662734 () Bool)

(declare-fun res!1961621 () Bool)

(assert (=> b!4662734 (=> (not res!1961621) (not e!2909570))))

(assert (=> b!4662734 (= res!1961621 (allKeysSameHash!1516 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1343539 () Bool)

(declare-fun b!4662735 () Bool)

(assert (=> b!4662735 (= e!2909575 (and tp_is_empty!29941 tp_is_empty!29943 tp!1343539))))

(declare-fun b!4662736 () Bool)

(declare-fun res!1961624 () Bool)

(assert (=> b!4662736 (=> (not res!1961624) (not e!2909570))))

(assert (=> b!4662736 (= res!1961624 (= (removePairForKey!1285 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4662737 () Bool)

(assert (=> b!4662737 (= e!2909576 e!2909573)))

(declare-fun res!1961629 () Bool)

(assert (=> b!4662737 (=> res!1961629 e!2909573)))

(declare-fun containsKey!2776 (List!52082 K!13305) Bool)

(assert (=> b!4662737 (= res!1961629 (not (containsKey!2776 (t!359200 oldBucket!40) key!4968)))))

(assert (=> b!4662737 (containsKey!2776 oldBucket!40 key!4968)))

(declare-fun lt!1824268 () Unit!119436)

(declare-fun lemmaGetPairDefinedThenContainsKey!140 (List!52082 K!13305 Hashable!6059) Unit!119436)

(assert (=> b!4662737 (= lt!1824268 (lemmaGetPairDefinedThenContainsKey!140 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1824265 () List!52082)

(declare-datatypes ((Option!11874 0))(
  ( (None!11873) (Some!11873 (v!46191 tuple2!53094)) )
))
(declare-fun isDefined!9139 (Option!11874) Bool)

(declare-fun getPair!390 (List!52082 K!13305) Option!11874)

(assert (=> b!4662737 (isDefined!9139 (getPair!390 lt!1824265 key!4968))))

(declare-fun lt!1824269 () tuple2!53096)

(declare-fun lambda!200754 () Int)

(declare-fun lt!1824264 () Unit!119436)

(declare-fun forallContained!3270 (List!52083 Int tuple2!53096) Unit!119436)

(assert (=> b!4662737 (= lt!1824264 (forallContained!3270 lt!1824263 lambda!200754 lt!1824269))))

(declare-fun contains!15134 (List!52083 tuple2!53096) Bool)

(assert (=> b!4662737 (contains!15134 lt!1824263 lt!1824269)))

(assert (=> b!4662737 (= lt!1824269 (tuple2!53097 lt!1824262 lt!1824265))))

(declare-fun lt!1824276 () ListLongMap!3807)

(declare-fun lt!1824260 () Unit!119436)

(declare-fun lemmaGetValueImpliesTupleContained!195 (ListLongMap!3807 (_ BitVec 64) List!52082) Unit!119436)

(assert (=> b!4662737 (= lt!1824260 (lemmaGetValueImpliesTupleContained!195 lt!1824276 lt!1824262 lt!1824265))))

(declare-fun apply!12265 (ListLongMap!3807 (_ BitVec 64)) List!52082)

(assert (=> b!4662737 (= lt!1824265 (apply!12265 lt!1824276 lt!1824262))))

(declare-fun contains!15135 (ListLongMap!3807 (_ BitVec 64)) Bool)

(assert (=> b!4662737 (contains!15135 lt!1824276 lt!1824262)))

(declare-fun lt!1824271 () Unit!119436)

(declare-fun lemmaInGenMapThenLongMapContainsHash!596 (ListLongMap!3807 K!13305 Hashable!6059) Unit!119436)

(assert (=> b!4662737 (= lt!1824271 (lemmaInGenMapThenLongMapContainsHash!596 lt!1824276 key!4968 hashF!1389))))

(declare-fun lt!1824266 () Unit!119436)

(declare-fun lemmaInGenMapThenGetPairDefined!186 (ListLongMap!3807 K!13305 Hashable!6059) Unit!119436)

(assert (=> b!4662737 (= lt!1824266 (lemmaInGenMapThenGetPairDefined!186 lt!1824276 key!4968 hashF!1389))))

(assert (=> b!4662737 (= lt!1824276 (ListLongMap!3808 lt!1824263))))

(declare-fun b!4662738 () Bool)

(declare-fun res!1961630 () Bool)

(assert (=> b!4662738 (=> res!1961630 e!2909568)))

(assert (=> b!4662738 (= res!1961630 (not (= (removePairForKey!1285 (t!359200 oldBucket!40) key!4968) lt!1824277)))))

(assert (= (and start!469844 res!1961626) b!4662728))

(assert (= (and b!4662728 res!1961622) b!4662736))

(assert (= (and b!4662736 res!1961624) b!4662734))

(assert (= (and b!4662734 res!1961621) b!4662724))

(assert (= (and b!4662724 res!1961627) b!4662727))

(assert (= (and b!4662727 res!1961620) b!4662731))

(assert (= (and b!4662731 res!1961625) b!4662729))

(assert (= (and b!4662729 res!1961632) b!4662726))

(assert (= (and b!4662729 (not res!1961631)) b!4662737))

(assert (= (and b!4662737 (not res!1961629)) b!4662725))

(assert (= (and b!4662725 (not res!1961623)) b!4662738))

(assert (= (and b!4662738 (not res!1961630)) b!4662730))

(assert (= (and b!4662730 (not res!1961628)) b!4662733))

(assert (= (and start!469844 ((_ is Cons!51958) oldBucket!40)) b!4662735))

(assert (= (and start!469844 ((_ is Cons!51958) newBucket!224)) b!4662732))

(declare-fun m!5546871 () Bool)

(assert (=> b!4662734 m!5546871))

(declare-fun m!5546873 () Bool)

(assert (=> b!4662724 m!5546873))

(declare-fun m!5546875 () Bool)

(assert (=> b!4662724 m!5546875))

(declare-fun m!5546877 () Bool)

(assert (=> b!4662736 m!5546877))

(declare-fun m!5546879 () Bool)

(assert (=> b!4662737 m!5546879))

(declare-fun m!5546881 () Bool)

(assert (=> b!4662737 m!5546881))

(declare-fun m!5546883 () Bool)

(assert (=> b!4662737 m!5546883))

(declare-fun m!5546885 () Bool)

(assert (=> b!4662737 m!5546885))

(declare-fun m!5546887 () Bool)

(assert (=> b!4662737 m!5546887))

(declare-fun m!5546889 () Bool)

(assert (=> b!4662737 m!5546889))

(declare-fun m!5546891 () Bool)

(assert (=> b!4662737 m!5546891))

(declare-fun m!5546893 () Bool)

(assert (=> b!4662737 m!5546893))

(assert (=> b!4662737 m!5546891))

(declare-fun m!5546895 () Bool)

(assert (=> b!4662737 m!5546895))

(declare-fun m!5546897 () Bool)

(assert (=> b!4662737 m!5546897))

(declare-fun m!5546899 () Bool)

(assert (=> b!4662737 m!5546899))

(declare-fun m!5546901 () Bool)

(assert (=> b!4662737 m!5546901))

(declare-fun m!5546903 () Bool)

(assert (=> b!4662725 m!5546903))

(declare-fun m!5546905 () Bool)

(assert (=> b!4662725 m!5546905))

(declare-fun m!5546907 () Bool)

(assert (=> b!4662725 m!5546907))

(declare-fun m!5546909 () Bool)

(assert (=> b!4662731 m!5546909))

(declare-fun m!5546911 () Bool)

(assert (=> b!4662733 m!5546911))

(declare-fun m!5546913 () Bool)

(assert (=> b!4662733 m!5546913))

(declare-fun m!5546915 () Bool)

(assert (=> b!4662728 m!5546915))

(declare-fun m!5546917 () Bool)

(assert (=> start!469844 m!5546917))

(declare-fun m!5546919 () Bool)

(assert (=> b!4662727 m!5546919))

(declare-fun m!5546921 () Bool)

(assert (=> b!4662729 m!5546921))

(declare-fun m!5546923 () Bool)

(assert (=> b!4662729 m!5546923))

(declare-fun m!5546925 () Bool)

(assert (=> b!4662730 m!5546925))

(declare-fun m!5546927 () Bool)

(assert (=> b!4662730 m!5546927))

(declare-fun m!5546929 () Bool)

(assert (=> b!4662730 m!5546929))

(declare-fun m!5546931 () Bool)

(assert (=> b!4662730 m!5546931))

(declare-fun m!5546933 () Bool)

(assert (=> b!4662730 m!5546933))

(declare-fun m!5546935 () Bool)

(assert (=> b!4662730 m!5546935))

(declare-fun m!5546937 () Bool)

(assert (=> b!4662730 m!5546937))

(assert (=> b!4662730 m!5546925))

(assert (=> b!4662730 m!5546931))

(declare-fun m!5546939 () Bool)

(assert (=> b!4662730 m!5546939))

(assert (=> b!4662730 m!5546933))

(declare-fun m!5546941 () Bool)

(assert (=> b!4662730 m!5546941))

(assert (=> b!4662730 m!5546929))

(declare-fun m!5546943 () Bool)

(assert (=> b!4662730 m!5546943))

(declare-fun m!5546945 () Bool)

(assert (=> b!4662738 m!5546945))

(check-sat (not start!469844) (not b!4662730) (not b!4662736) tp_is_empty!29943 (not b!4662738) (not b!4662724) (not b!4662727) (not b!4662731) (not b!4662735) (not b!4662732) (not b!4662733) tp_is_empty!29941 (not b!4662734) (not b!4662725) (not b!4662729) (not b!4662737) (not b!4662728))
(check-sat)
(get-model)

(declare-fun b!4662749 () Bool)

(declare-fun e!2909582 () List!52082)

(assert (=> b!4662749 (= e!2909582 (Cons!51958 (h!58120 oldBucket!40) (removePairForKey!1285 (t!359200 oldBucket!40) key!4968)))))

(declare-fun b!4662748 () Bool)

(declare-fun e!2909581 () List!52082)

(assert (=> b!4662748 (= e!2909581 e!2909582)))

(declare-fun c!798154 () Bool)

(assert (=> b!4662748 (= c!798154 ((_ is Cons!51958) oldBucket!40))))

(declare-fun b!4662750 () Bool)

(assert (=> b!4662750 (= e!2909582 Nil!51958)))

(declare-fun b!4662747 () Bool)

(assert (=> b!4662747 (= e!2909581 (t!359200 oldBucket!40))))

(declare-fun d!1481173 () Bool)

(declare-fun lt!1824280 () List!52082)

(assert (=> d!1481173 (not (containsKey!2776 lt!1824280 key!4968))))

(assert (=> d!1481173 (= lt!1824280 e!2909581)))

(declare-fun c!798153 () Bool)

(assert (=> d!1481173 (= c!798153 (and ((_ is Cons!51958) oldBucket!40) (= (_1!29841 (h!58120 oldBucket!40)) key!4968)))))

(assert (=> d!1481173 (noDuplicateKeys!1662 oldBucket!40)))

(assert (=> d!1481173 (= (removePairForKey!1285 oldBucket!40 key!4968) lt!1824280)))

(assert (= (and d!1481173 c!798153) b!4662747))

(assert (= (and d!1481173 (not c!798153)) b!4662748))

(assert (= (and b!4662748 c!798154) b!4662749))

(assert (= (and b!4662748 (not c!798154)) b!4662750))

(assert (=> b!4662749 m!5546945))

(declare-fun m!5546947 () Bool)

(assert (=> d!1481173 m!5546947))

(assert (=> d!1481173 m!5546917))

(assert (=> b!4662736 d!1481173))

(declare-fun b!4662753 () Bool)

(declare-fun e!2909584 () List!52082)

(assert (=> b!4662753 (= e!2909584 (Cons!51958 (h!58120 lt!1824261) (removePairForKey!1285 (t!359200 lt!1824261) key!4968)))))

(declare-fun b!4662752 () Bool)

(declare-fun e!2909583 () List!52082)

(assert (=> b!4662752 (= e!2909583 e!2909584)))

(declare-fun c!798156 () Bool)

(assert (=> b!4662752 (= c!798156 ((_ is Cons!51958) lt!1824261))))

(declare-fun b!4662754 () Bool)

(assert (=> b!4662754 (= e!2909584 Nil!51958)))

(declare-fun b!4662751 () Bool)

(assert (=> b!4662751 (= e!2909583 (t!359200 lt!1824261))))

(declare-fun d!1481175 () Bool)

(declare-fun lt!1824281 () List!52082)

(assert (=> d!1481175 (not (containsKey!2776 lt!1824281 key!4968))))

(assert (=> d!1481175 (= lt!1824281 e!2909583)))

(declare-fun c!798155 () Bool)

(assert (=> d!1481175 (= c!798155 (and ((_ is Cons!51958) lt!1824261) (= (_1!29841 (h!58120 lt!1824261)) key!4968)))))

(assert (=> d!1481175 (noDuplicateKeys!1662 lt!1824261)))

(assert (=> d!1481175 (= (removePairForKey!1285 lt!1824261 key!4968) lt!1824281)))

(assert (= (and d!1481175 c!798155) b!4662751))

(assert (= (and d!1481175 (not c!798155)) b!4662752))

(assert (= (and b!4662752 c!798156) b!4662753))

(assert (= (and b!4662752 (not c!798156)) b!4662754))

(declare-fun m!5546949 () Bool)

(assert (=> b!4662753 m!5546949))

(declare-fun m!5546951 () Bool)

(assert (=> d!1481175 m!5546951))

(declare-fun m!5546953 () Bool)

(assert (=> d!1481175 m!5546953))

(assert (=> b!4662725 d!1481175))

(declare-fun d!1481177 () Bool)

(assert (=> d!1481177 (= (tail!8265 newBucket!224) (t!359200 newBucket!224))))

(assert (=> b!4662725 d!1481177))

(declare-fun d!1481179 () Bool)

(assert (=> d!1481179 (= (tail!8265 oldBucket!40) (t!359200 oldBucket!40))))

(assert (=> b!4662725 d!1481179))

(declare-fun b!4662773 () Bool)

(declare-fun e!2909597 () Bool)

(declare-datatypes ((List!52085 0))(
  ( (Nil!51961) (Cons!51961 (h!58125 K!13305) (t!359205 List!52085)) )
))
(declare-fun contains!15138 (List!52085 K!13305) Bool)

(declare-fun keys!18428 (ListMap!4593) List!52085)

(assert (=> b!4662773 (= e!2909597 (contains!15138 (keys!18428 lt!1824270) key!4968))))

(declare-fun bm!325749 () Bool)

(declare-fun call!325754 () Bool)

(declare-fun e!2909602 () List!52085)

(assert (=> bm!325749 (= call!325754 (contains!15138 e!2909602 key!4968))))

(declare-fun c!798163 () Bool)

(declare-fun c!798164 () Bool)

(assert (=> bm!325749 (= c!798163 c!798164)))

(declare-fun b!4662774 () Bool)

(declare-fun e!2909598 () Unit!119436)

(declare-fun lt!1824302 () Unit!119436)

(assert (=> b!4662774 (= e!2909598 lt!1824302)))

(declare-fun lt!1824298 () Unit!119436)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1546 (List!52082 K!13305) Unit!119436)

(assert (=> b!4662774 (= lt!1824298 (lemmaContainsKeyImpliesGetValueByKeyDefined!1546 (toList!5253 lt!1824270) key!4968))))

(declare-datatypes ((Option!11876 0))(
  ( (None!11875) (Some!11875 (v!46197 V!13551)) )
))
(declare-fun isDefined!9141 (Option!11876) Bool)

(declare-fun getValueByKey!1644 (List!52082 K!13305) Option!11876)

(assert (=> b!4662774 (isDefined!9141 (getValueByKey!1644 (toList!5253 lt!1824270) key!4968))))

(declare-fun lt!1824304 () Unit!119436)

(assert (=> b!4662774 (= lt!1824304 lt!1824298)))

(declare-fun lemmaInListThenGetKeysListContains!762 (List!52082 K!13305) Unit!119436)

(assert (=> b!4662774 (= lt!1824302 (lemmaInListThenGetKeysListContains!762 (toList!5253 lt!1824270) key!4968))))

(assert (=> b!4662774 call!325754))

(declare-fun b!4662775 () Bool)

(declare-fun e!2909601 () Unit!119436)

(declare-fun Unit!119462 () Unit!119436)

(assert (=> b!4662775 (= e!2909601 Unit!119462)))

(declare-fun b!4662776 () Bool)

(assert (=> b!4662776 (= e!2909602 (keys!18428 lt!1824270))))

(declare-fun b!4662777 () Bool)

(assert (=> b!4662777 (= e!2909598 e!2909601)))

(declare-fun c!798165 () Bool)

(assert (=> b!4662777 (= c!798165 call!325754)))

(declare-fun d!1481181 () Bool)

(declare-fun e!2909599 () Bool)

(assert (=> d!1481181 e!2909599))

(declare-fun res!1961639 () Bool)

(assert (=> d!1481181 (=> res!1961639 e!2909599)))

(declare-fun e!2909600 () Bool)

(assert (=> d!1481181 (= res!1961639 e!2909600)))

(declare-fun res!1961640 () Bool)

(assert (=> d!1481181 (=> (not res!1961640) (not e!2909600))))

(declare-fun lt!1824303 () Bool)

(assert (=> d!1481181 (= res!1961640 (not lt!1824303))))

(declare-fun lt!1824305 () Bool)

(assert (=> d!1481181 (= lt!1824303 lt!1824305)))

(declare-fun lt!1824301 () Unit!119436)

(assert (=> d!1481181 (= lt!1824301 e!2909598)))

(assert (=> d!1481181 (= c!798164 lt!1824305)))

(declare-fun containsKey!2778 (List!52082 K!13305) Bool)

(assert (=> d!1481181 (= lt!1824305 (containsKey!2778 (toList!5253 lt!1824270) key!4968))))

(assert (=> d!1481181 (= (contains!15133 lt!1824270 key!4968) lt!1824303)))

(declare-fun b!4662778 () Bool)

(declare-fun getKeysList!767 (List!52082) List!52085)

(assert (=> b!4662778 (= e!2909602 (getKeysList!767 (toList!5253 lt!1824270)))))

(declare-fun b!4662779 () Bool)

(assert (=> b!4662779 false))

(declare-fun lt!1824300 () Unit!119436)

(declare-fun lt!1824299 () Unit!119436)

(assert (=> b!4662779 (= lt!1824300 lt!1824299)))

(assert (=> b!4662779 (containsKey!2778 (toList!5253 lt!1824270) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!766 (List!52082 K!13305) Unit!119436)

(assert (=> b!4662779 (= lt!1824299 (lemmaInGetKeysListThenContainsKey!766 (toList!5253 lt!1824270) key!4968))))

(declare-fun Unit!119463 () Unit!119436)

(assert (=> b!4662779 (= e!2909601 Unit!119463)))

(declare-fun b!4662780 () Bool)

(assert (=> b!4662780 (= e!2909599 e!2909597)))

(declare-fun res!1961641 () Bool)

(assert (=> b!4662780 (=> (not res!1961641) (not e!2909597))))

(assert (=> b!4662780 (= res!1961641 (isDefined!9141 (getValueByKey!1644 (toList!5253 lt!1824270) key!4968)))))

(declare-fun b!4662781 () Bool)

(assert (=> b!4662781 (= e!2909600 (not (contains!15138 (keys!18428 lt!1824270) key!4968)))))

(assert (= (and d!1481181 c!798164) b!4662774))

(assert (= (and d!1481181 (not c!798164)) b!4662777))

(assert (= (and b!4662777 c!798165) b!4662779))

(assert (= (and b!4662777 (not c!798165)) b!4662775))

(assert (= (or b!4662774 b!4662777) bm!325749))

(assert (= (and bm!325749 c!798163) b!4662778))

(assert (= (and bm!325749 (not c!798163)) b!4662776))

(assert (= (and d!1481181 res!1961640) b!4662781))

(assert (= (and d!1481181 (not res!1961639)) b!4662780))

(assert (= (and b!4662780 res!1961641) b!4662773))

(declare-fun m!5546955 () Bool)

(assert (=> b!4662779 m!5546955))

(declare-fun m!5546957 () Bool)

(assert (=> b!4662779 m!5546957))

(declare-fun m!5546959 () Bool)

(assert (=> b!4662773 m!5546959))

(assert (=> b!4662773 m!5546959))

(declare-fun m!5546961 () Bool)

(assert (=> b!4662773 m!5546961))

(assert (=> b!4662781 m!5546959))

(assert (=> b!4662781 m!5546959))

(assert (=> b!4662781 m!5546961))

(declare-fun m!5546963 () Bool)

(assert (=> b!4662780 m!5546963))

(assert (=> b!4662780 m!5546963))

(declare-fun m!5546965 () Bool)

(assert (=> b!4662780 m!5546965))

(assert (=> b!4662776 m!5546959))

(declare-fun m!5546967 () Bool)

(assert (=> b!4662778 m!5546967))

(declare-fun m!5546969 () Bool)

(assert (=> bm!325749 m!5546969))

(assert (=> d!1481181 m!5546955))

(declare-fun m!5546971 () Bool)

(assert (=> b!4662774 m!5546971))

(assert (=> b!4662774 m!5546963))

(assert (=> b!4662774 m!5546963))

(assert (=> b!4662774 m!5546965))

(declare-fun m!5546973 () Bool)

(assert (=> b!4662774 m!5546973))

(assert (=> b!4662724 d!1481181))

(declare-fun bs!1069019 () Bool)

(declare-fun d!1481183 () Bool)

(assert (= bs!1069019 (and d!1481183 b!4662737)))

(declare-fun lambda!200783 () Int)

(assert (=> bs!1069019 (= lambda!200783 lambda!200754)))

(declare-fun lt!1824350 () ListMap!4593)

(declare-fun invariantList!1316 (List!52082) Bool)

(assert (=> d!1481183 (invariantList!1316 (toList!5253 lt!1824350))))

(declare-fun e!2909611 () ListMap!4593)

(assert (=> d!1481183 (= lt!1824350 e!2909611)))

(declare-fun c!798170 () Bool)

(assert (=> d!1481183 (= c!798170 ((_ is Cons!51959) lt!1824263))))

(declare-fun forall!11071 (List!52083 Int) Bool)

(assert (=> d!1481183 (forall!11071 lt!1824263 lambda!200783)))

(assert (=> d!1481183 (= (extractMap!1718 lt!1824263) lt!1824350)))

(declare-fun b!4662792 () Bool)

(assert (=> b!4662792 (= e!2909611 (addToMapMapFromBucket!1119 (_2!29842 (h!58121 lt!1824263)) (extractMap!1718 (t!359201 lt!1824263))))))

(declare-fun b!4662793 () Bool)

(assert (=> b!4662793 (= e!2909611 (ListMap!4594 Nil!51958))))

(assert (= (and d!1481183 c!798170) b!4662792))

(assert (= (and d!1481183 (not c!798170)) b!4662793))

(declare-fun m!5546975 () Bool)

(assert (=> d!1481183 m!5546975))

(declare-fun m!5546977 () Bool)

(assert (=> d!1481183 m!5546977))

(declare-fun m!5546979 () Bool)

(assert (=> b!4662792 m!5546979))

(assert (=> b!4662792 m!5546979))

(declare-fun m!5546981 () Bool)

(assert (=> b!4662792 m!5546981))

(assert (=> b!4662724 d!1481183))

(declare-fun d!1481185 () Bool)

(assert (=> d!1481185 true))

(assert (=> d!1481185 true))

(declare-fun lambda!200789 () Int)

(declare-fun forall!11072 (List!52082 Int) Bool)

(assert (=> d!1481185 (= (allKeysSameHash!1516 oldBucket!40 hash!414 hashF!1389) (forall!11072 oldBucket!40 lambda!200789))))

(declare-fun bs!1069021 () Bool)

(assert (= bs!1069021 d!1481185))

(declare-fun m!5546983 () Bool)

(assert (=> bs!1069021 m!5546983))

(assert (=> b!4662734 d!1481185))

(declare-fun d!1481187 () Bool)

(declare-fun res!1961655 () Bool)

(declare-fun e!2909619 () Bool)

(assert (=> d!1481187 (=> res!1961655 e!2909619)))

(assert (=> d!1481187 (= res!1961655 (not ((_ is Cons!51958) (Cons!51958 (head!9740 newBucket!224) lt!1824277))))))

(assert (=> d!1481187 (= (noDuplicateKeys!1662 (Cons!51958 (head!9740 newBucket!224) lt!1824277)) e!2909619)))

(declare-fun b!4662813 () Bool)

(declare-fun e!2909620 () Bool)

(assert (=> b!4662813 (= e!2909619 e!2909620)))

(declare-fun res!1961656 () Bool)

(assert (=> b!4662813 (=> (not res!1961656) (not e!2909620))))

(assert (=> b!4662813 (= res!1961656 (not (containsKey!2776 (t!359200 (Cons!51958 (head!9740 newBucket!224) lt!1824277)) (_1!29841 (h!58120 (Cons!51958 (head!9740 newBucket!224) lt!1824277))))))))

(declare-fun b!4662814 () Bool)

(assert (=> b!4662814 (= e!2909620 (noDuplicateKeys!1662 (t!359200 (Cons!51958 (head!9740 newBucket!224) lt!1824277))))))

(assert (= (and d!1481187 (not res!1961655)) b!4662813))

(assert (= (and b!4662813 res!1961656) b!4662814))

(declare-fun m!5547017 () Bool)

(assert (=> b!4662813 m!5547017))

(declare-fun m!5547019 () Bool)

(assert (=> b!4662814 m!5547019))

(assert (=> b!4662733 d!1481187))

(declare-fun d!1481191 () Bool)

(assert (=> d!1481191 (= (head!9740 newBucket!224) (h!58120 newBucket!224))))

(assert (=> b!4662733 d!1481191))

(declare-fun bs!1069024 () Bool)

(declare-fun d!1481193 () Bool)

(assert (= bs!1069024 (and d!1481193 d!1481185)))

(declare-fun lambda!200793 () Int)

(assert (=> bs!1069024 (= lambda!200793 lambda!200789)))

(assert (=> d!1481193 true))

(assert (=> d!1481193 true))

(assert (=> d!1481193 (= (allKeysSameHash!1516 newBucket!224 hash!414 hashF!1389) (forall!11072 newBucket!224 lambda!200793))))

(declare-fun bs!1069025 () Bool)

(assert (= bs!1069025 d!1481193))

(declare-fun m!5547021 () Bool)

(assert (=> bs!1069025 m!5547021))

(assert (=> b!4662731 d!1481193))

(declare-fun d!1481195 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9029 (List!52082) (InoxSet tuple2!53094))

(assert (=> d!1481195 (= (eq!917 (addToMapMapFromBucket!1119 (Cons!51958 lt!1824274 lt!1824261) (ListMap!4594 Nil!51958)) (+!2002 (addToMapMapFromBucket!1119 lt!1824261 (ListMap!4594 Nil!51958)) lt!1824274)) (= (content!9029 (toList!5253 (addToMapMapFromBucket!1119 (Cons!51958 lt!1824274 lt!1824261) (ListMap!4594 Nil!51958)))) (content!9029 (toList!5253 (+!2002 (addToMapMapFromBucket!1119 lt!1824261 (ListMap!4594 Nil!51958)) lt!1824274)))))))

(declare-fun bs!1069026 () Bool)

(assert (= bs!1069026 d!1481195))

(declare-fun m!5547023 () Bool)

(assert (=> bs!1069026 m!5547023))

(declare-fun m!5547025 () Bool)

(assert (=> bs!1069026 m!5547025))

(assert (=> b!4662730 d!1481195))

(declare-fun bs!1069098 () Bool)

(declare-fun b!4662956 () Bool)

(assert (= bs!1069098 (and b!4662956 d!1481185)))

(declare-fun lambda!200842 () Int)

(assert (=> bs!1069098 (not (= lambda!200842 lambda!200789))))

(declare-fun bs!1069099 () Bool)

(assert (= bs!1069099 (and b!4662956 d!1481193)))

(assert (=> bs!1069099 (not (= lambda!200842 lambda!200793))))

(assert (=> b!4662956 true))

(declare-fun bs!1069100 () Bool)

(declare-fun b!4662958 () Bool)

(assert (= bs!1069100 (and b!4662958 d!1481185)))

(declare-fun lambda!200843 () Int)

(assert (=> bs!1069100 (not (= lambda!200843 lambda!200789))))

(declare-fun bs!1069101 () Bool)

(assert (= bs!1069101 (and b!4662958 d!1481193)))

(assert (=> bs!1069101 (not (= lambda!200843 lambda!200793))))

(declare-fun bs!1069102 () Bool)

(assert (= bs!1069102 (and b!4662958 b!4662956)))

(assert (=> bs!1069102 (= lambda!200843 lambda!200842)))

(assert (=> b!4662958 true))

(declare-fun lambda!200844 () Int)

(assert (=> bs!1069100 (not (= lambda!200844 lambda!200789))))

(assert (=> bs!1069101 (not (= lambda!200844 lambda!200793))))

(declare-fun lt!1824530 () ListMap!4593)

(assert (=> bs!1069102 (= (= lt!1824530 (ListMap!4594 Nil!51958)) (= lambda!200844 lambda!200842))))

(assert (=> b!4662958 (= (= lt!1824530 (ListMap!4594 Nil!51958)) (= lambda!200844 lambda!200843))))

(assert (=> b!4662958 true))

(declare-fun bs!1069103 () Bool)

(declare-fun d!1481197 () Bool)

(assert (= bs!1069103 (and d!1481197 d!1481185)))

(declare-fun lambda!200845 () Int)

(assert (=> bs!1069103 (not (= lambda!200845 lambda!200789))))

(declare-fun bs!1069104 () Bool)

(assert (= bs!1069104 (and d!1481197 b!4662958)))

(declare-fun lt!1824544 () ListMap!4593)

(assert (=> bs!1069104 (= (= lt!1824544 (ListMap!4594 Nil!51958)) (= lambda!200845 lambda!200843))))

(declare-fun bs!1069105 () Bool)

(assert (= bs!1069105 (and d!1481197 b!4662956)))

(assert (=> bs!1069105 (= (= lt!1824544 (ListMap!4594 Nil!51958)) (= lambda!200845 lambda!200842))))

(declare-fun bs!1069106 () Bool)

(assert (= bs!1069106 (and d!1481197 d!1481193)))

(assert (=> bs!1069106 (not (= lambda!200845 lambda!200793))))

(assert (=> bs!1069104 (= (= lt!1824544 lt!1824530) (= lambda!200845 lambda!200844))))

(assert (=> d!1481197 true))

(declare-fun e!2909711 () ListMap!4593)

(assert (=> b!4662956 (= e!2909711 (ListMap!4594 Nil!51958))))

(declare-fun lt!1824534 () Unit!119436)

(declare-fun call!325782 () Unit!119436)

(assert (=> b!4662956 (= lt!1824534 call!325782)))

(declare-fun call!325780 () Bool)

(assert (=> b!4662956 call!325780))

(declare-fun lt!1824537 () Unit!119436)

(assert (=> b!4662956 (= lt!1824537 lt!1824534)))

(declare-fun call!325781 () Bool)

(assert (=> b!4662956 call!325781))

(declare-fun lt!1824526 () Unit!119436)

(declare-fun Unit!119475 () Unit!119436)

(assert (=> b!4662956 (= lt!1824526 Unit!119475)))

(declare-fun c!798209 () Bool)

(declare-fun bm!325775 () Bool)

(assert (=> bm!325775 (= call!325780 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) (ite c!798209 lambda!200842 lambda!200843)))))

(declare-fun bm!325776 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!616 (ListMap!4593) Unit!119436)

(assert (=> bm!325776 (= call!325782 (lemmaContainsAllItsOwnKeys!616 (ListMap!4594 Nil!51958)))))

(declare-fun bm!325777 () Bool)

(assert (=> bm!325777 (= call!325781 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) (ite c!798209 lambda!200842 lambda!200844)))))

(declare-fun b!4662957 () Bool)

(declare-fun e!2909712 () Bool)

(assert (=> b!4662957 (= e!2909712 (invariantList!1316 (toList!5253 lt!1824544)))))

(assert (=> b!4662958 (= e!2909711 lt!1824530)))

(declare-fun lt!1824536 () ListMap!4593)

(assert (=> b!4662958 (= lt!1824536 (+!2002 (ListMap!4594 Nil!51958) (h!58120 (Cons!51958 lt!1824274 lt!1824261))))))

(assert (=> b!4662958 (= lt!1824530 (addToMapMapFromBucket!1119 (t!359200 (Cons!51958 lt!1824274 lt!1824261)) (+!2002 (ListMap!4594 Nil!51958) (h!58120 (Cons!51958 lt!1824274 lt!1824261)))))))

(declare-fun lt!1824532 () Unit!119436)

(assert (=> b!4662958 (= lt!1824532 call!325782)))

(assert (=> b!4662958 call!325780))

(declare-fun lt!1824540 () Unit!119436)

(assert (=> b!4662958 (= lt!1824540 lt!1824532)))

(assert (=> b!4662958 (forall!11072 (toList!5253 lt!1824536) lambda!200844)))

(declare-fun lt!1824541 () Unit!119436)

(declare-fun Unit!119476 () Unit!119436)

(assert (=> b!4662958 (= lt!1824541 Unit!119476)))

(assert (=> b!4662958 (forall!11072 (t!359200 (Cons!51958 lt!1824274 lt!1824261)) lambda!200844)))

(declare-fun lt!1824529 () Unit!119436)

(declare-fun Unit!119477 () Unit!119436)

(assert (=> b!4662958 (= lt!1824529 Unit!119477)))

(declare-fun lt!1824542 () Unit!119436)

(declare-fun Unit!119478 () Unit!119436)

(assert (=> b!4662958 (= lt!1824542 Unit!119478)))

(declare-fun lt!1824527 () Unit!119436)

(declare-fun forallContained!3272 (List!52082 Int tuple2!53094) Unit!119436)

(assert (=> b!4662958 (= lt!1824527 (forallContained!3272 (toList!5253 lt!1824536) lambda!200844 (h!58120 (Cons!51958 lt!1824274 lt!1824261))))))

(assert (=> b!4662958 (contains!15133 lt!1824536 (_1!29841 (h!58120 (Cons!51958 lt!1824274 lt!1824261))))))

(declare-fun lt!1824543 () Unit!119436)

(declare-fun Unit!119479 () Unit!119436)

(assert (=> b!4662958 (= lt!1824543 Unit!119479)))

(assert (=> b!4662958 (contains!15133 lt!1824530 (_1!29841 (h!58120 (Cons!51958 lt!1824274 lt!1824261))))))

(declare-fun lt!1824525 () Unit!119436)

(declare-fun Unit!119480 () Unit!119436)

(assert (=> b!4662958 (= lt!1824525 Unit!119480)))

(assert (=> b!4662958 (forall!11072 (Cons!51958 lt!1824274 lt!1824261) lambda!200844)))

(declare-fun lt!1824538 () Unit!119436)

(declare-fun Unit!119481 () Unit!119436)

(assert (=> b!4662958 (= lt!1824538 Unit!119481)))

(assert (=> b!4662958 (forall!11072 (toList!5253 lt!1824536) lambda!200844)))

(declare-fun lt!1824528 () Unit!119436)

(declare-fun Unit!119482 () Unit!119436)

(assert (=> b!4662958 (= lt!1824528 Unit!119482)))

(declare-fun lt!1824533 () Unit!119436)

(declare-fun Unit!119483 () Unit!119436)

(assert (=> b!4662958 (= lt!1824533 Unit!119483)))

(declare-fun lt!1824539 () Unit!119436)

(declare-fun addForallContainsKeyThenBeforeAdding!615 (ListMap!4593 ListMap!4593 K!13305 V!13551) Unit!119436)

(assert (=> b!4662958 (= lt!1824539 (addForallContainsKeyThenBeforeAdding!615 (ListMap!4594 Nil!51958) lt!1824530 (_1!29841 (h!58120 (Cons!51958 lt!1824274 lt!1824261))) (_2!29841 (h!58120 (Cons!51958 lt!1824274 lt!1824261)))))))

(assert (=> b!4662958 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) lambda!200844)))

(declare-fun lt!1824545 () Unit!119436)

(assert (=> b!4662958 (= lt!1824545 lt!1824539)))

(assert (=> b!4662958 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) lambda!200844)))

(declare-fun lt!1824531 () Unit!119436)

(declare-fun Unit!119484 () Unit!119436)

(assert (=> b!4662958 (= lt!1824531 Unit!119484)))

(declare-fun res!1961721 () Bool)

(assert (=> b!4662958 (= res!1961721 (forall!11072 (Cons!51958 lt!1824274 lt!1824261) lambda!200844))))

(declare-fun e!2909710 () Bool)

(assert (=> b!4662958 (=> (not res!1961721) (not e!2909710))))

(assert (=> b!4662958 e!2909710))

(declare-fun lt!1824535 () Unit!119436)

(declare-fun Unit!119485 () Unit!119436)

(assert (=> b!4662958 (= lt!1824535 Unit!119485)))

(declare-fun b!4662959 () Bool)

(declare-fun res!1961720 () Bool)

(assert (=> b!4662959 (=> (not res!1961720) (not e!2909712))))

(assert (=> b!4662959 (= res!1961720 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) lambda!200845))))

(assert (=> d!1481197 e!2909712))

(declare-fun res!1961719 () Bool)

(assert (=> d!1481197 (=> (not res!1961719) (not e!2909712))))

(assert (=> d!1481197 (= res!1961719 (forall!11072 (Cons!51958 lt!1824274 lt!1824261) lambda!200845))))

(assert (=> d!1481197 (= lt!1824544 e!2909711)))

(assert (=> d!1481197 (= c!798209 ((_ is Nil!51958) (Cons!51958 lt!1824274 lt!1824261)))))

(assert (=> d!1481197 (noDuplicateKeys!1662 (Cons!51958 lt!1824274 lt!1824261))))

(assert (=> d!1481197 (= (addToMapMapFromBucket!1119 (Cons!51958 lt!1824274 lt!1824261) (ListMap!4594 Nil!51958)) lt!1824544)))

(declare-fun b!4662960 () Bool)

(assert (=> b!4662960 (= e!2909710 call!325781)))

(assert (= (and d!1481197 c!798209) b!4662956))

(assert (= (and d!1481197 (not c!798209)) b!4662958))

(assert (= (and b!4662958 res!1961721) b!4662960))

(assert (= (or b!4662956 b!4662958) bm!325776))

(assert (= (or b!4662956 b!4662958) bm!325775))

(assert (= (or b!4662956 b!4662960) bm!325777))

(assert (= (and d!1481197 res!1961719) b!4662959))

(assert (= (and b!4662959 res!1961720) b!4662957))

(declare-fun m!5547241 () Bool)

(assert (=> bm!325775 m!5547241))

(declare-fun m!5547243 () Bool)

(assert (=> b!4662957 m!5547243))

(declare-fun m!5547245 () Bool)

(assert (=> bm!325777 m!5547245))

(declare-fun m!5547247 () Bool)

(assert (=> b!4662959 m!5547247))

(declare-fun m!5547249 () Bool)

(assert (=> b!4662958 m!5547249))

(declare-fun m!5547251 () Bool)

(assert (=> b!4662958 m!5547251))

(declare-fun m!5547253 () Bool)

(assert (=> b!4662958 m!5547253))

(declare-fun m!5547255 () Bool)

(assert (=> b!4662958 m!5547255))

(assert (=> b!4662958 m!5547253))

(assert (=> b!4662958 m!5547255))

(declare-fun m!5547257 () Bool)

(assert (=> b!4662958 m!5547257))

(declare-fun m!5547259 () Bool)

(assert (=> b!4662958 m!5547259))

(assert (=> b!4662958 m!5547257))

(declare-fun m!5547261 () Bool)

(assert (=> b!4662958 m!5547261))

(declare-fun m!5547263 () Bool)

(assert (=> b!4662958 m!5547263))

(assert (=> b!4662958 m!5547261))

(declare-fun m!5547265 () Bool)

(assert (=> b!4662958 m!5547265))

(declare-fun m!5547267 () Bool)

(assert (=> b!4662958 m!5547267))

(declare-fun m!5547269 () Bool)

(assert (=> bm!325776 m!5547269))

(declare-fun m!5547271 () Bool)

(assert (=> d!1481197 m!5547271))

(declare-fun m!5547273 () Bool)

(assert (=> d!1481197 m!5547273))

(assert (=> b!4662730 d!1481197))

(declare-fun d!1481261 () Bool)

(assert (=> d!1481261 (eq!917 (addToMapMapFromBucket!1119 (Cons!51958 lt!1824274 lt!1824261) (ListMap!4594 Nil!51958)) (+!2002 (addToMapMapFromBucket!1119 lt!1824261 (ListMap!4594 Nil!51958)) lt!1824274))))

(declare-fun lt!1824564 () Unit!119436)

(declare-fun choose!32157 (tuple2!53094 List!52082 ListMap!4593) Unit!119436)

(assert (=> d!1481261 (= lt!1824564 (choose!32157 lt!1824274 lt!1824261 (ListMap!4594 Nil!51958)))))

(assert (=> d!1481261 (noDuplicateKeys!1662 lt!1824261)))

(assert (=> d!1481261 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!168 lt!1824274 lt!1824261 (ListMap!4594 Nil!51958)) lt!1824564)))

(declare-fun bs!1069107 () Bool)

(assert (= bs!1069107 d!1481261))

(assert (=> bs!1069107 m!5546929))

(assert (=> bs!1069107 m!5546925))

(declare-fun m!5547275 () Bool)

(assert (=> bs!1069107 m!5547275))

(assert (=> bs!1069107 m!5546925))

(assert (=> bs!1069107 m!5546931))

(assert (=> bs!1069107 m!5546939))

(assert (=> bs!1069107 m!5546929))

(assert (=> bs!1069107 m!5546931))

(assert (=> bs!1069107 m!5546953))

(assert (=> b!4662730 d!1481261))

(declare-fun d!1481263 () Bool)

(assert (=> d!1481263 (= (head!9740 oldBucket!40) (h!58120 oldBucket!40))))

(assert (=> b!4662730 d!1481263))

(declare-fun d!1481265 () Bool)

(declare-fun res!1961730 () Bool)

(declare-fun e!2909717 () Bool)

(assert (=> d!1481265 (=> res!1961730 e!2909717)))

(assert (=> d!1481265 (= res!1961730 (not ((_ is Cons!51958) lt!1824277)))))

(assert (=> d!1481265 (= (noDuplicateKeys!1662 lt!1824277) e!2909717)))

(declare-fun b!4662971 () Bool)

(declare-fun e!2909718 () Bool)

(assert (=> b!4662971 (= e!2909717 e!2909718)))

(declare-fun res!1961731 () Bool)

(assert (=> b!4662971 (=> (not res!1961731) (not e!2909718))))

(assert (=> b!4662971 (= res!1961731 (not (containsKey!2776 (t!359200 lt!1824277) (_1!29841 (h!58120 lt!1824277)))))))

(declare-fun b!4662972 () Bool)

(assert (=> b!4662972 (= e!2909718 (noDuplicateKeys!1662 (t!359200 lt!1824277)))))

(assert (= (and d!1481265 (not res!1961730)) b!4662971))

(assert (= (and b!4662971 res!1961731) b!4662972))

(declare-fun m!5547277 () Bool)

(assert (=> b!4662971 m!5547277))

(declare-fun m!5547279 () Bool)

(assert (=> b!4662972 m!5547279))

(assert (=> b!4662730 d!1481265))

(declare-fun bs!1069113 () Bool)

(declare-fun d!1481267 () Bool)

(assert (= bs!1069113 (and d!1481267 b!4662737)))

(declare-fun lambda!200857 () Int)

(assert (=> bs!1069113 (= lambda!200857 lambda!200754)))

(declare-fun bs!1069114 () Bool)

(assert (= bs!1069114 (and d!1481267 d!1481183)))

(assert (=> bs!1069114 (= lambda!200857 lambda!200783)))

(assert (=> d!1481267 (contains!15133 (extractMap!1718 (toList!5254 (ListLongMap!3808 lt!1824275))) key!4968)))

(declare-fun lt!1824578 () Unit!119436)

(declare-fun choose!32158 (ListLongMap!3807 K!13305 Hashable!6059) Unit!119436)

(assert (=> d!1481267 (= lt!1824578 (choose!32158 (ListLongMap!3808 lt!1824275) key!4968 hashF!1389))))

(assert (=> d!1481267 (forall!11071 (toList!5254 (ListLongMap!3808 lt!1824275)) lambda!200857)))

(assert (=> d!1481267 (= (lemmaListContainsThenExtractedMapContains!396 (ListLongMap!3808 lt!1824275) key!4968 hashF!1389) lt!1824578)))

(declare-fun bs!1069115 () Bool)

(assert (= bs!1069115 d!1481267))

(declare-fun m!5547315 () Bool)

(assert (=> bs!1069115 m!5547315))

(assert (=> bs!1069115 m!5547315))

(declare-fun m!5547317 () Bool)

(assert (=> bs!1069115 m!5547317))

(declare-fun m!5547319 () Bool)

(assert (=> bs!1069115 m!5547319))

(declare-fun m!5547321 () Bool)

(assert (=> bs!1069115 m!5547321))

(assert (=> b!4662730 d!1481267))

(declare-fun b!4662983 () Bool)

(declare-fun e!2909727 () Bool)

(assert (=> b!4662983 (= e!2909727 (contains!15138 (keys!18428 (extractMap!1718 lt!1824275)) key!4968))))

(declare-fun bm!325778 () Bool)

(declare-fun call!325783 () Bool)

(declare-fun e!2909732 () List!52085)

(assert (=> bm!325778 (= call!325783 (contains!15138 e!2909732 key!4968))))

(declare-fun c!798210 () Bool)

(declare-fun c!798211 () Bool)

(assert (=> bm!325778 (= c!798210 c!798211)))

(declare-fun b!4662984 () Bool)

(declare-fun e!2909728 () Unit!119436)

(declare-fun lt!1824586 () Unit!119436)

(assert (=> b!4662984 (= e!2909728 lt!1824586)))

(declare-fun lt!1824582 () Unit!119436)

(assert (=> b!4662984 (= lt!1824582 (lemmaContainsKeyImpliesGetValueByKeyDefined!1546 (toList!5253 (extractMap!1718 lt!1824275)) key!4968))))

(assert (=> b!4662984 (isDefined!9141 (getValueByKey!1644 (toList!5253 (extractMap!1718 lt!1824275)) key!4968))))

(declare-fun lt!1824588 () Unit!119436)

(assert (=> b!4662984 (= lt!1824588 lt!1824582)))

(assert (=> b!4662984 (= lt!1824586 (lemmaInListThenGetKeysListContains!762 (toList!5253 (extractMap!1718 lt!1824275)) key!4968))))

(assert (=> b!4662984 call!325783))

(declare-fun b!4662985 () Bool)

(declare-fun e!2909731 () Unit!119436)

(declare-fun Unit!119488 () Unit!119436)

(assert (=> b!4662985 (= e!2909731 Unit!119488)))

(declare-fun b!4662986 () Bool)

(assert (=> b!4662986 (= e!2909732 (keys!18428 (extractMap!1718 lt!1824275)))))

(declare-fun b!4662987 () Bool)

(assert (=> b!4662987 (= e!2909728 e!2909731)))

(declare-fun c!798212 () Bool)

(assert (=> b!4662987 (= c!798212 call!325783)))

(declare-fun d!1481273 () Bool)

(declare-fun e!2909729 () Bool)

(assert (=> d!1481273 e!2909729))

(declare-fun res!1961742 () Bool)

(assert (=> d!1481273 (=> res!1961742 e!2909729)))

(declare-fun e!2909730 () Bool)

(assert (=> d!1481273 (= res!1961742 e!2909730)))

(declare-fun res!1961743 () Bool)

(assert (=> d!1481273 (=> (not res!1961743) (not e!2909730))))

(declare-fun lt!1824587 () Bool)

(assert (=> d!1481273 (= res!1961743 (not lt!1824587))))

(declare-fun lt!1824589 () Bool)

(assert (=> d!1481273 (= lt!1824587 lt!1824589)))

(declare-fun lt!1824585 () Unit!119436)

(assert (=> d!1481273 (= lt!1824585 e!2909728)))

(assert (=> d!1481273 (= c!798211 lt!1824589)))

(assert (=> d!1481273 (= lt!1824589 (containsKey!2778 (toList!5253 (extractMap!1718 lt!1824275)) key!4968))))

(assert (=> d!1481273 (= (contains!15133 (extractMap!1718 lt!1824275) key!4968) lt!1824587)))

(declare-fun b!4662988 () Bool)

(assert (=> b!4662988 (= e!2909732 (getKeysList!767 (toList!5253 (extractMap!1718 lt!1824275))))))

(declare-fun b!4662989 () Bool)

(assert (=> b!4662989 false))

(declare-fun lt!1824584 () Unit!119436)

(declare-fun lt!1824583 () Unit!119436)

(assert (=> b!4662989 (= lt!1824584 lt!1824583)))

(assert (=> b!4662989 (containsKey!2778 (toList!5253 (extractMap!1718 lt!1824275)) key!4968)))

(assert (=> b!4662989 (= lt!1824583 (lemmaInGetKeysListThenContainsKey!766 (toList!5253 (extractMap!1718 lt!1824275)) key!4968))))

(declare-fun Unit!119489 () Unit!119436)

(assert (=> b!4662989 (= e!2909731 Unit!119489)))

(declare-fun b!4662990 () Bool)

(assert (=> b!4662990 (= e!2909729 e!2909727)))

(declare-fun res!1961744 () Bool)

(assert (=> b!4662990 (=> (not res!1961744) (not e!2909727))))

(assert (=> b!4662990 (= res!1961744 (isDefined!9141 (getValueByKey!1644 (toList!5253 (extractMap!1718 lt!1824275)) key!4968)))))

(declare-fun b!4662991 () Bool)

(assert (=> b!4662991 (= e!2909730 (not (contains!15138 (keys!18428 (extractMap!1718 lt!1824275)) key!4968)))))

(assert (= (and d!1481273 c!798211) b!4662984))

(assert (= (and d!1481273 (not c!798211)) b!4662987))

(assert (= (and b!4662987 c!798212) b!4662989))

(assert (= (and b!4662987 (not c!798212)) b!4662985))

(assert (= (or b!4662984 b!4662987) bm!325778))

(assert (= (and bm!325778 c!798210) b!4662988))

(assert (= (and bm!325778 (not c!798210)) b!4662986))

(assert (= (and d!1481273 res!1961743) b!4662991))

(assert (= (and d!1481273 (not res!1961742)) b!4662990))

(assert (= (and b!4662990 res!1961744) b!4662983))

(declare-fun m!5547327 () Bool)

(assert (=> b!4662989 m!5547327))

(declare-fun m!5547329 () Bool)

(assert (=> b!4662989 m!5547329))

(assert (=> b!4662983 m!5546933))

(declare-fun m!5547331 () Bool)

(assert (=> b!4662983 m!5547331))

(assert (=> b!4662983 m!5547331))

(declare-fun m!5547333 () Bool)

(assert (=> b!4662983 m!5547333))

(assert (=> b!4662991 m!5546933))

(assert (=> b!4662991 m!5547331))

(assert (=> b!4662991 m!5547331))

(assert (=> b!4662991 m!5547333))

(declare-fun m!5547335 () Bool)

(assert (=> b!4662990 m!5547335))

(assert (=> b!4662990 m!5547335))

(declare-fun m!5547337 () Bool)

(assert (=> b!4662990 m!5547337))

(assert (=> b!4662986 m!5546933))

(assert (=> b!4662986 m!5547331))

(declare-fun m!5547339 () Bool)

(assert (=> b!4662988 m!5547339))

(declare-fun m!5547341 () Bool)

(assert (=> bm!325778 m!5547341))

(assert (=> d!1481273 m!5547327))

(declare-fun m!5547343 () Bool)

(assert (=> b!4662984 m!5547343))

(assert (=> b!4662984 m!5547335))

(assert (=> b!4662984 m!5547335))

(assert (=> b!4662984 m!5547337))

(declare-fun m!5547345 () Bool)

(assert (=> b!4662984 m!5547345))

(assert (=> b!4662730 d!1481273))

(declare-fun bs!1069123 () Bool)

(declare-fun b!4662992 () Bool)

(assert (= bs!1069123 (and b!4662992 d!1481185)))

(declare-fun lambda!200859 () Int)

(assert (=> bs!1069123 (not (= lambda!200859 lambda!200789))))

(declare-fun bs!1069124 () Bool)

(assert (= bs!1069124 (and b!4662992 d!1481197)))

(assert (=> bs!1069124 (= (= (ListMap!4594 Nil!51958) lt!1824544) (= lambda!200859 lambda!200845))))

(declare-fun bs!1069125 () Bool)

(assert (= bs!1069125 (and b!4662992 b!4662958)))

(assert (=> bs!1069125 (= lambda!200859 lambda!200843)))

(declare-fun bs!1069126 () Bool)

(assert (= bs!1069126 (and b!4662992 b!4662956)))

(assert (=> bs!1069126 (= lambda!200859 lambda!200842)))

(declare-fun bs!1069127 () Bool)

(assert (= bs!1069127 (and b!4662992 d!1481193)))

(assert (=> bs!1069127 (not (= lambda!200859 lambda!200793))))

(assert (=> bs!1069125 (= (= (ListMap!4594 Nil!51958) lt!1824530) (= lambda!200859 lambda!200844))))

(assert (=> b!4662992 true))

(declare-fun bs!1069128 () Bool)

(declare-fun b!4662994 () Bool)

(assert (= bs!1069128 (and b!4662994 d!1481185)))

(declare-fun lambda!200860 () Int)

(assert (=> bs!1069128 (not (= lambda!200860 lambda!200789))))

(declare-fun bs!1069129 () Bool)

(assert (= bs!1069129 (and b!4662994 d!1481197)))

(assert (=> bs!1069129 (= (= (ListMap!4594 Nil!51958) lt!1824544) (= lambda!200860 lambda!200845))))

(declare-fun bs!1069130 () Bool)

(assert (= bs!1069130 (and b!4662994 b!4662958)))

(assert (=> bs!1069130 (= lambda!200860 lambda!200843)))

(declare-fun bs!1069131 () Bool)

(assert (= bs!1069131 (and b!4662994 b!4662956)))

(assert (=> bs!1069131 (= lambda!200860 lambda!200842)))

(declare-fun bs!1069132 () Bool)

(assert (= bs!1069132 (and b!4662994 b!4662992)))

(assert (=> bs!1069132 (= lambda!200860 lambda!200859)))

(declare-fun bs!1069133 () Bool)

(assert (= bs!1069133 (and b!4662994 d!1481193)))

(assert (=> bs!1069133 (not (= lambda!200860 lambda!200793))))

(assert (=> bs!1069130 (= (= (ListMap!4594 Nil!51958) lt!1824530) (= lambda!200860 lambda!200844))))

(assert (=> b!4662994 true))

(declare-fun lambda!200861 () Int)

(assert (=> bs!1069128 (not (= lambda!200861 lambda!200789))))

(declare-fun lt!1824595 () ListMap!4593)

(assert (=> bs!1069129 (= (= lt!1824595 lt!1824544) (= lambda!200861 lambda!200845))))

(assert (=> bs!1069130 (= (= lt!1824595 (ListMap!4594 Nil!51958)) (= lambda!200861 lambda!200843))))

(assert (=> bs!1069131 (= (= lt!1824595 (ListMap!4594 Nil!51958)) (= lambda!200861 lambda!200842))))

(assert (=> bs!1069132 (= (= lt!1824595 (ListMap!4594 Nil!51958)) (= lambda!200861 lambda!200859))))

(assert (=> b!4662994 (= (= lt!1824595 (ListMap!4594 Nil!51958)) (= lambda!200861 lambda!200860))))

(assert (=> bs!1069133 (not (= lambda!200861 lambda!200793))))

(assert (=> bs!1069130 (= (= lt!1824595 lt!1824530) (= lambda!200861 lambda!200844))))

(assert (=> b!4662994 true))

(declare-fun bs!1069134 () Bool)

(declare-fun d!1481277 () Bool)

(assert (= bs!1069134 (and d!1481277 d!1481185)))

(declare-fun lambda!200862 () Int)

(assert (=> bs!1069134 (not (= lambda!200862 lambda!200789))))

(declare-fun bs!1069135 () Bool)

(assert (= bs!1069135 (and d!1481277 b!4662994)))

(declare-fun lt!1824609 () ListMap!4593)

(assert (=> bs!1069135 (= (= lt!1824609 lt!1824595) (= lambda!200862 lambda!200861))))

(declare-fun bs!1069136 () Bool)

(assert (= bs!1069136 (and d!1481277 d!1481197)))

(assert (=> bs!1069136 (= (= lt!1824609 lt!1824544) (= lambda!200862 lambda!200845))))

(declare-fun bs!1069137 () Bool)

(assert (= bs!1069137 (and d!1481277 b!4662958)))

(assert (=> bs!1069137 (= (= lt!1824609 (ListMap!4594 Nil!51958)) (= lambda!200862 lambda!200843))))

(declare-fun bs!1069138 () Bool)

(assert (= bs!1069138 (and d!1481277 b!4662956)))

(assert (=> bs!1069138 (= (= lt!1824609 (ListMap!4594 Nil!51958)) (= lambda!200862 lambda!200842))))

(declare-fun bs!1069139 () Bool)

(assert (= bs!1069139 (and d!1481277 b!4662992)))

(assert (=> bs!1069139 (= (= lt!1824609 (ListMap!4594 Nil!51958)) (= lambda!200862 lambda!200859))))

(assert (=> bs!1069135 (= (= lt!1824609 (ListMap!4594 Nil!51958)) (= lambda!200862 lambda!200860))))

(declare-fun bs!1069140 () Bool)

(assert (= bs!1069140 (and d!1481277 d!1481193)))

(assert (=> bs!1069140 (not (= lambda!200862 lambda!200793))))

(assert (=> bs!1069137 (= (= lt!1824609 lt!1824530) (= lambda!200862 lambda!200844))))

(assert (=> d!1481277 true))

(declare-fun e!2909734 () ListMap!4593)

(assert (=> b!4662992 (= e!2909734 (ListMap!4594 Nil!51958))))

(declare-fun lt!1824599 () Unit!119436)

(declare-fun call!325786 () Unit!119436)

(assert (=> b!4662992 (= lt!1824599 call!325786)))

(declare-fun call!325784 () Bool)

(assert (=> b!4662992 call!325784))

(declare-fun lt!1824602 () Unit!119436)

(assert (=> b!4662992 (= lt!1824602 lt!1824599)))

(declare-fun call!325785 () Bool)

(assert (=> b!4662992 call!325785))

(declare-fun lt!1824591 () Unit!119436)

(declare-fun Unit!119490 () Unit!119436)

(assert (=> b!4662992 (= lt!1824591 Unit!119490)))

(declare-fun bm!325779 () Bool)

(declare-fun c!798213 () Bool)

(assert (=> bm!325779 (= call!325784 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) (ite c!798213 lambda!200859 lambda!200860)))))

(declare-fun bm!325780 () Bool)

(assert (=> bm!325780 (= call!325786 (lemmaContainsAllItsOwnKeys!616 (ListMap!4594 Nil!51958)))))

(declare-fun bm!325781 () Bool)

(assert (=> bm!325781 (= call!325785 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) (ite c!798213 lambda!200859 lambda!200861)))))

(declare-fun b!4662993 () Bool)

(declare-fun e!2909735 () Bool)

(assert (=> b!4662993 (= e!2909735 (invariantList!1316 (toList!5253 lt!1824609)))))

(assert (=> b!4662994 (= e!2909734 lt!1824595)))

(declare-fun lt!1824601 () ListMap!4593)

(assert (=> b!4662994 (= lt!1824601 (+!2002 (ListMap!4594 Nil!51958) (h!58120 lt!1824261)))))

(assert (=> b!4662994 (= lt!1824595 (addToMapMapFromBucket!1119 (t!359200 lt!1824261) (+!2002 (ListMap!4594 Nil!51958) (h!58120 lt!1824261))))))

(declare-fun lt!1824597 () Unit!119436)

(assert (=> b!4662994 (= lt!1824597 call!325786)))

(assert (=> b!4662994 call!325784))

(declare-fun lt!1824605 () Unit!119436)

(assert (=> b!4662994 (= lt!1824605 lt!1824597)))

(assert (=> b!4662994 (forall!11072 (toList!5253 lt!1824601) lambda!200861)))

(declare-fun lt!1824606 () Unit!119436)

(declare-fun Unit!119491 () Unit!119436)

(assert (=> b!4662994 (= lt!1824606 Unit!119491)))

(assert (=> b!4662994 (forall!11072 (t!359200 lt!1824261) lambda!200861)))

(declare-fun lt!1824594 () Unit!119436)

(declare-fun Unit!119492 () Unit!119436)

(assert (=> b!4662994 (= lt!1824594 Unit!119492)))

(declare-fun lt!1824607 () Unit!119436)

(declare-fun Unit!119493 () Unit!119436)

(assert (=> b!4662994 (= lt!1824607 Unit!119493)))

(declare-fun lt!1824592 () Unit!119436)

(assert (=> b!4662994 (= lt!1824592 (forallContained!3272 (toList!5253 lt!1824601) lambda!200861 (h!58120 lt!1824261)))))

(assert (=> b!4662994 (contains!15133 lt!1824601 (_1!29841 (h!58120 lt!1824261)))))

(declare-fun lt!1824608 () Unit!119436)

(declare-fun Unit!119494 () Unit!119436)

(assert (=> b!4662994 (= lt!1824608 Unit!119494)))

(assert (=> b!4662994 (contains!15133 lt!1824595 (_1!29841 (h!58120 lt!1824261)))))

(declare-fun lt!1824590 () Unit!119436)

(declare-fun Unit!119495 () Unit!119436)

(assert (=> b!4662994 (= lt!1824590 Unit!119495)))

(assert (=> b!4662994 (forall!11072 lt!1824261 lambda!200861)))

(declare-fun lt!1824603 () Unit!119436)

(declare-fun Unit!119496 () Unit!119436)

(assert (=> b!4662994 (= lt!1824603 Unit!119496)))

(assert (=> b!4662994 (forall!11072 (toList!5253 lt!1824601) lambda!200861)))

(declare-fun lt!1824593 () Unit!119436)

(declare-fun Unit!119497 () Unit!119436)

(assert (=> b!4662994 (= lt!1824593 Unit!119497)))

(declare-fun lt!1824598 () Unit!119436)

(declare-fun Unit!119498 () Unit!119436)

(assert (=> b!4662994 (= lt!1824598 Unit!119498)))

(declare-fun lt!1824604 () Unit!119436)

(assert (=> b!4662994 (= lt!1824604 (addForallContainsKeyThenBeforeAdding!615 (ListMap!4594 Nil!51958) lt!1824595 (_1!29841 (h!58120 lt!1824261)) (_2!29841 (h!58120 lt!1824261))))))

(assert (=> b!4662994 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) lambda!200861)))

(declare-fun lt!1824610 () Unit!119436)

(assert (=> b!4662994 (= lt!1824610 lt!1824604)))

(assert (=> b!4662994 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) lambda!200861)))

(declare-fun lt!1824596 () Unit!119436)

(declare-fun Unit!119499 () Unit!119436)

(assert (=> b!4662994 (= lt!1824596 Unit!119499)))

(declare-fun res!1961747 () Bool)

(assert (=> b!4662994 (= res!1961747 (forall!11072 lt!1824261 lambda!200861))))

(declare-fun e!2909733 () Bool)

(assert (=> b!4662994 (=> (not res!1961747) (not e!2909733))))

(assert (=> b!4662994 e!2909733))

(declare-fun lt!1824600 () Unit!119436)

(declare-fun Unit!119500 () Unit!119436)

(assert (=> b!4662994 (= lt!1824600 Unit!119500)))

(declare-fun b!4662995 () Bool)

(declare-fun res!1961746 () Bool)

(assert (=> b!4662995 (=> (not res!1961746) (not e!2909735))))

(assert (=> b!4662995 (= res!1961746 (forall!11072 (toList!5253 (ListMap!4594 Nil!51958)) lambda!200862))))

(assert (=> d!1481277 e!2909735))

(declare-fun res!1961745 () Bool)

(assert (=> d!1481277 (=> (not res!1961745) (not e!2909735))))

(assert (=> d!1481277 (= res!1961745 (forall!11072 lt!1824261 lambda!200862))))

(assert (=> d!1481277 (= lt!1824609 e!2909734)))

(assert (=> d!1481277 (= c!798213 ((_ is Nil!51958) lt!1824261))))

(assert (=> d!1481277 (noDuplicateKeys!1662 lt!1824261)))

(assert (=> d!1481277 (= (addToMapMapFromBucket!1119 lt!1824261 (ListMap!4594 Nil!51958)) lt!1824609)))

(declare-fun b!4662996 () Bool)

(assert (=> b!4662996 (= e!2909733 call!325785)))

(assert (= (and d!1481277 c!798213) b!4662992))

(assert (= (and d!1481277 (not c!798213)) b!4662994))

(assert (= (and b!4662994 res!1961747) b!4662996))

(assert (= (or b!4662992 b!4662994) bm!325780))

(assert (= (or b!4662992 b!4662994) bm!325779))

(assert (= (or b!4662992 b!4662996) bm!325781))

(assert (= (and d!1481277 res!1961745) b!4662995))

(assert (= (and b!4662995 res!1961746) b!4662993))

(declare-fun m!5547347 () Bool)

(assert (=> bm!325779 m!5547347))

(declare-fun m!5547349 () Bool)

(assert (=> b!4662993 m!5547349))

(declare-fun m!5547351 () Bool)

(assert (=> bm!325781 m!5547351))

(declare-fun m!5547353 () Bool)

(assert (=> b!4662995 m!5547353))

(declare-fun m!5547355 () Bool)

(assert (=> b!4662994 m!5547355))

(declare-fun m!5547357 () Bool)

(assert (=> b!4662994 m!5547357))

(declare-fun m!5547359 () Bool)

(assert (=> b!4662994 m!5547359))

(declare-fun m!5547361 () Bool)

(assert (=> b!4662994 m!5547361))

(assert (=> b!4662994 m!5547359))

(assert (=> b!4662994 m!5547361))

(declare-fun m!5547363 () Bool)

(assert (=> b!4662994 m!5547363))

(declare-fun m!5547365 () Bool)

(assert (=> b!4662994 m!5547365))

(assert (=> b!4662994 m!5547363))

(declare-fun m!5547367 () Bool)

(assert (=> b!4662994 m!5547367))

(declare-fun m!5547373 () Bool)

(assert (=> b!4662994 m!5547373))

(assert (=> b!4662994 m!5547367))

(declare-fun m!5547375 () Bool)

(assert (=> b!4662994 m!5547375))

(declare-fun m!5547379 () Bool)

(assert (=> b!4662994 m!5547379))

(assert (=> bm!325780 m!5547269))

(declare-fun m!5547381 () Bool)

(assert (=> d!1481277 m!5547381))

(assert (=> d!1481277 m!5546953))

(assert (=> b!4662730 d!1481277))

(declare-fun d!1481281 () Bool)

(declare-fun e!2909751 () Bool)

(assert (=> d!1481281 e!2909751))

(declare-fun res!1961758 () Bool)

(assert (=> d!1481281 (=> (not res!1961758) (not e!2909751))))

(declare-fun lt!1824636 () ListMap!4593)

(assert (=> d!1481281 (= res!1961758 (contains!15133 lt!1824636 (_1!29841 lt!1824274)))))

(declare-fun lt!1824635 () List!52082)

(assert (=> d!1481281 (= lt!1824636 (ListMap!4594 lt!1824635))))

(declare-fun lt!1824637 () Unit!119436)

(declare-fun lt!1824634 () Unit!119436)

(assert (=> d!1481281 (= lt!1824637 lt!1824634)))

(assert (=> d!1481281 (= (getValueByKey!1644 lt!1824635 (_1!29841 lt!1824274)) (Some!11875 (_2!29841 lt!1824274)))))

(declare-fun lemmaContainsTupThenGetReturnValue!934 (List!52082 K!13305 V!13551) Unit!119436)

(assert (=> d!1481281 (= lt!1824634 (lemmaContainsTupThenGetReturnValue!934 lt!1824635 (_1!29841 lt!1824274) (_2!29841 lt!1824274)))))

(declare-fun insertNoDuplicatedKeys!442 (List!52082 K!13305 V!13551) List!52082)

(assert (=> d!1481281 (= lt!1824635 (insertNoDuplicatedKeys!442 (toList!5253 (addToMapMapFromBucket!1119 lt!1824261 (ListMap!4594 Nil!51958))) (_1!29841 lt!1824274) (_2!29841 lt!1824274)))))

(assert (=> d!1481281 (= (+!2002 (addToMapMapFromBucket!1119 lt!1824261 (ListMap!4594 Nil!51958)) lt!1824274) lt!1824636)))

(declare-fun b!4663019 () Bool)

(declare-fun res!1961759 () Bool)

(assert (=> b!4663019 (=> (not res!1961759) (not e!2909751))))

(assert (=> b!4663019 (= res!1961759 (= (getValueByKey!1644 (toList!5253 lt!1824636) (_1!29841 lt!1824274)) (Some!11875 (_2!29841 lt!1824274))))))

(declare-fun b!4663020 () Bool)

(declare-fun contains!15139 (List!52082 tuple2!53094) Bool)

(assert (=> b!4663020 (= e!2909751 (contains!15139 (toList!5253 lt!1824636) lt!1824274))))

(assert (= (and d!1481281 res!1961758) b!4663019))

(assert (= (and b!4663019 res!1961759) b!4663020))

(declare-fun m!5547393 () Bool)

(assert (=> d!1481281 m!5547393))

(declare-fun m!5547395 () Bool)

(assert (=> d!1481281 m!5547395))

(declare-fun m!5547397 () Bool)

(assert (=> d!1481281 m!5547397))

(declare-fun m!5547399 () Bool)

(assert (=> d!1481281 m!5547399))

(declare-fun m!5547401 () Bool)

(assert (=> b!4663019 m!5547401))

(declare-fun m!5547403 () Bool)

(assert (=> b!4663020 m!5547403))

(assert (=> b!4662730 d!1481281))

(declare-fun bs!1069143 () Bool)

(declare-fun d!1481287 () Bool)

(assert (= bs!1069143 (and d!1481287 b!4662737)))

(declare-fun lambda!200863 () Int)

(assert (=> bs!1069143 (= lambda!200863 lambda!200754)))

(declare-fun bs!1069144 () Bool)

(assert (= bs!1069144 (and d!1481287 d!1481183)))

(assert (=> bs!1069144 (= lambda!200863 lambda!200783)))

(declare-fun bs!1069145 () Bool)

(assert (= bs!1069145 (and d!1481287 d!1481267)))

(assert (=> bs!1069145 (= lambda!200863 lambda!200857)))

(declare-fun lt!1824638 () ListMap!4593)

(assert (=> d!1481287 (invariantList!1316 (toList!5253 lt!1824638))))

(declare-fun e!2909752 () ListMap!4593)

(assert (=> d!1481287 (= lt!1824638 e!2909752)))

(declare-fun c!798217 () Bool)

(assert (=> d!1481287 (= c!798217 ((_ is Cons!51959) lt!1824275))))

(assert (=> d!1481287 (forall!11071 lt!1824275 lambda!200863)))

(assert (=> d!1481287 (= (extractMap!1718 lt!1824275) lt!1824638)))

(declare-fun b!4663021 () Bool)

(assert (=> b!4663021 (= e!2909752 (addToMapMapFromBucket!1119 (_2!29842 (h!58121 lt!1824275)) (extractMap!1718 (t!359201 lt!1824275))))))

(declare-fun b!4663022 () Bool)

(assert (=> b!4663022 (= e!2909752 (ListMap!4594 Nil!51958))))

(assert (= (and d!1481287 c!798217) b!4663021))

(assert (= (and d!1481287 (not c!798217)) b!4663022))

(declare-fun m!5547405 () Bool)

(assert (=> d!1481287 m!5547405))

(declare-fun m!5547407 () Bool)

(assert (=> d!1481287 m!5547407))

(declare-fun m!5547409 () Bool)

(assert (=> b!4663021 m!5547409))

(assert (=> b!4663021 m!5547409))

(declare-fun m!5547411 () Bool)

(assert (=> b!4663021 m!5547411))

(assert (=> b!4662730 d!1481287))

(declare-fun d!1481289 () Bool)

(declare-fun res!1961760 () Bool)

(declare-fun e!2909753 () Bool)

(assert (=> d!1481289 (=> res!1961760 e!2909753)))

(assert (=> d!1481289 (= res!1961760 (not ((_ is Cons!51958) oldBucket!40)))))

(assert (=> d!1481289 (= (noDuplicateKeys!1662 oldBucket!40) e!2909753)))

(declare-fun b!4663023 () Bool)

(declare-fun e!2909754 () Bool)

(assert (=> b!4663023 (= e!2909753 e!2909754)))

(declare-fun res!1961761 () Bool)

(assert (=> b!4663023 (=> (not res!1961761) (not e!2909754))))

(assert (=> b!4663023 (= res!1961761 (not (containsKey!2776 (t!359200 oldBucket!40) (_1!29841 (h!58120 oldBucket!40)))))))

(declare-fun b!4663024 () Bool)

(assert (=> b!4663024 (= e!2909754 (noDuplicateKeys!1662 (t!359200 oldBucket!40)))))

(assert (= (and d!1481289 (not res!1961760)) b!4663023))

(assert (= (and b!4663023 res!1961761) b!4663024))

(declare-fun m!5547413 () Bool)

(assert (=> b!4663023 m!5547413))

(declare-fun m!5547415 () Bool)

(assert (=> b!4663024 m!5547415))

(assert (=> start!469844 d!1481289))

(declare-fun bs!1069146 () Bool)

(declare-fun b!4663025 () Bool)

(assert (= bs!1069146 (and b!4663025 d!1481185)))

(declare-fun lambda!200864 () Int)

(assert (=> bs!1069146 (not (= lambda!200864 lambda!200789))))

(declare-fun bs!1069147 () Bool)

(assert (= bs!1069147 (and b!4663025 b!4662994)))

(assert (=> bs!1069147 (= (= lt!1824267 lt!1824595) (= lambda!200864 lambda!200861))))

(declare-fun bs!1069148 () Bool)

(assert (= bs!1069148 (and b!4663025 d!1481197)))

(assert (=> bs!1069148 (= (= lt!1824267 lt!1824544) (= lambda!200864 lambda!200845))))

(declare-fun bs!1069149 () Bool)

(assert (= bs!1069149 (and b!4663025 d!1481277)))

(assert (=> bs!1069149 (= (= lt!1824267 lt!1824609) (= lambda!200864 lambda!200862))))

(declare-fun bs!1069150 () Bool)

(assert (= bs!1069150 (and b!4663025 b!4662958)))

(assert (=> bs!1069150 (= (= lt!1824267 (ListMap!4594 Nil!51958)) (= lambda!200864 lambda!200843))))

(declare-fun bs!1069151 () Bool)

(assert (= bs!1069151 (and b!4663025 b!4662956)))

(assert (=> bs!1069151 (= (= lt!1824267 (ListMap!4594 Nil!51958)) (= lambda!200864 lambda!200842))))

(declare-fun bs!1069152 () Bool)

(assert (= bs!1069152 (and b!4663025 b!4662992)))

(assert (=> bs!1069152 (= (= lt!1824267 (ListMap!4594 Nil!51958)) (= lambda!200864 lambda!200859))))

(assert (=> bs!1069147 (= (= lt!1824267 (ListMap!4594 Nil!51958)) (= lambda!200864 lambda!200860))))

(declare-fun bs!1069153 () Bool)

(assert (= bs!1069153 (and b!4663025 d!1481193)))

(assert (=> bs!1069153 (not (= lambda!200864 lambda!200793))))

(assert (=> bs!1069150 (= (= lt!1824267 lt!1824530) (= lambda!200864 lambda!200844))))

(assert (=> b!4663025 true))

(declare-fun bs!1069154 () Bool)

(declare-fun b!4663027 () Bool)

(assert (= bs!1069154 (and b!4663027 d!1481185)))

(declare-fun lambda!200865 () Int)

(assert (=> bs!1069154 (not (= lambda!200865 lambda!200789))))

(declare-fun bs!1069155 () Bool)

(assert (= bs!1069155 (and b!4663027 b!4662994)))

(assert (=> bs!1069155 (= (= lt!1824267 lt!1824595) (= lambda!200865 lambda!200861))))

(declare-fun bs!1069156 () Bool)

(assert (= bs!1069156 (and b!4663027 d!1481197)))

(assert (=> bs!1069156 (= (= lt!1824267 lt!1824544) (= lambda!200865 lambda!200845))))

(declare-fun bs!1069157 () Bool)

(assert (= bs!1069157 (and b!4663027 d!1481277)))

(assert (=> bs!1069157 (= (= lt!1824267 lt!1824609) (= lambda!200865 lambda!200862))))

(declare-fun bs!1069158 () Bool)

(assert (= bs!1069158 (and b!4663027 b!4662958)))

(assert (=> bs!1069158 (= (= lt!1824267 (ListMap!4594 Nil!51958)) (= lambda!200865 lambda!200843))))

(declare-fun bs!1069159 () Bool)

(assert (= bs!1069159 (and b!4663027 b!4662956)))

(assert (=> bs!1069159 (= (= lt!1824267 (ListMap!4594 Nil!51958)) (= lambda!200865 lambda!200842))))

(declare-fun bs!1069160 () Bool)

(assert (= bs!1069160 (and b!4663027 b!4662992)))

(assert (=> bs!1069160 (= (= lt!1824267 (ListMap!4594 Nil!51958)) (= lambda!200865 lambda!200859))))

(assert (=> bs!1069155 (= (= lt!1824267 (ListMap!4594 Nil!51958)) (= lambda!200865 lambda!200860))))

(declare-fun bs!1069161 () Bool)

(assert (= bs!1069161 (and b!4663027 b!4663025)))

(assert (=> bs!1069161 (= lambda!200865 lambda!200864)))

(declare-fun bs!1069162 () Bool)

(assert (= bs!1069162 (and b!4663027 d!1481193)))

(assert (=> bs!1069162 (not (= lambda!200865 lambda!200793))))

(assert (=> bs!1069158 (= (= lt!1824267 lt!1824530) (= lambda!200865 lambda!200844))))

(assert (=> b!4663027 true))

(declare-fun lambda!200866 () Int)

(assert (=> bs!1069154 (not (= lambda!200866 lambda!200789))))

(declare-fun lt!1824644 () ListMap!4593)

(assert (=> bs!1069155 (= (= lt!1824644 lt!1824595) (= lambda!200866 lambda!200861))))

(assert (=> bs!1069156 (= (= lt!1824644 lt!1824544) (= lambda!200866 lambda!200845))))

(assert (=> bs!1069157 (= (= lt!1824644 lt!1824609) (= lambda!200866 lambda!200862))))

(assert (=> bs!1069158 (= (= lt!1824644 (ListMap!4594 Nil!51958)) (= lambda!200866 lambda!200843))))

(assert (=> bs!1069159 (= (= lt!1824644 (ListMap!4594 Nil!51958)) (= lambda!200866 lambda!200842))))

(assert (=> bs!1069160 (= (= lt!1824644 (ListMap!4594 Nil!51958)) (= lambda!200866 lambda!200859))))

(assert (=> bs!1069155 (= (= lt!1824644 (ListMap!4594 Nil!51958)) (= lambda!200866 lambda!200860))))

(assert (=> b!4663027 (= (= lt!1824644 lt!1824267) (= lambda!200866 lambda!200865))))

(assert (=> bs!1069161 (= (= lt!1824644 lt!1824267) (= lambda!200866 lambda!200864))))

(assert (=> bs!1069162 (not (= lambda!200866 lambda!200793))))

(assert (=> bs!1069158 (= (= lt!1824644 lt!1824530) (= lambda!200866 lambda!200844))))

(assert (=> b!4663027 true))

(declare-fun bs!1069163 () Bool)

(declare-fun d!1481291 () Bool)

(assert (= bs!1069163 (and d!1481291 d!1481185)))

(declare-fun lambda!200867 () Int)

(assert (=> bs!1069163 (not (= lambda!200867 lambda!200789))))

(declare-fun bs!1069164 () Bool)

(assert (= bs!1069164 (and d!1481291 b!4662994)))

(declare-fun lt!1824658 () ListMap!4593)

(assert (=> bs!1069164 (= (= lt!1824658 lt!1824595) (= lambda!200867 lambda!200861))))

(declare-fun bs!1069165 () Bool)

(assert (= bs!1069165 (and d!1481291 d!1481197)))

(assert (=> bs!1069165 (= (= lt!1824658 lt!1824544) (= lambda!200867 lambda!200845))))

(declare-fun bs!1069166 () Bool)

(assert (= bs!1069166 (and d!1481291 d!1481277)))

(assert (=> bs!1069166 (= (= lt!1824658 lt!1824609) (= lambda!200867 lambda!200862))))

(declare-fun bs!1069167 () Bool)

(assert (= bs!1069167 (and d!1481291 b!4663027)))

(assert (=> bs!1069167 (= (= lt!1824658 lt!1824644) (= lambda!200867 lambda!200866))))

(declare-fun bs!1069168 () Bool)

(assert (= bs!1069168 (and d!1481291 b!4662958)))

(assert (=> bs!1069168 (= (= lt!1824658 (ListMap!4594 Nil!51958)) (= lambda!200867 lambda!200843))))

(declare-fun bs!1069169 () Bool)

(assert (= bs!1069169 (and d!1481291 b!4662956)))

(assert (=> bs!1069169 (= (= lt!1824658 (ListMap!4594 Nil!51958)) (= lambda!200867 lambda!200842))))

(declare-fun bs!1069170 () Bool)

(assert (= bs!1069170 (and d!1481291 b!4662992)))

(assert (=> bs!1069170 (= (= lt!1824658 (ListMap!4594 Nil!51958)) (= lambda!200867 lambda!200859))))

(assert (=> bs!1069164 (= (= lt!1824658 (ListMap!4594 Nil!51958)) (= lambda!200867 lambda!200860))))

(assert (=> bs!1069167 (= (= lt!1824658 lt!1824267) (= lambda!200867 lambda!200865))))

(declare-fun bs!1069171 () Bool)

(assert (= bs!1069171 (and d!1481291 b!4663025)))

(assert (=> bs!1069171 (= (= lt!1824658 lt!1824267) (= lambda!200867 lambda!200864))))

(declare-fun bs!1069172 () Bool)

(assert (= bs!1069172 (and d!1481291 d!1481193)))

(assert (=> bs!1069172 (not (= lambda!200867 lambda!200793))))

(assert (=> bs!1069168 (= (= lt!1824658 lt!1824530) (= lambda!200867 lambda!200844))))

(assert (=> d!1481291 true))

(declare-fun e!2909756 () ListMap!4593)

(assert (=> b!4663025 (= e!2909756 lt!1824267)))

(declare-fun lt!1824648 () Unit!119436)

(declare-fun call!325789 () Unit!119436)

(assert (=> b!4663025 (= lt!1824648 call!325789)))

(declare-fun call!325787 () Bool)

(assert (=> b!4663025 call!325787))

(declare-fun lt!1824651 () Unit!119436)

(assert (=> b!4663025 (= lt!1824651 lt!1824648)))

(declare-fun call!325788 () Bool)

(assert (=> b!4663025 call!325788))

(declare-fun lt!1824640 () Unit!119436)

(declare-fun Unit!119501 () Unit!119436)

(assert (=> b!4663025 (= lt!1824640 Unit!119501)))

(declare-fun bm!325782 () Bool)

(declare-fun c!798218 () Bool)

(assert (=> bm!325782 (= call!325787 (forall!11072 (toList!5253 lt!1824267) (ite c!798218 lambda!200864 lambda!200865)))))

(declare-fun bm!325783 () Bool)

(assert (=> bm!325783 (= call!325789 (lemmaContainsAllItsOwnKeys!616 lt!1824267))))

(declare-fun bm!325784 () Bool)

(assert (=> bm!325784 (= call!325788 (forall!11072 (toList!5253 lt!1824267) (ite c!798218 lambda!200864 lambda!200866)))))

(declare-fun b!4663026 () Bool)

(declare-fun e!2909757 () Bool)

(assert (=> b!4663026 (= e!2909757 (invariantList!1316 (toList!5253 lt!1824658)))))

(assert (=> b!4663027 (= e!2909756 lt!1824644)))

(declare-fun lt!1824650 () ListMap!4593)

(assert (=> b!4663027 (= lt!1824650 (+!2002 lt!1824267 (h!58120 oldBucket!40)))))

(assert (=> b!4663027 (= lt!1824644 (addToMapMapFromBucket!1119 (t!359200 oldBucket!40) (+!2002 lt!1824267 (h!58120 oldBucket!40))))))

(declare-fun lt!1824646 () Unit!119436)

(assert (=> b!4663027 (= lt!1824646 call!325789)))

(assert (=> b!4663027 call!325787))

(declare-fun lt!1824654 () Unit!119436)

(assert (=> b!4663027 (= lt!1824654 lt!1824646)))

(assert (=> b!4663027 (forall!11072 (toList!5253 lt!1824650) lambda!200866)))

(declare-fun lt!1824655 () Unit!119436)

(declare-fun Unit!119503 () Unit!119436)

(assert (=> b!4663027 (= lt!1824655 Unit!119503)))

(assert (=> b!4663027 (forall!11072 (t!359200 oldBucket!40) lambda!200866)))

(declare-fun lt!1824643 () Unit!119436)

(declare-fun Unit!119504 () Unit!119436)

(assert (=> b!4663027 (= lt!1824643 Unit!119504)))

(declare-fun lt!1824656 () Unit!119436)

(declare-fun Unit!119505 () Unit!119436)

(assert (=> b!4663027 (= lt!1824656 Unit!119505)))

(declare-fun lt!1824641 () Unit!119436)

(assert (=> b!4663027 (= lt!1824641 (forallContained!3272 (toList!5253 lt!1824650) lambda!200866 (h!58120 oldBucket!40)))))

(assert (=> b!4663027 (contains!15133 lt!1824650 (_1!29841 (h!58120 oldBucket!40)))))

(declare-fun lt!1824657 () Unit!119436)

(declare-fun Unit!119506 () Unit!119436)

(assert (=> b!4663027 (= lt!1824657 Unit!119506)))

(assert (=> b!4663027 (contains!15133 lt!1824644 (_1!29841 (h!58120 oldBucket!40)))))

(declare-fun lt!1824639 () Unit!119436)

(declare-fun Unit!119507 () Unit!119436)

(assert (=> b!4663027 (= lt!1824639 Unit!119507)))

(assert (=> b!4663027 (forall!11072 oldBucket!40 lambda!200866)))

(declare-fun lt!1824652 () Unit!119436)

(declare-fun Unit!119508 () Unit!119436)

(assert (=> b!4663027 (= lt!1824652 Unit!119508)))

(assert (=> b!4663027 (forall!11072 (toList!5253 lt!1824650) lambda!200866)))

(declare-fun lt!1824642 () Unit!119436)

(declare-fun Unit!119509 () Unit!119436)

(assert (=> b!4663027 (= lt!1824642 Unit!119509)))

(declare-fun lt!1824647 () Unit!119436)

(declare-fun Unit!119510 () Unit!119436)

(assert (=> b!4663027 (= lt!1824647 Unit!119510)))

(declare-fun lt!1824653 () Unit!119436)

(assert (=> b!4663027 (= lt!1824653 (addForallContainsKeyThenBeforeAdding!615 lt!1824267 lt!1824644 (_1!29841 (h!58120 oldBucket!40)) (_2!29841 (h!58120 oldBucket!40))))))

(assert (=> b!4663027 (forall!11072 (toList!5253 lt!1824267) lambda!200866)))

(declare-fun lt!1824659 () Unit!119436)

(assert (=> b!4663027 (= lt!1824659 lt!1824653)))

(assert (=> b!4663027 (forall!11072 (toList!5253 lt!1824267) lambda!200866)))

(declare-fun lt!1824645 () Unit!119436)

(declare-fun Unit!119511 () Unit!119436)

(assert (=> b!4663027 (= lt!1824645 Unit!119511)))

(declare-fun res!1961764 () Bool)

(assert (=> b!4663027 (= res!1961764 (forall!11072 oldBucket!40 lambda!200866))))

(declare-fun e!2909755 () Bool)

(assert (=> b!4663027 (=> (not res!1961764) (not e!2909755))))

(assert (=> b!4663027 e!2909755))

(declare-fun lt!1824649 () Unit!119436)

(declare-fun Unit!119512 () Unit!119436)

(assert (=> b!4663027 (= lt!1824649 Unit!119512)))

(declare-fun b!4663028 () Bool)

(declare-fun res!1961763 () Bool)

(assert (=> b!4663028 (=> (not res!1961763) (not e!2909757))))

(assert (=> b!4663028 (= res!1961763 (forall!11072 (toList!5253 lt!1824267) lambda!200867))))

(assert (=> d!1481291 e!2909757))

(declare-fun res!1961762 () Bool)

(assert (=> d!1481291 (=> (not res!1961762) (not e!2909757))))

(assert (=> d!1481291 (= res!1961762 (forall!11072 oldBucket!40 lambda!200867))))

(assert (=> d!1481291 (= lt!1824658 e!2909756)))

(assert (=> d!1481291 (= c!798218 ((_ is Nil!51958) oldBucket!40))))

(assert (=> d!1481291 (noDuplicateKeys!1662 oldBucket!40)))

(assert (=> d!1481291 (= (addToMapMapFromBucket!1119 oldBucket!40 lt!1824267) lt!1824658)))

(declare-fun b!4663029 () Bool)

(assert (=> b!4663029 (= e!2909755 call!325788)))

(assert (= (and d!1481291 c!798218) b!4663025))

(assert (= (and d!1481291 (not c!798218)) b!4663027))

(assert (= (and b!4663027 res!1961764) b!4663029))

(assert (= (or b!4663025 b!4663027) bm!325783))

(assert (= (or b!4663025 b!4663027) bm!325782))

(assert (= (or b!4663025 b!4663029) bm!325784))

(assert (= (and d!1481291 res!1961762) b!4663028))

(assert (= (and b!4663028 res!1961763) b!4663026))

(declare-fun m!5547417 () Bool)

(assert (=> bm!325782 m!5547417))

(declare-fun m!5547419 () Bool)

(assert (=> b!4663026 m!5547419))

(declare-fun m!5547421 () Bool)

(assert (=> bm!325784 m!5547421))

(declare-fun m!5547423 () Bool)

(assert (=> b!4663028 m!5547423))

(declare-fun m!5547425 () Bool)

(assert (=> b!4663027 m!5547425))

(declare-fun m!5547427 () Bool)

(assert (=> b!4663027 m!5547427))

(declare-fun m!5547429 () Bool)

(assert (=> b!4663027 m!5547429))

(declare-fun m!5547431 () Bool)

(assert (=> b!4663027 m!5547431))

(assert (=> b!4663027 m!5547429))

(assert (=> b!4663027 m!5547431))

(declare-fun m!5547433 () Bool)

(assert (=> b!4663027 m!5547433))

(declare-fun m!5547435 () Bool)

(assert (=> b!4663027 m!5547435))

(assert (=> b!4663027 m!5547433))

(declare-fun m!5547437 () Bool)

(assert (=> b!4663027 m!5547437))

(declare-fun m!5547439 () Bool)

(assert (=> b!4663027 m!5547439))

(assert (=> b!4663027 m!5547437))

(declare-fun m!5547441 () Bool)

(assert (=> b!4663027 m!5547441))

(declare-fun m!5547443 () Bool)

(assert (=> b!4663027 m!5547443))

(declare-fun m!5547445 () Bool)

(assert (=> bm!325783 m!5547445))

(declare-fun m!5547447 () Bool)

(assert (=> d!1481291 m!5547447))

(assert (=> d!1481291 m!5546917))

(assert (=> b!4662729 d!1481291))

(declare-fun bs!1069173 () Bool)

(declare-fun d!1481293 () Bool)

(assert (= bs!1069173 (and d!1481293 b!4662737)))

(declare-fun lambda!200868 () Int)

(assert (=> bs!1069173 (= lambda!200868 lambda!200754)))

(declare-fun bs!1069174 () Bool)

(assert (= bs!1069174 (and d!1481293 d!1481183)))

(assert (=> bs!1069174 (= lambda!200868 lambda!200783)))

(declare-fun bs!1069175 () Bool)

(assert (= bs!1069175 (and d!1481293 d!1481267)))

(assert (=> bs!1069175 (= lambda!200868 lambda!200857)))

(declare-fun bs!1069176 () Bool)

(assert (= bs!1069176 (and d!1481293 d!1481287)))

(assert (=> bs!1069176 (= lambda!200868 lambda!200863)))

(declare-fun lt!1824660 () ListMap!4593)

(assert (=> d!1481293 (invariantList!1316 (toList!5253 lt!1824660))))

(declare-fun e!2909758 () ListMap!4593)

(assert (=> d!1481293 (= lt!1824660 e!2909758)))

(declare-fun c!798219 () Bool)

(assert (=> d!1481293 (= c!798219 ((_ is Cons!51959) Nil!51959))))

(assert (=> d!1481293 (forall!11071 Nil!51959 lambda!200868)))

(assert (=> d!1481293 (= (extractMap!1718 Nil!51959) lt!1824660)))

(declare-fun b!4663030 () Bool)

(assert (=> b!4663030 (= e!2909758 (addToMapMapFromBucket!1119 (_2!29842 (h!58121 Nil!51959)) (extractMap!1718 (t!359201 Nil!51959))))))

(declare-fun b!4663031 () Bool)

(assert (=> b!4663031 (= e!2909758 (ListMap!4594 Nil!51958))))

(assert (= (and d!1481293 c!798219) b!4663030))

(assert (= (and d!1481293 (not c!798219)) b!4663031))

(declare-fun m!5547449 () Bool)

(assert (=> d!1481293 m!5547449))

(declare-fun m!5547451 () Bool)

(assert (=> d!1481293 m!5547451))

(declare-fun m!5547453 () Bool)

(assert (=> b!4663030 m!5547453))

(assert (=> b!4663030 m!5547453))

(declare-fun m!5547455 () Bool)

(assert (=> b!4663030 m!5547455))

(assert (=> b!4662729 d!1481293))

(declare-fun d!1481295 () Bool)

(declare-fun res!1961765 () Bool)

(declare-fun e!2909759 () Bool)

(assert (=> d!1481295 (=> res!1961765 e!2909759)))

(assert (=> d!1481295 (= res!1961765 (not ((_ is Cons!51958) newBucket!224)))))

(assert (=> d!1481295 (= (noDuplicateKeys!1662 newBucket!224) e!2909759)))

(declare-fun b!4663032 () Bool)

(declare-fun e!2909760 () Bool)

(assert (=> b!4663032 (= e!2909759 e!2909760)))

(declare-fun res!1961766 () Bool)

(assert (=> b!4663032 (=> (not res!1961766) (not e!2909760))))

(assert (=> b!4663032 (= res!1961766 (not (containsKey!2776 (t!359200 newBucket!224) (_1!29841 (h!58120 newBucket!224)))))))

(declare-fun b!4663033 () Bool)

(assert (=> b!4663033 (= e!2909760 (noDuplicateKeys!1662 (t!359200 newBucket!224)))))

(assert (= (and d!1481295 (not res!1961765)) b!4663032))

(assert (= (and b!4663032 res!1961766) b!4663033))

(declare-fun m!5547457 () Bool)

(assert (=> b!4663032 m!5547457))

(declare-fun m!5547459 () Bool)

(assert (=> b!4663033 m!5547459))

(assert (=> b!4662728 d!1481295))

(declare-fun b!4663036 () Bool)

(declare-fun e!2909762 () List!52082)

(assert (=> b!4663036 (= e!2909762 (Cons!51958 (h!58120 (t!359200 oldBucket!40)) (removePairForKey!1285 (t!359200 (t!359200 oldBucket!40)) key!4968)))))

(declare-fun b!4663035 () Bool)

(declare-fun e!2909761 () List!52082)

(assert (=> b!4663035 (= e!2909761 e!2909762)))

(declare-fun c!798221 () Bool)

(assert (=> b!4663035 (= c!798221 ((_ is Cons!51958) (t!359200 oldBucket!40)))))

(declare-fun b!4663037 () Bool)

(assert (=> b!4663037 (= e!2909762 Nil!51958)))

(declare-fun b!4663034 () Bool)

(assert (=> b!4663034 (= e!2909761 (t!359200 (t!359200 oldBucket!40)))))

(declare-fun d!1481297 () Bool)

(declare-fun lt!1824661 () List!52082)

(assert (=> d!1481297 (not (containsKey!2776 lt!1824661 key!4968))))

(assert (=> d!1481297 (= lt!1824661 e!2909761)))

(declare-fun c!798220 () Bool)

(assert (=> d!1481297 (= c!798220 (and ((_ is Cons!51958) (t!359200 oldBucket!40)) (= (_1!29841 (h!58120 (t!359200 oldBucket!40))) key!4968)))))

(assert (=> d!1481297 (noDuplicateKeys!1662 (t!359200 oldBucket!40))))

(assert (=> d!1481297 (= (removePairForKey!1285 (t!359200 oldBucket!40) key!4968) lt!1824661)))

(assert (= (and d!1481297 c!798220) b!4663034))

(assert (= (and d!1481297 (not c!798220)) b!4663035))

(assert (= (and b!4663035 c!798221) b!4663036))

(assert (= (and b!4663035 (not c!798221)) b!4663037))

(declare-fun m!5547461 () Bool)

(assert (=> b!4663036 m!5547461))

(declare-fun m!5547463 () Bool)

(assert (=> d!1481297 m!5547463))

(assert (=> d!1481297 m!5547415))

(assert (=> b!4662738 d!1481297))

(declare-fun d!1481299 () Bool)

(declare-fun hash!3819 (Hashable!6059 K!13305) (_ BitVec 64))

(assert (=> d!1481299 (= (hash!3817 hashF!1389 key!4968) (hash!3819 hashF!1389 key!4968))))

(declare-fun bs!1069177 () Bool)

(assert (= bs!1069177 d!1481299))

(declare-fun m!5547465 () Bool)

(assert (=> bs!1069177 m!5547465))

(assert (=> b!4662727 d!1481299))

(declare-fun d!1481301 () Bool)

(declare-datatypes ((Option!11878 0))(
  ( (None!11877) (Some!11877 (v!46199 List!52082)) )
))
(declare-fun get!17313 (Option!11878) List!52082)

(declare-fun getValueByKey!1646 (List!52083 (_ BitVec 64)) Option!11878)

(assert (=> d!1481301 (= (apply!12265 lt!1824276 lt!1824262) (get!17313 (getValueByKey!1646 (toList!5254 lt!1824276) lt!1824262)))))

(declare-fun bs!1069178 () Bool)

(assert (= bs!1069178 d!1481301))

(declare-fun m!5547467 () Bool)

(assert (=> bs!1069178 m!5547467))

(assert (=> bs!1069178 m!5547467))

(declare-fun m!5547469 () Bool)

(assert (=> bs!1069178 m!5547469))

(assert (=> b!4662737 d!1481301))

(declare-fun d!1481303 () Bool)

(declare-fun res!1961771 () Bool)

(declare-fun e!2909767 () Bool)

(assert (=> d!1481303 (=> res!1961771 e!2909767)))

(assert (=> d!1481303 (= res!1961771 (and ((_ is Cons!51958) (t!359200 oldBucket!40)) (= (_1!29841 (h!58120 (t!359200 oldBucket!40))) key!4968)))))

(assert (=> d!1481303 (= (containsKey!2776 (t!359200 oldBucket!40) key!4968) e!2909767)))

(declare-fun b!4663042 () Bool)

(declare-fun e!2909768 () Bool)

(assert (=> b!4663042 (= e!2909767 e!2909768)))

(declare-fun res!1961772 () Bool)

(assert (=> b!4663042 (=> (not res!1961772) (not e!2909768))))

(assert (=> b!4663042 (= res!1961772 ((_ is Cons!51958) (t!359200 oldBucket!40)))))

(declare-fun b!4663043 () Bool)

(assert (=> b!4663043 (= e!2909768 (containsKey!2776 (t!359200 (t!359200 oldBucket!40)) key!4968))))

(assert (= (and d!1481303 (not res!1961771)) b!4663042))

(assert (= (and b!4663042 res!1961772) b!4663043))

(declare-fun m!5547471 () Bool)

(assert (=> b!4663043 m!5547471))

(assert (=> b!4662737 d!1481303))

(declare-fun d!1481305 () Bool)

(declare-fun dynLambda!21622 (Int tuple2!53096) Bool)

(assert (=> d!1481305 (dynLambda!21622 lambda!200754 lt!1824269)))

(declare-fun lt!1824664 () Unit!119436)

(declare-fun choose!32164 (List!52083 Int tuple2!53096) Unit!119436)

(assert (=> d!1481305 (= lt!1824664 (choose!32164 lt!1824263 lambda!200754 lt!1824269))))

(declare-fun e!2909771 () Bool)

(assert (=> d!1481305 e!2909771))

(declare-fun res!1961775 () Bool)

(assert (=> d!1481305 (=> (not res!1961775) (not e!2909771))))

(assert (=> d!1481305 (= res!1961775 (forall!11071 lt!1824263 lambda!200754))))

(assert (=> d!1481305 (= (forallContained!3270 lt!1824263 lambda!200754 lt!1824269) lt!1824664)))

(declare-fun b!4663046 () Bool)

(assert (=> b!4663046 (= e!2909771 (contains!15134 lt!1824263 lt!1824269))))

(assert (= (and d!1481305 res!1961775) b!4663046))

(declare-fun b_lambda!175259 () Bool)

(assert (=> (not b_lambda!175259) (not d!1481305)))

(declare-fun m!5547473 () Bool)

(assert (=> d!1481305 m!5547473))

(declare-fun m!5547475 () Bool)

(assert (=> d!1481305 m!5547475))

(declare-fun m!5547477 () Bool)

(assert (=> d!1481305 m!5547477))

(assert (=> b!4663046 m!5546883))

(assert (=> b!4662737 d!1481305))

(declare-fun d!1481307 () Bool)

(declare-fun res!1961776 () Bool)

(declare-fun e!2909772 () Bool)

(assert (=> d!1481307 (=> res!1961776 e!2909772)))

(assert (=> d!1481307 (= res!1961776 (and ((_ is Cons!51958) oldBucket!40) (= (_1!29841 (h!58120 oldBucket!40)) key!4968)))))

(assert (=> d!1481307 (= (containsKey!2776 oldBucket!40 key!4968) e!2909772)))

(declare-fun b!4663047 () Bool)

(declare-fun e!2909773 () Bool)

(assert (=> b!4663047 (= e!2909772 e!2909773)))

(declare-fun res!1961777 () Bool)

(assert (=> b!4663047 (=> (not res!1961777) (not e!2909773))))

(assert (=> b!4663047 (= res!1961777 ((_ is Cons!51958) oldBucket!40))))

(declare-fun b!4663048 () Bool)

(assert (=> b!4663048 (= e!2909773 (containsKey!2776 (t!359200 oldBucket!40) key!4968))))

(assert (= (and d!1481307 (not res!1961776)) b!4663047))

(assert (= (and b!4663047 res!1961777) b!4663048))

(assert (=> b!4663048 m!5546897))

(assert (=> b!4662737 d!1481307))

(declare-fun d!1481309 () Bool)

(declare-fun isEmpty!29035 (Option!11874) Bool)

(assert (=> d!1481309 (= (isDefined!9139 (getPair!390 lt!1824265 key!4968)) (not (isEmpty!29035 (getPair!390 lt!1824265 key!4968))))))

(declare-fun bs!1069179 () Bool)

(assert (= bs!1069179 d!1481309))

(assert (=> bs!1069179 m!5546891))

(declare-fun m!5547479 () Bool)

(assert (=> bs!1069179 m!5547479))

(assert (=> b!4662737 d!1481309))

(declare-fun d!1481311 () Bool)

(assert (=> d!1481311 (contains!15134 (toList!5254 lt!1824276) (tuple2!53097 lt!1824262 lt!1824265))))

(declare-fun lt!1824667 () Unit!119436)

(declare-fun choose!32165 (ListLongMap!3807 (_ BitVec 64) List!52082) Unit!119436)

(assert (=> d!1481311 (= lt!1824667 (choose!32165 lt!1824276 lt!1824262 lt!1824265))))

(assert (=> d!1481311 (contains!15135 lt!1824276 lt!1824262)))

(assert (=> d!1481311 (= (lemmaGetValueImpliesTupleContained!195 lt!1824276 lt!1824262 lt!1824265) lt!1824667)))

(declare-fun bs!1069180 () Bool)

(assert (= bs!1069180 d!1481311))

(declare-fun m!5547481 () Bool)

(assert (=> bs!1069180 m!5547481))

(declare-fun m!5547483 () Bool)

(assert (=> bs!1069180 m!5547483))

(assert (=> bs!1069180 m!5546881))

(assert (=> b!4662737 d!1481311))

(declare-fun d!1481313 () Bool)

(declare-fun lt!1824670 () Bool)

(declare-fun content!9031 (List!52083) (InoxSet tuple2!53096))

(assert (=> d!1481313 (= lt!1824670 (select (content!9031 lt!1824263) lt!1824269))))

(declare-fun e!2909778 () Bool)

(assert (=> d!1481313 (= lt!1824670 e!2909778)))

(declare-fun res!1961782 () Bool)

(assert (=> d!1481313 (=> (not res!1961782) (not e!2909778))))

(assert (=> d!1481313 (= res!1961782 ((_ is Cons!51959) lt!1824263))))

(assert (=> d!1481313 (= (contains!15134 lt!1824263 lt!1824269) lt!1824670)))

(declare-fun b!4663054 () Bool)

(declare-fun e!2909779 () Bool)

(assert (=> b!4663054 (= e!2909778 e!2909779)))

(declare-fun res!1961783 () Bool)

(assert (=> b!4663054 (=> res!1961783 e!2909779)))

(assert (=> b!4663054 (= res!1961783 (= (h!58121 lt!1824263) lt!1824269))))

(declare-fun b!4663055 () Bool)

(assert (=> b!4663055 (= e!2909779 (contains!15134 (t!359201 lt!1824263) lt!1824269))))

(assert (= (and d!1481313 res!1961782) b!4663054))

(assert (= (and b!4663054 (not res!1961783)) b!4663055))

(declare-fun m!5547485 () Bool)

(assert (=> d!1481313 m!5547485))

(declare-fun m!5547487 () Bool)

(assert (=> d!1481313 m!5547487))

(declare-fun m!5547489 () Bool)

(assert (=> b!4663055 m!5547489))

(assert (=> b!4662737 d!1481313))

(declare-fun d!1481315 () Bool)

(assert (=> d!1481315 (containsKey!2776 oldBucket!40 key!4968)))

(declare-fun lt!1824673 () Unit!119436)

(declare-fun choose!32166 (List!52082 K!13305 Hashable!6059) Unit!119436)

(assert (=> d!1481315 (= lt!1824673 (choose!32166 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1481315 (noDuplicateKeys!1662 oldBucket!40)))

(assert (=> d!1481315 (= (lemmaGetPairDefinedThenContainsKey!140 oldBucket!40 key!4968 hashF!1389) lt!1824673)))

(declare-fun bs!1069181 () Bool)

(assert (= bs!1069181 d!1481315))

(assert (=> bs!1069181 m!5546889))

(declare-fun m!5547491 () Bool)

(assert (=> bs!1069181 m!5547491))

(assert (=> bs!1069181 m!5546917))

(assert (=> b!4662737 d!1481315))

(declare-fun bs!1069182 () Bool)

(declare-fun d!1481317 () Bool)

(assert (= bs!1069182 (and d!1481317 d!1481287)))

(declare-fun lambda!200871 () Int)

(assert (=> bs!1069182 (= lambda!200871 lambda!200863)))

(declare-fun bs!1069183 () Bool)

(assert (= bs!1069183 (and d!1481317 d!1481267)))

(assert (=> bs!1069183 (= lambda!200871 lambda!200857)))

(declare-fun bs!1069184 () Bool)

(assert (= bs!1069184 (and d!1481317 b!4662737)))

(assert (=> bs!1069184 (= lambda!200871 lambda!200754)))

(declare-fun bs!1069185 () Bool)

(assert (= bs!1069185 (and d!1481317 d!1481293)))

(assert (=> bs!1069185 (= lambda!200871 lambda!200868)))

(declare-fun bs!1069186 () Bool)

(assert (= bs!1069186 (and d!1481317 d!1481183)))

(assert (=> bs!1069186 (= lambda!200871 lambda!200783)))

(assert (=> d!1481317 (contains!15135 lt!1824276 (hash!3817 hashF!1389 key!4968))))

(declare-fun lt!1824676 () Unit!119436)

(declare-fun choose!32167 (ListLongMap!3807 K!13305 Hashable!6059) Unit!119436)

(assert (=> d!1481317 (= lt!1824676 (choose!32167 lt!1824276 key!4968 hashF!1389))))

(assert (=> d!1481317 (forall!11071 (toList!5254 lt!1824276) lambda!200871)))

(assert (=> d!1481317 (= (lemmaInGenMapThenLongMapContainsHash!596 lt!1824276 key!4968 hashF!1389) lt!1824676)))

(declare-fun bs!1069187 () Bool)

(assert (= bs!1069187 d!1481317))

(assert (=> bs!1069187 m!5546919))

(assert (=> bs!1069187 m!5546919))

(declare-fun m!5547493 () Bool)

(assert (=> bs!1069187 m!5547493))

(declare-fun m!5547495 () Bool)

(assert (=> bs!1069187 m!5547495))

(declare-fun m!5547497 () Bool)

(assert (=> bs!1069187 m!5547497))

(assert (=> b!4662737 d!1481317))

(declare-fun bs!1069188 () Bool)

(declare-fun d!1481319 () Bool)

(assert (= bs!1069188 (and d!1481319 d!1481287)))

(declare-fun lambda!200878 () Int)

(assert (=> bs!1069188 (= lambda!200878 lambda!200863)))

(declare-fun bs!1069189 () Bool)

(assert (= bs!1069189 (and d!1481319 d!1481267)))

(assert (=> bs!1069189 (= lambda!200878 lambda!200857)))

(declare-fun bs!1069190 () Bool)

(assert (= bs!1069190 (and d!1481319 d!1481317)))

(assert (=> bs!1069190 (= lambda!200878 lambda!200871)))

(declare-fun bs!1069191 () Bool)

(assert (= bs!1069191 (and d!1481319 b!4662737)))

(assert (=> bs!1069191 (= lambda!200878 lambda!200754)))

(declare-fun bs!1069192 () Bool)

(assert (= bs!1069192 (and d!1481319 d!1481293)))

(assert (=> bs!1069192 (= lambda!200878 lambda!200868)))

(declare-fun bs!1069193 () Bool)

(assert (= bs!1069193 (and d!1481319 d!1481183)))

(assert (=> bs!1069193 (= lambda!200878 lambda!200783)))

(declare-fun b!4663064 () Bool)

(declare-fun res!1961794 () Bool)

(declare-fun e!2909785 () Bool)

(assert (=> b!4663064 (=> (not res!1961794) (not e!2909785))))

(declare-fun allKeysSameHashInMap!1618 (ListLongMap!3807 Hashable!6059) Bool)

(assert (=> b!4663064 (= res!1961794 (allKeysSameHashInMap!1618 lt!1824276 hashF!1389))))

(declare-fun b!4663066 () Bool)

(assert (=> b!4663066 (= e!2909785 (isDefined!9139 (getPair!390 (apply!12265 lt!1824276 (hash!3817 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1824695 () Unit!119436)

(assert (=> b!4663066 (= lt!1824695 (forallContained!3270 (toList!5254 lt!1824276) lambda!200878 (tuple2!53097 (hash!3817 hashF!1389 key!4968) (apply!12265 lt!1824276 (hash!3817 hashF!1389 key!4968)))))))

(declare-fun lt!1824696 () Unit!119436)

(declare-fun lt!1824698 () Unit!119436)

(assert (=> b!4663066 (= lt!1824696 lt!1824698)))

(declare-fun lt!1824694 () (_ BitVec 64))

(declare-fun lt!1824693 () List!52082)

(assert (=> b!4663066 (contains!15134 (toList!5254 lt!1824276) (tuple2!53097 lt!1824694 lt!1824693))))

(assert (=> b!4663066 (= lt!1824698 (lemmaGetValueImpliesTupleContained!195 lt!1824276 lt!1824694 lt!1824693))))

(declare-fun e!2909784 () Bool)

(assert (=> b!4663066 e!2909784))

(declare-fun res!1961793 () Bool)

(assert (=> b!4663066 (=> (not res!1961793) (not e!2909784))))

(assert (=> b!4663066 (= res!1961793 (contains!15135 lt!1824276 lt!1824694))))

(assert (=> b!4663066 (= lt!1824693 (apply!12265 lt!1824276 (hash!3817 hashF!1389 key!4968)))))

(assert (=> b!4663066 (= lt!1824694 (hash!3817 hashF!1389 key!4968))))

(declare-fun lt!1824699 () Unit!119436)

(declare-fun lt!1824700 () Unit!119436)

(assert (=> b!4663066 (= lt!1824699 lt!1824700)))

(assert (=> b!4663066 (contains!15135 lt!1824276 (hash!3817 hashF!1389 key!4968))))

(assert (=> b!4663066 (= lt!1824700 (lemmaInGenMapThenLongMapContainsHash!596 lt!1824276 key!4968 hashF!1389))))

(declare-fun b!4663065 () Bool)

(declare-fun res!1961792 () Bool)

(assert (=> b!4663065 (=> (not res!1961792) (not e!2909785))))

(assert (=> b!4663065 (= res!1961792 (contains!15133 (extractMap!1718 (toList!5254 lt!1824276)) key!4968))))

(declare-fun b!4663067 () Bool)

(assert (=> b!4663067 (= e!2909784 (= (getValueByKey!1646 (toList!5254 lt!1824276) lt!1824694) (Some!11877 lt!1824693)))))

(assert (=> d!1481319 e!2909785))

(declare-fun res!1961795 () Bool)

(assert (=> d!1481319 (=> (not res!1961795) (not e!2909785))))

(assert (=> d!1481319 (= res!1961795 (forall!11071 (toList!5254 lt!1824276) lambda!200878))))

(declare-fun lt!1824697 () Unit!119436)

(declare-fun choose!32168 (ListLongMap!3807 K!13305 Hashable!6059) Unit!119436)

(assert (=> d!1481319 (= lt!1824697 (choose!32168 lt!1824276 key!4968 hashF!1389))))

(assert (=> d!1481319 (forall!11071 (toList!5254 lt!1824276) lambda!200878)))

(assert (=> d!1481319 (= (lemmaInGenMapThenGetPairDefined!186 lt!1824276 key!4968 hashF!1389) lt!1824697)))

(assert (= (and d!1481319 res!1961795) b!4663064))

(assert (= (and b!4663064 res!1961794) b!4663065))

(assert (= (and b!4663065 res!1961792) b!4663066))

(assert (= (and b!4663066 res!1961793) b!4663067))

(declare-fun m!5547499 () Bool)

(assert (=> d!1481319 m!5547499))

(declare-fun m!5547501 () Bool)

(assert (=> d!1481319 m!5547501))

(assert (=> d!1481319 m!5547499))

(assert (=> b!4663066 m!5546919))

(assert (=> b!4663066 m!5547493))

(declare-fun m!5547503 () Bool)

(assert (=> b!4663066 m!5547503))

(assert (=> b!4663066 m!5546919))

(assert (=> b!4663066 m!5546901))

(declare-fun m!5547505 () Bool)

(assert (=> b!4663066 m!5547505))

(declare-fun m!5547507 () Bool)

(assert (=> b!4663066 m!5547507))

(assert (=> b!4663066 m!5546919))

(declare-fun m!5547509 () Bool)

(assert (=> b!4663066 m!5547509))

(assert (=> b!4663066 m!5547509))

(declare-fun m!5547511 () Bool)

(assert (=> b!4663066 m!5547511))

(declare-fun m!5547513 () Bool)

(assert (=> b!4663066 m!5547513))

(assert (=> b!4663066 m!5547511))

(declare-fun m!5547515 () Bool)

(assert (=> b!4663066 m!5547515))

(declare-fun m!5547517 () Bool)

(assert (=> b!4663067 m!5547517))

(declare-fun m!5547519 () Bool)

(assert (=> b!4663064 m!5547519))

(declare-fun m!5547521 () Bool)

(assert (=> b!4663065 m!5547521))

(assert (=> b!4663065 m!5547521))

(declare-fun m!5547523 () Bool)

(assert (=> b!4663065 m!5547523))

(assert (=> b!4662737 d!1481319))

(declare-fun d!1481321 () Bool)

(declare-fun e!2909791 () Bool)

(assert (=> d!1481321 e!2909791))

(declare-fun res!1961798 () Bool)

(assert (=> d!1481321 (=> res!1961798 e!2909791)))

(declare-fun lt!1824712 () Bool)

(assert (=> d!1481321 (= res!1961798 (not lt!1824712))))

(declare-fun lt!1824709 () Bool)

(assert (=> d!1481321 (= lt!1824712 lt!1824709)))

(declare-fun lt!1824710 () Unit!119436)

(declare-fun e!2909790 () Unit!119436)

(assert (=> d!1481321 (= lt!1824710 e!2909790)))

(declare-fun c!798224 () Bool)

(assert (=> d!1481321 (= c!798224 lt!1824709)))

(declare-fun containsKey!2780 (List!52083 (_ BitVec 64)) Bool)

(assert (=> d!1481321 (= lt!1824709 (containsKey!2780 (toList!5254 lt!1824276) lt!1824262))))

(assert (=> d!1481321 (= (contains!15135 lt!1824276 lt!1824262) lt!1824712)))

(declare-fun b!4663074 () Bool)

(declare-fun lt!1824711 () Unit!119436)

(assert (=> b!4663074 (= e!2909790 lt!1824711)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1548 (List!52083 (_ BitVec 64)) Unit!119436)

(assert (=> b!4663074 (= lt!1824711 (lemmaContainsKeyImpliesGetValueByKeyDefined!1548 (toList!5254 lt!1824276) lt!1824262))))

(declare-fun isDefined!9143 (Option!11878) Bool)

(assert (=> b!4663074 (isDefined!9143 (getValueByKey!1646 (toList!5254 lt!1824276) lt!1824262))))

(declare-fun b!4663075 () Bool)

(declare-fun Unit!119513 () Unit!119436)

(assert (=> b!4663075 (= e!2909790 Unit!119513)))

(declare-fun b!4663076 () Bool)

(assert (=> b!4663076 (= e!2909791 (isDefined!9143 (getValueByKey!1646 (toList!5254 lt!1824276) lt!1824262)))))

(assert (= (and d!1481321 c!798224) b!4663074))

(assert (= (and d!1481321 (not c!798224)) b!4663075))

(assert (= (and d!1481321 (not res!1961798)) b!4663076))

(declare-fun m!5547525 () Bool)

(assert (=> d!1481321 m!5547525))

(declare-fun m!5547527 () Bool)

(assert (=> b!4663074 m!5547527))

(assert (=> b!4663074 m!5547467))

(assert (=> b!4663074 m!5547467))

(declare-fun m!5547529 () Bool)

(assert (=> b!4663074 m!5547529))

(assert (=> b!4663076 m!5547467))

(assert (=> b!4663076 m!5547467))

(assert (=> b!4663076 m!5547529))

(assert (=> b!4662737 d!1481321))

(declare-fun b!4663093 () Bool)

(declare-fun e!2909805 () Bool)

(assert (=> b!4663093 (= e!2909805 (not (containsKey!2776 lt!1824265 key!4968)))))

(declare-fun b!4663094 () Bool)

(declare-fun e!2909802 () Option!11874)

(assert (=> b!4663094 (= e!2909802 (getPair!390 (t!359200 lt!1824265) key!4968))))

(declare-fun b!4663095 () Bool)

(assert (=> b!4663095 (= e!2909802 None!11873)))

(declare-fun d!1481323 () Bool)

(declare-fun e!2909806 () Bool)

(assert (=> d!1481323 e!2909806))

(declare-fun res!1961809 () Bool)

(assert (=> d!1481323 (=> res!1961809 e!2909806)))

(assert (=> d!1481323 (= res!1961809 e!2909805)))

(declare-fun res!1961810 () Bool)

(assert (=> d!1481323 (=> (not res!1961810) (not e!2909805))))

(declare-fun lt!1824715 () Option!11874)

(assert (=> d!1481323 (= res!1961810 (isEmpty!29035 lt!1824715))))

(declare-fun e!2909803 () Option!11874)

(assert (=> d!1481323 (= lt!1824715 e!2909803)))

(declare-fun c!798230 () Bool)

(assert (=> d!1481323 (= c!798230 (and ((_ is Cons!51958) lt!1824265) (= (_1!29841 (h!58120 lt!1824265)) key!4968)))))

(assert (=> d!1481323 (noDuplicateKeys!1662 lt!1824265)))

(assert (=> d!1481323 (= (getPair!390 lt!1824265 key!4968) lt!1824715)))

(declare-fun b!4663096 () Bool)

(assert (=> b!4663096 (= e!2909803 (Some!11873 (h!58120 lt!1824265)))))

(declare-fun b!4663097 () Bool)

(declare-fun res!1961808 () Bool)

(declare-fun e!2909804 () Bool)

(assert (=> b!4663097 (=> (not res!1961808) (not e!2909804))))

(declare-fun get!17314 (Option!11874) tuple2!53094)

(assert (=> b!4663097 (= res!1961808 (= (_1!29841 (get!17314 lt!1824715)) key!4968))))

(declare-fun b!4663098 () Bool)

(assert (=> b!4663098 (= e!2909804 (contains!15139 lt!1824265 (get!17314 lt!1824715)))))

(declare-fun b!4663099 () Bool)

(assert (=> b!4663099 (= e!2909806 e!2909804)))

(declare-fun res!1961807 () Bool)

(assert (=> b!4663099 (=> (not res!1961807) (not e!2909804))))

(assert (=> b!4663099 (= res!1961807 (isDefined!9139 lt!1824715))))

(declare-fun b!4663100 () Bool)

(assert (=> b!4663100 (= e!2909803 e!2909802)))

(declare-fun c!798229 () Bool)

(assert (=> b!4663100 (= c!798229 ((_ is Cons!51958) lt!1824265))))

(assert (= (and d!1481323 c!798230) b!4663096))

(assert (= (and d!1481323 (not c!798230)) b!4663100))

(assert (= (and b!4663100 c!798229) b!4663094))

(assert (= (and b!4663100 (not c!798229)) b!4663095))

(assert (= (and d!1481323 res!1961810) b!4663093))

(assert (= (and d!1481323 (not res!1961809)) b!4663099))

(assert (= (and b!4663099 res!1961807) b!4663097))

(assert (= (and b!4663097 res!1961808) b!4663098))

(declare-fun m!5547531 () Bool)

(assert (=> d!1481323 m!5547531))

(declare-fun m!5547533 () Bool)

(assert (=> d!1481323 m!5547533))

(declare-fun m!5547535 () Bool)

(assert (=> b!4663097 m!5547535))

(assert (=> b!4663098 m!5547535))

(assert (=> b!4663098 m!5547535))

(declare-fun m!5547537 () Bool)

(assert (=> b!4663098 m!5547537))

(declare-fun m!5547539 () Bool)

(assert (=> b!4663093 m!5547539))

(declare-fun m!5547541 () Bool)

(assert (=> b!4663099 m!5547541))

(declare-fun m!5547543 () Bool)

(assert (=> b!4663094 m!5547543))

(assert (=> b!4662737 d!1481323))

(declare-fun tp!1343546 () Bool)

(declare-fun e!2909809 () Bool)

(declare-fun b!4663105 () Bool)

(assert (=> b!4663105 (= e!2909809 (and tp_is_empty!29941 tp_is_empty!29943 tp!1343546))))

(assert (=> b!4662735 (= tp!1343539 e!2909809)))

(assert (= (and b!4662735 ((_ is Cons!51958) (t!359200 oldBucket!40))) b!4663105))

(declare-fun e!2909810 () Bool)

(declare-fun b!4663106 () Bool)

(declare-fun tp!1343547 () Bool)

(assert (=> b!4663106 (= e!2909810 (and tp_is_empty!29941 tp_is_empty!29943 tp!1343547))))

(assert (=> b!4662732 (= tp!1343538 e!2909810)))

(assert (= (and b!4662732 ((_ is Cons!51958) (t!359200 newBucket!224))) b!4663106))

(declare-fun b_lambda!175261 () Bool)

(assert (= b_lambda!175259 (or b!4662737 b_lambda!175261)))

(declare-fun bs!1069194 () Bool)

(declare-fun d!1481325 () Bool)

(assert (= bs!1069194 (and d!1481325 b!4662737)))

(assert (=> bs!1069194 (= (dynLambda!21622 lambda!200754 lt!1824269) (noDuplicateKeys!1662 (_2!29842 lt!1824269)))))

(declare-fun m!5547545 () Bool)

(assert (=> bs!1069194 m!5547545))

(assert (=> d!1481305 d!1481325))

(check-sat (not b!4662959) (not b!4663074) (not b!4662988) (not d!1481277) tp_is_empty!29941 (not d!1481313) (not b!4663076) (not b!4663097) (not b!4662989) (not b!4662993) (not d!1481317) (not b!4662994) (not b!4662990) (not b!4663055) (not b!4662814) (not b!4662781) (not b!4663030) (not b!4663093) (not b!4662958) (not b!4663105) (not d!1481297) (not d!1481321) (not b!4663023) (not b!4662995) (not b!4663067) tp_is_empty!29943 (not d!1481193) (not d!1481261) (not d!1481183) (not d!1481319) (not b!4663021) (not b!4662983) (not b!4663026) (not b!4663106) (not b!4663032) (not b!4663028) (not d!1481173) (not d!1481185) (not d!1481281) (not b!4662778) (not b!4662753) (not bm!325780) (not b!4662792) (not bs!1069194) (not d!1481323) (not d!1481311) (not bm!325783) (not b!4663019) (not b_lambda!175261) (not b!4662984) (not b!4663036) (not b!4662774) (not b!4662749) (not b!4663046) (not b!4663099) (not bm!325749) (not d!1481197) (not d!1481287) (not d!1481305) (not b!4663048) (not b!4662813) (not b!4663033) (not b!4662773) (not b!4662776) (not d!1481299) (not d!1481293) (not b!4662779) (not b!4663065) (not b!4662986) (not b!4662957) (not d!1481291) (not b!4663024) (not d!1481273) (not bm!325784) (not bm!325777) (not bm!325782) (not d!1481267) (not b!4663020) (not b!4662780) (not bm!325779) (not d!1481181) (not b!4662991) (not b!4662972) (not b!4663043) (not bm!325781) (not b!4663098) (not bm!325778) (not d!1481309) (not d!1481195) (not d!1481315) (not b!4663027) (not bm!325775) (not b!4662971) (not b!4663094) (not d!1481301) (not b!4663064) (not d!1481175) (not b!4663066) (not bm!325776))
(check-sat)
