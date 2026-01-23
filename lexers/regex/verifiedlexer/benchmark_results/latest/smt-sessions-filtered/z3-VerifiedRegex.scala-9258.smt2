; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!491090 () Bool)

(assert start!491090)

(declare-fun b!4781935 () Bool)

(declare-fun e!2985442 () Bool)

(declare-fun tp!1357478 () Bool)

(assert (=> b!4781935 (= e!2985442 tp!1357478)))

(declare-fun res!2030519 () Bool)

(declare-fun e!2985439 () Bool)

(assert (=> start!491090 (=> (not res!2030519) (not e!2985439))))

(declare-datatypes ((K!15579 0))(
  ( (K!15580 (val!20769 Int)) )
))
(declare-datatypes ((V!15825 0))(
  ( (V!15826 (val!20770 Int)) )
))
(declare-datatypes ((tuple2!56512 0))(
  ( (tuple2!56513 (_1!31550 K!15579) (_2!31550 V!15825)) )
))
(declare-datatypes ((List!54137 0))(
  ( (Nil!54013) (Cons!54013 (h!60433 tuple2!56512) (t!361587 List!54137)) )
))
(declare-datatypes ((tuple2!56514 0))(
  ( (tuple2!56515 (_1!31551 (_ BitVec 64)) (_2!31551 List!54137)) )
))
(declare-datatypes ((List!54138 0))(
  ( (Nil!54014) (Cons!54014 (h!60434 tuple2!56514) (t!361588 List!54138)) )
))
(declare-datatypes ((ListLongMap!5173 0))(
  ( (ListLongMap!5174 (toList!6751 List!54138)) )
))
(declare-fun lm!2709 () ListLongMap!5173)

(declare-fun lambda!228345 () Int)

(declare-fun forall!12128 (List!54138 Int) Bool)

(assert (=> start!491090 (= res!2030519 (forall!12128 (toList!6751 lm!2709) lambda!228345))))

(assert (=> start!491090 e!2985439))

(declare-fun inv!69605 (ListLongMap!5173) Bool)

(assert (=> start!491090 (and (inv!69605 lm!2709) e!2985442)))

(assert (=> start!491090 true))

(declare-fun tp_is_empty!33245 () Bool)

(assert (=> start!491090 tp_is_empty!33245))

(declare-fun tp_is_empty!33247 () Bool)

(assert (=> start!491090 tp_is_empty!33247))

(declare-fun b!4781936 () Bool)

(declare-fun e!2985438 () Bool)

(declare-fun lt!1944332 () ListLongMap!5173)

(declare-datatypes ((Hashable!6836 0))(
  ( (HashableExt!6835 (__x!32859 Int)) )
))
(declare-fun hashF!1687 () Hashable!6836)

(declare-fun allKeysSameHashInMap!2241 (ListLongMap!5173 Hashable!6836) Bool)

(assert (=> b!4781936 (= e!2985438 (allKeysSameHashInMap!2241 lt!1944332 hashF!1687))))

(declare-fun b!4781937 () Bool)

(declare-fun res!2030515 () Bool)

(assert (=> b!4781937 (=> (not res!2030515) (not e!2985439))))

(declare-fun key!6641 () K!15579)

(declare-fun containsKeyBiggerList!492 (List!54138 K!15579) Bool)

(assert (=> b!4781937 (= res!2030515 (containsKeyBiggerList!492 (toList!6751 lm!2709) key!6641))))

(declare-fun b!4781938 () Bool)

(declare-fun res!2030514 () Bool)

(declare-fun e!2985440 () Bool)

(assert (=> b!4781938 (=> res!2030514 e!2985440)))

(declare-fun lt!1944325 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4781938 (= res!2030514 (or (and ((_ is Cons!54014) (toList!6751 lm!2709)) (= (_1!31551 (h!60434 (toList!6751 lm!2709))) lt!1944325)) (not ((_ is Cons!54014) (toList!6751 lm!2709)))))))

(declare-fun b!4781939 () Bool)

(declare-fun e!2985441 () Bool)

(assert (=> b!4781939 (= e!2985440 e!2985441)))

(declare-fun res!2030516 () Bool)

(assert (=> b!4781939 (=> res!2030516 e!2985441)))

(declare-fun containsKey!3819 (List!54137 K!15579) Bool)

(assert (=> b!4781939 (= res!2030516 (containsKey!3819 (_2!31551 (h!60434 (toList!6751 lm!2709))) key!6641))))

(declare-fun apply!12891 (ListLongMap!5173 (_ BitVec 64)) List!54137)

(assert (=> b!4781939 (not (containsKey!3819 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709)))) key!6641))))

(declare-datatypes ((Unit!139292 0))(
  ( (Unit!139293) )
))
(declare-fun lt!1944330 () Unit!139292)

(declare-fun lemmaNotSameHashThenCannotContainKey!190 (ListLongMap!5173 K!15579 (_ BitVec 64) Hashable!6836) Unit!139292)

(assert (=> b!4781939 (= lt!1944330 (lemmaNotSameHashThenCannotContainKey!190 lm!2709 key!6641 (_1!31551 (h!60434 (toList!6751 lm!2709))) hashF!1687))))

(declare-fun b!4781940 () Bool)

(assert (=> b!4781940 (= e!2985439 (not e!2985440))))

(declare-fun res!2030517 () Bool)

(assert (=> b!4781940 (=> res!2030517 e!2985440)))

(declare-datatypes ((Option!12944 0))(
  ( (None!12943) (Some!12943 (v!48158 tuple2!56512)) )
))
(declare-fun lt!1944329 () Option!12944)

(declare-fun v!11584 () V!15825)

(declare-fun get!18370 (Option!12944) tuple2!56512)

(assert (=> b!4781940 (= res!2030517 (not (= (_2!31550 (get!18370 lt!1944329)) v!11584)))))

(declare-fun isDefined!10087 (Option!12944) Bool)

(assert (=> b!4781940 (isDefined!10087 lt!1944329)))

(declare-fun lt!1944328 () List!54137)

(declare-fun getPair!808 (List!54137 K!15579) Option!12944)

(assert (=> b!4781940 (= lt!1944329 (getPair!808 lt!1944328 key!6641))))

(declare-fun lt!1944322 () Unit!139292)

(declare-fun lt!1944323 () tuple2!56514)

(declare-fun forallContained!4072 (List!54138 Int tuple2!56514) Unit!139292)

(assert (=> b!4781940 (= lt!1944322 (forallContained!4072 (toList!6751 lm!2709) lambda!228345 lt!1944323))))

(declare-fun lt!1944327 () Unit!139292)

(declare-fun lemmaInGenMapThenGetPairDefined!582 (ListLongMap!5173 K!15579 Hashable!6836) Unit!139292)

(assert (=> b!4781940 (= lt!1944327 (lemmaInGenMapThenGetPairDefined!582 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1944333 () Unit!139292)

(assert (=> b!4781940 (= lt!1944333 (forallContained!4072 (toList!6751 lm!2709) lambda!228345 lt!1944323))))

(declare-fun contains!17554 (List!54138 tuple2!56514) Bool)

(assert (=> b!4781940 (contains!17554 (toList!6751 lm!2709) lt!1944323)))

(assert (=> b!4781940 (= lt!1944323 (tuple2!56515 lt!1944325 lt!1944328))))

(declare-fun lt!1944324 () Unit!139292)

(declare-fun lemmaGetValueImpliesTupleContained!615 (ListLongMap!5173 (_ BitVec 64) List!54137) Unit!139292)

(assert (=> b!4781940 (= lt!1944324 (lemmaGetValueImpliesTupleContained!615 lm!2709 lt!1944325 lt!1944328))))

(assert (=> b!4781940 (= lt!1944328 (apply!12891 lm!2709 lt!1944325))))

(declare-fun contains!17555 (ListLongMap!5173 (_ BitVec 64)) Bool)

(assert (=> b!4781940 (contains!17555 lm!2709 lt!1944325)))

(declare-fun hash!4827 (Hashable!6836 K!15579) (_ BitVec 64))

(assert (=> b!4781940 (= lt!1944325 (hash!4827 hashF!1687 key!6641))))

(declare-fun lt!1944331 () Unit!139292)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1032 (ListLongMap!5173 K!15579 Hashable!6836) Unit!139292)

(assert (=> b!4781940 (= lt!1944331 (lemmaInGenMapThenLongMapContainsHash!1032 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6223 0))(
  ( (ListMap!6224 (toList!6752 List!54137)) )
))
(declare-fun contains!17556 (ListMap!6223 K!15579) Bool)

(declare-fun extractMap!2363 (List!54138) ListMap!6223)

(assert (=> b!4781940 (contains!17556 (extractMap!2363 (toList!6751 lm!2709)) key!6641)))

(declare-fun lt!1944326 () Unit!139292)

(declare-fun lemmaListContainsThenExtractedMapContains!684 (ListLongMap!5173 K!15579 Hashable!6836) Unit!139292)

(assert (=> b!4781940 (= lt!1944326 (lemmaListContainsThenExtractedMapContains!684 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4781941 () Bool)

(assert (=> b!4781941 (= e!2985441 e!2985438)))

(declare-fun res!2030518 () Bool)

(assert (=> b!4781941 (=> res!2030518 e!2985438)))

(assert (=> b!4781941 (= res!2030518 (not (forall!12128 (toList!6751 lt!1944332) lambda!228345)))))

(declare-fun tail!9192 (ListLongMap!5173) ListLongMap!5173)

(assert (=> b!4781941 (= lt!1944332 (tail!9192 lm!2709))))

(declare-fun tail!9193 (List!54138) List!54138)

(assert (=> b!4781941 (containsKeyBiggerList!492 (tail!9193 (toList!6751 lm!2709)) key!6641)))

(declare-fun lt!1944321 () Unit!139292)

(declare-fun lemmaInBiggerListButNotHeadThenTail!16 (ListLongMap!5173 K!15579 Hashable!6836) Unit!139292)

(assert (=> b!4781941 (= lt!1944321 (lemmaInBiggerListButNotHeadThenTail!16 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4781942 () Bool)

(declare-fun res!2030520 () Bool)

(assert (=> b!4781942 (=> (not res!2030520) (not e!2985439))))

(assert (=> b!4781942 (= res!2030520 (allKeysSameHashInMap!2241 lm!2709 hashF!1687))))

(assert (= (and start!491090 res!2030519) b!4781942))

(assert (= (and b!4781942 res!2030520) b!4781937))

(assert (= (and b!4781937 res!2030515) b!4781940))

(assert (= (and b!4781940 (not res!2030517)) b!4781938))

(assert (= (and b!4781938 (not res!2030514)) b!4781939))

(assert (= (and b!4781939 (not res!2030516)) b!4781941))

(assert (= (and b!4781941 (not res!2030518)) b!4781936))

(assert (= start!491090 b!4781935))

(declare-fun m!5759206 () Bool)

(assert (=> b!4781939 m!5759206))

(declare-fun m!5759208 () Bool)

(assert (=> b!4781939 m!5759208))

(assert (=> b!4781939 m!5759208))

(declare-fun m!5759210 () Bool)

(assert (=> b!4781939 m!5759210))

(declare-fun m!5759212 () Bool)

(assert (=> b!4781939 m!5759212))

(declare-fun m!5759214 () Bool)

(assert (=> b!4781936 m!5759214))

(declare-fun m!5759216 () Bool)

(assert (=> start!491090 m!5759216))

(declare-fun m!5759218 () Bool)

(assert (=> start!491090 m!5759218))

(declare-fun m!5759220 () Bool)

(assert (=> b!4781937 m!5759220))

(declare-fun m!5759222 () Bool)

(assert (=> b!4781942 m!5759222))

(declare-fun m!5759224 () Bool)

(assert (=> b!4781940 m!5759224))

(declare-fun m!5759226 () Bool)

(assert (=> b!4781940 m!5759226))

(declare-fun m!5759228 () Bool)

(assert (=> b!4781940 m!5759228))

(declare-fun m!5759230 () Bool)

(assert (=> b!4781940 m!5759230))

(declare-fun m!5759232 () Bool)

(assert (=> b!4781940 m!5759232))

(declare-fun m!5759234 () Bool)

(assert (=> b!4781940 m!5759234))

(declare-fun m!5759236 () Bool)

(assert (=> b!4781940 m!5759236))

(declare-fun m!5759238 () Bool)

(assert (=> b!4781940 m!5759238))

(assert (=> b!4781940 m!5759234))

(declare-fun m!5759240 () Bool)

(assert (=> b!4781940 m!5759240))

(assert (=> b!4781940 m!5759236))

(declare-fun m!5759242 () Bool)

(assert (=> b!4781940 m!5759242))

(declare-fun m!5759244 () Bool)

(assert (=> b!4781940 m!5759244))

(declare-fun m!5759246 () Bool)

(assert (=> b!4781940 m!5759246))

(declare-fun m!5759248 () Bool)

(assert (=> b!4781940 m!5759248))

(declare-fun m!5759250 () Bool)

(assert (=> b!4781940 m!5759250))

(declare-fun m!5759252 () Bool)

(assert (=> b!4781941 m!5759252))

(assert (=> b!4781941 m!5759252))

(declare-fun m!5759254 () Bool)

(assert (=> b!4781941 m!5759254))

(declare-fun m!5759256 () Bool)

(assert (=> b!4781941 m!5759256))

(declare-fun m!5759258 () Bool)

(assert (=> b!4781941 m!5759258))

(declare-fun m!5759260 () Bool)

(assert (=> b!4781941 m!5759260))

(check-sat (not b!4781940) tp_is_empty!33247 (not b!4781939) (not b!4781942) (not start!491090) (not b!4781941) (not b!4781937) (not b!4781936) (not b!4781935) tp_is_empty!33245)
(check-sat)
(get-model)

(declare-fun d!1528875 () Bool)

(declare-fun res!2030548 () Bool)

(declare-fun e!2985470 () Bool)

(assert (=> d!1528875 (=> res!2030548 e!2985470)))

(assert (=> d!1528875 (= res!2030548 ((_ is Nil!54014) (toList!6751 lm!2709)))))

(assert (=> d!1528875 (= (forall!12128 (toList!6751 lm!2709) lambda!228345) e!2985470)))

(declare-fun b!4781970 () Bool)

(declare-fun e!2985471 () Bool)

(assert (=> b!4781970 (= e!2985470 e!2985471)))

(declare-fun res!2030549 () Bool)

(assert (=> b!4781970 (=> (not res!2030549) (not e!2985471))))

(declare-fun dynLambda!22017 (Int tuple2!56514) Bool)

(assert (=> b!4781970 (= res!2030549 (dynLambda!22017 lambda!228345 (h!60434 (toList!6751 lm!2709))))))

(declare-fun b!4781971 () Bool)

(assert (=> b!4781971 (= e!2985471 (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228345))))

(assert (= (and d!1528875 (not res!2030548)) b!4781970))

(assert (= (and b!4781970 res!2030549) b!4781971))

(declare-fun b_lambda!185693 () Bool)

(assert (=> (not b_lambda!185693) (not b!4781970)))

(declare-fun m!5759278 () Bool)

(assert (=> b!4781970 m!5759278))

(declare-fun m!5759280 () Bool)

(assert (=> b!4781971 m!5759280))

(assert (=> start!491090 d!1528875))

(declare-fun d!1528887 () Bool)

(declare-fun isStrictlySorted!849 (List!54138) Bool)

(assert (=> d!1528887 (= (inv!69605 lm!2709) (isStrictlySorted!849 (toList!6751 lm!2709)))))

(declare-fun bs!1152030 () Bool)

(assert (= bs!1152030 d!1528887))

(declare-fun m!5759286 () Bool)

(assert (=> bs!1152030 m!5759286))

(assert (=> start!491090 d!1528887))

(declare-fun d!1528891 () Bool)

(declare-datatypes ((Option!12947 0))(
  ( (None!12946) (Some!12946 (v!48165 List!54137)) )
))
(declare-fun get!18372 (Option!12947) List!54137)

(declare-fun getValueByKey!2286 (List!54138 (_ BitVec 64)) Option!12947)

(assert (=> d!1528891 (= (apply!12891 lm!2709 lt!1944325) (get!18372 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944325)))))

(declare-fun bs!1152038 () Bool)

(assert (= bs!1152038 d!1528891))

(declare-fun m!5759296 () Bool)

(assert (=> bs!1152038 m!5759296))

(assert (=> bs!1152038 m!5759296))

(declare-fun m!5759298 () Bool)

(assert (=> bs!1152038 m!5759298))

(assert (=> b!4781940 d!1528891))

(declare-fun bs!1152053 () Bool)

(declare-fun d!1528899 () Bool)

(assert (= bs!1152053 (and d!1528899 start!491090)))

(declare-fun lambda!228361 () Int)

(assert (=> bs!1152053 (= lambda!228361 lambda!228345)))

(assert (=> d!1528899 (contains!17556 (extractMap!2363 (toList!6751 lm!2709)) key!6641)))

(declare-fun lt!1944351 () Unit!139292)

(declare-fun choose!34293 (ListLongMap!5173 K!15579 Hashable!6836) Unit!139292)

(assert (=> d!1528899 (= lt!1944351 (choose!34293 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528899 (forall!12128 (toList!6751 lm!2709) lambda!228361)))

(assert (=> d!1528899 (= (lemmaListContainsThenExtractedMapContains!684 lm!2709 key!6641 hashF!1687) lt!1944351)))

(declare-fun bs!1152054 () Bool)

(assert (= bs!1152054 d!1528899))

(assert (=> bs!1152054 m!5759234))

(assert (=> bs!1152054 m!5759234))

(assert (=> bs!1152054 m!5759240))

(declare-fun m!5759332 () Bool)

(assert (=> bs!1152054 m!5759332))

(declare-fun m!5759334 () Bool)

(assert (=> bs!1152054 m!5759334))

(assert (=> b!4781940 d!1528899))

(declare-fun d!1528915 () Bool)

(declare-fun e!2985515 () Bool)

(assert (=> d!1528915 e!2985515))

(declare-fun res!2030578 () Bool)

(assert (=> d!1528915 (=> res!2030578 e!2985515)))

(declare-fun lt!1944386 () Bool)

(assert (=> d!1528915 (= res!2030578 (not lt!1944386))))

(declare-fun lt!1944387 () Bool)

(assert (=> d!1528915 (= lt!1944386 lt!1944387)))

(declare-fun lt!1944384 () Unit!139292)

(declare-fun e!2985514 () Unit!139292)

(assert (=> d!1528915 (= lt!1944384 e!2985514)))

(declare-fun c!815207 () Bool)

(assert (=> d!1528915 (= c!815207 lt!1944387)))

(declare-fun containsKey!3822 (List!54138 (_ BitVec 64)) Bool)

(assert (=> d!1528915 (= lt!1944387 (containsKey!3822 (toList!6751 lm!2709) lt!1944325))))

(assert (=> d!1528915 (= (contains!17555 lm!2709 lt!1944325) lt!1944386)))

(declare-fun b!4782037 () Bool)

(declare-fun lt!1944385 () Unit!139292)

(assert (=> b!4782037 (= e!2985514 lt!1944385)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2079 (List!54138 (_ BitVec 64)) Unit!139292)

(assert (=> b!4782037 (= lt!1944385 (lemmaContainsKeyImpliesGetValueByKeyDefined!2079 (toList!6751 lm!2709) lt!1944325))))

(declare-fun isDefined!10090 (Option!12947) Bool)

(assert (=> b!4782037 (isDefined!10090 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944325))))

(declare-fun b!4782038 () Bool)

(declare-fun Unit!139297 () Unit!139292)

(assert (=> b!4782038 (= e!2985514 Unit!139297)))

(declare-fun b!4782039 () Bool)

(assert (=> b!4782039 (= e!2985515 (isDefined!10090 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944325)))))

(assert (= (and d!1528915 c!815207) b!4782037))

(assert (= (and d!1528915 (not c!815207)) b!4782038))

(assert (= (and d!1528915 (not res!2030578)) b!4782039))

(declare-fun m!5759356 () Bool)

(assert (=> d!1528915 m!5759356))

(declare-fun m!5759358 () Bool)

(assert (=> b!4782037 m!5759358))

(assert (=> b!4782037 m!5759296))

(assert (=> b!4782037 m!5759296))

(declare-fun m!5759360 () Bool)

(assert (=> b!4782037 m!5759360))

(assert (=> b!4782039 m!5759296))

(assert (=> b!4782039 m!5759296))

(assert (=> b!4782039 m!5759360))

(assert (=> b!4781940 d!1528915))

(declare-fun b!4782056 () Bool)

(declare-fun e!2985526 () Bool)

(declare-fun e!2985530 () Bool)

(assert (=> b!4782056 (= e!2985526 e!2985530)))

(declare-fun res!2030587 () Bool)

(assert (=> b!4782056 (=> (not res!2030587) (not e!2985530))))

(declare-fun lt!1944390 () Option!12944)

(assert (=> b!4782056 (= res!2030587 (isDefined!10087 lt!1944390))))

(declare-fun b!4782057 () Bool)

(declare-fun res!2030588 () Bool)

(assert (=> b!4782057 (=> (not res!2030588) (not e!2985530))))

(assert (=> b!4782057 (= res!2030588 (= (_1!31550 (get!18370 lt!1944390)) key!6641))))

(declare-fun b!4782058 () Bool)

(declare-fun e!2985529 () Bool)

(assert (=> b!4782058 (= e!2985529 (not (containsKey!3819 lt!1944328 key!6641)))))

(declare-fun b!4782059 () Bool)

(declare-fun e!2985527 () Option!12944)

(declare-fun e!2985528 () Option!12944)

(assert (=> b!4782059 (= e!2985527 e!2985528)))

(declare-fun c!815213 () Bool)

(assert (=> b!4782059 (= c!815213 ((_ is Cons!54013) lt!1944328))))

(declare-fun b!4782060 () Bool)

(assert (=> b!4782060 (= e!2985528 (getPair!808 (t!361587 lt!1944328) key!6641))))

(declare-fun b!4782061 () Bool)

(assert (=> b!4782061 (= e!2985528 None!12943)))

(declare-fun b!4782063 () Bool)

(assert (=> b!4782063 (= e!2985527 (Some!12943 (h!60433 lt!1944328)))))

(declare-fun b!4782062 () Bool)

(declare-fun contains!17559 (List!54137 tuple2!56512) Bool)

(assert (=> b!4782062 (= e!2985530 (contains!17559 lt!1944328 (get!18370 lt!1944390)))))

(declare-fun d!1528919 () Bool)

(assert (=> d!1528919 e!2985526))

(declare-fun res!2030589 () Bool)

(assert (=> d!1528919 (=> res!2030589 e!2985526)))

(assert (=> d!1528919 (= res!2030589 e!2985529)))

(declare-fun res!2030590 () Bool)

(assert (=> d!1528919 (=> (not res!2030590) (not e!2985529))))

(declare-fun isEmpty!29360 (Option!12944) Bool)

(assert (=> d!1528919 (= res!2030590 (isEmpty!29360 lt!1944390))))

(assert (=> d!1528919 (= lt!1944390 e!2985527)))

(declare-fun c!815212 () Bool)

(assert (=> d!1528919 (= c!815212 (and ((_ is Cons!54013) lt!1944328) (= (_1!31550 (h!60433 lt!1944328)) key!6641)))))

(declare-fun noDuplicateKeys!2295 (List!54137) Bool)

(assert (=> d!1528919 (noDuplicateKeys!2295 lt!1944328)))

(assert (=> d!1528919 (= (getPair!808 lt!1944328 key!6641) lt!1944390)))

(assert (= (and d!1528919 c!815212) b!4782063))

(assert (= (and d!1528919 (not c!815212)) b!4782059))

(assert (= (and b!4782059 c!815213) b!4782060))

(assert (= (and b!4782059 (not c!815213)) b!4782061))

(assert (= (and d!1528919 res!2030590) b!4782058))

(assert (= (and d!1528919 (not res!2030589)) b!4782056))

(assert (= (and b!4782056 res!2030587) b!4782057))

(assert (= (and b!4782057 res!2030588) b!4782062))

(declare-fun m!5759362 () Bool)

(assert (=> b!4782062 m!5759362))

(assert (=> b!4782062 m!5759362))

(declare-fun m!5759364 () Bool)

(assert (=> b!4782062 m!5759364))

(assert (=> b!4782057 m!5759362))

(declare-fun m!5759366 () Bool)

(assert (=> b!4782056 m!5759366))

(declare-fun m!5759368 () Bool)

(assert (=> b!4782058 m!5759368))

(declare-fun m!5759370 () Bool)

(assert (=> b!4782060 m!5759370))

(declare-fun m!5759372 () Bool)

(assert (=> d!1528919 m!5759372))

(declare-fun m!5759374 () Bool)

(assert (=> d!1528919 m!5759374))

(assert (=> b!4781940 d!1528919))

(declare-fun b!4782109 () Bool)

(declare-datatypes ((List!54140 0))(
  ( (Nil!54016) (Cons!54016 (h!60436 K!15579) (t!361590 List!54140)) )
))
(declare-fun e!2985563 () List!54140)

(declare-fun getKeysList!1043 (List!54137) List!54140)

(assert (=> b!4782109 (= e!2985563 (getKeysList!1043 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))))

(declare-fun bm!334743 () Bool)

(declare-fun call!334748 () Bool)

(declare-fun contains!17560 (List!54140 K!15579) Bool)

(assert (=> bm!334743 (= call!334748 (contains!17560 e!2985563 key!6641))))

(declare-fun c!815224 () Bool)

(declare-fun c!815223 () Bool)

(assert (=> bm!334743 (= c!815224 c!815223)))

(declare-fun d!1528921 () Bool)

(declare-fun e!2985564 () Bool)

(assert (=> d!1528921 e!2985564))

(declare-fun res!2030618 () Bool)

(assert (=> d!1528921 (=> res!2030618 e!2985564)))

(declare-fun e!2985566 () Bool)

(assert (=> d!1528921 (= res!2030618 e!2985566)))

(declare-fun res!2030620 () Bool)

(assert (=> d!1528921 (=> (not res!2030620) (not e!2985566))))

(declare-fun lt!1944447 () Bool)

(assert (=> d!1528921 (= res!2030620 (not lt!1944447))))

(declare-fun lt!1944450 () Bool)

(assert (=> d!1528921 (= lt!1944447 lt!1944450)))

(declare-fun lt!1944448 () Unit!139292)

(declare-fun e!2985561 () Unit!139292)

(assert (=> d!1528921 (= lt!1944448 e!2985561)))

(assert (=> d!1528921 (= c!815223 lt!1944450)))

(declare-fun containsKey!3823 (List!54137 K!15579) Bool)

(assert (=> d!1528921 (= lt!1944450 (containsKey!3823 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(assert (=> d!1528921 (= (contains!17556 (extractMap!2363 (toList!6751 lm!2709)) key!6641) lt!1944447)))

(declare-fun b!4782110 () Bool)

(declare-fun e!2985565 () Bool)

(assert (=> b!4782110 (= e!2985564 e!2985565)))

(declare-fun res!2030619 () Bool)

(assert (=> b!4782110 (=> (not res!2030619) (not e!2985565))))

(declare-datatypes ((Option!12948 0))(
  ( (None!12947) (Some!12947 (v!48166 V!15825)) )
))
(declare-fun isDefined!10091 (Option!12948) Bool)

(declare-fun getValueByKey!2287 (List!54137 K!15579) Option!12948)

(assert (=> b!4782110 (= res!2030619 (isDefined!10091 (getValueByKey!2287 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641)))))

(declare-fun b!4782111 () Bool)

(declare-fun lt!1944445 () Unit!139292)

(assert (=> b!4782111 (= e!2985561 lt!1944445)))

(declare-fun lt!1944449 () Unit!139292)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2080 (List!54137 K!15579) Unit!139292)

(assert (=> b!4782111 (= lt!1944449 (lemmaContainsKeyImpliesGetValueByKeyDefined!2080 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(assert (=> b!4782111 (isDefined!10091 (getValueByKey!2287 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(declare-fun lt!1944444 () Unit!139292)

(assert (=> b!4782111 (= lt!1944444 lt!1944449)))

(declare-fun lemmaInListThenGetKeysListContains!1038 (List!54137 K!15579) Unit!139292)

(assert (=> b!4782111 (= lt!1944445 (lemmaInListThenGetKeysListContains!1038 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(assert (=> b!4782111 call!334748))

(declare-fun b!4782112 () Bool)

(declare-fun e!2985562 () Unit!139292)

(assert (=> b!4782112 (= e!2985561 e!2985562)))

(declare-fun c!815225 () Bool)

(assert (=> b!4782112 (= c!815225 call!334748)))

(declare-fun b!4782113 () Bool)

(declare-fun keys!19678 (ListMap!6223) List!54140)

(assert (=> b!4782113 (= e!2985566 (not (contains!17560 (keys!19678 (extractMap!2363 (toList!6751 lm!2709))) key!6641)))))

(declare-fun b!4782114 () Bool)

(declare-fun Unit!139298 () Unit!139292)

(assert (=> b!4782114 (= e!2985562 Unit!139298)))

(declare-fun b!4782115 () Bool)

(assert (=> b!4782115 (= e!2985565 (contains!17560 (keys!19678 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(declare-fun b!4782116 () Bool)

(assert (=> b!4782116 false))

(declare-fun lt!1944443 () Unit!139292)

(declare-fun lt!1944446 () Unit!139292)

(assert (=> b!4782116 (= lt!1944443 lt!1944446)))

(assert (=> b!4782116 (containsKey!3823 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1043 (List!54137 K!15579) Unit!139292)

(assert (=> b!4782116 (= lt!1944446 (lemmaInGetKeysListThenContainsKey!1043 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(declare-fun Unit!139299 () Unit!139292)

(assert (=> b!4782116 (= e!2985562 Unit!139299)))

(declare-fun b!4782117 () Bool)

(assert (=> b!4782117 (= e!2985563 (keys!19678 (extractMap!2363 (toList!6751 lm!2709))))))

(assert (= (and d!1528921 c!815223) b!4782111))

(assert (= (and d!1528921 (not c!815223)) b!4782112))

(assert (= (and b!4782112 c!815225) b!4782116))

(assert (= (and b!4782112 (not c!815225)) b!4782114))

(assert (= (or b!4782111 b!4782112) bm!334743))

(assert (= (and bm!334743 c!815224) b!4782109))

(assert (= (and bm!334743 (not c!815224)) b!4782117))

(assert (= (and d!1528921 res!2030620) b!4782113))

(assert (= (and d!1528921 (not res!2030618)) b!4782110))

(assert (= (and b!4782110 res!2030619) b!4782115))

(declare-fun m!5759426 () Bool)

(assert (=> d!1528921 m!5759426))

(declare-fun m!5759428 () Bool)

(assert (=> b!4782110 m!5759428))

(assert (=> b!4782110 m!5759428))

(declare-fun m!5759430 () Bool)

(assert (=> b!4782110 m!5759430))

(declare-fun m!5759432 () Bool)

(assert (=> bm!334743 m!5759432))

(declare-fun m!5759434 () Bool)

(assert (=> b!4782111 m!5759434))

(assert (=> b!4782111 m!5759428))

(assert (=> b!4782111 m!5759428))

(assert (=> b!4782111 m!5759430))

(declare-fun m!5759436 () Bool)

(assert (=> b!4782111 m!5759436))

(assert (=> b!4782116 m!5759426))

(declare-fun m!5759438 () Bool)

(assert (=> b!4782116 m!5759438))

(assert (=> b!4782117 m!5759234))

(declare-fun m!5759440 () Bool)

(assert (=> b!4782117 m!5759440))

(declare-fun m!5759442 () Bool)

(assert (=> b!4782109 m!5759442))

(assert (=> b!4782113 m!5759234))

(assert (=> b!4782113 m!5759440))

(assert (=> b!4782113 m!5759440))

(declare-fun m!5759444 () Bool)

(assert (=> b!4782113 m!5759444))

(assert (=> b!4782115 m!5759234))

(assert (=> b!4782115 m!5759440))

(assert (=> b!4782115 m!5759440))

(assert (=> b!4782115 m!5759444))

(assert (=> b!4781940 d!1528921))

(declare-fun d!1528939 () Bool)

(assert (=> d!1528939 (contains!17554 (toList!6751 lm!2709) (tuple2!56515 lt!1944325 lt!1944328))))

(declare-fun lt!1944465 () Unit!139292)

(declare-fun choose!34294 (ListLongMap!5173 (_ BitVec 64) List!54137) Unit!139292)

(assert (=> d!1528939 (= lt!1944465 (choose!34294 lm!2709 lt!1944325 lt!1944328))))

(assert (=> d!1528939 (contains!17555 lm!2709 lt!1944325)))

(assert (=> d!1528939 (= (lemmaGetValueImpliesTupleContained!615 lm!2709 lt!1944325 lt!1944328) lt!1944465)))

(declare-fun bs!1152079 () Bool)

(assert (= bs!1152079 d!1528939))

(declare-fun m!5759452 () Bool)

(assert (=> bs!1152079 m!5759452))

(declare-fun m!5759454 () Bool)

(assert (=> bs!1152079 m!5759454))

(assert (=> bs!1152079 m!5759224))

(assert (=> b!4781940 d!1528939))

(declare-fun d!1528941 () Bool)

(declare-fun hash!4831 (Hashable!6836 K!15579) (_ BitVec 64))

(assert (=> d!1528941 (= (hash!4827 hashF!1687 key!6641) (hash!4831 hashF!1687 key!6641))))

(declare-fun bs!1152083 () Bool)

(assert (= bs!1152083 d!1528941))

(declare-fun m!5759462 () Bool)

(assert (=> bs!1152083 m!5759462))

(assert (=> b!4781940 d!1528941))

(declare-fun d!1528949 () Bool)

(assert (=> d!1528949 (= (isDefined!10087 lt!1944329) (not (isEmpty!29360 lt!1944329)))))

(declare-fun bs!1152084 () Bool)

(assert (= bs!1152084 d!1528949))

(declare-fun m!5759464 () Bool)

(assert (=> bs!1152084 m!5759464))

(assert (=> b!4781940 d!1528949))

(declare-fun d!1528951 () Bool)

(assert (=> d!1528951 (= (get!18370 lt!1944329) (v!48158 lt!1944329))))

(assert (=> b!4781940 d!1528951))

(declare-fun bs!1152085 () Bool)

(declare-fun d!1528953 () Bool)

(assert (= bs!1152085 (and d!1528953 start!491090)))

(declare-fun lambda!228377 () Int)

(assert (=> bs!1152085 (= lambda!228377 lambda!228345)))

(declare-fun bs!1152086 () Bool)

(assert (= bs!1152086 (and d!1528953 d!1528899)))

(assert (=> bs!1152086 (= lambda!228377 lambda!228361)))

(declare-fun lt!1944468 () ListMap!6223)

(declare-fun invariantList!1697 (List!54137) Bool)

(assert (=> d!1528953 (invariantList!1697 (toList!6752 lt!1944468))))

(declare-fun e!2985578 () ListMap!6223)

(assert (=> d!1528953 (= lt!1944468 e!2985578)))

(declare-fun c!815231 () Bool)

(assert (=> d!1528953 (= c!815231 ((_ is Cons!54014) (toList!6751 lm!2709)))))

(assert (=> d!1528953 (forall!12128 (toList!6751 lm!2709) lambda!228377)))

(assert (=> d!1528953 (= (extractMap!2363 (toList!6751 lm!2709)) lt!1944468)))

(declare-fun b!4782137 () Bool)

(declare-fun addToMapMapFromBucket!1662 (List!54137 ListMap!6223) ListMap!6223)

(assert (=> b!4782137 (= e!2985578 (addToMapMapFromBucket!1662 (_2!31551 (h!60434 (toList!6751 lm!2709))) (extractMap!2363 (t!361588 (toList!6751 lm!2709)))))))

(declare-fun b!4782138 () Bool)

(assert (=> b!4782138 (= e!2985578 (ListMap!6224 Nil!54013))))

(assert (= (and d!1528953 c!815231) b!4782137))

(assert (= (and d!1528953 (not c!815231)) b!4782138))

(declare-fun m!5759466 () Bool)

(assert (=> d!1528953 m!5759466))

(declare-fun m!5759468 () Bool)

(assert (=> d!1528953 m!5759468))

(declare-fun m!5759470 () Bool)

(assert (=> b!4782137 m!5759470))

(assert (=> b!4782137 m!5759470))

(declare-fun m!5759472 () Bool)

(assert (=> b!4782137 m!5759472))

(assert (=> b!4781940 d!1528953))

(declare-fun bs!1152087 () Bool)

(declare-fun d!1528955 () Bool)

(assert (= bs!1152087 (and d!1528955 start!491090)))

(declare-fun lambda!228380 () Int)

(assert (=> bs!1152087 (= lambda!228380 lambda!228345)))

(declare-fun bs!1152088 () Bool)

(assert (= bs!1152088 (and d!1528955 d!1528899)))

(assert (=> bs!1152088 (= lambda!228380 lambda!228361)))

(declare-fun bs!1152089 () Bool)

(assert (= bs!1152089 (and d!1528955 d!1528953)))

(assert (=> bs!1152089 (= lambda!228380 lambda!228377)))

(assert (=> d!1528955 (contains!17555 lm!2709 (hash!4827 hashF!1687 key!6641))))

(declare-fun lt!1944471 () Unit!139292)

(declare-fun choose!34295 (ListLongMap!5173 K!15579 Hashable!6836) Unit!139292)

(assert (=> d!1528955 (= lt!1944471 (choose!34295 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528955 (forall!12128 (toList!6751 lm!2709) lambda!228380)))

(assert (=> d!1528955 (= (lemmaInGenMapThenLongMapContainsHash!1032 lm!2709 key!6641 hashF!1687) lt!1944471)))

(declare-fun bs!1152090 () Bool)

(assert (= bs!1152090 d!1528955))

(assert (=> bs!1152090 m!5759248))

(assert (=> bs!1152090 m!5759248))

(declare-fun m!5759474 () Bool)

(assert (=> bs!1152090 m!5759474))

(declare-fun m!5759476 () Bool)

(assert (=> bs!1152090 m!5759476))

(declare-fun m!5759478 () Bool)

(assert (=> bs!1152090 m!5759478))

(assert (=> b!4781940 d!1528955))

(declare-fun bs!1152091 () Bool)

(declare-fun d!1528957 () Bool)

(assert (= bs!1152091 (and d!1528957 start!491090)))

(declare-fun lambda!228387 () Int)

(assert (=> bs!1152091 (= lambda!228387 lambda!228345)))

(declare-fun bs!1152092 () Bool)

(assert (= bs!1152092 (and d!1528957 d!1528899)))

(assert (=> bs!1152092 (= lambda!228387 lambda!228361)))

(declare-fun bs!1152093 () Bool)

(assert (= bs!1152093 (and d!1528957 d!1528953)))

(assert (=> bs!1152093 (= lambda!228387 lambda!228377)))

(declare-fun bs!1152094 () Bool)

(assert (= bs!1152094 (and d!1528957 d!1528955)))

(assert (=> bs!1152094 (= lambda!228387 lambda!228380)))

(declare-fun e!2985584 () Bool)

(assert (=> d!1528957 e!2985584))

(declare-fun res!2030632 () Bool)

(assert (=> d!1528957 (=> (not res!2030632) (not e!2985584))))

(assert (=> d!1528957 (= res!2030632 (forall!12128 (toList!6751 lm!2709) lambda!228387))))

(declare-fun lt!1944494 () Unit!139292)

(declare-fun choose!34296 (ListLongMap!5173 K!15579 Hashable!6836) Unit!139292)

(assert (=> d!1528957 (= lt!1944494 (choose!34296 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528957 (forall!12128 (toList!6751 lm!2709) lambda!228387)))

(assert (=> d!1528957 (= (lemmaInGenMapThenGetPairDefined!582 lm!2709 key!6641 hashF!1687) lt!1944494)))

(declare-fun b!4782148 () Bool)

(declare-fun res!2030633 () Bool)

(assert (=> b!4782148 (=> (not res!2030633) (not e!2985584))))

(assert (=> b!4782148 (= res!2030633 (contains!17556 (extractMap!2363 (toList!6751 lm!2709)) key!6641))))

(declare-fun b!4782147 () Bool)

(declare-fun res!2030635 () Bool)

(assert (=> b!4782147 (=> (not res!2030635) (not e!2985584))))

(assert (=> b!4782147 (= res!2030635 (allKeysSameHashInMap!2241 lm!2709 hashF!1687))))

(declare-fun b!4782149 () Bool)

(assert (=> b!4782149 (= e!2985584 (isDefined!10087 (getPair!808 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1944492 () Unit!139292)

(assert (=> b!4782149 (= lt!1944492 (forallContained!4072 (toList!6751 lm!2709) lambda!228387 (tuple2!56515 (hash!4827 hashF!1687 key!6641) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))))))

(declare-fun lt!1944490 () Unit!139292)

(declare-fun lt!1944495 () Unit!139292)

(assert (=> b!4782149 (= lt!1944490 lt!1944495)))

(declare-fun lt!1944493 () (_ BitVec 64))

(declare-fun lt!1944488 () List!54137)

(assert (=> b!4782149 (contains!17554 (toList!6751 lm!2709) (tuple2!56515 lt!1944493 lt!1944488))))

(assert (=> b!4782149 (= lt!1944495 (lemmaGetValueImpliesTupleContained!615 lm!2709 lt!1944493 lt!1944488))))

(declare-fun e!2985583 () Bool)

(assert (=> b!4782149 e!2985583))

(declare-fun res!2030634 () Bool)

(assert (=> b!4782149 (=> (not res!2030634) (not e!2985583))))

(assert (=> b!4782149 (= res!2030634 (contains!17555 lm!2709 lt!1944493))))

(assert (=> b!4782149 (= lt!1944488 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))))

(assert (=> b!4782149 (= lt!1944493 (hash!4827 hashF!1687 key!6641))))

(declare-fun lt!1944489 () Unit!139292)

(declare-fun lt!1944491 () Unit!139292)

(assert (=> b!4782149 (= lt!1944489 lt!1944491)))

(assert (=> b!4782149 (contains!17555 lm!2709 (hash!4827 hashF!1687 key!6641))))

(assert (=> b!4782149 (= lt!1944491 (lemmaInGenMapThenLongMapContainsHash!1032 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4782150 () Bool)

(assert (=> b!4782150 (= e!2985583 (= (getValueByKey!2286 (toList!6751 lm!2709) lt!1944493) (Some!12946 lt!1944488)))))

(assert (= (and d!1528957 res!2030632) b!4782147))

(assert (= (and b!4782147 res!2030635) b!4782148))

(assert (= (and b!4782148 res!2030633) b!4782149))

(assert (= (and b!4782149 res!2030634) b!4782150))

(declare-fun m!5759480 () Bool)

(assert (=> b!4782150 m!5759480))

(assert (=> b!4782149 m!5759248))

(declare-fun m!5759482 () Bool)

(assert (=> b!4782149 m!5759482))

(assert (=> b!4782149 m!5759238))

(assert (=> b!4782149 m!5759482))

(declare-fun m!5759484 () Bool)

(assert (=> b!4782149 m!5759484))

(declare-fun m!5759486 () Bool)

(assert (=> b!4782149 m!5759486))

(assert (=> b!4782149 m!5759248))

(declare-fun m!5759488 () Bool)

(assert (=> b!4782149 m!5759488))

(assert (=> b!4782149 m!5759484))

(declare-fun m!5759490 () Bool)

(assert (=> b!4782149 m!5759490))

(assert (=> b!4782149 m!5759248))

(assert (=> b!4782149 m!5759474))

(declare-fun m!5759492 () Bool)

(assert (=> b!4782149 m!5759492))

(declare-fun m!5759494 () Bool)

(assert (=> b!4782149 m!5759494))

(assert (=> b!4782147 m!5759222))

(assert (=> b!4782148 m!5759234))

(assert (=> b!4782148 m!5759234))

(assert (=> b!4782148 m!5759240))

(declare-fun m!5759496 () Bool)

(assert (=> d!1528957 m!5759496))

(declare-fun m!5759498 () Bool)

(assert (=> d!1528957 m!5759498))

(assert (=> d!1528957 m!5759496))

(assert (=> b!4781940 d!1528957))

(declare-fun d!1528959 () Bool)

(declare-fun lt!1944498 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9651 (List!54138) (InoxSet tuple2!56514))

(assert (=> d!1528959 (= lt!1944498 (select (content!9651 (toList!6751 lm!2709)) lt!1944323))))

(declare-fun e!2985590 () Bool)

(assert (=> d!1528959 (= lt!1944498 e!2985590)))

(declare-fun res!2030640 () Bool)

(assert (=> d!1528959 (=> (not res!2030640) (not e!2985590))))

(assert (=> d!1528959 (= res!2030640 ((_ is Cons!54014) (toList!6751 lm!2709)))))

(assert (=> d!1528959 (= (contains!17554 (toList!6751 lm!2709) lt!1944323) lt!1944498)))

(declare-fun b!4782155 () Bool)

(declare-fun e!2985589 () Bool)

(assert (=> b!4782155 (= e!2985590 e!2985589)))

(declare-fun res!2030641 () Bool)

(assert (=> b!4782155 (=> res!2030641 e!2985589)))

(assert (=> b!4782155 (= res!2030641 (= (h!60434 (toList!6751 lm!2709)) lt!1944323))))

(declare-fun b!4782156 () Bool)

(assert (=> b!4782156 (= e!2985589 (contains!17554 (t!361588 (toList!6751 lm!2709)) lt!1944323))))

(assert (= (and d!1528959 res!2030640) b!4782155))

(assert (= (and b!4782155 (not res!2030641)) b!4782156))

(declare-fun m!5759500 () Bool)

(assert (=> d!1528959 m!5759500))

(declare-fun m!5759502 () Bool)

(assert (=> d!1528959 m!5759502))

(declare-fun m!5759504 () Bool)

(assert (=> b!4782156 m!5759504))

(assert (=> b!4781940 d!1528959))

(declare-fun d!1528961 () Bool)

(assert (=> d!1528961 (dynLambda!22017 lambda!228345 lt!1944323)))

(declare-fun lt!1944501 () Unit!139292)

(declare-fun choose!34297 (List!54138 Int tuple2!56514) Unit!139292)

(assert (=> d!1528961 (= lt!1944501 (choose!34297 (toList!6751 lm!2709) lambda!228345 lt!1944323))))

(declare-fun e!2985593 () Bool)

(assert (=> d!1528961 e!2985593))

(declare-fun res!2030644 () Bool)

(assert (=> d!1528961 (=> (not res!2030644) (not e!2985593))))

(assert (=> d!1528961 (= res!2030644 (forall!12128 (toList!6751 lm!2709) lambda!228345))))

(assert (=> d!1528961 (= (forallContained!4072 (toList!6751 lm!2709) lambda!228345 lt!1944323) lt!1944501)))

(declare-fun b!4782159 () Bool)

(assert (=> b!4782159 (= e!2985593 (contains!17554 (toList!6751 lm!2709) lt!1944323))))

(assert (= (and d!1528961 res!2030644) b!4782159))

(declare-fun b_lambda!185705 () Bool)

(assert (=> (not b_lambda!185705) (not d!1528961)))

(declare-fun m!5759506 () Bool)

(assert (=> d!1528961 m!5759506))

(declare-fun m!5759508 () Bool)

(assert (=> d!1528961 m!5759508))

(assert (=> d!1528961 m!5759216))

(assert (=> b!4782159 m!5759230))

(assert (=> b!4781940 d!1528961))

(declare-fun d!1528963 () Bool)

(declare-fun res!2030649 () Bool)

(declare-fun e!2985598 () Bool)

(assert (=> d!1528963 (=> res!2030649 e!2985598)))

(assert (=> d!1528963 (= res!2030649 (and ((_ is Cons!54013) (_2!31551 (h!60434 (toList!6751 lm!2709)))) (= (_1!31550 (h!60433 (_2!31551 (h!60434 (toList!6751 lm!2709))))) key!6641)))))

(assert (=> d!1528963 (= (containsKey!3819 (_2!31551 (h!60434 (toList!6751 lm!2709))) key!6641) e!2985598)))

(declare-fun b!4782164 () Bool)

(declare-fun e!2985599 () Bool)

(assert (=> b!4782164 (= e!2985598 e!2985599)))

(declare-fun res!2030650 () Bool)

(assert (=> b!4782164 (=> (not res!2030650) (not e!2985599))))

(assert (=> b!4782164 (= res!2030650 ((_ is Cons!54013) (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(declare-fun b!4782165 () Bool)

(assert (=> b!4782165 (= e!2985599 (containsKey!3819 (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709)))) key!6641))))

(assert (= (and d!1528963 (not res!2030649)) b!4782164))

(assert (= (and b!4782164 res!2030650) b!4782165))

(declare-fun m!5759510 () Bool)

(assert (=> b!4782165 m!5759510))

(assert (=> b!4781939 d!1528963))

(declare-fun d!1528965 () Bool)

(declare-fun res!2030651 () Bool)

(declare-fun e!2985600 () Bool)

(assert (=> d!1528965 (=> res!2030651 e!2985600)))

(assert (=> d!1528965 (= res!2030651 (and ((_ is Cons!54013) (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709))))) (= (_1!31550 (h!60433 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709)))))) key!6641)))))

(assert (=> d!1528965 (= (containsKey!3819 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709)))) key!6641) e!2985600)))

(declare-fun b!4782166 () Bool)

(declare-fun e!2985601 () Bool)

(assert (=> b!4782166 (= e!2985600 e!2985601)))

(declare-fun res!2030652 () Bool)

(assert (=> b!4782166 (=> (not res!2030652) (not e!2985601))))

(assert (=> b!4782166 (= res!2030652 ((_ is Cons!54013) (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709))))))))

(declare-fun b!4782167 () Bool)

(assert (=> b!4782167 (= e!2985601 (containsKey!3819 (t!361587 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709))))) key!6641))))

(assert (= (and d!1528965 (not res!2030651)) b!4782166))

(assert (= (and b!4782166 res!2030652) b!4782167))

(declare-fun m!5759512 () Bool)

(assert (=> b!4782167 m!5759512))

(assert (=> b!4781939 d!1528965))

(declare-fun d!1528967 () Bool)

(assert (=> d!1528967 (= (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709)))) (get!18372 (getValueByKey!2286 (toList!6751 lm!2709) (_1!31551 (h!60434 (toList!6751 lm!2709))))))))

(declare-fun bs!1152095 () Bool)

(assert (= bs!1152095 d!1528967))

(declare-fun m!5759514 () Bool)

(assert (=> bs!1152095 m!5759514))

(assert (=> bs!1152095 m!5759514))

(declare-fun m!5759516 () Bool)

(assert (=> bs!1152095 m!5759516))

(assert (=> b!4781939 d!1528967))

(declare-fun bs!1152096 () Bool)

(declare-fun d!1528969 () Bool)

(assert (= bs!1152096 (and d!1528969 d!1528957)))

(declare-fun lambda!228390 () Int)

(assert (=> bs!1152096 (= lambda!228390 lambda!228387)))

(declare-fun bs!1152097 () Bool)

(assert (= bs!1152097 (and d!1528969 d!1528953)))

(assert (=> bs!1152097 (= lambda!228390 lambda!228377)))

(declare-fun bs!1152098 () Bool)

(assert (= bs!1152098 (and d!1528969 d!1528955)))

(assert (=> bs!1152098 (= lambda!228390 lambda!228380)))

(declare-fun bs!1152099 () Bool)

(assert (= bs!1152099 (and d!1528969 start!491090)))

(assert (=> bs!1152099 (= lambda!228390 lambda!228345)))

(declare-fun bs!1152100 () Bool)

(assert (= bs!1152100 (and d!1528969 d!1528899)))

(assert (=> bs!1152100 (= lambda!228390 lambda!228361)))

(assert (=> d!1528969 (not (containsKey!3819 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709)))) key!6641))))

(declare-fun lt!1944504 () Unit!139292)

(declare-fun choose!34298 (ListLongMap!5173 K!15579 (_ BitVec 64) Hashable!6836) Unit!139292)

(assert (=> d!1528969 (= lt!1944504 (choose!34298 lm!2709 key!6641 (_1!31551 (h!60434 (toList!6751 lm!2709))) hashF!1687))))

(assert (=> d!1528969 (forall!12128 (toList!6751 lm!2709) lambda!228390)))

(assert (=> d!1528969 (= (lemmaNotSameHashThenCannotContainKey!190 lm!2709 key!6641 (_1!31551 (h!60434 (toList!6751 lm!2709))) hashF!1687) lt!1944504)))

(declare-fun bs!1152101 () Bool)

(assert (= bs!1152101 d!1528969))

(assert (=> bs!1152101 m!5759208))

(assert (=> bs!1152101 m!5759208))

(assert (=> bs!1152101 m!5759210))

(declare-fun m!5759518 () Bool)

(assert (=> bs!1152101 m!5759518))

(declare-fun m!5759520 () Bool)

(assert (=> bs!1152101 m!5759520))

(assert (=> b!4781939 d!1528969))

(declare-fun bs!1152102 () Bool)

(declare-fun d!1528971 () Bool)

(assert (= bs!1152102 (and d!1528971 d!1528957)))

(declare-fun lambda!228393 () Int)

(assert (=> bs!1152102 (not (= lambda!228393 lambda!228387))))

(declare-fun bs!1152103 () Bool)

(assert (= bs!1152103 (and d!1528971 d!1528955)))

(assert (=> bs!1152103 (not (= lambda!228393 lambda!228380))))

(declare-fun bs!1152104 () Bool)

(assert (= bs!1152104 (and d!1528971 start!491090)))

(assert (=> bs!1152104 (not (= lambda!228393 lambda!228345))))

(declare-fun bs!1152105 () Bool)

(assert (= bs!1152105 (and d!1528971 d!1528899)))

(assert (=> bs!1152105 (not (= lambda!228393 lambda!228361))))

(declare-fun bs!1152106 () Bool)

(assert (= bs!1152106 (and d!1528971 d!1528953)))

(assert (=> bs!1152106 (not (= lambda!228393 lambda!228377))))

(declare-fun bs!1152107 () Bool)

(assert (= bs!1152107 (and d!1528971 d!1528969)))

(assert (=> bs!1152107 (not (= lambda!228393 lambda!228390))))

(assert (=> d!1528971 true))

(assert (=> d!1528971 (= (allKeysSameHashInMap!2241 lt!1944332 hashF!1687) (forall!12128 (toList!6751 lt!1944332) lambda!228393))))

(declare-fun bs!1152108 () Bool)

(assert (= bs!1152108 d!1528971))

(declare-fun m!5759522 () Bool)

(assert (=> bs!1152108 m!5759522))

(assert (=> b!4781936 d!1528971))

(declare-fun bs!1152109 () Bool)

(declare-fun d!1528973 () Bool)

(assert (= bs!1152109 (and d!1528973 d!1528957)))

(declare-fun lambda!228396 () Int)

(assert (=> bs!1152109 (= lambda!228396 lambda!228387)))

(declare-fun bs!1152110 () Bool)

(assert (= bs!1152110 (and d!1528973 d!1528971)))

(assert (=> bs!1152110 (not (= lambda!228396 lambda!228393))))

(declare-fun bs!1152111 () Bool)

(assert (= bs!1152111 (and d!1528973 d!1528955)))

(assert (=> bs!1152111 (= lambda!228396 lambda!228380)))

(declare-fun bs!1152112 () Bool)

(assert (= bs!1152112 (and d!1528973 start!491090)))

(assert (=> bs!1152112 (= lambda!228396 lambda!228345)))

(declare-fun bs!1152113 () Bool)

(assert (= bs!1152113 (and d!1528973 d!1528899)))

(assert (=> bs!1152113 (= lambda!228396 lambda!228361)))

(declare-fun bs!1152114 () Bool)

(assert (= bs!1152114 (and d!1528973 d!1528953)))

(assert (=> bs!1152114 (= lambda!228396 lambda!228377)))

(declare-fun bs!1152115 () Bool)

(assert (= bs!1152115 (and d!1528973 d!1528969)))

(assert (=> bs!1152115 (= lambda!228396 lambda!228390)))

(assert (=> d!1528973 (containsKeyBiggerList!492 (tail!9193 (toList!6751 lm!2709)) key!6641)))

(declare-fun lt!1944507 () Unit!139292)

(declare-fun choose!34299 (ListLongMap!5173 K!15579 Hashable!6836) Unit!139292)

(assert (=> d!1528973 (= lt!1944507 (choose!34299 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528973 (forall!12128 (toList!6751 lm!2709) lambda!228396)))

(assert (=> d!1528973 (= (lemmaInBiggerListButNotHeadThenTail!16 lm!2709 key!6641 hashF!1687) lt!1944507)))

(declare-fun bs!1152116 () Bool)

(assert (= bs!1152116 d!1528973))

(assert (=> bs!1152116 m!5759252))

(assert (=> bs!1152116 m!5759252))

(assert (=> bs!1152116 m!5759254))

(declare-fun m!5759524 () Bool)

(assert (=> bs!1152116 m!5759524))

(declare-fun m!5759526 () Bool)

(assert (=> bs!1152116 m!5759526))

(assert (=> b!4781941 d!1528973))

(declare-fun d!1528975 () Bool)

(declare-fun res!2030653 () Bool)

(declare-fun e!2985602 () Bool)

(assert (=> d!1528975 (=> res!2030653 e!2985602)))

(assert (=> d!1528975 (= res!2030653 ((_ is Nil!54014) (toList!6751 lt!1944332)))))

(assert (=> d!1528975 (= (forall!12128 (toList!6751 lt!1944332) lambda!228345) e!2985602)))

(declare-fun b!4782170 () Bool)

(declare-fun e!2985603 () Bool)

(assert (=> b!4782170 (= e!2985602 e!2985603)))

(declare-fun res!2030654 () Bool)

(assert (=> b!4782170 (=> (not res!2030654) (not e!2985603))))

(assert (=> b!4782170 (= res!2030654 (dynLambda!22017 lambda!228345 (h!60434 (toList!6751 lt!1944332))))))

(declare-fun b!4782171 () Bool)

(assert (=> b!4782171 (= e!2985603 (forall!12128 (t!361588 (toList!6751 lt!1944332)) lambda!228345))))

(assert (= (and d!1528975 (not res!2030653)) b!4782170))

(assert (= (and b!4782170 res!2030654) b!4782171))

(declare-fun b_lambda!185707 () Bool)

(assert (=> (not b_lambda!185707) (not b!4782170)))

(declare-fun m!5759528 () Bool)

(assert (=> b!4782170 m!5759528))

(declare-fun m!5759530 () Bool)

(assert (=> b!4782171 m!5759530))

(assert (=> b!4781941 d!1528975))

(declare-fun d!1528977 () Bool)

(assert (=> d!1528977 (= (tail!9193 (toList!6751 lm!2709)) (t!361588 (toList!6751 lm!2709)))))

(assert (=> b!4781941 d!1528977))

(declare-fun d!1528979 () Bool)

(assert (=> d!1528979 (= (tail!9192 lm!2709) (ListLongMap!5174 (tail!9193 (toList!6751 lm!2709))))))

(declare-fun bs!1152117 () Bool)

(assert (= bs!1152117 d!1528979))

(assert (=> bs!1152117 m!5759252))

(assert (=> b!4781941 d!1528979))

(declare-fun d!1528981 () Bool)

(declare-fun res!2030663 () Bool)

(declare-fun e!2985611 () Bool)

(assert (=> d!1528981 (=> res!2030663 e!2985611)))

(declare-fun e!2985610 () Bool)

(assert (=> d!1528981 (= res!2030663 e!2985610)))

(declare-fun res!2030662 () Bool)

(assert (=> d!1528981 (=> (not res!2030662) (not e!2985610))))

(assert (=> d!1528981 (= res!2030662 ((_ is Cons!54014) (tail!9193 (toList!6751 lm!2709))))))

(assert (=> d!1528981 (= (containsKeyBiggerList!492 (tail!9193 (toList!6751 lm!2709)) key!6641) e!2985611)))

(declare-fun b!4782178 () Bool)

(assert (=> b!4782178 (= e!2985610 (containsKey!3819 (_2!31551 (h!60434 (tail!9193 (toList!6751 lm!2709)))) key!6641))))

(declare-fun b!4782179 () Bool)

(declare-fun e!2985612 () Bool)

(assert (=> b!4782179 (= e!2985611 e!2985612)))

(declare-fun res!2030661 () Bool)

(assert (=> b!4782179 (=> (not res!2030661) (not e!2985612))))

(assert (=> b!4782179 (= res!2030661 ((_ is Cons!54014) (tail!9193 (toList!6751 lm!2709))))))

(declare-fun b!4782180 () Bool)

(assert (=> b!4782180 (= e!2985612 (containsKeyBiggerList!492 (t!361588 (tail!9193 (toList!6751 lm!2709))) key!6641))))

(assert (= (and d!1528981 res!2030662) b!4782178))

(assert (= (and d!1528981 (not res!2030663)) b!4782179))

(assert (= (and b!4782179 res!2030661) b!4782180))

(declare-fun m!5759532 () Bool)

(assert (=> b!4782178 m!5759532))

(declare-fun m!5759534 () Bool)

(assert (=> b!4782180 m!5759534))

(assert (=> b!4781941 d!1528981))

(declare-fun d!1528983 () Bool)

(declare-fun res!2030666 () Bool)

(declare-fun e!2985614 () Bool)

(assert (=> d!1528983 (=> res!2030666 e!2985614)))

(declare-fun e!2985613 () Bool)

(assert (=> d!1528983 (= res!2030666 e!2985613)))

(declare-fun res!2030665 () Bool)

(assert (=> d!1528983 (=> (not res!2030665) (not e!2985613))))

(assert (=> d!1528983 (= res!2030665 ((_ is Cons!54014) (toList!6751 lm!2709)))))

(assert (=> d!1528983 (= (containsKeyBiggerList!492 (toList!6751 lm!2709) key!6641) e!2985614)))

(declare-fun b!4782181 () Bool)

(assert (=> b!4782181 (= e!2985613 (containsKey!3819 (_2!31551 (h!60434 (toList!6751 lm!2709))) key!6641))))

(declare-fun b!4782182 () Bool)

(declare-fun e!2985615 () Bool)

(assert (=> b!4782182 (= e!2985614 e!2985615)))

(declare-fun res!2030664 () Bool)

(assert (=> b!4782182 (=> (not res!2030664) (not e!2985615))))

(assert (=> b!4782182 (= res!2030664 ((_ is Cons!54014) (toList!6751 lm!2709)))))

(declare-fun b!4782183 () Bool)

(assert (=> b!4782183 (= e!2985615 (containsKeyBiggerList!492 (t!361588 (toList!6751 lm!2709)) key!6641))))

(assert (= (and d!1528983 res!2030665) b!4782181))

(assert (= (and d!1528983 (not res!2030666)) b!4782182))

(assert (= (and b!4782182 res!2030664) b!4782183))

(assert (=> b!4782181 m!5759206))

(declare-fun m!5759536 () Bool)

(assert (=> b!4782183 m!5759536))

(assert (=> b!4781937 d!1528983))

(declare-fun bs!1152118 () Bool)

(declare-fun d!1528985 () Bool)

(assert (= bs!1152118 (and d!1528985 d!1528957)))

(declare-fun lambda!228397 () Int)

(assert (=> bs!1152118 (not (= lambda!228397 lambda!228387))))

(declare-fun bs!1152119 () Bool)

(assert (= bs!1152119 (and d!1528985 d!1528971)))

(assert (=> bs!1152119 (= lambda!228397 lambda!228393)))

(declare-fun bs!1152120 () Bool)

(assert (= bs!1152120 (and d!1528985 d!1528955)))

(assert (=> bs!1152120 (not (= lambda!228397 lambda!228380))))

(declare-fun bs!1152121 () Bool)

(assert (= bs!1152121 (and d!1528985 start!491090)))

(assert (=> bs!1152121 (not (= lambda!228397 lambda!228345))))

(declare-fun bs!1152122 () Bool)

(assert (= bs!1152122 (and d!1528985 d!1528899)))

(assert (=> bs!1152122 (not (= lambda!228397 lambda!228361))))

(declare-fun bs!1152123 () Bool)

(assert (= bs!1152123 (and d!1528985 d!1528973)))

(assert (=> bs!1152123 (not (= lambda!228397 lambda!228396))))

(declare-fun bs!1152124 () Bool)

(assert (= bs!1152124 (and d!1528985 d!1528953)))

(assert (=> bs!1152124 (not (= lambda!228397 lambda!228377))))

(declare-fun bs!1152125 () Bool)

(assert (= bs!1152125 (and d!1528985 d!1528969)))

(assert (=> bs!1152125 (not (= lambda!228397 lambda!228390))))

(assert (=> d!1528985 true))

(assert (=> d!1528985 (= (allKeysSameHashInMap!2241 lm!2709 hashF!1687) (forall!12128 (toList!6751 lm!2709) lambda!228397))))

(declare-fun bs!1152126 () Bool)

(assert (= bs!1152126 d!1528985))

(declare-fun m!5759538 () Bool)

(assert (=> bs!1152126 m!5759538))

(assert (=> b!4781942 d!1528985))

(declare-fun b!4782188 () Bool)

(declare-fun e!2985618 () Bool)

(declare-fun tp!1357489 () Bool)

(declare-fun tp!1357490 () Bool)

(assert (=> b!4782188 (= e!2985618 (and tp!1357489 tp!1357490))))

(assert (=> b!4781935 (= tp!1357478 e!2985618)))

(assert (= (and b!4781935 ((_ is Cons!54014) (toList!6751 lm!2709))) b!4782188))

(declare-fun b_lambda!185709 () Bool)

(assert (= b_lambda!185707 (or start!491090 b_lambda!185709)))

(declare-fun bs!1152127 () Bool)

(declare-fun d!1528987 () Bool)

(assert (= bs!1152127 (and d!1528987 start!491090)))

(assert (=> bs!1152127 (= (dynLambda!22017 lambda!228345 (h!60434 (toList!6751 lt!1944332))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lt!1944332)))))))

(declare-fun m!5759540 () Bool)

(assert (=> bs!1152127 m!5759540))

(assert (=> b!4782170 d!1528987))

(declare-fun b_lambda!185711 () Bool)

(assert (= b_lambda!185705 (or start!491090 b_lambda!185711)))

(declare-fun bs!1152128 () Bool)

(declare-fun d!1528989 () Bool)

(assert (= bs!1152128 (and d!1528989 start!491090)))

(assert (=> bs!1152128 (= (dynLambda!22017 lambda!228345 lt!1944323) (noDuplicateKeys!2295 (_2!31551 lt!1944323)))))

(declare-fun m!5759542 () Bool)

(assert (=> bs!1152128 m!5759542))

(assert (=> d!1528961 d!1528989))

(declare-fun b_lambda!185713 () Bool)

(assert (= b_lambda!185693 (or start!491090 b_lambda!185713)))

(declare-fun bs!1152129 () Bool)

(declare-fun d!1528991 () Bool)

(assert (= bs!1152129 (and d!1528991 start!491090)))

(assert (=> bs!1152129 (= (dynLambda!22017 lambda!228345 (h!60434 (toList!6751 lm!2709))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(declare-fun m!5759544 () Bool)

(assert (=> bs!1152129 m!5759544))

(assert (=> b!4781970 d!1528991))

(check-sat (not b!4782115) (not d!1528887) (not d!1528919) (not b!4782109) (not b!4782116) (not b!4782178) tp_is_empty!33247 (not b!4782167) (not bs!1152129) (not b!4782165) (not d!1528961) (not b!4782056) (not b!4782058) (not d!1528979) (not b!4782181) (not b_lambda!185709) (not b!4782171) (not b!4782039) (not b!4782037) (not bs!1152127) (not d!1528957) (not b!4782156) (not b!4782062) (not d!1528949) (not b!4782057) (not b_lambda!185713) (not b!4781971) tp_is_empty!33245 (not b!4782183) (not b_lambda!185711) (not d!1528971) (not b!4782111) (not b!4782148) (not d!1528973) (not d!1528891) (not b!4782159) (not b!4782137) (not d!1528921) (not b!4782113) (not b!4782147) (not d!1528899) (not d!1528969) (not d!1528967) (not d!1528941) (not b!4782150) (not b!4782149) (not d!1528985) (not bs!1152128) (not d!1528915) (not b!4782060) (not b!4782117) (not bm!334743) (not d!1528955) (not d!1528953) (not b!4782188) (not d!1528939) (not b!4782110) (not d!1528959) (not b!4782180))
(check-sat)
(get-model)

(declare-fun d!1529057 () Bool)

(declare-fun lt!1944553 () Bool)

(assert (=> d!1529057 (= lt!1944553 (select (content!9651 (t!361588 (toList!6751 lm!2709))) lt!1944323))))

(declare-fun e!2985700 () Bool)

(assert (=> d!1529057 (= lt!1944553 e!2985700)))

(declare-fun res!2030732 () Bool)

(assert (=> d!1529057 (=> (not res!2030732) (not e!2985700))))

(assert (=> d!1529057 (= res!2030732 ((_ is Cons!54014) (t!361588 (toList!6751 lm!2709))))))

(assert (=> d!1529057 (= (contains!17554 (t!361588 (toList!6751 lm!2709)) lt!1944323) lt!1944553)))

(declare-fun b!4782314 () Bool)

(declare-fun e!2985699 () Bool)

(assert (=> b!4782314 (= e!2985700 e!2985699)))

(declare-fun res!2030733 () Bool)

(assert (=> b!4782314 (=> res!2030733 e!2985699)))

(assert (=> b!4782314 (= res!2030733 (= (h!60434 (t!361588 (toList!6751 lm!2709))) lt!1944323))))

(declare-fun b!4782315 () Bool)

(assert (=> b!4782315 (= e!2985699 (contains!17554 (t!361588 (t!361588 (toList!6751 lm!2709))) lt!1944323))))

(assert (= (and d!1529057 res!2030732) b!4782314))

(assert (= (and b!4782314 (not res!2030733)) b!4782315))

(declare-fun m!5759690 () Bool)

(assert (=> d!1529057 m!5759690))

(declare-fun m!5759692 () Bool)

(assert (=> d!1529057 m!5759692))

(declare-fun m!5759694 () Bool)

(assert (=> b!4782315 m!5759694))

(assert (=> b!4782156 d!1529057))

(assert (=> b!4782159 d!1528959))

(declare-fun d!1529059 () Bool)

(assert (=> d!1529059 (isDefined!10090 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944325))))

(declare-fun lt!1944559 () Unit!139292)

(declare-fun choose!34302 (List!54138 (_ BitVec 64)) Unit!139292)

(assert (=> d!1529059 (= lt!1944559 (choose!34302 (toList!6751 lm!2709) lt!1944325))))

(declare-fun e!2985713 () Bool)

(assert (=> d!1529059 e!2985713))

(declare-fun res!2030746 () Bool)

(assert (=> d!1529059 (=> (not res!2030746) (not e!2985713))))

(assert (=> d!1529059 (= res!2030746 (isStrictlySorted!849 (toList!6751 lm!2709)))))

(assert (=> d!1529059 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2079 (toList!6751 lm!2709) lt!1944325) lt!1944559)))

(declare-fun b!4782328 () Bool)

(assert (=> b!4782328 (= e!2985713 (containsKey!3822 (toList!6751 lm!2709) lt!1944325))))

(assert (= (and d!1529059 res!2030746) b!4782328))

(assert (=> d!1529059 m!5759296))

(assert (=> d!1529059 m!5759296))

(assert (=> d!1529059 m!5759360))

(declare-fun m!5759708 () Bool)

(assert (=> d!1529059 m!5759708))

(assert (=> d!1529059 m!5759286))

(assert (=> b!4782328 m!5759356))

(assert (=> b!4782037 d!1529059))

(declare-fun d!1529077 () Bool)

(declare-fun isEmpty!29362 (Option!12947) Bool)

(assert (=> d!1529077 (= (isDefined!10090 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944325)) (not (isEmpty!29362 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944325))))))

(declare-fun bs!1152148 () Bool)

(assert (= bs!1152148 d!1529077))

(assert (=> bs!1152148 m!5759296))

(declare-fun m!5759712 () Bool)

(assert (=> bs!1152148 m!5759712))

(assert (=> b!4782037 d!1529077))

(declare-fun d!1529081 () Bool)

(declare-fun c!815268 () Bool)

(assert (=> d!1529081 (= c!815268 (and ((_ is Cons!54014) (toList!6751 lm!2709)) (= (_1!31551 (h!60434 (toList!6751 lm!2709))) lt!1944325)))))

(declare-fun e!2985722 () Option!12947)

(assert (=> d!1529081 (= (getValueByKey!2286 (toList!6751 lm!2709) lt!1944325) e!2985722)))

(declare-fun b!4782345 () Bool)

(assert (=> b!4782345 (= e!2985722 (Some!12946 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(declare-fun b!4782346 () Bool)

(declare-fun e!2985723 () Option!12947)

(assert (=> b!4782346 (= e!2985722 e!2985723)))

(declare-fun c!815269 () Bool)

(assert (=> b!4782346 (= c!815269 (and ((_ is Cons!54014) (toList!6751 lm!2709)) (not (= (_1!31551 (h!60434 (toList!6751 lm!2709))) lt!1944325))))))

(declare-fun b!4782347 () Bool)

(assert (=> b!4782347 (= e!2985723 (getValueByKey!2286 (t!361588 (toList!6751 lm!2709)) lt!1944325))))

(declare-fun b!4782348 () Bool)

(assert (=> b!4782348 (= e!2985723 None!12946)))

(assert (= (and d!1529081 c!815268) b!4782345))

(assert (= (and d!1529081 (not c!815268)) b!4782346))

(assert (= (and b!4782346 c!815269) b!4782347))

(assert (= (and b!4782346 (not c!815269)) b!4782348))

(declare-fun m!5759714 () Bool)

(assert (=> b!4782347 m!5759714))

(assert (=> b!4782037 d!1529081))

(assert (=> b!4782039 d!1529077))

(assert (=> b!4782039 d!1529081))

(declare-fun d!1529083 () Bool)

(declare-fun res!2030747 () Bool)

(declare-fun e!2985724 () Bool)

(assert (=> d!1529083 (=> res!2030747 e!2985724)))

(assert (=> d!1529083 (= res!2030747 ((_ is Nil!54014) (toList!6751 lt!1944332)))))

(assert (=> d!1529083 (= (forall!12128 (toList!6751 lt!1944332) lambda!228393) e!2985724)))

(declare-fun b!4782349 () Bool)

(declare-fun e!2985725 () Bool)

(assert (=> b!4782349 (= e!2985724 e!2985725)))

(declare-fun res!2030748 () Bool)

(assert (=> b!4782349 (=> (not res!2030748) (not e!2985725))))

(assert (=> b!4782349 (= res!2030748 (dynLambda!22017 lambda!228393 (h!60434 (toList!6751 lt!1944332))))))

(declare-fun b!4782350 () Bool)

(assert (=> b!4782350 (= e!2985725 (forall!12128 (t!361588 (toList!6751 lt!1944332)) lambda!228393))))

(assert (= (and d!1529083 (not res!2030747)) b!4782349))

(assert (= (and b!4782349 res!2030748) b!4782350))

(declare-fun b_lambda!185727 () Bool)

(assert (=> (not b_lambda!185727) (not b!4782349)))

(declare-fun m!5759716 () Bool)

(assert (=> b!4782349 m!5759716))

(declare-fun m!5759718 () Bool)

(assert (=> b!4782350 m!5759718))

(assert (=> d!1528971 d!1529083))

(declare-fun d!1529085 () Bool)

(declare-fun res!2030753 () Bool)

(declare-fun e!2985730 () Bool)

(assert (=> d!1529085 (=> res!2030753 e!2985730)))

(assert (=> d!1529085 (= res!2030753 (and ((_ is Cons!54013) (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) (= (_1!31550 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) key!6641)))))

(assert (=> d!1529085 (= (containsKey!3823 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641) e!2985730)))

(declare-fun b!4782355 () Bool)

(declare-fun e!2985731 () Bool)

(assert (=> b!4782355 (= e!2985730 e!2985731)))

(declare-fun res!2030754 () Bool)

(assert (=> b!4782355 (=> (not res!2030754) (not e!2985731))))

(assert (=> b!4782355 (= res!2030754 ((_ is Cons!54013) (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))))

(declare-fun b!4782356 () Bool)

(assert (=> b!4782356 (= e!2985731 (containsKey!3823 (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) key!6641))))

(assert (= (and d!1529085 (not res!2030753)) b!4782355))

(assert (= (and b!4782355 res!2030754) b!4782356))

(declare-fun m!5759720 () Bool)

(assert (=> b!4782356 m!5759720))

(assert (=> b!4782116 d!1529085))

(declare-fun d!1529087 () Bool)

(assert (=> d!1529087 (containsKey!3823 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641)))

(declare-fun lt!1944562 () Unit!139292)

(declare-fun choose!34303 (List!54137 K!15579) Unit!139292)

(assert (=> d!1529087 (= lt!1944562 (choose!34303 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(assert (=> d!1529087 (invariantList!1697 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))))

(assert (=> d!1529087 (= (lemmaInGetKeysListThenContainsKey!1043 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641) lt!1944562)))

(declare-fun bs!1152149 () Bool)

(assert (= bs!1152149 d!1529087))

(assert (=> bs!1152149 m!5759426))

(declare-fun m!5759722 () Bool)

(assert (=> bs!1152149 m!5759722))

(declare-fun m!5759724 () Bool)

(assert (=> bs!1152149 m!5759724))

(assert (=> b!4782116 d!1529087))

(assert (=> b!4782149 d!1528955))

(declare-fun d!1529089 () Bool)

(assert (=> d!1529089 (= (isDefined!10087 (getPair!808 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)) key!6641)) (not (isEmpty!29360 (getPair!808 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)) key!6641))))))

(declare-fun bs!1152150 () Bool)

(assert (= bs!1152150 d!1529089))

(assert (=> bs!1152150 m!5759484))

(declare-fun m!5759726 () Bool)

(assert (=> bs!1152150 m!5759726))

(assert (=> b!4782149 d!1529089))

(declare-fun d!1529091 () Bool)

(declare-fun e!2985733 () Bool)

(assert (=> d!1529091 e!2985733))

(declare-fun res!2030755 () Bool)

(assert (=> d!1529091 (=> res!2030755 e!2985733)))

(declare-fun lt!1944565 () Bool)

(assert (=> d!1529091 (= res!2030755 (not lt!1944565))))

(declare-fun lt!1944566 () Bool)

(assert (=> d!1529091 (= lt!1944565 lt!1944566)))

(declare-fun lt!1944563 () Unit!139292)

(declare-fun e!2985732 () Unit!139292)

(assert (=> d!1529091 (= lt!1944563 e!2985732)))

(declare-fun c!815270 () Bool)

(assert (=> d!1529091 (= c!815270 lt!1944566)))

(assert (=> d!1529091 (= lt!1944566 (containsKey!3822 (toList!6751 lm!2709) lt!1944493))))

(assert (=> d!1529091 (= (contains!17555 lm!2709 lt!1944493) lt!1944565)))

(declare-fun b!4782357 () Bool)

(declare-fun lt!1944564 () Unit!139292)

(assert (=> b!4782357 (= e!2985732 lt!1944564)))

(assert (=> b!4782357 (= lt!1944564 (lemmaContainsKeyImpliesGetValueByKeyDefined!2079 (toList!6751 lm!2709) lt!1944493))))

(assert (=> b!4782357 (isDefined!10090 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944493))))

(declare-fun b!4782358 () Bool)

(declare-fun Unit!139305 () Unit!139292)

(assert (=> b!4782358 (= e!2985732 Unit!139305)))

(declare-fun b!4782359 () Bool)

(assert (=> b!4782359 (= e!2985733 (isDefined!10090 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944493)))))

(assert (= (and d!1529091 c!815270) b!4782357))

(assert (= (and d!1529091 (not c!815270)) b!4782358))

(assert (= (and d!1529091 (not res!2030755)) b!4782359))

(declare-fun m!5759728 () Bool)

(assert (=> d!1529091 m!5759728))

(declare-fun m!5759730 () Bool)

(assert (=> b!4782357 m!5759730))

(assert (=> b!4782357 m!5759480))

(assert (=> b!4782357 m!5759480))

(declare-fun m!5759732 () Bool)

(assert (=> b!4782357 m!5759732))

(assert (=> b!4782359 m!5759480))

(assert (=> b!4782359 m!5759480))

(assert (=> b!4782359 m!5759732))

(assert (=> b!4782149 d!1529091))

(declare-fun d!1529093 () Bool)

(assert (=> d!1529093 (dynLambda!22017 lambda!228387 (tuple2!56515 (hash!4827 hashF!1687 key!6641) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641))))))

(declare-fun lt!1944567 () Unit!139292)

(assert (=> d!1529093 (= lt!1944567 (choose!34297 (toList!6751 lm!2709) lambda!228387 (tuple2!56515 (hash!4827 hashF!1687 key!6641) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))))))

(declare-fun e!2985734 () Bool)

(assert (=> d!1529093 e!2985734))

(declare-fun res!2030756 () Bool)

(assert (=> d!1529093 (=> (not res!2030756) (not e!2985734))))

(assert (=> d!1529093 (= res!2030756 (forall!12128 (toList!6751 lm!2709) lambda!228387))))

(assert (=> d!1529093 (= (forallContained!4072 (toList!6751 lm!2709) lambda!228387 (tuple2!56515 (hash!4827 hashF!1687 key!6641) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))) lt!1944567)))

(declare-fun b!4782360 () Bool)

(assert (=> b!4782360 (= e!2985734 (contains!17554 (toList!6751 lm!2709) (tuple2!56515 (hash!4827 hashF!1687 key!6641) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))))))

(assert (= (and d!1529093 res!2030756) b!4782360))

(declare-fun b_lambda!185729 () Bool)

(assert (=> (not b_lambda!185729) (not d!1529093)))

(declare-fun m!5759734 () Bool)

(assert (=> d!1529093 m!5759734))

(declare-fun m!5759736 () Bool)

(assert (=> d!1529093 m!5759736))

(assert (=> d!1529093 m!5759496))

(declare-fun m!5759738 () Bool)

(assert (=> b!4782360 m!5759738))

(assert (=> b!4782149 d!1529093))

(declare-fun d!1529095 () Bool)

(declare-fun lt!1944568 () Bool)

(assert (=> d!1529095 (= lt!1944568 (select (content!9651 (toList!6751 lm!2709)) (tuple2!56515 lt!1944493 lt!1944488)))))

(declare-fun e!2985736 () Bool)

(assert (=> d!1529095 (= lt!1944568 e!2985736)))

(declare-fun res!2030757 () Bool)

(assert (=> d!1529095 (=> (not res!2030757) (not e!2985736))))

(assert (=> d!1529095 (= res!2030757 ((_ is Cons!54014) (toList!6751 lm!2709)))))

(assert (=> d!1529095 (= (contains!17554 (toList!6751 lm!2709) (tuple2!56515 lt!1944493 lt!1944488)) lt!1944568)))

(declare-fun b!4782361 () Bool)

(declare-fun e!2985735 () Bool)

(assert (=> b!4782361 (= e!2985736 e!2985735)))

(declare-fun res!2030758 () Bool)

(assert (=> b!4782361 (=> res!2030758 e!2985735)))

(assert (=> b!4782361 (= res!2030758 (= (h!60434 (toList!6751 lm!2709)) (tuple2!56515 lt!1944493 lt!1944488)))))

(declare-fun b!4782362 () Bool)

(assert (=> b!4782362 (= e!2985735 (contains!17554 (t!361588 (toList!6751 lm!2709)) (tuple2!56515 lt!1944493 lt!1944488)))))

(assert (= (and d!1529095 res!2030757) b!4782361))

(assert (= (and b!4782361 (not res!2030758)) b!4782362))

(assert (=> d!1529095 m!5759500))

(declare-fun m!5759740 () Bool)

(assert (=> d!1529095 m!5759740))

(declare-fun m!5759742 () Bool)

(assert (=> b!4782362 m!5759742))

(assert (=> b!4782149 d!1529095))

(declare-fun d!1529097 () Bool)

(assert (=> d!1529097 (= (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)) (get!18372 (getValueByKey!2286 (toList!6751 lm!2709) (hash!4827 hashF!1687 key!6641))))))

(declare-fun bs!1152151 () Bool)

(assert (= bs!1152151 d!1529097))

(assert (=> bs!1152151 m!5759248))

(declare-fun m!5759744 () Bool)

(assert (=> bs!1152151 m!5759744))

(assert (=> bs!1152151 m!5759744))

(declare-fun m!5759746 () Bool)

(assert (=> bs!1152151 m!5759746))

(assert (=> b!4782149 d!1529097))

(declare-fun b!4782363 () Bool)

(declare-fun e!2985737 () Bool)

(declare-fun e!2985741 () Bool)

(assert (=> b!4782363 (= e!2985737 e!2985741)))

(declare-fun res!2030759 () Bool)

(assert (=> b!4782363 (=> (not res!2030759) (not e!2985741))))

(declare-fun lt!1944569 () Option!12944)

(assert (=> b!4782363 (= res!2030759 (isDefined!10087 lt!1944569))))

(declare-fun b!4782364 () Bool)

(declare-fun res!2030760 () Bool)

(assert (=> b!4782364 (=> (not res!2030760) (not e!2985741))))

(assert (=> b!4782364 (= res!2030760 (= (_1!31550 (get!18370 lt!1944569)) key!6641))))

(declare-fun b!4782365 () Bool)

(declare-fun e!2985740 () Bool)

(assert (=> b!4782365 (= e!2985740 (not (containsKey!3819 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)) key!6641)))))

(declare-fun b!4782366 () Bool)

(declare-fun e!2985738 () Option!12944)

(declare-fun e!2985739 () Option!12944)

(assert (=> b!4782366 (= e!2985738 e!2985739)))

(declare-fun c!815272 () Bool)

(assert (=> b!4782366 (= c!815272 ((_ is Cons!54013) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641))))))

(declare-fun b!4782367 () Bool)

(assert (=> b!4782367 (= e!2985739 (getPair!808 (t!361587 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641))) key!6641))))

(declare-fun b!4782368 () Bool)

(assert (=> b!4782368 (= e!2985739 None!12943)))

(declare-fun b!4782370 () Bool)

(assert (=> b!4782370 (= e!2985738 (Some!12943 (h!60433 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))))))

(declare-fun b!4782369 () Bool)

(assert (=> b!4782369 (= e!2985741 (contains!17559 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)) (get!18370 lt!1944569)))))

(declare-fun d!1529099 () Bool)

(assert (=> d!1529099 e!2985737))

(declare-fun res!2030761 () Bool)

(assert (=> d!1529099 (=> res!2030761 e!2985737)))

(assert (=> d!1529099 (= res!2030761 e!2985740)))

(declare-fun res!2030762 () Bool)

(assert (=> d!1529099 (=> (not res!2030762) (not e!2985740))))

(assert (=> d!1529099 (= res!2030762 (isEmpty!29360 lt!1944569))))

(assert (=> d!1529099 (= lt!1944569 e!2985738)))

(declare-fun c!815271 () Bool)

(assert (=> d!1529099 (= c!815271 (and ((_ is Cons!54013) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641))) (= (_1!31550 (h!60433 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))) key!6641)))))

(assert (=> d!1529099 (noDuplicateKeys!2295 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))))

(assert (=> d!1529099 (= (getPair!808 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)) key!6641) lt!1944569)))

(assert (= (and d!1529099 c!815271) b!4782370))

(assert (= (and d!1529099 (not c!815271)) b!4782366))

(assert (= (and b!4782366 c!815272) b!4782367))

(assert (= (and b!4782366 (not c!815272)) b!4782368))

(assert (= (and d!1529099 res!2030762) b!4782365))

(assert (= (and d!1529099 (not res!2030761)) b!4782363))

(assert (= (and b!4782363 res!2030759) b!4782364))

(assert (= (and b!4782364 res!2030760) b!4782369))

(declare-fun m!5759748 () Bool)

(assert (=> b!4782369 m!5759748))

(assert (=> b!4782369 m!5759482))

(assert (=> b!4782369 m!5759748))

(declare-fun m!5759750 () Bool)

(assert (=> b!4782369 m!5759750))

(assert (=> b!4782364 m!5759748))

(declare-fun m!5759752 () Bool)

(assert (=> b!4782363 m!5759752))

(assert (=> b!4782365 m!5759482))

(declare-fun m!5759754 () Bool)

(assert (=> b!4782365 m!5759754))

(declare-fun m!5759756 () Bool)

(assert (=> b!4782367 m!5759756))

(declare-fun m!5759758 () Bool)

(assert (=> d!1529099 m!5759758))

(assert (=> d!1529099 m!5759482))

(declare-fun m!5759760 () Bool)

(assert (=> d!1529099 m!5759760))

(assert (=> b!4782149 d!1529099))

(assert (=> b!4782149 d!1528941))

(declare-fun d!1529101 () Bool)

(assert (=> d!1529101 (contains!17554 (toList!6751 lm!2709) (tuple2!56515 lt!1944493 lt!1944488))))

(declare-fun lt!1944570 () Unit!139292)

(assert (=> d!1529101 (= lt!1944570 (choose!34294 lm!2709 lt!1944493 lt!1944488))))

(assert (=> d!1529101 (contains!17555 lm!2709 lt!1944493)))

(assert (=> d!1529101 (= (lemmaGetValueImpliesTupleContained!615 lm!2709 lt!1944493 lt!1944488) lt!1944570)))

(declare-fun bs!1152152 () Bool)

(assert (= bs!1152152 d!1529101))

(assert (=> bs!1152152 m!5759494))

(declare-fun m!5759762 () Bool)

(assert (=> bs!1152152 m!5759762))

(assert (=> bs!1152152 m!5759486))

(assert (=> b!4782149 d!1529101))

(declare-fun d!1529103 () Bool)

(declare-fun e!2985743 () Bool)

(assert (=> d!1529103 e!2985743))

(declare-fun res!2030763 () Bool)

(assert (=> d!1529103 (=> res!2030763 e!2985743)))

(declare-fun lt!1944573 () Bool)

(assert (=> d!1529103 (= res!2030763 (not lt!1944573))))

(declare-fun lt!1944574 () Bool)

(assert (=> d!1529103 (= lt!1944573 lt!1944574)))

(declare-fun lt!1944571 () Unit!139292)

(declare-fun e!2985742 () Unit!139292)

(assert (=> d!1529103 (= lt!1944571 e!2985742)))

(declare-fun c!815273 () Bool)

(assert (=> d!1529103 (= c!815273 lt!1944574)))

(assert (=> d!1529103 (= lt!1944574 (containsKey!3822 (toList!6751 lm!2709) (hash!4827 hashF!1687 key!6641)))))

(assert (=> d!1529103 (= (contains!17555 lm!2709 (hash!4827 hashF!1687 key!6641)) lt!1944573)))

(declare-fun b!4782371 () Bool)

(declare-fun lt!1944572 () Unit!139292)

(assert (=> b!4782371 (= e!2985742 lt!1944572)))

(assert (=> b!4782371 (= lt!1944572 (lemmaContainsKeyImpliesGetValueByKeyDefined!2079 (toList!6751 lm!2709) (hash!4827 hashF!1687 key!6641)))))

(assert (=> b!4782371 (isDefined!10090 (getValueByKey!2286 (toList!6751 lm!2709) (hash!4827 hashF!1687 key!6641)))))

(declare-fun b!4782372 () Bool)

(declare-fun Unit!139307 () Unit!139292)

(assert (=> b!4782372 (= e!2985742 Unit!139307)))

(declare-fun b!4782373 () Bool)

(assert (=> b!4782373 (= e!2985743 (isDefined!10090 (getValueByKey!2286 (toList!6751 lm!2709) (hash!4827 hashF!1687 key!6641))))))

(assert (= (and d!1529103 c!815273) b!4782371))

(assert (= (and d!1529103 (not c!815273)) b!4782372))

(assert (= (and d!1529103 (not res!2030763)) b!4782373))

(assert (=> d!1529103 m!5759248))

(declare-fun m!5759764 () Bool)

(assert (=> d!1529103 m!5759764))

(assert (=> b!4782371 m!5759248))

(declare-fun m!5759766 () Bool)

(assert (=> b!4782371 m!5759766))

(assert (=> b!4782371 m!5759248))

(assert (=> b!4782371 m!5759744))

(assert (=> b!4782371 m!5759744))

(declare-fun m!5759768 () Bool)

(assert (=> b!4782371 m!5759768))

(assert (=> b!4782373 m!5759248))

(assert (=> b!4782373 m!5759744))

(assert (=> b!4782373 m!5759744))

(assert (=> b!4782373 m!5759768))

(assert (=> b!4782149 d!1529103))

(declare-fun b!4782400 () Bool)

(assert (=> b!4782400 true))

(declare-fun bs!1152153 () Bool)

(declare-fun b!4782398 () Bool)

(assert (= bs!1152153 (and b!4782398 b!4782400)))

(declare-fun lambda!228425 () Int)

(declare-fun lambda!228424 () Int)

(assert (=> bs!1152153 (= (= (Cons!54013 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) (= lambda!228425 lambda!228424))))

(assert (=> b!4782398 true))

(declare-fun bs!1152154 () Bool)

(declare-fun b!4782393 () Bool)

(assert (= bs!1152154 (and b!4782393 b!4782400)))

(declare-fun lambda!228426 () Int)

(assert (=> bs!1152154 (= (= (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) (= lambda!228426 lambda!228424))))

(declare-fun bs!1152155 () Bool)

(assert (= bs!1152155 (and b!4782393 b!4782398)))

(assert (=> bs!1152155 (= (= (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) (Cons!54013 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))) (= lambda!228426 lambda!228425))))

(assert (=> b!4782393 true))

(declare-fun lt!1944591 () List!54140)

(declare-fun lambda!228427 () Int)

(declare-fun b!4782392 () Bool)

(declare-fun e!2985754 () Bool)

(declare-fun content!9653 (List!54140) (InoxSet K!15579))

(declare-fun map!12180 (List!54137 Int) List!54140)

(assert (=> b!4782392 (= e!2985754 (= (content!9653 lt!1944591) (content!9653 (map!12180 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) lambda!228427))))))

(declare-fun res!2030771 () Bool)

(assert (=> b!4782393 (=> (not res!2030771) (not e!2985754))))

(declare-fun forall!12130 (List!54140 Int) Bool)

(assert (=> b!4782393 (= res!2030771 (forall!12130 lt!1944591 lambda!228426))))

(declare-fun b!4782394 () Bool)

(declare-fun e!2985755 () Unit!139292)

(declare-fun Unit!139308 () Unit!139292)

(assert (=> b!4782394 (= e!2985755 Unit!139308)))

(declare-fun b!4782395 () Bool)

(declare-fun e!2985752 () Unit!139292)

(declare-fun Unit!139309 () Unit!139292)

(assert (=> b!4782395 (= e!2985752 Unit!139309)))

(declare-fun d!1529105 () Bool)

(assert (=> d!1529105 e!2985754))

(declare-fun res!2030772 () Bool)

(assert (=> d!1529105 (=> (not res!2030772) (not e!2985754))))

(declare-fun noDuplicate!901 (List!54140) Bool)

(assert (=> d!1529105 (= res!2030772 (noDuplicate!901 lt!1944591))))

(declare-fun e!2985753 () List!54140)

(assert (=> d!1529105 (= lt!1944591 e!2985753)))

(declare-fun c!815282 () Bool)

(assert (=> d!1529105 (= c!815282 ((_ is Cons!54013) (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))))

(assert (=> d!1529105 (invariantList!1697 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))))

(assert (=> d!1529105 (= (getKeysList!1043 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) lt!1944591)))

(declare-fun b!4782396 () Bool)

(declare-fun res!2030770 () Bool)

(assert (=> b!4782396 (=> (not res!2030770) (not e!2985754))))

(declare-fun length!658 (List!54140) Int)

(declare-fun length!659 (List!54137) Int)

(assert (=> b!4782396 (= res!2030770 (= (length!658 lt!1944591) (length!659 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))))))

(declare-fun b!4782397 () Bool)

(assert (=> b!4782397 (= e!2985753 Nil!54016)))

(assert (=> b!4782398 (= e!2985753 (Cons!54016 (_1!31550 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) (getKeysList!1043 (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))))))

(declare-fun c!815280 () Bool)

(assert (=> b!4782398 (= c!815280 (containsKey!3823 (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) (_1!31550 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))))))

(declare-fun lt!1944594 () Unit!139292)

(assert (=> b!4782398 (= lt!1944594 e!2985755)))

(declare-fun c!815281 () Bool)

(assert (=> b!4782398 (= c!815281 (contains!17560 (getKeysList!1043 (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) (_1!31550 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))))))

(declare-fun lt!1944590 () Unit!139292)

(assert (=> b!4782398 (= lt!1944590 e!2985752)))

(declare-fun lt!1944595 () List!54140)

(assert (=> b!4782398 (= lt!1944595 (getKeysList!1043 (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))))))

(declare-fun lt!1944589 () Unit!139292)

(declare-fun lemmaForallContainsAddHeadPreserves!318 (List!54137 List!54140 tuple2!56512) Unit!139292)

(assert (=> b!4782398 (= lt!1944589 (lemmaForallContainsAddHeadPreserves!318 (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) lt!1944595 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))))))

(assert (=> b!4782398 (forall!12130 lt!1944595 lambda!228425)))

(declare-fun lt!1944593 () Unit!139292)

(assert (=> b!4782398 (= lt!1944593 lt!1944589)))

(declare-fun b!4782399 () Bool)

(assert (=> b!4782399 false))

(declare-fun Unit!139310 () Unit!139292)

(assert (=> b!4782399 (= e!2985755 Unit!139310)))

(assert (=> b!4782400 false))

(declare-fun lt!1944592 () Unit!139292)

(declare-fun forallContained!4074 (List!54140 Int K!15579) Unit!139292)

(assert (=> b!4782400 (= lt!1944592 (forallContained!4074 (getKeysList!1043 (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) lambda!228424 (_1!31550 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))))))

(declare-fun Unit!139311 () Unit!139292)

(assert (=> b!4782400 (= e!2985752 Unit!139311)))

(assert (= (and d!1529105 c!815282) b!4782398))

(assert (= (and d!1529105 (not c!815282)) b!4782397))

(assert (= (and b!4782398 c!815280) b!4782399))

(assert (= (and b!4782398 (not c!815280)) b!4782394))

(assert (= (and b!4782398 c!815281) b!4782400))

(assert (= (and b!4782398 (not c!815281)) b!4782395))

(assert (= (and d!1529105 res!2030772) b!4782396))

(assert (= (and b!4782396 res!2030770) b!4782393))

(assert (= (and b!4782393 res!2030771) b!4782392))

(declare-fun m!5759770 () Bool)

(assert (=> b!4782393 m!5759770))

(declare-fun m!5759772 () Bool)

(assert (=> b!4782396 m!5759772))

(declare-fun m!5759774 () Bool)

(assert (=> b!4782396 m!5759774))

(declare-fun m!5759776 () Bool)

(assert (=> d!1529105 m!5759776))

(assert (=> d!1529105 m!5759724))

(declare-fun m!5759778 () Bool)

(assert (=> b!4782392 m!5759778))

(declare-fun m!5759780 () Bool)

(assert (=> b!4782392 m!5759780))

(assert (=> b!4782392 m!5759780))

(declare-fun m!5759782 () Bool)

(assert (=> b!4782392 m!5759782))

(declare-fun m!5759784 () Bool)

(assert (=> b!4782400 m!5759784))

(assert (=> b!4782400 m!5759784))

(declare-fun m!5759786 () Bool)

(assert (=> b!4782400 m!5759786))

(declare-fun m!5759788 () Bool)

(assert (=> b!4782398 m!5759788))

(declare-fun m!5759790 () Bool)

(assert (=> b!4782398 m!5759790))

(declare-fun m!5759792 () Bool)

(assert (=> b!4782398 m!5759792))

(assert (=> b!4782398 m!5759784))

(assert (=> b!4782398 m!5759784))

(declare-fun m!5759794 () Bool)

(assert (=> b!4782398 m!5759794))

(assert (=> b!4782109 d!1529105))

(declare-fun d!1529107 () Bool)

(declare-fun res!2030777 () Bool)

(declare-fun e!2985760 () Bool)

(assert (=> d!1529107 (=> res!2030777 e!2985760)))

(assert (=> d!1529107 (= res!2030777 (not ((_ is Cons!54013) (_2!31551 (h!60434 (toList!6751 lm!2709))))))))

(assert (=> d!1529107 (= (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lm!2709)))) e!2985760)))

(declare-fun b!4782407 () Bool)

(declare-fun e!2985761 () Bool)

(assert (=> b!4782407 (= e!2985760 e!2985761)))

(declare-fun res!2030778 () Bool)

(assert (=> b!4782407 (=> (not res!2030778) (not e!2985761))))

(assert (=> b!4782407 (= res!2030778 (not (containsKey!3819 (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709)))) (_1!31550 (h!60433 (_2!31551 (h!60434 (toList!6751 lm!2709))))))))))

(declare-fun b!4782408 () Bool)

(assert (=> b!4782408 (= e!2985761 (noDuplicateKeys!2295 (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709))))))))

(assert (= (and d!1529107 (not res!2030777)) b!4782407))

(assert (= (and b!4782407 res!2030778) b!4782408))

(declare-fun m!5759796 () Bool)

(assert (=> b!4782407 m!5759796))

(declare-fun m!5759798 () Bool)

(assert (=> b!4782408 m!5759798))

(assert (=> bs!1152129 d!1529107))

(declare-fun d!1529109 () Bool)

(declare-fun isEmpty!29363 (Option!12948) Bool)

(assert (=> d!1529109 (= (isDefined!10091 (getValueByKey!2287 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641)) (not (isEmpty!29363 (getValueByKey!2287 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))))

(declare-fun bs!1152156 () Bool)

(assert (= bs!1152156 d!1529109))

(assert (=> bs!1152156 m!5759428))

(declare-fun m!5759800 () Bool)

(assert (=> bs!1152156 m!5759800))

(assert (=> b!4782110 d!1529109))

(declare-fun b!4782419 () Bool)

(declare-fun e!2985767 () Option!12948)

(assert (=> b!4782419 (= e!2985767 (getValueByKey!2287 (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) key!6641))))

(declare-fun d!1529111 () Bool)

(declare-fun c!815287 () Bool)

(assert (=> d!1529111 (= c!815287 (and ((_ is Cons!54013) (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) (= (_1!31550 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) key!6641)))))

(declare-fun e!2985766 () Option!12948)

(assert (=> d!1529111 (= (getValueByKey!2287 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641) e!2985766)))

(declare-fun b!4782417 () Bool)

(assert (=> b!4782417 (= e!2985766 (Some!12947 (_2!31550 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))))))

(declare-fun b!4782418 () Bool)

(assert (=> b!4782418 (= e!2985766 e!2985767)))

(declare-fun c!815288 () Bool)

(assert (=> b!4782418 (= c!815288 (and ((_ is Cons!54013) (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) (not (= (_1!31550 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) key!6641))))))

(declare-fun b!4782420 () Bool)

(assert (=> b!4782420 (= e!2985767 None!12947)))

(assert (= (and d!1529111 c!815287) b!4782417))

(assert (= (and d!1529111 (not c!815287)) b!4782418))

(assert (= (and b!4782418 c!815288) b!4782419))

(assert (= (and b!4782418 (not c!815288)) b!4782420))

(declare-fun m!5759802 () Bool)

(assert (=> b!4782419 m!5759802))

(assert (=> b!4782110 d!1529111))

(assert (=> d!1528969 d!1528965))

(assert (=> d!1528969 d!1528967))

(declare-fun d!1529113 () Bool)

(assert (=> d!1529113 (not (containsKey!3819 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709)))) key!6641))))

(assert (=> d!1529113 true))

(declare-fun _$39!391 () Unit!139292)

(assert (=> d!1529113 (= (choose!34298 lm!2709 key!6641 (_1!31551 (h!60434 (toList!6751 lm!2709))) hashF!1687) _$39!391)))

(declare-fun bs!1152157 () Bool)

(assert (= bs!1152157 d!1529113))

(assert (=> bs!1152157 m!5759208))

(assert (=> bs!1152157 m!5759208))

(assert (=> bs!1152157 m!5759210))

(assert (=> d!1528969 d!1529113))

(declare-fun d!1529115 () Bool)

(declare-fun res!2030779 () Bool)

(declare-fun e!2985768 () Bool)

(assert (=> d!1529115 (=> res!2030779 e!2985768)))

(assert (=> d!1529115 (= res!2030779 ((_ is Nil!54014) (toList!6751 lm!2709)))))

(assert (=> d!1529115 (= (forall!12128 (toList!6751 lm!2709) lambda!228390) e!2985768)))

(declare-fun b!4782421 () Bool)

(declare-fun e!2985769 () Bool)

(assert (=> b!4782421 (= e!2985768 e!2985769)))

(declare-fun res!2030780 () Bool)

(assert (=> b!4782421 (=> (not res!2030780) (not e!2985769))))

(assert (=> b!4782421 (= res!2030780 (dynLambda!22017 lambda!228390 (h!60434 (toList!6751 lm!2709))))))

(declare-fun b!4782422 () Bool)

(assert (=> b!4782422 (= e!2985769 (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228390))))

(assert (= (and d!1529115 (not res!2030779)) b!4782421))

(assert (= (and b!4782421 res!2030780) b!4782422))

(declare-fun b_lambda!185731 () Bool)

(assert (=> (not b_lambda!185731) (not b!4782421)))

(declare-fun m!5759804 () Bool)

(assert (=> b!4782421 m!5759804))

(declare-fun m!5759806 () Bool)

(assert (=> b!4782422 m!5759806))

(assert (=> d!1528969 d!1529115))

(declare-fun d!1529117 () Bool)

(assert (=> d!1529117 (= (isEmpty!29360 lt!1944329) (not ((_ is Some!12943) lt!1944329)))))

(assert (=> d!1528949 d!1529117))

(declare-fun d!1529119 () Bool)

(declare-fun res!2030781 () Bool)

(declare-fun e!2985770 () Bool)

(assert (=> d!1529119 (=> res!2030781 e!2985770)))

(assert (=> d!1529119 (= res!2030781 (and ((_ is Cons!54013) (_2!31551 (h!60434 (tail!9193 (toList!6751 lm!2709))))) (= (_1!31550 (h!60433 (_2!31551 (h!60434 (tail!9193 (toList!6751 lm!2709)))))) key!6641)))))

(assert (=> d!1529119 (= (containsKey!3819 (_2!31551 (h!60434 (tail!9193 (toList!6751 lm!2709)))) key!6641) e!2985770)))

(declare-fun b!4782423 () Bool)

(declare-fun e!2985771 () Bool)

(assert (=> b!4782423 (= e!2985770 e!2985771)))

(declare-fun res!2030782 () Bool)

(assert (=> b!4782423 (=> (not res!2030782) (not e!2985771))))

(assert (=> b!4782423 (= res!2030782 ((_ is Cons!54013) (_2!31551 (h!60434 (tail!9193 (toList!6751 lm!2709))))))))

(declare-fun b!4782424 () Bool)

(assert (=> b!4782424 (= e!2985771 (containsKey!3819 (t!361587 (_2!31551 (h!60434 (tail!9193 (toList!6751 lm!2709))))) key!6641))))

(assert (= (and d!1529119 (not res!2030781)) b!4782423))

(assert (= (and b!4782423 res!2030782) b!4782424))

(declare-fun m!5759808 () Bool)

(assert (=> b!4782424 m!5759808))

(assert (=> b!4782178 d!1529119))

(assert (=> d!1528899 d!1528921))

(assert (=> d!1528899 d!1528953))

(declare-fun d!1529121 () Bool)

(assert (=> d!1529121 (contains!17556 (extractMap!2363 (toList!6751 lm!2709)) key!6641)))

(assert (=> d!1529121 true))

(declare-fun _$34!925 () Unit!139292)

(assert (=> d!1529121 (= (choose!34293 lm!2709 key!6641 hashF!1687) _$34!925)))

(declare-fun bs!1152158 () Bool)

(assert (= bs!1152158 d!1529121))

(assert (=> bs!1152158 m!5759234))

(assert (=> bs!1152158 m!5759234))

(assert (=> bs!1152158 m!5759240))

(assert (=> d!1528899 d!1529121))

(declare-fun d!1529123 () Bool)

(declare-fun res!2030783 () Bool)

(declare-fun e!2985772 () Bool)

(assert (=> d!1529123 (=> res!2030783 e!2985772)))

(assert (=> d!1529123 (= res!2030783 ((_ is Nil!54014) (toList!6751 lm!2709)))))

(assert (=> d!1529123 (= (forall!12128 (toList!6751 lm!2709) lambda!228361) e!2985772)))

(declare-fun b!4782425 () Bool)

(declare-fun e!2985773 () Bool)

(assert (=> b!4782425 (= e!2985772 e!2985773)))

(declare-fun res!2030784 () Bool)

(assert (=> b!4782425 (=> (not res!2030784) (not e!2985773))))

(assert (=> b!4782425 (= res!2030784 (dynLambda!22017 lambda!228361 (h!60434 (toList!6751 lm!2709))))))

(declare-fun b!4782426 () Bool)

(assert (=> b!4782426 (= e!2985773 (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228361))))

(assert (= (and d!1529123 (not res!2030783)) b!4782425))

(assert (= (and b!4782425 res!2030784) b!4782426))

(declare-fun b_lambda!185733 () Bool)

(assert (=> (not b_lambda!185733) (not b!4782425)))

(declare-fun m!5759810 () Bool)

(assert (=> b!4782425 m!5759810))

(declare-fun m!5759812 () Bool)

(assert (=> b!4782426 m!5759812))

(assert (=> d!1528899 d!1529123))

(declare-fun d!1529125 () Bool)

(declare-fun res!2030785 () Bool)

(declare-fun e!2985774 () Bool)

(assert (=> d!1529125 (=> res!2030785 e!2985774)))

(assert (=> d!1529125 (= res!2030785 ((_ is Nil!54014) (toList!6751 lm!2709)))))

(assert (=> d!1529125 (= (forall!12128 (toList!6751 lm!2709) lambda!228397) e!2985774)))

(declare-fun b!4782427 () Bool)

(declare-fun e!2985775 () Bool)

(assert (=> b!4782427 (= e!2985774 e!2985775)))

(declare-fun res!2030786 () Bool)

(assert (=> b!4782427 (=> (not res!2030786) (not e!2985775))))

(assert (=> b!4782427 (= res!2030786 (dynLambda!22017 lambda!228397 (h!60434 (toList!6751 lm!2709))))))

(declare-fun b!4782428 () Bool)

(assert (=> b!4782428 (= e!2985775 (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228397))))

(assert (= (and d!1529125 (not res!2030785)) b!4782427))

(assert (= (and b!4782427 res!2030786) b!4782428))

(declare-fun b_lambda!185735 () Bool)

(assert (=> (not b_lambda!185735) (not b!4782427)))

(declare-fun m!5759814 () Bool)

(assert (=> b!4782427 m!5759814))

(declare-fun m!5759816 () Bool)

(assert (=> b!4782428 m!5759816))

(assert (=> d!1528985 d!1529125))

(declare-fun d!1529127 () Bool)

(assert (=> d!1529127 (= (get!18372 (getValueByKey!2286 (toList!6751 lm!2709) (_1!31551 (h!60434 (toList!6751 lm!2709))))) (v!48165 (getValueByKey!2286 (toList!6751 lm!2709) (_1!31551 (h!60434 (toList!6751 lm!2709))))))))

(assert (=> d!1528967 d!1529127))

(declare-fun d!1529129 () Bool)

(declare-fun c!815289 () Bool)

(assert (=> d!1529129 (= c!815289 (and ((_ is Cons!54014) (toList!6751 lm!2709)) (= (_1!31551 (h!60434 (toList!6751 lm!2709))) (_1!31551 (h!60434 (toList!6751 lm!2709))))))))

(declare-fun e!2985776 () Option!12947)

(assert (=> d!1529129 (= (getValueByKey!2286 (toList!6751 lm!2709) (_1!31551 (h!60434 (toList!6751 lm!2709)))) e!2985776)))

(declare-fun b!4782429 () Bool)

(assert (=> b!4782429 (= e!2985776 (Some!12946 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(declare-fun b!4782430 () Bool)

(declare-fun e!2985777 () Option!12947)

(assert (=> b!4782430 (= e!2985776 e!2985777)))

(declare-fun c!815290 () Bool)

(assert (=> b!4782430 (= c!815290 (and ((_ is Cons!54014) (toList!6751 lm!2709)) (not (= (_1!31551 (h!60434 (toList!6751 lm!2709))) (_1!31551 (h!60434 (toList!6751 lm!2709)))))))))

(declare-fun b!4782431 () Bool)

(assert (=> b!4782431 (= e!2985777 (getValueByKey!2286 (t!361588 (toList!6751 lm!2709)) (_1!31551 (h!60434 (toList!6751 lm!2709)))))))

(declare-fun b!4782432 () Bool)

(assert (=> b!4782432 (= e!2985777 None!12946)))

(assert (= (and d!1529129 c!815289) b!4782429))

(assert (= (and d!1529129 (not c!815289)) b!4782430))

(assert (= (and b!4782430 c!815290) b!4782431))

(assert (= (and b!4782430 (not c!815290)) b!4782432))

(declare-fun m!5759818 () Bool)

(assert (=> b!4782431 m!5759818))

(assert (=> d!1528967 d!1529129))

(declare-fun d!1529131 () Bool)

(assert (=> d!1529131 (= (get!18372 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944325)) (v!48165 (getValueByKey!2286 (toList!6751 lm!2709) lt!1944325)))))

(assert (=> d!1528891 d!1529131))

(assert (=> d!1528891 d!1529081))

(declare-fun d!1529133 () Bool)

(declare-fun res!2030789 () Bool)

(declare-fun e!2985779 () Bool)

(assert (=> d!1529133 (=> res!2030789 e!2985779)))

(declare-fun e!2985778 () Bool)

(assert (=> d!1529133 (= res!2030789 e!2985778)))

(declare-fun res!2030788 () Bool)

(assert (=> d!1529133 (=> (not res!2030788) (not e!2985778))))

(assert (=> d!1529133 (= res!2030788 ((_ is Cons!54014) (t!361588 (tail!9193 (toList!6751 lm!2709)))))))

(assert (=> d!1529133 (= (containsKeyBiggerList!492 (t!361588 (tail!9193 (toList!6751 lm!2709))) key!6641) e!2985779)))

(declare-fun b!4782433 () Bool)

(assert (=> b!4782433 (= e!2985778 (containsKey!3819 (_2!31551 (h!60434 (t!361588 (tail!9193 (toList!6751 lm!2709))))) key!6641))))

(declare-fun b!4782434 () Bool)

(declare-fun e!2985780 () Bool)

(assert (=> b!4782434 (= e!2985779 e!2985780)))

(declare-fun res!2030787 () Bool)

(assert (=> b!4782434 (=> (not res!2030787) (not e!2985780))))

(assert (=> b!4782434 (= res!2030787 ((_ is Cons!54014) (t!361588 (tail!9193 (toList!6751 lm!2709)))))))

(declare-fun b!4782435 () Bool)

(assert (=> b!4782435 (= e!2985780 (containsKeyBiggerList!492 (t!361588 (t!361588 (tail!9193 (toList!6751 lm!2709)))) key!6641))))

(assert (= (and d!1529133 res!2030788) b!4782433))

(assert (= (and d!1529133 (not res!2030789)) b!4782434))

(assert (= (and b!4782434 res!2030787) b!4782435))

(declare-fun m!5759820 () Bool)

(assert (=> b!4782433 m!5759820))

(declare-fun m!5759822 () Bool)

(assert (=> b!4782435 m!5759822))

(assert (=> b!4782180 d!1529133))

(assert (=> b!4782147 d!1528985))

(declare-fun d!1529135 () Bool)

(assert (=> d!1529135 (= (get!18370 lt!1944390) (v!48158 lt!1944390))))

(assert (=> b!4782057 d!1529135))

(assert (=> b!4782181 d!1528963))

(declare-fun d!1529137 () Bool)

(declare-fun res!2030790 () Bool)

(declare-fun e!2985781 () Bool)

(assert (=> d!1529137 (=> res!2030790 e!2985781)))

(assert (=> d!1529137 (= res!2030790 ((_ is Nil!54014) (t!361588 (toList!6751 lt!1944332))))))

(assert (=> d!1529137 (= (forall!12128 (t!361588 (toList!6751 lt!1944332)) lambda!228345) e!2985781)))

(declare-fun b!4782436 () Bool)

(declare-fun e!2985782 () Bool)

(assert (=> b!4782436 (= e!2985781 e!2985782)))

(declare-fun res!2030791 () Bool)

(assert (=> b!4782436 (=> (not res!2030791) (not e!2985782))))

(assert (=> b!4782436 (= res!2030791 (dynLambda!22017 lambda!228345 (h!60434 (t!361588 (toList!6751 lt!1944332)))))))

(declare-fun b!4782437 () Bool)

(assert (=> b!4782437 (= e!2985782 (forall!12128 (t!361588 (t!361588 (toList!6751 lt!1944332))) lambda!228345))))

(assert (= (and d!1529137 (not res!2030790)) b!4782436))

(assert (= (and b!4782436 res!2030791) b!4782437))

(declare-fun b_lambda!185737 () Bool)

(assert (=> (not b_lambda!185737) (not b!4782436)))

(declare-fun m!5759824 () Bool)

(assert (=> b!4782436 m!5759824))

(declare-fun m!5759826 () Bool)

(assert (=> b!4782437 m!5759826))

(assert (=> b!4782171 d!1529137))

(declare-fun d!1529139 () Bool)

(declare-fun res!2030794 () Bool)

(declare-fun e!2985784 () Bool)

(assert (=> d!1529139 (=> res!2030794 e!2985784)))

(declare-fun e!2985783 () Bool)

(assert (=> d!1529139 (= res!2030794 e!2985783)))

(declare-fun res!2030793 () Bool)

(assert (=> d!1529139 (=> (not res!2030793) (not e!2985783))))

(assert (=> d!1529139 (= res!2030793 ((_ is Cons!54014) (t!361588 (toList!6751 lm!2709))))))

(assert (=> d!1529139 (= (containsKeyBiggerList!492 (t!361588 (toList!6751 lm!2709)) key!6641) e!2985784)))

(declare-fun b!4782438 () Bool)

(assert (=> b!4782438 (= e!2985783 (containsKey!3819 (_2!31551 (h!60434 (t!361588 (toList!6751 lm!2709)))) key!6641))))

(declare-fun b!4782439 () Bool)

(declare-fun e!2985785 () Bool)

(assert (=> b!4782439 (= e!2985784 e!2985785)))

(declare-fun res!2030792 () Bool)

(assert (=> b!4782439 (=> (not res!2030792) (not e!2985785))))

(assert (=> b!4782439 (= res!2030792 ((_ is Cons!54014) (t!361588 (toList!6751 lm!2709))))))

(declare-fun b!4782440 () Bool)

(assert (=> b!4782440 (= e!2985785 (containsKeyBiggerList!492 (t!361588 (t!361588 (toList!6751 lm!2709))) key!6641))))

(assert (= (and d!1529139 res!2030793) b!4782438))

(assert (= (and d!1529139 (not res!2030794)) b!4782439))

(assert (= (and b!4782439 res!2030792) b!4782440))

(declare-fun m!5759828 () Bool)

(assert (=> b!4782438 m!5759828))

(declare-fun m!5759830 () Bool)

(assert (=> b!4782440 m!5759830))

(assert (=> b!4782183 d!1529139))

(declare-fun d!1529141 () Bool)

(declare-fun res!2030795 () Bool)

(declare-fun e!2985786 () Bool)

(assert (=> d!1529141 (=> res!2030795 e!2985786)))

(assert (=> d!1529141 (= res!2030795 (and ((_ is Cons!54013) (t!361587 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709)))))) (= (_1!31550 (h!60433 (t!361587 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709))))))) key!6641)))))

(assert (=> d!1529141 (= (containsKey!3819 (t!361587 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709))))) key!6641) e!2985786)))

(declare-fun b!4782441 () Bool)

(declare-fun e!2985787 () Bool)

(assert (=> b!4782441 (= e!2985786 e!2985787)))

(declare-fun res!2030796 () Bool)

(assert (=> b!4782441 (=> (not res!2030796) (not e!2985787))))

(assert (=> b!4782441 (= res!2030796 ((_ is Cons!54013) (t!361587 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709)))))))))

(declare-fun b!4782442 () Bool)

(assert (=> b!4782442 (= e!2985787 (containsKey!3819 (t!361587 (t!361587 (apply!12891 lm!2709 (_1!31551 (h!60434 (toList!6751 lm!2709)))))) key!6641))))

(assert (= (and d!1529141 (not res!2030795)) b!4782441))

(assert (= (and b!4782441 res!2030796) b!4782442))

(declare-fun m!5759832 () Bool)

(assert (=> b!4782442 m!5759832))

(assert (=> b!4782167 d!1529141))

(declare-fun d!1529143 () Bool)

(declare-fun res!2030797 () Bool)

(declare-fun e!2985788 () Bool)

(assert (=> d!1529143 (=> res!2030797 e!2985788)))

(assert (=> d!1529143 (= res!2030797 (not ((_ is Cons!54013) (_2!31551 (h!60434 (toList!6751 lt!1944332))))))))

(assert (=> d!1529143 (= (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lt!1944332)))) e!2985788)))

(declare-fun b!4782443 () Bool)

(declare-fun e!2985789 () Bool)

(assert (=> b!4782443 (= e!2985788 e!2985789)))

(declare-fun res!2030798 () Bool)

(assert (=> b!4782443 (=> (not res!2030798) (not e!2985789))))

(assert (=> b!4782443 (= res!2030798 (not (containsKey!3819 (t!361587 (_2!31551 (h!60434 (toList!6751 lt!1944332)))) (_1!31550 (h!60433 (_2!31551 (h!60434 (toList!6751 lt!1944332))))))))))

(declare-fun b!4782444 () Bool)

(assert (=> b!4782444 (= e!2985789 (noDuplicateKeys!2295 (t!361587 (_2!31551 (h!60434 (toList!6751 lt!1944332))))))))

(assert (= (and d!1529143 (not res!2030797)) b!4782443))

(assert (= (and b!4782443 res!2030798) b!4782444))

(declare-fun m!5759834 () Bool)

(assert (=> b!4782443 m!5759834))

(declare-fun m!5759836 () Bool)

(assert (=> b!4782444 m!5759836))

(assert (=> bs!1152127 d!1529143))

(declare-fun d!1529145 () Bool)

(declare-fun lt!1944596 () Bool)

(assert (=> d!1529145 (= lt!1944596 (select (content!9651 (toList!6751 lm!2709)) (tuple2!56515 lt!1944325 lt!1944328)))))

(declare-fun e!2985791 () Bool)

(assert (=> d!1529145 (= lt!1944596 e!2985791)))

(declare-fun res!2030799 () Bool)

(assert (=> d!1529145 (=> (not res!2030799) (not e!2985791))))

(assert (=> d!1529145 (= res!2030799 ((_ is Cons!54014) (toList!6751 lm!2709)))))

(assert (=> d!1529145 (= (contains!17554 (toList!6751 lm!2709) (tuple2!56515 lt!1944325 lt!1944328)) lt!1944596)))

(declare-fun b!4782445 () Bool)

(declare-fun e!2985790 () Bool)

(assert (=> b!4782445 (= e!2985791 e!2985790)))

(declare-fun res!2030800 () Bool)

(assert (=> b!4782445 (=> res!2030800 e!2985790)))

(assert (=> b!4782445 (= res!2030800 (= (h!60434 (toList!6751 lm!2709)) (tuple2!56515 lt!1944325 lt!1944328)))))

(declare-fun b!4782446 () Bool)

(assert (=> b!4782446 (= e!2985790 (contains!17554 (t!361588 (toList!6751 lm!2709)) (tuple2!56515 lt!1944325 lt!1944328)))))

(assert (= (and d!1529145 res!2030799) b!4782445))

(assert (= (and b!4782445 (not res!2030800)) b!4782446))

(assert (=> d!1529145 m!5759500))

(declare-fun m!5759838 () Bool)

(assert (=> d!1529145 m!5759838))

(declare-fun m!5759840 () Bool)

(assert (=> b!4782446 m!5759840))

(assert (=> d!1528939 d!1529145))

(declare-fun d!1529147 () Bool)

(assert (=> d!1529147 (contains!17554 (toList!6751 lm!2709) (tuple2!56515 lt!1944325 lt!1944328))))

(assert (=> d!1529147 true))

(declare-fun _$41!499 () Unit!139292)

(assert (=> d!1529147 (= (choose!34294 lm!2709 lt!1944325 lt!1944328) _$41!499)))

(declare-fun bs!1152159 () Bool)

(assert (= bs!1152159 d!1529147))

(assert (=> bs!1152159 m!5759452))

(assert (=> d!1528939 d!1529147))

(assert (=> d!1528939 d!1528915))

(declare-fun b!4782532 () Bool)

(assert (=> b!4782532 true))

(declare-fun bs!1152200 () Bool)

(declare-fun b!4782529 () Bool)

(assert (= bs!1152200 (and b!4782529 b!4782532)))

(declare-fun lambda!228493 () Int)

(declare-fun lambda!228492 () Int)

(assert (=> bs!1152200 (= lambda!228493 lambda!228492)))

(assert (=> b!4782529 true))

(declare-fun lt!1944752 () ListMap!6223)

(declare-fun lambda!228494 () Int)

(assert (=> bs!1152200 (= (= lt!1944752 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) (= lambda!228494 lambda!228492))))

(assert (=> b!4782529 (= (= lt!1944752 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) (= lambda!228494 lambda!228493))))

(assert (=> b!4782529 true))

(declare-fun bs!1152201 () Bool)

(declare-fun d!1529149 () Bool)

(assert (= bs!1152201 (and d!1529149 b!4782532)))

(declare-fun lt!1944735 () ListMap!6223)

(declare-fun lambda!228495 () Int)

(assert (=> bs!1152201 (= (= lt!1944735 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) (= lambda!228495 lambda!228492))))

(declare-fun bs!1152202 () Bool)

(assert (= bs!1152202 (and d!1529149 b!4782529)))

(assert (=> bs!1152202 (= (= lt!1944735 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) (= lambda!228495 lambda!228493))))

(assert (=> bs!1152202 (= (= lt!1944735 lt!1944752) (= lambda!228495 lambda!228494))))

(assert (=> d!1529149 true))

(declare-fun e!2985854 () ListMap!6223)

(assert (=> b!4782529 (= e!2985854 lt!1944752)))

(declare-fun lt!1944747 () ListMap!6223)

(declare-fun +!2469 (ListMap!6223 tuple2!56512) ListMap!6223)

(assert (=> b!4782529 (= lt!1944747 (+!2469 (extractMap!2363 (t!361588 (toList!6751 lm!2709))) (h!60433 (_2!31551 (h!60434 (toList!6751 lm!2709))))))))

(assert (=> b!4782529 (= lt!1944752 (addToMapMapFromBucket!1662 (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709)))) (+!2469 (extractMap!2363 (t!361588 (toList!6751 lm!2709))) (h!60433 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))))

(declare-fun lt!1944741 () Unit!139292)

(declare-fun call!334764 () Unit!139292)

(assert (=> b!4782529 (= lt!1944741 call!334764)))

(declare-fun forall!12132 (List!54137 Int) Bool)

(assert (=> b!4782529 (forall!12132 (toList!6752 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) lambda!228493)))

(declare-fun lt!1944743 () Unit!139292)

(assert (=> b!4782529 (= lt!1944743 lt!1944741)))

(declare-fun call!334765 () Bool)

(assert (=> b!4782529 call!334765))

(declare-fun lt!1944746 () Unit!139292)

(declare-fun Unit!139323 () Unit!139292)

(assert (=> b!4782529 (= lt!1944746 Unit!139323)))

(declare-fun call!334766 () Bool)

(assert (=> b!4782529 call!334766))

(declare-fun lt!1944751 () Unit!139292)

(declare-fun Unit!139324 () Unit!139292)

(assert (=> b!4782529 (= lt!1944751 Unit!139324)))

(declare-fun lt!1944737 () Unit!139292)

(declare-fun Unit!139325 () Unit!139292)

(assert (=> b!4782529 (= lt!1944737 Unit!139325)))

(declare-fun lt!1944748 () Unit!139292)

(declare-fun forallContained!4076 (List!54137 Int tuple2!56512) Unit!139292)

(assert (=> b!4782529 (= lt!1944748 (forallContained!4076 (toList!6752 lt!1944747) lambda!228494 (h!60433 (_2!31551 (h!60434 (toList!6751 lm!2709))))))))

(assert (=> b!4782529 (contains!17556 lt!1944747 (_1!31550 (h!60433 (_2!31551 (h!60434 (toList!6751 lm!2709))))))))

(declare-fun lt!1944753 () Unit!139292)

(declare-fun Unit!139326 () Unit!139292)

(assert (=> b!4782529 (= lt!1944753 Unit!139326)))

(assert (=> b!4782529 (contains!17556 lt!1944752 (_1!31550 (h!60433 (_2!31551 (h!60434 (toList!6751 lm!2709))))))))

(declare-fun lt!1944742 () Unit!139292)

(declare-fun Unit!139327 () Unit!139292)

(assert (=> b!4782529 (= lt!1944742 Unit!139327)))

(assert (=> b!4782529 (forall!12132 (_2!31551 (h!60434 (toList!6751 lm!2709))) lambda!228494)))

(declare-fun lt!1944739 () Unit!139292)

(declare-fun Unit!139328 () Unit!139292)

(assert (=> b!4782529 (= lt!1944739 Unit!139328)))

(assert (=> b!4782529 (forall!12132 (toList!6752 lt!1944747) lambda!228494)))

(declare-fun lt!1944736 () Unit!139292)

(declare-fun Unit!139329 () Unit!139292)

(assert (=> b!4782529 (= lt!1944736 Unit!139329)))

(declare-fun lt!1944734 () Unit!139292)

(declare-fun Unit!139330 () Unit!139292)

(assert (=> b!4782529 (= lt!1944734 Unit!139330)))

(declare-fun lt!1944745 () Unit!139292)

(declare-fun addForallContainsKeyThenBeforeAdding!924 (ListMap!6223 ListMap!6223 K!15579 V!15825) Unit!139292)

(assert (=> b!4782529 (= lt!1944745 (addForallContainsKeyThenBeforeAdding!924 (extractMap!2363 (t!361588 (toList!6751 lm!2709))) lt!1944752 (_1!31550 (h!60433 (_2!31551 (h!60434 (toList!6751 lm!2709))))) (_2!31550 (h!60433 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))))

(assert (=> b!4782529 (forall!12132 (toList!6752 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) lambda!228494)))

(declare-fun lt!1944740 () Unit!139292)

(assert (=> b!4782529 (= lt!1944740 lt!1944745)))

(assert (=> b!4782529 (forall!12132 (toList!6752 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) lambda!228494)))

(declare-fun lt!1944744 () Unit!139292)

(declare-fun Unit!139331 () Unit!139292)

(assert (=> b!4782529 (= lt!1944744 Unit!139331)))

(declare-fun res!2030858 () Bool)

(assert (=> b!4782529 (= res!2030858 (forall!12132 (_2!31551 (h!60434 (toList!6751 lm!2709))) lambda!228494))))

(declare-fun e!2985855 () Bool)

(assert (=> b!4782529 (=> (not res!2030858) (not e!2985855))))

(assert (=> b!4782529 e!2985855))

(declare-fun lt!1944738 () Unit!139292)

(declare-fun Unit!139332 () Unit!139292)

(assert (=> b!4782529 (= lt!1944738 Unit!139332)))

(declare-fun bm!334759 () Bool)

(declare-fun c!815299 () Bool)

(assert (=> bm!334759 (= call!334766 (forall!12132 (ite c!815299 (toList!6752 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709))))) (ite c!815299 lambda!228492 lambda!228494)))))

(declare-fun bm!334760 () Bool)

(assert (=> bm!334760 (= call!334765 (forall!12132 (ite c!815299 (toList!6752 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) (toList!6752 lt!1944747)) (ite c!815299 lambda!228492 lambda!228494)))))

(declare-fun e!2985856 () Bool)

(assert (=> d!1529149 e!2985856))

(declare-fun res!2030857 () Bool)

(assert (=> d!1529149 (=> (not res!2030857) (not e!2985856))))

(assert (=> d!1529149 (= res!2030857 (forall!12132 (_2!31551 (h!60434 (toList!6751 lm!2709))) lambda!228495))))

(assert (=> d!1529149 (= lt!1944735 e!2985854)))

(assert (=> d!1529149 (= c!815299 ((_ is Nil!54013) (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(assert (=> d!1529149 (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lm!2709))))))

(assert (=> d!1529149 (= (addToMapMapFromBucket!1662 (_2!31551 (h!60434 (toList!6751 lm!2709))) (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) lt!1944735)))

(declare-fun b!4782530 () Bool)

(assert (=> b!4782530 (= e!2985856 (invariantList!1697 (toList!6752 lt!1944735)))))

(declare-fun b!4782531 () Bool)

(declare-fun res!2030859 () Bool)

(assert (=> b!4782531 (=> (not res!2030859) (not e!2985856))))

(assert (=> b!4782531 (= res!2030859 (forall!12132 (toList!6752 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) lambda!228495))))

(declare-fun bm!334761 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!925 (ListMap!6223) Unit!139292)

(assert (=> bm!334761 (= call!334764 (lemmaContainsAllItsOwnKeys!925 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))))))

(assert (=> b!4782532 (= e!2985854 (extractMap!2363 (t!361588 (toList!6751 lm!2709))))))

(declare-fun lt!1944754 () Unit!139292)

(assert (=> b!4782532 (= lt!1944754 call!334764)))

(assert (=> b!4782532 call!334765))

(declare-fun lt!1944749 () Unit!139292)

(assert (=> b!4782532 (= lt!1944749 lt!1944754)))

(assert (=> b!4782532 call!334766))

(declare-fun lt!1944750 () Unit!139292)

(declare-fun Unit!139333 () Unit!139292)

(assert (=> b!4782532 (= lt!1944750 Unit!139333)))

(declare-fun b!4782533 () Bool)

(assert (=> b!4782533 (= e!2985855 (forall!12132 (toList!6752 (extractMap!2363 (t!361588 (toList!6751 lm!2709)))) lambda!228494))))

(assert (= (and d!1529149 c!815299) b!4782532))

(assert (= (and d!1529149 (not c!815299)) b!4782529))

(assert (= (and b!4782529 res!2030858) b!4782533))

(assert (= (or b!4782532 b!4782529) bm!334761))

(assert (= (or b!4782532 b!4782529) bm!334760))

(assert (= (or b!4782532 b!4782529) bm!334759))

(assert (= (and d!1529149 res!2030857) b!4782531))

(assert (= (and b!4782531 res!2030859) b!4782530))

(declare-fun m!5759968 () Bool)

(assert (=> b!4782533 m!5759968))

(declare-fun m!5759970 () Bool)

(assert (=> bm!334760 m!5759970))

(assert (=> bm!334761 m!5759470))

(declare-fun m!5759972 () Bool)

(assert (=> bm!334761 m!5759972))

(declare-fun m!5759974 () Bool)

(assert (=> b!4782529 m!5759974))

(declare-fun m!5759976 () Bool)

(assert (=> b!4782529 m!5759976))

(assert (=> b!4782529 m!5759470))

(declare-fun m!5759978 () Bool)

(assert (=> b!4782529 m!5759978))

(declare-fun m!5759980 () Bool)

(assert (=> b!4782529 m!5759980))

(declare-fun m!5759982 () Bool)

(assert (=> b!4782529 m!5759982))

(assert (=> b!4782529 m!5759470))

(declare-fun m!5759984 () Bool)

(assert (=> b!4782529 m!5759984))

(assert (=> b!4782529 m!5759968))

(declare-fun m!5759986 () Bool)

(assert (=> b!4782529 m!5759986))

(declare-fun m!5759988 () Bool)

(assert (=> b!4782529 m!5759988))

(assert (=> b!4782529 m!5759974))

(assert (=> b!4782529 m!5759968))

(assert (=> b!4782529 m!5759978))

(declare-fun m!5759990 () Bool)

(assert (=> b!4782529 m!5759990))

(declare-fun m!5759992 () Bool)

(assert (=> b!4782531 m!5759992))

(declare-fun m!5759994 () Bool)

(assert (=> b!4782530 m!5759994))

(declare-fun m!5759996 () Bool)

(assert (=> bm!334759 m!5759996))

(declare-fun m!5759998 () Bool)

(assert (=> d!1529149 m!5759998))

(assert (=> d!1529149 m!5759544))

(assert (=> b!4782137 d!1529149))

(declare-fun bs!1152203 () Bool)

(declare-fun d!1529225 () Bool)

(assert (= bs!1152203 (and d!1529225 d!1528957)))

(declare-fun lambda!228496 () Int)

(assert (=> bs!1152203 (= lambda!228496 lambda!228387)))

(declare-fun bs!1152204 () Bool)

(assert (= bs!1152204 (and d!1529225 d!1528971)))

(assert (=> bs!1152204 (not (= lambda!228496 lambda!228393))))

(declare-fun bs!1152205 () Bool)

(assert (= bs!1152205 (and d!1529225 d!1528955)))

(assert (=> bs!1152205 (= lambda!228496 lambda!228380)))

(declare-fun bs!1152206 () Bool)

(assert (= bs!1152206 (and d!1529225 start!491090)))

(assert (=> bs!1152206 (= lambda!228496 lambda!228345)))

(declare-fun bs!1152207 () Bool)

(assert (= bs!1152207 (and d!1529225 d!1528899)))

(assert (=> bs!1152207 (= lambda!228496 lambda!228361)))

(declare-fun bs!1152208 () Bool)

(assert (= bs!1152208 (and d!1529225 d!1528973)))

(assert (=> bs!1152208 (= lambda!228496 lambda!228396)))

(declare-fun bs!1152209 () Bool)

(assert (= bs!1152209 (and d!1529225 d!1528985)))

(assert (=> bs!1152209 (not (= lambda!228496 lambda!228397))))

(declare-fun bs!1152210 () Bool)

(assert (= bs!1152210 (and d!1529225 d!1528953)))

(assert (=> bs!1152210 (= lambda!228496 lambda!228377)))

(declare-fun bs!1152211 () Bool)

(assert (= bs!1152211 (and d!1529225 d!1528969)))

(assert (=> bs!1152211 (= lambda!228496 lambda!228390)))

(declare-fun lt!1944755 () ListMap!6223)

(assert (=> d!1529225 (invariantList!1697 (toList!6752 lt!1944755))))

(declare-fun e!2985857 () ListMap!6223)

(assert (=> d!1529225 (= lt!1944755 e!2985857)))

(declare-fun c!815300 () Bool)

(assert (=> d!1529225 (= c!815300 ((_ is Cons!54014) (t!361588 (toList!6751 lm!2709))))))

(assert (=> d!1529225 (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228496)))

(assert (=> d!1529225 (= (extractMap!2363 (t!361588 (toList!6751 lm!2709))) lt!1944755)))

(declare-fun b!4782536 () Bool)

(assert (=> b!4782536 (= e!2985857 (addToMapMapFromBucket!1662 (_2!31551 (h!60434 (t!361588 (toList!6751 lm!2709)))) (extractMap!2363 (t!361588 (t!361588 (toList!6751 lm!2709))))))))

(declare-fun b!4782537 () Bool)

(assert (=> b!4782537 (= e!2985857 (ListMap!6224 Nil!54013))))

(assert (= (and d!1529225 c!815300) b!4782536))

(assert (= (and d!1529225 (not c!815300)) b!4782537))

(declare-fun m!5760000 () Bool)

(assert (=> d!1529225 m!5760000))

(declare-fun m!5760002 () Bool)

(assert (=> d!1529225 m!5760002))

(declare-fun m!5760004 () Bool)

(assert (=> b!4782536 m!5760004))

(assert (=> b!4782536 m!5760004))

(declare-fun m!5760006 () Bool)

(assert (=> b!4782536 m!5760006))

(assert (=> b!4782137 d!1529225))

(declare-fun d!1529227 () Bool)

(declare-fun lt!1944758 () Bool)

(assert (=> d!1529227 (= lt!1944758 (select (content!9653 (keys!19678 (extractMap!2363 (toList!6751 lm!2709)))) key!6641))))

(declare-fun e!2985862 () Bool)

(assert (=> d!1529227 (= lt!1944758 e!2985862)))

(declare-fun res!2030865 () Bool)

(assert (=> d!1529227 (=> (not res!2030865) (not e!2985862))))

(assert (=> d!1529227 (= res!2030865 ((_ is Cons!54016) (keys!19678 (extractMap!2363 (toList!6751 lm!2709)))))))

(assert (=> d!1529227 (= (contains!17560 (keys!19678 (extractMap!2363 (toList!6751 lm!2709))) key!6641) lt!1944758)))

(declare-fun b!4782542 () Bool)

(declare-fun e!2985863 () Bool)

(assert (=> b!4782542 (= e!2985862 e!2985863)))

(declare-fun res!2030864 () Bool)

(assert (=> b!4782542 (=> res!2030864 e!2985863)))

(assert (=> b!4782542 (= res!2030864 (= (h!60436 (keys!19678 (extractMap!2363 (toList!6751 lm!2709)))) key!6641))))

(declare-fun b!4782543 () Bool)

(assert (=> b!4782543 (= e!2985863 (contains!17560 (t!361590 (keys!19678 (extractMap!2363 (toList!6751 lm!2709)))) key!6641))))

(assert (= (and d!1529227 res!2030865) b!4782542))

(assert (= (and b!4782542 (not res!2030864)) b!4782543))

(assert (=> d!1529227 m!5759440))

(declare-fun m!5760008 () Bool)

(assert (=> d!1529227 m!5760008))

(declare-fun m!5760010 () Bool)

(assert (=> d!1529227 m!5760010))

(declare-fun m!5760012 () Bool)

(assert (=> b!4782543 m!5760012))

(assert (=> b!4782113 d!1529227))

(declare-fun bs!1152212 () Bool)

(declare-fun b!4782551 () Bool)

(assert (= bs!1152212 (and b!4782551 b!4782400)))

(declare-fun lambda!228501 () Int)

(assert (=> bs!1152212 (= (= (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))) (= lambda!228501 lambda!228424))))

(declare-fun bs!1152213 () Bool)

(assert (= bs!1152213 (and b!4782551 b!4782398)))

(assert (=> bs!1152213 (= (= (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) (Cons!54013 (h!60433 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) (t!361587 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))) (= lambda!228501 lambda!228425))))

(declare-fun bs!1152214 () Bool)

(assert (= bs!1152214 (and b!4782551 b!4782393)))

(assert (=> bs!1152214 (= lambda!228501 lambda!228426)))

(assert (=> b!4782551 true))

(declare-fun bs!1152215 () Bool)

(declare-fun b!4782552 () Bool)

(assert (= bs!1152215 (and b!4782552 b!4782392)))

(declare-fun lambda!228502 () Int)

(assert (=> bs!1152215 (= lambda!228502 lambda!228427)))

(declare-fun d!1529229 () Bool)

(declare-fun e!2985866 () Bool)

(assert (=> d!1529229 e!2985866))

(declare-fun res!2030872 () Bool)

(assert (=> d!1529229 (=> (not res!2030872) (not e!2985866))))

(declare-fun lt!1944761 () List!54140)

(assert (=> d!1529229 (= res!2030872 (noDuplicate!901 lt!1944761))))

(assert (=> d!1529229 (= lt!1944761 (getKeysList!1043 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))))))

(assert (=> d!1529229 (= (keys!19678 (extractMap!2363 (toList!6751 lm!2709))) lt!1944761)))

(declare-fun b!4782550 () Bool)

(declare-fun res!2030873 () Bool)

(assert (=> b!4782550 (=> (not res!2030873) (not e!2985866))))

(assert (=> b!4782550 (= res!2030873 (= (length!658 lt!1944761) (length!659 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))))))

(declare-fun res!2030874 () Bool)

(assert (=> b!4782551 (=> (not res!2030874) (not e!2985866))))

(assert (=> b!4782551 (= res!2030874 (forall!12130 lt!1944761 lambda!228501))))

(assert (=> b!4782552 (= e!2985866 (= (content!9653 lt!1944761) (content!9653 (map!12180 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) lambda!228502))))))

(assert (= (and d!1529229 res!2030872) b!4782550))

(assert (= (and b!4782550 res!2030873) b!4782551))

(assert (= (and b!4782551 res!2030874) b!4782552))

(declare-fun m!5760014 () Bool)

(assert (=> d!1529229 m!5760014))

(assert (=> d!1529229 m!5759442))

(declare-fun m!5760016 () Bool)

(assert (=> b!4782550 m!5760016))

(assert (=> b!4782550 m!5759774))

(declare-fun m!5760018 () Bool)

(assert (=> b!4782551 m!5760018))

(declare-fun m!5760020 () Bool)

(assert (=> b!4782552 m!5760020))

(declare-fun m!5760022 () Bool)

(assert (=> b!4782552 m!5760022))

(assert (=> b!4782552 m!5760022))

(declare-fun m!5760024 () Bool)

(assert (=> b!4782552 m!5760024))

(assert (=> b!4782113 d!1529229))

(declare-fun d!1529231 () Bool)

(declare-fun c!815303 () Bool)

(assert (=> d!1529231 (= c!815303 ((_ is Nil!54014) (toList!6751 lm!2709)))))

(declare-fun e!2985869 () (InoxSet tuple2!56514))

(assert (=> d!1529231 (= (content!9651 (toList!6751 lm!2709)) e!2985869)))

(declare-fun b!4782559 () Bool)

(assert (=> b!4782559 (= e!2985869 ((as const (Array tuple2!56514 Bool)) false))))

(declare-fun b!4782560 () Bool)

(assert (=> b!4782560 (= e!2985869 ((_ map or) (store ((as const (Array tuple2!56514 Bool)) false) (h!60434 (toList!6751 lm!2709)) true) (content!9651 (t!361588 (toList!6751 lm!2709)))))))

(assert (= (and d!1529231 c!815303) b!4782559))

(assert (= (and d!1529231 (not c!815303)) b!4782560))

(declare-fun m!5760026 () Bool)

(assert (=> b!4782560 m!5760026))

(assert (=> b!4782560 m!5759690))

(assert (=> d!1528959 d!1529231))

(assert (=> b!4782115 d!1529227))

(assert (=> b!4782115 d!1529229))

(assert (=> b!4782117 d!1529229))

(declare-fun d!1529233 () Bool)

(declare-fun res!2030879 () Bool)

(declare-fun e!2985874 () Bool)

(assert (=> d!1529233 (=> res!2030879 e!2985874)))

(assert (=> d!1529233 (= res!2030879 (or ((_ is Nil!54014) (toList!6751 lm!2709)) ((_ is Nil!54014) (t!361588 (toList!6751 lm!2709)))))))

(assert (=> d!1529233 (= (isStrictlySorted!849 (toList!6751 lm!2709)) e!2985874)))

(declare-fun b!4782565 () Bool)

(declare-fun e!2985875 () Bool)

(assert (=> b!4782565 (= e!2985874 e!2985875)))

(declare-fun res!2030880 () Bool)

(assert (=> b!4782565 (=> (not res!2030880) (not e!2985875))))

(assert (=> b!4782565 (= res!2030880 (bvslt (_1!31551 (h!60434 (toList!6751 lm!2709))) (_1!31551 (h!60434 (t!361588 (toList!6751 lm!2709))))))))

(declare-fun b!4782566 () Bool)

(assert (=> b!4782566 (= e!2985875 (isStrictlySorted!849 (t!361588 (toList!6751 lm!2709))))))

(assert (= (and d!1529233 (not res!2030879)) b!4782565))

(assert (= (and b!4782565 res!2030880) b!4782566))

(declare-fun m!5760028 () Bool)

(assert (=> b!4782566 m!5760028))

(assert (=> d!1528887 d!1529233))

(declare-fun d!1529235 () Bool)

(declare-fun c!815304 () Bool)

(assert (=> d!1529235 (= c!815304 (and ((_ is Cons!54014) (toList!6751 lm!2709)) (= (_1!31551 (h!60434 (toList!6751 lm!2709))) lt!1944493)))))

(declare-fun e!2985876 () Option!12947)

(assert (=> d!1529235 (= (getValueByKey!2286 (toList!6751 lm!2709) lt!1944493) e!2985876)))

(declare-fun b!4782567 () Bool)

(assert (=> b!4782567 (= e!2985876 (Some!12946 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(declare-fun b!4782568 () Bool)

(declare-fun e!2985877 () Option!12947)

(assert (=> b!4782568 (= e!2985876 e!2985877)))

(declare-fun c!815305 () Bool)

(assert (=> b!4782568 (= c!815305 (and ((_ is Cons!54014) (toList!6751 lm!2709)) (not (= (_1!31551 (h!60434 (toList!6751 lm!2709))) lt!1944493))))))

(declare-fun b!4782569 () Bool)

(assert (=> b!4782569 (= e!2985877 (getValueByKey!2286 (t!361588 (toList!6751 lm!2709)) lt!1944493))))

(declare-fun b!4782570 () Bool)

(assert (=> b!4782570 (= e!2985877 None!12946)))

(assert (= (and d!1529235 c!815304) b!4782567))

(assert (= (and d!1529235 (not c!815304)) b!4782568))

(assert (= (and b!4782568 c!815305) b!4782569))

(assert (= (and b!4782568 (not c!815305)) b!4782570))

(declare-fun m!5760030 () Bool)

(assert (=> b!4782569 m!5760030))

(assert (=> b!4782150 d!1529235))

(declare-fun d!1529237 () Bool)

(declare-fun lt!1944762 () Bool)

(assert (=> d!1529237 (= lt!1944762 (select (content!9653 e!2985563) key!6641))))

(declare-fun e!2985878 () Bool)

(assert (=> d!1529237 (= lt!1944762 e!2985878)))

(declare-fun res!2030882 () Bool)

(assert (=> d!1529237 (=> (not res!2030882) (not e!2985878))))

(assert (=> d!1529237 (= res!2030882 ((_ is Cons!54016) e!2985563))))

(assert (=> d!1529237 (= (contains!17560 e!2985563 key!6641) lt!1944762)))

(declare-fun b!4782571 () Bool)

(declare-fun e!2985879 () Bool)

(assert (=> b!4782571 (= e!2985878 e!2985879)))

(declare-fun res!2030881 () Bool)

(assert (=> b!4782571 (=> res!2030881 e!2985879)))

(assert (=> b!4782571 (= res!2030881 (= (h!60436 e!2985563) key!6641))))

(declare-fun b!4782572 () Bool)

(assert (=> b!4782572 (= e!2985879 (contains!17560 (t!361590 e!2985563) key!6641))))

(assert (= (and d!1529237 res!2030882) b!4782571))

(assert (= (and b!4782571 (not res!2030881)) b!4782572))

(declare-fun m!5760032 () Bool)

(assert (=> d!1529237 m!5760032))

(declare-fun m!5760034 () Bool)

(assert (=> d!1529237 m!5760034))

(declare-fun m!5760036 () Bool)

(assert (=> b!4782572 m!5760036))

(assert (=> bm!334743 d!1529237))

(declare-fun b!4782573 () Bool)

(declare-fun e!2985880 () Bool)

(declare-fun e!2985884 () Bool)

(assert (=> b!4782573 (= e!2985880 e!2985884)))

(declare-fun res!2030883 () Bool)

(assert (=> b!4782573 (=> (not res!2030883) (not e!2985884))))

(declare-fun lt!1944763 () Option!12944)

(assert (=> b!4782573 (= res!2030883 (isDefined!10087 lt!1944763))))

(declare-fun b!4782574 () Bool)

(declare-fun res!2030884 () Bool)

(assert (=> b!4782574 (=> (not res!2030884) (not e!2985884))))

(assert (=> b!4782574 (= res!2030884 (= (_1!31550 (get!18370 lt!1944763)) key!6641))))

(declare-fun b!4782575 () Bool)

(declare-fun e!2985883 () Bool)

(assert (=> b!4782575 (= e!2985883 (not (containsKey!3819 (t!361587 lt!1944328) key!6641)))))

(declare-fun b!4782576 () Bool)

(declare-fun e!2985881 () Option!12944)

(declare-fun e!2985882 () Option!12944)

(assert (=> b!4782576 (= e!2985881 e!2985882)))

(declare-fun c!815307 () Bool)

(assert (=> b!4782576 (= c!815307 ((_ is Cons!54013) (t!361587 lt!1944328)))))

(declare-fun b!4782577 () Bool)

(assert (=> b!4782577 (= e!2985882 (getPair!808 (t!361587 (t!361587 lt!1944328)) key!6641))))

(declare-fun b!4782578 () Bool)

(assert (=> b!4782578 (= e!2985882 None!12943)))

(declare-fun b!4782580 () Bool)

(assert (=> b!4782580 (= e!2985881 (Some!12943 (h!60433 (t!361587 lt!1944328))))))

(declare-fun b!4782579 () Bool)

(assert (=> b!4782579 (= e!2985884 (contains!17559 (t!361587 lt!1944328) (get!18370 lt!1944763)))))

(declare-fun d!1529239 () Bool)

(assert (=> d!1529239 e!2985880))

(declare-fun res!2030885 () Bool)

(assert (=> d!1529239 (=> res!2030885 e!2985880)))

(assert (=> d!1529239 (= res!2030885 e!2985883)))

(declare-fun res!2030886 () Bool)

(assert (=> d!1529239 (=> (not res!2030886) (not e!2985883))))

(assert (=> d!1529239 (= res!2030886 (isEmpty!29360 lt!1944763))))

(assert (=> d!1529239 (= lt!1944763 e!2985881)))

(declare-fun c!815306 () Bool)

(assert (=> d!1529239 (= c!815306 (and ((_ is Cons!54013) (t!361587 lt!1944328)) (= (_1!31550 (h!60433 (t!361587 lt!1944328))) key!6641)))))

(assert (=> d!1529239 (noDuplicateKeys!2295 (t!361587 lt!1944328))))

(assert (=> d!1529239 (= (getPair!808 (t!361587 lt!1944328) key!6641) lt!1944763)))

(assert (= (and d!1529239 c!815306) b!4782580))

(assert (= (and d!1529239 (not c!815306)) b!4782576))

(assert (= (and b!4782576 c!815307) b!4782577))

(assert (= (and b!4782576 (not c!815307)) b!4782578))

(assert (= (and d!1529239 res!2030886) b!4782575))

(assert (= (and d!1529239 (not res!2030885)) b!4782573))

(assert (= (and b!4782573 res!2030883) b!4782574))

(assert (= (and b!4782574 res!2030884) b!4782579))

(declare-fun m!5760038 () Bool)

(assert (=> b!4782579 m!5760038))

(assert (=> b!4782579 m!5760038))

(declare-fun m!5760040 () Bool)

(assert (=> b!4782579 m!5760040))

(assert (=> b!4782574 m!5760038))

(declare-fun m!5760042 () Bool)

(assert (=> b!4782573 m!5760042))

(declare-fun m!5760044 () Bool)

(assert (=> b!4782575 m!5760044))

(declare-fun m!5760046 () Bool)

(assert (=> b!4782577 m!5760046))

(declare-fun m!5760048 () Bool)

(assert (=> d!1529239 m!5760048))

(declare-fun m!5760050 () Bool)

(assert (=> d!1529239 m!5760050))

(assert (=> b!4782060 d!1529239))

(declare-fun d!1529241 () Bool)

(declare-fun res!2030891 () Bool)

(declare-fun e!2985889 () Bool)

(assert (=> d!1529241 (=> res!2030891 e!2985889)))

(assert (=> d!1529241 (= res!2030891 (and ((_ is Cons!54014) (toList!6751 lm!2709)) (= (_1!31551 (h!60434 (toList!6751 lm!2709))) lt!1944325)))))

(assert (=> d!1529241 (= (containsKey!3822 (toList!6751 lm!2709) lt!1944325) e!2985889)))

(declare-fun b!4782585 () Bool)

(declare-fun e!2985890 () Bool)

(assert (=> b!4782585 (= e!2985889 e!2985890)))

(declare-fun res!2030892 () Bool)

(assert (=> b!4782585 (=> (not res!2030892) (not e!2985890))))

(assert (=> b!4782585 (= res!2030892 (and (or (not ((_ is Cons!54014) (toList!6751 lm!2709))) (bvsle (_1!31551 (h!60434 (toList!6751 lm!2709))) lt!1944325)) ((_ is Cons!54014) (toList!6751 lm!2709)) (bvslt (_1!31551 (h!60434 (toList!6751 lm!2709))) lt!1944325)))))

(declare-fun b!4782586 () Bool)

(assert (=> b!4782586 (= e!2985890 (containsKey!3822 (t!361588 (toList!6751 lm!2709)) lt!1944325))))

(assert (= (and d!1529241 (not res!2030891)) b!4782585))

(assert (= (and b!4782585 res!2030892) b!4782586))

(declare-fun m!5760052 () Bool)

(assert (=> b!4782586 m!5760052))

(assert (=> d!1528915 d!1529241))

(declare-fun d!1529243 () Bool)

(declare-fun lt!1944766 () Bool)

(declare-fun content!9655 (List!54137) (InoxSet tuple2!56512))

(assert (=> d!1529243 (= lt!1944766 (select (content!9655 lt!1944328) (get!18370 lt!1944390)))))

(declare-fun e!2985896 () Bool)

(assert (=> d!1529243 (= lt!1944766 e!2985896)))

(declare-fun res!2030898 () Bool)

(assert (=> d!1529243 (=> (not res!2030898) (not e!2985896))))

(assert (=> d!1529243 (= res!2030898 ((_ is Cons!54013) lt!1944328))))

(assert (=> d!1529243 (= (contains!17559 lt!1944328 (get!18370 lt!1944390)) lt!1944766)))

(declare-fun b!4782591 () Bool)

(declare-fun e!2985895 () Bool)

(assert (=> b!4782591 (= e!2985896 e!2985895)))

(declare-fun res!2030897 () Bool)

(assert (=> b!4782591 (=> res!2030897 e!2985895)))

(assert (=> b!4782591 (= res!2030897 (= (h!60433 lt!1944328) (get!18370 lt!1944390)))))

(declare-fun b!4782592 () Bool)

(assert (=> b!4782592 (= e!2985895 (contains!17559 (t!361587 lt!1944328) (get!18370 lt!1944390)))))

(assert (= (and d!1529243 res!2030898) b!4782591))

(assert (= (and b!4782591 (not res!2030897)) b!4782592))

(declare-fun m!5760054 () Bool)

(assert (=> d!1529243 m!5760054))

(assert (=> d!1529243 m!5759362))

(declare-fun m!5760056 () Bool)

(assert (=> d!1529243 m!5760056))

(assert (=> b!4782592 m!5759362))

(declare-fun m!5760058 () Bool)

(assert (=> b!4782592 m!5760058))

(assert (=> b!4782062 d!1529243))

(assert (=> b!4782062 d!1529135))

(declare-fun d!1529245 () Bool)

(declare-fun res!2030899 () Bool)

(declare-fun e!2985897 () Bool)

(assert (=> d!1529245 (=> res!2030899 e!2985897)))

(assert (=> d!1529245 (= res!2030899 ((_ is Nil!54014) (toList!6751 lm!2709)))))

(assert (=> d!1529245 (= (forall!12128 (toList!6751 lm!2709) lambda!228387) e!2985897)))

(declare-fun b!4782593 () Bool)

(declare-fun e!2985898 () Bool)

(assert (=> b!4782593 (= e!2985897 e!2985898)))

(declare-fun res!2030900 () Bool)

(assert (=> b!4782593 (=> (not res!2030900) (not e!2985898))))

(assert (=> b!4782593 (= res!2030900 (dynLambda!22017 lambda!228387 (h!60434 (toList!6751 lm!2709))))))

(declare-fun b!4782594 () Bool)

(assert (=> b!4782594 (= e!2985898 (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228387))))

(assert (= (and d!1529245 (not res!2030899)) b!4782593))

(assert (= (and b!4782593 res!2030900) b!4782594))

(declare-fun b_lambda!185775 () Bool)

(assert (=> (not b_lambda!185775) (not b!4782593)))

(declare-fun m!5760060 () Bool)

(assert (=> b!4782593 m!5760060))

(declare-fun m!5760062 () Bool)

(assert (=> b!4782594 m!5760062))

(assert (=> d!1528957 d!1529245))

(declare-fun bs!1152216 () Bool)

(declare-fun d!1529247 () Bool)

(assert (= bs!1152216 (and d!1529247 d!1528957)))

(declare-fun lambda!228505 () Int)

(assert (=> bs!1152216 (= lambda!228505 lambda!228387)))

(declare-fun bs!1152217 () Bool)

(assert (= bs!1152217 (and d!1529247 d!1528971)))

(assert (=> bs!1152217 (not (= lambda!228505 lambda!228393))))

(declare-fun bs!1152218 () Bool)

(assert (= bs!1152218 (and d!1529247 d!1528955)))

(assert (=> bs!1152218 (= lambda!228505 lambda!228380)))

(declare-fun bs!1152219 () Bool)

(assert (= bs!1152219 (and d!1529247 start!491090)))

(assert (=> bs!1152219 (= lambda!228505 lambda!228345)))

(declare-fun bs!1152220 () Bool)

(assert (= bs!1152220 (and d!1529247 d!1528899)))

(assert (=> bs!1152220 (= lambda!228505 lambda!228361)))

(declare-fun bs!1152221 () Bool)

(assert (= bs!1152221 (and d!1529247 d!1528973)))

(assert (=> bs!1152221 (= lambda!228505 lambda!228396)))

(declare-fun bs!1152222 () Bool)

(assert (= bs!1152222 (and d!1529247 d!1528985)))

(assert (=> bs!1152222 (not (= lambda!228505 lambda!228397))))

(declare-fun bs!1152223 () Bool)

(assert (= bs!1152223 (and d!1529247 d!1529225)))

(assert (=> bs!1152223 (= lambda!228505 lambda!228496)))

(declare-fun bs!1152224 () Bool)

(assert (= bs!1152224 (and d!1529247 d!1528953)))

(assert (=> bs!1152224 (= lambda!228505 lambda!228377)))

(declare-fun bs!1152225 () Bool)

(assert (= bs!1152225 (and d!1529247 d!1528969)))

(assert (=> bs!1152225 (= lambda!228505 lambda!228390)))

(assert (=> d!1529247 (isDefined!10087 (getPair!808 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)) key!6641))))

(declare-fun lt!1944781 () Unit!139292)

(assert (=> d!1529247 (= lt!1944781 (forallContained!4072 (toList!6751 lm!2709) lambda!228505 (tuple2!56515 (hash!4827 hashF!1687 key!6641) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))))))

(declare-fun lt!1944786 () Unit!139292)

(declare-fun lt!1944787 () Unit!139292)

(assert (=> d!1529247 (= lt!1944786 lt!1944787)))

(declare-fun lt!1944782 () (_ BitVec 64))

(declare-fun lt!1944784 () List!54137)

(assert (=> d!1529247 (contains!17554 (toList!6751 lm!2709) (tuple2!56515 lt!1944782 lt!1944784))))

(assert (=> d!1529247 (= lt!1944787 (lemmaGetValueImpliesTupleContained!615 lm!2709 lt!1944782 lt!1944784))))

(assert (=> d!1529247 (= lt!1944784 (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))))

(assert (=> d!1529247 (= lt!1944782 (hash!4827 hashF!1687 key!6641))))

(declare-fun lt!1944783 () Unit!139292)

(declare-fun lt!1944785 () Unit!139292)

(assert (=> d!1529247 (= lt!1944783 lt!1944785)))

(assert (=> d!1529247 (contains!17555 lm!2709 (hash!4827 hashF!1687 key!6641))))

(assert (=> d!1529247 (= lt!1944785 (lemmaInGenMapThenLongMapContainsHash!1032 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1529247 true))

(declare-fun _$25!334 () Unit!139292)

(assert (=> d!1529247 (= (choose!34296 lm!2709 key!6641 hashF!1687) _$25!334)))

(declare-fun bs!1152226 () Bool)

(assert (= bs!1152226 d!1529247))

(declare-fun m!5760064 () Bool)

(assert (=> bs!1152226 m!5760064))

(declare-fun m!5760066 () Bool)

(assert (=> bs!1152226 m!5760066))

(assert (=> bs!1152226 m!5759482))

(assert (=> bs!1152226 m!5759484))

(assert (=> bs!1152226 m!5759248))

(assert (=> bs!1152226 m!5759474))

(assert (=> bs!1152226 m!5759238))

(declare-fun m!5760068 () Bool)

(assert (=> bs!1152226 m!5760068))

(assert (=> bs!1152226 m!5759248))

(assert (=> bs!1152226 m!5759482))

(assert (=> bs!1152226 m!5759248))

(assert (=> bs!1152226 m!5759484))

(assert (=> bs!1152226 m!5759490))

(assert (=> d!1528957 d!1529247))

(declare-fun d!1529249 () Bool)

(declare-fun res!2030901 () Bool)

(declare-fun e!2985899 () Bool)

(assert (=> d!1529249 (=> res!2030901 e!2985899)))

(assert (=> d!1529249 (= res!2030901 (and ((_ is Cons!54013) (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709))))) (= (_1!31550 (h!60433 (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709)))))) key!6641)))))

(assert (=> d!1529249 (= (containsKey!3819 (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709)))) key!6641) e!2985899)))

(declare-fun b!4782595 () Bool)

(declare-fun e!2985900 () Bool)

(assert (=> b!4782595 (= e!2985899 e!2985900)))

(declare-fun res!2030902 () Bool)

(assert (=> b!4782595 (=> (not res!2030902) (not e!2985900))))

(assert (=> b!4782595 (= res!2030902 ((_ is Cons!54013) (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709))))))))

(declare-fun b!4782596 () Bool)

(assert (=> b!4782596 (= e!2985900 (containsKey!3819 (t!361587 (t!361587 (_2!31551 (h!60434 (toList!6751 lm!2709))))) key!6641))))

(assert (= (and d!1529249 (not res!2030901)) b!4782595))

(assert (= (and b!4782595 res!2030902) b!4782596))

(declare-fun m!5760070 () Bool)

(assert (=> b!4782596 m!5760070))

(assert (=> b!4782165 d!1529249))

(assert (=> d!1528979 d!1528977))

(declare-fun d!1529251 () Bool)

(assert (=> d!1529251 (= (isEmpty!29360 lt!1944390) (not ((_ is Some!12943) lt!1944390)))))

(assert (=> d!1528919 d!1529251))

(declare-fun d!1529253 () Bool)

(declare-fun res!2030903 () Bool)

(declare-fun e!2985901 () Bool)

(assert (=> d!1529253 (=> res!2030903 e!2985901)))

(assert (=> d!1529253 (= res!2030903 (not ((_ is Cons!54013) lt!1944328)))))

(assert (=> d!1529253 (= (noDuplicateKeys!2295 lt!1944328) e!2985901)))

(declare-fun b!4782597 () Bool)

(declare-fun e!2985902 () Bool)

(assert (=> b!4782597 (= e!2985901 e!2985902)))

(declare-fun res!2030904 () Bool)

(assert (=> b!4782597 (=> (not res!2030904) (not e!2985902))))

(assert (=> b!4782597 (= res!2030904 (not (containsKey!3819 (t!361587 lt!1944328) (_1!31550 (h!60433 lt!1944328)))))))

(declare-fun b!4782598 () Bool)

(assert (=> b!4782598 (= e!2985902 (noDuplicateKeys!2295 (t!361587 lt!1944328)))))

(assert (= (and d!1529253 (not res!2030903)) b!4782597))

(assert (= (and b!4782597 res!2030904) b!4782598))

(declare-fun m!5760072 () Bool)

(assert (=> b!4782597 m!5760072))

(assert (=> b!4782598 m!5760050))

(assert (=> d!1528919 d!1529253))

(declare-fun d!1529255 () Bool)

(assert (=> d!1529255 (isDefined!10091 (getValueByKey!2287 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(declare-fun lt!1944790 () Unit!139292)

(declare-fun choose!34307 (List!54137 K!15579) Unit!139292)

(assert (=> d!1529255 (= lt!1944790 (choose!34307 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(assert (=> d!1529255 (invariantList!1697 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))))

(assert (=> d!1529255 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2080 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641) lt!1944790)))

(declare-fun bs!1152227 () Bool)

(assert (= bs!1152227 d!1529255))

(assert (=> bs!1152227 m!5759428))

(assert (=> bs!1152227 m!5759428))

(assert (=> bs!1152227 m!5759430))

(declare-fun m!5760074 () Bool)

(assert (=> bs!1152227 m!5760074))

(assert (=> bs!1152227 m!5759724))

(assert (=> b!4782111 d!1529255))

(assert (=> b!4782111 d!1529109))

(assert (=> b!4782111 d!1529111))

(declare-fun d!1529257 () Bool)

(assert (=> d!1529257 (contains!17560 (getKeysList!1043 (toList!6752 (extractMap!2363 (toList!6751 lm!2709)))) key!6641)))

(declare-fun lt!1944793 () Unit!139292)

(declare-fun choose!34308 (List!54137 K!15579) Unit!139292)

(assert (=> d!1529257 (= lt!1944793 (choose!34308 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641))))

(assert (=> d!1529257 (invariantList!1697 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))))))

(assert (=> d!1529257 (= (lemmaInListThenGetKeysListContains!1038 (toList!6752 (extractMap!2363 (toList!6751 lm!2709))) key!6641) lt!1944793)))

(declare-fun bs!1152228 () Bool)

(assert (= bs!1152228 d!1529257))

(assert (=> bs!1152228 m!5759442))

(assert (=> bs!1152228 m!5759442))

(declare-fun m!5760076 () Bool)

(assert (=> bs!1152228 m!5760076))

(declare-fun m!5760078 () Bool)

(assert (=> bs!1152228 m!5760078))

(assert (=> bs!1152228 m!5759724))

(assert (=> b!4782111 d!1529257))

(declare-fun d!1529259 () Bool)

(declare-fun choose!34309 (Hashable!6836 K!15579) (_ BitVec 64))

(assert (=> d!1529259 (= (hash!4831 hashF!1687 key!6641) (choose!34309 hashF!1687 key!6641))))

(declare-fun bs!1152229 () Bool)

(assert (= bs!1152229 d!1529259))

(declare-fun m!5760080 () Bool)

(assert (=> bs!1152229 m!5760080))

(assert (=> d!1528941 d!1529259))

(declare-fun d!1529261 () Bool)

(declare-fun noDuplicatedKeys!423 (List!54137) Bool)

(assert (=> d!1529261 (= (invariantList!1697 (toList!6752 lt!1944468)) (noDuplicatedKeys!423 (toList!6752 lt!1944468)))))

(declare-fun bs!1152230 () Bool)

(assert (= bs!1152230 d!1529261))

(declare-fun m!5760082 () Bool)

(assert (=> bs!1152230 m!5760082))

(assert (=> d!1528953 d!1529261))

(declare-fun d!1529263 () Bool)

(declare-fun res!2030905 () Bool)

(declare-fun e!2985903 () Bool)

(assert (=> d!1529263 (=> res!2030905 e!2985903)))

(assert (=> d!1529263 (= res!2030905 ((_ is Nil!54014) (toList!6751 lm!2709)))))

(assert (=> d!1529263 (= (forall!12128 (toList!6751 lm!2709) lambda!228377) e!2985903)))

(declare-fun b!4782599 () Bool)

(declare-fun e!2985904 () Bool)

(assert (=> b!4782599 (= e!2985903 e!2985904)))

(declare-fun res!2030906 () Bool)

(assert (=> b!4782599 (=> (not res!2030906) (not e!2985904))))

(assert (=> b!4782599 (= res!2030906 (dynLambda!22017 lambda!228377 (h!60434 (toList!6751 lm!2709))))))

(declare-fun b!4782600 () Bool)

(assert (=> b!4782600 (= e!2985904 (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228377))))

(assert (= (and d!1529263 (not res!2030905)) b!4782599))

(assert (= (and b!4782599 res!2030906) b!4782600))

(declare-fun b_lambda!185777 () Bool)

(assert (=> (not b_lambda!185777) (not b!4782599)))

(declare-fun m!5760084 () Bool)

(assert (=> b!4782599 m!5760084))

(declare-fun m!5760086 () Bool)

(assert (=> b!4782600 m!5760086))

(assert (=> d!1528953 d!1529263))

(declare-fun d!1529265 () Bool)

(declare-fun res!2030907 () Bool)

(declare-fun e!2985905 () Bool)

(assert (=> d!1529265 (=> res!2030907 e!2985905)))

(assert (=> d!1529265 (= res!2030907 (not ((_ is Cons!54013) (_2!31551 lt!1944323))))))

(assert (=> d!1529265 (= (noDuplicateKeys!2295 (_2!31551 lt!1944323)) e!2985905)))

(declare-fun b!4782601 () Bool)

(declare-fun e!2985906 () Bool)

(assert (=> b!4782601 (= e!2985905 e!2985906)))

(declare-fun res!2030908 () Bool)

(assert (=> b!4782601 (=> (not res!2030908) (not e!2985906))))

(assert (=> b!4782601 (= res!2030908 (not (containsKey!3819 (t!361587 (_2!31551 lt!1944323)) (_1!31550 (h!60433 (_2!31551 lt!1944323))))))))

(declare-fun b!4782602 () Bool)

(assert (=> b!4782602 (= e!2985906 (noDuplicateKeys!2295 (t!361587 (_2!31551 lt!1944323))))))

(assert (= (and d!1529265 (not res!2030907)) b!4782601))

(assert (= (and b!4782601 res!2030908) b!4782602))

(declare-fun m!5760088 () Bool)

(assert (=> b!4782601 m!5760088))

(declare-fun m!5760090 () Bool)

(assert (=> b!4782602 m!5760090))

(assert (=> bs!1152128 d!1529265))

(declare-fun d!1529267 () Bool)

(declare-fun res!2030909 () Bool)

(declare-fun e!2985907 () Bool)

(assert (=> d!1529267 (=> res!2030909 e!2985907)))

(assert (=> d!1529267 (= res!2030909 ((_ is Nil!54014) (t!361588 (toList!6751 lm!2709))))))

(assert (=> d!1529267 (= (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228345) e!2985907)))

(declare-fun b!4782603 () Bool)

(declare-fun e!2985908 () Bool)

(assert (=> b!4782603 (= e!2985907 e!2985908)))

(declare-fun res!2030910 () Bool)

(assert (=> b!4782603 (=> (not res!2030910) (not e!2985908))))

(assert (=> b!4782603 (= res!2030910 (dynLambda!22017 lambda!228345 (h!60434 (t!361588 (toList!6751 lm!2709)))))))

(declare-fun b!4782604 () Bool)

(assert (=> b!4782604 (= e!2985908 (forall!12128 (t!361588 (t!361588 (toList!6751 lm!2709))) lambda!228345))))

(assert (= (and d!1529267 (not res!2030909)) b!4782603))

(assert (= (and b!4782603 res!2030910) b!4782604))

(declare-fun b_lambda!185779 () Bool)

(assert (=> (not b_lambda!185779) (not b!4782603)))

(declare-fun m!5760092 () Bool)

(assert (=> b!4782603 m!5760092))

(declare-fun m!5760094 () Bool)

(assert (=> b!4782604 m!5760094))

(assert (=> b!4781971 d!1529267))

(declare-fun d!1529269 () Bool)

(assert (=> d!1529269 (= (isDefined!10087 lt!1944390) (not (isEmpty!29360 lt!1944390)))))

(declare-fun bs!1152231 () Bool)

(assert (= bs!1152231 d!1529269))

(assert (=> bs!1152231 m!5759372))

(assert (=> b!4782056 d!1529269))

(declare-fun d!1529271 () Bool)

(assert (=> d!1529271 (dynLambda!22017 lambda!228345 lt!1944323)))

(assert (=> d!1529271 true))

(declare-fun _$7!2354 () Unit!139292)

(assert (=> d!1529271 (= (choose!34297 (toList!6751 lm!2709) lambda!228345 lt!1944323) _$7!2354)))

(declare-fun b_lambda!185781 () Bool)

(assert (=> (not b_lambda!185781) (not d!1529271)))

(declare-fun bs!1152232 () Bool)

(assert (= bs!1152232 d!1529271))

(assert (=> bs!1152232 m!5759506))

(assert (=> d!1528961 d!1529271))

(assert (=> d!1528961 d!1528875))

(assert (=> d!1528973 d!1528981))

(assert (=> d!1528973 d!1528977))

(declare-fun d!1529273 () Bool)

(assert (=> d!1529273 (containsKeyBiggerList!492 (tail!9193 (toList!6751 lm!2709)) key!6641)))

(assert (=> d!1529273 true))

(declare-fun _$37!374 () Unit!139292)

(assert (=> d!1529273 (= (choose!34299 lm!2709 key!6641 hashF!1687) _$37!374)))

(declare-fun bs!1152233 () Bool)

(assert (= bs!1152233 d!1529273))

(assert (=> bs!1152233 m!5759252))

(assert (=> bs!1152233 m!5759252))

(assert (=> bs!1152233 m!5759254))

(assert (=> d!1528973 d!1529273))

(declare-fun d!1529275 () Bool)

(declare-fun res!2030911 () Bool)

(declare-fun e!2985909 () Bool)

(assert (=> d!1529275 (=> res!2030911 e!2985909)))

(assert (=> d!1529275 (= res!2030911 ((_ is Nil!54014) (toList!6751 lm!2709)))))

(assert (=> d!1529275 (= (forall!12128 (toList!6751 lm!2709) lambda!228396) e!2985909)))

(declare-fun b!4782605 () Bool)

(declare-fun e!2985910 () Bool)

(assert (=> b!4782605 (= e!2985909 e!2985910)))

(declare-fun res!2030912 () Bool)

(assert (=> b!4782605 (=> (not res!2030912) (not e!2985910))))

(assert (=> b!4782605 (= res!2030912 (dynLambda!22017 lambda!228396 (h!60434 (toList!6751 lm!2709))))))

(declare-fun b!4782606 () Bool)

(assert (=> b!4782606 (= e!2985910 (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228396))))

(assert (= (and d!1529275 (not res!2030911)) b!4782605))

(assert (= (and b!4782605 res!2030912) b!4782606))

(declare-fun b_lambda!185783 () Bool)

(assert (=> (not b_lambda!185783) (not b!4782605)))

(declare-fun m!5760096 () Bool)

(assert (=> b!4782605 m!5760096))

(declare-fun m!5760098 () Bool)

(assert (=> b!4782606 m!5760098))

(assert (=> d!1528973 d!1529275))

(assert (=> d!1528921 d!1529085))

(assert (=> b!4782148 d!1528921))

(assert (=> b!4782148 d!1528953))

(assert (=> d!1528955 d!1529103))

(assert (=> d!1528955 d!1528941))

(declare-fun d!1529277 () Bool)

(assert (=> d!1529277 (contains!17555 lm!2709 (hash!4827 hashF!1687 key!6641))))

(assert (=> d!1529277 true))

(declare-fun _$27!1611 () Unit!139292)

(assert (=> d!1529277 (= (choose!34295 lm!2709 key!6641 hashF!1687) _$27!1611)))

(declare-fun bs!1152234 () Bool)

(assert (= bs!1152234 d!1529277))

(assert (=> bs!1152234 m!5759248))

(assert (=> bs!1152234 m!5759248))

(assert (=> bs!1152234 m!5759474))

(assert (=> d!1528955 d!1529277))

(declare-fun d!1529279 () Bool)

(declare-fun res!2030913 () Bool)

(declare-fun e!2985911 () Bool)

(assert (=> d!1529279 (=> res!2030913 e!2985911)))

(assert (=> d!1529279 (= res!2030913 ((_ is Nil!54014) (toList!6751 lm!2709)))))

(assert (=> d!1529279 (= (forall!12128 (toList!6751 lm!2709) lambda!228380) e!2985911)))

(declare-fun b!4782607 () Bool)

(declare-fun e!2985912 () Bool)

(assert (=> b!4782607 (= e!2985911 e!2985912)))

(declare-fun res!2030914 () Bool)

(assert (=> b!4782607 (=> (not res!2030914) (not e!2985912))))

(assert (=> b!4782607 (= res!2030914 (dynLambda!22017 lambda!228380 (h!60434 (toList!6751 lm!2709))))))

(declare-fun b!4782608 () Bool)

(assert (=> b!4782608 (= e!2985912 (forall!12128 (t!361588 (toList!6751 lm!2709)) lambda!228380))))

(assert (= (and d!1529279 (not res!2030913)) b!4782607))

(assert (= (and b!4782607 res!2030914) b!4782608))

(declare-fun b_lambda!185785 () Bool)

(assert (=> (not b_lambda!185785) (not b!4782607)))

(declare-fun m!5760100 () Bool)

(assert (=> b!4782607 m!5760100))

(declare-fun m!5760102 () Bool)

(assert (=> b!4782608 m!5760102))

(assert (=> d!1528955 d!1529279))

(declare-fun d!1529281 () Bool)

(declare-fun res!2030915 () Bool)

(declare-fun e!2985913 () Bool)

(assert (=> d!1529281 (=> res!2030915 e!2985913)))

(assert (=> d!1529281 (= res!2030915 (and ((_ is Cons!54013) lt!1944328) (= (_1!31550 (h!60433 lt!1944328)) key!6641)))))

(assert (=> d!1529281 (= (containsKey!3819 lt!1944328 key!6641) e!2985913)))

(declare-fun b!4782609 () Bool)

(declare-fun e!2985914 () Bool)

(assert (=> b!4782609 (= e!2985913 e!2985914)))

(declare-fun res!2030916 () Bool)

(assert (=> b!4782609 (=> (not res!2030916) (not e!2985914))))

(assert (=> b!4782609 (= res!2030916 ((_ is Cons!54013) lt!1944328))))

(declare-fun b!4782610 () Bool)

(assert (=> b!4782610 (= e!2985914 (containsKey!3819 (t!361587 lt!1944328) key!6641))))

(assert (= (and d!1529281 (not res!2030915)) b!4782609))

(assert (= (and b!4782609 res!2030916) b!4782610))

(assert (=> b!4782610 m!5760044))

(assert (=> b!4782058 d!1529281))

(declare-fun tp!1357498 () Bool)

(declare-fun b!4782615 () Bool)

(declare-fun e!2985917 () Bool)

(assert (=> b!4782615 (= e!2985917 (and tp_is_empty!33245 tp_is_empty!33247 tp!1357498))))

(assert (=> b!4782188 (= tp!1357489 e!2985917)))

(assert (= (and b!4782188 ((_ is Cons!54013) (_2!31551 (h!60434 (toList!6751 lm!2709))))) b!4782615))

(declare-fun b!4782616 () Bool)

(declare-fun e!2985918 () Bool)

(declare-fun tp!1357499 () Bool)

(declare-fun tp!1357500 () Bool)

(assert (=> b!4782616 (= e!2985918 (and tp!1357499 tp!1357500))))

(assert (=> b!4782188 (= tp!1357490 e!2985918)))

(assert (= (and b!4782188 ((_ is Cons!54014) (t!361588 (toList!6751 lm!2709)))) b!4782616))

(declare-fun b_lambda!185787 () Bool)

(assert (= b_lambda!185729 (or d!1528957 b_lambda!185787)))

(declare-fun bs!1152235 () Bool)

(declare-fun d!1529283 () Bool)

(assert (= bs!1152235 (and d!1529283 d!1528957)))

(assert (=> bs!1152235 (= (dynLambda!22017 lambda!228387 (tuple2!56515 (hash!4827 hashF!1687 key!6641) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641)))) (noDuplicateKeys!2295 (_2!31551 (tuple2!56515 (hash!4827 hashF!1687 key!6641) (apply!12891 lm!2709 (hash!4827 hashF!1687 key!6641))))))))

(declare-fun m!5760104 () Bool)

(assert (=> bs!1152235 m!5760104))

(assert (=> d!1529093 d!1529283))

(declare-fun b_lambda!185789 () Bool)

(assert (= b_lambda!185781 (or start!491090 b_lambda!185789)))

(assert (=> d!1529271 d!1528989))

(declare-fun b_lambda!185791 () Bool)

(assert (= b_lambda!185777 (or d!1528953 b_lambda!185791)))

(declare-fun bs!1152236 () Bool)

(declare-fun d!1529285 () Bool)

(assert (= bs!1152236 (and d!1529285 d!1528953)))

(assert (=> bs!1152236 (= (dynLambda!22017 lambda!228377 (h!60434 (toList!6751 lm!2709))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(assert (=> bs!1152236 m!5759544))

(assert (=> b!4782599 d!1529285))

(declare-fun b_lambda!185793 () Bool)

(assert (= b_lambda!185785 (or d!1528955 b_lambda!185793)))

(declare-fun bs!1152237 () Bool)

(declare-fun d!1529287 () Bool)

(assert (= bs!1152237 (and d!1529287 d!1528955)))

(assert (=> bs!1152237 (= (dynLambda!22017 lambda!228380 (h!60434 (toList!6751 lm!2709))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(assert (=> bs!1152237 m!5759544))

(assert (=> b!4782607 d!1529287))

(declare-fun b_lambda!185795 () Bool)

(assert (= b_lambda!185731 (or d!1528969 b_lambda!185795)))

(declare-fun bs!1152238 () Bool)

(declare-fun d!1529289 () Bool)

(assert (= bs!1152238 (and d!1529289 d!1528969)))

(assert (=> bs!1152238 (= (dynLambda!22017 lambda!228390 (h!60434 (toList!6751 lm!2709))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(assert (=> bs!1152238 m!5759544))

(assert (=> b!4782421 d!1529289))

(declare-fun b_lambda!185797 () Bool)

(assert (= b_lambda!185737 (or start!491090 b_lambda!185797)))

(declare-fun bs!1152239 () Bool)

(declare-fun d!1529291 () Bool)

(assert (= bs!1152239 (and d!1529291 start!491090)))

(assert (=> bs!1152239 (= (dynLambda!22017 lambda!228345 (h!60434 (t!361588 (toList!6751 lt!1944332)))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (t!361588 (toList!6751 lt!1944332))))))))

(declare-fun m!5760106 () Bool)

(assert (=> bs!1152239 m!5760106))

(assert (=> b!4782436 d!1529291))

(declare-fun b_lambda!185799 () Bool)

(assert (= b_lambda!185735 (or d!1528985 b_lambda!185799)))

(declare-fun bs!1152240 () Bool)

(declare-fun d!1529293 () Bool)

(assert (= bs!1152240 (and d!1529293 d!1528985)))

(declare-fun allKeysSameHash!1942 (List!54137 (_ BitVec 64) Hashable!6836) Bool)

(assert (=> bs!1152240 (= (dynLambda!22017 lambda!228397 (h!60434 (toList!6751 lm!2709))) (allKeysSameHash!1942 (_2!31551 (h!60434 (toList!6751 lm!2709))) (_1!31551 (h!60434 (toList!6751 lm!2709))) hashF!1687))))

(declare-fun m!5760108 () Bool)

(assert (=> bs!1152240 m!5760108))

(assert (=> b!4782427 d!1529293))

(declare-fun b_lambda!185801 () Bool)

(assert (= b_lambda!185775 (or d!1528957 b_lambda!185801)))

(declare-fun bs!1152241 () Bool)

(declare-fun d!1529295 () Bool)

(assert (= bs!1152241 (and d!1529295 d!1528957)))

(assert (=> bs!1152241 (= (dynLambda!22017 lambda!228387 (h!60434 (toList!6751 lm!2709))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(assert (=> bs!1152241 m!5759544))

(assert (=> b!4782593 d!1529295))

(declare-fun b_lambda!185803 () Bool)

(assert (= b_lambda!185727 (or d!1528971 b_lambda!185803)))

(declare-fun bs!1152242 () Bool)

(declare-fun d!1529297 () Bool)

(assert (= bs!1152242 (and d!1529297 d!1528971)))

(assert (=> bs!1152242 (= (dynLambda!22017 lambda!228393 (h!60434 (toList!6751 lt!1944332))) (allKeysSameHash!1942 (_2!31551 (h!60434 (toList!6751 lt!1944332))) (_1!31551 (h!60434 (toList!6751 lt!1944332))) hashF!1687))))

(declare-fun m!5760110 () Bool)

(assert (=> bs!1152242 m!5760110))

(assert (=> b!4782349 d!1529297))

(declare-fun b_lambda!185805 () Bool)

(assert (= b_lambda!185779 (or start!491090 b_lambda!185805)))

(declare-fun bs!1152243 () Bool)

(declare-fun d!1529299 () Bool)

(assert (= bs!1152243 (and d!1529299 start!491090)))

(assert (=> bs!1152243 (= (dynLambda!22017 lambda!228345 (h!60434 (t!361588 (toList!6751 lm!2709)))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (t!361588 (toList!6751 lm!2709))))))))

(declare-fun m!5760112 () Bool)

(assert (=> bs!1152243 m!5760112))

(assert (=> b!4782603 d!1529299))

(declare-fun b_lambda!185807 () Bool)

(assert (= b_lambda!185783 (or d!1528973 b_lambda!185807)))

(declare-fun bs!1152244 () Bool)

(declare-fun d!1529301 () Bool)

(assert (= bs!1152244 (and d!1529301 d!1528973)))

(assert (=> bs!1152244 (= (dynLambda!22017 lambda!228396 (h!60434 (toList!6751 lm!2709))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(assert (=> bs!1152244 m!5759544))

(assert (=> b!4782605 d!1529301))

(declare-fun b_lambda!185809 () Bool)

(assert (= b_lambda!185733 (or d!1528899 b_lambda!185809)))

(declare-fun bs!1152245 () Bool)

(declare-fun d!1529303 () Bool)

(assert (= bs!1152245 (and d!1529303 d!1528899)))

(assert (=> bs!1152245 (= (dynLambda!22017 lambda!228361 (h!60434 (toList!6751 lm!2709))) (noDuplicateKeys!2295 (_2!31551 (h!60434 (toList!6751 lm!2709)))))))

(assert (=> bs!1152245 m!5759544))

(assert (=> b!4782425 d!1529303))

(check-sat (not b!4782552) (not b!4782367) (not b!4782362) (not b!4782600) (not b!4782530) (not b!4782392) (not b!4782573) tp_is_empty!33247 (not d!1529229) (not b!4782579) (not b!4782433) (not bs!1152243) (not b_lambda!185787) (not d!1529225) (not b!4782574) (not bs!1152240) (not d!1529257) (not b_lambda!185789) (not d!1529101) (not b!4782598) (not b!4782606) (not d!1529149) (not b!4782422) (not bs!1152244) (not bm!334761) (not b_lambda!185801) (not b!4782356) (not b_lambda!185709) (not b!4782437) (not b_lambda!185799) (not d!1529109) (not b!4782407) (not b!4782446) (not d!1529097) (not d!1529261) (not d!1529273) (not b!4782371) (not b_lambda!185805) (not d!1529259) (not b!4782596) (not d!1529255) (not b!4782363) (not d!1529269) (not b!4782533) (not d!1529103) (not b!4782550) (not b!4782442) (not b_lambda!185793) (not b_lambda!185807) (not b!4782577) (not b!4782560) (not b!4782364) (not b!4782426) (not b!4782616) (not b!4782393) (not b!4782347) (not d!1529113) (not b_lambda!185795) (not b!4782373) (not d!1529247) (not b!4782529) (not b!4782602) (not d!1529089) (not d!1529077) (not b_lambda!185713) (not b_lambda!185791) tp_is_empty!33245 (not b!4782444) (not b!4782551) (not d!1529105) (not b!4782601) (not d!1529095) (not b_lambda!185711) (not b!4782440) (not d!1529099) (not b_lambda!185803) (not d!1529093) (not b!4782608) (not b!4782408) (not b!4782428) (not bs!1152236) (not bs!1152245) (not b!4782396) (not d!1529147) (not d!1529121) (not b!4782443) (not b!4782359) (not b!4782543) (not d!1529277) (not b!4782575) (not b!4782315) (not d!1529237) (not bs!1152237) (not bs!1152238) (not bs!1152242) (not b!4782357) (not b!4782594) (not b!4782536) (not d!1529087) (not b!4782424) (not b!4782438) (not d!1529239) (not b_lambda!185797) (not b!4782569) (not b!4782615) (not b!4782597) (not d!1529091) (not b!4782431) (not b!4782419) (not b!4782592) (not b!4782369) (not b!4782572) (not b!4782610) (not b!4782566) (not b!4782604) (not b!4782365) (not bs!1152235) (not bs!1152241) (not d!1529227) (not d!1529145) (not b!4782400) (not d!1529057) (not d!1529059) (not b!4782360) (not b!4782435) (not b_lambda!185809) (not b!4782398) (not b!4782586) (not d!1529243) (not b!4782531) (not bm!334759) (not bm!334760) (not b!4782350) (not bs!1152239) (not b!4782328))
(check-sat)
