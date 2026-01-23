; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471844 () Bool)

(assert start!471844)

(declare-fun b!4675284 () Bool)

(declare-fun res!1968977 () Bool)

(declare-fun e!2917246 () Bool)

(assert (=> b!4675284 (=> (not res!1968977) (not e!2917246))))

(declare-datatypes ((K!13535 0))(
  ( (K!13536 (val!19099 Int)) )
))
(declare-datatypes ((V!13781 0))(
  ( (V!13782 (val!19100 Int)) )
))
(declare-datatypes ((tuple2!53410 0))(
  ( (tuple2!53411 (_1!29999 K!13535) (_2!29999 V!13781)) )
))
(declare-datatypes ((List!52283 0))(
  ( (Nil!52159) (Cons!52159 (h!58354 tuple2!53410) (t!359421 List!52283)) )
))
(declare-datatypes ((tuple2!53412 0))(
  ( (tuple2!53413 (_1!30000 (_ BitVec 64)) (_2!30000 List!52283)) )
))
(declare-datatypes ((List!52284 0))(
  ( (Nil!52160) (Cons!52160 (h!58355 tuple2!53412) (t!359422 List!52284)) )
))
(declare-datatypes ((ListLongMap!3927 0))(
  ( (ListLongMap!3928 (toList!5397 List!52284)) )
))
(declare-fun lm!2023 () ListLongMap!3927)

(declare-datatypes ((Hashable!6123 0))(
  ( (HashableExt!6122 (__x!31826 Int)) )
))
(declare-fun hashF!1323 () Hashable!6123)

(declare-fun allKeysSameHashInMap!1668 (ListLongMap!3927 Hashable!6123) Bool)

(assert (=> b!4675284 (= res!1968977 (allKeysSameHashInMap!1668 lm!2023 hashF!1323))))

(declare-fun b!4675286 () Bool)

(declare-fun res!1968984 () Bool)

(assert (=> b!4675286 (=> (not res!1968984) (not e!2917246))))

(declare-fun oldBucket!34 () List!52283)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!9799 (List!52284) tuple2!53412)

(assert (=> b!4675286 (= res!1968984 (= (head!9799 (toList!5397 lm!2023)) (tuple2!53413 hash!405 oldBucket!34)))))

(declare-fun b!4675287 () Bool)

(declare-fun e!2917248 () Bool)

(declare-fun e!2917243 () Bool)

(assert (=> b!4675287 (= e!2917248 e!2917243)))

(declare-fun res!1968986 () Bool)

(assert (=> b!4675287 (=> res!1968986 e!2917243)))

(declare-fun lt!1835298 () List!52283)

(declare-fun newBucket!218 () List!52283)

(assert (=> b!4675287 (= res!1968986 (not (= lt!1835298 newBucket!218)))))

(declare-fun tail!8350 (List!52283) List!52283)

(assert (=> b!4675287 (= lt!1835298 (tail!8350 oldBucket!34))))

(declare-fun b!4675288 () Bool)

(declare-fun res!1968991 () Bool)

(assert (=> b!4675288 (=> (not res!1968991) (not e!2917246))))

(declare-fun allKeysSameHash!1580 (List!52283 (_ BitVec 64) Hashable!6123) Bool)

(assert (=> b!4675288 (= res!1968991 (allKeysSameHash!1580 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4675289 () Bool)

(declare-fun res!1968988 () Bool)

(declare-fun e!2917247 () Bool)

(assert (=> b!4675289 (=> (not res!1968988) (not e!2917247))))

(declare-fun noDuplicateKeys!1754 (List!52283) Bool)

(assert (=> b!4675289 (= res!1968988 (noDuplicateKeys!1754 newBucket!218))))

(declare-fun b!4675290 () Bool)

(declare-fun res!1968989 () Bool)

(assert (=> b!4675290 (=> (not res!1968989) (not e!2917247))))

(assert (=> b!4675290 (= res!1968989 (noDuplicateKeys!1754 oldBucket!34))))

(declare-fun b!4675291 () Bool)

(declare-fun e!2917244 () Bool)

(assert (=> b!4675291 (= e!2917243 e!2917244)))

(declare-fun res!1968980 () Bool)

(assert (=> b!4675291 (=> res!1968980 e!2917244)))

(declare-datatypes ((ListMap!4761 0))(
  ( (ListMap!4762 (toList!5398 List!52283)) )
))
(declare-fun lt!1835297 () ListMap!4761)

(declare-fun lt!1835299 () ListMap!4761)

(declare-fun addToMapMapFromBucket!1186 (List!52283 ListMap!4761) ListMap!4761)

(assert (=> b!4675291 (= res!1968980 (not (= lt!1835297 (addToMapMapFromBucket!1186 newBucket!218 lt!1835299))))))

(assert (=> b!4675291 (= lt!1835297 (addToMapMapFromBucket!1186 lt!1835298 lt!1835299))))

(declare-fun b!4675292 () Bool)

(assert (=> b!4675292 (= e!2917247 e!2917246)))

(declare-fun res!1968985 () Bool)

(assert (=> b!4675292 (=> (not res!1968985) (not e!2917246))))

(declare-fun lt!1835300 () ListMap!4761)

(declare-fun key!4653 () K!13535)

(declare-fun contains!15310 (ListMap!4761 K!13535) Bool)

(assert (=> b!4675292 (= res!1968985 (contains!15310 lt!1835300 key!4653))))

(declare-fun extractMap!1780 (List!52284) ListMap!4761)

(assert (=> b!4675292 (= lt!1835300 (extractMap!1780 (toList!5397 lm!2023)))))

(declare-fun b!4675293 () Bool)

(declare-fun res!1968979 () Bool)

(assert (=> b!4675293 (=> (not res!1968979) (not e!2917246))))

(get-info :version)

(assert (=> b!4675293 (= res!1968979 ((_ is Cons!52160) (toList!5397 lm!2023)))))

(declare-fun b!4675294 () Bool)

(declare-fun e!2917241 () Bool)

(declare-fun tp!1344517 () Bool)

(assert (=> b!4675294 (= e!2917241 tp!1344517)))

(declare-fun b!4675295 () Bool)

(declare-fun res!1968978 () Bool)

(assert (=> b!4675295 (=> (not res!1968978) (not e!2917246))))

(declare-fun hash!3916 (Hashable!6123 K!13535) (_ BitVec 64))

(assert (=> b!4675295 (= res!1968978 (= (hash!3916 hashF!1323 key!4653) hash!405))))

(declare-fun b!4675296 () Bool)

(declare-fun lambda!203435 () Int)

(declare-fun forall!11171 (List!52284 Int) Bool)

(assert (=> b!4675296 (= e!2917244 (forall!11171 (t!359422 (toList!5397 lm!2023)) lambda!203435))))

(declare-fun lt!1835301 () tuple2!53410)

(declare-fun eq!943 (ListMap!4761 ListMap!4761) Bool)

(declare-fun +!2056 (ListMap!4761 tuple2!53410) ListMap!4761)

(assert (=> b!4675296 (eq!943 (addToMapMapFromBucket!1186 (Cons!52159 lt!1835301 lt!1835298) lt!1835299) (+!2056 lt!1835297 lt!1835301))))

(declare-datatypes ((Unit!121517 0))(
  ( (Unit!121518) )
))
(declare-fun lt!1835302 () Unit!121517)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!192 (tuple2!53410 List!52283 ListMap!4761) Unit!121517)

(assert (=> b!4675296 (= lt!1835302 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!192 lt!1835301 lt!1835298 lt!1835299))))

(declare-fun head!9800 (List!52283) tuple2!53410)

(assert (=> b!4675296 (= lt!1835301 (head!9800 oldBucket!34))))

(declare-fun b!4675297 () Bool)

(assert (=> b!4675297 (= e!2917246 (not e!2917248))))

(declare-fun res!1968981 () Bool)

(assert (=> b!4675297 (=> res!1968981 e!2917248)))

(assert (=> b!4675297 (= res!1968981 (or (not ((_ is Cons!52159) oldBucket!34)) (not (= (_1!29999 (h!58354 oldBucket!34)) key!4653))))))

(assert (=> b!4675297 (= lt!1835300 (addToMapMapFromBucket!1186 (_2!30000 (h!58355 (toList!5397 lm!2023))) lt!1835299))))

(assert (=> b!4675297 (= lt!1835299 (extractMap!1780 (t!359422 (toList!5397 lm!2023))))))

(declare-fun tail!8351 (ListLongMap!3927) ListLongMap!3927)

(assert (=> b!4675297 (= (t!359422 (toList!5397 lm!2023)) (toList!5397 (tail!8351 lm!2023)))))

(declare-fun b!4675285 () Bool)

(declare-fun res!1968983 () Bool)

(assert (=> b!4675285 (=> (not res!1968983) (not e!2917247))))

(declare-fun removePairForKey!1349 (List!52283 K!13535) List!52283)

(assert (=> b!4675285 (= res!1968983 (= (removePairForKey!1349 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!1968987 () Bool)

(assert (=> start!471844 (=> (not res!1968987) (not e!2917247))))

(assert (=> start!471844 (= res!1968987 (forall!11171 (toList!5397 lm!2023) lambda!203435))))

(assert (=> start!471844 e!2917247))

(declare-fun inv!67409 (ListLongMap!3927) Bool)

(assert (=> start!471844 (and (inv!67409 lm!2023) e!2917241)))

(declare-fun tp_is_empty!30309 () Bool)

(assert (=> start!471844 tp_is_empty!30309))

(declare-fun e!2917242 () Bool)

(assert (=> start!471844 e!2917242))

(assert (=> start!471844 true))

(declare-fun e!2917245 () Bool)

(assert (=> start!471844 e!2917245))

(declare-fun tp!1344515 () Bool)

(declare-fun b!4675298 () Bool)

(declare-fun tp_is_empty!30311 () Bool)

(assert (=> b!4675298 (= e!2917242 (and tp_is_empty!30309 tp_is_empty!30311 tp!1344515))))

(declare-fun b!4675299 () Bool)

(declare-fun res!1968982 () Bool)

(assert (=> b!4675299 (=> res!1968982 e!2917243)))

(assert (=> b!4675299 (= res!1968982 (not (= (extractMap!1780 (Cons!52160 (tuple2!53413 hash!405 lt!1835298) (t!359422 (toList!5397 lm!2023)))) (extractMap!1780 (Cons!52160 (tuple2!53413 hash!405 newBucket!218) (t!359422 (toList!5397 lm!2023)))))))))

(declare-fun tp!1344516 () Bool)

(declare-fun b!4675300 () Bool)

(assert (=> b!4675300 (= e!2917245 (and tp_is_empty!30309 tp_is_empty!30311 tp!1344516))))

(declare-fun b!4675301 () Bool)

(declare-fun res!1968990 () Bool)

(assert (=> b!4675301 (=> (not res!1968990) (not e!2917247))))

(assert (=> b!4675301 (= res!1968990 (allKeysSameHash!1580 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!471844 res!1968987) b!4675290))

(assert (= (and b!4675290 res!1968989) b!4675289))

(assert (= (and b!4675289 res!1968988) b!4675285))

(assert (= (and b!4675285 res!1968983) b!4675301))

(assert (= (and b!4675301 res!1968990) b!4675292))

(assert (= (and b!4675292 res!1968985) b!4675295))

(assert (= (and b!4675295 res!1968978) b!4675288))

(assert (= (and b!4675288 res!1968991) b!4675284))

(assert (= (and b!4675284 res!1968977) b!4675286))

(assert (= (and b!4675286 res!1968984) b!4675293))

(assert (= (and b!4675293 res!1968979) b!4675297))

(assert (= (and b!4675297 (not res!1968981)) b!4675287))

(assert (= (and b!4675287 (not res!1968986)) b!4675299))

(assert (= (and b!4675299 (not res!1968982)) b!4675291))

(assert (= (and b!4675291 (not res!1968980)) b!4675296))

(assert (= start!471844 b!4675294))

(assert (= (and start!471844 ((_ is Cons!52159) oldBucket!34)) b!4675298))

(assert (= (and start!471844 ((_ is Cons!52159) newBucket!218)) b!4675300))

(declare-fun m!5568705 () Bool)

(assert (=> b!4675292 m!5568705))

(declare-fun m!5568707 () Bool)

(assert (=> b!4675292 m!5568707))

(declare-fun m!5568709 () Bool)

(assert (=> b!4675284 m!5568709))

(declare-fun m!5568711 () Bool)

(assert (=> b!4675295 m!5568711))

(declare-fun m!5568713 () Bool)

(assert (=> b!4675291 m!5568713))

(declare-fun m!5568715 () Bool)

(assert (=> b!4675291 m!5568715))

(declare-fun m!5568717 () Bool)

(assert (=> b!4675285 m!5568717))

(declare-fun m!5568719 () Bool)

(assert (=> b!4675299 m!5568719))

(declare-fun m!5568721 () Bool)

(assert (=> b!4675299 m!5568721))

(declare-fun m!5568723 () Bool)

(assert (=> b!4675296 m!5568723))

(declare-fun m!5568725 () Bool)

(assert (=> b!4675296 m!5568725))

(declare-fun m!5568727 () Bool)

(assert (=> b!4675296 m!5568727))

(declare-fun m!5568729 () Bool)

(assert (=> b!4675296 m!5568729))

(declare-fun m!5568731 () Bool)

(assert (=> b!4675296 m!5568731))

(assert (=> b!4675296 m!5568727))

(assert (=> b!4675296 m!5568729))

(declare-fun m!5568733 () Bool)

(assert (=> b!4675296 m!5568733))

(declare-fun m!5568735 () Bool)

(assert (=> b!4675297 m!5568735))

(declare-fun m!5568737 () Bool)

(assert (=> b!4675297 m!5568737))

(declare-fun m!5568739 () Bool)

(assert (=> b!4675297 m!5568739))

(declare-fun m!5568741 () Bool)

(assert (=> b!4675288 m!5568741))

(declare-fun m!5568743 () Bool)

(assert (=> b!4675286 m!5568743))

(declare-fun m!5568745 () Bool)

(assert (=> b!4675289 m!5568745))

(declare-fun m!5568747 () Bool)

(assert (=> b!4675301 m!5568747))

(declare-fun m!5568749 () Bool)

(assert (=> b!4675290 m!5568749))

(declare-fun m!5568751 () Bool)

(assert (=> b!4675287 m!5568751))

(declare-fun m!5568753 () Bool)

(assert (=> start!471844 m!5568753))

(declare-fun m!5568755 () Bool)

(assert (=> start!471844 m!5568755))

(check-sat (not b!4675289) (not b!4675295) (not b!4675299) (not b!4675285) (not b!4675300) (not b!4675291) (not b!4675286) tp_is_empty!30311 (not b!4675301) (not b!4675288) (not b!4675290) (not b!4675292) (not b!4675296) (not b!4675287) (not b!4675297) (not start!471844) (not b!4675298) (not b!4675294) (not b!4675284) tp_is_empty!30309)
(check-sat)
(get-model)

(declare-fun bs!1079567 () Bool)

(declare-fun d!1486325 () Bool)

(assert (= bs!1079567 (and d!1486325 start!471844)))

(declare-fun lambda!203438 () Int)

(assert (=> bs!1079567 (not (= lambda!203438 lambda!203435))))

(assert (=> d!1486325 true))

(assert (=> d!1486325 (= (allKeysSameHashInMap!1668 lm!2023 hashF!1323) (forall!11171 (toList!5397 lm!2023) lambda!203438))))

(declare-fun bs!1079568 () Bool)

(assert (= bs!1079568 d!1486325))

(declare-fun m!5568781 () Bool)

(assert (=> bs!1079568 m!5568781))

(assert (=> b!4675284 d!1486325))

(declare-fun d!1486329 () Bool)

(declare-fun res!1969002 () Bool)

(declare-fun e!2917262 () Bool)

(assert (=> d!1486329 (=> res!1969002 e!2917262)))

(assert (=> d!1486329 (= res!1969002 ((_ is Nil!52160) (toList!5397 lm!2023)))))

(assert (=> d!1486329 (= (forall!11171 (toList!5397 lm!2023) lambda!203435) e!2917262)))

(declare-fun b!4675326 () Bool)

(declare-fun e!2917263 () Bool)

(assert (=> b!4675326 (= e!2917262 e!2917263)))

(declare-fun res!1969003 () Bool)

(assert (=> b!4675326 (=> (not res!1969003) (not e!2917263))))

(declare-fun dynLambda!21663 (Int tuple2!53412) Bool)

(assert (=> b!4675326 (= res!1969003 (dynLambda!21663 lambda!203435 (h!58355 (toList!5397 lm!2023))))))

(declare-fun b!4675327 () Bool)

(assert (=> b!4675327 (= e!2917263 (forall!11171 (t!359422 (toList!5397 lm!2023)) lambda!203435))))

(assert (= (and d!1486329 (not res!1969002)) b!4675326))

(assert (= (and b!4675326 res!1969003) b!4675327))

(declare-fun b_lambda!176533 () Bool)

(assert (=> (not b_lambda!176533) (not b!4675326)))

(declare-fun m!5568783 () Bool)

(assert (=> b!4675326 m!5568783))

(assert (=> b!4675327 m!5568725))

(assert (=> start!471844 d!1486329))

(declare-fun d!1486331 () Bool)

(declare-fun isStrictlySorted!600 (List!52284) Bool)

(assert (=> d!1486331 (= (inv!67409 lm!2023) (isStrictlySorted!600 (toList!5397 lm!2023)))))

(declare-fun bs!1079569 () Bool)

(assert (= bs!1079569 d!1486331))

(declare-fun m!5568785 () Bool)

(assert (=> bs!1079569 m!5568785))

(assert (=> start!471844 d!1486331))

(declare-fun d!1486333 () Bool)

(declare-fun hash!3918 (Hashable!6123 K!13535) (_ BitVec 64))

(assert (=> d!1486333 (= (hash!3916 hashF!1323 key!4653) (hash!3918 hashF!1323 key!4653))))

(declare-fun bs!1079570 () Bool)

(assert (= bs!1079570 d!1486333))

(declare-fun m!5568787 () Bool)

(assert (=> bs!1079570 m!5568787))

(assert (=> b!4675295 d!1486333))

(declare-fun b!4675346 () Bool)

(declare-fun e!2917277 () Bool)

(declare-fun e!2917280 () Bool)

(assert (=> b!4675346 (= e!2917277 e!2917280)))

(declare-fun res!1969010 () Bool)

(assert (=> b!4675346 (=> (not res!1969010) (not e!2917280))))

(declare-datatypes ((Option!11955 0))(
  ( (None!11954) (Some!11954 (v!46317 V!13781)) )
))
(declare-fun isDefined!9209 (Option!11955) Bool)

(declare-fun getValueByKey!1703 (List!52283 K!13535) Option!11955)

(assert (=> b!4675346 (= res!1969010 (isDefined!9209 (getValueByKey!1703 (toList!5398 lt!1835300) key!4653)))))

(declare-fun b!4675347 () Bool)

(declare-datatypes ((List!52285 0))(
  ( (Nil!52161) (Cons!52161 (h!58358 K!13535) (t!359425 List!52285)) )
))
(declare-fun e!2917281 () List!52285)

(declare-fun getKeysList!799 (List!52283) List!52285)

(assert (=> b!4675347 (= e!2917281 (getKeysList!799 (toList!5398 lt!1835300)))))

(declare-fun bm!326685 () Bool)

(declare-fun call!326690 () Bool)

(declare-fun contains!15312 (List!52285 K!13535) Bool)

(assert (=> bm!326685 (= call!326690 (contains!15312 e!2917281 key!4653))))

(declare-fun c!800084 () Bool)

(declare-fun c!800085 () Bool)

(assert (=> bm!326685 (= c!800084 c!800085)))

(declare-fun b!4675348 () Bool)

(declare-fun e!2917276 () Bool)

(declare-fun keys!18562 (ListMap!4761) List!52285)

(assert (=> b!4675348 (= e!2917276 (not (contains!15312 (keys!18562 lt!1835300) key!4653)))))

(declare-fun b!4675349 () Bool)

(assert (=> b!4675349 false))

(declare-fun lt!1835338 () Unit!121517)

(declare-fun lt!1835340 () Unit!121517)

(assert (=> b!4675349 (= lt!1835338 lt!1835340)))

(declare-fun containsKey!2889 (List!52283 K!13535) Bool)

(assert (=> b!4675349 (containsKey!2889 (toList!5398 lt!1835300) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!798 (List!52283 K!13535) Unit!121517)

(assert (=> b!4675349 (= lt!1835340 (lemmaInGetKeysListThenContainsKey!798 (toList!5398 lt!1835300) key!4653))))

(declare-fun e!2917278 () Unit!121517)

(declare-fun Unit!121550 () Unit!121517)

(assert (=> b!4675349 (= e!2917278 Unit!121550)))

(declare-fun b!4675351 () Bool)

(declare-fun Unit!121551 () Unit!121517)

(assert (=> b!4675351 (= e!2917278 Unit!121551)))

(declare-fun b!4675352 () Bool)

(assert (=> b!4675352 (= e!2917281 (keys!18562 lt!1835300))))

(declare-fun b!4675350 () Bool)

(declare-fun e!2917279 () Unit!121517)

(assert (=> b!4675350 (= e!2917279 e!2917278)))

(declare-fun c!800086 () Bool)

(assert (=> b!4675350 (= c!800086 call!326690)))

(declare-fun d!1486335 () Bool)

(assert (=> d!1486335 e!2917277))

(declare-fun res!1969011 () Bool)

(assert (=> d!1486335 (=> res!1969011 e!2917277)))

(assert (=> d!1486335 (= res!1969011 e!2917276)))

(declare-fun res!1969012 () Bool)

(assert (=> d!1486335 (=> (not res!1969012) (not e!2917276))))

(declare-fun lt!1835343 () Bool)

(assert (=> d!1486335 (= res!1969012 (not lt!1835343))))

(declare-fun lt!1835344 () Bool)

(assert (=> d!1486335 (= lt!1835343 lt!1835344)))

(declare-fun lt!1835339 () Unit!121517)

(assert (=> d!1486335 (= lt!1835339 e!2917279)))

(assert (=> d!1486335 (= c!800085 lt!1835344)))

(assert (=> d!1486335 (= lt!1835344 (containsKey!2889 (toList!5398 lt!1835300) key!4653))))

(assert (=> d!1486335 (= (contains!15310 lt!1835300 key!4653) lt!1835343)))

(declare-fun b!4675353 () Bool)

(assert (=> b!4675353 (= e!2917280 (contains!15312 (keys!18562 lt!1835300) key!4653))))

(declare-fun b!4675354 () Bool)

(declare-fun lt!1835337 () Unit!121517)

(assert (=> b!4675354 (= e!2917279 lt!1835337)))

(declare-fun lt!1835341 () Unit!121517)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1594 (List!52283 K!13535) Unit!121517)

(assert (=> b!4675354 (= lt!1835341 (lemmaContainsKeyImpliesGetValueByKeyDefined!1594 (toList!5398 lt!1835300) key!4653))))

(assert (=> b!4675354 (isDefined!9209 (getValueByKey!1703 (toList!5398 lt!1835300) key!4653))))

(declare-fun lt!1835342 () Unit!121517)

(assert (=> b!4675354 (= lt!1835342 lt!1835341)))

(declare-fun lemmaInListThenGetKeysListContains!794 (List!52283 K!13535) Unit!121517)

(assert (=> b!4675354 (= lt!1835337 (lemmaInListThenGetKeysListContains!794 (toList!5398 lt!1835300) key!4653))))

(assert (=> b!4675354 call!326690))

(assert (= (and d!1486335 c!800085) b!4675354))

(assert (= (and d!1486335 (not c!800085)) b!4675350))

(assert (= (and b!4675350 c!800086) b!4675349))

(assert (= (and b!4675350 (not c!800086)) b!4675351))

(assert (= (or b!4675354 b!4675350) bm!326685))

(assert (= (and bm!326685 c!800084) b!4675347))

(assert (= (and bm!326685 (not c!800084)) b!4675352))

(assert (= (and d!1486335 res!1969012) b!4675348))

(assert (= (and d!1486335 (not res!1969011)) b!4675346))

(assert (= (and b!4675346 res!1969010) b!4675353))

(declare-fun m!5568789 () Bool)

(assert (=> b!4675347 m!5568789))

(declare-fun m!5568791 () Bool)

(assert (=> b!4675354 m!5568791))

(declare-fun m!5568793 () Bool)

(assert (=> b!4675354 m!5568793))

(assert (=> b!4675354 m!5568793))

(declare-fun m!5568795 () Bool)

(assert (=> b!4675354 m!5568795))

(declare-fun m!5568797 () Bool)

(assert (=> b!4675354 m!5568797))

(declare-fun m!5568799 () Bool)

(assert (=> b!4675353 m!5568799))

(assert (=> b!4675353 m!5568799))

(declare-fun m!5568801 () Bool)

(assert (=> b!4675353 m!5568801))

(declare-fun m!5568803 () Bool)

(assert (=> d!1486335 m!5568803))

(assert (=> b!4675349 m!5568803))

(declare-fun m!5568805 () Bool)

(assert (=> b!4675349 m!5568805))

(assert (=> b!4675346 m!5568793))

(assert (=> b!4675346 m!5568793))

(assert (=> b!4675346 m!5568795))

(assert (=> b!4675348 m!5568799))

(assert (=> b!4675348 m!5568799))

(assert (=> b!4675348 m!5568801))

(assert (=> b!4675352 m!5568799))

(declare-fun m!5568807 () Bool)

(assert (=> bm!326685 m!5568807))

(assert (=> b!4675292 d!1486335))

(declare-fun bs!1079571 () Bool)

(declare-fun d!1486337 () Bool)

(assert (= bs!1079571 (and d!1486337 start!471844)))

(declare-fun lambda!203447 () Int)

(assert (=> bs!1079571 (= lambda!203447 lambda!203435)))

(declare-fun bs!1079572 () Bool)

(assert (= bs!1079572 (and d!1486337 d!1486325)))

(assert (=> bs!1079572 (not (= lambda!203447 lambda!203438))))

(declare-fun lt!1835363 () ListMap!4761)

(declare-fun invariantList!1360 (List!52283) Bool)

(assert (=> d!1486337 (invariantList!1360 (toList!5398 lt!1835363))))

(declare-fun e!2917286 () ListMap!4761)

(assert (=> d!1486337 (= lt!1835363 e!2917286)))

(declare-fun c!800091 () Bool)

(assert (=> d!1486337 (= c!800091 ((_ is Cons!52160) (toList!5397 lm!2023)))))

(assert (=> d!1486337 (forall!11171 (toList!5397 lm!2023) lambda!203447)))

(assert (=> d!1486337 (= (extractMap!1780 (toList!5397 lm!2023)) lt!1835363)))

(declare-fun b!4675363 () Bool)

(assert (=> b!4675363 (= e!2917286 (addToMapMapFromBucket!1186 (_2!30000 (h!58355 (toList!5397 lm!2023))) (extractMap!1780 (t!359422 (toList!5397 lm!2023)))))))

(declare-fun b!4675364 () Bool)

(assert (=> b!4675364 (= e!2917286 (ListMap!4762 Nil!52159))))

(assert (= (and d!1486337 c!800091) b!4675363))

(assert (= (and d!1486337 (not c!800091)) b!4675364))

(declare-fun m!5568809 () Bool)

(assert (=> d!1486337 m!5568809))

(declare-fun m!5568811 () Bool)

(assert (=> d!1486337 m!5568811))

(assert (=> b!4675363 m!5568737))

(assert (=> b!4675363 m!5568737))

(declare-fun m!5568813 () Bool)

(assert (=> b!4675363 m!5568813))

(assert (=> b!4675292 d!1486337))

(declare-fun d!1486339 () Bool)

(assert (=> d!1486339 true))

(assert (=> d!1486339 true))

(declare-fun lambda!203460 () Int)

(declare-fun forall!11173 (List!52283 Int) Bool)

(assert (=> d!1486339 (= (allKeysSameHash!1580 oldBucket!34 hash!405 hashF!1323) (forall!11173 oldBucket!34 lambda!203460))))

(declare-fun bs!1079573 () Bool)

(assert (= bs!1079573 d!1486339))

(declare-fun m!5568815 () Bool)

(assert (=> bs!1079573 m!5568815))

(assert (=> b!4675301 d!1486339))

(declare-fun bs!1079689 () Bool)

(declare-fun b!4675480 () Bool)

(assert (= bs!1079689 (and b!4675480 d!1486339)))

(declare-fun lambda!203530 () Int)

(assert (=> bs!1079689 (not (= lambda!203530 lambda!203460))))

(assert (=> b!4675480 true))

(declare-fun bs!1079690 () Bool)

(declare-fun b!4675479 () Bool)

(assert (= bs!1079690 (and b!4675479 d!1486339)))

(declare-fun lambda!203531 () Int)

(assert (=> bs!1079690 (not (= lambda!203531 lambda!203460))))

(declare-fun bs!1079691 () Bool)

(assert (= bs!1079691 (and b!4675479 b!4675480)))

(assert (=> bs!1079691 (= lambda!203531 lambda!203530)))

(assert (=> b!4675479 true))

(declare-fun lambda!203532 () Int)

(assert (=> bs!1079690 (not (= lambda!203532 lambda!203460))))

(declare-fun lt!1835558 () ListMap!4761)

(assert (=> bs!1079691 (= (= lt!1835558 lt!1835299) (= lambda!203532 lambda!203530))))

(assert (=> b!4675479 (= (= lt!1835558 lt!1835299) (= lambda!203532 lambda!203531))))

(assert (=> b!4675479 true))

(declare-fun bs!1079692 () Bool)

(declare-fun d!1486341 () Bool)

(assert (= bs!1079692 (and d!1486341 d!1486339)))

(declare-fun lambda!203533 () Int)

(assert (=> bs!1079692 (not (= lambda!203533 lambda!203460))))

(declare-fun bs!1079693 () Bool)

(assert (= bs!1079693 (and d!1486341 b!4675480)))

(declare-fun lt!1835561 () ListMap!4761)

(assert (=> bs!1079693 (= (= lt!1835561 lt!1835299) (= lambda!203533 lambda!203530))))

(declare-fun bs!1079694 () Bool)

(assert (= bs!1079694 (and d!1486341 b!4675479)))

(assert (=> bs!1079694 (= (= lt!1835561 lt!1835299) (= lambda!203533 lambda!203531))))

(assert (=> bs!1079694 (= (= lt!1835561 lt!1835558) (= lambda!203533 lambda!203532))))

(assert (=> d!1486341 true))

(declare-fun e!2917357 () ListMap!4761)

(assert (=> b!4675479 (= e!2917357 lt!1835558)))

(declare-fun lt!1835548 () ListMap!4761)

(assert (=> b!4675479 (= lt!1835548 (+!2056 lt!1835299 (h!58354 newBucket!218)))))

(assert (=> b!4675479 (= lt!1835558 (addToMapMapFromBucket!1186 (t!359421 newBucket!218) (+!2056 lt!1835299 (h!58354 newBucket!218))))))

(declare-fun lt!1835556 () Unit!121517)

(declare-fun call!326719 () Unit!121517)

(assert (=> b!4675479 (= lt!1835556 call!326719)))

(declare-fun call!326720 () Bool)

(assert (=> b!4675479 call!326720))

(declare-fun lt!1835564 () Unit!121517)

(assert (=> b!4675479 (= lt!1835564 lt!1835556)))

(assert (=> b!4675479 (forall!11173 (toList!5398 lt!1835548) lambda!203532)))

(declare-fun lt!1835552 () Unit!121517)

(declare-fun Unit!121556 () Unit!121517)

(assert (=> b!4675479 (= lt!1835552 Unit!121556)))

(assert (=> b!4675479 (forall!11173 (t!359421 newBucket!218) lambda!203532)))

(declare-fun lt!1835562 () Unit!121517)

(declare-fun Unit!121557 () Unit!121517)

(assert (=> b!4675479 (= lt!1835562 Unit!121557)))

(declare-fun lt!1835549 () Unit!121517)

(declare-fun Unit!121558 () Unit!121517)

(assert (=> b!4675479 (= lt!1835549 Unit!121558)))

(declare-fun lt!1835560 () Unit!121517)

(declare-fun forallContained!3332 (List!52283 Int tuple2!53410) Unit!121517)

(assert (=> b!4675479 (= lt!1835560 (forallContained!3332 (toList!5398 lt!1835548) lambda!203532 (h!58354 newBucket!218)))))

(assert (=> b!4675479 (contains!15310 lt!1835548 (_1!29999 (h!58354 newBucket!218)))))

(declare-fun lt!1835547 () Unit!121517)

(declare-fun Unit!121559 () Unit!121517)

(assert (=> b!4675479 (= lt!1835547 Unit!121559)))

(assert (=> b!4675479 (contains!15310 lt!1835558 (_1!29999 (h!58354 newBucket!218)))))

(declare-fun lt!1835566 () Unit!121517)

(declare-fun Unit!121560 () Unit!121517)

(assert (=> b!4675479 (= lt!1835566 Unit!121560)))

(assert (=> b!4675479 (forall!11173 newBucket!218 lambda!203532)))

(declare-fun lt!1835546 () Unit!121517)

(declare-fun Unit!121561 () Unit!121517)

(assert (=> b!4675479 (= lt!1835546 Unit!121561)))

(assert (=> b!4675479 (forall!11173 (toList!5398 lt!1835548) lambda!203532)))

(declare-fun lt!1835563 () Unit!121517)

(declare-fun Unit!121562 () Unit!121517)

(assert (=> b!4675479 (= lt!1835563 Unit!121562)))

(declare-fun lt!1835565 () Unit!121517)

(declare-fun Unit!121563 () Unit!121517)

(assert (=> b!4675479 (= lt!1835565 Unit!121563)))

(declare-fun lt!1835554 () Unit!121517)

(declare-fun addForallContainsKeyThenBeforeAdding!647 (ListMap!4761 ListMap!4761 K!13535 V!13781) Unit!121517)

(assert (=> b!4675479 (= lt!1835554 (addForallContainsKeyThenBeforeAdding!647 lt!1835299 lt!1835558 (_1!29999 (h!58354 newBucket!218)) (_2!29999 (h!58354 newBucket!218))))))

(assert (=> b!4675479 (forall!11173 (toList!5398 lt!1835299) lambda!203532)))

(declare-fun lt!1835559 () Unit!121517)

(assert (=> b!4675479 (= lt!1835559 lt!1835554)))

(assert (=> b!4675479 (forall!11173 (toList!5398 lt!1835299) lambda!203532)))

(declare-fun lt!1835551 () Unit!121517)

(declare-fun Unit!121564 () Unit!121517)

(assert (=> b!4675479 (= lt!1835551 Unit!121564)))

(declare-fun res!1969064 () Bool)

(declare-fun call!326718 () Bool)

(assert (=> b!4675479 (= res!1969064 call!326718)))

(declare-fun e!2917356 () Bool)

(assert (=> b!4675479 (=> (not res!1969064) (not e!2917356))))

(assert (=> b!4675479 e!2917356))

(declare-fun lt!1835553 () Unit!121517)

(declare-fun Unit!121565 () Unit!121517)

(assert (=> b!4675479 (= lt!1835553 Unit!121565)))

(assert (=> b!4675480 (= e!2917357 lt!1835299)))

(declare-fun lt!1835555 () Unit!121517)

(assert (=> b!4675480 (= lt!1835555 call!326719)))

(assert (=> b!4675480 call!326720))

(declare-fun lt!1835557 () Unit!121517)

(assert (=> b!4675480 (= lt!1835557 lt!1835555)))

(assert (=> b!4675480 call!326718))

(declare-fun lt!1835550 () Unit!121517)

(declare-fun Unit!121566 () Unit!121517)

(assert (=> b!4675480 (= lt!1835550 Unit!121566)))

(declare-fun b!4675481 () Bool)

(assert (=> b!4675481 (= e!2917356 (forall!11173 (toList!5398 lt!1835299) lambda!203532))))

(declare-fun bm!326714 () Bool)

(declare-fun c!800113 () Bool)

(assert (=> bm!326714 (= call!326718 (forall!11173 (ite c!800113 (toList!5398 lt!1835299) newBucket!218) (ite c!800113 lambda!203530 lambda!203532)))))

(declare-fun bm!326715 () Bool)

(assert (=> bm!326715 (= call!326720 (forall!11173 (toList!5398 lt!1835299) (ite c!800113 lambda!203530 lambda!203531)))))

(declare-fun bm!326713 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!648 (ListMap!4761) Unit!121517)

(assert (=> bm!326713 (= call!326719 (lemmaContainsAllItsOwnKeys!648 lt!1835299))))

(declare-fun e!2917358 () Bool)

(assert (=> d!1486341 e!2917358))

(declare-fun res!1969063 () Bool)

(assert (=> d!1486341 (=> (not res!1969063) (not e!2917358))))

(assert (=> d!1486341 (= res!1969063 (forall!11173 newBucket!218 lambda!203533))))

(assert (=> d!1486341 (= lt!1835561 e!2917357)))

(assert (=> d!1486341 (= c!800113 ((_ is Nil!52159) newBucket!218))))

(assert (=> d!1486341 (noDuplicateKeys!1754 newBucket!218)))

(assert (=> d!1486341 (= (addToMapMapFromBucket!1186 newBucket!218 lt!1835299) lt!1835561)))

(declare-fun b!4675482 () Bool)

(declare-fun res!1969062 () Bool)

(assert (=> b!4675482 (=> (not res!1969062) (not e!2917358))))

(assert (=> b!4675482 (= res!1969062 (forall!11173 (toList!5398 lt!1835299) lambda!203533))))

(declare-fun b!4675483 () Bool)

(assert (=> b!4675483 (= e!2917358 (invariantList!1360 (toList!5398 lt!1835561)))))

(assert (= (and d!1486341 c!800113) b!4675480))

(assert (= (and d!1486341 (not c!800113)) b!4675479))

(assert (= (and b!4675479 res!1969064) b!4675481))

(assert (= (or b!4675480 b!4675479) bm!326713))

(assert (= (or b!4675480 b!4675479) bm!326714))

(assert (= (or b!4675480 b!4675479) bm!326715))

(assert (= (and d!1486341 res!1969063) b!4675482))

(assert (= (and b!4675482 res!1969062) b!4675483))

(declare-fun m!5569033 () Bool)

(assert (=> b!4675479 m!5569033))

(declare-fun m!5569035 () Bool)

(assert (=> b!4675479 m!5569035))

(declare-fun m!5569037 () Bool)

(assert (=> b!4675479 m!5569037))

(declare-fun m!5569039 () Bool)

(assert (=> b!4675479 m!5569039))

(assert (=> b!4675479 m!5569037))

(declare-fun m!5569041 () Bool)

(assert (=> b!4675479 m!5569041))

(assert (=> b!4675479 m!5569041))

(declare-fun m!5569043 () Bool)

(assert (=> b!4675479 m!5569043))

(declare-fun m!5569045 () Bool)

(assert (=> b!4675479 m!5569045))

(declare-fun m!5569047 () Bool)

(assert (=> b!4675479 m!5569047))

(declare-fun m!5569049 () Bool)

(assert (=> b!4675479 m!5569049))

(declare-fun m!5569051 () Bool)

(assert (=> b!4675479 m!5569051))

(assert (=> b!4675479 m!5569047))

(declare-fun m!5569053 () Bool)

(assert (=> bm!326713 m!5569053))

(declare-fun m!5569055 () Bool)

(assert (=> d!1486341 m!5569055))

(assert (=> d!1486341 m!5568745))

(declare-fun m!5569057 () Bool)

(assert (=> b!4675483 m!5569057))

(declare-fun m!5569059 () Bool)

(assert (=> b!4675482 m!5569059))

(declare-fun m!5569061 () Bool)

(assert (=> bm!326714 m!5569061))

(declare-fun m!5569063 () Bool)

(assert (=> bm!326715 m!5569063))

(assert (=> b!4675481 m!5569041))

(assert (=> b!4675291 d!1486341))

(declare-fun bs!1079695 () Bool)

(declare-fun b!4675487 () Bool)

(assert (= bs!1079695 (and b!4675487 b!4675479)))

(declare-fun lambda!203534 () Int)

(assert (=> bs!1079695 (= lambda!203534 lambda!203531)))

(declare-fun bs!1079696 () Bool)

(assert (= bs!1079696 (and b!4675487 b!4675480)))

(assert (=> bs!1079696 (= lambda!203534 lambda!203530)))

(declare-fun bs!1079697 () Bool)

(assert (= bs!1079697 (and b!4675487 d!1486339)))

(assert (=> bs!1079697 (not (= lambda!203534 lambda!203460))))

(assert (=> bs!1079695 (= (= lt!1835299 lt!1835558) (= lambda!203534 lambda!203532))))

(declare-fun bs!1079698 () Bool)

(assert (= bs!1079698 (and b!4675487 d!1486341)))

(assert (=> bs!1079698 (= (= lt!1835299 lt!1835561) (= lambda!203534 lambda!203533))))

(assert (=> b!4675487 true))

(declare-fun bs!1079699 () Bool)

(declare-fun b!4675486 () Bool)

(assert (= bs!1079699 (and b!4675486 b!4675479)))

(declare-fun lambda!203535 () Int)

(assert (=> bs!1079699 (= lambda!203535 lambda!203531)))

(declare-fun bs!1079700 () Bool)

(assert (= bs!1079700 (and b!4675486 b!4675480)))

(assert (=> bs!1079700 (= lambda!203535 lambda!203530)))

(declare-fun bs!1079701 () Bool)

(assert (= bs!1079701 (and b!4675486 d!1486339)))

(assert (=> bs!1079701 (not (= lambda!203535 lambda!203460))))

(assert (=> bs!1079699 (= (= lt!1835299 lt!1835558) (= lambda!203535 lambda!203532))))

(declare-fun bs!1079702 () Bool)

(assert (= bs!1079702 (and b!4675486 b!4675487)))

(assert (=> bs!1079702 (= lambda!203535 lambda!203534)))

(declare-fun bs!1079703 () Bool)

(assert (= bs!1079703 (and b!4675486 d!1486341)))

(assert (=> bs!1079703 (= (= lt!1835299 lt!1835561) (= lambda!203535 lambda!203533))))

(assert (=> b!4675486 true))

(declare-fun lambda!203536 () Int)

(declare-fun lt!1835579 () ListMap!4761)

(assert (=> b!4675486 (= (= lt!1835579 lt!1835299) (= lambda!203536 lambda!203535))))

(assert (=> bs!1079699 (= (= lt!1835579 lt!1835299) (= lambda!203536 lambda!203531))))

(assert (=> bs!1079700 (= (= lt!1835579 lt!1835299) (= lambda!203536 lambda!203530))))

(assert (=> bs!1079701 (not (= lambda!203536 lambda!203460))))

(assert (=> bs!1079699 (= (= lt!1835579 lt!1835558) (= lambda!203536 lambda!203532))))

(assert (=> bs!1079702 (= (= lt!1835579 lt!1835299) (= lambda!203536 lambda!203534))))

(assert (=> bs!1079703 (= (= lt!1835579 lt!1835561) (= lambda!203536 lambda!203533))))

(assert (=> b!4675486 true))

(declare-fun bs!1079704 () Bool)

(declare-fun d!1486391 () Bool)

(assert (= bs!1079704 (and d!1486391 b!4675486)))

(declare-fun lambda!203537 () Int)

(declare-fun lt!1835582 () ListMap!4761)

(assert (=> bs!1079704 (= (= lt!1835582 lt!1835299) (= lambda!203537 lambda!203535))))

(declare-fun bs!1079705 () Bool)

(assert (= bs!1079705 (and d!1486391 b!4675479)))

(assert (=> bs!1079705 (= (= lt!1835582 lt!1835299) (= lambda!203537 lambda!203531))))

(assert (=> bs!1079704 (= (= lt!1835582 lt!1835579) (= lambda!203537 lambda!203536))))

(declare-fun bs!1079706 () Bool)

(assert (= bs!1079706 (and d!1486391 b!4675480)))

(assert (=> bs!1079706 (= (= lt!1835582 lt!1835299) (= lambda!203537 lambda!203530))))

(declare-fun bs!1079707 () Bool)

(assert (= bs!1079707 (and d!1486391 d!1486339)))

(assert (=> bs!1079707 (not (= lambda!203537 lambda!203460))))

(assert (=> bs!1079705 (= (= lt!1835582 lt!1835558) (= lambda!203537 lambda!203532))))

(declare-fun bs!1079708 () Bool)

(assert (= bs!1079708 (and d!1486391 b!4675487)))

(assert (=> bs!1079708 (= (= lt!1835582 lt!1835299) (= lambda!203537 lambda!203534))))

(declare-fun bs!1079709 () Bool)

(assert (= bs!1079709 (and d!1486391 d!1486341)))

(assert (=> bs!1079709 (= (= lt!1835582 lt!1835561) (= lambda!203537 lambda!203533))))

(assert (=> d!1486391 true))

(declare-fun e!2917360 () ListMap!4761)

(assert (=> b!4675486 (= e!2917360 lt!1835579)))

(declare-fun lt!1835569 () ListMap!4761)

(assert (=> b!4675486 (= lt!1835569 (+!2056 lt!1835299 (h!58354 lt!1835298)))))

(assert (=> b!4675486 (= lt!1835579 (addToMapMapFromBucket!1186 (t!359421 lt!1835298) (+!2056 lt!1835299 (h!58354 lt!1835298))))))

(declare-fun lt!1835577 () Unit!121517)

(declare-fun call!326722 () Unit!121517)

(assert (=> b!4675486 (= lt!1835577 call!326722)))

(declare-fun call!326723 () Bool)

(assert (=> b!4675486 call!326723))

(declare-fun lt!1835585 () Unit!121517)

(assert (=> b!4675486 (= lt!1835585 lt!1835577)))

(assert (=> b!4675486 (forall!11173 (toList!5398 lt!1835569) lambda!203536)))

(declare-fun lt!1835573 () Unit!121517)

(declare-fun Unit!121567 () Unit!121517)

(assert (=> b!4675486 (= lt!1835573 Unit!121567)))

(assert (=> b!4675486 (forall!11173 (t!359421 lt!1835298) lambda!203536)))

(declare-fun lt!1835583 () Unit!121517)

(declare-fun Unit!121568 () Unit!121517)

(assert (=> b!4675486 (= lt!1835583 Unit!121568)))

(declare-fun lt!1835570 () Unit!121517)

(declare-fun Unit!121569 () Unit!121517)

(assert (=> b!4675486 (= lt!1835570 Unit!121569)))

(declare-fun lt!1835581 () Unit!121517)

(assert (=> b!4675486 (= lt!1835581 (forallContained!3332 (toList!5398 lt!1835569) lambda!203536 (h!58354 lt!1835298)))))

(assert (=> b!4675486 (contains!15310 lt!1835569 (_1!29999 (h!58354 lt!1835298)))))

(declare-fun lt!1835568 () Unit!121517)

(declare-fun Unit!121570 () Unit!121517)

(assert (=> b!4675486 (= lt!1835568 Unit!121570)))

(assert (=> b!4675486 (contains!15310 lt!1835579 (_1!29999 (h!58354 lt!1835298)))))

(declare-fun lt!1835587 () Unit!121517)

(declare-fun Unit!121571 () Unit!121517)

(assert (=> b!4675486 (= lt!1835587 Unit!121571)))

(assert (=> b!4675486 (forall!11173 lt!1835298 lambda!203536)))

(declare-fun lt!1835567 () Unit!121517)

(declare-fun Unit!121572 () Unit!121517)

(assert (=> b!4675486 (= lt!1835567 Unit!121572)))

(assert (=> b!4675486 (forall!11173 (toList!5398 lt!1835569) lambda!203536)))

(declare-fun lt!1835584 () Unit!121517)

(declare-fun Unit!121573 () Unit!121517)

(assert (=> b!4675486 (= lt!1835584 Unit!121573)))

(declare-fun lt!1835586 () Unit!121517)

(declare-fun Unit!121574 () Unit!121517)

(assert (=> b!4675486 (= lt!1835586 Unit!121574)))

(declare-fun lt!1835575 () Unit!121517)

(assert (=> b!4675486 (= lt!1835575 (addForallContainsKeyThenBeforeAdding!647 lt!1835299 lt!1835579 (_1!29999 (h!58354 lt!1835298)) (_2!29999 (h!58354 lt!1835298))))))

(assert (=> b!4675486 (forall!11173 (toList!5398 lt!1835299) lambda!203536)))

(declare-fun lt!1835580 () Unit!121517)

(assert (=> b!4675486 (= lt!1835580 lt!1835575)))

(assert (=> b!4675486 (forall!11173 (toList!5398 lt!1835299) lambda!203536)))

(declare-fun lt!1835572 () Unit!121517)

(declare-fun Unit!121575 () Unit!121517)

(assert (=> b!4675486 (= lt!1835572 Unit!121575)))

(declare-fun res!1969067 () Bool)

(declare-fun call!326721 () Bool)

(assert (=> b!4675486 (= res!1969067 call!326721)))

(declare-fun e!2917359 () Bool)

(assert (=> b!4675486 (=> (not res!1969067) (not e!2917359))))

(assert (=> b!4675486 e!2917359))

(declare-fun lt!1835574 () Unit!121517)

(declare-fun Unit!121576 () Unit!121517)

(assert (=> b!4675486 (= lt!1835574 Unit!121576)))

(assert (=> b!4675487 (= e!2917360 lt!1835299)))

(declare-fun lt!1835576 () Unit!121517)

(assert (=> b!4675487 (= lt!1835576 call!326722)))

(assert (=> b!4675487 call!326723))

(declare-fun lt!1835578 () Unit!121517)

(assert (=> b!4675487 (= lt!1835578 lt!1835576)))

(assert (=> b!4675487 call!326721))

(declare-fun lt!1835571 () Unit!121517)

(declare-fun Unit!121577 () Unit!121517)

(assert (=> b!4675487 (= lt!1835571 Unit!121577)))

(declare-fun b!4675488 () Bool)

(assert (=> b!4675488 (= e!2917359 (forall!11173 (toList!5398 lt!1835299) lambda!203536))))

(declare-fun bm!326717 () Bool)

(declare-fun c!800114 () Bool)

(assert (=> bm!326717 (= call!326721 (forall!11173 (ite c!800114 (toList!5398 lt!1835299) lt!1835298) (ite c!800114 lambda!203534 lambda!203536)))))

(declare-fun bm!326718 () Bool)

(assert (=> bm!326718 (= call!326723 (forall!11173 (toList!5398 lt!1835299) (ite c!800114 lambda!203534 lambda!203535)))))

(declare-fun bm!326716 () Bool)

(assert (=> bm!326716 (= call!326722 (lemmaContainsAllItsOwnKeys!648 lt!1835299))))

(declare-fun e!2917361 () Bool)

(assert (=> d!1486391 e!2917361))

(declare-fun res!1969066 () Bool)

(assert (=> d!1486391 (=> (not res!1969066) (not e!2917361))))

(assert (=> d!1486391 (= res!1969066 (forall!11173 lt!1835298 lambda!203537))))

(assert (=> d!1486391 (= lt!1835582 e!2917360)))

(assert (=> d!1486391 (= c!800114 ((_ is Nil!52159) lt!1835298))))

(assert (=> d!1486391 (noDuplicateKeys!1754 lt!1835298)))

(assert (=> d!1486391 (= (addToMapMapFromBucket!1186 lt!1835298 lt!1835299) lt!1835582)))

(declare-fun b!4675489 () Bool)

(declare-fun res!1969065 () Bool)

(assert (=> b!4675489 (=> (not res!1969065) (not e!2917361))))

(assert (=> b!4675489 (= res!1969065 (forall!11173 (toList!5398 lt!1835299) lambda!203537))))

(declare-fun b!4675490 () Bool)

(assert (=> b!4675490 (= e!2917361 (invariantList!1360 (toList!5398 lt!1835582)))))

(assert (= (and d!1486391 c!800114) b!4675487))

(assert (= (and d!1486391 (not c!800114)) b!4675486))

(assert (= (and b!4675486 res!1969067) b!4675488))

(assert (= (or b!4675487 b!4675486) bm!326716))

(assert (= (or b!4675487 b!4675486) bm!326717))

(assert (= (or b!4675487 b!4675486) bm!326718))

(assert (= (and d!1486391 res!1969066) b!4675489))

(assert (= (and b!4675489 res!1969065) b!4675490))

(declare-fun m!5569065 () Bool)

(assert (=> b!4675486 m!5569065))

(declare-fun m!5569067 () Bool)

(assert (=> b!4675486 m!5569067))

(declare-fun m!5569069 () Bool)

(assert (=> b!4675486 m!5569069))

(declare-fun m!5569071 () Bool)

(assert (=> b!4675486 m!5569071))

(assert (=> b!4675486 m!5569069))

(declare-fun m!5569073 () Bool)

(assert (=> b!4675486 m!5569073))

(assert (=> b!4675486 m!5569073))

(declare-fun m!5569075 () Bool)

(assert (=> b!4675486 m!5569075))

(declare-fun m!5569077 () Bool)

(assert (=> b!4675486 m!5569077))

(declare-fun m!5569079 () Bool)

(assert (=> b!4675486 m!5569079))

(declare-fun m!5569081 () Bool)

(assert (=> b!4675486 m!5569081))

(declare-fun m!5569083 () Bool)

(assert (=> b!4675486 m!5569083))

(assert (=> b!4675486 m!5569079))

(assert (=> bm!326716 m!5569053))

(declare-fun m!5569085 () Bool)

(assert (=> d!1486391 m!5569085))

(declare-fun m!5569087 () Bool)

(assert (=> d!1486391 m!5569087))

(declare-fun m!5569089 () Bool)

(assert (=> b!4675490 m!5569089))

(declare-fun m!5569091 () Bool)

(assert (=> b!4675489 m!5569091))

(declare-fun m!5569093 () Bool)

(assert (=> bm!326717 m!5569093))

(declare-fun m!5569095 () Bool)

(assert (=> bm!326718 m!5569095))

(assert (=> b!4675488 m!5569073))

(assert (=> b!4675291 d!1486391))

(declare-fun d!1486393 () Bool)

(declare-fun res!1969072 () Bool)

(declare-fun e!2917366 () Bool)

(assert (=> d!1486393 (=> res!1969072 e!2917366)))

(assert (=> d!1486393 (= res!1969072 (not ((_ is Cons!52159) newBucket!218)))))

(assert (=> d!1486393 (= (noDuplicateKeys!1754 newBucket!218) e!2917366)))

(declare-fun b!4675495 () Bool)

(declare-fun e!2917367 () Bool)

(assert (=> b!4675495 (= e!2917366 e!2917367)))

(declare-fun res!1969073 () Bool)

(assert (=> b!4675495 (=> (not res!1969073) (not e!2917367))))

(declare-fun containsKey!2891 (List!52283 K!13535) Bool)

(assert (=> b!4675495 (= res!1969073 (not (containsKey!2891 (t!359421 newBucket!218) (_1!29999 (h!58354 newBucket!218)))))))

(declare-fun b!4675496 () Bool)

(assert (=> b!4675496 (= e!2917367 (noDuplicateKeys!1754 (t!359421 newBucket!218)))))

(assert (= (and d!1486393 (not res!1969072)) b!4675495))

(assert (= (and b!4675495 res!1969073) b!4675496))

(declare-fun m!5569097 () Bool)

(assert (=> b!4675495 m!5569097))

(declare-fun m!5569099 () Bool)

(assert (=> b!4675496 m!5569099))

(assert (=> b!4675289 d!1486393))

(declare-fun d!1486395 () Bool)

(declare-fun res!1969074 () Bool)

(declare-fun e!2917368 () Bool)

(assert (=> d!1486395 (=> res!1969074 e!2917368)))

(assert (=> d!1486395 (= res!1969074 (not ((_ is Cons!52159) oldBucket!34)))))

(assert (=> d!1486395 (= (noDuplicateKeys!1754 oldBucket!34) e!2917368)))

(declare-fun b!4675497 () Bool)

(declare-fun e!2917369 () Bool)

(assert (=> b!4675497 (= e!2917368 e!2917369)))

(declare-fun res!1969075 () Bool)

(assert (=> b!4675497 (=> (not res!1969075) (not e!2917369))))

(assert (=> b!4675497 (= res!1969075 (not (containsKey!2891 (t!359421 oldBucket!34) (_1!29999 (h!58354 oldBucket!34)))))))

(declare-fun b!4675498 () Bool)

(assert (=> b!4675498 (= e!2917369 (noDuplicateKeys!1754 (t!359421 oldBucket!34)))))

(assert (= (and d!1486395 (not res!1969074)) b!4675497))

(assert (= (and b!4675497 res!1969075) b!4675498))

(declare-fun m!5569101 () Bool)

(assert (=> b!4675497 m!5569101))

(declare-fun m!5569103 () Bool)

(assert (=> b!4675498 m!5569103))

(assert (=> b!4675290 d!1486395))

(declare-fun bs!1079710 () Bool)

(declare-fun d!1486397 () Bool)

(assert (= bs!1079710 (and d!1486397 b!4675486)))

(declare-fun lambda!203538 () Int)

(assert (=> bs!1079710 (not (= lambda!203538 lambda!203535))))

(declare-fun bs!1079711 () Bool)

(assert (= bs!1079711 (and d!1486397 b!4675479)))

(assert (=> bs!1079711 (not (= lambda!203538 lambda!203531))))

(assert (=> bs!1079710 (not (= lambda!203538 lambda!203536))))

(declare-fun bs!1079712 () Bool)

(assert (= bs!1079712 (and d!1486397 b!4675480)))

(assert (=> bs!1079712 (not (= lambda!203538 lambda!203530))))

(declare-fun bs!1079713 () Bool)

(assert (= bs!1079713 (and d!1486397 d!1486339)))

(assert (=> bs!1079713 (= lambda!203538 lambda!203460)))

(declare-fun bs!1079714 () Bool)

(assert (= bs!1079714 (and d!1486397 d!1486391)))

(assert (=> bs!1079714 (not (= lambda!203538 lambda!203537))))

(assert (=> bs!1079711 (not (= lambda!203538 lambda!203532))))

(declare-fun bs!1079715 () Bool)

(assert (= bs!1079715 (and d!1486397 b!4675487)))

(assert (=> bs!1079715 (not (= lambda!203538 lambda!203534))))

(declare-fun bs!1079716 () Bool)

(assert (= bs!1079716 (and d!1486397 d!1486341)))

(assert (=> bs!1079716 (not (= lambda!203538 lambda!203533))))

(assert (=> d!1486397 true))

(assert (=> d!1486397 true))

(assert (=> d!1486397 (= (allKeysSameHash!1580 newBucket!218 hash!405 hashF!1323) (forall!11173 newBucket!218 lambda!203538))))

(declare-fun bs!1079717 () Bool)

(assert (= bs!1079717 d!1486397))

(declare-fun m!5569105 () Bool)

(assert (=> bs!1079717 m!5569105))

(assert (=> b!4675288 d!1486397))

(declare-fun bs!1079718 () Bool)

(declare-fun d!1486399 () Bool)

(assert (= bs!1079718 (and d!1486399 start!471844)))

(declare-fun lambda!203539 () Int)

(assert (=> bs!1079718 (= lambda!203539 lambda!203435)))

(declare-fun bs!1079719 () Bool)

(assert (= bs!1079719 (and d!1486399 d!1486325)))

(assert (=> bs!1079719 (not (= lambda!203539 lambda!203438))))

(declare-fun bs!1079720 () Bool)

(assert (= bs!1079720 (and d!1486399 d!1486337)))

(assert (=> bs!1079720 (= lambda!203539 lambda!203447)))

(declare-fun lt!1835588 () ListMap!4761)

(assert (=> d!1486399 (invariantList!1360 (toList!5398 lt!1835588))))

(declare-fun e!2917370 () ListMap!4761)

(assert (=> d!1486399 (= lt!1835588 e!2917370)))

(declare-fun c!800115 () Bool)

(assert (=> d!1486399 (= c!800115 ((_ is Cons!52160) (Cons!52160 (tuple2!53413 hash!405 lt!1835298) (t!359422 (toList!5397 lm!2023)))))))

(assert (=> d!1486399 (forall!11171 (Cons!52160 (tuple2!53413 hash!405 lt!1835298) (t!359422 (toList!5397 lm!2023))) lambda!203539)))

(assert (=> d!1486399 (= (extractMap!1780 (Cons!52160 (tuple2!53413 hash!405 lt!1835298) (t!359422 (toList!5397 lm!2023)))) lt!1835588)))

(declare-fun b!4675499 () Bool)

(assert (=> b!4675499 (= e!2917370 (addToMapMapFromBucket!1186 (_2!30000 (h!58355 (Cons!52160 (tuple2!53413 hash!405 lt!1835298) (t!359422 (toList!5397 lm!2023))))) (extractMap!1780 (t!359422 (Cons!52160 (tuple2!53413 hash!405 lt!1835298) (t!359422 (toList!5397 lm!2023)))))))))

(declare-fun b!4675500 () Bool)

(assert (=> b!4675500 (= e!2917370 (ListMap!4762 Nil!52159))))

(assert (= (and d!1486399 c!800115) b!4675499))

(assert (= (and d!1486399 (not c!800115)) b!4675500))

(declare-fun m!5569107 () Bool)

(assert (=> d!1486399 m!5569107))

(declare-fun m!5569109 () Bool)

(assert (=> d!1486399 m!5569109))

(declare-fun m!5569111 () Bool)

(assert (=> b!4675499 m!5569111))

(assert (=> b!4675499 m!5569111))

(declare-fun m!5569113 () Bool)

(assert (=> b!4675499 m!5569113))

(assert (=> b!4675299 d!1486399))

(declare-fun bs!1079721 () Bool)

(declare-fun d!1486401 () Bool)

(assert (= bs!1079721 (and d!1486401 start!471844)))

(declare-fun lambda!203540 () Int)

(assert (=> bs!1079721 (= lambda!203540 lambda!203435)))

(declare-fun bs!1079722 () Bool)

(assert (= bs!1079722 (and d!1486401 d!1486325)))

(assert (=> bs!1079722 (not (= lambda!203540 lambda!203438))))

(declare-fun bs!1079723 () Bool)

(assert (= bs!1079723 (and d!1486401 d!1486337)))

(assert (=> bs!1079723 (= lambda!203540 lambda!203447)))

(declare-fun bs!1079724 () Bool)

(assert (= bs!1079724 (and d!1486401 d!1486399)))

(assert (=> bs!1079724 (= lambda!203540 lambda!203539)))

(declare-fun lt!1835589 () ListMap!4761)

(assert (=> d!1486401 (invariantList!1360 (toList!5398 lt!1835589))))

(declare-fun e!2917371 () ListMap!4761)

(assert (=> d!1486401 (= lt!1835589 e!2917371)))

(declare-fun c!800116 () Bool)

(assert (=> d!1486401 (= c!800116 ((_ is Cons!52160) (Cons!52160 (tuple2!53413 hash!405 newBucket!218) (t!359422 (toList!5397 lm!2023)))))))

(assert (=> d!1486401 (forall!11171 (Cons!52160 (tuple2!53413 hash!405 newBucket!218) (t!359422 (toList!5397 lm!2023))) lambda!203540)))

(assert (=> d!1486401 (= (extractMap!1780 (Cons!52160 (tuple2!53413 hash!405 newBucket!218) (t!359422 (toList!5397 lm!2023)))) lt!1835589)))

(declare-fun b!4675501 () Bool)

(assert (=> b!4675501 (= e!2917371 (addToMapMapFromBucket!1186 (_2!30000 (h!58355 (Cons!52160 (tuple2!53413 hash!405 newBucket!218) (t!359422 (toList!5397 lm!2023))))) (extractMap!1780 (t!359422 (Cons!52160 (tuple2!53413 hash!405 newBucket!218) (t!359422 (toList!5397 lm!2023)))))))))

(declare-fun b!4675502 () Bool)

(assert (=> b!4675502 (= e!2917371 (ListMap!4762 Nil!52159))))

(assert (= (and d!1486401 c!800116) b!4675501))

(assert (= (and d!1486401 (not c!800116)) b!4675502))

(declare-fun m!5569115 () Bool)

(assert (=> d!1486401 m!5569115))

(declare-fun m!5569117 () Bool)

(assert (=> d!1486401 m!5569117))

(declare-fun m!5569119 () Bool)

(assert (=> b!4675501 m!5569119))

(assert (=> b!4675501 m!5569119))

(declare-fun m!5569121 () Bool)

(assert (=> b!4675501 m!5569121))

(assert (=> b!4675299 d!1486401))

(declare-fun bs!1079725 () Bool)

(declare-fun b!4675504 () Bool)

(assert (= bs!1079725 (and b!4675504 b!4675486)))

(declare-fun lambda!203541 () Int)

(assert (=> bs!1079725 (= lambda!203541 lambda!203535)))

(declare-fun bs!1079726 () Bool)

(assert (= bs!1079726 (and b!4675504 b!4675479)))

(assert (=> bs!1079726 (= lambda!203541 lambda!203531)))

(assert (=> bs!1079725 (= (= lt!1835299 lt!1835579) (= lambda!203541 lambda!203536))))

(declare-fun bs!1079727 () Bool)

(assert (= bs!1079727 (and b!4675504 b!4675480)))

(assert (=> bs!1079727 (= lambda!203541 lambda!203530)))

(declare-fun bs!1079728 () Bool)

(assert (= bs!1079728 (and b!4675504 d!1486339)))

(assert (=> bs!1079728 (not (= lambda!203541 lambda!203460))))

(declare-fun bs!1079729 () Bool)

(assert (= bs!1079729 (and b!4675504 d!1486391)))

(assert (=> bs!1079729 (= (= lt!1835299 lt!1835582) (= lambda!203541 lambda!203537))))

(assert (=> bs!1079726 (= (= lt!1835299 lt!1835558) (= lambda!203541 lambda!203532))))

(declare-fun bs!1079730 () Bool)

(assert (= bs!1079730 (and b!4675504 d!1486397)))

(assert (=> bs!1079730 (not (= lambda!203541 lambda!203538))))

(declare-fun bs!1079731 () Bool)

(assert (= bs!1079731 (and b!4675504 b!4675487)))

(assert (=> bs!1079731 (= lambda!203541 lambda!203534)))

(declare-fun bs!1079732 () Bool)

(assert (= bs!1079732 (and b!4675504 d!1486341)))

(assert (=> bs!1079732 (= (= lt!1835299 lt!1835561) (= lambda!203541 lambda!203533))))

(assert (=> b!4675504 true))

(declare-fun bs!1079733 () Bool)

(declare-fun b!4675503 () Bool)

(assert (= bs!1079733 (and b!4675503 b!4675486)))

(declare-fun lambda!203542 () Int)

(assert (=> bs!1079733 (= lambda!203542 lambda!203535)))

(declare-fun bs!1079734 () Bool)

(assert (= bs!1079734 (and b!4675503 b!4675479)))

(assert (=> bs!1079734 (= lambda!203542 lambda!203531)))

(assert (=> bs!1079733 (= (= lt!1835299 lt!1835579) (= lambda!203542 lambda!203536))))

(declare-fun bs!1079735 () Bool)

(assert (= bs!1079735 (and b!4675503 b!4675480)))

(assert (=> bs!1079735 (= lambda!203542 lambda!203530)))

(declare-fun bs!1079736 () Bool)

(assert (= bs!1079736 (and b!4675503 d!1486339)))

(assert (=> bs!1079736 (not (= lambda!203542 lambda!203460))))

(declare-fun bs!1079737 () Bool)

(assert (= bs!1079737 (and b!4675503 b!4675504)))

(assert (=> bs!1079737 (= lambda!203542 lambda!203541)))

(declare-fun bs!1079738 () Bool)

(assert (= bs!1079738 (and b!4675503 d!1486391)))

(assert (=> bs!1079738 (= (= lt!1835299 lt!1835582) (= lambda!203542 lambda!203537))))

(assert (=> bs!1079734 (= (= lt!1835299 lt!1835558) (= lambda!203542 lambda!203532))))

(declare-fun bs!1079739 () Bool)

(assert (= bs!1079739 (and b!4675503 d!1486397)))

(assert (=> bs!1079739 (not (= lambda!203542 lambda!203538))))

(declare-fun bs!1079740 () Bool)

(assert (= bs!1079740 (and b!4675503 b!4675487)))

(assert (=> bs!1079740 (= lambda!203542 lambda!203534)))

(declare-fun bs!1079741 () Bool)

(assert (= bs!1079741 (and b!4675503 d!1486341)))

(assert (=> bs!1079741 (= (= lt!1835299 lt!1835561) (= lambda!203542 lambda!203533))))

(assert (=> b!4675503 true))

(declare-fun lambda!203543 () Int)

(declare-fun lt!1835602 () ListMap!4761)

(assert (=> bs!1079733 (= (= lt!1835602 lt!1835299) (= lambda!203543 lambda!203535))))

(assert (=> bs!1079734 (= (= lt!1835602 lt!1835299) (= lambda!203543 lambda!203531))))

(assert (=> bs!1079733 (= (= lt!1835602 lt!1835579) (= lambda!203543 lambda!203536))))

(assert (=> bs!1079736 (not (= lambda!203543 lambda!203460))))

(assert (=> bs!1079737 (= (= lt!1835602 lt!1835299) (= lambda!203543 lambda!203541))))

(assert (=> bs!1079738 (= (= lt!1835602 lt!1835582) (= lambda!203543 lambda!203537))))

(assert (=> bs!1079734 (= (= lt!1835602 lt!1835558) (= lambda!203543 lambda!203532))))

(assert (=> bs!1079739 (not (= lambda!203543 lambda!203538))))

(assert (=> bs!1079740 (= (= lt!1835602 lt!1835299) (= lambda!203543 lambda!203534))))

(assert (=> bs!1079741 (= (= lt!1835602 lt!1835561) (= lambda!203543 lambda!203533))))

(assert (=> bs!1079735 (= (= lt!1835602 lt!1835299) (= lambda!203543 lambda!203530))))

(assert (=> b!4675503 (= (= lt!1835602 lt!1835299) (= lambda!203543 lambda!203542))))

(assert (=> b!4675503 true))

(declare-fun bs!1079742 () Bool)

(declare-fun d!1486403 () Bool)

(assert (= bs!1079742 (and d!1486403 b!4675486)))

(declare-fun lambda!203544 () Int)

(declare-fun lt!1835605 () ListMap!4761)

(assert (=> bs!1079742 (= (= lt!1835605 lt!1835299) (= lambda!203544 lambda!203535))))

(declare-fun bs!1079743 () Bool)

(assert (= bs!1079743 (and d!1486403 b!4675479)))

(assert (=> bs!1079743 (= (= lt!1835605 lt!1835299) (= lambda!203544 lambda!203531))))

(assert (=> bs!1079742 (= (= lt!1835605 lt!1835579) (= lambda!203544 lambda!203536))))

(declare-fun bs!1079744 () Bool)

(assert (= bs!1079744 (and d!1486403 d!1486339)))

(assert (=> bs!1079744 (not (= lambda!203544 lambda!203460))))

(declare-fun bs!1079745 () Bool)

(assert (= bs!1079745 (and d!1486403 b!4675503)))

(assert (=> bs!1079745 (= (= lt!1835605 lt!1835602) (= lambda!203544 lambda!203543))))

(declare-fun bs!1079746 () Bool)

(assert (= bs!1079746 (and d!1486403 b!4675504)))

(assert (=> bs!1079746 (= (= lt!1835605 lt!1835299) (= lambda!203544 lambda!203541))))

(declare-fun bs!1079747 () Bool)

(assert (= bs!1079747 (and d!1486403 d!1486391)))

(assert (=> bs!1079747 (= (= lt!1835605 lt!1835582) (= lambda!203544 lambda!203537))))

(assert (=> bs!1079743 (= (= lt!1835605 lt!1835558) (= lambda!203544 lambda!203532))))

(declare-fun bs!1079748 () Bool)

(assert (= bs!1079748 (and d!1486403 d!1486397)))

(assert (=> bs!1079748 (not (= lambda!203544 lambda!203538))))

(declare-fun bs!1079749 () Bool)

(assert (= bs!1079749 (and d!1486403 b!4675487)))

(assert (=> bs!1079749 (= (= lt!1835605 lt!1835299) (= lambda!203544 lambda!203534))))

(declare-fun bs!1079750 () Bool)

(assert (= bs!1079750 (and d!1486403 d!1486341)))

(assert (=> bs!1079750 (= (= lt!1835605 lt!1835561) (= lambda!203544 lambda!203533))))

(declare-fun bs!1079751 () Bool)

(assert (= bs!1079751 (and d!1486403 b!4675480)))

(assert (=> bs!1079751 (= (= lt!1835605 lt!1835299) (= lambda!203544 lambda!203530))))

(assert (=> bs!1079745 (= (= lt!1835605 lt!1835299) (= lambda!203544 lambda!203542))))

(assert (=> d!1486403 true))

(declare-fun e!2917373 () ListMap!4761)

(assert (=> b!4675503 (= e!2917373 lt!1835602)))

(declare-fun lt!1835592 () ListMap!4761)

(assert (=> b!4675503 (= lt!1835592 (+!2056 lt!1835299 (h!58354 (_2!30000 (h!58355 (toList!5397 lm!2023))))))))

(assert (=> b!4675503 (= lt!1835602 (addToMapMapFromBucket!1186 (t!359421 (_2!30000 (h!58355 (toList!5397 lm!2023)))) (+!2056 lt!1835299 (h!58354 (_2!30000 (h!58355 (toList!5397 lm!2023)))))))))

(declare-fun lt!1835600 () Unit!121517)

(declare-fun call!326725 () Unit!121517)

(assert (=> b!4675503 (= lt!1835600 call!326725)))

(declare-fun call!326726 () Bool)

(assert (=> b!4675503 call!326726))

(declare-fun lt!1835608 () Unit!121517)

(assert (=> b!4675503 (= lt!1835608 lt!1835600)))

(assert (=> b!4675503 (forall!11173 (toList!5398 lt!1835592) lambda!203543)))

(declare-fun lt!1835596 () Unit!121517)

(declare-fun Unit!121589 () Unit!121517)

(assert (=> b!4675503 (= lt!1835596 Unit!121589)))

(assert (=> b!4675503 (forall!11173 (t!359421 (_2!30000 (h!58355 (toList!5397 lm!2023)))) lambda!203543)))

(declare-fun lt!1835606 () Unit!121517)

(declare-fun Unit!121590 () Unit!121517)

(assert (=> b!4675503 (= lt!1835606 Unit!121590)))

(declare-fun lt!1835593 () Unit!121517)

(declare-fun Unit!121591 () Unit!121517)

(assert (=> b!4675503 (= lt!1835593 Unit!121591)))

(declare-fun lt!1835604 () Unit!121517)

(assert (=> b!4675503 (= lt!1835604 (forallContained!3332 (toList!5398 lt!1835592) lambda!203543 (h!58354 (_2!30000 (h!58355 (toList!5397 lm!2023))))))))

(assert (=> b!4675503 (contains!15310 lt!1835592 (_1!29999 (h!58354 (_2!30000 (h!58355 (toList!5397 lm!2023))))))))

(declare-fun lt!1835591 () Unit!121517)

(declare-fun Unit!121592 () Unit!121517)

(assert (=> b!4675503 (= lt!1835591 Unit!121592)))

(assert (=> b!4675503 (contains!15310 lt!1835602 (_1!29999 (h!58354 (_2!30000 (h!58355 (toList!5397 lm!2023))))))))

(declare-fun lt!1835610 () Unit!121517)

(declare-fun Unit!121593 () Unit!121517)

(assert (=> b!4675503 (= lt!1835610 Unit!121593)))

(assert (=> b!4675503 (forall!11173 (_2!30000 (h!58355 (toList!5397 lm!2023))) lambda!203543)))

(declare-fun lt!1835590 () Unit!121517)

(declare-fun Unit!121594 () Unit!121517)

(assert (=> b!4675503 (= lt!1835590 Unit!121594)))

(assert (=> b!4675503 (forall!11173 (toList!5398 lt!1835592) lambda!203543)))

(declare-fun lt!1835607 () Unit!121517)

(declare-fun Unit!121595 () Unit!121517)

(assert (=> b!4675503 (= lt!1835607 Unit!121595)))

(declare-fun lt!1835609 () Unit!121517)

(declare-fun Unit!121596 () Unit!121517)

(assert (=> b!4675503 (= lt!1835609 Unit!121596)))

(declare-fun lt!1835598 () Unit!121517)

(assert (=> b!4675503 (= lt!1835598 (addForallContainsKeyThenBeforeAdding!647 lt!1835299 lt!1835602 (_1!29999 (h!58354 (_2!30000 (h!58355 (toList!5397 lm!2023))))) (_2!29999 (h!58354 (_2!30000 (h!58355 (toList!5397 lm!2023)))))))))

(assert (=> b!4675503 (forall!11173 (toList!5398 lt!1835299) lambda!203543)))

(declare-fun lt!1835603 () Unit!121517)

(assert (=> b!4675503 (= lt!1835603 lt!1835598)))

(assert (=> b!4675503 (forall!11173 (toList!5398 lt!1835299) lambda!203543)))

(declare-fun lt!1835595 () Unit!121517)

(declare-fun Unit!121597 () Unit!121517)

(assert (=> b!4675503 (= lt!1835595 Unit!121597)))

(declare-fun res!1969078 () Bool)

(declare-fun call!326724 () Bool)

(assert (=> b!4675503 (= res!1969078 call!326724)))

(declare-fun e!2917372 () Bool)

(assert (=> b!4675503 (=> (not res!1969078) (not e!2917372))))

(assert (=> b!4675503 e!2917372))

(declare-fun lt!1835597 () Unit!121517)

(declare-fun Unit!121598 () Unit!121517)

(assert (=> b!4675503 (= lt!1835597 Unit!121598)))

(assert (=> b!4675504 (= e!2917373 lt!1835299)))

(declare-fun lt!1835599 () Unit!121517)

(assert (=> b!4675504 (= lt!1835599 call!326725)))

(assert (=> b!4675504 call!326726))

(declare-fun lt!1835601 () Unit!121517)

(assert (=> b!4675504 (= lt!1835601 lt!1835599)))

(assert (=> b!4675504 call!326724))

(declare-fun lt!1835594 () Unit!121517)

(declare-fun Unit!121599 () Unit!121517)

(assert (=> b!4675504 (= lt!1835594 Unit!121599)))

(declare-fun b!4675505 () Bool)

(assert (=> b!4675505 (= e!2917372 (forall!11173 (toList!5398 lt!1835299) lambda!203543))))

(declare-fun c!800117 () Bool)

(declare-fun bm!326720 () Bool)

(assert (=> bm!326720 (= call!326724 (forall!11173 (ite c!800117 (toList!5398 lt!1835299) (_2!30000 (h!58355 (toList!5397 lm!2023)))) (ite c!800117 lambda!203541 lambda!203543)))))

(declare-fun bm!326721 () Bool)

(assert (=> bm!326721 (= call!326726 (forall!11173 (toList!5398 lt!1835299) (ite c!800117 lambda!203541 lambda!203542)))))

(declare-fun bm!326719 () Bool)

(assert (=> bm!326719 (= call!326725 (lemmaContainsAllItsOwnKeys!648 lt!1835299))))

(declare-fun e!2917374 () Bool)

(assert (=> d!1486403 e!2917374))

(declare-fun res!1969077 () Bool)

(assert (=> d!1486403 (=> (not res!1969077) (not e!2917374))))

(assert (=> d!1486403 (= res!1969077 (forall!11173 (_2!30000 (h!58355 (toList!5397 lm!2023))) lambda!203544))))

(assert (=> d!1486403 (= lt!1835605 e!2917373)))

(assert (=> d!1486403 (= c!800117 ((_ is Nil!52159) (_2!30000 (h!58355 (toList!5397 lm!2023)))))))

(assert (=> d!1486403 (noDuplicateKeys!1754 (_2!30000 (h!58355 (toList!5397 lm!2023))))))

(assert (=> d!1486403 (= (addToMapMapFromBucket!1186 (_2!30000 (h!58355 (toList!5397 lm!2023))) lt!1835299) lt!1835605)))

(declare-fun b!4675506 () Bool)

(declare-fun res!1969076 () Bool)

(assert (=> b!4675506 (=> (not res!1969076) (not e!2917374))))

(assert (=> b!4675506 (= res!1969076 (forall!11173 (toList!5398 lt!1835299) lambda!203544))))

(declare-fun b!4675507 () Bool)

(assert (=> b!4675507 (= e!2917374 (invariantList!1360 (toList!5398 lt!1835605)))))

(assert (= (and d!1486403 c!800117) b!4675504))

(assert (= (and d!1486403 (not c!800117)) b!4675503))

(assert (= (and b!4675503 res!1969078) b!4675505))

(assert (= (or b!4675504 b!4675503) bm!326719))

(assert (= (or b!4675504 b!4675503) bm!326720))

(assert (= (or b!4675504 b!4675503) bm!326721))

(assert (= (and d!1486403 res!1969077) b!4675506))

(assert (= (and b!4675506 res!1969076) b!4675507))

(declare-fun m!5569123 () Bool)

(assert (=> b!4675503 m!5569123))

(declare-fun m!5569125 () Bool)

(assert (=> b!4675503 m!5569125))

(declare-fun m!5569127 () Bool)

(assert (=> b!4675503 m!5569127))

(declare-fun m!5569129 () Bool)

(assert (=> b!4675503 m!5569129))

(assert (=> b!4675503 m!5569127))

(declare-fun m!5569131 () Bool)

(assert (=> b!4675503 m!5569131))

(assert (=> b!4675503 m!5569131))

(declare-fun m!5569133 () Bool)

(assert (=> b!4675503 m!5569133))

(declare-fun m!5569135 () Bool)

(assert (=> b!4675503 m!5569135))

(declare-fun m!5569137 () Bool)

(assert (=> b!4675503 m!5569137))

(declare-fun m!5569139 () Bool)

(assert (=> b!4675503 m!5569139))

(declare-fun m!5569141 () Bool)

(assert (=> b!4675503 m!5569141))

(assert (=> b!4675503 m!5569137))

(assert (=> bm!326719 m!5569053))

(declare-fun m!5569143 () Bool)

(assert (=> d!1486403 m!5569143))

(declare-fun m!5569145 () Bool)

(assert (=> d!1486403 m!5569145))

(declare-fun m!5569147 () Bool)

(assert (=> b!4675507 m!5569147))

(declare-fun m!5569149 () Bool)

(assert (=> b!4675506 m!5569149))

(declare-fun m!5569151 () Bool)

(assert (=> bm!326720 m!5569151))

(declare-fun m!5569153 () Bool)

(assert (=> bm!326721 m!5569153))

(assert (=> b!4675505 m!5569131))

(assert (=> b!4675297 d!1486403))

(declare-fun bs!1079752 () Bool)

(declare-fun d!1486405 () Bool)

(assert (= bs!1079752 (and d!1486405 d!1486399)))

(declare-fun lambda!203545 () Int)

(assert (=> bs!1079752 (= lambda!203545 lambda!203539)))

(declare-fun bs!1079753 () Bool)

(assert (= bs!1079753 (and d!1486405 d!1486337)))

(assert (=> bs!1079753 (= lambda!203545 lambda!203447)))

(declare-fun bs!1079754 () Bool)

(assert (= bs!1079754 (and d!1486405 d!1486401)))

(assert (=> bs!1079754 (= lambda!203545 lambda!203540)))

(declare-fun bs!1079755 () Bool)

(assert (= bs!1079755 (and d!1486405 d!1486325)))

(assert (=> bs!1079755 (not (= lambda!203545 lambda!203438))))

(declare-fun bs!1079756 () Bool)

(assert (= bs!1079756 (and d!1486405 start!471844)))

(assert (=> bs!1079756 (= lambda!203545 lambda!203435)))

(declare-fun lt!1835611 () ListMap!4761)

(assert (=> d!1486405 (invariantList!1360 (toList!5398 lt!1835611))))

(declare-fun e!2917375 () ListMap!4761)

(assert (=> d!1486405 (= lt!1835611 e!2917375)))

(declare-fun c!800118 () Bool)

(assert (=> d!1486405 (= c!800118 ((_ is Cons!52160) (t!359422 (toList!5397 lm!2023))))))

(assert (=> d!1486405 (forall!11171 (t!359422 (toList!5397 lm!2023)) lambda!203545)))

(assert (=> d!1486405 (= (extractMap!1780 (t!359422 (toList!5397 lm!2023))) lt!1835611)))

(declare-fun b!4675508 () Bool)

(assert (=> b!4675508 (= e!2917375 (addToMapMapFromBucket!1186 (_2!30000 (h!58355 (t!359422 (toList!5397 lm!2023)))) (extractMap!1780 (t!359422 (t!359422 (toList!5397 lm!2023))))))))

(declare-fun b!4675509 () Bool)

(assert (=> b!4675509 (= e!2917375 (ListMap!4762 Nil!52159))))

(assert (= (and d!1486405 c!800118) b!4675508))

(assert (= (and d!1486405 (not c!800118)) b!4675509))

(declare-fun m!5569155 () Bool)

(assert (=> d!1486405 m!5569155))

(declare-fun m!5569157 () Bool)

(assert (=> d!1486405 m!5569157))

(declare-fun m!5569159 () Bool)

(assert (=> b!4675508 m!5569159))

(assert (=> b!4675508 m!5569159))

(declare-fun m!5569161 () Bool)

(assert (=> b!4675508 m!5569161))

(assert (=> b!4675297 d!1486405))

(declare-fun d!1486407 () Bool)

(declare-fun tail!8353 (List!52284) List!52284)

(assert (=> d!1486407 (= (tail!8351 lm!2023) (ListLongMap!3928 (tail!8353 (toList!5397 lm!2023))))))

(declare-fun bs!1079757 () Bool)

(assert (= bs!1079757 d!1486407))

(declare-fun m!5569163 () Bool)

(assert (=> bs!1079757 m!5569163))

(assert (=> b!4675297 d!1486407))

(declare-fun d!1486409 () Bool)

(assert (=> d!1486409 (= (tail!8350 oldBucket!34) (t!359421 oldBucket!34))))

(assert (=> b!4675287 d!1486409))

(declare-fun d!1486411 () Bool)

(declare-fun lt!1835614 () List!52283)

(assert (=> d!1486411 (not (containsKey!2891 lt!1835614 key!4653))))

(declare-fun e!2917380 () List!52283)

(assert (=> d!1486411 (= lt!1835614 e!2917380)))

(declare-fun c!800124 () Bool)

(assert (=> d!1486411 (= c!800124 (and ((_ is Cons!52159) oldBucket!34) (= (_1!29999 (h!58354 oldBucket!34)) key!4653)))))

(assert (=> d!1486411 (noDuplicateKeys!1754 oldBucket!34)))

(assert (=> d!1486411 (= (removePairForKey!1349 oldBucket!34 key!4653) lt!1835614)))

(declare-fun b!4675519 () Bool)

(declare-fun e!2917381 () List!52283)

(assert (=> b!4675519 (= e!2917380 e!2917381)))

(declare-fun c!800123 () Bool)

(assert (=> b!4675519 (= c!800123 ((_ is Cons!52159) oldBucket!34))))

(declare-fun b!4675520 () Bool)

(assert (=> b!4675520 (= e!2917381 (Cons!52159 (h!58354 oldBucket!34) (removePairForKey!1349 (t!359421 oldBucket!34) key!4653)))))

(declare-fun b!4675518 () Bool)

(assert (=> b!4675518 (= e!2917380 (t!359421 oldBucket!34))))

(declare-fun b!4675521 () Bool)

(assert (=> b!4675521 (= e!2917381 Nil!52159)))

(assert (= (and d!1486411 c!800124) b!4675518))

(assert (= (and d!1486411 (not c!800124)) b!4675519))

(assert (= (and b!4675519 c!800123) b!4675520))

(assert (= (and b!4675519 (not c!800123)) b!4675521))

(declare-fun m!5569165 () Bool)

(assert (=> d!1486411 m!5569165))

(assert (=> d!1486411 m!5568749))

(declare-fun m!5569167 () Bool)

(assert (=> b!4675520 m!5569167))

(assert (=> b!4675285 d!1486411))

(declare-fun d!1486413 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9084 (List!52283) (InoxSet tuple2!53410))

(assert (=> d!1486413 (= (eq!943 (addToMapMapFromBucket!1186 (Cons!52159 lt!1835301 lt!1835298) lt!1835299) (+!2056 lt!1835297 lt!1835301)) (= (content!9084 (toList!5398 (addToMapMapFromBucket!1186 (Cons!52159 lt!1835301 lt!1835298) lt!1835299))) (content!9084 (toList!5398 (+!2056 lt!1835297 lt!1835301)))))))

(declare-fun bs!1079758 () Bool)

(assert (= bs!1079758 d!1486413))

(declare-fun m!5569169 () Bool)

(assert (=> bs!1079758 m!5569169))

(declare-fun m!5569171 () Bool)

(assert (=> bs!1079758 m!5569171))

(assert (=> b!4675296 d!1486413))

(declare-fun d!1486415 () Bool)

(declare-fun res!1969079 () Bool)

(declare-fun e!2917382 () Bool)

(assert (=> d!1486415 (=> res!1969079 e!2917382)))

(assert (=> d!1486415 (= res!1969079 ((_ is Nil!52160) (t!359422 (toList!5397 lm!2023))))))

(assert (=> d!1486415 (= (forall!11171 (t!359422 (toList!5397 lm!2023)) lambda!203435) e!2917382)))

(declare-fun b!4675522 () Bool)

(declare-fun e!2917383 () Bool)

(assert (=> b!4675522 (= e!2917382 e!2917383)))

(declare-fun res!1969080 () Bool)

(assert (=> b!4675522 (=> (not res!1969080) (not e!2917383))))

(assert (=> b!4675522 (= res!1969080 (dynLambda!21663 lambda!203435 (h!58355 (t!359422 (toList!5397 lm!2023)))))))

(declare-fun b!4675523 () Bool)

(assert (=> b!4675523 (= e!2917383 (forall!11171 (t!359422 (t!359422 (toList!5397 lm!2023))) lambda!203435))))

(assert (= (and d!1486415 (not res!1969079)) b!4675522))

(assert (= (and b!4675522 res!1969080) b!4675523))

(declare-fun b_lambda!176543 () Bool)

(assert (=> (not b_lambda!176543) (not b!4675522)))

(declare-fun m!5569173 () Bool)

(assert (=> b!4675522 m!5569173))

(declare-fun m!5569175 () Bool)

(assert (=> b!4675523 m!5569175))

(assert (=> b!4675296 d!1486415))

(declare-fun d!1486417 () Bool)

(assert (=> d!1486417 (= (head!9800 oldBucket!34) (h!58354 oldBucket!34))))

(assert (=> b!4675296 d!1486417))

(declare-fun d!1486419 () Bool)

(assert (=> d!1486419 (eq!943 (addToMapMapFromBucket!1186 (Cons!52159 lt!1835301 lt!1835298) lt!1835299) (+!2056 (addToMapMapFromBucket!1186 lt!1835298 lt!1835299) lt!1835301))))

(declare-fun lt!1835617 () Unit!121517)

(declare-fun choose!32349 (tuple2!53410 List!52283 ListMap!4761) Unit!121517)

(assert (=> d!1486419 (= lt!1835617 (choose!32349 lt!1835301 lt!1835298 lt!1835299))))

(assert (=> d!1486419 (noDuplicateKeys!1754 lt!1835298)))

(assert (=> d!1486419 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!192 lt!1835301 lt!1835298 lt!1835299) lt!1835617)))

(declare-fun bs!1079759 () Bool)

(assert (= bs!1079759 d!1486419))

(assert (=> bs!1079759 m!5568727))

(assert (=> bs!1079759 m!5568727))

(declare-fun m!5569177 () Bool)

(assert (=> bs!1079759 m!5569177))

(declare-fun m!5569179 () Bool)

(assert (=> bs!1079759 m!5569179))

(assert (=> bs!1079759 m!5569087))

(assert (=> bs!1079759 m!5568715))

(assert (=> bs!1079759 m!5568715))

(assert (=> bs!1079759 m!5569177))

(declare-fun m!5569181 () Bool)

(assert (=> bs!1079759 m!5569181))

(assert (=> b!4675296 d!1486419))

(declare-fun d!1486421 () Bool)

(declare-fun e!2917386 () Bool)

(assert (=> d!1486421 e!2917386))

(declare-fun res!1969086 () Bool)

(assert (=> d!1486421 (=> (not res!1969086) (not e!2917386))))

(declare-fun lt!1835628 () ListMap!4761)

(assert (=> d!1486421 (= res!1969086 (contains!15310 lt!1835628 (_1!29999 lt!1835301)))))

(declare-fun lt!1835629 () List!52283)

(assert (=> d!1486421 (= lt!1835628 (ListMap!4762 lt!1835629))))

(declare-fun lt!1835627 () Unit!121517)

(declare-fun lt!1835626 () Unit!121517)

(assert (=> d!1486421 (= lt!1835627 lt!1835626)))

(assert (=> d!1486421 (= (getValueByKey!1703 lt!1835629 (_1!29999 lt!1835301)) (Some!11954 (_2!29999 lt!1835301)))))

(declare-fun lemmaContainsTupThenGetReturnValue!962 (List!52283 K!13535 V!13781) Unit!121517)

(assert (=> d!1486421 (= lt!1835626 (lemmaContainsTupThenGetReturnValue!962 lt!1835629 (_1!29999 lt!1835301) (_2!29999 lt!1835301)))))

(declare-fun insertNoDuplicatedKeys!470 (List!52283 K!13535 V!13781) List!52283)

(assert (=> d!1486421 (= lt!1835629 (insertNoDuplicatedKeys!470 (toList!5398 lt!1835297) (_1!29999 lt!1835301) (_2!29999 lt!1835301)))))

(assert (=> d!1486421 (= (+!2056 lt!1835297 lt!1835301) lt!1835628)))

(declare-fun b!4675528 () Bool)

(declare-fun res!1969085 () Bool)

(assert (=> b!4675528 (=> (not res!1969085) (not e!2917386))))

(assert (=> b!4675528 (= res!1969085 (= (getValueByKey!1703 (toList!5398 lt!1835628) (_1!29999 lt!1835301)) (Some!11954 (_2!29999 lt!1835301))))))

(declare-fun b!4675529 () Bool)

(declare-fun contains!15314 (List!52283 tuple2!53410) Bool)

(assert (=> b!4675529 (= e!2917386 (contains!15314 (toList!5398 lt!1835628) lt!1835301))))

(assert (= (and d!1486421 res!1969086) b!4675528))

(assert (= (and b!4675528 res!1969085) b!4675529))

(declare-fun m!5569183 () Bool)

(assert (=> d!1486421 m!5569183))

(declare-fun m!5569185 () Bool)

(assert (=> d!1486421 m!5569185))

(declare-fun m!5569187 () Bool)

(assert (=> d!1486421 m!5569187))

(declare-fun m!5569189 () Bool)

(assert (=> d!1486421 m!5569189))

(declare-fun m!5569191 () Bool)

(assert (=> b!4675528 m!5569191))

(declare-fun m!5569193 () Bool)

(assert (=> b!4675529 m!5569193))

(assert (=> b!4675296 d!1486421))

(declare-fun bs!1079760 () Bool)

(declare-fun b!4675531 () Bool)

(assert (= bs!1079760 (and b!4675531 b!4675486)))

(declare-fun lambda!203546 () Int)

(assert (=> bs!1079760 (= lambda!203546 lambda!203535)))

(declare-fun bs!1079761 () Bool)

(assert (= bs!1079761 (and b!4675531 b!4675479)))

(assert (=> bs!1079761 (= lambda!203546 lambda!203531)))

(assert (=> bs!1079760 (= (= lt!1835299 lt!1835579) (= lambda!203546 lambda!203536))))

(declare-fun bs!1079762 () Bool)

(assert (= bs!1079762 (and b!4675531 d!1486339)))

(assert (=> bs!1079762 (not (= lambda!203546 lambda!203460))))

(declare-fun bs!1079763 () Bool)

(assert (= bs!1079763 (and b!4675531 b!4675503)))

(assert (=> bs!1079763 (= (= lt!1835299 lt!1835602) (= lambda!203546 lambda!203543))))

(declare-fun bs!1079764 () Bool)

(assert (= bs!1079764 (and b!4675531 b!4675504)))

(assert (=> bs!1079764 (= lambda!203546 lambda!203541)))

(declare-fun bs!1079765 () Bool)

(assert (= bs!1079765 (and b!4675531 d!1486391)))

(assert (=> bs!1079765 (= (= lt!1835299 lt!1835582) (= lambda!203546 lambda!203537))))

(assert (=> bs!1079761 (= (= lt!1835299 lt!1835558) (= lambda!203546 lambda!203532))))

(declare-fun bs!1079766 () Bool)

(assert (= bs!1079766 (and b!4675531 d!1486397)))

(assert (=> bs!1079766 (not (= lambda!203546 lambda!203538))))

(declare-fun bs!1079767 () Bool)

(assert (= bs!1079767 (and b!4675531 d!1486341)))

(assert (=> bs!1079767 (= (= lt!1835299 lt!1835561) (= lambda!203546 lambda!203533))))

(declare-fun bs!1079768 () Bool)

(assert (= bs!1079768 (and b!4675531 b!4675480)))

(assert (=> bs!1079768 (= lambda!203546 lambda!203530)))

(assert (=> bs!1079763 (= lambda!203546 lambda!203542)))

(declare-fun bs!1079769 () Bool)

(assert (= bs!1079769 (and b!4675531 d!1486403)))

(assert (=> bs!1079769 (= (= lt!1835299 lt!1835605) (= lambda!203546 lambda!203544))))

(declare-fun bs!1079770 () Bool)

(assert (= bs!1079770 (and b!4675531 b!4675487)))

(assert (=> bs!1079770 (= lambda!203546 lambda!203534)))

(assert (=> b!4675531 true))

(declare-fun bs!1079771 () Bool)

(declare-fun b!4675530 () Bool)

(assert (= bs!1079771 (and b!4675530 b!4675486)))

(declare-fun lambda!203547 () Int)

(assert (=> bs!1079771 (= lambda!203547 lambda!203535)))

(declare-fun bs!1079772 () Bool)

(assert (= bs!1079772 (and b!4675530 b!4675479)))

(assert (=> bs!1079772 (= lambda!203547 lambda!203531)))

(assert (=> bs!1079771 (= (= lt!1835299 lt!1835579) (= lambda!203547 lambda!203536))))

(declare-fun bs!1079773 () Bool)

(assert (= bs!1079773 (and b!4675530 d!1486339)))

(assert (=> bs!1079773 (not (= lambda!203547 lambda!203460))))

(declare-fun bs!1079774 () Bool)

(assert (= bs!1079774 (and b!4675530 b!4675503)))

(assert (=> bs!1079774 (= (= lt!1835299 lt!1835602) (= lambda!203547 lambda!203543))))

(declare-fun bs!1079775 () Bool)

(assert (= bs!1079775 (and b!4675530 b!4675504)))

(assert (=> bs!1079775 (= lambda!203547 lambda!203541)))

(declare-fun bs!1079776 () Bool)

(assert (= bs!1079776 (and b!4675530 d!1486391)))

(assert (=> bs!1079776 (= (= lt!1835299 lt!1835582) (= lambda!203547 lambda!203537))))

(assert (=> bs!1079772 (= (= lt!1835299 lt!1835558) (= lambda!203547 lambda!203532))))

(declare-fun bs!1079777 () Bool)

(assert (= bs!1079777 (and b!4675530 d!1486397)))

(assert (=> bs!1079777 (not (= lambda!203547 lambda!203538))))

(declare-fun bs!1079778 () Bool)

(assert (= bs!1079778 (and b!4675530 b!4675531)))

(assert (=> bs!1079778 (= lambda!203547 lambda!203546)))

(declare-fun bs!1079779 () Bool)

(assert (= bs!1079779 (and b!4675530 d!1486341)))

(assert (=> bs!1079779 (= (= lt!1835299 lt!1835561) (= lambda!203547 lambda!203533))))

(declare-fun bs!1079780 () Bool)

(assert (= bs!1079780 (and b!4675530 b!4675480)))

(assert (=> bs!1079780 (= lambda!203547 lambda!203530)))

(assert (=> bs!1079774 (= lambda!203547 lambda!203542)))

(declare-fun bs!1079781 () Bool)

(assert (= bs!1079781 (and b!4675530 d!1486403)))

(assert (=> bs!1079781 (= (= lt!1835299 lt!1835605) (= lambda!203547 lambda!203544))))

(declare-fun bs!1079782 () Bool)

(assert (= bs!1079782 (and b!4675530 b!4675487)))

(assert (=> bs!1079782 (= lambda!203547 lambda!203534)))

(assert (=> b!4675530 true))

(declare-fun lambda!203548 () Int)

(declare-fun lt!1835642 () ListMap!4761)

(assert (=> bs!1079771 (= (= lt!1835642 lt!1835299) (= lambda!203548 lambda!203535))))

(assert (=> b!4675530 (= (= lt!1835642 lt!1835299) (= lambda!203548 lambda!203547))))

(assert (=> bs!1079772 (= (= lt!1835642 lt!1835299) (= lambda!203548 lambda!203531))))

(assert (=> bs!1079771 (= (= lt!1835642 lt!1835579) (= lambda!203548 lambda!203536))))

(assert (=> bs!1079773 (not (= lambda!203548 lambda!203460))))

(assert (=> bs!1079774 (= (= lt!1835642 lt!1835602) (= lambda!203548 lambda!203543))))

(assert (=> bs!1079775 (= (= lt!1835642 lt!1835299) (= lambda!203548 lambda!203541))))

(assert (=> bs!1079776 (= (= lt!1835642 lt!1835582) (= lambda!203548 lambda!203537))))

(assert (=> bs!1079772 (= (= lt!1835642 lt!1835558) (= lambda!203548 lambda!203532))))

(assert (=> bs!1079777 (not (= lambda!203548 lambda!203538))))

(assert (=> bs!1079778 (= (= lt!1835642 lt!1835299) (= lambda!203548 lambda!203546))))

(assert (=> bs!1079779 (= (= lt!1835642 lt!1835561) (= lambda!203548 lambda!203533))))

(assert (=> bs!1079780 (= (= lt!1835642 lt!1835299) (= lambda!203548 lambda!203530))))

(assert (=> bs!1079774 (= (= lt!1835642 lt!1835299) (= lambda!203548 lambda!203542))))

(assert (=> bs!1079781 (= (= lt!1835642 lt!1835605) (= lambda!203548 lambda!203544))))

(assert (=> bs!1079782 (= (= lt!1835642 lt!1835299) (= lambda!203548 lambda!203534))))

(assert (=> b!4675530 true))

(declare-fun bs!1079783 () Bool)

(declare-fun d!1486423 () Bool)

(assert (= bs!1079783 (and d!1486423 b!4675486)))

(declare-fun lt!1835645 () ListMap!4761)

(declare-fun lambda!203549 () Int)

(assert (=> bs!1079783 (= (= lt!1835645 lt!1835299) (= lambda!203549 lambda!203535))))

(declare-fun bs!1079784 () Bool)

(assert (= bs!1079784 (and d!1486423 b!4675530)))

(assert (=> bs!1079784 (= (= lt!1835645 lt!1835299) (= lambda!203549 lambda!203547))))

(declare-fun bs!1079785 () Bool)

(assert (= bs!1079785 (and d!1486423 b!4675479)))

(assert (=> bs!1079785 (= (= lt!1835645 lt!1835299) (= lambda!203549 lambda!203531))))

(assert (=> bs!1079783 (= (= lt!1835645 lt!1835579) (= lambda!203549 lambda!203536))))

(assert (=> bs!1079784 (= (= lt!1835645 lt!1835642) (= lambda!203549 lambda!203548))))

(declare-fun bs!1079786 () Bool)

(assert (= bs!1079786 (and d!1486423 d!1486339)))

(assert (=> bs!1079786 (not (= lambda!203549 lambda!203460))))

(declare-fun bs!1079787 () Bool)

(assert (= bs!1079787 (and d!1486423 b!4675503)))

(assert (=> bs!1079787 (= (= lt!1835645 lt!1835602) (= lambda!203549 lambda!203543))))

(declare-fun bs!1079788 () Bool)

(assert (= bs!1079788 (and d!1486423 b!4675504)))

(assert (=> bs!1079788 (= (= lt!1835645 lt!1835299) (= lambda!203549 lambda!203541))))

(declare-fun bs!1079789 () Bool)

(assert (= bs!1079789 (and d!1486423 d!1486391)))

(assert (=> bs!1079789 (= (= lt!1835645 lt!1835582) (= lambda!203549 lambda!203537))))

(assert (=> bs!1079785 (= (= lt!1835645 lt!1835558) (= lambda!203549 lambda!203532))))

(declare-fun bs!1079790 () Bool)

(assert (= bs!1079790 (and d!1486423 d!1486397)))

(assert (=> bs!1079790 (not (= lambda!203549 lambda!203538))))

(declare-fun bs!1079791 () Bool)

(assert (= bs!1079791 (and d!1486423 b!4675531)))

(assert (=> bs!1079791 (= (= lt!1835645 lt!1835299) (= lambda!203549 lambda!203546))))

(declare-fun bs!1079792 () Bool)

(assert (= bs!1079792 (and d!1486423 d!1486341)))

(assert (=> bs!1079792 (= (= lt!1835645 lt!1835561) (= lambda!203549 lambda!203533))))

(declare-fun bs!1079793 () Bool)

(assert (= bs!1079793 (and d!1486423 b!4675480)))

(assert (=> bs!1079793 (= (= lt!1835645 lt!1835299) (= lambda!203549 lambda!203530))))

(assert (=> bs!1079787 (= (= lt!1835645 lt!1835299) (= lambda!203549 lambda!203542))))

(declare-fun bs!1079794 () Bool)

(assert (= bs!1079794 (and d!1486423 d!1486403)))

(assert (=> bs!1079794 (= (= lt!1835645 lt!1835605) (= lambda!203549 lambda!203544))))

(declare-fun bs!1079795 () Bool)

(assert (= bs!1079795 (and d!1486423 b!4675487)))

(assert (=> bs!1079795 (= (= lt!1835645 lt!1835299) (= lambda!203549 lambda!203534))))

(assert (=> d!1486423 true))

(declare-fun e!2917388 () ListMap!4761)

(assert (=> b!4675530 (= e!2917388 lt!1835642)))

(declare-fun lt!1835632 () ListMap!4761)

(assert (=> b!4675530 (= lt!1835632 (+!2056 lt!1835299 (h!58354 (Cons!52159 lt!1835301 lt!1835298))))))

(assert (=> b!4675530 (= lt!1835642 (addToMapMapFromBucket!1186 (t!359421 (Cons!52159 lt!1835301 lt!1835298)) (+!2056 lt!1835299 (h!58354 (Cons!52159 lt!1835301 lt!1835298)))))))

(declare-fun lt!1835640 () Unit!121517)

(declare-fun call!326728 () Unit!121517)

(assert (=> b!4675530 (= lt!1835640 call!326728)))

(declare-fun call!326729 () Bool)

(assert (=> b!4675530 call!326729))

(declare-fun lt!1835648 () Unit!121517)

(assert (=> b!4675530 (= lt!1835648 lt!1835640)))

(assert (=> b!4675530 (forall!11173 (toList!5398 lt!1835632) lambda!203548)))

(declare-fun lt!1835636 () Unit!121517)

(declare-fun Unit!121600 () Unit!121517)

(assert (=> b!4675530 (= lt!1835636 Unit!121600)))

(assert (=> b!4675530 (forall!11173 (t!359421 (Cons!52159 lt!1835301 lt!1835298)) lambda!203548)))

(declare-fun lt!1835646 () Unit!121517)

(declare-fun Unit!121601 () Unit!121517)

(assert (=> b!4675530 (= lt!1835646 Unit!121601)))

(declare-fun lt!1835633 () Unit!121517)

(declare-fun Unit!121602 () Unit!121517)

(assert (=> b!4675530 (= lt!1835633 Unit!121602)))

(declare-fun lt!1835644 () Unit!121517)

(assert (=> b!4675530 (= lt!1835644 (forallContained!3332 (toList!5398 lt!1835632) lambda!203548 (h!58354 (Cons!52159 lt!1835301 lt!1835298))))))

(assert (=> b!4675530 (contains!15310 lt!1835632 (_1!29999 (h!58354 (Cons!52159 lt!1835301 lt!1835298))))))

(declare-fun lt!1835631 () Unit!121517)

(declare-fun Unit!121603 () Unit!121517)

(assert (=> b!4675530 (= lt!1835631 Unit!121603)))

(assert (=> b!4675530 (contains!15310 lt!1835642 (_1!29999 (h!58354 (Cons!52159 lt!1835301 lt!1835298))))))

(declare-fun lt!1835650 () Unit!121517)

(declare-fun Unit!121604 () Unit!121517)

(assert (=> b!4675530 (= lt!1835650 Unit!121604)))

(assert (=> b!4675530 (forall!11173 (Cons!52159 lt!1835301 lt!1835298) lambda!203548)))

(declare-fun lt!1835630 () Unit!121517)

(declare-fun Unit!121605 () Unit!121517)

(assert (=> b!4675530 (= lt!1835630 Unit!121605)))

(assert (=> b!4675530 (forall!11173 (toList!5398 lt!1835632) lambda!203548)))

(declare-fun lt!1835647 () Unit!121517)

(declare-fun Unit!121606 () Unit!121517)

(assert (=> b!4675530 (= lt!1835647 Unit!121606)))

(declare-fun lt!1835649 () Unit!121517)

(declare-fun Unit!121607 () Unit!121517)

(assert (=> b!4675530 (= lt!1835649 Unit!121607)))

(declare-fun lt!1835638 () Unit!121517)

(assert (=> b!4675530 (= lt!1835638 (addForallContainsKeyThenBeforeAdding!647 lt!1835299 lt!1835642 (_1!29999 (h!58354 (Cons!52159 lt!1835301 lt!1835298))) (_2!29999 (h!58354 (Cons!52159 lt!1835301 lt!1835298)))))))

(assert (=> b!4675530 (forall!11173 (toList!5398 lt!1835299) lambda!203548)))

(declare-fun lt!1835643 () Unit!121517)

(assert (=> b!4675530 (= lt!1835643 lt!1835638)))

(assert (=> b!4675530 (forall!11173 (toList!5398 lt!1835299) lambda!203548)))

(declare-fun lt!1835635 () Unit!121517)

(declare-fun Unit!121608 () Unit!121517)

(assert (=> b!4675530 (= lt!1835635 Unit!121608)))

(declare-fun res!1969089 () Bool)

(declare-fun call!326727 () Bool)

(assert (=> b!4675530 (= res!1969089 call!326727)))

(declare-fun e!2917387 () Bool)

(assert (=> b!4675530 (=> (not res!1969089) (not e!2917387))))

(assert (=> b!4675530 e!2917387))

(declare-fun lt!1835637 () Unit!121517)

(declare-fun Unit!121609 () Unit!121517)

(assert (=> b!4675530 (= lt!1835637 Unit!121609)))

(assert (=> b!4675531 (= e!2917388 lt!1835299)))

(declare-fun lt!1835639 () Unit!121517)

(assert (=> b!4675531 (= lt!1835639 call!326728)))

(assert (=> b!4675531 call!326729))

(declare-fun lt!1835641 () Unit!121517)

(assert (=> b!4675531 (= lt!1835641 lt!1835639)))

(assert (=> b!4675531 call!326727))

(declare-fun lt!1835634 () Unit!121517)

(declare-fun Unit!121610 () Unit!121517)

(assert (=> b!4675531 (= lt!1835634 Unit!121610)))

(declare-fun b!4675532 () Bool)

(assert (=> b!4675532 (= e!2917387 (forall!11173 (toList!5398 lt!1835299) lambda!203548))))

(declare-fun bm!326723 () Bool)

(declare-fun c!800125 () Bool)

(assert (=> bm!326723 (= call!326727 (forall!11173 (ite c!800125 (toList!5398 lt!1835299) (Cons!52159 lt!1835301 lt!1835298)) (ite c!800125 lambda!203546 lambda!203548)))))

(declare-fun bm!326724 () Bool)

(assert (=> bm!326724 (= call!326729 (forall!11173 (toList!5398 lt!1835299) (ite c!800125 lambda!203546 lambda!203547)))))

(declare-fun bm!326722 () Bool)

(assert (=> bm!326722 (= call!326728 (lemmaContainsAllItsOwnKeys!648 lt!1835299))))

(declare-fun e!2917389 () Bool)

(assert (=> d!1486423 e!2917389))

(declare-fun res!1969088 () Bool)

(assert (=> d!1486423 (=> (not res!1969088) (not e!2917389))))

(assert (=> d!1486423 (= res!1969088 (forall!11173 (Cons!52159 lt!1835301 lt!1835298) lambda!203549))))

(assert (=> d!1486423 (= lt!1835645 e!2917388)))

(assert (=> d!1486423 (= c!800125 ((_ is Nil!52159) (Cons!52159 lt!1835301 lt!1835298)))))

(assert (=> d!1486423 (noDuplicateKeys!1754 (Cons!52159 lt!1835301 lt!1835298))))

(assert (=> d!1486423 (= (addToMapMapFromBucket!1186 (Cons!52159 lt!1835301 lt!1835298) lt!1835299) lt!1835645)))

(declare-fun b!4675533 () Bool)

(declare-fun res!1969087 () Bool)

(assert (=> b!4675533 (=> (not res!1969087) (not e!2917389))))

(assert (=> b!4675533 (= res!1969087 (forall!11173 (toList!5398 lt!1835299) lambda!203549))))

(declare-fun b!4675534 () Bool)

(assert (=> b!4675534 (= e!2917389 (invariantList!1360 (toList!5398 lt!1835645)))))

(assert (= (and d!1486423 c!800125) b!4675531))

(assert (= (and d!1486423 (not c!800125)) b!4675530))

(assert (= (and b!4675530 res!1969089) b!4675532))

(assert (= (or b!4675531 b!4675530) bm!326722))

(assert (= (or b!4675531 b!4675530) bm!326723))

(assert (= (or b!4675531 b!4675530) bm!326724))

(assert (= (and d!1486423 res!1969088) b!4675533))

(assert (= (and b!4675533 res!1969087) b!4675534))

(declare-fun m!5569195 () Bool)

(assert (=> b!4675530 m!5569195))

(declare-fun m!5569197 () Bool)

(assert (=> b!4675530 m!5569197))

(declare-fun m!5569199 () Bool)

(assert (=> b!4675530 m!5569199))

(declare-fun m!5569201 () Bool)

(assert (=> b!4675530 m!5569201))

(assert (=> b!4675530 m!5569199))

(declare-fun m!5569203 () Bool)

(assert (=> b!4675530 m!5569203))

(assert (=> b!4675530 m!5569203))

(declare-fun m!5569205 () Bool)

(assert (=> b!4675530 m!5569205))

(declare-fun m!5569207 () Bool)

(assert (=> b!4675530 m!5569207))

(declare-fun m!5569209 () Bool)

(assert (=> b!4675530 m!5569209))

(declare-fun m!5569211 () Bool)

(assert (=> b!4675530 m!5569211))

(declare-fun m!5569213 () Bool)

(assert (=> b!4675530 m!5569213))

(assert (=> b!4675530 m!5569209))

(assert (=> bm!326722 m!5569053))

(declare-fun m!5569215 () Bool)

(assert (=> d!1486423 m!5569215))

(declare-fun m!5569217 () Bool)

(assert (=> d!1486423 m!5569217))

(declare-fun m!5569219 () Bool)

(assert (=> b!4675534 m!5569219))

(declare-fun m!5569221 () Bool)

(assert (=> b!4675533 m!5569221))

(declare-fun m!5569223 () Bool)

(assert (=> bm!326723 m!5569223))

(declare-fun m!5569225 () Bool)

(assert (=> bm!326724 m!5569225))

(assert (=> b!4675532 m!5569203))

(assert (=> b!4675296 d!1486423))

(declare-fun d!1486425 () Bool)

(assert (=> d!1486425 (= (head!9799 (toList!5397 lm!2023)) (h!58355 (toList!5397 lm!2023)))))

(assert (=> b!4675286 d!1486425))

(declare-fun e!2917392 () Bool)

(declare-fun tp!1344530 () Bool)

(declare-fun b!4675539 () Bool)

(assert (=> b!4675539 (= e!2917392 (and tp_is_empty!30309 tp_is_empty!30311 tp!1344530))))

(assert (=> b!4675300 (= tp!1344516 e!2917392)))

(assert (= (and b!4675300 ((_ is Cons!52159) (t!359421 newBucket!218))) b!4675539))

(declare-fun b!4675544 () Bool)

(declare-fun e!2917395 () Bool)

(declare-fun tp!1344535 () Bool)

(declare-fun tp!1344536 () Bool)

(assert (=> b!4675544 (= e!2917395 (and tp!1344535 tp!1344536))))

(assert (=> b!4675294 (= tp!1344517 e!2917395)))

(assert (= (and b!4675294 ((_ is Cons!52160) (toList!5397 lm!2023))) b!4675544))

(declare-fun e!2917396 () Bool)

(declare-fun b!4675545 () Bool)

(declare-fun tp!1344537 () Bool)

(assert (=> b!4675545 (= e!2917396 (and tp_is_empty!30309 tp_is_empty!30311 tp!1344537))))

(assert (=> b!4675298 (= tp!1344515 e!2917396)))

(assert (= (and b!4675298 ((_ is Cons!52159) (t!359421 oldBucket!34))) b!4675545))

(declare-fun b_lambda!176545 () Bool)

(assert (= b_lambda!176533 (or start!471844 b_lambda!176545)))

(declare-fun bs!1079796 () Bool)

(declare-fun d!1486427 () Bool)

(assert (= bs!1079796 (and d!1486427 start!471844)))

(assert (=> bs!1079796 (= (dynLambda!21663 lambda!203435 (h!58355 (toList!5397 lm!2023))) (noDuplicateKeys!1754 (_2!30000 (h!58355 (toList!5397 lm!2023)))))))

(assert (=> bs!1079796 m!5569145))

(assert (=> b!4675326 d!1486427))

(declare-fun b_lambda!176547 () Bool)

(assert (= b_lambda!176543 (or start!471844 b_lambda!176547)))

(declare-fun bs!1079797 () Bool)

(declare-fun d!1486429 () Bool)

(assert (= bs!1079797 (and d!1486429 start!471844)))

(assert (=> bs!1079797 (= (dynLambda!21663 lambda!203435 (h!58355 (t!359422 (toList!5397 lm!2023)))) (noDuplicateKeys!1754 (_2!30000 (h!58355 (t!359422 (toList!5397 lm!2023))))))))

(declare-fun m!5569227 () Bool)

(assert (=> bs!1079797 m!5569227))

(assert (=> b!4675522 d!1486429))

(check-sat (not b!4675348) (not d!1486333) (not b!4675505) (not d!1486405) (not bm!326722) (not bm!326716) (not b!4675349) (not bm!326720) (not b_lambda!176545) (not b!4675532) (not bs!1079797) (not bm!326714) (not d!1486401) (not b!4675530) (not d!1486407) (not d!1486397) (not b!4675501) (not b!4675528) (not d!1486413) (not b!4675499) (not d!1486335) (not d!1486331) (not d!1486339) (not b!4675327) (not d!1486399) (not d!1486421) (not b!4675529) (not bm!326717) (not bm!326721) (not b!4675354) (not b!4675488) (not b!4675363) (not b!4675495) (not b!4675482) (not b!4675533) (not d!1486391) (not b!4675352) (not bm!326713) (not b!4675346) (not d!1486411) (not b!4675481) (not bm!326718) (not d!1486403) (not b!4675520) (not d!1486419) (not bm!326723) (not b_lambda!176547) (not b!4675353) (not bm!326724) (not b!4675483) (not b!4675479) (not bm!326715) (not b!4675503) (not b!4675347) (not b!4675498) (not b!4675507) (not b!4675497) (not b!4675508) (not d!1486325) (not b!4675490) (not d!1486337) (not bs!1079796) (not b!4675486) tp_is_empty!30309 (not bm!326685) tp_is_empty!30311 (not b!4675544) (not bm!326719) (not b!4675545) (not b!4675496) (not d!1486423) (not d!1486341) (not b!4675534) (not b!4675489) (not b!4675539) (not b!4675523) (not b!4675506))
(check-sat)
