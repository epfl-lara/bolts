; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106598 () Bool)

(assert start!106598)

(declare-datatypes ((B!2004 0))(
  ( (B!2005 (val!16337 Int)) )
))
(declare-datatypes ((tuple2!21342 0))(
  ( (tuple2!21343 (_1!10681 (_ BitVec 64)) (_2!10681 B!2004)) )
))
(declare-datatypes ((List!28504 0))(
  ( (Nil!28501) (Cons!28500 (h!29709 tuple2!21342) (t!42035 List!28504)) )
))
(declare-fun l!706 () List!28504)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun v1!26 () B!2004)

(declare-fun e!721290 () Bool)

(declare-fun b!1266340 () Bool)

(declare-fun removeStrictlySorted!161 (List!28504 (_ BitVec 64)) List!28504)

(declare-fun insertStrictlySorted!470 (List!28504 (_ BitVec 64) B!2004) List!28504)

(assert (=> b!1266340 (= e!721290 (not (= (removeStrictlySorted!161 (insertStrictlySorted!470 l!706 key1!31 v1!26) key1!31) l!706)))))

(declare-fun b!1266341 () Bool)

(declare-fun e!721291 () Bool)

(declare-fun tp_is_empty!32537 () Bool)

(declare-fun tp!96438 () Bool)

(assert (=> b!1266341 (= e!721291 (and tp_is_empty!32537 tp!96438))))

(declare-fun b!1266338 () Bool)

(declare-fun res!843173 () Bool)

(assert (=> b!1266338 (=> (not res!843173) (not e!721290))))

(declare-fun containsKey!661 (List!28504 (_ BitVec 64)) Bool)

(assert (=> b!1266338 (= res!843173 (not (containsKey!661 l!706 key1!31)))))

(declare-fun res!843175 () Bool)

(assert (=> start!106598 (=> (not res!843175) (not e!721290))))

(declare-fun isStrictlySorted!800 (List!28504) Bool)

(assert (=> start!106598 (= res!843175 (isStrictlySorted!800 l!706))))

(assert (=> start!106598 e!721290))

(assert (=> start!106598 e!721291))

(assert (=> start!106598 true))

(assert (=> start!106598 tp_is_empty!32537))

(declare-fun b!1266339 () Bool)

(declare-fun res!843174 () Bool)

(assert (=> b!1266339 (=> (not res!843174) (not e!721290))))

(assert (=> b!1266339 (= res!843174 (not (is-Cons!28500 l!706)))))

(assert (= (and start!106598 res!843175) b!1266338))

(assert (= (and b!1266338 res!843173) b!1266339))

(assert (= (and b!1266339 res!843174) b!1266340))

(assert (= (and start!106598 (is-Cons!28500 l!706)) b!1266341))

(declare-fun m!1166137 () Bool)

(assert (=> b!1266340 m!1166137))

(assert (=> b!1266340 m!1166137))

(declare-fun m!1166139 () Bool)

(assert (=> b!1266340 m!1166139))

(declare-fun m!1166141 () Bool)

(assert (=> b!1266338 m!1166141))

(declare-fun m!1166143 () Bool)

(assert (=> start!106598 m!1166143))

(push 1)

(assert (not b!1266341))

(assert (not b!1266338))

(assert (not b!1266340))

(assert tp_is_empty!32537)

(assert (not start!106598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139139 () Bool)

(declare-fun res!843186 () Bool)

(declare-fun e!721302 () Bool)

(assert (=> d!139139 (=> res!843186 e!721302)))

(assert (=> d!139139 (= res!843186 (and (is-Cons!28500 l!706) (= (_1!10681 (h!29709 l!706)) key1!31)))))

(assert (=> d!139139 (= (containsKey!661 l!706 key1!31) e!721302)))

(declare-fun b!1266352 () Bool)

(declare-fun e!721303 () Bool)

(assert (=> b!1266352 (= e!721302 e!721303)))

(declare-fun res!843187 () Bool)

(assert (=> b!1266352 (=> (not res!843187) (not e!721303))))

(assert (=> b!1266352 (= res!843187 (and (or (not (is-Cons!28500 l!706)) (bvsle (_1!10681 (h!29709 l!706)) key1!31)) (is-Cons!28500 l!706) (bvslt (_1!10681 (h!29709 l!706)) key1!31)))))

(declare-fun b!1266353 () Bool)

(assert (=> b!1266353 (= e!721303 (containsKey!661 (t!42035 l!706) key1!31))))

(assert (= (and d!139139 (not res!843186)) b!1266352))

(assert (= (and b!1266352 res!843187) b!1266353))

(declare-fun m!1166147 () Bool)

(assert (=> b!1266353 m!1166147))

(assert (=> b!1266338 d!139139))

(declare-fun b!1266394 () Bool)

(declare-fun e!721329 () Bool)

(declare-fun lt!574079 () List!28504)

(assert (=> b!1266394 (= e!721329 (not (containsKey!661 lt!574079 key1!31)))))

(declare-fun b!1266395 () Bool)

(declare-fun e!721330 () List!28504)

(assert (=> b!1266395 (= e!721330 Nil!28501)))

(declare-fun b!1266396 () Bool)

(declare-fun e!721328 () List!28504)

(assert (=> b!1266396 (= e!721328 (t!42035 (insertStrictlySorted!470 l!706 key1!31 v1!26)))))

(declare-fun d!139145 () Bool)

(assert (=> d!139145 e!721329))

(declare-fun res!843196 () Bool)

(assert (=> d!139145 (=> (not res!843196) (not e!721329))))

(assert (=> d!139145 (= res!843196 (isStrictlySorted!800 lt!574079))))

(assert (=> d!139145 (= lt!574079 e!721328)))

(declare-fun c!123397 () Bool)

(assert (=> d!139145 (= c!123397 (and (is-Cons!28500 (insertStrictlySorted!470 l!706 key1!31 v1!26)) (= (_1!10681 (h!29709 (insertStrictlySorted!470 l!706 key1!31 v1!26))) key1!31)))))

(assert (=> d!139145 (isStrictlySorted!800 (insertStrictlySorted!470 l!706 key1!31 v1!26))))

(assert (=> d!139145 (= (removeStrictlySorted!161 (insertStrictlySorted!470 l!706 key1!31 v1!26) key1!31) lt!574079)))

(declare-fun b!1266397 () Bool)

(declare-fun $colon$colon!647 (List!28504 tuple2!21342) List!28504)

(assert (=> b!1266397 (= e!721330 ($colon$colon!647 (removeStrictlySorted!161 (t!42035 (insertStrictlySorted!470 l!706 key1!31 v1!26)) key1!31) (h!29709 (insertStrictlySorted!470 l!706 key1!31 v1!26))))))

(declare-fun b!1266398 () Bool)

(assert (=> b!1266398 (= e!721328 e!721330)))

(declare-fun c!123396 () Bool)

(assert (=> b!1266398 (= c!123396 (and (is-Cons!28500 (insertStrictlySorted!470 l!706 key1!31 v1!26)) (not (= (_1!10681 (h!29709 (insertStrictlySorted!470 l!706 key1!31 v1!26))) key1!31))))))

(assert (= (and d!139145 c!123397) b!1266396))

(assert (= (and d!139145 (not c!123397)) b!1266398))

(assert (= (and b!1266398 c!123396) b!1266397))

(assert (= (and b!1266398 (not c!123396)) b!1266395))

(assert (= (and d!139145 res!843196) b!1266394))

(declare-fun m!1166169 () Bool)

(assert (=> b!1266394 m!1166169))

(declare-fun m!1166171 () Bool)

(assert (=> d!139145 m!1166171))

(assert (=> d!139145 m!1166137))

(declare-fun m!1166173 () Bool)

(assert (=> d!139145 m!1166173))

(declare-fun m!1166175 () Bool)

(assert (=> b!1266397 m!1166175))

(assert (=> b!1266397 m!1166175))

(declare-fun m!1166177 () Bool)

(assert (=> b!1266397 m!1166177))

(assert (=> b!1266340 d!139145))

(declare-fun c!123433 () Bool)

(declare-fun bm!62485 () Bool)

(declare-fun call!62489 () List!28504)

(declare-fun e!721375 () List!28504)

(assert (=> bm!62485 (= call!62489 ($colon$colon!647 e!721375 (ite c!123433 (h!29709 l!706) (tuple2!21343 key1!31 v1!26))))))

(declare-fun c!123432 () Bool)

(assert (=> bm!62485 (= c!123432 c!123433)))

(declare-fun b!1266483 () Bool)

(declare-fun res!843217 () Bool)

(declare-fun e!721379 () Bool)

(assert (=> b!1266483 (=> (not res!843217) (not e!721379))))

(declare-fun lt!574088 () List!28504)

(assert (=> b!1266483 (= res!843217 (containsKey!661 lt!574088 key1!31))))

(declare-fun b!1266484 () Bool)

(assert (=> b!1266484 (= e!721375 (insertStrictlySorted!470 (t!42035 l!706) key1!31 v1!26))))

(declare-fun d!139151 () Bool)

(assert (=> d!139151 e!721379))

(declare-fun res!843218 () Bool)

(assert (=> d!139151 (=> (not res!843218) (not e!721379))))

(assert (=> d!139151 (= res!843218 (isStrictlySorted!800 lt!574088))))

(declare-fun e!721376 () List!28504)

(assert (=> d!139151 (= lt!574088 e!721376)))

(assert (=> d!139151 (= c!123433 (and (is-Cons!28500 l!706) (bvslt (_1!10681 (h!29709 l!706)) key1!31)))))

(assert (=> d!139151 (isStrictlySorted!800 l!706)))

(assert (=> d!139151 (= (insertStrictlySorted!470 l!706 key1!31 v1!26) lt!574088)))

(declare-fun b!1266485 () Bool)

(declare-fun e!721378 () List!28504)

(declare-fun call!62488 () List!28504)

(assert (=> b!1266485 (= e!721378 call!62488)))

(declare-fun b!1266486 () Bool)

(declare-fun contains!7662 (List!28504 tuple2!21342) Bool)

(assert (=> b!1266486 (= e!721379 (contains!7662 lt!574088 (tuple2!21343 key1!31 v1!26)))))

(declare-fun b!1266487 () Bool)

(declare-fun e!721377 () List!28504)

(declare-fun call!62490 () List!28504)

(assert (=> b!1266487 (= e!721377 call!62490)))

(declare-fun bm!62486 () Bool)

(assert (=> bm!62486 (= call!62488 call!62490)))

(declare-fun b!1266488 () Bool)

(assert (=> b!1266488 (= e!721376 e!721377)))

(declare-fun c!123430 () Bool)

(assert (=> b!1266488 (= c!123430 (and (is-Cons!28500 l!706) (= (_1!10681 (h!29709 l!706)) key1!31)))))

(declare-fun b!1266489 () Bool)

(declare-fun c!123431 () Bool)

(assert (=> b!1266489 (= c!123431 (and (is-Cons!28500 l!706) (bvsgt (_1!10681 (h!29709 l!706)) key1!31)))))

(assert (=> b!1266489 (= e!721377 e!721378)))

(declare-fun bm!62487 () Bool)

(assert (=> bm!62487 (= call!62490 call!62489)))

(declare-fun b!1266490 () Bool)

(assert (=> b!1266490 (= e!721376 call!62489)))

(declare-fun b!1266491 () Bool)

(assert (=> b!1266491 (= e!721375 (ite c!123430 (t!42035 l!706) (ite c!123431 (Cons!28500 (h!29709 l!706) (t!42035 l!706)) Nil!28501)))))

(declare-fun b!1266492 () Bool)

(assert (=> b!1266492 (= e!721378 call!62488)))

(assert (= (and d!139151 c!123433) b!1266490))

(assert (= (and d!139151 (not c!123433)) b!1266488))

(assert (= (and b!1266488 c!123430) b!1266487))

(assert (= (and b!1266488 (not c!123430)) b!1266489))

(assert (= (and b!1266489 c!123431) b!1266485))

(assert (= (and b!1266489 (not c!123431)) b!1266492))

(assert (= (or b!1266485 b!1266492) bm!62486))

(assert (= (or b!1266487 bm!62486) bm!62487))

(assert (= (or b!1266490 bm!62487) bm!62485))

(assert (= (and bm!62485 c!123432) b!1266484))

(assert (= (and bm!62485 (not c!123432)) b!1266491))

(assert (= (and d!139151 res!843218) b!1266483))

(assert (= (and b!1266483 res!843217) b!1266486))

(declare-fun m!1166199 () Bool)

(assert (=> b!1266486 m!1166199))

(declare-fun m!1166201 () Bool)

(assert (=> d!139151 m!1166201))

(assert (=> d!139151 m!1166143))

(declare-fun m!1166203 () Bool)

(assert (=> b!1266484 m!1166203))

(declare-fun m!1166205 () Bool)

(assert (=> bm!62485 m!1166205))

(declare-fun m!1166207 () Bool)

(assert (=> b!1266483 m!1166207))

(assert (=> b!1266340 d!139151))

(declare-fun d!139157 () Bool)

(declare-fun res!843235 () Bool)

(declare-fun e!721398 () Bool)

(assert (=> d!139157 (=> res!843235 e!721398)))

(assert (=> d!139157 (= res!843235 (or (is-Nil!28501 l!706) (is-Nil!28501 (t!42035 l!706))))))

(assert (=> d!139157 (= (isStrictlySorted!800 l!706) e!721398)))

(declare-fun b!1266513 () Bool)

(declare-fun e!721399 () Bool)

(assert (=> b!1266513 (= e!721398 e!721399)))

(declare-fun res!843236 () Bool)

(assert (=> b!1266513 (=> (not res!843236) (not e!721399))))

(assert (=> b!1266513 (= res!843236 (bvslt (_1!10681 (h!29709 l!706)) (_1!10681 (h!29709 (t!42035 l!706)))))))

(declare-fun b!1266514 () Bool)

(assert (=> b!1266514 (= e!721399 (isStrictlySorted!800 (t!42035 l!706)))))

(assert (= (and d!139157 (not res!843235)) b!1266513))

(assert (= (and b!1266513 res!843236) b!1266514))

(declare-fun m!1166213 () Bool)

(assert (=> b!1266514 m!1166213))

(assert (=> start!106598 d!139157))

(declare-fun b!1266522 () Bool)

(declare-fun e!721405 () Bool)

(declare-fun tp!96444 () Bool)

(assert (=> b!1266522 (= e!721405 (and tp_is_empty!32537 tp!96444))))

(assert (=> b!1266341 (= tp!96438 e!721405)))

(assert (= (and b!1266341 (is-Cons!28500 (t!42035 l!706))) b!1266522))

(push 1)

(assert (not bm!62485))

(assert (not b!1266483))

(assert (not b!1266486))

(assert (not d!139151))

(assert (not b!1266353))

(assert (not d!139145))

(assert (not b!1266514))

(assert tp_is_empty!32537)

(assert (not b!1266397))

(assert (not b!1266394))

(assert (not b!1266484))

(assert (not b!1266522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139209 () Bool)

(declare-fun lt!574101 () Bool)

(declare-fun content!645 (List!28504) (Set tuple2!21342))

(assert (=> d!139209 (= lt!574101 (member (tuple2!21343 key1!31 v1!26) (content!645 lt!574088)))))

(declare-fun e!721472 () Bool)

(assert (=> d!139209 (= lt!574101 e!721472)))

(declare-fun res!843290 () Bool)

(assert (=> d!139209 (=> (not res!843290) (not e!721472))))

(assert (=> d!139209 (= res!843290 (is-Cons!28500 lt!574088))))

(assert (=> d!139209 (= (contains!7662 lt!574088 (tuple2!21343 key1!31 v1!26)) lt!574101)))

(declare-fun b!1266604 () Bool)

(declare-fun e!721471 () Bool)

(assert (=> b!1266604 (= e!721472 e!721471)))

(declare-fun res!843289 () Bool)

(assert (=> b!1266604 (=> res!843289 e!721471)))

(assert (=> b!1266604 (= res!843289 (= (h!29709 lt!574088) (tuple2!21343 key1!31 v1!26)))))

(declare-fun b!1266605 () Bool)

(assert (=> b!1266605 (= e!721471 (contains!7662 (t!42035 lt!574088) (tuple2!21343 key1!31 v1!26)))))

(assert (= (and d!139209 res!843290) b!1266604))

(assert (= (and b!1266604 (not res!843289)) b!1266605))

(declare-fun m!1166293 () Bool)

(assert (=> d!139209 m!1166293))

(declare-fun m!1166295 () Bool)

(assert (=> d!139209 m!1166295))

(declare-fun m!1166297 () Bool)

(assert (=> b!1266605 m!1166297))

(assert (=> b!1266486 d!139209))

(declare-fun d!139211 () Bool)

(declare-fun res!843291 () Bool)

(declare-fun e!721473 () Bool)

(assert (=> d!139211 (=> res!843291 e!721473)))

(assert (=> d!139211 (= res!843291 (and (is-Cons!28500 (t!42035 l!706)) (= (_1!10681 (h!29709 (t!42035 l!706))) key1!31)))))

(assert (=> d!139211 (= (containsKey!661 (t!42035 l!706) key1!31) e!721473)))

(declare-fun b!1266606 () Bool)

(declare-fun e!721474 () Bool)

(assert (=> b!1266606 (= e!721473 e!721474)))

(declare-fun res!843292 () Bool)

(assert (=> b!1266606 (=> (not res!843292) (not e!721474))))

(assert (=> b!1266606 (= res!843292 (and (or (not (is-Cons!28500 (t!42035 l!706))) (bvsle (_1!10681 (h!29709 (t!42035 l!706))) key1!31)) (is-Cons!28500 (t!42035 l!706)) (bvslt (_1!10681 (h!29709 (t!42035 l!706))) key1!31)))))

(declare-fun b!1266607 () Bool)

(assert (=> b!1266607 (= e!721474 (containsKey!661 (t!42035 (t!42035 l!706)) key1!31))))

(assert (= (and d!139211 (not res!843291)) b!1266606))

(assert (= (and b!1266606 res!843292) b!1266607))

(declare-fun m!1166299 () Bool)

(assert (=> b!1266607 m!1166299))

(assert (=> b!1266353 d!139211))

(declare-fun d!139213 () Bool)

(declare-fun res!843293 () Bool)

(declare-fun e!721475 () Bool)

(assert (=> d!139213 (=> res!843293 e!721475)))

(assert (=> d!139213 (= res!843293 (and (is-Cons!28500 lt!574079) (= (_1!10681 (h!29709 lt!574079)) key1!31)))))

(assert (=> d!139213 (= (containsKey!661 lt!574079 key1!31) e!721475)))

(declare-fun b!1266608 () Bool)

(declare-fun e!721476 () Bool)

(assert (=> b!1266608 (= e!721475 e!721476)))

