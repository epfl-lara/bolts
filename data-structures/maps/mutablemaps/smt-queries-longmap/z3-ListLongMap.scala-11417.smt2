; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133110 () Bool)

(assert start!133110)

(declare-fun res!1065344 () Bool)

(declare-fun e!867554 () Bool)

(assert (=> start!133110 (=> (not res!1065344) (not e!867554))))

(declare-datatypes ((B!2380 0))(
  ( (B!2381 (val!19276 Int)) )
))
(declare-datatypes ((tuple2!25068 0))(
  ( (tuple2!25069 (_1!12544 (_ BitVec 64)) (_2!12544 B!2380)) )
))
(declare-datatypes ((List!36456 0))(
  ( (Nil!36453) (Cons!36452 (h!37899 tuple2!25068) (t!51190 List!36456)) )
))
(declare-datatypes ((ListLongMap!22581 0))(
  ( (ListLongMap!22582 (toList!11306 List!36456)) )
))
(declare-fun lm!250 () ListLongMap!22581)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun contains!10208 (ListLongMap!22581 (_ BitVec 64)) Bool)

(assert (=> start!133110 (= res!1065344 (contains!10208 lm!250 a0!50))))

(assert (=> start!133110 e!867554))

(declare-fun e!867555 () Bool)

(declare-fun inv!57474 (ListLongMap!22581) Bool)

(assert (=> start!133110 (and (inv!57474 lm!250) e!867555)))

(assert (=> start!133110 true))

(declare-fun tp_is_empty!38385 () Bool)

(assert (=> start!133110 tp_is_empty!38385))

(declare-fun b!1557395 () Bool)

(declare-fun res!1065345 () Bool)

(assert (=> b!1557395 (=> (not res!1065345) (not e!867554))))

(declare-fun a!524 () (_ BitVec 64))

(assert (=> b!1557395 (= res!1065345 (= a!524 a0!50))))

(declare-fun b!1557396 () Bool)

(declare-fun b!97 () B!2380)

(declare-fun +!4985 (ListLongMap!22581 tuple2!25068) ListLongMap!22581)

(assert (=> b!1557396 (= e!867554 (not (contains!10208 (+!4985 lm!250 (tuple2!25069 a!524 b!97)) a0!50)))))

(declare-fun b!1557397 () Bool)

(declare-fun tp!112516 () Bool)

(assert (=> b!1557397 (= e!867555 tp!112516)))

(assert (= (and start!133110 res!1065344) b!1557395))

(assert (= (and b!1557395 res!1065345) b!1557396))

(assert (= start!133110 b!1557397))

(declare-fun m!1434533 () Bool)

(assert (=> start!133110 m!1434533))

(declare-fun m!1434535 () Bool)

(assert (=> start!133110 m!1434535))

(declare-fun m!1434537 () Bool)

(assert (=> b!1557396 m!1434537))

(assert (=> b!1557396 m!1434537))

(declare-fun m!1434539 () Bool)

(assert (=> b!1557396 m!1434539))

(check-sat (not b!1557396) (not start!133110) (not b!1557397) tp_is_empty!38385)
(check-sat)
(get-model)

(declare-fun d!162401 () Bool)

(declare-fun e!867578 () Bool)

(assert (=> d!162401 e!867578))

(declare-fun res!1065360 () Bool)

(assert (=> d!162401 (=> res!1065360 e!867578)))

(declare-fun lt!670587 () Bool)

(assert (=> d!162401 (= res!1065360 (not lt!670587))))

(declare-fun lt!670589 () Bool)

(assert (=> d!162401 (= lt!670587 lt!670589)))

(declare-datatypes ((Unit!51800 0))(
  ( (Unit!51801) )
))
(declare-fun lt!670586 () Unit!51800)

(declare-fun e!867579 () Unit!51800)

(assert (=> d!162401 (= lt!670586 e!867579)))

(declare-fun c!143930 () Bool)

(assert (=> d!162401 (= c!143930 lt!670589)))

(declare-fun containsKey!819 (List!36456 (_ BitVec 64)) Bool)

(assert (=> d!162401 (= lt!670589 (containsKey!819 (toList!11306 (+!4985 lm!250 (tuple2!25069 a!524 b!97))) a0!50))))

(assert (=> d!162401 (= (contains!10208 (+!4985 lm!250 (tuple2!25069 a!524 b!97)) a0!50) lt!670587)))

(declare-fun b!1557431 () Bool)

(declare-fun lt!670588 () Unit!51800)

(assert (=> b!1557431 (= e!867579 lt!670588)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!524 (List!36456 (_ BitVec 64)) Unit!51800)

(assert (=> b!1557431 (= lt!670588 (lemmaContainsKeyImpliesGetValueByKeyDefined!524 (toList!11306 (+!4985 lm!250 (tuple2!25069 a!524 b!97))) a0!50))))

(declare-datatypes ((Option!864 0))(
  ( (Some!863 (v!22050 B!2380)) (None!862) )
))
(declare-fun isDefined!573 (Option!864) Bool)

(declare-fun getValueByKey!789 (List!36456 (_ BitVec 64)) Option!864)

(assert (=> b!1557431 (isDefined!573 (getValueByKey!789 (toList!11306 (+!4985 lm!250 (tuple2!25069 a!524 b!97))) a0!50))))

(declare-fun b!1557432 () Bool)

(declare-fun Unit!51806 () Unit!51800)

(assert (=> b!1557432 (= e!867579 Unit!51806)))

(declare-fun b!1557433 () Bool)

(assert (=> b!1557433 (= e!867578 (isDefined!573 (getValueByKey!789 (toList!11306 (+!4985 lm!250 (tuple2!25069 a!524 b!97))) a0!50)))))

(assert (= (and d!162401 c!143930) b!1557431))

(assert (= (and d!162401 (not c!143930)) b!1557432))

(assert (= (and d!162401 (not res!1065360)) b!1557433))

(declare-fun m!1434565 () Bool)

(assert (=> d!162401 m!1434565))

(declare-fun m!1434567 () Bool)

(assert (=> b!1557431 m!1434567))

(declare-fun m!1434569 () Bool)

(assert (=> b!1557431 m!1434569))

(assert (=> b!1557431 m!1434569))

(declare-fun m!1434571 () Bool)

(assert (=> b!1557431 m!1434571))

(assert (=> b!1557433 m!1434569))

(assert (=> b!1557433 m!1434569))

(assert (=> b!1557433 m!1434571))

(assert (=> b!1557396 d!162401))

(declare-fun d!162407 () Bool)

(declare-fun e!867589 () Bool)

(assert (=> d!162407 e!867589))

(declare-fun res!1065376 () Bool)

(assert (=> d!162407 (=> (not res!1065376) (not e!867589))))

(declare-fun lt!670625 () ListLongMap!22581)

(assert (=> d!162407 (= res!1065376 (contains!10208 lt!670625 (_1!12544 (tuple2!25069 a!524 b!97))))))

(declare-fun lt!670624 () List!36456)

(assert (=> d!162407 (= lt!670625 (ListLongMap!22582 lt!670624))))

(declare-fun lt!670622 () Unit!51800)

(declare-fun lt!670623 () Unit!51800)

(assert (=> d!162407 (= lt!670622 lt!670623)))

(assert (=> d!162407 (= (getValueByKey!789 lt!670624 (_1!12544 (tuple2!25069 a!524 b!97))) (Some!863 (_2!12544 (tuple2!25069 a!524 b!97))))))

(declare-fun lemmaContainsTupThenGetReturnValue!383 (List!36456 (_ BitVec 64) B!2380) Unit!51800)

(assert (=> d!162407 (= lt!670623 (lemmaContainsTupThenGetReturnValue!383 lt!670624 (_1!12544 (tuple2!25069 a!524 b!97)) (_2!12544 (tuple2!25069 a!524 b!97))))))

(declare-fun insertStrictlySorted!558 (List!36456 (_ BitVec 64) B!2380) List!36456)

(assert (=> d!162407 (= lt!670624 (insertStrictlySorted!558 (toList!11306 lm!250) (_1!12544 (tuple2!25069 a!524 b!97)) (_2!12544 (tuple2!25069 a!524 b!97))))))

(assert (=> d!162407 (= (+!4985 lm!250 (tuple2!25069 a!524 b!97)) lt!670625)))

(declare-fun b!1557451 () Bool)

(declare-fun res!1065377 () Bool)

(assert (=> b!1557451 (=> (not res!1065377) (not e!867589))))

(assert (=> b!1557451 (= res!1065377 (= (getValueByKey!789 (toList!11306 lt!670625) (_1!12544 (tuple2!25069 a!524 b!97))) (Some!863 (_2!12544 (tuple2!25069 a!524 b!97)))))))

(declare-fun b!1557452 () Bool)

(declare-fun contains!10210 (List!36456 tuple2!25068) Bool)

(assert (=> b!1557452 (= e!867589 (contains!10210 (toList!11306 lt!670625) (tuple2!25069 a!524 b!97)))))

(assert (= (and d!162407 res!1065376) b!1557451))

(assert (= (and b!1557451 res!1065377) b!1557452))

(declare-fun m!1434593 () Bool)

(assert (=> d!162407 m!1434593))

(declare-fun m!1434597 () Bool)

(assert (=> d!162407 m!1434597))

(declare-fun m!1434599 () Bool)

(assert (=> d!162407 m!1434599))

(declare-fun m!1434601 () Bool)

(assert (=> d!162407 m!1434601))

(declare-fun m!1434603 () Bool)

(assert (=> b!1557451 m!1434603))

(declare-fun m!1434605 () Bool)

(assert (=> b!1557452 m!1434605))

(assert (=> b!1557396 d!162407))

(declare-fun d!162415 () Bool)

(declare-fun e!867592 () Bool)

(assert (=> d!162415 e!867592))

(declare-fun res!1065379 () Bool)

(assert (=> d!162415 (=> res!1065379 e!867592)))

(declare-fun lt!670631 () Bool)

(assert (=> d!162415 (= res!1065379 (not lt!670631))))

(declare-fun lt!670633 () Bool)

(assert (=> d!162415 (= lt!670631 lt!670633)))

(declare-fun lt!670630 () Unit!51800)

(declare-fun e!867593 () Unit!51800)

(assert (=> d!162415 (= lt!670630 e!867593)))

(declare-fun c!143933 () Bool)

(assert (=> d!162415 (= c!143933 lt!670633)))

(assert (=> d!162415 (= lt!670633 (containsKey!819 (toList!11306 lm!250) a0!50))))

(assert (=> d!162415 (= (contains!10208 lm!250 a0!50) lt!670631)))

(declare-fun b!1557456 () Bool)

(declare-fun lt!670632 () Unit!51800)

(assert (=> b!1557456 (= e!867593 lt!670632)))

(assert (=> b!1557456 (= lt!670632 (lemmaContainsKeyImpliesGetValueByKeyDefined!524 (toList!11306 lm!250) a0!50))))

(assert (=> b!1557456 (isDefined!573 (getValueByKey!789 (toList!11306 lm!250) a0!50))))

(declare-fun b!1557457 () Bool)

(declare-fun Unit!51809 () Unit!51800)

(assert (=> b!1557457 (= e!867593 Unit!51809)))

(declare-fun b!1557458 () Bool)

(assert (=> b!1557458 (= e!867592 (isDefined!573 (getValueByKey!789 (toList!11306 lm!250) a0!50)))))

(assert (= (and d!162415 c!143933) b!1557456))

(assert (= (and d!162415 (not c!143933)) b!1557457))

(assert (= (and d!162415 (not res!1065379)) b!1557458))

(declare-fun m!1434615 () Bool)

(assert (=> d!162415 m!1434615))

(declare-fun m!1434617 () Bool)

(assert (=> b!1557456 m!1434617))

(declare-fun m!1434619 () Bool)

(assert (=> b!1557456 m!1434619))

(assert (=> b!1557456 m!1434619))

(declare-fun m!1434621 () Bool)

(assert (=> b!1557456 m!1434621))

(assert (=> b!1557458 m!1434619))

(assert (=> b!1557458 m!1434619))

(assert (=> b!1557458 m!1434621))

(assert (=> start!133110 d!162415))

(declare-fun d!162419 () Bool)

(declare-fun isStrictlySorted!957 (List!36456) Bool)

(assert (=> d!162419 (= (inv!57474 lm!250) (isStrictlySorted!957 (toList!11306 lm!250)))))

(declare-fun bs!44762 () Bool)

(assert (= bs!44762 d!162419))

(declare-fun m!1434637 () Bool)

(assert (=> bs!44762 m!1434637))

(assert (=> start!133110 d!162419))

(declare-fun b!1557475 () Bool)

(declare-fun e!867603 () Bool)

(declare-fun tp!112528 () Bool)

(assert (=> b!1557475 (= e!867603 (and tp_is_empty!38385 tp!112528))))

(assert (=> b!1557397 (= tp!112516 e!867603)))

(get-info :version)

(assert (= (and b!1557397 ((_ is Cons!36452) (toList!11306 lm!250))) b!1557475))

(check-sat (not d!162401) (not b!1557456) (not b!1557431) (not b!1557458) (not b!1557451) (not d!162407) (not d!162415) (not b!1557433) (not b!1557475) tp_is_empty!38385 (not d!162419) (not b!1557452))
(check-sat)
