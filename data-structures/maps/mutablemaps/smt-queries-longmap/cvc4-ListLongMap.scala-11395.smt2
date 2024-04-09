; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132644 () Bool)

(assert start!132644)

(declare-fun b!1554380 () Bool)

(declare-fun e!865562 () Bool)

(declare-fun e!865561 () Bool)

(assert (=> b!1554380 (= e!865562 (not e!865561))))

(declare-fun res!1063846 () Bool)

(assert (=> b!1554380 (=> res!1063846 e!865561)))

(declare-datatypes ((B!2250 0))(
  ( (B!2251 (val!19211 Int)) )
))
(declare-datatypes ((tuple2!24938 0))(
  ( (tuple2!24939 (_1!12479 (_ BitVec 64)) (_2!12479 B!2250)) )
))
(declare-datatypes ((List!36391 0))(
  ( (Nil!36388) (Cons!36387 (h!37834 tuple2!24938) (t!51119 List!36391)) )
))
(declare-datatypes ((ListLongMap!22559 0))(
  ( (ListLongMap!22560 (toList!11295 List!36391)) )
))
(declare-fun lm!249 () ListLongMap!22559)

(declare-fun isStrictlySorted!904 (List!36391) Bool)

(assert (=> b!1554380 (= res!1063846 (not (isStrictlySorted!904 (toList!11295 lm!249))))))

(declare-fun e!865560 () Bool)

(assert (=> b!1554380 e!865560))

(declare-fun res!1063845 () Bool)

(assert (=> b!1554380 (=> (not res!1063845) (not e!865560))))

(declare-fun lt!669969 () List!36391)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun containsKey!776 (List!36391 (_ BitVec 64)) Bool)

(assert (=> b!1554380 (= res!1063845 (containsKey!776 lt!669969 a0!49))))

(declare-fun a!523 () (_ BitVec 64))

(declare-fun b!96 () B!2250)

(declare-fun insertStrictlySorted!518 (List!36391 (_ BitVec 64) B!2250) List!36391)

(assert (=> b!1554380 (= lt!669969 (insertStrictlySorted!518 (toList!11295 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51732 0))(
  ( (Unit!51733) )
))
(declare-fun lt!669971 () Unit!51732)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!15 (List!36391 (_ BitVec 64) B!2250 (_ BitVec 64)) Unit!51732)

(assert (=> b!1554380 (= lt!669971 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!15 (toList!11295 lm!249) a!523 b!96 a0!49))))

(declare-fun b!1554381 () Bool)

(declare-fun apply!1144 (ListLongMap!22559 (_ BitVec 64)) B!2250)

(declare-fun +!4980 (ListLongMap!22559 tuple2!24938) ListLongMap!22559)

(assert (=> b!1554381 (= e!865561 (= (apply!1144 (+!4980 lm!249 (tuple2!24939 a!523 b!96)) a0!49) (apply!1144 lm!249 a0!49)))))

(declare-datatypes ((Option!833 0))(
  ( (Some!832 (v!22013 B!2250)) (None!831) )
))
(declare-fun isDefined!566 (Option!833) Bool)

(declare-fun getValueByKey!758 (List!36391 (_ BitVec 64)) Option!833)

(assert (=> b!1554381 (isDefined!566 (getValueByKey!758 (toList!11295 lm!249) a0!49))))

(declare-fun lt!669970 () Unit!51732)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!517 (List!36391 (_ BitVec 64)) Unit!51732)

(assert (=> b!1554381 (= lt!669970 (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!11295 lm!249) a0!49))))

(declare-fun res!1063844 () Bool)

(assert (=> start!132644 (=> (not res!1063844) (not e!865562))))

(declare-fun contains!10173 (ListLongMap!22559 (_ BitVec 64)) Bool)

(assert (=> start!132644 (= res!1063844 (contains!10173 lm!249 a0!49))))

(assert (=> start!132644 e!865562))

(declare-fun e!865563 () Bool)

(declare-fun inv!57353 (ListLongMap!22559) Bool)

(assert (=> start!132644 (and (inv!57353 lm!249) e!865563)))

(assert (=> start!132644 true))

(declare-fun tp_is_empty!38261 () Bool)

(assert (=> start!132644 tp_is_empty!38261))

(declare-fun b!1554382 () Bool)

(declare-fun tp!112207 () Bool)

(assert (=> b!1554382 (= e!865563 tp!112207)))

(declare-fun b!1554383 () Bool)

(declare-fun res!1063848 () Bool)

(assert (=> b!1554383 (=> (not res!1063848) (not e!865562))))

(assert (=> b!1554383 (= res!1063848 (containsKey!776 (toList!11295 lm!249) a0!49))))

(declare-fun b!1554384 () Bool)

(assert (=> b!1554384 (= e!865560 (= (getValueByKey!758 lt!669969 a0!49) (getValueByKey!758 (toList!11295 lm!249) a0!49)))))

(declare-fun b!1554385 () Bool)

(declare-fun res!1063847 () Bool)

(assert (=> b!1554385 (=> (not res!1063847) (not e!865562))))

(assert (=> b!1554385 (= res!1063847 (not (= a0!49 a!523)))))

(assert (= (and start!132644 res!1063844) b!1554385))

(assert (= (and b!1554385 res!1063847) b!1554383))

(assert (= (and b!1554383 res!1063848) b!1554380))

(assert (= (and b!1554380 res!1063845) b!1554384))

(assert (= (and b!1554380 (not res!1063846)) b!1554381))

(assert (= start!132644 b!1554382))

(declare-fun m!1432751 () Bool)

(assert (=> b!1554384 m!1432751))

(declare-fun m!1432753 () Bool)

(assert (=> b!1554384 m!1432753))

(declare-fun m!1432755 () Bool)

(assert (=> start!132644 m!1432755))

(declare-fun m!1432757 () Bool)

(assert (=> start!132644 m!1432757))

(declare-fun m!1432759 () Bool)

(assert (=> b!1554381 m!1432759))

(assert (=> b!1554381 m!1432753))

(declare-fun m!1432761 () Bool)

(assert (=> b!1554381 m!1432761))

(assert (=> b!1554381 m!1432753))

(declare-fun m!1432763 () Bool)

(assert (=> b!1554381 m!1432763))

(declare-fun m!1432765 () Bool)

(assert (=> b!1554381 m!1432765))

(assert (=> b!1554381 m!1432761))

(declare-fun m!1432767 () Bool)

(assert (=> b!1554381 m!1432767))

(declare-fun m!1432769 () Bool)

(assert (=> b!1554380 m!1432769))

(declare-fun m!1432771 () Bool)

(assert (=> b!1554380 m!1432771))

(declare-fun m!1432773 () Bool)

(assert (=> b!1554380 m!1432773))

(declare-fun m!1432775 () Bool)

(assert (=> b!1554380 m!1432775))

(declare-fun m!1432777 () Bool)

(assert (=> b!1554383 m!1432777))

(push 1)

(assert (not b!1554381))

(assert (not start!132644))

(assert (not b!1554380))

(assert (not b!1554383))

(assert tp_is_empty!38261)

(assert (not b!1554382))

(assert (not b!1554384))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161677 () Bool)

(declare-fun res!1063853 () Bool)

(declare-fun e!865578 () Bool)

(assert (=> d!161677 (=> res!1063853 e!865578)))

(assert (=> d!161677 (= res!1063853 (and (is-Cons!36387 (toList!11295 lm!249)) (= (_1!12479 (h!37834 (toList!11295 lm!249))) a0!49)))))

(assert (=> d!161677 (= (containsKey!776 (toList!11295 lm!249) a0!49) e!865578)))

(declare-fun b!1554410 () Bool)

(declare-fun e!865579 () Bool)

(assert (=> b!1554410 (= e!865578 e!865579)))

(declare-fun res!1063854 () Bool)

(assert (=> b!1554410 (=> (not res!1063854) (not e!865579))))

(assert (=> b!1554410 (= res!1063854 (and (or (not (is-Cons!36387 (toList!11295 lm!249))) (bvsle (_1!12479 (h!37834 (toList!11295 lm!249))) a0!49)) (is-Cons!36387 (toList!11295 lm!249)) (bvslt (_1!12479 (h!37834 (toList!11295 lm!249))) a0!49)))))

(declare-fun b!1554411 () Bool)

(assert (=> b!1554411 (= e!865579 (containsKey!776 (t!51119 (toList!11295 lm!249)) a0!49))))

(assert (= (and d!161677 (not res!1063853)) b!1554410))

(assert (= (and b!1554410 res!1063854) b!1554411))

(declare-fun m!1432783 () Bool)

(assert (=> b!1554411 m!1432783))

(assert (=> b!1554383 d!161677))

(declare-fun d!161685 () Bool)

(declare-fun e!865592 () Bool)

(assert (=> d!161685 e!865592))

(declare-fun res!1063863 () Bool)

(assert (=> d!161685 (=> res!1063863 e!865592)))

(declare-fun lt!669987 () Bool)

(assert (=> d!161685 (= res!1063863 (not lt!669987))))

(declare-fun lt!669989 () Bool)

(assert (=> d!161685 (= lt!669987 lt!669989)))

(declare-fun lt!669986 () Unit!51732)

(declare-fun e!865593 () Unit!51732)

(assert (=> d!161685 (= lt!669986 e!865593)))

(declare-fun c!143369 () Bool)

(assert (=> d!161685 (= c!143369 lt!669989)))

(assert (=> d!161685 (= lt!669989 (containsKey!776 (toList!11295 lm!249) a0!49))))

(assert (=> d!161685 (= (contains!10173 lm!249 a0!49) lt!669987)))

(declare-fun b!1554428 () Bool)

(declare-fun lt!669988 () Unit!51732)

(assert (=> b!1554428 (= e!865593 lt!669988)))

(assert (=> b!1554428 (= lt!669988 (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!11295 lm!249) a0!49))))

(assert (=> b!1554428 (isDefined!566 (getValueByKey!758 (toList!11295 lm!249) a0!49))))

(declare-fun b!1554429 () Bool)

(declare-fun Unit!51734 () Unit!51732)

(assert (=> b!1554429 (= e!865593 Unit!51734)))

(declare-fun b!1554430 () Bool)

(assert (=> b!1554430 (= e!865592 (isDefined!566 (getValueByKey!758 (toList!11295 lm!249) a0!49)))))

(assert (= (and d!161685 c!143369) b!1554428))

(assert (= (and d!161685 (not c!143369)) b!1554429))

(assert (= (and d!161685 (not res!1063863)) b!1554430))

(assert (=> d!161685 m!1432777))

(assert (=> b!1554428 m!1432765))

(assert (=> b!1554428 m!1432753))

(assert (=> b!1554428 m!1432753))

(assert (=> b!1554428 m!1432763))

(assert (=> b!1554430 m!1432753))

(assert (=> b!1554430 m!1432753))

(assert (=> b!1554430 m!1432763))

(assert (=> start!132644 d!161685))

(declare-fun d!161701 () Bool)

(assert (=> d!161701 (= (inv!57353 lm!249) (isStrictlySorted!904 (toList!11295 lm!249)))))

(declare-fun bs!44682 () Bool)

(assert (= bs!44682 d!161701))

(assert (=> bs!44682 m!1432769))

(assert (=> start!132644 d!161701))

(declare-fun b!1554444 () Bool)

(declare-fun e!865600 () Option!833)

(declare-fun e!865601 () Option!833)

(assert (=> b!1554444 (= e!865600 e!865601)))

(declare-fun c!143375 () Bool)

(assert (=> b!1554444 (= c!143375 (and (is-Cons!36387 lt!669969) (not (= (_1!12479 (h!37834 lt!669969)) a0!49))))))

(declare-fun d!161705 () Bool)

(declare-fun c!143374 () Bool)

(assert (=> d!161705 (= c!143374 (and (is-Cons!36387 lt!669969) (= (_1!12479 (h!37834 lt!669969)) a0!49)))))

(assert (=> d!161705 (= (getValueByKey!758 lt!669969 a0!49) e!865600)))

(declare-fun b!1554443 () Bool)

(assert (=> b!1554443 (= e!865600 (Some!832 (_2!12479 (h!37834 lt!669969))))))

(declare-fun b!1554445 () Bool)

(assert (=> b!1554445 (= e!865601 (getValueByKey!758 (t!51119 lt!669969) a0!49))))

(declare-fun b!1554446 () Bool)

(assert (=> b!1554446 (= e!865601 None!831)))

(assert (= (and d!161705 c!143374) b!1554443))

(assert (= (and d!161705 (not c!143374)) b!1554444))

(assert (= (and b!1554444 c!143375) b!1554445))

(assert (= (and b!1554444 (not c!143375)) b!1554446))

(declare-fun m!1432805 () Bool)

(assert (=> b!1554445 m!1432805))

(assert (=> b!1554384 d!161705))

(declare-fun b!1554448 () Bool)

(declare-fun e!865602 () Option!833)

(declare-fun e!865603 () Option!833)

(assert (=> b!1554448 (= e!865602 e!865603)))

(declare-fun c!143377 () Bool)

(assert (=> b!1554448 (= c!143377 (and (is-Cons!36387 (toList!11295 lm!249)) (not (= (_1!12479 (h!37834 (toList!11295 lm!249))) a0!49))))))

(declare-fun d!161707 () Bool)

(declare-fun c!143376 () Bool)

(assert (=> d!161707 (= c!143376 (and (is-Cons!36387 (toList!11295 lm!249)) (= (_1!12479 (h!37834 (toList!11295 lm!249))) a0!49)))))

(assert (=> d!161707 (= (getValueByKey!758 (toList!11295 lm!249) a0!49) e!865602)))

(declare-fun b!1554447 () Bool)

(assert (=> b!1554447 (= e!865602 (Some!832 (_2!12479 (h!37834 (toList!11295 lm!249)))))))

(declare-fun b!1554449 () Bool)

(assert (=> b!1554449 (= e!865603 (getValueByKey!758 (t!51119 (toList!11295 lm!249)) a0!49))))

(declare-fun b!1554450 () Bool)

(assert (=> b!1554450 (= e!865603 None!831)))

(assert (= (and d!161707 c!143376) b!1554447))

(assert (= (and d!161707 (not c!143376)) b!1554448))

(assert (= (and b!1554448 c!143377) b!1554449))

(assert (= (and b!1554448 (not c!143377)) b!1554450))

(declare-fun m!1432807 () Bool)

(assert (=> b!1554449 m!1432807))

(assert (=> b!1554384 d!161707))

(assert (=> b!1554381 d!161707))

(declare-fun d!161709 () Bool)

(declare-fun isEmpty!1142 (Option!833) Bool)

(assert (=> d!161709 (= (isDefined!566 (getValueByKey!758 (toList!11295 lm!249) a0!49)) (not (isEmpty!1142 (getValueByKey!758 (toList!11295 lm!249) a0!49))))))

(declare-fun bs!44683 () Bool)

(assert (= bs!44683 d!161709))

(assert (=> bs!44683 m!1432753))

(declare-fun m!1432809 () Bool)

(assert (=> bs!44683 m!1432809))

(assert (=> b!1554381 d!161709))

(declare-fun d!161711 () Bool)

(assert (=> d!161711 (isDefined!566 (getValueByKey!758 (toList!11295 lm!249) a0!49))))

(declare-fun lt!670016 () Unit!51732)

(declare-fun choose!2058 (List!36391 (_ BitVec 64)) Unit!51732)

(assert (=> d!161711 (= lt!670016 (choose!2058 (toList!11295 lm!249) a0!49))))

(declare-fun e!865614 () Bool)

(assert (=> d!161711 e!865614))

(declare-fun res!1063882 () Bool)

(assert (=> d!161711 (=> (not res!1063882) (not e!865614))))

(assert (=> d!161711 (= res!1063882 (isStrictlySorted!904 (toList!11295 lm!249)))))

(assert (=> d!161711 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!517 (toList!11295 lm!249) a0!49) lt!670016)))

(declare-fun b!1554465 () Bool)

(assert (=> b!1554465 (= e!865614 (containsKey!776 (toList!11295 lm!249) a0!49))))

(assert (= (and d!161711 res!1063882) b!1554465))

(assert (=> d!161711 m!1432753))

(assert (=> d!161711 m!1432753))

(assert (=> d!161711 m!1432763))

(declare-fun m!1432835 () Bool)

(assert (=> d!161711 m!1432835))

(assert (=> d!161711 m!1432769))

(assert (=> b!1554465 m!1432777))

(assert (=> b!1554381 d!161711))

(declare-fun d!161717 () Bool)

(declare-fun get!26088 (Option!833) B!2250)

(assert (=> d!161717 (= (apply!1144 lm!249 a0!49) (get!26088 (getValueByKey!758 (toList!11295 lm!249) a0!49)))))

(declare-fun bs!44684 () Bool)

(assert (= bs!44684 d!161717))

(assert (=> bs!44684 m!1432753))

(assert (=> bs!44684 m!1432753))

(declare-fun m!1432839 () Bool)

(assert (=> bs!44684 m!1432839))

(assert (=> b!1554381 d!161717))

(declare-fun d!161721 () Bool)

(assert (=> d!161721 (= (apply!1144 (+!4980 lm!249 (tuple2!24939 a!523 b!96)) a0!49) (get!26088 (getValueByKey!758 (toList!11295 (+!4980 lm!249 (tuple2!24939 a!523 b!96))) a0!49)))))

(declare-fun bs!44685 () Bool)

(assert (= bs!44685 d!161721))

(declare-fun m!1432841 () Bool)

(assert (=> bs!44685 m!1432841))

(assert (=> bs!44685 m!1432841))

(declare-fun m!1432843 () Bool)

(assert (=> bs!44685 m!1432843))

(assert (=> b!1554381 d!161721))

(declare-fun d!161723 () Bool)

(declare-fun e!865637 () Bool)

(assert (=> d!161723 e!865637))

(declare-fun res!1063908 () Bool)

(assert (=> d!161723 (=> (not res!1063908) (not e!865637))))

(declare-fun lt!670025 () ListLongMap!22559)

(assert (=> d!161723 (= res!1063908 (contains!10173 lt!670025 (_1!12479 (tuple2!24939 a!523 b!96))))))

(declare-fun lt!670027 () List!36391)

(assert (=> d!161723 (= lt!670025 (ListLongMap!22560 lt!670027))))

(declare-fun lt!670028 () Unit!51732)

(declare-fun lt!670026 () Unit!51732)

(assert (=> d!161723 (= lt!670028 lt!670026)))

(assert (=> d!161723 (= (getValueByKey!758 lt!670027 (_1!12479 (tuple2!24939 a!523 b!96))) (Some!832 (_2!12479 (tuple2!24939 a!523 b!96))))))

(declare-fun lemmaContainsTupThenGetReturnValue!380 (List!36391 (_ BitVec 64) B!2250) Unit!51732)

(assert (=> d!161723 (= lt!670026 (lemmaContainsTupThenGetReturnValue!380 lt!670027 (_1!12479 (tuple2!24939 a!523 b!96)) (_2!12479 (tuple2!24939 a!523 b!96))))))

(assert (=> d!161723 (= lt!670027 (insertStrictlySorted!518 (toList!11295 lm!249) (_1!12479 (tuple2!24939 a!523 b!96)) (_2!12479 (tuple2!24939 a!523 b!96))))))

(assert (=> d!161723 (= (+!4980 lm!249 (tuple2!24939 a!523 b!96)) lt!670025)))

(declare-fun b!1554490 () Bool)

(declare-fun res!1063907 () Bool)

(assert (=> b!1554490 (=> (not res!1063907) (not e!865637))))

(assert (=> b!1554490 (= res!1063907 (= (getValueByKey!758 (toList!11295 lt!670025) (_1!12479 (tuple2!24939 a!523 b!96))) (Some!832 (_2!12479 (tuple2!24939 a!523 b!96)))))))

(declare-fun b!1554491 () Bool)

(declare-fun contains!10176 (List!36391 tuple2!24938) Bool)

(assert (=> b!1554491 (= e!865637 (contains!10176 (toList!11295 lt!670025) (tuple2!24939 a!523 b!96)))))

(assert (= (and d!161723 res!1063908) b!1554490))

(assert (= (and b!1554490 res!1063907) b!1554491))

(declare-fun m!1432851 () Bool)

(assert (=> d!161723 m!1432851))

(declare-fun m!1432853 () Bool)

(assert (=> d!161723 m!1432853))

(declare-fun m!1432855 () Bool)

(assert (=> d!161723 m!1432855))

(declare-fun m!1432857 () Bool)

(assert (=> d!161723 m!1432857))

(declare-fun m!1432859 () Bool)

(assert (=> b!1554490 m!1432859))

(declare-fun m!1432861 () Bool)

(assert (=> b!1554491 m!1432861))

(assert (=> b!1554381 d!161723))

(declare-fun d!161731 () Bool)

(declare-fun res!1063913 () Bool)

(declare-fun e!865648 () Bool)

(assert (=> d!161731 (=> res!1063913 e!865648)))

(assert (=> d!161731 (= res!1063913 (or (is-Nil!36388 (toList!11295 lm!249)) (is-Nil!36388 (t!51119 (toList!11295 lm!249)))))))

(assert (=> d!161731 (= (isStrictlySorted!904 (toList!11295 lm!249)) e!865648)))

(declare-fun b!1554508 () Bool)

(declare-fun e!865649 () Bool)

(assert (=> b!1554508 (= e!865648 e!865649)))

(declare-fun res!1063914 () Bool)

(assert (=> b!1554508 (=> (not res!1063914) (not e!865649))))

(assert (=> b!1554508 (= res!1063914 (bvslt (_1!12479 (h!37834 (toList!11295 lm!249))) (_1!12479 (h!37834 (t!51119 (toList!11295 lm!249))))))))

(declare-fun b!1554509 () Bool)

(assert (=> b!1554509 (= e!865649 (isStrictlySorted!904 (t!51119 (toList!11295 lm!249))))))

(assert (= (and d!161731 (not res!1063913)) b!1554508))

(assert (= (and b!1554508 res!1063914) b!1554509))

(declare-fun m!1432863 () Bool)

(assert (=> b!1554509 m!1432863))

(assert (=> b!1554380 d!161731))

(declare-fun d!161733 () Bool)

(declare-fun res!1063915 () Bool)

(declare-fun e!865652 () Bool)

(assert (=> d!161733 (=> res!1063915 e!865652)))

(assert (=> d!161733 (= res!1063915 (and (is-Cons!36387 lt!669969) (= (_1!12479 (h!37834 lt!669969)) a0!49)))))

(assert (=> d!161733 (= (containsKey!776 lt!669969 a0!49) e!865652)))

(declare-fun b!1554516 () Bool)

(declare-fun e!865653 () Bool)

(assert (=> b!1554516 (= e!865652 e!865653)))

(declare-fun res!1063916 () Bool)

(assert (=> b!1554516 (=> (not res!1063916) (not e!865653))))

(assert (=> b!1554516 (= res!1063916 (and (or (not (is-Cons!36387 lt!669969)) (bvsle (_1!12479 (h!37834 lt!669969)) a0!49)) (is-Cons!36387 lt!669969) (bvslt (_1!12479 (h!37834 lt!669969)) a0!49)))))

(declare-fun b!1554517 () Bool)

(assert (=> b!1554517 (= e!865653 (containsKey!776 (t!51119 lt!669969) a0!49))))

(assert (= (and d!161733 (not res!1063915)) b!1554516))

(assert (= (and b!1554516 res!1063916) b!1554517))

(declare-fun m!1432865 () Bool)

(assert (=> b!1554517 m!1432865))

(assert (=> b!1554380 d!161733))

(declare-fun bm!71446 () Bool)

(declare-fun call!71449 () List!36391)

(declare-fun call!71451 () List!36391)

(assert (=> bm!71446 (= call!71449 call!71451)))

(declare-fun d!161735 () Bool)

(declare-fun e!865702 () Bool)

(assert (=> d!161735 e!865702))

(declare-fun res!1063947 () Bool)

(assert (=> d!161735 (=> (not res!1063947) (not e!865702))))

(declare-fun lt!670043 () List!36391)

(assert (=> d!161735 (= res!1063947 (isStrictlySorted!904 lt!670043))))

(declare-fun e!865700 () List!36391)

(assert (=> d!161735 (= lt!670043 e!865700)))

(declare-fun c!143411 () Bool)

(assert (=> d!161735 (= c!143411 (and (is-Cons!36387 (toList!11295 lm!249)) (bvslt (_1!12479 (h!37834 (toList!11295 lm!249))) a!523)))))

(assert (=> d!161735 (isStrictlySorted!904 (toList!11295 lm!249))))

(assert (=> d!161735 (= (insertStrictlySorted!518 (toList!11295 lm!249) a!523 b!96) lt!670043)))

(declare-fun b!1554594 () Bool)

(declare-fun e!865701 () List!36391)

(assert (=> b!1554594 (= e!865700 e!865701)))

(declare-fun c!143410 () Bool)

(assert (=> b!1554594 (= c!143410 (and (is-Cons!36387 (toList!11295 lm!249)) (= (_1!12479 (h!37834 (toList!11295 lm!249))) a!523)))))

(declare-fun b!1554595 () Bool)

(declare-fun e!865704 () List!36391)

(assert (=> b!1554595 (= e!865704 (insertStrictlySorted!518 (t!51119 (toList!11295 lm!249)) a!523 b!96))))

(declare-fun b!1554596 () Bool)

(declare-fun c!143412 () Bool)

(assert (=> b!1554596 (= c!143412 (and (is-Cons!36387 (toList!11295 lm!249)) (bvsgt (_1!12479 (h!37834 (toList!11295 lm!249))) a!523)))))

(declare-fun e!865703 () List!36391)

(assert (=> b!1554596 (= e!865701 e!865703)))

(declare-fun b!1554597 () Bool)

(assert (=> b!1554597 (= e!865701 call!71451)))

(declare-fun b!1554598 () Bool)

(declare-fun call!71450 () List!36391)

(assert (=> b!1554598 (= e!865700 call!71450)))

(declare-fun b!1554599 () Bool)

(assert (=> b!1554599 (= e!865703 call!71449)))

(declare-fun b!1554600 () Bool)

(declare-fun res!1063948 () Bool)

(assert (=> b!1554600 (=> (not res!1063948) (not e!865702))))

(assert (=> b!1554600 (= res!1063948 (containsKey!776 lt!670043 a!523))))

(declare-fun bm!71447 () Bool)

