; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137462 () Bool)

(assert start!137462)

(declare-fun b!1581398 () Bool)

(declare-fun e!882419 () Bool)

(declare-fun e!882421 () Bool)

(assert (=> b!1581398 (= e!882419 e!882421)))

(declare-fun res!1080506 () Bool)

(assert (=> b!1581398 (=> (not res!1080506) (not e!882421))))

(declare-datatypes ((B!2700 0))(
  ( (B!2701 (val!19712 Int)) )
))
(declare-datatypes ((tuple2!25748 0))(
  ( (tuple2!25749 (_1!12884 (_ BitVec 64)) (_2!12884 B!2700)) )
))
(declare-datatypes ((List!36993 0))(
  ( (Nil!36990) (Cons!36989 (h!38533 tuple2!25748) (t!51914 List!36993)) )
))
(declare-fun l!1390 () List!36993)

(declare-fun lt!676897 () tuple2!25748)

(declare-fun contains!10521 (List!36993 tuple2!25748) Bool)

(assert (=> b!1581398 (= res!1080506 (contains!10521 l!1390 lt!676897))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun value!194 () B!2700)

(assert (=> b!1581398 (= lt!676897 (tuple2!25749 key!405 value!194))))

(declare-fun b!1581399 () Bool)

(declare-fun e!882422 () Bool)

(declare-fun tp_is_empty!39245 () Bool)

(declare-fun tp!114586 () Bool)

(assert (=> b!1581399 (= e!882422 (and tp_is_empty!39245 tp!114586))))

(declare-fun b!1581400 () Bool)

(declare-fun res!1080504 () Bool)

(declare-fun e!882423 () Bool)

(assert (=> b!1581400 (=> (not res!1080504) (not e!882423))))

(declare-fun isStrictlySorted!1088 (List!36993) Bool)

(assert (=> b!1581400 (= res!1080504 (isStrictlySorted!1088 (t!51914 l!1390)))))

(declare-fun b!1581401 () Bool)

(declare-fun e!882420 () Bool)

(declare-datatypes ((tuple2!25750 0))(
  ( (tuple2!25751 (_1!12885 tuple2!25748) (_2!12885 List!36993)) )
))
(declare-datatypes ((Option!928 0))(
  ( (Some!927 (v!22439 tuple2!25750)) (None!926) )
))
(declare-fun lt!676899 () Option!928)

(declare-fun get!26848 (Option!928) tuple2!25750)

(assert (=> b!1581401 (= e!882420 (not (is-Nil!36990 (_2!12885 (get!26848 lt!676899)))))))

(declare-fun b!1581402 () Bool)

(declare-fun res!1080501 () Bool)

(assert (=> b!1581402 (=> (not res!1080501) (not e!882419))))

(declare-fun containsKey!934 (List!36993 (_ BitVec 64)) Bool)

(assert (=> b!1581402 (= res!1080501 (containsKey!934 l!1390 key!405))))

(declare-datatypes ((Option!929 0))(
  ( (Some!928 (v!22440 B!2700)) (None!927) )
))
(declare-fun lt!676898 () Option!929)

(declare-fun b!1581403 () Bool)

(declare-fun getValueByKey!824 (List!36993 (_ BitVec 64)) Option!929)

(assert (=> b!1581403 (= e!882423 (not (= (getValueByKey!824 l!1390 key!405) lt!676898)))))

(assert (=> b!1581403 (= (getValueByKey!824 (t!51914 l!1390) key!405) lt!676898)))

(assert (=> b!1581403 (= lt!676898 (Some!928 value!194))))

(declare-datatypes ((Unit!52194 0))(
  ( (Unit!52195) )
))
(declare-fun lt!676900 () Unit!52194)

(declare-fun lemmaContainsTupThenGetReturnValue!401 (List!36993 (_ BitVec 64) B!2700) Unit!52194)

(assert (=> b!1581403 (= lt!676900 (lemmaContainsTupThenGetReturnValue!401 (t!51914 l!1390) key!405 value!194))))

(declare-fun b!1581404 () Bool)

(declare-fun res!1080505 () Bool)

(assert (=> b!1581404 (=> (not res!1080505) (not e!882423))))

(assert (=> b!1581404 (= res!1080505 (containsKey!934 (t!51914 l!1390) key!405))))

(declare-fun b!1581405 () Bool)

(declare-fun res!1080499 () Bool)

(assert (=> b!1581405 (=> (not res!1080499) (not e!882423))))

(assert (=> b!1581405 (= res!1080499 (and (or (not (is-Cons!36989 l!1390)) (not (= (_1!12884 (h!38533 l!1390)) key!405))) (is-Cons!36989 l!1390)))))

(declare-fun b!1581406 () Bool)

(declare-fun res!1080500 () Bool)

(assert (=> b!1581406 (=> (not res!1080500) (not e!882423))))

(assert (=> b!1581406 (= res!1080500 (contains!10521 (t!51914 l!1390) lt!676897))))

(declare-fun res!1080498 () Bool)

(assert (=> start!137462 (=> (not res!1080498) (not e!882419))))

(assert (=> start!137462 (= res!1080498 (isStrictlySorted!1088 l!1390))))

(assert (=> start!137462 e!882419))

(assert (=> start!137462 e!882422))

(assert (=> start!137462 true))

(assert (=> start!137462 tp_is_empty!39245))

(declare-fun b!1581407 () Bool)

(assert (=> b!1581407 (= e!882421 e!882423)))

(declare-fun res!1080503 () Bool)

(assert (=> b!1581407 (=> (not res!1080503) (not e!882423))))

(assert (=> b!1581407 (= res!1080503 e!882420)))

(declare-fun res!1080502 () Bool)

(assert (=> b!1581407 (=> res!1080502 e!882420)))

(declare-fun isEmpty!1185 (Option!928) Bool)

(assert (=> b!1581407 (= res!1080502 (isEmpty!1185 lt!676899))))

(declare-fun unapply!99 (List!36993) Option!928)

(assert (=> b!1581407 (= lt!676899 (unapply!99 l!1390))))

(assert (= (and start!137462 res!1080498) b!1581402))

(assert (= (and b!1581402 res!1080501) b!1581398))

(assert (= (and b!1581398 res!1080506) b!1581407))

(assert (= (and b!1581407 (not res!1080502)) b!1581401))

(assert (= (and b!1581407 res!1080503) b!1581405))

(assert (= (and b!1581405 res!1080499) b!1581400))

(assert (= (and b!1581400 res!1080504) b!1581404))

(assert (= (and b!1581404 res!1080505) b!1581406))

(assert (= (and b!1581406 res!1080500) b!1581403))

(assert (= (and start!137462 (is-Cons!36989 l!1390)) b!1581399))

(declare-fun m!1452389 () Bool)

(assert (=> b!1581400 m!1452389))

(declare-fun m!1452391 () Bool)

(assert (=> b!1581404 m!1452391))

(declare-fun m!1452393 () Bool)

(assert (=> b!1581401 m!1452393))

(declare-fun m!1452395 () Bool)

(assert (=> b!1581406 m!1452395))

(declare-fun m!1452397 () Bool)

(assert (=> b!1581398 m!1452397))

(declare-fun m!1452399 () Bool)

(assert (=> b!1581402 m!1452399))

(declare-fun m!1452401 () Bool)

(assert (=> start!137462 m!1452401))

(declare-fun m!1452403 () Bool)

(assert (=> b!1581407 m!1452403))

(declare-fun m!1452405 () Bool)

(assert (=> b!1581407 m!1452405))

(declare-fun m!1452407 () Bool)

(assert (=> b!1581403 m!1452407))

(declare-fun m!1452409 () Bool)

(assert (=> b!1581403 m!1452409))

(declare-fun m!1452411 () Bool)

(assert (=> b!1581403 m!1452411))

(push 1)

(assert (not b!1581403))

(assert (not b!1581399))

(assert (not b!1581402))

(assert (not start!137462))

(assert tp_is_empty!39245)

(assert (not b!1581404))

(assert (not b!1581400))

(assert (not b!1581398))

(assert (not b!1581406))

(assert (not b!1581407))

(assert (not b!1581401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166685 () Bool)

(declare-fun res!1080527 () Bool)

(declare-fun e!882444 () Bool)

(assert (=> d!166685 (=> res!1080527 e!882444)))

(assert (=> d!166685 (= res!1080527 (or (is-Nil!36990 l!1390) (is-Nil!36990 (t!51914 l!1390))))))

(assert (=> d!166685 (= (isStrictlySorted!1088 l!1390) e!882444)))

(declare-fun b!1581428 () Bool)

(declare-fun e!882445 () Bool)

(assert (=> b!1581428 (= e!882444 e!882445)))

(declare-fun res!1080528 () Bool)

(assert (=> b!1581428 (=> (not res!1080528) (not e!882445))))

(assert (=> b!1581428 (= res!1080528 (bvslt (_1!12884 (h!38533 l!1390)) (_1!12884 (h!38533 (t!51914 l!1390)))))))

(declare-fun b!1581429 () Bool)

(assert (=> b!1581429 (= e!882445 (isStrictlySorted!1088 (t!51914 l!1390)))))

(assert (= (and d!166685 (not res!1080527)) b!1581428))

(assert (= (and b!1581428 res!1080528) b!1581429))

(assert (=> b!1581429 m!1452389))

(assert (=> start!137462 d!166685))

(declare-fun d!166695 () Bool)

(declare-fun lt!676906 () Bool)

(declare-fun content!854 (List!36993) (Set tuple2!25748))

(assert (=> d!166695 (= lt!676906 (member lt!676897 (content!854 l!1390)))))

(declare-fun e!882460 () Bool)

(assert (=> d!166695 (= lt!676906 e!882460)))

(declare-fun res!1080543 () Bool)

(assert (=> d!166695 (=> (not res!1080543) (not e!882460))))

(assert (=> d!166695 (= res!1080543 (is-Cons!36989 l!1390))))

(assert (=> d!166695 (= (contains!10521 l!1390 lt!676897) lt!676906)))

(declare-fun b!1581444 () Bool)

(declare-fun e!882461 () Bool)

(assert (=> b!1581444 (= e!882460 e!882461)))

(declare-fun res!1080544 () Bool)

(assert (=> b!1581444 (=> res!1080544 e!882461)))

(assert (=> b!1581444 (= res!1080544 (= (h!38533 l!1390) lt!676897))))

(declare-fun b!1581445 () Bool)

(assert (=> b!1581445 (= e!882461 (contains!10521 (t!51914 l!1390) lt!676897))))

(assert (= (and d!166695 res!1080543) b!1581444))

(assert (= (and b!1581444 (not res!1080544)) b!1581445))

(declare-fun m!1452421 () Bool)

(assert (=> d!166695 m!1452421))

(declare-fun m!1452423 () Bool)

(assert (=> d!166695 m!1452423))

(assert (=> b!1581445 m!1452395))

(assert (=> b!1581398 d!166695))

(declare-fun b!1581483 () Bool)

(declare-fun e!882488 () Option!929)

(declare-fun e!882489 () Option!929)

(assert (=> b!1581483 (= e!882488 e!882489)))

(declare-fun c!146541 () Bool)

(assert (=> b!1581483 (= c!146541 (and (is-Cons!36989 l!1390) (not (= (_1!12884 (h!38533 l!1390)) key!405))))))

(declare-fun b!1581484 () Bool)

(assert (=> b!1581484 (= e!882489 (getValueByKey!824 (t!51914 l!1390) key!405))))

(declare-fun b!1581485 () Bool)

(assert (=> b!1581485 (= e!882489 None!927)))

(declare-fun d!166711 () Bool)

(declare-fun c!146540 () Bool)

(assert (=> d!166711 (= c!146540 (and (is-Cons!36989 l!1390) (= (_1!12884 (h!38533 l!1390)) key!405)))))

(assert (=> d!166711 (= (getValueByKey!824 l!1390 key!405) e!882488)))

(declare-fun b!1581482 () Bool)

(assert (=> b!1581482 (= e!882488 (Some!928 (_2!12884 (h!38533 l!1390))))))

(assert (= (and d!166711 c!146540) b!1581482))

(assert (= (and d!166711 (not c!146540)) b!1581483))

(assert (= (and b!1581483 c!146541) b!1581484))

(assert (= (and b!1581483 (not c!146541)) b!1581485))

(assert (=> b!1581484 m!1452409))

(assert (=> b!1581403 d!166711))

(declare-fun b!1581491 () Bool)

(declare-fun e!882492 () Option!929)

(declare-fun e!882493 () Option!929)

(assert (=> b!1581491 (= e!882492 e!882493)))

(declare-fun c!146545 () Bool)

(assert (=> b!1581491 (= c!146545 (and (is-Cons!36989 (t!51914 l!1390)) (not (= (_1!12884 (h!38533 (t!51914 l!1390))) key!405))))))

(declare-fun b!1581492 () Bool)

(assert (=> b!1581492 (= e!882493 (getValueByKey!824 (t!51914 (t!51914 l!1390)) key!405))))

(declare-fun b!1581493 () Bool)

(assert (=> b!1581493 (= e!882493 None!927)))

(declare-fun d!166723 () Bool)

(declare-fun c!146544 () Bool)

(assert (=> d!166723 (= c!146544 (and (is-Cons!36989 (t!51914 l!1390)) (= (_1!12884 (h!38533 (t!51914 l!1390))) key!405)))))

(assert (=> d!166723 (= (getValueByKey!824 (t!51914 l!1390) key!405) e!882492)))

(declare-fun b!1581490 () Bool)

(assert (=> b!1581490 (= e!882492 (Some!928 (_2!12884 (h!38533 (t!51914 l!1390)))))))

(assert (= (and d!166723 c!146544) b!1581490))

(assert (= (and d!166723 (not c!146544)) b!1581491))

(assert (= (and b!1581491 c!146545) b!1581492))

(assert (= (and b!1581491 (not c!146545)) b!1581493))

(declare-fun m!1452439 () Bool)

(assert (=> b!1581492 m!1452439))

(assert (=> b!1581403 d!166723))

(declare-fun d!166727 () Bool)

(assert (=> d!166727 (= (getValueByKey!824 (t!51914 l!1390) key!405) (Some!928 value!194))))

(declare-fun lt!676917 () Unit!52194)

(declare-fun choose!2103 (List!36993 (_ BitVec 64) B!2700) Unit!52194)

(assert (=> d!166727 (= lt!676917 (choose!2103 (t!51914 l!1390) key!405 value!194))))

(declare-fun e!882514 () Bool)

(assert (=> d!166727 e!882514))

(declare-fun res!1080575 () Bool)

(assert (=> d!166727 (=> (not res!1080575) (not e!882514))))

(assert (=> d!166727 (= res!1080575 (isStrictlySorted!1088 (t!51914 l!1390)))))

(assert (=> d!166727 (= (lemmaContainsTupThenGetReturnValue!401 (t!51914 l!1390) key!405 value!194) lt!676917)))

(declare-fun b!1581529 () Bool)

(declare-fun res!1080576 () Bool)

(assert (=> b!1581529 (=> (not res!1080576) (not e!882514))))

(assert (=> b!1581529 (= res!1080576 (containsKey!934 (t!51914 l!1390) key!405))))

(declare-fun b!1581530 () Bool)

(assert (=> b!1581530 (= e!882514 (contains!10521 (t!51914 l!1390) (tuple2!25749 key!405 value!194)))))

(assert (= (and d!166727 res!1080575) b!1581529))

(assert (= (and b!1581529 res!1080576) b!1581530))

(assert (=> d!166727 m!1452409))

(declare-fun m!1452453 () Bool)

(assert (=> d!166727 m!1452453))

(assert (=> d!166727 m!1452389))

(assert (=> b!1581529 m!1452391))

(declare-fun m!1452455 () Bool)

(assert (=> b!1581530 m!1452455))

(assert (=> b!1581403 d!166727))

(declare-fun d!166739 () Bool)

(declare-fun res!1080585 () Bool)

(declare-fun e!882521 () Bool)

(assert (=> d!166739 (=> res!1080585 e!882521)))

(assert (=> d!166739 (= res!1080585 (and (is-Cons!36989 (t!51914 l!1390)) (= (_1!12884 (h!38533 (t!51914 l!1390))) key!405)))))

(assert (=> d!166739 (= (containsKey!934 (t!51914 l!1390) key!405) e!882521)))

(declare-fun b!1581539 () Bool)

(declare-fun e!882522 () Bool)

(assert (=> b!1581539 (= e!882521 e!882522)))

(declare-fun res!1080586 () Bool)

(assert (=> b!1581539 (=> (not res!1080586) (not e!882522))))

(assert (=> b!1581539 (= res!1080586 (and (or (not (is-Cons!36989 (t!51914 l!1390))) (bvsle (_1!12884 (h!38533 (t!51914 l!1390))) key!405)) (is-Cons!36989 (t!51914 l!1390)) (bvslt (_1!12884 (h!38533 (t!51914 l!1390))) key!405)))))

(declare-fun b!1581540 () Bool)

(assert (=> b!1581540 (= e!882522 (containsKey!934 (t!51914 (t!51914 l!1390)) key!405))))

(assert (= (and d!166739 (not res!1080585)) b!1581539))

