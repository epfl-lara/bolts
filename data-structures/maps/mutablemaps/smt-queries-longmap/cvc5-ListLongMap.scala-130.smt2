; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2254 () Bool)

(assert start!2254)

(declare-fun res!11467 () Bool)

(declare-fun e!9048 () Bool)

(assert (=> start!2254 (=> (not res!11467) (not e!9048))))

(declare-datatypes ((B!578 0))(
  ( (B!579 (val!387 Int)) )
))
(declare-datatypes ((tuple2!556 0))(
  ( (tuple2!557 (_1!278 (_ BitVec 64)) (_2!278 B!578)) )
))
(declare-datatypes ((List!437 0))(
  ( (Nil!434) (Cons!433 (h!999 tuple2!556) (t!2839 List!437)) )
))
(declare-datatypes ((ListLongMap!387 0))(
  ( (ListLongMap!388 (toList!209 List!437)) )
))
(declare-fun thiss!177 () ListLongMap!387)

(declare-fun size!498 (List!437) Int)

(assert (=> start!2254 (= res!11467 (< (size!498 (toList!209 thiss!177)) 2147483647))))

(assert (=> start!2254 e!9048))

(declare-fun e!9049 () Bool)

(declare-fun inv!744 (ListLongMap!387) Bool)

(assert (=> start!2254 (and (inv!744 thiss!177) e!9049)))

(declare-fun b!15007 () Bool)

(declare-datatypes ((List!438 0))(
  ( (Nil!435) (Cons!434 (h!1000 (_ BitVec 64)) (t!2840 List!438)) )
))
(declare-fun length!2 (List!438) Int)

(declare-fun getKeysList!1 (List!437) List!438)

(assert (=> b!15007 (= e!9048 (>= (length!2 (getKeysList!1 (toList!209 thiss!177))) 2147483647))))

(declare-fun b!15008 () Bool)

(declare-fun tp!2426 () Bool)

(assert (=> b!15008 (= e!9049 tp!2426)))

(assert (= (and start!2254 res!11467) b!15007))

(assert (= start!2254 b!15008))

(declare-fun m!9967 () Bool)

(assert (=> start!2254 m!9967))

(declare-fun m!9969 () Bool)

(assert (=> start!2254 m!9969))

(declare-fun m!9971 () Bool)

(assert (=> b!15007 m!9971))

(assert (=> b!15007 m!9971))

(declare-fun m!9973 () Bool)

(assert (=> b!15007 m!9973))

(push 1)

(assert (not start!2254))

(assert (not b!15007))

(assert (not b!15008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2454 () Bool)

(declare-fun lt!3648 () Int)

(assert (=> d!2454 (>= lt!3648 0)))

(declare-fun e!9064 () Int)

(assert (=> d!2454 (= lt!3648 e!9064)))

(declare-fun c!1421 () Bool)

(assert (=> d!2454 (= c!1421 (is-Nil!434 (toList!209 thiss!177)))))

(assert (=> d!2454 (= (size!498 (toList!209 thiss!177)) lt!3648)))

(declare-fun b!15025 () Bool)

(assert (=> b!15025 (= e!9064 0)))

(declare-fun b!15026 () Bool)

(assert (=> b!15026 (= e!9064 (+ 1 (size!498 (t!2839 (toList!209 thiss!177)))))))

(assert (= (and d!2454 c!1421) b!15025))

(assert (= (and d!2454 (not c!1421)) b!15026))

(declare-fun m!9993 () Bool)

(assert (=> b!15026 m!9993))

(assert (=> start!2254 d!2454))

(declare-fun d!2461 () Bool)

(declare-fun isStrictlySorted!128 (List!437) Bool)

(assert (=> d!2461 (= (inv!744 thiss!177) (isStrictlySorted!128 (toList!209 thiss!177)))))

(declare-fun bs!618 () Bool)

(assert (= bs!618 d!2461))

(declare-fun m!9995 () Bool)

(assert (=> bs!618 m!9995))

(assert (=> start!2254 d!2461))

(declare-fun d!2463 () Bool)

(declare-fun size!502 (List!438) Int)

(assert (=> d!2463 (= (length!2 (getKeysList!1 (toList!209 thiss!177))) (size!502 (getKeysList!1 (toList!209 thiss!177))))))

(declare-fun bs!619 () Bool)

(assert (= bs!619 d!2463))

(assert (=> bs!619 m!9971))

(declare-fun m!9997 () Bool)

(assert (=> bs!619 m!9997))

(assert (=> b!15007 d!2463))

(declare-fun d!2465 () Bool)

(declare-fun e!9081 () Bool)

(assert (=> d!2465 e!9081))

(declare-fun res!11479 () Bool)

(assert (=> d!2465 (=> (not res!11479) (not e!9081))))

(declare-fun lt!3660 () List!438)

(declare-fun isStrictlySortedLong!0 (List!438) Bool)

(assert (=> d!2465 (= res!11479 (isStrictlySortedLong!0 lt!3660))))

(declare-fun e!9082 () List!438)

(assert (=> d!2465 (= lt!3660 e!9082)))

(declare-fun c!1433 () Bool)

(assert (=> d!2465 (= c!1433 (is-Cons!433 (toList!209 thiss!177)))))

(assert (=> d!2465 (isStrictlySorted!128 (toList!209 thiss!177))))

(assert (=> d!2465 (= (getKeysList!1 (toList!209 thiss!177)) lt!3660)))

(declare-fun b!15054 () Bool)

(assert (=> b!15054 (= e!9082 (Cons!434 (_1!278 (h!999 (toList!209 thiss!177))) (getKeysList!1 (t!2839 (toList!209 thiss!177)))))))

(declare-fun b!15055 () Bool)

(assert (=> b!15055 (= e!9082 Nil!435)))

(declare-fun b!15056 () Bool)

(declare-fun length!6 (List!437) Int)

(assert (=> b!15056 (= e!9081 (= (length!2 lt!3660) (length!6 (toList!209 thiss!177))))))

(assert (= (and d!2465 c!1433) b!15054))

(assert (= (and d!2465 (not c!1433)) b!15055))

(assert (= (and d!2465 res!11479) b!15056))

(declare-fun m!10017 () Bool)

(assert (=> d!2465 m!10017))

(assert (=> d!2465 m!9995))

(declare-fun m!10019 () Bool)

(assert (=> b!15054 m!10019))

(declare-fun m!10021 () Bool)

(assert (=> b!15056 m!10021))

(declare-fun m!10023 () Bool)

(assert (=> b!15056 m!10023))

(assert (=> b!15007 d!2465))

(declare-fun b!15069 () Bool)

(declare-fun e!9089 () Bool)

(declare-fun tp_is_empty!757 () Bool)

(declare-fun tp!2437 () Bool)

(assert (=> b!15069 (= e!9089 (and tp_is_empty!757 tp!2437))))

(assert (=> b!15008 (= tp!2426 e!9089)))

(assert (= (and b!15008 (is-Cons!433 (toList!209 thiss!177))) b!15069))

(push 1)

(assert tp_is_empty!757)

(assert (not d!2465))

(assert (not b!15056))

(assert (not b!15054))

(assert (not d!2463))

(assert (not b!15026))

(assert (not d!2461))

(assert (not b!15069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2479 () Bool)

(declare-fun res!11492 () Bool)

(declare-fun e!9108 () Bool)

(assert (=> d!2479 (=> res!11492 e!9108)))

(assert (=> d!2479 (= res!11492 (or (is-Nil!434 (toList!209 thiss!177)) (is-Nil!434 (t!2839 (toList!209 thiss!177)))))))

(assert (=> d!2479 (= (isStrictlySorted!128 (toList!209 thiss!177)) e!9108)))

(declare-fun b!15092 () Bool)

(declare-fun e!9109 () Bool)

(assert (=> b!15092 (= e!9108 e!9109)))

(declare-fun res!11493 () Bool)

(assert (=> b!15092 (=> (not res!11493) (not e!9109))))

(assert (=> b!15092 (= res!11493 (bvslt (_1!278 (h!999 (toList!209 thiss!177))) (_1!278 (h!999 (t!2839 (toList!209 thiss!177))))))))

(declare-fun b!15093 () Bool)

(assert (=> b!15093 (= e!9109 (isStrictlySorted!128 (t!2839 (toList!209 thiss!177))))))

(assert (= (and d!2479 (not res!11492)) b!15092))

(assert (= (and b!15092 res!11493) b!15093))

(declare-fun m!10043 () Bool)

(assert (=> b!15093 m!10043))

(assert (=> d!2461 d!2479))

(declare-fun d!2485 () Bool)

(declare-fun res!11501 () Bool)

(declare-fun e!9121 () Bool)

(assert (=> d!2485 (=> res!11501 e!9121)))

(assert (=> d!2485 (= res!11501 (or (is-Nil!435 lt!3660) (is-Nil!435 (t!2840 lt!3660))))))

(assert (=> d!2485 (= (isStrictlySortedLong!0 lt!3660) e!9121)))

(declare-fun b!15109 () Bool)

(declare-fun e!9122 () Bool)

(assert (=> b!15109 (= e!9121 e!9122)))

(declare-fun res!11502 () Bool)

(assert (=> b!15109 (=> (not res!11502) (not e!9122))))

(assert (=> b!15109 (= res!11502 (bvslt (h!1000 lt!3660) (h!1000 (t!2840 lt!3660))))))

(declare-fun b!15110 () Bool)

(assert (=> b!15110 (= e!9122 (isStrictlySortedLong!0 (t!2840 lt!3660)))))

(assert (= (and d!2485 (not res!11501)) b!15109))

(assert (= (and b!15109 res!11502) b!15110))

(declare-fun m!10057 () Bool)

(assert (=> b!15110 m!10057))

(assert (=> d!2465 d!2485))

(assert (=> d!2465 d!2479))

(declare-fun d!2493 () Bool)

(declare-fun e!9123 () Bool)

(assert (=> d!2493 e!9123))

(declare-fun res!11503 () Bool)

(assert (=> d!2493 (=> (not res!11503) (not e!9123))))

(declare-fun lt!3669 () List!438)

(assert (=> d!2493 (= res!11503 (isStrictlySortedLong!0 lt!3669))))

(declare-fun e!9124 () List!438)

(assert (=> d!2493 (= lt!3669 e!9124)))

(declare-fun c!1442 () Bool)

(assert (=> d!2493 (= c!1442 (is-Cons!433 (t!2839 (toList!209 thiss!177))))))

(assert (=> d!2493 (isStrictlySorted!128 (t!2839 (toList!209 thiss!177)))))

(assert (=> d!2493 (= (getKeysList!1 (t!2839 (toList!209 thiss!177))) lt!3669)))

(declare-fun b!15111 () Bool)

(assert (=> b!15111 (= e!9124 (Cons!434 (_1!278 (h!999 (t!2839 (toList!209 thiss!177)))) (getKeysList!1 (t!2839 (t!2839 (toList!209 thiss!177))))))))

(declare-fun b!15112 () Bool)

(assert (=> b!15112 (= e!9124 Nil!435)))

(declare-fun b!15113 () Bool)

(assert (=> b!15113 (= e!9123 (= (length!2 lt!3669) (length!6 (t!2839 (toList!209 thiss!177)))))))

(assert (= (and d!2493 c!1442) b!15111))

(assert (= (and d!2493 (not c!1442)) b!15112))

(assert (= (and d!2493 res!11503) b!15113))

(declare-fun m!10059 () Bool)

(assert (=> d!2493 m!10059))

(assert (=> d!2493 m!10043))

(declare-fun m!10061 () Bool)

(assert (=> b!15111 m!10061))

(declare-fun m!10063 () Bool)

(assert (=> b!15113 m!10063))

(declare-fun m!10065 () Bool)

(assert (=> b!15113 m!10065))

(assert (=> b!15054 d!2493))

(declare-fun d!2495 () Bool)

(declare-fun lt!3670 () Int)

(assert (=> d!2495 (>= lt!3670 0)))

(declare-fun e!9129 () Int)

(assert (=> d!2495 (= lt!3670 e!9129)))

(declare-fun c!1443 () Bool)

(assert (=> d!2495 (= c!1443 (is-Nil!434 (t!2839 (toList!209 thiss!177))))))

(assert (=> d!2495 (= (size!498 (t!2839 (toList!209 thiss!177))) lt!3670)))

(declare-fun b!15118 () Bool)

(assert (=> b!15118 (= e!9129 0)))

(declare-fun b!15119 () Bool)

(assert (=> b!15119 (= e!9129 (+ 1 (size!498 (t!2839 (t!2839 (toList!209 thiss!177))))))))

(assert (= (and d!2495 c!1443) b!15118))

(assert (= (and d!2495 (not c!1443)) b!15119))

(declare-fun m!10067 () Bool)

(assert (=> b!15119 m!10067))

(assert (=> b!15026 d!2495))

(declare-fun d!2497 () Bool)

(declare-fun lt!3674 () Int)

(assert (=> d!2497 (>= lt!3674 0)))

(declare-fun e!9141 () Int)

(assert (=> d!2497 (= lt!3674 e!9141)))

(declare-fun c!1447 () Bool)

(assert (=> d!2497 (= c!1447 (is-Nil!435 (getKeysList!1 (toList!209 thiss!177))))))

(assert (=> d!2497 (= (size!502 (getKeysList!1 (toList!209 thiss!177))) lt!3674)))

(declare-fun b!15134 () Bool)

(assert (=> b!15134 (= e!9141 0)))

(declare-fun b!15135 () Bool)

(assert (=> b!15135 (= e!9141 (+ 1 (size!502 (t!2840 (getKeysList!1 (toList!209 thiss!177))))))))

(assert (= (and d!2497 c!1447) b!15134))

(assert (= (and d!2497 (not c!1447)) b!15135))

(declare-fun m!10077 () Bool)

(assert (=> b!15135 m!10077))

(assert (=> d!2463 d!2497))

(declare-fun d!2511 () Bool)

(assert (=> d!2511 (= (length!2 lt!3660) (size!502 lt!3660))))

(declare-fun bs!626 () Bool)

(assert (= bs!626 d!2511))

(declare-fun m!10079 () Bool)

(assert (=> bs!626 m!10079))

(assert (=> b!15056 d!2511))

(declare-fun d!2513 () Bool)

(assert (=> d!2513 (= (length!6 (toList!209 thiss!177)) (size!498 (toList!209 thiss!177)))))

(declare-fun bs!628 () Bool)

(assert (= bs!628 d!2513))

(assert (=> bs!628 m!9967))

(assert (=> b!15056 d!2513))

(declare-fun b!15136 () Bool)

(declare-fun e!9142 () Bool)

(declare-fun tp!2442 () Bool)

(assert (=> b!15136 (= e!9142 (and tp_is_empty!757 tp!2442))))

(assert (=> b!15069 (= tp!2437 e!9142)))

(assert (= (and b!15069 (is-Cons!433 (t!2839 (toList!209 thiss!177)))) b!15136))

(push 1)

(assert (not d!2493))

(assert (not d!2513))

(assert (not d!2511))

(assert (not b!15119))

(assert (not b!15111))

(assert (not b!15113))

(assert (not b!15110))

(assert tp_is_empty!757)

(assert (not b!15135))

(assert (not b!15136))

(assert (not b!15093))

(check-sat)

