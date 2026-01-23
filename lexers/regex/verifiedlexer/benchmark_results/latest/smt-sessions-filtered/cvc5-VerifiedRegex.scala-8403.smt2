; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436838 () Bool)

(assert start!436838)

(declare-fun res!1847737 () Bool)

(declare-fun e!2775340 () Bool)

(assert (=> start!436838 (=> (not res!1847737) (not e!2775340))))

(declare-datatypes ((K!11418 0))(
  ( (K!11419 (val!17405 Int)) )
))
(declare-datatypes ((V!11664 0))(
  ( (V!11665 (val!17406 Int)) )
))
(declare-datatypes ((tuple2!50130 0))(
  ( (tuple2!50131 (_1!28359 K!11418) (_2!28359 V!11664)) )
))
(declare-datatypes ((List!50161 0))(
  ( (Nil!50037) (Cons!50037 (h!55782 tuple2!50130) (t!357111 List!50161)) )
))
(declare-datatypes ((tuple2!50132 0))(
  ( (tuple2!50133 (_1!28360 (_ BitVec 64)) (_2!28360 List!50161)) )
))
(declare-datatypes ((List!50162 0))(
  ( (Nil!50038) (Cons!50038 (h!55783 tuple2!50132) (t!357112 List!50162)) )
))
(declare-datatypes ((ListLongMap!2513 0))(
  ( (ListLongMap!2514 (toList!3857 List!50162)) )
))
(declare-fun lm!1853 () ListLongMap!2513)

(declare-fun lambda!160606 () Int)

(declare-fun forall!9852 (List!50162 Int) Bool)

(assert (=> start!436838 (= res!1847737 (forall!9852 (toList!3857 lm!1853) lambda!160606))))

(assert (=> start!436838 e!2775340))

(declare-fun e!2775341 () Bool)

(declare-fun inv!65605 (ListLongMap!2513) Bool)

(assert (=> start!436838 (and (inv!65605 lm!1853) e!2775341)))

(assert (=> start!436838 true))

(declare-fun e!2775343 () Bool)

(assert (=> start!436838 e!2775343))

(declare-fun tp_is_empty!26921 () Bool)

(assert (=> start!436838 tp_is_empty!26921))

(declare-fun b!4456958 () Bool)

(declare-fun e!2775342 () Bool)

(assert (=> b!4456958 (= e!2775340 e!2775342)))

(declare-fun res!1847739 () Bool)

(assert (=> b!4456958 (=> (not res!1847739) (not e!2775342))))

(declare-datatypes ((ListMap!3095 0))(
  ( (ListMap!3096 (toList!3858 List!50161)) )
))
(declare-fun lt!1648341 () ListMap!3095)

(declare-fun key!4412 () K!11418)

(declare-fun contains!12571 (ListMap!3095 K!11418) Bool)

(assert (=> b!4456958 (= res!1847739 (contains!12571 lt!1648341 key!4412))))

(declare-fun extractMap!993 (List!50162) ListMap!3095)

(assert (=> b!4456958 (= lt!1648341 (extractMap!993 (toList!3857 lm!1853)))))

(declare-fun b!4456959 () Bool)

(declare-fun res!1847741 () Bool)

(assert (=> b!4456959 (=> (not res!1847741) (not e!2775340))))

(declare-datatypes ((Hashable!5332 0))(
  ( (HashableExt!5331 (__x!31035 Int)) )
))
(declare-fun hashF!1313 () Hashable!5332)

(declare-fun allKeysSameHashInMap!1044 (ListLongMap!2513 Hashable!5332) Bool)

(assert (=> b!4456959 (= res!1847741 (allKeysSameHashInMap!1044 lm!1853 hashF!1313))))

(declare-fun b!4456960 () Bool)

(declare-fun res!1847738 () Bool)

(assert (=> b!4456960 (=> (not res!1847738) (not e!2775340))))

(declare-fun l!12858 () List!50161)

(declare-fun noDuplicateKeys!925 (List!50161) Bool)

(assert (=> b!4456960 (= res!1847738 (noDuplicateKeys!925 l!12858))))

(declare-fun b!4456961 () Bool)

(assert (=> b!4456961 (= e!2775342 (not (noDuplicateKeys!925 (t!357111 l!12858))))))

(declare-fun lt!1648346 () ListMap!3095)

(assert (=> b!4456961 (contains!12571 lt!1648346 key!4412)))

(declare-fun lt!1648342 () ListMap!3095)

(declare-datatypes ((Unit!86214 0))(
  ( (Unit!86215) )
))
(declare-fun lt!1648344 () Unit!86214)

(declare-fun addStillContains!7 (ListMap!3095 K!11418 V!11664 K!11418) Unit!86214)

(assert (=> b!4456961 (= lt!1648344 (addStillContains!7 lt!1648342 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858)) key!4412))))

(declare-fun e!2775344 () Bool)

(assert (=> b!4456961 e!2775344))

(declare-fun res!1847740 () Bool)

(assert (=> b!4456961 (=> (not res!1847740) (not e!2775344))))

(declare-fun lt!1648345 () ListMap!3095)

(declare-fun eq!484 (ListMap!3095 ListMap!3095) Bool)

(assert (=> b!4456961 (= res!1847740 (eq!484 lt!1648345 lt!1648346))))

(declare-fun +!1300 (ListMap!3095 tuple2!50130) ListMap!3095)

(assert (=> b!4456961 (= lt!1648346 (+!1300 lt!1648342 (h!55782 l!12858)))))

(declare-fun addToMapMapFromBucket!519 (List!50161 ListMap!3095) ListMap!3095)

(assert (=> b!4456961 (= lt!1648345 (addToMapMapFromBucket!519 (t!357111 l!12858) (+!1300 lt!1648341 (h!55782 l!12858))))))

(declare-fun lt!1648343 () Unit!86214)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!231 (ListMap!3095 K!11418 V!11664 List!50161) Unit!86214)

(assert (=> b!4456961 (= lt!1648343 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!231 lt!1648341 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858)) (t!357111 l!12858)))))

(assert (=> b!4456961 (contains!12571 lt!1648342 key!4412)))

(assert (=> b!4456961 (= lt!1648342 (addToMapMapFromBucket!519 (t!357111 l!12858) lt!1648341))))

(declare-fun lt!1648347 () Unit!86214)

(declare-fun lemmaAddToMapMaintainsContains!27 (ListLongMap!2513 K!11418 List!50161 Hashable!5332) Unit!86214)

(assert (=> b!4456961 (= lt!1648347 (lemmaAddToMapMaintainsContains!27 lm!1853 key!4412 (t!357111 l!12858) hashF!1313))))

(declare-fun b!4456962 () Bool)

(declare-fun tp!1335132 () Bool)

(assert (=> b!4456962 (= e!2775341 tp!1335132)))

(declare-fun b!4456963 () Bool)

(declare-fun res!1847736 () Bool)

(assert (=> b!4456963 (=> (not res!1847736) (not e!2775342))))

(assert (=> b!4456963 (= res!1847736 (is-Cons!50037 l!12858))))

(declare-fun b!4456964 () Bool)

(assert (=> b!4456964 (= e!2775344 (eq!484 (addToMapMapFromBucket!519 (t!357111 l!12858) (+!1300 lt!1648341 (h!55782 l!12858))) (+!1300 lt!1648342 (h!55782 l!12858))))))

(declare-fun tp!1335133 () Bool)

(declare-fun tp_is_empty!26923 () Bool)

(declare-fun b!4456965 () Bool)

(assert (=> b!4456965 (= e!2775343 (and tp_is_empty!26921 tp_is_empty!26923 tp!1335133))))

(assert (= (and start!436838 res!1847737) b!4456959))

(assert (= (and b!4456959 res!1847741) b!4456960))

(assert (= (and b!4456960 res!1847738) b!4456958))

(assert (= (and b!4456958 res!1847739) b!4456963))

(assert (= (and b!4456963 res!1847736) b!4456961))

(assert (= (and b!4456961 res!1847740) b!4456964))

(assert (= start!436838 b!4456962))

(assert (= (and start!436838 (is-Cons!50037 l!12858)) b!4456965))

(declare-fun m!5159081 () Bool)

(assert (=> b!4456960 m!5159081))

(declare-fun m!5159083 () Bool)

(assert (=> start!436838 m!5159083))

(declare-fun m!5159085 () Bool)

(assert (=> start!436838 m!5159085))

(declare-fun m!5159087 () Bool)

(assert (=> b!4456961 m!5159087))

(declare-fun m!5159089 () Bool)

(assert (=> b!4456961 m!5159089))

(declare-fun m!5159091 () Bool)

(assert (=> b!4456961 m!5159091))

(declare-fun m!5159093 () Bool)

(assert (=> b!4456961 m!5159093))

(declare-fun m!5159095 () Bool)

(assert (=> b!4456961 m!5159095))

(declare-fun m!5159097 () Bool)

(assert (=> b!4456961 m!5159097))

(declare-fun m!5159099 () Bool)

(assert (=> b!4456961 m!5159099))

(declare-fun m!5159101 () Bool)

(assert (=> b!4456961 m!5159101))

(declare-fun m!5159103 () Bool)

(assert (=> b!4456961 m!5159103))

(assert (=> b!4456961 m!5159097))

(declare-fun m!5159105 () Bool)

(assert (=> b!4456961 m!5159105))

(declare-fun m!5159107 () Bool)

(assert (=> b!4456961 m!5159107))

(declare-fun m!5159109 () Bool)

(assert (=> b!4456959 m!5159109))

(declare-fun m!5159111 () Bool)

(assert (=> b!4456958 m!5159111))

(declare-fun m!5159113 () Bool)

(assert (=> b!4456958 m!5159113))

(assert (=> b!4456964 m!5159097))

(assert (=> b!4456964 m!5159097))

(assert (=> b!4456964 m!5159099))

(assert (=> b!4456964 m!5159093))

(assert (=> b!4456964 m!5159099))

(assert (=> b!4456964 m!5159093))

(declare-fun m!5159115 () Bool)

(assert (=> b!4456964 m!5159115))

(push 1)

(assert (not b!4456964))

(assert (not start!436838))

(assert tp_is_empty!26923)

(assert (not b!4456962))

(assert (not b!4456958))

(assert (not b!4456961))

(assert (not b!4456960))

(assert (not b!4456965))

(assert (not b!4456959))

(assert tp_is_empty!26921)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1359492 () Bool)

(declare-fun content!8048 (List!50161) (Set tuple2!50130))

(assert (=> d!1359492 (= (eq!484 (addToMapMapFromBucket!519 (t!357111 l!12858) (+!1300 lt!1648341 (h!55782 l!12858))) (+!1300 lt!1648342 (h!55782 l!12858))) (= (content!8048 (toList!3858 (addToMapMapFromBucket!519 (t!357111 l!12858) (+!1300 lt!1648341 (h!55782 l!12858))))) (content!8048 (toList!3858 (+!1300 lt!1648342 (h!55782 l!12858))))))))

(declare-fun bs!790999 () Bool)

(assert (= bs!790999 d!1359492))

(declare-fun m!5159153 () Bool)

(assert (=> bs!790999 m!5159153))

(declare-fun m!5159155 () Bool)

(assert (=> bs!790999 m!5159155))

(assert (=> b!4456964 d!1359492))

(declare-fun b!4457044 () Bool)

(assert (=> b!4457044 true))

(declare-fun bs!791001 () Bool)

(declare-fun b!4457045 () Bool)

(assert (= bs!791001 (and b!4457045 b!4457044)))

(declare-fun lambda!160639 () Int)

(declare-fun lambda!160638 () Int)

(assert (=> bs!791001 (= lambda!160639 lambda!160638)))

(assert (=> b!4457045 true))

(declare-fun lt!1648452 () ListMap!3095)

(declare-fun lambda!160640 () Int)

(assert (=> bs!791001 (= (= lt!1648452 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160640 lambda!160638))))

(assert (=> b!4457045 (= (= lt!1648452 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160640 lambda!160639))))

(assert (=> b!4457045 true))

(declare-fun bs!791002 () Bool)

(declare-fun d!1359494 () Bool)

(assert (= bs!791002 (and d!1359494 b!4457044)))

(declare-fun lt!1648458 () ListMap!3095)

(declare-fun lambda!160641 () Int)

(assert (=> bs!791002 (= (= lt!1648458 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160641 lambda!160638))))

(declare-fun bs!791003 () Bool)

(assert (= bs!791003 (and d!1359494 b!4457045)))

(assert (=> bs!791003 (= (= lt!1648458 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160641 lambda!160639))))

(assert (=> bs!791003 (= (= lt!1648458 lt!1648452) (= lambda!160641 lambda!160640))))

(assert (=> d!1359494 true))

(declare-fun e!2775396 () Bool)

(declare-fun b!4457041 () Bool)

(declare-fun forall!9854 (List!50161 Int) Bool)

(assert (=> b!4457041 (= e!2775396 (forall!9854 (toList!3858 (+!1300 lt!1648341 (h!55782 l!12858))) lambda!160640))))

(declare-fun e!2775397 () Bool)

(assert (=> d!1359494 e!2775397))

(declare-fun res!1847791 () Bool)

(assert (=> d!1359494 (=> (not res!1847791) (not e!2775397))))

(assert (=> d!1359494 (= res!1847791 (forall!9854 (t!357111 l!12858) lambda!160641))))

(declare-fun e!2775395 () ListMap!3095)

(assert (=> d!1359494 (= lt!1648458 e!2775395)))

(declare-fun c!758664 () Bool)

(assert (=> d!1359494 (= c!758664 (is-Nil!50037 (t!357111 l!12858)))))

(assert (=> d!1359494 (noDuplicateKeys!925 (t!357111 l!12858))))

(assert (=> d!1359494 (= (addToMapMapFromBucket!519 (t!357111 l!12858) (+!1300 lt!1648341 (h!55782 l!12858))) lt!1648458)))

(declare-fun bm!310205 () Bool)

(declare-fun call!310211 () Unit!86214)

(declare-fun lemmaContainsAllItsOwnKeys!233 (ListMap!3095) Unit!86214)

(assert (=> bm!310205 (= call!310211 (lemmaContainsAllItsOwnKeys!233 (+!1300 lt!1648341 (h!55782 l!12858))))))

(declare-fun call!310212 () Bool)

(declare-fun bm!310206 () Bool)

(assert (=> bm!310206 (= call!310212 (forall!9854 (toList!3858 (+!1300 lt!1648341 (h!55782 l!12858))) (ite c!758664 lambda!160638 lambda!160640)))))

(declare-fun b!4457042 () Bool)

(declare-fun res!1847790 () Bool)

(assert (=> b!4457042 (=> (not res!1847790) (not e!2775397))))

(assert (=> b!4457042 (= res!1847790 (forall!9854 (toList!3858 (+!1300 lt!1648341 (h!55782 l!12858))) lambda!160641))))

(declare-fun b!4457043 () Bool)

(declare-fun invariantList!882 (List!50161) Bool)

(assert (=> b!4457043 (= e!2775397 (invariantList!882 (toList!3858 lt!1648458)))))

(assert (=> b!4457044 (= e!2775395 (+!1300 lt!1648341 (h!55782 l!12858)))))

(declare-fun lt!1648462 () Unit!86214)

(assert (=> b!4457044 (= lt!1648462 call!310211)))

(declare-fun call!310210 () Bool)

(assert (=> b!4457044 call!310210))

(declare-fun lt!1648456 () Unit!86214)

(assert (=> b!4457044 (= lt!1648456 lt!1648462)))

(assert (=> b!4457044 call!310212))

(declare-fun lt!1648447 () Unit!86214)

(declare-fun Unit!86218 () Unit!86214)

(assert (=> b!4457044 (= lt!1648447 Unit!86218)))

(assert (=> b!4457045 (= e!2775395 lt!1648452)))

(declare-fun lt!1648459 () ListMap!3095)

(assert (=> b!4457045 (= lt!1648459 (+!1300 (+!1300 lt!1648341 (h!55782 l!12858)) (h!55782 (t!357111 l!12858))))))

(assert (=> b!4457045 (= lt!1648452 (addToMapMapFromBucket!519 (t!357111 (t!357111 l!12858)) (+!1300 (+!1300 lt!1648341 (h!55782 l!12858)) (h!55782 (t!357111 l!12858)))))))

(declare-fun lt!1648455 () Unit!86214)

(assert (=> b!4457045 (= lt!1648455 call!310211)))

(assert (=> b!4457045 (forall!9854 (toList!3858 (+!1300 lt!1648341 (h!55782 l!12858))) lambda!160639)))

(declare-fun lt!1648467 () Unit!86214)

(assert (=> b!4457045 (= lt!1648467 lt!1648455)))

(assert (=> b!4457045 (forall!9854 (toList!3858 lt!1648459) lambda!160640)))

(declare-fun lt!1648464 () Unit!86214)

(declare-fun Unit!86219 () Unit!86214)

(assert (=> b!4457045 (= lt!1648464 Unit!86219)))

(assert (=> b!4457045 call!310210))

(declare-fun lt!1648460 () Unit!86214)

(declare-fun Unit!86220 () Unit!86214)

(assert (=> b!4457045 (= lt!1648460 Unit!86220)))

(declare-fun lt!1648457 () Unit!86214)

(declare-fun Unit!86221 () Unit!86214)

(assert (=> b!4457045 (= lt!1648457 Unit!86221)))

(declare-fun lt!1648466 () Unit!86214)

(declare-fun forallContained!2183 (List!50161 Int tuple2!50130) Unit!86214)

(assert (=> b!4457045 (= lt!1648466 (forallContained!2183 (toList!3858 lt!1648459) lambda!160640 (h!55782 (t!357111 l!12858))))))

(assert (=> b!4457045 (contains!12571 lt!1648459 (_1!28359 (h!55782 (t!357111 l!12858))))))

(declare-fun lt!1648454 () Unit!86214)

(declare-fun Unit!86222 () Unit!86214)

(assert (=> b!4457045 (= lt!1648454 Unit!86222)))

(assert (=> b!4457045 (contains!12571 lt!1648452 (_1!28359 (h!55782 (t!357111 l!12858))))))

(declare-fun lt!1648450 () Unit!86214)

(declare-fun Unit!86223 () Unit!86214)

(assert (=> b!4457045 (= lt!1648450 Unit!86223)))

(assert (=> b!4457045 (forall!9854 (t!357111 l!12858) lambda!160640)))

(declare-fun lt!1648449 () Unit!86214)

(declare-fun Unit!86224 () Unit!86214)

(assert (=> b!4457045 (= lt!1648449 Unit!86224)))

(assert (=> b!4457045 (forall!9854 (toList!3858 lt!1648459) lambda!160640)))

(declare-fun lt!1648448 () Unit!86214)

(declare-fun Unit!86225 () Unit!86214)

(assert (=> b!4457045 (= lt!1648448 Unit!86225)))

(declare-fun lt!1648465 () Unit!86214)

(declare-fun Unit!86226 () Unit!86214)

(assert (=> b!4457045 (= lt!1648465 Unit!86226)))

(declare-fun lt!1648461 () Unit!86214)

(declare-fun addForallContainsKeyThenBeforeAdding!232 (ListMap!3095 ListMap!3095 K!11418 V!11664) Unit!86214)

(assert (=> b!4457045 (= lt!1648461 (addForallContainsKeyThenBeforeAdding!232 (+!1300 lt!1648341 (h!55782 l!12858)) lt!1648452 (_1!28359 (h!55782 (t!357111 l!12858))) (_2!28359 (h!55782 (t!357111 l!12858)))))))

(assert (=> b!4457045 call!310212))

(declare-fun lt!1648463 () Unit!86214)

(assert (=> b!4457045 (= lt!1648463 lt!1648461)))

(assert (=> b!4457045 (forall!9854 (toList!3858 (+!1300 lt!1648341 (h!55782 l!12858))) lambda!160640)))

(declare-fun lt!1648451 () Unit!86214)

(declare-fun Unit!86227 () Unit!86214)

(assert (=> b!4457045 (= lt!1648451 Unit!86227)))

(declare-fun res!1847789 () Bool)

(assert (=> b!4457045 (= res!1847789 (forall!9854 (t!357111 l!12858) lambda!160640))))

(assert (=> b!4457045 (=> (not res!1847789) (not e!2775396))))

(assert (=> b!4457045 e!2775396))

(declare-fun lt!1648453 () Unit!86214)

(declare-fun Unit!86228 () Unit!86214)

(assert (=> b!4457045 (= lt!1648453 Unit!86228)))

(declare-fun bm!310207 () Bool)

(assert (=> bm!310207 (= call!310210 (forall!9854 (ite c!758664 (toList!3858 (+!1300 lt!1648341 (h!55782 l!12858))) (t!357111 (t!357111 l!12858))) (ite c!758664 lambda!160638 lambda!160640)))))

(assert (= (and d!1359494 c!758664) b!4457044))

(assert (= (and d!1359494 (not c!758664)) b!4457045))

(assert (= (and b!4457045 res!1847789) b!4457041))

(assert (= (or b!4457044 b!4457045) bm!310205))

(assert (= (or b!4457044 b!4457045) bm!310207))

(assert (= (or b!4457044 b!4457045) bm!310206))

(assert (= (and d!1359494 res!1847791) b!4457042))

(assert (= (and b!4457042 res!1847790) b!4457043))

(declare-fun m!5159199 () Bool)

(assert (=> b!4457043 m!5159199))

(declare-fun m!5159201 () Bool)

(assert (=> bm!310207 m!5159201))

(declare-fun m!5159203 () Bool)

(assert (=> b!4457045 m!5159203))

(declare-fun m!5159205 () Bool)

(assert (=> b!4457045 m!5159205))

(declare-fun m!5159207 () Bool)

(assert (=> b!4457045 m!5159207))

(declare-fun m!5159209 () Bool)

(assert (=> b!4457045 m!5159209))

(declare-fun m!5159211 () Bool)

(assert (=> b!4457045 m!5159211))

(declare-fun m!5159213 () Bool)

(assert (=> b!4457045 m!5159213))

(declare-fun m!5159215 () Bool)

(assert (=> b!4457045 m!5159215))

(assert (=> b!4457045 m!5159097))

(declare-fun m!5159217 () Bool)

(assert (=> b!4457045 m!5159217))

(assert (=> b!4457045 m!5159203))

(declare-fun m!5159219 () Bool)

(assert (=> b!4457045 m!5159219))

(declare-fun m!5159221 () Bool)

(assert (=> b!4457045 m!5159221))

(assert (=> b!4457045 m!5159097))

(assert (=> b!4457045 m!5159209))

(assert (=> b!4457045 m!5159207))

(assert (=> bm!310205 m!5159097))

(declare-fun m!5159223 () Bool)

(assert (=> bm!310205 m!5159223))

(declare-fun m!5159225 () Bool)

(assert (=> b!4457042 m!5159225))

(assert (=> b!4457041 m!5159221))

(declare-fun m!5159227 () Bool)

(assert (=> d!1359494 m!5159227))

(assert (=> d!1359494 m!5159101))

(declare-fun m!5159229 () Bool)

(assert (=> bm!310206 m!5159229))

(assert (=> b!4456964 d!1359494))

(declare-fun d!1359508 () Bool)

(declare-fun e!2775400 () Bool)

(assert (=> d!1359508 e!2775400))

(declare-fun res!1847796 () Bool)

(assert (=> d!1359508 (=> (not res!1847796) (not e!2775400))))

(declare-fun lt!1648480 () ListMap!3095)

(assert (=> d!1359508 (= res!1847796 (contains!12571 lt!1648480 (_1!28359 (h!55782 l!12858))))))

(declare-fun lt!1648479 () List!50161)

(assert (=> d!1359508 (= lt!1648480 (ListMap!3096 lt!1648479))))

(declare-fun lt!1648482 () Unit!86214)

(declare-fun lt!1648481 () Unit!86214)

(assert (=> d!1359508 (= lt!1648482 lt!1648481)))

(declare-datatypes ((Option!10860 0))(
  ( (None!10859) (Some!10859 (v!44117 V!11664)) )
))
(declare-fun getValueByKey!846 (List!50161 K!11418) Option!10860)

(assert (=> d!1359508 (= (getValueByKey!846 lt!1648479 (_1!28359 (h!55782 l!12858))) (Some!10859 (_2!28359 (h!55782 l!12858))))))

(declare-fun lemmaContainsTupThenGetReturnValue!551 (List!50161 K!11418 V!11664) Unit!86214)

(assert (=> d!1359508 (= lt!1648481 (lemmaContainsTupThenGetReturnValue!551 lt!1648479 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858))))))

(declare-fun insertNoDuplicatedKeys!245 (List!50161 K!11418 V!11664) List!50161)

(assert (=> d!1359508 (= lt!1648479 (insertNoDuplicatedKeys!245 (toList!3858 lt!1648341) (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858))))))

(assert (=> d!1359508 (= (+!1300 lt!1648341 (h!55782 l!12858)) lt!1648480)))

(declare-fun b!4457052 () Bool)

(declare-fun res!1847797 () Bool)

(assert (=> b!4457052 (=> (not res!1847797) (not e!2775400))))

(assert (=> b!4457052 (= res!1847797 (= (getValueByKey!846 (toList!3858 lt!1648480) (_1!28359 (h!55782 l!12858))) (Some!10859 (_2!28359 (h!55782 l!12858)))))))

(declare-fun b!4457053 () Bool)

(declare-fun contains!12573 (List!50161 tuple2!50130) Bool)

(assert (=> b!4457053 (= e!2775400 (contains!12573 (toList!3858 lt!1648480) (h!55782 l!12858)))))

(assert (= (and d!1359508 res!1847796) b!4457052))

(assert (= (and b!4457052 res!1847797) b!4457053))

(declare-fun m!5159239 () Bool)

(assert (=> d!1359508 m!5159239))

(declare-fun m!5159241 () Bool)

(assert (=> d!1359508 m!5159241))

(declare-fun m!5159243 () Bool)

(assert (=> d!1359508 m!5159243))

(declare-fun m!5159245 () Bool)

(assert (=> d!1359508 m!5159245))

(declare-fun m!5159247 () Bool)

(assert (=> b!4457052 m!5159247))

(declare-fun m!5159249 () Bool)

(assert (=> b!4457053 m!5159249))

(assert (=> b!4456964 d!1359508))

(declare-fun d!1359512 () Bool)

(declare-fun e!2775401 () Bool)

(assert (=> d!1359512 e!2775401))

(declare-fun res!1847798 () Bool)

(assert (=> d!1359512 (=> (not res!1847798) (not e!2775401))))

(declare-fun lt!1648484 () ListMap!3095)

(assert (=> d!1359512 (= res!1847798 (contains!12571 lt!1648484 (_1!28359 (h!55782 l!12858))))))

(declare-fun lt!1648483 () List!50161)

(assert (=> d!1359512 (= lt!1648484 (ListMap!3096 lt!1648483))))

(declare-fun lt!1648486 () Unit!86214)

(declare-fun lt!1648485 () Unit!86214)

(assert (=> d!1359512 (= lt!1648486 lt!1648485)))

(assert (=> d!1359512 (= (getValueByKey!846 lt!1648483 (_1!28359 (h!55782 l!12858))) (Some!10859 (_2!28359 (h!55782 l!12858))))))

(assert (=> d!1359512 (= lt!1648485 (lemmaContainsTupThenGetReturnValue!551 lt!1648483 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858))))))

(assert (=> d!1359512 (= lt!1648483 (insertNoDuplicatedKeys!245 (toList!3858 lt!1648342) (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858))))))

(assert (=> d!1359512 (= (+!1300 lt!1648342 (h!55782 l!12858)) lt!1648484)))

(declare-fun b!4457054 () Bool)

(declare-fun res!1847799 () Bool)

(assert (=> b!4457054 (=> (not res!1847799) (not e!2775401))))

(assert (=> b!4457054 (= res!1847799 (= (getValueByKey!846 (toList!3858 lt!1648484) (_1!28359 (h!55782 l!12858))) (Some!10859 (_2!28359 (h!55782 l!12858)))))))

(declare-fun b!4457055 () Bool)

(assert (=> b!4457055 (= e!2775401 (contains!12573 (toList!3858 lt!1648484) (h!55782 l!12858)))))

(assert (= (and d!1359512 res!1847798) b!4457054))

(assert (= (and b!4457054 res!1847799) b!4457055))

(declare-fun m!5159251 () Bool)

(assert (=> d!1359512 m!5159251))

(declare-fun m!5159253 () Bool)

(assert (=> d!1359512 m!5159253))

(declare-fun m!5159255 () Bool)

(assert (=> d!1359512 m!5159255))

(declare-fun m!5159257 () Bool)

(assert (=> d!1359512 m!5159257))

(declare-fun m!5159259 () Bool)

(assert (=> b!4457054 m!5159259))

(declare-fun m!5159261 () Bool)

(assert (=> b!4457055 m!5159261))

(assert (=> b!4456964 d!1359512))

(declare-fun b!4457076 () Bool)

(declare-fun e!2775418 () Bool)

(declare-datatypes ((List!50165 0))(
  ( (Nil!50041) (Cons!50041 (h!55786 K!11418) (t!357115 List!50165)) )
))
(declare-fun contains!12574 (List!50165 K!11418) Bool)

(declare-fun keys!17203 (ListMap!3095) List!50165)

(assert (=> b!4457076 (= e!2775418 (not (contains!12574 (keys!17203 lt!1648341) key!4412)))))

(declare-fun b!4457077 () Bool)

(declare-fun e!2775417 () List!50165)

(assert (=> b!4457077 (= e!2775417 (keys!17203 lt!1648341))))

(declare-fun bm!310210 () Bool)

(declare-fun call!310215 () Bool)

(assert (=> bm!310210 (= call!310215 (contains!12574 e!2775417 key!4412))))

(declare-fun c!758672 () Bool)

(declare-fun c!758673 () Bool)

(assert (=> bm!310210 (= c!758672 c!758673)))

(declare-fun b!4457078 () Bool)

(declare-fun e!2775416 () Unit!86214)

(declare-fun e!2775420 () Unit!86214)

(assert (=> b!4457078 (= e!2775416 e!2775420)))

(declare-fun c!758671 () Bool)

(assert (=> b!4457078 (= c!758671 call!310215)))

(declare-fun d!1359514 () Bool)

(declare-fun e!2775415 () Bool)

(assert (=> d!1359514 e!2775415))

(declare-fun res!1847809 () Bool)

(assert (=> d!1359514 (=> res!1847809 e!2775415)))

(assert (=> d!1359514 (= res!1847809 e!2775418)))

(declare-fun res!1847808 () Bool)

(assert (=> d!1359514 (=> (not res!1847808) (not e!2775418))))

(declare-fun lt!1648514 () Bool)

(assert (=> d!1359514 (= res!1847808 (not lt!1648514))))

(declare-fun lt!1648513 () Bool)

(assert (=> d!1359514 (= lt!1648514 lt!1648513)))

(declare-fun lt!1648510 () Unit!86214)

(assert (=> d!1359514 (= lt!1648510 e!2775416)))

(assert (=> d!1359514 (= c!758673 lt!1648513)))

(declare-fun containsKey!1335 (List!50161 K!11418) Bool)

(assert (=> d!1359514 (= lt!1648513 (containsKey!1335 (toList!3858 lt!1648341) key!4412))))

(assert (=> d!1359514 (= (contains!12571 lt!1648341 key!4412) lt!1648514)))

(declare-fun b!4457079 () Bool)

(declare-fun getKeysList!328 (List!50161) List!50165)

(assert (=> b!4457079 (= e!2775417 (getKeysList!328 (toList!3858 lt!1648341)))))

(declare-fun b!4457080 () Bool)

(declare-fun lt!1648512 () Unit!86214)

(assert (=> b!4457080 (= e!2775416 lt!1648512)))

(declare-fun lt!1648515 () Unit!86214)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!751 (List!50161 K!11418) Unit!86214)

(assert (=> b!4457080 (= lt!1648515 (lemmaContainsKeyImpliesGetValueByKeyDefined!751 (toList!3858 lt!1648341) key!4412))))

(declare-fun isDefined!8148 (Option!10860) Bool)

(assert (=> b!4457080 (isDefined!8148 (getValueByKey!846 (toList!3858 lt!1648341) key!4412))))

(declare-fun lt!1648511 () Unit!86214)

(assert (=> b!4457080 (= lt!1648511 lt!1648515)))

(declare-fun lemmaInListThenGetKeysListContains!324 (List!50161 K!11418) Unit!86214)

(assert (=> b!4457080 (= lt!1648512 (lemmaInListThenGetKeysListContains!324 (toList!3858 lt!1648341) key!4412))))

(assert (=> b!4457080 call!310215))

(declare-fun b!4457081 () Bool)

(declare-fun e!2775419 () Bool)

(assert (=> b!4457081 (= e!2775415 e!2775419)))

(declare-fun res!1847810 () Bool)

(assert (=> b!4457081 (=> (not res!1847810) (not e!2775419))))

(assert (=> b!4457081 (= res!1847810 (isDefined!8148 (getValueByKey!846 (toList!3858 lt!1648341) key!4412)))))

(declare-fun b!4457082 () Bool)

(assert (=> b!4457082 (= e!2775419 (contains!12574 (keys!17203 lt!1648341) key!4412))))

(declare-fun b!4457083 () Bool)

(assert (=> b!4457083 false))

(declare-fun lt!1648517 () Unit!86214)

(declare-fun lt!1648516 () Unit!86214)

(assert (=> b!4457083 (= lt!1648517 lt!1648516)))

(assert (=> b!4457083 (containsKey!1335 (toList!3858 lt!1648341) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!326 (List!50161 K!11418) Unit!86214)

(assert (=> b!4457083 (= lt!1648516 (lemmaInGetKeysListThenContainsKey!326 (toList!3858 lt!1648341) key!4412))))

(declare-fun Unit!86229 () Unit!86214)

(assert (=> b!4457083 (= e!2775420 Unit!86229)))

(declare-fun b!4457084 () Bool)

(declare-fun Unit!86230 () Unit!86214)

(assert (=> b!4457084 (= e!2775420 Unit!86230)))

(assert (= (and d!1359514 c!758673) b!4457080))

(assert (= (and d!1359514 (not c!758673)) b!4457078))

(assert (= (and b!4457078 c!758671) b!4457083))

(assert (= (and b!4457078 (not c!758671)) b!4457084))

(assert (= (or b!4457080 b!4457078) bm!310210))

(assert (= (and bm!310210 c!758672) b!4457079))

(assert (= (and bm!310210 (not c!758672)) b!4457077))

(assert (= (and d!1359514 res!1847808) b!4457076))

(assert (= (and d!1359514 (not res!1847809)) b!4457081))

(assert (= (and b!4457081 res!1847810) b!4457082))

(declare-fun m!5159285 () Bool)

(assert (=> d!1359514 m!5159285))

(declare-fun m!5159287 () Bool)

(assert (=> b!4457079 m!5159287))

(declare-fun m!5159289 () Bool)

(assert (=> b!4457082 m!5159289))

(assert (=> b!4457082 m!5159289))

(declare-fun m!5159291 () Bool)

(assert (=> b!4457082 m!5159291))

(assert (=> b!4457083 m!5159285))

(declare-fun m!5159293 () Bool)

(assert (=> b!4457083 m!5159293))

(assert (=> b!4457076 m!5159289))

(assert (=> b!4457076 m!5159289))

(assert (=> b!4457076 m!5159291))

(declare-fun m!5159295 () Bool)

(assert (=> b!4457081 m!5159295))

(assert (=> b!4457081 m!5159295))

(declare-fun m!5159297 () Bool)

(assert (=> b!4457081 m!5159297))

(declare-fun m!5159299 () Bool)

(assert (=> bm!310210 m!5159299))

(assert (=> b!4457077 m!5159289))

(declare-fun m!5159301 () Bool)

(assert (=> b!4457080 m!5159301))

(assert (=> b!4457080 m!5159295))

(assert (=> b!4457080 m!5159295))

(assert (=> b!4457080 m!5159297))

(declare-fun m!5159303 () Bool)

(assert (=> b!4457080 m!5159303))

(assert (=> b!4456958 d!1359514))

(declare-fun bs!791008 () Bool)

(declare-fun d!1359520 () Bool)

(assert (= bs!791008 (and d!1359520 start!436838)))

(declare-fun lambda!160647 () Int)

(assert (=> bs!791008 (= lambda!160647 lambda!160606)))

(declare-fun lt!1648523 () ListMap!3095)

(assert (=> d!1359520 (invariantList!882 (toList!3858 lt!1648523))))

(declare-fun e!2775423 () ListMap!3095)

(assert (=> d!1359520 (= lt!1648523 e!2775423)))

(declare-fun c!758676 () Bool)

(assert (=> d!1359520 (= c!758676 (is-Cons!50038 (toList!3857 lm!1853)))))

(assert (=> d!1359520 (forall!9852 (toList!3857 lm!1853) lambda!160647)))

(assert (=> d!1359520 (= (extractMap!993 (toList!3857 lm!1853)) lt!1648523)))

(declare-fun b!4457090 () Bool)

(assert (=> b!4457090 (= e!2775423 (addToMapMapFromBucket!519 (_2!28360 (h!55783 (toList!3857 lm!1853))) (extractMap!993 (t!357112 (toList!3857 lm!1853)))))))

(declare-fun b!4457091 () Bool)

(assert (=> b!4457091 (= e!2775423 (ListMap!3096 Nil!50037))))

(assert (= (and d!1359520 c!758676) b!4457090))

(assert (= (and d!1359520 (not c!758676)) b!4457091))

(declare-fun m!5159311 () Bool)

(assert (=> d!1359520 m!5159311))

(declare-fun m!5159313 () Bool)

(assert (=> d!1359520 m!5159313))

(declare-fun m!5159315 () Bool)

(assert (=> b!4457090 m!5159315))

(assert (=> b!4457090 m!5159315))

(declare-fun m!5159317 () Bool)

(assert (=> b!4457090 m!5159317))

(assert (=> b!4456958 d!1359520))

(declare-fun d!1359524 () Bool)

(declare-fun res!1847815 () Bool)

(declare-fun e!2775428 () Bool)

(assert (=> d!1359524 (=> res!1847815 e!2775428)))

(assert (=> d!1359524 (= res!1847815 (is-Nil!50038 (toList!3857 lm!1853)))))

(assert (=> d!1359524 (= (forall!9852 (toList!3857 lm!1853) lambda!160606) e!2775428)))

(declare-fun b!4457096 () Bool)

(declare-fun e!2775429 () Bool)

(assert (=> b!4457096 (= e!2775428 e!2775429)))

(declare-fun res!1847816 () Bool)

(assert (=> b!4457096 (=> (not res!1847816) (not e!2775429))))

(declare-fun dynLambda!20974 (Int tuple2!50132) Bool)

(assert (=> b!4457096 (= res!1847816 (dynLambda!20974 lambda!160606 (h!55783 (toList!3857 lm!1853))))))

(declare-fun b!4457097 () Bool)

(assert (=> b!4457097 (= e!2775429 (forall!9852 (t!357112 (toList!3857 lm!1853)) lambda!160606))))

(assert (= (and d!1359524 (not res!1847815)) b!4457096))

(assert (= (and b!4457096 res!1847816) b!4457097))

(declare-fun b_lambda!147685 () Bool)

(assert (=> (not b_lambda!147685) (not b!4457096)))

(declare-fun m!5159319 () Bool)

(assert (=> b!4457096 m!5159319))

(declare-fun m!5159321 () Bool)

(assert (=> b!4457097 m!5159321))

(assert (=> start!436838 d!1359524))

(declare-fun d!1359526 () Bool)

(declare-fun isStrictlySorted!311 (List!50162) Bool)

(assert (=> d!1359526 (= (inv!65605 lm!1853) (isStrictlySorted!311 (toList!3857 lm!1853)))))

(declare-fun bs!791009 () Bool)

(assert (= bs!791009 d!1359526))

(declare-fun m!5159323 () Bool)

(assert (=> bs!791009 m!5159323))

(assert (=> start!436838 d!1359526))

(declare-fun d!1359528 () Bool)

(declare-fun res!1847821 () Bool)

(declare-fun e!2775434 () Bool)

(assert (=> d!1359528 (=> res!1847821 e!2775434)))

(assert (=> d!1359528 (= res!1847821 (not (is-Cons!50037 l!12858)))))

(assert (=> d!1359528 (= (noDuplicateKeys!925 l!12858) e!2775434)))

(declare-fun b!4457102 () Bool)

(declare-fun e!2775435 () Bool)

(assert (=> b!4457102 (= e!2775434 e!2775435)))

(declare-fun res!1847822 () Bool)

(assert (=> b!4457102 (=> (not res!1847822) (not e!2775435))))

(declare-fun containsKey!1336 (List!50161 K!11418) Bool)

(assert (=> b!4457102 (= res!1847822 (not (containsKey!1336 (t!357111 l!12858) (_1!28359 (h!55782 l!12858)))))))

(declare-fun b!4457103 () Bool)

(assert (=> b!4457103 (= e!2775435 (noDuplicateKeys!925 (t!357111 l!12858)))))

(assert (= (and d!1359528 (not res!1847821)) b!4457102))

(assert (= (and b!4457102 res!1847822) b!4457103))

(declare-fun m!5159325 () Bool)

(assert (=> b!4457102 m!5159325))

(assert (=> b!4457103 m!5159101))

(assert (=> b!4456960 d!1359528))

(declare-fun bs!791010 () Bool)

(declare-fun d!1359530 () Bool)

(assert (= bs!791010 (and d!1359530 start!436838)))

(declare-fun lambda!160650 () Int)

(assert (=> bs!791010 (not (= lambda!160650 lambda!160606))))

(declare-fun bs!791011 () Bool)

(assert (= bs!791011 (and d!1359530 d!1359520)))

(assert (=> bs!791011 (not (= lambda!160650 lambda!160647))))

(assert (=> d!1359530 true))

(assert (=> d!1359530 (= (allKeysSameHashInMap!1044 lm!1853 hashF!1313) (forall!9852 (toList!3857 lm!1853) lambda!160650))))

(declare-fun bs!791012 () Bool)

(assert (= bs!791012 d!1359530))

(declare-fun m!5159327 () Bool)

(assert (=> bs!791012 m!5159327))

(assert (=> b!4456959 d!1359530))

(assert (=> b!4456961 d!1359494))

(declare-fun d!1359532 () Bool)

(declare-fun res!1847823 () Bool)

(declare-fun e!2775436 () Bool)

(assert (=> d!1359532 (=> res!1847823 e!2775436)))

(assert (=> d!1359532 (= res!1847823 (not (is-Cons!50037 (t!357111 l!12858))))))

(assert (=> d!1359532 (= (noDuplicateKeys!925 (t!357111 l!12858)) e!2775436)))

(declare-fun b!4457106 () Bool)

(declare-fun e!2775437 () Bool)

(assert (=> b!4457106 (= e!2775436 e!2775437)))

(declare-fun res!1847824 () Bool)

(assert (=> b!4457106 (=> (not res!1847824) (not e!2775437))))

(assert (=> b!4457106 (= res!1847824 (not (containsKey!1336 (t!357111 (t!357111 l!12858)) (_1!28359 (h!55782 (t!357111 l!12858))))))))

(declare-fun b!4457107 () Bool)

(assert (=> b!4457107 (= e!2775437 (noDuplicateKeys!925 (t!357111 (t!357111 l!12858))))))

(assert (= (and d!1359532 (not res!1847823)) b!4457106))

(assert (= (and b!4457106 res!1847824) b!4457107))

(declare-fun m!5159329 () Bool)

(assert (=> b!4457106 m!5159329))

(declare-fun m!5159331 () Bool)

(assert (=> b!4457107 m!5159331))

(assert (=> b!4456961 d!1359532))

(declare-fun bs!791013 () Bool)

(declare-fun d!1359534 () Bool)

(assert (= bs!791013 (and d!1359534 start!436838)))

(declare-fun lambda!160653 () Int)

(assert (=> bs!791013 (= lambda!160653 lambda!160606)))

(declare-fun bs!791014 () Bool)

(assert (= bs!791014 (and d!1359534 d!1359520)))

(assert (=> bs!791014 (= lambda!160653 lambda!160647)))

(declare-fun bs!791015 () Bool)

(assert (= bs!791015 (and d!1359534 d!1359530)))

(assert (=> bs!791015 (not (= lambda!160653 lambda!160650))))

(assert (=> d!1359534 (contains!12571 (addToMapMapFromBucket!519 (t!357111 l!12858) (extractMap!993 (toList!3857 lm!1853))) key!4412)))

(declare-fun lt!1648526 () Unit!86214)

(declare-fun choose!28387 (ListLongMap!2513 K!11418 List!50161 Hashable!5332) Unit!86214)

(assert (=> d!1359534 (= lt!1648526 (choose!28387 lm!1853 key!4412 (t!357111 l!12858) hashF!1313))))

(assert (=> d!1359534 (forall!9852 (toList!3857 lm!1853) lambda!160653)))

(assert (=> d!1359534 (= (lemmaAddToMapMaintainsContains!27 lm!1853 key!4412 (t!357111 l!12858) hashF!1313) lt!1648526)))

(declare-fun bs!791016 () Bool)

(assert (= bs!791016 d!1359534))

(declare-fun m!5159333 () Bool)

(assert (=> bs!791016 m!5159333))

(declare-fun m!5159335 () Bool)

(assert (=> bs!791016 m!5159335))

(declare-fun m!5159337 () Bool)

(assert (=> bs!791016 m!5159337))

(assert (=> bs!791016 m!5159113))

(assert (=> bs!791016 m!5159335))

(declare-fun m!5159339 () Bool)

(assert (=> bs!791016 m!5159339))

(assert (=> bs!791016 m!5159113))

(assert (=> b!4456961 d!1359534))

(declare-fun d!1359536 () Bool)

(assert (=> d!1359536 (eq!484 (addToMapMapFromBucket!519 (t!357111 l!12858) (+!1300 lt!1648341 (tuple2!50131 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858))))) (+!1300 (addToMapMapFromBucket!519 (t!357111 l!12858) lt!1648341) (tuple2!50131 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858)))))))

(declare-fun lt!1648529 () Unit!86214)

(declare-fun choose!28388 (ListMap!3095 K!11418 V!11664 List!50161) Unit!86214)

(assert (=> d!1359536 (= lt!1648529 (choose!28388 lt!1648341 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858)) (t!357111 l!12858)))))

(assert (=> d!1359536 (not (containsKey!1336 (t!357111 l!12858) (_1!28359 (h!55782 l!12858))))))

(assert (=> d!1359536 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!231 lt!1648341 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858)) (t!357111 l!12858)) lt!1648529)))

(declare-fun bs!791017 () Bool)

(assert (= bs!791017 d!1359536))

(assert (=> bs!791017 m!5159105))

(declare-fun m!5159341 () Bool)

(assert (=> bs!791017 m!5159341))

(declare-fun m!5159343 () Bool)

(assert (=> bs!791017 m!5159343))

(declare-fun m!5159345 () Bool)

(assert (=> bs!791017 m!5159345))

(declare-fun m!5159347 () Bool)

(assert (=> bs!791017 m!5159347))

(assert (=> bs!791017 m!5159341))

(declare-fun m!5159349 () Bool)

(assert (=> bs!791017 m!5159349))

(assert (=> bs!791017 m!5159325))

(assert (=> bs!791017 m!5159105))

(assert (=> bs!791017 m!5159343))

(assert (=> bs!791017 m!5159347))

(assert (=> b!4456961 d!1359536))

(declare-fun b!4457108 () Bool)

(declare-fun e!2775441 () Bool)

(assert (=> b!4457108 (= e!2775441 (not (contains!12574 (keys!17203 lt!1648346) key!4412)))))

(declare-fun b!4457109 () Bool)

(declare-fun e!2775440 () List!50165)

(assert (=> b!4457109 (= e!2775440 (keys!17203 lt!1648346))))

(declare-fun bm!310211 () Bool)

(declare-fun call!310216 () Bool)

(assert (=> bm!310211 (= call!310216 (contains!12574 e!2775440 key!4412))))

(declare-fun c!758678 () Bool)

(declare-fun c!758679 () Bool)

(assert (=> bm!310211 (= c!758678 c!758679)))

(declare-fun b!4457110 () Bool)

(declare-fun e!2775439 () Unit!86214)

(declare-fun e!2775443 () Unit!86214)

(assert (=> b!4457110 (= e!2775439 e!2775443)))

(declare-fun c!758677 () Bool)

(assert (=> b!4457110 (= c!758677 call!310216)))

(declare-fun d!1359538 () Bool)

(declare-fun e!2775438 () Bool)

(assert (=> d!1359538 e!2775438))

(declare-fun res!1847826 () Bool)

(assert (=> d!1359538 (=> res!1847826 e!2775438)))

(assert (=> d!1359538 (= res!1847826 e!2775441)))

(declare-fun res!1847825 () Bool)

(assert (=> d!1359538 (=> (not res!1847825) (not e!2775441))))

(declare-fun lt!1648534 () Bool)

(assert (=> d!1359538 (= res!1847825 (not lt!1648534))))

(declare-fun lt!1648533 () Bool)

(assert (=> d!1359538 (= lt!1648534 lt!1648533)))

(declare-fun lt!1648530 () Unit!86214)

(assert (=> d!1359538 (= lt!1648530 e!2775439)))

(assert (=> d!1359538 (= c!758679 lt!1648533)))

(assert (=> d!1359538 (= lt!1648533 (containsKey!1335 (toList!3858 lt!1648346) key!4412))))

(assert (=> d!1359538 (= (contains!12571 lt!1648346 key!4412) lt!1648534)))

(declare-fun b!4457111 () Bool)

(assert (=> b!4457111 (= e!2775440 (getKeysList!328 (toList!3858 lt!1648346)))))

(declare-fun b!4457112 () Bool)

(declare-fun lt!1648532 () Unit!86214)

(assert (=> b!4457112 (= e!2775439 lt!1648532)))

(declare-fun lt!1648535 () Unit!86214)

(assert (=> b!4457112 (= lt!1648535 (lemmaContainsKeyImpliesGetValueByKeyDefined!751 (toList!3858 lt!1648346) key!4412))))

(assert (=> b!4457112 (isDefined!8148 (getValueByKey!846 (toList!3858 lt!1648346) key!4412))))

(declare-fun lt!1648531 () Unit!86214)

(assert (=> b!4457112 (= lt!1648531 lt!1648535)))

(assert (=> b!4457112 (= lt!1648532 (lemmaInListThenGetKeysListContains!324 (toList!3858 lt!1648346) key!4412))))

(assert (=> b!4457112 call!310216))

(declare-fun b!4457113 () Bool)

(declare-fun e!2775442 () Bool)

(assert (=> b!4457113 (= e!2775438 e!2775442)))

(declare-fun res!1847827 () Bool)

(assert (=> b!4457113 (=> (not res!1847827) (not e!2775442))))

(assert (=> b!4457113 (= res!1847827 (isDefined!8148 (getValueByKey!846 (toList!3858 lt!1648346) key!4412)))))

(declare-fun b!4457114 () Bool)

(assert (=> b!4457114 (= e!2775442 (contains!12574 (keys!17203 lt!1648346) key!4412))))

(declare-fun b!4457115 () Bool)

(assert (=> b!4457115 false))

(declare-fun lt!1648537 () Unit!86214)

(declare-fun lt!1648536 () Unit!86214)

(assert (=> b!4457115 (= lt!1648537 lt!1648536)))

(assert (=> b!4457115 (containsKey!1335 (toList!3858 lt!1648346) key!4412)))

(assert (=> b!4457115 (= lt!1648536 (lemmaInGetKeysListThenContainsKey!326 (toList!3858 lt!1648346) key!4412))))

(declare-fun Unit!86231 () Unit!86214)

(assert (=> b!4457115 (= e!2775443 Unit!86231)))

(declare-fun b!4457116 () Bool)

(declare-fun Unit!86232 () Unit!86214)

(assert (=> b!4457116 (= e!2775443 Unit!86232)))

(assert (= (and d!1359538 c!758679) b!4457112))

(assert (= (and d!1359538 (not c!758679)) b!4457110))

(assert (= (and b!4457110 c!758677) b!4457115))

(assert (= (and b!4457110 (not c!758677)) b!4457116))

(assert (= (or b!4457112 b!4457110) bm!310211))

(assert (= (and bm!310211 c!758678) b!4457111))

(assert (= (and bm!310211 (not c!758678)) b!4457109))

(assert (= (and d!1359538 res!1847825) b!4457108))

(assert (= (and d!1359538 (not res!1847826)) b!4457113))

(assert (= (and b!4457113 res!1847827) b!4457114))

(declare-fun m!5159351 () Bool)

(assert (=> d!1359538 m!5159351))

(declare-fun m!5159353 () Bool)

(assert (=> b!4457111 m!5159353))

(declare-fun m!5159355 () Bool)

(assert (=> b!4457114 m!5159355))

(assert (=> b!4457114 m!5159355))

(declare-fun m!5159357 () Bool)

(assert (=> b!4457114 m!5159357))

(assert (=> b!4457115 m!5159351))

(declare-fun m!5159359 () Bool)

(assert (=> b!4457115 m!5159359))

(assert (=> b!4457108 m!5159355))

(assert (=> b!4457108 m!5159355))

(assert (=> b!4457108 m!5159357))

(declare-fun m!5159361 () Bool)

(assert (=> b!4457113 m!5159361))

(assert (=> b!4457113 m!5159361))

(declare-fun m!5159363 () Bool)

(assert (=> b!4457113 m!5159363))

(declare-fun m!5159365 () Bool)

(assert (=> bm!310211 m!5159365))

(assert (=> b!4457109 m!5159355))

(declare-fun m!5159367 () Bool)

(assert (=> b!4457112 m!5159367))

(assert (=> b!4457112 m!5159361))

(assert (=> b!4457112 m!5159361))

(assert (=> b!4457112 m!5159363))

(declare-fun m!5159369 () Bool)

(assert (=> b!4457112 m!5159369))

(assert (=> b!4456961 d!1359538))

(declare-fun d!1359540 () Bool)

(assert (=> d!1359540 (= (eq!484 lt!1648345 lt!1648346) (= (content!8048 (toList!3858 lt!1648345)) (content!8048 (toList!3858 lt!1648346))))))

(declare-fun bs!791018 () Bool)

(assert (= bs!791018 d!1359540))

(declare-fun m!5159371 () Bool)

(assert (=> bs!791018 m!5159371))

(declare-fun m!5159373 () Bool)

(assert (=> bs!791018 m!5159373))

(assert (=> b!4456961 d!1359540))

(declare-fun b!4457117 () Bool)

(declare-fun e!2775447 () Bool)

(assert (=> b!4457117 (= e!2775447 (not (contains!12574 (keys!17203 lt!1648342) key!4412)))))

(declare-fun b!4457118 () Bool)

(declare-fun e!2775446 () List!50165)

(assert (=> b!4457118 (= e!2775446 (keys!17203 lt!1648342))))

(declare-fun bm!310212 () Bool)

(declare-fun call!310217 () Bool)

(assert (=> bm!310212 (= call!310217 (contains!12574 e!2775446 key!4412))))

(declare-fun c!758681 () Bool)

(declare-fun c!758682 () Bool)

(assert (=> bm!310212 (= c!758681 c!758682)))

(declare-fun b!4457119 () Bool)

(declare-fun e!2775445 () Unit!86214)

(declare-fun e!2775449 () Unit!86214)

(assert (=> b!4457119 (= e!2775445 e!2775449)))

(declare-fun c!758680 () Bool)

(assert (=> b!4457119 (= c!758680 call!310217)))

(declare-fun d!1359542 () Bool)

(declare-fun e!2775444 () Bool)

(assert (=> d!1359542 e!2775444))

(declare-fun res!1847829 () Bool)

(assert (=> d!1359542 (=> res!1847829 e!2775444)))

(assert (=> d!1359542 (= res!1847829 e!2775447)))

(declare-fun res!1847828 () Bool)

(assert (=> d!1359542 (=> (not res!1847828) (not e!2775447))))

(declare-fun lt!1648542 () Bool)

(assert (=> d!1359542 (= res!1847828 (not lt!1648542))))

(declare-fun lt!1648541 () Bool)

(assert (=> d!1359542 (= lt!1648542 lt!1648541)))

(declare-fun lt!1648538 () Unit!86214)

(assert (=> d!1359542 (= lt!1648538 e!2775445)))

(assert (=> d!1359542 (= c!758682 lt!1648541)))

(assert (=> d!1359542 (= lt!1648541 (containsKey!1335 (toList!3858 lt!1648342) key!4412))))

(assert (=> d!1359542 (= (contains!12571 lt!1648342 key!4412) lt!1648542)))

(declare-fun b!4457120 () Bool)

(assert (=> b!4457120 (= e!2775446 (getKeysList!328 (toList!3858 lt!1648342)))))

(declare-fun b!4457121 () Bool)

(declare-fun lt!1648540 () Unit!86214)

(assert (=> b!4457121 (= e!2775445 lt!1648540)))

(declare-fun lt!1648543 () Unit!86214)

(assert (=> b!4457121 (= lt!1648543 (lemmaContainsKeyImpliesGetValueByKeyDefined!751 (toList!3858 lt!1648342) key!4412))))

(assert (=> b!4457121 (isDefined!8148 (getValueByKey!846 (toList!3858 lt!1648342) key!4412))))

(declare-fun lt!1648539 () Unit!86214)

(assert (=> b!4457121 (= lt!1648539 lt!1648543)))

(assert (=> b!4457121 (= lt!1648540 (lemmaInListThenGetKeysListContains!324 (toList!3858 lt!1648342) key!4412))))

(assert (=> b!4457121 call!310217))

(declare-fun b!4457122 () Bool)

(declare-fun e!2775448 () Bool)

(assert (=> b!4457122 (= e!2775444 e!2775448)))

(declare-fun res!1847830 () Bool)

(assert (=> b!4457122 (=> (not res!1847830) (not e!2775448))))

(assert (=> b!4457122 (= res!1847830 (isDefined!8148 (getValueByKey!846 (toList!3858 lt!1648342) key!4412)))))

(declare-fun b!4457123 () Bool)

(assert (=> b!4457123 (= e!2775448 (contains!12574 (keys!17203 lt!1648342) key!4412))))

(declare-fun b!4457124 () Bool)

(assert (=> b!4457124 false))

(declare-fun lt!1648545 () Unit!86214)

(declare-fun lt!1648544 () Unit!86214)

(assert (=> b!4457124 (= lt!1648545 lt!1648544)))

(assert (=> b!4457124 (containsKey!1335 (toList!3858 lt!1648342) key!4412)))

(assert (=> b!4457124 (= lt!1648544 (lemmaInGetKeysListThenContainsKey!326 (toList!3858 lt!1648342) key!4412))))

(declare-fun Unit!86233 () Unit!86214)

(assert (=> b!4457124 (= e!2775449 Unit!86233)))

(declare-fun b!4457125 () Bool)

(declare-fun Unit!86235 () Unit!86214)

(assert (=> b!4457125 (= e!2775449 Unit!86235)))

(assert (= (and d!1359542 c!758682) b!4457121))

(assert (= (and d!1359542 (not c!758682)) b!4457119))

(assert (= (and b!4457119 c!758680) b!4457124))

(assert (= (and b!4457119 (not c!758680)) b!4457125))

(assert (= (or b!4457121 b!4457119) bm!310212))

(assert (= (and bm!310212 c!758681) b!4457120))

(assert (= (and bm!310212 (not c!758681)) b!4457118))

(assert (= (and d!1359542 res!1847828) b!4457117))

(assert (= (and d!1359542 (not res!1847829)) b!4457122))

(assert (= (and b!4457122 res!1847830) b!4457123))

(declare-fun m!5159375 () Bool)

(assert (=> d!1359542 m!5159375))

(declare-fun m!5159377 () Bool)

(assert (=> b!4457120 m!5159377))

(declare-fun m!5159379 () Bool)

(assert (=> b!4457123 m!5159379))

(assert (=> b!4457123 m!5159379))

(declare-fun m!5159381 () Bool)

(assert (=> b!4457123 m!5159381))

(assert (=> b!4457124 m!5159375))

(declare-fun m!5159383 () Bool)

(assert (=> b!4457124 m!5159383))

(assert (=> b!4457117 m!5159379))

(assert (=> b!4457117 m!5159379))

(assert (=> b!4457117 m!5159381))

(declare-fun m!5159385 () Bool)

(assert (=> b!4457122 m!5159385))

(assert (=> b!4457122 m!5159385))

(declare-fun m!5159387 () Bool)

(assert (=> b!4457122 m!5159387))

(declare-fun m!5159389 () Bool)

(assert (=> bm!310212 m!5159389))

(assert (=> b!4457118 m!5159379))

(declare-fun m!5159391 () Bool)

(assert (=> b!4457121 m!5159391))

(assert (=> b!4457121 m!5159385))

(assert (=> b!4457121 m!5159385))

(assert (=> b!4457121 m!5159387))

(declare-fun m!5159393 () Bool)

(assert (=> b!4457121 m!5159393))

(assert (=> b!4456961 d!1359542))

(assert (=> b!4456961 d!1359512))

(declare-fun bs!791019 () Bool)

(declare-fun b!4457129 () Bool)

(assert (= bs!791019 (and b!4457129 b!4457044)))

(declare-fun lambda!160654 () Int)

(assert (=> bs!791019 (= (= lt!1648341 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160654 lambda!160638))))

(declare-fun bs!791020 () Bool)

(assert (= bs!791020 (and b!4457129 b!4457045)))

(assert (=> bs!791020 (= (= lt!1648341 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160654 lambda!160639))))

(assert (=> bs!791020 (= (= lt!1648341 lt!1648452) (= lambda!160654 lambda!160640))))

(declare-fun bs!791021 () Bool)

(assert (= bs!791021 (and b!4457129 d!1359494)))

(assert (=> bs!791021 (= (= lt!1648341 lt!1648458) (= lambda!160654 lambda!160641))))

(assert (=> b!4457129 true))

(declare-fun bs!791022 () Bool)

(declare-fun b!4457130 () Bool)

(assert (= bs!791022 (and b!4457130 b!4457045)))

(declare-fun lambda!160655 () Int)

(assert (=> bs!791022 (= (= lt!1648341 lt!1648452) (= lambda!160655 lambda!160640))))

(declare-fun bs!791023 () Bool)

(assert (= bs!791023 (and b!4457130 d!1359494)))

(assert (=> bs!791023 (= (= lt!1648341 lt!1648458) (= lambda!160655 lambda!160641))))

(assert (=> bs!791022 (= (= lt!1648341 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160655 lambda!160639))))

(declare-fun bs!791024 () Bool)

(assert (= bs!791024 (and b!4457130 b!4457044)))

(assert (=> bs!791024 (= (= lt!1648341 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160655 lambda!160638))))

(declare-fun bs!791025 () Bool)

(assert (= bs!791025 (and b!4457130 b!4457129)))

(assert (=> bs!791025 (= lambda!160655 lambda!160654)))

(assert (=> b!4457130 true))

(declare-fun lt!1648551 () ListMap!3095)

(declare-fun lambda!160656 () Int)

(assert (=> bs!791022 (= (= lt!1648551 lt!1648452) (= lambda!160656 lambda!160640))))

(assert (=> b!4457130 (= (= lt!1648551 lt!1648341) (= lambda!160656 lambda!160655))))

(assert (=> bs!791023 (= (= lt!1648551 lt!1648458) (= lambda!160656 lambda!160641))))

(assert (=> bs!791022 (= (= lt!1648551 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160656 lambda!160639))))

(assert (=> bs!791024 (= (= lt!1648551 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160656 lambda!160638))))

(assert (=> bs!791025 (= (= lt!1648551 lt!1648341) (= lambda!160656 lambda!160654))))

(assert (=> b!4457130 true))

(declare-fun bs!791026 () Bool)

(declare-fun d!1359544 () Bool)

(assert (= bs!791026 (and d!1359544 b!4457130)))

(declare-fun lambda!160657 () Int)

(declare-fun lt!1648557 () ListMap!3095)

(assert (=> bs!791026 (= (= lt!1648557 lt!1648551) (= lambda!160657 lambda!160656))))

(declare-fun bs!791027 () Bool)

(assert (= bs!791027 (and d!1359544 b!4457045)))

(assert (=> bs!791027 (= (= lt!1648557 lt!1648452) (= lambda!160657 lambda!160640))))

(assert (=> bs!791026 (= (= lt!1648557 lt!1648341) (= lambda!160657 lambda!160655))))

(declare-fun bs!791028 () Bool)

(assert (= bs!791028 (and d!1359544 d!1359494)))

(assert (=> bs!791028 (= (= lt!1648557 lt!1648458) (= lambda!160657 lambda!160641))))

(assert (=> bs!791027 (= (= lt!1648557 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160657 lambda!160639))))

(declare-fun bs!791029 () Bool)

(assert (= bs!791029 (and d!1359544 b!4457044)))

(assert (=> bs!791029 (= (= lt!1648557 (+!1300 lt!1648341 (h!55782 l!12858))) (= lambda!160657 lambda!160638))))

(declare-fun bs!791030 () Bool)

(assert (= bs!791030 (and d!1359544 b!4457129)))

(assert (=> bs!791030 (= (= lt!1648557 lt!1648341) (= lambda!160657 lambda!160654))))

(assert (=> d!1359544 true))

(declare-fun b!4457126 () Bool)

(declare-fun e!2775451 () Bool)

(assert (=> b!4457126 (= e!2775451 (forall!9854 (toList!3858 lt!1648341) lambda!160656))))

(declare-fun e!2775452 () Bool)

(assert (=> d!1359544 e!2775452))

(declare-fun res!1847833 () Bool)

(assert (=> d!1359544 (=> (not res!1847833) (not e!2775452))))

(assert (=> d!1359544 (= res!1847833 (forall!9854 (t!357111 l!12858) lambda!160657))))

(declare-fun e!2775450 () ListMap!3095)

(assert (=> d!1359544 (= lt!1648557 e!2775450)))

(declare-fun c!758683 () Bool)

(assert (=> d!1359544 (= c!758683 (is-Nil!50037 (t!357111 l!12858)))))

(assert (=> d!1359544 (noDuplicateKeys!925 (t!357111 l!12858))))

(assert (=> d!1359544 (= (addToMapMapFromBucket!519 (t!357111 l!12858) lt!1648341) lt!1648557)))

(declare-fun bm!310213 () Bool)

(declare-fun call!310219 () Unit!86214)

(assert (=> bm!310213 (= call!310219 (lemmaContainsAllItsOwnKeys!233 lt!1648341))))

(declare-fun call!310220 () Bool)

(declare-fun bm!310214 () Bool)

(assert (=> bm!310214 (= call!310220 (forall!9854 (toList!3858 lt!1648341) (ite c!758683 lambda!160654 lambda!160656)))))

(declare-fun b!4457127 () Bool)

(declare-fun res!1847832 () Bool)

(assert (=> b!4457127 (=> (not res!1847832) (not e!2775452))))

(assert (=> b!4457127 (= res!1847832 (forall!9854 (toList!3858 lt!1648341) lambda!160657))))

(declare-fun b!4457128 () Bool)

(assert (=> b!4457128 (= e!2775452 (invariantList!882 (toList!3858 lt!1648557)))))

(assert (=> b!4457129 (= e!2775450 lt!1648341)))

(declare-fun lt!1648561 () Unit!86214)

(assert (=> b!4457129 (= lt!1648561 call!310219)))

(declare-fun call!310218 () Bool)

(assert (=> b!4457129 call!310218))

(declare-fun lt!1648555 () Unit!86214)

(assert (=> b!4457129 (= lt!1648555 lt!1648561)))

(assert (=> b!4457129 call!310220))

(declare-fun lt!1648546 () Unit!86214)

(declare-fun Unit!86237 () Unit!86214)

(assert (=> b!4457129 (= lt!1648546 Unit!86237)))

(assert (=> b!4457130 (= e!2775450 lt!1648551)))

(declare-fun lt!1648558 () ListMap!3095)

(assert (=> b!4457130 (= lt!1648558 (+!1300 lt!1648341 (h!55782 (t!357111 l!12858))))))

(assert (=> b!4457130 (= lt!1648551 (addToMapMapFromBucket!519 (t!357111 (t!357111 l!12858)) (+!1300 lt!1648341 (h!55782 (t!357111 l!12858)))))))

(declare-fun lt!1648554 () Unit!86214)

(assert (=> b!4457130 (= lt!1648554 call!310219)))

(assert (=> b!4457130 (forall!9854 (toList!3858 lt!1648341) lambda!160655)))

(declare-fun lt!1648566 () Unit!86214)

(assert (=> b!4457130 (= lt!1648566 lt!1648554)))

(assert (=> b!4457130 (forall!9854 (toList!3858 lt!1648558) lambda!160656)))

(declare-fun lt!1648563 () Unit!86214)

(declare-fun Unit!86238 () Unit!86214)

(assert (=> b!4457130 (= lt!1648563 Unit!86238)))

(assert (=> b!4457130 call!310218))

(declare-fun lt!1648559 () Unit!86214)

(declare-fun Unit!86239 () Unit!86214)

(assert (=> b!4457130 (= lt!1648559 Unit!86239)))

(declare-fun lt!1648556 () Unit!86214)

(declare-fun Unit!86240 () Unit!86214)

(assert (=> b!4457130 (= lt!1648556 Unit!86240)))

(declare-fun lt!1648565 () Unit!86214)

(assert (=> b!4457130 (= lt!1648565 (forallContained!2183 (toList!3858 lt!1648558) lambda!160656 (h!55782 (t!357111 l!12858))))))

(assert (=> b!4457130 (contains!12571 lt!1648558 (_1!28359 (h!55782 (t!357111 l!12858))))))

(declare-fun lt!1648553 () Unit!86214)

(declare-fun Unit!86241 () Unit!86214)

(assert (=> b!4457130 (= lt!1648553 Unit!86241)))

(assert (=> b!4457130 (contains!12571 lt!1648551 (_1!28359 (h!55782 (t!357111 l!12858))))))

(declare-fun lt!1648549 () Unit!86214)

(declare-fun Unit!86242 () Unit!86214)

(assert (=> b!4457130 (= lt!1648549 Unit!86242)))

(assert (=> b!4457130 (forall!9854 (t!357111 l!12858) lambda!160656)))

(declare-fun lt!1648548 () Unit!86214)

(declare-fun Unit!86243 () Unit!86214)

(assert (=> b!4457130 (= lt!1648548 Unit!86243)))

(assert (=> b!4457130 (forall!9854 (toList!3858 lt!1648558) lambda!160656)))

(declare-fun lt!1648547 () Unit!86214)

(declare-fun Unit!86244 () Unit!86214)

(assert (=> b!4457130 (= lt!1648547 Unit!86244)))

(declare-fun lt!1648564 () Unit!86214)

(declare-fun Unit!86245 () Unit!86214)

(assert (=> b!4457130 (= lt!1648564 Unit!86245)))

(declare-fun lt!1648560 () Unit!86214)

(assert (=> b!4457130 (= lt!1648560 (addForallContainsKeyThenBeforeAdding!232 lt!1648341 lt!1648551 (_1!28359 (h!55782 (t!357111 l!12858))) (_2!28359 (h!55782 (t!357111 l!12858)))))))

(assert (=> b!4457130 call!310220))

(declare-fun lt!1648562 () Unit!86214)

(assert (=> b!4457130 (= lt!1648562 lt!1648560)))

(assert (=> b!4457130 (forall!9854 (toList!3858 lt!1648341) lambda!160656)))

(declare-fun lt!1648550 () Unit!86214)

(declare-fun Unit!86246 () Unit!86214)

(assert (=> b!4457130 (= lt!1648550 Unit!86246)))

(declare-fun res!1847831 () Bool)

(assert (=> b!4457130 (= res!1847831 (forall!9854 (t!357111 l!12858) lambda!160656))))

(assert (=> b!4457130 (=> (not res!1847831) (not e!2775451))))

(assert (=> b!4457130 e!2775451))

(declare-fun lt!1648552 () Unit!86214)

(declare-fun Unit!86247 () Unit!86214)

(assert (=> b!4457130 (= lt!1648552 Unit!86247)))

(declare-fun bm!310215 () Bool)

(assert (=> bm!310215 (= call!310218 (forall!9854 (ite c!758683 (toList!3858 lt!1648341) (t!357111 (t!357111 l!12858))) (ite c!758683 lambda!160654 lambda!160656)))))

(assert (= (and d!1359544 c!758683) b!4457129))

(assert (= (and d!1359544 (not c!758683)) b!4457130))

(assert (= (and b!4457130 res!1847831) b!4457126))

(assert (= (or b!4457129 b!4457130) bm!310213))

(assert (= (or b!4457129 b!4457130) bm!310215))

(assert (= (or b!4457129 b!4457130) bm!310214))

(assert (= (and d!1359544 res!1847833) b!4457127))

(assert (= (and b!4457127 res!1847832) b!4457128))

(declare-fun m!5159395 () Bool)

(assert (=> b!4457128 m!5159395))

(declare-fun m!5159397 () Bool)

(assert (=> bm!310215 m!5159397))

(declare-fun m!5159399 () Bool)

(assert (=> b!4457130 m!5159399))

(declare-fun m!5159401 () Bool)

(assert (=> b!4457130 m!5159401))

(declare-fun m!5159403 () Bool)

(assert (=> b!4457130 m!5159403))

(declare-fun m!5159405 () Bool)

(assert (=> b!4457130 m!5159405))

(declare-fun m!5159407 () Bool)

(assert (=> b!4457130 m!5159407))

(declare-fun m!5159409 () Bool)

(assert (=> b!4457130 m!5159409))

(declare-fun m!5159411 () Bool)

(assert (=> b!4457130 m!5159411))

(declare-fun m!5159413 () Bool)

(assert (=> b!4457130 m!5159413))

(assert (=> b!4457130 m!5159399))

(declare-fun m!5159415 () Bool)

(assert (=> b!4457130 m!5159415))

(declare-fun m!5159417 () Bool)

(assert (=> b!4457130 m!5159417))

(assert (=> b!4457130 m!5159405))

(assert (=> b!4457130 m!5159403))

(declare-fun m!5159419 () Bool)

(assert (=> bm!310213 m!5159419))

(declare-fun m!5159421 () Bool)

(assert (=> b!4457127 m!5159421))

(assert (=> b!4457126 m!5159417))

(declare-fun m!5159423 () Bool)

(assert (=> d!1359544 m!5159423))

(assert (=> d!1359544 m!5159101))

(declare-fun m!5159425 () Bool)

(assert (=> bm!310214 m!5159425))

(assert (=> b!4456961 d!1359544))

(declare-fun d!1359546 () Bool)

(assert (=> d!1359546 (contains!12571 (+!1300 lt!1648342 (tuple2!50131 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858)))) key!4412)))

(declare-fun lt!1648569 () Unit!86214)

(declare-fun choose!28391 (ListMap!3095 K!11418 V!11664 K!11418) Unit!86214)

(assert (=> d!1359546 (= lt!1648569 (choose!28391 lt!1648342 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858)) key!4412))))

(assert (=> d!1359546 (contains!12571 lt!1648342 key!4412)))

(assert (=> d!1359546 (= (addStillContains!7 lt!1648342 (_1!28359 (h!55782 l!12858)) (_2!28359 (h!55782 l!12858)) key!4412) lt!1648569)))

(declare-fun bs!791031 () Bool)

(assert (= bs!791031 d!1359546))

(declare-fun m!5159427 () Bool)

(assert (=> bs!791031 m!5159427))

(assert (=> bs!791031 m!5159427))

(declare-fun m!5159429 () Bool)

(assert (=> bs!791031 m!5159429))

(declare-fun m!5159431 () Bool)

(assert (=> bs!791031 m!5159431))

(assert (=> bs!791031 m!5159107))

(assert (=> b!4456961 d!1359546))

(assert (=> b!4456961 d!1359508))

(declare-fun b!4457136 () Bool)

(declare-fun tp!1335142 () Bool)

(declare-fun e!2775455 () Bool)

(assert (=> b!4457136 (= e!2775455 (and tp_is_empty!26921 tp_is_empty!26923 tp!1335142))))

(assert (=> b!4456965 (= tp!1335133 e!2775455)))

(assert (= (and b!4456965 (is-Cons!50037 (t!357111 l!12858))) b!4457136))

(declare-fun b!4457141 () Bool)

(declare-fun e!2775458 () Bool)

(declare-fun tp!1335147 () Bool)

(declare-fun tp!1335148 () Bool)

(assert (=> b!4457141 (= e!2775458 (and tp!1335147 tp!1335148))))

(assert (=> b!4456962 (= tp!1335132 e!2775458)))

(assert (= (and b!4456962 (is-Cons!50038 (toList!3857 lm!1853))) b!4457141))

(declare-fun b_lambda!147687 () Bool)

(assert (= b_lambda!147685 (or start!436838 b_lambda!147687)))

(declare-fun bs!791032 () Bool)

(declare-fun d!1359548 () Bool)

(assert (= bs!791032 (and d!1359548 start!436838)))

(assert (=> bs!791032 (= (dynLambda!20974 lambda!160606 (h!55783 (toList!3857 lm!1853))) (noDuplicateKeys!925 (_2!28360 (h!55783 (toList!3857 lm!1853)))))))

(declare-fun m!5159433 () Bool)

(assert (=> bs!791032 m!5159433))

(assert (=> b!4457096 d!1359548))

(push 1)

(assert (not b!4457052))

(assert (not bm!310205))

(assert (not b!4457122))

(assert tp_is_empty!26921)

(assert (not d!1359512))

(assert (not b!4457121))

(assert (not b!4457123))

(assert (not d!1359542))

(assert (not d!1359536))

(assert (not b!4457076))

(assert (not b!4457042))

(assert (not d!1359546))

(assert (not b!4457090))

(assert (not bm!310210))

(assert (not d!1359544))

(assert (not d!1359526))

(assert (not b!4457102))

(assert (not d!1359520))

(assert (not bm!310215))

(assert (not b!4457103))

(assert (not b!4457112))

(assert (not b!4457118))

(assert (not d!1359530))

(assert (not d!1359492))

(assert (not b!4457082))

(assert (not b!4457111))

(assert (not b!4457136))

(assert (not b!4457041))

(assert (not b!4457083))

(assert tp_is_empty!26923)

(assert (not d!1359538))

(assert (not b!4457120))

(assert (not b!4457124))

(assert (not bs!791032))

(assert (not b!4457053))

(assert (not d!1359534))

(assert (not b!4457097))

(assert (not b!4457108))

(assert (not b!4457080))

(assert (not b!4457127))

(assert (not b!4457126))

(assert (not b!4457117))

(assert (not b!4457130))

(assert (not d!1359494))

(assert (not b!4457115))

(assert (not d!1359514))

(assert (not b!4457081))

(assert (not b_lambda!147687))

(assert (not d!1359540))

(assert (not b!4457054))

(assert (not b!4457113))

(assert (not b!4457106))

(assert (not bm!310207))

(assert (not b!4457128))

(assert (not d!1359508))

(assert (not bm!310214))

(assert (not bm!310206))

(assert (not bm!310212))

(assert (not b!4457114))

(assert (not b!4457141))

(assert (not b!4457079))

(assert (not b!4457045))

(assert (not b!4457055))

(assert (not b!4457043))

(assert (not b!4457109))

(assert (not bm!310211))

(assert (not b!4457077))

(assert (not b!4457107))

(assert (not bm!310213))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

