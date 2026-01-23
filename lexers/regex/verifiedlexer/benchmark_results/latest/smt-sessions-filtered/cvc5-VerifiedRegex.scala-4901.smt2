; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251058 () Bool)

(assert start!251058)

(declare-fun b!2591275 () Bool)

(assert (=> b!2591275 true))

(declare-fun b!2591272 () Bool)

(declare-fun e!1634656 () Bool)

(declare-fun tp_is_empty!13303 () Bool)

(declare-fun tp!822689 () Bool)

(assert (=> b!2591272 (= e!1634656 (and tp_is_empty!13303 tp!822689))))

(declare-fun b!2591273 () Bool)

(declare-fun e!1634659 () Bool)

(declare-fun e!1634655 () Bool)

(assert (=> b!2591273 (= e!1634659 (not e!1634655))))

(declare-fun res!1089652 () Bool)

(assert (=> b!2591273 (=> res!1089652 e!1634655)))

(declare-fun lt!911349 () Int)

(declare-datatypes ((B!2023 0))(
  ( (B!2024 (val!9479 Int)) )
))
(declare-datatypes ((List!29912 0))(
  ( (Nil!29812) (Cons!29812 (h!35232 B!2023) (t!212925 List!29912)) )
))
(declare-fun l!3230 () List!29912)

(declare-fun size!23125 (List!29912) Int)

(assert (=> b!2591273 (= res!1089652 (>= lt!911349 (size!23125 l!3230)))))

(declare-fun lt!911355 () Int)

(assert (=> b!2591273 (= lt!911349 lt!911355)))

(assert (=> b!2591273 (= lt!911355 (size!23125 (t!212925 l!3230)))))

(declare-fun lt!911354 () (Set B!2023))

(declare-fun toList!1763 ((Set B!2023)) List!29912)

(assert (=> b!2591273 (= lt!911349 (size!23125 (toList!1763 lt!911354)))))

(declare-fun content!4153 (List!29912) (Set B!2023))

(assert (=> b!2591273 (= lt!911354 (content!4153 (t!212925 l!3230)))))

(declare-datatypes ((Unit!43732 0))(
  ( (Unit!43733) )
))
(declare-fun lt!911350 () Unit!43732)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!53 (List!29912) Unit!43732)

(assert (=> b!2591273 (= lt!911350 (lemmaNoDuplicateThenContentToListSameSize!53 (t!212925 l!3230)))))

(declare-fun b!2591274 () Bool)

(declare-fun res!1089654 () Bool)

(declare-fun e!1634658 () Bool)

(assert (=> b!2591274 (=> res!1089654 e!1634658)))

(declare-fun lt!911348 () (Set B!2023))

(assert (=> b!2591274 (= res!1089654 (not (= lt!911348 (content!4153 l!3230))))))

(declare-fun b!2591276 () Bool)

(declare-fun e!1634652 () Bool)

(assert (=> b!2591276 (= e!1634655 e!1634652)))

(declare-fun res!1089649 () Bool)

(assert (=> b!2591276 (=> res!1089649 e!1634652)))

(declare-fun lt!911352 () Int)

(assert (=> b!2591276 (= res!1089649 (not (= (size!23125 l!3230) lt!911352)))))

(assert (=> b!2591276 (= lt!911352 (+ 1 lt!911355))))

(declare-fun b!2591277 () Bool)

(declare-fun e!1634653 () Bool)

(assert (=> b!2591277 (= e!1634652 e!1634653)))

(declare-fun res!1089647 () Bool)

(assert (=> b!2591277 (=> res!1089647 e!1634653)))

(assert (=> b!2591277 (= res!1089647 (not (= (content!4153 l!3230) lt!911348)))))

(assert (=> b!2591277 (= lt!911348 (set.union lt!911354 (set.insert (h!35232 l!3230) (as set.empty (Set B!2023)))))))

(declare-fun b!2591278 () Bool)

(declare-fun e!1634657 () Bool)

(declare-fun lt!911357 () List!29912)

(declare-fun lt!911351 () B!2023)

(declare-fun contains!5362 (List!29912 B!2023) Bool)

(assert (=> b!2591278 (= e!1634657 (not (contains!5362 lt!911357 lt!911351)))))

(declare-fun b!2591279 () Bool)

(declare-fun e!1634654 () Bool)

(assert (=> b!2591279 (= e!1634654 e!1634657)))

(declare-fun res!1089650 () Bool)

(assert (=> b!2591279 (=> res!1089650 e!1634657)))

(assert (=> b!2591279 (= res!1089650 (not (contains!5362 l!3230 lt!911351)))))

(declare-fun lambda!96023 () Int)

(declare-fun getWitness!525 (List!29912 Int) B!2023)

(assert (=> b!2591279 (= lt!911351 (getWitness!525 l!3230 lambda!96023))))

(declare-fun b!2591280 () Bool)

(assert (=> b!2591280 (= e!1634653 e!1634658)))

(declare-fun res!1089648 () Bool)

(assert (=> b!2591280 (=> res!1089648 e!1634658)))

(assert (=> b!2591280 (= res!1089648 (>= (size!23125 lt!911357) lt!911352))))

(assert (=> b!2591280 (= lt!911357 (toList!1763 lt!911348))))

(declare-fun b!2591281 () Bool)

(declare-fun res!1089645 () Bool)

(assert (=> b!2591281 (=> res!1089645 e!1634655)))

(assert (=> b!2591281 (= res!1089645 (set.member (h!35232 l!3230) lt!911354))))

(declare-fun b!2591282 () Bool)

(declare-fun res!1089644 () Bool)

(assert (=> b!2591282 (=> (not res!1089644) (not e!1634659))))

(assert (=> b!2591282 (= res!1089644 (is-Cons!29812 l!3230))))

(declare-fun b!2591283 () Bool)

(declare-fun res!1089653 () Bool)

(assert (=> b!2591283 (=> res!1089653 e!1634655)))

(assert (=> b!2591283 (= res!1089653 (contains!5362 (t!212925 l!3230) (h!35232 l!3230)))))

(assert (=> b!2591275 (= e!1634658 e!1634654)))

(declare-fun res!1089651 () Bool)

(assert (=> b!2591275 (=> res!1089651 e!1634654)))

(declare-fun exists!899 (List!29912 Int) Bool)

(assert (=> b!2591275 (= res!1089651 (not (exists!899 l!3230 lambda!96023)))))

(assert (=> b!2591275 (exists!899 l!3230 lambda!96023)))

(declare-fun lt!911353 () Unit!43732)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!15 (List!29912 List!29912) Unit!43732)

(assert (=> b!2591275 (= lt!911353 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!15 l!3230 lt!911357))))

(declare-fun lt!911356 () Unit!43732)

(declare-fun subsetContains!41 (List!29912 List!29912) Unit!43732)

(assert (=> b!2591275 (= lt!911356 (subsetContains!41 lt!911357 l!3230))))

(declare-fun res!1089646 () Bool)

(assert (=> start!251058 (=> (not res!1089646) (not e!1634659))))

(declare-fun noDuplicate!360 (List!29912) Bool)

(assert (=> start!251058 (= res!1089646 (noDuplicate!360 l!3230))))

(assert (=> start!251058 e!1634659))

(assert (=> start!251058 e!1634656))

(assert (= (and start!251058 res!1089646) b!2591282))

(assert (= (and b!2591282 res!1089644) b!2591273))

(assert (= (and b!2591273 (not res!1089652)) b!2591281))

(assert (= (and b!2591281 (not res!1089645)) b!2591283))

(assert (= (and b!2591283 (not res!1089653)) b!2591276))

(assert (= (and b!2591276 (not res!1089649)) b!2591277))

(assert (= (and b!2591277 (not res!1089647)) b!2591280))

(assert (= (and b!2591280 (not res!1089648)) b!2591274))

(assert (= (and b!2591274 (not res!1089654)) b!2591275))

(assert (= (and b!2591275 (not res!1089651)) b!2591279))

(assert (= (and b!2591279 (not res!1089650)) b!2591278))

(assert (= (and start!251058 (is-Cons!29812 l!3230)) b!2591272))

(declare-fun m!2927293 () Bool)

(assert (=> start!251058 m!2927293))

(declare-fun m!2927295 () Bool)

(assert (=> b!2591274 m!2927295))

(declare-fun m!2927297 () Bool)

(assert (=> b!2591276 m!2927297))

(declare-fun m!2927299 () Bool)

(assert (=> b!2591273 m!2927299))

(assert (=> b!2591273 m!2927297))

(declare-fun m!2927301 () Bool)

(assert (=> b!2591273 m!2927301))

(declare-fun m!2927303 () Bool)

(assert (=> b!2591273 m!2927303))

(assert (=> b!2591273 m!2927299))

(declare-fun m!2927305 () Bool)

(assert (=> b!2591273 m!2927305))

(declare-fun m!2927307 () Bool)

(assert (=> b!2591273 m!2927307))

(declare-fun m!2927309 () Bool)

(assert (=> b!2591279 m!2927309))

(declare-fun m!2927311 () Bool)

(assert (=> b!2591279 m!2927311))

(declare-fun m!2927313 () Bool)

(assert (=> b!2591275 m!2927313))

(assert (=> b!2591275 m!2927313))

(declare-fun m!2927315 () Bool)

(assert (=> b!2591275 m!2927315))

(declare-fun m!2927317 () Bool)

(assert (=> b!2591275 m!2927317))

(declare-fun m!2927319 () Bool)

(assert (=> b!2591280 m!2927319))

(declare-fun m!2927321 () Bool)

(assert (=> b!2591280 m!2927321))

(declare-fun m!2927323 () Bool)

(assert (=> b!2591278 m!2927323))

(assert (=> b!2591277 m!2927295))

(declare-fun m!2927325 () Bool)

(assert (=> b!2591277 m!2927325))

(declare-fun m!2927327 () Bool)

(assert (=> b!2591283 m!2927327))

(declare-fun m!2927329 () Bool)

(assert (=> b!2591281 m!2927329))

(push 1)

(assert (not b!2591274))

(assert (not b!2591278))

(assert (not b!2591276))

(assert tp_is_empty!13303)

(assert (not b!2591279))

(assert (not b!2591280))

(assert (not start!251058))

(assert (not b!2591275))

(assert (not b!2591277))

(assert (not b!2591283))

(assert (not b!2591272))

(assert (not b!2591273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734068 () Bool)

(declare-fun lt!911393 () Int)

(assert (=> d!734068 (>= lt!911393 0)))

(declare-fun e!1634698 () Int)

(assert (=> d!734068 (= lt!911393 e!1634698)))

(declare-fun c!417737 () Bool)

(assert (=> d!734068 (= c!417737 (is-Nil!29812 l!3230))))

(assert (=> d!734068 (= (size!23125 l!3230) lt!911393)))

(declare-fun b!2591334 () Bool)

(assert (=> b!2591334 (= e!1634698 0)))

(declare-fun b!2591335 () Bool)

(assert (=> b!2591335 (= e!1634698 (+ 1 (size!23125 (t!212925 l!3230))))))

(assert (= (and d!734068 c!417737) b!2591334))

(assert (= (and d!734068 (not c!417737)) b!2591335))

(assert (=> b!2591335 m!2927301))

(assert (=> b!2591276 d!734068))

(declare-fun bs!472169 () Bool)

(declare-fun d!734072 () Bool)

(assert (= bs!472169 (and d!734072 b!2591275)))

(declare-fun lambda!96034 () Int)

(assert (=> bs!472169 (not (= lambda!96034 lambda!96023))))

(assert (=> d!734072 true))

(declare-fun order!15865 () Int)

(declare-fun dynLambda!12607 (Int Int) Int)

(assert (=> d!734072 (< (dynLambda!12607 order!15865 lambda!96023) (dynLambda!12607 order!15865 lambda!96034))))

(declare-fun forall!6075 (List!29912 Int) Bool)

(assert (=> d!734072 (= (exists!899 l!3230 lambda!96023) (not (forall!6075 l!3230 lambda!96034)))))

(declare-fun bs!472170 () Bool)

(assert (= bs!472170 d!734072))

(declare-fun m!2927375 () Bool)

(assert (=> bs!472170 m!2927375))

(assert (=> b!2591275 d!734072))

(declare-fun bs!472173 () Bool)

(declare-fun d!734074 () Bool)

(assert (= bs!472173 (and d!734074 b!2591275)))

(declare-fun lambda!96039 () Int)

(assert (=> bs!472173 (= lambda!96039 lambda!96023)))

(declare-fun bs!472174 () Bool)

(assert (= bs!472174 (and d!734074 d!734072)))

(assert (=> bs!472174 (not (= lambda!96039 lambda!96034))))

(assert (=> d!734074 true))

(assert (=> d!734074 (exists!899 l!3230 lambda!96039)))

(declare-fun lt!911396 () Unit!43732)

(declare-fun choose!15306 (List!29912 List!29912) Unit!43732)

(assert (=> d!734074 (= lt!911396 (choose!15306 l!3230 lt!911357))))

(assert (=> d!734074 (noDuplicate!360 l!3230)))

(assert (=> d!734074 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!15 l!3230 lt!911357) lt!911396)))

(declare-fun bs!472175 () Bool)

(assert (= bs!472175 d!734074))

(declare-fun m!2927379 () Bool)

(assert (=> bs!472175 m!2927379))

(declare-fun m!2927381 () Bool)

(assert (=> bs!472175 m!2927381))

(assert (=> bs!472175 m!2927293))

(assert (=> b!2591275 d!734074))

(declare-fun bs!472176 () Bool)

(declare-fun d!734078 () Bool)

(assert (= bs!472176 (and d!734078 b!2591275)))

(declare-fun lambda!96042 () Int)

(assert (=> bs!472176 (not (= lambda!96042 lambda!96023))))

(declare-fun bs!472177 () Bool)

(assert (= bs!472177 (and d!734078 d!734072)))

(assert (=> bs!472177 (not (= lambda!96042 lambda!96034))))

(declare-fun bs!472178 () Bool)

(assert (= bs!472178 (and d!734078 d!734074)))

(assert (=> bs!472178 (not (= lambda!96042 lambda!96039))))

(assert (=> d!734078 true))

(assert (=> d!734078 (forall!6075 lt!911357 lambda!96042)))

(declare-fun lt!911399 () Unit!43732)

(declare-fun choose!15307 (List!29912 List!29912) Unit!43732)

(assert (=> d!734078 (= lt!911399 (choose!15307 lt!911357 l!3230))))

(assert (=> d!734078 (set.subset (content!4153 lt!911357) (content!4153 l!3230))))

(assert (=> d!734078 (= (subsetContains!41 lt!911357 l!3230) lt!911399)))

(declare-fun bs!472179 () Bool)

(assert (= bs!472179 d!734078))

(declare-fun m!2927383 () Bool)

(assert (=> bs!472179 m!2927383))

(declare-fun m!2927385 () Bool)

(assert (=> bs!472179 m!2927385))

(declare-fun m!2927387 () Bool)

(assert (=> bs!472179 m!2927387))

(assert (=> bs!472179 m!2927295))

(assert (=> b!2591275 d!734078))

(declare-fun d!734080 () Bool)

(declare-fun c!417740 () Bool)

(assert (=> d!734080 (= c!417740 (is-Nil!29812 l!3230))))

(declare-fun e!1634705 () (Set B!2023))

(assert (=> d!734080 (= (content!4153 l!3230) e!1634705)))

(declare-fun b!2591344 () Bool)

(assert (=> b!2591344 (= e!1634705 (as set.empty (Set B!2023)))))

(declare-fun b!2591345 () Bool)

(assert (=> b!2591345 (= e!1634705 (set.union (set.insert (h!35232 l!3230) (as set.empty (Set B!2023))) (content!4153 (t!212925 l!3230))))))

(assert (= (and d!734080 c!417740) b!2591344))

(assert (= (and d!734080 (not c!417740)) b!2591345))

(assert (=> b!2591345 m!2927325))

(assert (=> b!2591345 m!2927303))

(assert (=> b!2591277 d!734080))

(declare-fun d!734082 () Bool)

(declare-fun e!1634708 () Bool)

(assert (=> d!734082 e!1634708))

(declare-fun res!1089696 () Bool)

(assert (=> d!734082 (=> (not res!1089696) (not e!1634708))))

(declare-fun lt!911405 () List!29912)

(assert (=> d!734082 (= res!1089696 (noDuplicate!360 lt!911405))))

(declare-fun choose!15308 ((Set B!2023)) List!29912)

(assert (=> d!734082 (= lt!911405 (choose!15308 lt!911354))))

(assert (=> d!734082 (= (toList!1763 lt!911354) lt!911405)))

(declare-fun b!2591348 () Bool)

(assert (=> b!2591348 (= e!1634708 (= (content!4153 lt!911405) lt!911354))))

(assert (= (and d!734082 res!1089696) b!2591348))

(declare-fun m!2927389 () Bool)

(assert (=> d!734082 m!2927389))

(declare-fun m!2927391 () Bool)

(assert (=> d!734082 m!2927391))

(declare-fun m!2927393 () Bool)

(assert (=> b!2591348 m!2927393))

(assert (=> b!2591273 d!734082))

(assert (=> b!2591273 d!734068))

(declare-fun d!734084 () Bool)

(declare-fun lt!911406 () Int)

(assert (=> d!734084 (>= lt!911406 0)))

(declare-fun e!1634709 () Int)

(assert (=> d!734084 (= lt!911406 e!1634709)))

(declare-fun c!417741 () Bool)

(assert (=> d!734084 (= c!417741 (is-Nil!29812 (t!212925 l!3230)))))

(assert (=> d!734084 (= (size!23125 (t!212925 l!3230)) lt!911406)))

(declare-fun b!2591349 () Bool)

(assert (=> b!2591349 (= e!1634709 0)))

(declare-fun b!2591350 () Bool)

(assert (=> b!2591350 (= e!1634709 (+ 1 (size!23125 (t!212925 (t!212925 l!3230)))))))

(assert (= (and d!734084 c!417741) b!2591349))

(assert (= (and d!734084 (not c!417741)) b!2591350))

(declare-fun m!2927395 () Bool)

(assert (=> b!2591350 m!2927395))

(assert (=> b!2591273 d!734084))

(declare-fun d!734086 () Bool)

(declare-fun c!417742 () Bool)

(assert (=> d!734086 (= c!417742 (is-Nil!29812 (t!212925 l!3230)))))

(declare-fun e!1634710 () (Set B!2023))

(assert (=> d!734086 (= (content!4153 (t!212925 l!3230)) e!1634710)))

(declare-fun b!2591351 () Bool)

(assert (=> b!2591351 (= e!1634710 (as set.empty (Set B!2023)))))

(declare-fun b!2591352 () Bool)

(assert (=> b!2591352 (= e!1634710 (set.union (set.insert (h!35232 (t!212925 l!3230)) (as set.empty (Set B!2023))) (content!4153 (t!212925 (t!212925 l!3230)))))))

(assert (= (and d!734086 c!417742) b!2591351))

(assert (= (and d!734086 (not c!417742)) b!2591352))

(declare-fun m!2927401 () Bool)

(assert (=> b!2591352 m!2927401))

(declare-fun m!2927403 () Bool)

(assert (=> b!2591352 m!2927403))

(assert (=> b!2591273 d!734086))

(declare-fun d!734088 () Bool)

(assert (=> d!734088 (= (size!23125 (toList!1763 (content!4153 (t!212925 l!3230)))) (size!23125 (t!212925 l!3230)))))

(declare-fun lt!911409 () Unit!43732)

(declare-fun choose!15309 (List!29912) Unit!43732)

(assert (=> d!734088 (= lt!911409 (choose!15309 (t!212925 l!3230)))))

(assert (=> d!734088 (noDuplicate!360 (t!212925 l!3230))))

(assert (=> d!734088 (= (lemmaNoDuplicateThenContentToListSameSize!53 (t!212925 l!3230)) lt!911409)))

(declare-fun bs!472183 () Bool)

(assert (= bs!472183 d!734088))

(assert (=> bs!472183 m!2927303))

(declare-fun m!2927405 () Bool)

(assert (=> bs!472183 m!2927405))

(assert (=> bs!472183 m!2927405))

(declare-fun m!2927407 () Bool)

(assert (=> bs!472183 m!2927407))

(declare-fun m!2927409 () Bool)

(assert (=> bs!472183 m!2927409))

(assert (=> bs!472183 m!2927301))

(declare-fun m!2927411 () Bool)

(assert (=> bs!472183 m!2927411))

(assert (=> bs!472183 m!2927303))

(assert (=> b!2591273 d!734088))

(declare-fun d!734092 () Bool)

(declare-fun lt!911410 () Int)

(assert (=> d!734092 (>= lt!911410 0)))

(declare-fun e!1634711 () Int)

(assert (=> d!734092 (= lt!911410 e!1634711)))

(declare-fun c!417743 () Bool)

(assert (=> d!734092 (= c!417743 (is-Nil!29812 (toList!1763 lt!911354)))))

(assert (=> d!734092 (= (size!23125 (toList!1763 lt!911354)) lt!911410)))

(declare-fun b!2591353 () Bool)

(assert (=> b!2591353 (= e!1634711 0)))

(declare-fun b!2591354 () Bool)

(assert (=> b!2591354 (= e!1634711 (+ 1 (size!23125 (t!212925 (toList!1763 lt!911354)))))))

(assert (= (and d!734092 c!417743) b!2591353))

(assert (= (and d!734092 (not c!417743)) b!2591354))

(declare-fun m!2927413 () Bool)

(assert (=> b!2591354 m!2927413))

(assert (=> b!2591273 d!734092))

(declare-fun d!734094 () Bool)

(declare-fun lt!911415 () Bool)

(assert (=> d!734094 (= lt!911415 (set.member lt!911351 (content!4153 lt!911357)))))

(declare-fun e!1634717 () Bool)

(assert (=> d!734094 (= lt!911415 e!1634717)))

(declare-fun res!1089702 () Bool)

(assert (=> d!734094 (=> (not res!1089702) (not e!1634717))))

(assert (=> d!734094 (= res!1089702 (is-Cons!29812 lt!911357))))

(assert (=> d!734094 (= (contains!5362 lt!911357 lt!911351) lt!911415)))

(declare-fun b!2591359 () Bool)

(declare-fun e!1634716 () Bool)

(assert (=> b!2591359 (= e!1634717 e!1634716)))

(declare-fun res!1089701 () Bool)

(assert (=> b!2591359 (=> res!1089701 e!1634716)))

(assert (=> b!2591359 (= res!1089701 (= (h!35232 lt!911357) lt!911351))))

(declare-fun b!2591360 () Bool)

(assert (=> b!2591360 (= e!1634716 (contains!5362 (t!212925 lt!911357) lt!911351))))

(assert (= (and d!734094 res!1089702) b!2591359))

(assert (= (and b!2591359 (not res!1089701)) b!2591360))

(assert (=> d!734094 m!2927387))

(declare-fun m!2927415 () Bool)

(assert (=> d!734094 m!2927415))

(declare-fun m!2927417 () Bool)

(assert (=> b!2591360 m!2927417))

(assert (=> b!2591278 d!734094))

(declare-fun d!734096 () Bool)

(declare-fun lt!911416 () Bool)

(assert (=> d!734096 (= lt!911416 (set.member (h!35232 l!3230) (content!4153 (t!212925 l!3230))))))

(declare-fun e!1634719 () Bool)

(assert (=> d!734096 (= lt!911416 e!1634719)))

(declare-fun res!1089704 () Bool)

(assert (=> d!734096 (=> (not res!1089704) (not e!1634719))))

(assert (=> d!734096 (= res!1089704 (is-Cons!29812 (t!212925 l!3230)))))

(assert (=> d!734096 (= (contains!5362 (t!212925 l!3230) (h!35232 l!3230)) lt!911416)))

(declare-fun b!2591361 () Bool)

(declare-fun e!1634718 () Bool)

(assert (=> b!2591361 (= e!1634719 e!1634718)))

(declare-fun res!1089703 () Bool)

(assert (=> b!2591361 (=> res!1089703 e!1634718)))

(assert (=> b!2591361 (= res!1089703 (= (h!35232 (t!212925 l!3230)) (h!35232 l!3230)))))

(declare-fun b!2591362 () Bool)

(assert (=> b!2591362 (= e!1634718 (contains!5362 (t!212925 (t!212925 l!3230)) (h!35232 l!3230)))))

(assert (= (and d!734096 res!1089704) b!2591361))

(assert (= (and b!2591361 (not res!1089703)) b!2591362))

(assert (=> d!734096 m!2927303))

(declare-fun m!2927419 () Bool)

(assert (=> d!734096 m!2927419))

(declare-fun m!2927421 () Bool)

(assert (=> b!2591362 m!2927421))

(assert (=> b!2591283 d!734096))

(declare-fun d!734098 () Bool)

(declare-fun res!1089709 () Bool)

(declare-fun e!1634724 () Bool)

(assert (=> d!734098 (=> res!1089709 e!1634724)))

(assert (=> d!734098 (= res!1089709 (is-Nil!29812 l!3230))))

(assert (=> d!734098 (= (noDuplicate!360 l!3230) e!1634724)))

(declare-fun b!2591367 () Bool)

(declare-fun e!1634725 () Bool)

(assert (=> b!2591367 (= e!1634724 e!1634725)))

(declare-fun res!1089710 () Bool)

(assert (=> b!2591367 (=> (not res!1089710) (not e!1634725))))

(assert (=> b!2591367 (= res!1089710 (not (contains!5362 (t!212925 l!3230) (h!35232 l!3230))))))

(declare-fun b!2591368 () Bool)

(assert (=> b!2591368 (= e!1634725 (noDuplicate!360 (t!212925 l!3230)))))

(assert (= (and d!734098 (not res!1089709)) b!2591367))

(assert (= (and b!2591367 res!1089710) b!2591368))

(assert (=> b!2591367 m!2927327))

(assert (=> b!2591368 m!2927409))

(assert (=> start!251058 d!734098))

(declare-fun d!734100 () Bool)

(declare-fun lt!911418 () Int)

(assert (=> d!734100 (>= lt!911418 0)))

(declare-fun e!1634726 () Int)

(assert (=> d!734100 (= lt!911418 e!1634726)))

(declare-fun c!417744 () Bool)

(assert (=> d!734100 (= c!417744 (is-Nil!29812 lt!911357))))

(assert (=> d!734100 (= (size!23125 lt!911357) lt!911418)))

(declare-fun b!2591369 () Bool)

(assert (=> b!2591369 (= e!1634726 0)))

(declare-fun b!2591370 () Bool)

(assert (=> b!2591370 (= e!1634726 (+ 1 (size!23125 (t!212925 lt!911357))))))

(assert (= (and d!734100 c!417744) b!2591369))

(assert (= (and d!734100 (not c!417744)) b!2591370))

(declare-fun m!2927425 () Bool)

(assert (=> b!2591370 m!2927425))

(assert (=> b!2591280 d!734100))

(declare-fun d!734102 () Bool)

(declare-fun e!1634727 () Bool)

(assert (=> d!734102 e!1634727))

(declare-fun res!1089711 () Bool)

(assert (=> d!734102 (=> (not res!1089711) (not e!1634727))))

(declare-fun lt!911419 () List!29912)

(assert (=> d!734102 (= res!1089711 (noDuplicate!360 lt!911419))))

(assert (=> d!734102 (= lt!911419 (choose!15308 lt!911348))))

(assert (=> d!734102 (= (toList!1763 lt!911348) lt!911419)))

(declare-fun b!2591371 () Bool)

(assert (=> b!2591371 (= e!1634727 (= (content!4153 lt!911419) lt!911348))))

(assert (= (and d!734102 res!1089711) b!2591371))

(declare-fun m!2927429 () Bool)

(assert (=> d!734102 m!2927429))

(declare-fun m!2927431 () Bool)

(assert (=> d!734102 m!2927431))

(declare-fun m!2927433 () Bool)

(assert (=> b!2591371 m!2927433))

(assert (=> b!2591280 d!734102))

(assert (=> b!2591274 d!734080))

(declare-fun d!734106 () Bool)

(declare-fun lt!911420 () Bool)

(assert (=> d!734106 (= lt!911420 (set.member lt!911351 (content!4153 l!3230)))))

(declare-fun e!1634729 () Bool)

(assert (=> d!734106 (= lt!911420 e!1634729)))

(declare-fun res!1089713 () Bool)

(assert (=> d!734106 (=> (not res!1089713) (not e!1634729))))

(assert (=> d!734106 (= res!1089713 (is-Cons!29812 l!3230))))

(assert (=> d!734106 (= (contains!5362 l!3230 lt!911351) lt!911420)))

(declare-fun b!2591372 () Bool)

(declare-fun e!1634728 () Bool)

(assert (=> b!2591372 (= e!1634729 e!1634728)))

(declare-fun res!1089712 () Bool)

(assert (=> b!2591372 (=> res!1089712 e!1634728)))

(assert (=> b!2591372 (= res!1089712 (= (h!35232 l!3230) lt!911351))))

(declare-fun b!2591373 () Bool)

(assert (=> b!2591373 (= e!1634728 (contains!5362 (t!212925 l!3230) lt!911351))))

(assert (= (and d!734106 res!1089713) b!2591372))

(assert (= (and b!2591372 (not res!1089712)) b!2591373))

(assert (=> d!734106 m!2927295))

(declare-fun m!2927435 () Bool)

(assert (=> d!734106 m!2927435))

(declare-fun m!2927437 () Bool)

(assert (=> b!2591373 m!2927437))

(assert (=> b!2591279 d!734106))

(declare-fun b!2591394 () Bool)

(declare-fun e!1634745 () Bool)

(declare-fun lt!911430 () B!2023)

(assert (=> b!2591394 (= e!1634745 (contains!5362 l!3230 lt!911430))))

(declare-fun b!2591395 () Bool)

(declare-fun lt!911429 () Unit!43732)

(declare-fun Unit!43736 () Unit!43732)

(assert (=> b!2591395 (= lt!911429 Unit!43736)))

(assert (=> b!2591395 false))

(declare-fun e!1634744 () B!2023)

(declare-fun head!5867 (List!29912) B!2023)

(assert (=> b!2591395 (= e!1634744 (head!5867 l!3230))))

(declare-fun b!2591396 () Bool)

(declare-fun e!1634746 () B!2023)

(assert (=> b!2591396 (= e!1634746 (h!35232 l!3230))))

(declare-fun b!2591397 () Bool)

(declare-fun e!1634743 () Bool)

(declare-fun dynLambda!12608 (Int B!2023) Bool)

(assert (=> b!2591397 (= e!1634743 (dynLambda!12608 lambda!96023 (h!35232 l!3230)))))

(declare-fun d!734108 () Bool)

(assert (=> d!734108 e!1634745))

(declare-fun res!1089720 () Bool)

(assert (=> d!734108 (=> (not res!1089720) (not e!1634745))))

(assert (=> d!734108 (= res!1089720 (dynLambda!12608 lambda!96023 lt!911430))))

(assert (=> d!734108 (= lt!911430 e!1634746)))

(declare-fun c!417752 () Bool)

(assert (=> d!734108 (= c!417752 e!1634743)))

(declare-fun res!1089721 () Bool)

(assert (=> d!734108 (=> (not res!1089721) (not e!1634743))))

(assert (=> d!734108 (= res!1089721 (is-Cons!29812 l!3230))))

(assert (=> d!734108 (exists!899 l!3230 lambda!96023)))

(assert (=> d!734108 (= (getWitness!525 l!3230 lambda!96023) lt!911430)))

(declare-fun b!2591398 () Bool)

(assert (=> b!2591398 (= e!1634746 e!1634744)))

(declare-fun c!417753 () Bool)

(assert (=> b!2591398 (= c!417753 (is-Cons!29812 l!3230))))

(declare-fun b!2591399 () Bool)

(assert (=> b!2591399 (= e!1634744 (getWitness!525 (t!212925 l!3230) lambda!96023))))

(assert (= (and d!734108 res!1089721) b!2591397))

(assert (= (and d!734108 c!417752) b!2591396))

(assert (= (and d!734108 (not c!417752)) b!2591398))

(assert (= (and b!2591398 c!417753) b!2591399))

(assert (= (and b!2591398 (not c!417753)) b!2591395))

(assert (= (and d!734108 res!1089720) b!2591394))

(declare-fun b_lambda!77115 () Bool)

(assert (=> (not b_lambda!77115) (not b!2591397)))

(declare-fun b_lambda!77117 () Bool)

(assert (=> (not b_lambda!77117) (not d!734108)))

(declare-fun m!2927445 () Bool)

(assert (=> b!2591397 m!2927445))

(declare-fun m!2927447 () Bool)

(assert (=> b!2591394 m!2927447))

(declare-fun m!2927449 () Bool)

(assert (=> b!2591395 m!2927449))

(declare-fun m!2927451 () Bool)

(assert (=> b!2591399 m!2927451))

(declare-fun m!2927453 () Bool)

(assert (=> d!734108 m!2927453))

(assert (=> d!734108 m!2927313))

(assert (=> b!2591279 d!734108))

(declare-fun b!2591404 () Bool)

(declare-fun e!1634749 () Bool)

(declare-fun tp!822695 () Bool)

(assert (=> b!2591404 (= e!1634749 (and tp_is_empty!13303 tp!822695))))

(assert (=> b!2591272 (= tp!822689 e!1634749)))

(assert (= (and b!2591272 (is-Cons!29812 (t!212925 l!3230))) b!2591404))

(declare-fun b_lambda!77119 () Bool)

(assert (= b_lambda!77115 (or b!2591275 b_lambda!77119)))

(declare-fun bs!472188 () Bool)

(declare-fun d!734114 () Bool)

(assert (= bs!472188 (and d!734114 b!2591275)))

(assert (=> bs!472188 (= (dynLambda!12608 lambda!96023 (h!35232 l!3230)) (not (contains!5362 lt!911357 (h!35232 l!3230))))))

(declare-fun m!2927455 () Bool)

(assert (=> bs!472188 m!2927455))

(assert (=> b!2591397 d!734114))

(declare-fun b_lambda!77121 () Bool)

(assert (= b_lambda!77117 (or b!2591275 b_lambda!77121)))

(declare-fun bs!472189 () Bool)

(declare-fun d!734116 () Bool)

(assert (= bs!472189 (and d!734116 b!2591275)))

(assert (=> bs!472189 (= (dynLambda!12608 lambda!96023 lt!911430) (not (contains!5362 lt!911357 lt!911430)))))

(declare-fun m!2927457 () Bool)

(assert (=> bs!472189 m!2927457))

(assert (=> d!734108 d!734116))

(push 1)

(assert (not b!2591367))

(assert (not d!734108))

(assert tp_is_empty!13303)

(assert (not d!734072))

(assert (not b!2591360))

(assert (not b!2591373))

(assert (not b!2591370))

(assert (not b!2591404))

(assert (not b!2591362))

(assert (not d!734082))

(assert (not b!2591371))

(assert (not b_lambda!77121))

(assert (not b!2591394))

(assert (not b!2591368))

(assert (not b!2591335))

(assert (not d!734088))

(assert (not b!2591350))

(assert (not d!734096))

(assert (not b!2591345))

(assert (not b_lambda!77119))

(assert (not b!2591348))

(assert (not d!734078))

(assert (not b!2591395))

(assert (not d!734094))

(assert (not d!734106))

(assert (not d!734102))

(assert (not bs!472189))

(assert (not b!2591352))

(assert (not b!2591399))

(assert (not b!2591354))

(assert (not bs!472188))

(assert (not d!734074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

