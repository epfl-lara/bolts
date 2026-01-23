; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485356 () Bool)

(assert start!485356)

(declare-fun b!4750377 () Bool)

(declare-fun e!2963230 () Bool)

(declare-datatypes ((K!14490 0))(
  ( (K!14491 (val!19863 Int)) )
))
(declare-datatypes ((V!14736 0))(
  ( (V!14737 (val!19864 Int)) )
))
(declare-datatypes ((tuple2!54832 0))(
  ( (tuple2!54833 (_1!30710 K!14490) (_2!30710 V!14736)) )
))
(declare-datatypes ((List!53198 0))(
  ( (Nil!53074) (Cons!53074 (h!59471 tuple2!54832) (t!360522 List!53198)) )
))
(declare-fun l!14304 () List!53198)

(declare-fun ListPrimitiveSize!337 (List!53198) Int)

(assert (=> b!4750377 (= e!2963230 (>= (ListPrimitiveSize!337 (t!360522 l!14304)) (ListPrimitiveSize!337 l!14304)))))

(declare-fun b!4750378 () Bool)

(declare-fun res!2014230 () Bool)

(declare-fun e!2963229 () Bool)

(assert (=> b!4750378 (=> (not res!2014230) (not e!2963229))))

(get-info :version)

(assert (=> b!4750378 (= res!2014230 (not ((_ is Nil!53074) l!14304)))))

(declare-fun res!2014229 () Bool)

(assert (=> start!485356 (=> (not res!2014229) (not e!2963229))))

(declare-fun noDuplicateKeys!2136 (List!53198) Bool)

(assert (=> start!485356 (= res!2014229 (noDuplicateKeys!2136 l!14304))))

(assert (=> start!485356 e!2963229))

(declare-fun e!2963227 () Bool)

(assert (=> start!485356 e!2963227))

(declare-fun tp_is_empty!31837 () Bool)

(declare-fun tp_is_empty!31839 () Bool)

(assert (=> start!485356 (and tp_is_empty!31837 tp_is_empty!31839)))

(declare-datatypes ((ListMap!5517 0))(
  ( (ListMap!5518 (toList!6104 List!53198)) )
))
(declare-fun acc!1214 () ListMap!5517)

(declare-fun e!2963228 () Bool)

(declare-fun inv!68360 (ListMap!5517) Bool)

(assert (=> start!485356 (and (inv!68360 acc!1214) e!2963228)))

(declare-fun b!4750379 () Bool)

(declare-fun res!2014227 () Bool)

(assert (=> b!4750379 (=> (not res!2014227) (not e!2963230))))

(declare-fun t!14174 () tuple2!54832)

(assert (=> b!4750379 (= res!2014227 (noDuplicateKeys!2136 (Cons!53074 t!14174 (t!360522 l!14304))))))

(declare-fun b!4750380 () Bool)

(declare-fun res!2014228 () Bool)

(assert (=> b!4750380 (=> (not res!2014228) (not e!2963229))))

(assert (=> b!4750380 (= res!2014228 (noDuplicateKeys!2136 (Cons!53074 t!14174 l!14304)))))

(declare-fun tp!1350072 () Bool)

(declare-fun b!4750381 () Bool)

(assert (=> b!4750381 (= e!2963227 (and tp_is_empty!31837 tp_is_empty!31839 tp!1350072))))

(declare-fun b!4750382 () Bool)

(declare-fun tp!1350073 () Bool)

(assert (=> b!4750382 (= e!2963228 tp!1350073)))

(declare-fun b!4750383 () Bool)

(assert (=> b!4750383 (= e!2963229 e!2963230)))

(declare-fun res!2014231 () Bool)

(assert (=> b!4750383 (=> (not res!2014231) (not e!2963230))))

(assert (=> b!4750383 (= res!2014231 (noDuplicateKeys!2136 (t!360522 l!14304)))))

(declare-fun lt!1913791 () ListMap!5517)

(declare-fun addToMapMapFromBucket!1560 (List!53198 ListMap!5517) ListMap!5517)

(declare-fun +!2370 (ListMap!5517 tuple2!54832) ListMap!5517)

(assert (=> b!4750383 (= lt!1913791 (addToMapMapFromBucket!1560 (t!360522 l!14304) (+!2370 acc!1214 (h!59471 l!14304))))))

(assert (= (and start!485356 res!2014229) b!4750380))

(assert (= (and b!4750380 res!2014228) b!4750378))

(assert (= (and b!4750378 res!2014230) b!4750383))

(assert (= (and b!4750383 res!2014231) b!4750379))

(assert (= (and b!4750379 res!2014227) b!4750377))

(assert (= (and start!485356 ((_ is Cons!53074) l!14304)) b!4750381))

(assert (= start!485356 b!4750382))

(declare-fun m!5711123 () Bool)

(assert (=> b!4750377 m!5711123))

(declare-fun m!5711125 () Bool)

(assert (=> b!4750377 m!5711125))

(declare-fun m!5711127 () Bool)

(assert (=> b!4750379 m!5711127))

(declare-fun m!5711129 () Bool)

(assert (=> b!4750383 m!5711129))

(declare-fun m!5711131 () Bool)

(assert (=> b!4750383 m!5711131))

(assert (=> b!4750383 m!5711131))

(declare-fun m!5711133 () Bool)

(assert (=> b!4750383 m!5711133))

(declare-fun m!5711135 () Bool)

(assert (=> start!485356 m!5711135))

(declare-fun m!5711137 () Bool)

(assert (=> start!485356 m!5711137))

(declare-fun m!5711139 () Bool)

(assert (=> b!4750380 m!5711139))

(check-sat (not b!4750381) tp_is_empty!31837 (not b!4750380) (not b!4750383) (not b!4750377) (not b!4750379) (not start!485356) tp_is_empty!31839 (not b!4750382))
(check-sat)
(get-model)

(declare-fun d!1518252 () Bool)

(declare-fun res!2014242 () Bool)

(declare-fun e!2963241 () Bool)

(assert (=> d!1518252 (=> res!2014242 e!2963241)))

(assert (=> d!1518252 (= res!2014242 (not ((_ is Cons!53074) (t!360522 l!14304))))))

(assert (=> d!1518252 (= (noDuplicateKeys!2136 (t!360522 l!14304)) e!2963241)))

(declare-fun b!4750394 () Bool)

(declare-fun e!2963242 () Bool)

(assert (=> b!4750394 (= e!2963241 e!2963242)))

(declare-fun res!2014243 () Bool)

(assert (=> b!4750394 (=> (not res!2014243) (not e!2963242))))

(declare-fun containsKey!3547 (List!53198 K!14490) Bool)

(assert (=> b!4750394 (= res!2014243 (not (containsKey!3547 (t!360522 (t!360522 l!14304)) (_1!30710 (h!59471 (t!360522 l!14304))))))))

(declare-fun b!4750395 () Bool)

(assert (=> b!4750395 (= e!2963242 (noDuplicateKeys!2136 (t!360522 (t!360522 l!14304))))))

(assert (= (and d!1518252 (not res!2014242)) b!4750394))

(assert (= (and b!4750394 res!2014243) b!4750395))

(declare-fun m!5711143 () Bool)

(assert (=> b!4750394 m!5711143))

(declare-fun m!5711145 () Bool)

(assert (=> b!4750395 m!5711145))

(assert (=> b!4750383 d!1518252))

(declare-fun b!4750443 () Bool)

(assert (=> b!4750443 true))

(declare-fun bs!1140200 () Bool)

(declare-fun b!4750441 () Bool)

(assert (= bs!1140200 (and b!4750441 b!4750443)))

(declare-fun lambda!221610 () Int)

(declare-fun lambda!221609 () Int)

(assert (=> bs!1140200 (= lambda!221610 lambda!221609)))

(assert (=> b!4750441 true))

(declare-fun lambda!221611 () Int)

(declare-fun lt!1913929 () ListMap!5517)

(assert (=> bs!1140200 (= (= lt!1913929 (+!2370 acc!1214 (h!59471 l!14304))) (= lambda!221611 lambda!221609))))

(assert (=> b!4750441 (= (= lt!1913929 (+!2370 acc!1214 (h!59471 l!14304))) (= lambda!221611 lambda!221610))))

(assert (=> b!4750441 true))

(declare-fun bs!1140201 () Bool)

(declare-fun d!1518256 () Bool)

(assert (= bs!1140201 (and d!1518256 b!4750443)))

(declare-fun lambda!221612 () Int)

(declare-fun lt!1913920 () ListMap!5517)

(assert (=> bs!1140201 (= (= lt!1913920 (+!2370 acc!1214 (h!59471 l!14304))) (= lambda!221612 lambda!221609))))

(declare-fun bs!1140202 () Bool)

(assert (= bs!1140202 (and d!1518256 b!4750441)))

(assert (=> bs!1140202 (= (= lt!1913920 (+!2370 acc!1214 (h!59471 l!14304))) (= lambda!221612 lambda!221610))))

(assert (=> bs!1140202 (= (= lt!1913920 lt!1913929) (= lambda!221612 lambda!221611))))

(assert (=> d!1518256 true))

(declare-fun bm!332652 () Bool)

(declare-datatypes ((Unit!135409 0))(
  ( (Unit!135410) )
))
(declare-fun call!332659 () Unit!135409)

(declare-fun lemmaContainsAllItsOwnKeys!867 (ListMap!5517) Unit!135409)

(assert (=> bm!332652 (= call!332659 (lemmaContainsAllItsOwnKeys!867 (+!2370 acc!1214 (h!59471 l!14304))))))

(declare-fun b!4750442 () Bool)

(declare-fun e!2963270 () Bool)

(declare-fun call!332658 () Bool)

(assert (=> b!4750442 (= e!2963270 call!332658)))

(declare-fun e!2963271 () ListMap!5517)

(assert (=> b!4750443 (= e!2963271 (+!2370 acc!1214 (h!59471 l!14304)))))

(declare-fun lt!1913919 () Unit!135409)

(assert (=> b!4750443 (= lt!1913919 call!332659)))

(assert (=> b!4750443 call!332658))

(declare-fun lt!1913924 () Unit!135409)

(assert (=> b!4750443 (= lt!1913924 lt!1913919)))

(declare-fun call!332657 () Bool)

(assert (=> b!4750443 call!332657))

(declare-fun lt!1913925 () Unit!135409)

(declare-fun Unit!135412 () Unit!135409)

(assert (=> b!4750443 (= lt!1913925 Unit!135412)))

(declare-fun b!4750444 () Bool)

(declare-fun e!2963269 () Bool)

(declare-fun invariantList!1584 (List!53198) Bool)

(assert (=> b!4750444 (= e!2963269 (invariantList!1584 (toList!6104 lt!1913920)))))

(declare-fun c!811133 () Bool)

(declare-fun bm!332653 () Bool)

(declare-fun forall!11752 (List!53198 Int) Bool)

(assert (=> bm!332653 (= call!332658 (forall!11752 (toList!6104 (+!2370 acc!1214 (h!59471 l!14304))) (ite c!811133 lambda!221609 lambda!221611)))))

(declare-fun bm!332654 () Bool)

(assert (=> bm!332654 (= call!332657 (forall!11752 (ite c!811133 (toList!6104 (+!2370 acc!1214 (h!59471 l!14304))) (t!360522 l!14304)) (ite c!811133 lambda!221609 lambda!221611)))))

(declare-fun b!4750445 () Bool)

(declare-fun res!2014271 () Bool)

(assert (=> b!4750445 (=> (not res!2014271) (not e!2963269))))

(assert (=> b!4750445 (= res!2014271 (forall!11752 (toList!6104 (+!2370 acc!1214 (h!59471 l!14304))) lambda!221612))))

(assert (=> b!4750441 (= e!2963271 lt!1913929)))

(declare-fun lt!1913913 () ListMap!5517)

(assert (=> b!4750441 (= lt!1913913 (+!2370 (+!2370 acc!1214 (h!59471 l!14304)) (h!59471 (t!360522 l!14304))))))

(assert (=> b!4750441 (= lt!1913929 (addToMapMapFromBucket!1560 (t!360522 (t!360522 l!14304)) (+!2370 (+!2370 acc!1214 (h!59471 l!14304)) (h!59471 (t!360522 l!14304)))))))

(declare-fun lt!1913928 () Unit!135409)

(assert (=> b!4750441 (= lt!1913928 call!332659)))

(assert (=> b!4750441 (forall!11752 (toList!6104 (+!2370 acc!1214 (h!59471 l!14304))) lambda!221610)))

(declare-fun lt!1913927 () Unit!135409)

(assert (=> b!4750441 (= lt!1913927 lt!1913928)))

(assert (=> b!4750441 (forall!11752 (toList!6104 lt!1913913) lambda!221611)))

(declare-fun lt!1913916 () Unit!135409)

(declare-fun Unit!135420 () Unit!135409)

(assert (=> b!4750441 (= lt!1913916 Unit!135420)))

(assert (=> b!4750441 (forall!11752 (t!360522 (t!360522 l!14304)) lambda!221611)))

(declare-fun lt!1913930 () Unit!135409)

(declare-fun Unit!135421 () Unit!135409)

(assert (=> b!4750441 (= lt!1913930 Unit!135421)))

(declare-fun lt!1913926 () Unit!135409)

(declare-fun Unit!135422 () Unit!135409)

(assert (=> b!4750441 (= lt!1913926 Unit!135422)))

(declare-fun lt!1913921 () Unit!135409)

(declare-fun forallContained!3778 (List!53198 Int tuple2!54832) Unit!135409)

(assert (=> b!4750441 (= lt!1913921 (forallContained!3778 (toList!6104 lt!1913913) lambda!221611 (h!59471 (t!360522 l!14304))))))

(declare-fun contains!16489 (ListMap!5517 K!14490) Bool)

(assert (=> b!4750441 (contains!16489 lt!1913913 (_1!30710 (h!59471 (t!360522 l!14304))))))

(declare-fun lt!1913931 () Unit!135409)

(declare-fun Unit!135424 () Unit!135409)

(assert (=> b!4750441 (= lt!1913931 Unit!135424)))

(assert (=> b!4750441 (contains!16489 lt!1913929 (_1!30710 (h!59471 (t!360522 l!14304))))))

(declare-fun lt!1913922 () Unit!135409)

(declare-fun Unit!135426 () Unit!135409)

(assert (=> b!4750441 (= lt!1913922 Unit!135426)))

(assert (=> b!4750441 (forall!11752 (t!360522 l!14304) lambda!221611)))

(declare-fun lt!1913923 () Unit!135409)

(declare-fun Unit!135427 () Unit!135409)

(assert (=> b!4750441 (= lt!1913923 Unit!135427)))

(assert (=> b!4750441 (forall!11752 (toList!6104 lt!1913913) lambda!221611)))

(declare-fun lt!1913918 () Unit!135409)

(declare-fun Unit!135428 () Unit!135409)

(assert (=> b!4750441 (= lt!1913918 Unit!135428)))

(declare-fun lt!1913932 () Unit!135409)

(declare-fun Unit!135429 () Unit!135409)

(assert (=> b!4750441 (= lt!1913932 Unit!135429)))

(declare-fun lt!1913915 () Unit!135409)

(declare-fun addForallContainsKeyThenBeforeAdding!866 (ListMap!5517 ListMap!5517 K!14490 V!14736) Unit!135409)

(assert (=> b!4750441 (= lt!1913915 (addForallContainsKeyThenBeforeAdding!866 (+!2370 acc!1214 (h!59471 l!14304)) lt!1913929 (_1!30710 (h!59471 (t!360522 l!14304))) (_2!30710 (h!59471 (t!360522 l!14304)))))))

(assert (=> b!4750441 (forall!11752 (toList!6104 (+!2370 acc!1214 (h!59471 l!14304))) lambda!221611)))

(declare-fun lt!1913933 () Unit!135409)

(assert (=> b!4750441 (= lt!1913933 lt!1913915)))

(assert (=> b!4750441 (forall!11752 (toList!6104 (+!2370 acc!1214 (h!59471 l!14304))) lambda!221611)))

(declare-fun lt!1913914 () Unit!135409)

(declare-fun Unit!135430 () Unit!135409)

(assert (=> b!4750441 (= lt!1913914 Unit!135430)))

(declare-fun res!2014270 () Bool)

(assert (=> b!4750441 (= res!2014270 call!332657)))

(assert (=> b!4750441 (=> (not res!2014270) (not e!2963270))))

(assert (=> b!4750441 e!2963270))

(declare-fun lt!1913917 () Unit!135409)

(declare-fun Unit!135431 () Unit!135409)

(assert (=> b!4750441 (= lt!1913917 Unit!135431)))

(assert (=> d!1518256 e!2963269))

(declare-fun res!2014269 () Bool)

(assert (=> d!1518256 (=> (not res!2014269) (not e!2963269))))

(assert (=> d!1518256 (= res!2014269 (forall!11752 (t!360522 l!14304) lambda!221612))))

(assert (=> d!1518256 (= lt!1913920 e!2963271)))

(assert (=> d!1518256 (= c!811133 ((_ is Nil!53074) (t!360522 l!14304)))))

(assert (=> d!1518256 (noDuplicateKeys!2136 (t!360522 l!14304))))

(assert (=> d!1518256 (= (addToMapMapFromBucket!1560 (t!360522 l!14304) (+!2370 acc!1214 (h!59471 l!14304))) lt!1913920)))

(assert (= (and d!1518256 c!811133) b!4750443))

(assert (= (and d!1518256 (not c!811133)) b!4750441))

(assert (= (and b!4750441 res!2014270) b!4750442))

(assert (= (or b!4750443 b!4750441) bm!332652))

(assert (= (or b!4750443 b!4750441) bm!332654))

(assert (= (or b!4750443 b!4750442) bm!332653))

(assert (= (and d!1518256 res!2014269) b!4750445))

(assert (= (and b!4750445 res!2014271) b!4750444))

(assert (=> bm!332652 m!5711131))

(declare-fun m!5711207 () Bool)

(assert (=> bm!332652 m!5711207))

(declare-fun m!5711209 () Bool)

(assert (=> b!4750445 m!5711209))

(declare-fun m!5711211 () Bool)

(assert (=> bm!332654 m!5711211))

(declare-fun m!5711213 () Bool)

(assert (=> b!4750444 m!5711213))

(declare-fun m!5711215 () Bool)

(assert (=> d!1518256 m!5711215))

(assert (=> d!1518256 m!5711129))

(declare-fun m!5711217 () Bool)

(assert (=> bm!332653 m!5711217))

(declare-fun m!5711219 () Bool)

(assert (=> b!4750441 m!5711219))

(assert (=> b!4750441 m!5711131))

(declare-fun m!5711221 () Bool)

(assert (=> b!4750441 m!5711221))

(declare-fun m!5711223 () Bool)

(assert (=> b!4750441 m!5711223))

(declare-fun m!5711225 () Bool)

(assert (=> b!4750441 m!5711225))

(declare-fun m!5711227 () Bool)

(assert (=> b!4750441 m!5711227))

(declare-fun m!5711229 () Bool)

(assert (=> b!4750441 m!5711229))

(assert (=> b!4750441 m!5711223))

(declare-fun m!5711231 () Bool)

(assert (=> b!4750441 m!5711231))

(declare-fun m!5711233 () Bool)

(assert (=> b!4750441 m!5711233))

(assert (=> b!4750441 m!5711219))

(declare-fun m!5711235 () Bool)

(assert (=> b!4750441 m!5711235))

(declare-fun m!5711237 () Bool)

(assert (=> b!4750441 m!5711237))

(declare-fun m!5711239 () Bool)

(assert (=> b!4750441 m!5711239))

(assert (=> b!4750441 m!5711131))

(assert (=> b!4750441 m!5711231))

(assert (=> b!4750383 d!1518256))

(declare-fun d!1518272 () Bool)

(declare-fun e!2963280 () Bool)

(assert (=> d!1518272 e!2963280))

(declare-fun res!2014279 () Bool)

(assert (=> d!1518272 (=> (not res!2014279) (not e!2963280))))

(declare-fun lt!1913944 () ListMap!5517)

(assert (=> d!1518272 (= res!2014279 (contains!16489 lt!1913944 (_1!30710 (h!59471 l!14304))))))

(declare-fun lt!1913943 () List!53198)

(assert (=> d!1518272 (= lt!1913944 (ListMap!5518 lt!1913943))))

(declare-fun lt!1913942 () Unit!135409)

(declare-fun lt!1913945 () Unit!135409)

(assert (=> d!1518272 (= lt!1913942 lt!1913945)))

(declare-datatypes ((Option!12521 0))(
  ( (None!12520) (Some!12520 (v!47219 V!14736)) )
))
(declare-fun getValueByKey!2071 (List!53198 K!14490) Option!12521)

(assert (=> d!1518272 (= (getValueByKey!2071 lt!1913943 (_1!30710 (h!59471 l!14304))) (Some!12520 (_2!30710 (h!59471 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1148 (List!53198 K!14490 V!14736) Unit!135409)

(assert (=> d!1518272 (= lt!1913945 (lemmaContainsTupThenGetReturnValue!1148 lt!1913943 (_1!30710 (h!59471 l!14304)) (_2!30710 (h!59471 l!14304))))))

(declare-fun insertNoDuplicatedKeys!656 (List!53198 K!14490 V!14736) List!53198)

(assert (=> d!1518272 (= lt!1913943 (insertNoDuplicatedKeys!656 (toList!6104 acc!1214) (_1!30710 (h!59471 l!14304)) (_2!30710 (h!59471 l!14304))))))

(assert (=> d!1518272 (= (+!2370 acc!1214 (h!59471 l!14304)) lt!1913944)))

(declare-fun b!4750460 () Bool)

(declare-fun res!2014278 () Bool)

(assert (=> b!4750460 (=> (not res!2014278) (not e!2963280))))

(assert (=> b!4750460 (= res!2014278 (= (getValueByKey!2071 (toList!6104 lt!1913944) (_1!30710 (h!59471 l!14304))) (Some!12520 (_2!30710 (h!59471 l!14304)))))))

(declare-fun b!4750461 () Bool)

(declare-fun contains!16491 (List!53198 tuple2!54832) Bool)

(assert (=> b!4750461 (= e!2963280 (contains!16491 (toList!6104 lt!1913944) (h!59471 l!14304)))))

(assert (= (and d!1518272 res!2014279) b!4750460))

(assert (= (and b!4750460 res!2014278) b!4750461))

(declare-fun m!5711241 () Bool)

(assert (=> d!1518272 m!5711241))

(declare-fun m!5711243 () Bool)

(assert (=> d!1518272 m!5711243))

(declare-fun m!5711245 () Bool)

(assert (=> d!1518272 m!5711245))

(declare-fun m!5711247 () Bool)

(assert (=> d!1518272 m!5711247))

(declare-fun m!5711249 () Bool)

(assert (=> b!4750460 m!5711249))

(declare-fun m!5711251 () Bool)

(assert (=> b!4750461 m!5711251))

(assert (=> b!4750383 d!1518272))

(declare-fun d!1518274 () Bool)

(declare-fun lt!1913948 () Int)

(assert (=> d!1518274 (>= lt!1913948 0)))

(declare-fun e!2963283 () Int)

(assert (=> d!1518274 (= lt!1913948 e!2963283)))

(declare-fun c!811136 () Bool)

(assert (=> d!1518274 (= c!811136 ((_ is Nil!53074) (t!360522 l!14304)))))

(assert (=> d!1518274 (= (ListPrimitiveSize!337 (t!360522 l!14304)) lt!1913948)))

(declare-fun b!4750466 () Bool)

(assert (=> b!4750466 (= e!2963283 0)))

(declare-fun b!4750467 () Bool)

(assert (=> b!4750467 (= e!2963283 (+ 1 (ListPrimitiveSize!337 (t!360522 (t!360522 l!14304)))))))

(assert (= (and d!1518274 c!811136) b!4750466))

(assert (= (and d!1518274 (not c!811136)) b!4750467))

(declare-fun m!5711253 () Bool)

(assert (=> b!4750467 m!5711253))

(assert (=> b!4750377 d!1518274))

(declare-fun d!1518276 () Bool)

(declare-fun lt!1913949 () Int)

(assert (=> d!1518276 (>= lt!1913949 0)))

(declare-fun e!2963284 () Int)

(assert (=> d!1518276 (= lt!1913949 e!2963284)))

(declare-fun c!811137 () Bool)

(assert (=> d!1518276 (= c!811137 ((_ is Nil!53074) l!14304))))

(assert (=> d!1518276 (= (ListPrimitiveSize!337 l!14304) lt!1913949)))

(declare-fun b!4750468 () Bool)

(assert (=> b!4750468 (= e!2963284 0)))

(declare-fun b!4750469 () Bool)

(assert (=> b!4750469 (= e!2963284 (+ 1 (ListPrimitiveSize!337 (t!360522 l!14304))))))

(assert (= (and d!1518276 c!811137) b!4750468))

(assert (= (and d!1518276 (not c!811137)) b!4750469))

(assert (=> b!4750469 m!5711123))

(assert (=> b!4750377 d!1518276))

(declare-fun d!1518278 () Bool)

(declare-fun res!2014280 () Bool)

(declare-fun e!2963285 () Bool)

(assert (=> d!1518278 (=> res!2014280 e!2963285)))

(assert (=> d!1518278 (= res!2014280 (not ((_ is Cons!53074) l!14304)))))

(assert (=> d!1518278 (= (noDuplicateKeys!2136 l!14304) e!2963285)))

(declare-fun b!4750470 () Bool)

(declare-fun e!2963286 () Bool)

(assert (=> b!4750470 (= e!2963285 e!2963286)))

(declare-fun res!2014281 () Bool)

(assert (=> b!4750470 (=> (not res!2014281) (not e!2963286))))

(assert (=> b!4750470 (= res!2014281 (not (containsKey!3547 (t!360522 l!14304) (_1!30710 (h!59471 l!14304)))))))

(declare-fun b!4750471 () Bool)

(assert (=> b!4750471 (= e!2963286 (noDuplicateKeys!2136 (t!360522 l!14304)))))

(assert (= (and d!1518278 (not res!2014280)) b!4750470))

(assert (= (and b!4750470 res!2014281) b!4750471))

(declare-fun m!5711255 () Bool)

(assert (=> b!4750470 m!5711255))

(assert (=> b!4750471 m!5711129))

(assert (=> start!485356 d!1518278))

(declare-fun d!1518280 () Bool)

(assert (=> d!1518280 (= (inv!68360 acc!1214) (invariantList!1584 (toList!6104 acc!1214)))))

(declare-fun bs!1140203 () Bool)

(assert (= bs!1140203 d!1518280))

(declare-fun m!5711257 () Bool)

(assert (=> bs!1140203 m!5711257))

(assert (=> start!485356 d!1518280))

(declare-fun d!1518282 () Bool)

(declare-fun res!2014282 () Bool)

(declare-fun e!2963287 () Bool)

(assert (=> d!1518282 (=> res!2014282 e!2963287)))

(assert (=> d!1518282 (= res!2014282 (not ((_ is Cons!53074) (Cons!53074 t!14174 l!14304))))))

(assert (=> d!1518282 (= (noDuplicateKeys!2136 (Cons!53074 t!14174 l!14304)) e!2963287)))

(declare-fun b!4750472 () Bool)

(declare-fun e!2963288 () Bool)

(assert (=> b!4750472 (= e!2963287 e!2963288)))

(declare-fun res!2014283 () Bool)

(assert (=> b!4750472 (=> (not res!2014283) (not e!2963288))))

(assert (=> b!4750472 (= res!2014283 (not (containsKey!3547 (t!360522 (Cons!53074 t!14174 l!14304)) (_1!30710 (h!59471 (Cons!53074 t!14174 l!14304))))))))

(declare-fun b!4750473 () Bool)

(assert (=> b!4750473 (= e!2963288 (noDuplicateKeys!2136 (t!360522 (Cons!53074 t!14174 l!14304))))))

(assert (= (and d!1518282 (not res!2014282)) b!4750472))

(assert (= (and b!4750472 res!2014283) b!4750473))

(declare-fun m!5711259 () Bool)

(assert (=> b!4750472 m!5711259))

(declare-fun m!5711261 () Bool)

(assert (=> b!4750473 m!5711261))

(assert (=> b!4750380 d!1518282))

(declare-fun d!1518284 () Bool)

(declare-fun res!2014284 () Bool)

(declare-fun e!2963289 () Bool)

(assert (=> d!1518284 (=> res!2014284 e!2963289)))

(assert (=> d!1518284 (= res!2014284 (not ((_ is Cons!53074) (Cons!53074 t!14174 (t!360522 l!14304)))))))

(assert (=> d!1518284 (= (noDuplicateKeys!2136 (Cons!53074 t!14174 (t!360522 l!14304))) e!2963289)))

(declare-fun b!4750474 () Bool)

(declare-fun e!2963290 () Bool)

(assert (=> b!4750474 (= e!2963289 e!2963290)))

(declare-fun res!2014285 () Bool)

(assert (=> b!4750474 (=> (not res!2014285) (not e!2963290))))

(assert (=> b!4750474 (= res!2014285 (not (containsKey!3547 (t!360522 (Cons!53074 t!14174 (t!360522 l!14304))) (_1!30710 (h!59471 (Cons!53074 t!14174 (t!360522 l!14304)))))))))

(declare-fun b!4750475 () Bool)

(assert (=> b!4750475 (= e!2963290 (noDuplicateKeys!2136 (t!360522 (Cons!53074 t!14174 (t!360522 l!14304)))))))

(assert (= (and d!1518284 (not res!2014284)) b!4750474))

(assert (= (and b!4750474 res!2014285) b!4750475))

(declare-fun m!5711263 () Bool)

(assert (=> b!4750474 m!5711263))

(declare-fun m!5711265 () Bool)

(assert (=> b!4750475 m!5711265))

(assert (=> b!4750379 d!1518284))

(declare-fun b!4750480 () Bool)

(declare-fun tp!1350080 () Bool)

(declare-fun e!2963293 () Bool)

(assert (=> b!4750480 (= e!2963293 (and tp_is_empty!31837 tp_is_empty!31839 tp!1350080))))

(assert (=> b!4750382 (= tp!1350073 e!2963293)))

(assert (= (and b!4750382 ((_ is Cons!53074) (toList!6104 acc!1214))) b!4750480))

(declare-fun tp!1350081 () Bool)

(declare-fun b!4750481 () Bool)

(declare-fun e!2963294 () Bool)

(assert (=> b!4750481 (= e!2963294 (and tp_is_empty!31837 tp_is_empty!31839 tp!1350081))))

(assert (=> b!4750381 (= tp!1350072 e!2963294)))

(assert (= (and b!4750381 ((_ is Cons!53074) (t!360522 l!14304))) b!4750481))

(check-sat (not b!4750480) (not bm!332652) tp_is_empty!31837 (not b!4750444) (not b!4750445) (not b!4750395) (not b!4750474) (not b!4750460) tp_is_empty!31839 (not b!4750473) (not b!4750469) (not bm!332653) (not b!4750470) (not b!4750394) (not d!1518280) (not bm!332654) (not b!4750481) (not b!4750441) (not d!1518256) (not b!4750471) (not d!1518272) (not b!4750472) (not b!4750467) (not b!4750461) (not b!4750475))
(check-sat)
