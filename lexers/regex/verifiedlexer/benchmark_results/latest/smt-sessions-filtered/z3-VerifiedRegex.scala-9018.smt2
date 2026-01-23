; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485380 () Bool)

(assert start!485380)

(declare-fun b!4750507 () Bool)

(declare-fun res!2014301 () Bool)

(declare-fun e!2963311 () Bool)

(assert (=> b!4750507 (=> (not res!2014301) (not e!2963311))))

(declare-datatypes ((K!14495 0))(
  ( (K!14496 (val!19867 Int)) )
))
(declare-datatypes ((V!14741 0))(
  ( (V!14742 (val!19868 Int)) )
))
(declare-datatypes ((tuple2!54836 0))(
  ( (tuple2!54837 (_1!30712 K!14495) (_2!30712 V!14741)) )
))
(declare-datatypes ((List!53200 0))(
  ( (Nil!53076) (Cons!53076 (h!59473 tuple2!54836) (t!360524 List!53200)) )
))
(declare-fun l!14304 () List!53200)

(get-info :version)

(assert (=> b!4750507 (= res!2014301 (not ((_ is Nil!53076) l!14304)))))

(declare-fun e!2963312 () Bool)

(declare-fun tp_is_empty!31845 () Bool)

(declare-fun b!4750508 () Bool)

(declare-fun tp!1350093 () Bool)

(declare-fun tp_is_empty!31847 () Bool)

(assert (=> b!4750508 (= e!2963312 (and tp_is_empty!31845 tp_is_empty!31847 tp!1350093))))

(declare-fun res!2014302 () Bool)

(assert (=> start!485380 (=> (not res!2014302) (not e!2963311))))

(declare-fun noDuplicateKeys!2138 (List!53200) Bool)

(assert (=> start!485380 (= res!2014302 (noDuplicateKeys!2138 l!14304))))

(assert (=> start!485380 e!2963311))

(assert (=> start!485380 e!2963312))

(assert (=> start!485380 (and tp_is_empty!31845 tp_is_empty!31847)))

(declare-datatypes ((ListMap!5521 0))(
  ( (ListMap!5522 (toList!6106 List!53200)) )
))
(declare-fun acc!1214 () ListMap!5521)

(declare-fun e!2963310 () Bool)

(declare-fun inv!68365 (ListMap!5521) Bool)

(assert (=> start!485380 (and (inv!68365 acc!1214) e!2963310)))

(declare-fun b!4750509 () Bool)

(declare-fun tp!1350092 () Bool)

(assert (=> b!4750509 (= e!2963310 tp!1350092)))

(declare-fun b!4750510 () Bool)

(declare-fun res!2014303 () Bool)

(assert (=> b!4750510 (=> (not res!2014303) (not e!2963311))))

(declare-fun t!14174 () tuple2!54836)

(assert (=> b!4750510 (= res!2014303 (noDuplicateKeys!2138 (Cons!53076 t!14174 l!14304)))))

(declare-fun lt!1913965 () ListMap!5521)

(declare-fun b!4750511 () Bool)

(declare-fun eq!1207 (ListMap!5521 ListMap!5521) Bool)

(declare-fun addToMapMapFromBucket!1562 (List!53200 ListMap!5521) ListMap!5521)

(assert (=> b!4750511 (= e!2963311 (not (eq!1207 lt!1913965 (addToMapMapFromBucket!1562 l!14304 acc!1214))))))

(declare-fun lt!1913966 () ListMap!5521)

(declare-fun +!2372 (ListMap!5521 tuple2!54836) ListMap!5521)

(assert (=> b!4750511 (eq!1207 (addToMapMapFromBucket!1562 (Cons!53076 t!14174 (t!360524 l!14304)) lt!1913966) (+!2372 lt!1913965 t!14174))))

(declare-datatypes ((Unit!135434 0))(
  ( (Unit!135435) )
))
(declare-fun lt!1913967 () Unit!135434)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!452 (tuple2!54836 List!53200 ListMap!5521) Unit!135434)

(assert (=> b!4750511 (= lt!1913967 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!452 t!14174 (t!360524 l!14304) lt!1913966))))

(assert (=> b!4750511 (= lt!1913965 (addToMapMapFromBucket!1562 (t!360524 l!14304) lt!1913966))))

(assert (=> b!4750511 (= lt!1913966 (+!2372 acc!1214 (h!59473 l!14304)))))

(assert (= (and start!485380 res!2014302) b!4750510))

(assert (= (and b!4750510 res!2014303) b!4750507))

(assert (= (and b!4750507 res!2014301) b!4750511))

(assert (= (and start!485380 ((_ is Cons!53076) l!14304)) b!4750508))

(assert (= start!485380 b!4750509))

(declare-fun m!5711289 () Bool)

(assert (=> start!485380 m!5711289))

(declare-fun m!5711291 () Bool)

(assert (=> start!485380 m!5711291))

(declare-fun m!5711293 () Bool)

(assert (=> b!4750510 m!5711293))

(declare-fun m!5711295 () Bool)

(assert (=> b!4750511 m!5711295))

(declare-fun m!5711297 () Bool)

(assert (=> b!4750511 m!5711297))

(declare-fun m!5711299 () Bool)

(assert (=> b!4750511 m!5711299))

(declare-fun m!5711301 () Bool)

(assert (=> b!4750511 m!5711301))

(assert (=> b!4750511 m!5711297))

(declare-fun m!5711303 () Bool)

(assert (=> b!4750511 m!5711303))

(assert (=> b!4750511 m!5711303))

(declare-fun m!5711305 () Bool)

(assert (=> b!4750511 m!5711305))

(assert (=> b!4750511 m!5711299))

(declare-fun m!5711307 () Bool)

(assert (=> b!4750511 m!5711307))

(declare-fun m!5711309 () Bool)

(assert (=> b!4750511 m!5711309))

(check-sat (not b!4750510) (not b!4750511) tp_is_empty!31845 (not start!485380) (not b!4750508) (not b!4750509) tp_is_empty!31847)
(check-sat)
(get-model)

(declare-fun d!1518289 () Bool)

(declare-fun res!2014314 () Bool)

(declare-fun e!2963323 () Bool)

(assert (=> d!1518289 (=> res!2014314 e!2963323)))

(assert (=> d!1518289 (= res!2014314 (not ((_ is Cons!53076) l!14304)))))

(assert (=> d!1518289 (= (noDuplicateKeys!2138 l!14304) e!2963323)))

(declare-fun b!4750522 () Bool)

(declare-fun e!2963324 () Bool)

(assert (=> b!4750522 (= e!2963323 e!2963324)))

(declare-fun res!2014315 () Bool)

(assert (=> b!4750522 (=> (not res!2014315) (not e!2963324))))

(declare-fun containsKey!3549 (List!53200 K!14495) Bool)

(assert (=> b!4750522 (= res!2014315 (not (containsKey!3549 (t!360524 l!14304) (_1!30712 (h!59473 l!14304)))))))

(declare-fun b!4750523 () Bool)

(assert (=> b!4750523 (= e!2963324 (noDuplicateKeys!2138 (t!360524 l!14304)))))

(assert (= (and d!1518289 (not res!2014314)) b!4750522))

(assert (= (and b!4750522 res!2014315) b!4750523))

(declare-fun m!5711315 () Bool)

(assert (=> b!4750522 m!5711315))

(declare-fun m!5711317 () Bool)

(assert (=> b!4750523 m!5711317))

(assert (=> start!485380 d!1518289))

(declare-fun d!1518293 () Bool)

(declare-fun invariantList!1586 (List!53200) Bool)

(assert (=> d!1518293 (= (inv!68365 acc!1214) (invariantList!1586 (toList!6106 acc!1214)))))

(declare-fun bs!1140206 () Bool)

(assert (= bs!1140206 d!1518293))

(declare-fun m!5711319 () Bool)

(assert (=> bs!1140206 m!5711319))

(assert (=> start!485380 d!1518293))

(declare-fun d!1518295 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9520 (List!53200) (InoxSet tuple2!54836))

(assert (=> d!1518295 (= (eq!1207 (addToMapMapFromBucket!1562 (Cons!53076 t!14174 (t!360524 l!14304)) lt!1913966) (+!2372 lt!1913965 t!14174)) (= (content!9520 (toList!6106 (addToMapMapFromBucket!1562 (Cons!53076 t!14174 (t!360524 l!14304)) lt!1913966))) (content!9520 (toList!6106 (+!2372 lt!1913965 t!14174)))))))

(declare-fun bs!1140207 () Bool)

(assert (= bs!1140207 d!1518295))

(declare-fun m!5711321 () Bool)

(assert (=> bs!1140207 m!5711321))

(declare-fun m!5711323 () Bool)

(assert (=> bs!1140207 m!5711323))

(assert (=> b!4750511 d!1518295))

(declare-fun d!1518297 () Bool)

(declare-fun e!2963327 () Bool)

(assert (=> d!1518297 e!2963327))

(declare-fun res!2014320 () Bool)

(assert (=> d!1518297 (=> (not res!2014320) (not e!2963327))))

(declare-fun lt!1913978 () ListMap!5521)

(declare-fun contains!16493 (ListMap!5521 K!14495) Bool)

(assert (=> d!1518297 (= res!2014320 (contains!16493 lt!1913978 (_1!30712 t!14174)))))

(declare-fun lt!1913979 () List!53200)

(assert (=> d!1518297 (= lt!1913978 (ListMap!5522 lt!1913979))))

(declare-fun lt!1913976 () Unit!135434)

(declare-fun lt!1913977 () Unit!135434)

(assert (=> d!1518297 (= lt!1913976 lt!1913977)))

(declare-datatypes ((Option!12522 0))(
  ( (None!12521) (Some!12521 (v!47220 V!14741)) )
))
(declare-fun getValueByKey!2072 (List!53200 K!14495) Option!12522)

(assert (=> d!1518297 (= (getValueByKey!2072 lt!1913979 (_1!30712 t!14174)) (Some!12521 (_2!30712 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1149 (List!53200 K!14495 V!14741) Unit!135434)

(assert (=> d!1518297 (= lt!1913977 (lemmaContainsTupThenGetReturnValue!1149 lt!1913979 (_1!30712 t!14174) (_2!30712 t!14174)))))

(declare-fun insertNoDuplicatedKeys!657 (List!53200 K!14495 V!14741) List!53200)

(assert (=> d!1518297 (= lt!1913979 (insertNoDuplicatedKeys!657 (toList!6106 lt!1913965) (_1!30712 t!14174) (_2!30712 t!14174)))))

(assert (=> d!1518297 (= (+!2372 lt!1913965 t!14174) lt!1913978)))

(declare-fun b!4750528 () Bool)

(declare-fun res!2014321 () Bool)

(assert (=> b!4750528 (=> (not res!2014321) (not e!2963327))))

(assert (=> b!4750528 (= res!2014321 (= (getValueByKey!2072 (toList!6106 lt!1913978) (_1!30712 t!14174)) (Some!12521 (_2!30712 t!14174))))))

(declare-fun b!4750529 () Bool)

(declare-fun contains!16494 (List!53200 tuple2!54836) Bool)

(assert (=> b!4750529 (= e!2963327 (contains!16494 (toList!6106 lt!1913978) t!14174))))

(assert (= (and d!1518297 res!2014320) b!4750528))

(assert (= (and b!4750528 res!2014321) b!4750529))

(declare-fun m!5711325 () Bool)

(assert (=> d!1518297 m!5711325))

(declare-fun m!5711327 () Bool)

(assert (=> d!1518297 m!5711327))

(declare-fun m!5711329 () Bool)

(assert (=> d!1518297 m!5711329))

(declare-fun m!5711331 () Bool)

(assert (=> d!1518297 m!5711331))

(declare-fun m!5711333 () Bool)

(assert (=> b!4750528 m!5711333))

(declare-fun m!5711335 () Bool)

(assert (=> b!4750529 m!5711335))

(assert (=> b!4750511 d!1518297))

(declare-fun b!4750576 () Bool)

(assert (=> b!4750576 true))

(declare-fun bs!1140244 () Bool)

(declare-fun b!4750579 () Bool)

(assert (= bs!1140244 (and b!4750579 b!4750576)))

(declare-fun lambda!221682 () Int)

(declare-fun lambda!221681 () Int)

(assert (=> bs!1140244 (= lambda!221682 lambda!221681)))

(assert (=> b!4750579 true))

(declare-fun lambda!221683 () Int)

(declare-fun lt!1914157 () ListMap!5521)

(assert (=> bs!1140244 (= (= lt!1914157 lt!1913966) (= lambda!221683 lambda!221681))))

(assert (=> b!4750579 (= (= lt!1914157 lt!1913966) (= lambda!221683 lambda!221682))))

(assert (=> b!4750579 true))

(declare-fun bs!1140245 () Bool)

(declare-fun d!1518299 () Bool)

(assert (= bs!1140245 (and d!1518299 b!4750576)))

(declare-fun lambda!221684 () Int)

(declare-fun lt!1914148 () ListMap!5521)

(assert (=> bs!1140245 (= (= lt!1914148 lt!1913966) (= lambda!221684 lambda!221681))))

(declare-fun bs!1140246 () Bool)

(assert (= bs!1140246 (and d!1518299 b!4750579)))

(assert (=> bs!1140246 (= (= lt!1914148 lt!1913966) (= lambda!221684 lambda!221682))))

(assert (=> bs!1140246 (= (= lt!1914148 lt!1914157) (= lambda!221684 lambda!221683))))

(assert (=> d!1518299 true))

(declare-fun b!4750575 () Bool)

(declare-fun e!2963353 () Bool)

(declare-fun forall!11754 (List!53200 Int) Bool)

(assert (=> b!4750575 (= e!2963353 (forall!11754 (toList!6106 lt!1913966) lambda!221683))))

(declare-fun e!2963355 () ListMap!5521)

(assert (=> b!4750576 (= e!2963355 lt!1913966)))

(declare-fun lt!1914163 () Unit!135434)

(declare-fun call!332681 () Unit!135434)

(assert (=> b!4750576 (= lt!1914163 call!332681)))

(declare-fun call!332683 () Bool)

(assert (=> b!4750576 call!332683))

(declare-fun lt!1914147 () Unit!135434)

(assert (=> b!4750576 (= lt!1914147 lt!1914163)))

(declare-fun call!332682 () Bool)

(assert (=> b!4750576 call!332682))

(declare-fun lt!1914144 () Unit!135434)

(declare-fun Unit!135447 () Unit!135434)

(assert (=> b!4750576 (= lt!1914144 Unit!135447)))

(declare-fun bm!332676 () Bool)

(declare-fun c!811145 () Bool)

(assert (=> bm!332676 (= call!332683 (forall!11754 (toList!6106 lt!1913966) (ite c!811145 lambda!221681 lambda!221682)))))

(declare-fun b!4750577 () Bool)

(declare-fun res!2014352 () Bool)

(declare-fun e!2963354 () Bool)

(assert (=> b!4750577 (=> (not res!2014352) (not e!2963354))))

(assert (=> b!4750577 (= res!2014352 (forall!11754 (toList!6106 lt!1913966) lambda!221684))))

(declare-fun b!4750578 () Bool)

(assert (=> b!4750578 (= e!2963354 (invariantList!1586 (toList!6106 lt!1914148)))))

(assert (=> d!1518299 e!2963354))

(declare-fun res!2014353 () Bool)

(assert (=> d!1518299 (=> (not res!2014353) (not e!2963354))))

(assert (=> d!1518299 (= res!2014353 (forall!11754 (t!360524 l!14304) lambda!221684))))

(assert (=> d!1518299 (= lt!1914148 e!2963355)))

(assert (=> d!1518299 (= c!811145 ((_ is Nil!53076) (t!360524 l!14304)))))

(assert (=> d!1518299 (noDuplicateKeys!2138 (t!360524 l!14304))))

(assert (=> d!1518299 (= (addToMapMapFromBucket!1562 (t!360524 l!14304) lt!1913966) lt!1914148)))

(assert (=> b!4750579 (= e!2963355 lt!1914157)))

(declare-fun lt!1914154 () ListMap!5521)

(assert (=> b!4750579 (= lt!1914154 (+!2372 lt!1913966 (h!59473 (t!360524 l!14304))))))

(assert (=> b!4750579 (= lt!1914157 (addToMapMapFromBucket!1562 (t!360524 (t!360524 l!14304)) (+!2372 lt!1913966 (h!59473 (t!360524 l!14304)))))))

(declare-fun lt!1914146 () Unit!135434)

(assert (=> b!4750579 (= lt!1914146 call!332681)))

(assert (=> b!4750579 call!332683))

(declare-fun lt!1914161 () Unit!135434)

(assert (=> b!4750579 (= lt!1914161 lt!1914146)))

(assert (=> b!4750579 call!332682))

(declare-fun lt!1914149 () Unit!135434)

(declare-fun Unit!135448 () Unit!135434)

(assert (=> b!4750579 (= lt!1914149 Unit!135448)))

(assert (=> b!4750579 (forall!11754 (t!360524 (t!360524 l!14304)) lambda!221683)))

(declare-fun lt!1914156 () Unit!135434)

(declare-fun Unit!135449 () Unit!135434)

(assert (=> b!4750579 (= lt!1914156 Unit!135449)))

(declare-fun lt!1914151 () Unit!135434)

(declare-fun Unit!135450 () Unit!135434)

(assert (=> b!4750579 (= lt!1914151 Unit!135450)))

(declare-fun lt!1914160 () Unit!135434)

(declare-fun forallContained!3780 (List!53200 Int tuple2!54836) Unit!135434)

(assert (=> b!4750579 (= lt!1914160 (forallContained!3780 (toList!6106 lt!1914154) lambda!221683 (h!59473 (t!360524 l!14304))))))

(assert (=> b!4750579 (contains!16493 lt!1914154 (_1!30712 (h!59473 (t!360524 l!14304))))))

(declare-fun lt!1914145 () Unit!135434)

(declare-fun Unit!135451 () Unit!135434)

(assert (=> b!4750579 (= lt!1914145 Unit!135451)))

(assert (=> b!4750579 (contains!16493 lt!1914157 (_1!30712 (h!59473 (t!360524 l!14304))))))

(declare-fun lt!1914159 () Unit!135434)

(declare-fun Unit!135452 () Unit!135434)

(assert (=> b!4750579 (= lt!1914159 Unit!135452)))

(assert (=> b!4750579 (forall!11754 (t!360524 l!14304) lambda!221683)))

(declare-fun lt!1914143 () Unit!135434)

(declare-fun Unit!135453 () Unit!135434)

(assert (=> b!4750579 (= lt!1914143 Unit!135453)))

(assert (=> b!4750579 (forall!11754 (toList!6106 lt!1914154) lambda!221683)))

(declare-fun lt!1914162 () Unit!135434)

(declare-fun Unit!135454 () Unit!135434)

(assert (=> b!4750579 (= lt!1914162 Unit!135454)))

(declare-fun lt!1914152 () Unit!135434)

(declare-fun Unit!135455 () Unit!135434)

(assert (=> b!4750579 (= lt!1914152 Unit!135455)))

(declare-fun lt!1914150 () Unit!135434)

(declare-fun addForallContainsKeyThenBeforeAdding!868 (ListMap!5521 ListMap!5521 K!14495 V!14741) Unit!135434)

(assert (=> b!4750579 (= lt!1914150 (addForallContainsKeyThenBeforeAdding!868 lt!1913966 lt!1914157 (_1!30712 (h!59473 (t!360524 l!14304))) (_2!30712 (h!59473 (t!360524 l!14304)))))))

(assert (=> b!4750579 (forall!11754 (toList!6106 lt!1913966) lambda!221683)))

(declare-fun lt!1914153 () Unit!135434)

(assert (=> b!4750579 (= lt!1914153 lt!1914150)))

(assert (=> b!4750579 (forall!11754 (toList!6106 lt!1913966) lambda!221683)))

(declare-fun lt!1914155 () Unit!135434)

(declare-fun Unit!135456 () Unit!135434)

(assert (=> b!4750579 (= lt!1914155 Unit!135456)))

(declare-fun res!2014351 () Bool)

(assert (=> b!4750579 (= res!2014351 (forall!11754 (t!360524 l!14304) lambda!221683))))

(assert (=> b!4750579 (=> (not res!2014351) (not e!2963353))))

(assert (=> b!4750579 e!2963353))

(declare-fun lt!1914158 () Unit!135434)

(declare-fun Unit!135457 () Unit!135434)

(assert (=> b!4750579 (= lt!1914158 Unit!135457)))

(declare-fun bm!332677 () Bool)

(assert (=> bm!332677 (= call!332682 (forall!11754 (ite c!811145 (toList!6106 lt!1913966) (toList!6106 lt!1914154)) (ite c!811145 lambda!221681 lambda!221683)))))

(declare-fun bm!332678 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!869 (ListMap!5521) Unit!135434)

(assert (=> bm!332678 (= call!332681 (lemmaContainsAllItsOwnKeys!869 lt!1913966))))

(assert (= (and d!1518299 c!811145) b!4750576))

(assert (= (and d!1518299 (not c!811145)) b!4750579))

(assert (= (and b!4750579 res!2014351) b!4750575))

(assert (= (or b!4750576 b!4750579) bm!332678))

(assert (= (or b!4750576 b!4750579) bm!332677))

(assert (= (or b!4750576 b!4750579) bm!332676))

(assert (= (and d!1518299 res!2014353) b!4750577))

(assert (= (and b!4750577 res!2014352) b!4750578))

(declare-fun m!5711467 () Bool)

(assert (=> bm!332676 m!5711467))

(declare-fun m!5711471 () Bool)

(assert (=> bm!332677 m!5711471))

(declare-fun m!5711475 () Bool)

(assert (=> d!1518299 m!5711475))

(assert (=> d!1518299 m!5711317))

(declare-fun m!5711477 () Bool)

(assert (=> b!4750575 m!5711477))

(declare-fun m!5711479 () Bool)

(assert (=> b!4750577 m!5711479))

(declare-fun m!5711481 () Bool)

(assert (=> bm!332678 m!5711481))

(declare-fun m!5711483 () Bool)

(assert (=> b!4750579 m!5711483))

(declare-fun m!5711485 () Bool)

(assert (=> b!4750579 m!5711485))

(declare-fun m!5711487 () Bool)

(assert (=> b!4750579 m!5711487))

(declare-fun m!5711489 () Bool)

(assert (=> b!4750579 m!5711489))

(declare-fun m!5711491 () Bool)

(assert (=> b!4750579 m!5711491))

(declare-fun m!5711493 () Bool)

(assert (=> b!4750579 m!5711493))

(assert (=> b!4750579 m!5711493))

(declare-fun m!5711495 () Bool)

(assert (=> b!4750579 m!5711495))

(assert (=> b!4750579 m!5711485))

(assert (=> b!4750579 m!5711477))

(declare-fun m!5711497 () Bool)

(assert (=> b!4750579 m!5711497))

(assert (=> b!4750579 m!5711477))

(declare-fun m!5711499 () Bool)

(assert (=> b!4750579 m!5711499))

(declare-fun m!5711501 () Bool)

(assert (=> b!4750578 m!5711501))

(assert (=> b!4750511 d!1518299))

(declare-fun d!1518315 () Bool)

(assert (=> d!1518315 (= (eq!1207 lt!1913965 (addToMapMapFromBucket!1562 l!14304 acc!1214)) (= (content!9520 (toList!6106 lt!1913965)) (content!9520 (toList!6106 (addToMapMapFromBucket!1562 l!14304 acc!1214)))))))

(declare-fun bs!1140249 () Bool)

(assert (= bs!1140249 d!1518315))

(declare-fun m!5711503 () Bool)

(assert (=> bs!1140249 m!5711503))

(declare-fun m!5711505 () Bool)

(assert (=> bs!1140249 m!5711505))

(assert (=> b!4750511 d!1518315))

(declare-fun bs!1140250 () Bool)

(declare-fun b!4750583 () Bool)

(assert (= bs!1140250 (and b!4750583 b!4750576)))

(declare-fun lambda!221685 () Int)

(assert (=> bs!1140250 (= lambda!221685 lambda!221681)))

(declare-fun bs!1140251 () Bool)

(assert (= bs!1140251 (and b!4750583 b!4750579)))

(assert (=> bs!1140251 (= lambda!221685 lambda!221682)))

(assert (=> bs!1140251 (= (= lt!1913966 lt!1914157) (= lambda!221685 lambda!221683))))

(declare-fun bs!1140252 () Bool)

(assert (= bs!1140252 (and b!4750583 d!1518299)))

(assert (=> bs!1140252 (= (= lt!1913966 lt!1914148) (= lambda!221685 lambda!221684))))

(assert (=> b!4750583 true))

(declare-fun bs!1140253 () Bool)

(declare-fun b!4750586 () Bool)

(assert (= bs!1140253 (and b!4750586 b!4750579)))

(declare-fun lambda!221686 () Int)

(assert (=> bs!1140253 (= (= lt!1913966 lt!1914157) (= lambda!221686 lambda!221683))))

(declare-fun bs!1140254 () Bool)

(assert (= bs!1140254 (and b!4750586 b!4750583)))

(assert (=> bs!1140254 (= lambda!221686 lambda!221685)))

(declare-fun bs!1140255 () Bool)

(assert (= bs!1140255 (and b!4750586 b!4750576)))

(assert (=> bs!1140255 (= lambda!221686 lambda!221681)))

(assert (=> bs!1140253 (= lambda!221686 lambda!221682)))

(declare-fun bs!1140256 () Bool)

(assert (= bs!1140256 (and b!4750586 d!1518299)))

(assert (=> bs!1140256 (= (= lt!1913966 lt!1914148) (= lambda!221686 lambda!221684))))

(assert (=> b!4750586 true))

(declare-fun lambda!221687 () Int)

(declare-fun lt!1914178 () ListMap!5521)

(assert (=> b!4750586 (= (= lt!1914178 lt!1913966) (= lambda!221687 lambda!221686))))

(assert (=> bs!1140253 (= (= lt!1914178 lt!1914157) (= lambda!221687 lambda!221683))))

(assert (=> bs!1140254 (= (= lt!1914178 lt!1913966) (= lambda!221687 lambda!221685))))

(assert (=> bs!1140255 (= (= lt!1914178 lt!1913966) (= lambda!221687 lambda!221681))))

(assert (=> bs!1140253 (= (= lt!1914178 lt!1913966) (= lambda!221687 lambda!221682))))

(assert (=> bs!1140256 (= (= lt!1914178 lt!1914148) (= lambda!221687 lambda!221684))))

(assert (=> b!4750586 true))

(declare-fun bs!1140257 () Bool)

(declare-fun d!1518317 () Bool)

(assert (= bs!1140257 (and d!1518317 b!4750586)))

(declare-fun lt!1914169 () ListMap!5521)

(declare-fun lambda!221688 () Int)

(assert (=> bs!1140257 (= (= lt!1914169 lt!1913966) (= lambda!221688 lambda!221686))))

(declare-fun bs!1140258 () Bool)

(assert (= bs!1140258 (and d!1518317 b!4750579)))

(assert (=> bs!1140258 (= (= lt!1914169 lt!1914157) (= lambda!221688 lambda!221683))))

(declare-fun bs!1140259 () Bool)

(assert (= bs!1140259 (and d!1518317 b!4750583)))

(assert (=> bs!1140259 (= (= lt!1914169 lt!1913966) (= lambda!221688 lambda!221685))))

(declare-fun bs!1140260 () Bool)

(assert (= bs!1140260 (and d!1518317 b!4750576)))

(assert (=> bs!1140260 (= (= lt!1914169 lt!1913966) (= lambda!221688 lambda!221681))))

(assert (=> bs!1140257 (= (= lt!1914169 lt!1914178) (= lambda!221688 lambda!221687))))

(assert (=> bs!1140258 (= (= lt!1914169 lt!1913966) (= lambda!221688 lambda!221682))))

(declare-fun bs!1140261 () Bool)

(assert (= bs!1140261 (and d!1518317 d!1518299)))

(assert (=> bs!1140261 (= (= lt!1914169 lt!1914148) (= lambda!221688 lambda!221684))))

(assert (=> d!1518317 true))

(declare-fun b!4750582 () Bool)

(declare-fun e!2963356 () Bool)

(assert (=> b!4750582 (= e!2963356 (forall!11754 (toList!6106 lt!1913966) lambda!221687))))

(declare-fun e!2963358 () ListMap!5521)

(assert (=> b!4750583 (= e!2963358 lt!1913966)))

(declare-fun lt!1914184 () Unit!135434)

(declare-fun call!332684 () Unit!135434)

(assert (=> b!4750583 (= lt!1914184 call!332684)))

(declare-fun call!332686 () Bool)

(assert (=> b!4750583 call!332686))

(declare-fun lt!1914168 () Unit!135434)

(assert (=> b!4750583 (= lt!1914168 lt!1914184)))

(declare-fun call!332685 () Bool)

(assert (=> b!4750583 call!332685))

(declare-fun lt!1914165 () Unit!135434)

(declare-fun Unit!135469 () Unit!135434)

(assert (=> b!4750583 (= lt!1914165 Unit!135469)))

(declare-fun bm!332679 () Bool)

(declare-fun c!811146 () Bool)

(assert (=> bm!332679 (= call!332686 (forall!11754 (toList!6106 lt!1913966) (ite c!811146 lambda!221685 lambda!221686)))))

(declare-fun b!4750584 () Bool)

(declare-fun res!2014355 () Bool)

(declare-fun e!2963357 () Bool)

(assert (=> b!4750584 (=> (not res!2014355) (not e!2963357))))

(assert (=> b!4750584 (= res!2014355 (forall!11754 (toList!6106 lt!1913966) lambda!221688))))

(declare-fun b!4750585 () Bool)

(assert (=> b!4750585 (= e!2963357 (invariantList!1586 (toList!6106 lt!1914169)))))

(assert (=> d!1518317 e!2963357))

(declare-fun res!2014356 () Bool)

(assert (=> d!1518317 (=> (not res!2014356) (not e!2963357))))

(assert (=> d!1518317 (= res!2014356 (forall!11754 (Cons!53076 t!14174 (t!360524 l!14304)) lambda!221688))))

(assert (=> d!1518317 (= lt!1914169 e!2963358)))

(assert (=> d!1518317 (= c!811146 ((_ is Nil!53076) (Cons!53076 t!14174 (t!360524 l!14304))))))

(assert (=> d!1518317 (noDuplicateKeys!2138 (Cons!53076 t!14174 (t!360524 l!14304)))))

(assert (=> d!1518317 (= (addToMapMapFromBucket!1562 (Cons!53076 t!14174 (t!360524 l!14304)) lt!1913966) lt!1914169)))

(assert (=> b!4750586 (= e!2963358 lt!1914178)))

(declare-fun lt!1914175 () ListMap!5521)

(assert (=> b!4750586 (= lt!1914175 (+!2372 lt!1913966 (h!59473 (Cons!53076 t!14174 (t!360524 l!14304)))))))

(assert (=> b!4750586 (= lt!1914178 (addToMapMapFromBucket!1562 (t!360524 (Cons!53076 t!14174 (t!360524 l!14304))) (+!2372 lt!1913966 (h!59473 (Cons!53076 t!14174 (t!360524 l!14304))))))))

(declare-fun lt!1914167 () Unit!135434)

(assert (=> b!4750586 (= lt!1914167 call!332684)))

(assert (=> b!4750586 call!332686))

(declare-fun lt!1914182 () Unit!135434)

(assert (=> b!4750586 (= lt!1914182 lt!1914167)))

(assert (=> b!4750586 call!332685))

(declare-fun lt!1914170 () Unit!135434)

(declare-fun Unit!135470 () Unit!135434)

(assert (=> b!4750586 (= lt!1914170 Unit!135470)))

(assert (=> b!4750586 (forall!11754 (t!360524 (Cons!53076 t!14174 (t!360524 l!14304))) lambda!221687)))

(declare-fun lt!1914177 () Unit!135434)

(declare-fun Unit!135471 () Unit!135434)

(assert (=> b!4750586 (= lt!1914177 Unit!135471)))

(declare-fun lt!1914172 () Unit!135434)

(declare-fun Unit!135472 () Unit!135434)

(assert (=> b!4750586 (= lt!1914172 Unit!135472)))

(declare-fun lt!1914181 () Unit!135434)

(assert (=> b!4750586 (= lt!1914181 (forallContained!3780 (toList!6106 lt!1914175) lambda!221687 (h!59473 (Cons!53076 t!14174 (t!360524 l!14304)))))))

(assert (=> b!4750586 (contains!16493 lt!1914175 (_1!30712 (h!59473 (Cons!53076 t!14174 (t!360524 l!14304)))))))

(declare-fun lt!1914166 () Unit!135434)

(declare-fun Unit!135473 () Unit!135434)

(assert (=> b!4750586 (= lt!1914166 Unit!135473)))

(assert (=> b!4750586 (contains!16493 lt!1914178 (_1!30712 (h!59473 (Cons!53076 t!14174 (t!360524 l!14304)))))))

(declare-fun lt!1914180 () Unit!135434)

(declare-fun Unit!135474 () Unit!135434)

(assert (=> b!4750586 (= lt!1914180 Unit!135474)))

(assert (=> b!4750586 (forall!11754 (Cons!53076 t!14174 (t!360524 l!14304)) lambda!221687)))

(declare-fun lt!1914164 () Unit!135434)

(declare-fun Unit!135475 () Unit!135434)

(assert (=> b!4750586 (= lt!1914164 Unit!135475)))

(assert (=> b!4750586 (forall!11754 (toList!6106 lt!1914175) lambda!221687)))

(declare-fun lt!1914183 () Unit!135434)

(declare-fun Unit!135476 () Unit!135434)

(assert (=> b!4750586 (= lt!1914183 Unit!135476)))

(declare-fun lt!1914173 () Unit!135434)

(declare-fun Unit!135477 () Unit!135434)

(assert (=> b!4750586 (= lt!1914173 Unit!135477)))

(declare-fun lt!1914171 () Unit!135434)

(assert (=> b!4750586 (= lt!1914171 (addForallContainsKeyThenBeforeAdding!868 lt!1913966 lt!1914178 (_1!30712 (h!59473 (Cons!53076 t!14174 (t!360524 l!14304)))) (_2!30712 (h!59473 (Cons!53076 t!14174 (t!360524 l!14304))))))))

(assert (=> b!4750586 (forall!11754 (toList!6106 lt!1913966) lambda!221687)))

(declare-fun lt!1914174 () Unit!135434)

(assert (=> b!4750586 (= lt!1914174 lt!1914171)))

(assert (=> b!4750586 (forall!11754 (toList!6106 lt!1913966) lambda!221687)))

(declare-fun lt!1914176 () Unit!135434)

(declare-fun Unit!135478 () Unit!135434)

(assert (=> b!4750586 (= lt!1914176 Unit!135478)))

(declare-fun res!2014354 () Bool)

(assert (=> b!4750586 (= res!2014354 (forall!11754 (Cons!53076 t!14174 (t!360524 l!14304)) lambda!221687))))

(assert (=> b!4750586 (=> (not res!2014354) (not e!2963356))))

(assert (=> b!4750586 e!2963356))

(declare-fun lt!1914179 () Unit!135434)

(declare-fun Unit!135479 () Unit!135434)

(assert (=> b!4750586 (= lt!1914179 Unit!135479)))

(declare-fun bm!332680 () Bool)

(assert (=> bm!332680 (= call!332685 (forall!11754 (ite c!811146 (toList!6106 lt!1913966) (toList!6106 lt!1914175)) (ite c!811146 lambda!221685 lambda!221687)))))

(declare-fun bm!332681 () Bool)

(assert (=> bm!332681 (= call!332684 (lemmaContainsAllItsOwnKeys!869 lt!1913966))))

(assert (= (and d!1518317 c!811146) b!4750583))

(assert (= (and d!1518317 (not c!811146)) b!4750586))

(assert (= (and b!4750586 res!2014354) b!4750582))

(assert (= (or b!4750583 b!4750586) bm!332681))

(assert (= (or b!4750583 b!4750586) bm!332680))

(assert (= (or b!4750583 b!4750586) bm!332679))

(assert (= (and d!1518317 res!2014356) b!4750584))

(assert (= (and b!4750584 res!2014355) b!4750585))

(declare-fun m!5711507 () Bool)

(assert (=> bm!332679 m!5711507))

(declare-fun m!5711509 () Bool)

(assert (=> bm!332680 m!5711509))

(declare-fun m!5711511 () Bool)

(assert (=> d!1518317 m!5711511))

(declare-fun m!5711513 () Bool)

(assert (=> d!1518317 m!5711513))

(declare-fun m!5711515 () Bool)

(assert (=> b!4750582 m!5711515))

(declare-fun m!5711517 () Bool)

(assert (=> b!4750584 m!5711517))

(assert (=> bm!332681 m!5711481))

(declare-fun m!5711519 () Bool)

(assert (=> b!4750586 m!5711519))

(declare-fun m!5711521 () Bool)

(assert (=> b!4750586 m!5711521))

(declare-fun m!5711523 () Bool)

(assert (=> b!4750586 m!5711523))

(declare-fun m!5711525 () Bool)

(assert (=> b!4750586 m!5711525))

(declare-fun m!5711527 () Bool)

(assert (=> b!4750586 m!5711527))

(declare-fun m!5711529 () Bool)

(assert (=> b!4750586 m!5711529))

(assert (=> b!4750586 m!5711529))

(declare-fun m!5711531 () Bool)

(assert (=> b!4750586 m!5711531))

(assert (=> b!4750586 m!5711521))

(assert (=> b!4750586 m!5711515))

(declare-fun m!5711533 () Bool)

(assert (=> b!4750586 m!5711533))

(assert (=> b!4750586 m!5711515))

(declare-fun m!5711535 () Bool)

(assert (=> b!4750586 m!5711535))

(declare-fun m!5711537 () Bool)

(assert (=> b!4750585 m!5711537))

(assert (=> b!4750511 d!1518317))

(declare-fun bs!1140262 () Bool)

(declare-fun b!4750588 () Bool)

(assert (= bs!1140262 (and b!4750588 b!4750579)))

(declare-fun lambda!221689 () Int)

(assert (=> bs!1140262 (= (= acc!1214 lt!1914157) (= lambda!221689 lambda!221683))))

(declare-fun bs!1140263 () Bool)

(assert (= bs!1140263 (and b!4750588 b!4750583)))

(assert (=> bs!1140263 (= (= acc!1214 lt!1913966) (= lambda!221689 lambda!221685))))

(declare-fun bs!1140264 () Bool)

(assert (= bs!1140264 (and b!4750588 b!4750576)))

(assert (=> bs!1140264 (= (= acc!1214 lt!1913966) (= lambda!221689 lambda!221681))))

(declare-fun bs!1140265 () Bool)

(assert (= bs!1140265 (and b!4750588 b!4750586)))

(assert (=> bs!1140265 (= (= acc!1214 lt!1914178) (= lambda!221689 lambda!221687))))

(assert (=> bs!1140262 (= (= acc!1214 lt!1913966) (= lambda!221689 lambda!221682))))

(declare-fun bs!1140266 () Bool)

(assert (= bs!1140266 (and b!4750588 d!1518299)))

(assert (=> bs!1140266 (= (= acc!1214 lt!1914148) (= lambda!221689 lambda!221684))))

(declare-fun bs!1140267 () Bool)

(assert (= bs!1140267 (and b!4750588 d!1518317)))

(assert (=> bs!1140267 (= (= acc!1214 lt!1914169) (= lambda!221689 lambda!221688))))

(assert (=> bs!1140265 (= (= acc!1214 lt!1913966) (= lambda!221689 lambda!221686))))

(assert (=> b!4750588 true))

(declare-fun bs!1140268 () Bool)

(declare-fun b!4750591 () Bool)

(assert (= bs!1140268 (and b!4750591 b!4750588)))

(declare-fun lambda!221690 () Int)

(assert (=> bs!1140268 (= lambda!221690 lambda!221689)))

(declare-fun bs!1140269 () Bool)

(assert (= bs!1140269 (and b!4750591 b!4750579)))

(assert (=> bs!1140269 (= (= acc!1214 lt!1914157) (= lambda!221690 lambda!221683))))

(declare-fun bs!1140270 () Bool)

(assert (= bs!1140270 (and b!4750591 b!4750583)))

(assert (=> bs!1140270 (= (= acc!1214 lt!1913966) (= lambda!221690 lambda!221685))))

(declare-fun bs!1140271 () Bool)

(assert (= bs!1140271 (and b!4750591 b!4750576)))

(assert (=> bs!1140271 (= (= acc!1214 lt!1913966) (= lambda!221690 lambda!221681))))

(declare-fun bs!1140272 () Bool)

(assert (= bs!1140272 (and b!4750591 b!4750586)))

(assert (=> bs!1140272 (= (= acc!1214 lt!1914178) (= lambda!221690 lambda!221687))))

(assert (=> bs!1140269 (= (= acc!1214 lt!1913966) (= lambda!221690 lambda!221682))))

(declare-fun bs!1140273 () Bool)

(assert (= bs!1140273 (and b!4750591 d!1518299)))

(assert (=> bs!1140273 (= (= acc!1214 lt!1914148) (= lambda!221690 lambda!221684))))

(declare-fun bs!1140274 () Bool)

(assert (= bs!1140274 (and b!4750591 d!1518317)))

(assert (=> bs!1140274 (= (= acc!1214 lt!1914169) (= lambda!221690 lambda!221688))))

(assert (=> bs!1140272 (= (= acc!1214 lt!1913966) (= lambda!221690 lambda!221686))))

(assert (=> b!4750591 true))

(declare-fun lt!1914199 () ListMap!5521)

(declare-fun lambda!221691 () Int)

(assert (=> b!4750591 (= (= lt!1914199 acc!1214) (= lambda!221691 lambda!221690))))

(assert (=> bs!1140268 (= (= lt!1914199 acc!1214) (= lambda!221691 lambda!221689))))

(assert (=> bs!1140269 (= (= lt!1914199 lt!1914157) (= lambda!221691 lambda!221683))))

(assert (=> bs!1140270 (= (= lt!1914199 lt!1913966) (= lambda!221691 lambda!221685))))

(assert (=> bs!1140271 (= (= lt!1914199 lt!1913966) (= lambda!221691 lambda!221681))))

(assert (=> bs!1140272 (= (= lt!1914199 lt!1914178) (= lambda!221691 lambda!221687))))

(assert (=> bs!1140269 (= (= lt!1914199 lt!1913966) (= lambda!221691 lambda!221682))))

(assert (=> bs!1140273 (= (= lt!1914199 lt!1914148) (= lambda!221691 lambda!221684))))

(assert (=> bs!1140274 (= (= lt!1914199 lt!1914169) (= lambda!221691 lambda!221688))))

(assert (=> bs!1140272 (= (= lt!1914199 lt!1913966) (= lambda!221691 lambda!221686))))

(assert (=> b!4750591 true))

(declare-fun bs!1140276 () Bool)

(declare-fun d!1518319 () Bool)

(assert (= bs!1140276 (and d!1518319 b!4750591)))

(declare-fun lt!1914190 () ListMap!5521)

(declare-fun lambda!221692 () Int)

(assert (=> bs!1140276 (= (= lt!1914190 acc!1214) (= lambda!221692 lambda!221690))))

(declare-fun bs!1140277 () Bool)

(assert (= bs!1140277 (and d!1518319 b!4750579)))

(assert (=> bs!1140277 (= (= lt!1914190 lt!1914157) (= lambda!221692 lambda!221683))))

(declare-fun bs!1140278 () Bool)

(assert (= bs!1140278 (and d!1518319 b!4750583)))

(assert (=> bs!1140278 (= (= lt!1914190 lt!1913966) (= lambda!221692 lambda!221685))))

(declare-fun bs!1140279 () Bool)

(assert (= bs!1140279 (and d!1518319 b!4750576)))

(assert (=> bs!1140279 (= (= lt!1914190 lt!1913966) (= lambda!221692 lambda!221681))))

(declare-fun bs!1140280 () Bool)

(assert (= bs!1140280 (and d!1518319 b!4750586)))

(assert (=> bs!1140280 (= (= lt!1914190 lt!1914178) (= lambda!221692 lambda!221687))))

(declare-fun bs!1140281 () Bool)

(assert (= bs!1140281 (and d!1518319 b!4750588)))

(assert (=> bs!1140281 (= (= lt!1914190 acc!1214) (= lambda!221692 lambda!221689))))

(assert (=> bs!1140276 (= (= lt!1914190 lt!1914199) (= lambda!221692 lambda!221691))))

(assert (=> bs!1140277 (= (= lt!1914190 lt!1913966) (= lambda!221692 lambda!221682))))

(declare-fun bs!1140282 () Bool)

(assert (= bs!1140282 (and d!1518319 d!1518299)))

(assert (=> bs!1140282 (= (= lt!1914190 lt!1914148) (= lambda!221692 lambda!221684))))

(declare-fun bs!1140283 () Bool)

(assert (= bs!1140283 (and d!1518319 d!1518317)))

(assert (=> bs!1140283 (= (= lt!1914190 lt!1914169) (= lambda!221692 lambda!221688))))

(assert (=> bs!1140280 (= (= lt!1914190 lt!1913966) (= lambda!221692 lambda!221686))))

(assert (=> d!1518319 true))

(declare-fun b!4750587 () Bool)

(declare-fun e!2963359 () Bool)

(assert (=> b!4750587 (= e!2963359 (forall!11754 (toList!6106 acc!1214) lambda!221691))))

(declare-fun e!2963361 () ListMap!5521)

(assert (=> b!4750588 (= e!2963361 acc!1214)))

(declare-fun lt!1914205 () Unit!135434)

(declare-fun call!332687 () Unit!135434)

(assert (=> b!4750588 (= lt!1914205 call!332687)))

(declare-fun call!332689 () Bool)

(assert (=> b!4750588 call!332689))

(declare-fun lt!1914189 () Unit!135434)

(assert (=> b!4750588 (= lt!1914189 lt!1914205)))

(declare-fun call!332688 () Bool)

(assert (=> b!4750588 call!332688))

(declare-fun lt!1914186 () Unit!135434)

(declare-fun Unit!135489 () Unit!135434)

(assert (=> b!4750588 (= lt!1914186 Unit!135489)))

(declare-fun bm!332682 () Bool)

(declare-fun c!811147 () Bool)

(assert (=> bm!332682 (= call!332689 (forall!11754 (toList!6106 acc!1214) (ite c!811147 lambda!221689 lambda!221690)))))

(declare-fun b!4750589 () Bool)

(declare-fun res!2014358 () Bool)

(declare-fun e!2963360 () Bool)

(assert (=> b!4750589 (=> (not res!2014358) (not e!2963360))))

(assert (=> b!4750589 (= res!2014358 (forall!11754 (toList!6106 acc!1214) lambda!221692))))

(declare-fun b!4750590 () Bool)

(assert (=> b!4750590 (= e!2963360 (invariantList!1586 (toList!6106 lt!1914190)))))

(assert (=> d!1518319 e!2963360))

(declare-fun res!2014359 () Bool)

(assert (=> d!1518319 (=> (not res!2014359) (not e!2963360))))

(assert (=> d!1518319 (= res!2014359 (forall!11754 l!14304 lambda!221692))))

(assert (=> d!1518319 (= lt!1914190 e!2963361)))

(assert (=> d!1518319 (= c!811147 ((_ is Nil!53076) l!14304))))

(assert (=> d!1518319 (noDuplicateKeys!2138 l!14304)))

(assert (=> d!1518319 (= (addToMapMapFromBucket!1562 l!14304 acc!1214) lt!1914190)))

(assert (=> b!4750591 (= e!2963361 lt!1914199)))

(declare-fun lt!1914196 () ListMap!5521)

(assert (=> b!4750591 (= lt!1914196 (+!2372 acc!1214 (h!59473 l!14304)))))

(assert (=> b!4750591 (= lt!1914199 (addToMapMapFromBucket!1562 (t!360524 l!14304) (+!2372 acc!1214 (h!59473 l!14304))))))

(declare-fun lt!1914188 () Unit!135434)

(assert (=> b!4750591 (= lt!1914188 call!332687)))

(assert (=> b!4750591 call!332689))

(declare-fun lt!1914203 () Unit!135434)

(assert (=> b!4750591 (= lt!1914203 lt!1914188)))

(assert (=> b!4750591 call!332688))

(declare-fun lt!1914191 () Unit!135434)

(declare-fun Unit!135492 () Unit!135434)

(assert (=> b!4750591 (= lt!1914191 Unit!135492)))

(assert (=> b!4750591 (forall!11754 (t!360524 l!14304) lambda!221691)))

(declare-fun lt!1914198 () Unit!135434)

(declare-fun Unit!135493 () Unit!135434)

(assert (=> b!4750591 (= lt!1914198 Unit!135493)))

(declare-fun lt!1914193 () Unit!135434)

(declare-fun Unit!135494 () Unit!135434)

(assert (=> b!4750591 (= lt!1914193 Unit!135494)))

(declare-fun lt!1914202 () Unit!135434)

(assert (=> b!4750591 (= lt!1914202 (forallContained!3780 (toList!6106 lt!1914196) lambda!221691 (h!59473 l!14304)))))

(assert (=> b!4750591 (contains!16493 lt!1914196 (_1!30712 (h!59473 l!14304)))))

(declare-fun lt!1914187 () Unit!135434)

(declare-fun Unit!135495 () Unit!135434)

(assert (=> b!4750591 (= lt!1914187 Unit!135495)))

(assert (=> b!4750591 (contains!16493 lt!1914199 (_1!30712 (h!59473 l!14304)))))

(declare-fun lt!1914201 () Unit!135434)

(declare-fun Unit!135496 () Unit!135434)

(assert (=> b!4750591 (= lt!1914201 Unit!135496)))

(assert (=> b!4750591 (forall!11754 l!14304 lambda!221691)))

(declare-fun lt!1914185 () Unit!135434)

(declare-fun Unit!135497 () Unit!135434)

(assert (=> b!4750591 (= lt!1914185 Unit!135497)))

(assert (=> b!4750591 (forall!11754 (toList!6106 lt!1914196) lambda!221691)))

(declare-fun lt!1914204 () Unit!135434)

(declare-fun Unit!135498 () Unit!135434)

(assert (=> b!4750591 (= lt!1914204 Unit!135498)))

(declare-fun lt!1914194 () Unit!135434)

(declare-fun Unit!135499 () Unit!135434)

(assert (=> b!4750591 (= lt!1914194 Unit!135499)))

(declare-fun lt!1914192 () Unit!135434)

(assert (=> b!4750591 (= lt!1914192 (addForallContainsKeyThenBeforeAdding!868 acc!1214 lt!1914199 (_1!30712 (h!59473 l!14304)) (_2!30712 (h!59473 l!14304))))))

(assert (=> b!4750591 (forall!11754 (toList!6106 acc!1214) lambda!221691)))

(declare-fun lt!1914195 () Unit!135434)

(assert (=> b!4750591 (= lt!1914195 lt!1914192)))

(assert (=> b!4750591 (forall!11754 (toList!6106 acc!1214) lambda!221691)))

(declare-fun lt!1914197 () Unit!135434)

(declare-fun Unit!135500 () Unit!135434)

(assert (=> b!4750591 (= lt!1914197 Unit!135500)))

(declare-fun res!2014357 () Bool)

(assert (=> b!4750591 (= res!2014357 (forall!11754 l!14304 lambda!221691))))

(assert (=> b!4750591 (=> (not res!2014357) (not e!2963359))))

(assert (=> b!4750591 e!2963359))

(declare-fun lt!1914200 () Unit!135434)

(declare-fun Unit!135501 () Unit!135434)

(assert (=> b!4750591 (= lt!1914200 Unit!135501)))

(declare-fun bm!332683 () Bool)

(assert (=> bm!332683 (= call!332688 (forall!11754 (ite c!811147 (toList!6106 acc!1214) (toList!6106 lt!1914196)) (ite c!811147 lambda!221689 lambda!221691)))))

(declare-fun bm!332684 () Bool)

(assert (=> bm!332684 (= call!332687 (lemmaContainsAllItsOwnKeys!869 acc!1214))))

(assert (= (and d!1518319 c!811147) b!4750588))

(assert (= (and d!1518319 (not c!811147)) b!4750591))

(assert (= (and b!4750591 res!2014357) b!4750587))

(assert (= (or b!4750588 b!4750591) bm!332684))

(assert (= (or b!4750588 b!4750591) bm!332683))

(assert (= (or b!4750588 b!4750591) bm!332682))

(assert (= (and d!1518319 res!2014359) b!4750589))

(assert (= (and b!4750589 res!2014358) b!4750590))

(declare-fun m!5711549 () Bool)

(assert (=> bm!332682 m!5711549))

(declare-fun m!5711551 () Bool)

(assert (=> bm!332683 m!5711551))

(declare-fun m!5711553 () Bool)

(assert (=> d!1518319 m!5711553))

(assert (=> d!1518319 m!5711289))

(declare-fun m!5711555 () Bool)

(assert (=> b!4750587 m!5711555))

(declare-fun m!5711557 () Bool)

(assert (=> b!4750589 m!5711557))

(declare-fun m!5711559 () Bool)

(assert (=> bm!332684 m!5711559))

(declare-fun m!5711561 () Bool)

(assert (=> b!4750591 m!5711561))

(declare-fun m!5711563 () Bool)

(assert (=> b!4750591 m!5711563))

(declare-fun m!5711565 () Bool)

(assert (=> b!4750591 m!5711565))

(declare-fun m!5711567 () Bool)

(assert (=> b!4750591 m!5711567))

(declare-fun m!5711569 () Bool)

(assert (=> b!4750591 m!5711569))

(assert (=> b!4750591 m!5711295))

(assert (=> b!4750591 m!5711295))

(declare-fun m!5711571 () Bool)

(assert (=> b!4750591 m!5711571))

(assert (=> b!4750591 m!5711563))

(assert (=> b!4750591 m!5711555))

(declare-fun m!5711573 () Bool)

(assert (=> b!4750591 m!5711573))

(assert (=> b!4750591 m!5711555))

(declare-fun m!5711575 () Bool)

(assert (=> b!4750591 m!5711575))

(declare-fun m!5711577 () Bool)

(assert (=> b!4750590 m!5711577))

(assert (=> b!4750511 d!1518319))

(declare-fun d!1518325 () Bool)

(assert (=> d!1518325 (eq!1207 (addToMapMapFromBucket!1562 (Cons!53076 t!14174 (t!360524 l!14304)) lt!1913966) (+!2372 (addToMapMapFromBucket!1562 (t!360524 l!14304) lt!1913966) t!14174))))

(declare-fun lt!1914211 () Unit!135434)

(declare-fun choose!33814 (tuple2!54836 List!53200 ListMap!5521) Unit!135434)

(assert (=> d!1518325 (= lt!1914211 (choose!33814 t!14174 (t!360524 l!14304) lt!1913966))))

(assert (=> d!1518325 (noDuplicateKeys!2138 (t!360524 l!14304))))

(assert (=> d!1518325 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!452 t!14174 (t!360524 l!14304) lt!1913966) lt!1914211)))

(declare-fun bs!1140285 () Bool)

(assert (= bs!1140285 d!1518325))

(assert (=> bs!1140285 m!5711309))

(assert (=> bs!1140285 m!5711297))

(assert (=> bs!1140285 m!5711297))

(declare-fun m!5711579 () Bool)

(assert (=> bs!1140285 m!5711579))

(declare-fun m!5711581 () Bool)

(assert (=> bs!1140285 m!5711581))

(assert (=> bs!1140285 m!5711317))

(assert (=> bs!1140285 m!5711309))

(assert (=> bs!1140285 m!5711579))

(declare-fun m!5711583 () Bool)

(assert (=> bs!1140285 m!5711583))

(assert (=> b!4750511 d!1518325))

(declare-fun d!1518327 () Bool)

(declare-fun e!2963368 () Bool)

(assert (=> d!1518327 e!2963368))

(declare-fun res!2014362 () Bool)

(assert (=> d!1518327 (=> (not res!2014362) (not e!2963368))))

(declare-fun lt!1914214 () ListMap!5521)

(assert (=> d!1518327 (= res!2014362 (contains!16493 lt!1914214 (_1!30712 (h!59473 l!14304))))))

(declare-fun lt!1914215 () List!53200)

(assert (=> d!1518327 (= lt!1914214 (ListMap!5522 lt!1914215))))

(declare-fun lt!1914212 () Unit!135434)

(declare-fun lt!1914213 () Unit!135434)

(assert (=> d!1518327 (= lt!1914212 lt!1914213)))

(assert (=> d!1518327 (= (getValueByKey!2072 lt!1914215 (_1!30712 (h!59473 l!14304))) (Some!12521 (_2!30712 (h!59473 l!14304))))))

(assert (=> d!1518327 (= lt!1914213 (lemmaContainsTupThenGetReturnValue!1149 lt!1914215 (_1!30712 (h!59473 l!14304)) (_2!30712 (h!59473 l!14304))))))

(assert (=> d!1518327 (= lt!1914215 (insertNoDuplicatedKeys!657 (toList!6106 acc!1214) (_1!30712 (h!59473 l!14304)) (_2!30712 (h!59473 l!14304))))))

(assert (=> d!1518327 (= (+!2372 acc!1214 (h!59473 l!14304)) lt!1914214)))

(declare-fun b!4750600 () Bool)

(declare-fun res!2014363 () Bool)

(assert (=> b!4750600 (=> (not res!2014363) (not e!2963368))))

(assert (=> b!4750600 (= res!2014363 (= (getValueByKey!2072 (toList!6106 lt!1914214) (_1!30712 (h!59473 l!14304))) (Some!12521 (_2!30712 (h!59473 l!14304)))))))

(declare-fun b!4750601 () Bool)

(assert (=> b!4750601 (= e!2963368 (contains!16494 (toList!6106 lt!1914214) (h!59473 l!14304)))))

(assert (= (and d!1518327 res!2014362) b!4750600))

(assert (= (and b!4750600 res!2014363) b!4750601))

(declare-fun m!5711585 () Bool)

(assert (=> d!1518327 m!5711585))

(declare-fun m!5711587 () Bool)

(assert (=> d!1518327 m!5711587))

(declare-fun m!5711589 () Bool)

(assert (=> d!1518327 m!5711589))

(declare-fun m!5711591 () Bool)

(assert (=> d!1518327 m!5711591))

(declare-fun m!5711593 () Bool)

(assert (=> b!4750600 m!5711593))

(declare-fun m!5711595 () Bool)

(assert (=> b!4750601 m!5711595))

(assert (=> b!4750511 d!1518327))

(declare-fun d!1518329 () Bool)

(declare-fun res!2014364 () Bool)

(declare-fun e!2963369 () Bool)

(assert (=> d!1518329 (=> res!2014364 e!2963369)))

(assert (=> d!1518329 (= res!2014364 (not ((_ is Cons!53076) (Cons!53076 t!14174 l!14304))))))

(assert (=> d!1518329 (= (noDuplicateKeys!2138 (Cons!53076 t!14174 l!14304)) e!2963369)))

(declare-fun b!4750602 () Bool)

(declare-fun e!2963370 () Bool)

(assert (=> b!4750602 (= e!2963369 e!2963370)))

(declare-fun res!2014365 () Bool)

(assert (=> b!4750602 (=> (not res!2014365) (not e!2963370))))

(assert (=> b!4750602 (= res!2014365 (not (containsKey!3549 (t!360524 (Cons!53076 t!14174 l!14304)) (_1!30712 (h!59473 (Cons!53076 t!14174 l!14304))))))))

(declare-fun b!4750603 () Bool)

(assert (=> b!4750603 (= e!2963370 (noDuplicateKeys!2138 (t!360524 (Cons!53076 t!14174 l!14304))))))

(assert (= (and d!1518329 (not res!2014364)) b!4750602))

(assert (= (and b!4750602 res!2014365) b!4750603))

(declare-fun m!5711597 () Bool)

(assert (=> b!4750602 m!5711597))

(declare-fun m!5711599 () Bool)

(assert (=> b!4750603 m!5711599))

(assert (=> b!4750510 d!1518329))

(declare-fun tp!1350100 () Bool)

(declare-fun e!2963373 () Bool)

(declare-fun b!4750608 () Bool)

(assert (=> b!4750608 (= e!2963373 (and tp_is_empty!31845 tp_is_empty!31847 tp!1350100))))

(assert (=> b!4750508 (= tp!1350093 e!2963373)))

(assert (= (and b!4750508 ((_ is Cons!53076) (t!360524 l!14304))) b!4750608))

(declare-fun e!2963374 () Bool)

(declare-fun tp!1350101 () Bool)

(declare-fun b!4750609 () Bool)

(assert (=> b!4750609 (= e!2963374 (and tp_is_empty!31845 tp_is_empty!31847 tp!1350101))))

(assert (=> b!4750509 (= tp!1350092 e!2963374)))

(assert (= (and b!4750509 ((_ is Cons!53076) (toList!6106 acc!1214))) b!4750609))

(check-sat (not bm!332677) (not b!4750523) (not d!1518317) (not b!4750585) (not b!4750522) (not d!1518325) (not d!1518315) (not b!4750601) (not bm!332683) (not b!4750575) (not b!4750590) (not bm!332681) (not d!1518297) (not b!4750609) tp_is_empty!31845 (not d!1518327) (not bm!332682) (not b!4750586) (not d!1518319) (not b!4750578) (not b!4750600) (not b!4750589) (not b!4750608) (not b!4750529) (not b!4750602) (not b!4750528) (not b!4750582) (not d!1518299) (not b!4750603) (not bm!332680) (not b!4750587) (not d!1518295) (not b!4750591) (not b!4750579) (not bm!332679) (not bm!332684) (not bm!332678) tp_is_empty!31847 (not b!4750577) (not b!4750584) (not d!1518293) (not bm!332676))
(check-sat)
