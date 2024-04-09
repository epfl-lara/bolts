; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137458 () Bool)

(assert start!137458)

(declare-fun b!1581338 () Bool)

(declare-fun e!882392 () Bool)

(declare-fun e!882389 () Bool)

(assert (=> b!1581338 (= e!882392 e!882389)))

(declare-fun res!1080449 () Bool)

(assert (=> b!1581338 (=> (not res!1080449) (not e!882389))))

(declare-fun e!882390 () Bool)

(assert (=> b!1581338 (= res!1080449 e!882390)))

(declare-fun res!1080447 () Bool)

(assert (=> b!1581338 (=> res!1080447 e!882390)))

(declare-datatypes ((B!2696 0))(
  ( (B!2697 (val!19710 Int)) )
))
(declare-datatypes ((tuple2!25740 0))(
  ( (tuple2!25741 (_1!12880 (_ BitVec 64)) (_2!12880 B!2696)) )
))
(declare-datatypes ((List!36991 0))(
  ( (Nil!36988) (Cons!36987 (h!38531 tuple2!25740) (t!51912 List!36991)) )
))
(declare-datatypes ((tuple2!25742 0))(
  ( (tuple2!25743 (_1!12881 tuple2!25740) (_2!12881 List!36991)) )
))
(declare-datatypes ((Option!924 0))(
  ( (Some!923 (v!22435 tuple2!25742)) (None!922) )
))
(declare-fun lt!676875 () Option!924)

(declare-fun isEmpty!1183 (Option!924) Bool)

(assert (=> b!1581338 (= res!1080447 (isEmpty!1183 lt!676875))))

(declare-fun l!1390 () List!36991)

(declare-fun unapply!97 (List!36991) Option!924)

(assert (=> b!1581338 (= lt!676875 (unapply!97 l!1390))))

(declare-fun b!1581339 () Bool)

(declare-fun res!1080445 () Bool)

(assert (=> b!1581339 (=> (not res!1080445) (not e!882389))))

(declare-fun isStrictlySorted!1086 (List!36991) Bool)

(assert (=> b!1581339 (= res!1080445 (isStrictlySorted!1086 (t!51912 l!1390)))))

(declare-fun b!1581340 () Bool)

(declare-fun res!1080446 () Bool)

(declare-fun e!882393 () Bool)

(assert (=> b!1581340 (=> (not res!1080446) (not e!882393))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!932 (List!36991 (_ BitVec 64)) Bool)

(assert (=> b!1581340 (= res!1080446 (containsKey!932 l!1390 key!405))))

(declare-fun b!1581341 () Bool)

(declare-fun res!1080452 () Bool)

(assert (=> b!1581341 (=> (not res!1080452) (not e!882389))))

(assert (=> b!1581341 (= res!1080452 (containsKey!932 (t!51912 l!1390) key!405))))

(declare-fun b!1581342 () Bool)

(declare-fun e!882391 () Bool)

(declare-fun tp_is_empty!39241 () Bool)

(declare-fun tp!114580 () Bool)

(assert (=> b!1581342 (= e!882391 (and tp_is_empty!39241 tp!114580))))

(declare-fun b!1581343 () Bool)

(declare-fun res!1080444 () Bool)

(assert (=> b!1581343 (=> (not res!1080444) (not e!882389))))

(declare-fun lt!676873 () tuple2!25740)

(declare-fun contains!10519 (List!36991 tuple2!25740) Bool)

(assert (=> b!1581343 (= res!1080444 (contains!10519 (t!51912 l!1390) lt!676873))))

(declare-fun b!1581344 () Bool)

(declare-fun res!1080448 () Bool)

(assert (=> b!1581344 (=> (not res!1080448) (not e!882389))))

(assert (=> b!1581344 (= res!1080448 (and (or (not (is-Cons!36987 l!1390)) (not (= (_1!12880 (h!38531 l!1390)) key!405))) (is-Cons!36987 l!1390)))))

(declare-fun res!1080450 () Bool)

(assert (=> start!137458 (=> (not res!1080450) (not e!882393))))

(assert (=> start!137458 (= res!1080450 (isStrictlySorted!1086 l!1390))))

(assert (=> start!137458 e!882393))

(assert (=> start!137458 e!882391))

(assert (=> start!137458 true))

(assert (=> start!137458 tp_is_empty!39241))

(declare-fun b!1581345 () Bool)

(declare-datatypes ((Option!925 0))(
  ( (Some!924 (v!22436 B!2696)) (None!923) )
))
(declare-fun lt!676876 () Option!925)

(declare-fun getValueByKey!822 (List!36991 (_ BitVec 64)) Option!925)

(assert (=> b!1581345 (= e!882389 (not (= (getValueByKey!822 l!1390 key!405) lt!676876)))))

(assert (=> b!1581345 (= (getValueByKey!822 (t!51912 l!1390) key!405) lt!676876)))

(declare-fun value!194 () B!2696)

(assert (=> b!1581345 (= lt!676876 (Some!924 value!194))))

(declare-datatypes ((Unit!52190 0))(
  ( (Unit!52191) )
))
(declare-fun lt!676874 () Unit!52190)

(declare-fun lemmaContainsTupThenGetReturnValue!399 (List!36991 (_ BitVec 64) B!2696) Unit!52190)

(assert (=> b!1581345 (= lt!676874 (lemmaContainsTupThenGetReturnValue!399 (t!51912 l!1390) key!405 value!194))))

(declare-fun b!1581346 () Bool)

(assert (=> b!1581346 (= e!882393 e!882392)))

(declare-fun res!1080451 () Bool)

(assert (=> b!1581346 (=> (not res!1080451) (not e!882392))))

(assert (=> b!1581346 (= res!1080451 (contains!10519 l!1390 lt!676873))))

(assert (=> b!1581346 (= lt!676873 (tuple2!25741 key!405 value!194))))

(declare-fun b!1581347 () Bool)

(declare-fun get!26846 (Option!924) tuple2!25742)

(assert (=> b!1581347 (= e!882390 (not (is-Nil!36988 (_2!12881 (get!26846 lt!676875)))))))

(assert (= (and start!137458 res!1080450) b!1581340))

(assert (= (and b!1581340 res!1080446) b!1581346))

(assert (= (and b!1581346 res!1080451) b!1581338))

(assert (= (and b!1581338 (not res!1080447)) b!1581347))

(assert (= (and b!1581338 res!1080449) b!1581344))

(assert (= (and b!1581344 res!1080448) b!1581339))

(assert (= (and b!1581339 res!1080445) b!1581341))

(assert (= (and b!1581341 res!1080452) b!1581343))

(assert (= (and b!1581343 res!1080444) b!1581345))

(assert (= (and start!137458 (is-Cons!36987 l!1390)) b!1581342))

(declare-fun m!1452341 () Bool)

(assert (=> b!1581338 m!1452341))

(declare-fun m!1452343 () Bool)

(assert (=> b!1581338 m!1452343))

(declare-fun m!1452345 () Bool)

(assert (=> b!1581339 m!1452345))

(declare-fun m!1452347 () Bool)

(assert (=> b!1581346 m!1452347))

(declare-fun m!1452349 () Bool)

(assert (=> b!1581343 m!1452349))

(declare-fun m!1452351 () Bool)

(assert (=> b!1581341 m!1452351))

(declare-fun m!1452353 () Bool)

(assert (=> b!1581347 m!1452353))

(declare-fun m!1452355 () Bool)

(assert (=> b!1581345 m!1452355))

(declare-fun m!1452357 () Bool)

(assert (=> b!1581345 m!1452357))

(declare-fun m!1452359 () Bool)

(assert (=> b!1581345 m!1452359))

(declare-fun m!1452361 () Bool)

(assert (=> b!1581340 m!1452361))

(declare-fun m!1452363 () Bool)

(assert (=> start!137458 m!1452363))

(push 1)

(assert (not b!1581338))

(assert (not b!1581339))

(assert (not b!1581346))

(assert (not b!1581343))

(assert (not b!1581345))

(assert tp_is_empty!39241)

(assert (not b!1581347))

(assert (not start!137458))

(assert (not b!1581340))

(assert (not b!1581342))

(assert (not b!1581341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166687 () Bool)

(declare-fun res!1080521 () Bool)

(declare-fun e!882438 () Bool)

(assert (=> d!166687 (=> res!1080521 e!882438)))

(assert (=> d!166687 (= res!1080521 (or (is-Nil!36988 l!1390) (is-Nil!36988 (t!51912 l!1390))))))

(assert (=> d!166687 (= (isStrictlySorted!1086 l!1390) e!882438)))

(declare-fun b!1581422 () Bool)

(declare-fun e!882439 () Bool)

(assert (=> b!1581422 (= e!882438 e!882439)))

(declare-fun res!1080522 () Bool)

(assert (=> b!1581422 (=> (not res!1080522) (not e!882439))))

(assert (=> b!1581422 (= res!1080522 (bvslt (_1!12880 (h!38531 l!1390)) (_1!12880 (h!38531 (t!51912 l!1390)))))))

(declare-fun b!1581423 () Bool)

(assert (=> b!1581423 (= e!882439 (isStrictlySorted!1086 (t!51912 l!1390)))))

(assert (= (and d!166687 (not res!1080521)) b!1581422))

(assert (= (and b!1581422 res!1080522) b!1581423))

(assert (=> b!1581423 m!1452345))

(assert (=> start!137458 d!166687))

(declare-fun d!166691 () Bool)

(assert (=> d!166691 (= (isEmpty!1183 lt!676875) (not (is-Some!923 lt!676875)))))

(assert (=> b!1581338 d!166691))

(declare-fun d!166693 () Bool)

(assert (=> d!166693 (= (unapply!97 l!1390) (ite (is-Nil!36988 l!1390) None!922 (Some!923 (tuple2!25743 (h!38531 l!1390) (t!51912 l!1390)))))))

(assert (=> b!1581338 d!166693))

(declare-fun d!166697 () Bool)

(declare-fun lt!676905 () Bool)

(declare-fun content!853 (List!36991) (Set tuple2!25740))

(assert (=> d!166697 (= lt!676905 (set.member lt!676873 (content!853 (t!51912 l!1390))))))

(declare-fun e!882457 () Bool)

(assert (=> d!166697 (= lt!676905 e!882457)))

(declare-fun res!1080540 () Bool)

(assert (=> d!166697 (=> (not res!1080540) (not e!882457))))

(assert (=> d!166697 (= res!1080540 (is-Cons!36987 (t!51912 l!1390)))))

(assert (=> d!166697 (= (contains!10519 (t!51912 l!1390) lt!676873) lt!676905)))

(declare-fun b!1581440 () Bool)

(declare-fun e!882456 () Bool)

(assert (=> b!1581440 (= e!882457 e!882456)))

(declare-fun res!1080539 () Bool)

(assert (=> b!1581440 (=> res!1080539 e!882456)))

(assert (=> b!1581440 (= res!1080539 (= (h!38531 (t!51912 l!1390)) lt!676873))))

(declare-fun b!1581441 () Bool)

(assert (=> b!1581441 (= e!882456 (contains!10519 (t!51912 (t!51912 l!1390)) lt!676873))))

(assert (= (and d!166697 res!1080540) b!1581440))

(assert (= (and b!1581440 (not res!1080539)) b!1581441))

(declare-fun m!1452413 () Bool)

(assert (=> d!166697 m!1452413))

(declare-fun m!1452415 () Bool)

(assert (=> d!166697 m!1452415))

(declare-fun m!1452417 () Bool)

(assert (=> b!1581441 m!1452417))

(assert (=> b!1581343 d!166697))

(declare-fun d!166705 () Bool)

(declare-fun res!1080541 () Bool)

(declare-fun e!882458 () Bool)

(assert (=> d!166705 (=> res!1080541 e!882458)))

(assert (=> d!166705 (= res!1080541 (or (is-Nil!36988 (t!51912 l!1390)) (is-Nil!36988 (t!51912 (t!51912 l!1390)))))))

(assert (=> d!166705 (= (isStrictlySorted!1086 (t!51912 l!1390)) e!882458)))

(declare-fun b!1581442 () Bool)

(declare-fun e!882459 () Bool)

(assert (=> b!1581442 (= e!882458 e!882459)))

(declare-fun res!1080542 () Bool)

(assert (=> b!1581442 (=> (not res!1080542) (not e!882459))))

(assert (=> b!1581442 (= res!1080542 (bvslt (_1!12880 (h!38531 (t!51912 l!1390))) (_1!12880 (h!38531 (t!51912 (t!51912 l!1390))))))))

(declare-fun b!1581443 () Bool)

(assert (=> b!1581443 (= e!882459 (isStrictlySorted!1086 (t!51912 (t!51912 l!1390))))))

(assert (= (and d!166705 (not res!1080541)) b!1581442))

(assert (= (and b!1581442 res!1080542) b!1581443))

(declare-fun m!1452419 () Bool)

(assert (=> b!1581443 m!1452419))

(assert (=> b!1581339 d!166705))

(declare-fun d!166707 () Bool)

(declare-fun res!1080549 () Bool)

(declare-fun e!882466 () Bool)

(assert (=> d!166707 (=> res!1080549 e!882466)))

(assert (=> d!166707 (= res!1080549 (and (is-Cons!36987 l!1390) (= (_1!12880 (h!38531 l!1390)) key!405)))))

(assert (=> d!166707 (= (containsKey!932 l!1390 key!405) e!882466)))

(declare-fun b!1581450 () Bool)

(declare-fun e!882467 () Bool)

(assert (=> b!1581450 (= e!882466 e!882467)))

(declare-fun res!1080550 () Bool)

(assert (=> b!1581450 (=> (not res!1080550) (not e!882467))))

(assert (=> b!1581450 (= res!1080550 (and (or (not (is-Cons!36987 l!1390)) (bvsle (_1!12880 (h!38531 l!1390)) key!405)) (is-Cons!36987 l!1390) (bvslt (_1!12880 (h!38531 l!1390)) key!405)))))

(declare-fun b!1581451 () Bool)

(assert (=> b!1581451 (= e!882467 (containsKey!932 (t!51912 l!1390) key!405))))

(assert (= (and d!166707 (not res!1080549)) b!1581450))

(assert (= (and b!1581450 res!1080550) b!1581451))

(assert (=> b!1581451 m!1452351))

(assert (=> b!1581340 d!166707))

(declare-fun b!1581481 () Bool)

(declare-fun e!882487 () Option!925)

(assert (=> b!1581481 (= e!882487 None!923)))

(declare-fun b!1581480 () Bool)

(assert (=> b!1581480 (= e!882487 (getValueByKey!822 (t!51912 l!1390) key!405))))

(declare-fun b!1581479 () Bool)

(declare-fun e!882486 () Option!925)

(assert (=> b!1581479 (= e!882486 e!882487)))

(declare-fun c!146539 () Bool)

(assert (=> b!1581479 (= c!146539 (and (is-Cons!36987 l!1390) (not (= (_1!12880 (h!38531 l!1390)) key!405))))))

(declare-fun d!166713 () Bool)

(declare-fun c!146538 () Bool)

(assert (=> d!166713 (= c!146538 (and (is-Cons!36987 l!1390) (= (_1!12880 (h!38531 l!1390)) key!405)))))

(assert (=> d!166713 (= (getValueByKey!822 l!1390 key!405) e!882486)))

(declare-fun b!1581478 () Bool)

(assert (=> b!1581478 (= e!882486 (Some!924 (_2!12880 (h!38531 l!1390))))))

(assert (= (and d!166713 c!146538) b!1581478))

(assert (= (and d!166713 (not c!146538)) b!1581479))

(assert (= (and b!1581479 c!146539) b!1581480))

(assert (= (and b!1581479 (not c!146539)) b!1581481))

(assert (=> b!1581480 m!1452357))

(assert (=> b!1581345 d!166713))

(declare-fun b!1581489 () Bool)

(declare-fun e!882491 () Option!925)

(assert (=> b!1581489 (= e!882491 None!923)))

(declare-fun b!1581488 () Bool)

(assert (=> b!1581488 (= e!882491 (getValueByKey!822 (t!51912 (t!51912 l!1390)) key!405))))

(declare-fun b!1581487 () Bool)

(declare-fun e!882490 () Option!925)

(assert (=> b!1581487 (= e!882490 e!882491)))

(declare-fun c!146543 () Bool)

(assert (=> b!1581487 (= c!146543 (and (is-Cons!36987 (t!51912 l!1390)) (not (= (_1!12880 (h!38531 (t!51912 l!1390))) key!405))))))

(declare-fun d!166721 () Bool)

(declare-fun c!146542 () Bool)

(assert (=> d!166721 (= c!146542 (and (is-Cons!36987 (t!51912 l!1390)) (= (_1!12880 (h!38531 (t!51912 l!1390))) key!405)))))

(assert (=> d!166721 (= (getValueByKey!822 (t!51912 l!1390) key!405) e!882490)))

(declare-fun b!1581486 () Bool)

(assert (=> b!1581486 (= e!882490 (Some!924 (_2!12880 (h!38531 (t!51912 l!1390)))))))

(assert (= (and d!166721 c!146542) b!1581486))

(assert (= (and d!166721 (not c!146542)) b!1581487))

(assert (= (and b!1581487 c!146543) b!1581488))

(assert (= (and b!1581487 (not c!146543)) b!1581489))

(declare-fun m!1452437 () Bool)

(assert (=> b!1581488 m!1452437))

(assert (=> b!1581345 d!166721))

(declare-fun d!166725 () Bool)

(assert (=> d!166725 (= (getValueByKey!822 (t!51912 l!1390) key!405) (Some!924 value!194))))

(declare-fun lt!676913 () Unit!52190)

(declare-fun choose!2102 (List!36991 (_ BitVec 64) B!2696) Unit!52190)

(assert (=> d!166725 (= lt!676913 (choose!2102 (t!51912 l!1390) key!405 value!194))))

(declare-fun e!882500 () Bool)

(assert (=> d!166725 e!882500))

(declare-fun res!1080565 () Bool)

(assert (=> d!166725 (=> (not res!1080565) (not e!882500))))

(assert (=> d!166725 (= res!1080565 (isStrictlySorted!1086 (t!51912 l!1390)))))

(assert (=> d!166725 (= (lemmaContainsTupThenGetReturnValue!399 (t!51912 l!1390) key!405 value!194) lt!676913)))

(declare-fun b!1581506 () Bool)

(declare-fun res!1080566 () Bool)

(assert (=> b!1581506 (=> (not res!1080566) (not e!882500))))

(assert (=> b!1581506 (= res!1080566 (containsKey!932 (t!51912 l!1390) key!405))))

(declare-fun b!1581507 () Bool)

(assert (=> b!1581507 (= e!882500 (contains!10519 (t!51912 l!1390) (tuple2!25741 key!405 value!194)))))

(assert (= (and d!166725 res!1080565) b!1581506))

(assert (= (and b!1581506 res!1080566) b!1581507))

(assert (=> d!166725 m!1452357))

(declare-fun m!1452441 () Bool)

(assert (=> d!166725 m!1452441))

(assert (=> d!166725 m!1452345))

(assert (=> b!1581506 m!1452351))

(declare-fun m!1452443 () Bool)

(assert (=> b!1581507 m!1452443))

(assert (=> b!1581345 d!166725))

(declare-fun d!166729 () Bool)

(declare-fun lt!676914 () Bool)

(assert (=> d!166729 (= lt!676914 (set.member lt!676873 (content!853 l!1390)))))

(declare-fun e!882502 () Bool)

(assert (=> d!166729 (= lt!676914 e!882502)))

(declare-fun res!1080568 () Bool)

(assert (=> d!166729 (=> (not res!1080568) (not e!882502))))

(assert (=> d!166729 (= res!1080568 (is-Cons!36987 l!1390))))

(assert (=> d!166729 (= (contains!10519 l!1390 lt!676873) lt!676914)))

(declare-fun b!1581508 () Bool)

(declare-fun e!882501 () Bool)

(assert (=> b!1581508 (= e!882502 e!882501)))

(declare-fun res!1080567 () Bool)

(assert (=> b!1581508 (=> res!1080567 e!882501)))

(assert (=> b!1581508 (= res!1080567 (= (h!38531 l!1390) lt!676873))))

(declare-fun b!1581509 () Bool)

(assert (=> b!1581509 (= e!882501 (contains!10519 (t!51912 l!1390) lt!676873))))

(assert (= (and d!166729 res!1080568) b!1581508))

(assert (= (and b!1581508 (not res!1080567)) b!1581509))

(declare-fun m!1452445 () Bool)

(assert (=> d!166729 m!1452445))

(declare-fun m!1452447 () Bool)

(assert (=> d!166729 m!1452447))

(assert (=> b!1581509 m!1452349))

(assert (=> b!1581346 d!166729))

(declare-fun d!166731 () Bool)

(declare-fun res!1080573 () Bool)

(declare-fun e!882507 () Bool)

(assert (=> d!166731 (=> res!1080573 e!882507)))

(assert (=> d!166731 (= res!1080573 (and (is-Cons!36987 (t!51912 l!1390)) (= (_1!12880 (h!38531 (t!51912 l!1390))) key!405)))))

(assert (=> d!166731 (= (containsKey!932 (t!51912 l!1390) key!405) e!882507)))

(declare-fun b!1581518 () Bool)

(declare-fun e!882508 () Bool)

(assert (=> b!1581518 (= e!882507 e!882508)))

(declare-fun res!1080574 () Bool)

(assert (=> b!1581518 (=> (not res!1080574) (not e!882508))))

(assert (=> b!1581518 (= res!1080574 (and (or (not (is-Cons!36987 (t!51912 l!1390))) (bvsle (_1!12880 (h!38531 (t!51912 l!1390))) key!405)) (is-Cons!36987 (t!51912 l!1390)) (bvslt (_1!12880 (h!38531 (t!51912 l!1390))) key!405)))))

(declare-fun b!1581519 () Bool)

(assert (=> b!1581519 (= e!882508 (containsKey!932 (t!51912 (t!51912 l!1390)) key!405))))

(assert (= (and d!166731 (not res!1080573)) b!1581518))

(assert (= (and b!1581518 res!1080574) b!1581519))

(declare-fun m!1452449 () Bool)

(assert (=> b!1581519 m!1452449))

(assert (=> b!1581341 d!166731))

(declare-fun d!166733 () Bool)

(assert (=> d!166733 (= (get!26846 lt!676875) (v!22435 lt!676875))))

(assert (=> b!1581347 d!166733))

(declare-fun b!1581528 () Bool)

(declare-fun e!882513 () Bool)

(declare-fun tp!114589 () Bool)

(assert (=> b!1581528 (= e!882513 (and tp_is_empty!39241 tp!114589))))

(assert (=> b!1581342 (= tp!114580 e!882513)))

(assert (= (and b!1581342 (is-Cons!36987 (t!51912 l!1390))) b!1581528))

(push 1)

(assert (not d!166729))

(assert (not b!1581480))

(assert (not b!1581506))

(assert (not b!1581528))

(assert (not b!1581441))

(assert (not d!166697))

(assert tp_is_empty!39241)

(assert (not b!1581423))

(assert (not b!1581451))

(assert (not b!1581507))

(assert (not d!166725))

(assert (not b!1581519))

(assert (not b!1581509))

(assert (not b!1581488))

(assert (not b!1581443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

