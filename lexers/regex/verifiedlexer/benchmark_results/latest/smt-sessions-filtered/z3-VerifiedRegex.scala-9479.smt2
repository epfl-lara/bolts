; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!500996 () Bool)

(assert start!500996)

(declare-fun b!4827150 () Bool)

(declare-fun res!2055365 () Bool)

(declare-fun e!3016259 () Bool)

(assert (=> b!4827150 (=> (not res!2055365) (not e!3016259))))

(declare-datatypes ((V!16930 0))(
  ( (V!16931 (val!21653 Int)) )
))
(declare-datatypes ((K!16684 0))(
  ( (K!16685 (val!21654 Int)) )
))
(declare-datatypes ((tuple2!58242 0))(
  ( (tuple2!58243 (_1!32415 K!16684) (_2!32415 V!16930)) )
))
(declare-datatypes ((List!55124 0))(
  ( (Nil!55000) (Cons!55000 (h!61434 tuple2!58242) (t!362620 List!55124)) )
))
(declare-datatypes ((tuple2!58244 0))(
  ( (tuple2!58245 (_1!32416 (_ BitVec 64)) (_2!32416 List!55124)) )
))
(declare-datatypes ((List!55125 0))(
  ( (Nil!55001) (Cons!55001 (h!61435 tuple2!58244) (t!362621 List!55125)) )
))
(declare-datatypes ((ListLongMap!6019 0))(
  ( (ListLongMap!6020 (toList!7501 List!55125)) )
))
(declare-fun lm!2325 () ListLongMap!6019)

(declare-datatypes ((Hashable!7278 0))(
  ( (HashableExt!7277 (__x!33553 Int)) )
))
(declare-fun hashF!1543 () Hashable!7278)

(declare-fun key!5594 () K!16684)

(declare-fun contains!18806 (ListLongMap!6019 (_ BitVec 64)) Bool)

(declare-fun hash!5421 (Hashable!7278 K!16684) (_ BitVec 64))

(assert (=> b!4827150 (= res!2055365 (not (contains!18806 lm!2325 (hash!5421 hashF!1543 key!5594))))))

(declare-fun b!4827151 () Bool)

(declare-fun res!2055367 () Bool)

(assert (=> b!4827151 (=> (not res!2055367) (not e!3016259))))

(declare-fun allKeysSameHashInMap!2594 (ListLongMap!6019 Hashable!7278) Bool)

(assert (=> b!4827151 (= res!2055367 (allKeysSameHashInMap!2594 lm!2325 hashF!1543))))

(declare-fun b!4827152 () Bool)

(declare-fun res!2055369 () Bool)

(assert (=> b!4827152 (=> (not res!2055369) (not e!3016259))))

(get-info :version)

(assert (=> b!4827152 (= res!2055369 ((_ is Cons!55001) (toList!7501 lm!2325)))))

(declare-fun b!4827153 () Bool)

(declare-fun e!3016260 () Bool)

(declare-datatypes ((ListMap!6877 0))(
  ( (ListMap!6878 (toList!7502 List!55124)) )
))
(declare-fun lt!1974096 () ListMap!6877)

(declare-fun contains!18807 (ListMap!6877 K!16684) Bool)

(assert (=> b!4827153 (= e!3016260 (contains!18807 lt!1974096 key!5594))))

(declare-fun b!4827154 () Bool)

(declare-fun e!3016261 () Bool)

(declare-fun tp!1362678 () Bool)

(assert (=> b!4827154 (= e!3016261 tp!1362678)))

(declare-fun b!4827155 () Bool)

(declare-fun isEmpty!29663 (ListLongMap!6019) Bool)

(assert (=> b!4827155 (= e!3016259 (not (not (isEmpty!29663 lm!2325))))))

(declare-fun containsKey!4388 (List!55124 K!16684) Bool)

(declare-fun apply!13357 (ListLongMap!6019 (_ BitVec 64)) List!55124)

(assert (=> b!4827155 (not (containsKey!4388 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325)))) key!5594))))

(declare-datatypes ((Unit!143250 0))(
  ( (Unit!143251) )
))
(declare-fun lt!1974098 () Unit!143250)

(declare-fun lemmaNotSameHashThenCannotContainKey!226 (ListLongMap!6019 K!16684 (_ BitVec 64) Hashable!7278) Unit!143250)

(assert (=> b!4827155 (= lt!1974098 (lemmaNotSameHashThenCannotContainKey!226 lm!2325 key!5594 (_1!32416 (h!61435 (toList!7501 lm!2325))) hashF!1543))))

(declare-fun addToMapMapFromBucket!1806 (List!55124 ListMap!6877) ListMap!6877)

(assert (=> b!4827155 (= (contains!18807 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096) key!5594) e!3016260)))

(declare-fun res!2055366 () Bool)

(assert (=> b!4827155 (=> res!2055366 e!3016260)))

(assert (=> b!4827155 (= res!2055366 (containsKey!4388 (_2!32416 (h!61435 (toList!7501 lm!2325))) key!5594))))

(declare-fun lt!1974097 () Unit!143250)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!30 (List!55124 ListMap!6877 K!16684) Unit!143250)

(assert (=> b!4827155 (= lt!1974097 (lemmaAddToMapFromBucketContainsIIFInAccOrL!30 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096 key!5594))))

(declare-fun extractMap!2690 (List!55125) ListMap!6877)

(assert (=> b!4827155 (= lt!1974096 (extractMap!2690 (t!362621 (toList!7501 lm!2325))))))

(declare-fun res!2055368 () Bool)

(assert (=> start!500996 (=> (not res!2055368) (not e!3016259))))

(declare-fun lambda!237042 () Int)

(declare-fun forall!12628 (List!55125 Int) Bool)

(assert (=> start!500996 (= res!2055368 (forall!12628 (toList!7501 lm!2325) lambda!237042))))

(assert (=> start!500996 e!3016259))

(declare-fun inv!70584 (ListLongMap!6019) Bool)

(assert (=> start!500996 (and (inv!70584 lm!2325) e!3016261)))

(assert (=> start!500996 true))

(declare-fun tp_is_empty!34491 () Bool)

(assert (=> start!500996 tp_is_empty!34491))

(assert (= (and start!500996 res!2055368) b!4827151))

(assert (= (and b!4827151 res!2055367) b!4827150))

(assert (= (and b!4827150 res!2055365) b!4827152))

(assert (= (and b!4827152 res!2055369) b!4827155))

(assert (= (and b!4827155 (not res!2055366)) b!4827153))

(assert (= start!500996 b!4827154))

(declare-fun m!5818304 () Bool)

(assert (=> b!4827151 m!5818304))

(declare-fun m!5818306 () Bool)

(assert (=> b!4827155 m!5818306))

(declare-fun m!5818308 () Bool)

(assert (=> b!4827155 m!5818308))

(declare-fun m!5818310 () Bool)

(assert (=> b!4827155 m!5818310))

(declare-fun m!5818312 () Bool)

(assert (=> b!4827155 m!5818312))

(declare-fun m!5818314 () Bool)

(assert (=> b!4827155 m!5818314))

(declare-fun m!5818316 () Bool)

(assert (=> b!4827155 m!5818316))

(declare-fun m!5818318 () Bool)

(assert (=> b!4827155 m!5818318))

(declare-fun m!5818320 () Bool)

(assert (=> b!4827155 m!5818320))

(assert (=> b!4827155 m!5818312))

(declare-fun m!5818322 () Bool)

(assert (=> b!4827155 m!5818322))

(assert (=> b!4827155 m!5818316))

(declare-fun m!5818324 () Bool)

(assert (=> start!500996 m!5818324))

(declare-fun m!5818326 () Bool)

(assert (=> start!500996 m!5818326))

(declare-fun m!5818328 () Bool)

(assert (=> b!4827153 m!5818328))

(declare-fun m!5818330 () Bool)

(assert (=> b!4827150 m!5818330))

(assert (=> b!4827150 m!5818330))

(declare-fun m!5818332 () Bool)

(assert (=> b!4827150 m!5818332))

(check-sat (not b!4827154) (not b!4827150) tp_is_empty!34491 (not b!4827153) (not start!500996) (not b!4827151) (not b!4827155))
(check-sat)
(get-model)

(declare-fun d!1546850 () Bool)

(declare-fun res!2055377 () Bool)

(declare-fun e!3016272 () Bool)

(assert (=> d!1546850 (=> res!2055377 e!3016272)))

(assert (=> d!1546850 (= res!2055377 ((_ is Nil!55001) (toList!7501 lm!2325)))))

(assert (=> d!1546850 (= (forall!12628 (toList!7501 lm!2325) lambda!237042) e!3016272)))

(declare-fun b!4827171 () Bool)

(declare-fun e!3016273 () Bool)

(assert (=> b!4827171 (= e!3016272 e!3016273)))

(declare-fun res!2055378 () Bool)

(assert (=> b!4827171 (=> (not res!2055378) (not e!3016273))))

(declare-fun dynLambda!22225 (Int tuple2!58244) Bool)

(assert (=> b!4827171 (= res!2055378 (dynLambda!22225 lambda!237042 (h!61435 (toList!7501 lm!2325))))))

(declare-fun b!4827172 () Bool)

(assert (=> b!4827172 (= e!3016273 (forall!12628 (t!362621 (toList!7501 lm!2325)) lambda!237042))))

(assert (= (and d!1546850 (not res!2055377)) b!4827171))

(assert (= (and b!4827171 res!2055378) b!4827172))

(declare-fun b_lambda!190053 () Bool)

(assert (=> (not b_lambda!190053) (not b!4827171)))

(declare-fun m!5818346 () Bool)

(assert (=> b!4827171 m!5818346))

(declare-fun m!5818348 () Bool)

(assert (=> b!4827172 m!5818348))

(assert (=> start!500996 d!1546850))

(declare-fun d!1546854 () Bool)

(declare-fun isStrictlySorted!991 (List!55125) Bool)

(assert (=> d!1546854 (= (inv!70584 lm!2325) (isStrictlySorted!991 (toList!7501 lm!2325)))))

(declare-fun bs!1164671 () Bool)

(assert (= bs!1164671 d!1546854))

(declare-fun m!5818350 () Bool)

(assert (=> bs!1164671 m!5818350))

(assert (=> start!500996 d!1546854))

(declare-fun e!3016310 () Bool)

(declare-fun d!1546856 () Bool)

(assert (=> d!1546856 (= (contains!18807 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096) key!5594) e!3016310)))

(declare-fun res!2055401 () Bool)

(assert (=> d!1546856 (=> res!2055401 e!3016310)))

(assert (=> d!1546856 (= res!2055401 (containsKey!4388 (_2!32416 (h!61435 (toList!7501 lm!2325))) key!5594))))

(declare-fun lt!1974147 () Unit!143250)

(declare-fun choose!35159 (List!55124 ListMap!6877 K!16684) Unit!143250)

(assert (=> d!1546856 (= lt!1974147 (choose!35159 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096 key!5594))))

(declare-fun noDuplicateKeys!2459 (List!55124) Bool)

(assert (=> d!1546856 (noDuplicateKeys!2459 (_2!32416 (h!61435 (toList!7501 lm!2325))))))

(assert (=> d!1546856 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!30 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096 key!5594) lt!1974147)))

(declare-fun b!4827223 () Bool)

(assert (=> b!4827223 (= e!3016310 (contains!18807 lt!1974096 key!5594))))

(assert (= (and d!1546856 (not res!2055401)) b!4827223))

(declare-fun m!5818396 () Bool)

(assert (=> d!1546856 m!5818396))

(assert (=> d!1546856 m!5818312))

(assert (=> d!1546856 m!5818312))

(assert (=> d!1546856 m!5818314))

(declare-fun m!5818398 () Bool)

(assert (=> d!1546856 m!5818398))

(assert (=> d!1546856 m!5818320))

(assert (=> b!4827223 m!5818328))

(assert (=> b!4827155 d!1546856))

(declare-fun d!1546866 () Bool)

(declare-fun res!2055406 () Bool)

(declare-fun e!3016316 () Bool)

(assert (=> d!1546866 (=> res!2055406 e!3016316)))

(assert (=> d!1546866 (= res!2055406 (and ((_ is Cons!55000) (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325))))) (= (_1!32415 (h!61434 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325)))))) key!5594)))))

(assert (=> d!1546866 (= (containsKey!4388 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325)))) key!5594) e!3016316)))

(declare-fun b!4827230 () Bool)

(declare-fun e!3016317 () Bool)

(assert (=> b!4827230 (= e!3016316 e!3016317)))

(declare-fun res!2055407 () Bool)

(assert (=> b!4827230 (=> (not res!2055407) (not e!3016317))))

(assert (=> b!4827230 (= res!2055407 ((_ is Cons!55000) (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325))))))))

(declare-fun b!4827231 () Bool)

(assert (=> b!4827231 (= e!3016317 (containsKey!4388 (t!362620 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325))))) key!5594))))

(assert (= (and d!1546866 (not res!2055406)) b!4827230))

(assert (= (and b!4827230 res!2055407) b!4827231))

(declare-fun m!5818408 () Bool)

(assert (=> b!4827231 m!5818408))

(assert (=> b!4827155 d!1546866))

(declare-fun d!1546870 () Bool)

(declare-fun res!2055408 () Bool)

(declare-fun e!3016318 () Bool)

(assert (=> d!1546870 (=> res!2055408 e!3016318)))

(assert (=> d!1546870 (= res!2055408 (and ((_ is Cons!55000) (_2!32416 (h!61435 (toList!7501 lm!2325)))) (= (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) key!5594)))))

(assert (=> d!1546870 (= (containsKey!4388 (_2!32416 (h!61435 (toList!7501 lm!2325))) key!5594) e!3016318)))

(declare-fun b!4827232 () Bool)

(declare-fun e!3016319 () Bool)

(assert (=> b!4827232 (= e!3016318 e!3016319)))

(declare-fun res!2055409 () Bool)

(assert (=> b!4827232 (=> (not res!2055409) (not e!3016319))))

(assert (=> b!4827232 (= res!2055409 ((_ is Cons!55000) (_2!32416 (h!61435 (toList!7501 lm!2325)))))))

(declare-fun b!4827233 () Bool)

(assert (=> b!4827233 (= e!3016319 (containsKey!4388 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))) key!5594))))

(assert (= (and d!1546870 (not res!2055408)) b!4827232))

(assert (= (and b!4827232 res!2055409) b!4827233))

(declare-fun m!5818414 () Bool)

(assert (=> b!4827233 m!5818414))

(assert (=> b!4827155 d!1546870))

(declare-fun b!4827277 () Bool)

(assert (=> b!4827277 true))

(declare-fun bs!1164685 () Bool)

(declare-fun b!4827278 () Bool)

(assert (= bs!1164685 (and b!4827278 b!4827277)))

(declare-fun lambda!237113 () Int)

(declare-fun lambda!237112 () Int)

(assert (=> bs!1164685 (= lambda!237113 lambda!237112)))

(assert (=> b!4827278 true))

(declare-fun lambda!237114 () Int)

(declare-fun lt!1974269 () ListMap!6877)

(assert (=> bs!1164685 (= (= lt!1974269 lt!1974096) (= lambda!237114 lambda!237112))))

(assert (=> b!4827278 (= (= lt!1974269 lt!1974096) (= lambda!237114 lambda!237113))))

(assert (=> b!4827278 true))

(declare-fun bs!1164686 () Bool)

(declare-fun d!1546874 () Bool)

(assert (= bs!1164686 (and d!1546874 b!4827277)))

(declare-fun lambda!237115 () Int)

(declare-fun lt!1974264 () ListMap!6877)

(assert (=> bs!1164686 (= (= lt!1974264 lt!1974096) (= lambda!237115 lambda!237112))))

(declare-fun bs!1164687 () Bool)

(assert (= bs!1164687 (and d!1546874 b!4827278)))

(assert (=> bs!1164687 (= (= lt!1974264 lt!1974096) (= lambda!237115 lambda!237113))))

(assert (=> bs!1164687 (= (= lt!1974264 lt!1974269) (= lambda!237115 lambda!237114))))

(assert (=> d!1546874 true))

(declare-fun b!4827275 () Bool)

(declare-fun res!2055434 () Bool)

(declare-fun e!3016348 () Bool)

(assert (=> b!4827275 (=> (not res!2055434) (not e!3016348))))

(declare-fun forall!12630 (List!55124 Int) Bool)

(assert (=> b!4827275 (= res!2055434 (forall!12630 (toList!7502 lt!1974096) lambda!237115))))

(declare-fun call!336470 () Bool)

(declare-fun c!822548 () Bool)

(declare-fun bm!336463 () Bool)

(assert (=> bm!336463 (= call!336470 (forall!12630 (ite c!822548 (toList!7502 lt!1974096) (_2!32416 (h!61435 (toList!7501 lm!2325)))) (ite c!822548 lambda!237112 lambda!237114)))))

(declare-fun b!4827276 () Bool)

(declare-fun invariantList!1817 (List!55124) Bool)

(assert (=> b!4827276 (= e!3016348 (invariantList!1817 (toList!7502 lt!1974264)))))

(declare-fun call!336469 () Bool)

(declare-fun bm!336464 () Bool)

(assert (=> bm!336464 (= call!336469 (forall!12630 (ite c!822548 (toList!7502 lt!1974096) (_2!32416 (h!61435 (toList!7501 lm!2325)))) (ite c!822548 lambda!237112 lambda!237114)))))

(declare-fun e!3016347 () ListMap!6877)

(assert (=> b!4827277 (= e!3016347 lt!1974096)))

(declare-fun lt!1974267 () Unit!143250)

(declare-fun call!336468 () Unit!143250)

(assert (=> b!4827277 (= lt!1974267 call!336468)))

(assert (=> b!4827277 call!336470))

(declare-fun lt!1974279 () Unit!143250)

(assert (=> b!4827277 (= lt!1974279 lt!1974267)))

(assert (=> b!4827277 call!336469))

(declare-fun lt!1974280 () Unit!143250)

(declare-fun Unit!143268 () Unit!143250)

(assert (=> b!4827277 (= lt!1974280 Unit!143268)))

(assert (=> b!4827278 (= e!3016347 lt!1974269)))

(declare-fun lt!1974273 () ListMap!6877)

(declare-fun +!2541 (ListMap!6877 tuple2!58242) ListMap!6877)

(assert (=> b!4827278 (= lt!1974273 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (=> b!4827278 (= lt!1974269 (addToMapMapFromBucket!1806 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))) (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun lt!1974271 () Unit!143250)

(assert (=> b!4827278 (= lt!1974271 call!336468)))

(assert (=> b!4827278 (forall!12630 (toList!7502 lt!1974096) lambda!237113)))

(declare-fun lt!1974278 () Unit!143250)

(assert (=> b!4827278 (= lt!1974278 lt!1974271)))

(assert (=> b!4827278 (forall!12630 (toList!7502 lt!1974273) lambda!237114)))

(declare-fun lt!1974263 () Unit!143250)

(declare-fun Unit!143269 () Unit!143250)

(assert (=> b!4827278 (= lt!1974263 Unit!143269)))

(assert (=> b!4827278 (forall!12630 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))) lambda!237114)))

(declare-fun lt!1974275 () Unit!143250)

(declare-fun Unit!143270 () Unit!143250)

(assert (=> b!4827278 (= lt!1974275 Unit!143270)))

(declare-fun lt!1974265 () Unit!143250)

(declare-fun Unit!143271 () Unit!143250)

(assert (=> b!4827278 (= lt!1974265 Unit!143271)))

(declare-fun lt!1974266 () Unit!143250)

(declare-fun forallContained!4393 (List!55124 Int tuple2!58242) Unit!143250)

(assert (=> b!4827278 (= lt!1974266 (forallContained!4393 (toList!7502 lt!1974273) lambda!237114 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (=> b!4827278 (contains!18807 lt!1974273 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(declare-fun lt!1974276 () Unit!143250)

(declare-fun Unit!143272 () Unit!143250)

(assert (=> b!4827278 (= lt!1974276 Unit!143272)))

(assert (=> b!4827278 (contains!18807 lt!1974269 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(declare-fun lt!1974268 () Unit!143250)

(declare-fun Unit!143273 () Unit!143250)

(assert (=> b!4827278 (= lt!1974268 Unit!143273)))

(assert (=> b!4827278 call!336469))

(declare-fun lt!1974262 () Unit!143250)

(declare-fun Unit!143274 () Unit!143250)

(assert (=> b!4827278 (= lt!1974262 Unit!143274)))

(assert (=> b!4827278 (forall!12630 (toList!7502 lt!1974273) lambda!237114)))

(declare-fun lt!1974270 () Unit!143250)

(declare-fun Unit!143275 () Unit!143250)

(assert (=> b!4827278 (= lt!1974270 Unit!143275)))

(declare-fun lt!1974272 () Unit!143250)

(declare-fun Unit!143276 () Unit!143250)

(assert (=> b!4827278 (= lt!1974272 Unit!143276)))

(declare-fun lt!1974260 () Unit!143250)

(declare-fun addForallContainsKeyThenBeforeAdding!995 (ListMap!6877 ListMap!6877 K!16684 V!16930) Unit!143250)

(assert (=> b!4827278 (= lt!1974260 (addForallContainsKeyThenBeforeAdding!995 lt!1974096 lt!1974269 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (_2!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> b!4827278 (forall!12630 (toList!7502 lt!1974096) lambda!237114)))

(declare-fun lt!1974261 () Unit!143250)

(assert (=> b!4827278 (= lt!1974261 lt!1974260)))

(assert (=> b!4827278 (forall!12630 (toList!7502 lt!1974096) lambda!237114)))

(declare-fun lt!1974274 () Unit!143250)

(declare-fun Unit!143277 () Unit!143250)

(assert (=> b!4827278 (= lt!1974274 Unit!143277)))

(declare-fun res!2055436 () Bool)

(assert (=> b!4827278 (= res!2055436 call!336470)))

(declare-fun e!3016349 () Bool)

(assert (=> b!4827278 (=> (not res!2055436) (not e!3016349))))

(assert (=> b!4827278 e!3016349))

(declare-fun lt!1974277 () Unit!143250)

(declare-fun Unit!143278 () Unit!143250)

(assert (=> b!4827278 (= lt!1974277 Unit!143278)))

(assert (=> d!1546874 e!3016348))

(declare-fun res!2055435 () Bool)

(assert (=> d!1546874 (=> (not res!2055435) (not e!3016348))))

(assert (=> d!1546874 (= res!2055435 (forall!12630 (_2!32416 (h!61435 (toList!7501 lm!2325))) lambda!237115))))

(assert (=> d!1546874 (= lt!1974264 e!3016347)))

(assert (=> d!1546874 (= c!822548 ((_ is Nil!55000) (_2!32416 (h!61435 (toList!7501 lm!2325)))))))

(assert (=> d!1546874 (noDuplicateKeys!2459 (_2!32416 (h!61435 (toList!7501 lm!2325))))))

(assert (=> d!1546874 (= (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096) lt!1974264)))

(declare-fun b!4827279 () Bool)

(assert (=> b!4827279 (= e!3016349 (forall!12630 (toList!7502 lt!1974096) lambda!237114))))

(declare-fun bm!336465 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!996 (ListMap!6877) Unit!143250)

(assert (=> bm!336465 (= call!336468 (lemmaContainsAllItsOwnKeys!996 lt!1974096))))

(assert (= (and d!1546874 c!822548) b!4827277))

(assert (= (and d!1546874 (not c!822548)) b!4827278))

(assert (= (and b!4827278 res!2055436) b!4827279))

(assert (= (or b!4827277 b!4827278) bm!336465))

(assert (= (or b!4827277 b!4827278) bm!336463))

(assert (= (or b!4827277 b!4827278) bm!336464))

(assert (= (and d!1546874 res!2055435) b!4827275))

(assert (= (and b!4827275 res!2055434) b!4827276))

(declare-fun m!5818466 () Bool)

(assert (=> b!4827279 m!5818466))

(declare-fun m!5818468 () Bool)

(assert (=> bm!336464 m!5818468))

(assert (=> bm!336463 m!5818468))

(declare-fun m!5818470 () Bool)

(assert (=> d!1546874 m!5818470))

(assert (=> d!1546874 m!5818398))

(declare-fun m!5818472 () Bool)

(assert (=> b!4827278 m!5818472))

(declare-fun m!5818474 () Bool)

(assert (=> b!4827278 m!5818474))

(assert (=> b!4827278 m!5818466))

(assert (=> b!4827278 m!5818472))

(declare-fun m!5818476 () Bool)

(assert (=> b!4827278 m!5818476))

(declare-fun m!5818478 () Bool)

(assert (=> b!4827278 m!5818478))

(assert (=> b!4827278 m!5818466))

(declare-fun m!5818480 () Bool)

(assert (=> b!4827278 m!5818480))

(declare-fun m!5818482 () Bool)

(assert (=> b!4827278 m!5818482))

(declare-fun m!5818484 () Bool)

(assert (=> b!4827278 m!5818484))

(declare-fun m!5818486 () Bool)

(assert (=> b!4827278 m!5818486))

(assert (=> b!4827278 m!5818484))

(declare-fun m!5818488 () Bool)

(assert (=> b!4827278 m!5818488))

(declare-fun m!5818490 () Bool)

(assert (=> b!4827275 m!5818490))

(declare-fun m!5818492 () Bool)

(assert (=> b!4827276 m!5818492))

(declare-fun m!5818494 () Bool)

(assert (=> bm!336465 m!5818494))

(assert (=> b!4827155 d!1546874))

(declare-fun e!3016365 () Bool)

(declare-fun b!4827300 () Bool)

(declare-datatypes ((List!55127 0))(
  ( (Nil!55003) (Cons!55003 (h!61437 K!16684) (t!362623 List!55127)) )
))
(declare-fun contains!18809 (List!55127 K!16684) Bool)

(declare-fun keys!20243 (ListMap!6877) List!55127)

(assert (=> b!4827300 (= e!3016365 (not (contains!18809 (keys!20243 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594)))))

(declare-fun b!4827301 () Bool)

(assert (=> b!4827301 false))

(declare-fun lt!1974303 () Unit!143250)

(declare-fun lt!1974300 () Unit!143250)

(assert (=> b!4827301 (= lt!1974303 lt!1974300)))

(declare-fun containsKey!4391 (List!55124 K!16684) Bool)

(assert (=> b!4827301 (containsKey!4391 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594)))

(declare-fun lemmaInGetKeysListThenContainsKey!1164 (List!55124 K!16684) Unit!143250)

(assert (=> b!4827301 (= lt!1974300 (lemmaInGetKeysListThenContainsKey!1164 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(declare-fun e!3016362 () Unit!143250)

(declare-fun Unit!143279 () Unit!143250)

(assert (=> b!4827301 (= e!3016362 Unit!143279)))

(declare-fun b!4827302 () Bool)

(declare-fun e!3016364 () List!55127)

(assert (=> b!4827302 (= e!3016364 (keys!20243 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))))

(declare-fun d!1546888 () Bool)

(declare-fun e!3016366 () Bool)

(assert (=> d!1546888 e!3016366))

(declare-fun res!2055444 () Bool)

(assert (=> d!1546888 (=> res!2055444 e!3016366)))

(assert (=> d!1546888 (= res!2055444 e!3016365)))

(declare-fun res!2055443 () Bool)

(assert (=> d!1546888 (=> (not res!2055443) (not e!3016365))))

(declare-fun lt!1974299 () Bool)

(assert (=> d!1546888 (= res!2055443 (not lt!1974299))))

(declare-fun lt!1974298 () Bool)

(assert (=> d!1546888 (= lt!1974299 lt!1974298)))

(declare-fun lt!1974297 () Unit!143250)

(declare-fun e!3016363 () Unit!143250)

(assert (=> d!1546888 (= lt!1974297 e!3016363)))

(declare-fun c!822555 () Bool)

(assert (=> d!1546888 (= c!822555 lt!1974298)))

(assert (=> d!1546888 (= lt!1974298 (containsKey!4391 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(assert (=> d!1546888 (= (contains!18807 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096) key!5594) lt!1974299)))

(declare-fun e!3016367 () Bool)

(declare-fun b!4827303 () Bool)

(assert (=> b!4827303 (= e!3016367 (contains!18809 (keys!20243 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(declare-fun b!4827304 () Bool)

(assert (=> b!4827304 (= e!3016363 e!3016362)))

(declare-fun c!822556 () Bool)

(declare-fun call!336473 () Bool)

(assert (=> b!4827304 (= c!822556 call!336473)))

(declare-fun b!4827305 () Bool)

(declare-fun lt!1974301 () Unit!143250)

(assert (=> b!4827305 (= e!3016363 lt!1974301)))

(declare-fun lt!1974304 () Unit!143250)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2417 (List!55124 K!16684) Unit!143250)

(assert (=> b!4827305 (= lt!1974304 (lemmaContainsKeyImpliesGetValueByKeyDefined!2417 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(declare-datatypes ((Option!13505 0))(
  ( (None!13504) (Some!13504 (v!49189 V!16930)) )
))
(declare-fun isDefined!10620 (Option!13505) Bool)

(declare-fun getValueByKey!2632 (List!55124 K!16684) Option!13505)

(assert (=> b!4827305 (isDefined!10620 (getValueByKey!2632 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(declare-fun lt!1974302 () Unit!143250)

(assert (=> b!4827305 (= lt!1974302 lt!1974304)))

(declare-fun lemmaInListThenGetKeysListContains!1159 (List!55124 K!16684) Unit!143250)

(assert (=> b!4827305 (= lt!1974301 (lemmaInListThenGetKeysListContains!1159 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(assert (=> b!4827305 call!336473))

(declare-fun b!4827306 () Bool)

(assert (=> b!4827306 (= e!3016366 e!3016367)))

(declare-fun res!2055445 () Bool)

(assert (=> b!4827306 (=> (not res!2055445) (not e!3016367))))

(assert (=> b!4827306 (= res!2055445 (isDefined!10620 (getValueByKey!2632 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594)))))

(declare-fun b!4827307 () Bool)

(declare-fun getKeysList!1164 (List!55124) List!55127)

(assert (=> b!4827307 (= e!3016364 (getKeysList!1164 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))

(declare-fun bm!336468 () Bool)

(assert (=> bm!336468 (= call!336473 (contains!18809 e!3016364 key!5594))))

(declare-fun c!822557 () Bool)

(assert (=> bm!336468 (= c!822557 c!822555)))

(declare-fun b!4827308 () Bool)

(declare-fun Unit!143280 () Unit!143250)

(assert (=> b!4827308 (= e!3016362 Unit!143280)))

(assert (= (and d!1546888 c!822555) b!4827305))

(assert (= (and d!1546888 (not c!822555)) b!4827304))

(assert (= (and b!4827304 c!822556) b!4827301))

(assert (= (and b!4827304 (not c!822556)) b!4827308))

(assert (= (or b!4827305 b!4827304) bm!336468))

(assert (= (and bm!336468 c!822557) b!4827307))

(assert (= (and bm!336468 (not c!822557)) b!4827302))

(assert (= (and d!1546888 res!2055443) b!4827300))

(assert (= (and d!1546888 (not res!2055444)) b!4827306))

(assert (= (and b!4827306 res!2055445) b!4827303))

(assert (=> b!4827300 m!5818312))

(declare-fun m!5818496 () Bool)

(assert (=> b!4827300 m!5818496))

(assert (=> b!4827300 m!5818496))

(declare-fun m!5818498 () Bool)

(assert (=> b!4827300 m!5818498))

(declare-fun m!5818500 () Bool)

(assert (=> b!4827301 m!5818500))

(declare-fun m!5818502 () Bool)

(assert (=> b!4827301 m!5818502))

(assert (=> b!4827303 m!5818312))

(assert (=> b!4827303 m!5818496))

(assert (=> b!4827303 m!5818496))

(assert (=> b!4827303 m!5818498))

(declare-fun m!5818504 () Bool)

(assert (=> b!4827306 m!5818504))

(assert (=> b!4827306 m!5818504))

(declare-fun m!5818506 () Bool)

(assert (=> b!4827306 m!5818506))

(assert (=> d!1546888 m!5818500))

(declare-fun m!5818508 () Bool)

(assert (=> bm!336468 m!5818508))

(declare-fun m!5818510 () Bool)

(assert (=> b!4827305 m!5818510))

(assert (=> b!4827305 m!5818504))

(assert (=> b!4827305 m!5818504))

(assert (=> b!4827305 m!5818506))

(declare-fun m!5818512 () Bool)

(assert (=> b!4827305 m!5818512))

(declare-fun m!5818514 () Bool)

(assert (=> b!4827307 m!5818514))

(assert (=> b!4827302 m!5818312))

(assert (=> b!4827302 m!5818496))

(assert (=> b!4827155 d!1546888))

(declare-fun bs!1164688 () Bool)

(declare-fun d!1546890 () Bool)

(assert (= bs!1164688 (and d!1546890 start!500996)))

(declare-fun lambda!237118 () Int)

(assert (=> bs!1164688 (= lambda!237118 lambda!237042)))

(declare-fun lt!1974307 () ListMap!6877)

(assert (=> d!1546890 (invariantList!1817 (toList!7502 lt!1974307))))

(declare-fun e!3016370 () ListMap!6877)

(assert (=> d!1546890 (= lt!1974307 e!3016370)))

(declare-fun c!822560 () Bool)

(assert (=> d!1546890 (= c!822560 ((_ is Cons!55001) (t!362621 (toList!7501 lm!2325))))))

(assert (=> d!1546890 (forall!12628 (t!362621 (toList!7501 lm!2325)) lambda!237118)))

(assert (=> d!1546890 (= (extractMap!2690 (t!362621 (toList!7501 lm!2325))) lt!1974307)))

(declare-fun b!4827313 () Bool)

(assert (=> b!4827313 (= e!3016370 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325)))) (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))))))

(declare-fun b!4827314 () Bool)

(assert (=> b!4827314 (= e!3016370 (ListMap!6878 Nil!55000))))

(assert (= (and d!1546890 c!822560) b!4827313))

(assert (= (and d!1546890 (not c!822560)) b!4827314))

(declare-fun m!5818516 () Bool)

(assert (=> d!1546890 m!5818516))

(declare-fun m!5818518 () Bool)

(assert (=> d!1546890 m!5818518))

(declare-fun m!5818520 () Bool)

(assert (=> b!4827313 m!5818520))

(assert (=> b!4827313 m!5818520))

(declare-fun m!5818522 () Bool)

(assert (=> b!4827313 m!5818522))

(assert (=> b!4827155 d!1546890))

(declare-fun bs!1164689 () Bool)

(declare-fun d!1546892 () Bool)

(assert (= bs!1164689 (and d!1546892 start!500996)))

(declare-fun lambda!237121 () Int)

(assert (=> bs!1164689 (= lambda!237121 lambda!237042)))

(declare-fun bs!1164690 () Bool)

(assert (= bs!1164690 (and d!1546892 d!1546890)))

(assert (=> bs!1164690 (= lambda!237121 lambda!237118)))

(assert (=> d!1546892 (not (containsKey!4388 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325)))) key!5594))))

(declare-fun lt!1974310 () Unit!143250)

(declare-fun choose!35160 (ListLongMap!6019 K!16684 (_ BitVec 64) Hashable!7278) Unit!143250)

(assert (=> d!1546892 (= lt!1974310 (choose!35160 lm!2325 key!5594 (_1!32416 (h!61435 (toList!7501 lm!2325))) hashF!1543))))

(assert (=> d!1546892 (forall!12628 (toList!7501 lm!2325) lambda!237121)))

(assert (=> d!1546892 (= (lemmaNotSameHashThenCannotContainKey!226 lm!2325 key!5594 (_1!32416 (h!61435 (toList!7501 lm!2325))) hashF!1543) lt!1974310)))

(declare-fun bs!1164691 () Bool)

(assert (= bs!1164691 d!1546892))

(assert (=> bs!1164691 m!5818316))

(assert (=> bs!1164691 m!5818316))

(assert (=> bs!1164691 m!5818318))

(declare-fun m!5818524 () Bool)

(assert (=> bs!1164691 m!5818524))

(declare-fun m!5818526 () Bool)

(assert (=> bs!1164691 m!5818526))

(assert (=> b!4827155 d!1546892))

(declare-fun d!1546894 () Bool)

(declare-datatypes ((Option!13506 0))(
  ( (None!13505) (Some!13505 (v!49190 List!55124)) )
))
(declare-fun get!18834 (Option!13506) List!55124)

(declare-fun getValueByKey!2633 (List!55125 (_ BitVec 64)) Option!13506)

(assert (=> d!1546894 (= (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325)))) (get!18834 (getValueByKey!2633 (toList!7501 lm!2325) (_1!32416 (h!61435 (toList!7501 lm!2325))))))))

(declare-fun bs!1164692 () Bool)

(assert (= bs!1164692 d!1546894))

(declare-fun m!5818528 () Bool)

(assert (=> bs!1164692 m!5818528))

(assert (=> bs!1164692 m!5818528))

(declare-fun m!5818530 () Bool)

(assert (=> bs!1164692 m!5818530))

(assert (=> b!4827155 d!1546894))

(declare-fun d!1546896 () Bool)

(declare-fun isEmpty!29665 (List!55125) Bool)

(assert (=> d!1546896 (= (isEmpty!29663 lm!2325) (isEmpty!29665 (toList!7501 lm!2325)))))

(declare-fun bs!1164693 () Bool)

(assert (= bs!1164693 d!1546896))

(declare-fun m!5818532 () Bool)

(assert (=> bs!1164693 m!5818532))

(assert (=> b!4827155 d!1546896))

(declare-fun b!4827315 () Bool)

(declare-fun e!3016374 () Bool)

(assert (=> b!4827315 (= e!3016374 (not (contains!18809 (keys!20243 lt!1974096) key!5594)))))

(declare-fun b!4827316 () Bool)

(assert (=> b!4827316 false))

(declare-fun lt!1974317 () Unit!143250)

(declare-fun lt!1974314 () Unit!143250)

(assert (=> b!4827316 (= lt!1974317 lt!1974314)))

(assert (=> b!4827316 (containsKey!4391 (toList!7502 lt!1974096) key!5594)))

(assert (=> b!4827316 (= lt!1974314 (lemmaInGetKeysListThenContainsKey!1164 (toList!7502 lt!1974096) key!5594))))

(declare-fun e!3016371 () Unit!143250)

(declare-fun Unit!143281 () Unit!143250)

(assert (=> b!4827316 (= e!3016371 Unit!143281)))

(declare-fun b!4827317 () Bool)

(declare-fun e!3016373 () List!55127)

(assert (=> b!4827317 (= e!3016373 (keys!20243 lt!1974096))))

(declare-fun d!1546898 () Bool)

(declare-fun e!3016375 () Bool)

(assert (=> d!1546898 e!3016375))

(declare-fun res!2055447 () Bool)

(assert (=> d!1546898 (=> res!2055447 e!3016375)))

(assert (=> d!1546898 (= res!2055447 e!3016374)))

(declare-fun res!2055446 () Bool)

(assert (=> d!1546898 (=> (not res!2055446) (not e!3016374))))

(declare-fun lt!1974313 () Bool)

(assert (=> d!1546898 (= res!2055446 (not lt!1974313))))

(declare-fun lt!1974312 () Bool)

(assert (=> d!1546898 (= lt!1974313 lt!1974312)))

(declare-fun lt!1974311 () Unit!143250)

(declare-fun e!3016372 () Unit!143250)

(assert (=> d!1546898 (= lt!1974311 e!3016372)))

(declare-fun c!822561 () Bool)

(assert (=> d!1546898 (= c!822561 lt!1974312)))

(assert (=> d!1546898 (= lt!1974312 (containsKey!4391 (toList!7502 lt!1974096) key!5594))))

(assert (=> d!1546898 (= (contains!18807 lt!1974096 key!5594) lt!1974313)))

(declare-fun b!4827318 () Bool)

(declare-fun e!3016376 () Bool)

(assert (=> b!4827318 (= e!3016376 (contains!18809 (keys!20243 lt!1974096) key!5594))))

(declare-fun b!4827319 () Bool)

(assert (=> b!4827319 (= e!3016372 e!3016371)))

(declare-fun c!822562 () Bool)

(declare-fun call!336474 () Bool)

(assert (=> b!4827319 (= c!822562 call!336474)))

(declare-fun b!4827320 () Bool)

(declare-fun lt!1974315 () Unit!143250)

(assert (=> b!4827320 (= e!3016372 lt!1974315)))

(declare-fun lt!1974318 () Unit!143250)

(assert (=> b!4827320 (= lt!1974318 (lemmaContainsKeyImpliesGetValueByKeyDefined!2417 (toList!7502 lt!1974096) key!5594))))

(assert (=> b!4827320 (isDefined!10620 (getValueByKey!2632 (toList!7502 lt!1974096) key!5594))))

(declare-fun lt!1974316 () Unit!143250)

(assert (=> b!4827320 (= lt!1974316 lt!1974318)))

(assert (=> b!4827320 (= lt!1974315 (lemmaInListThenGetKeysListContains!1159 (toList!7502 lt!1974096) key!5594))))

(assert (=> b!4827320 call!336474))

(declare-fun b!4827321 () Bool)

(assert (=> b!4827321 (= e!3016375 e!3016376)))

(declare-fun res!2055448 () Bool)

(assert (=> b!4827321 (=> (not res!2055448) (not e!3016376))))

(assert (=> b!4827321 (= res!2055448 (isDefined!10620 (getValueByKey!2632 (toList!7502 lt!1974096) key!5594)))))

(declare-fun b!4827322 () Bool)

(assert (=> b!4827322 (= e!3016373 (getKeysList!1164 (toList!7502 lt!1974096)))))

(declare-fun bm!336469 () Bool)

(assert (=> bm!336469 (= call!336474 (contains!18809 e!3016373 key!5594))))

(declare-fun c!822563 () Bool)

(assert (=> bm!336469 (= c!822563 c!822561)))

(declare-fun b!4827323 () Bool)

(declare-fun Unit!143282 () Unit!143250)

(assert (=> b!4827323 (= e!3016371 Unit!143282)))

(assert (= (and d!1546898 c!822561) b!4827320))

(assert (= (and d!1546898 (not c!822561)) b!4827319))

(assert (= (and b!4827319 c!822562) b!4827316))

(assert (= (and b!4827319 (not c!822562)) b!4827323))

(assert (= (or b!4827320 b!4827319) bm!336469))

(assert (= (and bm!336469 c!822563) b!4827322))

(assert (= (and bm!336469 (not c!822563)) b!4827317))

(assert (= (and d!1546898 res!2055446) b!4827315))

(assert (= (and d!1546898 (not res!2055447)) b!4827321))

(assert (= (and b!4827321 res!2055448) b!4827318))

(declare-fun m!5818534 () Bool)

(assert (=> b!4827315 m!5818534))

(assert (=> b!4827315 m!5818534))

(declare-fun m!5818536 () Bool)

(assert (=> b!4827315 m!5818536))

(declare-fun m!5818538 () Bool)

(assert (=> b!4827316 m!5818538))

(declare-fun m!5818540 () Bool)

(assert (=> b!4827316 m!5818540))

(assert (=> b!4827318 m!5818534))

(assert (=> b!4827318 m!5818534))

(assert (=> b!4827318 m!5818536))

(declare-fun m!5818542 () Bool)

(assert (=> b!4827321 m!5818542))

(assert (=> b!4827321 m!5818542))

(declare-fun m!5818544 () Bool)

(assert (=> b!4827321 m!5818544))

(assert (=> d!1546898 m!5818538))

(declare-fun m!5818546 () Bool)

(assert (=> bm!336469 m!5818546))

(declare-fun m!5818548 () Bool)

(assert (=> b!4827320 m!5818548))

(assert (=> b!4827320 m!5818542))

(assert (=> b!4827320 m!5818542))

(assert (=> b!4827320 m!5818544))

(declare-fun m!5818550 () Bool)

(assert (=> b!4827320 m!5818550))

(declare-fun m!5818552 () Bool)

(assert (=> b!4827322 m!5818552))

(assert (=> b!4827317 m!5818534))

(assert (=> b!4827153 d!1546898))

(declare-fun bs!1164694 () Bool)

(declare-fun d!1546900 () Bool)

(assert (= bs!1164694 (and d!1546900 start!500996)))

(declare-fun lambda!237124 () Int)

(assert (=> bs!1164694 (not (= lambda!237124 lambda!237042))))

(declare-fun bs!1164695 () Bool)

(assert (= bs!1164695 (and d!1546900 d!1546890)))

(assert (=> bs!1164695 (not (= lambda!237124 lambda!237118))))

(declare-fun bs!1164696 () Bool)

(assert (= bs!1164696 (and d!1546900 d!1546892)))

(assert (=> bs!1164696 (not (= lambda!237124 lambda!237121))))

(assert (=> d!1546900 true))

(assert (=> d!1546900 (= (allKeysSameHashInMap!2594 lm!2325 hashF!1543) (forall!12628 (toList!7501 lm!2325) lambda!237124))))

(declare-fun bs!1164697 () Bool)

(assert (= bs!1164697 d!1546900))

(declare-fun m!5818554 () Bool)

(assert (=> bs!1164697 m!5818554))

(assert (=> b!4827151 d!1546900))

(declare-fun d!1546902 () Bool)

(declare-fun e!3016381 () Bool)

(assert (=> d!1546902 e!3016381))

(declare-fun res!2055451 () Bool)

(assert (=> d!1546902 (=> res!2055451 e!3016381)))

(declare-fun lt!1974328 () Bool)

(assert (=> d!1546902 (= res!2055451 (not lt!1974328))))

(declare-fun lt!1974329 () Bool)

(assert (=> d!1546902 (= lt!1974328 lt!1974329)))

(declare-fun lt!1974327 () Unit!143250)

(declare-fun e!3016382 () Unit!143250)

(assert (=> d!1546902 (= lt!1974327 e!3016382)))

(declare-fun c!822566 () Bool)

(assert (=> d!1546902 (= c!822566 lt!1974329)))

(declare-fun containsKey!4392 (List!55125 (_ BitVec 64)) Bool)

(assert (=> d!1546902 (= lt!1974329 (containsKey!4392 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)))))

(assert (=> d!1546902 (= (contains!18806 lm!2325 (hash!5421 hashF!1543 key!5594)) lt!1974328)))

(declare-fun b!4827332 () Bool)

(declare-fun lt!1974330 () Unit!143250)

(assert (=> b!4827332 (= e!3016382 lt!1974330)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2418 (List!55125 (_ BitVec 64)) Unit!143250)

(assert (=> b!4827332 (= lt!1974330 (lemmaContainsKeyImpliesGetValueByKeyDefined!2418 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)))))

(declare-fun isDefined!10621 (Option!13506) Bool)

(assert (=> b!4827332 (isDefined!10621 (getValueByKey!2633 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)))))

(declare-fun b!4827333 () Bool)

(declare-fun Unit!143283 () Unit!143250)

(assert (=> b!4827333 (= e!3016382 Unit!143283)))

(declare-fun b!4827334 () Bool)

(assert (=> b!4827334 (= e!3016381 (isDefined!10621 (getValueByKey!2633 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594))))))

(assert (= (and d!1546902 c!822566) b!4827332))

(assert (= (and d!1546902 (not c!822566)) b!4827333))

(assert (= (and d!1546902 (not res!2055451)) b!4827334))

(assert (=> d!1546902 m!5818330))

(declare-fun m!5818556 () Bool)

(assert (=> d!1546902 m!5818556))

(assert (=> b!4827332 m!5818330))

(declare-fun m!5818558 () Bool)

(assert (=> b!4827332 m!5818558))

(assert (=> b!4827332 m!5818330))

(declare-fun m!5818560 () Bool)

(assert (=> b!4827332 m!5818560))

(assert (=> b!4827332 m!5818560))

(declare-fun m!5818562 () Bool)

(assert (=> b!4827332 m!5818562))

(assert (=> b!4827334 m!5818330))

(assert (=> b!4827334 m!5818560))

(assert (=> b!4827334 m!5818560))

(assert (=> b!4827334 m!5818562))

(assert (=> b!4827150 d!1546902))

(declare-fun d!1546904 () Bool)

(declare-fun hash!5425 (Hashable!7278 K!16684) (_ BitVec 64))

(assert (=> d!1546904 (= (hash!5421 hashF!1543 key!5594) (hash!5425 hashF!1543 key!5594))))

(declare-fun bs!1164698 () Bool)

(assert (= bs!1164698 d!1546904))

(declare-fun m!5818564 () Bool)

(assert (=> bs!1164698 m!5818564))

(assert (=> b!4827150 d!1546904))

(declare-fun b!4827339 () Bool)

(declare-fun e!3016385 () Bool)

(declare-fun tp!1362689 () Bool)

(declare-fun tp!1362690 () Bool)

(assert (=> b!4827339 (= e!3016385 (and tp!1362689 tp!1362690))))

(assert (=> b!4827154 (= tp!1362678 e!3016385)))

(assert (= (and b!4827154 ((_ is Cons!55001) (toList!7501 lm!2325))) b!4827339))

(declare-fun b_lambda!190059 () Bool)

(assert (= b_lambda!190053 (or start!500996 b_lambda!190059)))

(declare-fun bs!1164699 () Bool)

(declare-fun d!1546906 () Bool)

(assert (= bs!1164699 (and d!1546906 start!500996)))

(assert (=> bs!1164699 (= (dynLambda!22225 lambda!237042 (h!61435 (toList!7501 lm!2325))) (noDuplicateKeys!2459 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))

(assert (=> bs!1164699 m!5818398))

(assert (=> b!4827171 d!1546906))

(check-sat (not b!4827172) (not b!4827302) (not d!1546898) (not b!4827313) (not b!4827223) (not b!4827316) (not bs!1164699) (not bm!336463) (not b!4827332) (not d!1546892) (not bm!336469) (not b_lambda!190059) (not b!4827275) (not d!1546900) (not b!4827315) (not bm!336468) (not b!4827278) (not bm!336464) (not b!4827305) (not d!1546856) (not b!4827307) (not d!1546894) (not b!4827322) (not d!1546874) (not b!4827300) (not b!4827321) (not b!4827233) (not b!4827320) tp_is_empty!34491 (not b!4827231) (not d!1546902) (not d!1546896) (not d!1546904) (not b!4827306) (not b!4827334) (not b!4827276) (not b!4827317) (not bm!336465) (not b!4827303) (not b!4827339) (not d!1546854) (not b!4827279) (not b!4827318) (not d!1546890) (not b!4827301) (not d!1546888))
(check-sat)
(get-model)

(declare-fun d!1546928 () Bool)

(declare-fun noDuplicatedKeys!483 (List!55124) Bool)

(assert (=> d!1546928 (= (invariantList!1817 (toList!7502 lt!1974307)) (noDuplicatedKeys!483 (toList!7502 lt!1974307)))))

(declare-fun bs!1164712 () Bool)

(assert (= bs!1164712 d!1546928))

(declare-fun m!5818660 () Bool)

(assert (=> bs!1164712 m!5818660))

(assert (=> d!1546890 d!1546928))

(declare-fun d!1546930 () Bool)

(declare-fun res!2055488 () Bool)

(declare-fun e!3016419 () Bool)

(assert (=> d!1546930 (=> res!2055488 e!3016419)))

(assert (=> d!1546930 (= res!2055488 ((_ is Nil!55001) (t!362621 (toList!7501 lm!2325))))))

(assert (=> d!1546930 (= (forall!12628 (t!362621 (toList!7501 lm!2325)) lambda!237118) e!3016419)))

(declare-fun b!4827386 () Bool)

(declare-fun e!3016420 () Bool)

(assert (=> b!4827386 (= e!3016419 e!3016420)))

(declare-fun res!2055489 () Bool)

(assert (=> b!4827386 (=> (not res!2055489) (not e!3016420))))

(assert (=> b!4827386 (= res!2055489 (dynLambda!22225 lambda!237118 (h!61435 (t!362621 (toList!7501 lm!2325)))))))

(declare-fun b!4827387 () Bool)

(assert (=> b!4827387 (= e!3016420 (forall!12628 (t!362621 (t!362621 (toList!7501 lm!2325))) lambda!237118))))

(assert (= (and d!1546930 (not res!2055488)) b!4827386))

(assert (= (and b!4827386 res!2055489) b!4827387))

(declare-fun b_lambda!190071 () Bool)

(assert (=> (not b_lambda!190071) (not b!4827386)))

(declare-fun m!5818662 () Bool)

(assert (=> b!4827386 m!5818662))

(declare-fun m!5818664 () Bool)

(assert (=> b!4827387 m!5818664))

(assert (=> d!1546890 d!1546930))

(assert (=> d!1546892 d!1546866))

(assert (=> d!1546892 d!1546894))

(declare-fun d!1546932 () Bool)

(assert (=> d!1546932 (not (containsKey!4388 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325)))) key!5594))))

(assert (=> d!1546932 true))

(declare-fun _$39!445 () Unit!143250)

(assert (=> d!1546932 (= (choose!35160 lm!2325 key!5594 (_1!32416 (h!61435 (toList!7501 lm!2325))) hashF!1543) _$39!445)))

(declare-fun bs!1164713 () Bool)

(assert (= bs!1164713 d!1546932))

(assert (=> bs!1164713 m!5818316))

(assert (=> bs!1164713 m!5818316))

(assert (=> bs!1164713 m!5818318))

(assert (=> d!1546892 d!1546932))

(declare-fun d!1546934 () Bool)

(declare-fun res!2055490 () Bool)

(declare-fun e!3016421 () Bool)

(assert (=> d!1546934 (=> res!2055490 e!3016421)))

(assert (=> d!1546934 (= res!2055490 ((_ is Nil!55001) (toList!7501 lm!2325)))))

(assert (=> d!1546934 (= (forall!12628 (toList!7501 lm!2325) lambda!237121) e!3016421)))

(declare-fun b!4827389 () Bool)

(declare-fun e!3016422 () Bool)

(assert (=> b!4827389 (= e!3016421 e!3016422)))

(declare-fun res!2055491 () Bool)

(assert (=> b!4827389 (=> (not res!2055491) (not e!3016422))))

(assert (=> b!4827389 (= res!2055491 (dynLambda!22225 lambda!237121 (h!61435 (toList!7501 lm!2325))))))

(declare-fun b!4827390 () Bool)

(assert (=> b!4827390 (= e!3016422 (forall!12628 (t!362621 (toList!7501 lm!2325)) lambda!237121))))

(assert (= (and d!1546934 (not res!2055490)) b!4827389))

(assert (= (and b!4827389 res!2055491) b!4827390))

(declare-fun b_lambda!190073 () Bool)

(assert (=> (not b_lambda!190073) (not b!4827389)))

(declare-fun m!5818666 () Bool)

(assert (=> b!4827389 m!5818666))

(declare-fun m!5818668 () Bool)

(assert (=> b!4827390 m!5818668))

(assert (=> d!1546892 d!1546934))

(declare-fun d!1546936 () Bool)

(assert (=> d!1546936 (= (isEmpty!29665 (toList!7501 lm!2325)) ((_ is Nil!55001) (toList!7501 lm!2325)))))

(assert (=> d!1546896 d!1546936))

(declare-fun d!1546938 () Bool)

(declare-fun res!2055492 () Bool)

(declare-fun e!3016423 () Bool)

(assert (=> d!1546938 (=> res!2055492 e!3016423)))

(assert (=> d!1546938 (= res!2055492 (and ((_ is Cons!55000) (t!362620 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325)))))) (= (_1!32415 (h!61434 (t!362620 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325))))))) key!5594)))))

(assert (=> d!1546938 (= (containsKey!4388 (t!362620 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325))))) key!5594) e!3016423)))

(declare-fun b!4827391 () Bool)

(declare-fun e!3016424 () Bool)

(assert (=> b!4827391 (= e!3016423 e!3016424)))

(declare-fun res!2055493 () Bool)

(assert (=> b!4827391 (=> (not res!2055493) (not e!3016424))))

(assert (=> b!4827391 (= res!2055493 ((_ is Cons!55000) (t!362620 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun b!4827392 () Bool)

(assert (=> b!4827392 (= e!3016424 (containsKey!4388 (t!362620 (t!362620 (apply!13357 lm!2325 (_1!32416 (h!61435 (toList!7501 lm!2325)))))) key!5594))))

(assert (= (and d!1546938 (not res!2055492)) b!4827391))

(assert (= (and b!4827391 res!2055493) b!4827392))

(declare-fun m!5818670 () Bool)

(assert (=> b!4827392 m!5818670))

(assert (=> b!4827231 d!1546938))

(declare-fun d!1546940 () Bool)

(declare-fun lt!1974382 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9825 (List!55127) (InoxSet K!16684))

(assert (=> d!1546940 (= lt!1974382 (select (content!9825 e!3016364) key!5594))))

(declare-fun e!3016438 () Bool)

(assert (=> d!1546940 (= lt!1974382 e!3016438)))

(declare-fun res!2055504 () Bool)

(assert (=> d!1546940 (=> (not res!2055504) (not e!3016438))))

(assert (=> d!1546940 (= res!2055504 ((_ is Cons!55003) e!3016364))))

(assert (=> d!1546940 (= (contains!18809 e!3016364 key!5594) lt!1974382)))

(declare-fun b!4827408 () Bool)

(declare-fun e!3016437 () Bool)

(assert (=> b!4827408 (= e!3016438 e!3016437)))

(declare-fun res!2055503 () Bool)

(assert (=> b!4827408 (=> res!2055503 e!3016437)))

(assert (=> b!4827408 (= res!2055503 (= (h!61437 e!3016364) key!5594))))

(declare-fun b!4827409 () Bool)

(assert (=> b!4827409 (= e!3016437 (contains!18809 (t!362623 e!3016364) key!5594))))

(assert (= (and d!1546940 res!2055504) b!4827408))

(assert (= (and b!4827408 (not res!2055503)) b!4827409))

(declare-fun m!5818704 () Bool)

(assert (=> d!1546940 m!5818704))

(declare-fun m!5818706 () Bool)

(assert (=> d!1546940 m!5818706))

(declare-fun m!5818708 () Bool)

(assert (=> b!4827409 m!5818708))

(assert (=> bm!336468 d!1546940))

(declare-fun d!1546948 () Bool)

(declare-fun res!2055505 () Bool)

(declare-fun e!3016439 () Bool)

(assert (=> d!1546948 (=> res!2055505 e!3016439)))

(assert (=> d!1546948 (= res!2055505 ((_ is Nil!55001) (toList!7501 lm!2325)))))

(assert (=> d!1546948 (= (forall!12628 (toList!7501 lm!2325) lambda!237124) e!3016439)))

(declare-fun b!4827410 () Bool)

(declare-fun e!3016440 () Bool)

(assert (=> b!4827410 (= e!3016439 e!3016440)))

(declare-fun res!2055506 () Bool)

(assert (=> b!4827410 (=> (not res!2055506) (not e!3016440))))

(assert (=> b!4827410 (= res!2055506 (dynLambda!22225 lambda!237124 (h!61435 (toList!7501 lm!2325))))))

(declare-fun b!4827411 () Bool)

(assert (=> b!4827411 (= e!3016440 (forall!12628 (t!362621 (toList!7501 lm!2325)) lambda!237124))))

(assert (= (and d!1546948 (not res!2055505)) b!4827410))

(assert (= (and b!4827410 res!2055506) b!4827411))

(declare-fun b_lambda!190077 () Bool)

(assert (=> (not b_lambda!190077) (not b!4827410)))

(declare-fun m!5818710 () Bool)

(assert (=> b!4827410 m!5818710))

(declare-fun m!5818712 () Bool)

(assert (=> b!4827411 m!5818712))

(assert (=> d!1546900 d!1546948))

(declare-fun bs!1164721 () Bool)

(declare-fun d!1546950 () Bool)

(assert (= bs!1164721 (and d!1546950 b!4827277)))

(declare-fun lambda!237142 () Int)

(assert (=> bs!1164721 (= lambda!237142 lambda!237112)))

(declare-fun bs!1164722 () Bool)

(assert (= bs!1164722 (and d!1546950 b!4827278)))

(assert (=> bs!1164722 (= lambda!237142 lambda!237113)))

(assert (=> bs!1164722 (= (= lt!1974096 lt!1974269) (= lambda!237142 lambda!237114))))

(declare-fun bs!1164723 () Bool)

(assert (= bs!1164723 (and d!1546950 d!1546874)))

(assert (=> bs!1164723 (= (= lt!1974096 lt!1974264) (= lambda!237142 lambda!237115))))

(assert (=> d!1546950 true))

(assert (=> d!1546950 (forall!12630 (toList!7502 lt!1974096) lambda!237142)))

(declare-fun lt!1974385 () Unit!143250)

(declare-fun choose!35162 (ListMap!6877) Unit!143250)

(assert (=> d!1546950 (= lt!1974385 (choose!35162 lt!1974096))))

(assert (=> d!1546950 (= (lemmaContainsAllItsOwnKeys!996 lt!1974096) lt!1974385)))

(declare-fun bs!1164724 () Bool)

(assert (= bs!1164724 d!1546950))

(declare-fun m!5818714 () Bool)

(assert (=> bs!1164724 m!5818714))

(declare-fun m!5818716 () Bool)

(assert (=> bs!1164724 m!5818716))

(assert (=> bm!336465 d!1546950))

(declare-fun d!1546952 () Bool)

(declare-fun res!2055515 () Bool)

(declare-fun e!3016447 () Bool)

(assert (=> d!1546952 (=> res!2055515 e!3016447)))

(assert (=> d!1546952 (= res!2055515 ((_ is Nil!55000) (toList!7502 lt!1974096)))))

(assert (=> d!1546952 (= (forall!12630 (toList!7502 lt!1974096) lambda!237114) e!3016447)))

(declare-fun b!4827420 () Bool)

(declare-fun e!3016448 () Bool)

(assert (=> b!4827420 (= e!3016447 e!3016448)))

(declare-fun res!2055516 () Bool)

(assert (=> b!4827420 (=> (not res!2055516) (not e!3016448))))

(declare-fun dynLambda!22227 (Int tuple2!58242) Bool)

(assert (=> b!4827420 (= res!2055516 (dynLambda!22227 lambda!237114 (h!61434 (toList!7502 lt!1974096))))))

(declare-fun b!4827421 () Bool)

(assert (=> b!4827421 (= e!3016448 (forall!12630 (t!362620 (toList!7502 lt!1974096)) lambda!237114))))

(assert (= (and d!1546952 (not res!2055515)) b!4827420))

(assert (= (and b!4827420 res!2055516) b!4827421))

(declare-fun b_lambda!190079 () Bool)

(assert (=> (not b_lambda!190079) (not b!4827420)))

(declare-fun m!5818718 () Bool)

(assert (=> b!4827420 m!5818718))

(declare-fun m!5818720 () Bool)

(assert (=> b!4827421 m!5818720))

(assert (=> b!4827279 d!1546952))

(declare-fun d!1546954 () Bool)

(declare-fun isEmpty!29666 (Option!13506) Bool)

(assert (=> d!1546954 (= (isDefined!10621 (getValueByKey!2633 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594))) (not (isEmpty!29666 (getValueByKey!2633 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)))))))

(declare-fun bs!1164725 () Bool)

(assert (= bs!1164725 d!1546954))

(assert (=> bs!1164725 m!5818560))

(declare-fun m!5818726 () Bool)

(assert (=> bs!1164725 m!5818726))

(assert (=> b!4827334 d!1546954))

(declare-fun d!1546956 () Bool)

(declare-fun c!822578 () Bool)

(assert (=> d!1546956 (= c!822578 (and ((_ is Cons!55001) (toList!7501 lm!2325)) (= (_1!32416 (h!61435 (toList!7501 lm!2325))) (hash!5421 hashF!1543 key!5594))))))

(declare-fun e!3016460 () Option!13506)

(assert (=> d!1546956 (= (getValueByKey!2633 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)) e!3016460)))

(declare-fun b!4827439 () Bool)

(declare-fun e!3016461 () Option!13506)

(assert (=> b!4827439 (= e!3016460 e!3016461)))

(declare-fun c!822579 () Bool)

(assert (=> b!4827439 (= c!822579 (and ((_ is Cons!55001) (toList!7501 lm!2325)) (not (= (_1!32416 (h!61435 (toList!7501 lm!2325))) (hash!5421 hashF!1543 key!5594)))))))

(declare-fun b!4827441 () Bool)

(assert (=> b!4827441 (= e!3016461 None!13505)))

(declare-fun b!4827438 () Bool)

(assert (=> b!4827438 (= e!3016460 (Some!13505 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))

(declare-fun b!4827440 () Bool)

(assert (=> b!4827440 (= e!3016461 (getValueByKey!2633 (t!362621 (toList!7501 lm!2325)) (hash!5421 hashF!1543 key!5594)))))

(assert (= (and d!1546956 c!822578) b!4827438))

(assert (= (and d!1546956 (not c!822578)) b!4827439))

(assert (= (and b!4827439 c!822579) b!4827440))

(assert (= (and b!4827439 (not c!822579)) b!4827441))

(assert (=> b!4827440 m!5818330))

(declare-fun m!5818738 () Bool)

(assert (=> b!4827440 m!5818738))

(assert (=> b!4827334 d!1546956))

(declare-fun d!1546964 () Bool)

(declare-fun res!2055529 () Bool)

(declare-fun e!3016470 () Bool)

(assert (=> d!1546964 (=> res!2055529 e!3016470)))

(assert (=> d!1546964 (= res!2055529 (not ((_ is Cons!55000) (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (=> d!1546964 (= (noDuplicateKeys!2459 (_2!32416 (h!61435 (toList!7501 lm!2325)))) e!3016470)))

(declare-fun b!4827454 () Bool)

(declare-fun e!3016471 () Bool)

(assert (=> b!4827454 (= e!3016470 e!3016471)))

(declare-fun res!2055530 () Bool)

(assert (=> b!4827454 (=> (not res!2055530) (not e!3016471))))

(assert (=> b!4827454 (= res!2055530 (not (containsKey!4388 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))))

(declare-fun b!4827455 () Bool)

(assert (=> b!4827455 (= e!3016471 (noDuplicateKeys!2459 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (= (and d!1546964 (not res!2055529)) b!4827454))

(assert (= (and b!4827454 res!2055530) b!4827455))

(declare-fun m!5818740 () Bool)

(assert (=> b!4827454 m!5818740))

(declare-fun m!5818742 () Bool)

(assert (=> b!4827455 m!5818742))

(assert (=> d!1546856 d!1546964))

(assert (=> d!1546856 d!1546870))

(declare-fun d!1546966 () Bool)

(declare-fun e!3016482 () Bool)

(assert (=> d!1546966 (= (contains!18807 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096) key!5594) e!3016482)))

(declare-fun res!2055533 () Bool)

(assert (=> d!1546966 (=> res!2055533 e!3016482)))

(assert (=> d!1546966 (= res!2055533 (containsKey!4388 (_2!32416 (h!61435 (toList!7501 lm!2325))) key!5594))))

(assert (=> d!1546966 true))

(declare-fun _$29!820 () Unit!143250)

(assert (=> d!1546966 (= (choose!35159 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096 key!5594) _$29!820)))

(declare-fun b!4827474 () Bool)

(assert (=> b!4827474 (= e!3016482 (contains!18807 lt!1974096 key!5594))))

(assert (= (and d!1546966 (not res!2055533)) b!4827474))

(assert (=> d!1546966 m!5818312))

(assert (=> d!1546966 m!5818312))

(assert (=> d!1546966 m!5818314))

(assert (=> d!1546966 m!5818320))

(assert (=> b!4827474 m!5818328))

(assert (=> d!1546856 d!1546966))

(assert (=> d!1546856 d!1546874))

(assert (=> d!1546856 d!1546888))

(declare-fun d!1546976 () Bool)

(declare-fun lt!1974401 () Bool)

(assert (=> d!1546976 (= lt!1974401 (select (content!9825 e!3016373) key!5594))))

(declare-fun e!3016484 () Bool)

(assert (=> d!1546976 (= lt!1974401 e!3016484)))

(declare-fun res!2055535 () Bool)

(assert (=> d!1546976 (=> (not res!2055535) (not e!3016484))))

(assert (=> d!1546976 (= res!2055535 ((_ is Cons!55003) e!3016373))))

(assert (=> d!1546976 (= (contains!18809 e!3016373 key!5594) lt!1974401)))

(declare-fun b!4827475 () Bool)

(declare-fun e!3016483 () Bool)

(assert (=> b!4827475 (= e!3016484 e!3016483)))

(declare-fun res!2055534 () Bool)

(assert (=> b!4827475 (=> res!2055534 e!3016483)))

(assert (=> b!4827475 (= res!2055534 (= (h!61437 e!3016373) key!5594))))

(declare-fun b!4827476 () Bool)

(assert (=> b!4827476 (= e!3016483 (contains!18809 (t!362623 e!3016373) key!5594))))

(assert (= (and d!1546976 res!2055535) b!4827475))

(assert (= (and b!4827475 (not res!2055534)) b!4827476))

(declare-fun m!5818754 () Bool)

(assert (=> d!1546976 m!5818754))

(declare-fun m!5818756 () Bool)

(assert (=> d!1546976 m!5818756))

(declare-fun m!5818758 () Bool)

(assert (=> b!4827476 m!5818758))

(assert (=> bm!336469 d!1546976))

(declare-fun b!4827526 () Bool)

(assert (=> b!4827526 true))

(declare-fun bs!1164744 () Bool)

(declare-fun b!4827528 () Bool)

(assert (= bs!1164744 (and b!4827528 b!4827526)))

(declare-fun lambda!237157 () Int)

(declare-fun lambda!237156 () Int)

(assert (=> bs!1164744 (= (= (Cons!55000 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (= lambda!237157 lambda!237156))))

(assert (=> b!4827528 true))

(declare-fun bs!1164745 () Bool)

(declare-fun b!4827534 () Bool)

(assert (= bs!1164745 (and b!4827534 b!4827526)))

(declare-fun lambda!237158 () Int)

(assert (=> bs!1164745 (= (= (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (= lambda!237158 lambda!237156))))

(declare-fun bs!1164746 () Bool)

(assert (= bs!1164746 (and b!4827534 b!4827528)))

(assert (=> bs!1164746 (= (= (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) (Cons!55000 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))) (= lambda!237158 lambda!237157))))

(assert (=> b!4827534 true))

(assert (=> b!4827526 false))

(declare-fun lt!1974431 () Unit!143250)

(declare-fun forallContained!4394 (List!55127 Int K!16684) Unit!143250)

(assert (=> b!4827526 (= lt!1974431 (forallContained!4394 (getKeysList!1164 (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) lambda!237156 (_1!32415 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))))

(declare-fun e!3016522 () Unit!143250)

(declare-fun Unit!143297 () Unit!143250)

(assert (=> b!4827526 (= e!3016522 Unit!143297)))

(declare-fun b!4827527 () Bool)

(declare-fun e!3016523 () List!55127)

(assert (=> b!4827527 (= e!3016523 Nil!55003)))

(declare-fun d!1546978 () Bool)

(declare-fun e!3016521 () Bool)

(assert (=> d!1546978 e!3016521))

(declare-fun res!2055569 () Bool)

(assert (=> d!1546978 (=> (not res!2055569) (not e!3016521))))

(declare-fun lt!1974428 () List!55127)

(declare-fun noDuplicate!966 (List!55127) Bool)

(assert (=> d!1546978 (= res!2055569 (noDuplicate!966 lt!1974428))))

(assert (=> d!1546978 (= lt!1974428 e!3016523)))

(declare-fun c!822601 () Bool)

(assert (=> d!1546978 (= c!822601 ((_ is Cons!55000) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))

(assert (=> d!1546978 (invariantList!1817 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))))

(assert (=> d!1546978 (= (getKeysList!1164 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) lt!1974428)))

(assert (=> b!4827528 (= e!3016523 (Cons!55003 (_1!32415 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (getKeysList!1164 (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))))

(declare-fun c!822602 () Bool)

(assert (=> b!4827528 (= c!822602 (containsKey!4391 (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (_1!32415 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))))

(declare-fun lt!1974429 () Unit!143250)

(declare-fun e!3016520 () Unit!143250)

(assert (=> b!4827528 (= lt!1974429 e!3016520)))

(declare-fun c!822600 () Bool)

(assert (=> b!4827528 (= c!822600 (contains!18809 (getKeysList!1164 (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (_1!32415 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))))

(declare-fun lt!1974433 () Unit!143250)

(assert (=> b!4827528 (= lt!1974433 e!3016522)))

(declare-fun lt!1974427 () List!55127)

(assert (=> b!4827528 (= lt!1974427 (getKeysList!1164 (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))))))

(declare-fun lt!1974430 () Unit!143250)

(declare-fun lemmaForallContainsAddHeadPreserves!379 (List!55124 List!55127 tuple2!58242) Unit!143250)

(assert (=> b!4827528 (= lt!1974430 (lemmaForallContainsAddHeadPreserves!379 (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) lt!1974427 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))))))

(declare-fun forall!12632 (List!55127 Int) Bool)

(assert (=> b!4827528 (forall!12632 lt!1974427 lambda!237157)))

(declare-fun lt!1974432 () Unit!143250)

(assert (=> b!4827528 (= lt!1974432 lt!1974430)))

(declare-fun b!4827529 () Bool)

(declare-fun Unit!143298 () Unit!143250)

(assert (=> b!4827529 (= e!3016520 Unit!143298)))

(declare-fun b!4827530 () Bool)

(assert (=> b!4827530 false))

(declare-fun Unit!143299 () Unit!143250)

(assert (=> b!4827530 (= e!3016520 Unit!143299)))

(declare-fun lambda!237159 () Int)

(declare-fun b!4827531 () Bool)

(declare-fun map!12591 (List!55124 Int) List!55127)

(assert (=> b!4827531 (= e!3016521 (= (content!9825 lt!1974428) (content!9825 (map!12591 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) lambda!237159))))))

(declare-fun b!4827532 () Bool)

(declare-fun res!2055570 () Bool)

(assert (=> b!4827532 (=> (not res!2055570) (not e!3016521))))

(declare-fun length!788 (List!55127) Int)

(declare-fun length!789 (List!55124) Int)

(assert (=> b!4827532 (= res!2055570 (= (length!788 lt!1974428) (length!789 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))))))

(declare-fun b!4827533 () Bool)

(declare-fun Unit!143300 () Unit!143250)

(assert (=> b!4827533 (= e!3016522 Unit!143300)))

(declare-fun res!2055571 () Bool)

(assert (=> b!4827534 (=> (not res!2055571) (not e!3016521))))

(assert (=> b!4827534 (= res!2055571 (forall!12632 lt!1974428 lambda!237158))))

(assert (= (and d!1546978 c!822601) b!4827528))

(assert (= (and d!1546978 (not c!822601)) b!4827527))

(assert (= (and b!4827528 c!822602) b!4827530))

(assert (= (and b!4827528 (not c!822602)) b!4827529))

(assert (= (and b!4827528 c!822600) b!4827526))

(assert (= (and b!4827528 (not c!822600)) b!4827533))

(assert (= (and d!1546978 res!2055569) b!4827532))

(assert (= (and b!4827532 res!2055570) b!4827534))

(assert (= (and b!4827534 res!2055571) b!4827531))

(declare-fun m!5818826 () Bool)

(assert (=> b!4827526 m!5818826))

(assert (=> b!4827526 m!5818826))

(declare-fun m!5818828 () Bool)

(assert (=> b!4827526 m!5818828))

(declare-fun m!5818830 () Bool)

(assert (=> b!4827532 m!5818830))

(declare-fun m!5818832 () Bool)

(assert (=> b!4827532 m!5818832))

(declare-fun m!5818834 () Bool)

(assert (=> d!1546978 m!5818834))

(declare-fun m!5818836 () Bool)

(assert (=> d!1546978 m!5818836))

(declare-fun m!5818838 () Bool)

(assert (=> b!4827528 m!5818838))

(declare-fun m!5818840 () Bool)

(assert (=> b!4827528 m!5818840))

(assert (=> b!4827528 m!5818826))

(declare-fun m!5818842 () Bool)

(assert (=> b!4827528 m!5818842))

(assert (=> b!4827528 m!5818826))

(declare-fun m!5818844 () Bool)

(assert (=> b!4827528 m!5818844))

(declare-fun m!5818846 () Bool)

(assert (=> b!4827534 m!5818846))

(declare-fun m!5818848 () Bool)

(assert (=> b!4827531 m!5818848))

(declare-fun m!5818850 () Bool)

(assert (=> b!4827531 m!5818850))

(assert (=> b!4827531 m!5818850))

(declare-fun m!5818852 () Bool)

(assert (=> b!4827531 m!5818852))

(assert (=> b!4827307 d!1546978))

(declare-fun d!1547014 () Bool)

(declare-fun isEmpty!29667 (Option!13505) Bool)

(assert (=> d!1547014 (= (isDefined!10620 (getValueByKey!2632 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594)) (not (isEmpty!29667 (getValueByKey!2632 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))))

(declare-fun bs!1164747 () Bool)

(assert (= bs!1164747 d!1547014))

(assert (=> bs!1164747 m!5818504))

(declare-fun m!5818854 () Bool)

(assert (=> bs!1164747 m!5818854))

(assert (=> b!4827306 d!1547014))

(declare-fun b!4827553 () Bool)

(declare-fun e!3016534 () Option!13505)

(assert (=> b!4827553 (= e!3016534 None!13504)))

(declare-fun b!4827551 () Bool)

(declare-fun e!3016533 () Option!13505)

(assert (=> b!4827551 (= e!3016533 e!3016534)))

(declare-fun c!822608 () Bool)

(assert (=> b!4827551 (= c!822608 (and ((_ is Cons!55000) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (not (= (_1!32415 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) key!5594))))))

(declare-fun c!822607 () Bool)

(declare-fun d!1547016 () Bool)

(assert (=> d!1547016 (= c!822607 (and ((_ is Cons!55000) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= (_1!32415 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) key!5594)))))

(assert (=> d!1547016 (= (getValueByKey!2632 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594) e!3016533)))

(declare-fun b!4827552 () Bool)

(assert (=> b!4827552 (= e!3016534 (getValueByKey!2632 (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) key!5594))))

(declare-fun b!4827550 () Bool)

(assert (=> b!4827550 (= e!3016533 (Some!13504 (_2!32415 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))))

(assert (= (and d!1547016 c!822607) b!4827550))

(assert (= (and d!1547016 (not c!822607)) b!4827551))

(assert (= (and b!4827551 c!822608) b!4827552))

(assert (= (and b!4827551 (not c!822608)) b!4827553))

(declare-fun m!5818860 () Bool)

(assert (=> b!4827552 m!5818860))

(assert (=> b!4827306 d!1547016))

(declare-fun d!1547022 () Bool)

(assert (=> d!1547022 (dynLambda!22227 lambda!237114 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))

(declare-fun lt!1974436 () Unit!143250)

(declare-fun choose!35164 (List!55124 Int tuple2!58242) Unit!143250)

(assert (=> d!1547022 (= lt!1974436 (choose!35164 (toList!7502 lt!1974273) lambda!237114 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(declare-fun e!3016537 () Bool)

(assert (=> d!1547022 e!3016537))

(declare-fun res!2055579 () Bool)

(assert (=> d!1547022 (=> (not res!2055579) (not e!3016537))))

(assert (=> d!1547022 (= res!2055579 (forall!12630 (toList!7502 lt!1974273) lambda!237114))))

(assert (=> d!1547022 (= (forallContained!4393 (toList!7502 lt!1974273) lambda!237114 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974436)))

(declare-fun b!4827556 () Bool)

(declare-fun contains!18811 (List!55124 tuple2!58242) Bool)

(assert (=> b!4827556 (= e!3016537 (contains!18811 (toList!7502 lt!1974273) (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (= (and d!1547022 res!2055579) b!4827556))

(declare-fun b_lambda!190087 () Bool)

(assert (=> (not b_lambda!190087) (not d!1547022)))

(declare-fun m!5818862 () Bool)

(assert (=> d!1547022 m!5818862))

(declare-fun m!5818864 () Bool)

(assert (=> d!1547022 m!5818864))

(assert (=> d!1547022 m!5818472))

(declare-fun m!5818866 () Bool)

(assert (=> b!4827556 m!5818866))

(assert (=> b!4827278 d!1547022))

(assert (=> b!4827278 d!1546952))

(declare-fun d!1547024 () Bool)

(declare-fun e!3016546 () Bool)

(assert (=> d!1547024 e!3016546))

(declare-fun res!2055584 () Bool)

(assert (=> d!1547024 (=> (not res!2055584) (not e!3016546))))

(declare-fun lt!1974454 () ListMap!6877)

(assert (=> d!1547024 (= res!2055584 (contains!18807 lt!1974454 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun lt!1974455 () List!55124)

(assert (=> d!1547024 (= lt!1974454 (ListMap!6878 lt!1974455))))

(declare-fun lt!1974456 () Unit!143250)

(declare-fun lt!1974453 () Unit!143250)

(assert (=> d!1547024 (= lt!1974456 lt!1974453)))

(assert (=> d!1547024 (= (getValueByKey!2632 lt!1974455 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (Some!13504 (_2!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1222 (List!55124 K!16684 V!16930) Unit!143250)

(assert (=> d!1547024 (= lt!1974453 (lemmaContainsTupThenGetReturnValue!1222 lt!1974455 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (_2!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun insertNoDuplicatedKeys!730 (List!55124 K!16684 V!16930) List!55124)

(assert (=> d!1547024 (= lt!1974455 (insertNoDuplicatedKeys!730 (toList!7502 lt!1974096) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (_2!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> d!1547024 (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974454)))

(declare-fun b!4827573 () Bool)

(declare-fun res!2055585 () Bool)

(assert (=> b!4827573 (=> (not res!2055585) (not e!3016546))))

(assert (=> b!4827573 (= res!2055585 (= (getValueByKey!2632 (toList!7502 lt!1974454) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (Some!13504 (_2!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))))

(declare-fun b!4827574 () Bool)

(assert (=> b!4827574 (= e!3016546 (contains!18811 (toList!7502 lt!1974454) (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (= (and d!1547024 res!2055584) b!4827573))

(assert (= (and b!4827573 res!2055585) b!4827574))

(declare-fun m!5818868 () Bool)

(assert (=> d!1547024 m!5818868))

(declare-fun m!5818870 () Bool)

(assert (=> d!1547024 m!5818870))

(declare-fun m!5818872 () Bool)

(assert (=> d!1547024 m!5818872))

(declare-fun m!5818874 () Bool)

(assert (=> d!1547024 m!5818874))

(declare-fun m!5818876 () Bool)

(assert (=> b!4827573 m!5818876))

(declare-fun m!5818878 () Bool)

(assert (=> b!4827574 m!5818878))

(assert (=> b!4827278 d!1547024))

(declare-fun d!1547026 () Bool)

(declare-fun res!2055586 () Bool)

(declare-fun e!3016547 () Bool)

(assert (=> d!1547026 (=> res!2055586 e!3016547)))

(assert (=> d!1547026 (= res!2055586 ((_ is Nil!55000) (toList!7502 lt!1974096)))))

(assert (=> d!1547026 (= (forall!12630 (toList!7502 lt!1974096) lambda!237113) e!3016547)))

(declare-fun b!4827575 () Bool)

(declare-fun e!3016548 () Bool)

(assert (=> b!4827575 (= e!3016547 e!3016548)))

(declare-fun res!2055587 () Bool)

(assert (=> b!4827575 (=> (not res!2055587) (not e!3016548))))

(assert (=> b!4827575 (= res!2055587 (dynLambda!22227 lambda!237113 (h!61434 (toList!7502 lt!1974096))))))

(declare-fun b!4827576 () Bool)

(assert (=> b!4827576 (= e!3016548 (forall!12630 (t!362620 (toList!7502 lt!1974096)) lambda!237113))))

(assert (= (and d!1547026 (not res!2055586)) b!4827575))

(assert (= (and b!4827575 res!2055587) b!4827576))

(declare-fun b_lambda!190089 () Bool)

(assert (=> (not b_lambda!190089) (not b!4827575)))

(declare-fun m!5818880 () Bool)

(assert (=> b!4827575 m!5818880))

(declare-fun m!5818882 () Bool)

(assert (=> b!4827576 m!5818882))

(assert (=> b!4827278 d!1547026))

(declare-fun d!1547028 () Bool)

(declare-fun res!2055588 () Bool)

(declare-fun e!3016549 () Bool)

(assert (=> d!1547028 (=> res!2055588 e!3016549)))

(assert (=> d!1547028 (= res!2055588 ((_ is Nil!55000) (toList!7502 lt!1974273)))))

(assert (=> d!1547028 (= (forall!12630 (toList!7502 lt!1974273) lambda!237114) e!3016549)))

(declare-fun b!4827577 () Bool)

(declare-fun e!3016550 () Bool)

(assert (=> b!4827577 (= e!3016549 e!3016550)))

(declare-fun res!2055589 () Bool)

(assert (=> b!4827577 (=> (not res!2055589) (not e!3016550))))

(assert (=> b!4827577 (= res!2055589 (dynLambda!22227 lambda!237114 (h!61434 (toList!7502 lt!1974273))))))

(declare-fun b!4827578 () Bool)

(assert (=> b!4827578 (= e!3016550 (forall!12630 (t!362620 (toList!7502 lt!1974273)) lambda!237114))))

(assert (= (and d!1547028 (not res!2055588)) b!4827577))

(assert (= (and b!4827577 res!2055589) b!4827578))

(declare-fun b_lambda!190091 () Bool)

(assert (=> (not b_lambda!190091) (not b!4827577)))

(declare-fun m!5818884 () Bool)

(assert (=> b!4827577 m!5818884))

(declare-fun m!5818886 () Bool)

(assert (=> b!4827578 m!5818886))

(assert (=> b!4827278 d!1547028))

(declare-fun bs!1164759 () Bool)

(declare-fun d!1547030 () Bool)

(assert (= bs!1164759 (and d!1547030 b!4827278)))

(declare-fun lambda!237176 () Int)

(assert (=> bs!1164759 (= lambda!237176 lambda!237114)))

(declare-fun bs!1164760 () Bool)

(assert (= bs!1164760 (and d!1547030 d!1546950)))

(assert (=> bs!1164760 (= (= lt!1974269 lt!1974096) (= lambda!237176 lambda!237142))))

(assert (=> bs!1164759 (= (= lt!1974269 lt!1974096) (= lambda!237176 lambda!237113))))

(declare-fun bs!1164761 () Bool)

(assert (= bs!1164761 (and d!1547030 b!4827277)))

(assert (=> bs!1164761 (= (= lt!1974269 lt!1974096) (= lambda!237176 lambda!237112))))

(declare-fun bs!1164762 () Bool)

(assert (= bs!1164762 (and d!1547030 d!1546874)))

(assert (=> bs!1164762 (= (= lt!1974269 lt!1974264) (= lambda!237176 lambda!237115))))

(assert (=> d!1547030 true))

(assert (=> d!1547030 (forall!12630 (toList!7502 lt!1974096) lambda!237176)))

(declare-fun lt!1974472 () Unit!143250)

(declare-fun choose!35165 (ListMap!6877 ListMap!6877 K!16684 V!16930) Unit!143250)

(assert (=> d!1547030 (= lt!1974472 (choose!35165 lt!1974096 lt!1974269 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (_2!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> d!1547030 (forall!12630 (toList!7502 (+!2541 lt!1974096 (tuple2!58243 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (_2!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))) lambda!237176)))

(assert (=> d!1547030 (= (addForallContainsKeyThenBeforeAdding!995 lt!1974096 lt!1974269 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (_2!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) lt!1974472)))

(declare-fun bs!1164763 () Bool)

(assert (= bs!1164763 d!1547030))

(declare-fun m!5818912 () Bool)

(assert (=> bs!1164763 m!5818912))

(declare-fun m!5818914 () Bool)

(assert (=> bs!1164763 m!5818914))

(declare-fun m!5818918 () Bool)

(assert (=> bs!1164763 m!5818918))

(declare-fun m!5818920 () Bool)

(assert (=> bs!1164763 m!5818920))

(assert (=> b!4827278 d!1547030))

(declare-fun b!4827599 () Bool)

(declare-fun e!3016562 () Bool)

(assert (=> b!4827599 (= e!3016562 (not (contains!18809 (keys!20243 lt!1974269) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))))

(declare-fun b!4827600 () Bool)

(assert (=> b!4827600 false))

(declare-fun lt!1974479 () Unit!143250)

(declare-fun lt!1974476 () Unit!143250)

(assert (=> b!4827600 (= lt!1974479 lt!1974476)))

(assert (=> b!4827600 (containsKey!4391 (toList!7502 lt!1974269) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (=> b!4827600 (= lt!1974476 (lemmaInGetKeysListThenContainsKey!1164 (toList!7502 lt!1974269) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun e!3016559 () Unit!143250)

(declare-fun Unit!143303 () Unit!143250)

(assert (=> b!4827600 (= e!3016559 Unit!143303)))

(declare-fun b!4827601 () Bool)

(declare-fun e!3016561 () List!55127)

(assert (=> b!4827601 (= e!3016561 (keys!20243 lt!1974269))))

(declare-fun d!1547036 () Bool)

(declare-fun e!3016563 () Bool)

(assert (=> d!1547036 e!3016563))

(declare-fun res!2055602 () Bool)

(assert (=> d!1547036 (=> res!2055602 e!3016563)))

(assert (=> d!1547036 (= res!2055602 e!3016562)))

(declare-fun res!2055601 () Bool)

(assert (=> d!1547036 (=> (not res!2055601) (not e!3016562))))

(declare-fun lt!1974475 () Bool)

(assert (=> d!1547036 (= res!2055601 (not lt!1974475))))

(declare-fun lt!1974474 () Bool)

(assert (=> d!1547036 (= lt!1974475 lt!1974474)))

(declare-fun lt!1974473 () Unit!143250)

(declare-fun e!3016560 () Unit!143250)

(assert (=> d!1547036 (= lt!1974473 e!3016560)))

(declare-fun c!822618 () Bool)

(assert (=> d!1547036 (= c!822618 lt!1974474)))

(assert (=> d!1547036 (= lt!1974474 (containsKey!4391 (toList!7502 lt!1974269) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> d!1547036 (= (contains!18807 lt!1974269 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) lt!1974475)))

(declare-fun b!4827602 () Bool)

(declare-fun e!3016564 () Bool)

(assert (=> b!4827602 (= e!3016564 (contains!18809 (keys!20243 lt!1974269) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun b!4827603 () Bool)

(assert (=> b!4827603 (= e!3016560 e!3016559)))

(declare-fun c!822619 () Bool)

(declare-fun call!336480 () Bool)

(assert (=> b!4827603 (= c!822619 call!336480)))

(declare-fun b!4827604 () Bool)

(declare-fun lt!1974477 () Unit!143250)

(assert (=> b!4827604 (= e!3016560 lt!1974477)))

(declare-fun lt!1974480 () Unit!143250)

(assert (=> b!4827604 (= lt!1974480 (lemmaContainsKeyImpliesGetValueByKeyDefined!2417 (toList!7502 lt!1974269) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> b!4827604 (isDefined!10620 (getValueByKey!2632 (toList!7502 lt!1974269) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun lt!1974478 () Unit!143250)

(assert (=> b!4827604 (= lt!1974478 lt!1974480)))

(assert (=> b!4827604 (= lt!1974477 (lemmaInListThenGetKeysListContains!1159 (toList!7502 lt!1974269) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> b!4827604 call!336480))

(declare-fun b!4827605 () Bool)

(assert (=> b!4827605 (= e!3016563 e!3016564)))

(declare-fun res!2055603 () Bool)

(assert (=> b!4827605 (=> (not res!2055603) (not e!3016564))))

(assert (=> b!4827605 (= res!2055603 (isDefined!10620 (getValueByKey!2632 (toList!7502 lt!1974269) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))))

(declare-fun b!4827606 () Bool)

(assert (=> b!4827606 (= e!3016561 (getKeysList!1164 (toList!7502 lt!1974269)))))

(declare-fun bm!336475 () Bool)

(assert (=> bm!336475 (= call!336480 (contains!18809 e!3016561 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun c!822620 () Bool)

(assert (=> bm!336475 (= c!822620 c!822618)))

(declare-fun b!4827607 () Bool)

(declare-fun Unit!143304 () Unit!143250)

(assert (=> b!4827607 (= e!3016559 Unit!143304)))

(assert (= (and d!1547036 c!822618) b!4827604))

(assert (= (and d!1547036 (not c!822618)) b!4827603))

(assert (= (and b!4827603 c!822619) b!4827600))

(assert (= (and b!4827603 (not c!822619)) b!4827607))

(assert (= (or b!4827604 b!4827603) bm!336475))

(assert (= (and bm!336475 c!822620) b!4827606))

(assert (= (and bm!336475 (not c!822620)) b!4827601))

(assert (= (and d!1547036 res!2055601) b!4827599))

(assert (= (and d!1547036 (not res!2055602)) b!4827605))

(assert (= (and b!4827605 res!2055603) b!4827602))

(declare-fun m!5818922 () Bool)

(assert (=> b!4827599 m!5818922))

(assert (=> b!4827599 m!5818922))

(declare-fun m!5818924 () Bool)

(assert (=> b!4827599 m!5818924))

(declare-fun m!5818926 () Bool)

(assert (=> b!4827600 m!5818926))

(declare-fun m!5818928 () Bool)

(assert (=> b!4827600 m!5818928))

(assert (=> b!4827602 m!5818922))

(assert (=> b!4827602 m!5818922))

(assert (=> b!4827602 m!5818924))

(declare-fun m!5818930 () Bool)

(assert (=> b!4827605 m!5818930))

(assert (=> b!4827605 m!5818930))

(declare-fun m!5818932 () Bool)

(assert (=> b!4827605 m!5818932))

(assert (=> d!1547036 m!5818926))

(declare-fun m!5818934 () Bool)

(assert (=> bm!336475 m!5818934))

(declare-fun m!5818936 () Bool)

(assert (=> b!4827604 m!5818936))

(assert (=> b!4827604 m!5818930))

(assert (=> b!4827604 m!5818930))

(assert (=> b!4827604 m!5818932))

(declare-fun m!5818938 () Bool)

(assert (=> b!4827604 m!5818938))

(declare-fun m!5818940 () Bool)

(assert (=> b!4827606 m!5818940))

(assert (=> b!4827601 m!5818922))

(assert (=> b!4827278 d!1547036))

(declare-fun d!1547038 () Bool)

(declare-fun res!2055604 () Bool)

(declare-fun e!3016565 () Bool)

(assert (=> d!1547038 (=> res!2055604 e!3016565)))

(assert (=> d!1547038 (= res!2055604 ((_ is Nil!55000) (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (=> d!1547038 (= (forall!12630 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))) lambda!237114) e!3016565)))

(declare-fun b!4827608 () Bool)

(declare-fun e!3016566 () Bool)

(assert (=> b!4827608 (= e!3016565 e!3016566)))

(declare-fun res!2055605 () Bool)

(assert (=> b!4827608 (=> (not res!2055605) (not e!3016566))))

(assert (=> b!4827608 (= res!2055605 (dynLambda!22227 lambda!237114 (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun b!4827609 () Bool)

(assert (=> b!4827609 (= e!3016566 (forall!12630 (t!362620 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lambda!237114))))

(assert (= (and d!1547038 (not res!2055604)) b!4827608))

(assert (= (and b!4827608 res!2055605) b!4827609))

(declare-fun b_lambda!190093 () Bool)

(assert (=> (not b_lambda!190093) (not b!4827608)))

(declare-fun m!5818944 () Bool)

(assert (=> b!4827608 m!5818944))

(declare-fun m!5818946 () Bool)

(assert (=> b!4827609 m!5818946))

(assert (=> b!4827278 d!1547038))

(declare-fun b!4827610 () Bool)

(declare-fun e!3016570 () Bool)

(assert (=> b!4827610 (= e!3016570 (not (contains!18809 (keys!20243 lt!1974273) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))))

(declare-fun b!4827611 () Bool)

(assert (=> b!4827611 false))

(declare-fun lt!1974490 () Unit!143250)

(declare-fun lt!1974487 () Unit!143250)

(assert (=> b!4827611 (= lt!1974490 lt!1974487)))

(assert (=> b!4827611 (containsKey!4391 (toList!7502 lt!1974273) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (=> b!4827611 (= lt!1974487 (lemmaInGetKeysListThenContainsKey!1164 (toList!7502 lt!1974273) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun e!3016567 () Unit!143250)

(declare-fun Unit!143305 () Unit!143250)

(assert (=> b!4827611 (= e!3016567 Unit!143305)))

(declare-fun b!4827612 () Bool)

(declare-fun e!3016569 () List!55127)

(assert (=> b!4827612 (= e!3016569 (keys!20243 lt!1974273))))

(declare-fun d!1547042 () Bool)

(declare-fun e!3016571 () Bool)

(assert (=> d!1547042 e!3016571))

(declare-fun res!2055607 () Bool)

(assert (=> d!1547042 (=> res!2055607 e!3016571)))

(assert (=> d!1547042 (= res!2055607 e!3016570)))

(declare-fun res!2055606 () Bool)

(assert (=> d!1547042 (=> (not res!2055606) (not e!3016570))))

(declare-fun lt!1974486 () Bool)

(assert (=> d!1547042 (= res!2055606 (not lt!1974486))))

(declare-fun lt!1974485 () Bool)

(assert (=> d!1547042 (= lt!1974486 lt!1974485)))

(declare-fun lt!1974484 () Unit!143250)

(declare-fun e!3016568 () Unit!143250)

(assert (=> d!1547042 (= lt!1974484 e!3016568)))

(declare-fun c!822621 () Bool)

(assert (=> d!1547042 (= c!822621 lt!1974485)))

(assert (=> d!1547042 (= lt!1974485 (containsKey!4391 (toList!7502 lt!1974273) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> d!1547042 (= (contains!18807 lt!1974273 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) lt!1974486)))

(declare-fun b!4827613 () Bool)

(declare-fun e!3016572 () Bool)

(assert (=> b!4827613 (= e!3016572 (contains!18809 (keys!20243 lt!1974273) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun b!4827614 () Bool)

(assert (=> b!4827614 (= e!3016568 e!3016567)))

(declare-fun c!822622 () Bool)

(declare-fun call!336481 () Bool)

(assert (=> b!4827614 (= c!822622 call!336481)))

(declare-fun b!4827615 () Bool)

(declare-fun lt!1974488 () Unit!143250)

(assert (=> b!4827615 (= e!3016568 lt!1974488)))

(declare-fun lt!1974491 () Unit!143250)

(assert (=> b!4827615 (= lt!1974491 (lemmaContainsKeyImpliesGetValueByKeyDefined!2417 (toList!7502 lt!1974273) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> b!4827615 (isDefined!10620 (getValueByKey!2632 (toList!7502 lt!1974273) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun lt!1974489 () Unit!143250)

(assert (=> b!4827615 (= lt!1974489 lt!1974491)))

(assert (=> b!4827615 (= lt!1974488 (lemmaInListThenGetKeysListContains!1159 (toList!7502 lt!1974273) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> b!4827615 call!336481))

(declare-fun b!4827616 () Bool)

(assert (=> b!4827616 (= e!3016571 e!3016572)))

(declare-fun res!2055608 () Bool)

(assert (=> b!4827616 (=> (not res!2055608) (not e!3016572))))

(assert (=> b!4827616 (= res!2055608 (isDefined!10620 (getValueByKey!2632 (toList!7502 lt!1974273) (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))))

(declare-fun b!4827617 () Bool)

(assert (=> b!4827617 (= e!3016569 (getKeysList!1164 (toList!7502 lt!1974273)))))

(declare-fun bm!336476 () Bool)

(assert (=> bm!336476 (= call!336481 (contains!18809 e!3016569 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun c!822623 () Bool)

(assert (=> bm!336476 (= c!822623 c!822621)))

(declare-fun b!4827618 () Bool)

(declare-fun Unit!143306 () Unit!143250)

(assert (=> b!4827618 (= e!3016567 Unit!143306)))

(assert (= (and d!1547042 c!822621) b!4827615))

(assert (= (and d!1547042 (not c!822621)) b!4827614))

(assert (= (and b!4827614 c!822622) b!4827611))

(assert (= (and b!4827614 (not c!822622)) b!4827618))

(assert (= (or b!4827615 b!4827614) bm!336476))

(assert (= (and bm!336476 c!822623) b!4827617))

(assert (= (and bm!336476 (not c!822623)) b!4827612))

(assert (= (and d!1547042 res!2055606) b!4827610))

(assert (= (and d!1547042 (not res!2055607)) b!4827616))

(assert (= (and b!4827616 res!2055608) b!4827613))

(declare-fun m!5818948 () Bool)

(assert (=> b!4827610 m!5818948))

(assert (=> b!4827610 m!5818948))

(declare-fun m!5818950 () Bool)

(assert (=> b!4827610 m!5818950))

(declare-fun m!5818952 () Bool)

(assert (=> b!4827611 m!5818952))

(declare-fun m!5818954 () Bool)

(assert (=> b!4827611 m!5818954))

(assert (=> b!4827613 m!5818948))

(assert (=> b!4827613 m!5818948))

(assert (=> b!4827613 m!5818950))

(declare-fun m!5818956 () Bool)

(assert (=> b!4827616 m!5818956))

(assert (=> b!4827616 m!5818956))

(declare-fun m!5818958 () Bool)

(assert (=> b!4827616 m!5818958))

(assert (=> d!1547042 m!5818952))

(declare-fun m!5818960 () Bool)

(assert (=> bm!336476 m!5818960))

(declare-fun m!5818962 () Bool)

(assert (=> b!4827615 m!5818962))

(assert (=> b!4827615 m!5818956))

(assert (=> b!4827615 m!5818956))

(assert (=> b!4827615 m!5818958))

(declare-fun m!5818964 () Bool)

(assert (=> b!4827615 m!5818964))

(declare-fun m!5818966 () Bool)

(assert (=> b!4827617 m!5818966))

(assert (=> b!4827612 m!5818948))

(assert (=> b!4827278 d!1547042))

(declare-fun bs!1164766 () Bool)

(declare-fun b!4827623 () Bool)

(assert (= bs!1164766 (and b!4827623 b!4827278)))

(declare-fun lambda!237177 () Int)

(assert (=> bs!1164766 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974269) (= lambda!237177 lambda!237114))))

(declare-fun bs!1164767 () Bool)

(assert (= bs!1164767 (and b!4827623 d!1546950)))

(assert (=> bs!1164767 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974096) (= lambda!237177 lambda!237142))))

(declare-fun bs!1164768 () Bool)

(assert (= bs!1164768 (and b!4827623 b!4827277)))

(assert (=> bs!1164768 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974096) (= lambda!237177 lambda!237112))))

(declare-fun bs!1164769 () Bool)

(assert (= bs!1164769 (and b!4827623 d!1546874)))

(assert (=> bs!1164769 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974264) (= lambda!237177 lambda!237115))))

(declare-fun bs!1164770 () Bool)

(assert (= bs!1164770 (and b!4827623 d!1547030)))

(assert (=> bs!1164770 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974269) (= lambda!237177 lambda!237176))))

(assert (=> bs!1164766 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974096) (= lambda!237177 lambda!237113))))

(assert (=> b!4827623 true))

(declare-fun bs!1164774 () Bool)

(declare-fun b!4827624 () Bool)

(assert (= bs!1164774 (and b!4827624 b!4827278)))

(declare-fun lambda!237179 () Int)

(assert (=> bs!1164774 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974269) (= lambda!237179 lambda!237114))))

(declare-fun bs!1164777 () Bool)

(assert (= bs!1164777 (and b!4827624 d!1546950)))

(assert (=> bs!1164777 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974096) (= lambda!237179 lambda!237142))))

(declare-fun bs!1164778 () Bool)

(assert (= bs!1164778 (and b!4827624 b!4827623)))

(assert (=> bs!1164778 (= lambda!237179 lambda!237177)))

(declare-fun bs!1164779 () Bool)

(assert (= bs!1164779 (and b!4827624 b!4827277)))

(assert (=> bs!1164779 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974096) (= lambda!237179 lambda!237112))))

(declare-fun bs!1164780 () Bool)

(assert (= bs!1164780 (and b!4827624 d!1546874)))

(assert (=> bs!1164780 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974264) (= lambda!237179 lambda!237115))))

(declare-fun bs!1164781 () Bool)

(assert (= bs!1164781 (and b!4827624 d!1547030)))

(assert (=> bs!1164781 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974269) (= lambda!237179 lambda!237176))))

(assert (=> bs!1164774 (= (= (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974096) (= lambda!237179 lambda!237113))))

(assert (=> b!4827624 true))

(declare-fun lt!1974501 () ListMap!6877)

(declare-fun lambda!237181 () Int)

(assert (=> bs!1164774 (= (= lt!1974501 lt!1974269) (= lambda!237181 lambda!237114))))

(assert (=> bs!1164777 (= (= lt!1974501 lt!1974096) (= lambda!237181 lambda!237142))))

(assert (=> bs!1164778 (= (= lt!1974501 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237181 lambda!237177))))

(assert (=> bs!1164779 (= (= lt!1974501 lt!1974096) (= lambda!237181 lambda!237112))))

(assert (=> b!4827624 (= (= lt!1974501 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237181 lambda!237179))))

(assert (=> bs!1164780 (= (= lt!1974501 lt!1974264) (= lambda!237181 lambda!237115))))

(assert (=> bs!1164781 (= (= lt!1974501 lt!1974269) (= lambda!237181 lambda!237176))))

(assert (=> bs!1164774 (= (= lt!1974501 lt!1974096) (= lambda!237181 lambda!237113))))

(assert (=> b!4827624 true))

(declare-fun bs!1164798 () Bool)

(declare-fun d!1547046 () Bool)

(assert (= bs!1164798 (and d!1547046 b!4827278)))

(declare-fun lt!1974496 () ListMap!6877)

(declare-fun lambda!237184 () Int)

(assert (=> bs!1164798 (= (= lt!1974496 lt!1974269) (= lambda!237184 lambda!237114))))

(declare-fun bs!1164799 () Bool)

(assert (= bs!1164799 (and d!1547046 d!1546950)))

(assert (=> bs!1164799 (= (= lt!1974496 lt!1974096) (= lambda!237184 lambda!237142))))

(declare-fun bs!1164800 () Bool)

(assert (= bs!1164800 (and d!1547046 b!4827624)))

(assert (=> bs!1164800 (= (= lt!1974496 lt!1974501) (= lambda!237184 lambda!237181))))

(declare-fun bs!1164801 () Bool)

(assert (= bs!1164801 (and d!1547046 b!4827623)))

(assert (=> bs!1164801 (= (= lt!1974496 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237184 lambda!237177))))

(declare-fun bs!1164802 () Bool)

(assert (= bs!1164802 (and d!1547046 b!4827277)))

(assert (=> bs!1164802 (= (= lt!1974496 lt!1974096) (= lambda!237184 lambda!237112))))

(assert (=> bs!1164800 (= (= lt!1974496 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237184 lambda!237179))))

(declare-fun bs!1164803 () Bool)

(assert (= bs!1164803 (and d!1547046 d!1546874)))

(assert (=> bs!1164803 (= (= lt!1974496 lt!1974264) (= lambda!237184 lambda!237115))))

(declare-fun bs!1164804 () Bool)

(assert (= bs!1164804 (and d!1547046 d!1547030)))

(assert (=> bs!1164804 (= (= lt!1974496 lt!1974269) (= lambda!237184 lambda!237176))))

(assert (=> bs!1164798 (= (= lt!1974496 lt!1974096) (= lambda!237184 lambda!237113))))

(assert (=> d!1547046 true))

(declare-fun b!4827621 () Bool)

(declare-fun res!2055611 () Bool)

(declare-fun e!3016576 () Bool)

(assert (=> b!4827621 (=> (not res!2055611) (not e!3016576))))

(assert (=> b!4827621 (= res!2055611 (forall!12630 (toList!7502 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) lambda!237184))))

(declare-fun bm!336477 () Bool)

(declare-fun call!336484 () Bool)

(declare-fun c!822624 () Bool)

(assert (=> bm!336477 (= call!336484 (forall!12630 (ite c!822624 (toList!7502 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (ite c!822624 lambda!237177 lambda!237181)))))

(declare-fun b!4827622 () Bool)

(assert (=> b!4827622 (= e!3016576 (invariantList!1817 (toList!7502 lt!1974496)))))

(declare-fun bm!336478 () Bool)

(declare-fun call!336483 () Bool)

(assert (=> bm!336478 (= call!336483 (forall!12630 (ite c!822624 (toList!7502 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (ite c!822624 lambda!237177 lambda!237181)))))

(declare-fun e!3016575 () ListMap!6877)

(assert (=> b!4827623 (= e!3016575 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(declare-fun lt!1974499 () Unit!143250)

(declare-fun call!336482 () Unit!143250)

(assert (=> b!4827623 (= lt!1974499 call!336482)))

(assert (=> b!4827623 call!336484))

(declare-fun lt!1974511 () Unit!143250)

(assert (=> b!4827623 (= lt!1974511 lt!1974499)))

(assert (=> b!4827623 call!336483))

(declare-fun lt!1974512 () Unit!143250)

(declare-fun Unit!143307 () Unit!143250)

(assert (=> b!4827623 (= lt!1974512 Unit!143307)))

(assert (=> b!4827624 (= e!3016575 lt!1974501)))

(declare-fun lt!1974505 () ListMap!6877)

(assert (=> b!4827624 (= lt!1974505 (+!2541 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> b!4827624 (= lt!1974501 (addToMapMapFromBucket!1806 (t!362620 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (+!2541 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))))

(declare-fun lt!1974503 () Unit!143250)

(assert (=> b!4827624 (= lt!1974503 call!336482)))

(assert (=> b!4827624 (forall!12630 (toList!7502 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) lambda!237179)))

(declare-fun lt!1974510 () Unit!143250)

(assert (=> b!4827624 (= lt!1974510 lt!1974503)))

(assert (=> b!4827624 (forall!12630 (toList!7502 lt!1974505) lambda!237181)))

(declare-fun lt!1974495 () Unit!143250)

(declare-fun Unit!143308 () Unit!143250)

(assert (=> b!4827624 (= lt!1974495 Unit!143308)))

(assert (=> b!4827624 (forall!12630 (t!362620 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lambda!237181)))

(declare-fun lt!1974507 () Unit!143250)

(declare-fun Unit!143309 () Unit!143250)

(assert (=> b!4827624 (= lt!1974507 Unit!143309)))

(declare-fun lt!1974497 () Unit!143250)

(declare-fun Unit!143310 () Unit!143250)

(assert (=> b!4827624 (= lt!1974497 Unit!143310)))

(declare-fun lt!1974498 () Unit!143250)

(assert (=> b!4827624 (= lt!1974498 (forallContained!4393 (toList!7502 lt!1974505) lambda!237181 (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> b!4827624 (contains!18807 lt!1974505 (_1!32415 (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun lt!1974508 () Unit!143250)

(declare-fun Unit!143311 () Unit!143250)

(assert (=> b!4827624 (= lt!1974508 Unit!143311)))

(assert (=> b!4827624 (contains!18807 lt!1974501 (_1!32415 (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun lt!1974500 () Unit!143250)

(declare-fun Unit!143312 () Unit!143250)

(assert (=> b!4827624 (= lt!1974500 Unit!143312)))

(assert (=> b!4827624 call!336483))

(declare-fun lt!1974494 () Unit!143250)

(declare-fun Unit!143313 () Unit!143250)

(assert (=> b!4827624 (= lt!1974494 Unit!143313)))

(assert (=> b!4827624 (forall!12630 (toList!7502 lt!1974505) lambda!237181)))

(declare-fun lt!1974502 () Unit!143250)

(declare-fun Unit!143314 () Unit!143250)

(assert (=> b!4827624 (= lt!1974502 Unit!143314)))

(declare-fun lt!1974504 () Unit!143250)

(declare-fun Unit!143315 () Unit!143250)

(assert (=> b!4827624 (= lt!1974504 Unit!143315)))

(declare-fun lt!1974492 () Unit!143250)

(assert (=> b!4827624 (= lt!1974492 (addForallContainsKeyThenBeforeAdding!995 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) lt!1974501 (_1!32415 (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (_2!32415 (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))))

(assert (=> b!4827624 (forall!12630 (toList!7502 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) lambda!237181)))

(declare-fun lt!1974493 () Unit!143250)

(assert (=> b!4827624 (= lt!1974493 lt!1974492)))

(assert (=> b!4827624 (forall!12630 (toList!7502 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) lambda!237181)))

(declare-fun lt!1974506 () Unit!143250)

(declare-fun Unit!143316 () Unit!143250)

(assert (=> b!4827624 (= lt!1974506 Unit!143316)))

(declare-fun res!2055613 () Bool)

(assert (=> b!4827624 (= res!2055613 call!336484)))

(declare-fun e!3016577 () Bool)

(assert (=> b!4827624 (=> (not res!2055613) (not e!3016577))))

(assert (=> b!4827624 e!3016577))

(declare-fun lt!1974509 () Unit!143250)

(declare-fun Unit!143317 () Unit!143250)

(assert (=> b!4827624 (= lt!1974509 Unit!143317)))

(assert (=> d!1547046 e!3016576))

(declare-fun res!2055612 () Bool)

(assert (=> d!1547046 (=> (not res!2055612) (not e!3016576))))

(assert (=> d!1547046 (= res!2055612 (forall!12630 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))) lambda!237184))))

(assert (=> d!1547046 (= lt!1974496 e!3016575)))

(assert (=> d!1547046 (= c!822624 ((_ is Nil!55000) (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (=> d!1547046 (noDuplicateKeys!2459 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))

(assert (=> d!1547046 (= (addToMapMapFromBucket!1806 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))) (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) lt!1974496)))

(declare-fun b!4827625 () Bool)

(assert (=> b!4827625 (= e!3016577 (forall!12630 (toList!7502 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) lambda!237181))))

(declare-fun bm!336479 () Bool)

(assert (=> bm!336479 (= call!336482 (lemmaContainsAllItsOwnKeys!996 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (= (and d!1547046 c!822624) b!4827623))

(assert (= (and d!1547046 (not c!822624)) b!4827624))

(assert (= (and b!4827624 res!2055613) b!4827625))

(assert (= (or b!4827623 b!4827624) bm!336479))

(assert (= (or b!4827623 b!4827624) bm!336477))

(assert (= (or b!4827623 b!4827624) bm!336478))

(assert (= (and d!1547046 res!2055612) b!4827621))

(assert (= (and b!4827621 res!2055611) b!4827622))

(declare-fun m!5819006 () Bool)

(assert (=> b!4827625 m!5819006))

(declare-fun m!5819008 () Bool)

(assert (=> bm!336478 m!5819008))

(assert (=> bm!336477 m!5819008))

(declare-fun m!5819010 () Bool)

(assert (=> d!1547046 m!5819010))

(assert (=> d!1547046 m!5818742))

(declare-fun m!5819012 () Bool)

(assert (=> b!4827624 m!5819012))

(declare-fun m!5819014 () Bool)

(assert (=> b!4827624 m!5819014))

(assert (=> b!4827624 m!5819006))

(assert (=> b!4827624 m!5819012))

(declare-fun m!5819016 () Bool)

(assert (=> b!4827624 m!5819016))

(assert (=> b!4827624 m!5818484))

(declare-fun m!5819018 () Bool)

(assert (=> b!4827624 m!5819018))

(assert (=> b!4827624 m!5819006))

(declare-fun m!5819020 () Bool)

(assert (=> b!4827624 m!5819020))

(declare-fun m!5819022 () Bool)

(assert (=> b!4827624 m!5819022))

(declare-fun m!5819024 () Bool)

(assert (=> b!4827624 m!5819024))

(declare-fun m!5819026 () Bool)

(assert (=> b!4827624 m!5819026))

(assert (=> b!4827624 m!5818484))

(assert (=> b!4827624 m!5819024))

(declare-fun m!5819028 () Bool)

(assert (=> b!4827624 m!5819028))

(declare-fun m!5819030 () Bool)

(assert (=> b!4827621 m!5819030))

(declare-fun m!5819032 () Bool)

(assert (=> b!4827622 m!5819032))

(assert (=> bm!336479 m!5818484))

(declare-fun m!5819034 () Bool)

(assert (=> bm!336479 m!5819034))

(assert (=> b!4827278 d!1547046))

(declare-fun bs!1164805 () Bool)

(declare-fun b!4827645 () Bool)

(assert (= bs!1164805 (and b!4827645 d!1547046)))

(declare-fun lambda!237185 () Int)

(assert (=> bs!1164805 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974496) (= lambda!237185 lambda!237184))))

(declare-fun bs!1164806 () Bool)

(assert (= bs!1164806 (and b!4827645 b!4827278)))

(assert (=> bs!1164806 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974269) (= lambda!237185 lambda!237114))))

(declare-fun bs!1164807 () Bool)

(assert (= bs!1164807 (and b!4827645 d!1546950)))

(assert (=> bs!1164807 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974096) (= lambda!237185 lambda!237142))))

(declare-fun bs!1164808 () Bool)

(assert (= bs!1164808 (and b!4827645 b!4827624)))

(assert (=> bs!1164808 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974501) (= lambda!237185 lambda!237181))))

(declare-fun bs!1164809 () Bool)

(assert (= bs!1164809 (and b!4827645 b!4827623)))

(assert (=> bs!1164809 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237185 lambda!237177))))

(declare-fun bs!1164810 () Bool)

(assert (= bs!1164810 (and b!4827645 b!4827277)))

(assert (=> bs!1164810 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974096) (= lambda!237185 lambda!237112))))

(assert (=> bs!1164808 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237185 lambda!237179))))

(declare-fun bs!1164811 () Bool)

(assert (= bs!1164811 (and b!4827645 d!1546874)))

(assert (=> bs!1164811 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974264) (= lambda!237185 lambda!237115))))

(declare-fun bs!1164812 () Bool)

(assert (= bs!1164812 (and b!4827645 d!1547030)))

(assert (=> bs!1164812 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974269) (= lambda!237185 lambda!237176))))

(assert (=> bs!1164806 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974096) (= lambda!237185 lambda!237113))))

(assert (=> b!4827645 true))

(declare-fun bs!1164813 () Bool)

(declare-fun b!4827646 () Bool)

(assert (= bs!1164813 (and b!4827646 d!1547046)))

(declare-fun lambda!237186 () Int)

(assert (=> bs!1164813 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974496) (= lambda!237186 lambda!237184))))

(declare-fun bs!1164814 () Bool)

(assert (= bs!1164814 (and b!4827646 b!4827278)))

(assert (=> bs!1164814 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974269) (= lambda!237186 lambda!237114))))

(declare-fun bs!1164815 () Bool)

(assert (= bs!1164815 (and b!4827646 d!1546950)))

(assert (=> bs!1164815 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974096) (= lambda!237186 lambda!237142))))

(declare-fun bs!1164816 () Bool)

(assert (= bs!1164816 (and b!4827646 b!4827645)))

(assert (=> bs!1164816 (= lambda!237186 lambda!237185)))

(declare-fun bs!1164817 () Bool)

(assert (= bs!1164817 (and b!4827646 b!4827624)))

(assert (=> bs!1164817 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974501) (= lambda!237186 lambda!237181))))

(declare-fun bs!1164819 () Bool)

(assert (= bs!1164819 (and b!4827646 b!4827623)))

(assert (=> bs!1164819 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237186 lambda!237177))))

(declare-fun bs!1164820 () Bool)

(assert (= bs!1164820 (and b!4827646 b!4827277)))

(assert (=> bs!1164820 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974096) (= lambda!237186 lambda!237112))))

(assert (=> bs!1164817 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237186 lambda!237179))))

(declare-fun bs!1164823 () Bool)

(assert (= bs!1164823 (and b!4827646 d!1546874)))

(assert (=> bs!1164823 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974264) (= lambda!237186 lambda!237115))))

(declare-fun bs!1164825 () Bool)

(assert (= bs!1164825 (and b!4827646 d!1547030)))

(assert (=> bs!1164825 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974269) (= lambda!237186 lambda!237176))))

(assert (=> bs!1164814 (= (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974096) (= lambda!237186 lambda!237113))))

(assert (=> b!4827646 true))

(declare-fun lambda!237188 () Int)

(declare-fun lt!1974530 () ListMap!6877)

(assert (=> b!4827646 (= (= lt!1974530 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) (= lambda!237188 lambda!237186))))

(assert (=> bs!1164813 (= (= lt!1974530 lt!1974496) (= lambda!237188 lambda!237184))))

(assert (=> bs!1164814 (= (= lt!1974530 lt!1974269) (= lambda!237188 lambda!237114))))

(assert (=> bs!1164815 (= (= lt!1974530 lt!1974096) (= lambda!237188 lambda!237142))))

(assert (=> bs!1164816 (= (= lt!1974530 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) (= lambda!237188 lambda!237185))))

(assert (=> bs!1164817 (= (= lt!1974530 lt!1974501) (= lambda!237188 lambda!237181))))

(assert (=> bs!1164819 (= (= lt!1974530 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237188 lambda!237177))))

(assert (=> bs!1164820 (= (= lt!1974530 lt!1974096) (= lambda!237188 lambda!237112))))

(assert (=> bs!1164817 (= (= lt!1974530 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237188 lambda!237179))))

(assert (=> bs!1164823 (= (= lt!1974530 lt!1974264) (= lambda!237188 lambda!237115))))

(assert (=> bs!1164825 (= (= lt!1974530 lt!1974269) (= lambda!237188 lambda!237176))))

(assert (=> bs!1164814 (= (= lt!1974530 lt!1974096) (= lambda!237188 lambda!237113))))

(assert (=> b!4827646 true))

(declare-fun bs!1164839 () Bool)

(declare-fun d!1547056 () Bool)

(assert (= bs!1164839 (and d!1547056 b!4827646)))

(declare-fun lt!1974525 () ListMap!6877)

(declare-fun lambda!237191 () Int)

(assert (=> bs!1164839 (= (= lt!1974525 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) (= lambda!237191 lambda!237186))))

(declare-fun bs!1164840 () Bool)

(assert (= bs!1164840 (and d!1547056 d!1547046)))

(assert (=> bs!1164840 (= (= lt!1974525 lt!1974496) (= lambda!237191 lambda!237184))))

(declare-fun bs!1164841 () Bool)

(assert (= bs!1164841 (and d!1547056 b!4827278)))

(assert (=> bs!1164841 (= (= lt!1974525 lt!1974269) (= lambda!237191 lambda!237114))))

(declare-fun bs!1164842 () Bool)

(assert (= bs!1164842 (and d!1547056 d!1546950)))

(assert (=> bs!1164842 (= (= lt!1974525 lt!1974096) (= lambda!237191 lambda!237142))))

(declare-fun bs!1164843 () Bool)

(assert (= bs!1164843 (and d!1547056 b!4827645)))

(assert (=> bs!1164843 (= (= lt!1974525 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) (= lambda!237191 lambda!237185))))

(declare-fun bs!1164844 () Bool)

(assert (= bs!1164844 (and d!1547056 b!4827624)))

(assert (=> bs!1164844 (= (= lt!1974525 lt!1974501) (= lambda!237191 lambda!237181))))

(declare-fun bs!1164845 () Bool)

(assert (= bs!1164845 (and d!1547056 b!4827623)))

(assert (=> bs!1164845 (= (= lt!1974525 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237191 lambda!237177))))

(declare-fun bs!1164846 () Bool)

(assert (= bs!1164846 (and d!1547056 b!4827277)))

(assert (=> bs!1164846 (= (= lt!1974525 lt!1974096) (= lambda!237191 lambda!237112))))

(assert (=> bs!1164844 (= (= lt!1974525 (+!2541 lt!1974096 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (= lambda!237191 lambda!237179))))

(assert (=> bs!1164839 (= (= lt!1974525 lt!1974530) (= lambda!237191 lambda!237188))))

(declare-fun bs!1164847 () Bool)

(assert (= bs!1164847 (and d!1547056 d!1546874)))

(assert (=> bs!1164847 (= (= lt!1974525 lt!1974264) (= lambda!237191 lambda!237115))))

(declare-fun bs!1164848 () Bool)

(assert (= bs!1164848 (and d!1547056 d!1547030)))

(assert (=> bs!1164848 (= (= lt!1974525 lt!1974269) (= lambda!237191 lambda!237176))))

(assert (=> bs!1164841 (= (= lt!1974525 lt!1974096) (= lambda!237191 lambda!237113))))

(assert (=> d!1547056 true))

(declare-fun b!4827643 () Bool)

(declare-fun res!2055625 () Bool)

(declare-fun e!3016591 () Bool)

(assert (=> b!4827643 (=> (not res!2055625) (not e!3016591))))

(assert (=> b!4827643 (= res!2055625 (forall!12630 (toList!7502 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) lambda!237191))))

(declare-fun call!336487 () Bool)

(declare-fun c!822628 () Bool)

(declare-fun bm!336480 () Bool)

(assert (=> bm!336480 (= call!336487 (forall!12630 (ite c!822628 (toList!7502 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))) (ite c!822628 lambda!237185 lambda!237188)))))

(declare-fun b!4827644 () Bool)

(assert (=> b!4827644 (= e!3016591 (invariantList!1817 (toList!7502 lt!1974525)))))

(declare-fun call!336486 () Bool)

(declare-fun bm!336481 () Bool)

(assert (=> bm!336481 (= call!336486 (forall!12630 (ite c!822628 (toList!7502 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))) (ite c!822628 lambda!237185 lambda!237188)))))

(declare-fun e!3016590 () ListMap!6877)

(assert (=> b!4827645 (= e!3016590 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))))))

(declare-fun lt!1974528 () Unit!143250)

(declare-fun call!336485 () Unit!143250)

(assert (=> b!4827645 (= lt!1974528 call!336485)))

(assert (=> b!4827645 call!336487))

(declare-fun lt!1974540 () Unit!143250)

(assert (=> b!4827645 (= lt!1974540 lt!1974528)))

(assert (=> b!4827645 call!336486))

(declare-fun lt!1974541 () Unit!143250)

(declare-fun Unit!143318 () Unit!143250)

(assert (=> b!4827645 (= lt!1974541 Unit!143318)))

(assert (=> b!4827646 (= e!3016590 lt!1974530)))

(declare-fun lt!1974534 () ListMap!6877)

(assert (=> b!4827646 (= lt!1974534 (+!2541 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) (h!61434 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325)))))))))

(assert (=> b!4827646 (= lt!1974530 (addToMapMapFromBucket!1806 (t!362620 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))) (+!2541 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) (h!61434 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))))))))

(declare-fun lt!1974532 () Unit!143250)

(assert (=> b!4827646 (= lt!1974532 call!336485)))

(assert (=> b!4827646 (forall!12630 (toList!7502 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) lambda!237186)))

(declare-fun lt!1974539 () Unit!143250)

(assert (=> b!4827646 (= lt!1974539 lt!1974532)))

(assert (=> b!4827646 (forall!12630 (toList!7502 lt!1974534) lambda!237188)))

(declare-fun lt!1974524 () Unit!143250)

(declare-fun Unit!143319 () Unit!143250)

(assert (=> b!4827646 (= lt!1974524 Unit!143319)))

(assert (=> b!4827646 (forall!12630 (t!362620 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))) lambda!237188)))

(declare-fun lt!1974536 () Unit!143250)

(declare-fun Unit!143320 () Unit!143250)

(assert (=> b!4827646 (= lt!1974536 Unit!143320)))

(declare-fun lt!1974526 () Unit!143250)

(declare-fun Unit!143321 () Unit!143250)

(assert (=> b!4827646 (= lt!1974526 Unit!143321)))

(declare-fun lt!1974527 () Unit!143250)

(assert (=> b!4827646 (= lt!1974527 (forallContained!4393 (toList!7502 lt!1974534) lambda!237188 (h!61434 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325)))))))))

(assert (=> b!4827646 (contains!18807 lt!1974534 (_1!32415 (h!61434 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325)))))))))

(declare-fun lt!1974537 () Unit!143250)

(declare-fun Unit!143322 () Unit!143250)

(assert (=> b!4827646 (= lt!1974537 Unit!143322)))

(assert (=> b!4827646 (contains!18807 lt!1974530 (_1!32415 (h!61434 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325)))))))))

(declare-fun lt!1974529 () Unit!143250)

(declare-fun Unit!143323 () Unit!143250)

(assert (=> b!4827646 (= lt!1974529 Unit!143323)))

(assert (=> b!4827646 call!336486))

(declare-fun lt!1974523 () Unit!143250)

(declare-fun Unit!143324 () Unit!143250)

(assert (=> b!4827646 (= lt!1974523 Unit!143324)))

(assert (=> b!4827646 (forall!12630 (toList!7502 lt!1974534) lambda!237188)))

(declare-fun lt!1974531 () Unit!143250)

(declare-fun Unit!143325 () Unit!143250)

(assert (=> b!4827646 (= lt!1974531 Unit!143325)))

(declare-fun lt!1974533 () Unit!143250)

(declare-fun Unit!143326 () Unit!143250)

(assert (=> b!4827646 (= lt!1974533 Unit!143326)))

(declare-fun lt!1974521 () Unit!143250)

(assert (=> b!4827646 (= lt!1974521 (addForallContainsKeyThenBeforeAdding!995 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974530 (_1!32415 (h!61434 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325)))))) (_2!32415 (h!61434 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))))))))

(assert (=> b!4827646 (forall!12630 (toList!7502 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) lambda!237188)))

(declare-fun lt!1974522 () Unit!143250)

(assert (=> b!4827646 (= lt!1974522 lt!1974521)))

(assert (=> b!4827646 (forall!12630 (toList!7502 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) lambda!237188)))

(declare-fun lt!1974535 () Unit!143250)

(declare-fun Unit!143329 () Unit!143250)

(assert (=> b!4827646 (= lt!1974535 Unit!143329)))

(declare-fun res!2055627 () Bool)

(assert (=> b!4827646 (= res!2055627 call!336487)))

(declare-fun e!3016592 () Bool)

(assert (=> b!4827646 (=> (not res!2055627) (not e!3016592))))

(assert (=> b!4827646 e!3016592))

(declare-fun lt!1974538 () Unit!143250)

(declare-fun Unit!143332 () Unit!143250)

(assert (=> b!4827646 (= lt!1974538 Unit!143332)))

(assert (=> d!1547056 e!3016591))

(declare-fun res!2055626 () Bool)

(assert (=> d!1547056 (=> (not res!2055626) (not e!3016591))))

(assert (=> d!1547056 (= res!2055626 (forall!12630 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325)))) lambda!237191))))

(assert (=> d!1547056 (= lt!1974525 e!3016590)))

(assert (=> d!1547056 (= c!822628 ((_ is Nil!55000) (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))))))

(assert (=> d!1547056 (noDuplicateKeys!2459 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325)))))))

(assert (=> d!1547056 (= (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325)))) (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) lt!1974525)))

(declare-fun b!4827647 () Bool)

(assert (=> b!4827647 (= e!3016592 (forall!12630 (toList!7502 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))) lambda!237188))))

(declare-fun bm!336482 () Bool)

(assert (=> bm!336482 (= call!336485 (lemmaContainsAllItsOwnKeys!996 (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325))))))))

(assert (= (and d!1547056 c!822628) b!4827645))

(assert (= (and d!1547056 (not c!822628)) b!4827646))

(assert (= (and b!4827646 res!2055627) b!4827647))

(assert (= (or b!4827645 b!4827646) bm!336482))

(assert (= (or b!4827645 b!4827646) bm!336480))

(assert (= (or b!4827645 b!4827646) bm!336481))

(assert (= (and d!1547056 res!2055626) b!4827643))

(assert (= (and b!4827643 res!2055625) b!4827644))

(declare-fun m!5819038 () Bool)

(assert (=> b!4827647 m!5819038))

(declare-fun m!5819040 () Bool)

(assert (=> bm!336481 m!5819040))

(assert (=> bm!336480 m!5819040))

(declare-fun m!5819042 () Bool)

(assert (=> d!1547056 m!5819042))

(declare-fun m!5819044 () Bool)

(assert (=> d!1547056 m!5819044))

(declare-fun m!5819046 () Bool)

(assert (=> b!4827646 m!5819046))

(declare-fun m!5819048 () Bool)

(assert (=> b!4827646 m!5819048))

(assert (=> b!4827646 m!5819038))

(assert (=> b!4827646 m!5819046))

(declare-fun m!5819050 () Bool)

(assert (=> b!4827646 m!5819050))

(assert (=> b!4827646 m!5818520))

(declare-fun m!5819052 () Bool)

(assert (=> b!4827646 m!5819052))

(assert (=> b!4827646 m!5819038))

(declare-fun m!5819054 () Bool)

(assert (=> b!4827646 m!5819054))

(declare-fun m!5819056 () Bool)

(assert (=> b!4827646 m!5819056))

(declare-fun m!5819058 () Bool)

(assert (=> b!4827646 m!5819058))

(declare-fun m!5819060 () Bool)

(assert (=> b!4827646 m!5819060))

(assert (=> b!4827646 m!5818520))

(assert (=> b!4827646 m!5819058))

(declare-fun m!5819062 () Bool)

(assert (=> b!4827646 m!5819062))

(declare-fun m!5819064 () Bool)

(assert (=> b!4827643 m!5819064))

(declare-fun m!5819066 () Bool)

(assert (=> b!4827644 m!5819066))

(assert (=> bm!336482 m!5818520))

(declare-fun m!5819068 () Bool)

(assert (=> bm!336482 m!5819068))

(assert (=> b!4827313 d!1547056))

(declare-fun bs!1164859 () Bool)

(declare-fun d!1547060 () Bool)

(assert (= bs!1164859 (and d!1547060 start!500996)))

(declare-fun lambda!237193 () Int)

(assert (=> bs!1164859 (= lambda!237193 lambda!237042)))

(declare-fun bs!1164860 () Bool)

(assert (= bs!1164860 (and d!1547060 d!1546890)))

(assert (=> bs!1164860 (= lambda!237193 lambda!237118)))

(declare-fun bs!1164861 () Bool)

(assert (= bs!1164861 (and d!1547060 d!1546892)))

(assert (=> bs!1164861 (= lambda!237193 lambda!237121)))

(declare-fun bs!1164862 () Bool)

(assert (= bs!1164862 (and d!1547060 d!1546900)))

(assert (=> bs!1164862 (not (= lambda!237193 lambda!237124))))

(declare-fun lt!1974563 () ListMap!6877)

(assert (=> d!1547060 (invariantList!1817 (toList!7502 lt!1974563))))

(declare-fun e!3016598 () ListMap!6877)

(assert (=> d!1547060 (= lt!1974563 e!3016598)))

(declare-fun c!822630 () Bool)

(assert (=> d!1547060 (= c!822630 ((_ is Cons!55001) (t!362621 (t!362621 (toList!7501 lm!2325)))))))

(assert (=> d!1547060 (forall!12628 (t!362621 (t!362621 (toList!7501 lm!2325))) lambda!237193)))

(assert (=> d!1547060 (= (extractMap!2690 (t!362621 (t!362621 (toList!7501 lm!2325)))) lt!1974563)))

(declare-fun b!4827655 () Bool)

(assert (=> b!4827655 (= e!3016598 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (t!362621 (t!362621 (toList!7501 lm!2325))))) (extractMap!2690 (t!362621 (t!362621 (t!362621 (toList!7501 lm!2325)))))))))

(declare-fun b!4827656 () Bool)

(assert (=> b!4827656 (= e!3016598 (ListMap!6878 Nil!55000))))

(assert (= (and d!1547060 c!822630) b!4827655))

(assert (= (and d!1547060 (not c!822630)) b!4827656))

(declare-fun m!5819070 () Bool)

(assert (=> d!1547060 m!5819070))

(declare-fun m!5819072 () Bool)

(assert (=> d!1547060 m!5819072))

(declare-fun m!5819074 () Bool)

(assert (=> b!4827655 m!5819074))

(assert (=> b!4827655 m!5819074))

(declare-fun m!5819076 () Bool)

(assert (=> b!4827655 m!5819076))

(assert (=> b!4827313 d!1547060))

(assert (=> b!4827223 d!1546898))

(declare-fun d!1547062 () Bool)

(declare-fun res!2055633 () Bool)

(declare-fun e!3016599 () Bool)

(assert (=> d!1547062 (=> res!2055633 e!3016599)))

(assert (=> d!1547062 (= res!2055633 ((_ is Nil!55000) (_2!32416 (h!61435 (toList!7501 lm!2325)))))))

(assert (=> d!1547062 (= (forall!12630 (_2!32416 (h!61435 (toList!7501 lm!2325))) lambda!237115) e!3016599)))

(declare-fun b!4827657 () Bool)

(declare-fun e!3016600 () Bool)

(assert (=> b!4827657 (= e!3016599 e!3016600)))

(declare-fun res!2055634 () Bool)

(assert (=> b!4827657 (=> (not res!2055634) (not e!3016600))))

(assert (=> b!4827657 (= res!2055634 (dynLambda!22227 lambda!237115 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(declare-fun b!4827658 () Bool)

(assert (=> b!4827658 (= e!3016600 (forall!12630 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))) lambda!237115))))

(assert (= (and d!1547062 (not res!2055633)) b!4827657))

(assert (= (and b!4827657 res!2055634) b!4827658))

(declare-fun b_lambda!190099 () Bool)

(assert (=> (not b_lambda!190099) (not b!4827657)))

(declare-fun m!5819078 () Bool)

(assert (=> b!4827657 m!5819078))

(declare-fun m!5819080 () Bool)

(assert (=> b!4827658 m!5819080))

(assert (=> d!1546874 d!1547062))

(assert (=> d!1546874 d!1546964))

(declare-fun d!1547064 () Bool)

(declare-fun res!2055635 () Bool)

(declare-fun e!3016601 () Bool)

(assert (=> d!1547064 (=> res!2055635 e!3016601)))

(assert (=> d!1547064 (= res!2055635 ((_ is Nil!55001) (t!362621 (toList!7501 lm!2325))))))

(assert (=> d!1547064 (= (forall!12628 (t!362621 (toList!7501 lm!2325)) lambda!237042) e!3016601)))

(declare-fun b!4827659 () Bool)

(declare-fun e!3016602 () Bool)

(assert (=> b!4827659 (= e!3016601 e!3016602)))

(declare-fun res!2055636 () Bool)

(assert (=> b!4827659 (=> (not res!2055636) (not e!3016602))))

(assert (=> b!4827659 (= res!2055636 (dynLambda!22225 lambda!237042 (h!61435 (t!362621 (toList!7501 lm!2325)))))))

(declare-fun b!4827660 () Bool)

(assert (=> b!4827660 (= e!3016602 (forall!12628 (t!362621 (t!362621 (toList!7501 lm!2325))) lambda!237042))))

(assert (= (and d!1547064 (not res!2055635)) b!4827659))

(assert (= (and b!4827659 res!2055636) b!4827660))

(declare-fun b_lambda!190101 () Bool)

(assert (=> (not b_lambda!190101) (not b!4827659)))

(declare-fun m!5819098 () Bool)

(assert (=> b!4827659 m!5819098))

(declare-fun m!5819102 () Bool)

(assert (=> b!4827660 m!5819102))

(assert (=> b!4827172 d!1547064))

(declare-fun d!1547066 () Bool)

(declare-fun res!2055641 () Bool)

(declare-fun e!3016608 () Bool)

(assert (=> d!1547066 (=> res!2055641 e!3016608)))

(assert (=> d!1547066 (= res!2055641 (and ((_ is Cons!55001) (toList!7501 lm!2325)) (= (_1!32416 (h!61435 (toList!7501 lm!2325))) (hash!5421 hashF!1543 key!5594))))))

(assert (=> d!1547066 (= (containsKey!4392 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)) e!3016608)))

(declare-fun b!4827667 () Bool)

(declare-fun e!3016609 () Bool)

(assert (=> b!4827667 (= e!3016608 e!3016609)))

(declare-fun res!2055642 () Bool)

(assert (=> b!4827667 (=> (not res!2055642) (not e!3016609))))

(assert (=> b!4827667 (= res!2055642 (and (or (not ((_ is Cons!55001) (toList!7501 lm!2325))) (bvsle (_1!32416 (h!61435 (toList!7501 lm!2325))) (hash!5421 hashF!1543 key!5594))) ((_ is Cons!55001) (toList!7501 lm!2325)) (bvslt (_1!32416 (h!61435 (toList!7501 lm!2325))) (hash!5421 hashF!1543 key!5594))))))

(declare-fun b!4827668 () Bool)

(assert (=> b!4827668 (= e!3016609 (containsKey!4392 (t!362621 (toList!7501 lm!2325)) (hash!5421 hashF!1543 key!5594)))))

(assert (= (and d!1547066 (not res!2055641)) b!4827667))

(assert (= (and b!4827667 res!2055642) b!4827668))

(assert (=> b!4827668 m!5818330))

(declare-fun m!5819132 () Bool)

(assert (=> b!4827668 m!5819132))

(assert (=> d!1546902 d!1547066))

(declare-fun lt!1974565 () Bool)

(declare-fun d!1547076 () Bool)

(assert (=> d!1547076 (= lt!1974565 (select (content!9825 (keys!20243 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) key!5594))))

(declare-fun e!3016614 () Bool)

(assert (=> d!1547076 (= lt!1974565 e!3016614)))

(declare-fun res!2055645 () Bool)

(assert (=> d!1547076 (=> (not res!2055645) (not e!3016614))))

(assert (=> d!1547076 (= res!2055645 ((_ is Cons!55003) (keys!20243 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))

(assert (=> d!1547076 (= (contains!18809 (keys!20243 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594) lt!1974565)))

(declare-fun b!4827673 () Bool)

(declare-fun e!3016612 () Bool)

(assert (=> b!4827673 (= e!3016614 e!3016612)))

(declare-fun res!2055643 () Bool)

(assert (=> b!4827673 (=> res!2055643 e!3016612)))

(assert (=> b!4827673 (= res!2055643 (= (h!61437 (keys!20243 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) key!5594))))

(declare-fun b!4827675 () Bool)

(assert (=> b!4827675 (= e!3016612 (contains!18809 (t!362623 (keys!20243 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) key!5594))))

(assert (= (and d!1547076 res!2055645) b!4827673))

(assert (= (and b!4827673 (not res!2055643)) b!4827675))

(assert (=> d!1547076 m!5818496))

(declare-fun m!5819136 () Bool)

(assert (=> d!1547076 m!5819136))

(declare-fun m!5819140 () Bool)

(assert (=> d!1547076 m!5819140))

(declare-fun m!5819144 () Bool)

(assert (=> b!4827675 m!5819144))

(assert (=> b!4827300 d!1547076))

(declare-fun bs!1164875 () Bool)

(declare-fun b!4827697 () Bool)

(assert (= bs!1164875 (and b!4827697 b!4827526)))

(declare-fun lambda!237199 () Int)

(assert (=> bs!1164875 (= (= (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (= lambda!237199 lambda!237156))))

(declare-fun bs!1164876 () Bool)

(assert (= bs!1164876 (and b!4827697 b!4827528)))

(assert (=> bs!1164876 (= (= (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) (Cons!55000 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))) (= lambda!237199 lambda!237157))))

(declare-fun bs!1164878 () Bool)

(assert (= bs!1164878 (and b!4827697 b!4827534)))

(assert (=> bs!1164878 (= lambda!237199 lambda!237158)))

(assert (=> b!4827697 true))

(declare-fun bs!1164882 () Bool)

(declare-fun b!4827698 () Bool)

(assert (= bs!1164882 (and b!4827698 b!4827531)))

(declare-fun lambda!237200 () Int)

(assert (=> bs!1164882 (= lambda!237200 lambda!237159)))

(declare-fun d!1547082 () Bool)

(declare-fun e!3016629 () Bool)

(assert (=> d!1547082 e!3016629))

(declare-fun res!2055660 () Bool)

(assert (=> d!1547082 (=> (not res!2055660) (not e!3016629))))

(declare-fun lt!1974572 () List!55127)

(assert (=> d!1547082 (= res!2055660 (noDuplicate!966 lt!1974572))))

(assert (=> d!1547082 (= lt!1974572 (getKeysList!1164 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))

(assert (=> d!1547082 (= (keys!20243 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) lt!1974572)))

(declare-fun b!4827696 () Bool)

(declare-fun res!2055661 () Bool)

(assert (=> b!4827696 (=> (not res!2055661) (not e!3016629))))

(assert (=> b!4827696 (= res!2055661 (= (length!788 lt!1974572) (length!789 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))))))

(declare-fun res!2055662 () Bool)

(assert (=> b!4827697 (=> (not res!2055662) (not e!3016629))))

(assert (=> b!4827697 (= res!2055662 (forall!12632 lt!1974572 lambda!237199))))

(assert (=> b!4827698 (= e!3016629 (= (content!9825 lt!1974572) (content!9825 (map!12591 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) lambda!237200))))))

(assert (= (and d!1547082 res!2055660) b!4827696))

(assert (= (and b!4827696 res!2055661) b!4827697))

(assert (= (and b!4827697 res!2055662) b!4827698))

(declare-fun m!5819174 () Bool)

(assert (=> d!1547082 m!5819174))

(assert (=> d!1547082 m!5818514))

(declare-fun m!5819176 () Bool)

(assert (=> b!4827696 m!5819176))

(assert (=> b!4827696 m!5818832))

(declare-fun m!5819178 () Bool)

(assert (=> b!4827697 m!5819178))

(declare-fun m!5819180 () Bool)

(assert (=> b!4827698 m!5819180))

(declare-fun m!5819182 () Bool)

(assert (=> b!4827698 m!5819182))

(assert (=> b!4827698 m!5819182))

(declare-fun m!5819184 () Bool)

(assert (=> b!4827698 m!5819184))

(assert (=> b!4827300 d!1547082))

(declare-fun d!1547114 () Bool)

(declare-fun res!2055667 () Bool)

(declare-fun e!3016634 () Bool)

(assert (=> d!1547114 (=> res!2055667 e!3016634)))

(assert (=> d!1547114 (= res!2055667 (or ((_ is Nil!55001) (toList!7501 lm!2325)) ((_ is Nil!55001) (t!362621 (toList!7501 lm!2325)))))))

(assert (=> d!1547114 (= (isStrictlySorted!991 (toList!7501 lm!2325)) e!3016634)))

(declare-fun b!4827705 () Bool)

(declare-fun e!3016635 () Bool)

(assert (=> b!4827705 (= e!3016634 e!3016635)))

(declare-fun res!2055668 () Bool)

(assert (=> b!4827705 (=> (not res!2055668) (not e!3016635))))

(assert (=> b!4827705 (= res!2055668 (bvslt (_1!32416 (h!61435 (toList!7501 lm!2325))) (_1!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))))))

(declare-fun b!4827706 () Bool)

(assert (=> b!4827706 (= e!3016635 (isStrictlySorted!991 (t!362621 (toList!7501 lm!2325))))))

(assert (= (and d!1547114 (not res!2055667)) b!4827705))

(assert (= (and b!4827705 res!2055668) b!4827706))

(declare-fun m!5819186 () Bool)

(assert (=> b!4827706 m!5819186))

(assert (=> d!1546854 d!1547114))

(declare-fun d!1547116 () Bool)

(declare-fun res!2055673 () Bool)

(declare-fun e!3016640 () Bool)

(assert (=> d!1547116 (=> res!2055673 e!3016640)))

(assert (=> d!1547116 (= res!2055673 (and ((_ is Cons!55000) (toList!7502 lt!1974096)) (= (_1!32415 (h!61434 (toList!7502 lt!1974096))) key!5594)))))

(assert (=> d!1547116 (= (containsKey!4391 (toList!7502 lt!1974096) key!5594) e!3016640)))

(declare-fun b!4827711 () Bool)

(declare-fun e!3016641 () Bool)

(assert (=> b!4827711 (= e!3016640 e!3016641)))

(declare-fun res!2055674 () Bool)

(assert (=> b!4827711 (=> (not res!2055674) (not e!3016641))))

(assert (=> b!4827711 (= res!2055674 ((_ is Cons!55000) (toList!7502 lt!1974096)))))

(declare-fun b!4827712 () Bool)

(assert (=> b!4827712 (= e!3016641 (containsKey!4391 (t!362620 (toList!7502 lt!1974096)) key!5594))))

(assert (= (and d!1547116 (not res!2055673)) b!4827711))

(assert (= (and b!4827711 res!2055674) b!4827712))

(declare-fun m!5819188 () Bool)

(assert (=> b!4827712 m!5819188))

(assert (=> b!4827316 d!1547116))

(declare-fun d!1547118 () Bool)

(assert (=> d!1547118 (containsKey!4391 (toList!7502 lt!1974096) key!5594)))

(declare-fun lt!1974575 () Unit!143250)

(declare-fun choose!35171 (List!55124 K!16684) Unit!143250)

(assert (=> d!1547118 (= lt!1974575 (choose!35171 (toList!7502 lt!1974096) key!5594))))

(assert (=> d!1547118 (invariantList!1817 (toList!7502 lt!1974096))))

(assert (=> d!1547118 (= (lemmaInGetKeysListThenContainsKey!1164 (toList!7502 lt!1974096) key!5594) lt!1974575)))

(declare-fun bs!1164885 () Bool)

(assert (= bs!1164885 d!1547118))

(assert (=> bs!1164885 m!5818538))

(declare-fun m!5819190 () Bool)

(assert (=> bs!1164885 m!5819190))

(declare-fun m!5819192 () Bool)

(assert (=> bs!1164885 m!5819192))

(assert (=> b!4827316 d!1547118))

(declare-fun d!1547120 () Bool)

(declare-fun lt!1974576 () Bool)

(assert (=> d!1547120 (= lt!1974576 (select (content!9825 (keys!20243 lt!1974096)) key!5594))))

(declare-fun e!3016643 () Bool)

(assert (=> d!1547120 (= lt!1974576 e!3016643)))

(declare-fun res!2055676 () Bool)

(assert (=> d!1547120 (=> (not res!2055676) (not e!3016643))))

(assert (=> d!1547120 (= res!2055676 ((_ is Cons!55003) (keys!20243 lt!1974096)))))

(assert (=> d!1547120 (= (contains!18809 (keys!20243 lt!1974096) key!5594) lt!1974576)))

(declare-fun b!4827713 () Bool)

(declare-fun e!3016642 () Bool)

(assert (=> b!4827713 (= e!3016643 e!3016642)))

(declare-fun res!2055675 () Bool)

(assert (=> b!4827713 (=> res!2055675 e!3016642)))

(assert (=> b!4827713 (= res!2055675 (= (h!61437 (keys!20243 lt!1974096)) key!5594))))

(declare-fun b!4827714 () Bool)

(assert (=> b!4827714 (= e!3016642 (contains!18809 (t!362623 (keys!20243 lt!1974096)) key!5594))))

(assert (= (and d!1547120 res!2055676) b!4827713))

(assert (= (and b!4827713 (not res!2055675)) b!4827714))

(assert (=> d!1547120 m!5818534))

(declare-fun m!5819194 () Bool)

(assert (=> d!1547120 m!5819194))

(declare-fun m!5819196 () Bool)

(assert (=> d!1547120 m!5819196))

(declare-fun m!5819198 () Bool)

(assert (=> b!4827714 m!5819198))

(assert (=> b!4827315 d!1547120))

(declare-fun bs!1164886 () Bool)

(declare-fun b!4827716 () Bool)

(assert (= bs!1164886 (and b!4827716 b!4827526)))

(declare-fun lambda!237201 () Int)

(assert (=> bs!1164886 (= (= (toList!7502 lt!1974096) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (= lambda!237201 lambda!237156))))

(declare-fun bs!1164887 () Bool)

(assert (= bs!1164887 (and b!4827716 b!4827528)))

(assert (=> bs!1164887 (= (= (toList!7502 lt!1974096) (Cons!55000 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))) (= lambda!237201 lambda!237157))))

(declare-fun bs!1164888 () Bool)

(assert (= bs!1164888 (and b!4827716 b!4827534)))

(assert (=> bs!1164888 (= (= (toList!7502 lt!1974096) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= lambda!237201 lambda!237158))))

(declare-fun bs!1164889 () Bool)

(assert (= bs!1164889 (and b!4827716 b!4827697)))

(assert (=> bs!1164889 (= (= (toList!7502 lt!1974096) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= lambda!237201 lambda!237199))))

(assert (=> b!4827716 true))

(declare-fun bs!1164890 () Bool)

(declare-fun b!4827717 () Bool)

(assert (= bs!1164890 (and b!4827717 b!4827531)))

(declare-fun lambda!237202 () Int)

(assert (=> bs!1164890 (= lambda!237202 lambda!237159)))

(declare-fun bs!1164891 () Bool)

(assert (= bs!1164891 (and b!4827717 b!4827698)))

(assert (=> bs!1164891 (= lambda!237202 lambda!237200)))

(declare-fun d!1547122 () Bool)

(declare-fun e!3016644 () Bool)

(assert (=> d!1547122 e!3016644))

(declare-fun res!2055677 () Bool)

(assert (=> d!1547122 (=> (not res!2055677) (not e!3016644))))

(declare-fun lt!1974577 () List!55127)

(assert (=> d!1547122 (= res!2055677 (noDuplicate!966 lt!1974577))))

(assert (=> d!1547122 (= lt!1974577 (getKeysList!1164 (toList!7502 lt!1974096)))))

(assert (=> d!1547122 (= (keys!20243 lt!1974096) lt!1974577)))

(declare-fun b!4827715 () Bool)

(declare-fun res!2055678 () Bool)

(assert (=> b!4827715 (=> (not res!2055678) (not e!3016644))))

(assert (=> b!4827715 (= res!2055678 (= (length!788 lt!1974577) (length!789 (toList!7502 lt!1974096))))))

(declare-fun res!2055679 () Bool)

(assert (=> b!4827716 (=> (not res!2055679) (not e!3016644))))

(assert (=> b!4827716 (= res!2055679 (forall!12632 lt!1974577 lambda!237201))))

(assert (=> b!4827717 (= e!3016644 (= (content!9825 lt!1974577) (content!9825 (map!12591 (toList!7502 lt!1974096) lambda!237202))))))

(assert (= (and d!1547122 res!2055677) b!4827715))

(assert (= (and b!4827715 res!2055678) b!4827716))

(assert (= (and b!4827716 res!2055679) b!4827717))

(declare-fun m!5819200 () Bool)

(assert (=> d!1547122 m!5819200))

(assert (=> d!1547122 m!5818552))

(declare-fun m!5819202 () Bool)

(assert (=> b!4827715 m!5819202))

(declare-fun m!5819204 () Bool)

(assert (=> b!4827715 m!5819204))

(declare-fun m!5819206 () Bool)

(assert (=> b!4827716 m!5819206))

(declare-fun m!5819208 () Bool)

(assert (=> b!4827717 m!5819208))

(declare-fun m!5819210 () Bool)

(assert (=> b!4827717 m!5819210))

(assert (=> b!4827717 m!5819210))

(declare-fun m!5819212 () Bool)

(assert (=> b!4827717 m!5819212))

(assert (=> b!4827315 d!1547122))

(assert (=> d!1546898 d!1547116))

(declare-fun d!1547124 () Bool)

(assert (=> d!1547124 (= (get!18834 (getValueByKey!2633 (toList!7501 lm!2325) (_1!32416 (h!61435 (toList!7501 lm!2325))))) (v!49190 (getValueByKey!2633 (toList!7501 lm!2325) (_1!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (=> d!1546894 d!1547124))

(declare-fun d!1547126 () Bool)

(declare-fun c!822634 () Bool)

(assert (=> d!1547126 (= c!822634 (and ((_ is Cons!55001) (toList!7501 lm!2325)) (= (_1!32416 (h!61435 (toList!7501 lm!2325))) (_1!32416 (h!61435 (toList!7501 lm!2325))))))))

(declare-fun e!3016645 () Option!13506)

(assert (=> d!1547126 (= (getValueByKey!2633 (toList!7501 lm!2325) (_1!32416 (h!61435 (toList!7501 lm!2325)))) e!3016645)))

(declare-fun b!4827719 () Bool)

(declare-fun e!3016646 () Option!13506)

(assert (=> b!4827719 (= e!3016645 e!3016646)))

(declare-fun c!822635 () Bool)

(assert (=> b!4827719 (= c!822635 (and ((_ is Cons!55001) (toList!7501 lm!2325)) (not (= (_1!32416 (h!61435 (toList!7501 lm!2325))) (_1!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun b!4827721 () Bool)

(assert (=> b!4827721 (= e!3016646 None!13505)))

(declare-fun b!4827718 () Bool)

(assert (=> b!4827718 (= e!3016645 (Some!13505 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))

(declare-fun b!4827720 () Bool)

(assert (=> b!4827720 (= e!3016646 (getValueByKey!2633 (t!362621 (toList!7501 lm!2325)) (_1!32416 (h!61435 (toList!7501 lm!2325)))))))

(assert (= (and d!1547126 c!822634) b!4827718))

(assert (= (and d!1547126 (not c!822634)) b!4827719))

(assert (= (and b!4827719 c!822635) b!4827720))

(assert (= (and b!4827719 (not c!822635)) b!4827721))

(declare-fun m!5819214 () Bool)

(assert (=> b!4827720 m!5819214))

(assert (=> d!1546894 d!1547126))

(declare-fun d!1547128 () Bool)

(declare-fun choose!35172 (Hashable!7278 K!16684) (_ BitVec 64))

(assert (=> d!1547128 (= (hash!5425 hashF!1543 key!5594) (choose!35172 hashF!1543 key!5594))))

(declare-fun bs!1164892 () Bool)

(assert (= bs!1164892 d!1547128))

(declare-fun m!5819216 () Bool)

(assert (=> bs!1164892 m!5819216))

(assert (=> d!1546904 d!1547128))

(declare-fun d!1547130 () Bool)

(declare-fun res!2055680 () Bool)

(declare-fun e!3016647 () Bool)

(assert (=> d!1547130 (=> res!2055680 e!3016647)))

(assert (=> d!1547130 (= res!2055680 (and ((_ is Cons!55000) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= (_1!32415 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) key!5594)))))

(assert (=> d!1547130 (= (containsKey!4391 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594) e!3016647)))

(declare-fun b!4827722 () Bool)

(declare-fun e!3016648 () Bool)

(assert (=> b!4827722 (= e!3016647 e!3016648)))

(declare-fun res!2055681 () Bool)

(assert (=> b!4827722 (=> (not res!2055681) (not e!3016648))))

(assert (=> b!4827722 (= res!2055681 ((_ is Cons!55000) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))))

(declare-fun b!4827723 () Bool)

(assert (=> b!4827723 (= e!3016648 (containsKey!4391 (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) key!5594))))

(assert (= (and d!1547130 (not res!2055680)) b!4827722))

(assert (= (and b!4827722 res!2055681) b!4827723))

(declare-fun m!5819218 () Bool)

(assert (=> b!4827723 m!5819218))

(assert (=> d!1546888 d!1547130))

(declare-fun d!1547132 () Bool)

(assert (=> d!1547132 (isDefined!10621 (getValueByKey!2633 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)))))

(declare-fun lt!1974580 () Unit!143250)

(declare-fun choose!35173 (List!55125 (_ BitVec 64)) Unit!143250)

(assert (=> d!1547132 (= lt!1974580 (choose!35173 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)))))

(declare-fun e!3016651 () Bool)

(assert (=> d!1547132 e!3016651))

(declare-fun res!2055684 () Bool)

(assert (=> d!1547132 (=> (not res!2055684) (not e!3016651))))

(assert (=> d!1547132 (= res!2055684 (isStrictlySorted!991 (toList!7501 lm!2325)))))

(assert (=> d!1547132 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2418 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)) lt!1974580)))

(declare-fun b!4827726 () Bool)

(assert (=> b!4827726 (= e!3016651 (containsKey!4392 (toList!7501 lm!2325) (hash!5421 hashF!1543 key!5594)))))

(assert (= (and d!1547132 res!2055684) b!4827726))

(assert (=> d!1547132 m!5818330))

(assert (=> d!1547132 m!5818560))

(assert (=> d!1547132 m!5818560))

(assert (=> d!1547132 m!5818562))

(assert (=> d!1547132 m!5818330))

(declare-fun m!5819220 () Bool)

(assert (=> d!1547132 m!5819220))

(assert (=> d!1547132 m!5818350))

(assert (=> b!4827726 m!5818330))

(assert (=> b!4827726 m!5818556))

(assert (=> b!4827332 d!1547132))

(assert (=> b!4827332 d!1546954))

(assert (=> b!4827332 d!1546956))

(declare-fun bs!1164893 () Bool)

(declare-fun b!4827727 () Bool)

(assert (= bs!1164893 (and b!4827727 b!4827534)))

(declare-fun lambda!237203 () Int)

(assert (=> bs!1164893 (= (= (t!362620 (toList!7502 lt!1974096)) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= lambda!237203 lambda!237158))))

(declare-fun bs!1164894 () Bool)

(assert (= bs!1164894 (and b!4827727 b!4827528)))

(assert (=> bs!1164894 (= (= (t!362620 (toList!7502 lt!1974096)) (Cons!55000 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))) (= lambda!237203 lambda!237157))))

(declare-fun bs!1164895 () Bool)

(assert (= bs!1164895 (and b!4827727 b!4827526)))

(assert (=> bs!1164895 (= (= (t!362620 (toList!7502 lt!1974096)) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (= lambda!237203 lambda!237156))))

(declare-fun bs!1164896 () Bool)

(assert (= bs!1164896 (and b!4827727 b!4827697)))

(assert (=> bs!1164896 (= (= (t!362620 (toList!7502 lt!1974096)) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= lambda!237203 lambda!237199))))

(declare-fun bs!1164897 () Bool)

(assert (= bs!1164897 (and b!4827727 b!4827716)))

(assert (=> bs!1164897 (= (= (t!362620 (toList!7502 lt!1974096)) (toList!7502 lt!1974096)) (= lambda!237203 lambda!237201))))

(assert (=> b!4827727 true))

(declare-fun bs!1164898 () Bool)

(declare-fun b!4827729 () Bool)

(assert (= bs!1164898 (and b!4827729 b!4827534)))

(declare-fun lambda!237204 () Int)

(assert (=> bs!1164898 (= (= (Cons!55000 (h!61434 (toList!7502 lt!1974096)) (t!362620 (toList!7502 lt!1974096))) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= lambda!237204 lambda!237158))))

(declare-fun bs!1164899 () Bool)

(assert (= bs!1164899 (and b!4827729 b!4827528)))

(assert (=> bs!1164899 (= (= (Cons!55000 (h!61434 (toList!7502 lt!1974096)) (t!362620 (toList!7502 lt!1974096))) (Cons!55000 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))) (= lambda!237204 lambda!237157))))

(declare-fun bs!1164900 () Bool)

(assert (= bs!1164900 (and b!4827729 b!4827526)))

(assert (=> bs!1164900 (= (= (Cons!55000 (h!61434 (toList!7502 lt!1974096)) (t!362620 (toList!7502 lt!1974096))) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (= lambda!237204 lambda!237156))))

(declare-fun bs!1164901 () Bool)

(assert (= bs!1164901 (and b!4827729 b!4827697)))

(assert (=> bs!1164901 (= (= (Cons!55000 (h!61434 (toList!7502 lt!1974096)) (t!362620 (toList!7502 lt!1974096))) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= lambda!237204 lambda!237199))))

(declare-fun bs!1164902 () Bool)

(assert (= bs!1164902 (and b!4827729 b!4827716)))

(assert (=> bs!1164902 (= (= (Cons!55000 (h!61434 (toList!7502 lt!1974096)) (t!362620 (toList!7502 lt!1974096))) (toList!7502 lt!1974096)) (= lambda!237204 lambda!237201))))

(declare-fun bs!1164903 () Bool)

(assert (= bs!1164903 (and b!4827729 b!4827727)))

(assert (=> bs!1164903 (= (= (Cons!55000 (h!61434 (toList!7502 lt!1974096)) (t!362620 (toList!7502 lt!1974096))) (t!362620 (toList!7502 lt!1974096))) (= lambda!237204 lambda!237203))))

(assert (=> b!4827729 true))

(declare-fun bs!1164904 () Bool)

(declare-fun b!4827735 () Bool)

(assert (= bs!1164904 (and b!4827735 b!4827534)))

(declare-fun lambda!237205 () Int)

(assert (=> bs!1164904 (= (= (toList!7502 lt!1974096) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= lambda!237205 lambda!237158))))

(declare-fun bs!1164905 () Bool)

(assert (= bs!1164905 (and b!4827735 b!4827528)))

(assert (=> bs!1164905 (= (= (toList!7502 lt!1974096) (Cons!55000 (h!61434 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))))) (= lambda!237205 lambda!237157))))

(declare-fun bs!1164906 () Bool)

(assert (= bs!1164906 (and b!4827735 b!4827526)))

(assert (=> bs!1164906 (= (= (toList!7502 lt!1974096) (t!362620 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))) (= lambda!237205 lambda!237156))))

(declare-fun bs!1164907 () Bool)

(assert (= bs!1164907 (and b!4827735 b!4827697)))

(assert (=> bs!1164907 (= (= (toList!7502 lt!1974096) (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) (= lambda!237205 lambda!237199))))

(declare-fun bs!1164908 () Bool)

(assert (= bs!1164908 (and b!4827735 b!4827716)))

(assert (=> bs!1164908 (= lambda!237205 lambda!237201)))

(declare-fun bs!1164909 () Bool)

(assert (= bs!1164909 (and b!4827735 b!4827729)))

(assert (=> bs!1164909 (= (= (toList!7502 lt!1974096) (Cons!55000 (h!61434 (toList!7502 lt!1974096)) (t!362620 (toList!7502 lt!1974096)))) (= lambda!237205 lambda!237204))))

(declare-fun bs!1164910 () Bool)

(assert (= bs!1164910 (and b!4827735 b!4827727)))

(assert (=> bs!1164910 (= (= (toList!7502 lt!1974096) (t!362620 (toList!7502 lt!1974096))) (= lambda!237205 lambda!237203))))

(assert (=> b!4827735 true))

(declare-fun bs!1164911 () Bool)

(declare-fun b!4827732 () Bool)

(assert (= bs!1164911 (and b!4827732 b!4827531)))

(declare-fun lambda!237206 () Int)

(assert (=> bs!1164911 (= lambda!237206 lambda!237159)))

(declare-fun bs!1164912 () Bool)

(assert (= bs!1164912 (and b!4827732 b!4827698)))

(assert (=> bs!1164912 (= lambda!237206 lambda!237200)))

(declare-fun bs!1164913 () Bool)

(assert (= bs!1164913 (and b!4827732 b!4827717)))

(assert (=> bs!1164913 (= lambda!237206 lambda!237202)))

(assert (=> b!4827727 false))

(declare-fun lt!1974585 () Unit!143250)

(assert (=> b!4827727 (= lt!1974585 (forallContained!4394 (getKeysList!1164 (t!362620 (toList!7502 lt!1974096))) lambda!237203 (_1!32415 (h!61434 (toList!7502 lt!1974096)))))))

(declare-fun e!3016654 () Unit!143250)

(declare-fun Unit!143337 () Unit!143250)

(assert (=> b!4827727 (= e!3016654 Unit!143337)))

(declare-fun b!4827728 () Bool)

(declare-fun e!3016655 () List!55127)

(assert (=> b!4827728 (= e!3016655 Nil!55003)))

(declare-fun d!1547134 () Bool)

(declare-fun e!3016653 () Bool)

(assert (=> d!1547134 e!3016653))

(declare-fun res!2055685 () Bool)

(assert (=> d!1547134 (=> (not res!2055685) (not e!3016653))))

(declare-fun lt!1974582 () List!55127)

(assert (=> d!1547134 (= res!2055685 (noDuplicate!966 lt!1974582))))

(assert (=> d!1547134 (= lt!1974582 e!3016655)))

(declare-fun c!822637 () Bool)

(assert (=> d!1547134 (= c!822637 ((_ is Cons!55000) (toList!7502 lt!1974096)))))

(assert (=> d!1547134 (invariantList!1817 (toList!7502 lt!1974096))))

(assert (=> d!1547134 (= (getKeysList!1164 (toList!7502 lt!1974096)) lt!1974582)))

(assert (=> b!4827729 (= e!3016655 (Cons!55003 (_1!32415 (h!61434 (toList!7502 lt!1974096))) (getKeysList!1164 (t!362620 (toList!7502 lt!1974096)))))))

(declare-fun c!822638 () Bool)

(assert (=> b!4827729 (= c!822638 (containsKey!4391 (t!362620 (toList!7502 lt!1974096)) (_1!32415 (h!61434 (toList!7502 lt!1974096)))))))

(declare-fun lt!1974583 () Unit!143250)

(declare-fun e!3016652 () Unit!143250)

(assert (=> b!4827729 (= lt!1974583 e!3016652)))

(declare-fun c!822636 () Bool)

(assert (=> b!4827729 (= c!822636 (contains!18809 (getKeysList!1164 (t!362620 (toList!7502 lt!1974096))) (_1!32415 (h!61434 (toList!7502 lt!1974096)))))))

(declare-fun lt!1974587 () Unit!143250)

(assert (=> b!4827729 (= lt!1974587 e!3016654)))

(declare-fun lt!1974581 () List!55127)

(assert (=> b!4827729 (= lt!1974581 (getKeysList!1164 (t!362620 (toList!7502 lt!1974096))))))

(declare-fun lt!1974584 () Unit!143250)

(assert (=> b!4827729 (= lt!1974584 (lemmaForallContainsAddHeadPreserves!379 (t!362620 (toList!7502 lt!1974096)) lt!1974581 (h!61434 (toList!7502 lt!1974096))))))

(assert (=> b!4827729 (forall!12632 lt!1974581 lambda!237204)))

(declare-fun lt!1974586 () Unit!143250)

(assert (=> b!4827729 (= lt!1974586 lt!1974584)))

(declare-fun b!4827730 () Bool)

(declare-fun Unit!143343 () Unit!143250)

(assert (=> b!4827730 (= e!3016652 Unit!143343)))

(declare-fun b!4827731 () Bool)

(assert (=> b!4827731 false))

(declare-fun Unit!143345 () Unit!143250)

(assert (=> b!4827731 (= e!3016652 Unit!143345)))

(assert (=> b!4827732 (= e!3016653 (= (content!9825 lt!1974582) (content!9825 (map!12591 (toList!7502 lt!1974096) lambda!237206))))))

(declare-fun b!4827733 () Bool)

(declare-fun res!2055686 () Bool)

(assert (=> b!4827733 (=> (not res!2055686) (not e!3016653))))

(assert (=> b!4827733 (= res!2055686 (= (length!788 lt!1974582) (length!789 (toList!7502 lt!1974096))))))

(declare-fun b!4827734 () Bool)

(declare-fun Unit!143348 () Unit!143250)

(assert (=> b!4827734 (= e!3016654 Unit!143348)))

(declare-fun res!2055687 () Bool)

(assert (=> b!4827735 (=> (not res!2055687) (not e!3016653))))

(assert (=> b!4827735 (= res!2055687 (forall!12632 lt!1974582 lambda!237205))))

(assert (= (and d!1547134 c!822637) b!4827729))

(assert (= (and d!1547134 (not c!822637)) b!4827728))

(assert (= (and b!4827729 c!822638) b!4827731))

(assert (= (and b!4827729 (not c!822638)) b!4827730))

(assert (= (and b!4827729 c!822636) b!4827727))

(assert (= (and b!4827729 (not c!822636)) b!4827734))

(assert (= (and d!1547134 res!2055685) b!4827733))

(assert (= (and b!4827733 res!2055686) b!4827735))

(assert (= (and b!4827735 res!2055687) b!4827732))

(declare-fun m!5819222 () Bool)

(assert (=> b!4827727 m!5819222))

(assert (=> b!4827727 m!5819222))

(declare-fun m!5819224 () Bool)

(assert (=> b!4827727 m!5819224))

(declare-fun m!5819226 () Bool)

(assert (=> b!4827733 m!5819226))

(assert (=> b!4827733 m!5819204))

(declare-fun m!5819228 () Bool)

(assert (=> d!1547134 m!5819228))

(assert (=> d!1547134 m!5819192))

(declare-fun m!5819230 () Bool)

(assert (=> b!4827729 m!5819230))

(declare-fun m!5819232 () Bool)

(assert (=> b!4827729 m!5819232))

(assert (=> b!4827729 m!5819222))

(declare-fun m!5819234 () Bool)

(assert (=> b!4827729 m!5819234))

(assert (=> b!4827729 m!5819222))

(declare-fun m!5819236 () Bool)

(assert (=> b!4827729 m!5819236))

(declare-fun m!5819238 () Bool)

(assert (=> b!4827735 m!5819238))

(declare-fun m!5819240 () Bool)

(assert (=> b!4827732 m!5819240))

(declare-fun m!5819242 () Bool)

(assert (=> b!4827732 m!5819242))

(assert (=> b!4827732 m!5819242))

(declare-fun m!5819244 () Bool)

(assert (=> b!4827732 m!5819244))

(assert (=> b!4827322 d!1547134))

(assert (=> bs!1164699 d!1546964))

(declare-fun d!1547136 () Bool)

(assert (=> d!1547136 (= (isDefined!10620 (getValueByKey!2632 (toList!7502 lt!1974096) key!5594)) (not (isEmpty!29667 (getValueByKey!2632 (toList!7502 lt!1974096) key!5594))))))

(declare-fun bs!1164914 () Bool)

(assert (= bs!1164914 d!1547136))

(assert (=> bs!1164914 m!5818542))

(declare-fun m!5819246 () Bool)

(assert (=> bs!1164914 m!5819246))

(assert (=> b!4827321 d!1547136))

(declare-fun b!4827739 () Bool)

(declare-fun e!3016657 () Option!13505)

(assert (=> b!4827739 (= e!3016657 None!13504)))

(declare-fun b!4827737 () Bool)

(declare-fun e!3016656 () Option!13505)

(assert (=> b!4827737 (= e!3016656 e!3016657)))

(declare-fun c!822640 () Bool)

(assert (=> b!4827737 (= c!822640 (and ((_ is Cons!55000) (toList!7502 lt!1974096)) (not (= (_1!32415 (h!61434 (toList!7502 lt!1974096))) key!5594))))))

(declare-fun d!1547138 () Bool)

(declare-fun c!822639 () Bool)

(assert (=> d!1547138 (= c!822639 (and ((_ is Cons!55000) (toList!7502 lt!1974096)) (= (_1!32415 (h!61434 (toList!7502 lt!1974096))) key!5594)))))

(assert (=> d!1547138 (= (getValueByKey!2632 (toList!7502 lt!1974096) key!5594) e!3016656)))

(declare-fun b!4827738 () Bool)

(assert (=> b!4827738 (= e!3016657 (getValueByKey!2632 (t!362620 (toList!7502 lt!1974096)) key!5594))))

(declare-fun b!4827736 () Bool)

(assert (=> b!4827736 (= e!3016656 (Some!13504 (_2!32415 (h!61434 (toList!7502 lt!1974096)))))))

(assert (= (and d!1547138 c!822639) b!4827736))

(assert (= (and d!1547138 (not c!822639)) b!4827737))

(assert (= (and b!4827737 c!822640) b!4827738))

(assert (= (and b!4827737 (not c!822640)) b!4827739))

(declare-fun m!5819248 () Bool)

(assert (=> b!4827738 m!5819248))

(assert (=> b!4827321 d!1547138))

(declare-fun d!1547140 () Bool)

(assert (=> d!1547140 (isDefined!10620 (getValueByKey!2632 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(declare-fun lt!1974590 () Unit!143250)

(declare-fun choose!35174 (List!55124 K!16684) Unit!143250)

(assert (=> d!1547140 (= lt!1974590 (choose!35174 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(assert (=> d!1547140 (invariantList!1817 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))))

(assert (=> d!1547140 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2417 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594) lt!1974590)))

(declare-fun bs!1164915 () Bool)

(assert (= bs!1164915 d!1547140))

(assert (=> bs!1164915 m!5818504))

(assert (=> bs!1164915 m!5818504))

(assert (=> bs!1164915 m!5818506))

(declare-fun m!5819250 () Bool)

(assert (=> bs!1164915 m!5819250))

(assert (=> bs!1164915 m!5818836))

(assert (=> b!4827305 d!1547140))

(assert (=> b!4827305 d!1547014))

(assert (=> b!4827305 d!1547016))

(declare-fun d!1547142 () Bool)

(assert (=> d!1547142 (contains!18809 (getKeysList!1164 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096))) key!5594)))

(declare-fun lt!1974593 () Unit!143250)

(declare-fun choose!35175 (List!55124 K!16684) Unit!143250)

(assert (=> d!1547142 (= lt!1974593 (choose!35175 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(assert (=> d!1547142 (invariantList!1817 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))))

(assert (=> d!1547142 (= (lemmaInListThenGetKeysListContains!1159 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594) lt!1974593)))

(declare-fun bs!1164916 () Bool)

(assert (= bs!1164916 d!1547142))

(assert (=> bs!1164916 m!5818514))

(assert (=> bs!1164916 m!5818514))

(declare-fun m!5819252 () Bool)

(assert (=> bs!1164916 m!5819252))

(declare-fun m!5819254 () Bool)

(assert (=> bs!1164916 m!5819254))

(assert (=> bs!1164916 m!5818836))

(assert (=> b!4827305 d!1547142))

(declare-fun d!1547144 () Bool)

(declare-fun res!2055688 () Bool)

(declare-fun e!3016658 () Bool)

(assert (=> d!1547144 (=> res!2055688 e!3016658)))

(assert (=> d!1547144 (= res!2055688 ((_ is Nil!55000) (ite c!822548 (toList!7502 lt!1974096) (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(assert (=> d!1547144 (= (forall!12630 (ite c!822548 (toList!7502 lt!1974096) (_2!32416 (h!61435 (toList!7501 lm!2325)))) (ite c!822548 lambda!237112 lambda!237114)) e!3016658)))

(declare-fun b!4827740 () Bool)

(declare-fun e!3016659 () Bool)

(assert (=> b!4827740 (= e!3016658 e!3016659)))

(declare-fun res!2055689 () Bool)

(assert (=> b!4827740 (=> (not res!2055689) (not e!3016659))))

(assert (=> b!4827740 (= res!2055689 (dynLambda!22227 (ite c!822548 lambda!237112 lambda!237114) (h!61434 (ite c!822548 (toList!7502 lt!1974096) (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun b!4827741 () Bool)

(assert (=> b!4827741 (= e!3016659 (forall!12630 (t!362620 (ite c!822548 (toList!7502 lt!1974096) (_2!32416 (h!61435 (toList!7501 lm!2325))))) (ite c!822548 lambda!237112 lambda!237114)))))

(assert (= (and d!1547144 (not res!2055688)) b!4827740))

(assert (= (and b!4827740 res!2055689) b!4827741))

(declare-fun b_lambda!190133 () Bool)

(assert (=> (not b_lambda!190133) (not b!4827740)))

(declare-fun m!5819256 () Bool)

(assert (=> b!4827740 m!5819256))

(declare-fun m!5819258 () Bool)

(assert (=> b!4827741 m!5819258))

(assert (=> bm!336464 d!1547144))

(declare-fun d!1547146 () Bool)

(assert (=> d!1547146 (= (invariantList!1817 (toList!7502 lt!1974264)) (noDuplicatedKeys!483 (toList!7502 lt!1974264)))))

(declare-fun bs!1164917 () Bool)

(assert (= bs!1164917 d!1547146))

(declare-fun m!5819260 () Bool)

(assert (=> bs!1164917 m!5819260))

(assert (=> b!4827276 d!1547146))

(declare-fun d!1547148 () Bool)

(declare-fun res!2055690 () Bool)

(declare-fun e!3016660 () Bool)

(assert (=> d!1547148 (=> res!2055690 e!3016660)))

(assert (=> d!1547148 (= res!2055690 (and ((_ is Cons!55000) (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (= (_1!32415 (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) key!5594)))))

(assert (=> d!1547148 (= (containsKey!4388 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))) key!5594) e!3016660)))

(declare-fun b!4827742 () Bool)

(declare-fun e!3016661 () Bool)

(assert (=> b!4827742 (= e!3016660 e!3016661)))

(declare-fun res!2055691 () Bool)

(assert (=> b!4827742 (=> (not res!2055691) (not e!3016661))))

(assert (=> b!4827742 (= res!2055691 ((_ is Cons!55000) (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))

(declare-fun b!4827743 () Bool)

(assert (=> b!4827743 (= e!3016661 (containsKey!4388 (t!362620 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))) key!5594))))

(assert (= (and d!1547148 (not res!2055690)) b!4827742))

(assert (= (and b!4827742 res!2055691) b!4827743))

(declare-fun m!5819262 () Bool)

(assert (=> b!4827743 m!5819262))

(assert (=> b!4827233 d!1547148))

(declare-fun d!1547150 () Bool)

(assert (=> d!1547150 (isDefined!10620 (getValueByKey!2632 (toList!7502 lt!1974096) key!5594))))

(declare-fun lt!1974594 () Unit!143250)

(assert (=> d!1547150 (= lt!1974594 (choose!35174 (toList!7502 lt!1974096) key!5594))))

(assert (=> d!1547150 (invariantList!1817 (toList!7502 lt!1974096))))

(assert (=> d!1547150 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2417 (toList!7502 lt!1974096) key!5594) lt!1974594)))

(declare-fun bs!1164918 () Bool)

(assert (= bs!1164918 d!1547150))

(assert (=> bs!1164918 m!5818542))

(assert (=> bs!1164918 m!5818542))

(assert (=> bs!1164918 m!5818544))

(declare-fun m!5819264 () Bool)

(assert (=> bs!1164918 m!5819264))

(assert (=> bs!1164918 m!5819192))

(assert (=> b!4827320 d!1547150))

(assert (=> b!4827320 d!1547136))

(assert (=> b!4827320 d!1547138))

(declare-fun d!1547152 () Bool)

(assert (=> d!1547152 (contains!18809 (getKeysList!1164 (toList!7502 lt!1974096)) key!5594)))

(declare-fun lt!1974595 () Unit!143250)

(assert (=> d!1547152 (= lt!1974595 (choose!35175 (toList!7502 lt!1974096) key!5594))))

(assert (=> d!1547152 (invariantList!1817 (toList!7502 lt!1974096))))

(assert (=> d!1547152 (= (lemmaInListThenGetKeysListContains!1159 (toList!7502 lt!1974096) key!5594) lt!1974595)))

(declare-fun bs!1164919 () Bool)

(assert (= bs!1164919 d!1547152))

(assert (=> bs!1164919 m!5818552))

(assert (=> bs!1164919 m!5818552))

(declare-fun m!5819266 () Bool)

(assert (=> bs!1164919 m!5819266))

(declare-fun m!5819268 () Bool)

(assert (=> bs!1164919 m!5819268))

(assert (=> bs!1164919 m!5819192))

(assert (=> b!4827320 d!1547152))

(assert (=> b!4827303 d!1547076))

(assert (=> b!4827303 d!1547082))

(assert (=> b!4827302 d!1547082))

(assert (=> bm!336463 d!1547144))

(declare-fun d!1547154 () Bool)

(declare-fun res!2055692 () Bool)

(declare-fun e!3016662 () Bool)

(assert (=> d!1547154 (=> res!2055692 e!3016662)))

(assert (=> d!1547154 (= res!2055692 ((_ is Nil!55000) (toList!7502 lt!1974096)))))

(assert (=> d!1547154 (= (forall!12630 (toList!7502 lt!1974096) lambda!237115) e!3016662)))

(declare-fun b!4827744 () Bool)

(declare-fun e!3016663 () Bool)

(assert (=> b!4827744 (= e!3016662 e!3016663)))

(declare-fun res!2055693 () Bool)

(assert (=> b!4827744 (=> (not res!2055693) (not e!3016663))))

(assert (=> b!4827744 (= res!2055693 (dynLambda!22227 lambda!237115 (h!61434 (toList!7502 lt!1974096))))))

(declare-fun b!4827745 () Bool)

(assert (=> b!4827745 (= e!3016663 (forall!12630 (t!362620 (toList!7502 lt!1974096)) lambda!237115))))

(assert (= (and d!1547154 (not res!2055692)) b!4827744))

(assert (= (and b!4827744 res!2055693) b!4827745))

(declare-fun b_lambda!190135 () Bool)

(assert (=> (not b_lambda!190135) (not b!4827744)))

(declare-fun m!5819270 () Bool)

(assert (=> b!4827744 m!5819270))

(declare-fun m!5819272 () Bool)

(assert (=> b!4827745 m!5819272))

(assert (=> b!4827275 d!1547154))

(assert (=> b!4827318 d!1547120))

(assert (=> b!4827318 d!1547122))

(assert (=> b!4827317 d!1547122))

(assert (=> b!4827301 d!1547130))

(declare-fun d!1547156 () Bool)

(assert (=> d!1547156 (containsKey!4391 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594)))

(declare-fun lt!1974596 () Unit!143250)

(assert (=> d!1547156 (= lt!1974596 (choose!35171 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594))))

(assert (=> d!1547156 (invariantList!1817 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)))))

(assert (=> d!1547156 (= (lemmaInGetKeysListThenContainsKey!1164 (toList!7502 (addToMapMapFromBucket!1806 (_2!32416 (h!61435 (toList!7501 lm!2325))) lt!1974096)) key!5594) lt!1974596)))

(declare-fun bs!1164920 () Bool)

(assert (= bs!1164920 d!1547156))

(assert (=> bs!1164920 m!5818500))

(declare-fun m!5819274 () Bool)

(assert (=> bs!1164920 m!5819274))

(assert (=> bs!1164920 m!5818836))

(assert (=> b!4827301 d!1547156))

(declare-fun tp_is_empty!34495 () Bool)

(declare-fun tp!1362698 () Bool)

(declare-fun b!4827750 () Bool)

(declare-fun e!3016666 () Bool)

(assert (=> b!4827750 (= e!3016666 (and tp_is_empty!34491 tp_is_empty!34495 tp!1362698))))

(assert (=> b!4827339 (= tp!1362689 e!3016666)))

(assert (= (and b!4827339 ((_ is Cons!55000) (_2!32416 (h!61435 (toList!7501 lm!2325))))) b!4827750))

(declare-fun b!4827751 () Bool)

(declare-fun e!3016667 () Bool)

(declare-fun tp!1362699 () Bool)

(declare-fun tp!1362700 () Bool)

(assert (=> b!4827751 (= e!3016667 (and tp!1362699 tp!1362700))))

(assert (=> b!4827339 (= tp!1362690 e!3016667)))

(assert (= (and b!4827339 ((_ is Cons!55001) (t!362621 (toList!7501 lm!2325)))) b!4827751))

(declare-fun b_lambda!190137 () Bool)

(assert (= b_lambda!190091 (or b!4827278 b_lambda!190137)))

(declare-fun bs!1164921 () Bool)

(declare-fun d!1547158 () Bool)

(assert (= bs!1164921 (and d!1547158 b!4827278)))

(assert (=> bs!1164921 (= (dynLambda!22227 lambda!237114 (h!61434 (toList!7502 lt!1974273))) (contains!18807 lt!1974269 (_1!32415 (h!61434 (toList!7502 lt!1974273)))))))

(declare-fun m!5819276 () Bool)

(assert (=> bs!1164921 m!5819276))

(assert (=> b!4827577 d!1547158))

(declare-fun b_lambda!190139 () Bool)

(assert (= b_lambda!190071 (or d!1546890 b_lambda!190139)))

(declare-fun bs!1164922 () Bool)

(declare-fun d!1547160 () Bool)

(assert (= bs!1164922 (and d!1547160 d!1546890)))

(assert (=> bs!1164922 (= (dynLambda!22225 lambda!237118 (h!61435 (t!362621 (toList!7501 lm!2325)))) (noDuplicateKeys!2459 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))))))

(assert (=> bs!1164922 m!5819044))

(assert (=> b!4827386 d!1547160))

(declare-fun b_lambda!190141 () Bool)

(assert (= b_lambda!190079 (or b!4827278 b_lambda!190141)))

(declare-fun bs!1164923 () Bool)

(declare-fun d!1547162 () Bool)

(assert (= bs!1164923 (and d!1547162 b!4827278)))

(assert (=> bs!1164923 (= (dynLambda!22227 lambda!237114 (h!61434 (toList!7502 lt!1974096))) (contains!18807 lt!1974269 (_1!32415 (h!61434 (toList!7502 lt!1974096)))))))

(declare-fun m!5819278 () Bool)

(assert (=> bs!1164923 m!5819278))

(assert (=> b!4827420 d!1547162))

(declare-fun b_lambda!190143 () Bool)

(assert (= b_lambda!190073 (or d!1546892 b_lambda!190143)))

(declare-fun bs!1164924 () Bool)

(declare-fun d!1547164 () Bool)

(assert (= bs!1164924 (and d!1547164 d!1546892)))

(assert (=> bs!1164924 (= (dynLambda!22225 lambda!237121 (h!61435 (toList!7501 lm!2325))) (noDuplicateKeys!2459 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))

(assert (=> bs!1164924 m!5818398))

(assert (=> b!4827389 d!1547164))

(declare-fun b_lambda!190145 () Bool)

(assert (= b_lambda!190099 (or d!1546874 b_lambda!190145)))

(declare-fun bs!1164925 () Bool)

(declare-fun d!1547166 () Bool)

(assert (= bs!1164925 (and d!1547166 d!1546874)))

(assert (=> bs!1164925 (= (dynLambda!22227 lambda!237115 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (contains!18807 lt!1974264 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(declare-fun m!5819280 () Bool)

(assert (=> bs!1164925 m!5819280))

(assert (=> b!4827657 d!1547166))

(declare-fun b_lambda!190147 () Bool)

(assert (= b_lambda!190093 (or b!4827278 b_lambda!190147)))

(declare-fun bs!1164926 () Bool)

(declare-fun d!1547168 () Bool)

(assert (= bs!1164926 (and d!1547168 b!4827278)))

(assert (=> bs!1164926 (= (dynLambda!22227 lambda!237114 (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325)))))) (contains!18807 lt!1974269 (_1!32415 (h!61434 (t!362620 (_2!32416 (h!61435 (toList!7501 lm!2325))))))))))

(declare-fun m!5819282 () Bool)

(assert (=> bs!1164926 m!5819282))

(assert (=> b!4827608 d!1547168))

(declare-fun b_lambda!190149 () Bool)

(assert (= b_lambda!190087 (or b!4827278 b_lambda!190149)))

(declare-fun bs!1164927 () Bool)

(declare-fun d!1547170 () Bool)

(assert (= bs!1164927 (and d!1547170 b!4827278)))

(assert (=> bs!1164927 (= (dynLambda!22227 lambda!237114 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325))))) (contains!18807 lt!1974269 (_1!32415 (h!61434 (_2!32416 (h!61435 (toList!7501 lm!2325)))))))))

(assert (=> bs!1164927 m!5818480))

(assert (=> d!1547022 d!1547170))

(declare-fun b_lambda!190151 () Bool)

(assert (= b_lambda!190135 (or d!1546874 b_lambda!190151)))

(declare-fun bs!1164928 () Bool)

(declare-fun d!1547172 () Bool)

(assert (= bs!1164928 (and d!1547172 d!1546874)))

(assert (=> bs!1164928 (= (dynLambda!22227 lambda!237115 (h!61434 (toList!7502 lt!1974096))) (contains!18807 lt!1974264 (_1!32415 (h!61434 (toList!7502 lt!1974096)))))))

(declare-fun m!5819284 () Bool)

(assert (=> bs!1164928 m!5819284))

(assert (=> b!4827744 d!1547172))

(declare-fun b_lambda!190153 () Bool)

(assert (= b_lambda!190077 (or d!1546900 b_lambda!190153)))

(declare-fun bs!1164929 () Bool)

(declare-fun d!1547174 () Bool)

(assert (= bs!1164929 (and d!1547174 d!1546900)))

(declare-fun allKeysSameHash!2010 (List!55124 (_ BitVec 64) Hashable!7278) Bool)

(assert (=> bs!1164929 (= (dynLambda!22225 lambda!237124 (h!61435 (toList!7501 lm!2325))) (allKeysSameHash!2010 (_2!32416 (h!61435 (toList!7501 lm!2325))) (_1!32416 (h!61435 (toList!7501 lm!2325))) hashF!1543))))

(declare-fun m!5819286 () Bool)

(assert (=> bs!1164929 m!5819286))

(assert (=> b!4827410 d!1547174))

(declare-fun b_lambda!190155 () Bool)

(assert (= b_lambda!190101 (or start!500996 b_lambda!190155)))

(declare-fun bs!1164930 () Bool)

(declare-fun d!1547176 () Bool)

(assert (= bs!1164930 (and d!1547176 start!500996)))

(assert (=> bs!1164930 (= (dynLambda!22225 lambda!237042 (h!61435 (t!362621 (toList!7501 lm!2325)))) (noDuplicateKeys!2459 (_2!32416 (h!61435 (t!362621 (toList!7501 lm!2325))))))))

(assert (=> bs!1164930 m!5819044))

(assert (=> b!4827659 d!1547176))

(declare-fun b_lambda!190157 () Bool)

(assert (= b_lambda!190089 (or b!4827278 b_lambda!190157)))

(declare-fun bs!1164931 () Bool)

(declare-fun d!1547178 () Bool)

(assert (= bs!1164931 (and d!1547178 b!4827278)))

(assert (=> bs!1164931 (= (dynLambda!22227 lambda!237113 (h!61434 (toList!7502 lt!1974096))) (contains!18807 lt!1974096 (_1!32415 (h!61434 (toList!7502 lt!1974096)))))))

(declare-fun m!5819288 () Bool)

(assert (=> bs!1164931 m!5819288))

(assert (=> b!4827575 d!1547178))

(check-sat (not b!4827625) (not b!4827621) (not b!4827390) (not b!4827612) (not d!1547042) (not bm!336475) (not d!1547128) (not d!1546966) (not d!1546950) (not b_lambda!190147) (not b!4827716) (not b!4827732) (not b!4827576) (not b!4827644) (not b!4827647) (not b!4827658) (not b!4827696) (not b!4827606) (not d!1547014) (not b!4827611) (not d!1547152) (not d!1547122) (not b!4827660) (not b!4827622) (not d!1546978) (not b!4827698) (not b!4827655) (not b!4827617) (not b_lambda!190141) (not d!1547022) (not b!4827723) (not b!4827602) (not b!4827714) (not b_lambda!190137) (not b!4827726) (not b!4827526) (not b!4827474) (not d!1547150) (not b!4827646) (not bm!336480) (not b!4827392) (not d!1546976) (not b!4827733) (not bm!336477) (not d!1546940) (not b!4827531) (not b!4827613) (not b!4827729) (not b!4827534) (not b!4827743) (not b!4827604) (not b!4827476) (not b!4827717) (not b!4827387) tp_is_empty!34495 (not bs!1164930) (not d!1547036) (not b!4827741) (not b!4827455) (not b!4827552) (not b!4827616) (not bm!336476) (not b_lambda!190151) (not bm!336479) (not d!1547056) tp_is_empty!34491 (not bs!1164921) (not b!4827712) (not d!1547082) (not b!4827706) (not d!1547146) (not b_lambda!190139) (not b!4827735) (not bs!1164929) (not b!4827615) (not b!4827578) (not b_lambda!190153) (not b_lambda!190149) (not d!1546954) (not d!1547024) (not d!1547142) (not b!4827528) (not b!4827609) (not d!1547060) (not b!4827668) (not b!4827643) (not bs!1164924) (not b!4827720) (not d!1547132) (not d!1547140) (not bm!336481) (not bs!1164926) (not b!4827532) (not b!4827573) (not b!4827409) (not b_lambda!190133) (not bs!1164925) (not b!4827715) (not b_lambda!190143) (not b!4827601) (not b!4827738) (not b!4827600) (not b!4827610) (not d!1547134) (not b_lambda!190157) (not b!4827440) (not b!4827624) (not b!4827745) (not b!4827605) (not b!4827675) (not d!1547046) (not bs!1164927) (not d!1547120) (not b!4827750) (not bm!336482) (not b!4827411) (not bs!1164928) (not d!1547118) (not b!4827599) (not d!1547030) (not b!4827697) (not b_lambda!190059) (not bs!1164923) (not b!4827574) (not d!1547076) (not b!4827727) (not bm!336478) (not d!1546932) (not b!4827421) (not d!1547156) (not b!4827556) (not b_lambda!190145) (not bs!1164931) (not bs!1164922) (not b!4827751) (not d!1547136) (not b!4827454) (not d!1546928) (not b_lambda!190155))
(check-sat)
