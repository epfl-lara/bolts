; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2256 () Bool)

(assert start!2256)

(declare-fun res!11470 () Bool)

(declare-fun e!9054 () Bool)

(assert (=> start!2256 (=> (not res!11470) (not e!9054))))

(declare-datatypes ((B!580 0))(
  ( (B!581 (val!388 Int)) )
))
(declare-datatypes ((tuple2!558 0))(
  ( (tuple2!559 (_1!279 (_ BitVec 64)) (_2!279 B!580)) )
))
(declare-datatypes ((List!439 0))(
  ( (Nil!436) (Cons!435 (h!1001 tuple2!558) (t!2841 List!439)) )
))
(declare-datatypes ((ListLongMap!389 0))(
  ( (ListLongMap!390 (toList!210 List!439)) )
))
(declare-fun thiss!177 () ListLongMap!389)

(declare-fun size!499 (List!439) Int)

(assert (=> start!2256 (= res!11470 (< (size!499 (toList!210 thiss!177)) 2147483647))))

(assert (=> start!2256 e!9054))

(declare-fun e!9055 () Bool)

(declare-fun inv!745 (ListLongMap!389) Bool)

(assert (=> start!2256 (and (inv!745 thiss!177) e!9055)))

(declare-fun b!15013 () Bool)

(declare-datatypes ((List!440 0))(
  ( (Nil!437) (Cons!436 (h!1002 (_ BitVec 64)) (t!2842 List!440)) )
))
(declare-fun length!3 (List!440) Int)

(declare-fun getKeysList!2 (List!439) List!440)

(assert (=> b!15013 (= e!9054 (>= (length!3 (getKeysList!2 (toList!210 thiss!177))) 2147483647))))

(declare-fun b!15014 () Bool)

(declare-fun tp!2429 () Bool)

(assert (=> b!15014 (= e!9055 tp!2429)))

(assert (= (and start!2256 res!11470) b!15013))

(assert (= start!2256 b!15014))

(declare-fun m!9975 () Bool)

(assert (=> start!2256 m!9975))

(declare-fun m!9977 () Bool)

(assert (=> start!2256 m!9977))

(declare-fun m!9979 () Bool)

(assert (=> b!15013 m!9979))

(assert (=> b!15013 m!9979))

(declare-fun m!9981 () Bool)

(assert (=> b!15013 m!9981))

(check-sat (not start!2256) (not b!15013) (not b!15014))
(check-sat)
(get-model)

(declare-fun d!2459 () Bool)

(declare-fun lt!3653 () Int)

(assert (=> d!2459 (>= lt!3653 0)))

(declare-fun e!9071 () Int)

(assert (=> d!2459 (= lt!3653 e!9071)))

(declare-fun c!1426 () Bool)

(get-info :version)

(assert (=> d!2459 (= c!1426 ((_ is Nil!436) (toList!210 thiss!177)))))

(assert (=> d!2459 (= (size!499 (toList!210 thiss!177)) lt!3653)))

(declare-fun b!15037 () Bool)

(assert (=> b!15037 (= e!9071 0)))

(declare-fun b!15038 () Bool)

(assert (=> b!15038 (= e!9071 (+ 1 (size!499 (t!2841 (toList!210 thiss!177)))))))

(assert (= (and d!2459 c!1426) b!15037))

(assert (= (and d!2459 (not c!1426)) b!15038))

(declare-fun m!9999 () Bool)

(assert (=> b!15038 m!9999))

(assert (=> start!2256 d!2459))

(declare-fun d!2467 () Bool)

(declare-fun isStrictlySorted!130 (List!439) Bool)

(assert (=> d!2467 (= (inv!745 thiss!177) (isStrictlySorted!130 (toList!210 thiss!177)))))

(declare-fun bs!620 () Bool)

(assert (= bs!620 d!2467))

(declare-fun m!10011 () Bool)

(assert (=> bs!620 m!10011))

(assert (=> start!2256 d!2467))

(declare-fun d!2471 () Bool)

(declare-fun size!503 (List!440) Int)

(assert (=> d!2471 (= (length!3 (getKeysList!2 (toList!210 thiss!177))) (size!503 (getKeysList!2 (toList!210 thiss!177))))))

(declare-fun bs!621 () Bool)

(assert (= bs!621 d!2471))

(assert (=> bs!621 m!9979))

(declare-fun m!10013 () Bool)

(assert (=> bs!621 m!10013))

(assert (=> b!15013 d!2471))

(declare-fun d!2473 () Bool)

(declare-fun e!9093 () Bool)

(assert (=> d!2473 e!9093))

(declare-fun res!11482 () Bool)

(assert (=> d!2473 (=> (not res!11482) (not e!9093))))

(declare-fun lt!3663 () List!440)

(declare-fun isStrictlySortedLong!0 (List!440) Bool)

(assert (=> d!2473 (= res!11482 (isStrictlySortedLong!0 lt!3663))))

(declare-fun e!9094 () List!440)

(assert (=> d!2473 (= lt!3663 e!9094)))

(declare-fun c!1436 () Bool)

(assert (=> d!2473 (= c!1436 ((_ is Cons!435) (toList!210 thiss!177)))))

(assert (=> d!2473 (isStrictlySorted!130 (toList!210 thiss!177))))

(assert (=> d!2473 (= (getKeysList!2 (toList!210 thiss!177)) lt!3663)))

(declare-fun b!15073 () Bool)

(assert (=> b!15073 (= e!9094 (Cons!436 (_1!279 (h!1001 (toList!210 thiss!177))) (getKeysList!2 (t!2841 (toList!210 thiss!177)))))))

(declare-fun b!15074 () Bool)

(assert (=> b!15074 (= e!9094 Nil!437)))

(declare-fun b!15075 () Bool)

(declare-fun length!7 (List!439) Int)

(assert (=> b!15075 (= e!9093 (= (length!3 lt!3663) (length!7 (toList!210 thiss!177))))))

(assert (= (and d!2473 c!1436) b!15073))

(assert (= (and d!2473 (not c!1436)) b!15074))

(assert (= (and d!2473 res!11482) b!15075))

(declare-fun m!10025 () Bool)

(assert (=> d!2473 m!10025))

(assert (=> d!2473 m!10011))

(declare-fun m!10027 () Bool)

(assert (=> b!15073 m!10027))

(declare-fun m!10029 () Bool)

(assert (=> b!15075 m!10029))

(declare-fun m!10031 () Bool)

(assert (=> b!15075 m!10031))

(assert (=> b!15013 d!2473))

(declare-fun b!15080 () Bool)

(declare-fun e!9097 () Bool)

(declare-fun tp_is_empty!761 () Bool)

(declare-fun tp!2441 () Bool)

(assert (=> b!15080 (= e!9097 (and tp_is_empty!761 tp!2441))))

(assert (=> b!15014 (= tp!2429 e!9097)))

(assert (= (and b!15014 ((_ is Cons!435) (toList!210 thiss!177))) b!15080))

(check-sat (not b!15073) (not d!2471) tp_is_empty!761 (not b!15080) (not d!2473) (not d!2467) (not b!15038) (not b!15075))
(check-sat)
(get-model)

(declare-fun d!2477 () Bool)

(declare-fun e!9098 () Bool)

(assert (=> d!2477 e!9098))

(declare-fun res!11483 () Bool)

(assert (=> d!2477 (=> (not res!11483) (not e!9098))))

(declare-fun lt!3664 () List!440)

(assert (=> d!2477 (= res!11483 (isStrictlySortedLong!0 lt!3664))))

(declare-fun e!9099 () List!440)

(assert (=> d!2477 (= lt!3664 e!9099)))

(declare-fun c!1437 () Bool)

(assert (=> d!2477 (= c!1437 ((_ is Cons!435) (t!2841 (toList!210 thiss!177))))))

(assert (=> d!2477 (isStrictlySorted!130 (t!2841 (toList!210 thiss!177)))))

(assert (=> d!2477 (= (getKeysList!2 (t!2841 (toList!210 thiss!177))) lt!3664)))

(declare-fun b!15081 () Bool)

(assert (=> b!15081 (= e!9099 (Cons!436 (_1!279 (h!1001 (t!2841 (toList!210 thiss!177)))) (getKeysList!2 (t!2841 (t!2841 (toList!210 thiss!177))))))))

(declare-fun b!15082 () Bool)

(assert (=> b!15082 (= e!9099 Nil!437)))

(declare-fun b!15083 () Bool)

(assert (=> b!15083 (= e!9098 (= (length!3 lt!3664) (length!7 (t!2841 (toList!210 thiss!177)))))))

(assert (= (and d!2477 c!1437) b!15081))

(assert (= (and d!2477 (not c!1437)) b!15082))

(assert (= (and d!2477 res!11483) b!15083))

(declare-fun m!10033 () Bool)

(assert (=> d!2477 m!10033))

(declare-fun m!10035 () Bool)

(assert (=> d!2477 m!10035))

(declare-fun m!10037 () Bool)

(assert (=> b!15081 m!10037))

(declare-fun m!10039 () Bool)

(assert (=> b!15083 m!10039))

(declare-fun m!10041 () Bool)

(assert (=> b!15083 m!10041))

(assert (=> b!15073 d!2477))

(declare-fun d!2481 () Bool)

(declare-fun res!11494 () Bool)

(declare-fun e!9112 () Bool)

(assert (=> d!2481 (=> res!11494 e!9112)))

(assert (=> d!2481 (= res!11494 (or ((_ is Nil!436) (toList!210 thiss!177)) ((_ is Nil!436) (t!2841 (toList!210 thiss!177)))))))

(assert (=> d!2481 (= (isStrictlySorted!130 (toList!210 thiss!177)) e!9112)))

(declare-fun b!15098 () Bool)

(declare-fun e!9113 () Bool)

(assert (=> b!15098 (= e!9112 e!9113)))

(declare-fun res!11495 () Bool)

(assert (=> b!15098 (=> (not res!11495) (not e!9113))))

(assert (=> b!15098 (= res!11495 (bvslt (_1!279 (h!1001 (toList!210 thiss!177))) (_1!279 (h!1001 (t!2841 (toList!210 thiss!177))))))))

(declare-fun b!15099 () Bool)

(assert (=> b!15099 (= e!9113 (isStrictlySorted!130 (t!2841 (toList!210 thiss!177))))))

(assert (= (and d!2481 (not res!11494)) b!15098))

(assert (= (and b!15098 res!11495) b!15099))

(assert (=> b!15099 m!10035))

(assert (=> d!2467 d!2481))

(declare-fun d!2487 () Bool)

(declare-fun res!11512 () Bool)

(declare-fun e!9134 () Bool)

(assert (=> d!2487 (=> res!11512 e!9134)))

(assert (=> d!2487 (= res!11512 (or ((_ is Nil!437) lt!3663) ((_ is Nil!437) (t!2842 lt!3663))))))

(assert (=> d!2487 (= (isStrictlySortedLong!0 lt!3663) e!9134)))

(declare-fun b!15124 () Bool)

(declare-fun e!9135 () Bool)

(assert (=> b!15124 (= e!9134 e!9135)))

(declare-fun res!11513 () Bool)

(assert (=> b!15124 (=> (not res!11513) (not e!9135))))

(assert (=> b!15124 (= res!11513 (bvslt (h!1002 lt!3663) (h!1002 (t!2842 lt!3663))))))

(declare-fun b!15125 () Bool)

(assert (=> b!15125 (= e!9135 (isStrictlySortedLong!0 (t!2842 lt!3663)))))

(assert (= (and d!2487 (not res!11512)) b!15124))

(assert (= (and b!15124 res!11513) b!15125))

(declare-fun m!10069 () Bool)

(assert (=> b!15125 m!10069))

(assert (=> d!2473 d!2487))

(assert (=> d!2473 d!2481))

(declare-fun d!2499 () Bool)

(assert (=> d!2499 (= (length!3 lt!3663) (size!503 lt!3663))))

(declare-fun bs!623 () Bool)

(assert (= bs!623 d!2499))

(declare-fun m!10071 () Bool)

(assert (=> bs!623 m!10071))

(assert (=> b!15075 d!2499))

(declare-fun d!2501 () Bool)

(assert (=> d!2501 (= (length!7 (toList!210 thiss!177)) (size!499 (toList!210 thiss!177)))))

(declare-fun bs!625 () Bool)

(assert (= bs!625 d!2501))

(assert (=> bs!625 m!9975))

(assert (=> b!15075 d!2501))

(declare-fun d!2509 () Bool)

(declare-fun lt!3677 () Int)

(assert (=> d!2509 (>= lt!3677 0)))

(declare-fun e!9149 () Int)

(assert (=> d!2509 (= lt!3677 e!9149)))

(declare-fun c!1450 () Bool)

(assert (=> d!2509 (= c!1450 ((_ is Nil!437) (getKeysList!2 (toList!210 thiss!177))))))

(assert (=> d!2509 (= (size!503 (getKeysList!2 (toList!210 thiss!177))) lt!3677)))

(declare-fun b!15145 () Bool)

(assert (=> b!15145 (= e!9149 0)))

(declare-fun b!15146 () Bool)

(assert (=> b!15146 (= e!9149 (+ 1 (size!503 (t!2842 (getKeysList!2 (toList!210 thiss!177))))))))

(assert (= (and d!2509 c!1450) b!15145))

(assert (= (and d!2509 (not c!1450)) b!15146))

(declare-fun m!10081 () Bool)

(assert (=> b!15146 m!10081))

(assert (=> d!2471 d!2509))

(declare-fun d!2517 () Bool)

(declare-fun lt!3678 () Int)

(assert (=> d!2517 (>= lt!3678 0)))

(declare-fun e!9152 () Int)

(assert (=> d!2517 (= lt!3678 e!9152)))

(declare-fun c!1451 () Bool)

(assert (=> d!2517 (= c!1451 ((_ is Nil!436) (t!2841 (toList!210 thiss!177))))))

(assert (=> d!2517 (= (size!499 (t!2841 (toList!210 thiss!177))) lt!3678)))

(declare-fun b!15149 () Bool)

(assert (=> b!15149 (= e!9152 0)))

(declare-fun b!15150 () Bool)

(assert (=> b!15150 (= e!9152 (+ 1 (size!499 (t!2841 (t!2841 (toList!210 thiss!177))))))))

(assert (= (and d!2517 c!1451) b!15149))

(assert (= (and d!2517 (not c!1451)) b!15150))

(declare-fun m!10085 () Bool)

(assert (=> b!15150 m!10085))

(assert (=> b!15038 d!2517))

(declare-fun b!15152 () Bool)

(declare-fun e!9154 () Bool)

(declare-fun tp!2444 () Bool)

(assert (=> b!15152 (= e!9154 (and tp_is_empty!761 tp!2444))))

(assert (=> b!15080 (= tp!2441 e!9154)))

(assert (= (and b!15080 ((_ is Cons!435) (t!2841 (toList!210 thiss!177)))) b!15152))

(check-sat (not b!15150) (not b!15152) (not b!15083) (not b!15125) tp_is_empty!761 (not d!2501) (not b!15099) (not b!15146) (not d!2499) (not b!15081) (not d!2477))
(check-sat)
