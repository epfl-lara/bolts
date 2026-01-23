; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417122 () Bool)

(assert start!417122)

(declare-fun b!4329504 () Bool)

(declare-fun res!1774366 () Bool)

(declare-fun e!2694081 () Bool)

(assert (=> b!4329504 (=> (not res!1774366) (not e!2694081))))

(declare-datatypes ((K!9840 0))(
  ( (K!9841 (val!16143 Int)) )
))
(declare-fun otherK!9 () K!9840)

(declare-fun key!5304 () K!9840)

(assert (=> b!4329504 (= res!1774366 (not (= otherK!9 key!5304)))))

(declare-datatypes ((V!10086 0))(
  ( (V!10087 (val!16144 Int)) )
))
(declare-datatypes ((tuple2!47608 0))(
  ( (tuple2!47609 (_1!27098 K!9840) (_2!27098 V!10086)) )
))
(declare-datatypes ((List!48632 0))(
  ( (Nil!48508) (Cons!48508 (h!53977 tuple2!47608) (t!355544 List!48632)) )
))
(declare-fun l!13918 () List!48632)

(declare-fun b!4329505 () Bool)

(declare-fun containsKey!467 (List!48632 K!9840) Bool)

(declare-fun removePairForKey!315 (List!48632 K!9840) List!48632)

(assert (=> b!4329505 (= e!2694081 (containsKey!467 (removePairForKey!315 l!13918 key!5304) otherK!9))))

(declare-datatypes ((Unit!68139 0))(
  ( (Unit!68140) )
))
(declare-fun lt!1545403 () Unit!68139)

(declare-fun lemmaRemovePairForKeyPreservesNotContainsKey!12 (List!48632 K!9840 K!9840) Unit!68139)

(assert (=> b!4329505 (= lt!1545403 (lemmaRemovePairForKeyPreservesNotContainsKey!12 (t!355544 l!13918) key!5304 otherK!9))))

(declare-fun tp_is_empty!24475 () Bool)

(declare-fun tp_is_empty!24473 () Bool)

(declare-fun tp!1328190 () Bool)

(declare-fun e!2694080 () Bool)

(declare-fun b!4329506 () Bool)

(assert (=> b!4329506 (= e!2694080 (and tp_is_empty!24473 tp_is_empty!24475 tp!1328190))))

(declare-fun res!1774364 () Bool)

(assert (=> start!417122 (=> (not res!1774364) (not e!2694081))))

(declare-fun noDuplicateKeys!321 (List!48632) Bool)

(assert (=> start!417122 (= res!1774364 (noDuplicateKeys!321 l!13918))))

(assert (=> start!417122 e!2694081))

(assert (=> start!417122 e!2694080))

(assert (=> start!417122 tp_is_empty!24473))

(declare-fun b!4329507 () Bool)

(declare-fun res!1774365 () Bool)

(assert (=> b!4329507 (=> (not res!1774365) (not e!2694081))))

(assert (=> b!4329507 (= res!1774365 (not (containsKey!467 l!13918 otherK!9)))))

(declare-fun b!4329508 () Bool)

(declare-fun res!1774367 () Bool)

(assert (=> b!4329508 (=> (not res!1774367) (not e!2694081))))

(get-info :version)

(assert (=> b!4329508 (= res!1774367 (not ((_ is Nil!48508) l!13918)))))

(assert (= (and start!417122 res!1774364) b!4329504))

(assert (= (and b!4329504 res!1774366) b!4329507))

(assert (= (and b!4329507 res!1774365) b!4329508))

(assert (= (and b!4329508 res!1774367) b!4329505))

(assert (= (and start!417122 ((_ is Cons!48508) l!13918)) b!4329506))

(declare-fun m!4923863 () Bool)

(assert (=> b!4329505 m!4923863))

(assert (=> b!4329505 m!4923863))

(declare-fun m!4923865 () Bool)

(assert (=> b!4329505 m!4923865))

(declare-fun m!4923867 () Bool)

(assert (=> b!4329505 m!4923867))

(declare-fun m!4923869 () Bool)

(assert (=> start!417122 m!4923869))

(declare-fun m!4923871 () Bool)

(assert (=> b!4329507 m!4923871))

(check-sat tp_is_empty!24475 tp_is_empty!24473 (not b!4329507) (not b!4329506) (not start!417122) (not b!4329505))
(check-sat)
(get-model)

(declare-fun d!1272420 () Bool)

(declare-fun res!1774378 () Bool)

(declare-fun e!2694092 () Bool)

(assert (=> d!1272420 (=> res!1774378 e!2694092)))

(assert (=> d!1272420 (= res!1774378 (not ((_ is Cons!48508) l!13918)))))

(assert (=> d!1272420 (= (noDuplicateKeys!321 l!13918) e!2694092)))

(declare-fun b!4329519 () Bool)

(declare-fun e!2694093 () Bool)

(assert (=> b!4329519 (= e!2694092 e!2694093)))

(declare-fun res!1774379 () Bool)

(assert (=> b!4329519 (=> (not res!1774379) (not e!2694093))))

(assert (=> b!4329519 (= res!1774379 (not (containsKey!467 (t!355544 l!13918) (_1!27098 (h!53977 l!13918)))))))

(declare-fun b!4329520 () Bool)

(assert (=> b!4329520 (= e!2694093 (noDuplicateKeys!321 (t!355544 l!13918)))))

(assert (= (and d!1272420 (not res!1774378)) b!4329519))

(assert (= (and b!4329519 res!1774379) b!4329520))

(declare-fun m!4923875 () Bool)

(assert (=> b!4329519 m!4923875))

(declare-fun m!4923877 () Bool)

(assert (=> b!4329520 m!4923877))

(assert (=> start!417122 d!1272420))

(declare-fun d!1272424 () Bool)

(declare-fun res!1774384 () Bool)

(declare-fun e!2694100 () Bool)

(assert (=> d!1272424 (=> res!1774384 e!2694100)))

(assert (=> d!1272424 (= res!1774384 (and ((_ is Cons!48508) l!13918) (= (_1!27098 (h!53977 l!13918)) otherK!9)))))

(assert (=> d!1272424 (= (containsKey!467 l!13918 otherK!9) e!2694100)))

(declare-fun b!4329529 () Bool)

(declare-fun e!2694101 () Bool)

(assert (=> b!4329529 (= e!2694100 e!2694101)))

(declare-fun res!1774385 () Bool)

(assert (=> b!4329529 (=> (not res!1774385) (not e!2694101))))

(assert (=> b!4329529 (= res!1774385 ((_ is Cons!48508) l!13918))))

(declare-fun b!4329530 () Bool)

(assert (=> b!4329530 (= e!2694101 (containsKey!467 (t!355544 l!13918) otherK!9))))

(assert (= (and d!1272424 (not res!1774384)) b!4329529))

(assert (= (and b!4329529 res!1774385) b!4329530))

(declare-fun m!4923879 () Bool)

(assert (=> b!4329530 m!4923879))

(assert (=> b!4329507 d!1272424))

(declare-fun d!1272426 () Bool)

(declare-fun res!1774386 () Bool)

(declare-fun e!2694104 () Bool)

(assert (=> d!1272426 (=> res!1774386 e!2694104)))

(assert (=> d!1272426 (= res!1774386 (and ((_ is Cons!48508) (removePairForKey!315 l!13918 key!5304)) (= (_1!27098 (h!53977 (removePairForKey!315 l!13918 key!5304))) otherK!9)))))

(assert (=> d!1272426 (= (containsKey!467 (removePairForKey!315 l!13918 key!5304) otherK!9) e!2694104)))

(declare-fun b!4329535 () Bool)

(declare-fun e!2694105 () Bool)

(assert (=> b!4329535 (= e!2694104 e!2694105)))

(declare-fun res!1774387 () Bool)

(assert (=> b!4329535 (=> (not res!1774387) (not e!2694105))))

(assert (=> b!4329535 (= res!1774387 ((_ is Cons!48508) (removePairForKey!315 l!13918 key!5304)))))

(declare-fun b!4329536 () Bool)

(assert (=> b!4329536 (= e!2694105 (containsKey!467 (t!355544 (removePairForKey!315 l!13918 key!5304)) otherK!9))))

(assert (= (and d!1272426 (not res!1774386)) b!4329535))

(assert (= (and b!4329535 res!1774387) b!4329536))

(declare-fun m!4923881 () Bool)

(assert (=> b!4329536 m!4923881))

(assert (=> b!4329505 d!1272426))

(declare-fun b!4329552 () Bool)

(declare-fun e!2694112 () List!48632)

(assert (=> b!4329552 (= e!2694112 Nil!48508)))

(declare-fun d!1272428 () Bool)

(declare-fun lt!1545412 () List!48632)

(assert (=> d!1272428 (not (containsKey!467 lt!1545412 key!5304))))

(declare-fun e!2694113 () List!48632)

(assert (=> d!1272428 (= lt!1545412 e!2694113)))

(declare-fun c!736648 () Bool)

(assert (=> d!1272428 (= c!736648 (and ((_ is Cons!48508) l!13918) (= (_1!27098 (h!53977 l!13918)) key!5304)))))

(assert (=> d!1272428 (noDuplicateKeys!321 l!13918)))

(assert (=> d!1272428 (= (removePairForKey!315 l!13918 key!5304) lt!1545412)))

(declare-fun b!4329551 () Bool)

(assert (=> b!4329551 (= e!2694112 (Cons!48508 (h!53977 l!13918) (removePairForKey!315 (t!355544 l!13918) key!5304)))))

(declare-fun b!4329550 () Bool)

(assert (=> b!4329550 (= e!2694113 e!2694112)))

(declare-fun c!736649 () Bool)

(assert (=> b!4329550 (= c!736649 ((_ is Cons!48508) l!13918))))

(declare-fun b!4329549 () Bool)

(assert (=> b!4329549 (= e!2694113 (t!355544 l!13918))))

(assert (= (and d!1272428 c!736648) b!4329549))

(assert (= (and d!1272428 (not c!736648)) b!4329550))

(assert (= (and b!4329550 c!736649) b!4329551))

(assert (= (and b!4329550 (not c!736649)) b!4329552))

(declare-fun m!4923893 () Bool)

(assert (=> d!1272428 m!4923893))

(assert (=> d!1272428 m!4923869))

(declare-fun m!4923895 () Bool)

(assert (=> b!4329551 m!4923895))

(assert (=> b!4329505 d!1272428))

(declare-fun d!1272434 () Bool)

(assert (=> d!1272434 (not (containsKey!467 (removePairForKey!315 (t!355544 l!13918) key!5304) otherK!9))))

(declare-fun lt!1545415 () Unit!68139)

(declare-fun choose!26480 (List!48632 K!9840 K!9840) Unit!68139)

(assert (=> d!1272434 (= lt!1545415 (choose!26480 (t!355544 l!13918) key!5304 otherK!9))))

(assert (=> d!1272434 (noDuplicateKeys!321 (t!355544 l!13918))))

(assert (=> d!1272434 (= (lemmaRemovePairForKeyPreservesNotContainsKey!12 (t!355544 l!13918) key!5304 otherK!9) lt!1545415)))

(declare-fun bs!607629 () Bool)

(assert (= bs!607629 d!1272434))

(assert (=> bs!607629 m!4923895))

(assert (=> bs!607629 m!4923895))

(declare-fun m!4923901 () Bool)

(assert (=> bs!607629 m!4923901))

(declare-fun m!4923903 () Bool)

(assert (=> bs!607629 m!4923903))

(assert (=> bs!607629 m!4923877))

(assert (=> b!4329505 d!1272434))

(declare-fun e!2694127 () Bool)

(declare-fun tp!1328196 () Bool)

(declare-fun b!4329570 () Bool)

(assert (=> b!4329570 (= e!2694127 (and tp_is_empty!24473 tp_is_empty!24475 tp!1328196))))

(assert (=> b!4329506 (= tp!1328190 e!2694127)))

(assert (= (and b!4329506 ((_ is Cons!48508) (t!355544 l!13918))) b!4329570))

(check-sat (not b!4329530) (not d!1272434) tp_is_empty!24473 (not b!4329551) (not d!1272428) (not b!4329570) (not b!4329520) (not b!4329536) (not b!4329519) tp_is_empty!24475)
(check-sat)
