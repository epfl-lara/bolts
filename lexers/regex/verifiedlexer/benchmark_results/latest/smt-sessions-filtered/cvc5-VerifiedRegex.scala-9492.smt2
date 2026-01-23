; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501694 () Bool)

(assert start!501694)

(declare-fun b!4830188 () Bool)

(declare-fun e!3018264 () Bool)

(declare-fun e!3018262 () Bool)

(assert (=> b!4830188 (= e!3018264 e!3018262)))

(declare-fun res!2057166 () Bool)

(assert (=> b!4830188 (=> (not res!2057166) (not e!3018262))))

(declare-datatypes ((V!16993 0))(
  ( (V!16994 (val!21703 Int)) )
))
(declare-datatypes ((K!16747 0))(
  ( (K!16748 (val!21704 Int)) )
))
(declare-datatypes ((tuple2!58342 0))(
  ( (tuple2!58343 (_1!32465 K!16747) (_2!32465 V!16993)) )
))
(declare-datatypes ((List!55182 0))(
  ( (Nil!55058) (Cons!55058 (h!61492 tuple2!58342) (t!362678 List!55182)) )
))
(declare-datatypes ((tuple2!58344 0))(
  ( (tuple2!58345 (_1!32466 (_ BitVec 64)) (_2!32466 List!55182)) )
))
(declare-datatypes ((List!55183 0))(
  ( (Nil!55059) (Cons!55059 (h!61493 tuple2!58344) (t!362679 List!55183)) )
))
(declare-datatypes ((ListLongMap!6069 0))(
  ( (ListLongMap!6070 (toList!7547 List!55183)) )
))
(declare-fun lm!2325 () ListLongMap!6069)

(declare-fun lt!1976362 () (_ BitVec 64))

(declare-fun contains!18866 (ListLongMap!6069 (_ BitVec 64)) Bool)

(assert (=> b!4830188 (= res!2057166 (not (contains!18866 lm!2325 lt!1976362)))))

(declare-datatypes ((Hashable!7303 0))(
  ( (HashableExt!7302 (__x!33578 Int)) )
))
(declare-fun hashF!1543 () Hashable!7303)

(declare-fun key!5594 () K!16747)

(declare-fun hash!5468 (Hashable!7303 K!16747) (_ BitVec 64))

(assert (=> b!4830188 (= lt!1976362 (hash!5468 hashF!1543 key!5594))))

(declare-fun b!4830190 () Bool)

(declare-fun e!3018261 () Bool)

(declare-fun lt!1976363 () ListLongMap!6069)

(assert (=> b!4830190 (= e!3018261 (not (contains!18866 lt!1976363 lt!1976362)))))

(declare-fun b!4830191 () Bool)

(assert (=> b!4830191 (= e!3018262 (not e!3018261))))

(declare-fun res!2057172 () Bool)

(assert (=> b!4830191 (=> res!2057172 e!3018261)))

(declare-fun lambda!237833 () Int)

(declare-fun forall!12669 (List!55183 Int) Bool)

(assert (=> b!4830191 (= res!2057172 (not (forall!12669 (toList!7547 lt!1976363) lambda!237833)))))

(declare-fun tail!9429 (ListLongMap!6069) ListLongMap!6069)

(assert (=> b!4830191 (= lt!1976363 (tail!9429 lm!2325))))

(declare-fun containsKey!4426 (List!55182 K!16747) Bool)

(declare-fun apply!13368 (ListLongMap!6069 (_ BitVec 64)) List!55182)

(assert (=> b!4830191 (not (containsKey!4426 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325)))) key!5594))))

(declare-datatypes ((Unit!143681 0))(
  ( (Unit!143682) )
))
(declare-fun lt!1976360 () Unit!143681)

(declare-fun lemmaNotSameHashThenCannotContainKey!237 (ListLongMap!6069 K!16747 (_ BitVec 64) Hashable!7303) Unit!143681)

(assert (=> b!4830191 (= lt!1976360 (lemmaNotSameHashThenCannotContainKey!237 lm!2325 key!5594 (_1!32466 (h!61493 (toList!7547 lm!2325))) hashF!1543))))

(declare-datatypes ((ListMap!6919 0))(
  ( (ListMap!6920 (toList!7548 List!55182)) )
))
(declare-fun lt!1976361 () ListMap!6919)

(declare-fun e!3018263 () Bool)

(declare-fun contains!18867 (ListMap!6919 K!16747) Bool)

(declare-fun addToMapMapFromBucket!1826 (List!55182 ListMap!6919) ListMap!6919)

(assert (=> b!4830191 (= (contains!18867 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361) key!5594) e!3018263)))

(declare-fun res!2057167 () Bool)

(assert (=> b!4830191 (=> res!2057167 e!3018263)))

(assert (=> b!4830191 (= res!2057167 (containsKey!4426 (_2!32466 (h!61493 (toList!7547 lm!2325))) key!5594))))

(declare-fun lt!1976364 () Unit!143681)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!49 (List!55182 ListMap!6919 K!16747) Unit!143681)

(assert (=> b!4830191 (= lt!1976364 (lemmaAddToMapFromBucketContainsIIFInAccOrL!49 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361 key!5594))))

(declare-fun extractMap!2711 (List!55183) ListMap!6919)

(assert (=> b!4830191 (= lt!1976361 (extractMap!2711 (t!362679 (toList!7547 lm!2325))))))

(declare-fun b!4830192 () Bool)

(declare-fun e!3018265 () Bool)

(declare-fun tp!1362865 () Bool)

(assert (=> b!4830192 (= e!3018265 tp!1362865)))

(declare-fun b!4830193 () Bool)

(declare-fun res!2057169 () Bool)

(assert (=> b!4830193 (=> (not res!2057169) (not e!3018264))))

(declare-fun allKeysSameHashInMap!2619 (ListLongMap!6069 Hashable!7303) Bool)

(assert (=> b!4830193 (= res!2057169 (allKeysSameHashInMap!2619 lm!2325 hashF!1543))))

(declare-fun b!4830194 () Bool)

(assert (=> b!4830194 (= e!3018263 (contains!18867 lt!1976361 key!5594))))

(declare-fun b!4830195 () Bool)

(declare-fun res!2057170 () Bool)

(assert (=> b!4830195 (=> (not res!2057170) (not e!3018262))))

(assert (=> b!4830195 (= res!2057170 (is-Cons!55059 (toList!7547 lm!2325)))))

(declare-fun b!4830189 () Bool)

(declare-fun res!2057171 () Bool)

(assert (=> b!4830189 (=> res!2057171 e!3018261)))

(assert (=> b!4830189 (= res!2057171 (not (allKeysSameHashInMap!2619 lt!1976363 hashF!1543)))))

(declare-fun res!2057168 () Bool)

(assert (=> start!501694 (=> (not res!2057168) (not e!3018264))))

(assert (=> start!501694 (= res!2057168 (forall!12669 (toList!7547 lm!2325) lambda!237833))))

(assert (=> start!501694 e!3018264))

(declare-fun inv!70648 (ListLongMap!6069) Bool)

(assert (=> start!501694 (and (inv!70648 lm!2325) e!3018265)))

(assert (=> start!501694 true))

(declare-fun tp_is_empty!34557 () Bool)

(assert (=> start!501694 tp_is_empty!34557))

(assert (= (and start!501694 res!2057168) b!4830193))

(assert (= (and b!4830193 res!2057169) b!4830188))

(assert (= (and b!4830188 res!2057166) b!4830195))

(assert (= (and b!4830195 res!2057170) b!4830191))

(assert (= (and b!4830191 (not res!2057167)) b!4830194))

(assert (= (and b!4830191 (not res!2057172)) b!4830189))

(assert (= (and b!4830189 (not res!2057171)) b!4830190))

(assert (= start!501694 b!4830192))

(declare-fun m!5822914 () Bool)

(assert (=> b!4830188 m!5822914))

(declare-fun m!5822916 () Bool)

(assert (=> b!4830188 m!5822916))

(declare-fun m!5822918 () Bool)

(assert (=> b!4830190 m!5822918))

(declare-fun m!5822920 () Bool)

(assert (=> b!4830189 m!5822920))

(declare-fun m!5822922 () Bool)

(assert (=> b!4830193 m!5822922))

(declare-fun m!5822924 () Bool)

(assert (=> start!501694 m!5822924))

(declare-fun m!5822926 () Bool)

(assert (=> start!501694 m!5822926))

(declare-fun m!5822928 () Bool)

(assert (=> b!4830194 m!5822928))

(declare-fun m!5822930 () Bool)

(assert (=> b!4830191 m!5822930))

(declare-fun m!5822932 () Bool)

(assert (=> b!4830191 m!5822932))

(declare-fun m!5822934 () Bool)

(assert (=> b!4830191 m!5822934))

(declare-fun m!5822936 () Bool)

(assert (=> b!4830191 m!5822936))

(declare-fun m!5822938 () Bool)

(assert (=> b!4830191 m!5822938))

(declare-fun m!5822940 () Bool)

(assert (=> b!4830191 m!5822940))

(declare-fun m!5822942 () Bool)

(assert (=> b!4830191 m!5822942))

(declare-fun m!5822944 () Bool)

(assert (=> b!4830191 m!5822944))

(declare-fun m!5822946 () Bool)

(assert (=> b!4830191 m!5822946))

(assert (=> b!4830191 m!5822942))

(declare-fun m!5822948 () Bool)

(assert (=> b!4830191 m!5822948))

(assert (=> b!4830191 m!5822934))

(push 1)

(assert (not b!4830191))

(assert (not b!4830190))

(assert (not b!4830189))

(assert (not b!4830194))

(assert (not b!4830192))

(assert (not b!4830188))

(assert (not b!4830193))

(assert tp_is_empty!34557)

(assert (not start!501694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1548275 () Bool)

(declare-fun e!3018285 () Bool)

(assert (=> d!1548275 e!3018285))

(declare-fun res!2057196 () Bool)

(assert (=> d!1548275 (=> res!2057196 e!3018285)))

(declare-fun lt!1976390 () Bool)

(assert (=> d!1548275 (= res!2057196 (not lt!1976390))))

(declare-fun lt!1976388 () Bool)

(assert (=> d!1548275 (= lt!1976390 lt!1976388)))

(declare-fun lt!1976391 () Unit!143681)

(declare-fun e!3018286 () Unit!143681)

(assert (=> d!1548275 (= lt!1976391 e!3018286)))

(declare-fun c!823014 () Bool)

(assert (=> d!1548275 (= c!823014 lt!1976388)))

(declare-fun containsKey!4428 (List!55183 (_ BitVec 64)) Bool)

(assert (=> d!1548275 (= lt!1976388 (containsKey!4428 (toList!7547 lt!1976363) lt!1976362))))

(assert (=> d!1548275 (= (contains!18866 lt!1976363 lt!1976362) lt!1976390)))

(declare-fun b!4830226 () Bool)

(declare-fun lt!1976389 () Unit!143681)

(assert (=> b!4830226 (= e!3018286 lt!1976389)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2433 (List!55183 (_ BitVec 64)) Unit!143681)

(assert (=> b!4830226 (= lt!1976389 (lemmaContainsKeyImpliesGetValueByKeyDefined!2433 (toList!7547 lt!1976363) lt!1976362))))

(declare-datatypes ((Option!13521 0))(
  ( (None!13520) (Some!13520 (v!49213 List!55182)) )
))
(declare-fun isDefined!10636 (Option!13521) Bool)

(declare-fun getValueByKey!2648 (List!55183 (_ BitVec 64)) Option!13521)

(assert (=> b!4830226 (isDefined!10636 (getValueByKey!2648 (toList!7547 lt!1976363) lt!1976362))))

(declare-fun b!4830227 () Bool)

(declare-fun Unit!143685 () Unit!143681)

(assert (=> b!4830227 (= e!3018286 Unit!143685)))

(declare-fun b!4830228 () Bool)

(assert (=> b!4830228 (= e!3018285 (isDefined!10636 (getValueByKey!2648 (toList!7547 lt!1976363) lt!1976362)))))

(assert (= (and d!1548275 c!823014) b!4830226))

(assert (= (and d!1548275 (not c!823014)) b!4830227))

(assert (= (and d!1548275 (not res!2057196)) b!4830228))

(declare-fun m!5822986 () Bool)

(assert (=> d!1548275 m!5822986))

(declare-fun m!5822988 () Bool)

(assert (=> b!4830226 m!5822988))

(declare-fun m!5822990 () Bool)

(assert (=> b!4830226 m!5822990))

(assert (=> b!4830226 m!5822990))

(declare-fun m!5822992 () Bool)

(assert (=> b!4830226 m!5822992))

(assert (=> b!4830228 m!5822990))

(assert (=> b!4830228 m!5822990))

(assert (=> b!4830228 m!5822992))

(assert (=> b!4830190 d!1548275))

(declare-fun d!1548277 () Bool)

(declare-fun e!3018289 () Bool)

(assert (=> d!1548277 (= (contains!18867 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361) key!5594) e!3018289)))

(declare-fun res!2057199 () Bool)

(assert (=> d!1548277 (=> res!2057199 e!3018289)))

(assert (=> d!1548277 (= res!2057199 (containsKey!4426 (_2!32466 (h!61493 (toList!7547 lm!2325))) key!5594))))

(declare-fun lt!1976394 () Unit!143681)

(declare-fun choose!35231 (List!55182 ListMap!6919 K!16747) Unit!143681)

(assert (=> d!1548277 (= lt!1976394 (choose!35231 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361 key!5594))))

(declare-fun noDuplicateKeys!2469 (List!55182) Bool)

(assert (=> d!1548277 (noDuplicateKeys!2469 (_2!32466 (h!61493 (toList!7547 lm!2325))))))

(assert (=> d!1548277 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!49 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361 key!5594) lt!1976394)))

(declare-fun b!4830231 () Bool)

(assert (=> b!4830231 (= e!3018289 (contains!18867 lt!1976361 key!5594))))

(assert (= (and d!1548277 (not res!2057199)) b!4830231))

(declare-fun m!5822994 () Bool)

(assert (=> d!1548277 m!5822994))

(assert (=> d!1548277 m!5822942))

(assert (=> d!1548277 m!5822944))

(assert (=> d!1548277 m!5822946))

(declare-fun m!5822996 () Bool)

(assert (=> d!1548277 m!5822996))

(assert (=> d!1548277 m!5822942))

(assert (=> b!4830231 m!5822928))

(assert (=> b!4830191 d!1548277))

(declare-fun d!1548281 () Bool)

(declare-fun res!2057204 () Bool)

(declare-fun e!3018294 () Bool)

(assert (=> d!1548281 (=> res!2057204 e!3018294)))

(assert (=> d!1548281 (= res!2057204 (and (is-Cons!55058 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325))))) (= (_1!32465 (h!61492 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325)))))) key!5594)))))

(assert (=> d!1548281 (= (containsKey!4426 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325)))) key!5594) e!3018294)))

(declare-fun b!4830236 () Bool)

(declare-fun e!3018295 () Bool)

(assert (=> b!4830236 (= e!3018294 e!3018295)))

(declare-fun res!2057205 () Bool)

(assert (=> b!4830236 (=> (not res!2057205) (not e!3018295))))

(assert (=> b!4830236 (= res!2057205 (is-Cons!55058 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun b!4830237 () Bool)

(assert (=> b!4830237 (= e!3018295 (containsKey!4426 (t!362678 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325))))) key!5594))))

(assert (= (and d!1548281 (not res!2057204)) b!4830236))

(assert (= (and b!4830236 res!2057205) b!4830237))

(declare-fun m!5822998 () Bool)

(assert (=> b!4830237 m!5822998))

(assert (=> b!4830191 d!1548281))

(declare-fun d!1548283 () Bool)

(declare-fun tail!9431 (List!55183) List!55183)

(assert (=> d!1548283 (= (tail!9429 lm!2325) (ListLongMap!6070 (tail!9431 (toList!7547 lm!2325))))))

(declare-fun bs!1165774 () Bool)

(assert (= bs!1165774 d!1548283))

(declare-fun m!5823000 () Bool)

(assert (=> bs!1165774 m!5823000))

(assert (=> b!4830191 d!1548283))

(declare-fun d!1548285 () Bool)

(declare-fun res!2057210 () Bool)

(declare-fun e!3018300 () Bool)

(assert (=> d!1548285 (=> res!2057210 e!3018300)))

(assert (=> d!1548285 (= res!2057210 (is-Nil!55059 (toList!7547 lt!1976363)))))

(assert (=> d!1548285 (= (forall!12669 (toList!7547 lt!1976363) lambda!237833) e!3018300)))

(declare-fun b!4830242 () Bool)

(declare-fun e!3018301 () Bool)

(assert (=> b!4830242 (= e!3018300 e!3018301)))

(declare-fun res!2057211 () Bool)

(assert (=> b!4830242 (=> (not res!2057211) (not e!3018301))))

(declare-fun dynLambda!22242 (Int tuple2!58344) Bool)

(assert (=> b!4830242 (= res!2057211 (dynLambda!22242 lambda!237833 (h!61493 (toList!7547 lt!1976363))))))

(declare-fun b!4830243 () Bool)

(assert (=> b!4830243 (= e!3018301 (forall!12669 (t!362679 (toList!7547 lt!1976363)) lambda!237833))))

(assert (= (and d!1548285 (not res!2057210)) b!4830242))

(assert (= (and b!4830242 res!2057211) b!4830243))

(declare-fun b_lambda!190523 () Bool)

(assert (=> (not b_lambda!190523) (not b!4830242)))

(declare-fun m!5823002 () Bool)

(assert (=> b!4830242 m!5823002))

(declare-fun m!5823004 () Bool)

(assert (=> b!4830243 m!5823004))

(assert (=> b!4830191 d!1548285))

(declare-fun d!1548287 () Bool)

(declare-fun res!2057212 () Bool)

(declare-fun e!3018302 () Bool)

(assert (=> d!1548287 (=> res!2057212 e!3018302)))

(assert (=> d!1548287 (= res!2057212 (and (is-Cons!55058 (_2!32466 (h!61493 (toList!7547 lm!2325)))) (= (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) key!5594)))))

(assert (=> d!1548287 (= (containsKey!4426 (_2!32466 (h!61493 (toList!7547 lm!2325))) key!5594) e!3018302)))

(declare-fun b!4830244 () Bool)

(declare-fun e!3018303 () Bool)

(assert (=> b!4830244 (= e!3018302 e!3018303)))

(declare-fun res!2057213 () Bool)

(assert (=> b!4830244 (=> (not res!2057213) (not e!3018303))))

(assert (=> b!4830244 (= res!2057213 (is-Cons!55058 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(declare-fun b!4830245 () Bool)

(assert (=> b!4830245 (= e!3018303 (containsKey!4426 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) key!5594))))

(assert (= (and d!1548287 (not res!2057212)) b!4830244))

(assert (= (and b!4830244 res!2057213) b!4830245))

(declare-fun m!5823006 () Bool)

(assert (=> b!4830245 m!5823006))

(assert (=> b!4830191 d!1548287))

(declare-fun b!4830320 () Bool)

(assert (=> b!4830320 true))

(declare-fun bs!1165783 () Bool)

(declare-fun b!4830324 () Bool)

(assert (= bs!1165783 (and b!4830324 b!4830320)))

(declare-fun lambda!237872 () Int)

(declare-fun lambda!237871 () Int)

(assert (=> bs!1165783 (= lambda!237872 lambda!237871)))

(assert (=> b!4830324 true))

(declare-fun lt!1976491 () ListMap!6919)

(declare-fun lambda!237873 () Int)

(assert (=> bs!1165783 (= (= lt!1976491 lt!1976361) (= lambda!237873 lambda!237871))))

(assert (=> b!4830324 (= (= lt!1976491 lt!1976361) (= lambda!237873 lambda!237872))))

(assert (=> b!4830324 true))

(declare-fun bs!1165784 () Bool)

(declare-fun d!1548289 () Bool)

(assert (= bs!1165784 (and d!1548289 b!4830320)))

(declare-fun lt!1976487 () ListMap!6919)

(declare-fun lambda!237874 () Int)

(assert (=> bs!1165784 (= (= lt!1976487 lt!1976361) (= lambda!237874 lambda!237871))))

(declare-fun bs!1165785 () Bool)

(assert (= bs!1165785 (and d!1548289 b!4830324)))

(assert (=> bs!1165785 (= (= lt!1976487 lt!1976361) (= lambda!237874 lambda!237872))))

(assert (=> bs!1165785 (= (= lt!1976487 lt!1976491) (= lambda!237874 lambda!237873))))

(assert (=> d!1548289 true))

(declare-fun b!4830321 () Bool)

(declare-fun e!3018356 () Bool)

(declare-fun invariantList!1825 (List!55182) Bool)

(assert (=> b!4830321 (= e!3018356 (invariantList!1825 (toList!7548 lt!1976487)))))

(declare-fun b!4830322 () Bool)

(declare-fun res!2057252 () Bool)

(assert (=> b!4830322 (=> (not res!2057252) (not e!3018356))))

(declare-fun forall!12671 (List!55182 Int) Bool)

(assert (=> b!4830322 (= res!2057252 (forall!12671 (toList!7548 lt!1976361) lambda!237874))))

(declare-fun b!4830323 () Bool)

(declare-fun e!3018357 () Bool)

(declare-fun call!336627 () Bool)

(assert (=> b!4830323 (= e!3018357 call!336627)))

(declare-fun c!823033 () Bool)

(declare-fun call!336628 () Bool)

(declare-fun lt!1976493 () ListMap!6919)

(declare-fun bm!336622 () Bool)

(assert (=> bm!336622 (= call!336628 (forall!12671 (ite c!823033 (toList!7548 lt!1976361) (toList!7548 lt!1976493)) (ite c!823033 lambda!237871 lambda!237873)))))

(declare-fun bm!336623 () Bool)

(assert (=> bm!336623 (= call!336627 (forall!12671 (toList!7548 lt!1976361) (ite c!823033 lambda!237871 lambda!237873)))))

(declare-fun bm!336624 () Bool)

(declare-fun call!336629 () Unit!143681)

(declare-fun lemmaContainsAllItsOwnKeys!1003 (ListMap!6919) Unit!143681)

(assert (=> bm!336624 (= call!336629 (lemmaContainsAllItsOwnKeys!1003 lt!1976361))))

(declare-fun e!3018358 () ListMap!6919)

(assert (=> b!4830324 (= e!3018358 lt!1976491)))

(declare-fun +!2548 (ListMap!6919 tuple2!58342) ListMap!6919)

(assert (=> b!4830324 (= lt!1976493 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (=> b!4830324 (= lt!1976491 (addToMapMapFromBucket!1826 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun lt!1976498 () Unit!143681)

(assert (=> b!4830324 (= lt!1976498 call!336629)))

(assert (=> b!4830324 (forall!12671 (toList!7548 lt!1976361) lambda!237872)))

(declare-fun lt!1976489 () Unit!143681)

(assert (=> b!4830324 (= lt!1976489 lt!1976498)))

(assert (=> b!4830324 (forall!12671 (toList!7548 lt!1976493) lambda!237873)))

(declare-fun lt!1976488 () Unit!143681)

(declare-fun Unit!143686 () Unit!143681)

(assert (=> b!4830324 (= lt!1976488 Unit!143686)))

(assert (=> b!4830324 (forall!12671 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) lambda!237873)))

(declare-fun lt!1976500 () Unit!143681)

(declare-fun Unit!143687 () Unit!143681)

(assert (=> b!4830324 (= lt!1976500 Unit!143687)))

(declare-fun lt!1976485 () Unit!143681)

(declare-fun Unit!143688 () Unit!143681)

(assert (=> b!4830324 (= lt!1976485 Unit!143688)))

(declare-fun lt!1976501 () Unit!143681)

(declare-fun forallContained!4408 (List!55182 Int tuple2!58342) Unit!143681)

(assert (=> b!4830324 (= lt!1976501 (forallContained!4408 (toList!7548 lt!1976493) lambda!237873 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (=> b!4830324 (contains!18867 lt!1976493 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun lt!1976503 () Unit!143681)

(declare-fun Unit!143689 () Unit!143681)

(assert (=> b!4830324 (= lt!1976503 Unit!143689)))

(assert (=> b!4830324 (contains!18867 lt!1976491 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun lt!1976495 () Unit!143681)

(declare-fun Unit!143690 () Unit!143681)

(assert (=> b!4830324 (= lt!1976495 Unit!143690)))

(assert (=> b!4830324 (forall!12671 (_2!32466 (h!61493 (toList!7547 lm!2325))) lambda!237873)))

(declare-fun lt!1976505 () Unit!143681)

(declare-fun Unit!143691 () Unit!143681)

(assert (=> b!4830324 (= lt!1976505 Unit!143691)))

(assert (=> b!4830324 call!336628))

(declare-fun lt!1976504 () Unit!143681)

(declare-fun Unit!143692 () Unit!143681)

(assert (=> b!4830324 (= lt!1976504 Unit!143692)))

(declare-fun lt!1976499 () Unit!143681)

(declare-fun Unit!143693 () Unit!143681)

(assert (=> b!4830324 (= lt!1976499 Unit!143693)))

(declare-fun lt!1976486 () Unit!143681)

(declare-fun addForallContainsKeyThenBeforeAdding!1002 (ListMap!6919 ListMap!6919 K!16747 V!16993) Unit!143681)

(assert (=> b!4830324 (= lt!1976486 (addForallContainsKeyThenBeforeAdding!1002 lt!1976361 lt!1976491 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (_2!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> b!4830324 (forall!12671 (toList!7548 lt!1976361) lambda!237873)))

(declare-fun lt!1976492 () Unit!143681)

(assert (=> b!4830324 (= lt!1976492 lt!1976486)))

(assert (=> b!4830324 (forall!12671 (toList!7548 lt!1976361) lambda!237873)))

(declare-fun lt!1976494 () Unit!143681)

(declare-fun Unit!143694 () Unit!143681)

(assert (=> b!4830324 (= lt!1976494 Unit!143694)))

(declare-fun res!2057250 () Bool)

(assert (=> b!4830324 (= res!2057250 (forall!12671 (_2!32466 (h!61493 (toList!7547 lm!2325))) lambda!237873))))

(assert (=> b!4830324 (=> (not res!2057250) (not e!3018357))))

(assert (=> b!4830324 e!3018357))

(declare-fun lt!1976490 () Unit!143681)

(declare-fun Unit!143695 () Unit!143681)

(assert (=> b!4830324 (= lt!1976490 Unit!143695)))

(assert (=> d!1548289 e!3018356))

(declare-fun res!2057251 () Bool)

(assert (=> d!1548289 (=> (not res!2057251) (not e!3018356))))

(assert (=> d!1548289 (= res!2057251 (forall!12671 (_2!32466 (h!61493 (toList!7547 lm!2325))) lambda!237874))))

(assert (=> d!1548289 (= lt!1976487 e!3018358)))

(assert (=> d!1548289 (= c!823033 (is-Nil!55058 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(assert (=> d!1548289 (noDuplicateKeys!2469 (_2!32466 (h!61493 (toList!7547 lm!2325))))))

(assert (=> d!1548289 (= (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361) lt!1976487)))

(assert (=> b!4830320 (= e!3018358 lt!1976361)))

(declare-fun lt!1976497 () Unit!143681)

(assert (=> b!4830320 (= lt!1976497 call!336629)))

(assert (=> b!4830320 call!336628))

(declare-fun lt!1976496 () Unit!143681)

(assert (=> b!4830320 (= lt!1976496 lt!1976497)))

(assert (=> b!4830320 call!336627))

(declare-fun lt!1976502 () Unit!143681)

(declare-fun Unit!143696 () Unit!143681)

(assert (=> b!4830320 (= lt!1976502 Unit!143696)))

(assert (= (and d!1548289 c!823033) b!4830320))

(assert (= (and d!1548289 (not c!823033)) b!4830324))

(assert (= (and b!4830324 res!2057250) b!4830323))

(assert (= (or b!4830320 b!4830324) bm!336624))

(assert (= (or b!4830320 b!4830324) bm!336622))

(assert (= (or b!4830320 b!4830323) bm!336623))

(assert (= (and d!1548289 res!2057251) b!4830322))

(assert (= (and b!4830322 res!2057252) b!4830321))

(declare-fun m!5823084 () Bool)

(assert (=> bm!336623 m!5823084))

(declare-fun m!5823086 () Bool)

(assert (=> b!4830321 m!5823086))

(declare-fun m!5823088 () Bool)

(assert (=> d!1548289 m!5823088))

(assert (=> d!1548289 m!5822996))

(declare-fun m!5823090 () Bool)

(assert (=> b!4830322 m!5823090))

(declare-fun m!5823092 () Bool)

(assert (=> b!4830324 m!5823092))

(declare-fun m!5823094 () Bool)

(assert (=> b!4830324 m!5823094))

(declare-fun m!5823096 () Bool)

(assert (=> b!4830324 m!5823096))

(declare-fun m!5823098 () Bool)

(assert (=> b!4830324 m!5823098))

(declare-fun m!5823100 () Bool)

(assert (=> b!4830324 m!5823100))

(declare-fun m!5823102 () Bool)

(assert (=> b!4830324 m!5823102))

(declare-fun m!5823104 () Bool)

(assert (=> b!4830324 m!5823104))

(declare-fun m!5823106 () Bool)

(assert (=> b!4830324 m!5823106))

(assert (=> b!4830324 m!5823096))

(declare-fun m!5823108 () Bool)

(assert (=> b!4830324 m!5823108))

(declare-fun m!5823110 () Bool)

(assert (=> b!4830324 m!5823110))

(declare-fun m!5823112 () Bool)

(assert (=> b!4830324 m!5823112))

(assert (=> b!4830324 m!5823110))

(assert (=> b!4830324 m!5823106))

(declare-fun m!5823114 () Bool)

(assert (=> bm!336622 m!5823114))

(declare-fun m!5823116 () Bool)

(assert (=> bm!336624 m!5823116))

(assert (=> b!4830191 d!1548289))

(declare-fun b!4830345 () Bool)

(declare-fun e!3018375 () Bool)

(declare-fun e!3018376 () Bool)

(assert (=> b!4830345 (= e!3018375 e!3018376)))

(declare-fun res!2057259 () Bool)

(assert (=> b!4830345 (=> (not res!2057259) (not e!3018376))))

(declare-datatypes ((Option!13522 0))(
  ( (None!13521) (Some!13521 (v!49214 V!16993)) )
))
(declare-fun isDefined!10637 (Option!13522) Bool)

(declare-fun getValueByKey!2649 (List!55182 K!16747) Option!13522)

(assert (=> b!4830345 (= res!2057259 (isDefined!10637 (getValueByKey!2649 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594)))))

(declare-fun bm!336627 () Bool)

(declare-fun call!336632 () Bool)

(declare-datatypes ((List!55186 0))(
  ( (Nil!55062) (Cons!55062 (h!61496 K!16747) (t!362682 List!55186)) )
))
(declare-fun e!3018373 () List!55186)

(declare-fun contains!18870 (List!55186 K!16747) Bool)

(assert (=> bm!336627 (= call!336632 (contains!18870 e!3018373 key!5594))))

(declare-fun c!823041 () Bool)

(declare-fun c!823042 () Bool)

(assert (=> bm!336627 (= c!823041 c!823042)))

(declare-fun b!4830346 () Bool)

(declare-fun e!3018372 () Bool)

(declare-fun keys!20276 (ListMap!6919) List!55186)

(assert (=> b!4830346 (= e!3018372 (not (contains!18870 (keys!20276 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594)))))

(declare-fun b!4830347 () Bool)

(declare-fun e!3018371 () Unit!143681)

(declare-fun lt!1976524 () Unit!143681)

(assert (=> b!4830347 (= e!3018371 lt!1976524)))

(declare-fun lt!1976528 () Unit!143681)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2434 (List!55182 K!16747) Unit!143681)

(assert (=> b!4830347 (= lt!1976528 (lemmaContainsKeyImpliesGetValueByKeyDefined!2434 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(assert (=> b!4830347 (isDefined!10637 (getValueByKey!2649 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(declare-fun lt!1976526 () Unit!143681)

(assert (=> b!4830347 (= lt!1976526 lt!1976528)))

(declare-fun lemmaInListThenGetKeysListContains!1166 (List!55182 K!16747) Unit!143681)

(assert (=> b!4830347 (= lt!1976524 (lemmaInListThenGetKeysListContains!1166 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(assert (=> b!4830347 call!336632))

(declare-fun b!4830348 () Bool)

(assert (=> b!4830348 false))

(declare-fun lt!1976529 () Unit!143681)

(declare-fun lt!1976523 () Unit!143681)

(assert (=> b!4830348 (= lt!1976529 lt!1976523)))

(declare-fun containsKey!4429 (List!55182 K!16747) Bool)

(assert (=> b!4830348 (containsKey!4429 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594)))

(declare-fun lemmaInGetKeysListThenContainsKey!1171 (List!55182 K!16747) Unit!143681)

(assert (=> b!4830348 (= lt!1976523 (lemmaInGetKeysListThenContainsKey!1171 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(declare-fun e!3018374 () Unit!143681)

(declare-fun Unit!143697 () Unit!143681)

(assert (=> b!4830348 (= e!3018374 Unit!143697)))

(declare-fun b!4830349 () Bool)

(assert (=> b!4830349 (= e!3018371 e!3018374)))

(declare-fun c!823040 () Bool)

(assert (=> b!4830349 (= c!823040 call!336632)))

(declare-fun b!4830350 () Bool)

(declare-fun Unit!143698 () Unit!143681)

(assert (=> b!4830350 (= e!3018374 Unit!143698)))

(declare-fun b!4830351 () Bool)

(declare-fun getKeysList!1171 (List!55182) List!55186)

(assert (=> b!4830351 (= e!3018373 (getKeysList!1171 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))

(declare-fun d!1548315 () Bool)

(assert (=> d!1548315 e!3018375))

(declare-fun res!2057260 () Bool)

(assert (=> d!1548315 (=> res!2057260 e!3018375)))

(assert (=> d!1548315 (= res!2057260 e!3018372)))

(declare-fun res!2057261 () Bool)

(assert (=> d!1548315 (=> (not res!2057261) (not e!3018372))))

(declare-fun lt!1976525 () Bool)

(assert (=> d!1548315 (= res!2057261 (not lt!1976525))))

(declare-fun lt!1976527 () Bool)

(assert (=> d!1548315 (= lt!1976525 lt!1976527)))

(declare-fun lt!1976522 () Unit!143681)

(assert (=> d!1548315 (= lt!1976522 e!3018371)))

(assert (=> d!1548315 (= c!823042 lt!1976527)))

(assert (=> d!1548315 (= lt!1976527 (containsKey!4429 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(assert (=> d!1548315 (= (contains!18867 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361) key!5594) lt!1976525)))

(declare-fun b!4830352 () Bool)

(assert (=> b!4830352 (= e!3018373 (keys!20276 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))

(declare-fun b!4830353 () Bool)

(assert (=> b!4830353 (= e!3018376 (contains!18870 (keys!20276 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(assert (= (and d!1548315 c!823042) b!4830347))

(assert (= (and d!1548315 (not c!823042)) b!4830349))

(assert (= (and b!4830349 c!823040) b!4830348))

(assert (= (and b!4830349 (not c!823040)) b!4830350))

(assert (= (or b!4830347 b!4830349) bm!336627))

(assert (= (and bm!336627 c!823041) b!4830351))

(assert (= (and bm!336627 (not c!823041)) b!4830352))

(assert (= (and d!1548315 res!2057261) b!4830346))

(assert (= (and d!1548315 (not res!2057260)) b!4830345))

(assert (= (and b!4830345 res!2057259) b!4830353))

(assert (=> b!4830352 m!5822942))

(declare-fun m!5823118 () Bool)

(assert (=> b!4830352 m!5823118))

(declare-fun m!5823120 () Bool)

(assert (=> b!4830345 m!5823120))

(assert (=> b!4830345 m!5823120))

(declare-fun m!5823122 () Bool)

(assert (=> b!4830345 m!5823122))

(declare-fun m!5823124 () Bool)

(assert (=> bm!336627 m!5823124))

(declare-fun m!5823126 () Bool)

(assert (=> b!4830348 m!5823126))

(declare-fun m!5823128 () Bool)

(assert (=> b!4830348 m!5823128))

(declare-fun m!5823130 () Bool)

(assert (=> b!4830347 m!5823130))

(assert (=> b!4830347 m!5823120))

(assert (=> b!4830347 m!5823120))

(assert (=> b!4830347 m!5823122))

(declare-fun m!5823132 () Bool)

(assert (=> b!4830347 m!5823132))

(declare-fun m!5823134 () Bool)

(assert (=> b!4830351 m!5823134))

(assert (=> b!4830346 m!5822942))

(assert (=> b!4830346 m!5823118))

(assert (=> b!4830346 m!5823118))

(declare-fun m!5823136 () Bool)

(assert (=> b!4830346 m!5823136))

(assert (=> d!1548315 m!5823126))

(assert (=> b!4830353 m!5822942))

(assert (=> b!4830353 m!5823118))

(assert (=> b!4830353 m!5823118))

(assert (=> b!4830353 m!5823136))

(assert (=> b!4830191 d!1548315))

(declare-fun bs!1165786 () Bool)

(declare-fun d!1548317 () Bool)

(assert (= bs!1165786 (and d!1548317 start!501694)))

(declare-fun lambda!237877 () Int)

(assert (=> bs!1165786 (= lambda!237877 lambda!237833)))

(declare-fun lt!1976532 () ListMap!6919)

(assert (=> d!1548317 (invariantList!1825 (toList!7548 lt!1976532))))

(declare-fun e!3018379 () ListMap!6919)

(assert (=> d!1548317 (= lt!1976532 e!3018379)))

(declare-fun c!823045 () Bool)

(assert (=> d!1548317 (= c!823045 (is-Cons!55059 (t!362679 (toList!7547 lm!2325))))))

(assert (=> d!1548317 (forall!12669 (t!362679 (toList!7547 lm!2325)) lambda!237877)))

(assert (=> d!1548317 (= (extractMap!2711 (t!362679 (toList!7547 lm!2325))) lt!1976532)))

(declare-fun b!4830358 () Bool)

(assert (=> b!4830358 (= e!3018379 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))) (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))))))

(declare-fun b!4830359 () Bool)

(assert (=> b!4830359 (= e!3018379 (ListMap!6920 Nil!55058))))

(assert (= (and d!1548317 c!823045) b!4830358))

(assert (= (and d!1548317 (not c!823045)) b!4830359))

(declare-fun m!5823138 () Bool)

(assert (=> d!1548317 m!5823138))

(declare-fun m!5823140 () Bool)

(assert (=> d!1548317 m!5823140))

(declare-fun m!5823142 () Bool)

(assert (=> b!4830358 m!5823142))

(assert (=> b!4830358 m!5823142))

(declare-fun m!5823144 () Bool)

(assert (=> b!4830358 m!5823144))

(assert (=> b!4830191 d!1548317))

(declare-fun bs!1165787 () Bool)

(declare-fun d!1548319 () Bool)

(assert (= bs!1165787 (and d!1548319 start!501694)))

(declare-fun lambda!237880 () Int)

(assert (=> bs!1165787 (= lambda!237880 lambda!237833)))

(declare-fun bs!1165788 () Bool)

(assert (= bs!1165788 (and d!1548319 d!1548317)))

(assert (=> bs!1165788 (= lambda!237880 lambda!237877)))

(assert (=> d!1548319 (not (containsKey!4426 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325)))) key!5594))))

(declare-fun lt!1976535 () Unit!143681)

(declare-fun choose!35232 (ListLongMap!6069 K!16747 (_ BitVec 64) Hashable!7303) Unit!143681)

(assert (=> d!1548319 (= lt!1976535 (choose!35232 lm!2325 key!5594 (_1!32466 (h!61493 (toList!7547 lm!2325))) hashF!1543))))

(assert (=> d!1548319 (forall!12669 (toList!7547 lm!2325) lambda!237880)))

(assert (=> d!1548319 (= (lemmaNotSameHashThenCannotContainKey!237 lm!2325 key!5594 (_1!32466 (h!61493 (toList!7547 lm!2325))) hashF!1543) lt!1976535)))

(declare-fun bs!1165789 () Bool)

(assert (= bs!1165789 d!1548319))

(assert (=> bs!1165789 m!5822934))

(assert (=> bs!1165789 m!5822934))

(assert (=> bs!1165789 m!5822936))

(declare-fun m!5823146 () Bool)

(assert (=> bs!1165789 m!5823146))

(declare-fun m!5823148 () Bool)

(assert (=> bs!1165789 m!5823148))

(assert (=> b!4830191 d!1548319))

(declare-fun d!1548321 () Bool)

(declare-fun get!18852 (Option!13521) List!55182)

(assert (=> d!1548321 (= (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325)))) (get!18852 (getValueByKey!2648 (toList!7547 lm!2325) (_1!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun bs!1165790 () Bool)

(assert (= bs!1165790 d!1548321))

(declare-fun m!5823150 () Bool)

(assert (=> bs!1165790 m!5823150))

(assert (=> bs!1165790 m!5823150))

(declare-fun m!5823152 () Bool)

(assert (=> bs!1165790 m!5823152))

(assert (=> b!4830191 d!1548321))

(declare-fun d!1548323 () Bool)

(declare-fun e!3018380 () Bool)

(assert (=> d!1548323 e!3018380))

(declare-fun res!2057262 () Bool)

(assert (=> d!1548323 (=> res!2057262 e!3018380)))

(declare-fun lt!1976538 () Bool)

(assert (=> d!1548323 (= res!2057262 (not lt!1976538))))

(declare-fun lt!1976536 () Bool)

(assert (=> d!1548323 (= lt!1976538 lt!1976536)))

(declare-fun lt!1976539 () Unit!143681)

(declare-fun e!3018381 () Unit!143681)

(assert (=> d!1548323 (= lt!1976539 e!3018381)))

(declare-fun c!823046 () Bool)

(assert (=> d!1548323 (= c!823046 lt!1976536)))

(assert (=> d!1548323 (= lt!1976536 (containsKey!4428 (toList!7547 lm!2325) lt!1976362))))

(assert (=> d!1548323 (= (contains!18866 lm!2325 lt!1976362) lt!1976538)))

(declare-fun b!4830360 () Bool)

(declare-fun lt!1976537 () Unit!143681)

(assert (=> b!4830360 (= e!3018381 lt!1976537)))

(assert (=> b!4830360 (= lt!1976537 (lemmaContainsKeyImpliesGetValueByKeyDefined!2433 (toList!7547 lm!2325) lt!1976362))))

(assert (=> b!4830360 (isDefined!10636 (getValueByKey!2648 (toList!7547 lm!2325) lt!1976362))))

(declare-fun b!4830361 () Bool)

(declare-fun Unit!143699 () Unit!143681)

(assert (=> b!4830361 (= e!3018381 Unit!143699)))

(declare-fun b!4830362 () Bool)

(assert (=> b!4830362 (= e!3018380 (isDefined!10636 (getValueByKey!2648 (toList!7547 lm!2325) lt!1976362)))))

(assert (= (and d!1548323 c!823046) b!4830360))

(assert (= (and d!1548323 (not c!823046)) b!4830361))

(assert (= (and d!1548323 (not res!2057262)) b!4830362))

(declare-fun m!5823154 () Bool)

(assert (=> d!1548323 m!5823154))

(declare-fun m!5823156 () Bool)

(assert (=> b!4830360 m!5823156))

(declare-fun m!5823158 () Bool)

(assert (=> b!4830360 m!5823158))

(assert (=> b!4830360 m!5823158))

(declare-fun m!5823160 () Bool)

(assert (=> b!4830360 m!5823160))

(assert (=> b!4830362 m!5823158))

(assert (=> b!4830362 m!5823158))

(assert (=> b!4830362 m!5823160))

(assert (=> b!4830188 d!1548323))

(declare-fun d!1548325 () Bool)

(declare-fun hash!5471 (Hashable!7303 K!16747) (_ BitVec 64))

(assert (=> d!1548325 (= (hash!5468 hashF!1543 key!5594) (hash!5471 hashF!1543 key!5594))))

(declare-fun bs!1165791 () Bool)

(assert (= bs!1165791 d!1548325))

(declare-fun m!5823162 () Bool)

(assert (=> bs!1165791 m!5823162))

(assert (=> b!4830188 d!1548325))

(declare-fun bs!1165792 () Bool)

(declare-fun d!1548327 () Bool)

(assert (= bs!1165792 (and d!1548327 start!501694)))

(declare-fun lambda!237883 () Int)

(assert (=> bs!1165792 (not (= lambda!237883 lambda!237833))))

(declare-fun bs!1165793 () Bool)

(assert (= bs!1165793 (and d!1548327 d!1548317)))

(assert (=> bs!1165793 (not (= lambda!237883 lambda!237877))))

(declare-fun bs!1165794 () Bool)

(assert (= bs!1165794 (and d!1548327 d!1548319)))

(assert (=> bs!1165794 (not (= lambda!237883 lambda!237880))))

(assert (=> d!1548327 true))

(assert (=> d!1548327 (= (allKeysSameHashInMap!2619 lm!2325 hashF!1543) (forall!12669 (toList!7547 lm!2325) lambda!237883))))

(declare-fun bs!1165795 () Bool)

(assert (= bs!1165795 d!1548327))

(declare-fun m!5823164 () Bool)

(assert (=> bs!1165795 m!5823164))

(assert (=> b!4830193 d!1548327))

(declare-fun b!4830365 () Bool)

(declare-fun e!3018386 () Bool)

(declare-fun e!3018387 () Bool)

(assert (=> b!4830365 (= e!3018386 e!3018387)))

(declare-fun res!2057263 () Bool)

(assert (=> b!4830365 (=> (not res!2057263) (not e!3018387))))

(assert (=> b!4830365 (= res!2057263 (isDefined!10637 (getValueByKey!2649 (toList!7548 lt!1976361) key!5594)))))

(declare-fun bm!336628 () Bool)

(declare-fun call!336633 () Bool)

(declare-fun e!3018384 () List!55186)

(assert (=> bm!336628 (= call!336633 (contains!18870 e!3018384 key!5594))))

(declare-fun c!823048 () Bool)

(declare-fun c!823049 () Bool)

(assert (=> bm!336628 (= c!823048 c!823049)))

(declare-fun b!4830366 () Bool)

(declare-fun e!3018383 () Bool)

(assert (=> b!4830366 (= e!3018383 (not (contains!18870 (keys!20276 lt!1976361) key!5594)))))

(declare-fun b!4830367 () Bool)

(declare-fun e!3018382 () Unit!143681)

(declare-fun lt!1976542 () Unit!143681)

(assert (=> b!4830367 (= e!3018382 lt!1976542)))

(declare-fun lt!1976546 () Unit!143681)

(assert (=> b!4830367 (= lt!1976546 (lemmaContainsKeyImpliesGetValueByKeyDefined!2434 (toList!7548 lt!1976361) key!5594))))

(assert (=> b!4830367 (isDefined!10637 (getValueByKey!2649 (toList!7548 lt!1976361) key!5594))))

(declare-fun lt!1976544 () Unit!143681)

(assert (=> b!4830367 (= lt!1976544 lt!1976546)))

(assert (=> b!4830367 (= lt!1976542 (lemmaInListThenGetKeysListContains!1166 (toList!7548 lt!1976361) key!5594))))

(assert (=> b!4830367 call!336633))

(declare-fun b!4830368 () Bool)

(assert (=> b!4830368 false))

(declare-fun lt!1976547 () Unit!143681)

(declare-fun lt!1976541 () Unit!143681)

(assert (=> b!4830368 (= lt!1976547 lt!1976541)))

(assert (=> b!4830368 (containsKey!4429 (toList!7548 lt!1976361) key!5594)))

(assert (=> b!4830368 (= lt!1976541 (lemmaInGetKeysListThenContainsKey!1171 (toList!7548 lt!1976361) key!5594))))

(declare-fun e!3018385 () Unit!143681)

(declare-fun Unit!143700 () Unit!143681)

(assert (=> b!4830368 (= e!3018385 Unit!143700)))

(declare-fun b!4830369 () Bool)

(assert (=> b!4830369 (= e!3018382 e!3018385)))

(declare-fun c!823047 () Bool)

(assert (=> b!4830369 (= c!823047 call!336633)))

(declare-fun b!4830370 () Bool)

(declare-fun Unit!143701 () Unit!143681)

(assert (=> b!4830370 (= e!3018385 Unit!143701)))

(declare-fun b!4830371 () Bool)

(assert (=> b!4830371 (= e!3018384 (getKeysList!1171 (toList!7548 lt!1976361)))))

(declare-fun d!1548329 () Bool)

(assert (=> d!1548329 e!3018386))

(declare-fun res!2057264 () Bool)

(assert (=> d!1548329 (=> res!2057264 e!3018386)))

(assert (=> d!1548329 (= res!2057264 e!3018383)))

(declare-fun res!2057265 () Bool)

(assert (=> d!1548329 (=> (not res!2057265) (not e!3018383))))

(declare-fun lt!1976543 () Bool)

(assert (=> d!1548329 (= res!2057265 (not lt!1976543))))

(declare-fun lt!1976545 () Bool)

(assert (=> d!1548329 (= lt!1976543 lt!1976545)))

(declare-fun lt!1976540 () Unit!143681)

(assert (=> d!1548329 (= lt!1976540 e!3018382)))

(assert (=> d!1548329 (= c!823049 lt!1976545)))

(assert (=> d!1548329 (= lt!1976545 (containsKey!4429 (toList!7548 lt!1976361) key!5594))))

(assert (=> d!1548329 (= (contains!18867 lt!1976361 key!5594) lt!1976543)))

(declare-fun b!4830372 () Bool)

(assert (=> b!4830372 (= e!3018384 (keys!20276 lt!1976361))))

(declare-fun b!4830373 () Bool)

(assert (=> b!4830373 (= e!3018387 (contains!18870 (keys!20276 lt!1976361) key!5594))))

(assert (= (and d!1548329 c!823049) b!4830367))

(assert (= (and d!1548329 (not c!823049)) b!4830369))

(assert (= (and b!4830369 c!823047) b!4830368))

(assert (= (and b!4830369 (not c!823047)) b!4830370))

(assert (= (or b!4830367 b!4830369) bm!336628))

(assert (= (and bm!336628 c!823048) b!4830371))

(assert (= (and bm!336628 (not c!823048)) b!4830372))

(assert (= (and d!1548329 res!2057265) b!4830366))

(assert (= (and d!1548329 (not res!2057264)) b!4830365))

(assert (= (and b!4830365 res!2057263) b!4830373))

(declare-fun m!5823166 () Bool)

(assert (=> b!4830372 m!5823166))

(declare-fun m!5823168 () Bool)

(assert (=> b!4830365 m!5823168))

(assert (=> b!4830365 m!5823168))

(declare-fun m!5823170 () Bool)

(assert (=> b!4830365 m!5823170))

(declare-fun m!5823172 () Bool)

(assert (=> bm!336628 m!5823172))

(declare-fun m!5823174 () Bool)

(assert (=> b!4830368 m!5823174))

(declare-fun m!5823176 () Bool)

(assert (=> b!4830368 m!5823176))

(declare-fun m!5823178 () Bool)

(assert (=> b!4830367 m!5823178))

(assert (=> b!4830367 m!5823168))

(assert (=> b!4830367 m!5823168))

(assert (=> b!4830367 m!5823170))

(declare-fun m!5823180 () Bool)

(assert (=> b!4830367 m!5823180))

(declare-fun m!5823182 () Bool)

(assert (=> b!4830371 m!5823182))

(assert (=> b!4830366 m!5823166))

(assert (=> b!4830366 m!5823166))

(declare-fun m!5823184 () Bool)

(assert (=> b!4830366 m!5823184))

(assert (=> d!1548329 m!5823174))

(assert (=> b!4830373 m!5823166))

(assert (=> b!4830373 m!5823166))

(assert (=> b!4830373 m!5823184))

(assert (=> b!4830194 d!1548329))

(declare-fun d!1548331 () Bool)

(declare-fun res!2057266 () Bool)

(declare-fun e!3018388 () Bool)

(assert (=> d!1548331 (=> res!2057266 e!3018388)))

(assert (=> d!1548331 (= res!2057266 (is-Nil!55059 (toList!7547 lm!2325)))))

(assert (=> d!1548331 (= (forall!12669 (toList!7547 lm!2325) lambda!237833) e!3018388)))

(declare-fun b!4830374 () Bool)

(declare-fun e!3018389 () Bool)

(assert (=> b!4830374 (= e!3018388 e!3018389)))

(declare-fun res!2057267 () Bool)

(assert (=> b!4830374 (=> (not res!2057267) (not e!3018389))))

(assert (=> b!4830374 (= res!2057267 (dynLambda!22242 lambda!237833 (h!61493 (toList!7547 lm!2325))))))

(declare-fun b!4830375 () Bool)

(assert (=> b!4830375 (= e!3018389 (forall!12669 (t!362679 (toList!7547 lm!2325)) lambda!237833))))

(assert (= (and d!1548331 (not res!2057266)) b!4830374))

(assert (= (and b!4830374 res!2057267) b!4830375))

(declare-fun b_lambda!190529 () Bool)

(assert (=> (not b_lambda!190529) (not b!4830374)))

(declare-fun m!5823186 () Bool)

(assert (=> b!4830374 m!5823186))

(declare-fun m!5823188 () Bool)

(assert (=> b!4830375 m!5823188))

(assert (=> start!501694 d!1548331))

(declare-fun d!1548333 () Bool)

(declare-fun isStrictlySorted!1000 (List!55183) Bool)

(assert (=> d!1548333 (= (inv!70648 lm!2325) (isStrictlySorted!1000 (toList!7547 lm!2325)))))

(declare-fun bs!1165796 () Bool)

(assert (= bs!1165796 d!1548333))

(declare-fun m!5823190 () Bool)

(assert (=> bs!1165796 m!5823190))

(assert (=> start!501694 d!1548333))

(declare-fun bs!1165797 () Bool)

(declare-fun d!1548335 () Bool)

(assert (= bs!1165797 (and d!1548335 start!501694)))

(declare-fun lambda!237884 () Int)

(assert (=> bs!1165797 (not (= lambda!237884 lambda!237833))))

(declare-fun bs!1165798 () Bool)

(assert (= bs!1165798 (and d!1548335 d!1548317)))

(assert (=> bs!1165798 (not (= lambda!237884 lambda!237877))))

(declare-fun bs!1165799 () Bool)

(assert (= bs!1165799 (and d!1548335 d!1548319)))

(assert (=> bs!1165799 (not (= lambda!237884 lambda!237880))))

(declare-fun bs!1165800 () Bool)

(assert (= bs!1165800 (and d!1548335 d!1548327)))

(assert (=> bs!1165800 (= lambda!237884 lambda!237883)))

(assert (=> d!1548335 true))

(assert (=> d!1548335 (= (allKeysSameHashInMap!2619 lt!1976363 hashF!1543) (forall!12669 (toList!7547 lt!1976363) lambda!237884))))

(declare-fun bs!1165801 () Bool)

(assert (= bs!1165801 d!1548335))

(declare-fun m!5823192 () Bool)

(assert (=> bs!1165801 m!5823192))

(assert (=> b!4830189 d!1548335))

(declare-fun b!4830380 () Bool)

(declare-fun e!3018392 () Bool)

(declare-fun tp!1362873 () Bool)

(declare-fun tp!1362874 () Bool)

(assert (=> b!4830380 (= e!3018392 (and tp!1362873 tp!1362874))))

(assert (=> b!4830192 (= tp!1362865 e!3018392)))

(assert (= (and b!4830192 (is-Cons!55059 (toList!7547 lm!2325))) b!4830380))

(declare-fun b_lambda!190531 () Bool)

(assert (= b_lambda!190529 (or start!501694 b_lambda!190531)))

(declare-fun bs!1165802 () Bool)

(declare-fun d!1548337 () Bool)

(assert (= bs!1165802 (and d!1548337 start!501694)))

(assert (=> bs!1165802 (= (dynLambda!22242 lambda!237833 (h!61493 (toList!7547 lm!2325))) (noDuplicateKeys!2469 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(assert (=> bs!1165802 m!5822996))

(assert (=> b!4830374 d!1548337))

(declare-fun b_lambda!190533 () Bool)

(assert (= b_lambda!190523 (or start!501694 b_lambda!190533)))

(declare-fun bs!1165803 () Bool)

(declare-fun d!1548339 () Bool)

(assert (= bs!1165803 (and d!1548339 start!501694)))

(assert (=> bs!1165803 (= (dynLambda!22242 lambda!237833 (h!61493 (toList!7547 lt!1976363))) (noDuplicateKeys!2469 (_2!32466 (h!61493 (toList!7547 lt!1976363)))))))

(declare-fun m!5823194 () Bool)

(assert (=> bs!1165803 m!5823194))

(assert (=> b!4830242 d!1548339))

(push 1)

(assert (not b!4830358))

(assert (not b_lambda!190531))

(assert (not b!4830322))

(assert (not d!1548327))

(assert (not d!1548289))

(assert (not d!1548329))

(assert (not bm!336624))

(assert (not d!1548277))

(assert (not bm!336627))

(assert (not d!1548275))

(assert (not b!4830368))

(assert (not b!4830366))

(assert (not b!4830237))

(assert (not b!4830371))

(assert (not d!1548335))

(assert (not b!4830373))

(assert (not b!4830375))

(assert (not b!4830353))

(assert (not b!4830346))

(assert (not b!4830321))

(assert (not b!4830226))

(assert (not b!4830367))

(assert (not b!4830228))

(assert (not b!4830231))

(assert (not b!4830365))

(assert (not bm!336622))

(assert (not b!4830245))

(assert (not b!4830362))

(assert (not b!4830352))

(assert (not b!4830348))

(assert (not d!1548323))

(assert (not b!4830372))

(assert (not bs!1165802))

(assert (not bm!336623))

(assert (not d!1548333))

(assert (not d!1548283))

(assert (not b!4830243))

(assert (not b!4830360))

(assert (not b!4830345))

(assert (not b!4830324))

(assert (not d!1548321))

(assert (not b!4830380))

(assert (not d!1548319))

(assert (not b!4830351))

(assert tp_is_empty!34557)

(assert (not d!1548317))

(assert (not d!1548325))

(assert (not b!4830347))

(assert (not bm!336628))

(assert (not d!1548315))

(assert (not b_lambda!190533))

(assert (not bs!1165803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1548355 () Bool)

(declare-fun isEmpty!29682 (Option!13521) Bool)

(assert (=> d!1548355 (= (isDefined!10636 (getValueByKey!2648 (toList!7547 lt!1976363) lt!1976362)) (not (isEmpty!29682 (getValueByKey!2648 (toList!7547 lt!1976363) lt!1976362))))))

(declare-fun bs!1165818 () Bool)

(assert (= bs!1165818 d!1548355))

(assert (=> bs!1165818 m!5822990))

(declare-fun m!5823254 () Bool)

(assert (=> bs!1165818 m!5823254))

(assert (=> b!4830228 d!1548355))

(declare-fun b!4830424 () Bool)

(declare-fun e!3018418 () Option!13521)

(assert (=> b!4830424 (= e!3018418 (getValueByKey!2648 (t!362679 (toList!7547 lt!1976363)) lt!1976362))))

(declare-fun d!1548357 () Bool)

(declare-fun c!823060 () Bool)

(assert (=> d!1548357 (= c!823060 (and (is-Cons!55059 (toList!7547 lt!1976363)) (= (_1!32466 (h!61493 (toList!7547 lt!1976363))) lt!1976362)))))

(declare-fun e!3018417 () Option!13521)

(assert (=> d!1548357 (= (getValueByKey!2648 (toList!7547 lt!1976363) lt!1976362) e!3018417)))

(declare-fun b!4830422 () Bool)

(assert (=> b!4830422 (= e!3018417 (Some!13520 (_2!32466 (h!61493 (toList!7547 lt!1976363)))))))

(declare-fun b!4830425 () Bool)

(assert (=> b!4830425 (= e!3018418 None!13520)))

(declare-fun b!4830423 () Bool)

(assert (=> b!4830423 (= e!3018417 e!3018418)))

(declare-fun c!823061 () Bool)

(assert (=> b!4830423 (= c!823061 (and (is-Cons!55059 (toList!7547 lt!1976363)) (not (= (_1!32466 (h!61493 (toList!7547 lt!1976363))) lt!1976362))))))

(assert (= (and d!1548357 c!823060) b!4830422))

(assert (= (and d!1548357 (not c!823060)) b!4830423))

(assert (= (and b!4830423 c!823061) b!4830424))

(assert (= (and b!4830423 (not c!823061)) b!4830425))

(declare-fun m!5823256 () Bool)

(assert (=> b!4830424 m!5823256))

(assert (=> b!4830228 d!1548357))

(declare-fun d!1548359 () Bool)

(declare-fun lt!1976622 () Bool)

(declare-fun content!9832 (List!55186) (Set K!16747))

(assert (=> d!1548359 (= lt!1976622 (set.member key!5594 (content!9832 (keys!20276 lt!1976361))))))

(declare-fun e!3018424 () Bool)

(assert (=> d!1548359 (= lt!1976622 e!3018424)))

(declare-fun res!2057286 () Bool)

(assert (=> d!1548359 (=> (not res!2057286) (not e!3018424))))

(assert (=> d!1548359 (= res!2057286 (is-Cons!55062 (keys!20276 lt!1976361)))))

(assert (=> d!1548359 (= (contains!18870 (keys!20276 lt!1976361) key!5594) lt!1976622)))

(declare-fun b!4830430 () Bool)

(declare-fun e!3018423 () Bool)

(assert (=> b!4830430 (= e!3018424 e!3018423)))

(declare-fun res!2057287 () Bool)

(assert (=> b!4830430 (=> res!2057287 e!3018423)))

(assert (=> b!4830430 (= res!2057287 (= (h!61496 (keys!20276 lt!1976361)) key!5594))))

(declare-fun b!4830431 () Bool)

(assert (=> b!4830431 (= e!3018423 (contains!18870 (t!362682 (keys!20276 lt!1976361)) key!5594))))

(assert (= (and d!1548359 res!2057286) b!4830430))

(assert (= (and b!4830430 (not res!2057287)) b!4830431))

(assert (=> d!1548359 m!5823166))

(declare-fun m!5823258 () Bool)

(assert (=> d!1548359 m!5823258))

(declare-fun m!5823260 () Bool)

(assert (=> d!1548359 m!5823260))

(declare-fun m!5823262 () Bool)

(assert (=> b!4830431 m!5823262))

(assert (=> b!4830373 d!1548359))

(declare-fun b!4830439 () Bool)

(assert (=> b!4830439 true))

(declare-fun d!1548361 () Bool)

(declare-fun e!3018427 () Bool)

(assert (=> d!1548361 e!3018427))

(declare-fun res!2057294 () Bool)

(assert (=> d!1548361 (=> (not res!2057294) (not e!3018427))))

(declare-fun lt!1976625 () List!55186)

(declare-fun noDuplicate!973 (List!55186) Bool)

(assert (=> d!1548361 (= res!2057294 (noDuplicate!973 lt!1976625))))

(assert (=> d!1548361 (= lt!1976625 (getKeysList!1171 (toList!7548 lt!1976361)))))

(assert (=> d!1548361 (= (keys!20276 lt!1976361) lt!1976625)))

(declare-fun b!4830438 () Bool)

(declare-fun res!2057295 () Bool)

(assert (=> b!4830438 (=> (not res!2057295) (not e!3018427))))

(declare-fun length!802 (List!55186) Int)

(declare-fun length!803 (List!55182) Int)

(assert (=> b!4830438 (= res!2057295 (= (length!802 lt!1976625) (length!803 (toList!7548 lt!1976361))))))

(declare-fun res!2057296 () Bool)

(assert (=> b!4830439 (=> (not res!2057296) (not e!3018427))))

(declare-fun lambda!237927 () Int)

(declare-fun forall!12673 (List!55186 Int) Bool)

(assert (=> b!4830439 (= res!2057296 (forall!12673 lt!1976625 lambda!237927))))

(declare-fun lambda!237928 () Int)

(declare-fun b!4830440 () Bool)

(declare-fun map!12611 (List!55182 Int) List!55186)

(assert (=> b!4830440 (= e!3018427 (= (content!9832 lt!1976625) (content!9832 (map!12611 (toList!7548 lt!1976361) lambda!237928))))))

(assert (= (and d!1548361 res!2057294) b!4830438))

(assert (= (and b!4830438 res!2057295) b!4830439))

(assert (= (and b!4830439 res!2057296) b!4830440))

(declare-fun m!5823264 () Bool)

(assert (=> d!1548361 m!5823264))

(assert (=> d!1548361 m!5823182))

(declare-fun m!5823266 () Bool)

(assert (=> b!4830438 m!5823266))

(declare-fun m!5823268 () Bool)

(assert (=> b!4830438 m!5823268))

(declare-fun m!5823270 () Bool)

(assert (=> b!4830439 m!5823270))

(declare-fun m!5823272 () Bool)

(assert (=> b!4830440 m!5823272))

(declare-fun m!5823274 () Bool)

(assert (=> b!4830440 m!5823274))

(assert (=> b!4830440 m!5823274))

(declare-fun m!5823276 () Bool)

(assert (=> b!4830440 m!5823276))

(assert (=> b!4830373 d!1548361))

(declare-fun bs!1165819 () Bool)

(declare-fun b!4830443 () Bool)

(assert (= bs!1165819 (and b!4830443 b!4830320)))

(declare-fun lambda!237929 () Int)

(assert (=> bs!1165819 (= (= (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976361) (= lambda!237929 lambda!237871))))

(declare-fun bs!1165820 () Bool)

(assert (= bs!1165820 (and b!4830443 b!4830324)))

(assert (=> bs!1165820 (= (= (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976361) (= lambda!237929 lambda!237872))))

(assert (=> bs!1165820 (= (= (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976491) (= lambda!237929 lambda!237873))))

(declare-fun bs!1165821 () Bool)

(assert (= bs!1165821 (and b!4830443 d!1548289)))

(assert (=> bs!1165821 (= (= (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976487) (= lambda!237929 lambda!237874))))

(assert (=> b!4830443 true))

(declare-fun bs!1165822 () Bool)

(declare-fun b!4830447 () Bool)

(assert (= bs!1165822 (and b!4830447 b!4830320)))

(declare-fun lambda!237930 () Int)

(assert (=> bs!1165822 (= (= (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976361) (= lambda!237930 lambda!237871))))

(declare-fun bs!1165823 () Bool)

(assert (= bs!1165823 (and b!4830447 b!4830443)))

(assert (=> bs!1165823 (= lambda!237930 lambda!237929)))

(declare-fun bs!1165824 () Bool)

(assert (= bs!1165824 (and b!4830447 b!4830324)))

(assert (=> bs!1165824 (= (= (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976491) (= lambda!237930 lambda!237873))))

(declare-fun bs!1165825 () Bool)

(assert (= bs!1165825 (and b!4830447 d!1548289)))

(assert (=> bs!1165825 (= (= (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976487) (= lambda!237930 lambda!237874))))

(assert (=> bs!1165824 (= (= (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976361) (= lambda!237930 lambda!237872))))

(assert (=> b!4830447 true))

(declare-fun lambda!237931 () Int)

(declare-fun lt!1976632 () ListMap!6919)

(assert (=> bs!1165822 (= (= lt!1976632 lt!1976361) (= lambda!237931 lambda!237871))))

(assert (=> bs!1165823 (= (= lt!1976632 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237931 lambda!237929))))

(assert (=> bs!1165824 (= (= lt!1976632 lt!1976491) (= lambda!237931 lambda!237873))))

(assert (=> bs!1165825 (= (= lt!1976632 lt!1976487) (= lambda!237931 lambda!237874))))

(assert (=> b!4830447 (= (= lt!1976632 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237931 lambda!237930))))

(assert (=> bs!1165824 (= (= lt!1976632 lt!1976361) (= lambda!237931 lambda!237872))))

(assert (=> b!4830447 true))

(declare-fun bs!1165826 () Bool)

(declare-fun d!1548363 () Bool)

(assert (= bs!1165826 (and d!1548363 b!4830320)))

(declare-fun lambda!237932 () Int)

(declare-fun lt!1976628 () ListMap!6919)

(assert (=> bs!1165826 (= (= lt!1976628 lt!1976361) (= lambda!237932 lambda!237871))))

(declare-fun bs!1165827 () Bool)

(assert (= bs!1165827 (and d!1548363 b!4830443)))

(assert (=> bs!1165827 (= (= lt!1976628 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237932 lambda!237929))))

(declare-fun bs!1165828 () Bool)

(assert (= bs!1165828 (and d!1548363 b!4830447)))

(assert (=> bs!1165828 (= (= lt!1976628 lt!1976632) (= lambda!237932 lambda!237931))))

(declare-fun bs!1165829 () Bool)

(assert (= bs!1165829 (and d!1548363 b!4830324)))

(assert (=> bs!1165829 (= (= lt!1976628 lt!1976491) (= lambda!237932 lambda!237873))))

(declare-fun bs!1165830 () Bool)

(assert (= bs!1165830 (and d!1548363 d!1548289)))

(assert (=> bs!1165830 (= (= lt!1976628 lt!1976487) (= lambda!237932 lambda!237874))))

(assert (=> bs!1165828 (= (= lt!1976628 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237932 lambda!237930))))

(assert (=> bs!1165829 (= (= lt!1976628 lt!1976361) (= lambda!237932 lambda!237872))))

(assert (=> d!1548363 true))

(declare-fun b!4830444 () Bool)

(declare-fun e!3018428 () Bool)

(assert (=> b!4830444 (= e!3018428 (invariantList!1825 (toList!7548 lt!1976628)))))

(declare-fun b!4830445 () Bool)

(declare-fun res!2057299 () Bool)

(assert (=> b!4830445 (=> (not res!2057299) (not e!3018428))))

(assert (=> b!4830445 (= res!2057299 (forall!12671 (toList!7548 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) lambda!237932))))

(declare-fun b!4830446 () Bool)

(declare-fun e!3018429 () Bool)

(declare-fun call!336643 () Bool)

(assert (=> b!4830446 (= e!3018429 call!336643)))

(declare-fun bm!336638 () Bool)

(declare-fun call!336644 () Bool)

(declare-fun c!823062 () Bool)

(declare-fun lt!1976634 () ListMap!6919)

(assert (=> bm!336638 (= call!336644 (forall!12671 (ite c!823062 (toList!7548 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (toList!7548 lt!1976634)) (ite c!823062 lambda!237929 lambda!237931)))))

(declare-fun bm!336639 () Bool)

(assert (=> bm!336639 (= call!336643 (forall!12671 (toList!7548 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (ite c!823062 lambda!237929 lambda!237931)))))

(declare-fun bm!336640 () Bool)

(declare-fun call!336645 () Unit!143681)

(assert (=> bm!336640 (= call!336645 (lemmaContainsAllItsOwnKeys!1003 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))))))

(declare-fun e!3018430 () ListMap!6919)

(assert (=> b!4830447 (= e!3018430 lt!1976632)))

(assert (=> b!4830447 (= lt!1976634 (+!2548 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) (h!61492 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))))))))

(assert (=> b!4830447 (= lt!1976632 (addToMapMapFromBucket!1826 (t!362678 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325))))) (+!2548 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) (h!61492 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325))))))))))

(declare-fun lt!1976639 () Unit!143681)

(assert (=> b!4830447 (= lt!1976639 call!336645)))

(assert (=> b!4830447 (forall!12671 (toList!7548 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) lambda!237930)))

(declare-fun lt!1976630 () Unit!143681)

(assert (=> b!4830447 (= lt!1976630 lt!1976639)))

(assert (=> b!4830447 (forall!12671 (toList!7548 lt!1976634) lambda!237931)))

(declare-fun lt!1976629 () Unit!143681)

(declare-fun Unit!143719 () Unit!143681)

(assert (=> b!4830447 (= lt!1976629 Unit!143719)))

(assert (=> b!4830447 (forall!12671 (t!362678 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325))))) lambda!237931)))

(declare-fun lt!1976641 () Unit!143681)

(declare-fun Unit!143720 () Unit!143681)

(assert (=> b!4830447 (= lt!1976641 Unit!143720)))

(declare-fun lt!1976626 () Unit!143681)

(declare-fun Unit!143721 () Unit!143681)

(assert (=> b!4830447 (= lt!1976626 Unit!143721)))

(declare-fun lt!1976642 () Unit!143681)

(assert (=> b!4830447 (= lt!1976642 (forallContained!4408 (toList!7548 lt!1976634) lambda!237931 (h!61492 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))))))))

(assert (=> b!4830447 (contains!18867 lt!1976634 (_1!32465 (h!61492 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))))))))

(declare-fun lt!1976644 () Unit!143681)

(declare-fun Unit!143722 () Unit!143681)

(assert (=> b!4830447 (= lt!1976644 Unit!143722)))

(assert (=> b!4830447 (contains!18867 lt!1976632 (_1!32465 (h!61492 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))))))))

(declare-fun lt!1976636 () Unit!143681)

(declare-fun Unit!143723 () Unit!143681)

(assert (=> b!4830447 (= lt!1976636 Unit!143723)))

(assert (=> b!4830447 (forall!12671 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))) lambda!237931)))

(declare-fun lt!1976646 () Unit!143681)

(declare-fun Unit!143724 () Unit!143681)

(assert (=> b!4830447 (= lt!1976646 Unit!143724)))

(assert (=> b!4830447 call!336644))

(declare-fun lt!1976645 () Unit!143681)

(declare-fun Unit!143725 () Unit!143681)

(assert (=> b!4830447 (= lt!1976645 Unit!143725)))

(declare-fun lt!1976640 () Unit!143681)

(declare-fun Unit!143726 () Unit!143681)

(assert (=> b!4830447 (= lt!1976640 Unit!143726)))

(declare-fun lt!1976627 () Unit!143681)

(assert (=> b!4830447 (= lt!1976627 (addForallContainsKeyThenBeforeAdding!1002 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976632 (_1!32465 (h!61492 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))))) (_2!32465 (h!61492 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325))))))))))

(assert (=> b!4830447 (forall!12671 (toList!7548 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) lambda!237931)))

(declare-fun lt!1976633 () Unit!143681)

(assert (=> b!4830447 (= lt!1976633 lt!1976627)))

(assert (=> b!4830447 (forall!12671 (toList!7548 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) lambda!237931)))

(declare-fun lt!1976635 () Unit!143681)

(declare-fun Unit!143727 () Unit!143681)

(assert (=> b!4830447 (= lt!1976635 Unit!143727)))

(declare-fun res!2057297 () Bool)

(assert (=> b!4830447 (= res!2057297 (forall!12671 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))) lambda!237931))))

(assert (=> b!4830447 (=> (not res!2057297) (not e!3018429))))

(assert (=> b!4830447 e!3018429))

(declare-fun lt!1976631 () Unit!143681)

(declare-fun Unit!143728 () Unit!143681)

(assert (=> b!4830447 (= lt!1976631 Unit!143728)))

(assert (=> d!1548363 e!3018428))

(declare-fun res!2057298 () Bool)

(assert (=> d!1548363 (=> (not res!2057298) (not e!3018428))))

(assert (=> d!1548363 (= res!2057298 (forall!12671 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))) lambda!237932))))

(assert (=> d!1548363 (= lt!1976628 e!3018430)))

(assert (=> d!1548363 (= c!823062 (is-Nil!55058 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325))))))))

(assert (=> d!1548363 (noDuplicateKeys!2469 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))))))

(assert (=> d!1548363 (= (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325)))) (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) lt!1976628)))

(assert (=> b!4830443 (= e!3018430 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))))))

(declare-fun lt!1976638 () Unit!143681)

(assert (=> b!4830443 (= lt!1976638 call!336645)))

(assert (=> b!4830443 call!336644))

(declare-fun lt!1976637 () Unit!143681)

(assert (=> b!4830443 (= lt!1976637 lt!1976638)))

(assert (=> b!4830443 call!336643))

(declare-fun lt!1976643 () Unit!143681)

(declare-fun Unit!143729 () Unit!143681)

(assert (=> b!4830443 (= lt!1976643 Unit!143729)))

(assert (= (and d!1548363 c!823062) b!4830443))

(assert (= (and d!1548363 (not c!823062)) b!4830447))

(assert (= (and b!4830447 res!2057297) b!4830446))

(assert (= (or b!4830443 b!4830447) bm!336640))

(assert (= (or b!4830443 b!4830447) bm!336638))

(assert (= (or b!4830443 b!4830446) bm!336639))

(assert (= (and d!1548363 res!2057298) b!4830445))

(assert (= (and b!4830445 res!2057299) b!4830444))

(declare-fun m!5823278 () Bool)

(assert (=> bm!336639 m!5823278))

(declare-fun m!5823280 () Bool)

(assert (=> b!4830444 m!5823280))

(declare-fun m!5823282 () Bool)

(assert (=> d!1548363 m!5823282))

(declare-fun m!5823284 () Bool)

(assert (=> d!1548363 m!5823284))

(declare-fun m!5823286 () Bool)

(assert (=> b!4830445 m!5823286))

(declare-fun m!5823288 () Bool)

(assert (=> b!4830447 m!5823288))

(declare-fun m!5823290 () Bool)

(assert (=> b!4830447 m!5823290))

(declare-fun m!5823292 () Bool)

(assert (=> b!4830447 m!5823292))

(declare-fun m!5823294 () Bool)

(assert (=> b!4830447 m!5823294))

(declare-fun m!5823296 () Bool)

(assert (=> b!4830447 m!5823296))

(declare-fun m!5823298 () Bool)

(assert (=> b!4830447 m!5823298))

(declare-fun m!5823300 () Bool)

(assert (=> b!4830447 m!5823300))

(declare-fun m!5823302 () Bool)

(assert (=> b!4830447 m!5823302))

(assert (=> b!4830447 m!5823142))

(assert (=> b!4830447 m!5823292))

(assert (=> b!4830447 m!5823142))

(declare-fun m!5823304 () Bool)

(assert (=> b!4830447 m!5823304))

(declare-fun m!5823306 () Bool)

(assert (=> b!4830447 m!5823306))

(declare-fun m!5823308 () Bool)

(assert (=> b!4830447 m!5823308))

(assert (=> b!4830447 m!5823306))

(assert (=> b!4830447 m!5823302))

(declare-fun m!5823310 () Bool)

(assert (=> bm!336638 m!5823310))

(assert (=> bm!336640 m!5823142))

(declare-fun m!5823312 () Bool)

(assert (=> bm!336640 m!5823312))

(assert (=> b!4830358 d!1548363))

(declare-fun bs!1165831 () Bool)

(declare-fun d!1548365 () Bool)

(assert (= bs!1165831 (and d!1548365 d!1548335)))

(declare-fun lambda!237933 () Int)

(assert (=> bs!1165831 (not (= lambda!237933 lambda!237884))))

(declare-fun bs!1165832 () Bool)

(assert (= bs!1165832 (and d!1548365 d!1548327)))

(assert (=> bs!1165832 (not (= lambda!237933 lambda!237883))))

(declare-fun bs!1165833 () Bool)

(assert (= bs!1165833 (and d!1548365 start!501694)))

(assert (=> bs!1165833 (= lambda!237933 lambda!237833)))

(declare-fun bs!1165834 () Bool)

(assert (= bs!1165834 (and d!1548365 d!1548317)))

(assert (=> bs!1165834 (= lambda!237933 lambda!237877)))

(declare-fun bs!1165835 () Bool)

(assert (= bs!1165835 (and d!1548365 d!1548319)))

(assert (=> bs!1165835 (= lambda!237933 lambda!237880)))

(declare-fun lt!1976647 () ListMap!6919)

(assert (=> d!1548365 (invariantList!1825 (toList!7548 lt!1976647))))

(declare-fun e!3018431 () ListMap!6919)

(assert (=> d!1548365 (= lt!1976647 e!3018431)))

(declare-fun c!823063 () Bool)

(assert (=> d!1548365 (= c!823063 (is-Cons!55059 (t!362679 (t!362679 (toList!7547 lm!2325)))))))

(assert (=> d!1548365 (forall!12669 (t!362679 (t!362679 (toList!7547 lm!2325))) lambda!237933)))

(assert (=> d!1548365 (= (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325)))) lt!1976647)))

(declare-fun b!4830448 () Bool)

(assert (=> b!4830448 (= e!3018431 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (t!362679 (t!362679 (toList!7547 lm!2325))))) (extractMap!2711 (t!362679 (t!362679 (t!362679 (toList!7547 lm!2325)))))))))

(declare-fun b!4830449 () Bool)

(assert (=> b!4830449 (= e!3018431 (ListMap!6920 Nil!55058))))

(assert (= (and d!1548365 c!823063) b!4830448))

(assert (= (and d!1548365 (not c!823063)) b!4830449))

(declare-fun m!5823314 () Bool)

(assert (=> d!1548365 m!5823314))

(declare-fun m!5823316 () Bool)

(assert (=> d!1548365 m!5823316))

(declare-fun m!5823318 () Bool)

(assert (=> b!4830448 m!5823318))

(assert (=> b!4830448 m!5823318))

(declare-fun m!5823320 () Bool)

(assert (=> b!4830448 m!5823320))

(assert (=> b!4830358 d!1548365))

(declare-fun d!1548367 () Bool)

(declare-fun res!2057300 () Bool)

(declare-fun e!3018432 () Bool)

(assert (=> d!1548367 (=> res!2057300 e!3018432)))

(assert (=> d!1548367 (= res!2057300 (and (is-Cons!55058 (t!362678 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325)))))) (= (_1!32465 (h!61492 (t!362678 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325))))))) key!5594)))))

(assert (=> d!1548367 (= (containsKey!4426 (t!362678 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325))))) key!5594) e!3018432)))

(declare-fun b!4830450 () Bool)

(declare-fun e!3018433 () Bool)

(assert (=> b!4830450 (= e!3018432 e!3018433)))

(declare-fun res!2057301 () Bool)

(assert (=> b!4830450 (=> (not res!2057301) (not e!3018433))))

(assert (=> b!4830450 (= res!2057301 (is-Cons!55058 (t!362678 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun b!4830451 () Bool)

(assert (=> b!4830451 (= e!3018433 (containsKey!4426 (t!362678 (t!362678 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325)))))) key!5594))))

(assert (= (and d!1548367 (not res!2057300)) b!4830450))

(assert (= (and b!4830450 res!2057301) b!4830451))

(declare-fun m!5823322 () Bool)

(assert (=> b!4830451 m!5823322))

(assert (=> b!4830237 d!1548367))

(declare-fun d!1548369 () Bool)

(assert (=> d!1548369 (isDefined!10636 (getValueByKey!2648 (toList!7547 lt!1976363) lt!1976362))))

(declare-fun lt!1976650 () Unit!143681)

(declare-fun choose!35235 (List!55183 (_ BitVec 64)) Unit!143681)

(assert (=> d!1548369 (= lt!1976650 (choose!35235 (toList!7547 lt!1976363) lt!1976362))))

(declare-fun e!3018436 () Bool)

(assert (=> d!1548369 e!3018436))

(declare-fun res!2057304 () Bool)

(assert (=> d!1548369 (=> (not res!2057304) (not e!3018436))))

(assert (=> d!1548369 (= res!2057304 (isStrictlySorted!1000 (toList!7547 lt!1976363)))))

(assert (=> d!1548369 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2433 (toList!7547 lt!1976363) lt!1976362) lt!1976650)))

(declare-fun b!4830454 () Bool)

(assert (=> b!4830454 (= e!3018436 (containsKey!4428 (toList!7547 lt!1976363) lt!1976362))))

(assert (= (and d!1548369 res!2057304) b!4830454))

(assert (=> d!1548369 m!5822990))

(assert (=> d!1548369 m!5822990))

(assert (=> d!1548369 m!5822992))

(declare-fun m!5823324 () Bool)

(assert (=> d!1548369 m!5823324))

(declare-fun m!5823326 () Bool)

(assert (=> d!1548369 m!5823326))

(assert (=> b!4830454 m!5822986))

(assert (=> b!4830226 d!1548369))

(assert (=> b!4830226 d!1548355))

(assert (=> b!4830226 d!1548357))

(declare-fun bs!1165836 () Bool)

(declare-fun b!4830476 () Bool)

(assert (= bs!1165836 (and b!4830476 b!4830439)))

(declare-fun lambda!237942 () Int)

(assert (=> bs!1165836 (= (= (t!362678 (toList!7548 lt!1976361)) (toList!7548 lt!1976361)) (= lambda!237942 lambda!237927))))

(assert (=> b!4830476 true))

(declare-fun bs!1165837 () Bool)

(declare-fun b!4830481 () Bool)

(assert (= bs!1165837 (and b!4830481 b!4830439)))

(declare-fun lambda!237943 () Int)

(assert (=> bs!1165837 (= (= (Cons!55058 (h!61492 (toList!7548 lt!1976361)) (t!362678 (toList!7548 lt!1976361))) (toList!7548 lt!1976361)) (= lambda!237943 lambda!237927))))

(declare-fun bs!1165838 () Bool)

(assert (= bs!1165838 (and b!4830481 b!4830476)))

(assert (=> bs!1165838 (= (= (Cons!55058 (h!61492 (toList!7548 lt!1976361)) (t!362678 (toList!7548 lt!1976361))) (t!362678 (toList!7548 lt!1976361))) (= lambda!237943 lambda!237942))))

(assert (=> b!4830481 true))

(declare-fun bs!1165839 () Bool)

(declare-fun b!4830477 () Bool)

(assert (= bs!1165839 (and b!4830477 b!4830439)))

(declare-fun lambda!237944 () Int)

(assert (=> bs!1165839 (= lambda!237944 lambda!237927)))

(declare-fun bs!1165840 () Bool)

(assert (= bs!1165840 (and b!4830477 b!4830476)))

(assert (=> bs!1165840 (= (= (toList!7548 lt!1976361) (t!362678 (toList!7548 lt!1976361))) (= lambda!237944 lambda!237942))))

(declare-fun bs!1165841 () Bool)

(assert (= bs!1165841 (and b!4830477 b!4830481)))

(assert (=> bs!1165841 (= (= (toList!7548 lt!1976361) (Cons!55058 (h!61492 (toList!7548 lt!1976361)) (t!362678 (toList!7548 lt!1976361)))) (= lambda!237944 lambda!237943))))

(assert (=> b!4830477 true))

(declare-fun bs!1165842 () Bool)

(declare-fun b!4830479 () Bool)

(assert (= bs!1165842 (and b!4830479 b!4830440)))

(declare-fun lambda!237945 () Int)

(assert (=> bs!1165842 (= lambda!237945 lambda!237928)))

(declare-fun b!4830473 () Bool)

(declare-fun e!3018448 () List!55186)

(assert (=> b!4830473 (= e!3018448 Nil!55062)))

(declare-fun b!4830474 () Bool)

(declare-fun e!3018445 () Unit!143681)

(declare-fun Unit!143730 () Unit!143681)

(assert (=> b!4830474 (= e!3018445 Unit!143730)))

(assert (=> b!4830476 false))

(declare-fun lt!1976666 () Unit!143681)

(declare-fun forallContained!4410 (List!55186 Int K!16747) Unit!143681)

(assert (=> b!4830476 (= lt!1976666 (forallContained!4410 (getKeysList!1171 (t!362678 (toList!7548 lt!1976361))) lambda!237942 (_1!32465 (h!61492 (toList!7548 lt!1976361)))))))

(declare-fun Unit!143731 () Unit!143681)

(assert (=> b!4830476 (= e!3018445 Unit!143731)))

(declare-fun res!2057312 () Bool)

(declare-fun e!3018446 () Bool)

(assert (=> b!4830477 (=> (not res!2057312) (not e!3018446))))

(declare-fun lt!1976670 () List!55186)

(assert (=> b!4830477 (= res!2057312 (forall!12673 lt!1976670 lambda!237944))))

(declare-fun b!4830478 () Bool)

(declare-fun res!2057313 () Bool)

(assert (=> b!4830478 (=> (not res!2057313) (not e!3018446))))

(assert (=> b!4830478 (= res!2057313 (= (length!802 lt!1976670) (length!803 (toList!7548 lt!1976361))))))

(assert (=> b!4830479 (= e!3018446 (= (content!9832 lt!1976670) (content!9832 (map!12611 (toList!7548 lt!1976361) lambda!237945))))))

(declare-fun d!1548371 () Bool)

(assert (=> d!1548371 e!3018446))

(declare-fun res!2057311 () Bool)

(assert (=> d!1548371 (=> (not res!2057311) (not e!3018446))))

(assert (=> d!1548371 (= res!2057311 (noDuplicate!973 lt!1976670))))

(assert (=> d!1548371 (= lt!1976670 e!3018448)))

(declare-fun c!823072 () Bool)

(assert (=> d!1548371 (= c!823072 (is-Cons!55058 (toList!7548 lt!1976361)))))

(assert (=> d!1548371 (invariantList!1825 (toList!7548 lt!1976361))))

(assert (=> d!1548371 (= (getKeysList!1171 (toList!7548 lt!1976361)) lt!1976670)))

(declare-fun b!4830475 () Bool)

(assert (=> b!4830475 false))

(declare-fun e!3018447 () Unit!143681)

(declare-fun Unit!143732 () Unit!143681)

(assert (=> b!4830475 (= e!3018447 Unit!143732)))

(declare-fun b!4830480 () Bool)

(declare-fun Unit!143733 () Unit!143681)

(assert (=> b!4830480 (= e!3018447 Unit!143733)))

(assert (=> b!4830481 (= e!3018448 (Cons!55062 (_1!32465 (h!61492 (toList!7548 lt!1976361))) (getKeysList!1171 (t!362678 (toList!7548 lt!1976361)))))))

(declare-fun c!823071 () Bool)

(assert (=> b!4830481 (= c!823071 (containsKey!4429 (t!362678 (toList!7548 lt!1976361)) (_1!32465 (h!61492 (toList!7548 lt!1976361)))))))

(declare-fun lt!1976669 () Unit!143681)

(assert (=> b!4830481 (= lt!1976669 e!3018447)))

(declare-fun c!823070 () Bool)

(assert (=> b!4830481 (= c!823070 (contains!18870 (getKeysList!1171 (t!362678 (toList!7548 lt!1976361))) (_1!32465 (h!61492 (toList!7548 lt!1976361)))))))

(declare-fun lt!1976671 () Unit!143681)

(assert (=> b!4830481 (= lt!1976671 e!3018445)))

(declare-fun lt!1976668 () List!55186)

(assert (=> b!4830481 (= lt!1976668 (getKeysList!1171 (t!362678 (toList!7548 lt!1976361))))))

(declare-fun lt!1976667 () Unit!143681)

(declare-fun lemmaForallContainsAddHeadPreserves!387 (List!55182 List!55186 tuple2!58342) Unit!143681)

(assert (=> b!4830481 (= lt!1976667 (lemmaForallContainsAddHeadPreserves!387 (t!362678 (toList!7548 lt!1976361)) lt!1976668 (h!61492 (toList!7548 lt!1976361))))))

(assert (=> b!4830481 (forall!12673 lt!1976668 lambda!237943)))

(declare-fun lt!1976665 () Unit!143681)

(assert (=> b!4830481 (= lt!1976665 lt!1976667)))

(assert (= (and d!1548371 c!823072) b!4830481))

(assert (= (and d!1548371 (not c!823072)) b!4830473))

(assert (= (and b!4830481 c!823071) b!4830475))

(assert (= (and b!4830481 (not c!823071)) b!4830480))

(assert (= (and b!4830481 c!823070) b!4830476))

(assert (= (and b!4830481 (not c!823070)) b!4830474))

(assert (= (and d!1548371 res!2057311) b!4830478))

(assert (= (and b!4830478 res!2057313) b!4830477))

(assert (= (and b!4830477 res!2057312) b!4830479))

(declare-fun m!5823328 () Bool)

(assert (=> b!4830477 m!5823328))

(declare-fun m!5823330 () Bool)

(assert (=> b!4830479 m!5823330))

(declare-fun m!5823332 () Bool)

(assert (=> b!4830479 m!5823332))

(assert (=> b!4830479 m!5823332))

(declare-fun m!5823334 () Bool)

(assert (=> b!4830479 m!5823334))

(declare-fun m!5823336 () Bool)

(assert (=> d!1548371 m!5823336))

(declare-fun m!5823338 () Bool)

(assert (=> d!1548371 m!5823338))

(declare-fun m!5823340 () Bool)

(assert (=> b!4830476 m!5823340))

(assert (=> b!4830476 m!5823340))

(declare-fun m!5823342 () Bool)

(assert (=> b!4830476 m!5823342))

(declare-fun m!5823344 () Bool)

(assert (=> b!4830478 m!5823344))

(assert (=> b!4830478 m!5823268))

(assert (=> b!4830481 m!5823340))

(declare-fun m!5823346 () Bool)

(assert (=> b!4830481 m!5823346))

(declare-fun m!5823348 () Bool)

(assert (=> b!4830481 m!5823348))

(declare-fun m!5823350 () Bool)

(assert (=> b!4830481 m!5823350))

(declare-fun m!5823352 () Bool)

(assert (=> b!4830481 m!5823352))

(assert (=> b!4830481 m!5823340))

(assert (=> b!4830371 d!1548371))

(declare-fun bs!1165843 () Bool)

(declare-fun b!4830487 () Bool)

(assert (= bs!1165843 (and b!4830487 b!4830439)))

(declare-fun lambda!237946 () Int)

(assert (=> bs!1165843 (= (= (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (toList!7548 lt!1976361)) (= lambda!237946 lambda!237927))))

(declare-fun bs!1165844 () Bool)

(assert (= bs!1165844 (and b!4830487 b!4830476)))

(assert (=> bs!1165844 (= (= (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (t!362678 (toList!7548 lt!1976361))) (= lambda!237946 lambda!237942))))

(declare-fun bs!1165845 () Bool)

(assert (= bs!1165845 (and b!4830487 b!4830481)))

(assert (=> bs!1165845 (= (= (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (Cons!55058 (h!61492 (toList!7548 lt!1976361)) (t!362678 (toList!7548 lt!1976361)))) (= lambda!237946 lambda!237943))))

(declare-fun bs!1165846 () Bool)

(assert (= bs!1165846 (and b!4830487 b!4830477)))

(assert (=> bs!1165846 (= (= (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (toList!7548 lt!1976361)) (= lambda!237946 lambda!237944))))

(assert (=> b!4830487 true))

(declare-fun bs!1165847 () Bool)

(declare-fun b!4830492 () Bool)

(assert (= bs!1165847 (and b!4830492 b!4830487)))

(declare-fun lambda!237947 () Int)

(assert (=> bs!1165847 (= (= (Cons!55058 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (= lambda!237947 lambda!237946))))

(declare-fun bs!1165848 () Bool)

(assert (= bs!1165848 (and b!4830492 b!4830477)))

(assert (=> bs!1165848 (= (= (Cons!55058 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (toList!7548 lt!1976361)) (= lambda!237947 lambda!237944))))

(declare-fun bs!1165849 () Bool)

(assert (= bs!1165849 (and b!4830492 b!4830476)))

(assert (=> bs!1165849 (= (= (Cons!55058 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (t!362678 (toList!7548 lt!1976361))) (= lambda!237947 lambda!237942))))

(declare-fun bs!1165850 () Bool)

(assert (= bs!1165850 (and b!4830492 b!4830439)))

(assert (=> bs!1165850 (= (= (Cons!55058 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (toList!7548 lt!1976361)) (= lambda!237947 lambda!237927))))

(declare-fun bs!1165851 () Bool)

(assert (= bs!1165851 (and b!4830492 b!4830481)))

(assert (=> bs!1165851 (= (= (Cons!55058 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (Cons!55058 (h!61492 (toList!7548 lt!1976361)) (t!362678 (toList!7548 lt!1976361)))) (= lambda!237947 lambda!237943))))

(assert (=> b!4830492 true))

(declare-fun bs!1165852 () Bool)

(declare-fun b!4830488 () Bool)

(assert (= bs!1165852 (and b!4830488 b!4830487)))

(declare-fun lambda!237948 () Int)

(assert (=> bs!1165852 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (= lambda!237948 lambda!237946))))

(declare-fun bs!1165853 () Bool)

(assert (= bs!1165853 (and b!4830488 b!4830477)))

(assert (=> bs!1165853 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (toList!7548 lt!1976361)) (= lambda!237948 lambda!237944))))

(declare-fun bs!1165854 () Bool)

(assert (= bs!1165854 (and b!4830488 b!4830476)))

(assert (=> bs!1165854 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (t!362678 (toList!7548 lt!1976361))) (= lambda!237948 lambda!237942))))

(declare-fun bs!1165855 () Bool)

(assert (= bs!1165855 (and b!4830488 b!4830492)))

(assert (=> bs!1165855 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (Cons!55058 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))) (= lambda!237948 lambda!237947))))

(declare-fun bs!1165856 () Bool)

(assert (= bs!1165856 (and b!4830488 b!4830439)))

(assert (=> bs!1165856 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (toList!7548 lt!1976361)) (= lambda!237948 lambda!237927))))

(declare-fun bs!1165857 () Bool)

(assert (= bs!1165857 (and b!4830488 b!4830481)))

(assert (=> bs!1165857 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (Cons!55058 (h!61492 (toList!7548 lt!1976361)) (t!362678 (toList!7548 lt!1976361)))) (= lambda!237948 lambda!237943))))

(assert (=> b!4830488 true))

(declare-fun bs!1165858 () Bool)

(declare-fun b!4830490 () Bool)

(assert (= bs!1165858 (and b!4830490 b!4830440)))

(declare-fun lambda!237949 () Int)

(assert (=> bs!1165858 (= lambda!237949 lambda!237928)))

(declare-fun bs!1165859 () Bool)

(assert (= bs!1165859 (and b!4830490 b!4830479)))

(assert (=> bs!1165859 (= lambda!237949 lambda!237945)))

(declare-fun b!4830484 () Bool)

(declare-fun e!3018452 () List!55186)

(assert (=> b!4830484 (= e!3018452 Nil!55062)))

(declare-fun b!4830485 () Bool)

(declare-fun e!3018449 () Unit!143681)

(declare-fun Unit!143734 () Unit!143681)

(assert (=> b!4830485 (= e!3018449 Unit!143734)))

(assert (=> b!4830487 false))

(declare-fun lt!1976673 () Unit!143681)

(assert (=> b!4830487 (= lt!1976673 (forallContained!4410 (getKeysList!1171 (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) lambda!237946 (_1!32465 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))))

(declare-fun Unit!143735 () Unit!143681)

(assert (=> b!4830487 (= e!3018449 Unit!143735)))

(declare-fun res!2057315 () Bool)

(declare-fun e!3018450 () Bool)

(assert (=> b!4830488 (=> (not res!2057315) (not e!3018450))))

(declare-fun lt!1976677 () List!55186)

(assert (=> b!4830488 (= res!2057315 (forall!12673 lt!1976677 lambda!237948))))

(declare-fun b!4830489 () Bool)

(declare-fun res!2057316 () Bool)

(assert (=> b!4830489 (=> (not res!2057316) (not e!3018450))))

(assert (=> b!4830489 (= res!2057316 (= (length!802 lt!1976677) (length!803 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))))

(assert (=> b!4830490 (= e!3018450 (= (content!9832 lt!1976677) (content!9832 (map!12611 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) lambda!237949))))))

(declare-fun d!1548373 () Bool)

(assert (=> d!1548373 e!3018450))

(declare-fun res!2057314 () Bool)

(assert (=> d!1548373 (=> (not res!2057314) (not e!3018450))))

(assert (=> d!1548373 (= res!2057314 (noDuplicate!973 lt!1976677))))

(assert (=> d!1548373 (= lt!1976677 e!3018452)))

(declare-fun c!823075 () Bool)

(assert (=> d!1548373 (= c!823075 (is-Cons!55058 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))

(assert (=> d!1548373 (invariantList!1825 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))

(assert (=> d!1548373 (= (getKeysList!1171 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) lt!1976677)))

(declare-fun b!4830486 () Bool)

(assert (=> b!4830486 false))

(declare-fun e!3018451 () Unit!143681)

(declare-fun Unit!143736 () Unit!143681)

(assert (=> b!4830486 (= e!3018451 Unit!143736)))

(declare-fun b!4830491 () Bool)

(declare-fun Unit!143737 () Unit!143681)

(assert (=> b!4830491 (= e!3018451 Unit!143737)))

(assert (=> b!4830492 (= e!3018452 (Cons!55062 (_1!32465 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (getKeysList!1171 (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))))

(declare-fun c!823074 () Bool)

(assert (=> b!4830492 (= c!823074 (containsKey!4429 (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (_1!32465 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))))

(declare-fun lt!1976676 () Unit!143681)

(assert (=> b!4830492 (= lt!1976676 e!3018451)))

(declare-fun c!823073 () Bool)

(assert (=> b!4830492 (= c!823073 (contains!18870 (getKeysList!1171 (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (_1!32465 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))))

(declare-fun lt!1976678 () Unit!143681)

(assert (=> b!4830492 (= lt!1976678 e!3018449)))

(declare-fun lt!1976675 () List!55186)

(assert (=> b!4830492 (= lt!1976675 (getKeysList!1171 (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))))

(declare-fun lt!1976674 () Unit!143681)

(assert (=> b!4830492 (= lt!1976674 (lemmaForallContainsAddHeadPreserves!387 (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) lt!1976675 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))))

(assert (=> b!4830492 (forall!12673 lt!1976675 lambda!237947)))

(declare-fun lt!1976672 () Unit!143681)

(assert (=> b!4830492 (= lt!1976672 lt!1976674)))

(assert (= (and d!1548373 c!823075) b!4830492))

(assert (= (and d!1548373 (not c!823075)) b!4830484))

(assert (= (and b!4830492 c!823074) b!4830486))

(assert (= (and b!4830492 (not c!823074)) b!4830491))

(assert (= (and b!4830492 c!823073) b!4830487))

(assert (= (and b!4830492 (not c!823073)) b!4830485))

(assert (= (and d!1548373 res!2057314) b!4830489))

(assert (= (and b!4830489 res!2057316) b!4830488))

(assert (= (and b!4830488 res!2057315) b!4830490))

(declare-fun m!5823354 () Bool)

(assert (=> b!4830488 m!5823354))

(declare-fun m!5823356 () Bool)

(assert (=> b!4830490 m!5823356))

(declare-fun m!5823358 () Bool)

(assert (=> b!4830490 m!5823358))

(assert (=> b!4830490 m!5823358))

(declare-fun m!5823360 () Bool)

(assert (=> b!4830490 m!5823360))

(declare-fun m!5823362 () Bool)

(assert (=> d!1548373 m!5823362))

(declare-fun m!5823364 () Bool)

(assert (=> d!1548373 m!5823364))

(declare-fun m!5823366 () Bool)

(assert (=> b!4830487 m!5823366))

(assert (=> b!4830487 m!5823366))

(declare-fun m!5823368 () Bool)

(assert (=> b!4830487 m!5823368))

(declare-fun m!5823370 () Bool)

(assert (=> b!4830489 m!5823370))

(declare-fun m!5823372 () Bool)

(assert (=> b!4830489 m!5823372))

(assert (=> b!4830492 m!5823366))

(declare-fun m!5823374 () Bool)

(assert (=> b!4830492 m!5823374))

(declare-fun m!5823376 () Bool)

(assert (=> b!4830492 m!5823376))

(declare-fun m!5823378 () Bool)

(assert (=> b!4830492 m!5823378))

(declare-fun m!5823380 () Bool)

(assert (=> b!4830492 m!5823380))

(assert (=> b!4830492 m!5823366))

(assert (=> b!4830351 d!1548373))

(declare-fun bs!1165860 () Bool)

(declare-fun d!1548375 () Bool)

(assert (= bs!1165860 (and d!1548375 b!4830320)))

(declare-fun lambda!237952 () Int)

(assert (=> bs!1165860 (= lambda!237952 lambda!237871)))

(declare-fun bs!1165861 () Bool)

(assert (= bs!1165861 (and d!1548375 b!4830443)))

(assert (=> bs!1165861 (= (= lt!1976361 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237952 lambda!237929))))

(declare-fun bs!1165862 () Bool)

(assert (= bs!1165862 (and d!1548375 b!4830447)))

(assert (=> bs!1165862 (= (= lt!1976361 lt!1976632) (= lambda!237952 lambda!237931))))

(declare-fun bs!1165863 () Bool)

(assert (= bs!1165863 (and d!1548375 b!4830324)))

(assert (=> bs!1165863 (= (= lt!1976361 lt!1976491) (= lambda!237952 lambda!237873))))

(declare-fun bs!1165864 () Bool)

(assert (= bs!1165864 (and d!1548375 d!1548289)))

(assert (=> bs!1165864 (= (= lt!1976361 lt!1976487) (= lambda!237952 lambda!237874))))

(assert (=> bs!1165862 (= (= lt!1976361 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237952 lambda!237930))))

(declare-fun bs!1165865 () Bool)

(assert (= bs!1165865 (and d!1548375 d!1548363)))

(assert (=> bs!1165865 (= (= lt!1976361 lt!1976628) (= lambda!237952 lambda!237932))))

(assert (=> bs!1165863 (= lambda!237952 lambda!237872)))

(assert (=> d!1548375 true))

(assert (=> d!1548375 (forall!12671 (toList!7548 lt!1976361) lambda!237952)))

(declare-fun lt!1976681 () Unit!143681)

(declare-fun choose!35236 (ListMap!6919) Unit!143681)

(assert (=> d!1548375 (= lt!1976681 (choose!35236 lt!1976361))))

(assert (=> d!1548375 (= (lemmaContainsAllItsOwnKeys!1003 lt!1976361) lt!1976681)))

(declare-fun bs!1165866 () Bool)

(assert (= bs!1165866 d!1548375))

(declare-fun m!5823382 () Bool)

(assert (=> bs!1165866 m!5823382))

(declare-fun m!5823384 () Bool)

(assert (=> bs!1165866 m!5823384))

(assert (=> bm!336624 d!1548375))

(declare-fun d!1548377 () Bool)

(declare-fun lt!1976682 () Bool)

(assert (=> d!1548377 (= lt!1976682 (set.member key!5594 (content!9832 e!3018384)))))

(declare-fun e!3018454 () Bool)

(assert (=> d!1548377 (= lt!1976682 e!3018454)))

(declare-fun res!2057317 () Bool)

(assert (=> d!1548377 (=> (not res!2057317) (not e!3018454))))

(assert (=> d!1548377 (= res!2057317 (is-Cons!55062 e!3018384))))

(assert (=> d!1548377 (= (contains!18870 e!3018384 key!5594) lt!1976682)))

(declare-fun b!4830493 () Bool)

(declare-fun e!3018453 () Bool)

(assert (=> b!4830493 (= e!3018454 e!3018453)))

(declare-fun res!2057318 () Bool)

(assert (=> b!4830493 (=> res!2057318 e!3018453)))

(assert (=> b!4830493 (= res!2057318 (= (h!61496 e!3018384) key!5594))))

(declare-fun b!4830494 () Bool)

(assert (=> b!4830494 (= e!3018453 (contains!18870 (t!362682 e!3018384) key!5594))))

(assert (= (and d!1548377 res!2057317) b!4830493))

(assert (= (and b!4830493 (not res!2057318)) b!4830494))

(declare-fun m!5823386 () Bool)

(assert (=> d!1548377 m!5823386))

(declare-fun m!5823388 () Bool)

(assert (=> d!1548377 m!5823388))

(declare-fun m!5823390 () Bool)

(assert (=> b!4830494 m!5823390))

(assert (=> bm!336628 d!1548377))

(declare-fun d!1548379 () Bool)

(declare-fun res!2057323 () Bool)

(declare-fun e!3018459 () Bool)

(assert (=> d!1548379 (=> res!2057323 e!3018459)))

(assert (=> d!1548379 (= res!2057323 (is-Nil!55058 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(assert (=> d!1548379 (= (forall!12671 (_2!32466 (h!61493 (toList!7547 lm!2325))) lambda!237874) e!3018459)))

(declare-fun b!4830499 () Bool)

(declare-fun e!3018460 () Bool)

(assert (=> b!4830499 (= e!3018459 e!3018460)))

(declare-fun res!2057324 () Bool)

(assert (=> b!4830499 (=> (not res!2057324) (not e!3018460))))

(declare-fun dynLambda!22244 (Int tuple2!58342) Bool)

(assert (=> b!4830499 (= res!2057324 (dynLambda!22244 lambda!237874 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun b!4830500 () Bool)

(assert (=> b!4830500 (= e!3018460 (forall!12671 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) lambda!237874))))

(assert (= (and d!1548379 (not res!2057323)) b!4830499))

(assert (= (and b!4830499 res!2057324) b!4830500))

(declare-fun b_lambda!190539 () Bool)

(assert (=> (not b_lambda!190539) (not b!4830499)))

(declare-fun m!5823392 () Bool)

(assert (=> b!4830499 m!5823392))

(declare-fun m!5823394 () Bool)

(assert (=> b!4830500 m!5823394))

(assert (=> d!1548289 d!1548379))

(declare-fun d!1548381 () Bool)

(declare-fun res!2057329 () Bool)

(declare-fun e!3018465 () Bool)

(assert (=> d!1548381 (=> res!2057329 e!3018465)))

(assert (=> d!1548381 (= res!2057329 (not (is-Cons!55058 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (=> d!1548381 (= (noDuplicateKeys!2469 (_2!32466 (h!61493 (toList!7547 lm!2325)))) e!3018465)))

(declare-fun b!4830505 () Bool)

(declare-fun e!3018466 () Bool)

(assert (=> b!4830505 (= e!3018465 e!3018466)))

(declare-fun res!2057330 () Bool)

(assert (=> b!4830505 (=> (not res!2057330) (not e!3018466))))

(assert (=> b!4830505 (= res!2057330 (not (containsKey!4426 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))))

(declare-fun b!4830506 () Bool)

(assert (=> b!4830506 (= e!3018466 (noDuplicateKeys!2469 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (= (and d!1548381 (not res!2057329)) b!4830505))

(assert (= (and b!4830505 res!2057330) b!4830506))

(declare-fun m!5823396 () Bool)

(assert (=> b!4830505 m!5823396))

(declare-fun m!5823398 () Bool)

(assert (=> b!4830506 m!5823398))

(assert (=> d!1548289 d!1548381))

(declare-fun lt!1976683 () Bool)

(declare-fun d!1548383 () Bool)

(assert (=> d!1548383 (= lt!1976683 (set.member key!5594 (content!9832 (keys!20276 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))))

(declare-fun e!3018468 () Bool)

(assert (=> d!1548383 (= lt!1976683 e!3018468)))

(declare-fun res!2057331 () Bool)

(assert (=> d!1548383 (=> (not res!2057331) (not e!3018468))))

(assert (=> d!1548383 (= res!2057331 (is-Cons!55062 (keys!20276 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))

(assert (=> d!1548383 (= (contains!18870 (keys!20276 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594) lt!1976683)))

(declare-fun b!4830507 () Bool)

(declare-fun e!3018467 () Bool)

(assert (=> b!4830507 (= e!3018468 e!3018467)))

(declare-fun res!2057332 () Bool)

(assert (=> b!4830507 (=> res!2057332 e!3018467)))

(assert (=> b!4830507 (= res!2057332 (= (h!61496 (keys!20276 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) key!5594))))

(declare-fun b!4830508 () Bool)

(assert (=> b!4830508 (= e!3018467 (contains!18870 (t!362682 (keys!20276 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) key!5594))))

(assert (= (and d!1548383 res!2057331) b!4830507))

(assert (= (and b!4830507 (not res!2057332)) b!4830508))

(assert (=> d!1548383 m!5823118))

(declare-fun m!5823400 () Bool)

(assert (=> d!1548383 m!5823400))

(declare-fun m!5823402 () Bool)

(assert (=> d!1548383 m!5823402))

(declare-fun m!5823404 () Bool)

(assert (=> b!4830508 m!5823404))

(assert (=> b!4830353 d!1548383))

(declare-fun bs!1165867 () Bool)

(declare-fun b!4830510 () Bool)

(assert (= bs!1165867 (and b!4830510 b!4830487)))

(declare-fun lambda!237953 () Int)

(assert (=> bs!1165867 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) (= lambda!237953 lambda!237946))))

(declare-fun bs!1165868 () Bool)

(assert (= bs!1165868 (and b!4830510 b!4830488)))

(assert (=> bs!1165868 (= lambda!237953 lambda!237948)))

(declare-fun bs!1165869 () Bool)

(assert (= bs!1165869 (and b!4830510 b!4830477)))

(assert (=> bs!1165869 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (toList!7548 lt!1976361)) (= lambda!237953 lambda!237944))))

(declare-fun bs!1165870 () Bool)

(assert (= bs!1165870 (and b!4830510 b!4830476)))

(assert (=> bs!1165870 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (t!362678 (toList!7548 lt!1976361))) (= lambda!237953 lambda!237942))))

(declare-fun bs!1165871 () Bool)

(assert (= bs!1165871 (and b!4830510 b!4830492)))

(assert (=> bs!1165871 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (Cons!55058 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))) (= lambda!237953 lambda!237947))))

(declare-fun bs!1165872 () Bool)

(assert (= bs!1165872 (and b!4830510 b!4830439)))

(assert (=> bs!1165872 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (toList!7548 lt!1976361)) (= lambda!237953 lambda!237927))))

(declare-fun bs!1165873 () Bool)

(assert (= bs!1165873 (and b!4830510 b!4830481)))

(assert (=> bs!1165873 (= (= (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) (Cons!55058 (h!61492 (toList!7548 lt!1976361)) (t!362678 (toList!7548 lt!1976361)))) (= lambda!237953 lambda!237943))))

(assert (=> b!4830510 true))

(declare-fun bs!1165874 () Bool)

(declare-fun b!4830511 () Bool)

(assert (= bs!1165874 (and b!4830511 b!4830440)))

(declare-fun lambda!237954 () Int)

(assert (=> bs!1165874 (= lambda!237954 lambda!237928)))

(declare-fun bs!1165875 () Bool)

(assert (= bs!1165875 (and b!4830511 b!4830479)))

(assert (=> bs!1165875 (= lambda!237954 lambda!237945)))

(declare-fun bs!1165876 () Bool)

(assert (= bs!1165876 (and b!4830511 b!4830490)))

(assert (=> bs!1165876 (= lambda!237954 lambda!237949)))

(declare-fun d!1548385 () Bool)

(declare-fun e!3018469 () Bool)

(assert (=> d!1548385 e!3018469))

(declare-fun res!2057333 () Bool)

(assert (=> d!1548385 (=> (not res!2057333) (not e!3018469))))

(declare-fun lt!1976684 () List!55186)

(assert (=> d!1548385 (= res!2057333 (noDuplicate!973 lt!1976684))))

(assert (=> d!1548385 (= lt!1976684 (getKeysList!1171 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))

(assert (=> d!1548385 (= (keys!20276 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) lt!1976684)))

(declare-fun b!4830509 () Bool)

(declare-fun res!2057334 () Bool)

(assert (=> b!4830509 (=> (not res!2057334) (not e!3018469))))

(assert (=> b!4830509 (= res!2057334 (= (length!802 lt!1976684) (length!803 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))))

(declare-fun res!2057335 () Bool)

(assert (=> b!4830510 (=> (not res!2057335) (not e!3018469))))

(assert (=> b!4830510 (= res!2057335 (forall!12673 lt!1976684 lambda!237953))))

(assert (=> b!4830511 (= e!3018469 (= (content!9832 lt!1976684) (content!9832 (map!12611 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) lambda!237954))))))

(assert (= (and d!1548385 res!2057333) b!4830509))

(assert (= (and b!4830509 res!2057334) b!4830510))

(assert (= (and b!4830510 res!2057335) b!4830511))

(declare-fun m!5823406 () Bool)

(assert (=> d!1548385 m!5823406))

(assert (=> d!1548385 m!5823134))

(declare-fun m!5823408 () Bool)

(assert (=> b!4830509 m!5823408))

(assert (=> b!4830509 m!5823372))

(declare-fun m!5823410 () Bool)

(assert (=> b!4830510 m!5823410))

(declare-fun m!5823412 () Bool)

(assert (=> b!4830511 m!5823412))

(declare-fun m!5823414 () Bool)

(assert (=> b!4830511 m!5823414))

(assert (=> b!4830511 m!5823414))

(declare-fun m!5823416 () Bool)

(assert (=> b!4830511 m!5823416))

(assert (=> b!4830353 d!1548385))

(declare-fun d!1548387 () Bool)

(declare-fun res!2057340 () Bool)

(declare-fun e!3018474 () Bool)

(assert (=> d!1548387 (=> res!2057340 e!3018474)))

(assert (=> d!1548387 (= res!2057340 (and (is-Cons!55058 (toList!7548 lt!1976361)) (= (_1!32465 (h!61492 (toList!7548 lt!1976361))) key!5594)))))

(assert (=> d!1548387 (= (containsKey!4429 (toList!7548 lt!1976361) key!5594) e!3018474)))

(declare-fun b!4830516 () Bool)

(declare-fun e!3018475 () Bool)

(assert (=> b!4830516 (= e!3018474 e!3018475)))

(declare-fun res!2057341 () Bool)

(assert (=> b!4830516 (=> (not res!2057341) (not e!3018475))))

(assert (=> b!4830516 (= res!2057341 (is-Cons!55058 (toList!7548 lt!1976361)))))

(declare-fun b!4830517 () Bool)

(assert (=> b!4830517 (= e!3018475 (containsKey!4429 (t!362678 (toList!7548 lt!1976361)) key!5594))))

(assert (= (and d!1548387 (not res!2057340)) b!4830516))

(assert (= (and b!4830516 res!2057341) b!4830517))

(declare-fun m!5823418 () Bool)

(assert (=> b!4830517 m!5823418))

(assert (=> d!1548329 d!1548387))

(declare-fun d!1548389 () Bool)

(declare-fun res!2057342 () Bool)

(declare-fun e!3018476 () Bool)

(assert (=> d!1548389 (=> res!2057342 e!3018476)))

(assert (=> d!1548389 (= res!2057342 (not (is-Cons!55058 (_2!32466 (h!61493 (toList!7547 lt!1976363))))))))

(assert (=> d!1548389 (= (noDuplicateKeys!2469 (_2!32466 (h!61493 (toList!7547 lt!1976363)))) e!3018476)))

(declare-fun b!4830518 () Bool)

(declare-fun e!3018477 () Bool)

(assert (=> b!4830518 (= e!3018476 e!3018477)))

(declare-fun res!2057343 () Bool)

(assert (=> b!4830518 (=> (not res!2057343) (not e!3018477))))

(assert (=> b!4830518 (= res!2057343 (not (containsKey!4426 (t!362678 (_2!32466 (h!61493 (toList!7547 lt!1976363)))) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lt!1976363))))))))))

(declare-fun b!4830519 () Bool)

(assert (=> b!4830519 (= e!3018477 (noDuplicateKeys!2469 (t!362678 (_2!32466 (h!61493 (toList!7547 lt!1976363))))))))

(assert (= (and d!1548389 (not res!2057342)) b!4830518))

(assert (= (and b!4830518 res!2057343) b!4830519))

(declare-fun m!5823420 () Bool)

(assert (=> b!4830518 m!5823420))

(declare-fun m!5823422 () Bool)

(assert (=> b!4830519 m!5823422))

(assert (=> bs!1165803 d!1548389))

(declare-fun d!1548391 () Bool)

(declare-fun res!2057344 () Bool)

(declare-fun e!3018478 () Bool)

(assert (=> d!1548391 (=> res!2057344 e!3018478)))

(assert (=> d!1548391 (= res!2057344 (is-Nil!55058 (ite c!823033 (toList!7548 lt!1976361) (toList!7548 lt!1976493))))))

(assert (=> d!1548391 (= (forall!12671 (ite c!823033 (toList!7548 lt!1976361) (toList!7548 lt!1976493)) (ite c!823033 lambda!237871 lambda!237873)) e!3018478)))

(declare-fun b!4830520 () Bool)

(declare-fun e!3018479 () Bool)

(assert (=> b!4830520 (= e!3018478 e!3018479)))

(declare-fun res!2057345 () Bool)

(assert (=> b!4830520 (=> (not res!2057345) (not e!3018479))))

(assert (=> b!4830520 (= res!2057345 (dynLambda!22244 (ite c!823033 lambda!237871 lambda!237873) (h!61492 (ite c!823033 (toList!7548 lt!1976361) (toList!7548 lt!1976493)))))))

(declare-fun b!4830521 () Bool)

(assert (=> b!4830521 (= e!3018479 (forall!12671 (t!362678 (ite c!823033 (toList!7548 lt!1976361) (toList!7548 lt!1976493))) (ite c!823033 lambda!237871 lambda!237873)))))

(assert (= (and d!1548391 (not res!2057344)) b!4830520))

(assert (= (and b!4830520 res!2057345) b!4830521))

(declare-fun b_lambda!190541 () Bool)

(assert (=> (not b_lambda!190541) (not b!4830520)))

(declare-fun m!5823424 () Bool)

(assert (=> b!4830520 m!5823424))

(declare-fun m!5823426 () Bool)

(assert (=> b!4830521 m!5823426))

(assert (=> bm!336622 d!1548391))

(declare-fun d!1548393 () Bool)

(assert (=> d!1548393 (isDefined!10637 (getValueByKey!2649 (toList!7548 lt!1976361) key!5594))))

(declare-fun lt!1976687 () Unit!143681)

(declare-fun choose!35237 (List!55182 K!16747) Unit!143681)

(assert (=> d!1548393 (= lt!1976687 (choose!35237 (toList!7548 lt!1976361) key!5594))))

(assert (=> d!1548393 (invariantList!1825 (toList!7548 lt!1976361))))

(assert (=> d!1548393 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2434 (toList!7548 lt!1976361) key!5594) lt!1976687)))

(declare-fun bs!1165877 () Bool)

(assert (= bs!1165877 d!1548393))

(assert (=> bs!1165877 m!5823168))

(assert (=> bs!1165877 m!5823168))

(assert (=> bs!1165877 m!5823170))

(declare-fun m!5823428 () Bool)

(assert (=> bs!1165877 m!5823428))

(assert (=> bs!1165877 m!5823338))

(assert (=> b!4830367 d!1548393))

(declare-fun d!1548395 () Bool)

(declare-fun isEmpty!29683 (Option!13522) Bool)

(assert (=> d!1548395 (= (isDefined!10637 (getValueByKey!2649 (toList!7548 lt!1976361) key!5594)) (not (isEmpty!29683 (getValueByKey!2649 (toList!7548 lt!1976361) key!5594))))))

(declare-fun bs!1165878 () Bool)

(assert (= bs!1165878 d!1548395))

(assert (=> bs!1165878 m!5823168))

(declare-fun m!5823430 () Bool)

(assert (=> bs!1165878 m!5823430))

(assert (=> b!4830367 d!1548395))

(declare-fun b!4830531 () Bool)

(declare-fun e!3018484 () Option!13522)

(declare-fun e!3018485 () Option!13522)

(assert (=> b!4830531 (= e!3018484 e!3018485)))

(declare-fun c!823081 () Bool)

(assert (=> b!4830531 (= c!823081 (and (is-Cons!55058 (toList!7548 lt!1976361)) (not (= (_1!32465 (h!61492 (toList!7548 lt!1976361))) key!5594))))))

(declare-fun d!1548397 () Bool)

(declare-fun c!823080 () Bool)

(assert (=> d!1548397 (= c!823080 (and (is-Cons!55058 (toList!7548 lt!1976361)) (= (_1!32465 (h!61492 (toList!7548 lt!1976361))) key!5594)))))

(assert (=> d!1548397 (= (getValueByKey!2649 (toList!7548 lt!1976361) key!5594) e!3018484)))

(declare-fun b!4830532 () Bool)

(assert (=> b!4830532 (= e!3018485 (getValueByKey!2649 (t!362678 (toList!7548 lt!1976361)) key!5594))))

(declare-fun b!4830530 () Bool)

(assert (=> b!4830530 (= e!3018484 (Some!13521 (_2!32465 (h!61492 (toList!7548 lt!1976361)))))))

(declare-fun b!4830533 () Bool)

(assert (=> b!4830533 (= e!3018485 None!13521)))

(assert (= (and d!1548397 c!823080) b!4830530))

(assert (= (and d!1548397 (not c!823080)) b!4830531))

(assert (= (and b!4830531 c!823081) b!4830532))

(assert (= (and b!4830531 (not c!823081)) b!4830533))

(declare-fun m!5823432 () Bool)

(assert (=> b!4830532 m!5823432))

(assert (=> b!4830367 d!1548397))

(declare-fun d!1548399 () Bool)

(assert (=> d!1548399 (contains!18870 (getKeysList!1171 (toList!7548 lt!1976361)) key!5594)))

(declare-fun lt!1976690 () Unit!143681)

(declare-fun choose!35238 (List!55182 K!16747) Unit!143681)

(assert (=> d!1548399 (= lt!1976690 (choose!35238 (toList!7548 lt!1976361) key!5594))))

(assert (=> d!1548399 (invariantList!1825 (toList!7548 lt!1976361))))

(assert (=> d!1548399 (= (lemmaInListThenGetKeysListContains!1166 (toList!7548 lt!1976361) key!5594) lt!1976690)))

(declare-fun bs!1165879 () Bool)

(assert (= bs!1165879 d!1548399))

(assert (=> bs!1165879 m!5823182))

(assert (=> bs!1165879 m!5823182))

(declare-fun m!5823434 () Bool)

(assert (=> bs!1165879 m!5823434))

(declare-fun m!5823436 () Bool)

(assert (=> bs!1165879 m!5823436))

(assert (=> bs!1165879 m!5823338))

(assert (=> b!4830367 d!1548399))

(declare-fun d!1548401 () Bool)

(declare-fun res!2057350 () Bool)

(declare-fun e!3018490 () Bool)

(assert (=> d!1548401 (=> res!2057350 e!3018490)))

(assert (=> d!1548401 (= res!2057350 (or (is-Nil!55059 (toList!7547 lm!2325)) (is-Nil!55059 (t!362679 (toList!7547 lm!2325)))))))

(assert (=> d!1548401 (= (isStrictlySorted!1000 (toList!7547 lm!2325)) e!3018490)))

(declare-fun b!4830538 () Bool)

(declare-fun e!3018491 () Bool)

(assert (=> b!4830538 (= e!3018490 e!3018491)))

(declare-fun res!2057351 () Bool)

(assert (=> b!4830538 (=> (not res!2057351) (not e!3018491))))

(assert (=> b!4830538 (= res!2057351 (bvslt (_1!32466 (h!61493 (toList!7547 lm!2325))) (_1!32466 (h!61493 (t!362679 (toList!7547 lm!2325))))))))

(declare-fun b!4830539 () Bool)

(assert (=> b!4830539 (= e!3018491 (isStrictlySorted!1000 (t!362679 (toList!7547 lm!2325))))))

(assert (= (and d!1548401 (not res!2057350)) b!4830538))

(assert (= (and b!4830538 res!2057351) b!4830539))

(declare-fun m!5823438 () Bool)

(assert (=> b!4830539 m!5823438))

(assert (=> d!1548333 d!1548401))

(assert (=> b!4830346 d!1548383))

(assert (=> b!4830346 d!1548385))

(declare-fun d!1548403 () Bool)

(declare-fun noDuplicatedKeys!491 (List!55182) Bool)

(assert (=> d!1548403 (= (invariantList!1825 (toList!7548 lt!1976487)) (noDuplicatedKeys!491 (toList!7548 lt!1976487)))))

(declare-fun bs!1165880 () Bool)

(assert (= bs!1165880 d!1548403))

(declare-fun m!5823440 () Bool)

(assert (=> bs!1165880 m!5823440))

(assert (=> b!4830321 d!1548403))

(assert (=> d!1548277 d!1548381))

(assert (=> d!1548277 d!1548287))

(assert (=> d!1548277 d!1548289))

(assert (=> d!1548277 d!1548315))

(declare-fun e!3018494 () Bool)

(declare-fun d!1548405 () Bool)

(assert (=> d!1548405 (= (contains!18867 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361) key!5594) e!3018494)))

(declare-fun res!2057354 () Bool)

(assert (=> d!1548405 (=> res!2057354 e!3018494)))

(assert (=> d!1548405 (= res!2057354 (containsKey!4426 (_2!32466 (h!61493 (toList!7547 lm!2325))) key!5594))))

(assert (=> d!1548405 true))

(declare-fun _$29!844 () Unit!143681)

(assert (=> d!1548405 (= (choose!35231 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361 key!5594) _$29!844)))

(declare-fun b!4830542 () Bool)

(assert (=> b!4830542 (= e!3018494 (contains!18867 lt!1976361 key!5594))))

(assert (= (and d!1548405 (not res!2057354)) b!4830542))

(assert (=> d!1548405 m!5822942))

(assert (=> d!1548405 m!5822942))

(assert (=> d!1548405 m!5822944))

(assert (=> d!1548405 m!5822946))

(assert (=> b!4830542 m!5822928))

(assert (=> d!1548277 d!1548405))

(declare-fun d!1548407 () Bool)

(declare-fun res!2057355 () Bool)

(declare-fun e!3018495 () Bool)

(assert (=> d!1548407 (=> res!2057355 e!3018495)))

(assert (=> d!1548407 (= res!2057355 (and (is-Cons!55058 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (= (_1!32465 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) key!5594)))))

(assert (=> d!1548407 (= (containsKey!4429 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594) e!3018495)))

(declare-fun b!4830543 () Bool)

(declare-fun e!3018496 () Bool)

(assert (=> b!4830543 (= e!3018495 e!3018496)))

(declare-fun res!2057356 () Bool)

(assert (=> b!4830543 (=> (not res!2057356) (not e!3018496))))

(assert (=> b!4830543 (= res!2057356 (is-Cons!55058 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))

(declare-fun b!4830544 () Bool)

(assert (=> b!4830544 (= e!3018496 (containsKey!4429 (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) key!5594))))

(assert (= (and d!1548407 (not res!2057355)) b!4830543))

(assert (= (and b!4830543 res!2057356) b!4830544))

(declare-fun m!5823442 () Bool)

(assert (=> b!4830544 m!5823442))

(assert (=> b!4830348 d!1548407))

(declare-fun d!1548409 () Bool)

(assert (=> d!1548409 (containsKey!4429 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594)))

(declare-fun lt!1976693 () Unit!143681)

(declare-fun choose!35239 (List!55182 K!16747) Unit!143681)

(assert (=> d!1548409 (= lt!1976693 (choose!35239 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(assert (=> d!1548409 (invariantList!1825 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))

(assert (=> d!1548409 (= (lemmaInGetKeysListThenContainsKey!1171 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594) lt!1976693)))

(declare-fun bs!1165881 () Bool)

(assert (= bs!1165881 d!1548409))

(assert (=> bs!1165881 m!5823126))

(declare-fun m!5823444 () Bool)

(assert (=> bs!1165881 m!5823444))

(assert (=> bs!1165881 m!5823364))

(assert (=> b!4830348 d!1548409))

(declare-fun d!1548411 () Bool)

(assert (=> d!1548411 (= (isDefined!10637 (getValueByKey!2649 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594)) (not (isEmpty!29683 (getValueByKey!2649 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))))

(declare-fun bs!1165882 () Bool)

(assert (= bs!1165882 d!1548411))

(assert (=> bs!1165882 m!5823120))

(declare-fun m!5823446 () Bool)

(assert (=> bs!1165882 m!5823446))

(assert (=> b!4830345 d!1548411))

(declare-fun b!4830546 () Bool)

(declare-fun e!3018497 () Option!13522)

(declare-fun e!3018498 () Option!13522)

(assert (=> b!4830546 (= e!3018497 e!3018498)))

(declare-fun c!823083 () Bool)

(assert (=> b!4830546 (= c!823083 (and (is-Cons!55058 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (not (= (_1!32465 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) key!5594))))))

(declare-fun c!823082 () Bool)

(declare-fun d!1548413 () Bool)

(assert (=> d!1548413 (= c!823082 (and (is-Cons!55058 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) (= (_1!32465 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))) key!5594)))))

(assert (=> d!1548413 (= (getValueByKey!2649 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594) e!3018497)))

(declare-fun b!4830547 () Bool)

(assert (=> b!4830547 (= e!3018498 (getValueByKey!2649 (t!362678 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) key!5594))))

(declare-fun b!4830545 () Bool)

(assert (=> b!4830545 (= e!3018497 (Some!13521 (_2!32465 (h!61492 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))))))))

(declare-fun b!4830548 () Bool)

(assert (=> b!4830548 (= e!3018498 None!13521)))

(assert (= (and d!1548413 c!823082) b!4830545))

(assert (= (and d!1548413 (not c!823082)) b!4830546))

(assert (= (and b!4830546 c!823083) b!4830547))

(assert (= (and b!4830546 (not c!823083)) b!4830548))

(declare-fun m!5823448 () Bool)

(assert (=> b!4830547 m!5823448))

(assert (=> b!4830345 d!1548413))

(declare-fun d!1548415 () Bool)

(assert (=> d!1548415 (isDefined!10636 (getValueByKey!2648 (toList!7547 lm!2325) lt!1976362))))

(declare-fun lt!1976694 () Unit!143681)

(assert (=> d!1548415 (= lt!1976694 (choose!35235 (toList!7547 lm!2325) lt!1976362))))

(declare-fun e!3018499 () Bool)

(assert (=> d!1548415 e!3018499))

(declare-fun res!2057357 () Bool)

(assert (=> d!1548415 (=> (not res!2057357) (not e!3018499))))

(assert (=> d!1548415 (= res!2057357 (isStrictlySorted!1000 (toList!7547 lm!2325)))))

(assert (=> d!1548415 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2433 (toList!7547 lm!2325) lt!1976362) lt!1976694)))

(declare-fun b!4830549 () Bool)

(assert (=> b!4830549 (= e!3018499 (containsKey!4428 (toList!7547 lm!2325) lt!1976362))))

(assert (= (and d!1548415 res!2057357) b!4830549))

(assert (=> d!1548415 m!5823158))

(assert (=> d!1548415 m!5823158))

(assert (=> d!1548415 m!5823160))

(declare-fun m!5823450 () Bool)

(assert (=> d!1548415 m!5823450))

(assert (=> d!1548415 m!5823190))

(assert (=> b!4830549 m!5823154))

(assert (=> b!4830360 d!1548415))

(declare-fun d!1548417 () Bool)

(assert (=> d!1548417 (= (isDefined!10636 (getValueByKey!2648 (toList!7547 lm!2325) lt!1976362)) (not (isEmpty!29682 (getValueByKey!2648 (toList!7547 lm!2325) lt!1976362))))))

(declare-fun bs!1165883 () Bool)

(assert (= bs!1165883 d!1548417))

(assert (=> bs!1165883 m!5823158))

(declare-fun m!5823452 () Bool)

(assert (=> bs!1165883 m!5823452))

(assert (=> b!4830360 d!1548417))

(declare-fun b!4830552 () Bool)

(declare-fun e!3018501 () Option!13521)

(assert (=> b!4830552 (= e!3018501 (getValueByKey!2648 (t!362679 (toList!7547 lm!2325)) lt!1976362))))

(declare-fun d!1548419 () Bool)

(declare-fun c!823084 () Bool)

(assert (=> d!1548419 (= c!823084 (and (is-Cons!55059 (toList!7547 lm!2325)) (= (_1!32466 (h!61493 (toList!7547 lm!2325))) lt!1976362)))))

(declare-fun e!3018500 () Option!13521)

(assert (=> d!1548419 (= (getValueByKey!2648 (toList!7547 lm!2325) lt!1976362) e!3018500)))

(declare-fun b!4830550 () Bool)

(assert (=> b!4830550 (= e!3018500 (Some!13520 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(declare-fun b!4830553 () Bool)

(assert (=> b!4830553 (= e!3018501 None!13520)))

(declare-fun b!4830551 () Bool)

(assert (=> b!4830551 (= e!3018500 e!3018501)))

(declare-fun c!823085 () Bool)

(assert (=> b!4830551 (= c!823085 (and (is-Cons!55059 (toList!7547 lm!2325)) (not (= (_1!32466 (h!61493 (toList!7547 lm!2325))) lt!1976362))))))

(assert (= (and d!1548419 c!823084) b!4830550))

(assert (= (and d!1548419 (not c!823084)) b!4830551))

(assert (= (and b!4830551 c!823085) b!4830552))

(assert (= (and b!4830551 (not c!823085)) b!4830553))

(declare-fun m!5823454 () Bool)

(assert (=> b!4830552 m!5823454))

(assert (=> b!4830360 d!1548419))

(declare-fun d!1548421 () Bool)

(declare-fun res!2057358 () Bool)

(declare-fun e!3018502 () Bool)

(assert (=> d!1548421 (=> res!2057358 e!3018502)))

(assert (=> d!1548421 (= res!2057358 (is-Nil!55059 (toList!7547 lm!2325)))))

(assert (=> d!1548421 (= (forall!12669 (toList!7547 lm!2325) lambda!237883) e!3018502)))

(declare-fun b!4830554 () Bool)

(declare-fun e!3018503 () Bool)

(assert (=> b!4830554 (= e!3018502 e!3018503)))

(declare-fun res!2057359 () Bool)

(assert (=> b!4830554 (=> (not res!2057359) (not e!3018503))))

(assert (=> b!4830554 (= res!2057359 (dynLambda!22242 lambda!237883 (h!61493 (toList!7547 lm!2325))))))

(declare-fun b!4830555 () Bool)

(assert (=> b!4830555 (= e!3018503 (forall!12669 (t!362679 (toList!7547 lm!2325)) lambda!237883))))

(assert (= (and d!1548421 (not res!2057358)) b!4830554))

(assert (= (and b!4830554 res!2057359) b!4830555))

(declare-fun b_lambda!190543 () Bool)

(assert (=> (not b_lambda!190543) (not b!4830554)))

(declare-fun m!5823456 () Bool)

(assert (=> b!4830554 m!5823456))

(declare-fun m!5823458 () Bool)

(assert (=> b!4830555 m!5823458))

(assert (=> d!1548327 d!1548421))

(assert (=> d!1548315 d!1548407))

(declare-fun d!1548423 () Bool)

(declare-fun res!2057360 () Bool)

(declare-fun e!3018504 () Bool)

(assert (=> d!1548423 (=> res!2057360 e!3018504)))

(assert (=> d!1548423 (= res!2057360 (is-Nil!55059 (toList!7547 lt!1976363)))))

(assert (=> d!1548423 (= (forall!12669 (toList!7547 lt!1976363) lambda!237884) e!3018504)))

(declare-fun b!4830556 () Bool)

(declare-fun e!3018505 () Bool)

(assert (=> b!4830556 (= e!3018504 e!3018505)))

(declare-fun res!2057361 () Bool)

(assert (=> b!4830556 (=> (not res!2057361) (not e!3018505))))

(assert (=> b!4830556 (= res!2057361 (dynLambda!22242 lambda!237884 (h!61493 (toList!7547 lt!1976363))))))

(declare-fun b!4830557 () Bool)

(assert (=> b!4830557 (= e!3018505 (forall!12669 (t!362679 (toList!7547 lt!1976363)) lambda!237884))))

(assert (= (and d!1548423 (not res!2057360)) b!4830556))

(assert (= (and b!4830556 res!2057361) b!4830557))

(declare-fun b_lambda!190545 () Bool)

(assert (=> (not b_lambda!190545) (not b!4830556)))

(declare-fun m!5823460 () Bool)

(assert (=> b!4830556 m!5823460))

(declare-fun m!5823462 () Bool)

(assert (=> b!4830557 m!5823462))

(assert (=> d!1548335 d!1548423))

(declare-fun d!1548425 () Bool)

(assert (=> d!1548425 (= (tail!9431 (toList!7547 lm!2325)) (t!362679 (toList!7547 lm!2325)))))

(assert (=> d!1548283 d!1548425))

(declare-fun d!1548427 () Bool)

(assert (=> d!1548427 (= (invariantList!1825 (toList!7548 lt!1976532)) (noDuplicatedKeys!491 (toList!7548 lt!1976532)))))

(declare-fun bs!1165884 () Bool)

(assert (= bs!1165884 d!1548427))

(declare-fun m!5823464 () Bool)

(assert (=> bs!1165884 m!5823464))

(assert (=> d!1548317 d!1548427))

(declare-fun d!1548429 () Bool)

(declare-fun res!2057362 () Bool)

(declare-fun e!3018506 () Bool)

(assert (=> d!1548429 (=> res!2057362 e!3018506)))

(assert (=> d!1548429 (= res!2057362 (is-Nil!55059 (t!362679 (toList!7547 lm!2325))))))

(assert (=> d!1548429 (= (forall!12669 (t!362679 (toList!7547 lm!2325)) lambda!237877) e!3018506)))

(declare-fun b!4830558 () Bool)

(declare-fun e!3018507 () Bool)

(assert (=> b!4830558 (= e!3018506 e!3018507)))

(declare-fun res!2057363 () Bool)

(assert (=> b!4830558 (=> (not res!2057363) (not e!3018507))))

(assert (=> b!4830558 (= res!2057363 (dynLambda!22242 lambda!237877 (h!61493 (t!362679 (toList!7547 lm!2325)))))))

(declare-fun b!4830559 () Bool)

(assert (=> b!4830559 (= e!3018507 (forall!12669 (t!362679 (t!362679 (toList!7547 lm!2325))) lambda!237877))))

(assert (= (and d!1548429 (not res!2057362)) b!4830558))

(assert (= (and b!4830558 res!2057363) b!4830559))

(declare-fun b_lambda!190547 () Bool)

(assert (=> (not b_lambda!190547) (not b!4830558)))

(declare-fun m!5823466 () Bool)

(assert (=> b!4830558 m!5823466))

(declare-fun m!5823468 () Bool)

(assert (=> b!4830559 m!5823468))

(assert (=> d!1548317 d!1548429))

(declare-fun d!1548431 () Bool)

(declare-fun res!2057368 () Bool)

(declare-fun e!3018512 () Bool)

(assert (=> d!1548431 (=> res!2057368 e!3018512)))

(assert (=> d!1548431 (= res!2057368 (and (is-Cons!55059 (toList!7547 lm!2325)) (= (_1!32466 (h!61493 (toList!7547 lm!2325))) lt!1976362)))))

(assert (=> d!1548431 (= (containsKey!4428 (toList!7547 lm!2325) lt!1976362) e!3018512)))

(declare-fun b!4830564 () Bool)

(declare-fun e!3018513 () Bool)

(assert (=> b!4830564 (= e!3018512 e!3018513)))

(declare-fun res!2057369 () Bool)

(assert (=> b!4830564 (=> (not res!2057369) (not e!3018513))))

(assert (=> b!4830564 (= res!2057369 (and (or (not (is-Cons!55059 (toList!7547 lm!2325))) (bvsle (_1!32466 (h!61493 (toList!7547 lm!2325))) lt!1976362)) (is-Cons!55059 (toList!7547 lm!2325)) (bvslt (_1!32466 (h!61493 (toList!7547 lm!2325))) lt!1976362)))))

(declare-fun b!4830565 () Bool)

(assert (=> b!4830565 (= e!3018513 (containsKey!4428 (t!362679 (toList!7547 lm!2325)) lt!1976362))))

(assert (= (and d!1548431 (not res!2057368)) b!4830564))

(assert (= (and b!4830564 res!2057369) b!4830565))

(declare-fun m!5823470 () Bool)

(assert (=> b!4830565 m!5823470))

(assert (=> d!1548323 d!1548431))

(declare-fun d!1548433 () Bool)

(declare-fun choose!35240 (Hashable!7303 K!16747) (_ BitVec 64))

(assert (=> d!1548433 (= (hash!5471 hashF!1543 key!5594) (choose!35240 hashF!1543 key!5594))))

(declare-fun bs!1165885 () Bool)

(assert (= bs!1165885 d!1548433))

(declare-fun m!5823472 () Bool)

(assert (=> bs!1165885 m!5823472))

(assert (=> d!1548325 d!1548433))

(assert (=> b!4830372 d!1548361))

(declare-fun d!1548435 () Bool)

(declare-fun res!2057370 () Bool)

(declare-fun e!3018514 () Bool)

(assert (=> d!1548435 (=> res!2057370 e!3018514)))

(assert (=> d!1548435 (= res!2057370 (is-Nil!55059 (t!362679 (toList!7547 lt!1976363))))))

(assert (=> d!1548435 (= (forall!12669 (t!362679 (toList!7547 lt!1976363)) lambda!237833) e!3018514)))

(declare-fun b!4830566 () Bool)

(declare-fun e!3018515 () Bool)

(assert (=> b!4830566 (= e!3018514 e!3018515)))

(declare-fun res!2057371 () Bool)

(assert (=> b!4830566 (=> (not res!2057371) (not e!3018515))))

(assert (=> b!4830566 (= res!2057371 (dynLambda!22242 lambda!237833 (h!61493 (t!362679 (toList!7547 lt!1976363)))))))

(declare-fun b!4830567 () Bool)

(assert (=> b!4830567 (= e!3018515 (forall!12669 (t!362679 (t!362679 (toList!7547 lt!1976363))) lambda!237833))))

(assert (= (and d!1548435 (not res!2057370)) b!4830566))

(assert (= (and b!4830566 res!2057371) b!4830567))

(declare-fun b_lambda!190549 () Bool)

(assert (=> (not b_lambda!190549) (not b!4830566)))

(declare-fun m!5823474 () Bool)

(assert (=> b!4830566 m!5823474))

(declare-fun m!5823476 () Bool)

(assert (=> b!4830567 m!5823476))

(assert (=> b!4830243 d!1548435))

(assert (=> bs!1165802 d!1548381))

(assert (=> b!4830352 d!1548385))

(declare-fun bs!1165886 () Bool)

(declare-fun b!4830568 () Bool)

(assert (= bs!1165886 (and b!4830568 b!4830320)))

(declare-fun lambda!237955 () Int)

(assert (=> bs!1165886 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976361) (= lambda!237955 lambda!237871))))

(declare-fun bs!1165887 () Bool)

(assert (= bs!1165887 (and b!4830568 b!4830443)))

(assert (=> bs!1165887 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237955 lambda!237929))))

(declare-fun bs!1165888 () Bool)

(assert (= bs!1165888 (and b!4830568 b!4830447)))

(assert (=> bs!1165888 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976632) (= lambda!237955 lambda!237931))))

(declare-fun bs!1165889 () Bool)

(assert (= bs!1165889 (and b!4830568 d!1548375)))

(assert (=> bs!1165889 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976361) (= lambda!237955 lambda!237952))))

(declare-fun bs!1165890 () Bool)

(assert (= bs!1165890 (and b!4830568 b!4830324)))

(assert (=> bs!1165890 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976491) (= lambda!237955 lambda!237873))))

(declare-fun bs!1165891 () Bool)

(assert (= bs!1165891 (and b!4830568 d!1548289)))

(assert (=> bs!1165891 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976487) (= lambda!237955 lambda!237874))))

(assert (=> bs!1165888 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237955 lambda!237930))))

(declare-fun bs!1165892 () Bool)

(assert (= bs!1165892 (and b!4830568 d!1548363)))

(assert (=> bs!1165892 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976628) (= lambda!237955 lambda!237932))))

(assert (=> bs!1165890 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976361) (= lambda!237955 lambda!237872))))

(assert (=> b!4830568 true))

(declare-fun bs!1165893 () Bool)

(declare-fun b!4830572 () Bool)

(assert (= bs!1165893 (and b!4830572 b!4830320)))

(declare-fun lambda!237956 () Int)

(assert (=> bs!1165893 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976361) (= lambda!237956 lambda!237871))))

(declare-fun bs!1165894 () Bool)

(assert (= bs!1165894 (and b!4830572 b!4830568)))

(assert (=> bs!1165894 (= lambda!237956 lambda!237955)))

(declare-fun bs!1165895 () Bool)

(assert (= bs!1165895 (and b!4830572 b!4830443)))

(assert (=> bs!1165895 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237956 lambda!237929))))

(declare-fun bs!1165896 () Bool)

(assert (= bs!1165896 (and b!4830572 b!4830447)))

(assert (=> bs!1165896 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976632) (= lambda!237956 lambda!237931))))

(declare-fun bs!1165897 () Bool)

(assert (= bs!1165897 (and b!4830572 d!1548375)))

(assert (=> bs!1165897 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976361) (= lambda!237956 lambda!237952))))

(declare-fun bs!1165898 () Bool)

(assert (= bs!1165898 (and b!4830572 b!4830324)))

(assert (=> bs!1165898 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976491) (= lambda!237956 lambda!237873))))

(declare-fun bs!1165899 () Bool)

(assert (= bs!1165899 (and b!4830572 d!1548289)))

(assert (=> bs!1165899 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976487) (= lambda!237956 lambda!237874))))

(assert (=> bs!1165896 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237956 lambda!237930))))

(declare-fun bs!1165900 () Bool)

(assert (= bs!1165900 (and b!4830572 d!1548363)))

(assert (=> bs!1165900 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976628) (= lambda!237956 lambda!237932))))

(assert (=> bs!1165898 (= (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976361) (= lambda!237956 lambda!237872))))

(assert (=> b!4830572 true))

(declare-fun lt!1976701 () ListMap!6919)

(declare-fun lambda!237957 () Int)

(assert (=> bs!1165893 (= (= lt!1976701 lt!1976361) (= lambda!237957 lambda!237871))))

(assert (=> bs!1165894 (= (= lt!1976701 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (= lambda!237957 lambda!237955))))

(assert (=> bs!1165895 (= (= lt!1976701 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237957 lambda!237929))))

(assert (=> bs!1165896 (= (= lt!1976701 lt!1976632) (= lambda!237957 lambda!237931))))

(assert (=> bs!1165897 (= (= lt!1976701 lt!1976361) (= lambda!237957 lambda!237952))))

(assert (=> b!4830572 (= (= lt!1976701 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (= lambda!237957 lambda!237956))))

(assert (=> bs!1165898 (= (= lt!1976701 lt!1976491) (= lambda!237957 lambda!237873))))

(assert (=> bs!1165899 (= (= lt!1976701 lt!1976487) (= lambda!237957 lambda!237874))))

(assert (=> bs!1165896 (= (= lt!1976701 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237957 lambda!237930))))

(assert (=> bs!1165900 (= (= lt!1976701 lt!1976628) (= lambda!237957 lambda!237932))))

(assert (=> bs!1165898 (= (= lt!1976701 lt!1976361) (= lambda!237957 lambda!237872))))

(assert (=> b!4830572 true))

(declare-fun bs!1165901 () Bool)

(declare-fun d!1548437 () Bool)

(assert (= bs!1165901 (and d!1548437 b!4830320)))

(declare-fun lt!1976697 () ListMap!6919)

(declare-fun lambda!237958 () Int)

(assert (=> bs!1165901 (= (= lt!1976697 lt!1976361) (= lambda!237958 lambda!237871))))

(declare-fun bs!1165902 () Bool)

(assert (= bs!1165902 (and d!1548437 b!4830568)))

(assert (=> bs!1165902 (= (= lt!1976697 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (= lambda!237958 lambda!237955))))

(declare-fun bs!1165903 () Bool)

(assert (= bs!1165903 (and d!1548437 b!4830443)))

(assert (=> bs!1165903 (= (= lt!1976697 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237958 lambda!237929))))

(declare-fun bs!1165904 () Bool)

(assert (= bs!1165904 (and d!1548437 b!4830447)))

(assert (=> bs!1165904 (= (= lt!1976697 lt!1976632) (= lambda!237958 lambda!237931))))

(declare-fun bs!1165905 () Bool)

(assert (= bs!1165905 (and d!1548437 d!1548375)))

(assert (=> bs!1165905 (= (= lt!1976697 lt!1976361) (= lambda!237958 lambda!237952))))

(declare-fun bs!1165906 () Bool)

(assert (= bs!1165906 (and d!1548437 b!4830572)))

(assert (=> bs!1165906 (= (= lt!1976697 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (= lambda!237958 lambda!237956))))

(declare-fun bs!1165907 () Bool)

(assert (= bs!1165907 (and d!1548437 b!4830324)))

(assert (=> bs!1165907 (= (= lt!1976697 lt!1976491) (= lambda!237958 lambda!237873))))

(declare-fun bs!1165908 () Bool)

(assert (= bs!1165908 (and d!1548437 d!1548289)))

(assert (=> bs!1165908 (= (= lt!1976697 lt!1976487) (= lambda!237958 lambda!237874))))

(assert (=> bs!1165904 (= (= lt!1976697 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237958 lambda!237930))))

(assert (=> bs!1165906 (= (= lt!1976697 lt!1976701) (= lambda!237958 lambda!237957))))

(declare-fun bs!1165909 () Bool)

(assert (= bs!1165909 (and d!1548437 d!1548363)))

(assert (=> bs!1165909 (= (= lt!1976697 lt!1976628) (= lambda!237958 lambda!237932))))

(assert (=> bs!1165907 (= (= lt!1976697 lt!1976361) (= lambda!237958 lambda!237872))))

(assert (=> d!1548437 true))

(declare-fun b!4830569 () Bool)

(declare-fun e!3018516 () Bool)

(assert (=> b!4830569 (= e!3018516 (invariantList!1825 (toList!7548 lt!1976697)))))

(declare-fun b!4830570 () Bool)

(declare-fun res!2057374 () Bool)

(assert (=> b!4830570 (=> (not res!2057374) (not e!3018516))))

(assert (=> b!4830570 (= res!2057374 (forall!12671 (toList!7548 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) lambda!237958))))

(declare-fun b!4830571 () Bool)

(declare-fun e!3018517 () Bool)

(declare-fun call!336646 () Bool)

(assert (=> b!4830571 (= e!3018517 call!336646)))

(declare-fun c!823086 () Bool)

(declare-fun bm!336641 () Bool)

(declare-fun lt!1976703 () ListMap!6919)

(declare-fun call!336647 () Bool)

(assert (=> bm!336641 (= call!336647 (forall!12671 (ite c!823086 (toList!7548 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (toList!7548 lt!1976703)) (ite c!823086 lambda!237955 lambda!237957)))))

(declare-fun bm!336642 () Bool)

(assert (=> bm!336642 (= call!336646 (forall!12671 (toList!7548 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (ite c!823086 lambda!237955 lambda!237957)))))

(declare-fun bm!336643 () Bool)

(declare-fun call!336648 () Unit!143681)

(assert (=> bm!336643 (= call!336648 (lemmaContainsAllItsOwnKeys!1003 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun e!3018518 () ListMap!6919)

(assert (=> b!4830572 (= e!3018518 lt!1976701)))

(assert (=> b!4830572 (= lt!1976703 (+!2548 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> b!4830572 (= lt!1976701 (addToMapMapFromBucket!1826 (t!362678 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (+!2548 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))))

(declare-fun lt!1976708 () Unit!143681)

(assert (=> b!4830572 (= lt!1976708 call!336648)))

(assert (=> b!4830572 (forall!12671 (toList!7548 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) lambda!237956)))

(declare-fun lt!1976699 () Unit!143681)

(assert (=> b!4830572 (= lt!1976699 lt!1976708)))

(assert (=> b!4830572 (forall!12671 (toList!7548 lt!1976703) lambda!237957)))

(declare-fun lt!1976698 () Unit!143681)

(declare-fun Unit!143738 () Unit!143681)

(assert (=> b!4830572 (= lt!1976698 Unit!143738)))

(assert (=> b!4830572 (forall!12671 (t!362678 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lambda!237957)))

(declare-fun lt!1976710 () Unit!143681)

(declare-fun Unit!143739 () Unit!143681)

(assert (=> b!4830572 (= lt!1976710 Unit!143739)))

(declare-fun lt!1976695 () Unit!143681)

(declare-fun Unit!143740 () Unit!143681)

(assert (=> b!4830572 (= lt!1976695 Unit!143740)))

(declare-fun lt!1976711 () Unit!143681)

(assert (=> b!4830572 (= lt!1976711 (forallContained!4408 (toList!7548 lt!1976703) lambda!237957 (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> b!4830572 (contains!18867 lt!1976703 (_1!32465 (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun lt!1976713 () Unit!143681)

(declare-fun Unit!143741 () Unit!143681)

(assert (=> b!4830572 (= lt!1976713 Unit!143741)))

(assert (=> b!4830572 (contains!18867 lt!1976701 (_1!32465 (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun lt!1976705 () Unit!143681)

(declare-fun Unit!143742 () Unit!143681)

(assert (=> b!4830572 (= lt!1976705 Unit!143742)))

(assert (=> b!4830572 (forall!12671 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) lambda!237957)))

(declare-fun lt!1976715 () Unit!143681)

(declare-fun Unit!143743 () Unit!143681)

(assert (=> b!4830572 (= lt!1976715 Unit!143743)))

(assert (=> b!4830572 call!336647))

(declare-fun lt!1976714 () Unit!143681)

(declare-fun Unit!143744 () Unit!143681)

(assert (=> b!4830572 (= lt!1976714 Unit!143744)))

(declare-fun lt!1976709 () Unit!143681)

(declare-fun Unit!143745 () Unit!143681)

(assert (=> b!4830572 (= lt!1976709 Unit!143745)))

(declare-fun lt!1976696 () Unit!143681)

(assert (=> b!4830572 (= lt!1976696 (addForallContainsKeyThenBeforeAdding!1002 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976701 (_1!32465 (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (_2!32465 (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))))

(assert (=> b!4830572 (forall!12671 (toList!7548 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) lambda!237957)))

(declare-fun lt!1976702 () Unit!143681)

(assert (=> b!4830572 (= lt!1976702 lt!1976696)))

(assert (=> b!4830572 (forall!12671 (toList!7548 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) lambda!237957)))

(declare-fun lt!1976704 () Unit!143681)

(declare-fun Unit!143746 () Unit!143681)

(assert (=> b!4830572 (= lt!1976704 Unit!143746)))

(declare-fun res!2057372 () Bool)

(assert (=> b!4830572 (= res!2057372 (forall!12671 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) lambda!237957))))

(assert (=> b!4830572 (=> (not res!2057372) (not e!3018517))))

(assert (=> b!4830572 e!3018517))

(declare-fun lt!1976700 () Unit!143681)

(declare-fun Unit!143747 () Unit!143681)

(assert (=> b!4830572 (= lt!1976700 Unit!143747)))

(assert (=> d!1548437 e!3018516))

(declare-fun res!2057373 () Bool)

(assert (=> d!1548437 (=> (not res!2057373) (not e!3018516))))

(assert (=> d!1548437 (= res!2057373 (forall!12671 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) lambda!237958))))

(assert (=> d!1548437 (= lt!1976697 e!3018518)))

(assert (=> d!1548437 (= c!823086 (is-Nil!55058 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (=> d!1548437 (noDuplicateKeys!2469 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(assert (=> d!1548437 (= (addToMapMapFromBucket!1826 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) lt!1976697)))

(assert (=> b!4830568 (= e!3018518 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun lt!1976707 () Unit!143681)

(assert (=> b!4830568 (= lt!1976707 call!336648)))

(assert (=> b!4830568 call!336647))

(declare-fun lt!1976706 () Unit!143681)

(assert (=> b!4830568 (= lt!1976706 lt!1976707)))

(assert (=> b!4830568 call!336646))

(declare-fun lt!1976712 () Unit!143681)

(declare-fun Unit!143748 () Unit!143681)

(assert (=> b!4830568 (= lt!1976712 Unit!143748)))

(assert (= (and d!1548437 c!823086) b!4830568))

(assert (= (and d!1548437 (not c!823086)) b!4830572))

(assert (= (and b!4830572 res!2057372) b!4830571))

(assert (= (or b!4830568 b!4830572) bm!336643))

(assert (= (or b!4830568 b!4830572) bm!336641))

(assert (= (or b!4830568 b!4830571) bm!336642))

(assert (= (and d!1548437 res!2057373) b!4830570))

(assert (= (and b!4830570 res!2057374) b!4830569))

(declare-fun m!5823478 () Bool)

(assert (=> bm!336642 m!5823478))

(declare-fun m!5823480 () Bool)

(assert (=> b!4830569 m!5823480))

(declare-fun m!5823482 () Bool)

(assert (=> d!1548437 m!5823482))

(assert (=> d!1548437 m!5823398))

(declare-fun m!5823484 () Bool)

(assert (=> b!4830570 m!5823484))

(declare-fun m!5823486 () Bool)

(assert (=> b!4830572 m!5823486))

(declare-fun m!5823488 () Bool)

(assert (=> b!4830572 m!5823488))

(declare-fun m!5823490 () Bool)

(assert (=> b!4830572 m!5823490))

(declare-fun m!5823492 () Bool)

(assert (=> b!4830572 m!5823492))

(declare-fun m!5823494 () Bool)

(assert (=> b!4830572 m!5823494))

(declare-fun m!5823496 () Bool)

(assert (=> b!4830572 m!5823496))

(declare-fun m!5823498 () Bool)

(assert (=> b!4830572 m!5823498))

(declare-fun m!5823500 () Bool)

(assert (=> b!4830572 m!5823500))

(assert (=> b!4830572 m!5823096))

(assert (=> b!4830572 m!5823490))

(assert (=> b!4830572 m!5823096))

(declare-fun m!5823502 () Bool)

(assert (=> b!4830572 m!5823502))

(declare-fun m!5823504 () Bool)

(assert (=> b!4830572 m!5823504))

(declare-fun m!5823506 () Bool)

(assert (=> b!4830572 m!5823506))

(assert (=> b!4830572 m!5823504))

(assert (=> b!4830572 m!5823500))

(declare-fun m!5823508 () Bool)

(assert (=> bm!336641 m!5823508))

(assert (=> bm!336643 m!5823096))

(declare-fun m!5823510 () Bool)

(assert (=> bm!336643 m!5823510))

(assert (=> b!4830324 d!1548437))

(declare-fun d!1548439 () Bool)

(declare-fun res!2057375 () Bool)

(declare-fun e!3018519 () Bool)

(assert (=> d!1548439 (=> res!2057375 e!3018519)))

(assert (=> d!1548439 (= res!2057375 (is-Nil!55058 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(assert (=> d!1548439 (= (forall!12671 (_2!32466 (h!61493 (toList!7547 lm!2325))) lambda!237873) e!3018519)))

(declare-fun b!4830573 () Bool)

(declare-fun e!3018520 () Bool)

(assert (=> b!4830573 (= e!3018519 e!3018520)))

(declare-fun res!2057376 () Bool)

(assert (=> b!4830573 (=> (not res!2057376) (not e!3018520))))

(assert (=> b!4830573 (= res!2057376 (dynLambda!22244 lambda!237873 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun b!4830574 () Bool)

(assert (=> b!4830574 (= e!3018520 (forall!12671 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) lambda!237873))))

(assert (= (and d!1548439 (not res!2057375)) b!4830573))

(assert (= (and b!4830573 res!2057376) b!4830574))

(declare-fun b_lambda!190551 () Bool)

(assert (=> (not b_lambda!190551) (not b!4830573)))

(declare-fun m!5823512 () Bool)

(assert (=> b!4830573 m!5823512))

(assert (=> b!4830574 m!5823102))

(assert (=> b!4830324 d!1548439))

(declare-fun d!1548441 () Bool)

(assert (=> d!1548441 (dynLambda!22244 lambda!237873 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(declare-fun lt!1976718 () Unit!143681)

(declare-fun choose!35242 (List!55182 Int tuple2!58342) Unit!143681)

(assert (=> d!1548441 (= lt!1976718 (choose!35242 (toList!7548 lt!1976493) lambda!237873 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun e!3018523 () Bool)

(assert (=> d!1548441 e!3018523))

(declare-fun res!2057379 () Bool)

(assert (=> d!1548441 (=> (not res!2057379) (not e!3018523))))

(assert (=> d!1548441 (= res!2057379 (forall!12671 (toList!7548 lt!1976493) lambda!237873))))

(assert (=> d!1548441 (= (forallContained!4408 (toList!7548 lt!1976493) lambda!237873 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976718)))

(declare-fun b!4830577 () Bool)

(declare-fun contains!18872 (List!55182 tuple2!58342) Bool)

(assert (=> b!4830577 (= e!3018523 (contains!18872 (toList!7548 lt!1976493) (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (= (and d!1548441 res!2057379) b!4830577))

(declare-fun b_lambda!190553 () Bool)

(assert (=> (not b_lambda!190553) (not d!1548441)))

(assert (=> d!1548441 m!5823512))

(declare-fun m!5823514 () Bool)

(assert (=> d!1548441 m!5823514))

(assert (=> d!1548441 m!5823104))

(declare-fun m!5823516 () Bool)

(assert (=> b!4830577 m!5823516))

(assert (=> b!4830324 d!1548441))

(declare-fun b!4830578 () Bool)

(declare-fun e!3018528 () Bool)

(declare-fun e!3018529 () Bool)

(assert (=> b!4830578 (= e!3018528 e!3018529)))

(declare-fun res!2057380 () Bool)

(assert (=> b!4830578 (=> (not res!2057380) (not e!3018529))))

(assert (=> b!4830578 (= res!2057380 (isDefined!10637 (getValueByKey!2649 (toList!7548 lt!1976493) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))))

(declare-fun bm!336644 () Bool)

(declare-fun call!336649 () Bool)

(declare-fun e!3018526 () List!55186)

(assert (=> bm!336644 (= call!336649 (contains!18870 e!3018526 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun c!823088 () Bool)

(declare-fun c!823089 () Bool)

(assert (=> bm!336644 (= c!823088 c!823089)))

(declare-fun b!4830579 () Bool)

(declare-fun e!3018525 () Bool)

(assert (=> b!4830579 (= e!3018525 (not (contains!18870 (keys!20276 lt!1976493) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))))

(declare-fun b!4830580 () Bool)

(declare-fun e!3018524 () Unit!143681)

(declare-fun lt!1976721 () Unit!143681)

(assert (=> b!4830580 (= e!3018524 lt!1976721)))

(declare-fun lt!1976725 () Unit!143681)

(assert (=> b!4830580 (= lt!1976725 (lemmaContainsKeyImpliesGetValueByKeyDefined!2434 (toList!7548 lt!1976493) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> b!4830580 (isDefined!10637 (getValueByKey!2649 (toList!7548 lt!1976493) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun lt!1976723 () Unit!143681)

(assert (=> b!4830580 (= lt!1976723 lt!1976725)))

(assert (=> b!4830580 (= lt!1976721 (lemmaInListThenGetKeysListContains!1166 (toList!7548 lt!1976493) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> b!4830580 call!336649))

(declare-fun b!4830581 () Bool)

(assert (=> b!4830581 false))

(declare-fun lt!1976726 () Unit!143681)

(declare-fun lt!1976720 () Unit!143681)

(assert (=> b!4830581 (= lt!1976726 lt!1976720)))

(assert (=> b!4830581 (containsKey!4429 (toList!7548 lt!1976493) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (=> b!4830581 (= lt!1976720 (lemmaInGetKeysListThenContainsKey!1171 (toList!7548 lt!1976493) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun e!3018527 () Unit!143681)

(declare-fun Unit!143750 () Unit!143681)

(assert (=> b!4830581 (= e!3018527 Unit!143750)))

(declare-fun b!4830582 () Bool)

(assert (=> b!4830582 (= e!3018524 e!3018527)))

(declare-fun c!823087 () Bool)

(assert (=> b!4830582 (= c!823087 call!336649)))

(declare-fun b!4830583 () Bool)

(declare-fun Unit!143752 () Unit!143681)

(assert (=> b!4830583 (= e!3018527 Unit!143752)))

(declare-fun b!4830584 () Bool)

(assert (=> b!4830584 (= e!3018526 (getKeysList!1171 (toList!7548 lt!1976493)))))

(declare-fun d!1548443 () Bool)

(assert (=> d!1548443 e!3018528))

(declare-fun res!2057381 () Bool)

(assert (=> d!1548443 (=> res!2057381 e!3018528)))

(assert (=> d!1548443 (= res!2057381 e!3018525)))

(declare-fun res!2057382 () Bool)

(assert (=> d!1548443 (=> (not res!2057382) (not e!3018525))))

(declare-fun lt!1976722 () Bool)

(assert (=> d!1548443 (= res!2057382 (not lt!1976722))))

(declare-fun lt!1976724 () Bool)

(assert (=> d!1548443 (= lt!1976722 lt!1976724)))

(declare-fun lt!1976719 () Unit!143681)

(assert (=> d!1548443 (= lt!1976719 e!3018524)))

(assert (=> d!1548443 (= c!823089 lt!1976724)))

(assert (=> d!1548443 (= lt!1976724 (containsKey!4429 (toList!7548 lt!1976493) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> d!1548443 (= (contains!18867 lt!1976493 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) lt!1976722)))

(declare-fun b!4830585 () Bool)

(assert (=> b!4830585 (= e!3018526 (keys!20276 lt!1976493))))

(declare-fun b!4830586 () Bool)

(assert (=> b!4830586 (= e!3018529 (contains!18870 (keys!20276 lt!1976493) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (= (and d!1548443 c!823089) b!4830580))

(assert (= (and d!1548443 (not c!823089)) b!4830582))

(assert (= (and b!4830582 c!823087) b!4830581))

(assert (= (and b!4830582 (not c!823087)) b!4830583))

(assert (= (or b!4830580 b!4830582) bm!336644))

(assert (= (and bm!336644 c!823088) b!4830584))

(assert (= (and bm!336644 (not c!823088)) b!4830585))

(assert (= (and d!1548443 res!2057382) b!4830579))

(assert (= (and d!1548443 (not res!2057381)) b!4830578))

(assert (= (and b!4830578 res!2057380) b!4830586))

(declare-fun m!5823518 () Bool)

(assert (=> b!4830585 m!5823518))

(declare-fun m!5823520 () Bool)

(assert (=> b!4830578 m!5823520))

(assert (=> b!4830578 m!5823520))

(declare-fun m!5823522 () Bool)

(assert (=> b!4830578 m!5823522))

(declare-fun m!5823524 () Bool)

(assert (=> bm!336644 m!5823524))

(declare-fun m!5823526 () Bool)

(assert (=> b!4830581 m!5823526))

(declare-fun m!5823528 () Bool)

(assert (=> b!4830581 m!5823528))

(declare-fun m!5823530 () Bool)

(assert (=> b!4830580 m!5823530))

(assert (=> b!4830580 m!5823520))

(assert (=> b!4830580 m!5823520))

(assert (=> b!4830580 m!5823522))

(declare-fun m!5823532 () Bool)

(assert (=> b!4830580 m!5823532))

(declare-fun m!5823534 () Bool)

(assert (=> b!4830584 m!5823534))

(assert (=> b!4830579 m!5823518))

(assert (=> b!4830579 m!5823518))

(declare-fun m!5823536 () Bool)

(assert (=> b!4830579 m!5823536))

(assert (=> d!1548443 m!5823526))

(assert (=> b!4830586 m!5823518))

(assert (=> b!4830586 m!5823518))

(assert (=> b!4830586 m!5823536))

(assert (=> b!4830324 d!1548443))

(declare-fun d!1548445 () Bool)

(declare-fun res!2057383 () Bool)

(declare-fun e!3018530 () Bool)

(assert (=> d!1548445 (=> res!2057383 e!3018530)))

(assert (=> d!1548445 (= res!2057383 (is-Nil!55058 (toList!7548 lt!1976493)))))

(assert (=> d!1548445 (= (forall!12671 (toList!7548 lt!1976493) lambda!237873) e!3018530)))

(declare-fun b!4830587 () Bool)

(declare-fun e!3018531 () Bool)

(assert (=> b!4830587 (= e!3018530 e!3018531)))

(declare-fun res!2057384 () Bool)

(assert (=> b!4830587 (=> (not res!2057384) (not e!3018531))))

(assert (=> b!4830587 (= res!2057384 (dynLambda!22244 lambda!237873 (h!61492 (toList!7548 lt!1976493))))))

(declare-fun b!4830588 () Bool)

(assert (=> b!4830588 (= e!3018531 (forall!12671 (t!362678 (toList!7548 lt!1976493)) lambda!237873))))

(assert (= (and d!1548445 (not res!2057383)) b!4830587))

(assert (= (and b!4830587 res!2057384) b!4830588))

(declare-fun b_lambda!190555 () Bool)

(assert (=> (not b_lambda!190555) (not b!4830587)))

(declare-fun m!5823538 () Bool)

(assert (=> b!4830587 m!5823538))

(declare-fun m!5823540 () Bool)

(assert (=> b!4830588 m!5823540))

(assert (=> b!4830324 d!1548445))

(declare-fun d!1548447 () Bool)

(declare-fun e!3018534 () Bool)

(assert (=> d!1548447 e!3018534))

(declare-fun res!2057390 () Bool)

(assert (=> d!1548447 (=> (not res!2057390) (not e!3018534))))

(declare-fun lt!1976738 () ListMap!6919)

(assert (=> d!1548447 (= res!2057390 (contains!18867 lt!1976738 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun lt!1976737 () List!55182)

(assert (=> d!1548447 (= lt!1976738 (ListMap!6920 lt!1976737))))

(declare-fun lt!1976735 () Unit!143681)

(declare-fun lt!1976736 () Unit!143681)

(assert (=> d!1548447 (= lt!1976735 lt!1976736)))

(assert (=> d!1548447 (= (getValueByKey!2649 lt!1976737 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (Some!13521 (_2!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1230 (List!55182 K!16747 V!16993) Unit!143681)

(assert (=> d!1548447 (= lt!1976736 (lemmaContainsTupThenGetReturnValue!1230 lt!1976737 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (_2!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun insertNoDuplicatedKeys!738 (List!55182 K!16747 V!16993) List!55182)

(assert (=> d!1548447 (= lt!1976737 (insertNoDuplicatedKeys!738 (toList!7548 lt!1976361) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (_2!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> d!1548447 (= (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lt!1976738)))

(declare-fun b!4830593 () Bool)

(declare-fun res!2057389 () Bool)

(assert (=> b!4830593 (=> (not res!2057389) (not e!3018534))))

(assert (=> b!4830593 (= res!2057389 (= (getValueByKey!2649 (toList!7548 lt!1976738) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (Some!13521 (_2!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))))

(declare-fun b!4830594 () Bool)

(assert (=> b!4830594 (= e!3018534 (contains!18872 (toList!7548 lt!1976738) (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (= (and d!1548447 res!2057390) b!4830593))

(assert (= (and b!4830593 res!2057389) b!4830594))

(declare-fun m!5823542 () Bool)

(assert (=> d!1548447 m!5823542))

(declare-fun m!5823544 () Bool)

(assert (=> d!1548447 m!5823544))

(declare-fun m!5823546 () Bool)

(assert (=> d!1548447 m!5823546))

(declare-fun m!5823548 () Bool)

(assert (=> d!1548447 m!5823548))

(declare-fun m!5823550 () Bool)

(assert (=> b!4830593 m!5823550))

(declare-fun m!5823552 () Bool)

(assert (=> b!4830594 m!5823552))

(assert (=> b!4830324 d!1548447))

(declare-fun d!1548449 () Bool)

(declare-fun res!2057391 () Bool)

(declare-fun e!3018535 () Bool)

(assert (=> d!1548449 (=> res!2057391 e!3018535)))

(assert (=> d!1548449 (= res!2057391 (is-Nil!55058 (toList!7548 lt!1976361)))))

(assert (=> d!1548449 (= (forall!12671 (toList!7548 lt!1976361) lambda!237872) e!3018535)))

(declare-fun b!4830595 () Bool)

(declare-fun e!3018536 () Bool)

(assert (=> b!4830595 (= e!3018535 e!3018536)))

(declare-fun res!2057392 () Bool)

(assert (=> b!4830595 (=> (not res!2057392) (not e!3018536))))

(assert (=> b!4830595 (= res!2057392 (dynLambda!22244 lambda!237872 (h!61492 (toList!7548 lt!1976361))))))

(declare-fun b!4830596 () Bool)

(assert (=> b!4830596 (= e!3018536 (forall!12671 (t!362678 (toList!7548 lt!1976361)) lambda!237872))))

(assert (= (and d!1548449 (not res!2057391)) b!4830595))

(assert (= (and b!4830595 res!2057392) b!4830596))

(declare-fun b_lambda!190557 () Bool)

(assert (=> (not b_lambda!190557) (not b!4830595)))

(declare-fun m!5823554 () Bool)

(assert (=> b!4830595 m!5823554))

(declare-fun m!5823556 () Bool)

(assert (=> b!4830596 m!5823556))

(assert (=> b!4830324 d!1548449))

(declare-fun b!4830597 () Bool)

(declare-fun e!3018541 () Bool)

(declare-fun e!3018542 () Bool)

(assert (=> b!4830597 (= e!3018541 e!3018542)))

(declare-fun res!2057393 () Bool)

(assert (=> b!4830597 (=> (not res!2057393) (not e!3018542))))

(assert (=> b!4830597 (= res!2057393 (isDefined!10637 (getValueByKey!2649 (toList!7548 lt!1976491) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))))

(declare-fun bm!336645 () Bool)

(declare-fun call!336650 () Bool)

(declare-fun e!3018539 () List!55186)

(assert (=> bm!336645 (= call!336650 (contains!18870 e!3018539 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun c!823091 () Bool)

(declare-fun c!823092 () Bool)

(assert (=> bm!336645 (= c!823091 c!823092)))

(declare-fun b!4830598 () Bool)

(declare-fun e!3018538 () Bool)

(assert (=> b!4830598 (= e!3018538 (not (contains!18870 (keys!20276 lt!1976491) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))))

(declare-fun b!4830599 () Bool)

(declare-fun e!3018537 () Unit!143681)

(declare-fun lt!1976741 () Unit!143681)

(assert (=> b!4830599 (= e!3018537 lt!1976741)))

(declare-fun lt!1976745 () Unit!143681)

(assert (=> b!4830599 (= lt!1976745 (lemmaContainsKeyImpliesGetValueByKeyDefined!2434 (toList!7548 lt!1976491) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> b!4830599 (isDefined!10637 (getValueByKey!2649 (toList!7548 lt!1976491) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun lt!1976743 () Unit!143681)

(assert (=> b!4830599 (= lt!1976743 lt!1976745)))

(assert (=> b!4830599 (= lt!1976741 (lemmaInListThenGetKeysListContains!1166 (toList!7548 lt!1976491) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> b!4830599 call!336650))

(declare-fun b!4830600 () Bool)

(assert (=> b!4830600 false))

(declare-fun lt!1976746 () Unit!143681)

(declare-fun lt!1976740 () Unit!143681)

(assert (=> b!4830600 (= lt!1976746 lt!1976740)))

(assert (=> b!4830600 (containsKey!4429 (toList!7548 lt!1976491) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (=> b!4830600 (= lt!1976740 (lemmaInGetKeysListThenContainsKey!1171 (toList!7548 lt!1976491) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun e!3018540 () Unit!143681)

(declare-fun Unit!143755 () Unit!143681)

(assert (=> b!4830600 (= e!3018540 Unit!143755)))

(declare-fun b!4830601 () Bool)

(assert (=> b!4830601 (= e!3018537 e!3018540)))

(declare-fun c!823090 () Bool)

(assert (=> b!4830601 (= c!823090 call!336650)))

(declare-fun b!4830602 () Bool)

(declare-fun Unit!143756 () Unit!143681)

(assert (=> b!4830602 (= e!3018540 Unit!143756)))

(declare-fun b!4830603 () Bool)

(assert (=> b!4830603 (= e!3018539 (getKeysList!1171 (toList!7548 lt!1976491)))))

(declare-fun d!1548451 () Bool)

(assert (=> d!1548451 e!3018541))

(declare-fun res!2057394 () Bool)

(assert (=> d!1548451 (=> res!2057394 e!3018541)))

(assert (=> d!1548451 (= res!2057394 e!3018538)))

(declare-fun res!2057395 () Bool)

(assert (=> d!1548451 (=> (not res!2057395) (not e!3018538))))

(declare-fun lt!1976742 () Bool)

(assert (=> d!1548451 (= res!2057395 (not lt!1976742))))

(declare-fun lt!1976744 () Bool)

(assert (=> d!1548451 (= lt!1976742 lt!1976744)))

(declare-fun lt!1976739 () Unit!143681)

(assert (=> d!1548451 (= lt!1976739 e!3018537)))

(assert (=> d!1548451 (= c!823092 lt!1976744)))

(assert (=> d!1548451 (= lt!1976744 (containsKey!4429 (toList!7548 lt!1976491) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> d!1548451 (= (contains!18867 lt!1976491 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) lt!1976742)))

(declare-fun b!4830604 () Bool)

(assert (=> b!4830604 (= e!3018539 (keys!20276 lt!1976491))))

(declare-fun b!4830605 () Bool)

(assert (=> b!4830605 (= e!3018542 (contains!18870 (keys!20276 lt!1976491) (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (= (and d!1548451 c!823092) b!4830599))

(assert (= (and d!1548451 (not c!823092)) b!4830601))

(assert (= (and b!4830601 c!823090) b!4830600))

(assert (= (and b!4830601 (not c!823090)) b!4830602))

(assert (= (or b!4830599 b!4830601) bm!336645))

(assert (= (and bm!336645 c!823091) b!4830603))

(assert (= (and bm!336645 (not c!823091)) b!4830604))

(assert (= (and d!1548451 res!2057395) b!4830598))

(assert (= (and d!1548451 (not res!2057394)) b!4830597))

(assert (= (and b!4830597 res!2057393) b!4830605))

(declare-fun m!5823558 () Bool)

(assert (=> b!4830604 m!5823558))

(declare-fun m!5823560 () Bool)

(assert (=> b!4830597 m!5823560))

(assert (=> b!4830597 m!5823560))

(declare-fun m!5823562 () Bool)

(assert (=> b!4830597 m!5823562))

(declare-fun m!5823564 () Bool)

(assert (=> bm!336645 m!5823564))

(declare-fun m!5823566 () Bool)

(assert (=> b!4830600 m!5823566))

(declare-fun m!5823568 () Bool)

(assert (=> b!4830600 m!5823568))

(declare-fun m!5823570 () Bool)

(assert (=> b!4830599 m!5823570))

(assert (=> b!4830599 m!5823560))

(assert (=> b!4830599 m!5823560))

(assert (=> b!4830599 m!5823562))

(declare-fun m!5823572 () Bool)

(assert (=> b!4830599 m!5823572))

(declare-fun m!5823574 () Bool)

(assert (=> b!4830603 m!5823574))

(assert (=> b!4830598 m!5823558))

(assert (=> b!4830598 m!5823558))

(declare-fun m!5823576 () Bool)

(assert (=> b!4830598 m!5823576))

(assert (=> d!1548451 m!5823566))

(assert (=> b!4830605 m!5823558))

(assert (=> b!4830605 m!5823558))

(assert (=> b!4830605 m!5823576))

(assert (=> b!4830324 d!1548451))

(declare-fun bs!1165910 () Bool)

(declare-fun d!1548453 () Bool)

(assert (= bs!1165910 (and d!1548453 b!4830320)))

(declare-fun lambda!237963 () Int)

(assert (=> bs!1165910 (= (= lt!1976491 lt!1976361) (= lambda!237963 lambda!237871))))

(declare-fun bs!1165911 () Bool)

(assert (= bs!1165911 (and d!1548453 b!4830568)))

(assert (=> bs!1165911 (= (= lt!1976491 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (= lambda!237963 lambda!237955))))

(declare-fun bs!1165912 () Bool)

(assert (= bs!1165912 (and d!1548453 b!4830443)))

(assert (=> bs!1165912 (= (= lt!1976491 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237963 lambda!237929))))

(declare-fun bs!1165913 () Bool)

(assert (= bs!1165913 (and d!1548453 b!4830447)))

(assert (=> bs!1165913 (= (= lt!1976491 lt!1976632) (= lambda!237963 lambda!237931))))

(declare-fun bs!1165914 () Bool)

(assert (= bs!1165914 (and d!1548453 d!1548375)))

(assert (=> bs!1165914 (= (= lt!1976491 lt!1976361) (= lambda!237963 lambda!237952))))

(declare-fun bs!1165915 () Bool)

(assert (= bs!1165915 (and d!1548453 b!4830572)))

(assert (=> bs!1165915 (= (= lt!1976491 (+!2548 lt!1976361 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (= lambda!237963 lambda!237956))))

(declare-fun bs!1165916 () Bool)

(assert (= bs!1165916 (and d!1548453 b!4830324)))

(assert (=> bs!1165916 (= lambda!237963 lambda!237873)))

(declare-fun bs!1165917 () Bool)

(assert (= bs!1165917 (and d!1548453 d!1548289)))

(assert (=> bs!1165917 (= (= lt!1976491 lt!1976487) (= lambda!237963 lambda!237874))))

(assert (=> bs!1165913 (= (= lt!1976491 (extractMap!2711 (t!362679 (t!362679 (toList!7547 lm!2325))))) (= lambda!237963 lambda!237930))))

(assert (=> bs!1165915 (= (= lt!1976491 lt!1976701) (= lambda!237963 lambda!237957))))

(declare-fun bs!1165918 () Bool)

(assert (= bs!1165918 (and d!1548453 d!1548363)))

(assert (=> bs!1165918 (= (= lt!1976491 lt!1976628) (= lambda!237963 lambda!237932))))

(declare-fun bs!1165919 () Bool)

(assert (= bs!1165919 (and d!1548453 d!1548437)))

(assert (=> bs!1165919 (= (= lt!1976491 lt!1976697) (= lambda!237963 lambda!237958))))

(assert (=> bs!1165916 (= (= lt!1976491 lt!1976361) (= lambda!237963 lambda!237872))))

(assert (=> d!1548453 true))

(assert (=> d!1548453 (forall!12671 (toList!7548 lt!1976361) lambda!237963)))

(declare-fun lt!1976749 () Unit!143681)

(declare-fun choose!35244 (ListMap!6919 ListMap!6919 K!16747 V!16993) Unit!143681)

(assert (=> d!1548453 (= lt!1976749 (choose!35244 lt!1976361 lt!1976491 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (_2!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> d!1548453 (forall!12671 (toList!7548 (+!2548 lt!1976361 (tuple2!58343 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (_2!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))) lambda!237963)))

(assert (=> d!1548453 (= (addForallContainsKeyThenBeforeAdding!1002 lt!1976361 lt!1976491 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (_2!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) lt!1976749)))

(declare-fun bs!1165920 () Bool)

(assert (= bs!1165920 d!1548453))

(declare-fun m!5823578 () Bool)

(assert (=> bs!1165920 m!5823578))

(declare-fun m!5823580 () Bool)

(assert (=> bs!1165920 m!5823580))

(declare-fun m!5823582 () Bool)

(assert (=> bs!1165920 m!5823582))

(declare-fun m!5823584 () Bool)

(assert (=> bs!1165920 m!5823584))

(assert (=> b!4830324 d!1548453))

(declare-fun d!1548455 () Bool)

(declare-fun res!2057396 () Bool)

(declare-fun e!3018543 () Bool)

(assert (=> d!1548455 (=> res!2057396 e!3018543)))

(assert (=> d!1548455 (= res!2057396 (is-Nil!55058 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (=> d!1548455 (= (forall!12671 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) lambda!237873) e!3018543)))

(declare-fun b!4830607 () Bool)

(declare-fun e!3018544 () Bool)

(assert (=> b!4830607 (= e!3018543 e!3018544)))

(declare-fun res!2057397 () Bool)

(assert (=> b!4830607 (=> (not res!2057397) (not e!3018544))))

(assert (=> b!4830607 (= res!2057397 (dynLambda!22244 lambda!237873 (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun b!4830608 () Bool)

(assert (=> b!4830608 (= e!3018544 (forall!12671 (t!362678 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))) lambda!237873))))

(assert (= (and d!1548455 (not res!2057396)) b!4830607))

(assert (= (and b!4830607 res!2057397) b!4830608))

(declare-fun b_lambda!190559 () Bool)

(assert (=> (not b_lambda!190559) (not b!4830607)))

(declare-fun m!5823586 () Bool)

(assert (=> b!4830607 m!5823586))

(declare-fun m!5823588 () Bool)

(assert (=> b!4830608 m!5823588))

(assert (=> b!4830324 d!1548455))

(declare-fun d!1548457 () Bool)

(declare-fun res!2057398 () Bool)

(declare-fun e!3018545 () Bool)

(assert (=> d!1548457 (=> res!2057398 e!3018545)))

(assert (=> d!1548457 (= res!2057398 (is-Nil!55058 (toList!7548 lt!1976361)))))

(assert (=> d!1548457 (= (forall!12671 (toList!7548 lt!1976361) lambda!237873) e!3018545)))

(declare-fun b!4830609 () Bool)

(declare-fun e!3018546 () Bool)

(assert (=> b!4830609 (= e!3018545 e!3018546)))

(declare-fun res!2057399 () Bool)

(assert (=> b!4830609 (=> (not res!2057399) (not e!3018546))))

(assert (=> b!4830609 (= res!2057399 (dynLambda!22244 lambda!237873 (h!61492 (toList!7548 lt!1976361))))))

(declare-fun b!4830610 () Bool)

(assert (=> b!4830610 (= e!3018546 (forall!12671 (t!362678 (toList!7548 lt!1976361)) lambda!237873))))

(assert (= (and d!1548457 (not res!2057398)) b!4830609))

(assert (= (and b!4830609 res!2057399) b!4830610))

(declare-fun b_lambda!190561 () Bool)

(assert (=> (not b_lambda!190561) (not b!4830609)))

(declare-fun m!5823590 () Bool)

(assert (=> b!4830609 m!5823590))

(declare-fun m!5823592 () Bool)

(assert (=> b!4830610 m!5823592))

(assert (=> b!4830324 d!1548457))

(assert (=> b!4830365 d!1548395))

(assert (=> b!4830365 d!1548397))

(assert (=> b!4830362 d!1548417))

(assert (=> b!4830362 d!1548419))

(assert (=> b!4830231 d!1548329))

(assert (=> b!4830368 d!1548387))

(declare-fun d!1548459 () Bool)

(assert (=> d!1548459 (containsKey!4429 (toList!7548 lt!1976361) key!5594)))

(declare-fun lt!1976750 () Unit!143681)

(assert (=> d!1548459 (= lt!1976750 (choose!35239 (toList!7548 lt!1976361) key!5594))))

(assert (=> d!1548459 (invariantList!1825 (toList!7548 lt!1976361))))

(assert (=> d!1548459 (= (lemmaInGetKeysListThenContainsKey!1171 (toList!7548 lt!1976361) key!5594) lt!1976750)))

(declare-fun bs!1165921 () Bool)

(assert (= bs!1165921 d!1548459))

(assert (=> bs!1165921 m!5823174))

(declare-fun m!5823594 () Bool)

(assert (=> bs!1165921 m!5823594))

(assert (=> bs!1165921 m!5823338))

(assert (=> b!4830368 d!1548459))

(declare-fun d!1548461 () Bool)

(declare-fun res!2057400 () Bool)

(declare-fun e!3018547 () Bool)

(assert (=> d!1548461 (=> res!2057400 e!3018547)))

(assert (=> d!1548461 (= res!2057400 (is-Nil!55058 (toList!7548 lt!1976361)))))

(assert (=> d!1548461 (= (forall!12671 (toList!7548 lt!1976361) (ite c!823033 lambda!237871 lambda!237873)) e!3018547)))

(declare-fun b!4830611 () Bool)

(declare-fun e!3018548 () Bool)

(assert (=> b!4830611 (= e!3018547 e!3018548)))

(declare-fun res!2057401 () Bool)

(assert (=> b!4830611 (=> (not res!2057401) (not e!3018548))))

(assert (=> b!4830611 (= res!2057401 (dynLambda!22244 (ite c!823033 lambda!237871 lambda!237873) (h!61492 (toList!7548 lt!1976361))))))

(declare-fun b!4830612 () Bool)

(assert (=> b!4830612 (= e!3018548 (forall!12671 (t!362678 (toList!7548 lt!1976361)) (ite c!823033 lambda!237871 lambda!237873)))))

(assert (= (and d!1548461 (not res!2057400)) b!4830611))

(assert (= (and b!4830611 res!2057401) b!4830612))

(declare-fun b_lambda!190563 () Bool)

(assert (=> (not b_lambda!190563) (not b!4830611)))

(declare-fun m!5823596 () Bool)

(assert (=> b!4830611 m!5823596))

(declare-fun m!5823598 () Bool)

(assert (=> b!4830612 m!5823598))

(assert (=> bm!336623 d!1548461))

(assert (=> b!4830366 d!1548359))

(assert (=> b!4830366 d!1548361))

(assert (=> d!1548319 d!1548281))

(assert (=> d!1548319 d!1548321))

(declare-fun d!1548463 () Bool)

(assert (=> d!1548463 (not (containsKey!4426 (apply!13368 lm!2325 (_1!32466 (h!61493 (toList!7547 lm!2325)))) key!5594))))

(assert (=> d!1548463 true))

(declare-fun _$39!463 () Unit!143681)

(assert (=> d!1548463 (= (choose!35232 lm!2325 key!5594 (_1!32466 (h!61493 (toList!7547 lm!2325))) hashF!1543) _$39!463)))

(declare-fun bs!1165922 () Bool)

(assert (= bs!1165922 d!1548463))

(assert (=> bs!1165922 m!5822934))

(assert (=> bs!1165922 m!5822934))

(assert (=> bs!1165922 m!5822936))

(assert (=> d!1548319 d!1548463))

(declare-fun d!1548465 () Bool)

(declare-fun res!2057402 () Bool)

(declare-fun e!3018549 () Bool)

(assert (=> d!1548465 (=> res!2057402 e!3018549)))

(assert (=> d!1548465 (= res!2057402 (is-Nil!55059 (toList!7547 lm!2325)))))

(assert (=> d!1548465 (= (forall!12669 (toList!7547 lm!2325) lambda!237880) e!3018549)))

(declare-fun b!4830613 () Bool)

(declare-fun e!3018550 () Bool)

(assert (=> b!4830613 (= e!3018549 e!3018550)))

(declare-fun res!2057403 () Bool)

(assert (=> b!4830613 (=> (not res!2057403) (not e!3018550))))

(assert (=> b!4830613 (= res!2057403 (dynLambda!22242 lambda!237880 (h!61493 (toList!7547 lm!2325))))))

(declare-fun b!4830614 () Bool)

(assert (=> b!4830614 (= e!3018550 (forall!12669 (t!362679 (toList!7547 lm!2325)) lambda!237880))))

(assert (= (and d!1548465 (not res!2057402)) b!4830613))

(assert (= (and b!4830613 res!2057403) b!4830614))

(declare-fun b_lambda!190565 () Bool)

(assert (=> (not b_lambda!190565) (not b!4830613)))

(declare-fun m!5823600 () Bool)

(assert (=> b!4830613 m!5823600))

(declare-fun m!5823602 () Bool)

(assert (=> b!4830614 m!5823602))

(assert (=> d!1548319 d!1548465))

(declare-fun d!1548467 () Bool)

(assert (=> d!1548467 (isDefined!10637 (getValueByKey!2649 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(declare-fun lt!1976751 () Unit!143681)

(assert (=> d!1548467 (= lt!1976751 (choose!35237 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(assert (=> d!1548467 (invariantList!1825 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))

(assert (=> d!1548467 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2434 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594) lt!1976751)))

(declare-fun bs!1165923 () Bool)

(assert (= bs!1165923 d!1548467))

(assert (=> bs!1165923 m!5823120))

(assert (=> bs!1165923 m!5823120))

(assert (=> bs!1165923 m!5823122))

(declare-fun m!5823604 () Bool)

(assert (=> bs!1165923 m!5823604))

(assert (=> bs!1165923 m!5823364))

(assert (=> b!4830347 d!1548467))

(assert (=> b!4830347 d!1548411))

(assert (=> b!4830347 d!1548413))

(declare-fun d!1548469 () Bool)

(assert (=> d!1548469 (contains!18870 (getKeysList!1171 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361))) key!5594)))

(declare-fun lt!1976752 () Unit!143681)

(assert (=> d!1548469 (= lt!1976752 (choose!35238 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594))))

(assert (=> d!1548469 (invariantList!1825 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)))))

(assert (=> d!1548469 (= (lemmaInListThenGetKeysListContains!1166 (toList!7548 (addToMapMapFromBucket!1826 (_2!32466 (h!61493 (toList!7547 lm!2325))) lt!1976361)) key!5594) lt!1976752)))

(declare-fun bs!1165924 () Bool)

(assert (= bs!1165924 d!1548469))

(assert (=> bs!1165924 m!5823134))

(assert (=> bs!1165924 m!5823134))

(declare-fun m!5823606 () Bool)

(assert (=> bs!1165924 m!5823606))

(declare-fun m!5823608 () Bool)

(assert (=> bs!1165924 m!5823608))

(assert (=> bs!1165924 m!5823364))

(assert (=> b!4830347 d!1548469))

(declare-fun d!1548471 () Bool)

(declare-fun res!2057404 () Bool)

(declare-fun e!3018551 () Bool)

(assert (=> d!1548471 (=> res!2057404 e!3018551)))

(assert (=> d!1548471 (= res!2057404 (is-Nil!55058 (toList!7548 lt!1976361)))))

(assert (=> d!1548471 (= (forall!12671 (toList!7548 lt!1976361) lambda!237874) e!3018551)))

(declare-fun b!4830615 () Bool)

(declare-fun e!3018552 () Bool)

(assert (=> b!4830615 (= e!3018551 e!3018552)))

(declare-fun res!2057405 () Bool)

(assert (=> b!4830615 (=> (not res!2057405) (not e!3018552))))

(assert (=> b!4830615 (= res!2057405 (dynLambda!22244 lambda!237874 (h!61492 (toList!7548 lt!1976361))))))

(declare-fun b!4830616 () Bool)

(assert (=> b!4830616 (= e!3018552 (forall!12671 (t!362678 (toList!7548 lt!1976361)) lambda!237874))))

(assert (= (and d!1548471 (not res!2057404)) b!4830615))

(assert (= (and b!4830615 res!2057405) b!4830616))

(declare-fun b_lambda!190567 () Bool)

(assert (=> (not b_lambda!190567) (not b!4830615)))

(declare-fun m!5823610 () Bool)

(assert (=> b!4830615 m!5823610))

(declare-fun m!5823612 () Bool)

(assert (=> b!4830616 m!5823612))

(assert (=> b!4830322 d!1548471))

(declare-fun d!1548473 () Bool)

(declare-fun res!2057406 () Bool)

(declare-fun e!3018553 () Bool)

(assert (=> d!1548473 (=> res!2057406 e!3018553)))

(assert (=> d!1548473 (= res!2057406 (is-Nil!55059 (t!362679 (toList!7547 lm!2325))))))

(assert (=> d!1548473 (= (forall!12669 (t!362679 (toList!7547 lm!2325)) lambda!237833) e!3018553)))

(declare-fun b!4830617 () Bool)

(declare-fun e!3018554 () Bool)

(assert (=> b!4830617 (= e!3018553 e!3018554)))

(declare-fun res!2057407 () Bool)

(assert (=> b!4830617 (=> (not res!2057407) (not e!3018554))))

(assert (=> b!4830617 (= res!2057407 (dynLambda!22242 lambda!237833 (h!61493 (t!362679 (toList!7547 lm!2325)))))))

(declare-fun b!4830618 () Bool)

(assert (=> b!4830618 (= e!3018554 (forall!12669 (t!362679 (t!362679 (toList!7547 lm!2325))) lambda!237833))))

(assert (= (and d!1548473 (not res!2057406)) b!4830617))

(assert (= (and b!4830617 res!2057407) b!4830618))

(declare-fun b_lambda!190569 () Bool)

(assert (=> (not b_lambda!190569) (not b!4830617)))

(declare-fun m!5823614 () Bool)

(assert (=> b!4830617 m!5823614))

(declare-fun m!5823616 () Bool)

(assert (=> b!4830618 m!5823616))

(assert (=> b!4830375 d!1548473))

(declare-fun d!1548475 () Bool)

(declare-fun res!2057408 () Bool)

(declare-fun e!3018555 () Bool)

(assert (=> d!1548475 (=> res!2057408 e!3018555)))

(assert (=> d!1548475 (= res!2057408 (and (is-Cons!55058 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (= (_1!32465 (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) key!5594)))))

(assert (=> d!1548475 (= (containsKey!4426 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))) key!5594) e!3018555)))

(declare-fun b!4830619 () Bool)

(declare-fun e!3018556 () Bool)

(assert (=> b!4830619 (= e!3018555 e!3018556)))

(declare-fun res!2057409 () Bool)

(assert (=> b!4830619 (=> (not res!2057409) (not e!3018556))))

(assert (=> b!4830619 (= res!2057409 (is-Cons!55058 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun b!4830620 () Bool)

(assert (=> b!4830620 (= e!3018556 (containsKey!4426 (t!362678 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))) key!5594))))

(assert (= (and d!1548475 (not res!2057408)) b!4830619))

(assert (= (and b!4830619 res!2057409) b!4830620))

(declare-fun m!5823618 () Bool)

(assert (=> b!4830620 m!5823618))

(assert (=> b!4830245 d!1548475))

(declare-fun d!1548477 () Bool)

(assert (=> d!1548477 (= (get!18852 (getValueByKey!2648 (toList!7547 lm!2325) (_1!32466 (h!61493 (toList!7547 lm!2325))))) (v!49213 (getValueByKey!2648 (toList!7547 lm!2325) (_1!32466 (h!61493 (toList!7547 lm!2325))))))))

(assert (=> d!1548321 d!1548477))

(declare-fun b!4830623 () Bool)

(declare-fun e!3018558 () Option!13521)

(assert (=> b!4830623 (= e!3018558 (getValueByKey!2648 (t!362679 (toList!7547 lm!2325)) (_1!32466 (h!61493 (toList!7547 lm!2325)))))))

(declare-fun d!1548479 () Bool)

(declare-fun c!823093 () Bool)

(assert (=> d!1548479 (= c!823093 (and (is-Cons!55059 (toList!7547 lm!2325)) (= (_1!32466 (h!61493 (toList!7547 lm!2325))) (_1!32466 (h!61493 (toList!7547 lm!2325))))))))

(declare-fun e!3018557 () Option!13521)

(assert (=> d!1548479 (= (getValueByKey!2648 (toList!7547 lm!2325) (_1!32466 (h!61493 (toList!7547 lm!2325)))) e!3018557)))

(declare-fun b!4830621 () Bool)

(assert (=> b!4830621 (= e!3018557 (Some!13520 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(declare-fun b!4830624 () Bool)

(assert (=> b!4830624 (= e!3018558 None!13520)))

(declare-fun b!4830622 () Bool)

(assert (=> b!4830622 (= e!3018557 e!3018558)))

(declare-fun c!823094 () Bool)

(assert (=> b!4830622 (= c!823094 (and (is-Cons!55059 (toList!7547 lm!2325)) (not (= (_1!32466 (h!61493 (toList!7547 lm!2325))) (_1!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (= (and d!1548479 c!823093) b!4830621))

(assert (= (and d!1548479 (not c!823093)) b!4830622))

(assert (= (and b!4830622 c!823094) b!4830623))

(assert (= (and b!4830622 (not c!823094)) b!4830624))

(declare-fun m!5823620 () Bool)

(assert (=> b!4830623 m!5823620))

(assert (=> d!1548321 d!1548479))

(declare-fun d!1548483 () Bool)

(declare-fun lt!1976753 () Bool)

(assert (=> d!1548483 (= lt!1976753 (set.member key!5594 (content!9832 e!3018373)))))

(declare-fun e!3018562 () Bool)

(assert (=> d!1548483 (= lt!1976753 e!3018562)))

(declare-fun res!2057412 () Bool)

(assert (=> d!1548483 (=> (not res!2057412) (not e!3018562))))

(assert (=> d!1548483 (= res!2057412 (is-Cons!55062 e!3018373))))

(assert (=> d!1548483 (= (contains!18870 e!3018373 key!5594) lt!1976753)))

(declare-fun b!4830627 () Bool)

(declare-fun e!3018561 () Bool)

(assert (=> b!4830627 (= e!3018562 e!3018561)))

(declare-fun res!2057413 () Bool)

(assert (=> b!4830627 (=> res!2057413 e!3018561)))

(assert (=> b!4830627 (= res!2057413 (= (h!61496 e!3018373) key!5594))))

(declare-fun b!4830628 () Bool)

(assert (=> b!4830628 (= e!3018561 (contains!18870 (t!362682 e!3018373) key!5594))))

(assert (= (and d!1548483 res!2057412) b!4830627))

(assert (= (and b!4830627 (not res!2057413)) b!4830628))

(declare-fun m!5823624 () Bool)

(assert (=> d!1548483 m!5823624))

(declare-fun m!5823626 () Bool)

(assert (=> d!1548483 m!5823626))

(declare-fun m!5823630 () Bool)

(assert (=> b!4830628 m!5823630))

(assert (=> bm!336627 d!1548483))

(declare-fun d!1548485 () Bool)

(declare-fun res!2057414 () Bool)

(declare-fun e!3018563 () Bool)

(assert (=> d!1548485 (=> res!2057414 e!3018563)))

(assert (=> d!1548485 (= res!2057414 (and (is-Cons!55059 (toList!7547 lt!1976363)) (= (_1!32466 (h!61493 (toList!7547 lt!1976363))) lt!1976362)))))

(assert (=> d!1548485 (= (containsKey!4428 (toList!7547 lt!1976363) lt!1976362) e!3018563)))

(declare-fun b!4830629 () Bool)

(declare-fun e!3018564 () Bool)

(assert (=> b!4830629 (= e!3018563 e!3018564)))

(declare-fun res!2057415 () Bool)

(assert (=> b!4830629 (=> (not res!2057415) (not e!3018564))))

(assert (=> b!4830629 (= res!2057415 (and (or (not (is-Cons!55059 (toList!7547 lt!1976363))) (bvsle (_1!32466 (h!61493 (toList!7547 lt!1976363))) lt!1976362)) (is-Cons!55059 (toList!7547 lt!1976363)) (bvslt (_1!32466 (h!61493 (toList!7547 lt!1976363))) lt!1976362)))))

(declare-fun b!4830630 () Bool)

(assert (=> b!4830630 (= e!3018564 (containsKey!4428 (t!362679 (toList!7547 lt!1976363)) lt!1976362))))

(assert (= (and d!1548485 (not res!2057414)) b!4830629))

(assert (= (and b!4830629 res!2057415) b!4830630))

(declare-fun m!5823632 () Bool)

(assert (=> b!4830630 m!5823632))

(assert (=> d!1548275 d!1548485))

(declare-fun e!3018567 () Bool)

(declare-fun tp!1362883 () Bool)

(declare-fun b!4830635 () Bool)

(declare-fun tp_is_empty!34561 () Bool)

(assert (=> b!4830635 (= e!3018567 (and tp_is_empty!34557 tp_is_empty!34561 tp!1362883))))

(assert (=> b!4830380 (= tp!1362873 e!3018567)))

(assert (= (and b!4830380 (is-Cons!55058 (_2!32466 (h!61493 (toList!7547 lm!2325))))) b!4830635))

(declare-fun b!4830636 () Bool)

(declare-fun e!3018568 () Bool)

(declare-fun tp!1362884 () Bool)

(declare-fun tp!1362885 () Bool)

(assert (=> b!4830636 (= e!3018568 (and tp!1362884 tp!1362885))))

(assert (=> b!4830380 (= tp!1362874 e!3018568)))

(assert (= (and b!4830380 (is-Cons!55059 (t!362679 (toList!7547 lm!2325)))) b!4830636))

(declare-fun b_lambda!190573 () Bool)

(assert (= b_lambda!190551 (or b!4830324 b_lambda!190573)))

(declare-fun bs!1165925 () Bool)

(declare-fun d!1548489 () Bool)

(assert (= bs!1165925 (and d!1548489 b!4830324)))

(assert (=> bs!1165925 (= (dynLambda!22244 lambda!237873 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (contains!18867 lt!1976491 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(assert (=> bs!1165925 m!5823092))

(assert (=> b!4830573 d!1548489))

(declare-fun b_lambda!190575 () Bool)

(assert (= b_lambda!190569 (or start!501694 b_lambda!190575)))

(declare-fun bs!1165926 () Bool)

(declare-fun d!1548491 () Bool)

(assert (= bs!1165926 (and d!1548491 start!501694)))

(assert (=> bs!1165926 (= (dynLambda!22242 lambda!237833 (h!61493 (t!362679 (toList!7547 lm!2325)))) (noDuplicateKeys!2469 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325))))))))

(assert (=> bs!1165926 m!5823284))

(assert (=> b!4830617 d!1548491))

(declare-fun b_lambda!190577 () Bool)

(assert (= b_lambda!190557 (or b!4830324 b_lambda!190577)))

(declare-fun bs!1165927 () Bool)

(declare-fun d!1548493 () Bool)

(assert (= bs!1165927 (and d!1548493 b!4830324)))

(assert (=> bs!1165927 (= (dynLambda!22244 lambda!237872 (h!61492 (toList!7548 lt!1976361))) (contains!18867 lt!1976361 (_1!32465 (h!61492 (toList!7548 lt!1976361)))))))

(declare-fun m!5823634 () Bool)

(assert (=> bs!1165927 m!5823634))

(assert (=> b!4830595 d!1548493))

(declare-fun b_lambda!190579 () Bool)

(assert (= b_lambda!190567 (or d!1548289 b_lambda!190579)))

(declare-fun bs!1165928 () Bool)

(declare-fun d!1548495 () Bool)

(assert (= bs!1165928 (and d!1548495 d!1548289)))

(assert (=> bs!1165928 (= (dynLambda!22244 lambda!237874 (h!61492 (toList!7548 lt!1976361))) (contains!18867 lt!1976487 (_1!32465 (h!61492 (toList!7548 lt!1976361)))))))

(declare-fun m!5823636 () Bool)

(assert (=> bs!1165928 m!5823636))

(assert (=> b!4830615 d!1548495))

(declare-fun b_lambda!190581 () Bool)

(assert (= b_lambda!190547 (or d!1548317 b_lambda!190581)))

(declare-fun bs!1165929 () Bool)

(declare-fun d!1548497 () Bool)

(assert (= bs!1165929 (and d!1548497 d!1548317)))

(assert (=> bs!1165929 (= (dynLambda!22242 lambda!237877 (h!61493 (t!362679 (toList!7547 lm!2325)))) (noDuplicateKeys!2469 (_2!32466 (h!61493 (t!362679 (toList!7547 lm!2325))))))))

(assert (=> bs!1165929 m!5823284))

(assert (=> b!4830558 d!1548497))

(declare-fun b_lambda!190583 () Bool)

(assert (= b_lambda!190543 (or d!1548327 b_lambda!190583)))

(declare-fun bs!1165930 () Bool)

(declare-fun d!1548499 () Bool)

(assert (= bs!1165930 (and d!1548499 d!1548327)))

(declare-fun allKeysSameHash!2016 (List!55182 (_ BitVec 64) Hashable!7303) Bool)

(assert (=> bs!1165930 (= (dynLambda!22242 lambda!237883 (h!61493 (toList!7547 lm!2325))) (allKeysSameHash!2016 (_2!32466 (h!61493 (toList!7547 lm!2325))) (_1!32466 (h!61493 (toList!7547 lm!2325))) hashF!1543))))

(declare-fun m!5823638 () Bool)

(assert (=> bs!1165930 m!5823638))

(assert (=> b!4830554 d!1548499))

(declare-fun b_lambda!190585 () Bool)

(assert (= b_lambda!190539 (or d!1548289 b_lambda!190585)))

(declare-fun bs!1165931 () Bool)

(declare-fun d!1548501 () Bool)

(assert (= bs!1165931 (and d!1548501 d!1548289)))

(assert (=> bs!1165931 (= (dynLambda!22244 lambda!237874 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325))))) (contains!18867 lt!1976487 (_1!32465 (h!61492 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))))

(declare-fun m!5823640 () Bool)

(assert (=> bs!1165931 m!5823640))

(assert (=> b!4830499 d!1548501))

(declare-fun b_lambda!190587 () Bool)

(assert (= b_lambda!190545 (or d!1548335 b_lambda!190587)))

(declare-fun bs!1165932 () Bool)

(declare-fun d!1548503 () Bool)

(assert (= bs!1165932 (and d!1548503 d!1548335)))

(assert (=> bs!1165932 (= (dynLambda!22242 lambda!237884 (h!61493 (toList!7547 lt!1976363))) (allKeysSameHash!2016 (_2!32466 (h!61493 (toList!7547 lt!1976363))) (_1!32466 (h!61493 (toList!7547 lt!1976363))) hashF!1543))))

(declare-fun m!5823642 () Bool)

(assert (=> bs!1165932 m!5823642))

(assert (=> b!4830556 d!1548503))

(declare-fun b_lambda!190589 () Bool)

(assert (= b_lambda!190553 (or b!4830324 b_lambda!190589)))

(assert (=> d!1548441 d!1548489))

(declare-fun b_lambda!190591 () Bool)

(assert (= b_lambda!190549 (or start!501694 b_lambda!190591)))

(declare-fun bs!1165933 () Bool)

(declare-fun d!1548505 () Bool)

(assert (= bs!1165933 (and d!1548505 start!501694)))

(assert (=> bs!1165933 (= (dynLambda!22242 lambda!237833 (h!61493 (t!362679 (toList!7547 lt!1976363)))) (noDuplicateKeys!2469 (_2!32466 (h!61493 (t!362679 (toList!7547 lt!1976363))))))))

(declare-fun m!5823644 () Bool)

(assert (=> bs!1165933 m!5823644))

(assert (=> b!4830566 d!1548505))

(declare-fun b_lambda!190593 () Bool)

(assert (= b_lambda!190561 (or b!4830324 b_lambda!190593)))

(declare-fun bs!1165934 () Bool)

(declare-fun d!1548507 () Bool)

(assert (= bs!1165934 (and d!1548507 b!4830324)))

(assert (=> bs!1165934 (= (dynLambda!22244 lambda!237873 (h!61492 (toList!7548 lt!1976361))) (contains!18867 lt!1976491 (_1!32465 (h!61492 (toList!7548 lt!1976361)))))))

(declare-fun m!5823646 () Bool)

(assert (=> bs!1165934 m!5823646))

(assert (=> b!4830609 d!1548507))

(declare-fun b_lambda!190595 () Bool)

(assert (= b_lambda!190559 (or b!4830324 b_lambda!190595)))

(declare-fun bs!1165935 () Bool)

(declare-fun d!1548509 () Bool)

(assert (= bs!1165935 (and d!1548509 b!4830324)))

(assert (=> bs!1165935 (= (dynLambda!22244 lambda!237873 (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325)))))) (contains!18867 lt!1976491 (_1!32465 (h!61492 (t!362678 (_2!32466 (h!61493 (toList!7547 lm!2325))))))))))

(declare-fun m!5823648 () Bool)

(assert (=> bs!1165935 m!5823648))

(assert (=> b!4830607 d!1548509))

(declare-fun b_lambda!190597 () Bool)

(assert (= b_lambda!190565 (or d!1548319 b_lambda!190597)))

(declare-fun bs!1165936 () Bool)

(declare-fun d!1548511 () Bool)

(assert (= bs!1165936 (and d!1548511 d!1548319)))

(assert (=> bs!1165936 (= (dynLambda!22242 lambda!237880 (h!61493 (toList!7547 lm!2325))) (noDuplicateKeys!2469 (_2!32466 (h!61493 (toList!7547 lm!2325)))))))

(assert (=> bs!1165936 m!5822996))

(assert (=> b!4830613 d!1548511))

(declare-fun b_lambda!190599 () Bool)

(assert (= b_lambda!190555 (or b!4830324 b_lambda!190599)))

(declare-fun bs!1165937 () Bool)

(declare-fun d!1548513 () Bool)

(assert (= bs!1165937 (and d!1548513 b!4830324)))

(assert (=> bs!1165937 (= (dynLambda!22244 lambda!237873 (h!61492 (toList!7548 lt!1976493))) (contains!18867 lt!1976491 (_1!32465 (h!61492 (toList!7548 lt!1976493)))))))

(declare-fun m!5823650 () Bool)

(assert (=> bs!1165937 m!5823650))

(assert (=> b!4830587 d!1548513))

(push 1)

(assert (not d!1548385))

(assert (not d!1548399))

(assert (not b!4830500))

(assert (not b!4830614))

(assert (not b!4830574))

(assert (not d!1548427))

(assert (not bm!336642))

(assert (not b!4830559))

(assert (not b!4830519))

(assert (not b!4830570))

(assert (not b!4830490))

(assert (not bm!336638))

(assert (not b!4830532))

(assert (not b!4830594))

(assert (not d!1548373))

(assert (not b!4830604))

(assert (not b!4830424))

(assert (not b_lambda!190579))

(assert (not b!4830580))

(assert (not bs!1165929))

(assert (not b!4830451))

(assert (not b!4830448))

(assert (not b!4830555))

(assert (not b!4830620))

(assert (not b!4830539))

(assert (not b_lambda!190593))

(assert (not b!4830578))

(assert (not d!1548447))

(assert (not b!4830610))

(assert (not b!4830488))

(assert (not b_lambda!190575))

(assert (not d!1548363))

(assert (not b!4830487))

(assert (not b!4830544))

(assert (not b!4830440))

(assert (not d!1548415))

(assert (not bs!1165934))

(assert (not b!4830447))

(assert (not d!1548355))

(assert (not b!4830636))

(assert (not b_lambda!190585))

(assert (not b_lambda!190591))

(assert (not d!1548469))

(assert (not b!4830431))

(assert (not bm!336644))

(assert (not d!1548383))

(assert (not b!4830439))

(assert (not b_lambda!190599))

(assert (not d!1548395))

(assert (not b_lambda!190531))

(assert (not b!4830577))

(assert (not d!1548411))

(assert (not bm!336639))

(assert (not bs!1165926))

(assert (not d!1548403))

(assert (not b!4830479))

(assert (not d!1548375))

(assert (not d!1548365))

(assert (not b!4830454))

(assert (not d!1548467))

(assert (not d!1548459))

(assert (not b_lambda!190595))

(assert (not b_lambda!190583))

(assert (not b!4830445))

(assert (not bs!1165937))

(assert (not b!4830557))

(assert (not d!1548393))

(assert (not bm!336643))

(assert (not b_lambda!190541))

(assert (not b!4830585))

(assert (not b!4830628))

(assert (not b_lambda!190581))

(assert (not b!4830630))

(assert (not bm!336640))

(assert (not b!4830597))

(assert (not b!4830572))

(assert (not b!4830569))

(assert (not d!1548359))

(assert (not d!1548433))

(assert (not b_lambda!190587))

(assert (not b!4830616))

(assert (not b!4830596))

(assert (not bs!1165930))

(assert (not b!4830511))

(assert (not b!4830509))

(assert (not bs!1165933))

(assert (not b!4830478))

(assert (not b!4830492))

(assert (not b!4830618))

(assert (not b!4830547))

(assert (not b!4830603))

(assert (not b_lambda!190577))

(assert (not b!4830579))

(assert (not b!4830608))

(assert (not b!4830481))

(assert (not bs!1165932))

(assert (not b!4830438))

(assert (not bs!1165925))

(assert (not b!4830599))

(assert (not b!4830588))

(assert (not b!4830593))

(assert tp_is_empty!34561)

(assert (not bs!1165931))

(assert (not b!4830584))

(assert (not d!1548417))

(assert (not bs!1165927))

(assert (not d!1548443))

(assert (not b!4830542))

(assert (not b!4830489))

(assert tp_is_empty!34557)

(assert (not b!4830586))

(assert (not bm!336641))

(assert (not b_lambda!190573))

(assert (not d!1548451))

(assert (not d!1548453))

(assert (not b!4830506))

(assert (not b!4830494))

(assert (not b!4830552))

(assert (not d!1548409))

(assert (not d!1548441))

(assert (not d!1548369))

(assert (not b!4830521))

(assert (not b!4830477))

(assert (not b!4830598))

(assert (not b_lambda!190589))

(assert (not b!4830612))

(assert (not b!4830476))

(assert (not d!1548405))

(assert (not b_lambda!190533))

(assert (not b!4830505))

(assert (not d!1548377))

(assert (not b!4830567))

(assert (not b!4830605))

(assert (not b!4830508))

(assert (not b!4830623))

(assert (not bm!336645))

(assert (not b!4830565))

(assert (not b!4830600))

(assert (not bs!1165935))

(assert (not d!1548483))

(assert (not b!4830581))

(assert (not d!1548361))

(assert (not d!1548463))

(assert (not b_lambda!190597))

(assert (not bs!1165928))

(assert (not b!4830510))

(assert (not b_lambda!190563))

(assert (not bs!1165936))

(assert (not d!1548371))

(assert (not b!4830549))

(assert (not b!4830444))

(assert (not b!4830518))

(assert (not b!4830517))

(assert (not d!1548437))

(assert (not b!4830635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

